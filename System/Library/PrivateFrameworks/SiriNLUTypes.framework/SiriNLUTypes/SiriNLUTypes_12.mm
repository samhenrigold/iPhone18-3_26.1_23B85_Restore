uint64_t Siri_Nlu_External_AsrHypothesis.id.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_AsrHypothesis(v1);
  sub_1C8778ED8(v0 + *(v2 + 28), &qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_0_16();
  OUTLINED_FUNCTION_200();
  sub_1C879A720();
  type metadata accessor for Siri_Nlu_External_UUID(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_AsrHypothesis.id.modify()
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
  v9 = type metadata accessor for Siri_Nlu_External_UUID(v8);
  OUTLINED_FUNCTION_47_3(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_243(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_168(v13);
  v15 = type metadata accessor for Siri_Nlu_External_AsrHypothesis(v14);
  OUTLINED_FUNCTION_85(*(v15 + 28));
  OUTLINED_FUNCTION_5_6();
  if (v16)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_6_13();
    if (!v16)
    {
      sub_1C8778ED8(v0, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_16();
    OUTLINED_FUNCTION_184();
    sub_1C879A720();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_260();
}

uint64_t Siri_Nlu_External_AsrHypothesis.utterance.modify()
{
  v0 = OUTLINED_FUNCTION_17_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_41(v1);
  v3 = type metadata accessor for Siri_Nlu_External_AsrHypothesis(v2);
  if (OUTLINED_FUNCTION_4_1(*(v3 + 32)))
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

double Siri_Nlu_External_AsrHypothesis.probability.getter()
{
  v0 = type metadata accessor for Siri_Nlu_External_AsrHypothesis(0);
  result = OUTLINED_FUNCTION_2_12(*(v0 + 36));
  if (!v3)
  {
    return v2;
  }

  return result;
}

void Siri_Nlu_External_AsrHypothesis.probability.setter()
{
  v0 = OUTLINED_FUNCTION_380_0();
  v1 = type metadata accessor for Siri_Nlu_External_AsrHypothesis(v0);
  OUTLINED_FUNCTION_190_0(*(v1 + 36));
}

uint64_t Siri_Nlu_External_AsrHypothesis.probability.modify(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_33_0(a1);
  v3 = *(type metadata accessor for Siri_Nlu_External_AsrHypothesis(v2) + 36);
  *(v1 + 16) = v3;
  v4 = OUTLINED_FUNCTION_2_12(v3);
  if (!v6)
  {
    v4 = v5;
  }

  *v1 = v4;
  return OUTLINED_FUNCTION_74_0();
}

uint64_t sub_1C88A9F10()
{
  v0 = OUTLINED_FUNCTION_207();
  v1(v0);
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_21();
  v2 = OUTLINED_FUNCTION_196();

  return v3(v2);
}

uint64_t sub_1C88A9F9C()
{
  v0 = OUTLINED_FUNCTION_241();
  v1(v0);
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_21();
  v2 = OUTLINED_FUNCTION_167_1();

  return v3(v2);
}

uint64_t Siri_Nlu_External_AsrHypothesis.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  type metadata accessor for Siri_Nlu_External_AsrHypothesis(v0);
  return OUTLINED_FUNCTION_242();
}

uint64_t sub_1C88AA064()
{
  v0 = OUTLINED_FUNCTION_167();
  v2 = v1(v0);
  if (OUTLINED_FUNCTION_8_0(*(v2 + 20)))
  {
    OUTLINED_FUNCTION_20();
  }

  else
  {
    OUTLINED_FUNCTION_19_0();
  }

  return OUTLINED_FUNCTION_218();
}

uint64_t sub_1C88AA0AC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_External_AsrTokenInformation.postItnText.setter(v1, v2);
}

uint64_t sub_1C88AA104()
{
  v3 = OUTLINED_FUNCTION_68();
  v4(v3);
  result = OUTLINED_FUNCTION_24_0();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Siri_Nlu_External_AsrTokenInformation.postItnText.modify()
{
  v0 = OUTLINED_FUNCTION_17_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_41(v1);
  v3 = type metadata accessor for Siri_Nlu_External_AsrTokenInformation(v2);
  if (OUTLINED_FUNCTION_4_1(*(v3 + 20)))
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

uint64_t sub_1C88AA1F0()
{
  v1 = OUTLINED_FUNCTION_167();
  v2(v1);
  result = OUTLINED_FUNCTION_25_2();
  *v0 = 0;
  v0[1] = 0;
  return result;
}

uint64_t sub_1C88AA23C()
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

uint64_t sub_1C88AA284(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_External_AsrTokenInformation.phoneSequence.setter(v1, v2);
}

uint64_t sub_1C88AA2DC()
{
  v3 = OUTLINED_FUNCTION_68();
  v4(v3);
  result = OUTLINED_FUNCTION_24_0();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Siri_Nlu_External_AsrTokenInformation.phoneSequence.modify()
{
  v0 = OUTLINED_FUNCTION_17_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_41(v1);
  v3 = type metadata accessor for Siri_Nlu_External_AsrTokenInformation(v2);
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

uint64_t sub_1C88AA3C8()
{
  v1 = OUTLINED_FUNCTION_167();
  v2(v1);
  result = OUTLINED_FUNCTION_25_2();
  *v0 = 0;
  v0[1] = 0;
  return result;
}

uint64_t sub_1C88AA414(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_External_AsrTokenInformation.ipaPhoneSequence.setter(v1, v2);
}

uint64_t Siri_Nlu_External_AsrTokenInformation.ipaPhoneSequence.modify()
{
  v0 = OUTLINED_FUNCTION_17_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_41(v1);
  v3 = type metadata accessor for Siri_Nlu_External_AsrTokenInformation(v2);
  if (OUTLINED_FUNCTION_4_1(*(v3 + 28)))
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

uint64_t Siri_Nlu_External_AsrTokenInformation.addSpaceAfter.setter()
{
  v2 = OUTLINED_FUNCTION_241();
  result = type metadata accessor for Siri_Nlu_External_AsrTokenInformation(v2);
  *(v1 + *(result + 32)) = v0;
  return result;
}

uint64_t (*Siri_Nlu_External_AsrTokenInformation.addSpaceAfter.modify(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_55_0(a1);
  v2 = type metadata accessor for Siri_Nlu_External_AsrTokenInformation(v1);
  OUTLINED_FUNCTION_21_1(*(v2 + 32));
  return j_j__OUTLINED_FUNCTION_158;
}

uint64_t Siri_Nlu_External_AsrTokenInformation.removeSpaceAfter.setter()
{
  v2 = OUTLINED_FUNCTION_241();
  result = type metadata accessor for Siri_Nlu_External_AsrTokenInformation(v2);
  *(v1 + *(result + 36)) = v0;
  return result;
}

uint64_t (*Siri_Nlu_External_AsrTokenInformation.removeSpaceAfter.modify(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_55_0(a1);
  v2 = type metadata accessor for Siri_Nlu_External_AsrTokenInformation(v1);
  OUTLINED_FUNCTION_21_1(*(v2 + 36));
  return j_j__OUTLINED_FUNCTION_158;
}

uint64_t Siri_Nlu_External_AsrTokenInformation.removeSpaceBefore.setter()
{
  v2 = OUTLINED_FUNCTION_241();
  result = type metadata accessor for Siri_Nlu_External_AsrTokenInformation(v2);
  *(v1 + *(result + 40)) = v0;
  return result;
}

uint64_t (*Siri_Nlu_External_AsrTokenInformation.removeSpaceBefore.modify(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_55_0(a1);
  v2 = type metadata accessor for Siri_Nlu_External_AsrTokenInformation(v1);
  OUTLINED_FUNCTION_21_1(*(v2 + 40));
  return j_j__OUTLINED_FUNCTION_158;
}

double sub_1C88AA7C8()
{
  v0 = OUTLINED_FUNCTION_167();
  v2 = v1(v0);
  result = OUTLINED_FUNCTION_2_12(*(v2 + 44));
  if (!v5)
  {
    return v4;
  }

  return result;
}

void Siri_Nlu_External_AsrTokenInformation.confidenceScore.setter()
{
  v0 = OUTLINED_FUNCTION_380_0();
  v1 = type metadata accessor for Siri_Nlu_External_AsrTokenInformation(v0);
  OUTLINED_FUNCTION_190_0(*(v1 + 44));
}

uint64_t Siri_Nlu_External_AsrTokenInformation.confidenceScore.modify(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_33_0(a1);
  v3 = *(type metadata accessor for Siri_Nlu_External_AsrTokenInformation(v2) + 44);
  *(v1 + 16) = v3;
  v4 = OUTLINED_FUNCTION_2_12(v3);
  if (!v6)
  {
    v4 = v5;
  }

  *v1 = v4;
  return OUTLINED_FUNCTION_74_0();
}

uint64_t Siri_Nlu_External_AsrTokenInformation.beginIndex.getter()
{
  type metadata accessor for Siri_Nlu_External_AsrTokenInformation(0);
  OUTLINED_FUNCTION_4();
  if (v1)
  {
    return v0;
  }

  else
  {
    return 0;
  }
}

void Siri_Nlu_External_AsrTokenInformation.beginIndex.setter()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = type metadata accessor for Siri_Nlu_External_AsrTokenInformation(v0);
  OUTLINED_FUNCTION_59_0(*(v1 + 48));
}

uint64_t (*Siri_Nlu_External_AsrTokenInformation.beginIndex.modify(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_55_0(a1);
  v2 = type metadata accessor for Siri_Nlu_External_AsrTokenInformation(v1);
  OUTLINED_FUNCTION_6_0(*(v2 + 48));
  return sub_1C8801920;
}

uint64_t Siri_Nlu_External_AsrTokenInformation.endIndex.getter()
{
  type metadata accessor for Siri_Nlu_External_AsrTokenInformation(0);
  OUTLINED_FUNCTION_4();
  if (v1)
  {
    return v0;
  }

  else
  {
    return 0;
  }
}

void Siri_Nlu_External_AsrTokenInformation.endIndex.setter()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = type metadata accessor for Siri_Nlu_External_AsrTokenInformation(v0);
  OUTLINED_FUNCTION_59_0(*(v1 + 52));
}

uint64_t (*Siri_Nlu_External_AsrTokenInformation.endIndex.modify(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_55_0(a1);
  v2 = type metadata accessor for Siri_Nlu_External_AsrTokenInformation(v1);
  OUTLINED_FUNCTION_6_0(*(v2 + 52));
  return sub_1C8801920;
}

uint64_t Siri_Nlu_External_AsrTokenInformation.startMilliSeconds.getter()
{
  type metadata accessor for Siri_Nlu_External_AsrTokenInformation(0);
  OUTLINED_FUNCTION_4();
  if (v1)
  {
    return v0;
  }

  else
  {
    return 0;
  }
}

void Siri_Nlu_External_AsrTokenInformation.startMilliSeconds.setter()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = type metadata accessor for Siri_Nlu_External_AsrTokenInformation(v0);
  OUTLINED_FUNCTION_59_0(*(v1 + 56));
}

uint64_t (*Siri_Nlu_External_AsrTokenInformation.startMilliSeconds.modify(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_55_0(a1);
  v2 = type metadata accessor for Siri_Nlu_External_AsrTokenInformation(v1);
  OUTLINED_FUNCTION_6_0(*(v2 + 56));
  return sub_1C8801920;
}

uint64_t Siri_Nlu_External_AsrTokenInformation.endMilliSeconds.getter()
{
  type metadata accessor for Siri_Nlu_External_AsrTokenInformation(0);
  OUTLINED_FUNCTION_4();
  if (v1)
  {
    return v0;
  }

  else
  {
    return 0;
  }
}

void Siri_Nlu_External_AsrTokenInformation.endMilliSeconds.setter()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = type metadata accessor for Siri_Nlu_External_AsrTokenInformation(v0);
  OUTLINED_FUNCTION_59_0(*(v1 + 60));
}

uint64_t (*Siri_Nlu_External_AsrTokenInformation.endMilliSeconds.modify(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_55_0(a1);
  v2 = type metadata accessor for Siri_Nlu_External_AsrTokenInformation(v1);
  OUTLINED_FUNCTION_6_0(*(v2 + 60));
  return sub_1C8801920;
}

uint64_t _s12SiriNLUTypes0A18_Nlu_External_TaskV13unknownFields21InternalSwiftProtobuf14UnknownStorageVvg_0()
{
  OUTLINED_FUNCTION_207();
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_21();
  v1 = OUTLINED_FUNCTION_196();

  return v2(v1, v0);
}

uint64_t _s12SiriNLUTypes0A18_Nlu_External_TaskV13unknownFields21InternalSwiftProtobuf14UnknownStorageVvs_0()
{
  OUTLINED_FUNCTION_241();
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_21();
  v1 = OUTLINED_FUNCTION_221_0();

  return v2(v1, v0);
}

void Siri_Nlu_External_AsrTokenInformation.init()(uint64_t a2@<X8>)
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v3 = type metadata accessor for Siri_Nlu_External_AsrTokenInformation(0);
  OUTLINED_FUNCTION_18_2(*(v3 + 20));
  OUTLINED_FUNCTION_18_2(*(v4 + 24));
  OUTLINED_FUNCTION_18_2(*(v5 + 28));
  *(a2 + v6[8]) = 2;
  *(a2 + v6[9]) = 2;
  *(a2 + v6[10]) = 2;
  OUTLINED_FUNCTION_38(v6[11]);
  *(v7 + 8) = 1;
  OUTLINED_FUNCTION_24_2(*(v8 + 48));
  *(v9 + 4) = v10;
  OUTLINED_FUNCTION_24_2(*(v11 + 52));
  *(v12 + 4) = v13;
  OUTLINED_FUNCTION_24_2(*(v14 + 56));
  *(v15 + 4) = v16;
  OUTLINED_FUNCTION_24_2(*(v17 + 60));
  *(v18 + 4) = v19;
}

uint64_t Siri_Nlu_External_Span.label.modify()
{
  v0 = OUTLINED_FUNCTION_17_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_41(v1);
  v3 = type metadata accessor for Siri_Nlu_External_Span(v2);
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

uint64_t sub_1C88AAEE0()
{
  v0 = OUTLINED_FUNCTION_167();
  v2 = v1(v0);
  if (OUTLINED_FUNCTION_8_0(*(v2 + 28)))
  {
    OUTLINED_FUNCTION_20();
  }

  else
  {
    OUTLINED_FUNCTION_19_0();
  }

  return OUTLINED_FUNCTION_218();
}

uint64_t sub_1C88AAF28(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_External_Span.input.setter(v1, v2);
}

uint64_t sub_1C88AAF80()
{
  v3 = OUTLINED_FUNCTION_68();
  v4(v3);
  result = OUTLINED_FUNCTION_24_0();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Siri_Nlu_External_Span.input.modify()
{
  v0 = OUTLINED_FUNCTION_17_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_41(v1);
  v3 = type metadata accessor for Siri_Nlu_External_Span(v2);
  if (OUTLINED_FUNCTION_4_1(*(v3 + 28)))
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

uint64_t sub_1C88AB06C()
{
  v1 = OUTLINED_FUNCTION_167();
  v2(v1);
  result = OUTLINED_FUNCTION_25_2();
  *v0 = 0;
  v0[1] = 0;
  return result;
}

uint64_t Siri_Nlu_External_Span.startTokenIndex.getter()
{
  type metadata accessor for Siri_Nlu_External_Span(0);
  OUTLINED_FUNCTION_4();
  if (v1)
  {
    return v0;
  }

  else
  {
    return 0;
  }
}

void Siri_Nlu_External_Span.startTokenIndex.setter()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = type metadata accessor for Siri_Nlu_External_Span(v0);
  OUTLINED_FUNCTION_59_0(*(v1 + 32));
}

uint64_t (*Siri_Nlu_External_Span.startTokenIndex.modify(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_55_0(a1);
  v2 = type metadata accessor for Siri_Nlu_External_Span(v1);
  OUTLINED_FUNCTION_6_0(*(v2 + 32));
  return sub_1C8801920;
}

uint64_t Siri_Nlu_External_Span.endTokenIndex.getter()
{
  type metadata accessor for Siri_Nlu_External_Span(0);
  OUTLINED_FUNCTION_4();
  if (v1)
  {
    return v0;
  }

  else
  {
    return 0;
  }
}

void Siri_Nlu_External_Span.endTokenIndex.setter()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = type metadata accessor for Siri_Nlu_External_Span(v0);
  OUTLINED_FUNCTION_59_0(*(v1 + 36));
}

uint64_t (*Siri_Nlu_External_Span.endTokenIndex.modify(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_55_0(a1);
  v2 = type metadata accessor for Siri_Nlu_External_Span(v1);
  OUTLINED_FUNCTION_6_0(*(v2 + 36));
  return sub_1C87FE8F0;
}

uint64_t Siri_Nlu_External_Span.usoGraph.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_170();
  type metadata accessor for Siri_Nlu_External_Span(v5);
  OUTLINED_FUNCTION_232();
  sub_1C8778810();
  type metadata accessor for Siri_Nlu_External_UsoGraph(0);
  OUTLINED_FUNCTION_24_8();
  if (v6)
  {
    OUTLINED_FUNCTION_412(MEMORY[0x1E69E7CC0]);
    v7 = OUTLINED_FUNCTION_496();
    v8 = type metadata accessor for Siri_Nlu_External_SemVer(v7);
    result = OUTLINED_FUNCTION_9_13(v8);
    if (!v6)
    {
      return sub_1C8778ED8(v0, &qword_1EC2B61D0, &qword_1C8C0C1E0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_13();
    OUTLINED_FUNCTION_312();
    return sub_1C879A720();
  }

  return result;
}

uint64_t Siri_Nlu_External_Span.usoGraph.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_Span(v1);
  sub_1C8778ED8(v0 + *(v2 + 40), &qword_1EC2B61D0, &qword_1C8C0C1E0);
  OUTLINED_FUNCTION_1_13();
  OUTLINED_FUNCTION_200();
  sub_1C879A720();
  type metadata accessor for Siri_Nlu_External_UsoGraph(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_Span.usoGraph.modify()
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
  v9 = type metadata accessor for Siri_Nlu_External_UsoGraph(v8);
  OUTLINED_FUNCTION_29_5(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_243(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_168(v13);
  v15 = type metadata accessor for Siri_Nlu_External_Span(v14);
  OUTLINED_FUNCTION_130_3(*(v15 + 40));
  OUTLINED_FUNCTION_0_0();
  if (v16)
  {
    OUTLINED_FUNCTION_139_1(MEMORY[0x1E69E7CC0]);
    v17 = OUTLINED_FUNCTION_303_0();
    v18 = type metadata accessor for Siri_Nlu_External_SemVer(v17);
    OUTLINED_FUNCTION_5_12(v18);
    if (!v16)
    {
      sub_1C8778ED8(v0, &qword_1EC2B61D0, &qword_1C8C0C1E0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_13();
    OUTLINED_FUNCTION_168_0();
    sub_1C879A720();
  }

  OUTLINED_FUNCTION_260();
}

void Siri_Nlu_External_Span.score.setter()
{
  v0 = OUTLINED_FUNCTION_380_0();
  v1 = type metadata accessor for Siri_Nlu_External_Span(v0);
  OUTLINED_FUNCTION_190_0(*(v1 + 44));
}

uint64_t Siri_Nlu_External_Span.score.modify(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_33_0(a1);
  v3 = *(type metadata accessor for Siri_Nlu_External_Span(v2) + 44);
  *(v1 + 16) = v3;
  v4 = OUTLINED_FUNCTION_2_12(v3);
  if (!v6)
  {
    v4 = v5;
  }

  *v1 = v4;
  return OUTLINED_FUNCTION_74_0();
}

uint64_t Siri_Nlu_External_Span.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  type metadata accessor for Siri_Nlu_External_Span(v0);
  return OUTLINED_FUNCTION_242();
}

uint64_t sub_1C88AB710(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C88D0A10();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

void Siri_Nlu_External_Span.init()()
{
  v0 = OUTLINED_FUNCTION_143_1(MEMORY[0x1E69E7CC0]);
  v1 = type metadata accessor for Siri_Nlu_External_Span(v0);
  OUTLINED_FUNCTION_109_0();
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  OUTLINED_FUNCTION_18_2(v1[6]);
  OUTLINED_FUNCTION_18_2(v1[7]);
  OUTLINED_FUNCTION_24_2(v1[8]);
  *(v2 + 4) = 1;
  OUTLINED_FUNCTION_24_2(v1[9]);
  *(v3 + 4) = 1;
  type metadata accessor for Siri_Nlu_External_UsoGraph(0);
  OUTLINED_FUNCTION_5();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  OUTLINED_FUNCTION_38(v1[11]);
  *(v8 + 8) = 1;
}

uint64_t Siri_Nlu_External_NLUSupplementaryOutput.rewrite.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_74();
  type metadata accessor for Siri_Nlu_External_NLUSupplementaryOutput(v5);
  OUTLINED_FUNCTION_57_0();
  v6 = type metadata accessor for Siri_Nlu_External_RewriteMessage(0);
  OUTLINED_FUNCTION_1_0();
  if (v7)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_464(*(v6 + 20));
    OUTLINED_FUNCTION_18_2(*(v6 + 24));
    result = OUTLINED_FUNCTION_1_0();
    if (!v7)
    {
      return sub_1C8778ED8(v0, &unk_1EC2B8A70, &qword_1C8BF5078);
    }
  }

  else
  {
    OUTLINED_FUNCTION_16_8();
    OUTLINED_FUNCTION_121();
    return sub_1C879A720();
  }

  return result;
}

uint64_t Siri_Nlu_External_NLUSupplementaryOutput.rewrite.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_NLUSupplementaryOutput(v1);
  sub_1C8778ED8(v0 + *(v2 + 24), &unk_1EC2B8A70, &qword_1C8BF5078);
  OUTLINED_FUNCTION_16_8();
  OUTLINED_FUNCTION_200();
  sub_1C879A720();
  type metadata accessor for Siri_Nlu_External_RewriteMessage(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_NLUSupplementaryOutput.rewrite.modify()
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
  v10 = type metadata accessor for Siri_Nlu_External_RewriteMessage(v9);
  OUTLINED_FUNCTION_47_3(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_243(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_168(v14);
  v16 = type metadata accessor for Siri_Nlu_External_NLUSupplementaryOutput(v15);
  OUTLINED_FUNCTION_85(*(v16 + 24));
  OUTLINED_FUNCTION_5_6();
  if (v17)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_523(*(v1 + 20));
    OUTLINED_FUNCTION_26(*(v1 + 24));
    OUTLINED_FUNCTION_5_6();
    if (!v17)
    {
      sub_1C8778ED8(v0, &unk_1EC2B8A70, &qword_1C8BF5078);
    }
  }

  else
  {
    OUTLINED_FUNCTION_16_8();
    OUTLINED_FUNCTION_184();
    sub_1C879A720();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_260();
}

uint64_t Siri_Nlu_External_NLUSupplementaryOutput.correctionOutcome.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_74();
  type metadata accessor for Siri_Nlu_External_NLUSupplementaryOutput(v5);
  OUTLINED_FUNCTION_57_0();
  type metadata accessor for Siri_Nlu_External_CorrectionOutcome(0);
  OUTLINED_FUNCTION_1_0();
  if (v6)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_409();
    result = OUTLINED_FUNCTION_1_0();
    if (!v6)
    {
      return sub_1C8778ED8(v0, &qword_1EC2B6EF0, &unk_1C8BEBC70);
    }
  }

  else
  {
    OUTLINED_FUNCTION_12_13();
    OUTLINED_FUNCTION_121();
    return sub_1C879A720();
  }

  return result;
}

uint64_t sub_1C88ABBEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t))
{
  OUTLINED_FUNCTION_508();
  v10 = v9(0);
  OUTLINED_FUNCTION_80(v10);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_103();
  OUTLINED_FUNCTION_253();
  sub_1C88AC5E8();
  return a7(v7);
}

uint64_t Siri_Nlu_External_NLUSupplementaryOutput.correctionOutcome.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_NLUSupplementaryOutput(v1);
  sub_1C8778ED8(v0 + *(v2 + 28), &qword_1EC2B6EF0, &unk_1C8BEBC70);
  OUTLINED_FUNCTION_12_13();
  OUTLINED_FUNCTION_200();
  sub_1C879A720();
  type metadata accessor for Siri_Nlu_External_CorrectionOutcome(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_NLUSupplementaryOutput.correctionOutcome.modify()
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
  v9 = type metadata accessor for Siri_Nlu_External_CorrectionOutcome(v8);
  OUTLINED_FUNCTION_47_3(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_243(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_168(v13);
  v15 = type metadata accessor for Siri_Nlu_External_NLUSupplementaryOutput(v14);
  OUTLINED_FUNCTION_85(*(v15 + 28));
  OUTLINED_FUNCTION_5_6();
  if (v16)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_401();
    OUTLINED_FUNCTION_5_6();
    if (!v16)
    {
      sub_1C8778ED8(v0, &qword_1EC2B6EF0, &unk_1C8BEBC70);
    }
  }

  else
  {
    OUTLINED_FUNCTION_12_13();
    OUTLINED_FUNCTION_184();
    sub_1C879A720();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_260();
}

void sub_1C88ABDF0(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v6 = *a1;
  v7 = *(*a1 + 10);
  v8 = (*a1)[3];
  v9 = (*a1)[4];
  v10 = (*a1)[2];
  v18 = (*a1)[1];
  v11 = **a1;
  if (a2)
  {
    OUTLINED_FUNCTION_254_0();
    sub_1C88AC5E8();
    sub_1C8778ED8(v11 + v7, a3, a4);
    sub_1C879A720();
    OUTLINED_FUNCTION_19_1();
    __swift_storeEnumTagSinglePayload(v12, v13, v14, v10);
    sub_1C87A0410();
  }

  else
  {
    sub_1C8778ED8(v11 + v7, a3, a4);
    sub_1C879A720();
    OUTLINED_FUNCTION_19_1();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v10);
  }

  free(v9);
  free(v8);
  free(v18);

  free(v6);
}

uint64_t Siri_Nlu_External_NLUSupplementaryOutput.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  type metadata accessor for Siri_Nlu_External_NLUSupplementaryOutput(v0);
  return OUTLINED_FUNCTION_242();
}

uint64_t Siri_Nlu_External_NLUSupplementaryOutput.init()()
{
  v0 = OUTLINED_FUNCTION_143_1(MEMORY[0x1E69E7CC0]);
  type metadata accessor for Siri_Nlu_External_NLUSupplementaryOutput(v0);
  OUTLINED_FUNCTION_109_0();
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v1 = OUTLINED_FUNCTION_524();
  type metadata accessor for Siri_Nlu_External_RewriteMessage(v1);
  OUTLINED_FUNCTION_5();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  type metadata accessor for Siri_Nlu_External_CorrectionOutcome(0);
  v6 = OUTLINED_FUNCTION_27_1();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t sub_1C88AC084()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EDACC918);
  __swift_project_value_buffer(v0, qword_1EDACC918);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1C8BE8D70;
  v4 = v29 + v3;
  v5 = v29 + v3 + v1[14];
  *(v29 + v3) = 1;
  *v5 = "system_dialog_act_group";
  *(v5 + 8) = 23;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADE8];
  v7 = sub_1C8BD50FC();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "salient_entities";
  *(v9 + 8) = 16;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "active_tasks";
  *(v11 + 1) = 12;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "executed_tasks";
  *(v13 + 1) = 14;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "asr_outputs";
  *(v15 + 1) = 11;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "turn_context";
  *(v17 + 1) = 12;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "locale";
  *(v19 + 1) = 6;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "tap_to_edit";
  *(v21 + 1) = 11;
  v21[16] = 2;
  v8();
  v22 = (v4 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 9;
  *v23 = "start_timestamp";
  *(v23 + 1) = 15;
  v23[16] = 2;
  v8();
  v24 = (v4 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 10;
  *v25 = "correction_outcome_override";
  *(v25 + 1) = 27;
  v25[16] = 2;
  v8();
  v26 = (v4 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 11;
  *v27 = "connectedToCarPlayUltra";
  *(v27 + 1) = 23;
  v27[16] = 2;
  v8();
  return sub_1C8BD510C();
}

uint64_t sub_1C88AC4D8()
{
  v1 = OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__systemDialogActGroup;
  v2 = type metadata accessor for Siri_Nlu_External_SystemDialogActGroup(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__salientEntities) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__activeTasks) = v3;
  *(v0 + OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__executedTasks) = v3;
  *(v0 + OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__asrOutputs) = v3;
  v4 = OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__turnContext;
  v5 = type metadata accessor for Siri_Nlu_External_TurnContext(0);
  __swift_storeEnumTagSinglePayload(v0 + v4, 1, 1, v5);
  v6 = (v0 + OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__locale);
  *v6 = 0;
  v6[1] = 0;
  *(v0 + OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__tapToEdit) = 2;
  v7 = v0 + OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__startTimestamp;
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__correctionOutcomeOverride;
  v9 = type metadata accessor for Siri_Nlu_External_CorrectionOutcome(0);
  __swift_storeEnumTagSinglePayload(v0 + v8, 1, 1, v9);
  *(v0 + OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__connectedToCarPlayUltra) = 2;
  return v0;
}

uint64_t sub_1C88AC5E8()
{
  v1 = OUTLINED_FUNCTION_84();
  v2(v1);
  OUTLINED_FUNCTION_21();
  v3 = OUTLINED_FUNCTION_218();
  v4(v3);
  return v0;
}

uint64_t sub_1C88AC63C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_SystemDialogActGroup(0);
  sub_1C8776788(&qword_1EC2B8AC0, type metadata accessor for Siri_Nlu_External_SystemDialogActGroup, &protocol conformance descriptor for Siri_Nlu_External_SystemDialogActGroup);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C88AC718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_EntityCandidate(0);
  sub_1C8776788(&qword_1EDACB7D8, type metadata accessor for Siri_Nlu_External_EntityCandidate, &protocol conformance descriptor for Siri_Nlu_External_EntityCandidate);
  sub_1C8BD4C6C();
  return swift_endAccess();
}

uint64_t sub_1C88AC7F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_Task(0);
  sub_1C8776788(&qword_1EDACCF18, type metadata accessor for Siri_Nlu_External_Task, &protocol conformance descriptor for Siri_Nlu_External_Task);
  sub_1C8BD4C6C();
  return swift_endAccess();
}

uint64_t sub_1C88AC8D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_Task(0);
  sub_1C8776788(&qword_1EDACCF18, type metadata accessor for Siri_Nlu_External_Task, &protocol conformance descriptor for Siri_Nlu_External_Task);
  sub_1C8BD4C6C();
  return swift_endAccess();
}

uint64_t sub_1C88AC9AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_TurnContext(0);
  sub_1C8776788(&qword_1EDACC650, type metadata accessor for Siri_Nlu_External_TurnContext, &protocol conformance descriptor for Siri_Nlu_External_TurnContext);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C88ACA88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1C8BD4C4C();
  return swift_endAccess();
}

uint64_t sub_1C88ACB14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_CorrectionOutcome(0);
  sub_1C8776788(&qword_1EDACB050, type metadata accessor for Siri_Nlu_External_CorrectionOutcome, &protocol conformance descriptor for Siri_Nlu_External_CorrectionOutcome);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C88ACBF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  swift_beginAccess();
  OUTLINED_FUNCTION_328();
  OUTLINED_FUNCTION_119();
  sub_1C8BD4B2C();
  return swift_endAccess();
}

uint64_t sub_1C88ACCA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a4;
  v37 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6EF0, &unk_1C8BEBC70);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v30 = v29 - v6;
  v31 = type metadata accessor for Siri_Nlu_External_CorrectionOutcome(0);
  MEMORY[0x1EEE9AC00](v31);
  v29[1] = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6010, &unk_1C8BF5040);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v33 = v29 - v9;
  v34 = type metadata accessor for Siri_Nlu_External_TurnContext(0);
  MEMORY[0x1EEE9AC00](v34);
  v32 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5FF0, &qword_1C8BE6CA8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v29 - v12;
  v14 = type metadata accessor for Siri_Nlu_External_SystemDialogActGroup(0);
  MEMORY[0x1EEE9AC00](v14);
  swift_beginAccess();
  v35 = a1;
  sub_1C8778810();
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    sub_1C8778ED8(v13, &qword_1EC2B5FF0, &qword_1C8BE6CA8);
    v15 = v36;
  }

  else
  {
    sub_1C879A720();
    sub_1C8776788(&qword_1EC2B8AC0, type metadata accessor for Siri_Nlu_External_SystemDialogActGroup, &protocol conformance descriptor for Siri_Nlu_External_SystemDialogActGroup);
    v16 = v36;
    sub_1C8BD4E2C();
    v15 = v16;
    if (v16)
    {
      return sub_1C87A0410();
    }

    sub_1C87A0410();
  }

  v18 = OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__salientEntities;
  v19 = v35;
  swift_beginAccess();
  if (*(*(v19 + v18) + 16))
  {
    type metadata accessor for Siri_Nlu_External_EntityCandidate(0);
    sub_1C8776788(&qword_1EDACB7D8, type metadata accessor for Siri_Nlu_External_EntityCandidate, &protocol conformance descriptor for Siri_Nlu_External_EntityCandidate);

    sub_1C8BD4E0C();
    if (v15)
    {
    }
  }

  v20 = OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__activeTasks;
  swift_beginAccess();
  if (!*(*(v19 + v20) + 16) || (type metadata accessor for Siri_Nlu_External_Task(0), sub_1C8776788(&qword_1EDACCF18, type metadata accessor for Siri_Nlu_External_Task, &protocol conformance descriptor for Siri_Nlu_External_Task), , sub_1C8BD4E0C(), result = , !v15))
  {
    v21 = OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__executedTasks;
    swift_beginAccess();
    if (!*(*(v19 + v21) + 16) || (type metadata accessor for Siri_Nlu_External_Task(0), sub_1C8776788(&qword_1EDACCF18, type metadata accessor for Siri_Nlu_External_Task, &protocol conformance descriptor for Siri_Nlu_External_Task), , sub_1C8BD4E0C(), result = , !v15))
    {
      v22 = OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__asrOutputs;
      swift_beginAccess();
      if (!*(*(v19 + v22) + 16) || (type metadata accessor for Siri_Nlu_External_AsrHypothesis(0), sub_1C8776788(&qword_1EDACC330, type metadata accessor for Siri_Nlu_External_AsrHypothesis, &protocol conformance descriptor for Siri_Nlu_External_AsrHypothesis), , sub_1C8BD4E0C(), result = , !v15))
      {
        swift_beginAccess();
        v23 = v33;
        sub_1C8778810();
        if (__swift_getEnumTagSinglePayload(v23, 1, v34) == 1)
        {
          sub_1C8778ED8(v23, &qword_1EC2B6010, &unk_1C8BF5040);
        }

        else
        {
          sub_1C879A720();
          sub_1C8776788(&qword_1EDACC650, type metadata accessor for Siri_Nlu_External_TurnContext, &protocol conformance descriptor for Siri_Nlu_External_TurnContext);
          sub_1C8BD4E2C();
          result = sub_1C87A0410();
          if (v15)
          {
            return result;
          }
        }

        v24 = v19 + OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__locale;
        swift_beginAccess();
        if (!*(v24 + 8) || (, sub_1C8BD4DDC(), result = , !v15))
        {
          v25 = OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__tapToEdit;
          swift_beginAccess();
          if (*(v19 + v25) == 2 || (result = sub_1C8BD4D3C(), !v15))
          {
            v26 = v19 + OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__startTimestamp;
            swift_beginAccess();
            if ((*(v26 + 8) & 1) != 0 || (result = sub_1C8BD4DFC(), !v15))
            {
              swift_beginAccess();
              v27 = v30;
              sub_1C8778810();
              if (__swift_getEnumTagSinglePayload(v27, 1, v31) == 1)
              {
                sub_1C8778ED8(v27, &qword_1EC2B6EF0, &unk_1C8BEBC70);
              }

              else
              {
                sub_1C879A720();
                sub_1C8776788(&qword_1EDACB050, type metadata accessor for Siri_Nlu_External_CorrectionOutcome, &protocol conformance descriptor for Siri_Nlu_External_CorrectionOutcome);
                sub_1C8BD4E2C();
                result = sub_1C87A0410();
                if (v15)
                {
                  return result;
                }
              }

              v28 = OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__connectedToCarPlayUltra;
              result = swift_beginAccess();
              if (*(v19 + v28) != 2)
              {
                return sub_1C8BD4D3C();
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_1C88AD618()
{
  OUTLINED_FUNCTION_124();
  v107 = v2;
  v3 = OUTLINED_FUNCTION_17();
  v96 = type metadata accessor for Siri_Nlu_External_CorrectionOutcome(v3);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_9_0();
  v94[0] = v5;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6F10, &unk_1C8BF50D0);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_81();
  v97 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6EF0, &unk_1C8BEBC70);
  v9 = OUTLINED_FUNCTION_80(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_10_0();
  v94[1] = v10;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_96();
  v99 = v12;
  v13 = OUTLINED_FUNCTION_86();
  v103 = type metadata accessor for Siri_Nlu_External_TurnContext(v13);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_9_0();
  v98 = v15;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6018, &qword_1C8BE6CD0);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_81();
  v104 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6010, &unk_1C8BF5040);
  v19 = OUTLINED_FUNCTION_80(v18);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_10_0();
  v100 = v20;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_96();
  v102 = v22;
  v23 = OUTLINED_FUNCTION_86();
  type metadata accessor for Siri_Nlu_External_SystemDialogActGroup(v23);
  OUTLINED_FUNCTION_48_5();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_9_0();
  v105 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5FF8, &qword_1C8BE6CB0) - 8;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v27);
  v29 = v94 - v28;
  v30 = &qword_1C8BE6CA8;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5FF0, &qword_1C8BE6CA8);
  v32 = OUTLINED_FUNCTION_80(v31);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_10_0();
  v106 = v33;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_206_0();
  OUTLINED_FUNCTION_277(v0 + OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__systemDialogActGroup, &v129);
  v35 = v107;
  sub_1C8778810();
  OUTLINED_FUNCTION_277(v35 + OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__systemDialogActGroup, &v128);
  v36 = *(v26 + 56);
  sub_1C8778810();
  sub_1C8778810();
  OUTLINED_FUNCTION_72(v29);
  if (v38)
  {

    sub_1C8778ED8(v1, &qword_1EC2B5FF0, &qword_1C8BE6CA8);
    OUTLINED_FUNCTION_72(&v29[v36]);
    v37 = v0;
    if (v38)
    {
      sub_1C8778ED8(v29, &qword_1EC2B5FF0, &qword_1C8BE6CA8);
      goto LABEL_12;
    }

LABEL_9:
    v39 = &qword_1EC2B5FF8;
    v40 = &qword_1C8BE6CB0;
    v41 = v29;
LABEL_10:
    sub_1C8778ED8(v41, v39, v40);
LABEL_53:

    goto LABEL_54;
  }

  sub_1C8778810();
  OUTLINED_FUNCTION_72(&v29[v36]);
  if (v38)
  {

    sub_1C8778ED8(v1, &qword_1EC2B5FF0, &qword_1C8BE6CA8);
    OUTLINED_FUNCTION_182_0();
    sub_1C87A0410();
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_17_10();
  LOBYTE(v30) = v105;
  sub_1C879A720();

  OUTLINED_FUNCTION_251_0();
  static Siri_Nlu_External_SystemDialogActGroup.== infix(_:_:)();
  v43 = v42;
  sub_1C87A0410();
  v44 = OUTLINED_FUNCTION_230();
  sub_1C8778ED8(v44, v45, &qword_1C8BE6CA8);
  OUTLINED_FUNCTION_307();
  sub_1C87A0410();
  v46 = OUTLINED_FUNCTION_127_0();
  v37 = v0;
  sub_1C8778ED8(v46, v47, &qword_1C8BE6CA8);
  if ((v43 & 1) == 0)
  {
    goto LABEL_53;
  }

LABEL_12:
  OUTLINED_FUNCTION_277(v37 + OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__salientEntities, &v127);
  v48 = OUTLINED_FUNCTION_457();
  OUTLINED_FUNCTION_277(v48, &v126);
  OUTLINED_FUNCTION_532_0();

  OUTLINED_FUNCTION_307();
  sub_1C87D73D8();
  OUTLINED_FUNCTION_531();

  if ((v30 & 1) == 0)
  {
    goto LABEL_53;
  }

  OUTLINED_FUNCTION_277(v37 + OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__activeTasks, &v125);
  v49 = OUTLINED_FUNCTION_457();
  OUTLINED_FUNCTION_277(v49, &v124);
  OUTLINED_FUNCTION_532_0();

  OUTLINED_FUNCTION_307();
  sub_1C87D7330();
  OUTLINED_FUNCTION_531();

  OUTLINED_FUNCTION_277(v37 + OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__executedTasks, &v123);
  v50 = OUTLINED_FUNCTION_457();
  OUTLINED_FUNCTION_277(v50, &v122);
  OUTLINED_FUNCTION_532_0();

  OUTLINED_FUNCTION_307();
  sub_1C87D7330();
  OUTLINED_FUNCTION_531();

  OUTLINED_FUNCTION_277(v37 + OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__asrOutputs, &v121);
  v51 = OUTLINED_FUNCTION_457();
  OUTLINED_FUNCTION_277(v51, &v120);
  OUTLINED_FUNCTION_532_0();

  OUTLINED_FUNCTION_307();
  sub_1C87E21D8();
  OUTLINED_FUNCTION_531();

  OUTLINED_FUNCTION_277(v37 + OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__turnContext, &v119);
  v52 = v102;
  OUTLINED_FUNCTION_503();
  OUTLINED_FUNCTION_277(v107 + OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__turnContext, &v118);
  v53 = *(v101 + 48);
  v54 = v104;
  OUTLINED_FUNCTION_503();
  OUTLINED_FUNCTION_503();
  v55 = OUTLINED_FUNCTION_193_0();
  OUTLINED_FUNCTION_41_2(v55, v56);
  if (v38)
  {
    sub_1C8778ED8(v52, &qword_1EC2B6010, &unk_1C8BF5040);
    OUTLINED_FUNCTION_19(v54 + v53);
    if (v38)
    {
      sub_1C8778ED8(v54, &qword_1EC2B6010, &unk_1C8BF5040);
      goto LABEL_23;
    }

    goto LABEL_21;
  }

  sub_1C8778810();
  OUTLINED_FUNCTION_19(v54 + v53);
  if (v57)
  {
    sub_1C8778ED8(v52, &qword_1EC2B6010, &unk_1C8BF5040);
    sub_1C87A0410();
LABEL_21:
    v39 = &qword_1EC2B6018;
    v40 = &qword_1C8BE6CD0;
    v41 = v54;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_99_2();
  sub_1C879A720();
  OUTLINED_FUNCTION_442();
  static Siri_Nlu_External_TurnContext.== infix(_:_:)();
  v59 = v58;
  sub_1C87A0410();
  OUTLINED_FUNCTION_252_2();
  sub_1C8778ED8(v60, v61, v62);
  OUTLINED_FUNCTION_136();
  sub_1C87A0410();
  OUTLINED_FUNCTION_252_2();
  sub_1C8778ED8(v63, v64, v65);
  if ((v59 & 1) == 0)
  {
    goto LABEL_53;
  }

LABEL_23:
  v66 = (v37 + OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__locale);
  OUTLINED_FUNCTION_277(v37 + OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__locale, &v117);
  v67 = *v66;
  v68 = v66[1];
  v69 = (v107 + OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__locale);
  OUTLINED_FUNCTION_277(v107 + OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__locale, &v116);
  v70 = v69[1];
  if (v68)
  {
    v71 = v99;
    if (!v70)
    {
      goto LABEL_53;
    }

    if (v67 != *v69 || v68 != v70)
    {
      OUTLINED_FUNCTION_307();
      if ((sub_1C8BD529C() & 1) == 0)
      {
        goto LABEL_53;
      }
    }
  }

  else
  {
    v71 = v99;
    if (v70)
    {
      goto LABEL_53;
    }
  }

  v73 = OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__tapToEdit;
  OUTLINED_FUNCTION_277(v37 + OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__tapToEdit, &v115);
  v74 = *(v37 + v73);
  v75 = OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__tapToEdit;
  v76 = OUTLINED_FUNCTION_457();
  OUTLINED_FUNCTION_277(v76, &v114);
  v77 = *(v68 + v75);
  if (v74 == 2)
  {
    if (v77 != 2)
    {
      goto LABEL_53;
    }
  }

  else if (v77 == 2 || ((v74 ^ v77) & 1) != 0)
  {
    goto LABEL_53;
  }

  v78 = (v37 + OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__startTimestamp);
  OUTLINED_FUNCTION_277(v37 + OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__startTimestamp, &v113);
  v79 = *v78;
  v80 = *(v78 + 8);
  v81 = v107 + OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__startTimestamp;
  OUTLINED_FUNCTION_277(v107 + OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__startTimestamp, &v112);
  if (v80)
  {
    if ((*(v81 + 8) & 1) == 0)
    {
      goto LABEL_53;
    }
  }

  else if ((*(v81 + 8) & 1) != 0 || v79 != *v81)
  {
    goto LABEL_53;
  }

  OUTLINED_FUNCTION_277(v37 + OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__correctionOutcomeOverride, &v111);
  OUTLINED_FUNCTION_503();
  OUTLINED_FUNCTION_277(v107 + OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__correctionOutcomeOverride, &v110);
  v82 = *(v95 + 48);
  v83 = v97;
  OUTLINED_FUNCTION_503();
  OUTLINED_FUNCTION_503();
  v84 = OUTLINED_FUNCTION_213();
  OUTLINED_FUNCTION_41_2(v84, v85);
  if (v38)
  {
    sub_1C8778ED8(v71, &qword_1EC2B6EF0, &unk_1C8BEBC70);
    OUTLINED_FUNCTION_19(v83 + v82);
    if (v38)
    {
      sub_1C8778ED8(v83, &qword_1EC2B6EF0, &unk_1C8BEBC70);
      goto LABEL_52;
    }

    goto LABEL_50;
  }

  sub_1C8778810();
  OUTLINED_FUNCTION_19(v83 + v82);
  if (v86)
  {
    sub_1C8778ED8(v99, &qword_1EC2B6EF0, &unk_1C8BEBC70);
    OUTLINED_FUNCTION_62_4();
    sub_1C87A0410();
LABEL_50:
    v39 = &qword_1EC2B6F10;
    v40 = &unk_1C8BF50D0;
    v41 = v83;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_12_13();
  sub_1C879A720();
  v87 = static Siri_Nlu_External_CorrectionOutcome.== infix(_:_:)();
  sub_1C87A0410();
  OUTLINED_FUNCTION_252_2();
  sub_1C8778ED8(v88, v89, v90);
  sub_1C87A0410();
  v91 = OUTLINED_FUNCTION_220();
  sub_1C8778ED8(v91, v92, &unk_1C8BEBC70);
  if ((v87 & 1) == 0)
  {
    goto LABEL_53;
  }

LABEL_52:
  OUTLINED_FUNCTION_277(v37 + OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__connectedToCarPlayUltra, &v109);

  v93 = OUTLINED_FUNCTION_457();
  OUTLINED_FUNCTION_277(v93, &v108);

LABEL_54:
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C88AE158(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776788(&qword_1EC2B8FB8, type metadata accessor for Siri_Nlu_External_TurnInput, &protocol conformance descriptor for Siri_Nlu_External_TurnInput);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C88AE1D8(uint64_t a1)
{
  v2 = sub_1C8776788(&qword_1EDACC908, type metadata accessor for Siri_Nlu_External_TurnInput, &protocol conformance descriptor for Siri_Nlu_External_TurnInput);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C88AE248(uint64_t a1, uint64_t a2)
{
  sub_1C8776788(&qword_1EDACC908, type metadata accessor for Siri_Nlu_External_TurnInput, &protocol conformance descriptor for Siri_Nlu_External_TurnInput);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C88AE2E0()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EDACC660);
  __swift_project_value_buffer(v0, qword_1EDACC660);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "nl_context";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "legacy_nl_context";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

void Siri_Nlu_External_TurnContext.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_101_2(v3, v4, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5FB8, &unk_1C8BF3D70);
  OUTLINED_FUNCTION_80(v6);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_17_4();
  v9 = type metadata accessor for Siri_Nlu_External_LegacyNLContext(v8);
  v10 = OUTLINED_FUNCTION_52_3(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_339(v11);
  v12 = OUTLINED_FUNCTION_315();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
  OUTLINED_FUNCTION_80(v14);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v15);
  v16 = OUTLINED_FUNCTION_87_2();
  type metadata accessor for Siri_Nlu_External_NLContext(v16);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v17);
  v18 = OUTLINED_FUNCTION_36_4();
  type metadata accessor for Siri_Nlu_External_TurnContext(v18);
  OUTLINED_FUNCTION_78_2();
  OUTLINED_FUNCTION_102_2();
  if (v19)
  {
    sub_1C8778ED8(v0, &qword_1EC2B6000, &qword_1C8BF5050);
    OUTLINED_FUNCTION_324_0();
  }

  else
  {
    OUTLINED_FUNCTION_61_5();
    OUTLINED_FUNCTION_251_0();
    sub_1C879A720();
    v20 = sub_1C8776788(&qword_1EDACCC80, type metadata accessor for Siri_Nlu_External_NLContext, &protocol conformance descriptor for Siri_Nlu_External_NLContext);
    OUTLINED_FUNCTION_45_4(v20);
    OUTLINED_FUNCTION_169();
    sub_1C87A0410();
    if (v1)
    {
      goto LABEL_10;
    }
  }

  OUTLINED_FUNCTION_307_0();
  OUTLINED_FUNCTION_67_4();
  if (v19)
  {
    sub_1C8778ED8(v2, &qword_1EC2B5FB8, &unk_1C8BF3D70);
LABEL_9:
    OUTLINED_FUNCTION_15();
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_60_3();
  OUTLINED_FUNCTION_308_0();
  v21 = sub_1C8776788(&qword_1EDACB6D0, type metadata accessor for Siri_Nlu_External_LegacyNLContext, &protocol conformance descriptor for Siri_Nlu_External_LegacyNLContext);
  OUTLINED_FUNCTION_76_3(v21);
  sub_1C87A0410();
  if (!v1)
  {
    goto LABEL_9;
  }

LABEL_10:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

void static Siri_Nlu_External_TurnContext.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_177_1();
  type metadata accessor for Siri_Nlu_External_LegacyNLContext(v2);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_25_7(v4, v32);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5FB8, &unk_1C8BF3D70);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_81_3(v7, v33);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5FC0, &unk_1C8BE6C70);
  OUTLINED_FUNCTION_52_3(v8);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v9);
  v11 = OUTLINED_FUNCTION_47_5(v10, v34);
  type metadata accessor for Siri_Nlu_External_NLContext(v11);
  OUTLINED_FUNCTION_74_1();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_51_1();
  v13 = OUTLINED_FUNCTION_220();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(v13, v14);
  OUTLINED_FUNCTION_80(v15);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_112_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6008, &unk_1C8BE6CC0);
  OUTLINED_FUNCTION_181_0();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v17);
  v18 = OUTLINED_FUNCTION_17_4();
  v19 = type metadata accessor for Siri_Nlu_External_TurnContext(v18);
  OUTLINED_FUNCTION_66_5(v19);
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_19(v1);
  if (v20)
  {
    OUTLINED_FUNCTION_19(v1 + v0);
    if (v20)
    {
      sub_1C8778ED8(v1, &qword_1EC2B6000, &qword_1C8BF5050);
      goto LABEL_11;
    }

LABEL_9:
    v21 = &qword_1EC2B6008;
    v22 = &unk_1C8BE6CC0;
    v23 = v1;
LABEL_20:
    sub_1C8778ED8(v23, v21, v22);
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_475();
  OUTLINED_FUNCTION_19(v1 + v0);
  if (v20)
  {
    sub_1C87A0410();
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_61_5();
  OUTLINED_FUNCTION_474();
  OUTLINED_FUNCTION_377();
  static Siri_Nlu_External_NLContext.== infix(_:_:)();
  v25 = v24;
  sub_1C87A0410();
  OUTLINED_FUNCTION_12();
  sub_1C87A0410();
  sub_1C8778ED8(v1, &qword_1EC2B6000, &qword_1C8BF5050);
  if ((v25 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_11:
  OUTLINED_FUNCTION_180_1();
  OUTLINED_FUNCTION_149_2();
  OUTLINED_FUNCTION_200_2();
  OUTLINED_FUNCTION_68_3();
  if (v20)
  {
    OUTLINED_FUNCTION_38_8();
    if (v20)
    {
      sub_1C8778ED8(v0, &qword_1EC2B5FB8, &unk_1C8BF3D70);
LABEL_24:
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_2_18();
      v31 = sub_1C8776788(v29, v30, MEMORY[0x1E69AAC10]);
      v27 = OUTLINED_FUNCTION_201_1(v31);
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  OUTLINED_FUNCTION_309_0();
  OUTLINED_FUNCTION_38_8();
  if (v26)
  {
    OUTLINED_FUNCTION_169();
    sub_1C87A0410();
LABEL_19:
    v21 = &qword_1EC2B5FC0;
    v22 = &unk_1C8BE6C70;
    v23 = v0;
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_60_3();
  OUTLINED_FUNCTION_306_0();
  OUTLINED_FUNCTION_168_0();
  v28 = static Siri_Nlu_External_LegacyNLContext.== infix(_:_:)();
  sub_1C87A0410();
  OUTLINED_FUNCTION_300();
  sub_1C87A0410();
  sub_1C8778ED8(v0, &qword_1EC2B5FB8, &unk_1C8BF3D70);
  if (v28)
  {
    goto LABEL_24;
  }

LABEL_21:
  v27 = 0;
LABEL_22:
  OUTLINED_FUNCTION_157(v27);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C88AEB3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776788(&qword_1EC2B8FB0, type metadata accessor for Siri_Nlu_External_TurnContext, &protocol conformance descriptor for Siri_Nlu_External_TurnContext);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C88AEBBC(uint64_t a1)
{
  v2 = sub_1C8776788(&qword_1EDACC650, type metadata accessor for Siri_Nlu_External_TurnContext, &protocol conformance descriptor for Siri_Nlu_External_TurnContext);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C88AEC2C(uint64_t a1, uint64_t a2)
{
  sub_1C8776788(&qword_1EDACC650, type metadata accessor for Siri_Nlu_External_TurnContext, &protocol conformance descriptor for Siri_Nlu_External_TurnContext);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C88AECC4()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EDACCC90);
  __swift_project_value_buffer(v0, qword_1EDACCC90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BEB0F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "system_dialog_act_group";
  *(v6 + 8) = 23;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "active_tasks";
  *(v10 + 8) = 12;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "executed_tasks";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "salient_entities";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "system_dialog_acts";
  *(v16 + 1) = 18;
  v16[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C88AEF6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_External_NLContext(0);
  type metadata accessor for Siri_Nlu_External_SystemDialogActGroup(0);
  sub_1C8776788(&qword_1EC2B8AC0, type metadata accessor for Siri_Nlu_External_SystemDialogActGroup, &protocol conformance descriptor for Siri_Nlu_External_SystemDialogActGroup);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C88AF020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_External_EntityCandidate(0);
  sub_1C8776788(&qword_1EDACB7D8, type metadata accessor for Siri_Nlu_External_EntityCandidate, &protocol conformance descriptor for Siri_Nlu_External_EntityCandidate);
  return sub_1C8BD4C6C();
}

void Siri_Nlu_External_NLContext.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_444(v13, v14, v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5FF0, &qword_1C8BE6CA8);
  OUTLINED_FUNCTION_80(v16);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v17);
  v18 = OUTLINED_FUNCTION_210();
  type metadata accessor for Siri_Nlu_External_SystemDialogActGroup(v18);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v19);
  v20 = OUTLINED_FUNCTION_65_6();
  type metadata accessor for Siri_Nlu_External_NLContext(v20);
  sub_1C8778810();
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_76(v21, v22, v23);
  if (v24)
  {
    sub_1C8778ED8(v12, &qword_1EC2B5FF0, &qword_1C8BE6CA8);
  }

  else
  {
    OUTLINED_FUNCTION_17_10();
    OUTLINED_FUNCTION_455();
    sub_1C879A720();
    OUTLINED_FUNCTION_353();
    sub_1C8776788(v25, v26, &protocol conformance descriptor for Siri_Nlu_External_SystemDialogActGroup);
    OUTLINED_FUNCTION_225_1();
    OUTLINED_FUNCTION_205_0();
    sub_1C8BD4E2C();
    OUTLINED_FUNCTION_182_0();
    sub_1C87A0410();
    if (v11)
    {
      goto LABEL_14;
    }
  }

  OUTLINED_FUNCTION_514();
  if (!v27 || (type metadata accessor for Siri_Nlu_External_Task(0), OUTLINED_FUNCTION_352(), sub_1C8776788(v28, v29, &protocol conformance descriptor for Siri_Nlu_External_Task), OUTLINED_FUNCTION_117(), OUTLINED_FUNCTION_515(), OUTLINED_FUNCTION_205_0(), sub_1C8BD4E0C(), !v11))
  {
    if (!*(v10[1] + 16) || (type metadata accessor for Siri_Nlu_External_Task(0), OUTLINED_FUNCTION_352(), sub_1C8776788(v30, v31, &protocol conformance descriptor for Siri_Nlu_External_Task), OUTLINED_FUNCTION_117(), OUTLINED_FUNCTION_205_0(), sub_1C8BD4E0C(), !v11))
    {
      if (!*(v10[2] + 16) || (type metadata accessor for Siri_Nlu_External_EntityCandidate(0), sub_1C8776788(&qword_1EDACB7D8, type metadata accessor for Siri_Nlu_External_EntityCandidate, &protocol conformance descriptor for Siri_Nlu_External_EntityCandidate), OUTLINED_FUNCTION_117(), OUTLINED_FUNCTION_205_0(), sub_1C8BD4E0C(), !v11))
      {
        if (!*(v10[3] + 16) || (type metadata accessor for Siri_Nlu_External_SystemDialogAct(0), OUTLINED_FUNCTION_351(), sub_1C8776788(v32, v33, &protocol conformance descriptor for Siri_Nlu_External_SystemDialogAct), OUTLINED_FUNCTION_117(), OUTLINED_FUNCTION_205_0(), sub_1C8BD4E0C(), !v11))
        {
          sub_1C8BD49DC();
        }
      }
    }
  }

LABEL_14:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

void static Siri_Nlu_External_NLContext.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_333();
  type metadata accessor for Siri_Nlu_External_SystemDialogActGroup(v2);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_194();
  v4 = OUTLINED_FUNCTION_233();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_211();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5FF8, &qword_1C8BE6CB0);
  OUTLINED_FUNCTION_223_0();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_45();
  type metadata accessor for Siri_Nlu_External_NLContext(v9);
  OUTLINED_FUNCTION_398();
  OUTLINED_FUNCTION_255_0();
  OUTLINED_FUNCTION_17_6(v0);
  if (v10)
  {
    OUTLINED_FUNCTION_17_6(v0 + v1);
    if (v10)
    {
      sub_1C8778ED8(v0, &qword_1EC2B5FF0, &qword_1C8BE6CA8);
      goto LABEL_11;
    }

LABEL_9:
    sub_1C8778ED8(v0, &qword_1EC2B5FF8, &qword_1C8BE6CB0);
LABEL_16:
    v20 = 0;
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_299_0();
  sub_1C8778810();
  OUTLINED_FUNCTION_17_6(v0 + v1);
  if (v10)
  {
    OUTLINED_FUNCTION_182_0();
    sub_1C87A0410();
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_17_10();
  sub_1C879A720();
  OUTLINED_FUNCTION_260_0();
  static Siri_Nlu_External_SystemDialogActGroup.== infix(_:_:)();
  v12 = v11;
  sub_1C87A0410();
  OUTLINED_FUNCTION_229();
  sub_1C87A0410();
  sub_1C8778ED8(v0, &qword_1EC2B5FF0, &qword_1C8BE6CA8);
  if ((v12 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_11:
  OUTLINED_FUNCTION_481();
  sub_1C87D7330();
  if ((v13 & 1) == 0)
  {
    goto LABEL_16;
  }

  sub_1C87D7330();
  if ((v14 & 1) == 0)
  {
    goto LABEL_16;
  }

  sub_1C87D73D8();
  if ((v15 & 1) == 0)
  {
    goto LABEL_16;
  }

  sub_1C87D7384();
  if ((v16 & 1) == 0)
  {
    goto LABEL_16;
  }

  sub_1C8BD49FC();
  OUTLINED_FUNCTION_2_18();
  v19 = sub_1C8776788(v17, v18, MEMORY[0x1E69AAC10]);
  v20 = OUTLINED_FUNCTION_299(v19);
LABEL_17:
  OUTLINED_FUNCTION_157(v20);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C88AF6CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776788(&qword_1EC2B8FA8, type metadata accessor for Siri_Nlu_External_NLContext, &protocol conformance descriptor for Siri_Nlu_External_NLContext);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C88AF74C(uint64_t a1)
{
  v2 = sub_1C8776788(&qword_1EDACCC80, type metadata accessor for Siri_Nlu_External_NLContext, &protocol conformance descriptor for Siri_Nlu_External_NLContext);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C88AF7BC(uint64_t a1, uint64_t a2)
{
  sub_1C8776788(&qword_1EDACCC80, type metadata accessor for Siri_Nlu_External_NLContext, &protocol conformance descriptor for Siri_Nlu_External_NLContext);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C88AF854()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EDACB6E0);
  __swift_project_value_buffer(v0, qword_1EDACB6E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE7150;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "dictation_prompt";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "strict_prompt";
  *(v10 + 8) = 13;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "previous_domain_name";
  *(v12 + 1) = 20;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "listen_after_speaking";
  *(v14 + 1) = 21;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "rendered_texts";
  *(v16 + 1) = 14;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "legacy_context_source";
  *(v18 + 1) = 21;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "response_semantic_values";
  *(v20 + 1) = 24;
  v20[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C88AFBDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_External_LegacyNLContext(0);
  sub_1C88D07C4();
  return sub_1C8BD4B4C();
}

uint64_t Siri_Nlu_External_LegacyNLContext.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_50_2();
  v3 = type metadata accessor for Siri_Nlu_External_LegacyNLContext(0);
  if (*(v0 + v3[7]) == 2 || (OUTLINED_FUNCTION_29_1(), OUTLINED_FUNCTION_85_1(), result = sub_1C8BD4D3C(), !v1))
  {
    if (*(v2 + v3[8]) == 2 || (OUTLINED_FUNCTION_29_1(), OUTLINED_FUNCTION_85_1(), result = sub_1C8BD4D3C(), !v1))
    {
      OUTLINED_FUNCTION_513();
      if (!v5 || (OUTLINED_FUNCTION_29_1(), result = sub_1C8BD4DDC(), !v1))
      {
        if (*(v2 + v3[10]) == 2 || (OUTLINED_FUNCTION_29_1(), OUTLINED_FUNCTION_85_1(), result = sub_1C8BD4D3C(), !v1))
        {
          OUTLINED_FUNCTION_514();
          if (!v6 || (sub_1C8BD493C(), OUTLINED_FUNCTION_11_13(), sub_1C8776788(v7, v8, MEMORY[0x1E69AA998]), OUTLINED_FUNCTION_117(), OUTLINED_FUNCTION_205_0(), result = sub_1C8BD4E0C(), !v1))
          {
            if (*(v2 + v3[11]) == 4 || (sub_1C88D07C4(), OUTLINED_FUNCTION_205_0(), result = sub_1C8BD4D4C(), !v1))
            {
              if (!*(*(v2 + 8) + 16) || (OUTLINED_FUNCTION_29_1(), OUTLINED_FUNCTION_85_1(), result = sub_1C8BD4DAC(), !v1))
              {
                OUTLINED_FUNCTION_119();
                return sub_1C8BD49DC();
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Siri_Nlu_External_LegacyNLContext.== infix(_:_:)()
{
  v2 = OUTLINED_FUNCTION_84();
  type metadata accessor for Siri_Nlu_External_LegacyNLContext(v2);
  OUTLINED_FUNCTION_47();
  if (v12)
  {
    if (v3 != 2)
    {
      return 0;
    }
  }

  else if (v3 == 2 || ((v4 ^ v3) & 1) != 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_47();
  if (v12)
  {
    if (v5 != 2)
    {
      return 0;
    }
  }

  else if (v5 == 2 || ((v6 ^ v5) & 1) != 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_1();
  if (v9)
  {
    if (!v7)
    {
      return 0;
    }

    OUTLINED_FUNCTION_35(v8);
    v12 = v12 && v10 == v11;
    if (!v12 && (sub_1C8BD529C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  OUTLINED_FUNCTION_47();
  if (v12)
  {
    if (v13 != 2)
    {
      return 0;
    }
  }

  else if (v13 == 2 || ((v14 ^ v13) & 1) != 0)
  {
    return 0;
  }

  sub_1C87DEA4C(*v1, *v0);
  if (v15)
  {
    OUTLINED_FUNCTION_58_1();
    if (v17 == 4)
    {
      if (v16 != 4)
      {
        return 0;
      }
    }

    else if (v17 != v16)
    {
      return 0;
    }

    if (sub_1C87D2814(v1[1], v0[1]))
    {
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_2_18();
      v20 = sub_1C8776788(v18, v19, MEMORY[0x1E69AAC10]);
      return OUTLINED_FUNCTION_64_0(v20) & 1;
    }
  }

  return 0;
}

uint64_t sub_1C88B0010(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776788(&qword_1EC2B8FA0, type metadata accessor for Siri_Nlu_External_LegacyNLContext, &protocol conformance descriptor for Siri_Nlu_External_LegacyNLContext);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C88B0090(uint64_t a1)
{
  v2 = sub_1C8776788(&qword_1EDACB6D0, type metadata accessor for Siri_Nlu_External_LegacyNLContext, &protocol conformance descriptor for Siri_Nlu_External_LegacyNLContext);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C88B0100(uint64_t a1, uint64_t a2)
{
  sub_1C8776788(&qword_1EDACB6D0, type metadata accessor for Siri_Nlu_External_LegacyNLContext, &protocol conformance descriptor for Siri_Nlu_External_LegacyNLContext);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C88B0180()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EDACB728);
  __swift_project_value_buffer(v0, qword_1EDACB728);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE68B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "LEGACYCONTEXTSOURCE_UNKNOWN";
  *(v6 + 8) = 27;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "LEGACYCONTEXTSOURCE_MODALITY";
  *(v10 + 8) = 28;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "LEGACYCONTEXTSOURCE_POMMES";
  *(v12 + 1) = 26;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "LEGACYCONTEXTSOURCE_PROTO_PROMPT_CONTEXT";
  *(v14 + 1) = 40;
  v14[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C88B03F4()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EDACB270);
  __swift_project_value_buffer(v0, qword_1EDACB270);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "asr_hypothesis_index";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "repetition_type";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_External_RepetitionResult.decodeMessage<A>(decoder:)()
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

    if (result == 2)
    {
      OUTLINED_FUNCTION_8();
      sub_1C88B0F84();
    }

    else if (result == 1)
    {
      v3 = OUTLINED_FUNCTION_8();
      sub_1C88B0680(v3, v4, v5, v6);
    }
  }

  return result;
}

uint64_t Siri_Nlu_External_RepetitionResult.traverse<A>(visitor:)()
{
  v3 = OUTLINED_FUNCTION_72_4();
  type metadata accessor for Siri_Nlu_External_RepetitionResult(v3);
  OUTLINED_FUNCTION_459();
  OUTLINED_FUNCTION_467();
  if ((v4 & 1) != 0 || (OUTLINED_FUNCTION_48_0(), result = sub_1C8BD4DEC(), !v0))
  {
    if (*(v1 + *(v2 + 24)) == 4)
    {
      return OUTLINED_FUNCTION_15();
    }

    sub_1C88D0818();
    OUTLINED_FUNCTION_213_0();
    result = sub_1C8BD4D4C();
    if (!v0)
    {
      return OUTLINED_FUNCTION_15();
    }
  }

  return result;
}

uint64_t static Siri_Nlu_External_RepetitionResult.== infix(_:_:)()
{
  v0 = OUTLINED_FUNCTION_84();
  type metadata accessor for Siri_Nlu_External_RepetitionResult(v0);
  OUTLINED_FUNCTION_11();
  if (v2)
  {
    if (!v1)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_1();
    if (v3)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_58_1();
  if (v5 == 4)
  {
    if (v4 != 4)
    {
      return 0;
    }
  }

  else if (v5 != v4)
  {
    return 0;
  }

  sub_1C8BD49FC();
  OUTLINED_FUNCTION_2_18();
  v9 = sub_1C8776788(v7, v8, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_159(v9) & 1;
}

uint64_t sub_1C88B08D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776788(&qword_1EC2B8F98, type metadata accessor for Siri_Nlu_External_RepetitionResult, &protocol conformance descriptor for Siri_Nlu_External_RepetitionResult);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C88B0950(uint64_t a1)
{
  v2 = sub_1C8776788(&qword_1EDACB260, type metadata accessor for Siri_Nlu_External_RepetitionResult, &protocol conformance descriptor for Siri_Nlu_External_RepetitionResult);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C88B09C0(uint64_t a1, uint64_t a2)
{
  sub_1C8776788(&qword_1EDACB260, type metadata accessor for Siri_Nlu_External_RepetitionResult, &protocol conformance descriptor for Siri_Nlu_External_RepetitionResult);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C88B0A40()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EDACB2B8);
  __swift_project_value_buffer(v0, qword_1EDACB2B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE68B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "NOT_AVAILABLE";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "NO";
  *(v10 + 8) = 2;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "PARTIAL";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "FULL";
  *(v14 + 1) = 4;
  v14[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C88B0CBC()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EDACCDB0);
  __swift_project_value_buffer(v0, qword_1EDACCDB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "algorithm";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "parser_id";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_External_Parser.decodeMessage<A>(decoder:)()
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

    if (result == 2)
    {
      OUTLINED_FUNCTION_8();
      sub_1C88B0F84();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_8();
      sub_1C88B32FC();
    }
  }

  return result;
}

uint64_t sub_1C88B0F84()
{
  v1 = OUTLINED_FUNCTION_47_2();
  v2(v1);
  v3 = v0();
  return OUTLINED_FUNCTION_57_1(v3);
}

uint64_t Siri_Nlu_External_Parser.traverse<A>(visitor:)()
{
  v3 = OUTLINED_FUNCTION_72_4();
  type metadata accessor for Siri_Nlu_External_Parser(v3);
  OUTLINED_FUNCTION_459();
  if (*(v1 + v4) == 3 || (sub_1C88D08C0(), OUTLINED_FUNCTION_213_0(), result = sub_1C8BD4D4C(), !v0))
  {
    if (*(v1 + *(v2 + 24)) == 10)
    {
      return OUTLINED_FUNCTION_15();
    }

    sub_1C88D086C();
    OUTLINED_FUNCTION_213_0();
    result = sub_1C8BD4D4C();
    if (!v0)
    {
      return OUTLINED_FUNCTION_15();
    }
  }

  return result;
}

uint64_t static Siri_Nlu_External_Parser.== infix(_:_:)()
{
  v0 = OUTLINED_FUNCTION_84();
  type metadata accessor for Siri_Nlu_External_Parser(v0);
  OUTLINED_FUNCTION_58_1();
  if (v2 == 3)
  {
    if (v1 != 3)
    {
      return 0;
    }
  }

  else if (v2 != v1)
  {
    return 0;
  }

  OUTLINED_FUNCTION_58_1();
  if (v4 == 10)
  {
    if (v3 != 10)
    {
      return 0;
    }
  }

  else if (v4 != v3)
  {
    return 0;
  }

  sub_1C8BD49FC();
  OUTLINED_FUNCTION_2_18();
  v8 = sub_1C8776788(v6, v7, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_159(v8) & 1;
}

uint64_t sub_1C88B11E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776788(&qword_1EC2B8F90, type metadata accessor for Siri_Nlu_External_Parser, &protocol conformance descriptor for Siri_Nlu_External_Parser);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C88B1260(uint64_t a1)
{
  v2 = sub_1C8776788(&qword_1EDACCDA0, type metadata accessor for Siri_Nlu_External_Parser, &protocol conformance descriptor for Siri_Nlu_External_Parser);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C88B12D0(uint64_t a1, uint64_t a2)
{
  sub_1C8776788(&qword_1EDACCDA0, type metadata accessor for Siri_Nlu_External_Parser, &protocol conformance descriptor for Siri_Nlu_External_Parser);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C88B1350()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EDACCDF0);
  __swift_project_value_buffer(v0, qword_1EDACCDF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE6F70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "ALGORITHM_TYPE_UNSET";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "ALGORITHM_TYPE_RULE";
  *(v10 + 1) = 19;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "ALGORITHM_TYPE_MODEL";
  *(v12 + 1) = 20;
  v12[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C88B157C()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EDACCE30);
  __swift_project_value_buffer(v0, qword_1EDACCE30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE8D50;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "PARSER_IDENTIFIER_UNSET";
  *(v6 + 8) = 23;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "PARSER_IDENTIFIER_OVERRIDES";
  *(v10 + 8) = 27;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "PARSER_IDENTIFIER_SNLC";
  *(v12 + 1) = 22;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "PARSER_IDENTIFIER_NLV4";
  *(v14 + 1) = 22;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "PARSER_IDENTIFIER_CATI";
  *(v16 + 1) = 22;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "PARSER_IDENTIFIER_SHORTCUTS_EXACT";
  *(v18 + 1) = 33;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "PARSER_IDENTIFIER_UAAP";
  *(v20 + 1) = 22;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 7;
  *v22 = "PARSER_IDENTIFIER_PSC";
  *(v22 + 1) = 21;
  v22[16] = 2;
  v9();
  v23 = (v5 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 8;
  *v24 = "PARSER_IDENTIFIER_LVC";
  *(v24 + 1) = 21;
  v24[16] = 2;
  v9();
  v25 = (v5 + 9 * v2);
  v26 = v25 + v1[14];
  *v25 = 9;
  *v26 = "PARSER_IDENTIFIER_SSU";
  *(v26 + 1) = 21;
  v26[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C88B1964()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EDACC850);
  __swift_project_value_buffer(v0, qword_1EDACC850);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1C8BE8D40;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = 1;
  *v5 = "id";
  *(v5 + 8) = 2;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1C8BD50FC();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "user_dialog_acts";
  *(v9 + 8) = 16;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "probability";
  *(v11 + 1) = 11;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "parser_id";
  *(v13 + 1) = 9;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "repetition_result";
  *(v15 + 1) = 17;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "parser";
  *(v17 + 1) = 6;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "comparable_probability";
  *(v19 + 1) = 22;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "correction_outcome";
  *(v21 + 1) = 18;
  v21[16] = 2;
  v8();
  return sub_1C8BD510C();
}

void Siri_Nlu_External_UserParse.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    OUTLINED_FUNCTION_97();
    v1 = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        v3 = OUTLINED_FUNCTION_8();
        sub_1C88B1E20(v3, v4, v5, v6);
        break;
      case 2:
        OUTLINED_FUNCTION_348();
        OUTLINED_FUNCTION_8();
        sub_1C879DC10();
        break;
      case 3:
        OUTLINED_FUNCTION_27_5();
        sub_1C88C673C();
        break;
      case 4:
        OUTLINED_FUNCTION_27_5();
        sub_1C878C33C();
        break;
      case 5:
        v7 = OUTLINED_FUNCTION_8();
        sub_1C88B1ED4(v7, v8, v9, v10);
        break;
      case 6:
        v15 = OUTLINED_FUNCTION_8();
        sub_1C88B1F88(v15, v16, v17, v18);
        break;
      case 7:
        OUTLINED_FUNCTION_27_5();
        sub_1C88CE0B0();
        break;
      case 8:
        v11 = OUTLINED_FUNCTION_8();
        sub_1C88B203C(v11, v12, v13, v14);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C88B1E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_External_UserParse(0);
  type metadata accessor for Siri_Nlu_External_UUID(0);
  sub_1C8776788(&qword_1EDACCE50, type metadata accessor for Siri_Nlu_External_UUID, &protocol conformance descriptor for Siri_Nlu_External_UUID);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C88B1ED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_External_UserParse(0);
  type metadata accessor for Siri_Nlu_External_RepetitionResult(0);
  sub_1C8776788(&qword_1EDACB260, type metadata accessor for Siri_Nlu_External_RepetitionResult, &protocol conformance descriptor for Siri_Nlu_External_RepetitionResult);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C88B1F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_External_UserParse(0);
  type metadata accessor for Siri_Nlu_External_Parser(0);
  sub_1C8776788(&qword_1EDACCDA0, type metadata accessor for Siri_Nlu_External_Parser, &protocol conformance descriptor for Siri_Nlu_External_Parser);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C88B203C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_External_UserParse(0);
  type metadata accessor for Siri_Nlu_External_CorrectionOutcome(0);
  sub_1C8776788(&qword_1EDACB050, type metadata accessor for Siri_Nlu_External_CorrectionOutcome, &protocol conformance descriptor for Siri_Nlu_External_CorrectionOutcome);
  return sub_1C8BD4C7C();
}

void Siri_Nlu_External_UserParse.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6EF0, &unk_1C8BEBC70);
  OUTLINED_FUNCTION_80(v4);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_81();
  v48 = v6;
  v7 = OUTLINED_FUNCTION_86();
  v49 = type metadata accessor for Siri_Nlu_External_CorrectionOutcome(v7);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_9_0();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6540, &unk_1C8BE7A40);
  OUTLINED_FUNCTION_80(v9);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_81();
  v52 = v11;
  v12 = OUTLINED_FUNCTION_86();
  v50 = type metadata accessor for Siri_Nlu_External_Parser(v12);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_9_0();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8A60, &unk_1C8BF5058);
  OUTLINED_FUNCTION_80(v14);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_81();
  v51 = v16;
  v17 = OUTLINED_FUNCTION_86();
  type metadata accessor for Siri_Nlu_External_RepetitionResult(v17);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_25_7(v19, v47);
  v20 = OUTLINED_FUNCTION_229();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(v20, v21);
  OUTLINED_FUNCTION_80(v22);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v23);
  v24 = OUTLINED_FUNCTION_74();
  type metadata accessor for Siri_Nlu_External_UUID(v24);
  OUTLINED_FUNCTION_74_1();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_33();
  v26 = type metadata accessor for Siri_Nlu_External_UserParse(0);
  sub_1C8778810();
  v27 = OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_76(v27, v28, v0);
  if (v29)
  {
    sub_1C8778ED8(v2, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  }

  else
  {
    OUTLINED_FUNCTION_0_16();
    sub_1C879A720();
    OUTLINED_FUNCTION_10_11();
    sub_1C8776788(v30, v31, &protocol conformance descriptor for Siri_Nlu_External_UUID);
    OUTLINED_FUNCTION_302_0();
    sub_1C8BD4E2C();
    OUTLINED_FUNCTION_3_12();
    sub_1C87A0410();
    if (v1)
    {
      goto LABEL_28;
    }
  }

  if (!*(*v0 + 16) || (type metadata accessor for Siri_Nlu_External_UserDialogAct(0), OUTLINED_FUNCTION_174_1(), sub_1C8776788(v32, v33, &protocol conformance descriptor for Siri_Nlu_External_UserDialogAct), OUTLINED_FUNCTION_117(), OUTLINED_FUNCTION_515(), OUTLINED_FUNCTION_285_0(), sub_1C8BD4E0C(), !v1))
  {
    v34 = v26;
    if ((*(v0 + *(v26 + 28) + 8) & 1) != 0 || (OUTLINED_FUNCTION_302_0(), sub_1C8BD4DCC(), !v1))
    {
      v35 = v51;
      v36 = v52;
      if (*(v3 + *(v26 + 32) + 8))
      {
        OUTLINED_FUNCTION_302_0();
        sub_1C8BD4DDC();
        if (v1)
        {
          goto LABEL_28;
        }

        v35 = v51;
        v36 = v52;
      }

      v37 = v35;
      sub_1C8778810();
      v38 = OUTLINED_FUNCTION_82_5();
      OUTLINED_FUNCTION_76(v38, v39, v40);
      if (v29)
      {
        sub_1C8778ED8(v37, &qword_1EC2B8A60, &unk_1C8BF5058);
      }

      else
      {
        OUTLINED_FUNCTION_59_5();
        sub_1C879A720();
        sub_1C8776788(&qword_1EDACB260, type metadata accessor for Siri_Nlu_External_RepetitionResult, &protocol conformance descriptor for Siri_Nlu_External_RepetitionResult);
        OUTLINED_FUNCTION_285_0();
        sub_1C8BD4E2C();
        OUTLINED_FUNCTION_346();
        sub_1C87A0410();
        if (v1)
        {
          goto LABEL_28;
        }

        v36 = v52;
      }

      sub_1C8778810();
      v41 = OUTLINED_FUNCTION_155_0();
      OUTLINED_FUNCTION_76(v41, v42, v50);
      if (v29)
      {
        sub_1C8778ED8(v36, &qword_1EC2B6540, &unk_1C8BE7A40);
      }

      else
      {
        OUTLINED_FUNCTION_58_4();
        sub_1C879A720();
        sub_1C8776788(&qword_1EDACCDA0, type metadata accessor for Siri_Nlu_External_Parser, &protocol conformance descriptor for Siri_Nlu_External_Parser);
        OUTLINED_FUNCTION_285_0();
        sub_1C8BD4E2C();
        OUTLINED_FUNCTION_169();
        sub_1C87A0410();
        if (v1)
        {
          goto LABEL_28;
        }
      }

      if ((*(v3 + *(v34 + 44) + 8) & 1) != 0 || (OUTLINED_FUNCTION_302_0(), sub_1C8BD4DCC(), !v1))
      {
        sub_1C8778810();
        v43 = OUTLINED_FUNCTION_155_0();
        OUTLINED_FUNCTION_76(v43, v44, v49);
        if (v29)
        {
          sub_1C8778ED8(v48, &qword_1EC2B6EF0, &unk_1C8BEBC70);
LABEL_27:
          OUTLINED_FUNCTION_491();
          sub_1C8BD49DC();
          goto LABEL_28;
        }

        OUTLINED_FUNCTION_12_13();
        sub_1C879A720();
        OUTLINED_FUNCTION_345();
        sub_1C8776788(v45, v46, &protocol conformance descriptor for Siri_Nlu_External_CorrectionOutcome);
        OUTLINED_FUNCTION_285_0();
        sub_1C8BD4E2C();
        OUTLINED_FUNCTION_62_4();
        sub_1C87A0410();
        if (!v1)
        {
          goto LABEL_27;
        }
      }
    }
  }

LABEL_28:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

void static Siri_Nlu_External_UserParse.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v80 = v1;
  v3 = v2;
  v73 = type metadata accessor for Siri_Nlu_External_CorrectionOutcome(0);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_9_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6EF0, &unk_1C8BEBC70);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_81();
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6F10, &unk_1C8BF50D0);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_81();
  v74 = v8;
  v9 = OUTLINED_FUNCTION_86();
  type metadata accessor for Siri_Nlu_External_Parser(v9);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_9_0();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6540, &unk_1C8BE7A40);
  OUTLINED_FUNCTION_80(v11);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_81();
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6568, &unk_1C8BE7C10);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_81();
  v76 = v14;
  v15 = OUTLINED_FUNCTION_86();
  v16 = type metadata accessor for Siri_Nlu_External_RepetitionResult(v15);
  v17 = OUTLINED_FUNCTION_52_3(v16);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_9_0();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8A60, &unk_1C8BF5058);
  OUTLINED_FUNCTION_80(v18);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_81_3(v20, v71);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8AE8, &qword_1C8BF50E0);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_81();
  v78 = v22;
  v23 = OUTLINED_FUNCTION_86();
  type metadata accessor for Siri_Nlu_External_UUID(v23);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_180();
  v25 = OUTLINED_FUNCTION_299_0();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(v25, v26);
  OUTLINED_FUNCTION_80(v27);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v28);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EE8, &unk_1C8BE6F90) - 8;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v30);
  v31 = OUTLINED_FUNCTION_74();
  v79 = type metadata accessor for Siri_Nlu_External_UserParse(v31);
  v32 = *(v29 + 56);
  OUTLINED_FUNCTION_301();
  sub_1C8778810();
  OUTLINED_FUNCTION_382();
  sub_1C8778810();
  OUTLINED_FUNCTION_193_2(v0);
  if (v33)
  {
    OUTLINED_FUNCTION_193_2(v0 + v32);
    if (v33)
    {
      sub_1C8778ED8(v0, &qword_1EC2B5EC8, &unk_1C8BE68C0);
      goto LABEL_13;
    }
  }

  else
  {
    sub_1C8778810();
    OUTLINED_FUNCTION_193_2(v0 + v32);
    if (!v33)
    {
      OUTLINED_FUNCTION_0_16();
      sub_1C879A720();
      v37 = OUTLINED_FUNCTION_442();
      v39 = static Siri_Nlu_External_UUID.== infix(_:_:)(v37, v38);
      OUTLINED_FUNCTION_347();
      sub_1C87A0410();
      sub_1C87A0410();
      sub_1C8778ED8(v0, &qword_1EC2B5EC8, &unk_1C8BE68C0);
      if ((v39 & 1) == 0)
      {
        goto LABEL_27;
      }

LABEL_13:
      sub_1C87DD670();
      if ((v40 & 1) == 0)
      {
        goto LABEL_27;
      }

      v41 = v79[7];
      v42 = *(v3 + v41 + 8);
      v43 = *(v80 + v41 + 8);
      if (v42)
      {
        if (!v43)
        {
          goto LABEL_27;
        }
      }

      else
      {
        OUTLINED_FUNCTION_36();
        if (v44)
        {
          goto LABEL_27;
        }
      }

      v45 = v79[8];
      v46 = *(v80 + v45 + 8);
      if (*(v3 + v45 + 8))
      {
        if (!v46)
        {
          goto LABEL_27;
        }

        OUTLINED_FUNCTION_35(v3 + v45);
        v49 = v33 && v47 == v48;
        if (!v49 && (sub_1C8BD529C() & 1) == 0)
        {
          goto LABEL_27;
        }
      }

      else if (v46)
      {
        goto LABEL_27;
      }

      v51 = *(v77 + 48);
      OUTLINED_FUNCTION_262();
      sub_1C8778810();
      v52 = OUTLINED_FUNCTION_213();
      OUTLINED_FUNCTION_41_2(v52, v53);
      if (v33)
      {
        OUTLINED_FUNCTION_19(v78 + v51);
        if (v33)
        {
          sub_1C8778ED8(v78, &qword_1EC2B8A60, &unk_1C8BF5058);
LABEL_39:
          v56 = *(v75 + 48);
          OUTLINED_FUNCTION_291_0();
          v0 = v76;
          OUTLINED_FUNCTION_290_0();
          v57 = OUTLINED_FUNCTION_213();
          OUTLINED_FUNCTION_124_1(v57, v58);
          if (v33)
          {
            OUTLINED_FUNCTION_24(v76 + v56);
            if (v33)
            {
              sub_1C8778ED8(v76, &qword_1EC2B6540, &unk_1C8BE7A40);
LABEL_49:
              v61 = v79[11];
              v62 = *(v3 + v61 + 8);
              v63 = *(v80 + v61 + 8);
              if (v62)
              {
                if (!v63)
                {
                  goto LABEL_27;
                }
              }

              else
              {
                OUTLINED_FUNCTION_36();
                if (v64)
                {
                  goto LABEL_27;
                }
              }

              v65 = *(v72 + 48);
              OUTLINED_FUNCTION_180_0();
              OUTLINED_FUNCTION_180_0();
              v66 = OUTLINED_FUNCTION_400();
              OUTLINED_FUNCTION_124_1(v66, v67);
              if (v33)
              {
                OUTLINED_FUNCTION_24(v74 + v65);
                if (v33)
                {
                  sub_1C8778ED8(v74, &qword_1EC2B6EF0, &unk_1C8BEBC70);
                  goto LABEL_63;
                }
              }

              else
              {
                sub_1C8778810();
                OUTLINED_FUNCTION_24(v74 + v65);
                if (!v68)
                {
                  OUTLINED_FUNCTION_12_13();
                  sub_1C879A720();
                  OUTLINED_FUNCTION_100();
                  static Siri_Nlu_External_CorrectionOutcome.== infix(_:_:)();
                  OUTLINED_FUNCTION_338();
                  sub_1C87A0410();
                  OUTLINED_FUNCTION_259();
                  sub_1C87A0410();
                  sub_1C8778ED8(v74, &qword_1EC2B6EF0, &unk_1C8BEBC70);
                  if ((v73 & 1) == 0)
                  {
                    goto LABEL_27;
                  }

LABEL_63:
                  sub_1C8BD49FC();
                  OUTLINED_FUNCTION_2_18();
                  sub_1C8776788(v69, v70, MEMORY[0x1E69AAC10]);
                  v50 = sub_1C8BD517C();
                  goto LABEL_28;
                }

                OUTLINED_FUNCTION_62_4();
                sub_1C87A0410();
              }

              v34 = &qword_1EC2B6F10;
              v35 = &unk_1C8BF50D0;
              v36 = v74;
              goto LABEL_11;
            }
          }

          else
          {
            sub_1C8778810();
            OUTLINED_FUNCTION_24(v76 + v56);
            if (!v59)
            {
              OUTLINED_FUNCTION_58_4();
              sub_1C879A720();
              OUTLINED_FUNCTION_100();
              v60 = static Siri_Nlu_External_Parser.== infix(_:_:)();
              sub_1C87A0410();
              OUTLINED_FUNCTION_259();
              sub_1C87A0410();
              sub_1C8778ED8(v76, &qword_1EC2B6540, &unk_1C8BE7A40);
              if ((v60 & 1) == 0)
              {
                goto LABEL_27;
              }

              goto LABEL_49;
            }

            sub_1C87A0410();
          }

          v34 = &qword_1EC2B6568;
          v35 = &unk_1C8BE7C10;
          goto LABEL_10;
        }
      }

      else
      {
        sub_1C8778810();
        OUTLINED_FUNCTION_19(v78 + v51);
        if (!v54)
        {
          OUTLINED_FUNCTION_59_5();
          sub_1C879A720();
          OUTLINED_FUNCTION_100();
          v55 = static Siri_Nlu_External_RepetitionResult.== infix(_:_:)();
          sub_1C87A0410();
          OUTLINED_FUNCTION_259();
          sub_1C87A0410();
          sub_1C8778ED8(v78, &qword_1EC2B8A60, &unk_1C8BF5058);
          if ((v55 & 1) == 0)
          {
            goto LABEL_27;
          }

          goto LABEL_39;
        }

        OUTLINED_FUNCTION_346();
        sub_1C87A0410();
      }

      v34 = &qword_1EC2B8AE8;
      v35 = &qword_1C8BF50E0;
      v36 = v78;
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_3_12();
    sub_1C87A0410();
  }

  v34 = &qword_1EC2B5EE8;
  v35 = &unk_1C8BE6F90;
LABEL_10:
  v36 = v0;
LABEL_11:
  sub_1C8778ED8(v36, v34, v35);
LABEL_27:
  v50 = 0;
LABEL_28:
  OUTLINED_FUNCTION_157(v50);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C88B30B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776788(&qword_1EC2B8F88, type metadata accessor for Siri_Nlu_External_UserParse, &protocol conformance descriptor for Siri_Nlu_External_UserParse);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C88B3134(uint64_t a1)
{
  v2 = sub_1C8776788(&qword_1EC2B4B68, type metadata accessor for Siri_Nlu_External_UserParse, &protocol conformance descriptor for Siri_Nlu_External_UserParse);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C88B31A4(uint64_t a1, uint64_t a2)
{
  sub_1C8776788(&qword_1EC2B4B68, type metadata accessor for Siri_Nlu_External_UserParse, &protocol conformance descriptor for Siri_Nlu_External_UserParse);

  return sub_1C8BD4CFC();
}

uint64_t Siri_Nlu_External_CorrectionOutcome.decodeMessage<A>(decoder:)()
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
      OUTLINED_FUNCTION_8();
      sub_1C88B32FC();
    }
  }

  return result;
}

uint64_t sub_1C88B32FC()
{
  v1 = OUTLINED_FUNCTION_47_2();
  v2(v1);
  v3 = v0();
  return OUTLINED_FUNCTION_57_1(v3);
}

uint64_t Siri_Nlu_External_CorrectionOutcome.traverse<A>(visitor:)()
{
  v1 = OUTLINED_FUNCTION_72_4();
  type metadata accessor for Siri_Nlu_External_CorrectionOutcome(v1);
  OUTLINED_FUNCTION_451();
  if (v2)
  {
    return OUTLINED_FUNCTION_15();
  }

  sub_1C88D0914();
  OUTLINED_FUNCTION_213_0();
  result = sub_1C8BD4D4C();
  if (!v0)
  {
    return OUTLINED_FUNCTION_15();
  }

  return result;
}

uint64_t static Siri_Nlu_External_CorrectionOutcome.== infix(_:_:)()
{
  v0 = OUTLINED_FUNCTION_84();
  type metadata accessor for Siri_Nlu_External_CorrectionOutcome(v0);
  OUTLINED_FUNCTION_47();
  if (v3)
  {
    if (v1 == 2)
    {
LABEL_7:
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_2_18();
      v6 = sub_1C8776788(v4, v5, MEMORY[0x1E69AAC10]);
      return OUTLINED_FUNCTION_159(v6) & 1;
    }
  }

  else if (v1 != 2 && ((v1 ^ v2) & 1) == 0)
  {
    goto LABEL_7;
  }

  return 0;
}

uint64_t sub_1C88B34F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776788(&qword_1EC2B8F80, type metadata accessor for Siri_Nlu_External_CorrectionOutcome, &protocol conformance descriptor for Siri_Nlu_External_CorrectionOutcome);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C88B3578(uint64_t a1)
{
  v2 = sub_1C8776788(&qword_1EDACB050, type metadata accessor for Siri_Nlu_External_CorrectionOutcome, &protocol conformance descriptor for Siri_Nlu_External_CorrectionOutcome);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C88B35E8(uint64_t a1, uint64_t a2)
{
  sub_1C8776788(&qword_1EDACB050, type metadata accessor for Siri_Nlu_External_CorrectionOutcome, &protocol conformance descriptor for Siri_Nlu_External_CorrectionOutcome);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C88B3668()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B4880);
  __swift_project_value_buffer(v0, qword_1EC2B4880);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "CORRECTION_TYPE_NONE";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "CORRECTION_TYPE_USER_INITIATED";
  *(v10 + 1) = 30;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C88B3864()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EDACBE08);
  __swift_project_value_buffer(v0, qword_1EDACBE08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1C8BE8D70;
  v4 = v28 + v3 + v1[14];
  *(v28 + v3) = 3;
  *v4 = "accepted";
  *(v4 + 8) = 8;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1C8BD50FC();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v28 + v3 + v2 + v1[14];
  *(v28 + v3 + v2) = 4;
  *v8 = "rejected";
  *(v8 + 8) = 8;
  *(v8 + 16) = 2;
  v7();
  v9 = (v28 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 6;
  *v10 = "cancelled";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v7();
  v11 = (v28 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 7;
  *v12 = "wanted_to_repeat";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v7();
  v13 = (v28 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 8;
  *v14 = "acknowledged";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v7();
  v15 = (v28 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 9;
  *v16 = "wanted_to_proceed";
  *(v16 + 1) = 17;
  v16[16] = 2;
  v7();
  v17 = (v28 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 10;
  *v18 = "wanted_to_pause";
  *(v18 + 1) = 15;
  v18[16] = 2;
  v7();
  v19 = (v28 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 12;
  *v20 = "delegated";
  *(v20 + 1) = 9;
  v20[16] = 2;
  v7();
  v21 = (v28 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 13;
  *v22 = "user_stated_task";
  *(v22 + 1) = 16;
  v22[16] = 2;
  v7();
  v23 = (v28 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 14;
  *v24 = "wanted_to_undo";
  *(v24 + 1) = 14;
  v24[16] = 2;
  v7();
  v25 = (v28 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 101;
  *v26 = "alignment";
  *(v26 + 1) = 9;
  v26[16] = 2;
  v7();
  return sub_1C8BD510C();
}

uint64_t sub_1C88B3C98(uint64_t a1, void (*a2)(void), uint64_t (*a3)(void), uint64_t *a4)
{
  a2(0);
  OUTLINED_FUNCTION_218_2();
  swift_allocObject();
  result = a3();
  *a4 = result;
  return result;
}

uint64_t sub_1C88B3CE8()
{
  v1 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__accepted;
  v2 = type metadata accessor for Siri_Nlu_External_UserAccepted(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__rejected;
  v4 = type metadata accessor for Siri_Nlu_External_UserRejected(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__cancelled;
  v6 = type metadata accessor for Siri_Nlu_External_UserCancelled(0);
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__wantedToRepeat;
  v8 = type metadata accessor for Siri_Nlu_External_UserWantedToRepeat(0);
  __swift_storeEnumTagSinglePayload(v0 + v7, 1, 1, v8);
  v9 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__acknowledged;
  v10 = type metadata accessor for Siri_Nlu_External_UserAcknowledged(0);
  __swift_storeEnumTagSinglePayload(v0 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__wantedToProceed;
  v12 = type metadata accessor for Siri_Nlu_External_UserWantedToProceed(0);
  __swift_storeEnumTagSinglePayload(v0 + v11, 1, 1, v12);
  v13 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__wantedToPause;
  v14 = type metadata accessor for Siri_Nlu_External_UserWantedToPause(0);
  __swift_storeEnumTagSinglePayload(v0 + v13, 1, 1, v14);
  v15 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__delegated;
  v16 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct(0);
  __swift_storeEnumTagSinglePayload(v0 + v15, 1, 1, v16);
  v17 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__userStatedTask;
  v18 = type metadata accessor for Siri_Nlu_External_UserStatedTask(0);
  __swift_storeEnumTagSinglePayload(v0 + v17, 1, 1, v18);
  v19 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__wantedToUndo;
  v20 = type metadata accessor for Siri_Nlu_External_UserWantedToUndo(0);
  __swift_storeEnumTagSinglePayload(v0 + v19, 1, 1, v20);
  v21 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__alignment;
  v22 = type metadata accessor for Siri_Nlu_External_UtteranceAlignment(0);
  __swift_storeEnumTagSinglePayload(v0 + v21, 1, 1, v22);
  return v0;
}

uint64_t sub_1C88B3ED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_UserRejected(0);
  sub_1C8776788(qword_1EDACC430, type metadata accessor for Siri_Nlu_External_UserRejected, &protocol conformance descriptor for Siri_Nlu_External_UserRejected);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C88B3FB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_UserCancelled(0);
  sub_1C8776788(&qword_1EC2B41C8, type metadata accessor for Siri_Nlu_External_UserCancelled, &protocol conformance descriptor for Siri_Nlu_External_UserCancelled);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C88B408C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_UserWantedToRepeat(0);
  sub_1C8776788(&qword_1EC2B4028, type metadata accessor for Siri_Nlu_External_UserWantedToRepeat, &protocol conformance descriptor for Siri_Nlu_External_UserWantedToRepeat);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C88B4168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_UserAcknowledged(0);
  sub_1C8776788(&qword_1EC2B8D10, type metadata accessor for Siri_Nlu_External_UserAcknowledged, &protocol conformance descriptor for Siri_Nlu_External_UserAcknowledged);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C88B4244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_UserWantedToPause(0);
  sub_1C8776788(&qword_1EC2B40B8, type metadata accessor for Siri_Nlu_External_UserWantedToPause, &protocol conformance descriptor for Siri_Nlu_External_UserWantedToPause);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C88B4320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct(0);
  sub_1C8776788(&qword_1EC2B4740, type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct, &protocol conformance descriptor for Siri_Nlu_External_DelegatedUserDialogAct);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C88B43FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_UserWantedToUndo(0);
  sub_1C8776788(&qword_1EC2B8D60, type metadata accessor for Siri_Nlu_External_UserWantedToUndo, &protocol conformance descriptor for Siri_Nlu_External_UserWantedToUndo);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C88B44D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_UtteranceAlignment(0);
  sub_1C8776788(&qword_1EDACAC48, type metadata accessor for Siri_Nlu_External_UtteranceAlignment, &protocol conformance descriptor for Siri_Nlu_External_UtteranceAlignment);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

void sub_1C88B45E0()
{
  OUTLINED_FUNCTION_124();
  v303 = v2;
  v4 = v3;
  v248 = type metadata accessor for Siri_Nlu_External_UtteranceAlignment(0);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_9_0();
  v242[0] = v6;
  v243 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B9000, &qword_1C8BF9F20);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_81();
  v251 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8A68, &qword_1C8BF5068);
  v10 = OUTLINED_FUNCTION_80(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_10_0();
  v244 = v11;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_96();
  v247 = v13;
  v14 = OUTLINED_FUNCTION_86();
  v250 = type metadata accessor for Siri_Nlu_External_UserWantedToUndo(v14);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_9_0();
  v242[1] = v16;
  v249 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B9008, &qword_1C8BF9F28);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_81();
  v254 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B86C0, &unk_1C8BF5020);
  v20 = OUTLINED_FUNCTION_80(v19);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_10_0();
  v245 = v21;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_96();
  v253 = v23;
  v24 = OUTLINED_FUNCTION_86();
  v257 = type metadata accessor for Siri_Nlu_External_UserStatedTask(v24);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_9_0();
  v246 = v26;
  v256 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B9010, &qword_1C8BF9F30);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_81();
  v258 = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2B61D8, &unk_1C8BF4FD0);
  v30 = OUTLINED_FUNCTION_80(v29);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_10_0();
  v252 = v31;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_96();
  v275 = v33;
  v34 = OUTLINED_FUNCTION_86();
  v262 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct(v34);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_9_0();
  v255 = v36;
  v261 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B9018, &qword_1C8BF9F38);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_81();
  v263 = v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B86C8, &unk_1C8C10570);
  v40 = OUTLINED_FUNCTION_80(v39);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_10_0();
  v259 = v41;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_96();
  v279 = v43;
  v44 = OUTLINED_FUNCTION_86();
  v267 = type metadata accessor for Siri_Nlu_External_UserWantedToPause(v44);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_9_0();
  v260 = v46;
  v266 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B9020, &qword_1C8BF9F40);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_81();
  v268 = v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6E18, &qword_1C8BEBC48);
  v50 = OUTLINED_FUNCTION_80(v49);
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_10_0();
  v264 = v51;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_96();
  v271 = v53;
  v54 = OUTLINED_FUNCTION_86();
  v273 = type metadata accessor for Siri_Nlu_External_UserWantedToProceed(v54);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_9_0();
  v265 = v56;
  v272 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B9028, &qword_1C8BF9F48);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_81();
  v274 = v58;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B86D0, &unk_1C8BF5010);
  v60 = OUTLINED_FUNCTION_80(v59);
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_10_0();
  v269 = v61;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_96();
  v277 = v63;
  v64 = OUTLINED_FUNCTION_86();
  v281 = type metadata accessor for Siri_Nlu_External_UserAcknowledged(v64);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_9_0();
  v270 = v66;
  v280 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B9030, &qword_1C8BF9F50);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_81();
  v282 = v68;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B86D8, &qword_1C8BF4620);
  v70 = OUTLINED_FUNCTION_80(v69);
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_10_0();
  v276 = v71;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v72);
  OUTLINED_FUNCTION_96();
  v284 = v73;
  v74 = OUTLINED_FUNCTION_86();
  v287 = type metadata accessor for Siri_Nlu_External_UserWantedToRepeat(v74);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v75);
  OUTLINED_FUNCTION_9_0();
  v278 = v76;
  v286 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B9038, &qword_1C8BF9F58);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v77);
  OUTLINED_FUNCTION_81();
  v288 = v78;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6E10, &unk_1C8BF5000);
  v80 = OUTLINED_FUNCTION_80(v79);
  MEMORY[0x1EEE9AC00](v80);
  OUTLINED_FUNCTION_10_0();
  v283 = v81;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v82);
  OUTLINED_FUNCTION_96();
  v290 = v83;
  v84 = OUTLINED_FUNCTION_86();
  v293 = type metadata accessor for Siri_Nlu_External_UserCancelled(v84);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v85);
  OUTLINED_FUNCTION_9_0();
  v285 = v86;
  v292 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B9040, &qword_1C8BF9F60);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v87);
  OUTLINED_FUNCTION_81();
  v294 = v88;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6E20, &unk_1C8BF4FF0);
  v90 = OUTLINED_FUNCTION_80(v89);
  MEMORY[0x1EEE9AC00](v90);
  OUTLINED_FUNCTION_10_0();
  v289 = v91;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v92);
  OUTLINED_FUNCTION_96();
  v301 = v93;
  v94 = OUTLINED_FUNCTION_86();
  v299 = type metadata accessor for Siri_Nlu_External_UserRejected(v94);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v95);
  OUTLINED_FUNCTION_9_0();
  v291 = v96;
  v297 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B9048, &qword_1C8BF9F68);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v97);
  OUTLINED_FUNCTION_81();
  v300 = v98;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6E28, &unk_1C8C10580);
  v100 = OUTLINED_FUNCTION_80(v99);
  MEMORY[0x1EEE9AC00](v100);
  OUTLINED_FUNCTION_10_0();
  v295 = v101;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v102);
  OUTLINED_FUNCTION_96();
  v298 = v103;
  v104 = OUTLINED_FUNCTION_86();
  type metadata accessor for Siri_Nlu_External_UserAccepted(v104);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v105);
  OUTLINED_FUNCTION_9_0();
  v296 = v106;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B9050, &qword_1C8BF9F70);
  OUTLINED_FUNCTION_128_1();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v107);
  OUTLINED_FUNCTION_103();
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2B6330, &unk_1C8BF4FE0);
  v109 = OUTLINED_FUNCTION_80(v108);
  MEMORY[0x1EEE9AC00](v109);
  OUTLINED_FUNCTION_10_0();
  v302 = v110;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v111);
  v113 = v242 - v112;
  OUTLINED_FUNCTION_277(v4 + OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__accepted, &v325);
  v114 = v303;
  sub_1C8778810();
  OUTLINED_FUNCTION_277(v114 + OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__accepted, &v324);
  v115 = *(v1 + 56);
  OUTLINED_FUNCTION_251_0();
  sub_1C8778810();
  sub_1C8778810();
  OUTLINED_FUNCTION_193_2(v0);
  if (v116)
  {

    sub_1C8778ED8(v113, &unk_1EC2B6330, &unk_1C8BF4FE0);
    OUTLINED_FUNCTION_193_2(v0 + v115);
    if (v116)
    {
      sub_1C8778ED8(v0, &unk_1EC2B6330, &unk_1C8BF4FE0);
      goto LABEL_11;
    }

LABEL_9:
    v117 = &qword_1EC2B9050;
    v118 = &qword_1C8BF9F70;
    v119 = v0;
LABEL_31:
    sub_1C8778ED8(v119, v117, v118);
    goto LABEL_32;
  }

  sub_1C8778810();
  OUTLINED_FUNCTION_193_2(v0 + v115);
  if (v116)
  {

    sub_1C8778ED8(v113, &unk_1EC2B6330, &unk_1C8BF4FE0);
    sub_1C87A0410();
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_111_1();
  sub_1C879A720();

  static Siri_Nlu_External_UserAccepted.== infix(_:_:)();
  v121 = v120;
  sub_1C87A0410();
  v122 = OUTLINED_FUNCTION_522();
  sub_1C8778ED8(v122, v123, &unk_1C8BF4FE0);
  sub_1C87A0410();
  v124 = OUTLINED_FUNCTION_178_2();
  sub_1C8778ED8(v124, v125, &unk_1C8BF4FE0);
  if ((v121 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_11:
  OUTLINED_FUNCTION_277(v4 + OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__rejected, &v323);
  v126 = v298;
  OUTLINED_FUNCTION_78_1();
  sub_1C8778810();
  OUTLINED_FUNCTION_277(v114 + OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__rejected, &v322);
  v127 = *(v297 + 48);
  v128 = v300;
  OUTLINED_FUNCTION_78_1();
  sub_1C8778810();
  OUTLINED_FUNCTION_78_1();
  sub_1C8778810();
  v129 = OUTLINED_FUNCTION_323_0();
  OUTLINED_FUNCTION_41_2(v129, v130);
  if (v116)
  {
    sub_1C8778ED8(v126, &qword_1EC2B6E28, &unk_1C8C10580);
    OUTLINED_FUNCTION_19(v128 + v127);
    v131 = v301;
    if (v116)
    {
      sub_1C8778ED8(v128, &qword_1EC2B6E28, &unk_1C8C10580);
      goto LABEL_21;
    }

LABEL_19:
    v117 = &qword_1EC2B9048;
    v118 = &qword_1C8BF9F68;
LABEL_30:
    v119 = v128;
    goto LABEL_31;
  }

  sub_1C8778810();
  OUTLINED_FUNCTION_19(v128 + v127);
  v131 = v301;
  if (v132)
  {
    sub_1C8778ED8(v126, &qword_1EC2B6E28, &unk_1C8C10580);
    sub_1C87A0410();
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_110_1();
  sub_1C879A720();
  OUTLINED_FUNCTION_271();
  static Siri_Nlu_External_UserRejected.== infix(_:_:)();
  LODWORD(v303) = v133;
  sub_1C87A0410();
  OUTLINED_FUNCTION_252_2();
  sub_1C8778ED8(v134, v135, v136);
  OUTLINED_FUNCTION_92_0();
  sub_1C87A0410();
  OUTLINED_FUNCTION_252_2();
  sub_1C8778ED8(v137, v138, v139);
  if ((v303 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_21:
  OUTLINED_FUNCTION_277(v4 + OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__cancelled, &v321);
  OUTLINED_FUNCTION_78_1();
  sub_1C8778810();
  OUTLINED_FUNCTION_277(v114 + OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__cancelled, &v320);
  v140 = *(v292 + 48);
  v128 = v294;
  OUTLINED_FUNCTION_78_1();
  sub_1C8778810();
  OUTLINED_FUNCTION_78_1();
  sub_1C8778810();
  v141 = OUTLINED_FUNCTION_323_0();
  OUTLINED_FUNCTION_82_1(v141, v142);
  if (v116)
  {
    sub_1C8778ED8(v131, &qword_1EC2B6E20, &unk_1C8BF4FF0);
    OUTLINED_FUNCTION_65(v128 + v140);
    if (v116)
    {
      sub_1C8778ED8(v128, &qword_1EC2B6E20, &unk_1C8BF4FF0);
      goto LABEL_35;
    }

    goto LABEL_29;
  }

  sub_1C8778810();
  OUTLINED_FUNCTION_65(v128 + v140);
  if (v143)
  {
    sub_1C8778ED8(v131, &qword_1EC2B6E20, &unk_1C8BF4FF0);
    OUTLINED_FUNCTION_169();
    sub_1C87A0410();
LABEL_29:
    v117 = &qword_1EC2B9040;
    v118 = &qword_1C8BF9F60;
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_109_1();
  sub_1C879A720();
  OUTLINED_FUNCTION_97();
  static Siri_Nlu_External_UserCancelled.== infix(_:_:)();
  v145 = v144;
  sub_1C87A0410();
  sub_1C8778ED8(v131, &qword_1EC2B6E20, &unk_1C8BF4FF0);
  OUTLINED_FUNCTION_168_0();
  sub_1C87A0410();
  sub_1C8778ED8(v128, &qword_1EC2B6E20, &unk_1C8BF4FF0);
  if ((v145 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_35:
  OUTLINED_FUNCTION_277(v4 + OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__wantedToRepeat, &v319);
  v146 = v290;
  sub_1C8778810();
  OUTLINED_FUNCTION_277(v114 + OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__wantedToRepeat, &v318);
  OUTLINED_FUNCTION_450_0();
  v147 = v288;
  sub_1C8778810();
  sub_1C8778810();
  v148 = OUTLINED_FUNCTION_155_0();
  OUTLINED_FUNCTION_82_1(v148, v149);
  if (v116)
  {
    sub_1C8778ED8(v146, &qword_1EC2B6E10, &unk_1C8BF5000);
    OUTLINED_FUNCTION_65(&OBJC_METACLASS____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass.superclass + v147);
    if (v116)
    {
      sub_1C8778ED8(v147, &qword_1EC2B6E10, &unk_1C8BF5000);
      goto LABEL_45;
    }

LABEL_43:
    v117 = &qword_1EC2B9038;
    v118 = &qword_1C8BF9F58;
LABEL_64:
    v119 = v147;
    goto LABEL_31;
  }

  sub_1C8778810();
  OUTLINED_FUNCTION_65(&OBJC_METACLASS____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass.superclass + v147);
  if (v150)
  {
    sub_1C8778ED8(v290, &qword_1EC2B6E10, &unk_1C8BF5000);
    OUTLINED_FUNCTION_169();
    sub_1C87A0410();
    goto LABEL_43;
  }

  OUTLINED_FUNCTION_108_0();
  sub_1C879A720();
  OUTLINED_FUNCTION_97();
  static Siri_Nlu_External_UserWantedToRepeat.== infix(_:_:)();
  v152 = v151;
  sub_1C87A0410();
  OUTLINED_FUNCTION_321_0();
  sub_1C8778ED8(v153, v154, v155);
  OUTLINED_FUNCTION_168_0();
  sub_1C87A0410();
  OUTLINED_FUNCTION_321_0();
  sub_1C8778ED8(v156, v157, v158);
  if ((v152 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_45:
  OUTLINED_FUNCTION_277(v4 + OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__acknowledged, &v317);
  v159 = v284;
  OUTLINED_FUNCTION_479();
  OUTLINED_FUNCTION_277(v114 + OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__acknowledged, &v316);
  v160 = *(v280 + 48);
  v147 = v282;
  OUTLINED_FUNCTION_479();
  OUTLINED_FUNCTION_479();
  v161 = OUTLINED_FUNCTION_155_0();
  OUTLINED_FUNCTION_82_1(v161, v162);
  if (v116)
  {
    sub_1C8778ED8(v159, &qword_1EC2B86D8, &qword_1C8BF4620);
    OUTLINED_FUNCTION_65(v147 + v160);
    if (v116)
    {
      sub_1C8778ED8(v147, &qword_1EC2B86D8, &qword_1C8BF4620);
      v163 = v279;
      goto LABEL_55;
    }

    goto LABEL_53;
  }

  sub_1C8778810();
  OUTLINED_FUNCTION_65(v147 + v160);
  v163 = v279;
  if (v164)
  {
    sub_1C8778ED8(v284, &qword_1EC2B86D8, &qword_1C8BF4620);
    OUTLINED_FUNCTION_169();
    sub_1C87A0410();
LABEL_53:
    v117 = &qword_1EC2B9030;
    v118 = &qword_1C8BF9F50;
    goto LABEL_64;
  }

  OUTLINED_FUNCTION_107_2();
  sub_1C879A720();
  OUTLINED_FUNCTION_97();
  static Siri_Nlu_External_UserAcknowledged.== infix(_:_:)();
  v166 = v165;
  sub_1C87A0410();
  OUTLINED_FUNCTION_321_0();
  sub_1C8778ED8(v167, v168, v169);
  OUTLINED_FUNCTION_168_0();
  sub_1C87A0410();
  OUTLINED_FUNCTION_321_0();
  sub_1C8778ED8(v170, v171, v172);
  if ((v166 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_55:
  OUTLINED_FUNCTION_277(v4 + OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__wantedToProceed, &v315);
  v173 = v277;
  OUTLINED_FUNCTION_479();
  OUTLINED_FUNCTION_277(v114 + OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__wantedToProceed, &v314);
  v174 = *(v272 + 48);
  v147 = v274;
  OUTLINED_FUNCTION_479();
  OUTLINED_FUNCTION_479();
  v175 = OUTLINED_FUNCTION_155_0();
  OUTLINED_FUNCTION_82_1(v175, v176);
  if (v116)
  {
    sub_1C8778ED8(v173, &qword_1EC2B86D0, &unk_1C8BF5010);
    OUTLINED_FUNCTION_65(v147 + v174);
    v177 = v275;
    if (v116)
    {
      sub_1C8778ED8(v147, &qword_1EC2B86D0, &unk_1C8BF5010);
      goto LABEL_66;
    }

    goto LABEL_63;
  }

  sub_1C8778810();
  OUTLINED_FUNCTION_65(v147 + v174);
  v177 = v275;
  if (v178)
  {
    sub_1C8778ED8(v277, &qword_1EC2B86D0, &unk_1C8BF5010);
    OUTLINED_FUNCTION_169();
    sub_1C87A0410();
LABEL_63:
    v117 = &qword_1EC2B9028;
    v118 = &qword_1C8BF9F48;
    goto LABEL_64;
  }

  OUTLINED_FUNCTION_106_0();
  sub_1C879A720();
  OUTLINED_FUNCTION_97();
  static Siri_Nlu_External_UserWantedToProceed.== infix(_:_:)();
  v180 = v179;
  sub_1C87A0410();
  sub_1C8778ED8(v277, &qword_1EC2B86D0, &unk_1C8BF5010);
  OUTLINED_FUNCTION_168_0();
  sub_1C87A0410();
  v181 = OUTLINED_FUNCTION_307();
  sub_1C8778ED8(v181, v182, &unk_1C8BF5010);
  if ((v180 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_66:
  OUTLINED_FUNCTION_277(v4 + OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__wantedToPause, &v313);
  OUTLINED_FUNCTION_78_1();
  sub_1C8778810();
  OUTLINED_FUNCTION_277(v114 + OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__wantedToPause, &v312);
  OUTLINED_FUNCTION_424();
  v183 = v268;
  OUTLINED_FUNCTION_78_1();
  sub_1C8778810();
  OUTLINED_FUNCTION_78_1();
  sub_1C8778810();
  v184 = OUTLINED_FUNCTION_193_0();
  OUTLINED_FUNCTION_82_1(v184, v185);
  if (v116)
  {
    sub_1C8778ED8(v271, &qword_1EC2B6E18, &qword_1C8BEBC48);
    OUTLINED_FUNCTION_65(&OBJC_METACLASS____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass.superclass + v183);
    if (v116)
    {
      sub_1C8778ED8(v183, &qword_1EC2B6E18, &qword_1C8BEBC48);
      goto LABEL_76;
    }

LABEL_74:
    v117 = &qword_1EC2B9020;
    v118 = &qword_1C8BF9F40;
LABEL_105:
    v119 = v183;
    goto LABEL_31;
  }

  sub_1C8778810();
  OUTLINED_FUNCTION_65(&OBJC_METACLASS____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass.superclass + v183);
  if (v186)
  {
    sub_1C8778ED8(v271, &qword_1EC2B6E18, &qword_1C8BEBC48);
    OUTLINED_FUNCTION_169();
    sub_1C87A0410();
    goto LABEL_74;
  }

  OUTLINED_FUNCTION_105_1();
  sub_1C879A720();
  OUTLINED_FUNCTION_97();
  static Siri_Nlu_External_UserWantedToPause.== infix(_:_:)();
  LODWORD(v303) = v187;
  sub_1C87A0410();
  OUTLINED_FUNCTION_321_0();
  sub_1C8778ED8(v188, v189, v190);
  OUTLINED_FUNCTION_168_0();
  sub_1C87A0410();
  OUTLINED_FUNCTION_321_0();
  sub_1C8778ED8(v191, v192, v193);
  if ((v303 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_76:
  OUTLINED_FUNCTION_277(v4 + OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__delegated, &v311);
  OUTLINED_FUNCTION_78_1();
  sub_1C8778810();
  OUTLINED_FUNCTION_277(v114 + OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__delegated, &v310);
  v194 = *(v261 + 48);
  v183 = v263;
  OUTLINED_FUNCTION_78_1();
  sub_1C8778810();
  OUTLINED_FUNCTION_78_1();
  sub_1C8778810();
  v195 = OUTLINED_FUNCTION_193_0();
  OUTLINED_FUNCTION_82_1(v195, v196);
  if (v116)
  {
    sub_1C8778ED8(v163, &qword_1EC2B86C8, &unk_1C8C10570);
    OUTLINED_FUNCTION_65(v183 + v194);
    if (v116)
    {
      sub_1C8778ED8(v183, &qword_1EC2B86C8, &unk_1C8C10570);
      goto LABEL_86;
    }

    goto LABEL_84;
  }

  sub_1C8778810();
  OUTLINED_FUNCTION_65(v183 + v194);
  if (v197)
  {
    sub_1C8778ED8(v163, &qword_1EC2B86C8, &unk_1C8C10570);
    OUTLINED_FUNCTION_169();
    sub_1C87A0410();
LABEL_84:
    v117 = &qword_1EC2B9018;
    v118 = &qword_1C8BF9F38;
    goto LABEL_105;
  }

  OUTLINED_FUNCTION_96_2();
  sub_1C879A720();
  OUTLINED_FUNCTION_97();
  static Siri_Nlu_External_DelegatedUserDialogAct.== infix(_:_:)();
  v199 = v198;
  sub_1C87A0410();
  OUTLINED_FUNCTION_301();
  sub_1C8778ED8(v200, v201, v202);
  OUTLINED_FUNCTION_442();
  sub_1C87A0410();
  OUTLINED_FUNCTION_301();
  sub_1C8778ED8(v203, v204, v205);
  if ((v199 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_86:
  OUTLINED_FUNCTION_277(v4 + OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__userStatedTask, &v309);
  OUTLINED_FUNCTION_78_1();
  sub_1C8778810();
  OUTLINED_FUNCTION_277(v114 + OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__userStatedTask, &v308);
  OUTLINED_FUNCTION_450_0();
  v183 = v258;
  OUTLINED_FUNCTION_78_1();
  sub_1C8778810();
  OUTLINED_FUNCTION_78_1();
  sub_1C8778810();
  v206 = OUTLINED_FUNCTION_193_0();
  OUTLINED_FUNCTION_82_1(v206, v207);
  if (v116)
  {
    sub_1C8778ED8(v177, &unk_1EC2B61D8, &unk_1C8BF4FD0);
    OUTLINED_FUNCTION_65(&OBJC_METACLASS____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass.superclass + v183);
    if (v116)
    {
      sub_1C8778ED8(v183, &unk_1EC2B61D8, &unk_1C8BF4FD0);
      v208 = v253;
      v183 = v254;
      goto LABEL_96;
    }

    goto LABEL_94;
  }

  sub_1C8778810();
  OUTLINED_FUNCTION_65(&OBJC_METACLASS____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass.superclass + v183);
  if (v209)
  {
    sub_1C8778ED8(v177, &unk_1EC2B61D8, &unk_1C8BF4FD0);
    sub_1C87A0410();
LABEL_94:
    v117 = &qword_1EC2B9010;
    v118 = &qword_1C8BF9F30;
    goto LABEL_105;
  }

  OUTLINED_FUNCTION_113_2();
  sub_1C879A720();
  OUTLINED_FUNCTION_136();
  static Siri_Nlu_External_UserStatedTask.== infix(_:_:)();
  v211 = v210;
  sub_1C87A0410();
  OUTLINED_FUNCTION_301();
  sub_1C8778ED8(v212, v213, v214);
  OUTLINED_FUNCTION_442();
  sub_1C87A0410();
  OUTLINED_FUNCTION_301();
  sub_1C8778ED8(v215, v216, v217);
  v208 = v253;
  v183 = v254;
  if ((v211 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_96:
  OUTLINED_FUNCTION_277(v4 + OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__wantedToUndo, &v307);
  OUTLINED_FUNCTION_78_1();
  sub_1C8778810();
  OUTLINED_FUNCTION_277(v114 + OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__wantedToUndo, &v306);
  OUTLINED_FUNCTION_450_0();
  OUTLINED_FUNCTION_78_1();
  sub_1C8778810();
  OUTLINED_FUNCTION_78_1();
  sub_1C8778810();
  v218 = OUTLINED_FUNCTION_193_0();
  OUTLINED_FUNCTION_41_2(v218, v219);
  if (!v116)
  {
    sub_1C8778810();
    OUTLINED_FUNCTION_19(&OBJC_METACLASS____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass.superclass + v183);
    if (!v220)
    {
      OUTLINED_FUNCTION_104_2();
      sub_1C879A720();
      OUTLINED_FUNCTION_136();
      static Siri_Nlu_External_UserWantedToUndo.== infix(_:_:)();
      v222 = v221;
      sub_1C87A0410();
      OUTLINED_FUNCTION_301();
      sub_1C8778ED8(v223, v224, v225);
      OUTLINED_FUNCTION_442();
      sub_1C87A0410();
      OUTLINED_FUNCTION_301();
      sub_1C8778ED8(v226, v227, v228);
      if (v222)
      {
        goto LABEL_107;
      }

LABEL_32:

      goto LABEL_33;
    }

    sub_1C8778ED8(v208, &qword_1EC2B86C0, &unk_1C8BF5020);
    sub_1C87A0410();
    goto LABEL_104;
  }

  sub_1C8778ED8(v208, &qword_1EC2B86C0, &unk_1C8BF5020);
  OUTLINED_FUNCTION_19(&OBJC_METACLASS____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass.superclass + v183);
  if (!v116)
  {
LABEL_104:
    v117 = &qword_1EC2B9008;
    v118 = &qword_1C8BF9F28;
    goto LABEL_105;
  }

  sub_1C8778ED8(v183, &qword_1EC2B86C0, &unk_1C8BF5020);
LABEL_107:
  OUTLINED_FUNCTION_277(v4 + OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__alignment, &v305);
  OUTLINED_FUNCTION_78_1();
  sub_1C8778810();
  OUTLINED_FUNCTION_277(v114 + OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__alignment, &v304);
  v229 = *(v243 + 48);
  OUTLINED_FUNCTION_78_1();
  sub_1C8778810();
  OUTLINED_FUNCTION_78_1();
  sub_1C8778810();
  v230 = OUTLINED_FUNCTION_158_1();
  OUTLINED_FUNCTION_76(v230, v231, v248);
  if (!v116)
  {
    v232 = v251;
    sub_1C8778810();
    OUTLINED_FUNCTION_76(v232 + v229, 1, v248);
    if (!v233)
    {
      OUTLINED_FUNCTION_95_2();
      sub_1C879A720();
      v234 = OUTLINED_FUNCTION_136();
      static Siri_Nlu_External_UtteranceAlignment.== infix(_:_:)(v234, v235);

      sub_1C87A0410();
      OUTLINED_FUNCTION_301();
      sub_1C8778ED8(v236, v237, v238);
      OUTLINED_FUNCTION_442();
      sub_1C87A0410();
      OUTLINED_FUNCTION_301();
      sub_1C8778ED8(v239, v240, v241);
      goto LABEL_33;
    }

    sub_1C8778ED8(v247, &qword_1EC2B8A68, &qword_1C8BF5068);
    sub_1C87A0410();
LABEL_115:
    sub_1C8778ED8(v251, &qword_1EC2B9000, &qword_1C8BF9F20);
    goto LABEL_33;
  }

  sub_1C8778ED8(v247, &qword_1EC2B8A68, &qword_1C8BF5068);
  OUTLINED_FUNCTION_76(v251 + v229, 1, v248);
  if (!v116)
  {
    goto LABEL_115;
  }

  sub_1C8778ED8(v251, &qword_1EC2B8A68, &qword_1C8BF5068);
LABEL_33:
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C88B634C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776788(&qword_1EC2B8F78, type metadata accessor for Siri_Nlu_External_UserDialogAct, &protocol conformance descriptor for Siri_Nlu_External_UserDialogAct);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C88B63C8(uint64_t a1)
{
  v2 = sub_1C8776788(&qword_1EDACBDF8, type metadata accessor for Siri_Nlu_External_UserDialogAct, &protocol conformance descriptor for Siri_Nlu_External_UserDialogAct);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C88B6438(uint64_t a1, uint64_t a2)
{
  sub_1C8776788(&qword_1EDACBDF8, type metadata accessor for Siri_Nlu_External_UserDialogAct, &protocol conformance descriptor for Siri_Nlu_External_UserDialogAct);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C88B64D0()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B4B00);
  __swift_project_value_buffer(v0, qword_1EC2B4B00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "offer_id";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "reference";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C88B66C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_External_UserAccepted(0);
  type metadata accessor for Siri_Nlu_External_UUID(0);
  sub_1C8776788(&qword_1EDACCE50, type metadata accessor for Siri_Nlu_External_UUID, &protocol conformance descriptor for Siri_Nlu_External_UUID);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C88B6778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_External_UserAccepted(0);
  type metadata accessor for Siri_Nlu_External_UsoGraph(0);
  sub_1C8776788(&qword_1EDACCCE0, type metadata accessor for Siri_Nlu_External_UsoGraph, &protocol conformance descriptor for Siri_Nlu_External_UsoGraph);
  return sub_1C8BD4C7C();
}

void Siri_Nlu_External_UserAccepted.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_101_2(v3, v4, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61D0, &qword_1C8C0C1E0);
  OUTLINED_FUNCTION_80(v6);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_17_4();
  v9 = type metadata accessor for Siri_Nlu_External_UsoGraph(v8);
  v10 = OUTLINED_FUNCTION_52_3(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_339(v11);
  v12 = OUTLINED_FUNCTION_315();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
  OUTLINED_FUNCTION_80(v14);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v15);
  v16 = OUTLINED_FUNCTION_87_2();
  type metadata accessor for Siri_Nlu_External_UUID(v16);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v17);
  v18 = OUTLINED_FUNCTION_36_4();
  type metadata accessor for Siri_Nlu_External_UserAccepted(v18);
  OUTLINED_FUNCTION_78_2();
  OUTLINED_FUNCTION_102_2();
  if (v19)
  {
    sub_1C8778ED8(v0, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    OUTLINED_FUNCTION_324_0();
  }

  else
  {
    OUTLINED_FUNCTION_0_16();
    OUTLINED_FUNCTION_251_0();
    sub_1C879A720();
    OUTLINED_FUNCTION_10_11();
    v22 = sub_1C8776788(v20, v21, &protocol conformance descriptor for Siri_Nlu_External_UUID);
    OUTLINED_FUNCTION_45_4(v22);
    OUTLINED_FUNCTION_3_12();
    sub_1C87A0410();
    if (v1)
    {
      goto LABEL_10;
    }
  }

  OUTLINED_FUNCTION_307_0();
  OUTLINED_FUNCTION_67_4();
  if (v19)
  {
    sub_1C8778ED8(v2, &qword_1EC2B61D0, &qword_1C8C0C1E0);
LABEL_9:
    OUTLINED_FUNCTION_15();
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_1_13();
  OUTLINED_FUNCTION_308_0();
  OUTLINED_FUNCTION_13_14();
  v25 = sub_1C8776788(v23, v24, &protocol conformance descriptor for Siri_Nlu_External_UsoGraph);
  OUTLINED_FUNCTION_76_3(v25);
  OUTLINED_FUNCTION_4_17();
  sub_1C87A0410();
  if (!v1)
  {
    goto LABEL_9;
  }

LABEL_10:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

void static Siri_Nlu_External_UserAccepted.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v3 = OUTLINED_FUNCTION_177_1();
  type metadata accessor for Siri_Nlu_External_UsoGraph(v3);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_25_7(v5, v32);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61D0, &qword_1C8C0C1E0);
  OUTLINED_FUNCTION_80(v6);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_81_3(v8, v33);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5FD8, &unk_1C8BE6C90);
  OUTLINED_FUNCTION_52_3(v9);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v10);
  v12 = OUTLINED_FUNCTION_47_5(v11, v34);
  type metadata accessor for Siri_Nlu_External_UUID(v12);
  OUTLINED_FUNCTION_74_1();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_51_1();
  v14 = OUTLINED_FUNCTION_220();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(v14, v15);
  OUTLINED_FUNCTION_80(v16);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_112_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EE8, &unk_1C8BE6F90);
  OUTLINED_FUNCTION_181_0();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v18);
  v19 = OUTLINED_FUNCTION_17_4();
  v20 = type metadata accessor for Siri_Nlu_External_UserAccepted(v19);
  OUTLINED_FUNCTION_66_5(v20);
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_19(v2);
  if (v21)
  {
    OUTLINED_FUNCTION_19(v2 + v1);
    if (v21)
    {
      sub_1C8778ED8(v2, &qword_1EC2B5EC8, &unk_1C8BE68C0);
      goto LABEL_11;
    }

LABEL_9:
    v22 = &qword_1EC2B5EE8;
    v23 = &unk_1C8BE6F90;
    v24 = v2;
LABEL_20:
    sub_1C8778ED8(v24, v22, v23);
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_475();
  OUTLINED_FUNCTION_19(v2 + v1);
  if (v21)
  {
    OUTLINED_FUNCTION_3_12();
    sub_1C87A0410();
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_0_16();
  OUTLINED_FUNCTION_474();
  v25 = OUTLINED_FUNCTION_377();
  static Siri_Nlu_External_UUID.== infix(_:_:)(v25, v26);
  OUTLINED_FUNCTION_15_8();
  sub_1C87A0410();
  OUTLINED_FUNCTION_12();
  sub_1C87A0410();
  sub_1C8778ED8(v2, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  if ((v0 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_11:
  OUTLINED_FUNCTION_180_1();
  OUTLINED_FUNCTION_149_2();
  OUTLINED_FUNCTION_200_2();
  OUTLINED_FUNCTION_68_3();
  if (v21)
  {
    OUTLINED_FUNCTION_38_8();
    if (v21)
    {
      sub_1C8778ED8(v1, &qword_1EC2B61D0, &qword_1C8C0C1E0);
LABEL_24:
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_2_18();
      v31 = sub_1C8776788(v29, v30, MEMORY[0x1E69AAC10]);
      v28 = OUTLINED_FUNCTION_201_1(v31);
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  OUTLINED_FUNCTION_309_0();
  OUTLINED_FUNCTION_38_8();
  if (v27)
  {
    OUTLINED_FUNCTION_4_17();
    sub_1C87A0410();
LABEL_19:
    v22 = &qword_1EC2B5FD8;
    v23 = &unk_1C8BE6C90;
    v24 = v1;
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_1_13();
  OUTLINED_FUNCTION_306_0();
  OUTLINED_FUNCTION_168_0();
  static Siri_Nlu_External_UsoGraph.== infix(_:_:)();
  OUTLINED_FUNCTION_14_9();
  sub_1C87A0410();
  OUTLINED_FUNCTION_300();
  sub_1C87A0410();
  sub_1C8778ED8(v1, &qword_1EC2B61D0, &qword_1C8C0C1E0);
  if (&qword_1EC2B61D0)
  {
    goto LABEL_24;
  }

LABEL_21:
  v28 = 0;
LABEL_22:
  OUTLINED_FUNCTION_157(v28);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C88B6E1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776788(&qword_1EC2B8F70, type metadata accessor for Siri_Nlu_External_UserAccepted, &protocol conformance descriptor for Siri_Nlu_External_UserAccepted);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C88B6E9C(uint64_t a1)
{
  v2 = sub_1C8776788(&qword_1EC2B4AF8, type metadata accessor for Siri_Nlu_External_UserAccepted, &protocol conformance descriptor for Siri_Nlu_External_UserAccepted);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C88B6F0C(uint64_t a1, uint64_t a2)
{
  sub_1C8776788(&qword_1EC2B4AF8, type metadata accessor for Siri_Nlu_External_UserAccepted, &protocol conformance descriptor for Siri_Nlu_External_UserAccepted);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C88B6FA4()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B4AD8);
  __swift_project_value_buffer(v0, qword_1EC2B4AD8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "offer_id";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "reference";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C88B71D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_External_UserRejected(0);
  type metadata accessor for Siri_Nlu_External_UUID(0);
  sub_1C8776788(&qword_1EDACCE50, type metadata accessor for Siri_Nlu_External_UUID, &protocol conformance descriptor for Siri_Nlu_External_UUID);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C88B728C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_External_UserRejected(0);
  type metadata accessor for Siri_Nlu_External_UsoGraph(0);
  sub_1C8776788(&qword_1EDACCCE0, type metadata accessor for Siri_Nlu_External_UsoGraph, &protocol conformance descriptor for Siri_Nlu_External_UsoGraph);
  return sub_1C8BD4C7C();
}

void Siri_Nlu_External_UserRejected.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_101_2(v3, v4, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61D0, &qword_1C8C0C1E0);
  OUTLINED_FUNCTION_80(v6);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_17_4();
  v9 = type metadata accessor for Siri_Nlu_External_UsoGraph(v8);
  v10 = OUTLINED_FUNCTION_52_3(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_339(v11);
  v12 = OUTLINED_FUNCTION_315();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
  OUTLINED_FUNCTION_80(v14);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v15);
  v16 = OUTLINED_FUNCTION_87_2();
  type metadata accessor for Siri_Nlu_External_UUID(v16);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v17);
  v18 = OUTLINED_FUNCTION_36_4();
  type metadata accessor for Siri_Nlu_External_UserRejected(v18);
  OUTLINED_FUNCTION_78_2();
  OUTLINED_FUNCTION_102_2();
  if (v19)
  {
    sub_1C8778ED8(v0, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    OUTLINED_FUNCTION_324_0();
  }

  else
  {
    OUTLINED_FUNCTION_0_16();
    OUTLINED_FUNCTION_251_0();
    sub_1C879A720();
    OUTLINED_FUNCTION_10_11();
    v22 = sub_1C8776788(v20, v21, &protocol conformance descriptor for Siri_Nlu_External_UUID);
    OUTLINED_FUNCTION_45_4(v22);
    OUTLINED_FUNCTION_3_12();
    sub_1C87A0410();
    if (v1)
    {
      goto LABEL_10;
    }
  }

  OUTLINED_FUNCTION_307_0();
  OUTLINED_FUNCTION_67_4();
  if (v19)
  {
    sub_1C8778ED8(v2, &qword_1EC2B61D0, &qword_1C8C0C1E0);
LABEL_9:
    OUTLINED_FUNCTION_15();
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_1_13();
  OUTLINED_FUNCTION_308_0();
  OUTLINED_FUNCTION_13_14();
  v25 = sub_1C8776788(v23, v24, &protocol conformance descriptor for Siri_Nlu_External_UsoGraph);
  OUTLINED_FUNCTION_76_3(v25);
  OUTLINED_FUNCTION_4_17();
  sub_1C87A0410();
  if (!v1)
  {
    goto LABEL_9;
  }

LABEL_10:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

void static Siri_Nlu_External_UserRejected.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v3 = OUTLINED_FUNCTION_177_1();
  type metadata accessor for Siri_Nlu_External_UsoGraph(v3);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_25_7(v5, v32);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61D0, &qword_1C8C0C1E0);
  OUTLINED_FUNCTION_80(v6);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_81_3(v8, v33);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5FD8, &unk_1C8BE6C90);
  OUTLINED_FUNCTION_52_3(v9);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v10);
  v12 = OUTLINED_FUNCTION_47_5(v11, v34);
  type metadata accessor for Siri_Nlu_External_UUID(v12);
  OUTLINED_FUNCTION_74_1();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_51_1();
  v14 = OUTLINED_FUNCTION_220();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(v14, v15);
  OUTLINED_FUNCTION_80(v16);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_112_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EE8, &unk_1C8BE6F90);
  OUTLINED_FUNCTION_181_0();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v18);
  v19 = OUTLINED_FUNCTION_17_4();
  v20 = type metadata accessor for Siri_Nlu_External_UserRejected(v19);
  OUTLINED_FUNCTION_66_5(v20);
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_19(v2);
  if (v21)
  {
    OUTLINED_FUNCTION_19(v2 + v1);
    if (v21)
    {
      sub_1C8778ED8(v2, &qword_1EC2B5EC8, &unk_1C8BE68C0);
      goto LABEL_11;
    }

LABEL_9:
    v22 = &qword_1EC2B5EE8;
    v23 = &unk_1C8BE6F90;
    v24 = v2;
LABEL_20:
    sub_1C8778ED8(v24, v22, v23);
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_475();
  OUTLINED_FUNCTION_19(v2 + v1);
  if (v21)
  {
    OUTLINED_FUNCTION_3_12();
    sub_1C87A0410();
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_0_16();
  OUTLINED_FUNCTION_474();
  v25 = OUTLINED_FUNCTION_377();
  static Siri_Nlu_External_UUID.== infix(_:_:)(v25, v26);
  OUTLINED_FUNCTION_15_8();
  sub_1C87A0410();
  OUTLINED_FUNCTION_12();
  sub_1C87A0410();
  sub_1C8778ED8(v2, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  if ((v0 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_11:
  OUTLINED_FUNCTION_180_1();
  OUTLINED_FUNCTION_149_2();
  OUTLINED_FUNCTION_200_2();
  OUTLINED_FUNCTION_68_3();
  if (v21)
  {
    OUTLINED_FUNCTION_38_8();
    if (v21)
    {
      sub_1C8778ED8(v1, &qword_1EC2B61D0, &qword_1C8C0C1E0);
LABEL_24:
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_2_18();
      v31 = sub_1C8776788(v29, v30, MEMORY[0x1E69AAC10]);
      v28 = OUTLINED_FUNCTION_201_1(v31);
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  OUTLINED_FUNCTION_309_0();
  OUTLINED_FUNCTION_38_8();
  if (v27)
  {
    OUTLINED_FUNCTION_4_17();
    sub_1C87A0410();
LABEL_19:
    v22 = &qword_1EC2B5FD8;
    v23 = &unk_1C8BE6C90;
    v24 = v1;
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_1_13();
  OUTLINED_FUNCTION_306_0();
  OUTLINED_FUNCTION_168_0();
  static Siri_Nlu_External_UsoGraph.== infix(_:_:)();
  OUTLINED_FUNCTION_14_9();
  sub_1C87A0410();
  OUTLINED_FUNCTION_300();
  sub_1C87A0410();
  sub_1C8778ED8(v1, &qword_1EC2B61D0, &qword_1C8C0C1E0);
  if (&qword_1EC2B61D0)
  {
    goto LABEL_24;
  }

LABEL_21:
  v28 = 0;
LABEL_22:
  OUTLINED_FUNCTION_157(v28);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C88B794C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776788(&qword_1EC2B8F68, type metadata accessor for Siri_Nlu_External_UserRejected, "IH)&");

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C88B79CC(uint64_t a1)
{
  v2 = sub_1C8776788(qword_1EDACC430, type metadata accessor for Siri_Nlu_External_UserRejected, &protocol conformance descriptor for Siri_Nlu_External_UserRejected);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C88B7A3C(uint64_t a1, uint64_t a2)
{
  sub_1C8776788(qword_1EDACC430, type metadata accessor for Siri_Nlu_External_UserRejected, &protocol conformance descriptor for Siri_Nlu_External_UserRejected);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C88B7AC8()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B8890);
  __swift_project_value_buffer(v0, qword_1EC2B8890);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "task_id";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "reference";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C88B7CFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_External_UserCancelled(0);
  type metadata accessor for Siri_Nlu_External_UUID(0);
  sub_1C8776788(&qword_1EDACCE50, type metadata accessor for Siri_Nlu_External_UUID, &protocol conformance descriptor for Siri_Nlu_External_UUID);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C88B7DB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_External_UserCancelled(0);
  type metadata accessor for Siri_Nlu_External_UsoGraph(0);
  sub_1C8776788(&qword_1EDACCCE0, type metadata accessor for Siri_Nlu_External_UsoGraph, &protocol conformance descriptor for Siri_Nlu_External_UsoGraph);
  return sub_1C8BD4C7C();
}

void Siri_Nlu_External_UserCancelled.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_101_2(v3, v4, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61D0, &qword_1C8C0C1E0);
  OUTLINED_FUNCTION_80(v6);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_17_4();
  v9 = type metadata accessor for Siri_Nlu_External_UsoGraph(v8);
  v10 = OUTLINED_FUNCTION_52_3(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_339(v11);
  v12 = OUTLINED_FUNCTION_315();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
  OUTLINED_FUNCTION_80(v14);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v15);
  v16 = OUTLINED_FUNCTION_87_2();
  type metadata accessor for Siri_Nlu_External_UUID(v16);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v17);
  v18 = OUTLINED_FUNCTION_36_4();
  type metadata accessor for Siri_Nlu_External_UserCancelled(v18);
  OUTLINED_FUNCTION_78_2();
  OUTLINED_FUNCTION_102_2();
  if (v19)
  {
    sub_1C8778ED8(v0, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    OUTLINED_FUNCTION_324_0();
  }

  else
  {
    OUTLINED_FUNCTION_0_16();
    OUTLINED_FUNCTION_251_0();
    sub_1C879A720();
    OUTLINED_FUNCTION_10_11();
    v22 = sub_1C8776788(v20, v21, &protocol conformance descriptor for Siri_Nlu_External_UUID);
    OUTLINED_FUNCTION_45_4(v22);
    OUTLINED_FUNCTION_3_12();
    sub_1C87A0410();
    if (v1)
    {
      goto LABEL_10;
    }
  }

  OUTLINED_FUNCTION_307_0();
  OUTLINED_FUNCTION_67_4();
  if (v19)
  {
    sub_1C8778ED8(v2, &qword_1EC2B61D0, &qword_1C8C0C1E0);
LABEL_9:
    OUTLINED_FUNCTION_15();
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_1_13();
  OUTLINED_FUNCTION_308_0();
  OUTLINED_FUNCTION_13_14();
  v25 = sub_1C8776788(v23, v24, &protocol conformance descriptor for Siri_Nlu_External_UsoGraph);
  OUTLINED_FUNCTION_76_3(v25);
  OUTLINED_FUNCTION_4_17();
  sub_1C87A0410();
  if (!v1)
  {
    goto LABEL_9;
  }

LABEL_10:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

void static Siri_Nlu_External_UserCancelled.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v3 = OUTLINED_FUNCTION_177_1();
  type metadata accessor for Siri_Nlu_External_UsoGraph(v3);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_25_7(v5, v32);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61D0, &qword_1C8C0C1E0);
  OUTLINED_FUNCTION_80(v6);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_81_3(v8, v33);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5FD8, &unk_1C8BE6C90);
  OUTLINED_FUNCTION_52_3(v9);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v10);
  v12 = OUTLINED_FUNCTION_47_5(v11, v34);
  type metadata accessor for Siri_Nlu_External_UUID(v12);
  OUTLINED_FUNCTION_74_1();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_51_1();
  v14 = OUTLINED_FUNCTION_220();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(v14, v15);
  OUTLINED_FUNCTION_80(v16);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_112_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EE8, &unk_1C8BE6F90);
  OUTLINED_FUNCTION_181_0();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v18);
  v19 = OUTLINED_FUNCTION_17_4();
  v20 = type metadata accessor for Siri_Nlu_External_UserCancelled(v19);
  OUTLINED_FUNCTION_66_5(v20);
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_19(v2);
  if (v21)
  {
    OUTLINED_FUNCTION_19(v2 + v1);
    if (v21)
    {
      sub_1C8778ED8(v2, &qword_1EC2B5EC8, &unk_1C8BE68C0);
      goto LABEL_11;
    }

LABEL_9:
    v22 = &qword_1EC2B5EE8;
    v23 = &unk_1C8BE6F90;
    v24 = v2;
LABEL_20:
    sub_1C8778ED8(v24, v22, v23);
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_475();
  OUTLINED_FUNCTION_19(v2 + v1);
  if (v21)
  {
    OUTLINED_FUNCTION_3_12();
    sub_1C87A0410();
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_0_16();
  OUTLINED_FUNCTION_474();
  v25 = OUTLINED_FUNCTION_377();
  static Siri_Nlu_External_UUID.== infix(_:_:)(v25, v26);
  OUTLINED_FUNCTION_15_8();
  sub_1C87A0410();
  OUTLINED_FUNCTION_12();
  sub_1C87A0410();
  sub_1C8778ED8(v2, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  if ((v0 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_11:
  OUTLINED_FUNCTION_180_1();
  OUTLINED_FUNCTION_149_2();
  OUTLINED_FUNCTION_200_2();
  OUTLINED_FUNCTION_68_3();
  if (v21)
  {
    OUTLINED_FUNCTION_38_8();
    if (v21)
    {
      sub_1C8778ED8(v1, &qword_1EC2B61D0, &qword_1C8C0C1E0);
LABEL_24:
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_2_18();
      v31 = sub_1C8776788(v29, v30, MEMORY[0x1E69AAC10]);
      v28 = OUTLINED_FUNCTION_201_1(v31);
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  OUTLINED_FUNCTION_309_0();
  OUTLINED_FUNCTION_38_8();
  if (v27)
  {
    OUTLINED_FUNCTION_4_17();
    sub_1C87A0410();
LABEL_19:
    v22 = &qword_1EC2B5FD8;
    v23 = &unk_1C8BE6C90;
    v24 = v1;
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_1_13();
  OUTLINED_FUNCTION_306_0();
  OUTLINED_FUNCTION_168_0();
  static Siri_Nlu_External_UsoGraph.== infix(_:_:)();
  OUTLINED_FUNCTION_14_9();
  sub_1C87A0410();
  OUTLINED_FUNCTION_300();
  sub_1C87A0410();
  sub_1C8778ED8(v1, &qword_1EC2B61D0, &qword_1C8C0C1E0);
  if (&qword_1EC2B61D0)
  {
    goto LABEL_24;
  }

LABEL_21:
  v28 = 0;
LABEL_22:
  OUTLINED_FUNCTION_157(v28);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C88B8470(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776788(&qword_1EC2B8F60, type metadata accessor for Siri_Nlu_External_UserCancelled, &protocol conformance descriptor for Siri_Nlu_External_UserCancelled);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C88B84F0(uint64_t a1)
{
  v2 = sub_1C8776788(&qword_1EC2B41C8, type metadata accessor for Siri_Nlu_External_UserCancelled, &protocol conformance descriptor for Siri_Nlu_External_UserCancelled);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C88B8560(uint64_t a1, uint64_t a2)
{
  sub_1C8776788(&qword_1EC2B41C8, type metadata accessor for Siri_Nlu_External_UserCancelled, &protocol conformance descriptor for Siri_Nlu_External_UserCancelled);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C88B85F8()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B88A8);
  __swift_project_value_buffer(v0, qword_1EC2B88A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "system_dialog_act_id";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "reference";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C88B882C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_External_UserWantedToRepeat(0);
  type metadata accessor for Siri_Nlu_External_UUID(0);
  sub_1C8776788(&qword_1EDACCE50, type metadata accessor for Siri_Nlu_External_UUID, &protocol conformance descriptor for Siri_Nlu_External_UUID);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C88B88E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_External_UserWantedToRepeat(0);
  type metadata accessor for Siri_Nlu_External_UsoGraph(0);
  sub_1C8776788(&qword_1EDACCCE0, type metadata accessor for Siri_Nlu_External_UsoGraph, &protocol conformance descriptor for Siri_Nlu_External_UsoGraph);
  return sub_1C8BD4C7C();
}

void Siri_Nlu_External_UserWantedToRepeat.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_101_2(v3, v4, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61D0, &qword_1C8C0C1E0);
  OUTLINED_FUNCTION_80(v6);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_17_4();
  v9 = type metadata accessor for Siri_Nlu_External_UsoGraph(v8);
  v10 = OUTLINED_FUNCTION_52_3(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_339(v11);
  v12 = OUTLINED_FUNCTION_315();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
  OUTLINED_FUNCTION_80(v14);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v15);
  v16 = OUTLINED_FUNCTION_87_2();
  type metadata accessor for Siri_Nlu_External_UUID(v16);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v17);
  v18 = OUTLINED_FUNCTION_36_4();
  type metadata accessor for Siri_Nlu_External_UserWantedToRepeat(v18);
  OUTLINED_FUNCTION_78_2();
  OUTLINED_FUNCTION_102_2();
  if (v19)
  {
    sub_1C8778ED8(v0, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    OUTLINED_FUNCTION_324_0();
  }

  else
  {
    OUTLINED_FUNCTION_0_16();
    OUTLINED_FUNCTION_251_0();
    sub_1C879A720();
    OUTLINED_FUNCTION_10_11();
    v22 = sub_1C8776788(v20, v21, &protocol conformance descriptor for Siri_Nlu_External_UUID);
    OUTLINED_FUNCTION_45_4(v22);
    OUTLINED_FUNCTION_3_12();
    sub_1C87A0410();
    if (v1)
    {
      goto LABEL_10;
    }
  }

  OUTLINED_FUNCTION_307_0();
  OUTLINED_FUNCTION_67_4();
  if (v19)
  {
    sub_1C8778ED8(v2, &qword_1EC2B61D0, &qword_1C8C0C1E0);
LABEL_9:
    OUTLINED_FUNCTION_15();
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_1_13();
  OUTLINED_FUNCTION_308_0();
  OUTLINED_FUNCTION_13_14();
  v25 = sub_1C8776788(v23, v24, &protocol conformance descriptor for Siri_Nlu_External_UsoGraph);
  OUTLINED_FUNCTION_76_3(v25);
  OUTLINED_FUNCTION_4_17();
  sub_1C87A0410();
  if (!v1)
  {
    goto LABEL_9;
  }

LABEL_10:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

void static Siri_Nlu_External_UserWantedToRepeat.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v3 = OUTLINED_FUNCTION_177_1();
  type metadata accessor for Siri_Nlu_External_UsoGraph(v3);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_25_7(v5, v32);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61D0, &qword_1C8C0C1E0);
  OUTLINED_FUNCTION_80(v6);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_81_3(v8, v33);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5FD8, &unk_1C8BE6C90);
  OUTLINED_FUNCTION_52_3(v9);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v10);
  v12 = OUTLINED_FUNCTION_47_5(v11, v34);
  type metadata accessor for Siri_Nlu_External_UUID(v12);
  OUTLINED_FUNCTION_74_1();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_51_1();
  v14 = OUTLINED_FUNCTION_220();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(v14, v15);
  OUTLINED_FUNCTION_80(v16);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_112_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EE8, &unk_1C8BE6F90);
  OUTLINED_FUNCTION_181_0();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v18);
  v19 = OUTLINED_FUNCTION_17_4();
  v20 = type metadata accessor for Siri_Nlu_External_UserWantedToRepeat(v19);
  OUTLINED_FUNCTION_66_5(v20);
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_19(v2);
  if (v21)
  {
    OUTLINED_FUNCTION_19(v2 + v1);
    if (v21)
    {
      sub_1C8778ED8(v2, &qword_1EC2B5EC8, &unk_1C8BE68C0);
      goto LABEL_11;
    }

LABEL_9:
    v22 = &qword_1EC2B5EE8;
    v23 = &unk_1C8BE6F90;
    v24 = v2;
LABEL_20:
    sub_1C8778ED8(v24, v22, v23);
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_475();
  OUTLINED_FUNCTION_19(v2 + v1);
  if (v21)
  {
    OUTLINED_FUNCTION_3_12();
    sub_1C87A0410();
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_0_16();
  OUTLINED_FUNCTION_474();
  v25 = OUTLINED_FUNCTION_377();
  static Siri_Nlu_External_UUID.== infix(_:_:)(v25, v26);
  OUTLINED_FUNCTION_15_8();
  sub_1C87A0410();
  OUTLINED_FUNCTION_12();
  sub_1C87A0410();
  sub_1C8778ED8(v2, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  if ((v0 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_11:
  OUTLINED_FUNCTION_180_1();
  OUTLINED_FUNCTION_149_2();
  OUTLINED_FUNCTION_200_2();
  OUTLINED_FUNCTION_68_3();
  if (v21)
  {
    OUTLINED_FUNCTION_38_8();
    if (v21)
    {
      sub_1C8778ED8(v1, &qword_1EC2B61D0, &qword_1C8C0C1E0);
LABEL_24:
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_2_18();
      v31 = sub_1C8776788(v29, v30, MEMORY[0x1E69AAC10]);
      v28 = OUTLINED_FUNCTION_201_1(v31);
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  OUTLINED_FUNCTION_309_0();
  OUTLINED_FUNCTION_38_8();
  if (v27)
  {
    OUTLINED_FUNCTION_4_17();
    sub_1C87A0410();
LABEL_19:
    v22 = &qword_1EC2B5FD8;
    v23 = &unk_1C8BE6C90;
    v24 = v1;
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_1_13();
  OUTLINED_FUNCTION_306_0();
  OUTLINED_FUNCTION_168_0();
  static Siri_Nlu_External_UsoGraph.== infix(_:_:)();
  OUTLINED_FUNCTION_14_9();
  sub_1C87A0410();
  OUTLINED_FUNCTION_300();
  sub_1C87A0410();
  sub_1C8778ED8(v1, &qword_1EC2B61D0, &qword_1C8C0C1E0);
  if (&qword_1EC2B61D0)
  {
    goto LABEL_24;
  }

LABEL_21:
  v28 = 0;
LABEL_22:
  OUTLINED_FUNCTION_157(v28);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C88B8FA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776788(&qword_1EC2B8F58, type metadata accessor for Siri_Nlu_External_UserWantedToRepeat, &protocol conformance descriptor for Siri_Nlu_External_UserWantedToRepeat);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C88B9020(uint64_t a1)
{
  v2 = sub_1C8776788(&qword_1EC2B4028, type metadata accessor for Siri_Nlu_External_UserWantedToRepeat, &protocol conformance descriptor for Siri_Nlu_External_UserWantedToRepeat);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C88B9090(uint64_t a1, uint64_t a2)
{
  sub_1C8776788(&qword_1EC2B4028, type metadata accessor for Siri_Nlu_External_UserWantedToRepeat, &protocol conformance descriptor for Siri_Nlu_External_UserWantedToRepeat);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C88B911C()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B88C0);
  __swift_project_value_buffer(v0, qword_1EC2B88C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "system_dialog_act_id";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "reference";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C88B9350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_External_UserAcknowledged(0);
  type metadata accessor for Siri_Nlu_External_UUID(0);
  sub_1C8776788(&qword_1EDACCE50, type metadata accessor for Siri_Nlu_External_UUID, &protocol conformance descriptor for Siri_Nlu_External_UUID);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C88B9404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_External_UserAcknowledged(0);
  type metadata accessor for Siri_Nlu_External_UsoGraph(0);
  sub_1C8776788(&qword_1EDACCCE0, type metadata accessor for Siri_Nlu_External_UsoGraph, &protocol conformance descriptor for Siri_Nlu_External_UsoGraph);
  return sub_1C8BD4C7C();
}

void Siri_Nlu_External_UserAcknowledged.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_101_2(v3, v4, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61D0, &qword_1C8C0C1E0);
  OUTLINED_FUNCTION_80(v6);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_17_4();
  v9 = type metadata accessor for Siri_Nlu_External_UsoGraph(v8);
  v10 = OUTLINED_FUNCTION_52_3(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_339(v11);
  v12 = OUTLINED_FUNCTION_315();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
  OUTLINED_FUNCTION_80(v14);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v15);
  v16 = OUTLINED_FUNCTION_87_2();
  type metadata accessor for Siri_Nlu_External_UUID(v16);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v17);
  v18 = OUTLINED_FUNCTION_36_4();
  type metadata accessor for Siri_Nlu_External_UserAcknowledged(v18);
  OUTLINED_FUNCTION_78_2();
  OUTLINED_FUNCTION_102_2();
  if (v19)
  {
    sub_1C8778ED8(v0, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    OUTLINED_FUNCTION_324_0();
  }

  else
  {
    OUTLINED_FUNCTION_0_16();
    OUTLINED_FUNCTION_251_0();
    sub_1C879A720();
    OUTLINED_FUNCTION_10_11();
    v22 = sub_1C8776788(v20, v21, &protocol conformance descriptor for Siri_Nlu_External_UUID);
    OUTLINED_FUNCTION_45_4(v22);
    OUTLINED_FUNCTION_3_12();
    sub_1C87A0410();
    if (v1)
    {
      goto LABEL_10;
    }
  }

  OUTLINED_FUNCTION_307_0();
  OUTLINED_FUNCTION_67_4();
  if (v19)
  {
    sub_1C8778ED8(v2, &qword_1EC2B61D0, &qword_1C8C0C1E0);
LABEL_9:
    OUTLINED_FUNCTION_15();
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_1_13();
  OUTLINED_FUNCTION_308_0();
  OUTLINED_FUNCTION_13_14();
  v25 = sub_1C8776788(v23, v24, &protocol conformance descriptor for Siri_Nlu_External_UsoGraph);
  OUTLINED_FUNCTION_76_3(v25);
  OUTLINED_FUNCTION_4_17();
  sub_1C87A0410();
  if (!v1)
  {
    goto LABEL_9;
  }

LABEL_10:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

void static Siri_Nlu_External_UserAcknowledged.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v3 = OUTLINED_FUNCTION_177_1();
  type metadata accessor for Siri_Nlu_External_UsoGraph(v3);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_25_7(v5, v32);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61D0, &qword_1C8C0C1E0);
  OUTLINED_FUNCTION_80(v6);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_81_3(v8, v33);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5FD8, &unk_1C8BE6C90);
  OUTLINED_FUNCTION_52_3(v9);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v10);
  v12 = OUTLINED_FUNCTION_47_5(v11, v34);
  type metadata accessor for Siri_Nlu_External_UUID(v12);
  OUTLINED_FUNCTION_74_1();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_51_1();
  v14 = OUTLINED_FUNCTION_220();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(v14, v15);
  OUTLINED_FUNCTION_80(v16);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_112_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EE8, &unk_1C8BE6F90);
  OUTLINED_FUNCTION_181_0();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v18);
  v19 = OUTLINED_FUNCTION_17_4();
  v20 = type metadata accessor for Siri_Nlu_External_UserAcknowledged(v19);
  OUTLINED_FUNCTION_66_5(v20);
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_19(v2);
  if (v21)
  {
    OUTLINED_FUNCTION_19(v2 + v1);
    if (v21)
    {
      sub_1C8778ED8(v2, &qword_1EC2B5EC8, &unk_1C8BE68C0);
      goto LABEL_11;
    }

LABEL_9:
    v22 = &qword_1EC2B5EE8;
    v23 = &unk_1C8BE6F90;
    v24 = v2;
LABEL_20:
    sub_1C8778ED8(v24, v22, v23);
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_475();
  OUTLINED_FUNCTION_19(v2 + v1);
  if (v21)
  {
    OUTLINED_FUNCTION_3_12();
    sub_1C87A0410();
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_0_16();
  OUTLINED_FUNCTION_474();
  v25 = OUTLINED_FUNCTION_377();
  static Siri_Nlu_External_UUID.== infix(_:_:)(v25, v26);
  OUTLINED_FUNCTION_15_8();
  sub_1C87A0410();
  OUTLINED_FUNCTION_12();
  sub_1C87A0410();
  sub_1C8778ED8(v2, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  if ((v0 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_11:
  OUTLINED_FUNCTION_180_1();
  OUTLINED_FUNCTION_149_2();
  OUTLINED_FUNCTION_200_2();
  OUTLINED_FUNCTION_68_3();
  if (v21)
  {
    OUTLINED_FUNCTION_38_8();
    if (v21)
    {
      sub_1C8778ED8(v1, &qword_1EC2B61D0, &qword_1C8C0C1E0);
LABEL_24:
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_2_18();
      v31 = sub_1C8776788(v29, v30, MEMORY[0x1E69AAC10]);
      v28 = OUTLINED_FUNCTION_201_1(v31);
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  OUTLINED_FUNCTION_309_0();
  OUTLINED_FUNCTION_38_8();
  if (v27)
  {
    OUTLINED_FUNCTION_4_17();
    sub_1C87A0410();
LABEL_19:
    v22 = &qword_1EC2B5FD8;
    v23 = &unk_1C8BE6C90;
    v24 = v1;
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_1_13();
  OUTLINED_FUNCTION_306_0();
  OUTLINED_FUNCTION_168_0();
  static Siri_Nlu_External_UsoGraph.== infix(_:_:)();
  OUTLINED_FUNCTION_14_9();
  sub_1C87A0410();
  OUTLINED_FUNCTION_300();
  sub_1C87A0410();
  sub_1C8778ED8(v1, &qword_1EC2B61D0, &qword_1C8C0C1E0);
  if (&qword_1EC2B61D0)
  {
    goto LABEL_24;
  }

LABEL_21:
  v28 = 0;
LABEL_22:
  OUTLINED_FUNCTION_157(v28);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C88B9AC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776788(&qword_1EC2B8F50, type metadata accessor for Siri_Nlu_External_UserAcknowledged, &protocol conformance descriptor for Siri_Nlu_External_UserAcknowledged);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C88B9B44(uint64_t a1)
{
  v2 = sub_1C8776788(&qword_1EC2B8D10, type metadata accessor for Siri_Nlu_External_UserAcknowledged, &protocol conformance descriptor for Siri_Nlu_External_UserAcknowledged);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C88B9BB4(uint64_t a1, uint64_t a2)
{
  sub_1C8776788(&qword_1EC2B8D10, type metadata accessor for Siri_Nlu_External_UserAcknowledged, &protocol conformance descriptor for Siri_Nlu_External_UserAcknowledged);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C88B9C4C()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B47E8);
  __swift_project_value_buffer(v0, qword_1EC2B47E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "task_id";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "reference";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C88B9E1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_External_UserWantedToProceed(0);
  type metadata accessor for Siri_Nlu_External_UUID(0);
  sub_1C8776788(&qword_1EDACCE50, type metadata accessor for Siri_Nlu_External_UUID, &protocol conformance descriptor for Siri_Nlu_External_UUID);
  return sub_1C8BD4C7C();
}

void static Siri_Nlu_External_UserWantedToProceed.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v3 = OUTLINED_FUNCTION_177_1();
  type metadata accessor for Siri_Nlu_External_UsoGraph(v3);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_25_7(v5, v32);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61D0, &qword_1C8C0C1E0);
  OUTLINED_FUNCTION_80(v6);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_81_3(v8, v33);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5FD8, &unk_1C8BE6C90);
  OUTLINED_FUNCTION_52_3(v9);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v10);
  v12 = OUTLINED_FUNCTION_47_5(v11, v34);
  type metadata accessor for Siri_Nlu_External_UUID(v12);
  OUTLINED_FUNCTION_74_1();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_51_1();
  v14 = OUTLINED_FUNCTION_220();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(v14, v15);
  OUTLINED_FUNCTION_80(v16);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_112_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EE8, &unk_1C8BE6F90);
  OUTLINED_FUNCTION_181_0();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v18);
  v19 = OUTLINED_FUNCTION_17_4();
  v20 = type metadata accessor for Siri_Nlu_External_UserWantedToProceed(v19);
  OUTLINED_FUNCTION_66_5(v20);
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_19(v2);
  if (v21)
  {
    OUTLINED_FUNCTION_19(v2 + v1);
    if (v21)
    {
      sub_1C8778ED8(v2, &qword_1EC2B5EC8, &unk_1C8BE68C0);
      goto LABEL_11;
    }

LABEL_9:
    v22 = &qword_1EC2B5EE8;
    v23 = &unk_1C8BE6F90;
    v24 = v2;
LABEL_20:
    sub_1C8778ED8(v24, v22, v23);
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_475();
  OUTLINED_FUNCTION_19(v2 + v1);
  if (v21)
  {
    OUTLINED_FUNCTION_3_12();
    sub_1C87A0410();
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_0_16();
  OUTLINED_FUNCTION_474();
  v25 = OUTLINED_FUNCTION_377();
  static Siri_Nlu_External_UUID.== infix(_:_:)(v25, v26);
  OUTLINED_FUNCTION_15_8();
  sub_1C87A0410();
  OUTLINED_FUNCTION_12();
  sub_1C87A0410();
  sub_1C8778ED8(v2, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  if ((v0 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_11:
  OUTLINED_FUNCTION_180_1();
  OUTLINED_FUNCTION_149_2();
  OUTLINED_FUNCTION_200_2();
  OUTLINED_FUNCTION_68_3();
  if (v21)
  {
    OUTLINED_FUNCTION_38_8();
    if (v21)
    {
      sub_1C8778ED8(v1, &qword_1EC2B61D0, &qword_1C8C0C1E0);
LABEL_24:
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_2_18();
      v31 = sub_1C8776788(v29, v30, MEMORY[0x1E69AAC10]);
      v28 = OUTLINED_FUNCTION_201_1(v31);
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  OUTLINED_FUNCTION_309_0();
  OUTLINED_FUNCTION_38_8();
  if (v27)
  {
    OUTLINED_FUNCTION_4_17();
    sub_1C87A0410();
LABEL_19:
    v22 = &qword_1EC2B5FD8;
    v23 = &unk_1C8BE6C90;
    v24 = v1;
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_1_13();
  OUTLINED_FUNCTION_306_0();
  OUTLINED_FUNCTION_168_0();
  static Siri_Nlu_External_UsoGraph.== infix(_:_:)();
  OUTLINED_FUNCTION_14_9();
  sub_1C87A0410();
  OUTLINED_FUNCTION_300();
  sub_1C87A0410();
  sub_1C8778ED8(v1, &qword_1EC2B61D0, &qword_1C8C0C1E0);
  if (&qword_1EC2B61D0)
  {
    goto LABEL_24;
  }

LABEL_21:
  v28 = 0;
LABEL_22:
  OUTLINED_FUNCTION_157(v28);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C88BA290(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776788(&qword_1EC2B8F48, type metadata accessor for Siri_Nlu_External_UserWantedToProceed, &protocol conformance descriptor for Siri_Nlu_External_UserWantedToProceed);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C88BA30C(uint64_t a1)
{
  v2 = sub_1C8776788(qword_1EDACAB48, type metadata accessor for Siri_Nlu_External_UserWantedToProceed, &protocol conformance descriptor for Siri_Nlu_External_UserWantedToProceed);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C88BA37C(uint64_t a1, uint64_t a2)
{
  sub_1C8776788(qword_1EDACAB48, type metadata accessor for Siri_Nlu_External_UserWantedToProceed, &protocol conformance descriptor for Siri_Nlu_External_UserWantedToProceed);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C88BA408()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B88D8);
  __swift_project_value_buffer(v0, qword_1EC2B88D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "task_id";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "reference";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C88BA63C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_External_UserWantedToPause(0);
  type metadata accessor for Siri_Nlu_External_UUID(0);
  sub_1C8776788(&qword_1EDACCE50, type metadata accessor for Siri_Nlu_External_UUID, &protocol conformance descriptor for Siri_Nlu_External_UUID);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C88BA6F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_External_UserWantedToPause(0);
  type metadata accessor for Siri_Nlu_External_UsoGraph(0);
  sub_1C8776788(&qword_1EDACCCE0, type metadata accessor for Siri_Nlu_External_UsoGraph, &protocol conformance descriptor for Siri_Nlu_External_UsoGraph);
  return sub_1C8BD4C7C();
}

void Siri_Nlu_External_UserWantedToPause.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_101_2(v3, v4, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61D0, &qword_1C8C0C1E0);
  OUTLINED_FUNCTION_80(v6);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_17_4();
  v9 = type metadata accessor for Siri_Nlu_External_UsoGraph(v8);
  v10 = OUTLINED_FUNCTION_52_3(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_339(v11);
  v12 = OUTLINED_FUNCTION_315();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
  OUTLINED_FUNCTION_80(v14);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v15);
  v16 = OUTLINED_FUNCTION_87_2();
  type metadata accessor for Siri_Nlu_External_UUID(v16);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v17);
  v18 = OUTLINED_FUNCTION_36_4();
  type metadata accessor for Siri_Nlu_External_UserWantedToPause(v18);
  OUTLINED_FUNCTION_78_2();
  OUTLINED_FUNCTION_102_2();
  if (v19)
  {
    sub_1C8778ED8(v0, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    OUTLINED_FUNCTION_324_0();
  }

  else
  {
    OUTLINED_FUNCTION_0_16();
    OUTLINED_FUNCTION_251_0();
    sub_1C879A720();
    OUTLINED_FUNCTION_10_11();
    v22 = sub_1C8776788(v20, v21, &protocol conformance descriptor for Siri_Nlu_External_UUID);
    OUTLINED_FUNCTION_45_4(v22);
    OUTLINED_FUNCTION_3_12();
    sub_1C87A0410();
    if (v1)
    {
      goto LABEL_10;
    }
  }

  OUTLINED_FUNCTION_307_0();
  OUTLINED_FUNCTION_67_4();
  if (v19)
  {
    sub_1C8778ED8(v2, &qword_1EC2B61D0, &qword_1C8C0C1E0);
LABEL_9:
    OUTLINED_FUNCTION_15();
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_1_13();
  OUTLINED_FUNCTION_308_0();
  OUTLINED_FUNCTION_13_14();
  v25 = sub_1C8776788(v23, v24, &protocol conformance descriptor for Siri_Nlu_External_UsoGraph);
  OUTLINED_FUNCTION_76_3(v25);
  OUTLINED_FUNCTION_4_17();
  sub_1C87A0410();
  if (!v1)
  {
    goto LABEL_9;
  }

LABEL_10:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

void static Siri_Nlu_External_UserWantedToPause.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v3 = OUTLINED_FUNCTION_177_1();
  type metadata accessor for Siri_Nlu_External_UsoGraph(v3);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_25_7(v5, v32);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61D0, &qword_1C8C0C1E0);
  OUTLINED_FUNCTION_80(v6);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_81_3(v8, v33);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5FD8, &unk_1C8BE6C90);
  OUTLINED_FUNCTION_52_3(v9);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v10);
  v12 = OUTLINED_FUNCTION_47_5(v11, v34);
  type metadata accessor for Siri_Nlu_External_UUID(v12);
  OUTLINED_FUNCTION_74_1();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_51_1();
  v14 = OUTLINED_FUNCTION_220();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(v14, v15);
  OUTLINED_FUNCTION_80(v16);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_112_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EE8, &unk_1C8BE6F90);
  OUTLINED_FUNCTION_181_0();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v18);
  v19 = OUTLINED_FUNCTION_17_4();
  v20 = type metadata accessor for Siri_Nlu_External_UserWantedToPause(v19);
  OUTLINED_FUNCTION_66_5(v20);
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_19(v2);
  if (v21)
  {
    OUTLINED_FUNCTION_19(v2 + v1);
    if (v21)
    {
      sub_1C8778ED8(v2, &qword_1EC2B5EC8, &unk_1C8BE68C0);
      goto LABEL_11;
    }

LABEL_9:
    v22 = &qword_1EC2B5EE8;
    v23 = &unk_1C8BE6F90;
    v24 = v2;
LABEL_20:
    sub_1C8778ED8(v24, v22, v23);
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_475();
  OUTLINED_FUNCTION_19(v2 + v1);
  if (v21)
  {
    OUTLINED_FUNCTION_3_12();
    sub_1C87A0410();
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_0_16();
  OUTLINED_FUNCTION_474();
  v25 = OUTLINED_FUNCTION_377();
  static Siri_Nlu_External_UUID.== infix(_:_:)(v25, v26);
  OUTLINED_FUNCTION_15_8();
  sub_1C87A0410();
  OUTLINED_FUNCTION_12();
  sub_1C87A0410();
  sub_1C8778ED8(v2, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  if ((v0 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_11:
  OUTLINED_FUNCTION_180_1();
  OUTLINED_FUNCTION_149_2();
  OUTLINED_FUNCTION_200_2();
  OUTLINED_FUNCTION_68_3();
  if (v21)
  {
    OUTLINED_FUNCTION_38_8();
    if (v21)
    {
      sub_1C8778ED8(v1, &qword_1EC2B61D0, &qword_1C8C0C1E0);
LABEL_24:
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_2_18();
      v31 = sub_1C8776788(v29, v30, MEMORY[0x1E69AAC10]);
      v28 = OUTLINED_FUNCTION_201_1(v31);
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  OUTLINED_FUNCTION_309_0();
  OUTLINED_FUNCTION_38_8();
  if (v27)
  {
    OUTLINED_FUNCTION_4_17();
    sub_1C87A0410();
LABEL_19:
    v22 = &qword_1EC2B5FD8;
    v23 = &unk_1C8BE6C90;
    v24 = v1;
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_1_13();
  OUTLINED_FUNCTION_306_0();
  OUTLINED_FUNCTION_168_0();
  static Siri_Nlu_External_UsoGraph.== infix(_:_:)();
  OUTLINED_FUNCTION_14_9();
  sub_1C87A0410();
  OUTLINED_FUNCTION_300();
  sub_1C87A0410();
  sub_1C8778ED8(v1, &qword_1EC2B61D0, &qword_1C8C0C1E0);
  if (&qword_1EC2B61D0)
  {
    goto LABEL_24;
  }

LABEL_21:
  v28 = 0;
LABEL_22:
  OUTLINED_FUNCTION_157(v28);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C88BADB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776788(&qword_1EC2B8F40, type metadata accessor for Siri_Nlu_External_UserWantedToPause, &protocol conformance descriptor for Siri_Nlu_External_UserWantedToPause);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C88BAE30(uint64_t a1)
{
  v2 = sub_1C8776788(&qword_1EC2B40B8, type metadata accessor for Siri_Nlu_External_UserWantedToPause, &protocol conformance descriptor for Siri_Nlu_External_UserWantedToPause);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C88BAEA0(uint64_t a1, uint64_t a2)
{
  sub_1C8776788(&qword_1EC2B40B8, type metadata accessor for Siri_Nlu_External_UserWantedToPause, &protocol conformance descriptor for Siri_Nlu_External_UserWantedToPause);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C88BAF2C()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B88F0);
  __swift_project_value_buffer(v0, qword_1EC2B88F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "rewrite_type";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "rewritten_utterance";
  *(v10 + 1) = 19;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_External_RewriteMessage.decodeMessage<A>(decoder:)()
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

    if (result == 2)
    {
      OUTLINED_FUNCTION_27_5();
      sub_1C88CDFC4();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_8();
      sub_1C88B32FC();
    }
  }

  return result;
}

uint64_t Siri_Nlu_External_RewriteMessage.traverse<A>(visitor:)()
{
  v2 = OUTLINED_FUNCTION_72_4();
  type metadata accessor for Siri_Nlu_External_RewriteMessage(v2);
  OUTLINED_FUNCTION_459();
  if (*(v1 + v3) == 4 || (sub_1C88D0968(), OUTLINED_FUNCTION_213_0(), result = sub_1C8BD4D4C(), !v0))
  {
    OUTLINED_FUNCTION_16_2();
    if (!v6)
    {
      return OUTLINED_FUNCTION_15();
    }

    v7 = OUTLINED_FUNCTION_512(v5);
    result = OUTLINED_FUNCTION_9_5(v7, v8, v9);
    if (!v0)
    {
      return OUTLINED_FUNCTION_15();
    }
  }

  return result;
}

uint64_t static Siri_Nlu_External_RewriteMessage.== infix(_:_:)()
{
  v0 = OUTLINED_FUNCTION_84();
  type metadata accessor for Siri_Nlu_External_RewriteMessage(v0);
  OUTLINED_FUNCTION_58_1();
  if (v2 == 4)
  {
    if (v1 != 4)
    {
      return 0;
    }
  }

  else if (v2 != v1)
  {
    return 0;
  }

  OUTLINED_FUNCTION_1();
  if (v5)
  {
    if (!v3)
    {
      return 0;
    }

    OUTLINED_FUNCTION_35(v4);
    v8 = v8 && v6 == v7;
    if (!v8 && (sub_1C8BD529C() & 1) == 0)
    {
      return 0;
    }

LABEL_12:
    sub_1C8BD49FC();
    OUTLINED_FUNCTION_2_18();
    v11 = sub_1C8776788(v9, v10, MEMORY[0x1E69AAC10]);
    return OUTLINED_FUNCTION_159(v11) & 1;
  }

  if (!v3)
  {
    goto LABEL_12;
  }

  return 0;
}

uint64_t sub_1C88BB3C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776788(&qword_1EC2B8F38, type metadata accessor for Siri_Nlu_External_RewriteMessage, &protocol conformance descriptor for Siri_Nlu_External_RewriteMessage);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C88BB440(uint64_t a1)
{
  v2 = sub_1C8776788(&qword_1EC2B40F8, type metadata accessor for Siri_Nlu_External_RewriteMessage, &protocol conformance descriptor for Siri_Nlu_External_RewriteMessage);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C88BB4B0(uint64_t a1, uint64_t a2)
{
  sub_1C8776788(&qword_1EC2B40F8, type metadata accessor for Siri_Nlu_External_RewriteMessage, &protocol conformance descriptor for Siri_Nlu_External_RewriteMessage);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C88BB530()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B8908);
  __swift_project_value_buffer(v0, qword_1EC2B8908);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE68B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "REWRITE_TYPE_NONE";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "REWRITE_TYPE_AER";
  *(v10 + 8) = 16;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "REWRITE_TYPE_CBR";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "REWRITE_TYPE_MRR";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C88BB79C()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B8920);
  __swift_project_value_buffer(v0, qword_1EC2B8920);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "contextual_reference";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "disambiguation_needed";
  *(v10 + 1) = 21;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_External_ReferenceContext.traverse<A>(visitor:)()
{
  v1 = OUTLINED_FUNCTION_72_4();
  type metadata accessor for Siri_Nlu_External_ReferenceContext(v1);
  OUTLINED_FUNCTION_459();
  OUTLINED_FUNCTION_451();
  if (v2 || (OUTLINED_FUNCTION_48_0(), result = sub_1C8BD4D3C(), !v0))
  {
    OUTLINED_FUNCTION_451();
    if (v2)
    {
      return OUTLINED_FUNCTION_15();
    }

    OUTLINED_FUNCTION_48_0();
    result = sub_1C8BD4D3C();
    if (!v0)
    {
      return OUTLINED_FUNCTION_15();
    }
  }

  return result;
}

uint64_t static Siri_Nlu_External_ReferenceContext.== infix(_:_:)()
{
  v0 = OUTLINED_FUNCTION_84();
  type metadata accessor for Siri_Nlu_External_ReferenceContext(v0);
  OUTLINED_FUNCTION_47();
  if (v3)
  {
    if (v1 != 2)
    {
      return 0;
    }
  }

  else if (v1 == 2 || ((v2 ^ v1) & 1) != 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_47();
  if (v3)
  {
    if (v4 == 2)
    {
      goto LABEL_14;
    }

    return 0;
  }

  if (v4 == 2 || ((v5 ^ v4) & 1) != 0)
  {
    return 0;
  }

LABEL_14:
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_2_18();
  v9 = sub_1C8776788(v7, v8, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_159(v9) & 1;
}

uint64_t sub_1C88BBC70(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776788(&qword_1EC2B8F30, type metadata accessor for Siri_Nlu_External_ReferenceContext, &protocol conformance descriptor for Siri_Nlu_External_ReferenceContext);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C88BBCF0(uint64_t a1)
{
  v2 = sub_1C8776788(&qword_1EC2B8B48, type metadata accessor for Siri_Nlu_External_ReferenceContext, &protocol conformance descriptor for Siri_Nlu_External_ReferenceContext);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C88BBD60(uint64_t a1, uint64_t a2)
{
  sub_1C8776788(&qword_1EC2B8B48, type metadata accessor for Siri_Nlu_External_ReferenceContext, &protocol conformance descriptor for Siri_Nlu_External_ReferenceContext);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C88BBDF8()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B4750);
  __swift_project_value_buffer(v0, qword_1EC2B4750);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE7160;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "asr_hypothesis_index";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "rewritten_utterance";
  *(v10 + 8) = 19;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "external_parser_id";
  *(v12 + 1) = 18;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "matching_spans";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "rewrite";
  *(v16 + 1) = 7;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "reference_context";
  *(v18 + 1) = 17;
  v18[16] = 2;
  v9();
  return sub_1C8BD510C();
}

void Siri_Nlu_External_DelegatedUserDialogAct.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    OUTLINED_FUNCTION_97();
    v1 = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        v3 = OUTLINED_FUNCTION_8();
        sub_1C88C4F70(v3, v4, v5, v6, v7, v8);
        break;
      case 2:
        v13 = OUTLINED_FUNCTION_8();
        sub_1C88BC220(v13, v14, v15, v16);
        break;
      case 3:
        OUTLINED_FUNCTION_27_5();
        sub_1C878C33C();
        break;
      case 4:
        OUTLINED_FUNCTION_363();
        OUTLINED_FUNCTION_8();
        sub_1C879DC10();
        break;
      case 5:
        v9 = OUTLINED_FUNCTION_8();
        sub_1C88BC2D4(v9, v10, v11, v12);
        break;
      case 6:
        v17 = OUTLINED_FUNCTION_8();
        sub_1C88BC388(v17, v18, v19, v20);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C88BC220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct(0);
  sub_1C8BD493C();
  sub_1C8776788(&qword_1EDACA318, MEMORY[0x1E69AA9A0], MEMORY[0x1E69AA998]);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C88BC2D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct(0);
  type metadata accessor for Siri_Nlu_External_RewriteMessage(0);
  sub_1C8776788(&qword_1EC2B40F8, type metadata accessor for Siri_Nlu_External_RewriteMessage, &protocol conformance descriptor for Siri_Nlu_External_RewriteMessage);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C88BC388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct(0);
  type metadata accessor for Siri_Nlu_External_ReferenceContext(0);
  sub_1C8776788(&qword_1EC2B8B48, type metadata accessor for Siri_Nlu_External_ReferenceContext, &protocol conformance descriptor for Siri_Nlu_External_ReferenceContext);
  return sub_1C8BD4C7C();
}

void Siri_Nlu_External_DelegatedUserDialogAct.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EC2B8A78, &unk_1C8BF5080);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_81();
  v39 = v5;
  v6 = OUTLINED_FUNCTION_86();
  type metadata accessor for Siri_Nlu_External_ReferenceContext(v6);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_25_7(v8, v36);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2B8A70, &qword_1C8BF5078);
  OUTLINED_FUNCTION_80(v9);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v10);
  v12 = OUTLINED_FUNCTION_47_5(v11, v37);
  v13 = type metadata accessor for Siri_Nlu_External_RewriteMessage(v12);
  v14 = OUTLINED_FUNCTION_52_3(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_9_0();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6110, &qword_1C8BF5070);
  OUTLINED_FUNCTION_80(v15);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_17_4();
  sub_1C8BD493C();
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_33();
  v41 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct(0);
  if ((*(v0 + v41[6] + 4) & 1) != 0 || (OUTLINED_FUNCTION_302_0(), OUTLINED_FUNCTION_382(), sub_1C8BD4DEC(), !v1))
  {
    sub_1C8778810();
    OUTLINED_FUNCTION_17_6(v2);
    if (v18)
    {
      sub_1C8778ED8(v2, &qword_1EC2B6110, &qword_1C8BF5070);
    }

    else
    {
      OUTLINED_FUNCTION_469();
      v19 = OUTLINED_FUNCTION_455();
      v20(v19);
      OUTLINED_FUNCTION_11_13();
      sub_1C8776788(v21, v22, MEMORY[0x1E69AA998]);
      OUTLINED_FUNCTION_302_0();
      sub_1C8BD4E2C();
      if (v1)
      {
        v23 = OUTLINED_FUNCTION_215();
        v24(v23);
        goto LABEL_23;
      }

      v25 = OUTLINED_FUNCTION_215();
      v26(v25);
    }

    v27 = v40;
    if (!*(v0 + v41[8] + 8) || (OUTLINED_FUNCTION_302_0(), sub_1C8BD4DDC(), !v1))
    {
      if (*(*v0 + 16))
      {
        type metadata accessor for Siri_Nlu_External_Span(0);
        OUTLINED_FUNCTION_362();
        sub_1C8776788(v28, v29, &protocol conformance descriptor for Siri_Nlu_External_Span);
        OUTLINED_FUNCTION_117();
        OUTLINED_FUNCTION_405();
        sub_1C8BD4E0C();
        if (v1)
        {
          goto LABEL_23;
        }

        v27 = v40;
      }

      sub_1C8778810();
      v30 = OUTLINED_FUNCTION_400();
      OUTLINED_FUNCTION_76(v30, v31, v38);
      if (v18)
      {
        sub_1C8778ED8(v27, &unk_1EC2B8A70, &qword_1C8BF5078);
      }

      else
      {
        OUTLINED_FUNCTION_16_8();
        sub_1C879A720();
        OUTLINED_FUNCTION_361();
        sub_1C8776788(v32, v33, &protocol conformance descriptor for Siri_Nlu_External_RewriteMessage);
        OUTLINED_FUNCTION_298_0();
        OUTLINED_FUNCTION_405();
        sub_1C8BD4E2C();
        OUTLINED_FUNCTION_100_3();
        sub_1C87A0410();
        if (v1)
        {
          goto LABEL_23;
        }
      }

      OUTLINED_FUNCTION_202_0(v41[10]);
      sub_1C8778810();
      v34 = OUTLINED_FUNCTION_213();
      OUTLINED_FUNCTION_188_0(v34, v35);
      if (v18)
      {
        sub_1C8778ED8(v39, &dword_1EC2B8A78, &unk_1C8BF5080);
LABEL_22:
        OUTLINED_FUNCTION_97();
        sub_1C8BD49DC();
        goto LABEL_23;
      }

      OUTLINED_FUNCTION_57_4();
      sub_1C879A720();
      sub_1C8776788(&qword_1EC2B8B48, type metadata accessor for Siri_Nlu_External_ReferenceContext, &protocol conformance descriptor for Siri_Nlu_External_ReferenceContext);
      OUTLINED_FUNCTION_405();
      sub_1C8BD4E2C();
      OUTLINED_FUNCTION_360();
      sub_1C87A0410();
      if (!v1)
      {
        goto LABEL_22;
      }
    }
  }

LABEL_23:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

void static Siri_Nlu_External_DelegatedUserDialogAct.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v4 = v3;
  v6 = v5;
  type metadata accessor for Siri_Nlu_External_ReferenceContext(0);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_33();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EC2B8A78, &unk_1C8BF5080);
  OUTLINED_FUNCTION_80(v8);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_81();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8B50, &qword_1C8BF50E8);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v10);
  v11 = OUTLINED_FUNCTION_17_4();
  v66 = type metadata accessor for Siri_Nlu_External_RewriteMessage(v11);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_25_7(v13, v62);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2B8A70, &qword_1C8BF5078);
  OUTLINED_FUNCTION_80(v14);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_81();
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8B58, &qword_1C8BF50F0);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_81();
  v67 = v17;
  OUTLINED_FUNCTION_86();
  v18 = sub_1C8BD493C();
  OUTLINED_FUNCTION_13_1();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_51_1();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6110, &qword_1C8BF5070);
  OUTLINED_FUNCTION_80(v22);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_180();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6118, &qword_1C8BE6DC0);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v25);
  v26 = OUTLINED_FUNCTION_170();
  v27 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct(v26);
  v28 = *(v27 + 24);
  v29 = *(v6 + v28 + 4);
  v30 = *(v4 + v28 + 4);
  if (v29)
  {
    if (!v30)
    {
      goto LABEL_15;
    }

LABEL_5:
    v32 = v6;
    v33 = *(v24 + 48);
    v63 = v32;
    v64 = v27;
    sub_1C8778810();
    sub_1C8778810();
    OUTLINED_FUNCTION_19(v0);
    if (v34)
    {
      OUTLINED_FUNCTION_19(v0 + v33);
      if (v34)
      {
        sub_1C8778ED8(v0, &qword_1EC2B6110, &qword_1C8BF5070);
LABEL_18:
        v46 = *(v64 + 32);
        v47 = *(v4 + v46 + 8);
        if (*(v63 + v46 + 8))
        {
          if (!v47)
          {
            goto LABEL_15;
          }

          OUTLINED_FUNCTION_35(v63 + v46);
          v50 = v34 && v48 == v49;
          if (!v50 && (sub_1C8BD529C() & 1) == 0)
          {
            goto LABEL_15;
          }
        }

        else if (v47)
        {
          goto LABEL_15;
        }

        sub_1C87DCE24();
        if ((v51 & 1) == 0)
        {
          goto LABEL_15;
        }

        v52 = *(v65 + 48);
        OUTLINED_FUNCTION_291_0();
        OUTLINED_FUNCTION_290_0();
        v53 = OUTLINED_FUNCTION_213();
        OUTLINED_FUNCTION_124_1(v53, v54);
        if (v34)
        {
          OUTLINED_FUNCTION_24(v67 + v52);
          if (v34)
          {
            sub_1C8778ED8(v67, &unk_1EC2B8A70, &qword_1C8BF5078);
LABEL_38:
            OUTLINED_FUNCTION_291_0();
            OUTLINED_FUNCTION_290_0();
            v56 = OUTLINED_FUNCTION_213();
            OUTLINED_FUNCTION_124_1(v56, v57);
            if (v34)
            {
              OUTLINED_FUNCTION_38_8();
              if (v34)
              {
                sub_1C8778ED8(v2, &dword_1EC2B8A78, &unk_1C8BF5080);
                goto LABEL_48;
              }
            }

            else
            {
              sub_1C8778810();
              OUTLINED_FUNCTION_38_8();
              if (!v58)
              {
                OUTLINED_FUNCTION_57_4();
                sub_1C879A720();
                OUTLINED_FUNCTION_184();
                v59 = static Siri_Nlu_External_ReferenceContext.== infix(_:_:)();
                sub_1C87A0410();
                OUTLINED_FUNCTION_254_0();
                sub_1C87A0410();
                sub_1C8778ED8(v2, &dword_1EC2B8A78, &unk_1C8BF5080);
                if ((v59 & 1) == 0)
                {
                  goto LABEL_15;
                }

LABEL_48:
                sub_1C8BD49FC();
                OUTLINED_FUNCTION_2_18();
                sub_1C8776788(v60, v61, MEMORY[0x1E69AAC10]);
                v40 = sub_1C8BD517C();
                goto LABEL_16;
              }

              OUTLINED_FUNCTION_360();
              sub_1C87A0410();
            }

            v37 = &qword_1EC2B8B50;
            v38 = &qword_1C8BF50E8;
            v39 = v2;
            goto LABEL_14;
          }
        }

        else
        {
          sub_1C8778810();
          OUTLINED_FUNCTION_24(v67 + v52);
          if (!v55)
          {
            OUTLINED_FUNCTION_16_8();
            sub_1C879A720();
            OUTLINED_FUNCTION_100();
            static Siri_Nlu_External_RewriteMessage.== infix(_:_:)();
            OUTLINED_FUNCTION_337();
            sub_1C87A0410();
            OUTLINED_FUNCTION_259();
            sub_1C87A0410();
            sub_1C8778ED8(v67, &unk_1EC2B8A70, &qword_1C8BF5078);
            if ((v66 & 1) == 0)
            {
              goto LABEL_15;
            }

            goto LABEL_38;
          }

          OUTLINED_FUNCTION_100_3();
          sub_1C87A0410();
        }

        v37 = &qword_1EC2B8B58;
        v38 = &qword_1C8BF50F0;
        v39 = v67;
LABEL_14:
        sub_1C8778ED8(v39, v37, v38);
        goto LABEL_15;
      }
    }

    else
    {
      OUTLINED_FUNCTION_12();
      sub_1C8778810();
      OUTLINED_FUNCTION_19(v0 + v33);
      if (!v34)
      {
        (*(v20 + 32))(v1, v0 + v33, v18);
        OUTLINED_FUNCTION_11_13();
        sub_1C8776788(v41, v42, MEMORY[0x1E69AA9A8]);
        v43 = sub_1C8BD517C();
        v44 = *(v20 + 8);
        v44(v1, v18);
        v45 = OUTLINED_FUNCTION_82_3();
        (v44)(v45);
        sub_1C8778ED8(v0, &qword_1EC2B6110, &qword_1C8BF5070);
        if ((v43 & 1) == 0)
        {
          goto LABEL_15;
        }

        goto LABEL_18;
      }

      v35 = OUTLINED_FUNCTION_82_3();
      v36(v35);
    }

    v37 = &qword_1EC2B6118;
    v38 = &qword_1C8BE6DC0;
    v39 = v0;
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_8_1();
  if ((v31 & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_15:
  v40 = 0;
LABEL_16:
  OUTLINED_FUNCTION_157(v40);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C88BD110(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776788(&qword_1EC2B8F28, type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct, &protocol conformance descriptor for Siri_Nlu_External_DelegatedUserDialogAct);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C88BD190(uint64_t a1)
{
  v2 = sub_1C8776788(&qword_1EC2B4740, type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct, &protocol conformance descriptor for Siri_Nlu_External_DelegatedUserDialogAct);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C88BD200(uint64_t a1, uint64_t a2)
{
  sub_1C8776788(&qword_1EC2B4740, type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct, &protocol conformance descriptor for Siri_Nlu_External_DelegatedUserDialogAct);

  return sub_1C8BD4CFC();
}

void static Siri_Nlu_External_UserStatedTask.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v1 = OUTLINED_FUNCTION_84();
  v2 = type metadata accessor for Siri_Nlu_External_UsoGraph(v1);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_180();
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_103();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5FD8, &unk_1C8BE6C90);
  OUTLINED_FUNCTION_128_1();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_74();
  type metadata accessor for Siri_Nlu_External_UserStatedTask(v9);
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_143_2();
  v10 = OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_76(v10, v11, v2);
  if (v18)
  {
    OUTLINED_FUNCTION_219();
    OUTLINED_FUNCTION_76(v12, v13, v14);
    if (v18)
    {
      sub_1C8778ED8(v0, &qword_1EC2B61D0, &qword_1C8C0C1E0);
LABEL_12:
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_2_18();
      v24 = sub_1C8776788(v22, v23, MEMORY[0x1E69AAC10]);
      v19 = OUTLINED_FUNCTION_159(v24);
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_253();
  sub_1C8778810();
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_76(v15, v16, v17);
  if (v18)
  {
    OUTLINED_FUNCTION_4_17();
    sub_1C87A0410();
LABEL_9:
    sub_1C8778ED8(v0, &qword_1EC2B5FD8, &unk_1C8BE6C90);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_1_13();
  sub_1C879A720();
  OUTLINED_FUNCTION_168_0();
  static Siri_Nlu_External_UsoGraph.== infix(_:_:)();
  v21 = v20;
  sub_1C87A0410();
  OUTLINED_FUNCTION_178_2();
  sub_1C87A0410();
  sub_1C8778ED8(v0, &qword_1EC2B61D0, &qword_1C8C0C1E0);
  if (v21)
  {
    goto LABEL_12;
  }

LABEL_10:
  v19 = 0;
LABEL_13:
  OUTLINED_FUNCTION_157(v19);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C88BD534(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776788(&qword_1EC2B8F20, type metadata accessor for Siri_Nlu_External_UserStatedTask, &protocol conformance descriptor for Siri_Nlu_External_UserStatedTask);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C88BD5B0(uint64_t a1)
{
  v2 = sub_1C8776788(&qword_1EDACBA78, type metadata accessor for Siri_Nlu_External_UserStatedTask, &protocol conformance descriptor for Siri_Nlu_External_UserStatedTask);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C88BD620(uint64_t a1, uint64_t a2)
{
  sub_1C8776788(&qword_1EDACBA78, type metadata accessor for Siri_Nlu_External_UserStatedTask, &protocol conformance descriptor for Siri_Nlu_External_UserStatedTask);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C88BD6AC()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B8938);
  __swift_project_value_buffer(v0, qword_1EC2B8938);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "task_id";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "reference";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C88BD8E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_External_UserWantedToUndo(0);
  type metadata accessor for Siri_Nlu_External_UUID(0);
  sub_1C8776788(&qword_1EDACCE50, type metadata accessor for Siri_Nlu_External_UUID, &protocol conformance descriptor for Siri_Nlu_External_UUID);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C88BD994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_External_UserWantedToUndo(0);
  type metadata accessor for Siri_Nlu_External_UsoGraph(0);
  sub_1C8776788(&qword_1EDACCCE0, type metadata accessor for Siri_Nlu_External_UsoGraph, &protocol conformance descriptor for Siri_Nlu_External_UsoGraph);
  return sub_1C8BD4C7C();
}

void Siri_Nlu_External_UserWantedToUndo.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_101_2(v3, v4, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61D0, &qword_1C8C0C1E0);
  OUTLINED_FUNCTION_80(v6);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_17_4();
  v9 = type metadata accessor for Siri_Nlu_External_UsoGraph(v8);
  v10 = OUTLINED_FUNCTION_52_3(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_339(v11);
  v12 = OUTLINED_FUNCTION_315();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
  OUTLINED_FUNCTION_80(v14);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v15);
  v16 = OUTLINED_FUNCTION_87_2();
  type metadata accessor for Siri_Nlu_External_UUID(v16);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v17);
  v18 = OUTLINED_FUNCTION_36_4();
  type metadata accessor for Siri_Nlu_External_UserWantedToUndo(v18);
  OUTLINED_FUNCTION_78_2();
  OUTLINED_FUNCTION_102_2();
  if (v19)
  {
    sub_1C8778ED8(v0, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    OUTLINED_FUNCTION_324_0();
  }

  else
  {
    OUTLINED_FUNCTION_0_16();
    OUTLINED_FUNCTION_251_0();
    sub_1C879A720();
    OUTLINED_FUNCTION_10_11();
    v22 = sub_1C8776788(v20, v21, &protocol conformance descriptor for Siri_Nlu_External_UUID);
    OUTLINED_FUNCTION_45_4(v22);
    OUTLINED_FUNCTION_3_12();
    sub_1C87A0410();
    if (v1)
    {
      goto LABEL_10;
    }
  }

  OUTLINED_FUNCTION_307_0();
  OUTLINED_FUNCTION_67_4();
  if (v19)
  {
    sub_1C8778ED8(v2, &qword_1EC2B61D0, &qword_1C8C0C1E0);
LABEL_9:
    OUTLINED_FUNCTION_15();
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_1_13();
  OUTLINED_FUNCTION_308_0();
  OUTLINED_FUNCTION_13_14();
  v25 = sub_1C8776788(v23, v24, &protocol conformance descriptor for Siri_Nlu_External_UsoGraph);
  OUTLINED_FUNCTION_76_3(v25);
  OUTLINED_FUNCTION_4_17();
  sub_1C87A0410();
  if (!v1)
  {
    goto LABEL_9;
  }

LABEL_10:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

void static Siri_Nlu_External_UserWantedToUndo.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v3 = OUTLINED_FUNCTION_177_1();
  type metadata accessor for Siri_Nlu_External_UsoGraph(v3);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_25_7(v5, v32);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61D0, &qword_1C8C0C1E0);
  OUTLINED_FUNCTION_80(v6);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_81_3(v8, v33);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5FD8, &unk_1C8BE6C90);
  OUTLINED_FUNCTION_52_3(v9);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v10);
  v12 = OUTLINED_FUNCTION_47_5(v11, v34);
  type metadata accessor for Siri_Nlu_External_UUID(v12);
  OUTLINED_FUNCTION_74_1();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_51_1();
  v14 = OUTLINED_FUNCTION_220();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(v14, v15);
  OUTLINED_FUNCTION_80(v16);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_112_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EE8, &unk_1C8BE6F90);
  OUTLINED_FUNCTION_181_0();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v18);
  v19 = OUTLINED_FUNCTION_17_4();
  v20 = type metadata accessor for Siri_Nlu_External_UserWantedToUndo(v19);
  OUTLINED_FUNCTION_66_5(v20);
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_19(v2);
  if (v21)
  {
    OUTLINED_FUNCTION_19(v2 + v1);
    if (v21)
    {
      sub_1C8778ED8(v2, &qword_1EC2B5EC8, &unk_1C8BE68C0);
      goto LABEL_11;
    }

LABEL_9:
    v22 = &qword_1EC2B5EE8;
    v23 = &unk_1C8BE6F90;
    v24 = v2;
LABEL_20:
    sub_1C8778ED8(v24, v22, v23);
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_475();
  OUTLINED_FUNCTION_19(v2 + v1);
  if (v21)
  {
    OUTLINED_FUNCTION_3_12();
    sub_1C87A0410();
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_0_16();
  OUTLINED_FUNCTION_474();
  v25 = OUTLINED_FUNCTION_377();
  static Siri_Nlu_External_UUID.== infix(_:_:)(v25, v26);
  OUTLINED_FUNCTION_15_8();
  sub_1C87A0410();
  OUTLINED_FUNCTION_12();
  sub_1C87A0410();
  sub_1C8778ED8(v2, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  if ((v0 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_11:
  OUTLINED_FUNCTION_180_1();
  OUTLINED_FUNCTION_149_2();
  OUTLINED_FUNCTION_200_2();
  OUTLINED_FUNCTION_68_3();
  if (v21)
  {
    OUTLINED_FUNCTION_38_8();
    if (v21)
    {
      sub_1C8778ED8(v1, &qword_1EC2B61D0, &qword_1C8C0C1E0);
LABEL_24:
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_2_18();
      v31 = sub_1C8776788(v29, v30, MEMORY[0x1E69AAC10]);
      v28 = OUTLINED_FUNCTION_201_1(v31);
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  OUTLINED_FUNCTION_309_0();
  OUTLINED_FUNCTION_38_8();
  if (v27)
  {
    OUTLINED_FUNCTION_4_17();
    sub_1C87A0410();
LABEL_19:
    v22 = &qword_1EC2B5FD8;
    v23 = &unk_1C8BE6C90;
    v24 = v1;
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_1_13();
  OUTLINED_FUNCTION_306_0();
  OUTLINED_FUNCTION_168_0();
  static Siri_Nlu_External_UsoGraph.== infix(_:_:)();
  OUTLINED_FUNCTION_14_9();
  sub_1C87A0410();
  OUTLINED_FUNCTION_300();
  sub_1C87A0410();
  sub_1C8778ED8(v1, &qword_1EC2B61D0, &qword_1C8C0C1E0);
  if (&qword_1EC2B61D0)
  {
    goto LABEL_24;
  }

LABEL_21:
  v28 = 0;
LABEL_22:
  OUTLINED_FUNCTION_157(v28);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C88BE054(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776788(&qword_1EC2B8F18, type metadata accessor for Siri_Nlu_External_UserWantedToUndo, &protocol conformance descriptor for Siri_Nlu_External_UserWantedToUndo);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C88BE0D4(uint64_t a1)
{
  v2 = sub_1C8776788(&qword_1EC2B8D60, type metadata accessor for Siri_Nlu_External_UserWantedToUndo, &protocol conformance descriptor for Siri_Nlu_External_UserWantedToUndo);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C88BE144(uint64_t a1, uint64_t a2)
{
  sub_1C8776788(&qword_1EC2B8D60, type metadata accessor for Siri_Nlu_External_UserWantedToUndo, &protocol conformance descriptor for Siri_Nlu_External_UserWantedToUndo);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C88BE1DC()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B8950);
  __swift_project_value_buffer(v0, qword_1EC2B8950);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "system_dialog_act";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "child_acts";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

void Siri_Nlu_External_SystemDialogActGroup.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    OUTLINED_FUNCTION_97();
    v1 = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 2)
    {
      OUTLINED_FUNCTION_8();
      sub_1C879DC10();
    }

    else if (v1 == 1)
    {
      v3 = OUTLINED_FUNCTION_8();
      sub_1C88BE47C(v3, v4, v5, v6);
    }
  }
}

uint64_t sub_1C88BE47C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_External_SystemDialogActGroup(0);
  type metadata accessor for Siri_Nlu_External_SystemDialogAct(0);
  sub_1C8776788(qword_1EDACB410, type metadata accessor for Siri_Nlu_External_SystemDialogAct, &protocol conformance descriptor for Siri_Nlu_External_SystemDialogAct);
  return sub_1C8BD4C7C();
}

void Siri_Nlu_External_SystemDialogActGroup.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_444(v13, v14, v15);
  v16 = OUTLINED_FUNCTION_253();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(v16, v17);
  OUTLINED_FUNCTION_80(v18);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v19);
  v20 = OUTLINED_FUNCTION_210();
  type metadata accessor for Siri_Nlu_External_SystemDialogAct(v20);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v21);
  v22 = OUTLINED_FUNCTION_65_6();
  type metadata accessor for Siri_Nlu_External_SystemDialogActGroup(v22);
  OUTLINED_FUNCTION_388();
  OUTLINED_FUNCTION_17_6(v12);
  if (v23)
  {
    sub_1C8778ED8(v12, &qword_1EC2B5FE0, &unk_1C8C102D0);
  }

  else
  {
    OUTLINED_FUNCTION_56_3();
    OUTLINED_FUNCTION_455();
    sub_1C879A720();
    OUTLINED_FUNCTION_351();
    sub_1C8776788(v24, v25, &protocol conformance descriptor for Siri_Nlu_External_SystemDialogAct);
    OUTLINED_FUNCTION_225_1();
    OUTLINED_FUNCTION_248_2();
    sub_1C8BD4E2C();
    OUTLINED_FUNCTION_358();
    sub_1C87A0410();
    if (v11)
    {
      goto LABEL_8;
    }
  }

  if (!*(*v10 + 16) || (OUTLINED_FUNCTION_353(), sub_1C8776788(v26, v27, &protocol conformance descriptor for Siri_Nlu_External_SystemDialogActGroup), OUTLINED_FUNCTION_117(), OUTLINED_FUNCTION_248_2(), sub_1C8BD4E0C(), !v11))
  {
    OUTLINED_FUNCTION_299_0();
    sub_1C8BD49DC();
  }

LABEL_8:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

void static Siri_Nlu_External_SystemDialogActGroup.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  type metadata accessor for Siri_Nlu_External_SystemDialogAct(0);
  OUTLINED_FUNCTION_74_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_41_6();
  v6 = OUTLINED_FUNCTION_233();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_80(v8);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_212();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5FE8, &qword_1C8BE6CA0);
  OUTLINED_FUNCTION_223_0();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v10);
  v11 = OUTLINED_FUNCTION_74();
  type metadata accessor for Siri_Nlu_External_SystemDialogActGroup(v11);
  v12 = *(v4 + 56);
  OUTLINED_FUNCTION_449();
  OUTLINED_FUNCTION_449();
  OUTLINED_FUNCTION_19(v1);
  if (v13)
  {
    OUTLINED_FUNCTION_19(v1 + v12);
    if (v13)
    {
      sub_1C8778ED8(v1, &qword_1EC2B5FE0, &unk_1C8C102D0);
      goto LABEL_14;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_315();
  sub_1C8778810();
  OUTLINED_FUNCTION_19(v1 + v12);
  if (v13)
  {
    OUTLINED_FUNCTION_358();
    sub_1C87A0410();
LABEL_9:
    v14 = &qword_1EC2B5FE8;
    v15 = &qword_1C8BE6CA0;
LABEL_10:
    sub_1C8778ED8(v1, v14, v15);
LABEL_16:
    v24 = 0;
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_56_3();
  sub_1C879A720();
  if (*(v3 + *(v0 + 20)) != *(v2 + *(v0 + 20)))
  {

    sub_1C88BF490();
    v17 = v16;

    if ((v17 & 1) == 0)
    {
      sub_1C87A0410();
      sub_1C87A0410();
      v14 = &qword_1EC2B5FE0;
      v15 = &unk_1C8C102D0;
      goto LABEL_10;
    }
  }

  sub_1C8BD49FC();
  OUTLINED_FUNCTION_2_18();
  sub_1C8776788(v18, v19, MEMORY[0x1E69AAC10]);
  OUTLINED_FUNCTION_298_0();
  OUTLINED_FUNCTION_498();
  v20 = sub_1C8BD517C();
  sub_1C87A0410();
  OUTLINED_FUNCTION_104_0();
  sub_1C87A0410();
  sub_1C8778ED8(v1, &qword_1EC2B5FE0, &unk_1C8C102D0);
  if ((v20 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_14:
  sub_1C87DF17C();
  if ((v21 & 1) == 0)
  {
    goto LABEL_16;
  }

  sub_1C8BD49FC();
  OUTLINED_FUNCTION_2_18();
  sub_1C8776788(v22, v23, MEMORY[0x1E69AAC10]);
  v24 = sub_1C8BD517C();
LABEL_17:
  OUTLINED_FUNCTION_157(v24);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C88BEAB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776788(&qword_1EC2B8F10, type metadata accessor for Siri_Nlu_External_SystemDialogActGroup, &protocol conformance descriptor for Siri_Nlu_External_SystemDialogActGroup);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C88BEB34(uint64_t a1)
{
  v2 = sub_1C8776788(&qword_1EC2B8AC0, type metadata accessor for Siri_Nlu_External_SystemDialogActGroup, &protocol conformance descriptor for Siri_Nlu_External_SystemDialogActGroup);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C88BEBA4(uint64_t a1, uint64_t a2)
{
  sub_1C8776788(&qword_1EC2B8AC0, type metadata accessor for Siri_Nlu_External_SystemDialogActGroup, &protocol conformance descriptor for Siri_Nlu_External_SystemDialogActGroup);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C88BEC3C()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B48A0);
  __swift_project_value_buffer(v0, qword_1EC2B48A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1C8BE8D40;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = 1;
  *v5 = "id";
  *(v5 + 8) = 2;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1C8BD50FC();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "prompted";
  *(v9 + 8) = 8;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "offered";
  *(v11 + 1) = 7;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "gave_options";
  *(v13 + 1) = 12;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "informed";
  *(v15 + 1) = 8;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "reported_success";
  *(v17 + 1) = 16;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "reported_failure";
  *(v19 + 1) = 16;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 101;
  *v21 = "rendered_text";
  *(v21 + 1) = 13;
  v21[16] = 2;
  v8();
  return sub_1C8BD510C();
}

uint64_t sub_1C88BEFB4()
{
  v1 = OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_SystemDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__id;
  v2 = type metadata accessor for Siri_Nlu_External_UUID(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_SystemDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__prompted;
  v4 = type metadata accessor for Siri_Nlu_External_SystemPrompted(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_SystemDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__offered;
  v6 = type metadata accessor for Siri_Nlu_External_SystemOffered(0);
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_SystemDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__gaveOptions;
  v8 = type metadata accessor for Siri_Nlu_External_SystemGaveOptions(0);
  __swift_storeEnumTagSinglePayload(v0 + v7, 1, 1, v8);
  v9 = OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_SystemDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__informed;
  v10 = type metadata accessor for Siri_Nlu_External_SystemInformed(0);
  __swift_storeEnumTagSinglePayload(v0 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_SystemDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__reportedSuccess;
  v12 = type metadata accessor for Siri_Nlu_External_SystemReportedSuccess(0);
  __swift_storeEnumTagSinglePayload(v0 + v11, 1, 1, v12);
  v13 = OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_SystemDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__reportedFailure;
  v14 = type metadata accessor for Siri_Nlu_External_SystemReportedFailure(0);
  __swift_storeEnumTagSinglePayload(v0 + v13, 1, 1, v14);
  v15 = OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_SystemDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__renderedText;
  v16 = sub_1C8BD493C();
  __swift_storeEnumTagSinglePayload(v0 + v15, 1, 1, v16);
  return v0;
}

uint64_t sub_1C88BF0F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_SystemInformed(0);
  sub_1C8776788(&qword_1EC2B8DA0, type metadata accessor for Siri_Nlu_External_SystemInformed, &protocol conformance descriptor for Siri_Nlu_External_SystemInformed);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C88BF1D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_SystemReportedSuccess(0);
  sub_1C8776788(&qword_1EC2B8DB8, type metadata accessor for Siri_Nlu_External_SystemReportedSuccess, &protocol conformance descriptor for Siri_Nlu_External_SystemReportedSuccess);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C88BF2AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_SystemReportedFailure(0);
  sub_1C8776788(&qword_1EC2B8DD0, type metadata accessor for Siri_Nlu_External_SystemReportedFailure, &protocol conformance descriptor for Siri_Nlu_External_SystemReportedFailure);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C88BF388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1C8BD493C();
  sub_1C8776788(&qword_1EDACA318, MEMORY[0x1E69AA9A0], MEMORY[0x1E69AA998]);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

void sub_1C88BF490()
{
  OUTLINED_FUNCTION_124();
  v250 = v2;
  OUTLINED_FUNCTION_333();
  v211 = sub_1C8BD493C();
  OUTLINED_FUNCTION_13_1();
  v207 = v3;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_9_0();
  v205 = v5;
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6118, &qword_1C8BE6DC0);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_81();
  v210 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6110, &qword_1C8BF5070);
  v9 = OUTLINED_FUNCTION_80(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_10_0();
  v206 = v10;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_96();
  v224 = v12;
  v13 = OUTLINED_FUNCTION_86();
  v215 = type metadata accessor for Siri_Nlu_External_SystemReportedFailure(v13);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_9_0();
  v208 = v15;
  v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8FD0, &qword_1C8BF9EF0);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_81();
  v216 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8A98, &unk_1C8C10550);
  v19 = OUTLINED_FUNCTION_80(v18);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_10_0();
  v213 = v20;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_96();
  v223 = v22;
  v23 = OUTLINED_FUNCTION_86();
  v220 = type metadata accessor for Siri_Nlu_External_SystemReportedSuccess(v23);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_9_0();
  v212 = v25;
  v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8FD8, &qword_1C8BF9EF8);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_81();
  v221 = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8A90, &unk_1C8BF50A0);
  v29 = OUTLINED_FUNCTION_80(v28);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_10_0();
  v217 = v30;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_96();
  v229 = v32;
  v33 = OUTLINED_FUNCTION_86();
  v227 = type metadata accessor for Siri_Nlu_External_SystemInformed(v33);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_9_0();
  v218 = v35;
  v226 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8FE0, &qword_1C8BF9F00);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_81();
  v228 = v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8A88, &unk_1C8C10560);
  v39 = OUTLINED_FUNCTION_80(v38);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_10_0();
  v222 = v40;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_96();
  v230 = v42;
  v43 = OUTLINED_FUNCTION_86();
  v234 = type metadata accessor for Siri_Nlu_External_SystemGaveOptions(v43);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_9_0();
  v225 = v45;
  v233 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8FE8, &qword_1C8BF9F08);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_81();
  v235 = v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EC2B8A80, &unk_1C8BF5090);
  v49 = OUTLINED_FUNCTION_80(v48);
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_10_0();
  v231 = v50;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_96();
  v237 = v52;
  v53 = OUTLINED_FUNCTION_86();
  v240 = type metadata accessor for Siri_Nlu_External_SystemOffered(v53);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_9_0();
  v232 = v55;
  v239 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8FF0, &qword_1C8BF9F10);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_81();
  v241 = v57;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B86F0, &unk_1C8BF5030);
  v59 = OUTLINED_FUNCTION_80(v58);
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_10_0();
  v236 = v60;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_96();
  v248 = v62;
  v63 = OUTLINED_FUNCTION_86();
  v246 = type metadata accessor for Siri_Nlu_External_SystemPrompted(v63);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_9_0();
  v238 = v65;
  v244 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8FF8, &qword_1C8BF9F18);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_81();
  v247 = v67;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EC2B86E8, &unk_1C8BF4630);
  v69 = OUTLINED_FUNCTION_80(v68);
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_10_0();
  v242 = v70;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_96();
  v245 = v72;
  v73 = OUTLINED_FUNCTION_86();
  type metadata accessor for Siri_Nlu_External_UUID(v73);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v74);
  OUTLINED_FUNCTION_9_0();
  v243 = v75;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EE8, &unk_1C8BE6F90) - 8;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v77);
  OUTLINED_FUNCTION_252();
  v78 = OUTLINED_FUNCTION_119_0();
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(v78, v79);
  v81 = OUTLINED_FUNCTION_80(v80);
  MEMORY[0x1EEE9AC00](v81);
  OUTLINED_FUNCTION_10_0();
  v249 = v82;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v83);
  v85 = &v204 - v84;
  OUTLINED_FUNCTION_277(v0 + OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_SystemDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__id, &v266);
  sub_1C8778810();
  OUTLINED_FUNCTION_277(v250 + OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_SystemDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__id, &v265);
  v86 = *(v76 + 56);
  sub_1C8778810();
  sub_1C8778810();
  OUTLINED_FUNCTION_193_2(v1);
  if (v88)
  {
    v87 = v0;

    sub_1C8778ED8(v85, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    OUTLINED_FUNCTION_193_2(v1 + v86);
    if (v88)
    {
      sub_1C8778ED8(v1, &qword_1EC2B5EC8, &unk_1C8BE68C0);
      goto LABEL_11;
    }

LABEL_9:
    v89 = &qword_1EC2B5EE8;
    v90 = &unk_1C8BE6F90;
    v91 = v1;
LABEL_48:
    sub_1C8778ED8(v91, v89, v90);
    goto LABEL_49;
  }

  v87 = v0;
  sub_1C8778810();
  OUTLINED_FUNCTION_193_2(v1 + v86);
  if (v88)
  {

    sub_1C8778ED8(v85, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    OUTLINED_FUNCTION_3_12();
    sub_1C87A0410();
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_0_16();
  sub_1C879A720();

  v92 = OUTLINED_FUNCTION_92_0();
  v94 = static Siri_Nlu_External_UUID.== infix(_:_:)(v92, v93);
  sub_1C87A0410();
  v95 = OUTLINED_FUNCTION_299_0();
  sub_1C8778ED8(v95, v96, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_307();
  sub_1C87A0410();
  sub_1C8778ED8(v1, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  if ((v94 & 1) == 0)
  {
    goto LABEL_49;
  }

LABEL_11:
  OUTLINED_FUNCTION_277(v87 + OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_SystemDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__prompted, &v264);
  v97 = v245;
  OUTLINED_FUNCTION_78_1();
  sub_1C8778810();
  v98 = OUTLINED_FUNCTION_517();
  OUTLINED_FUNCTION_277(v98, &v263);
  OUTLINED_FUNCTION_424();
  v99 = v247;
  OUTLINED_FUNCTION_78_1();
  sub_1C8778810();
  v100 = v99;
  sub_1C8778810();
  v101 = OUTLINED_FUNCTION_400();
  OUTLINED_FUNCTION_82_1(v101, v102);
  if (v88)
  {
    sub_1C8778ED8(v97, &dword_1EC2B86E8, &unk_1C8BF4630);
    OUTLINED_FUNCTION_65(&dword_1EDACB000 + v99);
    v103 = v248;
    if (v88)
    {
      sub_1C8778ED8(v99, &dword_1EC2B86E8, &unk_1C8BF4630);
      goto LABEL_22;
    }

LABEL_19:
    v89 = &qword_1EC2B8FF8;
    v90 = &qword_1C8BF9F18;
LABEL_20:
    v91 = v100;
    goto LABEL_48;
  }

  sub_1C8778810();
  OUTLINED_FUNCTION_65(&dword_1EDACB000 + v99);
  v103 = v248;
  if (v104)
  {
    sub_1C8778ED8(v97, &dword_1EC2B86E8, &unk_1C8BF4630);
    OUTLINED_FUNCTION_169();
    sub_1C87A0410();
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_103_3();
  sub_1C879A720();
  OUTLINED_FUNCTION_97();
  static Siri_Nlu_External_SystemPrompted.== infix(_:_:)();
  v106 = v105;
  sub_1C87A0410();
  sub_1C8778ED8(v97, &dword_1EC2B86E8, &unk_1C8BF4630);
  OUTLINED_FUNCTION_168_0();
  sub_1C87A0410();
  v107 = OUTLINED_FUNCTION_307();
  sub_1C8778ED8(v107, v108, &unk_1C8BF4630);
  if ((v106 & 1) == 0)
  {
    goto LABEL_49;
  }

LABEL_22:
  OUTLINED_FUNCTION_277(v87 + OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_SystemDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__offered, &v262);
  OUTLINED_FUNCTION_78_1();
  sub_1C8778810();
  OUTLINED_FUNCTION_277(v250 + OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_SystemDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__offered, &v261);
  OUTLINED_FUNCTION_450_0();
  v109 = v241;
  OUTLINED_FUNCTION_78_1();
  sub_1C8778810();
  OUTLINED_FUNCTION_78_1();
  sub_1C8778810();
  v110 = OUTLINED_FUNCTION_400();
  OUTLINED_FUNCTION_82_1(v110, v111);
  if (v88)
  {
    sub_1C8778ED8(v103, &qword_1EC2B86F0, &unk_1C8BF5030);
    OUTLINED_FUNCTION_65(&dword_1EDACB000 + v109);
    if (v88)
    {
      sub_1C8778ED8(v109, &qword_1EC2B86F0, &unk_1C8BF5030);
      goto LABEL_33;
    }

LABEL_30:
    v89 = &qword_1EC2B8FF0;
    v90 = &qword_1C8BF9F10;
LABEL_31:
    v91 = v109;
    goto LABEL_48;
  }

  sub_1C8778810();
  OUTLINED_FUNCTION_65(&dword_1EDACB000 + v109);
  if (v112)
  {
    sub_1C8778ED8(v103, &qword_1EC2B86F0, &unk_1C8BF5030);
    OUTLINED_FUNCTION_169();
    sub_1C87A0410();
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_94_3();
  sub_1C879A720();
  OUTLINED_FUNCTION_97();
  static Siri_Nlu_External_SystemOffered.== infix(_:_:)();
  v114 = v113;
  sub_1C87A0410();
  sub_1C8778ED8(v103, &qword_1EC2B86F0, &unk_1C8BF5030);
  OUTLINED_FUNCTION_168_0();
  sub_1C87A0410();
  sub_1C8778ED8(v109, &qword_1EC2B86F0, &unk_1C8BF5030);
  if ((v114 & 1) == 0)
  {
    goto LABEL_49;
  }

LABEL_33:
  OUTLINED_FUNCTION_277(v87 + OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_SystemDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__gaveOptions, &v260);
  v115 = v237;
  OUTLINED_FUNCTION_78_1();
  sub_1C8778810();
  v116 = OUTLINED_FUNCTION_517();
  OUTLINED_FUNCTION_277(v116, &v259);
  v117 = *(v233 + 48);
  v118 = v235;
  OUTLINED_FUNCTION_78_1();
  sub_1C8778810();
  v119 = v118;
  OUTLINED_FUNCTION_78_1();
  sub_1C8778810();
  v120 = OUTLINED_FUNCTION_193_0();
  OUTLINED_FUNCTION_41_2(v120, v121);
  if (v88)
  {
    sub_1C8778ED8(v115, &dword_1EC2B8A80, &unk_1C8BF5090);
    OUTLINED_FUNCTION_19(v118 + v117);
    if (v88)
    {
      sub_1C8778ED8(v118, &dword_1EC2B8A80, &unk_1C8BF5090);
      goto LABEL_38;
    }

LABEL_46:
    v89 = &qword_1EC2B8FE8;
    v90 = &qword_1C8BF9F08;
LABEL_47:
    v91 = v119;
    goto LABEL_48;
  }

  sub_1C8778810();
  OUTLINED_FUNCTION_19(v118 + v117);
  if (v127)
  {
    sub_1C8778ED8(v237, &dword_1EC2B8A80, &unk_1C8BF5090);
    sub_1C87A0410();
    goto LABEL_46;
  }

  OUTLINED_FUNCTION_93_3();
  sub_1C879A720();
  sub_1C87DD670();
  if ((v128 & 1) == 0)
  {
    sub_1C87A0410();
    v138 = &unk_1C8BF5090;
    OUTLINED_FUNCTION_393();
    sub_1C8778ED8(v139, v140, v141);
LABEL_59:
    sub_1C87A0410();
    v91 = OUTLINED_FUNCTION_168_0();
    v90 = v138;
    goto LABEL_48;
  }

  sub_1C8BD49FC();
  OUTLINED_FUNCTION_2_18();
  sub_1C8776788(v129, v130, MEMORY[0x1E69AAC10]);
  v131 = sub_1C8BD517C();
  sub_1C87A0410();
  OUTLINED_FUNCTION_321_0();
  sub_1C8778ED8(v132, v133, v134);
  sub_1C87A0410();
  v135 = OUTLINED_FUNCTION_97();
  sub_1C8778ED8(v135, v136, &unk_1C8BF5090);
  if ((v131 & 1) == 0)
  {
    goto LABEL_49;
  }

LABEL_38:
  OUTLINED_FUNCTION_277(v87 + OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_SystemDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__informed, &v258);
  v122 = v230;
  OUTLINED_FUNCTION_479();
  OUTLINED_FUNCTION_277(v250 + OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_SystemDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__informed, &v257);
  OUTLINED_FUNCTION_424();
  v100 = v228;
  OUTLINED_FUNCTION_479();
  OUTLINED_FUNCTION_479();
  v123 = OUTLINED_FUNCTION_155_0();
  OUTLINED_FUNCTION_82_1(v123, v124);
  if (v88)
  {
    sub_1C8778ED8(v122, &qword_1EC2B8A88, &unk_1C8C10560);
    OUTLINED_FUNCTION_65(&dword_1EDACB000 + v100);
    v125 = v224;
    if (v88)
    {
      sub_1C8778ED8(v100, &qword_1EC2B8A88, &unk_1C8C10560);
      v126 = v223;
      goto LABEL_61;
    }

    goto LABEL_57;
  }

  sub_1C8778810();
  OUTLINED_FUNCTION_65(&dword_1EDACB000 + v100);
  v126 = v223;
  if (v137)
  {
    sub_1C8778ED8(v230, &qword_1EC2B8A88, &unk_1C8C10560);
    OUTLINED_FUNCTION_169();
    sub_1C87A0410();
LABEL_57:
    v89 = &qword_1EC2B8FE0;
    v90 = &qword_1C8BF9F00;
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_92_2();
  sub_1C879A720();
  OUTLINED_FUNCTION_97();
  static Siri_Nlu_External_SystemInformed.== infix(_:_:)();
  v143 = v142;
  sub_1C87A0410();
  OUTLINED_FUNCTION_321_0();
  sub_1C8778ED8(v144, v145, v146);
  OUTLINED_FUNCTION_168_0();
  sub_1C87A0410();
  OUTLINED_FUNCTION_321_0();
  sub_1C8778ED8(v147, v148, v149);
  v125 = v224;
  if ((v143 & 1) == 0)
  {
    goto LABEL_49;
  }

LABEL_61:
  OUTLINED_FUNCTION_277(v87 + OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_SystemDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__reportedSuccess, &v256);
  OUTLINED_FUNCTION_78_1();
  sub_1C8778810();
  v150 = OUTLINED_FUNCTION_517();
  OUTLINED_FUNCTION_277(v150, &v255);
  v151 = *(v219 + 48);
  v109 = v221;
  OUTLINED_FUNCTION_78_1();
  sub_1C8778810();
  OUTLINED_FUNCTION_78_1();
  sub_1C8778810();
  v152 = OUTLINED_FUNCTION_400();
  OUTLINED_FUNCTION_82_1(v152, v153);
  if (v88)
  {
    sub_1C8778ED8(v229, &qword_1EC2B8A90, &unk_1C8BF50A0);
    OUTLINED_FUNCTION_65(v109 + v151);
    if (v88)
    {
      sub_1C8778ED8(v109, &qword_1EC2B8A90, &unk_1C8BF50A0);
      goto LABEL_71;
    }

    goto LABEL_69;
  }

  sub_1C8778810();
  OUTLINED_FUNCTION_65(v109 + v151);
  if (v154)
  {
    sub_1C8778ED8(v229, &qword_1EC2B8A90, &unk_1C8BF50A0);
    OUTLINED_FUNCTION_169();
    sub_1C87A0410();
LABEL_69:
    v89 = &qword_1EC2B8FD8;
    v90 = &qword_1C8BF9EF8;
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_91_1();
  sub_1C879A720();
  OUTLINED_FUNCTION_97();
  static Siri_Nlu_External_SystemReportedSuccess.== infix(_:_:)();
  v156 = v155;
  sub_1C87A0410();
  OUTLINED_FUNCTION_321_0();
  sub_1C8778ED8(v157, v158, v159);
  OUTLINED_FUNCTION_168_0();
  sub_1C87A0410();
  OUTLINED_FUNCTION_321_0();
  sub_1C8778ED8(v160, v161, v162);
  if ((v156 & 1) == 0)
  {
    goto LABEL_49;
  }

LABEL_71:
  OUTLINED_FUNCTION_277(v87 + OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_SystemDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__reportedFailure, &v254);
  OUTLINED_FUNCTION_78_1();
  sub_1C8778810();
  v163 = OUTLINED_FUNCTION_517();
  OUTLINED_FUNCTION_277(v163, &v253);
  OUTLINED_FUNCTION_424();
  v164 = v216;
  OUTLINED_FUNCTION_78_1();
  sub_1C8778810();
  v119 = v164;
  OUTLINED_FUNCTION_78_1();
  sub_1C8778810();
  v165 = OUTLINED_FUNCTION_400();
  v166 = v215;
  OUTLINED_FUNCTION_82_1(v165, v167);
  if (v88)
  {
    sub_1C8778ED8(v126, &qword_1EC2B8A98, &unk_1C8C10550);
    OUTLINED_FUNCTION_65(&dword_1EDACB000 + v164);
    if (v88)
    {
      sub_1C8778ED8(v164, &qword_1EC2B8A98, &unk_1C8C10550);
      goto LABEL_83;
    }

    goto LABEL_79;
  }

  v168 = v213;
  sub_1C8778810();
  OUTLINED_FUNCTION_65(&dword_1EDACB000 + v164);
  if (v169)
  {
    sub_1C8778ED8(v126, &qword_1EC2B8A98, &unk_1C8C10550);
    sub_1C87A0410();
LABEL_79:
    v89 = &qword_1EC2B8FD0;
    v90 = &qword_1C8BF9EF0;
    goto LABEL_47;
  }

  OUTLINED_FUNCTION_90_2();
  v170 = v208;
  sub_1C879A720();
  if (*(v168 + *(v166 + 20)) != *(v170 + *(v166 + 20)))
  {

    v171 = OUTLINED_FUNCTION_92_0();
    v173 = sub_1C88C4038(v171, v172);

    if (!v173)
    {
      sub_1C87A0410();
      v138 = &unk_1C8C10550;
      OUTLINED_FUNCTION_393();
      sub_1C8778ED8(v201, v202, v203);
      goto LABEL_59;
    }
  }

  sub_1C8BD49FC();
  OUTLINED_FUNCTION_2_18();
  sub_1C8776788(v174, v175, MEMORY[0x1E69AAC10]);
  OUTLINED_FUNCTION_234();
  v176 = sub_1C8BD517C();
  sub_1C87A0410();
  v177 = OUTLINED_FUNCTION_254_0();
  sub_1C8778ED8(v177, v178, &unk_1C8C10550);
  sub_1C87A0410();
  v179 = OUTLINED_FUNCTION_119_0();
  sub_1C8778ED8(v179, v180, &unk_1C8C10550);
  if (v176)
  {
LABEL_83:
    OUTLINED_FUNCTION_277(v87 + OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_SystemDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__renderedText, &v252);
    OUTLINED_FUNCTION_78_1();
    sub_1C8778810();
    OUTLINED_FUNCTION_277(v250 + OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_SystemDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__renderedText, &v251);
    v181 = v210;
    OUTLINED_FUNCTION_450_0();
    OUTLINED_FUNCTION_78_1();
    sub_1C8778810();
    OUTLINED_FUNCTION_78_1();
    v182 = v181;
    sub_1C8778810();
    v183 = OUTLINED_FUNCTION_400();
    v184 = v211;
    OUTLINED_FUNCTION_76(v183, v185, v211);
    if (v88)
    {

      sub_1C8778ED8(v125, &qword_1EC2B6110, &qword_1C8BF5070);
      OUTLINED_FUNCTION_17_6(&dword_1EDACB000 + v182);
      if (v88)
      {
        sub_1C8778ED8(v182, &qword_1EC2B6110, &qword_1C8BF5070);
        goto LABEL_50;
      }
    }

    else
    {
      sub_1C8778810();
      OUTLINED_FUNCTION_17_6(&dword_1EDACB000 + v182);
      if (!v186)
      {
        v189 = v207;
        (*(v207 + 32))(v205, &dword_1EDACB000 + v182, v184);
        OUTLINED_FUNCTION_11_13();
        sub_1C8776788(v190, v191, MEMORY[0x1E69AA9A8]);
        OUTLINED_FUNCTION_118_0();
        sub_1C8BD517C();

        v192 = *(v189 + 8);
        v193 = OUTLINED_FUNCTION_315();
        v192(v193);
        OUTLINED_FUNCTION_393();
        sub_1C8778ED8(v194, v195, v196);
        v197 = OUTLINED_FUNCTION_127_0();
        v192(v197);
        OUTLINED_FUNCTION_393();
        sub_1C8778ED8(v198, v199, v200);
        goto LABEL_50;
      }

      sub_1C8778ED8(v125, &qword_1EC2B6110, &qword_1C8BF5070);
      v187 = OUTLINED_FUNCTION_127_0();
      v188(v187);
    }

    sub_1C8778ED8(v182, &qword_1EC2B6118, &qword_1C8BE6DC0);
    goto LABEL_50;
  }

LABEL_49:

LABEL_50:
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C88C0BC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776788(&qword_1EC2B8F08, type metadata accessor for Siri_Nlu_External_SystemDialogAct, &protocol conformance descriptor for Siri_Nlu_External_SystemDialogAct);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C88C0C58()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B8968);
  __swift_project_value_buffer(v0, qword_1EC2B8968);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "task_id";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "target";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C88C0E28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_External_SystemPrompted(0);
  type metadata accessor for Siri_Nlu_External_UUID(0);
  sub_1C8776788(&qword_1EDACCE50, type metadata accessor for Siri_Nlu_External_UUID, &protocol conformance descriptor for Siri_Nlu_External_UUID);
  return sub_1C8BD4C7C();
}

void static Siri_Nlu_External_SystemPrompted.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v3 = OUTLINED_FUNCTION_177_1();
  type metadata accessor for Siri_Nlu_External_UsoGraph(v3);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_25_7(v5, v32);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61D0, &qword_1C8C0C1E0);
  OUTLINED_FUNCTION_80(v6);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_81_3(v8, v33);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5FD8, &unk_1C8BE6C90);
  OUTLINED_FUNCTION_52_3(v9);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v10);
  v12 = OUTLINED_FUNCTION_47_5(v11, v34);
  type metadata accessor for Siri_Nlu_External_UUID(v12);
  OUTLINED_FUNCTION_74_1();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_51_1();
  v14 = OUTLINED_FUNCTION_220();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(v14, v15);
  OUTLINED_FUNCTION_80(v16);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_112_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EE8, &unk_1C8BE6F90);
  OUTLINED_FUNCTION_181_0();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v18);
  v19 = OUTLINED_FUNCTION_17_4();
  v20 = type metadata accessor for Siri_Nlu_External_SystemPrompted(v19);
  OUTLINED_FUNCTION_66_5(v20);
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_19(v2);
  if (v21)
  {
    OUTLINED_FUNCTION_19(v2 + v1);
    if (v21)
    {
      sub_1C8778ED8(v2, &qword_1EC2B5EC8, &unk_1C8BE68C0);
      goto LABEL_11;
    }

LABEL_9:
    v22 = &qword_1EC2B5EE8;
    v23 = &unk_1C8BE6F90;
    v24 = v2;
LABEL_20:
    sub_1C8778ED8(v24, v22, v23);
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_475();
  OUTLINED_FUNCTION_19(v2 + v1);
  if (v21)
  {
    OUTLINED_FUNCTION_3_12();
    sub_1C87A0410();
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_0_16();
  OUTLINED_FUNCTION_474();
  v25 = OUTLINED_FUNCTION_377();
  static Siri_Nlu_External_UUID.== infix(_:_:)(v25, v26);
  OUTLINED_FUNCTION_15_8();
  sub_1C87A0410();
  OUTLINED_FUNCTION_12();
  sub_1C87A0410();
  sub_1C8778ED8(v2, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  if ((v0 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_11:
  OUTLINED_FUNCTION_180_1();
  OUTLINED_FUNCTION_149_2();
  OUTLINED_FUNCTION_200_2();
  OUTLINED_FUNCTION_68_3();
  if (v21)
  {
    OUTLINED_FUNCTION_38_8();
    if (v21)
    {
      sub_1C8778ED8(v1, &qword_1EC2B61D0, &qword_1C8C0C1E0);
LABEL_24:
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_2_18();
      v31 = sub_1C8776788(v29, v30, MEMORY[0x1E69AAC10]);
      v28 = OUTLINED_FUNCTION_201_1(v31);
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  OUTLINED_FUNCTION_309_0();
  OUTLINED_FUNCTION_38_8();
  if (v27)
  {
    OUTLINED_FUNCTION_4_17();
    sub_1C87A0410();
LABEL_19:
    v22 = &qword_1EC2B5FD8;
    v23 = &unk_1C8BE6C90;
    v24 = v1;
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_1_13();
  OUTLINED_FUNCTION_306_0();
  OUTLINED_FUNCTION_168_0();
  static Siri_Nlu_External_UsoGraph.== infix(_:_:)();
  OUTLINED_FUNCTION_14_9();
  sub_1C87A0410();
  OUTLINED_FUNCTION_300();
  sub_1C87A0410();
  sub_1C8778ED8(v1, &qword_1EC2B61D0, &qword_1C8C0C1E0);
  if (&qword_1EC2B61D0)
  {
    goto LABEL_24;
  }

LABEL_21:
  v28 = 0;
LABEL_22:
  OUTLINED_FUNCTION_157(v28);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C88C129C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776788(&qword_1EC2B8F00, type metadata accessor for Siri_Nlu_External_SystemPrompted, &protocol conformance descriptor for Siri_Nlu_External_SystemPrompted);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C88C1318(uint64_t a1)
{
  v2 = sub_1C8776788(&qword_1EC2B48C0, type metadata accessor for Siri_Nlu_External_SystemPrompted, &protocol conformance descriptor for Siri_Nlu_External_SystemPrompted);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C88C1388(uint64_t a1, uint64_t a2)
{
  sub_1C8776788(&qword_1EC2B48C0, type metadata accessor for Siri_Nlu_External_SystemPrompted, &protocol conformance descriptor for Siri_Nlu_External_SystemPrompted);

  return sub_1C8BD4CFC();
}

void static Siri_Nlu_External_SystemOffered.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v5 = OUTLINED_FUNCTION_68();
  type metadata accessor for Siri_Nlu_External_UserDialogAct(v5);
  OUTLINED_FUNCTION_74_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_41_6();
  v7 = OUTLINED_FUNCTION_104_0();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  OUTLINED_FUNCTION_80(v9);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_211();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8B88, &qword_1C8BF50F8);
  OUTLINED_FUNCTION_128_1();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v11);
  v12 = OUTLINED_FUNCTION_74();
  type metadata accessor for Siri_Nlu_External_SystemOffered(v12);
  v13 = *(v4 + 56);
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_143_2();
  OUTLINED_FUNCTION_19(v1);
  if (v14)
  {
    OUTLINED_FUNCTION_19(v1 + v13);
    if (v14)
    {
      sub_1C8778ED8(v1, &unk_1EC2B61F0, &qword_1C8BF50B0);
LABEL_15:
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_2_18();
      sub_1C8776788(v23, v24, MEMORY[0x1E69AAC10]);
      OUTLINED_FUNCTION_196_0();
      v17 = sub_1C8BD517C();
      goto LABEL_16;
    }

    goto LABEL_9;
  }

  sub_1C8778810();
  OUTLINED_FUNCTION_19(v1 + v13);
  if (v14)
  {
    OUTLINED_FUNCTION_356();
    sub_1C87A0410();
LABEL_9:
    v15 = &qword_1EC2B8B88;
    v16 = &qword_1C8BF50F8;
LABEL_10:
    sub_1C8778ED8(v1, v15, v16);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_55_5();
  sub_1C879A720();
  if (*(v3 + *(v0 + 20)) != *(v2 + *(v0 + 20)))
  {

    OUTLINED_FUNCTION_522();
    sub_1C88B45E0();
    v19 = v18;

    if ((v19 & 1) == 0)
    {
      sub_1C87A0410();
      sub_1C87A0410();
      v15 = &unk_1EC2B61F0;
      v16 = &qword_1C8BF50B0;
      goto LABEL_10;
    }
  }

  sub_1C8BD49FC();
  OUTLINED_FUNCTION_2_18();
  sub_1C8776788(v20, v21, MEMORY[0x1E69AAC10]);
  OUTLINED_FUNCTION_498();
  v22 = sub_1C8BD517C();
  sub_1C87A0410();
  OUTLINED_FUNCTION_230();
  sub_1C87A0410();
  sub_1C8778ED8(v1, &unk_1EC2B61F0, &qword_1C8BF50B0);
  if (v22)
  {
    goto LABEL_15;
  }

LABEL_11:
  v17 = 0;
LABEL_16:
  OUTLINED_FUNCTION_157(v17);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C88C1774(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776788(&qword_1EC2B8EF8, type metadata accessor for Siri_Nlu_External_SystemOffered, &protocol conformance descriptor for Siri_Nlu_External_SystemOffered);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C88C17F0(uint64_t a1)
{
  v2 = sub_1C8776788(qword_1EDACC1D8, type metadata accessor for Siri_Nlu_External_SystemOffered, &protocol conformance descriptor for Siri_Nlu_External_SystemOffered);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C88C1860(uint64_t a1, uint64_t a2)
{
  sub_1C8776788(qword_1EDACC1D8, type metadata accessor for Siri_Nlu_External_SystemOffered, &protocol conformance descriptor for Siri_Nlu_External_SystemOffered);

  return sub_1C8BD4CFC();
}

uint64_t static Siri_Nlu_External_SystemGaveOptions.== infix(_:_:)()
{
  OUTLINED_FUNCTION_12_0();
  sub_1C87DD670();
  if ((v0 & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Siri_Nlu_External_SystemGaveOptions(0);
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_2_18();
  v3 = sub_1C8776788(v1, v2, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_64_0(v3) & 1;
}

uint64_t sub_1C88C1A00(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776788(&qword_1EC2B8EF0, type metadata accessor for Siri_Nlu_External_SystemGaveOptions, &protocol conformance descriptor for Siri_Nlu_External_SystemGaveOptions);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C88C1A7C(uint64_t a1)
{
  v2 = sub_1C8776788(&qword_1EC2B4850, type metadata accessor for Siri_Nlu_External_SystemGaveOptions, &protocol conformance descriptor for Siri_Nlu_External_SystemGaveOptions);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C88C1AEC(uint64_t a1, uint64_t a2)
{
  sub_1C8776788(&qword_1EC2B4850, type metadata accessor for Siri_Nlu_External_SystemGaveOptions, &protocol conformance descriptor for Siri_Nlu_External_SystemGaveOptions);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C88C1B78()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B8998);
  __swift_project_value_buffer(v0, qword_1EC2B8998);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "task_id";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "entities";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

void Siri_Nlu_External_SystemInformed.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    OUTLINED_FUNCTION_97();
    v1 = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 2)
    {
      OUTLINED_FUNCTION_8();
      sub_1C879DC10();
    }

    else if (v1 == 1)
    {
      v3 = OUTLINED_FUNCTION_8();
      sub_1C88C1E20(v3, v4, v5, v6);
    }
  }
}

uint64_t sub_1C88C1E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_External_SystemInformed(0);
  type metadata accessor for Siri_Nlu_External_UUID(0);
  sub_1C8776788(&qword_1EDACCE50, type metadata accessor for Siri_Nlu_External_UUID, &protocol conformance descriptor for Siri_Nlu_External_UUID);
  return sub_1C8BD4C7C();
}

void Siri_Nlu_External_SystemInformed.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  v3 = OUTLINED_FUNCTION_253();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_210();
  type metadata accessor for Siri_Nlu_External_UUID(v7);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_65_6();
  v17 = type metadata accessor for Siri_Nlu_External_SystemInformed(v9);
  OUTLINED_FUNCTION_329_0(v17);
  sub_1C8778810();
  v10 = OUTLINED_FUNCTION_323_0();
  OUTLINED_FUNCTION_188_0(v10, v11);
  if (v12)
  {
    sub_1C8778ED8(v2, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  }

  else
  {
    OUTLINED_FUNCTION_0_16();
    OUTLINED_FUNCTION_455();
    sub_1C879A720();
    OUTLINED_FUNCTION_10_11();
    sub_1C8776788(v13, v14, &protocol conformance descriptor for Siri_Nlu_External_UUID);
    OUTLINED_FUNCTION_225_1();
    OUTLINED_FUNCTION_248_2();
    sub_1C8BD4E2C();
    OUTLINED_FUNCTION_3_12();
    sub_1C87A0410();
    if (v1)
    {
      goto LABEL_8;
    }
  }

  if (!*(*v0 + 16) || (type metadata accessor for Siri_Nlu_External_UsoGraph(0), OUTLINED_FUNCTION_13_14(), sub_1C8776788(v15, v16, &protocol conformance descriptor for Siri_Nlu_External_UsoGraph), OUTLINED_FUNCTION_117(), OUTLINED_FUNCTION_515(), OUTLINED_FUNCTION_248_2(), sub_1C8BD4E0C(), !v1))
  {
    sub_1C8BD49DC();
  }

LABEL_8:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

void static Siri_Nlu_External_SystemInformed.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v2 = type metadata accessor for Siri_Nlu_External_UUID(0);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_180();
  v4 = OUTLINED_FUNCTION_233();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_211();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EE8, &unk_1C8BE6F90);
  OUTLINED_FUNCTION_223_0();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_45();
  type metadata accessor for Siri_Nlu_External_SystemInformed(v9);
  v10 = *(v1 + 56);
  OUTLINED_FUNCTION_417_0();
  OUTLINED_FUNCTION_255_0();
  OUTLINED_FUNCTION_17_6(v0);
  if (v11)
  {
    OUTLINED_FUNCTION_17_6(v0 + v10);
    if (v11)
    {
      sub_1C8778ED8(v0, &qword_1EC2B5EC8, &unk_1C8BE68C0);
      goto LABEL_11;
    }

LABEL_9:
    sub_1C8778ED8(v0, &qword_1EC2B5EE8, &unk_1C8BE6F90);
LABEL_13:
    v18 = 0;
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_299_0();
  sub_1C8778810();
  OUTLINED_FUNCTION_17_6(v0 + v10);
  if (v11)
  {
    OUTLINED_FUNCTION_3_12();
    sub_1C87A0410();
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_0_16();
  sub_1C879A720();
  v12 = OUTLINED_FUNCTION_100();
  static Siri_Nlu_External_UUID.== infix(_:_:)(v12, v13);
  OUTLINED_FUNCTION_336();
  sub_1C87A0410();
  OUTLINED_FUNCTION_229();
  sub_1C87A0410();
  sub_1C8778ED8(v0, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  if ((v2 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_11:
  OUTLINED_FUNCTION_481();
  sub_1C87DD718();
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

  sub_1C8BD49FC();
  OUTLINED_FUNCTION_2_18();
  v17 = sub_1C8776788(v15, v16, MEMORY[0x1E69AAC10]);
  v18 = OUTLINED_FUNCTION_299(v17);
LABEL_14:
  OUTLINED_FUNCTION_157(v18);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C88C2380(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776788(&qword_1EC2B8EE8, type metadata accessor for Siri_Nlu_External_SystemInformed, &protocol conformance descriptor for Siri_Nlu_External_SystemInformed);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C88C2400(uint64_t a1)
{
  v2 = sub_1C8776788(&qword_1EC2B8DA0, type metadata accessor for Siri_Nlu_External_SystemInformed, &protocol conformance descriptor for Siri_Nlu_External_SystemInformed);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C88C2470(uint64_t a1, uint64_t a2)
{
  sub_1C8776788(&qword_1EC2B8DA0, type metadata accessor for Siri_Nlu_External_SystemInformed, &protocol conformance descriptor for Siri_Nlu_External_SystemInformed);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C88C2508()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B89B0);
  __swift_project_value_buffer(v0, qword_1EC2B89B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "task_id";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "task";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C88C273C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_External_SystemReportedSuccess(0);
  type metadata accessor for Siri_Nlu_External_UUID(0);
  sub_1C8776788(&qword_1EDACCE50, type metadata accessor for Siri_Nlu_External_UUID, &protocol conformance descriptor for Siri_Nlu_External_UUID);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C88C27F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_External_SystemReportedSuccess(0);
  type metadata accessor for Siri_Nlu_External_UsoGraph(0);
  sub_1C8776788(&qword_1EDACCCE0, type metadata accessor for Siri_Nlu_External_UsoGraph, &protocol conformance descriptor for Siri_Nlu_External_UsoGraph);
  return sub_1C8BD4C7C();
}

void Siri_Nlu_External_SystemReportedSuccess.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_101_2(v3, v4, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61D0, &qword_1C8C0C1E0);
  OUTLINED_FUNCTION_80(v6);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_17_4();
  v9 = type metadata accessor for Siri_Nlu_External_UsoGraph(v8);
  v10 = OUTLINED_FUNCTION_52_3(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_339(v11);
  v12 = OUTLINED_FUNCTION_315();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
  OUTLINED_FUNCTION_80(v14);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v15);
  v16 = OUTLINED_FUNCTION_87_2();
  type metadata accessor for Siri_Nlu_External_UUID(v16);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v17);
  v18 = OUTLINED_FUNCTION_36_4();
  type metadata accessor for Siri_Nlu_External_SystemReportedSuccess(v18);
  OUTLINED_FUNCTION_78_2();
  OUTLINED_FUNCTION_102_2();
  if (v19)
  {
    sub_1C8778ED8(v0, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    OUTLINED_FUNCTION_324_0();
  }

  else
  {
    OUTLINED_FUNCTION_0_16();
    OUTLINED_FUNCTION_251_0();
    sub_1C879A720();
    OUTLINED_FUNCTION_10_11();
    v22 = sub_1C8776788(v20, v21, &protocol conformance descriptor for Siri_Nlu_External_UUID);
    OUTLINED_FUNCTION_45_4(v22);
    OUTLINED_FUNCTION_3_12();
    sub_1C87A0410();
    if (v1)
    {
      goto LABEL_10;
    }
  }

  OUTLINED_FUNCTION_307_0();
  OUTLINED_FUNCTION_67_4();
  if (v19)
  {
    sub_1C8778ED8(v2, &qword_1EC2B61D0, &qword_1C8C0C1E0);
LABEL_9:
    OUTLINED_FUNCTION_15();
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_1_13();
  OUTLINED_FUNCTION_308_0();
  OUTLINED_FUNCTION_13_14();
  v25 = sub_1C8776788(v23, v24, &protocol conformance descriptor for Siri_Nlu_External_UsoGraph);
  OUTLINED_FUNCTION_76_3(v25);
  OUTLINED_FUNCTION_4_17();
  sub_1C87A0410();
  if (!v1)
  {
    goto LABEL_9;
  }

LABEL_10:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

void static Siri_Nlu_External_SystemReportedSuccess.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v3 = OUTLINED_FUNCTION_177_1();
  type metadata accessor for Siri_Nlu_External_UsoGraph(v3);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_25_7(v5, v32);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61D0, &qword_1C8C0C1E0);
  OUTLINED_FUNCTION_80(v6);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_81_3(v8, v33);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5FD8, &unk_1C8BE6C90);
  OUTLINED_FUNCTION_52_3(v9);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v10);
  v12 = OUTLINED_FUNCTION_47_5(v11, v34);
  type metadata accessor for Siri_Nlu_External_UUID(v12);
  OUTLINED_FUNCTION_74_1();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_51_1();
  v14 = OUTLINED_FUNCTION_220();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(v14, v15);
  OUTLINED_FUNCTION_80(v16);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_112_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EE8, &unk_1C8BE6F90);
  OUTLINED_FUNCTION_181_0();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v18);
  v19 = OUTLINED_FUNCTION_17_4();
  v20 = type metadata accessor for Siri_Nlu_External_SystemReportedSuccess(v19);
  OUTLINED_FUNCTION_66_5(v20);
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_19(v2);
  if (v21)
  {
    OUTLINED_FUNCTION_19(v2 + v1);
    if (v21)
    {
      sub_1C8778ED8(v2, &qword_1EC2B5EC8, &unk_1C8BE68C0);
      goto LABEL_11;
    }

LABEL_9:
    v22 = &qword_1EC2B5EE8;
    v23 = &unk_1C8BE6F90;
    v24 = v2;
LABEL_20:
    sub_1C8778ED8(v24, v22, v23);
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_475();
  OUTLINED_FUNCTION_19(v2 + v1);
  if (v21)
  {
    OUTLINED_FUNCTION_3_12();
    sub_1C87A0410();
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_0_16();
  OUTLINED_FUNCTION_474();
  v25 = OUTLINED_FUNCTION_377();
  static Siri_Nlu_External_UUID.== infix(_:_:)(v25, v26);
  OUTLINED_FUNCTION_15_8();
  sub_1C87A0410();
  OUTLINED_FUNCTION_12();
  sub_1C87A0410();
  sub_1C8778ED8(v2, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  if ((v0 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_11:
  OUTLINED_FUNCTION_180_1();
  OUTLINED_FUNCTION_149_2();
  OUTLINED_FUNCTION_200_2();
  OUTLINED_FUNCTION_68_3();
  if (v21)
  {
    OUTLINED_FUNCTION_38_8();
    if (v21)
    {
      sub_1C8778ED8(v1, &qword_1EC2B61D0, &qword_1C8C0C1E0);
LABEL_24:
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_2_18();
      v31 = sub_1C8776788(v29, v30, MEMORY[0x1E69AAC10]);
      v28 = OUTLINED_FUNCTION_201_1(v31);
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  OUTLINED_FUNCTION_309_0();
  OUTLINED_FUNCTION_38_8();
  if (v27)
  {
    OUTLINED_FUNCTION_4_17();
    sub_1C87A0410();
LABEL_19:
    v22 = &qword_1EC2B5FD8;
    v23 = &unk_1C8BE6C90;
    v24 = v1;
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_1_13();
  OUTLINED_FUNCTION_306_0();
  OUTLINED_FUNCTION_168_0();
  static Siri_Nlu_External_UsoGraph.== infix(_:_:)();
  OUTLINED_FUNCTION_14_9();
  sub_1C87A0410();
  OUTLINED_FUNCTION_300();
  sub_1C87A0410();
  sub_1C8778ED8(v1, &qword_1EC2B61D0, &qword_1C8C0C1E0);
  if (&qword_1EC2B61D0)
  {
    goto LABEL_24;
  }

LABEL_21:
  v28 = 0;
LABEL_22:
  OUTLINED_FUNCTION_157(v28);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C88C2EB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776788(&qword_1EC2B8EE0, type metadata accessor for Siri_Nlu_External_SystemReportedSuccess, &protocol conformance descriptor for Siri_Nlu_External_SystemReportedSuccess);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C88C2F30(uint64_t a1)
{
  v2 = sub_1C8776788(&qword_1EC2B8DB8, type metadata accessor for Siri_Nlu_External_SystemReportedSuccess, &protocol conformance descriptor for Siri_Nlu_External_SystemReportedSuccess);

  return MEMORY[0x1EEE15928](a1, v2);
}