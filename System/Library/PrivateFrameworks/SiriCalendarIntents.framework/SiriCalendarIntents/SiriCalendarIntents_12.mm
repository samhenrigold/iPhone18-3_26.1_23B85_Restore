uint64_t sub_2666566C8()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_26_13(v0[16]);
  v0[39] = OUTLINED_FUNCTION_33_11();
  swift_task_alloc();
  OUTLINED_FUNCTION_23_1();
  v0[40] = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_4_44(v1);

  return sub_266656E70(v3, v4, v5);
}

uint64_t sub_266656748()
{
  v2 = *v1;
  OUTLINED_FUNCTION_11_2();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 328) = v0;

  OUTLINED_FUNCTION_4_14();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_266656874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, char a10, __int16 a11, __int128 a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_9_3();
  v15 = *(v14 + 328);
  v16 = *(v14 + 344);
  v17 = *(v14 + 208);
  type metadata accessor for Snippet(0);
  v18 = OUTLINED_FUNCTION_14_16();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
  *(v14 + 56) = v16;
  *(v14 + 80) = &type metadata for CreateEvent.Parameter;
  *(v14 + 88) = &off_28780A1C0;
  sub_266663128(v17);
  if (v15)
  {
    v23 = *(v14 + 216);
    v22 = *(v14 + 224);

    sub_26656CAEC(v23, &unk_28007DE30, &unk_26666EAF0);
    sub_26656CAEC(v22, &unk_28007DE30, &unk_26666EAF0);
    __swift_destroy_boxed_opaque_existential_1((v14 + 56));
    __swift_destroy_boxed_opaque_existential_1((v14 + 16));

    OUTLINED_FUNCTION_24_1();

    return v24();
  }

  else
  {
    v26 = *(v14 + 208);
    v28 = *(v14 + 168);
    v27 = *(v14 + 176);
    __swift_destroy_boxed_opaque_existential_1((v14 + 56));
    v29 = sub_2666699C8();
    __swift_storeEnumTagSinglePayload(v26, 0, 1, v29);
    sub_2666696C8();
    v30 = sub_26666BB08();
    __swift_storeEnumTagSinglePayload(v27, 1, 1, v30);
    v31 = sub_266669788();
    __swift_storeEnumTagSinglePayload(v28, 1, 1, v31);
    sub_26656CFC4();
    swift_task_alloc();
    OUTLINED_FUNCTION_23_1();
    *(v14 + 336) = v32;
    *v32 = v33;
    v32[1] = sub_266656AFC;
    v34 = *(v14 + 280);
    v36 = *(v14 + 216);
    v35 = *(v14 + 224);
    v38 = *(v14 + 200);
    v37 = *(v14 + 208);
    v39 = *(v14 + 144);

    return sub_2665643AC(v39, v35, v36, v34, 0, 0, v37, v38, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_266656AFC()
{
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_5_1();
  v2 = v1[28];
  v3 = v1[27];
  v4 = v1[26];
  v5 = v1[25];
  v6 = v1[24];
  v7 = v1[23];
  v8 = v1[22];
  v9 = v1[21];
  v10 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v11 = v10;

  sub_26656CAEC(v9, &qword_28007D330, &unk_26666EEA0);
  sub_26656CAEC(v8, &unk_28007DE20, &unk_26666EAE0);
  (*(v6 + 8))(v5, v7);
  sub_26656CAEC(v4, &qword_28007D338, &qword_26666EEB0);
  sub_26656CAEC(v3, &unk_28007DE30, &unk_26666EAF0);
  sub_26656CAEC(v2, &unk_28007DE30, &unk_26666EAF0);
  OUTLINED_FUNCTION_4_14();
  OUTLINED_FUNCTION_4_7();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_266656D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_28_11();
  OUTLINED_FUNCTION_14_8();
  OUTLINED_FUNCTION_16_19();

  __swift_destroy_boxed_opaque_existential_1((v10 + 16));

  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_5_33();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

uint64_t sub_266656DC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_28_11();
  OUTLINED_FUNCTION_14_8();

  __swift_destroy_boxed_opaque_existential_1((v10 + 16));
  OUTLINED_FUNCTION_16_19();

  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_5_33();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18, a9, a10);
}

uint64_t sub_266656E70(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 32) = a3;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  return MEMORY[0x2822009F8](sub_266656E94, 0, 0);
}

uint64_t sub_266656E94()
{
  OUTLINED_FUNCTION_14();
  switch(*(v0 + 32))
  {
    case 1:
    case 2:
    case 3:
      v1 = sub_26666CAC8();

      if (v1)
      {
        goto LABEL_4;
      }

      type metadata accessor for Snippet(0);
      v7 = OUTLINED_FUNCTION_14_16();
      break;
    default:

LABEL_4:
      v2 = [*(v0 + 24) dateTimeRange];
      v3 = v2;
      if (v2)
      {
      }

      v4 = v3 != 0;
      v5 = *(v0 + 16);
      *v5 = v4;
      v6 = type metadata accessor for Snippet(0);
      swift_storeEnumTagMultiPayload();
      v7 = v5;
      v8 = 0;
      v9 = 1;
      v10 = v6;
      break;
  }

  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  OUTLINED_FUNCTION_5_3();

  return v11();
}

uint64_t sub_266657014()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26656CD98;

  return sub_266654674();
}

uint64_t sub_2666570C4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26656C894;

  return sub_266655F28();
}

unint64_t sub_266657170()
{
  result = qword_28007FEB0;
  if (!qword_28007FEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FEB0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_9_27()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_17_16()
{
}

uint64_t OUTLINED_FUNCTION_18_12()
{

  return sub_26666C168();
}

uint64_t OUTLINED_FUNCTION_19_20()
{
}

uint64_t OUTLINED_FUNCTION_25_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  result = *(v12 + 104);
  *(v11 + 14) = v13;
  *a11 = v13;
  return result;
}

uint64_t OUTLINED_FUNCTION_26_13@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 160);
  *(v1 + 280) = a1;

  return sub_26655358C(v3 + 96, v1 + 16);
}

void OUTLINED_FUNCTION_27_18(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, os_log_type_t a14)
{

  _os_log_impl(a1, v14, a14, a4, v15, 0x16u);
}

uint64_t OUTLINED_FUNCTION_33_11()
{
  v1 = *(v0 + 40);
  *(v0 + 288) = v1;
  *(v0 + 304) = __swift_project_boxed_opaque_existential_1((v0 + 16), v1);

  return sub_266669CB8();
}

uint64_t OUTLINED_FUNCTION_39_7(float a1)
{
  *v1 = a1;

  return sub_266669CD8();
}

uint64_t OUTLINED_FUNCTION_40_5()
{
}

uint64_t type metadata accessor for CreateEventCATsSimple(uint64_t a1)
{
  result = qword_28007FEC8;
  if (!qword_28007FEC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2666574B4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007D130, &unk_266671DF0);
  v3[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266657554, 0, 0);
}

uint64_t sub_266657554()
{
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DB88, &unk_2666727F0);
  v2 = swift_allocObject();
  v0[6] = v2;
  *(v2 + 16) = xmmword_266671D70;
  *(v2 + 32) = 0x746E657665;
  *(v2 + 40) = 0xE500000000000000;
  v3 = 0;
  if (v1)
  {
    v3 = type metadata accessor for CalendarEventConcept(0);
  }

  else
  {
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  v4 = v0[5];
  v5 = v0[3];
  *(v2 + 48) = v1;
  *(v2 + 72) = v3;
  strcpy((v2 + 80), "calendarName");
  *(v2 + 93) = 0;
  *(v2 + 94) = -5120;
  sub_26659236C(v5, v4, &unk_28007D130, &unk_266671DF0);
  v6 = sub_26666BDA8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v4, 1, v6);
  v8 = v0[5];
  if (EnumTagSinglePayload == 1)
  {

    sub_266557D74(v8, &unk_28007D130, &unk_266671DF0);
    *(v2 + 96) = 0u;
    *(v2 + 112) = 0u;
  }

  else
  {
    *(v2 + 120) = v6;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v2 + 96));
    (*(*(v6 - 8) + 32))(boxed_opaque_existential_1, v8, v6);
  }

  OUTLINED_FUNCTION_7_9(MEMORY[0x277D55C70]);
  v13 = v10;
  v11 = swift_task_alloc();
  v0[7] = v11;
  *v11 = v0;
  v11[1] = sub_266657760;
  OUTLINED_FUNCTION_3_39();

  return v13(0xD000000000000019);
}

uint64_t sub_266657760()
{
  OUTLINED_FUNCTION_11();
  v3 = v2;
  v4 = *v1;
  *(v4 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2666578B8, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(v3);
  }
}

uint64_t sub_2666578B8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_266657924()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_7_9(MEMORY[0x277D55C70]);
  v4 = v1;
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_2666579D8;
  OUTLINED_FUNCTION_3_39();

  return v4(0xD000000000000019);
}

uint64_t sub_2666579D8(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_266657AD8()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_7_9(MEMORY[0x277D55C70]);
  v4 = v1;
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_266657F18;
  OUTLINED_FUNCTION_3_39();

  return v4(0xD00000000000001ALL);
}

uint64_t sub_266657B8C()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_7_9(MEMORY[0x277D55C70]);
  v4 = v1;
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_266657F18;
  OUTLINED_FUNCTION_3_39();

  return v4(0xD000000000000023);
}

uint64_t sub_266657C94(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_266657E10(uint64_t a1, uint64_t a2)
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

uint64_t sub_266657F30(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 178))
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

uint64_t sub_266657F70(uint64_t result, int a2, int a3)
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
    *(result + 176) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 178) = 1;
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

    *(result + 178) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_266657FF0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26666BB08();
  OUTLINED_FUNCTION_17_2();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_0();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F428, &qword_2666789A0);
  OUTLINED_FUNCTION_18_2();
  MEMORY[0x28223BE20](v11);
  v13 = &v41 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE20, &unk_26666EAE0);
  MEMORY[0x28223BE20](v14 - 8);
  OUTLINED_FUNCTION_10_5();
  v17 = v15 - v16;
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v41 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v41 - v22;
  if (*(v1 + 176) == 1)
  {
    v42 = a1;
    sub_26666BA48();
    if (sub_26666BA38())
    {
      sub_26666BA28();

      sub_26666C028();

      v24 = 0;
    }

    else
    {
      v24 = 1;
    }

    __swift_storeEnumTagSinglePayload(v23, v24, 1, v3);
    sub_26666BAF8();
    OUTLINED_FUNCTION_26_2();
    __swift_storeEnumTagSinglePayload(v29, v30, v31, v3);
    v32 = *(v10 + 48);
    OUTLINED_FUNCTION_69_3(v23, v13);
    OUTLINED_FUNCTION_69_3(v21, &v13[v32]);
    OUTLINED_FUNCTION_27_5(v13, 1, v3);
    if (v33)
    {
      OUTLINED_FUNCTION_121(v21);
      OUTLINED_FUNCTION_121(v23);
      OUTLINED_FUNCTION_27_5(&v13[v32], 1, v3);
      if (v33)
      {
        sub_26656CAEC(v13, &unk_28007DE20, &unk_26666EAE0);
LABEL_19:
        v35 = OUTLINED_FUNCTION_60_1();
        return __swift_storeEnumTagSinglePayload(v35, v36, 1, v3);
      }
    }

    else
    {
      sub_2665A17F8(v13, v17, &unk_28007DE20, &unk_26666EAE0);
      OUTLINED_FUNCTION_27_5(&v13[v32], 1, v3);
      if (!v33)
      {
        (*(v5 + 32))(v9, &v13[v32], v3);
        OUTLINED_FUNCTION_14_17();
        sub_26665E700(v37, v38, MEMORY[0x277D61CD8]);
        v39 = sub_26666C2E8();
        v40 = *(v5 + 8);
        v40(v9, v3);
        sub_26656CAEC(v21, &unk_28007DE20, &unk_26666EAE0);
        sub_26656CAEC(v23, &unk_28007DE20, &unk_26666EAE0);
        v40(v17, v3);
        sub_26656CAEC(v13, &unk_28007DE20, &unk_26666EAE0);
        v34 = v42;
        if (v39)
        {
          goto LABEL_19;
        }

LABEL_17:
        sub_26666BAE8();
        v35 = v34;
        v36 = 0;
        return __swift_storeEnumTagSinglePayload(v35, v36, 1, v3);
      }

      OUTLINED_FUNCTION_121(v21);
      OUTLINED_FUNCTION_121(v23);
      (*(v5 + 8))(v17, v3);
    }

    sub_26656CAEC(v13, &qword_28007F428, &qword_2666789A0);
    v34 = v42;
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_7_6();

  return __swift_storeEnumTagSinglePayload(v25, v26, v27, v3);
}

uint64_t sub_266658428(uint64_t a1, void *a2)
{
  v3 = sub_26666BB08();
  OUTLINED_FUNCTION_17_2();
  v76 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_0();
  v72 = v7 - v6;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F428, &qword_2666789A0);
  OUTLINED_FUNCTION_18_2();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_10_8();
  MEMORY[0x28223BE20](v9);
  v11 = &v68[-v10];
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE20, &unk_26666EAE0);
  OUTLINED_FUNCTION_18_2();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_10_8();
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v68[-v15];
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_10_8();
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v68[-v19];
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v68[-v22];
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v68[-v25];
  MEMORY[0x28223BE20](v24);
  v28 = &v68[-v27];
  sub_26662571C(a2);
  sub_26666BA48();
  if (sub_26666BA38())
  {
    sub_26666BA28();

    sub_26666C028();

    v29 = 0;
  }

  else
  {
    v29 = 1;
  }

  __swift_storeEnumTagSinglePayload(v28, v29, 1, v3);
  if (sub_2665C485C() < 2)
  {
    v33 = 0;
LABEL_27:
    v39 = v78;
    goto LABEL_28;
  }

  v70 = v16;
  sub_26666BAF8();
  OUTLINED_FUNCTION_26_2();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v3);
  v16 = *(v77 + 48);
  OUTLINED_FUNCTION_69_3(v28, v11);
  OUTLINED_FUNCTION_69_3(v26, &v11[v16]);
  OUTLINED_FUNCTION_1_28(v11);
  if (v34)
  {
    sub_26656CAEC(v26, &unk_28007DE20, &unk_26666EAE0);
    OUTLINED_FUNCTION_1_28(&v11[v16]);
    if (v34)
    {
      sub_26656CAEC(v11, &unk_28007DE20, &unk_26666EAE0);
LABEL_26:
      v33 = 1;
      OUTLINED_FUNCTION_64_2();
      goto LABEL_27;
    }

    goto LABEL_14;
  }

  sub_2665A17F8(v11, v23, &unk_28007DE20, &unk_26666EAE0);
  OUTLINED_FUNCTION_1_28(&v11[v16]);
  if (v34)
  {
    sub_26656CAEC(v26, &unk_28007DE20, &unk_26666EAE0);
    (*(v76 + 8))(v23, v3);
LABEL_14:
    sub_26656CAEC(v11, &qword_28007F428, &qword_2666789A0);
    goto LABEL_15;
  }

  v42 = v72;
  (*(v76 + 32))(v72, &v11[v16], v3);
  OUTLINED_FUNCTION_14_17();
  sub_26665E700(v43, v44, MEMORY[0x277D61CD8]);
  v69 = sub_26666C2E8();
  v16 = v76 + 8;
  v45 = *(v76 + 8);
  v45(v42, v3);
  sub_26656CAEC(v26, &unk_28007DE20, &unk_26666EAE0);
  v45(v23, v3);
  sub_26656CAEC(v11, &unk_28007DE20, &unk_26666EAE0);
  if (v69)
  {
    goto LABEL_26;
  }

LABEL_15:
  sub_26666BAE8();
  OUTLINED_FUNCTION_26_2();
  __swift_storeEnumTagSinglePayload(v35, v36, v37, v3);
  v16 = *(v77 + 48);
  v38 = v73;
  sub_2665A17F8(v28, v73, &unk_28007DE20, &unk_26666EAE0);
  sub_2665A17F8(v20, v38 + v16, &unk_28007DE20, &unk_26666EAE0);
  OUTLINED_FUNCTION_1_28(v38);
  if (v34)
  {
    sub_26656CAEC(v20, &unk_28007DE20, &unk_26666EAE0);
    OUTLINED_FUNCTION_1_28(v38 + v16);
    v39 = v78;
    if (v34)
    {
      sub_26656CAEC(v38, &unk_28007DE20, &unk_26666EAE0);
      v33 = 1;
      OUTLINED_FUNCTION_64_2();
      goto LABEL_28;
    }

    goto LABEL_23;
  }

  v40 = v71;
  sub_2665A17F8(v38, v71, &unk_28007DE20, &unk_26666EAE0);
  OUTLINED_FUNCTION_1_28(v38 + v16);
  if (v41)
  {
    sub_26656CAEC(v20, &unk_28007DE20, &unk_26666EAE0);
    (*(v76 + 8))(v40, v3);
    v39 = v78;
LABEL_23:
    sub_26656CAEC(v38, &qword_28007F428, &qword_2666789A0);
    OUTLINED_FUNCTION_64_2();
LABEL_24:
    v33 = *(v39 + 176);
    goto LABEL_28;
  }

  v62 = v76;
  v63 = v72;
  (*(v76 + 32))(v72, v38 + v16, v3);
  OUTLINED_FUNCTION_14_17();
  sub_26665E700(v64, v65, MEMORY[0x277D61CD8]);
  v16 = v40;
  v66 = sub_26666C2E8();
  v67 = *(v62 + 8);
  v67(v63, v3);
  sub_26656CAEC(v20, &unk_28007DE20, &unk_26666EAE0);
  v67(v16, v3);
  sub_26656CAEC(v38, &unk_28007DE20, &unk_26666EAE0);
  OUTLINED_FUNCTION_64_2();
  v39 = v78;
  if ((v66 & 1) == 0)
  {
    goto LABEL_24;
  }

  v33 = 1;
LABEL_28:
  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_28156C150);
  }

  v46 = sub_26666C168();
  __swift_project_value_buffer(v46, qword_28156D7E8);
  sub_26664F318(v39, v80);
  sub_2665A17F8(v28, v16, &unk_28007DE20, &unk_26666EAE0);

  v47 = sub_26666C148();
  v48 = sub_26666C618();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = v16;
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v79 = v51;
    *v50 = 67109890;
    *(v50 + 4) = v33;
    *(v50 + 8) = 2048;
    v52 = sub_2665C485C();
    LODWORD(v78) = v33;
    v53 = v52;

    *(v50 + 10) = v53;

    *(v50 + 18) = 1024;
    v54 = v80[176];
    sub_26665E768(v80);
    *(v50 + 20) = v54;
    *(v50 + 24) = 2080;
    sub_2665A17F8(v49, v74, &unk_28007DE20, &unk_26666EAE0);
    v55 = sub_26666C318();
    v57 = v56;
    sub_26656CAEC(v49, &unk_28007DE20, &unk_26666EAE0);
    v58 = sub_2665BFC90(v55, v57, &v79);

    *(v50 + 26) = v58;
    _os_log_impl(&dword_266549000, v47, v48, "FindEvents.FlowProducer] ShouldUseReadingFlow: %{BOOL}d, Event Count: %ld, explicitReadVerb: %{BOOL}d, responseMode: %s", v50, 0x22u);
    __swift_destroy_boxed_opaque_existential_1(v51);
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_4_1();

    v59 = OUTLINED_FUNCTION_32_10();
    v33 = v78;
  }

  else
  {
    sub_26665E768(v80);

    swift_bridgeObjectRelease_n();
    sub_26656CAEC(v16, &unk_28007DE20, &unk_26666EAE0);
    v59 = OUTLINED_FUNCTION_25();
  }

  sub_26656CAEC(v59, v60, &unk_26666EAE0);
  return v33;
}

uint64_t sub_266658D54(void *a1, void *a2)
{
  v3 = v2;
  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_28156C150);
  }

  v6 = sub_26666C168();
  __swift_project_value_buffer(v6, qword_28156D7E8);
  v7 = sub_26666C148();
  v8 = sub_26666C618();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = OUTLINED_FUNCTION_20();
    *v9 = 0;
    _os_log_impl(&dword_266549000, v7, v8, "[FindEvents.ResponseStrategy] Making reading flow", v9, 2u);
    OUTLINED_FUNCTION_4_1();
  }

  sub_26655358C(v3 + 136, v18);
  __swift_mutable_project_boxed_opaque_existential_1(v18, v18[3]);
  OUTLINED_FUNCTION_17_2();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_0();
  v13 = v12 - v11;
  (*(v14 + 16))(v12 - v11);
  v15 = sub_26665E4F8(a1, a2, v13);
  __swift_destroy_boxed_opaque_existential_1(v18);
  v18[0] = v15;
  type metadata accessor for EventReadingFlow(0);
  sub_26665E700(&qword_28007F038, type metadata accessor for EventReadingFlow, &unk_266677AA0);
  v16 = sub_266669528();

  return v16;
}

uint64_t sub_266658F50()
{
  OUTLINED_FUNCTION_14();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = sub_2666699C8();
  v1[6] = v5;
  v1[7] = *(v5 - 8);
  v1[8] = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_266659008()
{
  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_28156C150);
  }

  v2 = sub_26666C168();
  __swift_project_value_buffer(v2, qword_28156D7E8);
  v3 = sub_26666C148();
  v4 = sub_26666C618();
  if (OUTLINED_FUNCTION_9(v4))
  {
    v5 = OUTLINED_FUNCTION_20();
    *v5 = 0;
    _os_log_impl(&dword_266549000, v3, v0, "[FindEvents.ResponseStrategy] Making handle intent response", v5, 2u);
    OUTLINED_FUNCTION_4_1();
  }

  v6 = v1[4];

  v7 = sub_26662571C(v6);
  v1[9] = v7;
  if (v7)
  {
    v8 = v7;
    if (sub_2665C485C())
    {
      sub_2666699B8();
      if (qword_28007CE30 != -1)
      {
        swift_once();
      }

      sub_26666A0F8();
      sub_266669908();
      sub_2665E8C94(0xD000000000000013, 0x800000026667D670);
      sub_2666698E8();
      if (sub_2665C485C() == 1)
      {
        sub_2665C4864();
        if ((v8 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x266788B60](0, v8);
        }

        else
        {
          v9 = *(v8 + 32);
        }

        v10 = v9;
        v1[10] = v9;

        v11 = sub_26666C148();
        v12 = sub_26666C618();
        if (OUTLINED_FUNCTION_9(v12))
        {
          *OUTLINED_FUNCTION_20() = 0;
          OUTLINED_FUNCTION_4_0(&dword_266549000, v13, v14, "[FindEvents.ResponseStrategy] Exactly one event in intent response, making single event output");
          OUTLINED_FUNCTION_4_1();
        }

        swift_task_alloc();
        OUTLINED_FUNCTION_23_1();
        v1[11] = v15;
        *v15 = v16;
        v15[1] = sub_2666593F4;
        v17 = OUTLINED_FUNCTION_51_5();

        return sub_26665AE50(v17, v18, v10, v19);
      }

      else
      {
        v29 = sub_26666C148();
        v30 = sub_26666C618();
        if (os_log_type_enabled(v29, v30))
        {
          v31 = OUTLINED_FUNCTION_20();
          *v31 = 0;
          _os_log_impl(&dword_266549000, v29, v30, "[FindEvents.ResponseStrategy] Multiple events in intent response, making multi event output", v31, 2u);
          OUTLINED_FUNCTION_4_1();
        }

        swift_task_alloc();
        OUTLINED_FUNCTION_23_1();
        v1[13] = v32;
        *v32 = v33;
        v32[1] = sub_266659564;
        v34 = OUTLINED_FUNCTION_51_5();

        return sub_26665C564(v34, v35, v8, v36);
      }
    }
  }

  v21 = sub_26666C148();
  v22 = sub_26666C618();
  if (OUTLINED_FUNCTION_9(v22))
  {
    *OUTLINED_FUNCTION_20() = 0;
    OUTLINED_FUNCTION_4_0(&dword_266549000, v23, v24, "[FindEvents.ResponseStrategy] No events in intent response, making no results output");
    OUTLINED_FUNCTION_4_1();
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_23_1();
  v1[15] = v25;
  *v25 = v26;
  v25[1] = sub_2666596E8;
  v27 = OUTLINED_FUNCTION_51_5();

  return sub_2666598D4(v27, v28);
}

uint64_t sub_2666593F4()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  v2 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v3 = v2;
  *(v4 + 96) = v0;

  OUTLINED_FUNCTION_4_14();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2666594F4()
{
  OUTLINED_FUNCTION_14();

  v1 = OUTLINED_FUNCTION_34_9();
  v2(v1);

  OUTLINED_FUNCTION_5_3();

  return v3();
}

uint64_t sub_266659564()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  v2 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v3 = v2;
  *(v4 + 112) = v0;

  OUTLINED_FUNCTION_4_14();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_266659680()
{
  OUTLINED_FUNCTION_14();
  v0 = OUTLINED_FUNCTION_34_9();
  v1(v0);

  OUTLINED_FUNCTION_5_3();

  return v2();
}

uint64_t sub_2666596E8()
{
  OUTLINED_FUNCTION_11();
  v1 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_2666597F4()
{
  OUTLINED_FUNCTION_14();

  v1 = OUTLINED_FUNCTION_34_9();
  v2(v1);

  OUTLINED_FUNCTION_24_1();

  return v3();
}

uint64_t sub_266659868()
{
  OUTLINED_FUNCTION_14();
  v0 = OUTLINED_FUNCTION_34_9();
  v1(v0);

  OUTLINED_FUNCTION_24_1();

  return v2();
}

uint64_t sub_2666598D4(uint64_t a1, uint64_t a2)
{
  v3[28] = a2;
  v3[29] = v2;
  v3[27] = a1;
  v3[30] = type metadata accessor for Snippet(0);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v4 = sub_266669CA8();
  v3[35] = v4;
  v3[36] = *(v4 - 8);
  v3[37] = swift_task_alloc();
  v5 = sub_266669708();
  v3[38] = v5;
  v3[39] = *(v5 - 8);
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D330, &unk_26666EEA0);
  v3[42] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE20, &unk_26666EAE0);
  v3[43] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D338, &qword_26666EEB0);
  v3[44] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE30, &unk_26666EAF0);
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();
  v3[47] = swift_task_alloc();
  v3[48] = swift_task_alloc();
  v3[49] = swift_task_alloc();
  v3[50] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266659B70, 0, 0);
}

uint64_t sub_266659B70()
{
  OUTLINED_FUNCTION_11();
  v2 = v0[29];
  v1 = v0[30];
  sub_2666257C8(v2 + 16, (v0 + 2));
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v1);
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v1);
  v9 = swift_task_alloc();
  v0[51] = v9;
  *v9 = v0;
  v9[1] = sub_266659C44;
  v10 = v0[28];

  return sub_26658E584(v10, v2 + 96);
}

uint64_t sub_266659C44()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_5_1();
  v3 = v2;
  OUTLINED_FUNCTION_15_1();
  *v4 = v3;
  *v4 = *v1;
  v3[52] = v5;
  v3[53] = v0;

  if (v0)
  {
    v6 = v3[50];
    sub_26656CAEC(v3[49], &unk_28007DE30, &unk_26666EAF0);
    sub_26656CAEC(v6, &unk_28007DE30, &unk_26666EAF0);
    sub_26656CC94((v3 + 2));
  }

  OUTLINED_FUNCTION_4_14();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_266659D84()
{
  v1 = v0[52];
  v92 = v0[48];
  v93 = v0[50];
  v2 = v0[43];
  v3 = v0[44];
  v4 = v0[41];
  v5 = v0[42];
  v6 = v0[39];
  v7 = v0[40];
  v90 = v0[38];
  v91 = v0[30];
  sub_2666699C8();
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  sub_266657FF0(v2);
  sub_266669788();
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  sub_2666696A8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE50, &unk_26666E360);
  v16 = swift_allocObject();
  v0[54] = v16;
  *(v16 + 16) = xmmword_26666E050;
  *(v16 + 32) = v1;
  v17 = *(v6 + 16);
  v18 = v1;
  v17(v7, v4, v90);
  v19 = swift_task_alloc();
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  *(v19 + 32) = 0;
  *(v19 + 40) = v16;
  *(v19 + 48) = v3;
  *(v19 + 56) = 2;
  *(v19 + 64) = v2;
  *(v19 + 72) = v5;
  *(v19 + 80) = 514;
  sub_266669BC8();

  sub_2665A17F8(v93, v92, &unk_28007DE30, &unk_26666EAF0);
  v20 = OUTLINED_FUNCTION_51_3();
  OUTLINED_FUNCTION_27_5(v20, v21, v91);
  if (v33)
  {
    v22 = v0 + 48;
  }

  else
  {
    v23 = v0[30];
    OUTLINED_FUNCTION_0_46();
    sub_26665E648(v24, v25, v26);
    v27 = OUTLINED_FUNCTION_15_2();
    sub_2665A17F8(v27, v28, v29, v30);
    v31 = OUTLINED_FUNCTION_60_1();
    OUTLINED_FUNCTION_27_5(v31, v32, v23);
    if (!v33)
    {
      v63 = v0[33];
      v62 = v0[34];
      v64 = v0[30];
      OUTLINED_FUNCTION_0_46();
      sub_26665E648(v65, v63, v66);
      OUTLINED_FUNCTION_9_22();
      v0[20] = v64;
      OUTLINED_FUNCTION_2_43();
      v69 = sub_26665E700(v67, v68, &protocol conformance descriptor for Snippet);
      OUTLINED_FUNCTION_82_1(v69);
      OUTLINED_FUNCTION_2_16();
      sub_26665E6A4(v62, v70, v71);
      v0[25] = v64;
      v0[26] = v2;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 22);
      OUTLINED_FUNCTION_60_3(boxed_opaque_existential_1);
      swift_task_alloc();
      OUTLINED_FUNCTION_23_1();
      v0[55] = v73;
      *v73 = v74;
      v73[1] = sub_26665A334;
      OUTLINED_FUNCTION_14_2();

      return MEMORY[0x2821BB460](v75);
    }

    v22 = v0 + 47;
    OUTLINED_FUNCTION_3_18();
    sub_2665A6908(v34, v35);
  }

  v36 = v0[30];
  sub_26656CAEC(*v22, &unk_28007DE30, &unk_26666EAF0);
  v37 = OUTLINED_FUNCTION_15_2();
  sub_2665A17F8(v37, v38, &unk_28007DE30, &unk_26666EAF0);
  v39 = OUTLINED_FUNCTION_60_1();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v39, v40, v36);
  v42 = v0[30];
  if (EnumTagSinglePayload == 1)
  {
    sub_26656CAEC(v0[46], &unk_28007DE30, &unk_26666EAF0);
    v43 = OUTLINED_FUNCTION_15_2();
    sub_2665A17F8(v43, v44, &unk_28007DE30, &unk_26666EAF0);
    v45 = OUTLINED_FUNCTION_60_1();
    OUTLINED_FUNCTION_27_5(v45, v46, v42);
    if (v33)
    {
      sub_26656CAEC(v0[45], &unk_28007DE30, &unk_26666EAF0);
      OUTLINED_FUNCTION_9_22();
      swift_task_alloc();
      OUTLINED_FUNCTION_23_1();
      v0[58] = v47;
      *v47 = v48;
      v47[1] = sub_26665AAC4;
      OUTLINED_FUNCTION_18_13();
      OUTLINED_FUNCTION_14_2();

      return MEMORY[0x2821BB488](v49);
    }

    else
    {
      v77 = v0[30];
      v78 = v0[31];
      OUTLINED_FUNCTION_0_46();
      sub_26665E648(v79, v78, v80);
      OUTLINED_FUNCTION_9_22();
      v0[10] = v77;
      OUTLINED_FUNCTION_2_43();
      v0[11] = sub_26665E700(v81, v82, &protocol conformance descriptor for Snippet);
      __swift_allocate_boxed_opaque_existential_1(v0 + 7);
      OUTLINED_FUNCTION_2_16();
      sub_26665E6A4(v78, v83, v84);
      swift_task_alloc();
      OUTLINED_FUNCTION_23_1();
      v0[57] = v85;
      *v85 = v86;
      v85[1] = sub_26665A84C;
      OUTLINED_FUNCTION_14_2();

      return MEMORY[0x2821BB478](v87);
    }
  }

  else
  {
    v51 = v0[32];
    OUTLINED_FUNCTION_0_46();
    sub_26665E648(v52, v51, v53);
    OUTLINED_FUNCTION_9_22();
    v0[15] = v42;
    OUTLINED_FUNCTION_2_43();
    v0[16] = sub_26665E700(v54, v55, &protocol conformance descriptor for Snippet);
    __swift_allocate_boxed_opaque_existential_1(v0 + 12);
    OUTLINED_FUNCTION_2_16();
    sub_26665E6A4(v51, v56, v57);
    swift_task_alloc();
    OUTLINED_FUNCTION_23_1();
    v0[56] = v58;
    *v58 = v59;
    v58[1] = sub_26665A5D4;
    OUTLINED_FUNCTION_13_15();
    OUTLINED_FUNCTION_14_2();

    return MEMORY[0x2821BB468](v60);
  }
}

uint64_t sub_26665A334()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  v2 = v1;
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_1((v2 + 176));
  __swift_destroy_boxed_opaque_existential_1((v2 + 136));
  v6 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_26665A43C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_4();
  OUTLINED_FUNCTION_52_3();
  v23 = *(v20 + 264);
  v24 = *(v20 + 272);

  sub_2665A6908(v23, type metadata accessor for Snippet);
  sub_2665A6908(v24, type metadata accessor for Snippet);
  v25 = OUTLINED_FUNCTION_6_28();
  v26(v25);
  v27 = OUTLINED_FUNCTION_12_20();
  v28(v27);
  OUTLINED_FUNCTION_46_2();
  OUTLINED_FUNCTION_44_7();
  sub_26656CAEC(v21, &qword_28007D330, &unk_26666EEA0);
  sub_26656CAEC(v22, &unk_28007DE20, &unk_26666EAE0);
  sub_26656CAEC(v24, &qword_28007D338, &qword_26666EEB0);
  sub_26656CC94(v20 + 16);

  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_19_2();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_26665A5D4()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  v2 = v1;
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_1((v2 + 96));
  v6 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_26665A6D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_4();
  OUTLINED_FUNCTION_52_3();
  v23 = *(v20 + 256);

  OUTLINED_FUNCTION_3_18();
  sub_2665A6908(v23, v24);
  v25 = OUTLINED_FUNCTION_6_28();
  v26(v25);
  v27 = OUTLINED_FUNCTION_12_20();
  v28(v27);
  OUTLINED_FUNCTION_46_2();
  OUTLINED_FUNCTION_44_7();
  sub_26656CAEC(v21, &qword_28007D330, &unk_26666EEA0);
  sub_26656CAEC(v22, &unk_28007DE20, &unk_26666EAE0);
  sub_26656CAEC(v23, &qword_28007D338, &qword_26666EEB0);
  sub_26656CC94(v20 + 16);

  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_19_2();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_26665A84C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  v2 = v1;
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_1((v2 + 56));
  v6 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_26665A94C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_4();
  OUTLINED_FUNCTION_52_3();
  v23 = *(v20 + 248);

  OUTLINED_FUNCTION_3_18();
  sub_2665A6908(v23, v24);
  v25 = OUTLINED_FUNCTION_6_28();
  v26(v25);
  v27 = OUTLINED_FUNCTION_12_20();
  v28(v27);
  OUTLINED_FUNCTION_46_2();
  OUTLINED_FUNCTION_44_7();
  sub_26656CAEC(v21, &qword_28007D330, &unk_26666EEA0);
  sub_26656CAEC(v22, &unk_28007DE20, &unk_26666EAE0);
  sub_26656CAEC(v23, &qword_28007D338, &qword_26666EEB0);
  sub_26656CC94(v20 + 16);

  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_19_2();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_26665AAC4()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  v1 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_26665ABC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_4();
  OUTLINED_FUNCTION_52_3();

  v24 = OUTLINED_FUNCTION_6_28();
  v25(v24);
  v26 = OUTLINED_FUNCTION_12_20();
  v27(v26);
  OUTLINED_FUNCTION_46_2();
  OUTLINED_FUNCTION_44_7();
  sub_26656CAEC(v22, &qword_28007D330, &unk_26666EEA0);
  sub_26656CAEC(v23, &unk_28007DE20, &unk_26666EAE0);
  sub_26656CAEC(v20, &qword_28007D338, &qword_26666EEB0);
  sub_26656CC94(v21 + 16);

  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_19_2();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_26665AD2C()
{

  OUTLINED_FUNCTION_24_1();

  return v0();
}

uint64_t sub_26665AE50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[30] = a4;
  v5[31] = v4;
  v5[28] = a2;
  v5[29] = a3;
  v5[27] = a1;
  v5[32] = type metadata accessor for Snippet(0);
  v5[33] = swift_task_alloc();
  v5[34] = swift_task_alloc();
  v5[35] = swift_task_alloc();
  v5[36] = swift_task_alloc();
  v6 = sub_266669CA8();
  v5[37] = v6;
  v5[38] = *(v6 - 8);
  v5[39] = swift_task_alloc();
  v7 = sub_266669708();
  v5[40] = v7;
  v5[41] = *(v7 - 8);
  v5[42] = swift_task_alloc();
  v5[43] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D330, &unk_26666EEA0);
  v5[44] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE20, &unk_26666EAE0);
  v5[45] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D338, &qword_26666EEB0);
  v5[46] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE30, &unk_26666EAF0);
  v5[47] = swift_task_alloc();
  v5[48] = swift_task_alloc();
  v5[49] = swift_task_alloc();
  v5[50] = swift_task_alloc();
  v5[51] = swift_task_alloc();
  v5[52] = swift_task_alloc();
  type metadata accessor for Snippet.Event(0);
  v5[53] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26665B11C, 0, 0);
}

uint64_t sub_26665B11C()
{
  OUTLINED_FUNCTION_11();
  v1 = swift_task_alloc();
  *(v0 + 432) = v1;
  *v1 = v0;
  v1[1] = sub_26665B1C8;

  return sub_266642A8C();
}

uint64_t sub_26665B1C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47_4();
  OUTLINED_FUNCTION_52_3();
  OUTLINED_FUNCTION_5_1();
  v23 = v22;
  OUTLINED_FUNCTION_15_1();
  *v24 = v23;
  *v24 = *v21;
  v23[55] = v25;
  v23[56] = v20;

  if (v20)
  {
    v39 = v23[45];
    v40 = v23[44];
    v41 = v23[43];
    v42 = v23[42];
    v43 = v23[39];
    v44 = v23[36];
    v45 = v23[35];
    v46 = v23[34];

    OUTLINED_FUNCTION_24_1();
    OUTLINED_FUNCTION_19_2();

    return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, v39, v40, v41, v42, v43, v44, v45, v46, a18, a19, a20);
  }

  else
  {
    OUTLINED_FUNCTION_4_14();
    OUTLINED_FUNCTION_19_2();

    return MEMORY[0x2822009F8](v35, v36, v37);
  }
}

uint64_t sub_26665BB3C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  v2 = v1;
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_1((v2 + 176));
  __swift_destroy_boxed_opaque_existential_1((v2 + 136));
  v6 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_26665BC44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_115();
  OUTLINED_FUNCTION_56_3();
  v26 = OUTLINED_FUNCTION_26_14();
  sub_2665A6908(v26, v27);
  sub_2665A6908(v23, v22);
  v28 = OUTLINED_FUNCTION_5_34();
  v29(v28);
  v30 = OUTLINED_FUNCTION_31_12();
  v31(v30);
  v32 = OUTLINED_FUNCTION_32_10();
  sub_26656CAEC(v32, v33, &unk_26666EAF0);
  v34 = OUTLINED_FUNCTION_39_8();
  sub_26656CAEC(v34, v35, &unk_26666EAF0);
  sub_26656CAEC(v24, &qword_28007D330, &unk_26666EEA0);
  sub_26656CAEC(v25, &unk_28007DE20, &unk_26666EAE0);
  sub_26656CAEC(v23, &qword_28007D338, &qword_26666EEB0);

  OUTLINED_FUNCTION_7_29();

  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_64_0();

  return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_26665BDD8()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  v2 = v1;
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_1((v2 + 96));
  v6 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_26665BED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_115();
  OUTLINED_FUNCTION_56_3();
  OUTLINED_FUNCTION_3_18();
  sub_2665A6908(v25, v26);
  v27 = OUTLINED_FUNCTION_5_34();
  v28(v27);
  v29 = OUTLINED_FUNCTION_31_12();
  v30(v29);
  v31 = OUTLINED_FUNCTION_32_10();
  sub_26656CAEC(v31, v32, &unk_26666EAF0);
  v33 = OUTLINED_FUNCTION_39_8();
  sub_26656CAEC(v33, v34, &unk_26666EAF0);
  sub_26656CAEC(v23, &qword_28007D330, &unk_26666EEA0);
  sub_26656CAEC(v24, &unk_28007DE20, &unk_26666EAE0);
  sub_26656CAEC(v22, &qword_28007D338, &qword_26666EEB0);

  OUTLINED_FUNCTION_7_29();

  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_64_0();

  return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_26665C060()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  v2 = v1;
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_1((v2 + 56));
  v6 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_26665C160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_115();
  OUTLINED_FUNCTION_56_3();
  OUTLINED_FUNCTION_3_18();
  sub_2665A6908(v25, v26);
  v27 = OUTLINED_FUNCTION_5_34();
  v28(v27);
  v29 = OUTLINED_FUNCTION_31_12();
  v30(v29);
  v31 = OUTLINED_FUNCTION_32_10();
  sub_26656CAEC(v31, v32, &unk_26666EAF0);
  v33 = OUTLINED_FUNCTION_39_8();
  sub_26656CAEC(v33, v34, &unk_26666EAF0);
  sub_26656CAEC(v23, &qword_28007D330, &unk_26666EEA0);
  sub_26656CAEC(v24, &unk_28007DE20, &unk_26666EAE0);
  sub_26656CAEC(v22, &qword_28007D338, &qword_26666EEB0);

  OUTLINED_FUNCTION_7_29();

  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_64_0();

  return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_26665C2E8()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  v1 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_26665C3E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_115();
  OUTLINED_FUNCTION_56_3();
  v25 = OUTLINED_FUNCTION_5_34();
  v26(v25);
  v27 = OUTLINED_FUNCTION_31_12();
  v28(v27);
  v29 = OUTLINED_FUNCTION_32_10();
  sub_26656CAEC(v29, v30, &unk_26666EAF0);
  v31 = OUTLINED_FUNCTION_39_8();
  sub_26656CAEC(v31, v32, &unk_26666EAF0);
  sub_26656CAEC(v23, &qword_28007D330, &unk_26666EEA0);
  sub_26656CAEC(v24, &unk_28007DE20, &unk_26666EAE0);
  sub_26656CAEC(v22, &qword_28007D338, &qword_26666EEB0);

  OUTLINED_FUNCTION_7_29();

  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_64_0();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_26665C564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[30] = a4;
  v5[31] = v4;
  v5[28] = a2;
  v5[29] = a3;
  v5[27] = a1;
  v5[32] = type metadata accessor for Snippet(0);
  v5[33] = swift_task_alloc();
  v5[34] = swift_task_alloc();
  v5[35] = swift_task_alloc();
  v5[36] = swift_task_alloc();
  v6 = sub_266669CA8();
  v5[37] = v6;
  v5[38] = *(v6 - 8);
  v5[39] = swift_task_alloc();
  v7 = sub_266669708();
  v5[40] = v7;
  v5[41] = *(v7 - 8);
  v5[42] = swift_task_alloc();
  v5[43] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D330, &unk_26666EEA0);
  v5[44] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE20, &unk_26666EAE0);
  v5[45] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D338, &qword_26666EEB0);
  v5[46] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE30, &unk_26666EAF0);
  v5[47] = swift_task_alloc();
  v5[48] = swift_task_alloc();
  v5[49] = swift_task_alloc();
  v5[50] = swift_task_alloc();
  v5[51] = swift_task_alloc();
  v5[52] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D140, &qword_26666F140);
  v5[53] = swift_task_alloc();
  v5[54] = swift_task_alloc();
  v5[55] = swift_task_alloc();
  v5[56] = swift_task_alloc();
  v5[57] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26665C86C, 0, 0);
}

uint64_t sub_26665C86C()
{
  OUTLINED_FUNCTION_11();
  v1 = swift_task_alloc();
  *(v0 + 464) = v1;
  *v1 = v0;
  v1[1] = sub_26665C918;

  return sub_266641B5C();
}

uint64_t sub_26665C918()
{
  OUTLINED_FUNCTION_5_1();
  v3 = v2;
  OUTLINED_FUNCTION_15_1();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 472) = v5;
  *(v3 + 480) = v0;

  if (v0)
  {

    OUTLINED_FUNCTION_24_1();
    OUTLINED_FUNCTION_47_0();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_4_14();
  OUTLINED_FUNCTION_47_0();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_26665CB3C()
{
  v1 = [*(v0 + 224) dateTimeRange];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 startDate];

    if (v3)
    {
      sub_266668CE8();

      v4 = 0;
    }

    else
    {
      v4 = 1;
    }

    v10 = *(v0 + 440);
    v9 = *(v0 + 448);
    v5 = sub_266668D38();
    __swift_storeEnumTagSinglePayload(v10, v4, 1, v5);
    sub_266557CE4(v10, v9);
    v11 = OUTLINED_FUNCTION_60_1();
    OUTLINED_FUNCTION_27_5(v11, v12, v5);
    if (!v72)
    {
      (*(*(v5 - 8) + 32))(*(v0 + 456), *(v0 + 448), v5);
      goto LABEL_10;
    }
  }

  else
  {
    v5 = sub_266668D38();
    OUTLINED_FUNCTION_7_6();
    __swift_storeEnumTagSinglePayload(v6, v7, v8, v5);
  }

  sub_266668CF8();
  sub_266668D38();
  v13 = OUTLINED_FUNCTION_51_3();
  OUTLINED_FUNCTION_27_5(v13, v14, v5);
  if (!v72)
  {
    sub_26656CAEC(*(v0 + 448), &qword_28007D140, &qword_26666F140);
  }

LABEL_10:
  v15 = *(v0 + 224);
  sub_266668D38();
  OUTLINED_FUNCTION_26_2();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v5);
  v19 = [v15 dateTimeRange];
  if (v19)
  {
    v20 = v19;
    v21 = [v19 endDate];

    if (v21)
    {
      sub_266668CE8();

      v22 = 0;
    }

    else
    {
      v22 = 1;
    }

    v27 = *(v0 + 424);
    v26 = *(v0 + 432);
    __swift_storeEnumTagSinglePayload(v27, v22, 1, v5);
    sub_266557CE4(v27, v26);
  }

  else
  {
    OUTLINED_FUNCTION_7_6();
    __swift_storeEnumTagSinglePayload(v23, v24, v25, v5);
  }

  v28 = *(v0 + 480);
  v29 = *(v0 + 456);
  v30 = *(v0 + 432);
  v31 = *(v0 + 248);

  sub_2665E5D28(v32, v29, v30);
  sub_2666257C8(v31 + 16, v0 + 16);
  *(swift_task_alloc() + 16) = v31 + 56;
  sub_2665C26C0();
  v34 = *(v0 + 472);
  if (v28)
  {

    sub_26656CC94(v0 + 16);

    OUTLINED_FUNCTION_24_1();
    OUTLINED_FUNCTION_47_0();

    __asm { BRAA            X1, X16 }
  }

  v37 = v33;
  v38 = *(v0 + 416);
  v131 = *(v0 + 360);
  v132 = *(v0 + 352);
  v133 = *(v0 + 344);
  v134 = *(v0 + 336);
  v39 = *(v0 + 328);
  v135 = *(v0 + 320);
  v137 = *(v0 + 400);
  v40 = *(v0 + 256);
  v130 = *(v0 + 368);
  v129 = *(v0 + 240);

  *v38 = v37;
  *(v38 + 8) = 0;
  v136 = v40;
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_26_2();
  __swift_storeEnumTagSinglePayload(v41, v42, v43, v40);
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v44, v45, v46, v40);
  v47 = sub_2666699C8();
  OUTLINED_FUNCTION_18_2();
  (*(v48 + 16))(v130, v129, v47);
  OUTLINED_FUNCTION_26_2();
  __swift_storeEnumTagSinglePayload(v49, v50, v51, v47);
  sub_266657FF0(v131);
  sub_266669788();
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v52, v53, v54, v55);
  sub_2666696A8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE50, &unk_26666E360);
  v56 = swift_allocObject();
  *(v0 + 488) = v56;
  *(v56 + 16) = xmmword_26666E050;
  *(v56 + 32) = v34;
  v57 = *(v39 + 16);
  v58 = v34;
  v59 = v134;
  v57(v134, v133, v135);
  v60 = swift_task_alloc();
  *(v60 + 16) = 0;
  *(v60 + 24) = 0;
  *(v60 + 32) = 0;
  *(v60 + 40) = v56;
  *(v60 + 48) = v130;
  *(v60 + 56) = 2;
  *(v60 + 64) = v131;
  *(v60 + 72) = v132;
  *(v60 + 80) = 514;
  sub_266669BC8();

  sub_2665A17F8(v38, v137, &unk_28007DE30, &unk_26666EAF0);
  v61 = OUTLINED_FUNCTION_51_3();
  OUTLINED_FUNCTION_27_5(v61, v62, v136);
  if (!v72)
  {
    v59 = *(v0 + 256);
    OUTLINED_FUNCTION_0_46();
    sub_26665E648(v63, v64, v65);
    v66 = OUTLINED_FUNCTION_15_2();
    sub_2665A17F8(v66, v67, v68, v69);
    v70 = OUTLINED_FUNCTION_60_1();
    OUTLINED_FUNCTION_27_5(v70, v71, v59);
    if (!v72)
    {
      v102 = *(v0 + 280);
      v101 = *(v0 + 288);
      v103 = *(v0 + 256);
      OUTLINED_FUNCTION_0_46();
      sub_26665E648(v104, v102, v105);
      OUTLINED_FUNCTION_9_22();
      *(v0 + 160) = v103;
      OUTLINED_FUNCTION_2_43();
      v108 = sub_26665E700(v106, v107, &protocol conformance descriptor for Snippet);
      OUTLINED_FUNCTION_82_1(v108);
      OUTLINED_FUNCTION_2_16();
      sub_26665E6A4(v101, v109, v110);
      *(v0 + 200) = v103;
      *(v0 + 208) = v132;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 176));
      OUTLINED_FUNCTION_60_3(boxed_opaque_existential_1);
      swift_task_alloc();
      OUTLINED_FUNCTION_23_1();
      *(v0 + 496) = v112;
      *v112 = v113;
      OUTLINED_FUNCTION_30_13(v112);
      OUTLINED_FUNCTION_47_0();

      return MEMORY[0x2821BB460](v114);
    }

    OUTLINED_FUNCTION_3_18();
    sub_2665A6908(v73, v74);
  }

  v75 = OUTLINED_FUNCTION_66_2();
  sub_26656CAEC(v75, &unk_28007DE30, &unk_26666EAF0);
  v76 = OUTLINED_FUNCTION_15_2();
  sub_2665A17F8(v76, v77, &unk_28007DE30, &unk_26666EAF0);
  v78 = OUTLINED_FUNCTION_60_1();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v78, v79, v59);
  v81 = *(v0 + 256);
  if (EnumTagSinglePayload == 1)
  {
    sub_26656CAEC(*(v0 + 384), &unk_28007DE30, &unk_26666EAF0);
    v82 = OUTLINED_FUNCTION_15_2();
    sub_2665A17F8(v82, v83, &unk_28007DE30, &unk_26666EAF0);
    v84 = OUTLINED_FUNCTION_60_1();
    OUTLINED_FUNCTION_27_5(v84, v85, v81);
    if (v72)
    {
      sub_26656CAEC(*(v0 + 376), &unk_28007DE30, &unk_26666EAF0);
      OUTLINED_FUNCTION_9_22();
      swift_task_alloc();
      OUTLINED_FUNCTION_23_1();
      *(v0 + 520) = v86;
      *v86 = v87;
      v86[1] = sub_26665DCE4;
      OUTLINED_FUNCTION_18_13();
      OUTLINED_FUNCTION_47_0();

      return MEMORY[0x2821BB488](v88);
    }

    else
    {
      v117 = *(v0 + 256);
      v116 = *(v0 + 264);
      OUTLINED_FUNCTION_0_46();
      sub_26665E648(v118, v116, v119);
      OUTLINED_FUNCTION_9_22();
      *(v0 + 80) = v117;
      OUTLINED_FUNCTION_2_43();
      *(v0 + 88) = sub_26665E700(v120, v121, &protocol conformance descriptor for Snippet);
      __swift_allocate_boxed_opaque_existential_1((v0 + 56));
      OUTLINED_FUNCTION_2_16();
      sub_26665E6A4(v116, v122, v123);
      swift_task_alloc();
      OUTLINED_FUNCTION_23_1();
      *(v0 + 512) = v124;
      *v124 = v125;
      OUTLINED_FUNCTION_36_7(v124);
      OUTLINED_FUNCTION_13_15();
      OUTLINED_FUNCTION_47_0();

      return MEMORY[0x2821BB478](v126);
    }
  }

  else
  {
    v90 = *(v0 + 272);
    OUTLINED_FUNCTION_0_46();
    sub_26665E648(v91, v90, v92);
    OUTLINED_FUNCTION_9_22();
    *(v0 + 120) = v81;
    OUTLINED_FUNCTION_2_43();
    *(v0 + 128) = sub_26665E700(v93, v94, &protocol conformance descriptor for Snippet);
    __swift_allocate_boxed_opaque_existential_1((v0 + 96));
    OUTLINED_FUNCTION_2_16();
    sub_26665E6A4(v90, v95, v96);
    swift_task_alloc();
    OUTLINED_FUNCTION_23_1();
    *(v0 + 504) = v97;
    *v97 = v98;
    OUTLINED_FUNCTION_36_7(v97);
    OUTLINED_FUNCTION_13_15();
    OUTLINED_FUNCTION_47_0();

    return MEMORY[0x2821BB468](v99);
  }
}

uint64_t sub_26665D4CC()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  v2 = v1;
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_1((v2 + 176));
  __swift_destroy_boxed_opaque_existential_1((v2 + 136));
  v6 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_26665D5D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_52_5();
  OUTLINED_FUNCTION_63_0();
  v31 = OUTLINED_FUNCTION_26_14();
  sub_2665A6908(v31, v32);
  sub_2665A6908(v27, v26);
  v33 = OUTLINED_FUNCTION_4_45();
  v34(v33);
  v35 = OUTLINED_FUNCTION_35_9();
  v36(v35);
  v37 = OUTLINED_FUNCTION_32_10();
  sub_26656CAEC(v37, v38, &unk_26666EAF0);
  v39 = OUTLINED_FUNCTION_39_8();
  sub_26656CAEC(v39, v40, &unk_26666EAF0);
  sub_26656CAEC(v29, &qword_28007D330, &unk_26666EEA0);
  sub_26656CAEC(v30, &unk_28007DE20, &unk_26666EAE0);
  sub_26656CAEC(v27, &qword_28007D338, &qword_26666EEB0);
  sub_26656CC94(v28 + 16);

  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_54_2();

  return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_26665D78C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  v2 = v1;
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_1((v2 + 96));
  v6 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_26665D88C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_52_5();
  OUTLINED_FUNCTION_63_0();
  OUTLINED_FUNCTION_3_18();
  sub_2665A6908(v30, v31);
  v32 = OUTLINED_FUNCTION_4_45();
  v33(v32);
  v34 = OUTLINED_FUNCTION_35_9();
  v35(v34);
  v36 = OUTLINED_FUNCTION_32_10();
  sub_26656CAEC(v36, v37, &unk_26666EAF0);
  v38 = OUTLINED_FUNCTION_39_8();
  sub_26656CAEC(v38, v39, &unk_26666EAF0);
  sub_26656CAEC(v28, &qword_28007D330, &unk_26666EEA0);
  sub_26656CAEC(v29, &unk_28007DE20, &unk_26666EAE0);
  sub_26656CAEC(v26, &qword_28007D338, &qword_26666EEB0);
  sub_26656CC94(v27 + 16);

  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_54_2();

  return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_26665DA38()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  v2 = v1;
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_1((v2 + 56));
  v6 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_26665DB38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_52_5();
  OUTLINED_FUNCTION_63_0();
  OUTLINED_FUNCTION_3_18();
  sub_2665A6908(v30, v31);
  v32 = OUTLINED_FUNCTION_4_45();
  v33(v32);
  v34 = OUTLINED_FUNCTION_35_9();
  v35(v34);
  v36 = OUTLINED_FUNCTION_32_10();
  sub_26656CAEC(v36, v37, &unk_26666EAF0);
  v38 = OUTLINED_FUNCTION_39_8();
  sub_26656CAEC(v38, v39, &unk_26666EAF0);
  sub_26656CAEC(v28, &qword_28007D330, &unk_26666EEA0);
  sub_26656CAEC(v29, &unk_28007DE20, &unk_26666EAE0);
  sub_26656CAEC(v26, &qword_28007D338, &qword_26666EEB0);
  sub_26656CC94(v27 + 16);

  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_54_2();

  return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_26665DCE4()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  v1 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_26665DDE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_52_5();
  OUTLINED_FUNCTION_63_0();
  v30 = OUTLINED_FUNCTION_4_45();
  v31(v30);
  v32 = OUTLINED_FUNCTION_35_9();
  v33(v32);
  v34 = OUTLINED_FUNCTION_32_10();
  sub_26656CAEC(v34, v35, &unk_26666EAF0);
  v36 = OUTLINED_FUNCTION_39_8();
  sub_26656CAEC(v36, v37, &unk_26666EAF0);
  sub_26656CAEC(v28, &qword_28007D330, &unk_26666EEA0);
  sub_26656CAEC(v29, &unk_28007DE20, &unk_26666EAE0);
  sub_26656CAEC(v26, &qword_28007D338, &qword_26666EEB0);
  sub_26656CC94(v27 + 16);

  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_54_2();

  return v39(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_26665DF84(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v56 = type metadata accessor for EventReadingFlow.State(0);
  MEMORY[0x28223BE20](v56);
  v54 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D140, &qword_26666F140);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v53 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v53 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v53 - v19;
  v58 = _s15ReadingStrategyVMa(0);
  v59 = &off_28780AAF8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v57);
  sub_26665E648(a3, boxed_opaque_existential_1, _s15ReadingStrategyVMa);
  *(a4 + 16) = a1;
  *(a4 + 24) = a2;
  sub_26655358C(v57, a4 + 32);
  v22 = a1;
  v55 = a2;
  v23 = sub_26662571C(v55);
  if (v23)
  {
    v24 = v23;
  }

  else
  {
    v24 = MEMORY[0x277D84F90];
  }

  v25 = [v22 dateTimeRange];
  if (v25)
  {
    v26 = v25;
    v27 = [v25 startDate];

    if (v27)
    {
      sub_266668CE8();

      v28 = 0;
    }

    else
    {
      v28 = 1;
    }

    v30 = sub_266668D38();
    __swift_storeEnumTagSinglePayload(v18, v28, 1, v30);
    sub_266557CE4(v18, v20);
  }

  else
  {
    v29 = sub_266668D38();
    __swift_storeEnumTagSinglePayload(v20, 1, 1, v29);
  }

  v31 = [v22 dateTimeRange];
  if (v31)
  {
    v32 = v31;
    v33 = [v31 endDate];

    if (v33)
    {
      sub_266668CE8();

      v34 = 0;
    }

    else
    {
      v34 = 1;
    }

    v36 = sub_266668D38();
    __swift_storeEnumTagSinglePayload(v12, v34, 1, v36);
    sub_266557CE4(v12, v15);
  }

  else
  {
    v35 = sub_266668D38();
    __swift_storeEnumTagSinglePayload(v15, 1, 1, v35);
  }

  *(a4 + 72) = sub_2665E5D28(v24, v20, v15);
  *(a4 + 80) = v37;
  __swift_project_boxed_opaque_existential_1(v57, v58);
  v38 = sub_26661AE50(v22) & 1;
  v39 = *(a4 + 72);
  *(a4 + 88) = v39;
  *(a4 + 96) = v38;
  v40 = *(v39 + 16);
  v41 = qword_28156C150;

  if (v40 < 2)
  {
    if (v41 != -1)
    {
      swift_once();
    }

    v46 = sub_26666C168();
    __swift_project_value_buffer(v46, qword_28156D7E8);
    v47 = sub_26666C148();
    v48 = sub_26666C618();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_266549000, v47, v48, "[EventReadingFlow] Grouping spans a single day, moving directly to readDay", v49, 2u);
      MEMORY[0x266789690](v49, -1, -1);
    }

    v50 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F030, &qword_26667BEA0) + 48);
    swift_beginAccess();
    v51 = v54;
    sub_2665FD448(v54);
    swift_endAccess();

    *(v51 + v50) = 1;
    swift_storeEnumTagMultiPayload();
    sub_26665E648(v51, a4 + OBJC_IVAR____TtC19SiriCalendarIntents16EventReadingFlow_state, type metadata accessor for EventReadingFlow.State);
  }

  else
  {
    if (v41 != -1)
    {
      swift_once();
    }

    v42 = sub_26666C168();
    __swift_project_value_buffer(v42, qword_28156D7E8);
    v43 = sub_26666C148();
    v44 = sub_26666C618();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_266549000, v43, v44, "[EventReadingFlow] Grouping spans more than a single day introducing all results.", v45, 2u);
      MEMORY[0x266789690](v45, -1, -1);
    }

    swift_storeEnumTagMultiPayload();
  }

  __swift_destroy_boxed_opaque_existential_1(v57);
  return a4;
}

uint64_t sub_26665E4F8(void *a1, void *a2, uint64_t a3)
{
  v16 = _s15ReadingStrategyVMa(0);
  v17 = &off_28780AAF8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v15);
  sub_26665E648(a3, boxed_opaque_existential_1, _s15ReadingStrategyVMa);
  type metadata accessor for EventReadingFlow(0);
  v7 = swift_allocObject();
  v8 = __swift_mutable_project_boxed_opaque_existential_1(v15, v16);
  MEMORY[0x28223BE20](v8);
  v10 = &v15[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10);
  v12 = sub_26665DF84(a1, a2, v10, v7);
  __swift_destroy_boxed_opaque_existential_1(v15);
  return v12;
}

uint64_t sub_26665E648(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_18_2();
  v4 = OUTLINED_FUNCTION_25();
  v5(v4);
  return a2;
}

uint64_t sub_26665E6A4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_18_2();
  v4 = OUTLINED_FUNCTION_25();
  v5(v4);
  return a2;
}

uint64_t sub_26665E700(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_4_45()
{
  v2 = v0[39];
  v3 = v0[33];
  *(v1 - 88) = v0[34];
  *(v1 - 80) = v3;
  return v2;
}

uint64_t OUTLINED_FUNCTION_7_29()
{

  return sub_2665A6908(v0, type metadata accessor for Snippet.Event);
}

uint64_t OUTLINED_FUNCTION_44_7()
{

  return sub_26656CAEC(v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_46_2()
{

  return sub_26656CAEC(v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_60_3(uint64_t a1)
{

  return sub_26665E6A4(v1, a1, v2);
}

uint64_t OUTLINED_FUNCTION_69_3(uint64_t a1, uint64_t a2)
{

  return sub_2665A17F8(a1, a2, v2, v3);
}

uint64_t sub_26665EAC8(CGColor *a1)
{
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  CopyByMatchingToColorSpace = CGColorCreateCopyByMatchingToColorSpace(DeviceRGB, kCGRenderingIntentDefault, a1, 0);

  if (CopyByMatchingToColorSpace)
  {
    v4 = CopyByMatchingToColorSpace;
    v5 = sub_26666C5C8();

    if (v5)
    {
      if (*(v5 + 16) >= 3uLL)
      {
        v16 = *(v5 + 32);

        return v16;
      }
    }
  }

  if (qword_28007CD98 != -1)
  {
    swift_once();
  }

  v6 = sub_26666C168();
  __swift_project_value_buffer(v6, static Logger.calendarUIPlugin);
  v7 = CopyByMatchingToColorSpace;
  v8 = sub_26666C148();
  v9 = sub_26666C608();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 136315138;
    v12 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007FFB8, &qword_26667C448);
    v13 = sub_26666C318();
    v15 = sub_2665BFC90(v13, v14, &v18);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_266549000, v8, v9, "[Snippet.Color] Invalid number of color components %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x266789690](v11, -1, -1);
    MEMORY[0x266789690](v10, -1, -1);
  }

  else
  {
  }

  return 0;
}

uint64_t sub_26665EDA4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x5079616C70736964 && a2 == 0xE900000000000033;
  if (v4 || (sub_26666CAC8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1111970419 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_26666CAC8();

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

uint64_t sub_26665EE74(char a1)
{
  if (a1)
  {
    return 1111970419;
  }

  else
  {
    return 0x5079616C70736964;
  }
}

uint64_t sub_26665EEB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26665EDA4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26665EED8(uint64_t a1)
{
  v2 = sub_26665F2CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26665EF14(uint64_t a1)
{
  v2 = sub_26665F2CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26665EF50(uint64_t a1)
{
  v2 = sub_26665F374();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26665EF8C(uint64_t a1)
{
  v2 = sub_26665F374();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26665EFC8(uint64_t a1)
{
  v2 = sub_26665F320();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26665F004(uint64_t a1)
{
  v2 = sub_26665F320();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Snippet.Color.ColorSpace.encode(to:)(void *a1, int a2)
{
  v23 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007FED8, &qword_26667BED0);
  OUTLINED_FUNCTION_3_0();
  v21 = v5;
  v22 = v4;
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_12();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007FEE0, &qword_26667BED8);
  OUTLINED_FUNCTION_3_0();
  v8 = v7;
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v9);
  v11 = &v20 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007FEE8, &qword_26667BEE0);
  OUTLINED_FUNCTION_3_0();
  v14 = v13;
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v15);
  v17 = &v20 - v16;
  OUTLINED_FUNCTION_8_26(a1);
  sub_26665F2CC();
  sub_26666CBE8();
  v18 = (v14 + 8);
  if (v23)
  {
    v25 = 1;
    sub_26665F320();
    sub_26666CA08();
    (*(v21 + 8))(v2, v22);
  }

  else
  {
    v24 = 0;
    sub_26665F374();
    sub_26666CA08();
    (*(v8 + 8))(v11, v20);
  }

  return (*v18)(v17, v12);
}

unint64_t sub_26665F2CC()
{
  result = qword_28007FEF0;
  if (!qword_28007FEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FEF0);
  }

  return result;
}

unint64_t sub_26665F320()
{
  result = qword_28007FEF8;
  if (!qword_28007FEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FEF8);
  }

  return result;
}

unint64_t sub_26665F374()
{
  result = qword_28007FF00;
  if (!qword_28007FF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FF00);
  }

  return result;
}

uint64_t Snippet.Color.ColorSpace.init(from:)(unint64_t a1)
{
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007FF08, &qword_26667BEE8);
  OUTLINED_FUNCTION_3_0();
  v37 = v3;
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v4);
  v6 = &v33 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007FF10, &qword_26667BEF0);
  OUTLINED_FUNCTION_3_0();
  v36 = v8;
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v9);
  v11 = &v33 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007FF18, &unk_26667BEF8);
  OUTLINED_FUNCTION_3_0();
  v38 = v13;
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_4_12();
  OUTLINED_FUNCTION_8_26(a1);
  sub_26665F2CC();
  v15 = v40;
  sub_26666CBD8();
  if (v15)
  {
    goto LABEL_8;
  }

  v34 = v7;
  v35 = v11;
  v40 = a1;
  v16 = v39;
  sub_26666C9F8();
  result = sub_266575DD8();
  if (v19 == v20 >> 1)
  {
LABEL_7:
    v25 = sub_26666C848();
    swift_allocError();
    v27 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D4C0, &qword_26666F190);
    *v27 = &type metadata for Snippet.Color.ColorSpace;
    sub_26666C978();
    sub_26666C838();
    (*(*(v25 - 8) + 104))(v27, *MEMORY[0x277D84160], v25);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v38 + 8))(v1, v12);
    a1 = v40;
LABEL_8:
    __swift_destroy_boxed_opaque_existential_1(a1);
    return a1;
  }

  v33 = 0;
  if (v19 < (v20 >> 1))
  {
    a1 = *(v18 + v19);
    sub_266575DD4();
    v22 = v21;
    v24 = v23;
    swift_unknownObjectRelease();
    if (v22 == v24 >> 1)
    {
      if (a1)
      {
        LODWORD(v36) = a1;
        v42 = 1;
        sub_26665F320();
        OUTLINED_FUNCTION_12_3(&_s5ColorV10ColorSpaceO14SRGBCodingKeysON, &v42);
        swift_unknownObjectRelease();
        (*(v37 + 8))(v6, v16);
        v29 = OUTLINED_FUNCTION_4_8();
        v30(v29);
        a1 = v36;
      }

      else
      {
        v41 = 0;
        sub_26665F374();
        v28 = v35;
        OUTLINED_FUNCTION_12_3(&_s5ColorV10ColorSpaceO19DisplayP3CodingKeysON, &v41);
        swift_unknownObjectRelease();
        (*(v36 + 8))(v28, v34);
        v31 = OUTLINED_FUNCTION_4_8();
        v32(v31);
      }

      __swift_destroy_boxed_opaque_existential_1(v40);
      return a1;
    }

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_26665F868(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 6579570 && a2 == 0xE300000000000000;
  if (v3 || (sub_26666CAC8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E65657267 && a2 == 0xE500000000000000;
    if (v6 || (sub_26666CAC8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1702194274 && a2 == 0xE400000000000000;
      if (v7 || (sub_26666CAC8() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x617053726F6C6F63 && a2 == 0xEA00000000006563)
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

uint64_t sub_26665F9C4(char a1)
{
  result = 6579570;
  switch(a1)
  {
    case 1:
      result = 0x6E65657267;
      break;
    case 2:
      result = 1702194274;
      break;
    case 3:
      result = 0x617053726F6C6F63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26665FA4C@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = Snippet.Color.ColorSpace.init(from:)(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_26665FAA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26665F868(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26665FAC8(uint64_t a1)
{
  v2 = sub_266660148();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26665FB04(uint64_t a1)
{
  v2 = sub_266660148();

  return MEMORY[0x2821FE720](a1, v2);
}

BOOL static Snippet.Color.__derived_struct_equals(_:_:)(unsigned __int8 a1, unsigned __int8 a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  if (a3 != a6 || a4 != a7 || a5 != a8)
  {
    return 0;
  }

  if (a1 != 2)
  {
    return a2 != 2 && ((a2 ^ a1) & 1) == 0;
  }

  return a2 == 2;
}

uint64_t Snippet.Color.encode(to:)(void *a1, char a2, double a3, double a4, double a5)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007FF20, &qword_26667BF08);
  OUTLINED_FUNCTION_3_0();
  v13 = v12;
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v14);
  v16 = &v18 - v15;
  OUTLINED_FUNCTION_8_26(a1);
  sub_266660148();
  sub_26666CBE8();
  v20 = a3;
  v19 = 0;
  sub_26666019C();
  OUTLINED_FUNCTION_2_44();
  if (!v5)
  {
    v20 = a4;
    v19 = 1;
    OUTLINED_FUNCTION_2_44();
    v20 = a5;
    v19 = 2;
    OUTLINED_FUNCTION_2_44();
    LOBYTE(v20) = a2;
    v19 = 3;
    sub_2666601F0();
    sub_26666CA38();
  }

  return (*(v13 + 8))(v16, v11);
}

uint64_t Snippet.Color.hash(into:)(double a1, double a2, double a3, uint64_t a4, unsigned __int8 a5)
{
  v8 = a5;
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  MEMORY[0x266788F00](*&a1);
  if (a2 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = a2;
  }

  MEMORY[0x266788F00](*&v9);
  if (a3 == 0.0)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = a3;
  }

  MEMORY[0x266788F00](*&v10);
  if (v8 == 2)
  {
    return sub_26666CBA8();
  }

  sub_26666CBA8();
  return MEMORY[0x266788EE0](a5 & 1);
}

uint64_t Snippet.Color.hashValue.getter(unsigned __int8 a1, double a2, double a3, double a4)
{
  sub_26666CB88();
  Snippet.Color.hash(into:)(a2, a3, a4, v9, a1);
  return sub_26666CBC8();
}

uint64_t Snippet.Color.init(from:)(void *a1)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007FF40, &qword_26667BF10);
  OUTLINED_FUNCTION_3_0();
  v7 = v6;
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4_12();
  OUTLINED_FUNCTION_8_26(a1);
  sub_266660148();
  sub_26666CBD8();
  if (!v2)
  {
    sub_266660244();
    OUTLINED_FUNCTION_1_48();
    OUTLINED_FUNCTION_7_30();
    OUTLINED_FUNCTION_1_48();
    OUTLINED_FUNCTION_7_30();
    OUTLINED_FUNCTION_1_48();
    OUTLINED_FUNCTION_7_30();
    sub_266660298();
    OUTLINED_FUNCTION_1_48();
    sub_26666C9A8();
    (*(v7 + 8))(v3, v5);
    v1 = v10;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

uint64_t sub_26666006C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  sub_26666CB88();
  Snippet.Color.hash(into:)(v2, v3, v4, v7, v5);
  return sub_26666CBC8();
}

uint64_t sub_2666600D4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = Snippet.Color.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
    *(a2 + 8) = v6;
    *(a2 + 16) = v7;
    *(a2 + 24) = result;
  }

  return result;
}

unint64_t sub_266660148()
{
  result = qword_28007FF28;
  if (!qword_28007FF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FF28);
  }

  return result;
}

unint64_t sub_26666019C()
{
  result = qword_28007FF30;
  if (!qword_28007FF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FF30);
  }

  return result;
}

unint64_t sub_2666601F0()
{
  result = qword_28007FF38;
  if (!qword_28007FF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FF38);
  }

  return result;
}

unint64_t sub_266660244()
{
  result = qword_28007FF48;
  if (!qword_28007FF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FF48);
  }

  return result;
}

unint64_t sub_266660298()
{
  result = qword_28007FF50;
  if (!qword_28007FF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FF50);
  }

  return result;
}

unint64_t sub_2666602F0()
{
  result = qword_28007FF58;
  if (!qword_28007FF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FF58);
  }

  return result;
}

unint64_t sub_266660348()
{
  result = qword_28007FF60;
  if (!qword_28007FF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FF60);
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_2666603B0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 25))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 <= 2)
      {
        v4 = 2;
      }

      else
      {
        v4 = *(a1 + 24);
      }

      v5 = v4 - 3;
      if (v3 < 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v5;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2666603FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 2;
    }
  }

  return result;
}

_BYTE *_s5ColorV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_266660540(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_266660640()
{
  result = qword_28007FF68;
  if (!qword_28007FF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FF68);
  }

  return result;
}

unint64_t sub_266660698()
{
  result = qword_28007FF70;
  if (!qword_28007FF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FF70);
  }

  return result;
}

unint64_t sub_2666606F0()
{
  result = qword_28007FF78;
  if (!qword_28007FF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FF78);
  }

  return result;
}

unint64_t sub_266660748()
{
  result = qword_28007FF80;
  if (!qword_28007FF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FF80);
  }

  return result;
}

unint64_t sub_2666607A0()
{
  result = qword_28007FF88;
  if (!qword_28007FF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FF88);
  }

  return result;
}

unint64_t sub_2666607F8()
{
  result = qword_28007FF90;
  if (!qword_28007FF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FF90);
  }

  return result;
}

unint64_t sub_266660850()
{
  result = qword_28007FF98;
  if (!qword_28007FF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FF98);
  }

  return result;
}

unint64_t sub_2666608A8()
{
  result = qword_28007FFA0;
  if (!qword_28007FFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FFA0);
  }

  return result;
}

unint64_t sub_266660900()
{
  result = qword_28007FFA8;
  if (!qword_28007FFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FFA8);
  }

  return result;
}

unint64_t sub_266660958()
{
  result = qword_28007FFB0;
  if (!qword_28007FFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FFB0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_44()
{

  return sub_26666CA78();
}

void *OUTLINED_FUNCTION_7_30()
{

  return sub_26666C9E8();
}

uint64_t sub_266660A28@<X0>(void *a1@<X1>, void *a2@<X8>)
{
  v3 = a2;
  sub_26655358C(a1, (a2 + 1));
  sub_2666373CC();
  v5 = v4;

  v6 = *(v5 + 16);
  if (v6 != 1)
  {
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1(&qword_28156C150);
    }

    v17 = sub_26666C168();
    __swift_project_value_buffer(v17, qword_28156D7E8);
    v18 = sub_26666C148();
    v19 = sub_26666C618();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_266549000, v18, v19, "[ParticipantDisambiguationContainer] Disambiguation items contains more than one unique person, doing person disambiguation", v20, 2u);
      MEMORY[0x266789690](v20, -1, -1);
    }

    if (v6)
    {
      v40 = a1;
      v42 = v3;
      v43 = MEMORY[0x277D84F90];
      sub_266633C20(0, v6, 0);
      v21 = v43;
      v22 = (v5 + 48);
      do
      {
        v23 = *(v22 - 1);
        v24 = *v22;
        v25 = *(v43 + 16);
        v26 = *(v43 + 24);
        v27 = *(v22 - 2);

        if (v25 >= v26 >> 1)
        {
          sub_266633C20((v26 > 1), v25 + 1, 1);
        }

        *(v43 + 16) = v25 + 1;
        v28 = v43 + 32 * v25;
        *(v28 + 32) = v27;
        *(v28 + 40) = v23;
        *(v28 + 48) = v24;
        *(v28 + 56) = 0;
        v22 += 3;
        --v6;
      }

      while (v6);
      __swift_destroy_boxed_opaque_existential_1(v40);
      goto LABEL_27;
    }

LABEL_30:

    result = __swift_destroy_boxed_opaque_existential_1(a1);
    v21 = MEMORY[0x277D84F90];
    goto LABEL_31;
  }

  v7 = *(v5 + 40);
  v8 = *(v5 + 48);
  v9 = *(v5 + 32);

  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_28156C150);
  }

  v10 = sub_26666C168();
  __swift_project_value_buffer(v10, qword_28156D7E8);
  v11 = v9;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v12 = v11;
  v13 = sub_26666C148();
  v14 = sub_26666C618();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 134217984;
    sub_266637AD4(v12, v7, v8);
    v16 = sub_2665C485C();

    *(v15 + 4) = v16;

    _os_log_impl(&dword_266549000, v13, v14, "[ParticipantDisambiguationContainer] Disambiguation items contains only one person with %ld handles, doing handle disambiguation", v15, 0xCu);
    MEMORY[0x266789690](v15, -1, -1);
  }

  else
  {

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();

    v13 = v12;
  }

  sub_266637BBC(v12, v7, v8);
  v30 = v29;
  v31 = sub_2665C485C();
  if (!v31)
  {

    goto LABEL_30;
  }

  v32 = v31;
  v44 = MEMORY[0x277D84F90];
  result = sub_266633C20(0, v31 & ~(v31 >> 63), 0);
  if ((v32 & 0x8000000000000000) == 0)
  {
    v41 = a1;
    v42 = v3;
    v34 = 0;
    v21 = v44;
    do
    {
      if ((v30 & 0xC000000000000001) != 0)
      {
        v35 = MEMORY[0x266788B60](v34, v30);
      }

      else
      {
        v35 = *(v30 + 8 * v34 + 32);
      }

      v36 = v35;
      v38 = *(v44 + 16);
      v37 = *(v44 + 24);
      if (v38 >= v37 >> 1)
      {
        sub_266633C20((v37 > 1), v38 + 1, 1);
      }

      *(v44 + 16) = v38 + 1;
      v39 = v44 + 32 * v38;
      *(v39 + 40) = 0;
      *(v39 + 48) = 0;
      ++v34;
      *(v39 + 32) = v36;
      *(v39 + 56) = 1;
    }

    while (v32 != v34);
    __swift_destroy_boxed_opaque_existential_1(v41);

LABEL_27:

    v3 = v42;
LABEL_31:
    *v3 = v21;
    return result;
  }

  __break(1u);
  return result;
}

void sub_266660EBC()
{
  v1 = 0;
  v2 = *v0;
  v3 = *(*v0 + 16);
  v4 = MEMORY[0x277D84F90];
LABEL_2:
  v5 = v2 + 32 * v1;
  while (v3 != v1)
  {
    if (v1 >= *(v2 + 16))
    {
      __break(1u);
      return;
    }

    v6 = v5 + 32;
    ++v1;
    v7 = *(v5 + 56);
    v5 += 32;
    if ((v7 & 1) == 0)
    {
      v8 = *(v6 + 8);
      v9 = *(v6 + 16);
      v10 = *v6;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2665C6184();
        v4 = v13;
      }

      v11 = *(v4 + 16);
      if (v11 >= *(v4 + 24) >> 1)
      {
        sub_2665C6184();
        v4 = v14;
      }

      *(v4 + 16) = v11 + 1;
      v12 = (v4 + 24 * v11);
      v12[4] = v10;
      v12[5] = v8;
      v12[6] = v9;
      goto LABEL_2;
    }
  }
}

uint64_t sub_266660FD4()
{
  v1 = 0;
  v2 = *v0;
  result = MEMORY[0x277D84F90];
  v9 = MEMORY[0x277D84F90];
  v4 = *(*v0 + 16);
LABEL_2:
  v5 = v2 + 32 * v1;
  while (v4 != v1)
  {
    if (v1 >= *(v2 + 16))
    {
      __break(1u);
      return result;
    }

    v6 = (v5 + 32);
    ++v1;
    v7 = *(v5 + 56);
    v5 += 32;
    if (v7 == 1)
    {
      v8 = *v6;
      MEMORY[0x2667887C0]();
      if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_26666C4B8();
      }

      sub_26666C4E8();
      result = v9;
      goto LABEL_2;
    }
  }

  return result;
}

BOOL sub_2666610B0()
{
  v1 = sub_266669A88();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v0 + 8), *(v0 + 32));
  sub_266669A78();
  v5 = sub_266669658();
  (*(v2 + 8))(v4, v1);
  return (v5 & 1) == 0;
}

uint64_t sub_2666611C0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 25))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 <= 1)
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

uint64_t sub_266661200(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t type metadata accessor for OpenCalendarViewIntent(uint64_t a1)
{
  result = qword_28007FFC0;
  if (!qword_28007FFC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2666612E8(uint64_t a1)
{
  sub_26666135C(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_26666135C(uint64_t a1)
{
  if (!qword_28156D158)
  {
    sub_266668D38();
    v1 = sub_26666C6B8();
    if (!v2)
    {
      atomic_store(v1, &qword_28156D158);
    }
  }
}

uint64_t sub_2666613B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_266668D38();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D140, &qword_26666F140);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v28 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007FFD0, &unk_26667C5B0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v28 - v13;
  v15 = *(v12 + 56);
  sub_26655E020(a1, &v28 - v13);
  sub_26655E020(a2, &v14[v15]);
  OUTLINED_FUNCTION_0_47(v14);
  if (v16)
  {
    OUTLINED_FUNCTION_0_47(&v14[v15]);
    if (v16)
    {
      sub_266557D74(v14, &qword_28007D140, &qword_26666F140);
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  sub_26655E020(v14, v10);
  OUTLINED_FUNCTION_0_47(&v14[v15]);
  if (v16)
  {
    (*(v5 + 8))(v10, v4);
LABEL_9:
    sub_266557D74(v14, &unk_28007FFD0, &unk_26667C5B0);
LABEL_10:
    v17 = 0;
    return v17 & 1;
  }

  (*(v5 + 32))(v7, &v14[v15], v4);
  sub_2666616B4();
  v18 = sub_26666C2E8();
  v19 = *(v5 + 8);
  v19(v7, v4);
  v19(v10, v4);
  sub_266557D74(v14, &qword_28007D140, &qword_26666F140);
  if ((v18 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_12:
  v20 = *(type metadata accessor for OpenCalendarViewIntent(0) + 20);
  v21 = *(a2 + v20);
  v22 = sub_26660E9EC(*(a1 + v20));
  v24 = v23;
  if (v22 == sub_26660E9EC(v21) && v24 == v25)
  {

    v17 = 1;
  }

  else
  {
    v17 = sub_26666CAC8();
  }

  return v17 & 1;
}

unint64_t sub_2666616B4()
{
  result = qword_28007E5D8;
  if (!qword_28007E5D8)
  {
    sub_266668D38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E5D8);
  }

  return result;
}

uint64_t type metadata accessor for StringLocalizer(uint64_t a1)
{
  result = qword_28156CBD0;
  if (!qword_28156CBD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2666617A0(uint64_t a1)
{
  result = sub_266668D98();
  if (v2 <= 0x3F)
  {
    result = sub_266661824();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_266661824()
{
  result = qword_28156C078;
  if (!qword_28156C078)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28156C078);
  }

  return result;
}

uint64_t sub_266661868(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_2666618A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_266661914@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v126 = a2;
  v101 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007EE30, &unk_266677230);
  MEMORY[0x28223BE20](v4 - 8);
  v113 = &v100 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007F810, &unk_26667C710);
  MEMORY[0x28223BE20](v6 - 8);
  v117 = &v100 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007ED70, &qword_266671CC0);
  MEMORY[0x28223BE20](v8 - 8);
  v116 = (&v100 - v9);
  v118 = sub_26666C228();
  OUTLINED_FUNCTION_3_0();
  v103 = v10;
  v12 = MEMORY[0x28223BE20](v11);
  v102 = (&v100 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v100 = &v100 - v14;
  v115 = sub_266669738();
  OUTLINED_FUNCTION_3_0();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  v114 = &v100 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_2666699C8();
  OUTLINED_FUNCTION_3_0();
  v104 = v19;
  MEMORY[0x28223BE20](v20);
  v22 = &v100 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_266663398();
  sub_266669928();
  if (qword_28007CE30 != -1)
  {
LABEL_58:
    OUTLINED_FUNCTION_2_45();
    swift_once();
  }

  sub_2665E8748();
  sub_266669978();
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E610, &qword_266677630);
  v23 = OUTLINED_FUNCTION_9_16(v108);
  v112 = xmmword_26666EED0;
  *(v23 + 16) = xmmword_26666EED0;
  v24 = sub_26666C338();
  OUTLINED_FUNCTION_12_25(v24, v25);
  v109 = sub_266595F88();
  OUTLINED_FUNCTION_0_48();
  sub_26666C6F8();

  v124 = sub_2666312CC(2);
  v125 = v26;
  MEMORY[0x266788710](0x2E65756C61562ELL, 0xE700000000000000);
  v27 = sub_26666C338();
  MEMORY[0x266788710](v27);

  v28 = v125;
  *(v23 + 32) = v124;
  *(v23 + 40) = v28;
  v111 = v22;
  sub_266669948();
  sub_2665F5AE4();
  v30 = *(v29 + 16);
  v31 = MEMORY[0x277D84F90];
  v32 = a1;
  v123 = a1;
  v110 = MEMORY[0x277D84F90];
  v107 = v29;
  if (v30)
  {
    v34 = *(v16 + 16);
    v33 = v16 + 16;
    v35 = v29 + ((*(v33 + 64) + 32) & ~*(v33 + 64));
    v120 = *(v33 + 56);
    v121 = v34;
    v122 = v33;
    v36 = (v33 - 8);
    v119 = MEMORY[0x277D84F90];
    v37 = v113;
    OUTLINED_FUNCTION_26_15();
    do
    {
      (v121)(v31, v35, v33);
      sub_266669718();
      v38 = sub_2666697B8();
      if (__swift_getEnumTagSinglePayload(v37, 1, v38) == 1)
      {
        (*v36)(v31, v33);
        sub_266566494(v37, &qword_28007EE30, &unk_266677230);
      }

      else
      {
        v39 = sub_2666697A8();
        v41 = v40;
        (*v36)(v31, v33);
        (*(*(v38 - 8) + 8))(v37, v38);
        if (v41)
        {
          v31 = v119;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_2665C6350();
            v31 = v44;
          }

          v42 = *(v31 + 16);
          if (v42 >= *(v31 + 24) >> 1)
          {
            sub_2665C6350();
            v31 = v45;
          }

          *(v31 + 16) = v42 + 1;
          v119 = v31;
          v43 = v31 + 16 * v42;
          *(v43 + 32) = v39;
          *(v43 + 40) = v41;
          v32 = v123;
          v37 = v113;
        }

        else
        {
          v32 = v123;
        }

        OUTLINED_FUNCTION_26_15();
      }

      v35 += v120;
      --v30;
    }

    while (v30);
  }

  else
  {
    v119 = MEMORY[0x277D84F90];
  }

  v46 = sub_2665F6310(v119);
  v47 = v108;
  inited = swift_initStackObject();
  inited[1] = v112;
  if (qword_28007CE38 != -1)
  {
    OUTLINED_FUNCTION_1_49(&qword_28007CE38);
  }

  inited[2].n128_u64[0] = sub_2665E8760();
  inited[2].n128_u64[1] = v49;
  sub_2665F63D0(v46, inited);

  swift_setDeallocating();
  sub_266639138();
  sub_2666699A8();
  v50 = OUTLINED_FUNCTION_9_16(v47);
  v51 = OUTLINED_FUNCTION_5_35(v50, v112);
  OUTLINED_FUNCTION_12_25(v51, v52);
  OUTLINED_FUNCTION_0_48();
  v22 = sub_26666C6F8();
  a1 = v53;

  v124 = sub_2666312CC(2);
  v125 = v54;
  v55 = OUTLINED_FUNCTION_4_46();
  MEMORY[0x266788710](v55, 0xE700000000000000);
  v56 = sub_26666C338();
  MEMORY[0x266788710](v56);

  v57 = v125;
  v50[2].n128_u64[0] = v124;
  v50[2].n128_u64[1] = v57;
  sub_266669998();
  sub_2666698F8();
  v124 = MEMORY[0x277D84F90];
  v58 = sub_2665C485C();
  v59 = 0;
  v60 = v32 & 0xC000000000000001;
  v16 = v32 & 0xFFFFFFFFFFFFFF8;
  while (v58 != v59)
  {
    if (v60)
    {
      v61 = MEMORY[0x266788B60](v59, v32);
    }

    else
    {
      if (v59 >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_55;
      }

      v61 = v32[v59 + 4];
    }

    a1 = v61;
    v62 = v59 + 1;
    if (__OFADD__(v59, 1))
    {
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    v22 = sub_26656C24C(v61);

    ++v59;
    if (v22)
    {
      MEMORY[0x2667887C0]();
      if (*((v124 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v124 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_26666C4B8();
      }

      sub_26666C4E8();
      v110 = v124;
      v59 = v62;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007ECA0, &qword_266677240);
  v63 = sub_26666A058();
  OUTLINED_FUNCTION_3_1(v63);
  v65 = (*(v64 + 80) + 32) & ~*(v64 + 80);
  v66 = swift_allocObject();
  v66[1] = v112;
  v22 = v110;
  v67 = v106;
  sub_26664F374(v110, v66 + v65);
  v68 = v111;
  v120 = v67;
  if (v67)
  {

    v66[1].n128_u64[0] = 0;

    (*(v104 + 8))(v68, v105);
  }

  else
  {

    sub_266669918();
    sub_26666C1E8();
    swift_allocObject();
    v70 = sub_26666C1D8();
    v71 = 0;
    v121 = "alendar.directInvocation";
    v122 = v70;
    v115 = (v103 + 32);
    v119 = MEMORY[0x277D84F90];
    while (v58 != v71)
    {
      if (v60)
      {
        v72 = MEMORY[0x266788B60](v71, v32);
      }

      else
      {
        if (v71 >= *(v16 + 16))
        {
          goto LABEL_57;
        }

        v72 = v32[v71 + 4];
      }

      v73 = v72;
      v22 = (v71 + 1);
      if (__OFADD__(v71, 1))
      {
        goto LABEL_56;
      }

      v74 = v117;
      sub_26666C1C8();
      v75 = sub_26666C1B8();
      __swift_storeEnumTagSinglePayload(v74, 0, 1, v75);
      v76 = v116;
      sub_2665F1A9C(0xD000000000000013, v121 | 0x8000000000000000, v74, v77, v78, v79, v80, v81, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111);
      sub_266566494(v74, &unk_28007F810, &unk_26667C710);

      a1 = v76;
      if (__swift_getEnumTagSinglePayload(v76, 1, v118) == 1)
      {
        sub_266566494(v76, &qword_28007ED70, &qword_266671CC0);
        ++v71;
        v32 = v123;
      }

      else
      {
        v82 = *v115;
        v83 = v100;
        v84 = v118;
        (*v115)(v100, a1, v118);
        v82(v102, v83, v84);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_2665C6994();
          v119 = v88;
        }

        v85 = *(v119 + 16);
        if (v85 >= *(v119 + 24) >> 1)
        {
          sub_2665C6994();
          v119 = v89;
        }

        v86 = v118;
        v87 = v119;
        *(v119 + 16) = v85 + 1;
        v82(v87 + ((*(v103 + 80) + 32) & ~*(v103 + 80)) + *(v103 + 72) * v85, v102, v86);
        v71 = v22;
        v32 = v123;
      }
    }

    v90 = v111;
    sub_2666698E8();
    if (qword_28156C150 != -1)
    {
      swift_once();
    }

    v91 = sub_26666C168();
    __swift_project_value_buffer(v91, qword_28156D7E8);
    v92 = sub_26666C148();
    v93 = sub_26666C618();
    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      *v94 = 134217984;
      swift_beginAccess();
      v95 = sub_2666698D8();
      if (v95)
      {
        v96 = v95;
        swift_endAccess();
        v97 = *(v96 + 16);
      }

      else
      {
        swift_endAccess();
        v97 = -1;
      }

      *(v94 + 4) = v97;
      _os_log_impl(&dword_266549000, v92, v93, "Donating %ld rrEntities", v94, 0xCu);
      MEMORY[0x266789690](v94, -1, -1);
    }

    swift_beginAccess();
    v98 = v104;
    v99 = v105;
    (*(v104 + 16))(v101, v90, v105);
    (*(v98 + 8))(v90, v99);
  }
}

uint64_t sub_266662640@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  HIDWORD(v76) = a1;
  sub_266663398();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E610, &qword_266677630);
  v4 = OUTLINED_FUNCTION_9_16(v3);
  *(v4 + 16) = xmmword_26666EED0;
  if (qword_28007CE38 != -1)
  {
    OUTLINED_FUNCTION_1_49(&qword_28007CE38);
  }

  *(v4 + 32) = sub_2665E8760();
  *(v4 + 40) = v5;
  sub_2666699A8();
  v6 = swift_allocObject();
  OUTLINED_FUNCTION_5_35(v6, xmmword_266672100);
  v7 = sub_266595F88();
  v8 = MEMORY[0x277D837D0];
  OUTLINED_FUNCTION_9_28(v7, v9, v10, v11, v12, v13, v14, v15, MEMORY[0x277D837D0], v7, v7, v7, v76, v80, 95, 0xE100000000000000, 32);
  OUTLINED_FUNCTION_0_48();
  OUTLINED_FUNCTION_13_19(v16, v17, v18, v19, v20, v21, v22, v23, v64, v67, v70, v73);
  OUTLINED_FUNCTION_21_13();
  v84 = sub_2666312CC(2);
  v87 = v24;
  OUTLINED_FUNCTION_22_11();
  OUTLINED_FUNCTION_18_14();
  v25 = sub_26666C338();
  MEMORY[0x266788710](v25);

  v6[2].n128_u64[0] = v84;
  v6[2].n128_u64[1] = v87;
  v26 = sub_26666C338();
  OUTLINED_FUNCTION_9_28(v26, v27, v28, v29, v30, v31, v32, v33, v65, v68, v7, v7, v77, v81, 95, 0xE100000000000000, 32);
  OUTLINED_FUNCTION_0_48();
  OUTLINED_FUNCTION_13_19(v34, v35, v36, v37, v38, v39, v40, v41, v8, v7, v71, v74);

  v85 = sub_2666312CC(2);
  v88 = v42;
  OUTLINED_FUNCTION_18_14();
  v43 = sub_26666C338();
  MEMORY[0x266788710](v43);

  v6[3].n128_u64[0] = v85;
  v6[3].n128_u64[1] = v88;
  v44 = sub_26666C338();
  OUTLINED_FUNCTION_9_28(v44, v45, v46, v47, v48, v49, v50, v51, v66, v69, v7, v7, v78, v82, 95, 0xE100000000000000, 32);
  OUTLINED_FUNCTION_0_48();
  OUTLINED_FUNCTION_13_19(v52, v53, v54, v55, v56, v57, v58, v59, v8, v7, v72, v75);
  OUTLINED_FUNCTION_19_21();
  v86 = sub_2666312CC(2);
  v89 = v60;
  OUTLINED_FUNCTION_18_14();
  v61 = sub_26666C338();
  MEMORY[0x266788710](v61);

  v6[4].n128_u64[0] = v86;
  v6[4].n128_u64[1] = v89;
  sub_266669998();
  sub_2665E4248(v79 & 1);
  if (!v83)
  {
    return sub_266669918();
  }

  sub_2666699C8();
  OUTLINED_FUNCTION_0_5();
  return (*(v62 + 8))(a2);
}

uint64_t sub_266662924@<X0>(uint64_t a2@<X8>)
{
  sub_266663398();
  OUTLINED_FUNCTION_7_31();
  v4 = OUTLINED_FUNCTION_11_24();
  v5(v4);
  sub_2666699A8();
  OUTLINED_FUNCTION_7_31();
  v6 = OUTLINED_FUNCTION_11_24();
  result = v7(v6);
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007ECA0, &qword_266677240);
    v9 = OUTLINED_FUNCTION_29_9();
    OUTLINED_FUNCTION_3_1(v9);
    v10 = OUTLINED_FUNCTION_16_20();
    OUTLINED_FUNCTION_27_19(v10, xmmword_26666EED0);
    if (v2)
    {

      sub_2666699C8();
      OUTLINED_FUNCTION_0_5();
      (*(v11 + 8))(a2);
      OUTLINED_FUNCTION_23_17();
    }

    else
    {
      sub_266669918();
    }
  }

  return result;
}

uint64_t sub_266662A60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_266663398();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E610, &qword_266677630);
  v4 = OUTLINED_FUNCTION_9_16(v3);
  *(v4 + 16) = xmmword_26666EED0;
  if (qword_28007CE38 != -1)
  {
    OUTLINED_FUNCTION_1_49(&qword_28007CE38);
  }

  *(v4 + 32) = sub_2665E8760();
  *(v4 + 40) = v5;
  sub_2666699A8();
  v6 = swift_allocObject();
  OUTLINED_FUNCTION_5_35(v6, xmmword_266672100);
  OUTLINED_FUNCTION_15_19();
  v7 = sub_266595F88();
  v8 = MEMORY[0x277D837D0];
  OUTLINED_FUNCTION_14_18(v7, v9, v10, v11, v12, v13, v14, v15, MEMORY[0x277D837D0], v7, v7, v7, 1, 2, v85, a1, v92, v95, v98);
  OUTLINED_FUNCTION_0_48();
  OUTLINED_FUNCTION_13_19(v16, v17, v18, v19, v20, v21, v22, v23, v68, v71, v74, v77);
  OUTLINED_FUNCTION_21_13();
  v101 = sub_2666312CC(2);
  v24 = OUTLINED_FUNCTION_4_46();
  MEMORY[0x266788710](v24, 0xE700000000000000);
  v25 = sub_26666C338();
  MEMORY[0x266788710](v25);

  OUTLINED_FUNCTION_28_12(v101);
  OUTLINED_FUNCTION_15_19();
  OUTLINED_FUNCTION_14_18(v26, v27, v28, v29, v30, v31, v32, v33, v69, v72, v7, v7, v80, v83, v86, v89, v93, v96, v99);
  OUTLINED_FUNCTION_0_48();
  OUTLINED_FUNCTION_13_19(v34, v35, v36, v37, v38, v39, v40, v41, v8, v7, v75, v78);

  v102 = sub_2666312CC(2);
  v104 = v42;
  v43 = OUTLINED_FUNCTION_4_46();
  MEMORY[0x266788710](v43, 0xE700000000000000);
  v44 = sub_26666C338();
  MEMORY[0x266788710](v44);

  v6[3].n128_u64[0] = v102;
  v6[3].n128_u64[1] = v104;
  sub_26666C338();
  OUTLINED_FUNCTION_15_19();
  OUTLINED_FUNCTION_14_18(v45, v46, v47, v48, v49, v50, v51, v52, v70, v73, v7, v7, v81, v84, v87, v90, v94, v97, v100);
  OUTLINED_FUNCTION_0_48();
  OUTLINED_FUNCTION_13_19(v53, v54, v55, v56, v57, v58, v59, v60, v8, v7, v76, v79);
  OUTLINED_FUNCTION_19_21();
  v103 = sub_2666312CC(2);
  v105 = v61;
  v62 = OUTLINED_FUNCTION_4_46();
  MEMORY[0x266788710](v62, 0xE700000000000000);
  v63 = sub_26666C338();
  MEMORY[0x266788710](v63);

  v6[4].n128_u64[0] = v103;
  v6[4].n128_u64[1] = v105;
  sub_266669998();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007ECA0, &qword_266677240);
  v64 = OUTLINED_FUNCTION_29_9();
  OUTLINED_FUNCTION_3_1(v64);
  v65 = OUTLINED_FUNCTION_0_29();
  *(v65 + 16) = v82;
  sub_26664FA38(v91, v65 - 0x1F00000000000000);
  if (!v106)
  {
    return sub_266669918();
  }

  sub_2666699C8();
  OUTLINED_FUNCTION_0_5();
  (*(v66 + 8))(a2);
  OUTLINED_FUNCTION_23_17();
}

uint64_t sub_266662D98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_266663398();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E610, &qword_266677630);
  v4 = OUTLINED_FUNCTION_9_16(v3);
  *(v4 + 16) = xmmword_26666EED0;
  if (qword_28007CE38 != -1)
  {
    OUTLINED_FUNCTION_1_49(&qword_28007CE38);
  }

  *(v4 + 32) = sub_2665E8760();
  *(v4 + 40) = v5;
  sub_2666699A8();
  v6 = swift_allocObject();
  v7 = OUTLINED_FUNCTION_5_35(v6, xmmword_266671D60);
  OUTLINED_FUNCTION_25_16(v7, v8);
  OUTLINED_FUNCTION_10_24();
  v9 = sub_266595F88();
  v10 = MEMORY[0x277D837D0];
  OUTLINED_FUNCTION_24_14(v9, v11, v12, v13, v14, v15, v16, v17, MEMORY[0x277D837D0], v9, v9, v9, v107, v111, 1, 2, v122, a1, v131, v135, v139);
  OUTLINED_FUNCTION_0_48();
  OUTLINED_FUNCTION_13_19(v18, v19, v20, v21, v22, v23, v24, v25, v91, v95, v99, v103);
  OUTLINED_FUNCTION_21_13();
  v143 = sub_2666312CC(2);
  OUTLINED_FUNCTION_22_11();
  OUTLINED_FUNCTION_18_14();
  v26 = sub_26666C338();
  MEMORY[0x266788710](v26);

  v27 = OUTLINED_FUNCTION_28_12(v143);
  OUTLINED_FUNCTION_25_16(v27, v28);
  OUTLINED_FUNCTION_10_24();
  OUTLINED_FUNCTION_24_14(v29, v30, v31, v32, v33, v34, v35, v36, v92, v96, v9, v9, v108, v112, v115, v119, v123, v127, v132, v136, v140);
  OUTLINED_FUNCTION_0_48();
  OUTLINED_FUNCTION_13_19(v37, v38, v39, v40, v41, v42, v43, v44, v10, v9, v100, v104);

  v144 = sub_2666312CC(2);
  v147 = v45;
  OUTLINED_FUNCTION_18_14();
  v46 = sub_26666C338();
  MEMORY[0x266788710](v46);

  v6[3].n128_u64[0] = v144;
  v6[3].n128_u64[1] = v147;
  v47 = sub_26666C338();
  OUTLINED_FUNCTION_25_16(v47, v48);
  OUTLINED_FUNCTION_10_24();
  OUTLINED_FUNCTION_24_14(v49, v50, v51, v52, v53, v54, v55, v56, v93, v97, v9, v9, v109, a2, v116, v120, v124, v128, v133, v137, v141);
  OUTLINED_FUNCTION_0_48();
  OUTLINED_FUNCTION_13_19(v57, v58, v59, v60, v61, v62, v63, v64, v10, v9, v101, v105);

  v145 = sub_2666312CC(3);
  v148 = v65;
  OUTLINED_FUNCTION_18_14();
  v66 = sub_26666C338();
  MEMORY[0x266788710](v66);

  v6[4].n128_u64[0] = v145;
  v6[4].n128_u64[1] = v148;
  v67 = sub_26666C338();
  OUTLINED_FUNCTION_25_16(v67, v68);
  OUTLINED_FUNCTION_10_24();
  OUTLINED_FUNCTION_24_14(v69, v70, v71, v72, v73, v74, v75, v76, v94, v98, v9, v9, v110, v113, v117, v121, v125, v129, v134, v138, v142);
  OUTLINED_FUNCTION_0_48();
  OUTLINED_FUNCTION_13_19(v77, v78, v79, v80, v81, v82, v83, v84, v10, v9, v102, v106);
  OUTLINED_FUNCTION_19_21();
  v146 = sub_2666312CC(2);
  v149 = v85;
  OUTLINED_FUNCTION_18_14();
  v86 = sub_26666C338();
  MEMORY[0x266788710](v86);

  v6[5].n128_u64[0] = v146;
  v6[5].n128_u64[1] = v149;
  sub_266669998();
  sub_266669938();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007ECA0, &qword_266677240);
  v87 = OUTLINED_FUNCTION_29_9();
  OUTLINED_FUNCTION_3_1(v87);
  v88 = OUTLINED_FUNCTION_0_29();
  *(v88 + 16) = v118;
  sub_26664FA38(v130, v88 - 0x1F00000000000000);
  if (!v150)
  {
    return sub_266669918();
  }

  sub_2666699C8();
  OUTLINED_FUNCTION_0_5();
  (*(v89 + 8))(v114);
  OUTLINED_FUNCTION_23_17();
}

uint64_t sub_266663128@<X0>(uint64_t a1@<X8>)
{
  sub_2666699B8();
  if (qword_28007CE30 != -1)
  {
    OUTLINED_FUNCTION_2_45();
    swift_once();
  }

  sub_26666A0F8();
  sub_266669908();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E610, &qword_266677630);
  v4 = OUTLINED_FUNCTION_9_16(v3);
  OUTLINED_FUNCTION_5_35(v4, xmmword_26666EED0);
  v5 = sub_266595F88();
  OUTLINED_FUNCTION_9_28(v5, v6, v7, v8, v9, v10, MEMORY[0x277D837D0], v11, MEMORY[0x277D837D0], v5, v5, v5, 1, 2, 95, 0xE100000000000000, 32);
  OUTLINED_FUNCTION_0_48();
  sub_26666C6F8();

  v24 = sub_2666312CC(2);
  v25 = v12;
  v13 = OUTLINED_FUNCTION_4_46();
  MEMORY[0x266788710](v13, 0xE700000000000000);
  v14 = sub_26666C338();
  MEMORY[0x266788710](v14);

  v4[2].n128_u64[0] = v24;
  v4[2].n128_u64[1] = v25;
  sub_266669958();
  sub_2665E8748();
  sub_266669988();
  OUTLINED_FUNCTION_7_31();
  v15 = OUTLINED_FUNCTION_11_24();
  v16(v15);
  sub_266669968();
  OUTLINED_FUNCTION_7_31();
  v17 = OUTLINED_FUNCTION_11_24();
  result = v18(v17);
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007ECA0, &qword_266677240);
    v20 = OUTLINED_FUNCTION_29_9();
    OUTLINED_FUNCTION_3_1(v20);
    v21 = OUTLINED_FUNCTION_16_20();
    OUTLINED_FUNCTION_27_19(v21, v23);
    if (v1)
    {
      sub_2666699C8();
      OUTLINED_FUNCTION_0_5();
      (*(v22 + 8))(a1);

      OUTLINED_FUNCTION_23_17();
    }

    else
    {
      sub_266669918();
    }
  }

  return result;
}

uint64_t sub_266663398()
{
  sub_2666699B8();
  if (qword_28007CE30 != -1)
  {
    OUTLINED_FUNCTION_2_45();
    swift_once();
  }

  sub_26666A0F8();
  sub_266669908();
  sub_2665E8748();
  sub_266669978();
  return sub_266669938();
}

uint64_t OUTLINED_FUNCTION_1_49(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_5_35(__n128 *a1, __n128 a2)
{
  a1[1] = a2;

  return sub_26666C338();
}

uint64_t OUTLINED_FUNCTION_12_25(uint64_t result, uint64_t a2)
{
  *(v2 - 192) = result;
  *(v2 - 184) = a2;
  *(v2 - 104) = 32;
  *(v2 - 96) = 0xE100000000000000;
  *(v2 - 120) = 95;
  *(v2 - 112) = 0xE100000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_13_19(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{

  return sub_26666C6F8();
}

uint64_t OUTLINED_FUNCTION_16_20()
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_18_14()
{

  JUMPOUT(0x266788710);
}

uint64_t OUTLINED_FUNCTION_19_21()
{
}

uint64_t OUTLINED_FUNCTION_21_13()
{
}

uint64_t OUTLINED_FUNCTION_25_16(uint64_t result, uint64_t a2)
{
  *(v2 - 96) = result;
  *(v2 - 88) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_27_19(__n128 *a1, __n128 a2)
{
  a1[1] = a2;

  return sub_26664F8BC();
}

uint64_t OUTLINED_FUNCTION_28_12@<X0>(uint64_t a1@<X8>)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;

  return sub_26666C338();
}

uint64_t OUTLINED_FUNCTION_29_9()
{

  return sub_26666A058();
}

id sub_266663660(uint64_t a1, double a2, double a3)
{
  v5 = a1;
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v7 = sub_26666374C(v5);
  v9 = v8;
  v10 = v6;
  sub_266663764(v7, v9, v10);
  v11 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  [v10 setMaxAge_];

  v12 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  [v10 setSearchTimeout_];

  return v10;
}

void sub_266663764(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_26666C2F8();

  [a3 setDesiredAccuracy_];
}

unint64_t _INPBTargetEventUnsupportedReason.description.getter(int a1)
{
  v1 = 0xD000000000000016;
  if (a1 != 1)
  {
    v1 = 0;
  }

  if (a1 == 2)
  {
    return 0xD000000000000020;
  }

  else
  {
    return v1;
  }
}

unint64_t _INPBParticipantUnsupportedReason.description.getter(int a1)
{
  v1 = 0xD000000000000013;
  if (a1 != 1)
  {
    v1 = 0;
  }

  if (a1 == 2)
  {
    return 0xD000000000000015;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_266663890()
{
  OUTLINED_FUNCTION_14();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_2666695E8();
  v1[5] = v4;
  v1[6] = *(v4 - 8);
  v1[7] = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_4_14();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_266663944()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  v4 = *(v0 + 24);
  v5 = **(v0 + 32);
  sub_266618A68();

  v6 = v5;
  v7 = v4;
  sub_2666695D8();
  sub_266669608();
  v8 = sub_2666695F8();
  (*(v2 + 8))(v1, v3);

  v9 = *(v0 + 8);

  return v9(v8);
}

uint64_t sub_266663A38()
{
  OUTLINED_FUNCTION_14();
  v1[7] = v2;
  v1[8] = v0;
  v3 = sub_266669708();
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = OUTLINED_FUNCTION_19();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D330, &unk_26666EEA0);
  OUTLINED_FUNCTION_3_3(v4);
  v1[12] = OUTLINED_FUNCTION_19();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE20, &unk_26666EAE0);
  OUTLINED_FUNCTION_3_3(v5);
  v1[13] = OUTLINED_FUNCTION_19();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D338, &qword_26666EEB0);
  OUTLINED_FUNCTION_3_3(v6);
  v1[14] = OUTLINED_FUNCTION_19();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE30, &unk_26666EAF0);
  OUTLINED_FUNCTION_3_3(v7);
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  OUTLINED_FUNCTION_4_14();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_266663BAC()
{
  sub_26655358C(*(v0 + 64) + 16, v0 + 16);
  v1 = *(v0 + 40);
  *(v0 + 136) = v1;
  *(v0 + 152) = __swift_project_boxed_opaque_existential_1((v0 + 16), v1);
  v2 = type metadata accessor for Snippet(0);
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v2);
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v2);
  v9 = swift_task_alloc();
  *(v0 + 160) = v9;
  *v9 = v0;
  v9[1] = sub_266663C9C;

  return sub_2665DDD34();
}

uint64_t sub_266663C9C(uint64_t a1)
{
  OUTLINED_FUNCTION_5_1();
  v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_5_0();
  *v7 = v6;
  v5[21] = v1;

  if (v1)
  {
    v8 = v5[16];
    sub_266557D74(v5[15], &unk_28007DE30, &unk_26666EAF0);
    sub_266557D74(v8, &unk_28007DE30, &unk_26666EAF0);
  }

  else
  {
    v5[22] = a1;
  }

  OUTLINED_FUNCTION_4_14();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266663DE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, char a10, __int16 a11, __int128 a12, uint64_t a13, uint64_t a14)
{
  v15 = v14[17];
  sub_2666699C8();
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
  sub_26666BB08();
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
  sub_266669788();
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v27);
  sub_2665D5640(v15);
  sub_26656CFC4();
  v28 = swift_task_alloc();
  v14[23] = v28;
  *v28 = v14;
  v28[1] = sub_266663F3C;
  v29 = v14[22];
  v30 = v14[16];
  v32 = v14[14];
  v31 = v14[15];
  v33 = v14[11];
  v34 = v14[7];

  return sub_2665643AC(v34, v30, v31, v29, 0, 0, v32, v33, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_266663F3C()
{
  OUTLINED_FUNCTION_5_1();
  v2 = v1[22];
  v16 = v1[16];
  v3 = v1[15];
  v4 = v1[14];
  v5 = v1[13];
  v6 = v1[12];
  v7 = v1[11];
  v8 = v1[10];
  v9 = v1[9];
  v10 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v11 = v10;

  (*(v8 + 8))(v7, v9);
  sub_266557D74(v6, &qword_28007D330, &unk_26666EEA0);
  sub_266557D74(v5, &unk_28007DE20, &unk_26666EAE0);
  sub_266557D74(v4, &qword_28007D338, &qword_26666EEB0);
  sub_266557D74(v3, &unk_28007DE30, &unk_26666EAF0);
  sub_266557D74(v16, &unk_28007DE30, &unk_26666EAF0);
  OUTLINED_FUNCTION_4_14();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_266664198()
{
  OUTLINED_FUNCTION_22_3();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_266664230()
{
  OUTLINED_FUNCTION_22_3();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2666642C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_26655A20C;

  return MEMORY[0x2821B9C68](a1, a2, a3, a4);
}

uint64_t sub_26666438C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_26655A20C;

  return MEMORY[0x2821B9C70](a1, a2, a3, a4);
}

uint64_t sub_266664450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_26655A20C;

  return MEMORY[0x2821B9C48](a1, a2, a3, a4);
}

uint64_t sub_266664514()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26655A20C;

  return sub_266663A38();
}

uint64_t sub_2666645AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_26655A20C;

  return MEMORY[0x2821B9C60](a1, a2, a3, a4);
}

uint64_t sub_266664670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_26655A20C;

  return MEMORY[0x2821B9C58](a1, a2, a3, a4);
}

uint64_t sub_266664734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_266559CAC;

  return MEMORY[0x2821B9C38](a1, a2, a3, a4);
}

uint64_t sub_2666647F8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26657A00C;

  return sub_266663890();
}

unint64_t sub_2666648A0()
{
  result = qword_28007FFE0;
  if (!qword_28007FFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007FFE0);
  }

  return result;
}

uint64_t sub_2666648F4()
{
  v1 = OBJC_IVAR____TtCC19SiriCalendarIntents20CalendarEventConcept7Builder_identifier;
  v2 = sub_26666BDA8();
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCC19SiriCalendarIntents20CalendarEventConcept7Builder_title, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtCC19SiriCalendarIntents20CalendarEventConcept7Builder_dateTimeRange) = 0;
  *(v0 + OBJC_IVAR____TtCC19SiriCalendarIntents20CalendarEventConcept7Builder_recurrence) = 0;
  *(v0 + OBJC_IVAR____TtCC19SiriCalendarIntents20CalendarEventConcept7Builder_location) = 0;
  *(v0 + OBJC_IVAR____TtCC19SiriCalendarIntents20CalendarEventConcept7Builder_participants) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtCC19SiriCalendarIntents20CalendarEventConcept7Builder_isAllDay) = 0;
  *(v0 + OBJC_IVAR____TtCC19SiriCalendarIntents20CalendarEventConcept7Builder_isBirthday) = 0;
  *(v0 + OBJC_IVAR____TtCC19SiriCalendarIntents20CalendarEventConcept7Builder_wasPreviouslyRead) = 0;
  *(v0 + OBJC_IVAR____TtCC19SiriCalendarIntents20CalendarEventConcept7Builder_startAndEndEqual) = 0;
  return v0;
}

uint64_t sub_2666649EC(uint64_t a1, void *a2)
{
  *(v2 + *a2) = a1;
}

uint64_t sub_266664A34(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtCC19SiriCalendarIntents20CalendarEventConcept7Builder_participants) = a1;
}

uint64_t sub_266664A80()
{
  sub_266583058(v0 + OBJC_IVAR____TtCC19SiriCalendarIntents20CalendarEventConcept7Builder_identifier);
  sub_266583058(v0 + OBJC_IVAR____TtCC19SiriCalendarIntents20CalendarEventConcept7Builder_title);

  return v0;
}

uint64_t sub_266664B2C(uint64_t a1)
{
  *(v1 + 16) = 0;
  v3 = OBJC_IVAR____TtCC19SiriCalendarIntents20CalendarEventConcept7Builder_identifier;
  swift_beginAccess();
  sub_2665BE640(a1 + v3, v1 + OBJC_IVAR____TtC19SiriCalendarIntents20CalendarEventConcept_identifier);
  v4 = OBJC_IVAR____TtCC19SiriCalendarIntents20CalendarEventConcept7Builder_title;
  swift_beginAccess();
  sub_2665BE640(a1 + v4, v1 + OBJC_IVAR____TtC19SiriCalendarIntents20CalendarEventConcept_title);
  *(v1 + OBJC_IVAR____TtC19SiriCalendarIntents20CalendarEventConcept_dateTimeRange) = *(a1 + OBJC_IVAR____TtCC19SiriCalendarIntents20CalendarEventConcept7Builder_dateTimeRange);
  *(v1 + OBJC_IVAR____TtC19SiriCalendarIntents20CalendarEventConcept_recurrence) = *(a1 + OBJC_IVAR____TtCC19SiriCalendarIntents20CalendarEventConcept7Builder_recurrence);
  *(v1 + OBJC_IVAR____TtC19SiriCalendarIntents20CalendarEventConcept_location) = *(a1 + OBJC_IVAR____TtCC19SiriCalendarIntents20CalendarEventConcept7Builder_location);
  *(v1 + OBJC_IVAR____TtC19SiriCalendarIntents20CalendarEventConcept_participants) = *(a1 + OBJC_IVAR____TtCC19SiriCalendarIntents20CalendarEventConcept7Builder_participants);
  *(v1 + OBJC_IVAR____TtC19SiriCalendarIntents20CalendarEventConcept_isAllDay) = *(a1 + OBJC_IVAR____TtCC19SiriCalendarIntents20CalendarEventConcept7Builder_isAllDay);
  *(v1 + OBJC_IVAR____TtC19SiriCalendarIntents20CalendarEventConcept_isBirthday) = *(a1 + OBJC_IVAR____TtCC19SiriCalendarIntents20CalendarEventConcept7Builder_isBirthday);
  *(v1 + OBJC_IVAR____TtC19SiriCalendarIntents20CalendarEventConcept_wasPreviouslyRead) = *(a1 + OBJC_IVAR____TtCC19SiriCalendarIntents20CalendarEventConcept7Builder_wasPreviouslyRead);
  v5 = *(a1 + OBJC_IVAR____TtCC19SiriCalendarIntents20CalendarEventConcept7Builder_startAndEndEqual);

  *(v1 + OBJC_IVAR____TtC19SiriCalendarIntents20CalendarEventConcept_startAndEndEqual) = v5;
  return v1;
}

uint64_t sub_266664CB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007D130, &unk_266671DF0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v36 - v11;
  v13 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v13 || (OUTLINED_FUNCTION_2_6(0x696669746E656469, 0xEA00000000007265) & 1) != 0)
  {
    sub_2665BE640(v3 + OBJC_IVAR____TtC19SiriCalendarIntents20CalendarEventConcept_identifier, v12);
    v14 = sub_26666BDA8();
    if (__swift_getEnumTagSinglePayload(v12, 1, v14) == 1)
    {
      v15 = v12;
LABEL_8:
      result = sub_266583058(v15);
LABEL_9:
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return result;
    }

    *(a3 + 24) = v14;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
    return (*(*(v14 - 8) + 32))(boxed_opaque_existential_1, v12, v14);
  }

  else
  {
    v18 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
    if (!v18 && (OUTLINED_FUNCTION_2_6(0x656C746974, 0xE500000000000000) & 1) == 0)
    {
      result = OUTLINED_FUNCTION_13_20();
      v22 = a1 == result && a2 == v21;
      if (v22 || (result = OUTLINED_FUNCTION_2_6(result, v21), (result & 1) != 0))
      {
        if (!*(v3 + OBJC_IVAR____TtC19SiriCalendarIntents20CalendarEventConcept_dateTimeRange))
        {
          goto LABEL_9;
        }

        v23 = sub_26666BB78();
      }

      else
      {
        result = 0x6E65727275636572;
        v24 = a1 == 0x6E65727275636572 && a2 == 0xEA00000000006563;
        if (v24 || (result = OUTLINED_FUNCTION_2_6(0x6E65727275636572, 0xEA00000000006563), (result & 1) != 0))
        {
          if (!*(v3 + OBJC_IVAR____TtC19SiriCalendarIntents20CalendarEventConcept_recurrence))
          {
            goto LABEL_9;
          }

          v23 = type metadata accessor for CalendarEventRecurrence();
        }

        else
        {
          result = 0x6E6F697461636F6CLL;
          if (a1 != 0x6E6F697461636F6CLL || a2 != 0xE800000000000000)
          {
            result = OUTLINED_FUNCTION_2_6(0x6E6F697461636F6CLL, 0xE800000000000000);
            if ((result & 1) == 0)
            {
              v26 = OUTLINED_FUNCTION_15_20();
              v28 = a1 == v26 && a2 == v27;
              if (v28 || (OUTLINED_FUNCTION_2_6(v26, v27) & 1) != 0)
              {
                v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280080030, &qword_26667C9E8);
                OUTLINED_FUNCTION_17_18(v29);
              }

              else
              {
                result = 0x7961446C6C417369;
                v30 = a1 == 0x7961446C6C417369 && a2 == 0xE800000000000000;
                if (v30 || (result = OUTLINED_FUNCTION_2_6(0x7961446C6C417369, 0xE800000000000000), (result & 1) != 0))
                {
                  v31 = OBJC_IVAR____TtC19SiriCalendarIntents20CalendarEventConcept_isAllDay;
                }

                else
                {
                  result = 0x6468747269427369;
                  v33 = a1 == 0x6468747269427369 && a2 == 0xEA00000000007961;
                  if (v33 || (result = OUTLINED_FUNCTION_2_6(0x6468747269427369, 0xEA00000000007961), (result & 1) != 0))
                  {
                    v31 = OBJC_IVAR____TtC19SiriCalendarIntents20CalendarEventConcept_isBirthday;
                  }

                  else
                  {
                    v34 = a1 == 0xD000000000000011 && 0x800000026667D600 == a2;
                    if (v34 || (result = OUTLINED_FUNCTION_2_6(0xD000000000000011, 0x800000026667D600), (result & 1) != 0))
                    {
                      v31 = OBJC_IVAR____TtC19SiriCalendarIntents20CalendarEventConcept_wasPreviouslyRead;
                    }

                    else
                    {
                      if (a1 != 0xD000000000000010 || 0x800000026667D620 != a2)
                      {
                        result = OUTLINED_FUNCTION_2_6(0xD000000000000010, 0x800000026667D620);
                        if ((result & 1) == 0)
                        {
                          goto LABEL_9;
                        }
                      }

                      v31 = OBJC_IVAR____TtC19SiriCalendarIntents20CalendarEventConcept_startAndEndEqual;
                    }
                  }
                }

                v32 = *(v3 + v31);
                *(a3 + 24) = MEMORY[0x277D839B0];
                *a3 = v32;
              }

              return result;
            }
          }

          if (!*(v3 + OBJC_IVAR____TtC19SiriCalendarIntents20CalendarEventConcept_location))
          {
            goto LABEL_9;
          }

          v23 = sub_26666BD58();
        }
      }

      OUTLINED_FUNCTION_17_18(v23);
    }

    sub_2665BE640(v3 + OBJC_IVAR____TtC19SiriCalendarIntents20CalendarEventConcept_title, v10);
    v19 = sub_26666BDA8();
    if (__swift_getEnumTagSinglePayload(v10, 1, v19) == 1)
    {
      v15 = v10;
      goto LABEL_8;
    }

    *(a3 + 24) = v19;
    v20 = __swift_allocate_boxed_opaque_existential_1(a3);
    return (*(*(v19 - 8) + 32))(v20, v10, v19);
  }
}

unint64_t sub_26666510C(uint64_t a1, uint64_t a2)
{
  v2 = sub_26666C958();

  if (v2 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_266665160(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 0x656C746974;
      break;
    case 2:
      result = OUTLINED_FUNCTION_13_20();
      break;
    case 3:
      result = 0x6E65727275636572;
      break;
    case 4:
      result = 0x6E6F697461636F6CLL;
      break;
    case 5:
      result = OUTLINED_FUNCTION_15_20();
      break;
    case 6:
      result = 0x7961446C6C417369;
      break;
    case 7:
      result = 0x6468747269427369;
      break;
    case 8:
      result = 0xD000000000000011;
      break;
    case 9:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_2666652B0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_26666510C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_2666652E0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_266665160(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_266665328@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_266665158(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26666535C(uint64_t a1)
{
  v2 = sub_2666661F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266665398(uint64_t a1)
{
  v2 = sub_2666661F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2666653D4()
{
  sub_266583058(v0 + OBJC_IVAR____TtC19SiriCalendarIntents20CalendarEventConcept_identifier);
  sub_266583058(v0 + OBJC_IVAR____TtC19SiriCalendarIntents20CalendarEventConcept_title);

  return v0;
}

uint64_t sub_26666546C(void (*a1)(void))
{
  a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x2821FE8D8](v1, v2, v3);
}

void sub_2666654F0(uint64_t a1)
{
  sub_2665BE03C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_2666655B0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280080040, &qword_26667C9F0);
  OUTLINED_FUNCTION_3_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2666661F4();
  sub_26666CBE8();
  v11 = OBJC_IVAR____TtC19SiriCalendarIntents20CalendarEventConcept_identifier;
  v22 = 0;
  sub_26666BDA8();
  OUTLINED_FUNCTION_6_29();
  sub_2666661AC(v12, v13, MEMORY[0x277D55C50]);
  OUTLINED_FUNCTION_12_26(v3 + v11);
  if (!v2)
  {
    v22 = 1;
    OUTLINED_FUNCTION_12_26(v3 + OBJC_IVAR____TtC19SiriCalendarIntents20CalendarEventConcept_title);
    OUTLINED_FUNCTION_16_21(OBJC_IVAR____TtC19SiriCalendarIntents20CalendarEventConcept_dateTimeRange);
    HIBYTE(v21) = 2;
    sub_26666BB78();
    OUTLINED_FUNCTION_5_36();
    sub_2666661AC(v14, v15, MEMORY[0x277D55B20]);
    OUTLINED_FUNCTION_0_49();
    sub_26666CA38();
    OUTLINED_FUNCTION_16_21(OBJC_IVAR____TtC19SiriCalendarIntents20CalendarEventConcept_recurrence);
    HIBYTE(v21) = 3;
    type metadata accessor for CalendarEventRecurrence();
    OUTLINED_FUNCTION_8_27();
    sub_2666661AC(v16, v17, &unk_26667B008);
    OUTLINED_FUNCTION_0_49();
    sub_26666CA38();
    OUTLINED_FUNCTION_16_21(OBJC_IVAR____TtC19SiriCalendarIntents20CalendarEventConcept_location);
    HIBYTE(v21) = 4;
    sub_26666BD58();
    OUTLINED_FUNCTION_7_32();
    sub_2666661AC(v18, v19, MEMORY[0x277D55BD0]);
    OUTLINED_FUNCTION_0_49();
    sub_26666CA38();
    OUTLINED_FUNCTION_16_21(OBJC_IVAR____TtC19SiriCalendarIntents20CalendarEventConcept_participants);
    HIBYTE(v21) = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280080030, &qword_26667C9E8);
    sub_266666248(&qword_280080050, &qword_28007E4A8, &unk_266674728, MEMORY[0x277D83948]);
    OUTLINED_FUNCTION_0_49();
    sub_26666CA78();
    OUTLINED_FUNCTION_3_40(6);
    OUTLINED_FUNCTION_3_40(7);
    OUTLINED_FUNCTION_3_40(8);
    OUTLINED_FUNCTION_3_40(9);
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_266665910(void *a1)
{
  v2 = swift_allocObject();
  sub_266665A44(a1);
  return v2;
}

void sub_266665988(uint64_t a1)
{
  sub_2665BE03C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

id *sub_266665A44(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007D130, &unk_266671DF0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v28 - v9;
  v28[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280080018, &qword_26667C9E0);
  OUTLINED_FUNCTION_3_0();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  *(v3 + 16) = 0;
  v14 = a1[3];
  v29 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_2666661F4();
  sub_26666CBD8();
  if (v2)
  {

    type metadata accessor for CalendarEventConcept(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v28[0] = v12;
    v15 = sub_26666BDA8();
    LOBYTE(v31) = 0;
    OUTLINED_FUNCTION_6_29();
    sub_2666661AC(v16, v17, MEMORY[0x277D55C60]);
    OUTLINED_FUNCTION_14_19(v15, &v31);
    sub_2665BE5D0(v10, v3 + OBJC_IVAR____TtC19SiriCalendarIntents20CalendarEventConcept_identifier);
    LOBYTE(v31) = 1;
    OUTLINED_FUNCTION_14_19(v15, &v31);
    sub_2665BE5D0(v8, v3 + OBJC_IVAR____TtC19SiriCalendarIntents20CalendarEventConcept_title);
    sub_26666BB78();
    v30 = 2;
    OUTLINED_FUNCTION_5_36();
    sub_2666661AC(v19, v20, MEMORY[0x277D55B28]);
    OUTLINED_FUNCTION_1_50();
    sub_26666C9A8();
    *(v3 + OBJC_IVAR____TtC19SiriCalendarIntents20CalendarEventConcept_dateTimeRange) = v31;
    type metadata accessor for CalendarEventRecurrence();
    v30 = 3;
    OUTLINED_FUNCTION_8_27();
    sub_2666661AC(v21, v22, &unk_26667B030);
    OUTLINED_FUNCTION_1_50();
    sub_26666C9A8();
    *(v3 + OBJC_IVAR____TtC19SiriCalendarIntents20CalendarEventConcept_recurrence) = v31;
    sub_26666BD58();
    v30 = 4;
    OUTLINED_FUNCTION_7_32();
    sub_2666661AC(v23, v24, MEMORY[0x277D55BD8]);
    OUTLINED_FUNCTION_1_50();
    sub_26666C9A8();
    *(v3 + OBJC_IVAR____TtC19SiriCalendarIntents20CalendarEventConcept_location) = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280080030, &qword_26667C9E8);
    v30 = 5;
    sub_266666248(&qword_280080038, &qword_28007E4A0, &unk_266674750, MEMORY[0x277D83978]);
    OUTLINED_FUNCTION_1_50();
    sub_26666C9E8();
    *(v3 + OBJC_IVAR____TtC19SiriCalendarIntents20CalendarEventConcept_participants) = v31;
    *(v3 + OBJC_IVAR____TtC19SiriCalendarIntents20CalendarEventConcept_isAllDay) = OUTLINED_FUNCTION_2_46(6) & 1;
    *(v3 + OBJC_IVAR____TtC19SiriCalendarIntents20CalendarEventConcept_isBirthday) = OUTLINED_FUNCTION_2_46(7) & 1;
    *(v3 + OBJC_IVAR____TtC19SiriCalendarIntents20CalendarEventConcept_wasPreviouslyRead) = OUTLINED_FUNCTION_2_46(8) & 1;
    v25 = OUTLINED_FUNCTION_2_46(9);
    v26 = OUTLINED_FUNCTION_9_29();
    v27(v26);
    *(v3 + OBJC_IVAR____TtC19SiriCalendarIntents20CalendarEventConcept_startAndEndEqual) = v25 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1(v29);
  return v3;
}

uint64_t sub_2666660CC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_266665910(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_2666661AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2666661F4()
{
  result = qword_280080020;
  if (!qword_280080020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280080020);
  }

  return result;
}

uint64_t sub_266666248(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280080030, &qword_26667C9E8);
    sub_2666661AC(a2, type metadata accessor for CalendarEventParticipant, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CalendarEventConcept.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2666663C4()
{
  result = qword_280080058;
  if (!qword_280080058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280080058);
  }

  return result;
}

unint64_t sub_26666641C()
{
  result = qword_280080060;
  if (!qword_280080060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280080060);
  }

  return result;
}

unint64_t sub_266666474()
{
  result = qword_280080068;
  if (!qword_280080068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280080068);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_46@<X0>(char a1@<W8>)
{
  *(v1 - 72) = a1;

  return sub_26666C9C8();
}

uint64_t OUTLINED_FUNCTION_3_40@<X0>(char a2@<W8>)
{
  *(v2 - 72) = a2;

  return sub_26666CA58();
}

uint64_t OUTLINED_FUNCTION_12_26(uint64_t a1)
{

  return sub_26666CA38();
}

uint64_t OUTLINED_FUNCTION_14_19(uint64_t a1, uint64_t a2)
{

  return sub_26666C9A8();
}

uint64_t OUTLINED_FUNCTION_17_18(uint64_t a1)
{
  v1[3] = a1;
  *v1 = v2;
  return v2;
}

uint64_t SiriCalendarFeatureManager.isCarPlaySnippetsEnabled.getter()
{
  v1[0] = "SiriCalendar";
  v1[1] = 12;
  v2 = 2;
  v3 = "CarPlaySnippets";
  v4 = 15;
  v5 = 2;
  return sub_26662AC30(v1) & 1;
}

uint64_t SiriCalendarFeatureManager.isCarPlayUIRefreshEnabled.getter()
{
  *&v1 = "CarPlay";
  *(&v1 + 1) = 7;
  v2 = 2;
  v3 = "CarPlayUIRefresh";
  v4 = 16;
  v5 = 2;
  return sub_26662CD04(&v1) & 1;
}

unint64_t sub_26666678C()
{
  result = qword_28007D740;
  if (!qword_28007D740)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28007D740);
  }

  return result;
}

uint64_t sub_2666667DC(SEL *a1)
{
  v2 = [v1 *a1];
  sub_26666678C();
  v3 = sub_26666C658();
  if (v2)
  {
    v4 = sub_26666C678();

    v3 = v2;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_26666685C@<X0>(void **a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v15 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007D130, &unk_266671DF0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = sub_266668D98();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = *a1;
  type metadata accessor for CalendarEventParticipant(0);
  sub_26666BCA8();
  v10 = [v9 person];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_266669648();
  v11 = sub_26666BC98();
  [v9 status];
  INEventParticipantStatus.description.getter();
  sub_26666C358();

  v12 = sub_26666BDA8();
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v12);
  result = sub_2665BD864(v11, v7);
  *v15 = result;
  return result;
}

uint64_t sub_266666A24(uint64_t a1, char a2)
{
  *(v2 + 194) = a2;
  *(v2 + 1264) = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280080070, &qword_26667CC88);
  *(v2 + 1272) = v3;
  *(v2 + 1280) = *(v3 - 8);
  *(v2 + 1288) = OUTLINED_FUNCTION_19();
  *(v2 + 1296) = _s15ReadingStrategyVMa(0);
  *(v2 + 1304) = OUTLINED_FUNCTION_19();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280080078, &qword_26667CC90);
  *(v2 + 1312) = v4;
  *(v2 + 1320) = *(v4 - 8);
  *(v2 + 1328) = swift_task_alloc();
  *(v2 + 1336) = swift_task_alloc();
  *(v2 + 1344) = swift_task_alloc();
  *(v2 + 1352) = type metadata accessor for TaskParser(0);
  *(v2 + 1360) = OUTLINED_FUNCTION_19();
  sub_26666BE18();
  *(v2 + 1368) = OUTLINED_FUNCTION_19();

  return MEMORY[0x2822009F8](sub_266666BE0, 0, 0);
}

uint64_t sub_266666BE0(uint64_t a1)
{
  v2 = *(v1 + 1360);
  v3 = *(v1 + 1352);
  sub_266669638();
  type metadata accessor for CommonCATsSimple(0);
  sub_26666BE08();
  v4 = sub_26666BDD8();
  *(v1 + 1376) = v4;
  sub_266669E68();
  __swift_project_boxed_opaque_existential_1((v1 + 1136), *(v1 + 1160));
  sub_266669648();
  v5 = (v2 + v3[5]);
  v5[3] = type metadata accessor for CalendarDateTimeResolver(0);
  v5[4] = &off_28780BA58;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v5);
  boxed_opaque_existential_1[3] = &type metadata for AceUserLocationProvider;
  boxed_opaque_existential_1[4] = &off_28780A9C8;
  OUTLINED_FUNCTION_4();
  v7 = swift_allocObject();
  *boxed_opaque_existential_1 = v7;
  sub_2665524C0(v1 + 1176, v7 + 16);
  sub_266668D88();
  sub_26666B548();
  v8 = (v2 + v3[6]);
  v9 = type metadata accessor for CalendarContactResolver(0);
  v8[3] = v9;
  v8[4] = &off_287809148;
  *(__swift_allocate_boxed_opaque_existential_1(v8) + *(v9 + 20)) = 0;
  sub_26666B338();
  sub_26666C068();
  v10 = sub_26666C058();
  v11 = (v2 + v3[7]);
  v11[3] = &type metadata for CalendarReferenceResolver;
  v11[4] = &off_28780BAC8;
  *v11 = v10;
  if (qword_28156CD28 != -1)
  {
    swift_once();
  }

  v77 = *(v1 + 1352);
  v79 = *(v1 + 1360);
  v82 = *(v1 + 194);
  v12 = *(v1 + 1264);
  v13 = qword_28156D828;
  v73 = qword_28156D828;
  v14 = v12[4];
  __swift_project_boxed_opaque_existential_1(v12, v12[3]);
  v15 = OUTLINED_FUNCTION_79();
  v76 = v16(v15, v14);
  sub_26655358C(v1 + 1136, v1 + 1096);
  v17 = v12[3];
  v18 = v12[4];
  __swift_project_boxed_opaque_existential_1(v12, v17);
  v19 = *(v18 + 32);

  v20 = v19(v17, v18);
  v74 = v21;
  v75 = v20;
  v72 = type metadata accessor for EventProvider();
  *(v1 + 1000) = v72;
  *(v1 + 1008) = &off_287806290;
  *(v1 + 976) = v13;
  *(v1 + 960) = &type metadata for AceUserLocationProvider;
  *(v1 + 968) = &off_28780A9C8;
  OUTLINED_FUNCTION_4();
  v22 = swift_allocObject();
  *(v1 + 936) = v22;
  sub_2665524C0(v1 + 1176, v22 + 16);
  v23 = v4;
  v24 = _s13IntentHandlerCMa();
  v25 = objc_allocWithZone(v24);
  v26 = *(v1 + 1000);
  v27 = __swift_mutable_project_boxed_opaque_existential_1(v1 + 976, v26);
  v28 = *(v26 - 8);
  v29 = OUTLINED_FUNCTION_19();
  (*(v28 + 16))(v29, v27, v26);
  v30 = *(v1 + 960);
  v31 = __swift_mutable_project_boxed_opaque_existential_1(v1 + 936, v30);
  v32 = *(v30 - 8);
  v33 = OUTLINED_FUNCTION_19();
  (*(v32 + 16))(v33, v31, v30);
  v34 = *v29;
  *(v1 + 880) = v72;
  *(v1 + 888) = &off_287806290;
  *(v1 + 856) = v34;
  *(v1 + 720) = &type metadata for AceUserLocationProvider;
  *(v1 + 728) = &off_28780A9C8;
  OUTLINED_FUNCTION_4();
  v35 = swift_allocObject();
  *(v1 + 696) = v35;
  v36 = *(v33 + 32);
  v37 = *(v33 + 16);
  *(v35 + 16) = *v33;
  *(v35 + 32) = v37;
  *(v35 + 48) = v36;
  sub_26655358C(v1 + 856, &v25[OBJC_IVAR____TtCO19SiriCalendarIntents10FindEvents13IntentHandler_eventProvider]);
  v25[OBJC_IVAR____TtCO19SiriCalendarIntents10FindEvents13IntentHandler_ordinalReference] = v76;
  sub_26655358C(v1 + 696, &v25[OBJC_IVAR____TtCO19SiriCalendarIntents10FindEvents13IntentHandler_locationProvider]);
  *&v25[OBJC_IVAR____TtCO19SiriCalendarIntents10FindEvents13IntentHandler_commonCats] = v23;
  sub_26655358C(v1 + 1096, &v25[OBJC_IVAR____TtCO19SiriCalendarIntents10FindEvents13IntentHandler_deviceState]);
  v38 = &v25[OBJC_IVAR____TtCO19SiriCalendarIntents10FindEvents13IntentHandler_fallbackSearchQuery];
  *v38 = v75;
  v38[1] = v74;
  v25[OBJC_IVAR____TtCO19SiriCalendarIntents10FindEvents13IntentHandler_intentAction] = v82;
  *(v1 + 1216) = v25;
  *(v1 + 1224) = v24;

  v39 = objc_msgSendSuper2((v1 + 1216), sel_init);
  __swift_destroy_boxed_opaque_existential_1((v1 + 1096));
  __swift_destroy_boxed_opaque_existential_1((v1 + 696));
  __swift_destroy_boxed_opaque_existential_1((v1 + 856));
  __swift_destroy_boxed_opaque_existential_1((v1 + 936));

  __swift_destroy_boxed_opaque_existential_1((v1 + 976));

  *(v1 + 584) = v77;
  *(v1 + 592) = &off_287808308;
  v40 = __swift_allocate_boxed_opaque_existential_1((v1 + 560));
  sub_266667D3C(v79, v40, type metadata accessor for TaskParser);
  *(v1 + 600) = v39;
  sub_26655358C(v1 + 1136, v1 + 736);
  *(v1 + 800) = v72;
  *(v1 + 808) = &off_287806290;
  *(v1 + 776) = v73;
  v41 = sub_2666699F8();
  swift_allocObject();
  OUTLINED_FUNCTION_79();

  v80 = v39;
  v42 = sub_2666699E8();
  *(v1 + 840) = v41;
  v43 = MEMORY[0x277D5BD58];
  *(v1 + 848) = MEMORY[0x277D5BD58];
  *(v1 + 816) = v42;
  type metadata accessor for FindEventsCATsSimple(0);
  sub_26666BE08();
  v78 = sub_26666BDD8();
  v81 = v12;
  sub_26655358C(v12, v1 + 656);
  sub_266552C44(0, &qword_28156C0D0, 0x277CD3C10);
  sub_266552C44(0, &unk_28156C0B0, 0x277CD3C18);

  sub_2666694A8();
  swift_allocObject();
  v44 = sub_2666699E8();
  *(v1 + 920) = v41;
  *(v1 + 928) = v43;
  *(v1 + 896) = v44;
  *(v1 + 1384) = sub_26666BE38();
  sub_26666BE28();
  sub_2666693C8();

  sub_266669458();
  sub_26655358C(v1 + 816, v1 + 480);
  sub_26655358C(v1 + 736, v1 + 520);
  *(v1 + 472) = v23;
  sub_266667B80(v1 + 472, v1 + 384);
  v45 = swift_allocObject();
  memcpy((v45 + 16), (v1 + 384), 0x58uLL);

  sub_266669478();
  sub_26666BD78();
  sub_26666BD68();
  v46 = sub_26666BE78();
  swift_allocObject();
  v47 = sub_26666BE68();
  v48 = sub_26666C058();
  *(v1 + 1040) = &type metadata for CalendarReferenceResolver;
  *(v1 + 1048) = &off_28780BAC8;
  *(v1 + 1016) = v48;
  sub_26655358C(v1 + 736, v1 + 1056);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280080080, &qword_26667CC98);
  v49 = swift_allocObject();
  v50 = MEMORY[0x277D56578];
  *(v49 + 48) = v46;
  *(v49 + 56) = v50;
  *(v49 + 24) = v47;
  *(v49 + 88) = &type metadata for DisambiguationResponseParser;
  *(v49 + 96) = &off_287806688;
  OUTLINED_FUNCTION_4();
  v51 = swift_allocObject();
  *(v49 + 64) = v51;
  sub_26656CCE8(v1 + 1016, v51 + 16);
  *(v49 + 144) = 0;
  *(v49 + 152) = 0;
  *(v49 + 160) = 0x80;
  *(v49 + 16) = v82;
  sub_26654B7D8((v1 + 1056), v49 + 104);
  sub_26656CD44(v1 + 1016);
  *(v1 + 1232) = v49;
  sub_26655369C(qword_28156C870, &qword_280080080, &qword_26667CC98, &unk_266677178);
  sub_2666693E8();
  sub_266669498();
  if (v82 == 3)
  {
    v52 = *(v1 + 1304);
    v53 = *(v1 + 1296);
    sub_26655358C(v1 + 736, (v52 + 2));
    sub_26655358C(v1 + 776, (v52 + 7));
    sub_2666257C8(v1 + 896, (v52 + 12));
    v54 = *(v53 + 40);

    sub_266625354(v52 + v54);
    *v52 = v78;
    v52[1] = v23;
    sub_2666257C8(v1 + 896, v1 + 32);
    sub_26655358C(v1 + 776, v1 + 72);
    sub_26655358C(v1 + 736, v1 + 112);
    *(v1 + 176) = v53;
    *(v1 + 184) = &off_28780AAF8;
    v55 = __swift_allocate_boxed_opaque_existential_1((v1 + 152));
    sub_266667D3C(v52, v55, _s15ReadingStrategyVMa);
    v56 = *(v1 + 688);
    __swift_project_boxed_opaque_existential_1((v1 + 656), *(v1 + 680));
    v57 = OUTLINED_FUNCTION_79();
    LOBYTE(v54) = v58(v57, v56);
    v59 = *(v1 + 680);
    v60 = *(v1 + 688);
    __swift_project_boxed_opaque_existential_1((v1 + 656), v59);
    v61 = (*(v60 + 24))(v59, v60);
    *(v1 + 16) = v23;
    *(v1 + 24) = v78;
    *(v1 + 192) = v54 & 1;
    *(v1 + 193) = v61;
    *(v1 + 1256) = v80;
    sub_26664F318(v1 + 16, v1 + 200);
    v62 = swift_allocObject();
    memcpy((v62 + 16), (v1 + 200), 0xB2uLL);
    sub_266653D08();
    sub_2666693A8();

    sub_266669448();

    sub_266667F48(v52, _s15ReadingStrategyVMa);
    sub_266667BE4(v1 + 472);
    __swift_destroy_boxed_opaque_existential_1((v1 + 736));
    __swift_destroy_boxed_opaque_existential_1((v1 + 816));
    __swift_destroy_boxed_opaque_existential_1((v1 + 776));
    sub_26665E768(v1 + 16);
  }

  else
  {

    *(v1 + 1240) = v80;
    sub_266653D08();
    sub_2666693B8();
    sub_266669448();

    sub_266667BE4(v1 + 472);
    __swift_destroy_boxed_opaque_existential_1((v1 + 736));
    __swift_destroy_boxed_opaque_existential_1((v1 + 816));
    __swift_destroy_boxed_opaque_existential_1((v1 + 776));
  }

  sub_26656CC94(v1 + 896);
  v63 = *(v1 + 1344);
  v64 = *(v1 + 1328);
  v65 = *(v1 + 1320);
  v66 = *(v1 + 1312);
  v67 = *(v1 + 1264);
  (*(v65 + 32))(v63, *(v1 + 1336), v66);
  __swift_destroy_boxed_opaque_existential_1((v1 + 656));
  sub_266667C38(v1 + 560, v1 + 608);
  (*(v65 + 16))(v64, v63, v66);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280080088, &unk_26667CCA0);
  swift_allocObject();
  sub_2666694B8();
  sub_266667C94();
  sub_266669808();
  v68 = v81[3];
  v69 = v81[4];
  __swift_project_boxed_opaque_existential_1(v67, v68);
  v70 = swift_task_alloc();
  *(v1 + 1392) = v70;
  *v70 = v1;
  v70[1] = sub_266667868;

  return sub_2665768EC(v68, v69);
}

uint64_t sub_266667868(uint64_t a1)
{
  *(*v1 + 1400) = a1;

  return MEMORY[0x2822009F8](sub_266667968, 0, 0);
}

uint64_t sub_266667968()
{
  v1 = v0[175];
  v12 = v0[170];
  v11 = v0[168];
  v2 = v0[165];
  v10 = v0[164];
  v3 = v0[161];
  v4 = v0[160];
  v5 = v0[159];
  sub_26666BE28();
  v6 = sub_2666697F8();

  v0[156] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007EFE8, &qword_2666778E8);
  sub_26655369C(&qword_28156D148, &qword_28007EFE8, &qword_2666778E8, MEMORY[0x277D5B820]);
  v7 = sub_266669538();

  (*(v4 + 8))(v3, v5);
  (*(v2 + 8))(v11, v10);
  sub_266553184((v0 + 147));
  sub_266667CE8((v0 + 70));
  sub_266667F48(v12, type metadata accessor for TaskParser);
  __swift_destroy_boxed_opaque_existential_1(v0 + 142);

  v8 = v0[1];

  return v8(v7);
}

unint64_t sub_266667C94()
{
  result = qword_28156CE98;
  if (!qword_28156CE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28156CE98);
  }

  return result;
}

uint64_t sub_266667D3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_266667DA4(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_266667E4C;

  return sub_26664F214(a1, a2, v2 + 16);
}

uint64_t sub_266667E4C(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_266667F48(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_266667FA8(uint64_t a1, uint64_t a2)
{
  sub_26666C958();
  OUTLINED_FUNCTION_79();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_266667FF0(char a1)
{
  result = 0x7551686372616573;
  switch(a1)
  {
    case 1:
      result = 0x656D695465746164;
      break;
    case 2:
      result = 0x6E6F697461636F6CLL;
      break;
    case 3:
      result = 0x7069636974726170;
      break;
    case 4:
      result = 0xD000000000000017;
      break;
    default:
      return result;
  }

  return result;
}

void sub_2666680AC(void *a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84F90];
  v22 = MEMORY[0x277D84F90];
  v4 = sub_2665C485C();
  for (i = 0; v4 != i; ++i)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x266788B60](i, a2);
    }

    else
    {
      if (i >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }

      v6 = *(a2 + 8 * i + 32);
    }

    v7 = v6;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      return;
    }

    if ([v6 participantType] == 1)
    {
      sub_26666C868();
      sub_26666C8A8();
      sub_26666C8B8();
      sub_26666C878();
    }

    else
    {
    }
  }

  v8 = v22;
  v23 = v3;
  v21 = sub_2665C485C();
  v9 = 0;
  while (v21 != v9)
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x266788B60](v9, v8);
    }

    else
    {
      if (v9 >= *(v8 + 16))
      {
        goto LABEL_27;
      }

      v10 = *(v8 + 8 * v9 + 32);
    }

    v11 = v10;
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      goto LABEL_26;
    }

    sub_266552C44(0, &qword_28007D148, 0x277CD3E90);
    v13 = v11;
    v14 = sub_266580798(v13);
    v15 = sub_2665D5350([v13 participantStatus]);
    [v13 isCurrentUser];
    sub_266552C44(0, &qword_28007D740, 0x277CCABB0);
    v16 = sub_26666C658();
    v17 = [a1 organizer];
    [v13 isEqualToParticipant_];

    v18 = sub_26666C658();
    v19 = [objc_allocWithZone(MEMORY[0x277CD3BE8]) initWithPerson:v14 status:v15 isUser:v16 isEventOrganizer:v18];

    ++v9;
    if (v19)
    {
      MEMORY[0x2667887C0]();
      if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_26666C4B8();
      }

      sub_26666C4E8();
      v9 = v12;
    }
  }
}

uint64_t sub_2666683AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DC38, &unk_266672210);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v21 - v6;
  if (sub_26666C388() < 2 || (sub_26666C3A8(), sub_26666C408(), v8 = sub_26666C288(), , (v8 & 1) != 0))
  {
  }

  else
  {

    v22 = sub_2665E89D0(1);
    v23 = v9;
    v24 = v10;
    v25 = v11;
    v12 = sub_266668D98();
    (*(*(v12 - 8) + 16))(v7, a1, v12);
    __swift_storeEnumTagSinglePayload(v7, 0, 1, v12);
    sub_2666685B0();
    v13 = sub_26666C6D8();
    v15 = v14;
    sub_266595FDC(v7);

    v16 = sub_2665E8A54(1uLL);
    v21[0] = v13;
    v21[1] = v15;
    v22 = v16;
    v23 = v17;
    v24 = v18;
    v25 = v19;
    sub_2665E8AEC();

    sub_26666C3B8();

    return v21[0];
  }

  return a2;
}

unint64_t sub_2666685B0()
{
  result = qword_280080090;
  if (!qword_280080090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280080090);
  }

  return result;
}

uint64_t sub_266668604(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a3;
  v4[4] = v3;
  v4[2] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D140, &qword_26666F140);
  v4[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2666686A4, 0, 0);
}

uint64_t sub_2666686A4()
{
  v1 = v0[5];
  v9 = v0[3];
  v2 = sub_266668D38();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v2);
  v8 = (*(v9 + 24) + **(v9 + 24));
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_2666687D8;
  v4 = v0[5];
  v5 = v0[2];
  v6 = v0[3];

  return v8(0, v4, v5, v6);
}

uint64_t sub_2666687D8(uint64_t a1)
{
  v3 = *(*v1 + 40);
  v6 = *v1;

  sub_266574608(v3);

  v4 = *(v6 + 8);

  return v4(a1);
}