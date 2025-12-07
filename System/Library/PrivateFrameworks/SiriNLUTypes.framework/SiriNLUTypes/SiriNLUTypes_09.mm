uint64_t Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.search.getter()
{
  OUTLINED_FUNCTION_93_1();
  v1 = OUTLINED_FUNCTION_253();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_31_3();
  v5 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.OneOf_Value(0);
  OUTLINED_FUNCTION_5_8(v5);
  if (v6)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6148, &qword_1C8BF0240);
  }

  else
  {
    v7 = OUTLINED_FUNCTION_217_0();
    if (v7 == 2)
    {
      OUTLINED_FUNCTION_20_5();
      OUTLINED_FUNCTION_5_0();
      return sub_1C877B4F0();
    }

    sub_1C8858F2C();
  }

  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.Search(0);
  v9 = OUTLINED_FUNCTION_207_1();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_SearchQueryRewrite(v9);
  v10 = OUTLINED_FUNCTION_27_1();
  return __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
}

uint64_t Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.search.setter()
{
  sub_1C8778ED8(v0, &qword_1EC2B6148, &qword_1C8BF0240);
  OUTLINED_FUNCTION_20_5();
  OUTLINED_FUNCTION_218();
  sub_1C877B4F0();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.OneOf_Value(0);
  OUTLINED_FUNCTION_48_4();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_34_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.search.modify()
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
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.Search(v9);
  OUTLINED_FUNCTION_21();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_110_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_43_3(v13);
  *(v1 + 32) = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.OneOf_Value(0);
  OUTLINED_FUNCTION_5_6();
  if (v14)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6148, &qword_1C8BF0240);
LABEL_7:
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v16 = OUTLINED_FUNCTION_214_1();
    type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_SearchQueryRewrite(v16);
    OUTLINED_FUNCTION_157_1();
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_253();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 2)
  {
    sub_1C8858F2C();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_20_5();
  OUTLINED_FUNCTION_254_0();
  sub_1C877B4F0();
LABEL_8:
  OUTLINED_FUNCTION_260();
}

void sub_1C885BDEC()
{
  OUTLINED_FUNCTION_32_6();
  if (v5)
  {
    OUTLINED_FUNCTION_184();
    sub_1C88593CC();
    sub_1C8778ED8(v4, &qword_1EC2B6148, &qword_1C8BF0240);
    OUTLINED_FUNCTION_20_5();
    OUTLINED_FUNCTION_156_1();
    sub_1C877B4F0();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_86_1();
    sub_1C8858F2C();
  }

  else
  {
    sub_1C8778ED8(v4, &qword_1EC2B6148, &qword_1C8BF0240);
    OUTLINED_FUNCTION_20_5();
    OUTLINED_FUNCTION_268();
    sub_1C877B4F0();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
  }

  free(v3);
  free(v2);
  free(v1);

  free(v0);
}

uint64_t Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite(v0);
  return OUTLINED_FUNCTION_242();
}

void static Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.OneOf_Value.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v1 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.Search(0);
  v2 = OUTLINED_FUNCTION_80(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_9_0();
  v3 = OUTLINED_FUNCTION_86();
  v4 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.Planner(v3);
  v5 = OUTLINED_FUNCTION_80(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_18_4();
  v6 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.SiriX(0);
  v7 = OUTLINED_FUNCTION_80(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_149_1();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.OneOf_Value(0);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_200_1();
  MEMORY[0x1EEE9AC00](v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B7EF0, &qword_1C8BF0248);
  OUTLINED_FUNCTION_80(v11);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_112_0();
  sub_1C88593CC();
  sub_1C88593CC();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_87_1();
      sub_1C88593CC();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        OUTLINED_FUNCTION_21_3();
        sub_1C877B4F0();
        static Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.Planner.== infix(_:_:)();
        sub_1C8858F2C();
LABEL_11:
        sub_1C8858F2C();
        OUTLINED_FUNCTION_92_1();
        sub_1C8858F2C();
        goto LABEL_12;
      }
    }

    else
    {
      OUTLINED_FUNCTION_87_1();
      sub_1C88593CC();
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        OUTLINED_FUNCTION_20_5();
        sub_1C877B4F0();
        static Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.Search.== infix(_:_:)();
        sub_1C8858F2C();
        goto LABEL_11;
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_87_1();
    sub_1C88593CC();
    if (!swift_getEnumCaseMultiPayload())
    {
      OUTLINED_FUNCTION_22_7();
      sub_1C877B4F0();
      OUTLINED_FUNCTION_206_1();
      static Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.SiriX.== infix(_:_:)();
      sub_1C8858F2C();
      goto LABEL_11;
    }
  }

  sub_1C8858F2C();
  sub_1C8778ED8(v0, &qword_1EC2B7EF0, &qword_1C8BF0248);
LABEL_12:
  OUTLINED_FUNCTION_125();
}

void static Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.SiriX.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v1 = OUTLINED_FUNCTION_84();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite(v1);
  OUTLINED_FUNCTION_49_3();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_18_4();
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_103();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B7F00, &qword_1C8BF0258);
  OUTLINED_FUNCTION_128_1();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_74();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.SiriX(v8);
  OUTLINED_FUNCTION_213_1();
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_143_2();
  OUTLINED_FUNCTION_43_1(v0);
  if (v9)
  {
    OUTLINED_FUNCTION_37_2();
    if (v9)
    {
      sub_1C8778ED8(v0, &qword_1EC2B7EF8, &qword_1C8BF0250);
LABEL_12:
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_0_10();
      sub_1C8776620(v13, v14, MEMORY[0x1E69AAC10]);
      v15 = OUTLINED_FUNCTION_5_0();
      v10 = OUTLINED_FUNCTION_232_1(v15, v16, v17, v18);
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_253();
  sub_1C8778810();
  OUTLINED_FUNCTION_37_2();
  if (v9)
  {
    OUTLINED_FUNCTION_91_0();
    sub_1C8858F2C();
LABEL_9:
    sub_1C8778ED8(v0, &qword_1EC2B7F00, &qword_1C8BF0258);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_6_9();
  OUTLINED_FUNCTION_224_1();
  OUTLINED_FUNCTION_168_0();
  static Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite.== infix(_:_:)();
  v12 = v11;
  sub_1C8858F2C();
  OUTLINED_FUNCTION_178_2();
  sub_1C8858F2C();
  sub_1C8778ED8(v0, &qword_1EC2B7EF8, &qword_1C8BF0250);
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

void static Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.Planner.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_68();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PlannerQueryRewrite(v2);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_149_1();
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_211();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B7F10, &qword_1C8BF0268);
  OUTLINED_FUNCTION_128_1();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_74();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.Planner(v9);
  OUTLINED_FUNCTION_213_1();
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_143_2();
  OUTLINED_FUNCTION_19(v0);
  if (v10)
  {
    OUTLINED_FUNCTION_19(v0 + v1);
    if (v10)
    {
      sub_1C8778ED8(v0, &qword_1EC2B7F08, &qword_1C8BF0260);
LABEL_18:
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_0_10();
      v24 = sub_1C8776620(v22, v23, MEMORY[0x1E69AAC10]);
      v13 = OUTLINED_FUNCTION_191_0(v24);
      goto LABEL_19;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_268();
  sub_1C8778810();
  OUTLINED_FUNCTION_19(v0 + v1);
  if (v10)
  {
    OUTLINED_FUNCTION_90_1();
    sub_1C8858F2C();
LABEL_9:
    v11 = &qword_1EC2B7F10;
    v12 = &qword_1C8BF0268;
LABEL_10:
    sub_1C8778ED8(v0, v11, v12);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_5_9();
  sub_1C877B4F0();
  OUTLINED_FUNCTION_233_0();
  if (v14)
  {
    v17 = v15 == v16;
  }

  else
  {
    v17 = 0;
  }

  if (!v17 && (sub_1C8BD529C() & 1) == 0)
  {
    sub_1C8858F2C();
    sub_1C8858F2C();
    v11 = &qword_1EC2B7F08;
    v12 = &qword_1C8BF0260;
    goto LABEL_10;
  }

  sub_1C8BD49FC();
  OUTLINED_FUNCTION_0_10();
  v20 = sub_1C8776620(v18, v19, MEMORY[0x1E69AAC10]);
  v21 = OUTLINED_FUNCTION_220_0(v20);
  sub_1C8858F2C();
  OUTLINED_FUNCTION_230();
  sub_1C8858F2C();
  sub_1C8778ED8(v0, &qword_1EC2B7F08, &qword_1C8BF0260);
  if (v21)
  {
    goto LABEL_18;
  }

LABEL_11:
  v13 = 0;
LABEL_19:
  OUTLINED_FUNCTION_157(v13);
  OUTLINED_FUNCTION_125();
}

void static Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.Search.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_68();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_SearchQueryRewrite(v2);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_149_1();
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_211();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B7F20, &qword_1C8BF0278);
  OUTLINED_FUNCTION_128_1();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_74();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.Search(v9);
  OUTLINED_FUNCTION_213_1();
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_143_2();
  OUTLINED_FUNCTION_19(v0);
  if (v10)
  {
    OUTLINED_FUNCTION_19(v0 + v1);
    if (v10)
    {
      sub_1C8778ED8(v0, &qword_1EC2B7F18, &qword_1C8BF0270);
LABEL_18:
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_0_10();
      v24 = sub_1C8776620(v22, v23, MEMORY[0x1E69AAC10]);
      v13 = OUTLINED_FUNCTION_191_0(v24);
      goto LABEL_19;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_268();
  sub_1C8778810();
  OUTLINED_FUNCTION_19(v0 + v1);
  if (v10)
  {
    OUTLINED_FUNCTION_89_1();
    sub_1C8858F2C();
LABEL_9:
    v11 = &qword_1EC2B7F20;
    v12 = &qword_1C8BF0278;
LABEL_10:
    sub_1C8778ED8(v0, v11, v12);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_4_9();
  sub_1C877B4F0();
  OUTLINED_FUNCTION_233_0();
  if (v14)
  {
    v17 = v15 == v16;
  }

  else
  {
    v17 = 0;
  }

  if (!v17 && (sub_1C8BD529C() & 1) == 0)
  {
    sub_1C8858F2C();
    sub_1C8858F2C();
    v11 = &qword_1EC2B7F18;
    v12 = &qword_1C8BF0270;
    goto LABEL_10;
  }

  sub_1C8BD49FC();
  OUTLINED_FUNCTION_0_10();
  v20 = sub_1C8776620(v18, v19, MEMORY[0x1E69AAC10]);
  v21 = OUTLINED_FUNCTION_220_0(v20);
  sub_1C8858F2C();
  OUTLINED_FUNCTION_230();
  sub_1C8858F2C();
  sub_1C8778ED8(v0, &qword_1EC2B7F18, &qword_1C8BF0270);
  if (v21)
  {
    goto LABEL_18;
  }

LABEL_11:
  v13 = 0;
LABEL_19:
  OUTLINED_FUNCTION_157(v13);
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.SiriX._0.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.SiriX(v1);
  sub_1C8778ED8(v0 + *(v2 + 20), &qword_1EC2B7EF8, &qword_1C8BF0250);
  OUTLINED_FUNCTION_6_9();
  OUTLINED_FUNCTION_223_2();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.SiriX._0.modify()
{
  OUTLINED_FUNCTION_261();
  v0 = OUTLINED_FUNCTION_251();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_18_1(v1);
  v2 = OUTLINED_FUNCTION_104_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_107(v6);
  v8 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite(v7);
  OUTLINED_FUNCTION_51_0(v8);
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_243(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_168(v13);
  v15 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.SiriX(v14);
  OUTLINED_FUNCTION_116_2(v15);
  OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_72(v6);
  if (v16)
  {
    *v10 = 0;
    v10[1] = 0xE000000000000000;
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite.CorrectionOutcome(0);
    v17 = OUTLINED_FUNCTION_73_3();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
    OUTLINED_FUNCTION_72(v6);
    if (!v16)
    {
      sub_1C8778ED8(v6, &qword_1EC2B7EF8, &qword_1C8BF0250);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_9();
    OUTLINED_FUNCTION_168_0();
    sub_1C877B4F0();
  }

  OUTLINED_FUNCTION_260();
}

void sub_1C885CBC4()
{
  OUTLINED_FUNCTION_261();
  OUTLINED_FUNCTION_154();
  if (v5)
  {
    OUTLINED_FUNCTION_254_0();
    sub_1C88593CC();
    sub_1C8778ED8(v4 + v3, &qword_1EC2B7EF8, &qword_1C8BF0250);
    OUTLINED_FUNCTION_6_9();
    OUTLINED_FUNCTION_222_1();
    OUTLINED_FUNCTION_321();
    OUTLINED_FUNCTION_91_0();
    sub_1C8858F2C();
  }

  else
  {
    sub_1C8778ED8(v4 + v3, &qword_1EC2B7EF8, &qword_1C8BF0250);
    OUTLINED_FUNCTION_6_9();
    OUTLINED_FUNCTION_221_1();
    OUTLINED_FUNCTION_321();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_260();

  free(v6);
}

uint64_t sub_1C885CCD4()
{
  OUTLINED_FUNCTION_50();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_80(v4);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_27_0();
  v1(v6);
  OUTLINED_FUNCTION_70_2();
  sub_1C8778810();
  v0(0);
  v7 = OUTLINED_FUNCTION_213();
  OUTLINED_FUNCTION_76(v7, v8, v9);
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = OUTLINED_FUNCTION_117_2();
  sub_1C8778ED8(v12, v13, v14);
  return v11;
}

uint64_t sub_1C885CDB4()
{
  OUTLINED_FUNCTION_50();
  v1(0);
  OUTLINED_FUNCTION_253_1();
  v0(0);
  OUTLINED_FUNCTION_5();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.Planner._0.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_74();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.Planner(v5);
  OUTLINED_FUNCTION_57_0();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PlannerQueryRewrite(0);
  v6 = OUTLINED_FUNCTION_65(v0);
  if (v7)
  {
    OUTLINED_FUNCTION_219_0(v6);
    result = OUTLINED_FUNCTION_65(v0);
    if (!v7)
    {
      return sub_1C8778ED8(v0, &qword_1EC2B7F08, &qword_1C8BF0260);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_9();
    OUTLINED_FUNCTION_121();
    return sub_1C877B4F0();
  }

  return result;
}

uint64_t Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.Planner._0.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.Planner(v1);
  sub_1C8778ED8(v0 + *(v2 + 20), &qword_1EC2B7F08, &qword_1C8BF0260);
  OUTLINED_FUNCTION_5_9();
  OUTLINED_FUNCTION_223_2();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PlannerQueryRewrite(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.Planner._0.modify()
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
  Rewrite = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PlannerQueryRewrite(v8);
  OUTLINED_FUNCTION_47_3(Rewrite);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_243(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_168(v13);
  v15 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.Planner(v14);
  OUTLINED_FUNCTION_85(*(v15 + 20));
  v16 = OUTLINED_FUNCTION_5_6();
  if (v17)
  {
    OUTLINED_FUNCTION_218_1(v16);
    OUTLINED_FUNCTION_5_6();
    if (!v17)
    {
      sub_1C8778ED8(v0, &qword_1EC2B7F08, &qword_1C8BF0260);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_9();
    OUTLINED_FUNCTION_184();
    sub_1C877B4F0();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_260();
}

void sub_1C885D098()
{
  OUTLINED_FUNCTION_261();
  OUTLINED_FUNCTION_154();
  if (v5)
  {
    OUTLINED_FUNCTION_254_0();
    sub_1C88593CC();
    sub_1C8778ED8(v4 + v3, &qword_1EC2B7F08, &qword_1C8BF0260);
    OUTLINED_FUNCTION_5_9();
    OUTLINED_FUNCTION_222_1();
    OUTLINED_FUNCTION_321();
    OUTLINED_FUNCTION_90_1();
    sub_1C8858F2C();
  }

  else
  {
    sub_1C8778ED8(v4 + v3, &qword_1EC2B7F08, &qword_1C8BF0260);
    OUTLINED_FUNCTION_5_9();
    OUTLINED_FUNCTION_221_1();
    OUTLINED_FUNCTION_321();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_260();

  free(v6);
}

uint64_t Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.Search._0.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_74();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.Search(v5);
  OUTLINED_FUNCTION_57_0();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_SearchQueryRewrite(0);
  v6 = OUTLINED_FUNCTION_65(v0);
  if (v7)
  {
    OUTLINED_FUNCTION_219_0(v6);
    result = OUTLINED_FUNCTION_65(v0);
    if (!v7)
    {
      return sub_1C8778ED8(v0, &qword_1EC2B7F18, &qword_1C8BF0270);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_9();
    OUTLINED_FUNCTION_121();
    return sub_1C877B4F0();
  }

  return result;
}

uint64_t Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.Search._0.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.Search(v1);
  sub_1C8778ED8(v0 + *(v2 + 20), &qword_1EC2B7F18, &qword_1C8BF0270);
  OUTLINED_FUNCTION_4_9();
  OUTLINED_FUNCTION_223_2();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_SearchQueryRewrite(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.Search._0.modify()
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
  Rewrite = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_SearchQueryRewrite(v8);
  OUTLINED_FUNCTION_47_3(Rewrite);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_243(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_168(v13);
  v15 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.Search(v14);
  OUTLINED_FUNCTION_85(*(v15 + 20));
  v16 = OUTLINED_FUNCTION_5_6();
  if (v17)
  {
    OUTLINED_FUNCTION_218_1(v16);
    OUTLINED_FUNCTION_5_6();
    if (!v17)
    {
      sub_1C8778ED8(v0, &qword_1EC2B7F18, &qword_1C8BF0270);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_9();
    OUTLINED_FUNCTION_184();
    sub_1C877B4F0();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_260();
}

void sub_1C885D458()
{
  OUTLINED_FUNCTION_261();
  OUTLINED_FUNCTION_154();
  if (v5)
  {
    OUTLINED_FUNCTION_254_0();
    sub_1C88593CC();
    sub_1C8778ED8(v4 + v3, &qword_1EC2B7F18, &qword_1C8BF0270);
    OUTLINED_FUNCTION_4_9();
    OUTLINED_FUNCTION_222_1();
    OUTLINED_FUNCTION_321();
    OUTLINED_FUNCTION_89_1();
    sub_1C8858F2C();
  }

  else
  {
    sub_1C8778ED8(v4 + v3, &qword_1EC2B7F18, &qword_1C8BF0270);
    OUTLINED_FUNCTION_4_9();
    OUTLINED_FUNCTION_221_1();
    OUTLINED_FUNCTION_321();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_260();

  free(v6);
}

uint64_t Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite.correctionOutcome.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_74();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite(v5);
  OUTLINED_FUNCTION_57_0();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite.CorrectionOutcome(0);
  OUTLINED_FUNCTION_65(v0);
  if (v6)
  {
    v7 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite.CorrectionOutcome.OneOf_Value(0);
    OUTLINED_FUNCTION_107_1(v7);
    result = OUTLINED_FUNCTION_65(v0);
    if (!v6)
    {
      return sub_1C8778ED8(v0, &qword_1EC2B7F28, &qword_1C8BF0280);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_9();
    OUTLINED_FUNCTION_121();
    return sub_1C877B4F0();
  }

  return result;
}

uint64_t Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite.correctionOutcome.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite(v1);
  sub_1C8778ED8(v0 + *(v2 + 24), &qword_1EC2B7F28, &qword_1C8BF0280);
  OUTLINED_FUNCTION_3_9();
  OUTLINED_FUNCTION_223_2();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite.CorrectionOutcome(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite.correctionOutcome.modify()
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
  v9 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite.CorrectionOutcome(v8);
  OUTLINED_FUNCTION_47_3(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_243(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_168(v13);
  v15 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite(v14);
  OUTLINED_FUNCTION_85(*(v15 + 24));
  OUTLINED_FUNCTION_5_6();
  if (v16)
  {
    v17 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite.CorrectionOutcome.OneOf_Value(0);
    OUTLINED_FUNCTION_81_1(v17);
    OUTLINED_FUNCTION_5_6();
    if (!v16)
    {
      sub_1C8778ED8(v0, &qword_1EC2B7F28, &qword_1C8BF0280);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_9();
    OUTLINED_FUNCTION_184();
    sub_1C877B4F0();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_260();
}

void sub_1C885D85C()
{
  OUTLINED_FUNCTION_261();
  OUTLINED_FUNCTION_154();
  if (v5)
  {
    OUTLINED_FUNCTION_254_0();
    sub_1C88593CC();
    sub_1C8778ED8(v4 + v3, &qword_1EC2B7F28, &qword_1C8BF0280);
    OUTLINED_FUNCTION_3_9();
    OUTLINED_FUNCTION_222_1();
    OUTLINED_FUNCTION_321();
    OUTLINED_FUNCTION_105_0();
    sub_1C8858F2C();
  }

  else
  {
    sub_1C8778ED8(v4 + v3, &qword_1EC2B7F28, &qword_1C8BF0280);
    OUTLINED_FUNCTION_3_9();
    OUTLINED_FUNCTION_221_1();
    OUTLINED_FUNCTION_321();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_260();

  free(v6);
}

uint64_t Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite(v0);
  return OUTLINED_FUNCTION_242();
}

void Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite.CorrectionOutcome.undo.modify()
{
  OUTLINED_FUNCTION_261();
  v2 = OUTLINED_FUNCTION_240_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_237_0(v3);
  v4 = OUTLINED_FUNCTION_230();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_238_0(v8);
  v10 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite.CorrectionOutcome.Undo(v9);
  OUTLINED_FUNCTION_80(v10);
  v12 = *(v11 + 64);
  v1[2] = __swift_coroFrameAllocStub(v12);
  v1[3] = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_82_3();
  sub_1C8778810();
  v1[4] = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite.CorrectionOutcome.OneOf_Value(0);
  v13 = OUTLINED_FUNCTION_155_0();
  OUTLINED_FUNCTION_76(v13, v14, v15);
  if (v16)
  {
    sub_1C8778ED8(v0, &qword_1EC2B7F30, &qword_1C8BF0288);
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  }

  else
  {
    OUTLINED_FUNCTION_65_4();
    OUTLINED_FUNCTION_251_0();
    sub_1C877B4F0();
  }

  OUTLINED_FUNCTION_260();
}

void sub_1C885DBEC()
{
  OUTLINED_FUNCTION_32_6();
  if (v5)
  {
    OUTLINED_FUNCTION_184();
    sub_1C88593CC();
    sub_1C8778ED8(v4, &qword_1EC2B7F30, &qword_1C8BF0288);
    OUTLINED_FUNCTION_65_4();
    OUTLINED_FUNCTION_156_1();
    sub_1C877B4F0();
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_86_1();
    sub_1C8858F2C();
  }

  else
  {
    sub_1C8778ED8(v4, &qword_1EC2B7F30, &qword_1C8BF0288);
    OUTLINED_FUNCTION_65_4();
    OUTLINED_FUNCTION_268();
    sub_1C877B4F0();
    OUTLINED_FUNCTION_53();
  }

  free(v3);
  free(v2);
  free(v1);

  free(v0);
}

uint64_t Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite.CorrectionOutcome.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite.CorrectionOutcome(v0);
  return OUTLINED_FUNCTION_242();
}

void static Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite.CorrectionOutcome.OneOf_Value.== infix(_:_:)()
{
  OUTLINED_FUNCTION_261();
  v0 = OUTLINED_FUNCTION_67_0();
  v1 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite.CorrectionOutcome.Undo(v0);
  v2 = OUTLINED_FUNCTION_80(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_241_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_234_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B7F38, &qword_1C8BF0290);
  OUTLINED_FUNCTION_80(v4);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_103();
  sub_1C88593CC();
  OUTLINED_FUNCTION_256_1();
  sub_1C877B4F0();
  OUTLINED_FUNCTION_258_1();
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_0_10();
  v8 = sub_1C8776620(v6, v7, MEMORY[0x1E69AAC10]);
  OUTLINED_FUNCTION_191_0(v8);
  sub_1C8858F2C();
  OUTLINED_FUNCTION_271();
  sub_1C8858F2C();
  OUTLINED_FUNCTION_260();
}

uint64_t Siri_Nlu_Internal_SiriMessageTypes_PlannerQueryRewrite.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PlannerQueryRewrite(v0);
  return OUTLINED_FUNCTION_242();
}

uint64_t Siri_Nlu_Internal_SiriMessageTypes_SearchQueryRewrite.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_SearchQueryRewrite(v0);
  return OUTLINED_FUNCTION_242();
}

uint64_t Siri_Nlu_Internal_SiriMessageTypes_AjaxMetadata.prescribedAjaxTool.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxMetadata(v1);
  sub_1C8778ED8(v0 + *(v2 + 20), &qword_1EC2B7F40, &qword_1C8BF0298);
  OUTLINED_FUNCTION_14_6();
  OUTLINED_FUNCTION_223_2();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_Internal_SiriMessageTypes_AjaxMetadata.prescribedAjaxTool.modify()
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
  v9 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool(v8);
  OUTLINED_FUNCTION_47_3(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_243(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_168(v13);
  v15 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxMetadata(v14);
  OUTLINED_FUNCTION_85(*(v15 + 20));
  OUTLINED_FUNCTION_5_6();
  if (v16)
  {
    v17 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.OneOf_Value(0);
    OUTLINED_FUNCTION_81_1(v17);
    OUTLINED_FUNCTION_5_6();
    if (!v16)
    {
      sub_1C8778ED8(v0, &qword_1EC2B7F40, &qword_1C8BF0298);
    }
  }

  else
  {
    OUTLINED_FUNCTION_14_6();
    OUTLINED_FUNCTION_184();
    sub_1C877B4F0();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_260();
}

void sub_1C885E168()
{
  OUTLINED_FUNCTION_261();
  OUTLINED_FUNCTION_154();
  if (v5)
  {
    OUTLINED_FUNCTION_254_0();
    sub_1C88593CC();
    sub_1C8778ED8(v4 + v3, &qword_1EC2B7F40, &qword_1C8BF0298);
    OUTLINED_FUNCTION_14_6();
    OUTLINED_FUNCTION_222_1();
    OUTLINED_FUNCTION_321();
    OUTLINED_FUNCTION_104_1();
    sub_1C8858F2C();
  }

  else
  {
    sub_1C8778ED8(v4 + v3, &qword_1EC2B7F40, &qword_1C8BF0298);
    OUTLINED_FUNCTION_14_6();
    OUTLINED_FUNCTION_221_1();
    OUTLINED_FUNCTION_321();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_260();

  free(v6);
}

uint64_t Siri_Nlu_Internal_SiriMessageTypes_AjaxMetadata.queryType.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxMetadata(v1);
  sub_1C8778ED8(v0 + *(v2 + 24), &qword_1EC2B7F48, &qword_1C8BF02A0);
  OUTLINED_FUNCTION_13_12();
  OUTLINED_FUNCTION_223_2();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryType(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_Internal_SiriMessageTypes_AjaxMetadata.queryType.modify()
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
  Type = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryType(v8);
  OUTLINED_FUNCTION_47_3(Type);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_243(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_168(v13);
  v15 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxMetadata(v14);
  OUTLINED_FUNCTION_85(*(v15 + 24));
  OUTLINED_FUNCTION_5_6();
  if (v16)
  {
    v17 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryType.OneOf_Value(0);
    OUTLINED_FUNCTION_81_1(v17);
    OUTLINED_FUNCTION_5_6();
    if (!v16)
    {
      sub_1C8778ED8(v0, &qword_1EC2B7F48, &qword_1C8BF02A0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_13_12();
    OUTLINED_FUNCTION_184();
    sub_1C877B4F0();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_260();
}

void sub_1C885E428()
{
  OUTLINED_FUNCTION_261();
  OUTLINED_FUNCTION_154();
  if (v5)
  {
    OUTLINED_FUNCTION_254_0();
    sub_1C88593CC();
    sub_1C8778ED8(v4 + v3, &qword_1EC2B7F48, &qword_1C8BF02A0);
    OUTLINED_FUNCTION_13_12();
    OUTLINED_FUNCTION_222_1();
    OUTLINED_FUNCTION_321();
    OUTLINED_FUNCTION_103_2();
    sub_1C8858F2C();
  }

  else
  {
    sub_1C8778ED8(v4 + v3, &qword_1EC2B7F48, &qword_1C8BF02A0);
    OUTLINED_FUNCTION_13_12();
    OUTLINED_FUNCTION_221_1();
    OUTLINED_FUNCTION_321();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_260();

  free(v6);
}

uint64_t sub_1C885E574()
{
  OUTLINED_FUNCTION_50();
  v1(0);
  OUTLINED_FUNCTION_253_1();
  v0(0);
  OUTLINED_FUNCTION_5();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Siri_Nlu_Internal_SiriMessageTypes_AjaxMetadata.query.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_74();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxMetadata(v5);
  OUTLINED_FUNCTION_57_0();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery(0);
  OUTLINED_FUNCTION_65(v0);
  if (v6)
  {
    v7 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.OneOf_Value(0);
    OUTLINED_FUNCTION_107_1(v7);
    result = OUTLINED_FUNCTION_65(v0);
    if (!v6)
    {
      return sub_1C8778ED8(v0, &qword_1EC2B7F50, &qword_1C8BF02A8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_12_9();
    OUTLINED_FUNCTION_121();
    return sub_1C877B4F0();
  }

  return result;
}

uint64_t Siri_Nlu_Internal_SiriMessageTypes_AjaxMetadata.query.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxMetadata(v1);
  sub_1C8778ED8(v0 + *(v2 + 28), &qword_1EC2B7F50, &qword_1C8BF02A8);
  OUTLINED_FUNCTION_12_9();
  OUTLINED_FUNCTION_223_2();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_Internal_SiriMessageTypes_AjaxMetadata.query.modify()
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
  v9 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery(v8);
  OUTLINED_FUNCTION_47_3(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_243(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_168(v13);
  v15 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxMetadata(v14);
  OUTLINED_FUNCTION_85(*(v15 + 28));
  OUTLINED_FUNCTION_5_6();
  if (v16)
  {
    v17 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.OneOf_Value(0);
    OUTLINED_FUNCTION_81_1(v17);
    OUTLINED_FUNCTION_5_6();
    if (!v16)
    {
      sub_1C8778ED8(v0, &qword_1EC2B7F50, &qword_1C8BF02A8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_12_9();
    OUTLINED_FUNCTION_184();
    sub_1C877B4F0();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_260();
}

void sub_1C885E830()
{
  OUTLINED_FUNCTION_261();
  OUTLINED_FUNCTION_154();
  if (v5)
  {
    OUTLINED_FUNCTION_254_0();
    sub_1C88593CC();
    sub_1C8778ED8(v4 + v3, &qword_1EC2B7F50, &qword_1C8BF02A8);
    OUTLINED_FUNCTION_12_9();
    OUTLINED_FUNCTION_222_1();
    OUTLINED_FUNCTION_321();
    OUTLINED_FUNCTION_102_1();
    sub_1C8858F2C();
  }

  else
  {
    sub_1C8778ED8(v4 + v3, &qword_1EC2B7F50, &qword_1C8BF02A8);
    OUTLINED_FUNCTION_12_9();
    OUTLINED_FUNCTION_221_1();
    OUTLINED_FUNCTION_321();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_260();

  free(v6);
}

uint64_t Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.generateRichContentTool.getter()
{
  OUTLINED_FUNCTION_93_1();
  v1 = OUTLINED_FUNCTION_253();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_31_3();
  v5 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.OneOf_Value(0);
  OUTLINED_FUNCTION_5_8(v5);
  if (v6)
  {
    sub_1C8778ED8(v0, &qword_1EC2B7F58, &qword_1C8BF02B0);
    return _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  }

  if (OUTLINED_FUNCTION_217_0())
  {
    sub_1C8858F2C();
    return _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  }

  OUTLINED_FUNCTION_36_2();
  OUTLINED_FUNCTION_5_0();
  return sub_1C877B4F0();
}

uint64_t Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.generateRichContentTool.setter()
{
  sub_1C8778ED8(v0, &qword_1EC2B7F58, &qword_1C8BF02B0);
  OUTLINED_FUNCTION_36_2();
  OUTLINED_FUNCTION_218();
  sub_1C877B4F0();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.OneOf_Value(0);
  OUTLINED_FUNCTION_48_4();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_34_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.generateRichContentTool.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_65_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_64_3(v2);
  v3 = OUTLINED_FUNCTION_230();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_66_1(v7);
  RichContentTool = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.GenerateRichContentTool(v8);
  OUTLINED_FUNCTION_80(RichContentTool);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_131_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_49_1(v13);
  v14 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.OneOf_Value(0);
  OUTLINED_FUNCTION_36_1(v14);
  if (v15)
  {
    sub_1C8778ED8(v0, &qword_1EC2B7F58, &qword_1C8BF02B0);
  }

  else
  {
    OUTLINED_FUNCTION_271();
    if (!swift_getEnumCaseMultiPayload())
    {
      OUTLINED_FUNCTION_36_2();
      OUTLINED_FUNCTION_82_3();
      sub_1C877B4F0();
      goto LABEL_7;
    }

    sub_1C8858F2C();
  }

  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
LABEL_7:
  OUTLINED_FUNCTION_260();
}

void sub_1C885EC58()
{
  OUTLINED_FUNCTION_32_6();
  if (v5)
  {
    OUTLINED_FUNCTION_184();
    sub_1C88593CC();
    sub_1C8778ED8(v4, &qword_1EC2B7F58, &qword_1C8BF02B0);
    OUTLINED_FUNCTION_36_2();
    OUTLINED_FUNCTION_156_1();
    sub_1C877B4F0();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_86_1();
    sub_1C8858F2C();
  }

  else
  {
    sub_1C8778ED8(v4, &qword_1EC2B7F58, &qword_1C8BF02B0);
    OUTLINED_FUNCTION_36_2();
    OUTLINED_FUNCTION_268();
    sub_1C877B4F0();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
  }

  free(v3);
  free(v2);
  free(v1);

  free(v0);
}

uint64_t Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.generateRichContentFromMediaIntentTool.getter()
{
  OUTLINED_FUNCTION_93_1();
  v1 = OUTLINED_FUNCTION_253();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_31_3();
  v5 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.OneOf_Value(0);
  OUTLINED_FUNCTION_5_8(v5);
  if (v6)
  {
    sub_1C8778ED8(v0, &qword_1EC2B7F58, &qword_1C8BF02B0);
  }

  else
  {
    v7 = OUTLINED_FUNCTION_217_0();
    if (v7 == 1)
    {
      OUTLINED_FUNCTION_34_3();
      OUTLINED_FUNCTION_5_0();
      return sub_1C877B4F0();
    }

    sub_1C8858F2C();
  }

  return _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
}

uint64_t Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.generateRichContentFromMediaIntentTool.setter()
{
  sub_1C8778ED8(v0, &qword_1EC2B7F58, &qword_1C8BF02B0);
  OUTLINED_FUNCTION_34_3();
  OUTLINED_FUNCTION_218();
  sub_1C877B4F0();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.OneOf_Value(0);
  OUTLINED_FUNCTION_48_4();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_34_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.generateRichContentFromMediaIntentTool.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_65_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_64_3(v2);
  v3 = OUTLINED_FUNCTION_230();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_66_1(v7);
  RichContentFromMediaIntentTool = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.GenerateRichContentFromMediaIntentTool(v8);
  OUTLINED_FUNCTION_80(RichContentFromMediaIntentTool);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_131_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_49_1(v13);
  v14 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.OneOf_Value(0);
  OUTLINED_FUNCTION_36_1(v14);
  if (v15)
  {
    sub_1C8778ED8(v0, &qword_1EC2B7F58, &qword_1C8BF02B0);
LABEL_7:
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_271();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    sub_1C8858F2C();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_34_3();
  OUTLINED_FUNCTION_82_3();
  sub_1C877B4F0();
LABEL_8:
  OUTLINED_FUNCTION_260();
}

void sub_1C885EFD0()
{
  OUTLINED_FUNCTION_32_6();
  if (v5)
  {
    OUTLINED_FUNCTION_184();
    sub_1C88593CC();
    sub_1C8778ED8(v4, &qword_1EC2B7F58, &qword_1C8BF02B0);
    OUTLINED_FUNCTION_34_3();
    OUTLINED_FUNCTION_156_1();
    sub_1C877B4F0();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_86_1();
    sub_1C8858F2C();
  }

  else
  {
    sub_1C8778ED8(v4, &qword_1EC2B7F58, &qword_1C8BF02B0);
    OUTLINED_FUNCTION_34_3();
    OUTLINED_FUNCTION_268();
    sub_1C877B4F0();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
  }

  free(v3);
  free(v2);
  free(v1);

  free(v0);
}

uint64_t Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.generateImageIntentTool.getter()
{
  OUTLINED_FUNCTION_93_1();
  v1 = OUTLINED_FUNCTION_253();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_31_3();
  v5 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.OneOf_Value(0);
  OUTLINED_FUNCTION_5_8(v5);
  if (v6)
  {
    sub_1C8778ED8(v0, &qword_1EC2B7F58, &qword_1C8BF02B0);
  }

  else
  {
    v7 = OUTLINED_FUNCTION_217_0();
    if (v7 == 2)
    {
      OUTLINED_FUNCTION_33_5();
      OUTLINED_FUNCTION_5_0();
      return sub_1C877B4F0();
    }

    sub_1C8858F2C();
  }

  return _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
}

uint64_t Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.generateImageIntentTool.setter()
{
  sub_1C8778ED8(v0, &qword_1EC2B7F58, &qword_1C8BF02B0);
  OUTLINED_FUNCTION_33_5();
  OUTLINED_FUNCTION_218();
  sub_1C877B4F0();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.OneOf_Value(0);
  OUTLINED_FUNCTION_48_4();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_34_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.generateImageIntentTool.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_65_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_64_3(v2);
  v3 = OUTLINED_FUNCTION_230();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_66_1(v7);
  ImageIntentTool = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.GenerateImageIntentTool(v8);
  OUTLINED_FUNCTION_80(ImageIntentTool);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_131_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_49_1(v13);
  v14 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.OneOf_Value(0);
  OUTLINED_FUNCTION_36_1(v14);
  if (v15)
  {
    sub_1C8778ED8(v0, &qword_1EC2B7F58, &qword_1C8BF02B0);
LABEL_7:
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_271();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 2)
  {
    sub_1C8858F2C();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_33_5();
  OUTLINED_FUNCTION_82_3();
  sub_1C877B4F0();
LABEL_8:
  OUTLINED_FUNCTION_260();
}

void sub_1C885F348()
{
  OUTLINED_FUNCTION_32_6();
  if (v5)
  {
    OUTLINED_FUNCTION_184();
    sub_1C88593CC();
    sub_1C8778ED8(v4, &qword_1EC2B7F58, &qword_1C8BF02B0);
    OUTLINED_FUNCTION_33_5();
    OUTLINED_FUNCTION_156_1();
    sub_1C877B4F0();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_86_1();
    sub_1C8858F2C();
  }

  else
  {
    sub_1C8778ED8(v4, &qword_1EC2B7F58, &qword_1C8BF02B0);
    OUTLINED_FUNCTION_33_5();
    OUTLINED_FUNCTION_268();
    sub_1C877B4F0();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
  }

  free(v3);
  free(v2);
  free(v1);

  free(v0);
}

uint64_t Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.generateKnowledgeResponseIntentTool.getter()
{
  OUTLINED_FUNCTION_93_1();
  v1 = OUTLINED_FUNCTION_253();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_31_3();
  v5 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.OneOf_Value(0);
  OUTLINED_FUNCTION_5_8(v5);
  if (v6)
  {
    sub_1C8778ED8(v0, &qword_1EC2B7F58, &qword_1C8BF02B0);
  }

  else
  {
    v7 = OUTLINED_FUNCTION_217_0();
    if (v7 == 3)
    {
      OUTLINED_FUNCTION_32_7();
      OUTLINED_FUNCTION_5_0();
      return sub_1C877B4F0();
    }

    sub_1C8858F2C();
  }

  return _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
}

uint64_t Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.generateKnowledgeResponseIntentTool.setter()
{
  sub_1C8778ED8(v0, &qword_1EC2B7F58, &qword_1C8BF02B0);
  OUTLINED_FUNCTION_32_7();
  OUTLINED_FUNCTION_218();
  sub_1C877B4F0();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.OneOf_Value(0);
  OUTLINED_FUNCTION_48_4();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_34_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.generateKnowledgeResponseIntentTool.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_65_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_64_3(v2);
  v3 = OUTLINED_FUNCTION_230();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_66_1(v7);
  KnowledgeResponseIntentTool = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.GenerateKnowledgeResponseIntentTool(v8);
  OUTLINED_FUNCTION_80(KnowledgeResponseIntentTool);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_131_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_49_1(v13);
  v14 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.OneOf_Value(0);
  OUTLINED_FUNCTION_36_1(v14);
  if (v15)
  {
    sub_1C8778ED8(v0, &qword_1EC2B7F58, &qword_1C8BF02B0);
LABEL_7:
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_271();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 3)
  {
    sub_1C8858F2C();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_32_7();
  OUTLINED_FUNCTION_82_3();
  sub_1C877B4F0();
LABEL_8:
  OUTLINED_FUNCTION_260();
}

void sub_1C885F6C0()
{
  OUTLINED_FUNCTION_32_6();
  if (v5)
  {
    OUTLINED_FUNCTION_184();
    sub_1C88593CC();
    sub_1C8778ED8(v4, &qword_1EC2B7F58, &qword_1C8BF02B0);
    OUTLINED_FUNCTION_32_7();
    OUTLINED_FUNCTION_156_1();
    sub_1C877B4F0();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_86_1();
    sub_1C8858F2C();
  }

  else
  {
    sub_1C8778ED8(v4, &qword_1EC2B7F58, &qword_1C8BF02B0);
    OUTLINED_FUNCTION_32_7();
    OUTLINED_FUNCTION_268();
    sub_1C877B4F0();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
  }

  free(v3);
  free(v2);
  free(v1);

  free(v0);
}

uint64_t Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool(v0);
  return OUTLINED_FUNCTION_242();
}

void static Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.OneOf_Value.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  KnowledgeResponseIntentTool = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.GenerateKnowledgeResponseIntentTool(0);
  v3 = OUTLINED_FUNCTION_80(KnowledgeResponseIntentTool);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_9_0();
  v4 = OUTLINED_FUNCTION_86();
  ImageIntentTool = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.GenerateImageIntentTool(v4);
  v6 = OUTLINED_FUNCTION_80(ImageIntentTool);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_9_0();
  v7 = OUTLINED_FUNCTION_86();
  RichContentFromMediaIntentTool = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.GenerateRichContentFromMediaIntentTool(v7);
  v9 = OUTLINED_FUNCTION_80(RichContentFromMediaIntentTool);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_149_1();
  RichContentTool = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.GenerateRichContentTool(0);
  v11 = OUTLINED_FUNCTION_80(RichContentTool);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_33();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.OneOf_Value(0);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_200_1();
  v15 = MEMORY[0x1EEE9AC00](v14);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B7F60, &qword_1C8BF02B8);
  OUTLINED_FUNCTION_80(v16);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_112_0();
  sub_1C88593CC();
  sub_1C88593CC();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_59_3();
      sub_1C88593CC();
      if (OUTLINED_FUNCTION_173_1() != 1)
      {
        goto LABEL_12;
      }

      OUTLINED_FUNCTION_34_3();
      sub_1C877B4F0();
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_0_10();
      sub_1C8776620(v29, v30, MEMORY[0x1E69AAC10]);
      OUTLINED_FUNCTION_220();
      sub_1C8BD517C();
      sub_1C8858F2C();
      OUTLINED_FUNCTION_271();
      goto LABEL_14;
    case 2u:
      OUTLINED_FUNCTION_59_3();
      sub_1C88593CC();
      if (OUTLINED_FUNCTION_173_1() != 2)
      {
        goto LABEL_12;
      }

      OUTLINED_FUNCTION_33_5();
      sub_1C877B4F0();
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_0_10();
      v20 = sub_1C8776620(v18, v19, MEMORY[0x1E69AAC10]);
      OUTLINED_FUNCTION_261_1(v1, v21, v22, v20);
      sub_1C8858F2C();
      goto LABEL_14;
    case 3u:
      OUTLINED_FUNCTION_59_3();
      sub_1C88593CC();
      if (OUTLINED_FUNCTION_173_1() == 3)
      {
        OUTLINED_FUNCTION_32_7();
        sub_1C877B4F0();
        sub_1C8BD49FC();
        OUTLINED_FUNCTION_0_10();
        sub_1C8776620(v23, v24, MEMORY[0x1E69AAC10]);
        v25 = OUTLINED_FUNCTION_240();
        OUTLINED_FUNCTION_261_1(v25, v26, v27, v28);
        sub_1C8858F2C();
        goto LABEL_14;
      }

      OUTLINED_FUNCTION_199_1();
      goto LABEL_12;
    default:
      OUTLINED_FUNCTION_59_3();
      sub_1C88593CC();
      if (OUTLINED_FUNCTION_173_1())
      {
        OUTLINED_FUNCTION_86_1();
LABEL_12:
        sub_1C8858F2C();
        sub_1C8778ED8(v0, &qword_1EC2B7F60, &qword_1C8BF02B8);
      }

      else
      {
        OUTLINED_FUNCTION_36_2();
        sub_1C877B4F0();
        sub_1C8BD49FC();
        OUTLINED_FUNCTION_0_10();
        sub_1C8776620(v31, v32, MEMORY[0x1E69AAC10]);
        OUTLINED_FUNCTION_268();
        sub_1C8BD517C();
        sub_1C8858F2C();
LABEL_14:
        sub_1C8858F2C();
        OUTLINED_FUNCTION_101_1();
        sub_1C8858F2C();
      }

      OUTLINED_FUNCTION_125();
      return;
  }
}

uint64_t Siri_Nlu_Internal_SiriMessageTypes_QueryType.implicit.getter()
{
  OUTLINED_FUNCTION_93_1();
  v1 = OUTLINED_FUNCTION_253();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_31_3();
  v5 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryType.OneOf_Value(0);
  OUTLINED_FUNCTION_5_8(v5);
  if (v6)
  {
    sub_1C8778ED8(v0, &qword_1EC2B7F68, &qword_1C8BF02C0);
    return _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  }

  v7 = OUTLINED_FUNCTION_217_0();
  if (v7 == 1)
  {
    sub_1C8858F2C();
    return _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  }

  OUTLINED_FUNCTION_31_4();
  OUTLINED_FUNCTION_5_0();
  return sub_1C877B4F0();
}

uint64_t Siri_Nlu_Internal_SiriMessageTypes_QueryType.implicit.setter()
{
  sub_1C8778ED8(v0, &qword_1EC2B7F68, &qword_1C8BF02C0);
  OUTLINED_FUNCTION_31_4();
  OUTLINED_FUNCTION_218();
  sub_1C877B4F0();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryType.OneOf_Value(0);
  OUTLINED_FUNCTION_48_4();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_34_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Siri_Nlu_Internal_SiriMessageTypes_QueryType.implicit.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_65_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_64_3(v2);
  v3 = OUTLINED_FUNCTION_230();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_66_1(v7);
  v9 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryType.Implicit(v8);
  OUTLINED_FUNCTION_80(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_131_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_49_1(v13);
  v14 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryType.OneOf_Value(0);
  OUTLINED_FUNCTION_36_1(v14);
  if (v15)
  {
    sub_1C8778ED8(v0, &qword_1EC2B7F68, &qword_1C8BF02C0);
  }

  else
  {
    OUTLINED_FUNCTION_271();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 1)
    {
      OUTLINED_FUNCTION_31_4();
      OUTLINED_FUNCTION_82_3();
      sub_1C877B4F0();
      goto LABEL_8;
    }

    sub_1C8858F2C();
  }

  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
LABEL_8:
  OUTLINED_FUNCTION_260();
}

void sub_1C886009C()
{
  OUTLINED_FUNCTION_32_6();
  if (v5)
  {
    OUTLINED_FUNCTION_184();
    sub_1C88593CC();
    sub_1C8778ED8(v4, &qword_1EC2B7F68, &qword_1C8BF02C0);
    OUTLINED_FUNCTION_31_4();
    OUTLINED_FUNCTION_156_1();
    sub_1C877B4F0();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_86_1();
    sub_1C8858F2C();
  }

  else
  {
    sub_1C8778ED8(v4, &qword_1EC2B7F68, &qword_1C8BF02C0);
    OUTLINED_FUNCTION_31_4();
    OUTLINED_FUNCTION_268();
    sub_1C877B4F0();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
  }

  free(v3);
  free(v2);
  free(v1);

  free(v0);
}

uint64_t Siri_Nlu_Internal_SiriMessageTypes_QueryType.explicit.getter()
{
  OUTLINED_FUNCTION_93_1();
  v1 = OUTLINED_FUNCTION_253();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_31_3();
  v5 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryType.OneOf_Value(0);
  OUTLINED_FUNCTION_5_8(v5);
  if (v6)
  {
    sub_1C8778ED8(v0, &qword_1EC2B7F68, &qword_1C8BF02C0);
  }

  else
  {
    v7 = OUTLINED_FUNCTION_217_0();
    if (v7 == 1)
    {
      OUTLINED_FUNCTION_30_4();
      OUTLINED_FUNCTION_5_0();
      return sub_1C877B4F0();
    }

    sub_1C8858F2C();
  }

  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryType.Explicit(0);
  v9 = OUTLINED_FUNCTION_207_1();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxRewrite(v9);
  v10 = OUTLINED_FUNCTION_27_1();
  return __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
}

uint64_t Siri_Nlu_Internal_SiriMessageTypes_QueryType.explicit.setter()
{
  sub_1C8778ED8(v0, &qword_1EC2B7F68, &qword_1C8BF02C0);
  OUTLINED_FUNCTION_30_4();
  OUTLINED_FUNCTION_218();
  sub_1C877B4F0();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryType.OneOf_Value(0);
  OUTLINED_FUNCTION_48_4();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_34_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Siri_Nlu_Internal_SiriMessageTypes_QueryType.explicit.modify()
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
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryType.Explicit(v9);
  OUTLINED_FUNCTION_21();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_110_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_43_3(v13);
  *(v1 + 32) = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryType.OneOf_Value(0);
  OUTLINED_FUNCTION_5_6();
  if (v14)
  {
    sub_1C8778ED8(v0, &qword_1EC2B7F68, &qword_1C8BF02C0);
LABEL_7:
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v16 = OUTLINED_FUNCTION_214_1();
    type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxRewrite(v16);
    OUTLINED_FUNCTION_157_1();
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_253();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    sub_1C8858F2C();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_30_4();
  OUTLINED_FUNCTION_254_0();
  sub_1C877B4F0();
LABEL_8:
  OUTLINED_FUNCTION_260();
}

void sub_1C886044C()
{
  OUTLINED_FUNCTION_32_6();
  if (v5)
  {
    OUTLINED_FUNCTION_184();
    sub_1C88593CC();
    sub_1C8778ED8(v4, &qword_1EC2B7F68, &qword_1C8BF02C0);
    OUTLINED_FUNCTION_30_4();
    OUTLINED_FUNCTION_156_1();
    sub_1C877B4F0();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_86_1();
    sub_1C8858F2C();
  }

  else
  {
    sub_1C8778ED8(v4, &qword_1EC2B7F68, &qword_1C8BF02C0);
    OUTLINED_FUNCTION_30_4();
    OUTLINED_FUNCTION_268();
    sub_1C877B4F0();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
  }

  free(v3);
  free(v2);
  free(v1);

  free(v0);
}

uint64_t Siri_Nlu_Internal_SiriMessageTypes_QueryType.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryType(v0);
  return OUTLINED_FUNCTION_242();
}

void static Siri_Nlu_Internal_SiriMessageTypes_QueryType.OneOf_Value.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v1 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryType.Explicit(0);
  v2 = OUTLINED_FUNCTION_80(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_33();
  v3 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryType.Implicit(0);
  v4 = OUTLINED_FUNCTION_80(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_18_4();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryType.OneOf_Value(0);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B7F70, &qword_1C8BF02C8);
  OUTLINED_FUNCTION_80(v7);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_112_0();
  sub_1C88593CC();
  sub_1C88593CC();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_141_1();
    sub_1C88593CC();
    if (OUTLINED_FUNCTION_268_0() == 1)
    {
      OUTLINED_FUNCTION_30_4();
      sub_1C877B4F0();
      OUTLINED_FUNCTION_300();
      static Siri_Nlu_Internal_SiriMessageTypes_QueryType.Explicit.== infix(_:_:)();
      sub_1C8858F2C();
      OUTLINED_FUNCTION_168_0();
LABEL_8:
      sub_1C8858F2C();
      OUTLINED_FUNCTION_100_2();
      sub_1C8858F2C();
      goto LABEL_9;
    }
  }

  else
  {
    OUTLINED_FUNCTION_141_1();
    sub_1C88593CC();
    if (OUTLINED_FUNCTION_268_0() != 1)
    {
      OUTLINED_FUNCTION_31_4();
      sub_1C877B4F0();
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_0_10();
      sub_1C8776620(v9, v10, MEMORY[0x1E69AAC10]);
      OUTLINED_FUNCTION_184();
      sub_1C8BD517C();
      sub_1C8858F2C();
      OUTLINED_FUNCTION_254_0();
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_86_1();
  }

  sub_1C8858F2C();
  sub_1C8778ED8(v0, &qword_1EC2B7F70, &qword_1C8BF02C8);
LABEL_9:
  OUTLINED_FUNCTION_125();
}

void static Siri_Nlu_Internal_SiriMessageTypes_QueryType.Explicit.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_68();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxRewrite(v2);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_149_1();
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_211();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B7F80, &qword_1C8BF02D8);
  OUTLINED_FUNCTION_128_1();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_74();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryType.Explicit(v9);
  OUTLINED_FUNCTION_213_1();
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_143_2();
  OUTLINED_FUNCTION_19(v0);
  if (v10)
  {
    OUTLINED_FUNCTION_19(v0 + v1);
    if (v10)
    {
      sub_1C8778ED8(v0, &qword_1EC2B7F78, &qword_1C8BF02D0);
LABEL_18:
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_0_10();
      v24 = sub_1C8776620(v22, v23, MEMORY[0x1E69AAC10]);
      v13 = OUTLINED_FUNCTION_191_0(v24);
      goto LABEL_19;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_268();
  sub_1C8778810();
  OUTLINED_FUNCTION_19(v0 + v1);
  if (v10)
  {
    OUTLINED_FUNCTION_99_1();
    sub_1C8858F2C();
LABEL_9:
    v11 = &qword_1EC2B7F80;
    v12 = &qword_1C8BF02D8;
LABEL_10:
    sub_1C8778ED8(v0, v11, v12);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_11_7();
  sub_1C877B4F0();
  OUTLINED_FUNCTION_233_0();
  if (v14)
  {
    v17 = v15 == v16;
  }

  else
  {
    v17 = 0;
  }

  if (!v17 && (sub_1C8BD529C() & 1) == 0)
  {
    sub_1C8858F2C();
    sub_1C8858F2C();
    v11 = &qword_1EC2B7F78;
    v12 = &qword_1C8BF02D0;
    goto LABEL_10;
  }

  sub_1C8BD49FC();
  OUTLINED_FUNCTION_0_10();
  v20 = sub_1C8776620(v18, v19, MEMORY[0x1E69AAC10]);
  v21 = OUTLINED_FUNCTION_220_0(v20);
  sub_1C8858F2C();
  OUTLINED_FUNCTION_230();
  sub_1C8858F2C();
  sub_1C8778ED8(v0, &qword_1EC2B7F78, &qword_1C8BF02D0);
  if (v21)
  {
    goto LABEL_18;
  }

LABEL_11:
  v13 = 0;
LABEL_19:
  OUTLINED_FUNCTION_157(v13);
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_Internal_SiriMessageTypes_QueryType.Explicit._0.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryType.Explicit(v1);
  sub_1C8778ED8(v0 + *(v2 + 20), &qword_1EC2B7F78, &qword_1C8BF02D0);
  OUTLINED_FUNCTION_11_7();
  OUTLINED_FUNCTION_223_2();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxRewrite(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_Internal_SiriMessageTypes_QueryType.Explicit._0.modify()
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
  v9 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxRewrite(v8);
  OUTLINED_FUNCTION_47_3(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_243(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_168(v13);
  v15 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryType.Explicit(v14);
  OUTLINED_FUNCTION_85(*(v15 + 20));
  v16 = OUTLINED_FUNCTION_5_6();
  if (v17)
  {
    OUTLINED_FUNCTION_218_1(v16);
    OUTLINED_FUNCTION_5_6();
    if (!v17)
    {
      sub_1C8778ED8(v0, &qword_1EC2B7F78, &qword_1C8BF02D0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_11_7();
    OUTLINED_FUNCTION_184();
    sub_1C877B4F0();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_260();
}

void sub_1C8860CDC()
{
  OUTLINED_FUNCTION_261();
  OUTLINED_FUNCTION_154();
  if (v5)
  {
    OUTLINED_FUNCTION_254_0();
    sub_1C88593CC();
    sub_1C8778ED8(v4 + v3, &qword_1EC2B7F78, &qword_1C8BF02D0);
    OUTLINED_FUNCTION_11_7();
    OUTLINED_FUNCTION_222_1();
    OUTLINED_FUNCTION_321();
    OUTLINED_FUNCTION_99_1();
    sub_1C8858F2C();
  }

  else
  {
    sub_1C8778ED8(v4 + v3, &qword_1EC2B7F78, &qword_1C8BF02D0);
    OUTLINED_FUNCTION_11_7();
    OUTLINED_FUNCTION_221_1();
    OUTLINED_FUNCTION_321();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_260();

  free(v6);
}

uint64_t Siri_Nlu_Internal_SiriMessageTypes_AjaxRewrite.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxRewrite(v0);
  return OUTLINED_FUNCTION_242();
}

void Siri_Nlu_Internal_SiriMessageTypes_GenAIPartner.chatgpt.modify()
{
  OUTLINED_FUNCTION_261();
  v2 = OUTLINED_FUNCTION_240_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_237_0(v3);
  v4 = OUTLINED_FUNCTION_230();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_238_0(v8);
  v10 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_GenAIPartner.ChatGPT(v9);
  OUTLINED_FUNCTION_80(v10);
  v12 = *(v11 + 64);
  v1[2] = __swift_coroFrameAllocStub(v12);
  v1[3] = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_82_3();
  sub_1C8778810();
  v1[4] = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_GenAIPartner.OneOf_Value(0);
  v13 = OUTLINED_FUNCTION_155_0();
  OUTLINED_FUNCTION_76(v13, v14, v15);
  if (v16)
  {
    sub_1C8778ED8(v0, &qword_1EC2B7F88, &qword_1C8BF02E0);
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  }

  else
  {
    OUTLINED_FUNCTION_64_4();
    OUTLINED_FUNCTION_251_0();
    sub_1C877B4F0();
  }

  OUTLINED_FUNCTION_260();
}

void sub_1C88610E8()
{
  OUTLINED_FUNCTION_32_6();
  if (v5)
  {
    OUTLINED_FUNCTION_184();
    sub_1C88593CC();
    sub_1C8778ED8(v4, &qword_1EC2B7F88, &qword_1C8BF02E0);
    OUTLINED_FUNCTION_64_4();
    OUTLINED_FUNCTION_156_1();
    sub_1C877B4F0();
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_86_1();
    sub_1C8858F2C();
  }

  else
  {
    sub_1C8778ED8(v4, &qword_1EC2B7F88, &qword_1C8BF02E0);
    OUTLINED_FUNCTION_64_4();
    OUTLINED_FUNCTION_268();
    sub_1C877B4F0();
    OUTLINED_FUNCTION_53();
  }

  free(v3);
  free(v2);
  free(v1);

  free(v0);
}

uint64_t Siri_Nlu_Internal_SiriMessageTypes_GenAIPartner.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_GenAIPartner(v0);
  return OUTLINED_FUNCTION_242();
}

void static Siri_Nlu_Internal_SiriMessageTypes_GenAIPartner.OneOf_Value.== infix(_:_:)()
{
  OUTLINED_FUNCTION_261();
  v0 = OUTLINED_FUNCTION_67_0();
  v1 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_GenAIPartner.ChatGPT(v0);
  v2 = OUTLINED_FUNCTION_80(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_241_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_234_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B7F90, &qword_1C8BF02E8);
  OUTLINED_FUNCTION_80(v4);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_103();
  sub_1C88593CC();
  OUTLINED_FUNCTION_256_1();
  sub_1C877B4F0();
  OUTLINED_FUNCTION_258_1();
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_0_10();
  v8 = sub_1C8776620(v6, v7, MEMORY[0x1E69AAC10]);
  OUTLINED_FUNCTION_191_0(v8);
  sub_1C8858F2C();
  OUTLINED_FUNCTION_271();
  sub_1C8858F2C();
  OUTLINED_FUNCTION_260();
}

uint64_t Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.implicit.getter()
{
  OUTLINED_FUNCTION_93_1();
  v1 = OUTLINED_FUNCTION_253();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_31_3();
  v5 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.OneOf_Value(0);
  OUTLINED_FUNCTION_5_8(v5);
  if (v6)
  {
    sub_1C8778ED8(v0, &qword_1EC2B7F98, &qword_1C8BF02F0);
LABEL_6:
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.Implicit(0);
    v8 = OUTLINED_FUNCTION_207_1();
    type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.ImplicitQuery(v8);
    v9 = OUTLINED_FUNCTION_27_1();
    return __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  }

  v7 = OUTLINED_FUNCTION_217_0();
  if (v7 == 1)
  {
    sub_1C8858F2C();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_28_7();
  OUTLINED_FUNCTION_5_0();
  return sub_1C877B4F0();
}

uint64_t Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.implicit.setter()
{
  sub_1C8778ED8(v0, &qword_1EC2B7F98, &qword_1C8BF02F0);
  OUTLINED_FUNCTION_28_7();
  OUTLINED_FUNCTION_218();
  sub_1C877B4F0();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.OneOf_Value(0);
  OUTLINED_FUNCTION_48_4();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_34_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.implicit.modify()
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
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.Implicit(v9);
  OUTLINED_FUNCTION_21();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_110_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_43_3(v13);
  *(v1 + 32) = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.OneOf_Value(0);
  OUTLINED_FUNCTION_5_6();
  if (v14)
  {
    sub_1C8778ED8(v0, &qword_1EC2B7F98, &qword_1C8BF02F0);
  }

  else
  {
    OUTLINED_FUNCTION_253();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload != 1)
    {
      OUTLINED_FUNCTION_28_7();
      OUTLINED_FUNCTION_254_0();
      sub_1C877B4F0();
      goto LABEL_8;
    }

    sub_1C8858F2C();
  }

  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v16 = OUTLINED_FUNCTION_214_1();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.ImplicitQuery(v16);
  OUTLINED_FUNCTION_157_1();
  OUTLINED_FUNCTION_5();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
LABEL_8:
  OUTLINED_FUNCTION_260();
}

void sub_1C8861724()
{
  OUTLINED_FUNCTION_32_6();
  if (v5)
  {
    OUTLINED_FUNCTION_184();
    sub_1C88593CC();
    sub_1C8778ED8(v4, &qword_1EC2B7F98, &qword_1C8BF02F0);
    OUTLINED_FUNCTION_28_7();
    OUTLINED_FUNCTION_156_1();
    sub_1C877B4F0();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_86_1();
    sub_1C8858F2C();
  }

  else
  {
    sub_1C8778ED8(v4, &qword_1EC2B7F98, &qword_1C8BF02F0);
    OUTLINED_FUNCTION_28_7();
    OUTLINED_FUNCTION_268();
    sub_1C877B4F0();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
  }

  free(v3);
  free(v2);
  free(v1);

  free(v0);
}

uint64_t Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.explicit.getter()
{
  OUTLINED_FUNCTION_93_1();
  v1 = OUTLINED_FUNCTION_253();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_31_3();
  v5 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.OneOf_Value(0);
  OUTLINED_FUNCTION_5_8(v5);
  if (v6)
  {
    sub_1C8778ED8(v0, &qword_1EC2B7F98, &qword_1C8BF02F0);
  }

  else
  {
    v7 = OUTLINED_FUNCTION_217_0();
    if (v7 == 1)
    {
      OUTLINED_FUNCTION_27_4();
      OUTLINED_FUNCTION_5_0();
      return sub_1C877B4F0();
    }

    sub_1C8858F2C();
  }

  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.Explicit(0);
  v9 = OUTLINED_FUNCTION_207_1();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.ExplicitQuery(v9);
  v10 = OUTLINED_FUNCTION_27_1();
  return __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
}

uint64_t Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.explicit.setter()
{
  sub_1C8778ED8(v0, &qword_1EC2B7F98, &qword_1C8BF02F0);
  OUTLINED_FUNCTION_27_4();
  OUTLINED_FUNCTION_218();
  sub_1C877B4F0();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.OneOf_Value(0);
  OUTLINED_FUNCTION_48_4();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_34_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.explicit.modify()
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
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.Explicit(v9);
  OUTLINED_FUNCTION_21();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_110_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_43_3(v13);
  *(v1 + 32) = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.OneOf_Value(0);
  OUTLINED_FUNCTION_5_6();
  if (v14)
  {
    sub_1C8778ED8(v0, &qword_1EC2B7F98, &qword_1C8BF02F0);
LABEL_7:
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v16 = OUTLINED_FUNCTION_214_1();
    type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.ExplicitQuery(v16);
    OUTLINED_FUNCTION_157_1();
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_253();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    sub_1C8858F2C();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_27_4();
  OUTLINED_FUNCTION_254_0();
  sub_1C877B4F0();
LABEL_8:
  OUTLINED_FUNCTION_260();
}

void sub_1C8861AD4()
{
  OUTLINED_FUNCTION_32_6();
  if (v5)
  {
    OUTLINED_FUNCTION_184();
    sub_1C88593CC();
    sub_1C8778ED8(v4, &qword_1EC2B7F98, &qword_1C8BF02F0);
    OUTLINED_FUNCTION_27_4();
    OUTLINED_FUNCTION_156_1();
    sub_1C877B4F0();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_86_1();
    sub_1C8858F2C();
  }

  else
  {
    sub_1C8778ED8(v4, &qword_1EC2B7F98, &qword_1C8BF02F0);
    OUTLINED_FUNCTION_27_4();
    OUTLINED_FUNCTION_268();
    sub_1C877B4F0();
    OUTLINED_FUNCTION_258();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_53();
  }

  free(v3);
  free(v2);
  free(v1);

  free(v0);
}

uint64_t Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery(v0);
  return OUTLINED_FUNCTION_242();
}

void static Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.OneOf_Value.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v1 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.Explicit(0);
  v2 = OUTLINED_FUNCTION_80(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_33();
  v3 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.Implicit(0);
  v4 = OUTLINED_FUNCTION_80(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_18_4();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.OneOf_Value(0);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B7FA0, &qword_1C8BF02F8);
  OUTLINED_FUNCTION_80(v7);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_112_0();
  sub_1C88593CC();
  sub_1C88593CC();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_141_1();
    sub_1C88593CC();
    if (OUTLINED_FUNCTION_268_0() == 1)
    {
      OUTLINED_FUNCTION_27_4();
      sub_1C877B4F0();
      OUTLINED_FUNCTION_254_0();
      static Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.Explicit.== infix(_:_:)();
      sub_1C8858F2C();
      OUTLINED_FUNCTION_184();
LABEL_8:
      sub_1C8858F2C();
      OUTLINED_FUNCTION_98_0();
      sub_1C8858F2C();
      goto LABEL_9;
    }
  }

  else
  {
    OUTLINED_FUNCTION_141_1();
    sub_1C88593CC();
    if (OUTLINED_FUNCTION_268_0() != 1)
    {
      OUTLINED_FUNCTION_28_7();
      sub_1C877B4F0();
      OUTLINED_FUNCTION_168_0();
      static Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.Implicit.== infix(_:_:)();
      sub_1C8858F2C();
      OUTLINED_FUNCTION_300();
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_169();
  }

  sub_1C8858F2C();
  sub_1C8778ED8(v0, &qword_1EC2B7FA0, &qword_1C8BF02F8);
LABEL_9:
  OUTLINED_FUNCTION_125();
}

void static Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.Implicit.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v1 = OUTLINED_FUNCTION_84();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.ImplicitQuery(v1);
  OUTLINED_FUNCTION_49_3();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_18_4();
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_103();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B7FB0, &qword_1C8BF0308);
  OUTLINED_FUNCTION_128_1();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_74();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.Implicit(v8);
  OUTLINED_FUNCTION_213_1();
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_143_2();
  OUTLINED_FUNCTION_43_1(v0);
  if (v9)
  {
    OUTLINED_FUNCTION_37_2();
    if (v9)
    {
      sub_1C8778ED8(v0, &qword_1EC2B7FA8, &qword_1C8BF0300);
LABEL_12:
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_0_10();
      sub_1C8776620(v13, v14, MEMORY[0x1E69AAC10]);
      v15 = OUTLINED_FUNCTION_5_0();
      v10 = OUTLINED_FUNCTION_232_1(v15, v16, v17, v18);
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_253();
  sub_1C8778810();
  OUTLINED_FUNCTION_37_2();
  if (v9)
  {
    OUTLINED_FUNCTION_97_1();
    sub_1C8858F2C();
LABEL_9:
    sub_1C8778ED8(v0, &qword_1EC2B7FB0, &qword_1C8BF0308);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_10_7();
  OUTLINED_FUNCTION_224_1();
  OUTLINED_FUNCTION_168_0();
  static Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.ImplicitQuery.== infix(_:_:)();
  v12 = v11;
  sub_1C8858F2C();
  OUTLINED_FUNCTION_178_2();
  sub_1C8858F2C();
  sub_1C8778ED8(v0, &qword_1EC2B7FA8, &qword_1C8BF0300);
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

void static Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.Explicit.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v1 = OUTLINED_FUNCTION_84();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.ExplicitQuery(v1);
  OUTLINED_FUNCTION_49_3();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_18_4();
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_103();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B7FC0, &qword_1C8BF0318);
  OUTLINED_FUNCTION_128_1();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_74();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.Explicit(v8);
  OUTLINED_FUNCTION_213_1();
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_143_2();
  OUTLINED_FUNCTION_43_1(v0);
  if (v9)
  {
    OUTLINED_FUNCTION_37_2();
    if (v9)
    {
      sub_1C8778ED8(v0, &qword_1EC2B7FB8, &qword_1C8BF0310);
LABEL_12:
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_0_10();
      sub_1C8776620(v13, v14, MEMORY[0x1E69AAC10]);
      v15 = OUTLINED_FUNCTION_5_0();
      v10 = OUTLINED_FUNCTION_232_1(v15, v16, v17, v18);
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_253();
  sub_1C8778810();
  OUTLINED_FUNCTION_37_2();
  if (v9)
  {
    OUTLINED_FUNCTION_96_1();
    sub_1C8858F2C();
LABEL_9:
    sub_1C8778ED8(v0, &qword_1EC2B7FC0, &qword_1C8BF0318);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_9_9();
  OUTLINED_FUNCTION_224_1();
  OUTLINED_FUNCTION_168_0();
  static Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.ExplicitQuery.== infix(_:_:)();
  v12 = v11;
  sub_1C8858F2C();
  OUTLINED_FUNCTION_178_2();
  sub_1C8858F2C();
  sub_1C8778ED8(v0, &qword_1EC2B7FB8, &qword_1C8BF0310);
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

uint64_t Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.Implicit._0.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_112_0();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.Implicit(0);
  OUTLINED_FUNCTION_164_2();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.ImplicitQuery(0);
  v5 = OUTLINED_FUNCTION_65(v0);
  if (v6)
  {
    OUTLINED_FUNCTION_255_1(v5);
    type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.CorrectionOutcome(0);
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
    result = OUTLINED_FUNCTION_65(v0);
    if (!v6)
    {
      return sub_1C8778ED8(v0, &qword_1EC2B7FA8, &qword_1C8BF0300);
    }
  }

  else
  {
    OUTLINED_FUNCTION_10_7();
    OUTLINED_FUNCTION_312();
    return sub_1C877B4F0();
  }

  return result;
}

uint64_t Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.Implicit._0.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.Implicit(v1);
  sub_1C8778ED8(v0 + *(v2 + 20), &qword_1EC2B7FA8, &qword_1C8BF0300);
  OUTLINED_FUNCTION_10_7();
  OUTLINED_FUNCTION_223_2();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.ImplicitQuery(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.Implicit._0.modify()
{
  OUTLINED_FUNCTION_261();
  v0 = OUTLINED_FUNCTION_251();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_18_1(v1);
  v2 = OUTLINED_FUNCTION_104_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_107(v6);
  v8 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.ImplicitQuery(v7);
  OUTLINED_FUNCTION_51_0(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_243(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_168(v12);
  v14 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.Implicit(v13);
  OUTLINED_FUNCTION_116_2(v14);
  OUTLINED_FUNCTION_179();
  v15 = OUTLINED_FUNCTION_72(v6);
  if (v16)
  {
    OUTLINED_FUNCTION_254_1(v15);
    type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.CorrectionOutcome(0);
    v17 = OUTLINED_FUNCTION_73_3();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
    OUTLINED_FUNCTION_72(v6);
    if (!v16)
    {
      sub_1C8778ED8(v6, &qword_1EC2B7FA8, &qword_1C8BF0300);
    }
  }

  else
  {
    OUTLINED_FUNCTION_10_7();
    OUTLINED_FUNCTION_168_0();
    sub_1C877B4F0();
  }

  OUTLINED_FUNCTION_260();
}

void sub_1C886258C()
{
  OUTLINED_FUNCTION_261();
  OUTLINED_FUNCTION_154();
  if (v5)
  {
    OUTLINED_FUNCTION_254_0();
    sub_1C88593CC();
    sub_1C8778ED8(v4 + v3, &qword_1EC2B7FA8, &qword_1C8BF0300);
    OUTLINED_FUNCTION_10_7();
    OUTLINED_FUNCTION_222_1();
    OUTLINED_FUNCTION_321();
    OUTLINED_FUNCTION_97_1();
    sub_1C8858F2C();
  }

  else
  {
    sub_1C8778ED8(v4 + v3, &qword_1EC2B7FA8, &qword_1C8BF0300);
    OUTLINED_FUNCTION_10_7();
    OUTLINED_FUNCTION_221_1();
    OUTLINED_FUNCTION_321();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_260();

  free(v6);
}

uint64_t Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.Explicit._0.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_112_0();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.Explicit(0);
  OUTLINED_FUNCTION_164_2();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.ExplicitQuery(0);
  v5 = OUTLINED_FUNCTION_65(v0);
  if (v6)
  {
    OUTLINED_FUNCTION_255_1(v5);
    type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.CorrectionOutcome(0);
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
    type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_GenAIPartner(0);
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
    result = OUTLINED_FUNCTION_65(v0);
    if (!v6)
    {
      return sub_1C8778ED8(v0, &qword_1EC2B7FB8, &qword_1C8BF0310);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9_9();
    OUTLINED_FUNCTION_312();
    return sub_1C877B4F0();
  }

  return result;
}

uint64_t Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.Explicit._0.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.Explicit(v1);
  sub_1C8778ED8(v0 + *(v2 + 20), &qword_1EC2B7FB8, &qword_1C8BF0310);
  OUTLINED_FUNCTION_9_9();
  OUTLINED_FUNCTION_223_2();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.ExplicitQuery(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.Explicit._0.modify()
{
  OUTLINED_FUNCTION_261();
  v0 = OUTLINED_FUNCTION_251();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_18_1(v1);
  v2 = OUTLINED_FUNCTION_104_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_107(v6);
  v8 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.ExplicitQuery(v7);
  OUTLINED_FUNCTION_51_0(v8);
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_243(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_168(v12);
  v14 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.Explicit(v13);
  OUTLINED_FUNCTION_116_2(v14);
  OUTLINED_FUNCTION_179();
  v15 = OUTLINED_FUNCTION_72(v6);
  if (v16)
  {
    OUTLINED_FUNCTION_254_1(v15);
    type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.CorrectionOutcome(0);
    v17 = OUTLINED_FUNCTION_73_3();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
    type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_GenAIPartner(0);
    v21 = OUTLINED_FUNCTION_73_3();
    __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
    OUTLINED_FUNCTION_72(v6);
    if (!v16)
    {
      sub_1C8778ED8(v6, &qword_1EC2B7FB8, &qword_1C8BF0310);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9_9();
    OUTLINED_FUNCTION_168_0();
    sub_1C877B4F0();
  }

  OUTLINED_FUNCTION_260();
}

void sub_1C88629AC()
{
  OUTLINED_FUNCTION_261();
  OUTLINED_FUNCTION_154();
  if (v5)
  {
    OUTLINED_FUNCTION_254_0();
    sub_1C88593CC();
    sub_1C8778ED8(v4 + v3, &qword_1EC2B7FB8, &qword_1C8BF0310);
    OUTLINED_FUNCTION_9_9();
    OUTLINED_FUNCTION_222_1();
    OUTLINED_FUNCTION_321();
    OUTLINED_FUNCTION_96_1();
    sub_1C8858F2C();
  }

  else
  {
    sub_1C8778ED8(v4 + v3, &qword_1EC2B7FB8, &qword_1C8BF0310);
    OUTLINED_FUNCTION_9_9();
    OUTLINED_FUNCTION_221_1();
    OUTLINED_FUNCTION_321();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_260();

  free(v6);
}

uint64_t sub_1C8862B50(void (*a1)(uint64_t))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B7FC8, &qword_1C8BF0320);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_74();
  a1(v5);
  sub_1C8778810();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.CorrectionOutcome(0);
  OUTLINED_FUNCTION_65(v1);
  if (v6)
  {
    v7 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.CorrectionOutcome.OneOf_Value(0);
    OUTLINED_FUNCTION_107_1(v7);
    result = OUTLINED_FUNCTION_65(v1);
    if (!v6)
    {
      return sub_1C8778ED8(v1, &qword_1EC2B7FC8, &qword_1C8BF0320);
    }
  }

  else
  {
    OUTLINED_FUNCTION_121();
    return sub_1C877B4F0();
  }

  return result;
}

uint64_t sub_1C8862C6C()
{
  v1 = OUTLINED_FUNCTION_241();
  v3 = v2(v1);
  sub_1C8778ED8(v0 + *(v3 + 28), &qword_1EC2B7FC8, &qword_1C8BF0320);
  OUTLINED_FUNCTION_2_14();
  OUTLINED_FUNCTION_223_2();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.CorrectionOutcome(0);
  v4 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

void Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.ImplicitQuery.correctionOutcome.modify()
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
  v9 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.CorrectionOutcome(v8);
  OUTLINED_FUNCTION_47_3(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_243(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_168(v13);
  v15 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.ImplicitQuery(v14);
  OUTLINED_FUNCTION_85(*(v15 + 28));
  OUTLINED_FUNCTION_5_6();
  if (v16)
  {
    v17 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.CorrectionOutcome.OneOf_Value(0);
    OUTLINED_FUNCTION_81_1(v17);
    OUTLINED_FUNCTION_5_6();
    if (!v16)
    {
      sub_1C8778ED8(v0, &qword_1EC2B7FC8, &qword_1C8BF0320);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_14();
    OUTLINED_FUNCTION_184();
    sub_1C877B4F0();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_260();
}

uint64_t sub_1C8862E4C()
{
  OUTLINED_FUNCTION_50();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_80(v4);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_27_0();
  v1(v6);
  OUTLINED_FUNCTION_70_2();
  sub_1C8778810();
  v0(0);
  v7 = OUTLINED_FUNCTION_213();
  OUTLINED_FUNCTION_76(v7, v8, v9);
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = OUTLINED_FUNCTION_117_2();
  sub_1C8778ED8(v12, v13, v14);
  return v11;
}

uint64_t sub_1C8862F2C()
{
  OUTLINED_FUNCTION_50();
  v1(0);
  OUTLINED_FUNCTION_253_1();
  v0(0);
  OUTLINED_FUNCTION_5();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.ImplicitQuery.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.ImplicitQuery(v0);
  return OUTLINED_FUNCTION_242();
}

uint64_t Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.ExplicitQuery.rewrittenUtterance.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

void Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.ExplicitQuery.correctionOutcome.modify()
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
  v9 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.CorrectionOutcome(v8);
  OUTLINED_FUNCTION_47_3(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_243(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_168(v13);
  v15 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.ExplicitQuery(v14);
  OUTLINED_FUNCTION_85(*(v15 + 28));
  OUTLINED_FUNCTION_5_6();
  if (v16)
  {
    v17 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.CorrectionOutcome.OneOf_Value(0);
    OUTLINED_FUNCTION_81_1(v17);
    OUTLINED_FUNCTION_5_6();
    if (!v16)
    {
      sub_1C8778ED8(v0, &qword_1EC2B7FC8, &qword_1C8BF0320);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_14();
    OUTLINED_FUNCTION_184();
    sub_1C877B4F0();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_260();
}

void sub_1C88631B4()
{
  OUTLINED_FUNCTION_261();
  OUTLINED_FUNCTION_154();
  if (v5)
  {
    OUTLINED_FUNCTION_254_0();
    sub_1C88593CC();
    sub_1C8778ED8(v4 + v3, &qword_1EC2B7FC8, &qword_1C8BF0320);
    OUTLINED_FUNCTION_2_14();
    OUTLINED_FUNCTION_222_1();
    OUTLINED_FUNCTION_321();
    OUTLINED_FUNCTION_43_4();
    sub_1C8858F2C();
  }

  else
  {
    sub_1C8778ED8(v4 + v3, &qword_1EC2B7FC8, &qword_1C8BF0320);
    OUTLINED_FUNCTION_2_14();
    OUTLINED_FUNCTION_221_1();
    OUTLINED_FUNCTION_321();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_260();

  free(v6);
}

uint64_t Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.ExplicitQuery.redactedUtterance.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.ExplicitQuery.partner.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_74();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.ExplicitQuery(v5);
  OUTLINED_FUNCTION_57_0();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_GenAIPartner(0);
  OUTLINED_FUNCTION_65(v0);
  if (v6)
  {
    v7 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_GenAIPartner.OneOf_Value(0);
    OUTLINED_FUNCTION_107_1(v7);
    result = OUTLINED_FUNCTION_65(v0);
    if (!v6)
    {
      return sub_1C8778ED8(v0, &qword_1EC2B7FD0, &qword_1C8BF0328);
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_10();
    OUTLINED_FUNCTION_121();
    return sub_1C877B4F0();
  }

  return result;
}

uint64_t Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.ExplicitQuery.partner.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.ExplicitQuery(v1);
  sub_1C8778ED8(v0 + *(v2 + 32), &qword_1EC2B7FD0, &qword_1C8BF0328);
  OUTLINED_FUNCTION_8_10();
  OUTLINED_FUNCTION_223_2();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_GenAIPartner(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.ExplicitQuery.partner.modify()
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
  v9 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_GenAIPartner(v8);
  OUTLINED_FUNCTION_47_3(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_243(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_168(v13);
  v15 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.ExplicitQuery(v14);
  OUTLINED_FUNCTION_85(*(v15 + 32));
  OUTLINED_FUNCTION_5_6();
  if (v16)
  {
    v17 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_GenAIPartner.OneOf_Value(0);
    OUTLINED_FUNCTION_81_1(v17);
    OUTLINED_FUNCTION_5_6();
    if (!v16)
    {
      sub_1C8778ED8(v0, &qword_1EC2B7FD0, &qword_1C8BF0328);
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_10();
    OUTLINED_FUNCTION_184();
    sub_1C877B4F0();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_260();
}

void sub_1C88635C8()
{
  OUTLINED_FUNCTION_261();
  OUTLINED_FUNCTION_154();
  if (v5)
  {
    OUTLINED_FUNCTION_254_0();
    sub_1C88593CC();
    sub_1C8778ED8(v4 + v3, &qword_1EC2B7FD0, &qword_1C8BF0328);
    OUTLINED_FUNCTION_8_10();
    OUTLINED_FUNCTION_222_1();
    OUTLINED_FUNCTION_321();
    OUTLINED_FUNCTION_95_1();
    sub_1C8858F2C();
  }

  else
  {
    sub_1C8778ED8(v4 + v3, &qword_1EC2B7FD0, &qword_1C8BF0328);
    OUTLINED_FUNCTION_8_10();
    OUTLINED_FUNCTION_221_1();
    OUTLINED_FUNCTION_321();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_260();

  free(v6);
}

uint64_t Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.ExplicitQuery.hasPartner.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B7FD0, &qword_1C8BF0328);
  OUTLINED_FUNCTION_80(v1);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v2);
  v3 = OUTLINED_FUNCTION_74();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.ExplicitQuery(v3);
  sub_1C8778810();
  v4 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_GenAIPartner(0);
  OUTLINED_FUNCTION_76(v0, 1, v4);
  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = OUTLINED_FUNCTION_121();
  sub_1C8778ED8(v7, v8, &qword_1C8BF0328);
  return v6;
}

Swift::Void __swiftcall Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.ExplicitQuery.clearPartner()()
{
  v1 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.ExplicitQuery(0);
  sub_1C8778ED8(v0 + *(v1 + 32), &qword_1EC2B7FD0, &qword_1C8BF0328);
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_GenAIPartner(0);
  OUTLINED_FUNCTION_5();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t sub_1C88637CC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 24);
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_21();
  v7 = *(v6 + 16);

  return v7(a2, v2 + v4, v5);
}

uint64_t sub_1C8863860()
{
  v2 = OUTLINED_FUNCTION_241();
  v4 = *(v3(v2) + 24);
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_21();
  v6 = *(v5 + 40);

  return v6(v1 + v4, v0);
}

uint64_t Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.ExplicitQuery.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.ExplicitQuery(v0);
  return OUTLINED_FUNCTION_242();
}

void sub_1C88639C8()
{
  OUTLINED_FUNCTION_261();
  v1 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_80(v4);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C8778810();
  v1(0);
  v6 = OUTLINED_FUNCTION_155_0();
  OUTLINED_FUNCTION_76(v6, v7, v8);
  if (v9)
  {
    OUTLINED_FUNCTION_119();
    sub_1C8778ED8(v10, v11, v12);
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  }

  else
  {
    OUTLINED_FUNCTION_5_0();
    sub_1C877B4F0();
  }

  OUTLINED_FUNCTION_260();
}

uint64_t sub_1C8863AD4(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, void (*a5)(void))
{
  sub_1C8778ED8(v5, a2, a3);
  OUTLINED_FUNCTION_254_0();
  sub_1C877B4F0();
  a5(0);
  v7 = OUTLINED_FUNCTION_117();

  return __swift_storeEnumTagSinglePayload(v7, 0, 1, v8);
}

void Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.CorrectionOutcome.undo.modify()
{
  OUTLINED_FUNCTION_261();
  v2 = OUTLINED_FUNCTION_240_1();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_237_0(v3);
  v4 = OUTLINED_FUNCTION_230();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_238_0(v8);
  v10 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.CorrectionOutcome.Undo(v9);
  OUTLINED_FUNCTION_80(v10);
  v12 = *(v11 + 64);
  v1[2] = __swift_coroFrameAllocStub(v12);
  v1[3] = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_82_3();
  sub_1C8778810();
  v1[4] = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.CorrectionOutcome.OneOf_Value(0);
  v13 = OUTLINED_FUNCTION_155_0();
  OUTLINED_FUNCTION_76(v13, v14, v15);
  if (v16)
  {
    sub_1C8778ED8(v0, &qword_1EC2B7FD8, &qword_1C8BF0330);
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  }

  else
  {
    OUTLINED_FUNCTION_62_2();
    OUTLINED_FUNCTION_251_0();
    sub_1C877B4F0();
  }

  OUTLINED_FUNCTION_260();
}

void sub_1C8863C60()
{
  OUTLINED_FUNCTION_32_6();
  if (v5)
  {
    OUTLINED_FUNCTION_184();
    sub_1C88593CC();
    sub_1C8778ED8(v4, &qword_1EC2B7FD8, &qword_1C8BF0330);
    OUTLINED_FUNCTION_62_2();
    OUTLINED_FUNCTION_156_1();
    sub_1C877B4F0();
    OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_86_1();
    sub_1C8858F2C();
  }

  else
  {
    sub_1C8778ED8(v4, &qword_1EC2B7FD8, &qword_1C8BF0330);
    OUTLINED_FUNCTION_62_2();
    OUTLINED_FUNCTION_268();
    sub_1C877B4F0();
    OUTLINED_FUNCTION_53();
  }

  free(v3);
  free(v2);
  free(v1);

  free(v0);
}

uint64_t Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.CorrectionOutcome.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.CorrectionOutcome(v0);
  return OUTLINED_FUNCTION_242();
}

void static Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.CorrectionOutcome.OneOf_Value.== infix(_:_:)()
{
  OUTLINED_FUNCTION_261();
  v0 = OUTLINED_FUNCTION_67_0();
  v1 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.CorrectionOutcome.Undo(v0);
  v2 = OUTLINED_FUNCTION_80(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_241_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_234_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B7FE0, &qword_1C8BF0338);
  OUTLINED_FUNCTION_80(v4);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_103();
  sub_1C88593CC();
  OUTLINED_FUNCTION_256_1();
  sub_1C877B4F0();
  OUTLINED_FUNCTION_258_1();
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_0_10();
  v8 = sub_1C8776620(v6, v7, MEMORY[0x1E69AAC10]);
  OUTLINED_FUNCTION_191_0(v8);
  sub_1C8858F2C();
  OUTLINED_FUNCTION_271();
  sub_1C8858F2C();
  OUTLINED_FUNCTION_260();
}

uint64_t sub_1C8863F28()
{
  OUTLINED_FUNCTION_84();
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_0_10();
  sub_1C8776620(v0, v1, MEMORY[0x1E69AAC10]);
  v2 = OUTLINED_FUNCTION_5_0();
  return OUTLINED_FUNCTION_232_1(v2, v3, v4, v5) & 1;
}

uint64_t sub_1C8863FD0()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B7A08);
  __swift_project_value_buffer(v0, qword_1EC2B7A08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE7160;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "siriXFallback";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "siriXRewrite";
  *(v10 + 8) = 12;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "planner";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "queryRewrite";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "ajax";
  *(v16 + 1) = 4;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "search";
  *(v18 + 1) = 6;
  v18[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C88642B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a3;
  v28 = a4;
  v29 = a2;
  v6 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.SiriXRewrite(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v24[1] = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v24[0] = v24 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B7ED0, &qword_1C8BF0220);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v24 - v11;
  v13 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.OneOf_Value(0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B84F0, &qword_1C8BF3C40);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v26 = v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v24 - v18;
  __swift_storeEnumTagSinglePayload(v24 - v18, 1, 1, v6);
  v25 = a1;
  sub_1C8778810();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_1C8778ED8(v12, &qword_1EC2B7ED0, &qword_1C8BF0220);
  }

  else
  {
    sub_1C877B4F0();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C8858F2C();
      goto LABEL_8;
    }

    sub_1C877B4F0();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C8778ED8(v19, &qword_1EC2B84F0, &qword_1C8BF3C40);
      sub_1C877B4F0();
      sub_1C877B4F0();
      __swift_storeEnumTagSinglePayload(v19, 0, 1, v6);
    }

    else
    {
      sub_1C8858F2C();
    }
  }

  sub_1C8776620(&qword_1EC2B81C0, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.SiriXRewrite, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.SiriXRewrite);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v21 = v19;
    return sub_1C8778ED8(v21, &qword_1EC2B84F0, &qword_1C8BF3C40);
  }

  v20 = v26;
  sub_1C87791EC();
  if (__swift_getEnumTagSinglePayload(v20, 1, v6) == 1)
  {
    v21 = v20;
    return sub_1C8778ED8(v21, &qword_1EC2B84F0, &qword_1C8BF3C40);
  }

  sub_1C877B4F0();
  v23 = v25;
  sub_1C8778ED8(v25, &qword_1EC2B7ED0, &qword_1C8BF0220);
  sub_1C877B4F0();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v13);
}

uint64_t sub_1C886476C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a3;
  v28 = a4;
  v29 = a2;
  v6 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.Planner(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v24[1] = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v24[0] = v24 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B7ED0, &qword_1C8BF0220);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v24 - v11;
  v13 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.OneOf_Value(0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B84F8, &qword_1C8BF3C48);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v26 = v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v24 - v18;
  __swift_storeEnumTagSinglePayload(v24 - v18, 1, 1, v6);
  v25 = a1;
  sub_1C8778810();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_1C8778ED8(v12, &qword_1EC2B7ED0, &qword_1C8BF0220);
  }

  else
  {
    sub_1C877B4F0();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C8858F2C();
      goto LABEL_8;
    }

    sub_1C877B4F0();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1C8778ED8(v19, &qword_1EC2B84F8, &qword_1C8BF3C48);
      sub_1C877B4F0();
      sub_1C877B4F0();
      __swift_storeEnumTagSinglePayload(v19, 0, 1, v6);
    }

    else
    {
      sub_1C8858F2C();
    }
  }

  sub_1C8776620(&qword_1EC2B3168, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.Planner, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.Planner);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v21 = v19;
    return sub_1C8778ED8(v21, &qword_1EC2B84F8, &qword_1C8BF3C48);
  }

  v20 = v26;
  sub_1C87791EC();
  if (__swift_getEnumTagSinglePayload(v20, 1, v6) == 1)
  {
    v21 = v20;
    return sub_1C8778ED8(v21, &qword_1EC2B84F8, &qword_1C8BF3C48);
  }

  sub_1C877B4F0();
  v23 = v25;
  sub_1C8778ED8(v25, &qword_1EC2B7ED0, &qword_1C8BF0220);
  sub_1C877B4F0();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v13);
}

uint64_t sub_1C8864C28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a3;
  v28 = a4;
  v29 = a2;
  v6 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.Search(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v24[1] = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v24[0] = v24 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B7ED0, &qword_1C8BF0220);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v24 - v11;
  v13 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.OneOf_Value(0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8510, &unk_1C8BF3C60);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v26 = v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v24 - v18;
  __swift_storeEnumTagSinglePayload(v24 - v18, 1, 1, v6);
  v25 = a1;
  sub_1C8778810();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_1C8778ED8(v12, &qword_1EC2B7ED0, &qword_1C8BF0220);
  }

  else
  {
    sub_1C877B4F0();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C8858F2C();
      goto LABEL_8;
    }

    sub_1C877B4F0();
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_1C8778ED8(v19, &qword_1EC2B8510, &unk_1C8BF3C60);
      sub_1C877B4F0();
      sub_1C877B4F0();
      __swift_storeEnumTagSinglePayload(v19, 0, 1, v6);
    }

    else
    {
      sub_1C8858F2C();
    }
  }

  sub_1C8776620(&qword_1EC2B81F0, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.Search, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.Search);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v21 = v19;
    return sub_1C8778ED8(v21, &qword_1EC2B8510, &unk_1C8BF3C60);
  }

  v20 = v26;
  sub_1C87791EC();
  if (__swift_getEnumTagSinglePayload(v20, 1, v6) == 1)
  {
    v21 = v20;
    return sub_1C8778ED8(v21, &qword_1EC2B8510, &unk_1C8BF3C60);
  }

  sub_1C877B4F0();
  v23 = v25;
  sub_1C8778ED8(v25, &qword_1EC2B7ED0, &qword_1C8BF0220);
  sub_1C877B4F0();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v13);
}

void Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_115();
  v2 = OUTLINED_FUNCTION_233();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_80(v4);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_97_0();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.OneOf_Value(0);
  OUTLINED_FUNCTION_72_2(v1);
  if (v6)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_104_0();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v23 = OUTLINED_FUNCTION_9_4();
      sub_1C886541C(v23, v24, v25, v26);
      break;
    case 2u:
      v15 = OUTLINED_FUNCTION_9_4();
      sub_1C8865630(v15, v16, v17, v18);
      break;
    case 3u:
      v19 = OUTLINED_FUNCTION_9_4();
      sub_1C8865844(v19, v20, v21, v22);
      break;
    case 4u:
      v11 = OUTLINED_FUNCTION_9_4();
      sub_1C8865A58(v11, v12, v13, v14);
      break;
    case 5u:
      v27 = OUTLINED_FUNCTION_9_4();
      sub_1C8865C6C(v27, v28, v29, v30);
      break;
    default:
      v7 = OUTLINED_FUNCTION_9_4();
      sub_1C886520C(v7, v8, v9, v10);
      break;
  }

  OUTLINED_FUNCTION_42_1();
  sub_1C8858F2C();
  if (!v0)
  {
LABEL_10:
    type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision(0);
    OUTLINED_FUNCTION_113_1();
  }

  OUTLINED_FUNCTION_245_1();
}

uint64_t sub_1C886520C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B7ED0, &qword_1C8BF0220);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.SiriXFallback(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C8778810();
  v8 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1C8778ED8(v6, &qword_1EC2B7ED0, &qword_1C8BF0220);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1C877B4F0();
      sub_1C8776620(&qword_1EC2B31F0, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.SiriXFallback, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.SiriXFallback);
      sub_1C8BD4E2C();
      return sub_1C8858F2C();
    }

    result = sub_1C8858F2C();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C886541C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B7ED0, &qword_1C8BF0220);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.SiriXRewrite(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C8778810();
  v8 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1C8778ED8(v6, &qword_1EC2B7ED0, &qword_1C8BF0220);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C877B4F0();
      sub_1C8776620(&qword_1EC2B81C0, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.SiriXRewrite, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.SiriXRewrite);
      sub_1C8BD4E2C();
      return sub_1C8858F2C();
    }

    result = sub_1C8858F2C();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8865630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B7ED0, &qword_1C8BF0220);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.Planner(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C8778810();
  v8 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1C8778ED8(v6, &qword_1EC2B7ED0, &qword_1C8BF0220);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1C877B4F0();
      sub_1C8776620(&qword_1EC2B3168, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.Planner, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.Planner);
      sub_1C8BD4E2C();
      return sub_1C8858F2C();
    }

    result = sub_1C8858F2C();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8865844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B7ED0, &qword_1C8BF0220);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  Rewrite = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.DecisionQueryRewrite(0);
  MEMORY[0x1EEE9AC00](Rewrite);
  sub_1C8778810();
  v8 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1C8778ED8(v6, &qword_1EC2B7ED0, &qword_1C8BF0220);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1C877B4F0();
      sub_1C8776620(&qword_1EC2B31D0, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.DecisionQueryRewrite, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.DecisionQueryRewrite);
      sub_1C8BD4E2C();
      return sub_1C8858F2C();
    }

    result = sub_1C8858F2C();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8865A58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B7ED0, &qword_1C8BF0220);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.Ajax(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C8778810();
  v8 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1C8778ED8(v6, &qword_1EC2B7ED0, &qword_1C8BF0220);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1C877B4F0();
      sub_1C8776620(&qword_1EC2B3198, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.Ajax, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.Ajax);
      sub_1C8BD4E2C();
      return sub_1C8858F2C();
    }

    result = sub_1C8858F2C();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8865C6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B7ED0, &qword_1C8BF0220);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.Search(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C8778810();
  v8 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1C8778ED8(v6, &qword_1EC2B7ED0, &qword_1C8BF0220);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_1C877B4F0();
      sub_1C8776620(&qword_1EC2B81F0, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.Search, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.Search);
      sub_1C8BD4E2C();
      return sub_1C8858F2C();
    }

    result = sub_1C8858F2C();
  }

  __break(1u);
  return result;
}

void static Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v1 = OUTLINED_FUNCTION_84();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.OneOf_Value(v1);
  OUTLINED_FUNCTION_49_3();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_18_4();
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_103();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B7FE8, &unk_1C8BF0340);
  OUTLINED_FUNCTION_80(v7);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_57_3();
  OUTLINED_FUNCTION_130_2();
  OUTLINED_FUNCTION_43_1(v0);
  if (v9)
  {
    OUTLINED_FUNCTION_37_2();
    if (v9)
    {
      sub_1C8778ED8(v0, &qword_1EC2B7ED0, &qword_1C8BF0220);
LABEL_12:
      type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision(0);
      OUTLINED_FUNCTION_165_1();
      OUTLINED_FUNCTION_0_10();
      v15 = sub_1C8776620(v13, v14, MEMORY[0x1E69AAC10]);
      v10 = OUTLINED_FUNCTION_64_0(v15);
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_253();
  sub_1C8778810();
  OUTLINED_FUNCTION_37_2();
  if (v9)
  {
    OUTLINED_FUNCTION_42_1();
    sub_1C8858F2C();
LABEL_9:
    sub_1C8778ED8(v0, &qword_1EC2B7FE8, &unk_1C8BF0340);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_168_1();
  OUTLINED_FUNCTION_168_0();
  static Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.OneOf_Value.== infix(_:_:)();
  v12 = v11;
  sub_1C8858F2C();
  OUTLINED_FUNCTION_178_2();
  sub_1C8858F2C();
  sub_1C8778ED8(v0, &qword_1EC2B7ED0, &qword_1C8BF0220);
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

uint64_t sub_1C8866100(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776620(&qword_1EC2B8470, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8866180(uint64_t a1)
{
  v2 = sub_1C8776620(&qword_1EC2B3148, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C88661F0(uint64_t a1, uint64_t a2)
{
  sub_1C8776620(&qword_1EC2B3148, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C886633C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776620(&qword_1EC2B8468, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.SiriXFallback, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.SiriXFallback);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C88663BC(uint64_t a1)
{
  v2 = sub_1C8776620(&qword_1EC2B31F0, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.SiriXFallback, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.SiriXFallback);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C886642C(uint64_t a1, uint64_t a2)
{
  sub_1C8776620(&qword_1EC2B31F0, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.SiriXFallback, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.SiriXFallback);

  return sub_1C8BD4CFC();
}

uint64_t Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.SiriXRewrite.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    OUTLINED_FUNCTION_97();
    result = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      OUTLINED_FUNCTION_119();
      sub_1C8BD4BDC();
    }
  }

  return result;
}

uint64_t Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.SiriXRewrite.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_50_2();
  if (!*(*v1 + 16) || (result = sub_1C8BD4DAC(), !v0))
  {
    type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.SiriXRewrite(0);
    return OUTLINED_FUNCTION_69();
  }

  return result;
}

uint64_t sub_1C8866688(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776620(&qword_1EC2B8460, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.SiriXRewrite, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.SiriXRewrite);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8866708(uint64_t a1)
{
  v2 = sub_1C8776620(&qword_1EC2B81C0, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.SiriXRewrite, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.SiriXRewrite);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8866778(uint64_t a1, uint64_t a2)
{
  sub_1C8776620(&qword_1EC2B81C0, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.SiriXRewrite, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.SiriXRewrite);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C88668B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776620(&qword_1EC2B8458, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.Planner, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.Planner);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8866938(uint64_t a1)
{
  v2 = sub_1C8776620(&qword_1EC2B3168, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.Planner, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.Planner);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C88669A8(uint64_t a1, uint64_t a2)
{
  sub_1C8776620(&qword_1EC2B3168, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.Planner, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.Planner);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8866A24()
{
  result = MEMORY[0x1CCA7E2D0](0xD000000000000015, 0x80000001C8C20EB0);
  qword_1EC2B7A98 = 0xD000000000000034;
  unk_1EC2B7AA0 = 0x80000001C8C20A10;
  return result;
}

uint64_t Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.DecisionQueryRewrite.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_50_2();
  if (!*(*v0 + 16) || (type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite(0), sub_1C8776620(&qword_1EC2B3220, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite), OUTLINED_FUNCTION_117(), OUTLINED_FUNCTION_9_1(), result = sub_1C8BD4E0C(), !v1))
  {
    type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.DecisionQueryRewrite(0);
    return OUTLINED_FUNCTION_69();
  }

  return result;
}

uint64_t sub_1C8866C20(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776620(&qword_1EC2B8450, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.DecisionQueryRewrite, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.DecisionQueryRewrite);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8866CA0(uint64_t a1)
{
  v2 = sub_1C8776620(&qword_1EC2B31D0, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.DecisionQueryRewrite, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.DecisionQueryRewrite);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8866D10(uint64_t a1, uint64_t a2)
{
  sub_1C8776620(&qword_1EC2B31D0, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.DecisionQueryRewrite, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.DecisionQueryRewrite);

  return sub_1C8BD4CFC();
}

void Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.Ajax.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10)
{
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_80_0(v12, v13, v14);
  v15 = OUTLINED_FUNCTION_206_1();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(v15, v16);
  OUTLINED_FUNCTION_80(v17);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v18);
  v19 = OUTLINED_FUNCTION_17_4();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxMetadata(v19);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v20);
  v21 = OUTLINED_FUNCTION_50_4();
  v22 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.Ajax(v21);
  OUTLINED_FUNCTION_82(v22);
  OUTLINED_FUNCTION_72_2(v11);
  if (v23)
  {
    v26 = sub_1C8778ED8(v11, &qword_1EC2B7EE0, &qword_1C8BF0230);
LABEL_6:
    OUTLINED_FUNCTION_144(v26, v27, a10);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_7_12();
  OUTLINED_FUNCTION_252_1();
  v25 = sub_1C8776620(&qword_1EC2B32E0, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxMetadata, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_AjaxMetadata);
  OUTLINED_FUNCTION_54_3(v25);
  OUTLINED_FUNCTION_93_2();
  v26 = sub_1C8858F2C();
  if (!v10)
  {
    a10 = &qword_1C8BF0230;
    goto LABEL_6;
  }

LABEL_7:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

uint64_t sub_1C8866FB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776620(&qword_1EC2B8448, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.Ajax, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.Ajax);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8867034(uint64_t a1)
{
  v2 = sub_1C8776620(&qword_1EC2B3198, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.Ajax, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.Ajax);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C88670A4(uint64_t a1, uint64_t a2)
{
  sub_1C8776620(&qword_1EC2B3198, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.Ajax, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.Ajax);

  return sub_1C8BD4CFC();
}

void sub_1C8867148(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_235_1(a1, a2);
  OUTLINED_FUNCTION_263_0();
  OUTLINED_FUNCTION_193_1();
  v2 = MEMORY[0x1CCA7E2D0]();
  OUTLINED_FUNCTION_192_1(v2, v3, v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1C8867234(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776620(&qword_1EC2B8440, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.Search, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.Search);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C88672B4(uint64_t a1)
{
  v2 = sub_1C8776620(&qword_1EC2B81F0, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.Search, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.Search);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8867324(uint64_t a1, uint64_t a2)
{
  sub_1C8776620(&qword_1EC2B81F0, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.Search, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.Search);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C88673AC()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B7B10);
  __swift_project_value_buffer(v0, qword_1EC2B7B10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE6F70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "siriX";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "planner";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "search";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C88675D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a3;
  v28 = a4;
  v29 = a2;
  v6 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.Planner(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v24[1] = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v24[0] = v24 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6148, &qword_1C8BF0240);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v24 - v11;
  v13 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.OneOf_Value(0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B84D8, &qword_1C8BF3C28);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v26 = v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v24 - v18;
  __swift_storeEnumTagSinglePayload(v24 - v18, 1, 1, v6);
  v25 = a1;
  sub_1C8778810();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_1C8778ED8(v12, &qword_1EC2B6148, &qword_1C8BF0240);
  }

  else
  {
    sub_1C877B4F0();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C8858F2C();
      goto LABEL_8;
    }

    sub_1C877B4F0();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C8778ED8(v19, &qword_1EC2B84D8, &qword_1C8BF3C28);
      sub_1C877B4F0();
      sub_1C877B4F0();
      __swift_storeEnumTagSinglePayload(v19, 0, 1, v6);
    }

    else
    {
      sub_1C8858F2C();
    }
  }

  sub_1C8776620(&qword_1EC2B8218, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.Planner, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.Planner);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v21 = v19;
    return sub_1C8778ED8(v21, &qword_1EC2B84D8, &qword_1C8BF3C28);
  }

  v20 = v26;
  sub_1C87791EC();
  if (__swift_getEnumTagSinglePayload(v20, 1, v6) == 1)
  {
    v21 = v20;
    return sub_1C8778ED8(v21, &qword_1EC2B84D8, &qword_1C8BF3C28);
  }

  sub_1C877B4F0();
  v23 = v25;
  sub_1C8778ED8(v25, &qword_1EC2B6148, &qword_1C8BF0240);
  sub_1C877B4F0();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v13);
}

uint64_t sub_1C8867A94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a3;
  v28 = a4;
  v29 = a2;
  v6 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.Search(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v24[1] = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v24[0] = v24 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6148, &qword_1C8BF0240);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v24 - v11;
  v13 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.OneOf_Value(0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B84E0, &qword_1C8BF3C30);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v26 = v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v24 - v18;
  __swift_storeEnumTagSinglePayload(v24 - v18, 1, 1, v6);
  v25 = a1;
  sub_1C8778810();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_1C8778ED8(v12, &qword_1EC2B6148, &qword_1C8BF0240);
  }

  else
  {
    sub_1C877B4F0();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C8858F2C();
      goto LABEL_8;
    }

    sub_1C877B4F0();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1C8778ED8(v19, &qword_1EC2B84E0, &qword_1C8BF3C30);
      sub_1C877B4F0();
      sub_1C877B4F0();
      __swift_storeEnumTagSinglePayload(v19, 0, 1, v6);
    }

    else
    {
      sub_1C8858F2C();
    }
  }

  sub_1C8776620(&qword_1EC2B8230, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.Search, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.Search);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v21 = v19;
    return sub_1C8778ED8(v21, &qword_1EC2B84E0, &qword_1C8BF3C30);
  }

  v20 = v26;
  sub_1C87791EC();
  if (__swift_getEnumTagSinglePayload(v20, 1, v6) == 1)
  {
    v21 = v20;
    return sub_1C8778ED8(v21, &qword_1EC2B84E0, &qword_1C8BF3C30);
  }

  sub_1C877B4F0();
  v23 = v25;
  sub_1C8778ED8(v25, &qword_1EC2B6148, &qword_1C8BF0240);
  sub_1C877B4F0();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v13);
}

void Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_115();
  v2 = OUTLINED_FUNCTION_233();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_80(v4);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_97_0();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.OneOf_Value(0);
  OUTLINED_FUNCTION_72_2(v1);
  if (v6)
  {
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_104_0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v8 = OUTLINED_FUNCTION_9_4();
      sub_1C886824C(v8, v9, v10, v11);
    }

    else
    {
      v16 = OUTLINED_FUNCTION_9_4();
      sub_1C8868460(v16, v17, v18, v19);
    }
  }

  else
  {
    v12 = OUTLINED_FUNCTION_9_4();
    sub_1C886803C(v12, v13, v14, v15);
  }

  OUTLINED_FUNCTION_92_1();
  sub_1C8858F2C();
  if (!v0)
  {
LABEL_8:
    type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite(0);
    OUTLINED_FUNCTION_113_1();
  }

  OUTLINED_FUNCTION_245_1();
}

uint64_t sub_1C886803C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6148, &qword_1C8BF0240);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.SiriX(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C8778810();
  v8 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1C8778ED8(v6, &qword_1EC2B6148, &qword_1C8BF0240);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1C877B4F0();
      sub_1C8776620(&qword_1EC2B3278, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.SiriX, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.SiriX);
      sub_1C8BD4E2C();
      return sub_1C8858F2C();
    }

    result = sub_1C8858F2C();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C886824C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6148, &qword_1C8BF0240);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.Planner(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C8778810();
  v8 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1C8778ED8(v6, &qword_1EC2B6148, &qword_1C8BF0240);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C877B4F0();
      sub_1C8776620(&qword_1EC2B8218, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.Planner, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.Planner);
      sub_1C8BD4E2C();
      return sub_1C8858F2C();
    }

    result = sub_1C8858F2C();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8868460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6148, &qword_1C8BF0240);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.Search(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C8778810();
  v8 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1C8778ED8(v6, &qword_1EC2B6148, &qword_1C8BF0240);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1C877B4F0();
      sub_1C8776620(&qword_1EC2B8230, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.Search, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.Search);
      sub_1C8BD4E2C();
      return sub_1C8858F2C();
    }

    result = sub_1C8858F2C();
  }

  __break(1u);
  return result;
}

void static Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v1 = OUTLINED_FUNCTION_84();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.OneOf_Value(v1);
  OUTLINED_FUNCTION_49_3();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_18_4();
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_103();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6150, &unk_1C8BE6DF0);
  OUTLINED_FUNCTION_80(v7);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_57_3();
  OUTLINED_FUNCTION_130_2();
  OUTLINED_FUNCTION_43_1(v0);
  if (v9)
  {
    OUTLINED_FUNCTION_37_2();
    if (v9)
    {
      sub_1C8778ED8(v0, &qword_1EC2B6148, &qword_1C8BF0240);
LABEL_12:
      type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite(0);
      OUTLINED_FUNCTION_165_1();
      OUTLINED_FUNCTION_0_10();
      v15 = sub_1C8776620(v13, v14, MEMORY[0x1E69AAC10]);
      v10 = OUTLINED_FUNCTION_64_0(v15);
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_253();
  sub_1C8778810();
  OUTLINED_FUNCTION_37_2();
  if (v9)
  {
    OUTLINED_FUNCTION_92_1();
    sub_1C8858F2C();
LABEL_9:
    sub_1C8778ED8(v0, &qword_1EC2B6150, &unk_1C8BE6DF0);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_168_1();
  OUTLINED_FUNCTION_168_0();
  static Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.OneOf_Value.== infix(_:_:)();
  v12 = v11;
  sub_1C8858F2C();
  OUTLINED_FUNCTION_178_2();
  sub_1C8858F2C();
  sub_1C8778ED8(v0, &qword_1EC2B6148, &qword_1C8BF0240);
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

uint64_t sub_1C88688F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776620(&qword_1EC2B8438, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8868974(uint64_t a1)
{
  v2 = sub_1C8776620(&qword_1EC2B3220, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C88689E4(uint64_t a1, uint64_t a2)
{
  sub_1C8776620(&qword_1EC2B3220, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite);

  return sub_1C8BD4CFC();
}

void Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.SiriX.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10)
{
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_80_0(v12, v13, v14);
  v15 = OUTLINED_FUNCTION_206_1();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(v15, v16);
  OUTLINED_FUNCTION_80(v17);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v18);
  v19 = OUTLINED_FUNCTION_17_4();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite(v19);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v20);
  v21 = OUTLINED_FUNCTION_50_4();
  v22 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.SiriX(v21);
  OUTLINED_FUNCTION_82(v22);
  OUTLINED_FUNCTION_72_2(v11);
  if (v23)
  {
    v26 = sub_1C8778ED8(v11, &qword_1EC2B7EF8, &qword_1C8BF0250);
LABEL_6:
    OUTLINED_FUNCTION_144(v26, v27, a10);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_9();
  OUTLINED_FUNCTION_252_1();
  v25 = sub_1C8776620(&qword_1EC2B2FD8, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite);
  OUTLINED_FUNCTION_54_3(v25);
  OUTLINED_FUNCTION_91_0();
  v26 = sub_1C8858F2C();
  if (!v10)
  {
    a10 = &qword_1C8BF0250;
    goto LABEL_6;
  }

LABEL_7:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

uint64_t sub_1C8868C88(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776620(&qword_1EC2B8430, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.SiriX, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.SiriX);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8868D08(uint64_t a1)
{
  v2 = sub_1C8776620(&qword_1EC2B3278, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.SiriX, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.SiriX);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8868D78(uint64_t a1, uint64_t a2)
{
  sub_1C8776620(&qword_1EC2B3278, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.SiriX, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.SiriX);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8868EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.Planner(0);
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PlannerQueryRewrite(0);
  sub_1C8776620(&qword_1EC2B8038, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PlannerQueryRewrite, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_PlannerQueryRewrite);
  return sub_1C8BD4C7C();
}

void Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.Planner.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10)
{
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_80_0(v12, v13, v14);
  v15 = OUTLINED_FUNCTION_206_1();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(v15, v16);
  OUTLINED_FUNCTION_80(v17);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v18);
  v19 = OUTLINED_FUNCTION_17_4();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PlannerQueryRewrite(v19);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v20);
  v21 = OUTLINED_FUNCTION_50_4();
  v22 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.Planner(v21);
  OUTLINED_FUNCTION_82(v22);
  OUTLINED_FUNCTION_72_2(v11);
  if (v23)
  {
    v26 = sub_1C8778ED8(v11, &qword_1EC2B7F08, &qword_1C8BF0260);
LABEL_6:
    OUTLINED_FUNCTION_144(v26, v27, a10);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_5_9();
  OUTLINED_FUNCTION_252_1();
  v25 = sub_1C8776620(&qword_1EC2B8038, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PlannerQueryRewrite, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_PlannerQueryRewrite);
  OUTLINED_FUNCTION_54_3(v25);
  OUTLINED_FUNCTION_90_1();
  v26 = sub_1C8858F2C();
  if (!v10)
  {
    a10 = &qword_1C8BF0260;
    goto LABEL_6;
  }

LABEL_7:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

uint64_t sub_1C886911C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776620(&qword_1EC2B8428, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.Planner, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.Planner);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C886919C(uint64_t a1)
{
  v2 = sub_1C8776620(&qword_1EC2B8218, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.Planner, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.Planner);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C886920C(uint64_t a1, uint64_t a2)
{
  sub_1C8776620(&qword_1EC2B8218, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.Planner, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.Planner);

  return sub_1C8BD4CFC();
}

void sub_1C88692B0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_235_1(a1, a2);
  OUTLINED_FUNCTION_263_0();
  OUTLINED_FUNCTION_193_1();
  v2 = MEMORY[0x1CCA7E2D0]();
  OUTLINED_FUNCTION_192_1(v2, v3, v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1C8869390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.Search(0);
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_SearchQueryRewrite(0);
  sub_1C8776620(&qword_1EC2B8048, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_SearchQueryRewrite, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_SearchQueryRewrite);
  return sub_1C8BD4C7C();
}

void Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.Search.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10)
{
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_80_0(v12, v13, v14);
  v15 = OUTLINED_FUNCTION_206_1();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(v15, v16);
  OUTLINED_FUNCTION_80(v17);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v18);
  v19 = OUTLINED_FUNCTION_17_4();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_SearchQueryRewrite(v19);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v20);
  v21 = OUTLINED_FUNCTION_50_4();
  v22 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.Search(v21);
  OUTLINED_FUNCTION_82(v22);
  OUTLINED_FUNCTION_72_2(v11);
  if (v23)
  {
    v26 = sub_1C8778ED8(v11, &qword_1EC2B7F18, &qword_1C8BF0270);
LABEL_6:
    OUTLINED_FUNCTION_144(v26, v27, a10);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_4_9();
  OUTLINED_FUNCTION_252_1();
  v25 = sub_1C8776620(&qword_1EC2B8048, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_SearchQueryRewrite, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_SearchQueryRewrite);
  OUTLINED_FUNCTION_54_3(v25);
  OUTLINED_FUNCTION_89_1();
  v26 = sub_1C8858F2C();
  if (!v10)
  {
    a10 = &qword_1C8BF0270;
    goto LABEL_6;
  }

LABEL_7:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

uint64_t sub_1C8869600(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776620(&qword_1EC2B8420, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.Search, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.Search);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8869680(uint64_t a1)
{
  v2 = sub_1C8776620(&qword_1EC2B8230, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.Search, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.Search);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C88696F0(uint64_t a1, uint64_t a2)
{
  sub_1C8776620(&qword_1EC2B8230, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.Search, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.Search);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8869788()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B7BA0);
  __swift_project_value_buffer(v0, qword_1EC2B7BA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "rewrittenUtterance";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "correctionOutcome";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C8869974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite(0);
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite.CorrectionOutcome(0);
  sub_1C8776620(&qword_1EC2B8058, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite.CorrectionOutcome, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite.CorrectionOutcome);
  return sub_1C8BD4C7C();
}

void Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B7F28, &qword_1C8BF0280);
  OUTLINED_FUNCTION_80(v2);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_239_1();
  v4 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite.CorrectionOutcome(0);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_212_1();
  OUTLINED_FUNCTION_88_0();
  if (!v6 || (sub_1C8BD4DDC(), !v0))
  {
    type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite(0);
    sub_1C8778810();
    OUTLINED_FUNCTION_76(v1, 1, v4);
    if (v7)
    {
      sub_1C8778ED8(v1, &qword_1EC2B7F28, &qword_1C8BF0280);
LABEL_7:
      sub_1C8BD49DC();
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_3_9();
    sub_1C877B4F0();
    sub_1C8776620(&qword_1EC2B8058, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite.CorrectionOutcome, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite.CorrectionOutcome);
    OUTLINED_FUNCTION_240();
    sub_1C8BD4E2C();
    OUTLINED_FUNCTION_105_0();
    sub_1C8858F2C();
    if (!v0)
    {
      goto LABEL_7;
    }
  }

LABEL_8:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

void static Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v1 = OUTLINED_FUNCTION_84();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite.CorrectionOutcome(v1);
  OUTLINED_FUNCTION_49_3();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_18_4();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B7F28, &qword_1C8BF0280);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_103();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8060, &qword_1C8BF0350);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_229_1();
  v9 = v9 && v7 == v8;
  if (!v9 && (sub_1C8BD529C() & 1) == 0)
  {
    goto LABEL_15;
  }

  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite(0);
  v10 = *(v5 + 48);
  OUTLINED_FUNCTION_196_1();
  sub_1C8778810();
  OUTLINED_FUNCTION_196_1();
  sub_1C8778810();
  OUTLINED_FUNCTION_43_1(v0);
  if (v9)
  {
    OUTLINED_FUNCTION_43_1(v0 + v10);
    if (v9)
    {
      sub_1C8778ED8(v0, &qword_1EC2B7F28, &qword_1C8BF0280);
LABEL_17:
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_0_10();
      v17 = sub_1C8776620(v15, v16, MEMORY[0x1E69AAC10]);
      v12 = OUTLINED_FUNCTION_64_0(v17);
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  OUTLINED_FUNCTION_253();
  sub_1C8778810();
  OUTLINED_FUNCTION_43_1(v0 + v10);
  if (v11)
  {
    OUTLINED_FUNCTION_105_0();
    sub_1C8858F2C();
LABEL_14:
    sub_1C8778ED8(v0, &qword_1EC2B8060, &qword_1C8BF0350);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_3_9();
  sub_1C877B4F0();
  OUTLINED_FUNCTION_168_0();
  static Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite.CorrectionOutcome.== infix(_:_:)();
  v14 = v13;
  sub_1C8858F2C();
  sub_1C8858F2C();
  sub_1C8778ED8(v0, &qword_1EC2B7F28, &qword_1C8BF0280);
  if (v14)
  {
    goto LABEL_17;
  }

LABEL_15:
  v12 = 0;
LABEL_18:
  OUTLINED_FUNCTION_157(v12);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C8869EE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776620(&qword_1EC2B8418, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8869F64(uint64_t a1)
{
  v2 = sub_1C8776620(&qword_1EC2B2FD8, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8869FD4(uint64_t a1, uint64_t a2)
{
  sub_1C8776620(&qword_1EC2B2FD8, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C886A054()
{
  result = MEMORY[0x1CCA7E2D0](0xD000000000000012, 0x80000001C8C20CB0);
  qword_1EC2B7BB8 = 0xD000000000000036;
  unk_1EC2B7BC0 = 0x80000001C8C20A90;
  return result;
}

uint64_t sub_1C886A15C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v31 = a2;
  v6 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite.CorrectionOutcome.Undo(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v26 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v28 = &v23 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B7F30, &qword_1C8BF0288);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v23 - v11;
  v13 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite.CorrectionOutcome.OneOf_Value(0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B84C8, &qword_1C8BF3C18);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v23 - v19;
  __swift_storeEnumTagSinglePayload(&v23 - v19, 1, 1, v6);
  v27 = a1;
  sub_1C8778810();
  v25 = v13;
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    v24 = v18;
    sub_1C8778ED8(v12, &qword_1EC2B7F30, &qword_1C8BF0288);
  }

  else
  {
    sub_1C877B4F0();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C8858F2C();
      return sub_1C8778ED8(v20, &qword_1EC2B84C8, &qword_1C8BF3C18);
    }

    v24 = v18;
    sub_1C877B4F0();
    sub_1C8778ED8(v20, &qword_1EC2B84C8, &qword_1C8BF3C18);
    sub_1C877B4F0();
    sub_1C877B4F0();
    __swift_storeEnumTagSinglePayload(v20, 0, 1, v6);
  }

  sub_1C8776620(&qword_1EC2B8070, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite.CorrectionOutcome.Undo, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite.CorrectionOutcome.Undo);
  sub_1C8BD4C7C();
  if (v4)
  {
    return sub_1C8778ED8(v20, &qword_1EC2B84C8, &qword_1C8BF3C18);
  }

  v20 = v24;
  sub_1C87791EC();
  if (__swift_getEnumTagSinglePayload(v20, 1, v6) == 1)
  {
    return sub_1C8778ED8(v20, &qword_1EC2B84C8, &qword_1C8BF3C18);
  }

  sub_1C877B4F0();
  v22 = v27;
  sub_1C8778ED8(v27, &qword_1EC2B7F30, &qword_1C8BF0288);
  sub_1C877B4F0();
  return __swift_storeEnumTagSinglePayload(v22, 0, 1, v25);
}

void Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite.CorrectionOutcome.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_197_0(v2, v3, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B7F30, &qword_1C8BF0288);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_17_4();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite.CorrectionOutcome.Undo(v7);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_161_2();
  v9 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite.CorrectionOutcome.OneOf_Value(0);
  OUTLINED_FUNCTION_76(v1, 1, v9);
  if (v10)
  {
    sub_1C8778ED8(v1, &qword_1EC2B7F30, &qword_1C8BF0288);
LABEL_5:
    type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite.CorrectionOutcome(0);
    OUTLINED_FUNCTION_163_2();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_65_4();
  sub_1C877B4F0();
  v11 = sub_1C8776620(&qword_1EC2B8070, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite.CorrectionOutcome.Undo, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite.CorrectionOutcome.Undo);
  OUTLINED_FUNCTION_135_1(v11);
  OUTLINED_FUNCTION_199_1();
  sub_1C8858F2C();
  if (!v0)
  {
    goto LABEL_5;
  }

LABEL_6:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

void static Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite.CorrectionOutcome.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v1 = OUTLINED_FUNCTION_84();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite.CorrectionOutcome.OneOf_Value(v1);
  OUTLINED_FUNCTION_49_3();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_18_4();
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_103();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8078, &qword_1C8BF0358);
  OUTLINED_FUNCTION_80(v7);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_57_3();
  OUTLINED_FUNCTION_130_2();
  OUTLINED_FUNCTION_43_1(v0);
  if (v9)
  {
    OUTLINED_FUNCTION_37_2();
    if (v9)
    {
      sub_1C8778ED8(v0, &qword_1EC2B7F30, &qword_1C8BF0288);
LABEL_12:
      type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite.CorrectionOutcome(0);
      OUTLINED_FUNCTION_165_1();
      OUTLINED_FUNCTION_0_10();
      v15 = sub_1C8776620(v13, v14, MEMORY[0x1E69AAC10]);
      v10 = OUTLINED_FUNCTION_64_0(v15);
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_253();
  sub_1C8778810();
  OUTLINED_FUNCTION_37_2();
  if (v9)
  {
    OUTLINED_FUNCTION_169();
    sub_1C8858F2C();
LABEL_9:
    sub_1C8778ED8(v0, &qword_1EC2B8078, &qword_1C8BF0358);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_168_1();
  OUTLINED_FUNCTION_168_0();
  static Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite.CorrectionOutcome.OneOf_Value.== infix(_:_:)();
  v12 = v11;
  sub_1C8858F2C();
  OUTLINED_FUNCTION_178_2();
  sub_1C8858F2C();
  sub_1C8778ED8(v0, &qword_1EC2B7F30, &qword_1C8BF0288);
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

uint64_t sub_1C886A9BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776620(&qword_1EC2B8410, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite.CorrectionOutcome, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite.CorrectionOutcome);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C886AA3C(uint64_t a1)
{
  v2 = sub_1C8776620(&qword_1EC2B8058, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite.CorrectionOutcome, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite.CorrectionOutcome);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C886AAAC(uint64_t a1, uint64_t a2)
{
  sub_1C8776620(&qword_1EC2B8058, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite.CorrectionOutcome, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite.CorrectionOutcome);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C886AB2C()
{
  if (qword_1EC2B4FE8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2B7BB8;
  v2 = unk_1EC2B7BC0;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0x6F646E552ELL, 0xE500000000000000);

  qword_1EC2B7BE0 = v1;
  *algn_1EC2B7BE8 = v2;
  return result;
}

uint64_t sub_1C886AC68(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776620(&qword_1EC2B8408, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite.CorrectionOutcome.Undo, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite.CorrectionOutcome.Undo);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C886ACE8(uint64_t a1)
{
  v2 = sub_1C8776620(&qword_1EC2B8070, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite.CorrectionOutcome.Undo, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite.CorrectionOutcome.Undo);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C886AD58(uint64_t a1, uint64_t a2)
{
  sub_1C8776620(&qword_1EC2B8070, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite.CorrectionOutcome.Undo, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite.CorrectionOutcome.Undo);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C886AF00(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776620(&qword_1EC2B8400, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PlannerQueryRewrite, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_PlannerQueryRewrite);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C886AF80(uint64_t a1)
{
  v2 = sub_1C8776620(&qword_1EC2B8038, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PlannerQueryRewrite, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_PlannerQueryRewrite);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C886AFF0(uint64_t a1, uint64_t a2)
{
  sub_1C8776620(&qword_1EC2B8038, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PlannerQueryRewrite, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_PlannerQueryRewrite);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C886B0F8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_50_2();
  OUTLINED_FUNCTION_88_0();
  if (!v6 || (OUTLINED_FUNCTION_195(), result = sub_1C8BD4DDC(), !v4))
  {
    a4(0);
    return OUTLINED_FUNCTION_69();
  }

  return result;
}

uint64_t sub_1C886B218(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776620(&qword_1EC2B83F8, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_SearchQueryRewrite, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_SearchQueryRewrite);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C886B298(uint64_t a1)
{
  v2 = sub_1C8776620(&qword_1EC2B8048, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_SearchQueryRewrite, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_SearchQueryRewrite);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C886B308(uint64_t a1, uint64_t a2)
{
  sub_1C8776620(&qword_1EC2B8048, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_SearchQueryRewrite, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_SearchQueryRewrite);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C886B394()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B7C38);
  __swift_project_value_buffer(v0, qword_1EC2B7C38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE6F70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "prescribedAjaxTool";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "queryType";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "query";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  return sub_1C8BD510C();
}

void Siri_Nlu_Internal_SiriMessageTypes_AjaxMetadata.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B7F50, &qword_1C8BF02A8);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_81();
  v21 = v5;
  v6 = OUTLINED_FUNCTION_86();
  v22 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery(v6);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_9_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B7F48, &qword_1C8BF02A0);
  OUTLINED_FUNCTION_80(v8);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v9);
  v10 = OUTLINED_FUNCTION_27_0();
  Type = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryType(v10);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_9_0();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B7F40, &qword_1C8BF0298);
  OUTLINED_FUNCTION_80(v12);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v13);
  v14 = OUTLINED_FUNCTION_74();
  v15 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool(v14);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_212_1();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxMetadata(0);
  sub_1C8778810();
  OUTLINED_FUNCTION_76(v1, 1, v15);
  if (v17)
  {
    sub_1C8778ED8(v1, &qword_1EC2B7F40, &qword_1C8BF0298);
    v18 = v0;
  }

  else
  {
    OUTLINED_FUNCTION_14_6();
    sub_1C877B4F0();
    sub_1C8776620(&qword_1EC2B30A8, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool);
    OUTLINED_FUNCTION_240();
    sub_1C8BD4E2C();
    v18 = v0;
    OUTLINED_FUNCTION_104_1();
    sub_1C8858F2C();
    if (v0)
    {
      goto LABEL_14;
    }
  }

  sub_1C8778810();
  v19 = OUTLINED_FUNCTION_213();
  OUTLINED_FUNCTION_76(v19, v20, Type);
  if (v17)
  {
    sub_1C8778ED8(v2, &qword_1EC2B7F48, &qword_1C8BF02A0);
  }

  else
  {
    OUTLINED_FUNCTION_13_12();
    sub_1C877B4F0();
    sub_1C8776620(&qword_1EC2B3330, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryType, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_QueryType);
    sub_1C8BD4E2C();
    OUTLINED_FUNCTION_103_2();
    sub_1C8858F2C();
    if (v18)
    {
      goto LABEL_14;
    }
  }

  sub_1C8778810();
  OUTLINED_FUNCTION_76(v21, 1, v22);
  if (v17)
  {
    sub_1C8778ED8(v21, &qword_1EC2B7F50, &qword_1C8BF02A8);
LABEL_13:
    sub_1C8BD49DC();
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_12_9();
  sub_1C877B4F0();
  sub_1C8776620(&qword_1EC2B33B0, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery);
  sub_1C8BD4E2C();
  OUTLINED_FUNCTION_102_1();
  sub_1C8858F2C();
  if (!v18)
  {
    goto LABEL_13;
  }

LABEL_14:
  OUTLINED_FUNCTION_190();
}

void static Siri_Nlu_Internal_SiriMessageTypes_AjaxMetadata.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v38 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery(0);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_9_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B7F50, &qword_1C8BF02A8);
  OUTLINED_FUNCTION_80(v2);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_81();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B80A0, &qword_1C8BF0360);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_81();
  v39 = v5;
  v6 = OUTLINED_FUNCTION_86();
  Type = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryType(v6);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_9_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B7F48, &qword_1C8BF02A0);
  OUTLINED_FUNCTION_80(v8);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_81();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B80A8, &qword_1C8BF0368);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_81();
  v42 = v11;
  v12 = OUTLINED_FUNCTION_86();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool(v12);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_149_1();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B7F40, &qword_1C8BF0298);
  OUTLINED_FUNCTION_80(v14);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B80B0, &qword_1C8BF0370) - 8;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v17);
  v18 = OUTLINED_FUNCTION_27_0();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxMetadata(v18);
  v19 = *(v16 + 56);
  sub_1C8778810();
  sub_1C8778810();
  OUTLINED_FUNCTION_72(v0);
  if (v20)
  {
    OUTLINED_FUNCTION_72(v0 + v19);
    if (v20)
    {
      sub_1C8778ED8(v0, &qword_1EC2B7F40, &qword_1C8BF0298);
      goto LABEL_11;
    }

LABEL_9:
    v21 = &qword_1EC2B80B0;
    v22 = &qword_1C8BF0370;
    v23 = v0;
LABEL_30:
    sub_1C8778ED8(v23, v21, v22);
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_230();
  sub_1C8778810();
  OUTLINED_FUNCTION_72(v0 + v19);
  if (v20)
  {
    OUTLINED_FUNCTION_104_1();
    sub_1C8858F2C();
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_14_6();
  sub_1C877B4F0();
  static Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.== infix(_:_:)();
  v25 = v24;
  sub_1C8858F2C();
  sub_1C8858F2C();
  sub_1C8778ED8(v0, &qword_1EC2B7F40, &qword_1C8BF0298);
  if ((v25 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_11:
  v26 = *(v40 + 48);
  sub_1C8778810();
  sub_1C8778810();
  OUTLINED_FUNCTION_76(v42, 1, Type);
  if (v20)
  {
    OUTLINED_FUNCTION_76(v42 + v26, 1, Type);
    if (v20)
    {
      sub_1C8778ED8(v42, &qword_1EC2B7F48, &qword_1C8BF02A0);
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  sub_1C8778810();
  OUTLINED_FUNCTION_76(v42 + v26, 1, Type);
  if (v27)
  {
    OUTLINED_FUNCTION_103_2();
    sub_1C8858F2C();
LABEL_19:
    v21 = &qword_1EC2B80A8;
    v22 = &qword_1C8BF0368;
    v23 = v42;
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_13_12();
  sub_1C877B4F0();
  static Siri_Nlu_Internal_SiriMessageTypes_QueryType.== infix(_:_:)();
  v29 = v28;
  sub_1C8858F2C();
  sub_1C8858F2C();
  sub_1C8778ED8(v42, &qword_1EC2B7F48, &qword_1C8BF02A0);
  if ((v29 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_21:
  v30 = *(v37 + 48);
  sub_1C8778810();
  sub_1C8778810();
  OUTLINED_FUNCTION_76(v39, 1, v38);
  if (v20)
  {
    OUTLINED_FUNCTION_76(v39 + v30, 1, v38);
    if (v20)
    {
      sub_1C8778ED8(v39, &qword_1EC2B7F50, &qword_1C8BF02A8);
LABEL_34:
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_0_10();
      sub_1C8776620(v35, v36, MEMORY[0x1E69AAC10]);
      OUTLINED_FUNCTION_258();
      v32 = sub_1C8BD517C();
      goto LABEL_32;
    }

    goto LABEL_29;
  }

  sub_1C8778810();
  OUTLINED_FUNCTION_76(v39 + v30, 1, v38);
  if (v31)
  {
    OUTLINED_FUNCTION_102_1();
    sub_1C8858F2C();
LABEL_29:
    v21 = &qword_1EC2B80A0;
    v22 = &qword_1C8BF0360;
    v23 = v39;
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_12_9();
  sub_1C877B4F0();
  static Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.== infix(_:_:)();
  v34 = v33;
  sub_1C8858F2C();
  sub_1C8858F2C();
  sub_1C8778ED8(v39, &qword_1EC2B7F50, &qword_1C8BF02A8);
  if (v34)
  {
    goto LABEL_34;
  }

LABEL_31:
  v32 = 0;
LABEL_32:
  OUTLINED_FUNCTION_157(v32);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C886C13C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776620(&qword_1EC2B83F0, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxMetadata, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_AjaxMetadata);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C886C1BC(uint64_t a1)
{
  v2 = sub_1C8776620(&qword_1EC2B32E0, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxMetadata, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_AjaxMetadata);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C886C22C(uint64_t a1, uint64_t a2)
{
  sub_1C8776620(&qword_1EC2B32E0, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxMetadata, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_AjaxMetadata);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C886C2C4()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B7C50);
  __swift_project_value_buffer(v0, qword_1EC2B7C50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE68B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "generateRichContentTool";
  *(v6 + 8) = 23;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "generateRichContentFromMediaIntentTool";
  *(v10 + 8) = 38;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "generateImageIntentTool";
  *(v12 + 1) = 23;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "generateKnowledgeResponseIntentTool";
  *(v14 + 1) = 35;
  v14[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C886C52C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a3;
  v28 = a4;
  v29 = a2;
  RichContentFromMediaIntentTool = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.GenerateRichContentFromMediaIntentTool(0);
  v7 = MEMORY[0x1EEE9AC00](RichContentFromMediaIntentTool);
  v24[1] = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v24[0] = v24 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B7F58, &qword_1C8BF02B0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v24 - v11;
  v13 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.OneOf_Value(0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B84B0, &qword_1C8BF3C00);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v26 = v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v24 - v18;
  __swift_storeEnumTagSinglePayload(v24 - v18, 1, 1, RichContentFromMediaIntentTool);
  v25 = a1;
  sub_1C8778810();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_1C8778ED8(v12, &qword_1EC2B7F58, &qword_1C8BF02B0);
  }

  else
  {
    sub_1C877B4F0();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C8858F2C();
      goto LABEL_8;
    }

    sub_1C877B4F0();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C8778ED8(v19, &qword_1EC2B84B0, &qword_1C8BF3C00);
      sub_1C877B4F0();
      sub_1C877B4F0();
      __swift_storeEnumTagSinglePayload(v19, 0, 1, RichContentFromMediaIntentTool);
    }

    else
    {
      sub_1C8858F2C();
    }
  }

  sub_1C8776620(&qword_1EC2B82A8, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.GenerateRichContentFromMediaIntentTool, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.GenerateRichContentFromMediaIntentTool);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v21 = v19;
    return sub_1C8778ED8(v21, &qword_1EC2B84B0, &qword_1C8BF3C00);
  }

  v20 = v26;
  sub_1C87791EC();
  if (__swift_getEnumTagSinglePayload(v20, 1, RichContentFromMediaIntentTool) == 1)
  {
    v21 = v20;
    return sub_1C8778ED8(v21, &qword_1EC2B84B0, &qword_1C8BF3C00);
  }

  sub_1C877B4F0();
  v23 = v25;
  sub_1C8778ED8(v25, &qword_1EC2B7F58, &qword_1C8BF02B0);
  sub_1C877B4F0();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v13);
}

uint64_t sub_1C886C9E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a3;
  v28 = a4;
  v29 = a2;
  ImageIntentTool = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.GenerateImageIntentTool(0);
  v7 = MEMORY[0x1EEE9AC00](ImageIntentTool);
  v24[1] = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v24[0] = v24 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B7F58, &qword_1C8BF02B0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v24 - v11;
  v13 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.OneOf_Value(0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B84B8, &qword_1C8BF3C08);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v26 = v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v24 - v18;
  __swift_storeEnumTagSinglePayload(v24 - v18, 1, 1, ImageIntentTool);
  v25 = a1;
  sub_1C8778810();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_1C8778ED8(v12, &qword_1EC2B7F58, &qword_1C8BF02B0);
  }

  else
  {
    sub_1C877B4F0();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C8858F2C();
      goto LABEL_8;
    }

    sub_1C877B4F0();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1C8778ED8(v19, &qword_1EC2B84B8, &qword_1C8BF3C08);
      sub_1C877B4F0();
      sub_1C877B4F0();
      __swift_storeEnumTagSinglePayload(v19, 0, 1, ImageIntentTool);
    }

    else
    {
      sub_1C8858F2C();
    }
  }

  sub_1C8776620(&qword_1EC2B82C0, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.GenerateImageIntentTool, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.GenerateImageIntentTool);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v21 = v19;
    return sub_1C8778ED8(v21, &qword_1EC2B84B8, &qword_1C8BF3C08);
  }

  v20 = v26;
  sub_1C87791EC();
  if (__swift_getEnumTagSinglePayload(v20, 1, ImageIntentTool) == 1)
  {
    v21 = v20;
    return sub_1C8778ED8(v21, &qword_1EC2B84B8, &qword_1C8BF3C08);
  }

  sub_1C877B4F0();
  v23 = v25;
  sub_1C8778ED8(v25, &qword_1EC2B7F58, &qword_1C8BF02B0);
  sub_1C877B4F0();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v13);
}

void Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_115();
  v2 = OUTLINED_FUNCTION_233();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_80(v4);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_97_0();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.OneOf_Value(0);
  OUTLINED_FUNCTION_72_2(v1);
  if (v6)
  {
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_104_0();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v19 = OUTLINED_FUNCTION_9_4();
      sub_1C886D1C4(v19, v20, v21, v22);
      break;
    case 2u:
      v11 = OUTLINED_FUNCTION_9_4();
      sub_1C886D3D8(v11, v12, v13, v14);
      break;
    case 3u:
      v15 = OUTLINED_FUNCTION_9_4();
      sub_1C886D5EC(v15, v16, v17, v18);
      break;
    default:
      v7 = OUTLINED_FUNCTION_9_4();
      sub_1C886CFB4(v7, v8, v9, v10);
      break;
  }

  OUTLINED_FUNCTION_101_1();
  sub_1C8858F2C();
  if (!v0)
  {
LABEL_8:
    type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool(0);
    OUTLINED_FUNCTION_113_1();
  }

  OUTLINED_FUNCTION_245_1();
}

uint64_t sub_1C886CFB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B7F58, &qword_1C8BF02B0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  RichContentTool = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.GenerateRichContentTool(0);
  MEMORY[0x1EEE9AC00](RichContentTool);
  sub_1C8778810();
  v8 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1C8778ED8(v6, &qword_1EC2B7F58, &qword_1C8BF02B0);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1C877B4F0();
      sub_1C8776620(&qword_1EC2B3110, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.GenerateRichContentTool, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.GenerateRichContentTool);
      sub_1C8BD4E2C();
      return sub_1C8858F2C();
    }

    result = sub_1C8858F2C();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C886D1C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B7F58, &qword_1C8BF02B0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  RichContentFromMediaIntentTool = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.GenerateRichContentFromMediaIntentTool(0);
  MEMORY[0x1EEE9AC00](RichContentFromMediaIntentTool);
  sub_1C8778810();
  v8 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1C8778ED8(v6, &qword_1EC2B7F58, &qword_1C8BF02B0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C877B4F0();
      sub_1C8776620(&qword_1EC2B82A8, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.GenerateRichContentFromMediaIntentTool, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.GenerateRichContentFromMediaIntentTool);
      sub_1C8BD4E2C();
      return sub_1C8858F2C();
    }

    result = sub_1C8858F2C();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C886D3D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B7F58, &qword_1C8BF02B0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  ImageIntentTool = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.GenerateImageIntentTool(0);
  MEMORY[0x1EEE9AC00](ImageIntentTool);
  sub_1C8778810();
  v8 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1C8778ED8(v6, &qword_1EC2B7F58, &qword_1C8BF02B0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1C877B4F0();
      sub_1C8776620(&qword_1EC2B82C0, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.GenerateImageIntentTool, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.GenerateImageIntentTool);
      sub_1C8BD4E2C();
      return sub_1C8858F2C();
    }

    result = sub_1C8858F2C();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C886D5EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B7F58, &qword_1C8BF02B0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  KnowledgeResponseIntentTool = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.GenerateKnowledgeResponseIntentTool(0);
  MEMORY[0x1EEE9AC00](KnowledgeResponseIntentTool);
  sub_1C8778810();
  v8 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1C8778ED8(v6, &qword_1EC2B7F58, &qword_1C8BF02B0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1C877B4F0();
      sub_1C8776620(&qword_1EC2B30F0, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.GenerateKnowledgeResponseIntentTool, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.GenerateKnowledgeResponseIntentTool);
      sub_1C8BD4E2C();
      return sub_1C8858F2C();
    }

    result = sub_1C8858F2C();
  }

  __break(1u);
  return result;
}

void static Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v1 = OUTLINED_FUNCTION_84();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.OneOf_Value(v1);
  OUTLINED_FUNCTION_49_3();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_18_4();
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_103();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B80C0, &qword_1C8BF0378);
  OUTLINED_FUNCTION_80(v7);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_57_3();
  OUTLINED_FUNCTION_130_2();
  OUTLINED_FUNCTION_43_1(v0);
  if (v9)
  {
    OUTLINED_FUNCTION_37_2();
    if (v9)
    {
      sub_1C8778ED8(v0, &qword_1EC2B7F58, &qword_1C8BF02B0);
LABEL_12:
      type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool(0);
      OUTLINED_FUNCTION_165_1();
      OUTLINED_FUNCTION_0_10();
      v15 = sub_1C8776620(v13, v14, MEMORY[0x1E69AAC10]);
      v10 = OUTLINED_FUNCTION_64_0(v15);
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_253();
  sub_1C8778810();
  OUTLINED_FUNCTION_37_2();
  if (v9)
  {
    OUTLINED_FUNCTION_101_1();
    sub_1C8858F2C();
LABEL_9:
    sub_1C8778ED8(v0, &qword_1EC2B80C0, &qword_1C8BF0378);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_168_1();
  OUTLINED_FUNCTION_168_0();
  static Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.OneOf_Value.== infix(_:_:)();
  v12 = v11;
  sub_1C8858F2C();
  OUTLINED_FUNCTION_178_2();
  sub_1C8858F2C();
  sub_1C8778ED8(v0, &qword_1EC2B7F58, &qword_1C8BF02B0);
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

uint64_t sub_1C886DA80(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776620(&qword_1EC2B83E8, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C886DB00(uint64_t a1)
{
  v2 = sub_1C8776620(&qword_1EC2B30A8, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C886DB70(uint64_t a1, uint64_t a2)
{
  sub_1C8776620(&qword_1EC2B30A8, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C886DBF0()
{
  result = MEMORY[0x1CCA7E2D0](0xD000000000000018, 0x80000001C8C20DD0);
  qword_1EC2B7C68 = 0xD000000000000037;
  unk_1EC2B7C70 = 0x80000001C8C20B90;
  return result;
}

uint64_t sub_1C886DD00(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776620(&qword_1EC2B83E0, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.GenerateRichContentTool, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.GenerateRichContentTool);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C886DD80(uint64_t a1)
{
  v2 = sub_1C8776620(&qword_1EC2B3110, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.GenerateRichContentTool, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.GenerateRichContentTool);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C886DDF0(uint64_t a1, uint64_t a2)
{
  sub_1C8776620(&qword_1EC2B3110, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.GenerateRichContentTool, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.GenerateRichContentTool);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C886DE6C()
{
  result = MEMORY[0x1CCA7E2D0](0xD000000000000027, 0x80000001C8C20DA0);
  qword_1EC2B7C90 = 0xD000000000000037;
  *algn_1EC2B7C98 = 0x80000001C8C20B90;
  return result;
}

uint64_t sub_1C886DF7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776620(&qword_1EC2B83D8, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.GenerateRichContentFromMediaIntentTool, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.GenerateRichContentFromMediaIntentTool);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C886DFFC(uint64_t a1)
{
  v2 = sub_1C8776620(&qword_1EC2B82A8, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.GenerateRichContentFromMediaIntentTool, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.GenerateRichContentFromMediaIntentTool);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C886E06C(uint64_t a1, uint64_t a2)
{
  sub_1C8776620(&qword_1EC2B82A8, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.GenerateRichContentFromMediaIntentTool, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.GenerateRichContentFromMediaIntentTool);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C886E0E8()
{
  result = MEMORY[0x1CCA7E2D0](0xD000000000000018, 0x80000001C8C20D80);
  qword_1EC2B7CB8 = 0xD000000000000037;
  unk_1EC2B7CC0 = 0x80000001C8C20B90;
  return result;
}

uint64_t sub_1C886E1F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776620(&qword_1EC2B83D0, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.GenerateImageIntentTool, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.GenerateImageIntentTool);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C886E278(uint64_t a1)
{
  v2 = sub_1C8776620(&qword_1EC2B82C0, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.GenerateImageIntentTool, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.GenerateImageIntentTool);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C886E2E8(uint64_t a1, uint64_t a2)
{
  sub_1C8776620(&qword_1EC2B82C0, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.GenerateImageIntentTool, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.GenerateImageIntentTool);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C886E364()
{
  result = MEMORY[0x1CCA7E2D0](0xD000000000000024, 0x80000001C8C20D50);
  qword_1EC2B7CE0 = 0xD000000000000037;
  *algn_1EC2B7CE8 = 0x80000001C8C20B90;
  return result;
}

uint64_t sub_1C886E478(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776620(&qword_1EC2B83C8, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.GenerateKnowledgeResponseIntentTool, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.GenerateKnowledgeResponseIntentTool);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C886E4F8(uint64_t a1)
{
  v2 = sub_1C8776620(&qword_1EC2B30F0, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.GenerateKnowledgeResponseIntentTool, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.GenerateKnowledgeResponseIntentTool);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C886E568(uint64_t a1, uint64_t a2)
{
  sub_1C8776620(&qword_1EC2B30F0, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.GenerateKnowledgeResponseIntentTool, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.GenerateKnowledgeResponseIntentTool);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C886E608(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v4, a2);
  v5 = OUTLINED_FUNCTION_5_0();
  __swift_project_value_buffer(v5, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v7 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v8 = *(*v7 + 72);
  v9 = (*(*v7 + 80) + 32) & ~*(*v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1C8BE74A0;
  v11 = (v10 + v9);
  v12 = v10 + v9 + v7[14];
  *v11 = 1;
  *v12 = "implicit";
  *(v12 + 8) = 8;
  *(v12 + 16) = 2;
  v13 = *MEMORY[0x1E69AADC8];
  sub_1C8BD50FC();
  OUTLINED_FUNCTION_49_3();
  v15 = *(v14 + 104);
  (v15)(v12, v13, v2);
  v16 = v11 + v8 + v7[14];
  *(v11 + v8) = 2;
  *v16 = "explicit";
  *(v16 + 1) = 8;
  v16[16] = 2;
  v15();
  return sub_1C8BD510C();
}

void Siri_Nlu_Internal_SiriMessageTypes_QueryType.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_115();
  v2 = OUTLINED_FUNCTION_233();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_80(v4);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_97_0();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryType.OneOf_Value(0);
  OUTLINED_FUNCTION_72_2(v1);
  if (v6)
  {
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_104_0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = OUTLINED_FUNCTION_9_4();
    sub_1C886EAD0(v7, v8, v9, v10);
  }

  else
  {
    v11 = OUTLINED_FUNCTION_9_4();
    sub_1C886E8BC(v11, v12, v13, v14);
  }

  OUTLINED_FUNCTION_100_2();
  sub_1C8858F2C();
  if (!v0)
  {
LABEL_6:
    type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryType(0);
    OUTLINED_FUNCTION_113_1();
  }

  OUTLINED_FUNCTION_245_1();
}

uint64_t sub_1C886E8BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B7F68, &qword_1C8BF02C0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryType.Implicit(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C8778810();
  v8 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryType.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1C8778ED8(v6, &qword_1EC2B7F68, &qword_1C8BF02C0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1C877B4F0();
      sub_1C8776620(&qword_1EC2B3350, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryType.Implicit, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_QueryType.Implicit);
      sub_1C8BD4E2C();
      return sub_1C8858F2C();
    }

    result = sub_1C8858F2C();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C886EAD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B7F68, &qword_1C8BF02C0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryType.Explicit(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C8778810();
  v8 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryType.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1C8778ED8(v6, &qword_1EC2B7F68, &qword_1C8BF02C0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C877B4F0();
      sub_1C8776620(&qword_1EC2B3370, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryType.Explicit, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_QueryType.Explicit);
      sub_1C8BD4E2C();
      return sub_1C8858F2C();
    }

    result = sub_1C8858F2C();
  }

  __break(1u);
  return result;
}

void static Siri_Nlu_Internal_SiriMessageTypes_QueryType.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v1 = OUTLINED_FUNCTION_84();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryType.OneOf_Value(v1);
  OUTLINED_FUNCTION_49_3();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_18_4();
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_103();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B80F0, &qword_1C8BF0380);
  OUTLINED_FUNCTION_80(v7);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_57_3();
  OUTLINED_FUNCTION_130_2();
  OUTLINED_FUNCTION_43_1(v0);
  if (v9)
  {
    OUTLINED_FUNCTION_37_2();
    if (v9)
    {
      sub_1C8778ED8(v0, &qword_1EC2B7F68, &qword_1C8BF02C0);
LABEL_12:
      type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryType(0);
      OUTLINED_FUNCTION_165_1();
      OUTLINED_FUNCTION_0_10();
      v15 = sub_1C8776620(v13, v14, MEMORY[0x1E69AAC10]);
      v10 = OUTLINED_FUNCTION_64_0(v15);
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_253();
  sub_1C8778810();
  OUTLINED_FUNCTION_37_2();
  if (v9)
  {
    OUTLINED_FUNCTION_100_2();
    sub_1C8858F2C();
LABEL_9:
    sub_1C8778ED8(v0, &qword_1EC2B80F0, &qword_1C8BF0380);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_168_1();
  OUTLINED_FUNCTION_168_0();
  static Siri_Nlu_Internal_SiriMessageTypes_QueryType.OneOf_Value.== infix(_:_:)();
  v12 = v11;
  sub_1C8858F2C();
  OUTLINED_FUNCTION_178_2();
  sub_1C8858F2C();
  sub_1C8778ED8(v0, &qword_1EC2B7F68, &qword_1C8BF02C0);
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

uint64_t sub_1C886EF64(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776620(&qword_1EC2B83C0, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryType, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_QueryType);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C886EFE4(uint64_t a1)
{
  v2 = sub_1C8776620(&qword_1EC2B3330, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryType, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_QueryType);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C886F054(uint64_t a1, uint64_t a2)
{
  sub_1C8776620(&qword_1EC2B3330, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryType, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_QueryType);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C886F190(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776620(&qword_1EC2B83B8, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryType.Implicit, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_QueryType.Implicit);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C886F210(uint64_t a1)
{
  v2 = sub_1C8776620(&qword_1EC2B3350, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryType.Implicit, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_QueryType.Implicit);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C886F280(uint64_t a1, uint64_t a2)
{
  sub_1C8776620(&qword_1EC2B3350, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryType.Implicit, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_QueryType.Implicit);

  return sub_1C8BD4CFC();
}

void sub_1C886F31C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_263_0();
  OUTLINED_FUNCTION_193_1();
  v2 = MEMORY[0x1CCA7E2D0]();
  OUTLINED_FUNCTION_192_1(v2, v3, v4, v5, v6, v7, v8, v9, v10, v11);
}

void Siri_Nlu_Internal_SiriMessageTypes_QueryType.Explicit.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10)
{
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_80_0(v12, v13, v14);
  v15 = OUTLINED_FUNCTION_206_1();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(v15, v16);
  OUTLINED_FUNCTION_80(v17);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v18);
  v19 = OUTLINED_FUNCTION_17_4();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxRewrite(v19);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v20);
  v21 = OUTLINED_FUNCTION_50_4();
  v22 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryType.Explicit(v21);
  OUTLINED_FUNCTION_82(v22);
  OUTLINED_FUNCTION_72_2(v11);
  if (v23)
  {
    v26 = sub_1C8778ED8(v11, &qword_1EC2B7F78, &qword_1C8BF02D0);
LABEL_6:
    OUTLINED_FUNCTION_144(v26, v27, a10);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_11_7();
  OUTLINED_FUNCTION_252_1();
  v25 = sub_1C8776620(&qword_1EC2B3308, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxRewrite, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_AjaxRewrite);
  OUTLINED_FUNCTION_54_3(v25);
  OUTLINED_FUNCTION_99_1();
  v26 = sub_1C8858F2C();
  if (!v10)
  {
    a10 = &qword_1C8BF02D0;
    goto LABEL_6;
  }

LABEL_7:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

uint64_t sub_1C886F57C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776620(&qword_1EC2B83B0, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryType.Explicit, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_QueryType.Explicit);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C886F5FC(uint64_t a1)
{
  v2 = sub_1C8776620(&qword_1EC2B3370, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryType.Explicit, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_QueryType.Explicit);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C886F66C(uint64_t a1, uint64_t a2)
{
  sub_1C8776620(&qword_1EC2B3370, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryType.Explicit, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_QueryType.Explicit);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C886F78C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  OUTLINED_FUNCTION_12_0();
  v7 = *v6 == *v3 && *(v4 + 8) == v3[1];
  if (!v7 && (sub_1C8BD529C() & 1) == 0)
  {
    return 0;
  }

  a3(0);
  OUTLINED_FUNCTION_165_1();
  OUTLINED_FUNCTION_0_10();
  v10 = sub_1C8776620(v8, v9, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_64_0(v10) & 1;
}

uint64_t sub_1C886F8AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776620(&qword_1EC2B83A8, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxRewrite, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_AjaxRewrite);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C886F92C(uint64_t a1)
{
  v2 = sub_1C8776620(&qword_1EC2B3308, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxRewrite, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_AjaxRewrite);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C886F99C(uint64_t a1, uint64_t a2)
{
  sub_1C8776620(&qword_1EC2B3308, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxRewrite, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_AjaxRewrite);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C886FA98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v31 = a2;
  v6 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_GenAIPartner.ChatGPT(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v26 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v28 = &v23 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B7F88, &qword_1C8BF02E0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v23 - v11;
  v13 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_GenAIPartner.OneOf_Value(0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8490, &qword_1C8BF3BE0);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v23 - v19;
  __swift_storeEnumTagSinglePayload(&v23 - v19, 1, 1, v6);
  v27 = a1;
  sub_1C8778810();
  v25 = v13;
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    v24 = v18;
    sub_1C8778ED8(v12, &qword_1EC2B7F88, &qword_1C8BF02E0);
  }

  else
  {
    sub_1C877B4F0();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C8858F2C();
      return sub_1C8778ED8(v20, &qword_1EC2B8490, &qword_1C8BF3BE0);
    }

    v24 = v18;
    sub_1C877B4F0();
    sub_1C8778ED8(v20, &qword_1EC2B8490, &qword_1C8BF3BE0);
    sub_1C877B4F0();
    sub_1C877B4F0();
    __swift_storeEnumTagSinglePayload(v20, 0, 1, v6);
  }

  sub_1C8776620(&qword_1EC2B8118, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_GenAIPartner.ChatGPT, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_GenAIPartner.ChatGPT);
  sub_1C8BD4C7C();
  if (v4)
  {
    return sub_1C8778ED8(v20, &qword_1EC2B8490, &qword_1C8BF3BE0);
  }

  v20 = v24;
  sub_1C87791EC();
  if (__swift_getEnumTagSinglePayload(v20, 1, v6) == 1)
  {
    return sub_1C8778ED8(v20, &qword_1EC2B8490, &qword_1C8BF3BE0);
  }

  sub_1C877B4F0();
  v22 = v27;
  sub_1C8778ED8(v27, &qword_1EC2B7F88, &qword_1C8BF02E0);
  sub_1C877B4F0();
  return __swift_storeEnumTagSinglePayload(v22, 0, 1, v25);
}

void Siri_Nlu_Internal_SiriMessageTypes_GenAIPartner.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_197_0(v2, v3, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B7F88, &qword_1C8BF02E0);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_17_4();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_GenAIPartner.ChatGPT(v7);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_161_2();
  v9 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_GenAIPartner.OneOf_Value(0);
  OUTLINED_FUNCTION_76(v1, 1, v9);
  if (v10)
  {
    sub_1C8778ED8(v1, &qword_1EC2B7F88, &qword_1C8BF02E0);
LABEL_5:
    type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_GenAIPartner(0);
    OUTLINED_FUNCTION_163_2();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_64_4();
  sub_1C877B4F0();
  v11 = sub_1C8776620(&qword_1EC2B8118, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_GenAIPartner.ChatGPT, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_GenAIPartner.ChatGPT);
  OUTLINED_FUNCTION_135_1(v11);
  OUTLINED_FUNCTION_199_1();
  sub_1C8858F2C();
  if (!v0)
  {
    goto LABEL_5;
  }

LABEL_6:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

void static Siri_Nlu_Internal_SiriMessageTypes_GenAIPartner.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v1 = OUTLINED_FUNCTION_84();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_GenAIPartner.OneOf_Value(v1);
  OUTLINED_FUNCTION_49_3();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_18_4();
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_103();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8120, &qword_1C8BF0388);
  OUTLINED_FUNCTION_80(v7);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_57_3();
  OUTLINED_FUNCTION_130_2();
  OUTLINED_FUNCTION_43_1(v0);
  if (v9)
  {
    OUTLINED_FUNCTION_37_2();
    if (v9)
    {
      sub_1C8778ED8(v0, &qword_1EC2B7F88, &qword_1C8BF02E0);
LABEL_12:
      type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_GenAIPartner(0);
      OUTLINED_FUNCTION_165_1();
      OUTLINED_FUNCTION_0_10();
      v15 = sub_1C8776620(v13, v14, MEMORY[0x1E69AAC10]);
      v10 = OUTLINED_FUNCTION_64_0(v15);
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_253();
  sub_1C8778810();
  OUTLINED_FUNCTION_37_2();
  if (v9)
  {
    OUTLINED_FUNCTION_169();
    sub_1C8858F2C();
LABEL_9:
    sub_1C8778ED8(v0, &qword_1EC2B8120, &qword_1C8BF0388);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_168_1();
  OUTLINED_FUNCTION_168_0();
  static Siri_Nlu_Internal_SiriMessageTypes_GenAIPartner.OneOf_Value.== infix(_:_:)();
  v12 = v11;
  sub_1C8858F2C();
  OUTLINED_FUNCTION_178_2();
  sub_1C8858F2C();
  sub_1C8778ED8(v0, &qword_1EC2B7F88, &qword_1C8BF02E0);
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

uint64_t sub_1C8870314(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776620(&qword_1EC2B83A0, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_GenAIPartner, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_GenAIPartner);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8870394(uint64_t a1)
{
  v2 = sub_1C8776620(&qword_1EC2B8170, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_GenAIPartner, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_GenAIPartner);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8870404(uint64_t a1, uint64_t a2)
{
  sub_1C8776620(&qword_1EC2B8170, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_GenAIPartner, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_GenAIPartner);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8870484()
{
  result = MEMORY[0x1CCA7E2D0](0x545047746168432ELL, 0xE800000000000000);
  qword_1EC2B7DA0 = 0xD000000000000031;
  *algn_1EC2B7DA8 = 0x80000001C8C20C40;
  return result;
}

uint64_t sub_1C887058C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776620(&qword_1EC2B8398, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_GenAIPartner.ChatGPT, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_GenAIPartner.ChatGPT);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C887060C(uint64_t a1)
{
  v2 = sub_1C8776620(&qword_1EC2B8118, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_GenAIPartner.ChatGPT, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_GenAIPartner.ChatGPT);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C887067C(uint64_t a1, uint64_t a2)
{
  sub_1C8776620(&qword_1EC2B8118, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_GenAIPartner.ChatGPT, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_GenAIPartner.ChatGPT);

  return sub_1C8BD4CFC();
}

void Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_115();
  v2 = OUTLINED_FUNCTION_233();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_80(v4);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_97_0();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.OneOf_Value(0);
  OUTLINED_FUNCTION_72_2(v1);
  if (v6)
  {
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_104_0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = OUTLINED_FUNCTION_9_4();
    sub_1C8870A30(v7, v8, v9, v10);
  }

  else
  {
    v11 = OUTLINED_FUNCTION_9_4();
    sub_1C887081C(v11, v12, v13, v14);
  }

  OUTLINED_FUNCTION_98_0();
  sub_1C8858F2C();
  if (!v0)
  {
LABEL_6:
    type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery(0);
    OUTLINED_FUNCTION_113_1();
  }

  OUTLINED_FUNCTION_245_1();
}

uint64_t sub_1C887081C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B7F98, &qword_1C8BF02F0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.Implicit(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C8778810();
  v8 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1C8778ED8(v6, &qword_1EC2B7F98, &qword_1C8BF02F0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1C877B4F0();
      sub_1C8776620(&qword_1EC2B33D0, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.Implicit, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.Implicit);
      sub_1C8BD4E2C();
      return sub_1C8858F2C();
    }

    result = sub_1C8858F2C();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8870A30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B7F98, &qword_1C8BF02F0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.Explicit(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C8778810();
  v8 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.OneOf_Value(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1C8778ED8(v6, &qword_1EC2B7F98, &qword_1C8BF02F0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C877B4F0();
      sub_1C8776620(&qword_1EC2B33F0, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.Explicit, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.Explicit);
      sub_1C8BD4E2C();
      return sub_1C8858F2C();
    }

    result = sub_1C8858F2C();
  }

  __break(1u);
  return result;
}

void static Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v1 = OUTLINED_FUNCTION_84();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.OneOf_Value(v1);
  OUTLINED_FUNCTION_49_3();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_18_4();
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_103();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8138, &qword_1C8BF0390);
  OUTLINED_FUNCTION_80(v7);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_57_3();
  OUTLINED_FUNCTION_130_2();
  OUTLINED_FUNCTION_43_1(v0);
  if (v9)
  {
    OUTLINED_FUNCTION_37_2();
    if (v9)
    {
      sub_1C8778ED8(v0, &qword_1EC2B7F98, &qword_1C8BF02F0);
LABEL_12:
      type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery(0);
      OUTLINED_FUNCTION_165_1();
      OUTLINED_FUNCTION_0_10();
      v15 = sub_1C8776620(v13, v14, MEMORY[0x1E69AAC10]);
      v10 = OUTLINED_FUNCTION_64_0(v15);
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_253();
  sub_1C8778810();
  OUTLINED_FUNCTION_37_2();
  if (v9)
  {
    OUTLINED_FUNCTION_98_0();
    sub_1C8858F2C();
LABEL_9:
    sub_1C8778ED8(v0, &qword_1EC2B8138, &qword_1C8BF0390);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_168_1();
  OUTLINED_FUNCTION_168_0();
  static Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.OneOf_Value.== infix(_:_:)();
  v12 = v11;
  sub_1C8858F2C();
  OUTLINED_FUNCTION_178_2();
  sub_1C8858F2C();
  sub_1C8778ED8(v0, &qword_1EC2B7F98, &qword_1C8BF02F0);
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

uint64_t sub_1C8870EC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776620(&qword_1EC2B8390, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8870F44(uint64_t a1)
{
  v2 = sub_1C8776620(&qword_1EC2B33B0, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8870FB4(uint64_t a1, uint64_t a2)
{
  sub_1C8776620(&qword_1EC2B33B0, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery);

  return sub_1C8BD4CFC();
}

void Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.Implicit.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10)
{
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_80_0(v12, v13, v14);
  v15 = OUTLINED_FUNCTION_206_1();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(v15, v16);
  OUTLINED_FUNCTION_80(v17);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v18);
  v19 = OUTLINED_FUNCTION_17_4();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.ImplicitQuery(v19);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v20);
  v21 = OUTLINED_FUNCTION_50_4();
  v22 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.Implicit(v21);
  OUTLINED_FUNCTION_82(v22);
  OUTLINED_FUNCTION_72_2(v11);
  if (v23)
  {
    v26 = sub_1C8778ED8(v11, &qword_1EC2B7FA8, &qword_1C8BF0300);
LABEL_6:
    OUTLINED_FUNCTION_144(v26, v27, a10);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_10_7();
  OUTLINED_FUNCTION_252_1();
  v25 = sub_1C8776620(&qword_1EC2B3470, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.ImplicitQuery, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.ImplicitQuery);
  OUTLINED_FUNCTION_54_3(v25);
  OUTLINED_FUNCTION_97_1();
  v26 = sub_1C8858F2C();
  if (!v10)
  {
    a10 = &qword_1C8BF0300;
    goto LABEL_6;
  }

LABEL_7:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

uint64_t sub_1C8871260(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776620(&qword_1EC2B8388, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.Implicit, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.Implicit);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C88712E0(uint64_t a1)
{
  v2 = sub_1C8776620(&qword_1EC2B33D0, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.Implicit, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.Implicit);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8871350(uint64_t a1, uint64_t a2)
{
  sub_1C8776620(&qword_1EC2B33D0, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.Implicit, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.Implicit);

  return sub_1C8BD4CFC();
}

void Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.Explicit.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10)
{
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_80_0(v12, v13, v14);
  v15 = OUTLINED_FUNCTION_206_1();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(v15, v16);
  OUTLINED_FUNCTION_80(v17);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v18);
  v19 = OUTLINED_FUNCTION_17_4();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.ExplicitQuery(v19);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v20);
  v21 = OUTLINED_FUNCTION_50_4();
  v22 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.Explicit(v21);
  OUTLINED_FUNCTION_82(v22);
  OUTLINED_FUNCTION_72_2(v11);
  if (v23)
  {
    v26 = sub_1C8778ED8(v11, &qword_1EC2B7FB8, &qword_1C8BF0310);
LABEL_6:
    OUTLINED_FUNCTION_144(v26, v27, a10);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_9_9();
  OUTLINED_FUNCTION_252_1();
  v25 = sub_1C8776620(&qword_1EC2B3498, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.ExplicitQuery, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.ExplicitQuery);
  OUTLINED_FUNCTION_54_3(v25);
  OUTLINED_FUNCTION_96_1();
  v26 = sub_1C8858F2C();
  if (!v10)
  {
    a10 = &qword_1C8BF0310;
    goto LABEL_6;
  }

LABEL_7:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

uint64_t sub_1C88715FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776620(&qword_1EC2B8380, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.Explicit, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.Explicit);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C887167C(uint64_t a1)
{
  v2 = sub_1C8776620(&qword_1EC2B33F0, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.Explicit, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.Explicit);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C88716EC(uint64_t a1, uint64_t a2)
{
  sub_1C8776620(&qword_1EC2B33F0, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.Explicit, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.Explicit);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C88717BC()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B7E40);
  __swift_project_value_buffer(v0, qword_1EC2B7E40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE6F70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "rewrittenUtterance";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "correctionOutcome";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "redactedUtterance";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C88719E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  a5(0);
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.CorrectionOutcome(0);
  OUTLINED_FUNCTION_94_2();
  sub_1C8776620(v5, v6, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.CorrectionOutcome);
  OUTLINED_FUNCTION_195();
  return sub_1C8BD4C7C();
}

void Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.ImplicitQuery.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_50_2();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B7FC8, &qword_1C8BF0320);
  OUTLINED_FUNCTION_80(v2);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_212_1();
  v4 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.CorrectionOutcome(0);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_88_0();
  if (!v6 || (OUTLINED_FUNCTION_195(), sub_1C8BD4DDC(), !v0))
  {
    type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.ImplicitQuery(0);
    sub_1C8778810();
    OUTLINED_FUNCTION_76(v1, 1, v4);
    if (v7)
    {
      sub_1C8778ED8(v1, &qword_1EC2B7FC8, &qword_1C8BF0320);
    }

    else
    {
      OUTLINED_FUNCTION_2_14();
      OUTLINED_FUNCTION_233();
      sub_1C877B4F0();
      OUTLINED_FUNCTION_94_2();
      sub_1C8776620(v8, v9, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.CorrectionOutcome);
      OUTLINED_FUNCTION_9_1();
      sub_1C8BD4E2C();
      OUTLINED_FUNCTION_43_4();
      sub_1C8858F2C();
      if (v0)
      {
        goto LABEL_10;
      }
    }

    OUTLINED_FUNCTION_88_0();
    if (!v10 || (OUTLINED_FUNCTION_195(), sub_1C8BD4DDC(), !v0))
    {
      OUTLINED_FUNCTION_69();
    }
  }

LABEL_10:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

void static Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.ImplicitQuery.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v3 = OUTLINED_FUNCTION_84();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.CorrectionOutcome(v3);
  OUTLINED_FUNCTION_49_3();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_18_4();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B7FC8, &qword_1C8BF0320);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_103();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8160, &qword_1C8BF0398);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_229_1();
  v11 = v11 && v9 == v10;
  if (!v11 && (sub_1C8BD529C() & 1) == 0)
  {
    goto LABEL_15;
  }

  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.ImplicitQuery(0);
  v12 = *(v7 + 48);
  OUTLINED_FUNCTION_196_1();
  sub_1C8778810();
  OUTLINED_FUNCTION_196_1();
  sub_1C8778810();
  OUTLINED_FUNCTION_43_1(v2);
  if (!v11)
  {
    OUTLINED_FUNCTION_253();
    sub_1C8778810();
    OUTLINED_FUNCTION_43_1(v2 + v12);
    if (!v13)
    {
      OUTLINED_FUNCTION_2_14();
      sub_1C877B4F0();
      OUTLINED_FUNCTION_168_0();
      static Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.CorrectionOutcome.== infix(_:_:)();
      v16 = v15;
      sub_1C8858F2C();
      sub_1C8858F2C();
      sub_1C8778ED8(v2, &qword_1EC2B7FC8, &qword_1C8BF0320);
      if ((v16 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_17;
    }

    OUTLINED_FUNCTION_43_4();
    sub_1C8858F2C();
LABEL_14:
    sub_1C8778ED8(v2, &qword_1EC2B8160, &qword_1C8BF0398);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_43_1(v2 + v12);
  if (!v11)
  {
    goto LABEL_14;
  }

  sub_1C8778ED8(v2, &qword_1EC2B7FC8, &qword_1C8BF0320);
LABEL_17:
  v17 = *(v1 + 16) == *(v0 + 16) && *(v1 + 24) == *(v0 + 24);
  if (v17 || (sub_1C8BD529C() & 1) != 0)
  {
    sub_1C8BD49FC();
    OUTLINED_FUNCTION_0_10();
    v20 = sub_1C8776620(v18, v19, MEMORY[0x1E69AAC10]);
    v14 = OUTLINED_FUNCTION_64_0(v20);
    goto LABEL_23;
  }

LABEL_15:
  v14 = 0;
LABEL_23:
  OUTLINED_FUNCTION_157(v14);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C8871F38(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776620(&qword_1EC2B8378, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.ImplicitQuery, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.ImplicitQuery);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8871FB8(uint64_t a1)
{
  v2 = sub_1C8776620(&qword_1EC2B3470, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.ImplicitQuery, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.ImplicitQuery);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8872028(uint64_t a1, uint64_t a2)
{
  sub_1C8776620(&qword_1EC2B3470, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.ImplicitQuery, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.ImplicitQuery);

  return sub_1C8BD4CFC();
}

void sub_1C88720D8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_235_1(a1, a2);
  OUTLINED_FUNCTION_263_0();
  OUTLINED_FUNCTION_193_1();
  v2 = MEMORY[0x1CCA7E2D0]();
  OUTLINED_FUNCTION_192_1(v2, v3, v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1C8872148()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B7E68);
  __swift_project_value_buffer(v0, qword_1EC2B7E68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE68B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "rewrittenUtterance";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "correctionOutcome";
  *(v10 + 8) = 17;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "redactedUtterance";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "partner";
  *(v14 + 1) = 7;
  v14[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C88723AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.ExplicitQuery(0);
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_GenAIPartner(0);
  sub_1C8776620(&qword_1EC2B8170, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_GenAIPartner, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_GenAIPartner);
  return sub_1C8BD4C7C();
}

void Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.ExplicitQuery.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B7FD0, &qword_1C8BF0328);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_239_1();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_GenAIPartner(0);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_9_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B7FC8, &qword_1C8BF0320);
  OUTLINED_FUNCTION_80(v6);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_74();
  v9 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.CorrectionOutcome(v8);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_149_1();
  OUTLINED_FUNCTION_88_0();
  if (!v11 || (sub_1C8BD4DDC(), !v0))
  {
    type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.ExplicitQuery(0);
    sub_1C8778810();
    OUTLINED_FUNCTION_76(v1, 1, v9);
    if (v12)
    {
      sub_1C8778ED8(v1, &qword_1EC2B7FC8, &qword_1C8BF0320);
    }

    else
    {
      OUTLINED_FUNCTION_2_14();
      OUTLINED_FUNCTION_253();
      sub_1C877B4F0();
      OUTLINED_FUNCTION_94_2();
      sub_1C8776620(v13, v14, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.CorrectionOutcome);
      sub_1C8BD4E2C();
      OUTLINED_FUNCTION_43_4();
      sub_1C8858F2C();
      if (v0)
      {
        goto LABEL_14;
      }
    }

    OUTLINED_FUNCTION_88_0();
    if (!v15 || (sub_1C8BD4DDC(), !v0))
    {
      sub_1C8778810();
      OUTLINED_FUNCTION_72_2(v2);
      if (v12)
      {
        sub_1C8778ED8(v2, &qword_1EC2B7FD0, &qword_1C8BF0328);
LABEL_13:
        OUTLINED_FUNCTION_178_2();
        sub_1C8BD49DC();
        goto LABEL_14;
      }

      OUTLINED_FUNCTION_8_10();
      sub_1C877B4F0();
      sub_1C8776620(&qword_1EC2B8170, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_GenAIPartner, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_GenAIPartner);
      sub_1C8BD4E2C();
      OUTLINED_FUNCTION_95_1();
      sub_1C8858F2C();
      if (!v0)
      {
        goto LABEL_13;
      }
    }
  }

LABEL_14:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

void static Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.ExplicitQuery.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v4 = OUTLINED_FUNCTION_84();
  v34 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_GenAIPartner(v4);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_33();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B7FD0, &qword_1C8BF0328);
  OUTLINED_FUNCTION_80(v6);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_212_1();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8178, &qword_1C8BF03A0);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_27_0();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.CorrectionOutcome(v9);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_33();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B7FC8, &qword_1C8BF0320);
  OUTLINED_FUNCTION_80(v11);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8160, &qword_1C8BF0398);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_239_1();
  v15 = *v1 == *v0 && v1[1] == v0[1];
  if (!v15 && (sub_1C8BD529C() & 1) == 0)
  {
    goto LABEL_31;
  }

  v32 = v2;
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.ExplicitQuery(0);
  v16 = *(v13 + 48);
  OUTLINED_FUNCTION_265_0();
  sub_1C8778810();
  OUTLINED_FUNCTION_265_0();
  sub_1C8778810();
  OUTLINED_FUNCTION_73(v3);
  if (v15)
  {
    OUTLINED_FUNCTION_73(v3 + v16);
    if (v15)
    {
      sub_1C8778ED8(v3, &qword_1EC2B7FC8, &qword_1C8BF0320);
      goto LABEL_16;
    }

LABEL_14:
    v18 = &qword_1EC2B8160;
    v19 = &qword_1C8BF0398;
    v20 = v3;
LABEL_30:
    sub_1C8778ED8(v20, v18, v19);
    goto LABEL_31;
  }

  sub_1C8778810();
  OUTLINED_FUNCTION_73(v3 + v16);
  if (v17)
  {
    OUTLINED_FUNCTION_43_4();
    sub_1C8858F2C();
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_2_14();
  sub_1C877B4F0();
  static Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.CorrectionOutcome.== infix(_:_:)();
  v22 = v21;
  sub_1C8858F2C();
  OUTLINED_FUNCTION_156_1();
  sub_1C8858F2C();
  sub_1C8778ED8(v3, &qword_1EC2B7FC8, &qword_1C8BF0320);
  if ((v22 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_16:
  v23 = v1[2] == v0[2] && v1[3] == v0[3];
  if (!v23 && (sub_1C8BD529C() & 1) == 0)
  {
    goto LABEL_31;
  }

  v24 = *(v33 + 48);
  sub_1C8778810();
  sub_1C8778810();
  OUTLINED_FUNCTION_76(v32, 1, v34);
  if (v15)
  {
    OUTLINED_FUNCTION_65(v32 + v24);
    if (v15)
    {
      sub_1C8778ED8(v32, &qword_1EC2B7FD0, &qword_1C8BF0328);
LABEL_34:
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_0_10();
      v31 = sub_1C8776620(v29, v30, MEMORY[0x1E69AAC10]);
      v26 = OUTLINED_FUNCTION_64_0(v31);
      goto LABEL_32;
    }

    goto LABEL_29;
  }

  sub_1C8778810();
  OUTLINED_FUNCTION_65(v32 + v24);
  if (v25)
  {
    OUTLINED_FUNCTION_95_1();
    sub_1C8858F2C();
LABEL_29:
    v18 = &qword_1EC2B8178;
    v19 = &qword_1C8BF03A0;
    v20 = v32;
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_8_10();
  sub_1C877B4F0();
  static Siri_Nlu_Internal_SiriMessageTypes_GenAIPartner.== infix(_:_:)();
  v28 = v27;
  sub_1C8858F2C();
  sub_1C8858F2C();
  sub_1C8778ED8(v32, &qword_1EC2B7FD0, &qword_1C8BF0328);
  if (v28)
  {
    goto LABEL_34;
  }

LABEL_31:
  v26 = 0;
LABEL_32:
  OUTLINED_FUNCTION_157(v26);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C8872CAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776620(&qword_1EC2B8370, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.ExplicitQuery, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.ExplicitQuery);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8872D2C(uint64_t a1)
{
  v2 = sub_1C8776620(&qword_1EC2B3498, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.ExplicitQuery, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.ExplicitQuery);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8872D9C(uint64_t a1, uint64_t a2)
{
  sub_1C8776620(&qword_1EC2B3498, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.ExplicitQuery, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.ExplicitQuery);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8872E1C()
{
  result = MEMORY[0x1CCA7E2D0](0xD000000000000012, 0x80000001C8C20CB0);
  qword_1EC2B7E80 = 0xD00000000000002ELL;
  *algn_1EC2B7E88 = 0x80000001C8C20C80;
  return result;
}

uint64_t sub_1C8872F20()
{
  OUTLINED_FUNCTION_243_1();
  while (1)
  {
    OUTLINED_FUNCTION_258();
    result = sub_1C8BD4AFC();
    if (v1 || (v3 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      v4 = OUTLINED_FUNCTION_254_0();
      v0(v4);
    }
  }

  return result;
}

uint64_t sub_1C8872F80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v31 = a2;
  v6 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.CorrectionOutcome.Undo(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v26 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v28 = &v23 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B7FD8, &qword_1C8BF0330);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v23 - v11;
  v13 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.CorrectionOutcome.OneOf_Value(0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8478, &qword_1C8BF3BC8);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v23 - v19;
  __swift_storeEnumTagSinglePayload(&v23 - v19, 1, 1, v6);
  v27 = a1;
  sub_1C8778810();
  v25 = v13;
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    v24 = v18;
    sub_1C8778ED8(v12, &qword_1EC2B7FD8, &qword_1C8BF0330);
  }

  else
  {
    sub_1C877B4F0();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C8858F2C();
      return sub_1C8778ED8(v20, &qword_1EC2B8478, &qword_1C8BF3BC8);
    }

    v24 = v18;
    sub_1C877B4F0();
    sub_1C8778ED8(v20, &qword_1EC2B8478, &qword_1C8BF3BC8);
    sub_1C877B4F0();
    sub_1C877B4F0();
    __swift_storeEnumTagSinglePayload(v20, 0, 1, v6);
  }

  sub_1C8776620(&qword_1EC2B8188, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.CorrectionOutcome.Undo, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.CorrectionOutcome.Undo);
  sub_1C8BD4C7C();
  if (v4)
  {
    return sub_1C8778ED8(v20, &qword_1EC2B8478, &qword_1C8BF3BC8);
  }

  v20 = v24;
  sub_1C87791EC();
  if (__swift_getEnumTagSinglePayload(v20, 1, v6) == 1)
  {
    return sub_1C8778ED8(v20, &qword_1EC2B8478, &qword_1C8BF3BC8);
  }

  sub_1C877B4F0();
  v22 = v27;
  sub_1C8778ED8(v27, &qword_1EC2B7FD8, &qword_1C8BF0330);
  sub_1C877B4F0();
  return __swift_storeEnumTagSinglePayload(v22, 0, 1, v25);
}

void Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.CorrectionOutcome.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_197_0(v2, v3, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B7FD8, &qword_1C8BF0330);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_17_4();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.CorrectionOutcome.Undo(v7);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_161_2();
  v9 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.CorrectionOutcome.OneOf_Value(0);
  OUTLINED_FUNCTION_76(v1, 1, v9);
  if (v10)
  {
    sub_1C8778ED8(v1, &qword_1EC2B7FD8, &qword_1C8BF0330);
LABEL_5:
    type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.CorrectionOutcome(0);
    OUTLINED_FUNCTION_163_2();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_62_2();
  sub_1C877B4F0();
  v11 = sub_1C8776620(&qword_1EC2B8188, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.CorrectionOutcome.Undo, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.CorrectionOutcome.Undo);
  OUTLINED_FUNCTION_135_1(v11);
  OUTLINED_FUNCTION_199_1();
  sub_1C8858F2C();
  if (!v0)
  {
    goto LABEL_5;
  }

LABEL_6:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

void static Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.CorrectionOutcome.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v1 = OUTLINED_FUNCTION_84();
  type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.CorrectionOutcome.OneOf_Value(v1);
  OUTLINED_FUNCTION_49_3();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_18_4();
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_103();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8190, &qword_1C8BF03A8);
  OUTLINED_FUNCTION_80(v7);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_57_3();
  OUTLINED_FUNCTION_130_2();
  OUTLINED_FUNCTION_43_1(v0);
  if (v9)
  {
    OUTLINED_FUNCTION_37_2();
    if (v9)
    {
      sub_1C8778ED8(v0, &qword_1EC2B7FD8, &qword_1C8BF0330);
LABEL_12:
      type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.CorrectionOutcome(0);
      OUTLINED_FUNCTION_165_1();
      OUTLINED_FUNCTION_0_10();
      v15 = sub_1C8776620(v13, v14, MEMORY[0x1E69AAC10]);
      v10 = OUTLINED_FUNCTION_64_0(v15);
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_253();
  sub_1C8778810();
  OUTLINED_FUNCTION_37_2();
  if (v9)
  {
    OUTLINED_FUNCTION_169();
    sub_1C8858F2C();
LABEL_9:
    sub_1C8778ED8(v0, &qword_1EC2B8190, &qword_1C8BF03A8);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_168_1();
  OUTLINED_FUNCTION_168_0();
  static Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.CorrectionOutcome.OneOf_Value.== infix(_:_:)();
  v12 = v11;
  sub_1C8858F2C();
  OUTLINED_FUNCTION_178_2();
  sub_1C8858F2C();
  sub_1C8778ED8(v0, &qword_1EC2B7FD8, &qword_1C8BF0330);
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

uint64_t sub_1C88737E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776620(&qword_1EC2B8368, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.CorrectionOutcome, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.CorrectionOutcome);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8873860(uint64_t a1)
{
  v2 = sub_1C8776620(&qword_1EC2B8158, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.CorrectionOutcome, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.CorrectionOutcome);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C88738D0(uint64_t a1, uint64_t a2)
{
  sub_1C8776620(&qword_1EC2B8158, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.CorrectionOutcome, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.CorrectionOutcome);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8873950()
{
  if (qword_1EC2B50F8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2B7E80;
  v2 = *algn_1EC2B7E88;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0x6F646E552ELL, 0xE500000000000000);

  qword_1EC2B7EA8 = v1;
  unk_1EC2B7EB0 = v2;
  return result;
}

uint64_t sub_1C8873AA0()
{
  OUTLINED_FUNCTION_50();
  v2 = v1;
  sub_1C8BD530C();
  v2(0);
  v3 = OUTLINED_FUNCTION_184();
  sub_1C8776620(v3, v4, v0);
  sub_1C8BD515C();
  return sub_1C8BD531C();
}

uint64_t sub_1C8873B20(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776620(&qword_1EC2B8360, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.CorrectionOutcome.Undo, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.CorrectionOutcome.Undo);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8873BA0(uint64_t a1)
{
  v2 = sub_1C8776620(&qword_1EC2B8188, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.CorrectionOutcome.Undo, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.CorrectionOutcome.Undo);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8873C10(uint64_t a1, uint64_t a2)
{
  sub_1C8776620(&qword_1EC2B8188, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.CorrectionOutcome.Undo, &protocol conformance descriptor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.CorrectionOutcome.Undo);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8876520(uint64_t a1)
{
  result = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.SiriXFallback(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.SiriXRewrite(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.Planner(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.DecisionQueryRewrite(319);
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.Ajax(319);
          if (v6 <= 0x3F)
          {
            result = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_RoutingDecision.Search(319);
            if (v7 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_1C887660C(uint64_t a1)
{
  sub_1C8876690();
  if (v1 <= 0x3F)
  {
    sub_1C8BD49FC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C8876690()
{
  if (!qword_1EDACD398)
  {
    v0 = sub_1C8BD521C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDACD398);
    }
  }
}

void sub_1C887673C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1C8876844(uint64_t a1)
{
  result = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.SiriX(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.Planner(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryRewrite.Search(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_1C887697C(uint64_t a1)
{
  sub_1C8BD49FC();
  if (v1 <= 0x3F)
  {
    sub_1C887673C(319, &qword_1EC2B2FE0, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite.CorrectionOutcome, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1C8876A74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite.CorrectionOutcome.Undo(0);

  return MEMORY[0x1EEE6BEB8](a1, a2, v4, sub_1C87B5264);
}

uint64_t sub_1C8876ACC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_SiriXQueryRewrite.CorrectionOutcome.Undo(0);

  return MEMORY[0x1EEE6C118](a1, a2, a3, v6, sub_1C87B5290);
}

void sub_1C8876BC4(uint64_t a1)
{
  sub_1C8BD49FC();
  if (v1 <= 0x3F)
  {
    sub_1C887673C(319, &qword_1EC2B3088, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1C887673C(319, &qword_1EC2B3310, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_QueryType, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1C887673C(319, &qword_1EC2B3390, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1C8876D3C(uint64_t a1)
{
  result = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.GenerateRichContentTool(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.GenerateRichContentFromMediaIntentTool(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.GenerateImageIntentTool(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_PrescribedAjaxTool.GenerateKnowledgeResponseIntentTool(319);
        if (v5 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1C8876EDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_GenAIPartner.ChatGPT(0);

  return MEMORY[0x1EEE6BEB8](a1, a2, v4, sub_1C87B5274);
}

uint64_t sub_1C8876F34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_GenAIPartner.ChatGPT(0);

  return MEMORY[0x1EEE6C118](a1, a2, a3, v6, sub_1C87B52A0);
}

uint64_t sub_1C8876FB4()
{
  v1 = OUTLINED_FUNCTION_248_1();
  v3 = v2(v1);
  if (v4 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    v5 = sub_1C8BD49FC();
    v3 = v5;
    if (v6 <= 0x3F)
    {
      *(*(v0 - 8) + 84) = *(*(v5 - 8) + 84);
      return 0;
    }
  }

  return v3;
}

uint64_t sub_1C88770F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = OUTLINED_FUNCTION_248_1();
  result = v7(v6);
  if (v9 <= 0x3F)
  {
    result = a5(319);
    if (v10 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return OUTLINED_FUNCTION_169_2();
    }
  }

  return result;
}

void sub_1C88771AC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  OUTLINED_FUNCTION_248_1();
  v7 = sub_1C8BD49FC();
  if (v8 <= 0x3F)
  {
    v20 = v7;
    sub_1C887673C(319, a4, a5, MEMORY[0x1E69E6720]);
    if (v10 <= 0x3F)
    {
      OUTLINED_FUNCTION_83(v9, v10, v11, v12, v13, v14, v15, v16, v17, *v18, *&v18[4], 0, v19, v20, v21);
      OUTLINED_FUNCTION_169_2();
    }
  }
}

void sub_1C8877234(uint64_t a1)
{
  sub_1C8BD49FC();
  if (v1 <= 0x3F)
  {
    sub_1C887673C(319, &qword_1EC2B33F8, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.CorrectionOutcome, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C88772F8(uint64_t a1)
{
  sub_1C8BD49FC();
  if (v1 <= 0x3F)
  {
    sub_1C887673C(319, &qword_1EC2B33F8, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.CorrectionOutcome, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1C887673C(319, &qword_1EC2B3280, type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_GenAIPartner, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C8877438()
{
  v0 = OUTLINED_FUNCTION_248_1();
  sub_1C887673C(v0, v1, v2, v3);
  if (v5 <= 0x3F)
  {
    v17 = v4;
    v6 = sub_1C8BD49FC();
    if (v7 <= 0x3F)
    {
      OUTLINED_FUNCTION_83(v6, v7, v8, v9, v10, v11, v12, v13, v14, *v15, *&v15[4], 0, v16, v17, v18);
      OUTLINED_FUNCTION_169_2();
    }
  }
}

uint64_t sub_1C88774A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.CorrectionOutcome.Undo(0);

  return MEMORY[0x1EEE6BEB8](a1, a2, v4, sub_1C87B527C);
}

uint64_t sub_1C88774F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Siri_Nlu_Internal_SiriMessageTypes_AjaxQuery.CorrectionOutcome.Undo(0);

  return MEMORY[0x1EEE6C118](a1, a2, a3, v6, sub_1C87B52A8);
}

uint64_t sub_1C88775A0()
{
  OUTLINED_FUNCTION_248_1();
  result = sub_1C8BD49FC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return OUTLINED_FUNCTION_169_2();
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_107_1(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);

  return _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
}

uint64_t OUTLINED_FUNCTION_113_1()
{

  return sub_1C8BD49DC();
}

uint64_t OUTLINED_FUNCTION_122_1()
{
  v1 = *(v0 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t OUTLINED_FUNCTION_168_1()
{

  return sub_1C877B4F0();
}

uint64_t OUTLINED_FUNCTION_219_0(uint64_t a1)
{
  *v1 = 0;
  v1[1] = 0xE000000000000000;

  return _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
}

uint64_t OUTLINED_FUNCTION_220_0(uint64_t a1)
{

  return sub_1C8BD517C();
}

uint64_t OUTLINED_FUNCTION_222_1()
{

  return sub_1C877B4F0();
}

uint64_t OUTLINED_FUNCTION_223_2()
{

  return sub_1C877B4F0();
}

void *OUTLINED_FUNCTION_237_0(void *result)
{
  *v1 = result;
  *result = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_252_1()
{

  return sub_1C877B4F0();
}

uint64_t OUTLINED_FUNCTION_253_1()
{

  return sub_1C8778ED8(v0 + v3, v2, v1);
}

uint64_t OUTLINED_FUNCTION_256_1()
{

  return sub_1C88593CC();
}

uint64_t OUTLINED_FUNCTION_257_1()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_258_1()
{

  return sub_1C877B4F0();
}

uint64_t OUTLINED_FUNCTION_260_1(uint64_t a1)
{

  return _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
}

uint64_t OUTLINED_FUNCTION_261_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1C8BD517C();
}

uint64_t OUTLINED_FUNCTION_268_0()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t get_enum_tag_for_layout_string_12SiriNLUTypes28UsoGraphProtoConversionErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1C8877D68(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 17))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 3)
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

uint64_t sub_1C8877DA8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_1C8877DEC(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t Siri_Nlu_Internal_Psc_PSCServiceRequest.requestID.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_80(v2);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v9 - v4;
  OUTLINED_FUNCTION_2_15();
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_22_1();
  v6 = type metadata accessor for Siri_Nlu_External_UUID(0);
  OUTLINED_FUNCTION_1_0();
  if (v7)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_15_2(v6[5]);
    OUTLINED_FUNCTION_15_2(v6[6]);
    *(a1 + v6[7]) = 6;
    result = OUTLINED_FUNCTION_1_0();
    if (!v7)
    {
      return sub_1C8778ED8(v5, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9_10();
    return OUTLINED_FUNCTION_44_4();
  }

  return result;
}

uint64_t Siri_Nlu_Internal_Psc_PSCServiceRequest.requestID.setter()
{
  OUTLINED_FUNCTION_31_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_11_8();
  if ((OUTLINED_FUNCTION_41_1(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_12_10();
    v3 = OUTLINED_FUNCTION_2();
    v4 = sub_1C887A054(v3);
    OUTLINED_FUNCTION_40(v4);
  }

  OUTLINED_FUNCTION_9_10();
  OUTLINED_FUNCTION_39_4();
  v5 = type metadata accessor for Siri_Nlu_External_UUID(0);
  OUTLINED_FUNCTION_33_1(v5);
  v6 = OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_37_1(v6, v7, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  return swift_endAccess();
}

void Siri_Nlu_Internal_Psc_PSCServiceRequest.requestID.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_14_2(v3);
  v4 = OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_13_2(v6);
  v8 = type metadata accessor for Siri_Nlu_External_UUID(v7);
  OUTLINED_FUNCTION_21();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_38_0(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v1 + 48) = v12;
  OUTLINED_FUNCTION_2_15();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_0_0();
  if (v13)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_11_0(v8[5]);
    OUTLINED_FUNCTION_11_0(v8[6]);
    v12[v8[7]] = 6;
    OUTLINED_FUNCTION_0_0();
    if (!v13)
    {
      sub_1C8778ED8(v0, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9_10();
    OUTLINED_FUNCTION_38_6();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_Internal_Psc_PSCServiceRequest.tokenisedUtterance.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v16 - v5;
  OUTLINED_FUNCTION_2_15();
  v7 = OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_Internal_Psc_PSCServiceRequestP33_284733F6A309D403ED33D37D2CDF37F613_StorageClass__tokenisedUtterance;
  OUTLINED_FUNCTION_16_0();
  sub_1C87867A0(v1 + v7, v6, &qword_1EC2B6538, &qword_1C8C12C80);
  v8 = type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_Tokenisation(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v9 = (a1 + v8[5]);
    *v9 = 0;
    v9[1] = 0;
    v10 = (a1 + v8[6]);
    *v10 = 0;
    v10[1] = 0;
    v11 = v8[7];
    v12 = type metadata accessor for Siri_Nlu_Internal_TokenChain(0);
    OUTLINED_FUNCTION_43(a1 + v11, v13, v14, v12);
    result = __swift_getEnumTagSinglePayload(v6, 1, v8);
    if (result != 1)
    {
      return sub_1C8778ED8(v6, &qword_1EC2B6538, &qword_1C8C12C80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_10();
    return sub_1C887D3FC();
  }

  return result;
}

uint64_t sub_1C8878310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(char *))
{
  v8 = (a5)(0, a2, a3, a4);
  OUTLINED_FUNCTION_80(v8);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v13 - v10;
  sub_1C887D450();
  return a7(v11);
}

uint64_t Siri_Nlu_Internal_Psc_PSCServiceRequest.tokenisedUtterance.setter()
{
  OUTLINED_FUNCTION_31_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6538, &qword_1C8C12C80);
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_11_8();
  if ((OUTLINED_FUNCTION_41_1(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_12_10();
    v3 = OUTLINED_FUNCTION_2();
    v4 = sub_1C887A054(v3);
    OUTLINED_FUNCTION_40(v4);
  }

  OUTLINED_FUNCTION_5_10();
  OUTLINED_FUNCTION_39_4();
  v5 = type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_Tokenisation(0);
  OUTLINED_FUNCTION_33_1(v5);
  v6 = OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_37_1(v6, v7, &qword_1EC2B6538, &qword_1C8C12C80);
  return swift_endAccess();
}

void Siri_Nlu_Internal_Psc_PSCServiceRequest.tokenisedUtterance.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_14_2(v3);
  v4 = OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_13_2(v6);
  v8 = type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_Tokenisation(v7);
  OUTLINED_FUNCTION_21();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_38_0(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v1 + 48) = v12;
  OUTLINED_FUNCTION_2_15();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_0_0();
  if (v13)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_26(v8[5]);
    OUTLINED_FUNCTION_26(v8[6]);
    v14 = v8[7];
    v15 = type metadata accessor for Siri_Nlu_Internal_TokenChain(0);
    OUTLINED_FUNCTION_43(v12 + v14, v16, v17, v15);
    OUTLINED_FUNCTION_0_0();
    if (!v13)
    {
      sub_1C8778ED8(v0, &qword_1EC2B6538, &qword_1C8C12C80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_10();
    OUTLINED_FUNCTION_38_6();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

BOOL sub_1C8878608(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_80(v9);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v17 - v11;
  OUTLINED_FUNCTION_2_15();
  v13 = *a3;
  swift_beginAccess();
  sub_1C87867A0(v4 + v13, v12, a1, a2);
  v14 = a4(0);
  v15 = __swift_getEnumTagSinglePayload(v12, 1, v14) != 1;
  sub_1C8778ED8(v12, a1, a2);
  return v15;
}

uint64_t sub_1C8878718(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t *a4)
{
  v9 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_80(v10);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v23 - v12;
  v14 = *(type metadata accessor for Siri_Nlu_Internal_Psc_PSCServiceRequest(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(v4 + v14);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_12_10();
    v17 = OUTLINED_FUNCTION_2();
    v16 = sub_1C887A054(v17);
    *(v9 + v14) = v16;
  }

  v18 = a3(0);
  OUTLINED_FUNCTION_43(v13, v19, v20, v18);
  v21 = *a4;
  swift_beginAccess();
  sub_1C878656C(v13, v16 + v21, a1, a2);
  return swift_endAccess();
}

uint64_t Siri_Nlu_Internal_Psc_PSCServiceRequest.embeddings.getter@<X0>(void *a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_80(v2);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v9 - v4;
  OUTLINED_FUNCTION_2_15();
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_22_1();
  v6 = type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor(0);
  OUTLINED_FUNCTION_1_0();
  if (v7)
  {
    *a1 = MEMORY[0x1E69E7CC0];
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_15_2(v6[6]);
    OUTLINED_FUNCTION_15_2(v6[7]);
    OUTLINED_FUNCTION_15_2(v6[8]);
    OUTLINED_FUNCTION_18_2(v6[9]);
    result = OUTLINED_FUNCTION_1_0();
    if (!v7)
    {
      return sub_1C8778ED8(v5, &qword_1EC2B64A8, &unk_1C8BE7670);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_10();
    return OUTLINED_FUNCTION_44_4();
  }

  return result;
}

uint64_t Siri_Nlu_Internal_Psc_PSCServiceRequest.embeddings.setter()
{
  OUTLINED_FUNCTION_31_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64A8, &unk_1C8BE7670);
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_11_8();
  if ((OUTLINED_FUNCTION_41_1(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_12_10();
    v3 = OUTLINED_FUNCTION_2();
    v4 = sub_1C887A054(v3);
    OUTLINED_FUNCTION_40(v4);
  }

  OUTLINED_FUNCTION_6_10();
  OUTLINED_FUNCTION_39_4();
  v5 = type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor(0);
  OUTLINED_FUNCTION_33_1(v5);
  v6 = OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_37_1(v6, v7, &qword_1EC2B64A8, &unk_1C8BE7670);
  return swift_endAccess();
}

void Siri_Nlu_Internal_Psc_PSCServiceRequest.embeddings.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_14_2(v3);
  v4 = OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_13_2(v6);
  v8 = type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor(v7);
  OUTLINED_FUNCTION_21();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_38_0(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v1 + 48) = v12;
  OUTLINED_FUNCTION_2_15();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_0_0();
  if (v13)
  {
    *v12 = MEMORY[0x1E69E7CC0];
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_11_0(v8[6]);
    OUTLINED_FUNCTION_11_0(v8[7]);
    OUTLINED_FUNCTION_11_0(v8[8]);
    OUTLINED_FUNCTION_26(v8[9]);
    OUTLINED_FUNCTION_0_0();
    if (!v13)
    {
      sub_1C8778ED8(v0, &qword_1EC2B64A8, &unk_1C8BE7670);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_10();
    OUTLINED_FUNCTION_38_6();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_Internal_Psc_PSCServiceRequest.matchingSpans.getter()
{
  type metadata accessor for Siri_Nlu_Internal_Psc_PSCServiceRequest(0);
  swift_beginAccess();
}

uint64_t Siri_Nlu_Internal_Psc_PSCServiceRequest.matchingSpans.setter()
{
  v2 = v1;
  v3 = OUTLINED_FUNCTION_241();
  v4 = *(type metadata accessor for Siri_Nlu_Internal_Psc_PSCServiceRequest(v3) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_12_10();
    v7 = OUTLINED_FUNCTION_2();
    v6 = sub_1C887A054(v7);
    *(v2 + v4) = v6;
  }

  v8 = OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_Internal_Psc_PSCServiceRequestP33_284733F6A309D403ED33D37D2CDF37F613_StorageClass__matchingSpans;
  swift_beginAccess();
  *(v6 + v8) = v0;
}

void (*Siri_Nlu_Internal_Psc_PSCServiceRequest.matchingSpans.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x48uLL);
  *a1 = v3;
  v3[7] = v1;
  v4 = *(type metadata accessor for Siri_Nlu_Internal_Psc_PSCServiceRequest(0) + 20);
  *(v3 + 16) = v4;
  v5 = *(v1 + v4);
  v6 = OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_Internal_Psc_PSCServiceRequestP33_284733F6A309D403ED33D37D2CDF37F613_StorageClass__matchingSpans;
  swift_beginAccess();
  v3[6] = *(v5 + v6);

  return sub_1C8878D64;
}

void sub_1C8878D64(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  if (a2)
  {

    Siri_Nlu_Internal_Psc_PSCServiceRequest.matchingSpans.setter();
  }

  else
  {
    v4 = *(v2 + 64);
    v5 = *(v2 + 56);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v5 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 64);
      v9 = *(v2 + 56);
      OUTLINED_FUNCTION_12_10();
      v10 = OUTLINED_FUNCTION_2();
      v7 = sub_1C887A054(v10);
      *(v9 + v8) = v7;
    }

    v11 = OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_Internal_Psc_PSCServiceRequestP33_284733F6A309D403ED33D37D2CDF37F613_StorageClass__matchingSpans;
    swift_beginAccess();
    *(v7 + v11) = v3;
  }

  free(v2);
}

uint64_t Siri_Nlu_Internal_Psc_PSCServiceRequest.turnInput.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_80(v2);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v11 - v4;
  OUTLINED_FUNCTION_2_15();
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_22_1();
  v6 = type metadata accessor for Siri_Nlu_External_TurnInput(0);
  OUTLINED_FUNCTION_1_0();
  if (v7)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v8 = *(v6 + 20);
    if (qword_1EDACCB60 != -1)
    {
      OUTLINED_FUNCTION_25(&qword_1EDACCB60);
    }

    *(a1 + v8) = qword_1EDACCB68;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v5, 1, v6);

    if (EnumTagSinglePayload != 1)
    {
      return sub_1C8778ED8(v5, &qword_1EC2B6038, &unk_1C8BE8850);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_10();
    return OUTLINED_FUNCTION_44_4();
  }

  return result;
}

uint64_t Siri_Nlu_Internal_Psc_PSCServiceRequest.turnInput.setter()
{
  OUTLINED_FUNCTION_31_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6038, &unk_1C8BE8850);
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_11_8();
  if ((OUTLINED_FUNCTION_41_1(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_12_10();
    v3 = OUTLINED_FUNCTION_2();
    v4 = sub_1C887A054(v3);
    OUTLINED_FUNCTION_40(v4);
  }

  OUTLINED_FUNCTION_4_10();
  OUTLINED_FUNCTION_39_4();
  v5 = type metadata accessor for Siri_Nlu_External_TurnInput(0);
  OUTLINED_FUNCTION_33_1(v5);
  v6 = OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_37_1(v6, v7, &qword_1EC2B6038, &unk_1C8BE8850);
  return swift_endAccess();
}

void Siri_Nlu_Internal_Psc_PSCServiceRequest.turnInput.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_14_2(v3);
  v4 = OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_13_2(v6);
  v8 = type metadata accessor for Siri_Nlu_External_TurnInput(v7);
  OUTLINED_FUNCTION_21();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_38_0(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v1 + 48) = v12;
  OUTLINED_FUNCTION_2_15();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_0_0();
  if (v13)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v14 = *(v8 + 20);
    if (qword_1EDACCB60 != -1)
    {
      OUTLINED_FUNCTION_25(&qword_1EDACCB60);
    }

    *&v12[v14] = qword_1EDACCB68;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v0, 1, v8);

    if (EnumTagSinglePayload != 1)
    {
      sub_1C8778ED8(v0, &qword_1EC2B6038, &unk_1C8BE8850);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_10();
    OUTLINED_FUNCTION_38_6();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_Internal_Psc_PSCServiceRequest.legacyContext.getter@<X0>(void *a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_80(v2);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v8 - v4;
  OUTLINED_FUNCTION_2_15();
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_22_1();
  type metadata accessor for Siri_Nlu_External_LegacyNLContext(0);
  OUTLINED_FUNCTION_1_0();
  if (v6)
  {
    Siri_Nlu_External_LegacyNLContext.init()(a1);
    result = OUTLINED_FUNCTION_1_0();
    if (!v6)
    {
      return sub_1C8778ED8(v5, &qword_1EC2B5FB8, &unk_1C8BF3D70);
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_11();
    return OUTLINED_FUNCTION_44_4();
  }

  return result;
}

uint64_t Siri_Nlu_Internal_Psc_PSCServiceRequest.legacyContext.setter()
{
  OUTLINED_FUNCTION_31_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5FB8, &unk_1C8BF3D70);
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_11_8();
  if ((OUTLINED_FUNCTION_41_1(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_12_10();
    v3 = OUTLINED_FUNCTION_2();
    v4 = sub_1C887A054(v3);
    OUTLINED_FUNCTION_40(v4);
  }

  OUTLINED_FUNCTION_8_11();
  OUTLINED_FUNCTION_39_4();
  v5 = type metadata accessor for Siri_Nlu_External_LegacyNLContext(0);
  OUTLINED_FUNCTION_33_1(v5);
  v6 = OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_37_1(v6, v7, &qword_1EC2B5FB8, &unk_1C8BF3D70);
  return swift_endAccess();
}

void Siri_Nlu_Internal_Psc_PSCServiceRequest.legacyContext.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_14_2(v3);
  v4 = OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_13_2(v6);
  v8 = type metadata accessor for Siri_Nlu_External_LegacyNLContext(v7);
  OUTLINED_FUNCTION_21();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_38_0(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v1 + 48) = v12;
  OUTLINED_FUNCTION_2_15();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_0_0();
  if (v13)
  {
    v14 = MEMORY[0x1E69E7CC0];
    *v12 = MEMORY[0x1E69E7CC0];
    v12[1] = v14;
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    *(v12 + v8[7]) = 2;
    *(v12 + v8[8]) = 2;
    OUTLINED_FUNCTION_26(v8[9]);
    *(v12 + v8[10]) = v15;
    *(v12 + v8[11]) = 4;
    OUTLINED_FUNCTION_0_0();
    if (!v13)
    {
      sub_1C8778ED8(v0, &qword_1EC2B5FB8, &unk_1C8BF3D70);
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_11();
    OUTLINED_FUNCTION_38_6();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_Internal_Psc_PSCServiceRequest.nluRequestID.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_80(v2);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v13 - v4;
  OUTLINED_FUNCTION_2_15();
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_22_1();
  v6 = type metadata accessor for Siri_Nlu_External_RequestID(0);
  OUTLINED_FUNCTION_1_0();
  if (v7)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_18_2(v6[5]);
    v8 = v6[6];
    v9 = type metadata accessor for Siri_Nlu_External_UUID(0);
    OUTLINED_FUNCTION_43(a1 + v8, v10, v11, v9);
    OUTLINED_FUNCTION_18_2(v6[7]);
    OUTLINED_FUNCTION_18_2(v6[8]);
    OUTLINED_FUNCTION_18_2(v6[9]);
    OUTLINED_FUNCTION_18_2(v6[10]);
    *(a1 + v6[11]) = 6;
    result = OUTLINED_FUNCTION_1_0();
    if (!v7)
    {
      return sub_1C8778ED8(v5, &qword_1EC2B64B0, &unk_1C8BF3F40);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7_13();
    return OUTLINED_FUNCTION_44_4();
  }

  return result;
}

uint64_t Siri_Nlu_Internal_Psc_PSCServiceRequest.nluRequestID.setter()
{
  OUTLINED_FUNCTION_31_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64B0, &unk_1C8BF3F40);
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_11_8();
  if ((OUTLINED_FUNCTION_41_1(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_12_10();
    v3 = OUTLINED_FUNCTION_2();
    v4 = sub_1C887A054(v3);
    OUTLINED_FUNCTION_40(v4);
  }

  OUTLINED_FUNCTION_7_13();
  OUTLINED_FUNCTION_39_4();
  v5 = type metadata accessor for Siri_Nlu_External_RequestID(0);
  OUTLINED_FUNCTION_33_1(v5);
  v6 = OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_37_1(v6, v7, &qword_1EC2B64B0, &unk_1C8BF3F40);
  return swift_endAccess();
}

void Siri_Nlu_Internal_Psc_PSCServiceRequest.nluRequestID.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_14_2(v3);
  v4 = OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_13_2(v6);
  v8 = type metadata accessor for Siri_Nlu_External_RequestID(v7);
  OUTLINED_FUNCTION_21();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_38_0(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v1 + 48) = v12;
  OUTLINED_FUNCTION_2_15();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_0_0();
  if (v13)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_26(v8[5]);
    v14 = v8[6];
    v15 = type metadata accessor for Siri_Nlu_External_UUID(0);
    OUTLINED_FUNCTION_43(&v12[v14], v16, v17, v15);
    OUTLINED_FUNCTION_26(v8[7]);
    OUTLINED_FUNCTION_26(v8[8]);
    OUTLINED_FUNCTION_26(v8[9]);
    OUTLINED_FUNCTION_26(v8[10]);
    v12[v8[11]] = 6;
    OUTLINED_FUNCTION_0_0();
    if (!v13)
    {
      sub_1C8778ED8(v0, &qword_1EC2B64B0, &unk_1C8BF3F40);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7_13();
    OUTLINED_FUNCTION_38_6();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}