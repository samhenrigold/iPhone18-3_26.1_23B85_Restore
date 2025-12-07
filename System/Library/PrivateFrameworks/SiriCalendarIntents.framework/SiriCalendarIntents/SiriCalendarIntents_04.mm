uint64_t sub_2665A3358()
{
  OUTLINED_FUNCTION_11();
  v4 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26658BF28;
  v2 = MEMORY[0x277D84F90];

  return v4(0xD00000000000001ELL, 0x800000026667E710, v2);
}

uint64_t sub_2665A3418(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = v4;
  *(v5 + 72) = a2;
  *(v5 + 16) = a1;
  *(v5 + 24) = a3;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_2665A3434()
{
  OUTLINED_FUNCTION_14_8();
  v1 = *(v0 + 72);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DB88, &unk_2666727F0);
  v3 = OUTLINED_FUNCTION_21_4(v2);
  *(v0 + 48) = v3;
  OUTLINED_FUNCTION_9_9(v3, xmmword_266672100);
  if (v1)
  {
    v4 = 0;
    v5 = 0;
    v3[3].n128_u64[1] = 0;
    v3[4].n128_u64[0] = 0;
  }

  else
  {
    v4 = *(v0 + 16);
    v5 = MEMORY[0x277D839F8];
  }

  v6 = *(v0 + 24);
  v3[3].n128_u64[0] = v4;
  v3[4].n128_u64[1] = v5;
  strcpy(&v3[5], "dateTimeRange");
  v3[5].n128_u16[7] = -4864;
  if (v6)
  {
    v7 = sub_26666BB78();
    v8 = v6;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_17_6();
    v3[6].n128_u64[1] = 0;
    v3[7].n128_u64[0] = 0;
  }

  v9 = *(v0 + 32);
  v3[6].n128_u64[0] = v8;
  v3[7].n128_u64[1] = v7;
  strcpy(&v3[8], "introOptions");
  v3[8].n128_u8[13] = 0;
  v3[8].n128_u16[7] = -5120;
  v10 = 0;
  if (v9)
  {
    v10 = type metadata accessor for CalendarResultSetIntroOptions();
  }

  else
  {
    v3[9].n128_u64[1] = 0;
    v3[10].n128_u64[0] = 0;
  }

  v3[9].n128_u64[0] = v9;
  v3[10].n128_u64[1] = v10;
  OUTLINED_FUNCTION_7_11();

  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_20_6(v11);
  *v12 = v13;
  OUTLINED_FUNCTION_16_6(v12);

  return v15(0xD000000000000019, 0x800000026667E6F0, v3);
}

uint64_t sub_2665A35E4()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_3_15();
  v3 = v2;
  OUTLINED_FUNCTION_15_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_12_6();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    v10 = OUTLINED_FUNCTION_6_5();

    return v11(v10);
  }
}

uint64_t sub_2665A370C()
{
  OUTLINED_FUNCTION_14();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007D130, &unk_266671DF0);
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2665A37A8, 0, 0);
}

uint64_t sub_2665A37A8()
{
  OUTLINED_FUNCTION_14_8();
  v1 = v0[2];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DB88, &unk_2666727F0);
  v3 = OUTLINED_FUNCTION_21_4(v2);
  v0[7] = v3;
  v4 = OUTLINED_FUNCTION_1_17(v3, xmmword_266672100);
  if (v1)
  {
    v4 = type metadata accessor for CalendarEventConcept(v4);
  }

  else
  {
    *(v3 + 56) = 0;
    *(v3 + 64) = 0;
  }

  v5 = v0[6];
  v6 = v0[3];
  *(v3 + 48) = v1;
  *(v3 + 72) = v4;
  *(v3 + 80) = 0xD000000000000010;
  *(v3 + 88) = 0x800000026667D8B0;
  sub_26659236C(v6, v5, &unk_28007D130, &unk_266671DF0);
  v7 = sub_26666BDA8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v5, 1, v7);
  v9 = v0[6];
  if (EnumTagSinglePayload == 1)
  {

    sub_266557D74(v9, &unk_28007D130, &unk_266671DF0);
    *(v3 + 96) = 0u;
    *(v3 + 112) = 0u;
  }

  else
  {
    *(v3 + 120) = v7;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v3 + 96));
    (*(*(v7 - 8) + 32))(boxed_opaque_existential_1, v9, v7);
  }

  v11 = v0[4];
  *(v3 + 128) = 0x736E6F6974706FLL;
  *(v3 + 136) = 0xE700000000000000;
  v12 = 0;
  if (v11)
  {
    v12 = type metadata accessor for CalendarResultSetSingleOptions();
  }

  else
  {
    *(v3 + 152) = 0;
    *(v3 + 160) = 0;
  }

  *(v3 + 144) = v11;
  *(v3 + 168) = v12;
  OUTLINED_FUNCTION_7_11();
  v13 = swift_task_alloc();
  v0[8] = v13;
  *v13 = v0;
  OUTLINED_FUNCTION_16_6(v13);

  return v15(0xD00000000000001ALL, 0x800000026667E6D0, v3);
}

uint64_t sub_2665A39CC()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_3_15();
  v4 = v3;
  OUTLINED_FUNCTION_15_1();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_5_0();
  *v7 = v6;
  *(v4 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2665A3B0C, 0, 0);
  }

  else
  {

    v8 = *(v6 + 8);

    return v8(v1);
  }
}

uint64_t sub_2665A3B0C()
{
  OUTLINED_FUNCTION_14();

  OUTLINED_FUNCTION_24_1();

  return v0();
}

uint64_t sub_2665A3B70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_2665A3B88()
{
  OUTLINED_FUNCTION_14_8();
  v1 = v0[2];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DB88, &unk_2666727F0);
  v3 = OUTLINED_FUNCTION_21_4(v2);
  v0[6] = v3;
  *(v3 + 16) = xmmword_266672100;
  OUTLINED_FUNCTION_13_5();
  *(v5 + 32) = v4 & 0xFFFFFFFFFFFFLL | 0x6144000000000000;
  *(v5 + 40) = 0xEA00000000006574;
  if (v1)
  {
    sub_26666BD08();
    v6 = v1;
  }

  else
  {
    OUTLINED_FUNCTION_17_6();
    *(v3 + 56) = 0;
    *(v3 + 64) = 0;
  }

  v8 = v0[3];
  v7 = v0[4];
  *(v3 + 48) = v6;
  OUTLINED_FUNCTION_13_5();
  *(v3 + 72) = v10;
  *(v3 + 80) = v9 & 0xFFFFFFFFFFFFLL | 0x7449000000000000;
  *(v3 + 88) = 0xEB00000000736D65;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DDA0, &qword_266675EA0);
  *(v3 + 96) = v8;
  OUTLINED_FUNCTION_13_5();
  *(v3 + 120) = v12;
  *(v3 + 128) = v11 & 0xFFFFFFFFFFFFLL | 0x704F000000000000;
  *(v3 + 136) = 0xED0000736E6F6974;
  v13 = 0;
  if (v7)
  {
    v13 = type metadata accessor for CalendarResultSetWindowOptions();
  }

  else
  {
    *(v3 + 152) = 0;
    *(v3 + 160) = 0;
  }

  *(v3 + 144) = v7;
  *(v3 + 168) = v13;
  OUTLINED_FUNCTION_8_11();

  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_20_6(v14);
  *v15 = v16;
  OUTLINED_FUNCTION_16_6(v15);

  return v18(0xD00000000000001ALL, 0x800000026667E6B0, v3);
}

uint64_t sub_2665A3D38(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = v4;
  *(v5 + 72) = a2;
  *(v5 + 16) = a1;
  *(v5 + 24) = a3;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_2665A3D54()
{
  OUTLINED_FUNCTION_14_8();
  v1 = *(v0 + 72);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DB88, &unk_2666727F0);
  v3 = OUTLINED_FUNCTION_21_4(v2);
  v4 = v3;
  *(v0 + 48) = v3;
  *(v3 + 16) = xmmword_266672100;
  strcpy((v3 + 32), "nextWindowSize");
  *(v3 + 47) = -18;
  if (v1)
  {
    v5 = 0;
    v6 = 0;
    *(v3 + 56) = 0;
    *(v3 + 64) = 0;
  }

  else
  {
    v5 = *(v0 + 16);
    v6 = MEMORY[0x277D839F8];
  }

  v7 = *(v0 + 24);
  *(v3 + 48) = v5;
  *(v3 + 72) = v6;
  *(v3 + 80) = 0xD000000000000013;
  *(v3 + 88) = 0x800000026667E640;
  if (v7)
  {
    v8 = type metadata accessor for CalendarResultSetWindowPromptOptions();
    v9 = v7;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_17_6();
    v4[13] = 0;
    v4[14] = 0;
  }

  v10 = *(v0 + 32);
  v4[12] = v9;
  v4[15] = v8;
  v4[16] = 0xD000000000000011;
  v4[17] = 0x800000026667E660;
  v11 = 0;
  if (v10)
  {
    v11 = sub_26666BD08();
  }

  else
  {
    v4[19] = 0;
    v4[20] = 0;
  }

  v4[18] = v10;
  v4[21] = v11;
  OUTLINED_FUNCTION_8_11();

  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_20_6(v12);
  *v13 = v14;
  OUTLINED_FUNCTION_16_6(v13);

  return v16(0xD000000000000020, 0x800000026667E680, v4);
}

uint64_t sub_2665A3F70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_26666BE18();
  OUTLINED_FUNCTION_13_4();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D2B0, &qword_26666E5F0);
  MEMORY[0x28223BE20](v11 - 8);
  sub_26659236C(a1, &v15 - v12, &qword_28007D2B0, &qword_26666E5F0);
  (*(v7 + 16))(v10, a2, v3);
  v13 = sub_26666BDB8();
  (*(v7 + 8))(a2, v3);
  sub_266557D74(a1, &qword_28007D2B0, &qword_26666E5F0);
  return v13;
}

uint64_t sub_2665A40EC(uint64_t a1, uint64_t a2)
{
  sub_26666BE18();
  OUTLINED_FUNCTION_13_4();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v5 + 16))(v8, a2, v2);
  v9 = sub_26666BDC8();
  (*(v5 + 8))(a2, v2);
  return v9;
}

uint64_t OUTLINED_FUNCTION_1_17(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  a1[2].n128_u64[0] = 0x746E657665;
  a1[2].n128_u64[1] = 0xE500000000000000;
  return 0;
}

uint64_t OUTLINED_FUNCTION_7_11()
{
}

uint64_t OUTLINED_FUNCTION_8_11()
{
}

__n128 *OUTLINED_FUNCTION_9_9(__n128 *result, __n128 a2)
{
  result[1] = a2;
  strcpy(&result[2], "totalItemCount");
  result[2].n128_u8[15] = -18;
  return result;
}

uint64_t OUTLINED_FUNCTION_21_4(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_2665A4318(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 136))
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

uint64_t sub_2665A4358(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_2665A43C8()
{
  OUTLINED_FUNCTION_14();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_2666695E8();
  v1[5] = v4;
  OUTLINED_FUNCTION_3_1(v4);
  v1[6] = v5;
  v1[7] = OUTLINED_FUNCTION_19();
  v6 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2665A4470()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  v4 = *(v0 + 24);
  v5 = **(v0 + 32);
  sub_2665A6960();

  v6 = v5;
  v7 = v4;
  sub_2666695D8();
  sub_266669608();
  v8 = sub_2666695F8();
  (*(v2 + 8))(v1, v3);

  v9 = *(v0 + 8);

  return v9(v8);
}

uint64_t sub_2665A4564()
{
  OUTLINED_FUNCTION_14();
  v1[33] = v2;
  v1[34] = v0;
  v1[32] = v3;
  v4 = type metadata accessor for Snippet(0);
  v1[35] = v4;
  OUTLINED_FUNCTION_3_3(v4);
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v5 = sub_266669CA8();
  v1[40] = v5;
  OUTLINED_FUNCTION_3_1(v5);
  v1[41] = v6;
  v1[42] = OUTLINED_FUNCTION_19();
  v7 = sub_266669708();
  v1[43] = v7;
  OUTLINED_FUNCTION_3_1(v7);
  v1[44] = v8;
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D330, &unk_26666EEA0);
  OUTLINED_FUNCTION_3_3(v9);
  v1[47] = OUTLINED_FUNCTION_19();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE20, &unk_26666EAE0);
  OUTLINED_FUNCTION_3_3(v10);
  v1[48] = OUTLINED_FUNCTION_19();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D338, &qword_26666EEB0);
  OUTLINED_FUNCTION_3_3(v11);
  v1[49] = OUTLINED_FUNCTION_19();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE30, &unk_26666EAF0);
  OUTLINED_FUNCTION_3_3(v12);
  v1[50] = swift_task_alloc();
  v1[51] = swift_task_alloc();
  v1[52] = swift_task_alloc();
  v1[53] = swift_task_alloc();
  v1[54] = swift_task_alloc();
  v1[55] = swift_task_alloc();
  v13 = type metadata accessor for Snippet.Event(0);
  OUTLINED_FUNCTION_3_3(v13);
  v1[56] = OUTLINED_FUNCTION_19();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007D130, &unk_266671DF0);
  OUTLINED_FUNCTION_3_3(v14);
  v1[57] = OUTLINED_FUNCTION_19();
  v15 = sub_2666699C8();
  v1[58] = v15;
  OUTLINED_FUNCTION_3_1(v15);
  v1[59] = v16;
  v1[60] = OUTLINED_FUNCTION_19();
  v17 = sub_26666BDA8();
  v1[61] = v17;
  OUTLINED_FUNCTION_3_1(v17);
  v1[62] = v18;
  v1[63] = OUTLINED_FUNCTION_19();
  v19 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v19, v20, v21);
}

uint64_t sub_2665A4894()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE40, &unk_266672950);
  v1 = sub_266669B58();
  v2 = [v1 createdEvent];
  v0[64] = v2;

  if (!v2)
  {
    if (qword_28156C150 != -1)
    {
      swift_once();
    }

    v16 = sub_26666C168();
    __swift_project_value_buffer(v16, qword_28156D7E8);
    v17 = sub_26666C148();
    v18 = sub_26666C608();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_266549000, v17, v18, "[CreateEvent HandleIntentStrategy] Unexpectedly found nil for createdEvent in intent response", v19, 2u);
      MEMORY[0x266789690](v19, -1, -1);
    }

    sub_26656CBFC();
    swift_allocError();
    *v20 = 0u;
    *(v20 + 16) = 0u;
    *(v20 + 32) = 2;
    swift_willThrow();
    OUTLINED_FUNCTION_14_9();

    OUTLINED_FUNCTION_24_1();
    OUTLINED_FUNCTION_47_0();

    __asm { BRAA            X1, X16 }
  }

  v3 = v0[34];
  type metadata accessor for CalendarEventConcept(0);
  sub_26655358C(v3 + 16, (v0 + 2));
  v0[65] = sub_2665CA7F4(v2, v0 + 2);
  __swift_project_boxed_opaque_existential_1((v3 + 56), *(v3 + 80));
  v4 = sub_26655A994();
  v5 = [v4 title];

  sub_26666C308();
  sub_26666C358();

  v6 = sub_266669B58();
  sub_2666699B8();
  if (qword_28007CE30 != -1)
  {
    swift_once();
  }

  v8 = v0[62];
  v7 = v0[63];
  v9 = v0[61];
  v10 = v0[57];
  sub_26666A0F8();
  sub_266669908();
  sub_2665E8CAC(0xD000000000000013, 0x800000026667D670);
  sub_2666698E8();

  (*(v8 + 16))(v10, v7, v9);
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v9);

  v11 = swift_task_alloc();
  v0[66] = v11;
  *v11 = v0;
  v11[1] = sub_2665A4CD0;
  OUTLINED_FUNCTION_47_0();

  return sub_2666574B4(v12, v13);
}

uint64_t sub_2665A4CD0()
{
  v2 = *v1;
  OUTLINED_FUNCTION_11_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_11_2();
  *v6 = v5;
  *(v8 + 536) = v7;
  *(v8 + 544) = v0;

  sub_26656CAEC(*(v2 + 456), &unk_28007D130, &unk_266671DF0);

  if (v0)
  {
    v9 = sub_2665A60C0;
  }

  else
  {
    v9 = sub_2665A4E34;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_2665A4E34()
{
  v1 = *(v0 + 544);
  v2 = *(v0 + 512);
  sub_26655358C(*(v0 + 272) + 56, v0 + 56);
  v3 = v2;
  sub_2665AAA8C(v3, v0 + 56, v4, v5, v6, v7, v8, v9, v107, v109, v111, v113, v115, v117, v119, v121, v123, v125, v127, v129);
  if (v1)
  {
    v10 = *(v0 + 504);
    v11 = *(v0 + 512);
    v12 = *(v0 + 488);
    v13 = *(v0 + 496);
    v15 = *(v0 + 472);
    v14 = *(v0 + 480);
    v16 = *(v0 + 464);

    (*(v15 + 8))(v14, v16);
    (*(v13 + 8))(v10, v12);
    OUTLINED_FUNCTION_14_9();

    OUTLINED_FUNCTION_24_1();
    OUTLINED_FUNCTION_47_0();

    __asm { BRAA            X1, X16 }
  }

  v20 = *(v0 + 472);
  v19 = *(v0 + 480);
  v21 = *(v0 + 464);
  v22 = *(v0 + 440);
  v120 = *(v0 + 536);
  v23 = *(v0 + 432);
  v24 = *(v0 + 392);
  v25 = *(v0 + 376);
  v114 = *(v0 + 384);
  v116 = *(v0 + 368);
  v26 = *(v0 + 352);
  v122 = *(v0 + 360);
  v124 = *(v0 + 344);
  v126 = *(v0 + 336);
  v128 = *(v0 + 424);
  v27 = *(v0 + 280);
  v130 = *(v0 + 272);
  sub_2665A68A8(*(v0 + 448), v22, type metadata accessor for Snippet.Event);
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v22, 0, 1, v27);
  __swift_storeEnumTagSinglePayload(v23, 1, 1, v27);
  v118 = v24;
  (*(v20 + 16))(v24, v19, v21);
  __swift_storeEnumTagSinglePayload(v24, 0, 1, v21);
  v28 = sub_26666BB08();
  __swift_storeEnumTagSinglePayload(v114, 1, 1, v28);
  v29 = sub_266669788();
  __swift_storeEnumTagSinglePayload(v25, 1, 1, v29);
  sub_2666696A8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE50, &unk_26666E360);
  v30 = swift_allocObject();
  *(v0 + 552) = v30;
  *(v30 + 16) = xmmword_26666E050;
  *(v30 + 32) = v120;
  v31 = *(v26 + 16);
  v32 = v120;
  v31(v122, v116, v124);
  v33 = swift_task_alloc();
  *(v33 + 16) = 0;
  *(v33 + 24) = 0;
  *(v33 + 32) = 0;
  *(v33 + 40) = v30;
  *(v33 + 48) = v118;
  *(v33 + 56) = 2;
  *(v33 + 64) = v114;
  *(v33 + 72) = v25;
  *(v33 + 80) = 514;
  sub_266669BC8();

  sub_26656CA7C(v22, v128);
  if (__swift_getEnumTagSinglePayload(v128, 1, v27) == 1)
  {
    v34 = (v0 + 424);
    goto LABEL_9;
  }

  v35 = *(v0 + 416);
  v36 = *(v0 + 280);
  sub_26656630C(*(v0 + 424), *(v0 + 312));
  v37 = OUTLINED_FUNCTION_31_1();
  sub_26656CA7C(v37, v38);
  if (__swift_getEnumTagSinglePayload(v35, 1, v36) == 1)
  {
    v34 = (v0 + 416);
    OUTLINED_FUNCTION_3_18();
    sub_2665A6908(v39, v40);
LABEL_9:
    v41 = *(v0 + 408);
    v42 = *(v0 + 280);
    sub_26656CAEC(*v34, &unk_28007DE30, &unk_26666EAF0);
    v43 = OUTLINED_FUNCTION_31_1();
    sub_26656CA7C(v43, v44);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v41, 1, v42);
    v46 = *(v0 + 408);
    v47 = *(v0 + 280);
    if (EnumTagSinglePayload == 1)
    {
      v48 = *(v0 + 432);
      v49 = *(v0 + 400);
      sub_26656CAEC(v46, &unk_28007DE30, &unk_26666EAF0);
      sub_26656CA7C(v48, v49);
      if (__swift_getEnumTagSinglePayload(v49, 1, v47) == 1)
      {
        v50 = sub_26656CAEC(*(v0 + 400), &unk_28007DE30, &unk_26666EAF0);
        OUTLINED_FUNCTION_18_4(v50, v51, v52, v53, v54, v55, v56, v57, v108, v110, v112, v114, v116, v118, v120, v122, v30, v126, v128, v130);
        swift_task_alloc();
        OUTLINED_FUNCTION_23_1();
        *(v0 + 584) = v58;
        *v58 = v59;
        v58[1] = sub_2665A5E18;
        OUTLINED_FUNCTION_47_0();

        return MEMORY[0x2821BB488](v60);
      }

      else
      {
        v91 = *(v0 + 280);
        v90 = *(v0 + 288);
        v92 = sub_26656630C(*(v0 + 400), v90);
        OUTLINED_FUNCTION_18_4(v92, v93, v94, v95, v96, v97, v98, v99, v108, v110, v112, v114, v116, v118, v120, v122, v30, v126, v128, v130);
        *(v0 + 120) = v91;
        *(v0 + 128) = sub_26656CBA4();
        __swift_allocate_boxed_opaque_existential_1((v0 + 96));
        OUTLINED_FUNCTION_2_16();
        sub_2665A68A8(v90, v100, v101);
        swift_task_alloc();
        OUTLINED_FUNCTION_23_1();
        *(v0 + 576) = v102;
        *v102 = v103;
        v102[1] = sub_2665A5B60;
        OUTLINED_FUNCTION_47_0();

        return MEMORY[0x2821BB478](v104);
      }
    }

    else
    {
      v62 = *(v0 + 296);
      v63 = sub_26656630C(v46, v62);
      OUTLINED_FUNCTION_18_4(v63, v64, v65, v66, v67, v68, v69, v70, v108, v110, v112, v114, v116, v118, v120, v122, v30, v126, v128, v130);
      *(v0 + 160) = v47;
      *(v0 + 168) = sub_26656CBA4();
      __swift_allocate_boxed_opaque_existential_1((v0 + 136));
      OUTLINED_FUNCTION_2_16();
      sub_2665A68A8(v62, v71, v72);
      swift_task_alloc();
      OUTLINED_FUNCTION_23_1();
      *(v0 + 568) = v73;
      *v73 = v74;
      v73[1] = sub_2665A58A8;
      OUTLINED_FUNCTION_47_0();

      return MEMORY[0x2821BB468](v75);
    }
  }

  v78 = *(v0 + 304);
  v77 = *(v0 + 312);
  v79 = *(v0 + 272);
  v80 = *(v0 + 280);
  sub_26656630C(*(v0 + 416), v78);
  __swift_project_boxed_opaque_existential_1((v130 + 96), *(v79 + 120));
  *(v0 + 200) = v80;
  v81 = sub_26656CBA4();
  *(v0 + 208) = v81;
  __swift_allocate_boxed_opaque_existential_1((v0 + 176));
  OUTLINED_FUNCTION_2_16();
  v83 = v82;
  sub_2665A68A8(v77, v84, v82);
  *(v0 + 240) = v80;
  *(v0 + 248) = v81;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 216));
  sub_2665A68A8(v78, boxed_opaque_existential_1, v83);
  swift_task_alloc();
  OUTLINED_FUNCTION_23_1();
  *(v0 + 560) = v86;
  *v86 = v87;
  v86[1] = sub_2665A55CC;
  OUTLINED_FUNCTION_47_0();

  return MEMORY[0x2821BB460](v88);
}

uint64_t sub_2665A55CC()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  v2 = v1;
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_1((v2 + 216));
  __swift_destroy_boxed_opaque_existential_1((v2 + 176));
  v6 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2665A58A8()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  v2 = v1;
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_1((v2 + 136));
  v6 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2665A5B60()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  v2 = v1;
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_1((v2 + 96));
  v6 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2665A5E18()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  v1 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2665A60C0()
{
  v1 = v0[64];
  v3 = v0[59];
  v2 = v0[60];
  v4 = v0[58];

  (*(v3 + 8))(v2, v4);
  v5 = OUTLINED_FUNCTION_31_1();
  v6(v5);

  OUTLINED_FUNCTION_24_1();

  return v7();
}

uint64_t sub_2665A626C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_26656CD98;

  return MEMORY[0x2821B9C68](a1, a2, a3, a4);
}

uint64_t sub_2665A6330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_26656CD98;

  return MEMORY[0x2821B9C70](a1, a2, a3, a4);
}

uint64_t sub_2665A63F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_26656CD98;

  return MEMORY[0x2821B9C48](a1, a2, a3, a4);
}

uint64_t sub_2665A64B8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26656CD98;

  return sub_2665A4564();
}

uint64_t sub_2665A6560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_26656CD98;

  return MEMORY[0x2821B9C60](a1, a2, a3, a4);
}

uint64_t sub_2665A6624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_26656CD98;

  return MEMORY[0x2821B9C58](a1, a2, a3, a4);
}

uint64_t sub_2665A66E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_26656C894;

  return MEMORY[0x2821B9C38](a1, a2, a3, a4);
}

uint64_t sub_2665A67AC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26657A00C;

  return sub_2665A43C8();
}

unint64_t sub_2665A6854()
{
  result = qword_28007DE10;
  if (!qword_28007DE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007DE10);
  }

  return result;
}

uint64_t sub_2665A68A8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_18_2();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2665A6908(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_18_2();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_2665A6960()
{
  result = qword_28007DE60;
  if (!qword_28007DE60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28007DE60);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_18()
{
  v2 = v0[45];
  result = v0[42];
  *(v1 - 120) = result;
  *(v1 - 112) = v2;
  v4 = v0[38];
  *(v1 - 104) = v0[39];
  *(v1 - 96) = v4;
  v5 = v0[36];
  *(v1 - 88) = v0[37];
  *(v1 - 80) = v5;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{

  return sub_2665A6908(a13, type metadata accessor for Snippet.Event);
}

uint64_t OUTLINED_FUNCTION_8_12()
{

  return sub_26656CAEC(v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_14_9()
{
}

void *OUTLINED_FUNCTION_18_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v22 = *(v20 + 120);

  return __swift_project_boxed_opaque_existential_1((a20 + 96), v22);
}

uint64_t OUTLINED_FUNCTION_19_9()
{

  return sub_26656CAEC(v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_28_4(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  return sub_26656CAEC(a10, a2, a3);
}

uint64_t OUTLINED_FUNCTION_29_4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{

  return sub_26656CAEC(v3, a2, a3);
}

uint64_t OUTLINED_FUNCTION_30_4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{

  return sub_26656CAEC(v3, a2, a3);
}

uint64_t sub_2665A6BD0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DF08, &qword_266672978);
  __swift_allocate_value_buffer(v0, qword_280095718);
  __swift_project_value_buffer(v0, qword_280095718);
  sub_26666A428();
  sub_26666B238();
  return sub_26666BAC8();
}

uint64_t sub_2665A6C60@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = MEMORY[0x2667869C0](*a1);
  if (result)
  {
    *a2 = result;
  }

  else
  {
    v4 = sub_26666BB18();
    sub_2665A9CD4();
    swift_allocError();
    v6 = v5;
    *v5 = sub_266646BC4(0xD000000000000010, 0x800000026667E830, 0x7469746E456F7355, 0xE900000000000079);
    v6[1] = v7;
    (*(*(v4 - 8) + 104))(v6, *MEMORY[0x277D61E00], v4);
    return swift_willThrow();
  }

  return result;
}

id sub_2665A6D48@<X0>(void **a1@<X0>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v30[2] = a3;
  v33 = a4;
  v6 = sub_26666A2E8();
  v31 = *(v6 - 8);
  v32 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_266668BE8();
  v9 = *(v34 - 8);
  v10 = MEMORY[0x28223BE20](v34);
  v12 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v30 - v13;
  v15 = *a1;
  sub_26666A9C8();
  swift_allocObject();
  v16 = sub_26666A9B8();
  v17 = [v15 nameComponents];
  if (v17)
  {
    v18 = v17;
    v30[1] = v4;
    sub_266668BB8();

    (*(v9 + 32))(v14, v12, v34);
    sub_26666ACC8();
    swift_allocObject();
    sub_26666ACB8();
    sub_266668BC8();
    if (v19)
    {
      sub_26666AC78();
    }

    sub_266668B58();
    if (v20)
    {
      sub_26666AC88();
    }

    sub_266668B68();
    if (v21)
    {
      sub_26666AC98();
    }

    sub_266668B78();
    if (v22)
    {
      sub_26666ACA8();
    }

    sub_266668B88();
    if (v23)
    {
      sub_26666AC58();
    }

    sub_266668B98();
    if (v24)
    {
      sub_26666AC68();
    }

    sub_26666A978();

    if (sub_26666A998())
    {
      sub_266580A0C();
      v30[0] = v9;

      v9 = v30[0];
      sub_26666A2C8();
      sub_26666A1E8();

      (*(v31 + 8))(v8, v32);
    }

    sub_266668BD8();
    sub_26666A9A8();

    (*(v9 + 8))(v14, v34);
  }

  result = [v15 personHandle];
  if (result)
  {
    v26 = result;
    sub_26666AE38();
    swift_allocObject();
    sub_26666AE28();
    v27 = [v26 label];
    if (v27)
    {
      v28 = v27;
      sub_26666C308();
      sub_26666AE08();
    }

    sub_2665A9C74(v26);
    if (v29)
    {
      sub_26666AE18();
    }

    sub_26666A988();
  }

  *v33 = v16;
  return result;
}

uint64_t sub_2665A71C4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007F800, &qword_266672968);
  __swift_allocate_value_buffer(v0, qword_280095730);
  v1 = OUTLINED_FUNCTION_25();
  __swift_project_value_buffer(v1, v2);
  sub_266552C44(0, &qword_28007D148, 0x277CD3E90);
  v3 = sub_26666B238();
  return OUTLINED_FUNCTION_0_19(v3, v4, v5, v3);
}

uint64_t sub_2665A7250@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v14 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DF00, &qword_266672970);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - v6;
  v8 = *a1;
  if (qword_28007CDB8 != -1)
  {
    swift_once();
  }

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DF08, &qword_266672978);
  __swift_project_value_buffer(v9, qword_280095718);
  v10 = sub_26666BAD8();
  v11 = swift_allocObject();
  *(v11 + 16) = 0x73746361746E6F43;
  *(v11 + 24) = 0xE800000000000000;
  sub_266552C44(0, &qword_28007D148, 0x277CD3E90);
  sub_26666A9C8();
  sub_26666BAC8();
  v12 = sub_26666BAD8();
  (*(v5 + 8))(v7, v4);
  v16 = v8;
  v12(&v15, &v16);

  if (v2)
  {
  }

  v16 = v15;
  v10(&v15, &v16);

  *v14 = v15;
  return result;
}

uint64_t sub_2665A74D0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DF78, &unk_266679E20);
  __swift_allocate_value_buffer(v0, qword_280095748);
  v1 = OUTLINED_FUNCTION_25();
  __swift_project_value_buffer(v1, v2);
  sub_266552C44(0, &qword_28156C110, 0x277CD3AD8);
  v3 = sub_26666B238();
  return OUTLINED_FUNCTION_0_19(v3, v4, v5, v3);
}

void sub_2665A755C(void **a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DF00, &qword_266672970);
  v6 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v30 - v7;
  v8 = *a1;
  sub_26666AF28();
  swift_allocObject();
  v9 = sub_26666AF18();
  sub_2665EF548(v8);
  if (v10)
  {
    sub_26666AF08();
  }

  v11 = [v8 location];
  if (v11)
  {
    v12 = v11;
    sub_2666111C8(v11);
    if (v13)
    {
      sub_26666AD58();
      swift_allocObject();
      sub_26666AD48();
      v38 = v2;
      sub_26666AD38();

      sub_26666AEB8();

      v3 = v38;
    }

    else
    {
    }
  }

  if (qword_28007CDD0 != -1)
  {
    goto LABEL_32;
  }

  while (1)
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DF80, &qword_2666729D8);
    __swift_project_value_buffer(v14, qword_280095760);
    v15 = sub_26666BAD8();
    v16 = [v8 dateTimeRange];
    v40 = v16;
    v15(&v39, &v40);
    if (v3)
    {
    }

    else
    {

      if (v39)
      {

        sub_26666AEE8();
      }
    }

    v17 = sub_2665B0ECC(v8);
    if (!v17)
    {
      break;
    }

    v3 = v17;
    v37 = sub_2665C485C();
    if (!v37)
    {

      break;
    }

    v18 = 0;
    v36 = v3 & 0xC000000000000001;
    v30 = a2;
    v31 = v3 & 0xFFFFFFFFFFFFFF8;
    v32 = v6 + 1;
    v33 = v9;
    while (1)
    {
      if (v36)
      {
        v19 = MEMORY[0x266788B60](v18, v3);
      }

      else
      {
        if (v18 >= *(v31 + 16))
        {
          goto LABEL_31;
        }

        v19 = *(v3 + 8 * v18 + 32);
      }

      v6 = v19;
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      v20 = [v19 person];
      if (v20)
      {
        v21 = v20;
        v22 = swift_allocObject();
        v38 = 0;
        *(v22 + 16) = 0x73746361746E6F43;
        *(v22 + 24) = 0xE800000000000000;
        sub_266552C44(0, &qword_28007D148, 0x277CD3E90);
        sub_26666A9C8();
        v23 = v34;
        sub_26666BAC8();
        v24 = v35;
        v25 = sub_26666BAD8();
        v8 = v26;
        (*v32)(v23, v24);
        v40 = v21;
        v27 = v38;
        v25(&v39, &v40);
        if (v27)
        {

          return;
        }

        a2 = v39;
        sub_26666AEC8();
      }

      ++v18;
      if (v9 == v37)
      {

        a2 = v30;
        v9 = v33;
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    swift_once();
  }

LABEL_26:
  if (qword_28007CDB8 != -1)
  {
    swift_once();
  }

  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DF08, &qword_266672978);
  __swift_project_value_buffer(v28, qword_280095718);
  v29 = sub_26666BAD8();
  v40 = v9;
  v29(&v39, &v40);

  *a2 = v39;
}

uint64_t sub_2665A7AD8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DF80, &qword_2666729D8);
  __swift_allocate_value_buffer(v0, qword_280095760);
  __swift_project_value_buffer(v0, qword_280095760);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DF20, &unk_2666746B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DF88, &qword_2666729E0);
  return sub_26666BAC8();
}

void sub_2665A7B80(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_266668B08();
  v31 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DC90, &qword_266676EB0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v28 - v12;
  v14 = *a1;
  if (!v14)
  {
    v21 = 0;
    goto LABEL_19;
  }

  v30 = a2;
  sub_26666AF78();
  swift_allocObject();
  v15 = v14;
  v29 = sub_26666AF68();
  if (qword_28007CDD8 != -1)
  {
    swift_once();
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DF90, &qword_2666729E8);
  v28[1] = __swift_project_value_buffer(v16, qword_280095778);
  v17 = sub_26666BAD8();
  v32 = v15;
  v18 = [v15 startDateComponents];
  if (v18)
  {
    v19 = v18;
    sub_266668A28();

    (*(v31 + 32))(v13, v7, v5);
    v20 = 0;
  }

  else
  {
    v20 = 1;
  }

  __swift_storeEnumTagSinglePayload(v13, v20, 1, v5);
  v17(&v33, v13);
  v22 = v32;
  if (v2)
  {

    sub_266557D74(v13, &unk_28007DC90, &qword_266676EB0);
  }

  else
  {

    sub_266557D74(v13, &unk_28007DC90, &qword_266676EB0);
    if (v33)
    {

      v21 = v29;
      sub_26666AF58();

      goto LABEL_13;
    }
  }

  v21 = v29;
LABEL_13:
  v23 = sub_26666BAD8();
  v24 = [v22 endDateComponents];
  if (v24)
  {
    v25 = v24;
    sub_266668A28();

    (*(v31 + 32))(v11, v7, v5);
    v26 = 0;
  }

  else
  {
    v26 = 1;
  }

  __swift_storeEnumTagSinglePayload(v11, v26, 1, v5);
  v23(&v33, v11);
  v27 = v32;

  sub_266557D74(v11, &unk_28007DC90, &qword_266676EB0);
  if (v33)
  {

    sub_26666AF48();
  }

  a2 = v30;
LABEL_19:
  *a2 = v21;
}

uint64_t sub_2665A7F9C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DF90, &qword_2666729E8);
  __swift_allocate_value_buffer(v0, qword_280095778);
  __swift_project_value_buffer(v0, qword_280095778);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DC90, &qword_266676EB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DF98, &qword_2666729F0);
  return sub_26666BAC8();
}

uint64_t sub_2665A8044@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DC90, &qword_266676EB0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v31 - v6;
  v8 = sub_266668B08();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2665A9D2C(a1, v7);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    result = sub_266557D74(v7, &unk_28007DC90, &qword_266676EB0);
    v13 = 0;
  }

  else
  {
    v31 = v9;
    (*(v9 + 32))(v11, v7, v8);
    sub_26666AB88();
    swift_allocObject();
    v33 = sub_26666AB78();
    sub_26666A8A8();
    swift_allocObject();
    v34 = sub_26666A898();
    if (qword_28007CDE0 != -1)
    {
      swift_once();
    }

    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DFA0, &qword_2666729F8);
    __swift_project_value_buffer(v14, qword_28007DE70);
    v15 = sub_26666BAD8();
    v35 = sub_266668A88();
    v36 = v16 & 1;
    v15(&v37, &v35);
    if (v2)
    {
    }

    else
    {

      if (v37)
      {

        sub_26666A878();
      }
    }

    if (qword_28007CDE8 != -1)
    {
      swift_once();
    }

    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DFA8, &qword_266672A00);
    __swift_project_value_buffer(v17, qword_28007DE88);
    v18 = sub_26666BAD8();
    v35 = sub_266668A38();
    v36 = v19 & 1;
    v18(&v37, &v35);

    if (v37)
    {

      sub_26666A858();
    }

    v20 = sub_26666BAD8();
    v35 = sub_2666689D8();
    v36 = v21 & 1;
    v20(&v37, &v35);

    if (v37)
    {

      sub_26666A868();
    }

    v22 = sub_26666BAD8();
    v35 = sub_266668A78();
    v36 = v23 & 1;
    v22(&v37, &v35);
    v32 = a2;

    if (v37)
    {

      sub_26666A888();
    }

    sub_26666AB58();

    sub_26666A8F8();
    swift_allocObject();
    sub_26666A8E8();
    v24 = sub_26666BAD8();
    v35 = sub_266668A58();
    v36 = v25 & 1;
    v24(&v37, &v35);

    if (v37)
    {

      sub_26666A8B8();
    }

    v26 = sub_26666BAD8();
    v35 = sub_266668A98();
    v36 = v27 & 1;
    v26(&v37, &v35);

    if (v37)
    {

      sub_26666A8C8();
    }

    v28 = sub_26666BAD8();
    v35 = sub_266668AB8();
    v36 = v29 & 1;
    v28(&v37, &v35);

    v30 = v31;
    a2 = v32;
    if (v37)
    {

      sub_26666A8D8();
    }

    v13 = v33;
    sub_26666AB68();

    result = (*(v30 + 8))(v11, v8);
  }

  *a2 = v13;
  return result;
}

uint64_t sub_2665A8754()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DFA0, &qword_2666729F8);
  __swift_allocate_value_buffer(v0, qword_28007DE70);
  __swift_project_value_buffer(v0, qword_28007DE70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DF58, &qword_2666729B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DFB8, &unk_266672A10);
  return sub_26666BAC8();
}

uint64_t sub_2665A87FC@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  if (*(result + 8))
  {
    v3 = 0;
  }

  else
  {
    sub_26666AD88();
    swift_allocObject();
    v3 = sub_26666AD78();
    sub_26666AB38();
    swift_allocObject();
    sub_26666AB28();
    sub_26666AB18();

    sub_26666AD68();
  }

  *a2 = v3;
  return result;
}

uint64_t sub_2665A88BC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DFA8, &qword_266672A00);
  __swift_allocate_value_buffer(v0, qword_28007DE88);
  __swift_project_value_buffer(v0, qword_28007DE88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DF58, &qword_2666729B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DFB0, &qword_266672A08);
  return sub_26666BAC8();
}

uint64_t sub_2665A8964@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  if (*(result + 8))
  {
    v3 = 0;
  }

  else
  {
    sub_26666AB38();
    swift_allocObject();
    v3 = sub_26666AB28();
    result = sub_26666AB18();
  }

  *a2 = v3;
  return result;
}

uint64_t sub_2665A89D4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D3E0, &unk_26666EF80);
  __swift_allocate_value_buffer(v0, qword_280095790);
  v1 = OUTLINED_FUNCTION_25();
  __swift_project_value_buffer(v1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DF18, &qword_266672980);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DF20, &unk_2666746B0);
  return OUTLINED_FUNCTION_0_19(v3, v4, v5, v3);
}

uint64_t sub_2665A8A68@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DC90, &qword_266676EB0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v9 = MEMORY[0x28223BE20](v8);
  result = MEMORY[0x28223BE20](v9);
  v15 = &v26 - v14;
  if (*a1)
  {
    v26 = v13;
    v27 = v12;
    v28 = v11;
    v29 = a2;
    v16 = qword_28007CDF8;

    if (v16 != -1)
    {
      swift_once();
    }

    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DF28, &qword_266672988);
    __swift_project_value_buffer(v17, qword_28007DEA0);
    v18 = sub_26666BAD8();
    v30 = sub_26666AAB8();
    v18(&v30);
    if (v3)
    {

      v19 = sub_266668B08();
      __swift_storeEnumTagSinglePayload(v15, 1, 1, v19);
    }

    else
    {
    }

    v21 = sub_26666BAD8();
    v30 = sub_26666AA98();
    v22 = v27;
    v21(&v30);

    v23 = v26;
    sub_2665A9D2C(v15, v26);
    v24 = v28;
    sub_2665A9D2C(v22, v28);
    v25 = objc_allocWithZone(MEMORY[0x277CD3B68]);
    v20 = sub_26655F4EC(v23, v24);

    sub_266557D74(v22, &unk_28007DC90, &qword_266676EB0);
    result = sub_266557D74(v15, &unk_28007DC90, &qword_266676EB0);
    a2 = v29;
  }

  else
  {
    v20 = 0;
  }

  *a2 = v20;
  return result;
}

uint64_t sub_2665A8D88()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DF28, &qword_266672988);
  __swift_allocate_value_buffer(v0, qword_28007DEA0);
  __swift_project_value_buffer(v0, qword_28007DEA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DF30, &qword_266672990);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DC90, &qword_266676EB0);
  return sub_26666BAC8();
}

uint64_t sub_2665A8E30@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D280, &unk_266671C80);
  MEMORY[0x28223BE20](v4 - 8);
  v52 = v37 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D288, &qword_26666E3E8);
  MEMORY[0x28223BE20](v6 - 8);
  v51 = v37 - v7;
  if (*a1)
  {
    v8 = sub_26666A6C8();
    v9 = sub_26666A6D8();
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  if (qword_28007CE08 != -1)
  {
    swift_once();
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DF38, &qword_266672998);
  __swift_project_value_buffer(v10, qword_28007DED0);
  v11 = sub_26666BAD8();
  if (v8)
  {

    v12 = sub_26666A5E8();
  }

  else
  {
    v12 = 0;
  }

  v56 = v12;
  v11(&v54, &v56);
  if (v2)
  {

    v50 = 0;
    v13 = 1;
  }

  else
  {

    v50 = v54;
    v13 = v55;
  }

  v49 = v13;
  if (qword_28007CE00 != -1)
  {
    swift_once();
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DF40, &qword_2666729A0);
  __swift_project_value_buffer(v14, qword_28007DEB8);
  v15 = sub_26666BAD8();
  if (v8)
  {

    v16 = sub_26666A5B8();
  }

  else
  {
    v16 = 0;
  }

  v56 = v16;
  v15(&v54, &v56);

  v48 = v54;
  v47 = v55;
  v17 = sub_26666BAD8();
  if (v8)
  {

    v18 = sub_26666A598();
  }

  else
  {
    v18 = 0;
  }

  v56 = v18;
  v17(&v54, &v56);

  v46 = v54;
  v45 = v55;
  v19 = sub_26666BAD8();
  if (v9)
  {

    v20 = sub_26666A608();
  }

  else
  {
    v20 = 0;
  }

  v56 = v20;
  v19(&v54, &v56);

  v44 = v54;
  v43 = v55;
  v21 = sub_26666BAD8();
  if (v9)
  {

    v22 = sub_26666A618();
  }

  else
  {
    v22 = 0;
  }

  v56 = v22;
  v21(&v54, &v56);

  v42 = v54;
  v41 = v55;
  v23 = sub_26666BAD8();
  if (v9)
  {

    v24 = sub_26666A628();
  }

  else
  {
    v24 = 0;
  }

  v56 = v24;
  v23(&v54, &v56);

  v40 = v54;
  v39 = v55;
  if (qword_28007CE10 != -1)
  {
    swift_once();
  }

  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DF48, &qword_2666729A8);
  __swift_project_value_buffer(v25, qword_28007DEE8);
  v26 = sub_26666BAD8();
  if (v8)
  {

    v27 = sub_26666A5F8();
  }

  else
  {
    v27 = 0;
  }

  v56 = v27;
  v26(&v54, &v56);

  v38 = v54;
  v37[3] = v55;
  v28 = sub_26666BAD8();
  if (v8)
  {

    v29 = sub_26666A5A8();
  }

  else
  {
    v29 = 0;
  }

  v56 = v29;
  v28(&v54, &v56);

  v30 = v51;
  sub_266668E58();
  v31 = sub_266668E68();
  __swift_storeEnumTagSinglePayload(v30, 0, 1, v31);
  v32 = v52;
  sub_266668EA8();
  v33 = sub_266668EB8();
  __swift_storeEnumTagSinglePayload(v32, 0, 1, v33);
  v34 = v53;
  sub_266668AF8();

  v35 = sub_266668B08();
  return __swift_storeEnumTagSinglePayload(v34, 0, 1, v35);
}

uint64_t sub_2665A96B4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DF40, &qword_2666729A0);
  __swift_allocate_value_buffer(v0, qword_28007DEB8);
  __swift_project_value_buffer(v0, qword_28007DEB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DF68, &qword_2666729C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DF58, &qword_2666729B8);
  return sub_26666BAC8();
}

void *sub_2665A975C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  if (*result && (result = sub_26666A908()) != 0)
  {
    v3 = sub_26666A668();
    v5 = v4;

    if (v5)
    {
      v6 = 0;
    }

    else
    {
      v6 = v3;
    }
  }

  else
  {
    v6 = 0;
    v5 = 1;
  }

  *a2 = v6;
  *(a2 + 8) = v5 & 1;
  return result;
}

uint64_t sub_2665A97E0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DF38, &qword_266672998);
  __swift_allocate_value_buffer(v0, qword_28007DED0);
  __swift_project_value_buffer(v0, qword_28007DED0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DF70, &qword_2666729D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DF58, &qword_2666729B8);
  return sub_26666BAC8();
}

void *sub_2665A9888@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  if (*result)
  {
    result = sub_26666A668();
    if (v3)
    {
      v4 = 0;
    }

    else
    {
      v4 = result;
    }
  }

  else
  {
    v4 = 0;
    v3 = 1;
  }

  *a2 = v4;
  *(a2 + 8) = v3 & 1;
  return result;
}

uint64_t sub_2665A98E4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DF48, &qword_2666729A8);
  __swift_allocate_value_buffer(v0, qword_28007DEE8);
  __swift_project_value_buffer(v0, qword_28007DEE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DF50, &qword_2666729B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DF58, &qword_2666729B8);
  return sub_26666BAC8();
}

uint64_t sub_2665A998C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DF60, &qword_2666729C0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v18 - v5;
  v7 = sub_26666A7F8();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v18 - v12;
  if (!*a1)
  {
    __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
    goto LABEL_6;
  }

  sub_26666A7E8();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
LABEL_6:
    result = sub_266557D74(v6, &qword_28007DF60, &qword_2666729C0);
LABEL_7:
    v17 = 0;
    v16 = 1;
    goto LABEL_8;
  }

  v14 = *(v8 + 32);
  v14(v13, v6, v7);
  v14(v11, v13, v7);
  result = (*(v8 + 88))(v11, v7);
  if (result != *MEMORY[0x277D5E9D0])
  {
    if (result == *MEMORY[0x277D5E9A0])
    {
      v16 = 0;
      v17 = 3;
      goto LABEL_8;
    }

    if (result == *MEMORY[0x277D5E9C8])
    {
      v16 = 0;
      v17 = 6;
      goto LABEL_8;
    }

    if (result == *MEMORY[0x277D5E9A8])
    {
      v16 = 0;
      v17 = 5;
      goto LABEL_8;
    }

    if (result == *MEMORY[0x277D5E9B0])
    {
      v16 = 0;
      v17 = 1;
      goto LABEL_8;
    }

    if (result == *MEMORY[0x277D5E9C0])
    {
      v16 = 0;
      v17 = 2;
      goto LABEL_8;
    }

    if (result == *MEMORY[0x277D5E9B8])
    {
      v17 = 0;
      v16 = 0;
      goto LABEL_8;
    }

    result = (*(v8 + 8))(v11, v7);
    goto LABEL_7;
  }

  v16 = 0;
  v17 = 4;
LABEL_8:
  *a2 = v17;
  *(a2 + 8) = v16;
  return result;
}

uint64_t sub_2665A9C74(void *a1)
{
  v1 = [a1 value];
  if (v1)
  {
    v2 = v1;
    sub_26666C308();
  }

  return OUTLINED_FUNCTION_25();
}

unint64_t sub_2665A9CD4()
{
  result = qword_28007DF10;
  if (!qword_28007DF10)
  {
    sub_26666BB18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007DF10);
  }

  return result;
}

uint64_t sub_2665A9D2C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DC90, &qword_266676EB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_0_19(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_26666BAC8();
}

uint64_t get_enum_tag_for_layout_string_19SiriCalendarIntents11CommonErrorO(uint64_t a1)
{
  if ((*(a1 + 32) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 32) & 3;
  }
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2665A9E04(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 33))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 32);
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

uint64_t sub_2665A9E44(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_2665A9E8C(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t sub_2665A9EBC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DFC8, &unk_266677850);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26666EED0;
  *(inited + 32) = sub_26666C308();
  *(inited + 40) = v2;
  v3 = *(v0 + 16);
  v8 = *v0;
  v9 = v3;
  v10 = *(v0 + 32);
  sub_2665AA19C(v0, v7);
  v4 = sub_26666C318();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  return sub_26666C258();
}

uint64_t sub_2665A9F7C(uint64_t *a1, int8x16_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  if (*(a1 + 32))
  {
    if (*(a1 + 32) == 1)
    {
      if (a2[2].i8[0] == 1)
      {
        if (v4 != a2->i64[0] || v5 != a2->i64[1])
        {
LABEL_20:

          return sub_26666CAC8();
        }

        return 1;
      }
    }

    else if (a2[2].i8[0] == 2)
    {
      v15 = vorrq_s8(*a2, a2[1]);
      if (!*&vorr_s8(*v15.i8, *&vextq_s8(v15, v15, 8uLL)))
      {
        return 1;
      }
    }

    return 0;
  }

  if (a2[2].i8[0])
  {
    return 0;
  }

  v7 = a1[2];
  v8 = a1[3];
  v9 = a2[1].i64[0];
  v10 = a2[1].i64[1];
  v11 = v4 == a2->i64[0] && v5 == a2->i64[1];
  if (v11 || (v12 = sub_26666CAC8(), result = 0, (v12 & 1) != 0))
  {
    if (v7 != v9 || v8 != v10)
    {
      goto LABEL_20;
    }

    return 1;
  }

  return result;
}

uint64_t sub_2665AA084(uint64_t a1)
{
  v2 = sub_2665AA148();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_2665AA0C0(uint64_t a1)
{
  v2 = sub_2665AA148();

  return MEMORY[0x28211F4A8](a1, v2);
}

unint64_t sub_2665AA148()
{
  result = qword_28007DFC0;
  if (!qword_28007DFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007DFC0);
  }

  return result;
}

uint64_t sub_2665AA1D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_266669E58();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_2665AA21C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_266669E58();

  return __swift_storeEnumTagSinglePayload(a1, a2, a3, v6);
}

uint64_t type metadata accessor for IntentConversionError(uint64_t a1)
{
  result = qword_28007DFD0;
  if (!qword_28007DFD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2665AA2C0(uint64_t a1)
{
  v2 = sub_266669E58();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v2 - 8) + 84);
    return 0;
  }

  return v2;
}

uint64_t sub_2665AA39C()
{
  v1 = type metadata accessor for IntentConversionError(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DFC8, &unk_266677850);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26666EED0;
  *(inited + 32) = sub_26666C308();
  *(inited + 40) = v5;
  sub_2665AA594(v0, v3);
  v6 = sub_26666C318();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v6;
  *(inited + 56) = v7;
  return sub_26666C258();
}

uint64_t sub_2665AA49C(uint64_t a1)
{
  v2 = sub_2665AA550(&qword_28007DFE0, &unk_266672B78);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_2665AA4F4(uint64_t a1)
{
  v2 = sub_2665AA550(&qword_28007DFE0, &unk_266672B78);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_2665AA550(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for IntentConversionError(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2665AA594(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntentConversionError(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_2665AA630()
{
  type metadata accessor for SiriCalendarIntentsBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_28156D7E0 = result;
  return result;
}

uint64_t sub_2665AA688(char a1)
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

uint64_t sub_2665AA6C4(char a1)
{
  if (a1 == 2)
  {
    if (qword_28156C150 != -1)
    {
      swift_once();
    }

    v1 = sub_26666C168();
    __swift_project_value_buffer(v1, qword_28156D7E8);
    v2 = sub_26666C148();
    v3 = sub_26666C618();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v10 = v5;
      *v4 = 136315394;
      *(v4 + 4) = sub_2665BFC90(7104878, 0xE300000000000000, &v10);
      *(v4 + 12) = 1024;
      *(v4 + 14) = 1;
      _os_log_impl(&dword_266549000, v2, v3, "Location Permission guard skipped, using static passing guard flow instead. { requiredPrecision: %s, supportedPlatform: %{BOOL}d }", v4, 0x12u);
      __swift_destroy_boxed_opaque_existential_1(v5);
      MEMORY[0x266789690](v5, -1, -1);
      MEMORY[0x266789690](v4, -1, -1);
    }

    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DFE8, &unk_266672C40);
    v7 = sub_2665AA8F4();

    return MEMORY[0x2821BA320](sub_2665AA8EC, 0, v6, v7);
  }

  else
  {
    v8 = a1 & 1;

    return MEMORY[0x2821BA2C0](v8);
  }
}

uint64_t sub_2665AA898(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (*(a3 + 8))(a2, a3);

  return sub_2665AA6C4(v3);
}

unint64_t sub_2665AA8F4()
{
  result = qword_28156CA88[0];
  if (!qword_28156CA88[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28007DFE8, &unk_266672C40);
    result = swift_getWitnessTable();
    atomic_store(result, qword_28156CA88);
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

unint64_t sub_2665AAA38()
{
  result = qword_28007DFF0;
  if (!qword_28007DFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007DFF0);
  }

  return result;
}

void sub_2665AAA8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, id a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_15_3();
  v311 = v20;
  v322 = v21;
  v23 = v22;
  v305 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E268, &unk_266673A68);
  OUTLINED_FUNCTION_3_3(v25);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_8_9();
  OUTLINED_FUNCTION_15_8(v27);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D2B0, &qword_26666E5F0);
  v29 = OUTLINED_FUNCTION_3_3(v28);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_8_10();
  OUTLINED_FUNCTION_10_8();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_19_7();
  OUTLINED_FUNCTION_15_8(v31);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E270, &qword_266673A78);
  OUTLINED_FUNCTION_3_3(v32);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_8_9();
  OUTLINED_FUNCTION_15_8(v34);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E278, &qword_266673A80);
  OUTLINED_FUNCTION_3_3(v35);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_8_9();
  OUTLINED_FUNCTION_15_8(v37);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E280, &qword_266673A88);
  OUTLINED_FUNCTION_3_3(v38);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_8_9();
  OUTLINED_FUNCTION_15_8(v40);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E288, &qword_266673A90);
  v42 = OUTLINED_FUNCTION_3_3(v41);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_8_10();
  OUTLINED_FUNCTION_10_8();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_24_5();
  OUTLINED_FUNCTION_10_8();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_19_7();
  OUTLINED_FUNCTION_15_8(v45);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E290, &unk_266673A98);
  OUTLINED_FUNCTION_3_3(v46);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_8_9();
  OUTLINED_FUNCTION_15_8(v48);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D280, &unk_266671C80);
  v50 = OUTLINED_FUNCTION_3_3(v49);
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_8_10();
  OUTLINED_FUNCTION_10_8();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_24_5();
  OUTLINED_FUNCTION_10_8();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_19_7();
  OUTLINED_FUNCTION_15_8(v53);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E000, &qword_266672D08);
  OUTLINED_FUNCTION_3_3(v54);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_8_9();
  OUTLINED_FUNCTION_15_8(v56);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E298, &qword_266673AA8);
  OUTLINED_FUNCTION_3_3(v57);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_8_9();
  OUTLINED_FUNCTION_15_8(v59);
  v306 = sub_26666B298();
  OUTLINED_FUNCTION_3_0();
  v301 = v60;
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_15_8(v63 - v62);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E2A0, qword_266673AB0);
  OUTLINED_FUNCTION_3_3(v64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_8_9();
  OUTLINED_FUNCTION_15_8(v66);
  v317 = type metadata accessor for Snippet.Participant(0);
  OUTLINED_FUNCTION_3_0();
  v302 = v67;
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_15_8(v70 - v69);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DFF8, &qword_266672D00);
  OUTLINED_FUNCTION_3_3(v71);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_8_9();
  OUTLINED_FUNCTION_15_8(v73);
  v312 = sub_266668D68();
  OUTLINED_FUNCTION_3_0();
  v313 = v74;
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_15_8(v77 - v76);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D140, &qword_26666F140);
  v79 = OUTLINED_FUNCTION_3_3(v78);
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_8_10();
  OUTLINED_FUNCTION_10_8();
  v81 = MEMORY[0x28223BE20](v80);
  v83 = v292 - v82;
  v84 = MEMORY[0x28223BE20](v81);
  v86 = v292 - v85;
  v87 = MEMORY[0x28223BE20](v84);
  v89 = v292 - v88;
  MEMORY[0x28223BE20](v87);
  v91 = v292 - v90;
  v319 = sub_266668D38();
  OUTLINED_FUNCTION_3_0();
  v315 = v92;
  MEMORY[0x28223BE20](v93);
  OUTLINED_FUNCTION_8_10();
  OUTLINED_FUNCTION_10_8();
  MEMORY[0x28223BE20](v94);
  OUTLINED_FUNCTION_24_5();
  OUTLINED_FUNCTION_10_8();
  MEMORY[0x28223BE20](v95);
  OUTLINED_FUNCTION_24_5();
  OUTLINED_FUNCTION_10_8();
  MEMORY[0x28223BE20](v96);
  OUTLINED_FUNCTION_19_7();
  OUTLINED_FUNCTION_15_8(v97);
  v98 = type metadata accessor for Snippet.Event(0);
  OUTLINED_FUNCTION_18_2();
  MEMORY[0x28223BE20](v99);
  OUTLINED_FUNCTION_1_0();
  v102 = (v101 - v100);
  v104 = *(v103 + 48);
  v105 = type metadata accessor for Snippet.Event.RecurrenceRule(0);
  v320 = v104;
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v106, v107, v108, v105);
  v109 = v98[14];
  sub_26666B278();
  v321 = v102;
  v110 = v109;
  OUTLINED_FUNCTION_7_6();
  v304 = v111;
  __swift_storeEnumTagSinglePayload(v112, v113, v114, v111);
  v331 = v23;
  v115 = sub_2665EF548(v23);
  if (!v116)
  {
    goto LABEL_19;
  }

  v117 = v116;
  v297 = v115;
  v118 = [v23 dateTimeRange];
  if (!v118)
  {

    OUTLINED_FUNCTION_7_6();
    __swift_storeEnumTagSinglePayload(v122, v123, v124, v319);
LABEL_18:
    sub_26656CAEC(v91, &qword_28007D140, &qword_26666F140);
LABEL_19:
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_0_11();
      swift_once();
    }

    v135 = sub_26666C168();
    __swift_project_value_buffer(v135, qword_28156D7E8);
    v136 = sub_26666C148();
    v137 = sub_26666C608();
    if (OUTLINED_FUNCTION_52_0(v137))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_36_2(&dword_266549000, v138, v139, "[Snippet.Event] INCalendarEvent does not have required properties (title, start, end) to build Event");
      OUTLINED_FUNCTION_47_1();
      MEMORY[0x266789690]();
    }

    sub_26657F9F8();
    swift_allocError();
    *v140 = 0;
    swift_willThrow();

    v141 = 0;
    v142 = v322;
    goto LABEL_24;
  }

  v119 = v118;
  v298 = v110;
  v120 = [v118 startDate];

  if (v120)
  {
    sub_266668CE8();

    v121 = 0;
  }

  else
  {
    v121 = 1;
  }

  v125 = v319;
  __swift_storeEnumTagSinglePayload(v89, v121, 1, v319);
  sub_266557CE4(v89, v91);
  if (__swift_getEnumTagSinglePayload(v91, 1, v125) == 1)
  {

LABEL_17:
    v110 = v298;
    goto LABEL_18;
  }

  v299 = v117;
  OUTLINED_FUNCTION_57();
  v126 = v316;
  v296 = *(v117 + 32);
  v296(v316, v91, v125);
  v127 = [v331 dateTimeRange];
  if (!v127)
  {
    (*(v117 + 8))(v126, v125);

    OUTLINED_FUNCTION_7_6();
    __swift_storeEnumTagSinglePayload(v131, v132, v133, v125);
LABEL_16:
    v91 = v86;
    goto LABEL_17;
  }

  v128 = v127;
  v129 = [v127 endDate];

  if (v129)
  {
    sub_266668CE8();

    v130 = 0;
  }

  else
  {
    v130 = 1;
  }

  v134 = v319;
  __swift_storeEnumTagSinglePayload(v83, v130, 1, v319);
  sub_266557CE4(v83, v86);
  if (__swift_getEnumTagSinglePayload(v86, 1, v134) == 1)
  {
    (*(v315 + 8))(v316, v134);

    goto LABEL_16;
  }

  v296(v314, v86, v134);
  v144 = __swift_project_boxed_opaque_existential_1(v322, v322[3]);
  v145 = sub_2665EF53C(v331);
  v146 = *v144;
  v148 = sub_26655AB40(v145, v147);

  v149 = sub_2665EF53C(v331);
  v150 = v321;
  *v321 = v149;
  v150[1] = v151;
  OUTLINED_FUNCTION_50();
  _s19SiriCalendarIntents7SnippetO11ParticipantV2id10Foundation4UUIDVvpfi_0();
  v152 = sub_266668D48();
  v154 = v153;
  v155 = v313 + 8;
  v156 = v146;
  v157 = *(v313 + 8);
  v157(v156, v312);
  v150[2] = v152;
  v150[3] = v154;
  v158 = v148;
  v159 = v311;
  Snippet.Calendar.init(ekCalendar:)(v158, &v328);
  v311 = v159;
  if (!v159)
  {
    v294 = v157;
    v295 = v158;
    v313 = v155;
    v164 = v329;
    *(v150 + 2) = v328;
    *(v150 + 3) = v164;
    *(v150 + 4) = *v330;
    *(v150 + 73) = *&v330[9];
    v165 = v299;
    v150[12] = v297;
    v150[13] = v165;
    v166 = v315 + 16;
    v167 = *(v315 + 16);
    v168 = v319;
    v167(v309, v316, v319);
    v292[1] = v166;
    v292[0] = v167;
    v167(v310, v314, v168);

    sub_266668978();
    v169 = sub_2665EC938();
    v170 = v98[9];
    v293 = v169;
    *(v150 + v170) = v169 & 1;
    v171 = [v331 location];
    v172 = v150;
    if (v171)
    {
      v171 = sub_2665EF554(v171);
    }

    else
    {
      v173 = 0;
    }

    v174 = v322;
    v175 = (v150 + v98[10]);
    v176 = (v150 + v98[11]);
    v292[2] = v171;
    *v175 = v171;
    v175[1] = v173;
    v296 = v173;
    v177 = v331;
    *v176 = sub_2665B0F28(v331);
    v176[1] = v178;
    v179 = [v331 dateTimeRange];
    v180 = [v179 recurrenceRule];

    if (v180)
    {
      OUTLINED_FUNCTION_50();
      sub_2665ACF74(v180, v181);
    }

    else
    {
      OUTLINED_FUNCTION_7_6();
      __swift_storeEnumTagSinglePayload(v182, v183, v184, v105);
    }

    sub_2665ACC88();
    v185 = sub_2665B0ECC(v331);
    v186 = MEMORY[0x277D84F90];
    if (v185)
    {
      v187 = v185;
      v324[0] = MEMORY[0x277D84F90];
      v188 = sub_2665C485C();
      for (i = 0; v188 != i; ++i)
      {
        if ((v187 & 0xC000000000000001) != 0)
        {
          v190 = MEMORY[0x266788B60](i, v187);
        }

        else
        {
          if (i >= *((v187 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_79;
          }

          v190 = *(v187 + 8 * i + 32);
        }

        v191 = v190;
        if (__OFADD__(i, 1))
        {
          __break(1u);
LABEL_79:
          __break(1u);
LABEL_80:
          __break(1u);
LABEL_81:
          __break(1u);
          goto LABEL_82;
        }

        if (sub_2666667D0())
        {
        }

        else
        {
          sub_26666C868();
          v174 = *(v324[0] + 16);
          sub_26666C8A8();
          sub_26666C8B8();
          sub_26666C878();
        }
      }

      v192 = v324[0];
      v187 = sub_2665C485C();
      v193 = 0;
      v174 = (v192 & 0xC000000000000001);
      v320 = MEMORY[0x277D84F90];
      while (v187 != v193)
      {
        if (v174)
        {
          v200 = OUTLINED_FUNCTION_25();
          v194 = MEMORY[0x266788B60](v200);
        }

        else
        {
          if (v193 >= *(v192 + 16))
          {
            goto LABEL_81;
          }

          v194 = *(v192 + 8 * v193 + 32);
        }

        v195 = v193 + 1;
        if (__OFADD__(v193, 1))
        {
          goto LABEL_80;
        }

        v196 = v318;
        sub_2665888D8(v194, v318);
        if (__swift_getEnumTagSinglePayload(v196, 1, v317) == 1)
        {
          sub_26656CAEC(v196, &qword_28007E2A0, qword_266673AB0);
          ++v193;
        }

        else
        {
          OUTLINED_FUNCTION_27_6();
          sub_2665B120C();
          v197 = v320;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_2665C6A6C();
            v197 = v201;
          }

          v199 = v197[2];
          v198 = v197[3];
          v320 = v197;
          if (v199 >= v198 >> 1)
          {
            sub_2665C6A6C();
            v320 = v202;
          }

          v320[2] = v199 + 1;
          OUTLINED_FUNCTION_27_6();
          sub_2665B120C();
          v193 = v195;
        }
      }

      v172 = v321;
      v174 = v322;
      v177 = v331;
      v186 = v320;
    }

    *(v172 + v98[13]) = v186;
    sub_2665EF53C(v177);
    v204 = v203;
    v205 = *__swift_project_boxed_opaque_existential_1(v174, v174[3]);
    v326 = type metadata accessor for EventProvider();
    v327 = &off_287806290;
    v324[0] = v205;
    sub_26655358C(v324, v323);

    __swift_destroy_boxed_opaque_existential_1(v324);
    v187 = v316;
    if (v204)
    {
      __swift_project_boxed_opaque_existential_1(v323, v323[3]);

      v206 = sub_26655A8B4();
      v207 = OUTLINED_FUNCTION_7_3();
      v209 = sub_26665140C(v207, v208, v206);
      swift_bridgeObjectRelease_n();

      __swift_destroy_boxed_opaque_existential_1(v323);
      v174 = v314;
      if (v209)
      {
        v210 = v303;
        sub_26666B2A8();
        v211 = v306;
        if (__swift_getEnumTagSinglePayload(v210, 1, v306) != 1)
        {

          v212 = v301;
          v213 = v300;
          (*(v301 + 32))(v300, v210, v211);
          v214 = v322;
          if (qword_28156C150 != -1)
          {
            OUTLINED_FUNCTION_0_11();
            swift_once();
          }

          v215 = sub_26666C168();
          v216 = __swift_project_value_buffer(v215, qword_28156D7E8);
          v217 = sub_26666C148();
          v218 = sub_26666C618();
          if (OUTLINED_FUNCTION_52_0(v218))
          {
            *swift_slowAlloc() = 0;
            OUTLINED_FUNCTION_36_2(&dword_266549000, v219, v220, "[Snippet.Event] Using EKEventModelWrapper for EventModel source");
            v211 = v306;
            OUTLINED_FUNCTION_47_1();
            MEMORY[0x266789690]();
          }

          v326 = v211;
          v327 = sub_2665ADAD0(&qword_28007E2B0, MEMORY[0x277CF7B88], MEMORY[0x277CF7B80]);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v324);
          (*(v212 + 16))(boxed_opaque_existential_1, v213, v211);
          OUTLINED_FUNCTION_50();
          sub_26666B288();

          (*(v212 + 8))(v213, v211);
          OUTLINED_FUNCTION_57();
          v222 = *(v212 + 16);
          v223 = OUTLINED_FUNCTION_42_2();
          v225 = *(v224 - 256);
          v222(v223, v225);
          v222(v187, v225);
LABEL_77:
          __swift_storeEnumTagSinglePayload(v216, 0, 1, v304);
          v291 = v321;
          sub_2665ACC88();
          OUTLINED_FUNCTION_18_5();
          sub_2665B1000();
          __swift_destroy_boxed_opaque_existential_1(v214);
          sub_2665AE46C(v291);
          goto LABEL_27;
        }

LABEL_73:
        sub_26656CAEC(v210, &qword_28007E298, &qword_266673AA8);
        if (qword_28156C150 != -1)
        {
LABEL_82:
          OUTLINED_FUNCTION_0_11();
          swift_once();
        }

        v229 = sub_26666C168();
        __swift_project_value_buffer(v229, qword_28156D7E8);
        v230 = sub_26666C148();
        v231 = sub_26666C618();
        if (OUTLINED_FUNCTION_52_0(v231))
        {
          *swift_slowAlloc() = 0;
          OUTLINED_FUNCTION_36_2(&dword_266549000, v232, v233, "[Snippet.Event] Using event draft data to make event model");
          OUTLINED_FUNCTION_47_1();
          MEMORY[0x266789690]();
        }

        v234 = v319;
        v235 = v292[0];
        (v292[0])(v309, v187, v319);
        v235(v310, v174, v234);
        v236 = sub_266668EB8();
        v237 = OUTLINED_FUNCTION_5_14(&v327);
        __swift_storeEnumTagSinglePayload(v237, v238, v239, v236);
        v240 = OUTLINED_FUNCTION_5_14(&v328);
        __swift_storeEnumTagSinglePayload(v240, v241, v242, v236);
        v243 = OUTLINED_FUNCTION_5_14(&v326);
        OUTLINED_FUNCTION_65(v243, v244, v245, v236);
        sub_26666B318();
        v246 = OUTLINED_FUNCTION_5_14(&v328 + 8);
        OUTLINED_FUNCTION_65(v246, v247, v248, v249);
        v250 = sub_26666B2E8();
        v251 = OUTLINED_FUNCTION_5_14(&v329);
        __swift_storeEnumTagSinglePayload(v251, v252, v253, v250);
        v254 = OUTLINED_FUNCTION_5_14(&v329 + 8);
        __swift_storeEnumTagSinglePayload(v254, v255, v256, v250);
        v257 = OUTLINED_FUNCTION_5_14(v330);
        OUTLINED_FUNCTION_65(v257, v258, v259, v250);
        v326 = sub_26666B2B8();
        v327 = sub_2665ADAD0(&qword_28007E2A8, MEMORY[0x277CF7BB8], MEMORY[0x277CF7BB0]);
        __swift_allocate_boxed_opaque_existential_1(v324);

        v320 = v295;
        sub_26666B2C8();
        v260 = v308;
        sub_26666B258();
        v261 = sub_26666B248();
        __swift_storeEnumTagSinglePayload(v260, 0, 1, v261);
        v262 = OUTLINED_FUNCTION_5_14(&v325);
        OUTLINED_FUNCTION_65(v262, v263, v264, v234);
        sub_26666B2F8();
        v265 = OUTLINED_FUNCTION_5_14(&v330[16]);
        OUTLINED_FUNCTION_65(v265, v266, v267, v268);
        sub_26666B2D8();
        OUTLINED_FUNCTION_7_6();
        OUTLINED_FUNCTION_65(v269, v270, v271, v272);
        v216 = sub_266668C48();
        OUTLINED_FUNCTION_7_6();
        __swift_storeEnumTagSinglePayload(v273, v274, v275, v216);
        OUTLINED_FUNCTION_7_6();
        OUTLINED_FUNCTION_65(v276, v277, v278, v216);
        sub_26666B308();
        OUTLINED_FUNCTION_7_6();
        __swift_storeEnumTagSinglePayload(v279, v280, v281, v282);
        OUTLINED_FUNCTION_50();
        _s19SiriCalendarIntents7SnippetO11ParticipantV2id10Foundation4UUIDVvpfi_0();
        sub_266668D48();
        v318 = v283;
        v284 = v312;
        v285 = v294;
        v294(v216, v312);
        _s19SiriCalendarIntents7SnippetO11ParticipantV2id10Foundation4UUIDVvpfi_0();
        v317 = sub_266668D48();
        v307 = v286;
        v285(v216, v284);
        OUTLINED_FUNCTION_50();
        sub_26666B268();

        v287 = *(v315 + 8);
        v288 = OUTLINED_FUNCTION_42_2();
        v290 = *(v289 - 256);
        v287(v288, v290);
        v287(v316, v290);
        v214 = v322;
        goto LABEL_77;
      }
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v323);
      v174 = v314;
    }

    v210 = v303;
    OUTLINED_FUNCTION_7_6();
    __swift_storeEnumTagSinglePayload(v226, v227, v228, v306);
    goto LABEL_73;
  }

  v160 = *(v315 + 8);
  v161 = OUTLINED_FUNCTION_42_2();
  v163 = *(v162 - 256);
  v160(v161, v163);
  v160(v316, v163);
  v141 = 1;
  v142 = v322;
  v110 = v298;
LABEL_24:
  __swift_destroy_boxed_opaque_existential_1(v142);

  v143 = v321;
  if (v141)
  {
  }

  sub_26656CAEC(v320 + v143, &qword_28007DFF8, &qword_266672D00);
  sub_26656CAEC(v143 + v110, &qword_28007E000, &qword_266672D08);
LABEL_27:
  OUTLINED_FUNCTION_16_3();
}

uint64_t sub_2665AC27C(uint64_t a1)
{
  result = 0;
  switch(a1)
  {
    case 0:
      return 4;
    case 1:
    case 2:
      if (qword_28156C150 != -1)
      {
        OUTLINED_FUNCTION_0_11();
        swift_once();
      }

      v3 = sub_26666C168();
      __swift_project_value_buffer(v3, qword_28156D7E8);
      v4 = sub_26666C148();
      v5 = sub_26666C608();
      if (!os_log_type_enabled(v4, v5))
      {
        goto LABEL_11;
      }

      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v20 = v7;
      *v6 = 136315138;
      type metadata accessor for INRecurrenceFrequency(0);
      v8 = sub_26666C318();
      v10 = sub_2665BFC90(v8, v9, &v20);

      *(v6 + 4) = v10;
      v11 = "[EventFrequency] Unsupported event frequency of %s";
      break;
    case 3:
      return result;
    case 4:
      return 1;
    case 5:
      return 2;
    case 6:
      return 3;
    default:
      if (qword_28156C150 != -1)
      {
        OUTLINED_FUNCTION_0_11();
        swift_once();
      }

      v12 = sub_26666C168();
      __swift_project_value_buffer(v12, qword_28156D7E8);
      v4 = sub_26666C148();
      v5 = sub_26666C608();
      if (!os_log_type_enabled(v4, v5))
      {
        goto LABEL_11;
      }

      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v20 = v7;
      *v6 = 136315138;
      type metadata accessor for INRecurrenceFrequency(0);
      v13 = sub_26666C318();
      v15 = sub_2665BFC90(v13, v14, &v20);

      *(v6 + 4) = v15;
      v11 = "[EventFrequency] Unsupported and unknown event frequency of %s";
      break;
  }

  _os_log_impl(&dword_266549000, v4, v5, v11, v6, 0xCu);
  __swift_destroy_boxed_opaque_existential_1(v7);
  OUTLINED_FUNCTION_47_1();
  MEMORY[0x266789690](v16, v17);
  OUTLINED_FUNCTION_47_1();
  MEMORY[0x266789690](v18, v19);
LABEL_11:

  return 4;
}

uint64_t Snippet.Event.eventIdentifier.setter()
{
  OUTLINED_FUNCTION_48_1();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Snippet.Event.id.setter()
{
  OUTLINED_FUNCTION_48_1();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Snippet.Event.title.setter()
{
  OUTLINED_FUNCTION_48_1();

  *(v1 + 96) = v2;
  *(v1 + 104) = v0;
  return result;
}

uint64_t Snippet.Event.dateInterval.getter()
{
  v2 = OUTLINED_FUNCTION_3();
  v3 = *(type metadata accessor for Snippet.Event(v2) + 32);
  sub_266668998();
  OUTLINED_FUNCTION_18_2();
  v6 = *(v5 + 16);

  return v6(v0, v1 + v3, v4);
}

uint64_t Snippet.Event.dateInterval.setter()
{
  v2 = OUTLINED_FUNCTION_17_7();
  v3 = *(type metadata accessor for Snippet.Event(v2) + 32);
  sub_266668998();
  OUTLINED_FUNCTION_18_2();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

uint64_t Snippet.Event.dateInterval.modify()
{
  v0 = OUTLINED_FUNCTION_17_7();
  type metadata accessor for Snippet.Event(v0);
  return OUTLINED_FUNCTION_8_6();
}

uint64_t Snippet.Event.isAllDay.setter(char a1)
{
  result = type metadata accessor for Snippet.Event(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t Snippet.Event.isAllDay.modify()
{
  v0 = OUTLINED_FUNCTION_17_7();
  type metadata accessor for Snippet.Event(v0);
  return OUTLINED_FUNCTION_8_6();
}

uint64_t Snippet.Event.location.getter()
{
  type metadata accessor for Snippet.Event(0);

  return OUTLINED_FUNCTION_25();
}

uint64_t Snippet.Event.location.setter()
{
  OUTLINED_FUNCTION_48_1();
  v3 = (v1 + *(type metadata accessor for Snippet.Event(0) + 40));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t Snippet.Event.location.modify()
{
  v0 = OUTLINED_FUNCTION_17_7();
  type metadata accessor for Snippet.Event(v0);
  return OUTLINED_FUNCTION_8_6();
}

uint64_t Snippet.Event.punchOutURI.getter()
{
  type metadata accessor for Snippet.Event(0);

  return OUTLINED_FUNCTION_25();
}

uint64_t Snippet.Event.punchOutURI.setter()
{
  OUTLINED_FUNCTION_48_1();
  v3 = (v1 + *(type metadata accessor for Snippet.Event(0) + 44));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t Snippet.Event.punchOutURI.modify()
{
  v0 = OUTLINED_FUNCTION_17_7();
  type metadata accessor for Snippet.Event(v0);
  return OUTLINED_FUNCTION_8_6();
}

uint64_t Snippet.Event.recurrenceRule.getter()
{
  v0 = OUTLINED_FUNCTION_3();
  type metadata accessor for Snippet.Event(v0);
  return sub_2665ACBF0();
}

uint64_t Snippet.Event.recurrenceRule.setter()
{
  v0 = OUTLINED_FUNCTION_17_7();
  type metadata accessor for Snippet.Event(v0);
  OUTLINED_FUNCTION_59();
  return sub_2665ACC88();
}

uint64_t Snippet.Event.recurrenceRule.modify()
{
  v0 = OUTLINED_FUNCTION_17_7();
  type metadata accessor for Snippet.Event(v0);
  return OUTLINED_FUNCTION_8_6();
}

uint64_t Snippet.Event.participants.getter()
{
  type metadata accessor for Snippet.Event(0);
}

uint64_t Snippet.Event.participants.setter()
{
  v2 = OUTLINED_FUNCTION_17_7();
  v3 = *(type metadata accessor for Snippet.Event(v2) + 52);

  *(v1 + v3) = v0;
  return result;
}

uint64_t Snippet.Event.participants.modify()
{
  v0 = OUTLINED_FUNCTION_17_7();
  type metadata accessor for Snippet.Event(v0);
  return OUTLINED_FUNCTION_8_6();
}

uint64_t Snippet.Event.eventModel.getter()
{
  v0 = OUTLINED_FUNCTION_3();
  type metadata accessor for Snippet.Event(v0);
  return sub_2665ACBF0();
}

uint64_t sub_2665ACBF0()
{
  OUTLINED_FUNCTION_55();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_18_2();
  v3 = OUTLINED_FUNCTION_25();
  v4(v3);
  return v0;
}

uint64_t Snippet.Event.eventModel.setter()
{
  v0 = OUTLINED_FUNCTION_17_7();
  type metadata accessor for Snippet.Event(v0);
  OUTLINED_FUNCTION_59();
  return sub_2665ACC88();
}

uint64_t sub_2665ACC88()
{
  OUTLINED_FUNCTION_55();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_18_2();
  v3 = OUTLINED_FUNCTION_25();
  v4(v3);
  return v0;
}

uint64_t Snippet.Event.eventModel.modify()
{
  v0 = OUTLINED_FUNCTION_17_7();
  type metadata accessor for Snippet.Event(v0);
  return OUTLINED_FUNCTION_8_6();
}

uint64_t Snippet.Event.init(eventIdentifier:calendar:title:dateInterval:isAllDay:location:punchOutURI:recurrenceRule:participants:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v16 = sub_266668D68();
  OUTLINED_FUNCTION_3_0();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_1_0();
  v22 = v21 - v20;
  v23 = type metadata accessor for Snippet.Event(0);
  v24 = (a9 + v23[10]);
  v44 = (a9 + v23[11]);
  type metadata accessor for Snippet.Event.RecurrenceRule(0);
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v28);
  v29 = v23[14];
  v45 = sub_26666B278();
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v33);
  _s19SiriCalendarIntents7SnippetO11ParticipantV2id10Foundation4UUIDVvpfi_0();
  v34 = sub_266668D48();
  v36 = v35;
  (*(v18 + 8))(v22, v16);
  *(a9 + 16) = v34;
  *(a9 + 24) = v36;
  *a9 = a1;
  *(a9 + 8) = a2;
  v37 = a3[1];
  *(a9 + 32) = *a3;
  *(a9 + 48) = v37;
  *(a9 + 64) = a3[2];
  *(a9 + 73) = *(a3 + 41);
  *(a9 + 96) = a4;
  *(a9 + 104) = a5;
  v38 = v23[8];
  sub_266668998();
  OUTLINED_FUNCTION_18_2();
  (*(v39 + 32))(a9 + v38, a6);
  *(a9 + v23[9]) = a7;
  *v24 = a8;
  v24[1] = a10;
  *v44 = a11;
  v44[1] = a12;
  sub_2665ACC88();
  *(a9 + v23[13]) = a14;
  sub_26656CAEC(a9 + v29, &qword_28007E000, &qword_266672D08);
  OUTLINED_FUNCTION_7_6();
  return __swift_storeEnumTagSinglePayload(v40, v41, v42, v45);
}

uint64_t sub_2665ACF74@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Snippet.Event.RecurrenceRule(0);
  OUTLINED_FUNCTION_18_2();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_0();
  v8 = v7 - v6;
  v9 = sub_2665AC27C([a1 frequency]);
  if (v9 == 4)
  {

    OUTLINED_FUNCTION_7_6();

    return __swift_storeEnumTagSinglePayload(v10, v11, v12, v4);
  }

  else
  {
    *v8 = v9;
    *(v8 + 8) = [a1 interval];
    v14 = [a1 weeklyRecurrenceDays];

    *(v8 + 16) = v14;
    type metadata accessor for Snippet.Event.RecurrenceRule.RecurrenceEnd(0);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_25_5();
    sub_2665B120C();
    return __swift_storeEnumTagSinglePayload(a2, 0, 1, v4);
  }
}

uint64_t sub_2665AD0B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656449746E657665 && a2 == 0xEF7265696669746ELL;
  if (v4 || (sub_26666CAC8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 25705 && a2 == 0xE200000000000000;
    if (v6 || (sub_26666CAC8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7261646E656C6163 && a2 == 0xE800000000000000;
      if (v7 || (sub_26666CAC8() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
        if (v8 || (sub_26666CAC8() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x65746E4965746164 && a2 == 0xEC0000006C617672;
          if (v9 || (sub_26666CAC8() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x7961446C6C417369 && a2 == 0xE800000000000000;
            if (v10 || (sub_26666CAC8() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000;
              if (v11 || (sub_26666CAC8() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x74754F68636E7570 && a2 == 0xEB00000000495255;
                if (v12 || (sub_26666CAC8() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6E65727275636572 && a2 == 0xEE00656C75526563;
                  if (v13 || (sub_26666CAC8() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x7069636974726170 && a2 == 0xEC00000073746E61;
                    if (v14 || (sub_26666CAC8() & 1) != 0)
                    {

                      return 9;
                    }

                    else if (a1 == 0x646F4D746E657665 && a2 == 0xEA00000000006C65)
                    {

                      return 10;
                    }

                    else
                    {
                      v16 = sub_26666CAC8();

                      if (v16)
                      {
                        return 10;
                      }

                      else
                      {
                        return 11;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_2665AD42C(char a1)
{
  result = 0x656449746E657665;
  switch(a1)
  {
    case 1:
      result = 25705;
      break;
    case 2:
      result = 0x7261646E656C6163;
      break;
    case 3:
      result = 0x656C746974;
      break;
    case 4:
      result = 0x65746E4965746164;
      break;
    case 5:
      result = 0x7961446C6C417369;
      break;
    case 6:
      result = 0x6E6F697461636F6CLL;
      break;
    case 7:
      result = 0x74754F68636E7570;
      break;
    case 8:
      result = 0x6E65727275636572;
      break;
    case 9:
      result = 0x7069636974726170;
      break;
    case 10:
      result = 0x646F4D746E657665;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2665AD584@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2665AD0B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2665AD5AC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2665AD424();
  *a1 = result;
  return result;
}

uint64_t sub_2665AD5D4(uint64_t a1)
{
  v2 = sub_2665ADA28();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2665AD610(uint64_t a1)
{
  v2 = sub_2665ADA28();

  return MEMORY[0x2821FE720](a1, v2);
}

void Snippet.Event.encode(to:)()
{
  OUTLINED_FUNCTION_15_3();
  v2 = v0;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E008, &unk_266672D10);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_53(v4, v4[3]);
  v6 = sub_2665ADA28();
  OUTLINED_FUNCTION_63(&_s5EventV10CodingKeysON, v7, v6);
  LOBYTE(v23[0]) = 0;
  OUTLINED_FUNCTION_5_5();
  sub_26666CA18();
  if (!v1)
  {
    v25 = 1;
    OUTLINED_FUNCTION_5_5();
    sub_26666CA48();
    v8 = v2[3];
    v23[0] = v2[2];
    v23[1] = v8;
    v10 = v2[2];
    v9 = v2[3];
    *v24 = v2[4];
    *&v24[9] = *(v2 + 73);
    v20 = v10;
    v21 = v9;
    *v22 = v2[4];
    *&v22[9] = *(v2 + 73);
    v19[63] = 2;
    sub_2665801B4(v23, v19);
    sub_2665ADA7C();
    OUTLINED_FUNCTION_5_5();
    sub_26666CA78();
    OUTLINED_FUNCTION_35_2();
    OUTLINED_FUNCTION_11_11(3);
    sub_26666CA48();
    type metadata accessor for Snippet.Event(0);
    OUTLINED_FUNCTION_34_3(4);
    sub_266668998();
    OUTLINED_FUNCTION_19_10();
    sub_2665ADAD0(v11, v12, MEMORY[0x277CC88B0]);
    OUTLINED_FUNCTION_12_8();
    sub_26666CA78();
    OUTLINED_FUNCTION_34_3(5);
    OUTLINED_FUNCTION_5_5();
    sub_26666CA58();
    OUTLINED_FUNCTION_11_11(6);
    sub_26666CA18();
    OUTLINED_FUNCTION_11_11(7);
    sub_26666CA18();
    OUTLINED_FUNCTION_34_3(8);
    type metadata accessor for Snippet.Event.RecurrenceRule(0);
    OUTLINED_FUNCTION_28_5();
    sub_2665ADAD0(v13, v14, &protocol conformance descriptor for Snippet.Event.RecurrenceRule);
    OUTLINED_FUNCTION_12_8();
    sub_26666CA38();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D430, &qword_26666F150);
    sub_2665AE3D0(&qword_28007D438, &qword_28007D440, &protocol conformance descriptor for Snippet.Participant, MEMORY[0x277D83948]);
    OUTLINED_FUNCTION_12_8();
    sub_26666CA78();
    OUTLINED_FUNCTION_34_3(10);
    sub_26666B278();
    OUTLINED_FUNCTION_26_5();
    sub_2665ADAD0(v15, v16, MEMORY[0x277CF7B60]);
    OUTLINED_FUNCTION_12_8();
    sub_26666CA38();
  }

  v17 = OUTLINED_FUNCTION_7_3();
  v18(v17);
  OUTLINED_FUNCTION_16_3();
}

unint64_t sub_2665ADA28()
{
  result = qword_28007E010;
  if (!qword_28007E010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E010);
  }

  return result;
}

unint64_t sub_2665ADA7C()
{
  result = qword_28007E018;
  if (!qword_28007E018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E018);
  }

  return result;
}

uint64_t sub_2665ADAD0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void Snippet.Event.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_15_3();
  v93 = v23;
  v26 = v25;
  v88 = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E000, &qword_266672D08);
  OUTLINED_FUNCTION_3_3(v28);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_8_9();
  OUTLINED_FUNCTION_15_8(v30);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DFF8, &qword_266672D00);
  OUTLINED_FUNCTION_3_3(v31);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_45_1();
  sub_266668998();
  OUTLINED_FUNCTION_3_0();
  v91 = v34;
  v92 = v33;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_1_0();
  v37 = v36 - v35;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E038, &qword_266672D20);
  OUTLINED_FUNCTION_3_0();
  v87 = v38;
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v39);
  v41 = v86 - v40;
  v42 = type metadata accessor for Snippet.Event(0);
  OUTLINED_FUNCTION_18_2();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_1_0();
  v46 = (v45 - v44);
  v48 = *(v47 + 48);
  v49 = type metadata accessor for Snippet.Event.RecurrenceRule(0);
  v96 = v48;
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v50, v51, v52, v49);
  v98 = v42;
  v53 = *(v42 + 56);
  v54 = sub_26666B278();
  v94 = v53;
  v97 = v46;
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v55, v56, v57, v54);
  v58 = v26[4];
  v95 = v26;
  v59 = OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_53(v59, v60);
  sub_2665ADA28();
  v89 = v41;
  v61 = v93;
  sub_26666CBD8();
  if (v61)
  {
    OUTLINED_FUNCTION_7_12();
    v64 = v97;
    __swift_destroy_boxed_opaque_existential_1(v95);

    if (v26)
    {
      (*(v91 + 8))(v64 + v98[8], v92);
    }

    sub_26656CAEC(v64 + v96, &qword_28007DFF8, &qword_266672D00);
    if (v58)
    {
    }

    sub_26656CAEC(v64 + v94, &qword_28007E000, &qword_266672D08);
  }

  else
  {
    v86[2] = v49;
    v86[3] = v24;
    v62 = v87;
    LOBYTE(v100) = 0;
    v63 = sub_26666C988();
    v65 = v97;
    *v97 = v63;
    v65[1] = v66;
    v86[1] = v66;
    LOBYTE(v100) = 1;
    v65[2] = sub_26666C9B8();
    v65[3] = v67;
    sub_2665AE37C();
    sub_26666C9E8();
    v68 = v101;
    *(v65 + 2) = v100;
    *(v65 + 3) = v68;
    *(v65 + 4) = *v102;
    *(v65 + 73) = *&v102[9];
    OUTLINED_FUNCTION_30_5(3);
    v65[12] = sub_26666C9B8();
    v65[13] = v69;
    LOBYTE(v99) = 4;
    OUTLINED_FUNCTION_19_10();
    sub_2665ADAD0(v70, v71, MEMORY[0x277CC88D0]);
    v72 = v92;
    sub_26666C9E8();
    v73 = v72;
    v74 = v98;
    (*(v91 + 32))(v65 + v98[8], v37, v73);
    OUTLINED_FUNCTION_30_5(5);
    *(v65 + v74[9]) = sub_26666C9C8() & 1;
    OUTLINED_FUNCTION_30_5(6);
    v75 = sub_26666C988();
    v76 = (v65 + v74[10]);
    *v76 = v75;
    v76[1] = v77;
    v93 = v77;
    LOBYTE(v99) = 7;
    v78 = sub_26666C988();
    v79 = (v97 + v74[11]);
    *v79 = v78;
    v79[1] = v80;
    LOBYTE(v99) = 8;
    OUTLINED_FUNCTION_28_5();
    sub_2665ADAD0(v81, v82, &protocol conformance descriptor for Snippet.Event.RecurrenceRule);
    sub_26666C9A8();
    sub_2665ACC88();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D430, &qword_26666F150);
    sub_2665AE3D0(&qword_28007D468, &qword_28007D470, &protocol conformance descriptor for Snippet.Participant, MEMORY[0x277D83978]);
    sub_26666C9E8();
    *(v97 + v98[13]) = v99;
    LOBYTE(v99) = 10;
    OUTLINED_FUNCTION_26_5();
    sub_2665ADAD0(v83, v84, MEMORY[0x277CF7B68]);
    sub_26666C9A8();
    (*(v62 + 8))(v89, v90);
    v85 = v97;
    sub_2665ACC88();
    OUTLINED_FUNCTION_18_5();
    sub_2665B1000();
    __swift_destroy_boxed_opaque_existential_1(v95);
    sub_2665AE46C(v85);
  }

  OUTLINED_FUNCTION_16_3();
}

unint64_t sub_2665AE37C()
{
  result = qword_28007E040;
  if (!qword_28007E040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E040);
  }

  return result;
}

uint64_t sub_2665AE3D0(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28007D430, &qword_26666F150);
    sub_2665ADAD0(a2, type metadata accessor for Snippet.Participant, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2665AE46C(uint64_t a1)
{
  v2 = type metadata accessor for Snippet.Event(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2665AE4C8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x796C696164 && a2 == 0xE500000000000000;
  if (v4 || (sub_26666CAC8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x796C6B656577 && a2 == 0xE600000000000000;
    if (v6 || (sub_26666CAC8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x796C68746E6F6DLL && a2 == 0xE700000000000000;
      if (v7 || (sub_26666CAC8() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x796C72616579 && a2 == 0xE600000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_26666CAC8();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_2665AE614(char a1)
{
  result = 0x796C696164;
  switch(a1)
  {
    case 1:
      result = 0x796C6B656577;
      break;
    case 2:
      result = 0x796C68746E6F6DLL;
      break;
    case 3:
      result = 0x796C72616579;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2665AE68C@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

uint64_t sub_2665AE6D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2665AE4C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2665AE6F8(uint64_t a1)
{
  v2 = sub_2665AECFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2665AE734(uint64_t a1)
{
  v2 = sub_2665AECFC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2665AE770(uint64_t a1)
{
  v2 = sub_2665AEE4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2665AE7AC(uint64_t a1)
{
  v2 = sub_2665AEE4C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2665AE7E8(uint64_t a1)
{
  v2 = sub_2665AEDA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2665AE824(uint64_t a1)
{
  v2 = sub_2665AEDA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2665AE860(uint64_t a1)
{
  v2 = sub_2665AEDF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2665AE89C(uint64_t a1)
{
  v2 = sub_2665AEDF8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2665AE8D8(uint64_t a1)
{
  v2 = sub_2665AED50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2665AE914(uint64_t a1)
{
  v2 = sub_2665AED50();

  return MEMORY[0x2821FE720](a1, v2);
}

void Snippet.Event.RecurrenceRule.Frequency.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_15_3();
  a23 = v25;
  a24 = v26;
  v77 = v27;
  v29 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E060, &qword_266672D28);
  OUTLINED_FUNCTION_3_0();
  v75 = v31;
  v76 = v30;
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_8_9();
  v74 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E068, &qword_266672D30);
  OUTLINED_FUNCTION_3_0();
  v72 = v35;
  v73 = v34;
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_8_9();
  v71 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E070, &qword_266672D38);
  OUTLINED_FUNCTION_3_0();
  v69 = v39;
  v70 = v38;
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v40);
  v42 = &v67 - v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E078, &qword_266672D40);
  OUTLINED_FUNCTION_3_0();
  v68 = v44;
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_45_1();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E080, &qword_266672D48);
  OUTLINED_FUNCTION_3_0();
  v48 = v47;
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v49);
  v51 = &v67 - v50;
  OUTLINED_FUNCTION_53(v29, v29[3]);
  sub_2665AECFC();
  sub_26666CBE8();
  switch(v77)
  {
    case 1:
      OUTLINED_FUNCTION_12_5();
      v64 = sub_2665AEDF8();
      OUTLINED_FUNCTION_3_14(&_s5EventV14RecurrenceRuleV9FrequencyO16WeeklyCodingKeysON, &a12, v65, v66, v64);
      (*(v69 + 8))(v42, v70);
      break;
    case 2:
      a13 = 2;
      v55 = sub_2665AEDA4();
      v56 = v71;
      OUTLINED_FUNCTION_3_14(&_s5EventV14RecurrenceRuleV9FrequencyO17MonthlyCodingKeysON, &a13, v57, v58, v55);
      v60 = v72;
      v59 = v73;
      goto LABEL_5;
    case 3:
      a14 = 3;
      v61 = sub_2665AED50();
      v56 = v74;
      OUTLINED_FUNCTION_3_14(&_s5EventV14RecurrenceRuleV9FrequencyO16YearlyCodingKeysON, &a14, v62, v63, v61);
      v60 = v75;
      v59 = v76;
LABEL_5:
      (*(v60 + 8))(v56, v59);
      break;
    default:
      a11 = 0;
      v52 = sub_2665AEE4C();
      OUTLINED_FUNCTION_3_14(&_s5EventV14RecurrenceRuleV9FrequencyO15DailyCodingKeysON, &a11, v53, v54, v52);
      (*(v68 + 8))(v24, v43);
      break;
  }

  (*(v48 + 8))(v51, v46);
  OUTLINED_FUNCTION_16_3();
}

unint64_t sub_2665AECFC()
{
  result = qword_28007E088;
  if (!qword_28007E088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E088);
  }

  return result;
}

unint64_t sub_2665AED50()
{
  result = qword_28007E090;
  if (!qword_28007E090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E090);
  }

  return result;
}

unint64_t sub_2665AEDA4()
{
  result = qword_28007E098;
  if (!qword_28007E098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E098);
  }

  return result;
}

unint64_t sub_2665AEDF8()
{
  result = qword_28007E0A0;
  if (!qword_28007E0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E0A0);
  }

  return result;
}

unint64_t sub_2665AEE4C()
{
  result = qword_28007E0A8;
  if (!qword_28007E0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E0A8);
  }

  return result;
}

void Snippet.Event.RecurrenceRule.Frequency.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_15_3();
  a23 = v25;
  a24 = v26;
  v93 = v24;
  v28 = v27;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E0B0, &qword_266672D50);
  OUTLINED_FUNCTION_3_0();
  v89 = v29;
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_8_9();
  v91 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E0B8, &qword_266672D58);
  OUTLINED_FUNCTION_3_0();
  v86 = v33;
  v87 = v32;
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_8_9();
  v88 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E0C0, &qword_266672D60);
  OUTLINED_FUNCTION_3_0();
  v84 = v37;
  v85 = v36;
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v38);
  v40 = &v78 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E0C8, &qword_266672D68);
  OUTLINED_FUNCTION_3_0();
  v83 = v42;
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v43);
  v45 = &v78 - v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E0D0, &unk_266672D70);
  OUTLINED_FUNCTION_3_0();
  v90 = v47;
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v48);
  v50 = &v78 - v49;
  OUTLINED_FUNCTION_53(v28, v28[3]);
  sub_2665AECFC();
  v51 = v93;
  sub_26666CBD8();
  if (v51)
  {
    goto LABEL_8;
  }

  v80 = v41;
  v81 = v45;
  v82 = v40;
  v52 = v91;
  v53 = v92;
  v93 = v28;
  v54 = v50;
  sub_26666C9F8();
  sub_266575DD8();
  if (v56 == v57 >> 1)
  {
LABEL_7:
    v66 = sub_26666C848();
    swift_allocError();
    v68 = v67;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D4C0, &qword_26666F190);
    *v68 = &type metadata for Snippet.Event.RecurrenceRule.Frequency;
    v69 = sub_26666C978();
    OUTLINED_FUNCTION_9_7(v69);
    (*(*(v66 - 8) + 104))(v68, *MEMORY[0x277D84160], v66);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v90 + 8))(v54, v46);
    v28 = v93;
LABEL_8:
    __swift_destroy_boxed_opaque_existential_1(v28);
LABEL_9:
    OUTLINED_FUNCTION_16_3();
    return;
  }

  v79 = 0;
  if (v56 < (v57 >> 1))
  {
    v58 = *(v55 + v56);
    sub_266575DD4();
    v60 = v59;
    v62 = v61;
    swift_unknownObjectRelease();
    if (v60 == v62 >> 1)
    {
      v63 = v58;
      v64 = v89;
      switch(v63)
      {
        case 1:
          OUTLINED_FUNCTION_12_5();
          sub_2665AEDF8();
          v70 = v82;
          OUTLINED_FUNCTION_1_14(&_s5EventV14RecurrenceRuleV9FrequencyO16WeeklyCodingKeysON, &a12);
          swift_unknownObjectRelease();
          v72 = v84;
          v71 = v85;
          goto LABEL_15;
        case 2:
          a13 = 2;
          sub_2665AEDA4();
          v70 = v88;
          OUTLINED_FUNCTION_1_14(&_s5EventV14RecurrenceRuleV9FrequencyO17MonthlyCodingKeysON, &a13);
          swift_unknownObjectRelease();
          v72 = v86;
          v71 = v87;
LABEL_15:
          (*(v72 + 8))(v70, v71);
          goto LABEL_16;
        case 3:
          a14 = 3;
          sub_2665AED50();
          v73 = v79;
          sub_26666C968();
          if (v73)
          {
            v74 = OUTLINED_FUNCTION_49_0();
            v75(v74);
            swift_unknownObjectRelease();
            v28 = v93;
            goto LABEL_8;
          }

          swift_unknownObjectRelease();
          (*(v64 + 8))(v52, v53);
LABEL_16:
          v76 = OUTLINED_FUNCTION_49_0();
          v77(v76);
          __swift_destroy_boxed_opaque_existential_1(v93);
          break;
        default:
          a11 = 0;
          sub_2665AEE4C();
          v65 = v81;
          OUTLINED_FUNCTION_1_14(&_s5EventV14RecurrenceRuleV9FrequencyO15DailyCodingKeysON, &a11);
          swift_unknownObjectRelease();
          (*(v83 + 8))(v65, v80);
          goto LABEL_16;
      }

      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_2665AF488(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v3 || (sub_26666CAC8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x746E756F63 && a2 == 0xE500000000000000;
    if (v6 || (sub_26666CAC8() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x726576656ELL && a2 == 0xE500000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_26666CAC8();

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

uint64_t sub_2665AF598(char a1)
{
  if (!a1)
  {
    return 1702125924;
  }

  if (a1 == 1)
  {
    return 0x746E756F63;
  }

  return 0x726576656ELL;
}

uint64_t sub_2665AF644@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2665AF488(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2665AF66C(uint64_t a1)
{
  v2 = sub_2665B0FAC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2665AF6A8(uint64_t a1)
{
  v2 = sub_2665B0FAC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2665AF6E4(uint64_t a1)
{
  v2 = sub_2665B10AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2665AF720(uint64_t a1)
{
  v2 = sub_2665B10AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2665AF75C(uint64_t a1)
{
  v2 = sub_2665B1100();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2665AF798(uint64_t a1)
{
  v2 = sub_2665B1100();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2665AF7D4(uint64_t a1)
{
  v2 = sub_2665B1058();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2665AF810(uint64_t a1)
{
  v2 = sub_2665B1058();

  return MEMORY[0x2821FE720](a1, v2);
}

void Snippet.Event.RecurrenceRule.RecurrenceEnd.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_15_3();
  a23 = v26;
  a24 = v27;
  v87 = v24;
  v88 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E0D8, &qword_266672D80);
  OUTLINED_FUNCTION_3_0();
  v83 = v29;
  v84 = v28;
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_8_9();
  v80 = v31;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E0E0, &qword_266672D88);
  OUTLINED_FUNCTION_3_0();
  v79 = v32;
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_8_9();
  v77 = v34;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E0E8, &qword_266672D90);
  OUTLINED_FUNCTION_3_0();
  v76 = v35;
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_8_9();
  v85 = v37;
  v78 = sub_266668D38();
  OUTLINED_FUNCTION_3_0();
  v86 = v38;
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_1_0();
  v42 = v41 - v40;
  type metadata accessor for Snippet.Event.RecurrenceRule.RecurrenceEnd(0);
  OUTLINED_FUNCTION_18_2();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_1_0();
  v46 = v45 - v44;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E0F0, &qword_266672D98);
  OUTLINED_FUNCTION_3_0();
  v49 = v48;
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v50);
  v52 = &v75 - v51;
  v53 = OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_53(v53, v54);
  sub_2665B0FAC();
  sub_26666CBE8();
  OUTLINED_FUNCTION_23_6();
  sub_2665B1000();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      a14 = 2;
      v71 = sub_2665B1058();
      v72 = v80;
      OUTLINED_FUNCTION_51_1(&_s5EventV14RecurrenceRuleV13RecurrenceEndO15NeverCodingKeysON, &a14, v73, v74, v71);
      (*(v83 + 8))(v72, v84);
      (*(v49 + 8))(v52, v47);
      goto LABEL_7;
    }

    a13 = 1;
    v56 = sub_2665B10AC();
    v57 = v77;
    OUTLINED_FUNCTION_51_1(&_s5EventV14RecurrenceRuleV13RecurrenceEndO15CountCodingKeysON, &a13, v58, v59, v56);
    v60 = v81;
    sub_26666CA68();
    (*(v79 + 8))(v57, v60);
  }

  else
  {
    v61 = v76;
    v62 = v78;
    (*(v86 + 32))(v42, v46, v78);
    a12 = 0;
    v63 = sub_2665B1100();
    OUTLINED_FUNCTION_51_1(&_s5EventV14RecurrenceRuleV13RecurrenceEndO14DateCodingKeysON, &a12, v64, v65, v63);
    OUTLINED_FUNCTION_20_7();
    sub_2665ADAD0(v66, v67, MEMORY[0x277CC9580]);
    v68 = v82;
    sub_26666CA78();
    (*(v61 + 8))(v85, v68);
    v69 = OUTLINED_FUNCTION_32_4();
    v70(v69, v62);
  }

  (*(v49 + 8))(v52, v47);
LABEL_7:
  OUTLINED_FUNCTION_16_3();
}

void Snippet.Event.RecurrenceRule.RecurrenceEnd.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_15_3();
  v100 = v24;
  v26 = v25;
  v95 = v27;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E118, &qword_266672DA0);
  OUTLINED_FUNCTION_3_0();
  v90 = v28;
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_8_9();
  v94 = v30;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E120, &qword_266672DA8);
  OUTLINED_FUNCTION_3_0();
  v96 = v31;
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_8_9();
  v93 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E128, &qword_266672DB0);
  OUTLINED_FUNCTION_3_0();
  v88 = v35;
  v89 = v34;
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_8_9();
  v92 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E130, &qword_266672DB8);
  OUTLINED_FUNCTION_3_0();
  v98 = v39;
  v99 = v38;
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v40);
  v42 = &v83 - v41;
  v43 = type metadata accessor for Snippet.Event.RecurrenceRule.RecurrenceEnd(0);
  OUTLINED_FUNCTION_18_2();
  v45 = MEMORY[0x28223BE20](v44);
  v47 = (&v83 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
  v48 = MEMORY[0x28223BE20](v45);
  v50 = &v83 - v49;
  MEMORY[0x28223BE20](v48);
  v52 = &v83 - v51;
  OUTLINED_FUNCTION_53(v26, v26[3]);
  sub_2665B0FAC();
  v53 = v100;
  sub_26666CBD8();
  if (v53)
  {
    goto LABEL_10;
  }

  v84 = v47;
  v85 = v50;
  v86 = v52;
  v87 = v43;
  v100 = v26;
  v54 = v99;
  sub_26666C9F8();
  sub_266575DD8();
  if (v56 == v57 >> 1)
  {
LABEL_9:
    v64 = sub_26666C848();
    swift_allocError();
    v66 = v65;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D4C0, &qword_26666F190);
    *v66 = v87;
    v67 = sub_26666C978();
    OUTLINED_FUNCTION_9_7(v67);
    (*(*(v64 - 8) + 104))(v66, *MEMORY[0x277D84160], v64);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v98 + 8))(v42, v54);
    v26 = v100;
LABEL_10:
    v68 = v26;
LABEL_11:
    __swift_destroy_boxed_opaque_existential_1(v68);
    OUTLINED_FUNCTION_16_3();
    return;
  }

  if (v56 < (v57 >> 1))
  {
    v58 = v42;
    v59 = *(v55 + v56);
    sub_266575DD4();
    v61 = v60;
    v63 = v62;
    swift_unknownObjectRelease();
    if (v61 != v63 >> 1)
    {
      v42 = v58;
      goto LABEL_9;
    }

    if (v59)
    {
      if (v59 != 1)
      {
        sub_2665B1058();
        sub_26666C968();
        v69 = v98;
        swift_unknownObjectRelease();
        v72 = OUTLINED_FUNCTION_43_0();
        v73(v72);
        (*(v69 + 8))(v58, v54);
        swift_storeEnumTagMultiPayload();
LABEL_15:
        OUTLINED_FUNCTION_2_17();
        OUTLINED_FUNCTION_25();
        sub_2665B120C();
        v68 = v100;
        goto LABEL_11;
      }

      sub_2665B10AC();
      sub_26666C968();
      v74 = sub_26666C9D8();
      swift_unknownObjectRelease();
      v75 = OUTLINED_FUNCTION_7_3();
      v76(v75);
      v77 = OUTLINED_FUNCTION_44_1();
      v78(v77);
      *v84 = v74;
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_2_17();
    }

    else
    {
      sub_2665B1100();
      sub_26666C968();
      sub_266668D38();
      OUTLINED_FUNCTION_20_7();
      sub_2665ADAD0(v70, v71, MEMORY[0x277CC95A0]);
      sub_26666C9E8();
      swift_unknownObjectRelease();
      v79 = OUTLINED_FUNCTION_43_0();
      v80(v79);
      v81 = OUTLINED_FUNCTION_32_4();
      v82(v81, v54);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_2_17();
    }

    sub_2665B120C();
    goto LABEL_15;
  }

  __break(1u);
}

uint64_t Snippet.Event.RecurrenceRule.end.getter()
{
  v0 = OUTLINED_FUNCTION_3();
  type metadata accessor for Snippet.Event.RecurrenceRule(v0);
  OUTLINED_FUNCTION_23_6();
  return sub_2665B1000();
}

uint64_t Snippet.Event.RecurrenceRule.end.setter()
{
  v0 = OUTLINED_FUNCTION_17_7();
  type metadata accessor for Snippet.Event.RecurrenceRule(v0);
  v1 = OUTLINED_FUNCTION_59();

  return sub_2665B1154(v1, v2);
}

uint64_t Snippet.Event.RecurrenceRule.end.modify()
{
  v0 = OUTLINED_FUNCTION_17_7();
  type metadata accessor for Snippet.Event.RecurrenceRule(v0);
  return OUTLINED_FUNCTION_8_6();
}

uint64_t Snippet.Event.RecurrenceRule.init(frequency:interval:dayOfWeek:end:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  type metadata accessor for Snippet.Event.RecurrenceRule(0);
  OUTLINED_FUNCTION_2_17();
  OUTLINED_FUNCTION_59();
  return sub_2665B120C();
}

uint64_t sub_2665B05C8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x636E657571657266 && a2 == 0xE900000000000079;
  if (v4 || (sub_26666CAC8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C61767265746E69 && a2 == 0xE800000000000000;
    if (v6 || (sub_26666CAC8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656557664F796164 && a2 == 0xE90000000000006BLL;
      if (v7 || (sub_26666CAC8() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 6581861 && a2 == 0xE300000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_26666CAC8();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_2665B072C(char a1)
{
  result = 0x636E657571657266;
  switch(a1)
  {
    case 1:
      result = 0x6C61767265746E69;
      break;
    case 2:
      result = 0x656557664F796164;
      break;
    case 3:
      result = 6581861;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2665B07BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2665B05C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2665B07E4(uint64_t a1)
{
  v2 = sub_2665B11B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2665B0820(uint64_t a1)
{
  v2 = sub_2665B11B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Snippet.Event.RecurrenceRule.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E138, &qword_266672DC0);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_53(a1, a1[3]);
  v4 = sub_2665B11B8();
  OUTLINED_FUNCTION_63(&_s5EventV14RecurrenceRuleV10CodingKeysON, v5, v4);
  sub_266574070();
  sub_26666CA78();
  if (!v1)
  {
    OUTLINED_FUNCTION_12_5();
    sub_26666CA68();
    type metadata accessor for INDayOfWeekOptions(0);
    OUTLINED_FUNCTION_24_7();
    sub_2665ADAD0(v6, v7, &protocol conformance descriptor for INDayOfWeekOptions);
    OUTLINED_FUNCTION_12_8();
    sub_26666CA78();
    type metadata accessor for Snippet.Event.RecurrenceRule(0);
    type metadata accessor for Snippet.Event.RecurrenceRule.RecurrenceEnd(0);
    OUTLINED_FUNCTION_22_2();
    sub_2665ADAD0(v8, v9, &protocol conformance descriptor for Snippet.Event.RecurrenceRule.RecurrenceEnd);
    OUTLINED_FUNCTION_12_8();
    sub_26666CA78();
  }

  v10 = OUTLINED_FUNCTION_7_3();
  return v11(v10);
}

void Snippet.Event.RecurrenceRule.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, char a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_15_3();
  v29 = v28;
  type metadata accessor for Snippet.Event.RecurrenceRule.RecurrenceEnd(0);
  OUTLINED_FUNCTION_18_2();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_1_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E158, &qword_266672DC8);
  OUTLINED_FUNCTION_3_0();
  v42 = v32;
  v43 = v31;
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_45_1();
  type metadata accessor for Snippet.Event.RecurrenceRule(0);
  OUTLINED_FUNCTION_18_2();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_1_0();
  v37 = v36 - v35;
  OUTLINED_FUNCTION_53(v29, v29[3]);
  sub_2665B11B8();
  sub_26666CBD8();
  if (!v26)
  {
    sub_2665746C4();
    sub_26666C9E8();
    *v37 = a16;
    OUTLINED_FUNCTION_12_5();
    *(v37 + 8) = sub_26666C9D8();
    type metadata accessor for INDayOfWeekOptions(0);
    OUTLINED_FUNCTION_24_7();
    sub_2665ADAD0(v38, v39, &protocol conformance descriptor for INDayOfWeekOptions);
    sub_26666C9E8();
    *(v37 + 16) = v44;
    OUTLINED_FUNCTION_22_2();
    sub_2665ADAD0(v40, v41, &protocol conformance descriptor for Snippet.Event.RecurrenceRule.RecurrenceEnd);
    sub_26666C9E8();
    (*(v42 + 8))(v27, v43);
    OUTLINED_FUNCTION_2_17();
    sub_2665B120C();
    OUTLINED_FUNCTION_25_5();
    sub_2665B120C();
  }

  __swift_destroy_boxed_opaque_existential_1(v29);
  OUTLINED_FUNCTION_16_3();
}

uint64_t sub_2665B0ECC(void *a1)
{
  if (![a1 participants])
  {
    return 0;
  }

  OUTLINED_FUNCTION_17_7();
  sub_2665B24D8();
  v2 = sub_26666C498();

  return v2;
}

uint64_t sub_2665B0F28(void *a1)
{
  v1 = [a1 calendarPunchoutURI];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_26666C308();

  return v3;
}

unint64_t sub_2665B0FAC()
{
  result = qword_28007E0F8;
  if (!qword_28007E0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E0F8);
  }

  return result;
}

uint64_t sub_2665B1000()
{
  OUTLINED_FUNCTION_55();
  v1(0);
  OUTLINED_FUNCTION_18_2();
  v2 = OUTLINED_FUNCTION_25();
  v3(v2);
  return v0;
}

unint64_t sub_2665B1058()
{
  result = qword_28007E100;
  if (!qword_28007E100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E100);
  }

  return result;
}

unint64_t sub_2665B10AC()
{
  result = qword_28007E108;
  if (!qword_28007E108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E108);
  }

  return result;
}

unint64_t sub_2665B1100()
{
  result = qword_28007E110;
  if (!qword_28007E110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E110);
  }

  return result;
}

uint64_t sub_2665B1154(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Snippet.Event.RecurrenceRule.RecurrenceEnd(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_2665B11B8()
{
  result = qword_28007E140;
  if (!qword_28007E140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E140);
  }

  return result;
}

uint64_t sub_2665B120C()
{
  OUTLINED_FUNCTION_55();
  v1(0);
  OUTLINED_FUNCTION_18_2();
  v2 = OUTLINED_FUNCTION_25();
  v3(v2);
  return v0;
}

unint64_t sub_2665B12F8()
{
  result = qword_28007E180;
  if (!qword_28007E180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E180);
  }

  return result;
}

uint64_t sub_2665B1374(uint64_t a1)
{
  sub_2665B1510();
  v2 = v1;
  if (v3 <= 0x3F)
  {
    v4 = sub_266668998();
    if (v5 > 0x3F)
    {
      return v4;
    }

    else
    {
      sub_2665B1560(319, qword_28156C5A0, type metadata accessor for Snippet.Event.RecurrenceRule, MEMORY[0x277D83D88]);
      v2 = v6;
      if (v7 <= 0x3F)
      {
        sub_2665B1560(319, &qword_28156C128, type metadata accessor for Snippet.Participant, MEMORY[0x277D83940]);
        v2 = v8;
        if (v9 <= 0x3F)
        {
          sub_2665B1560(319, &qword_28156D130, MEMORY[0x277CF7B58], MEMORY[0x277D83D88]);
          v2 = v10;
          if (v11 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v2;
}

void sub_2665B1510()
{
  if (!qword_28156C138)
  {
    v0 = sub_26666C6B8();
    if (!v1)
    {
      atomic_store(v0, &qword_28156C138);
    }
  }
}

void sub_2665B1560(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2665B15EC(uint64_t a1)
{
  type metadata accessor for INDayOfWeekOptions(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Snippet.Event.RecurrenceRule.RecurrenceEnd(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2665B1698(uint64_t a1)
{
  result = sub_266668D38();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *_s5EventV14RecurrenceRuleV13RecurrenceEndO10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_2665B17FC(_BYTE *result, int a2, int a3)
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

_BYTE *sub_2665B18B8(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t _s5EventV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF6)
  {
    if (a2 + 10 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 10) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 11;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v5 = v6 - 11;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s5EventV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2665B1B3C()
{
  result = qword_28007E188;
  if (!qword_28007E188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E188);
  }

  return result;
}

unint64_t sub_2665B1B94()
{
  result = qword_28007E190;
  if (!qword_28007E190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E190);
  }

  return result;
}

unint64_t sub_2665B1BEC()
{
  result = qword_28007E198;
  if (!qword_28007E198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E198);
  }

  return result;
}

unint64_t sub_2665B1C44()
{
  result = qword_28007E1A0;
  if (!qword_28007E1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E1A0);
  }

  return result;
}

unint64_t sub_2665B1C9C()
{
  result = qword_28007E1A8;
  if (!qword_28007E1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E1A8);
  }

  return result;
}

unint64_t sub_2665B1CF4()
{
  result = qword_28007E1B0;
  if (!qword_28007E1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E1B0);
  }

  return result;
}

unint64_t sub_2665B1D4C()
{
  result = qword_28007E1B8;
  if (!qword_28007E1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E1B8);
  }

  return result;
}

unint64_t sub_2665B1DA4()
{
  result = qword_28007E1C0;
  if (!qword_28007E1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E1C0);
  }

  return result;
}

unint64_t sub_2665B1DFC()
{
  result = qword_28007E1C8;
  if (!qword_28007E1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E1C8);
  }

  return result;
}

unint64_t sub_2665B1E54()
{
  result = qword_28007E1D0;
  if (!qword_28007E1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E1D0);
  }

  return result;
}

unint64_t sub_2665B1EAC()
{
  result = qword_28007E1D8;
  if (!qword_28007E1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E1D8);
  }

  return result;
}

unint64_t sub_2665B1F04()
{
  result = qword_28007E1E0;
  if (!qword_28007E1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E1E0);
  }

  return result;
}

unint64_t sub_2665B1F5C()
{
  result = qword_28007E1E8;
  if (!qword_28007E1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E1E8);
  }

  return result;
}

unint64_t sub_2665B1FB4()
{
  result = qword_28007E1F0;
  if (!qword_28007E1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E1F0);
  }

  return result;
}

unint64_t sub_2665B200C()
{
  result = qword_28007E1F8;
  if (!qword_28007E1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E1F8);
  }

  return result;
}

unint64_t sub_2665B2064()
{
  result = qword_28007E200;
  if (!qword_28007E200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E200);
  }

  return result;
}

unint64_t sub_2665B20BC()
{
  result = qword_28007E208;
  if (!qword_28007E208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E208);
  }

  return result;
}

unint64_t sub_2665B2114()
{
  result = qword_28007E210;
  if (!qword_28007E210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E210);
  }

  return result;
}

unint64_t sub_2665B216C()
{
  result = qword_28007E218;
  if (!qword_28007E218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E218);
  }

  return result;
}

unint64_t sub_2665B21C4()
{
  result = qword_28007E220;
  if (!qword_28007E220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E220);
  }

  return result;
}

unint64_t sub_2665B221C()
{
  result = qword_28007E228;
  if (!qword_28007E228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E228);
  }

  return result;
}

unint64_t sub_2665B2274()
{
  result = qword_28007E230;
  if (!qword_28007E230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E230);
  }

  return result;
}

unint64_t sub_2665B22CC()
{
  result = qword_28007E238;
  if (!qword_28007E238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E238);
  }

  return result;
}

unint64_t sub_2665B2324()
{
  result = qword_28007E240;
  if (!qword_28007E240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E240);
  }

  return result;
}

unint64_t sub_2665B237C()
{
  result = qword_28007E248;
  if (!qword_28007E248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E248);
  }

  return result;
}

unint64_t sub_2665B23D4()
{
  result = qword_28007E250;
  if (!qword_28007E250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E250);
  }

  return result;
}

unint64_t sub_2665B242C()
{
  result = qword_28007E258;
  if (!qword_28007E258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E258);
  }

  return result;
}

unint64_t sub_2665B2484()
{
  result = qword_28007E260;
  if (!qword_28007E260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E260);
  }

  return result;
}

unint64_t sub_2665B24D8()
{
  result = qword_28007D748;
  if (!qword_28007D748)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28007D748);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_35_2()
{
  v2 = *(v0 - 192);
  *(v0 - 272) = *(v0 - 208);
  v3 = *(v0 - 176);
  *(v0 - 256) = v2;
  *(v0 - 240) = v3;
  *(v0 - 231) = *(v0 - 167);

  return sub_2665801EC(v0 - 272);
}

void OUTLINED_FUNCTION_36_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_51_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_26666CA08();
}

BOOL OUTLINED_FUNCTION_52_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_63(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_26666CBE8();
}

id sub_2665B2878()
{
  v1 = [v0 dateTimeRange];

  return v1;
}

id sub_2665B28E4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_2665B28B0(a1);
  *a2 = result;
  return result;
}

id sub_2665B290C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2665B28D0();
  *a1 = result;
  return result;
}

id sub_2665B2940()
{
  v1 = [v0 setDateTimeRange];

  return v1;
}

id sub_2665B29E8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2665B2978(a1);
  *a2 = result;
  return result;
}

id sub_2665B2A10@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2665B29D4();
  *a1 = result;
  return result;
}

uint64_t sub_2665B2A38(void *a1, uint64_t a2)
{
  v4 = *__swift_project_boxed_opaque_existential_1(a1, a1[3]);

  return sub_2665B2C34(v4, a2, v2);
}

void sub_2665B2A7C(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  if ((a2 & 1) != 0 && (v7 = (*(a4 + 16))(a3, a4)) != 0)
  {
    v8 = v7;
    sub_266552C44(0, &qword_28007D168, 0x277CD3B68);
    sub_2665D23CC();
    v11 = v9;
    (*(a4 + 24))();
  }

  else
  {
    v10 = *(a4 + 24);

    v10(a1, a3, a4);
  }
}

id sub_2665B2BAC(void *a1, void *a2)
{
  if (a1)
  {
    v3 = a2;
    v4 = a1;
    v5 = sub_2665828A0(0, 0, a1, 0, 0, 3, 0);
  }

  else
  {
    v5 = a2;
  }

  v6 = sub_2665826C4();

  return v6;
}

uint64_t sub_2665B2C34(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for EventProvider();
  v16[3] = v5;
  v16[4] = &off_287806290;
  v16[0] = a1;

  v6 = sub_26659A284(a3);
  v8 = v7;
  v9 = *__swift_project_boxed_opaque_existential_1(v16, v5);
  v15[3] = v5;
  v15[4] = &off_287806290;
  v15[0] = v9;
  sub_26655358C(v15, v14);

  __swift_destroy_boxed_opaque_existential_1(v15);
  if (v8)
  {
    __swift_project_boxed_opaque_existential_1(v14, v14[3]);

    v10 = sub_26655A8B4();
    v11 = sub_26665140C(v6, v8, v10);
    swift_bridgeObjectRelease_n();

    __swift_destroy_boxed_opaque_existential_1(v14);
    if (v11)
    {
      sub_266552C44(0, &qword_28156C110, 0x277CD3AD8);
      sub_2665EB4F8();
      v8 = v12;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v14);
  }

  __swift_destroy_boxed_opaque_existential_1(v16);
  return v8;
}

uint64_t sub_2665B2D80(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 224))
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

uint64_t sub_2665B2DC0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 216) = 0;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
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
      *(result + 224) = 1;
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

    *(result + 224) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2665B2E48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v47[1] = a2;
  v5 = sub_266669E58();
  OUTLINED_FUNCTION_3_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_266669AE8();
  OUTLINED_FUNCTION_3_0();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  v16 = v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D3A8, &qword_26666EDB0);
  sub_266669CD8();
  v17 = sub_266669AD8();
  v19 = v18;
  (*(v13 + 8))(v16, v11);
  v20 = sub_26664B618(v17, v19);
  if (v20 != 7)
  {
    v31 = sub_26664B664(v20);
    if (v31 == 0xD000000000000014 && 0x800000026667CDD0 == v32)
    {
    }

    else
    {
      v35 = OUTLINED_FUNCTION_43_1(v31, v32, v33, 0x800000026667CDD0);

      if ((v35 & 1) == 0)
      {
        goto LABEL_2;
      }
    }

    OUTLINED_FUNCTION_32_5();
    return sub_2665D17D4(a1, v3);
  }

LABEL_2:
  __swift_project_boxed_opaque_existential_1(v3 + 5, v3[8]);
  sub_266669DF8();
  sub_26659AC88(v10, v55);
  (*(v7 + 8))(v10, v5);
  sub_26659236C(v55, v54, &unk_28007D200, &qword_26666FD20);
  if (v54[40] != 255)
  {
    sub_26659236C(v54, &v50, &unk_28007D200, &qword_26666FD20);
    if (v53 == 3)
    {
      if (qword_28156C150 != -1)
      {
        OUTLINED_FUNCTION_1_1(&qword_28156C150);
      }

      v37 = sub_26666C168();
      __swift_project_value_buffer(v37, qword_28156D7E8);
      v38 = sub_26666C148();
      v39 = sub_26666C618();
      if (OUTLINED_FUNCTION_7_1(v39))
      {
        *OUTLINED_FUNCTION_20() = 0;
        OUTLINED_FUNCTION_29_2(&dword_266549000, v40, v41, "[UpdateEvent.NeedsValue] actionForInput returning .handle()");
        OUTLINED_FUNCTION_4_1();
      }

      OUTLINED_FUNCTION_32_5();
      sub_2666697D8();
      sub_266557D74(v55, &unk_28007D200, &qword_26666FD20);
      sub_266553988(&v50);
      return sub_266557D74(v54, &unk_28007D200, &qword_26666FD20);
    }

    if (v53 == 5)
    {
      v21 = vorrq_s8(v51, v52);
      if (!(*&vorr_s8(*v21.i8, *&vextq_s8(v21, v21, 8uLL)) | v50))
      {
        if (qword_28156C150 != -1)
        {
          OUTLINED_FUNCTION_1_1(&qword_28156C150);
        }

        v42 = sub_26666C168();
        __swift_project_value_buffer(v42, qword_28156D7E8);
        v43 = sub_26666C148();
        v44 = sub_26666C618();
        if (OUTLINED_FUNCTION_7_1(v44))
        {
          *OUTLINED_FUNCTION_20() = 0;
          OUTLINED_FUNCTION_29_2(&dword_266549000, v45, v46, "[UpdateEvent.NeedsValue] actionForInput returning .cancel()");
          OUTLINED_FUNCTION_4_1();
        }

        OUTLINED_FUNCTION_32_5();
        sub_2666697C8();
        goto LABEL_21;
      }
    }

    sub_266553988(&v50);
  }

  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_28156C150);
  }

  v22 = sub_26666C168();
  __swift_project_value_buffer(v22, qword_28156D7E8);
  sub_26659236C(v55, &v50, &unk_28007D200, &qword_26666FD20);
  v23 = sub_26666C148();
  v24 = sub_26666C618();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v49 = v26;
    *v25 = 136315138;
    sub_26659236C(&v50, v48, &unk_28007D200, &qword_26666FD20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007D200, &qword_26666FD20);
    v27 = sub_26666C318();
    v29 = v28;
    sub_266557D74(&v50, &unk_28007D200, &qword_26666FD20);
    v30 = sub_2665BFC90(v27, v29, &v49);

    *(v25 + 4) = v30;
    _os_log_impl(&dword_266549000, v23, v24, "[UpdateEvent.NeedsValue] actionForInput returning .ignore() for unsupported task: %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_4_1();
  }

  else
  {

    sub_266557D74(&v50, &unk_28007D200, &qword_26666FD20);
  }

  OUTLINED_FUNCTION_32_5();
  sub_2666697E8();
LABEL_21:
  sub_266557D74(v55, &unk_28007D200, &qword_26666FD20);
  return sub_266557D74(v54, &unk_28007D200, &qword_26666FD20);
}

uint64_t sub_2665B33D8()
{
  OUTLINED_FUNCTION_14();
  v1[33] = v2;
  v1[34] = v0;
  v1[31] = v3;
  v1[32] = v4;
  v5 = sub_266669E18();
  v1[35] = v5;
  OUTLINED_FUNCTION_3_1(v5);
  v1[36] = v6;
  v1[37] = OUTLINED_FUNCTION_19();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D140, &qword_26666F140);
  OUTLINED_FUNCTION_3_3(v7);
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v8 = sub_266669E58();
  v1[40] = v8;
  OUTLINED_FUNCTION_3_1(v8);
  v1[41] = v9;
  v1[42] = OUTLINED_FUNCTION_19();
  v10 = sub_266669AE8();
  v1[43] = v10;
  OUTLINED_FUNCTION_3_1(v10);
  v1[44] = v11;
  v1[45] = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_4_14();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_2665B355C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, ValueMetadata *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_38_0();
  a23 = v25;
  a24 = v26;
  OUTLINED_FUNCTION_16_7();
  a22 = v24;
  v28 = *(v24 + 352);
  v27 = *(v24 + 360);
  v29 = *(v24 + 344);
  *(v24 + 368) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D3A8, &qword_26666EDB0);
  sub_266669CD8();
  v30 = sub_266669AD8();
  v32 = v31;
  (*(v28 + 8))(v27, v29);
  v33 = sub_26664B618(v30, v32);
  if (v33 != 7)
  {
    v38 = sub_26664B664(v33);
    if (v38 == 0xD000000000000014 && 0x800000026667CDD0 == v39)
    {
    }

    else
    {
      v42 = OUTLINED_FUNCTION_43_1(v38, v39, v40, 0x800000026667CDD0);

      if ((v42 & 1) == 0)
      {
        goto LABEL_2;
      }
    }

    v44 = *(v24 + 328);
    v43 = *(v24 + 336);
    v45 = *(v24 + 320);
    __swift_project_boxed_opaque_existential_1(*(v24 + 272), *(*(v24 + 272) + 24));
    sub_266669DF8();
    v46 = sub_2665CF4BC(v43);
    (*(v44 + 8))(v43, v45);
    v47 = sub_266669CB8();
    *(v24 + 240) = MEMORY[0x277D839B0];
    *(v24 + 216) = v46 == 2;
    sub_266636D30(6, (v24 + 216), 0, 1, 0);

    __swift_destroy_boxed_opaque_existential_1((v24 + 216));
    if (v46 == 3)
    {
      v88 = 0;
      a9 = 0;
      a10 = 0;
      a11 = 0;
    }

    else
    {
      LOBYTE(a9) = v46;
      v88 = &type metadata for EventRecurrencePromptResult;
    }

    a12 = v88;
    sub_266552C44(0, &qword_28007D210, 0x277CD42A8);
    sub_266669A18();
    v93 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_28007E2C0, &unk_266673CB0);
    OUTLINED_FUNCTION_9_11(v93);
    OUTLINED_FUNCTION_42_3();

    OUTLINED_FUNCTION_24_1();
LABEL_24:
    OUTLINED_FUNCTION_14_2();

    return v80(v79, v80, v81, v82, v83, v84, v85, v86, a9, a10, a11, a12, a13, a14, a15, a16);
  }

LABEL_2:
  v35 = *(v24 + 328);
  v34 = *(v24 + 336);
  v36 = *(v24 + 320);
  __swift_project_boxed_opaque_existential_1((*(v24 + 272) + 40), *(*(v24 + 272) + 64));
  sub_266669DF8();
  sub_26659AC88(v34, v24 + 16);
  (*(v35 + 8))(v34, v36);
  v37 = *(v24 + 56);
  if (v37 != 3)
  {
    if (v37 == 255)
    {
      sub_266557D74(v24 + 16, &unk_28007D200, &qword_26666FD20);
    }

    else
    {
      sub_266553988(v24 + 16);
    }

    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1(&qword_28156C150);
    }

    v59 = *(v24 + 288);
    v58 = *(v24 + 296);
    v60 = *(v24 + 280);
    v61 = *(v24 + 256);
    v62 = sub_26666C168();
    __swift_project_value_buffer(v62, qword_28156D7E8);
    (*(v59 + 16))(v58, v61, v60);
    v63 = sub_26666C148();
    v64 = sub_26666C608();
    if (os_log_type_enabled(v63, v64))
    {
      v66 = *(v24 + 288);
      v65 = *(v24 + 296);
      v67 = *(v24 + 280);
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      a9 = v69;
      *v68 = 136315138;
      sub_266669DF8();
      v70 = sub_26666C318();
      v72 = v71;
      (*(v66 + 8))(v65, v67);
      v73 = sub_2665BFC90(v70, v72, &a9);

      *(v68 + 4) = v73;
      _os_log_impl(&dword_266549000, v63, v64, "[UpdateEvent.NeedsValue.parseValueResponse] Did not find an .updateEvent task from parse: %s", v68, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v69);
      OUTLINED_FUNCTION_4_1();
      OUTLINED_FUNCTION_4_1();
    }

    else
    {
      v75 = *(v24 + 288);
      v74 = *(v24 + 296);
      v76 = *(v24 + 280);

      (*(v75 + 8))(v74, v76);
    }

    sub_26656CBFC();
    v77 = swift_allocError();
    OUTLINED_FUNCTION_35_3(v77, v78);
    swift_willThrow();

    OUTLINED_FUNCTION_24_1();
    goto LABEL_24;
  }

  v48 = *(v24 + 272);
  sub_2665536F8((v24 + 16), v24 + 64);
  v49 = sub_266669CB8();
  v50 = sub_26658C0E0(v49);
  v52 = v51;
  v53 = *__swift_project_boxed_opaque_existential_1((v48 + 96), *(v48 + 120));
  *(v24 + 128) = type metadata accessor for EventProvider();
  *(v24 + 136) = &off_287806290;
  *(v24 + 104) = v53;
  sub_26655358C(v24 + 104, v24 + 144);

  __swift_destroy_boxed_opaque_existential_1((v24 + 104));
  if (v52)
  {
    __swift_project_boxed_opaque_existential_1((v24 + 144), *(v24 + 168));

    v54 = sub_26655A8B4();
    v55 = sub_26665140C(v50, v52, v54);

    swift_bridgeObjectRelease_n();
    __swift_destroy_boxed_opaque_existential_1((v24 + 144));
    if (v55)
    {
      v56 = [v55 startDate];

      if (v56)
      {
        sub_266668CE8();

        v57 = 0;
      }

      else
      {
        v57 = 1;
      }

      v95 = *(v24 + 304);
      v94 = *(v24 + 312);
      v96 = sub_266668D38();
      __swift_storeEnumTagSinglePayload(v95, v57, 1, v96);
      sub_266557CE4(v95, v94);
      goto LABEL_35;
    }
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1((v24 + 144));
  }

  sub_266668D38();
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v89, v90, v91, v92);
LABEL_35:
  __swift_project_boxed_opaque_existential_1((v24 + 64), *(v24 + 88));
  v97 = sub_266669CB8();
  sub_26658C0E0(v97);
  *(v24 + 376) = v98;
  v99 = swift_task_alloc();
  *(v24 + 384) = v99;
  *v99 = v24;
  v99[1] = sub_2665B3C2C;
  OUTLINED_FUNCTION_14_2();

  return sub_2665CA458(v100, v101, v102, v103, v104, v105);
}

uint64_t sub_2665B3C2C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_11_2();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v4 = v3;
  *(v7 + 392) = v5;
  *(v7 + 400) = v6;

  OUTLINED_FUNCTION_4_14();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_2665B3D34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_38_0();
  OUTLINED_FUNCTION_16_7();
  v25 = v24[49];
  v26 = v24[50];
  v43 = v24[39];
  v27 = v24[34];
  v28 = sub_266669CB8();
  sub_26663660C(v25, 1);

  v29 = *(v27 + 88);
  ObjectType = swift_getObjectType();
  v31 = (*(v29 + 24))(v24 + 23, ObjectType, v29);
  sub_2665B3EEC(v26);
  v31(v24 + 23, 0);
  v32 = sub_266669CC8();
  [v32 resolvedValue];

  sub_26666C718();
  swift_unknownObjectRelease();
  sub_266552C44(0, &qword_28007D210, 0x277CD42A8);
  sub_266669A18();

  sub_266557D74(v43, &qword_28007D140, &qword_26666F140);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_28007E2C0, &unk_266673CB0);
  OUTLINED_FUNCTION_40_1(v33);
  __swift_destroy_boxed_opaque_existential_1(v24 + 8);
  OUTLINED_FUNCTION_42_3();

  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_14_2();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, v43, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_2665B3EEC(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      result = sub_26660B444(&v10, *(*(v1 + 48) + (v9 | (v8 << 6))));
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_2665B3FC8()
{
  OUTLINED_FUNCTION_14();
  v1[37] = v2;
  v1[38] = v0;
  v1[36] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D330, &unk_26666EEA0);
  OUTLINED_FUNCTION_3_3(v4);
  v1[39] = OUTLINED_FUNCTION_19();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE20, &unk_26666EAE0);
  OUTLINED_FUNCTION_3_3(v5);
  v1[40] = OUTLINED_FUNCTION_19();
  v6 = sub_266669708();
  v1[41] = v6;
  OUTLINED_FUNCTION_3_1(v6);
  v1[42] = v7;
  v1[43] = OUTLINED_FUNCTION_19();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D338, &qword_26666EEB0);
  OUTLINED_FUNCTION_3_3(v8);
  v1[44] = OUTLINED_FUNCTION_19();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007D130, &unk_266671DF0);
  OUTLINED_FUNCTION_3_3(v9);
  v1[45] = OUTLINED_FUNCTION_19();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE30, &unk_26666EAF0);
  OUTLINED_FUNCTION_3_3(v10);
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  v1[48] = swift_task_alloc();
  v11 = type metadata accessor for Snippet.Event(0);
  OUTLINED_FUNCTION_3_3(v11);
  v1[49] = OUTLINED_FUNCTION_19();
  v12 = sub_266669AE8();
  v1[50] = v12;
  OUTLINED_FUNCTION_3_1(v12);
  v1[51] = v13;
  v1[52] = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_4_14();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_2665B41DC()
{
  v1 = *(v0 + 304);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D3A8, &qword_26666EDB0);
  v2 = sub_266669CB8();
  v3 = sub_26658C0E0(v2);
  v5 = v4;
  v6 = *__swift_project_boxed_opaque_existential_1((v1 + 96), *(v1 + 120));
  v7 = type metadata accessor for EventProvider();
  *(v0 + 16) = v6;
  *(v0 + 40) = v7;
  *(v0 + 48) = &off_287806290;
  sub_26655358C(v0 + 16, v0 + 56);

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  if (!v5)
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 56));
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));

  v8 = sub_26655A8B4();
  v9 = sub_26665140C(v3, v5, v8);
  *(v0 + 424) = v9;

  swift_bridgeObjectRelease_n();
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  if (!v9)
  {
LABEL_6:
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1(&qword_28156C150);
    }

    v18 = sub_26666C168();
    __swift_project_value_buffer(v18, qword_28156D7E8);
    v19 = sub_26666C148();
    v20 = sub_26666C5F8();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = OUTLINED_FUNCTION_20();
      *v21 = 0;
      _os_log_impl(&dword_266549000, v19, v20, "[UpdateEvent.NeedsValue] Could not get event from event provider", v21, 2u);
      OUTLINED_FUNCTION_4_1();
    }

    sub_26656CBFC();
    v22 = swift_allocError();
    OUTLINED_FUNCTION_35_3(v22, v23);
    swift_willThrow();
LABEL_11:
    OUTLINED_FUNCTION_2_18();

    OUTLINED_FUNCTION_24_1();
    OUTLINED_FUNCTION_26();

    __asm { BRAA            X1, X16 }
  }

  v11 = *(v0 + 408);
  v10 = *(v0 + 416);
  v12 = *(v0 + 400);
  sub_266669CD8();
  v13 = sub_266669AD8();
  v15 = v14;
  (*(v11 + 8))(v10, v12);

  v16 = sub_26664B618(v13, v15);
  *(v0 + 512) = v16;
  if (v16 == 7)
  {
    sub_26656CBFC();
    swift_allocError();
    *v17 = v13;
    *(v17 + 8) = v15;
    *(v17 + 16) = 0;
    *(v17 + 24) = 0;
    *(v17 + 32) = 1;
    swift_willThrow();

    goto LABEL_11;
  }

  v26 = v16;

  sub_266552C44(0, &qword_28156C110, 0x277CD3AD8);
  v27 = v9;
  sub_2665EB4F8();
  v29 = v28;
  *(v0 + 432) = v28;
  sub_26655358C(v1 + 96, v0 + 96);
  v30 = v29;
  sub_2665AAA8C(v30, v0 + 96, v31, v32, v33, v34, v35, v36, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v0);
  v37 = *(v0 + 304);
  type metadata accessor for CalendarEventConcept(0);
  sub_26655358C(v37 + 144, v0 + 136);
  *(v0 + 440) = sub_2665CA7F4(v30, (v0 + 136));
  if (v26 == 6)
  {
    v43 = swift_task_alloc();
    *(v0 + 464) = v43;
    *v43 = v0;
    v43[1] = sub_2665B4B4C;
    OUTLINED_FUNCTION_26();

    return sub_2665925A0(v44);
  }

  else if (v26)
  {
    sub_2665E82C0(v26);
    sub_26666C358();

    v47 = sub_26666BDA8();
    OUTLINED_FUNCTION_40_1(v47);
    v48 = swift_task_alloc();
    *(v0 + 480) = v48;
    *v48 = v0;
    v48[1] = sub_2665B4E40;
    OUTLINED_FUNCTION_26();

    return sub_266593150();
  }

  else
  {
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1(&qword_28156C150);
    }

    v38 = sub_26666C168();
    __swift_project_value_buffer(v38, qword_28156D7E8);
    v39 = sub_26666C148();
    v40 = sub_26666C618();
    if (OUTLINED_FUNCTION_7_1(v40))
    {
      v41 = OUTLINED_FUNCTION_20();
      *v41 = 0;
      _os_log_impl(&dword_266549000, v39, v37, "[UpdateEvent.NeedsValue] Making generic prompt for parameter to update", v41, 2u);
      OUTLINED_FUNCTION_4_1();
    }

    v42 = v27;

    if (sub_2665EF6AC(v42))
    {
      sub_2665C485C();
    }

    v50 = swift_task_alloc();
    *(v0 + 448) = v50;
    *v50 = v0;
    v50[1] = sub_2665B480C;
    OUTLINED_FUNCTION_26();

    return sub_266592DBC(v51, v52, v53, v54, v55);
  }
}

uint64_t sub_2665B480C()
{
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;
  v2[27] = v1;
  v2[28] = v4;
  v2[29] = v0;
  OUTLINED_FUNCTION_31_4();
  *v5 = *v1;
  *(v6 + 456) = v0;

  OUTLINED_FUNCTION_31_4();

  OUTLINED_FUNCTION_4_14();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2665B4938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  OUTLINED_FUNCTION_39_1();
  OUTLINED_FUNCTION_16_7();
  v21 = v15[48];
  v22 = v15[49];
  v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007ED50, &qword_266673CA0) + 48);
  sub_2665B5F10(v22, v21);
  *(v21 + v23) = 0;
  v24 = v15[57];
  v25 = v15[28];
  OUTLINED_FUNCTION_4_18();
  OUTLINED_FUNCTION_19_11();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_7_13();
  OUTLINED_FUNCTION_25_6();
  sub_26659236C(v16, v20, &unk_28007DE30, &unk_26666EAF0);
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v17);
  v29 = v25;
  OUTLINED_FUNCTION_30_6();
  if (v24)
  {
    OUTLINED_FUNCTION_15_9();

    OUTLINED_FUNCTION_20_8(v18);
    OUTLINED_FUNCTION_20_8(v17);
    OUTLINED_FUNCTION_20_8(v25);
    sub_2665AE46C(v21);
    __swift_destroy_boxed_opaque_existential_1(v15 + 22);
    OUTLINED_FUNCTION_2_18();

    OUTLINED_FUNCTION_24_1();
    OUTLINED_FUNCTION_37_0();

    return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, *(&a10 + 1), a11, v24, a13, a14, a15);
  }

  else
  {
    v39 = OUTLINED_FUNCTION_29_5();
    OUTLINED_FUNCTION_9_11(v39);
    sub_2666696C8();
    sub_26666BB08();
    OUTLINED_FUNCTION_7_6();
    __swift_storeEnumTagSinglePayload(v40, v41, v42, v43);
    v44 = sub_266669788();
    OUTLINED_FUNCTION_6_7(v44);
    v45 = swift_task_alloc();
    v46 = OUTLINED_FUNCTION_18_6(v45);
    *v46 = v47;
    OUTLINED_FUNCTION_1_19(v46);
    OUTLINED_FUNCTION_14_2();

    return sub_2665643AC(v48, v49, v50, v51, v52, v53, v54, v55, a9, SBYTE1(a9), SWORD1(a9), a10, a11, 0);
  }
}

uint64_t sub_2665B4B4C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;
  v2[30] = v1;
  v2[31] = v4;
  v2[32] = v0;
  v5 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v6 = v5;
  *(v7 + 472) = v0;

  OUTLINED_FUNCTION_4_14();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_2665B4C50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  OUTLINED_FUNCTION_39_1();
  OUTLINED_FUNCTION_16_7();
  sub_2665B5F10(v16[49], v16[48]);
  v22 = v16[59];
  v23 = v16[31];
  OUTLINED_FUNCTION_4_18();
  OUTLINED_FUNCTION_19_11();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_7_13();
  OUTLINED_FUNCTION_25_6();
  sub_26659236C(v17, v21, &unk_28007DE30, &unk_26666EAF0);
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v18);
  v27 = v23;
  OUTLINED_FUNCTION_30_6();
  if (v22)
  {
    OUTLINED_FUNCTION_15_9();

    OUTLINED_FUNCTION_20_8(v19);
    OUTLINED_FUNCTION_20_8(v18);
    OUTLINED_FUNCTION_20_8(v23);
    sub_2665AE46C(v15);
    __swift_destroy_boxed_opaque_existential_1(v16 + 22);
    OUTLINED_FUNCTION_2_18();

    OUTLINED_FUNCTION_24_1();
    OUTLINED_FUNCTION_37_0();

    return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, *(&a10 + 1), a11, v22, a13, a14, a15);
  }

  else
  {
    v37 = OUTLINED_FUNCTION_29_5();
    OUTLINED_FUNCTION_9_11(v37);
    sub_2666696C8();
    sub_26666BB08();
    OUTLINED_FUNCTION_7_6();
    __swift_storeEnumTagSinglePayload(v38, v39, v40, v41);
    v42 = sub_266669788();
    OUTLINED_FUNCTION_6_7(v42);
    v43 = swift_task_alloc();
    v44 = OUTLINED_FUNCTION_18_6(v43);
    *v44 = v45;
    OUTLINED_FUNCTION_1_19(v44);
    OUTLINED_FUNCTION_14_2();

    return sub_2665643AC(v46, v47, v48, v49, v50, v51, v52, v53, a9, SBYTE1(a9), SWORD1(a9), a10, a11, 0);
  }
}

uint64_t sub_2665B4E40()
{
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;
  v2[33] = v1;
  v2[34] = v4;
  v2[35] = v0;
  OUTLINED_FUNCTION_31_4();
  *v5 = *v1;
  *(v6 + 488) = v0;

  OUTLINED_FUNCTION_31_4();
  sub_266557D74(*(v7 + 360), &unk_28007D130, &unk_266671DF0);
  OUTLINED_FUNCTION_4_14();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_2665B4F7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  OUTLINED_FUNCTION_39_1();
  OUTLINED_FUNCTION_16_7();
  v21 = v15[48];
  v22 = v15[49];
  v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007ED50, &qword_266673CA0) + 48);
  sub_2665B5F10(v22, v21);
  *(v21 + v23) = 0;
  v24 = v15[61];
  v25 = v15[34];
  OUTLINED_FUNCTION_4_18();
  OUTLINED_FUNCTION_19_11();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_7_13();
  OUTLINED_FUNCTION_25_6();
  sub_26659236C(v16, v20, &unk_28007DE30, &unk_26666EAF0);
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v17);
  v29 = v25;
  OUTLINED_FUNCTION_30_6();
  if (v24)
  {
    OUTLINED_FUNCTION_15_9();

    OUTLINED_FUNCTION_20_8(v18);
    OUTLINED_FUNCTION_20_8(v17);
    OUTLINED_FUNCTION_20_8(v25);
    sub_2665AE46C(v21);
    __swift_destroy_boxed_opaque_existential_1(v15 + 22);
    OUTLINED_FUNCTION_2_18();

    OUTLINED_FUNCTION_24_1();
    OUTLINED_FUNCTION_37_0();

    return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, *(&a10 + 1), a11, v24, a13, a14, a15);
  }

  else
  {
    v39 = OUTLINED_FUNCTION_29_5();
    OUTLINED_FUNCTION_9_11(v39);
    sub_2666696C8();
    sub_26666BB08();
    OUTLINED_FUNCTION_7_6();
    __swift_storeEnumTagSinglePayload(v40, v41, v42, v43);
    v44 = sub_266669788();
    OUTLINED_FUNCTION_6_7(v44);
    v45 = swift_task_alloc();
    v46 = OUTLINED_FUNCTION_18_6(v45);
    *v46 = v47;
    OUTLINED_FUNCTION_1_19(v46);
    OUTLINED_FUNCTION_14_2();

    return sub_2665643AC(v48, v49, v50, v51, v52, v53, v54, v55, a9, SBYTE1(a9), SWORD1(a9), a10, a11, 0);
  }
}

uint64_t sub_2665B5190()
{
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_5_1();
  v2 = v1[62];
  v17 = v1[47];
  v3 = v1[46];
  v4 = v1[44];
  v5 = v1[43];
  v6 = v1[42];
  v7 = v1[41];
  v8 = v1[40];
  v9 = v1[39];
  v10 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v11 = v10;

  sub_266557D74(v9, &qword_28007D330, &unk_26666EEA0);
  sub_266557D74(v8, &unk_28007DE20, &unk_26666EAE0);
  (*(v6 + 8))(v5, v7);
  sub_266557D74(v4, &qword_28007D338, &qword_26666EEB0);
  sub_266557D74(v3, &unk_28007DE30, &unk_26666EAF0);
  sub_266557D74(v17, &unk_28007DE30, &unk_26666EAF0);
  OUTLINED_FUNCTION_4_14();
  OUTLINED_FUNCTION_4_7();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_2665B53D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_38_0();
  OUTLINED_FUNCTION_16_7();
  v17 = *(v16 + 432);
  v18 = *(v16 + 424);
  v20 = *(v16 + 384);
  v19 = *(v16 + 392);
  v30 = *(v16 + 352);
  v31 = *(v16 + 344);
  v32 = *(v16 + 320);
  v33 = *(v16 + 312);

  sub_266557D74(v20, &unk_28007DE30, &unk_26666EAF0);
  sub_2665AE46C(v19);
  __swift_destroy_boxed_opaque_existential_1((v16 + 176));

  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_14_2();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, v30, v31, v32, v33, a14, a15, a16);
}

uint64_t sub_2665B54E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_27_7();

  sub_2665AE46C(v13);
  v25 = *(v15 + 456);
  OUTLINED_FUNCTION_2_18();

  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_4_7();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, v25, a10, a11, a12);
}

uint64_t sub_2665B55B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_27_7();

  sub_2665AE46C(v13);
  v25 = *(v15 + 472);
  OUTLINED_FUNCTION_2_18();

  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_4_7();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, v25, a10, a11, a12);
}

uint64_t sub_2665B5688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_27_7();

  sub_2665AE46C(v13);
  v25 = *(v15 + 488);
  OUTLINED_FUNCTION_2_18();

  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_4_7();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, v25, a10, a11, a12);
}

uint64_t sub_2665B575C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  if (sub_26664B664(a1) == 0xD000000000000014 && 0x800000026667CDD0 == v4)
  {
  }

  else
  {
    v6 = sub_26666CAC8();

    if ((v6 & 1) == 0)
    {
      if (qword_28156C150 != -1)
      {
        swift_once();
      }

      v7 = sub_26666C168();
      __swift_project_value_buffer(v7, qword_28156D7E8);
      v8 = sub_26666C148();
      v9 = sub_26666C618();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v20[0] = v11;
        *v10 = 136446210;
        v12 = sub_2665E82C0(v2);
        v14 = sub_2665BFC90(v12, v13, v20);

        *(v10 + 4) = v14;
        _os_log_impl(&dword_266549000, v8, v9, "[UpdateEvent.NeedsValue] Making NLContext update for %{public}s", v10, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v11);
        MEMORY[0x266789690](v11, -1, -1);
        MEMORY[0x266789690](v10, -1, -1);
      }

      v20[3] = &type metadata for UpdateEvent.Parameter;
      v20[4] = &off_287809D80;
      LOBYTE(v20[0]) = v2;
      sub_266662924(a2);
      return __swift_destroy_boxed_opaque_existential_1(v20);
    }
  }

  if (qword_28156C150 != -1)
  {
    swift_once();
  }

  v16 = sub_26666C168();
  __swift_project_value_buffer(v16, qword_28156D7E8);
  v17 = sub_26666C148();
  v18 = sub_26666C618();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_266549000, v17, v18, "[UpdateEvent.NeedsValue] Making NLContext update for event recurrence prompt", v19, 2u);
    MEMORY[0x266789690](v19, -1, -1);
  }

  return sub_266662640(0, a2);
}

uint64_t sub_2665B5A18()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26656CD98;

  return sub_2665B33D8();
}

uint64_t sub_2665B5AC8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26656C894;

  return sub_2665B3FC8();
}

uint64_t sub_2665B5B70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_26656CD98;

  return MEMORY[0x2821B9BF8](a1, a2, a3, a4);
}

uint64_t sub_2665B5C34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_26656CD98;

  return MEMORY[0x2821B9C00](a1, a2, a3, a4);
}

uint64_t sub_2665B5CF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_26656CD98;

  return MEMORY[0x2821BBB18](a1, a2, a3, a4, a5, a6);
}

uint64_t sub_2665B5DD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_26656CD98;

  return MEMORY[0x2821BBB20](a1, a2, a3, a4, a5, a6, a7);
}

unint64_t sub_2665B5EBC()
{
  result = qword_28007E2B8;
  if (!qword_28007E2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E2B8);
  }

  return result;
}

uint64_t sub_2665B5F10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Snippet.Event(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_1_19(uint64_t a1)
{
  *(a1 + 8) = sub_2665B5190;
  v7 = v4[39];
  v6 = v4[40];
  result = v4[36];
  *(v5 + 40) = v1;
  *(v5 + 48) = v3;
  *(v5 + 24) = v6;
  *(v5 + 32) = v7;
  *(v5 + 18) = 514;
  *(v5 + 17) = v2 & 1;
  *(v5 + 16) = 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_4_18()
{

  return type metadata accessor for Snippet(0);
}

uint64_t OUTLINED_FUNCTION_6_7(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);

  return sub_26656CFC4();
}

uint64_t OUTLINED_FUNCTION_7_13()
{
  *(v1 + 496) = v2;
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v4);

  return sub_26655358C(v0 + 184, v1 + 176);
}

uint64_t OUTLINED_FUNCTION_9_11(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, a1);
}

void OUTLINED_FUNCTION_15_9()
{
}

uint64_t OUTLINED_FUNCTION_20_8(uint64_t a1)
{

  return sub_266557D74(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_27_7()
{
}

uint64_t OUTLINED_FUNCTION_29_5()
{

  return sub_2666699C8();
}

uint64_t OUTLINED_FUNCTION_30_6()
{

  return sub_2665B575C(v1, v0);
}

double OUTLINED_FUNCTION_35_3(uint64_t a1, uint64_t a2)
{
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 2;
  return result;
}

uint64_t OUTLINED_FUNCTION_40_1(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, a1);
}

uint64_t OUTLINED_FUNCTION_42_3()
{
}

uint64_t OUTLINED_FUNCTION_43_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_26666CAC8();
}

uint64_t sub_2665B6274(uint64_t a1)
{
  result = sub_26655EC10(319, &qword_28007E348, &protocol descriptor for ConfirmationParsing);
  if (v2 <= 0x3F)
  {
    result = sub_26655EC10(319, qword_28156CBE0, &protocol descriptor for EventProviding);
    if (v3 <= 0x3F)
    {
      result = sub_26655EC10(319, &qword_28156D140, MEMORY[0x277D5BA10]);
      if (v4 <= 0x3F)
      {
        result = sub_26655EC10(319, &qword_28007E350, MEMORY[0x277D5BE28]);
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for CommonCATsSimple(319);
          if (v6 <= 0x3F)
          {
            result = sub_26655EC10(319, &qword_28007E358, &protocol descriptor for SiriCalendarFeatureManaging);
            if (v7 <= 0x3F)
            {
              result = sub_266669A88();
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

uint64_t sub_2665B6408(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 16) = a3;
  *(v4 + 24) = v3;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_2665B641C()
{
  v1 = *(v0 + 24);
  __swift_project_boxed_opaque_existential_1((v1 + 80), *(v1 + 104));
  if (sub_266669658())
  {
    LOBYTE(v2) = 0;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1((v1 + 80), *(v1 + 104));
    OUTLINED_FUNCTION_15_2();
    v2 = sub_266669698() ^ 1;
  }

  v3 = *(v0 + 8);

  return v3(v2 & 1);
}

uint64_t sub_2665B64E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v58 = sub_266669E18();
  OUTLINED_FUNCTION_3_0();
  v5 = v4;
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v57 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v57 - v13;
  v15 = sub_266669E58();
  OUTLINED_FUNCTION_3_0();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_266669DF8();
  v21 = sub_266561674(v20, v63);
  (*(v17 + 8))(v20, v15, v21);
  if (v63[0] == 3)
  {
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1(&qword_28156C150);
    }

    v22 = sub_26666C168();
    __swift_project_value_buffer(v22, qword_28156D7E8);
    OUTLINED_FUNCTION_12_9();
    v23 = v58;
    v24(v9, a1, v58);
    v25 = sub_26666C148();
    v26 = sub_26666C618();
    if (os_log_type_enabled(v25, v26))
    {
      OUTLINED_FUNCTION_21();
      v27 = OUTLINED_FUNCTION_13();
      v61 = v27;
      *v12 = 136315138;
      sub_2665B934C();
      sub_26666CAA8();
      OUTLINED_FUNCTION_11_12();
      v28(v9, v23);
      v29 = OUTLINED_FUNCTION_21_5();
      v32 = sub_2665BFC90(v29, v30, v31);

      *(v12 + 4) = v32;
      _os_log_impl(&dword_266549000, v25, v26, "[ConfirmConflictStrategy] Returning .ignore() for input: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v27);
      OUTLINED_FUNCTION_9_12();
      OUTLINED_FUNCTION_12();
    }

    else
    {

      (*(v5 + 8))(v9, v23);
    }

    sub_2666697E8();
  }

  else
  {
    sub_2665B9288(v63, &v61);
    if (v61 == 2)
    {
      v33 = v58;
      if (qword_28156C150 != -1)
      {
        OUTLINED_FUNCTION_1_1(&qword_28156C150);
      }

      v34 = sub_26666C168();
      __swift_project_value_buffer(v34, qword_28156D7E8);
      OUTLINED_FUNCTION_12_9();
      OUTLINED_FUNCTION_20_9();
      v35();
      v36 = sub_26666C148();
      v37 = sub_26666C618();
      if (os_log_type_enabled(v36, v37))
      {
        OUTLINED_FUNCTION_21();
        v38 = OUTLINED_FUNCTION_13();
        v60 = v38;
        *v12 = 136315138;
        sub_2665B934C();
        sub_26666CAA8();
        OUTLINED_FUNCTION_11_12();
        v39(v14, v33);
        v40 = OUTLINED_FUNCTION_21_5();
        v43 = sub_2665BFC90(v40, v41, v42);

        *(v12 + 4) = v43;
        _os_log_impl(&dword_266549000, v36, v37, "[ConfirmConflictStrategy] Returning .cancel() for input: %s", v12, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v38);
        OUTLINED_FUNCTION_9_12();
        OUTLINED_FUNCTION_12();
      }

      else
      {

        (*(v5 + 8))(v14, v33);
      }

      sub_2666697C8();
    }

    else
    {
      v44 = v58;
      if (qword_28156C150 != -1)
      {
        OUTLINED_FUNCTION_1_1(&qword_28156C150);
      }

      v45 = sub_26666C168();
      __swift_project_value_buffer(v45, qword_28156D7E8);
      OUTLINED_FUNCTION_12_9();
      OUTLINED_FUNCTION_20_9();
      v46();
      v47 = sub_26666C148();
      v48 = sub_26666C618();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = OUTLINED_FUNCTION_21();
        v50 = swift_slowAlloc();
        v60 = v50;
        *v49 = 136315138;
        sub_2665B934C();
        sub_26666CAA8();
        OUTLINED_FUNCTION_11_12();
        v51(v12, v44);
        v52 = OUTLINED_FUNCTION_21_5();
        v55 = sub_2665BFC90(v52, v53, v54);

        *(v49 + 4) = v55;
        _os_log_impl(&dword_266549000, v47, v48, "[ConfirmConflictStrategy] Returning .handle() for input: %s", v49, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v50);
        OUTLINED_FUNCTION_9_12();
        MEMORY[0x266789690](v49, -1, -1);
      }

      else
      {

        (*(v5 + 8))(v12, v44);
      }

      sub_2666697D8();
      sub_26656CAEC(&v62, &unk_28007D200, &qword_26666FD20);
    }
  }

  return sub_26656CAEC(v63, &qword_28007E368, &unk_266673E30);
}

uint64_t sub_2665B6A98()
{
  OUTLINED_FUNCTION_14();
  v1[24] = v2;
  v1[25] = v0;
  v1[22] = v3;
  v1[23] = v4;
  v1[21] = v5;
  v6 = sub_266669E18();
  v1[26] = v6;
  OUTLINED_FUNCTION_3_1(v6);
  v1[27] = v7;
  v1[28] = OUTLINED_FUNCTION_19();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DD40, &qword_266672600);
  OUTLINED_FUNCTION_3_3(v8);
  v1[29] = OUTLINED_FUNCTION_19();
  v9 = sub_266669E58();
  v1[30] = v9;
  OUTLINED_FUNCTION_3_1(v9);
  v1[31] = v10;
  v1[32] = OUTLINED_FUNCTION_19();
  v11 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2665B6BBC()
{
  v49 = v0;
  v1 = *(v0 + 256);
  __swift_project_boxed_opaque_existential_1(*(v0 + 200), *(*(v0 + 200) + 24));
  sub_266669DF8();
  sub_266561674(v1, v0 + 16);
  v2 = OUTLINED_FUNCTION_15_2();
  v3(v2);
  sub_2665B9288(v0 + 16, v0 + 72);
  v4 = *(v0 + 72);
  if (v4 == 2)
  {
    sub_2665B92F8(v0 + 72);
    goto LABEL_5;
  }

  if (v4 == 3)
  {
    sub_26656CAEC(v0 + 72, &qword_28007E368, &unk_266673E30);
LABEL_5:
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1(&qword_28156C150);
    }

    v6 = *(v0 + 216);
    v5 = *(v0 + 224);
    v7 = *(v0 + 208);
    v8 = *(v0 + 176);
    v9 = sub_26666C168();
    v10 = __swift_project_value_buffer(v9, qword_28156D7E8);
    (*(v6 + 16))(v5, v8, v7);
    v11 = sub_26666C148();
    v12 = sub_26666C5F8();
    if (os_log_type_enabled(v11, v12))
    {
      OUTLINED_FUNCTION_21();
      v13 = OUTLINED_FUNCTION_13();
      v48 = v13;
      *v10 = 136315138;
      sub_266669DF8();
      v14 = sub_26666C318();
      v16 = v15;
      v17 = OUTLINED_FUNCTION_21_5();
      v18(v17);
      v19 = sub_2665BFC90(v14, v16, &v48);

      *(v10 + 4) = v19;
      _os_log_impl(&dword_266549000, v11, v12, "[ConfirmConflictStrategy] Did not get ConfirmationTask from parse: %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x266789690](v13, -1, -1);
      OUTLINED_FUNCTION_12();
    }

    else
    {
      v21 = *(v0 + 216);
      v20 = *(v0 + 224);
      v22 = *(v0 + 208);

      (*(v21 + 8))(v20, v22);
    }

    sub_26656CBFC();
    v23 = swift_allocError();
    OUTLINED_FUNCTION_14_10(v23, v24);
    sub_26656CAEC(v0 + 16, &qword_28007E368, &unk_266673E30);

    OUTLINED_FUNCTION_24_1();
    goto LABEL_19;
  }

  v26 = *(v0 + 192);
  sub_26656CAEC(v0 + 80, &unk_28007D200, &qword_26666FD20);
  v27 = *(v26 + 16);
  sub_266669CE8();
  if (v4)
  {
    v28 = sub_266669CB8();
    v29 = *MEMORY[0x277D5BED0];
    v30 = sub_266669AF8();
    OUTLINED_FUNCTION_18_2();
    v32 = *(v31 + 104);
    v33 = v28;
  }

  else
  {
    v34 = sub_266669CC8();
    v35 = [v34 itemToConfirm];

    sub_26666C718();
    swift_unknownObjectRelease();
    sub_2665F0658((v0 + 128));
    v37 = v36;
    v38 = *(v0 + 192);
    __swift_destroy_boxed_opaque_existential_1((v0 + 128));
    v39 = sub_266669CB8();
    sub_2665B2A7C(v37, 1, v27, *(v38 + 32));

    v40 = qword_28156C150;
    v33 = *(v0 + 160);
    if (v40 != -1)
    {
      OUTLINED_FUNCTION_1_1(&qword_28156C150);
    }

    v41 = sub_26666C168();
    __swift_project_value_buffer(v41, qword_28156D7E8);
    v42 = sub_26666C148();
    v43 = sub_26666C618();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_266549000, v42, v43, "[ConfirmConflictStrategy] Intent date time range updated with value to confirm.", v44, 2u);
      OUTLINED_FUNCTION_9_12();
    }

    v29 = *MEMORY[0x277D5BED8];
    v30 = sub_266669AF8();
    OUTLINED_FUNCTION_18_2();
    v32 = *(v45 + 104);
  }

  v46 = *(v0 + 232);
  v32(v46, v29, v30);
  sub_266669AF8();
  __swift_storeEnumTagSinglePayload(v46, 0, 1, v30);
  sub_266669B98();

  sub_26656CAEC(v0 + 16, &qword_28007E368, &unk_266673E30);

  OUTLINED_FUNCTION_24_1();
LABEL_19:

  return v25();
}

uint64_t sub_2665B7110()
{
  OUTLINED_FUNCTION_14();
  v1[15] = v2;
  v1[16] = v0;
  v1[13] = v3;
  v1[14] = v4;
  v1[12] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D330, &unk_26666EEA0);
  OUTLINED_FUNCTION_3_3(v6);
  v1[17] = OUTLINED_FUNCTION_19();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE20, &unk_26666EAE0);
  OUTLINED_FUNCTION_3_3(v7);
  v1[18] = OUTLINED_FUNCTION_19();
  v8 = sub_266669708();
  v1[19] = v8;
  OUTLINED_FUNCTION_3_1(v8);
  v1[20] = v9;
  v1[21] = OUTLINED_FUNCTION_19();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D338, &qword_26666EEB0);
  OUTLINED_FUNCTION_3_3(v10);
  v1[22] = OUTLINED_FUNCTION_19();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE30, &unk_26666EAF0);
  OUTLINED_FUNCTION_3_3(v11);
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v12 = type metadata accessor for Snippet(0);
  v1[25] = v12;
  OUTLINED_FUNCTION_3_3(v12);
  v1[26] = OUTLINED_FUNCTION_19();
  v13 = sub_2666699C8();
  v1[27] = v13;
  OUTLINED_FUNCTION_3_1(v13);
  v1[28] = v14;
  v1[29] = OUTLINED_FUNCTION_19();
  v15 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_2665B72F0()
{
  v49 = v0;
  v1 = sub_2665F0658(*(v0 + 104));
  *(v0 + 240) = v1;
  *(v0 + 248) = v2;
  v3 = v1;
  v4 = v2;
  v6 = *(v0 + 120);
  v5 = *(v0 + 128);
  v7 = *(v6 + 16);
  *(v0 + 256) = sub_266669CE8();
  v8 = sub_266669CB8();
  v9 = *(v6 + 32);
  v10 = *(v9 + 40);
  v11 = v4;
  v12 = v10(v5 + 40, v4, v7, v9);
  *(v0 + 264) = v12;

  if (v12)
  {
    v13 = *__swift_project_boxed_opaque_existential_1((v5 + 40), *(*(v0 + 128) + 64));
    *(v0 + 40) = type metadata accessor for EventProvider();
    *(v0 + 48) = &off_287806290;
    *(v0 + 16) = v13;
    sub_26655358C(v0 + 16, v0 + 56);

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    v14 = 0;
    v15 = MEMORY[0x277D84F90];
    v48 = MEMORY[0x277D84F90];
    v16 = *(v3 + 16);
    v17 = (v3 + 40);
LABEL_3:
    v11 = v17;
    v18 = &v17[16 * v14];
    while (v16 != v14)
    {
      if (v14 >= *(v3 + 16))
      {
        __break(1u);
        goto LABEL_40;
      }

      v19 = v18 + 2;
      ++v14;
      v20 = *(v18 - 1);
      v21 = *v18;
      __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));

      v22 = sub_26655A8B4();
      v23 = sub_26665140C(v20, v21, v22);

      v18 = v19;
      if (v23)
      {
        MEMORY[0x2667887C0](v24);
        if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_26666C4B8();
        }

        sub_26666C4E8();
        v15 = v48;
        v17 = v11;
        goto LABEL_3;
      }
    }

    __swift_destroy_boxed_opaque_existential_1((v0 + 56));
    v25 = sub_2665C485C();
    if (v25)
    {
      v26 = v25;
      v48 = MEMORY[0x277D84F90];
      sub_26666C898();
      if (v26 < 0)
      {
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      sub_26656CC50();
      v27 = 0;
      do
      {
        if ((v15 & 0xC000000000000001) != 0)
        {
          MEMORY[0x266788B60](v27, v15);
        }

        else
        {
          v28 = *(v15 + 8 * v27 + 32);
        }

        ++v27;
        sub_2665EB4F8();
        sub_26666C868();
        sub_26666C8A8();
        sub_26666C8B8();
        sub_26666C878();
      }

      while (v26 != v27);

      v29 = v48;
    }

    else
    {

      v29 = MEMORY[0x277D84F90];
    }

    *(v0 + 272) = v29;
    if (sub_2665C485C() == 1 && sub_2665C485C())
    {
      sub_2665C4864();
      if ((v29 & 0xC000000000000001) != 0)
      {
        v36 = MEMORY[0x266788B60](0, v29);
      }

      else
      {
        v36 = *(v29 + 32);
      }

      v37 = v36;
    }

    else
    {
      v37 = 0;
    }

    *(v0 + 280) = v37;
    v38 = *(v0 + 232);
    sub_26666B058();
    swift_allocObject();
    v39 = sub_26666B048();
    sub_266662A60(v39, v38);

    if (v37)
    {
      v42 = *(v0 + 128);
      v47 = v37;
      sub_2665B8318(&v47, v42, &v48);
      v43 = v48;
    }

    else
    {
      v43 = 0;
    }

    *(v0 + 288) = v43;
    v44 = swift_task_alloc();
    *(v0 + 296) = v44;
    *v44 = v0;
    v44[1] = sub_2665B78A4;
    v45 = OUTLINED_FUNCTION_15_2();

    return sub_2665D8244(v45, v46, 0);
  }

  else
  {
    if (qword_28156C150 != -1)
    {
LABEL_41:
      OUTLINED_FUNCTION_1_1(&qword_28156C150);
    }

    v30 = sub_26666C168();
    __swift_project_value_buffer(v30, qword_28156D7E8);
    v31 = sub_26666C148();
    v32 = sub_26666C608();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_266549000, v31, v32, "[ChangeOrCancelStrategy] Could not get INCalendarEvent for snippet", v33, 2u);
      OUTLINED_FUNCTION_12();
    }

    sub_26656CBFC();
    v34 = swift_allocError();
    OUTLINED_FUNCTION_14_10(v34, v35);

    OUTLINED_FUNCTION_24_1();

    return v40();
  }
}

uint64_t sub_2665B78A4()
{
  v2 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v3 = v2;
  *(v2 + 304) = v4;
  *(v2 + 312) = v0;

  if (v0)
  {

    v5 = sub_2665B8140;
  }

  else
  {

    v5 = sub_2665B79EC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2665B79EC()
{
  OUTLINED_FUNCTION_14();
  *(v0 + 320) = sub_266669CB8();
  v1 = swift_task_alloc();
  *(v0 + 328) = v1;
  *v1 = v0;
  v1[1] = sub_2665B7A98;

  return sub_2665B838C();
}

uint64_t sub_2665B7A98()
{
  v2 = *v1;
  *(*v1 + 336) = v0;

  v3 = *(v2 + 320);
  if (v0)
  {

    v4 = sub_2665B8228;
  }

  else
  {

    v4 = sub_2665B7BF4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2665B7BF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, char a10, __int16 a11, __int128 a12, uint64_t a13, uint64_t a14)
{
  v15 = v14[28];
  v16 = v14[29];
  v18 = v14[26];
  v17 = v14[27];
  v20 = v14[24];
  v19 = v14[25];
  v21 = v14[22];
  __swift_project_boxed_opaque_existential_1((v14[16] + 120), *(v14[16] + 144));
  sub_266566370(v18, v20);
  __swift_storeEnumTagSinglePayload(v20, 0, 1, v19);
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v19);
  (*(v15 + 16))(v21, v16, v17);
  __swift_storeEnumTagSinglePayload(v21, 0, 1, v17);
  sub_2666696B8();
  sub_26666BB08();
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v28);
  sub_266669788();
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v32);
  sub_26656CFC4();
  v33 = swift_task_alloc();
  v14[43] = v33;
  *v33 = v14;
  v33[1] = sub_2665B7DCC;
  v34 = v14[38];
  v36 = v14[23];
  v35 = v14[24];
  v38 = v14[21];
  v37 = v14[22];
  v39 = v14[12];

  return sub_2665643AC(v39, v35, v36, v34, 0, 0, v37, v38, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_2665B7DCC()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 168);
  v3 = *(*v0 + 160);
  v4 = *(*v0 + 152);
  v5 = *(*v0 + 144);
  v6 = *(*v0 + 136);
  v7 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v8 = v7;

  sub_26656CAEC(v6, &qword_28007D330, &unk_26666EEA0);
  sub_26656CAEC(v5, &unk_28007DE20, &unk_26666EAE0);
  (*(v3 + 8))(v2, v4);
  sub_26656CAEC(v1, &qword_28007D338, &qword_26666EEB0);
  OUTLINED_FUNCTION_20_9();
  sub_26656CAEC(v9, v10, v11);
  OUTLINED_FUNCTION_20_9();
  sub_26656CAEC(v12, v13, v14);

  return MEMORY[0x2822009F8](sub_2665B800C, 0, 0);
}

uint64_t sub_2665B800C()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 264);
  v3 = *(v0 + 248);
  v5 = *(v0 + 224);
  v4 = *(v0 + 232);
  v7 = *(v0 + 208);
  v6 = *(v0 + 216);

  sub_2665B915C(v7, type metadata accessor for Snippet);
  (*(v5 + 8))(v4, v6);

  OUTLINED_FUNCTION_24_1();

  return v8();
}

uint64_t sub_2665B8140()
{
  v1 = v0[35];
  v2 = v0[33];
  v3 = v0[31];
  v5 = v0[28];
  v4 = v0[29];
  v6 = v0[27];

  (*(v5 + 8))(v4, v6);
  OUTLINED_FUNCTION_16_8();

  OUTLINED_FUNCTION_24_1();

  return v7();
}

uint64_t sub_2665B8228()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 264);
  v3 = *(v0 + 248);

  v4 = OUTLINED_FUNCTION_15_2();
  v5(v4);
  OUTLINED_FUNCTION_16_8();

  OUTLINED_FUNCTION_24_1();

  return v6();
}

uint64_t sub_2665B8318@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  type metadata accessor for CalendarEventConcept(0);
  sub_26655358C(a2 + 80, v7);
  result = sub_2665CA7F4(v5, v7);
  *a3 = result;
  return result;
}

uint64_t sub_2665B838C()
{
  OUTLINED_FUNCTION_14();
  v1[10] = v2;
  v1[11] = v0;
  v1[8] = v3;
  v1[9] = v4;
  v1[7] = v5;
  v6 = type metadata accessor for Snippet.Event(0);
  OUTLINED_FUNCTION_3_3(v6);
  v1[12] = OUTLINED_FUNCTION_19();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E360, &unk_2666773F0);
  OUTLINED_FUNCTION_3_3(v7);
  v1[13] = OUTLINED_FUNCTION_19();
  v8 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

void sub_2665B865C(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v8 = *a1;
  sub_26655358C(a2 + 40, var48);
  v9 = v8;
  sub_2665AAA8C(v9, var48, v10, v11, v12, v13, v14, v15, v16, var48[0], var48[1], var48[2], var48[3], var48[4], var48[5], var48[6], var48[7], var48[8], var48[9], var48[10]);
  if (v6)
  {
    *a6 = v6;
  }
}

uint64_t sub_2665B86D8()
{
  OUTLINED_FUNCTION_14();
  sub_266669758();
  sub_266669748();
  OUTLINED_FUNCTION_24_1();

  return v0();
}

uint64_t sub_2665B8744@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 68);
  v5 = sub_266669A88();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_2665B87BC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2665B93A4;

  return sub_2665B6A98();
}

uint64_t sub_2665B887C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_2665B8910;

  return sub_2665B6408(v5, v6, a3);
}

uint64_t sub_2665B8910()
{
  OUTLINED_FUNCTION_14();
  v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

uint64_t sub_2665B8A00()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2665B8AC0;

  return sub_2665B7110();
}

uint64_t sub_2665B8AC0()
{
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v2 = v1;

  OUTLINED_FUNCTION_24_1();

  return v3();
}

uint64_t sub_2665B8BA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_2665B93A4;

  return MEMORY[0x2821B9E28](a1, a2, a3, a4, a5);
}

uint64_t sub_2665B8C70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_2665B93A4;

  return MEMORY[0x2821B9E38](a1, a2, a3, a4, a5);
}

uint64_t sub_2665B8D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2665B93A4;

  return MEMORY[0x2821B9E30](a1, a2, a3, a4);
}

uint64_t sub_2665B8E00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2665B93A4;

  return MEMORY[0x2821B9E40](a1, a2, a3, a4);
}

uint64_t sub_2665B8EC4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2665B93A4;

  return sub_2665B86C4(a1);
}

uint64_t sub_2665B8F5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_2665B93A4;

  return MEMORY[0x2821BBB18](a1, a2, a3, a4, a5, a6);
}

uint64_t sub_2665B9038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_2665B93A4;

  return MEMORY[0x2821BBB20](a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_2665B915C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_18_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_2665B91B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Snippet.Event(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2665B9218(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E360, &unk_2666773F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2665B9288(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E368, &unk_266673E30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2665B934C()
{
  result = qword_28007D6D8;
  if (!qword_28007D6D8)
  {
    sub_266669E18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D6D8);
  }

  return result;
}

void OUTLINED_FUNCTION_9_12()
{

  JUMPOUT(0x266789690);
}

uint64_t OUTLINED_FUNCTION_14_10(uint64_t a1, uint64_t a2)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 2;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_16_8()
{
}

uint64_t DIStringValue.value.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_2665B94EC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_26666CAC8();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_2665B957C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2665B94EC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2665B95A8(uint64_t a1)
{
  v2 = sub_2665B9770();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2665B95E4(uint64_t a1)
{
  v2 = sub_2665B9770();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t static DIStringValue.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_26666CAC8();
  }
}

uint64_t DIStringValue.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E370, &qword_266673E40);
  OUTLINED_FUNCTION_3_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2665B9770();
  sub_26666CBE8();
  sub_26666CA48();
  return (*(v6 + 8))(v9, v4);
}

unint64_t sub_2665B9770()
{
  result = qword_28007E378;
  if (!qword_28007E378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E378);
  }

  return result;
}

void *DIStringValue.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E380, &qword_266673E48);
  OUTLINED_FUNCTION_3_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2665B9770();
  sub_26666CBD8();
  if (!v1)
  {
    v9 = sub_26666C9B8();
    (*(v5 + 8))(v8, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

unint64_t sub_2665B9920(void *a1)
{
  a1[1] = sub_266563B88();
  a1[2] = sub_2665B9958();
  result = sub_2665B99AC();
  a1[3] = result;
  return result;
}

unint64_t sub_2665B9958()
{
  result = qword_28007E388;
  if (!qword_28007E388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E388);
  }

  return result;
}

unint64_t sub_2665B99AC()
{
  result = qword_28007E390;
  if (!qword_28007E390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E390);
  }

  return result;
}

void *sub_2665B9A00@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = DIStringValue.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_2665B9A5C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_2665B9A9C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DIStringValue.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_2665B9B98()
{
  result = qword_28007E398;
  if (!qword_28007E398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E398);
  }

  return result;
}

unint64_t sub_2665B9BF0()
{
  result = qword_28007E3A0;
  if (!qword_28007E3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E3A0);
  }

  return result;
}

unint64_t sub_2665B9C48()
{
  result = qword_28007E3A8;
  if (!qword_28007E3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E3A8);
  }

  return result;
}

uint64_t sub_2665B9CD4(_OWORD *a1, uint64_t a2, char a3)
{
  sub_2665B9D10(a1, a2, a3 & 1);
  OUTLINED_FUNCTION_2_19();
  v3 = OUTLINED_FUNCTION_0_21();
  v10 = sub_2665828A0(v3, v4, v5, v6, v7, v8, v9);
  return OUTLINED_FUNCTION_1_20(v10);
}

_OWORD *sub_2665B9D10(_OWORD *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE50, &unk_26666E360);
    v4 = swift_allocObject();
    v4[1] = xmmword_26666E050;
    *(v4 + 4) = a1;
  }

  else
  {
    v4 = a1;
  }

  v5 = a1;
  return v4;
}

uint64_t sub_2665B9DA0@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X8>)
{
  result = sub_2665B9CD4(a1, a2, a3 & 1);
  *a4 = result;
  return result;
}

uint64_t sub_2665B9DCC(_OWORD *a1, uint64_t a2, char a3)
{
  sub_2665B9D10(a1, a2, a3 & 1);
  OUTLINED_FUNCTION_2_19();
  v6 = sub_266636A48(0, 0, 0, 0, 0, 0, v3, v4, v5, 0, 0, 3, 2, 2);
  return OUTLINED_FUNCTION_1_20(v6);
}

uint64_t sub_2665B9E48@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X8>)
{
  result = sub_2665B9DCC(a1, a2, a3 & 1);
  *a4 = result;
  return result;
}

uint64_t sub_2665B9E74(_OWORD *a1, uint64_t a2, char a3)
{
  sub_2665B9D10(a1, a2, a3 & 1);
  OUTLINED_FUNCTION_2_19();
  v3 = OUTLINED_FUNCTION_0_21();
  v10 = sub_2665668D4(v3, v4, v5, v6, v7, v8, v9, 0, 1);
  return OUTLINED_FUNCTION_1_20(v10);
}

uint64_t sub_2665B9EC4@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X8>)
{
  result = sub_2665B9E74(a1, a2, a3 & 1);
  *a4 = result;
  return result;
}

uint64_t sub_2665B9F58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, id *a5, void (*a6)(uint64_t, uint64_t, uint64_t), char a7, uint64_t a8, uint64_t a9, char a10, char a11)
{
  v95 = a8;
  v84 = a5;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D330, &unk_26666EEA0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v78[-v15];
  v92 = sub_266669788();
  OUTLINED_FUNCTION_3_0();
  v87 = v17;
  MEMORY[0x28223BE20](v18);
  v93 = &v78[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE20, &unk_26666EAE0);
  MEMORY[0x28223BE20](v20 - 8);
  OUTLINED_FUNCTION_8_10();
  v91 = v21;
  OUTLINED_FUNCTION_12_7();
  MEMORY[0x28223BE20](v22);
  v24 = &v78[-v23];
  v25 = sub_26666BB08();
  OUTLINED_FUNCTION_3_0();
  v96 = v26;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_8_10();
  v90 = v28;
  OUTLINED_FUNCTION_12_7();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_24_5();
  v86 = v30;
  OUTLINED_FUNCTION_12_7();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_24_5();
  v88 = v32;
  OUTLINED_FUNCTION_12_7();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_24_5();
  v85 = v34;
  OUTLINED_FUNCTION_12_7();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_24_5();
  v89 = v36;
  OUTLINED_FUNCTION_12_7();
  MEMORY[0x28223BE20](v37);
  v94 = &v78[-v38];
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D338, &qword_26666EEB0);
  MEMORY[0x28223BE20](v39 - 8);
  v41 = &v78[-v40];
  sub_266669C28();
  if (!a4)
  {
    v83 = a6;
    v42 = v84;
    if (sub_2665C485C())
    {
      sub_2665C4864();
      if ((v42 & 0xC000000000000001) != 0)
      {
        v43 = MEMORY[0x266788B60](0, v42);
      }

      else
      {
        v43 = v42[4];
      }

      v44 = v43;
      v45 = [v43 catId];

      sub_26666C308();
    }

    a6 = v83;
  }

  sub_266669C18();
  sub_26659236C(a6, v41, &qword_28007D338, &qword_26666EEB0);
  sub_266669C38();
  if (a7 == 2)
  {
    sub_266669C48();
  }

  v46 = v95;
  v47 = v96;
  v48 = v94;
  v49 = v88;
  v88 = a9;
  sub_266669C58();
  sub_26659236C(v46, v24, &unk_28007DE20, &unk_26666EAE0);
  OUTLINED_FUNCTION_4_19(v24);
  if (v50)
  {
    sub_266557D74(v24, &unk_28007DE20, &unk_26666EAE0);
  }

  else
  {
    (*(v47 + 32))(v48, v24, v25);
    v51 = v89;
    sub_266669BD8();
    if (qword_28156C150 != -1)
    {
      swift_once();
    }

    v84 = v16;
    v52 = sub_26666C168();
    __swift_project_value_buffer(v52, qword_28156D7E8);
    v53 = *(v47 + 16);
    v54 = v85;
    v53(v85, v51, v25);
    v82 = v47 + 16;
    v83 = v53;
    v53(v49, v48, v25);
    v55 = sub_26666C148();
    v56 = sub_26666C618();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v97[0] = v81;
      *v57 = 136315394;
      sub_2665BA7D0();
      v80 = v55;
      v58 = sub_26666CAA8();
      v79 = v56;
      v60 = v59;
      v61 = v54;
      v62 = *(v96 + 8);
      v62(v61, v25);
      v63 = sub_2665BFC90(v58, v60, v97);

      *(v57 + 4) = v63;
      *(v57 + 12) = 2080;
      v64 = sub_26666CAA8();
      v66 = v65;
      v62(v49, v25);
      v48 = v94;
      v67 = sub_2665BFC90(v64, v66, v97);
      v47 = v96;

      *(v57 + 14) = v67;
      v68 = v80;
      _os_log_impl(&dword_266549000, v80, v79, "[OutputHelper] overriding default response mode of %s to %s", v57, 0x16u);
      v69 = v81;
      swift_arrayDestroy();
      v70 = v69;
      v71 = v89;
      MEMORY[0x266789690](v70, -1, -1);
      v72 = v57;
      v46 = v95;
      MEMORY[0x266789690](v72, -1, -1);
    }

    else
    {

      v73 = v54;
      v62 = *(v47 + 8);
      v62(v49, v25);
      v62(v73, v25);
      v71 = v89;
    }

    v83(v86, v48, v25);
    sub_266669BE8();
    v62(v71, v25);
    v62(v48, v25);
    v16 = v84;
  }

  v74 = v91;
  sub_26659236C(v46, v91, &unk_28007DE20, &unk_26666EAE0);
  OUTLINED_FUNCTION_4_19(v74);
  v75 = v92;
  v76 = v93;
  if (v50)
  {
    sub_266669BD8();
    OUTLINED_FUNCTION_4_19(v74);
    if (!v50)
    {
      sub_266557D74(v74, &unk_28007DE20, &unk_26666EAE0);
    }
  }

  else
  {
    (*(v47 + 32))(v90, v74, v25);
  }

  sub_266669BE8();
  sub_26659236C(v88, v16, &qword_28007D330, &unk_26666EEA0);
  if (__swift_getEnumTagSinglePayload(v16, 1, v75) == 1)
  {
    sub_266669BF8();
    if (__swift_getEnumTagSinglePayload(v16, 1, v75) != 1)
    {
      sub_266557D74(v16, &qword_28007D330, &unk_26666EEA0);
    }
  }

  else
  {
    (*(v87 + 32))(v76, v16, v75);
  }

  sub_266669C08();
  if (a10 == 2)
  {
    sub_266669C88();
  }

  sub_266669C98();
  if (a11 == 2)
  {
    sub_266669C68();
  }

  return sub_266669C78();
}

unint64_t sub_2665BA7D0()
{
  result = qword_28007D340;
  if (!qword_28007D340)
  {
    sub_26666BB08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007D340);
  }

  return result;
}

uint64_t sub_2665BA878(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D7269666E6F63 && a2 == 0xE900000000000064;
  if (v4 || (sub_26666CAC8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x64657463656A6572 && a2 == 0xE800000000000000;
    if (v6 || (sub_26666CAC8() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x656C6C65636E6163 && a2 == 0xE900000000000064)
    {

      return 2;
    }

    else
    {
      v8 = sub_26666CAC8();

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

uint64_t sub_2665BA998(char a1)
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

uint64_t sub_2665BA9F0(uint64_t a1)
{
  v2 = sub_2665BAF70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2665BAA2C(uint64_t a1)
{
  v2 = sub_2665BAF70();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2665BAA70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2665BA878(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2665BAA98(uint64_t a1)
{
  v2 = sub_2665BAF1C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2665BAAD4(uint64_t a1)
{
  v2 = sub_2665BAF1C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2665BAB10(uint64_t a1)
{
  v2 = sub_2665BB018();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2665BAB4C(uint64_t a1)
{
  v2 = sub_2665BB018();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2665BAB88(uint64_t a1)
{
  v2 = sub_2665BAFC4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2665BABC4(uint64_t a1)
{
  v2 = sub_2665BAFC4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DIConfirmationResponse.encode(to:)(void *a1, int a2)
{
  v42 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E3B0, &qword_266674130);
  OUTLINED_FUNCTION_3_0();
  v40 = v4;
  v41 = v3;
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v5);
  v39 = &v35 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E3B8, &qword_266674138);
  OUTLINED_FUNCTION_3_0();
  v37 = v8;
  v38 = v7;
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v9);
  v11 = &v35 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E3C0, &qword_266674140);
  OUTLINED_FUNCTION_3_0();
  v36 = v13;
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v14);
  v16 = &v35 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E3C8, &qword_266674148);
  OUTLINED_FUNCTION_3_0();
  v19 = v18;
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v20);
  v22 = &v35 - v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2665BAF1C();
  sub_26666CBE8();
  v23 = (v19 + 8);
  if (v42)
  {
    if (v42 == 1)
    {
      v44 = 1;
      v24 = sub_2665BAFC4();
      OUTLINED_FUNCTION_6_8(&type metadata for DIConfirmationResponse.RejectedCodingKeys, &v44, v25, v26, v24);
      (*(v37 + 8))(v11, v38);
    }

    else
    {
      v45 = 2;
      v30 = sub_2665BAF70();
      v31 = v39;
      OUTLINED_FUNCTION_6_8(&type metadata for DIConfirmationResponse.CancelledCodingKeys, &v45, v32, v33, v30);
      (*(v40 + 8))(v31, v41);
    }
  }

  else
  {
    v43 = 0;
    v27 = sub_2665BB018();
    OUTLINED_FUNCTION_6_8(&type metadata for DIConfirmationResponse.ConfirmedCodingKeys, &v43, v28, v29, v27);
    (*(v36 + 8))(v16, v12);
  }

  return (*v23)(v22, v17);
}

unint64_t sub_2665BAF1C()
{
  result = qword_28007E3D0;
  if (!qword_28007E3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E3D0);
  }

  return result;
}