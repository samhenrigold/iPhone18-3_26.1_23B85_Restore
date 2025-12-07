uint64_t sub_221A8A620@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0xE000000000000000;
  type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.Comparison(0);
  OUTLINED_FUNCTION_101_3();
  sub_221BCC8C8();
  type metadata accessor for AppIntentsProtobuf_Value(0);
  v1 = OUTLINED_FUNCTION_50_4();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void sub_221A8A680()
{
  OUTLINED_FUNCTION_21();
  v1 = OUTLINED_FUNCTION_182_2();
  v2 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.Comparison(v1);
  v3 = OUTLINED_FUNCTION_8_1(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_32_8();
  v4 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.Compound(0);
  v5 = OUTLINED_FUNCTION_58_7(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_14_13();
  type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery.OneOf_Content(0);
  OUTLINED_FUNCTION_57_6();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_9_5();
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA568, &unk_221BE0BC8);
  OUTLINED_FUNCTION_8_1(v8);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_74_5();
  sub_221ADFEBC();
  OUTLINED_FUNCTION_280();
  OUTLINED_FUNCTION_282_0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_158_2();
    sub_221ADFEBC();
    if (OUTLINED_FUNCTION_317() == 1)
    {
      OUTLINED_FUNCTION_241_1();
      sub_221ADFDB4();
      OUTLINED_FUNCTION_70_0();
      sub_221AA9150();
      sub_221ADFE28();
      OUTLINED_FUNCTION_63_3();
      sub_221ADFE28();
      OUTLINED_FUNCTION_52_7();
      sub_221ADFE28();
      goto LABEL_11;
    }

LABEL_5:
    sub_221ADFE28();
    sub_2219A1CC8(v0, &qword_27CFBA568, &unk_221BE0BC8);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_158_2();
  sub_221ADFEBC();
  if (OUTLINED_FUNCTION_317() == 1)
  {
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_241_1();
  sub_221ADFDB4();
  OUTLINED_FUNCTION_334();
  if (v10)
  {
    sub_221A16A34();
    if (v11)
    {
      OUTLINED_FUNCTION_232_0();
      OUTLINED_FUNCTION_0_41();
      v14 = sub_221ADB35C(v12, v13, MEMORY[0x277D216D0]);
      OUTLINED_FUNCTION_132_3(v14);
    }
  }

  OUTLINED_FUNCTION_258_0();
  sub_221ADFE28();
  OUTLINED_FUNCTION_300();
  OUTLINED_FUNCTION_52_7();
  sub_221ADFE28();
LABEL_11:
  OUTLINED_FUNCTION_60_3();
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221A8A9A0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, int a6)
{
  if ((a3 & 1) == 0)
  {
    return (a1 == a4) & ~a6;
  }

  if ((a6 & 1) == 0)
  {
    return OUTLINED_FUNCTION_357();
  }

  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

  else
  {
    return sub_221BCE1B8();
  }
}

uint64_t sub_221A8AA78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_221AE0070(a1, a2, a3);

  return MEMORY[0x28217E238](a1, a2, v5);
}

uint64_t sub_221A8AB1C@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = -1;
  type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.SortingOptions(0);
  OUTLINED_FUNCTION_101_3();
  return sub_221BCC8C8();
}

void sub_221A8AB64()
{
  OUTLINED_FUNCTION_21();
  v4 = OUTLINED_FUNCTION_250_1();
  v5 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget(v4);
  v6 = OUTLINED_FUNCTION_58_7(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_14_13();
  type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByString.OneOf_Target(0);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_62_4();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_97_4();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_163();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA538, &qword_221BE0B90);
  OUTLINED_FUNCTION_8_1(v10);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_74_5();
  OUTLINED_FUNCTION_305();
  sub_221ADFEBC();
  OUTLINED_FUNCTION_144_3();
  sub_221ADFEBC();
  OUTLINED_FUNCTION_177_2();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    OUTLINED_FUNCTION_119_4();
    sub_221ADFEBC();
    v22 = *(v3 + 8);
    OUTLINED_FUNCTION_70_0();
    if (!swift_getEnumCaseMultiPayload())
    {
LABEL_18:
      OUTLINED_FUNCTION_304();
      if (v15 && v22 == v1)
      {
      }

      else
      {
        OUTLINED_FUNCTION_171_2(v23, v24, v25);
        OUTLINED_FUNCTION_352();
      }

LABEL_28:
      OUTLINED_FUNCTION_23_11();
      sub_221ADFE28();
      goto LABEL_29;
    }

LABEL_16:

    goto LABEL_25;
  }

  if (EnumCaseMultiPayload != 1)
  {
    OUTLINED_FUNCTION_119_4();
    sub_221ADFEBC();
    v22 = *(v2 + 8);
    OUTLINED_FUNCTION_70_0();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  OUTLINED_FUNCTION_119_4();
  sub_221ADFEBC();
  OUTLINED_FUNCTION_70_0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_33_6();
    OUTLINED_FUNCTION_136_3();
    v15 = v15 && v13 == v14;
    if (v15 || (sub_221BCE1B8() & 1) != 0)
    {
      OUTLINED_FUNCTION_154_2();
      v18 = v15 && v16 == v17;
      if (v18 || (sub_221BCE1B8() & 1) != 0)
      {
        OUTLINED_FUNCTION_232_0();
        OUTLINED_FUNCTION_0_41();
        v21 = sub_221ADB35C(v19, v20, MEMORY[0x277D216D0]);
        OUTLINED_FUNCTION_132_3(v21);
      }
    }

    OUTLINED_FUNCTION_5_18();
    sub_221ADFE28();
    OUTLINED_FUNCTION_300();
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_38_5();
LABEL_25:
  sub_2219A1CC8(v0, &qword_27CFBA538, &qword_221BE0B90);
LABEL_29:
  OUTLINED_FUNCTION_22();
}

void sub_221A8AE1C()
{
  OUTLINED_FUNCTION_21();
  v4 = OUTLINED_FUNCTION_250_1();
  v5 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget(v4);
  v6 = OUTLINED_FUNCTION_58_7(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_14_13();
  type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.SuggestedEntities.OneOf_Target(0);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_62_4();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_97_4();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_163();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA598, &unk_221BE0C00);
  OUTLINED_FUNCTION_8_1(v10);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_74_5();
  OUTLINED_FUNCTION_305();
  sub_221ADFEBC();
  OUTLINED_FUNCTION_144_3();
  sub_221ADFEBC();
  OUTLINED_FUNCTION_177_2();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    OUTLINED_FUNCTION_118_4();
    sub_221ADFEBC();
    v22 = *(v3 + 8);
    OUTLINED_FUNCTION_70_0();
    if (!swift_getEnumCaseMultiPayload())
    {
LABEL_18:
      OUTLINED_FUNCTION_304();
      if (v15 && v22 == v1)
      {
      }

      else
      {
        OUTLINED_FUNCTION_171_2(v23, v24, v25);
        OUTLINED_FUNCTION_352();
      }

LABEL_28:
      OUTLINED_FUNCTION_22_10();
      sub_221ADFE28();
      goto LABEL_29;
    }

LABEL_16:

    goto LABEL_25;
  }

  if (EnumCaseMultiPayload != 1)
  {
    OUTLINED_FUNCTION_118_4();
    sub_221ADFEBC();
    v22 = *(v2 + 8);
    OUTLINED_FUNCTION_70_0();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  OUTLINED_FUNCTION_118_4();
  sub_221ADFEBC();
  OUTLINED_FUNCTION_70_0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_33_6();
    OUTLINED_FUNCTION_136_3();
    v15 = v15 && v13 == v14;
    if (v15 || (sub_221BCE1B8() & 1) != 0)
    {
      OUTLINED_FUNCTION_154_2();
      v18 = v15 && v16 == v17;
      if (v18 || (sub_221BCE1B8() & 1) != 0)
      {
        OUTLINED_FUNCTION_232_0();
        OUTLINED_FUNCTION_0_41();
        v21 = sub_221ADB35C(v19, v20, MEMORY[0x277D216D0]);
        OUTLINED_FUNCTION_132_3(v21);
      }
    }

    OUTLINED_FUNCTION_5_18();
    sub_221ADFE28();
    OUTLINED_FUNCTION_300();
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_38_5();
LABEL_25:
  sub_2219A1CC8(v0, &qword_27CFBA598, &unk_221BE0C00);
LABEL_29:
  OUTLINED_FUNCTION_22();
}

void sub_221A8B0D4()
{
  OUTLINED_FUNCTION_21();
  v4 = OUTLINED_FUNCTION_250_1();
  v5 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget(v4);
  v6 = OUTLINED_FUNCTION_58_7(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_14_13();
  type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.UniqueEntity.OneOf_Target(0);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_62_4();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_97_4();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_163();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA5A8, &qword_221BE0C18);
  OUTLINED_FUNCTION_8_1(v10);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_74_5();
  OUTLINED_FUNCTION_305();
  sub_221ADFEBC();
  OUTLINED_FUNCTION_144_3();
  sub_221ADFEBC();
  OUTLINED_FUNCTION_177_2();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    OUTLINED_FUNCTION_117_4();
    sub_221ADFEBC();
    v22 = *(v3 + 8);
    OUTLINED_FUNCTION_70_0();
    if (!swift_getEnumCaseMultiPayload())
    {
LABEL_18:
      OUTLINED_FUNCTION_304();
      if (v15 && v22 == v1)
      {
      }

      else
      {
        OUTLINED_FUNCTION_171_2(v23, v24, v25);
        OUTLINED_FUNCTION_352();
      }

LABEL_28:
      OUTLINED_FUNCTION_21_9();
      sub_221ADFE28();
      goto LABEL_29;
    }

LABEL_16:

    goto LABEL_25;
  }

  if (EnumCaseMultiPayload != 1)
  {
    OUTLINED_FUNCTION_117_4();
    sub_221ADFEBC();
    v22 = *(v2 + 8);
    OUTLINED_FUNCTION_70_0();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  OUTLINED_FUNCTION_117_4();
  sub_221ADFEBC();
  OUTLINED_FUNCTION_70_0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_33_6();
    OUTLINED_FUNCTION_136_3();
    v15 = v15 && v13 == v14;
    if (v15 || (sub_221BCE1B8() & 1) != 0)
    {
      OUTLINED_FUNCTION_154_2();
      v18 = v15 && v16 == v17;
      if (v18 || (sub_221BCE1B8() & 1) != 0)
      {
        OUTLINED_FUNCTION_232_0();
        OUTLINED_FUNCTION_0_41();
        v21 = sub_221ADB35C(v19, v20, MEMORY[0x277D216D0]);
        OUTLINED_FUNCTION_132_3(v21);
      }
    }

    OUTLINED_FUNCTION_5_18();
    sub_221ADFE28();
    OUTLINED_FUNCTION_300();
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_38_5();
LABEL_25:
  sub_2219A1CC8(v0, &qword_27CFBA5A8, &qword_221BE0C18);
LABEL_29:
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221A8B408(char a1)
{
  result = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.Options(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t sub_221A8B460()
{
  type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.OneOf_Query(0);
  OUTLINED_FUNCTION_108();
  __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
  type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest(0);
  OUTLINED_FUNCTION_302();
  sub_221BCC8C8();
  v4 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.Options(0);
  OUTLINED_FUNCTION_139_2(v4);
  type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(0);
  v5 = OUTLINED_FUNCTION_50_4();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t sub_221A8B4E4@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_56_7(a1);
  *(v1 + 16) = 0;
  *(v1 + 24) = v2;
  type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchDeferredPropertyValueRequest(0);
  OUTLINED_FUNCTION_101_3();
  sub_221BCC8C8();
  v3 = type metadata accessor for AppIntentsProtobuf_EntityIdentifier(0);
  OUTLINED_FUNCTION_139_2(v3);
  type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(0);
  v4 = OUTLINED_FUNCTION_50_4();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

uint64_t sub_221A8B554()
{
  type metadata accessor for AppIntentsProtobuf_ClientMessages.CreateAsyncIteratorRequest(0);
  OUTLINED_FUNCTION_321();
  if (v0[8])
  {
    return 0;
  }

  else
  {
    return *v0;
  }
}

void sub_221A8B584()
{
  v1 = OUTLINED_FUNCTION_40_3();
  type metadata accessor for AppIntentsProtobuf_ClientMessages.CreateAsyncIteratorRequest(v1);
  OUTLINED_FUNCTION_321();
  *v2 = v0;
  *(v2 + 8) = 0;
}

BOOL sub_221A8B5B4()
{
  type metadata accessor for AppIntentsProtobuf_ClientMessages.CreateAsyncIteratorRequest(0);
  OUTLINED_FUNCTION_321();
  return (*(v0 + 8) & 1) == 0;
}

uint64_t sub_221A8B634@<X0>(uint64_t a2@<X8>)
{
  sub_221BCC8C8();
  type metadata accessor for AppIntentsProtobuf_ClientMessages.CreateAsyncIteratorRequest(0);
  v4 = OUTLINED_FUNCTION_333();
  type metadata accessor for AppIntentsProtobuf_UUID(v4);
  OUTLINED_FUNCTION_108();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  v9 = a2 + *(v2 + 24);
  *v9 = 0;
  *(v9 + 8) = 1;
  OUTLINED_FUNCTION_68_2(*(v2 + 28));
  type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(0);
  v10 = OUTLINED_FUNCTION_50_4();

  return __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
}

uint64_t sub_221A8B6BC@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_56_7(a1);
  type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchFileChunkRequest(0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  sub_221BCC8C8();
  type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(0);
  v2 = OUTLINED_FUNCTION_50_4();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t sub_221A8B718@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_138_1();
  OUTLINED_FUNCTION_8_1(v3);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_29_8();
  type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchOptionsForActionRequest(v5);
  OUTLINED_FUNCTION_269_0();
  type metadata accessor for AppIntentsProtobuf_Action(0);
  OUTLINED_FUNCTION_22_9(v1);
  if (v6)
  {
    sub_221A6F310(a1);
    result = OUTLINED_FUNCTION_22_9(v1);
    if (!v6)
    {
      return sub_2219A1CC8(v1, &unk_27CFBB690, &qword_221BDADD0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_255();
    OUTLINED_FUNCTION_55_3();
    return sub_221ADFDB4();
  }

  return result;
}

uint64_t sub_221A8B804(uint64_t (*a1)(void))
{
  if (!*(v1 + *(a1(0) + 28) + 8))
  {
    OUTLINED_FUNCTION_111_2();
  }

  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_221A8B870()
{
  v3 = OUTLINED_FUNCTION_52_6();
  v5 = (v1 + *(v4(v3) + 28));

  *v5 = v2;
  v5[1] = v0;
  return result;
}

uint64_t sub_221A8B8D8@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_56_7(a1);
  type metadata accessor for AppIntentsProtobuf_ClientMessages.FetchOptionsForActionRequest(0);
  OUTLINED_FUNCTION_302();
  sub_221BCC8C8();
  v2 = type metadata accessor for AppIntentsProtobuf_Action(0);
  OUTLINED_FUNCTION_139_2(v2);
  OUTLINED_FUNCTION_68_2(*(v1 + 28));
  v3 = type metadata accessor for AppIntentsProtobuf_Environment(0);
  OUTLINED_FUNCTION_139_2(v3);
  type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(0);
  v4 = OUTLINED_FUNCTION_50_4();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

uint64_t sub_221A8B95C(void (*a1)(void), void (*a2)(void), void (*a3)(void))
{
  sub_221BCC8C8();
  a1(0);
  a2(0);
  OUTLINED_FUNCTION_108();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  a3(0);
  OUTLINED_FUNCTION_108();

  return __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
}

uint64_t sub_221A8B9F8(void (*a1)(void))
{
  sub_221BCC8C8();
  a1(0);
  type metadata accessor for AppIntentsProtobuf_NotificationTopic(0);
  OUTLINED_FUNCTION_318();
  OUTLINED_FUNCTION_108();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  type metadata accessor for AppIntentsProtobuf_UUID(0);
  OUTLINED_FUNCTION_318();
  OUTLINED_FUNCTION_108();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(0);
  OUTLINED_FUNCTION_108();

  return __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
}

uint64_t sub_221A8BAA8(uint64_t (*a1)(void))
{
  a1(0);
  OUTLINED_FUNCTION_322();
  if (!*(v1 + 8))
  {
    OUTLINED_FUNCTION_111_2();
  }

  return OUTLINED_FUNCTION_0_0();
}

uint64_t sub_221A8BB10()
{
  v3 = OUTLINED_FUNCTION_52_6();
  v4(v3);
  OUTLINED_FUNCTION_219_2();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t sub_221A8BB74()
{
  type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(0);
  OUTLINED_FUNCTION_321();
  if (v0[4])
  {
    return 0;
  }

  else
  {
    return *v0;
  }
}

void sub_221A8BBA4(int a1)
{
  type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(0);
  OUTLINED_FUNCTION_321();
  *v2 = a1;
  *(v2 + 4) = 0;
}

BOOL sub_221A8BBD8()
{
  type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(0);
  OUTLINED_FUNCTION_321();
  return (*(v0 + 4) & 1) == 0;
}

uint64_t sub_221A8BC2C(char a1)
{
  result = type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t sub_221A8BC84()
{
  OUTLINED_FUNCTION_281_0();
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  v2(0);
  OUTLINED_FUNCTION_322();
  sub_221BCC8C8();
  v0(0);
  OUTLINED_FUNCTION_318();
  OUTLINED_FUNCTION_108();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t sub_221A8BCF4()
{
  OUTLINED_FUNCTION_109_2();
  v4 = v3;
  sub_221BCC8C8();
  v5 = *(v2(0) + 20);
  if (*v1 != -1)
  {
    OUTLINED_FUNCTION_24();
    swift_once();
  }

  *(v4 + v5) = *v0;
}

void sub_221A8BD70()
{
  OUTLINED_FUNCTION_21();
  v97 = v1;
  v98 = v2;
  v91 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ChoiceRequest(0);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_30_8();
  v93 = v4;
  v5 = OUTLINED_FUNCTION_133_3();
  v89 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ContinueInAppRequest(v5);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_17_12(v7, v82);
  v8 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ActionConfirmationRequest(0);
  v9 = OUTLINED_FUNCTION_8_1(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_30_8();
  v87 = v10;
  v11 = OUTLINED_FUNCTION_133_3();
  v86 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ConfirmationRequest(v11);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_30_8();
  v92 = v13;
  v14 = OUTLINED_FUNCTION_133_3();
  v85 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.NeedsValueRequest(v14);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_30_8();
  v90 = v16;
  v17 = OUTLINED_FUNCTION_133_3();
  v83 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.DisambiguationRequest(v17);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_30_8();
  v88 = v19;
  v20 = OUTLINED_FUNCTION_133_3();
  v82 = type metadata accessor for AppIntentsProtobuf_Error(v20);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_30_8();
  v84 = v22;
  v23 = OUTLINED_FUNCTION_133_3();
  v24 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.Success(v23);
  v25 = OUTLINED_FUNCTION_8_1(v24);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_4_0();
  v26 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.OneOf_Payload(0);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_9_5();
  v96 = v28 - v29;
  OUTLINED_FUNCTION_105_3();
  MEMORY[0x28223BE20](v30);
  v95 = &v82 - v31;
  OUTLINED_FUNCTION_105_3();
  MEMORY[0x28223BE20](v32);
  MEMORY[0x28223BE20](v33);
  v94 = &v82 - v34;
  OUTLINED_FUNCTION_105_3();
  MEMORY[0x28223BE20](v35);
  v37 = &v82 - v36;
  MEMORY[0x28223BE20](v38);
  v40 = &v82 - v39;
  MEMORY[0x28223BE20](v41);
  v43 = (&v82 - v42);
  MEMORY[0x28223BE20](v44);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA708, &qword_221BE0CA8);
  OUTLINED_FUNCTION_8_1(v45);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_97_3();
  sub_221ADFEBC();
  sub_221ADFEBC();
  OUTLINED_FUNCTION_118();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_11_13();
      sub_221ADFEBC();
      if (OUTLINED_FUNCTION_336() != 1)
      {
        goto LABEL_34;
      }

      OUTLINED_FUNCTION_6_17();
      v67 = v84;
      sub_221ADFDB4();
      if (MEMORY[0x223DA21A0](*v43, v43[1], *v67, v67[1]))
      {
        v68 = *(v82 + 20);
        sub_221BCC8D8();
        OUTLINED_FUNCTION_0_41();
        v71 = sub_221ADB35C(v69, v70, MEMORY[0x277D216D0]);
        OUTLINED_FUNCTION_361(v43 + v68, v72, v73, v71);
      }

      OUTLINED_FUNCTION_1_35();
      sub_221ADFE28();
      OUTLINED_FUNCTION_1_35();
      goto LABEL_41;
    case 2u:
      OUTLINED_FUNCTION_11_13();
      sub_221ADFEBC();
      if (OUTLINED_FUNCTION_336() != 2)
      {
        OUTLINED_FUNCTION_150_2();
        goto LABEL_34;
      }

      OUTLINED_FUNCTION_291_0();
      v50 = v88;
      sub_221ADFDB4();
      v51 = *(v83 + 20);
      v52 = *&v40[v51];
      v53 = *(v50 + v51);
      if (v52 == v53 || (, , v54 = sub_221ABFF18(v52, v53), , , (v54 & 1) != 0))
      {
        sub_221BCC8D8();
        OUTLINED_FUNCTION_0_41();
        sub_221ADB35C(v55, v56, MEMORY[0x277D216D0]);
        sub_221BCD338();
      }

      OUTLINED_FUNCTION_253_1();
      sub_221ADFE28();
      OUTLINED_FUNCTION_0_0();
      goto LABEL_41;
    case 3u:
      OUTLINED_FUNCTION_11_13();
      sub_221ADFEBC();
      if (OUTLINED_FUNCTION_336() != 3)
      {
        goto LABEL_34;
      }

      OUTLINED_FUNCTION_291_0();
      v57 = v90;
      sub_221ADFDB4();
      if (*&v37[*(v85 + 20)] == *(v57 + *(v85 + 20)) || (, , v58 = OUTLINED_FUNCTION_0_0(), sub_221AC67E0(v58, v59), OUTLINED_FUNCTION_370(), , (v26 & 1) != 0))
      {
        sub_221BCC8D8();
        OUTLINED_FUNCTION_0_41();
        v62 = sub_221ADB35C(v60, v61, MEMORY[0x277D216D0]);
        OUTLINED_FUNCTION_369(v37, v63, v64, v62);
      }

      OUTLINED_FUNCTION_252_1();
      sub_221ADFE28();
      goto LABEL_41;
    case 4u:
      OUTLINED_FUNCTION_11_13();
      sub_221ADFEBC();
      if (OUTLINED_FUNCTION_336() != 4)
      {
        goto LABEL_34;
      }

      OUTLINED_FUNCTION_291_0();
      sub_221ADFDB4();
      OUTLINED_FUNCTION_279();
      if (v47)
      {
        goto LABEL_30;
      }

      v48 = OUTLINED_FUNCTION_0_0();
      sub_221AC9374(v48, v49);
      OUTLINED_FUNCTION_370();

      if (v26)
      {
        goto LABEL_30;
      }

      goto LABEL_31;
    case 5u:
      OUTLINED_FUNCTION_11_13();
      sub_221ADFEBC();
      if (OUTLINED_FUNCTION_336() != 5)
      {
        goto LABEL_34;
      }

      OUTLINED_FUNCTION_291_0();
      sub_221ADFDB4();
      sub_221ACB5A4();
      sub_221ADFE28();
      goto LABEL_41;
    case 6u:
      OUTLINED_FUNCTION_11_13();
      sub_221ADFEBC();
      if (OUTLINED_FUNCTION_336() != 6)
      {
        goto LABEL_34;
      }

      OUTLINED_FUNCTION_291_0();
      sub_221ADFDB4();
      OUTLINED_FUNCTION_279();
      if (v47)
      {
        goto LABEL_30;
      }

      v74 = OUTLINED_FUNCTION_0_0();
      sub_221ACD6B8(v74, v75);
      OUTLINED_FUNCTION_370();

      if (v26)
      {
        goto LABEL_30;
      }

      goto LABEL_31;
    case 7u:
      OUTLINED_FUNCTION_11_13();
      sub_221ADFEBC();
      if (OUTLINED_FUNCTION_336() != 7)
      {
        goto LABEL_34;
      }

      OUTLINED_FUNCTION_291_0();
      OUTLINED_FUNCTION_346();
      sub_221ADFDB4();
      OUTLINED_FUNCTION_279();
      if (v47 || (, , v65 = OUTLINED_FUNCTION_0_0(), sub_221AC32E8(v65, v66), OUTLINED_FUNCTION_370(), , (v26 & 1) != 0))
      {
LABEL_30:
        sub_221BCC8D8();
        OUTLINED_FUNCTION_0_41();
        sub_221ADB35C(v76, v77, MEMORY[0x277D216D0]);
        v78 = OUTLINED_FUNCTION_136_0();
        OUTLINED_FUNCTION_369(v78, v79, v80, v81);
      }

LABEL_31:
      sub_221ADFE28();
      goto LABEL_41;
    default:
      OUTLINED_FUNCTION_11_13();
      sub_221ADFEBC();
      if (OUTLINED_FUNCTION_336())
      {
        OUTLINED_FUNCTION_195_2();
LABEL_34:
        sub_221ADFE28();
        sub_2219A1CC8(v0, &qword_27CFBA708, &qword_221BE0CA8);
      }

      else
      {
        OUTLINED_FUNCTION_291_0();
        sub_221ADFDB4();
        OUTLINED_FUNCTION_323();
        sub_221ABE4A4();
        sub_221ADFE28();
        OUTLINED_FUNCTION_324();
LABEL_41:
        sub_221ADFE28();
        OUTLINED_FUNCTION_50_5();
        sub_221ADFE28();
      }

      OUTLINED_FUNCTION_22();
      return;
  }
}

uint64_t sub_221A8C850()
{
  OUTLINED_FUNCTION_121_3();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9988, &qword_221BDAE20);
  OUTLINED_FUNCTION_8_1(v0);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_59_6();
  v3 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.DisambiguationRequest(v2);
  if ((OUTLINED_FUNCTION_307(v3) & 1) == 0)
  {
    type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.DisambiguationRequest._StorageClass(0);
    OUTLINED_FUNCTION_174_2();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_55_7();
    v5 = sub_221ABEE50(v4);
    OUTLINED_FUNCTION_124_3(v5);
  }

  OUTLINED_FUNCTION_3_22();
  OUTLINED_FUNCTION_118_0();
  sub_221ADFDB4();
  type metadata accessor for AppIntentsProtobuf_UUID(0);
  v6 = OUTLINED_FUNCTION_95_4();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_71_3();
  OUTLINED_FUNCTION_103_4();
  sub_221A855A4();
  return swift_endAccess();
}

uint64_t sub_221A8C93C()
{
  OUTLINED_FUNCTION_121_3();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB7D0, &unk_221BE4E60);
  OUTLINED_FUNCTION_8_1(v0);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_59_6();
  v3 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.DisambiguationRequest(v2);
  if ((OUTLINED_FUNCTION_307(v3) & 1) == 0)
  {
    type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.DisambiguationRequest._StorageClass(0);
    OUTLINED_FUNCTION_174_2();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_55_7();
    v5 = sub_221ABEE50(v4);
    OUTLINED_FUNCTION_124_3(v5);
  }

  OUTLINED_FUNCTION_134_3();
  type metadata accessor for AppIntentsProtobuf_IntentParameterMetadata(0);
  v6 = OUTLINED_FUNCTION_95_4();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_71_3();
  OUTLINED_FUNCTION_103_4();
  sub_221A855A4();
  return swift_endAccess();
}

uint64_t sub_221A8CA20()
{
  OUTLINED_FUNCTION_121_3();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB790, &qword_221BDADD8);
  OUTLINED_FUNCTION_8_1(v0);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_59_6();
  v3 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.DisambiguationRequest(v2);
  if ((OUTLINED_FUNCTION_307(v3) & 1) == 0)
  {
    type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.DisambiguationRequest._StorageClass(0);
    OUTLINED_FUNCTION_174_2();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_55_7();
    v5 = sub_221ABEE50(v4);
    OUTLINED_FUNCTION_124_3(v5);
  }

  OUTLINED_FUNCTION_70_6();
  type metadata accessor for AppIntentsProtobuf_Dialog(0);
  v6 = OUTLINED_FUNCTION_95_4();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_71_3();
  OUTLINED_FUNCTION_103_4();
  sub_221A855A4();
  return swift_endAccess();
}

uint64_t sub_221A8CB4C@<X0>(_OWORD *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_138_1();
  OUTLINED_FUNCTION_8_1(v3);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_29_8();
  type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.DisambiguationRequest.ProvidedValue(v5);
  OUTLINED_FUNCTION_269_0();
  type metadata accessor for AppIntentsProtobuf_Value(0);
  OUTLINED_FUNCTION_22_9(v1);
  if (v6)
  {
    *a1 = xmmword_221BD8630;
    OUTLINED_FUNCTION_386();
    sub_221BCC8C8();
    result = OUTLINED_FUNCTION_22_9(v1);
    if (!v6)
    {
      return sub_2219A1CC8(v1, &unk_27CFBB660, &qword_221BE4610);
    }
  }

  else
  {
    OUTLINED_FUNCTION_10_14();
    OUTLINED_FUNCTION_55_3();
    return sub_221ADFDB4();
  }

  return result;
}

uint64_t sub_221A8CC2C()
{
  v1 = OUTLINED_FUNCTION_40_3();
  v2 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.DisambiguationRequest.ProvidedValue(v1);
  sub_2219A1CC8(v0 + *(v2 + 28), &unk_27CFBB660, &qword_221BE4610);
  OUTLINED_FUNCTION_10_14();
  OUTLINED_FUNCTION_103_4();
  sub_221ADFDB4();
  type metadata accessor for AppIntentsProtobuf_Value(0);
  v3 = OUTLINED_FUNCTION_318();

  return __swift_storeEnumTagSinglePayload(v3, 0, 1, v4);
}

uint64_t sub_221A8CCA4@<X0>(uint64_t (*a1)(void)@<X0>, void (*a2)(void)@<X1>, void (*a3)(void)@<X2>, void *a4@<X8>)
{
  *a4 = 0;
  a1(0);
  sub_221BCC8C8();
  a2(0);
  OUTLINED_FUNCTION_108();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  a3(0);
  OUTLINED_FUNCTION_108();

  return __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
}

uint64_t sub_221A8CD4C()
{
  OUTLINED_FUNCTION_121_3();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9988, &qword_221BDAE20);
  OUTLINED_FUNCTION_8_1(v0);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_59_6();
  v3 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ChoiceRequest(v2);
  if ((OUTLINED_FUNCTION_307(v3) & 1) == 0)
  {
    type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ChoiceRequest._StorageClass(0);
    OUTLINED_FUNCTION_174_2();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_55_7();
    v5 = sub_221AC2204(v4);
    OUTLINED_FUNCTION_124_3(v5);
  }

  OUTLINED_FUNCTION_3_22();
  OUTLINED_FUNCTION_118_0();
  sub_221ADFDB4();
  type metadata accessor for AppIntentsProtobuf_UUID(0);
  v6 = OUTLINED_FUNCTION_95_4();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_71_3();
  OUTLINED_FUNCTION_103_4();
  sub_221A855A4();
  return swift_endAccess();
}

uint64_t sub_221A8CE38()
{
  OUTLINED_FUNCTION_121_3();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB790, &qword_221BDADD8);
  OUTLINED_FUNCTION_8_1(v0);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_59_6();
  v3 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ChoiceRequest(v2);
  if ((OUTLINED_FUNCTION_307(v3) & 1) == 0)
  {
    type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ChoiceRequest._StorageClass(0);
    OUTLINED_FUNCTION_174_2();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_55_7();
    v5 = sub_221AC2204(v4);
    OUTLINED_FUNCTION_124_3(v5);
  }

  OUTLINED_FUNCTION_70_6();
  type metadata accessor for AppIntentsProtobuf_Dialog(0);
  v6 = OUTLINED_FUNCTION_95_4();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_71_3();
  OUTLINED_FUNCTION_103_4();
  sub_221A855A4();
  return swift_endAccess();
}

uint64_t sub_221A8CF1C@<X0>(_OWORD *a1@<X8>)
{
  v4 = OUTLINED_FUNCTION_138_1();
  OUTLINED_FUNCTION_8_1(v4);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_29_8();
  v7 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ChoiceRequest(v6);
  OUTLINED_FUNCTION_106_3(*(v1 + *(v7 + 20)) + OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse13ChoiceRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__viewSnippet, v11);
  OUTLINED_FUNCTION_269_0();
  v8 = type metadata accessor for AppIntentsProtobuf_ViewSnippet(0);
  OUTLINED_FUNCTION_22_9(v2);
  if (v9)
  {
    *a1 = xmmword_221BD8630;
    OUTLINED_FUNCTION_386();
    sub_221BCC8C8();
    OUTLINED_FUNCTION_68_2(v8[6]);
    OUTLINED_FUNCTION_68_2(v8[7]);
    OUTLINED_FUNCTION_68_2(v8[8]);
    *(a1 + v8[9]) = xmmword_221BD8640;
    result = OUTLINED_FUNCTION_22_9(v2);
    if (!v9)
    {
      return sub_2219A1CC8(v2, &qword_27CFB9920, &unk_221BDADC0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_55_3();
    return sub_221ADFDB4();
  }

  return result;
}

uint64_t sub_221A8D050()
{
  OUTLINED_FUNCTION_121_3();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9920, &unk_221BDADC0);
  OUTLINED_FUNCTION_8_1(v0);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_59_6();
  v3 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ChoiceRequest(v2);
  if ((OUTLINED_FUNCTION_307(v3) & 1) == 0)
  {
    type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ChoiceRequest._StorageClass(0);
    OUTLINED_FUNCTION_174_2();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_55_7();
    v5 = sub_221AC2204(v4);
    OUTLINED_FUNCTION_124_3(v5);
  }

  OUTLINED_FUNCTION_185_1();
  type metadata accessor for AppIntentsProtobuf_ViewSnippet(0);
  v6 = OUTLINED_FUNCTION_95_4();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_71_3();
  OUTLINED_FUNCTION_103_4();
  sub_221A855A4();
  return swift_endAccess();
}

uint64_t sub_221A8D144()
{
  v1 = OUTLINED_FUNCTION_4();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_8_1(v3);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_29_8();
  v6 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ChoiceRequest(v5);
  OUTLINED_FUNCTION_106_3(*(v0 + *(v6 + 20)) + OBJC_IVAR____TtCVVV18AppIntentsServices31AppIntentsProtobuf_HostMessages21PerformActionResponse13ChoiceRequestP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__viewSnippet, v15);
  OUTLINED_FUNCTION_387();
  sub_221A1C558();
  type metadata accessor for AppIntentsProtobuf_ViewSnippet(0);
  v7 = OUTLINED_FUNCTION_56_6();
  OUTLINED_FUNCTION_49_4(v7, v8, v9);
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = OUTLINED_FUNCTION_55_3();
  sub_2219A1CC8(v12, v13, &unk_221BDADC0);
  return v11;
}

uint64_t sub_221A8D258(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t), uint64_t *a5)
{
  v10 = v6;
  v11 = OUTLINED_FUNCTION_40_3();
  v13 = *(v12(v11) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(v6 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a3(0);
    OUTLINED_FUNCTION_174_2();
    swift_allocObject();
    v17 = OUTLINED_FUNCTION_55_7();
    v16 = a4(v17);
    *(v10 + v13) = v16;
  }

  v18 = *a5;
  OUTLINED_FUNCTION_228_1(v16 + v18, v15);
  *(v16 + v18) = v5;
}

uint64_t sub_221A8D3F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_221AE00DC(a1, a2, a3);

  return MEMORY[0x28217E238](a1, a2, v5);
}

uint64_t sub_221A8D478@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0xE000000000000000;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ChoiceRequest.ProvidedOption(0);
  return sub_221BCC8C8();
}

uint64_t sub_221A8D4C0()
{
  OUTLINED_FUNCTION_121_3();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9988, &qword_221BDAE20);
  OUTLINED_FUNCTION_8_1(v0);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_59_6();
  v3 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.NeedsValueRequest(v2);
  if ((OUTLINED_FUNCTION_307(v3) & 1) == 0)
  {
    type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.NeedsValueRequest._StorageClass(0);
    OUTLINED_FUNCTION_174_2();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_55_7();
    v5 = sub_221AC50F8(v4);
    OUTLINED_FUNCTION_124_3(v5);
  }

  OUTLINED_FUNCTION_3_22();
  OUTLINED_FUNCTION_118_0();
  sub_221ADFDB4();
  type metadata accessor for AppIntentsProtobuf_UUID(0);
  v6 = OUTLINED_FUNCTION_95_4();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_71_3();
  OUTLINED_FUNCTION_103_4();
  sub_221A855A4();
  return swift_endAccess();
}

uint64_t sub_221A8D5B8()
{
  OUTLINED_FUNCTION_121_3();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB790, &qword_221BDADD8);
  OUTLINED_FUNCTION_8_1(v0);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_59_6();
  v3 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.NeedsValueRequest(v2);
  if ((OUTLINED_FUNCTION_307(v3) & 1) == 0)
  {
    type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.NeedsValueRequest._StorageClass(0);
    OUTLINED_FUNCTION_174_2();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_55_7();
    v5 = sub_221AC50F8(v4);
    OUTLINED_FUNCTION_124_3(v5);
  }

  OUTLINED_FUNCTION_70_6();
  type metadata accessor for AppIntentsProtobuf_Dialog(0);
  v6 = OUTLINED_FUNCTION_95_4();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_71_3();
  OUTLINED_FUNCTION_103_4();
  sub_221A855A4();
  return swift_endAccess();
}

uint64_t sub_221A8D69C()
{
  OUTLINED_FUNCTION_121_3();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB7D0, &unk_221BE4E60);
  OUTLINED_FUNCTION_8_1(v0);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_59_6();
  v3 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.NeedsValueRequest(v2);
  if ((OUTLINED_FUNCTION_307(v3) & 1) == 0)
  {
    type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.NeedsValueRequest._StorageClass(0);
    OUTLINED_FUNCTION_174_2();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_55_7();
    v5 = sub_221AC50F8(v4);
    OUTLINED_FUNCTION_124_3(v5);
  }

  OUTLINED_FUNCTION_134_3();
  type metadata accessor for AppIntentsProtobuf_IntentParameterMetadata(0);
  v6 = OUTLINED_FUNCTION_95_4();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_71_3();
  OUTLINED_FUNCTION_103_4();
  sub_221A855A4();
  return swift_endAccess();
}

uint64_t sub_221A8D780()
{
  OUTLINED_FUNCTION_121_3();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB95E0, &qword_221BE0A10);
  OUTLINED_FUNCTION_8_1(v0);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_59_6();
  v3 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.NeedsValueRequest(v2);
  if ((OUTLINED_FUNCTION_307(v3) & 1) == 0)
  {
    type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.NeedsValueRequest._StorageClass(0);
    OUTLINED_FUNCTION_174_2();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_55_7();
    v5 = sub_221AC50F8(v4);
    OUTLINED_FUNCTION_124_3(v5);
  }

  OUTLINED_FUNCTION_185_1();
  type metadata accessor for AppIntentsProtobuf_ValueType(0);
  v6 = OUTLINED_FUNCTION_95_4();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_71_3();
  OUTLINED_FUNCTION_103_4();
  sub_221A855A4();
  return swift_endAccess();
}

uint64_t sub_221A8D880(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = v4;
  v8 = OUTLINED_FUNCTION_52_6();
  v9 = *(type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.NeedsValueRequest(v8) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v4 + v9);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.NeedsValueRequest._StorageClass(0);
    OUTLINED_FUNCTION_174_2();
    swift_allocObject();
    v12 = OUTLINED_FUNCTION_55_7();
    v11 = sub_221AC50F8(v12);
    *(v7 + v9) = v11;
  }

  v13 = (v11 + *a3);
  OUTLINED_FUNCTION_294_0(v13, v15);
  *v13 = v5;
  v13[1] = v3;
}

uint64_t sub_221A8D918()
{
  OUTLINED_FUNCTION_121_3();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9988, &qword_221BDAE20);
  OUTLINED_FUNCTION_8_1(v0);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_59_6();
  v3 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ConfirmationRequest(v2);
  if ((OUTLINED_FUNCTION_307(v3) & 1) == 0)
  {
    type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ConfirmationRequest._StorageClass(0);
    OUTLINED_FUNCTION_174_2();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_55_7();
    v5 = sub_221AC7EF0(v4);
    OUTLINED_FUNCTION_124_3(v5);
  }

  OUTLINED_FUNCTION_3_22();
  OUTLINED_FUNCTION_118_0();
  sub_221ADFDB4();
  type metadata accessor for AppIntentsProtobuf_UUID(0);
  v6 = OUTLINED_FUNCTION_95_4();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_71_3();
  OUTLINED_FUNCTION_103_4();
  sub_221A855A4();
  return swift_endAccess();
}

uint64_t sub_221A8DA04()
{
  OUTLINED_FUNCTION_121_3();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB790, &qword_221BDADD8);
  OUTLINED_FUNCTION_8_1(v0);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_59_6();
  v3 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ConfirmationRequest(v2);
  if ((OUTLINED_FUNCTION_307(v3) & 1) == 0)
  {
    type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ConfirmationRequest._StorageClass(0);
    OUTLINED_FUNCTION_174_2();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_55_7();
    v5 = sub_221AC7EF0(v4);
    OUTLINED_FUNCTION_124_3(v5);
  }

  OUTLINED_FUNCTION_70_6();
  type metadata accessor for AppIntentsProtobuf_Dialog(0);
  v6 = OUTLINED_FUNCTION_95_4();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_71_3();
  OUTLINED_FUNCTION_103_4();
  sub_221A855A4();
  return swift_endAccess();
}

uint64_t sub_221A8DAE8()
{
  OUTLINED_FUNCTION_121_3();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB7D0, &unk_221BE4E60);
  OUTLINED_FUNCTION_8_1(v0);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_59_6();
  v3 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ConfirmationRequest(v2);
  if ((OUTLINED_FUNCTION_307(v3) & 1) == 0)
  {
    type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ConfirmationRequest._StorageClass(0);
    OUTLINED_FUNCTION_174_2();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_55_7();
    v5 = sub_221AC7EF0(v4);
    OUTLINED_FUNCTION_124_3(v5);
  }

  OUTLINED_FUNCTION_134_3();
  type metadata accessor for AppIntentsProtobuf_IntentParameterMetadata(0);
  v6 = OUTLINED_FUNCTION_95_4();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_71_3();
  OUTLINED_FUNCTION_103_4();
  sub_221A855A4();
  return swift_endAccess();
}

uint64_t sub_221A8DBCC()
{
  OUTLINED_FUNCTION_69_1();
  sub_221BCC8C8();
  v1(0);
  v0(0);
  OUTLINED_FUNCTION_108();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t sub_221A8DC34()
{
  OUTLINED_FUNCTION_121_3();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB7E0, &unk_221BE0A00);
  OUTLINED_FUNCTION_8_1(v0);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_59_6();
  v3 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ConfirmationRequest(v2);
  if ((OUTLINED_FUNCTION_307(v3) & 1) == 0)
  {
    type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ConfirmationRequest._StorageClass(0);
    OUTLINED_FUNCTION_174_2();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_55_7();
    v5 = sub_221AC7EF0(v4);
    OUTLINED_FUNCTION_124_3(v5);
  }

  OUTLINED_FUNCTION_185_1();
  type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ConfirmationRequest.Value(0);
  v6 = OUTLINED_FUNCTION_95_4();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_71_3();
  OUTLINED_FUNCTION_103_4();
  sub_221A855A4();
  return swift_endAccess();
}

uint64_t sub_221A8DD28()
{
  OUTLINED_FUNCTION_121_3();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9988, &qword_221BDAE20);
  OUTLINED_FUNCTION_8_1(v0);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_59_6();
  v3 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ContinueInAppRequest(v2);
  if ((OUTLINED_FUNCTION_307(v3) & 1) == 0)
  {
    type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ContinueInAppRequest._StorageClass(0);
    OUTLINED_FUNCTION_174_2();
    swift_allocObject();
    OUTLINED_FUNCTION_55_7();
    sub_221ACC164();
    OUTLINED_FUNCTION_124_3(v4);
  }

  OUTLINED_FUNCTION_3_22();
  OUTLINED_FUNCTION_118_0();
  sub_221ADFDB4();
  type metadata accessor for AppIntentsProtobuf_UUID(0);
  v5 = OUTLINED_FUNCTION_95_4();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_71_3();
  OUTLINED_FUNCTION_103_4();
  sub_221A855A4();
  return swift_endAccess();
}

uint64_t sub_221A8DE14()
{
  OUTLINED_FUNCTION_121_3();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB790, &qword_221BDADD8);
  OUTLINED_FUNCTION_8_1(v0);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_59_6();
  v3 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ContinueInAppRequest(v2);
  if ((OUTLINED_FUNCTION_307(v3) & 1) == 0)
  {
    type metadata accessor for AppIntentsProtobuf_HostMessages.PerformActionResponse.ContinueInAppRequest._StorageClass(0);
    OUTLINED_FUNCTION_174_2();
    swift_allocObject();
    OUTLINED_FUNCTION_55_7();
    sub_221ACC164();
    OUTLINED_FUNCTION_124_3(v4);
  }

  OUTLINED_FUNCTION_70_6();
  type metadata accessor for AppIntentsProtobuf_Dialog(0);
  v5 = OUTLINED_FUNCTION_95_4();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_71_3();
  OUTLINED_FUNCTION_103_4();
  sub_221A855A4();
  return swift_endAccess();
}

uint64_t sub_221A8DEF8()
{
  OUTLINED_FUNCTION_281_0();
  v1(0);
  OUTLINED_FUNCTION_91_4();
  OUTLINED_FUNCTION_108();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  v0(0);
  OUTLINED_FUNCTION_322();
  return sub_221BCC8C8();
}

void sub_221A8DF44()
{
  OUTLINED_FUNCTION_21();
  v1 = OUTLINED_FUNCTION_182_2();
  v2 = type metadata accessor for AppIntentsProtobuf_Error(v1);
  v3 = OUTLINED_FUNCTION_58_7(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_14_13();
  v4 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformQueryResponse.Success(0);
  v5 = OUTLINED_FUNCTION_8_1(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_32_8();
  type metadata accessor for AppIntentsProtobuf_HostMessages.PerformQueryResponse.OneOf_Payload(0);
  OUTLINED_FUNCTION_57_6();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_55_8();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_152_3();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA7A8, &qword_221BE0D00);
  OUTLINED_FUNCTION_8_1(v8);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_74_5();
  sub_221ADFEBC();
  OUTLINED_FUNCTION_280();
  OUTLINED_FUNCTION_282_0();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    OUTLINED_FUNCTION_158_2();
    sub_221ADFEBC();
    if (OUTLINED_FUNCTION_317() != 1)
    {
      OUTLINED_FUNCTION_241_1();
      sub_221ADFDB4();
      OUTLINED_FUNCTION_70_0();
      sub_221AD00FC();
      sub_221ADFE28();
      OUTLINED_FUNCTION_63_3();
      sub_221ADFE28();
      OUTLINED_FUNCTION_49_7();
      sub_221ADFE28();
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_175_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_158_2();
  sub_221ADFEBC();
  if (OUTLINED_FUNCTION_317() != 1)
  {
    OUTLINED_FUNCTION_1_35();
LABEL_8:
    sub_221ADFE28();
    sub_2219A1CC8(v0, &qword_27CFBA7A8, &qword_221BE0D00);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_6_17();
  OUTLINED_FUNCTION_362();
  v10 = OUTLINED_FUNCTION_205_1();
  if (MEMORY[0x223DA21A0](v10))
  {
    OUTLINED_FUNCTION_267_0();
    OUTLINED_FUNCTION_0_41();
    v13 = sub_221ADB35C(v11, v12, MEMORY[0x277D216D0]);
    OUTLINED_FUNCTION_132_3(v13);
  }

  OUTLINED_FUNCTION_1_35();
  sub_221ADFE28();
  OUTLINED_FUNCTION_1_35();
  sub_221ADFE28();
  OUTLINED_FUNCTION_49_7();
  sub_221ADFE28();
LABEL_11:
  OUTLINED_FUNCTION_60_3();
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221A8E228@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_138_1();
  OUTLINED_FUNCTION_8_1(v3);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_29_8();
  type metadata accessor for AppIntentsProtobuf_HostMessages.PerformQueryResponse.Success(v5);
  OUTLINED_FUNCTION_269_0();
  v6 = type metadata accessor for AppIntentsProtobuf_AsyncSequenceElementPage(0);
  OUTLINED_FUNCTION_22_9(v1);
  if (v7)
  {
    v8 = MEMORY[0x277D84F90];
    *a1 = 0;
    a1[1] = v8;
    sub_221BCC8C8();
    type metadata accessor for AppIntentsProtobuf_UUID(0);
    v9 = OUTLINED_FUNCTION_50_4();
    __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
    *(a1 + *(v6 + 32)) = 2;
    result = OUTLINED_FUNCTION_22_9(v1);
    if (!v7)
    {
      return sub_2219A1CC8(v1, &unk_27CFBB980, &unk_221BE0A20);
    }
  }

  else
  {
    OUTLINED_FUNCTION_125_3();
    OUTLINED_FUNCTION_55_3();
    return sub_221ADFDB4();
  }

  return result;
}

uint64_t sub_221A8E32C()
{
  v1 = OUTLINED_FUNCTION_40_3();
  v2 = type metadata accessor for AppIntentsProtobuf_HostMessages.PerformQueryResponse.Success(v1);
  sub_2219A1CC8(v0 + *(v2 + 24), &unk_27CFBB980, &unk_221BE0A20);
  OUTLINED_FUNCTION_125_3();
  OUTLINED_FUNCTION_103_4();
  sub_221ADFDB4();
  type metadata accessor for AppIntentsProtobuf_AsyncSequenceElementPage(0);
  v3 = OUTLINED_FUNCTION_318();

  return __swift_storeEnumTagSinglePayload(v3, 0, 1, v4);
}

uint64_t sub_221A8E3A4()
{
  v0 = OUTLINED_FUNCTION_4();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_8_1(v2);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_29_8();
  type metadata accessor for AppIntentsProtobuf_HostMessages.PerformQueryResponse.Success(v4);
  OUTLINED_FUNCTION_387();
  sub_221A1C558();
  type metadata accessor for AppIntentsProtobuf_AsyncSequenceElementPage(0);
  v5 = OUTLINED_FUNCTION_56_6();
  OUTLINED_FUNCTION_49_4(v5, v6, v7);
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = OUTLINED_FUNCTION_55_3();
  sub_2219A1CC8(v10, v11, &unk_221BE0A20);
  return v9;
}

void sub_221A8E44C()
{
  OUTLINED_FUNCTION_21();
  v1 = OUTLINED_FUNCTION_182_2();
  v2 = type metadata accessor for AppIntentsProtobuf_Error(v1);
  v3 = OUTLINED_FUNCTION_58_7(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_14_13();
  DeferredPropertyValue = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchDeferredPropertyValueResponse.Success(0);
  v5 = OUTLINED_FUNCTION_8_1(DeferredPropertyValue);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_32_8();
  type metadata accessor for AppIntentsProtobuf_HostMessages.FetchDeferredPropertyValueResponse.OneOf_Payload(0);
  OUTLINED_FUNCTION_57_6();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_55_8();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_152_3();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA7E0, &qword_221BE0D28);
  OUTLINED_FUNCTION_8_1(v8);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_74_5();
  sub_221ADFEBC();
  OUTLINED_FUNCTION_280();
  OUTLINED_FUNCTION_282_0();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    OUTLINED_FUNCTION_158_2();
    sub_221ADFEBC();
    if (OUTLINED_FUNCTION_317() != 1)
    {
      OUTLINED_FUNCTION_241_1();
      sub_221ADFDB4();
      OUTLINED_FUNCTION_70_0();
      sub_221AD2130();
      sub_221ADFE28();
      OUTLINED_FUNCTION_63_3();
      sub_221ADFE28();
      OUTLINED_FUNCTION_48_7();
      sub_221ADFE28();
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_175_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_158_2();
  sub_221ADFEBC();
  if (OUTLINED_FUNCTION_317() != 1)
  {
    OUTLINED_FUNCTION_1_35();
LABEL_8:
    sub_221ADFE28();
    sub_2219A1CC8(v0, &qword_27CFBA7E0, &qword_221BE0D28);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_6_17();
  OUTLINED_FUNCTION_362();
  v10 = OUTLINED_FUNCTION_205_1();
  if (MEMORY[0x223DA21A0](v10))
  {
    OUTLINED_FUNCTION_267_0();
    OUTLINED_FUNCTION_0_41();
    v13 = sub_221ADB35C(v11, v12, MEMORY[0x277D216D0]);
    OUTLINED_FUNCTION_132_3(v13);
  }

  OUTLINED_FUNCTION_1_35();
  sub_221ADFE28();
  OUTLINED_FUNCTION_1_35();
  sub_221ADFE28();
  OUTLINED_FUNCTION_48_7();
  sub_221ADFE28();
LABEL_11:
  OUTLINED_FUNCTION_60_3();
  OUTLINED_FUNCTION_22();
}

void sub_221A8E730()
{
  OUTLINED_FUNCTION_21();
  v1 = OUTLINED_FUNCTION_182_2();
  v2 = type metadata accessor for AppIntentsProtobuf_Error(v1);
  v3 = OUTLINED_FUNCTION_58_7(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_14_13();
  OptionsForAction = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchOptionsForActionResponse.Success(0);
  v5 = OUTLINED_FUNCTION_8_1(OptionsForAction);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_32_8();
  type metadata accessor for AppIntentsProtobuf_HostMessages.FetchOptionsForActionResponse.OneOf_Payload(0);
  OUTLINED_FUNCTION_57_6();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_55_8();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_152_3();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA808, &qword_221BE0D48);
  OUTLINED_FUNCTION_8_1(v8);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_74_5();
  sub_221ADFEBC();
  OUTLINED_FUNCTION_280();
  OUTLINED_FUNCTION_282_0();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    OUTLINED_FUNCTION_158_2();
    sub_221ADFEBC();
    if (OUTLINED_FUNCTION_317() != 1)
    {
      OUTLINED_FUNCTION_241_1();
      sub_221ADFDB4();
      OUTLINED_FUNCTION_70_0();
      sub_221AD3FE4();
      sub_221ADFE28();
      OUTLINED_FUNCTION_63_3();
      sub_221ADFE28();
      OUTLINED_FUNCTION_47_5();
      sub_221ADFE28();
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_175_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_158_2();
  sub_221ADFEBC();
  if (OUTLINED_FUNCTION_317() != 1)
  {
    OUTLINED_FUNCTION_1_35();
LABEL_8:
    sub_221ADFE28();
    sub_2219A1CC8(v0, &qword_27CFBA808, &qword_221BE0D48);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_6_17();
  OUTLINED_FUNCTION_362();
  v10 = OUTLINED_FUNCTION_205_1();
  if (MEMORY[0x223DA21A0](v10))
  {
    OUTLINED_FUNCTION_267_0();
    OUTLINED_FUNCTION_0_41();
    v13 = sub_221ADB35C(v11, v12, MEMORY[0x277D216D0]);
    OUTLINED_FUNCTION_132_3(v13);
  }

  OUTLINED_FUNCTION_1_35();
  sub_221ADFE28();
  OUTLINED_FUNCTION_1_35();
  sub_221ADFE28();
  OUTLINED_FUNCTION_47_5();
  sub_221ADFE28();
LABEL_11:
  OUTLINED_FUNCTION_60_3();
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221A8EA14@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  type metadata accessor for AppIntentsProtobuf_HostMessages.CreateAsyncIteratorResponse.Success(0);
  OUTLINED_FUNCTION_302();
  sub_221BCC8C8();
  type metadata accessor for AppIntentsProtobuf_UUID(0);
  v1 = OUTLINED_FUNCTION_50_4();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void sub_221A8EA6C()
{
  OUTLINED_FUNCTION_21();
  v1 = OUTLINED_FUNCTION_182_2();
  v2 = type metadata accessor for AppIntentsProtobuf_Error(v1);
  v3 = OUTLINED_FUNCTION_58_7(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_14_13();
  AsyncIterator = type metadata accessor for AppIntentsProtobuf_HostMessages.CreateAsyncIteratorResponse.Success(0);
  v5 = OUTLINED_FUNCTION_8_1(AsyncIterator);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_32_8();
  type metadata accessor for AppIntentsProtobuf_HostMessages.CreateAsyncIteratorResponse.OneOf_Payload(0);
  OUTLINED_FUNCTION_57_6();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_55_8();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_152_3();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA840, &qword_221BE0D78);
  OUTLINED_FUNCTION_8_1(v8);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_74_5();
  sub_221ADFEBC();
  OUTLINED_FUNCTION_280();
  OUTLINED_FUNCTION_282_0();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    OUTLINED_FUNCTION_158_2();
    sub_221ADFEBC();
    if (OUTLINED_FUNCTION_317() != 1)
    {
      OUTLINED_FUNCTION_241_1();
      sub_221ADFDB4();
      OUTLINED_FUNCTION_70_0();
      sub_221AD6050();
      sub_221ADFE28();
      OUTLINED_FUNCTION_63_3();
      sub_221ADFE28();
      OUTLINED_FUNCTION_46_6();
      sub_221ADFE28();
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_175_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_158_2();
  sub_221ADFEBC();
  if (OUTLINED_FUNCTION_317() != 1)
  {
    OUTLINED_FUNCTION_1_35();
LABEL_8:
    sub_221ADFE28();
    sub_2219A1CC8(v0, &qword_27CFBA840, &qword_221BE0D78);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_6_17();
  OUTLINED_FUNCTION_362();
  v10 = OUTLINED_FUNCTION_205_1();
  if (MEMORY[0x223DA21A0](v10))
  {
    OUTLINED_FUNCTION_267_0();
    OUTLINED_FUNCTION_0_41();
    v13 = sub_221ADB35C(v11, v12, MEMORY[0x277D216D0]);
    OUTLINED_FUNCTION_132_3(v13);
  }

  OUTLINED_FUNCTION_1_35();
  sub_221ADFE28();
  OUTLINED_FUNCTION_1_35();
  sub_221ADFE28();
  OUTLINED_FUNCTION_46_6();
  sub_221ADFE28();
LABEL_11:
  OUTLINED_FUNCTION_60_3();
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221A8ED50@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  type metadata accessor for AppIntentsProtobuf_HostMessages.FetchNextAsyncIteratorResultsResponse.Success(0);
  return sub_221BCC8C8();
}

void sub_221A8ED90()
{
  OUTLINED_FUNCTION_21();
  v1 = OUTLINED_FUNCTION_345();
  v2 = type metadata accessor for AppIntentsProtobuf_Error(v1);
  v3 = OUTLINED_FUNCTION_58_7(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_14_13();
  type metadata accessor for AppIntentsProtobuf_HostMessages.FetchNextAsyncIteratorResultsResponse.Success(0);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_32_8();
  type metadata accessor for AppIntentsProtobuf_HostMessages.FetchNextAsyncIteratorResultsResponse.OneOf_Payload(0);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_55_8();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_152_3();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA870, &qword_221BE0D98);
  OUTLINED_FUNCTION_8_1(v7);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_74_5();
  sub_221ADFEBC();
  sub_221ADFEBC();
  OUTLINED_FUNCTION_18_7();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_158_2();
    sub_221ADFEBC();
    if (OUTLINED_FUNCTION_395() == 1)
    {
      OUTLINED_FUNCTION_6_17();
      sub_221ADFDB4();
      v9 = OUTLINED_FUNCTION_205_1();
      if (MEMORY[0x223DA21A0](v9))
      {
        OUTLINED_FUNCTION_267_0();
        OUTLINED_FUNCTION_0_41();
        v12 = sub_221ADB35C(v10, v11, MEMORY[0x277D216D0]);
        OUTLINED_FUNCTION_132_3(v12);
      }

      OUTLINED_FUNCTION_1_35();
      sub_221ADFE28();
      OUTLINED_FUNCTION_1_35();
LABEL_14:
      sub_221ADFE28();
      OUTLINED_FUNCTION_75_6();
      sub_221ADFE28();
      goto LABEL_15;
    }

    OUTLINED_FUNCTION_1_35();
  }

  else
  {
    OUTLINED_FUNCTION_158_2();
    sub_221ADFEBC();
    if (OUTLINED_FUNCTION_395() != 1)
    {
      sub_221ADFDB4();
      sub_221A174D8();
      if (v13)
      {
        sub_221BCC8D8();
        OUTLINED_FUNCTION_0_41();
        sub_221ADB35C(v14, v15, MEMORY[0x277D216D0]);
        sub_221BCD338();
      }

      OUTLINED_FUNCTION_243_1();
      sub_221ADFE28();
      OUTLINED_FUNCTION_39_4();
      goto LABEL_14;
    }

    OUTLINED_FUNCTION_175_0();
  }

  sub_221ADFE28();
  sub_2219A1CC8(v0, &qword_27CFBA870, &qword_221BE0D98);
LABEL_15:
  OUTLINED_FUNCTION_22();
}

void sub_221A8F0E4()
{
  OUTLINED_FUNCTION_21();
  v1 = OUTLINED_FUNCTION_182_2();
  v2 = type metadata accessor for AppIntentsProtobuf_Error(v1);
  v3 = OUTLINED_FUNCTION_58_7(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_14_13();
  AppDescription = type metadata accessor for AppIntentsProtobuf_HostMessages.FetchAppDescriptionResponse.Success(0);
  v5 = OUTLINED_FUNCTION_8_1(AppDescription);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_32_8();
  type metadata accessor for AppIntentsProtobuf_HostMessages.FetchAppDescriptionResponse.OneOf_Payload(0);
  OUTLINED_FUNCTION_57_6();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_55_8();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_152_3();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA8A8, &qword_221BE0DB8);
  OUTLINED_FUNCTION_8_1(v8);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_74_5();
  sub_221ADFEBC();
  OUTLINED_FUNCTION_280();
  OUTLINED_FUNCTION_282_0();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    OUTLINED_FUNCTION_158_2();
    sub_221ADFEBC();
    if (OUTLINED_FUNCTION_317() != 1)
    {
      OUTLINED_FUNCTION_241_1();
      sub_221ADFDB4();
      OUTLINED_FUNCTION_70_0();
      sub_221ADA618();
      sub_221ADFE28();
      OUTLINED_FUNCTION_63_3();
      sub_221ADFE28();
      OUTLINED_FUNCTION_53_8();
      sub_221ADFE28();
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_175_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_158_2();
  sub_221ADFEBC();
  if (OUTLINED_FUNCTION_317() != 1)
  {
    OUTLINED_FUNCTION_1_35();
LABEL_8:
    sub_221ADFE28();
    sub_2219A1CC8(v0, &qword_27CFBA8A8, &qword_221BE0DB8);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_6_17();
  OUTLINED_FUNCTION_362();
  v10 = OUTLINED_FUNCTION_205_1();
  if (MEMORY[0x223DA21A0](v10))
  {
    OUTLINED_FUNCTION_267_0();
    OUTLINED_FUNCTION_0_41();
    v13 = sub_221ADB35C(v11, v12, MEMORY[0x277D216D0]);
    OUTLINED_FUNCTION_132_3(v13);
  }

  OUTLINED_FUNCTION_1_35();
  sub_221ADFE28();
  OUTLINED_FUNCTION_1_35();
  sub_221ADFE28();
  OUTLINED_FUNCTION_53_8();
  sub_221ADFE28();
LABEL_11:
  OUTLINED_FUNCTION_60_3();
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221A8F3C8@<X0>(_WORD *a1@<X8>)
{
  *a1 = 0;
  type metadata accessor for AppIntentsProtobuf_HostMessages.FetchAppDescriptionResponse.Success.ProtectionState(0);
  OUTLINED_FUNCTION_101_3();
  return sub_221BCC8C8();
}

uint64_t sub_221A8F428(uint64_t a1, uint64_t a2)
{
  v4 = sub_221ADB35C(&qword_27CFBA3D8, type metadata accessor for AppIntentsProtobuf_ClientMessages, &unk_221BE0940);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221A8F4C8(uint64_t a1)
{
  v2 = sub_221ADB35C(&qword_27CFBA3B8, type metadata accessor for AppIntentsProtobuf_ClientMessages, &unk_221BE0978);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221A8F590(uint64_t a1, uint64_t a2)
{
  sub_221ADB35C(&qword_27CFBA3B8, type metadata accessor for AppIntentsProtobuf_ClientMessages, &unk_221BE0978);

  return sub_221BCCB48();
}

uint64_t sub_221A8F60C()
{
  result = MEMORY[0x223DA31F0](0xD000000000000015, 0x8000000221BEF820);
  qword_27CFDDC60 = 0xD000000000000021;
  *algn_27CFDDC68 = 0x8000000221BEF7F0;
  return result;
}

uint64_t sub_221A8F680()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDDC70);
  __swift_project_value_buffer(v0, qword_27CFDDC70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_221BD8660;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = 1;
  *v5 = "actionIdentifier";
  *(v5 + 8) = 16;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_221BCCC48();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "bundleIdentifier";
  *(v9 + 8) = 16;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 10;
  *v11 = "parameters";
  *(v11 + 1) = 10;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 20;
  *v13 = "options";
  *(v13 + 1) = 7;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 21;
  *v15 = "environment";
  *(v15 + 1) = 11;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 22;
  *v17 = "systemContext";
  *(v17 + 1) = 13;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 23;
  *v19 = "requestMetadata";
  *(v19 + 1) = 15;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 100;
  *v21 = "executionIdentifier";
  *(v21 + 1) = 19;
  v21[16] = 2;
  v8();
  return sub_221BCCC58();
}

uint64_t sub_221A8F9C0()
{
  OUTLINED_FUNCTION_15_10();
  while (1)
  {
    OUTLINED_FUNCTION_56_3();
    result = sub_221BCC998();
    if (v0 || (v4 & 1) != 0)
    {
      return result;
    }

    if (!v2 & v1)
    {
      switch(result)
      {
        case 100:
          v9 = OUTLINED_FUNCTION_5_17();
          sub_221A8FE2C(v9, v10, v11, v12);
          break;
        case 2:
          goto LABEL_18;
        case 10:
          v17 = OUTLINED_FUNCTION_5_17();
          sub_221A8FABC(v17, v18, v19, v20);
          break;
        case 1:
LABEL_18:
          OUTLINED_FUNCTION_58_6();
          sub_221BCCA98();
          break;
      }
    }

    else
    {
      switch(result)
      {
        case 20:
          v5 = OUTLINED_FUNCTION_5_17();
          sub_221A8FB5C(v5, v6, v7, v8);
          break;
        case 21:
          v25 = OUTLINED_FUNCTION_5_17();
          sub_221A8FC10(v25, v26, v27, v28);
          break;
        case 22:
          v13 = OUTLINED_FUNCTION_5_17();
          sub_221A8FCC4(v13, v14, v15, v16);
          break;
        case 23:
          v21 = OUTLINED_FUNCTION_5_17();
          sub_221A8FD78(v21, v22, v23, v24);
          break;
        default:
          JUMPOUT(0);
      }
    }
  }
}

uint64_t sub_221A8FABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AppIntentsProtobuf_Property(0);
  sub_221ADB35C(&unk_27CFBB6A0, type metadata accessor for AppIntentsProtobuf_Property, &unk_221BD9678);
  return sub_221BCCAC8();
}

uint64_t sub_221A8FB5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest(0);
  type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.Options(0);
  sub_221ADB35C(&qword_27CFBA380, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.Options, &unk_221BE06A8);
  return sub_221BCCAD8();
}

uint64_t sub_221A8FC10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest(0);
  type metadata accessor for AppIntentsProtobuf_Environment(0);
  sub_221ADB35C(&qword_27CFB97E0, type metadata accessor for AppIntentsProtobuf_Environment, &unk_221BD9D80);
  return sub_221BCCAD8();
}

uint64_t sub_221A8FCC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest(0);
  type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.SystemContext(0);
  sub_221ADB35C(&unk_27CFBB760, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.SystemContext, &unk_221BE0540);
  return sub_221BCCAD8();
}

uint64_t sub_221A8FD78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest(0);
  type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(0);
  sub_221ADB35C(&unk_27CFBB0F0, type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata, &unk_221BDD980);
  return sub_221BCCAD8();
}

uint64_t sub_221A8FE2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest(0);
  type metadata accessor for AppIntentsProtobuf_UUID(0);
  sub_221ADB35C(&unk_27CFBB750, type metadata accessor for AppIntentsProtobuf_UUID, &unk_221BD90D8);
  return sub_221BCCAD8();
}

void sub_221A8FEE0()
{
  OUTLINED_FUNCTION_151_2();
  OUTLINED_FUNCTION_7_13();
  v2 = OUTLINED_FUNCTION_42_8();
  if (!v3 || (OUTLINED_FUNCTION_103_5(v2), !v0))
  {
    OUTLINED_FUNCTION_25_8();
    if (!v5 || (OUTLINED_FUNCTION_124_4(v4), !v0))
    {
      if (!*(*(v1 + 32) + 16) || (type metadata accessor for AppIntentsProtobuf_Property(0), sub_221ADB35C(&unk_27CFBB6A0, type metadata accessor for AppIntentsProtobuf_Property, &unk_221BD9678), OUTLINED_FUNCTION_91_4(), OUTLINED_FUNCTION_49_6(), sub_221BCCC18(), !v0))
      {
        v6 = OUTLINED_FUNCTION_3_21();
        sub_221A90010(v6, v7, v8, v9);
        if (!v0)
        {
          v10 = OUTLINED_FUNCTION_3_21();
          sub_221A901F0(v10, v11, v12, v13);
          v14 = OUTLINED_FUNCTION_3_21();
          sub_221A903D0(v14, v15, v16, v17);
          v18 = OUTLINED_FUNCTION_3_21();
          sub_221A905B0(v18, v19, v20, v21);
          v22 = OUTLINED_FUNCTION_3_21();
          sub_221A90790(v22, v23, v24, v25);
          type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest(0);
          OUTLINED_FUNCTION_30_7();
        }
      }
    }
  }

  OUTLINED_FUNCTION_152_2();
}

uint64_t sub_221A90010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB730, &unk_221BE0A40);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.Options(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest(0);
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_2219A1CC8(v6, &unk_27CFBB730, &unk_221BE0A40);
  }

  sub_221ADFDB4();
  sub_221ADB35C(&qword_27CFBA380, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.Options, &unk_221BE06A8);
  sub_221BCCC38();
  return sub_221ADFE28();
}

uint64_t sub_221A901F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB650, &qword_221BE0A38);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for AppIntentsProtobuf_Environment(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest(0);
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

uint64_t sub_221A903D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA3E8, &qword_221BE0A30);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.SystemContext(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest(0);
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_2219A1CC8(v6, &qword_27CFBA3E8, &qword_221BE0A30);
  }

  sub_221ADFDB4();
  sub_221ADB35C(&unk_27CFBB760, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.SystemContext, &unk_221BE0540);
  sub_221BCCC38();
  return sub_221ADFE28();
}

uint64_t sub_221A905B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB600, &qword_221BE44B0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest(0);
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

uint64_t sub_221A90790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9988, &qword_221BDAE20);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest(0);
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

void sub_221A90970()
{
  OUTLINED_FUNCTION_21();
  v8 = v7;
  v9 = OUTLINED_FUNCTION_345();
  v114 = type metadata accessor for AppIntentsProtobuf_UUID(v9);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_30_8();
  v111 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9988, &qword_221BDAE20);
  OUTLINED_FUNCTION_8_1(v12);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_116_5();
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9990, &qword_221BDAE28);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v14);
  v16 = &v107 - v15;
  v118 = type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(0);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_30_8();
  v112 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB600, &qword_221BE44B0);
  OUTLINED_FUNCTION_8_1(v19);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_104_2();
  v115 = v21;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA3F0, &qword_221BE0A60);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_104_2();
  v119 = v23;
  v24 = OUTLINED_FUNCTION_133_3();
  v123 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.SystemContext(v24);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_30_8();
  v116 = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA3E8, &qword_221BE0A30);
  OUTLINED_FUNCTION_8_1(v27);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_104_2();
  v120 = v29;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA3F8, &qword_221BE0A68);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_107_5(v31, v107);
  v32 = type metadata accessor for AppIntentsProtobuf_Environment(0);
  v33 = OUTLINED_FUNCTION_67_4(v32);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_30_8();
  v121 = v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB650, &qword_221BE0A38);
  OUTLINED_FUNCTION_8_1(v35);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_104_2();
  v125 = v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA400, &qword_221BE0A70);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v39);
  v41 = OUTLINED_FUNCTION_41_4(v40, v107);
  type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.Options(v41);
  OUTLINED_FUNCTION_43_8();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_32_8();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB730, &unk_221BE0A40);
  OUTLINED_FUNCTION_8_1(v43);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_157();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA408, &qword_221BE0A78);
  OUTLINED_FUNCTION_57_6();
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_225_0();
  OUTLINED_FUNCTION_102_2();
  v48 = v48 && v46 == v47;
  if (!v48 && (sub_221BCE1B8() & 1) == 0)
  {
    goto LABEL_36;
  }

  v49 = *(v6 + 16) == *(v8 + 16) && *(v6 + 24) == *(v8 + 24);
  if (!v49 && (sub_221BCE1B8() & 1) == 0)
  {
    goto LABEL_36;
  }

  sub_221A15F10();
  if ((v50 & 1) == 0)
  {
    goto LABEL_36;
  }

  v107 = v5;
  v108 = v16;
  v51 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest(0);
  v52 = *(v4 + 48);
  v109 = v51;
  v110 = v6;
  sub_221A1C558();
  sub_221A1C558();
  OUTLINED_FUNCTION_20_8(v1);
  if (v48)
  {
    OUTLINED_FUNCTION_20_8(v1 + v52);
    if (v48)
    {
      sub_2219A1CC8(v1, &unk_27CFBB730, &unk_221BE0A40);
      goto LABEL_25;
    }

LABEL_20:
    v54 = &qword_27CFBA408;
    v55 = &qword_221BE0A78;
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_131_3();
  sub_221A1C558();
  OUTLINED_FUNCTION_20_8(v1 + v52);
  if (v53)
  {
    OUTLINED_FUNCTION_175_0();
    sub_221ADFE28();
    goto LABEL_20;
  }

  sub_221ADFDB4();
  v57 = *(v0 + 20);
  v58 = *(v3 + v57);
  v59 = *(v2 + v57);
  if (v58 != v59)
  {

    v60 = sub_221A93780(v58, v59);

    if (!v60)
    {
      sub_221ADFE28();
      OUTLINED_FUNCTION_298();
      sub_221ADFE28();
      v54 = &unk_27CFBB730;
      v55 = &unk_221BE0A40;
      goto LABEL_21;
    }
  }

  sub_221BCC8D8();
  OUTLINED_FUNCTION_0_41();
  sub_221ADB35C(v61, v62, MEMORY[0x277D216D0]);
  OUTLINED_FUNCTION_70_0();
  v63 = sub_221BCD338();
  sub_221ADFE28();
  OUTLINED_FUNCTION_39_4();
  sub_221ADFE28();
  sub_2219A1CC8(v1, &unk_27CFBB730, &unk_221BE0A40);
  if (v63)
  {
LABEL_25:
    v64 = *(v38 + 48);
    v65 = v126;
    OUTLINED_FUNCTION_268_0();
    OUTLINED_FUNCTION_266_0();
    OUTLINED_FUNCTION_66_3(v65);
    if (v48)
    {
      OUTLINED_FUNCTION_39_8(v65 + v64);
      if (v48)
      {
        sub_2219A1CC8(v65, &unk_27CFBB650, &qword_221BE0A38);
        goto LABEL_44;
      }
    }

    else
    {
      sub_221A1C558();
      OUTLINED_FUNCTION_39_8(v65 + v64);
      if (!v66)
      {
        OUTLINED_FUNCTION_261_0();
        sub_221ADFDB4();
        OUTLINED_FUNCTION_136_3();
        if (v68)
        {
          v71 = v69 == v70;
        }

        else
        {
          v71 = 0;
        }

        if (v71 || (sub_221BCE1B8() & 1) != 0)
        {
          v72 = dword_27CFBB664;
          sub_221BCC8D8();
          OUTLINED_FUNCTION_0_41();
          sub_221ADB35C(v73, v74, MEMORY[0x277D216D0]);
          v75 = OUTLINED_FUNCTION_271_0();
          OUTLINED_FUNCTION_361(v75, v76, v77, v78);
          OUTLINED_FUNCTION_242_1();
          sub_221ADFE28();
          OUTLINED_FUNCTION_300();
          sub_2219A1CC8(v65, &unk_27CFBB650, &qword_221BE0A38);
          if ((v72 & 1) == 0)
          {
            goto LABEL_36;
          }

LABEL_44:
          v79 = *(v122 + 48);
          v80 = v124;
          OUTLINED_FUNCTION_268_0();
          v1 = v80;
          OUTLINED_FUNCTION_266_0();
          v81 = v123;
          OUTLINED_FUNCTION_81_5(v80, 1);
          if (v48)
          {
            OUTLINED_FUNCTION_39_8(v80 + v79);
            if (v48)
            {
              sub_2219A1CC8(v80, &qword_27CFBA3E8, &qword_221BE0A30);
LABEL_49:
              v82 = *(v117 + 48);
              v83 = v119;
              OUTLINED_FUNCTION_268_0();
              v1 = v83;
              OUTLINED_FUNCTION_266_0();
              v84 = v118;
              OUTLINED_FUNCTION_81_5(v83, 1);
              if (v48)
              {
                OUTLINED_FUNCTION_39_8(v83 + v82);
                if (v48)
                {
                  sub_2219A1CC8(v83, &unk_27CFBB600, &qword_221BE44B0);
                  goto LABEL_76;
                }
              }

              else
              {
                sub_221A1C558();
                OUTLINED_FUNCTION_39_8(v83 + v82);
                if (!v96)
                {
                  OUTLINED_FUNCTION_7_14();
                  sub_221ADFDB4();
                  OUTLINED_FUNCTION_63_3();
                  sub_221AB95D0();
                  OUTLINED_FUNCTION_12_8();
                  sub_221ADFE28();
                  OUTLINED_FUNCTION_39_4();
                  sub_221ADFE28();
                  sub_2219A1CC8(v83, &unk_27CFBB600, &qword_221BE44B0);
                  if ((v84 & 1) == 0)
                  {
                    goto LABEL_36;
                  }

LABEL_76:
                  v97 = *(v113 + 48);
                  v98 = v108;
                  OUTLINED_FUNCTION_268_0();
                  OUTLINED_FUNCTION_266_0();
                  OUTLINED_FUNCTION_49_4(v98, 1, v114);
                  if (v48)
                  {
                    OUTLINED_FUNCTION_20_8(v98 + v97);
                    v99 = v98;
                    if (v48)
                    {
                      goto LABEL_80;
                    }
                  }

                  else
                  {
                    sub_221A1C558();
                    OUTLINED_FUNCTION_20_8(v98 + v97);
                    if (!v102)
                    {
                      OUTLINED_FUNCTION_3_22();
                      sub_221ADFDB4();
                      OUTLINED_FUNCTION_349();
                      v99 = v98;
                      if (!v103 || (OUTLINED_FUNCTION_385(), !v48))
                      {
                        OUTLINED_FUNCTION_2_30();
                        sub_221ADFE28();
                        goto LABEL_92;
                      }

                      sub_221BCC8D8();
                      OUTLINED_FUNCTION_0_41();
                      sub_221ADB35C(v104, v105, MEMORY[0x277D216D0]);
                      OUTLINED_FUNCTION_271_0();
                      v106 = sub_221BCD338();
                      OUTLINED_FUNCTION_2_30();
                      sub_221ADFE28();
                      if ((v106 & 1) == 0)
                      {
LABEL_92:
                        OUTLINED_FUNCTION_2_30();
                        sub_221ADFE28();
                        v54 = &qword_27CFB9988;
                        v55 = &qword_221BDAE20;
                        goto LABEL_93;
                      }

                      OUTLINED_FUNCTION_2_30();
                      sub_221ADFE28();
LABEL_80:
                      sub_2219A1CC8(v99, &qword_27CFB9988, &qword_221BDAE20);
                      sub_221BCC8D8();
                      OUTLINED_FUNCTION_0_41();
                      sub_221ADB35C(v100, v101, MEMORY[0x277D216D0]);
                      OUTLINED_FUNCTION_379();
                      v67 = sub_221BCD338();
                      goto LABEL_37;
                    }

                    OUTLINED_FUNCTION_2_30();
                    sub_221ADFE28();
                    v99 = v98;
                  }

                  v54 = &qword_27CFB9990;
                  v55 = &qword_221BDAE28;
LABEL_93:
                  v56 = v99;
                  goto LABEL_35;
                }

                OUTLINED_FUNCTION_8_14();
                sub_221ADFE28();
              }

              v54 = &qword_27CFBA3F0;
              v55 = &qword_221BE0A60;
              goto LABEL_21;
            }
          }

          else
          {
            v85 = v120;
            sub_221A1C558();
            OUTLINED_FUNCTION_39_8(v1 + v79);
            if (!v86)
            {
              v87 = v116;
              sub_221ADFDB4();
              v88 = *(v81 + 20);
              v89 = *(v87 + v88 + 8);
              if (*(v85 + v88 + 8))
              {
                if (v89)
                {
                  OUTLINED_FUNCTION_61_3(v85 + v88);
                  v92 = v48 && v90 == v91;
                  if (v92 || (sub_221BCE1B8() & 1) != 0)
                  {
LABEL_66:
                    sub_221BCC8D8();
                    OUTLINED_FUNCTION_0_41();
                    sub_221ADB35C(v93, v94, MEMORY[0x277D216D0]);
                    OUTLINED_FUNCTION_63_3();
                    v95 = sub_221BCD338();
                    sub_221ADFE28();
                    OUTLINED_FUNCTION_39_4();
                    sub_221ADFE28();
                    sub_2219A1CC8(v1, &qword_27CFBA3E8, &qword_221BE0A30);
                    if ((v95 & 1) == 0)
                    {
                      goto LABEL_36;
                    }

                    goto LABEL_49;
                  }
                }
              }

              else if (!v89)
              {
                goto LABEL_66;
              }

              sub_221ADFE28();
              OUTLINED_FUNCTION_298();
              sub_221ADFE28();
              v54 = &qword_27CFBA3E8;
              v55 = &qword_221BE0A30;
LABEL_21:
              v56 = v1;
LABEL_35:
              sub_2219A1CC8(v56, v54, v55);
              goto LABEL_36;
            }

            OUTLINED_FUNCTION_175_0();
            sub_221ADFE28();
          }

          v54 = &qword_27CFBA3F8;
          v55 = &qword_221BE0A68;
          goto LABEL_21;
        }

        OUTLINED_FUNCTION_262_0();
        sub_221ADFE28();
        OUTLINED_FUNCTION_55_3();
        sub_221ADFE28();
        v54 = &unk_27CFBB650;
        v55 = &qword_221BE0A38;
LABEL_34:
        v56 = v65;
        goto LABEL_35;
      }

      sub_221ADFE28();
    }

    v54 = &qword_27CFBA400;
    v55 = &qword_221BE0A70;
    goto LABEL_34;
  }

LABEL_36:
  v67 = 0;
LABEL_37:
  OUTLINED_FUNCTION_100_3(v67);
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221A91678(uint64_t a1, uint64_t a2)
{
  v4 = sub_221ADB35C(&qword_27CFBA3E0, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest, &unk_221BE07D8);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221A91718(uint64_t a1)
{
  v2 = sub_221ADB35C(&unk_27CFBB310, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest, &unk_221BE0810);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221A917E0(uint64_t a1, uint64_t a2)
{
  sub_221ADB35C(&unk_27CFBB310, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest, &unk_221BE0810);

  return sub_221BCCB48();
}

uint64_t sub_221A91860()
{
  if (qword_27CFB6E68 != -1)
  {
    swift_once();
  }

  v1 = qword_27CFDDC60;
  v2 = *algn_27CFDDC68;
  swift_bridgeObjectRetain_n();
  MEMORY[0x223DA31F0](0x736E6F6974704F2ELL, 0xE800000000000000);

  qword_27CFDDC88 = v1;
  unk_27CFDDC90 = v2;
  return result;
}

uint64_t sub_221A91904()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDDC98);
  __swift_project_value_buffer(v0, qword_27CFDDC98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_221BDAFB0;
  v4 = v35 + v3;
  v5 = v35 + v3 + v1[14];
  *(v35 + v3) = 2;
  *v5 = "source";
  *(v5 + 8) = 6;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_221BCCC48();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 3;
  *v9 = "kind";
  *(v9 + 8) = 4;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 4;
  *v11 = "interactionMode";
  *(v11 + 1) = 15;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 5;
  *v13 = "donateToTranscript";
  *(v13 + 1) = 18;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 6;
  *v15 = "requestUnlockIfNeeded";
  *(v15 + 1) = 21;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 7;
  *v17 = "allowsPrepareBeforePerform";
  *(v17 + 1) = 26;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 8;
  *v19 = "connectionOperationTimeout";
  *(v19 + 1) = 26;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 9;
  *v21 = "preferredBundleIdentifier";
  *(v21 + 1) = 25;
  v21[16] = 2;
  v8();
  v22 = (v4 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 10;
  *v23 = "exportedContentTypeIdentifier";
  *(v23 + 1) = 29;
  v23[16] = 2;
  v8();
  v24 = (v4 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 11;
  *v25 = "convertArrayResultToAsyncSequence";
  *(v25 + 1) = 33;
  v25[16] = 2;
  v8();
  v26 = (v4 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 12;
  *v27 = "payloadPrivacy";
  *(v27 + 1) = 14;
  v27[16] = 2;
  v8();
  v28 = (v4 + 11 * v2);
  v29 = v28 + v1[14];
  *v28 = 13;
  *v29 = "allowLiveActivities";
  *(v29 + 1) = 19;
  v29[16] = 2;
  v8();
  v30 = (v4 + 12 * v2);
  v31 = v30 + v1[14];
  *v30 = 14;
  *v31 = "assistantDismissalPolicy";
  *(v31 + 1) = 24;
  v31[16] = 2;
  v8();
  v32 = (v4 + 13 * v2);
  v33 = v32 + v1[14];
  *v32 = 15;
  *v33 = "snippetEnvironment";
  *(v33 + 1) = 18;
  v33[16] = 2;
  v8();
  return sub_221BCCC58();
}

uint64_t sub_221A91DD8()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  *(v0 + 32) = 0;
  *(v0 + 40) = 1;
  *(v0 + 48) = 0;
  *(v0 + 56) = 1;
  *(v0 + 57) = 514;
  *(v0 + 59) = 2;
  *(v0 + 64) = 0;
  *(v0 + 72) = 1;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 2;
  *(v0 + 116) = 0;
  *(v0 + 120) = 513;
  *(v0 + 128) = 0;
  *(v0 + 136) = 1;
  v1 = OBJC_IVAR____TtCVVV18AppIntentsServices33AppIntentsProtobuf_ClientMessages20PerformActionRequest7OptionsP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__snippetEnvironment;
  v2 = type metadata accessor for AppIntentsProtobuf_SnippetEnvironment(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  return v0;
}

void sub_221A91E70()
{
  OUTLINED_FUNCTION_21();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB740, &qword_221BE09F8);
  OUTLINED_FUNCTION_8_1(v3);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_104_2();
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  *(v0 + 32) = 0;
  *(v0 + 40) = 1;
  *(v0 + 48) = 0;
  *(v0 + 57) = 514;
  *(v0 + 56) = 1;
  *(v0 + 59) = 2;
  *(v0 + 64) = 0;
  *(v0 + 96) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 112) = 2;
  *(v0 + 72) = 1;
  *(v0 + 116) = 0;
  *(v0 + 120) = 513;
  *(v0 + 128) = 0;
  *(v0 + 136) = 1;
  type metadata accessor for AppIntentsProtobuf_SnippetEnvironment(0);
  OUTLINED_FUNCTION_318();
  OUTLINED_FUNCTION_108();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_106_3(v2 + 16, &v50);
  v9 = *(v2 + 16);
  v10 = *(v2 + 24);
  OUTLINED_FUNCTION_294_0(v0 + 16, &v49);
  *(v0 + 16) = v9;
  *(v0 + 24) = v10;
  OUTLINED_FUNCTION_106_3(v2 + 32, &v48);
  v11 = *(v2 + 32);
  v12 = *(v2 + 40);
  OUTLINED_FUNCTION_294_0(v0 + 32, &v47);
  *(v0 + 32) = v11;
  *(v0 + 40) = v12;
  OUTLINED_FUNCTION_106_3(v2 + 48, &v46);
  v13 = *(v2 + 48);
  v14 = *(v2 + 56);
  OUTLINED_FUNCTION_294_0(v0 + 48, &v45);
  *(v0 + 48) = v13;
  *(v0 + 56) = v14;
  OUTLINED_FUNCTION_106_3(v2 + 57, &v44);
  LOBYTE(v13) = *(v2 + 57);
  OUTLINED_FUNCTION_294_0(v0 + 57, &v43);
  *(v0 + 57) = v13;
  OUTLINED_FUNCTION_106_3(v2 + 58, &v42);
  LOBYTE(v13) = *(v2 + 58);
  OUTLINED_FUNCTION_294_0(v0 + 58, &v41);
  *(v0 + 58) = v13;
  OUTLINED_FUNCTION_106_3(v2 + 59, &v40);
  LOBYTE(v13) = *(v2 + 59);
  OUTLINED_FUNCTION_294_0(v0 + 59, &v39);
  *(v0 + 59) = v13;
  OUTLINED_FUNCTION_106_3(v2 + 64, &v38);
  v15 = *(v2 + 64);
  v16 = *(v2 + 72);
  OUTLINED_FUNCTION_294_0(v0 + 64, &v37);
  *(v0 + 64) = v15;
  *(v0 + 72) = v16;
  OUTLINED_FUNCTION_106_3(v2 + 80, &v36);
  v17 = *(v2 + 80);
  v18 = *(v2 + 88);
  OUTLINED_FUNCTION_294_0(v0 + 80, &v35);
  *(v0 + 80) = v17;
  *(v0 + 88) = v18;
  OUTLINED_FUNCTION_106_3(v2 + 96, &v34);
  v20 = *(v2 + 96);
  v19 = *(v2 + 104);
  OUTLINED_FUNCTION_294_0(v0 + 96, &v33);
  *(v0 + 96) = v20;
  *(v0 + 104) = v19;
  OUTLINED_FUNCTION_106_3(v2 + 112, &v32);
  LOBYTE(v20) = *(v2 + 112);
  OUTLINED_FUNCTION_294_0(v0 + 112, &v31);
  *(v0 + 112) = v20;
  OUTLINED_FUNCTION_106_3(v2 + 116, &v30);
  LODWORD(v20) = *(v2 + 116);
  v21 = *(v2 + 120);
  OUTLINED_FUNCTION_294_0(v0 + 116, &v29);
  *(v0 + 116) = v20;
  *(v0 + 120) = v21;
  OUTLINED_FUNCTION_106_3(v2 + 121, &v28);
  LOBYTE(v20) = *(v2 + 121);
  OUTLINED_FUNCTION_294_0(v0 + 121, &v27);
  *(v0 + 121) = v20;
  OUTLINED_FUNCTION_106_3(v2 + 128, &v26);
  v22 = *(v2 + 128);
  v23 = *(v2 + 136);
  OUTLINED_FUNCTION_294_0(v0 + 128, &v25);
  *(v0 + 128) = v22;
  *(v0 + 136) = v23;
  OUTLINED_FUNCTION_106_3(v2 + OBJC_IVAR____TtCVVV18AppIntentsServices33AppIntentsProtobuf_ClientMessages20PerformActionRequest7OptionsP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__snippetEnvironment, &v24);
  sub_221A1C558();

  OUTLINED_FUNCTION_193_2();
  swift_beginAccess();
  OUTLINED_FUNCTION_378();
  sub_221A855A4();
  swift_endAccess();
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221A92218()
{

  sub_2219A1CC8(v0 + OBJC_IVAR____TtCVVV18AppIntentsServices33AppIntentsProtobuf_ClientMessages20PerformActionRequest7OptionsP33_15D8ACD6F9A04B79071F668CEE455EA313_StorageClass__snippetEnvironment, &unk_27CFBB740, &qword_221BE09F8);
  return v0;
}

void sub_221A922A0(uint64_t a1)
{
  sub_221ABF2A8(319, &qword_27CFB9B48, type metadata accessor for AppIntentsProtobuf_SnippetEnvironment, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_221A9239C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
      case 2:
        sub_221A92594(a2, a1, a3, a4);
        break;
      case 3:
        sub_221A92618(a2, a1, a3, a4);
        break;
      case 4:
        sub_221A9269C(a2, a1, a3, a4);
        break;
      case 5:
        sub_221A92720(a2, a1, a3, a4);
        break;
      case 6:
        sub_221A927A4(a2, a1, a3, a4);
        break;
      case 7:
        sub_221A92828(a2, a1, a3, a4);
        break;
      case 8:
        sub_221A928AC(a2, a1, a3, a4);
        break;
      case 9:
        sub_221A92930(a2, a1, a3, a4);
        break;
      case 10:
        sub_221A929B4(a2, a1, a3, a4);
        break;
      case 11:
        sub_221A92A38(a2, a1, a3, a4);
        break;
      case 12:
        sub_221A92ABC(a2, a1, a3, a4);
        break;
      case 13:
        sub_221A92B40(a2, a1, a3, a4);
        break;
      case 14:
        sub_221A92BC4(a2, a1, a3, a4);
        break;
      case 15:
        sub_221A92C48(a2, a1, a3, a4);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_221A92594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_221BCCAA8();
  return swift_endAccess();
}

uint64_t sub_221A92618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_221BCCAA8();
  return swift_endAccess();
}

uint64_t sub_221A9269C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_221BCCAA8();
  return swift_endAccess();
}

uint64_t sub_221A92720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_221BCC9B8();
  return swift_endAccess();
}

uint64_t sub_221A927A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_221BCC9B8();
  return swift_endAccess();
}

uint64_t sub_221A92828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_221BCC9B8();
  return swift_endAccess();
}

uint64_t sub_221A928AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_221BCCA58();
  return swift_endAccess();
}

uint64_t sub_221A92930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_221BCCA88();
  return swift_endAccess();
}

uint64_t sub_221A929B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_221BCCA88();
  return swift_endAccess();
}

uint64_t sub_221A92A38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_221BCC9B8();
  return swift_endAccess();
}

uint64_t sub_221A92ABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_221BCCA78();
  return swift_endAccess();
}

uint64_t sub_221A92B40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_221BCC9B8();
  return swift_endAccess();
}

uint64_t sub_221A92BC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_221BCCAA8();
  return swift_endAccess();
}

uint64_t sub_221A92C48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for AppIntentsProtobuf_SnippetEnvironment(0);
  sub_221ADB35C(&qword_27CFB9720, type metadata accessor for AppIntentsProtobuf_SnippetEnvironment, &unk_221BD93A8);
  sub_221BCCAD8();
  return swift_endAccess();
}

uint64_t sub_221A92D24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_221A92E94(a1, a2, a3, a4);
  if (!v4)
  {
    sub_221A92F18(a1, a2, a3, a4);
    sub_221A92F9C(a1, a2, a3, a4);
    sub_221A93020(a1, a2, a3, a4);
    sub_221A930A8(a1, a2, a3, a4);
    sub_221A93130(a1, a2, a3, a4);
    sub_221A931B8(a1);
    sub_221A9323C(a1);
    sub_221A932D8(a1);
    sub_221A93374(a1, a2, a3, a4);
    sub_221A933FC(a1, a2, a3, a4);
    sub_221A93480(a1, a2, a3, a4);
    sub_221A93508(a1, a2, a3, a4);
    return sub_221A9358C(a1, a2, a3, a4);
  }

  return result;
}

uint64_t sub_221A92E94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 24) & 1) == 0)
  {
    return sub_221BCCC08();
  }

  return result;
}

uint64_t sub_221A92F18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 40) & 1) == 0)
  {
    return sub_221BCCC08();
  }

  return result;
}

uint64_t sub_221A92F9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 56) & 1) == 0)
  {
    return sub_221BCCC08();
  }

  return result;
}

uint64_t sub_221A93020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 57) != 2)
  {
    return sub_221BCCB88();
  }

  return result;
}

uint64_t sub_221A930A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 58) != 2)
  {
    return sub_221BCCB88();
  }

  return result;
}

uint64_t sub_221A93130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 59) != 2)
  {
    return sub_221BCCB88();
  }

  return result;
}

uint64_t sub_221A931B8(uint64_t a1)
{
  result = swift_beginAccess();
  if ((*(a1 + 72) & 1) == 0)
  {
    return sub_221BCCBD8();
  }

  return result;
}

uint64_t sub_221A9323C(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 88))
  {

    sub_221BCCBF8();
  }

  return result;
}

uint64_t sub_221A932D8(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 104))
  {

    sub_221BCCBF8();
  }

  return result;
}

uint64_t sub_221A93374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 112) != 2)
  {
    return sub_221BCCB88();
  }

  return result;
}

uint64_t sub_221A933FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 120) & 1) == 0)
  {
    return sub_221BCCBE8();
  }

  return result;
}

uint64_t sub_221A93480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 121) != 2)
  {
    return sub_221BCCB88();
  }

  return result;
}

uint64_t sub_221A93508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 136) & 1) == 0)
  {
    return sub_221BCCC08();
  }

  return result;
}

uint64_t sub_221A9358C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[5] = a4;
  v9[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB740, &qword_221BE09F8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for AppIntentsProtobuf_SnippetEnvironment(0);
  MEMORY[0x28223BE20](v7);
  swift_beginAccess();
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_2219A1CC8(v6, &unk_27CFBB740, &qword_221BE09F8);
  }

  sub_221ADFDB4();
  sub_221ADB35C(&qword_27CFB9720, type metadata accessor for AppIntentsProtobuf_SnippetEnvironment, &unk_221BD93A8);
  sub_221BCCC38();
  return sub_221ADFE28();
}

BOOL sub_221A93780(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppIntentsProtobuf_SnippetEnvironment(0);
  MEMORY[0x28223BE20](v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA410, &unk_221BE0A80);
  MEMORY[0x28223BE20](v5);
  v54[0] = v54 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB740, &qword_221BE09F8);
  MEMORY[0x28223BE20](v7 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = v54 - v9;
  swift_beginAccess();
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  swift_beginAccess();
  v13 = *(a2 + 24);
  if (v12)
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (v11 != *(a2 + 16))
    {
      v13 = 1;
    }

    if (v13)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v14 = *(a1 + 32);
  v15 = *(a1 + 40);
  swift_beginAccess();
  v16 = *(a2 + 40);
  if (v15)
  {
    if (!*(a2 + 40))
    {
      return 0;
    }
  }

  else
  {
    if (v14 != *(a2 + 32))
    {
      v16 = 1;
    }

    if (v16)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v17 = *(a1 + 48);
  v18 = *(a1 + 56);
  swift_beginAccess();
  v19 = *(a2 + 56);
  if (v18)
  {
    if (!*(a2 + 56))
    {
      return 0;
    }
  }

  else
  {
    if (v17 != *(a2 + 48))
    {
      v19 = 1;
    }

    if (v19)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v20 = *(a1 + 57);
  swift_beginAccess();
  v21 = *(a2 + 57);
  if (v20 == 2)
  {
    if (v21 != 2)
    {
      return 0;
    }
  }

  else if (v21 == 2 || ((v20 ^ v21) & 1) != 0)
  {
    return 0;
  }

  swift_beginAccess();
  v22 = *(a1 + 58);
  swift_beginAccess();
  v23 = *(a2 + 58);
  if (v22 == 2)
  {
    if (v23 != 2)
    {
      return 0;
    }
  }

  else if (v23 == 2 || ((v22 ^ v23) & 1) != 0)
  {
    return 0;
  }

  swift_beginAccess();
  v24 = *(a1 + 59);
  swift_beginAccess();
  v25 = *(a2 + 59);
  if (v24 == 2)
  {
    if (v25 != 2)
    {
      return 0;
    }
  }

  else if (v25 == 2 || ((v24 ^ v25) & 1) != 0)
  {
    return 0;
  }

  swift_beginAccess();
  v26 = *(a1 + 64);
  v27 = *(a1 + 72);
  swift_beginAccess();
  v28 = *(a2 + 72);
  if (v27)
  {
    if (!*(a2 + 72))
    {
      return 0;
    }
  }

  else
  {
    if (v26 != *(a2 + 64))
    {
      v28 = 1;
    }

    if (v28)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v29 = *(a1 + 80);
  v30 = *(a1 + 88);
  swift_beginAccess();
  v31 = *(a2 + 88);
  if (v30)
  {
    if (!v31)
    {
      return 0;
    }

    v32 = v29 == *(a2 + 80) && v30 == v31;
    if (!v32 && (sub_221BCE1B8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v31)
  {
    return 0;
  }

  swift_beginAccess();
  v33 = *(a1 + 96);
  v34 = *(a1 + 104);
  swift_beginAccess();
  v35 = *(a2 + 104);
  if (v34)
  {
    if (!v35)
    {
      return 0;
    }

    v36 = v33 == *(a2 + 96) && v34 == v35;
    if (!v36 && (sub_221BCE1B8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v35)
  {
    return 0;
  }

  swift_beginAccess();
  v37 = *(a1 + 112);
  swift_beginAccess();
  v38 = *(a2 + 112);
  if (v37 == 2)
  {
    if (v38 != 2)
    {
      return 0;
    }
  }

  else if (v38 == 2 || ((v37 ^ v38) & 1) != 0)
  {
    return 0;
  }

  swift_beginAccess();
  v39 = *(a1 + 116);
  v40 = *(a1 + 120);
  swift_beginAccess();
  v41 = *(a2 + 120);
  if (v40)
  {
    if (!*(a2 + 120))
    {
      return 0;
    }
  }

  else
  {
    if (v39 != *(a2 + 116))
    {
      v41 = 1;
    }

    if (v41)
    {
      return 0;
    }
  }

  swift_beginAccess();
  v42 = *(a1 + 121);
  swift_beginAccess();
  v43 = *(a2 + 121);
  if (v42 == 2)
  {
    if (v43 != 2)
    {
      return 0;
    }
  }

  else if (v43 == 2 || ((v42 ^ v43) & 1) != 0)
  {
    return 0;
  }

  swift_beginAccess();
  v44 = *(a1 + 128);
  v45 = *(a1 + 136);
  swift_beginAccess();
  v46 = *(a2 + 136);
  if (v45)
  {
    if (!*(a2 + 136))
    {
      return 0;
    }
  }

  else
  {
    if (v44 != *(a2 + 128))
    {
      v46 = 1;
    }

    if (v46)
    {
      return 0;
    }
  }

  swift_beginAccess();
  sub_221A1C558();
  swift_beginAccess();
  v47 = *(v5 + 48);
  v48 = v54[0];
  sub_221A1C558();
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v48, 1, v4) != 1)
  {
    v49 = v54[0];
    sub_221A1C558();
    if (__swift_getEnumTagSinglePayload(v49 + v47, 1, v4) == 1)
    {
      sub_2219A1CC8(v10, &unk_27CFBB740, &qword_221BE09F8);
      sub_221ADFE28();
      goto LABEL_85;
    }

    v51 = v54[0];
    sub_221ADFDB4();
    sub_221A814A4();
    v53 = v52;
    sub_221ADFE28();
    sub_2219A1CC8(v10, &unk_27CFBB740, &qword_221BE09F8);
    sub_221ADFE28();
    sub_2219A1CC8(v51, &unk_27CFBB740, &qword_221BE09F8);
    return (v53 & 1) != 0;
  }

  sub_2219A1CC8(v10, &unk_27CFBB740, &qword_221BE09F8);
  if (__swift_getEnumTagSinglePayload(v54[0] + v47, 1, v4) != 1)
  {
LABEL_85:
    sub_2219A1CC8(v54[0], &qword_27CFBA410, &unk_221BE0A80);
    return 0;
  }

  sub_2219A1CC8(v54[0], &unk_27CFBB740, &qword_221BE09F8);
  return 1;
}

uint64_t sub_221A94070(uint64_t a1, uint64_t a2)
{
  v4 = sub_221ADB35C(&qword_27CFBA418, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.Options, &unk_221BE0670);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221A94110(uint64_t a1)
{
  v2 = sub_221ADB35C(&qword_27CFBA380, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.Options, &unk_221BE06A8);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221A941D8(uint64_t a1, uint64_t a2)
{
  sub_221ADB35C(&qword_27CFBA380, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.Options, &unk_221BE06A8);

  return sub_221BCCB48();
}

uint64_t sub_221A94298()
{
  if (qword_27CFB6E68 != -1)
  {
    swift_once();
  }

  v1 = qword_27CFDDC60;
  v2 = *algn_27CFDDC68;
  swift_bridgeObjectRetain_n();
  MEMORY[0x223DA31F0](0x436D65747379532ELL, 0xEE00747865746E6FLL);

  qword_27CFDDCB0 = v1;
  *algn_27CFDDCB8 = v2;
  return result;
}

uint64_t sub_221A94360()
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

    if (result == 1)
    {
      OUTLINED_FUNCTION_5_17();
      sub_221AAEA90();
    }
  }

  return result;
}

uint64_t sub_221A943C0()
{
  OUTLINED_FUNCTION_109_2();
  OUTLINED_FUNCTION_34_8();
  result = sub_221AAEBA0();
  if (!v0)
  {
    OUTLINED_FUNCTION_112_4();
    return sub_221BCC8B8();
  }

  return result;
}

uint64_t sub_221A94410()
{
  v0 = OUTLINED_FUNCTION_88_5();
  type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.SystemContext(v0);
  OUTLINED_FUNCTION_214_0();
  if (v3)
  {
    if (v1)
    {
      OUTLINED_FUNCTION_61_3(v2);
      v6 = v6 && v4 == v5;
      if (v6 || (sub_221BCE1B8() & 1) != 0)
      {
        goto LABEL_8;
      }
    }
  }

  else if (!v1)
  {
LABEL_8:
    sub_221BCC8D8();
    OUTLINED_FUNCTION_0_41();
    v9 = sub_221ADB35C(v7, v8, MEMORY[0x277D216D0]);
    return OUTLINED_FUNCTION_135_3(v9) & 1;
  }

  return 0;
}

uint64_t sub_221A94500(uint64_t a1, uint64_t a2)
{
  v4 = sub_221ADB35C(&qword_27CFBA420, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.SystemContext, &unk_221BE0508);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221A945A0(uint64_t a1)
{
  v2 = sub_221ADB35C(&unk_27CFBB760, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.SystemContext, &unk_221BE0540);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221A94668(uint64_t a1, uint64_t a2)
{
  sub_221ADB35C(&unk_27CFBB760, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformActionRequest.SystemContext, &unk_221BE0540);

  return sub_221BCCB48();
}

uint64_t sub_221A946E8()
{
  result = MEMORY[0x223DA31F0](0xD000000000000017, 0x8000000221BEF9F0);
  qword_27CFDDCD8 = 0xD000000000000021;
  unk_27CFDDCE0 = 0x8000000221BEF7F0;
  return result;
}

uint64_t sub_221A9475C()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDDCE8);
  __swift_project_value_buffer(v0, qword_27CFDDCE8);
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
  *v10 = "error";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "selectedIndex";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "value";
  *(v14 + 1) = 5;
  v14[16] = 2;
  v9();
  return sub_221BCCC58();
}

void sub_221A9499C()
{
  OUTLINED_FUNCTION_15_10();
  while (1)
  {
    OUTLINED_FUNCTION_56_3();
    v1 = sub_221BCC998();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        v3 = OUTLINED_FUNCTION_5_17();
        sub_221A94A5C(v3, v4, v5, v6);
        break;
      case 2:
        v11 = OUTLINED_FUNCTION_40_7();
        sub_221A94B10(v11, v12, v13, v14);
        break;
      case 3:
        OUTLINED_FUNCTION_251_1();
        OUTLINED_FUNCTION_5_17();
        OUTLINED_FUNCTION_377();
        sub_221A96B64();
        break;
      case 4:
        v7 = OUTLINED_FUNCTION_40_7();
        sub_221A95008(v7, v8, v9, v10);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_221A94A5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AppIntentsProtobuf_ClientMessages.DisambiguationResponse(0);
  type metadata accessor for AppIntentsProtobuf_UUID(0);
  sub_221ADB35C(&unk_27CFBB750, type metadata accessor for AppIntentsProtobuf_UUID, &unk_221BD90D8);
  return sub_221BCCAD8();
}

uint64_t sub_221A94B10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for AppIntentsProtobuf_Error(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB880, &unk_221BE4FA0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for AppIntentsProtobuf_ClientMessages.DisambiguationResponse.OneOf_Response(0);
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
    sub_2219A1CC8(v10, &unk_27CFBB880, &unk_221BE4FA0);
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
      sub_2219A1CC8(v18, &qword_27CFBBA10, &qword_221BE0A90);
      sub_221ADFDB4();
      sub_221ADFDB4();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
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
  sub_2219A1CC8(v25, &unk_27CFBB880, &unk_221BE4FA0);
  sub_221ADFDB4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_221A95008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for AppIntentsProtobuf_Value(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB880, &unk_221BE4FA0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for AppIntentsProtobuf_ClientMessages.DisambiguationResponse.OneOf_Response(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB660, &qword_221BE4610);
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
    sub_2219A1CC8(v10, &unk_27CFBB880, &unk_221BE4FA0);
  }

  else
  {
    sub_221ADFDB4();
    sub_221ADFDB4();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_2219A1CC8(v18, &unk_27CFBB660, &qword_221BE4610);
      sub_221ADFDB4();
      sub_221ADFDB4();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_221ADFE28();
    }
  }

  sub_221ADB35C(&unk_27CFBB6C0, type metadata accessor for AppIntentsProtobuf_Value, &unk_221BD8F70);
  v19 = v29;
  sub_221BCCAD8();
  if (v19)
  {
    v20 = v18;
    return sub_2219A1CC8(v20, &unk_27CFBB660, &qword_221BE4610);
  }

  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v15, 1, v5) == 1)
  {
    sub_2219A1CC8(v18, &unk_27CFBB660, &qword_221BE4610);
    v20 = v15;
    return sub_2219A1CC8(v20, &unk_27CFBB660, &qword_221BE4610);
  }

  sub_221ADFDB4();
  if (EnumTagSinglePayload != 1)
  {
    sub_221BCC9A8();
  }

  v22 = v27;
  sub_2219A1CC8(v18, &unk_27CFBB660, &qword_221BE4610);
  v23 = v25;
  sub_2219A1CC8(v25, &unk_27CFBB880, &unk_221BE4FA0);
  sub_221ADFDB4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

void sub_221A95500()
{
  OUTLINED_FUNCTION_151_2();
  OUTLINED_FUNCTION_109_2();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB880, &unk_221BE4FA0);
  OUTLINED_FUNCTION_8_1(v1);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_99_3();
  v3 = OUTLINED_FUNCTION_28_6();
  sub_221A95644(v3, v4, v5, v6);
  if (!v0)
  {
    OUTLINED_FUNCTION_92();
    sub_221A1C558();
    v7 = type metadata accessor for AppIntentsProtobuf_ClientMessages.DisambiguationResponse.OneOf_Response(0);
    OUTLINED_FUNCTION_31_8(v7);
    if (!v8)
    {
      OUTLINED_FUNCTION_120();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          OUTLINED_FUNCTION_251_1();
          OUTLINED_FUNCTION_28_6();
          sub_221A971D0();
          goto LABEL_4;
        }

        v14 = OUTLINED_FUNCTION_28_6();
        sub_221A95A34(v14, v15, v16, v17);
      }

      else
      {
        v10 = OUTLINED_FUNCTION_28_6();
        sub_221A95824(v10, v11, v12, v13);
      }

      OUTLINED_FUNCTION_78_0();
      sub_221ADFE28();
    }

LABEL_4:
    type metadata accessor for AppIntentsProtobuf_ClientMessages.DisambiguationResponse(0);
    OUTLINED_FUNCTION_219_2();
    OUTLINED_FUNCTION_112_4();
    sub_221BCC8B8();
  }

  OUTLINED_FUNCTION_350();
  OUTLINED_FUNCTION_152_2();
}

uint64_t sub_221A95644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9988, &qword_221BDAE20);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for AppIntentsProtobuf_ClientMessages.DisambiguationResponse(0);
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

uint64_t sub_221A95824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB880, &unk_221BE4FA0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for AppIntentsProtobuf_Error(0);
  MEMORY[0x28223BE20](v7);
  sub_221A1C558();
  v8 = type metadata accessor for AppIntentsProtobuf_ClientMessages.DisambiguationResponse.OneOf_Response(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_2219A1CC8(v6, &unk_27CFBB880, &unk_221BE4FA0);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
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

uint64_t sub_221A95A34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB880, &unk_221BE4FA0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for AppIntentsProtobuf_Value(0);
  MEMORY[0x28223BE20](v7);
  sub_221A1C558();
  v8 = type metadata accessor for AppIntentsProtobuf_ClientMessages.DisambiguationResponse.OneOf_Response(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_2219A1CC8(v6, &unk_27CFBB880, &unk_221BE4FA0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_221ADFDB4();
      sub_221ADB35C(&unk_27CFBB6C0, type metadata accessor for AppIntentsProtobuf_Value, &unk_221BD8F70);
      sub_221BCCC38();
      return sub_221ADFE28();
    }

    result = sub_221ADFE28();
  }

  __break(1u);
  return result;
}

void sub_221A95C48()
{
  OUTLINED_FUNCTION_21();
  v4 = OUTLINED_FUNCTION_212_1();
  v5 = type metadata accessor for AppIntentsProtobuf_ClientMessages.DisambiguationResponse.OneOf_Response(v4);
  v6 = OUTLINED_FUNCTION_67_4(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_17_12(v7, v38);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB880, &unk_221BE4FA0);
  OUTLINED_FUNCTION_8_1(v8);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_107_5(v10, v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA430, &qword_221BE0A98);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v11);
  v13 = OUTLINED_FUNCTION_41_4(v12, v40);
  type metadata accessor for AppIntentsProtobuf_UUID(v13);
  OUTLINED_FUNCTION_43_8();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_14_13();
  v15 = OUTLINED_FUNCTION_131_3();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(v15, v16);
  OUTLINED_FUNCTION_8_1(v17);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_74_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9990, &qword_221BDAE28);
  OUTLINED_FUNCTION_213_2();
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v19);
  v20 = OUTLINED_FUNCTION_96_5();
  v21 = type metadata accessor for AppIntentsProtobuf_ClientMessages.DisambiguationResponse(v20);
  OUTLINED_FUNCTION_105_4(v21);
  OUTLINED_FUNCTION_211_2();
  OUTLINED_FUNCTION_20_8(v3);
  if (v22)
  {
    OUTLINED_FUNCTION_20_8(v3 + v2);
    if (v22)
    {
      goto LABEL_5;
    }
  }

  else
  {
    OUTLINED_FUNCTION_353();
    OUTLINED_FUNCTION_20_8(v3 + v2);
    if (!v22)
    {
      OUTLINED_FUNCTION_3_22();
      OUTLINED_FUNCTION_368();
      OUTLINED_FUNCTION_180_1();
      if (!v25 || (OUTLINED_FUNCTION_179_1(), !v22))
      {
        OUTLINED_FUNCTION_2_30();
        sub_221ADFE28();
        goto LABEL_21;
      }

      OUTLINED_FUNCTION_335();
      OUTLINED_FUNCTION_0_41();
      v28 = sub_221ADB35C(v26, v27, MEMORY[0x277D216D0]);
      v29 = OUTLINED_FUNCTION_192_2(v28);
      OUTLINED_FUNCTION_2_30();
      sub_221ADFE28();
      if ((v29 & 1) == 0)
      {
LABEL_21:
        OUTLINED_FUNCTION_2_30();
        sub_221ADFE28();
        v23 = &qword_27CFB9988;
        v24 = &qword_221BDAE20;
        goto LABEL_22;
      }

      OUTLINED_FUNCTION_2_30();
      sub_221ADFE28();
LABEL_5:
      sub_2219A1CC8(v3, &qword_27CFB9988, &qword_221BDAE20);
      OUTLINED_FUNCTION_342();
      OUTLINED_FUNCTION_160_1();
      OUTLINED_FUNCTION_210_2();
      OUTLINED_FUNCTION_66_3(v1);
      if (v22)
      {
        OUTLINED_FUNCTION_39_8(v1 + v0);
        if (v22)
        {
          sub_2219A1CC8(v1, &unk_27CFBB880, &unk_221BE4FA0);
          goto LABEL_31;
        }
      }

      else
      {
        OUTLINED_FUNCTION_178_2();
        sub_221A1C558();
        OUTLINED_FUNCTION_39_8(v1 + v0);
        if (!v32)
        {
          OUTLINED_FUNCTION_222_2();
          OUTLINED_FUNCTION_63_3();
          sub_221A8819C();
          v34 = v33;
          sub_221ADFE28();
          OUTLINED_FUNCTION_39_4();
          sub_221ADFE28();
          sub_2219A1CC8(v1, &unk_27CFBB880, &unk_221BE4FA0);
          if ((v34 & 1) == 0)
          {
            goto LABEL_24;
          }

LABEL_31:
          OUTLINED_FUNCTION_293_0();
          OUTLINED_FUNCTION_0_41();
          v37 = sub_221ADB35C(v35, v36, MEMORY[0x277D216D0]);
          v31 = OUTLINED_FUNCTION_216_1(v37);
          goto LABEL_25;
        }

        OUTLINED_FUNCTION_78_0();
        sub_221ADFE28();
      }

      v23 = &qword_27CFBA430;
      v24 = &qword_221BE0A98;
      v30 = v1;
      goto LABEL_23;
    }

    OUTLINED_FUNCTION_2_30();
    sub_221ADFE28();
  }

  v23 = &qword_27CFB9990;
  v24 = &qword_221BDAE28;
LABEL_22:
  v30 = v3;
LABEL_23:
  sub_2219A1CC8(v30, v23, v24);
LABEL_24:
  v31 = 0;
LABEL_25:
  OUTLINED_FUNCTION_100_3(v31);
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221A960B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_221ADB35C(&qword_27CFBA428, type metadata accessor for AppIntentsProtobuf_ClientMessages.DisambiguationResponse, &unk_221BE03A0);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221A96154(uint64_t a1)
{
  v2 = sub_221ADB35C(&unk_27CFBB230, type metadata accessor for AppIntentsProtobuf_ClientMessages.DisambiguationResponse, &unk_221BE03D8);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221A9621C(uint64_t a1, uint64_t a2)
{
  sub_221ADB35C(&unk_27CFBB230, type metadata accessor for AppIntentsProtobuf_ClientMessages.DisambiguationResponse, &unk_221BE03D8);

  return sub_221BCCB48();
}

uint64_t sub_221A9629C()
{
  result = MEMORY[0x223DA31F0](0x526563696F68432ELL, 0xEF65736E6F707365);
  qword_27CFDDD00 = 0xD000000000000021;
  *algn_27CFDDD08 = 0x8000000221BEF7F0;
  return result;
}

uint64_t sub_221A96314()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDDD10);
  __swift_project_value_buffer(v0, qword_27CFDDD10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_221BD6DE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "executionIdentifier";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_221BCCC48();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "error";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "selectedIndex";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  return sub_221BCCC58();
}

void sub_221A9651C()
{
  OUTLINED_FUNCTION_15_10();
  while (1)
  {
    OUTLINED_FUNCTION_56_3();
    v1 = sub_221BCC998();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 3:
        OUTLINED_FUNCTION_249_1();
        OUTLINED_FUNCTION_5_17();
        OUTLINED_FUNCTION_377();
        sub_221A96B64();
        break;
      case 2:
        v7 = OUTLINED_FUNCTION_40_7();
        sub_221A9666C(v7, v8, v9, v10);
        break;
      case 1:
        v3 = OUTLINED_FUNCTION_5_17();
        sub_221A965B8(v3, v4, v5, v6);
        break;
    }
  }
}

uint64_t sub_221A965B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AppIntentsProtobuf_ClientMessages.ChoiceResponse(0);
  type metadata accessor for AppIntentsProtobuf_UUID(0);
  sub_221ADB35C(&unk_27CFBB750, type metadata accessor for AppIntentsProtobuf_UUID, &unk_221BD90D8);
  return sub_221BCCAD8();
}

uint64_t sub_221A9666C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for AppIntentsProtobuf_Error(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA448, &qword_221BE0AA8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for AppIntentsProtobuf_ClientMessages.ChoiceResponse.OneOf_Response(0);
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
    sub_2219A1CC8(v10, &qword_27CFBA448, &qword_221BE0AA8);
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
      sub_2219A1CC8(v18, &qword_27CFBBA10, &qword_221BE0A90);
      sub_221ADFDB4();
      sub_221ADFDB4();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
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
  sub_2219A1CC8(v25, &qword_27CFBA448, &qword_221BE0AA8);
  sub_221ADFDB4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

void sub_221A96B64()
{
  OUTLINED_FUNCTION_55_4();
  OUTLINED_FUNCTION_69_1();
  v5 = OUTLINED_FUNCTION_296_0(v0, v1, v2, v3, v4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_8_1(v7);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_102_3();
  OUTLINED_FUNCTION_344();
  sub_221BCCA28();
  OUTLINED_FUNCTION_53_5();
}

void sub_221A96CA8()
{
  OUTLINED_FUNCTION_151_2();
  OUTLINED_FUNCTION_109_2();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA448, &qword_221BE0AA8);
  OUTLINED_FUNCTION_8_1(v1);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_99_3();
  v3 = OUTLINED_FUNCTION_28_6();
  sub_221A96DDC(v3, v4, v5, v6);
  if (!v0)
  {
    OUTLINED_FUNCTION_92();
    sub_221A1C558();
    v7 = type metadata accessor for AppIntentsProtobuf_ClientMessages.ChoiceResponse.OneOf_Response(0);
    OUTLINED_FUNCTION_31_8(v7);
    if (!v8)
    {
      OUTLINED_FUNCTION_120();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 1)
      {
        OUTLINED_FUNCTION_249_1();
        OUTLINED_FUNCTION_28_6();
        sub_221A971D0();
      }

      else
      {
        v10 = OUTLINED_FUNCTION_28_6();
        sub_221A96FBC(v10, v11, v12, v13);
        OUTLINED_FUNCTION_77_5();
        sub_221ADFE28();
      }
    }

    type metadata accessor for AppIntentsProtobuf_ClientMessages.ChoiceResponse(0);
    OUTLINED_FUNCTION_219_2();
    OUTLINED_FUNCTION_112_4();
    sub_221BCC8B8();
  }

  OUTLINED_FUNCTION_350();
  OUTLINED_FUNCTION_152_2();
}

uint64_t sub_221A96DDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9988, &qword_221BDAE20);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for AppIntentsProtobuf_ClientMessages.ChoiceResponse(0);
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

uint64_t sub_221A96FBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA448, &qword_221BE0AA8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for AppIntentsProtobuf_Error(0);
  MEMORY[0x28223BE20](v7);
  sub_221A1C558();
  v8 = type metadata accessor for AppIntentsProtobuf_ClientMessages.ChoiceResponse.OneOf_Response(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_2219A1CC8(v6, &qword_27CFBA448, &qword_221BE0AA8);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
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

void sub_221A971D0()
{
  OUTLINED_FUNCTION_55_4();
  v9 = OUTLINED_FUNCTION_274_0(v1, v2, v3, v4, v5, v6, v7, v8);
  OUTLINED_FUNCTION_8_1(v9);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_116_5();
  OUTLINED_FUNCTION_129_4();
  sub_221A1C558();
  v11 = v0(0);
  v12 = OUTLINED_FUNCTION_276();
  if (__swift_getEnumTagSinglePayload(v12, v13, v11) == 1)
  {
    OUTLINED_FUNCTION_344();
    sub_2219A1CC8(v14, v15, v16);
  }

  else
  {
    OUTLINED_FUNCTION_64_0();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      OUTLINED_FUNCTION_339();
      sub_221BCCBB8();
      OUTLINED_FUNCTION_53_5();
      return;
    }

    sub_221ADFE28();
  }

  __break(1u);
}

void sub_221A97294()
{
  OUTLINED_FUNCTION_21();
  v4 = OUTLINED_FUNCTION_212_1();
  v5 = type metadata accessor for AppIntentsProtobuf_ClientMessages.ChoiceResponse.OneOf_Response(v4);
  v6 = OUTLINED_FUNCTION_67_4(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_17_12(v7, v38);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA448, &qword_221BE0AA8);
  OUTLINED_FUNCTION_8_1(v8);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_107_5(v10, v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA450, &qword_221BE0AB0);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v11);
  v13 = OUTLINED_FUNCTION_41_4(v12, v40);
  type metadata accessor for AppIntentsProtobuf_UUID(v13);
  OUTLINED_FUNCTION_43_8();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_14_13();
  v15 = OUTLINED_FUNCTION_131_3();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(v15, v16);
  OUTLINED_FUNCTION_8_1(v17);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_74_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9990, &qword_221BDAE28);
  OUTLINED_FUNCTION_213_2();
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v19);
  v20 = OUTLINED_FUNCTION_96_5();
  v21 = type metadata accessor for AppIntentsProtobuf_ClientMessages.ChoiceResponse(v20);
  OUTLINED_FUNCTION_105_4(v21);
  OUTLINED_FUNCTION_211_2();
  OUTLINED_FUNCTION_20_8(v3);
  if (v22)
  {
    OUTLINED_FUNCTION_20_8(v3 + v2);
    if (v22)
    {
      goto LABEL_5;
    }
  }

  else
  {
    OUTLINED_FUNCTION_353();
    OUTLINED_FUNCTION_20_8(v3 + v2);
    if (!v22)
    {
      OUTLINED_FUNCTION_3_22();
      OUTLINED_FUNCTION_368();
      OUTLINED_FUNCTION_180_1();
      if (!v25 || (OUTLINED_FUNCTION_179_1(), !v22))
      {
        OUTLINED_FUNCTION_2_30();
        sub_221ADFE28();
        goto LABEL_21;
      }

      OUTLINED_FUNCTION_335();
      OUTLINED_FUNCTION_0_41();
      v28 = sub_221ADB35C(v26, v27, MEMORY[0x277D216D0]);
      v29 = OUTLINED_FUNCTION_192_2(v28);
      OUTLINED_FUNCTION_2_30();
      sub_221ADFE28();
      if ((v29 & 1) == 0)
      {
LABEL_21:
        OUTLINED_FUNCTION_2_30();
        sub_221ADFE28();
        v23 = &qword_27CFB9988;
        v24 = &qword_221BDAE20;
        goto LABEL_22;
      }

      OUTLINED_FUNCTION_2_30();
      sub_221ADFE28();
LABEL_5:
      sub_2219A1CC8(v3, &qword_27CFB9988, &qword_221BDAE20);
      OUTLINED_FUNCTION_342();
      OUTLINED_FUNCTION_160_1();
      OUTLINED_FUNCTION_210_2();
      OUTLINED_FUNCTION_66_3(v1);
      if (v22)
      {
        OUTLINED_FUNCTION_39_8(v1 + v0);
        if (v22)
        {
          sub_2219A1CC8(v1, &qword_27CFBA448, &qword_221BE0AA8);
          goto LABEL_31;
        }
      }

      else
      {
        OUTLINED_FUNCTION_178_2();
        sub_221A1C558();
        OUTLINED_FUNCTION_39_8(v1 + v0);
        if (!v32)
        {
          OUTLINED_FUNCTION_222_2();
          OUTLINED_FUNCTION_63_3();
          sub_221A88564();
          v34 = v33;
          sub_221ADFE28();
          OUTLINED_FUNCTION_39_4();
          sub_221ADFE28();
          sub_2219A1CC8(v1, &qword_27CFBA448, &qword_221BE0AA8);
          if ((v34 & 1) == 0)
          {
            goto LABEL_24;
          }

LABEL_31:
          OUTLINED_FUNCTION_293_0();
          OUTLINED_FUNCTION_0_41();
          v37 = sub_221ADB35C(v35, v36, MEMORY[0x277D216D0]);
          v31 = OUTLINED_FUNCTION_216_1(v37);
          goto LABEL_25;
        }

        OUTLINED_FUNCTION_77_5();
        sub_221ADFE28();
      }

      v23 = &qword_27CFBA450;
      v24 = &qword_221BE0AB0;
      v30 = v1;
      goto LABEL_23;
    }

    OUTLINED_FUNCTION_2_30();
    sub_221ADFE28();
  }

  v23 = &qword_27CFB9990;
  v24 = &qword_221BDAE28;
LABEL_22:
  v30 = v3;
LABEL_23:
  sub_2219A1CC8(v30, v23, v24);
LABEL_24:
  v31 = 0;
LABEL_25:
  OUTLINED_FUNCTION_100_3(v31);
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221A97700(uint64_t a1, uint64_t a2)
{
  v4 = sub_221ADB35C(&qword_27CFBA440, type metadata accessor for AppIntentsProtobuf_ClientMessages.ChoiceResponse, &unk_221BE0238);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221A977A0(uint64_t a1)
{
  v2 = sub_221ADB35C(&unk_27CFBB200, type metadata accessor for AppIntentsProtobuf_ClientMessages.ChoiceResponse, &unk_221BE0270);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221A97868(uint64_t a1, uint64_t a2)
{
  sub_221ADB35C(&unk_27CFBB200, type metadata accessor for AppIntentsProtobuf_ClientMessages.ChoiceResponse, &unk_221BE0270);

  return sub_221BCCB48();
}

uint64_t sub_221A978E8()
{
  result = MEMORY[0x223DA31F0](0xD000000000000013, 0x8000000221BEFA30);
  qword_27CFDDD28 = 0xD000000000000021;
  unk_27CFDDD30 = 0x8000000221BEF7F0;
  return result;
}

uint64_t sub_221A9795C()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDDD38);
  __swift_project_value_buffer(v0, qword_27CFDDD38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_221BD6DE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "executionIdentifier";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_221BCCC48();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "error";
  *(v10 + 1) = 5;
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

uint64_t sub_221A97B60()
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
        v11 = OUTLINED_FUNCTION_40_7();
        sub_221A98188(v11, v12, v13, v14);
        break;
      case 2:
        v7 = OUTLINED_FUNCTION_40_7();
        sub_221A97C90(v7, v8, v9, v10);
        break;
      case 1:
        v3 = OUTLINED_FUNCTION_5_17();
        sub_221A97BDC(v3, v4, v5, v6);
        break;
    }
  }

  return result;
}

uint64_t sub_221A97BDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AppIntentsProtobuf_ClientMessages.NeedsValueResponse(0);
  type metadata accessor for AppIntentsProtobuf_UUID(0);
  sub_221ADB35C(&unk_27CFBB750, type metadata accessor for AppIntentsProtobuf_UUID, &unk_221BD90D8);
  return sub_221BCCAD8();
}

uint64_t sub_221A97C90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for AppIntentsProtobuf_Error(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA468, &qword_221BE0AC0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for AppIntentsProtobuf_ClientMessages.NeedsValueResponse.OneOf_Response(0);
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
    sub_2219A1CC8(v10, &qword_27CFBA468, &qword_221BE0AC0);
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
      sub_2219A1CC8(v18, &qword_27CFBBA10, &qword_221BE0A90);
      sub_221ADFDB4();
      sub_221ADFDB4();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
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
  sub_2219A1CC8(v25, &qword_27CFBA468, &qword_221BE0AC0);
  sub_221ADFDB4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_221A98188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for AppIntentsProtobuf_Value(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA468, &qword_221BE0AC0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for AppIntentsProtobuf_ClientMessages.NeedsValueResponse.OneOf_Response(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB660, &qword_221BE4610);
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
    sub_2219A1CC8(v10, &qword_27CFBA468, &qword_221BE0AC0);
  }

  else
  {
    sub_221ADFDB4();
    sub_221ADFDB4();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2219A1CC8(v18, &unk_27CFBB660, &qword_221BE4610);
      sub_221ADFDB4();
      sub_221ADFDB4();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_221ADFE28();
    }
  }

  sub_221ADB35C(&unk_27CFBB6C0, type metadata accessor for AppIntentsProtobuf_Value, &unk_221BD8F70);
  v19 = v29;
  sub_221BCCAD8();
  if (v19)
  {
    v20 = v18;
    return sub_2219A1CC8(v20, &unk_27CFBB660, &qword_221BE4610);
  }

  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v15, 1, v5) == 1)
  {
    sub_2219A1CC8(v18, &unk_27CFBB660, &qword_221BE4610);
    v20 = v15;
    return sub_2219A1CC8(v20, &unk_27CFBB660, &qword_221BE4610);
  }

  sub_221ADFDB4();
  if (EnumTagSinglePayload != 1)
  {
    sub_221BCC9A8();
  }

  v22 = v27;
  sub_2219A1CC8(v18, &unk_27CFBB660, &qword_221BE4610);
  v23 = v25;
  sub_2219A1CC8(v25, &qword_27CFBA468, &qword_221BE0AC0);
  sub_221ADFDB4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

void sub_221A98680()
{
  OUTLINED_FUNCTION_151_2();
  OUTLINED_FUNCTION_109_2();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA468, &qword_221BE0AC0);
  OUTLINED_FUNCTION_8_1(v1);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_99_3();
  v3 = OUTLINED_FUNCTION_28_6();
  sub_221A98780(v3, v4, v5, v6);
  if (!v0)
  {
    OUTLINED_FUNCTION_92();
    sub_221A1C558();
    v7 = type metadata accessor for AppIntentsProtobuf_ClientMessages.NeedsValueResponse.OneOf_Response(0);
    OUTLINED_FUNCTION_31_8(v7);
    if (!v8)
    {
      OUTLINED_FUNCTION_120();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v9 = OUTLINED_FUNCTION_28_6();
        sub_221A98B74(v9, v10, v11, v12);
      }

      else
      {
        v13 = OUTLINED_FUNCTION_28_6();
        sub_221A98960(v13, v14, v15, v16);
      }

      OUTLINED_FUNCTION_76_2();
      sub_221ADFE28();
    }

    type metadata accessor for AppIntentsProtobuf_ClientMessages.NeedsValueResponse(0);
    OUTLINED_FUNCTION_219_2();
    OUTLINED_FUNCTION_112_4();
    sub_221BCC8B8();
  }

  OUTLINED_FUNCTION_350();
  OUTLINED_FUNCTION_152_2();
}

uint64_t sub_221A98780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9988, &qword_221BDAE20);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for AppIntentsProtobuf_ClientMessages.NeedsValueResponse(0);
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

uint64_t sub_221A98960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA468, &qword_221BE0AC0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for AppIntentsProtobuf_Error(0);
  MEMORY[0x28223BE20](v7);
  sub_221A1C558();
  v8 = type metadata accessor for AppIntentsProtobuf_ClientMessages.NeedsValueResponse.OneOf_Response(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_2219A1CC8(v6, &qword_27CFBA468, &qword_221BE0AC0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
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

uint64_t sub_221A98B74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA468, &qword_221BE0AC0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for AppIntentsProtobuf_Value(0);
  MEMORY[0x28223BE20](v7);
  sub_221A1C558();
  v8 = type metadata accessor for AppIntentsProtobuf_ClientMessages.NeedsValueResponse.OneOf_Response(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_2219A1CC8(v6, &qword_27CFBA468, &qword_221BE0AC0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_221ADFDB4();
      sub_221ADB35C(&unk_27CFBB6C0, type metadata accessor for AppIntentsProtobuf_Value, &unk_221BD8F70);
      sub_221BCCC38();
      return sub_221ADFE28();
    }

    result = sub_221ADFE28();
  }

  __break(1u);
  return result;
}

void sub_221A98D88()
{
  OUTLINED_FUNCTION_21();
  v4 = OUTLINED_FUNCTION_212_1();
  v5 = type metadata accessor for AppIntentsProtobuf_ClientMessages.NeedsValueResponse.OneOf_Response(v4);
  v6 = OUTLINED_FUNCTION_67_4(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_17_12(v7, v38);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA468, &qword_221BE0AC0);
  OUTLINED_FUNCTION_8_1(v8);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_107_5(v10, v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA470, &qword_221BE0AC8);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v11);
  v13 = OUTLINED_FUNCTION_41_4(v12, v40);
  type metadata accessor for AppIntentsProtobuf_UUID(v13);
  OUTLINED_FUNCTION_43_8();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_14_13();
  v15 = OUTLINED_FUNCTION_131_3();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(v15, v16);
  OUTLINED_FUNCTION_8_1(v17);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_74_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9990, &qword_221BDAE28);
  OUTLINED_FUNCTION_213_2();
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v19);
  v20 = OUTLINED_FUNCTION_96_5();
  v21 = type metadata accessor for AppIntentsProtobuf_ClientMessages.NeedsValueResponse(v20);
  OUTLINED_FUNCTION_105_4(v21);
  OUTLINED_FUNCTION_211_2();
  OUTLINED_FUNCTION_20_8(v3);
  if (v22)
  {
    OUTLINED_FUNCTION_20_8(v3 + v2);
    if (v22)
    {
      goto LABEL_5;
    }
  }

  else
  {
    OUTLINED_FUNCTION_353();
    OUTLINED_FUNCTION_20_8(v3 + v2);
    if (!v22)
    {
      OUTLINED_FUNCTION_3_22();
      OUTLINED_FUNCTION_368();
      OUTLINED_FUNCTION_180_1();
      if (!v25 || (OUTLINED_FUNCTION_179_1(), !v22))
      {
        OUTLINED_FUNCTION_2_30();
        sub_221ADFE28();
        goto LABEL_21;
      }

      OUTLINED_FUNCTION_335();
      OUTLINED_FUNCTION_0_41();
      v28 = sub_221ADB35C(v26, v27, MEMORY[0x277D216D0]);
      v29 = OUTLINED_FUNCTION_192_2(v28);
      OUTLINED_FUNCTION_2_30();
      sub_221ADFE28();
      if ((v29 & 1) == 0)
      {
LABEL_21:
        OUTLINED_FUNCTION_2_30();
        sub_221ADFE28();
        v23 = &qword_27CFB9988;
        v24 = &qword_221BDAE20;
        goto LABEL_22;
      }

      OUTLINED_FUNCTION_2_30();
      sub_221ADFE28();
LABEL_5:
      sub_2219A1CC8(v3, &qword_27CFB9988, &qword_221BDAE20);
      OUTLINED_FUNCTION_342();
      OUTLINED_FUNCTION_160_1();
      OUTLINED_FUNCTION_210_2();
      OUTLINED_FUNCTION_66_3(v1);
      if (v22)
      {
        OUTLINED_FUNCTION_39_8(v1 + v0);
        if (v22)
        {
          sub_2219A1CC8(v1, &qword_27CFBA468, &qword_221BE0AC0);
          goto LABEL_31;
        }
      }

      else
      {
        OUTLINED_FUNCTION_178_2();
        sub_221A1C558();
        OUTLINED_FUNCTION_39_8(v1 + v0);
        if (!v32)
        {
          OUTLINED_FUNCTION_222_2();
          OUTLINED_FUNCTION_63_3();
          sub_221A88860();
          v34 = v33;
          sub_221ADFE28();
          OUTLINED_FUNCTION_39_4();
          sub_221ADFE28();
          sub_2219A1CC8(v1, &qword_27CFBA468, &qword_221BE0AC0);
          if ((v34 & 1) == 0)
          {
            goto LABEL_24;
          }

LABEL_31:
          OUTLINED_FUNCTION_293_0();
          OUTLINED_FUNCTION_0_41();
          v37 = sub_221ADB35C(v35, v36, MEMORY[0x277D216D0]);
          v31 = OUTLINED_FUNCTION_216_1(v37);
          goto LABEL_25;
        }

        OUTLINED_FUNCTION_76_2();
        sub_221ADFE28();
      }

      v23 = &qword_27CFBA470;
      v24 = &qword_221BE0AC8;
      v30 = v1;
      goto LABEL_23;
    }

    OUTLINED_FUNCTION_2_30();
    sub_221ADFE28();
  }

  v23 = &qword_27CFB9990;
  v24 = &qword_221BDAE28;
LABEL_22:
  v30 = v3;
LABEL_23:
  sub_2219A1CC8(v30, v23, v24);
LABEL_24:
  v31 = 0;
LABEL_25:
  OUTLINED_FUNCTION_100_3(v31);
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221A991F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_221ADB35C(&qword_27CFBA460, type metadata accessor for AppIntentsProtobuf_ClientMessages.NeedsValueResponse, &unk_221BE00D0);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221A99294(uint64_t a1)
{
  v2 = sub_221ADB35C(&unk_27CFBB1B0, type metadata accessor for AppIntentsProtobuf_ClientMessages.NeedsValueResponse, &unk_221BE0108);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221A9935C(uint64_t a1, uint64_t a2)
{
  sub_221ADB35C(&unk_27CFBB1B0, type metadata accessor for AppIntentsProtobuf_ClientMessages.NeedsValueResponse, &unk_221BE0108);

  return sub_221BCCB48();
}

uint64_t sub_221A993DC()
{
  result = MEMORY[0x223DA31F0](0xD000000000000015, 0x8000000221BEFA50);
  qword_27CFDDD50 = 0xD000000000000021;
  *algn_27CFDDD58 = 0x8000000221BEF7F0;
  return result;
}

uint64_t sub_221A99450()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDDD60);
  __swift_project_value_buffer(v0, qword_27CFDDD60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_221BD6DE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "executionIdentifier";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_221BCCC48();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "error";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "confirmed";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  return sub_221BCCC58();
}

uint64_t sub_221A996F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AppIntentsProtobuf_ClientMessages.ConfirmationResponse(0);
  type metadata accessor for AppIntentsProtobuf_UUID(0);
  sub_221ADB35C(&unk_27CFBB750, type metadata accessor for AppIntentsProtobuf_UUID, &unk_221BD90D8);
  return sub_221BCCAD8();
}

uint64_t sub_221A997A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for AppIntentsProtobuf_Error(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA488, &qword_221BE0AD8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for AppIntentsProtobuf_ClientMessages.ConfirmationResponse.OneOf_Response(0);
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
    sub_2219A1CC8(v10, &qword_27CFBA488, &qword_221BE0AD8);
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
      sub_2219A1CC8(v18, &qword_27CFBBA10, &qword_221BE0A90);
      sub_221ADFDB4();
      sub_221ADFDB4();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
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
  sub_2219A1CC8(v25, &qword_27CFBA488, &qword_221BE0AD8);
  sub_221ADFDB4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

void sub_221A99CA0()
{
  OUTLINED_FUNCTION_151_2();
  OUTLINED_FUNCTION_109_2();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA488, &qword_221BE0AD8);
  OUTLINED_FUNCTION_8_1(v1);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_99_3();
  v3 = OUTLINED_FUNCTION_28_6();
  sub_221A99DD4(v3, v4, v5, v6);
  if (!v0)
  {
    OUTLINED_FUNCTION_92();
    sub_221A1C558();
    v7 = type metadata accessor for AppIntentsProtobuf_ClientMessages.ConfirmationResponse.OneOf_Response(0);
    OUTLINED_FUNCTION_31_8(v7);
    if (!v8)
    {
      OUTLINED_FUNCTION_120();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 1)
      {
        OUTLINED_FUNCTION_245_1();
        OUTLINED_FUNCTION_28_6();
        sub_221A9B758();
      }

      else
      {
        v10 = OUTLINED_FUNCTION_28_6();
        sub_221A99FB4(v10, v11, v12, v13);
        OUTLINED_FUNCTION_45_8();
        sub_221ADFE28();
      }
    }

    type metadata accessor for AppIntentsProtobuf_ClientMessages.ConfirmationResponse(0);
    OUTLINED_FUNCTION_219_2();
    OUTLINED_FUNCTION_112_4();
    sub_221BCC8B8();
  }

  OUTLINED_FUNCTION_350();
  OUTLINED_FUNCTION_152_2();
}

uint64_t sub_221A99DD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9988, &qword_221BDAE20);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for AppIntentsProtobuf_ClientMessages.ConfirmationResponse(0);
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

uint64_t sub_221A99FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA488, &qword_221BE0AD8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for AppIntentsProtobuf_Error(0);
  MEMORY[0x28223BE20](v7);
  sub_221A1C558();
  v8 = type metadata accessor for AppIntentsProtobuf_ClientMessages.ConfirmationResponse.OneOf_Response(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_2219A1CC8(v6, &qword_27CFBA488, &qword_221BE0AD8);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
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

void sub_221A9A1C8()
{
  OUTLINED_FUNCTION_21();
  v4 = OUTLINED_FUNCTION_212_1();
  v5 = type metadata accessor for AppIntentsProtobuf_ClientMessages.ConfirmationResponse.OneOf_Response(v4);
  v6 = OUTLINED_FUNCTION_67_4(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_17_12(v7, v38);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA488, &qword_221BE0AD8);
  OUTLINED_FUNCTION_8_1(v8);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_107_5(v10, v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA490, &qword_221BE0AE0);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v11);
  v13 = OUTLINED_FUNCTION_41_4(v12, v40);
  type metadata accessor for AppIntentsProtobuf_UUID(v13);
  OUTLINED_FUNCTION_43_8();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_14_13();
  v15 = OUTLINED_FUNCTION_131_3();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(v15, v16);
  OUTLINED_FUNCTION_8_1(v17);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_74_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9990, &qword_221BDAE28);
  OUTLINED_FUNCTION_213_2();
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v19);
  v20 = OUTLINED_FUNCTION_96_5();
  v21 = type metadata accessor for AppIntentsProtobuf_ClientMessages.ConfirmationResponse(v20);
  OUTLINED_FUNCTION_105_4(v21);
  OUTLINED_FUNCTION_211_2();
  OUTLINED_FUNCTION_20_8(v3);
  if (v22)
  {
    OUTLINED_FUNCTION_20_8(v3 + v2);
    if (v22)
    {
      goto LABEL_5;
    }
  }

  else
  {
    OUTLINED_FUNCTION_353();
    OUTLINED_FUNCTION_20_8(v3 + v2);
    if (!v22)
    {
      OUTLINED_FUNCTION_3_22();
      OUTLINED_FUNCTION_368();
      OUTLINED_FUNCTION_180_1();
      if (!v25 || (OUTLINED_FUNCTION_179_1(), !v22))
      {
        OUTLINED_FUNCTION_2_30();
        sub_221ADFE28();
        goto LABEL_21;
      }

      OUTLINED_FUNCTION_335();
      OUTLINED_FUNCTION_0_41();
      v28 = sub_221ADB35C(v26, v27, MEMORY[0x277D216D0]);
      v29 = OUTLINED_FUNCTION_192_2(v28);
      OUTLINED_FUNCTION_2_30();
      sub_221ADFE28();
      if ((v29 & 1) == 0)
      {
LABEL_21:
        OUTLINED_FUNCTION_2_30();
        sub_221ADFE28();
        v23 = &qword_27CFB9988;
        v24 = &qword_221BDAE20;
        goto LABEL_22;
      }

      OUTLINED_FUNCTION_2_30();
      sub_221ADFE28();
LABEL_5:
      sub_2219A1CC8(v3, &qword_27CFB9988, &qword_221BDAE20);
      OUTLINED_FUNCTION_342();
      OUTLINED_FUNCTION_160_1();
      OUTLINED_FUNCTION_210_2();
      OUTLINED_FUNCTION_66_3(v1);
      if (v22)
      {
        OUTLINED_FUNCTION_39_8(v1 + v0);
        if (v22)
        {
          sub_2219A1CC8(v1, &qword_27CFBA488, &qword_221BE0AD8);
          goto LABEL_31;
        }
      }

      else
      {
        OUTLINED_FUNCTION_178_2();
        sub_221A1C558();
        OUTLINED_FUNCTION_39_8(v1 + v0);
        if (!v32)
        {
          OUTLINED_FUNCTION_222_2();
          OUTLINED_FUNCTION_63_3();
          sub_221A88BA8();
          v34 = v33;
          sub_221ADFE28();
          OUTLINED_FUNCTION_39_4();
          sub_221ADFE28();
          sub_2219A1CC8(v1, &qword_27CFBA488, &qword_221BE0AD8);
          if ((v34 & 1) == 0)
          {
            goto LABEL_24;
          }

LABEL_31:
          OUTLINED_FUNCTION_293_0();
          OUTLINED_FUNCTION_0_41();
          v37 = sub_221ADB35C(v35, v36, MEMORY[0x277D216D0]);
          v31 = OUTLINED_FUNCTION_216_1(v37);
          goto LABEL_25;
        }

        OUTLINED_FUNCTION_45_8();
        sub_221ADFE28();
      }

      v23 = &qword_27CFBA490;
      v24 = &qword_221BE0AE0;
      v30 = v1;
      goto LABEL_23;
    }

    OUTLINED_FUNCTION_2_30();
    sub_221ADFE28();
  }

  v23 = &qword_27CFB9990;
  v24 = &qword_221BDAE28;
LABEL_22:
  v30 = v3;
LABEL_23:
  sub_2219A1CC8(v30, v23, v24);
LABEL_24:
  v31 = 0;
LABEL_25:
  OUTLINED_FUNCTION_100_3(v31);
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221A9A634(uint64_t a1, uint64_t a2)
{
  v4 = sub_221ADB35C(&qword_27CFBA480, type metadata accessor for AppIntentsProtobuf_ClientMessages.ConfirmationResponse, &unk_221BDFF68);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221A9A6D4(uint64_t a1)
{
  v2 = sub_221ADB35C(&unk_27CFBB290, type metadata accessor for AppIntentsProtobuf_ClientMessages.ConfirmationResponse, &unk_221BDFFA0);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221A9A79C(uint64_t a1, uint64_t a2)
{
  sub_221ADB35C(&unk_27CFBB290, type metadata accessor for AppIntentsProtobuf_ClientMessages.ConfirmationResponse, &unk_221BDFFA0);

  return sub_221BCCB48();
}

uint64_t sub_221A9A81C()
{
  result = MEMORY[0x223DA31F0](0xD000000000000016, 0x8000000221BEFA70);
  qword_27CFDDD78 = 0xD000000000000021;
  unk_27CFDDD80 = 0x8000000221BEF7F0;
  return result;
}

uint64_t sub_221A9A890()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDDD88);
  __swift_project_value_buffer(v0, qword_27CFDDD88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_221BD6DE0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "executionIdentifier";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_221BCCC48();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "error";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "success";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  return sub_221BCCC58();
}

uint64_t sub_221A9AB34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AppIntentsProtobuf_ClientMessages.ContinueInAppResponse(0);
  type metadata accessor for AppIntentsProtobuf_UUID(0);
  sub_221ADB35C(&unk_27CFBB750, type metadata accessor for AppIntentsProtobuf_UUID, &unk_221BD90D8);
  return sub_221BCCAD8();
}

uint64_t sub_221A9ABE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for AppIntentsProtobuf_Error(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB890, &qword_221BE0AF0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for AppIntentsProtobuf_ClientMessages.ContinueInAppResponse.OneOf_Response(0);
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
    sub_2219A1CC8(v10, &unk_27CFBB890, &qword_221BE0AF0);
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
      sub_2219A1CC8(v18, &qword_27CFBBA10, &qword_221BE0A90);
      sub_221ADFDB4();
      sub_221ADFDB4();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
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
  sub_2219A1CC8(v25, &unk_27CFBB890, &qword_221BE0AF0);
  sub_221ADFDB4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

void sub_221A9B0E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_55_4();
  OUTLINED_FUNCTION_69_1();
  v29 = OUTLINED_FUNCTION_296_0(v24, v25, v26, v27, v28);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(v29, v30);
  OUTLINED_FUNCTION_8_1(v31);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_102_3();
  OUTLINED_FUNCTION_344();
  sub_221BCC9B8();
  OUTLINED_FUNCTION_53_5();
}

void sub_221A9B230()
{
  OUTLINED_FUNCTION_151_2();
  OUTLINED_FUNCTION_109_2();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB890, &qword_221BE0AF0);
  OUTLINED_FUNCTION_8_1(v1);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_99_3();
  v3 = OUTLINED_FUNCTION_28_6();
  sub_221A9B364(v3, v4, v5, v6);
  if (!v0)
  {
    OUTLINED_FUNCTION_92();
    sub_221A1C558();
    v7 = type metadata accessor for AppIntentsProtobuf_ClientMessages.ContinueInAppResponse.OneOf_Response(0);
    OUTLINED_FUNCTION_31_8(v7);
    if (!v8)
    {
      OUTLINED_FUNCTION_120();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 1)
      {
        OUTLINED_FUNCTION_244_1();
        OUTLINED_FUNCTION_28_6();
        sub_221A9B758();
      }

      else
      {
        v10 = OUTLINED_FUNCTION_28_6();
        sub_221A9B544(v10, v11, v12, v13);
        OUTLINED_FUNCTION_54_6();
        sub_221ADFE28();
      }
    }

    type metadata accessor for AppIntentsProtobuf_ClientMessages.ContinueInAppResponse(0);
    OUTLINED_FUNCTION_219_2();
    OUTLINED_FUNCTION_112_4();
    sub_221BCC8B8();
  }

  OUTLINED_FUNCTION_350();
  OUTLINED_FUNCTION_152_2();
}

uint64_t sub_221A9B364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9988, &qword_221BDAE20);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for AppIntentsProtobuf_ClientMessages.ContinueInAppResponse(0);
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

uint64_t sub_221A9B544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB890, &qword_221BE0AF0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for AppIntentsProtobuf_Error(0);
  MEMORY[0x28223BE20](v7);
  sub_221A1C558();
  v8 = type metadata accessor for AppIntentsProtobuf_ClientMessages.ContinueInAppResponse.OneOf_Response(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_2219A1CC8(v6, &unk_27CFBB890, &qword_221BE0AF0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
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

void sub_221A9B758()
{
  OUTLINED_FUNCTION_55_4();
  v9 = OUTLINED_FUNCTION_274_0(v1, v2, v3, v4, v5, v6, v7, v8);
  OUTLINED_FUNCTION_8_1(v9);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_116_5();
  OUTLINED_FUNCTION_129_4();
  sub_221A1C558();
  v11 = v0(0);
  v12 = OUTLINED_FUNCTION_276();
  if (__swift_getEnumTagSinglePayload(v12, v13, v11) == 1)
  {
    OUTLINED_FUNCTION_344();
    sub_2219A1CC8(v14, v15, v16);
  }

  else
  {
    OUTLINED_FUNCTION_64_0();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      OUTLINED_FUNCTION_339();
      sub_221BCCB88();
      OUTLINED_FUNCTION_53_5();
      return;
    }

    sub_221ADFE28();
  }

  __break(1u);
}

void sub_221A9B81C()
{
  OUTLINED_FUNCTION_21();
  v4 = OUTLINED_FUNCTION_212_1();
  v5 = type metadata accessor for AppIntentsProtobuf_ClientMessages.ContinueInAppResponse.OneOf_Response(v4);
  v6 = OUTLINED_FUNCTION_67_4(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_17_12(v7, v38);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB890, &qword_221BE0AF0);
  OUTLINED_FUNCTION_8_1(v8);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_107_5(v10, v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA4A8, &qword_221BE0AF8);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v11);
  v13 = OUTLINED_FUNCTION_41_4(v12, v40);
  type metadata accessor for AppIntentsProtobuf_UUID(v13);
  OUTLINED_FUNCTION_43_8();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_14_13();
  v15 = OUTLINED_FUNCTION_131_3();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(v15, v16);
  OUTLINED_FUNCTION_8_1(v17);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_74_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9990, &qword_221BDAE28);
  OUTLINED_FUNCTION_213_2();
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v19);
  v20 = OUTLINED_FUNCTION_96_5();
  v21 = type metadata accessor for AppIntentsProtobuf_ClientMessages.ContinueInAppResponse(v20);
  OUTLINED_FUNCTION_105_4(v21);
  OUTLINED_FUNCTION_211_2();
  OUTLINED_FUNCTION_20_8(v3);
  if (v22)
  {
    OUTLINED_FUNCTION_20_8(v3 + v2);
    if (v22)
    {
      goto LABEL_5;
    }
  }

  else
  {
    OUTLINED_FUNCTION_353();
    OUTLINED_FUNCTION_20_8(v3 + v2);
    if (!v22)
    {
      OUTLINED_FUNCTION_3_22();
      OUTLINED_FUNCTION_368();
      OUTLINED_FUNCTION_180_1();
      if (!v25 || (OUTLINED_FUNCTION_179_1(), !v22))
      {
        OUTLINED_FUNCTION_2_30();
        sub_221ADFE28();
        goto LABEL_21;
      }

      OUTLINED_FUNCTION_335();
      OUTLINED_FUNCTION_0_41();
      v28 = sub_221ADB35C(v26, v27, MEMORY[0x277D216D0]);
      v29 = OUTLINED_FUNCTION_192_2(v28);
      OUTLINED_FUNCTION_2_30();
      sub_221ADFE28();
      if ((v29 & 1) == 0)
      {
LABEL_21:
        OUTLINED_FUNCTION_2_30();
        sub_221ADFE28();
        v23 = &qword_27CFB9988;
        v24 = &qword_221BDAE20;
        goto LABEL_22;
      }

      OUTLINED_FUNCTION_2_30();
      sub_221ADFE28();
LABEL_5:
      sub_2219A1CC8(v3, &qword_27CFB9988, &qword_221BDAE20);
      OUTLINED_FUNCTION_342();
      OUTLINED_FUNCTION_160_1();
      OUTLINED_FUNCTION_210_2();
      OUTLINED_FUNCTION_66_3(v1);
      if (v22)
      {
        OUTLINED_FUNCTION_39_8(v1 + v0);
        if (v22)
        {
          sub_2219A1CC8(v1, &unk_27CFBB890, &qword_221BE0AF0);
          goto LABEL_31;
        }
      }

      else
      {
        OUTLINED_FUNCTION_178_2();
        sub_221A1C558();
        OUTLINED_FUNCTION_39_8(v1 + v0);
        if (!v32)
        {
          OUTLINED_FUNCTION_222_2();
          OUTLINED_FUNCTION_63_3();
          sub_221A88E1C();
          v34 = v33;
          sub_221ADFE28();
          OUTLINED_FUNCTION_39_4();
          sub_221ADFE28();
          sub_2219A1CC8(v1, &unk_27CFBB890, &qword_221BE0AF0);
          if ((v34 & 1) == 0)
          {
            goto LABEL_24;
          }

LABEL_31:
          OUTLINED_FUNCTION_293_0();
          OUTLINED_FUNCTION_0_41();
          v37 = sub_221ADB35C(v35, v36, MEMORY[0x277D216D0]);
          v31 = OUTLINED_FUNCTION_216_1(v37);
          goto LABEL_25;
        }

        OUTLINED_FUNCTION_54_6();
        sub_221ADFE28();
      }

      v23 = &qword_27CFBA4A8;
      v24 = &qword_221BE0AF8;
      v30 = v1;
      goto LABEL_23;
    }

    OUTLINED_FUNCTION_2_30();
    sub_221ADFE28();
  }

  v23 = &qword_27CFB9990;
  v24 = &qword_221BDAE28;
LABEL_22:
  v30 = v3;
LABEL_23:
  sub_2219A1CC8(v30, v23, v24);
LABEL_24:
  v31 = 0;
LABEL_25:
  OUTLINED_FUNCTION_100_3(v31);
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221A9BC88(uint64_t a1, uint64_t a2)
{
  v4 = sub_221ADB35C(&qword_27CFBA4A0, type metadata accessor for AppIntentsProtobuf_ClientMessages.ContinueInAppResponse, &unk_221BDFE00);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221A9BD28(uint64_t a1)
{
  v2 = sub_221ADB35C(&unk_27CFBB260, type metadata accessor for AppIntentsProtobuf_ClientMessages.ContinueInAppResponse, &unk_221BDFE38);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221A9BDF0(uint64_t a1, uint64_t a2)
{
  sub_221ADB35C(&unk_27CFBB260, type metadata accessor for AppIntentsProtobuf_ClientMessages.ContinueInAppResponse, &unk_221BDFE38);

  return sub_221BCCB48();
}

uint64_t sub_221A9BE70()
{
  result = MEMORY[0x223DA31F0](0xD000000000000017, 0x8000000221BEFA90);
  qword_27CFDDDA0 = 0xD000000000000021;
  *algn_27CFDDDA8 = 0x8000000221BEF7F0;
  return result;
}

uint64_t sub_221A9BEFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AppIntentsProtobuf_ClientMessages.UnknownRequestResponse(0);
  type metadata accessor for AppIntentsProtobuf_UUID(0);
  sub_221ADB35C(&unk_27CFBB750, type metadata accessor for AppIntentsProtobuf_UUID, &unk_221BD90D8);
  return sub_221BCCAD8();
}

uint64_t sub_221A9BFB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9988, &qword_221BDAE20);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for AppIntentsProtobuf_UUID(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for AppIntentsProtobuf_ClientMessages.UnknownRequestResponse(0);
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

uint64_t sub_221A9C250(uint64_t a1, uint64_t a2)
{
  v4 = sub_221ADB35C(&qword_27CFBA4B8, type metadata accessor for AppIntentsProtobuf_ClientMessages.UnknownRequestResponse, &unk_221BDFC98);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221A9C2F0(uint64_t a1)
{
  v2 = sub_221ADB35C(&qword_27CFBA2D0, type metadata accessor for AppIntentsProtobuf_ClientMessages.UnknownRequestResponse, &unk_221BDFCD0);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221A9C3B8(uint64_t a1, uint64_t a2)
{
  sub_221ADB35C(&qword_27CFBA2D0, type metadata accessor for AppIntentsProtobuf_ClientMessages.UnknownRequestResponse, &unk_221BDFCD0);

  return sub_221BCCB48();
}

uint64_t sub_221A9C464()
{
  result = MEMORY[0x223DA31F0](0xD000000000000014, 0x8000000221BEFAB0);
  qword_27CFDDDC8 = 0xD000000000000021;
  unk_27CFDDDD0 = 0x8000000221BEF7F0;
  return result;
}

uint64_t sub_221A9C4D8()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDDDD8);
  __swift_project_value_buffer(v0, qword_27CFDDDD8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_221BD8650;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "byIdentifiers";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_221BCCC48();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "byString";
  *(v10 + 8) = 8;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "byProperties";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "allEntities";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "suggestedEntities";
  *(v16 + 1) = 17;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "uniqueEntity";
  *(v18 + 1) = 12;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "byIntentValue";
  *(v20 + 1) = 13;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 10;
  *v22 = "options";
  *(v22 + 1) = 7;
  v22[16] = 2;
  v9();
  v23 = (v5 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 12;
  *v24 = "requestMetadata";
  *(v24 + 1) = 15;
  v24[16] = 2;
  v9();
  return sub_221BCCC58();
}

uint64_t sub_221A9C854()
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
        v3 = OUTLINED_FUNCTION_40_7();
        sub_221A9C944(v3, v4, v5, v6);
        break;
      case 2:
        v23 = OUTLINED_FUNCTION_40_7();
        sub_221A9CE3C(v23, v24, v25, v26);
        break;
      case 3:
        v11 = OUTLINED_FUNCTION_40_7();
        sub_221A9D334(v11, v12, v13, v14);
        break;
      case 4:
        v15 = OUTLINED_FUNCTION_40_7();
        sub_221A9D82C(v15, v16, v17, v18);
        break;
      case 5:
        v7 = OUTLINED_FUNCTION_40_7();
        sub_221A9DD24(v7, v8, v9, v10);
        break;
      case 6:
        v27 = OUTLINED_FUNCTION_40_7();
        sub_221A9E21C(v27, v28, v29, v30);
        break;
      case 7:
        v31 = OUTLINED_FUNCTION_40_7();
        sub_221A9E714(v31, v32, v33, v34);
        break;
      case 10:
        v19 = OUTLINED_FUNCTION_5_17();
        sub_221A9EC0C(v19, v20, v21, v22);
        break;
      case 12:
        v35 = OUTLINED_FUNCTION_5_17();
        sub_221A9ECC0(v35, v36, v37, v38);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_221A9C944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIdentifiers(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA4C8, &qword_221BE0B08);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.OneOf_Query(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA4D0, &qword_221BE0B18);
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
    sub_2219A1CC8(v10, &qword_27CFBA4C8, &qword_221BE0B08);
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
      sub_2219A1CC8(v18, &qword_27CFBA4D0, &qword_221BE0B18);
      sub_221ADFDB4();
      sub_221ADFDB4();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }
  }

  sub_221ADB35C(&unk_27CFBB930, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIdentifiers, &unk_221BDF898);
  v19 = v29;
  sub_221BCCAD8();
  if (v19)
  {
    v20 = v18;
    return sub_2219A1CC8(v20, &qword_27CFBA4D0, &qword_221BE0B18);
  }

  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v15, 1, v5) == 1)
  {
    sub_2219A1CC8(v18, &qword_27CFBA4D0, &qword_221BE0B18);
    v20 = v15;
    return sub_2219A1CC8(v20, &qword_27CFBA4D0, &qword_221BE0B18);
  }

  sub_221ADFDB4();
  if (EnumTagSinglePayload != 1)
  {
    sub_221BCC9A8();
  }

  v22 = v27;
  sub_2219A1CC8(v18, &qword_27CFBA4D0, &qword_221BE0B18);
  v23 = v25;
  sub_2219A1CC8(v25, &qword_27CFBA4C8, &qword_221BE0B08);
  sub_221ADFDB4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_221A9CE3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByString(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA4C8, &qword_221BE0B08);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.OneOf_Query(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA4D8, &qword_221BE0B20);
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
    sub_2219A1CC8(v10, &qword_27CFBA4C8, &qword_221BE0B08);
  }

  else
  {
    sub_221ADFDB4();
    sub_221ADFDB4();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2219A1CC8(v18, &qword_27CFBA4D8, &qword_221BE0B20);
      sub_221ADFDB4();
      sub_221ADFDB4();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_221ADFE28();
    }
  }

  sub_221ADB35C(&unk_27CFBB920, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByString, &unk_221BDEE98);
  v19 = v29;
  sub_221BCCAD8();
  if (v19)
  {
    v20 = v18;
    return sub_2219A1CC8(v20, &qword_27CFBA4D8, &qword_221BE0B20);
  }

  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v15, 1, v5) == 1)
  {
    sub_2219A1CC8(v18, &qword_27CFBA4D8, &qword_221BE0B20);
    v20 = v15;
    return sub_2219A1CC8(v20, &qword_27CFBA4D8, &qword_221BE0B20);
  }

  sub_221ADFDB4();
  if (EnumTagSinglePayload != 1)
  {
    sub_221BCC9A8();
  }

  v22 = v27;
  sub_2219A1CC8(v18, &qword_27CFBA4D8, &qword_221BE0B20);
  v23 = v25;
  sub_2219A1CC8(v25, &qword_27CFBA4C8, &qword_221BE0B08);
  sub_221ADFDB4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_221A9D334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA4C8, &qword_221BE0B08);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.OneOf_Query(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA4E0, &qword_221BE0B28);
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
    sub_2219A1CC8(v10, &qword_27CFBA4C8, &qword_221BE0B08);
  }

  else
  {
    sub_221ADFDB4();
    sub_221ADFDB4();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_2219A1CC8(v18, &qword_27CFBA4E0, &qword_221BE0B28);
      sub_221ADFDB4();
      sub_221ADFDB4();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_221ADFE28();
    }
  }

  sub_221ADB35C(&qword_27CFBA240, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties, &unk_221BDF5C8);
  v19 = v29;
  sub_221BCCAD8();
  if (v19)
  {
    v20 = v18;
    return sub_2219A1CC8(v20, &qword_27CFBA4E0, &qword_221BE0B28);
  }

  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v15, 1, v5) == 1)
  {
    sub_2219A1CC8(v18, &qword_27CFBA4E0, &qword_221BE0B28);
    v20 = v15;
    return sub_2219A1CC8(v20, &qword_27CFBA4E0, &qword_221BE0B28);
  }

  sub_221ADFDB4();
  if (EnumTagSinglePayload != 1)
  {
    sub_221BCC9A8();
  }

  v22 = v27;
  sub_2219A1CC8(v18, &qword_27CFBA4E0, &qword_221BE0B28);
  v23 = v25;
  sub_2219A1CC8(v25, &qword_27CFBA4C8, &qword_221BE0B08);
  sub_221ADFDB4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_221A9D82C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.AllEntities(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA4C8, &qword_221BE0B08);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.OneOf_Query(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA4E8, &qword_221BE0B30);
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
    sub_2219A1CC8(v10, &qword_27CFBA4C8, &qword_221BE0B08);
  }

  else
  {
    sub_221ADFDB4();
    sub_221ADFDB4();
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_2219A1CC8(v18, &qword_27CFBA4E8, &qword_221BE0B30);
      sub_221ADFDB4();
      sub_221ADFDB4();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_221ADFE28();
    }
  }

  sub_221ADB35C(&qword_27CFBA298, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.AllEntities, &unk_221BDFA00);
  v19 = v29;
  sub_221BCCAD8();
  if (v19)
  {
    v20 = v18;
    return sub_2219A1CC8(v20, &qword_27CFBA4E8, &qword_221BE0B30);
  }

  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v15, 1, v5) == 1)
  {
    sub_2219A1CC8(v18, &qword_27CFBA4E8, &qword_221BE0B30);
    v20 = v15;
    return sub_2219A1CC8(v20, &qword_27CFBA4E8, &qword_221BE0B30);
  }

  sub_221ADFDB4();
  if (EnumTagSinglePayload != 1)
  {
    sub_221BCC9A8();
  }

  v22 = v27;
  sub_2219A1CC8(v18, &qword_27CFBA4E8, &qword_221BE0B30);
  v23 = v25;
  sub_2219A1CC8(v25, &qword_27CFBA4C8, &qword_221BE0B08);
  sub_221ADFDB4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_221A9DD24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.SuggestedEntities(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA4C8, &qword_221BE0B08);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.OneOf_Query(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA4F0, &qword_221BE0B38);
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
    sub_2219A1CC8(v10, &qword_27CFBA4C8, &qword_221BE0B08);
  }

  else
  {
    sub_221ADFDB4();
    sub_221ADFDB4();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_2219A1CC8(v18, &qword_27CFBA4F0, &qword_221BE0B38);
      sub_221ADFDB4();
      sub_221ADFDB4();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_221ADFE28();
    }
  }

  sub_221ADB35C(&unk_27CFBB910, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.SuggestedEntities, &unk_221BDED30);
  v19 = v29;
  sub_221BCCAD8();
  if (v19)
  {
    v20 = v18;
    return sub_2219A1CC8(v20, &qword_27CFBA4F0, &qword_221BE0B38);
  }

  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v15, 1, v5) == 1)
  {
    sub_2219A1CC8(v18, &qword_27CFBA4F0, &qword_221BE0B38);
    v20 = v15;
    return sub_2219A1CC8(v20, &qword_27CFBA4F0, &qword_221BE0B38);
  }

  sub_221ADFDB4();
  if (EnumTagSinglePayload != 1)
  {
    sub_221BCC9A8();
  }

  v22 = v27;
  sub_2219A1CC8(v18, &qword_27CFBA4F0, &qword_221BE0B38);
  v23 = v25;
  sub_2219A1CC8(v25, &qword_27CFBA4C8, &qword_221BE0B08);
  sub_221ADFDB4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_221A9E21C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.UniqueEntity(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA4C8, &qword_221BE0B08);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.OneOf_Query(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA4F8, &qword_221BE0B40);
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
    sub_2219A1CC8(v10, &qword_27CFBA4C8, &qword_221BE0B08);
  }

  else
  {
    sub_221ADFDB4();
    sub_221ADFDB4();
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_2219A1CC8(v18, &qword_27CFBA4F8, &qword_221BE0B40);
      sub_221ADFDB4();
      sub_221ADFDB4();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_221ADFE28();
    }
  }

  sub_221ADB35C(&qword_27CFBA188, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.UniqueEntity, &unk_221BDEBC8);
  v19 = v29;
  sub_221BCCAD8();
  if (v19)
  {
    v20 = v18;
    return sub_2219A1CC8(v20, &qword_27CFBA4F8, &qword_221BE0B40);
  }

  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v15, 1, v5) == 1)
  {
    sub_2219A1CC8(v18, &qword_27CFBA4F8, &qword_221BE0B40);
    v20 = v15;
    return sub_2219A1CC8(v20, &qword_27CFBA4F8, &qword_221BE0B40);
  }

  sub_221ADFDB4();
  if (EnumTagSinglePayload != 1)
  {
    sub_221BCC9A8();
  }

  v22 = v27;
  sub_2219A1CC8(v18, &qword_27CFBA4F8, &qword_221BE0B40);
  v23 = v25;
  sub_2219A1CC8(v25, &qword_27CFBA4C8, &qword_221BE0B08);
  sub_221ADFDB4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_221A9E714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIntentValue(0);
  MEMORY[0x28223BE20](v5);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA4C8, &qword_221BE0B08);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.OneOf_Query(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA500, &qword_221BE0B48);
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
    sub_2219A1CC8(v10, &qword_27CFBA4C8, &qword_221BE0B08);
  }

  else
  {
    sub_221ADFDB4();
    sub_221ADFDB4();
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_2219A1CC8(v18, &qword_27CFBA500, &qword_221BE0B48);
      sub_221ADFDB4();
      sub_221ADFDB4();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_221ADFE28();
    }
  }

  sub_221ADB35C(&qword_27CFBA260, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIntentValue, &unk_221BDF730);
  v19 = v29;
  sub_221BCCAD8();
  if (v19)
  {
    v20 = v18;
    return sub_2219A1CC8(v20, &qword_27CFBA500, &qword_221BE0B48);
  }

  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v15, 1, v5) == 1)
  {
    sub_2219A1CC8(v18, &qword_27CFBA500, &qword_221BE0B48);
    v20 = v15;
    return sub_2219A1CC8(v20, &qword_27CFBA500, &qword_221BE0B48);
  }

  sub_221ADFDB4();
  if (EnumTagSinglePayload != 1)
  {
    sub_221BCC9A8();
  }

  v22 = v27;
  sub_2219A1CC8(v18, &qword_27CFBA500, &qword_221BE0B48);
  v23 = v25;
  sub_2219A1CC8(v25, &qword_27CFBA4C8, &qword_221BE0B08);
  sub_221ADFDB4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_221A9EC0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest(0);
  type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.Options(0);
  sub_221ADB35C(&qword_27CFBA168, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.Options, &unk_221BDEA60);
  return sub_221BCCAD8();
}

uint64_t sub_221A9ECC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest(0);
  type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(0);
  sub_221ADB35C(&unk_27CFBB0F0, type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata, &unk_221BDD980);
  return sub_221BCCAD8();
}

void sub_221A9ED74(uint64_t a1, uint64_t a2, uint64_t a3)
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
  v8 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.OneOf_Query(0);
  OUTLINED_FUNCTION_31_8(v8);
  if (v9)
  {
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_120();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v26 = OUTLINED_FUNCTION_15_11();
      sub_221A9F0D4(v26, v27, v28, v29);
      break;
    case 2u:
      v18 = OUTLINED_FUNCTION_15_11();
      sub_221A9F2E8(v18, v19, v20, v21);
      break;
    case 3u:
      v22 = OUTLINED_FUNCTION_15_11();
      sub_221A9F4FC(v22, v23, v24, v25);
      break;
    case 4u:
      v14 = OUTLINED_FUNCTION_15_11();
      sub_221A9F710(v14, v15, v16, v17);
      break;
    case 5u:
      v30 = OUTLINED_FUNCTION_15_11();
      sub_221A9F924(v30, v31, v32, v33);
      break;
    case 6u:
      v34 = OUTLINED_FUNCTION_15_11();
      sub_221A9FB38(v34, v35, v36, v37);
      break;
    default:
      v10 = OUTLINED_FUNCTION_15_11();
      sub_221A9EEC4(v10, v11, v12, v13);
      break;
  }

  OUTLINED_FUNCTION_128_2();
  sub_221ADFE28();
  if (!v3)
  {
LABEL_11:
    v38 = OUTLINED_FUNCTION_15_11();
    sub_221A9FD4C(v38, v39, v40, v41);
    if (!v3)
    {
      v42 = OUTLINED_FUNCTION_15_11();
      sub_221A9FF2C(v42, v43, v44, v45);
      type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest(0);
      OUTLINED_FUNCTION_94_4();
    }
  }

  OUTLINED_FUNCTION_207_2();
  OUTLINED_FUNCTION_355();
}

uint64_t sub_221A9EEC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA4C8, &qword_221BE0B08);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIdentifiers(0);
  MEMORY[0x28223BE20](v7);
  sub_221A1C558();
  v8 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.OneOf_Query(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_2219A1CC8(v6, &qword_27CFBA4C8, &qword_221BE0B08);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_221ADFDB4();
      sub_221ADB35C(&unk_27CFBB930, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIdentifiers, &unk_221BDF898);
      sub_221BCCC38();
      return sub_221ADFE28();
    }

    result = sub_221ADFE28();
  }

  __break(1u);
  return result;
}

uint64_t sub_221A9F0D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA4C8, &qword_221BE0B08);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByString(0);
  MEMORY[0x28223BE20](v7);
  sub_221A1C558();
  v8 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.OneOf_Query(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_2219A1CC8(v6, &qword_27CFBA4C8, &qword_221BE0B08);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_221ADFDB4();
      sub_221ADB35C(&unk_27CFBB920, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByString, &unk_221BDEE98);
      sub_221BCCC38();
      return sub_221ADFE28();
    }

    result = sub_221ADFE28();
  }

  __break(1u);
  return result;
}

uint64_t sub_221A9F2E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA4C8, &qword_221BE0B08);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties(0);
  MEMORY[0x28223BE20](v7);
  sub_221A1C558();
  v8 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.OneOf_Query(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_2219A1CC8(v6, &qword_27CFBA4C8, &qword_221BE0B08);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_221ADFDB4();
      sub_221ADB35C(&qword_27CFBA240, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties, &unk_221BDF5C8);
      sub_221BCCC38();
      return sub_221ADFE28();
    }

    result = sub_221ADFE28();
  }

  __break(1u);
  return result;
}

uint64_t sub_221A9F4FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA4C8, &qword_221BE0B08);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.AllEntities(0);
  MEMORY[0x28223BE20](v7);
  sub_221A1C558();
  v8 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.OneOf_Query(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_2219A1CC8(v6, &qword_27CFBA4C8, &qword_221BE0B08);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_221ADFDB4();
      sub_221ADB35C(&qword_27CFBA298, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.AllEntities, &unk_221BDFA00);
      sub_221BCCC38();
      return sub_221ADFE28();
    }

    result = sub_221ADFE28();
  }

  __break(1u);
  return result;
}

uint64_t sub_221A9F710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA4C8, &qword_221BE0B08);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.SuggestedEntities(0);
  MEMORY[0x28223BE20](v7);
  sub_221A1C558();
  v8 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.OneOf_Query(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_2219A1CC8(v6, &qword_27CFBA4C8, &qword_221BE0B08);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_221ADFDB4();
      sub_221ADB35C(&unk_27CFBB910, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.SuggestedEntities, &unk_221BDED30);
      sub_221BCCC38();
      return sub_221ADFE28();
    }

    result = sub_221ADFE28();
  }

  __break(1u);
  return result;
}

uint64_t sub_221A9F924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA4C8, &qword_221BE0B08);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.UniqueEntity(0);
  MEMORY[0x28223BE20](v7);
  sub_221A1C558();
  v8 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.OneOf_Query(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_2219A1CC8(v6, &qword_27CFBA4C8, &qword_221BE0B08);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_221ADFDB4();
      sub_221ADB35C(&qword_27CFBA188, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.UniqueEntity, &unk_221BDEBC8);
      sub_221BCCC38();
      return sub_221ADFE28();
    }

    result = sub_221ADFE28();
  }

  __break(1u);
  return result;
}

uint64_t sub_221A9FB38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA4C8, &qword_221BE0B08);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIntentValue(0);
  MEMORY[0x28223BE20](v7);
  sub_221A1C558();
  v8 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.OneOf_Query(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_2219A1CC8(v6, &qword_27CFBA4C8, &qword_221BE0B08);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_221ADFDB4();
      sub_221ADB35C(&qword_27CFBA260, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIntentValue, &unk_221BDF730);
      sub_221BCCC38();
      return sub_221ADFE28();
    }

    result = sub_221ADFE28();
  }

  __break(1u);
  return result;
}

uint64_t sub_221A9FD4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB8A0, &qword_221BE0B10);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.Options(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest(0);
  sub_221A1C558();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    return sub_2219A1CC8(v6, &unk_27CFBB8A0, &qword_221BE0B10);
  }

  sub_221ADFDB4();
  sub_221ADB35C(&qword_27CFBA168, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.Options, &unk_221BDEA60);
  sub_221BCCC38();
  return sub_221ADFE28();
}

uint64_t sub_221A9FF2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB600, &qword_221BE44B0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest(0);
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

void sub_221AA010C()
{
  OUTLINED_FUNCTION_21();
  v2 = OUTLINED_FUNCTION_40_3();
  v42 = type metadata accessor for AppIntentsProtobuf_ClientMessages.RequestMetadata(v2);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_30_8();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB600, &qword_221BE44B0);
  OUTLINED_FUNCTION_8_1(v4);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_104_2();
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA3F0, &qword_221BE0A60);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_89_5(v7, v39);
  v8 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.Options(0);
  v9 = OUTLINED_FUNCTION_67_4(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_30_8();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB8A0, &qword_221BE0B10);
  OUTLINED_FUNCTION_8_1(v10);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_107_5(v12, v40);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA508, &qword_221BE0B50);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_116_5();
  v14 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.OneOf_Query(0);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_4_0();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA4C8, &qword_221BE0B08);
  OUTLINED_FUNCTION_8_1(v16);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_157();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA510, &qword_221BE0B58);
  OUTLINED_FUNCTION_8_1(v18);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_97_3();
  v21 = *(v20 + 56);
  OUTLINED_FUNCTION_54_5();
  sub_221A1C558();
  sub_221A1C558();
  OUTLINED_FUNCTION_49_4(v0, 1, v14);
  if (v22)
  {
    OUTLINED_FUNCTION_49_4(v0 + v21, 1, v14);
    if (v22)
    {
      sub_2219A1CC8(v0, &qword_27CFBA4C8, &qword_221BE0B08);
      goto LABEL_11;
    }

LABEL_9:
    v23 = &qword_27CFBA510;
    v24 = &qword_221BE0B58;
    v25 = v0;
LABEL_30:
    sub_2219A1CC8(v25, v23, v24);
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_27();
  sub_221A1C558();
  OUTLINED_FUNCTION_49_4(v0 + v21, 1, v14);
  if (v22)
  {
    OUTLINED_FUNCTION_128_2();
    sub_221ADFE28();
    goto LABEL_9;
  }

  sub_221ADFDB4();
  OUTLINED_FUNCTION_39_4();
  sub_221A892F0();
  v27 = v26;
  sub_221ADFE28();
  sub_221ADFE28();
  sub_2219A1CC8(v0, &qword_27CFBA4C8, &qword_221BE0B08);
  if ((v27 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_11:
  type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest(0);
  v28 = *(v44 + 48);
  sub_221A1C558();
  sub_221A1C558();
  OUTLINED_FUNCTION_66_3(v1);
  if (v22)
  {
    OUTLINED_FUNCTION_39_8(v1 + v28);
    if (v22)
    {
      sub_2219A1CC8(v1, &unk_27CFBB8A0, &qword_221BE0B10);
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  sub_221A1C558();
  OUTLINED_FUNCTION_39_8(v1 + v28);
  if (v29)
  {
    OUTLINED_FUNCTION_195_2();
    sub_221ADFE28();
LABEL_19:
    v23 = &qword_27CFBA508;
    v24 = &qword_221BE0B50;
    v25 = v1;
    goto LABEL_30;
  }

  sub_221ADFDB4();
  OUTLINED_FUNCTION_324();
  v30 = sub_221AAEC84();
  sub_221ADFE28();
  OUTLINED_FUNCTION_323();
  sub_221ADFE28();
  sub_2219A1CC8(v1, &unk_27CFBB8A0, &qword_221BE0B10);
  if ((v30 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_21:
  v31 = *(v41 + 48);
  OUTLINED_FUNCTION_233_0();
  OUTLINED_FUNCTION_239_1();
  v32 = OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_81_5(v32, v33);
  if (v22)
  {
    OUTLINED_FUNCTION_39_8(v43 + v31);
    if (v22)
    {
      sub_2219A1CC8(v43, &unk_27CFBB600, &qword_221BE44B0);
LABEL_34:
      OUTLINED_FUNCTION_398();
      OUTLINED_FUNCTION_0_41();
      v38 = sub_221ADB35C(v36, v37, MEMORY[0x277D216D0]);
      v35 = OUTLINED_FUNCTION_313(v38);
      goto LABEL_32;
    }

    goto LABEL_29;
  }

  sub_221A1C558();
  OUTLINED_FUNCTION_39_8(v43 + v31);
  if (v34)
  {
    OUTLINED_FUNCTION_8_14();
    sub_221ADFE28();
LABEL_29:
    v23 = &qword_27CFBA3F0;
    v24 = &qword_221BE0A60;
    v25 = v43;
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_7_14();
  sub_221ADFDB4();
  OUTLINED_FUNCTION_24();
  sub_221AB95D0();
  OUTLINED_FUNCTION_12_8();
  sub_221ADFE28();
  OUTLINED_FUNCTION_300();
  sub_2219A1CC8(v43, &unk_27CFBB600, &qword_221BE44B0);
  if (v42)
  {
    goto LABEL_34;
  }

LABEL_31:
  v35 = 0;
LABEL_32:
  OUTLINED_FUNCTION_100_3(v35);
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221AA07A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_221ADB35C(&qword_27CFBA4C0, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest, &unk_221BDFB30);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221AA0840(uint64_t a1)
{
  v2 = sub_221ADB35C(&unk_27CFBB180, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest, &unk_221BDFB68);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221AA0908(uint64_t a1, uint64_t a2)
{
  sub_221ADB35C(&unk_27CFBB180, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest, &unk_221BDFB68);

  return sub_221BCCB48();
}

uint64_t sub_221AA0988()
{
  if (qword_27CFB6F00 != -1)
  {
    swift_once();
  }

  v1 = qword_27CFDDDC8;
  v2 = qword_27CFDDDD0;
  swift_bridgeObjectRetain_n();
  MEMORY[0x223DA31F0](0x69746E456C6C412ELL, 0xEC00000073656974);

  qword_27CFDDDF0 = v1;
  *algn_27CFDDDF8 = v2;
  return result;
}

uint64_t sub_221AA0A34()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDDE00);
  __swift_project_value_buffer(v0, qword_27CFDDE00);
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

uint64_t sub_221AA0C74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA570, &qword_221BE0BD8);
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
    v11 = (a2 + *(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.AllEntities(0) + 20));
    sub_221A1C558();
    v12 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.AllEntities.OneOf_Target(0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v8, 1, v12);
    sub_2219A1CC8(v8, &qword_27CFBA570, &qword_221BE0BD8);
    if (EnumTagSinglePayload != 1)
    {
      sub_221BCC9A8();
    }

    sub_2219A1CC8(v11, &qword_27CFBA570, &qword_221BE0BD8);
    *v11 = v16;
    v11[1] = v10;
    swift_storeEnumTagMultiPayload();
    return __swift_storeEnumTagSinglePayload(v11, 0, 1, v12);
  }

  return result;
}

uint64_t sub_221AA0E28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v33 = a2;
  v5 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget(0);
  MEMORY[0x28223BE20](v5);
  v29 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA570, &qword_221BE0BD8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v25 - v9;
  v11 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.AllEntities.OneOf_Target(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB8C0, &unk_221BE4FB0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v25 - v17;
  __swift_storeEnumTagSinglePayload(&v25 - v17, 1, 1, v5);
  v25 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.AllEntities(0) + 20);
  v26 = a1;
  sub_221A1C558();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v28 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_2219A1CC8(v10, &qword_27CFBA570, &qword_221BE0BD8);
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
  sub_2219A1CC8(v26 + v25, &qword_27CFBA570, &qword_221BE0BD8);
  sub_221ADFDB4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23 + v24, 0, 1, v22);
}

uint64_t sub_221AA132C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA570, &qword_221BE0BD8);
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
    v11 = (a2 + *(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.AllEntities(0) + 20));
    sub_221A1C558();
    v12 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.AllEntities.OneOf_Target(0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v8, 1, v12);
    sub_2219A1CC8(v8, &qword_27CFBA570, &qword_221BE0BD8);
    if (EnumTagSinglePayload != 1)
    {
      sub_221BCC9A8();
    }

    sub_2219A1CC8(v11, &qword_27CFBA570, &qword_221BE0BD8);
    *v11 = v16;
    v11[1] = v10;
    swift_storeEnumTagMultiPayload();
    return __swift_storeEnumTagSinglePayload(v11, 0, 1, v12);
  }

  return result;
}

void sub_221AA14E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_356();
  OUTLINED_FUNCTION_7_13();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA570, &qword_221BE0BD8);
  OUTLINED_FUNCTION_8_1(v4);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_156();
  v6 = OUTLINED_FUNCTION_42_8();
  if (!v7 || (OUTLINED_FUNCTION_103_5(v6), !v3))
  {
    type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.AllEntities(0);
    OUTLINED_FUNCTION_302();
    OUTLINED_FUNCTION_371();
    v8 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.AllEntities.OneOf_Target(0);
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
          sub_221AA1768(v11, v12, v13, v14);
          OUTLINED_FUNCTION_27_9();
          sub_221ADFE28();
          if (v3)
          {
            goto LABEL_13;
          }

          goto LABEL_5;
        }

        OUTLINED_FUNCTION_27_9();
        sub_221ADFE28();
        OUTLINED_FUNCTION_3_21();
        sub_221AA1988();
      }

      else
      {
        OUTLINED_FUNCTION_27_9();
        sub_221ADFE28();
        OUTLINED_FUNCTION_3_21();
        sub_221AA160C();
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

uint64_t sub_221AA160C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA570, &qword_221BE0BD8);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v5 - v1;
  type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.AllEntities(0);
  sub_221A1C558();
  v3 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.AllEntities.OneOf_Target(0);
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    result = sub_2219A1CC8(v2, &qword_27CFBA570, &qword_221BE0BD8);
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

uint64_t sub_221AA1768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA570, &qword_221BE0BD8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.AllEntities(0);
  sub_221A1C558();
  v8 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.AllEntities.OneOf_Target(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_2219A1CC8(v6, &qword_27CFBA570, &qword_221BE0BD8);
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

uint64_t sub_221AA1988()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA570, &qword_221BE0BD8);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v5 - v1;
  type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.AllEntities(0);
  sub_221A1C558();
  v3 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.AllEntities.OneOf_Target(0);
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    result = sub_2219A1CC8(v2, &qword_27CFBA570, &qword_221BE0BD8);
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

void sub_221AA1AE8()
{
  OUTLINED_FUNCTION_21();
  v2 = OUTLINED_FUNCTION_88_5();
  type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.AllEntities.OneOf_Target(v2);
  OUTLINED_FUNCTION_60_6();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_14_13();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA570, &qword_221BE0BD8);
  OUTLINED_FUNCTION_8_1(v4);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_97_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA578, &qword_221BE0BE0);
  OUTLINED_FUNCTION_57_6();
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_63_6();
  v9 = v9 && v7 == v8;
  if (!v9 && (sub_221BCE1B8() & 1) == 0)
  {
    goto LABEL_15;
  }

  v10 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.AllEntities(0);
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
      sub_2219A1CC8(v0, &qword_27CFBA570, &qword_221BE0BD8);
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
    OUTLINED_FUNCTION_27_9();
    sub_221ADFE28();
LABEL_14:
    sub_2219A1CC8(v0, &qword_27CFBA578, &qword_221BE0BE0);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_265_0();
  sub_221ADFDB4();
  OUTLINED_FUNCTION_118();
  sub_221A89A18();
  v14 = v13;
  sub_221ADFE28();
  OUTLINED_FUNCTION_285_0();
  sub_221ADFE28();
  sub_2219A1CC8(v0, &qword_27CFBA570, &qword_221BE0BD8);
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

uint64_t sub_221AA1DFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_221ADB35C(&qword_27CFBA5C8, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.AllEntities, &unk_221BDF9C8);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221AA1E9C(uint64_t a1)
{
  v2 = sub_221ADB35C(&qword_27CFBA298, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.AllEntities, &unk_221BDFA00);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221AA1F64(uint64_t a1, uint64_t a2)
{
  sub_221ADB35C(&qword_27CFBA298, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.AllEntities, &unk_221BDFA00);

  return sub_221BCCB48();
}

uint64_t sub_221AA1FE4()
{
  if (qword_27CFB6F00 != -1)
  {
    swift_once();
  }

  v1 = qword_27CFDDDC8;
  v2 = qword_27CFDDDD0;
  swift_bridgeObjectRetain_n();
  MEMORY[0x223DA31F0](0x746E65644979422ELL, 0xEE00737265696669);

  qword_27CFDDE18 = v1;
  unk_27CFDDE20 = v2;
  return result;
}

void sub_221AA20AC()
{
  OUTLINED_FUNCTION_15_10();
  while (1)
  {
    OUTLINED_FUNCTION_56_3();
    v1 = sub_221BCC998();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        OUTLINED_FUNCTION_54_5();
        sub_221BCCA98();
        break;
      case 2:
        v7 = OUTLINED_FUNCTION_5_17();
        sub_221AA215C(v7, v8, v9, v10);
        break;
      case 3:
      case 5:
        OUTLINED_FUNCTION_5_17();
        sub_221AA2700();
        break;
      case 4:
        v3 = OUTLINED_FUNCTION_40_7();
        sub_221AA21FC(v3, v4, v5, v6);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_221AA215C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AppIntentsProtobuf_EntityIdentifier(0);
  sub_221ADB35C(&qword_27CFB9800, type metadata accessor for AppIntentsProtobuf_EntityIdentifier, &unk_221BD9EE8);
  return sub_221BCCAC8();
}

uint64_t sub_221AA21FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v33 = a2;
  v5 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget(0);
  MEMORY[0x28223BE20](v5);
  v29 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB8D0, &unk_221BE4FC0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v25 - v9;
  v11 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIdentifiers.OneOf_Target(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB8C0, &unk_221BE4FB0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v25 - v17;
  __swift_storeEnumTagSinglePayload(&v25 - v17, 1, 1, v5);
  v25 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIdentifiers(0) + 24);
  v26 = a1;
  sub_221A1C558();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v28 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_2219A1CC8(v10, &unk_27CFBB8D0, &unk_221BE4FC0);
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
  sub_2219A1CC8(v26 + v25, &unk_27CFBB8D0, &unk_221BE4FC0);
  sub_221ADFDB4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23 + v24, 0, 1, v22);
}

void sub_221AA2700()
{
  OUTLINED_FUNCTION_55_4();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB8D0, &unk_221BE4FC0);
  OUTLINED_FUNCTION_8_1(v1);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_102_3();
  sub_221BCCA88();
  if (v0)
  {
  }

  OUTLINED_FUNCTION_53_5();
}

void sub_221AA2890(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_356();
  OUTLINED_FUNCTION_7_13();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB8D0, &unk_221BE4FC0);
  OUTLINED_FUNCTION_8_1(v5);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_156();
  v7 = OUTLINED_FUNCTION_42_8();
  if (!v8 || (OUTLINED_FUNCTION_103_5(v7), !v3))
  {
    if (!*(*(v4 + 16) + 16) || (type metadata accessor for AppIntentsProtobuf_EntityIdentifier(0), sub_221ADB35C(&qword_27CFB9800, type metadata accessor for AppIntentsProtobuf_EntityIdentifier, &unk_221BD9EE8), OUTLINED_FUNCTION_91_4(), OUTLINED_FUNCTION_49_6(), sub_221BCCC18(), !v3))
    {
      type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIdentifiers(0);
      OUTLINED_FUNCTION_371();
      v9 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIdentifiers.OneOf_Target(0);
      OUTLINED_FUNCTION_140_2(v9);
      if (!v10)
      {
        OUTLINED_FUNCTION_3_4();
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload)
        {
          if (EnumCaseMultiPayload == 1)
          {
            v12 = OUTLINED_FUNCTION_3_21();
            sub_221AA2B84(v12, v13, v14, v15);
            OUTLINED_FUNCTION_26_8();
            sub_221ADFE28();
            if (v3)
            {
              goto LABEL_15;
            }

            goto LABEL_7;
          }

          OUTLINED_FUNCTION_26_8();
          sub_221ADFE28();
          OUTLINED_FUNCTION_3_21();
          sub_221AA2DA4();
        }

        else
        {
          OUTLINED_FUNCTION_26_8();
          sub_221ADFE28();
          OUTLINED_FUNCTION_3_21();
          sub_221AA2A28();
        }

        if (v3)
        {
          goto LABEL_15;
        }
      }

LABEL_7:
      OUTLINED_FUNCTION_30_7();
    }
  }

LABEL_15:
  OUTLINED_FUNCTION_207_2();
  OUTLINED_FUNCTION_355();
}

uint64_t sub_221AA2A28()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB8D0, &unk_221BE4FC0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v5 - v1;
  type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIdentifiers(0);
  sub_221A1C558();
  v3 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIdentifiers.OneOf_Target(0);
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    result = sub_2219A1CC8(v2, &unk_27CFBB8D0, &unk_221BE4FC0);
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

uint64_t sub_221AA2B84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB8D0, &unk_221BE4FC0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIdentifiers(0);
  sub_221A1C558();
  v8 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIdentifiers.OneOf_Target(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_2219A1CC8(v6, &unk_27CFBB8D0, &unk_221BE4FC0);
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

uint64_t sub_221AA2DA4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB8D0, &unk_221BE4FC0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v5 - v1;
  type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIdentifiers(0);
  sub_221A1C558();
  v3 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIdentifiers.OneOf_Target(0);
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    result = sub_2219A1CC8(v2, &unk_27CFBB8D0, &unk_221BE4FC0);
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

void sub_221AA2F04()
{
  OUTLINED_FUNCTION_21();
  v2 = OUTLINED_FUNCTION_88_5();
  type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIdentifiers.OneOf_Target(v2);
  OUTLINED_FUNCTION_60_6();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_14_13();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB8D0, &unk_221BE4FC0);
  OUTLINED_FUNCTION_8_1(v4);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_97_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA520, &qword_221BE0B70);
  OUTLINED_FUNCTION_57_6();
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_63_6();
  v9 = v9 && v7 == v8;
  if (!v9 && (sub_221BCE1B8() & 1) == 0)
  {
    goto LABEL_16;
  }

  sub_221A17320();
  if ((v10 & 1) == 0)
  {
    goto LABEL_16;
  }

  v11 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIdentifiers(0);
  OUTLINED_FUNCTION_329(v11);
  OUTLINED_FUNCTION_173_2();
  sub_221A1C558();
  OUTLINED_FUNCTION_156_0();
  OUTLINED_FUNCTION_53_7(v0);
  if (v9)
  {
    OUTLINED_FUNCTION_53_7(v0 + v1);
    if (v9)
    {
      sub_2219A1CC8(v0, &unk_27CFBB8D0, &unk_221BE4FC0);
LABEL_19:
      sub_221BCC8D8();
      OUTLINED_FUNCTION_0_41();
      v18 = sub_221ADB35C(v16, v17, MEMORY[0x277D216D0]);
      v13 = OUTLINED_FUNCTION_36_8(v18);
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  OUTLINED_FUNCTION_1();
  sub_221A1C558();
  OUTLINED_FUNCTION_53_7(v0 + v1);
  if (v12)
  {
    OUTLINED_FUNCTION_26_8();
    sub_221ADFE28();
LABEL_15:
    sub_2219A1CC8(v0, &qword_27CFBA520, &qword_221BE0B70);
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_265_0();
  sub_221ADFDB4();
  OUTLINED_FUNCTION_118();
  sub_221A89CD0();
  v15 = v14;
  sub_221ADFE28();
  OUTLINED_FUNCTION_285_0();
  sub_221ADFE28();
  sub_2219A1CC8(v0, &unk_27CFBB8D0, &unk_221BE4FC0);
  if (v15)
  {
    goto LABEL_19;
  }

LABEL_16:
  v13 = 0;
LABEL_17:
  OUTLINED_FUNCTION_100_3(v13);
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221AA31BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_221ADB35C(&qword_27CFBA5D0, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIdentifiers, &unk_221BDF860);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221AA325C(uint64_t a1)
{
  v2 = sub_221ADB35C(&unk_27CFBB930, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIdentifiers, &unk_221BDF898);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221AA3324(uint64_t a1, uint64_t a2)
{
  sub_221ADB35C(&unk_27CFBB930, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIdentifiers, &unk_221BDF898);

  return sub_221BCCB48();
}

uint64_t sub_221AA33A4()
{
  if (qword_27CFB6F00 != -1)
  {
    swift_once();
  }

  v1 = qword_27CFDDDC8;
  v2 = qword_27CFDDDD0;
  swift_bridgeObjectRetain_n();
  MEMORY[0x223DA31F0](0x6E65746E4979422ELL, 0xEE0065756C615674);

  qword_27CFDDE40 = v1;
  *algn_27CFDDE48 = v2;
  return result;
}

uint64_t sub_221AA346C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_221BCCC78();
  __swift_allocate_value_buffer(v5, a2);
  v6 = OUTLINED_FUNCTION_70();
  __swift_project_value_buffer(v6, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v8 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v9 = *(*v8 + 72);
  v10 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_221BD8680;
  v12 = v11 + v10;
  v13 = v11 + v10 + v8[14];
  *(v11 + v10) = 1;
  *v13 = "bundleIdentifier";
  *(v13 + 8) = 16;
  *(v13 + 16) = 2;
  v14 = *MEMORY[0x277D21870];
  v15 = sub_221BCCC48();
  OUTLINED_FUNCTION_2_1();
  v17 = *(v16 + 104);
  v17(v13, v14, v15);
  v18 = OUTLINED_FUNCTION_384(v12 + v9);
  *v19 = 2;
  *v18 = a3;
  v18[1] = a4;
  v20 = OUTLINED_FUNCTION_332(v18);
  (v17)(v20);
  v21 = OUTLINED_FUNCTION_384(v12 + 2 * v9);
  *v22 = 3;
  *v21 = "entityType";
  v21[1] = 10;
  v23 = OUTLINED_FUNCTION_332(v21);
  (v17)(v23);
  v24 = OUTLINED_FUNCTION_384(v12 + 3 * v9);
  *v25 = 4;
  *v24 = "parameter";
  v24[1] = 9;
  v26 = OUTLINED_FUNCTION_332(v24);
  (v17)(v26);
  v27 = OUTLINED_FUNCTION_384(v12 + 4 * v9);
  *v28 = 5;
  *v27 = "queryType";
  *(v27 + 8) = 9;
  *(v27 + 16) = 2;
  (v17)();
  return sub_221BCCC58();
}

uint64_t sub_221AA36B0()
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
        v15 = OUTLINED_FUNCTION_5_17();
        sub_221AA3760(v15, v16, v17, v18);
        break;
      case 3:
        v7 = OUTLINED_FUNCTION_5_17();
        sub_221AA3814(v7, v8, v9, v10);
        break;
      case 4:
        v11 = OUTLINED_FUNCTION_40_7();
        sub_221AA39C8(v11, v12, v13, v14);
        break;
      case 5:
        v3 = OUTLINED_FUNCTION_5_17();
        sub_221AA3ECC(v3, v4, v5, v6);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_221AA3760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIntentValue(0);
  type metadata accessor for AppIntentsProtobuf_Value(0);
  sub_221ADB35C(&unk_27CFBB6C0, type metadata accessor for AppIntentsProtobuf_Value, &unk_221BD8F70);
  return sub_221BCCAD8();
}

uint64_t sub_221AA3814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA5B0, &qword_221BE0C20);
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
    v11 = (a2 + *(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIntentValue(0) + 20));
    sub_221A1C558();
    v12 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIntentValue.OneOf_Target(0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v8, 1, v12);
    sub_2219A1CC8(v8, &qword_27CFBA5B0, &qword_221BE0C20);
    if (EnumTagSinglePayload != 1)
    {
      sub_221BCC9A8();
    }

    sub_2219A1CC8(v11, &qword_27CFBA5B0, &qword_221BE0C20);
    *v11 = v16;
    v11[1] = v10;
    swift_storeEnumTagMultiPayload();
    return __swift_storeEnumTagSinglePayload(v11, 0, 1, v12);
  }

  return result;
}

uint64_t sub_221AA39C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v33 = a2;
  v5 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget(0);
  MEMORY[0x28223BE20](v5);
  v29 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA5B0, &qword_221BE0C20);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v25 - v9;
  v11 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIntentValue.OneOf_Target(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB8C0, &unk_221BE4FB0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v25 - v17;
  __swift_storeEnumTagSinglePayload(&v25 - v17, 1, 1, v5);
  v25 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIntentValue(0) + 20);
  v26 = a1;
  sub_221A1C558();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v28 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_2219A1CC8(v10, &qword_27CFBA5B0, &qword_221BE0C20);
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
  sub_2219A1CC8(v26 + v25, &qword_27CFBA5B0, &qword_221BE0C20);
  sub_221ADFDB4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23 + v24, 0, 1, v22);
}

uint64_t sub_221AA3ECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA5B0, &qword_221BE0C20);
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
    v11 = (a2 + *(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIntentValue(0) + 20));
    sub_221A1C558();
    v12 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIntentValue.OneOf_Target(0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v8, 1, v12);
    sub_2219A1CC8(v8, &qword_27CFBA5B0, &qword_221BE0C20);
    if (EnumTagSinglePayload != 1)
    {
      sub_221BCC9A8();
    }

    sub_2219A1CC8(v11, &qword_27CFBA5B0, &qword_221BE0C20);
    *v11 = v16;
    v11[1] = v10;
    swift_storeEnumTagMultiPayload();
    return __swift_storeEnumTagSinglePayload(v11, 0, 1, v12);
  }

  return result;
}

void sub_221AA4080(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_356();
  OUTLINED_FUNCTION_7_13();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA5B0, &qword_221BE0C20);
  OUTLINED_FUNCTION_8_1(v4);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_156();
  v6 = OUTLINED_FUNCTION_42_8();
  if (!v7 || (OUTLINED_FUNCTION_103_5(v6), !v3))
  {
    v8 = OUTLINED_FUNCTION_3_21();
    sub_221AA41BC(v8, v9, v10, v11);
    if (!v3)
    {
      type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIntentValue(0);
      OUTLINED_FUNCTION_302();
      OUTLINED_FUNCTION_371();
      v12 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIntentValue.OneOf_Target(0);
      OUTLINED_FUNCTION_140_2(v12);
      if (!v13)
      {
        OUTLINED_FUNCTION_3_4();
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload)
        {
          if (EnumCaseMultiPayload == 1)
          {
            v15 = OUTLINED_FUNCTION_3_21();
            sub_221AA44F8(v15, v16, v17, v18);
            OUTLINED_FUNCTION_25_9();
            sub_221ADFE28();
          }

          else
          {
            OUTLINED_FUNCTION_25_9();
            sub_221ADFE28();
            OUTLINED_FUNCTION_3_21();
            sub_221AA4718();
          }
        }

        else
        {
          OUTLINED_FUNCTION_25_9();
          sub_221ADFE28();
          OUTLINED_FUNCTION_3_21();
          sub_221AA439C();
        }
      }

      OUTLINED_FUNCTION_30_7();
    }
  }

  OUTLINED_FUNCTION_207_2();
  OUTLINED_FUNCTION_355();
}

uint64_t sub_221AA41BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB660, &qword_221BE4610);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v9 - v5;
  v7 = type metadata accessor for AppIntentsProtobuf_Value(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIntentValue(0);
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

uint64_t sub_221AA439C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA5B0, &qword_221BE0C20);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v5 - v1;
  type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIntentValue(0);
  sub_221A1C558();
  v3 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIntentValue.OneOf_Target(0);
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    result = sub_2219A1CC8(v2, &qword_27CFBA5B0, &qword_221BE0C20);
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

uint64_t sub_221AA44F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA5B0, &qword_221BE0C20);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget(0);
  MEMORY[0x28223BE20](v7);
  type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIntentValue(0);
  sub_221A1C558();
  v8 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIntentValue.OneOf_Target(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_2219A1CC8(v6, &qword_27CFBA5B0, &qword_221BE0C20);
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

uint64_t sub_221AA4718()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA5B0, &qword_221BE0C20);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v5 - v1;
  type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIntentValue(0);
  sub_221A1C558();
  v3 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIntentValue.OneOf_Target(0);
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    result = sub_2219A1CC8(v2, &qword_27CFBA5B0, &qword_221BE0C20);
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

void sub_221AA4878()
{
  OUTLINED_FUNCTION_21();
  v4 = OUTLINED_FUNCTION_52_6();
  v5 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIntentValue.OneOf_Target(v4);
  v6 = OUTLINED_FUNCTION_58_7(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_32_8();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA5B0, &qword_221BE0C20);
  OUTLINED_FUNCTION_8_1(v7);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_116_5();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA5B8, &qword_221BE0C28);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_99_3();
  type metadata accessor for AppIntentsProtobuf_Value(0);
  OUTLINED_FUNCTION_43_8();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_4_0();
  v13 = (v12 - v11);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB660, &qword_221BE4610);
  OUTLINED_FUNCTION_8_1(v14);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_157();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB85E0, &unk_221BD3E40);
  OUTLINED_FUNCTION_57_6();
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_102_3();
  OUTLINED_FUNCTION_102_2();
  v19 = v19 && v17 == v18;
  if (!v19 && (sub_221BCE1B8() & 1) == 0)
  {
    goto LABEL_22;
  }

  type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIntentValue(0);
  v20 = *(v2 + 48);
  sub_221A1C558();
  sub_221A1C558();
  OUTLINED_FUNCTION_20_8(v3);
  if (!v19)
  {
    sub_221A1C558();
    OUTLINED_FUNCTION_20_8(v3 + v20);
    if (!v24)
    {
      OUTLINED_FUNCTION_10_14();
      sub_221ADFDB4();
      if (MEMORY[0x223DA21A0](*v0, v0[1], *v13, v13[1]))
      {
        v29 = OUTLINED_FUNCTION_396();
        OUTLINED_FUNCTION_0_41();
        sub_221ADB35C(v30, v31, MEMORY[0x277D216D0]);
        sub_221BCD338();
        OUTLINED_FUNCTION_20_9();
        sub_221ADFE28();
        sub_221ADFE28();
        sub_2219A1CC8(v3, &unk_27CFBB660, &qword_221BE4610);
        if ((v29 & 1) == 0)
        {
          goto LABEL_22;
        }

        goto LABEL_11;
      }

      OUTLINED_FUNCTION_79_1();
      sub_221ADFE28();
      OUTLINED_FUNCTION_298();
      sub_221ADFE28();
      v25 = &unk_27CFBB660;
      v26 = &qword_221BE4610;
LABEL_20:
      v27 = v3;
      goto LABEL_21;
    }

    OUTLINED_FUNCTION_4_19();
    sub_221ADFE28();
LABEL_19:
    v25 = &qword_27CFB85E0;
    v26 = &unk_221BD3E40;
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_20_8(v3 + v20);
  if (!v19)
  {
    goto LABEL_19;
  }

  sub_2219A1CC8(v3, &unk_27CFBB660, &qword_221BE4610);
LABEL_11:
  v21 = *(v38 + 48);
  OUTLINED_FUNCTION_391();
  OUTLINED_FUNCTION_393();
  v22 = OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_49_4(v22, v23, v39);
  if (v19)
  {
    OUTLINED_FUNCTION_20_8(v1 + v21);
    if (v19)
    {
      sub_2219A1CC8(v1, &qword_27CFBA5B0, &qword_221BE0C20);
      goto LABEL_33;
    }
  }

  else
  {
    sub_221A1C558();
    OUTLINED_FUNCTION_20_8(v1 + v21);
    if (!v32)
    {
      OUTLINED_FUNCTION_381();
      sub_221ADFDB4();
      sub_221A89F88();
      v34 = v33;
      sub_221ADFE28();
      sub_221ADFE28();
      sub_2219A1CC8(v1, &qword_27CFBA5B0, &qword_221BE0C20);
      if ((v34 & 1) == 0)
      {
        goto LABEL_22;
      }

LABEL_33:
      sub_221BCC8D8();
      OUTLINED_FUNCTION_0_41();
      v37 = sub_221ADB35C(v35, v36, MEMORY[0x277D216D0]);
      v28 = OUTLINED_FUNCTION_118_3(v37);
      goto LABEL_23;
    }

    OUTLINED_FUNCTION_25_9();
    sub_221ADFE28();
  }

  v25 = &qword_27CFBA5B8;
  v26 = &qword_221BE0C28;
  v27 = v1;
LABEL_21:
  sub_2219A1CC8(v27, v25, v26);
LABEL_22:
  v28 = 0;
LABEL_23:
  OUTLINED_FUNCTION_100_3(v28);
  OUTLINED_FUNCTION_22();
}

uint64_t sub_221AA4D88(uint64_t a1, uint64_t a2)
{
  v4 = sub_221ADB35C(&qword_27CFBA5D8, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIntentValue, &unk_221BDF6F8);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_221AA4E28(uint64_t a1)
{
  v2 = sub_221ADB35C(&qword_27CFBA260, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIntentValue, &unk_221BDF730);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_221AA4EF0(uint64_t a1, uint64_t a2)
{
  sub_221ADB35C(&qword_27CFBA260, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByIntentValue, &unk_221BDF730);

  return sub_221BCCB48();
}

uint64_t sub_221AA4F70()
{
  if (qword_27CFB6F00 != -1)
  {
    swift_once();
  }

  v1 = qword_27CFDDDC8;
  v2 = qword_27CFDDDD0;
  swift_bridgeObjectRetain_n();
  MEMORY[0x223DA31F0](0x65706F725079422ELL, 0xED00007365697472);

  qword_27CFDDE68 = v1;
  unk_27CFDDE70 = v2;
  return result;
}

uint64_t sub_221AA5020()
{
  v0 = sub_221BCCC78();
  __swift_allocate_value_buffer(v0, qword_27CFDDE78);
  __swift_project_value_buffer(v0, qword_27CFDDE78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9948, &unk_221BDADF0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB9950, &unk_221BE0A50) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_221BD2690;
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
  *v16 = "propertyQuery";
  *(v16 + 1) = 13;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 11;
  *v18 = "maximumResultCount";
  *(v18 + 1) = 18;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 12;
  *v20 = "sortingOptions";
  *(v20 + 1) = 14;
  v20[16] = 2;
  v9();
  return sub_221BCCC58();
}

uint64_t sub_221AA5320()
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
        v15 = OUTLINED_FUNCTION_5_17();
        sub_221AA53F0(v15, v16, v17, v18);
        break;
      case 3:
        v7 = OUTLINED_FUNCTION_40_7();
        sub_221AA55A4(v7, v8, v9, v10);
        break;
      case 4:
        v11 = OUTLINED_FUNCTION_5_17();
        sub_221AA5AA8(v11, v12, v13, v14);
        break;
      case 10:
        v3 = OUTLINED_FUNCTION_5_17();
        sub_221AA5C5C(v3, v4, v5, v6);
        break;
      case 11:
        v19 = OUTLINED_FUNCTION_5_17();
        sub_221AA5D10(v19, v20, v21, v22);
        break;
      case 12:
        v23 = OUTLINED_FUNCTION_5_17();
        sub_221AA5D74(v23, v24, v25, v26);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_221AA53F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA548, &qword_221BE0BA0);
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
    v11 = (a2 + *(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties(0) + 20));
    sub_221A1C558();
    v12 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.OneOf_Target(0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v8, 1, v12);
    sub_2219A1CC8(v8, &qword_27CFBA548, &qword_221BE0BA0);
    if (EnumTagSinglePayload != 1)
    {
      sub_221BCC9A8();
    }

    sub_2219A1CC8(v11, &qword_27CFBA548, &qword_221BE0BA0);
    *v11 = v16;
    v11[1] = v10;
    swift_storeEnumTagMultiPayload();
    return __swift_storeEnumTagSinglePayload(v11, 0, 1, v12);
  }

  return result;
}

uint64_t sub_221AA55A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v33 = a2;
  v5 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ParameterTarget(0);
  MEMORY[0x28223BE20](v5);
  v29 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA548, &qword_221BE0BA0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v25 - v9;
  v11 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.OneOf_Target(0);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFBB8C0, &unk_221BE4FB0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v25 - v17;
  __swift_storeEnumTagSinglePayload(&v25 - v17, 1, 1, v5);
  v25 = *(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties(0) + 20);
  v26 = a1;
  sub_221A1C558();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v28 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_2219A1CC8(v10, &qword_27CFBA548, &qword_221BE0BA0);
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
  sub_2219A1CC8(v26 + v25, &qword_27CFBA548, &qword_221BE0BA0);
  sub_221ADFDB4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23 + v24, 0, 1, v22);
}

uint64_t sub_221AA5AA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA548, &qword_221BE0BA0);
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
    v11 = (a2 + *(type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties(0) + 20));
    sub_221A1C558();
    v12 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.OneOf_Target(0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v8, 1, v12);
    sub_2219A1CC8(v8, &qword_27CFBA548, &qword_221BE0BA0);
    if (EnumTagSinglePayload != 1)
    {
      sub_221BCC9A8();
    }

    sub_2219A1CC8(v11, &qword_27CFBA548, &qword_221BE0BA0);
    *v11 = v16;
    v11[1] = v10;
    swift_storeEnumTagMultiPayload();
    return __swift_storeEnumTagSinglePayload(v11, 0, 1, v12);
  }

  return result;
}

uint64_t sub_221AA5C5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties(0);
  type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery(0);
  sub_221ADB35C(&unk_27CFBB950, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.PropertyQuery, &unk_221BDF460);
  return sub_221BCCAD8();
}

uint64_t sub_221AA5D74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties(0);
  type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.SortingOptions(0);
  sub_221ADB35C(&unk_27CFBB960, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.SortingOptions, &unk_221BDF028);
  return sub_221BCCAC8();
}

void sub_221AA5E28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_356();
  OUTLINED_FUNCTION_7_13();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBA548, &qword_221BE0BA0);
  OUTLINED_FUNCTION_8_1(v5);
  OUTLINED_FUNCTION_1_8();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_116_5();
  v7 = OUTLINED_FUNCTION_42_8();
  if (v8)
  {
    OUTLINED_FUNCTION_103_5(v7);
    if (v3)
    {
      goto LABEL_15;
    }
  }

  v9 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties(0);
  sub_221A1C558();
  v10 = type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.OneOf_Target(0);
  v11 = OUTLINED_FUNCTION_276();
  if (__swift_getEnumTagSinglePayload(v11, v12, v10) != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v22 = OUTLINED_FUNCTION_3_21();
        sub_221AA615C(v22, v23, v24, v25);
        OUTLINED_FUNCTION_24_9();
        sub_221ADFE28();
        if (v3)
        {
          goto LABEL_15;
        }

        goto LABEL_4;
      }

      OUTLINED_FUNCTION_24_9();
      sub_221ADFE28();
      OUTLINED_FUNCTION_3_21();
      sub_221AA637C();
    }

    else
    {
      OUTLINED_FUNCTION_24_9();
      sub_221ADFE28();
      OUTLINED_FUNCTION_3_21();
      sub_221AA6000();
    }

    if (v3)
    {
      goto LABEL_15;
    }
  }

LABEL_4:
  v13 = OUTLINED_FUNCTION_3_21();
  sub_221AA64DC(v13, v14, v15, v16);
  if (!v3)
  {
    v17 = OUTLINED_FUNCTION_3_21();
    sub_221AA66BC(v17, v18, v19, v20);
    if (*(*(v4 + *(v9 + 24)) + 16))
    {
      type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.SortingOptions(0);
      sub_221ADB35C(&unk_27CFBB960, type metadata accessor for AppIntentsProtobuf_ClientMessages.PerformQueryRequest.ByProperties.SortingOptions, &unk_221BDF028);
      OUTLINED_FUNCTION_91_4();
      OUTLINED_FUNCTION_49_6();
      sub_221BCCC18();
    }

    OUTLINED_FUNCTION_30_7();
  }

LABEL_15:
  OUTLINED_FUNCTION_207_2();
  OUTLINED_FUNCTION_355();
}