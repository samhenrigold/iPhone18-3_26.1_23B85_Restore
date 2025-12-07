void Siri_Nlu_External_IntelligenceFlow_ToolKit.SampleInvocationDefinition.init()(void *a1@<X8>)
{
  v3 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = v3;
  v4 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SampleInvocationDefinition(0);
  OUTLINED_FUNCTION_811(v4);
  OUTLINED_FUNCTION_18_2(*(v1 + 28));
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantSchemaVersion.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantSchemaVersion(v0);
  return OUTLINED_FUNCTION_242();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantSchemaVersion.init()()
{
  v1 = OUTLINED_FUNCTION_207();
  v2 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantSchemaVersion(v1);
  v0[1] = 0;
  v0[2] = 0;
  *v0 = 0;
  return OUTLINED_FUNCTION_1016(v2);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantSchemaIdentifier.version.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_220();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_74();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantSchemaIdentifier(v7);
  OUTLINED_FUNCTION_439();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantSchemaVersion(0);
  OUTLINED_FUNCTION_46_2(v8);
  if (v9)
  {
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    result = OUTLINED_FUNCTION_1_0();
    if (!v9)
    {
      return sub_1C8778ED8(v1, &qword_1EC2BAD70, &qword_1C8BFAB98);
    }
  }

  else
  {
    OUTLINED_FUNCTION_97_3();
    OUTLINED_FUNCTION_121();
    return sub_1C88E3EC4();
  }

  return result;
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantSchemaIdentifier.version.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantSchemaIdentifier(v1);
  sub_1C8778ED8(v0 + *(v2 + 24), &qword_1EC2BAD70, &qword_1C8BFAB98);
  OUTLINED_FUNCTION_97_3();
  OUTLINED_FUNCTION_200();
  sub_1C88E3EC4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantSchemaVersion(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantSchemaIdentifier.version.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_251();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_43_0(v7);
  v9 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantSchemaVersion(v8);
  OUTLINED_FUNCTION_47_3(v9);
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_243(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_168(v14);
  v16 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantSchemaIdentifier(v15);
  OUTLINED_FUNCTION_360_0(*(v16 + 24));
  OUTLINED_FUNCTION_5_6();
  if (v17)
  {
    *v11 = 0;
    v11[1] = 0;
    v11[2] = 0;
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_5_6();
    if (!v17)
    {
      sub_1C8778ED8(v0, &qword_1EC2BAD70, &qword_1C8BFAB98);
    }
  }

  else
  {
    OUTLINED_FUNCTION_97_3();
    OUTLINED_FUNCTION_184();
    sub_1C88E3EC4();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_260();
}

void sub_1C891DD70()
{
  OUTLINED_FUNCTION_261();
  OUTLINED_FUNCTION_154();
  if (v5)
  {
    OUTLINED_FUNCTION_254_0();
    sub_1C88E4144();
    sub_1C8778ED8(v4 + v3, &qword_1EC2BAD70, &qword_1C8BFAB98);
    OUTLINED_FUNCTION_97_3();
    OUTLINED_FUNCTION_976();
    OUTLINED_FUNCTION_321();
    OUTLINED_FUNCTION_504_0();
    sub_1C88E3C58();
  }

  else
  {
    sub_1C8778ED8(v4 + v3, &qword_1EC2BAD70, &qword_1C8BFAB98);
    OUTLINED_FUNCTION_97_3();
    OUTLINED_FUNCTION_977();
    OUTLINED_FUNCTION_321();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_260();

  free(v6);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantSchemaIdentifier.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantSchemaIdentifier(v0);
  return OUTLINED_FUNCTION_242();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantToolSchemaDefinition.identifier.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_170();
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantToolSchemaDefinition(v5);
  OUTLINED_FUNCTION_947(v6);
  OUTLINED_FUNCTION_232();
  sub_1C89CBE2C();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantSchemaIdentifier(0);
  v7 = OUTLINED_FUNCTION_690();
  OUTLINED_FUNCTION_65(v7);
  if (v8)
  {
    OUTLINED_FUNCTION_992();
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v9 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantSchemaVersion(0);
    result = OUTLINED_FUNCTION_9_13(v9);
    if (!v8)
    {
      return sub_1C8778ED8(v0, &qword_1EC2BAA88, &qword_1C8BFA998);
    }
  }

  else
  {
    OUTLINED_FUNCTION_28_10();
    OUTLINED_FUNCTION_312();
    return sub_1C88E3EC4();
  }

  return result;
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantToolSchemaDefinition.identifier.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantToolSchemaDefinition(v1);
  sub_1C8778ED8(v0 + *(v2 + 32), &qword_1EC2BAA88, &qword_1C8BFA998);
  OUTLINED_FUNCTION_28_10();
  OUTLINED_FUNCTION_200();
  sub_1C88E3EC4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantSchemaIdentifier(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantToolSchemaDefinition.identifier.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_251();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_30_6(v7);
  v9 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantSchemaIdentifier(v8);
  OUTLINED_FUNCTION_29_5(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_243(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_168(v13);
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantToolSchemaDefinition(v14);
  OUTLINED_FUNCTION_368(*(v15 + 32));
  OUTLINED_FUNCTION_0_0();
  if (v16)
  {
    OUTLINED_FUNCTION_740();
    OUTLINED_FUNCTION_1020(v17);
    v18 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantSchemaVersion(0);
    OUTLINED_FUNCTION_5_12(v18);
    if (!v16)
    {
      sub_1C8778ED8(v0, &qword_1EC2BAA88, &qword_1C8BFA998);
    }
  }

  else
  {
    OUTLINED_FUNCTION_28_10();
    OUTLINED_FUNCTION_168_0();
    sub_1C88E3EC4();
  }

  OUTLINED_FUNCTION_260();
}

uint64_t sub_1C891E248()
{
  v0 = OUTLINED_FUNCTION_167();
  v2 = v1(v0);
  if (OUTLINED_FUNCTION_8_0(*(v2 + 36)))
  {
    OUTLINED_FUNCTION_20();
  }

  else
  {
    OUTLINED_FUNCTION_19_0();
  }

  return OUTLINED_FUNCTION_218();
}

uint64_t sub_1C891E290(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantToolSchemaDefinition.description_p.setter(v1, v2);
}

uint64_t sub_1C891E2E8()
{
  v3 = OUTLINED_FUNCTION_68();
  v4(v3);
  result = OUTLINED_FUNCTION_24_0();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantToolSchemaDefinition.description_p.modify()
{
  v0 = OUTLINED_FUNCTION_17_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_41(v1);
  v3 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantToolSchemaDefinition(v2);
  if (OUTLINED_FUNCTION_4_1(*(v3 + 36)))
  {
    OUTLINED_FUNCTION_15_1();
  }

  else
  {
    OUTLINED_FUNCTION_14_1();
  }

  OUTLINED_FUNCTION_13_4(v4, v5);

  return OUTLINED_FUNCTION_12();
}

uint64_t sub_1C891E3D4()
{
  v1 = OUTLINED_FUNCTION_167();
  v2(v1);
  result = OUTLINED_FUNCTION_25_2();
  *v0 = 0;
  v0[1] = 0;
  return result;
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantToolSchemaDefinition.parameters.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantToolSchemaDefinition.sampleInvocations.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantToolSchemaDefinition.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantToolSchemaDefinition(v0);
  return OUTLINED_FUNCTION_242();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantToolSchemaDefinition.init()(void *a1@<X8>)
{
  OUTLINED_FUNCTION_132(a1);
  v2 = MEMORY[0x1E69E7CC0];
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  *(v1 + 24) = v2;
  v3 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantToolSchemaDefinition(0);
  OUTLINED_FUNCTION_1016(v3);
  v4 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantSchemaIdentifier(0);
  OUTLINED_FUNCTION_447(v4);
  OUTLINED_FUNCTION_18_2(*(v3 + 36));
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantTypeSchemaDefinition.entity.getter()
{
  OUTLINED_FUNCTION_93_1();
  v1 = OUTLINED_FUNCTION_253();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_122_2();
  v5 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantTypeSchemaDefinition.OneOf_AssistantTypeSchemaDefinitionKind(0);
  OUTLINED_FUNCTION_5_8(v5);
  if (v6)
  {
    sub_1C8778ED8(v0, &qword_1EC2BAD78, &qword_1C8BFABA0);
LABEL_6:
    v8 = OUTLINED_FUNCTION_143_1(MEMORY[0x1E69E7CC0]);
    v9 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantTypeSchemaDefinition.Entity(v8);
    OUTLINED_FUNCTION_702(v9);
    v10 = OUTLINED_FUNCTION_524();
    v11 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantSchemaIdentifier(v10);
    v12 = OUTLINED_FUNCTION_404(v11);
    type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDisplayRepresentation(v12);
    v13 = OUTLINED_FUNCTION_27_1();
    return __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  }

  OUTLINED_FUNCTION_92_0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    sub_1C88E3C58();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_171_2();
  OUTLINED_FUNCTION_5_0();
  return sub_1C88E3EC4();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantTypeSchemaDefinition.entity.setter()
{
  sub_1C8778ED8(v0, &qword_1EC2BAD78, &qword_1C8BFABA0);
  OUTLINED_FUNCTION_171_2();
  OUTLINED_FUNCTION_218();
  sub_1C88E3EC4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantTypeSchemaDefinition.OneOf_AssistantTypeSchemaDefinitionKind(0);
  OUTLINED_FUNCTION_48_4();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_34_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantTypeSchemaDefinition.entity.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_55_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_43_0(v7);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantTypeSchemaDefinition.Entity(v8);
  OUTLINED_FUNCTION_40_2();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_110_0(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_232_2(v12);
  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantTypeSchemaDefinition.OneOf_AssistantTypeSchemaDefinitionKind(0);
  OUTLINED_FUNCTION_35_5(v13);
  if (v14)
  {
    sub_1C8778ED8(v0, &qword_1EC2BAD78, &qword_1C8BFABA0);
  }

  else
  {
    OUTLINED_FUNCTION_253();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 1)
    {
      OUTLINED_FUNCTION_171_2();
      OUTLINED_FUNCTION_254_0();
      sub_1C88E3EC4();
      goto LABEL_8;
    }

    sub_1C88E3C58();
  }

  OUTLINED_FUNCTION_779(MEMORY[0x1E69E7CC0]);
  v16 = OUTLINED_FUNCTION_1013();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantSchemaIdentifier(v16);
  OUTLINED_FUNCTION_653();
  OUTLINED_FUNCTION_5();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  v21 = OUTLINED_FUNCTION_1068();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDisplayRepresentation(v21);
  v22 = OUTLINED_FUNCTION_257_2();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
LABEL_8:
  OUTLINED_FUNCTION_260();
}

void sub_1C891E8C4()
{
  OUTLINED_FUNCTION_32_6();
  if (v5)
  {
    OUTLINED_FUNCTION_184();
    sub_1C88E4144();
    sub_1C8778ED8(v4, &qword_1EC2BAD78, &qword_1C8BFABA0);
    OUTLINED_FUNCTION_171_2();
    OUTLINED_FUNCTION_156_1();
    sub_1C88E3EC4();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_86_1();
    sub_1C88E3C58();
  }

  else
  {
    sub_1C8778ED8(v4, &qword_1EC2BAD78, &qword_1C8BFABA0);
    OUTLINED_FUNCTION_171_2();
    OUTLINED_FUNCTION_268();
    sub_1C88E3EC4();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
  }

  free(v3);
  free(v2);
  free(v1);

  free(v0);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantTypeSchemaDefinition.enumeration.getter()
{
  OUTLINED_FUNCTION_93_1();
  v1 = OUTLINED_FUNCTION_253();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_122_2();
  v5 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantTypeSchemaDefinition.OneOf_AssistantTypeSchemaDefinitionKind(0);
  OUTLINED_FUNCTION_5_8(v5);
  if (v6)
  {
    sub_1C8778ED8(v0, &qword_1EC2BAD78, &qword_1C8BFABA0);
  }

  else
  {
    OUTLINED_FUNCTION_92_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_170_2();
      OUTLINED_FUNCTION_5_0();
      return sub_1C88E3EC4();
    }

    sub_1C88E3C58();
  }

  v9 = OUTLINED_FUNCTION_143_1(MEMORY[0x1E69E7CC0]);
  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantTypeSchemaDefinition.Enumeration(v9);
  OUTLINED_FUNCTION_702(v10);
  v11 = OUTLINED_FUNCTION_524();
  v12 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantSchemaIdentifier(v11);
  v13 = OUTLINED_FUNCTION_404(v12);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDisplayRepresentation(v13);
  v14 = OUTLINED_FUNCTION_27_1();
  return __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantTypeSchemaDefinition.enumeration.setter()
{
  sub_1C8778ED8(v0, &qword_1EC2BAD78, &qword_1C8BFABA0);
  OUTLINED_FUNCTION_170_2();
  OUTLINED_FUNCTION_218();
  sub_1C88E3EC4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantTypeSchemaDefinition.OneOf_AssistantTypeSchemaDefinitionKind(0);
  OUTLINED_FUNCTION_48_4();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_34_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_1C891EB50()
{
  OUTLINED_FUNCTION_794();
  v0 = OUTLINED_FUNCTION_143_1(MEMORY[0x1E69E7CC0]);
  v2 = v1(v0);
  OUTLINED_FUNCTION_702(v2);
  v3 = OUTLINED_FUNCTION_524();
  v4 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantSchemaIdentifier(v3);
  v5 = OUTLINED_FUNCTION_404(v4);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDisplayRepresentation(v5);
  v6 = OUTLINED_FUNCTION_27_1();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantTypeSchemaDefinition.enumeration.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_55_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_43_0(v7);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantTypeSchemaDefinition.Enumeration(v8);
  OUTLINED_FUNCTION_40_2();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_110_0(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_232_2(v12);
  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantTypeSchemaDefinition.OneOf_AssistantTypeSchemaDefinitionKind(0);
  OUTLINED_FUNCTION_35_5(v13);
  if (v14)
  {
    sub_1C8778ED8(v0, &qword_1EC2BAD78, &qword_1C8BFABA0);
LABEL_7:
    OUTLINED_FUNCTION_779(MEMORY[0x1E69E7CC0]);
    v16 = OUTLINED_FUNCTION_1013();
    type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantSchemaIdentifier(v16);
    OUTLINED_FUNCTION_653();
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
    v21 = OUTLINED_FUNCTION_1068();
    type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDisplayRepresentation(v21);
    v22 = OUTLINED_FUNCTION_257_2();
    __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_253();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_170_2();
  OUTLINED_FUNCTION_254_0();
  sub_1C88E3EC4();
LABEL_8:
  OUTLINED_FUNCTION_260();
}

void sub_1C891ED08()
{
  OUTLINED_FUNCTION_32_6();
  if (v5)
  {
    OUTLINED_FUNCTION_184();
    sub_1C88E4144();
    sub_1C8778ED8(v4, &qword_1EC2BAD78, &qword_1C8BFABA0);
    OUTLINED_FUNCTION_170_2();
    OUTLINED_FUNCTION_156_1();
    sub_1C88E3EC4();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_86_1();
    sub_1C88E3C58();
  }

  else
  {
    sub_1C8778ED8(v4, &qword_1EC2BAD78, &qword_1C8BFABA0);
    OUTLINED_FUNCTION_170_2();
    OUTLINED_FUNCTION_268();
    sub_1C88E3EC4();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
  }

  free(v3);
  free(v2);
  free(v1);

  free(v0);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantTypeSchemaDefinition.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantTypeSchemaDefinition(v0);
  return OUTLINED_FUNCTION_242();
}

void static Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantTypeSchemaDefinition.OneOf_AssistantTypeSchemaDefinitionKind.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v1 = OUTLINED_FUNCTION_1149();
  v2 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantTypeSchemaDefinition.Enumeration(v1);
  v3 = OUTLINED_FUNCTION_80(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_605();
  v4 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantTypeSchemaDefinition.Entity(0);
  v5 = OUTLINED_FUNCTION_80(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_18_4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantTypeSchemaDefinition.OneOf_AssistantTypeSchemaDefinitionKind(0);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_204();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_547();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAD80, &qword_1C8BFABA8);
  OUTLINED_FUNCTION_80(v8);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_112_0();
  sub_1C88E4144();
  sub_1C88E4144();
  OUTLINED_FUNCTION_193();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_446();
    sub_1C88E4144();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      OUTLINED_FUNCTION_170_2();
      sub_1C88E3EC4();
      v10 = OUTLINED_FUNCTION_254_0();
      static Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantTypeSchemaDefinition.Enumeration.== infix(_:_:)(v10, v11);
      sub_1C88E3C58();
      OUTLINED_FUNCTION_184();
LABEL_8:
      sub_1C88E3C58();
      OUTLINED_FUNCTION_503_0();
      sub_1C88E3C58();
      goto LABEL_9;
    }
  }

  else
  {
    OUTLINED_FUNCTION_141_1();
    sub_1C88E4144();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      OUTLINED_FUNCTION_171_2();
      sub_1C88E3EC4();
      v12 = OUTLINED_FUNCTION_168_0();
      static Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantTypeSchemaDefinition.Entity.== infix(_:_:)(v12, v13);
      sub_1C88E3C58();
      OUTLINED_FUNCTION_300();
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_169();
  }

  sub_1C88E3C58();
  sub_1C8778ED8(v0, &qword_1EC2BAD80, &qword_1C8BFABA8);
LABEL_9:
  OUTLINED_FUNCTION_125();
}

void sub_1C891F180()
{
  OUTLINED_FUNCTION_124();
  v3 = v2;
  v4 = OUTLINED_FUNCTION_810();
  v38 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDisplayRepresentation(v4);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_207_0(v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EC2BAAA0, &qword_1C8BFA9B8);
  OUTLINED_FUNCTION_80(v7);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_81();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAAA8, &qword_1C8BFA9C0);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v9);
  v11 = OUTLINED_FUNCTION_294_0(v10, v36);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantSchemaIdentifier(v11);
  OUTLINED_FUNCTION_74_1();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_33();
  v13 = OUTLINED_FUNCTION_220();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(v13, v14);
  OUTLINED_FUNCTION_80(v15);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_112_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAA90, &unk_1C8BFA9A0);
  OUTLINED_FUNCTION_181_0();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v17);
  v18 = OUTLINED_FUNCTION_217_1();
  v3(v18);
  v19 = *(v0 + 56);
  OUTLINED_FUNCTION_935();
  OUTLINED_FUNCTION_935();
  OUTLINED_FUNCTION_19(v1);
  if (v20)
  {
    OUTLINED_FUNCTION_19(v1 + v19);
    if (v20)
    {
      sub_1C8778ED8(v1, &qword_1EC2BAA88, &qword_1C8BFA998);
      goto LABEL_12;
    }

LABEL_9:
    v21 = &qword_1EC2BAA90;
    v22 = &unk_1C8BFA9A0;
LABEL_10:
    sub_1C8778ED8(v1, v21, v22);
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_91();
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_19(v1 + v19);
  if (v20)
  {
    sub_1C88E3C58();
    goto LABEL_9;
  }

  sub_1C88E3EC4();
  static Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantSchemaIdentifier.== infix(_:_:)();
  v24 = v23;
  sub_1C88E3C58();
  OUTLINED_FUNCTION_12();
  sub_1C88E3C58();
  sub_1C8778ED8(v1, &qword_1EC2BAA88, &qword_1C8BFA998);
  if ((v24 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_12:
  v25 = OUTLINED_FUNCTION_1023();
  if ((v26(v25) & 1) == 0)
  {
    goto LABEL_24;
  }

  v27 = *(v37 + 48);
  v1 = v39;
  OUTLINED_FUNCTION_955();
  OUTLINED_FUNCTION_955();
  v28 = OUTLINED_FUNCTION_400();
  OUTLINED_FUNCTION_124_1(v28, v29);
  if (!v20)
  {
    sub_1C89CBE2C();
    OUTLINED_FUNCTION_24(v39 + v27);
    if (!v30)
    {
      sub_1C88E3EC4();
      v31 = OUTLINED_FUNCTION_168_0();
      static Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDisplayRepresentation.== infix(_:_:)(v31);
      OUTLINED_FUNCTION_462();
      sub_1C88E3C58();
      OUTLINED_FUNCTION_300();
      sub_1C88E3C58();
      sub_1C8778ED8(v39, &dword_1EC2BAAA0, &qword_1C8BFA9B8);
      if (v38)
      {
        goto LABEL_23;
      }

LABEL_24:
      v35 = 0;
      goto LABEL_25;
    }

    sub_1C88E3C58();
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_24(v39 + v27);
  if (!v20)
  {
LABEL_21:
    v21 = &qword_1EC2BAAA8;
    v22 = &qword_1C8BFA9C0;
    goto LABEL_10;
  }

  sub_1C8778ED8(v39, &dword_1EC2BAAA0, &qword_1C8BFA9B8);
LABEL_23:
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_1_14();
  v34 = sub_1C8776818(v32, v33, MEMORY[0x1E69AAC10]);
  v35 = OUTLINED_FUNCTION_701(v34);
LABEL_25:
  OUTLINED_FUNCTION_157(v35);
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantTypeSchemaDefinition.Entity.identifier.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantTypeSchemaDefinition.Entity(v1);
  sub_1C8778ED8(v0 + *(v2 + 24), &qword_1EC2BAA88, &qword_1C8BFA998);
  OUTLINED_FUNCTION_28_10();
  OUTLINED_FUNCTION_200();
  sub_1C88E3EC4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantSchemaIdentifier(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantTypeSchemaDefinition.Entity.identifier.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_251();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_30_6(v7);
  v9 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantSchemaIdentifier(v8);
  OUTLINED_FUNCTION_29_5(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_243(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_168(v13);
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantTypeSchemaDefinition.Entity(v14);
  OUTLINED_FUNCTION_312_0(v15);
  OUTLINED_FUNCTION_0_0();
  if (v16)
  {
    OUTLINED_FUNCTION_740();
    OUTLINED_FUNCTION_1020(v17);
    v18 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantSchemaVersion(0);
    OUTLINED_FUNCTION_5_12(v18);
    if (!v16)
    {
      sub_1C8778ED8(v0, &qword_1EC2BAA88, &qword_1C8BFA998);
    }
  }

  else
  {
    OUTLINED_FUNCTION_28_10();
    OUTLINED_FUNCTION_168_0();
    sub_1C88E3EC4();
  }

  OUTLINED_FUNCTION_260();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantTypeSchemaDefinition.Entity.displayRepresentation.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantTypeSchemaDefinition.Entity(v1);
  sub_1C8778ED8(v0 + *(v2 + 28), &dword_1EC2BAAA0, &qword_1C8BFA9B8);
  OUTLINED_FUNCTION_25_8();
  OUTLINED_FUNCTION_200();
  sub_1C88E3EC4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDisplayRepresentation(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantTypeSchemaDefinition.Entity.displayRepresentation.modify()
{
  OUTLINED_FUNCTION_261();
  v2 = OUTLINED_FUNCTION_251();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_43_0(v8);
  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDisplayRepresentation(v9);
  OUTLINED_FUNCTION_47_3(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_243(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_168(v14);
  v16 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantTypeSchemaDefinition.Entity(v15);
  OUTLINED_FUNCTION_360_0(*(v16 + 28));
  OUTLINED_FUNCTION_5_6();
  if (v17)
  {
    OUTLINED_FUNCTION_740();
    OUTLINED_FUNCTION_1018(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_26(*(v1 + 28));
    OUTLINED_FUNCTION_5_6();
    if (!v17)
    {
      sub_1C8778ED8(v0, &dword_1EC2BAAA0, &qword_1C8BFA9B8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_25_8();
    OUTLINED_FUNCTION_184();
    sub_1C88E3EC4();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_260();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantTypeSchemaDefinition.Entity.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantTypeSchemaDefinition.Entity(v0);
  return OUTLINED_FUNCTION_242();
}

uint64_t sub_1C891FAB0()
{
  OUTLINED_FUNCTION_1087();
  v2 = OUTLINED_FUNCTION_299_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_80(v4);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_170();
  v7 = v1(v6);
  OUTLINED_FUNCTION_329_0(v7);
  OUTLINED_FUNCTION_626();
  sub_1C89CBE2C();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantSchemaIdentifier(0);
  v8 = OUTLINED_FUNCTION_690();
  OUTLINED_FUNCTION_65(v8);
  if (v9)
  {
    OUTLINED_FUNCTION_992();
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantSchemaVersion(0);
    result = OUTLINED_FUNCTION_9_13(v10);
    if (!v9)
    {
      return sub_1C8778ED8(v0, &qword_1EC2BAA88, &qword_1C8BFA998);
    }
  }

  else
  {
    OUTLINED_FUNCTION_312();
    return sub_1C88E3EC4();
  }

  return result;
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantTypeSchemaDefinition.Enumeration.identifier.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantTypeSchemaDefinition.Enumeration(v1);
  sub_1C8778ED8(v0 + *(v2 + 24), &qword_1EC2BAA88, &qword_1C8BFA998);
  OUTLINED_FUNCTION_28_10();
  OUTLINED_FUNCTION_200();
  sub_1C88E3EC4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantSchemaIdentifier(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantTypeSchemaDefinition.Enumeration.identifier.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_251();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_30_6(v7);
  v9 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantSchemaIdentifier(v8);
  OUTLINED_FUNCTION_29_5(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_243(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_168(v13);
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantTypeSchemaDefinition.Enumeration(v14);
  OUTLINED_FUNCTION_312_0(v15);
  OUTLINED_FUNCTION_0_0();
  if (v16)
  {
    OUTLINED_FUNCTION_740();
    OUTLINED_FUNCTION_1020(v17);
    v18 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantSchemaVersion(0);
    OUTLINED_FUNCTION_5_12(v18);
    if (!v16)
    {
      sub_1C8778ED8(v0, &qword_1EC2BAA88, &qword_1C8BFA998);
    }
  }

  else
  {
    OUTLINED_FUNCTION_28_10();
    OUTLINED_FUNCTION_168_0();
    sub_1C88E3EC4();
  }

  OUTLINED_FUNCTION_260();
}

uint64_t sub_1C891FDDC()
{
  OUTLINED_FUNCTION_526();
  v3 = OUTLINED_FUNCTION_299_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_74();
  v8 = (v1)(v7);
  OUTLINED_FUNCTION_885(v8);
  OUTLINED_FUNCTION_382();
  sub_1C89CBE2C();
  v9 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDisplayRepresentation(0);
  OUTLINED_FUNCTION_46_2(v9);
  if (v10)
  {
    OUTLINED_FUNCTION_670();
    *(v0 + 16) = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_1032();
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_18_2(*(v1 + 28));
    result = OUTLINED_FUNCTION_1_0();
    if (!v10)
    {
      return sub_1C8778ED8(v2, &dword_1EC2BAAA0, &qword_1C8BFA9B8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_121();
    return sub_1C88E3EC4();
  }

  return result;
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantTypeSchemaDefinition.Enumeration.displayRepresentation.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantTypeSchemaDefinition.Enumeration(v1);
  sub_1C8778ED8(v0 + *(v2 + 28), &dword_1EC2BAAA0, &qword_1C8BFA9B8);
  OUTLINED_FUNCTION_25_8();
  OUTLINED_FUNCTION_200();
  sub_1C88E3EC4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDisplayRepresentation(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantTypeSchemaDefinition.Enumeration.displayRepresentation.modify()
{
  OUTLINED_FUNCTION_261();
  v2 = OUTLINED_FUNCTION_251();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_43_0(v8);
  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDisplayRepresentation(v9);
  OUTLINED_FUNCTION_47_3(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_243(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_168(v14);
  v16 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantTypeSchemaDefinition.Enumeration(v15);
  OUTLINED_FUNCTION_360_0(*(v16 + 28));
  OUTLINED_FUNCTION_5_6();
  if (v17)
  {
    OUTLINED_FUNCTION_740();
    OUTLINED_FUNCTION_1018(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_26(*(v1 + 28));
    OUTLINED_FUNCTION_5_6();
    if (!v17)
    {
      sub_1C8778ED8(v0, &dword_1EC2BAAA0, &qword_1C8BFA9B8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_25_8();
    OUTLINED_FUNCTION_184();
    sub_1C88E3EC4();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_260();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantTypeSchemaDefinition.Enumeration.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantTypeSchemaDefinition.Enumeration(v0);
  return OUTLINED_FUNCTION_242();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.unknown.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_289_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD47CC();
  OUTLINED_FUNCTION_42_5(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_224_2(v14);
  OUTLINED_FUNCTION_13_16();
  if (v15)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    OUTLINED_FUNCTION_220();
    if (!swift_getEnumCaseMultiPayload())
    {
      v19 = OUTLINED_FUNCTION_128_3();
      v20(v19);
      goto LABEL_7;
    }

    sub_1C88E3C58();
  }

  v17 = OUTLINED_FUNCTION_290_1();
  v18(v17);
LABEL_7:
  OUTLINED_FUNCTION_125();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.undoable.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_289_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD47CC();
  OUTLINED_FUNCTION_42_5(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_224_2(v14);
  OUTLINED_FUNCTION_13_16();
  if (v15)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6088, &qword_1C8BFABB0);
LABEL_7:
    v19 = OUTLINED_FUNCTION_290_1();
    v20(v19);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_220();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  v17 = OUTLINED_FUNCTION_128_3();
  v18(v17);
LABEL_8:
  OUTLINED_FUNCTION_125();
}

void sub_1C89205DC()
{
  OUTLINED_FUNCTION_261();
  v3 = OUTLINED_FUNCTION_264_2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_222_2();
  v5 = v0(0);
  OUTLINED_FUNCTION_85_4(v5);
  if (v6)
  {
    v7 = OUTLINED_FUNCTION_373_0();
    sub_1C8778ED8(v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_611();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 2)
    {
      OUTLINED_FUNCTION_92_0();
      sub_1C88E3C58();
    }
  }

  sub_1C8BD47CC();
  OUTLINED_FUNCTION_121_0();
  v11 = OUTLINED_FUNCTION_218();
  v12(v11);
  OUTLINED_FUNCTION_260();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.sessionStarting.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_289_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD47CC();
  OUTLINED_FUNCTION_42_5(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_224_2(v14);
  OUTLINED_FUNCTION_13_16();
  if (v15)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6088, &qword_1C8BFABB0);
LABEL_7:
    v19 = OUTLINED_FUNCTION_290_1();
    v20(v19);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_220();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 2)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  v17 = OUTLINED_FUNCTION_128_3();
  v18(v17);
LABEL_8:
  OUTLINED_FUNCTION_125();
}

void sub_1C89208B8()
{
  OUTLINED_FUNCTION_261();
  v3 = OUTLINED_FUNCTION_264_2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_222_2();
  v5 = v0(0);
  OUTLINED_FUNCTION_85_4(v5);
  if (v6)
  {
    v7 = OUTLINED_FUNCTION_373_0();
    sub_1C8778ED8(v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_611();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 3)
    {
      OUTLINED_FUNCTION_92_0();
      sub_1C88E3C58();
    }
  }

  sub_1C8BD47CC();
  OUTLINED_FUNCTION_121_0();
  v11 = OUTLINED_FUNCTION_218();
  v12(v11);
  OUTLINED_FUNCTION_260();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.urlRepresentable.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_289_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD47CC();
  OUTLINED_FUNCTION_42_5(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_224_2(v14);
  OUTLINED_FUNCTION_13_16();
  if (v15)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6088, &qword_1C8BFABB0);
LABEL_7:
    v19 = OUTLINED_FUNCTION_290_1();
    v20(v19);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_220();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 3)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  v17 = OUTLINED_FUNCTION_128_3();
  v18(v17);
LABEL_8:
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.conditionallyEnabled.getter()
{
  OUTLINED_FUNCTION_93_1();
  v2 = OUTLINED_FUNCTION_253();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_80(v4);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_122_2();
  OUTLINED_FUNCTION_32_10();
  if (v6)
  {
    sub_1C8778ED8(v1, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    OUTLINED_FUNCTION_92_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 4)
    {
      OUTLINED_FUNCTION_168_2();
      OUTLINED_FUNCTION_5_0();
      return sub_1C88E3EC4();
    }

    sub_1C88E3C58();
  }

  *v0 = 0;
  v9 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.ConditionallyEnabled(0);
  return OUTLINED_FUNCTION_260_1(v9);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.conditionallyEnabled.setter()
{
  sub_1C8778ED8(v0, &qword_1EC2B6088, &qword_1C8BFABB0);
  OUTLINED_FUNCTION_168_2();
  OUTLINED_FUNCTION_218();
  sub_1C88E3EC4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.OneOf_SystemToolProtocolKind(0);
  OUTLINED_FUNCTION_48_4();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_34_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.ConditionallyEnabled.init()@<X0>(_BYTE *a1@<X8>)
{
  *a1 = 0;
  v1 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.ConditionallyEnabled(0);
  return OUTLINED_FUNCTION_260_1(v1);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.conditionallyEnabled.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_55_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_43_0(v7);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.ConditionallyEnabled(v8);
  OUTLINED_FUNCTION_40_2();
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_110_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_232_2(v13);
  v14 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.OneOf_SystemToolProtocolKind(0);
  OUTLINED_FUNCTION_35_5(v14);
  if (v15)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6088, &qword_1C8BFABB0);
LABEL_7:
    *v10 = 0;
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_253();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 4)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_168_2();
  OUTLINED_FUNCTION_254_0();
  sub_1C88E3EC4();
LABEL_8:
  OUTLINED_FUNCTION_260();
}

void sub_1C8920E0C()
{
  OUTLINED_FUNCTION_32_6();
  if (v5)
  {
    OUTLINED_FUNCTION_184();
    sub_1C88E4144();
    sub_1C8778ED8(v4, &qword_1EC2B6088, &qword_1C8BFABB0);
    OUTLINED_FUNCTION_168_2();
    OUTLINED_FUNCTION_156_1();
    sub_1C88E3EC4();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_241_3();
    sub_1C88E3C58();
  }

  else
  {
    sub_1C8778ED8(v4, &qword_1EC2B6088, &qword_1C8BFABB0);
    OUTLINED_FUNCTION_168_2();
    OUTLINED_FUNCTION_268();
    sub_1C88E3EC4();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
  }

  free(v3);
  free(v2);
  free(v1);

  free(v0);
}

void sub_1C8920F3C()
{
  OUTLINED_FUNCTION_261();
  v3 = OUTLINED_FUNCTION_264_2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_222_2();
  v5 = v0(0);
  OUTLINED_FUNCTION_85_4(v5);
  if (v6)
  {
    v7 = OUTLINED_FUNCTION_373_0();
    sub_1C8778ED8(v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_611();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 5)
    {
      OUTLINED_FUNCTION_92_0();
      sub_1C88E3C58();
    }
  }

  sub_1C8BD47CC();
  OUTLINED_FUNCTION_121_0();
  v11 = OUTLINED_FUNCTION_218();
  v12(v11);
  OUTLINED_FUNCTION_260();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.foregroundContinuable.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_289_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD47CC();
  OUTLINED_FUNCTION_42_5(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_224_2(v14);
  OUTLINED_FUNCTION_13_16();
  if (v15)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6088, &qword_1C8BFABB0);
LABEL_7:
    v19 = OUTLINED_FUNCTION_290_1();
    v20(v19);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_220();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 5)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  v17 = OUTLINED_FUNCTION_128_3();
  v18(v17);
LABEL_8:
  OUTLINED_FUNCTION_125();
}

void sub_1C8921218()
{
  OUTLINED_FUNCTION_261();
  v3 = OUTLINED_FUNCTION_264_2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_222_2();
  v5 = v0(0);
  OUTLINED_FUNCTION_85_4(v5);
  if (v6)
  {
    v7 = OUTLINED_FUNCTION_373_0();
    sub_1C8778ED8(v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_611();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 6)
    {
      OUTLINED_FUNCTION_92_0();
      sub_1C88E3C58();
    }
  }

  sub_1C8BD47CC();
  OUTLINED_FUNCTION_121_0();
  v11 = OUTLINED_FUNCTION_218();
  v12(v11);
  OUTLINED_FUNCTION_260();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.changeBinarySetting.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_289_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD47CC();
  OUTLINED_FUNCTION_42_5(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_224_2(v14);
  OUTLINED_FUNCTION_13_16();
  if (v15)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6088, &qword_1C8BFABB0);
LABEL_7:
    v19 = OUTLINED_FUNCTION_290_1();
    v20(v19);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_220();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 6)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  v17 = OUTLINED_FUNCTION_128_3();
  v18(v17);
LABEL_8:
  OUTLINED_FUNCTION_125();
}

void sub_1C89214F4()
{
  OUTLINED_FUNCTION_261();
  v3 = OUTLINED_FUNCTION_264_2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_222_2();
  v5 = v0(0);
  OUTLINED_FUNCTION_85_4(v5);
  if (v6)
  {
    v7 = OUTLINED_FUNCTION_373_0();
    sub_1C8778ED8(v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_611();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 7)
    {
      OUTLINED_FUNCTION_92_0();
      sub_1C88E3C58();
    }
  }

  sub_1C8BD47CC();
  OUTLINED_FUNCTION_121_0();
  v11 = OUTLINED_FUNCTION_218();
  v12(v11);
  OUTLINED_FUNCTION_260();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.requiresMdmChecks.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_289_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD47CC();
  OUTLINED_FUNCTION_42_5(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_224_2(v14);
  OUTLINED_FUNCTION_13_16();
  if (v15)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6088, &qword_1C8BFABB0);
LABEL_7:
    v19 = OUTLINED_FUNCTION_290_1();
    v20(v19);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_220();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 7)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  v17 = OUTLINED_FUNCTION_128_3();
  v18(v17);
LABEL_8:
  OUTLINED_FUNCTION_125();
}

void sub_1C89217D0()
{
  OUTLINED_FUNCTION_261();
  v3 = OUTLINED_FUNCTION_264_2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_222_2();
  v5 = v0(0);
  OUTLINED_FUNCTION_85_4(v5);
  if (v6)
  {
    v7 = OUTLINED_FUNCTION_373_0();
    sub_1C8778ED8(v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_611();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 8)
    {
      OUTLINED_FUNCTION_92_0();
      sub_1C88E3C58();
    }
  }

  sub_1C8BD47CC();
  OUTLINED_FUNCTION_121_0();
  v11 = OUTLINED_FUNCTION_218();
  v12(v11);
  OUTLINED_FUNCTION_260();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.cut.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_289_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD47CC();
  OUTLINED_FUNCTION_42_5(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_224_2(v14);
  OUTLINED_FUNCTION_13_16();
  if (v15)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6088, &qword_1C8BFABB0);
LABEL_7:
    v19 = OUTLINED_FUNCTION_290_1();
    v20(v19);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_220();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 8)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  v17 = OUTLINED_FUNCTION_128_3();
  v18(v17);
LABEL_8:
  OUTLINED_FUNCTION_125();
}

void sub_1C8921AAC()
{
  OUTLINED_FUNCTION_261();
  v3 = OUTLINED_FUNCTION_264_2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_222_2();
  v5 = v0(0);
  OUTLINED_FUNCTION_85_4(v5);
  if (v6)
  {
    v7 = OUTLINED_FUNCTION_373_0();
    sub_1C8778ED8(v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_611();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 9)
    {
      OUTLINED_FUNCTION_92_0();
      sub_1C88E3C58();
    }
  }

  sub_1C8BD47CC();
  OUTLINED_FUNCTION_121_0();
  v11 = OUTLINED_FUNCTION_218();
  v12(v11);
  OUTLINED_FUNCTION_260();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.copy.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_289_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD47CC();
  OUTLINED_FUNCTION_42_5(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_224_2(v14);
  OUTLINED_FUNCTION_13_16();
  if (v15)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6088, &qword_1C8BFABB0);
LABEL_7:
    v19 = OUTLINED_FUNCTION_290_1();
    v20(v19);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_220();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 9)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  v17 = OUTLINED_FUNCTION_128_3();
  v18(v17);
LABEL_8:
  OUTLINED_FUNCTION_125();
}

void sub_1C8921D88()
{
  OUTLINED_FUNCTION_261();
  v3 = OUTLINED_FUNCTION_264_2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_222_2();
  v5 = v0(0);
  OUTLINED_FUNCTION_85_4(v5);
  if (v6)
  {
    v7 = OUTLINED_FUNCTION_373_0();
    sub_1C8778ED8(v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_611();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 10)
    {
      OUTLINED_FUNCTION_92_0();
      sub_1C88E3C58();
    }
  }

  sub_1C8BD47CC();
  OUTLINED_FUNCTION_121_0();
  v11 = OUTLINED_FUNCTION_218();
  v12(v11);
  OUTLINED_FUNCTION_260();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.paste.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_289_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD47CC();
  OUTLINED_FUNCTION_42_5(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_224_2(v14);
  OUTLINED_FUNCTION_13_16();
  if (v15)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6088, &qword_1C8BFABB0);
LABEL_7:
    v19 = OUTLINED_FUNCTION_290_1();
    v20(v19);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_220();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 10)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  v17 = OUTLINED_FUNCTION_128_3();
  v18(v17);
LABEL_8:
  OUTLINED_FUNCTION_125();
}

void sub_1C8922064()
{
  OUTLINED_FUNCTION_261();
  v3 = OUTLINED_FUNCTION_264_2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_222_2();
  v5 = v0(0);
  OUTLINED_FUNCTION_85_4(v5);
  if (v6)
  {
    v7 = OUTLINED_FUNCTION_373_0();
    sub_1C8778ED8(v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_611();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 11)
    {
      OUTLINED_FUNCTION_92_0();
      sub_1C88E3C58();
    }
  }

  sub_1C8BD47CC();
  OUTLINED_FUNCTION_121_0();
  v11 = OUTLINED_FUNCTION_218();
  v12(v11);
  OUTLINED_FUNCTION_260();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.cancel.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_289_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD47CC();
  OUTLINED_FUNCTION_42_5(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_224_2(v14);
  OUTLINED_FUNCTION_13_16();
  if (v15)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6088, &qword_1C8BFABB0);
LABEL_7:
    v19 = OUTLINED_FUNCTION_290_1();
    v20(v19);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_220();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 11)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  v17 = OUTLINED_FUNCTION_128_3();
  v18(v17);
LABEL_8:
  OUTLINED_FUNCTION_125();
}

void sub_1C8922340()
{
  OUTLINED_FUNCTION_261();
  v3 = OUTLINED_FUNCTION_264_2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_222_2();
  v5 = v0(0);
  OUTLINED_FUNCTION_85_4(v5);
  if (v6)
  {
    v7 = OUTLINED_FUNCTION_373_0();
    sub_1C8778ED8(v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_611();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 12)
    {
      OUTLINED_FUNCTION_92_0();
      sub_1C88E3C58();
    }
  }

  sub_1C8BD47CC();
  OUTLINED_FUNCTION_121_0();
  v11 = OUTLINED_FUNCTION_218();
  v12(v11);
  OUTLINED_FUNCTION_260();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.resize.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_289_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD47CC();
  OUTLINED_FUNCTION_42_5(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_224_2(v14);
  OUTLINED_FUNCTION_13_16();
  if (v15)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6088, &qword_1C8BFABB0);
LABEL_7:
    v19 = OUTLINED_FUNCTION_290_1();
    v20(v19);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_220();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 12)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  v17 = OUTLINED_FUNCTION_128_3();
  v18(v17);
LABEL_8:
  OUTLINED_FUNCTION_125();
}

void sub_1C892261C()
{
  OUTLINED_FUNCTION_261();
  v3 = OUTLINED_FUNCTION_264_2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_222_2();
  v5 = v0(0);
  OUTLINED_FUNCTION_85_4(v5);
  if (v6)
  {
    v7 = OUTLINED_FUNCTION_373_0();
    sub_1C8778ED8(v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_611();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 13)
    {
      OUTLINED_FUNCTION_92_0();
      sub_1C88E3C58();
    }
  }

  sub_1C8BD47CC();
  OUTLINED_FUNCTION_121_0();
  v11 = OUTLINED_FUNCTION_218();
  v12(v11);
  OUTLINED_FUNCTION_260();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.scroll.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_289_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD47CC();
  OUTLINED_FUNCTION_42_5(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_224_2(v14);
  OUTLINED_FUNCTION_13_16();
  if (v15)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6088, &qword_1C8BFABB0);
LABEL_7:
    v19 = OUTLINED_FUNCTION_290_1();
    v20(v19);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_220();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 13)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  v17 = OUTLINED_FUNCTION_128_3();
  v18(v17);
LABEL_8:
  OUTLINED_FUNCTION_125();
}

void sub_1C89228F8()
{
  OUTLINED_FUNCTION_261();
  v3 = OUTLINED_FUNCTION_264_2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_222_2();
  v5 = v0(0);
  OUTLINED_FUNCTION_85_4(v5);
  if (v6)
  {
    v7 = OUTLINED_FUNCTION_373_0();
    sub_1C8778ED8(v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_611();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 14)
    {
      OUTLINED_FUNCTION_92_0();
      sub_1C88E3C58();
    }
  }

  sub_1C8BD47CC();
  OUTLINED_FUNCTION_121_0();
  v11 = OUTLINED_FUNCTION_218();
  v12(v11);
  OUTLINED_FUNCTION_260();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.undo.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_289_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD47CC();
  OUTLINED_FUNCTION_42_5(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_224_2(v14);
  OUTLINED_FUNCTION_13_16();
  if (v15)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6088, &qword_1C8BFABB0);
LABEL_7:
    v19 = OUTLINED_FUNCTION_290_1();
    v20(v19);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_220();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 14)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  v17 = OUTLINED_FUNCTION_128_3();
  v18(v17);
LABEL_8:
  OUTLINED_FUNCTION_125();
}

void sub_1C8922BD4()
{
  OUTLINED_FUNCTION_261();
  v3 = OUTLINED_FUNCTION_264_2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_222_2();
  v5 = v0(0);
  OUTLINED_FUNCTION_85_4(v5);
  if (v6)
  {
    v7 = OUTLINED_FUNCTION_373_0();
    sub_1C8778ED8(v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_611();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 15)
    {
      OUTLINED_FUNCTION_92_0();
      sub_1C88E3C58();
    }
  }

  sub_1C8BD47CC();
  OUTLINED_FUNCTION_121_0();
  v11 = OUTLINED_FUNCTION_218();
  v12(v11);
  OUTLINED_FUNCTION_260();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.zoom.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_289_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD47CC();
  OUTLINED_FUNCTION_42_5(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_224_2(v14);
  OUTLINED_FUNCTION_13_16();
  if (v15)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6088, &qword_1C8BFABB0);
LABEL_7:
    v19 = OUTLINED_FUNCTION_290_1();
    v20(v19);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_220();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 15)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  v17 = OUTLINED_FUNCTION_128_3();
  v18(v17);
LABEL_8:
  OUTLINED_FUNCTION_125();
}

void sub_1C8922EB0()
{
  OUTLINED_FUNCTION_261();
  v3 = OUTLINED_FUNCTION_264_2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_222_2();
  v5 = v0(0);
  OUTLINED_FUNCTION_85_4(v5);
  if (v6)
  {
    v7 = OUTLINED_FUNCTION_373_0();
    sub_1C8778ED8(v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_611();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 16)
    {
      OUTLINED_FUNCTION_92_0();
      sub_1C88E3C58();
    }
  }

  sub_1C8BD47CC();
  OUTLINED_FUNCTION_121_0();
  v11 = OUTLINED_FUNCTION_218();
  v12(v11);
  OUTLINED_FUNCTION_260();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.closeEntity.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_289_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD47CC();
  OUTLINED_FUNCTION_42_5(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_224_2(v14);
  OUTLINED_FUNCTION_13_16();
  if (v15)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6088, &qword_1C8BFABB0);
LABEL_7:
    v19 = OUTLINED_FUNCTION_290_1();
    v20(v19);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_220();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 16)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  v17 = OUTLINED_FUNCTION_128_3();
  v18(v17);
LABEL_8:
  OUTLINED_FUNCTION_125();
}

void sub_1C892318C()
{
  OUTLINED_FUNCTION_261();
  v3 = OUTLINED_FUNCTION_264_2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_222_2();
  v5 = v0(0);
  OUTLINED_FUNCTION_85_4(v5);
  if (v6)
  {
    v7 = OUTLINED_FUNCTION_373_0();
    sub_1C8778ED8(v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_611();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 17)
    {
      OUTLINED_FUNCTION_92_0();
      sub_1C88E3C58();
    }
  }

  sub_1C8BD47CC();
  OUTLINED_FUNCTION_121_0();
  v11 = OUTLINED_FUNCTION_218();
  v12(v11);
  OUTLINED_FUNCTION_260();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.createEntity.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_289_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD47CC();
  OUTLINED_FUNCTION_42_5(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_224_2(v14);
  OUTLINED_FUNCTION_13_16();
  if (v15)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6088, &qword_1C8BFABB0);
LABEL_7:
    v19 = OUTLINED_FUNCTION_290_1();
    v20(v19);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_220();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 17)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  v17 = OUTLINED_FUNCTION_128_3();
  v18(v17);
LABEL_8:
  OUTLINED_FUNCTION_125();
}

void sub_1C8923468()
{
  OUTLINED_FUNCTION_261();
  v3 = OUTLINED_FUNCTION_264_2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_222_2();
  v5 = v0(0);
  OUTLINED_FUNCTION_85_4(v5);
  if (v6)
  {
    v7 = OUTLINED_FUNCTION_373_0();
    sub_1C8778ED8(v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_611();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 18)
    {
      OUTLINED_FUNCTION_92_0();
      sub_1C88E3C58();
    }
  }

  sub_1C8BD47CC();
  OUTLINED_FUNCTION_121_0();
  v11 = OUTLINED_FUNCTION_218();
  v12(v11);
  OUTLINED_FUNCTION_260();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.cutEntity.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_289_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD47CC();
  OUTLINED_FUNCTION_42_5(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_224_2(v14);
  OUTLINED_FUNCTION_13_16();
  if (v15)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6088, &qword_1C8BFABB0);
LABEL_7:
    v19 = OUTLINED_FUNCTION_290_1();
    v20(v19);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_220();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 18)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  v17 = OUTLINED_FUNCTION_128_3();
  v18(v17);
LABEL_8:
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.deleteEntity.getter()
{
  OUTLINED_FUNCTION_93_1();
  v1 = OUTLINED_FUNCTION_253();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_122_2();
  OUTLINED_FUNCTION_32_10();
  if (v5)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    OUTLINED_FUNCTION_92_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 19)
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8BD47CC();
  OUTLINED_FUNCTION_121_0();
  v7 = OUTLINED_FUNCTION_218();
  return v8(v7);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.deleteEntity.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_289_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD47CC();
  OUTLINED_FUNCTION_42_5(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_224_2(v14);
  OUTLINED_FUNCTION_13_16();
  if (v15)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6088, &qword_1C8BFABB0);
LABEL_7:
    v19 = OUTLINED_FUNCTION_290_1();
    v20(v19);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_220();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 19)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  v17 = OUTLINED_FUNCTION_128_3();
  v18(v17);
LABEL_8:
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.duplicateEntity.getter()
{
  OUTLINED_FUNCTION_93_1();
  v1 = OUTLINED_FUNCTION_253();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_122_2();
  OUTLINED_FUNCTION_32_10();
  if (v5)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    OUTLINED_FUNCTION_92_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 20)
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8BD47CC();
  OUTLINED_FUNCTION_121_0();
  v7 = OUTLINED_FUNCTION_218();
  return v8(v7);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.duplicateEntity.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_289_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD47CC();
  OUTLINED_FUNCTION_42_5(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_224_2(v14);
  OUTLINED_FUNCTION_13_16();
  if (v15)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6088, &qword_1C8BFABB0);
LABEL_7:
    v19 = OUTLINED_FUNCTION_290_1();
    v20(v19);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_220();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 20)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  v17 = OUTLINED_FUNCTION_128_3();
  v18(v17);
LABEL_8:
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.favoriteEntity.getter()
{
  OUTLINED_FUNCTION_93_1();
  v1 = OUTLINED_FUNCTION_253();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_122_2();
  OUTLINED_FUNCTION_32_10();
  if (v5)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    OUTLINED_FUNCTION_92_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 21)
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8BD47CC();
  OUTLINED_FUNCTION_121_0();
  v7 = OUTLINED_FUNCTION_218();
  return v8(v7);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.favoriteEntity.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_289_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD47CC();
  OUTLINED_FUNCTION_42_5(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_224_2(v14);
  OUTLINED_FUNCTION_13_16();
  if (v15)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6088, &qword_1C8BFABB0);
LABEL_7:
    v19 = OUTLINED_FUNCTION_290_1();
    v20(v19);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_220();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 21)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  v17 = OUTLINED_FUNCTION_128_3();
  v18(v17);
LABEL_8:
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.openEntity.getter()
{
  OUTLINED_FUNCTION_93_1();
  v1 = OUTLINED_FUNCTION_253();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_122_2();
  OUTLINED_FUNCTION_32_10();
  if (v5)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    OUTLINED_FUNCTION_92_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 22)
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8BD47CC();
  OUTLINED_FUNCTION_121_0();
  v7 = OUTLINED_FUNCTION_218();
  return v8(v7);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.openEntity.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_289_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD47CC();
  OUTLINED_FUNCTION_42_5(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_224_2(v14);
  OUTLINED_FUNCTION_13_16();
  if (v15)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6088, &qword_1C8BFABB0);
LABEL_7:
    v19 = OUTLINED_FUNCTION_290_1();
    v20(v19);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_220();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 22)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  v17 = OUTLINED_FUNCTION_128_3();
  v18(v17);
LABEL_8:
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.previewEntity.getter()
{
  OUTLINED_FUNCTION_93_1();
  v1 = OUTLINED_FUNCTION_253();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_122_2();
  OUTLINED_FUNCTION_32_10();
  if (v5)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    OUTLINED_FUNCTION_92_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 23)
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8BD47CC();
  OUTLINED_FUNCTION_121_0();
  v7 = OUTLINED_FUNCTION_218();
  return v8(v7);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.previewEntity.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_289_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD47CC();
  OUTLINED_FUNCTION_42_5(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_224_2(v14);
  OUTLINED_FUNCTION_13_16();
  if (v15)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6088, &qword_1C8BFABB0);
LABEL_7:
    v19 = OUTLINED_FUNCTION_290_1();
    v20(v19);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_220();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 23)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  v17 = OUTLINED_FUNCTION_128_3();
  v18(v17);
LABEL_8:
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.saveEntity.getter()
{
  OUTLINED_FUNCTION_93_1();
  v1 = OUTLINED_FUNCTION_253();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_122_2();
  OUTLINED_FUNCTION_32_10();
  if (v5)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    OUTLINED_FUNCTION_92_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 24)
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8BD47CC();
  OUTLINED_FUNCTION_121_0();
  v7 = OUTLINED_FUNCTION_218();
  return v8(v7);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.saveEntity.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_289_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD47CC();
  OUTLINED_FUNCTION_42_5(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_224_2(v14);
  OUTLINED_FUNCTION_13_16();
  if (v15)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6088, &qword_1C8BFABB0);
LABEL_7:
    v19 = OUTLINED_FUNCTION_290_1();
    v20(v19);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_220();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 24)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  v17 = OUTLINED_FUNCTION_128_3();
  v18(v17);
LABEL_8:
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.putEntityInContainer.getter()
{
  OUTLINED_FUNCTION_93_1();
  v1 = OUTLINED_FUNCTION_253();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_122_2();
  OUTLINED_FUNCTION_32_10();
  if (v5)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    OUTLINED_FUNCTION_92_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 25)
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8BD47CC();
  OUTLINED_FUNCTION_121_0();
  v7 = OUTLINED_FUNCTION_218();
  return v8(v7);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.putEntityInContainer.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_289_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD47CC();
  OUTLINED_FUNCTION_42_5(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_224_2(v14);
  OUTLINED_FUNCTION_13_16();
  if (v15)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6088, &qword_1C8BFABB0);
LABEL_7:
    v19 = OUTLINED_FUNCTION_290_1();
    v20(v19);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_220();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 25)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  v17 = OUTLINED_FUNCTION_128_3();
  v18(v17);
LABEL_8:
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.playVideo.getter()
{
  OUTLINED_FUNCTION_93_1();
  v1 = OUTLINED_FUNCTION_253();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_122_2();
  OUTLINED_FUNCTION_32_10();
  if (v5)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    OUTLINED_FUNCTION_92_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 26)
    {
      OUTLINED_FUNCTION_165_2();
      OUTLINED_FUNCTION_5_0();
      return sub_1C88E3EC4();
    }

    sub_1C88E3C58();
  }

  v8 = OUTLINED_FUNCTION_143_1(MEMORY[0x1E69E7CC0]);
  v9 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.PlayVideo(v8);
  return OUTLINED_FUNCTION_260_1(v9);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.playVideo.setter()
{
  sub_1C8778ED8(v0, &qword_1EC2B6088, &qword_1C8BFABB0);
  OUTLINED_FUNCTION_165_2();
  OUTLINED_FUNCTION_218();
  sub_1C88E3EC4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.OneOf_SystemToolProtocolKind(0);
  OUTLINED_FUNCTION_48_4();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_34_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.playVideo.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_55_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_43_0(v7);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.PlayVideo(v8);
  OUTLINED_FUNCTION_40_2();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_110_0(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_232_2(v12);
  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.OneOf_SystemToolProtocolKind(0);
  OUTLINED_FUNCTION_35_5(v13);
  if (v14)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6088, &qword_1C8BFABB0);
LABEL_7:
    OUTLINED_FUNCTION_779(MEMORY[0x1E69E7CC0]);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_253();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 26)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_165_2();
  OUTLINED_FUNCTION_254_0();
  sub_1C88E3EC4();
LABEL_8:
  OUTLINED_FUNCTION_260();
}

void sub_1C8924D8C()
{
  OUTLINED_FUNCTION_32_6();
  if (v5)
  {
    OUTLINED_FUNCTION_184();
    sub_1C88E4144();
    sub_1C8778ED8(v4, &qword_1EC2B6088, &qword_1C8BFABB0);
    OUTLINED_FUNCTION_165_2();
    OUTLINED_FUNCTION_156_1();
    sub_1C88E3EC4();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_86_1();
    sub_1C88E3C58();
  }

  else
  {
    sub_1C8778ED8(v4, &qword_1EC2B6088, &qword_1C8BFABB0);
    OUTLINED_FUNCTION_165_2();
    OUTLINED_FUNCTION_268();
    sub_1C88E3EC4();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
  }

  free(v3);
  free(v2);
  free(v1);

  free(v0);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.audioStarting.getter()
{
  OUTLINED_FUNCTION_93_1();
  v1 = OUTLINED_FUNCTION_253();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_122_2();
  OUTLINED_FUNCTION_32_10();
  if (v5)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    OUTLINED_FUNCTION_92_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 27)
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8BD47CC();
  OUTLINED_FUNCTION_121_0();
  v7 = OUTLINED_FUNCTION_218();
  return v8(v7);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.audioStarting.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_289_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD47CC();
  OUTLINED_FUNCTION_42_5(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_224_2(v14);
  OUTLINED_FUNCTION_13_16();
  if (v15)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6088, &qword_1C8BFABB0);
LABEL_7:
    v19 = OUTLINED_FUNCTION_290_1();
    v20(v19);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_220();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 27)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  v17 = OUTLINED_FUNCTION_128_3();
  v18(v17);
LABEL_8:
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.audioRecording.getter()
{
  OUTLINED_FUNCTION_93_1();
  v1 = OUTLINED_FUNCTION_253();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_122_2();
  OUTLINED_FUNCTION_32_10();
  if (v5)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    OUTLINED_FUNCTION_92_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 28)
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8BD47CC();
  OUTLINED_FUNCTION_121_0();
  v7 = OUTLINED_FUNCTION_218();
  return v8(v7);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.audioRecording.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_289_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD47CC();
  OUTLINED_FUNCTION_42_5(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_224_2(v14);
  OUTLINED_FUNCTION_13_16();
  if (v15)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6088, &qword_1C8BFABB0);
LABEL_7:
    v19 = OUTLINED_FUNCTION_290_1();
    v20(v19);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_220();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 28)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  v17 = OUTLINED_FUNCTION_128_3();
  v18(v17);
LABEL_8:
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.pushToTalkTransmission.getter()
{
  OUTLINED_FUNCTION_93_1();
  v1 = OUTLINED_FUNCTION_253();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_122_2();
  OUTLINED_FUNCTION_32_10();
  if (v5)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    OUTLINED_FUNCTION_92_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 29)
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8BD47CC();
  OUTLINED_FUNCTION_121_0();
  v7 = OUTLINED_FUNCTION_218();
  return v8(v7);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.pushToTalkTransmission.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_289_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD47CC();
  OUTLINED_FUNCTION_42_5(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_224_2(v14);
  OUTLINED_FUNCTION_13_16();
  if (v15)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6088, &qword_1C8BFABB0);
LABEL_7:
    v19 = OUTLINED_FUNCTION_290_1();
    v20(v19);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_220();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 29)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  v17 = OUTLINED_FUNCTION_128_3();
  v18(v17);
LABEL_8:
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.startDive.getter()
{
  OUTLINED_FUNCTION_93_1();
  v1 = OUTLINED_FUNCTION_253();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_122_2();
  OUTLINED_FUNCTION_32_10();
  if (v5)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    OUTLINED_FUNCTION_92_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 30)
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8BD47CC();
  OUTLINED_FUNCTION_121_0();
  v7 = OUTLINED_FUNCTION_218();
  return v8(v7);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.startDive.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_289_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD47CC();
  OUTLINED_FUNCTION_42_5(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_224_2(v14);
  OUTLINED_FUNCTION_13_16();
  if (v15)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6088, &qword_1C8BFABB0);
LABEL_7:
    v19 = OUTLINED_FUNCTION_290_1();
    v20(v19);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_220();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 30)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  v17 = OUTLINED_FUNCTION_128_3();
  v18(v17);
LABEL_8:
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.startWorkout.getter()
{
  OUTLINED_FUNCTION_93_1();
  v1 = OUTLINED_FUNCTION_253();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_122_2();
  OUTLINED_FUNCTION_32_10();
  if (v5)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    OUTLINED_FUNCTION_92_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 31)
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8BD47CC();
  OUTLINED_FUNCTION_121_0();
  v7 = OUTLINED_FUNCTION_218();
  return v8(v7);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.startWorkout.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_289_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD47CC();
  OUTLINED_FUNCTION_42_5(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_224_2(v14);
  OUTLINED_FUNCTION_13_16();
  if (v15)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6088, &qword_1C8BFABB0);
LABEL_7:
    v19 = OUTLINED_FUNCTION_290_1();
    v20(v19);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_220();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 31)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  v17 = OUTLINED_FUNCTION_128_3();
  v18(v17);
LABEL_8:
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.pauseWorkout.getter()
{
  OUTLINED_FUNCTION_93_1();
  v1 = OUTLINED_FUNCTION_253();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_122_2();
  OUTLINED_FUNCTION_32_10();
  if (v5)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    OUTLINED_FUNCTION_92_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 32)
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8BD47CC();
  OUTLINED_FUNCTION_121_0();
  v7 = OUTLINED_FUNCTION_218();
  return v8(v7);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.pauseWorkout.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_289_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD47CC();
  OUTLINED_FUNCTION_42_5(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_224_2(v14);
  OUTLINED_FUNCTION_13_16();
  if (v15)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6088, &qword_1C8BFABB0);
LABEL_7:
    v19 = OUTLINED_FUNCTION_290_1();
    v20(v19);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_220();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 32)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  v17 = OUTLINED_FUNCTION_128_3();
  v18(v17);
LABEL_8:
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.resumeWorkout.getter()
{
  OUTLINED_FUNCTION_93_1();
  v1 = OUTLINED_FUNCTION_253();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_122_2();
  OUTLINED_FUNCTION_32_10();
  if (v5)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    OUTLINED_FUNCTION_92_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 33)
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8BD47CC();
  OUTLINED_FUNCTION_121_0();
  v7 = OUTLINED_FUNCTION_218();
  return v8(v7);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.resumeWorkout.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_289_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD47CC();
  OUTLINED_FUNCTION_42_5(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_224_2(v14);
  OUTLINED_FUNCTION_13_16();
  if (v15)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6088, &qword_1C8BFABB0);
LABEL_7:
    v19 = OUTLINED_FUNCTION_290_1();
    v20(v19);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_220();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 33)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  v17 = OUTLINED_FUNCTION_128_3();
  v18(v17);
LABEL_8:
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.enterMarkup.getter()
{
  OUTLINED_FUNCTION_93_1();
  v1 = OUTLINED_FUNCTION_253();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_122_2();
  OUTLINED_FUNCTION_32_10();
  if (v5)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    OUTLINED_FUNCTION_92_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 34)
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8BD47CC();
  OUTLINED_FUNCTION_121_0();
  v7 = OUTLINED_FUNCTION_218();
  return v8(v7);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.enterMarkup.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_289_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD47CC();
  OUTLINED_FUNCTION_42_5(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_224_2(v14);
  OUTLINED_FUNCTION_13_16();
  if (v15)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6088, &qword_1C8BFABB0);
LABEL_7:
    v19 = OUTLINED_FUNCTION_290_1();
    v20(v19);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_220();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 34)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  v17 = OUTLINED_FUNCTION_128_3();
  v18(v17);
LABEL_8:
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.exitMarkup.getter()
{
  OUTLINED_FUNCTION_93_1();
  v1 = OUTLINED_FUNCTION_253();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_122_2();
  OUTLINED_FUNCTION_32_10();
  if (v5)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    OUTLINED_FUNCTION_92_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 35)
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8BD47CC();
  OUTLINED_FUNCTION_121_0();
  v7 = OUTLINED_FUNCTION_218();
  return v8(v7);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.exitMarkup.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_289_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD47CC();
  OUTLINED_FUNCTION_42_5(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_224_2(v14);
  OUTLINED_FUNCTION_13_16();
  if (v15)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6088, &qword_1C8BFABB0);
LABEL_7:
    v19 = OUTLINED_FUNCTION_290_1();
    v20(v19);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_220();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 35)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  v17 = OUTLINED_FUNCTION_128_3();
  v18(v17);
LABEL_8:
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.focusConfiguration.getter()
{
  OUTLINED_FUNCTION_93_1();
  v1 = OUTLINED_FUNCTION_253();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_122_2();
  OUTLINED_FUNCTION_32_10();
  if (v5)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    OUTLINED_FUNCTION_92_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 36)
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8BD47CC();
  OUTLINED_FUNCTION_121_0();
  v7 = OUTLINED_FUNCTION_218();
  return v8(v7);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.focusConfiguration.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_289_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD47CC();
  OUTLINED_FUNCTION_42_5(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_224_2(v14);
  OUTLINED_FUNCTION_13_16();
  if (v15)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6088, &qword_1C8BFABB0);
LABEL_7:
    v19 = OUTLINED_FUNCTION_290_1();
    v20(v19);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_220();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 36)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  v17 = OUTLINED_FUNCTION_128_3();
  v18(v17);
LABEL_8:
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.widgetConfiguration.getter()
{
  OUTLINED_FUNCTION_93_1();
  v1 = OUTLINED_FUNCTION_253();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_122_2();
  OUTLINED_FUNCTION_32_10();
  if (v5)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    OUTLINED_FUNCTION_92_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 37)
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8BD47CC();
  OUTLINED_FUNCTION_121_0();
  v7 = OUTLINED_FUNCTION_218();
  return v8(v7);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.widgetConfiguration.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_289_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD47CC();
  OUTLINED_FUNCTION_42_5(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_224_2(v14);
  OUTLINED_FUNCTION_13_16();
  if (v15)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6088, &qword_1C8BFABB0);
LABEL_7:
    v19 = OUTLINED_FUNCTION_290_1();
    v20(v19);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_220();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 37)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  v17 = OUTLINED_FUNCTION_128_3();
  v18(v17);
LABEL_8:
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.search.getter()
{
  OUTLINED_FUNCTION_93_1();
  v1 = OUTLINED_FUNCTION_253();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_122_2();
  OUTLINED_FUNCTION_32_10();
  if (v5)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    OUTLINED_FUNCTION_92_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 38)
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8BD47CC();
  OUTLINED_FUNCTION_121_0();
  v7 = OUTLINED_FUNCTION_218();
  return v8(v7);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.search.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_289_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD47CC();
  OUTLINED_FUNCTION_42_5(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_224_2(v14);
  OUTLINED_FUNCTION_13_16();
  if (v15)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6088, &qword_1C8BFABB0);
LABEL_7:
    v19 = OUTLINED_FUNCTION_290_1();
    v20(v19);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_220();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 38)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  v17 = OUTLINED_FUNCTION_128_3();
  v18(v17);
LABEL_8:
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.showSearchResultsInApp.getter()
{
  OUTLINED_FUNCTION_93_1();
  v1 = OUTLINED_FUNCTION_253();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_122_2();
  OUTLINED_FUNCTION_32_10();
  if (v5)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    OUTLINED_FUNCTION_92_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 39)
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8BD47CC();
  OUTLINED_FUNCTION_121_0();
  v7 = OUTLINED_FUNCTION_218();
  return v8(v7);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.showSearchResultsInApp.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_289_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD47CC();
  OUTLINED_FUNCTION_42_5(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_224_2(v14);
  OUTLINED_FUNCTION_13_16();
  if (v15)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6088, &qword_1C8BFABB0);
LABEL_7:
    v19 = OUTLINED_FUNCTION_290_1();
    v20(v19);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_220();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 39)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  v17 = OUTLINED_FUNCTION_128_3();
  v18(v17);
LABEL_8:
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.showStringSearchResultsInApp.getter()
{
  OUTLINED_FUNCTION_93_1();
  v1 = OUTLINED_FUNCTION_253();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_122_2();
  OUTLINED_FUNCTION_32_10();
  if (v5)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    OUTLINED_FUNCTION_92_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 40)
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8BD47CC();
  OUTLINED_FUNCTION_121_0();
  v7 = OUTLINED_FUNCTION_218();
  return v8(v7);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.showStringSearchResultsInApp.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_289_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD47CC();
  OUTLINED_FUNCTION_42_5(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_224_2(v14);
  OUTLINED_FUNCTION_13_16();
  if (v15)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6088, &qword_1C8BFABB0);
LABEL_7:
    v19 = OUTLINED_FUNCTION_290_1();
    v20(v19);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_220();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 40)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  v17 = OUTLINED_FUNCTION_128_3();
  v18(v17);
LABEL_8:
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.showInAppSearchResults.getter()
{
  OUTLINED_FUNCTION_93_1();
  v1 = OUTLINED_FUNCTION_253();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_122_2();
  OUTLINED_FUNCTION_32_10();
  if (v5)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    OUTLINED_FUNCTION_92_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 41)
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8BD47CC();
  OUTLINED_FUNCTION_121_0();
  v7 = OUTLINED_FUNCTION_218();
  return v8(v7);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.showInAppSearchResults.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_289_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD47CC();
  OUTLINED_FUNCTION_42_5(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_224_2(v14);
  OUTLINED_FUNCTION_13_16();
  if (v15)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6088, &qword_1C8BFABB0);
LABEL_7:
    v19 = OUTLINED_FUNCTION_290_1();
    v20(v19);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_220();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 41)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  v17 = OUTLINED_FUNCTION_128_3();
  v18(v17);
LABEL_8:
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.showInAppStringSearchResults.getter()
{
  OUTLINED_FUNCTION_93_1();
  v1 = OUTLINED_FUNCTION_253();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_122_2();
  OUTLINED_FUNCTION_32_10();
  if (v5)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    OUTLINED_FUNCTION_92_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 42)
    {
      OUTLINED_FUNCTION_164_3();
      OUTLINED_FUNCTION_5_0();
      return sub_1C88E3EC4();
    }

    sub_1C88E3C58();
  }

  v8 = OUTLINED_FUNCTION_143_1(MEMORY[0x1E69E7CC0]);
  v9 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.ShowInAppStringSearchResults(v8);
  return OUTLINED_FUNCTION_260_1(v9);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.showInAppStringSearchResults.setter()
{
  sub_1C8778ED8(v0, &qword_1EC2B6088, &qword_1C8BFABB0);
  OUTLINED_FUNCTION_164_3();
  OUTLINED_FUNCTION_218();
  sub_1C88E3EC4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.OneOf_SystemToolProtocolKind(0);
  OUTLINED_FUNCTION_48_4();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_34_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.showInAppStringSearchResults.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_55_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_43_0(v7);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.ShowInAppStringSearchResults(v8);
  OUTLINED_FUNCTION_40_2();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_110_0(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_232_2(v12);
  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.OneOf_SystemToolProtocolKind(0);
  OUTLINED_FUNCTION_35_5(v13);
  if (v14)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6088, &qword_1C8BFABB0);
LABEL_7:
    OUTLINED_FUNCTION_779(MEMORY[0x1E69E7CC0]);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_253();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 42)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_164_3();
  OUTLINED_FUNCTION_254_0();
  sub_1C88E3EC4();
LABEL_8:
  OUTLINED_FUNCTION_260();
}

void sub_1C8927BD0()
{
  OUTLINED_FUNCTION_32_6();
  if (v5)
  {
    OUTLINED_FUNCTION_184();
    sub_1C88E4144();
    sub_1C8778ED8(v4, &qword_1EC2B6088, &qword_1C8BFABB0);
    OUTLINED_FUNCTION_164_3();
    OUTLINED_FUNCTION_156_1();
    sub_1C88E3EC4();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_86_1();
    sub_1C88E3C58();
  }

  else
  {
    sub_1C8778ED8(v4, &qword_1EC2B6088, &qword_1C8BFABB0);
    OUTLINED_FUNCTION_164_3();
    OUTLINED_FUNCTION_268();
    sub_1C88E3EC4();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
  }

  free(v3);
  free(v2);
  free(v1);

  free(v0);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.moveSpatial.getter()
{
  OUTLINED_FUNCTION_93_1();
  v1 = OUTLINED_FUNCTION_253();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_122_2();
  OUTLINED_FUNCTION_32_10();
  if (v5)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    OUTLINED_FUNCTION_92_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 43)
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8BD47CC();
  OUTLINED_FUNCTION_121_0();
  v7 = OUTLINED_FUNCTION_218();
  return v8(v7);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.moveSpatial.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_289_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD47CC();
  OUTLINED_FUNCTION_42_5(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_224_2(v14);
  OUTLINED_FUNCTION_13_16();
  if (v15)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6088, &qword_1C8BFABB0);
LABEL_7:
    v19 = OUTLINED_FUNCTION_290_1();
    v20(v19);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_220();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 43)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  v17 = OUTLINED_FUNCTION_128_3();
  v18(v17);
LABEL_8:
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.navigateSequentially.getter()
{
  OUTLINED_FUNCTION_93_1();
  v1 = OUTLINED_FUNCTION_253();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_122_2();
  OUTLINED_FUNCTION_32_10();
  if (v5)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    OUTLINED_FUNCTION_92_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 44)
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8BD47CC();
  OUTLINED_FUNCTION_121_0();
  v7 = OUTLINED_FUNCTION_218();
  return v8(v7);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.navigateSequentially.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_289_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD47CC();
  OUTLINED_FUNCTION_42_5(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_224_2(v14);
  OUTLINED_FUNCTION_13_16();
  if (v15)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6088, &qword_1C8BFABB0);
LABEL_7:
    v19 = OUTLINED_FUNCTION_290_1();
    v20(v19);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_220();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 44)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  v17 = OUTLINED_FUNCTION_128_3();
  v18(v17);
LABEL_8:
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.sting.getter()
{
  OUTLINED_FUNCTION_93_1();
  v1 = OUTLINED_FUNCTION_253();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_122_2();
  OUTLINED_FUNCTION_32_10();
  if (v5)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    OUTLINED_FUNCTION_92_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 45)
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8BD47CC();
  OUTLINED_FUNCTION_121_0();
  v7 = OUTLINED_FUNCTION_218();
  return v8(v7);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.sting.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_289_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD47CC();
  OUTLINED_FUNCTION_42_5(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_224_2(v14);
  OUTLINED_FUNCTION_13_16();
  if (v15)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6088, &qword_1C8BFABB0);
LABEL_7:
    v19 = OUTLINED_FUNCTION_290_1();
    v20(v19);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_220();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 45)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  v17 = OUTLINED_FUNCTION_128_3();
  v18(v17);
LABEL_8:
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.toggle.getter()
{
  OUTLINED_FUNCTION_93_1();
  v1 = OUTLINED_FUNCTION_253();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_122_2();
  OUTLINED_FUNCTION_32_10();
  if (v5)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    OUTLINED_FUNCTION_92_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 46)
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8BD47CC();
  OUTLINED_FUNCTION_121_0();
  v7 = OUTLINED_FUNCTION_218();
  return v8(v7);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.toggle.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_289_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD47CC();
  OUTLINED_FUNCTION_42_5(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_224_2(v14);
  OUTLINED_FUNCTION_13_16();
  if (v15)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6088, &qword_1C8BFABB0);
LABEL_7:
    v19 = OUTLINED_FUNCTION_290_1();
    v20(v19);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_220();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 46)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  v17 = OUTLINED_FUNCTION_128_3();
  v18(v17);
LABEL_8:
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.cameraCapture.getter()
{
  OUTLINED_FUNCTION_93_1();
  v1 = OUTLINED_FUNCTION_253();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_122_2();
  OUTLINED_FUNCTION_32_10();
  if (v5)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    OUTLINED_FUNCTION_92_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 47)
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8BD47CC();
  OUTLINED_FUNCTION_121_0();
  v7 = OUTLINED_FUNCTION_218();
  return v8(v7);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.cameraCapture.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_289_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD47CC();
  OUTLINED_FUNCTION_42_5(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_224_2(v14);
  OUTLINED_FUNCTION_13_16();
  if (v15)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6088, &qword_1C8BFABB0);
LABEL_7:
    v19 = OUTLINED_FUNCTION_290_1();
    v20(v19);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_220();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 47)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  v17 = OUTLINED_FUNCTION_128_3();
  v18(v17);
LABEL_8:
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.staccatoLongPress.getter()
{
  OUTLINED_FUNCTION_93_1();
  v1 = OUTLINED_FUNCTION_253();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_122_2();
  OUTLINED_FUNCTION_32_10();
  if (v5)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    OUTLINED_FUNCTION_92_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 48)
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8BD47CC();
  OUTLINED_FUNCTION_121_0();
  v7 = OUTLINED_FUNCTION_218();
  return v8(v7);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.staccatoLongPress.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_289_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD47CC();
  OUTLINED_FUNCTION_42_5(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_224_2(v14);
  OUTLINED_FUNCTION_13_16();
  if (v15)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6088, &qword_1C8BFABB0);
LABEL_7:
    v19 = OUTLINED_FUNCTION_290_1();
    v20(v19);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_220();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 48)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  v17 = OUTLINED_FUNCTION_128_3();
  v18(v17);
LABEL_8:
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.entityUpdating.getter()
{
  OUTLINED_FUNCTION_93_1();
  v1 = OUTLINED_FUNCTION_253();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_122_2();
  OUTLINED_FUNCTION_32_10();
  if (v5)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    OUTLINED_FUNCTION_92_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 49)
    {
      OUTLINED_FUNCTION_163_3();
      OUTLINED_FUNCTION_5_0();
      return sub_1C88E3EC4();
    }

    sub_1C88E3C58();
  }

  v8 = OUTLINED_FUNCTION_402_0();
  v9 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.EntityUpdating(v8);
  return OUTLINED_FUNCTION_260_1(v9);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.entityUpdating.setter()
{
  sub_1C8778ED8(v0, &qword_1EC2B6088, &qword_1C8BFABB0);
  OUTLINED_FUNCTION_163_3();
  OUTLINED_FUNCTION_218();
  sub_1C88E3EC4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.OneOf_SystemToolProtocolKind(0);
  OUTLINED_FUNCTION_48_4();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_34_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.entityUpdating.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_55_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_43_0(v7);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.EntityUpdating(v8);
  OUTLINED_FUNCTION_40_2();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_110_0(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_232_2(v12);
  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.OneOf_SystemToolProtocolKind(0);
  OUTLINED_FUNCTION_35_5(v13);
  if (v14)
  {
    v15 = sub_1C8778ED8(v0, &qword_1EC2B6088, &qword_1C8BFABB0);
LABEL_7:
    OUTLINED_FUNCTION_569(v15);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_253();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 49)
  {
    v15 = sub_1C88E3C58();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_163_3();
  OUTLINED_FUNCTION_254_0();
  sub_1C88E3EC4();
LABEL_8:
  OUTLINED_FUNCTION_260();
}

void sub_1C892906C()
{
  OUTLINED_FUNCTION_32_6();
  if (v5)
  {
    OUTLINED_FUNCTION_184();
    sub_1C88E4144();
    sub_1C8778ED8(v4, &qword_1EC2B6088, &qword_1C8BFABB0);
    OUTLINED_FUNCTION_163_3();
    OUTLINED_FUNCTION_156_1();
    sub_1C88E3EC4();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_86_1();
    sub_1C88E3C58();
  }

  else
  {
    sub_1C8778ED8(v4, &qword_1EC2B6088, &qword_1C8BFABB0);
    OUTLINED_FUNCTION_163_3();
    OUTLINED_FUNCTION_268();
    sub_1C88E3EC4();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
  }

  free(v3);
  free(v2);
  free(v1);

  free(v0);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.propertyUpdater.getter()
{
  OUTLINED_FUNCTION_93_1();
  v1 = OUTLINED_FUNCTION_253();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_122_2();
  OUTLINED_FUNCTION_32_10();
  if (v5)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    OUTLINED_FUNCTION_92_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 50)
    {
      OUTLINED_FUNCTION_162_1();
      OUTLINED_FUNCTION_5_0();
      return sub_1C88E3EC4();
    }

    sub_1C88E3C58();
  }

  OUTLINED_FUNCTION_433();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.PropertyUpdater(0);
  return OUTLINED_FUNCTION_979(v8);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.propertyUpdater.setter()
{
  sub_1C8778ED8(v0, &qword_1EC2B6088, &qword_1C8BFABB0);
  OUTLINED_FUNCTION_162_1();
  OUTLINED_FUNCTION_218();
  sub_1C88E3EC4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.OneOf_SystemToolProtocolKind(0);
  OUTLINED_FUNCTION_48_4();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_34_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.propertyUpdater.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_55_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_43_0(v7);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.PropertyUpdater(v8);
  OUTLINED_FUNCTION_40_2();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_110_0(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_232_2(v12);
  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.OneOf_SystemToolProtocolKind(0);
  OUTLINED_FUNCTION_35_5(v13);
  if (v14)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6088, &qword_1C8BFABB0);
LABEL_7:
    OUTLINED_FUNCTION_568();
    OUTLINED_FUNCTION_795();
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_253();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 50)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_162_1();
  OUTLINED_FUNCTION_254_0();
  sub_1C88E3EC4();
LABEL_8:
  OUTLINED_FUNCTION_260();
}

void sub_1C8929404()
{
  OUTLINED_FUNCTION_32_6();
  if (v5)
  {
    OUTLINED_FUNCTION_184();
    sub_1C88E4144();
    sub_1C8778ED8(v4, &qword_1EC2B6088, &qword_1C8BFABB0);
    OUTLINED_FUNCTION_162_1();
    OUTLINED_FUNCTION_156_1();
    sub_1C88E3EC4();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_86_1();
    sub_1C88E3C58();
  }

  else
  {
    sub_1C8778ED8(v4, &qword_1EC2B6088, &qword_1C8BFABB0);
    OUTLINED_FUNCTION_162_1();
    OUTLINED_FUNCTION_268();
    sub_1C88E3EC4();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
  }

  free(v3);
  free(v2);
  free(v1);

  free(v0);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.sendMail.getter()
{
  OUTLINED_FUNCTION_93_1();
  v1 = OUTLINED_FUNCTION_253();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_122_2();
  OUTLINED_FUNCTION_32_10();
  if (v5)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    OUTLINED_FUNCTION_92_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 51)
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8BD47CC();
  OUTLINED_FUNCTION_121_0();
  v7 = OUTLINED_FUNCTION_218();
  return v8(v7);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.sendMail.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_289_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD47CC();
  OUTLINED_FUNCTION_42_5(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_224_2(v14);
  OUTLINED_FUNCTION_13_16();
  if (v15)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6088, &qword_1C8BFABB0);
LABEL_7:
    v19 = OUTLINED_FUNCTION_290_1();
    v20(v19);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_220();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 51)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  v17 = OUTLINED_FUNCTION_128_3();
  v18(v17);
LABEL_8:
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.setMailMessageIsRead.getter()
{
  OUTLINED_FUNCTION_93_1();
  v1 = OUTLINED_FUNCTION_253();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_122_2();
  OUTLINED_FUNCTION_32_10();
  if (v5)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    OUTLINED_FUNCTION_92_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 52)
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8BD47CC();
  OUTLINED_FUNCTION_121_0();
  v7 = OUTLINED_FUNCTION_218();
  return v8(v7);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.setMailMessageIsRead.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_289_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD47CC();
  OUTLINED_FUNCTION_42_5(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_224_2(v14);
  OUTLINED_FUNCTION_13_16();
  if (v15)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6088, &qword_1C8BFABB0);
LABEL_7:
    v19 = OUTLINED_FUNCTION_290_1();
    v20(v19);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_220();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 52)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  v17 = OUTLINED_FUNCTION_128_3();
  v18(v17);
LABEL_8:
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.siriKitIntent.getter()
{
  OUTLINED_FUNCTION_93_1();
  v1 = OUTLINED_FUNCTION_253();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_122_2();
  OUTLINED_FUNCTION_32_10();
  if (v5)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    OUTLINED_FUNCTION_92_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 53)
    {
      OUTLINED_FUNCTION_161_3();
      OUTLINED_FUNCTION_5_0();
      return sub_1C88E3EC4();
    }

    sub_1C88E3C58();
  }

  v8 = OUTLINED_FUNCTION_402_0();
  v9 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.SiriKitIntent(v8);
  return OUTLINED_FUNCTION_260_1(v9);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.siriKitIntent.setter()
{
  sub_1C8778ED8(v0, &qword_1EC2B6088, &qword_1C8BFABB0);
  OUTLINED_FUNCTION_161_3();
  OUTLINED_FUNCTION_218();
  sub_1C88E3EC4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.OneOf_SystemToolProtocolKind(0);
  OUTLINED_FUNCTION_48_4();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_34_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.siriKitIntent.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_55_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_43_0(v7);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.SiriKitIntent(v8);
  OUTLINED_FUNCTION_40_2();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_110_0(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_232_2(v12);
  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.OneOf_SystemToolProtocolKind(0);
  OUTLINED_FUNCTION_35_5(v13);
  if (v14)
  {
    v15 = sub_1C8778ED8(v0, &qword_1EC2B6088, &qword_1C8BFABB0);
LABEL_7:
    OUTLINED_FUNCTION_569(v15);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_253();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 53)
  {
    v15 = sub_1C88E3C58();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_161_3();
  OUTLINED_FUNCTION_254_0();
  sub_1C88E3EC4();
LABEL_8:
  OUTLINED_FUNCTION_260();
}

void sub_1C8929D40()
{
  OUTLINED_FUNCTION_32_6();
  if (v5)
  {
    OUTLINED_FUNCTION_184();
    sub_1C88E4144();
    sub_1C8778ED8(v4, &qword_1EC2B6088, &qword_1C8BFABB0);
    OUTLINED_FUNCTION_161_3();
    OUTLINED_FUNCTION_156_1();
    sub_1C88E3EC4();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_86_1();
    sub_1C88E3C58();
  }

  else
  {
    sub_1C8778ED8(v4, &qword_1EC2B6088, &qword_1C8BFABB0);
    OUTLINED_FUNCTION_161_3();
    OUTLINED_FUNCTION_268();
    sub_1C88E3EC4();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
  }

  free(v3);
  free(v2);
  free(v1);

  free(v0);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.intentSideEffect.getter()
{
  OUTLINED_FUNCTION_93_1();
  v1 = OUTLINED_FUNCTION_253();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_122_2();
  OUTLINED_FUNCTION_32_10();
  if (v5)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    OUTLINED_FUNCTION_92_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 54)
    {
      OUTLINED_FUNCTION_160_2();
      OUTLINED_FUNCTION_5_0();
      return sub_1C88E3EC4();
    }

    sub_1C88E3C58();
  }

  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.IntentSideEffect.OneOf_IntentSideEffectKind(0);
  v9 = OUTLINED_FUNCTION_369_0(v8);
  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.IntentSideEffect(v9);
  return OUTLINED_FUNCTION_260_1(v10);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.intentSideEffect.setter()
{
  sub_1C8778ED8(v0, &qword_1EC2B6088, &qword_1C8BFABB0);
  OUTLINED_FUNCTION_160_2();
  OUTLINED_FUNCTION_218();
  sub_1C88E3EC4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.OneOf_SystemToolProtocolKind(0);
  OUTLINED_FUNCTION_48_4();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_34_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.intentSideEffect.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_55_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_43_0(v7);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.IntentSideEffect(v8);
  OUTLINED_FUNCTION_40_2();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_110_0(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_232_2(v12);
  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.OneOf_SystemToolProtocolKind(0);
  OUTLINED_FUNCTION_35_5(v13);
  if (v14)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6088, &qword_1C8BFABB0);
LABEL_7:
    type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.IntentSideEffect.OneOf_IntentSideEffectKind(0);
    v16 = OUTLINED_FUNCTION_117();
    OUTLINED_FUNCTION_262_2(v16, v17, v18, v19);
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_253();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 54)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_160_2();
  OUTLINED_FUNCTION_254_0();
  sub_1C88E3EC4();
LABEL_8:
  OUTLINED_FUNCTION_260();
}

void sub_1C892A0FC()
{
  OUTLINED_FUNCTION_32_6();
  if (v5)
  {
    OUTLINED_FUNCTION_184();
    sub_1C88E4144();
    sub_1C8778ED8(v4, &qword_1EC2B6088, &qword_1C8BFABB0);
    OUTLINED_FUNCTION_160_2();
    OUTLINED_FUNCTION_156_1();
    sub_1C88E3EC4();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_86_1();
    sub_1C88E3C58();
  }

  else
  {
    sub_1C8778ED8(v4, &qword_1EC2B6088, &qword_1C8BFABB0);
    OUTLINED_FUNCTION_160_2();
    OUTLINED_FUNCTION_268();
    sub_1C88E3EC4();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
  }

  free(v3);
  free(v2);
  free(v1);

  free(v0);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.assistantSchema.getter()
{
  OUTLINED_FUNCTION_93_1();
  v1 = OUTLINED_FUNCTION_253();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_122_2();
  OUTLINED_FUNCTION_32_10();
  if (v5)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    OUTLINED_FUNCTION_92_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 55)
    {
      OUTLINED_FUNCTION_159_2();
      OUTLINED_FUNCTION_5_0();
      return sub_1C88E3EC4();
    }

    sub_1C88E3C58();
  }

  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.AssistantSchema(0);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantSchemaIdentifier(0);
  v8 = OUTLINED_FUNCTION_27_1();
  return __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.assistantSchema.setter()
{
  sub_1C8778ED8(v0, &qword_1EC2B6088, &qword_1C8BFABB0);
  OUTLINED_FUNCTION_159_2();
  OUTLINED_FUNCTION_218();
  sub_1C88E3EC4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.OneOf_SystemToolProtocolKind(0);
  OUTLINED_FUNCTION_48_4();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_34_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_1C892A378(void (*a1)(void))
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  a1(0);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantSchemaIdentifier(0);
  OUTLINED_FUNCTION_5();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.assistantSchema.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_55_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_43_0(v7);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.AssistantSchema(v8);
  OUTLINED_FUNCTION_40_2();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_110_0(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_232_2(v12);
  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.OneOf_SystemToolProtocolKind(0);
  OUTLINED_FUNCTION_35_5(v13);
  if (v14)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6088, &qword_1C8BFABB0);
LABEL_7:
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantSchemaIdentifier(0);
    v16 = OUTLINED_FUNCTION_257_2();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_253();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 55)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_159_2();
  OUTLINED_FUNCTION_254_0();
  sub_1C88E3EC4();
LABEL_8:
  OUTLINED_FUNCTION_260();
}

void sub_1C892A514()
{
  OUTLINED_FUNCTION_32_6();
  if (v5)
  {
    OUTLINED_FUNCTION_184();
    sub_1C88E4144();
    sub_1C8778ED8(v4, &qword_1EC2B6088, &qword_1C8BFABB0);
    OUTLINED_FUNCTION_159_2();
    OUTLINED_FUNCTION_156_1();
    sub_1C88E3EC4();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_86_1();
    sub_1C88E3C58();
  }

  else
  {
    sub_1C8778ED8(v4, &qword_1EC2B6088, &qword_1C8BFABB0);
    OUTLINED_FUNCTION_159_2();
    OUTLINED_FUNCTION_268();
    sub_1C88E3EC4();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
  }

  free(v3);
  free(v2);
  free(v1);

  free(v0);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.rewriteWritingTool.getter()
{
  OUTLINED_FUNCTION_93_1();
  v1 = OUTLINED_FUNCTION_253();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_122_2();
  OUTLINED_FUNCTION_32_10();
  if (v5)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    OUTLINED_FUNCTION_92_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 56)
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8BD47CC();
  OUTLINED_FUNCTION_121_0();
  v7 = OUTLINED_FUNCTION_218();
  return v8(v7);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.rewriteWritingTool.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_289_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD47CC();
  OUTLINED_FUNCTION_42_5(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_224_2(v14);
  OUTLINED_FUNCTION_13_16();
  if (v15)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6088, &qword_1C8BFABB0);
LABEL_7:
    v19 = OUTLINED_FUNCTION_290_1();
    v20(v19);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_220();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 56)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  v17 = OUTLINED_FUNCTION_128_3();
  v18(v17);
LABEL_8:
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.proofreadWritingTool.getter()
{
  OUTLINED_FUNCTION_93_1();
  v1 = OUTLINED_FUNCTION_253();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_122_2();
  OUTLINED_FUNCTION_32_10();
  if (v5)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    OUTLINED_FUNCTION_92_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 57)
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8BD47CC();
  OUTLINED_FUNCTION_121_0();
  v7 = OUTLINED_FUNCTION_218();
  return v8(v7);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.proofreadWritingTool.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_289_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD47CC();
  OUTLINED_FUNCTION_42_5(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_224_2(v14);
  OUTLINED_FUNCTION_13_16();
  if (v15)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6088, &qword_1C8BFABB0);
LABEL_7:
    v19 = OUTLINED_FUNCTION_290_1();
    v20(v19);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_220();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 57)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  v17 = OUTLINED_FUNCTION_128_3();
  v18(v17);
LABEL_8:
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.assistantInvocable.getter()
{
  OUTLINED_FUNCTION_93_1();
  v1 = OUTLINED_FUNCTION_253();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_122_2();
  OUTLINED_FUNCTION_32_10();
  if (v5)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    OUTLINED_FUNCTION_92_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 58)
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8BD47CC();
  OUTLINED_FUNCTION_121_0();
  v7 = OUTLINED_FUNCTION_218();
  return v8(v7);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.assistantInvocable.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_289_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD47CC();
  OUTLINED_FUNCTION_42_5(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_224_2(v14);
  OUTLINED_FUNCTION_13_16();
  if (v15)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6088, &qword_1C8BFABB0);
LABEL_7:
    v19 = OUTLINED_FUNCTION_290_1();
    v20(v19);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_220();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 58)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  v17 = OUTLINED_FUNCTION_128_3();
  v18(v17);
LABEL_8:
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.appIntent.getter()
{
  OUTLINED_FUNCTION_93_1();
  v1 = OUTLINED_FUNCTION_253();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_122_2();
  OUTLINED_FUNCTION_32_10();
  if (v5)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    OUTLINED_FUNCTION_92_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 59)
    {
      OUTLINED_FUNCTION_158_3();
      OUTLINED_FUNCTION_5_0();
      return sub_1C88E3EC4();
    }

    sub_1C88E3C58();
  }

  v8 = OUTLINED_FUNCTION_402_0();
  v9 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.AppIntent(v8);
  return OUTLINED_FUNCTION_260_1(v9);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.appIntent.setter()
{
  sub_1C8778ED8(v0, &qword_1EC2B6088, &qword_1C8BFABB0);
  OUTLINED_FUNCTION_158_3();
  OUTLINED_FUNCTION_218();
  sub_1C88E3EC4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.OneOf_SystemToolProtocolKind(0);
  OUTLINED_FUNCTION_48_4();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_34_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.appIntent.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_55_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_43_0(v7);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.AppIntent(v8);
  OUTLINED_FUNCTION_40_2();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_110_0(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_232_2(v12);
  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.OneOf_SystemToolProtocolKind(0);
  OUTLINED_FUNCTION_35_5(v13);
  if (v14)
  {
    v15 = sub_1C8778ED8(v0, &qword_1EC2B6088, &qword_1C8BFABB0);
LABEL_7:
    OUTLINED_FUNCTION_569(v15);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_253();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 59)
  {
    v15 = sub_1C88E3C58();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_158_3();
  OUTLINED_FUNCTION_254_0();
  sub_1C88E3EC4();
LABEL_8:
  OUTLINED_FUNCTION_260();
}

void sub_1C892B128()
{
  OUTLINED_FUNCTION_32_6();
  if (v5)
  {
    OUTLINED_FUNCTION_184();
    sub_1C88E4144();
    sub_1C8778ED8(v4, &qword_1EC2B6088, &qword_1C8BFABB0);
    OUTLINED_FUNCTION_158_3();
    OUTLINED_FUNCTION_156_1();
    sub_1C88E3EC4();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_86_1();
    sub_1C88E3C58();
  }

  else
  {
    sub_1C8778ED8(v4, &qword_1EC2B6088, &qword_1C8BFABB0);
    OUTLINED_FUNCTION_158_3();
    OUTLINED_FUNCTION_268();
    sub_1C88E3EC4();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
  }

  free(v3);
  free(v2);
  free(v1);

  free(v0);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.systemFrameworkIntent.getter()
{
  OUTLINED_FUNCTION_93_1();
  v1 = OUTLINED_FUNCTION_253();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_122_2();
  OUTLINED_FUNCTION_32_10();
  if (v5)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6088, &qword_1C8BFABB0);
  }

  else
  {
    OUTLINED_FUNCTION_92_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 60)
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8BD47CC();
  OUTLINED_FUNCTION_121_0();
  v7 = OUTLINED_FUNCTION_218();
  return v8(v7);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.systemFrameworkIntent.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_289_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD47CC();
  OUTLINED_FUNCTION_42_5(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_224_2(v14);
  OUTLINED_FUNCTION_13_16();
  if (v15)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6088, &qword_1C8BFABB0);
LABEL_7:
    v19 = OUTLINED_FUNCTION_290_1();
    v20(v19);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_220();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 60)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  v17 = OUTLINED_FUNCTION_128_3();
  v18(v17);
LABEL_8:
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol(v0);
  return OUTLINED_FUNCTION_242();
}

void static Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.OneOf_SystemToolProtocolKind.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v378 = v8;
  v379 = v9;
  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.AppIntent(0);
  v11 = OUTLINED_FUNCTION_265_2(v10, &v320);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_9_0();
  v13 = OUTLINED_FUNCTION_63_0(v12);
  v14 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.AssistantSchema(v13);
  v15 = OUTLINED_FUNCTION_80(v14);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_9_0();
  v17 = OUTLINED_FUNCTION_63_0(v16);
  v18 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.IntentSideEffect(v17);
  v19 = OUTLINED_FUNCTION_80(v18);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_9_0();
  v21 = OUTLINED_FUNCTION_63_0(v20);
  v22 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.SiriKitIntent(v21);
  v23 = OUTLINED_FUNCTION_265_2(v22, &v319);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_9_0();
  v25 = OUTLINED_FUNCTION_63_0(v24);
  v26 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.PropertyUpdater(v25);
  v27 = OUTLINED_FUNCTION_80(v26);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_9_0();
  v29 = OUTLINED_FUNCTION_63_0(v28);
  v30 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.EntityUpdating(v29);
  v31 = OUTLINED_FUNCTION_265_2(v30, &v318);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_9_0();
  v33 = OUTLINED_FUNCTION_63_0(v32);
  v34 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.ShowInAppStringSearchResults(v33);
  v35 = OUTLINED_FUNCTION_265_2(v34, &v317);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_9_0();
  v37 = OUTLINED_FUNCTION_63_0(v36);
  v38 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.PlayVideo(v37);
  v39 = OUTLINED_FUNCTION_265_2(v38, &v316);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_9_0();
  v41 = OUTLINED_FUNCTION_63_0(v40);
  v42 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.ConditionallyEnabled(v41);
  v43 = OUTLINED_FUNCTION_265_2(v42, &v315);
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_63_0(v44);
  sub_1C8BD47CC();
  OUTLINED_FUNCTION_13_1();
  v375 = v45;
  v376 = v46;
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v72);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v74);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v75);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v76);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v77);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v78);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v79);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v80);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v81);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v82);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v83);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v84);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v85);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v86);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v87);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v88);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v89);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v90);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v91);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v92);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v93);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v94);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v95);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v96);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v97);
  OUTLINED_FUNCTION_96();
  v99 = OUTLINED_FUNCTION_63_0(v98);
  v377 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.OneOf_SystemToolProtocolKind(v99);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v100);
  OUTLINED_FUNCTION_10_0();
  v372 = v101;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v102);
  OUTLINED_FUNCTION_123();
  v374 = v103;
  OUTLINED_FUNCTION_83_0();
  v105 = MEMORY[0x1EEE9AC00](v104);
  OUTLINED_FUNCTION_451_0(v105, v106, v107, v108, v109, v110, v111, v112, v304);
  v114 = MEMORY[0x1EEE9AC00](v113);
  OUTLINED_FUNCTION_397_0(v114, v115, v116, v117, v118, v119, v120, v121, v305);
  v123 = MEMORY[0x1EEE9AC00](v122);
  OUTLINED_FUNCTION_396(v123, v124, v125, v126, v127, v128, v129, v130, v306);
  v132 = MEMORY[0x1EEE9AC00](v131);
  OUTLINED_FUNCTION_395_0(v132, v133, v134, v135, v136, v137, v138, v139, v307);
  v141 = MEMORY[0x1EEE9AC00](v140);
  OUTLINED_FUNCTION_394_0(v141, v142, v143, v144, v145, v146, v147, v148, v308);
  MEMORY[0x1EEE9AC00](v149);
  OUTLINED_FUNCTION_123();
  v373 = v150;
  OUTLINED_FUNCTION_83_0();
  v152 = MEMORY[0x1EEE9AC00](v151);
  OUTLINED_FUNCTION_393_0(v152, v153, v154, v155, v156, v157, v158, v159, v309);
  v161 = MEMORY[0x1EEE9AC00](v160);
  OUTLINED_FUNCTION_398_0(v161, v162, v163, v164, v165, v166, v167, v168, v310);
  v170 = MEMORY[0x1EEE9AC00](v169);
  OUTLINED_FUNCTION_453_0(v170, v171, v172, v173, v174, v175, v176, v177, v311);
  v179 = MEMORY[0x1EEE9AC00](v178);
  OUTLINED_FUNCTION_454(v179, v180, v181, v182, v183, v184, v185, v186, v312);
  MEMORY[0x1EEE9AC00](v187);
  OUTLINED_FUNCTION_561();
  MEMORY[0x1EEE9AC00](v188);
  OUTLINED_FUNCTION_562();
  v190 = MEMORY[0x1EEE9AC00](v189);
  OUTLINED_FUNCTION_452_0(v190, v191, v192, v193, v194, v195, v196, v197, v313);
  MEMORY[0x1EEE9AC00](v198);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v199);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v200);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v201);
  OUTLINED_FUNCTION_123();
  v366 = v202;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v203);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v204);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v205);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v206);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v207);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v208);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v209);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v210);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v211);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v212);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v213);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v214);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v215);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v216);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v217);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v218);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v219);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v220);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v221);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v222);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v223);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v224);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v225);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v226);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v227);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v228);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v229);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v230);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v231);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v232);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v233);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v234);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v235);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v236);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v237);
  OUTLINED_FUNCTION_537();
  MEMORY[0x1EEE9AC00](v238);
  OUTLINED_FUNCTION_734();
  MEMORY[0x1EEE9AC00](v239);
  OUTLINED_FUNCTION_437();
  MEMORY[0x1EEE9AC00](v240);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v241);
  OUTLINED_FUNCTION_557();
  MEMORY[0x1EEE9AC00](v242);
  OUTLINED_FUNCTION_408();
  MEMORY[0x1EEE9AC00](v243);
  OUTLINED_FUNCTION_575();
  MEMORY[0x1EEE9AC00](v244);
  OUTLINED_FUNCTION_920();
  v245 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2BAD88, &qword_1C8BFABB8);
  OUTLINED_FUNCTION_80(v245);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v246);
  OUTLINED_FUNCTION_103();
  v248 = *(v247 + 56);
  sub_1C88E4144();
  v378 = v248;
  v249 = v377;
  sub_1C88E4144();
  OUTLINED_FUNCTION_168_0();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_3_14();
      sub_1C88E4144();
      if (OUTLINED_FUNCTION_629() == 1)
      {
        v270 = v376;
        OUTLINED_FUNCTION_756();
        v271 = OUTLINED_FUNCTION_889();
        v272(v271);
        OUTLINED_FUNCTION_611();
        sub_1C87D1410();
        v273 = *(v270 + 8);
        v274 = OUTLINED_FUNCTION_260_0();
        v273(v274);
        v275 = OUTLINED_FUNCTION_307();
        v273(v275);
        goto LABEL_149;
      }

      OUTLINED_FUNCTION_982();
      v251 = v1;
      goto LABEL_151;
    case 2u:
      OUTLINED_FUNCTION_3_14();
      sub_1C88E4144();
      if (OUTLINED_FUNCTION_629() == 2)
      {
        v262 = v375;
        OUTLINED_FUNCTION_316_1();
        v263 = OUTLINED_FUNCTION_1048();
        v264(v263);
        OUTLINED_FUNCTION_1022();
        sub_1C87D1410();
        OUTLINED_FUNCTION_1021();
        v265 = OUTLINED_FUNCTION_184();
        (v0)(v265);
        v266 = v7;
        goto LABEL_147;
      }

      OUTLINED_FUNCTION_982();
      v251 = v7;
      goto LABEL_151;
    case 3u:
      OUTLINED_FUNCTION_3_14();
      sub_1C88E4144();
      if (OUTLINED_FUNCTION_629() == 3)
      {
        v262 = v375;
        OUTLINED_FUNCTION_316_1();
        v267 = OUTLINED_FUNCTION_1048();
        v268(v267);
        sub_1C87D1410();
        OUTLINED_FUNCTION_1021();
        v269 = OUTLINED_FUNCTION_184();
        (v0)(v269);
        v266 = v6;
        goto LABEL_147;
      }

      OUTLINED_FUNCTION_982();
      v251 = v6;
      goto LABEL_151;
    case 4u:
      OUTLINED_FUNCTION_3_14();
      OUTLINED_FUNCTION_265();
      sub_1C88E4144();
      if (OUTLINED_FUNCTION_629() != 4)
      {
        goto LABEL_163;
      }

      OUTLINED_FUNCTION_168_2();
      OUTLINED_FUNCTION_1042();
      if (*v2 == *v249)
      {
        OUTLINED_FUNCTION_119_1();
        OUTLINED_FUNCTION_1_14();
        v303 = sub_1C8776818(v301, v302, MEMORY[0x1E69AAC10]);
        OUTLINED_FUNCTION_100_1(v303);
      }

      OUTLINED_FUNCTION_241_3();
      sub_1C88E3C58();
      OUTLINED_FUNCTION_241_3();
      goto LABEL_134;
    case 5u:
      OUTLINED_FUNCTION_3_14();
      sub_1C88E4144();
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v276 = v376;
        OUTLINED_FUNCTION_756();
        v277 = OUTLINED_FUNCTION_889();
        v278(v277);
        sub_1C87D1410();
        v279 = *(v276 + 8);
        v280 = OUTLINED_FUNCTION_260_0();
        v279(v280);
        v281 = OUTLINED_FUNCTION_312();
        v279(v281);
        goto LABEL_149;
      }

      OUTLINED_FUNCTION_982();
      v251 = v0;
      goto LABEL_151;
    case 6u:
      OUTLINED_FUNCTION_3_14();
      sub_1C88E4144();
      if (OUTLINED_FUNCTION_629() == 6)
      {
        v262 = v375;
        OUTLINED_FUNCTION_316_1();
        v282 = OUTLINED_FUNCTION_1048();
        v283(v282);
        OUTLINED_FUNCTION_292();
        sub_1C87D1410();
        OUTLINED_FUNCTION_1021();
        v284 = OUTLINED_FUNCTION_184();
        (v0)(v284);
        v266 = v5;
        goto LABEL_147;
      }

      OUTLINED_FUNCTION_982();
      v251 = v5;
      goto LABEL_151;
    case 7u:
      OUTLINED_FUNCTION_3_14();
      sub_1C88E4144();
      if (OUTLINED_FUNCTION_629() != 7)
      {
        goto LABEL_150;
      }

      OUTLINED_FUNCTION_204_1();
      v255 = &v321;
      goto LABEL_146;
    case 8u:
      OUTLINED_FUNCTION_3_14();
      OUTLINED_FUNCTION_257();
      sub_1C88E4144();
      if (OUTLINED_FUNCTION_629() != 8)
      {
        goto LABEL_150;
      }

      OUTLINED_FUNCTION_316_1();
      v285(v314);
      OUTLINED_FUNCTION_100();
      sub_1C87D1410();
      OUTLINED_FUNCTION_1021();
      v286 = OUTLINED_FUNCTION_271();
      (v0)(v286);
      v266 = OUTLINED_FUNCTION_260_0();
      goto LABEL_148;
    case 9u:
      OUTLINED_FUNCTION_3_14();
      OUTLINED_FUNCTION_257();
      sub_1C88E4144();
      if (OUTLINED_FUNCTION_629() != 9)
      {
        goto LABEL_150;
      }

      OUTLINED_FUNCTION_204_1();
      v255 = &v322;
      goto LABEL_146;
    case 0xAu:
      OUTLINED_FUNCTION_3_14();
      OUTLINED_FUNCTION_257();
      sub_1C88E4144();
      if (OUTLINED_FUNCTION_629() != 10)
      {
        goto LABEL_150;
      }

      OUTLINED_FUNCTION_204_1();
      v255 = &v323;
      goto LABEL_146;
    case 0xBu:
      OUTLINED_FUNCTION_3_14();
      OUTLINED_FUNCTION_257();
      sub_1C88E4144();
      if (OUTLINED_FUNCTION_629() != 11)
      {
        goto LABEL_150;
      }

      OUTLINED_FUNCTION_204_1();
      v255 = &v324;
      goto LABEL_146;
    case 0xCu:
      OUTLINED_FUNCTION_3_14();
      OUTLINED_FUNCTION_257();
      sub_1C88E4144();
      if (OUTLINED_FUNCTION_629() != 12)
      {
        goto LABEL_150;
      }

      OUTLINED_FUNCTION_204_1();
      v255 = &v325;
      goto LABEL_146;
    case 0xDu:
      OUTLINED_FUNCTION_3_14();
      OUTLINED_FUNCTION_257();
      sub_1C88E4144();
      if (OUTLINED_FUNCTION_629() != 13)
      {
        goto LABEL_150;
      }

      OUTLINED_FUNCTION_204_1();
      v255 = &v326;
      goto LABEL_146;
    case 0xEu:
      OUTLINED_FUNCTION_3_14();
      OUTLINED_FUNCTION_257();
      sub_1C88E4144();
      if (OUTLINED_FUNCTION_629() != 14)
      {
        goto LABEL_150;
      }

      OUTLINED_FUNCTION_204_1();
      v255 = &v327;
      goto LABEL_146;
    case 0xFu:
      OUTLINED_FUNCTION_3_14();
      OUTLINED_FUNCTION_257();
      sub_1C88E4144();
      if (OUTLINED_FUNCTION_629() != 15)
      {
        goto LABEL_150;
      }

      OUTLINED_FUNCTION_204_1();
      v255 = &v328;
      goto LABEL_146;
    case 0x10u:
      OUTLINED_FUNCTION_3_14();
      OUTLINED_FUNCTION_257();
      sub_1C88E4144();
      if (OUTLINED_FUNCTION_629() != 16)
      {
        goto LABEL_150;
      }

      OUTLINED_FUNCTION_204_1();
      v255 = &v329;
      goto LABEL_146;
    case 0x11u:
      OUTLINED_FUNCTION_3_14();
      OUTLINED_FUNCTION_257();
      sub_1C88E4144();
      if (OUTLINED_FUNCTION_629() != 17)
      {
        goto LABEL_150;
      }

      OUTLINED_FUNCTION_204_1();
      v255 = &v330;
      goto LABEL_146;
    case 0x12u:
      OUTLINED_FUNCTION_3_14();
      OUTLINED_FUNCTION_257();
      sub_1C88E4144();
      if (OUTLINED_FUNCTION_629() != 18)
      {
        goto LABEL_150;
      }

      OUTLINED_FUNCTION_204_1();
      v255 = &v331;
      goto LABEL_146;
    case 0x13u:
      OUTLINED_FUNCTION_3_14();
      OUTLINED_FUNCTION_257();
      sub_1C88E4144();
      if (OUTLINED_FUNCTION_629() != 19)
      {
        goto LABEL_150;
      }

      OUTLINED_FUNCTION_204_1();
      v255 = &v332;
      goto LABEL_146;
    case 0x14u:
      OUTLINED_FUNCTION_3_14();
      OUTLINED_FUNCTION_257();
      sub_1C88E4144();
      if (OUTLINED_FUNCTION_629() != 20)
      {
        goto LABEL_150;
      }

      OUTLINED_FUNCTION_204_1();
      v255 = &v333;
      goto LABEL_146;
    case 0x15u:
      OUTLINED_FUNCTION_3_14();
      OUTLINED_FUNCTION_257();
      sub_1C88E4144();
      if (OUTLINED_FUNCTION_629() != 21)
      {
        goto LABEL_150;
      }

      OUTLINED_FUNCTION_204_1();
      v255 = &v334;
      goto LABEL_146;
    case 0x16u:
      OUTLINED_FUNCTION_3_14();
      OUTLINED_FUNCTION_257();
      sub_1C88E4144();
      if (OUTLINED_FUNCTION_629() != 22)
      {
        goto LABEL_150;
      }

      OUTLINED_FUNCTION_204_1();
      v255 = &v335;
      goto LABEL_146;
    case 0x17u:
      OUTLINED_FUNCTION_3_14();
      OUTLINED_FUNCTION_257();
      sub_1C88E4144();
      if (OUTLINED_FUNCTION_629() != 23)
      {
        goto LABEL_150;
      }

      OUTLINED_FUNCTION_204_1();
      v255 = &v336;
      goto LABEL_146;
    case 0x18u:
      OUTLINED_FUNCTION_3_14();
      OUTLINED_FUNCTION_257();
      sub_1C88E4144();
      if (OUTLINED_FUNCTION_629() != 24)
      {
        goto LABEL_150;
      }

      OUTLINED_FUNCTION_204_1();
      v255 = &v337;
      goto LABEL_146;
    case 0x19u:
      OUTLINED_FUNCTION_3_14();
      OUTLINED_FUNCTION_257();
      sub_1C88E4144();
      if (OUTLINED_FUNCTION_629() != 25)
      {
        goto LABEL_150;
      }

      OUTLINED_FUNCTION_204_1();
      v255 = &v338;
      goto LABEL_146;
    case 0x1Au:
      OUTLINED_FUNCTION_3_14();
      OUTLINED_FUNCTION_265();
      sub_1C88E4144();
      if (OUTLINED_FUNCTION_629() != 26)
      {
        goto LABEL_163;
      }

      OUTLINED_FUNCTION_165_2();
      OUTLINED_FUNCTION_1042();
      if (sub_1C87D2814(*v2, *v249))
      {
        goto LABEL_132;
      }

      goto LABEL_133;
    case 0x1Bu:
      OUTLINED_FUNCTION_3_14();
      OUTLINED_FUNCTION_257();
      sub_1C88E4144();
      if (OUTLINED_FUNCTION_629() != 27)
      {
        goto LABEL_150;
      }

      OUTLINED_FUNCTION_204_1();
      v255 = &v339;
      goto LABEL_146;
    case 0x1Cu:
      OUTLINED_FUNCTION_3_14();
      OUTLINED_FUNCTION_257();
      sub_1C88E4144();
      if (OUTLINED_FUNCTION_629() != 28)
      {
        goto LABEL_150;
      }

      OUTLINED_FUNCTION_204_1();
      v255 = &v340;
      goto LABEL_146;
    case 0x1Du:
      OUTLINED_FUNCTION_3_14();
      OUTLINED_FUNCTION_257();
      sub_1C88E4144();
      if (OUTLINED_FUNCTION_629() != 29)
      {
        goto LABEL_150;
      }

      OUTLINED_FUNCTION_204_1();
      v255 = &v341;
      goto LABEL_146;
    case 0x1Eu:
      OUTLINED_FUNCTION_3_14();
      OUTLINED_FUNCTION_257();
      sub_1C88E4144();
      if (OUTLINED_FUNCTION_629() != 30)
      {
        goto LABEL_150;
      }

      OUTLINED_FUNCTION_204_1();
      v255 = &v342;
      goto LABEL_146;
    case 0x1Fu:
      OUTLINED_FUNCTION_3_14();
      OUTLINED_FUNCTION_257();
      sub_1C88E4144();
      if (OUTLINED_FUNCTION_629() != 31)
      {
        goto LABEL_150;
      }

      OUTLINED_FUNCTION_204_1();
      v255 = &v343;
      goto LABEL_146;
    case 0x20u:
      OUTLINED_FUNCTION_3_14();
      OUTLINED_FUNCTION_257();
      sub_1C88E4144();
      if (OUTLINED_FUNCTION_629() != 32)
      {
        goto LABEL_150;
      }

      OUTLINED_FUNCTION_204_1();
      v255 = &v344;
      goto LABEL_146;
    case 0x21u:
      OUTLINED_FUNCTION_3_14();
      OUTLINED_FUNCTION_257();
      sub_1C88E4144();
      if (OUTLINED_FUNCTION_629() != 33)
      {
        goto LABEL_150;
      }

      OUTLINED_FUNCTION_204_1();
      v255 = &v345;
      goto LABEL_146;
    case 0x22u:
      OUTLINED_FUNCTION_3_14();
      OUTLINED_FUNCTION_257();
      sub_1C88E4144();
      if (OUTLINED_FUNCTION_629() != 34)
      {
        goto LABEL_150;
      }

      OUTLINED_FUNCTION_204_1();
      v255 = &v346;
      goto LABEL_146;
    case 0x23u:
      OUTLINED_FUNCTION_3_14();
      OUTLINED_FUNCTION_257();
      sub_1C88E4144();
      if (OUTLINED_FUNCTION_629() != 35)
      {
        goto LABEL_150;
      }

      OUTLINED_FUNCTION_204_1();
      v255 = &v347;
      goto LABEL_146;
    case 0x24u:
      OUTLINED_FUNCTION_3_14();
      OUTLINED_FUNCTION_257();
      sub_1C88E4144();
      if (OUTLINED_FUNCTION_629() != 36)
      {
        goto LABEL_150;
      }

      OUTLINED_FUNCTION_204_1();
      v255 = &v348;
      goto LABEL_146;
    case 0x25u:
      OUTLINED_FUNCTION_3_14();
      OUTLINED_FUNCTION_257();
      sub_1C88E4144();
      if (OUTLINED_FUNCTION_629() != 37)
      {
        goto LABEL_150;
      }

      OUTLINED_FUNCTION_204_1();
      v255 = &v349;
      goto LABEL_146;
    case 0x26u:
      OUTLINED_FUNCTION_3_14();
      OUTLINED_FUNCTION_257();
      sub_1C88E4144();
      if (OUTLINED_FUNCTION_629() != 38)
      {
        goto LABEL_150;
      }

      OUTLINED_FUNCTION_204_1();
      v255 = &v350;
      goto LABEL_146;
    case 0x27u:
      OUTLINED_FUNCTION_3_14();
      OUTLINED_FUNCTION_257();
      sub_1C88E4144();
      if (OUTLINED_FUNCTION_629() != 39)
      {
        goto LABEL_150;
      }

      OUTLINED_FUNCTION_204_1();
      v255 = &v351;
      goto LABEL_146;
    case 0x28u:
      OUTLINED_FUNCTION_3_14();
      OUTLINED_FUNCTION_257();
      sub_1C88E4144();
      if (OUTLINED_FUNCTION_629() != 40)
      {
        goto LABEL_150;
      }

      OUTLINED_FUNCTION_204_1();
      v255 = &v352;
      goto LABEL_146;
    case 0x29u:
      OUTLINED_FUNCTION_3_14();
      OUTLINED_FUNCTION_257();
      sub_1C88E4144();
      if (OUTLINED_FUNCTION_629() != 41)
      {
        goto LABEL_150;
      }

      OUTLINED_FUNCTION_204_1();
      v255 = &v353;
      goto LABEL_146;
    case 0x2Au:
      OUTLINED_FUNCTION_3_14();
      v288 = v366;
      sub_1C88E4144();
      if (OUTLINED_FUNCTION_629() != 42)
      {
        goto LABEL_163;
      }

      OUTLINED_FUNCTION_164_3();
      OUTLINED_FUNCTION_1042();
      if (sub_1C87D2814(*v288, *v249))
      {
        goto LABEL_132;
      }

      goto LABEL_133;
    case 0x2Bu:
      OUTLINED_FUNCTION_3_14();
      OUTLINED_FUNCTION_257();
      sub_1C88E4144();
      if (OUTLINED_FUNCTION_629() != 43)
      {
        goto LABEL_150;
      }

      OUTLINED_FUNCTION_204_1();
      v255 = &v354;
      goto LABEL_146;
    case 0x2Cu:
      OUTLINED_FUNCTION_3_14();
      OUTLINED_FUNCTION_257();
      sub_1C88E4144();
      if (OUTLINED_FUNCTION_629() != 44)
      {
        goto LABEL_150;
      }

      OUTLINED_FUNCTION_204_1();
      v255 = &v355;
      goto LABEL_146;
    case 0x2Du:
      OUTLINED_FUNCTION_3_14();
      OUTLINED_FUNCTION_257();
      sub_1C88E4144();
      if (OUTLINED_FUNCTION_629() != 45)
      {
        goto LABEL_150;
      }

      OUTLINED_FUNCTION_204_1();
      v255 = &v356;
      goto LABEL_146;
    case 0x2Eu:
      OUTLINED_FUNCTION_3_14();
      v4 = v365[16];
      sub_1C88E4144();
      if (OUTLINED_FUNCTION_629() != 46)
      {
        goto LABEL_150;
      }

      OUTLINED_FUNCTION_204_1();
      v255 = &v357;
      goto LABEL_146;
    case 0x2Fu:
      OUTLINED_FUNCTION_3_14();
      v4 = v365[17];
      sub_1C88E4144();
      if (OUTLINED_FUNCTION_629() != 47)
      {
        goto LABEL_150;
      }

      OUTLINED_FUNCTION_204_1();
      v255 = &v358;
      goto LABEL_146;
    case 0x30u:
      OUTLINED_FUNCTION_3_14();
      v4 = v365[18];
      sub_1C88E4144();
      if (OUTLINED_FUNCTION_629() != 48)
      {
        goto LABEL_150;
      }

      OUTLINED_FUNCTION_204_1();
      v255 = &v359;
      goto LABEL_146;
    case 0x31u:
      OUTLINED_FUNCTION_3_14();
      OUTLINED_FUNCTION_1132();
      sub_1C88E4144();
      if (OUTLINED_FUNCTION_629() != 49)
      {
        goto LABEL_163;
      }

      OUTLINED_FUNCTION_163_3();
      OUTLINED_FUNCTION_1042();
      OUTLINED_FUNCTION_647();
      v261 = v258 && v259 == v260;
      if (v261 || (sub_1C8BD529C() & 1) != 0)
      {
        goto LABEL_132;
      }

      goto LABEL_133;
    case 0x32u:
      OUTLINED_FUNCTION_3_14();
      sub_1C88E4144();
      if (OUTLINED_FUNCTION_629() != 50)
      {
        goto LABEL_163;
      }

      OUTLINED_FUNCTION_162_1();
      sub_1C88E3EC4();
      v252 = OUTLINED_FUNCTION_254_0();
      static Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.PropertyUpdater.== infix(_:_:)(v252, v253);
      goto LABEL_139;
    case 0x33u:
      OUTLINED_FUNCTION_3_14();
      v4 = v367;
      sub_1C88E4144();
      if (OUTLINED_FUNCTION_629() != 51)
      {
        goto LABEL_150;
      }

      OUTLINED_FUNCTION_204_1();
      v255 = &v360;
      goto LABEL_146;
    case 0x34u:
      OUTLINED_FUNCTION_3_14();
      v4 = v368;
      sub_1C88E4144();
      if (OUTLINED_FUNCTION_629() != 52)
      {
        goto LABEL_150;
      }

      OUTLINED_FUNCTION_204_1();
      v255 = &v361;
      goto LABEL_146;
    case 0x35u:
      OUTLINED_FUNCTION_3_14();
      sub_1C88E4144();
      if (OUTLINED_FUNCTION_629() != 53)
      {
        goto LABEL_163;
      }

      OUTLINED_FUNCTION_161_3();
      OUTLINED_FUNCTION_1042();
      OUTLINED_FUNCTION_647();
      v258 = v258 && v256 == v257;
      if (v258 || (sub_1C8BD529C() & 1) != 0)
      {
        goto LABEL_132;
      }

      goto LABEL_133;
    case 0x36u:
      OUTLINED_FUNCTION_3_14();
      sub_1C88E4144();
      if (OUTLINED_FUNCTION_629() != 54)
      {
        goto LABEL_163;
      }

      OUTLINED_FUNCTION_160_2();
      sub_1C88E3EC4();
      OUTLINED_FUNCTION_254_0();
      static Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.IntentSideEffect.== infix(_:_:)();
      goto LABEL_139;
    case 0x37u:
      OUTLINED_FUNCTION_3_14();
      OUTLINED_FUNCTION_1074();
      sub_1C88E4144();
      if (OUTLINED_FUNCTION_629() != 55)
      {
        goto LABEL_163;
      }

      OUTLINED_FUNCTION_159_2();
      sub_1C88E3EC4();
      v295 = OUTLINED_FUNCTION_254_0();
      static Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.AssistantSchema.== infix(_:_:)(v295, v296);
LABEL_139:
      sub_1C88E3C58();
      OUTLINED_FUNCTION_121();
      sub_1C88E3C58();
      goto LABEL_149;
    case 0x38u:
      OUTLINED_FUNCTION_3_14();
      v4 = v369;
      sub_1C88E4144();
      if (OUTLINED_FUNCTION_629() != 56)
      {
        goto LABEL_150;
      }

      OUTLINED_FUNCTION_204_1();
      v255 = &v362;
      goto LABEL_146;
    case 0x39u:
      OUTLINED_FUNCTION_3_14();
      v4 = v370;
      sub_1C88E4144();
      if (OUTLINED_FUNCTION_629() != 57)
      {
        goto LABEL_150;
      }

      OUTLINED_FUNCTION_204_1();
      v255 = &v363;
      goto LABEL_146;
    case 0x3Au:
      OUTLINED_FUNCTION_3_14();
      v4 = v371;
      sub_1C88E4144();
      if (OUTLINED_FUNCTION_629() != 58)
      {
        goto LABEL_150;
      }

      OUTLINED_FUNCTION_204_1();
      v255 = &v364;
      goto LABEL_146;
    case 0x3Bu:
      OUTLINED_FUNCTION_3_14();
      OUTLINED_FUNCTION_1144();
      sub_1C88E4144();
      if (OUTLINED_FUNCTION_629() != 59)
      {
LABEL_163:
        sub_1C88E3C58();
        goto LABEL_152;
      }

      OUTLINED_FUNCTION_158_3();
      OUTLINED_FUNCTION_1042();
      OUTLINED_FUNCTION_647();
      v291 = v258 && v289 == v290;
      if (v291 || (sub_1C8BD529C() & 1) != 0)
      {
LABEL_132:
        OUTLINED_FUNCTION_119_1();
        OUTLINED_FUNCTION_1_14();
        v294 = sub_1C8776818(v292, v293, MEMORY[0x1E69AAC10]);
        OUTLINED_FUNCTION_100_1(v294);
      }

LABEL_133:
      sub_1C88E3C58();
      OUTLINED_FUNCTION_121();
LABEL_134:
      sub_1C88E3C58();
      OUTLINED_FUNCTION_157_3();
      sub_1C88E3C58();
      goto LABEL_153;
    case 0x3Cu:
      OUTLINED_FUNCTION_3_14();
      OUTLINED_FUNCTION_1010();
      sub_1C88E4144();
      if (OUTLINED_FUNCTION_629() != 60)
      {
LABEL_150:
        OUTLINED_FUNCTION_982();
        v251 = v4;
        goto LABEL_151;
      }

      OUTLINED_FUNCTION_204_1();
      v255 = v365;
LABEL_146:
      v262 = v375;
      v254(*(v255 - 32));
      OUTLINED_FUNCTION_260_0();
      sub_1C87D1410();
      OUTLINED_FUNCTION_1021();
      v297 = OUTLINED_FUNCTION_184();
      (v0)(v297);
      v266 = v4;
      goto LABEL_147;
    default:
      OUTLINED_FUNCTION_3_14();
      sub_1C88E4144();
      if (OUTLINED_FUNCTION_629())
      {
        OUTLINED_FUNCTION_982();
        v251 = v2;
LABEL_151:
        v250(v251, v375);
LABEL_152:
        sub_1C8778ED8(v3, &unk_1EC2BAD88, &qword_1C8BFABB8);
      }

      else
      {
        v262 = v375;
        OUTLINED_FUNCTION_316_1();
        v298 = OUTLINED_FUNCTION_889();
        v299(v298);
        OUTLINED_FUNCTION_268();
        sub_1C87D1410();
        OUTLINED_FUNCTION_1021();
        v300 = OUTLINED_FUNCTION_100();
        (v0)(v300);
        v266 = v2;
LABEL_147:
        v287 = v262;
LABEL_148:
        (v0)(v266, v287);
LABEL_149:
        OUTLINED_FUNCTION_157_3();
        sub_1C88E3C58();
      }

LABEL_153:
      OUTLINED_FUNCTION_125();
      return;
  }
}

uint64_t static Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.ConditionallyEnabled.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = OUTLINED_FUNCTION_84();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.ConditionallyEnabled(v3);
  OUTLINED_FUNCTION_716();
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_1_14();
  v6 = sub_1C8776818(v4, v5, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_64_0(v6) & 1;
}

uint64_t sub_1C892D5E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  OUTLINED_FUNCTION_85_2(a1);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_1C8BD529C() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_646();
  v9 = v6 && v7 == v8;
  if (!v9 && (sub_1C8BD529C() & 1) == 0)
  {
    return 0;
  }

  a3(0);
  OUTLINED_FUNCTION_1105();
  OUTLINED_FUNCTION_1_14();
  v12 = sub_1C8776818(v10, v11, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_64_0(v12) & 1;
}

void static Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.IntentSideEffect.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v1 = OUTLINED_FUNCTION_84();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.IntentSideEffect.OneOf_IntentSideEffectKind(v1);
  OUTLINED_FUNCTION_49_3();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_18_4();
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_103();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAD98, &qword_1C8BFABC8);
  OUTLINED_FUNCTION_80(v7);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_134_3();
  OUTLINED_FUNCTION_472();
  OUTLINED_FUNCTION_125_0();
  if (v9)
  {
    OUTLINED_FUNCTION_37_2();
    if (v9)
    {
      sub_1C8778ED8(v0, &qword_1EC2BAD90, &qword_1C8BFABC0);
LABEL_12:
      type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.IntentSideEffect(0);
      OUTLINED_FUNCTION_716();
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_1_14();
      v15 = sub_1C8776818(v13, v14, MEMORY[0x1E69AAC10]);
      v10 = OUTLINED_FUNCTION_64_0(v15);
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_253();
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_37_2();
  if (v9)
  {
    OUTLINED_FUNCTION_169();
    sub_1C88E3C58();
LABEL_9:
    sub_1C8778ED8(v0, &qword_1EC2BAD98, &qword_1C8BFABC8);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_705();
  OUTLINED_FUNCTION_168_0();
  static Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.IntentSideEffect.OneOf_IntentSideEffectKind.== infix(_:_:)();
  v12 = v11;
  sub_1C88E3C58();
  OUTLINED_FUNCTION_178_2();
  sub_1C88E3C58();
  sub_1C8778ED8(v0, &qword_1EC2BAD90, &qword_1C8BFABC0);
  if (v12)
  {
    goto LABEL_12;
  }

LABEL_10:
  v10 = 0;
LABEL_13:
  OUTLINED_FUNCTION_157(v10);
  OUTLINED_FUNCTION_125();
}

void sub_1C892D8B8()
{
  OUTLINED_FUNCTION_124();
  v3 = v2;
  v5 = v4;
  v6 = OUTLINED_FUNCTION_333();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantSchemaIdentifier(v6);
  OUTLINED_FUNCTION_49_3();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_9_0();
  v8 = OUTLINED_FUNCTION_233();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  OUTLINED_FUNCTION_80(v10);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_103();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAA90, &unk_1C8BFA9A0);
  OUTLINED_FUNCTION_223_0();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v12);
  v13 = OUTLINED_FUNCTION_74();
  v3(v13);
  v14 = *(v1 + 56);
  OUTLINED_FUNCTION_196_1();
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_196_1();
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_125_0();
  if (v15)
  {
    OUTLINED_FUNCTION_43_1(v0 + v14);
    if (v15)
    {
      sub_1C8778ED8(v0, &qword_1EC2BAA88, &qword_1C8BFA998);
LABEL_12:
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_1_14();
      sub_1C8776818(v19, v20, MEMORY[0x1E69AAC10]);
      v21 = OUTLINED_FUNCTION_1037();
      v16 = OUTLINED_FUNCTION_232_1(v21, v5, v22, v23);
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_253();
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_43_1(v0 + v14);
  if (v15)
  {
    sub_1C88E3C58();
LABEL_9:
    sub_1C8778ED8(v0, &qword_1EC2BAA90, &unk_1C8BFA9A0);
    goto LABEL_10;
  }

  sub_1C88E3EC4();
  OUTLINED_FUNCTION_300();
  static Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantSchemaIdentifier.== infix(_:_:)();
  v18 = v17;
  sub_1C88E3C58();
  OUTLINED_FUNCTION_178_2();
  sub_1C88E3C58();
  sub_1C8778ED8(v0, &qword_1EC2BAA88, &qword_1C8BFA998);
  if (v18)
  {
    goto LABEL_12;
  }

LABEL_10:
  v16 = 0;
LABEL_13:
  OUTLINED_FUNCTION_157(v16);
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.ConditionallyEnabled.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.ConditionallyEnabled(v0);
  return OUTLINED_FUNCTION_242();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.PlayVideo.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.PlayVideo(v0);
  return OUTLINED_FUNCTION_242();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.ShowInAppStringSearchResults.values.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.ShowInAppStringSearchResults.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.ShowInAppStringSearchResults(v0);
  return OUTLINED_FUNCTION_242();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.EntityUpdating.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.EntityUpdating(v0);
  return OUTLINED_FUNCTION_242();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.PropertyUpdater.entityProperty.setter()
{
  OUTLINED_FUNCTION_731();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.PropertyUpdater.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.PropertyUpdater(v0);
  return OUTLINED_FUNCTION_242();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.SiriKitIntent.intentClassName.setter()
{
  OUTLINED_FUNCTION_731();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.SiriKitIntent.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.SiriKitIntent(v0);
  return OUTLINED_FUNCTION_242();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.IntentSideEffect.unknown.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_289_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD47CC();
  OUTLINED_FUNCTION_42_5(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_224_2(v14);
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.IntentSideEffect.OneOf_IntentSideEffectKind(0);
  OUTLINED_FUNCTION_31_7(v15);
  if (v16)
  {
    sub_1C8778ED8(v0, &qword_1EC2BAD90, &qword_1C8BFABC0);
  }

  else
  {
    OUTLINED_FUNCTION_220();
    if (!swift_getEnumCaseMultiPayload())
    {
      v20 = OUTLINED_FUNCTION_128_3();
      v21(v20);
      goto LABEL_7;
    }

    sub_1C88E3C58();
  }

  v18 = OUTLINED_FUNCTION_290_1();
  v19(v18);
LABEL_7:
  OUTLINED_FUNCTION_125();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.IntentSideEffect.none.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_289_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD47CC();
  OUTLINED_FUNCTION_42_5(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_224_2(v14);
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.IntentSideEffect.OneOf_IntentSideEffectKind(0);
  OUTLINED_FUNCTION_31_7(v15);
  if (v16)
  {
    sub_1C8778ED8(v0, &qword_1EC2BAD90, &qword_1C8BFABC0);
LABEL_7:
    v20 = OUTLINED_FUNCTION_290_1();
    v21(v20);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_220();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  v18 = OUTLINED_FUNCTION_128_3();
  v19(v18);
LABEL_8:
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.IntentSideEffect.stateChange.getter()
{
  v1 = OUTLINED_FUNCTION_271();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_207_3();
  OUTLINED_FUNCTION_1008();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.IntentSideEffect.OneOf_IntentSideEffectKind(0);
  OUTLINED_FUNCTION_19(v0);
  if (v5)
  {
    sub_1C8778ED8(v0, &qword_1EC2BAD90, &qword_1C8BFABC0);
  }

  else
  {
    OUTLINED_FUNCTION_218();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      return *v0;
    }

    sub_1C88E3C58();
  }

  return 0;
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.IntentSideEffect.stateChange.setter(int a1)
{
  sub_1C8778ED8(v1, &qword_1EC2BAD90, &qword_1C8BFABC0);
  *v1 = a1;
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.IntentSideEffect.OneOf_IntentSideEffectKind(0);
  OUTLINED_FUNCTION_48_4();
  swift_storeEnumTagMultiPayload();
  v3 = OUTLINED_FUNCTION_34_2();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void (*Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.IntentSideEffect.stateChange.modify())(uint64_t a1)
{
  OUTLINED_FUNCTION_932();
  *v2 = v1;
  v3 = OUTLINED_FUNCTION_253();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  *(v0 + 8) = v7;
  OUTLINED_FUNCTION_281_0();
  sub_1C89CBE2C();
  *(v0 + 16) = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.IntentSideEffect.OneOf_IntentSideEffectKind(0);
  OUTLINED_FUNCTION_66_6();
  if (v8)
  {
    sub_1C8778ED8(v7, &qword_1EC2BAD90, &qword_1C8BFABC0);
LABEL_7:
    v10 = 0;
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_92_0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 2)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  v10 = *v7;
LABEL_8:
  *(v0 + 24) = v10;
  return sub_1C892E634;
}

void sub_1C892E634(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *a1;
  v3 = *(a1 + 24);
  sub_1C8778ED8(*a1, &qword_1EC2BAD90, &qword_1C8BFABC0);
  *v2 = v3;
  OUTLINED_FUNCTION_196_0();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_296_0();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);

  free(v1);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.IntentSideEffect.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.IntentSideEffect(v0);
  return OUTLINED_FUNCTION_242();
}

void static Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.IntentSideEffect.OneOf_IntentSideEffectKind.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  OUTLINED_FUNCTION_810();
  sub_1C8BD47CC();
  OUTLINED_FUNCTION_13_1();
  v29 = v5;
  v30 = v4;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_10_0();
  v28 = v6;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_547();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.IntentSideEffect.OneOf_IntentSideEffectKind(0);
  OUTLINED_FUNCTION_74_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_537();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_919();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BADA0, &qword_1C8BFABD0);
  OUTLINED_FUNCTION_80(v11);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_552();
  v14 = *(v13 + 56);
  sub_1C88E4144();
  sub_1C88E4144();
  OUTLINED_FUNCTION_82_3();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    OUTLINED_FUNCTION_459_0();
    sub_1C88E4144();
    if (!swift_getEnumCaseMultiPayload())
    {
      OUTLINED_FUNCTION_981();
      v22(v1, v0 + v14, v30);
      OUTLINED_FUNCTION_6_16();
      sub_1C8776818(v23, v24, MEMORY[0x1E69AA8F0]);
      OUTLINED_FUNCTION_121();
      sub_1C8BD51EC();
      OUTLINED_FUNCTION_121();
      sub_1C8BD51EC();
      v25 = *(v29 + 8);
      v26 = OUTLINED_FUNCTION_97();
      v25(v26);
      OUTLINED_FUNCTION_888();
      v27 = OUTLINED_FUNCTION_246();
      v25(v27);
      goto LABEL_11;
    }

    v2 = v3;
LABEL_7:
    (*(v29 + 8))(v2, v30);
    goto LABEL_9;
  }

  if (EnumCaseMultiPayload == 1)
  {
    OUTLINED_FUNCTION_459_0();
    sub_1C88E4144();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      OUTLINED_FUNCTION_154_1();
      v16(v28, v0 + v14, v30);
      OUTLINED_FUNCTION_6_16();
      sub_1C8776818(v17, v18, MEMORY[0x1E69AA8F0]);
      OUTLINED_FUNCTION_121();
      sub_1C8BD51EC();
      OUTLINED_FUNCTION_121();
      sub_1C8BD51EC();
      v19 = *(v29 + 8);
      v20 = OUTLINED_FUNCTION_246();
      v19(v20);
      OUTLINED_FUNCTION_888();
      v21 = OUTLINED_FUNCTION_260_0();
      v19(v21);
LABEL_11:
      OUTLINED_FUNCTION_703();
      sub_1C88E3C58();
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  OUTLINED_FUNCTION_459_0();
  sub_1C88E4144();
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    goto LABEL_11;
  }

LABEL_9:
  sub_1C8778ED8(v0, &qword_1EC2BADA0, &qword_1C8BFABD0);
LABEL_12:
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C892EAD0()
{
  OUTLINED_FUNCTION_1087();
  v2 = OUTLINED_FUNCTION_299_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_80(v4);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_170();
  v1(v6);
  OUTLINED_FUNCTION_626();
  sub_1C89CBE2C();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantSchemaIdentifier(0);
  v7 = OUTLINED_FUNCTION_690();
  OUTLINED_FUNCTION_65(v7);
  if (v8)
  {
    OUTLINED_FUNCTION_992();
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v9 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantSchemaVersion(0);
    result = OUTLINED_FUNCTION_9_13(v9);
    if (!v8)
    {
      return sub_1C8778ED8(v0, &qword_1EC2BAA88, &qword_1C8BFA998);
    }
  }

  else
  {
    OUTLINED_FUNCTION_312();
    return sub_1C88E3EC4();
  }

  return result;
}

uint64_t sub_1C892EBE8()
{
  v1 = OUTLINED_FUNCTION_241();
  v3 = v2(v1);
  sub_1C8778ED8(v0 + *(v3 + 20), &qword_1EC2BAA88, &qword_1C8BFA998);
  OUTLINED_FUNCTION_28_10();
  OUTLINED_FUNCTION_200();
  sub_1C88E3EC4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantSchemaIdentifier(0);
  v4 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.AssistantSchema.identifier.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_251();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_30_6(v7);
  v9 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantSchemaIdentifier(v8);
  OUTLINED_FUNCTION_29_5(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_243(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_168(v13);
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.AssistantSchema(v14);
  OUTLINED_FUNCTION_368(*(v15 + 20));
  OUTLINED_FUNCTION_0_0();
  if (v16)
  {
    OUTLINED_FUNCTION_740();
    OUTLINED_FUNCTION_1020(v17);
    v18 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AssistantSchemaVersion(0);
    OUTLINED_FUNCTION_5_12(v18);
    if (!v16)
    {
      sub_1C8778ED8(v0, &qword_1EC2BAA88, &qword_1C8BFA998);
    }
  }

  else
  {
    OUTLINED_FUNCTION_28_10();
    OUTLINED_FUNCTION_168_0();
    sub_1C88E3EC4();
  }

  OUTLINED_FUNCTION_260();
}

void sub_1C892ED70()
{
  OUTLINED_FUNCTION_261();
  OUTLINED_FUNCTION_154();
  if (v5)
  {
    OUTLINED_FUNCTION_254_0();
    sub_1C88E4144();
    sub_1C8778ED8(v4 + v3, &qword_1EC2BAA88, &qword_1C8BFA998);
    OUTLINED_FUNCTION_28_10();
    OUTLINED_FUNCTION_976();
    OUTLINED_FUNCTION_321();
    OUTLINED_FUNCTION_169_3();
    sub_1C88E3C58();
  }

  else
  {
    sub_1C8778ED8(v4 + v3, &qword_1EC2BAA88, &qword_1C8BFA998);
    OUTLINED_FUNCTION_28_10();
    OUTLINED_FUNCTION_977();
    OUTLINED_FUNCTION_321();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_260();

  free(v6);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.AppIntent.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SystemToolProtocol.AppIntent(v0);
  return OUTLINED_FUNCTION_242();
}

uint64_t sub_1C892EFD8()
{
  v0 = OUTLINED_FUNCTION_167();
  v1(v0);
  OUTLINED_FUNCTION_215_1();
  OUTLINED_FUNCTION_36_3();
  swift_beginAccess();

  return OUTLINED_FUNCTION_218();
}

void sub_1C892F02C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.id.setter(v1, v2);
}

void sub_1C892F0AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_1119();
  v9 = v8;
  v11 = v10;
  v12 = v6;
  v13 = OUTLINED_FUNCTION_68();
  v15 = *(v14(v13) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *(v6 + v15);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11(0);
    OUTLINED_FUNCTION_218_2();
    swift_allocObject();
    v19 = OUTLINED_FUNCTION_2();
    v18 = v9(v19);
    *(v12 + v15) = v18;
  }

  OUTLINED_FUNCTION_178_0(v18 + 16, v17);
  *(v18 + 16) = v7;
  *(v18 + 24) = v5;

  OUTLINED_FUNCTION_1118();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.id.modify()
{
  v2 = OUTLINED_FUNCTION_813();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_34_0(v3) + 64) = v0;
  OUTLINED_FUNCTION_392_0();
  *(v1 + 72) = v4;
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_36_3();
  swift_beginAccess();
  v6 = *(v5 + 24);
  *(v1 + 48) = *(v5 + 16);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_12();
}

void sub_1C892F1FC()
{
  OUTLINED_FUNCTION_261();
  OUTLINED_FUNCTION_732();
  if (v6)
  {
    v7 = v5;
    OUTLINED_FUNCTION_1166();
    v8 = OUTLINED_FUNCTION_184();
    v7(v8);
  }

  else
  {
    OUTLINED_FUNCTION_801();
    v9 = *(v0 + 72);
    v10 = *(v0 + 64);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v10 + v9);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = *(v0 + 72);
      v14 = *(v0 + 64);
      v4(0);
      OUTLINED_FUNCTION_218_2();
      swift_allocObject();
      v15 = OUTLINED_FUNCTION_2();
      v12 = v3(v15);
      *(v14 + v13) = v12;
    }

    OUTLINED_FUNCTION_37_0(v12 + 16, v0 + 24);
    *(v12 + 16) = v2;
    *(v12 + 24) = v1;
  }

  OUTLINED_FUNCTION_260();

  free(v16);
}

uint64_t sub_1C892F2DC()
{
  v0 = OUTLINED_FUNCTION_167();
  v1(v0);
  OUTLINED_FUNCTION_215_1();
  OUTLINED_FUNCTION_36_3();
  swift_beginAccess();

  return OUTLINED_FUNCTION_218();
}

void sub_1C892F330(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.name.setter(v1, v2);
}

void sub_1C892F3B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_1119();
  v9 = v8;
  v11 = v10;
  v12 = v6;
  v13 = OUTLINED_FUNCTION_68();
  v15 = *(v14(v13) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *(v6 + v15);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11(0);
    OUTLINED_FUNCTION_218_2();
    swift_allocObject();
    v19 = OUTLINED_FUNCTION_2();
    v18 = v9(v19);
    *(v12 + v15) = v18;
  }

  OUTLINED_FUNCTION_178_0(v18 + 32, v17);
  *(v18 + 32) = v7;
  *(v18 + 40) = v5;

  OUTLINED_FUNCTION_1118();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.name.modify()
{
  v2 = OUTLINED_FUNCTION_813();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_34_0(v3) + 64) = v0;
  OUTLINED_FUNCTION_392_0();
  *(v1 + 72) = v4;
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_36_3();
  swift_beginAccess();
  v6 = *(v5 + 40);
  *(v1 + 48) = *(v5 + 32);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_12();
}

void sub_1C892F500()
{
  OUTLINED_FUNCTION_261();
  OUTLINED_FUNCTION_732();
  if (v6)
  {
    v7 = v5;
    OUTLINED_FUNCTION_1166();
    v8 = OUTLINED_FUNCTION_184();
    v7(v8);
  }

  else
  {
    OUTLINED_FUNCTION_801();
    v9 = *(v0 + 72);
    v10 = *(v0 + 64);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v10 + v9);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = *(v0 + 72);
      v14 = *(v0 + 64);
      v4(0);
      OUTLINED_FUNCTION_218_2();
      swift_allocObject();
      v15 = OUTLINED_FUNCTION_2();
      v12 = v3(v15);
      *(v14 + v13) = v12;
    }

    OUTLINED_FUNCTION_37_0(v12 + 32, v0 + 24);
    *(v12 + 32) = v2;
    *(v12 + 40) = v1;
  }

  OUTLINED_FUNCTION_260();

  free(v16);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.toolType.getter()
{
  OUTLINED_FUNCTION_309_1();
  OUTLINED_FUNCTION_36_3();
  swift_beginAccess();
  OUTLINED_FUNCTION_1079(*(v0 + 48));
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.toolType.setter()
{
  OUTLINED_FUNCTION_533();
  v2 = v0;
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1(0);
  v7 = OUTLINED_FUNCTION_41_1(v6);
  v9 = *(v0 + v1);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_544();
    v10 = OUTLINED_FUNCTION_2();
    v9 = sub_1C89ADBE8(v10);
    *(v2 + v1) = v9;
  }

  OUTLINED_FUNCTION_178_0(v9 + 48, v8);
  *(v9 + 48) = v4;
  *(v9 + 56) = v5;
  OUTLINED_FUNCTION_534();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.toolType.modify()
{
  v2 = OUTLINED_FUNCTION_758();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_34_0(v3) + 88) = v0;
  OUTLINED_FUNCTION_392_0();
  *(v1 + 84) = v4;
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_36_3();
  swift_beginAccess();
  v6 = *(v5 + 56);
  *(v1 + 72) = *(v5 + 48);
  *(v1 + 80) = v6;
  return OUTLINED_FUNCTION_31();
}

void sub_1C892F6FC()
{
  OUTLINED_FUNCTION_261();
  v2 = v1;
  OUTLINED_FUNCTION_925();
  v4 = *(v3 + 72);
  v5 = *(v0 + 84);
  v6 = *(v0 + 88);
  v7 = *(v0 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v6 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = *(v0 + 84);
    v11 = *(v0 + 88);
    OUTLINED_FUNCTION_544();
    v12 = OUTLINED_FUNCTION_2();
    v9 = sub_1C89ADBE8(v12);
    *(v11 + v10) = v9;
  }

  v13 = 48;
  if (v2)
  {
    v13 = 24;
  }

  OUTLINED_FUNCTION_37_0(v9 + 48, v0 + v13);
  *(v9 + 48) = v4;
  *(v9 + 56) = v7;
  OUTLINED_FUNCTION_260();

  free(v14);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.parameters.getter()
{
  OUTLINED_FUNCTION_392_0();
  OUTLINED_FUNCTION_36_3();
  swift_beginAccess();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.parameters.setter()
{
  v3 = OUTLINED_FUNCTION_241();
  v4 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1(v3);
  v5 = OUTLINED_FUNCTION_436(v4);
  v7 = *(v1 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_544();
    v8 = OUTLINED_FUNCTION_2();
    v9 = sub_1C89ADBE8(v8);
    OUTLINED_FUNCTION_264_1(v9);
  }

  OUTLINED_FUNCTION_178_0(v7 + 64, v6);
  *(v7 + 64) = v0;
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.parameters.modify()
{
  v2 = OUTLINED_FUNCTION_51();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_216_1(v3);
  OUTLINED_FUNCTION_36_3();
  swift_beginAccess();
  *(v1 + 48) = *(v0 + 64);

  return OUTLINED_FUNCTION_12();
}

void sub_1C892F8E8(uint64_t a1)
{
  OUTLINED_FUNCTION_925();
  v3 = *(v2 + 48);
  if (v4)
  {

    Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.parameters.setter();
  }

  else
  {
    v5 = *(v1 + 64);
    v6 = *(v1 + 56);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(v6 + v5);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = *(v1 + 64);
      v10 = *(v1 + 56);
      OUTLINED_FUNCTION_544();
      v11 = OUTLINED_FUNCTION_2();
      v8 = sub_1C89ADBE8(v11);
      *(v10 + v9) = v8;
    }

    OUTLINED_FUNCTION_37_0(v8 + 64, v1 + 24);
    *(v8 + 64) = v3;
  }

  free(v1);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.outputType.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_220();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_526_0(v7);
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_425_0();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(0);
  OUTLINED_FUNCTION_46_2(v8);
  if (v9)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    if (qword_1EC2B54E8 != -1)
    {
      OUTLINED_FUNCTION_47_7(&qword_1EC2B54E8);
    }

    result = OUTLINED_FUNCTION_263_1();
    if (a1 != 1)
    {
      return sub_1C8778ED8(v1, &qword_1EC2B60D8, &qword_1C8BE6D88);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_20();
    OUTLINED_FUNCTION_121();
    return sub_1C88E3EC4();
  }

  return result;
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.outputType.setter()
{
  OUTLINED_FUNCTION_31_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60D8, &qword_1C8BE6D88);
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_170();
  v3 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1(v2);
  if ((OUTLINED_FUNCTION_41_1(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_544();
    v4 = OUTLINED_FUNCTION_2();
    v5 = sub_1C89ADBE8(v4);
    OUTLINED_FUNCTION_40(v5);
  }

  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_196_0();
  sub_1C88E3EC4();
  OUTLINED_FUNCTION_554();
  v6 = OUTLINED_FUNCTION_128_2();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_200();
  sub_1C89CBD78();
  return swift_endAccess();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.outputType.modify()
{
  OUTLINED_FUNCTION_124();
  v3 = OUTLINED_FUNCTION_41_0();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_14_2(v4);
  v5 = OUTLINED_FUNCTION_230();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_80(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_13_2(v9);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(v10);
  OUTLINED_FUNCTION_48_5();
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_38_0(v12);
  *(v2 + 48) = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_309_1();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_470();
  OUTLINED_FUNCTION_0_0();
  if (v14)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    if (qword_1EC2B54E8 != -1)
    {
      OUTLINED_FUNCTION_47_7(&qword_1EC2B54E8);
    }

    OUTLINED_FUNCTION_259_1();
    if (v0 != 1)
    {
      sub_1C8778ED8(v1, &qword_1EC2B60D8, &qword_1C8BE6D88);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_20();
    OUTLINED_FUNCTION_168_0();
    sub_1C88E3EC4();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.hasOutputType.getter()
{
  v0 = OUTLINED_FUNCTION_12();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_80(v2);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_526_0(v4);
  OUTLINED_FUNCTION_157_2();
  OUTLINED_FUNCTION_468_0();
  v5 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(0);
  OUTLINED_FUNCTION_10(v5);
  return OUTLINED_FUNCTION_268_1();
}

Swift::Void __swiftcall Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.clearOutputType()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60D8, &qword_1C8BE6D88);
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_170();
  v3 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1(v2);
  if ((OUTLINED_FUNCTION_436(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_544();
    v4 = OUTLINED_FUNCTION_2();
    v5 = sub_1C89ADBE8(v4);
    OUTLINED_FUNCTION_264_1(v5);
  }

  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(0);
  OUTLINED_FUNCTION_156_2(v6);
  OUTLINED_FUNCTION_155_2();
  OUTLINED_FUNCTION_200();
  sub_1C89CBD78();
  swift_endAccess();
}

uint64_t sub_1C892FE6C(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_167();
  v5 = v4(v3);
  OUTLINED_FUNCTION_429_0(v5, v6);
  if (!*(a2 + 8))
  {
    OUTLINED_FUNCTION_19_0();
  }

  return OUTLINED_FUNCTION_218();
}

void sub_1C892FF4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_1119();
  a21 = v26;
  a22 = v27;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = v23;
  v35 = OUTLINED_FUNCTION_68();
  v37 = v36(v35);
  OUTLINED_FUNCTION_880(v37);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v39 = *(v23 + v25);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v33(0);
    OUTLINED_FUNCTION_218_2();
    swift_allocObject();
    v40 = OUTLINED_FUNCTION_2();
    isUniquelyReferenced_nonNull_native = v31(v40);
    v39 = isUniquelyReferenced_nonNull_native;
    *(v34 + v25) = isUniquelyReferenced_nonNull_native;
  }

  v41 = (v39 + *v29);
  OUTLINED_FUNCTION_36_0(isUniquelyReferenced_nonNull_native, &a10);
  *v41 = v24;
  v41[1] = v22;

  OUTLINED_FUNCTION_1118();
}

void (*Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.outputResultName.modify())(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v2 = OUTLINED_FUNCTION_813();
  v3 = __swift_coroFrameAllocStub(v2);
  *v0 = v3;
  v3[8] = v1;
  OUTLINED_FUNCTION_392_0();
  *(v3 + 18) = v4;
  v5 = (*(v1 + v4) + OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__outputResultName);
  OUTLINED_FUNCTION_271();
  OUTLINED_FUNCTION_36_3();
  swift_beginAccess();
  if (v5[1])
  {
    v6 = *v5;
    v7 = v5[1];
  }

  else
  {
    OUTLINED_FUNCTION_14_1();
  }

  v3[6] = v6;
  v3[7] = v7;

  return sub_1C8930088;
}

BOOL sub_1C89300F0(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_167();
  v5 = v4(v3);
  OUTLINED_FUNCTION_429_0(v5, v6);
  return *(a2 + 8) != 0;
}

void sub_1C893017C()
{
  OUTLINED_FUNCTION_533();
  v5 = OUTLINED_FUNCTION_1017();
  v7 = *(v6(v5) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4(0);
    OUTLINED_FUNCTION_218_2();
    swift_allocObject();
    v10 = OUTLINED_FUNCTION_2();
    v9 = v3(v10);
    *(v2 + v7) = v9;
  }

  v11 = (v9 + *v0);
  v12 = OUTLINED_FUNCTION_698();
  OUTLINED_FUNCTION_37_0(v12, v13);
  *v11 = 0;
  v11[1] = 0;

  OUTLINED_FUNCTION_534();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.sourceApplication.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_220();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_170();
  OUTLINED_FUNCTION_526_0(v7);
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_232();
  sub_1C89CBE2C();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AppDefinition(0);
  OUTLINED_FUNCTION_65(v1);
  if (v8)
  {
    OUTLINED_FUNCTION_992();
    *(a1 + 16) = 0;
    *(a1 + 24) = v9;
    *(a1 + 32) = 0;
    *(a1 + 40) = v9;
    *(a1 + 48) = 0;
    *(a1 + 56) = v9;
    *(a1 + 64) = 0;
    *(a1 + 72) = v9;
    *(a1 + 80) = 0;
    *(a1 + 88) = 1;
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AppDefinition.Device(0);
    result = OUTLINED_FUNCTION_9_13(v10);
    if (!v8)
    {
      return sub_1C8778ED8(v1, &qword_1EC2BADB8, &qword_1C8BFABD8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_446();
    return sub_1C88E3EC4();
  }

  return result;
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.sourceApplication.setter()
{
  OUTLINED_FUNCTION_31_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BADB8, &qword_1C8BFABD8);
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_170();
  v3 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1(v2);
  if ((OUTLINED_FUNCTION_41_1(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_544();
    v4 = OUTLINED_FUNCTION_2();
    v5 = sub_1C89ADBE8(v4);
    OUTLINED_FUNCTION_40(v5);
  }

  OUTLINED_FUNCTION_196_0();
  sub_1C88E3EC4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AppDefinition(0);
  v6 = OUTLINED_FUNCTION_128_2();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_200();
  sub_1C89CBD78();
  return swift_endAccess();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.AppDefinition.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_132(a1);
  *(v1 + 16) = 0;
  *(v1 + 24) = v2;
  *(v1 + 32) = 0;
  *(v1 + 40) = v2;
  *(v1 + 48) = 0;
  *(v1 + 56) = v2;
  *(v1 + 64) = 0;
  *(v1 + 72) = v2;
  *(v1 + 80) = 0;
  *(v1 + 88) = 1;
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AppDefinition(0);
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AppDefinition.Device(0);
  v3 = OUTLINED_FUNCTION_27_1();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.sourceApplication.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_14_2(v3);
  v4 = OUTLINED_FUNCTION_230();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_13_2(v8);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AppDefinition(v9);
  OUTLINED_FUNCTION_48_5();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_38_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  *(v1 + 48) = v13;
  OUTLINED_FUNCTION_309_1();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_470();
  OUTLINED_FUNCTION_0_0();
  if (v14)
  {
    OUTLINED_FUNCTION_740();
    v13[2] = 0;
    v13[3] = v15;
    v13[4] = 0;
    v13[5] = v15;
    v13[6] = 0;
    v13[7] = v15;
    v13[8] = 0;
    v13[9] = v15;
    v13[10] = 0;
    *(v13 + 88) = 1;
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v16 = OUTLINED_FUNCTION_1071();
    v17 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AppDefinition.Device(v16);
    OUTLINED_FUNCTION_5_12(v17);
    if (!v14)
    {
      sub_1C8778ED8(v0, &qword_1EC2BADB8, &qword_1C8BFABD8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_318_0();
    sub_1C88E3EC4();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.hasSourceApplication.getter()
{
  v0 = OUTLINED_FUNCTION_12();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_80(v2);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_526_0(v4);
  OUTLINED_FUNCTION_157_2();
  OUTLINED_FUNCTION_468_0();
  v5 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AppDefinition(0);
  OUTLINED_FUNCTION_10(v5);
  return OUTLINED_FUNCTION_268_1();
}

Swift::Void __swiftcall Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.clearSourceApplication()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BADB8, &qword_1C8BFABD8);
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_170();
  v3 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1(v2);
  if ((OUTLINED_FUNCTION_436(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_544();
    v4 = OUTLINED_FUNCTION_2();
    v5 = sub_1C89ADBE8(v4);
    OUTLINED_FUNCTION_264_1(v5);
  }

  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AppDefinition(0);
  OUTLINED_FUNCTION_156_2(v6);
  OUTLINED_FUNCTION_155_2();
  OUTLINED_FUNCTION_200();
  sub_1C89CBD78();
  swift_endAccess();
}

void (*Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.descriptionSummary.modify())(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v2 = OUTLINED_FUNCTION_813();
  v3 = __swift_coroFrameAllocStub(v2);
  *v0 = v3;
  v3[8] = v1;
  OUTLINED_FUNCTION_392_0();
  *(v3 + 18) = v4;
  v5 = (*(v1 + v4) + OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__descriptionSummary);
  OUTLINED_FUNCTION_271();
  OUTLINED_FUNCTION_36_3();
  swift_beginAccess();
  if (v5[1])
  {
    v6 = *v5;
    v7 = v5[1];
  }

  else
  {
    OUTLINED_FUNCTION_14_1();
  }

  v3[6] = v6;
  v3[7] = v7;

  return sub_1C89308BC;
}

void sub_1C8930904()
{
  OUTLINED_FUNCTION_124();
  OUTLINED_FUNCTION_732();
  if (v7)
  {
    v8 = v6;
    OUTLINED_FUNCTION_1166();
    v9 = OUTLINED_FUNCTION_184();
    v8(v9);
  }

  else
  {
    v10 = v5;
    v11 = v4;
    v12 = v3;
    v13 = *(v0 + 72);
    v14 = *(v0 + 64);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *(v14 + v13);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v17 = *(v0 + 72);
      v18 = *(v0 + 64);
      v12(0);
      OUTLINED_FUNCTION_218_2();
      swift_allocObject();
      v19 = OUTLINED_FUNCTION_2();
      isUniquelyReferenced_nonNull_native = v11(v19);
      v16 = isUniquelyReferenced_nonNull_native;
      *(v18 + v17) = isUniquelyReferenced_nonNull_native;
    }

    v20 = (v16 + *v10);
    OUTLINED_FUNCTION_36_0(isUniquelyReferenced_nonNull_native, v0 + 24);
    *v20 = v2;
    v20[1] = v1;
  }

  OUTLINED_FUNCTION_125();

  free(v21);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.categories.modify()
{
  v0 = OUTLINED_FUNCTION_51();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_216_1(v1);
  OUTLINED_FUNCTION_36_3();
  swift_beginAccess();
  OUTLINED_FUNCTION_50_1();

  return OUTLINED_FUNCTION_12();
}

uint64_t sub_1C8930B20(uint64_t *a1)
{
  OUTLINED_FUNCTION_309_1();
  OUTLINED_FUNCTION_36_3();
  swift_beginAccess();
}

void sub_1C8930BA0()
{
  OUTLINED_FUNCTION_533();
  v4 = v3;
  v5 = OUTLINED_FUNCTION_241();
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1(v5);
  v7 = OUTLINED_FUNCTION_41_1(v6);
  v9 = *(v1 + v2);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_544();
    v10 = OUTLINED_FUNCTION_2();
    v11 = sub_1C89ADBE8(v10);
    OUTLINED_FUNCTION_40(v11);
  }

  v12 = *v4;
  OUTLINED_FUNCTION_178_0(v9 + v12, v8);
  *(v9 + v12) = v0;

  OUTLINED_FUNCTION_534();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.searchKeywords.modify()
{
  v0 = OUTLINED_FUNCTION_51();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_216_1(v1);
  OUTLINED_FUNCTION_36_3();
  swift_beginAccess();
  OUTLINED_FUNCTION_50_1();

  return OUTLINED_FUNCTION_12();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.deprecationDefinition.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_526_0(v5);
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_425_0();
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Deprecation(0);
  OUTLINED_FUNCTION_46_2(v6);
  if (v7)
  {
    OUTLINED_FUNCTION_670();
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_18_2(OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit14ToolDefinition8Version1P33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__flags);
    result = OUTLINED_FUNCTION_1_0();
    if (!v7)
    {
      return sub_1C8778ED8(v0, &qword_1EC2BADE0, &qword_1C8BFABE0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_493();
    OUTLINED_FUNCTION_121();
    return sub_1C88E3EC4();
  }

  return result;
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.deprecationDefinition.setter()
{
  OUTLINED_FUNCTION_31_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BADE0, &qword_1C8BFABE0);
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_170();
  v3 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1(v2);
  if ((OUTLINED_FUNCTION_41_1(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_544();
    v4 = OUTLINED_FUNCTION_2();
    v5 = sub_1C89ADBE8(v4);
    OUTLINED_FUNCTION_40(v5);
  }

  OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_196_0();
  sub_1C88E3EC4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Deprecation(0);
  v6 = OUTLINED_FUNCTION_128_2();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_200();
  sub_1C89CBD78();
  return swift_endAccess();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.deprecationDefinition.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_14_2(v3);
  v4 = OUTLINED_FUNCTION_230();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_13_2(v8);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Deprecation(v9);
  OUTLINED_FUNCTION_48_5();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_38_0(v11);
  *(v1 + 48) = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_309_1();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_470();
  OUTLINED_FUNCTION_0_0();
  if (v13)
  {
    OUTLINED_FUNCTION_740();
    OUTLINED_FUNCTION_1020(v14);
    OUTLINED_FUNCTION_777();
    *v15 = 0;
    v15[1] = 0;
    OUTLINED_FUNCTION_0_0();
    if (!v13)
    {
      sub_1C8778ED8(v0, &qword_1EC2BADE0, &qword_1C8BFABE0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_318_0();
    sub_1C88E3EC4();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.hasDeprecationDefinition.getter()
{
  v0 = OUTLINED_FUNCTION_12();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_80(v2);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_526_0(v4);
  OUTLINED_FUNCTION_157_2();
  OUTLINED_FUNCTION_468_0();
  v5 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Deprecation(0);
  OUTLINED_FUNCTION_10(v5);
  return OUTLINED_FUNCTION_268_1();
}

Swift::Void __swiftcall Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.clearDeprecationDefinition()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BADE0, &qword_1C8BFABE0);
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_170();
  v3 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1(v2);
  if ((OUTLINED_FUNCTION_436(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_544();
    v4 = OUTLINED_FUNCTION_2();
    v5 = sub_1C89ADBE8(v4);
    OUTLINED_FUNCTION_264_1(v5);
  }

  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Deprecation(0);
  OUTLINED_FUNCTION_156_2(v6);
  OUTLINED_FUNCTION_155_2();
  OUTLINED_FUNCTION_200();
  sub_1C89CBD78();
  swift_endAccess();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.requirements.modify()
{
  v0 = OUTLINED_FUNCTION_51();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_216_1(v1);
  OUTLINED_FUNCTION_36_3();
  swift_beginAccess();
  OUTLINED_FUNCTION_50_1();

  return OUTLINED_FUNCTION_12();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.flags.modify()
{
  v0 = OUTLINED_FUNCTION_51();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_216_1(v1);
  OUTLINED_FUNCTION_36_3();
  swift_beginAccess();
  OUTLINED_FUNCTION_50_1();

  return OUTLINED_FUNCTION_12();
}

uint64_t sub_1C8931300@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1(0);
  result = OUTLINED_FUNCTION_429_0(v5, v6);
  v8 = *(a2 + 8);
  *a3 = *a2;
  *(a3 + 8) = v8;
  return result;
}

void sub_1C89313E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_1119();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = v5;
  v15 = *v14;
  v16 = *(v14 + 8);
  v18 = v17(0);
  OUTLINED_FUNCTION_880(v18);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *(v5 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12(0);
    OUTLINED_FUNCTION_218_2();
    swift_allocObject();
    v21 = OUTLINED_FUNCTION_2();
    v20 = v10(v21);
    *(v13 + v6) = v20;
  }

  v22 = v20 + *v8;
  v23 = OUTLINED_FUNCTION_698();
  OUTLINED_FUNCTION_37_0(v23, v24);
  *v22 = v15;
  *(v22 + 8) = v16;
  OUTLINED_FUNCTION_1118();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.authenticationPolicy.modify()
{
  v2 = OUTLINED_FUNCTION_758();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_34_0(v3) + 88) = v0;
  OUTLINED_FUNCTION_392_0();
  *(v1 + 84) = v4;
  OUTLINED_FUNCTION_380();
  OUTLINED_FUNCTION_800();
  *(v1 + 72) = v5;
  *(v1 + 80) = v6;
  return OUTLINED_FUNCTION_31();
}

void sub_1C8931528()
{
  OUTLINED_FUNCTION_124();
  v4 = v3;
  OUTLINED_FUNCTION_801();
  v6 = v5;
  OUTLINED_FUNCTION_925();
  v8 = *(v7 + 72);
  v9 = *(v0 + 84);
  v10 = *(v0 + 88);
  v11 = *(v0 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v10 + v9);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = *(v0 + 84);
    v15 = *(v0 + 88);
    v2(0);
    OUTLINED_FUNCTION_218_2();
    swift_allocObject();
    v16 = OUTLINED_FUNCTION_2();
    isUniquelyReferenced_nonNull_native = v1(v16);
    v13 = isUniquelyReferenced_nonNull_native;
    *(v15 + v14) = isUniquelyReferenced_nonNull_native;
  }

  v17 = 48;
  if (v6)
  {
    v17 = 24;
  }

  v18 = v13 + *v4;
  OUTLINED_FUNCTION_36_0(isUniquelyReferenced_nonNull_native, v0 + v17);
  *v18 = v8;
  *(v18 + 8) = v11;
  OUTLINED_FUNCTION_125();

  free(v19);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.sampleInvocations.modify()
{
  v0 = OUTLINED_FUNCTION_51();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_216_1(v1);
  OUTLINED_FUNCTION_36_3();
  swift_beginAccess();
  OUTLINED_FUNCTION_50_1();

  return OUTLINED_FUNCTION_12();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.systemProtocols.modify()
{
  v0 = OUTLINED_FUNCTION_51();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_216_1(v1);
  OUTLINED_FUNCTION_36_3();
  swift_beginAccess();
  OUTLINED_FUNCTION_50_1();

  return OUTLINED_FUNCTION_12();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.customIcon.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_526_0(v5);
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_425_0();
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.ToolIcon(0);
  OUTLINED_FUNCTION_46_2(v6);
  if (v7)
  {
    v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.ToolIcon.OneOf_ToolIconKind(0);
    OUTLINED_FUNCTION_107_1(v8);
    result = OUTLINED_FUNCTION_1_0();
    if (!v7)
    {
      return sub_1C8778ED8(v0, &qword_1EC2BAE18, &qword_1C8BFABE8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_492();
    OUTLINED_FUNCTION_121();
    return sub_1C88E3EC4();
  }

  return result;
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.customIcon.setter()
{
  OUTLINED_FUNCTION_31_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAE18, &qword_1C8BFABE8);
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_170();
  v3 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1(v2);
  if ((OUTLINED_FUNCTION_41_1(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_544();
    v4 = OUTLINED_FUNCTION_2();
    v5 = sub_1C89ADBE8(v4);
    OUTLINED_FUNCTION_40(v5);
  }

  OUTLINED_FUNCTION_492();
  OUTLINED_FUNCTION_196_0();
  sub_1C88E3EC4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.ToolIcon(0);
  v6 = OUTLINED_FUNCTION_128_2();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_200();
  sub_1C89CBD78();
  return swift_endAccess();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.customIcon.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_14_2(v3);
  v4 = OUTLINED_FUNCTION_230();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_13_2(v8);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.ToolIcon(v9);
  OUTLINED_FUNCTION_48_5();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_38_0(v11);
  *(v1 + 48) = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_309_1();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_470();
  OUTLINED_FUNCTION_0_0();
  if (v13)
  {
    v14 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.ToolIcon.OneOf_ToolIconKind(0);
    v15 = OUTLINED_FUNCTION_457_0(v14);
    OUTLINED_FUNCTION_1020(v15);
    OUTLINED_FUNCTION_0_0();
    if (!v13)
    {
      sub_1C8778ED8(v0, &qword_1EC2BAE18, &qword_1C8BFABE8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_318_0();
    sub_1C88E3EC4();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.hasCustomIcon.getter()
{
  v0 = OUTLINED_FUNCTION_12();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_80(v2);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_526_0(v4);
  OUTLINED_FUNCTION_157_2();
  OUTLINED_FUNCTION_468_0();
  v5 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.ToolIcon(0);
  OUTLINED_FUNCTION_10(v5);
  return OUTLINED_FUNCTION_268_1();
}

Swift::Void __swiftcall Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.clearCustomIcon()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAE18, &qword_1C8BFABE8);
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_170();
  v3 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1(v2);
  if ((OUTLINED_FUNCTION_436(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_544();
    v4 = OUTLINED_FUNCTION_2();
    v5 = sub_1C89ADBE8(v4);
    OUTLINED_FUNCTION_264_1(v5);
  }

  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.ToolIcon(0);
  OUTLINED_FUNCTION_156_2(v6);
  OUTLINED_FUNCTION_155_2();
  OUTLINED_FUNCTION_200();
  sub_1C89CBD78();
  swift_endAccess();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.hiddenParameters.modify()
{
  v0 = OUTLINED_FUNCTION_51();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_216_1(v1);
  OUTLINED_FUNCTION_36_3();
  swift_beginAccess();
  OUTLINED_FUNCTION_50_1();

  return OUTLINED_FUNCTION_12();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.sourceContainer.setter()
{
  OUTLINED_FUNCTION_31_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAE30, &unk_1C8BFABF0);
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_170();
  v3 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1(v2);
  if ((OUTLINED_FUNCTION_41_1(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_544();
    v4 = OUTLINED_FUNCTION_2();
    v5 = sub_1C89ADBE8(v4);
    OUTLINED_FUNCTION_40(v5);
  }

  OUTLINED_FUNCTION_322_0();
  OUTLINED_FUNCTION_196_0();
  sub_1C88E3EC4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContainerDefinition(0);
  v6 = OUTLINED_FUNCTION_128_2();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_200();
  sub_1C89CBD78();
  return swift_endAccess();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.ContainerDefinition.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_132(a1);
  *(v1 + 16) = 0;
  *(v1 + 24) = v3;
  *(v1 + 32) = 0;
  *(v1 + 40) = 1;
  *(v1 + 48) = 0;
  *(v1 + 56) = 1;
  v4 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContainerDefinition(0);
  OUTLINED_FUNCTION_1116(v4);
  OUTLINED_FUNCTION_18_2(*(v2 + 36));
  OUTLINED_FUNCTION_18_2(*(v2 + 40));
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContainerDefinition.Device(0);
  v5 = OUTLINED_FUNCTION_27_1();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.sourceContainer.modify()
{
  OUTLINED_FUNCTION_124();
  v3 = OUTLINED_FUNCTION_41_0();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_14_2(v4);
  v5 = OUTLINED_FUNCTION_230();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_80(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_13_2(v9);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContainerDefinition(v10);
  OUTLINED_FUNCTION_48_5();
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_38_0(v12);
  *(v2 + 48) = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_309_1();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_470();
  OUTLINED_FUNCTION_0_0();
  if (v14)
  {
    OUTLINED_FUNCTION_740();
    OUTLINED_FUNCTION_1009(v15);
    OUTLINED_FUNCTION_26(*(v0 + 36));
    OUTLINED_FUNCTION_26(*(v0 + 40));
    v16 = OUTLINED_FUNCTION_1071();
    v17 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContainerDefinition.Device(v16);
    OUTLINED_FUNCTION_5_12(v17);
    if (!v14)
    {
      sub_1C8778ED8(v1, &qword_1EC2BAE30, &unk_1C8BFABF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_318_0();
    sub_1C88E3EC4();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.hasSourceContainer.getter()
{
  v0 = OUTLINED_FUNCTION_12();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_80(v2);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_526_0(v4);
  OUTLINED_FUNCTION_157_2();
  OUTLINED_FUNCTION_468_0();
  v5 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContainerDefinition(0);
  OUTLINED_FUNCTION_10(v5);
  return OUTLINED_FUNCTION_268_1();
}

Swift::Void __swiftcall Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.clearSourceContainer()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAE30, &unk_1C8BFABF0);
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_170();
  v3 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1(v2);
  if ((OUTLINED_FUNCTION_436(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_544();
    v4 = OUTLINED_FUNCTION_2();
    v5 = sub_1C89ADBE8(v4);
    OUTLINED_FUNCTION_264_1(v5);
  }

  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContainerDefinition(0);
  OUTLINED_FUNCTION_156_2(v6);
  OUTLINED_FUNCTION_155_2();
  OUTLINED_FUNCTION_200();
  sub_1C89CBD78();
  swift_endAccess();
}

uint64_t sub_1C8932148()
{
  OUTLINED_FUNCTION_526();
  v2 = OUTLINED_FUNCTION_299_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_80(v4);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_526_0(v6);
  OUTLINED_FUNCTION_36_3();
  swift_beginAccess();
  OUTLINED_FUNCTION_382();
  sub_1C89CBE2C();
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContainerDefinition(0);
  OUTLINED_FUNCTION_46_2(v7);
  if (v8)
  {
    Siri_Nlu_External_IntelligenceFlow_ToolKit.ContainerDefinition.init()(v0);
    result = OUTLINED_FUNCTION_1_0();
    if (!v8)
    {
      return sub_1C8778ED8(v1, &qword_1EC2BAE30, &unk_1C8BFABF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_121();
    return sub_1C88E3EC4();
  }

  return result;
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.attributionContainer.setter()
{
  OUTLINED_FUNCTION_31_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAE30, &unk_1C8BFABF0);
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_170();
  v3 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1(v2);
  if ((OUTLINED_FUNCTION_41_1(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_544();
    v4 = OUTLINED_FUNCTION_2();
    v5 = sub_1C89ADBE8(v4);
    OUTLINED_FUNCTION_40(v5);
  }

  OUTLINED_FUNCTION_322_0();
  OUTLINED_FUNCTION_196_0();
  sub_1C88E3EC4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContainerDefinition(0);
  v6 = OUTLINED_FUNCTION_128_2();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_200();
  sub_1C89CBD78();
  return swift_endAccess();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.attributionContainer.modify()
{
  OUTLINED_FUNCTION_124();
  v3 = OUTLINED_FUNCTION_41_0();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_14_2(v4);
  v5 = OUTLINED_FUNCTION_230();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_80(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_13_2(v9);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContainerDefinition(v10);
  OUTLINED_FUNCTION_48_5();
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_38_0(v12);
  *(v2 + 48) = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_309_1();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_470();
  OUTLINED_FUNCTION_0_0();
  if (v14)
  {
    OUTLINED_FUNCTION_740();
    OUTLINED_FUNCTION_1009(v15);
    OUTLINED_FUNCTION_26(*(v0 + 36));
    OUTLINED_FUNCTION_26(*(v0 + 40));
    v16 = OUTLINED_FUNCTION_1071();
    v17 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContainerDefinition.Device(v16);
    OUTLINED_FUNCTION_5_12(v17);
    if (!v14)
    {
      sub_1C8778ED8(v1, &qword_1EC2BAE30, &unk_1C8BFABF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_318_0();
    sub_1C88E3EC4();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.hasAttributionContainer.getter()
{
  v0 = OUTLINED_FUNCTION_12();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_80(v2);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_526_0(v4);
  OUTLINED_FUNCTION_157_2();
  OUTLINED_FUNCTION_468_0();
  v5 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContainerDefinition(0);
  OUTLINED_FUNCTION_10(v5);
  return OUTLINED_FUNCTION_268_1();
}

Swift::Void __swiftcall Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.clearAttributionContainer()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAE30, &unk_1C8BFABF0);
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_170();
  v3 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1(v2);
  if ((OUTLINED_FUNCTION_436(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_544();
    v4 = OUTLINED_FUNCTION_2();
    v5 = sub_1C89ADBE8(v4);
    OUTLINED_FUNCTION_264_1(v5);
  }

  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContainerDefinition(0);
  OUTLINED_FUNCTION_156_2(v6);
  OUTLINED_FUNCTION_155_2();
  OUTLINED_FUNCTION_200();
  sub_1C89CBD78();
  swift_endAccess();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.visibilityFlags.modify()
{
  v0 = OUTLINED_FUNCTION_51();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_216_1(v1);
  OUTLINED_FUNCTION_36_3();
  swift_beginAccess();
  OUTLINED_FUNCTION_50_1();

  return OUTLINED_FUNCTION_12();
}

void sub_1C89326C4(uint64_t a1)
{
  OUTLINED_FUNCTION_925();
  v5 = *(v4 + 48);
  if (v6)
  {
    v7 = v3;

    v7(v8);
  }

  else
  {
    v9 = v2;
    v10 = *(v1 + 64);
    v11 = *(v1 + 56);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v11 + v10);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v14 = *(v1 + 64);
      v15 = *(v1 + 56);
      OUTLINED_FUNCTION_544();
      v16 = OUTLINED_FUNCTION_2();
      v13 = sub_1C89ADBE8(v16);
      *(v15 + v14) = v13;
    }

    v17 = *v9;
    OUTLINED_FUNCTION_37_0(v13 + v17, v1 + 24);
    *(v13 + v17) = v5;
  }

  free(v1);
}

uint64_t sub_1C89327C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C89DF208();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Flag.init(rawValue:)(unint64_t a1@<X0>, void *a2@<X8>)
{
  if (a1 >= 3)
  {
    v2 = 4;
    v3 = 5;
    v4 = 6;
    v5 = 3;
    if (a1 != 4)
    {
      v5 = a1;
    }

    if (a1 != 32)
    {
      v4 = v5;
    }

    if (a1 != 16)
    {
      v3 = v4;
    }

    if (a1 != 8)
    {
      v2 = v3;
    }

    if (a1 == 64)
    {
      a1 = 7;
    }

    else
    {
      a1 = v2;
    }
  }

  *a2 = a1;
  OUTLINED_FUNCTION_440(a2);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Flag.rawValue.getter()
{
  result = *v0;
  if (*(v0 + 8) == 1)
  {
    return qword_1C8C0A770[result];
  }

  return result;
}

uint64_t sub_1C89328C4@<X0>(uint64_t *a1@<X8>)
{
  result = Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Flag.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C89328F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C89DF1B4();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1C8932974(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C89DF160();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1C89329D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C89DF10C();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1C8932A80(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.description_p.setter(v1, v2);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter.description_p.modify()
{
  v0 = OUTLINED_FUNCTION_17_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_41(v1);
  v3 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1.Parameter(v2);
  if (OUTLINED_FUNCTION_4_1(*(v3 + 40)))
  {
    OUTLINED_FUNCTION_15_1();
  }

  else
  {
    OUTLINED_FUNCTION_14_1();
  }

  OUTLINED_FUNCTION_13_4(v4, v5);

  return OUTLINED_FUNCTION_12();
}