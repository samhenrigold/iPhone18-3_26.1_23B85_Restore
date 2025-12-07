uint64_t sub_2379D4D54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A6D8, &qword_237C0A140);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_2379D4E2C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A6D8, &qword_237C0A140);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t _s10ClassifierVMa(uint64_t a1)
{
  result = qword_27DE9A6E0;
  if (!qword_27DE9A6E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2379D4EF8(uint64_t a1)
{
  sub_2379D4F64(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_2379D4F64(uint64_t a1)
{
  if (!qword_27DE9A6F0)
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE9A6F8, &unk_237C10180);
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE9A700, &qword_237C0A160);
    v5 = type metadata accessor for Either(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_27DE9A6F0);
    }
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_2379D507C()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_34(v1, v2, v3, v4, v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A780, &unk_237C0A700);
  v0[9] = v7;
  OUTLINED_FUNCTION_1(v7);
  v0[10] = v8;
  v0[11] = OUTLINED_FUNCTION_19();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A700, &qword_237C0A160);
  v0[12] = v9;
  OUTLINED_FUNCTION_1(v9);
  v0[13] = v10;
  v0[14] = OUTLINED_FUNCTION_19();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A788, &unk_237C13D50);
  v0[15] = v11;
  OUTLINED_FUNCTION_1(v11);
  v0[16] = v12;
  v0[17] = OUTLINED_FUNCTION_19();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A6F8, &unk_237C10180);
  v0[18] = v13;
  OUTLINED_FUNCTION_1(v13);
  v0[19] = v14;
  v0[20] = OUTLINED_FUNCTION_19();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A6D8, &qword_237C0A140);
  v0[21] = v15;
  OUTLINED_FUNCTION_20(v15);
  v0[22] = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v16);
}

uint64_t sub_2379D5268()
{
  OUTLINED_FUNCTION_9();
  sub_2379D8FF4(v0[8], v0[22], &qword_27DE9A6D8, &qword_237C0A140);
  OUTLINED_FUNCTION_30();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = v0[22];
  if (EnumCaseMultiPayload == 1)
  {
    (*(v0[13] + 32))(v0[14], v2, v0[12]);
    swift_task_alloc();
    OUTLINED_FUNCTION_35();
    v0[25] = v3;
    *v3 = v4;
    v3[1] = sub_2379D55AC;
    OUTLINED_FUNCTION_10();

    return MEMORY[0x282115360](v5);
  }

  else
  {
    (*(v0[19] + 32))(v0[20], v2, v0[18]);
    swift_task_alloc();
    OUTLINED_FUNCTION_35();
    v0[23] = v6;
    *v6 = v7;
    v6[1] = sub_2379D53D8;
    OUTLINED_FUNCTION_10();

    return MEMORY[0x282115308](v8);
  }
}

uint64_t sub_2379D53D8()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3();
  *v5 = v4;
  *(v6 + 192) = v0;

  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_2379D54D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_27();
  v10 = OUTLINED_FUNCTION_15();
  v11(v10);
  v12 = OUTLINED_FUNCTION_14();
  v13(v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A790, &qword_237C0A710);
  OUTLINED_FUNCTION_37();
  swift_storeEnumTagMultiPayload();

  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_40();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_2379D55AC()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3();
  *v5 = v4;
  *(v6 + 208) = v0;

  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_2379D56A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_27();
  v10 = OUTLINED_FUNCTION_15();
  v11(v10);
  v12 = OUTLINED_FUNCTION_14();
  v13(v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A790, &qword_237C0A710);
  OUTLINED_FUNCTION_37();
  swift_storeEnumTagMultiPayload();

  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_40();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_2379D5780()
{
  OUTLINED_FUNCTION_33();
  v0 = OUTLINED_FUNCTION_38();
  v1(v0);

  OUTLINED_FUNCTION_8();

  return v2();
}

uint64_t sub_2379D5830()
{
  OUTLINED_FUNCTION_33();
  v0 = OUTLINED_FUNCTION_38();
  v1(v0);

  OUTLINED_FUNCTION_8();

  return v2();
}

uint64_t sub_2379D58E0()
{
  OUTLINED_FUNCTION_9();
  v1[10] = v22;
  v1[11] = v0;
  v1[8] = v2;
  v1[9] = v3;
  v1[6] = v4;
  v1[7] = v5;
  v1[4] = v6;
  v1[5] = v7;
  v1[2] = v8;
  v1[3] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A780, &unk_237C0A700);
  v1[12] = v10;
  OUTLINED_FUNCTION_1(v10);
  v1[13] = v11;
  v1[14] = OUTLINED_FUNCTION_19();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A700, &qword_237C0A160);
  v1[15] = v12;
  OUTLINED_FUNCTION_1(v12);
  v1[16] = v13;
  v1[17] = OUTLINED_FUNCTION_19();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A788, &unk_237C13D50);
  v1[18] = v14;
  OUTLINED_FUNCTION_1(v14);
  v1[19] = v15;
  v1[20] = OUTLINED_FUNCTION_19();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A6F8, &unk_237C10180);
  v1[21] = v16;
  OUTLINED_FUNCTION_1(v16);
  v1[22] = v17;
  v1[23] = OUTLINED_FUNCTION_19();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A6D8, &qword_237C0A140);
  v1[24] = v18;
  OUTLINED_FUNCTION_20(v18);
  v1[25] = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v19);
}

uint64_t sub_2379D5AE4()
{
  OUTLINED_FUNCTION_9();
  sub_2379D8FF4(v0[11], v0[25], &qword_27DE9A6D8, &qword_237C0A140);
  OUTLINED_FUNCTION_30();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = v0[25];
  if (EnumCaseMultiPayload == 1)
  {
    (*(v0[16] + 32))(v0[17], v2, v0[15]);
    swift_task_alloc();
    OUTLINED_FUNCTION_35();
    v0[28] = v3;
    *v3 = v4;
    v3[1] = sub_2379D5E28;
    OUTLINED_FUNCTION_22();

    return MEMORY[0x282115358](v5);
  }

  else
  {
    (*(v0[22] + 32))(v0[23], v2, v0[21]);
    swift_task_alloc();
    OUTLINED_FUNCTION_35();
    v0[26] = v6;
    *v6 = v7;
    v6[1] = sub_2379D5C54;
    OUTLINED_FUNCTION_22();

    return MEMORY[0x282115300](v8);
  }
}

uint64_t sub_2379D5C54()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3();
  *v5 = v4;
  *(v6 + 216) = v0;

  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_2379D5D4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_27();
  v10 = OUTLINED_FUNCTION_15();
  v11(v10);
  v12 = OUTLINED_FUNCTION_14();
  v13(v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A790, &qword_237C0A710);
  OUTLINED_FUNCTION_37();
  swift_storeEnumTagMultiPayload();

  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_40();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_2379D5E28()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3();
  *v5 = v4;
  *(v6 + 232) = v0;

  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_2379D5F20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_27();
  v10 = OUTLINED_FUNCTION_15();
  v11(v10);
  v12 = OUTLINED_FUNCTION_14();
  v13(v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A790, &qword_237C0A710);
  OUTLINED_FUNCTION_37();
  swift_storeEnumTagMultiPayload();

  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_40();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_2379D5FFC()
{
  OUTLINED_FUNCTION_33();
  v0 = OUTLINED_FUNCTION_38();
  v1(v0);

  OUTLINED_FUNCTION_8();

  return v2();
}

uint64_t sub_2379D60AC()
{
  OUTLINED_FUNCTION_33();
  v0 = OUTLINED_FUNCTION_38();
  v1(v0);

  OUTLINED_FUNCTION_8();

  return v2();
}

uint64_t sub_2379D615C(uint64_t a1, uint64_t a2)
{
  v51 = a1;
  v52 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A780, &unk_237C0A700);
  OUTLINED_FUNCTION_0();
  v48 = v6;
  v49 = v5;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_23();
  v46 = v8;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A700, &qword_237C0A160);
  OUTLINED_FUNCTION_0();
  v45 = v9;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_23();
  v44 = v11;
  v43[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A788, &unk_237C13D50);
  OUTLINED_FUNCTION_0();
  v43[2] = v12;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v13);
  v43[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A6F8, &unk_237C10180);
  OUTLINED_FUNCTION_0();
  v43[1] = v14;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_13();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A6D8, &qword_237C0A140);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_24();
  MEMORY[0x28223BE20](v18);
  v20 = v43 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A798, &qword_237C0A718);
  OUTLINED_FUNCTION_20(v21);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_12();
  v24 = *(v23 + 56);
  sub_2379D8FF4(v50, v4, &qword_27DE9A6D8, &qword_237C0A140);
  sub_2379D8FF4(v51, v4 + v24, &qword_27DE9A790, &qword_237C0A710);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2379D8FF4(v4, v3, &qword_27DE9A6D8, &qword_237C0A140);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A790, &qword_237C0A710);
    if (OUTLINED_FUNCTION_41() == 1)
    {
      v25 = v44;
      v26 = v45;
      v27 = OUTLINED_FUNCTION_21();
      v28 = v47;
      v29(v27, v3, v47);
      v30 = v48;
      v31 = v4 + v24;
      v32 = v46;
      v33 = v49;
      (*(v48 + 32))(v46, v31, v49);
      sub_2379D9224(&qword_27DE9A7A0, &qword_27DE9A700, &qword_237C0A160, MEMORY[0x277CC5148]);
      sub_2379D9224(&qword_27DE9A7A8, &qword_27DE9A780, &unk_237C0A700, MEMORY[0x277CC5170]);
      sub_237C06EBC();
      (*(v30 + 8))(v32, v33);
      (*(v26 + 8))(v25, v28);
      return sub_2379D9054(v4, &qword_27DE9A6D8, &qword_237C0A140);
    }

    OUTLINED_FUNCTION_28();
  }

  else
  {
    sub_2379D8FF4(v4, v20, &qword_27DE9A6D8, &qword_237C0A140);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A790, &qword_237C0A710);
    if (OUTLINED_FUNCTION_41() != 1)
    {
      v34 = OUTLINED_FUNCTION_17();
      v35(v34);
      v36 = OUTLINED_FUNCTION_16();
      v37(v36);
      OUTLINED_FUNCTION_25();
      sub_237C072DC();
      v38 = OUTLINED_FUNCTION_36();
      v39(v38);
      ("Classifier")(v2, v16);
      return sub_2379D9054(v4, &qword_27DE9A6D8, &qword_237C0A140);
    }
  }

  v41 = OUTLINED_FUNCTION_32();
  v42(v41);
  OUTLINED_FUNCTION_2();
  result = sub_237C090DC();
  __break(1u);
  return result;
}

uint64_t sub_2379D6678()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2379D9D48;

  return sub_2379D507C();
}

uint64_t sub_2379D6750()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2379D6854;

  return sub_2379D58E0();
}

uint64_t sub_2379D6854()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  v1 = *v0;
  OUTLINED_FUNCTION_3();
  *v2 = v1;

  OUTLINED_FUNCTION_8();

  return v3();
}

uint64_t sub_2379D698C@<X0>(uint64_t a1@<X8>)
{
  v19[1] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A700, &qword_237C0A160);
  OUTLINED_FUNCTION_0();
  v5 = v4;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_13();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A6F8, &unk_237C10180);
  OUTLINED_FUNCTION_0();
  v9 = v8;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v10);
  v12 = v19 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A6D8, &qword_237C0A140);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_12();
  sub_2379D8FF4(v19[0], v2, &qword_27DE9A6D8, &qword_237C0A140);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = OUTLINED_FUNCTION_21();
    v15(v14, v2, v3);
    sub_237C0737C();
    (*(v5 + 8))(v1, v3);
  }

  else
  {
    v16 = OUTLINED_FUNCTION_26();
    v17(v16);
    sub_237C072BC();
    (*(v9 + 8))(v12, v7);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A790, &qword_237C0A710);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2379D6BCC()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_34(v1, v2, v3, v4, v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A780, &unk_237C0A700);
  v0[9] = v7;
  OUTLINED_FUNCTION_1(v7);
  v0[10] = v8;
  v0[11] = swift_task_alloc();
  v0[12] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A700, &qword_237C0A160);
  v0[13] = v9;
  OUTLINED_FUNCTION_1(v9);
  v0[14] = v10;
  v0[15] = OUTLINED_FUNCTION_19();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A788, &unk_237C13D50);
  v0[16] = v11;
  OUTLINED_FUNCTION_1(v11);
  v0[17] = v12;
  v0[18] = swift_task_alloc();
  v0[19] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A6F8, &unk_237C10180);
  v0[20] = v13;
  OUTLINED_FUNCTION_1(v13);
  v0[21] = v14;
  v0[22] = OUTLINED_FUNCTION_19();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A6D8, &qword_237C0A140);
  v0[23] = v15;
  OUTLINED_FUNCTION_20(v15);
  v0[24] = swift_task_alloc();
  v0[25] = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A798, &qword_237C0A718);
  v0[26] = v16;
  OUTLINED_FUNCTION_20(v16);
  v0[27] = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v17);
}

uint64_t sub_2379D6E24()
{
  OUTLINED_FUNCTION_27();
  v1 = v0[27];
  v2 = v0[2];
  v3 = *(v0[26] + 48);
  sub_2379D8FF4(v0[8], v1, &qword_27DE9A6D8, &qword_237C0A140);
  sub_2379D8FF4(v2, v1 + v3, &qword_27DE9A790, &qword_237C0A710);
  OUTLINED_FUNCTION_30();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = v0[27];
  if (EnumCaseMultiPayload == 1)
  {
    v6 = v0 + 24;
    sub_2379D8FF4(v5, v0[24], &qword_27DE9A6D8, &qword_237C0A140);
    v0[33] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A790, &qword_237C0A710);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v7 = v0[12];
      v8 = v0[9];
      v9 = v0[10];
      (*(v0[14] + 32))(v0[15], v0[24], v0[13]);
      v10 = *(v9 + 32);
      v0[34] = v10;
      v0[35] = (v9 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
      v10(v7, v1 + v3, v8);
      v11 = swift_task_alloc();
      v0[36] = v11;
      *v11 = v0;
      v11[1] = sub_2379D7390;
      OUTLINED_FUNCTION_10();

      return MEMORY[0x282115368](v12);
    }

    v13 = 13;
    v14 = 14;
LABEL_9:
    (*(v0[v14] + 8))(*v6, v0[v13]);
    OUTLINED_FUNCTION_2();
    return sub_237C090DC();
  }

  v6 = v0 + 25;
  sub_2379D8FF4(v5, v0[25], &qword_27DE9A6D8, &qword_237C0A140);
  v0[28] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A790, &qword_237C0A710);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = 20;
    v14 = 21;
    goto LABEL_9;
  }

  v15 = v0[19];
  v16 = v0[16];
  v17 = v0[17];
  (*(v0[21] + 32))(v0[22], v0[25], v0[20]);
  v18 = *(v17 + 32);
  v0[29] = v18;
  v0[30] = (v17 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v18(v15, v1 + v3, v16);
  v19 = swift_task_alloc();
  v0[31] = v19;
  *v19 = v0;
  v19[1] = sub_2379D7144;
  OUTLINED_FUNCTION_10();

  return MEMORY[0x282115318](v20);
}

uint64_t sub_2379D7144()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3();
  *v5 = v4;
  *(v6 + 256) = v0;

  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_2379D723C(uint64_t a1)
{
  v3 = v1[29];
  v4 = v1[22];
  v5 = v1[19];
  v6 = v1[18];
  v7 = v1[27];
  v8 = v1[16];
  OUTLINED_FUNCTION_31();
  v9(v4);
  v3(v6, v5, v8);
  sub_2379D9054(v2, &qword_27DE9A790, &qword_237C0A710);
  v3(v2, v6, v8);
  swift_storeEnumTagMultiPayload();
  sub_2379D9054(v7, &qword_27DE9A6D8, &qword_237C0A140);

  OUTLINED_FUNCTION_6();

  return v10();
}

uint64_t sub_2379D7390()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3();
  *v5 = v4;
  *(v6 + 296) = v0;

  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_2379D7488(uint64_t a1)
{
  v3 = v1[34];
  v4 = v1[15];
  v5 = v1[11];
  v6 = v1[9];
  v7 = v1[27];
  OUTLINED_FUNCTION_31();
  v8(v4);
  v9 = OUTLINED_FUNCTION_30();
  v3(v9);
  sub_2379D9054(v2, &qword_27DE9A790, &qword_237C0A710);
  (v3)(v2, v5, v6);
  swift_storeEnumTagMultiPayload();
  sub_2379D9054(v7, &qword_27DE9A6D8, &qword_237C0A140);

  OUTLINED_FUNCTION_6();

  return v10();
}

uint64_t sub_2379D75E0()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];
  v4 = v0[27];
  (*(v0[17] + 8))(v0[19], v0[16]);
  (*(v2 + 8))(v1, v3);
  sub_2379D9054(v4, &qword_27DE9A6D8, &qword_237C0A140);

  OUTLINED_FUNCTION_8();

  return v5();
}

uint64_t sub_2379D770C()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  v4 = v0[27];
  (*(v0[10] + 8))(v0[12], v0[9]);
  (*(v2 + 8))(v1, v3);
  sub_2379D9054(v4, &qword_27DE9A6D8, &qword_237C0A140);

  OUTLINED_FUNCTION_8();

  return v5();
}

uint64_t sub_2379D783C(uint64_t a1, uint64_t a2)
{
  v48 = a1;
  v49 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A780, &unk_237C0A700);
  OUTLINED_FUNCTION_0();
  v45 = v6;
  v46 = v5;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_23();
  v43 = v8;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A700, &qword_237C0A160);
  OUTLINED_FUNCTION_0();
  v42 = v9;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_23();
  v41 = v11;
  v40[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A788, &unk_237C13D50);
  OUTLINED_FUNCTION_0();
  v40[2] = v12;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v13);
  v40[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A6F8, &unk_237C10180);
  OUTLINED_FUNCTION_0();
  v40[1] = v14;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_13();
  v16 = &qword_27DE9A6D8;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A6D8, &qword_237C0A140);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_24();
  MEMORY[0x28223BE20](v19);
  v21 = v40 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A798, &qword_237C0A718);
  OUTLINED_FUNCTION_20(v22);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_12();
  v25 = *(v24 + 56);
  sub_2379D8FF4(v47, v4, &qword_27DE9A6D8, &qword_237C0A140);
  sub_2379D8FF4(v48, v4 + v25, &qword_27DE9A790, &qword_237C0A710);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2379D8FF4(v4, v3, &qword_27DE9A6D8, &qword_237C0A140);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A790, &qword_237C0A710);
    if (OUTLINED_FUNCTION_41() == 1)
    {
      v2 = v41;
      v17 = v42;
      v26 = OUTLINED_FUNCTION_21();
      v16 = v44;
      v27(v26, v3, v44);
      v29 = v45;
      v28 = v46;
      v30 = v43;
      (*(v45 + 32))(v43, v4 + v25, v46);
      OUTLINED_FUNCTION_25();
      sub_237C0738C();
      (*(v29 + 8))(v30, v28);
LABEL_6:
      (*(v17 + 8))(v2, v16);
      return sub_2379D9054(v4, &qword_27DE9A6D8, &qword_237C0A140);
    }

    OUTLINED_FUNCTION_28();
  }

  else
  {
    sub_2379D8FF4(v4, v21, &qword_27DE9A6D8, &qword_237C0A140);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A790, &qword_237C0A710);
    if (OUTLINED_FUNCTION_41() != 1)
    {
      v31 = OUTLINED_FUNCTION_17();
      v32(v31);
      v33 = OUTLINED_FUNCTION_16();
      v34(v33);
      OUTLINED_FUNCTION_25();
      sub_237C072CC();
      v35 = OUTLINED_FUNCTION_36();
      v36(v35);
      goto LABEL_6;
    }
  }

  v38 = OUTLINED_FUNCTION_32();
  v39(v38);
  OUTLINED_FUNCTION_2();
  result = sub_237C090DC();
  __break(1u);
  return result;
}

uint64_t sub_2379D7CC8@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, uint64_t)@<X1>, void (*a3)(uint64_t, uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v54 = a2;
  v55 = a3;
  v57 = a1;
  v49 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A780, &unk_237C0A700);
  OUTLINED_FUNCTION_0();
  v46 = v7;
  v47 = v6;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_23();
  v53 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A700, &qword_237C0A160);
  OUTLINED_FUNCTION_0();
  v51 = v11;
  v52 = v10;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v12);
  v14 = &v42 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A788, &unk_237C13D50);
  OUTLINED_FUNCTION_0();
  v44 = v16;
  v45 = v15;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_23();
  v50 = v18;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A790, &qword_237C0A710);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v19);
  v43 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v42 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A6F8, &unk_237C10180);
  OUTLINED_FUNCTION_0();
  v26 = v25;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_13();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A6D8, &qword_237C0A140);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_12();
  sub_2379D8FF4(v56, v5, &qword_27DE9A6D8, &qword_237C0A140);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v30 = v51;
    v29 = v52;
    v31 = OUTLINED_FUNCTION_26();
    v32(v31);
    v33 = v58;
    v55(v57, v29);
    result = (*(v30 + 8))(v14, v29);
    if (v33)
    {
      return result;
    }

    v35 = v43;
    v36 = OUTLINED_FUNCTION_30();
    v37(v36);
    swift_storeEnumTagMultiPayload();
    v23 = v35;
  }

  else
  {
    v38 = OUTLINED_FUNCTION_21();
    v39(v38, v5, v24);
    v40 = v50;
    v41 = v58;
    v54(v57, v24);
    result = (*(v26 + 8))(v4, v24);
    if (v41)
    {
      return result;
    }

    (*(v44 + 32))(v23, v40, v45);
    swift_storeEnumTagMultiPayload();
  }

  return sub_2379D8F84(v23, v49);
}

uint64_t sub_2379D80D4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2379D9D48;

  return sub_2379D6BCC();
}

void sub_2379D8200(uint64_t a2@<X8>)
{
  sub_2379D8234();
  *a2 = v3;
  *(a2 + 8) = v4 & 1;
}

void sub_2379D823C()
{
  OUTLINED_FUNCTION_29();
  nullsub_1();
  *v0 = v1;
}

uint64_t sub_2379D8288(uint64_t a1, id *a2)
{
  result = sub_237C086CC();
  *a2 = 0;
  return result;
}

uint64_t sub_2379D831C(uint64_t a1, id *a2)
{
  v3 = sub_237C086DC();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_2379D839C@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_2379D942C(a2);
  *a1 = result;
  return result;
}

uint64_t sub_2379D83C4()
{
  v0 = sub_237C086EC();
  v1 = MEMORY[0x2383DC3B0](v0);

  return v1;
}

uint64_t sub_2379D83FC(uint64_t a1, uint64_t a2)
{
  sub_237C086EC();
  sub_237C0878C();
}

uint64_t sub_2379D8450(uint64_t a1, uint64_t a2)
{
  sub_237C086EC();
  sub_237C093CC();
  sub_237C0878C();
  v2 = sub_237C0940C();

  return v2;
}

uint64_t sub_2379D85C8(uint64_t a1, uint64_t a2)
{
  sub_237C093CC();
  swift_getWitnessTable();
  sub_237C0604C();
  return sub_237C0940C();
}

uint64_t sub_2379D8634()
{
  v1 = OUTLINED_FUNCTION_29();
  result = sub_237B4A974(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_2379D865C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FED10](v4, v5, a3, WitnessTable);
}

uint64_t sub_2379D86C8()
{
  v1 = OUTLINED_FUNCTION_29();
  result = sub_2379D86F0(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_2379D86F4(uint64_t a1)
{
  v2 = sub_2379D8BEC(&qword_27DE9A960, type metadata accessor for FileAttributeKey, &unk_237C0B3F4);
  v3 = sub_2379D8BEC(&qword_27DE9A968, type metadata accessor for FileAttributeKey, &unk_237C0AC14);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_2379D87B0(uint64_t a1)
{
  v2 = sub_2379D8BEC(&qword_27DE9A950, type metadata accessor for Key, &unk_237C0B3B0);
  v3 = sub_2379D8BEC(&qword_27DE9A958, type metadata accessor for Key, &unk_237C0AD28);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_2379D886C(uint64_t a1)
{
  v2 = sub_2379D8BEC(&qword_27DE9A7B0, type metadata accessor for NLLanguage, &unk_237C0A524);
  v3 = sub_2379D8BEC(&qword_27DE9A7B8, type metadata accessor for NLLanguage, &unk_237C0A4C4);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_2379D8928(uint64_t a1)
{
  v2 = sub_2379D8BEC(&qword_27DE9A930, type metadata accessor for EmbeddingType, &unk_237C0AF8C);
  v3 = sub_2379D8BEC(&qword_27DE9A938, type metadata accessor for EmbeddingType, &unk_237C0AF34);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_2379D89E4(uint64_t a1)
{
  v2 = sub_2379D8BEC(&qword_27DE9A920, type metadata accessor for URLResourceKey, &unk_237C0B2E8);
  v3 = sub_2379D8BEC(&qword_27DE9A928, type metadata accessor for URLResourceKey, &unk_237C0B0E4);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_2379D8AA0(uint64_t a1)
{
  v2 = sub_2379D8BEC(&qword_27DE9A7D0, type metadata accessor for ProgressUserInfoKey, &unk_237C0A6BC);
  v3 = sub_2379D8BEC(&qword_27DE9A7D8, type metadata accessor for ProgressUserInfoKey, &unk_237C0A284);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_2379D8BEC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2379D8C34(uint64_t a1)
{
  v2 = sub_2379D8BEC(&qword_27DE9A7C0, type metadata accessor for VNImageOption, &unk_237C0A678);
  v3 = sub_2379D8BEC(&qword_27DE9A7C8, type metadata accessor for VNImageOption, &unk_237C0A3A0);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_2379D8F84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A790, &qword_237C0A710);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2379D8FF4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_4();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2379D9054(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_4();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_2379D90AC(uint64_t a1)
{
  v2 = sub_2379D8BEC(&qword_27DE9A910, type metadata accessor for VNRecognizedPointKey, &unk_237C0B2A4);
  v3 = sub_2379D8BEC(&qword_27DE9A918, type metadata accessor for VNRecognizedPointKey, &unk_237C0B1F8);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_2379D9168(uint64_t a1)
{
  v2 = sub_2379D8BEC(&qword_27DE9A940, type metadata accessor for ConfigurationOptionsKey, &unk_237C0B370);
  v3 = sub_2379D8BEC(&qword_27DE9A948, type metadata accessor for ConfigurationOptionsKey, &unk_237C0AE34);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_2379D9224(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2379D926C(uint64_t a1)
{
  v2 = sub_2379D8BEC(&qword_27DE9A970, type metadata accessor for ImageOption, &unk_237C0B438);
  v3 = sub_2379D8BEC(&qword_27DE9A978, type metadata accessor for ImageOption, &unk_237C0AB00);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_2379D9328@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_237C086BC();

  *a2 = v3;
  return result;
}

uint64_t sub_2379D9370(uint64_t a1)
{
  v2 = sub_2379D8BEC(&qword_27DE9A980, type metadata accessor for CIImageRepresentationOption, &unk_237C0B47C);
  v3 = sub_2379D8BEC(&qword_27DE9A988, type metadata accessor for CIImageRepresentationOption, &unk_237C0A9EC);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_2379D942C(uint64_t a1)
{
  sub_237C086EC();
  v1 = sub_237C086BC();

  return v1;
}

uint64_t sub_2379D953C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2379D955C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

void sub_2379D95AC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t OUTLINED_FUNCTION_19()
{

  return swift_task_alloc();
}

void OUTLINED_FUNCTION_22()
{
  v2 = *(v0 + 80);
  *(v1 + 16) = *(v0 + 72);
  *(v1 + 24) = v2;
}

uint64_t OUTLINED_FUNCTION_34(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_41()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t sub_2379DA060(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v46 = a2;
  sub_237C0610C();
  OUTLINED_FUNCTION_0();
  v44 = v6;
  v45 = v5;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_0();
  v9 = v8 - v7;
  v43 = sub_237C0926C();
  OUTLINED_FUNCTION_0();
  v40 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2_0();
  v14 = v13 - v12;
  sub_237C0683C();
  OUTLINED_FUNCTION_0();
  v41 = v16;
  v42 = v15;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_2_0();
  v19 = v18 - v17;
  v20 = sub_237C060DC();
  OUTLINED_FUNCTION_0();
  v22 = v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v37 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v37 - v27;
  sub_237C065FC();
  v29 = (*(v22 + 88))(v28, v20);
  if (v29 == *MEMORY[0x277D2CC88] || v29 == *MEMORY[0x277D2CC90] || v29 == *MEMORY[0x277D2CCA8] || v29 == *MEMORY[0x277D2CCB0] || v29 == *MEMORY[0x277D2CCC8])
  {
    OUTLINED_FUNCTION_3_0();
    MEMORY[0x28223BE20](v30);
    OUTLINED_FUNCTION_0_0();
    sub_237C0668C();
  }

  else
  {
    v33 = *(v22 + 104);
    v38 = a1;
    v33(v25);
    v34 = v40;
    (*(v40 + 104))(v14, *MEMORY[0x277D84660], v43);
    v39 = a3;
    sub_237C0675C();
    (*(v34 + 8))(v14, v43);
    v35 = *(v22 + 8);
    v36 = v35(v25, v20);
    MEMORY[0x28223BE20](v36);
    *(&v37 - 2) = v38;
    sub_237C0668C();
    (*(v41 + 8))(v19, v42);
    v35(v28, v20);
  }

  sub_237C0679C();
  v31 = sub_237C060FC();
  result = (*(v44 + 8))(v9, v45);
  *v46 = v31;
  return result;
}

void sub_2379DA56C(const float *a1, int64_t a2, uint64_t a3)
{
  if (*(a3 + 8) >= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = *(a3 + 8);
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (!a1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = *a3;
  if (v4)
  {
    vDSP_vspdp(a1, 1, v4, 1, v3);
    return;
  }

LABEL_10:
  __break(1u);
}

uint64_t sub_2379DA5A0(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    v3 = (a2 - a1) / 2;
  }

  else
  {
    v3 = 0;
  }

  return sub_2379DA6F0(a1, v3, a3, MEMORY[0x277CB87B0]);
}

uint64_t sub_2379DA5F4(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    v3 = (a2 - a1) / 4;
  }

  else
  {
    v3 = 0;
  }

  return sub_2379DA6F0(a1, v3, a3, MEMORY[0x277CB87B8]);
}

uint64_t sub_2379DA648(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    v3 = (a2 - a1) / 2;
  }

  else
  {
    v3 = 0;
  }

  return sub_2379DA6F0(a1, v3, a3, MEMORY[0x277CB87C0]);
}

uint64_t sub_2379DA69C(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    v3 = (a2 - a1) / 4;
  }

  else
  {
    v3 = 0;
  }

  return sub_2379DA6F0(a1, v3, a3, MEMORY[0x277CB87C8]);
}

uint64_t sub_2379DA6F0(uint64_t result, uint64_t a2, void *a3, uint64_t (*a4)(void))
{
  if (a3[1] != a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (a2 < 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (*a3)
  {
    return a4();
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_2379DA734(const float *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v3 = (a2 - a1) / 4;
  }

  else
  {
    v3 = 0;
  }

  sub_2379DA56C(a1, v3, a3);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for Interaction(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Interaction(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

BOOL sub_2379DA8FC(_BOOL8 result, int a2, char a3, uint64_t a4, int a5, char a6)
{
  if ((a6 & 1) == 0 && (a3 & 1) == 0)
  {
    if (a5 == a2)
    {
      return a4 >= result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

BOOL sub_2379DA948(_BOOL8 result, int a2, char a3, uint64_t a4, int a5, char a6)
{
  if ((a3 & 1) == 0 && (a6 & 1) == 0)
  {
    if (a2 == a5)
    {
      return result >= a4;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

BOOL sub_2379DA994(_BOOL8 result, int a2, char a3, uint64_t a4, int a5, char a6)
{
  if ((a6 & 1) == 0 && (a3 & 1) == 0)
  {
    if (a5 == a2)
    {
      return a4 < result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_2379DA9D8()
{
  result = qword_27DE9A990;
  if (!qword_27DE9A990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9A990);
  }

  return result;
}

uint64_t MLBoostedTreeRegressor.ModelParameters.validationData.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for MLBoostedTreeRegressor.ModelParameters.ValidationData(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0();
  v6 = v5 - v4;
  result = sub_2379D8FF4(v1, &v8, &qword_27DE9A998, &unk_237C0C100);
  if (v9)
  {
    sub_2379DAD24(&v8, &v10);
    swift_dynamicCast();
    sub_237B684F4(a1);
    return sub_2379DAD34(v6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2379DAB04@<X0>(uint64_t a1@<X8>)
{
  result = MLBoostedTreeRegressor.ModelParameters.validationData.getter(&v4);
  v3 = v5;
  *a1 = v4;
  *(a1 + 8) = v3;
  return result;
}

uint64_t sub_2379DAB48(uint64_t *a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;
  sub_2379DBCDC(v3, v1);
  return MLBoostedTreeRegressor.ModelParameters.validationData.setter(&v3);
}

uint64_t MLBoostedTreeRegressor.ModelParameters.validationData.setter(void **a1)
{
  v2 = v1;
  type metadata accessor for MLBoostedTreeRegressor.ModelParameters.ValidationData(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_0();
  v7 = v6 - v5;
  v8 = *a1;
  v9 = *(a1 + 8);
  v13[3] = v10;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v13);
  if (v9 == 255)
  {
    *v7 = 0;
    *(v7 + 8) = 0;
    *(v7 + 16) = 256;
  }

  else if (MLDataTable.size.getter())
  {
    *v7 = v8;
    *(v7 + 8) = v9 & 1;
  }

  else
  {
    sub_2379DBC84(v8, v9);
  }

  swift_storeEnumTagMultiPayload();
  sub_2379DADF0(v7, boxed_opaque_existential_0);
  return sub_2379DAE54(v13, v2);
}

uint64_t MLBoostedTreeRegressor.ModelParameters.validation.getter()
{
  result = sub_2379D8FF4(v1, &v3, &qword_27DE9A998, &unk_237C0C100);
  if (v4)
  {
    sub_2379DAD24(&v3, &v5);
    type metadata accessor for MLBoostedTreeRegressor.ModelParameters.ValidationData(0);
    return swift_dynamicCast();
  }

  else
  {
    __break(1u);
  }

  return result;
}

_OWORD *sub_2379DAD24(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_2379DAD34(uint64_t a1)
{
  v2 = type metadata accessor for MLBoostedTreeRegressor.ModelParameters.ValidationData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_2379DADF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLBoostedTreeRegressor.ModelParameters.ValidationData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2379DAE54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A998, &unk_237C0C100);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void (*MLBoostedTreeRegressor.ModelParameters.validationData.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 16) = v1;
  MLBoostedTreeRegressor.ModelParameters.validationData.getter(a1);
  return sub_2379DAF0C;
}

void sub_2379DAF0C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (a2)
  {
    v4 = *a1;
    v5 = v3;
    sub_2379DBCDC(v2, v3);
    MLBoostedTreeRegressor.ModelParameters.validationData.setter(&v4);

    sub_2379DBC84(v2, v3);
  }

  else
  {
    v4 = *a1;
    v5 = v3;
    MLBoostedTreeRegressor.ModelParameters.validationData.setter(&v4);
  }
}

uint64_t sub_2379DAFA0(uint64_t a1)
{
  v2 = type metadata accessor for MLBoostedTreeRegressor.ModelParameters.ValidationData(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2379DBD00(a1, v4);
  return MLBoostedTreeRegressor.ModelParameters.validation.setter(v4);
}

uint64_t MLBoostedTreeRegressor.ModelParameters.validation.setter(uint64_t a1)
{
  v5[3] = type metadata accessor for MLBoostedTreeRegressor.ModelParameters.ValidationData(0);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v5);
  sub_2379DADF0(a1, boxed_opaque_existential_0);
  return sub_2379DAE54(v5, v1);
}

void (*MLBoostedTreeRegressor.ModelParameters.validation.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  v4 = __swift_coroFrameAllocStub(0xA0uLL);
  *a1 = v4;
  v4[16] = v2;
  v4[17] = type metadata accessor for MLBoostedTreeRegressor.ModelParameters.ValidationData(0);
  OUTLINED_FUNCTION_4();
  v6 = *(v5 + 64);
  v4[18] = __swift_coroFrameAllocStub(v6);
  v4[19] = __swift_coroFrameAllocStub(v6);
  result = sub_2379D8FF4(v2, (v4 + 4), &qword_27DE9A998, &unk_237C0C100);
  if (v4[7])
  {
    sub_2379DAD24(v4 + 2, v4);
    swift_dynamicCast();
    return sub_2379DB17C;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2379DB17C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[18];
  v4 = (*a1)[19];
  v5 = (*a1)[16];
  v6 = (*a1)[17];
  if (a2)
  {
    sub_2379DBD00((*a1)[19], v3);
    v2[11] = v6;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v2 + 8);
    sub_2379DADF0(v3, boxed_opaque_existential_0);
    sub_2379DAE54((v2 + 8), v5);
    sub_2379DAD34(v4);
  }

  else
  {
    v2[15] = v6;
    v8 = __swift_allocate_boxed_opaque_existential_0(v2 + 12);
    sub_2379DADF0(v4, v8);
    sub_2379DAE54((v2 + 12), v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t MLBoostedTreeRegressor.ModelParameters.earlyStoppingRounds.setter(uint64_t result, char a2)
{
  *(v2 + 80) = result;
  *(v2 + 88) = a2 & 1;
  return result;
}

uint64_t MLBoostedTreeRegressor.ModelParameters.init(validation:maxDepth:maxIterations:minLossReduction:minChildWeight:randomSeed:stepSize:earlyStoppingRounds:rowSubsample:columnSubsample:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>, double a10@<D2>, double a11@<D3>, double a12@<D4>)
{
  v24 = type metadata accessor for MLBoostedTreeRegressor.ModelParameters.ValidationData(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_2_0();
  v28 = v27 - v26;
  *a7 = 0u;
  *(a7 + 16) = 0u;
  *(a7 + 32) = a2;
  *(a7 + 40) = a3;
  *(a7 + 48) = a8;
  *(a7 + 56) = a9;
  *(a7 + 64) = a4;
  *(a7 + 72) = a10;
  *(a7 + 80) = a5;
  *(a7 + 88) = a6 & 1;
  *(a7 + 96) = a11;
  *(a7 + 104) = a12;
  sub_2379DBD00(a1, v27 - v26);
  v31[3] = v24;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v31);
  sub_2379DADF0(v28, boxed_opaque_existential_0);
  sub_2379DAD34(a1);
  return sub_2379DAE54(v31, a7);
}

uint64_t MLBoostedTreeRegressor.ModelParameters.init(validationData:maxDepth:maxIterations:minLossReduction:minChildWeight:randomSeed:stepSize:earlyStoppingRounds:rowSubsample:columnSubsample:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>, double a10@<D2>, double a11@<D3>, double a12@<D4>)
{
  v12 = *a1;
  v13 = *(a1 + 8);
  *a7 = 0u;
  *(a7 + 16) = 0u;
  *(a7 + 32) = a2;
  *(a7 + 40) = a3;
  *(a7 + 48) = a8;
  *(a7 + 56) = a9;
  *(a7 + 64) = a4;
  *(a7 + 72) = a10;
  *(a7 + 80) = a5;
  *(a7 + 88) = a6 & 1;
  *(a7 + 96) = a11;
  *(a7 + 104) = a12;
  v15 = v12;
  v16 = v13;
  return MLBoostedTreeRegressor.ModelParameters.validationData.setter(&v15);
}

uint64_t sub_2379DB58C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_237C05DBC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_0();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9A0, &qword_237C0BF60);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v34 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9A8, &qword_237C0B658);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v34 - v15;
  v17 = type metadata accessor for MLBoostedTreeRegressor.ModelParameters.ValidationData(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_2_0();
  v21 = v20 - v19;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = sub_237C070EC();
  *(a3 + 40) = sub_237C0714C();
  sub_237C0718C();
  *(a3 + 48) = v22;
  sub_237C0716C();
  *(a3 + 56) = v23;
  *(a3 + 64) = sub_237C070AC();
  sub_237C070CC();
  *(a3 + 72) = v24;
  *(a3 + 80) = sub_237C071AC();
  *(a3 + 88) = v25 & 1;
  sub_237C0710C();
  *(a3 + 96) = v26;
  sub_237C0712C();
  *(a3 + 104) = v27;
  v35 = a2;
  sub_2379D8FF4(a2, v13, &qword_27DE9A9A0, &qword_237C0BF60);
  v28 = 1;
  if (__swift_getEnumTagSinglePayload(v13, 1, v6) != 1)
  {
    (*(v7 + 32))(v10, v13, v6);
    (*(v7 + 16))(v16, v10, v6);
    swift_storeEnumTagMultiPayload();
    (*(v7 + 8))(v10, v6);
    v28 = 0;
  }

  __swift_storeEnumTagSinglePayload(v16, v28, 1, v17);
  if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
  {
    swift_storeEnumTagMultiPayload();
    if (__swift_getEnumTagSinglePayload(v16, 1, v17) != 1)
    {
      sub_2379D9054(v16, &qword_27DE9A9A8, &qword_237C0B658);
    }
  }

  else
  {
    v29 = OUTLINED_FUNCTION_7_0();
    sub_2379DADF0(v29, v30);
  }

  v36[3] = v17;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v36);
  sub_2379DADF0(v21, boxed_opaque_existential_0);
  sub_2379D9054(v35, &qword_27DE9A9A0, &qword_237C0BF60);
  sub_237C071DC();
  OUTLINED_FUNCTION_4();
  (*(v32 + 8))(a1);
  return sub_2379DAE54(v36, a3);
}

uint64_t MLBoostedTreeRegressor.ModelParameters.description.getter()
{
  v15[2] = 0x747065442078614DLL;
  v15[3] = 0xEB00000000203A68;
  OUTLINED_FUNCTION_7_0();
  v1 = sub_237C0924C();
  MEMORY[0x2383DC360](v1);

  MEMORY[0x2383DC360](10, 0xE100000000000000);
  OUTLINED_FUNCTION_3_1();
  sub_237C08EDC();

  OUTLINED_FUNCTION_7_0();
  v2 = sub_237C0924C();
  MEMORY[0x2383DC360](v2);

  OUTLINED_FUNCTION_2_1();
  MEMORY[0x2383DC360](0xD000000000000010, 0x8000000237C16E00);

  OUTLINED_FUNCTION_3_1();
  sub_237C08EDC();
  OUTLINED_FUNCTION_6_0();
  v3 = MEMORY[0x2383DC360](0xD000000000000014, 0x8000000237C16E20);
  OUTLINED_FUNCTION_8_0(v3, v4);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x2383DC360](0xD000000000000010, 0x8000000237C16E00);

  OUTLINED_FUNCTION_3_1();
  sub_237C08EDC();
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_8_0(v5, v6);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x2383DC360](0xD000000000000010, 0x8000000237C16E00);

  OUTLINED_FUNCTION_3_1();
  sub_237C08EDC();

  strcpy(v15, "Random Seed: ");
  HIWORD(v15[1]) = -4864;
  OUTLINED_FUNCTION_7_0();
  v7 = sub_237C0924C();
  MEMORY[0x2383DC360](v7);

  OUTLINED_FUNCTION_2_1();
  MEMORY[0x2383DC360](v15[0], v15[1]);

  v15[0] = 0;
  v15[1] = 0xE000000000000000;
  v8 = MEMORY[0x2383DC360](0x7A69532070657453, 0xEB00000000203A65);
  OUTLINED_FUNCTION_5_0(v8, v9, v0[9]);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x2383DC360](0, 0xE000000000000000);

  OUTLINED_FUNCTION_3_1();
  sub_237C08EDC();
  OUTLINED_FUNCTION_6_0();
  v10 = MEMORY[0x2383DC360](0x7362755320776F52, 0xEF203A656C706D61);
  OUTLINED_FUNCTION_5_0(v10, v11, v0[12]);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x2383DC360](0, 0xE000000000000000);

  OUTLINED_FUNCTION_3_1();
  sub_237C08EDC();
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_5_0(v12, v13, v0[13]);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x2383DC360](0, 0xE000000000000000);

  return 0x747065442078614DLL;
}

uint64_t MLBoostedTreeRegressor.ModelParameters.playgroundDescription.getter@<X0>(uint64_t *a1@<X8>)
{
  result = MLBoostedTreeRegressor.ModelParameters.description.getter();
  a1[3] = MEMORY[0x277D837D0];
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_2379DBC84(void *result, char a2)
{
  if (a2 != -1)
  {
    sub_2379DBC9C(result, a2 & 1);
  }
}

void sub_2379DBC9C(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

id sub_2379DBCDC(id result, char a2)
{
  if (a2 != -1)
  {
    return sub_2379DBCF4(result, a2 & 1);
  }

  return result;
}

id sub_2379DBCF4(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

uint64_t sub_2379DBD00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLBoostedTreeRegressor.ModelParameters.ValidationData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_ypSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2379DBDB4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 112))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_2379DBE08(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 112) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 112) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

void OUTLINED_FUNCTION_2_1()
{

  JUMPOUT(0x2383DC360);
}

void OUTLINED_FUNCTION_4_0()
{

  JUMPOUT(0x2383DC360);
}

uint64_t OUTLINED_FUNCTION_5_0(uint64_t a1, uint64_t a2, ...)
{

  return sub_237C08A8C();
}

uint64_t OUTLINED_FUNCTION_8_0(uint64_t a1, uint64_t a2, ...)
{

  return sub_237C08A8C();
}

uint64_t sub_2379DBF28()
{
  v0 = type metadata accessor for MLTrainingSessionParameters(0);
  __swift_allocate_value_buffer(v0, qword_27DE9A9B0);
  v1 = __swift_project_value_buffer(v0, qword_27DE9A9B0);
  v2 = sub_237C05ADC();
  result = __swift_storeEnumTagSinglePayload(v1, 1, 1, v2);
  v4 = v0[6];
  v5 = v0[7];
  *(v1 + v0[5]) = 10;
  *(v1 + v4) = 20;
  *(v1 + v5) = 1000;
  return result;
}

uint64_t static MLHandPoseClassifier._defaultSessionParameters.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DE9A560 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for MLTrainingSessionParameters(0);
  __swift_project_value_buffer(v2, qword_27DE9A9B0);
  OUTLINED_FUNCTION_5_1();
  return sub_2379E90B4(v3, a1);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

id MLHandPoseClassifier.model.getter()
{
  v1 = *(v0 + *(type metadata accessor for MLHandPoseClassifier(0) + 20));

  return v1;
}

uint64_t type metadata accessor for MLHandPoseClassifier(uint64_t a1)
{
  result = qword_27DE9AA28;
  if (!qword_27DE9AA28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void MLHandPoseClassifier.model.setter()
{
  v2 = OUTLINED_FUNCTION_46();
  v3 = *(type metadata accessor for MLHandPoseClassifier(v2) + 20);

  *(v1 + v3) = v0;
}

void (*MLHandPoseClassifier.model.modify())()
{
  v0 = OUTLINED_FUNCTION_46();
  type metadata accessor for MLHandPoseClassifier(v0);
  return nullsub_1;
}

uint64_t MLHandPoseClassifier.modelParameters.getter()
{
  v2 = OUTLINED_FUNCTION_146();
  type metadata accessor for MLHandPoseClassifier(v2);
  OUTLINED_FUNCTION_7_1();
  return sub_2379E90B4(v1 + v3, v0);
}

uint64_t MLHandPoseClassifier.trainingMetrics.getter()
{
  v0 = OUTLINED_FUNCTION_146();
  v1 = type metadata accessor for MLHandPoseClassifier(v0);
  return OUTLINED_FUNCTION_48(*(v1 + 28));
}

uint64_t MLHandPoseClassifier.trainingMetrics.setter()
{
  v2 = OUTLINED_FUNCTION_46();
  v3 = v1 + *(type metadata accessor for MLHandPoseClassifier(v2) + 28);

  return sub_2379DC1F8(v0, v3);
}

uint64_t sub_2379DC1F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLClassifierMetrics(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void (*MLHandPoseClassifier.trainingMetrics.modify())()
{
  v0 = OUTLINED_FUNCTION_46();
  type metadata accessor for MLHandPoseClassifier(v0);
  return nullsub_1;
}

uint64_t MLHandPoseClassifier.validationMetrics.getter()
{
  v0 = OUTLINED_FUNCTION_146();
  v1 = type metadata accessor for MLHandPoseClassifier(v0);
  return OUTLINED_FUNCTION_48(*(v1 + 32));
}

uint64_t MLHandPoseClassifier.validationMetrics.setter()
{
  v2 = OUTLINED_FUNCTION_46();
  v3 = v1 + *(type metadata accessor for MLHandPoseClassifier(v2) + 32);

  return sub_2379DC1F8(v0, v3);
}

void (*MLHandPoseClassifier.validationMetrics.modify())()
{
  v0 = OUTLINED_FUNCTION_46();
  type metadata accessor for MLHandPoseClassifier(v0);
  return nullsub_1;
}

void MLHandPoseClassifier.init(trainingData:parameters:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_74();
  v90 = v4;
  v89 = v5;
  v7 = v6;
  v8 = type metadata accessor for MLHandPoseClassifier(0);
  v9 = (v8 - 8);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_0();
  v84 = v11 - v10;
  v12 = OUTLINED_FUNCTION_41_0();
  v13 = type metadata accessor for MLHandPoseClassifier.ModelParameters(v12);
  v14 = OUTLINED_FUNCTION_1(v13);
  v82 = v15;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_134();
  v86 = v16;
  v83 = v17;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_58();
  v85 = v19;
  v20 = OUTLINED_FUNCTION_41_0();
  v87 = type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData(v20);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_2_0();
  v81 = v23 - v22;
  v24 = OUTLINED_FUNCTION_41_0();
  v25 = type metadata accessor for MLHandPoseClassifier.DataSource(v24);
  v26 = OUTLINED_FUNCTION_20(v25);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_2_0();
  v80 = v28 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9C8, &qword_237C0B6A0);
  OUTLINED_FUNCTION_0();
  v31 = v30;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_60();
  v33 = v9[7];
  v97 = [objc_allocWithZone(MEMORY[0x277CBFF20]) init];
  *(v7 + v33) = v97;
  v34 = (v7 + v9[9]);
  sub_237C06FAC();
  type metadata accessor for MLClassifierMetrics.Precomputed(0);
  sub_2379E51D0(v3);
  sub_2379E5C70(v3);
  v35 = *(v31 + 8);
  v35(v3, v29);
  *v34 = 0;
  type metadata accessor for MLClassifierMetrics.Contents(0);
  v92 = v34;
  OUTLINED_FUNCTION_55();
  swift_storeEnumTagMultiPayload();
  v36 = (v7 + v9[10]);
  sub_237C06FAC();
  sub_2379E51D0(v3);
  sub_2379E5C70(v3);
  v37 = v3;
  v38 = v36;
  v35(v37, v29);
  *v36 = 0;
  swift_storeEnumTagMultiPayload();
  sub_237A99AB0(&v95, &v93);
  if (v2)
  {
    OUTLINED_FUNCTION_1_0();
    sub_2379E9180(v90);
    OUTLINED_FUNCTION_4_1();
    sub_2379E9180(v89);

    OUTLINED_FUNCTION_42();
    sub_2379E9180(v34);
    sub_2379E9180(v36);
LABEL_6:
    OUTLINED_FUNCTION_73();
    return;
  }

  v77 = v7;
  v47 = v95;
  v48 = v96;
  v79 = v93;
  v91 = v94;
  if (v96 == 255)
  {
    MLHandPoseClassifier.DataSource.keypointsWithAnnotations()(v39, v40, v41, v42, v43, v44, v45, v46, v69, v70, v72, v74, v76, v7, v93, v80, v81, v82, v83, v84);
  }

  else
  {
    _s16FeatureExtractorCMa_0();
    v93 = v47;
    OUTLINED_FUNCTION_116(v48 & 1);
  }

  v75 = v95;
  HIDWORD(v76) = v96;
  if (v91 != 255)
  {
    _s16FeatureExtractorCMa_0();
    v93 = v79;
    OUTLINED_FUNCTION_116(v91 & 1);
    OUTLINED_FUNCTION_92();
LABEL_13:
    v88 = v95;
    LODWORD(v81) = v96;
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_22_0();
  sub_2379E90B4(v90, v81);
  OUTLINED_FUNCTION_37_0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v49 = v80;
    v50 = sub_2379E72FC(v81, v80);
    MLHandPoseClassifier.DataSource.keypointsWithAnnotations()(v50, v51, v52, v53, v54, v55, v56, v57, v69, v70, v72, v75, v76, v77, v79, v80, v81, v82, v83, v84);
    OUTLINED_FUNCTION_92();
    OUTLINED_FUNCTION_4_1();
    sub_2379E9180(v49);
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_92();
  sub_2379E9180(v81);
  if (MEMORY[0x2383DDC00](0))
  {
    OUTLINED_FUNCTION_87();
    type metadata accessor for CMLTable();
    OUTLINED_FUNCTION_103();
    v58 = swift_allocObject();
    *(v58 + 16) = v87;
    type metadata accessor for _DataTable();
    swift_allocObject();
    v88 = sub_237B6C578(v58);
    LODWORD(v81) = 0;
LABEL_14:
    sub_2379E90B4(v90, v85);
    sub_2379E90B4(v85, v86);
    v59 = (*(v82 + 80) + 41) & ~*(v82 + 80);
    v60 = swift_allocObject();
    *(v60 + 16) = v75;
    *(v60 + 24) = BYTE4(v76);
    *(v60 + 32) = v88;
    *(v60 + 40) = v81;
    OUTLINED_FUNCTION_47();
    v62 = v61 + v59;
    v64 = v63;
    sub_2379E72FC(v86, v62);
    sub_2379DBCF4(v64, SBYTE4(v76));
    sub_2379DBCF4(v88, v81);
    v65 = v84;
    sub_2379DD76C(&unk_237C0B6C8, v60, &unk_284AC15A0, &unk_237C0B9F0, type metadata accessor for MLHandPoseClassifier, v66, v67, v68, v69, v70, v72, v75, v76, v77, v79, v80, v81, v82, v83, v84);

    OUTLINED_FUNCTION_121();
    sub_2379DBC84(v71, v73);
    OUTLINED_FUNCTION_43();
    sub_2379E9180(v90);
    OUTLINED_FUNCTION_4_1();
    sub_2379E9180(v89);
    sub_2379E9180(v85);

    OUTLINED_FUNCTION_42();
    sub_2379E9180(v92);
    sub_2379E9180(v38);
    sub_2379E72FC(v65, v78);
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_2379DCB14(uint64_t a1, void *a2, char a3, void *a4, char a5, uint64_t a6)
{
  *(v6 + 26) = a5;
  *(v6 + 64) = a4;
  *(v6 + 72) = a6;
  *(v6 + 25) = a3;
  *(v6 + 48) = a1;
  *(v6 + 56) = a2;
  type metadata accessor for MLHandPoseClassifier.ModelParameters(0);
  *(v6 + 80) = swift_task_alloc();
  sub_2379DBCF4(a2, a3 & 1);
  sub_2379DBCF4(a4, a5 & 1);

  return MEMORY[0x2822009F8](sub_2379DCBE0);
}

uint64_t sub_2379DCBE0()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 26);
  v2 = *(v0 + 25);
  v3 = *(v0 + 64);
  *(v0 + 16) = *(v0 + 56);
  *(v0 + 24) = v2 & 1;
  *(v0 + 32) = v3;
  *(v0 + 40) = v1 & 1;
  OUTLINED_FUNCTION_7_1();
  sub_2379E90B4(v4, v5);
  v6 = swift_task_alloc();
  *(v0 + 88) = v6;
  *v6 = v0;
  v6[1] = sub_2379DCCB4;

  return sub_2379DCE2C();
}

uint64_t sub_2379DCCB4()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  v3 = v2;
  OUTLINED_FUNCTION_95();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3();
  *v6 = v5;
  *(v3 + 96) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11();

    return MEMORY[0x2822009F8](v7);
  }

  else
  {

    OUTLINED_FUNCTION_8();

    return v8();
  }
}

uint64_t sub_2379DCDD0()
{
  OUTLINED_FUNCTION_9();

  OUTLINED_FUNCTION_8();

  return v0();
}

uint64_t sub_2379DCE2C()
{
  OUTLINED_FUNCTION_49();
  v2 = v1;
  v4 = v3;
  *(v0 + 48) = v5;
  *(v0 + 56) = v6;
  v7 = type metadata accessor for MLHandActionClassifier(0);
  *(v0 + 64) = v7;
  OUTLINED_FUNCTION_20(v7);
  *(v0 + 72) = swift_task_alloc();
  v8 = type metadata accessor for MLHandActionClassifier.ModelParameters(0);
  *(v0 + 80) = v8;
  OUTLINED_FUNCTION_20(v8);
  *(v0 + 88) = swift_task_alloc();
  *(v0 + 96) = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9C8, &qword_237C0B6A0);
  *(v0 + 104) = v9;
  OUTLINED_FUNCTION_1(v9);
  *(v0 + 112) = v10;
  v11 = swift_task_alloc();
  v12 = *v4;
  *(v0 + 120) = v11;
  *(v0 + 128) = v12;
  *(v0 + 25) = *(v4 + 8);
  *(v0 + 136) = *v2;
  *(v0 + 26) = *(v2 + 8);
  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v13);
}

uint64_t sub_2379DCF78()
{
  v29 = *(v0 + 26);
  v27 = *(v0 + 25);
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v3 = *(v0 + 96);
  v4 = *(v0 + 104);
  v28 = *(v0 + 136);
  v24 = *(v0 + 80);
  v5 = *(v0 + 48);
  v25 = *(v0 + 56);
  v26 = *(v0 + 128);
  *(v0 + 144) = [objc_allocWithZone(MEMORY[0x277CBFF20]) init];
  v6 = type metadata accessor for MLHandPoseClassifier(0);
  *(v0 + 152) = v6;
  v7 = v6[7];
  *(v0 + 28) = v7;
  v8 = (v5 + v7);
  sub_237C06FAC();
  type metadata accessor for MLClassifierMetrics.Precomputed(0);
  v9 = OUTLINED_FUNCTION_127();
  sub_2379E51D0(v9);
  v10 = OUTLINED_FUNCTION_127();
  sub_2379E5C70(v10);
  v11 = *(v2 + 8);
  v11(v1, v4);
  *v8 = 0;
  type metadata accessor for MLClassifierMetrics.Contents(0);
  OUTLINED_FUNCTION_83();
  swift_storeEnumTagMultiPayload();
  v12 = v6[8];
  *(v0 + 44) = v12;
  v13 = (v5 + v12);
  sub_237C06FAC();
  v14 = OUTLINED_FUNCTION_127();
  sub_2379E51D0(v14);
  v15 = OUTLINED_FUNCTION_127();
  sub_2379E5C70(v15);
  v11(v1, v4);
  *v13 = 0;
  OUTLINED_FUNCTION_83();
  swift_storeEnumTagMultiPayload();
  *(v0 + 176) = v6[6];
  OUTLINED_FUNCTION_7_1();
  sub_2379E90B4(v25, v5 + v16);
  v17 = type metadata accessor for MLHandPoseClassifier.ModelParameters(0);
  v18 = *(v25 + v17[7]);
  v19 = *(v25 + v17[5]);
  v20 = *(v25 + v17[6]);
  *v3 = 0;
  *(v3 + 8) = 0;
  *(v3 + 16) = 256;
  type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(0);
  OUTLINED_FUNCTION_125();
  swift_storeEnumTagMultiPayload();
  *(v3 + v24[5]) = v19;
  *(v3 + v24[6]) = v20;
  *(v3 + v24[7]) = 1;
  *(v3 + v24[8]) = v18;
  *(v3 + v24[10]) = 0x403E000000000000;
  *(v0 + 16) = v26;
  *(v0 + 24) = v27;
  *(v0 + 32) = v28;
  *(v0 + 40) = v29;
  OUTLINED_FUNCTION_23_0();
  sub_2379E90B4(v3, v21);
  v22 = swift_task_alloc();
  *(v0 + 160) = v22;
  *v22 = v0;
  v22[1] = sub_2379DD234;

  return sub_237ACDB54();
}

uint64_t sub_2379DD234()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  v3 = v2;
  OUTLINED_FUNCTION_95();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3();
  *v6 = v5;
  *(v3 + 168) = v0;

  if (!v0)
  {
    *(v3 + 180) = *(*(v3 + 152) + 20);
  }

  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_2379DD338()
{
  v1 = *(v0 + 180);
  v2 = *(v0 + 44);
  v3 = *(v0 + 28);
  v4 = *(v0 + 144);
  v5 = *(v0 + 96);
  v6 = *(v0 + 64);
  v7 = *(v0 + 72);
  v8 = *(v0 + 48);
  OUTLINED_FUNCTION_1_0();
  sub_2379E9180(v9);
  OUTLINED_FUNCTION_2_2();
  sub_2379E9180(v5);
  OUTLINED_FUNCTION_24_0();
  sub_2379E72FC(v7, v8);
  sub_2379E93B4(v8 + *(v6 + 32), v8 + v3);
  sub_2379E93B4(v8 + *(v6 + 36), v8 + v2);
  v10 = *(v8 + 16);

  *(v8 + v1) = v10;

  OUTLINED_FUNCTION_8();

  return v11();
}

uint64_t sub_2379DD44C()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 44);
  v3 = *(v0 + 28);
  v4 = *(v0 + 144);
  v5 = *(v0 + 96);
  v6 = *(v0 + 48);
  sub_2379E9180(*(v0 + 56));
  OUTLINED_FUNCTION_2_2();
  sub_2379E9180(v5);

  sub_2379E9180(v6 + v1);
  sub_2379E9180(v6 + v3);
  sub_2379E9180(v6 + v2);

  OUTLINED_FUNCTION_8();

  return v7();
}

void sub_2379DD56C()
{
  OUTLINED_FUNCTION_97();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA98, &unk_237C0DEB0);
  OUTLINED_FUNCTION_20(v3);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_36_0();
  v5 = type metadata accessor for ResultBox();
  v6 = OUTLINED_FUNCTION_120(v5);
  v7 = OUTLINED_FUNCTION_29_0(v6);
  sub_237C08A3C();
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  OUTLINED_FUNCTION_79();
  v12 = swift_allocObject();
  OUTLINED_FUNCTION_57(v12);

  v13 = v7;
  v14 = OUTLINED_FUNCTION_62();
  sub_237BBAEC8(v14, v15, v1, v16, v2);

  sub_237C08C9C();
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  sub_2379E9068(v0, &v17, &qword_27DE9AAA0, &unk_237C0B820);
  if (v18 == 255)
  {
    __break(1u);
  }

  else
  {
    if (v18)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAA8, &qword_237C0ECD0);
      swift_willThrowTypedImpl();
    }

    else
    {

      sub_2379DAD24(&v17, &v19);
      sub_2379E8EE0(0, &qword_27DE9AA38, 0x277CBFF20);
      OUTLINED_FUNCTION_152();
    }

    OUTLINED_FUNCTION_133();
  }
}

void sub_2379DD76C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_74();
  v35 = v21;
  OUTLINED_FUNCTION_109();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA98, &unk_237C0DEB0);
  OUTLINED_FUNCTION_20(v22);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_60();
  v24 = type metadata accessor for ResultBox();
  v25 = OUTLINED_FUNCTION_120(v24);
  *(v25 + 32) = 0u;
  *(v25 + 16) = 0u;
  v26 = OUTLINED_FUNCTION_65(v25);
  sub_237C08A3C();
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
  OUTLINED_FUNCTION_79();
  v31 = swift_allocObject();
  OUTLINED_FUNCTION_118(v31);

  v32 = v26;
  OUTLINED_FUNCTION_101();

  sub_237C08C9C();
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  sub_2379E9068(v25 + 16, v36, &qword_27DE9AAA0, &unk_237C0B820);
  OUTLINED_FUNCTION_132();
  if (v34)
  {
    __break(1u);
  }

  else
  {
    if (v33)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAA8, &qword_237C0ECD0);
      swift_willThrowTypedImpl();
    }

    else
    {

      OUTLINED_FUNCTION_155();
      v35(0);
      OUTLINED_FUNCTION_131();
      swift_dynamicCast();
    }

    OUTLINED_FUNCTION_77();
    OUTLINED_FUNCTION_73();
  }
}

void sub_2379DD908()
{
  OUTLINED_FUNCTION_97();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA98, &unk_237C0DEB0);
  OUTLINED_FUNCTION_20(v3);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_36_0();
  v5 = type metadata accessor for ResultBox();
  v6 = OUTLINED_FUNCTION_120(v5);
  v7 = OUTLINED_FUNCTION_29_0(v6);
  sub_237C08A3C();
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  OUTLINED_FUNCTION_79();
  v12 = swift_allocObject();
  OUTLINED_FUNCTION_57(v12);

  v13 = v7;
  v14 = OUTLINED_FUNCTION_62();
  sub_237BBAEC8(v14, v15, v1, v16, v2);

  sub_237C08C9C();
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  sub_2379E9068(v0, &v19, &qword_27DE9AAA0, &unk_237C0B820);
  OUTLINED_FUNCTION_132();
  if (v18)
  {
    __break(1u);
  }

  else
  {
    if (v17)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAA8, &qword_237C0ECD0);
      swift_willThrowTypedImpl();
    }

    else
    {

      OUTLINED_FUNCTION_155();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABF0, &qword_237C0B968);
      OUTLINED_FUNCTION_131();
      swift_dynamicCast();
    }

    OUTLINED_FUNCTION_133();
  }
}

void sub_2379DDB90()
{
  OUTLINED_FUNCTION_97();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA98, &unk_237C0DEB0);
  OUTLINED_FUNCTION_20(v3);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_36_0();
  v5 = type metadata accessor for ResultBox();
  v6 = OUTLINED_FUNCTION_120(v5);
  v7 = OUTLINED_FUNCTION_29_0(v6);
  sub_237C08A3C();
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  OUTLINED_FUNCTION_79();
  v12 = swift_allocObject();
  OUTLINED_FUNCTION_57(v12);

  v13 = v7;
  v14 = OUTLINED_FUNCTION_62();
  sub_237BBAEC8(v14, v15, v1, v16, v2);

  sub_237C08C9C();
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  sub_2379E9068(v0, &v17, &qword_27DE9AAA0, &unk_237C0B820);
  if (v18 == 255)
  {
    __break(1u);
  }

  else
  {
    if (v18)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAA8, &qword_237C0ECD0);
      swift_willThrowTypedImpl();
    }

    else
    {

      sub_2379DAD24(&v17, &v19);
      type metadata accessor for _Model();
      OUTLINED_FUNCTION_152();
    }

    OUTLINED_FUNCTION_133();
  }
}

void sub_2379DDDC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_74();
  v36 = v21;
  v37 = v22;
  OUTLINED_FUNCTION_109();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA98, &unk_237C0DEB0);
  OUTLINED_FUNCTION_20(v23);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_60();
  v25 = type metadata accessor for ResultBox();
  v26 = OUTLINED_FUNCTION_120(v25);
  *(v26 + 32) = 0u;
  *(v26 + 16) = 0u;
  v27 = OUTLINED_FUNCTION_65(v26);
  sub_237C08A3C();
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
  OUTLINED_FUNCTION_79();
  v32 = swift_allocObject();
  OUTLINED_FUNCTION_118(v32);

  v33 = v27;
  OUTLINED_FUNCTION_101();

  sub_237C08C9C();
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  sub_2379E9068(v26 + 16, v38, &qword_27DE9AAA0, &unk_237C0B820);
  OUTLINED_FUNCTION_132();
  if (v35)
  {
    __break(1u);
  }

  else
  {
    if (v34)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAA8, &qword_237C0ECD0);
      swift_willThrowTypedImpl();
    }

    else
    {

      OUTLINED_FUNCTION_155();
      __swift_instantiateConcreteTypeFromMangledNameV2(v36, v37);
      OUTLINED_FUNCTION_131();
      swift_dynamicCast();
    }

    OUTLINED_FUNCTION_77();
    OUTLINED_FUNCTION_73();
  }
}

void sub_2379DDFE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_74();
  v22 = v21;
  v24 = v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA98, &unk_237C0DEB0);
  OUTLINED_FUNCTION_20(v25);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_108();
  v27 = type metadata accessor for ResultBox();
  v28 = OUTLINED_FUNCTION_120(v27);
  *(v28 + 32) = 0u;
  *(v28 + 16) = 0u;
  v29 = OUTLINED_FUNCTION_65(v28);
  sub_237C08A3C();
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v33);
  OUTLINED_FUNCTION_79();
  v34 = swift_allocObject();
  v34[2] = 0;
  v34[3] = 0;
  v34[4] = v28;
  v34[5] = v24;
  v34[6] = v22;
  v34[7] = v29;

  v35 = v29;
  v36 = OUTLINED_FUNCTION_62();
  sub_237BBAEC8(v36, v37, v20, v38, v34);

  sub_237C08C9C();
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  sub_2379E9068(v28 + 16, v41, &qword_27DE9AAA0, &unk_237C0B820);
  OUTLINED_FUNCTION_132();
  if (v40)
  {
    __break(1u);
  }

  else
  {
    if (v39)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAA8, &qword_237C0ECD0);
      swift_willThrowTypedImpl();
    }

    else
    {

      OUTLINED_FUNCTION_155();
      OUTLINED_FUNCTION_131();
      swift_dynamicCast();
    }

    OUTLINED_FUNCTION_77();
    OUTLINED_FUNCTION_73();
  }
}

uint64_t sub_2379DE1B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v138 = a4;
  v139 = a2;
  v134 = a3;
  v131 = a1;
  OUTLINED_FUNCTION_146();
  v120 = sub_237C05DBC();
  OUTLINED_FUNCTION_0();
  v122 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_14_0();
  v121 = v8;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_58();
  v119 = v10;
  OUTLINED_FUNCTION_41_0();
  sub_237C0683C();
  OUTLINED_FUNCTION_0();
  v125 = v11;
  v126 = v12;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_14_0();
  v115 = v13;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_58();
  v124 = v15;
  v16 = OUTLINED_FUNCTION_41_0();
  v17 = type metadata accessor for MLClassifierMetrics(v16);
  v18 = OUTLINED_FUNCTION_20(v17);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_14_0();
  v114 = v19;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_58();
  v117 = v21;
  v22 = OUTLINED_FUNCTION_41_0();
  v136 = type metadata accessor for MLHandActionClassifier.ModelParameters(v22) - 8;
  MEMORY[0x28223BE20](v136);
  OUTLINED_FUNCTION_14_0();
  v137 = v23;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v24);
  v26 = &v113 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9C8, &qword_237C0B6A0);
  OUTLINED_FUNCTION_0();
  v29 = v28;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_30_0();
  v31 = type metadata accessor for MLHandPoseClassifier(0);
  v32 = *(v31 + 20);
  v33 = v31;
  v34 = [objc_allocWithZone(MEMORY[0x277CBFF20]) init];
  v135 = v4;
  *(v4 + v32) = v34;
  v35 = *(v33 + 28);
  v36 = v33;
  v130 = v33;
  v37 = (v4 + v35);
  sub_237C06FAC();
  v38 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
  v39 = OUTLINED_FUNCTION_122();
  sub_2379E51D0(v39);
  v40 = OUTLINED_FUNCTION_122();
  sub_2379E5C70(v40);
  v41 = *(v29 + 8);
  v128 = v27;
  v41(v5, v27);
  v129 = v41;
  *v37 = 0;
  v42 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v116 = v37;
  OUTLINED_FUNCTION_37_0();
  v133 = v42;
  swift_storeEnumTagMultiPayload();
  v43 = (v135 + *(v36 + 32));
  sub_237C06FAC();
  v44 = OUTLINED_FUNCTION_122();
  sub_2379E51D0(v44);
  v45 = OUTLINED_FUNCTION_122();
  sub_2379E5C70(v45);
  v46 = OUTLINED_FUNCTION_82();
  (v41)(v46);
  *v43 = 0;
  v113 = v43;
  OUTLINED_FUNCTION_37_0();
  swift_storeEnumTagMultiPayload();
  v47 = type metadata accessor for MLHandPoseClassifier.ModelParameters(0);
  v48 = *(v139 + v47[7]);
  v49 = *(v139 + v47[5]);
  v50 = *(v139 + v47[6]);
  *v26 = 0;
  *(v26 + 1) = 0;
  *(v26 + 8) = 256;
  type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(0);
  swift_storeEnumTagMultiPayload();
  v51 = v136;
  *&v26[*(v136 + 28)] = v49;
  *&v26[v51[8]] = v50;
  *&v26[v51[9]] = 1;
  *&v26[v51[10]] = v48;
  *&v26[v51[12]] = 0x403E000000000000;
  OUTLINED_FUNCTION_23_0();
  v127 = v52;
  v132 = v26;
  sub_2379E90B4(v26, v53);
  v54 = objc_allocWithZone(MEMORY[0x277CBFF20]);

  v55 = [v54 init];
  v56 = v135;
  v135[2] = v55;
  v57 = type metadata accessor for MLHandActionClassifier(0);
  v58 = (v56 + v57[8]);
  sub_237C06FAC();
  v59 = OUTLINED_FUNCTION_145();
  sub_2379E51D0(v59);
  v60 = OUTLINED_FUNCTION_145();
  sub_2379E5C70(v60);
  v61 = v128;
  v62 = v129;
  v129(v5, v128);
  *v58 = 0;
  OUTLINED_FUNCTION_67();
  swift_storeEnumTagMultiPayload();
  v63 = (v56 + v57[9]);
  sub_237C06FAC();
  v64 = OUTLINED_FUNCTION_145();
  sub_2379E51D0(v64);
  v118 = v38;
  v65 = OUTLINED_FUNCTION_145();
  sub_2379E5C70(v65);
  v62(v5, v61);
  v66 = v139;
  v67 = v56;
  *v63 = 0;
  OUTLINED_FUNCTION_67();
  swift_storeEnumTagMultiPayload();
  v68 = v137;
  v69 = v138;
  *v56 = v138;
  sub_2379E90B4(v68, v56 + v57[7]);
  v70 = *(v68 + *(v136 + 36));
  v71 = _s8GraphCNNCMa(0);
  OUTLINED_FUNCTION_91(v71);

  sub_237AED020(v72, 0, 21, 3, v70);
  OUTLINED_FUNCTION_2_2();
  sub_2379E9180(v68);
  v73 = v134;

  v56[1] = v131;
  OUTLINED_FUNCTION_7_1();
  sub_2379E90B4(v66, v56 + v74);
  sub_237AC9A74(v73, &v142, 0xD000000000000012, 0x8000000237C170A0);
  if (!v143)
  {

    sub_2379E9130(&v142, &qword_27DE9A998);
LABEL_7:
    sub_2379E8AF0();
    OUTLINED_FUNCTION_50();
    v81 = swift_allocError();
    *v82 = 0xD00000000000002CLL;
    v82[1] = 0x8000000237C170C0;
    OUTLINED_FUNCTION_52(v81, v82);
    OUTLINED_FUNCTION_1_0();
    sub_2379E9180(v66);
    goto LABEL_9;
  }

  type metadata accessor for _MetricUtilities.ConfusionMatrixMeter(0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_7;
  }

  v75 = v140;
  v76 = v124;
  sub_237A347A4();
  v77 = *(v69 + 16);
  sub_237A34D48(v76, v77);
  v79 = v78;
  v80 = v123;
  sub_237A33B40(v69, &v142);
  if (v80)
  {

    OUTLINED_FUNCTION_1_0();
    sub_2379E9180(v66);
    (*(v126 + 8))(v76, v125);
LABEL_9:
    OUTLINED_FUNCTION_2_2();
    sub_2379E9180(v132);
    return sub_2379E9180(v67);
  }

  v137 = v77;
  sub_237A34FA0(v76, v69, 0, &v140);
  v131 = v75;
  v136 = 0;
  v84 = v140;
  v85 = v141;
  v86 = v142;
  v87 = BYTE8(v142);
  v140 = v142;
  v141 = BYTE8(v142);
  sub_2379DBCF4(v142, SBYTE8(v142));
  v88 = v119;
  sub_237A70ED4(&v140, v119);
  v140 = v84;
  v141 = v85;
  v89 = v121;
  sub_237A70ED4(&v140, v121);
  sub_2379DBC9C(v86, v87);
  v90 = *(v126 + 8);
  v126 += 8;
  v130 = v90;
  v90(v76, v125);
  v91 = v117;
  *v117 = 1.0 - v79;
  v92 = v118;
  v93 = v122 + 32;
  v94 = *(v122 + 32);
  v95 = v120;
  v94(v91 + *(v118 + 20), v88, v120);
  v96 = v91 + *(v92 + 24);
  v122 = v93;
  v129 = v94;
  v94(v96, v89, v95);
  OUTLINED_FUNCTION_67();
  swift_storeEnumTagMultiPayload();
  sub_2379DC1F8(v91, v116);
  sub_237AC9A74(v134, &v142, 0xD000000000000014, 0x8000000237C170F0);

  if (v143)
  {
    v97 = swift_dynamicCast();
    v98 = v138;
    if (v97)
    {
      v99 = v130;
      v100 = v115;
      sub_237A347A4();
      sub_237A34D48(v100, v137);
      v102 = v101;
      v103 = v136;
      sub_237A33B40(v98, &v142);
      if (v103)
      {

        OUTLINED_FUNCTION_1_0();
        sub_2379E9180(v139);
        v99(v100, v125);
        OUTLINED_FUNCTION_2_2();
        sub_2379E9180(v132);
        return sub_2379E9180(v67);
      }

      sub_237A34FA0(v100, v98, 0, &v140);
      v136 = 0;

      v104 = v140;
      v105 = v141;
      v106 = v142;
      v107 = BYTE8(v142);
      v140 = v142;
      v141 = BYTE8(v142);
      sub_2379DBCF4(v142, SBYTE8(v142));
      v108 = v119;
      sub_237A70ED4(&v140, v119);
      v140 = v104;
      v141 = v105;
      sub_2379DBCF4(v104, v105);
      sub_237A70ED4(&v140, v121);

      sub_2379DBC9C(v104, v105);
      OUTLINED_FUNCTION_1_0();
      sub_2379E9180(v139);
      sub_2379DBC9C(v106, v107);
      v99(v100, v125);
      OUTLINED_FUNCTION_2_2();
      sub_2379E9180(v132);
      v109 = v114;
      *v114 = 1.0 - v102;
      v110 = v118;
      v111 = v120;
      v112 = v129;
      (v129)(v109 + *(v118 + 20), v108, v120);
      v112(v109 + *(v110 + 24), v121, v111);
      OUTLINED_FUNCTION_67();
      swift_storeEnumTagMultiPayload();
      return sub_2379DC1F8(v109, v113);
    }

    else
    {

      OUTLINED_FUNCTION_1_0();
      sub_2379E9180(v139);
      OUTLINED_FUNCTION_2_2();
      return sub_2379E9180(v132);
    }
  }

  else
  {

    OUTLINED_FUNCTION_1_0();
    sub_2379E9180(v139);
    OUTLINED_FUNCTION_2_2();
    sub_2379E9180(v132);
    return sub_2379E9130(&v142, &qword_27DE9A998);
  }
}

void MLHandPoseClassifier.init(checkpoint:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_74();
  v93 = v5;
  v7 = v6;
  v85 = type metadata accessor for MLHandActionClassifier(0);
  OUTLINED_FUNCTION_0();
  v73 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_134();
  v74 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_58();
  v77 = v12;
  v13 = OUTLINED_FUNCTION_41_0();
  v76 = type metadata accessor for MLHandActionClassifier.ModelParameters(v13);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_14_0();
  v83 = v15;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_58();
  v81 = v17;
  v18 = OUTLINED_FUNCTION_41_0();
  type metadata accessor for MLHandPoseClassifier.DataSource(v18);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_2_0();
  v78 = v21 - v20;
  v22 = OUTLINED_FUNCTION_41_0();
  v80 = _s20PersistentParametersVMa_0(v22);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_2_0();
  v90 = v25 - v24;
  OUTLINED_FUNCTION_41_0();
  v94 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v92 = v26;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_14_0();
  v87 = v28;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_58();
  v91 = v30;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9C8, &qword_237C0B6A0);
  v31 = *(v89 - 8);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_94();
  v88 = [objc_allocWithZone(MEMORY[0x277CBFF20]) init];
  v33 = type metadata accessor for MLHandPoseClassifier(0);
  v34 = (v7 + v33[7]);
  sub_237C06FAC();
  type metadata accessor for MLClassifierMetrics.Precomputed(0);
  v35 = OUTLINED_FUNCTION_144();
  sub_2379E51D0(v35);
  v36 = OUTLINED_FUNCTION_144();
  sub_2379E5C70(v36);
  v75 = *(v31 + 8);
  v75(v4, v89);
  *v34 = 0;
  type metadata accessor for MLClassifierMetrics.Contents(0);
  v86 = v34;
  OUTLINED_FUNCTION_67();
  swift_storeEnumTagMultiPayload();
  v84 = v33;
  v82 = v7;
  v37 = (v7 + v33[8]);
  sub_237C06FAC();
  v38 = OUTLINED_FUNCTION_144();
  sub_2379E51D0(v38);
  v39 = OUTLINED_FUNCTION_144();
  sub_2379E5C70(v39);
  v75(v4, v89);
  *v37 = 0;
  OUTLINED_FUNCTION_67();
  swift_storeEnumTagMultiPayload();
  sub_237C05A5C();
  (*(v92 + 16))(v87, v91, v94);
  sub_237A07C0C(v87, v90);
  if (v3)
  {
    OUTLINED_FUNCTION_9_0();
    sub_2379E9180(v93);
    (*(v92 + 8))(v91, v94);

    sub_2379E9180(v86);
    sub_2379E9180(v37);
  }

  else
  {
    v40 = OUTLINED_FUNCTION_40_0();
    sub_2379E90B4(v40, v78);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v41 = *v78;
      v42 = *(v78 + 8);

      sub_2379DF938(v42, &v95);

      v43 = v95;
      v44 = v96;
      sub_2379DFAE0(v95, v96, &v97);
      sub_2379DBC9C(v43, v44);
      v79 = sub_2379DFC10(v97, v98);
      sub_2379DBC9C(v41, v42);
      v45 = v83;
      v33 = v84;
      v46 = v80;
      v47 = 0x277CBF000;
    }

    else
    {
      sub_237B84894();
      v46 = v80;
      v47 = 0x277CBF000uLL;
      v49 = v48;
      v45 = v83;

      v79 = sub_2379DFFEC(v49);
      OUTLINED_FUNCTION_4_1();
      sub_2379E9180(v78);
    }

    v50 = v82 + v33[6];
    OUTLINED_FUNCTION_22_0();
    sub_2379E90B4(v90 + v51, v50);
    v52 = *(v90 + v46[6]);
    v53 = *(v90 + v46[7]);
    v54 = *(v90 + v46[8]);
    v55 = type metadata accessor for MLHandPoseClassifier.ModelParameters(0);
    *(v50 + v55[5]) = v52;
    *(v50 + v55[6]) = v53;
    *(v50 + v55[7]) = v54;
    *v81 = 0;
    *(v81 + 8) = 0;
    *(v81 + 16) = 256;
    type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(0);
    OUTLINED_FUNCTION_126();
    swift_storeEnumTagMultiPayload();
    *(v81 + v76[5]) = v52;
    *(v81 + v76[6]) = v53;
    *(v81 + v76[7]) = 1;
    *(v81 + v76[8]) = v54;
    *(v81 + v76[10]) = 0x403E000000000000;
    OUTLINED_FUNCTION_23_0();
    sub_2379E90B4(v81, v45);
    v77[2] = [objc_allocWithZone(*(v47 + 3872)) init];
    v56 = (v77 + v85[8]);
    sub_237C06FAC();
    v57 = OUTLINED_FUNCTION_141();
    sub_2379E51D0(v57);
    v58 = OUTLINED_FUNCTION_141();
    sub_2379E5C70(v58);
    v75(v4, v89);
    *v56 = 0;
    OUTLINED_FUNCTION_67();
    swift_storeEnumTagMultiPayload();
    v59 = (v77 + v85[9]);
    sub_237C06FAC();
    v60 = OUTLINED_FUNCTION_141();
    sub_2379E51D0(v60);
    v61 = OUTLINED_FUNCTION_141();
    sub_2379E5C70(v61);
    v62 = OUTLINED_FUNCTION_128();
    (v75)(v62);
    *v59 = 0;
    OUTLINED_FUNCTION_67();
    swift_storeEnumTagMultiPayload();
    *v77 = v79;
    sub_2379E90B4(v83, v77 + v85[7]);
    v63 = *(v83 + v76[7]);
    v64 = _s8GraphCNNCMa(0);
    OUTLINED_FUNCTION_91(v64);

    v66 = sub_237AED020(v65, 0, 21, 3, v63);
    OUTLINED_FUNCTION_2_2();
    sub_2379E9180(v83);
    v77[1] = v66;
    sub_237AE8BE0();
    sub_2379E90B4(v77, v74);
    v67 = (*(v73 + 80) + 16) & ~*(v73 + 80);
    swift_allocObject();
    OUTLINED_FUNCTION_24_0();
    sub_2379E72FC(v74, v68 + v67);
    sub_2379DD56C();
    v70 = v69;

    v71 = v84[5];
    OUTLINED_FUNCTION_9_0();
    sub_2379E9180(v93);
    OUTLINED_FUNCTION_2_2();
    sub_2379E9180(v81);
    OUTLINED_FUNCTION_10_0();
    sub_2379E9180(v90);
    (*(v92 + 8))(v91, v94);

    *(v82 + v71) = v70;
    OUTLINED_FUNCTION_24_0();
    sub_2379E72FC(v77, v72);
  }

  OUTLINED_FUNCTION_73();
}

void sub_2379DF794(char a2@<W3>, uint64_t a3@<X8>)
{
  if (a2)
  {
    swift_willThrow();
    OUTLINED_FUNCTION_59();
    sub_237C08EDC();

    OUTLINED_FUNCTION_80();
    v14[0] = 0xD00000000000001FLL;
    v14[1] = v4;
    v5 = OUTLINED_FUNCTION_55();
    MEMORY[0x2383DC360](v5);
    v6 = v14;
    v7 = OUTLINED_FUNCTION_110();
    MEMORY[0x2383DC360](v7);
    v8 = v14[0];
    sub_2379E8AF0();
    OUTLINED_FUNCTION_50();
    v9 = swift_allocError();
    OUTLINED_FUNCTION_25_0(v9, v10);
  }

  else
  {
    swift_retain_n();
    OUTLINED_FUNCTION_55();
    v11 = sub_237B6ACC0();

    type metadata accessor for _UntypedColumn();
    OUTLINED_FUNCTION_103();
    v6 = swift_allocObject();
    v6[2] = v11;

    sub_237A60248(v14);

    if (LOBYTE(v14[0]))
    {

      OUTLINED_FUNCTION_59();
      sub_237C08EDC();

      OUTLINED_FUNCTION_53();
      OUTLINED_FUNCTION_102();
      v8 = v14[0];
      sub_2379E8AF0();
      OUTLINED_FUNCTION_50();
      v12 = swift_allocError();
      OUTLINED_FUNCTION_25_0(v12, v13);
    }

    else
    {

      v8 = 0;
    }
  }

  *a3 = v6;
  *(a3 + 8) = v8;
}

void sub_2379DF938(char a2@<W3>, uint64_t a3@<X8>)
{
  if (a2)
  {
    swift_willThrow();
    OUTLINED_FUNCTION_59();
    sub_237C08EDC();

    OUTLINED_FUNCTION_80();
    v14[0] = 0xD00000000000001FLL;
    v14[1] = v4;
    v5 = OUTLINED_FUNCTION_55();
    MEMORY[0x2383DC360](v5);
    v6 = v14;
    v7 = OUTLINED_FUNCTION_110();
    MEMORY[0x2383DC360](v7);
    v8 = v14[0];
    sub_2379E8AF0();
    OUTLINED_FUNCTION_50();
    v9 = swift_allocError();
    OUTLINED_FUNCTION_25_0(v9, v10);
  }

  else
  {
    swift_retain_n();
    OUTLINED_FUNCTION_55();
    v11 = sub_237B6ACC0();

    type metadata accessor for _UntypedColumn();
    OUTLINED_FUNCTION_103();
    v6 = swift_allocObject();
    v6[2] = v11;

    sub_237A60248(v14);

    if (LOBYTE(v14[0]) == 2)
    {

      v8 = 0;
    }

    else
    {

      OUTLINED_FUNCTION_59();
      sub_237C08EDC();

      OUTLINED_FUNCTION_53();
      OUTLINED_FUNCTION_102();
      v8 = v14[0];
      sub_2379E8AF0();
      OUTLINED_FUNCTION_50();
      v12 = swift_allocError();
      OUTLINED_FUNCTION_25_0(v12, v13);
    }
  }

  *a3 = v6;
  *(a3 + 8) = v8;
}

void sub_2379DFAE0(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    sub_2379DBCF4(a1, 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAA8, &qword_237C0ECD0);
    v5 = sub_237C0925C();
    if (v5)
    {
      v6 = v5;
      sub_2379DBC9C(a1, 1);
    }

    else
    {
      OUTLINED_FUNCTION_50();
      v6 = swift_allocError();
      *v11 = a1;
    }

    v12 = 1;
    goto LABEL_7;
  }

  v7 = *(a1[2] + 16);
  v8 = OUTLINED_FUNCTION_85();
  sub_2379DBCF4(v8, v9);
  v10 = sub_237B0E068(v7);
  v13 = v10;
  if (v10)
  {
    type metadata accessor for CMLColumn();
    OUTLINED_FUNCTION_103();
    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    v15 = OUTLINED_FUNCTION_85();
    sub_2379DBC9C(v15, v16);
    type metadata accessor for _UntypedColumn();
    OUTLINED_FUNCTION_103();
    v6 = swift_allocObject();
    v12 = 0;
    *(v6 + 16) = v14;
LABEL_7:
    *a3 = v6;
    *(a3 + 8) = v12;
    return;
  }

  __break(1u);
}

uint64_t sub_2379DFC10(uint64_t a1, char a2)
{
  if (a2)
  {
    return OUTLINED_FUNCTION_154();
  }

  result = sub_237A2F128();
  if ((result & 0x8000000000000000) == 0)
  {
    v3 = result;
    if (result)
    {
      v4 = 0;
      v5 = MEMORY[0x277D84F90];
      do
      {
        v6 = OUTLINED_FUNCTION_88();
        v8 = sub_2379DBCF4(v6, v7);
        OUTLINED_FUNCTION_119(v8);
        v9 = OUTLINED_FUNCTION_88();
        sub_2379DBC9C(v9, v10);
        v11 = v18;
        v12 = v19;
        if (v20 != 2)
        {
          sub_2379E8CE8(v18, v19, v20);
          v11 = 0;
          v12 = 0xE000000000000000;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_35_0();
          sub_237BC0CB8();
          v5 = v16;
        }

        v14 = *(v5 + 16);
        v13 = *(v5 + 24);
        if (v14 >= v13 >> 1)
        {
          OUTLINED_FUNCTION_106(v13);
          sub_237BC0CB8();
          v5 = v17;
        }

        ++v4;
        *(v5 + 16) = v14 + 1;
        v15 = v5 + 16 * v14;
        *(v15 + 32) = v11;
        *(v15 + 40) = v12;
      }

      while (v3 != v4);
    }

    return OUTLINED_FUNCTION_154();
  }

  __break(1u);
  return result;
}

uint64_t sub_2379DFD2C(uint64_t a1, char a2)
{
  if (a2)
  {
    return OUTLINED_FUNCTION_154();
  }

  result = sub_237A2F128();
  if ((result & 0x8000000000000000) == 0)
  {
    v3 = result;
    if (result)
    {
      v4 = 0;
      v5 = MEMORY[0x277D84F90];
      while (1)
      {
        v6 = OUTLINED_FUNCTION_88();
        v8 = sub_2379DBCF4(v6, v7);
        OUTLINED_FUNCTION_119(v8);
        v9 = OUTLINED_FUNCTION_88();
        sub_2379DBC9C(v9, v10);
        v11 = v21;
        if (v23)
        {
          sub_2379E8CE8(v21, v22, v23);
          v11 = 0;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            goto LABEL_12;
          }
        }

        else if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
LABEL_12:
          v14 = OUTLINED_FUNCTION_35_0();
          sub_237BC0EB4(v14, v15, v16, v17);
          v5 = v18;
        }

        v13 = *(v5 + 16);
        v12 = *(v5 + 24);
        if (v13 >= v12 >> 1)
        {
          v19 = OUTLINED_FUNCTION_106(v12);
          sub_237BC0EB4(v19, v13 + 1, 1, v5);
          v5 = v20;
        }

        ++v4;
        *(v5 + 16) = v13 + 1;
        *(v5 + 8 * v13 + 32) = v11;
        if (v3 == v4)
        {
          return OUTLINED_FUNCTION_154();
        }
      }
    }

    return OUTLINED_FUNCTION_154();
  }

  __break(1u);
  return result;
}

uint64_t sub_2379DFE44(uint64_t a1, char a2)
{
  if (a2)
  {
    return OUTLINED_FUNCTION_154();
  }

  result = sub_237A2F128();
  if ((result & 0x8000000000000000) == 0)
  {
    v3 = result;
    if (result)
    {
      v4 = 0;
      v5 = MEMORY[0x277D84F90];
      while (1)
      {
        v6 = OUTLINED_FUNCTION_88();
        v8 = sub_2379DBCF4(v6, v7);
        OUTLINED_FUNCTION_119(v8);
        v9 = OUTLINED_FUNCTION_88();
        sub_2379DBC9C(v9, v10);
        if (v23 == 1)
        {
          v11 = v21;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            goto LABEL_12;
          }
        }

        else
        {
          sub_2379E8CE8(v21, v22, v23);
          v11 = 0;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
LABEL_12:
            v14 = OUTLINED_FUNCTION_35_0();
            sub_237BC0EDC(v14, v15, v16, v17);
            v5 = v18;
          }
        }

        v13 = *(v5 + 16);
        v12 = *(v5 + 24);
        if (v13 >= v12 >> 1)
        {
          v19 = OUTLINED_FUNCTION_106(v12);
          sub_237BC0EDC(v19, v13 + 1, 1, v5);
          v5 = v20;
        }

        ++v4;
        *(v5 + 16) = v13 + 1;
        *(v5 + 8 * v13 + 32) = v11;
        if (v3 == v4)
        {
          return OUTLINED_FUNCTION_154();
        }
      }
    }

    return OUTLINED_FUNCTION_154();
  }

  __break(1u);
  return result;
}

void *sub_2379DFF68(void *result, uint64_t a2)
{
  v2 = (a2 - result);
  if (!__OFSUB__(a2, result))
  {
    if (v2)
    {
      v4 = result;
      v5 = sub_237BC246C();
      if (sub_237A36110(v6, (v5 + 4), v2, v4, a2) == v2)
      {
        return v5;
      }

      __break(1u);
    }

    return MEMORY[0x277D84F90];
  }

  __break(1u);
  return result;
}

void *sub_2379DFFEC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    goto LABEL_4;
  }

  v2 = sub_237BC24D0(*(a1 + 16), 0);
  v3 = sub_237BA2378(&v5);
  sub_2379E925C(v5);
  if (v3 != v1)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v2;
}

void *sub_2379E007C(const void *a1, uint64_t a2)
{
  if (!a2)
  {
    return MEMORY[0x277D84F90];
  }

  if (a2 <= 0)
  {
    v4 = 8 * a2;
    v5 = MEMORY[0x277D84F90];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA50, &qword_237C0B7E8);
    v4 = 8 * a2;
    v5 = swift_allocObject();
    v6 = _swift_stdlib_malloc_size(v5);
    v5[2] = a2;
    v5[3] = 2 * ((v6 - 32) / 8);
  }

  memcpy(v5 + 4, a1, v4);
  return v5;
}

void *sub_2379E0124(const void *a1, uint64_t a2)
{
  if (!a2)
  {
    return MEMORY[0x277D84F90];
  }

  if (a2 <= 0)
  {
    v4 = 4 * a2;
    v5 = MEMORY[0x277D84F90];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABE8, &qword_237C0B950);
    v4 = 4 * a2;
    v5 = swift_allocObject();
    v6 = _swift_stdlib_malloc_size(v5);
    v5[2] = a2;
    v5[3] = 2 * ((v6 - 32) / 4);
  }

  memcpy(v5 + 4, a1, v4);
  return v5;
}

uint64_t sub_2379E01CC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_2379E01EC);
}

uint64_t sub_2379E01EC()
{
  OUTLINED_FUNCTION_9();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_2379E027C;

  return sub_237BAF670();
}

uint64_t sub_2379E027C()
{
  OUTLINED_FUNCTION_49();
  v3 = v2;
  OUTLINED_FUNCTION_18();
  v5 = v4;
  OUTLINED_FUNCTION_95();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_3();
  *v8 = v7;

  if (v0)
  {
    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    *(v5 + 40) = v3;
    OUTLINED_FUNCTION_11();

    return MEMORY[0x2822009F8](v11);
  }
}

uint64_t sub_2379E03AC()
{
  **(v0 + 16) = *(v0 + 40);
  OUTLINED_FUNCTION_8();
  return v1();
}

void static MLHandPoseClassifier.train(trainingData:parameters:sessionParameters:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  static MLHandPoseClassifier.makeTrainingSession(trainingData:parameters:sessionParameters:)(a1, a2, a3);
  if (!v3)
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA08, &qword_237C0B700);
    OUTLINED_FUNCTION_91(v4);
    sub_237BEBD4C();
  }
}

void static MLHandPoseClassifier.makeTrainingSession(trainingData:parameters:sessionParameters:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for MLTrainingSessionParameters(0);
  v8 = OUTLINED_FUNCTION_20(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_98();
  MEMORY[0x28223BE20](v9);
  v11 = &v27[-1] - v10;
  v12 = type metadata accessor for MLHandPoseClassifier.ModelParameters(0);
  v13 = OUTLINED_FUNCTION_20(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_2_0();
  v16 = v15 - v14;
  v17 = type metadata accessor for MLHandPoseClassifier.DataSource(0);
  v18 = OUTLINED_FUNCTION_20(v17);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_2_0();
  v21 = v20 - v19;
  v22 = OUTLINED_FUNCTION_40_0();
  sub_2379E90B4(v22, v21);
  OUTLINED_FUNCTION_7_1();
  sub_2379E90B4(a2, v16);
  OUTLINED_FUNCTION_5_1();
  sub_2379E90B4(a3, v11);
  v23 = type metadata accessor for HandPoseClassifierTrainingSessionDelegate(0);
  OUTLINED_FUNCTION_91(v23);
  sub_237A865A4();
  if (!v4)
  {
    v27[3] = v23;
    v27[4] = &off_284AC2E28;
    v27[0] = v24;
    OUTLINED_FUNCTION_5_1();
    sub_2379E90B4(a3, v3);
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA10, &qword_237C0B708);
    OUTLINED_FUNCTION_91(v25);
    sub_2379E3ED4(v27, v3, 23, &qword_27DE9AC60, &qword_237C0B9A8, &unk_27DE9AC68, &unk_27DE9AC70);
  }
}

void static MLHandPoseClassifier.resume(_:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA08, &qword_237C0B700);
  OUTLINED_FUNCTION_91(v1);

  sub_237BEBD4C();
}

void static MLHandPoseClassifier.restoreTrainingSession(sessionParameters:)(uint64_t a1)
{
  v4 = type metadata accessor for MLTrainingSessionParameters(0);
  v5 = OUTLINED_FUNCTION_20(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_98();
  MEMORY[0x28223BE20](v6);
  v8 = &v15[-1] - v7;
  OUTLINED_FUNCTION_5_1();
  sub_2379E90B4(a1, v8);
  v9 = type metadata accessor for HandPoseClassifierTrainingSessionDelegate(0);
  OUTLINED_FUNCTION_91(v9);
  OUTLINED_FUNCTION_125();
  sub_237A86140();
  if (!v2)
  {
    v15[3] = v9;
    v15[4] = &off_284AC2E28;
    v15[0] = v10;
    OUTLINED_FUNCTION_5_1();
    v11 = OUTLINED_FUNCTION_128();
    sub_2379E90B4(v11, v12);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA10, &qword_237C0B708);
    OUTLINED_FUNCTION_91(v13);
    sub_2379E3ED4(v15, v1, 23, &qword_27DE9AC60, &qword_237C0B9A8, &unk_27DE9AC68, &unk_27DE9AC70);
  }
}

void sub_2379E07A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_153();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC78, &unk_237C0B9B0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v16);
  v18 = (v48 - v17);
  v50 = _s20PersistentParametersVMa_0(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_2_0();
  v49 = v21 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC80, &unk_237C0F350);
  OUTLINED_FUNCTION_20(v22);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_30_0();
  v24 = type metadata accessor for MLHandPoseClassifier.ModelParameters(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_18_0();
  v28 = v26 - v27;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_58();
  if (v13)
  {
    *v18 = v15;
    OUTLINED_FUNCTION_147();
    swift_storeEnumTagMultiPayload();
    v31 = v15;
    v9(v18);
    v32 = &qword_27DE9AC78;
    v33 = v18;
LABEL_3:
    sub_2379E9130(v33, v32);
    goto LABEL_13;
  }

  v34 = v30;
  v48[1] = v7;
  sub_2379E8624(v11 + qword_27DEACD88, &v52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC88, &unk_237C0B9C0);
  v35 = OUTLINED_FUNCTION_46();
  type metadata accessor for HandPoseClassifierTrainingSessionDelegate(v35);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  v36 = v51;
  v37 = *(v51 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_model);
  if (!v37)
  {

    goto LABEL_13;
  }

  v38 = OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_trainingParameters;
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  sub_2379E9068(v36 + v38, v5, &qword_27DE9AC80, &unk_237C0F350);
  v39 = v50;
  if (__swift_getEnumTagSinglePayload(v5, 1, v50))
  {

    v32 = &qword_27DE9AC80;
    v33 = v5;
    goto LABEL_3;
  }

  v40 = v37;
  v41 = v49;
  sub_2379E90B4(v5, v49);
  v48[0] = v40;

  sub_2379E9130(v5, &qword_27DE9AC80);
  OUTLINED_FUNCTION_22_0();
  sub_2379E90B4(v41 + v42, v28);
  v43 = *(v41 + v39[6]);
  v44 = *(v41 + v39[7]);
  v45 = *(v41 + v39[8]);
  OUTLINED_FUNCTION_10_0();
  sub_2379E9180(v41);
  *(v28 + v24[5]) = v43;
  *(v28 + v24[6]) = v44;
  *(v28 + v24[7]) = v45;
  OUTLINED_FUNCTION_47();
  v46 = sub_2379E72FC(v28, v34);
  v47 = *(v36 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_classLabels);
  if (v47)
  {
    MEMORY[0x28223BE20](v46);
    v48[-4] = v48[0];
    v48[-3] = v34;
    v48[-2] = v36;
    v48[-1] = v47;

    sub_237BBDCF4(sub_2379E910C, v18);

    v9(v18);

    sub_2379E9130(v18, &qword_27DE9AC78);
  }

  else
  {
  }

  OUTLINED_FUNCTION_1_0();
  sub_2379E9180(v34);
LABEL_13:
  OUTLINED_FUNCTION_150();
}

uint64_t sub_2379E0BBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = v5;
  v12 = type metadata accessor for MLHandPoseClassifier.ModelParameters(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2379E90B4(a2, v14);
  v15 = *(a3 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_metricsAttributesDictionary);

  result = sub_2379DE1B8(a1, v14, v15, a4);
  if (v7)
  {
    *a5 = v7;
  }

  return result;
}

void sub_2379E0CC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_129(a1, a2);
  MLDataTable.subscript.getter();
  if (v32)
  {
    sub_2379DBC9C(v31, 1);
LABEL_14:
    v29 = *(a1 + 8);
    v31 = *a1;
    v28 = v31;
    LOBYTE(v32) = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC90, &qword_237C0B9E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_237C0B660;
    *(inited + 32) = a2;
    *(inited + 40) = a3;
    LOBYTE(v33) = 5;

    sub_2379DBCF4(v28, v29);
    sub_2379F21A4(&v31, inited, &v33);
    sub_2379DBC9C(v31, v32);
    swift_setDeallocating();
    sub_237B9082C();
    return;
  }

  v6 = OUTLINED_FUNCTION_85();
  sub_2379DBCF4(v6, v7);
  sub_237A60248(&v33);
  v8 = OUTLINED_FUNCTION_85();
  sub_2379DBC9C(v8, v9);
  v10 = OUTLINED_FUNCTION_85();
  sub_2379DBC9C(v10, v11);
  if (v33 != 3)
  {
    goto LABEL_14;
  }

  MLDataTable.subscript.getter();
  v12 = v33;
  v13 = v34;
  sub_237AC3F10(1, sub_2379E9264, 0, v33, v34, &v31);
  sub_2379DBC9C(v12, v13);
  v35 = v31;
  v14 = v32;
  MLDataTable.subscript.getter();
  v15 = v31;
  v16 = v32;
  if (v32)
  {
    v17 = -1;
  }

  else
  {

    v17 = sub_237A2F128();
    sub_2379DBC9C(v15, 0);
  }

  sub_2379DBC9C(v15, v16);
  sub_237AB08AC(v35, v14, &v33);
  v18 = v33;
  v19 = v34;
  if (v34)
  {
    v20 = -1;
  }

  else
  {
    sub_2379DBCF4(v33, 0);
    v20 = sub_237A2F128();
    sub_2379DBC9C(v18, 0);
  }

  sub_2379DBC9C(v18, v19);
  if (!__OFSUB__(v17, v20))
  {
    if (v17 != v20)
    {
      v31 = 0;
      v32 = 0xE000000000000000;
      sub_237C08EDC();
      MEMORY[0x2383DC360](0xD00000000000003DLL, 0x8000000237C17110);
      v33 = v17 - v20;
      v21 = OUTLINED_FUNCTION_115();
      MEMORY[0x2383DC360](v21);

      MEMORY[0x2383DC360](0xD00000000000006BLL, 0x8000000237C17150);
      v33 = 3;
      v22 = OUTLINED_FUNCTION_115();
      MEMORY[0x2383DC360](v22);

      MEMORY[0x2383DC360](8236, 0xE200000000000000);
      v33 = 21;
      v23 = OUTLINED_FUNCTION_115();
      MEMORY[0x2383DC360](v23);

      MEMORY[0x2383DC360](0xD00000000000003CLL, 0x8000000237C171C0);
      v24 = v31;
      v25 = v32;
      sub_2379E8AF0();
      OUTLINED_FUNCTION_50();
      v26 = swift_allocError();
      *v27 = v24;
      v27[1] = v25;
      OUTLINED_FUNCTION_52(v26, v27);
      sub_2379DBC9C(v35, v14);
      return;
    }

    sub_237AB09D4(v35, v14, a2, a3);
    goto LABEL_14;
  }

  __break(1u);
}

void sub_2379E1068(uint64_t result@<X0>, void *a2@<X8>)
{
  if (*(result + 16) == 3)
  {
    v4[1] = v2;
    v4[2] = v3;
    v4[0] = *result;
    sub_2379E10AC(v4, a2);
  }

  else
  {
    *a2 = 0;
  }
}

void sub_2379E10AC(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  *&v131 = MEMORY[0x277D84F90];
  sub_237C08FCC();
  [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  sub_237C08F8C();
  OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_90();
  sub_237C08FFC();
  sub_237C08F9C();
  [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  sub_237C08F8C();
  OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_90();
  sub_237C08FFC();
  sub_237C08F9C();
  [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  sub_237C08F8C();
  OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_90();
  sub_237C08FFC();
  sub_237C08F9C();
  v4 = objc_allocWithZone(MEMORY[0x277CBFF48]);
  v5 = sub_237AC8938(v131, 65600);
  if (!v5)
  {
    goto LABEL_56;
  }

  v6 = v5;
  v7 = sub_237C08D4C();
  sub_237A2E9F4();
  if (sub_237A01878() != 1)
  {

LABEL_56:
    *a2 = 0;
    return;
  }

  v135 = 0;
  v136 = 0;
  v134 = v3;

  v127 = v7;
  while (1)
  {
    sub_237BABD8C(&v131);
    v8 = *(&v131 + 1);
    *v128 = v131;
    v9 = v132;
    if (v133 != 3)
    {
      if (v133 == 255)
      {

        MLDataValue.MultiArrayType.init(_:)(v6);
        *a2 = v131;
        return;
      }

      OUTLINED_FUNCTION_143();
      sub_2379E9268(v108, v109, v110, v111);

      goto LABEL_63;
    }

    v10 = OUTLINED_FUNCTION_55();
    sub_2379E9288(v10, v11, 3);
    sub_237A2E9F4();
    if (sub_237A01878() != 3)
    {

      OUTLINED_FUNCTION_143();
      sub_2379E9268(v112, v113, v114, 3);
      OUTLINED_FUNCTION_143();
      sub_2379E9268(v115, v116, v117, 3);
      goto LABEL_56;
    }

    v121 = v9;
    sub_2379E9288(v8, v9, 3);
    v122 = v8;
    v123 = a2;
    v125 = v6;
LABEL_7:
    sub_237BABD8C(&v131);
    v12 = *(&v131 + 1);
    v129 = v131;
    v13 = v132;
    v14 = v133;
    if (v133 == 3)
    {
      break;
    }

    if (v133 != 255)
    {
      sub_2379E9268(v128[0], v8, v121, 3);
      sub_2379E9268(v128[0], v8, v121, 3);
      v96 = v129;
      v97 = v12;
      v98 = v13;
      v99 = v14;
LABEL_62:
      sub_2379E9268(v96, v97, v98, v99);

LABEL_63:

      goto LABEL_56;
    }

    OUTLINED_FUNCTION_84();
    OUTLINED_FUNCTION_72();
    sub_2379E9268(v76, v77, v78, v79);
    OUTLINED_FUNCTION_84();
    OUTLINED_FUNCTION_72();
    sub_2379E9268(v80, v81, v82, v83);
  }

  sub_2379E9288(*(&v131 + 1), v132, 3);
  sub_237A2E9F4();
  if (sub_237A01878() != 21)
  {
    v100 = OUTLINED_FUNCTION_147();
    sub_2379E9268(v100, v101, v13, 3);
    OUTLINED_FUNCTION_84();
    OUTLINED_FUNCTION_72();
    sub_2379E9268(v102, v103, v104, v105);
    v106 = OUTLINED_FUNCTION_147();
    sub_2379E9268(v106, v107, v13, 3);
    OUTLINED_FUNCTION_84();
    OUTLINED_FUNCTION_72();
    goto LABEL_62;
  }

  v124 = v13;
  sub_2379E9288(v12, v13, 3);
  v15 = 0;
  while (1)
  {
    while (1)
    {
      if (v15 == sub_237A2E9F4())
      {
        OUTLINED_FUNCTION_72();
        sub_2379E9268(v68, v69, v70, v71);
        OUTLINED_FUNCTION_72();
        sub_2379E9268(v72, v73, v74, v75);

        v8 = v122;
        a2 = v123;
        goto LABEL_7;
      }

      v16 = sub_237A2E9C8(v15);
      switch(sub_237A2E910())
      {
        case 1u:

          sub_237B0E848();
          v46 = v45;

          v19 = 0;
          v18 = v46;
          v20 = 1;
          goto LABEL_30;
        case 2u:

          v18 = sub_237A2DE60();
          v19 = v43;
          v20 = 2;

          goto LABEL_30;
        case 3u:
          v44 = sub_237B0DD68(*(v16 + 16));
          if (!v44)
          {
            goto LABEL_78;
          }

          type metadata accessor for CMLSequence();
          v18 = swift_allocObject();
          v19 = 0;
          *(v18 + 16) = v44;
          *(v18 + 24) = 1;
          v20 = 3;
          goto LABEL_30;
        case 4u:
          v21 = sub_237B0DDC8(*(v16 + 16));
          if (!v21)
          {
            goto LABEL_77;
          }

          type metadata accessor for CMLDictionary();
          *(swift_initStackObject() + 16) = v21;
          v18 = MEMORY[0x277D84F98];
          v130 = MEMORY[0x277D84F98];
          swift_retain_n();
          v22 = 0;
          break;
        case 5u:

          v18 = 0;
          v19 = 0;
          v20 = 6;
          goto LABEL_30;
        case 6u:

          sub_237AC8278(v47, &v131);
          v18 = v131;
          if (!v131)
          {
            goto LABEL_79;
          }

          v19 = 0;
          v20 = 5;
          goto LABEL_30;
        default:
          v17 = *(v16 + 16);

          v18 = sub_237B0ECCC(v17);

          v19 = 0;
          v20 = 0;
          goto LABEL_30;
      }

      while (v22 != sub_237A2EAA4())
      {
        sub_237A2EB64(v22);
        v22 = sub_237B6A974(v22);
        v23 = sub_237A2DE60();
        v25 = v24;

        sub_237AFC548(v26, &v131);

        v27 = v131;
        v126 = v132;
        *&v131 = v23;
        *(&v131 + 1) = v25;
        LOBYTE(v132) = 2;
        v28 = OUTLINED_FUNCTION_84();
        v30 = sub_237ACB180(v28, v29, 2);
        v32 = *(v18 + 16);
        v33 = (v31 & 1) == 0;
        v34 = __OFADD__(v32, v33);
        v35 = v32 + v33;
        if (v34)
        {
          goto LABEL_75;
        }

        v36 = v31;
        if (*(v18 + 24) < v35)
        {
          sub_237ABF994(v35, 1);
          v18 = v130;
          v30 = sub_237ACB180(v131, *(&v131 + 1), v132);
          if ((v36 & 1) != (v37 & 1))
          {
            sub_237C0932C();
            __break(1u);
LABEL_82:
            OUTLINED_FUNCTION_50();
            v118 = swift_allocError();
            swift_willThrow();

            v119 = v118;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAA8, &qword_237C0ECD0);
            if (swift_dynamicCast())
            {
              sub_237C08EDC();
              MEMORY[0x2383DC360](0xD00000000000001BLL, 0x8000000237C17280);
              sub_237C0907C();
              v120 = OUTLINED_FUNCTION_110();
              MEMORY[0x2383DC360](v120);
              sub_237C090DC();
              __break(1u);
            }

            sub_2379E8CE8(v27, *(&v27 + 1), v126);

            sub_2379E8CE8(v131, *(&v131 + 1), v132);

            goto LABEL_80;
          }
        }

        if (v36)
        {
          goto LABEL_82;
        }

        *(v18 + 8 * (v30 >> 6) + 64) |= 1 << v30;
        v38 = *(v18 + 48) + 24 * v30;
        v39 = v132;
        *v38 = v131;
        *(v38 + 16) = v39;
        v40 = *(v18 + 56) + 24 * v30;
        *v40 = v27;
        *(v40 + 16) = v126;
        v41 = *(v18 + 16);
        v34 = __OFADD__(v41, 1);
        v42 = v41 + 1;
        if (v34)
        {
          goto LABEL_76;
        }

        *(v18 + 16) = v42;
      }

      v20 = 4;

      v19 = 0;
      v6 = v125;
LABEL_30:
      if (v15 >= sub_237A2E9F4())
      {
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
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
        __break(1u);

        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);

        __break(1u);

        __break(1u);

        __break(1u);

        __break(1u);
        while (1)
        {
LABEL_80:
          swift_unexpectedError();
          __break(1u);
        }
      }

      v48 = [v6 strides];
      sub_2379E8EE0(0, &qword_27DE9AC40, 0x277CCABB0);
      v49 = sub_237C0893C();

      if ((v49 & 0xC000000000000001) != 0)
      {
        v50 = MEMORY[0x2383DCAF0](0, v49);
      }

      else
      {
        if (!*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_68;
        }

        v50 = *(v49 + 32);
      }

      v51 = v50;

      v52 = [v51 integerValue];

      v53 = *v128 * v52;
      if ((*v128 * v52) >> 64 != (*v128 * v52) >> 63)
      {
        goto LABEL_67;
      }

      v54 = [v6 strides];
      v55 = sub_237C0893C();

      if ((v55 & 0xC000000000000001) != 0)
      {
        v56 = MEMORY[0x2383DCAF0](1, v55);
      }

      else
      {
        if (*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
        {
          goto LABEL_70;
        }

        v56 = *(v55 + 40);
      }

      v57 = v56;

      v58 = [v57 integerValue];

      v59 = v129 * v58;
      if ((v129 * v58) >> 64 != (v129 * v58) >> 63)
      {
        goto LABEL_69;
      }

      v60 = v53 + v59;
      if (__OFADD__(v53, v59))
      {
        goto LABEL_71;
      }

      v61 = [v6 strides];
      v62 = sub_237C0893C();

      if ((v62 & 0xC000000000000001) != 0)
      {
        v63 = MEMORY[0x2383DCAF0](2, v62);
      }

      else
      {
        if (*((v62 & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
        {
          goto LABEL_73;
        }

        v63 = *(v62 + 48);
      }

      v64 = v63;

      v65 = [v64 integerValue];

      v66 = v15 * v65;
      if ((v15 * v65) >> 64 != (v15 * v65) >> 63)
      {
        goto LABEL_72;
      }

      v34 = __OFADD__(v60, v66);
      v67 = v60 + v66;
      if (v34)
      {
        goto LABEL_74;
      }

      ++v15;
      if (v20)
      {
        break;
      }

      *(v127 + 8 * v67) = v18;
    }

    if (v20 != 1)
    {
      break;
    }

    *(v127 + 8 * v67) = v18;
  }

  sub_2379E8CE8(v18, v19, v20);
  v84 = OUTLINED_FUNCTION_107();
  sub_2379E9268(v84, v85, v124, 3);
  OUTLINED_FUNCTION_72();
  sub_2379E9268(v86, v87, v88, v89);
  v90 = OUTLINED_FUNCTION_107();
  sub_2379E9268(v90, v91, v124, 3);
  OUTLINED_FUNCTION_72();
  sub_2379E9268(v92, v93, v94, v95);

  *v123 = 0;
}

void sub_2379E1D18(void *(*a1)(void *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v5 = a3;
    v42 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_81();
    sub_237AC8A74();
    v6 = v42;
    v7 = sub_237AE854C(v5);
    v9 = v8;
    v11 = v10;
    v12 = 0;
    v39 = v5 + 56;
    v35 = v5 + 64;
    v36 = v4;
    if ((v7 & 0x8000000000000000) == 0)
    {
      while (v7 < 1 << *(v5 + 32))
      {
        v13 = v7 >> 6;
        if ((*(v39 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
        {
          goto LABEL_26;
        }

        if (*(v5 + 36) != v9)
        {
          goto LABEL_27;
        }

        v38 = v12;
        v14 = v5;
        v40 = *(*(v5 + 48) + 8 * v7);
        a1(v41, &v40);
        if (v3)
        {
          goto LABEL_31;
        }

        v15 = v41[0];
        v16 = v41[1];
        v42 = v6;
        v17 = *(v6 + 16);
        v18 = v6;
        v19 = v9;
        if (v17 >= *(v6 + 24) >> 1)
        {
          OUTLINED_FUNCTION_67();
          v34 = v31;
          v33 = v32;
          sub_237AC8A74();
          v16 = v33;
          v15 = v34;
          v19 = v9;
          v18 = v42;
        }

        *(v18 + 16) = v17 + 1;
        v20 = v18 + 16 * v17;
        *(v20 + 32) = v15;
        *(v20 + 40) = v16;
        if (v11)
        {
          goto LABEL_32;
        }

        v21 = 1 << *(v14 + 32);
        if (v7 >= v21)
        {
          goto LABEL_28;
        }

        v22 = *(v39 + 8 * v13);
        if ((v22 & (1 << v7)) == 0)
        {
          goto LABEL_29;
        }

        v6 = v18;
        v5 = v14;
        if (*(v14 + 36) != v19)
        {
          goto LABEL_30;
        }

        v23 = v22 & (-2 << (v7 & 0x3F));
        if (v23)
        {
          v21 = __clz(__rbit64(v23)) | v7 & 0x7FFFFFFFFFFFFFC0;
          v24 = v36;
        }

        else
        {
          v25 = v18;
          v26 = v13 << 6;
          v27 = v13 + 1;
          v24 = v36;
          v28 = (v35 + 8 * v13);
          while (v27 < (v21 + 63) >> 6)
          {
            v30 = *v28++;
            v29 = v30;
            v26 += 64;
            ++v27;
            if (v30)
            {
              sub_2379E8FD0(v7, v19, 0);
              v21 = __clz(__rbit64(v29)) + v26;
              goto LABEL_20;
            }
          }

          sub_2379E8FD0(v7, v19, 0);
LABEL_20:
          v6 = v25;
        }

        v12 = v38 + 1;
        if (v38 + 1 == v24)
        {
          return;
        }

        v11 = 0;
        v9 = *(v5 + 36);
        v7 = v21;
        if (v21 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:

    __break(1u);
LABEL_32:
    __break(1u);
  }
}

uint64_t sub_2379E1FAC(void (*a1)(void *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v18 = MEMORY[0x277D84F90];
  sub_237AC8A74();
  v6 = v18;
  for (i = (a3 + 40); ; i += 2)
  {
    v9 = *i;
    v16[0] = *(i - 1);
    v16[1] = v9;

    a1(v17, v16);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v11 = v17[0];
    v10 = v17[1];
    v18 = v6;
    v12 = *(v6 + 16);
    if (v12 >= *(v6 + 24) >> 1)
    {
      sub_237AC8A74();
      v6 = v18;
    }

    *(v6 + 16) = v12 + 1;
    v13 = v6 + 16 * v12;
    *(v13 + 32) = v11;
    *(v13 + 40) = v10;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2379E20D4(void (*a1)(__n128 *__return_ptr, void *))
{
  v3 = v1;
  v4 = OUTLINED_FUNCTION_84();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  v7 = sub_2379E9028(&qword_27DE9AA90, &qword_27DE9AA88);
  v8 = sub_237C08B3C();
  result = MEMORY[0x277D84F90];
  if (v8)
  {
    v30 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_81();
    sub_237AC8A54();
    v25 = v30;
    sub_237C08B2C();
    if ((v8 & 0x8000000000000000) == 0)
    {
      v24 = v2;
      for (i = 0; ; ++i)
      {
        v11 = i + 1;
        if (__OFADD__(i, 1))
        {
          break;
        }

        v12 = v7;
        v13 = v3;
        v14 = v6;
        v15 = v12;
        v16 = sub_237C08B9C();
        v18 = v17[1];
        v27[0] = *v17;
        v27[1] = v18;

        v16(v28, 0);
        a1(&v29, v27);
        if (v24)
        {
          goto LABEL_13;
        }

        v19 = v29;
        v20 = v25;
        v30 = v25;
        v21 = *(v25 + 16);
        if (v21 >= *(v25 + 24) >> 1)
        {
          OUTLINED_FUNCTION_99();
          v26 = v22;
          sub_237AC8A54();
          v19 = v26;
          v20 = v30;
        }

        *(v20 + 16) = v21 + 1;
        v25 = v20;
        *(v20 + 16 * v21 + 32) = v19;
        v3 = v13;
        v6 = v14;
        v7 = v15;
        sub_237C08B6C();
        if (v11 == v8)
        {
          return v25;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_13:

    __break(1u);
  }

  return result;
}

uint64_t sub_2379E22EC(void (*a1)(uint64_t *__return_ptr, void *, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    v26 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_81();
    sub_237AC8D14();
    v6 = v26;
    for (i = (a3 + 40); ; i += 2)
    {
      v9 = *i;
      v21[0] = *(i - 1);
      v21[1] = v9;

      a1(&v22, v21, &v20);
      if (v4)
      {
        break;
      }

      v4 = 0;

      v11 = v22;
      v10 = v23;
      v12 = v24;
      v13 = v25;
      v26 = v6;
      v14 = *(v6 + 16);
      if (v14 >= *(v6 + 24) >> 1)
      {
        v18 = v23;
        v16 = v25;
        sub_237AC8D14();
        v13 = v16;
        v10 = v18;
        v6 = v26;
      }

      *(v6 + 16) = v14 + 1;
      v15 = v6 + 32 * v14;
      *(v15 + 32) = v11;
      *(v15 + 40) = v10;
      *(v15 + 48) = v12;
      *(v15 + 56) = v13;
      if (!--v5)
      {
        return v6;
      }
    }
  }

  return v6;
}

void sub_2379E244C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_74();
  v4 = v3;
  v6 = v5;
  v25 = v7;
  v24 = sub_237C0683C();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2_0();
  v26 = v12 - v11;
  if (v6 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_237C090EC())
  {
    if (!i)
    {
LABEL_15:
      OUTLINED_FUNCTION_77();
      OUTLINED_FUNCTION_73();
      return;
    }

    v28 = MEMORY[0x277D84F90];
    v14 = OUTLINED_FUNCTION_81();
    sub_237AC8D54(v14, v15, 0);
    if (i < 0)
    {
      break;
    }

    v16 = 0;
    v22 = v6;
    v23 = v6 & 0xC000000000000001;
    v21 = v6 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v23)
      {
        v18 = MEMORY[0x2383DCAF0](v16, v6);
      }

      else
      {
        if (v16 >= *(v21 + 16))
        {
          goto LABEL_17;
        }

        v18 = *(v6 + 8 * v16 + 32);
      }

      v6 = v18;
      v27 = v18;
      v25(&v27);
      if (v4)
      {
        goto LABEL_20;
      }

      v4 = 0;

      v20 = *(v28 + 16);
      v19 = *(v28 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_237AC8D54(v19 > 1, v20 + 1, 1);
      }

      *(v28 + 16) = v20 + 1;
      (*(v9 + 32))(v28 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v20, v26, v24);
      ++v16;
      v6 = v22;
      if (v17 == i)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  __break(1u);
LABEL_20:

  __break(1u);
}

void sub_2379E2664(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_74();
  v4 = v3;
  v6 = v5;
  v22 = v7;
  v23 = v8;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AB70, &unk_237C0E600);
  OUTLINED_FUNCTION_0();
  v10 = v9;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v11);
  v13 = &v18 - v12;
  v14 = *(v6 + 16);
  if (v14)
  {
    v24 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_81();
    sub_237AC8DD4();
    v20 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v15 = v6 + v20;
    v19 = (v10 + 32);
    v16 = *(v10 + 72);
    while (1)
    {
      v22(v15);
      if (v4)
      {
        break;
      }

      v4 = 0;
      v17 = *(v24 + 16);
      if (v17 >= *(v24 + 24) >> 1)
      {
        sub_237AC8DD4();
      }

      *(v24 + 16) = v17 + 1;
      (*v19)(v24 + v20 + v17 * v16, v13, v21);
      v15 += v16;
      if (!--v14)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
    OUTLINED_FUNCTION_77();
    OUTLINED_FUNCTION_73();
  }
}

void sub_2379E2800(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_74();
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AB78, &qword_237C0B8E0);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_30_0();
  v7 = *(v5 + 16);
  if (v7)
  {
    v8 = OUTLINED_FUNCTION_81();
    sub_237AC8DB4(v8, v7, 0);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AB70, &unk_237C0E600);
    OUTLINED_FUNCTION_1(v9);
    OUTLINED_FUNCTION_78();
    v19 = *(v10 + 72);
    while (1)
    {
      v11 = OUTLINED_FUNCTION_123();
      v12(v11);
      if (v3)
      {
        break;
      }

      OUTLINED_FUNCTION_111();
      if (v13)
      {
        OUTLINED_FUNCTION_99();
        sub_237AC8DB4(v16, v17, v18);
      }

      v14 = OUTLINED_FUNCTION_51();
      v15(v14);
      v5 += v19;
      if (!--v7)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
    OUTLINED_FUNCTION_77();
    OUTLINED_FUNCTION_73();
  }
}

void sub_2379E2980(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_74();
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA40, &qword_237C0C1F0);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_30_0();
  v7 = *(v5 + 16);
  if (v7)
  {
    OUTLINED_FUNCTION_81();
    sub_237AC8DF4();
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA48, &qword_237C0B7E0);
    OUTLINED_FUNCTION_1(v8);
    OUTLINED_FUNCTION_78();
    v15 = *(v9 + 72);
    while (1)
    {
      v10 = OUTLINED_FUNCTION_123();
      v11(v10);
      if (v3)
      {
        break;
      }

      OUTLINED_FUNCTION_111();
      if (v12)
      {
        OUTLINED_FUNCTION_99();
        sub_237AC8DF4();
      }

      v13 = OUTLINED_FUNCTION_51();
      v14(v13);
      v5 += v15;
      if (!--v7)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
    OUTLINED_FUNCTION_77();
    OUTLINED_FUNCTION_73();
  }
}

uint64_t sub_2379E2B2C(void (*a1)(uint64_t *__return_ptr, uint64_t, uint64_t *), uint64_t a2, uint64_t a3, void (*a4)(BOOL, unint64_t, uint64_t))
{
  v5 = v4;
  v6 = *(a3 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v22 = MEMORY[0x277D84F90];
    a4(0, v6, 0);
    v7 = v22;
    v9 = sub_237C05ADC();
    OUTLINED_FUNCTION_1(v9);
    v11 = a3 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v13 = *(v12 + 72);
    while (1)
    {
      a1(&v21, v11, &v20);
      if (v5)
      {
        break;
      }

      v5 = 0;
      v14 = v21;
      v22 = v7;
      v16 = *(v7 + 16);
      v15 = *(v7 + 24);
      if (v16 >= v15 >> 1)
      {
        a4(v15 > 1, v16 + 1, 1);
        v7 = v22;
      }

      *(v7 + 16) = v16 + 1;
      *(v7 + 8 * v16 + 32) = v14;
      v11 += v13;
      if (!--v6)
      {
        return v7;
      }
    }
  }

  return v7;
}

uint64_t sub_2379E2CD4(uint64_t a1, void *a2)
{
  sub_237AB0A6C();
  if (v3)
  {
    return v2;
  }

  v6 = v5;
  v7 = *(v5 + 16);
  if (v7)
  {
    v14 = MEMORY[0x277D84F90];
    sub_237C08FCC();
    v8 = 32;
    do
    {
      v9 = *(v6 + v8);
      sub_237C08F8C();
      sub_237C08FEC();
      sub_237C08FFC();
      sub_237C08F9C();
      v8 += 8;
      --v7;
    }

    while (v7);

    v10 = v14;
  }

  else
  {

    v10 = MEMORY[0x277D84F90];
  }

  v11 = sub_237AB0E94(v10, 1, 21);

  if (*(v11 + 16))
  {
    v13 = *(v11 + 32);

    v2 = sub_2379E2EE8(v13, a2);

    return v2;
  }

  __break(1u);
  return result;
}

uint64_t sub_2379E2E78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v9 = type metadata accessor for MLHandPoseClassifier(0);
  result = sub_2379E2CD4(a1, *(a2 + *(v9 + 20)));
  if (v4)
  {
    *a3 = v4;
  }

  else
  {
    *a4 = result;
  }

  return result;
}

unint64_t sub_2379E2EE8(void *a1, void *a2)
{
  v3 = v2;
  v94 = *MEMORY[0x277D85DE8];
  v6 = [a1 shape];
  sub_2379E8EE0(0, &qword_27DE9AC40, 0x277CCABB0);
  v7 = sub_237C0893C();

  v8 = sub_237A254D8(v7);

  if (v8 != 3)
  {
    goto LABEL_37;
  }

  v76 = a1;
  v9 = [a1 shape];
  v10 = sub_237C0893C();

  v11 = sub_237A254D8(v10);
  if (v11)
  {
    v12 = v11;
    *&v92[0] = MEMORY[0x277D84F90];
    sub_237AC8A34(0, v11 & ~(v11 >> 63), 0);
    if (v12 < 0)
    {
      goto LABEL_48;
    }

    v74 = a2;
    v13 = 0;
    v8 = *&v92[0];
    do
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x2383DCAF0](v13, v10);
      }

      else
      {
        v14 = *(v10 + 8 * v13 + 32);
      }

      v15 = v14;
      v16 = [v14 integerValue];

      *&v92[0] = v8;
      v18 = *(v8 + 16);
      v17 = *(v8 + 24);
      if (v18 >= v17 >> 1)
      {
        v19 = OUTLINED_FUNCTION_106(v17);
        sub_237AC8A34(v19, v18 + 1, 1);
        v8 = *&v92[0];
      }

      ++v13;
      *(v8 + 16) = v18 + 1;
      *(v8 + 8 * v18 + 32) = v16;
    }

    while (v12 != v13);

    a2 = v74;
    v3 = v2;
  }

  else
  {

    v8 = MEMORY[0x277D84F90];
  }

  v20 = sub_237AC6FE0(v8, &unk_284ABFED8);

  if ((v20 & 1) == 0)
  {
LABEL_37:
    sub_2379E8AF0();
    OUTLINED_FUNCTION_50();
    v62 = swift_allocError();
    *v63 = 0xD000000000000025;
    v63[1] = 0x8000000237C17020;
    OUTLINED_FUNCTION_52(v62, v63);
    return v8;
  }

  v21 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC48, &qword_237C0C120);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_237C0B660;
  *(inited + 32) = 0x7365736F70;
  *(inited + 40) = 0xE500000000000000;
  v23 = [objc_opt_self() featureValueWithMultiArray_];
  *(inited + 72) = sub_2379E8EE0(0, &qword_27DE9AC50, 0x277CBFEF8);
  *(inited + 48) = v23;
  sub_237C085AC();
  v24 = objc_allocWithZone(MEMORY[0x277CBFED0]);
  v25 = OUTLINED_FUNCTION_125();
  v8 = v26;
  v27 = sub_237AD4714(v25);
  if (!v3)
  {
    v28 = v27;
    *&v92[0] = 0;
    v29 = [v21 predictionFromFeatures:v27 error:v92];
    v8 = *&v92[0];
    if (!v29)
    {
      v65 = *&v92[0];
      sub_237C0593C();

      swift_willThrow();
      return v8;
    }

    v30 = v29;
    v31 = *&v92[0];
    v32 = sub_237C086BC();
    v33 = [v30 featureValueForName_];

    if (!v33)
    {
      v8 = 0x8000000237C17070;
      sub_2379E8AF0();
      OUTLINED_FUNCTION_50();
      v66 = swift_allocError();
      *v67 = 0xD000000000000028;
      v67[1] = 0x8000000237C17070;
      OUTLINED_FUNCTION_52(v66, v67);

      swift_unknownObjectRelease();
      return v8;
    }

    v34 = [v33 dictionaryValue];

    v35 = sub_237C0857C();
    v36 = *(v35 + 16);
    if (!v36)
    {

      swift_unknownObjectRelease();

      return MEMORY[0x277D84F90];
    }

    v68 = v28;
    v80 = MEMORY[0x277D84F90];
    sub_237AC8C74();
    v8 = v80;
    v39 = sub_237B024B4(v35);
    v40 = 0;
    v77 = v35 + 64;
    v70 = v37;
    v71 = v36;
    v69 = v35 + 72;
    while ((v39 & 0x8000000000000000) == 0 && v39 < 1 << *(v35 + 32))
    {
      v41 = v39 >> 6;
      if ((*(v77 + 8 * (v39 >> 6)) & (1 << v39)) == 0)
      {
        goto LABEL_43;
      }

      if (*(v35 + 36) != v37)
      {
        goto LABEL_44;
      }

      v73 = v40;
      v75 = v37;
      v72 = v38;
      sub_2379E8F20(*(v35 + 48) + 40 * v39, v92);
      v42 = *(*(v35 + 56) + 8 * v39);
      v89[0] = v92[0];
      v89[1] = v92[1];
      v90 = v93;
      v91 = v42;
      sub_2379E9068(v89, v83, &qword_27DE9AC58, &qword_237C0B9A0);
      v43 = v85;
      v44 = v42;

      v86 = v83[0];
      v87 = v83[1];
      v88 = v84;
      swift_dynamicCast();
      sub_2379E9068(v89, v81, &qword_27DE9AC58, &qword_237C0B9A0);
      v45 = v82;
      [v82 doubleValue];
      v47 = v46;

      sub_2379E9130(v89, &qword_27DE9AC58);
      sub_2379E8F7C(v81);
      v48 = v35;
      v50 = *(v80 + 16);
      v49 = *(v80 + 24);
      if (v50 >= v49 >> 1)
      {
        OUTLINED_FUNCTION_106(v49);
        sub_237AC8C74();
      }

      *(v80 + 16) = v50 + 1;
      v51 = (v80 + 24 * v50);
      v51[4] = v78;
      v51[5] = v79;
      v51[6] = v47;
      v52 = 1 << *(v48 + 32);
      if (v39 >= v52)
      {
        goto LABEL_45;
      }

      v53 = *(v77 + 8 * v41);
      if ((v53 & (1 << v39)) == 0)
      {
        goto LABEL_46;
      }

      v35 = v48;
      if (*(v48 + 36) != v75)
      {
        goto LABEL_47;
      }

      v54 = v53 & (-2 << (v39 & 0x3F));
      if (v54)
      {
        v52 = __clz(__rbit64(v54)) | v39 & 0x7FFFFFFFFFFFFFC0;
        v55 = v71;
        v56 = v73;
      }

      else
      {
        v57 = v41 << 6;
        v58 = v41 + 1;
        v59 = (v69 + 8 * v41);
        v55 = v71;
        v56 = v73;
        while (v58 < (v52 + 63) >> 6)
        {
          v61 = *v59++;
          v60 = v61;
          v57 += 64;
          ++v58;
          if (v61)
          {
            sub_2379E8FD0(v39, v75, v72 & 1);
            v52 = __clz(__rbit64(v60)) + v57;
            goto LABEL_35;
          }
        }

        sub_2379E8FD0(v39, v75, v72 & 1);
      }

LABEL_35:
      v38 = 0;
      v40 = v56 + 1;
      v39 = v52;
      v37 = v70;
      if (v40 == v55)
      {

        swift_unknownObjectRelease();

        return v8;
      }
    }

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
LABEL_48:
    __break(1u);
  }

  return v8;
}

void MLHandPoseClassifier.evaluation(on:)()
{
  v2 = type metadata accessor for MLHandActionClassifier.ModelParameters(0);
  v3 = (v2 - 8);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2_0();
  v6 = v5 - v4;
  v7 = v0 + *(type metadata accessor for MLHandPoseClassifier(0) + 24);
  v8 = *(v7 + *(type metadata accessor for MLHandPoseClassifier.ModelParameters(0) + 20));
  *v6 = 0;
  *(v6 + 8) = 0;
  *(v6 + 16) = 256;
  type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(0);
  v9 = swift_storeEnumTagMultiPayload();
  *(v6 + v3[7]) = v8;
  *(v6 + v3[8]) = 80;
  *(v6 + v3[9]) = 1;
  *(v6 + v3[10]) = 0;
  *(v6 + v3[12]) = 0x403E000000000000;
  MLHandPoseClassifier.DataSource.keypointsWithAnnotations()(v9, v10, v11, v12, v13, v14, v15, v16, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, vars0, vars8);
  if (v1)
  {
    OUTLINED_FUNCTION_2_2();
    sub_2379E9180(v6);
  }

  else
  {
    v17 = v19;
    v18 = v20;
    sub_237ACE2C8(&v19, v6);
    OUTLINED_FUNCTION_2_2();
    sub_2379E9180(v6);
    sub_2379DBC9C(v17, v18);
  }
}

void MLHandPoseClassifier.write(to:metadata:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_74();
  v15 = v4;
  v5 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_96();
  MEMORY[0x28223BE20](v9);
  v11 = &v16[-v10 - 8];
  if (sub_237C0597C() == 0x67616B6361706C6DLL && v12 == 0xE900000000000065)
  {
  }

  else
  {
    v14 = sub_237C0929C();

    if ((v14 & 1) == 0)
    {
      sub_2379F25FC();
      if (!v2)
      {
        memcpy(v16, v15, sizeof(v16));
        MLHandActionClassifier.write(to:metadata:)();
        (*(v7 + 8))(v3, v5);
      }

      goto LABEL_11;
    }
  }

  sub_2379F25FC();
  if (!v2)
  {
    memcpy(v16, v15, sizeof(v16));
    sub_237B33A98(v11, v16);
    (*(v7 + 8))(v11, v5);
  }

LABEL_11:
  OUTLINED_FUNCTION_73();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MLHandPoseClassifier.write(toFile:metadata:)(Swift::String toFile, CreateML::MLModelMetadata_optional *metadata)
{
  OUTLINED_FUNCTION_74();
  v4 = v3;
  v5 = sub_237C0596C();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_108();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA18, &qword_237C0B710);
  OUTLINED_FUNCTION_20(v9);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_60();
  v11 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2_0();
  v17 = v16 - v15;
  memcpy(v21, v4, sizeof(v21));
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v11);
  (*(v7 + 104))(v2, *MEMORY[0x277CC91D8], v5);

  sub_237C05ABC();
  MLHandPoseClassifier.write(to:metadata:)(v17, v21);
  (*(v13 + 8))(v17, v11);
  OUTLINED_FUNCTION_73();
}

void MLHandPoseClassifier.debugDescription.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_153();
  type metadata accessor for MLClassifierMetrics.Contents(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_108();
  v9 = type metadata accessor for MLHandPoseClassifier(0);
  MLHandPoseClassifier.ModelParameters.description.getter();
  _s8CreateML19MLClassifierMetricsV16debugDescriptionSSvg_0();
  sub_2379E90B4(v6 + *(v9 + 32), v7);
  OUTLINED_FUNCTION_107();
  LODWORD(v9) = swift_getEnumCaseMultiPayload();
  sub_2379E9180(v7);
  _s8CreateML19MLClassifierMetricsV16debugDescriptionSSvg_0();
  OUTLINED_FUNCTION_80();
  v10 = OUTLINED_FUNCTION_83();
  MEMORY[0x2383DC360](v10);

  OUTLINED_FUNCTION_80();
  v15 = v11;
  v12 = OUTLINED_FUNCTION_128();
  MEMORY[0x2383DC360](v12);
  MEMORY[0x2383DC360](0xD00000000000001ELL, v15);

  if (v9 <= 1)
  {
    OUTLINED_FUNCTION_80();
    v16 = v13;
    v14 = OUTLINED_FUNCTION_90();
    MEMORY[0x2383DC360](v14);
    MEMORY[0x2383DC360](0xD000000000000020, v16);
  }

  OUTLINED_FUNCTION_150();
}

id MLHandPoseClassifier.playgroundDescription.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2379E8EE0(0, &qword_27DE9AA20, 0x277CCA898);
  MLHandPoseClassifier.debugDescription.getter(v2, v3, v4, v5, v6, v7);
  result = sub_2379E3E14(v8, v9);
  a1[3] = v2;
  *a1 = result;
  return result;
}

id sub_2379E3E14(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_237C086BC();

  v4 = [v2 initWithString_];

  return v4;
}

void sub_2379E3ED4(void *a1, uint64_t a2, char a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA18, &qword_237C0B710);
  OUTLINED_FUNCTION_20(v14);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_30_0();
  v16 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v29 = v17;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_108();
  *(v7 + qword_27DEACD90) = 28;
  v19 = v7 + *(*v7 + 112);
  sub_237C05BEC();
  v28 = a5;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  *(v19 + v20[7]) = 0;
  *(v19 + v20[8]) = 0;
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v16);
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v16);
  *(v19 + v20[11]) = MEMORY[0x277D84F90];
  sub_2379E8624(a1, v7 + qword_27DEACD88);
  OUTLINED_FUNCTION_5_1();
  sub_2379E90B4(a2, v7 + v27);
  *(v7 + qword_27DEACD90) = a3;
  sub_2379E9068(a2, v9, &qword_27DE9AA18, &qword_237C0B710);
  if (__swift_getEnumTagSinglePayload(v9, 1, v16) == 1)
  {
    sub_2379E9180(a2);
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_2379E9130(v9, &qword_27DE9AA18);
  }

  else
  {
    (*(v29 + 32))(v8, v9, v16);
    sub_2379E4440(v8, a4, v28);
    if (v31)
    {
    }

    sub_2379E9180(a2);
    __swift_destroy_boxed_opaque_existential_1(a1);
    (*(v29 + 8))(v8, v16);
  }

  OUTLINED_FUNCTION_133();
}

void sub_2379E4440(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_74();
  v65 = v5;
  v66 = v3;
  v62 = v6;
  v8 = v7;
  v74 = *MEMORY[0x277D85DE8];
  v67 = v9;
  v68 = v10;
  v11 = OUTLINED_FUNCTION_129(v7, v9);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(v11, v12);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_41_0();
  v14 = sub_237C0909C();
  OUTLINED_FUNCTION_0();
  v61 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_2_0();
  v19 = v18 - v17;
  v69 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_2_0();
  v25 = v24 - v23;
  v26 = [objc_opt_self() defaultManager];
  OUTLINED_FUNCTION_124();
  sub_237C05A2C();
  sub_237C05A9C();
  v27 = sub_237C086BC();

  v28 = [v26 fileExistsAtPath_];

  if (v28)
  {
    sub_237C08EDC();

    OUTLINED_FUNCTION_80();
    v71 = 0xD00000000000001ELL;
    v72 = v29;
    v30 = sub_237C05A9C();
    MEMORY[0x2383DC360](v30);

    v31 = OUTLINED_FUNCTION_110();
    MEMORY[0x2383DC360](v31);
    v32 = sub_237C08C4C();
    sub_237BABE74(0xD00000000000001ELL, v72, v32);

    v33 = sub_237C05B1C();
    if (v4)
    {
      v35 = OUTLINED_FUNCTION_93();
      v36(v35);
    }

    else
    {
      v49 = v33;
      v60 = v34;
      v50 = sub_237C058EC();
      OUTLINED_FUNCTION_91(v50);
      sub_237C058DC();
      if (qword_27DE9A580 != -1)
      {
        OUTLINED_FUNCTION_66(&qword_27DE9A580);
      }

      v51 = __swift_project_value_buffer(v14, qword_27DEACD18);
      (*(v61 + 16))(v19, v51, v14);
      v73 = v69;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v71);
      (*(v21 + 16))(boxed_opaque_existential_0, v8, v69);
      v53 = sub_237C058CC();
      sub_237B19D44(&v71, v19);
      v53(&v70, 0);
      sub_2379E9028(v62, v67);
      v63 = v49;
      sub_237C058BC();
      v54 = v66 + *(*v66 + 112);
      swift_beginAccess();
      OUTLINED_FUNCTION_142();
      sub_2379E8FDC(v55, v56, v57, v68);
      swift_endAccess();
      v58 = *(v66 + qword_27DEACD88 + 24);
      v59 = *(v66 + qword_27DEACD88 + 32);
      __swift_project_boxed_opaque_existential_1((v66 + qword_27DEACD88), v58);
      LOBYTE(v71) = *(v54 + *(v64 + 28));
      (*(*(v59 + 8) + 16))(v8, &v71, v58);
      (*(v21 + 8))(v25, v69);

      sub_2379E86D4(v63, v60);
    }
  }

  else
  {
    sub_237C08EDC();

    OUTLINED_FUNCTION_80();
    v72 = v37;
    v38 = sub_237C05A9C();
    MEMORY[0x2383DC360](v38);

    v39 = OUTLINED_FUNCTION_110();
    MEMORY[0x2383DC360](v39);
    sub_237C08C4C();
    v40 = OUTLINED_FUNCTION_37_0();
    sub_237BABE74(v40, v41, v42);

    v43 = sub_237C059EC();
    v71 = 0;
    v44 = [v26 createDirectoryAtURL:v43 withIntermediateDirectories:1 attributes:0 error:&v71];

    if (v44)
    {
      v45 = v71;
      sub_2379E4AB4(v67, v68, v65);
      (*(v21 + 8))(v25, v69);
    }

    else
    {
      v46 = v71;
      sub_237C0593C();

      swift_willThrow();
      v47 = OUTLINED_FUNCTION_93();
      v48(v47);
    }
  }

  OUTLINED_FUNCTION_73();
}

void sub_2379E4AB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_74();
  v60 = v7;
  v62 = v8;
  v63 = v9;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_23();
  v61 = v11;
  OUTLINED_FUNCTION_41_0();
  v12 = sub_237C0909C();
  OUTLINED_FUNCTION_0();
  v58 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2_0();
  v17 = v16 - v15;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA18, &qword_237C0B710);
  OUTLINED_FUNCTION_20(v18);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_94();
  v20 = type metadata accessor for MLTrainingSessionParameters(0);
  v21 = OUTLINED_FUNCTION_20(v20);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_2_0();
  v24 = v23 - v22;
  v25 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v27 = v26;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_96();
  MEMORY[0x28223BE20](v29);
  v31 = &v54 - v30;
  OUTLINED_FUNCTION_5_1();
  sub_2379E90B4(v3 + v32, v24);
  sub_2379E8770(v24, v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v25) == 1)
  {
    sub_2379E9130(v5, &qword_27DE9AA18);
  }

  else
  {
    v56 = v3;
    OUTLINED_FUNCTION_143();
    v33();
    OUTLINED_FUNCTION_124();
    v57 = v6;
    sub_237C05A2C();
    v34 = sub_237C0592C();
    OUTLINED_FUNCTION_91(v34);
    sub_237C0591C();
    if (qword_27DE9A580 != -1)
    {
      OUTLINED_FUNCTION_66(&qword_27DE9A580);
    }

    v35 = __swift_project_value_buffer(v12, qword_27DEACD18);
    (*(v58 + 16))(v17, v35, v12);
    v65[3] = v25;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v65);
    v58 = v27;
    v37 = *(v27 + 16);
    v55 = v31;
    v37(boxed_opaque_existential_0, v31, v25);
    v38 = sub_237C0590C();
    sub_237B19D44(v65, v17);
    v38(&v64, 0);
    v39 = v56;
    v40 = *(*v56 + 112);
    OUTLINED_FUNCTION_71();
    swift_beginAccess();
    sub_2379E9068(v39 + v40, v61, v62, v63);
    OUTLINED_FUNCTION_142();
    sub_2379E9028(v41, v42);
    sub_237C058FC();
    if (v4)
    {

      OUTLINED_FUNCTION_142();
      sub_2379E9130(v43, v44);
      v47 = v55;
    }

    else
    {
      OUTLINED_FUNCTION_142();
      sub_2379E9130(v45, v46);
      sub_237C05B9C();
      v49 = *(v56 + qword_27DEACD88 + 24);
      v50 = *(v56 + qword_27DEACD88 + 32);
      __swift_project_boxed_opaque_existential_1((v56 + qword_27DEACD88), v49);
      v51 = *(*(v50 + 8) + 8);
      v47 = v55;
      v51(v55, v49);

      v52 = OUTLINED_FUNCTION_83();
      sub_2379E86D4(v52, v53);
    }

    v48 = *(v58 + 8);
    v48(v57, v25);
    v48(v47, v25);
  }

  OUTLINED_FUNCTION_73();
}

void sub_2379E51D0(uint64_t a1)
{
  OUTLINED_FUNCTION_149();
  v49 = v3;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AB98, &unk_237C0B900);
  OUTLINED_FUNCTION_0();
  v48 = v4;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_108();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACA0, &unk_237C0E0E0);
  OUTLINED_FUNCTION_0();
  v47 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_18_0();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v46 - v13;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA48, &qword_237C0B7E0);
  OUTLINED_FUNCTION_0();
  v46 = v15;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_36_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9C8, &qword_237C0B6A0);
  v17 = sub_237C06F7C();
  sub_237B98EF8(v17, v18, v19, v20, v21, v22, v23, v24, v46, v47);
  v26 = v25;

  v55 = v1;
  sub_237C06F5C();
  sub_237C06F7C();

  OUTLINED_FUNCTION_61();
  v53 = v14;
  OUTLINED_FUNCTION_33_0();
  sub_237C05EDC();
  sub_237C06F7C();

  OUTLINED_FUNCTION_70();
  v50 = v11;
  OUTLINED_FUNCTION_33_0();
  sub_237C05EDC();
  sub_237C06F7C();

  v51 = v2;
  sub_237C05EDC();
  OUTLINED_FUNCTION_86(*(v26 + 16));
  v27 = v26 + 32;
  v59 = v28;
  v54 = xmmword_237C0B670;
  while (1)
  {
    v29 = sub_2379E6888();
    if (v31)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABA0, &unk_237C0E0F0);
      OUTLINED_FUNCTION_46();
      v36 = sub_237C0602C();
      OUTLINED_FUNCTION_1(v36);
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_237C0B680;
      v38 = v53;
      sub_237C05EBC();
      sub_237C05EBC();
      v39 = v52;
      v40 = v51;
      sub_237C05EBC();
      v58 = v37;
      v41 = OUTLINED_FUNCTION_37_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v41, v42);
      OUTLINED_FUNCTION_44();
      sub_2379E9028(v43, &qword_27DE9ABA8);
      sub_237C05D7C();
      (*(v48 + 8))(v40, v39);
      v44 = *(v47 + 8);
      v45 = OUTLINED_FUNCTION_107();
      v44(v45);
      (v44)(v38, v6);
      (*(v46 + 8))(v55, v56);
      OUTLINED_FUNCTION_148();
      return;
    }

    v32 = v29;
    v33 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABB8, &unk_237C0D660);
    v34 = swift_allocObject();
    *(v34 + 16) = v54;
    *(v34 + 32) = v32;
    *(v34 + 40) = v33;
    OUTLINED_FUNCTION_45();
    sub_2379E9028(&qword_27DE9ABC0, &qword_27DE9AA48);
    sub_237C0835C();

    if ((v57 & 0x7FFFFFFF) > 0x7F7FFFFF)
    {
      break;
    }

    if (*&v57 <= -9.2234e18)
    {
      goto LABEL_14;
    }

    if (*&v57 >= 9.2234e18)
    {
      goto LABEL_15;
    }

    v35 = *&v57;
    if (*&v57)
    {
      if ((v32 & 0x8000000000000000) != 0)
      {
        goto LABEL_16;
      }

      if (v32 >= *(v26 + 16))
      {
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_130((v27 + 16 * v32));
      sub_237C05F3C();
      if ((v33 & 0x8000000000000000) != 0)
      {
        goto LABEL_18;
      }

      if (v33 >= *(v26 + 16))
      {
        goto LABEL_19;
      }

      OUTLINED_FUNCTION_130((v27 + 16 * v33));
      sub_237C05F3C();
      v57 = v35;
      sub_237C05F3C();
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
}

void sub_2379E575C(uint64_t a1)
{
  OUTLINED_FUNCTION_149();
  v42 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AB98, &unk_237C0B900);
  OUTLINED_FUNCTION_0();
  v43 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_96();
  MEMORY[0x28223BE20](v7);
  v9 = &v41 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v41 - v11;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA48, &qword_237C0B7E0);
  OUTLINED_FUNCTION_0();
  v41 = v13;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_36_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA00, &qword_237C0B6F0);
  v15 = sub_237C06F7C();
  sub_237B98E78(v15, v16, v17, v18, v19, v20, v21, v22, v41, v42);
  v24 = v23;

  v48 = v1;
  sub_237C06F5C();
  sub_237C06F7C();

  OUTLINED_FUNCTION_61();
  v46 = v12;
  OUTLINED_FUNCTION_33_0();
  sub_237C05EDC();
  sub_237C06F7C();

  OUTLINED_FUNCTION_70();
  v44 = v9;
  OUTLINED_FUNCTION_33_0();
  sub_237C05EDC();
  sub_237C06F7C();

  v45 = v2;
  sub_237C05EDC();
  OUTLINED_FUNCTION_86(*(v24 + 16));
  v25 = v24 + 32;
  v52 = v26;
  v47 = xmmword_237C0B670;
  while (1)
  {
    v27 = sub_2379E6888();
    if (v29)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABA0, &unk_237C0E0F0);
      OUTLINED_FUNCTION_87();
      v34 = sub_237C0602C();
      OUTLINED_FUNCTION_1(v34);
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_237C0B680;
      v36 = v46;
      sub_237C05EBC();
      v37 = v44;
      sub_237C05EBC();
      sub_237C05EBC();
      v51 = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABA8, &unk_237C0B910);
      OUTLINED_FUNCTION_44();
      sub_2379E9028(v38, &qword_27DE9ABA8);
      sub_237C05D7C();
      v39 = *(v43 + 8);
      v40 = OUTLINED_FUNCTION_128();
      v39(v40);
      (v39)(v37, v4);
      (v39)(v36, v4);
      (*(v41 + 8))(v48, v49);
      OUTLINED_FUNCTION_148();
      return;
    }

    v30 = v27;
    v31 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABB8, &unk_237C0D660);
    v32 = swift_allocObject();
    *(v32 + 16) = v47;
    *(v32 + 32) = v30;
    *(v32 + 40) = v31;
    OUTLINED_FUNCTION_45();
    sub_2379E9028(&qword_27DE9ABC0, &qword_27DE9AA48);
    sub_237C0835C();

    if ((v50 & 0x7FFFFFFF) > 0x7F7FFFFF)
    {
      break;
    }

    if (*&v50 <= -9.2234e18)
    {
      goto LABEL_14;
    }

    if (*&v50 >= 9.2234e18)
    {
      goto LABEL_15;
    }

    v33 = *&v50;
    if (*&v50)
    {
      if ((v30 & 0x8000000000000000) != 0)
      {
        goto LABEL_16;
      }

      if (v30 >= *(v24 + 16))
      {
        goto LABEL_17;
      }

      v50 = *(v25 + 8 * v30);
      sub_237C05F3C();
      if ((v31 & 0x8000000000000000) != 0)
      {
        goto LABEL_18;
      }

      if (v31 >= *(v24 + 16))
      {
        goto LABEL_19;
      }

      v50 = *(v25 + 8 * v31);
      sub_237C05F3C();
      v50 = v33;
      sub_237C05F3C();
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
}

void sub_2379E5C70(uint64_t a1)
{
  OUTLINED_FUNCTION_149();
  v68 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AB80, &qword_237C0B8E8);
  OUTLINED_FUNCTION_20(v3);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_23();
  v76 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AB88, &qword_237C0B8F0);
  OUTLINED_FUNCTION_0();
  v66 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_18_0();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v63 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AB90, &qword_237C0B8F8);
  OUTLINED_FUNCTION_20(v15);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AB98, &unk_237C0B900);
  OUTLINED_FUNCTION_0();
  v65 = v18;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_14_0();
  v73 = v20;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_138();
  v72 = v22;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_138();
  v71 = v24;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_58();
  v74 = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC98, &qword_237C0BA00);
  OUTLINED_FUNCTION_20(v27);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v28);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACA0, &unk_237C0E0E0);
  OUTLINED_FUNCTION_0();
  v64 = v29;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_94();
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9C8, &qword_237C0B6A0);
  sub_237C06F7C();

  v31 = OUTLINED_FUNCTION_61();
  OUTLINED_FUNCTION_112(v31, 0xE500000000000000);
  v70 = v1;
  sub_237C05F8C();
  v32 = OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_112(v32, v33);
  OUTLINED_FUNCTION_37_0();
  sub_237C05F8C();
  OUTLINED_FUNCTION_112(0xD000000000000013, 0x8000000237C16FC0);
  OUTLINED_FUNCTION_37_0();
  sub_237C05F8C();
  OUTLINED_FUNCTION_112(0xD00000000000001ALL, 0x8000000237C16FE0);
  OUTLINED_FUNCTION_37_0();
  sub_237C05F8C();
  OUTLINED_FUNCTION_112(0xD000000000000016, 0x8000000237C17000);
  OUTLINED_FUNCTION_37_0();
  sub_237C05F8C();
  v34 = OUTLINED_FUNCTION_137();
  OUTLINED_FUNCTION_112(v34, 0xE90000000000006ELL);
  OUTLINED_FUNCTION_37_0();
  sub_237C05F8C();
  v35 = OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_112(v35, v36);
  OUTLINED_FUNCTION_37_0();
  sub_237C05F8C();
  sub_237C05DAC();
  v37 = sub_237C06F7C();
  sub_237B98EF8(v37, v38, v39, v40, v41, v42, v43, v44, v63, v64);
  v46 = v45;

  v67 = v46;
  v47 = *(v46 + 16);
  if (v47)
  {
    v48 = (v67 + 40);
    do
    {
      v49 = *(v48 - 1);
      v75 = *v48;
      v76 = v47;
      v78 = v49;
      v79 = v75;

      sub_237C05F3C();
      OUTLINED_FUNCTION_54();
      v50 = v14;
      v51 = v6;
      v52 = v11;
      v53 = sub_237C06F2C();
      v54 = sub_237C06F3C();
      v77 = sub_237C06F6C();
      OUTLINED_FUNCTION_136();
      sub_237C05F3C();
      v77 = v53;
      v11 = v52;
      v6 = v51;
      v14 = v50;
      OUTLINED_FUNCTION_136();
      sub_237C05F3C();
      v77 = v54;
      OUTLINED_FUNCTION_136();
      sub_237C05F3C();
      OUTLINED_FUNCTION_54();
      v77 = sub_237C06F4C();
      OUTLINED_FUNCTION_136();
      sub_237C05F3C();
      OUTLINED_FUNCTION_54();
      sub_237C06F1C();
      v77 = v55;
      sub_237C05F3C();
      OUTLINED_FUNCTION_54();
      sub_237C06EFC();
      v57 = v56;

      v77 = v57;
      sub_237C05F3C();
      v48 += 2;
      v47 = v76 - 1;
    }

    while (v76 != 1);
  }

  sub_237C05D4C();
  sub_237C05D4C();
  sub_237C05D4C();
  v58 = v72;
  sub_237C05D4C();
  v59 = v73;
  OUTLINED_FUNCTION_55();
  sub_237C05D4C();
  OUTLINED_FUNCTION_107();
  sub_237C05D4C();
  sub_237C05D4C();
  v60 = *(v66 + 8);
  v60(v11, v6);
  v60(v14, v6);
  v61 = *(v65 + 8);
  v61(v59, v17);
  v61(v58, v17);
  v62 = OUTLINED_FUNCTION_82();
  (v61)(v62);
  v61(v74, v17);
  (*(v64 + 8))(v70, v69);
  OUTLINED_FUNCTION_148();
}

void sub_2379E62D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_153();
  v69 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AB80, &qword_237C0B8E8);
  OUTLINED_FUNCTION_20(v8);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_23();
  v68 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AB88, &qword_237C0B8F0);
  OUTLINED_FUNCTION_0();
  v67 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_14_0();
  v65 = v14;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v15);
  v17 = &v64 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AB90, &qword_237C0B8F8);
  OUTLINED_FUNCTION_20(v18);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_30_0();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AB98, &unk_237C0B900);
  OUTLINED_FUNCTION_0();
  v66 = v21;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_14_0();
  v75 = v23;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_138();
  v74 = v25;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_138();
  v73 = v27;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_98();
  MEMORY[0x28223BE20](v29);
  v31 = &v64 - v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA00, &qword_237C0B6F0);
  sub_237C06F7C();

  v32 = OUTLINED_FUNCTION_61();
  OUTLINED_FUNCTION_113(v32, 0xE500000000000000);
  v71 = v31;
  OUTLINED_FUNCTION_82();
  sub_237C05F8C();
  v33 = OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_113(v33, v34);
  v72 = v6;
  OUTLINED_FUNCTION_82();
  sub_237C05F8C();
  OUTLINED_FUNCTION_113(0xD000000000000013, 0x8000000237C16FC0);
  OUTLINED_FUNCTION_82();
  sub_237C05F8C();
  OUTLINED_FUNCTION_113(0xD00000000000001ALL, 0x8000000237C16FE0);
  OUTLINED_FUNCTION_82();
  sub_237C05F8C();
  OUTLINED_FUNCTION_113(0xD000000000000016, 0x8000000237C17000);
  v35 = v65;
  sub_237C05F8C();
  v36 = OUTLINED_FUNCTION_137();
  OUTLINED_FUNCTION_113(v36, 0xE90000000000006ELL);
  sub_237C05F8C();
  v37 = OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_113(v37, v38);
  sub_237C05F8C();
  sub_237C05DAC();
  v39 = sub_237C06F7C();
  sub_237B98E78(v39, v40, v41, v42, v43, v44, v45, v46, v64, v65);
  v48 = v47;

  v68 = v48;
  v49 = *(v48 + 16);
  if (v49)
  {
    v50 = (v68 + 32);
    v70 = v11;
    do
    {
      v51 = *v50++;
      v77 = v51;
      sub_237C05F3C();
      OUTLINED_FUNCTION_63();
      v52 = v17;
      v53 = v35;
      v54 = sub_237C06F2C();
      v55 = sub_237C06F3C();
      v76 = sub_237C06F6C();
      OUTLINED_FUNCTION_140();
      sub_237C05F3C();
      v76 = v54;
      v35 = v53;
      v17 = v52;
      v11 = v70;
      OUTLINED_FUNCTION_140();
      sub_237C05F3C();
      v76 = v55;
      OUTLINED_FUNCTION_140();
      sub_237C05F3C();
      OUTLINED_FUNCTION_63();
      v76 = sub_237C06F4C();
      OUTLINED_FUNCTION_140();
      sub_237C05F3C();
      OUTLINED_FUNCTION_63();
      sub_237C06F1C();
      v76 = v56;
      sub_237C05F3C();
      OUTLINED_FUNCTION_63();
      sub_237C06EFC();
      v76 = v57;
      sub_237C05F3C();
      --v49;
    }

    while (v49);
  }

  sub_237C05D4C();
  sub_237C05D4C();
  v58 = v73;
  sub_237C05D4C();
  v59 = v74;
  sub_237C05D4C();
  v60 = v75;
  sub_237C05D4C();
  sub_237C05D4C();
  sub_237C05D4C();
  v61 = *(v67 + 8);
  v61(v35, v11);
  v62 = OUTLINED_FUNCTION_90();
  (v61)(v62);
  v63 = *(v66 + 8);
  v63(v60, v20);
  v63(v59, v20);
  v63(v58, v20);
  v63(v72, v20);
  v63(v71, v20);
  OUTLINED_FUNCTION_150();
}

uint64_t sub_2379E6888()
{
  if (*(v0 + 56) == 1)
  {
    v2 = *(v0 + 8);
    result = *(v0 + 16);
    if (result == v2)
    {
LABEL_10:
      result = 0;
      *(v0 + 48) = 0;
      *(v0 + 56) = 1;
      return result;
    }

    if (v2 < *v0)
    {
      goto LABEL_26;
    }

    if (result < *v0)
    {
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    if (result >= v2)
    {
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    *(v0 + 16) = result + 1;
    *(v0 + 48) = result;
    *(v0 + 56) = 0;
  }

  else
  {
    result = *(v0 + 48);
  }

  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  if (v3 != v4)
  {
    v6 = *(v0 + 24);
    if (v4 < v6)
    {
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    if (v3 < v6)
    {
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    if (v3 >= v4)
    {
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

LABEL_14:
    *(v0 + 40) = v3 + 1;
    return result;
  }

  v5 = *(v0 + 8);
  result = *(v0 + 16);
  if (result == v5)
  {
    goto LABEL_10;
  }

  if (v5 < *v0)
  {
    goto LABEL_29;
  }

  if (result < *v0)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (result >= v5)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  *(v0 + 56) = 0;
  v3 = *(v0 + 64);
  v7 = *(v0 + 72);
  *(v0 + 16) = result + 1;
  *(v0 + 24) = v3;
  *(v0 + 32) = v7;
  *(v0 + 40) = v3;
  *(v0 + 48) = result;
  if (v3 == v7)
  {
    return 0;
  }

  if (v7 >= v3)
  {
    if (v3 >= v7)
    {
      __break(1u);
      goto LABEL_23;
    }

    goto LABEL_14;
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_2379E69B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_153();
  v7 = type metadata accessor for MLHandPoseClassifier.ModelParameters(0);
  OUTLINED_FUNCTION_1(v7);
  v9 = (*(v8 + 80) + 41) & ~*(v8 + 80);
  sub_2379DBC9C(*(v6 + 16), *(v6 + 24));
  sub_2379DBC9C(*(v6 + 32), *(v6 + 40));
  v10 = v6 + v9;
  type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData(0);
  OUTLINED_FUNCTION_126();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for MLHandPoseClassifier.DataSource(0);
    OUTLINED_FUNCTION_126();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v12 = sub_237C05ADC();
        OUTLINED_FUNCTION_4();
        v14 = *(v13 + 8);
        v14(v6 + v9, v12);
        v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9D0, &unk_237C0B6B0);
        v14(v10 + v15[12], v12);
        OUTLINED_FUNCTION_105(v15[16]);

        v16 = v15[20];
        goto LABEL_9;
      case 1u:
      case 2u:
        sub_237C05ADC();
        OUTLINED_FUNCTION_12_0();
        (*(v11 + 8))(v6 + v9);
        break;
      case 3u:
        sub_2379DBC9C(*v10, *(v10 + 8));

        goto LABEL_10;
      case 4u:
        sub_2379DBC9C(*v10, *(v10 + 8));

        goto LABEL_10;
      case 5u:
        sub_237C05DBC();
        OUTLINED_FUNCTION_12_0();
        (*(v17 + 8))(v6 + v9);
        v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9D8, &unk_237C0C710);
        OUTLINED_FUNCTION_105(v18[12]);

        OUTLINED_FUNCTION_105(v18[16]);

        v16 = v18[20];
        goto LABEL_9;
      case 6u:
        sub_237C05DBC();
        OUTLINED_FUNCTION_12_0();
        (*(v19 + 8))(v6 + v9);
        v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9E0, &qword_237C0B6C0);
        OUTLINED_FUNCTION_105(*(v20 + 48));

        v16 = *(v20 + 64);
LABEL_9:
        OUTLINED_FUNCTION_105(v16);
LABEL_10:

        break;
      default:
        break;
    }
  }

  OUTLINED_FUNCTION_150();

  return MEMORY[0x2821FE8E8](v21);
}

uint64_t sub_2379E6C80(uint64_t a1)
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_27();
  v1 = OUTLINED_FUNCTION_46();
  v2 = type metadata accessor for MLHandPoseClassifier.ModelParameters(v1);
  OUTLINED_FUNCTION_20(v2);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_19_0(v3);
  *v4 = v5;
  v4[1] = sub_2379D9D48;
  OUTLINED_FUNCTION_68();

  return sub_2379DCB14(v6, v7, v8, v9, v10, v11);
}

uint64_t sub_2379E6D68()
{
  v1 = v0;
  v2 = type metadata accessor for MLHandActionClassifier(0);
  v3 = *(*(v2 - 1) + 80);
  v4 = v0 + ((v3 + 16) & ~v3);

  v5 = v4 + v2[7];
  type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for MLHandActionClassifier.DataSource(0);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v7 = sub_237C05ADC();
        OUTLINED_FUNCTION_4();
        v9 = *(v8 + 8);
        v10 = OUTLINED_FUNCTION_147();
        v9(v10);
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9E8, &unk_237C0F370);
        (v9)(v5 + v11[12], v7);
        OUTLINED_FUNCTION_56(v11[16]);

        OUTLINED_FUNCTION_56(v11[20]);

        OUTLINED_FUNCTION_56(v11[24]);

        v12 = v11[28];
        goto LABEL_9;
      case 1u:
      case 2u:
        sub_237C05ADC();
        OUTLINED_FUNCTION_12_0();
        (*(v6 + 8))(v5);
        break;
      case 3u:
        sub_2379DBC9C(*v5, *(v5 + 8));

        goto LABEL_10;
      case 4u:
        sub_2379DBC9C(*v5, *(v5 + 8));

        goto LABEL_10;
      case 5u:
        sub_237C05DBC();
        OUTLINED_FUNCTION_12_0();
        (*(v13 + 8))(v5);
        v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9D8, &unk_237C0C710);
        OUTLINED_FUNCTION_56(v14[12]);

        OUTLINED_FUNCTION_56(v14[16]);

        v12 = v14[20];
        goto LABEL_9;
      case 6u:
        sub_237C05DBC();
        OUTLINED_FUNCTION_12_0();
        (*(v15 + 8))(v5);
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9F0, &unk_237C0B6E0);
        OUTLINED_FUNCTION_56(v16[12]);

        OUTLINED_FUNCTION_56(v16[16]);

        OUTLINED_FUNCTION_56(v16[20]);

        v12 = v16[24];
LABEL_9:
        OUTLINED_FUNCTION_56(v12);
LABEL_10:

        break;
      default:
        break;
    }
  }

  v17 = (v4 + v2[8]);
  type metadata accessor for MLClassifierMetrics.Contents(0);
  OUTLINED_FUNCTION_90();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:

      break;
    case 1:
      v21 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v36 = *(v21 + 20);
      v22 = sub_237C05DBC();
      v23 = *(*(v22 - 8) + 8);
      v23(v17 + v36, v22);
      v23(v17 + *(v21 + 24), v22);
      break;
    case 0:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9F8, &unk_237C0E1C0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v19 = &qword_27DE9AA00;
        v20 = &qword_237C0B6F0;
      }

      else
      {
        v19 = &qword_27DE9A9C8;
        v20 = &qword_237C0B6A0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(v19, v20);
      OUTLINED_FUNCTION_12_0();
      (*(v24 + 8))(v17);
      break;
  }

  v25 = (v4 + v2[9]);
  v26 = swift_getEnumCaseMultiPayload();
  switch(v26)
  {
    case 2:

      break;
    case 1:
      v29 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v30 = *(v29 + 20);
      v31 = sub_237C05DBC();
      OUTLINED_FUNCTION_4();
      v33 = *(v32 + 8);
      v33(v25 + v30, v31);
      v33(v25 + *(v29 + 24), v31);
      break;
    case 0:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9F8, &unk_237C0E1C0);
      OUTLINED_FUNCTION_126();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v27 = &qword_27DE9AA00;
        v28 = &qword_237C0B6F0;
      }

      else
      {
        v27 = &qword_27DE9A9C8;
        v28 = &qword_237C0B6A0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(v27, v28);
      OUTLINED_FUNCTION_12_0();
      (*(v34 + 8))(v25);
      break;
  }

  return MEMORY[0x2821FE8E8](v1);
}

uint64_t sub_2379E72FC(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_87();
  v4(v3);
  OUTLINED_FUNCTION_4();
  v5 = OUTLINED_FUNCTION_37_0();
  v6(v5);
  return a2;
}

uint64_t sub_2379E7354()
{
  OUTLINED_FUNCTION_49();
  v2 = OUTLINED_FUNCTION_46();
  v3 = type metadata accessor for MLHandActionClassifier(v2);
  OUTLINED_FUNCTION_20(v3);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_19_0(v6);
  *v7 = v8;
  v7[1] = sub_2379D6854;

  return sub_2379E01CC(v0, v1 + v5);
}

uint64_t sub_2379E741C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[20] = a6;
  v7[21] = a7;
  v7[18] = a4;
  v7[19] = a5;
  return MEMORY[0x2822009F8](sub_2379E7440);
}

uint64_t sub_2379E7440()
{
  OUTLINED_FUNCTION_49();
  v0 = OUTLINED_FUNCTION_76();
  v1 = type metadata accessor for MLHandPoseClassifier(v0);
  OUTLINED_FUNCTION_117(v1);
  OUTLINED_FUNCTION_0_1();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_21_0(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_15_0(v3);

  return v6(v5);
}

uint64_t sub_2379E74FC()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3();
  *v5 = v4;
  *(v6 + 184) = v0;

  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_2379E75F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[20] = a6;
  v7[21] = a7;
  v7[18] = a4;
  v7[19] = a5;
  return MEMORY[0x2822009F8](sub_2379E7618);
}

uint64_t sub_2379E7618()
{
  OUTLINED_FUNCTION_9();
  *(v0 + 40) = sub_2379E8EE0(0, &qword_27DE9AA38, 0x277CBFF20);
  OUTLINED_FUNCTION_0_1();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_21_0(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_11_0(v2);

  return v5(v4);
}

uint64_t sub_2379E76E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[20] = a6;
  v7[21] = a7;
  v7[18] = a4;
  v7[19] = a5;
  return MEMORY[0x2822009F8](sub_2379E7704);
}

uint64_t sub_2379E7704()
{
  OUTLINED_FUNCTION_49();
  v0 = OUTLINED_FUNCTION_76();
  v1 = type metadata accessor for MLImageClassifier(v0);
  OUTLINED_FUNCTION_117(v1);
  OUTLINED_FUNCTION_0_1();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_21_0(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_15_0(v3);

  return v6(v5);
}

uint64_t sub_2379E77C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[20] = a6;
  v7[21] = a7;
  v7[18] = a4;
  v7[19] = a5;
  return MEMORY[0x2822009F8](sub_2379E77E4);
}

uint64_t sub_2379E77E4()
{
  OUTLINED_FUNCTION_9();
  *(v0 + 40) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABF0, &qword_237C0B968);
  OUTLINED_FUNCTION_0_1();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_21_0(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_11_0(v2);

  return v5(v4);
}

uint64_t sub_2379E78A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[20] = a6;
  v7[21] = a7;
  v7[18] = a4;
  v7[19] = a5;
  return MEMORY[0x2822009F8](sub_2379E78CC);
}

uint64_t sub_2379E78CC()
{
  OUTLINED_FUNCTION_9();
  *(v0 + 40) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABE0, &qword_237C0B948);
  OUTLINED_FUNCTION_0_1();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_21_0(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_11_0(v2);

  return v5(v4);
}

uint64_t sub_2379E7990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[20] = a6;
  v7[21] = a7;
  v7[18] = a4;
  v7[19] = a5;
  return MEMORY[0x2822009F8](sub_2379E79B4);
}

uint64_t sub_2379E79B4()
{
  OUTLINED_FUNCTION_49();
  v0 = OUTLINED_FUNCTION_76();
  v1 = type metadata accessor for MLHandActionClassifier(v0);
  OUTLINED_FUNCTION_117(v1);
  OUTLINED_FUNCTION_0_1();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_21_0(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_15_0(v3);

  return v6(v5);
}

uint64_t sub_2379E7A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[20] = a6;
  v7[21] = a7;
  v7[18] = a4;
  v7[19] = a5;
  return MEMORY[0x2822009F8](sub_2379E7A94);
}

uint64_t sub_2379E7A94()
{
  OUTLINED_FUNCTION_49();
  v0 = OUTLINED_FUNCTION_76();
  v1 = type metadata accessor for MLStyleTransfer(v0);
  OUTLINED_FUNCTION_117(v1);
  OUTLINED_FUNCTION_0_1();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_21_0(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_15_0(v3);

  return v6(v5);
}

uint64_t sub_2379E7B50()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3();
  *v5 = v4;
  *(v6 + 184) = v0;

  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_2379E7C48()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 144);
  *(v0 + 48) = 0;
  swift_beginAccess();
  sub_2379E8FDC(v0 + 16, v1 + 16, &qword_27DE9AAA0, &unk_237C0B820);
  swift_endAccess();
  sub_237C08CAC();
  OUTLINED_FUNCTION_8();

  return v2();
}

uint64_t sub_2379E7CE0()
{
  OUTLINED_FUNCTION_49();
  v1 = *(v0 + 184);
  v2 = *(v0 + 144);
  __swift_deallocate_boxed_opaque_existential_0(v0 + 16);
  *(v0 + 56) = v1;
  *(v0 + 88) = 1;
  swift_beginAccess();
  sub_2379E8FDC(v0 + 56, v2 + 16, &qword_27DE9AAA0, &unk_237C0B820);
  swift_endAccess();
  sub_237C08CAC();
  OUTLINED_FUNCTION_8();

  return v3();
}

uint64_t sub_2379E7D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[20] = a6;
  v7[21] = a7;
  v7[18] = a4;
  v7[19] = a5;
  return MEMORY[0x2822009F8](sub_2379E7DBC);
}

uint64_t sub_2379E7DBC()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_76();
  *(v0 + 40) = type metadata accessor for _Model();
  OUTLINED_FUNCTION_0_1();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_21_0(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_11_0(v2);

  return v5(v4);
}

uint64_t sub_2379E7E70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[20] = a6;
  v7[21] = a7;
  v7[18] = a4;
  v7[19] = a5;
  return MEMORY[0x2822009F8](sub_2379E7E94);
}

uint64_t sub_2379E7E94()
{
  OUTLINED_FUNCTION_49();
  v0 = OUTLINED_FUNCTION_76();
  v1 = type metadata accessor for MLSoundClassifier(v0);
  OUTLINED_FUNCTION_117(v1);
  OUTLINED_FUNCTION_0_1();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_21_0(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_15_0(v3);

  return v6(v5);
}

uint64_t sub_2379E7F50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[20] = a6;
  v7[21] = a7;
  v7[18] = a4;
  v7[19] = a5;
  return MEMORY[0x2822009F8](sub_2379E7F74);
}

uint64_t sub_2379E7F74()
{
  OUTLINED_FUNCTION_9();
  *(v0 + 40) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAD0, &qword_237C0B860);
  OUTLINED_FUNCTION_0_1();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_21_0(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_11_0(v2);

  return v5(v4);
}

uint64_t sub_2379E8038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[20] = a6;
  v7[21] = a7;
  v7[18] = a4;
  v7[19] = a5;
  return MEMORY[0x2822009F8](sub_2379E805C);
}

uint64_t sub_2379E805C()
{
  OUTLINED_FUNCTION_49();
  v0 = OUTLINED_FUNCTION_76();
  v1 = _s5ModelVMa_0(v0);
  OUTLINED_FUNCTION_117(v1);
  OUTLINED_FUNCTION_0_1();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_21_0(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_15_0(v3);

  return v6(v5);
}

uint64_t sub_2379E8118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[20] = a6;
  v7[21] = a7;
  v7[18] = a4;
  v7[19] = a5;
  return MEMORY[0x2822009F8](sub_2379E813C);
}

uint64_t sub_2379E813C()
{
  OUTLINED_FUNCTION_9();
  *(v0 + 40) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAC8, &qword_237C0B848);
  OUTLINED_FUNCTION_0_1();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_21_0(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_11_0(v2);

  return v5(v4);
}

uint64_t sub_2379E8200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[20] = a6;
  v7[21] = a7;
  v7[18] = a4;
  v7[19] = a5;
  return MEMORY[0x2822009F8](sub_2379E8224);
}

uint64_t sub_2379E8224()
{
  OUTLINED_FUNCTION_9();
  *(v0 + 40) = &type metadata for MLRegressorMetrics;
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_21_0(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_11_0(v2);

  return v5(v4);
}

uint64_t sub_2379E833C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = OUTLINED_FUNCTION_87();
  type metadata accessor for MLHandActionClassifier(v6);
  OUTLINED_FUNCTION_135();
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
LABEL_11:

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }

  if (a2 != 0x7FFFFFFF)
  {
    type metadata accessor for MLHandPoseClassifier.ModelParameters(0);
    OUTLINED_FUNCTION_135();
    if (*(v14 + 84) == a2)
    {
      v9 = v13;
      v15 = a3[6];
    }

    else
    {
      v9 = type metadata accessor for MLClassifierMetrics(0);
      v15 = a3[7];
    }

    v10 = v3 + v15;
    goto LABEL_11;
  }

  v11 = *(v3 + a3[5]);
  if (v11 >= 0xFFFFFFFF)
  {
    LODWORD(v11) = -1;
  }

  return (v11 + 1);
}

void sub_2379E8458(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = OUTLINED_FUNCTION_87();
  type metadata accessor for MLHandActionClassifier(v8);
  OUTLINED_FUNCTION_135();
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v4;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(v4 + a4[5]) = (a2 - 1);
      return;
    }

    type metadata accessor for MLHandPoseClassifier.ModelParameters(0);
    OUTLINED_FUNCTION_135();
    if (*(v14 + 84) == a3)
    {
      v11 = v13;
      v15 = a4[6];
    }

    else
    {
      v11 = type metadata accessor for MLClassifierMetrics(0);
      v15 = a4[7];
    }

    v12 = v4 + v15;
  }

  __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_2379E855C(uint64_t a1)
{
  result = type metadata accessor for MLHandActionClassifier(319);
  if (v2 <= 0x3F)
  {
    result = sub_2379E8EE0(319, &qword_27DE9AA38, 0x277CBFF20);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for MLHandPoseClassifier.ModelParameters(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for MLClassifierMetrics(319);
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_2379E8624(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_2379E86D4(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_2379E8770(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA18, &qword_237C0B710);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2379E87E0(uint64_t a1)
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_8_1();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_19_0(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_3_2(v2);
  OUTLINED_FUNCTION_68();

  return sub_2379E8200(v4, v5, v6, v7, v8, v9, v10);
}

uint64_t __swift_deallocate_boxed_opaque_existential_0(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x2383DD950);
  }

  return result;
}

uint64_t sub_2379E88C0(uint64_t a1)
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_8_1();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_19_0(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_3_2(v2);
  OUTLINED_FUNCTION_68();

  return sub_2379E8118(v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_2379E894C(uint64_t a1)
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_8_1();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_19_0(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_3_2(v2);
  OUTLINED_FUNCTION_68();

  return sub_2379E7F50(v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_2379E89D8(uint64_t a1)
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_8_1();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_19_0(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_3_2(v2);
  OUTLINED_FUNCTION_68();

  return sub_2379E8038(v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_2379E8A64(uint64_t a1)
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_8_1();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_19_0(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_3_2(v2);
  OUTLINED_FUNCTION_68();

  return sub_2379E7E70(v4, v5, v6, v7, v8, v9, v10);
}

unint64_t sub_2379E8AF0()
{
  result = qword_27DE9AB20;
  if (!qword_27DE9AB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9AB20);
  }

  return result;
}

uint64_t sub_2379E8B44(uint64_t a1)
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_8_1();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_19_0(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_3_2(v2);
  OUTLINED_FUNCTION_68();

  return sub_2379E7D98(v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_2379E8BD0(uint64_t a1)
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_8_1();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_19_0(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_3_2(v2);
  OUTLINED_FUNCTION_68();

  return sub_2379E7A70(v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_2379E8C5C(uint64_t a1)
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_8_1();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_19_0(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_3_2(v2);
  OUTLINED_FUNCTION_68();

  return sub_2379E7990(v4, v5, v6, v7, v8, v9, v10);
}

void sub_2379E8CE8(id a1, id a2, char a3)
{
  switch(a3)
  {
    case 2:
    case 4:

      break;
    case 3:

      break;
    case 5:

      break;
    default:
      return;
  }
}

uint64_t sub_2379E8D3C(uint64_t a1)
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_8_1();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_19_0(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_3_2(v2);
  OUTLINED_FUNCTION_68();

  return sub_2379E78A8(v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_2379E8DC8(uint64_t a1)
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_8_1();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_19_0(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_3_2(v2);
  OUTLINED_FUNCTION_68();

  return sub_2379E77C0(v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_2379E8E54(uint64_t a1)
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_8_1();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_19_0(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_3_2(v2);
  OUTLINED_FUNCTION_68();

  return sub_2379E76E0(v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_2379E8EE0(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_2379E8FD0(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_2379E8FDC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_151(a1, a2, a3, a4);
  OUTLINED_FUNCTION_4();
  v5 = OUTLINED_FUNCTION_37_0();
  v6(v5);
  return v4;
}

uint64_t sub_2379E9028(unint64_t *a1, uint64_t x1_0)
{
  result = *a1;
  if (!result)
  {
    v5 = OUTLINED_FUNCTION_129(0, x1_0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v5, v6);
    OUTLINED_FUNCTION_125();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2379E9068(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_151(a1, a2, a3, a4);
  OUTLINED_FUNCTION_4();
  v5 = OUTLINED_FUNCTION_37_0();
  v6(v5);
  return v4;
}

uint64_t sub_2379E90B4(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_87();
  v4(v3);
  OUTLINED_FUNCTION_4();
  v5 = OUTLINED_FUNCTION_37_0();
  v6(v5);
  return a2;
}

uint64_t sub_2379E9130(uint64_t a1, uint64_t x1_0)
{
  v4 = OUTLINED_FUNCTION_129(a1, x1_0);
  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_12_0();
  (*(v6 + 8))(a1);
  return a1;
}

uint64_t sub_2379E9180(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_46();
  v3(v2);
  OUTLINED_FUNCTION_12_0();
  (*(v4 + 8))(v1);
  return v1;
}

uint64_t sub_2379E91D0(uint64_t a1)
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_8_1();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_19_0(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_3_2(v2);
  OUTLINED_FUNCTION_68();

  return sub_2379E75F4(v4, v5, v6, v7, v8, v9, v10);
}

void sub_2379E9268(int a1, void *a2, id a3, char a4)
{
  if (a4 != -1)
  {
    sub_2379E8CE8(a2, a3, a4);
  }
}

id sub_2379E9288(id result, id a2, char a3)
{
  switch(a3)
  {
    case 2:
    case 4:

      break;
    case 3:

      break;
    case 5:
      result = result;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t objectdestroy_9Tm()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_79();

  return MEMORY[0x2821FE8E8](v1);
}

uint64_t sub_2379E9328(uint64_t a1)
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_8_1();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_19_0(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_3_2(v2);
  OUTLINED_FUNCTION_68();

  return sub_2379E741C(v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_2379E93B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLClassifierMetrics(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

double OUTLINED_FUNCTION_25_0(uint64_t a1, uint64_t a2)
{
  *a2 = v2;
  *(a2 + 8) = v3;
  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 1;
  return result;
}

dispatch_semaphore_t OUTLINED_FUNCTION_29_0(uint64_t a1)
{
  *(a1 + 32) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 48) = -1;

  return dispatch_semaphore_create(0);
}

uint64_t OUTLINED_FUNCTION_48@<X0>(uint64_t a1@<X8>)
{

  return sub_2379E90B4(v2 + a1, v1);
}

uint64_t OUTLINED_FUNCTION_52(uint64_t a1, uint64_t a2)
{
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0;

  return swift_willThrow();
}

void OUTLINED_FUNCTION_53()
{

  JUMPOUT(0x2383DC360);
}

uint64_t OUTLINED_FUNCTION_57(void *a1)
{
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = v2;
  a1[5] = v3;
  a1[6] = v1;
  a1[7] = v4;
}

dispatch_semaphore_t OUTLINED_FUNCTION_65(uint64_t a1)
{
  *(a1 + 48) = -1;

  return dispatch_semaphore_create(0);
}

uint64_t OUTLINED_FUNCTION_66(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_86(uint64_t a1@<X8>)
{
  *(v1 - 120) = 0;
  *(v1 - 112) = a1;
  *(v1 - 184) = 0;
  *(v1 - 176) = a1;
  *(v1 - 168) = 0;
  *(v1 - 160) = 0;
  *(v1 - 144) = 0;
  *(v1 - 136) = 0;
  *(v1 - 152) = a1;
}

uint64_t OUTLINED_FUNCTION_91(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_101()
{

  return sub_237BBAEC8(0, 0, v2, v0, v1);
}

void OUTLINED_FUNCTION_102()
{

  JUMPOUT(0x2383DC360);
}

uint64_t OUTLINED_FUNCTION_112(uint64_t a1, uint64_t a2)
{

  return sub_237C05FCC();
}

uint64_t OUTLINED_FUNCTION_113(uint64_t a1, uint64_t a2)
{

  return sub_237C05FCC();
}

uint64_t OUTLINED_FUNCTION_114()
{

  return sub_237C08FEC();
}

uint64_t OUTLINED_FUNCTION_115()
{

  return sub_237C0924C();
}

id OUTLINED_FUNCTION_116@<X0>(char a1@<W8>)
{
  *(v1 - 112) = a1;

  return sub_237BA57C4(v1 - 120, 0, (v1 - 104));
}

uint64_t *OUTLINED_FUNCTION_117(uint64_t a1)
{
  *(v1 + 40) = a1;

  return __swift_allocate_boxed_opaque_existential_0((v1 + 16));
}

uint64_t OUTLINED_FUNCTION_118(void *a1)
{
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = v2;
  a1[5] = v4;
  a1[6] = v3;
  a1[7] = v1;
}

uint64_t OUTLINED_FUNCTION_119(uint64_t a1, ...)
{
  va_start(va, a1);

  return sub_237A607E0(v1, va);
}

uint64_t OUTLINED_FUNCTION_120(uint64_t a1)
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_121()
{
  sub_2379DBC9C(*(v1 - 160), *(v1 - 208));
  sub_2379DBC9C(v0, *(v1 - 236));
  v2 = *(v1 - 224);
  v3 = *(v1 - 136);

  sub_2379DBC84(v2, v3);
}

uint64_t OUTLINED_FUNCTION_130@<X0>(uint64_t *a1@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *(v1 - 200) = v2;
  *(v1 - 192) = v3;
  return v1 - 200;
}

uint64_t OUTLINED_FUNCTION_151(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

uint64_t OUTLINED_FUNCTION_152()
{

  return swift_dynamicCast();
}

_OWORD *OUTLINED_FUNCTION_155()
{

  return sub_2379DAD24((v0 - 176), (v0 - 112));
}

uint64_t type metadata accessor for MLBoostedTreeClassifier.ModelParameters.ValidationData(uint64_t a1)
{
  result = qword_27DE9ACA8;
  if (!qword_27DE9ACA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2379EA0A0(uint64_t a1)
{
  result = sub_2379EA11C();
  if (v2 <= 0x3F)
  {
    result = sub_237C05DBC();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

ValueMetadata *sub_2379EA11C()
{
  result = qword_27DE9ACB8;
  if (!qword_27DE9ACB8)
  {
    result = &type metadata for MLSplitStrategy;
    atomic_store(&type metadata for MLSplitStrategy, &qword_27DE9ACB8);
  }

  return result;
}

uint64_t sub_2379EA144@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v5 = sub_237C05DBC();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_18_0();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  v13 = OUTLINED_FUNCTION_3_3();
  v14 = type metadata accessor for MLBoostedTreeClassifier.ModelParameters.ValidationData(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2_0();
  v17 = (v16 - v15);
  sub_2379EA830(v3, v16 - v15);
  result = swift_getEnumCaseMultiPayload();
  switch(result)
  {
    case 1:
      v19 = *v17;
      v20 = *(v17 + 8);
      goto LABEL_7;
    case 2:
      (*(v7 + 32))(v2, v17, v5);
      (*(v7 + 16))(v11, v2, v5);
      sub_237A70684(v11, 1, &v24);
      result = (*(v7 + 8))(v2, v5);
      v19 = v24;
      v20 = v25;
LABEL_7:
      *a1 = v19;
      *(a1 + 8) = v20;
      break;
    case 3:
      v21 = MEMORY[0x2383DDC00](0);
      if (!v21)
      {
        __break(1u);
        JUMPOUT(0x2379EA398);
      }

      v22 = v21;
      type metadata accessor for CMLTable();
      v23 = swift_allocObject();
      *(v23 + 16) = v22;
      type metadata accessor for _DataTable();
      swift_allocObject();
      result = sub_237B6C578(v23);
      *a1 = result;
      *(a1 + 8) = 0;
      break;
    default:
      *a1 = 0;
      *(a1 + 8) = -1;
      break;
  }

  return result;
}

uint64_t sub_2379EA3A8(uint64_t a1, void *a2, uint64_t a3)
{
  v53 = a3;
  v56 = a2;
  v54 = a1;
  v55 = sub_237C05DBC();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_0();
  v9 = (v8 - v7);
  v10 = sub_237C05D1C();
  OUTLINED_FUNCTION_0();
  v51 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_18_0();
  v50 = (v13 - v14);
  MEMORY[0x28223BE20](v15);
  v17 = &v49 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v49 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACC0, &qword_237C0BA28);
  MEMORY[0x28223BE20](v21 - 8);
  OUTLINED_FUNCTION_18_0();
  v24 = v22 - v23;
  MEMORY[0x28223BE20](v25);
  v26 = OUTLINED_FUNCTION_3_3();
  v27 = type metadata accessor for MLBoostedTreeClassifier.ModelParameters.ValidationData(v26);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_2_0();
  v30 = (v29 - v28);
  sub_2379EA830(v52, v29 - v28);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v41 = *v30;
      v42 = *(v30 + 8);
      v43 = OUTLINED_FUNCTION_4_2();
      v37 = v55;
      v44(v43);
      *&v57 = v41;
      BYTE8(v57) = v42;
      v36 = v56;
      sub_237A70ED4(&v57, v56);
      goto LABEL_10;
    case 2u:
      v38 = *(v5 + 32);
      v37 = v55;
      v38(v9, v30, v55);
      if (sub_237C05C5C())
      {
        (*(v5 + 8))(v9, v37);
        v39 = OUTLINED_FUNCTION_4_2();
LABEL_7:
        v40(v39);
        v35 = 1;
        v36 = v56;
      }

      else
      {
        v45 = OUTLINED_FUNCTION_4_2();
        v46(v45);
        v36 = v56;
        v38(v56, v9, v37);
LABEL_10:
        v35 = 0;
      }

      return __swift_storeEnumTagSinglePayload(v36, v35, 1, v37);
    case 3u:
      v39 = OUTLINED_FUNCTION_4_2();
      v37 = v55;
      goto LABEL_7;
    default:
      v31 = *(v30 + 16);
      v32 = *(v30 + 17);
      v57 = *v30;
      v58 = v31;
      v59 = v32;
      sub_237A70BAC(v3, v20, &v57);
      v33 = v51;
      v34 = *(v51 + 16);
      v34(v17, v20, v10);
      sub_237C05DCC();
      sub_2379EA894(v3, v24);
      if (__swift_getEnumTagSinglePayload(v24, 1, v10) == 1)
      {
        (*(v33 + 8))(v20, v10);
        sub_2379EA904(v3);
        v35 = 1;
        v37 = v55;
        v36 = v56;
      }

      else
      {
        (*(v33 + 32))(v17, v24, v10);
        v34(v50, v17, v10);
        v36 = v56;
        sub_237C05DCC();
        v47 = *(v33 + 8);
        v47(v17, v10);
        v47(v20, v10);
        sub_2379EA904(v3);
        v35 = 0;
        v37 = v55;
      }

      return __swift_storeEnumTagSinglePayload(v36, v35, 1, v37);
  }
}

uint64_t sub_2379EA830(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLBoostedTreeClassifier.ModelParameters.ValidationData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2379EA894(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACC0, &qword_237C0BA28);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2379EA904(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACC0, &qword_237C0BA28);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2379EA98C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v26 = a2;
  v4 = *(a1 + 8);
  v17 = *a1;
  v24 = *a1;
  v16 = v4;
  v25 = v4;
  MLDataTable.subscript.getter();
  v20 = v22;
  v21 = v23;
  MLUntypedColumn.dropDuplicates()(&v18, v5);
  sub_2379DBC9C(v20, v21);
  v6 = v18;
  LOBYTE(v7) = v19;
  if ((v19 & 1) == 0)
  {
    sub_2379DBCF4(v18, 0);
    sub_237A60248(&v24);
    sub_2379DBC9C(v6, 0);
    if (!v24)
    {
      v7 = sub_2379DFD2C(v6, 0);
      v8 = *(v7 + 16);
      if (!v8)
      {
LABEL_10:

        return;
      }

      v24 = MEMORY[0x277D84F90];
      sub_237AC8B94(0, v8, 0);
      v9 = 0;
      v6 = v24;
      while (v9 < *(v7 + 16))
      {
        v22 = *(v7 + 8 * v9 + 32);
        sub_2379EAB90(&v22, v17, v16, v26, &v20, &v18);
        if (v3)
        {

          return;
        }

        v3 = 0;
        v10 = v18;
        v11 = v19;
        v24 = v6;
        v13 = v6[2];
        v12 = v6[3];
        if (v13 >= v12 >> 1)
        {
          v15 = OUTLINED_FUNCTION_106(v12);
          sub_237AC8B94(v15, v13 + 1, 1);
          v6 = v24;
        }

        ++v9;
        v6[2] = v13 + 1;
        v14 = &v6[2 * v13];
        v14[4] = v10;
        v14[5] = v11;
        if (v8 == v9)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }

  sub_2379DBC9C(v6, v7);
  __break(1u);
}

void sub_2379EAB90(void **a1@<X0>, unint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X8>)
{
  v8 = v6;
  v13 = *a1;
  *v45 = a2;
  LOBYTE(v46) = a3 & 1;
  MLDataTable.subscript.getter();
  v14 = v50;
  if (v51)
  {
    v48.n128_u64[0] = v50;
    v15 = v50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAA8, &qword_237C0ECD0);
    v16 = sub_237C0925C();
    if (v16)
    {
      v17 = v16;
      sub_2379DBC9C(v50, 1);
    }

    else
    {
      v17 = swift_allocError();
      *v20 = v50;
    }

    v19 = 1;
    sub_2379DBC9C(v14, 1);
  }

  else
  {
    type metadata accessor for _UntypedColumn();
    v48 = v13;
    LOBYTE(v49) = 0;
    v18 = sub_237A60280(4, v50, &v48);
    if (v6)
    {
      sub_2379E8CE8(v48.n128_u64[0], v48.n128_u64[1], v49);
      sub_2379DBC9C(v14, 0);
      v19 = 1;
      v17 = v6;
      v8 = 0;
    }

    else
    {
      v17 = v18;
      sub_2379E8CE8(v48.n128_u64[0], v48.n128_u64[1], v49);
      sub_2379DBC9C(v14, 0);
      v19 = 0;
    }
  }

  v48.n128_u64[0] = a2;
  v48.n128_u8[8] = a3 & 1;
  *v45 = v17;
  LOBYTE(v46) = v19;
  MLDataTable.subscript.getter(v45, &v52);
  sub_2379DBC9C(*v45, v46);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACE8, &unk_237C0BAA0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_237C0BA30;
  sub_2379E8EE0(0, &qword_27DE9AC40, 0x277CCABB0);
  *(v21 + 32) = sub_237C08CDC();
  *(v21 + 40) = sub_237C08CDC();
  *(v21 + 48) = sub_237C08CDC();
  sub_237AB166C(&v52, 0x746E696F7079656BLL, 0xE900000000000073, v21);
  if (v8)
  {
    sub_2379DBC9C(v52, v53);

    *a5 = v8;
    return;
  }

  MLDataTable.subscript.getter();
  v22 = *v45;
  if (v46)
  {
    sub_2379DBC9C(*v45, 1);
LABEL_17:
    sub_2379E8AF0();
    v29 = swift_allocError();
    *v28 = 0xD000000000000023;
    *(v28 + 8) = 0x8000000237C172E0;
LABEL_18:
    *(v28 + 16) = 0u;
    *(v28 + 32) = 0u;
    *(v28 + 48) = 0;
    swift_willThrow();
LABEL_19:
    sub_2379DBC9C(v52, v53);
    *a5 = v29;
    return;
  }

  sub_2379DBCF4(*v45, 0);
  sub_237A607E0(0, &v48);
  sub_2379DBC9C(v22, 0);
  sub_2379DBC9C(v22, 0);
  v23 = v48;
  if (v49 != 2)
  {
    sub_2379E8CE8(v48.n128_u64[0], v48.n128_u64[1], v49);
    goto LABEL_17;
  }

  v24 = sub_2379EB28C(v48.n128_i64[0], v48.n128_i64[1], a4);
  if (v25)
  {
    v48.n128_u64[0] = 0;
    v48.n128_u64[1] = 0xE000000000000000;
    sub_237C08EDC();

    v48.n128_u64[0] = 0xD000000000000017;
    v48.n128_u64[1] = 0x8000000237C17310;
    MEMORY[0x2383DC360](v23.n128_u64[0], v23.n128_u64[1]);
    sub_2379E8CE8(v23.n128_u64[0], v23.n128_u64[1], 2);
    MEMORY[0x2383DC360](544106784, 0xE400000000000000);
    v26 = MEMORY[0x2383DC4F0](a4, MEMORY[0x277D837D0]);
    MEMORY[0x2383DC360](v26);

    v27 = v48;
    sub_2379E8AF0();
    v29 = swift_allocError();
    *v28 = v27;
    goto LABEL_18;
  }

  v42 = v24;
  sub_2379E8CE8(v23.n128_u64[0], v23.n128_u64[1], 2);
  v30 = v52;
  v31 = v53;
  v50 = v52;
  v51 = v53;
  v48.n128_u64[0] = v52;
  v48.n128_u8[8] = v53;
  sub_2379DBCF4(v52, v53);
  MLDataTable.size.getter();
  v32 = sub_237A018D0();
  if (v32)
  {
    v33 = v32;
    v54 = MEMORY[0x277D84F90];
    sub_237C08FCC();
    if ((v33 & 0x8000000000000000) == 0)
    {
      v34 = 0;
      v43 = v33;
      v44 = a5;
      while (v34 != 0x7FFFFFFFFFFFFFFFLL)
      {
        MLDataTable.Rows.subscript.getter(v34, &v48);
        v35 = v48.n128_u64[1];
        if (!*(v48.n128_u64[1] + 16))
        {
          goto LABEL_33;
        }

        v36 = sub_237ACAC78(0x746E696F7079656BLL, 0xE900000000000073);
        if ((v37 & 1) == 0)
        {
          goto LABEL_33;
        }

        v38 = sub_237A2E9C8(*(*(v35 + 56) + 8 * v36));
        sub_237AFC548(v38, v45);
        if (v47 != 5)
        {
          sub_2379E8CE8(*v45, v46, v47);
          a5 = v44;
LABEL_33:
          sub_2379E8AF0();
          v29 = swift_allocError();
          *v41 = 0xD00000000000002BLL;
          *(v41 + 8) = 0x8000000237C17330;
          *(v41 + 16) = 0u;
          *(v41 + 32) = 0u;
          *(v41 + 48) = 0;
          swift_willThrow();

          sub_2379DBC9C(v30, v31);

          goto LABEL_19;
        }

        sub_237C08F8C();
        sub_237C08FEC();
        sub_237C08FFC();
        sub_237C08F9C();
        v48.n128_u64[0] = v50;
        v48.n128_u8[8] = v51;
        if (v34 >= MLDataTable.size.getter())
        {
          goto LABEL_35;
        }

        ++v34;
        a5 = v44;
        if (v43 == v34)
        {
          sub_2379DBC9C(v30, v31);
          v39 = v54;
          goto LABEL_31;
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
    }

    __break(1u);
    swift_unexpectedError();
    __break(1u);
  }

  else
  {
    sub_2379DBC9C(v30, v31);
    v39 = MEMORY[0x277D84F90];
LABEL_31:
    sub_2379E8EE0(0, &qword_27DE9ACF8, 0x277CBFF48);
    v40 = sub_2379EB400(v39, 0, 65600);
    sub_2379DBC9C(v52, v53);
    *a6 = v42;
    a6[1] = v40;
  }
}

uint64_t sub_2379EB28C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = *(a3 + 16);
  v7 = (a3 + 40);
  while (v6 != v5)
  {
    v8 = *(v7 - 1) == a1 && *v7 == a2;
    if (v8 || (sub_237C0929C() & 1) != 0)
    {
      return v5;
    }

    ++v5;
    v7 += 2;
  }

  return 0;
}

unint64_t sub_2379EB318(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3 & 0xFFFFFFFFFFFFLL;
  }

  v7 = 4 * v6;
  for (i = 15; ; i = sub_237C087AC())
  {
    if (i >> 14 == v7)
    {
      return 0;
    }

    if (sub_237C0882C() == a1 && v9 == a2)
    {
      break;
    }

    v11 = sub_237C0929C();

    if (v11)
    {
      return i;
    }
  }

  return i;
}

id sub_2379EB400(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2379E8EE0(0, &qword_27DE9ACF8, 0x277CBFF48);
  v5 = sub_237C0892C();

  v6 = [swift_getObjCClassFromMetadata() multiArrayByConcatenatingMultiArrays:v5 alongAxis:a2 dataType:a3];

  return v6;
}

uint64_t sub_2379EB49C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  *&v70 = a3;
  v67 = a4;
  v68 = a2;
  v66 = sub_237C060DC();
  OUTLINED_FUNCTION_0();
  v64 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_0();
  v65 = v8 - v7;
  v9 = sub_237C0610C();
  MEMORY[0x28223BE20](v9 - 8);
  OUTLINED_FUNCTION_2_0();
  v63[1] = v11 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACC8, &qword_237C10CF0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v63 - v13;
  v15 = sub_237C0683C();
  OUTLINED_FUNCTION_0();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  v71 = v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v73 = v63 - v21;
  MEMORY[0x28223BE20](v22);
  v72 = v63 - v23;
  MEMORY[0x28223BE20](v24);
  v26 = v63 - v25;
  v27 = sub_237C0617C();
  OUTLINED_FUNCTION_0();
  v29 = v28;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_2_0();
  v33 = v32 - v31;
  v34 = *a1;
  v35 = a1[1];
  v69 = v34;
  (*(v29 + 104))(v33, *MEMORY[0x277D2CD40], v27);
  sub_2379EBB54();
  v36 = v35;
  sub_237C088DC();
  sub_237C088DC();
  (*(v29 + 8))(v33, v27);
  if (v75 == v74)
  {
    v37 = type metadata accessor for MLHandActionClassifier.ModelParameters(0);
    v38 = v68;
    v75 = *(v68 + *(v37 + 32));
    v39 = sub_2379EBBAC(v36, &v75);

    v36 = v39;
    v40 = v38;
  }

  else
  {
    v40 = v68;
  }

  v41 = *(v40 + *(type metadata accessor for MLHandActionClassifier.ModelParameters(0) + 28));
  v42 = [v36 shape];
  sub_2379E8EE0(0, &qword_27DE9AC40, 0x277CCABB0);
  v43 = sub_237C0893C();

  OUTLINED_FUNCTION_3_4();
  if (v42)
  {
    OUTLINED_FUNCTION_23_1();
  }

  else
  {
    v44 = *(v43 + 32);
  }

  OUTLINED_FUNCTION_20_0();
  v45 = sub_237C08AFC();

  v46 = sub_237AC934C(0x10020);
  sub_237C0616C();
  OUTLINED_FUNCTION_12_1();
  sub_237B699C8(v46, v14, v26);
  OUTLINED_FUNCTION_12_1();
  v47 = v72;
  sub_237C0663C();
  if (v45 < v41)
  {
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABB8, &unk_237C0D660);
    v49 = OUTLINED_FUNCTION_26_0(v48);
    *(v49 + 16) = xmmword_237C0B680;
    v50 = v71;
    if (!__OFSUB__(v41, v45))
    {
      *(v49 + 32) = v41 - v45;
      *(v49 + 40) = xmmword_237C0BA40;
      *&v70 = v26;
      sub_237C0611C();
      (*(v64 + 104))(v65, *MEMORY[0x277D2CCC8], v66);
      OUTLINED_FUNCTION_12_1();
      v51 = v73;
      v26 = v70;
      sub_237C067BC();
      sub_237C0660C();
      v52 = *(v17 + 8);
      v52(v51, v15);
      v52(v26, v15);
      v53 = v50;
LABEL_14:
      (*(v17 + 32))(v26, v53, v15);
      goto LABEL_15;
    }

    __break(1u);
    goto LABEL_18;
  }

  v50 = v71;
  if (v41 >= v45)
  {
LABEL_15:
    v60 = *(v17 + 16);
    v60(v73, v26, v15);
    v60(v50, v47, v15);
    sub_237C0607C();

    v61 = *(v17 + 8);
    v61(v47, v15);
    return (v61)(v26, v15);
  }

  v54 = v45 - v41;
  if (__OFSUB__(v45, v41))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if ((v54 & 0x8000000000000000) != 0)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v54)
  {
    v55 = sub_2379EED84(v54);
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABB8, &unk_237C0D660);
    v57 = OUTLINED_FUNCTION_26_0(v56);
    v70 = xmmword_237C0B680;
    *(v57 + 16) = xmmword_237C0B680;
    *(v57 + 40) = 0;
    *(v57 + 48) = 0;
    *(v57 + 32) = v55;
    v58 = OUTLINED_FUNCTION_26_0(v56);
    *(v58 + 16) = v70;
    *(v58 + 32) = v41;
    *(v58 + 40) = xmmword_237C0BA40;
    v59 = v73;
    sub_237C067AC();
    v47 = v72;

    (*(v17 + 8))(v26, v15);
    v53 = v59;
    goto LABEL_14;
  }

LABEL_20:
  __break(1u);
  OUTLINED_FUNCTION_0_2();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

unint64_t sub_2379EBB54()
{
  result = qword_27DE9ACD0;
  if (!qword_27DE9ACD0)
  {
    sub_237C0617C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9ACD0);
  }

  return result;
}

void *sub_2379EBBAC(void *a1, uint64_t *a2)
{
  v5 = *a2;
  switch(sub_2379EBCFC(&v5))
  {
    case 1uLL:
      v2 = sub_2379EED84(4uLL);

      result = sub_2379EBEB8(a1, v2);
      break;
    case 2uLL:

      result = sub_2379EC52C(a1);
      break;
    case 3uLL:

      result = sub_2379ECD1C(a1);
      break;
    case 4uLL:

      result = sub_2379ED1C8(a1);
      break;
    case 5uLL:

      result = sub_2379ED654(a1);
      break;
    case 6uLL:

      result = sub_2379EDD18(a1);
      break;
    default:

      result = a1;
      break;
  }

  return result;
}

unint64_t sub_2379EBCFC(uint64_t *a1)
{
  v1 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABB8, &unk_237C0D660);
  inited = swift_initStackObject();
  v3 = inited;
  *(inited + 16) = xmmword_237C0B660;
  *(inited + 32) = 0;
  if (v1)
  {
    v4 = 2;
    sub_237BC0EB4(1, 2, 1, inited);
    v3 = inited;
    *(inited + 16) = 2;
    *(inited + 40) = 1;
    if ((v1 & 2) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v4 = 1;
    if ((v1 & 2) == 0)
    {
      goto LABEL_8;
    }
  }

  v5 = *(v3 + 24);
  if (v4 >= v5 >> 1)
  {
    OUTLINED_FUNCTION_1_1(v5);
    v3 = v20;
  }

  OUTLINED_FUNCTION_30_1();
  *(v6 + 32) = 2;
LABEL_8:
  if ((v1 & 4) != 0)
  {
    OUTLINED_FUNCTION_18_1();
    if (v8)
    {
      OUTLINED_FUNCTION_1_1(v7);
      v3 = v21;
    }

    OUTLINED_FUNCTION_30_1();
    *(v9 + 32) = 3;
    if ((v1 & 8) == 0)
    {
LABEL_10:
      if ((v1 & 0x10) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_19;
    }
  }

  else if ((v1 & 8) == 0)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_18_1();
  if (v8)
  {
    OUTLINED_FUNCTION_1_1(v10);
    v3 = v22;
  }

  OUTLINED_FUNCTION_30_1();
  *(v11 + 32) = 4;
  if ((v1 & 0x10) == 0)
  {
LABEL_11:
    if ((v1 & 0x20) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_22;
  }

LABEL_19:
  OUTLINED_FUNCTION_18_1();
  if (v8)
  {
    OUTLINED_FUNCTION_1_1(v12);
    v3 = v23;
  }

  OUTLINED_FUNCTION_30_1();
  *(v13 + 32) = 5;
  if ((v1 & 0x20) != 0)
  {
LABEL_22:
    v15 = *(v3 + 16);
    v14 = *(v3 + 24);
    if (v15 >= v14 >> 1)
    {
      OUTLINED_FUNCTION_1_1(v14);
      v3 = inited;
    }

    *(v3 + 16) = v15 + 1;
    *(v3 + 8 * v15 + 32) = 6;
  }

LABEL_25:
  v16 = sub_2379EED24(inited, v3);
  v18 = v17;

  if (v18)
  {
    return 0;
  }

  else
  {
    return v16;
  }
}

id sub_2379EBEB8(void *a1, uint64_t a2)
{
  v2 = a1;
  v3 = &off_278A42000;
  v4 = [a1 shape];
  sub_2379E8EE0(0, &qword_27DE9AC40, 0x277CCABB0);
  v5 = sub_237C0893C();

  OUTLINED_FUNCTION_3_4();
  if (v4)
  {
    goto LABEL_82;
  }

  v6 = *(v5 + 32);
  while (1)
  {
    OUTLINED_FUNCTION_20_0();
    v7 = [v4 integerValue];

    v8 = [v2 v3[232]];
    v9 = sub_237C0893C();

    OUTLINED_FUNCTION_13_0();
    if (v8)
    {
      MEMORY[0x2383DCAF0](2, v9);
    }

    else
    {
      v10 = *(v9 + 48);
    }

    OUTLINED_FUNCTION_20_0();
    v11 = [v8 integerValue];

    v12 = [v2 v3[232]];
    v13 = sub_237C0893C();

    v14 = objc_allocWithZone(MEMORY[0x277CBFF48]);
    v15 = OUTLINED_FUNCTION_8_2();
    if (v13)
    {
      break;
    }

    v16 = v15;
    v17 = sub_237C08D4C();
    v19 = v18;
    v2 = v2;
    v20 = sub_237C08D4C();
    v64 = v16;
    v66 = v11;
    if (v21 && v19)
    {
      if (v21 >= v19)
      {
        v22 = v19;
      }

      else
      {
        v22 = v21;
      }

      memcpy(v17, v20, 8 * v22);
    }

    if (a2 == 3)
    {
      return v64;
    }

    if ((v7 & 0x8000000000000000) != 0)
    {
LABEL_85:
      __break(1u);
      break;
    }

    if (!v7)
    {
      return v64;
    }

    v23 = 0;
    v65 = v7;
    while (1)
    {
      if (a2 == 1)
      {
LABEL_35:
        v3 = 0;
        while (1)
        {
          v4 = *(&unk_284AC0090 + v3 + 32);

          v36 = [v2 strides];
          v37 = sub_237C0893C();

          if ((v37 & 0xC000000000000001) != 0)
          {
            v38 = MEMORY[0x2383DCAF0](0, v37);
          }

          else
          {
            if (!*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_66;
            }

            v38 = *(v37 + 32);
          }

          v39 = v38;

          v40 = [v39 integerValue];

          v41 = v23 * v40;
          if ((v23 * v40) >> 64 != (v23 * v40) >> 63)
          {
            break;
          }

          if (!*(v4 + 16))
          {
            goto LABEL_67;
          }

          v42 = *(v4 + 32);
          v43 = [v2 strides];
          v44 = sub_237C0893C();

          if ((v44 & 0xC000000000000001) != 0)
          {
            v45 = MEMORY[0x2383DCAF0](2, v44);
          }

          else
          {
            if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
            {
              goto LABEL_69;
            }

            v45 = *(v44 + 48);
          }

          v46 = v45;

          v47 = [v46 integerValue];

          v48 = v42 * v47;
          if ((v42 * v47) >> 64 != (v42 * v47) >> 63)
          {
            goto LABEL_68;
          }

          v34 = __OFADD__(v41, v48);
          v49 = v41 + v48;
          if (v34)
          {
            goto LABEL_70;
          }

          v50 = [v2 strides];
          v51 = sub_237C0893C();

          if ((v51 & 0xC000000000000001) != 0)
          {
            v52 = MEMORY[0x2383DCAF0](0, v51);
          }

          else
          {
            if (!*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_72;
            }

            v52 = *(v51 + 32);
          }

          v53 = v52;

          v54 = [v53 integerValue];

          v55 = v23 * v54;
          if ((v23 * v54) >> 64 != (v23 * v54) >> 63)
          {
            goto LABEL_71;
          }

          if (*(v4 + 16) < 2uLL)
          {
            goto LABEL_73;
          }

          v56 = *(v4 + 40);

          v57 = [v2 strides];
          v4 = sub_237C0893C();

          if ((v4 & 0xC000000000000001) != 0)
          {
            OUTLINED_FUNCTION_22_1();
          }

          else
          {
            OUTLINED_FUNCTION_2_3();
            if (!v30)
            {
              goto LABEL_75;
            }

            v58 = *(v4 + 48);
          }

          v59 = v58;

          v4 = [v59 integerValue];

          v60 = v56 * v4;
          if ((v56 * v4) >> 64 != (v56 * v4) >> 63)
          {
            goto LABEL_74;
          }

          v34 = __OFADD__(v55, v60);
          v61 = v55 + v60;
          if (v34)
          {
            goto LABEL_76;
          }

          v62 = *(v17 + v49);
          *(v17 + v49) = *(v17 + v61);
          *(v17 + v61) = v62;
          if (++v3 == 64)
          {
            goto LABEL_63;
          }
        }

        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
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
        goto LABEL_77;
      }

      if ((v66 & 0x8000000000000000) != 0)
      {
        __break(1u);
        goto LABEL_85;
      }

      if (v66)
      {
        break;
      }

LABEL_34:
      if (a2)
      {
        goto LABEL_35;
      }

LABEL_63:
      if (++v23 == v65)
      {
        return v64;
      }
    }

    v3 = 0;
    while (1)
    {
      v24 = [v2 strides];
      v4 = sub_237C0893C();

      if ((v4 & 0xC000000000000001) != 0)
      {
        OUTLINED_FUNCTION_27_0();
      }

      else
      {
        OUTLINED_FUNCTION_4_3();
        if (!v25)
        {
          goto LABEL_78;
        }

        v26 = *(v4 + 32);
      }

      v27 = v26;

      v4 = [v27 integerValue];

      v28 = v23 * v4;
      if ((v23 * v4) >> 64 != (v23 * v4) >> 63)
      {
        break;
      }

      v29 = [v2 strides];
      v4 = sub_237C0893C();

      if ((v4 & 0xC000000000000001) != 0)
      {
        OUTLINED_FUNCTION_22_1();
      }

      else
      {
        OUTLINED_FUNCTION_2_3();
        if (!v30)
        {
          goto LABEL_80;
        }

        v31 = *(v4 + 48);
      }

      v32 = v31;

      v4 = [v32 integerValue];

      v33 = v3 * v4;
      if ((v3 * v4) >> 64 != (v3 * v4) >> 63)
      {
        goto LABEL_79;
      }

      v34 = __OFADD__(v28, v33);
      v35 = v28 + v33;
      if (v34)
      {
        goto LABEL_81;
      }

      v3 = (v3 + 1);
      *(v17 + v35) = 1.0 - *(v17 + v35);
      if (v66 == v3)
      {
        goto LABEL_34;
      }
    }

LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    OUTLINED_FUNCTION_23_1();
  }

  OUTLINED_FUNCTION_0_2();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}