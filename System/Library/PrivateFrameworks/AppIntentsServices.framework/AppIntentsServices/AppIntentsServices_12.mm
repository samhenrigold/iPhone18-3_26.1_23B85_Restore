uint64_t sub_221AA6000()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA548, &qword_221BE0BA0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v5 - v1;
  type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties(0);
  sub_221A1C558();
  v3 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.OneOf_Target(0);
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    result = sub_2219A1CC8(v2, &qword_27CFBA548, &qword_221BE0BA0);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_221BCCBF8();
    }

    result = sub_221ADFE28();
  }

  __break(1u);
  return result;
}

uint64_t sub_221AA615C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA548, &qword_221BE0BA0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties(0);
  sub_221A1C558();
  v8 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.OneOf_Target(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_2219A1CC8(v6, &qword_27CFBA548, &qword_221BE0BA0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_221ADFDB4();
      sub_221ADB35C(&unk_27CFBB940, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget, &unk_221BDE8F8);
      sub_221BCCC38();
      return sub_221ADFE28();
    }

    result = sub_221ADFE28();
  }

  __break(1u);
  return result;
}

uint64_t sub_221AA637C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA548, &qword_221BE0BA0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v5 - v1;
  type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties(0);
  sub_221A1C558();
  v3 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.OneOf_Target(0);
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    result = sub_2219A1CC8(v2, &qword_27CFBA548, &qword_221BE0BA0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_221BCCBF8();
    }

    result = sub_221ADFE28();
  }

  __break(1u);
  return result;
}

uint64_t sub_221AA64DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA3D0, &qword_221BE0A18);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties(0);
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_2219A1CC8(v6, &qword_27CFBA3D0, &qword_221BE0A18);
  }

  sub_221ADFDB4();
  sub_221ADB35C(&unk_27CFBB950, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery, &unk_221BDF460);
  sub_221BCCC38();
  return sub_221ADFE28();
}

uint64_t sub_221AA66BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties(0);
  if ((*(a1 + *(result + 36) + 8) & 1) == 0)
  {
    return sub_221BCCBB8();
  }

  return result;
}

void sub_221AA6734()
{
  OUTLINED_FUNCTION_21();
  v5 = OUTLINED_FUNCTION_88_5();
  v6 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery(v5);
  v7 = OUTLINED_FUNCTION_58_7(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_246_1();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA3D0, &qword_221BE0A18);
  OUTLINED_FUNCTION_8_1(v8);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_104_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA540, &qword_221BE0B98);
  OUTLINED_FUNCTION_57_6();
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v10);
  v11 = OUTLINED_FUNCTION_29_8();
  v12 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.OneOf_Target(v11);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_4_0();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA548, &qword_221BE0BA0);
  OUTLINED_FUNCTION_8_1(v14);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA550, &qword_221BE0BA8);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_102_3();
  OUTLINED_FUNCTION_102_2();
  v20 = v20 && v18 == v19;
  if (!v20 && (sub_221BCE1B8() & 1) == 0)
  {
    goto LABEL_26;
  }

  v47 = v3;
  v21 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties(0);
  v22 = v1;
  v23 = *(v16 + 48);
  v48 = v21;
  v49 = v22;
  OUTLINED_FUNCTION_277_0();
  sub_221A1C558();
  v24 = v0;
  OUTLINED_FUNCTION_277_0();
  sub_221A1C558();
  v25 = OUTLINED_FUNCTION_226_1();
  OUTLINED_FUNCTION_49_4(v25, v26, v12);
  if (v20)
  {
    OUTLINED_FUNCTION_49_4(v4 + v23, 1, v12);
    if (v20)
    {
      sub_2219A1CC8(v4, &qword_27CFBA548, &qword_221BE0BA0);
      goto LABEL_16;
    }

LABEL_14:
    v28 = &qword_27CFBA550;
    v29 = &qword_221BE0BA8;
    v30 = v4;
LABEL_25:
    sub_2219A1CC8(v30, v28, v29);
    goto LABEL_26;
  }

  sub_221A1C558();
  OUTLINED_FUNCTION_49_4(v4 + v23, 1, v12);
  if (v27)
  {
    OUTLINED_FUNCTION_24_9();
    sub_221ADFE28();
    goto LABEL_14;
  }

  sub_221ADFDB4();
  sub_221A8A32C();
  v32 = v31;
  sub_221ADFE28();
  sub_221ADFE28();
  sub_2219A1CC8(v4, &qword_27CFBA548, &qword_221BE0BA0);
  if ((v32 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_16:
  v33 = *(v47 + 48);
  OUTLINED_FUNCTION_269_0();
  sub_221A1C558();
  v34 = OUTLINED_FUNCTION_56_6();
  OUTLINED_FUNCTION_49_4(v34, v35, v50);
  if (!v20)
  {
    sub_221A1C558();
    OUTLINED_FUNCTION_22_9(v2 + v33);
    if (!v36)
    {
      OUTLINED_FUNCTION_260_0();
      sub_221ADFDB4();
      OUTLINED_FUNCTION_298();
      sub_221AA7FC4();
      v39 = v38;
      sub_221ADFE28();
      OUTLINED_FUNCTION_70_0();
      sub_221ADFE28();
      sub_2219A1CC8(v2, &qword_27CFBA3D0, &qword_221BE0A18);
      if ((v39 & 1) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_29;
    }

    OUTLINED_FUNCTION_175_0();
    sub_221ADFE28();
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_22_9(v2 + v33);
  if (!v20)
  {
LABEL_24:
    v28 = &qword_27CFBA540;
    v29 = &qword_221BE0B98;
    v30 = v2;
    goto LABEL_25;
  }

  sub_2219A1CC8(v2, &qword_27CFBA3D0, &qword_221BE0A18);
LABEL_29:
  v40 = *(v48 + 36);
  v41 = *(v49 + v40 + 8);
  v42 = *(v24 + v40 + 8);
  if (v41)
  {
    if (!v42)
    {
      goto LABEL_26;
    }
  }

  else
  {
    OUTLINED_FUNCTION_77_3();
    if (v43)
    {
      goto LABEL_26;
    }
  }

  sub_221A16800();
  if (v44)
  {
    sub_221BCC8D8();
    OUTLINED_FUNCTION_0_41();
    sub_221ADB35C(v45, v46, MEMORY[0x277D216D0]);
    v37 = sub_221BCD338();
    goto LABEL_27;
  }

LABEL_26:
  v37 = 0;
LABEL_27:
  OUTLINED_FUNCTION_100_3(v37);
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221AA6C74(uint64_t a1, uint64_t a2)
{
  v4 = sub_221ADB35C(&qword_27CFBA5E0, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties, &unk_221BDF590);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221AA6D14(uint64_t a1)
{
  v2 = sub_221ADB35C(&qword_27CFBA240, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties, &unk_221BDF5C8);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221AA6DDC(uint64_t a1, uint64_t a2)
{
  sub_221ADB35C(&qword_27CFBA240, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties, &unk_221BDF5C8);

  return sub_221BCCB48();
}

uint64_t sub_221AA6E5C()
{
  if (qword_27CFB6F40 != -1)
  {
    swift_once();
  }

  v1 = qword_27CFDDE68;
  v2 = qword_27CFDDE70;
  swift_bridgeObjectRetain_n();
  MEMORY[0x223DA31F0](0x747265706F72502ELL, 0xEE00797265755179);

  qword_27CFDDE90 = v1;
  *algn_27CFDDE98 = v2;
  return result;
}

uint64_t sub_221AA6F0C()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDDEA0);
  __swift_project_value_buffer(v0, qword_27CFDDEA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_221BCF7F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "compound";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_221BCCC48();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "comparison";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  return sub_221BCCC58();
}

uint64_t sub_221AA70D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.Compound(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB8E0, &unk_221BE4FD0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.OneOf_Content(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA5F0, &qword_221BE0C40);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_221A1C558();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_2219A1CC8(v10, &unk_27CFBB8E0, &unk_221BE4FD0);
  }

  else
  {
    sub_221ADFDB4();
    sub_221ADFDB4();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_221ADFE28();
    }

    else
    {
      sub_2219A1CC8(v18, &qword_27CFBA5F0, &qword_221BE0C40);
      sub_221ADFDB4();
      sub_221ADFDB4();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }
  }

  sub_221ADB35C(&qword_27CFBA208, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.Compound, &unk_221BDF2F8);
  v19 = v29;
  sub_221BCCAD8();
  if (v19)
  {
    v20 = v18;
    return sub_2219A1CC8(v20, &qword_27CFBA5F0, &qword_221BE0C40);
  }

  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v15, 1, v5) == 1)
  {
    sub_2219A1CC8(v18, &qword_27CFBA5F0, &qword_221BE0C40);
    v20 = v15;
    return sub_2219A1CC8(v20, &qword_27CFBA5F0, &qword_221BE0C40);
  }

  sub_221ADFDB4();
  if (EnumTagSinglePayload != 1)
  {
    sub_221BCC9A8();
  }

  v22 = v27;
  sub_2219A1CC8(v18, &qword_27CFBA5F0, &qword_221BE0C40);
  v23 = v25;
  sub_2219A1CC8(v25, &unk_27CFBB8E0, &unk_221BE4FD0);
  sub_221ADFDB4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_221AA75CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.Comparison(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB8E0, &unk_221BE4FD0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.OneOf_Content(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA5F8, &qword_221BE0C48);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_221A1C558();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_2219A1CC8(v10, &unk_27CFBB8E0, &unk_221BE4FD0);
  }

  else
  {
    sub_221ADFDB4();
    sub_221ADFDB4();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2219A1CC8(v18, &qword_27CFBA5F8, &qword_221BE0C48);
      sub_221ADFDB4();
      sub_221ADFDB4();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_221ADFE28();
    }
  }

  sub_221ADB35C(&unk_27CFBB970, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.Comparison, &unk_221BDF190);
  v19 = v29;
  sub_221BCCAD8();
  if (v19)
  {
    v20 = v18;
    return sub_2219A1CC8(v20, &qword_27CFBA5F8, &qword_221BE0C48);
  }

  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v15, 1, v5) == 1)
  {
    sub_2219A1CC8(v18, &qword_27CFBA5F8, &qword_221BE0C48);
    v20 = v15;
    return sub_2219A1CC8(v20, &qword_27CFBA5F8, &qword_221BE0C48);
  }

  sub_221ADFDB4();
  if (EnumTagSinglePayload != 1)
  {
    sub_221BCC9A8();
  }

  v22 = v27;
  sub_2219A1CC8(v18, &qword_27CFBA5F8, &qword_221BE0C48);
  v23 = v25;
  sub_2219A1CC8(v25, &unk_27CFBB8E0, &unk_221BE4FD0);
  sub_221ADFDB4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

void sub_221AA7AC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_356();
  OUTLINED_FUNCTION_91_5();
  v4 = OUTLINED_FUNCTION_3_4();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_8_1(v6);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_68_3();
  OUTLINED_FUNCTION_173_2();
  sub_221A1C558();
  v8 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.OneOf_Content(0);
  OUTLINED_FUNCTION_31_8(v8);
  if (v9)
  {
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_120();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = OUTLINED_FUNCTION_15_11();
    sub_221AA7DB0(v10, v11, v12, v13);
  }

  else
  {
    v14 = OUTLINED_FUNCTION_15_11();
    sub_221AA7B9C(v14, v15, v16, v17);
  }

  OUTLINED_FUNCTION_52_7();
  sub_221ADFE28();
  if (!v3)
  {
LABEL_6:
    type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery(0);
    OUTLINED_FUNCTION_94_4();
  }

  OUTLINED_FUNCTION_207_2();
  OUTLINED_FUNCTION_355();
}

uint64_t sub_221AA7B9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB8E0, &unk_221BE4FD0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.Compound(0);
  MEMORY[0x28223BE20](v7);
  sub_221A1C558();
  v8 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.OneOf_Content(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_2219A1CC8(v6, &unk_27CFBB8E0, &unk_221BE4FD0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_221ADFDB4();
      sub_221ADB35C(&qword_27CFBA208, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.Compound, &unk_221BDF2F8);
      sub_221BCCC38();
      return sub_221ADFE28();
    }

    result = sub_221ADFE28();
  }

  __break(1u);
  return result;
}

uint64_t sub_221AA7DB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB8E0, &unk_221BE4FD0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.Comparison(0);
  MEMORY[0x28223BE20](v7);
  sub_221A1C558();
  v8 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.OneOf_Content(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_2219A1CC8(v6, &unk_27CFBB8E0, &unk_221BE4FD0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_221ADFDB4();
      sub_221ADB35C(&unk_27CFBB970, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.Comparison, &unk_221BDF190);
      sub_221BCCC38();
      return sub_221ADFE28();
    }

    result = sub_221ADFE28();
  }

  __break(1u);
  return result;
}

void sub_221AA7FC4()
{
  OUTLINED_FUNCTION_21();
  v1 = OUTLINED_FUNCTION_88_5();
  type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.OneOf_Content(v1);
  OUTLINED_FUNCTION_60_6();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_14_13();
  v3 = OUTLINED_FUNCTION_120();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_8_1(v5);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_97_3();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA560, &qword_221BE0BC0);
  OUTLINED_FUNCTION_8_1(v7);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_72_5();
  OUTLINED_FUNCTION_157_1();
  OUTLINED_FUNCTION_53_7(v0);
  if (v9)
  {
    OUTLINED_FUNCTION_35_8();
    if (v9)
    {
      sub_2219A1CC8(v0, &unk_27CFBB8E0, &unk_221BE4FD0);
LABEL_12:
      type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery(0);
      OUTLINED_FUNCTION_259_0();
      sub_221BCC8D8();
      OUTLINED_FUNCTION_0_41();
      v15 = sub_221ADB35C(v13, v14, MEMORY[0x277D216D0]);
      v10 = OUTLINED_FUNCTION_36_8(v15);
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_1();
  sub_221A1C558();
  OUTLINED_FUNCTION_35_8();
  if (v9)
  {
    OUTLINED_FUNCTION_52_7();
    sub_221ADFE28();
LABEL_9:
    sub_2219A1CC8(v0, &qword_27CFBA560, &qword_221BE0BC0);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_223_2();
  OUTLINED_FUNCTION_118();
  sub_221A8A680();
  v12 = v11;
  sub_221ADFE28();
  OUTLINED_FUNCTION_234_1();
  sub_221ADFE28();
  sub_2219A1CC8(v0, &unk_27CFBB8E0, &unk_221BE4FD0);
  if (v12)
  {
    goto LABEL_12;
  }

LABEL_10:
  v10 = 0;
LABEL_13:
  OUTLINED_FUNCTION_100_3(v10);
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221AA8280(uint64_t a1, uint64_t a2)
{
  v4 = sub_221ADB35C(&qword_27CFBA5E8, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery, &unk_221BDF428);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221AA8320(uint64_t a1)
{
  v2 = sub_221ADB35C(&unk_27CFBB950, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery, &unk_221BDF460);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221AA83E8(uint64_t a1, uint64_t a2)
{
  sub_221ADB35C(&unk_27CFBB950, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery, &unk_221BDF460);

  return sub_221BCCB48();
}

uint64_t sub_221AA8468()
{
  if (qword_27CFB6F50 != -1)
  {
    swift_once();
  }

  v1 = qword_27CFDDE90;
  v2 = *algn_27CFDDE98;
  swift_bridgeObjectRetain_n();
  MEMORY[0x223DA31F0](0x6E756F706D6F432ELL, 0xE900000000000064);

  qword_27CFDDEB8 = v1;
  unk_27CFDDEC0 = v2;
  return result;
}

uint64_t sub_221AA8510()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDDEC8);
  __swift_project_value_buffer(v0, qword_27CFDDEC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_221BCF7F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "operation";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_221BCCC48();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "comparisons";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  return sub_221BCCC58();
}

uint64_t sub_221AA86D8()
{
  OUTLINED_FUNCTION_15_10();
  while (1)
  {
    OUTLINED_FUNCTION_56_3();
    result = sub_221BCC998();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      v3 = OUTLINED_FUNCTION_5_17();
      sub_221AA873C(v3, v4, v5, v6);
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_54_5();
      sub_221BCCAB8();
    }
  }

  return result;
}

uint64_t sub_221AA873C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.Comparison(0);
  sub_221ADB35C(&unk_27CFBB970, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.Comparison, &unk_221BDF190);
  return sub_221BCCAC8();
}

void sub_221AA87DC()
{
  OUTLINED_FUNCTION_151_2();
  OUTLINED_FUNCTION_7_13();
  if (!*v0 || (OUTLINED_FUNCTION_14_12(), sub_221BCCC08(), !v1))
  {
    if (!*(*(v2 + 8) + 16) || (type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.Comparison(0), sub_221ADB35C(&unk_27CFBB970, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.Comparison, &unk_221BDF190), OUTLINED_FUNCTION_91_4(), OUTLINED_FUNCTION_49_6(), sub_221BCCC18(), !v1))
    {
      type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.Compound(0);
      OUTLINED_FUNCTION_30_7();
    }
  }

  OUTLINED_FUNCTION_152_2();
}

uint64_t sub_221AA88A8(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_69_1();
  sub_221A16A34();
  if ((v2 & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.Compound(0);
  OUTLINED_FUNCTION_397();
  OUTLINED_FUNCTION_0_41();
  v5 = sub_221ADB35C(v3, v4, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_36_8(v5) & 1;
}

uint64_t sub_221AA8990(uint64_t a1, uint64_t a2)
{
  v4 = sub_221ADB35C(&qword_27CFBA600, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.Compound, &unk_221BDF2C0);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221AA8A30(uint64_t a1)
{
  v2 = sub_221ADB35C(&qword_27CFBA208, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.Compound, &unk_221BDF2F8);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221AA8AF8(uint64_t a1, uint64_t a2)
{
  sub_221ADB35C(&qword_27CFBA208, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.Compound, &unk_221BDF2F8);

  return sub_221BCCB48();
}

uint64_t sub_221AA8B78()
{
  if (qword_27CFB6F50 != -1)
  {
    swift_once();
  }

  v1 = qword_27CFDDE90;
  v2 = *algn_27CFDDE98;
  swift_bridgeObjectRetain_n();
  MEMORY[0x223DA31F0](0x697261706D6F432ELL, 0xEB000000006E6F73);

  qword_27CFDDEE0 = v1;
  *algn_27CFDDEE8 = v2;
  return result;
}

uint64_t sub_221AA8C24()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDDEF0);
  __swift_project_value_buffer(v0, qword_27CFDDEF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_221BD6DE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "operation";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_221BCCC48();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "name";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "value";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  return sub_221BCCC58();
}

uint64_t sub_221AA8E2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.Comparison(0);
  type metadata accessor for AppIntentsProtobuf_Value(0);
  sub_221ADB35C(&unk_27CFBB6C0, type metadata accessor for AppIntentsProtobuf_Value, &unk_221BD8F70);
  return sub_221BCCAD8();
}

uint64_t sub_221AA8EE0()
{
  OUTLINED_FUNCTION_7_13();
  if (!*v0 || (OUTLINED_FUNCTION_14_12(), result = sub_221BCCC08(), !v1))
  {
    OUTLINED_FUNCTION_25_8();
    if (!v4 || (result = OUTLINED_FUNCTION_124_4(v3), !v1))
    {
      v5 = OUTLINED_FUNCTION_3_21();
      result = sub_221AA8F70(v5, v6, v7, v8);
      if (!v1)
      {
        type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.Comparison(0);
        return OUTLINED_FUNCTION_30_7();
      }
    }
  }

  return result;
}

uint64_t sub_221AA8F70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB660, &qword_221BE4610);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for AppIntentsProtobuf_Value(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.Comparison(0);
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_2219A1CC8(v6, &unk_27CFBB660, &qword_221BE4610);
  }

  sub_221ADFDB4();
  sub_221ADB35C(&unk_27CFBB6C0, type metadata accessor for AppIntentsProtobuf_Value, &unk_221BD8F70);
  sub_221BCCC38();
  return sub_221ADFE28();
}

void sub_221AA9150()
{
  OUTLINED_FUNCTION_21();
  v6 = OUTLINED_FUNCTION_52_6();
  type metadata accessor for AppIntentsProtobuf_Value(v6);
  OUTLINED_FUNCTION_43_8();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_32_8();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB660, &qword_221BE4610);
  OUTLINED_FUNCTION_8_1(v8);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_157();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB85E0, &unk_221BD3E40);
  OUTLINED_FUNCTION_57_6();
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_225_0();
  OUTLINED_FUNCTION_349();
  if (!v11)
  {
    goto LABEL_19;
  }

  v11 = *(v1 + 8) == *(v0 + 8) && *(v1 + 16) == *(v0 + 16);
  if (!v11 && (sub_221BCE1B8() & 1) == 0)
  {
    goto LABEL_19;
  }

  type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.Comparison(0);
  v12 = *(v5 + 48);
  OUTLINED_FUNCTION_173_2();
  sub_221A1C558();
  OUTLINED_FUNCTION_156_0();
  OUTLINED_FUNCTION_20_8(v2);
  if (v11)
  {
    OUTLINED_FUNCTION_20_8(v2 + v12);
    if (v11)
    {
      sub_2219A1CC8(v2, &unk_27CFBB660, &qword_221BE4610);
      goto LABEL_13;
    }

    goto LABEL_17;
  }

  OUTLINED_FUNCTION_131_3();
  sub_221A1C558();
  OUTLINED_FUNCTION_20_8(v2 + v12);
  if (v17)
  {
    OUTLINED_FUNCTION_4_19();
    sub_221ADFE28();
LABEL_17:
    v18 = &qword_27CFB85E0;
    v19 = &unk_221BD3E40;
LABEL_18:
    sub_2219A1CC8(v2, v18, v19);
LABEL_19:
    v16 = 0;
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_10_14();
  sub_221ADFDB4();
  if ((MEMORY[0x223DA21A0](*v4, v4[1], *v3, v3[1]) & 1) == 0)
  {
    OUTLINED_FUNCTION_79_1();
    sub_221ADFE28();
    OUTLINED_FUNCTION_298();
    sub_221ADFE28();
    v18 = &unk_27CFBB660;
    v19 = &qword_221BE4610;
    goto LABEL_18;
  }

  v20 = sub_221BCC8D8();
  OUTLINED_FUNCTION_0_41();
  v23 = sub_221ADB35C(v21, v22, MEMORY[0x277D216D0]);
  OUTLINED_FUNCTION_312(v23);
  OUTLINED_FUNCTION_20_9();
  sub_221ADFE28();
  OUTLINED_FUNCTION_343();
  sub_221ADFE28();
  sub_2219A1CC8(v2, &unk_27CFBB660, &qword_221BE4610);
  if ((v20 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_13:
  OUTLINED_FUNCTION_315();
  OUTLINED_FUNCTION_0_41();
  v15 = sub_221ADB35C(v13, v14, MEMORY[0x277D216D0]);
  v16 = OUTLINED_FUNCTION_118_3(v15);
LABEL_20:
  OUTLINED_FUNCTION_100_3(v16);
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221AA9484(uint64_t a1, uint64_t a2)
{
  v4 = sub_221ADB35C(&qword_27CFBA608, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.Comparison, &unk_221BDF158);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221AA9524(uint64_t a1)
{
  v2 = sub_221ADB35C(&unk_27CFBB970, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.Comparison, &unk_221BDF190);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221AA95EC(uint64_t a1, uint64_t a2)
{
  sub_221ADB35C(&unk_27CFBB970, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.Comparison, &unk_221BDF190);

  return sub_221BCCB48();
}

uint64_t sub_221AA966C()
{
  if (qword_27CFB6F40 != -1)
  {
    swift_once();
  }

  v1 = qword_27CFDDE68;
  v2 = qword_27CFDDE70;
  swift_bridgeObjectRetain_n();
  MEMORY[0x223DA31F0](0x676E6974726F532ELL, 0xEF736E6F6974704FLL);

  qword_27CFDDF08 = v1;
  unk_27CFDDF10 = v2;
  return result;
}

uint64_t sub_221AA971C()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDDF18);
  __swift_project_value_buffer(v0, qword_27CFDDF18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_221BD6DE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "order";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_221BCCC48();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "propertyIndex";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "propertyName";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  return sub_221BCCC58();
}

uint64_t sub_221AA9924()
{
  OUTLINED_FUNCTION_15_10();
  while (1)
  {
    OUTLINED_FUNCTION_56_3();
    result = sub_221BCC998();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        v11 = OUTLINED_FUNCTION_5_17();
        sub_221AA9AC0(v11, v12, v13, v14);
        break;
      case 2:
        v7 = OUTLINED_FUNCTION_5_17();
        sub_221AA9A08(v7, v8, v9, v10);
        break;
      case 1:
        v3 = OUTLINED_FUNCTION_5_17();
        sub_221AA99A0(v3, v4, v5, v6);
        break;
    }
  }

  return result;
}

uint64_t sub_221AA9AC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_221BCCA88();
  if (v4)
  {
  }

  if (v10)
  {
    if (*(a2 + 32) == 255)
    {
      v7 = -1;
    }

    else
    {
      sub_221BCC9A8();
      v7 = *(a2 + 32);
    }

    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    *(a2 + 16) = 0;
    *(a2 + 24) = v10;
    *(a2 + 32) = 1;
    return sub_221AE00C4(v8, v9, v7);
  }

  return result;
}

uint64_t sub_221AA9B90()
{
  OUTLINED_FUNCTION_7_13();
  if (!*v0 || (sub_221AE0070(v3, v4, v5), OUTLINED_FUNCTION_49_6(), result = sub_221BCCB98(), !v1))
  {
    if (*(v2 + 32) == 255 || ((v7 = OUTLINED_FUNCTION_3_21(), (v11 & 1) == 0) ? (result = sub_221AA9C44(v7, v8, v9, v10)) : (result = sub_221AA9C84(v7)), !v1))
    {
      type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.SortingOptions(0);
      return OUTLINED_FUNCTION_30_7();
    }
  }

  return result;
}

uint64_t sub_221AA9C44(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 32);
  if (v4 != 255 && (v4 & 1) == 0)
  {
    return sub_221BCCBB8();
  }

  __break(1u);
  return result;
}

uint64_t sub_221AA9C84(uint64_t result)
{
  v1 = *(result + 32);
  if (v1 != 255 && (v1 & 1) != 0)
  {
    return sub_221BCCBF8();
  }

  __break(1u);
  return result;
}

uint64_t sub_221AA9CD0()
{
  OUTLINED_FUNCTION_69_1();
  v3 = *v2;
  v5 = *v4;
  if (*(v4 + 8) == 1)
  {
    if (v5)
    {
      if (v5 == 1)
      {
        if (v3 != 1)
        {
          return 0;
        }
      }

      else if (v3 != 2)
      {
        return 0;
      }
    }

    else if (v3)
    {
      return 0;
    }
  }

  else if (v3 != v5)
  {
    return 0;
  }

  v6 = *(v1 + 32);
  v7 = *(v0 + 32);
  if (v6 == 255)
  {
    if (v7 == 255)
    {
      goto LABEL_25;
    }

    return 0;
  }

  if (v7 == 255)
  {
    return 0;
  }

  v8 = *(v1 + 16);
  v9 = *(v0 + 16);
  if (v6)
  {
    if ((v7 & 1) == 0)
    {
      return 0;
    }

    v10 = v8 == v9 && *(v1 + 24) == *(v0 + 24);
    if (!v10 && (sub_221BCE1B8() & 1) == 0)
    {
      return 0;
    }
  }

  else if ((v7 & 1) != 0 || v8 != v9)
  {
    return 0;
  }

LABEL_25:
  type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.SortingOptions(0);
  OUTLINED_FUNCTION_397();
  OUTLINED_FUNCTION_0_41();
  v14 = sub_221ADB35C(v12, v13, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_36_8(v14) & 1;
}

uint64_t sub_221AA9E40(uint64_t a1, uint64_t a2)
{

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221AA9EE0(uint64_t a1)
{
  v2 = sub_221ADB35C(&unk_27CFBB960, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.SortingOptions, &unk_221BDF028);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221AA9FA8(uint64_t a1, uint64_t a2)
{
  sub_221ADB35C(&unk_27CFBB960, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.SortingOptions, &unk_221BDF028);

  return sub_221BCCB48();
}

uint64_t sub_221AAA028()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDDF30);
  __swift_project_value_buffer(v0, qword_27CFDDF30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_221BD6DE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "SORT_ORDER_UNKNOWN";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_221BCCC48();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SORT_ORDER_ASCENDING";
  *(v10 + 1) = 20;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "SORT_ORDER_DESCENDING";
  *(v12 + 1) = 21;
  v12[16] = 2;
  v9();
  return sub_221BCCC58();
}

uint64_t sub_221AAA250()
{
  if (qword_27CFB6F00 != -1)
  {
    swift_once();
  }

  v1 = qword_27CFDDDC8;
  v2 = qword_27CFDDDD0;
  swift_bridgeObjectRetain_n();
  MEMORY[0x223DA31F0](0x6E6972745379422ELL, 0xE900000000000067);

  qword_27CFDDF48 = v1;
  unk_27CFDDF50 = v2;
  return result;
}

uint64_t sub_221AAA2F8()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDDF58);
  __swift_project_value_buffer(v0, qword_27CFDDF58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_221BD8680;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "bundleIdentifier";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_221BCCC48();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "entityType";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "parameter";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "queryType";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 10;
  *v16 = "matchingString";
  *(v16 + 1) = 14;
  v16[16] = 2;
  v9();
  return sub_221BCCC58();
}

uint64_t sub_221AAA578()
{
  OUTLINED_FUNCTION_15_10();
  while (1)
  {
    OUTLINED_FUNCTION_56_3();
    result = sub_221BCC998();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_54_5();
        sub_221BCCA98();
        break;
      case 2:
        v13 = OUTLINED_FUNCTION_5_17();
        sub_221AAA628(v13, v14, v15, v16);
        break;
      case 3:
        v5 = OUTLINED_FUNCTION_40_7();
        sub_221AAA7DC(v5, v6, v7, v8);
        break;
      case 4:
        v9 = OUTLINED_FUNCTION_5_17();
        sub_221AAACE0(v9, v10, v11, v12);
        break;
      case 10:
        v3 = OUTLINED_FUNCTION_5_17();
        sub_221AAAE94(v3, v4);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_221AAA628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB8F0, &qword_221BE0B80);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14 - v7;
  v14 = 0;
  v15 = 0;
  result = sub_221BCCA88();
  if (v4)
  {
  }

  v10 = v15;
  if (v15)
  {
    v16 = v14;
    v11 = (a2 + *(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByString(0) + 20));
    sub_221A1C558();
    v12 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByString.OneOf_Target(0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v8, 1, v12);
    sub_2219A1CC8(v8, &unk_27CFBB8F0, &qword_221BE0B80);
    if (EnumTagSinglePayload != 1)
    {
      sub_221BCC9A8();
    }

    sub_2219A1CC8(v11, &unk_27CFBB8F0, &qword_221BE0B80);
    *v11 = v16;
    v11[1] = v10;
    swift_storeEnumTagMultiPayload();
    return __swift_storeEnumTagSinglePayload(v11, 0, 1, v12);
  }

  return result;
}

uint64_t sub_221AAA7DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v33 = a2;
  v5 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget(0);
  MEMORY[0x28223BE20](v5);
  v29 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB8F0, &qword_221BE0B80);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v25 - v9;
  v11 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByString.OneOf_Target(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB8C0, &unk_221BE4FB0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v25 - v17;
  __swift_storeEnumTagSinglePayload(&v25 - v17, 1, 1, v5);
  v25 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByString(0) + 20);
  v26 = a1;
  sub_221A1C558();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v28 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_2219A1CC8(v10, &unk_27CFBB8F0, &qword_221BE0B80);
  }

  else
  {
    sub_221ADFDB4();
    sub_221ADFDB4();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2219A1CC8(v18, &unk_27CFBB8C0, &unk_221BE4FB0);
      sub_221ADFDB4();
      sub_221ADFDB4();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_221ADFE28();
    }
  }

  sub_221ADB35C(&unk_27CFBB940, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget, &unk_221BDE8F8);
  v19 = v30;
  sub_221BCCAD8();
  if (v19)
  {
    v20 = v18;
    return sub_2219A1CC8(v20, &unk_27CFBB8C0, &unk_221BE4FB0);
  }

  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v15, 1, v5) == 1)
  {
    sub_2219A1CC8(v18, &unk_27CFBB8C0, &unk_221BE4FB0);
    v20 = v15;
    return sub_2219A1CC8(v20, &unk_27CFBB8C0, &unk_221BE4FB0);
  }

  sub_221ADFDB4();
  if (EnumTagSinglePayload != 1)
  {
    sub_221BCC9A8();
  }

  v22 = v28;
  sub_2219A1CC8(v18, &unk_27CFBB8C0, &unk_221BE4FB0);
  v24 = v25;
  v23 = v26;
  sub_2219A1CC8(v26 + v25, &unk_27CFBB8F0, &qword_221BE0B80);
  sub_221ADFDB4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23 + v24, 0, 1, v22);
}

uint64_t sub_221AAACE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB8F0, &qword_221BE0B80);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14 - v7;
  v14 = 0;
  v15 = 0;
  result = sub_221BCCA88();
  if (v4)
  {
  }

  v10 = v15;
  if (v15)
  {
    v16 = v14;
    v11 = (a2 + *(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByString(0) + 20));
    sub_221A1C558();
    v12 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByString.OneOf_Target(0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v8, 1, v12);
    sub_2219A1CC8(v8, &unk_27CFBB8F0, &qword_221BE0B80);
    if (EnumTagSinglePayload != 1)
    {
      sub_221BCC9A8();
    }

    sub_2219A1CC8(v11, &unk_27CFBB8F0, &qword_221BE0B80);
    *v11 = v16;
    v11[1] = v10;
    swift_storeEnumTagMultiPayload();
    return __swift_storeEnumTagSinglePayload(v11, 0, 1, v12);
  }

  return result;
}

void sub_221AAAEF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_356();
  OUTLINED_FUNCTION_7_13();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB8F0, &qword_221BE0B80);
  OUTLINED_FUNCTION_8_1(v4);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_116_5();
  v6 = OUTLINED_FUNCTION_42_8();
  if (v7)
  {
    OUTLINED_FUNCTION_103_5(v6);
    if (v3)
    {
      goto LABEL_14;
    }
  }

  type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByString(0);
  sub_221A1C558();
  v8 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByString.OneOf_Target(0);
  v9 = OUTLINED_FUNCTION_276();
  if (__swift_getEnumTagSinglePayload(v9, v10, v8) != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v14 = OUTLINED_FUNCTION_3_21();
        sub_221AAB1C4(v14, v15, v16, v17);
        OUTLINED_FUNCTION_23_11();
        sub_221ADFE28();
        if (v3)
        {
          goto LABEL_14;
        }

        goto LABEL_4;
      }

      OUTLINED_FUNCTION_23_11();
      sub_221ADFE28();
      OUTLINED_FUNCTION_3_21();
      sub_221AAB3E4();
    }

    else
    {
      OUTLINED_FUNCTION_23_11();
      sub_221ADFE28();
      OUTLINED_FUNCTION_3_21();
      sub_221AAB068();
    }

    if (v3)
    {
      goto LABEL_14;
    }
  }

LABEL_4:
  OUTLINED_FUNCTION_25_8();
  if (!v12 || (OUTLINED_FUNCTION_124_4(v11), !v3))
  {
    OUTLINED_FUNCTION_30_7();
  }

LABEL_14:
  OUTLINED_FUNCTION_207_2();
  OUTLINED_FUNCTION_355();
}

uint64_t sub_221AAB068()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB8F0, &qword_221BE0B80);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v5 - v1;
  type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByString(0);
  sub_221A1C558();
  v3 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByString.OneOf_Target(0);
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    result = sub_2219A1CC8(v2, &unk_27CFBB8F0, &qword_221BE0B80);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_221BCCBF8();
    }

    result = sub_221ADFE28();
  }

  __break(1u);
  return result;
}

uint64_t sub_221AAB1C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB8F0, &qword_221BE0B80);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByString(0);
  sub_221A1C558();
  v8 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByString.OneOf_Target(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_2219A1CC8(v6, &unk_27CFBB8F0, &qword_221BE0B80);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_221ADFDB4();
      sub_221ADB35C(&unk_27CFBB940, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget, &unk_221BDE8F8);
      sub_221BCCC38();
      return sub_221ADFE28();
    }

    result = sub_221ADFE28();
  }

  __break(1u);
  return result;
}

uint64_t sub_221AAB3E4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB8F0, &qword_221BE0B80);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v5 - v1;
  type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByString(0);
  sub_221A1C558();
  v3 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByString.OneOf_Target(0);
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    result = sub_2219A1CC8(v2, &unk_27CFBB8F0, &qword_221BE0B80);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_221BCCBF8();
    }

    result = sub_221ADFE28();
  }

  __break(1u);
  return result;
}

void sub_221AAB544()
{
  OUTLINED_FUNCTION_21();
  v4 = OUTLINED_FUNCTION_88_5();
  v5 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByString.OneOf_Target(v4);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_14_13();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB8F0, &qword_221BE0B80);
  OUTLINED_FUNCTION_8_1(v7);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_157();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA530, &qword_221BE0B88);
  OUTLINED_FUNCTION_57_6();
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_63_6();
  v12 = v12 && v10 == v11;
  if (!v12 && (sub_221BCE1B8() & 1) == 0)
  {
    goto LABEL_15;
  }

  v28 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByString(0);
  v13 = *(v3 + 48);
  OUTLINED_FUNCTION_173_2();
  sub_221A1C558();
  OUTLINED_FUNCTION_173_2();
  sub_221A1C558();
  v14 = OUTLINED_FUNCTION_56_6();
  OUTLINED_FUNCTION_49_4(v14, v15, v5);
  if (!v12)
  {
    OUTLINED_FUNCTION_131_3();
    sub_221A1C558();
    OUTLINED_FUNCTION_49_4(v2 + v13, 1, v5);
    if (!v16)
    {
      OUTLINED_FUNCTION_265_0();
      sub_221ADFDB4();
      OUTLINED_FUNCTION_63_3();
      sub_221A8AB64();
      v19 = v18;
      sub_221ADFE28();
      OUTLINED_FUNCTION_343();
      sub_221ADFE28();
      sub_2219A1CC8(v2, &unk_27CFBB8F0, &qword_221BE0B80);
      if ((v19 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_17;
    }

    OUTLINED_FUNCTION_23_11();
    sub_221ADFE28();
LABEL_14:
    sub_2219A1CC8(v2, &qword_27CFBA530, &qword_221BE0B88);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_49_4(v2 + v13, 1, v5);
  if (!v12)
  {
    goto LABEL_14;
  }

  sub_2219A1CC8(v2, &unk_27CFBB8F0, &qword_221BE0B80);
LABEL_17:
  v20 = *(v28 + 24);
  v21 = *(v1 + v20);
  v22 = *(v1 + v20 + 8);
  v23 = (v0 + v20);
  v24 = v21 == *v23 && v22 == v23[1];
  if (v24 || (sub_221BCE1B8() & 1) != 0)
  {
    sub_221BCC8D8();
    OUTLINED_FUNCTION_0_41();
    v27 = sub_221ADB35C(v25, v26, MEMORY[0x277D216D0]);
    v17 = OUTLINED_FUNCTION_36_8(v27);
    goto LABEL_23;
  }

LABEL_15:
  v17 = 0;
LABEL_23:
  OUTLINED_FUNCTION_100_3(v17);
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221AAB844(uint64_t a1, uint64_t a2)
{
  v4 = sub_221ADB35C(&qword_27CFBA620, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByString, &unk_221BDEE60);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221AAB8E4(uint64_t a1)
{
  v2 = sub_221ADB35C(&unk_27CFBB920, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByString, &unk_221BDEE98);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221AAB9AC(uint64_t a1, uint64_t a2)
{
  sub_221ADB35C(&unk_27CFBB920, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByString, &unk_221BDEE98);

  return sub_221BCCB48();
}

uint64_t sub_221AABA2C()
{
  if (qword_27CFB6F00 != -1)
  {
    swift_once();
  }

  v1 = qword_27CFDDDC8;
  v2 = qword_27CFDDDD0;
  swift_bridgeObjectRetain_n();
  MEMORY[0x223DA31F0](0xD000000000000012, 0x8000000221BEFC60);

  qword_27CFDDF70 = v1;
  *algn_27CFDDF78 = v2;
  return result;
}

uint64_t sub_221AABAD4()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDDF80);
  __swift_project_value_buffer(v0, qword_27CFDDF80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_221BD26F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "bundleIdentifier";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_221BCCC48();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "entityType";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "parameter";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "queryType";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v9();
  return sub_221BCCC58();
}

uint64_t sub_221AABD14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA588, &qword_221BE0BF0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14 - v7;
  v14 = 0;
  v15 = 0;
  result = sub_221BCCA88();
  if (v4)
  {
  }

  v10 = v15;
  if (v15)
  {
    v16 = v14;
    v11 = (a2 + *(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.SuggestedEntities(0) + 20));
    sub_221A1C558();
    v12 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.SuggestedEntities.OneOf_Target(0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v8, 1, v12);
    sub_2219A1CC8(v8, &qword_27CFBA588, &qword_221BE0BF0);
    if (EnumTagSinglePayload != 1)
    {
      sub_221BCC9A8();
    }

    sub_2219A1CC8(v11, &qword_27CFBA588, &qword_221BE0BF0);
    *v11 = v16;
    v11[1] = v10;
    swift_storeEnumTagMultiPayload();
    return __swift_storeEnumTagSinglePayload(v11, 0, 1, v12);
  }

  return result;
}

uint64_t sub_221AABEC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v33 = a2;
  v5 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget(0);
  MEMORY[0x28223BE20](v5);
  v29 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA588, &qword_221BE0BF0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v25 - v9;
  v11 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.SuggestedEntities.OneOf_Target(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB8C0, &unk_221BE4FB0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v25 - v17;
  __swift_storeEnumTagSinglePayload(&v25 - v17, 1, 1, v5);
  v25 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.SuggestedEntities(0) + 20);
  v26 = a1;
  sub_221A1C558();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v28 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_2219A1CC8(v10, &qword_27CFBA588, &qword_221BE0BF0);
  }

  else
  {
    sub_221ADFDB4();
    sub_221ADFDB4();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2219A1CC8(v18, &unk_27CFBB8C0, &unk_221BE4FB0);
      sub_221ADFDB4();
      sub_221ADFDB4();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_221ADFE28();
    }
  }

  sub_221ADB35C(&unk_27CFBB940, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget, &unk_221BDE8F8);
  v19 = v30;
  sub_221BCCAD8();
  if (v19)
  {
    v20 = v18;
    return sub_2219A1CC8(v20, &unk_27CFBB8C0, &unk_221BE4FB0);
  }

  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v15, 1, v5) == 1)
  {
    sub_2219A1CC8(v18, &unk_27CFBB8C0, &unk_221BE4FB0);
    v20 = v15;
    return sub_2219A1CC8(v20, &unk_27CFBB8C0, &unk_221BE4FB0);
  }

  sub_221ADFDB4();
  if (EnumTagSinglePayload != 1)
  {
    sub_221BCC9A8();
  }

  v22 = v28;
  sub_2219A1CC8(v18, &unk_27CFBB8C0, &unk_221BE4FB0);
  v24 = v25;
  v23 = v26;
  sub_2219A1CC8(v26 + v25, &qword_27CFBA588, &qword_221BE0BF0);
  sub_221ADFDB4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23 + v24, 0, 1, v22);
}

uint64_t sub_221AAC3CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA588, &qword_221BE0BF0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14 - v7;
  v14 = 0;
  v15 = 0;
  result = sub_221BCCA88();
  if (v4)
  {
  }

  v10 = v15;
  if (v15)
  {
    v16 = v14;
    v11 = (a2 + *(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.SuggestedEntities(0) + 20));
    sub_221A1C558();
    v12 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.SuggestedEntities.OneOf_Target(0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v8, 1, v12);
    sub_2219A1CC8(v8, &qword_27CFBA588, &qword_221BE0BF0);
    if (EnumTagSinglePayload != 1)
    {
      sub_221BCC9A8();
    }

    sub_2219A1CC8(v11, &qword_27CFBA588, &qword_221BE0BF0);
    *v11 = v16;
    v11[1] = v10;
    swift_storeEnumTagMultiPayload();
    return __swift_storeEnumTagSinglePayload(v11, 0, 1, v12);
  }

  return result;
}

void sub_221AAC580(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_356();
  OUTLINED_FUNCTION_7_13();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA588, &qword_221BE0BF0);
  OUTLINED_FUNCTION_8_1(v4);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_156();
  v6 = OUTLINED_FUNCTION_42_8();
  if (!v7 || (OUTLINED_FUNCTION_103_5(v6), !v3))
  {
    type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.SuggestedEntities(0);
    OUTLINED_FUNCTION_302();
    OUTLINED_FUNCTION_371();
    v8 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.SuggestedEntities.OneOf_Target(0);
    OUTLINED_FUNCTION_140_2(v8);
    if (!v9)
    {
      OUTLINED_FUNCTION_3_4();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          v11 = OUTLINED_FUNCTION_3_21();
          sub_221AAC808(v11, v12, v13, v14);
          OUTLINED_FUNCTION_22_10();
          sub_221ADFE28();
          if (v3)
          {
            goto LABEL_13;
          }

          goto LABEL_5;
        }

        OUTLINED_FUNCTION_22_10();
        sub_221ADFE28();
        OUTLINED_FUNCTION_3_21();
        sub_221AACA28();
      }

      else
      {
        OUTLINED_FUNCTION_22_10();
        sub_221ADFE28();
        OUTLINED_FUNCTION_3_21();
        sub_221AAC6AC();
      }

      if (v3)
      {
        goto LABEL_13;
      }
    }

LABEL_5:
    OUTLINED_FUNCTION_30_7();
  }

LABEL_13:
  OUTLINED_FUNCTION_207_2();
  OUTLINED_FUNCTION_355();
}

uint64_t sub_221AAC6AC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA588, &qword_221BE0BF0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v5 - v1;
  type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.SuggestedEntities(0);
  sub_221A1C558();
  v3 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.SuggestedEntities.OneOf_Target(0);
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    result = sub_2219A1CC8(v2, &qword_27CFBA588, &qword_221BE0BF0);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_221BCCBF8();
    }

    result = sub_221ADFE28();
  }

  __break(1u);
  return result;
}

uint64_t sub_221AAC808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA588, &qword_221BE0BF0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.SuggestedEntities(0);
  sub_221A1C558();
  v8 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.SuggestedEntities.OneOf_Target(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_2219A1CC8(v6, &qword_27CFBA588, &qword_221BE0BF0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_221ADFDB4();
      sub_221ADB35C(&unk_27CFBB940, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget, &unk_221BDE8F8);
      sub_221BCCC38();
      return sub_221ADFE28();
    }

    result = sub_221ADFE28();
  }

  __break(1u);
  return result;
}

uint64_t sub_221AACA28()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA588, &qword_221BE0BF0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v5 - v1;
  type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.SuggestedEntities(0);
  sub_221A1C558();
  v3 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.SuggestedEntities.OneOf_Target(0);
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    result = sub_2219A1CC8(v2, &qword_27CFBA588, &qword_221BE0BF0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_221BCCBF8();
    }

    result = sub_221ADFE28();
  }

  __break(1u);
  return result;
}

void sub_221AACB88()
{
  OUTLINED_FUNCTION_21();
  v2 = OUTLINED_FUNCTION_88_5();
  type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.SuggestedEntities.OneOf_Target(v2);
  OUTLINED_FUNCTION_60_6();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_14_13();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA588, &qword_221BE0BF0);
  OUTLINED_FUNCTION_8_1(v4);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_97_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA590, &qword_221BE0BF8);
  OUTLINED_FUNCTION_57_6();
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_63_6();
  v9 = v9 && v7 == v8;
  if (!v9 && (sub_221BCE1B8() & 1) == 0)
  {
    goto LABEL_15;
  }

  v10 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.SuggestedEntities(0);
  OUTLINED_FUNCTION_328(v10);
  OUTLINED_FUNCTION_173_2();
  sub_221A1C558();
  OUTLINED_FUNCTION_156_0();
  OUTLINED_FUNCTION_53_7(v0);
  if (v9)
  {
    OUTLINED_FUNCTION_53_7(v0 + v1);
    if (v9)
    {
      sub_2219A1CC8(v0, &qword_27CFBA588, &qword_221BE0BF0);
LABEL_17:
      OUTLINED_FUNCTION_315();
      OUTLINED_FUNCTION_0_41();
      v17 = sub_221ADB35C(v15, v16, MEMORY[0x277D216D0]);
      v12 = OUTLINED_FUNCTION_36_8(v17);
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  OUTLINED_FUNCTION_1();
  sub_221A1C558();
  OUTLINED_FUNCTION_53_7(v0 + v1);
  if (v11)
  {
    OUTLINED_FUNCTION_22_10();
    sub_221ADFE28();
LABEL_14:
    sub_2219A1CC8(v0, &qword_27CFBA590, &qword_221BE0BF8);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_265_0();
  sub_221ADFDB4();
  OUTLINED_FUNCTION_118();
  sub_221A8AE1C();
  v14 = v13;
  sub_221ADFE28();
  OUTLINED_FUNCTION_285_0();
  sub_221ADFE28();
  sub_2219A1CC8(v0, &qword_27CFBA588, &qword_221BE0BF0);
  if (v14)
  {
    goto LABEL_17;
  }

LABEL_15:
  v12 = 0;
LABEL_18:
  OUTLINED_FUNCTION_100_3(v12);
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221AACE9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_221ADB35C(&qword_27CFBA628, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.SuggestedEntities, &unk_221BDECF8);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221AACF3C(uint64_t a1)
{
  v2 = sub_221ADB35C(&unk_27CFBB910, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.SuggestedEntities, &unk_221BDED30);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221AAD004(uint64_t a1, uint64_t a2)
{
  sub_221ADB35C(&unk_27CFBB910, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.SuggestedEntities, &unk_221BDED30);

  return sub_221BCCB48();
}

uint64_t sub_221AAD084()
{
  if (qword_27CFB6F00 != -1)
  {
    swift_once();
  }

  v1 = qword_27CFDDDC8;
  v2 = qword_27CFDDDD0;
  swift_bridgeObjectRetain_n();
  MEMORY[0x223DA31F0](0x45657571696E552ELL, 0xED0000797469746ELL);

  qword_27CFDDF98 = v1;
  unk_27CFDDFA0 = v2;
  return result;
}

uint64_t sub_221AAD134()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDDFA8);
  __swift_project_value_buffer(v0, qword_27CFDDFA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_221BD26F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "bundleIdentifier";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_221BCCC48();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "entityType";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "parameter";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "queryType";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v9();
  return sub_221BCCC58();
}

void sub_221AAD374()
{
  OUTLINED_FUNCTION_151_2();
  v4 = v3;
  OUTLINED_FUNCTION_297();
  OUTLINED_FUNCTION_390();
  while (1)
  {
    OUTLINED_FUNCTION_221();
    v5 = sub_221BCC998();
    if (v0 || (v6 & 1) != 0)
    {
      break;
    }

    switch(v5)
    {
      case 1:
        OUTLINED_FUNCTION_343();
        sub_221BCCA98();
        break;
      case 2:
        v9 = OUTLINED_FUNCTION_142_2();
        v2(v9);
        break;
      case 3:
        v7 = OUTLINED_FUNCTION_39_4();
        v1(v7);
        break;
      case 4:
        v8 = OUTLINED_FUNCTION_142_2();
        v4(v8);
        break;
      default:
        continue;
    }
  }

  OUTLINED_FUNCTION_152_2();
}

uint64_t sub_221AAD43C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB900, &unk_221BE5080);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14 - v7;
  v14 = 0;
  v15 = 0;
  result = sub_221BCCA88();
  if (v4)
  {
  }

  v10 = v15;
  if (v15)
  {
    v16 = v14;
    v11 = (a2 + *(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.UniqueEntity(0) + 20));
    sub_221A1C558();
    v12 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.UniqueEntity.OneOf_Target(0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v8, 1, v12);
    sub_2219A1CC8(v8, &unk_27CFBB900, &unk_221BE5080);
    if (EnumTagSinglePayload != 1)
    {
      sub_221BCC9A8();
    }

    sub_2219A1CC8(v11, &unk_27CFBB900, &unk_221BE5080);
    *v11 = v16;
    v11[1] = v10;
    swift_storeEnumTagMultiPayload();
    return __swift_storeEnumTagSinglePayload(v11, 0, 1, v12);
  }

  return result;
}

uint64_t sub_221AAD5F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v33 = a2;
  v5 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget(0);
  MEMORY[0x28223BE20](v5);
  v29 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB900, &unk_221BE5080);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v25 - v9;
  v11 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.UniqueEntity.OneOf_Target(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB8C0, &unk_221BE4FB0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v25 - v17;
  __swift_storeEnumTagSinglePayload(&v25 - v17, 1, 1, v5);
  v25 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.UniqueEntity(0) + 20);
  v26 = a1;
  sub_221A1C558();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v28 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_2219A1CC8(v10, &unk_27CFBB900, &unk_221BE5080);
  }

  else
  {
    sub_221ADFDB4();
    sub_221ADFDB4();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2219A1CC8(v18, &unk_27CFBB8C0, &unk_221BE4FB0);
      sub_221ADFDB4();
      sub_221ADFDB4();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_221ADFE28();
    }
  }

  sub_221ADB35C(&unk_27CFBB940, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget, &unk_221BDE8F8);
  v19 = v30;
  sub_221BCCAD8();
  if (v19)
  {
    v20 = v18;
    return sub_2219A1CC8(v20, &unk_27CFBB8C0, &unk_221BE4FB0);
  }

  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v15, 1, v5) == 1)
  {
    sub_2219A1CC8(v18, &unk_27CFBB8C0, &unk_221BE4FB0);
    v20 = v15;
    return sub_2219A1CC8(v20, &unk_27CFBB8C0, &unk_221BE4FB0);
  }

  sub_221ADFDB4();
  if (EnumTagSinglePayload != 1)
  {
    sub_221BCC9A8();
  }

  v22 = v28;
  sub_2219A1CC8(v18, &unk_27CFBB8C0, &unk_221BE4FB0);
  v24 = v25;
  v23 = v26;
  sub_2219A1CC8(v26 + v25, &unk_27CFBB900, &unk_221BE5080);
  sub_221ADFDB4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23 + v24, 0, 1, v22);
}

uint64_t sub_221AADAF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB900, &unk_221BE5080);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14 - v7;
  v14 = 0;
  v15 = 0;
  result = sub_221BCCA88();
  if (v4)
  {
  }

  v10 = v15;
  if (v15)
  {
    v16 = v14;
    v11 = (a2 + *(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.UniqueEntity(0) + 20));
    sub_221A1C558();
    v12 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.UniqueEntity.OneOf_Target(0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v8, 1, v12);
    sub_2219A1CC8(v8, &unk_27CFBB900, &unk_221BE5080);
    if (EnumTagSinglePayload != 1)
    {
      sub_221BCC9A8();
    }

    sub_2219A1CC8(v11, &unk_27CFBB900, &unk_221BE5080);
    *v11 = v16;
    v11[1] = v10;
    swift_storeEnumTagMultiPayload();
    return __swift_storeEnumTagSinglePayload(v11, 0, 1, v12);
  }

  return result;
}

void sub_221AADCA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_356();
  OUTLINED_FUNCTION_7_13();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB900, &unk_221BE5080);
  OUTLINED_FUNCTION_8_1(v4);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_156();
  v6 = OUTLINED_FUNCTION_42_8();
  if (!v7 || (OUTLINED_FUNCTION_103_5(v6), !v3))
  {
    type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.UniqueEntity(0);
    OUTLINED_FUNCTION_302();
    OUTLINED_FUNCTION_371();
    v8 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.UniqueEntity.OneOf_Target(0);
    OUTLINED_FUNCTION_140_2(v8);
    if (!v9)
    {
      OUTLINED_FUNCTION_3_4();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          v11 = OUTLINED_FUNCTION_3_21();
          sub_221AADF30(v11, v12, v13, v14);
          OUTLINED_FUNCTION_21_9();
          sub_221ADFE28();
          if (v3)
          {
            goto LABEL_13;
          }

          goto LABEL_5;
        }

        OUTLINED_FUNCTION_21_9();
        sub_221ADFE28();
        OUTLINED_FUNCTION_3_21();
        sub_221AAE150();
      }

      else
      {
        OUTLINED_FUNCTION_21_9();
        sub_221ADFE28();
        OUTLINED_FUNCTION_3_21();
        sub_221AADDD4();
      }

      if (v3)
      {
        goto LABEL_13;
      }
    }

LABEL_5:
    OUTLINED_FUNCTION_30_7();
  }

LABEL_13:
  OUTLINED_FUNCTION_207_2();
  OUTLINED_FUNCTION_355();
}

uint64_t sub_221AADDD4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB900, &unk_221BE5080);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v5 - v1;
  type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.UniqueEntity(0);
  sub_221A1C558();
  v3 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.UniqueEntity.OneOf_Target(0);
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    result = sub_2219A1CC8(v2, &unk_27CFBB900, &unk_221BE5080);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_221BCCBF8();
    }

    result = sub_221ADFE28();
  }

  __break(1u);
  return result;
}

uint64_t sub_221AADF30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB900, &unk_221BE5080);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.UniqueEntity(0);
  sub_221A1C558();
  v8 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.UniqueEntity.OneOf_Target(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_2219A1CC8(v6, &unk_27CFBB900, &unk_221BE5080);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_221ADFDB4();
      sub_221ADB35C(&unk_27CFBB940, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget, &unk_221BDE8F8);
      sub_221BCCC38();
      return sub_221ADFE28();
    }

    result = sub_221ADFE28();
  }

  __break(1u);
  return result;
}

uint64_t sub_221AAE150()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB900, &unk_221BE5080);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v5 - v1;
  type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.UniqueEntity(0);
  sub_221A1C558();
  v3 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.UniqueEntity.OneOf_Target(0);
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    result = sub_2219A1CC8(v2, &unk_27CFBB900, &unk_221BE5080);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_221BCCBF8();
    }

    result = sub_221ADFE28();
  }

  __break(1u);
  return result;
}

void sub_221AAE2B0()
{
  OUTLINED_FUNCTION_21();
  v2 = OUTLINED_FUNCTION_88_5();
  type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.UniqueEntity.OneOf_Target(v2);
  OUTLINED_FUNCTION_60_6();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_14_13();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB900, &unk_221BE5080);
  OUTLINED_FUNCTION_8_1(v4);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_97_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA5A0, &qword_221BE0C10);
  OUTLINED_FUNCTION_57_6();
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_63_6();
  v9 = v9 && v7 == v8;
  if (!v9 && (sub_221BCE1B8() & 1) == 0)
  {
    goto LABEL_15;
  }

  v10 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.UniqueEntity(0);
  OUTLINED_FUNCTION_328(v10);
  OUTLINED_FUNCTION_173_2();
  sub_221A1C558();
  OUTLINED_FUNCTION_156_0();
  OUTLINED_FUNCTION_53_7(v0);
  if (v9)
  {
    OUTLINED_FUNCTION_53_7(v0 + v1);
    if (v9)
    {
      sub_2219A1CC8(v0, &unk_27CFBB900, &unk_221BE5080);
LABEL_17:
      OUTLINED_FUNCTION_315();
      OUTLINED_FUNCTION_0_41();
      v17 = sub_221ADB35C(v15, v16, MEMORY[0x277D216D0]);
      v12 = OUTLINED_FUNCTION_36_8(v17);
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  OUTLINED_FUNCTION_1();
  sub_221A1C558();
  OUTLINED_FUNCTION_53_7(v0 + v1);
  if (v11)
  {
    OUTLINED_FUNCTION_21_9();
    sub_221ADFE28();
LABEL_14:
    sub_2219A1CC8(v0, &qword_27CFBA5A0, &qword_221BE0C10);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_265_0();
  sub_221ADFDB4();
  OUTLINED_FUNCTION_118();
  sub_221A8B0D4();
  v14 = v13;
  sub_221ADFE28();
  OUTLINED_FUNCTION_285_0();
  sub_221ADFE28();
  sub_2219A1CC8(v0, &unk_27CFBB900, &unk_221BE5080);
  if (v14)
  {
    goto LABEL_17;
  }

LABEL_15:
  v12 = 0;
LABEL_18:
  OUTLINED_FUNCTION_100_3(v12);
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221AAE5C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_221ADB35C(&qword_27CFBA630, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.UniqueEntity, &unk_221BDEB90);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221AAE664(uint64_t a1)
{
  v2 = sub_221ADB35C(&qword_27CFBA188, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.UniqueEntity, &unk_221BDEBC8);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221AAE72C(uint64_t a1, uint64_t a2)
{
  sub_221ADB35C(&qword_27CFBA188, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.UniqueEntity, &unk_221BDEBC8);

  return sub_221BCCB48();
}

uint64_t sub_221AAE7AC()
{
  if (qword_27CFB6F00 != -1)
  {
    swift_once();
  }

  v1 = qword_27CFDDDC8;
  v2 = qword_27CFDDDD0;
  swift_bridgeObjectRetain_n();
  MEMORY[0x223DA31F0](0x736E6F6974704F2ELL, 0xE800000000000000);

  qword_27CFDDFC0 = v1;
  *algn_27CFDDFC8 = v2;
  return result;
}

uint64_t sub_221AAE850()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDDFD0);
  __swift_project_value_buffer(v0, qword_27CFDDFD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_221BCF7F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "exportedContentTypeIdentifier";
  *(v6 + 8) = 29;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_221BCCC48();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "convertArrayResultToAsyncSequence";
  *(v10 + 1) = 33;
  v10[16] = 2;
  v9();
  return sub_221BCCC58();
}

uint64_t sub_221AAEA18()
{
  OUTLINED_FUNCTION_15_10();
  while (1)
  {
    OUTLINED_FUNCTION_56_3();
    result = sub_221BCC998();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      v3 = OUTLINED_FUNCTION_5_17();
      sub_221AAEAE0(v3, v4, v5, v6);
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_5_17();
      sub_221AAEA90();
    }
  }

  return result;
}

uint64_t sub_221AAEA90()
{
  OUTLINED_FUNCTION_113_5();
  v0(0);
  OUTLINED_FUNCTION_338();
  OUTLINED_FUNCTION_58_6();
  return sub_221BCCA88();
}

uint64_t sub_221AAEB44()
{
  OUTLINED_FUNCTION_109_2();
  OUTLINED_FUNCTION_34_8();
  result = sub_221AAEBA0();
  if (!v0)
  {
    v2 = OUTLINED_FUNCTION_34_8();
    sub_221AAEC0C(v2, v3, v4, v5);
    OUTLINED_FUNCTION_112_4();
    return sub_221BCC8B8();
  }

  return result;
}

uint64_t sub_221AAEBA0()
{
  OUTLINED_FUNCTION_113_5();
  result = v1(0);
  if (*(v0 + *(result + 20) + 8))
  {
    return sub_221BCCBF8();
  }

  return result;
}

uint64_t sub_221AAEC0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.Options(0);
  if (*(a1 + *(result + 24)) != 2)
  {
    return sub_221BCCB88();
  }

  return result;
}

uint64_t sub_221AAEC84()
{
  v2 = OUTLINED_FUNCTION_88_5();
  v3 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.Options(v2);
  OUTLINED_FUNCTION_214_0();
  if (v6)
  {
    if (!v4)
    {
      return 0;
    }

    OUTLINED_FUNCTION_61_3(v5);
    v9 = v9 && v7 == v8;
    if (!v9 && (sub_221BCE1B8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v4)
  {
    return 0;
  }

  v10 = *(v3 + 24);
  v11 = *(v1 + v10);
  v12 = *(v0 + v10);
  if (v11 != 2)
  {
    if (v12 != 2 && ((v11 ^ v12) & 1) == 0)
    {
      goto LABEL_16;
    }

    return 0;
  }

  if (v12 != 2)
  {
    return 0;
  }

LABEL_16:
  sub_221BCC8D8();
  OUTLINED_FUNCTION_0_41();
  v16 = sub_221ADB35C(v14, v15, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_135_3(v16) & 1;
}

uint64_t sub_221AAEDAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_221ADB35C(&qword_27CFBA638, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.Options, &unk_221BDEA28);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221AAEE4C(uint64_t a1)
{
  v2 = sub_221ADB35C(&qword_27CFBA168, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.Options, &unk_221BDEA60);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221AAEF14(uint64_t a1, uint64_t a2)
{
  sub_221ADB35C(&qword_27CFBA168, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.Options, &unk_221BDEA60);

  return sub_221BCCB48();
}

uint64_t sub_221AAEF94()
{
  if (qword_27CFB6F00 != -1)
  {
    swift_once();
  }

  v1 = qword_27CFDDDC8;
  v2 = qword_27CFDDDD0;
  swift_bridgeObjectRetain_n();
  MEMORY[0x223DA31F0](0xD000000000000010, 0x8000000221BEFC80);

  qword_27CFDDFE8 = v1;
  unk_27CFDDFF0 = v2;
  return result;
}

uint64_t sub_221AAF03C()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDDFF8);
  __swift_project_value_buffer(v0, qword_27CFDDFF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_221BCF7F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "actionIdentifier";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_221BCCC48();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "parameterName";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  return sub_221BCCC58();
}

uint64_t sub_221AAF204()
{
  OUTLINED_FUNCTION_7_13();
  v1 = OUTLINED_FUNCTION_42_8();
  if (!v2 || (result = OUTLINED_FUNCTION_103_5(v1), !v0))
  {
    OUTLINED_FUNCTION_25_8();
    if (!v5 || (result = OUTLINED_FUNCTION_124_4(v4), !v0))
    {
      type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget(0);
      return OUTLINED_FUNCTION_30_7();
    }
  }

  return result;
}

uint64_t sub_221AAF27C()
{
  OUTLINED_FUNCTION_69_1();
  OUTLINED_FUNCTION_102_2();
  v4 = v4 && v2 == v3;
  if (!v4 && (sub_221BCE1B8() & 1) == 0)
  {
    return 0;
  }

  v5 = *(v1 + 16) == *(v0 + 16) && *(v1 + 24) == *(v0 + 24);
  if (!v5 && (sub_221BCE1B8() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget(0);
  OUTLINED_FUNCTION_397();
  OUTLINED_FUNCTION_0_41();
  v8 = sub_221ADB35C(v6, v7, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_36_8(v8) & 1;
}

uint64_t sub_221AAF36C(uint64_t a1, uint64_t a2)
{
  v4 = sub_221ADB35C(&qword_27CFBA640, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget, &unk_221BDE8C0);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221AAF40C(uint64_t a1)
{
  v2 = sub_221ADB35C(&unk_27CFBB940, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget, &unk_221BDE8F8);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221AAF4D4(uint64_t a1, uint64_t a2)
{
  sub_221ADB35C(&unk_27CFBB940, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget, &unk_221BDE8F8);

  return sub_221BCCB48();
}

uint64_t sub_221AAF554()
{
  result = MEMORY[0x223DA31F0](0xD000000000000022, 0x8000000221BEFCA0);
  qword_27CFDE010 = 0xD000000000000021;
  *algn_27CFDE018 = 0x8000000221BEF7F0;
  return result;
}

uint64_t sub_221AAF5C0()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDE020);
  __swift_project_value_buffer(v0, qword_27CFDE020);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_221BD26F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "propertyIdentifier";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_221BCCC48();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "entityIdentifier";
  *(v10 + 8) = 16;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "bundleIdentifier";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 102;
  *v14 = "requestMetadata";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v9();
  return sub_221BCCC58();
}

uint64_t sub_221AAF800()
{
  OUTLINED_FUNCTION_15_10();
  while (1)
  {
    OUTLINED_FUNCTION_56_3();
    result = sub_221BCC998();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 102:
        v7 = OUTLINED_FUNCTION_5_17();
        sub_221AAF944(v7, v8, v9, v10);
        break;
      case 2:
        v3 = OUTLINED_FUNCTION_5_17();
        sub_221AAF890(v3, v4, v5, v6);
        break;
      case 3:
      case 1:
        OUTLINED_FUNCTION_58_6();
        sub_221BCCA98();
        break;
    }
  }

  return result;
}

uint64_t sub_221AAF890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchDeferredPropertyValueRequest(0);
  type metadata accessor for AppIntentsProtobuf_EntityIdentifier(0);
  sub_221ADB35C(&qword_27CFB9800, type metadata accessor for AppIntentsProtobuf_EntityIdentifier, &unk_221BD9EE8);
  return sub_221BCCAD8();
}

uint64_t sub_221AAF944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchDeferredPropertyValueRequest(0);
  type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(0);
  sub_221ADB35C(&unk_27CFBB0F0, type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata, &unk_221BDD980);
  return sub_221BCCAD8();
}

uint64_t sub_221AAF9F8()
{
  OUTLINED_FUNCTION_7_13();
  v1 = OUTLINED_FUNCTION_42_8();
  if (!v2 || (result = OUTLINED_FUNCTION_103_5(v1), !v0))
  {
    v4 = OUTLINED_FUNCTION_3_21();
    result = sub_221AAFA94(v4, v5, v6, v7);
    if (!v0)
    {
      OUTLINED_FUNCTION_25_8();
      if (v9)
      {
        OUTLINED_FUNCTION_124_4(v8);
      }

      v10 = OUTLINED_FUNCTION_3_21();
      sub_221AAFC74(v10, v11, v12, v13);
      type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchDeferredPropertyValueRequest(0);
      return OUTLINED_FUNCTION_30_7();
    }
  }

  return result;
}

uint64_t sub_221AAFA94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB9A0, &qword_221BE0C50);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for AppIntentsProtobuf_EntityIdentifier(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchDeferredPropertyValueRequest(0);
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_2219A1CC8(v6, &unk_27CFBB9A0, &qword_221BE0C50);
  }

  sub_221ADFDB4();
  sub_221ADB35C(&qword_27CFB9800, type metadata accessor for AppIntentsProtobuf_EntityIdentifier, &unk_221BD9EE8);
  sub_221BCCC38();
  return sub_221ADFE28();
}

uint64_t sub_221AAFC74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB600, &qword_221BE44B0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchDeferredPropertyValueRequest(0);
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_2219A1CC8(v6, &unk_27CFBB600, &qword_221BE44B0);
  }

  sub_221ADFDB4();
  sub_221ADB35C(&unk_27CFBB0F0, type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata, &unk_221BDD980);
  sub_221BCCC38();
  return sub_221ADFE28();
}

void sub_221AAFE54()
{
  OUTLINED_FUNCTION_21();
  v6 = OUTLINED_FUNCTION_52_6();
  v7 = type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(v6);
  v8 = OUTLINED_FUNCTION_58_7(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_32_8();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB600, &qword_221BE44B0);
  OUTLINED_FUNCTION_8_1(v9);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_116_5();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA3F0, &qword_221BE0A60);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_99_3();
  type metadata accessor for AppIntentsProtobuf_EntityIdentifier(0);
  OUTLINED_FUNCTION_43_8();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_4_0();
  v15 = (v14 - v13);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB9A0, &qword_221BE0C50);
  OUTLINED_FUNCTION_8_1(v16);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_156();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA650, &qword_221BE0C58);
  OUTLINED_FUNCTION_60_6();
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_102_3();
  OUTLINED_FUNCTION_102_2();
  v21 = v21 && v19 == v20;
  if (!v21 && (sub_221BCE1B8() & 1) == 0)
  {
    goto LABEL_17;
  }

  type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchDeferredPropertyValueRequest(0);
  v22 = *(v2 + 48);
  OUTLINED_FUNCTION_378();
  sub_221A1C558();
  OUTLINED_FUNCTION_378();
  sub_221A1C558();
  OUTLINED_FUNCTION_20_8(v5);
  if (v21)
  {
    OUTLINED_FUNCTION_20_8(v5 + v22);
    if (v21)
    {
      sub_2219A1CC8(v5, &unk_27CFBB9A0, &qword_221BE0C50);
      goto LABEL_30;
    }

    goto LABEL_14;
  }

  sub_221A1C558();
  OUTLINED_FUNCTION_20_8(v5 + v22);
  if (v23)
  {
    sub_221ADFE28();
LABEL_14:
    v24 = &qword_27CFBA650;
    v25 = &qword_221BE0C58;
LABEL_15:
    v26 = v5;
LABEL_16:
    sub_2219A1CC8(v26, v24, v25);
    goto LABEL_17;
  }

  sub_221ADFDB4();
  v28 = *v4 == *v15 && v4[1] == v15[1];
  if (!v28 && (sub_221BCE1B8() & 1) == 0 || (v4[2] == v15[2] ? (v29 = v4[3] == v15[3]) : (v29 = 0), !v29 && (sub_221BCE1B8() & 1) == 0))
  {
    sub_221ADFE28();
    sub_221ADFE28();
    v24 = &unk_27CFBB9A0;
    v25 = &qword_221BE0C50;
    goto LABEL_15;
  }

  sub_221BCC8D8();
  OUTLINED_FUNCTION_0_41();
  sub_221ADB35C(v30, v31, MEMORY[0x277D216D0]);
  v32 = sub_221BCD338();
  sub_221ADFE28();
  sub_221ADFE28();
  sub_2219A1CC8(v5, &unk_27CFBB9A0, &qword_221BE0C50);
  if ((v32 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_30:
  v33 = *(v1 + 16) == *(v0 + 16) && *(v1 + 24) == *(v0 + 24);
  if (!v33 && (sub_221BCE1B8() & 1) == 0)
  {
    goto LABEL_17;
  }

  v34 = *(v42 + 48);
  OUTLINED_FUNCTION_391();
  OUTLINED_FUNCTION_393();
  v35 = OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_49_4(v35, v36, v43);
  if (v21)
  {
    OUTLINED_FUNCTION_20_8(v3 + v34);
    if (v21)
    {
      sub_2219A1CC8(v3, &unk_27CFBB600, &qword_221BE44B0);
LABEL_46:
      sub_221BCC8D8();
      OUTLINED_FUNCTION_0_41();
      v41 = sub_221ADB35C(v39, v40, MEMORY[0x277D216D0]);
      v27 = OUTLINED_FUNCTION_118_3(v41);
      goto LABEL_18;
    }

    goto LABEL_43;
  }

  sub_221A1C558();
  OUTLINED_FUNCTION_20_8(v3 + v34);
  if (v37)
  {
    OUTLINED_FUNCTION_8_14();
    sub_221ADFE28();
LABEL_43:
    v24 = &qword_27CFBA3F0;
    v25 = &qword_221BE0A60;
    v26 = v3;
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_7_14();
  OUTLINED_FUNCTION_381();
  sub_221ADFDB4();
  v38 = sub_221AB95D0();
  sub_221ADFE28();
  sub_221ADFE28();
  sub_2219A1CC8(v3, &unk_27CFBB600, &qword_221BE44B0);
  if (v38)
  {
    goto LABEL_46;
  }

LABEL_17:
  v27 = 0;
LABEL_18:
  OUTLINED_FUNCTION_100_3(v27);
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221AB03E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_221ADB35C(&qword_27CFBA648, type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchDeferredPropertyValueRequest, &unk_221BDE758);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221AB0488(uint64_t a1)
{
  v2 = sub_221ADB35C(&unk_27CFBB520, type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchDeferredPropertyValueRequest, &unk_221BDE790);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221AB0550(uint64_t a1, uint64_t a2)
{
  sub_221ADB35C(&unk_27CFBB520, type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchDeferredPropertyValueRequest, &unk_221BDE790);

  return sub_221BCCB48();
}

uint64_t sub_221AB05D0()
{
  result = MEMORY[0x223DA31F0](0xD00000000000001BLL, 0x8000000221BEFD10);
  qword_27CFDE038 = 0xD000000000000021;
  unk_27CFDE040 = 0x8000000221BEF7F0;
  return result;
}

uint64_t sub_221AB0644()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDE048);
  __swift_project_value_buffer(v0, qword_27CFDE048);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_221BD26F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "sequenceIdentifier";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_221BCCC48();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 100;
  *v10 = "pageSize";
  *(v10 + 8) = 8;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 101;
  *v12 = "exportedContentTypeIdentifier";
  *(v12 + 1) = 29;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 103;
  *v14 = "requestMetadata";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v9();
  return sub_221BCCC58();
}

uint64_t sub_221AB088C()
{
  OUTLINED_FUNCTION_15_10();
  while (1)
  {
    OUTLINED_FUNCTION_56_3();
    result = sub_221BCC998();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 103:
        v11 = OUTLINED_FUNCTION_5_17();
        sub_221AB0A4C(v11, v12, v13, v14);
        break;
      case 100:
        v7 = OUTLINED_FUNCTION_5_17();
        sub_221AB09E8(v7, v8, v9, v10);
        break;
      case 101:
        OUTLINED_FUNCTION_5_17();
        sub_221AB4384();
        break;
      case 1:
        v3 = OUTLINED_FUNCTION_5_17();
        sub_221AB0934(v3, v4, v5, v6);
        break;
    }
  }

  return result;
}

uint64_t sub_221AB0934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AppIntentsProtobuf_ClientMessages.CreateAsyncIteratorRequest(0);
  type metadata accessor for AppIntentsProtobuf_UUID(0);
  sub_221ADB35C(&unk_27CFBB750, type metadata accessor for AppIntentsProtobuf_UUID, &unk_221BD90D8);
  return sub_221BCCAD8();
}

uint64_t sub_221AB0A4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AppIntentsProtobuf_ClientMessages.CreateAsyncIteratorRequest(0);
  type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(0);
  sub_221ADB35C(&unk_27CFBB0F0, type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata, &unk_221BDD980);
  return sub_221BCCAD8();
}

uint64_t sub_221AB0B00()
{
  OUTLINED_FUNCTION_109_2();
  v1 = OUTLINED_FUNCTION_34_8();
  result = sub_221AB0B78(v1, v2, v3, v4);
  if (!v0)
  {
    v6 = OUTLINED_FUNCTION_34_8();
    sub_221AB0D58(v6, v7, v8, v9);
    OUTLINED_FUNCTION_34_8();
    sub_221AB47D0();
    v10 = OUTLINED_FUNCTION_34_8();
    sub_221AB0DD0(v10, v11, v12, v13);
    OUTLINED_FUNCTION_112_4();
    return sub_221BCC8B8();
  }

  return result;
}

uint64_t sub_221AB0B78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9988, &qword_221BDAE20);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for AppIntentsProtobuf_ClientMessages.CreateAsyncIteratorRequest(0);
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_2219A1CC8(v6, &qword_27CFB9988, &qword_221BDAE20);
  }

  sub_221ADFDB4();
  sub_221ADB35C(&unk_27CFBB750, type metadata accessor for AppIntentsProtobuf_UUID, &unk_221BD90D8);
  sub_221BCCC38();
  return sub_221ADFE28();
}

uint64_t sub_221AB0D58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for AppIntentsProtobuf_ClientMessages.CreateAsyncIteratorRequest(0);
  if ((*(a1 + *(result + 24) + 8) & 1) == 0)
  {
    return sub_221BCCBB8();
  }

  return result;
}

uint64_t sub_221AB0DD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB600, &qword_221BE44B0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for AppIntentsProtobuf_ClientMessages.CreateAsyncIteratorRequest(0);
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_2219A1CC8(v6, &unk_27CFBB600, &qword_221BE44B0);
  }

  sub_221ADFDB4();
  sub_221ADB35C(&unk_27CFBB0F0, type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata, &unk_221BDD980);
  sub_221BCCC38();
  return sub_221ADFE28();
}

void sub_221AB0FB0()
{
  OUTLINED_FUNCTION_21();
  v3 = v2;
  v5 = v4;
  v47 = type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(0);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_17_12(v7, v44);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB600, &qword_221BE44B0);
  OUTLINED_FUNCTION_8_1(v8);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_89_5(v10, v45);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA3F0, &qword_221BE0A60);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_104_2();
  v48 = v12;
  v13 = OUTLINED_FUNCTION_133_3();
  type metadata accessor for AppIntentsProtobuf_UUID(v13);
  OUTLINED_FUNCTION_43_8();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_4_0();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9988, &qword_221BDAE20);
  OUTLINED_FUNCTION_8_1(v15);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_225_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9990, &qword_221BDAE28);
  OUTLINED_FUNCTION_221_2();
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v17);
  v18 = OUTLINED_FUNCTION_96_5();
  AsyncIteratorRequest = type metadata accessor for AppIntentsProtobuf_ClientMessages.CreateAsyncIteratorRequest(v18);
  v19 = *(v0 + 56);
  sub_221A1C558();
  sub_221A1C558();
  OUTLINED_FUNCTION_20_8(v1);
  if (v23)
  {
    OUTLINED_FUNCTION_20_8(v1 + v19);
    if (v23)
    {
      goto LABEL_5;
    }

LABEL_11:
    v24 = &qword_27CFB9990;
    v25 = &qword_221BDAE28;
LABEL_20:
    v30 = v1;
LABEL_21:
    sub_2219A1CC8(v30, v24, v25);
    goto LABEL_22;
  }

  sub_221A1C558();
  OUTLINED_FUNCTION_20_8(v1 + v19);
  if (v23)
  {
    OUTLINED_FUNCTION_2_30();
    sub_221ADFE28();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_3_22();
  sub_221ADFDB4();
  OUTLINED_FUNCTION_349();
  if (!v26 || (OUTLINED_FUNCTION_385(), !v23))
  {
    OUTLINED_FUNCTION_2_30();
    sub_221ADFE28();
    goto LABEL_19;
  }

  sub_221BCC8D8();
  OUTLINED_FUNCTION_0_41();
  sub_221ADB35C(v27, v28, MEMORY[0x277D216D0]);
  v29 = sub_221BCD338();
  OUTLINED_FUNCTION_2_30();
  sub_221ADFE28();
  if ((v29 & 1) == 0)
  {
LABEL_19:
    OUTLINED_FUNCTION_2_30();
    sub_221ADFE28();
    v24 = &qword_27CFB9988;
    v25 = &qword_221BDAE20;
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_2_30();
  sub_221ADFE28();
LABEL_5:
  sub_2219A1CC8(v1, &qword_27CFB9988, &qword_221BDAE20);
  v20 = *(AsyncIteratorRequest + 24);
  v21 = *(v5 + v20 + 8);
  v22 = *(v3 + v20 + 8);
  if ((v21 & 1) == 0)
  {
    OUTLINED_FUNCTION_77_3();
    if (v32)
    {
      goto LABEL_22;
    }

LABEL_25:
    v33 = *(AsyncIteratorRequest + 28);
    v34 = *(v3 + v33 + 8);
    if (*(v5 + v33 + 8))
    {
      if (!v34)
      {
        goto LABEL_22;
      }

      OUTLINED_FUNCTION_61_3(v5 + v33);
      v37 = v23 && v35 == v36;
      if (!v37 && (sub_221BCE1B8() & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    else if (v34)
    {
      goto LABEL_22;
    }

    v38 = *(v46 + 48);
    OUTLINED_FUNCTION_233_0();
    OUTLINED_FUNCTION_239_1();
    v39 = OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_81_5(v39, v40);
    if (v23)
    {
      OUTLINED_FUNCTION_39_8(v48 + v38);
      if (v23)
      {
        sub_2219A1CC8(v48, &unk_27CFBB600, &qword_221BE44B0);
        goto LABEL_44;
      }
    }

    else
    {
      sub_221A1C558();
      OUTLINED_FUNCTION_39_8(v48 + v38);
      if (!v41)
      {
        OUTLINED_FUNCTION_7_14();
        OUTLINED_FUNCTION_325();
        OUTLINED_FUNCTION_324();
        sub_221AB95D0();
        OUTLINED_FUNCTION_12_8();
        sub_221ADFE28();
        OUTLINED_FUNCTION_323();
        sub_221ADFE28();
        sub_2219A1CC8(v48, &unk_27CFBB600, &qword_221BE44B0);
        if ((v47 & 1) == 0)
        {
          goto LABEL_22;
        }

LABEL_44:
        sub_221BCC8D8();
        OUTLINED_FUNCTION_0_41();
        sub_221ADB35C(v42, v43, MEMORY[0x277D216D0]);
        OUTLINED_FUNCTION_136_0();
        v31 = sub_221BCD338();
        goto LABEL_23;
      }

      OUTLINED_FUNCTION_8_14();
      sub_221ADFE28();
    }

    v24 = &qword_27CFBA3F0;
    v25 = &qword_221BE0A60;
    v30 = v48;
    goto LABEL_21;
  }

  if (v22)
  {
    goto LABEL_25;
  }

LABEL_22:
  v31 = 0;
LABEL_23:
  OUTLINED_FUNCTION_100_3(v31);
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221AB14DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_221ADB35C(&qword_27CFBA658, type metadata accessor for AppIntentsProtobuf_ClientMessages.CreateAsyncIteratorRequest, &unk_221BDE5F0);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221AB157C(uint64_t a1)
{
  v2 = sub_221ADB35C(&unk_27CFBB5E0, type metadata accessor for AppIntentsProtobuf_ClientMessages.CreateAsyncIteratorRequest, &unk_221BDE628);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221AB1644(uint64_t a1, uint64_t a2)
{
  sub_221ADB35C(&unk_27CFBB5E0, type metadata accessor for AppIntentsProtobuf_ClientMessages.CreateAsyncIteratorRequest, &unk_221BDE628);

  return sub_221BCCB48();
}

uint64_t sub_221AB16C4()
{
  result = MEMORY[0x223DA31F0](0xD000000000000025, 0x8000000221BEFD40);
  qword_27CFDE060 = 0xD000000000000021;
  *algn_27CFDE068 = 0x8000000221BEF7F0;
  return result;
}

uint64_t sub_221AB1730()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDE070);
  __swift_project_value_buffer(v0, qword_27CFDE070);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_221BD6DE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "sequenceIdentifier";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_221BCCC48();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "iteratorIdentifier";
  *(v10 + 1) = 18;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 102;
  *v12 = "requestMetadata";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  return sub_221BCCC58();
}

uint64_t sub_221AB1938()
{
  OUTLINED_FUNCTION_15_10();
  while (1)
  {
    OUTLINED_FUNCTION_56_3();
    result = sub_221BCC998();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 102:
        v7 = OUTLINED_FUNCTION_5_17();
        sub_221AB1A68(v7, v8, v9, v10);
        break;
      case 2:
        OUTLINED_FUNCTION_54_5();
        sub_221BCCA38();
        break;
      case 1:
        v3 = OUTLINED_FUNCTION_5_17();
        sub_221AB19B4(v3, v4, v5, v6);
        break;
    }
  }

  return result;
}

uint64_t sub_221AB19B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchNextAsyncIteratorResultsRequest(0);
  type metadata accessor for AppIntentsProtobuf_UUID(0);
  sub_221ADB35C(&unk_27CFBB750, type metadata accessor for AppIntentsProtobuf_UUID, &unk_221BD90D8);
  return sub_221BCCAD8();
}

uint64_t sub_221AB1A68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchNextAsyncIteratorResultsRequest(0);
  type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(0);
  sub_221ADB35C(&unk_27CFBB0F0, type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata, &unk_221BDD980);
  return sub_221BCCAD8();
}

uint64_t sub_221AB1B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9988, &qword_221BDAE20);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchNextAsyncIteratorResultsRequest(0);
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_2219A1CC8(v6, &qword_27CFB9988, &qword_221BDAE20);
  }

  sub_221ADFDB4();
  sub_221ADB35C(&unk_27CFBB750, type metadata accessor for AppIntentsProtobuf_UUID, &unk_221BD90D8);
  sub_221BCCC38();
  return sub_221ADFE28();
}

uint64_t sub_221AB1CFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB600, &qword_221BE44B0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchNextAsyncIteratorResultsRequest(0);
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_2219A1CC8(v6, &unk_27CFBB600, &qword_221BE44B0);
  }

  sub_221ADFDB4();
  sub_221ADB35C(&unk_27CFBB0F0, type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata, &unk_221BDD980);
  sub_221BCCC38();
  return sub_221ADFE28();
}

void sub_221AB1EDC()
{
  OUTLINED_FUNCTION_21();
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(0);
  v7 = OUTLINED_FUNCTION_67_4(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_17_12(v8, v38);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB600, &qword_221BE44B0);
  OUTLINED_FUNCTION_8_1(v9);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_89_5(v11, v39);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA3F0, &qword_221BE0A60);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v12);
  v14 = OUTLINED_FUNCTION_41_4(v13, v40);
  type metadata accessor for AppIntentsProtobuf_UUID(v14);
  OUTLINED_FUNCTION_43_8();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_14_13();
  v16 = OUTLINED_FUNCTION_131_3();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(v16, v17);
  OUTLINED_FUNCTION_8_1(v18);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_74_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9990, &qword_221BDAE28);
  OUTLINED_FUNCTION_221_2();
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v20);
  v21 = OUTLINED_FUNCTION_96_5();
  type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchNextAsyncIteratorResultsRequest(v21);
  v22 = *(v0 + 56);
  OUTLINED_FUNCTION_309();
  OUTLINED_FUNCTION_309();
  OUTLINED_FUNCTION_20_8(v1);
  if (v24)
  {
    OUTLINED_FUNCTION_20_8(v1 + v22);
    if (v24)
    {
      goto LABEL_5;
    }

LABEL_14:
    v25 = &qword_27CFB9990;
    v26 = &qword_221BDAE28;
LABEL_23:
    v32 = v1;
LABEL_24:
    sub_2219A1CC8(v32, v25, v26);
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_353();
  OUTLINED_FUNCTION_20_8(v1 + v22);
  if (v24)
  {
    OUTLINED_FUNCTION_2_30();
    sub_221ADFE28();
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_3_22();
  sub_221ADFDB4();
  OUTLINED_FUNCTION_180_1();
  if (!v27 || (OUTLINED_FUNCTION_179_1(), !v24))
  {
    OUTLINED_FUNCTION_2_30();
    sub_221ADFE28();
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_335();
  OUTLINED_FUNCTION_0_41();
  v30 = sub_221ADB35C(v28, v29, MEMORY[0x277D216D0]);
  v31 = OUTLINED_FUNCTION_192_2(v30);
  OUTLINED_FUNCTION_2_30();
  sub_221ADFE28();
  if ((v31 & 1) == 0)
  {
LABEL_22:
    OUTLINED_FUNCTION_2_30();
    sub_221ADFE28();
    v25 = &qword_27CFB9988;
    v26 = &qword_221BDAE20;
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_2_30();
  sub_221ADFE28();
LABEL_5:
  sub_2219A1CC8(v1, &qword_27CFB9988, &qword_221BDAE20);
  if (*v5 == *v3)
  {
    v23 = *(v41 + 48);
    OUTLINED_FUNCTION_233_0();
    OUTLINED_FUNCTION_239_1();
    OUTLINED_FUNCTION_66_3(v42);
    if (v24)
    {
      OUTLINED_FUNCTION_39_8(v42 + v23);
      if (v24)
      {
        sub_2219A1CC8(v42, &unk_27CFBB600, &qword_221BE44B0);
        goto LABEL_32;
      }
    }

    else
    {
      OUTLINED_FUNCTION_346();
      sub_221A1C558();
      OUTLINED_FUNCTION_39_8(v42 + v23);
      if (!v34)
      {
        OUTLINED_FUNCTION_7_14();
        OUTLINED_FUNCTION_325();
        OUTLINED_FUNCTION_24();
        sub_221AB95D0();
        OUTLINED_FUNCTION_12_8();
        sub_221ADFE28();
        OUTLINED_FUNCTION_300();
        sub_2219A1CC8(v42, &unk_27CFBB600, &qword_221BE44B0);
        if ((&unk_27CFBB600 & 1) == 0)
        {
          goto LABEL_25;
        }

LABEL_32:
        OUTLINED_FUNCTION_398();
        OUTLINED_FUNCTION_0_41();
        v37 = sub_221ADB35C(v35, v36, MEMORY[0x277D216D0]);
        v33 = OUTLINED_FUNCTION_313(v37);
        goto LABEL_26;
      }

      OUTLINED_FUNCTION_8_14();
      sub_221ADFE28();
    }

    v25 = &qword_27CFBA3F0;
    v26 = &qword_221BE0A60;
    v32 = v42;
    goto LABEL_24;
  }

LABEL_25:
  v33 = 0;
LABEL_26:
  OUTLINED_FUNCTION_100_3(v33);
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221AB23D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_221ADB35C(&qword_27CFBA660, type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchNextAsyncIteratorResultsRequest, &unk_221BDE488);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221AB2474(uint64_t a1)
{
  v2 = sub_221ADB35C(&unk_27CFBB490, type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchNextAsyncIteratorResultsRequest, &unk_221BDE4C0);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221AB253C(uint64_t a1, uint64_t a2)
{
  sub_221ADB35C(&unk_27CFBB490, type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchNextAsyncIteratorResultsRequest, &unk_221BDE4C0);

  return sub_221BCCB48();
}

uint64_t sub_221AB25BC()
{
  result = MEMORY[0x223DA31F0](0xD00000000000001CLL, 0x8000000221BEFD70);
  qword_27CFDE088 = 0xD000000000000021;
  unk_27CFDE090 = 0x8000000221BEF7F0;
  return result;
}

uint64_t sub_221AB2630()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDE098);
  __swift_project_value_buffer(v0, qword_27CFDE098);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_221BCF7F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "sequenceIdentifier";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_221BCCC48();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 101;
  *v10 = "requestMetadata";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  return sub_221BCCC58();
}

uint64_t sub_221AB27FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AppIntentsProtobuf_ClientMessages.ReleaseAsyncSequenceRequest(0);
  type metadata accessor for AppIntentsProtobuf_UUID(0);
  sub_221ADB35C(&unk_27CFBB750, type metadata accessor for AppIntentsProtobuf_UUID, &unk_221BD90D8);
  return sub_221BCCAD8();
}

uint64_t sub_221AB28B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AppIntentsProtobuf_ClientMessages.ReleaseAsyncSequenceRequest(0);
  type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(0);
  sub_221ADB35C(&unk_27CFBB0F0, type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata, &unk_221BDD980);
  return sub_221BCCAD8();
}

uint64_t sub_221AB2964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9988, &qword_221BDAE20);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for AppIntentsProtobuf_ClientMessages.ReleaseAsyncSequenceRequest(0);
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_2219A1CC8(v6, &qword_27CFB9988, &qword_221BDAE20);
  }

  sub_221ADFDB4();
  sub_221ADB35C(&unk_27CFBB750, type metadata accessor for AppIntentsProtobuf_UUID, &unk_221BD90D8);
  sub_221BCCC38();
  return sub_221ADFE28();
}

uint64_t sub_221AB2B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB600, &qword_221BE44B0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for AppIntentsProtobuf_ClientMessages.ReleaseAsyncSequenceRequest(0);
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_2219A1CC8(v6, &unk_27CFBB600, &qword_221BE44B0);
  }

  sub_221ADFDB4();
  sub_221ADB35C(&unk_27CFBB0F0, type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata, &unk_221BDD980);
  sub_221BCCC38();
  return sub_221ADFE28();
}

void sub_221AB2D24()
{
  OUTLINED_FUNCTION_21();
  v2 = OUTLINED_FUNCTION_218_2();
  v3 = type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(v2);
  v4 = OUTLINED_FUNCTION_67_4(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_17_12(v5, v33);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB600, &qword_221BE44B0);
  OUTLINED_FUNCTION_8_1(v6);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_89_5(v8, v34);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA3F0, &qword_221BE0A60);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v9);
  v11 = OUTLINED_FUNCTION_41_4(v10, v35);
  type metadata accessor for AppIntentsProtobuf_UUID(v11);
  OUTLINED_FUNCTION_43_8();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_4_0();
  v13 = OUTLINED_FUNCTION_131_3();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(v13, v14);
  OUTLINED_FUNCTION_8_1(v15);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_102_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9990, &qword_221BDAE28);
  OUTLINED_FUNCTION_221_2();
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_116_5();
  v18 = type metadata accessor for AppIntentsProtobuf_ClientMessages.ReleaseAsyncSequenceRequest(0);
  OUTLINED_FUNCTION_308(v18);
  OUTLINED_FUNCTION_309();
  OUTLINED_FUNCTION_20_8(v1);
  if (v20)
  {
    OUTLINED_FUNCTION_20_8(v1 + v0);
    if (v20)
    {
      goto LABEL_5;
    }
  }

  else
  {
    OUTLINED_FUNCTION_64_0();
    sub_221A1C558();
    OUTLINED_FUNCTION_20_8(v1 + v0);
    if (!v20)
    {
      OUTLINED_FUNCTION_3_22();
      sub_221ADFDB4();
      OUTLINED_FUNCTION_349();
      if (!v23 || (OUTLINED_FUNCTION_385(), !v20))
      {
        OUTLINED_FUNCTION_2_30();
        sub_221ADFE28();
        goto LABEL_21;
      }

      OUTLINED_FUNCTION_335();
      OUTLINED_FUNCTION_0_41();
      v26 = sub_221ADB35C(v24, v25, MEMORY[0x277D216D0]);
      v27 = OUTLINED_FUNCTION_392(v26);
      OUTLINED_FUNCTION_2_30();
      sub_221ADFE28();
      if ((v27 & 1) == 0)
      {
LABEL_21:
        OUTLINED_FUNCTION_2_30();
        sub_221ADFE28();
        v21 = &qword_27CFB9988;
        v22 = &qword_221BDAE20;
        goto LABEL_22;
      }

      OUTLINED_FUNCTION_2_30();
      sub_221ADFE28();
LABEL_5:
      sub_2219A1CC8(v1, &qword_27CFB9988, &qword_221BDAE20);
      v19 = *(v36 + 48);
      OUTLINED_FUNCTION_268_0();
      OUTLINED_FUNCTION_266_0();
      OUTLINED_FUNCTION_66_3(v37);
      if (v20)
      {
        OUTLINED_FUNCTION_39_8(v37 + v19);
        if (v20)
        {
          sub_2219A1CC8(v37, &unk_27CFBB600, &qword_221BE44B0);
          goto LABEL_31;
        }
      }

      else
      {
        OUTLINED_FUNCTION_346();
        sub_221A1C558();
        OUTLINED_FUNCTION_39_8(v37 + v19);
        if (!v30)
        {
          OUTLINED_FUNCTION_7_14();
          OUTLINED_FUNCTION_325();
          OUTLINED_FUNCTION_24();
          sub_221AB95D0();
          OUTLINED_FUNCTION_12_8();
          sub_221ADFE28();
          OUTLINED_FUNCTION_300();
          sub_2219A1CC8(v37, &unk_27CFBB600, &qword_221BE44B0);
          if ((&unk_27CFBB600 & 1) == 0)
          {
            goto LABEL_24;
          }

LABEL_31:
          sub_221BCC8D8();
          OUTLINED_FUNCTION_0_41();
          sub_221ADB35C(v31, v32, MEMORY[0x277D216D0]);
          OUTLINED_FUNCTION_285_0();
          v29 = sub_221BCD338();
          goto LABEL_25;
        }

        OUTLINED_FUNCTION_8_14();
        sub_221ADFE28();
      }

      v21 = &qword_27CFBA3F0;
      v22 = &qword_221BE0A60;
      v28 = v37;
      goto LABEL_23;
    }

    OUTLINED_FUNCTION_2_30();
    sub_221ADFE28();
  }

  v21 = &qword_27CFB9990;
  v22 = &qword_221BDAE28;
LABEL_22:
  v28 = v1;
LABEL_23:
  sub_2219A1CC8(v28, v21, v22);
LABEL_24:
  v29 = 0;
LABEL_25:
  OUTLINED_FUNCTION_100_3(v29);
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221AB322C(uint64_t a1, uint64_t a2)
{
  v4 = sub_221ADB35C(&qword_27CFBA668, type metadata accessor for AppIntentsProtobuf_ClientMessages.ReleaseAsyncSequenceRequest, &unk_221BDE320);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221AB32CC(uint64_t a1)
{
  v2 = sub_221ADB35C(&unk_27CFBB120, type metadata accessor for AppIntentsProtobuf_ClientMessages.ReleaseAsyncSequenceRequest, &unk_221BDE358);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221AB3394(uint64_t a1, uint64_t a2)
{
  sub_221ADB35C(&unk_27CFBB120, type metadata accessor for AppIntentsProtobuf_ClientMessages.ReleaseAsyncSequenceRequest, &unk_221BDE358);

  return sub_221BCCB48();
}

uint64_t sub_221AB3414()
{
  result = MEMORY[0x223DA31F0](0xD000000000000016, 0x8000000221BEFD90);
  qword_27CFDE0B0 = 0xD000000000000021;
  *algn_27CFDE0B8 = 0x8000000221BEF7F0;
  return result;
}

uint64_t sub_221AB3488()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDE0C0);
  __swift_project_value_buffer(v0, qword_27CFDE0C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_221BD26F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "fileURL";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_221BCCC48();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "offset";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "length";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 101;
  *v14 = "requestMetadata";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v9();
  return sub_221BCCC58();
}

uint64_t sub_221AB36C8()
{
  OUTLINED_FUNCTION_15_10();
  while (1)
  {
    OUTLINED_FUNCTION_56_3();
    result = sub_221BCC998();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 101:
        v3 = OUTLINED_FUNCTION_5_17();
        sub_221AB3758(v3, v4, v5, v6);
        break;
      case 2:
      case 3:
        OUTLINED_FUNCTION_58_6();
        sub_221BCCAB8();
        break;
      case 1:
        OUTLINED_FUNCTION_54_5();
        sub_221BCCA98();
        break;
    }
  }

  return result;
}

uint64_t sub_221AB3758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchFileChunkRequest(0);
  type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(0);
  sub_221ADB35C(&unk_27CFBB0F0, type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata, &unk_221BDD980);
  return sub_221BCCAD8();
}

uint64_t sub_221AB380C()
{
  OUTLINED_FUNCTION_7_13();
  v2 = OUTLINED_FUNCTION_42_8();
  if (!v3 || (result = OUTLINED_FUNCTION_103_5(v2), !v0))
  {
    if (!*(v1 + 16) || (OUTLINED_FUNCTION_14_12(), result = sub_221BCCC08(), !v0))
    {
      if (!*(v1 + 24) || (OUTLINED_FUNCTION_14_12(), result = sub_221BCCC08(), !v0))
      {
        v5 = OUTLINED_FUNCTION_3_21();
        result = sub_221AB38B0(v5, v6, v7, v8);
        if (!v0)
        {
          type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchFileChunkRequest(0);
          return OUTLINED_FUNCTION_30_7();
        }
      }
    }
  }

  return result;
}

uint64_t sub_221AB38B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB600, &qword_221BE44B0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchFileChunkRequest(0);
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_2219A1CC8(v6, &unk_27CFBB600, &qword_221BE44B0);
  }

  sub_221ADFDB4();
  sub_221ADB35C(&unk_27CFBB0F0, type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata, &unk_221BDD980);
  sub_221BCCC38();
  return sub_221ADFE28();
}

void sub_221AB3A90()
{
  OUTLINED_FUNCTION_21();
  v5 = OUTLINED_FUNCTION_88_5();
  type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(v5);
  OUTLINED_FUNCTION_60_6();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_14_13();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB600, &qword_221BE44B0);
  OUTLINED_FUNCTION_8_1(v7);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_97_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA3F0, &qword_221BE0A60);
  OUTLINED_FUNCTION_57_6();
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_63_6();
  v12 = v12 && v10 == v11;
  if (!v12 && (sub_221BCE1B8() & 1) == 0 || *(v1 + 16) != *(v0 + 16) || *(v1 + 24) != *(v0 + 24))
  {
    goto LABEL_17;
  }

  type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchFileChunkRequest(0);
  v13 = *(v4 + 48);
  OUTLINED_FUNCTION_173_2();
  sub_221A1C558();
  OUTLINED_FUNCTION_156_0();
  OUTLINED_FUNCTION_53_7(v2);
  if (v12)
  {
    OUTLINED_FUNCTION_53_7(v2 + v13);
    if (v12)
    {
      sub_2219A1CC8(v2, &unk_27CFBB600, &qword_221BE44B0);
LABEL_20:
      sub_221BCC8D8();
      OUTLINED_FUNCTION_0_41();
      v18 = sub_221ADB35C(v16, v17, MEMORY[0x277D216D0]);
      v15 = OUTLINED_FUNCTION_36_8(v18);
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  OUTLINED_FUNCTION_1();
  sub_221A1C558();
  OUTLINED_FUNCTION_53_7(v2 + v13);
  if (v14)
  {
    OUTLINED_FUNCTION_8_14();
    sub_221ADFE28();
LABEL_16:
    sub_2219A1CC8(v2, &qword_27CFBA3F0, &qword_221BE0A60);
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_7_14();
  sub_221ADFDB4();
  OUTLINED_FUNCTION_118();
  sub_221AB95D0();
  OUTLINED_FUNCTION_238_0();
  sub_221ADFE28();
  OUTLINED_FUNCTION_285_0();
  sub_221ADFE28();
  sub_2219A1CC8(v2, &unk_27CFBB600, &qword_221BE44B0);
  if (v3)
  {
    goto LABEL_20;
  }

LABEL_17:
  v15 = 0;
LABEL_18:
  OUTLINED_FUNCTION_100_3(v15);
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221AB3D40(uint64_t a1, uint64_t a2)
{
  v4 = sub_221ADB35C(&qword_27CFBA670, type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchFileChunkRequest, &unk_221BDE1B8);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221AB3DE0(uint64_t a1)
{
  v2 = sub_221ADB35C(&unk_27CFBB4C0, type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchFileChunkRequest, &unk_221BDE1F0);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221AB3EA8(uint64_t a1, uint64_t a2)
{
  sub_221ADB35C(&unk_27CFBB4C0, type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchFileChunkRequest, &unk_221BDE1F0);

  return sub_221BCCB48();
}

uint64_t sub_221AB3F28()
{
  result = MEMORY[0x223DA31F0](0xD00000000000001DLL, 0x8000000221BEFDC0);
  qword_27CFDE0D8 = 0xD000000000000021;
  unk_27CFDE0E0 = 0x8000000221BEF7F0;
  return result;
}

uint64_t sub_221AB3F9C()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDE0E8);
  __swift_project_value_buffer(v0, qword_27CFDE0E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_221BD8680;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "intent";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_221BCCC48();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "parameterIdentifier";
  *(v10 + 8) = 19;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "searchTerm";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 100;
  *v14 = "environment";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 103;
  *v16 = "requestMetadata";
  *(v16 + 1) = 15;
  v16[16] = 2;
  v9();
  return sub_221BCCC58();
}

uint64_t sub_221AB4220()
{
  OUTLINED_FUNCTION_15_10();
  while (1)
  {
    OUTLINED_FUNCTION_56_3();
    result = sub_221BCC998();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 103:
        v11 = OUTLINED_FUNCTION_5_17();
        sub_221AB4488(v11, v12, v13, v14);
        break;
      case 2:
        OUTLINED_FUNCTION_54_5();
        sub_221BCCA98();
        break;
      case 3:
        OUTLINED_FUNCTION_264();
        OUTLINED_FUNCTION_5_17();
        sub_221AB4384();
        break;
      case 100:
        v7 = OUTLINED_FUNCTION_5_17();
        sub_221AB43D4(v7, v8, v9, v10);
        break;
      case 1:
        v3 = OUTLINED_FUNCTION_5_17();
        sub_221AB42D0(v3, v4, v5, v6);
        break;
    }
  }

  return result;
}

uint64_t sub_221AB42D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchOptionsForActionRequest(0);
  type metadata accessor for AppIntentsProtobuf_Action(0);
  sub_221ADB35C(&unk_27CFBB050, type metadata accessor for AppIntentsProtobuf_Action, &unk_221BDAD48);
  return sub_221BCCAD8();
}

uint64_t sub_221AB4384()
{
  OUTLINED_FUNCTION_113_5();
  v0(0);
  OUTLINED_FUNCTION_338();
  OUTLINED_FUNCTION_58_6();
  return sub_221BCCA88();
}

uint64_t sub_221AB43D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchOptionsForActionRequest(0);
  type metadata accessor for AppIntentsProtobuf_Environment(0);
  sub_221ADB35C(&qword_27CFB97E0, type metadata accessor for AppIntentsProtobuf_Environment, &unk_221BD9D80);
  return sub_221BCCAD8();
}

uint64_t sub_221AB4488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchOptionsForActionRequest(0);
  type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(0);
  sub_221ADB35C(&unk_27CFBB0F0, type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata, &unk_221BDD980);
  return sub_221BCCAD8();
}

uint64_t sub_221AB453C()
{
  OUTLINED_FUNCTION_13_11();
  OUTLINED_FUNCTION_27_8();
  result = sub_221AB45F0(v1, v2, v3, v4);
  if (!v0)
  {
    OUTLINED_FUNCTION_25_8();
    if (v7)
    {
      OUTLINED_FUNCTION_124_4(v6);
    }

    OUTLINED_FUNCTION_264();
    OUTLINED_FUNCTION_3_21();
    sub_221AB47D0();
    v8 = OUTLINED_FUNCTION_3_21();
    sub_221AB4844(v8, v9, v10, v11);
    v12 = OUTLINED_FUNCTION_3_21();
    sub_221AB4A24(v12, v13, v14, v15);
    type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchOptionsForActionRequest(0);
    return OUTLINED_FUNCTION_30_7();
  }

  return result;
}

uint64_t sub_221AB45F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB690, &qword_221BDADD0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for AppIntentsProtobuf_Action(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchOptionsForActionRequest(0);
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_2219A1CC8(v6, &unk_27CFBB690, &qword_221BDADD0);
  }

  sub_221ADFDB4();
  sub_221ADB35C(&unk_27CFBB050, type metadata accessor for AppIntentsProtobuf_Action, &unk_221BDAD48);
  sub_221BCCC38();
  return sub_221ADFE28();
}

uint64_t sub_221AB47D0()
{
  v1 = OUTLINED_FUNCTION_373();
  result = v2(v1);
  if (*(v0 + *(result + 28) + 8))
  {
    OUTLINED_FUNCTION_338();
    return sub_221BCCBF8();
  }

  return result;
}

uint64_t sub_221AB4844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB650, &qword_221BE0A38);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for AppIntentsProtobuf_Environment(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchOptionsForActionRequest(0);
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_2219A1CC8(v6, &unk_27CFBB650, &qword_221BE0A38);
  }

  sub_221ADFDB4();
  sub_221ADB35C(&qword_27CFB97E0, type metadata accessor for AppIntentsProtobuf_Environment, &unk_221BD9D80);
  sub_221BCCC38();
  return sub_221ADFE28();
}

uint64_t sub_221AB4A24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB600, &qword_221BE44B0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchOptionsForActionRequest(0);
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_2219A1CC8(v6, &unk_27CFBB600, &qword_221BE44B0);
  }

  sub_221ADFDB4();
  sub_221ADB35C(&unk_27CFBB0F0, type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata, &unk_221BDD980);
  sub_221BCCC38();
  return sub_221ADFE28();
}

void sub_221AB4C04()
{
  OUTLINED_FUNCTION_21();
  v3 = v2;
  v5 = v4;
  v58 = type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(0);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_30_8();
  v55 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB600, &qword_221BE44B0);
  OUTLINED_FUNCTION_8_1(v8);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_104_2();
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA3F0, &qword_221BE0A60);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_101_4(v11);
  v62 = type metadata accessor for AppIntentsProtobuf_Environment(0);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_30_8();
  v56 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB650, &qword_221BE0A38);
  OUTLINED_FUNCTION_8_1(v14);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_89_5(v16, v55);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA400, &qword_221BE0A70);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_104_2();
  v63 = v18;
  v19 = OUTLINED_FUNCTION_133_3();
  type metadata accessor for AppIntentsProtobuf_Action(v19);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_32_8();
  v21 = OUTLINED_FUNCTION_131_3();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(v21, v22);
  OUTLINED_FUNCTION_8_1(v23);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_74_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9970, &qword_221BDAE10);
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_156();
  OptionsForActionRequest = type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchOptionsForActionRequest(0);
  v26 = *(v1 + 56);
  OUTLINED_FUNCTION_309();
  OUTLINED_FUNCTION_309();
  OUTLINED_FUNCTION_22_9(v0);
  if (v27)
  {
    OUTLINED_FUNCTION_22_9(v0 + v26);
    if (v27)
    {
      sub_2219A1CC8(v0, &unk_27CFBB690, &qword_221BDADD0);
      goto LABEL_14;
    }

LABEL_9:
    v28 = &qword_27CFB9970;
    v29 = &qword_221BDAE10;
    v30 = v0;
LABEL_10:
    sub_2219A1CC8(v30, v28, v29);
    goto LABEL_11;
  }

  sub_221A1C558();
  OUTLINED_FUNCTION_22_9(v0 + v26);
  if (v27)
  {
    OUTLINED_FUNCTION_150_2();
    sub_221ADFE28();
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_255();
  sub_221ADFDB4();
  OUTLINED_FUNCTION_177_2();
  sub_221A71C78();
  v33 = v32;
  sub_221ADFE28();
  sub_221ADFE28();
  sub_2219A1CC8(v0, &unk_27CFBB690, &qword_221BDADD0);
  if ((v33 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v34 = *v5 == *v3 && v5[1] == v3[1];
  if (!v34 && (sub_221BCE1B8() & 1) == 0)
  {
    goto LABEL_11;
  }

  v35 = *(OptionsForActionRequest + 28);
  v36 = *(v3 + v35 + 8);
  if (*(v5 + v35 + 8))
  {
    if (!v36)
    {
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_61_3(v5 + v35);
    v39 = v27 && v37 == v38;
    if (!v39 && (sub_221BCE1B8() & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (v36)
  {
    goto LABEL_11;
  }

  v40 = *(v61 + 48);
  OUTLINED_FUNCTION_387();
  sub_221A1C558();
  OUTLINED_FUNCTION_387();
  sub_221A1C558();
  v41 = OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_81_5(v41, v42);
  if (v27)
  {
    OUTLINED_FUNCTION_39_8(v63 + v40);
    if (v27)
    {
      sub_2219A1CC8(v63, &unk_27CFBB650, &qword_221BE0A38);
      goto LABEL_44;
    }

    goto LABEL_36;
  }

  sub_221A1C558();
  OUTLINED_FUNCTION_39_8(v63 + v40);
  if (v43)
  {
    OUTLINED_FUNCTION_195_2();
    sub_221ADFE28();
LABEL_36:
    v28 = &qword_27CFBA400;
    v29 = &qword_221BE0A70;
LABEL_37:
    v30 = v63;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_261_0();
  sub_221ADFDB4();
  v44 = *v60 == *v56 && v60[1] == v56[1];
  if (!v44 && (sub_221BCE1B8() & 1) == 0)
  {
    OUTLINED_FUNCTION_262_0();
    sub_221ADFE28();
    sub_221ADFE28();
    v28 = &unk_27CFBB650;
    v29 = &qword_221BE0A38;
    goto LABEL_37;
  }

  v45 = *(v62 + 20);
  sub_221BCC8D8();
  OUTLINED_FUNCTION_0_41();
  sub_221ADB35C(v46, v47, MEMORY[0x277D216D0]);
  sub_221BCD338();
  OUTLINED_FUNCTION_242_1();
  sub_221ADFE28();
  OUTLINED_FUNCTION_323();
  sub_221ADFE28();
  sub_2219A1CC8(v63, &unk_27CFBB650, &qword_221BE0A38);
  if ((v45 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_44:
  v48 = *(v57 + 48);
  OUTLINED_FUNCTION_233_0();
  OUTLINED_FUNCTION_239_1();
  v49 = OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_81_5(v49, v50);
  if (v27)
  {
    OUTLINED_FUNCTION_39_8(v59 + v48);
    if (v27)
    {
      sub_2219A1CC8(v59, &unk_27CFBB600, &qword_221BE44B0);
LABEL_54:
      OUTLINED_FUNCTION_398();
      OUTLINED_FUNCTION_0_41();
      v54 = sub_221ADB35C(v52, v53, MEMORY[0x277D216D0]);
      v31 = OUTLINED_FUNCTION_313(v54);
      goto LABEL_12;
    }

    goto LABEL_52;
  }

  sub_221A1C558();
  OUTLINED_FUNCTION_39_8(v59 + v48);
  if (v51)
  {
    OUTLINED_FUNCTION_8_14();
    sub_221ADFE28();
LABEL_52:
    v28 = &qword_27CFBA3F0;
    v29 = &qword_221BE0A60;
    v30 = v59;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_7_14();
  sub_221ADFDB4();
  OUTLINED_FUNCTION_324();
  sub_221AB95D0();
  OUTLINED_FUNCTION_12_8();
  sub_221ADFE28();
  OUTLINED_FUNCTION_323();
  sub_221ADFE28();
  sub_2219A1CC8(v59, &unk_27CFBB600, &qword_221BE44B0);
  if (v58)
  {
    goto LABEL_54;
  }

LABEL_11:
  v31 = 0;
LABEL_12:
  OUTLINED_FUNCTION_100_3(v31);
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221AB5350(uint64_t a1, uint64_t a2)
{
  v4 = sub_221ADB35C(&qword_27CFBA678, type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchOptionsForActionRequest, &unk_221BDE050);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221AB53F0(uint64_t a1)
{
  v2 = sub_221ADB35C(&unk_27CFBB430, type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchOptionsForActionRequest, &unk_221BDE088);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221AB54B8(uint64_t a1, uint64_t a2)
{
  sub_221ADB35C(&unk_27CFBB430, type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchOptionsForActionRequest, &unk_221BDE088);

  return sub_221BCCB48();
}

uint64_t sub_221AB5538()
{
  result = MEMORY[0x223DA31F0](0xD00000000000001BLL, 0x8000000221BEFE10);
  qword_27CFDE100 = 0xD000000000000021;
  *algn_27CFDE108 = 0x8000000221BEF7F0;
  return result;
}

uint64_t sub_221AB55AC()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDE110);
  __swift_project_value_buffer(v0, qword_27CFDE110);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_221BCF7F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "topic";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_221BCCC48();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 101;
  *v10 = "requestMetadata";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  return sub_221BCCC58();
}

uint64_t sub_221AB5778()
{
  OUTLINED_FUNCTION_130_3();
  while (1)
  {
    OUTLINED_FUNCTION_14();
    result = sub_221BCC998();
    if (v1 || (v4 & 1) != 0)
    {
      break;
    }

    if (result == 101)
    {
      OUTLINED_FUNCTION_277_0();
      v0();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_277_0();
      v2();
    }
  }

  return result;
}

uint64_t sub_221AB57FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AppIntentsProtobuf_ClientMessages.StartObservingEventRequest(0);
  type metadata accessor for AppIntentsProtobuf_NotificationTopic(0);
  sub_221ADB35C(&unk_27CFBB9C0, type metadata accessor for AppIntentsProtobuf_NotificationTopic, &unk_221BD97E0);
  return sub_221BCCAD8();
}

uint64_t sub_221AB58B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AppIntentsProtobuf_ClientMessages.StartObservingEventRequest(0);
  type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(0);
  sub_221ADB35C(&unk_27CFBB0F0, type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata, &unk_221BDD980);
  return sub_221BCCAD8();
}

uint64_t sub_221AB5964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA688, &unk_221BE50E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for AppIntentsProtobuf_NotificationTopic(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for AppIntentsProtobuf_ClientMessages.StartObservingEventRequest(0);
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_2219A1CC8(v6, &qword_27CFBA688, &unk_221BE50E0);
  }

  sub_221ADFDB4();
  sub_221ADB35C(&unk_27CFBB9C0, type metadata accessor for AppIntentsProtobuf_NotificationTopic, &unk_221BD97E0);
  sub_221BCCC38();
  return sub_221ADFE28();
}

uint64_t sub_221AB5B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB600, &qword_221BE44B0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for AppIntentsProtobuf_ClientMessages.StartObservingEventRequest(0);
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_2219A1CC8(v6, &unk_27CFBB600, &qword_221BE44B0);
  }

  sub_221ADFDB4();
  sub_221ADB35C(&unk_27CFBB0F0, type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata, &unk_221BDD980);
  sub_221BCCC38();
  return sub_221ADFE28();
}

void sub_221AB5D24()
{
  OUTLINED_FUNCTION_21();
  v2 = OUTLINED_FUNCTION_345();
  v3 = type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(v2);
  v4 = OUTLINED_FUNCTION_67_4(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_17_12(v5, v28);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB600, &qword_221BE44B0);
  OUTLINED_FUNCTION_8_1(v6);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_89_5(v8, v29);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA3F0, &qword_221BE0A60);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v9);
  v11 = OUTLINED_FUNCTION_41_4(v10, v30);
  type metadata accessor for AppIntentsProtobuf_NotificationTopic(v11);
  OUTLINED_FUNCTION_43_8();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_4_0();
  v13 = OUTLINED_FUNCTION_138_1();
  OUTLINED_FUNCTION_8_1(v13);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_74_5();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA690, &qword_221BE0C60) - 8;
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_116_5();
  type metadata accessor for AppIntentsProtobuf_ClientMessages.StartObservingEventRequest(0);
  v17 = *(v15 + 56);
  sub_221A1C558();
  sub_221A1C558();
  OUTLINED_FUNCTION_20_8(v1);
  if (v18)
  {
    OUTLINED_FUNCTION_20_8(v1 + v17);
    if (v18)
    {
      sub_2219A1CC8(v1, &qword_27CFBA688, &unk_221BE50E0);
      goto LABEL_11;
    }

LABEL_9:
    v19 = &qword_27CFBA690;
    v20 = &qword_221BE0C60;
    v21 = v1;
LABEL_20:
    sub_2219A1CC8(v21, v19, v20);
    goto LABEL_21;
  }

  sub_221A1C558();
  OUTLINED_FUNCTION_20_8(v1 + v17);
  if (v18)
  {
    OUTLINED_FUNCTION_150_2();
    sub_221ADFE28();
    goto LABEL_9;
  }

  sub_221ADFDB4();
  v22 = OUTLINED_FUNCTION_282_0();
  sub_221A7F87C(v22);
  OUTLINED_FUNCTION_248_0();
  sub_221ADFE28();
  OUTLINED_FUNCTION_4();
  sub_221ADFE28();
  sub_2219A1CC8(v1, &qword_27CFBA688, &unk_221BE50E0);
  if ((v0 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_11:
  v23 = *(v31 + 48);
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_266_0();
  OUTLINED_FUNCTION_66_3(v32);
  if (v18)
  {
    OUTLINED_FUNCTION_39_8(v32 + v23);
    if (v18)
    {
      sub_2219A1CC8(v32, &unk_27CFBB600, &qword_221BE44B0);
LABEL_24:
      sub_221BCC8D8();
      OUTLINED_FUNCTION_0_41();
      sub_221ADB35C(v26, v27, MEMORY[0x277D216D0]);
      v25 = sub_221BCD338();
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  OUTLINED_FUNCTION_381();
  sub_221A1C558();
  OUTLINED_FUNCTION_39_8(v32 + v23);
  if (v24)
  {
    OUTLINED_FUNCTION_8_14();
    sub_221ADFE28();
LABEL_19:
    v19 = &qword_27CFBA3F0;
    v20 = &qword_221BE0A60;
    v21 = v32;
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_7_14();
  OUTLINED_FUNCTION_325();
  OUTLINED_FUNCTION_118();
  sub_221AB95D0();
  OUTLINED_FUNCTION_12_8();
  sub_221ADFE28();
  sub_221ADFE28();
  sub_2219A1CC8(v32, &unk_27CFBB600, &qword_221BE44B0);
  if (&unk_27CFBB600)
  {
    goto LABEL_24;
  }

LABEL_21:
  v25 = 0;
LABEL_22:
  OUTLINED_FUNCTION_100_3(v25);
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221AB6230(uint64_t a1, uint64_t a2)
{
  v4 = sub_221ADB35C(&qword_27CFBA680, type metadata accessor for AppIntentsProtobuf_ClientMessages.StartObservingEventRequest, &unk_221BDDEE8);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221AB62D0(uint64_t a1)
{
  v2 = sub_221ADB35C(&unk_27CFBB3A0, type metadata accessor for AppIntentsProtobuf_ClientMessages.StartObservingEventRequest, &unk_221BDDF20);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221AB6398(uint64_t a1, uint64_t a2)
{
  sub_221ADB35C(&unk_27CFBB3A0, type metadata accessor for AppIntentsProtobuf_ClientMessages.StartObservingEventRequest, &unk_221BDDF20);

  return sub_221BCCB48();
}

uint64_t sub_221AB6418()
{
  result = MEMORY[0x223DA31F0](0xD00000000000001ALL, 0x8000000221BEFE40);
  qword_27CFDE128 = 0xD000000000000021;
  unk_27CFDE130 = 0x8000000221BEF7F0;
  return result;
}

uint64_t sub_221AB648C()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDE138);
  __swift_project_value_buffer(v0, qword_27CFDE138);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_221BD6DE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "topic";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_221BCCC48();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "observerUUID";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 101;
  *v12 = "requestMetadata";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  return sub_221BCCC58();
}

uint64_t sub_221AB6694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AppIntentsProtobuf_ClientMessages.StopObservingEventRequest(0);
  type metadata accessor for AppIntentsProtobuf_NotificationTopic(0);
  sub_221ADB35C(&unk_27CFBB9C0, type metadata accessor for AppIntentsProtobuf_NotificationTopic, &unk_221BD97E0);
  return sub_221BCCAD8();
}

uint64_t sub_221AB6748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AppIntentsProtobuf_ClientMessages.StopObservingEventRequest(0);
  type metadata accessor for AppIntentsProtobuf_UUID(0);
  sub_221ADB35C(&unk_27CFBB750, type metadata accessor for AppIntentsProtobuf_UUID, &unk_221BD90D8);
  return sub_221BCCAD8();
}

uint64_t sub_221AB67FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AppIntentsProtobuf_ClientMessages.StopObservingEventRequest(0);
  type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(0);
  sub_221ADB35C(&unk_27CFBB0F0, type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata, &unk_221BDD980);
  return sub_221BCCAD8();
}

uint64_t sub_221AB68B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA688, &unk_221BE50E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for AppIntentsProtobuf_NotificationTopic(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for AppIntentsProtobuf_ClientMessages.StopObservingEventRequest(0);
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_2219A1CC8(v6, &qword_27CFBA688, &unk_221BE50E0);
  }

  sub_221ADFDB4();
  sub_221ADB35C(&unk_27CFBB9C0, type metadata accessor for AppIntentsProtobuf_NotificationTopic, &unk_221BD97E0);
  sub_221BCCC38();
  return sub_221ADFE28();
}

uint64_t sub_221AB6A90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9988, &qword_221BDAE20);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for AppIntentsProtobuf_ClientMessages.StopObservingEventRequest(0);
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_2219A1CC8(v6, &qword_27CFB9988, &qword_221BDAE20);
  }

  sub_221ADFDB4();
  sub_221ADB35C(&unk_27CFBB750, type metadata accessor for AppIntentsProtobuf_UUID, &unk_221BD90D8);
  sub_221BCCC38();
  return sub_221ADFE28();
}

uint64_t sub_221AB6C70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB600, &qword_221BE44B0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for AppIntentsProtobuf_ClientMessages.StopObservingEventRequest(0);
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_2219A1CC8(v6, &unk_27CFBB600, &qword_221BE44B0);
  }

  sub_221ADFDB4();
  sub_221ADB35C(&unk_27CFBB0F0, type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata, &unk_221BDD980);
  sub_221BCCC38();
  return sub_221ADFE28();
}

uint64_t sub_221AB6F4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_221ADB35C(&qword_27CFBA698, type metadata accessor for AppIntentsProtobuf_ClientMessages.StopObservingEventRequest, &unk_221BDDD80);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221AB6FEC(uint64_t a1)
{
  v2 = sub_221ADB35C(&unk_27CFBB340, type metadata accessor for AppIntentsProtobuf_ClientMessages.StopObservingEventRequest, &unk_221BDDDB8);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221AB70B4(uint64_t a1, uint64_t a2)
{
  sub_221ADB35C(&unk_27CFBB340, type metadata accessor for AppIntentsProtobuf_ClientMessages.StopObservingEventRequest, &unk_221BDDDB8);

  return sub_221BCCB48();
}

uint64_t sub_221AB7160()
{
  result = MEMORY[0x223DA31F0](0xD00000000000001DLL, 0x8000000221BEFE70);
  qword_27CFDE150 = 0xD000000000000021;
  *algn_27CFDE158 = 0x8000000221BEF7F0;
  return result;
}

uint64_t sub_221AB71D4()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDE160);
  __swift_project_value_buffer(v0, qword_27CFDE160);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_221BD6DE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "topic";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_221BCCC48();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "observerUUID";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 101;
  *v12 = "requestMetadata";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  return sub_221BCCC58();
}

void sub_221AB73DC()
{
  OUTLINED_FUNCTION_151_2();
  v4 = v3;
  OUTLINED_FUNCTION_297();
  OUTLINED_FUNCTION_390();
  while (1)
  {
    OUTLINED_FUNCTION_221();
    v5 = sub_221BCC998();
    if (v0 || (v6 & 1) != 0)
    {
      break;
    }

    switch(v5)
    {
      case 101:
        v9 = OUTLINED_FUNCTION_142_2();
        v4(v9);
        break;
      case 2:
        v8 = OUTLINED_FUNCTION_142_2();
        v1(v8);
        break;
      case 1:
        v7 = OUTLINED_FUNCTION_142_2();
        v2(v7);
        break;
    }
  }

  OUTLINED_FUNCTION_152_2();
}

uint64_t sub_221AB7474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AppIntentsProtobuf_ClientMessages.RestartObservingEventRequest(0);
  type metadata accessor for AppIntentsProtobuf_NotificationTopic(0);
  sub_221ADB35C(&unk_27CFBB9C0, type metadata accessor for AppIntentsProtobuf_NotificationTopic, &unk_221BD97E0);
  return sub_221BCCAD8();
}

uint64_t sub_221AB7528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AppIntentsProtobuf_ClientMessages.RestartObservingEventRequest(0);
  type metadata accessor for AppIntentsProtobuf_UUID(0);
  sub_221ADB35C(&unk_27CFBB750, type metadata accessor for AppIntentsProtobuf_UUID, &unk_221BD90D8);
  return sub_221BCCAD8();
}

uint64_t sub_221AB75DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AppIntentsProtobuf_ClientMessages.RestartObservingEventRequest(0);
  type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(0);
  sub_221ADB35C(&unk_27CFBB0F0, type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata, &unk_221BDD980);
  return sub_221BCCAD8();
}

uint64_t sub_221AB7690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t))
{
  OUTLINED_FUNCTION_109_2();
  v9 = OUTLINED_FUNCTION_34_8();
  result = v10(v9);
  if (!v6)
  {
    v12 = OUTLINED_FUNCTION_34_8();
    a5(v12);
    v13 = OUTLINED_FUNCTION_34_8();
    a6(v13);
    OUTLINED_FUNCTION_112_4();
    return sub_221BCC8B8();
  }

  return result;
}

uint64_t sub_221AB7704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA688, &unk_221BE50E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for AppIntentsProtobuf_NotificationTopic(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for AppIntentsProtobuf_ClientMessages.RestartObservingEventRequest(0);
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_2219A1CC8(v6, &qword_27CFBA688, &unk_221BE50E0);
  }

  sub_221ADFDB4();
  sub_221ADB35C(&unk_27CFBB9C0, type metadata accessor for AppIntentsProtobuf_NotificationTopic, &unk_221BD97E0);
  sub_221BCCC38();
  return sub_221ADFE28();
}

uint64_t sub_221AB78E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9988, &qword_221BDAE20);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for AppIntentsProtobuf_ClientMessages.RestartObservingEventRequest(0);
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_2219A1CC8(v6, &qword_27CFB9988, &qword_221BDAE20);
  }

  sub_221ADFDB4();
  sub_221ADB35C(&unk_27CFBB750, type metadata accessor for AppIntentsProtobuf_UUID, &unk_221BD90D8);
  sub_221BCCC38();
  return sub_221ADFE28();
}

uint64_t sub_221AB7AC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB600, &qword_221BE44B0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for AppIntentsProtobuf_ClientMessages.RestartObservingEventRequest(0);
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_2219A1CC8(v6, &unk_27CFBB600, &qword_221BE44B0);
  }

  sub_221ADFDB4();
  sub_221ADB35C(&unk_27CFBB0F0, type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata, &unk_221BDD980);
  sub_221BCCC38();
  return sub_221ADFE28();
}

void sub_221AB7CA4()
{
  OUTLINED_FUNCTION_21();
  v3 = v2;
  v54 = type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(0);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_30_8();
  v50 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB600, &qword_221BE44B0);
  OUTLINED_FUNCTION_8_1(v6);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_104_2();
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA3F0, &qword_221BE0A60);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_101_4(v9);
  v10 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  v11 = OUTLINED_FUNCTION_67_4(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_30_8();
  v52 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9988, &qword_221BDAE20);
  OUTLINED_FUNCTION_8_1(v13);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_89_5(v15, v50);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9990, &qword_221BDAE28);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v16);
  v18 = OUTLINED_FUNCTION_41_4(v17, v51);
  v19 = type metadata accessor for AppIntentsProtobuf_NotificationTopic(v18);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_14_13();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA688, &unk_221BE50E0);
  OUTLINED_FUNCTION_8_1(v21);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_156();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA690, &qword_221BE0C60) - 8;
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_99_3();
  v57 = v3(0);
  v25 = *(v23 + 56);
  sub_221A1C558();
  sub_221A1C558();
  v26 = OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_49_4(v26, v27, v19);
  if (v28)
  {
    OUTLINED_FUNCTION_49_4(v0 + v25, 1, v19);
    if (v28)
    {
      sub_2219A1CC8(v0, &qword_27CFBA688, &unk_221BE50E0);
      goto LABEL_11;
    }

LABEL_9:
    v29 = &qword_27CFBA690;
    v30 = &qword_221BE0C60;
LABEL_31:
    v45 = v0;
LABEL_32:
    sub_2219A1CC8(v45, v29, v30);
    goto LABEL_33;
  }

  OUTLINED_FUNCTION_120();
  sub_221A1C558();
  OUTLINED_FUNCTION_49_4(v0 + v25, 1, v19);
  if (v28)
  {
    sub_221ADFE28();
    goto LABEL_9;
  }

  sub_221ADFDB4();
  sub_221A7F87C(v1);
  OUTLINED_FUNCTION_248_0();
  sub_221ADFE28();
  sub_221ADFE28();
  sub_2219A1CC8(v0, &qword_27CFBA688, &unk_221BE50E0);
  if ((v25 & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_11:
  v31 = *(v57 + 24);
  v32 = *(v56 + 48);
  v0 = v58;
  OUTLINED_FUNCTION_233_0();
  OUTLINED_FUNCTION_239_1();
  OUTLINED_FUNCTION_66_3(v58);
  if (v28)
  {
    OUTLINED_FUNCTION_39_8(v58 + v32);
    if (v28)
    {
      goto LABEL_15;
    }

    goto LABEL_23;
  }

  OUTLINED_FUNCTION_346();
  sub_221A1C558();
  OUTLINED_FUNCTION_39_8(v58 + v32);
  if (v36)
  {
    sub_221ADFE28();
LABEL_23:
    v29 = &qword_27CFB9990;
    v30 = &qword_221BDAE28;
    goto LABEL_31;
  }

  sub_221ADFDB4();
  OUTLINED_FUNCTION_334();
  if (!v37 || *(v31 + 8) != *(v52 + 8))
  {
    sub_221ADFE28();
    goto LABEL_30;
  }

  sub_221BCC8D8();
  OUTLINED_FUNCTION_0_41();
  sub_221ADB35C(v38, v39, MEMORY[0x277D216D0]);
  v40 = OUTLINED_FUNCTION_271_0();
  v44 = OUTLINED_FUNCTION_361(v40, v41, v42, v43);
  OUTLINED_FUNCTION_2_30();
  sub_221ADFE28();
  if ((v44 & 1) == 0)
  {
LABEL_30:
    sub_221ADFE28();
    v29 = &qword_27CFB9988;
    v30 = &qword_221BDAE20;
    goto LABEL_31;
  }

  sub_221ADFE28();
LABEL_15:
  sub_2219A1CC8(v58, &qword_27CFB9988, &qword_221BDAE20);
  v33 = *(v53 + 48);
  OUTLINED_FUNCTION_233_0();
  OUTLINED_FUNCTION_239_1();
  v34 = OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_81_5(v34, v35);
  if (v28)
  {
    OUTLINED_FUNCTION_39_8(v55 + v33);
    if (v28)
    {
      sub_2219A1CC8(v55, &unk_27CFBB600, &qword_221BE44B0);
LABEL_40:
      sub_221BCC8D8();
      OUTLINED_FUNCTION_0_41();
      sub_221ADB35C(v48, v49, MEMORY[0x277D216D0]);
      OUTLINED_FUNCTION_27();
      v46 = sub_221BCD338();
      goto LABEL_34;
    }

    goto LABEL_38;
  }

  sub_221A1C558();
  OUTLINED_FUNCTION_39_8(v55 + v33);
  if (v47)
  {
    sub_221ADFE28();
LABEL_38:
    v29 = &qword_27CFBA3F0;
    v30 = &qword_221BE0A60;
    v45 = v55;
    goto LABEL_32;
  }

  sub_221ADFDB4();
  OUTLINED_FUNCTION_324();
  sub_221AB95D0();
  OUTLINED_FUNCTION_12_8();
  sub_221ADFE28();
  OUTLINED_FUNCTION_323();
  sub_221ADFE28();
  sub_2219A1CC8(v55, &unk_27CFBB600, &qword_221BE44B0);
  if (v54)
  {
    goto LABEL_40;
  }

LABEL_33:
  v46 = 0;
LABEL_34:
  OUTLINED_FUNCTION_100_3(v46);
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221AB8484(uint64_t a1, uint64_t a2)
{
  v4 = sub_221ADB35C(&qword_27CFBA6A0, type metadata accessor for AppIntentsProtobuf_ClientMessages.RestartObservingEventRequest, &unk_221BDDC18);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221AB8524(uint64_t a1)
{
  v2 = sub_221ADB35C(&unk_27CFBB3D0, type metadata accessor for AppIntentsProtobuf_ClientMessages.RestartObservingEventRequest, &unk_221BDDC50);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221AB85EC(uint64_t a1, uint64_t a2)
{
  sub_221ADB35C(&unk_27CFBB3D0, type metadata accessor for AppIntentsProtobuf_ClientMessages.RestartObservingEventRequest, &unk_221BDDC50);

  return sub_221BCCB48();
}

uint64_t sub_221AB8698()
{
  result = MEMORY[0x223DA31F0](0xD00000000000001BLL, 0x8000000221BEFE90);
  qword_27CFDE178 = 0xD000000000000021;
  unk_27CFDE180 = 0x8000000221BEF7F0;
  return result;
}

uint64_t sub_221AB870C()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDE188);
  __swift_project_value_buffer(v0, qword_27CFDE188);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_221BCF7F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "bundleIdentifier";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_221BCCC48();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 100;
  *v10 = "requestMetadata";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  return sub_221BCCC58();
}

uint64_t sub_221AB88D8()
{
  OUTLINED_FUNCTION_15_10();
  while (1)
  {
    OUTLINED_FUNCTION_56_3();
    result = sub_221BCC998();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 100)
    {
      v3 = OUTLINED_FUNCTION_5_17();
      sub_221AB893C(v3, v4, v5, v6);
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_54_5();
      sub_221BCCA98();
    }
  }

  return result;
}

uint64_t sub_221AB893C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchAppDescriptionRequest(0);
  type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(0);
  sub_221ADB35C(&unk_27CFBB0F0, type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata, &unk_221BDD980);
  return sub_221BCCAD8();
}

uint64_t sub_221AB89F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB600, &qword_221BE44B0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchAppDescriptionRequest(0);
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_2219A1CC8(v6, &unk_27CFBB600, &qword_221BE44B0);
  }

  sub_221ADFDB4();
  sub_221ADB35C(&unk_27CFBB0F0, type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata, &unk_221BDD980);
  sub_221BCCC38();
  return sub_221ADFE28();
}

void sub_221AB8BD0()
{
  OUTLINED_FUNCTION_21();
  v3 = OUTLINED_FUNCTION_88_5();
  type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(v3);
  OUTLINED_FUNCTION_60_6();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_14_13();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB600, &qword_221BE44B0);
  OUTLINED_FUNCTION_8_1(v5);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_97_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA3F0, &qword_221BE0A60);
  OUTLINED_FUNCTION_57_6();
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_63_6();
  v10 = v10 && v8 == v9;
  if (!v10 && (sub_221BCE1B8() & 1) == 0)
  {
    goto LABEL_15;
  }

  AppDescriptionRequest = type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchAppDescriptionRequest(0);
  OUTLINED_FUNCTION_329(AppDescriptionRequest);
  OUTLINED_FUNCTION_173_2();
  sub_221A1C558();
  OUTLINED_FUNCTION_156_0();
  OUTLINED_FUNCTION_53_7(v0);
  if (v10)
  {
    OUTLINED_FUNCTION_53_7(v0 + v2);
    if (v10)
    {
      sub_2219A1CC8(v0, &unk_27CFBB600, &qword_221BE44B0);
LABEL_17:
      sub_221BCC8D8();
      OUTLINED_FUNCTION_0_41();
      v16 = sub_221ADB35C(v14, v15, MEMORY[0x277D216D0]);
      v13 = OUTLINED_FUNCTION_36_8(v16);
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  OUTLINED_FUNCTION_1();
  sub_221A1C558();
  OUTLINED_FUNCTION_53_7(v0 + v2);
  if (v12)
  {
    OUTLINED_FUNCTION_8_14();
    sub_221ADFE28();
LABEL_14:
    sub_2219A1CC8(v0, &qword_27CFBA3F0, &qword_221BE0A60);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_7_14();
  sub_221ADFDB4();
  OUTLINED_FUNCTION_118();
  sub_221AB95D0();
  OUTLINED_FUNCTION_238_0();
  sub_221ADFE28();
  OUTLINED_FUNCTION_285_0();
  sub_221ADFE28();
  sub_2219A1CC8(v0, &unk_27CFBB600, &qword_221BE44B0);
  if (v1)
  {
    goto LABEL_17;
  }

LABEL_15:
  v13 = 0;
LABEL_18:
  OUTLINED_FUNCTION_100_3(v13);
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221AB8EBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_221ADB35C(&qword_27CFBA6A8, type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchAppDescriptionRequest, &unk_221BDDAB0);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221AB8F5C(uint64_t a1)
{
  v2 = sub_221ADB35C(&unk_27CFBB580, type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchAppDescriptionRequest, &unk_221BDDAE8);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221AB9024(uint64_t a1, uint64_t a2)
{
  sub_221ADB35C(&unk_27CFBB580, type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchAppDescriptionRequest, &unk_221BDDAE8);

  return sub_221BCCB48();
}

uint64_t sub_221AB90A4()
{
  result = MEMORY[0x223DA31F0](0xD000000000000010, 0x8000000221BEFEB0);
  qword_27CFDE1A0 = 0xD000000000000021;
  *algn_27CFDE1A8 = 0x8000000221BEF7F0;
  return result;
}

uint64_t sub_221AB9118()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDE1B0);
  __swift_project_value_buffer(v0, qword_27CFDE1B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_221BD6DE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "clientLabel";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_221BCCC48();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "payloadPrivacy";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "diagnosticsEnabled";
  *(v12 + 1) = 18;
  v12[16] = 2;
  v9();
  return sub_221BCCC58();
}

uint64_t sub_221AB9320()
{
  OUTLINED_FUNCTION_15_10();
  while (1)
  {
    OUTLINED_FUNCTION_56_3();
    result = sub_221BCC998();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        v7 = OUTLINED_FUNCTION_5_17();
        sub_221AB9414(v7, v8, v9, v10);
        break;
      case 2:
        v3 = OUTLINED_FUNCTION_5_17();
        sub_221AB93B0(v3, v4, v5, v6);
        break;
      case 1:
        OUTLINED_FUNCTION_5_17();
        sub_221AAEA90();
        break;
    }
  }

  return result;
}

uint64_t sub_221AB9478()
{
  OUTLINED_FUNCTION_109_2();
  OUTLINED_FUNCTION_34_8();
  result = sub_221AAEBA0();
  if (!v0)
  {
    v2 = OUTLINED_FUNCTION_34_8();
    sub_221AB94E0(v2, v3, v4, v5);
    v6 = OUTLINED_FUNCTION_34_8();
    sub_221AB9558(v6, v7, v8, v9);
    OUTLINED_FUNCTION_112_4();
    return sub_221BCC8B8();
  }

  return result;
}

uint64_t sub_221AB94E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(0);
  if ((*(a1 + *(result + 24) + 4) & 1) == 0)
  {
    return sub_221BCCBE8();
  }

  return result;
}

uint64_t sub_221AB9558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(0);
  if (*(a1 + *(result + 28)) != 2)
  {
    return sub_221BCCB88();
  }

  return result;
}

uint64_t sub_221AB95D0()
{
  v2 = OUTLINED_FUNCTION_88_5();
  v3 = type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(v2);
  OUTLINED_FUNCTION_214_0();
  if (v6)
  {
    if (!v4)
    {
      return 0;
    }

    OUTLINED_FUNCTION_61_3(v5);
    v9 = v9 && v7 == v8;
    if (!v9 && (sub_221BCE1B8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v4)
  {
    return 0;
  }

  v10 = *(v3 + 24);
  v11 = (v1 + v10);
  v12 = *(v1 + v10 + 4);
  v13 = (v0 + v10);
  v14 = *(v0 + v10 + 4);
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }
  }

  else
  {
    if (*v11 != *v13)
    {
      LOBYTE(v14) = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  v15 = *(v3 + 28);
  v16 = *(v1 + v15);
  v17 = *(v0 + v15);
  if (v16 == 2)
  {
    if (v17 == 2)
    {
      goto LABEL_22;
    }

    return 0;
  }

  if (v17 == 2 || ((v16 ^ v17) & 1) != 0)
  {
    return 0;
  }

LABEL_22:
  sub_221BCC8D8();
  OUTLINED_FUNCTION_0_41();
  v21 = sub_221ADB35C(v19, v20, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_135_3(v21) & 1;
}

uint64_t sub_221AB972C(uint64_t a1, uint64_t a2)
{
  v4 = sub_221ADB35C(&qword_27CFBA6B0, type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata, &unk_221BDD948);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221AB97CC(uint64_t a1)
{
  v2 = sub_221ADB35C(&unk_27CFBB0F0, type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata, &unk_221BDD980);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221AB9894(uint64_t a1, uint64_t a2)
{
  sub_221ADB35C(&unk_27CFBB0F0, type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata, &unk_221BDD980);

  return sub_221BCCB48();
}

uint64_t sub_221AB9920(uint64_t a1, uint64_t *a2)
{
  v3 = sub_221BCCC78();
  __swift_allocate_value_buffer(v3, a2);
  v4 = OUTLINED_FUNCTION_70();
  __swift_project_value_buffer(v4, v5);
  return sub_221BCCC68();
}

uint64_t sub_221AB9964()
{
  do
  {
    OUTLINED_FUNCTION_55_3();
    result = sub_221BCC998();
  }

  while (!v0 && (v2 & 1) == 0);
  return result;
}

uint64_t sub_221AB99BC()
{
  OUTLINED_FUNCTION_88_5();
  sub_221BCC8D8();
  OUTLINED_FUNCTION_0_41();
  v2 = sub_221ADB35C(v0, v1, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_135_3(v2) & 1;
}

uint64_t sub_221AB9A34(uint64_t a1, uint64_t a2)
{
  v4 = sub_221ADB35C(&qword_27CFBA6B8, type metadata accessor for AppIntentsProtobuf_HostMessages, &unk_221BDD7E0);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221AB9AD4(uint64_t a1)
{
  v2 = sub_221ADB35C(&qword_27CFBA028, type metadata accessor for AppIntentsProtobuf_HostMessages, &unk_221BDD818);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221AB9B9C(uint64_t a1, uint64_t a2)
{
  sub_221ADB35C(&qword_27CFBA028, type metadata accessor for AppIntentsProtobuf_HostMessages, &unk_221BDD818);

  return sub_221BCCB48();
}

uint64_t sub_221AB9C18()
{
  result = MEMORY[0x223DA31F0](0xD000000000000016, 0x8000000221BEFF10);
  qword_27CFDE1E0 = 0xD00000000000001FLL;
  *algn_27CFDE1E8 = 0x8000000221BEFEF0;
  return result;
}

uint64_t sub_221AB9C90()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDE1F0);
  __swift_project_value_buffer(v0, qword_27CFDE1F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_221BD8660;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 2;
  *v6 = "success";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_221BCCC48();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "error";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "disambiguationRequest";
  *(v12 + 1) = 21;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "needsValueRequest";
  *(v14 + 1) = 17;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "confirmationRequest";
  *(v16 + 1) = 19;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "actionConfirmationRequest";
  *(v18 + 1) = 25;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "continueInAppRequest";
  *(v20 + 1) = 20;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "choiceRequest";
  *(v22 + 1) = 13;
  v22[16] = 2;
  v9();
  return sub_221BCCC58();
}

uint64_t sub_221AB9FD4()
{
  OUTLINED_FUNCTION_15_10();
  while (1)
  {
    OUTLINED_FUNCTION_56_3();
    result = sub_221BCC998();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 2:
        v3 = OUTLINED_FUNCTION_40_7();
        sub_221ABA0B4(v3, v4, v5, v6);
        break;
      case 3:
        v23 = OUTLINED_FUNCTION_40_7();
        sub_221ABA5AC(v23, v24, v25, v26);
        break;
      case 4:
        v11 = OUTLINED_FUNCTION_40_7();
        sub_221ABAAA4(v11, v12, v13, v14);
        break;
      case 5:
        v15 = OUTLINED_FUNCTION_40_7();
        sub_221ABAF9C(v15, v16, v17, v18);
        break;
      case 6:
        v7 = OUTLINED_FUNCTION_40_7();
        sub_221ABB494(v7, v8, v9, v10);
        break;
      case 7:
        v27 = OUTLINED_FUNCTION_40_7();
        sub_221ABB98C(v27, v28, v29, v30);
        break;
      case 8:
        v31 = OUTLINED_FUNCTION_40_7();
        sub_221ABBE84(v31, v32, v33, v34);
        break;
      case 9:
        v19 = OUTLINED_FUNCTION_40_7();
        sub_221ABC37C(v19, v20, v21, v22);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_221ABA0B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.Success(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB780, &unk_221BDB150);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.OneOf_Payload(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA6C8, &qword_221BE0C68);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_221A1C558();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_2219A1CC8(v10, &unk_27CFBB780, &unk_221BDB150);
  }

  else
  {
    sub_221ADFDB4();
    sub_221ADFDB4();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_221ADFE28();
    }

    else
    {
      sub_2219A1CC8(v18, &qword_27CFBA6C8, &qword_221BE0C68);
      sub_221ADFDB4();
      sub_221ADFDB4();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }
  }

  sub_221ADB35C(&qword_27CFB9FF0, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.Success, &unk_221BDD548);
  v19 = v29;
  sub_221BCCAD8();
  if (v19)
  {
    v20 = v18;
    return sub_2219A1CC8(v20, &qword_27CFBA6C8, &qword_221BE0C68);
  }

  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v15, 1, v5) == 1)
  {
    sub_2219A1CC8(v18, &qword_27CFBA6C8, &qword_221BE0C68);
    v20 = v15;
    return sub_2219A1CC8(v20, &qword_27CFBA6C8, &qword_221BE0C68);
  }

  sub_221ADFDB4();
  if (EnumTagSinglePayload != 1)
  {
    sub_221BCC9A8();
  }

  v22 = v27;
  sub_2219A1CC8(v18, &qword_27CFBA6C8, &qword_221BE0C68);
  v23 = v25;
  sub_2219A1CC8(v25, &unk_27CFBB780, &unk_221BDB150);
  sub_221ADFDB4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_221ABA5AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for AppIntentsProtobuf_Error(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB780, &unk_221BDB150);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.OneOf_Payload(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBA10, &qword_221BE0A90);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_221A1C558();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_2219A1CC8(v10, &unk_27CFBB780, &unk_221BDB150);
  }

  else
  {
    sub_221ADFDB4();
    sub_221ADFDB4();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2219A1CC8(v18, &qword_27CFBBA10, &qword_221BE0A90);
      sub_221ADFDB4();
      sub_221ADFDB4();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_221ADFE28();
    }
  }

  sub_221ADB35C(&qword_27CFB97C0, type metadata accessor for AppIntentsProtobuf_Error, &unk_221BD9C18);
  v19 = v29;
  sub_221BCCAD8();
  if (v19)
  {
    v20 = v18;
    return sub_2219A1CC8(v20, &qword_27CFBBA10, &qword_221BE0A90);
  }

  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v15, 1, v5) == 1)
  {
    sub_2219A1CC8(v18, &qword_27CFBBA10, &qword_221BE0A90);
    v20 = v15;
    return sub_2219A1CC8(v20, &qword_27CFBBA10, &qword_221BE0A90);
  }

  sub_221ADFDB4();
  if (EnumTagSinglePayload != 1)
  {
    sub_221BCC9A8();
  }

  v22 = v27;
  sub_2219A1CC8(v18, &qword_27CFBBA10, &qword_221BE0A90);
  v23 = v25;
  sub_2219A1CC8(v25, &unk_27CFBB780, &unk_221BDB150);
  sub_221ADFDB4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_221ABAAA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.DisambiguationRequest(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB780, &unk_221BDB150);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.OneOf_Payload(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA6D0, &qword_221BE0C70);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_221A1C558();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_2219A1CC8(v10, &unk_27CFBB780, &unk_221BDB150);
  }

  else
  {
    sub_221ADFDB4();
    sub_221ADFDB4();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_2219A1CC8(v18, &qword_27CFBA6D0, &qword_221BE0C70);
      sub_221ADFDB4();
      sub_221ADFDB4();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_221ADFE28();
    }
  }

  sub_221ADB35C(&qword_27CFB9FD0, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.DisambiguationRequest, &unk_221BDD3E0);
  v19 = v29;
  sub_221BCCAD8();
  if (v19)
  {
    v20 = v18;
    return sub_2219A1CC8(v20, &qword_27CFBA6D0, &qword_221BE0C70);
  }

  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v15, 1, v5) == 1)
  {
    sub_2219A1CC8(v18, &qword_27CFBA6D0, &qword_221BE0C70);
    v20 = v15;
    return sub_2219A1CC8(v20, &qword_27CFBA6D0, &qword_221BE0C70);
  }

  sub_221ADFDB4();
  if (EnumTagSinglePayload != 1)
  {
    sub_221BCC9A8();
  }

  v22 = v27;
  sub_2219A1CC8(v18, &qword_27CFBA6D0, &qword_221BE0C70);
  v23 = v25;
  sub_2219A1CC8(v25, &unk_27CFBB780, &unk_221BDB150);
  sub_221ADFDB4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_221ABAF9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.NeedsValueRequest(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB780, &unk_221BDB150);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.OneOf_Payload(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA6D8, &qword_221BE0C78);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_221A1C558();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_2219A1CC8(v10, &unk_27CFBB780, &unk_221BDB150);
  }

  else
  {
    sub_221ADFDB4();
    sub_221ADFDB4();
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_2219A1CC8(v18, &qword_27CFBA6D8, &qword_221BE0C78);
      sub_221ADFDB4();
      sub_221ADFDB4();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_221ADFE28();
    }
  }

  sub_221ADB35C(&qword_27CFB9F60, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.NeedsValueRequest, &unk_221BDCE18);
  v19 = v29;
  sub_221BCCAD8();
  if (v19)
  {
    v20 = v18;
    return sub_2219A1CC8(v20, &qword_27CFBA6D8, &qword_221BE0C78);
  }

  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v15, 1, v5) == 1)
  {
    sub_2219A1CC8(v18, &qword_27CFBA6D8, &qword_221BE0C78);
    v20 = v15;
    return sub_2219A1CC8(v20, &qword_27CFBA6D8, &qword_221BE0C78);
  }

  sub_221ADFDB4();
  if (EnumTagSinglePayload != 1)
  {
    sub_221BCC9A8();
  }

  v22 = v27;
  sub_2219A1CC8(v18, &qword_27CFBA6D8, &qword_221BE0C78);
  v23 = v25;
  sub_2219A1CC8(v25, &unk_27CFBB780, &unk_221BDB150);
  sub_221ADFDB4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_221ABB494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ConfirmationRequest(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB780, &unk_221BDB150);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.OneOf_Payload(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA6E0, &qword_221BE0C80);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_221A1C558();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_2219A1CC8(v10, &unk_27CFBB780, &unk_221BDB150);
  }

  else
  {
    sub_221ADFDB4();
    sub_221ADFDB4();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_2219A1CC8(v18, &qword_27CFBA6E0, &qword_221BE0C80);
      sub_221ADFDB4();
      sub_221ADFDB4();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_221ADFE28();
    }
  }

  sub_221ADB35C(&qword_27CFB9F40, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ConfirmationRequest, &unk_221BDCCB0);
  v19 = v29;
  sub_221BCCAD8();
  if (v19)
  {
    v20 = v18;
    return sub_2219A1CC8(v20, &qword_27CFBA6E0, &qword_221BE0C80);
  }

  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v15, 1, v5) == 1)
  {
    sub_2219A1CC8(v18, &qword_27CFBA6E0, &qword_221BE0C80);
    v20 = v15;
    return sub_2219A1CC8(v20, &qword_27CFBA6E0, &qword_221BE0C80);
  }

  sub_221ADFDB4();
  if (EnumTagSinglePayload != 1)
  {
    sub_221BCC9A8();
  }

  v22 = v27;
  sub_2219A1CC8(v18, &qword_27CFBA6E0, &qword_221BE0C80);
  v23 = v25;
  sub_2219A1CC8(v25, &unk_27CFBB780, &unk_221BDB150);
  sub_221ADFDB4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_221ABB98C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ActionConfirmationRequest(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB780, &unk_221BDB150);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.OneOf_Payload(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA6E8, &qword_221BE0C88);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_221A1C558();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_2219A1CC8(v10, &unk_27CFBB780, &unk_221BDB150);
  }

  else
  {
    sub_221ADFDB4();
    sub_221ADFDB4();
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_2219A1CC8(v18, &qword_27CFBA6E8, &qword_221BE0C88);
      sub_221ADFDB4();
      sub_221ADFDB4();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_221ADFE28();
    }
  }

  sub_221ADB35C(&unk_27CFBB810, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ActionConfirmationRequest, &unk_221BDC9E0);
  v19 = v29;
  sub_221BCCAD8();
  if (v19)
  {
    v20 = v18;
    return sub_2219A1CC8(v20, &qword_27CFBA6E8, &qword_221BE0C88);
  }

  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v15, 1, v5) == 1)
  {
    sub_2219A1CC8(v18, &qword_27CFBA6E8, &qword_221BE0C88);
    v20 = v15;
    return sub_2219A1CC8(v20, &qword_27CFBA6E8, &qword_221BE0C88);
  }

  sub_221ADFDB4();
  if (EnumTagSinglePayload != 1)
  {
    sub_221BCC9A8();
  }

  v22 = v27;
  sub_2219A1CC8(v18, &qword_27CFBA6E8, &qword_221BE0C88);
  v23 = v25;
  sub_2219A1CC8(v25, &unk_27CFBB780, &unk_221BDB150);
  sub_221ADFDB4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_221ABBE84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ContinueInAppRequest(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB780, &unk_221BDB150);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.OneOf_Payload(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA6F0, &qword_221BE0C90);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_221A1C558();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_2219A1CC8(v10, &unk_27CFBB780, &unk_221BDB150);
  }

  else
  {
    sub_221ADFDB4();
    sub_221ADFDB4();
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_2219A1CC8(v18, &qword_27CFBA6F0, &qword_221BE0C90);
      sub_221ADFDB4();
      sub_221ADFDB4();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_221ADFE28();
    }
  }

  sub_221ADB35C(&unk_27CFBB800, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ContinueInAppRequest, &unk_221BDC878);
  v19 = v29;
  sub_221BCCAD8();
  if (v19)
  {
    v20 = v18;
    return sub_2219A1CC8(v20, &qword_27CFBA6F0, &qword_221BE0C90);
  }

  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v15, 1, v5) == 1)
  {
    sub_2219A1CC8(v18, &qword_27CFBA6F0, &qword_221BE0C90);
    v20 = v15;
    return sub_2219A1CC8(v20, &qword_27CFBA6F0, &qword_221BE0C90);
  }

  sub_221ADFDB4();
  if (EnumTagSinglePayload != 1)
  {
    sub_221BCC9A8();
  }

  v22 = v27;
  sub_2219A1CC8(v18, &qword_27CFBA6F0, &qword_221BE0C90);
  v23 = v25;
  sub_2219A1CC8(v25, &unk_27CFBB780, &unk_221BDB150);
  sub_221ADFDB4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_221ABC37C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ChoiceRequest(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB780, &unk_221BDB150);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.OneOf_Payload(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA6F8, &qword_221BE0C98);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_221A1C558();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_2219A1CC8(v10, &unk_27CFBB780, &unk_221BDB150);
  }

  else
  {
    sub_221ADFDB4();
    sub_221ADFDB4();
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_2219A1CC8(v18, &qword_27CFBA6F8, &qword_221BE0C98);
      sub_221ADFDB4();
      sub_221ADFDB4();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_221ADFE28();
    }
  }

  sub_221ADB35C(&unk_27CFBB7F0, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ChoiceRequest, &unk_221BDD110);
  v19 = v29;
  sub_221BCCAD8();
  if (v19)
  {
    v20 = v18;
    return sub_2219A1CC8(v20, &qword_27CFBA6F8, &qword_221BE0C98);
  }

  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v15, 1, v5) == 1)
  {
    sub_2219A1CC8(v18, &qword_27CFBA6F8, &qword_221BE0C98);
    v20 = v15;
    return sub_2219A1CC8(v20, &qword_27CFBA6F8, &qword_221BE0C98);
  }

  sub_221ADFDB4();
  if (EnumTagSinglePayload != 1)
  {
    sub_221BCC9A8();
  }

  v22 = v27;
  sub_2219A1CC8(v18, &qword_27CFBA6F8, &qword_221BE0C98);
  v23 = v25;
  sub_2219A1CC8(v25, &unk_27CFBB780, &unk_221BDB150);
  sub_221ADFDB4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

void sub_221ABC874(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_356();
  OUTLINED_FUNCTION_91_5();
  v4 = OUTLINED_FUNCTION_3_4();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_8_1(v6);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_68_3();
  OUTLINED_FUNCTION_173_2();
  sub_221A1C558();
  v8 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.OneOf_Payload(0);
  OUTLINED_FUNCTION_31_8(v8);
  if (v9)
  {
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_120();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v30 = OUTLINED_FUNCTION_15_11();
      sub_221ABCBC0(v30, v31, v32, v33);
      break;
    case 2u:
      v18 = OUTLINED_FUNCTION_15_11();
      sub_221ABCDD4(v18, v19, v20, v21);
      break;
    case 3u:
      v22 = OUTLINED_FUNCTION_15_11();
      sub_221ABCFE8(v22, v23, v24, v25);
      break;
    case 4u:
      v14 = OUTLINED_FUNCTION_15_11();
      sub_221ABD1FC(v14, v15, v16, v17);
      break;
    case 5u:
      v34 = OUTLINED_FUNCTION_15_11();
      sub_221ABD410(v34, v35, v36, v37);
      break;
    case 6u:
      v38 = OUTLINED_FUNCTION_15_11();
      sub_221ABD624(v38, v39, v40, v41);
      break;
    case 7u:
      v26 = OUTLINED_FUNCTION_15_11();
      sub_221ABD838(v26, v27, v28, v29);
      break;
    default:
      v10 = OUTLINED_FUNCTION_15_11();
      sub_221ABC9B0(v10, v11, v12, v13);
      break;
  }

  OUTLINED_FUNCTION_50_5();
  sub_221ADFE28();
  if (!v3)
  {
LABEL_12:
    type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse(0);
    OUTLINED_FUNCTION_94_4();
  }

  OUTLINED_FUNCTION_207_2();
  OUTLINED_FUNCTION_355();
}

uint64_t sub_221ABC9B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB780, &unk_221BDB150);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.Success(0);
  MEMORY[0x28223BE20](v7);
  sub_221A1C558();
  v8 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.OneOf_Payload(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_2219A1CC8(v6, &unk_27CFBB780, &unk_221BDB150);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_221ADFDB4();
      sub_221ADB35C(&qword_27CFB9FF0, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.Success, &unk_221BDD548);
      sub_221BCCC38();
      return sub_221ADFE28();
    }

    result = sub_221ADFE28();
  }

  __break(1u);
  return result;
}

uint64_t sub_221ABCBC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB780, &unk_221BDB150);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for AppIntentsProtobuf_Error(0);
  MEMORY[0x28223BE20](v7);
  sub_221A1C558();
  v8 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.OneOf_Payload(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_2219A1CC8(v6, &unk_27CFBB780, &unk_221BDB150);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_221ADFDB4();
      sub_221ADB35C(&qword_27CFB97C0, type metadata accessor for AppIntentsProtobuf_Error, &unk_221BD9C18);
      sub_221BCCC38();
      return sub_221ADFE28();
    }

    result = sub_221ADFE28();
  }

  __break(1u);
  return result;
}

uint64_t sub_221ABCDD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB780, &unk_221BDB150);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.DisambiguationRequest(0);
  MEMORY[0x28223BE20](v7);
  sub_221A1C558();
  v8 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.OneOf_Payload(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_2219A1CC8(v6, &unk_27CFBB780, &unk_221BDB150);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_221ADFDB4();
      sub_221ADB35C(&qword_27CFB9FD0, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.DisambiguationRequest, &unk_221BDD3E0);
      sub_221BCCC38();
      return sub_221ADFE28();
    }

    result = sub_221ADFE28();
  }

  __break(1u);
  return result;
}

uint64_t sub_221ABCFE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB780, &unk_221BDB150);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.NeedsValueRequest(0);
  MEMORY[0x28223BE20](v7);
  sub_221A1C558();
  v8 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.OneOf_Payload(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_2219A1CC8(v6, &unk_27CFBB780, &unk_221BDB150);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_221ADFDB4();
      sub_221ADB35C(&qword_27CFB9F60, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.NeedsValueRequest, &unk_221BDCE18);
      sub_221BCCC38();
      return sub_221ADFE28();
    }

    result = sub_221ADFE28();
  }

  __break(1u);
  return result;
}

uint64_t sub_221ABD1FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB780, &unk_221BDB150);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ConfirmationRequest(0);
  MEMORY[0x28223BE20](v7);
  sub_221A1C558();
  v8 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.OneOf_Payload(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_2219A1CC8(v6, &unk_27CFBB780, &unk_221BDB150);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_221ADFDB4();
      sub_221ADB35C(&qword_27CFB9F40, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ConfirmationRequest, &unk_221BDCCB0);
      sub_221BCCC38();
      return sub_221ADFE28();
    }

    result = sub_221ADFE28();
  }

  __break(1u);
  return result;
}

uint64_t sub_221ABD410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB780, &unk_221BDB150);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ActionConfirmationRequest(0);
  MEMORY[0x28223BE20](v7);
  sub_221A1C558();
  v8 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.OneOf_Payload(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_2219A1CC8(v6, &unk_27CFBB780, &unk_221BDB150);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_221ADFDB4();
      sub_221ADB35C(&unk_27CFBB810, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ActionConfirmationRequest, &unk_221BDC9E0);
      sub_221BCCC38();
      return sub_221ADFE28();
    }

    result = sub_221ADFE28();
  }

  __break(1u);
  return result;
}

uint64_t sub_221ABD624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB780, &unk_221BDB150);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ContinueInAppRequest(0);
  MEMORY[0x28223BE20](v7);
  sub_221A1C558();
  v8 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.OneOf_Payload(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_2219A1CC8(v6, &unk_27CFBB780, &unk_221BDB150);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_221ADFDB4();
      sub_221ADB35C(&unk_27CFBB800, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ContinueInAppRequest, &unk_221BDC878);
      sub_221BCCC38();
      return sub_221ADFE28();
    }

    result = sub_221ADFE28();
  }

  __break(1u);
  return result;
}

uint64_t sub_221ABD838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB780, &unk_221BDB150);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ChoiceRequest(0);
  MEMORY[0x28223BE20](v7);
  sub_221A1C558();
  v8 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.OneOf_Payload(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_2219A1CC8(v6, &unk_27CFBB780, &unk_221BDB150);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_221ADFDB4();
      sub_221ADB35C(&unk_27CFBB7F0, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ChoiceRequest, &unk_221BDD110);
      sub_221BCCC38();
      return sub_221ADFE28();
    }

    result = sub_221ADFE28();
  }

  __break(1u);
  return result;
}

void sub_221ABDA4C()
{
  OUTLINED_FUNCTION_21();
  v1 = OUTLINED_FUNCTION_88_5();
  type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.OneOf_Payload(v1);
  OUTLINED_FUNCTION_60_6();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_14_13();
  v3 = OUTLINED_FUNCTION_120();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_8_1(v5);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_97_3();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA700, &qword_221BE0CA0);
  OUTLINED_FUNCTION_8_1(v7);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_72_5();
  OUTLINED_FUNCTION_157_1();
  OUTLINED_FUNCTION_53_7(v0);
  if (v9)
  {
    OUTLINED_FUNCTION_35_8();
    if (v9)
    {
      sub_2219A1CC8(v0, &unk_27CFBB780, &unk_221BDB150);
LABEL_12:
      type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse(0);
      OUTLINED_FUNCTION_259_0();
      sub_221BCC8D8();
      OUTLINED_FUNCTION_0_41();
      v15 = sub_221ADB35C(v13, v14, MEMORY[0x277D216D0]);
      v10 = OUTLINED_FUNCTION_36_8(v15);
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_1();
  sub_221A1C558();
  OUTLINED_FUNCTION_35_8();
  if (v9)
  {
    OUTLINED_FUNCTION_50_5();
    sub_221ADFE28();
LABEL_9:
    sub_2219A1CC8(v0, &qword_27CFBA700, &qword_221BE0CA0);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_223_2();
  OUTLINED_FUNCTION_118();
  sub_221A8BD70();
  v12 = v11;
  sub_221ADFE28();
  OUTLINED_FUNCTION_234_1();
  sub_221ADFE28();
  sub_2219A1CC8(v0, &unk_27CFBB780, &unk_221BDB150);
  if (v12)
  {
    goto LABEL_12;
  }

LABEL_10:
  v10 = 0;
LABEL_13:
  OUTLINED_FUNCTION_100_3(v10);
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221ABDCE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_221ADB35C(&qword_27CFBA6C0, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse, &unk_221BDD678);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221ABDD80(uint64_t a1)
{
  v2 = sub_221ADB35C(&unk_27CFBB2E0, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse, &unk_221BDD6B0);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221ABDE48(uint64_t a1, uint64_t a2)
{
  sub_221ADB35C(&unk_27CFBB2E0, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse, &unk_221BDD6B0);

  return sub_221BCCB48();
}

uint64_t sub_221ABDEC8()
{
  if (qword_27CFB70A0 != -1)
  {
    swift_once();
  }

  v1 = qword_27CFDE1E0;
  v2 = *algn_27CFDE1E8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x223DA31F0](0x737365636375532ELL, 0xE800000000000000);

  qword_27CFDE208 = v1;
  unk_27CFDE210 = v2;
  return result;
}

uint64_t sub_221ABDF6C()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDE218);
  __swift_project_value_buffer(v0, qword_27CFDE218);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_221BCF7F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "output";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_221BCCC48();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "effectiveBundleIdentifier";
  *(v10 + 1) = 25;
  v10[16] = 2;
  v9();
  return sub_221BCCC58();
}

uint64_t sub_221ABE134()
{
  OUTLINED_FUNCTION_15_10();
  while (1)
  {
    OUTLINED_FUNCTION_56_3();
    result = sub_221BCC998();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_54_5();
      sub_221BCCA98();
    }

    else if (result == 1)
    {
      v3 = OUTLINED_FUNCTION_5_17();
      sub_221ABE198(v3, v4, v5, v6);
    }
  }

  return result;
}

uint64_t sub_221ABE198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.Success(0);
  type metadata accessor for AppIntentsProtobuf_ActionOutput(0);
  sub_221ADB35C(&unk_27CFBB820, type metadata accessor for AppIntentsProtobuf_ActionOutput, &unk_221BDABB8);
  return sub_221BCCAD8();
}

uint64_t sub_221ABE24C()
{
  OUTLINED_FUNCTION_13_11();
  OUTLINED_FUNCTION_27_8();
  result = sub_221ABE2C4(v1, v2, v3, v4);
  if (!v0)
  {
    OUTLINED_FUNCTION_25_8();
    if (v7)
    {
      OUTLINED_FUNCTION_124_4(v6);
    }

    type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.Success(0);
    return OUTLINED_FUNCTION_30_7();
  }

  return result;
}

uint64_t sub_221ABE2C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9D00, &unk_221BDB1B0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for AppIntentsProtobuf_ActionOutput(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.Success(0);
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_2219A1CC8(v6, &qword_27CFB9D00, &unk_221BDB1B0);
  }

  sub_221ADFDB4();
  sub_221ADB35C(&unk_27CFBB820, type metadata accessor for AppIntentsProtobuf_ActionOutput, &unk_221BDABB8);
  sub_221BCCC38();
  return sub_221ADFE28();
}

void sub_221ABE4A4()
{
  OUTLINED_FUNCTION_21();
  type metadata accessor for AppIntentsProtobuf_ActionOutput(0);
  OUTLINED_FUNCTION_43_8();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_246_1();
  v6 = OUTLINED_FUNCTION_3_4();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_8_1(v8);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_99_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA710, &unk_221BE0CB0);
  OUTLINED_FUNCTION_125_2();
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v10);
  v11 = OUTLINED_FUNCTION_29_8();
  type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.Success(v11);
  v12 = *(v4 + 56);
  OUTLINED_FUNCTION_173_2();
  sub_221A1C558();
  OUTLINED_FUNCTION_173_2();
  sub_221A1C558();
  OUTLINED_FUNCTION_20_8(v1);
  if (!v13)
  {
    sub_221A1C558();
    OUTLINED_FUNCTION_20_8(v1 + v12);
    if (!v13)
    {
      OUTLINED_FUNCTION_256_0();
      sub_221ADFDB4();
      if (*(v3 + *(v0 + 20)) == *(v2 + *(v0 + 20)) || (, , sub_221A75FF0(), v18 = v17, , , (v18 & 1) != 0))
      {
        sub_221BCC8D8();
        OUTLINED_FUNCTION_0_41();
        sub_221ADB35C(v19, v20, MEMORY[0x277D216D0]);
        OUTLINED_FUNCTION_144_3();
        v21 = sub_221BCD338();
        sub_221ADFE28();
        OUTLINED_FUNCTION_120();
        sub_221ADFE28();
        sub_2219A1CC8(v1, &qword_27CFB9D00, &unk_221BDB1B0);
        if ((v21 & 1) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_15;
      }

      OUTLINED_FUNCTION_257_0();
      sub_221ADFE28();
      sub_221ADFE28();
      v14 = &qword_27CFB9D00;
      v15 = &unk_221BDB1B0;
LABEL_10:
      sub_2219A1CC8(v1, v14, v15);
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_195_2();
    sub_221ADFE28();
LABEL_9:
    v14 = &qword_27CFBA710;
    v15 = &unk_221BE0CB0;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_20_8(v1 + v12);
  if (!v13)
  {
    goto LABEL_9;
  }

  sub_2219A1CC8(v1, &qword_27CFB9D00, &unk_221BDB1B0);
LABEL_15:
  OUTLINED_FUNCTION_136_3();
  if (v13)
  {
    v24 = v22 == v23;
  }

  else
  {
    v24 = 0;
  }

  if (v24 || (sub_221BCE1B8() & 1) != 0)
  {
    sub_221BCC8D8();
    OUTLINED_FUNCTION_0_41();
    sub_221ADB35C(v25, v26, MEMORY[0x277D216D0]);
    v27 = OUTLINED_FUNCTION_271_0();
    v16 = OUTLINED_FUNCTION_361(v27, v28, v29, v30);
    goto LABEL_21;
  }

LABEL_11:
  v16 = 0;
LABEL_21:
  OUTLINED_FUNCTION_100_3(v16);
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221ABE858(uint64_t a1, uint64_t a2)
{
  v4 = sub_221ADB35C(&qword_27CFBA730, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.Success, &unk_221BDD510);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221ABE8F8(uint64_t a1)
{
  v2 = sub_221ADB35C(&qword_27CFB9FF0, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.Success, &unk_221BDD548);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221ABE9C0(uint64_t a1, uint64_t a2)
{
  sub_221ADB35C(&qword_27CFB9FF0, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.Success, &unk_221BDD548);

  return sub_221BCCB48();
}

uint64_t sub_221ABEA40()
{
  if (qword_27CFB70A0 != -1)
  {
    swift_once();
  }

  v1 = qword_27CFDE1E0;
  v2 = *algn_27CFDE1E8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x223DA31F0](0xD000000000000016, 0x8000000221BEFFE0);

  qword_27CFDE230 = v1;
  *algn_27CFDE238 = v2;
  return result;
}

uint64_t sub_221ABEAE8()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDE240);
  __swift_project_value_buffer(v0, qword_27CFDE240);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_221BD26F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "executionIdentifier";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_221BCCC48();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "parameterMetadata";
  *(v10 + 8) = 17;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "dialog";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "providedValues";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  return sub_221BCCC58();
}

uint64_t sub_221ABED60(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t *a4)
{
  a2(0);
  OUTLINED_FUNCTION_174_2();
  swift_allocObject();
  result = a3();
  *a4 = result;
  return result;
}

uint64_t sub_221ABEDB0()
{
  v1 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse21DisambiguationRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__executionIdentifier;
  v2 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse21DisambiguationRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__parameterMetadata;
  v4 = type metadata accessor for AppIntentsProtobuf_IntentParameterMetadata(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse21DisambiguationRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__dialog;
  v6 = type metadata accessor for AppIntentsProtobuf_Dialog(0);
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  *(v0 + OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse21DisambiguationRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__providedValues) = MEMORY[0x277D84F90];
  return v0;
}

uint64_t sub_221ABEE50(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB790, &qword_221BDADD8);
  MEMORY[0x28223BE20](v3 - 8);
  v17 = &v17 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB7D0, &unk_221BE4E60);
  MEMORY[0x28223BE20](v5 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9988, &qword_221BDAE20);
  MEMORY[0x28223BE20](v6 - 8);
  v7 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse21DisambiguationRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__executionIdentifier;
  v8 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  __swift_storeEnumTagSinglePayload(v1 + v7, 1, 1, v8);
  v9 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse21DisambiguationRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__parameterMetadata;
  v10 = type metadata accessor for AppIntentsProtobuf_IntentParameterMetadata(0);
  __swift_storeEnumTagSinglePayload(v1 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse21DisambiguationRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__dialog;
  v12 = type metadata accessor for AppIntentsProtobuf_Dialog(0);
  __swift_storeEnumTagSinglePayload(v1 + v11, 1, 1, v12);
  v13 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse21DisambiguationRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__providedValues;
  *(v1 + OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse21DisambiguationRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__providedValues) = MEMORY[0x277D84F90];
  swift_beginAccess();
  sub_221A1C558();
  swift_beginAccess();
  sub_221A855A4();
  swift_endAccess();
  swift_beginAccess();
  sub_221A1C558();
  swift_beginAccess();
  sub_221A855A4();
  swift_endAccess();
  swift_beginAccess();
  sub_221A1C558();
  swift_beginAccess();
  sub_221A855A4();
  swift_endAccess();
  v14 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse21DisambiguationRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__providedValues;
  swift_beginAccess();
  v15 = *(a1 + v14);

  swift_beginAccess();
  *(v1 + v13) = v15;

  return v1;
}

uint64_t sub_221ABF1A4()
{
  sub_2219A1CC8(v0 + OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse21DisambiguationRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__executionIdentifier, &qword_27CFB9988, &qword_221BDAE20);
  sub_2219A1CC8(v0 + OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse21DisambiguationRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__parameterMetadata, &unk_27CFBB7D0, &unk_221BE4E60);
  sub_2219A1CC8(v0 + OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse21DisambiguationRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__dialog, &unk_27CFBB790, &qword_221BDADD8);

  return v0;
}

void sub_221ABF2A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_221ABF30C()
{
  OUTLINED_FUNCTION_151_2();
  OUTLINED_FUNCTION_114_3();
  v1 = *(type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.DisambiguationRequest(0) + 20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.DisambiguationRequest._StorageClass(0);
    OUTLINED_FUNCTION_174_2();
    swift_allocObject();
    v2 = OUTLINED_FUNCTION_55_7();
    *(v0 + v1) = sub_221ABEE50(v2);
  }

  v3 = OUTLINED_FUNCTION_15_11();
  sub_221AC86EC(v3, v4, v5, v6);
  OUTLINED_FUNCTION_152_2();
}

uint64_t sub_221ABF3D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for AppIntentsProtobuf_UUID(0);
  sub_221ADB35C(&unk_27CFBB750, type metadata accessor for AppIntentsProtobuf_UUID, &unk_221BD90D8);
  sub_221BCCAD8();
  return swift_endAccess();
}

uint64_t sub_221ABF4B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for AppIntentsProtobuf_IntentParameterMetadata(0);
  sub_221ADB35C(&unk_27CFBB860, type metadata accessor for AppIntentsProtobuf_IntentParameterMetadata, &unk_221BD9948);
  sub_221BCCAD8();
  return swift_endAccess();
}

uint64_t sub_221ABF590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for AppIntentsProtobuf_Dialog(0);
  sub_221ADB35C(&qword_27CFBB830, type metadata accessor for AppIntentsProtobuf_Dialog, &unk_221BDA780);
  sub_221BCCAD8();
  return swift_endAccess();
}

uint64_t sub_221ABF66C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.DisambiguationRequest.ProvidedValue(0);
  sub_221ADB35C(&qword_27CFB9FB0, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.DisambiguationRequest.ProvidedValue, &unk_221BDD278);
  sub_221BCCAC8();
  return swift_endAccess();
}

uint64_t sub_221ABF748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_221ABF878(a1, a2, a3, a4);
  if (!v4)
  {
    sub_221ABFA6C(a1, a2, a3, a4);
    sub_221ABFC60(a1, a2, a3, a4);
    v10 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse21DisambiguationRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__providedValues;
    result = swift_beginAccess();
    if (*(*(a1 + v10) + 16))
    {
      type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.DisambiguationRequest.ProvidedValue(0);
      sub_221ADB35C(&qword_27CFB9FB0, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.DisambiguationRequest.ProvidedValue, &unk_221BDD278);

      sub_221BCCC18();
    }
  }

  return result;
}

uint64_t sub_221ABF878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[5] = a4;
  v9[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9988, &qword_221BDAE20);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  MEMORY[0x28223BE20](v7);
  swift_beginAccess();
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_2219A1CC8(v6, &qword_27CFB9988, &qword_221BDAE20);
  }

  sub_221ADFDB4();
  sub_221ADB35C(&unk_27CFBB750, type metadata accessor for AppIntentsProtobuf_UUID, &unk_221BD90D8);
  sub_221BCCC38();
  return sub_221ADFE28();
}

uint64_t sub_221ABFA6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[5] = a4;
  v9[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB7D0, &unk_221BE4E60);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for AppIntentsProtobuf_IntentParameterMetadata(0);
  MEMORY[0x28223BE20](v7);
  swift_beginAccess();
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_2219A1CC8(v6, &unk_27CFBB7D0, &unk_221BE4E60);
  }

  sub_221ADFDB4();
  sub_221ADB35C(&unk_27CFBB860, type metadata accessor for AppIntentsProtobuf_IntentParameterMetadata, &unk_221BD9948);
  sub_221BCCC38();
  return sub_221ADFE28();
}

uint64_t sub_221ABFC60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[5] = a4;
  v9[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB790, &qword_221BDADD8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for AppIntentsProtobuf_Dialog(0);
  MEMORY[0x28223BE20](v7);
  swift_beginAccess();
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_2219A1CC8(v6, &unk_27CFBB790, &qword_221BDADD8);
  }

  sub_221ADFDB4();
  sub_221ADB35C(&qword_27CFBB830, type metadata accessor for AppIntentsProtobuf_Dialog, &unk_221BDA780);
  sub_221BCCC38();
  return sub_221ADFE28();
}

uint64_t sub_221ABFE54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v7 = OUTLINED_FUNCTION_88_5();
  v9 = v8(v7);
  if (*(v5 + *(v9 + 20)) != *(v4 + *(v9 + 20)))
  {

    v10 = OUTLINED_FUNCTION_1();
    v11 = a4(v10);

    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  sub_221BCC8D8();
  OUTLINED_FUNCTION_0_41();
  v14 = sub_221ADB35C(v12, v13, MEMORY[0x277D216D0]);
  return OUTLINED_FUNCTION_135_3(v14) & 1;
}

uint64_t sub_221ABFF18(uint64_t a1, uint64_t a2)
{
  v75 = a2;
  v66 = type metadata accessor for AppIntentsProtobuf_Dialog(0);
  MEMORY[0x28223BE20](v66);
  v62 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9978, &qword_221BDAE18);
  MEMORY[0x28223BE20](v65);
  v67 = &v61 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB790, &qword_221BDADD8);
  MEMORY[0x28223BE20](v5 - 8);
  v63 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v74 = &v61 - v8;
  v72 = type metadata accessor for AppIntentsProtobuf_IntentParameterMetadata(0);
  MEMORY[0x28223BE20](v72);
  v64 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA718, &qword_221BE0CC0);
  MEMORY[0x28223BE20](v70);
  v73 = &v61 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB7D0, &unk_221BE4E60);
  MEMORY[0x28223BE20](v11 - 8);
  v68 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v71 = &v61 - v14;
  v15 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  MEMORY[0x28223BE20](v15);
  v69 = (&v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9990, &qword_221BDAE28);
  v18 = v17 - 8;
  MEMORY[0x28223BE20](v17);
  v20 = &v61 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9988, &qword_221BDAE20);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = (&v61 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v24);
  v26 = &v61 - v25;
  swift_beginAccess();
  v27 = a1;
  sub_221A1C558();
  v28 = v75;
  swift_beginAccess();
  v29 = *(v18 + 56);
  sub_221A1C558();
  v30 = v28;
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v20, 1, v15) == 1)
  {

    sub_2219A1CC8(v26, &qword_27CFB9988, &qword_221BDAE20);
    if (__swift_getEnumTagSinglePayload(&v20[v29], 1, v15) == 1)
    {
      sub_2219A1CC8(v20, &qword_27CFB9988, &qword_221BDAE20);
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(&v20[v29], 1, v15) == 1)
  {

    sub_2219A1CC8(v26, &qword_27CFB9988, &qword_221BDAE20);
    sub_221ADFE28();
LABEL_9:
    v37 = &qword_27CFB9990;
    v38 = &qword_221BDAE28;
    v39 = v20;
LABEL_26:
    sub_2219A1CC8(v39, v37, v38);
    goto LABEL_27;
  }

  v40 = v69;
  sub_221ADFDB4();
  if (*v23 != *v40 || v23[1] != v40[1])
  {

    sub_221ADFE28();
    sub_2219A1CC8(v26, &qword_27CFB9988, &qword_221BDAE20);
    sub_221ADFE28();
    v39 = v20;
    v37 = &qword_27CFB9988;
    v38 = &qword_221BDAE20;
    goto LABEL_26;
  }

  sub_221BCC8D8();
  sub_221ADB35C(&qword_27CFB85D8, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);

  v41 = sub_221BCD338();
  sub_221ADFE28();
  sub_2219A1CC8(v26, &qword_27CFB9988, &qword_221BDAE20);
  sub_221ADFE28();
  sub_2219A1CC8(v20, &qword_27CFB9988, &qword_221BDAE20);
  if ((v41 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_4:
  swift_beginAccess();
  v31 = v71;
  sub_221A1C558();
  swift_beginAccess();
  v32 = *(v70 + 48);
  v33 = v73;
  sub_221A1C558();
  sub_221A1C558();
  v34 = v72;
  if (__swift_getEnumTagSinglePayload(v33, 1, v72) != 1)
  {
    v42 = v68;
    sub_221A1C558();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v33 + v32, 1, v34);
    v36 = v74;
    if (EnumTagSinglePayload != 1)
    {
      sub_221ADFDB4();
      v44 = sub_221A7F29C(v42);
      sub_221ADFE28();
      sub_2219A1CC8(v31, &unk_27CFBB7D0, &unk_221BE4E60);
      sub_221ADFE28();
      sub_2219A1CC8(v33, &unk_27CFBB7D0, &unk_221BE4E60);
      if ((v44 & 1) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_19;
    }

    sub_2219A1CC8(v31, &unk_27CFBB7D0, &unk_221BE4E60);
    sub_221ADFE28();
LABEL_17:
    v37 = &qword_27CFBA718;
    v38 = &qword_221BE0CC0;
LABEL_25:
    v39 = v33;
    goto LABEL_26;
  }

  sub_2219A1CC8(v31, &unk_27CFBB7D0, &unk_221BE4E60);
  v35 = __swift_getEnumTagSinglePayload(v33 + v32, 1, v34);
  v36 = v74;
  if (v35 != 1)
  {
    goto LABEL_17;
  }

  sub_2219A1CC8(v33, &unk_27CFBB7D0, &unk_221BE4E60);
LABEL_19:
  swift_beginAccess();
  sub_221A1C558();
  swift_beginAccess();
  v45 = *(v65 + 48);
  v33 = v67;
  sub_221A1C558();
  sub_221A1C558();
  v46 = v66;
  if (__swift_getEnumTagSinglePayload(v33, 1, v66) == 1)
  {
    sub_2219A1CC8(v36, &unk_27CFBB790, &qword_221BDADD8);
    if (__swift_getEnumTagSinglePayload(v33 + v45, 1, v46) == 1)
    {
      sub_2219A1CC8(v33, &unk_27CFBB790, &qword_221BDADD8);
LABEL_30:
      v50 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse21DisambiguationRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__providedValues;
      swift_beginAccess();
      v51 = *(v27 + v50);
      v52 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse21DisambiguationRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__providedValues;
      swift_beginAccess();
      v53 = *(v30 + v52);

      sub_221A1A0E0(v51, v53, v54, v55, v56, v57, v58, v59, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72);
      v47 = v60;

      return v47 & 1;
    }

    goto LABEL_24;
  }

  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v33 + v45, 1, v46) == 1)
  {
    sub_2219A1CC8(v36, &unk_27CFBB790, &qword_221BDADD8);
    sub_221ADFE28();
LABEL_24:
    v37 = &qword_27CFB9978;
    v38 = &qword_221BDAE18;
    goto LABEL_25;
  }

  sub_221ADFDB4();
  v49 = sub_221A7941C();
  sub_221ADFE28();
  sub_2219A1CC8(v36, &unk_27CFBB790, &qword_221BDADD8);
  sub_221ADFE28();
  sub_2219A1CC8(v33, &unk_27CFBB790, &qword_221BDADD8);
  if (v49)
  {
    goto LABEL_30;
  }

LABEL_27:

  v47 = 0;
  return v47 & 1;
}

uint64_t sub_221AC0BB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_221ADB35C(&qword_27CFBA738, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.DisambiguationRequest, &unk_221BDD3A8);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221AC0C54(uint64_t a1)
{
  v2 = sub_221ADB35C(&qword_27CFB9FD0, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.DisambiguationRequest, &unk_221BDD3E0);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221AC0D1C(uint64_t a1, uint64_t a2)
{
  sub_221ADB35C(&qword_27CFB9FD0, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.DisambiguationRequest, &unk_221BDD3E0);

  return sub_221BCCB48();
}

uint64_t sub_221AC0DDC()
{
  if (qword_27CFB70C0 != -1)
  {
    swift_once();
  }

  v1 = qword_27CFDE230;
  v2 = *algn_27CFDE238;
  swift_bridgeObjectRetain_n();
  MEMORY[0x223DA31F0](0x656469766F72502ELL, 0xEE0065756C615664);

  qword_27CFDE258 = v1;
  unk_27CFDE260 = v2;
  return result;
}

uint64_t sub_221AC0E8C()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDE268);
  __swift_project_value_buffer(v0, qword_27CFDE268);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_221BD6DE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "displayRepresentation";
  *(v6 + 8) = 21;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_221BCCC48();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "originalIndex";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "value";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  return sub_221BCCC58();
}

uint64_t sub_221AC1094()
{
  OUTLINED_FUNCTION_15_10();
  while (1)
  {
    OUTLINED_FUNCTION_56_3();
    result = sub_221BCC998();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        v7 = OUTLINED_FUNCTION_5_17();
        sub_221AC11C4(v7, v8, v9, v10);
        break;
      case 2:
        OUTLINED_FUNCTION_54_5();
        sub_221BCCA38();
        break;
      case 1:
        v3 = OUTLINED_FUNCTION_5_17();
        sub_221AC1110(v3, v4, v5, v6);
        break;
    }
  }

  return result;
}

uint64_t sub_221AC1110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.DisambiguationRequest.ProvidedValue(0);
  type metadata accessor for AppIntentsProtobuf_DisplayRepresentation(0);
  sub_221ADB35C(&qword_27CFB9870, type metadata accessor for AppIntentsProtobuf_DisplayRepresentation, &unk_221BDA488);
  return sub_221BCCAD8();
}

uint64_t sub_221AC11C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.DisambiguationRequest.ProvidedValue(0);
  type metadata accessor for AppIntentsProtobuf_Value(0);
  sub_221ADB35C(&unk_27CFBB6C0, type metadata accessor for AppIntentsProtobuf_Value, &unk_221BD8F70);
  return sub_221BCCAD8();
}

void sub_221AC1278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_356();
  v7 = v6;
  v9 = v8;
  OUTLINED_FUNCTION_13_11();
  OUTLINED_FUNCTION_27_8();
  v10();
  if (!v4)
  {
    if (*v5)
    {
      OUTLINED_FUNCTION_14_12();
      sub_221BCCBB8();
    }

    v11 = OUTLINED_FUNCTION_3_21();
    v9(v11);
    v7(0);
    OUTLINED_FUNCTION_30_7();
  }

  OUTLINED_FUNCTION_355();
}

uint64_t sub_221AC131C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9C78, &qword_221BDB0F8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for AppIntentsProtobuf_DisplayRepresentation(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.DisambiguationRequest.ProvidedValue(0);
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_2219A1CC8(v6, &qword_27CFB9C78, &qword_221BDB0F8);
  }

  sub_221ADFDB4();
  sub_221ADB35C(&qword_27CFB9870, type metadata accessor for AppIntentsProtobuf_DisplayRepresentation, &unk_221BDA488);
  sub_221BCCC38();
  return sub_221ADFE28();
}

uint64_t sub_221AC14FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB660, &qword_221BE4610);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for AppIntentsProtobuf_Value(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.DisambiguationRequest.ProvidedValue(0);
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_2219A1CC8(v6, &unk_27CFBB660, &qword_221BE4610);
  }

  sub_221ADFDB4();
  sub_221ADB35C(&unk_27CFBB6C0, type metadata accessor for AppIntentsProtobuf_Value, &unk_221BD8F70);
  sub_221BCCC38();
  return sub_221ADFE28();
}

void sub_221AC16DC()
{
  OUTLINED_FUNCTION_21();
  v3 = v2;
  v4 = OUTLINED_FUNCTION_250_1();
  v5 = type metadata accessor for AppIntentsProtobuf_Value(v4);
  v6 = OUTLINED_FUNCTION_67_4(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_17_12(v7, v42);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB660, &qword_221BE4610);
  OUTLINED_FUNCTION_8_1(v8);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_89_5(v10, v43);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB85E0, &unk_221BD3E40);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v11);
  v13 = OUTLINED_FUNCTION_41_4(v12, v44);
  type metadata accessor for AppIntentsProtobuf_DisplayRepresentation(v13);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_4_0();
  v15 = OUTLINED_FUNCTION_27();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(v15, v16);
  OUTLINED_FUNCTION_8_1(v17);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_74_5();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA720, &unk_221BE0CC8) - 8;
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v20);
  v21 = OUTLINED_FUNCTION_96_5();
  v46 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.DisambiguationRequest.ProvidedValue(v21);
  v22 = *(v19 + 56);
  OUTLINED_FUNCTION_399();
  OUTLINED_FUNCTION_399();
  OUTLINED_FUNCTION_22_9(v1);
  if (v23)
  {
    OUTLINED_FUNCTION_22_9(v1 + v22);
    if (v23)
    {
      sub_2219A1CC8(v1, &qword_27CFB9C78, &qword_221BDB0F8);
      goto LABEL_12;
    }

LABEL_9:
    v24 = &qword_27CFBA720;
    v25 = &unk_221BE0CC8;
    v26 = v1;
LABEL_10:
    sub_2219A1CC8(v26, v24, v25);
LABEL_26:
    v33 = 0;
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_353();
  OUTLINED_FUNCTION_22_9(v1 + v22);
  if (v23)
  {
    OUTLINED_FUNCTION_150_2();
    sub_221ADFE28();
    goto LABEL_9;
  }

  sub_221ADFDB4();
  OUTLINED_FUNCTION_18_7();
  sub_221A7AACC();
  v28 = v27;
  sub_221ADFE28();
  OUTLINED_FUNCTION_4();
  sub_221ADFE28();
  sub_2219A1CC8(v1, &qword_27CFB9C78, &qword_221BDB0F8);
  if ((v28 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_12:
  if (*v0 != *v3)
  {
    goto LABEL_26;
  }

  v29 = *(v46 + 28);
  v30 = *(v45 + 48);
  OUTLINED_FUNCTION_233_0();
  OUTLINED_FUNCTION_239_1();
  OUTLINED_FUNCTION_66_3(v47);
  if (v23)
  {
    OUTLINED_FUNCTION_39_8(v30 + v47);
    if (v23)
    {
      sub_2219A1CC8(v47, &unk_27CFBB660, &qword_221BE4610);
      goto LABEL_18;
    }

    goto LABEL_22;
  }

  OUTLINED_FUNCTION_381();
  sub_221A1C558();
  OUTLINED_FUNCTION_39_8(v30 + v47);
  if (v34)
  {
    OUTLINED_FUNCTION_4_19();
    sub_221ADFE28();
LABEL_22:
    v24 = &qword_27CFB85E0;
    v25 = &unk_221BD3E40;
LABEL_23:
    v26 = v47;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_10_14();
  OUTLINED_FUNCTION_325();
  if ((MEMORY[0x223DA21A0](*v29, v29[1], *v30, v30[1]) & 1) == 0)
  {
    OUTLINED_FUNCTION_79_1();
    sub_221ADFE28();
    sub_221ADFE28();
    v24 = &unk_27CFBB660;
    v25 = &qword_221BE4610;
    goto LABEL_23;
  }

  sub_221BCC8D8();
  OUTLINED_FUNCTION_0_41();
  sub_221ADB35C(v35, v36, MEMORY[0x277D216D0]);
  v37 = OUTLINED_FUNCTION_379();
  v41 = OUTLINED_FUNCTION_361(v37, v38, v39, v40);
  OUTLINED_FUNCTION_247_0();
  sub_221ADFE28();
  sub_221ADFE28();
  sub_2219A1CC8(v47, &unk_27CFBB660, &qword_221BE4610);
  if ((v41 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_18:
  OUTLINED_FUNCTION_398();
  OUTLINED_FUNCTION_0_41();
  sub_221ADB35C(v31, v32, MEMORY[0x277D216D0]);
  v33 = sub_221BCD338();
LABEL_27:
  OUTLINED_FUNCTION_100_3(v33);
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221AC1C54(uint64_t a1, uint64_t a2)
{
  v4 = sub_221ADB35C(&qword_27CFBA740, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.DisambiguationRequest.ProvidedValue, &unk_221BDD240);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221AC1CF4(uint64_t a1)
{
  v2 = sub_221ADB35C(&qword_27CFB9FB0, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.DisambiguationRequest.ProvidedValue, &unk_221BDD278);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221AC1DBC(uint64_t a1, uint64_t a2)
{
  sub_221ADB35C(&qword_27CFB9FB0, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.DisambiguationRequest.ProvidedValue, &unk_221BDD278);

  return sub_221BCCB48();
}

uint64_t sub_221AC1E3C()
{
  if (qword_27CFB70A0 != -1)
  {
    swift_once();
  }

  v1 = qword_27CFDE1E0;
  v2 = *algn_27CFDE1E8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x223DA31F0](0x526563696F68432ELL, 0xEE00747365757165);

  qword_27CFDE280 = v1;
  *algn_27CFDE288 = v2;
  return result;
}

uint64_t sub_221AC1EEC()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDE290);
  __swift_project_value_buffer(v0, qword_27CFDE290);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_221BD26F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "executionIdentifier";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_221BCCC48();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "dialog";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "viewSnippet";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "providedOptions";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v9();
  return sub_221BCCC58();
}

uint64_t sub_221AC2164()
{
  v1 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse13ChoiceRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__executionIdentifier;
  v2 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse13ChoiceRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__dialog;
  v4 = type metadata accessor for AppIntentsProtobuf_Dialog(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse13ChoiceRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__viewSnippet;
  v6 = type metadata accessor for AppIntentsProtobuf_ViewSnippet(0);
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  *(v0 + OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse13ChoiceRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__providedOptions) = MEMORY[0x277D84F90];
  return v0;
}

uint64_t sub_221AC2204(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9920, &unk_221BDADC0);
  MEMORY[0x28223BE20](v3 - 8);
  v17 = &v17 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB790, &qword_221BDADD8);
  MEMORY[0x28223BE20](v5 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9988, &qword_221BDAE20);
  MEMORY[0x28223BE20](v6 - 8);
  v7 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse13ChoiceRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__executionIdentifier;
  v8 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  __swift_storeEnumTagSinglePayload(v1 + v7, 1, 1, v8);
  v9 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse13ChoiceRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__dialog;
  v10 = type metadata accessor for AppIntentsProtobuf_Dialog(0);
  __swift_storeEnumTagSinglePayload(v1 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse13ChoiceRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__viewSnippet;
  v12 = type metadata accessor for AppIntentsProtobuf_ViewSnippet(0);
  __swift_storeEnumTagSinglePayload(v1 + v11, 1, 1, v12);
  v13 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse13ChoiceRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__providedOptions;
  *(v1 + OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse13ChoiceRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__providedOptions) = MEMORY[0x277D84F90];
  swift_beginAccess();
  sub_221A1C558();
  swift_beginAccess();
  sub_221A855A4();
  swift_endAccess();
  swift_beginAccess();
  sub_221A1C558();
  swift_beginAccess();
  sub_221A855A4();
  swift_endAccess();
  swift_beginAccess();
  sub_221A1C558();
  swift_beginAccess();
  sub_221A855A4();
  swift_endAccess();
  v14 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse13ChoiceRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__providedOptions;
  swift_beginAccess();
  v15 = *(a1 + v14);

  swift_beginAccess();
  *(v1 + v13) = v15;

  return v1;
}

uint64_t sub_221AC2558()
{
  sub_2219A1CC8(v0 + OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse13ChoiceRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__executionIdentifier, &qword_27CFB9988, &qword_221BDAE20);
  sub_2219A1CC8(v0 + OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse13ChoiceRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__dialog, &unk_27CFBB790, &qword_221BDADD8);
  sub_2219A1CC8(v0 + OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse13ChoiceRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__viewSnippet, &qword_27CFB9920, &unk_221BDADC0);

  return v0;
}

void sub_221AC265C()
{
  OUTLINED_FUNCTION_217_2();
  OUTLINED_FUNCTION_126_3();
  sub_221ABF2A8(319, v0, v1, MEMORY[0x277D83D88]);
  if (v2 <= 0x3F)
  {
    OUTLINED_FUNCTION_9_15();
    OUTLINED_FUNCTION_58_6();
    sub_221ABF2A8(v3, v4, v5, v6);
    if (v7 <= 0x3F)
    {
      OUTLINED_FUNCTION_9_15();
      OUTLINED_FUNCTION_316();
      sub_221ABF2A8(v8, v9, v10, v11);
      if (v12 <= 0x3F)
      {
        OUTLINED_FUNCTION_220_2();
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_221AC27A0()
{
  OUTLINED_FUNCTION_151_2();
  OUTLINED_FUNCTION_114_3();
  v1 = *(type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ChoiceRequest(0) + 20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ChoiceRequest._StorageClass(0);
    OUTLINED_FUNCTION_174_2();
    swift_allocObject();
    v2 = OUTLINED_FUNCTION_55_7();
    *(v0 + v1) = sub_221AC2204(v2);
  }

  v3 = OUTLINED_FUNCTION_15_11();
  sub_221AC86EC(v3, v4, v5, v6);
  OUTLINED_FUNCTION_152_2();
}

uint64_t sub_221AC286C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for AppIntentsProtobuf_UUID(0);
  sub_221ADB35C(&unk_27CFBB750, type metadata accessor for AppIntentsProtobuf_UUID, &unk_221BD90D8);
  sub_221BCCAD8();
  return swift_endAccess();
}

uint64_t sub_221AC2948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for AppIntentsProtobuf_Dialog(0);
  sub_221ADB35C(&qword_27CFBB830, type metadata accessor for AppIntentsProtobuf_Dialog, &unk_221BDA780);
  sub_221BCCAD8();
  return swift_endAccess();
}

uint64_t sub_221AC2A24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for AppIntentsProtobuf_ViewSnippet(0);
  sub_221ADB35C(&qword_27CFB9698, type metadata accessor for AppIntentsProtobuf_ViewSnippet, &unk_221BD8CA0);
  sub_221BCCAD8();
  return swift_endAccess();
}

uint64_t sub_221AC2B00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ChoiceRequest.ProvidedOption(0);
  sub_221ADB35C(&unk_27CFBB870, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ChoiceRequest.ProvidedOption, &unk_221BDCFA8);
  sub_221BCCAC8();
  return swift_endAccess();
}

uint64_t sub_221AC2BDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_221AC2D0C(a1, a2, a3, a4);
  if (!v4)
  {
    sub_221AC2F00(a1, a2, a3, a4);
    sub_221AC30F4(a1, a2, a3, a4);
    v10 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse13ChoiceRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__providedOptions;
    result = swift_beginAccess();
    if (*(*(a1 + v10) + 16))
    {
      type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ChoiceRequest.ProvidedOption(0);
      sub_221ADB35C(&unk_27CFBB870, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ChoiceRequest.ProvidedOption, &unk_221BDCFA8);

      sub_221BCCC18();
    }
  }

  return result;
}

uint64_t sub_221AC2D0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[5] = a4;
  v9[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9988, &qword_221BDAE20);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  MEMORY[0x28223BE20](v7);
  swift_beginAccess();
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_2219A1CC8(v6, &qword_27CFB9988, &qword_221BDAE20);
  }

  sub_221ADFDB4();
  sub_221ADB35C(&unk_27CFBB750, type metadata accessor for AppIntentsProtobuf_UUID, &unk_221BD90D8);
  sub_221BCCC38();
  return sub_221ADFE28();
}

uint64_t sub_221AC2F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[5] = a4;
  v9[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB790, &qword_221BDADD8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for AppIntentsProtobuf_Dialog(0);
  MEMORY[0x28223BE20](v7);
  swift_beginAccess();
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_2219A1CC8(v6, &unk_27CFBB790, &qword_221BDADD8);
  }

  sub_221ADFDB4();
  sub_221ADB35C(&qword_27CFBB830, type metadata accessor for AppIntentsProtobuf_Dialog, &unk_221BDA780);
  sub_221BCCC38();
  return sub_221ADFE28();
}

uint64_t sub_221AC30F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[5] = a4;
  v9[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9920, &unk_221BDADC0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for AppIntentsProtobuf_ViewSnippet(0);
  MEMORY[0x28223BE20](v7);
  swift_beginAccess();
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_2219A1CC8(v6, &qword_27CFB9920, &unk_221BDADC0);
  }

  sub_221ADFDB4();
  sub_221ADB35C(&qword_27CFB9698, type metadata accessor for AppIntentsProtobuf_ViewSnippet, &unk_221BD8CA0);
  sub_221BCCC38();
  return sub_221ADFE28();
}

uint64_t sub_221AC32E8(uint64_t a1, uint64_t a2)
{
  v60 = a2;
  v51 = type metadata accessor for AppIntentsProtobuf_ViewSnippet(0);
  MEMORY[0x28223BE20](v51);
  v47[1] = v47 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9960, &qword_221BDAE00);
  MEMORY[0x28223BE20](v50);
  v52 = v47 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9920, &unk_221BDADC0);
  MEMORY[0x28223BE20](v4 - 8);
  v48 = v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v59 = v47 - v7;
  v57 = type metadata accessor for AppIntentsProtobuf_Dialog(0);
  MEMORY[0x28223BE20](v57);
  v49 = v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9978, &qword_221BDAE18);
  MEMORY[0x28223BE20](v55);
  v58 = v47 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB790, &qword_221BDADD8);
  MEMORY[0x28223BE20](v10 - 8);
  v53 = v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v56 = v47 - v13;
  v14 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  MEMORY[0x28223BE20](v14);
  v54 = v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9990, &qword_221BDAE28);
  v17 = v16 - 8;
  MEMORY[0x28223BE20](v16);
  v19 = v47 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9988, &qword_221BDAE20);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = (v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v23);
  v25 = v47 - v24;
  swift_beginAccess();
  sub_221A1C558();
  swift_beginAccess();
  v26 = *(v17 + 56);
  sub_221A1C558();
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v19, 1, v14) == 1)
  {

    sub_2219A1CC8(v25, &qword_27CFB9988, &qword_221BDAE20);
    if (__swift_getEnumTagSinglePayload(&v19[v26], 1, v14) == 1)
    {
      sub_2219A1CC8(v19, &qword_27CFB9988, &qword_221BDAE20);
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(&v19[v26], 1, v14) == 1)
  {

    sub_2219A1CC8(v25, &qword_27CFB9988, &qword_221BDAE20);
    sub_221ADFE28();
LABEL_9:
    v33 = &qword_27CFB9990;
    v34 = &qword_221BDAE28;
    v35 = v19;
LABEL_26:
    sub_2219A1CC8(v35, v33, v34);
    goto LABEL_27;
  }

  v36 = v54;
  sub_221ADFDB4();
  if (*v22 != *v36 || v22[1] != v36[1])
  {

    sub_221ADFE28();
    sub_2219A1CC8(v25, &qword_27CFB9988, &qword_221BDAE20);
    sub_221ADFE28();
    v35 = v19;
    v33 = &qword_27CFB9988;
    v34 = &qword_221BDAE20;
    goto LABEL_26;
  }

  sub_221BCC8D8();
  sub_221ADB35C(&qword_27CFB85D8, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);

  v37 = sub_221BCD338();
  sub_221ADFE28();
  sub_2219A1CC8(v25, &qword_27CFB9988, &qword_221BDAE20);
  sub_221ADFE28();
  sub_2219A1CC8(v19, &qword_27CFB9988, &qword_221BDAE20);
  if ((v37 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_4:
  swift_beginAccess();
  v27 = v56;
  sub_221A1C558();
  swift_beginAccess();
  v28 = *(v55 + 48);
  v29 = v58;
  sub_221A1C558();
  sub_221A1C558();
  v30 = v57;
  if (__swift_getEnumTagSinglePayload(v29, 1, v57) != 1)
  {
    sub_221A1C558();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v29 + v28, 1, v30);
    v32 = v59;
    if (EnumTagSinglePayload != 1)
    {
      sub_221ADFDB4();
      v39 = sub_221A7941C();
      sub_221ADFE28();
      sub_2219A1CC8(v27, &unk_27CFBB790, &qword_221BDADD8);
      sub_221ADFE28();
      sub_2219A1CC8(v29, &unk_27CFBB790, &qword_221BDADD8);
      if ((v39 & 1) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_19;
    }

    sub_2219A1CC8(v27, &unk_27CFBB790, &qword_221BDADD8);
    sub_221ADFE28();
LABEL_17:
    v33 = &qword_27CFB9978;
    v34 = &qword_221BDAE18;
LABEL_25:
    v35 = v29;
    goto LABEL_26;
  }

  sub_2219A1CC8(v27, &unk_27CFBB790, &qword_221BDADD8);
  v31 = __swift_getEnumTagSinglePayload(v29 + v28, 1, v30);
  v32 = v59;
  if (v31 != 1)
  {
    goto LABEL_17;
  }

  sub_2219A1CC8(v29, &unk_27CFBB790, &qword_221BDADD8);
LABEL_19:
  swift_beginAccess();
  sub_221A1C558();
  swift_beginAccess();
  v40 = *(v50 + 48);
  v29 = v52;
  sub_221A1C558();
  sub_221A1C558();
  v41 = v51;
  if (__swift_getEnumTagSinglePayload(v29, 1, v51) == 1)
  {
    sub_2219A1CC8(v32, &qword_27CFB9920, &unk_221BDADC0);
    if (__swift_getEnumTagSinglePayload(v29 + v40, 1, v41) == 1)
    {
      sub_2219A1CC8(v29, &qword_27CFB9920, &unk_221BDADC0);
LABEL_30:
      swift_beginAccess();
      swift_beginAccess();

      sub_221A1A2AC();
      v43 = v46;

      return v43 & 1;
    }

    goto LABEL_24;
  }

  v42 = v48;
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v29 + v40, 1, v41) == 1)
  {
    sub_2219A1CC8(v32, &qword_27CFB9920, &unk_221BDADC0);
    sub_221ADFE28();
LABEL_24:
    v33 = &qword_27CFB9960;
    v34 = &qword_221BDAE00;
    goto LABEL_25;
  }

  sub_221ADFDB4();
  v45 = sub_221A832C8(v42);
  sub_221ADFE28();
  sub_2219A1CC8(v32, &qword_27CFB9920, &unk_221BDADC0);
  sub_221ADFE28();
  sub_2219A1CC8(v29, &qword_27CFB9920, &unk_221BDADC0);
  if (v45)
  {
    goto LABEL_30;
  }

LABEL_27:

  v43 = 0;
  return v43 & 1;
}

uint64_t sub_221AC3F84(uint64_t a1, uint64_t a2)
{
  v4 = sub_221ADB35C(&qword_27CFBA748, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ChoiceRequest, &unk_221BDD0D8);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221AC4024(uint64_t a1)
{
  v2 = sub_221ADB35C(&unk_27CFBB7F0, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ChoiceRequest, &unk_221BDD110);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221AC40EC(uint64_t a1, uint64_t a2)
{
  sub_221ADB35C(&unk_27CFBB7F0, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ChoiceRequest, &unk_221BDD110);

  return sub_221BCCB48();
}

uint64_t sub_221AC41AC()
{
  if (qword_27CFB70E8 != -1)
  {
    swift_once();
  }

  v1 = qword_27CFDE280;
  v2 = *algn_27CFDE288;
  swift_bridgeObjectRetain_n();
  MEMORY[0x223DA31F0](0x656469766F72502ELL, 0xEF6E6F6974704F64);

  qword_27CFDE2A8 = v1;
  unk_27CFDE2B0 = v2;
  return result;
}

uint64_t sub_221AC425C()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDE2B8);
  __swift_project_value_buffer(v0, qword_27CFDE2B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_221BD6DE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "originalIndex";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_221BCCC48();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "title";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "style";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  return sub_221BCCC58();
}

uint64_t sub_221AC4460()
{
  OUTLINED_FUNCTION_130_3();
  while (1)
  {
    OUTLINED_FUNCTION_14();
    result = sub_221BCC998();
    if (v1 || (v4 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        OUTLINED_FUNCTION_277_0();
        v0();
        break;
      case 2:
        sub_221BCCA98();
        break;
      case 1:
        v5 = OUTLINED_FUNCTION_234_1();
        v2(v5);
        break;
    }
  }

  return result;
}

uint64_t sub_221AC4568()
{
  OUTLINED_FUNCTION_7_13();
  if (!*v0 || (OUTLINED_FUNCTION_14_12(), result = sub_221BCCBB8(), !v1))
  {
    OUTLINED_FUNCTION_25_8();
    if (!v6 || (result = OUTLINED_FUNCTION_124_4(result), !v1))
    {
      if (!*(v2 + 24) || (sub_221AE00DC(result, v4, v5), OUTLINED_FUNCTION_49_6(), result = sub_221BCCB98(), !v1))
      {
        type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ChoiceRequest.ProvidedOption(0);
        return OUTLINED_FUNCTION_30_7();
      }
    }
  }

  return result;
}

uint64_t sub_221AC462C(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_69_1();
  v5 = *(v4 + 8) == *(v2 + 8) && *(v3 + 16) == *(v2 + 16);
  if (!v5 && (sub_221BCE1B8() & 1) == 0)
  {
    return 0;
  }

  v6 = *(v3 + 24);
  v7 = *(v2 + 24);
  if (*(v2 + 32) == 1)
  {
    if (v7)
    {
      if (v7 == 1)
      {
        if (v6 != 1)
        {
          return 0;
        }
      }

      else if (v6 != 2)
      {
        return 0;
      }

LABEL_13:
      type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ChoiceRequest.ProvidedOption(0);
      sub_221BCC8D8();
      OUTLINED_FUNCTION_0_41();
      v10 = sub_221ADB35C(v8, v9, MEMORY[0x277D216D0]);
      return OUTLINED_FUNCTION_36_8(v10) & 1;
    }

    if (!v6)
    {
      goto LABEL_13;
    }
  }

  else if (v6 == v7)
  {
    goto LABEL_13;
  }

  return 0;
}

uint64_t sub_221AC4744()
{
  sub_221BCC8D8();
  OUTLINED_FUNCTION_2_1();
  v0 = OUTLINED_FUNCTION_123_1();

  return v1(v0);
}

uint64_t sub_221AC47AC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  sub_221BCC8D8();
  OUTLINED_FUNCTION_2_1();
  v6 = *(v5 + 40);

  return v6(v2 + v4, a1);
}

uint64_t sub_221AC4870(uint64_t a1, uint64_t a2)
{
  v4 = sub_221ADB35C(&qword_27CFBA750, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ChoiceRequest.ProvidedOption, &unk_221BDCF70);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221AC4910(uint64_t a1)
{
  v2 = sub_221ADB35C(&unk_27CFBB870, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ChoiceRequest.ProvidedOption, &unk_221BDCFA8);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221AC49D8(uint64_t a1, uint64_t a2)
{
  sub_221ADB35C(&unk_27CFBB870, type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ChoiceRequest.ProvidedOption, &unk_221BDCFA8);

  return sub_221BCCB48();
}

uint64_t sub_221AC4A58()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDE2D0);
  __swift_project_value_buffer(v0, qword_27CFDE2D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_221BD6DE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "UNKNOWN";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_221BCCC48();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "CANCEL";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "DESTRUCTIVE";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  return sub_221BCCC58();
}

uint64_t sub_221AC4C80()
{
  if (qword_27CFB70A0 != -1)
  {
    swift_once();
  }

  v1 = qword_27CFDE1E0;
  v2 = *algn_27CFDE1E8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x223DA31F0](0xD000000000000012, 0x8000000221BF00A0);

  qword_27CFDE2E8 = v1;
  unk_27CFDE2F0 = v2;
  return result;
}

uint64_t sub_221AC4D28()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDE2F8);
  __swift_project_value_buffer(v0, qword_27CFDE2F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_221BDAFC0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "executionIdentifier";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_221BCCC48();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "parameterName";
  *(v10 + 8) = 13;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "dialog";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "parameterMetadata";
  *(v14 + 1) = 17;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "type";
  *(v16 + 1) = 4;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "effectiveBundleIdentifier";
  *(v18 + 1) = 25;
  v18[16] = 2;
  v9();
  return sub_221BCCC58();
}

uint64_t sub_221AC501C()
{
  v1 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse17NeedsValueRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__executionIdentifier;
  v2 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = (v0 + OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse17NeedsValueRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__parameterName);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  v4 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse17NeedsValueRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__dialog;
  v5 = type metadata accessor for AppIntentsProtobuf_Dialog(0);
  __swift_storeEnumTagSinglePayload(v0 + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse17NeedsValueRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__parameterMetadata;
  v7 = type metadata accessor for AppIntentsProtobuf_IntentParameterMetadata(0);
  __swift_storeEnumTagSinglePayload(v0 + v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse17NeedsValueRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__type;
  v9 = type metadata accessor for AppIntentsProtobuf_ValueType(0);
  __swift_storeEnumTagSinglePayload(v0 + v8, 1, 1, v9);
  v10 = (v0 + OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse17NeedsValueRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__effectiveBundleIdentifier);
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  return v0;
}

uint64_t sub_221AC50F8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB95E0, &qword_221BE0A10);
  MEMORY[0x28223BE20](v3 - 8);
  v27[4] = v27 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB7D0, &unk_221BE4E60);
  MEMORY[0x28223BE20](v5 - 8);
  v27[3] = v27 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB790, &qword_221BDADD8);
  MEMORY[0x28223BE20](v7 - 8);
  v27[2] = v27 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9988, &qword_221BDAE20);
  MEMORY[0x28223BE20](v9 - 8);
  v10 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse17NeedsValueRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__executionIdentifier;
  v11 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  __swift_storeEnumTagSinglePayload(v1 + v10, 1, 1, v11);
  v12 = (v1 + OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse17NeedsValueRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__parameterName);
  *v12 = 0;
  v12[1] = 0xE000000000000000;
  v13 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse17NeedsValueRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__dialog;
  v14 = type metadata accessor for AppIntentsProtobuf_Dialog(0);
  __swift_storeEnumTagSinglePayload(v1 + v13, 1, 1, v14);
  v15 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse17NeedsValueRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__parameterMetadata;
  v16 = type metadata accessor for AppIntentsProtobuf_IntentParameterMetadata(0);
  __swift_storeEnumTagSinglePayload(v1 + v15, 1, 1, v16);
  v17 = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse17NeedsValueRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__type;
  v27[1] = OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse17NeedsValueRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__type;
  v18 = type metadata accessor for AppIntentsProtobuf_ValueType(0);
  __swift_storeEnumTagSinglePayload(v1 + v17, 1, 1, v18);
  v19 = (v1 + OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse17NeedsValueRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__effectiveBundleIdentifier);
  *v19 = 0;
  v19[1] = 0xE000000000000000;
  swift_beginAccess();
  sub_221A1C558();
  swift_beginAccess();
  sub_221A855A4();
  swift_endAccess();
  v20 = (a1 + OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse17NeedsValueRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__parameterName);
  swift_beginAccess();
  v22 = *v20;
  v21 = v20[1];
  swift_beginAccess();
  *v12 = v22;
  v12[1] = v21;

  swift_beginAccess();
  sub_221A1C558();
  swift_beginAccess();
  sub_221A855A4();
  swift_endAccess();
  swift_beginAccess();
  sub_221A1C558();
  swift_beginAccess();
  sub_221A855A4();
  swift_endAccess();
  swift_beginAccess();
  sub_221A1C558();
  swift_beginAccess();
  sub_221A855A4();
  swift_endAccess();
  v23 = (a1 + OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse17NeedsValueRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__effectiveBundleIdentifier);
  swift_beginAccess();
  v25 = *v23;
  v24 = v23[1];

  swift_beginAccess();
  *v19 = v25;
  v19[1] = v24;

  return v1;
}

uint64_t sub_221AC55CC()
{
  sub_2219A1CC8(v0 + OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse17NeedsValueRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__executionIdentifier, &qword_27CFB9988, &qword_221BDAE20);

  sub_2219A1CC8(v0 + OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse17NeedsValueRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__dialog, &unk_27CFBB790, &qword_221BDADD8);
  sub_2219A1CC8(v0 + OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse17NeedsValueRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__parameterMetadata, &unk_27CFBB7D0, &unk_221BE4E60);
  sub_2219A1CC8(v0 + OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse17NeedsValueRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__type, &qword_27CFB95E0, &qword_221BE0A10);

  return v0;
}

void sub_221AC56CC(uint64_t a1)
{
  sub_221ABF2A8(319, &qword_27CFB9A70, type metadata accessor for AppIntentsProtobuf_UUID, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_221ABF2A8(319, &qword_27CFB94A8, type metadata accessor for AppIntentsProtobuf_Dialog, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_221ABF2A8(319, &qword_27CFB9B80, type metadata accessor for AppIntentsProtobuf_IntentParameterMetadata, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_221ABF2A8(319, &qword_27CFB9618, type metadata accessor for AppIntentsProtobuf_ValueType, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_221AC58D4()
{
  OUTLINED_FUNCTION_55_4();
  v2 = v1;
  v11 = v3;
  v5 = v4;
  v6 = OUTLINED_FUNCTION_373();
  v8 = *(v7(v6) + 20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5(0);
    OUTLINED_FUNCTION_174_2();
    swift_allocObject();
    v9 = OUTLINED_FUNCTION_55_7();
    *(v0 + v8) = v11(v9);
  }

  v10 = OUTLINED_FUNCTION_92();
  v2(v10);
  OUTLINED_FUNCTION_53_5();
}

uint64_t sub_221AC5978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_221BCC998();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_221AC5AA8(a2, a1, a3, a4);
        break;
      case 2:
      case 6:
        sub_221AC5E18();
        break;
      case 3:
        sub_221AC5B84(a2, a1, a3, a4);
        break;
      case 4:
        sub_221AC5C60(a2, a1, a3, a4);
        break;
      case 5:
        sub_221AC5D3C(a2, a1, a3, a4);
        break;
      default:
        continue;
    }
  }
}