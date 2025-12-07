void sub_1C88F56D0(uint64_t *a1)
{
  v1 = a1[2];
  v2 = a1[1];
  v3 = *a1;
  sub_1C8778ED8(v2, &qword_1EC2BAB18, &qword_1C8BFAA38);
  *v2 = v3;
  OUTLINED_FUNCTION_196_0();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_296_0();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);

  free(v1);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.decimal.getter()
{
  OUTLINED_FUNCTION_93_1();
  v2 = OUTLINED_FUNCTION_253();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_80(v4);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_122_2();
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.OneOf_PrimitiveValueKind(0);
  OUTLINED_FUNCTION_5_8(v6);
  if (v7)
  {
    sub_1C8778ED8(v1, &qword_1EC2BAB18, &qword_1C8BFAA38);
  }

  else
  {
    OUTLINED_FUNCTION_92_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 4)
    {
      OUTLINED_FUNCTION_40_6();
      OUTLINED_FUNCTION_5_0();
      return sub_1C88E3EC4();
    }

    sub_1C88E3C58();
  }

  *v0 = 0;
  OUTLINED_FUNCTION_881();
  v0[2] = 0;
  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.Decimal(0);
  OUTLINED_FUNCTION_811(v10);
  OUTLINED_FUNCTION_884();
  sub_1C8BD49BC();
  v11 = OUTLINED_FUNCTION_27_1();
  return __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.decimal.setter()
{
  sub_1C8778ED8(v0, &qword_1EC2BAB18, &qword_1C8BFAA38);
  OUTLINED_FUNCTION_40_6();
  OUTLINED_FUNCTION_218();
  sub_1C88E3EC4();
  OUTLINED_FUNCTION_272_0();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_34_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.Decimal.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_539(a1);
  *(v1 + 16) = 0;
  v2 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.Decimal(0);
  OUTLINED_FUNCTION_811(v2);
  OUTLINED_FUNCTION_884();
  sub_1C8BD49BC();
  v3 = OUTLINED_FUNCTION_27_1();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.decimal.modify()
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
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.Decimal(v8);
  OUTLINED_FUNCTION_40_2();
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_110_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_232_2(v13);
  v14 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.OneOf_PrimitiveValueKind(0);
  OUTLINED_FUNCTION_35_5(v14);
  if (v15)
  {
    sub_1C8778ED8(v0, &qword_1EC2BAB18, &qword_1C8BFAA38);
LABEL_7:
    OUTLINED_FUNCTION_1047();
    *(v10 + 16) = 0;
    OUTLINED_FUNCTION_795();
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_1068();
    sub_1C8BD49BC();
    v17 = OUTLINED_FUNCTION_257_2();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_253();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 4)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_40_6();
  OUTLINED_FUNCTION_254_0();
  sub_1C88E3EC4();
LABEL_8:
  OUTLINED_FUNCTION_260();
}

void sub_1C88F5A48()
{
  OUTLINED_FUNCTION_32_6();
  if (v5)
  {
    OUTLINED_FUNCTION_184();
    sub_1C88E4144();
    sub_1C8778ED8(v4, &qword_1EC2BAB18, &qword_1C8BFAA38);
    OUTLINED_FUNCTION_40_6();
    OUTLINED_FUNCTION_156_1();
    sub_1C88E3EC4();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_323_1();
    sub_1C88E3C58();
  }

  else
  {
    sub_1C8778ED8(v4, &qword_1EC2BAB18, &qword_1C8BFAA38);
    OUTLINED_FUNCTION_40_6();
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

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.string.getter()
{
  v1 = OUTLINED_FUNCTION_271();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_207_3();
  OUTLINED_FUNCTION_1008();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.OneOf_PrimitiveValueKind(0);
  OUTLINED_FUNCTION_19(v0);
  if (v5)
  {
    sub_1C8778ED8(v0, &qword_1EC2BAB18, &qword_1C8BFAA38);
  }

  else
  {
    OUTLINED_FUNCTION_218();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 5)
    {
      return *v0;
    }

    sub_1C88E3C58();
  }

  return OUTLINED_FUNCTION_996();
}

uint64_t sub_1C88F5C14(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.string.setter(v1, v2, v3, v4, v5);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.string.modify()
{
  v2 = OUTLINED_FUNCTION_65_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_421_0(v3);
  v4 = OUTLINED_FUNCTION_299_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_291_1(v8);
  v9 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.OneOf_PrimitiveValueKind(0);
  OUTLINED_FUNCTION_84_3(v9);
  if (v10)
  {
    sub_1C8778ED8(v1, &qword_1EC2BAB18, &qword_1C8BFAA38);
LABEL_7:
    OUTLINED_FUNCTION_14_1();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_271();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 5)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  v12 = *v1;
  v13 = v1[1];
LABEL_8:
  *v0 = v12;
  v0[1] = v13;
  return OUTLINED_FUNCTION_687();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.date.getter()
{
  OUTLINED_FUNCTION_93_1();
  v1 = OUTLINED_FUNCTION_253();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_122_2();
  v5 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.OneOf_PrimitiveValueKind(0);
  OUTLINED_FUNCTION_5_8(v5);
  if (v6)
  {
    sub_1C8778ED8(v0, &qword_1EC2BAB18, &qword_1C8BFAA38);
  }

  else
  {
    OUTLINED_FUNCTION_92_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 6)
    {
      sub_1C8BD47FC();
      OUTLINED_FUNCTION_121_0();
      v8 = OUTLINED_FUNCTION_218();
      return v9(v8);
    }

    sub_1C88E3C58();
  }

  return sub_1C8BD47EC();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.date.setter()
{
  sub_1C8778ED8(v0, &qword_1EC2BAB18, &qword_1C8BFAA38);
  sub_1C8BD47FC();
  OUTLINED_FUNCTION_121_0();
  v1 = OUTLINED_FUNCTION_5_0();
  v2(v1);
  OUTLINED_FUNCTION_272_0();
  swift_storeEnumTagMultiPayload();
  v3 = OUTLINED_FUNCTION_34_2();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.date.modify()
{
  OUTLINED_FUNCTION_124();
  v1 = OUTLINED_FUNCTION_289_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v0[1] = v7;
  v8 = sub_1C8BD47FC();
  OUTLINED_FUNCTION_62_6(v8);
  v0[3] = v9;
  v11 = *(v10 + 64);
  v0[4] = __swift_coroFrameAllocStub(v11);
  v0[5] = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_300();
  sub_1C89CBE2C();
  v0[6] = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.OneOf_PrimitiveValueKind(0);
  OUTLINED_FUNCTION_73(v7);
  if (v12)
  {
    sub_1C8778ED8(v7, &qword_1EC2BAB18, &qword_1C8BFAA38);
LABEL_7:
    sub_1C8BD47EC();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_251_0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 6)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  v14 = OUTLINED_FUNCTION_82_3();
  v15(v14);
LABEL_8:
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.dateComponents.getter()
{
  v1 = OUTLINED_FUNCTION_271();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_207_3();
  OUTLINED_FUNCTION_1008();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.OneOf_PrimitiveValueKind(0);
  OUTLINED_FUNCTION_19(v0);
  if (v5)
  {
    sub_1C8778ED8(v0, &qword_1EC2BAB18, &qword_1C8BFAA38);
  }

  else
  {
    OUTLINED_FUNCTION_218();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 7)
    {
      return *v0;
    }

    sub_1C88E3C58();
  }

  return OUTLINED_FUNCTION_1157();
}

uint64_t sub_1C88F6190(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_1C87A8FBC(*a1, v2);
  return Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.dateComponents.setter(v1, v2, v3, v4, v5);
}

uint64_t sub_1C88F6200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  OUTLINED_FUNCTION_696();
  sub_1C8778ED8(v6, v10, v11);
  *v6 = v8;
  v6[1] = v7;
  v12 = a5(0);
  OUTLINED_FUNCTION_92_0();
  swift_storeEnumTagMultiPayload();
  v13 = OUTLINED_FUNCTION_297_0();

  return __swift_storeEnumTagSinglePayload(v13, v14, v15, v12);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.dateComponents.modify()
{
  v2 = OUTLINED_FUNCTION_65_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_421_0(v3);
  v4 = OUTLINED_FUNCTION_299_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_291_1(v8);
  v9 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.OneOf_PrimitiveValueKind(0);
  OUTLINED_FUNCTION_84_3(v9);
  if (v10)
  {
    sub_1C8778ED8(v1, &qword_1EC2BAB18, &qword_1C8BFAA38);
LABEL_7:
    v12 = xmmword_1C8BFA8F0;
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_271();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 7)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  v12 = *v1;
LABEL_8:
  *v0 = v12;
  return OUTLINED_FUNCTION_687();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.url.getter()
{
  v1 = OUTLINED_FUNCTION_271();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_207_3();
  OUTLINED_FUNCTION_1008();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.OneOf_PrimitiveValueKind(0);
  OUTLINED_FUNCTION_19(v0);
  if (v5)
  {
    sub_1C8778ED8(v0, &qword_1EC2BAB18, &qword_1C8BFAA38);
  }

  else
  {
    OUTLINED_FUNCTION_218();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 8)
    {
      return *v0;
    }

    sub_1C88E3C58();
  }

  return OUTLINED_FUNCTION_996();
}

uint64_t sub_1C88F6464(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.url.setter(v1, v2, v3, v4, v5);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.url.modify()
{
  v2 = OUTLINED_FUNCTION_65_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_421_0(v3);
  v4 = OUTLINED_FUNCTION_299_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_291_1(v8);
  v9 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.OneOf_PrimitiveValueKind(0);
  OUTLINED_FUNCTION_84_3(v9);
  if (v10)
  {
    sub_1C8778ED8(v1, &qword_1EC2BAB18, &qword_1C8BFAA38);
LABEL_7:
    OUTLINED_FUNCTION_14_1();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_271();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 8)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  v12 = *v1;
  v13 = v1[1];
LABEL_8:
  *v0 = v12;
  v0[1] = v13;
  return OUTLINED_FUNCTION_687();
}

void sub_1C88F65D8()
{
  OUTLINED_FUNCTION_124();
  v1 = v0;
  v4 = **v2;
  v3 = (*v2)[1];
  v5 = (*v2)[3];
  v6 = (*v2)[2];
  if (v7)
  {

    v8 = OUTLINED_FUNCTION_239();
    sub_1C8778ED8(v8, v9, v1);
    *v6 = v4;
    v6[1] = v3;
    OUTLINED_FUNCTION_168_0();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_319_0();
    __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  }

  else
  {
    v14 = OUTLINED_FUNCTION_239();
    sub_1C8778ED8(v14, v15, v1);
    *v6 = v4;
    v6[1] = v3;
    OUTLINED_FUNCTION_168_0();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_319_0();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
  }

  free(v5);
  OUTLINED_FUNCTION_125();

  free(v20);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.attributedString.getter()
{
  v1 = OUTLINED_FUNCTION_271();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_207_3();
  OUTLINED_FUNCTION_1008();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.OneOf_PrimitiveValueKind(0);
  OUTLINED_FUNCTION_19(v0);
  if (v5)
  {
    sub_1C8778ED8(v0, &qword_1EC2BAB18, &qword_1C8BFAA38);
  }

  else
  {
    OUTLINED_FUNCTION_218();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 9)
    {
      return *v0;
    }

    sub_1C88E3C58();
  }

  return OUTLINED_FUNCTION_1157();
}

uint64_t sub_1C88F677C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_1C87A8FBC(*a1, v2);
  return Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.attributedString.setter(v1, v2, v3, v4, v5);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.attributedString.modify()
{
  v2 = OUTLINED_FUNCTION_65_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_421_0(v3);
  v4 = OUTLINED_FUNCTION_299_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_291_1(v8);
  v9 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.OneOf_PrimitiveValueKind(0);
  OUTLINED_FUNCTION_84_3(v9);
  if (v10)
  {
    sub_1C8778ED8(v1, &qword_1EC2BAB18, &qword_1C8BFAA38);
LABEL_7:
    v12 = xmmword_1C8BFA8F0;
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_271();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 9)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  v12 = *v1;
LABEL_8:
  *v0 = v12;
  return OUTLINED_FUNCTION_687();
}

void sub_1C88F68F8()
{
  OUTLINED_FUNCTION_124();
  v1 = v0;
  v3 = *v2;
  v5 = **v2;
  v4 = (*v2)[1];
  v6 = (*v2)[3];
  v7 = (*v2)[2];
  if (v8)
  {
    v9 = OUTLINED_FUNCTION_80_1();
    sub_1C87A8FBC(v9, v10);
    v11 = OUTLINED_FUNCTION_1084();
    sub_1C8778ED8(v11, v12, v1);
    *v7 = v5;
    v7[1] = v4;
    OUTLINED_FUNCTION_168_0();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_319_0();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
    sub_1C87A997C(*v3, v3[1]);
  }

  else
  {
    v17 = OUTLINED_FUNCTION_1084();
    sub_1C8778ED8(v17, v18, v1);
    *v7 = v5;
    v7[1] = v4;
    OUTLINED_FUNCTION_168_0();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_319_0();
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
  }

  free(v6);
  OUTLINED_FUNCTION_125();

  free(v23);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.measurement.getter()
{
  OUTLINED_FUNCTION_93_1();
  v2 = OUTLINED_FUNCTION_253();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_80(v4);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_122_2();
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.OneOf_PrimitiveValueKind(0);
  OUTLINED_FUNCTION_5_8(v6);
  if (v7)
  {
    sub_1C8778ED8(v1, &qword_1EC2BAB18, &qword_1C8BFAA38);
  }

  else
  {
    OUTLINED_FUNCTION_92_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 10)
    {
      OUTLINED_FUNCTION_156_3();
      OUTLINED_FUNCTION_5_0();
      return sub_1C88E3EC4();
    }

    sub_1C88E3C58();
  }

  OUTLINED_FUNCTION_670();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 1;
  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.Measurement(0);
  return OUTLINED_FUNCTION_1016(v10);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.measurement.setter()
{
  sub_1C8778ED8(v0, &qword_1EC2BAB18, &qword_1C8BFAA38);
  OUTLINED_FUNCTION_156_3();
  OUTLINED_FUNCTION_218();
  sub_1C88E3EC4();
  OUTLINED_FUNCTION_272_0();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_34_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.Measurement.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_132(a1);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 1;
  v2 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.Measurement(0);
  return OUTLINED_FUNCTION_1016(v2);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.measurement.modify()
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
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.Measurement(v8);
  OUTLINED_FUNCTION_40_2();
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_110_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_232_2(v13);
  v14 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.OneOf_PrimitiveValueKind(0);
  OUTLINED_FUNCTION_35_5(v14);
  if (v15)
  {
    sub_1C8778ED8(v0, &qword_1EC2BAB18, &qword_1C8BFAA38);
LABEL_7:
    OUTLINED_FUNCTION_739();
    *(v10 + 16) = 0;
    *(v10 + 24) = 0;
    *(v10 + 32) = 1;
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_253();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 10)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_156_3();
  OUTLINED_FUNCTION_254_0();
  sub_1C88E3EC4();
LABEL_8:
  OUTLINED_FUNCTION_260();
}

void sub_1C88F6C98()
{
  OUTLINED_FUNCTION_32_6();
  if (v5)
  {
    OUTLINED_FUNCTION_184();
    sub_1C88E4144();
    sub_1C8778ED8(v4, &qword_1EC2BAB18, &qword_1C8BFAA38);
    OUTLINED_FUNCTION_156_3();
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
    sub_1C8778ED8(v4, &qword_1EC2BAB18, &qword_1C8BFAA38);
    OUTLINED_FUNCTION_156_3();
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

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.currencyAmount.getter()
{
  OUTLINED_FUNCTION_93_1();
  v1 = OUTLINED_FUNCTION_253();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_122_2();
  v5 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.OneOf_PrimitiveValueKind(0);
  OUTLINED_FUNCTION_5_8(v5);
  if (v6)
  {
    sub_1C8778ED8(v0, &qword_1EC2BAB18, &qword_1C8BFAA38);
  }

  else
  {
    OUTLINED_FUNCTION_92_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 11)
    {
      OUTLINED_FUNCTION_155_3();
      OUTLINED_FUNCTION_5_0();
      return sub_1C88E3EC4();
    }

    sub_1C88E3C58();
  }

  v9 = OUTLINED_FUNCTION_402_0();
  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.CurrencyAmount(v9);
  OUTLINED_FUNCTION_702(v10);
  v11 = OUTLINED_FUNCTION_524();
  v12 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.Decimal(v11);
  v13 = OUTLINED_FUNCTION_404(v12);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation(v13);
  v14 = OUTLINED_FUNCTION_27_1();
  return __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.currencyAmount.setter()
{
  sub_1C8778ED8(v0, &qword_1EC2BAB18, &qword_1C8BFAA38);
  OUTLINED_FUNCTION_155_3();
  OUTLINED_FUNCTION_218();
  sub_1C88E3EC4();
  OUTLINED_FUNCTION_272_0();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_34_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.currencyAmount.modify()
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
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.CurrencyAmount(v8);
  OUTLINED_FUNCTION_40_2();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_110_0(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_232_2(v12);
  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.OneOf_PrimitiveValueKind(0);
  OUTLINED_FUNCTION_35_5(v13);
  if (v14)
  {
    v15 = sub_1C8778ED8(v0, &qword_1EC2BAB18, &qword_1C8BFAA38);
LABEL_7:
    OUTLINED_FUNCTION_569(v15);
    v17 = OUTLINED_FUNCTION_1013();
    type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.Decimal(v17);
    OUTLINED_FUNCTION_653();
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
    v22 = OUTLINED_FUNCTION_1068();
    type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation(v22);
    v23 = OUTLINED_FUNCTION_257_2();
    __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_253();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 11)
  {
    v15 = sub_1C88E3C58();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_155_3();
  OUTLINED_FUNCTION_254_0();
  sub_1C88E3EC4();
LABEL_8:
  OUTLINED_FUNCTION_260();
}

void sub_1C88F7074()
{
  OUTLINED_FUNCTION_32_6();
  if (v5)
  {
    OUTLINED_FUNCTION_184();
    sub_1C88E4144();
    sub_1C8778ED8(v4, &qword_1EC2BAB18, &qword_1C8BFAA38);
    OUTLINED_FUNCTION_155_3();
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
    sub_1C8778ED8(v4, &qword_1EC2BAB18, &qword_1C8BFAA38);
    OUTLINED_FUNCTION_155_3();
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

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.paymentMethod.getter()
{
  OUTLINED_FUNCTION_93_1();
  v2 = OUTLINED_FUNCTION_253();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_80(v4);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_122_2();
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.OneOf_PrimitiveValueKind(0);
  OUTLINED_FUNCTION_5_8(v6);
  if (v7)
  {
    sub_1C8778ED8(v1, &qword_1EC2BAB18, &qword_1C8BFAA38);
  }

  else
  {
    OUTLINED_FUNCTION_92_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 12)
    {
      OUTLINED_FUNCTION_154_2();
      OUTLINED_FUNCTION_5_0();
      return sub_1C88E3EC4();
    }

    sub_1C88E3C58();
  }

  *v0 = 0;
  OUTLINED_FUNCTION_881();
  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.PaymentMethod(0);
  OUTLINED_FUNCTION_702(v10);
  OUTLINED_FUNCTION_18_2(*(v1 + 24));
  v11 = OUTLINED_FUNCTION_884();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation(v11);
  v12 = OUTLINED_FUNCTION_27_1();
  return __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.paymentMethod.setter()
{
  sub_1C8778ED8(v0, &qword_1EC2BAB18, &qword_1C8BFAA38);
  OUTLINED_FUNCTION_154_2();
  OUTLINED_FUNCTION_218();
  sub_1C88E3EC4();
  OUTLINED_FUNCTION_272_0();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_34_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.PaymentMethod.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_539(a1);
  v2 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.PaymentMethod(0);
  OUTLINED_FUNCTION_702(v2);
  OUTLINED_FUNCTION_18_2(*(v1 + 24));
  v3 = OUTLINED_FUNCTION_884();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation(v3);
  v4 = OUTLINED_FUNCTION_27_1();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.paymentMethod.modify()
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
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.PaymentMethod(v8);
  OUTLINED_FUNCTION_40_2();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_110_0(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_232_2(v12);
  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.OneOf_PrimitiveValueKind(0);
  OUTLINED_FUNCTION_35_5(v13);
  if (v14)
  {
    sub_1C8778ED8(v0, &qword_1EC2BAB18, &qword_1C8BFAA38);
LABEL_7:
    OUTLINED_FUNCTION_1047();
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_795();
    *v16 = 0;
    v16[1] = 0;
    v17 = OUTLINED_FUNCTION_1068();
    type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation(v17);
    v18 = OUTLINED_FUNCTION_257_2();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_253();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 12)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_154_2();
  OUTLINED_FUNCTION_254_0();
  sub_1C88E3EC4();
LABEL_8:
  OUTLINED_FUNCTION_260();
}

void sub_1C88F747C()
{
  OUTLINED_FUNCTION_32_6();
  if (v5)
  {
    OUTLINED_FUNCTION_184();
    sub_1C88E4144();
    sub_1C8778ED8(v4, &qword_1EC2BAB18, &qword_1C8BFAA38);
    OUTLINED_FUNCTION_154_2();
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
    sub_1C8778ED8(v4, &qword_1EC2BAB18, &qword_1C8BFAA38);
    OUTLINED_FUNCTION_154_2();
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

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.placemark.getter()
{
  OUTLINED_FUNCTION_93_1();
  v1 = OUTLINED_FUNCTION_253();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_122_2();
  v5 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.OneOf_PrimitiveValueKind(0);
  OUTLINED_FUNCTION_5_8(v5);
  if (v6)
  {
    sub_1C8778ED8(v0, &qword_1EC2BAB18, &qword_1C8BFAA38);
  }

  else
  {
    OUTLINED_FUNCTION_92_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 13)
    {
      OUTLINED_FUNCTION_153_0();
      OUTLINED_FUNCTION_5_0();
      return sub_1C88E3EC4();
    }

    sub_1C88E3C58();
  }

  v9 = OUTLINED_FUNCTION_1011(xmmword_1C8BFA8F0);
  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.Placemark(v9);
  OUTLINED_FUNCTION_702(v10);
  v11 = OUTLINED_FUNCTION_887();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation(v11);
  v12 = OUTLINED_FUNCTION_27_1();
  return __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.placemark.setter()
{
  sub_1C8778ED8(v0, &qword_1EC2BAB18, &qword_1C8BFAA38);
  OUTLINED_FUNCTION_153_0();
  OUTLINED_FUNCTION_218();
  sub_1C88E3EC4();
  OUTLINED_FUNCTION_272_0();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_34_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_1C88F770C()
{
  OUTLINED_FUNCTION_785();
  *v1 = xmmword_1C8BFA8F0;
  v3 = v2(0);
  OUTLINED_FUNCTION_1039(v3);
  v4 = OUTLINED_FUNCTION_886();
  v0(v4);
  v5 = OUTLINED_FUNCTION_257_2();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.placemark.modify()
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
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.Placemark(v8);
  OUTLINED_FUNCTION_40_2();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_110_0(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_232_2(v12);
  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.OneOf_PrimitiveValueKind(0);
  OUTLINED_FUNCTION_35_5(v13);
  if (v14)
  {
    v15 = sub_1C8778ED8(v0, &qword_1EC2BAB18, &qword_1C8BFAA38);
LABEL_7:
    OUTLINED_FUNCTION_900(v15, xmmword_1C8BFA8F0);
    v17 = OUTLINED_FUNCTION_886();
    type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation(v17);
    v18 = OUTLINED_FUNCTION_257_2();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_253();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 13)
  {
    v15 = sub_1C88E3C58();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_153_0();
  OUTLINED_FUNCTION_254_0();
  sub_1C88E3EC4();
LABEL_8:
  OUTLINED_FUNCTION_260();
}

void sub_1C88F78B0()
{
  OUTLINED_FUNCTION_32_6();
  if (v5)
  {
    OUTLINED_FUNCTION_184();
    sub_1C88E4144();
    sub_1C8778ED8(v4, &qword_1EC2BAB18, &qword_1C8BFAA38);
    OUTLINED_FUNCTION_153_0();
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
    sub_1C8778ED8(v4, &qword_1EC2BAB18, &qword_1C8BFAA38);
    OUTLINED_FUNCTION_153_0();
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

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.person.getter()
{
  OUTLINED_FUNCTION_93_1();
  v1 = OUTLINED_FUNCTION_253();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_122_2();
  v5 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.OneOf_PrimitiveValueKind(0);
  OUTLINED_FUNCTION_5_8(v5);
  if (v6)
  {
    sub_1C8778ED8(v0, &qword_1EC2BAB18, &qword_1C8BFAA38);
  }

  else
  {
    OUTLINED_FUNCTION_92_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 14)
    {
      OUTLINED_FUNCTION_152_0();
      OUTLINED_FUNCTION_5_0();
      return sub_1C88E3EC4();
    }

    sub_1C88E3C58();
  }

  v9 = OUTLINED_FUNCTION_1011(xmmword_1C8BFA8F0);
  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.Person(v9);
  OUTLINED_FUNCTION_702(v10);
  v11 = OUTLINED_FUNCTION_887();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation(v11);
  v12 = OUTLINED_FUNCTION_27_1();
  return __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.person.setter()
{
  sub_1C8778ED8(v0, &qword_1EC2BAB18, &qword_1C8BFAA38);
  OUTLINED_FUNCTION_152_0();
  OUTLINED_FUNCTION_218();
  sub_1C88E3EC4();
  OUTLINED_FUNCTION_272_0();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_34_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.person.modify()
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
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.Person(v8);
  OUTLINED_FUNCTION_40_2();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_110_0(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_232_2(v12);
  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.OneOf_PrimitiveValueKind(0);
  OUTLINED_FUNCTION_35_5(v13);
  if (v14)
  {
    v15 = sub_1C8778ED8(v0, &qword_1EC2BAB18, &qword_1C8BFAA38);
LABEL_7:
    OUTLINED_FUNCTION_900(v15, xmmword_1C8BFA8F0);
    v17 = OUTLINED_FUNCTION_886();
    type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation(v17);
    v18 = OUTLINED_FUNCTION_257_2();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_253();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 14)
  {
    v15 = sub_1C88E3C58();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_152_0();
  OUTLINED_FUNCTION_254_0();
  sub_1C88E3EC4();
LABEL_8:
  OUTLINED_FUNCTION_260();
}

void sub_1C88F7C80()
{
  OUTLINED_FUNCTION_32_6();
  if (v5)
  {
    OUTLINED_FUNCTION_184();
    sub_1C88E4144();
    sub_1C8778ED8(v4, &qword_1EC2BAB18, &qword_1C8BFAA38);
    OUTLINED_FUNCTION_152_0();
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
    sub_1C8778ED8(v4, &qword_1EC2BAB18, &qword_1C8BFAA38);
    OUTLINED_FUNCTION_152_0();
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

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.file.getter()
{
  OUTLINED_FUNCTION_93_1();
  v1 = OUTLINED_FUNCTION_253();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_122_2();
  v5 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.OneOf_PrimitiveValueKind(0);
  OUTLINED_FUNCTION_5_8(v5);
  if (v6)
  {
    sub_1C8778ED8(v0, &qword_1EC2BAB18, &qword_1C8BFAA38);
  }

  else
  {
    OUTLINED_FUNCTION_92_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 15)
    {
      OUTLINED_FUNCTION_151_0();
      OUTLINED_FUNCTION_5_0();
      return sub_1C88E3EC4();
    }

    sub_1C88E3C58();
  }

  v9 = OUTLINED_FUNCTION_1011(xmmword_1C8BFA8F0);
  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.File(v9);
  OUTLINED_FUNCTION_702(v10);
  v11 = OUTLINED_FUNCTION_887();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation(v11);
  v12 = OUTLINED_FUNCTION_27_1();
  return __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.file.setter()
{
  sub_1C8778ED8(v0, &qword_1EC2BAB18, &qword_1C8BFAA38);
  OUTLINED_FUNCTION_151_0();
  OUTLINED_FUNCTION_218();
  sub_1C88E3EC4();
  OUTLINED_FUNCTION_272_0();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_34_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.file.modify()
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
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.File(v8);
  OUTLINED_FUNCTION_40_2();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_110_0(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_232_2(v12);
  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.OneOf_PrimitiveValueKind(0);
  OUTLINED_FUNCTION_35_5(v13);
  if (v14)
  {
    v15 = sub_1C8778ED8(v0, &qword_1EC2BAB18, &qword_1C8BFAA38);
LABEL_7:
    OUTLINED_FUNCTION_900(v15, xmmword_1C8BFA8F0);
    v17 = OUTLINED_FUNCTION_886();
    type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation(v17);
    v18 = OUTLINED_FUNCTION_257_2();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_253();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 15)
  {
    v15 = sub_1C88E3C58();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_151_0();
  OUTLINED_FUNCTION_254_0();
  sub_1C88E3EC4();
LABEL_8:
  OUTLINED_FUNCTION_260();
}

void sub_1C88F8050()
{
  OUTLINED_FUNCTION_32_6();
  if (v5)
  {
    OUTLINED_FUNCTION_184();
    sub_1C88E4144();
    sub_1C8778ED8(v4, &qword_1EC2BAB18, &qword_1C8BFAA38);
    OUTLINED_FUNCTION_151_0();
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
    sub_1C8778ED8(v4, &qword_1EC2BAB18, &qword_1C8BFAA38);
    OUTLINED_FUNCTION_151_0();
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

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.app.getter()
{
  OUTLINED_FUNCTION_93_1();
  v1 = OUTLINED_FUNCTION_253();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_122_2();
  v5 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.OneOf_PrimitiveValueKind(0);
  OUTLINED_FUNCTION_5_8(v5);
  if (v6)
  {
    sub_1C8778ED8(v0, &qword_1EC2BAB18, &qword_1C8BFAA38);
  }

  else
  {
    OUTLINED_FUNCTION_92_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 16)
    {
      OUTLINED_FUNCTION_150_1();
      OUTLINED_FUNCTION_5_0();
      return sub_1C88E3EC4();
    }

    sub_1C88E3C58();
  }

  v9 = OUTLINED_FUNCTION_402_0();
  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.App(v9);
  OUTLINED_FUNCTION_702(v10);
  v11 = OUTLINED_FUNCTION_887();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation(v11);
  v12 = OUTLINED_FUNCTION_27_1();
  return __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.app.setter()
{
  sub_1C8778ED8(v0, &qword_1EC2BAB18, &qword_1C8BFAA38);
  OUTLINED_FUNCTION_150_1();
  OUTLINED_FUNCTION_218();
  sub_1C88E3EC4();
  OUTLINED_FUNCTION_272_0();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_34_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.app.modify()
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
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.App(v8);
  OUTLINED_FUNCTION_40_2();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_110_0(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_232_2(v12);
  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.OneOf_PrimitiveValueKind(0);
  OUTLINED_FUNCTION_35_5(v13);
  if (v14)
  {
    v15 = sub_1C8778ED8(v0, &qword_1EC2BAB18, &qword_1C8BFAA38);
LABEL_7:
    OUTLINED_FUNCTION_569(v15);
    v17 = OUTLINED_FUNCTION_886();
    type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation(v17);
    v18 = OUTLINED_FUNCTION_257_2();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_253();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 16)
  {
    v15 = sub_1C88E3C58();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_150_1();
  OUTLINED_FUNCTION_254_0();
  sub_1C88E3EC4();
LABEL_8:
  OUTLINED_FUNCTION_260();
}

void sub_1C88F8410()
{
  OUTLINED_FUNCTION_32_6();
  if (v5)
  {
    OUTLINED_FUNCTION_184();
    sub_1C88E4144();
    sub_1C8778ED8(v4, &qword_1EC2BAB18, &qword_1C8BFAA38);
    OUTLINED_FUNCTION_150_1();
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
    sub_1C8778ED8(v4, &qword_1EC2BAB18, &qword_1C8BFAA38);
    OUTLINED_FUNCTION_150_1();
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

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.searchableItem.getter()
{
  v1 = OUTLINED_FUNCTION_271();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_207_3();
  OUTLINED_FUNCTION_1008();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.OneOf_PrimitiveValueKind(0);
  OUTLINED_FUNCTION_19(v0);
  if (v5)
  {
    sub_1C8778ED8(v0, &qword_1EC2BAB18, &qword_1C8BFAA38);
  }

  else
  {
    OUTLINED_FUNCTION_218();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 17)
    {
      return *v0;
    }

    sub_1C88E3C58();
  }

  return OUTLINED_FUNCTION_1157();
}

uint64_t sub_1C88F85E8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_1C87A8FBC(*a1, v2);
  return Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.searchableItem.setter(v1, v2, v3, v4, v5);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.searchableItem.modify()
{
  v2 = OUTLINED_FUNCTION_65_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_421_0(v3);
  v4 = OUTLINED_FUNCTION_299_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_291_1(v8);
  v9 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.OneOf_PrimitiveValueKind(0);
  OUTLINED_FUNCTION_84_3(v9);
  if (v10)
  {
    sub_1C8778ED8(v1, &qword_1EC2BAB18, &qword_1C8BFAA38);
LABEL_7:
    v12 = xmmword_1C8BFA8F0;
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_271();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 17)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  v12 = *v1;
LABEL_8:
  *v0 = v12;
  return OUTLINED_FUNCTION_687();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.encodedDateComponents.getter()
{
  OUTLINED_FUNCTION_93_1();
  v2 = OUTLINED_FUNCTION_253();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_80(v4);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_122_2();
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.OneOf_PrimitiveValueKind(0);
  OUTLINED_FUNCTION_5_8(v6);
  if (v7)
  {
    sub_1C8778ED8(v1, &qword_1EC2BAB18, &qword_1C8BFAA38);
  }

  else
  {
    OUTLINED_FUNCTION_92_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 18)
    {
      OUTLINED_FUNCTION_149_3();
      OUTLINED_FUNCTION_5_0();
      return sub_1C88E3EC4();
    }

    sub_1C88E3C58();
  }

  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v10 = *(type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.DateComponents(0) + 20);
  if (qword_1EC2B5428 != -1)
  {
    OUTLINED_FUNCTION_899(&qword_1EC2B5428);
  }

  *(v0 + v10) = qword_1EC2B9860;
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.encodedDateComponents.setter()
{
  sub_1C8778ED8(v0, &qword_1EC2BAB18, &qword_1C8BFAA38);
  OUTLINED_FUNCTION_149_3();
  OUTLINED_FUNCTION_218();
  sub_1C88E3EC4();
  OUTLINED_FUNCTION_272_0();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_34_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.encodedDateComponents.modify()
{
  OUTLINED_FUNCTION_261();
  v2 = OUTLINED_FUNCTION_55_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_43_0(v8);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.DateComponents(v9);
  OUTLINED_FUNCTION_40_2();
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_110_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_232_2(v14);
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.OneOf_PrimitiveValueKind(0);
  OUTLINED_FUNCTION_35_5(v15);
  if (v16)
  {
    sub_1C8778ED8(v1, &qword_1EC2BAB18, &qword_1C8BFAA38);
  }

  else
  {
    OUTLINED_FUNCTION_253();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 18)
    {
      OUTLINED_FUNCTION_149_3();
      OUTLINED_FUNCTION_254_0();
      sub_1C88E3EC4();
      goto LABEL_10;
    }

    sub_1C88E3C58();
  }

  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v18 = *(v0 + 20);
  if (qword_1EC2B5428 != -1)
  {
    OUTLINED_FUNCTION_899(&qword_1EC2B5428);
  }

  *(v11 + v18) = qword_1EC2B9860;

LABEL_10:
  OUTLINED_FUNCTION_260();
}

void sub_1C88F8A80()
{
  OUTLINED_FUNCTION_32_6();
  if (v5)
  {
    OUTLINED_FUNCTION_184();
    sub_1C88E4144();
    sub_1C8778ED8(v4, &qword_1EC2BAB18, &qword_1C8BFAA38);
    OUTLINED_FUNCTION_149_3();
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
    sub_1C8778ED8(v4, &qword_1EC2BAB18, &qword_1C8BFAA38);
    OUTLINED_FUNCTION_149_3();
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

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue(v0);
  return OUTLINED_FUNCTION_242();
}

void static Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.OneOf_PrimitiveValueKind.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_124();
  a19 = v26;
  a20 = v27;
  v28 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.DateComponents(0);
  v29 = OUTLINED_FUNCTION_265_2(v28, &a17);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_9_0();
  v31 = OUTLINED_FUNCTION_63_0(v30);
  v32 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.App(v31);
  v33 = OUTLINED_FUNCTION_80(v32);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_9_0();
  v35 = OUTLINED_FUNCTION_63_0(v34);
  v36 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.File(v35);
  v37 = OUTLINED_FUNCTION_80(v36);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_9_0();
  v39 = OUTLINED_FUNCTION_63_0(v38);
  v40 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.Person(v39);
  v41 = OUTLINED_FUNCTION_80(v40);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_9_0();
  v43 = OUTLINED_FUNCTION_63_0(v42);
  v44 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.Placemark(v43);
  v45 = OUTLINED_FUNCTION_80(v44);
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_9_0();
  v47 = OUTLINED_FUNCTION_63_0(v46);
  v48 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.PaymentMethod(v47);
  v49 = OUTLINED_FUNCTION_80(v48);
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_9_0();
  v51 = OUTLINED_FUNCTION_63_0(v50);
  v52 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.CurrencyAmount(v51);
  v53 = OUTLINED_FUNCTION_80(v52);
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_9_0();
  v55 = OUTLINED_FUNCTION_63_0(v54);
  v56 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.Measurement(v55);
  v57 = OUTLINED_FUNCTION_265_2(v56, v216);
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_63_0(v58);
  sub_1C8BD47FC();
  OUTLINED_FUNCTION_13_1();
  v214 = v60;
  v215 = v59;
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_9_0();
  v62 = OUTLINED_FUNCTION_63_0(v61);
  v63 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.Decimal(v62);
  v64 = OUTLINED_FUNCTION_80(v63);
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_63_0(v65);
  sub_1C8BD47CC();
  OUTLINED_FUNCTION_13_1();
  v212 = v67;
  v213 = v66;
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_9_0();
  v69 = OUTLINED_FUNCTION_63_0(v68);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.OneOf_PrimitiveValueKind(v69);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_83_0();
  v72 = MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_398_0(v72, v73, v74, v75, v76, v77, v78, v79, v202);
  v81 = MEMORY[0x1EEE9AC00](v80);
  OUTLINED_FUNCTION_396(v81, v82, v83, v84, v85, v86, v87, v88, v203);
  v90 = MEMORY[0x1EEE9AC00](v89);
  OUTLINED_FUNCTION_395_0(v90, v91, v92, v93, v94, v95, v96, v97, v204);
  v99 = MEMORY[0x1EEE9AC00](v98);
  OUTLINED_FUNCTION_394_0(v99, v100, v101, v102, v103, v104, v105, v106, v205);
  v108 = MEMORY[0x1EEE9AC00](v107);
  OUTLINED_FUNCTION_393_0(v108, v109, v110, v111, v112, v113, v114, v115, v206);
  v117 = MEMORY[0x1EEE9AC00](v116);
  OUTLINED_FUNCTION_453_0(v117, v118, v119, v120, v121, v122, v123, v124, v207);
  MEMORY[0x1EEE9AC00](v125);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_83_0();
  v127 = MEMORY[0x1EEE9AC00](v126);
  OUTLINED_FUNCTION_397_0(v127, v128, v129, v130, v131, v132, v133, v134, v208);
  MEMORY[0x1EEE9AC00](v135);
  OUTLINED_FUNCTION_562();
  MEMORY[0x1EEE9AC00](v136);
  OUTLINED_FUNCTION_576();
  MEMORY[0x1EEE9AC00](v137);
  OUTLINED_FUNCTION_408();
  MEMORY[0x1EEE9AC00](v138);
  OUTLINED_FUNCTION_561();
  MEMORY[0x1EEE9AC00](v139);
  OUTLINED_FUNCTION_436_0();
  v141 = MEMORY[0x1EEE9AC00](v140);
  OUTLINED_FUNCTION_452_0(v141, v142, v143, v144, v145, v146, v147, v148, v209);
  MEMORY[0x1EEE9AC00](v149);
  OUTLINED_FUNCTION_372();
  MEMORY[0x1EEE9AC00](v150);
  OUTLINED_FUNCTION_538();
  MEMORY[0x1EEE9AC00](v151);
  OUTLINED_FUNCTION_437();
  MEMORY[0x1EEE9AC00](v152);
  OUTLINED_FUNCTION_783();
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAB28, &qword_1C8BFAA50);
  OUTLINED_FUNCTION_80(v153);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v154);
  OUTLINED_FUNCTION_278_1();
  v156 = (v20 + *(v155 + 56));
  sub_1C88E4144();
  sub_1C88E4144();
  OUTLINED_FUNCTION_954();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_17_12();
      sub_1C88E4144();
      OUTLINED_FUNCTION_895();
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_67;
      }

      OUTLINED_FUNCTION_23_10();
      sub_1C88E3C58();
      goto LABEL_68;
    case 2u:
      OUTLINED_FUNCTION_17_12();
      sub_1C88E4144();
      OUTLINED_FUNCTION_706();
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_67;
      }

      goto LABEL_72;
    case 3u:
      OUTLINED_FUNCTION_17_12();
      sub_1C88E4144();
      OUTLINED_FUNCTION_706();
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        goto LABEL_72;
      }

      goto LABEL_67;
    case 4u:
      OUTLINED_FUNCTION_17_12();
      sub_1C88E4144();
      OUTLINED_FUNCTION_706();
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_66;
      }

      OUTLINED_FUNCTION_40_6();
      OUTLINED_FUNCTION_265();
      sub_1C88E3EC4();
      OUTLINED_FUNCTION_97();
      static Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.Decimal.== infix(_:_:)();
      goto LABEL_37;
    case 5u:
      OUTLINED_FUNCTION_18_12();
      v170 = v20;
      OUTLINED_FUNCTION_522();
      sub_1C88E4144();
      v172 = *v24;
      v171 = v24[1];
      v173 = v156;
      OUTLINED_FUNCTION_895();
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        goto LABEL_29;
      }

      goto LABEL_55;
    case 6u:
      OUTLINED_FUNCTION_17_12();
      sub_1C88E4144();
      OUTLINED_FUNCTION_706();
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        OUTLINED_FUNCTION_154_1();
        v180 = OUTLINED_FUNCTION_221();
        v181(v180);
        OUTLINED_FUNCTION_516();
        sub_1C8BD47DC();
        v182 = *(v214 + 8);
        v183 = OUTLINED_FUNCTION_260_0();
        v182(v183);
        v184 = OUTLINED_FUNCTION_246();
        v182(v184);
        goto LABEL_72;
      }

      (*(v214 + 8))(v210, v215);
      goto LABEL_67;
    case 7u:
      OUTLINED_FUNCTION_17_12();
      sub_1C88E4144();
      v167 = v20;
      OUTLINED_FUNCTION_895();
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        goto LABEL_15;
      }

      goto LABEL_27;
    case 8u:
      OUTLINED_FUNCTION_18_12();
      v170 = v20;
      OUTLINED_FUNCTION_251_0();
      sub_1C88E4144();
      v172 = *v23;
      v171 = v23[1];
      v173 = v156;
      OUTLINED_FUNCTION_895();
      if (swift_getEnumCaseMultiPayload() != 8)
      {
LABEL_55:

        v20 = v170;
        goto LABEL_67;
      }

LABEL_29:
      v174 = *v173;
      v175 = v173[1];
      v176 = v172 == v174 && v171 == v175;
      if (!v176)
      {
        v177 = OUTLINED_FUNCTION_5_0();
        OUTLINED_FUNCTION_1168(v177);
      }

      goto LABEL_72;
    case 9u:
      OUTLINED_FUNCTION_17_12();
      sub_1C88E4144();
      OUTLINED_FUNCTION_895();
      if (swift_getEnumCaseMultiPayload() == 9)
      {
        goto LABEL_15;
      }

      v194 = OUTLINED_FUNCTION_218();
      sub_1C87A997C(v194, v195);
      goto LABEL_67;
    case 0xAu:
      OUTLINED_FUNCTION_17_12();
      sub_1C88E4144();
      OUTLINED_FUNCTION_706();
      if (swift_getEnumCaseMultiPayload() != 10)
      {
        goto LABEL_66;
      }

      OUTLINED_FUNCTION_156_3();
      OUTLINED_FUNCTION_265();
      sub_1C88E3EC4();
      OUTLINED_FUNCTION_1046();
      v191 = v176 && v189 == v190;
      if (v191 || (sub_1C8BD529C()) && *(v211 + 16) == *(v22 + 16) && sub_1C87E4678(*(v211 + 24), *(v211 + 32), *(v22 + 24)))
      {
        sub_1C8BD49FC();
        OUTLINED_FUNCTION_953();
        OUTLINED_FUNCTION_1_14();
        sub_1C8776818(v192, v193, MEMORY[0x1E69AAC10]);
        sub_1C8BD517C();
      }

      OUTLINED_FUNCTION_826();
      sub_1C88E3C58();
      OUTLINED_FUNCTION_118();
      sub_1C88E3C58();
      OUTLINED_FUNCTION_23_10();
      goto LABEL_73;
    case 0xBu:
      OUTLINED_FUNCTION_17_12();
      sub_1C88E4144();
      OUTLINED_FUNCTION_706();
      if (swift_getEnumCaseMultiPayload() != 11)
      {
        goto LABEL_66;
      }

      OUTLINED_FUNCTION_155_3();
      OUTLINED_FUNCTION_265();
      sub_1C88E3EC4();
      OUTLINED_FUNCTION_97();
      static Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.CurrencyAmount.== infix(_:_:)();
      goto LABEL_37;
    case 0xCu:
      OUTLINED_FUNCTION_17_12();
      sub_1C88E4144();
      OUTLINED_FUNCTION_706();
      if (swift_getEnumCaseMultiPayload() != 12)
      {
        goto LABEL_66;
      }

      OUTLINED_FUNCTION_154_2();
      OUTLINED_FUNCTION_265();
      sub_1C88E3EC4();
      OUTLINED_FUNCTION_97();
      static Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.PaymentMethod.== infix(_:_:)();
      goto LABEL_37;
    case 0xDu:
      OUTLINED_FUNCTION_17_12();
      sub_1C88E4144();
      OUTLINED_FUNCTION_706();
      if (swift_getEnumCaseMultiPayload() != 13)
      {
        goto LABEL_66;
      }

      OUTLINED_FUNCTION_153_0();
      OUTLINED_FUNCTION_265();
      sub_1C88E3EC4();
      v178 = OUTLINED_FUNCTION_97();
      static Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.Placemark.== infix(_:_:)(v178, v179);
      goto LABEL_37;
    case 0xEu:
      OUTLINED_FUNCTION_17_12();
      sub_1C88E4144();
      OUTLINED_FUNCTION_706();
      if (swift_getEnumCaseMultiPayload() != 14)
      {
        goto LABEL_66;
      }

      OUTLINED_FUNCTION_152_0();
      OUTLINED_FUNCTION_265();
      sub_1C88E3EC4();
      v159 = OUTLINED_FUNCTION_97();
      static Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.Person.== infix(_:_:)(v159, v160);
      goto LABEL_37;
    case 0xFu:
      OUTLINED_FUNCTION_17_12();
      sub_1C88E4144();
      OUTLINED_FUNCTION_706();
      if (swift_getEnumCaseMultiPayload() != 15)
      {
        goto LABEL_66;
      }

      OUTLINED_FUNCTION_151_0();
      OUTLINED_FUNCTION_265();
      sub_1C88E3EC4();
      v165 = OUTLINED_FUNCTION_97();
      static Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.File.== infix(_:_:)(v165, v166);
      goto LABEL_37;
    case 0x10u:
      OUTLINED_FUNCTION_17_12();
      sub_1C88E4144();
      OUTLINED_FUNCTION_706();
      if (swift_getEnumCaseMultiPayload() != 16)
      {
        goto LABEL_66;
      }

      OUTLINED_FUNCTION_150_1();
      OUTLINED_FUNCTION_265();
      sub_1C88E3EC4();
      v157 = OUTLINED_FUNCTION_97();
      static Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.App.== infix(_:_:)(v157, v158);
LABEL_37:
      sub_1C88E3C58();
      OUTLINED_FUNCTION_118();
      sub_1C88E3C58();
      goto LABEL_72;
    case 0x11u:
      OUTLINED_FUNCTION_17_12();
      sub_1C88E4144();
      v167 = v20;
      OUTLINED_FUNCTION_895();
      if (swift_getEnumCaseMultiPayload() == 17)
      {
LABEL_15:
        OUTLINED_FUNCTION_281_0();
        MEMORY[0x1CCA7D0F0]();
        v161 = OUTLINED_FUNCTION_253();
        sub_1C87A997C(v161, v162);
        v163 = OUTLINED_FUNCTION_218();
        sub_1C87A997C(v163, v164);
        OUTLINED_FUNCTION_23_10();
        goto LABEL_73;
      }

LABEL_27:
      v168 = OUTLINED_FUNCTION_218();
      sub_1C87A997C(v168, v169);
      v20 = v167;
      goto LABEL_67;
    case 0x12u:
      OUTLINED_FUNCTION_17_12();
      OUTLINED_FUNCTION_1010();
      sub_1C88E4144();
      OUTLINED_FUNCTION_706();
      if (swift_getEnumCaseMultiPayload() != 18)
      {
LABEL_66:
        sub_1C88E3C58();
        goto LABEL_67;
      }

      OUTLINED_FUNCTION_149_3();
      OUTLINED_FUNCTION_231();
      sub_1C88E3EC4();
      OUTLINED_FUNCTION_902();
      if (v176 || (, , v185 = OUTLINED_FUNCTION_218(), sub_1C895F948(v185, v186), OUTLINED_FUNCTION_1092(), , (v21 & 1) != 0))
      {
        sub_1C8BD49FC();
        OUTLINED_FUNCTION_1_14();
        sub_1C8776818(v187, v188, MEMORY[0x1E69AAC10]);
        OUTLINED_FUNCTION_258();
        sub_1C8BD517C();
      }

      OUTLINED_FUNCTION_825();
      sub_1C88E3C58();
      OUTLINED_FUNCTION_221();
      sub_1C88E3C58();
LABEL_72:
      OUTLINED_FUNCTION_23_10();
      goto LABEL_73;
    default:
      OUTLINED_FUNCTION_17_12();
      sub_1C88E4144();
      OUTLINED_FUNCTION_706();
      if (swift_getEnumCaseMultiPayload())
      {
        (*(v212 + 8))(v25, v213);
LABEL_67:
        sub_1C8778ED8(v20, &qword_1EC2BAB28, &qword_1C8BFAA50);
      }

      else
      {
        OUTLINED_FUNCTION_981();
        OUTLINED_FUNCTION_626();
        v196();
        OUTLINED_FUNCTION_6_16();
        sub_1C8776818(v197, v198, MEMORY[0x1E69AA8F0]);
        OUTLINED_FUNCTION_752();
        OUTLINED_FUNCTION_118();
        sub_1C8BD51EC();
        OUTLINED_FUNCTION_118();
        sub_1C8BD51EC();
        v199 = *(v212 + 8);
        v200 = OUTLINED_FUNCTION_220();
        v199(v200);
        v201 = OUTLINED_FUNCTION_1029();
        v199(v201);
        OUTLINED_FUNCTION_23_10();
LABEL_73:
        sub_1C88E3C58();
      }

LABEL_68:
      OUTLINED_FUNCTION_1069();
      OUTLINED_FUNCTION_125();
      return;
  }
}

void static Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.Decimal.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  OUTLINED_FUNCTION_68();
  v5 = sub_1C8BD49BC();
  OUTLINED_FUNCTION_13_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_194();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAB30, &qword_1C8BFAA58);
  OUTLINED_FUNCTION_80(v9);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_211();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAB38, &qword_1C8BFAA60);
  OUTLINED_FUNCTION_229_2();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_103();
  v12 = *v1;
  v13 = *v0;
  if (*(v0 + 8) == 1)
  {
    if (v13)
    {
      if (v13 == 1)
      {
        if (v12 != 1)
        {
          goto LABEL_21;
        }
      }

      else if (v12 != 2)
      {
        goto LABEL_21;
      }
    }

    else if (v12)
    {
      goto LABEL_21;
    }
  }

  else if (v12 != v13)
  {
    goto LABEL_21;
  }

  if (v1[2] == v0[2])
  {
    v28 = v7;
    type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.Decimal(0);
    v14 = *(v4 + 48);
    OUTLINED_FUNCTION_196_1();
    sub_1C89CBE2C();
    OUTLINED_FUNCTION_196_1();
    sub_1C89CBE2C();
    OUTLINED_FUNCTION_19(v3);
    if (v15)
    {
      OUTLINED_FUNCTION_19(v3 + v14);
      if (v15)
      {
        sub_1C8778ED8(v3, &qword_1EC2BAB30, &qword_1C8BFAA58);
        goto LABEL_24;
      }
    }

    else
    {
      OUTLINED_FUNCTION_299_0();
      sub_1C89CBE2C();
      OUTLINED_FUNCTION_19(v3 + v14);
      if (!v15)
      {
        (*(v28 + 32))(v2, v3 + v14, v5);
        OUTLINED_FUNCTION_823();
        sub_1C8776818(v19, v20, MEMORY[0x1E69AAB20]);
        OUTLINED_FUNCTION_260_0();
        v21 = sub_1C8BD517C();
        v22 = *(v28 + 8);
        v23 = OUTLINED_FUNCTION_254_0();
        v22(v23);
        v24 = OUTLINED_FUNCTION_259();
        v22(v24);
        sub_1C8778ED8(v3, &qword_1EC2BAB30, &qword_1C8BFAA58);
        if ((v21 & 1) == 0)
        {
          goto LABEL_21;
        }

LABEL_24:
        sub_1C8BD49FC();
        OUTLINED_FUNCTION_1_14();
        v27 = sub_1C8776818(v25, v26, MEMORY[0x1E69AAC10]);
        v18 = OUTLINED_FUNCTION_746(v27);
        goto LABEL_22;
      }

      v16 = OUTLINED_FUNCTION_259();
      v17(v16);
    }

    sub_1C8778ED8(v3, &qword_1EC2BAB38, &qword_1C8BFAA60);
  }

LABEL_21:
  v18 = 0;
LABEL_22:
  OUTLINED_FUNCTION_157(v18);
  OUTLINED_FUNCTION_125();
}

uint64_t static Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.Measurement.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_85_2(a1);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_1C8BD529C() & 1) == 0)
  {
    return 0;
  }

  if (*(v2 + 16) != *(v1 + 16))
  {
    return 0;
  }

  v6 = OUTLINED_FUNCTION_1129();
  if (!sub_1C87E4678(v6, v7, v8))
  {
    return 0;
  }

  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.Measurement(0);
  OUTLINED_FUNCTION_1123();
  OUTLINED_FUNCTION_1_14();
  v11 = sub_1C8776818(v9, v10, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_64_0(v11) & 1;
}

void static Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.CurrencyAmount.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_1085();
  v39 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation(v2);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_25_7(v4, v35);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60C8, &qword_1C8BFA9F0);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_81_3(v7, v36);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60D0, &qword_1C8BE6D80);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  v10 = OUTLINED_FUNCTION_47_5(v9, v37);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.Decimal(v10);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_211_3();
  v12 = OUTLINED_FUNCTION_218();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
  OUTLINED_FUNCTION_80(v14);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_552();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAB48, &qword_1C8BFAA70);
  OUTLINED_FUNCTION_181_0();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v16);
  v17 = OUTLINED_FUNCTION_210();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.CurrencyAmount(v17);
  v18 = *(v0 + 56);
  OUTLINED_FUNCTION_955();
  OUTLINED_FUNCTION_955();
  OUTLINED_FUNCTION_73(v1);
  if (v19)
  {
    OUTLINED_FUNCTION_73(v1 + v18);
    if (v19)
    {
      sub_1C8778ED8(v1, &qword_1EC2BAB40, &qword_1C8BFAA68);
      goto LABEL_11;
    }

LABEL_9:
    v20 = &qword_1EC2BAB48;
    v21 = &qword_1C8BFAA70;
    v22 = v1;
LABEL_25:
    sub_1C8778ED8(v22, v20, v21);
    goto LABEL_26;
  }

  OUTLINED_FUNCTION_1075();
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_73(v1 + v18);
  if (v19)
  {
    OUTLINED_FUNCTION_323_1();
    sub_1C88E3C58();
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_40_6();
  OUTLINED_FUNCTION_1161();
  OUTLINED_FUNCTION_895();
  static Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.Decimal.== infix(_:_:)();
  v24 = v23;
  sub_1C88E3C58();
  OUTLINED_FUNCTION_82_3();
  sub_1C88E3C58();
  sub_1C8778ED8(v1, &qword_1EC2BAB40, &qword_1C8BFAA68);
  if ((v24 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_11:
  OUTLINED_FUNCTION_1130();
  if (v19)
  {
    v27 = v25 == v26;
  }

  else
  {
    v27 = 0;
  }

  if (!v27 && (sub_1C8BD529C() & 1) == 0)
  {
    goto LABEL_26;
  }

  v28 = *(v38 + 48);
  OUTLINED_FUNCTION_786();
  OUTLINED_FUNCTION_778();
  v29 = OUTLINED_FUNCTION_213();
  OUTLINED_FUNCTION_124_1(v29, v30);
  if (v19)
  {
    OUTLINED_FUNCTION_24(v40 + v28);
    if (v19)
    {
      sub_1C8778ED8(v40, &qword_1EC2B60C8, &qword_1C8BFA9F0);
LABEL_29:
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_1_14();
      sub_1C8776818(v33, v34, MEMORY[0x1E69AAC10]);
      OUTLINED_FUNCTION_775();
      v32 = sub_1C8BD517C();
      goto LABEL_27;
    }

    goto LABEL_24;
  }

  OUTLINED_FUNCTION_945();
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_24(v40 + v28);
  if (v31)
  {
    OUTLINED_FUNCTION_54_5();
    sub_1C88E3C58();
LABEL_24:
    v20 = &qword_1EC2B60D0;
    v21 = &qword_1C8BE6D80;
    v22 = v40;
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_10_12();
  OUTLINED_FUNCTION_1019();
  OUTLINED_FUNCTION_168_0();
  static Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.== infix(_:_:)();
  OUTLINED_FUNCTION_460();
  sub_1C88E3C58();
  OUTLINED_FUNCTION_300();
  sub_1C88E3C58();
  sub_1C8778ED8(v40, &qword_1EC2B60C8, &qword_1C8BFA9F0);
  if (v39)
  {
    goto LABEL_29;
  }

LABEL_26:
  v32 = 0;
LABEL_27:
  OUTLINED_FUNCTION_157(v32);
  OUTLINED_FUNCTION_125();
}

void static Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.PaymentMethod.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v5 = OUTLINED_FUNCTION_84();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation(v5);
  OUTLINED_FUNCTION_49_3();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_18_4();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60C8, &qword_1C8BFA9F0);
  OUTLINED_FUNCTION_80(v7);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_103();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60D0, &qword_1C8BE6D80);
  OUTLINED_FUNCTION_229_2();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_60_1();
  v10 = *v1;
  v11 = *v0;
  if (*(v0 + 8) == 1)
  {
    switch(v11)
    {
      case 1:
        if (v10 != 1)
        {
          goto LABEL_42;
        }

        goto LABEL_6;
      case 2:
        if (v10 != 2)
        {
          goto LABEL_42;
        }

        goto LABEL_6;
      case 3:
        if (v10 != 3)
        {
          goto LABEL_42;
        }

        goto LABEL_6;
      case 4:
        if (v10 != 4)
        {
          goto LABEL_42;
        }

        goto LABEL_6;
      case 5:
        if (v10 != 5)
        {
          goto LABEL_42;
        }

        goto LABEL_6;
      case 6:
        if (v10 != 6)
        {
          goto LABEL_42;
        }

        goto LABEL_6;
      case 7:
        if (v10 != 7)
        {
          goto LABEL_42;
        }

        goto LABEL_6;
      case 8:
        if (v10 != 8)
        {
          goto LABEL_42;
        }

        goto LABEL_6;
      default:
        if (!v10)
        {
          goto LABEL_6;
        }

        goto LABEL_42;
    }
  }

  if (v10 != v11)
  {
    goto LABEL_42;
  }

LABEL_6:
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.PaymentMethod(0);
  OUTLINED_FUNCTION_1();
  if (v14)
  {
    if (!v12)
    {
      goto LABEL_42;
    }

    OUTLINED_FUNCTION_35(v13);
    v17 = v17 && v15 == v16;
    if (!v17 && (sub_1C8BD529C() & 1) == 0)
    {
      goto LABEL_42;
    }
  }

  else if (v12)
  {
    goto LABEL_42;
  }

  v18 = *(v4 + 48);
  OUTLINED_FUNCTION_196_1();
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_651();
  OUTLINED_FUNCTION_125_0();
  if (!v17)
  {
    OUTLINED_FUNCTION_253();
    sub_1C89CBE2C();
    OUTLINED_FUNCTION_43_1(v2 + v18);
    if (!v19)
    {
      OUTLINED_FUNCTION_10_12();
      OUTLINED_FUNCTION_1107();
      OUTLINED_FUNCTION_168_0();
      static Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.== infix(_:_:)();
      OUTLINED_FUNCTION_464_0();
      sub_1C88E3C58();
      OUTLINED_FUNCTION_239();
      sub_1C88E3C58();
      sub_1C8778ED8(v2, &qword_1EC2B60C8, &qword_1C8BFA9F0);
      if (v3)
      {
        goto LABEL_41;
      }

LABEL_42:
      v23 = 0;
      goto LABEL_43;
    }

    OUTLINED_FUNCTION_54_5();
    sub_1C88E3C58();
LABEL_23:
    sub_1C8778ED8(v2, &qword_1EC2B60D0, &qword_1C8BE6D80);
    goto LABEL_42;
  }

  OUTLINED_FUNCTION_43_1(v2 + v18);
  if (!v17)
  {
    goto LABEL_23;
  }

  sub_1C8778ED8(v2, &qword_1EC2B60C8, &qword_1C8BFA9F0);
LABEL_41:
  OUTLINED_FUNCTION_878();
  OUTLINED_FUNCTION_1_14();
  v22 = sub_1C8776818(v20, v21, MEMORY[0x1E69AAC10]);
  v23 = OUTLINED_FUNCTION_64_0(v22);
LABEL_43:
  OUTLINED_FUNCTION_157(v23);
  OUTLINED_FUNCTION_125();
}

void sub_1C88FA52C()
{
  OUTLINED_FUNCTION_124();
  v6 = v5;
  v7 = OUTLINED_FUNCTION_84();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation(v7);
  OUTLINED_FUNCTION_49_3();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_18_4();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60C8, &qword_1C8BFA9F0);
  OUTLINED_FUNCTION_80(v9);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_103();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60D0, &qword_1C8BE6D80);
  OUTLINED_FUNCTION_229_2();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_60_1();
  if ((MEMORY[0x1CCA7D0F0](*v1, v1[1], *v0, v0[1]) & 1) == 0)
  {
    goto LABEL_11;
  }

  v12 = v6(0);
  OUTLINED_FUNCTION_724(v12);
  OUTLINED_FUNCTION_196_1();
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_651();
  OUTLINED_FUNCTION_125_0();
  if (v13)
  {
    OUTLINED_FUNCTION_43_1(v2 + v4);
    if (v13)
    {
      sub_1C8778ED8(v2, &qword_1EC2B60C8, &qword_1C8BFA9F0);
LABEL_14:
      OUTLINED_FUNCTION_878();
      OUTLINED_FUNCTION_1_14();
      v17 = sub_1C8776818(v15, v16, MEMORY[0x1E69AAC10]);
      v14 = OUTLINED_FUNCTION_64_0(v17);
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_253();
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_43_1(v2 + v4);
  if (v13)
  {
    sub_1C88E3C58();
LABEL_10:
    sub_1C8778ED8(v2, &qword_1EC2B60D0, &qword_1C8BE6D80);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_1107();
  OUTLINED_FUNCTION_168_0();
  static Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.== infix(_:_:)();
  OUTLINED_FUNCTION_464_0();
  sub_1C88E3C58();
  OUTLINED_FUNCTION_239();
  sub_1C88E3C58();
  sub_1C8778ED8(v2, &qword_1EC2B60C8, &qword_1C8BFA9F0);
  if (v3)
  {
    goto LABEL_14;
  }

LABEL_11:
  v14 = 0;
LABEL_12:
  OUTLINED_FUNCTION_157(v14);
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.Decimal.significand.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_74();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.Decimal(v5);
  OUTLINED_FUNCTION_439();
  v6 = sub_1C8BD49BC();
  OUTLINED_FUNCTION_46_2(v6);
  if (v7)
  {
    sub_1C8BD49AC();
    result = OUTLINED_FUNCTION_1_0();
    if (!v7)
    {
      return sub_1C8778ED8(v0, &qword_1EC2BAB30, &qword_1C8BFAA58);
    }
  }

  else
  {
    OUTLINED_FUNCTION_84_1();
    return v8();
  }

  return result;
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.Decimal.significand.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.Decimal(v1);
  sub_1C8778ED8(v0 + *(v2 + 28), &qword_1EC2BAB30, &qword_1C8BFAA58);
  sub_1C8BD49BC();
  OUTLINED_FUNCTION_40_2();
  OUTLINED_FUNCTION_232();
  v3();
  OUTLINED_FUNCTION_319_0();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.Decimal.significand.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD49BC();
  OUTLINED_FUNCTION_62_6(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  *(v1 + 40) = __swift_coroFrameAllocStub(v13);
  *(v1 + 48) = *(type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.Decimal(0) + 28);
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_73(v0);
  if (v14)
  {
    sub_1C8BD49AC();
    OUTLINED_FUNCTION_73(v0);
    if (!v14)
    {
      sub_1C8778ED8(v0, &qword_1EC2BAB30, &qword_1C8BFAA58);
    }
  }

  else
  {
    v15 = OUTLINED_FUNCTION_284_0();
    v16(v15);
  }

  OUTLINED_FUNCTION_115_1();
  OUTLINED_FUNCTION_125();
}

void sub_1C88FAAD0()
{
  OUTLINED_FUNCTION_261();
  v1 = *(*v0 + 12);
  v2 = (*v0)[4];
  v3 = (*v0)[5];
  v4 = (*v0)[2];
  v5 = (*v0)[3];
  v7 = **v0;
  v6 = (*v0)[1];
  if (v8)
  {
    v9 = OUTLINED_FUNCTION_92_0();
    v10(v9);
    sub_1C8778ED8(v7 + v1, &qword_1EC2BAB30, &qword_1C8BFAA58);
    OUTLINED_FUNCTION_981();
    v11(v7 + v1, v2, v4);
    OUTLINED_FUNCTION_19_1();
    __swift_storeEnumTagSinglePayload(v12, v13, v14, v4);
    v15 = OUTLINED_FUNCTION_220();
    v16(v15);
  }

  else
  {
    sub_1C8778ED8(v7 + v1, &qword_1EC2BAB30, &qword_1C8BFAA58);
    (*(v5 + 32))(v7 + v1, v3, v4);
    OUTLINED_FUNCTION_19_1();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v4);
  }

  free(v3);
  free(v2);
  free(v6);
  OUTLINED_FUNCTION_260();

  free(v20);
}

uint64_t sub_1C88FAC38()
{
  OUTLINED_FUNCTION_382_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_80(v4);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_27_0();
  v7 = v1(v6);
  OUTLINED_FUNCTION_885(v7);
  OUTLINED_FUNCTION_70_2();
  sub_1C89CBE2C();
  v8 = v0(0);
  OUTLINED_FUNCTION_48_2(v8);
  return OUTLINED_FUNCTION_216_0();
}

uint64_t sub_1C88FACF8()
{
  v1 = OUTLINED_FUNCTION_46_1();
  v2(v1);
  OUTLINED_FUNCTION_84_1();
  sub_1C8778ED8(v3, v4, v5);
  v0(0);
  v6 = OUTLINED_FUNCTION_73_0();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.Decimal.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.Decimal(v0);
  return OUTLINED_FUNCTION_242();
}

uint64_t sub_1C88FADDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C89CBF68();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.Measurement.unitType.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 24) = *result;
  *(v1 + 32) = v2;
  return result;
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.Measurement.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.Measurement(v0);
  return OUTLINED_FUNCTION_242();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.CurrencyAmount.amount.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_220();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_170();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.CurrencyAmount(v7);
  OUTLINED_FUNCTION_329_0(v8);
  OUTLINED_FUNCTION_232();
  sub_1C89CBE2C();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.Decimal(0);
  OUTLINED_FUNCTION_65(v1);
  if (v9)
  {
    *a1 = 0;
    *(a1 + 8) = 1;
    *(a1 + 16) = 0;
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_941();
    v10 = sub_1C8BD49BC();
    result = OUTLINED_FUNCTION_9_13(v10);
    if (!v9)
    {
      return sub_1C8778ED8(v1, &qword_1EC2BAB40, &qword_1C8BFAA68);
    }
  }

  else
  {
    OUTLINED_FUNCTION_40_6();
    OUTLINED_FUNCTION_312();
    return sub_1C88E3EC4();
  }

  return result;
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.CurrencyAmount.amount.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.CurrencyAmount(v1);
  sub_1C8778ED8(v0 + *(v2 + 24), &qword_1EC2BAB40, &qword_1C8BFAA68);
  OUTLINED_FUNCTION_40_6();
  OUTLINED_FUNCTION_200();
  sub_1C88E3EC4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.Decimal(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.CurrencyAmount.amount.modify()
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
  v9 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.Decimal(v8);
  OUTLINED_FUNCTION_29_5(v9);
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_243(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_168(v14);
  v16 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.CurrencyAmount(v15);
  OUTLINED_FUNCTION_312_0(v16);
  OUTLINED_FUNCTION_0_0();
  if (v17)
  {
    *v11 = 0;
    *(v11 + 8) = 1;
    *(v11 + 16) = 0;
    OUTLINED_FUNCTION_777();
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v18 = sub_1C8BD49BC();
    OUTLINED_FUNCTION_5_12(v18);
    if (!v17)
    {
      sub_1C8778ED8(v0, &qword_1EC2BAB40, &qword_1C8BFAA68);
    }
  }

  else
  {
    OUTLINED_FUNCTION_40_6();
    OUTLINED_FUNCTION_168_0();
    sub_1C88E3EC4();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_260();
}

void sub_1C88FB1A4()
{
  OUTLINED_FUNCTION_261();
  OUTLINED_FUNCTION_154();
  if (v5)
  {
    OUTLINED_FUNCTION_254_0();
    sub_1C88E4144();
    sub_1C8778ED8(v4 + v3, &qword_1EC2BAB40, &qword_1C8BFAA68);
    OUTLINED_FUNCTION_40_6();
    OUTLINED_FUNCTION_976();
    OUTLINED_FUNCTION_321();
    OUTLINED_FUNCTION_323_1();
    sub_1C88E3C58();
  }

  else
  {
    sub_1C8778ED8(v4 + v3, &qword_1EC2BAB40, &qword_1C8BFAA68);
    OUTLINED_FUNCTION_40_6();
    OUTLINED_FUNCTION_977();
    OUTLINED_FUNCTION_321();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_260();

  free(v6);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.CurrencyAmount.displayRepresentation.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.CurrencyAmount(v1);
  sub_1C8778ED8(v0 + *(v2 + 28), &qword_1EC2B60C8, &qword_1C8BFA9F0);
  OUTLINED_FUNCTION_10_12();
  OUTLINED_FUNCTION_200();
  sub_1C88E3EC4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.CurrencyAmount.displayRepresentation.modify()
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
  v9 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation(v8);
  OUTLINED_FUNCTION_29_5(v9);
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_243(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_168(v14);
  v16 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.CurrencyAmount(v15);
  OUTLINED_FUNCTION_368(*(v16 + 28));
  OUTLINED_FUNCTION_0_0();
  if (v17)
  {
    OUTLINED_FUNCTION_740();
    *(v11 + 16) = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_777();
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_12_15();
    if (!v17)
    {
      sub_1C8778ED8(v0, &qword_1EC2B60C8, &qword_1C8BFA9F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_10_12();
    OUTLINED_FUNCTION_168_0();
    sub_1C88E3EC4();
  }

  OUTLINED_FUNCTION_260();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.CurrencyAmount.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.CurrencyAmount(v0);
  return OUTLINED_FUNCTION_242();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.PaymentMethod.type.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t sub_1C88FB5F0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.PaymentMethod.identificationHint.setter(v1, v2);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.PaymentMethod.identificationHint.modify()
{
  v0 = OUTLINED_FUNCTION_17_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_41(v1);
  v3 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.PaymentMethod(v2);
  if (OUTLINED_FUNCTION_4_1(*(v3 + 24)))
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

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.PaymentMethod.displayRepresentation.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.PaymentMethod(v1);
  sub_1C8778ED8(v0 + *(v2 + 28), &qword_1EC2B60C8, &qword_1C8BFA9F0);
  OUTLINED_FUNCTION_10_12();
  OUTLINED_FUNCTION_200();
  sub_1C88E3EC4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.PaymentMethod.displayRepresentation.modify()
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
  v9 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation(v8);
  OUTLINED_FUNCTION_29_5(v9);
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_243(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_168(v14);
  v16 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.PaymentMethod(v15);
  OUTLINED_FUNCTION_368(*(v16 + 28));
  OUTLINED_FUNCTION_0_0();
  if (v17)
  {
    OUTLINED_FUNCTION_740();
    *(v11 + 16) = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_777();
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_12_15();
    if (!v17)
    {
      sub_1C8778ED8(v0, &qword_1EC2B60C8, &qword_1C8BFA9F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_10_12();
    OUTLINED_FUNCTION_168_0();
    sub_1C88E3EC4();
  }

  OUTLINED_FUNCTION_260();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.PaymentMethod.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.PaymentMethod(v0);
  return OUTLINED_FUNCTION_242();
}

uint64_t sub_1C88FB9A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C89CC010();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.Placemark.displayRepresentation.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.Placemark(v1);
  sub_1C8778ED8(v0 + *(v2 + 24), &qword_1EC2B60C8, &qword_1C8BFA9F0);
  OUTLINED_FUNCTION_10_12();
  OUTLINED_FUNCTION_200();
  sub_1C88E3EC4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.Placemark.displayRepresentation.modify()
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
  v9 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation(v8);
  OUTLINED_FUNCTION_29_5(v9);
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_243(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_168(v14);
  v16 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.Placemark(v15);
  OUTLINED_FUNCTION_312_0(v16);
  OUTLINED_FUNCTION_0_0();
  if (v17)
  {
    OUTLINED_FUNCTION_740();
    *(v11 + 16) = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_777();
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_12_15();
    if (!v17)
    {
      sub_1C8778ED8(v0, &qword_1EC2B60C8, &qword_1C8BFA9F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_10_12();
    OUTLINED_FUNCTION_168_0();
    sub_1C88E3EC4();
  }

  OUTLINED_FUNCTION_260();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.Placemark.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.Placemark(v0);
  return OUTLINED_FUNCTION_242();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.Person.displayRepresentation.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.Person(v1);
  sub_1C8778ED8(v0 + *(v2 + 24), &qword_1EC2B60C8, &qword_1C8BFA9F0);
  OUTLINED_FUNCTION_10_12();
  OUTLINED_FUNCTION_200();
  sub_1C88E3EC4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.Person.displayRepresentation.modify()
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
  v9 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation(v8);
  OUTLINED_FUNCTION_29_5(v9);
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_243(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_168(v14);
  v16 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.Person(v15);
  OUTLINED_FUNCTION_312_0(v16);
  OUTLINED_FUNCTION_0_0();
  if (v17)
  {
    OUTLINED_FUNCTION_740();
    *(v11 + 16) = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_777();
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_12_15();
    if (!v17)
    {
      sub_1C8778ED8(v0, &qword_1EC2B60C8, &qword_1C8BFA9F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_10_12();
    OUTLINED_FUNCTION_168_0();
    sub_1C88E3EC4();
  }

  OUTLINED_FUNCTION_260();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.Person.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.Person(v0);
  return OUTLINED_FUNCTION_242();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.File.displayRepresentation.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.File(v1);
  sub_1C8778ED8(v0 + *(v2 + 24), &qword_1EC2B60C8, &qword_1C8BFA9F0);
  OUTLINED_FUNCTION_10_12();
  OUTLINED_FUNCTION_200();
  sub_1C88E3EC4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.File.displayRepresentation.modify()
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
  v9 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation(v8);
  OUTLINED_FUNCTION_29_5(v9);
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_243(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_168(v14);
  v16 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.File(v15);
  OUTLINED_FUNCTION_312_0(v16);
  OUTLINED_FUNCTION_0_0();
  if (v17)
  {
    OUTLINED_FUNCTION_740();
    *(v11 + 16) = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_777();
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_12_15();
    if (!v17)
    {
      sub_1C8778ED8(v0, &qword_1EC2B60C8, &qword_1C8BFA9F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_10_12();
    OUTLINED_FUNCTION_168_0();
    sub_1C88E3EC4();
  }

  OUTLINED_FUNCTION_260();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.File.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.File(v0);
  return OUTLINED_FUNCTION_242();
}

uint64_t sub_1C88FC224()
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
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation(0);
  v8 = OUTLINED_FUNCTION_690();
  OUTLINED_FUNCTION_65(v8);
  if (v9)
  {
    OUTLINED_FUNCTION_992();
    OUTLINED_FUNCTION_1106(MEMORY[0x1E69E7CC0]);
    v10 = OUTLINED_FUNCTION_941();
    v11 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Subtitle(v10);
    OUTLINED_FUNCTION_456(v11);
    v12 = OUTLINED_FUNCTION_1070();
    v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.AltText(v12);
    OUTLINED_FUNCTION_456(v13);
    v14 = OUTLINED_FUNCTION_1127();
    v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image(v14);
    OUTLINED_FUNCTION_456(v15);
    v16 = OUTLINED_FUNCTION_496();
    v17 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.PluginModelData(v16);
    result = OUTLINED_FUNCTION_9_13(v17);
    if (!v9)
    {
      return sub_1C8778ED8(v0, &qword_1EC2B60C8, &qword_1C8BFA9F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_312();
    return sub_1C88E3EC4();
  }

  return result;
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.App.displayRepresentation.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.App(v1);
  sub_1C8778ED8(v0 + *(v2 + 24), &qword_1EC2B60C8, &qword_1C8BFA9F0);
  OUTLINED_FUNCTION_10_12();
  OUTLINED_FUNCTION_200();
  sub_1C88E3EC4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.App.displayRepresentation.modify()
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
  v9 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation(v8);
  OUTLINED_FUNCTION_29_5(v9);
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_243(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_168(v14);
  v16 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.App(v15);
  OUTLINED_FUNCTION_312_0(v16);
  OUTLINED_FUNCTION_0_0();
  if (v17)
  {
    OUTLINED_FUNCTION_740();
    *(v11 + 16) = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_777();
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_12_15();
    if (!v17)
    {
      sub_1C8778ED8(v0, &qword_1EC2B60C8, &qword_1C8BFA9F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_10_12();
    OUTLINED_FUNCTION_168_0();
    sub_1C88E3EC4();
  }

  OUTLINED_FUNCTION_260();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.App.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.App(v0);
  return OUTLINED_FUNCTION_242();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.DateComponents.calendar.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_220();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_74();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.DateComponents(v7);
  OUTLINED_FUNCTION_215_1();
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_425_0();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.DateComponents.Calendar(0);
  OUTLINED_FUNCTION_1_0();
  if (v9)
  {
    *a1 = 0;
    *(a1 + 8) = 1;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0xE000000000000000;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_18_2(*(v8 + 36));
    result = OUTLINED_FUNCTION_1_0();
    if (!v9)
    {
      return sub_1C8778ED8(v1, &qword_1EC2BAB50, &qword_1C8BFAA78);
    }
  }

  else
  {
    OUTLINED_FUNCTION_489();
    OUTLINED_FUNCTION_121();
    return sub_1C88E3EC4();
  }

  return result;
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.DateComponents.calendar.setter()
{
  OUTLINED_FUNCTION_31_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAB50, &qword_1C8BFAA78);
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_170();
  v3 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.DateComponents(v2);
  if ((OUTLINED_FUNCTION_41_1(v3) & 1) == 0)
  {
    type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.DateComponents._StorageClass(0);
    OUTLINED_FUNCTION_218_2();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_2();
    v5 = sub_1C895E6E0(v4);
    OUTLINED_FUNCTION_40(v5);
  }

  OUTLINED_FUNCTION_489();
  OUTLINED_FUNCTION_196_0();
  sub_1C88E3EC4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.DateComponents.Calendar(0);
  v6 = OUTLINED_FUNCTION_128_2();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_200();
  sub_1C89CBD78();
  return swift_endAccess();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.DateComponents.Calendar.init()(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_539(a1);
  v2 = OUTLINED_FUNCTION_923(0xE000000000000000);
  v3 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.DateComponents.Calendar(v2);
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  OUTLINED_FUNCTION_18_2(*(v3 + 36));
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.DateComponents.calendar.modify()
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
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.DateComponents.Calendar(v9);
  OUTLINED_FUNCTION_48_5();
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_38_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_129_2(v14);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.DateComponents(v15);
  OUTLINED_FUNCTION_215_1();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_470();
  OUTLINED_FUNCTION_0_0();
  if (v16)
  {
    *v11 = 0;
    *(v11 + 8) = 1;
    *(v11 + 16) = 0;
    *(v11 + 24) = 0xE000000000000000;
    *(v11 + 32) = 0;
    *(v11 + 40) = 0;
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_26(*(v0 + 36));
    OUTLINED_FUNCTION_0_0();
    if (!v16)
    {
      sub_1C8778ED8(v1, &qword_1EC2BAB50, &qword_1C8BFAA78);
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

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.DateComponents.hasCalendar.getter()
{
  v0 = OUTLINED_FUNCTION_12();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_80(v2);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_74();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.DateComponents(v4);
  OUTLINED_FUNCTION_215_1();
  OUTLINED_FUNCTION_157_2();
  OUTLINED_FUNCTION_468_0();
  v5 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.DateComponents.Calendar(0);
  OUTLINED_FUNCTION_10(v5);
  return OUTLINED_FUNCTION_268_1();
}

Swift::Void __swiftcall Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.DateComponents.clearCalendar()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAB50, &qword_1C8BFAA78);
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_170();
  v3 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.DateComponents(v2);
  if ((OUTLINED_FUNCTION_436(v3) & 1) == 0)
  {
    type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.DateComponents._StorageClass(0);
    OUTLINED_FUNCTION_218_2();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_2();
    v5 = sub_1C895E6E0(v4);
    OUTLINED_FUNCTION_264_1(v5);
  }

  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.DateComponents.Calendar(0);
  OUTLINED_FUNCTION_156_2(v6);
  OUTLINED_FUNCTION_155_2();
  OUTLINED_FUNCTION_200();
  sub_1C89CBD78();
  swift_endAccess();
}

void (*Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.DateComponents.timeZoneIdentifier.modify())(uint64_t a1, uint64_t a2)
{
  v1 = OUTLINED_FUNCTION_813();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_570(v2);
  v4 = *(type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.DateComponents(v3) + 20);
  v2[18] = v4;
  v5 = (*(v0 + v4) + OBJC_IVAR____TtCVVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit10TypedValue14PrimitiveValue14DateComponentsP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__timeZoneIdentifier);
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

  *(v2 + 6) = v6;
  *(v2 + 7) = v7;

  return sub_1C88FCC10;
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.DateComponents.era.modify()
{
  v0 = OUTLINED_FUNCTION_758();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_75_2(v1);
  OUTLINED_FUNCTION_380();
  OUTLINED_FUNCTION_39();
  return OUTLINED_FUNCTION_31();
}

uint64_t sub_1C88FCE40(uint64_t a1, _BYTE *a2)
{
  v3 = OUTLINED_FUNCTION_167();
  v5 = v4(v3);
  OUTLINED_FUNCTION_429_0(v5, v6);
  if (a2[8])
  {
    return 0;
  }

  else
  {
    return *a2;
  }
}

void sub_1C88FCED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_1119();
  a21 = v26;
  a22 = v27;
  v29 = v28;
  OUTLINED_FUNCTION_801();
  v30 = v23;
  v31 = OUTLINED_FUNCTION_241();
  v33 = *(v32(v31) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v35 = *(v23 + v33);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v25(0);
    OUTLINED_FUNCTION_218_2();
    swift_allocObject();
    v36 = OUTLINED_FUNCTION_2();
    isUniquelyReferenced_nonNull_native = v24(v36);
    v35 = isUniquelyReferenced_nonNull_native;
    *(v30 + v33) = isUniquelyReferenced_nonNull_native;
  }

  v37 = v35 + *v29;
  OUTLINED_FUNCTION_36_0(isUniquelyReferenced_nonNull_native, &a10);
  *v37 = v22;
  *(v37 + 8) = 0;
  OUTLINED_FUNCTION_1118();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.DateComponents.year.modify()
{
  v0 = OUTLINED_FUNCTION_758();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_75_2(v1);
  OUTLINED_FUNCTION_380();
  OUTLINED_FUNCTION_39();
  return OUTLINED_FUNCTION_31();
}

void sub_1C88FCFF8()
{
  OUTLINED_FUNCTION_124();
  v4 = v3;
  OUTLINED_FUNCTION_801();
  v6 = v5;
  OUTLINED_FUNCTION_925();
  v8 = *(v7 + 72);
  v9 = *(v0 + 88);
  v10 = *(v0 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v10 + v9);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = *(v0 + 88);
    v14 = *(v0 + 80);
    v2(0);
    OUTLINED_FUNCTION_218_2();
    swift_allocObject();
    v15 = OUTLINED_FUNCTION_2();
    isUniquelyReferenced_nonNull_native = v1(v15);
    v12 = isUniquelyReferenced_nonNull_native;
    *(v14 + v13) = isUniquelyReferenced_nonNull_native;
  }

  v16 = 48;
  if (v6)
  {
    v16 = 24;
  }

  v17 = v12 + *v4;
  OUTLINED_FUNCTION_36_0(isUniquelyReferenced_nonNull_native, v0 + v16);
  *v17 = v8;
  *(v17 + 8) = 0;
  OUTLINED_FUNCTION_125();

  free(v18);
}

BOOL sub_1C88FD0DC(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_167();
  v5 = v4(v3);
  OUTLINED_FUNCTION_429_0(v5, v6);
  return (*(a2 + 8) & 1) == 0;
}

void sub_1C88FD168()
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

  v11 = v9 + *v0;
  v12 = OUTLINED_FUNCTION_698();
  OUTLINED_FUNCTION_37_0(v12, v13);
  *v11 = 0;
  *(v11 + 8) = 1;
  OUTLINED_FUNCTION_534();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.DateComponents.month.modify()
{
  v0 = OUTLINED_FUNCTION_758();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_75_2(v1);
  OUTLINED_FUNCTION_380();
  OUTLINED_FUNCTION_39();
  return OUTLINED_FUNCTION_31();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.DateComponents.day.modify()
{
  v0 = OUTLINED_FUNCTION_758();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_75_2(v1);
  OUTLINED_FUNCTION_380();
  OUTLINED_FUNCTION_39();
  return OUTLINED_FUNCTION_31();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.DateComponents.hour.modify()
{
  v0 = OUTLINED_FUNCTION_758();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_75_2(v1);
  OUTLINED_FUNCTION_380();
  OUTLINED_FUNCTION_39();
  return OUTLINED_FUNCTION_31();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.DateComponents.minute.modify()
{
  v0 = OUTLINED_FUNCTION_758();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_75_2(v1);
  OUTLINED_FUNCTION_380();
  OUTLINED_FUNCTION_39();
  return OUTLINED_FUNCTION_31();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.DateComponents.second.modify()
{
  v0 = OUTLINED_FUNCTION_758();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_75_2(v1);
  OUTLINED_FUNCTION_380();
  OUTLINED_FUNCTION_39();
  return OUTLINED_FUNCTION_31();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.DateComponents.nanosecond.modify()
{
  v0 = OUTLINED_FUNCTION_758();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_75_2(v1);
  OUTLINED_FUNCTION_380();
  OUTLINED_FUNCTION_39();
  return OUTLINED_FUNCTION_31();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.DateComponents.weekday.modify()
{
  v0 = OUTLINED_FUNCTION_758();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_75_2(v1);
  OUTLINED_FUNCTION_380();
  OUTLINED_FUNCTION_39();
  return OUTLINED_FUNCTION_31();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.DateComponents.weekdayOrdinal.modify()
{
  v0 = OUTLINED_FUNCTION_758();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_75_2(v1);
  OUTLINED_FUNCTION_380();
  OUTLINED_FUNCTION_39();
  return OUTLINED_FUNCTION_31();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.DateComponents.quarter.modify()
{
  v0 = OUTLINED_FUNCTION_758();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_75_2(v1);
  OUTLINED_FUNCTION_380();
  OUTLINED_FUNCTION_39();
  return OUTLINED_FUNCTION_31();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.DateComponents.weekOfMonth.modify()
{
  v0 = OUTLINED_FUNCTION_758();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_75_2(v1);
  OUTLINED_FUNCTION_380();
  OUTLINED_FUNCTION_39();
  return OUTLINED_FUNCTION_31();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.DateComponents.weekOfYear.modify()
{
  v0 = OUTLINED_FUNCTION_758();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_75_2(v1);
  OUTLINED_FUNCTION_380();
  OUTLINED_FUNCTION_39();
  return OUTLINED_FUNCTION_31();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.DateComponents.yearForWeekOfYear.modify()
{
  v0 = OUTLINED_FUNCTION_758();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_75_2(v1);
  OUTLINED_FUNCTION_380();
  OUTLINED_FUNCTION_39();
  return OUTLINED_FUNCTION_31();
}

uint64_t sub_1C88FE2C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C89CC064();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1C88FE368(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.DateComponents.Calendar.localeIdentifier.setter(v1, v2);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.DateComponents.Calendar.localeIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_17_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_41(v1);
  v3 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.DateComponents.Calendar(v2);
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

uint64_t sub_1C88FE4D8()
{
  v0 = OUTLINED_FUNCTION_782();
  v1(v0);
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_21();
  v2 = OUTLINED_FUNCTION_130_1();

  return v3(v2);
}

uint64_t sub_1C88FE55C()
{
  v0 = OUTLINED_FUNCTION_241();
  v1(v0);
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_121_0();
  v2 = OUTLINED_FUNCTION_167_1();

  return v3(v2);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.DateComponents.Calendar.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.DateComponents.Calendar(v0);
  return OUTLINED_FUNCTION_242();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.EnumerationValue.type.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.EnumerationValue(v1);
  sub_1C8778ED8(v0 + *(v2 + 24), &qword_1EC2BAAB0, &qword_1C8BFA9C8);
  OUTLINED_FUNCTION_8_16();
  OUTLINED_FUNCTION_200();
  sub_1C88E3EC4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.EnumerationValue.type.modify()
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
  v9 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier(v8);
  OUTLINED_FUNCTION_47_3(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_243(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_168(v13);
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.EnumerationValue(v14);
  OUTLINED_FUNCTION_360_0(*(v15 + 24));
  OUTLINED_FUNCTION_5_6();
  if (v16)
  {
    v17 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.OneOf_TypeIdentifierKind(0);
    OUTLINED_FUNCTION_81_1(v17);
    OUTLINED_FUNCTION_5_6();
    if (!v16)
    {
      sub_1C8778ED8(v0, &qword_1EC2BAAB0, &qword_1C8BFA9C8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_16();
    OUTLINED_FUNCTION_184();
    sub_1C88E3EC4();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_260();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.EnumerationValue.displayRepresentation.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.EnumerationValue(v1);
  sub_1C8778ED8(v0 + *(v2 + 28), &qword_1EC2B60C8, &qword_1C8BFA9F0);
  OUTLINED_FUNCTION_10_12();
  OUTLINED_FUNCTION_200();
  sub_1C88E3EC4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.EnumerationValue.displayRepresentation.modify()
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
  v9 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation(v8);
  OUTLINED_FUNCTION_29_5(v9);
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_243(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_168(v14);
  v16 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.EnumerationValue(v15);
  OUTLINED_FUNCTION_368(*(v16 + 28));
  OUTLINED_FUNCTION_0_0();
  if (v17)
  {
    OUTLINED_FUNCTION_740();
    *(v11 + 16) = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_777();
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_12_15();
    if (!v17)
    {
      sub_1C8778ED8(v0, &qword_1EC2B60C8, &qword_1C8BFA9F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_10_12();
    OUTLINED_FUNCTION_168_0();
    sub_1C88E3EC4();
  }

  OUTLINED_FUNCTION_260();
}

void sub_1C88FE9D0()
{
  OUTLINED_FUNCTION_261();
  OUTLINED_FUNCTION_154();
  if (v5)
  {
    OUTLINED_FUNCTION_254_0();
    sub_1C88E4144();
    sub_1C8778ED8(v4 + v3, &qword_1EC2B60C8, &qword_1C8BFA9F0);
    OUTLINED_FUNCTION_10_12();
    OUTLINED_FUNCTION_976();
    OUTLINED_FUNCTION_321();
    OUTLINED_FUNCTION_54_5();
    sub_1C88E3C58();
  }

  else
  {
    sub_1C8778ED8(v4 + v3, &qword_1EC2B60C8, &qword_1C8BFA9F0);
    OUTLINED_FUNCTION_10_12();
    OUTLINED_FUNCTION_977();
    OUTLINED_FUNCTION_321();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_260();

  free(v6);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.EnumerationValue.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.EnumerationValue(v0);
  return OUTLINED_FUNCTION_242();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.EntityValue.type.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_74();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.EntityValue(v5);
  OUTLINED_FUNCTION_439();
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier(0);
  OUTLINED_FUNCTION_46_2(v6);
  if (v7)
  {
    v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.OneOf_TypeIdentifierKind(0);
    OUTLINED_FUNCTION_107_1(v8);
    result = OUTLINED_FUNCTION_1_0();
    if (!v7)
    {
      return sub_1C8778ED8(v0, &qword_1EC2BAAB0, &qword_1C8BFA9C8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_16();
    OUTLINED_FUNCTION_121();
    return sub_1C88E3EC4();
  }

  return result;
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.EntityValue.type.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.EntityValue(v1);
  sub_1C8778ED8(v0 + *(v2 + 28), &qword_1EC2BAAB0, &qword_1C8BFA9C8);
  OUTLINED_FUNCTION_8_16();
  OUTLINED_FUNCTION_200();
  sub_1C88E3EC4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.EntityValue.type.modify()
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
  v9 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier(v8);
  OUTLINED_FUNCTION_47_3(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_243(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_168(v13);
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.EntityValue(v14);
  OUTLINED_FUNCTION_360_0(*(v15 + 28));
  OUTLINED_FUNCTION_5_6();
  if (v16)
  {
    v17 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.OneOf_TypeIdentifierKind(0);
    OUTLINED_FUNCTION_81_1(v17);
    OUTLINED_FUNCTION_5_6();
    if (!v16)
    {
      sub_1C8778ED8(v0, &qword_1EC2BAAB0, &qword_1C8BFA9C8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_16();
    OUTLINED_FUNCTION_184();
    sub_1C88E3EC4();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_260();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.EntityValue.displayRepresentation.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_170();
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.EntityValue(v5);
  OUTLINED_FUNCTION_947(v6);
  OUTLINED_FUNCTION_232();
  sub_1C89CBE2C();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation(0);
  v7 = OUTLINED_FUNCTION_690();
  OUTLINED_FUNCTION_65(v7);
  if (v8)
  {
    OUTLINED_FUNCTION_992();
    OUTLINED_FUNCTION_1106(MEMORY[0x1E69E7CC0]);
    v9 = OUTLINED_FUNCTION_941();
    v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Subtitle(v9);
    OUTLINED_FUNCTION_456(v10);
    v11 = OUTLINED_FUNCTION_1070();
    v12 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.AltText(v11);
    OUTLINED_FUNCTION_456(v12);
    v13 = OUTLINED_FUNCTION_1127();
    v14 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image(v13);
    OUTLINED_FUNCTION_456(v14);
    v15 = OUTLINED_FUNCTION_496();
    v16 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.PluginModelData(v15);
    result = OUTLINED_FUNCTION_9_13(v16);
    if (!v8)
    {
      return sub_1C8778ED8(v0, &qword_1EC2B60C8, &qword_1C8BFA9F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_10_12();
    OUTLINED_FUNCTION_312();
    return sub_1C88E3EC4();
  }

  return result;
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.EntityValue.displayRepresentation.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.EntityValue(v1);
  sub_1C8778ED8(v0 + *(v2 + 32), &qword_1EC2B60C8, &qword_1C8BFA9F0);
  OUTLINED_FUNCTION_10_12();
  OUTLINED_FUNCTION_200();
  sub_1C88E3EC4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.EntityValue.displayRepresentation.modify()
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
  v9 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation(v8);
  OUTLINED_FUNCTION_29_5(v9);
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_243(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_168(v14);
  v16 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.EntityValue(v15);
  OUTLINED_FUNCTION_368(*(v16 + 32));
  OUTLINED_FUNCTION_0_0();
  if (v17)
  {
    OUTLINED_FUNCTION_740();
    *(v11 + 16) = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_777();
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_12_15();
    if (!v17)
    {
      sub_1C8778ED8(v0, &qword_1EC2B60C8, &qword_1C8BFA9F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_10_12();
    OUTLINED_FUNCTION_168_0();
    sub_1C88E3EC4();
  }

  OUTLINED_FUNCTION_260();
}

uint64_t sub_1C88FF14C()
{
  OUTLINED_FUNCTION_382_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_80(v4);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_27_0();
  v7 = v1(v6);
  OUTLINED_FUNCTION_947(v7);
  OUTLINED_FUNCTION_70_2();
  sub_1C89CBE2C();
  v8 = v0(0);
  OUTLINED_FUNCTION_48_2(v8);
  return OUTLINED_FUNCTION_216_0();
}

uint64_t sub_1C88FF20C()
{
  v1 = OUTLINED_FUNCTION_46_1();
  v2(v1);
  OUTLINED_FUNCTION_84_1();
  sub_1C8778ED8(v3, v4, v5);
  v0(0);
  v6 = OUTLINED_FUNCTION_73_0();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.EntityValue.hydratedAppEntity.getter()
{
  v0 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.EntityValue(0);
  v1 = OUTLINED_FUNCTION_535(*(v0 + 36));
  sub_1C87A8FA8(v1, v2);
  return OUTLINED_FUNCTION_218();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.EntityValue.hydratedAppEntity.setter()
{
  v0 = OUTLINED_FUNCTION_68();
  v1 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.EntityValue(v0);
  return OUTLINED_FUNCTION_1159(*(v1 + 36));
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.EntityValue.hydratedAppEntity.modify(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_1061(a1);
  v3 = *(type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.EntityValue(v2) + 36);
  *(v1 + 24) = v3;
  v6 = OUTLINED_FUNCTION_535(v3);
  if (!v5 & v4)
  {
    v8 = 0;
  }

  else
  {
    v8 = v6;
  }

  v9 = 0xC000000000000000;
  if (!(!v5 & v4))
  {
    v9 = v7;
  }

  *v1 = v8;
  *(v1 + 8) = v9;
  sub_1C87A8FA8(v6, v7);
  return OUTLINED_FUNCTION_74_0();
}

BOOL Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.EntityValue.hasHydratedAppEntity.getter()
{
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.EntityValue(0);
  OUTLINED_FUNCTION_766();
  return OUTLINED_FUNCTION_1045(v0);
}

Swift::Void __swiftcall Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.EntityValue.clearHydratedAppEntity()()
{
  v1 = v0 + *(type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.EntityValue(0) + 36);
  sub_1C87A9A24(*v1, *(v1 + 8));
  *v1 = xmmword_1C8BFA8E0;
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.EntityValue.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.EntityValue(v0);
  return OUTLINED_FUNCTION_242();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.CollectionValue.type.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.CollectionValue(v1);
  sub_1C8778ED8(v0 + *(v2 + 24), &qword_1EC2BAAB0, &qword_1C8BFA9C8);
  OUTLINED_FUNCTION_8_16();
  OUTLINED_FUNCTION_200();
  sub_1C88E3EC4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.CollectionValue.type.modify()
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
  v9 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier(v8);
  OUTLINED_FUNCTION_47_3(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_243(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_168(v13);
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.CollectionValue(v14);
  OUTLINED_FUNCTION_360_0(*(v15 + 24));
  OUTLINED_FUNCTION_5_6();
  if (v16)
  {
    v17 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.OneOf_TypeIdentifierKind(0);
    OUTLINED_FUNCTION_81_1(v17);
    OUTLINED_FUNCTION_5_6();
    if (!v16)
    {
      sub_1C8778ED8(v0, &qword_1EC2BAAB0, &qword_1C8BFA9C8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_16();
    OUTLINED_FUNCTION_184();
    sub_1C88E3EC4();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_260();
}

void sub_1C88FF5F4()
{
  OUTLINED_FUNCTION_261();
  OUTLINED_FUNCTION_154();
  if (v5)
  {
    OUTLINED_FUNCTION_254_0();
    sub_1C88E4144();
    sub_1C8778ED8(v4 + v3, &qword_1EC2BAAB0, &qword_1C8BFA9C8);
    OUTLINED_FUNCTION_8_16();
    OUTLINED_FUNCTION_976();
    OUTLINED_FUNCTION_321();
    OUTLINED_FUNCTION_41_8();
    sub_1C88E3C58();
  }

  else
  {
    sub_1C8778ED8(v4 + v3, &qword_1EC2BAAB0, &qword_1C8BFA9C8);
    OUTLINED_FUNCTION_8_16();
    OUTLINED_FUNCTION_977();
    OUTLINED_FUNCTION_321();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_260();

  free(v6);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.CollectionValue.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.CollectionValue(v0);
  return OUTLINED_FUNCTION_242();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.QueryValue.type.setter()
{
  OUTLINED_FUNCTION_31_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAAB0, &qword_1C8BFA9C8);
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_170();
  Value = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.QueryValue(v2);
  if ((OUTLINED_FUNCTION_41_1(Value) & 1) == 0)
  {
    type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.QueryValue._StorageClass(0);
    OUTLINED_FUNCTION_218_2();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_2();
    v5 = sub_1C8963558(v4);
    OUTLINED_FUNCTION_40(v5);
  }

  OUTLINED_FUNCTION_8_16();
  OUTLINED_FUNCTION_196_0();
  sub_1C88E3EC4();
  OUTLINED_FUNCTION_411();
  v6 = OUTLINED_FUNCTION_128_2();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_200();
  sub_1C89CBD78();
  return swift_endAccess();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.QueryValue.type.modify()
{
  OUTLINED_FUNCTION_124();
  v1 = OUTLINED_FUNCTION_41_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_14_2(v2);
  v3 = OUTLINED_FUNCTION_230();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_13_2(v7);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier(v8);
  OUTLINED_FUNCTION_48_5();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_38_0(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_129_2(v12);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.QueryValue(v13);
  OUTLINED_FUNCTION_215_1();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_470();
  OUTLINED_FUNCTION_0_0();
  if (v14)
  {
    v15 = OUTLINED_FUNCTION_416();
    OUTLINED_FUNCTION_1020(v15);
    OUTLINED_FUNCTION_0_0();
    if (!v14)
    {
      sub_1C8778ED8(v0, &qword_1EC2BAAB0, &qword_1C8BFA9C8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_16();
    OUTLINED_FUNCTION_168_0();
    sub_1C88E3EC4();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.QueryValue.hasType.getter()
{
  v0 = OUTLINED_FUNCTION_12();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_80(v2);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_74();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.QueryValue(v4);
  OUTLINED_FUNCTION_215_1();
  OUTLINED_FUNCTION_157_2();
  OUTLINED_FUNCTION_468_0();
  v5 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier(0);
  OUTLINED_FUNCTION_10(v5);
  return OUTLINED_FUNCTION_268_1();
}

Swift::Void __swiftcall Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.QueryValue.clearType()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAAB0, &qword_1C8BFA9C8);
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_170();
  Value = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.QueryValue(v2);
  if ((OUTLINED_FUNCTION_436(Value) & 1) == 0)
  {
    type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.QueryValue._StorageClass(0);
    OUTLINED_FUNCTION_218_2();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_2();
    v5 = sub_1C8963558(v4);
    OUTLINED_FUNCTION_264_1(v5);
  }

  OUTLINED_FUNCTION_411();
  OUTLINED_FUNCTION_5();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_155_2();
  OUTLINED_FUNCTION_200();
  sub_1C89CBD78();
  swift_endAccess();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.QueryValue.query.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_220();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_74();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.QueryValue(v7);
  OUTLINED_FUNCTION_215_1();
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_425_0();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.Query(0);
  OUTLINED_FUNCTION_46_2(v8);
  if (v9)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    if (qword_1EC2B5738 != -1)
    {
      OUTLINED_FUNCTION_897(&qword_1EC2B5738);
    }

    result = OUTLINED_FUNCTION_263_1();
    if (a1 != 1)
    {
      return sub_1C8778ED8(v1, &qword_1EC2BABE0, &qword_1C8BFAA80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_486();
    OUTLINED_FUNCTION_121();
    return sub_1C88E3EC4();
  }

  return result;
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.QueryValue.query.setter()
{
  OUTLINED_FUNCTION_31_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BABE0, &qword_1C8BFAA80);
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_170();
  Value = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.QueryValue(v2);
  if ((OUTLINED_FUNCTION_41_1(Value) & 1) == 0)
  {
    type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.QueryValue._StorageClass(0);
    OUTLINED_FUNCTION_218_2();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_2();
    v5 = sub_1C8963558(v4);
    OUTLINED_FUNCTION_40(v5);
  }

  OUTLINED_FUNCTION_486();
  OUTLINED_FUNCTION_196_0();
  sub_1C88E3EC4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.Query(0);
  v6 = OUTLINED_FUNCTION_128_2();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_200();
  sub_1C89CBD78();
  return swift_endAccess();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.QueryValue.query.modify()
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
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.Query(v9);
  OUTLINED_FUNCTION_48_5();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_38_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_129_2(v13);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.QueryValue(v14);
  OUTLINED_FUNCTION_215_1();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_470();
  OUTLINED_FUNCTION_0_0();
  if (v15)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    if (qword_1EC2B5738 != -1)
    {
      OUTLINED_FUNCTION_897(&qword_1EC2B5738);
    }

    OUTLINED_FUNCTION_259_1();
    if (v0 != 1)
    {
      sub_1C8778ED8(v1, &qword_1EC2BABE0, &qword_1C8BFAA80);
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

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.QueryValue.hasQuery.getter()
{
  v0 = OUTLINED_FUNCTION_12();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_80(v2);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_74();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.QueryValue(v4);
  OUTLINED_FUNCTION_215_1();
  OUTLINED_FUNCTION_157_2();
  OUTLINED_FUNCTION_468_0();
  v5 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.Query(0);
  OUTLINED_FUNCTION_10(v5);
  return OUTLINED_FUNCTION_268_1();
}

Swift::Void __swiftcall Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.QueryValue.clearQuery()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BABE0, &qword_1C8BFAA80);
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_170();
  Value = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.QueryValue(v2);
  if ((OUTLINED_FUNCTION_436(Value) & 1) == 0)
  {
    type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.QueryValue._StorageClass(0);
    OUTLINED_FUNCTION_218_2();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_2();
    v5 = sub_1C8963558(v4);
    OUTLINED_FUNCTION_264_1(v5);
  }

  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.Query(0);
  OUTLINED_FUNCTION_156_2(v6);
  OUTLINED_FUNCTION_155_2();
  OUTLINED_FUNCTION_200();
  sub_1C89CBD78();
  swift_endAccess();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.EntityIdentifierValue.type.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.EntityIdentifierValue(v1);
  sub_1C8778ED8(v0 + *(v2 + 24), &qword_1EC2BAAB0, &qword_1C8BFA9C8);
  OUTLINED_FUNCTION_8_16();
  OUTLINED_FUNCTION_200();
  sub_1C88E3EC4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.EntityIdentifierValue.type.modify()
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
  v9 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier(v8);
  OUTLINED_FUNCTION_47_3(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_243(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_168(v13);
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.EntityIdentifierValue(v14);
  OUTLINED_FUNCTION_360_0(*(v15 + 24));
  OUTLINED_FUNCTION_5_6();
  if (v16)
  {
    v17 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.OneOf_TypeIdentifierKind(0);
    OUTLINED_FUNCTION_81_1(v17);
    OUTLINED_FUNCTION_5_6();
    if (!v16)
    {
      sub_1C8778ED8(v0, &qword_1EC2BAAB0, &qword_1C8BFA9C8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_16();
    OUTLINED_FUNCTION_184();
    sub_1C88E3EC4();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_260();
}

uint64_t sub_1C8900310()
{
  OUTLINED_FUNCTION_1087();
  v2 = OUTLINED_FUNCTION_299_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_80(v4);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_170();
  v7 = v1(v6);
  OUTLINED_FUNCTION_885(v7);
  OUTLINED_FUNCTION_626();
  sub_1C89CBE2C();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation(0);
  v8 = OUTLINED_FUNCTION_690();
  OUTLINED_FUNCTION_65(v8);
  if (v9)
  {
    OUTLINED_FUNCTION_992();
    OUTLINED_FUNCTION_1106(MEMORY[0x1E69E7CC0]);
    v10 = OUTLINED_FUNCTION_941();
    v11 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Subtitle(v10);
    OUTLINED_FUNCTION_456(v11);
    v12 = OUTLINED_FUNCTION_1070();
    v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.AltText(v12);
    OUTLINED_FUNCTION_456(v13);
    v14 = OUTLINED_FUNCTION_1127();
    v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image(v14);
    OUTLINED_FUNCTION_456(v15);
    v16 = OUTLINED_FUNCTION_496();
    v17 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.PluginModelData(v16);
    result = OUTLINED_FUNCTION_9_13(v17);
    if (!v9)
    {
      return sub_1C8778ED8(v0, &qword_1EC2B60C8, &qword_1C8BFA9F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_312();
    return sub_1C88E3EC4();
  }

  return result;
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.EntityIdentifierValue.displayRepresentation.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.EntityIdentifierValue(v1);
  sub_1C8778ED8(v0 + *(v2 + 28), &qword_1EC2B60C8, &qword_1C8BFA9F0);
  OUTLINED_FUNCTION_10_12();
  OUTLINED_FUNCTION_200();
  sub_1C88E3EC4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.EntityIdentifierValue.displayRepresentation.modify()
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
  v9 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation(v8);
  OUTLINED_FUNCTION_29_5(v9);
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_243(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_168(v14);
  v16 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.EntityIdentifierValue(v15);
  OUTLINED_FUNCTION_368(*(v16 + 28));
  OUTLINED_FUNCTION_0_0();
  if (v17)
  {
    OUTLINED_FUNCTION_740();
    *(v11 + 16) = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_777();
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_12_15();
    if (!v17)
    {
      sub_1C8778ED8(v0, &qword_1EC2B60C8, &qword_1C8BFA9F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_10_12();
    OUTLINED_FUNCTION_168_0();
    sub_1C88E3EC4();
  }

  OUTLINED_FUNCTION_260();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.EntityIdentifierValue.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.EntityIdentifierValue(v0);
  return OUTLINED_FUNCTION_242();
}

void sub_1C89006BC()
{
  OUTLINED_FUNCTION_261();
  v2 = v1;
  v3 = OUTLINED_FUNCTION_230();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_103();
  v2(0);
  OUTLINED_FUNCTION_215_1();
  OUTLINED_FUNCTION_36_3();
  swift_beginAccess();
  OUTLINED_FUNCTION_938();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier(0);
  OUTLINED_FUNCTION_65(v0);
  if (v7)
  {
    v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.OneOf_TypeIdentifierKind(0);
    OUTLINED_FUNCTION_107_1(v8);
    OUTLINED_FUNCTION_65(v0);
    if (!v7)
    {
      sub_1C8778ED8(v0, &qword_1EC2BAAB0, &qword_1C8BFA9C8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_118();
    sub_1C88E3EC4();
  }

  OUTLINED_FUNCTION_260();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.DeferredValue.type.setter()
{
  OUTLINED_FUNCTION_31_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAAB0, &qword_1C8BFA9C8);
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_170();
  v3 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.DeferredValue(v2);
  if ((OUTLINED_FUNCTION_41_1(v3) & 1) == 0)
  {
    type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.DeferredValue._StorageClass(0);
    OUTLINED_FUNCTION_218_2();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_2();
    v5 = sub_1C896534C(v4);
    OUTLINED_FUNCTION_40(v5);
  }

  OUTLINED_FUNCTION_8_16();
  OUTLINED_FUNCTION_196_0();
  sub_1C88E3EC4();
  OUTLINED_FUNCTION_411();
  v6 = OUTLINED_FUNCTION_128_2();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_200();
  sub_1C89CBD78();
  return swift_endAccess();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.DeferredValue.type.modify()
{
  OUTLINED_FUNCTION_124();
  v1 = OUTLINED_FUNCTION_41_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_14_2(v2);
  v3 = OUTLINED_FUNCTION_230();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_13_2(v7);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier(v8);
  OUTLINED_FUNCTION_48_5();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_38_0(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_129_2(v12);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.DeferredValue(v13);
  OUTLINED_FUNCTION_215_1();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_470();
  OUTLINED_FUNCTION_0_0();
  if (v14)
  {
    v15 = OUTLINED_FUNCTION_416();
    OUTLINED_FUNCTION_1020(v15);
    OUTLINED_FUNCTION_0_0();
    if (!v14)
    {
      sub_1C8778ED8(v0, &qword_1EC2BAAB0, &qword_1C8BFA9C8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_16();
    OUTLINED_FUNCTION_168_0();
    sub_1C88E3EC4();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.DeferredValue.hasType.getter()
{
  v0 = OUTLINED_FUNCTION_12();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_80(v2);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_74();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.DeferredValue(v4);
  OUTLINED_FUNCTION_215_1();
  OUTLINED_FUNCTION_157_2();
  OUTLINED_FUNCTION_468_0();
  v5 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier(0);
  OUTLINED_FUNCTION_10(v5);
  return OUTLINED_FUNCTION_268_1();
}

Swift::Void __swiftcall Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.DeferredValue.clearType()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAAB0, &qword_1C8BFA9C8);
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_170();
  v3 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.DeferredValue(v2);
  if ((OUTLINED_FUNCTION_436(v3) & 1) == 0)
  {
    type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.DeferredValue._StorageClass(0);
    OUTLINED_FUNCTION_218_2();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_2();
    v5 = sub_1C896534C(v4);
    OUTLINED_FUNCTION_264_1(v5);
  }

  OUTLINED_FUNCTION_411();
  OUTLINED_FUNCTION_5();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_155_2();
  OUTLINED_FUNCTION_200();
  sub_1C89CBD78();
  swift_endAccess();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.DeferredValue.expectedTypeInstance.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_220();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_74();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.DeferredValue(v7);
  OUTLINED_FUNCTION_215_1();
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

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.DeferredValue.expectedTypeInstance.setter()
{
  OUTLINED_FUNCTION_31_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60D8, &qword_1C8BE6D88);
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_170();
  v3 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.DeferredValue(v2);
  if ((OUTLINED_FUNCTION_41_1(v3) & 1) == 0)
  {
    type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.DeferredValue._StorageClass(0);
    OUTLINED_FUNCTION_218_2();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_2();
    v5 = sub_1C896534C(v4);
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

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.DeferredValue.expectedTypeInstance.modify()
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
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(v9);
  OUTLINED_FUNCTION_48_5();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_38_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_129_2(v13);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.DeferredValue(v14);
  OUTLINED_FUNCTION_215_1();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_470();
  OUTLINED_FUNCTION_0_0();
  if (v15)
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

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.DeferredValue.hasExpectedTypeInstance.getter()
{
  v0 = OUTLINED_FUNCTION_12();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_80(v2);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_74();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.DeferredValue(v4);
  OUTLINED_FUNCTION_215_1();
  OUTLINED_FUNCTION_157_2();
  OUTLINED_FUNCTION_468_0();
  v5 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(0);
  OUTLINED_FUNCTION_10(v5);
  return OUTLINED_FUNCTION_268_1();
}

Swift::Void __swiftcall Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.DeferredValue.clearExpectedTypeInstance()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60D8, &qword_1C8BE6D88);
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_170();
  v3 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.DeferredValue(v2);
  if ((OUTLINED_FUNCTION_436(v3) & 1) == 0)
  {
    type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.DeferredValue._StorageClass(0);
    OUTLINED_FUNCTION_218_2();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_2();
    v5 = sub_1C896534C(v4);
    OUTLINED_FUNCTION_264_1(v5);
  }

  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(0);
  OUTLINED_FUNCTION_156_2(v6);
  OUTLINED_FUNCTION_155_2();
  OUTLINED_FUNCTION_200();
  sub_1C89CBD78();
  swift_endAccess();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.DeferredValue.storage.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_74();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.DeferredValue(v5);
  OUTLINED_FUNCTION_215_1();
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_425_0();
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.DeferredValue.Storage(0);
  OUTLINED_FUNCTION_46_2(v6);
  if (v7)
  {
    v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.DeferredValue.Storage.OneOf_StorageKind(0);
    OUTLINED_FUNCTION_107_1(v8);
    result = OUTLINED_FUNCTION_1_0();
    if (!v7)
    {
      return sub_1C8778ED8(v0, &qword_1EC2BAC00, &qword_1C8BFAA88);
    }
  }

  else
  {
    OUTLINED_FUNCTION_483_0();
    OUTLINED_FUNCTION_121();
    return sub_1C88E3EC4();
  }

  return result;
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.DeferredValue.storage.setter()
{
  OUTLINED_FUNCTION_31_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAC00, &qword_1C8BFAA88);
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_170();
  v3 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.DeferredValue(v2);
  if ((OUTLINED_FUNCTION_41_1(v3) & 1) == 0)
  {
    type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.DeferredValue._StorageClass(0);
    OUTLINED_FUNCTION_218_2();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_2();
    v5 = sub_1C896534C(v4);
    OUTLINED_FUNCTION_40(v5);
  }

  OUTLINED_FUNCTION_483_0();
  OUTLINED_FUNCTION_196_0();
  sub_1C88E3EC4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.DeferredValue.Storage(0);
  v6 = OUTLINED_FUNCTION_128_2();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_200();
  sub_1C89CBD78();
  return swift_endAccess();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.DeferredValue.storage.modify()
{
  OUTLINED_FUNCTION_124();
  v1 = OUTLINED_FUNCTION_41_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_14_2(v2);
  v3 = OUTLINED_FUNCTION_230();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_13_2(v7);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.DeferredValue.Storage(v8);
  OUTLINED_FUNCTION_48_5();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_38_0(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_129_2(v12);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.DeferredValue(v13);
  OUTLINED_FUNCTION_215_1();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_470();
  OUTLINED_FUNCTION_0_0();
  if (v14)
  {
    v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.DeferredValue.Storage.OneOf_StorageKind(0);
    v16 = OUTLINED_FUNCTION_457_0(v15);
    OUTLINED_FUNCTION_1020(v16);
    OUTLINED_FUNCTION_0_0();
    if (!v14)
    {
      sub_1C8778ED8(v0, &qword_1EC2BAC00, &qword_1C8BFAA88);
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

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.DeferredValue.hasStorage.getter()
{
  v0 = OUTLINED_FUNCTION_12();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_80(v2);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_74();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.DeferredValue(v4);
  OUTLINED_FUNCTION_215_1();
  OUTLINED_FUNCTION_157_2();
  OUTLINED_FUNCTION_468_0();
  v5 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.DeferredValue.Storage(0);
  OUTLINED_FUNCTION_10(v5);
  return OUTLINED_FUNCTION_268_1();
}

Swift::Void __swiftcall Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.DeferredValue.clearStorage()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAC00, &qword_1C8BFAA88);
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_170();
  v3 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.DeferredValue(v2);
  if ((OUTLINED_FUNCTION_436(v3) & 1) == 0)
  {
    type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.DeferredValue._StorageClass(0);
    OUTLINED_FUNCTION_218_2();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_2();
    v5 = sub_1C896534C(v4);
    OUTLINED_FUNCTION_264_1(v5);
  }

  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.DeferredValue.Storage(0);
  OUTLINED_FUNCTION_156_2(v6);
  OUTLINED_FUNCTION_155_2();
  OUTLINED_FUNCTION_200();
  sub_1C89CBD78();
  swift_endAccess();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.DeferredValue.Storage.contentItemProperty.getter()
{
  OUTLINED_FUNCTION_93_1();
  v2 = OUTLINED_FUNCTION_253();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_80(v4);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_122_2();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.DeferredValue.Storage.OneOf_StorageKind(0);
  v6 = OUTLINED_FUNCTION_221_0();
  OUTLINED_FUNCTION_140_1(v6, v7, v8);
  if (v9)
  {
    sub_1C8778ED8(v1, &qword_1EC2BAC10, &qword_1C8BFAA90);
    *v0 = xmmword_1C8BFA8F0;
    v10 = OUTLINED_FUNCTION_923(0xE000000000000000);
    v11 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.DeferredValue.Storage.ContentItemPropertyStorage(v10);
    return OUTLINED_FUNCTION_979(v11);
  }

  else
  {
    OUTLINED_FUNCTION_239_2();
    OUTLINED_FUNCTION_5_0();
    return sub_1C88E3EC4();
  }
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.DeferredValue.Storage.contentItemProperty.modify()
{
  OUTLINED_FUNCTION_261();
  v2 = OUTLINED_FUNCTION_55_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_39_2(v8);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.DeferredValue.Storage.ContentItemPropertyStorage(v9);
  OUTLINED_FUNCTION_48_5();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_110_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  *(v1 + 24) = v13;
  OUTLINED_FUNCTION_286_0();
  sub_1C89CBE2C();
  v14 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.DeferredValue.Storage.OneOf_StorageKind(0);
  *(v1 + 32) = v14;
  OUTLINED_FUNCTION_140_1(v0, v15, v14);
  if (v16)
  {
    sub_1C8778ED8(v0, &qword_1EC2BAC10, &qword_1C8BFAA90);
    *v13 = xmmword_1C8BFA8F0;
    v13[2] = 0;
    v13[3] = 0xE000000000000000;
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  }

  else
  {
    OUTLINED_FUNCTION_239_2();
    OUTLINED_FUNCTION_82_3();
    sub_1C88E3EC4();
  }

  OUTLINED_FUNCTION_687();
  OUTLINED_FUNCTION_260();
}

void sub_1C89017EC()
{
  OUTLINED_FUNCTION_32_6();
  if (v5)
  {
    OUTLINED_FUNCTION_184();
    sub_1C88E4144();
    sub_1C8778ED8(v4, &qword_1EC2BAC10, &qword_1C8BFAA90);
    OUTLINED_FUNCTION_239_2();
    OUTLINED_FUNCTION_156_1();
    sub_1C88E3EC4();
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_86_1();
    sub_1C88E3C58();
  }

  else
  {
    sub_1C8778ED8(v4, &qword_1EC2BAC10, &qword_1C8BFAA90);
    OUTLINED_FUNCTION_239_2();
    OUTLINED_FUNCTION_268();
    sub_1C88E3EC4();
    OUTLINED_FUNCTION_53();
  }

  free(v3);
  free(v2);
  free(v1);

  free(v0);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.DeferredValue.Storage.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.DeferredValue.Storage(v0);
  return OUTLINED_FUNCTION_242();
}

uint64_t static Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.DeferredValue.Storage.OneOf_StorageKind.== infix(_:_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAC18, &unk_1C8BFAA98);
  OUTLINED_FUNCTION_80(v2);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_112_0();
  v5 = (v1 + *(v4 + 56));
  sub_1C88E4144();
  OUTLINED_FUNCTION_92_0();
  sub_1C88E4144();
  if (MEMORY[0x1CCA7D0F0](*v1, v1[1], *v5, v5[1]))
  {
    v6 = v1[2] == v5[2] && v1[3] == v5[3];
    if (v6 || (sub_1C8BD529C() & 1) != 0)
    {
      type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.DeferredValue.Storage.ContentItemPropertyStorage(0);
      OUTLINED_FUNCTION_1105();
      OUTLINED_FUNCTION_1_14();
      sub_1C8776818(v7, v8, MEMORY[0x1E69AAC10]);
      sub_1C8BD517C();
    }
  }

  sub_1C88E3C58();
  OUTLINED_FUNCTION_312();
  sub_1C88E3C58();
  return OUTLINED_FUNCTION_268_1();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.DeferredValue.Storage.ContentItemPropertyStorage.data.getter()
{
  v0 = OUTLINED_FUNCTION_218();
  sub_1C87A8FBC(v0, v1);
  return OUTLINED_FUNCTION_218();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.DeferredValue.Storage.ContentItemPropertyStorage.data.setter()
{
  OUTLINED_FUNCTION_731();
  result = sub_1C87A997C(*v1, *(v1 + 8));
  *v1 = v2;
  *(v1 + 8) = v0;
  return result;
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.DeferredValue.Storage.ContentItemPropertyStorage.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.DeferredValue.Storage.ContentItemPropertyStorage(v0);
  return OUTLINED_FUNCTION_242();
}

void sub_1C8901C2C()
{
  OUTLINED_FUNCTION_533();
  v0(0);
  OUTLINED_FUNCTION_215_1();
  OUTLINED_FUNCTION_36_3();
  swift_beginAccess();
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_534();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.typeInstanceKind.setter()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(v0);
  if ((OUTLINED_FUNCTION_436(v1) & 1) == 0)
  {
    type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance._StorageClass(0);
    OUTLINED_FUNCTION_218_2();
    swift_allocObject();
    OUTLINED_FUNCTION_61_6();
    sub_1C89681C4();
    OUTLINED_FUNCTION_264_1(v2);
  }

  OUTLINED_FUNCTION_540();
  swift_beginAccess();
  OUTLINED_FUNCTION_200();
  sub_1C89CBD78();
  return swift_endAccess();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.typeInstanceKind.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_813();
  v2 = __swift_coroFrameAllocStub(v1);
  *(OUTLINED_FUNCTION_34_0(v2) + 48) = v0;
  v3 = OUTLINED_FUNCTION_253();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_1135(v7);
  v9 = __swift_coroFrameAllocStub(v8);
  v10 = OUTLINED_FUNCTION_926(v9);
  v11 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(v10);
  OUTLINED_FUNCTION_571(v11);
  OUTLINED_FUNCTION_1015();
  OUTLINED_FUNCTION_36_3();
  swift_beginAccess();
  OUTLINED_FUNCTION_613();
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_1088();
  OUTLINED_FUNCTION_260();
}

void sub_1C8901E24(void **a1, char a2)
{
  v4 = *a1;
  if (a2)
  {
    OUTLINED_FUNCTION_1134();
    OUTLINED_FUNCTION_271();
    OUTLINED_FUNCTION_382();
    sub_1C89CBE2C();
    Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.typeInstanceKind.setter();
    v5 = OUTLINED_FUNCTION_220();
    sub_1C8778ED8(v5, v6, &qword_1C8BE6D60);
  }

  else
  {
    if ((OUTLINED_FUNCTION_1014() & 1) == 0)
    {
      v7 = OUTLINED_FUNCTION_905();
      type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance._StorageClass(v7);
      OUTLINED_FUNCTION_218_2();
      swift_allocObject();
      OUTLINED_FUNCTION_61_6();
      sub_1C89681C4();
      OUTLINED_FUNCTION_1153(v8);
    }

    v3 = v4[7];
    v2 = v4[8];
    OUTLINED_FUNCTION_23();
    swift_beginAccess();
    OUTLINED_FUNCTION_1165();
    swift_endAccess();
  }

  free(v2);
  free(v3);

  free(v4);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.type.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_74();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(v5);
  OUTLINED_FUNCTION_215_1();
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_425_0();
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.OneOf_TypeInstanceKind(0);
  OUTLINED_FUNCTION_46_2(v6);
  if (v7)
  {
    sub_1C8778ED8(v0, &qword_1EC2B60B0, &qword_1C8BE6D60);
LABEL_6:
    v9 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.OneOf_TypeIdentifierKind(0);
    v10 = OUTLINED_FUNCTION_369_0(v9);
    v11 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier(v10);
    return OUTLINED_FUNCTION_260_1(v11);
  }

  OUTLINED_FUNCTION_184();
  if (swift_getEnumCaseMultiPayload())
  {
    OUTLINED_FUNCTION_30_8();
    sub_1C88E3C58();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_8_16();
  OUTLINED_FUNCTION_121();
  return sub_1C88E3EC4();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.type.setter()
{
  OUTLINED_FUNCTION_31_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60B0, &qword_1C8BE6D60);
  OUTLINED_FUNCTION_80(v1);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v2);
  v3 = OUTLINED_FUNCTION_170();
  v4 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(v3);
  if ((OUTLINED_FUNCTION_41_1(v4) & 1) == 0)
  {
    type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance._StorageClass(0);
    OUTLINED_FUNCTION_218_2();
    swift_allocObject();
    OUTLINED_FUNCTION_61_6();
    sub_1C89681C4();
    OUTLINED_FUNCTION_40(v5);
  }

  OUTLINED_FUNCTION_8_16();
  OUTLINED_FUNCTION_196_0();
  sub_1C88E3EC4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.OneOf_TypeInstanceKind(0);
  OUTLINED_FUNCTION_367_0();
  swift_storeEnumTagMultiPayload();
  v6 = OUTLINED_FUNCTION_128_2();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v0);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_200();
  sub_1C89CBD78();
  return swift_endAccess();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.type.modify()
{
  OUTLINED_FUNCTION_124();
  v1 = OUTLINED_FUNCTION_41_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_14_2(v2);
  v3 = OUTLINED_FUNCTION_230();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_376(v7);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier(v8);
  OUTLINED_FUNCTION_40_2();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_714(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_375_0(v12);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(v13);
  OUTLINED_FUNCTION_215_1();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_442_0();
  v14 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.OneOf_TypeInstanceKind(0);
  OUTLINED_FUNCTION_70_4(v14);
  if (v15)
  {
    sub_1C8778ED8(v0, &qword_1EC2B60B0, &qword_1C8BE6D60);
  }

  else
  {
    OUTLINED_FUNCTION_254_0();
    if (!swift_getEnumCaseMultiPayload())
    {
      OUTLINED_FUNCTION_8_16();
      OUTLINED_FUNCTION_253();
      sub_1C88E3EC4();
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_30_8();
    sub_1C88E3C58();
  }

  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.OneOf_TypeIdentifierKind(0);
  v17 = OUTLINED_FUNCTION_768();
  OUTLINED_FUNCTION_262_2(v17, v18, v19, v20);
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
LABEL_7:
  OUTLINED_FUNCTION_713();
  OUTLINED_FUNCTION_125();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.collection.getter()
{
  OUTLINED_FUNCTION_261();
  v2 = v1;
  v3 = OUTLINED_FUNCTION_268();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_552();
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(0);
  OUTLINED_FUNCTION_215_1();
  OUTLINED_FUNCTION_36_3();
  swift_beginAccess();
  OUTLINED_FUNCTION_1015();
  sub_1C89CBE2C();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.OneOf_TypeInstanceKind(0);
  OUTLINED_FUNCTION_72(v0);
  if (v8)
  {
    sub_1C8778ED8(v0, &qword_1EC2B60B0, &qword_1C8BE6D60);
  }

  else
  {
    OUTLINED_FUNCTION_271();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_2_20();
      OUTLINED_FUNCTION_196_0();
      sub_1C88E3EC4();
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_30_8();
    sub_1C88E3C58();
  }

  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v10 = *(v7 + 20);
  if (qword_1EC2B54E8 != -1)
  {
    OUTLINED_FUNCTION_47_7(&qword_1EC2B54E8);
  }

  *(v2 + v10) = qword_1EC2B9A20;

LABEL_10:
  OUTLINED_FUNCTION_260();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.collection.setter()
{
  OUTLINED_FUNCTION_31_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60B0, &qword_1C8BE6D60);
  OUTLINED_FUNCTION_80(v1);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v2);
  v3 = OUTLINED_FUNCTION_170();
  v4 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(v3);
  if ((OUTLINED_FUNCTION_41_1(v4) & 1) == 0)
  {
    type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance._StorageClass(0);
    OUTLINED_FUNCTION_218_2();
    swift_allocObject();
    OUTLINED_FUNCTION_61_6();
    sub_1C89681C4();
    OUTLINED_FUNCTION_40(v5);
  }

  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_196_0();
  sub_1C88E3EC4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.OneOf_TypeInstanceKind(0);
  OUTLINED_FUNCTION_367_0();
  swift_storeEnumTagMultiPayload();
  v6 = OUTLINED_FUNCTION_128_2();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v0);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_200();
  sub_1C89CBD78();
  return swift_endAccess();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.collection.modify()
{
  OUTLINED_FUNCTION_124();
  v1 = OUTLINED_FUNCTION_41_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_654(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v2[4] = v7;
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(0);
  OUTLINED_FUNCTION_40_2();
  v9 = *(v8 + 64);
  v2[5] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v2[6] = v10;
  OUTLINED_FUNCTION_36_3();
  swift_beginAccess();
  OUTLINED_FUNCTION_607();
  sub_1C89CBE2C();
  v11 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.OneOf_TypeInstanceKind(0);
  OUTLINED_FUNCTION_70_4(v11);
  if (v12)
  {
    sub_1C8778ED8(v7, &qword_1EC2B60B0, &qword_1C8BE6D60);
  }

  else
  {
    OUTLINED_FUNCTION_254_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_2_20();
      OUTLINED_FUNCTION_253();
      sub_1C88E3EC4();
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_30_8();
    sub_1C88E3C58();
  }

  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v14 = *(v0 + 20);
  if (qword_1EC2B54E8 != -1)
  {
    OUTLINED_FUNCTION_47_7(&qword_1EC2B54E8);
  }

  *&v10[v14] = qword_1EC2B9A20;

LABEL_10:
  OUTLINED_FUNCTION_713();
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.optionalVariant.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_220();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_74();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(v7);
  OUTLINED_FUNCTION_215_1();
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_425_0();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.OneOf_TypeInstanceKind(0);
  OUTLINED_FUNCTION_46_2(v8);
  if (v9)
  {
    sub_1C8778ED8(v1, &qword_1EC2B60B0, &qword_1C8BE6D60);
  }

  else
  {
    OUTLINED_FUNCTION_184();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      OUTLINED_FUNCTION_358_0();
      OUTLINED_FUNCTION_121();
      return sub_1C88E3EC4();
    }

    OUTLINED_FUNCTION_30_8();
    sub_1C88E3C58();
  }

  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v12 = *(type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Optional(0) + 20);
  if (qword_1EC2B5500 != -1)
  {
    OUTLINED_FUNCTION_933(&qword_1EC2B5500);
  }

  *(a1 + v12) = qword_1EC2B9A50;
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.optionalVariant.setter()
{
  OUTLINED_FUNCTION_31_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60B0, &qword_1C8BE6D60);
  OUTLINED_FUNCTION_80(v1);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v2);
  v3 = OUTLINED_FUNCTION_170();
  v4 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(v3);
  if ((OUTLINED_FUNCTION_41_1(v4) & 1) == 0)
  {
    type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance._StorageClass(0);
    OUTLINED_FUNCTION_218_2();
    swift_allocObject();
    OUTLINED_FUNCTION_61_6();
    sub_1C89681C4();
    OUTLINED_FUNCTION_40(v5);
  }

  OUTLINED_FUNCTION_358_0();
  OUTLINED_FUNCTION_196_0();
  sub_1C88E3EC4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.OneOf_TypeInstanceKind(0);
  OUTLINED_FUNCTION_367_0();
  swift_storeEnumTagMultiPayload();
  v6 = OUTLINED_FUNCTION_128_2();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v0);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_200();
  sub_1C89CBD78();
  return swift_endAccess();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.optionalVariant.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_14_2(v3);
  v4 = OUTLINED_FUNCTION_230();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_376(v8);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Optional(v9);
  OUTLINED_FUNCTION_40_2();
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_714(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_375_0(v14);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(v15);
  OUTLINED_FUNCTION_215_1();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_442_0();
  v16 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.OneOf_TypeInstanceKind(0);
  OUTLINED_FUNCTION_70_4(v16);
  if (v17)
  {
    sub_1C8778ED8(v1, &qword_1EC2B60B0, &qword_1C8BE6D60);
  }

  else
  {
    OUTLINED_FUNCTION_254_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      OUTLINED_FUNCTION_358_0();
      OUTLINED_FUNCTION_253();
      sub_1C88E3EC4();
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_30_8();
    sub_1C88E3C58();
  }

  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v19 = *(v0 + 20);
  if (qword_1EC2B5500 != -1)
  {
    OUTLINED_FUNCTION_933(&qword_1EC2B5500);
  }

  *(v11 + v19) = qword_1EC2B9A50;

LABEL_10:
  OUTLINED_FUNCTION_713();
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.union.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_74();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(v5);
  OUTLINED_FUNCTION_215_1();
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_425_0();
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.OneOf_TypeInstanceKind(0);
  OUTLINED_FUNCTION_46_2(v6);
  if (v7)
  {
    sub_1C8778ED8(v0, &qword_1EC2B60B0, &qword_1C8BE6D60);
  }

  else
  {
    OUTLINED_FUNCTION_184();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 3)
    {
      OUTLINED_FUNCTION_356_0();
      OUTLINED_FUNCTION_121();
      return sub_1C88E3EC4();
    }

    OUTLINED_FUNCTION_30_8();
    sub_1C88E3C58();
  }

  v10 = OUTLINED_FUNCTION_143_1(MEMORY[0x1E69E7CC0]);
  v11 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Union(v10);
  return OUTLINED_FUNCTION_260_1(v11);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.union.setter()
{
  OUTLINED_FUNCTION_31_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60B0, &qword_1C8BE6D60);
  OUTLINED_FUNCTION_80(v1);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v2);
  v3 = OUTLINED_FUNCTION_170();
  v4 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(v3);
  if ((OUTLINED_FUNCTION_41_1(v4) & 1) == 0)
  {
    type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance._StorageClass(0);
    OUTLINED_FUNCTION_218_2();
    swift_allocObject();
    OUTLINED_FUNCTION_61_6();
    sub_1C89681C4();
    OUTLINED_FUNCTION_40(v5);
  }

  OUTLINED_FUNCTION_356_0();
  OUTLINED_FUNCTION_196_0();
  sub_1C88E3EC4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.OneOf_TypeInstanceKind(0);
  OUTLINED_FUNCTION_367_0();
  swift_storeEnumTagMultiPayload();
  v6 = OUTLINED_FUNCTION_128_2();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v0);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_200();
  sub_1C89CBD78();
  return swift_endAccess();
}

uint64_t sub_1C8902D54()
{
  OUTLINED_FUNCTION_794();
  v0 = OUTLINED_FUNCTION_143_1(MEMORY[0x1E69E7CC0]);
  v2 = v1(v0);
  return OUTLINED_FUNCTION_260_1(v2);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.union.modify()
{
  OUTLINED_FUNCTION_124();
  v1 = OUTLINED_FUNCTION_41_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_14_2(v2);
  v3 = OUTLINED_FUNCTION_230();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_376(v7);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Union(v8);
  OUTLINED_FUNCTION_40_2();
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_714(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_375_0(v13);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(v14);
  OUTLINED_FUNCTION_215_1();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_442_0();
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.OneOf_TypeInstanceKind(0);
  OUTLINED_FUNCTION_70_4(v15);
  if (v16)
  {
    v17 = sub_1C8778ED8(v0, &qword_1EC2B60B0, &qword_1C8BE6D60);
LABEL_7:
    *v10 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_1043(v17);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_254_0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 3)
  {
    OUTLINED_FUNCTION_30_8();
    v17 = sub_1C88E3C58();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_356_0();
  OUTLINED_FUNCTION_253();
  sub_1C88E3EC4();
LABEL_8:
  OUTLINED_FUNCTION_713();
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.restricted.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_74();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(v5);
  OUTLINED_FUNCTION_215_1();
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_425_0();
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.OneOf_TypeInstanceKind(0);
  OUTLINED_FUNCTION_46_2(v6);
  if (v7)
  {
    sub_1C8778ED8(v0, &qword_1EC2B60B0, &qword_1C8BE6D60);
  }

  else
  {
    OUTLINED_FUNCTION_184();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 4)
    {
      OUTLINED_FUNCTION_355();
      OUTLINED_FUNCTION_121();
      return sub_1C88E3EC4();
    }

    OUTLINED_FUNCTION_30_8();
    sub_1C88E3C58();
  }

  v10 = OUTLINED_FUNCTION_143_1(MEMORY[0x1E69E7CC0]);
  v11 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Restricted(v10);
  OUTLINED_FUNCTION_702(v11);
  v12 = OUTLINED_FUNCTION_887();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier(v12);
  v13 = OUTLINED_FUNCTION_27_1();
  return __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.restricted.setter()
{
  OUTLINED_FUNCTION_31_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60B0, &qword_1C8BE6D60);
  OUTLINED_FUNCTION_80(v1);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v2);
  v3 = OUTLINED_FUNCTION_170();
  v4 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(v3);
  if ((OUTLINED_FUNCTION_41_1(v4) & 1) == 0)
  {
    type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance._StorageClass(0);
    OUTLINED_FUNCTION_218_2();
    swift_allocObject();
    OUTLINED_FUNCTION_61_6();
    sub_1C89681C4();
    OUTLINED_FUNCTION_40(v5);
  }

  OUTLINED_FUNCTION_355();
  OUTLINED_FUNCTION_196_0();
  sub_1C88E3EC4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.OneOf_TypeInstanceKind(0);
  OUTLINED_FUNCTION_367_0();
  swift_storeEnumTagMultiPayload();
  v6 = OUTLINED_FUNCTION_128_2();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v0);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_200();
  sub_1C89CBD78();
  return swift_endAccess();
}

uint64_t sub_1C8903158()
{
  OUTLINED_FUNCTION_785();
  *v1 = MEMORY[0x1E69E7CC0];
  v3 = v2(0);
  OUTLINED_FUNCTION_1039(v3);
  v4 = OUTLINED_FUNCTION_886();
  v0(v4);
  v5 = OUTLINED_FUNCTION_257_2();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.restricted.modify()
{
  OUTLINED_FUNCTION_124();
  v1 = OUTLINED_FUNCTION_41_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_14_2(v2);
  v3 = OUTLINED_FUNCTION_230();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_376(v7);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Restricted(v8);
  OUTLINED_FUNCTION_40_2();
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_714(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_375_0(v13);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(v14);
  OUTLINED_FUNCTION_215_1();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_442_0();
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.OneOf_TypeInstanceKind(0);
  OUTLINED_FUNCTION_70_4(v15);
  if (v16)
  {
    v17 = sub_1C8778ED8(v0, &qword_1EC2B60B0, &qword_1C8BE6D60);
LABEL_7:
    *v10 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_1043(v17);
    OUTLINED_FUNCTION_411();
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_254_0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 4)
  {
    OUTLINED_FUNCTION_30_8();
    v17 = sub_1C88E3C58();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_355();
  OUTLINED_FUNCTION_253();
  sub_1C88E3EC4();
LABEL_8:
  OUTLINED_FUNCTION_713();
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.deferred.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_220();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_74();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(v7);
  OUTLINED_FUNCTION_215_1();
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_425_0();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.OneOf_TypeInstanceKind(0);
  OUTLINED_FUNCTION_46_2(v8);
  if (v9)
  {
    sub_1C8778ED8(v1, &qword_1EC2B60B0, &qword_1C8BE6D60);
  }

  else
  {
    OUTLINED_FUNCTION_184();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 5)
    {
      OUTLINED_FUNCTION_354();
      OUTLINED_FUNCTION_121();
      return sub_1C88E3EC4();
    }

    OUTLINED_FUNCTION_30_8();
    sub_1C88E3C58();
  }

  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v12 = *(type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Deferred(0) + 20);
  if (qword_1EC2B5538 != -1)
  {
    OUTLINED_FUNCTION_931(&qword_1EC2B5538);
  }

  *(a1 + v12) = qword_1EC2B9AD0;
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.deferred.setter()
{
  OUTLINED_FUNCTION_31_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60B0, &qword_1C8BE6D60);
  OUTLINED_FUNCTION_80(v1);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v2);
  v3 = OUTLINED_FUNCTION_170();
  v4 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(v3);
  if ((OUTLINED_FUNCTION_41_1(v4) & 1) == 0)
  {
    type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance._StorageClass(0);
    OUTLINED_FUNCTION_218_2();
    swift_allocObject();
    OUTLINED_FUNCTION_61_6();
    sub_1C89681C4();
    OUTLINED_FUNCTION_40(v5);
  }

  OUTLINED_FUNCTION_354();
  OUTLINED_FUNCTION_196_0();
  sub_1C88E3EC4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.OneOf_TypeInstanceKind(0);
  OUTLINED_FUNCTION_367_0();
  swift_storeEnumTagMultiPayload();
  v6 = OUTLINED_FUNCTION_128_2();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v0);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_200();
  sub_1C89CBD78();
  return swift_endAccess();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.deferred.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_14_2(v3);
  v4 = OUTLINED_FUNCTION_230();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_376(v8);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Deferred(v9);
  OUTLINED_FUNCTION_40_2();
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_714(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_375_0(v14);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(v15);
  OUTLINED_FUNCTION_215_1();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_442_0();
  v16 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.OneOf_TypeInstanceKind(0);
  OUTLINED_FUNCTION_70_4(v16);
  if (v17)
  {
    sub_1C8778ED8(v1, &qword_1EC2B60B0, &qword_1C8BE6D60);
  }

  else
  {
    OUTLINED_FUNCTION_254_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 5)
    {
      OUTLINED_FUNCTION_354();
      OUTLINED_FUNCTION_253();
      sub_1C88E3EC4();
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_30_8();
    sub_1C88E3C58();
  }

  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v19 = *(v0 + 20);
  if (qword_1EC2B5538 != -1)
  {
    OUTLINED_FUNCTION_931(&qword_1EC2B5538);
  }

  *(v11 + v19) = qword_1EC2B9AD0;

LABEL_10:
  OUTLINED_FUNCTION_713();
  OUTLINED_FUNCTION_125();
}

void static Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.OneOf_TypeInstanceKind.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v7 = OUTLINED_FUNCTION_987(v5, v6);
  v51 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Deferred(v7);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_9_0();
  v10 = OUTLINED_FUNCTION_546(v9);
  v11 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Restricted(v10);
  v12 = OUTLINED_FUNCTION_80(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_9_0();
  v13 = OUTLINED_FUNCTION_86();
  v47 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Union(v13);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_25_7(v15, v47);
  v50 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Optional(0);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_115_3(v17, v48);
  v49 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(0);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_9_0();
  v19 = OUTLINED_FUNCTION_86();
  v20 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier(v19);
  v21 = OUTLINED_FUNCTION_80(v20);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_33();
  v22 = OUTLINED_FUNCTION_402();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.OneOf_TypeInstanceKind(v22);
  OUTLINED_FUNCTION_48_5();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_10_0();
  v52 = v24;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_537();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_538();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_734();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_576();
  MEMORY[0x1EEE9AC00](v29);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAC28, &qword_1C8BFAAA8);
  OUTLINED_FUNCTION_80(v30);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_112_0();
  sub_1C88E4144();
  sub_1C88E4144();
  OUTLINED_FUNCTION_312();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_129_3();
      sub_1C88E4144();
      if (OUTLINED_FUNCTION_1108() != 1)
      {
        OUTLINED_FUNCTION_11_15();
        goto LABEL_28;
      }

      OUTLINED_FUNCTION_2_20();
      OUTLINED_FUNCTION_1140();
      sub_1C88E3EC4();
      if (*(v2 + *(v49 + 20)) == *(v3 + *(v49 + 20)) || (, , OUTLINED_FUNCTION_92_0(), sub_1C896B338(), OUTLINED_FUNCTION_985(), , , (v1 & 1) != 0))
      {
        sub_1C8BD49FC();
        OUTLINED_FUNCTION_1_14();
        sub_1C8776818(v41, v42, MEMORY[0x1E69AAC10]);
        OUTLINED_FUNCTION_299_0();
        sub_1C8BD517C();
      }

      OUTLINED_FUNCTION_353_0();
      sub_1C88E3C58();
      goto LABEL_34;
    case 2u:
      OUTLINED_FUNCTION_129_3();
      sub_1C88E4144();
      if (OUTLINED_FUNCTION_1108() != 2)
      {
        goto LABEL_28;
      }

      OUTLINED_FUNCTION_358_0();
      OUTLINED_FUNCTION_1131();
      sub_1C88E3EC4();
      if (*(v4 + *(v50 + 20)) == *(v2 + *(v50 + 20)) || (, , v34 = OUTLINED_FUNCTION_92_0(), sub_1C896C360(v34, v35), OUTLINED_FUNCTION_985(), , , (v1 & 1) != 0))
      {
        sub_1C8BD49FC();
        OUTLINED_FUNCTION_1_14();
        sub_1C8776818(v36, v37, MEMORY[0x1E69AAC10]);
        OUTLINED_FUNCTION_240();
        sub_1C8BD517C();
      }

      OUTLINED_FUNCTION_874();
      sub_1C88E3C58();
      goto LABEL_34;
    case 3u:
      OUTLINED_FUNCTION_129_3();
      sub_1C88E4144();
      if (OUTLINED_FUNCTION_1108() != 3)
      {
        OUTLINED_FUNCTION_703();
        goto LABEL_28;
      }

      OUTLINED_FUNCTION_356_0();
      sub_1C88E3EC4();
      sub_1C87DA628();
      if (v38)
      {
        sub_1C8BD49FC();
        OUTLINED_FUNCTION_1_14();
        sub_1C8776818(v39, v40, MEMORY[0x1E69AAC10]);
        sub_1C8BD517C();
      }

      OUTLINED_FUNCTION_872();
      sub_1C88E3C58();
      goto LABEL_34;
    case 4u:
      OUTLINED_FUNCTION_129_3();
      sub_1C88E4144();
      if (OUTLINED_FUNCTION_1108() != 4)
      {
        goto LABEL_28;
      }

      OUTLINED_FUNCTION_355();
      sub_1C88E3EC4();
      v32 = OUTLINED_FUNCTION_260_0();
      static Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Restricted.== infix(_:_:)(v32, v33);
      sub_1C88E3C58();
      OUTLINED_FUNCTION_259();
      goto LABEL_34;
    case 5u:
      OUTLINED_FUNCTION_129_3();
      sub_1C88E4144();
      if (OUTLINED_FUNCTION_1108() != 5)
      {
        goto LABEL_28;
      }

      OUTLINED_FUNCTION_354();
      OUTLINED_FUNCTION_1035();
      sub_1C88E3EC4();
      if (*(v52 + *(v51 + 20)) == *(v2 + *(v51 + 20)) || (, , v43 = OUTLINED_FUNCTION_92_0(), sub_1C896E018(v43, v44), OUTLINED_FUNCTION_985(), , , (v1 & 1) != 0))
      {
        sub_1C8BD49FC();
        OUTLINED_FUNCTION_1_14();
        sub_1C8776818(v45, v46, MEMORY[0x1E69AAC10]);
        OUTLINED_FUNCTION_258();
        sub_1C8BD517C();
      }

      OUTLINED_FUNCTION_871();
      sub_1C88E3C58();
      goto LABEL_34;
    default:
      OUTLINED_FUNCTION_129_3();
      sub_1C88E4144();
      if (OUTLINED_FUNCTION_1108())
      {
        OUTLINED_FUNCTION_41_8();
LABEL_28:
        sub_1C88E3C58();
        sub_1C8778ED8(v0, &qword_1EC2BAC28, &qword_1C8BFAAA8);
      }

      else
      {
        OUTLINED_FUNCTION_8_16();
        sub_1C88E3EC4();
        OUTLINED_FUNCTION_522();
        static Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.== infix(_:_:)();
        OUTLINED_FUNCTION_828();
        sub_1C88E3C58();
        OUTLINED_FUNCTION_307();
LABEL_34:
        sub_1C88E3C58();
        OUTLINED_FUNCTION_30_8();
        sub_1C88E3C58();
      }

      OUTLINED_FUNCTION_1069();
      OUTLINED_FUNCTION_125();
      return;
  }
}

void static Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v1 = OUTLINED_FUNCTION_84();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.OneOf_TypeIdentifierKind(v1);
  OUTLINED_FUNCTION_49_3();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_18_4();
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_103();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6178, &qword_1C8BFAAB0);
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
      sub_1C8778ED8(v0, &qword_1EC2B6170, &unk_1C8BE6E10);
LABEL_12:
      type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier(0);
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
    OUTLINED_FUNCTION_248_3();
    sub_1C88E3C58();
LABEL_9:
    sub_1C8778ED8(v0, &qword_1EC2B6178, &qword_1C8BFAAB0);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_705();
  OUTLINED_FUNCTION_168_0();
  static Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.OneOf_TypeIdentifierKind.== infix(_:_:)();
  v12 = v11;
  sub_1C88E3C58();
  OUTLINED_FUNCTION_178_2();
  sub_1C88E3C58();
  sub_1C8778ED8(v0, &qword_1EC2B6170, &unk_1C8BE6E10);
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

void sub_1C89041C0()
{
  OUTLINED_FUNCTION_124();
  v28 = v3;
  v5 = v4;
  v7 = v6;
  v8 = OUTLINED_FUNCTION_1085();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier(v8);
  OUTLINED_FUNCTION_229_2();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_9_0();
  v10 = OUTLINED_FUNCTION_890();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
  OUTLINED_FUNCTION_80(v12);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_212();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2BAAB8, &qword_1C8BFA9D0) - 8;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v15);
  v16 = OUTLINED_FUNCTION_27_0();
  v17 = v5(v16);
  v18 = *(v14 + 56);
  OUTLINED_FUNCTION_790();
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_790();
  sub_1C89CBE2C();
  v19 = OUTLINED_FUNCTION_213();
  if (__swift_getEnumTagSinglePayload(v19, v20, v2) == 1)
  {
    if (__swift_getEnumTagSinglePayload(v1 + v18, 1, v2) == 1)
    {
      sub_1C8778ED8(v1, &qword_1EC2BAAB0, &qword_1C8BFA9C8);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  OUTLINED_FUNCTION_230();
  sub_1C89CBE2C();
  if (__swift_getEnumTagSinglePayload(v1 + v18, 1, v2) == 1)
  {
    sub_1C88E3C58();
LABEL_6:
    sub_1C8778ED8(v1, &unk_1EC2BAAB8, &qword_1C8BFA9D0);
LABEL_10:
    v27 = 0;
    goto LABEL_11;
  }

  sub_1C88E3EC4();
  OUTLINED_FUNCTION_91();
  static Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.== infix(_:_:)();
  OUTLINED_FUNCTION_828();
  sub_1C88E3C58();
  OUTLINED_FUNCTION_104_0();
  sub_1C88E3C58();
  sub_1C8778ED8(v1, &qword_1EC2BAAB0, &qword_1C8BFA9C8);
  if ((v18 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  if ((v28(*v0, *v7) & 1) == 0)
  {
    goto LABEL_10;
  }

  v21 = *(v17 + 20);
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_1_14();
  sub_1C8776818(v22, v23, MEMORY[0x1E69AAC10]);
  v24 = OUTLINED_FUNCTION_775();
  v27 = OUTLINED_FUNCTION_232_1(v24, v7 + v21, v25, v26);
LABEL_11:
  OUTLINED_FUNCTION_157(v27);
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Optional.value.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_220();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_74();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Optional(v7);
  OUTLINED_FUNCTION_215_1();
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

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Optional.value.setter()
{
  OUTLINED_FUNCTION_31_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60D8, &qword_1C8BE6D88);
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_170();
  v3 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Optional(v2);
  if ((OUTLINED_FUNCTION_41_1(v3) & 1) == 0)
  {
    type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Optional._StorageClass(0);
    OUTLINED_FUNCTION_218_2();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_2();
    v5 = sub_1C896BB08(v4);
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

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Optional.value.modify()
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
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(v9);
  OUTLINED_FUNCTION_48_5();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_38_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_129_2(v13);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Optional(v14);
  OUTLINED_FUNCTION_215_1();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_470();
  OUTLINED_FUNCTION_0_0();
  if (v15)
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

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Optional.hasValue.getter()
{
  v0 = OUTLINED_FUNCTION_12();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_80(v2);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_74();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Optional(v4);
  OUTLINED_FUNCTION_215_1();
  OUTLINED_FUNCTION_157_2();
  OUTLINED_FUNCTION_468_0();
  v5 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(0);
  OUTLINED_FUNCTION_10(v5);
  return OUTLINED_FUNCTION_268_1();
}

Swift::Void __swiftcall Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Optional.clearValue()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60D8, &qword_1C8BE6D88);
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_170();
  v3 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Optional(v2);
  if ((OUTLINED_FUNCTION_436(v3) & 1) == 0)
  {
    type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Optional._StorageClass(0);
    OUTLINED_FUNCTION_218_2();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_2();
    v5 = sub_1C896BB08(v4);
    OUTLINED_FUNCTION_264_1(v5);
  }

  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(0);
  OUTLINED_FUNCTION_156_2(v6);
  OUTLINED_FUNCTION_155_2();
  OUTLINED_FUNCTION_200();
  sub_1C89CBD78();
  swift_endAccess();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Optional.defaultValue.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_220();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_74();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Optional(v7);
  OUTLINED_FUNCTION_215_1();
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_425_0();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue(0);
  OUTLINED_FUNCTION_46_2(v8);
  if (v9)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    if (qword_1EC2B5360 != -1)
    {
      OUTLINED_FUNCTION_59_7(&qword_1EC2B5360);
    }

    result = OUTLINED_FUNCTION_263_1();
    if (a1 != 1)
    {
      return sub_1C8778ED8(v1, &qword_1EC2BAC38, &qword_1C8BFAAB8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_16();
    OUTLINED_FUNCTION_121();
    return sub_1C88E3EC4();
  }

  return result;
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Optional.defaultValue.setter()
{
  OUTLINED_FUNCTION_31_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAC38, &qword_1C8BFAAB8);
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_170();
  v3 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Optional(v2);
  if ((OUTLINED_FUNCTION_41_1(v3) & 1) == 0)
  {
    type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Optional._StorageClass(0);
    OUTLINED_FUNCTION_218_2();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_2();
    v5 = sub_1C896BB08(v4);
    OUTLINED_FUNCTION_40(v5);
  }

  OUTLINED_FUNCTION_5_16();
  OUTLINED_FUNCTION_196_0();
  sub_1C88E3EC4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue(0);
  v6 = OUTLINED_FUNCTION_128_2();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_200();
  sub_1C89CBD78();
  return swift_endAccess();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Optional.defaultValue.modify()
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
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue(v9);
  OUTLINED_FUNCTION_48_5();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_38_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_129_2(v13);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Optional(v14);
  OUTLINED_FUNCTION_215_1();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_470();
  OUTLINED_FUNCTION_0_0();
  if (v15)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    if (qword_1EC2B5360 != -1)
    {
      OUTLINED_FUNCTION_59_7(&qword_1EC2B5360);
    }

    OUTLINED_FUNCTION_259_1();
    if (v0 != 1)
    {
      sub_1C8778ED8(v1, &qword_1EC2BAC38, &qword_1C8BFAAB8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_16();
    OUTLINED_FUNCTION_168_0();
    sub_1C88E3EC4();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Optional.hasDefaultValue.getter()
{
  v0 = OUTLINED_FUNCTION_12();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_80(v2);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_74();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Optional(v4);
  OUTLINED_FUNCTION_215_1();
  OUTLINED_FUNCTION_157_2();
  OUTLINED_FUNCTION_468_0();
  v5 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue(0);
  OUTLINED_FUNCTION_10(v5);
  return OUTLINED_FUNCTION_268_1();
}

Swift::Void __swiftcall Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Optional.clearDefaultValue()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAC38, &qword_1C8BFAAB8);
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_170();
  v3 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Optional(v2);
  if ((OUTLINED_FUNCTION_436(v3) & 1) == 0)
  {
    type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Optional._StorageClass(0);
    OUTLINED_FUNCTION_218_2();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_2();
    v5 = sub_1C896BB08(v4);
    OUTLINED_FUNCTION_264_1(v5);
  }

  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue(0);
  OUTLINED_FUNCTION_156_2(v6);
  OUTLINED_FUNCTION_155_2();
  OUTLINED_FUNCTION_200();
  sub_1C89CBD78();
  swift_endAccess();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Union.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Union(v0);
  return OUTLINED_FUNCTION_242();
}

uint64_t sub_1C8904F10()
{
  OUTLINED_FUNCTION_526();
  v2 = OUTLINED_FUNCTION_299_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_80(v4);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_74();
  v7 = v0(v6);
  OUTLINED_FUNCTION_329_0(v7);
  OUTLINED_FUNCTION_382();
  sub_1C89CBE2C();
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier(0);
  OUTLINED_FUNCTION_46_2(v8);
  if (v9)
  {
    v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.OneOf_TypeIdentifierKind(0);
    OUTLINED_FUNCTION_107_1(v10);
    result = OUTLINED_FUNCTION_1_0();
    if (!v9)
    {
      return sub_1C8778ED8(v1, &qword_1EC2BAAB0, &qword_1C8BFA9C8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_121();
    return sub_1C88E3EC4();
  }

  return result;
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Restricted.identifier.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Restricted(v1);
  sub_1C8778ED8(v0 + *(v2 + 24), &qword_1EC2BAAB0, &qword_1C8BFA9C8);
  OUTLINED_FUNCTION_8_16();
  OUTLINED_FUNCTION_200();
  sub_1C88E3EC4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Restricted.identifier.modify()
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
  v9 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier(v8);
  OUTLINED_FUNCTION_47_3(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_243(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_168(v13);
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Restricted(v14);
  OUTLINED_FUNCTION_360_0(*(v15 + 24));
  OUTLINED_FUNCTION_5_6();
  if (v16)
  {
    v17 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.OneOf_TypeIdentifierKind(0);
    OUTLINED_FUNCTION_81_1(v17);
    OUTLINED_FUNCTION_5_6();
    if (!v16)
    {
      sub_1C8778ED8(v0, &qword_1EC2BAAB0, &qword_1C8BFA9C8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_16();
    OUTLINED_FUNCTION_184();
    sub_1C88E3EC4();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_260();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Restricted.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Restricted(v0);
  return OUTLINED_FUNCTION_242();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Deferred.identifier.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_220();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_74();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Deferred(v7);
  OUTLINED_FUNCTION_215_1();
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

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Deferred.identifier.setter()
{
  OUTLINED_FUNCTION_31_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60D8, &qword_1C8BE6D88);
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_170();
  v3 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Deferred(v2);
  if ((OUTLINED_FUNCTION_41_1(v3) & 1) == 0)
  {
    type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Deferred._StorageClass(0);
    OUTLINED_FUNCTION_218_2();
    swift_allocObject();
    OUTLINED_FUNCTION_522_0();
    sub_1C89681C4();
    OUTLINED_FUNCTION_40(v4);
  }

  OUTLINED_FUNCTION_2_20();
  OUTLINED_FUNCTION_196_0();
  sub_1C88E3EC4();
  OUTLINED_FUNCTION_554();
  v5 = OUTLINED_FUNCTION_128_2();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_200();
  sub_1C89CBD78();
  return swift_endAccess();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Deferred.identifier.modify()
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
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(v9);
  OUTLINED_FUNCTION_48_5();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_38_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_129_2(v13);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Deferred(v14);
  OUTLINED_FUNCTION_215_1();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_470();
  OUTLINED_FUNCTION_0_0();
  if (v15)
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

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Deferred.hasIdentifier.getter()
{
  v0 = OUTLINED_FUNCTION_12();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_80(v2);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_74();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Deferred(v4);
  OUTLINED_FUNCTION_215_1();
  OUTLINED_FUNCTION_157_2();
  OUTLINED_FUNCTION_468_0();
  v5 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(0);
  OUTLINED_FUNCTION_10(v5);
  return OUTLINED_FUNCTION_268_1();
}

Swift::Void __swiftcall Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Deferred.clearIdentifier()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60D8, &qword_1C8BE6D88);
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_170();
  v3 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Deferred(v2);
  if ((OUTLINED_FUNCTION_436(v3) & 1) == 0)
  {
    type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Deferred._StorageClass(0);
    OUTLINED_FUNCTION_218_2();
    swift_allocObject();
    OUTLINED_FUNCTION_522_0();
    sub_1C89681C4();
    OUTLINED_FUNCTION_264_1(v4);
  }

  v5 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(0);
  OUTLINED_FUNCTION_156_2(v5);
  OUTLINED_FUNCTION_155_2();
  OUTLINED_FUNCTION_200();
  sub_1C89CBD78();
  swift_endAccess();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.inSet.getter()
{
  OUTLINED_FUNCTION_93_1();
  v1 = OUTLINED_FUNCTION_253();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_122_2();
  v5 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.OneOf_RestrictionContextKind(0);
  OUTLINED_FUNCTION_5_8(v5);
  if (v6)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6098, &qword_1C8BFAAC0);
LABEL_6:
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet(0);
    v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet(0);
    OUTLINED_FUNCTION_447(v8);
    v9 = OUTLINED_FUNCTION_887();
    type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Query.PredicateTemplates(v9);
    v10 = OUTLINED_FUNCTION_27_1();
    return __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  }

  OUTLINED_FUNCTION_92_0();
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1C88E3C58();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_195_2();
  OUTLINED_FUNCTION_5_0();
  return sub_1C88E3EC4();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.inSet.setter()
{
  sub_1C8778ED8(v0, &qword_1EC2B6098, &qword_1C8BFAAC0);
  OUTLINED_FUNCTION_195_2();
  OUTLINED_FUNCTION_218();
  sub_1C88E3EC4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.OneOf_RestrictionContextKind(0);
  OUTLINED_FUNCTION_48_4();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_34_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_1C89059D0()
{
  OUTLINED_FUNCTION_12_0();
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v1(0);
  v2 = OUTLINED_FUNCTION_716();
  v0(v2);
  OUTLINED_FUNCTION_5();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Query.PredicateTemplates(0);
  OUTLINED_FUNCTION_5();

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.inSet.modify()
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
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet(v8);
  OUTLINED_FUNCTION_40_2();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_110_0(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_232_2(v12);
  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.OneOf_RestrictionContextKind(0);
  OUTLINED_FUNCTION_35_5(v13);
  if (v14)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6098, &qword_1C8BFAAC0);
  }

  else
  {
    OUTLINED_FUNCTION_253();
    if (!swift_getEnumCaseMultiPayload())
    {
      OUTLINED_FUNCTION_195_2();
      OUTLINED_FUNCTION_254_0();
      sub_1C88E3EC4();
      goto LABEL_7;
    }

    sub_1C88E3C58();
  }

  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet(0);
  OUTLINED_FUNCTION_653();
  OUTLINED_FUNCTION_5();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
  v20 = OUTLINED_FUNCTION_886();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Query.PredicateTemplates(v20);
  v21 = OUTLINED_FUNCTION_257_2();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
LABEL_7:
  OUTLINED_FUNCTION_260();
}

void sub_1C8905BA4()
{
  OUTLINED_FUNCTION_32_6();
  if (v5)
  {
    OUTLINED_FUNCTION_184();
    sub_1C88E4144();
    sub_1C8778ED8(v4, &qword_1EC2B6098, &qword_1C8BFAAC0);
    OUTLINED_FUNCTION_195_2();
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
    sub_1C8778ED8(v4, &qword_1EC2B6098, &qword_1C8BFAAC0);
    OUTLINED_FUNCTION_195_2();
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

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.representableAs.getter()
{
  OUTLINED_FUNCTION_93_1();
  v1 = OUTLINED_FUNCTION_253();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_122_2();
  v5 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.OneOf_RestrictionContextKind(0);
  OUTLINED_FUNCTION_5_8(v5);
  if (v6)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6098, &qword_1C8BFAAC0);
  }

  else
  {
    OUTLINED_FUNCTION_92_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_194_0();
      OUTLINED_FUNCTION_5_0();
      return sub_1C88E3EC4();
    }

    sub_1C88E3C58();
  }

  v9 = OUTLINED_FUNCTION_143_1(MEMORY[0x1E69E7CC0]);
  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.RepresentableAs(v9);
  return OUTLINED_FUNCTION_260_1(v10);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.representableAs.setter()
{
  sub_1C8778ED8(v0, &qword_1EC2B6098, &qword_1C8BFAAC0);
  OUTLINED_FUNCTION_194_0();
  OUTLINED_FUNCTION_218();
  sub_1C88E3EC4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.OneOf_RestrictionContextKind(0);
  OUTLINED_FUNCTION_48_4();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_34_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.representableAs.modify()
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
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.RepresentableAs(v8);
  OUTLINED_FUNCTION_40_2();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_110_0(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_232_2(v12);
  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.OneOf_RestrictionContextKind(0);
  OUTLINED_FUNCTION_35_5(v13);
  if (v14)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6098, &qword_1C8BFAAC0);
LABEL_7:
    OUTLINED_FUNCTION_779(MEMORY[0x1E69E7CC0]);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_253();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_194_0();
  OUTLINED_FUNCTION_254_0();
  sub_1C88E3EC4();
LABEL_8:
  OUTLINED_FUNCTION_260();
}

void sub_1C8905F48()
{
  OUTLINED_FUNCTION_32_6();
  if (v5)
  {
    OUTLINED_FUNCTION_184();
    sub_1C88E4144();
    sub_1C8778ED8(v4, &qword_1EC2B6098, &qword_1C8BFAAC0);
    OUTLINED_FUNCTION_194_0();
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
    sub_1C8778ED8(v4, &qword_1EC2B6098, &qword_1C8BFAAC0);
    OUTLINED_FUNCTION_194_0();
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

void Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.personReachableAs.getter()
{
  OUTLINED_FUNCTION_93_1();
  v1 = OUTLINED_FUNCTION_253();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_122_2();
  v5 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.OneOf_RestrictionContextKind(0);
  OUTLINED_FUNCTION_5_8(v5);
  if (v6)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6098, &qword_1C8BFAAC0);
LABEL_7:
    OUTLINED_FUNCTION_990();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_92_0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 2)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_800();
LABEL_8:
  OUTLINED_FUNCTION_1079(v8);
}

uint64_t sub_1C8906194(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  v7 = *a1;
  v8 = *(a1 + 8);
  sub_1C8778ED8(v5, a2, a3);
  *v5 = v7;
  *(v5 + 8) = v8;
  v9 = a4(0);
  OUTLINED_FUNCTION_92_0();
  swift_storeEnumTagMultiPayload();
  v10 = OUTLINED_FUNCTION_297_0();

  return __swift_storeEnumTagSinglePayload(v10, v11, v12, v9);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.personReachableAs.modify()
{
  v2 = OUTLINED_FUNCTION_65_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_421_0(v3);
  v4 = OUTLINED_FUNCTION_299_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_291_1(v8);
  v9 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.OneOf_RestrictionContextKind(0);
  OUTLINED_FUNCTION_84_3(v9);
  if (v10)
  {
    sub_1C8778ED8(v1, &qword_1EC2B6098, &qword_1C8BFAAC0);
LABEL_7:
    OUTLINED_FUNCTION_990();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_271();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 2)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_1147();
LABEL_8:
  *v0 = v12;
  *(v0 + 8) = v13;
  return OUTLINED_FUNCTION_687();
}

void sub_1C8906320()
{
  OUTLINED_FUNCTION_261();
  v1 = (*v0)[3];
  v2 = (*v0)[2];
  v3 = **v0;
  v4 = *(*v0 + 8);
  sub_1C8778ED8(v2, v5, v6);
  *v2 = v3;
  *(v2 + 8) = v4;
  OUTLINED_FUNCTION_168_0();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_319_0();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  free(v1);
  OUTLINED_FUNCTION_260();

  free(v11);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.dateExpressibleAs.modify()
{
  v2 = OUTLINED_FUNCTION_65_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_421_0(v3);
  v4 = OUTLINED_FUNCTION_299_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_291_1(v8);
  v9 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.OneOf_RestrictionContextKind(0);
  OUTLINED_FUNCTION_84_3(v9);
  if (v10)
  {
    sub_1C8778ED8(v1, &qword_1EC2B6098, &qword_1C8BFAAC0);
LABEL_7:
    OUTLINED_FUNCTION_990();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_271();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 3)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_1147();
LABEL_8:
  *v0 = v12;
  *(v0 + 8) = v13;
  return OUTLINED_FUNCTION_687();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.textTypedWith.getter()
{
  OUTLINED_FUNCTION_93_1();
  v2 = OUTLINED_FUNCTION_253();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_80(v4);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_122_2();
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.OneOf_RestrictionContextKind(0);
  OUTLINED_FUNCTION_5_8(v6);
  if (v7)
  {
    sub_1C8778ED8(v1, &qword_1EC2B6098, &qword_1C8BFAAC0);
  }

  else
  {
    OUTLINED_FUNCTION_92_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 4)
    {
      OUTLINED_FUNCTION_192_2();
      OUTLINED_FUNCTION_5_0();
      return sub_1C88E3EC4();
    }

    sub_1C88E3C58();
  }

  *v0 = 0;
  *(v0 + 2) = 0;
  *(v0 + 8) = 0;
  return OUTLINED_FUNCTION_1044();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.textTypedWith.setter()
{
  sub_1C8778ED8(v0, &qword_1EC2B6098, &qword_1C8BFAAC0);
  OUTLINED_FUNCTION_192_2();
  OUTLINED_FUNCTION_218();
  sub_1C88E3EC4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.OneOf_RestrictionContextKind(0);
  OUTLINED_FUNCTION_48_4();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_34_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.TextTypedWith.init()@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 2) = 0;
  *(a2 + 8) = 0;
  return OUTLINED_FUNCTION_1044();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.textTypedWith.modify()
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
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.TextTypedWith(v8);
  OUTLINED_FUNCTION_40_2();
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_110_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_232_2(v13);
  v14 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.OneOf_RestrictionContextKind(0);
  OUTLINED_FUNCTION_35_5(v14);
  if (v15)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6098, &qword_1C8BFAAC0);
LABEL_7:
    *v10 = 0;
    *(v10 + 2) = 0;
    *(v10 + 8) = 0;
    *(v10 + 16) = 1;
    *(v10 + 24) = 0;
    *(v10 + 32) = 1;
    *(v10 + 40) = 0;
    *(v10 + 48) = 1;
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

  OUTLINED_FUNCTION_192_2();
  OUTLINED_FUNCTION_254_0();
  sub_1C88E3EC4();
LABEL_8:
  OUTLINED_FUNCTION_260();
}

void sub_1C89067F4()
{
  OUTLINED_FUNCTION_32_6();
  if (v5)
  {
    OUTLINED_FUNCTION_184();
    sub_1C88E4144();
    sub_1C8778ED8(v4, &qword_1EC2B6098, &qword_1C8BFAAC0);
    OUTLINED_FUNCTION_192_2();
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
    sub_1C8778ED8(v4, &qword_1EC2B6098, &qword_1C8BFAAC0);
    OUTLINED_FUNCTION_192_2();
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

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext(v0);
  return OUTLINED_FUNCTION_242();
}

void static Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.OneOf_RestrictionContextKind.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v7 = OUTLINED_FUNCTION_987(v5, v6);
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.TextTypedWith(v7);
  v9 = OUTLINED_FUNCTION_80(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_9_0();
  v11 = OUTLINED_FUNCTION_546(v10);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.RepresentableAs(v11);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_9_0();
  v14 = OUTLINED_FUNCTION_507_0(v13);
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet(v14);
  v16 = OUTLINED_FUNCTION_80(v15);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_51_1();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.OneOf_RestrictionContextKind(0);
  OUTLINED_FUNCTION_49_3();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_204();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_575();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_436_0();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_576();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_234_0();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAC50, &qword_1C8BFAAC8);
  OUTLINED_FUNCTION_80(v22);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_112_0();
  v25 = (v0 + *(v24 + 56));
  sub_1C88E4144();
  sub_1C88E4144();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_230_1();
      sub_1C88E4144();
      OUTLINED_FUNCTION_215_0();
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_15;
      }

      OUTLINED_FUNCTION_194_0();
      OUTLINED_FUNCTION_1150();
      sub_1C88E3EC4();
      if (sub_1C87D2814(*v3, *v2))
      {
        OUTLINED_FUNCTION_1124();
        OUTLINED_FUNCTION_1_14();
        v30 = sub_1C8776818(v28, v29, MEMORY[0x1E69AAC10]);
        OUTLINED_FUNCTION_1005(v30);
      }

      OUTLINED_FUNCTION_869();
      sub_1C88E3C58();
      OUTLINED_FUNCTION_300();
      sub_1C88E3C58();
      OUTLINED_FUNCTION_249_1();
      sub_1C88E3C58();
      goto LABEL_20;
    case 2u:
      OUTLINED_FUNCTION_230_1();
      sub_1C88E4144();
      OUTLINED_FUNCTION_215_0();
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_16;
      }

      sub_1C87E4678(*v4, *(v4 + 8), *v25);
      goto LABEL_19;
    case 3u:
      OUTLINED_FUNCTION_230_1();
      sub_1C88E4144();
      OUTLINED_FUNCTION_215_0();
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_16;
      }

      sub_1C87E4678(*v1, *(v1 + 8), *v25);
      goto LABEL_19;
    case 4u:
      OUTLINED_FUNCTION_230_1();
      sub_1C88E4144();
      OUTLINED_FUNCTION_215_0();
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        OUTLINED_FUNCTION_192_2();
        OUTLINED_FUNCTION_1035();
        sub_1C88E3EC4();
        v26 = OUTLINED_FUNCTION_253();
        static Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.TextTypedWith.== infix(_:_:)(v26, v27);
        sub_1C88E3C58();
        OUTLINED_FUNCTION_184();
        goto LABEL_18;
      }

      OUTLINED_FUNCTION_86_1();
      goto LABEL_15;
    default:
      OUTLINED_FUNCTION_230_1();
      sub_1C88E4144();
      OUTLINED_FUNCTION_215_0();
      if (swift_getEnumCaseMultiPayload())
      {
        OUTLINED_FUNCTION_703();
LABEL_15:
        sub_1C88E3C58();
LABEL_16:
        sub_1C8778ED8(v0, &qword_1EC2BAC50, &qword_1C8BFAAC8);
      }

      else
      {
        OUTLINED_FUNCTION_195_2();
        OUTLINED_FUNCTION_88();
        sub_1C88E3EC4();
        static Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.== infix(_:_:)();
        sub_1C88E3C58();
        OUTLINED_FUNCTION_271();
LABEL_18:
        sub_1C88E3C58();
LABEL_19:
        OUTLINED_FUNCTION_249_1();
        sub_1C88E3C58();
      }

LABEL_20:
      OUTLINED_FUNCTION_82_0();
      OUTLINED_FUNCTION_125();
      return;
  }
}

uint64_t static Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.TextTypedWith.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_12_0();
  if (*(v4 + 1) != *(v5 + 1))
  {
    return 0;
  }

  if (*(v3 + 2) != *(v2 + 2))
  {
    return 0;
  }

  if (!sub_1C87E4678(*(v3 + 8), *(v3 + 16), *(v2 + 8)))
  {
    return 0;
  }

  v6 = OUTLINED_FUNCTION_1129();
  if (!sub_1C87E4678(v6, v7, v8) || !sub_1C87E4678(*(v3 + 40), *(v3 + 48), *(v2 + 40)))
  {
    return 0;
  }

  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.TextTypedWith(0);
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_1_14();
  v11 = sub_1C8776818(v9, v10, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_64_0(v11) & 1;
}

uint64_t sub_1C89072D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C89DF358();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1C890733C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C89DF304();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.definition.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_74();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet(v5);
  OUTLINED_FUNCTION_439();
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet(0);
  OUTLINED_FUNCTION_46_2(v6);
  if (v7)
  {
    v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.OneOf_ValueSetKind(0);
    OUTLINED_FUNCTION_107_1(v8);
    OUTLINED_FUNCTION_18_2(dword_1EC2BAC70);
    result = OUTLINED_FUNCTION_1_0();
    if (!v7)
    {
      return sub_1C8778ED8(v0, &qword_1EC2BAC58, &qword_1C8BFAAD0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_102_3();
    OUTLINED_FUNCTION_121();
    return sub_1C88E3EC4();
  }

  return result;
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.definition.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet(v1);
  sub_1C8778ED8(v0 + *(v2 + 20), &qword_1EC2BAC58, &qword_1C8BFAAD0);
  OUTLINED_FUNCTION_102_3();
  OUTLINED_FUNCTION_200();
  sub_1C88E3EC4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.init()()
{
  v1 = OUTLINED_FUNCTION_207();
  v2 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.OneOf_ValueSetKind(v1);
  v3 = OUTLINED_FUNCTION_369_0(v2);
  v4 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet(v3);
  OUTLINED_FUNCTION_702(v4);
  OUTLINED_FUNCTION_18_2(*(v0 + 24));
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.definition.modify()
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
  v9 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet(v8);
  OUTLINED_FUNCTION_29_5(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_243(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_168(v13);
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet(v14);
  OUTLINED_FUNCTION_368(*(v15 + 20));
  OUTLINED_FUNCTION_0_0();
  if (v16)
  {
    v17 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.OneOf_ValueSetKind(0);
    v18 = OUTLINED_FUNCTION_457_0(v17);
    OUTLINED_FUNCTION_1020(v18);
    OUTLINED_FUNCTION_777();
    *v19 = 0;
    v19[1] = 0;
    OUTLINED_FUNCTION_0_0();
    if (!v16)
    {
      sub_1C8778ED8(v0, &qword_1EC2BAC58, &qword_1C8BFAAD0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_102_3();
    OUTLINED_FUNCTION_168_0();
    sub_1C88E3EC4();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_260();
}

void sub_1C8907624()
{
  OUTLINED_FUNCTION_261();
  OUTLINED_FUNCTION_154();
  if (v5)
  {
    OUTLINED_FUNCTION_254_0();
    sub_1C88E4144();
    sub_1C8778ED8(v4 + v3, &qword_1EC2BAC58, &qword_1C8BFAAD0);
    OUTLINED_FUNCTION_102_3();
    OUTLINED_FUNCTION_976();
    OUTLINED_FUNCTION_321();
    OUTLINED_FUNCTION_521();
    sub_1C88E3C58();
  }

  else
  {
    sub_1C8778ED8(v4 + v3, &qword_1EC2BAC58, &qword_1C8BFAAD0);
    OUTLINED_FUNCTION_102_3();
    OUTLINED_FUNCTION_977();
    OUTLINED_FUNCTION_321();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_260();

  free(v6);
}

uint64_t sub_1C8907788()
{
  OUTLINED_FUNCTION_1087();
  v3 = OUTLINED_FUNCTION_299_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_170();
  v8 = v1(v7);
  OUTLINED_FUNCTION_329_0(v8);
  OUTLINED_FUNCTION_626();
  sub_1C89CBE2C();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Query.PredicateTemplates(0);
  v9 = OUTLINED_FUNCTION_690();
  OUTLINED_FUNCTION_65(v9);
  if (v10)
  {
    v11 = MEMORY[0x1E69E7CC0];
    *v2 = MEMORY[0x1E69E7CC0];
    v2[1] = v11;
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v12 = OUTLINED_FUNCTION_941();
    v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.StringSearchPredicate.Template(v12);
    OUTLINED_FUNCTION_456(v13);
    v14 = OUTLINED_FUNCTION_1070();
    v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.IdSearchPredicate.Template(v14);
    OUTLINED_FUNCTION_456(v15);
    v16 = OUTLINED_FUNCTION_1127();
    v17 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AllPredicate(v16);
    OUTLINED_FUNCTION_456(v17);
    v18 = OUTLINED_FUNCTION_496();
    v19 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SuggestedPredicate(v18);
    OUTLINED_FUNCTION_456(v19);
    v20 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SearchableItemPredicate.Template(0);
    OUTLINED_FUNCTION_456(v20);
    valid = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ValidPredicate(0);
    result = OUTLINED_FUNCTION_9_13(valid);
    if (!v10)
    {
      return sub_1C8778ED8(v0, &qword_1EC2BAAC0, &qword_1C8BFA9D8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_312();
    return sub_1C88E3EC4();
  }

  return result;
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.templates.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet(v1);
  sub_1C8778ED8(v0 + *(v2 + 24), &qword_1EC2BAAC0, &qword_1C8BFA9D8);
  OUTLINED_FUNCTION_56_5();
  OUTLINED_FUNCTION_200();
  sub_1C88E3EC4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Query.PredicateTemplates(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.templates.modify()
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
  v9 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Query.PredicateTemplates(v8);
  OUTLINED_FUNCTION_29_5(v9);
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_243(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_168(v14);
  v16 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet(v15);
  OUTLINED_FUNCTION_312_0(v16);
  OUTLINED_FUNCTION_0_0();
  if (v17)
  {
    v18 = MEMORY[0x1E69E7CC0];
    *v11 = MEMORY[0x1E69E7CC0];
    v11[1] = v18;
    OUTLINED_FUNCTION_777();
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v19 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.StringSearchPredicate.Template(0);
    v20 = OUTLINED_FUNCTION_201_2(v19);
    v21 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.IdSearchPredicate.Template(v20);
    v22 = OUTLINED_FUNCTION_202_2(v21);
    v23 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.AllPredicate(v22);
    v24 = OUTLINED_FUNCTION_200_3(v23);
    v25 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SuggestedPredicate(v24);
    OUTLINED_FUNCTION_417(v25);
    v26 = OUTLINED_FUNCTION_1071();
    v27 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.SearchableItemPredicate.Template(v26);
    OUTLINED_FUNCTION_417(v27);
    valid = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ValidPredicate(0);
    OUTLINED_FUNCTION_5_12(valid);
    if (!v17)
    {
      sub_1C8778ED8(v0, &qword_1EC2BAAC0, &qword_1C8BFA9D8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_56_5();
    OUTLINED_FUNCTION_168_0();
    sub_1C88E3EC4();
  }

  OUTLINED_FUNCTION_260();
}

uint64_t sub_1C8907B3C()
{
  v0 = OUTLINED_FUNCTION_167();
  v2 = v1(v0);
  if (OUTLINED_FUNCTION_8_0(*(v2 + 24)))
  {
    OUTLINED_FUNCTION_20();
  }

  else
  {
    OUTLINED_FUNCTION_19_0();
  }

  return OUTLINED_FUNCTION_218();
}

uint64_t sub_1C8907B84(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.bundleIdentifier.setter(v1, v2);
}

uint64_t sub_1C8907BDC()
{
  v3 = OUTLINED_FUNCTION_68();
  v4(v3);
  result = OUTLINED_FUNCTION_24_0();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.bundleIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_17_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_41(v1);
  v3 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet(v2);
  if (OUTLINED_FUNCTION_4_1(*(v3 + 24)))
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

uint64_t sub_1C8907CC8()
{
  v1 = OUTLINED_FUNCTION_167();
  v2(v1);
  result = OUTLINED_FUNCTION_25_2();
  *v0 = 0;
  v0[1] = 0;
  return result;
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.dynamicEnumeration.getter()
{
  OUTLINED_FUNCTION_93_1();
  v1 = OUTLINED_FUNCTION_253();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_122_2();
  v5 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.OneOf_ValueSetKind(0);
  OUTLINED_FUNCTION_5_8(v5);
  if (v6)
  {
    sub_1C8778ED8(v0, &qword_1EC2BAC68, &qword_1C8BFAAE0);
LABEL_6:
    OUTLINED_FUNCTION_433();
    v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.DynamicEnumeration(0);
    return OUTLINED_FUNCTION_979(v8);
  }

  OUTLINED_FUNCTION_92_0();
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1C88E3C58();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_191_1();
  OUTLINED_FUNCTION_5_0();
  return sub_1C88E3EC4();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.dynamicEnumeration.setter()
{
  sub_1C8778ED8(v0, &qword_1EC2BAC68, &qword_1C8BFAAE0);
  OUTLINED_FUNCTION_191_1();
  OUTLINED_FUNCTION_218();
  sub_1C88E3EC4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.OneOf_ValueSetKind(0);
  OUTLINED_FUNCTION_48_4();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_34_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_1C8907EE0@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_132(a1);
  v2 = OUTLINED_FUNCTION_923(v1);
  v4 = v3(v2);
  return OUTLINED_FUNCTION_979(v4);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.dynamicEnumeration.modify()
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
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.DynamicEnumeration(v8);
  OUTLINED_FUNCTION_40_2();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_110_0(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_232_2(v12);
  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.OneOf_ValueSetKind(0);
  OUTLINED_FUNCTION_35_5(v13);
  if (v14)
  {
    sub_1C8778ED8(v0, &qword_1EC2BAC68, &qword_1C8BFAAE0);
  }

  else
  {
    OUTLINED_FUNCTION_253();
    if (!swift_getEnumCaseMultiPayload())
    {
      OUTLINED_FUNCTION_191_1();
      OUTLINED_FUNCTION_254_0();
      sub_1C88E3EC4();
      goto LABEL_7;
    }

    sub_1C88E3C58();
  }

  OUTLINED_FUNCTION_568();
  OUTLINED_FUNCTION_795();
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
LABEL_7:
  OUTLINED_FUNCTION_260();
}

void sub_1C8908040()
{
  OUTLINED_FUNCTION_32_6();
  if (v5)
  {
    OUTLINED_FUNCTION_184();
    sub_1C88E4144();
    sub_1C8778ED8(v4, &qword_1EC2BAC68, &qword_1C8BFAAE0);
    OUTLINED_FUNCTION_191_1();
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
    sub_1C8778ED8(v4, &qword_1EC2BAC68, &qword_1C8BFAAE0);
    OUTLINED_FUNCTION_191_1();
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

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.contentPropertyPossibleValues.getter()
{
  OUTLINED_FUNCTION_93_1();
  v1 = OUTLINED_FUNCTION_253();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_122_2();
  v5 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.OneOf_ValueSetKind(0);
  OUTLINED_FUNCTION_5_8(v5);
  if (v6)
  {
    sub_1C8778ED8(v0, &qword_1EC2BAC68, &qword_1C8BFAAE0);
  }

  else
  {
    OUTLINED_FUNCTION_92_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_190_2();
      OUTLINED_FUNCTION_5_0();
      return sub_1C88E3EC4();
    }

    sub_1C88E3C58();
  }

  v9 = OUTLINED_FUNCTION_402_0();
  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues(v9);
  OUTLINED_FUNCTION_702(v10);
  v11 = OUTLINED_FUNCTION_887();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor(v11);
  v12 = OUTLINED_FUNCTION_27_1();
  return __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.contentPropertyPossibleValues.setter()
{
  sub_1C8778ED8(v0, &qword_1EC2BAC68, &qword_1C8BFAAE0);
  OUTLINED_FUNCTION_190_2();
  OUTLINED_FUNCTION_218();
  sub_1C88E3EC4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.OneOf_ValueSetKind(0);
  OUTLINED_FUNCTION_48_4();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_34_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.contentPropertyPossibleValues.modify()
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
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues(v8);
  OUTLINED_FUNCTION_40_2();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_110_0(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_232_2(v12);
  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.OneOf_ValueSetKind(0);
  OUTLINED_FUNCTION_35_5(v13);
  if (v14)
  {
    v15 = sub_1C8778ED8(v0, &qword_1EC2BAC68, &qword_1C8BFAAE0);
LABEL_7:
    OUTLINED_FUNCTION_569(v15);
    v17 = OUTLINED_FUNCTION_886();
    type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor(v17);
    v18 = OUTLINED_FUNCTION_257_2();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_253();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    v15 = sub_1C88E3C58();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_190_2();
  OUTLINED_FUNCTION_254_0();
  sub_1C88E3EC4();
LABEL_8:
  OUTLINED_FUNCTION_260();
}

void sub_1C8908408()
{
  OUTLINED_FUNCTION_32_6();
  if (v5)
  {
    OUTLINED_FUNCTION_184();
    sub_1C88E4144();
    sub_1C8778ED8(v4, &qword_1EC2BAC68, &qword_1C8BFAAE0);
    OUTLINED_FUNCTION_190_2();
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
    sub_1C8778ED8(v4, &qword_1EC2BAC68, &qword_1C8BFAAE0);
    OUTLINED_FUNCTION_190_2();
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

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.linkQuery.getter()
{
  OUTLINED_FUNCTION_93_1();
  v1 = OUTLINED_FUNCTION_253();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_122_2();
  v5 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.OneOf_ValueSetKind(0);
  OUTLINED_FUNCTION_5_8(v5);
  if (v6)
  {
    sub_1C8778ED8(v0, &qword_1EC2BAC68, &qword_1C8BFAAE0);
  }

  else
  {
    OUTLINED_FUNCTION_92_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      OUTLINED_FUNCTION_43_7();
      OUTLINED_FUNCTION_5_0();
      return sub_1C88E3EC4();
    }

    sub_1C88E3C58();
  }

  OUTLINED_FUNCTION_433();
  v10 = OUTLINED_FUNCTION_1080(v9);
  v11 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.LinkQuery(v10);
  return OUTLINED_FUNCTION_1016(v11);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.linkQuery.setter()
{
  sub_1C8778ED8(v0, &qword_1EC2BAC68, &qword_1C8BFAAE0);
  OUTLINED_FUNCTION_43_7();
  OUTLINED_FUNCTION_218();
  sub_1C88E3EC4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.OneOf_ValueSetKind(0);
  OUTLINED_FUNCTION_48_4();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_34_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.LinkQuery.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_132(a1);
  *(v1 + 16) = 0;
  *(v1 + 24) = v2;
  v3 = OUTLINED_FUNCTION_1080(v2);
  v4 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.LinkQuery(v3);
  return OUTLINED_FUNCTION_1016(v4);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.linkQuery.modify()
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
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.LinkQuery(v8);
  OUTLINED_FUNCTION_40_2();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_110_0(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_232_2(v12);
  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.OneOf_ValueSetKind(0);
  OUTLINED_FUNCTION_35_5(v13);
  if (v14)
  {
    sub_1C8778ED8(v0, &qword_1EC2BAC68, &qword_1C8BFAAE0);
LABEL_7:
    OUTLINED_FUNCTION_568();
    OUTLINED_FUNCTION_1112(v16);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_253();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 2)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_43_7();
  OUTLINED_FUNCTION_254_0();
  sub_1C88E3EC4();
LABEL_8:
  OUTLINED_FUNCTION_260();
}

void sub_1C89087BC()
{
  OUTLINED_FUNCTION_32_6();
  if (v5)
  {
    OUTLINED_FUNCTION_184();
    sub_1C88E4144();
    sub_1C8778ED8(v4, &qword_1EC2BAC68, &qword_1C8BFAAE0);
    OUTLINED_FUNCTION_43_7();
    OUTLINED_FUNCTION_156_1();
    sub_1C88E3EC4();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_349_0();
    sub_1C88E3C58();
  }

  else
  {
    sub_1C8778ED8(v4, &qword_1EC2BAC68, &qword_1C8BFAAE0);
    OUTLINED_FUNCTION_43_7();
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

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.standaloneLinkQuery.getter()
{
  v1 = OUTLINED_FUNCTION_271();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_207_3();
  OUTLINED_FUNCTION_1008();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.OneOf_ValueSetKind(0);
  OUTLINED_FUNCTION_19(v0);
  if (v5)
  {
    sub_1C8778ED8(v0, &qword_1EC2BAC68, &qword_1C8BFAAE0);
  }

  else
  {
    OUTLINED_FUNCTION_218();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 3)
    {
      return *v0;
    }

    sub_1C88E3C58();
  }

  return OUTLINED_FUNCTION_996();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.standaloneLinkQuery.setter()
{
  OUTLINED_FUNCTION_731();
  sub_1C8778ED8(v1, &qword_1EC2BAC68, &qword_1C8BFAAE0);
  *v1 = v2;
  v1[1] = v0;
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.OneOf_ValueSetKind(0);
  OUTLINED_FUNCTION_48_4();
  swift_storeEnumTagMultiPayload();
  v3 = OUTLINED_FUNCTION_34_2();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.standaloneLinkQuery.modify()
{
  v2 = OUTLINED_FUNCTION_65_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_421_0(v3);
  v4 = OUTLINED_FUNCTION_299_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_291_1(v8);
  v9 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.OneOf_ValueSetKind(0);
  OUTLINED_FUNCTION_84_3(v9);
  if (v10)
  {
    sub_1C8778ED8(v1, &qword_1EC2BAC68, &qword_1C8BFAAE0);
LABEL_7:
    OUTLINED_FUNCTION_14_1();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_271();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 3)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  v12 = *v1;
  v13 = v1[1];
LABEL_8:
  *v0 = v12;
  v0[1] = v13;
  return OUTLINED_FUNCTION_687();
}

void sub_1C8908B24(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = (*a1)[3];
  v6 = (*a1)[2];
  if (a2)
  {

    sub_1C8778ED8(v6, &qword_1EC2BAC68, &qword_1C8BFAAE0);
    *v6 = v4;
    v6[1] = v3;
    OUTLINED_FUNCTION_184();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_319_0();
    __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }

  else
  {
    sub_1C8778ED8((*a1)[2], &qword_1EC2BAC68, &qword_1C8BFAAE0);
    *v6 = v4;
    v6[1] = v3;
    OUTLINED_FUNCTION_184();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_319_0();
    __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  }

  free(v5);

  free(v2);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.linkQueryOnParameter.getter()
{
  OUTLINED_FUNCTION_93_1();
  v1 = OUTLINED_FUNCTION_253();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_122_2();
  v5 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.OneOf_ValueSetKind(0);
  OUTLINED_FUNCTION_5_8(v5);
  if (v6)
  {
    sub_1C8778ED8(v0, &qword_1EC2BAC68, &qword_1C8BFAAE0);
  }

  else
  {
    OUTLINED_FUNCTION_92_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 4)
    {
      OUTLINED_FUNCTION_43_7();
      OUTLINED_FUNCTION_5_0();
      return sub_1C88E3EC4();
    }

    sub_1C88E3C58();
  }

  OUTLINED_FUNCTION_433();
  v10 = OUTLINED_FUNCTION_1080(v9);
  v11 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.LinkQuery(v10);
  return OUTLINED_FUNCTION_1016(v11);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.linkQueryOnParameter.setter()
{
  sub_1C8778ED8(v0, &qword_1EC2BAC68, &qword_1C8BFAAE0);
  OUTLINED_FUNCTION_43_7();
  OUTLINED_FUNCTION_218();
  sub_1C88E3EC4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.OneOf_ValueSetKind(0);
  OUTLINED_FUNCTION_48_4();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_34_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.linkQueryOnParameter.modify()
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
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.LinkQuery(v8);
  OUTLINED_FUNCTION_40_2();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_110_0(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_232_2(v12);
  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.OneOf_ValueSetKind(0);
  OUTLINED_FUNCTION_35_5(v13);
  if (v14)
  {
    sub_1C8778ED8(v0, &qword_1EC2BAC68, &qword_1C8BFAAE0);
LABEL_7:
    OUTLINED_FUNCTION_568();
    OUTLINED_FUNCTION_1112(v16);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_253();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 4)
  {
    sub_1C88E3C58();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_43_7();
  OUTLINED_FUNCTION_254_0();
  sub_1C88E3EC4();
LABEL_8:
  OUTLINED_FUNCTION_260();
}

void sub_1C8908E80()
{
  OUTLINED_FUNCTION_32_6();
  if (v5)
  {
    OUTLINED_FUNCTION_184();
    sub_1C88E4144();
    sub_1C8778ED8(v4, &qword_1EC2BAC68, &qword_1C8BFAAE0);
    OUTLINED_FUNCTION_43_7();
    OUTLINED_FUNCTION_156_1();
    sub_1C88E3EC4();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_349_0();
    sub_1C88E3C58();
  }

  else
  {
    sub_1C8778ED8(v4, &qword_1EC2BAC68, &qword_1C8BFAAE0);
    OUTLINED_FUNCTION_43_7();
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

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet(v0);
  return OUTLINED_FUNCTION_242();
}

void static Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.OneOf_ValueSetKind.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v5 = OUTLINED_FUNCTION_987(v3, v4);
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.LinkQuery(v5);
  v7 = OUTLINED_FUNCTION_80(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_96();
  v10 = OUTLINED_FUNCTION_546(v9);
  v11 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues(v10);
  v12 = OUTLINED_FUNCTION_80(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_33();
  v13 = OUTLINED_FUNCTION_402();
  v39 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.DynamicEnumeration(v13);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_115_3(v15, v39);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.OneOf_ValueSetKind(0);
  OUTLINED_FUNCTION_229_2();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_557();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_372();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_537();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_547();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EC2BAC70, &qword_1C8BFAAE8);
  OUTLINED_FUNCTION_80(v21);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_112_0();
  v24 = (v0 + *(v23 + 56));
  sub_1C88E4144();
  sub_1C88E4144();
  OUTLINED_FUNCTION_377();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_228_1();
      sub_1C88E4144();
      OUTLINED_FUNCTION_216();
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_21;
      }

      OUTLINED_FUNCTION_190_2();
      OUTLINED_FUNCTION_522();
      sub_1C88E3EC4();
      OUTLINED_FUNCTION_230();
      static Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues.== infix(_:_:)();
      sub_1C88E3C58();
      goto LABEL_17;
    case 2u:
      OUTLINED_FUNCTION_228_1();
      sub_1C88E4144();
      OUTLINED_FUNCTION_216();
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_18;
      }

      OUTLINED_FUNCTION_43_7();
      OUTLINED_FUNCTION_1035();
      sub_1C88E3EC4();
      v26 = OUTLINED_FUNCTION_253();
      static Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.LinkQuery.== infix(_:_:)(v26);
      OUTLINED_FUNCTION_864();
      sub_1C88E3C58();
      goto LABEL_17;
    case 3u:
      OUTLINED_FUNCTION_228_1();
      sub_1C88E4144();
      v28 = *v2;
      v27 = v2[1];
      OUTLINED_FUNCTION_216();
      if (swift_getEnumCaseMultiPayload() != 3)
      {

        goto LABEL_22;
      }

      v29 = *v24;
      v30 = v24[1];
      v31 = v28 == v29 && v27 == v30;
      if (!v31)
      {
        OUTLINED_FUNCTION_184();
        sub_1C8BD529C();
        OUTLINED_FUNCTION_511();
      }

      goto LABEL_36;
    case 4u:
      OUTLINED_FUNCTION_228_1();
      sub_1C88E4144();
      OUTLINED_FUNCTION_216();
      if (swift_getEnumCaseMultiPayload() != 4)
      {
LABEL_18:
        OUTLINED_FUNCTION_349_0();
        goto LABEL_21;
      }

      OUTLINED_FUNCTION_43_7();
      sub_1C88E3EC4();
      v25 = OUTLINED_FUNCTION_220();
      static Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.LinkQuery.== infix(_:_:)(v25);
      OUTLINED_FUNCTION_864();
      sub_1C88E3C58();
      OUTLINED_FUNCTION_271();
LABEL_17:
      sub_1C88E3C58();
      OUTLINED_FUNCTION_189_2();
      sub_1C88E3C58();
      break;
    default:
      OUTLINED_FUNCTION_228_1();
      sub_1C88E4144();
      OUTLINED_FUNCTION_216();
      if (swift_getEnumCaseMultiPayload())
      {
        OUTLINED_FUNCTION_169();
LABEL_21:
        sub_1C88E3C58();
LABEL_22:
        sub_1C8778ED8(v0, &dword_1EC2BAC70, &qword_1C8BFAAE8);
      }

      else
      {
        OUTLINED_FUNCTION_191_1();
        sub_1C88E3EC4();
        OUTLINED_FUNCTION_1046();
        v34 = v31 && v32 == v33;
        if (v34 || (sub_1C8BD529C() & 1) != 0)
        {
          v35 = *(v1 + 16) == *(v40 + 16) && *(v1 + 24) == *(v40 + 24);
          if (v35 || (sub_1C8BD529C() & 1) != 0)
          {
            sub_1C8BD49FC();
            OUTLINED_FUNCTION_1_14();
            v38 = sub_1C8776818(v36, v37, MEMORY[0x1E69AAC10]);
            OUTLINED_FUNCTION_1005(v38);
          }
        }

        OUTLINED_FUNCTION_863();
        sub_1C88E3C58();
        OUTLINED_FUNCTION_300();
        sub_1C88E3C58();
LABEL_36:
        OUTLINED_FUNCTION_189_2();
        sub_1C88E3C58();
      }

      break;
  }

  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_125();
}

void static Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v4 = v3;
  v5 = OUTLINED_FUNCTION_333();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor(v5);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_194();
  v7 = OUTLINED_FUNCTION_233();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  OUTLINED_FUNCTION_80(v9);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_211();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAC80, &qword_1C8BFAAF8);
  OUTLINED_FUNCTION_223_0();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_103();
  v12 = *(type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues(0) + 24);
  v13 = *(v2 + 56);
  OUTLINED_FUNCTION_196_1();
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_196_1();
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_17_6(v1);
  if (!v14)
  {
    OUTLINED_FUNCTION_299_0();
    sub_1C89CBE2C();
    OUTLINED_FUNCTION_17_6(v1 + v13);
    if (!v14)
    {
      OUTLINED_FUNCTION_29_6();
      sub_1C88E3EC4();
      OUTLINED_FUNCTION_260_0();
      static Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor.== infix(_:_:)();
      v17 = v16;
      sub_1C88E3C58();
      OUTLINED_FUNCTION_229();
      sub_1C88E3C58();
      sub_1C8778ED8(v1, &qword_1EC2BAC78, &qword_1C8BFAAF0);
      if ((v17 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_12;
    }

    OUTLINED_FUNCTION_188_1();
    sub_1C88E3C58();
LABEL_9:
    sub_1C8778ED8(v1, &qword_1EC2BAC80, &qword_1C8BFAAF8);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_17_6(v1 + v13);
  if (!v14)
  {
    goto LABEL_9;
  }

  sub_1C8778ED8(v1, &qword_1EC2BAC78, &qword_1C8BFAAF0);
LABEL_12:
  v18 = *v0 == *v4 && v0[1] == v4[1];
  if (v18 || (sub_1C8BD529C() & 1) != 0)
  {
    OUTLINED_FUNCTION_255();
    OUTLINED_FUNCTION_1_14();
    sub_1C8776818(v19, v20, MEMORY[0x1E69AAC10]);
    v21 = OUTLINED_FUNCTION_775();
    v15 = OUTLINED_FUNCTION_232_1(v21, v4 + v12, v22, v23);
    goto LABEL_18;
  }

LABEL_10:
  v15 = 0;
LABEL_18:
  OUTLINED_FUNCTION_157(v15);
  OUTLINED_FUNCTION_125();
}

uint64_t static Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.LinkQuery.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_85_2(a1);
  v3 = v3 && v1 == v2;
  if (!v3 && (sub_1C8BD529C() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_646();
  v6 = v3 && v4 == v5;
  if (!v6 && (sub_1C8BD529C() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_1055();
  v9 = v3 && v7 == v8;
  if (!v9 && (sub_1C8BD529C() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.LinkQuery(0);
  OUTLINED_FUNCTION_1123();
  OUTLINED_FUNCTION_1_14();
  v12 = sub_1C8776818(v10, v11, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_64_0(v12) & 1;
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.DynamicEnumeration.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.DynamicEnumeration(v0);
  return OUTLINED_FUNCTION_242();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues.contentItemClass.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_74();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues(v5);
  OUTLINED_FUNCTION_439();
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor(0);
  OUTLINED_FUNCTION_46_2(v6);
  if (v7)
  {
    v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor.OneOf_ContentItemClassDescriptorKind(0);
    OUTLINED_FUNCTION_107_1(v8);
    result = OUTLINED_FUNCTION_1_0();
    if (!v7)
    {
      return sub_1C8778ED8(v0, &qword_1EC2BAC78, &qword_1C8BFAAF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_29_6();
    OUTLINED_FUNCTION_121();
    return sub_1C88E3EC4();
  }

  return result;
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues.contentItemClass.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues(v1);
  sub_1C8778ED8(v0 + *(v2 + 24), &qword_1EC2BAC78, &qword_1C8BFAAF0);
  OUTLINED_FUNCTION_29_6();
  OUTLINED_FUNCTION_200();
  sub_1C88E3EC4();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues.contentItemClass.modify()
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
  v9 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor(v8);
  OUTLINED_FUNCTION_47_3(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_243(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_168(v13);
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues(v14);
  OUTLINED_FUNCTION_360_0(*(v15 + 24));
  OUTLINED_FUNCTION_5_6();
  if (v16)
  {
    v17 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor.OneOf_ContentItemClassDescriptorKind(0);
    OUTLINED_FUNCTION_81_1(v17);
    OUTLINED_FUNCTION_5_6();
    if (!v16)
    {
      sub_1C8778ED8(v0, &qword_1EC2BAC78, &qword_1C8BFAAF0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_29_6();
    OUTLINED_FUNCTION_184();
    sub_1C88E3EC4();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_260();
}

void sub_1C8909B34()
{
  OUTLINED_FUNCTION_261();
  OUTLINED_FUNCTION_154();
  if (v5)
  {
    OUTLINED_FUNCTION_254_0();
    sub_1C88E4144();
    sub_1C8778ED8(v4 + v3, &qword_1EC2BAC78, &qword_1C8BFAAF0);
    OUTLINED_FUNCTION_29_6();
    OUTLINED_FUNCTION_976();
    OUTLINED_FUNCTION_321();
    OUTLINED_FUNCTION_188_1();
    sub_1C88E3C58();
  }

  else
  {
    sub_1C8778ED8(v4 + v3, &qword_1EC2BAC78, &qword_1C8BFAAF0);
    OUTLINED_FUNCTION_29_6();
    OUTLINED_FUNCTION_977();
    OUTLINED_FUNCTION_321();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_260();

  free(v6);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues(v0);
  return OUTLINED_FUNCTION_242();
}

uint64_t sub_1C8909D78()
{
  v0 = OUTLINED_FUNCTION_782();
  v1(v0);
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_21();
  v2 = OUTLINED_FUNCTION_130_1();

  return v3(v2);
}

uint64_t sub_1C8909DFC()
{
  v0 = OUTLINED_FUNCTION_241();
  v1(v0);
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_121_0();
  v2 = OUTLINED_FUNCTION_167_1();

  return v3(v2);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.LinkQuery.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.LinkQuery(v0);
  return OUTLINED_FUNCTION_242();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.RepresentableAs.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.RepresentableAs(v0);
  return OUTLINED_FUNCTION_242();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.TextTypedWith.keyboardType.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 8) = *result;
  *(v1 + 16) = v2;
  return result;
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.TextTypedWith.capitalizationType.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 40) = *result;
  *(v1 + 48) = v2;
  return result;
}

uint64_t sub_1C890A068()
{
  v0 = OUTLINED_FUNCTION_782();
  v1(v0);
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_21();
  v2 = OUTLINED_FUNCTION_130_1();

  return v3(v2);
}

uint64_t sub_1C890A0EC()
{
  v0 = OUTLINED_FUNCTION_241();
  v1(v0);
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_121_0();
  v2 = OUTLINED_FUNCTION_167_1();

  return v3(v2);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.TextTypedWith.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.TextTypedWith(v0);
  return OUTLINED_FUNCTION_242();
}

uint64_t sub_1C890A1A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C89CC10C();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1C890A224(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C89CC0B8();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1C890A288(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C89CC160();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor.regularContentItemClass.getter()
{
  v1 = OUTLINED_FUNCTION_271();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_207_3();
  OUTLINED_FUNCTION_1008();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor.OneOf_ContentItemClassDescriptorKind(0);
  OUTLINED_FUNCTION_19(v0);
  if (v5)
  {
    sub_1C8778ED8(v0, &qword_1EC2BAC88, &qword_1C8BFAB00);
    return OUTLINED_FUNCTION_996();
  }

  OUTLINED_FUNCTION_218();
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1C88E3C58();
    return OUTLINED_FUNCTION_996();
  }

  return *v0;
}