uint64_t Siri_Nlu_Internal_RewriteToken.phoneSequence.modify()
{
  v0 = OUTLINED_FUNCTION_17_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_41(v1);
  v3 = type metadata accessor for Siri_Nlu_Internal_RewriteToken(v2);
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

Swift::Void __swiftcall Siri_Nlu_Internal_RewriteToken.clearPhoneSequence()()
{
  type metadata accessor for Siri_Nlu_Internal_RewriteToken(0);
  OUTLINED_FUNCTION_25_2();
  *v0 = 0;
  v0[1] = 0;
}

uint64_t Siri_Nlu_Internal_RewriteToken.removeSpaceAfter.setter(char a1)
{
  result = OUTLINED_FUNCTION_61_2();
  *(v1 + v4) = a1;
  return result;
}

uint64_t (*Siri_Nlu_Internal_RewriteToken.removeSpaceAfter.modify(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_55_0(a1);
  v2 = type metadata accessor for Siri_Nlu_Internal_RewriteToken(v1);
  OUTLINED_FUNCTION_21_1(*(v2 + 40));
  return OUTLINED_FUNCTION_158;
}

void Siri_Nlu_Internal_RewriteToken.init()(uint64_t a2@<X8>)
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  OUTLINED_FUNCTION_41_3();
  OUTLINED_FUNCTION_18_2(v3);
  OUTLINED_FUNCTION_16_3(a2 + *(v4 + 24));
  v6 = a2 + *(v5 + 28);
  *v6 = 0;
  *(v6 + 4) = v7;
  OUTLINED_FUNCTION_38(*(v5 + 32));
  *(v8 + 8) = v9;
  OUTLINED_FUNCTION_18_2(*(v10 + 36));
  *(a2 + *(v11 + 40)) = 2;
}

uint64_t Siri_Nlu_Internal_RewriteUtterance.asrID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_74();
  v6 = type metadata accessor for Siri_Nlu_Internal_RewriteUtterance(v5);
  OUTLINED_FUNCTION_67(*(v6 + 28));
  v7 = type metadata accessor for Siri_Nlu_External_UUID(0);
  v8 = OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_82_1(v8, v9);
  if (!v10)
  {
    return sub_1C87E8E5C(v1, a1);
  }

  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  OUTLINED_FUNCTION_15_2(v7[5]);
  OUTLINED_FUNCTION_15_2(v7[6]);
  *(a1 + v7[7]) = 6;
  v11 = OUTLINED_FUNCTION_120();
  result = OUTLINED_FUNCTION_82_1(v11, v12);
  if (!v10)
  {
    return sub_1C8778ED8(v1, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  }

  return result;
}

uint64_t Siri_Nlu_Internal_RewriteUtterance.asrID.setter()
{
  v2 = OUTLINED_FUNCTION_241();
  v3 = *(type metadata accessor for Siri_Nlu_Internal_RewriteUtterance(v2) + 28);
  sub_1C8778ED8(v1 + v3, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  sub_1C87E8E5C(v0, v1 + v3);
  type metadata accessor for Siri_Nlu_External_UUID(0);
  OUTLINED_FUNCTION_19_1();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

uint64_t (*Siri_Nlu_Internal_RewriteUtterance.asrID.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Siri_Nlu_External_UUID(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_21();
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for Siri_Nlu_Internal_RewriteUtterance(0) + 28);
  *(v3 + 10) = v11;
  OUTLINED_FUNCTION_67(v11);
  OUTLINED_FUNCTION_73(v6);
  if (v12)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_11_0(v7[5]);
    OUTLINED_FUNCTION_11_0(v7[6]);
    v10[v7[7]] = 6;
    OUTLINED_FUNCTION_73(v6);
    if (!v12)
    {
      sub_1C8778ED8(v6, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    }
  }

  else
  {
    sub_1C87E8E5C(v6, v10);
  }

  return sub_1C8825A68;
}

uint64_t Siri_Nlu_Internal_RewriteUtterance.hasAsrID.getter()
{
  v1 = OUTLINED_FUNCTION_12();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_74();
  v6 = type metadata accessor for Siri_Nlu_Internal_RewriteUtterance(v5);
  OUTLINED_FUNCTION_67(*(v6 + 28));
  type metadata accessor for Siri_Nlu_External_UUID(0);
  v7 = OUTLINED_FUNCTION_120();
  __swift_getEnumTagSinglePayload(v7, v8, v9);
  OUTLINED_FUNCTION_66_2();
  return v0;
}

Swift::Void __swiftcall Siri_Nlu_Internal_RewriteUtterance.clearAsrID()()
{
  v1 = type metadata accessor for Siri_Nlu_Internal_RewriteUtterance(0);
  sub_1C8778ED8(v0 + *(v1 + 28), &qword_1EC2B5EC8, &unk_1C8BE68C0);
  type metadata accessor for Siri_Nlu_External_UUID(0);
  v2 = OUTLINED_FUNCTION_14_3();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Siri_Nlu_Internal_RewriteUtterance.utterance.getter()
{
  if (*(v0 + *(type metadata accessor for Siri_Nlu_Internal_RewriteUtterance(0) + 32) + 8))
  {
    OUTLINED_FUNCTION_20();
  }

  else
  {
    OUTLINED_FUNCTION_19_0();
  }

  return OUTLINED_FUNCTION_218();
}

uint64_t Siri_Nlu_Internal_RewriteUtterance.utterance.setter()
{
  v3 = OUTLINED_FUNCTION_68();
  type metadata accessor for Siri_Nlu_Internal_RewriteUtterance(v3);
  result = OUTLINED_FUNCTION_24_0();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Siri_Nlu_Internal_RewriteUtterance.utterance.modify()
{
  v0 = OUTLINED_FUNCTION_17_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_41(v1);
  v3 = type metadata accessor for Siri_Nlu_Internal_RewriteUtterance(v2);
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

Swift::Void __swiftcall Siri_Nlu_Internal_RewriteUtterance.clearUtterance()()
{
  type metadata accessor for Siri_Nlu_Internal_RewriteUtterance(0);
  OUTLINED_FUNCTION_25_2();
  *v0 = 0;
  v0[1] = 0;
}

uint64_t Siri_Nlu_Internal_RewriteUtterance.asrUtteranceTokens.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

double Siri_Nlu_Internal_RewriteUtterance.confidence.getter()
{
  v0 = type metadata accessor for Siri_Nlu_Internal_RewriteUtterance(0);
  result = OUTLINED_FUNCTION_2_12(*(v0 + 36));
  if (!v3)
  {
    return v2;
  }

  return result;
}

void Siri_Nlu_Internal_RewriteUtterance.confidence.setter(double a1)
{
  type metadata accessor for Siri_Nlu_Internal_RewriteUtterance(0);
  OUTLINED_FUNCTION_25_4();
  *v2 = a1;
  *(v2 + 8) = 0;
}

uint64_t Siri_Nlu_Internal_RewriteUtterance.confidence.modify(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_33_0(a1);
  v3 = *(type metadata accessor for Siri_Nlu_Internal_RewriteUtterance(v2) + 36);
  *(v1 + 16) = v3;
  v4 = OUTLINED_FUNCTION_2_12(v3);
  if (!v6)
  {
    v4 = v5;
  }

  *v1 = v4;
  return OUTLINED_FUNCTION_74_0();
}

uint64_t Siri_Nlu_Internal_RewriteUtterance.nluInternalTokens.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

void (*Siri_Nlu_Internal_RewriteUtterance.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_241();
  type metadata accessor for Siri_Nlu_Internal_RewriteUtterance(v0);
  return nullsub_1;
}

void Siri_Nlu_Internal_RewriteUtterance.init()(void *a1@<X8>)
{
  v3 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = v3;
  v4 = type metadata accessor for Siri_Nlu_Internal_RewriteUtterance(0);
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v5 = type metadata accessor for Siri_Nlu_External_UUID(0);
  OUTLINED_FUNCTION_65_3(v5);
  OUTLINED_FUNCTION_18_2(*(v4 + 32));
  OUTLINED_FUNCTION_38(*(v4 + 36));
  *(v6 + 8) = v1;
}

uint64_t Siri_Nlu_Internal_RewriteInteraction.locale.getter()
{
  type metadata accessor for Siri_Nlu_Internal_RewriteInteraction(0);
  OUTLINED_FUNCTION_26_3();
  if (*(v0 + 8))
  {
    OUTLINED_FUNCTION_20();
  }

  else
  {
    OUTLINED_FUNCTION_19_0();
  }

  return OUTLINED_FUNCTION_218();
}

uint64_t Siri_Nlu_Internal_RewriteInteraction.locale.setter()
{
  v3 = OUTLINED_FUNCTION_68();
  type metadata accessor for Siri_Nlu_Internal_RewriteInteraction(v3);
  result = OUTLINED_FUNCTION_24_0();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Siri_Nlu_Internal_RewriteInteraction.locale.modify()
{
  v0 = OUTLINED_FUNCTION_17_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_41(v1);
  v3 = type metadata accessor for Siri_Nlu_Internal_RewriteInteraction(v2);
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

Swift::Void __swiftcall Siri_Nlu_Internal_RewriteInteraction.clearLocale()()
{
  type metadata accessor for Siri_Nlu_Internal_RewriteInteraction(0);
  OUTLINED_FUNCTION_25_2();
  *v0 = 0;
  v0[1] = 0;
}

uint64_t Siri_Nlu_Internal_RewriteInteraction.tap2Edit.setter(char a1)
{
  result = OUTLINED_FUNCTION_59_1();
  *(v1 + v4) = a1;
  return result;
}

uint64_t (*Siri_Nlu_Internal_RewriteInteraction.tap2Edit.modify(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_55_0(a1);
  v2 = type metadata accessor for Siri_Nlu_Internal_RewriteInteraction(v1);
  OUTLINED_FUNCTION_21_1(*(v2 + 32));
  return j__OUTLINED_FUNCTION_158;
}

uint64_t Siri_Nlu_Internal_RewriteInteraction.startTimestamp.getter()
{
  type metadata accessor for Siri_Nlu_Internal_RewriteInteraction(0);
  OUTLINED_FUNCTION_25_4();
  if (v0[8])
  {
    return 0;
  }

  else
  {
    return *v0;
  }
}

void Siri_Nlu_Internal_RewriteInteraction.startTimestamp.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  type metadata accessor for Siri_Nlu_Internal_RewriteInteraction(v1);
  OUTLINED_FUNCTION_25_4();
  *v2 = v0;
  *(v2 + 8) = 0;
}

uint64_t Siri_Nlu_Internal_RewriteInteraction.startTimestamp.modify(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_33_0(a1);
  v4 = *(type metadata accessor for Siri_Nlu_Internal_RewriteInteraction(v3) + 36);
  *(v1 + 16) = v4;
  v5 = (v2 + v4);
  if (*(v5 + 8))
  {
    v6 = 0;
  }

  else
  {
    v6 = *v5;
  }

  *v1 = v6;
  return OUTLINED_FUNCTION_74_0();
}

uint64_t sub_1C8826318@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 24);
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_21();
  v7 = *(v6 + 16);

  return v7(a2, v2 + v4, v5);
}

uint64_t sub_1C88263AC()
{
  v2 = OUTLINED_FUNCTION_241();
  v4 = *(v3(v2) + 24);
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_21();
  v6 = *(v5 + 40);

  return v6(v1 + v4, v0);
}

void (*Siri_Nlu_Internal_RewriteInteraction.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_241();
  type metadata accessor for Siri_Nlu_Internal_RewriteInteraction(v0);
  return nullsub_1;
}

void Siri_Nlu_Internal_RewriteInteraction.init()(void *a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = v2;
  v3 = type metadata accessor for Siri_Nlu_Internal_RewriteInteraction(0);
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  OUTLINED_FUNCTION_18_2(v3[7]);
  *(a1 + v3[8]) = 2;
  OUTLINED_FUNCTION_38(v3[9]);
  *(v4 + 8) = 1;
}

uint64_t Siri_Nlu_Internal_RewriteHypothesis.asrID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_74();
  v6 = type metadata accessor for Siri_Nlu_Internal_RewriteHypothesis(v5);
  OUTLINED_FUNCTION_67(*(v6 + 20));
  v7 = type metadata accessor for Siri_Nlu_External_UUID(0);
  v8 = OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_82_1(v8, v9);
  if (!v10)
  {
    return sub_1C87E8E5C(v1, a1);
  }

  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  OUTLINED_FUNCTION_15_2(v7[5]);
  OUTLINED_FUNCTION_15_2(v7[6]);
  *(a1 + v7[7]) = 6;
  v11 = OUTLINED_FUNCTION_120();
  result = OUTLINED_FUNCTION_82_1(v11, v12);
  if (!v10)
  {
    return sub_1C8778ED8(v1, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  }

  return result;
}

uint64_t sub_1C88265D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v7 = type metadata accessor for Siri_Nlu_External_UUID(0);
  v8 = OUTLINED_FUNCTION_80(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_33();
  v11 = v10 - v9;
  sub_1C87E9210(a1, v10 - v9);
  return a5(v11);
}

uint64_t Siri_Nlu_Internal_RewriteHypothesis.asrID.setter()
{
  v2 = OUTLINED_FUNCTION_241();
  v3 = *(type metadata accessor for Siri_Nlu_Internal_RewriteHypothesis(v2) + 20);
  sub_1C8778ED8(v1 + v3, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  sub_1C87E8E5C(v0, v1 + v3);
  type metadata accessor for Siri_Nlu_External_UUID(0);
  OUTLINED_FUNCTION_19_1();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

uint64_t (*Siri_Nlu_Internal_RewriteHypothesis.asrID.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Siri_Nlu_External_UUID(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_21();
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for Siri_Nlu_Internal_RewriteHypothesis(0) + 20);
  *(v3 + 10) = v11;
  OUTLINED_FUNCTION_67(v11);
  OUTLINED_FUNCTION_73(v6);
  if (v12)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_11_0(v7[5]);
    OUTLINED_FUNCTION_11_0(v7[6]);
    v10[v7[7]] = 6;
    OUTLINED_FUNCTION_73(v6);
    if (!v12)
    {
      sub_1C8778ED8(v6, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    }
  }

  else
  {
    sub_1C87E8E5C(v6, v10);
  }

  return sub_1C882AE18;
}

void sub_1C8826828(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 10);
  v4 = (*a1)[3];
  v5 = (*a1)[4];
  v6 = (*a1)[1];
  v7 = (*a1)[2];
  v8 = **a1;
  if (a2)
  {
    sub_1C87E9210((*a1)[4], v4);
    sub_1C8778ED8(v8 + v3, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    sub_1C87E8E5C(v4, v8 + v3);
    OUTLINED_FUNCTION_19_1();
    __swift_storeEnumTagSinglePayload(v9, v10, v11, v7);
    sub_1C87E9274(v5);
  }

  else
  {
    sub_1C8778ED8(v8 + v3, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    sub_1C87E8E5C(v5, v8 + v3);
    OUTLINED_FUNCTION_19_1();
    __swift_storeEnumTagSinglePayload(v12, v13, v14, v7);
  }

  free(v5);
  free(v4);
  free(v6);

  free(v2);
}

uint64_t Siri_Nlu_Internal_RewriteHypothesis.hasAsrID.getter()
{
  v1 = OUTLINED_FUNCTION_12();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_74();
  v6 = type metadata accessor for Siri_Nlu_Internal_RewriteHypothesis(v5);
  OUTLINED_FUNCTION_67(*(v6 + 20));
  type metadata accessor for Siri_Nlu_External_UUID(0);
  v7 = OUTLINED_FUNCTION_120();
  __swift_getEnumTagSinglePayload(v7, v8, v9);
  OUTLINED_FUNCTION_66_2();
  return v0;
}

Swift::Void __swiftcall Siri_Nlu_Internal_RewriteHypothesis.clearAsrID()()
{
  v1 = type metadata accessor for Siri_Nlu_Internal_RewriteHypothesis(0);
  sub_1C8778ED8(v0 + *(v1 + 20), &qword_1EC2B5EC8, &unk_1C8BE68C0);
  type metadata accessor for Siri_Nlu_External_UUID(0);
  v2 = OUTLINED_FUNCTION_14_3();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Siri_Nlu_Internal_RewriteHypothesis.utterance.getter()
{
  type metadata accessor for Siri_Nlu_Internal_RewriteHypothesis(0);
  OUTLINED_FUNCTION_25_0();
  if (*(v0 + 8))
  {
    OUTLINED_FUNCTION_20();
  }

  else
  {
    OUTLINED_FUNCTION_19_0();
  }

  return OUTLINED_FUNCTION_218();
}

uint64_t Siri_Nlu_Internal_RewriteHypothesis.utterance.setter()
{
  v3 = OUTLINED_FUNCTION_68();
  type metadata accessor for Siri_Nlu_Internal_RewriteHypothesis(v3);
  result = OUTLINED_FUNCTION_24_0();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Siri_Nlu_Internal_RewriteHypothesis.utterance.modify()
{
  v0 = OUTLINED_FUNCTION_17_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_41(v1);
  v3 = type metadata accessor for Siri_Nlu_Internal_RewriteHypothesis(v2);
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

Swift::Void __swiftcall Siri_Nlu_Internal_RewriteHypothesis.clearUtterance()()
{
  type metadata accessor for Siri_Nlu_Internal_RewriteHypothesis(0);
  OUTLINED_FUNCTION_25_2();
  *v0 = 0;
  v0[1] = 0;
}

double Siri_Nlu_Internal_RewriteHypothesis.confidence.getter()
{
  v0 = type metadata accessor for Siri_Nlu_Internal_RewriteHypothesis(0);
  result = OUTLINED_FUNCTION_2_12(*(v0 + 28));
  if (!v3)
  {
    return v2;
  }

  return result;
}

void Siri_Nlu_Internal_RewriteHypothesis.confidence.setter(double a1)
{
  type metadata accessor for Siri_Nlu_Internal_RewriteHypothesis(0);
  OUTLINED_FUNCTION_26_3();
  *v2 = a1;
  *(v2 + 8) = 0;
}

uint64_t Siri_Nlu_Internal_RewriteHypothesis.confidence.modify(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_33_0(a1);
  v3 = *(type metadata accessor for Siri_Nlu_Internal_RewriteHypothesis(v2) + 28);
  *(v1 + 16) = v3;
  v4 = OUTLINED_FUNCTION_2_12(v3);
  if (!v6)
  {
    v4 = v5;
  }

  *v1 = v4;
  return OUTLINED_FUNCTION_74_0();
}

uint64_t Siri_Nlu_Internal_RewriteHypothesis.rewriteType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = OUTLINED_FUNCTION_60_0();
  *a1 = *(v1 + v4) & 1;
  return result;
}

uint64_t sub_1C8826CB4@<X0>(_BYTE *a1@<X8>)
{
  result = Siri_Nlu_Internal_RewriteHypothesis.rewriteType.getter(&v3);
  *a1 = v3;
  return result;
}

uint64_t Siri_Nlu_Internal_RewriteHypothesis.rewriteType.setter(char *a1)
{
  v2 = *a1;
  result = OUTLINED_FUNCTION_60_0();
  *(v1 + v4) = v2;
  return result;
}

uint64_t (*Siri_Nlu_Internal_RewriteHypothesis.rewriteType.modify(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_55_0(a1);
  v2 = type metadata accessor for Siri_Nlu_Internal_RewriteHypothesis(v1);
  OUTLINED_FUNCTION_21_1(*(v2 + 32));
  return j__OUTLINED_FUNCTION_158;
}

uint64_t _s12SiriNLUTypes0A26_Nlu_Internal_RewriteTokenV13unknownFields0D13SwiftProtobuf14UnknownStorageVvg_0()
{
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_21();
  v0 = OUTLINED_FUNCTION_218();

  return v1(v0);
}

uint64_t _s12SiriNLUTypes0A26_Nlu_Internal_RewriteTokenV13unknownFields0D13SwiftProtobuf14UnknownStorageVvs_0()
{
  OUTLINED_FUNCTION_241();
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_21();
  v4 = *(v3 + 40);

  return v4(v1, v0, v2);
}

SiriNLUTypes::Siri_Nlu_Internal_RewriteHypothesis::RewriteType_optional __swiftcall Siri_Nlu_Internal_RewriteHypothesis.RewriteType.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1C8826EDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C882A088();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1C8826F44@<X0>(uint64_t *a1@<X8>)
{
  result = Siri_Nlu_Internal_RewriteHypothesis.RewriteType.rawValue.getter();
  *a1 = result;
  return result;
}

void Siri_Nlu_Internal_RewriteHypothesis.init()(uint64_t a2@<X8>)
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v4 = type metadata accessor for Siri_Nlu_Internal_RewriteHypothesis(0);
  v5 = type metadata accessor for Siri_Nlu_External_UUID(0);
  OUTLINED_FUNCTION_65_3(v5);
  OUTLINED_FUNCTION_18_2(v4[6]);
  OUTLINED_FUNCTION_38(v4[7]);
  *(v6 + 8) = v2;
  *(a2 + v4[8]) = 2;
}

uint64_t sub_1C8827008()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B6C50);
  __swift_project_value_buffer(v0, qword_1EC2B6C50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE7160;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "value";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "start_index";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "end_index";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "asr_confidence";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "phone_sequence";
  *(v16 + 1) = 14;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "remove_space_after";
  *(v18 + 1) = 18;
  v18[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_Internal_RewriteToken.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    result = OUTLINED_FUNCTION_81_0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v3 = OUTLINED_FUNCTION_8();
        sub_1C88273B4(v3, v4, v5, v6);
        break;
      case 2:
        v19 = OUTLINED_FUNCTION_8();
        sub_1C8827418(v19, v20, v21, v22);
        break;
      case 3:
        v11 = OUTLINED_FUNCTION_8();
        sub_1C882747C(v11, v12, v13, v14);
        break;
      case 4:
        v15 = OUTLINED_FUNCTION_8();
        sub_1C88274E0(v15, v16, v17, v18);
        break;
      case 5:
        v7 = OUTLINED_FUNCTION_8();
        sub_1C8827544(v7, v8, v9, v10);
        break;
      case 6:
        v23 = OUTLINED_FUNCTION_8();
        sub_1C88275A8(v23, v24);
        break;
      default:
        continue;
    }
  }
}

uint64_t Siri_Nlu_Internal_RewriteToken.traverse<A>(visitor:)()
{
  v2 = v1;
  v3 = OUTLINED_FUNCTION_17();
  v4 = type metadata accessor for Siri_Nlu_Internal_RewriteToken(v3);
  v5 = (v0 + v4[5]);
  v6 = v5[1];
  if (!v6 || (result = OUTLINED_FUNCTION_9_5(*v5, v6, 1), (v2 = v1) == 0))
  {
    if ((*(v0 + v4[6] + 4) & 1) != 0 || (OUTLINED_FUNCTION_48_0(), result = sub_1C8BD4DEC(), (v2 = v1) == 0))
    {
      if ((*(v0 + v4[7] + 4) & 1) != 0 || (OUTLINED_FUNCTION_48_0(), result = sub_1C8BD4DEC(), (v2 = v1) == 0))
      {
        if ((*(v0 + v4[8] + 8) & 1) != 0 || (v1 = v2, OUTLINED_FUNCTION_55(), result = sub_1C8BD4DCC(), !v2))
        {
          v8 = (v0 + v4[9]);
          v9 = v8[1];
          if (!v9 || (result = OUTLINED_FUNCTION_9_5(*v8, v9, 5), !v1))
          {
            if (*(v0 + v4[10]) == 2 || (OUTLINED_FUNCTION_48_0(), result = sub_1C8BD4D3C(), !v1))
            {
              OUTLINED_FUNCTION_55();
              return sub_1C8BD49DC();
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Siri_Nlu_Internal_RewriteToken.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = OUTLINED_FUNCTION_17();
  type metadata accessor for Siri_Nlu_Internal_RewriteToken(v2);
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
  }

  else if (v3)
  {
    return 0;
  }

  OUTLINED_FUNCTION_11();
  if (v10)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_1();
    if (v11)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_11();
  if (v13)
  {
    if (!v12)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_1();
    if (v14)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_4_0();
  if (v16)
  {
    if (!v15)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_36();
    if (v17)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_1();
  if (v20)
  {
    if (!v18)
    {
      return 0;
    }

    OUTLINED_FUNCTION_35(v19);
    v23 = v8 && v21 == v22;
    if (!v23 && (sub_1C8BD529C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v18)
  {
    return 0;
  }

  OUTLINED_FUNCTION_47();
  if (v8)
  {
    if (v24 == 2)
    {
      goto LABEL_38;
    }

    return 0;
  }

  if (v24 == 2 || ((v25 ^ v24) & 1) != 0)
  {
    return 0;
  }

LABEL_38:
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_1_7();
  sub_1C87764B8(v27, v28, MEMORY[0x1E69AAC10]);
  OUTLINED_FUNCTION_117();
  return sub_1C8BD517C() & 1;
}

uint64_t sub_1C8827958(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C87764B8(&qword_1EC2B6DD0, type metadata accessor for Siri_Nlu_Internal_RewriteToken, &protocol conformance descriptor for Siri_Nlu_Internal_RewriteToken);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C88279D8(uint64_t a1)
{
  v2 = sub_1C87764B8(&qword_1EC2B6CD0, type metadata accessor for Siri_Nlu_Internal_RewriteToken, &protocol conformance descriptor for Siri_Nlu_Internal_RewriteToken);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8827A48(uint64_t a1, uint64_t a2)
{
  sub_1C87764B8(&qword_1EC2B6CD0, type metadata accessor for Siri_Nlu_Internal_RewriteToken, &protocol conformance descriptor for Siri_Nlu_Internal_RewriteToken);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8827AE0()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B6C68);
  __swift_project_value_buffer(v0, qword_1EC2B6C68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BEB0F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "asr_id";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "utterance";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "asr_utterance_tokens";
  *(v12 + 1) = 20;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "confidence";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "nlu_internal_tokens";
  *(v16 + 1) = 19;
  v16[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_Internal_RewriteUtterance.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    result = OUTLINED_FUNCTION_81_0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v3 = OUTLINED_FUNCTION_8();
        sub_1C8827EB8(v3, v4, v5, v6);
        break;
      case 2:
        v24 = OUTLINED_FUNCTION_8();
        sub_1C8827F6C(v24, v25, v26, v27);
        break;
      case 4:
        v11 = OUTLINED_FUNCTION_8();
        sub_1C8828AF0(v11, v12, v13, v14, v15, &qword_1EC2B6CD0, v16, v17);
        break;
      case 5:
        v18 = OUTLINED_FUNCTION_8();
        sub_1C8828CE4(v18, v19, v20, v21, v22, v23);
        break;
      case 6:
        v7 = OUTLINED_FUNCTION_8();
        sub_1C8828B8C(v7, v8, v9, v10);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C8827EB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_Internal_RewriteUtterance(0);
  type metadata accessor for Siri_Nlu_External_UUID(0);
  sub_1C87764B8(&qword_1EDACCE50, type metadata accessor for Siri_Nlu_External_UUID, &protocol conformance descriptor for Siri_Nlu_External_UUID);
  return sub_1C8BD4C7C();
}

uint64_t Siri_Nlu_Internal_RewriteUtterance.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_50_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_80_2();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_33();
  v9 = v8 - v7;
  v10 = type metadata accessor for Siri_Nlu_Internal_RewriteUtterance(0);
  sub_1C87E8DEC(v1 + v10[7], v2);
  if (__swift_getEnumTagSinglePayload(v2, 1, v5) == 1)
  {
    sub_1C8778ED8(v2, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  }

  else
  {
    sub_1C87E8E5C(v2, v9);
    OUTLINED_FUNCTION_23_4();
    sub_1C87764B8(v11, v12, &protocol conformance descriptor for Siri_Nlu_External_UUID);
    OUTLINED_FUNCTION_9_1();
    sub_1C8BD4E2C();
    result = sub_1C87E9274(v9);
    if (v0)
    {
      return result;
    }
  }

  if (!*(v1 + v10[8] + 8) || (OUTLINED_FUNCTION_29_1(), result = sub_1C8BD4DDC(), !v0))
  {
    if (!*(*v1 + 16) || (type metadata accessor for Siri_Nlu_Internal_RewriteToken(0), sub_1C87764B8(&qword_1EC2B6CD0, type metadata accessor for Siri_Nlu_Internal_RewriteToken, &protocol conformance descriptor for Siri_Nlu_Internal_RewriteToken), OUTLINED_FUNCTION_117(), OUTLINED_FUNCTION_9_1(), result = sub_1C8BD4E0C(), !v0))
    {
      if ((*(v1 + v10[9] + 8) & 1) != 0 || (OUTLINED_FUNCTION_29_1(), result = sub_1C8BD4DCC(), !v0))
      {
        if (!*(v1[1] + 16))
        {
          return OUTLINED_FUNCTION_49_0();
        }

        type metadata accessor for Siri_Nlu_Internal_Token(0);
        OUTLINED_FUNCTION_5_5();
        sub_1C87764B8(v14, v15, &protocol conformance descriptor for Siri_Nlu_Internal_Token);
        OUTLINED_FUNCTION_117();
        OUTLINED_FUNCTION_9_1();
        result = sub_1C8BD4E0C();
        if (!v0)
        {
          return OUTLINED_FUNCTION_49_0();
        }
      }
    }
  }

  return result;
}

uint64_t static Siri_Nlu_Internal_RewriteUtterance.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v5 = OUTLINED_FUNCTION_17();
  type metadata accessor for Siri_Nlu_External_UUID(v5);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_33();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v10);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EE8, &unk_1C8BE6F90) - 8;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v15);
  v16 = OUTLINED_FUNCTION_27_0();
  v17 = *(type metadata accessor for Siri_Nlu_Internal_RewriteUtterance(v16) + 28);
  v18 = *(v14 + 56);
  sub_1C87E8DEC(v2 + v17, v3);
  sub_1C87E8DEC(a2 + v17, v3 + v18);
  OUTLINED_FUNCTION_73(v3);
  if (!v19)
  {
    sub_1C87E8DEC(v3, v13);
    OUTLINED_FUNCTION_73(v3 + v18);
    if (!v19)
    {
      sub_1C87E8E5C(v3 + v18, v9);
      v22 = static Siri_Nlu_External_UUID.== infix(_:_:)(v13, v9);
      sub_1C87E9274(v9);
      sub_1C87E9274(v13);
      sub_1C8778ED8(v3, &qword_1EC2B5EC8, &unk_1C8BE68C0);
      if ((v22 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_13;
    }

    sub_1C87E9274(v13);
LABEL_9:
    sub_1C8778ED8(v3, &qword_1EC2B5EE8, &unk_1C8BE6F90);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_73(v3 + v18);
  if (!v19)
  {
    goto LABEL_9;
  }

  sub_1C8778ED8(v3, &qword_1EC2B5EC8, &unk_1C8BE68C0);
LABEL_13:
  OUTLINED_FUNCTION_1();
  if (v25)
  {
    if (!v23)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_35(v24);
    v28 = v19 && v26 == v27;
    if (!v28 && (sub_1C8BD529C() & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (v23)
  {
    goto LABEL_10;
  }

  sub_1C87DD6C4();
  if (v29)
  {
    OUTLINED_FUNCTION_4_0();
    if (v31)
    {
      if (!v30)
      {
        goto LABEL_10;
      }
    }

    else
    {
      OUTLINED_FUNCTION_36();
      if (v32)
      {
        goto LABEL_10;
      }
    }

    sub_1C87D85EC();
    if (v33)
    {
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_1_7();
      v36 = sub_1C87764B8(v34, v35, MEMORY[0x1E69AAC10]);
      v20 = OUTLINED_FUNCTION_64_0(v36);
      return v20 & 1;
    }
  }

LABEL_10:
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_1C8828590(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C87764B8(&qword_1EC2B6DC8, type metadata accessor for Siri_Nlu_Internal_RewriteUtterance, &protocol conformance descriptor for Siri_Nlu_Internal_RewriteUtterance);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8828610(uint64_t a1)
{
  v2 = sub_1C87764B8(&qword_1EC2B6CE0, type metadata accessor for Siri_Nlu_Internal_RewriteUtterance, &protocol conformance descriptor for Siri_Nlu_Internal_RewriteUtterance);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8828680(uint64_t a1, uint64_t a2)
{
  sub_1C87764B8(&qword_1EC2B6CE0, type metadata accessor for Siri_Nlu_Internal_RewriteUtterance, &protocol conformance descriptor for Siri_Nlu_Internal_RewriteUtterance);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8828718()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B6C80);
  __swift_project_value_buffer(v0, qword_1EC2B6C80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BEB0F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "original_utterances";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "siri_response";
  *(v10 + 8) = 13;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "locale";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "tap2edit";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "start_timestamp";
  *(v16 + 1) = 15;
  v16[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_Internal_RewriteInteraction.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    result = OUTLINED_FUNCTION_81_0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v3 = OUTLINED_FUNCTION_8();
        sub_1C8828AF0(v3, v4, v5, v6, v7, &qword_1EC2B6CE0, v8, v9);
        break;
      case 2:
        v22 = OUTLINED_FUNCTION_8();
        sub_1C8828B8C(v22, v23, v24, v25);
        break;
      case 3:
        v16 = OUTLINED_FUNCTION_8();
        sub_1C8828C1C(v16, v17, v18, v19);
        break;
      case 4:
        v20 = OUTLINED_FUNCTION_8();
        sub_1C8828C80(v20, v21);
        break;
      case 5:
        v10 = OUTLINED_FUNCTION_8();
        sub_1C8828CE4(v10, v11, v12, v13, v14, v15);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C8828AF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), unint64_t *a6, uint64_t (*a7)(uint64_t), uint64_t a8)
{
  a5(0);
  sub_1C87764B8(a6, a7, a8);
  return sub_1C8BD4C6C();
}

uint64_t sub_1C8828B8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_Internal_Token(0);
  OUTLINED_FUNCTION_5_5();
  sub_1C87764B8(v4, v5, &protocol conformance descriptor for Siri_Nlu_Internal_Token);
  return sub_1C8BD4C6C();
}

uint64_t sub_1C8828CE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(void))
{
  a5(0);
  OUTLINED_FUNCTION_55();
  return a6();
}

uint64_t Siri_Nlu_Internal_RewriteInteraction.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_50_2();
  if (!*(*v0 + 16) || (type metadata accessor for Siri_Nlu_Internal_RewriteUtterance(0), sub_1C87764B8(&qword_1EC2B6CE0, type metadata accessor for Siri_Nlu_Internal_RewriteUtterance, &protocol conformance descriptor for Siri_Nlu_Internal_RewriteUtterance), OUTLINED_FUNCTION_117(), OUTLINED_FUNCTION_9_1(), result = sub_1C8BD4E0C(), !v1))
  {
    if (!*(*(v2 + 8) + 16) || (type metadata accessor for Siri_Nlu_Internal_Token(0), OUTLINED_FUNCTION_5_5(), sub_1C87764B8(v4, v5, &protocol conformance descriptor for Siri_Nlu_Internal_Token), OUTLINED_FUNCTION_117(), OUTLINED_FUNCTION_9_1(), result = sub_1C8BD4E0C(), !v1))
    {
      v6 = type metadata accessor for Siri_Nlu_Internal_RewriteInteraction(0);
      if (!*(v2 + v6[7] + 8) || (OUTLINED_FUNCTION_29_1(), result = sub_1C8BD4DDC(), !v1))
      {
        if (*(v2 + v6[8]) == 2 || (OUTLINED_FUNCTION_29_1(), result = sub_1C8BD4D3C(), !v1))
        {
          if (*(v2 + v6[9] + 8))
          {
            return OUTLINED_FUNCTION_49_0();
          }

          OUTLINED_FUNCTION_29_1();
          result = sub_1C8BD4DFC();
          if (!v1)
          {
            return OUTLINED_FUNCTION_49_0();
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Siri_Nlu_Internal_RewriteInteraction.== infix(_:_:)()
{
  sub_1C87DD0B4();
  if ((v0 & 1) == 0)
  {
    return 0;
  }

  sub_1C87D85EC();
  if ((v1 & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Siri_Nlu_Internal_RewriteInteraction(0);
  OUTLINED_FUNCTION_1();
  if (v4)
  {
    if (!v2)
    {
      return 0;
    }

    OUTLINED_FUNCTION_35(v3);
    v7 = v7 && v5 == v6;
    if (!v7 && (sub_1C8BD529C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_47();
  if (v7)
  {
    if (v8 != 2)
    {
      return 0;
    }
  }

  else if (v8 == 2 || ((v9 ^ v8) & 1) != 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_4_0();
  if (v13)
  {
    if (!v10)
    {
      return 0;
    }
  }

  else
  {
    if (*v11 != *v12)
    {
      LOBYTE(v10) = 1;
    }

    if (v10)
    {
      return 0;
    }
  }

  sub_1C8BD49FC();
  OUTLINED_FUNCTION_1_7();
  v17 = sub_1C87764B8(v15, v16, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_64_0(v17) & 1;
}

uint64_t sub_1C88290AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C87764B8(&qword_1EC2B6DC0, type metadata accessor for Siri_Nlu_Internal_RewriteInteraction, &protocol conformance descriptor for Siri_Nlu_Internal_RewriteInteraction);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C882912C(uint64_t a1)
{
  v2 = sub_1C87764B8(&qword_1EC2B6D50, type metadata accessor for Siri_Nlu_Internal_RewriteInteraction, &protocol conformance descriptor for Siri_Nlu_Internal_RewriteInteraction);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C882919C(uint64_t a1, uint64_t a2)
{
  sub_1C87764B8(&qword_1EC2B6D50, type metadata accessor for Siri_Nlu_Internal_RewriteInteraction, &protocol conformance descriptor for Siri_Nlu_Internal_RewriteInteraction);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8829234()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B6C98);
  __swift_project_value_buffer(v0, qword_1EC2B6C98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE68B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "asr_id";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "utterance";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "confidence";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "rewrite_type";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_Internal_RewriteHypothesis.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    result = OUTLINED_FUNCTION_81_0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v3 = OUTLINED_FUNCTION_8();
        sub_1C8829544(v3, v4, v5, v6);
        break;
      case 2:
        v15 = OUTLINED_FUNCTION_8();
        sub_1C88295F8(v15, v16, v17, v18);
        break;
      case 3:
        v7 = OUTLINED_FUNCTION_8();
        sub_1C882965C(v7, v8, v9, v10);
        break;
      case 4:
        v11 = OUTLINED_FUNCTION_8();
        sub_1C88296C0(v11, v12, v13, v14);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C8829544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_Internal_RewriteHypothesis(0);
  type metadata accessor for Siri_Nlu_External_UUID(0);
  sub_1C87764B8(&qword_1EDACCE50, type metadata accessor for Siri_Nlu_External_UUID, &protocol conformance descriptor for Siri_Nlu_External_UUID);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C88296C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_Internal_RewriteHypothesis(0);
  sub_1C882A088();
  return sub_1C8BD4B4C();
}

uint64_t Siri_Nlu_Internal_RewriteHypothesis.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v7);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_80_2();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_33();
  v13 = v12 - v11;
  v14 = type metadata accessor for Siri_Nlu_Internal_RewriteHypothesis(0);
  sub_1C87E8DEC(v3 + v14[5], v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v9) == 1)
  {
    sub_1C8778ED8(v5, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  }

  else
  {
    sub_1C87E8E5C(v5, v13);
    OUTLINED_FUNCTION_23_4();
    sub_1C87764B8(v15, v16, &protocol conformance descriptor for Siri_Nlu_External_UUID);
    sub_1C8BD4E2C();
    result = sub_1C87E9274(v13);
    if (v4)
    {
      return result;
    }
  }

  v18 = (v3 + v14[6]);
  v19 = v18[1];
  if (!v19 || (result = OUTLINED_FUNCTION_9_5(*v18, v19, 2), (v6 = v4) == 0))
  {
    if ((*(v3 + v14[7] + 8) & 1) != 0 || (OUTLINED_FUNCTION_55(), result = sub_1C8BD4DCC(), !v6))
    {
      if (*(v3 + v14[8]) == 2 || (sub_1C882A088(), result = sub_1C8BD4D4C(), !v6))
      {
        OUTLINED_FUNCTION_55();
        return sub_1C8BD49DC();
      }
    }
  }

  return result;
}

uint64_t static Siri_Nlu_Internal_RewriteHypothesis.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v5 = OUTLINED_FUNCTION_17();
  type metadata accessor for Siri_Nlu_External_UUID(v5);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_33();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v10);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v36 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EE8, &unk_1C8BE6F90) - 8;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v15);
  v16 = OUTLINED_FUNCTION_27_0();
  v17 = *(type metadata accessor for Siri_Nlu_Internal_RewriteHypothesis(v16) + 20);
  v18 = *(v14 + 56);
  sub_1C87E8DEC(v2 + v17, v3);
  sub_1C87E8DEC(a2 + v17, v3 + v18);
  OUTLINED_FUNCTION_73(v3);
  if (!v19)
  {
    sub_1C87E8DEC(v3, v13);
    OUTLINED_FUNCTION_73(v3 + v18);
    if (!v19)
    {
      sub_1C87E8E5C(v3 + v18, v9);
      v22 = static Siri_Nlu_External_UUID.== infix(_:_:)(v13, v9);
      sub_1C87E9274(v9);
      sub_1C87E9274(v13);
      sub_1C8778ED8(v3, &qword_1EC2B5EC8, &unk_1C8BE68C0);
      if ((v22 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_13;
    }

    sub_1C87E9274(v13);
LABEL_9:
    sub_1C8778ED8(v3, &qword_1EC2B5EE8, &unk_1C8BE6F90);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_73(v3 + v18);
  if (!v19)
  {
    goto LABEL_9;
  }

  sub_1C8778ED8(v3, &qword_1EC2B5EC8, &unk_1C8BE68C0);
LABEL_13:
  OUTLINED_FUNCTION_1();
  if (v25)
  {
    if (!v23)
    {
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_35(v24);
    v28 = v19 && v26 == v27;
    if (!v28 && (sub_1C8BD529C() & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (v23)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_4_0();
  if (v30)
  {
    if (!v29)
    {
      goto LABEL_10;
    }
  }

  else
  {
    OUTLINED_FUNCTION_36();
    if (v31)
    {
      goto LABEL_10;
    }
  }

  OUTLINED_FUNCTION_47();
  if (v19)
  {
    if (v32 == 2)
    {
LABEL_32:
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_1_7();
      sub_1C87764B8(v34, v35, MEMORY[0x1E69AAC10]);
      OUTLINED_FUNCTION_117();
      v20 = sub_1C8BD517C();
      return v20 & 1;
    }
  }

  else if (v32 != 2 && ((v32 ^ v33) & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_10:
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_1C8829C4C(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_1C8BD530C();
  a1(0);
  sub_1C87764B8(a2, a3, a4);
  sub_1C8BD515C();
  return sub_1C8BD531C();
}

uint64_t sub_1C8829D28(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C87764B8(&qword_1EC2B6DB8, type metadata accessor for Siri_Nlu_Internal_RewriteHypothesis, &protocol conformance descriptor for Siri_Nlu_Internal_RewriteHypothesis);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8829DA8(uint64_t a1)
{
  v2 = sub_1C87764B8(&qword_1EC2B5ED8, type metadata accessor for Siri_Nlu_Internal_RewriteHypothesis, &protocol conformance descriptor for Siri_Nlu_Internal_RewriteHypothesis);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8829E18(uint64_t a1, uint64_t a2)
{
  sub_1C87764B8(&qword_1EC2B5ED8, type metadata accessor for Siri_Nlu_Internal_RewriteHypothesis, &protocol conformance descriptor for Siri_Nlu_Internal_RewriteHypothesis);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8829E98()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B6CB0);
  __swift_project_value_buffer(v0, qword_1EC2B6CB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "CORRECTION";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "REFERENCE_RESOLUTION";
  *(v10 + 1) = 20;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

unint64_t sub_1C882A088()
{
  result = qword_1EC2B6CF0;
  if (!qword_1EC2B6CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B6CF0);
  }

  return result;
}

unint64_t sub_1C882A0E0()
{
  result = qword_1EC2B6D00;
  if (!qword_1EC2B6D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B6D00);
  }

  return result;
}

unint64_t sub_1C882A138()
{
  result = qword_1EC2B6D08;
  if (!qword_1EC2B6D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B6D08);
  }

  return result;
}

unint64_t sub_1C882A190()
{
  result = qword_1EC2B6D10;
  if (!qword_1EC2B6D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B6D10);
  }

  return result;
}

unint64_t sub_1C882A1E8()
{
  result = qword_1EC2B6D18;
  if (!qword_1EC2B6D18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC2B6D20, &qword_1C8BEB1E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B6D18);
  }

  return result;
}

uint64_t sub_1C882A6F4(uint64_t a1)
{
  v1 = sub_1C8BD49FC();
  if (v2 <= 0x3F)
  {
    sub_1C87EB4B0(319, &qword_1EDACD3E8, MEMORY[0x1E69E6158]);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_1C87EB4B0(319, &qword_1EDACD380, MEMORY[0x1E69E7668]);
      if (v6 > 0x3F)
      {
        return v5;
      }

      sub_1C87EB4B0(319, &qword_1EDACD390, MEMORY[0x1E69E63B0]);
      if (v7 > 0x3F)
      {
        return v5;
      }

      else
      {
        sub_1C87EB4B0(319, &qword_1EDACA2B8, MEMORY[0x1E69E6370]);
        v1 = v8;
        if (v9 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v1;
}

void sub_1C882A844(uint64_t a1)
{
  sub_1C882A9D8(319, &qword_1EC2B6D90, type metadata accessor for Siri_Nlu_Internal_RewriteToken, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1C882A9D8(319, &qword_1EC2B2F68, type metadata accessor for Siri_Nlu_Internal_Token, MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      sub_1C8BD49FC();
      if (v3 <= 0x3F)
      {
        sub_1C882A9D8(319, qword_1EDACE198, type metadata accessor for Siri_Nlu_External_UUID, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          sub_1C87EB4B0(319, &qword_1EDACD3E8, MEMORY[0x1E69E6158]);
          if (v5 <= 0x3F)
          {
            sub_1C87EB4B0(319, &qword_1EDACD390, MEMORY[0x1E69E63B0]);
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

void sub_1C882A9D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1C882AA64(uint64_t a1)
{
  sub_1C882A9D8(319, &qword_1EC2B6DA8, type metadata accessor for Siri_Nlu_Internal_RewriteUtterance, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1C882A9D8(319, &qword_1EC2B2F68, type metadata accessor for Siri_Nlu_Internal_Token, MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      sub_1C8BD49FC();
      if (v3 <= 0x3F)
      {
        sub_1C87EB4B0(319, &qword_1EDACD3E8, MEMORY[0x1E69E6158]);
        if (v4 <= 0x3F)
        {
          sub_1C87EB4B0(319, &qword_1EDACA2B8, MEMORY[0x1E69E6370]);
          if (v5 <= 0x3F)
          {
            sub_1C87EB4B0(319, &qword_1EDACD378, MEMORY[0x1E69E76D8]);
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

void sub_1C882AC00(uint64_t a1)
{
  sub_1C8BD49FC();
  if (v1 <= 0x3F)
  {
    sub_1C882A9D8(319, qword_1EDACE198, type metadata accessor for Siri_Nlu_External_UUID, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1C87EB4B0(319, &qword_1EDACD3E8, MEMORY[0x1E69E6158]);
      if (v3 <= 0x3F)
      {
        sub_1C87EB4B0(319, &qword_1EDACD390, MEMORY[0x1E69E63B0]);
        if (v4 <= 0x3F)
        {
          sub_1C87EB4B0(319, &qword_1EC2B6DB0, &type metadata for Siri_Nlu_Internal_RewriteHypothesis.RewriteType);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

_BYTE *storeEnumTagSinglePayload for Siri_Nlu_Internal_RewriteHypothesis.RewriteType(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t OUTLINED_FUNCTION_66_2()
{

  return sub_1C8778ED8(v2, v0, v1);
}

uint64_t Siri_Nlu_Internal_MentionResolver_MentionResolverResponse.requestID.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v4);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_7_7();
  sub_1C87E8DEC(v1 + *(v6 + 24), v2);
  v7 = type metadata accessor for Siri_Nlu_External_UUID(0);
  if (__swift_getEnumTagSinglePayload(v2, 1, v7) != 1)
  {
    return sub_1C87E8E5C(v2, a1);
  }

  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  OUTLINED_FUNCTION_313(a1 + v7[5]);
  OUTLINED_FUNCTION_313(a1 + v7[6]);
  *(a1 + v7[7]) = 6;
  result = __swift_getEnumTagSinglePayload(v2, 1, v7);
  if (result != 1)
  {
    return sub_1C8778ED8(v2, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  }

  return result;
}

uint64_t type metadata accessor for Siri_Nlu_Internal_MentionResolver_MentionResolverResponse(uint64_t a1)
{
  result = qword_1EC2B4240;
  if (!qword_1EC2B4240)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C882AFE0(uint64_t a1)
{
  v2 = type metadata accessor for Siri_Nlu_External_UUID(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C87E9210(a1, v4);
  return Siri_Nlu_Internal_MentionResolver_MentionResolverResponse.requestID.setter(v4);
}

uint64_t Siri_Nlu_Internal_MentionResolver_MentionResolverResponse.requestID.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nlu_Internal_MentionResolver_MentionResolverResponse(0) + 24);
  sub_1C8778ED8(v1 + v3, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  sub_1C87E8E5C(a1, v1 + v3);
  v4 = type metadata accessor for Siri_Nlu_External_UUID(0);

  return __swift_storeEnumTagSinglePayload(v1 + v3, 0, 1, v4);
}

void (*Siri_Nlu_Internal_MentionResolver_MentionResolverResponse.requestID.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Siri_Nlu_External_UUID(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_21();
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for Siri_Nlu_Internal_MentionResolver_MentionResolverResponse(0) + 24);
  *(v3 + 10) = v11;
  sub_1C87E8DEC(v1 + v11, v6);
  OUTLINED_FUNCTION_73(v6);
  if (v12)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_313(&v10[v7[5]]);
    OUTLINED_FUNCTION_313(&v10[v7[6]]);
    v10[v7[7]] = 6;
    OUTLINED_FUNCTION_73(v6);
    if (!v12)
    {
      sub_1C8778ED8(v6, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    }
  }

  else
  {
    sub_1C87E8E5C(v6, v10);
  }

  return sub_1C87E9130;
}

BOOL Siri_Nlu_Internal_MentionResolver_MentionResolverResponse.hasRequestID.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v2);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_7_7();
  sub_1C87E8DEC(v0 + *(v4 + 24), v1);
  v5 = type metadata accessor for Siri_Nlu_External_UUID(0);
  v6 = __swift_getEnumTagSinglePayload(v1, 1, v5) != 1;
  sub_1C8778ED8(v1, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  return v6;
}

Swift::Void __swiftcall Siri_Nlu_Internal_MentionResolver_MentionResolverResponse.clearRequestID()()
{
  v1 = *(type metadata accessor for Siri_Nlu_Internal_MentionResolver_MentionResolverResponse(0) + 24);
  sub_1C8778ED8(v0 + v1, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  v2 = type metadata accessor for Siri_Nlu_External_UUID(0);

  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
}

uint64_t Siri_Nlu_Internal_MentionResolver_MentionResolverResponse.mentions.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Siri_Nlu_Internal_MentionResolver_MentionResolverResponse.rewrittenUtterance.getter()
{
  v1 = (v0 + *(type metadata accessor for Siri_Nlu_Internal_MentionResolver_MentionResolverResponse(0) + 28));
  if (v1[1])
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_1C882B410(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_Internal_MentionResolver_MentionResolverResponse.rewrittenUtterance.setter(v1, v2);
}

uint64_t Siri_Nlu_Internal_MentionResolver_MentionResolverResponse.rewrittenUtterance.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Siri_Nlu_Internal_MentionResolver_MentionResolverResponse(0) + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

void (*Siri_Nlu_Internal_MentionResolver_MentionResolverResponse.rewrittenUtterance.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[2] = v1;
  v4 = *(type metadata accessor for Siri_Nlu_Internal_MentionResolver_MentionResolverResponse(0) + 28);
  *(v3 + 8) = v4;
  v5 = (v1 + v4);
  v6 = v5[1];
  if (v6)
  {
    v7 = *v5;
    v8 = v6;
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  v3[3] = v6;
  *v3 = v7;
  v3[1] = v8;

  return sub_1C87E6EC8;
}

Swift::Void __swiftcall Siri_Nlu_Internal_MentionResolver_MentionResolverResponse.clearRewrittenUtterance()()
{
  v1 = (v0 + *(type metadata accessor for Siri_Nlu_Internal_MentionResolver_MentionResolverResponse(0) + 28));

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Siri_Nlu_Internal_MentionResolver_MentionResolverResponse.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Siri_Nlu_Internal_MentionResolver_MentionResolverResponse(0) + 20);
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_21();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t Siri_Nlu_Internal_MentionResolver_MentionResolverResponse.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nlu_Internal_MentionResolver_MentionResolverResponse(0) + 20);
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_21();
  v5 = *(v4 + 40);

  return v5(v1 + v3, a1);
}

uint64_t Siri_Nlu_Internal_MentionResolver_MentionResolverResponse.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  v2 = type metadata accessor for Siri_Nlu_Internal_MentionResolver_MentionResolverResponse(0);
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v3 = *(v2 + 24);
  v4 = type metadata accessor for Siri_Nlu_External_UUID(0);
  result = __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v4);
  v6 = (a1 + *(v2 + 28));
  *v6 = 0;
  v6[1] = 0;
  return result;
}

uint64_t sub_1C882B760()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B2FA0);
  __swift_project_value_buffer(v0, qword_1EC2B2FA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE6F70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "request_id";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "mentions";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "rewritten_utterance";
  *(v12 + 1) = 19;
  v12[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t static Siri_Nlu_Internal_MentionResolver_MentionResolverResponse._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC2B2F98 != -1)
  {
    swift_once();
  }

  v2 = sub_1C8BD512C();
  v3 = __swift_project_value_buffer(v2, qword_1EC2B2FA0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Siri_Nlu_Internal_MentionResolver_MentionResolverResponse.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1C8BD4AFC();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        v14 = OUTLINED_FUNCTION_8();
        sub_1C882BBF8(v14, v15, v16, v17);
        break;
      case 2:
        v10 = OUTLINED_FUNCTION_8();
        sub_1C882BB58(v10, v11, v12, v13);
        break;
      case 1:
        v6 = OUTLINED_FUNCTION_8();
        sub_1C882BAA4(v6, v7, v8, v9);
        break;
    }
  }

  return result;
}

uint64_t sub_1C882BAA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_Internal_MentionResolver_MentionResolverResponse(0);
  type metadata accessor for Siri_Nlu_External_UUID(0);
  sub_1C882C680(&qword_1EDACCE50, type metadata accessor for Siri_Nlu_External_UUID, &protocol conformance descriptor for Siri_Nlu_External_UUID);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C882BB58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_Internal_MatchingSpan(0);
  sub_1C882C680(&qword_1EC2B4A28, type metadata accessor for Siri_Nlu_Internal_MatchingSpan, &protocol conformance descriptor for Siri_Nlu_Internal_MatchingSpan);
  return sub_1C8BD4C6C();
}

uint64_t Siri_Nlu_Internal_MentionResolver_MentionResolverResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v7);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v17 - v9;
  v11 = type metadata accessor for Siri_Nlu_External_UUID(0);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v12);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Siri_Nlu_Internal_MentionResolver_MentionResolverResponse(0);
  sub_1C87E8DEC(v6 + *(v15 + 24), v10);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    sub_1C8778ED8(v10, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  }

  else
  {
    sub_1C87E8E5C(v10, v14);
    sub_1C882C680(&qword_1EDACCE50, type metadata accessor for Siri_Nlu_External_UUID, &protocol conformance descriptor for Siri_Nlu_External_UUID);
    OUTLINED_FUNCTION_9_1();
    sub_1C8BD4E2C();
    v5 = v4;
    result = sub_1C87E9274(v14);
    if (v4)
    {
      return result;
    }
  }

  if (!*(*v6 + 16) || (type metadata accessor for Siri_Nlu_Internal_MatchingSpan(0), sub_1C882C680(&qword_1EC2B4A28, type metadata accessor for Siri_Nlu_Internal_MatchingSpan, &protocol conformance descriptor for Siri_Nlu_Internal_MatchingSpan), OUTLINED_FUNCTION_9_1(), result = sub_1C8BD4E0C(), (v5 = v4) == 0))
  {
    if (!*(v6 + *(v15 + 28) + 8))
    {
      return sub_1C8BD49DC();
    }

    result = sub_1C8BD4DDC();
    if (!v5)
    {
      return sub_1C8BD49DC();
    }
  }

  return result;
}

uint64_t static Siri_Nlu_Internal_MentionResolver_MentionResolverResponse.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  type metadata accessor for Siri_Nlu_External_UUID(0);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v7);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EE8, &unk_1C8BE6F90) - 8;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v29 - v13;
  v15 = type metadata accessor for Siri_Nlu_Internal_MentionResolver_MentionResolverResponse(0);
  v16 = *(v15 + 24);
  v17 = *(v11 + 56);
  sub_1C87E8DEC(a1 + v16, v14);
  sub_1C87E8DEC(a2 + v16, &v14[v17]);
  OUTLINED_FUNCTION_73(v14);
  if (v18)
  {
    OUTLINED_FUNCTION_73(&v14[v17]);
    if (v18)
    {
      sub_1C8778ED8(v14, &qword_1EC2B5EC8, &unk_1C8BE68C0);
      goto LABEL_11;
    }

LABEL_9:
    sub_1C8778ED8(v14, &qword_1EC2B5EE8, &unk_1C8BE6F90);
    goto LABEL_21;
  }

  sub_1C87E8DEC(v14, v10);
  OUTLINED_FUNCTION_73(&v14[v17]);
  if (v18)
  {
    sub_1C87E9274(v10);
    goto LABEL_9;
  }

  sub_1C87E8E5C(&v14[v17], v6);
  v19 = static Siri_Nlu_External_UUID.== infix(_:_:)(v10, v6);
  sub_1C87E9274(v6);
  sub_1C87E9274(v10);
  sub_1C8778ED8(v14, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  if ((v19 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_11:
  sub_1C87D27C0(*a1, *a2);
  if ((v20 & 1) == 0)
  {
    goto LABEL_21;
  }

  v21 = *(v15 + 28);
  v22 = (a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  v25 = v24[1];
  if (v23)
  {
    if (v25)
    {
      v26 = *v22 == *v24 && v23 == v25;
      if (v26 || (sub_1C8BD529C() & 1) != 0)
      {
        goto LABEL_19;
      }
    }

LABEL_21:
    v27 = 0;
    return v27 & 1;
  }

  if (v25)
  {
    goto LABEL_21;
  }

LABEL_19:
  sub_1C8BD49FC();
  sub_1C882C680(&qword_1EC2B2F70, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v27 = sub_1C8BD517C();
  return v27 & 1;
}

uint64_t Siri_Nlu_Internal_MentionResolver_MentionResolverResponse.hashValue.getter()
{
  sub_1C8BD530C();
  type metadata accessor for Siri_Nlu_Internal_MentionResolver_MentionResolverResponse(0);
  sub_1C882C680(&qword_1EC2B6DD8, type metadata accessor for Siri_Nlu_Internal_MentionResolver_MentionResolverResponse, &protocol conformance descriptor for Siri_Nlu_Internal_MentionResolver_MentionResolverResponse);
  sub_1C8BD515C();
  return sub_1C8BD531C();
}

uint64_t sub_1C882C250(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C882C680(&qword_1EC2B6DF0, type metadata accessor for Siri_Nlu_Internal_MentionResolver_MentionResolverResponse, &protocol conformance descriptor for Siri_Nlu_Internal_MentionResolver_MentionResolverResponse);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C882C2D0(uint64_t a1)
{
  v2 = sub_1C882C680(&qword_1EC2B6DE0, type metadata accessor for Siri_Nlu_Internal_MentionResolver_MentionResolverResponse, &protocol conformance descriptor for Siri_Nlu_Internal_MentionResolver_MentionResolverResponse);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C882C340(uint64_t a1, uint64_t a2)
{
  sub_1C882C680(&qword_1EC2B6DE0, type metadata accessor for Siri_Nlu_Internal_MentionResolver_MentionResolverResponse, &protocol conformance descriptor for Siri_Nlu_Internal_MentionResolver_MentionResolverResponse);

  return sub_1C8BD4CFC();
}

void sub_1C882C508(uint64_t a1)
{
  sub_1C882C61C(319, &qword_1EC2B2F60, type metadata accessor for Siri_Nlu_Internal_MatchingSpan, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1C8BD49FC();
    if (v2 <= 0x3F)
    {
      sub_1C882C61C(319, qword_1EDACE198, type metadata accessor for Siri_Nlu_External_UUID, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1C87E8A54();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1C882C61C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1C882C680(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_7_7()
{

  return type metadata accessor for Siri_Nlu_Internal_MentionResolver_MentionResolverResponse(0);
}

uint64_t Siri_Nlu_Internal_Token.value.getter()
{
  v0 = type metadata accessor for Siri_Nlu_Internal_Token(0);
  if (OUTLINED_FUNCTION_8_0(*(v0 + 28)))
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_1C882C738(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_Internal_Token.value.setter(v1, v2);
}

uint64_t Siri_Nlu_Internal_Token.value.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Siri_Nlu_Internal_Token(0) + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

void (*Siri_Nlu_Internal_Token.value.modify())(uint64_t **a1, char a2)
{
  v1 = __swift_coroFrameAllocStub(0x28uLL);
  v2 = *(OUTLINED_FUNCTION_20_3(v1) + 28);
  *(v0 + 32) = v2;
  v3 = OUTLINED_FUNCTION_8_0(v2);
  if (v3)
  {
    v5 = *v4;
    v6 = v3;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *(v0 + 24) = v3;
  *v0 = v5;
  *(v0 + 8) = v6;

  return sub_1C87EB660;
}

Swift::Void __swiftcall Siri_Nlu_Internal_Token.clearValue()()
{
  v1 = (v0 + *(type metadata accessor for Siri_Nlu_Internal_Token(0) + 28));

  *v1 = 0;
  v1[1] = 0;
}

uint64_t (*Siri_Nlu_Internal_Token.begin.modify(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_8_7(a1);
  OUTLINED_FUNCTION_6_0(*(v1 + 32));
  return sub_1C8801920;
}

uint64_t (*Siri_Nlu_Internal_Token.end.modify(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_8_7(a1);
  OUTLINED_FUNCTION_6_0(*(v1 + 36));
  return sub_1C8801920;
}

uint64_t Siri_Nlu_Internal_Token.isSignificant.setter()
{
  result = OUTLINED_FUNCTION_13_10();
  *(v1 + *(result + 40)) = v0;
  return result;
}

uint64_t (*Siri_Nlu_Internal_Token.isSignificant.modify(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_8_7(a1);
  OUTLINED_FUNCTION_21_1(*(v1 + 40));
  return j__OUTLINED_FUNCTION_158;
}

uint64_t Siri_Nlu_Internal_Token.isWhitespace.setter()
{
  result = OUTLINED_FUNCTION_13_10();
  *(v1 + *(result + 44)) = v0;
  return result;
}

uint64_t (*Siri_Nlu_Internal_Token.isWhitespace.modify(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_8_7(a1);
  OUTLINED_FUNCTION_21_1(*(v1 + 44));
  return OUTLINED_FUNCTION_158;
}

uint64_t Siri_Nlu_Internal_Token.cleanValues.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Siri_Nlu_Internal_Token.tokenIndex.getter()
{
  type metadata accessor for Siri_Nlu_Internal_Token(0);
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

uint64_t (*Siri_Nlu_Internal_Token.tokenIndex.modify(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_8_7(a1);
  OUTLINED_FUNCTION_6_0(*(v1 + 48));
  return sub_1C8801920;
}

uint64_t Siri_Nlu_Internal_Token.nonWhitespaceTokenIndex.getter()
{
  type metadata accessor for Siri_Nlu_Internal_Token(0);
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

uint64_t (*Siri_Nlu_Internal_Token.nonWhitespaceTokenIndex.modify(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_8_7(a1);
  OUTLINED_FUNCTION_6_0(*(v1 + 52));
  return sub_1C87FE8F0;
}

uint64_t Siri_Nlu_Internal_Token.cleanValue.getter()
{
  v0 = type metadata accessor for Siri_Nlu_Internal_Token(0);
  if (OUTLINED_FUNCTION_8_0(*(v0 + 56)))
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_1C882CE20(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_Internal_Token.cleanValue.setter(v1, v2);
}

uint64_t Siri_Nlu_Internal_Token.cleanValue.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Siri_Nlu_Internal_Token(0) + 56));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

void (*Siri_Nlu_Internal_Token.cleanValue.modify())(uint64_t **a1, char a2)
{
  v1 = __swift_coroFrameAllocStub(0x28uLL);
  v2 = *(OUTLINED_FUNCTION_20_3(v1) + 56);
  *(v0 + 32) = v2;
  v3 = OUTLINED_FUNCTION_8_0(v2);
  if (v3)
  {
    v5 = *v4;
    v6 = v3;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *(v0 + 24) = v3;
  *v0 = v5;
  *(v0 + 8) = v6;

  return sub_1C87E9980;
}

Swift::Void __swiftcall Siri_Nlu_Internal_Token.clearCleanValue()()
{
  v1 = (v0 + *(type metadata accessor for Siri_Nlu_Internal_Token(0) + 56));

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Siri_Nlu_Internal_Token.normalizedValues.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t Siri_Nlu_Internal_Token.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Siri_Nlu_Internal_Token(0) + 24);
  v4 = sub_1C8BD49FC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Siri_Nlu_Internal_Token.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nlu_Internal_Token(0) + 24);
  v4 = sub_1C8BD49FC();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_1C882D13C()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B4BF0);
  __swift_project_value_buffer(v0, qword_1EC2B4BF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1C8BE8D50;
  v4 = v26 + v3 + v1[14];
  *(v26 + v3) = 1;
  *v4 = "value";
  *(v4 + 8) = 5;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1C8BD50FC();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v26 + v3 + v2 + v1[14];
  *(v26 + v3 + v2) = 2;
  *v8 = "begin";
  *(v8 + 8) = 5;
  *(v8 + 16) = 2;
  v7();
  v9 = (v26 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "end";
  *(v10 + 1) = 3;
  v10[16] = 2;
  v7();
  v11 = (v26 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "is_significant";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v7();
  v13 = (v26 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "is_whitespace";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v7();
  v15 = (v26 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "clean_values";
  *(v16 + 1) = 12;
  v16[16] = 2;
  v7();
  v17 = (v26 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "token_index";
  *(v18 + 1) = 11;
  v18[16] = 2;
  v7();
  v19 = (v26 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "non_whitespace_token_index";
  *(v20 + 1) = 26;
  v20[16] = 2;
  v7();
  v21 = (v26 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "clean_value";
  *(v22 + 1) = 11;
  v22[16] = 2;
  v7();
  v23 = (v26 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "normalized_values";
  *(v24 + 1) = 17;
  v24[16] = 2;
  v7();
  return sub_1C8BD510C();
}

uint64_t static Siri_Nlu_Internal_Token._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC2B4BE8 != -1)
  {
    swift_once();
  }

  v2 = sub_1C8BD512C();
  v3 = __swift_project_value_buffer(v2, qword_1EC2B4BF0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Siri_Nlu_Internal_Token.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Siri_Nlu_Internal_Token(0);
  v6 = (v3 + v5[7]);
  v7 = v6[1];
  if (!v7 || (result = OUTLINED_FUNCTION_19_5(*v6, v7, 1), !v4))
  {
    OUTLINED_FUNCTION_18_8();
    if ((v9 & 1) != 0 || (OUTLINED_FUNCTION_0_1(), result = sub_1C8BD4D8C(), !v4))
    {
      OUTLINED_FUNCTION_18_8();
      if ((v10 & 1) != 0 || (OUTLINED_FUNCTION_0_1(), result = sub_1C8BD4D8C(), !v4))
      {
        if (*(v3 + v5[10]) == 2 || (OUTLINED_FUNCTION_0_1(), result = sub_1C8BD4D3C(), !v4))
        {
          if (*(v3 + v5[11]) == 2 || (OUTLINED_FUNCTION_0_1(), result = sub_1C8BD4D3C(), !v4))
          {
            if (!*(*v3 + 16) || (OUTLINED_FUNCTION_0_1(), result = sub_1C8BD4DAC(), !v4))
            {
              OUTLINED_FUNCTION_18_8();
              if ((v11 & 1) != 0 || (OUTLINED_FUNCTION_0_1(), result = sub_1C8BD4D8C(), !v4))
              {
                OUTLINED_FUNCTION_18_8();
                if ((v12 & 1) != 0 || (OUTLINED_FUNCTION_0_1(), result = sub_1C8BD4D8C(), !v4))
                {
                  v13 = (v3 + v5[14]);
                  v14 = v13[1];
                  if (!v14 || (result = OUTLINED_FUNCTION_19_5(*v13, v14, 9), !v4))
                  {
                    if (!*(v3[1] + 16))
                    {
                      return sub_1C8BD49DC();
                    }

                    OUTLINED_FUNCTION_0_1();
                    result = sub_1C8BD4DAC();
                    if (!v4)
                    {
                      return sub_1C8BD49DC();
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

  return result;
}

uint64_t static Siri_Nlu_Internal_Token.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Siri_Nlu_Internal_Token(0);
  OUTLINED_FUNCTION_1();
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    v9 = *v7 == *v8 && v5 == v6;
    if (!v9 && (sub_1C8BD529C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  OUTLINED_FUNCTION_11();
  if (v11)
  {
    if (!v10)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_1();
    if (v12)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_11();
  if (v14)
  {
    if (!v13)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_1();
    if (v15)
    {
      return 0;
    }
  }

  v16 = *(v4 + 40);
  v17 = *(a1 + v16);
  v18 = *(a2 + v16);
  if (v17 == 2)
  {
    if (v18 != 2)
    {
      return 0;
    }
  }

  else if (v18 == 2 || ((v17 ^ v18) & 1) != 0)
  {
    return 0;
  }

  v19 = *(v4 + 44);
  v20 = *(a1 + v19);
  v21 = *(a2 + v19);
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

  if (sub_1C87D2814(*a1, *a2))
  {
    OUTLINED_FUNCTION_11();
    if (v23)
    {
      if (!v22)
      {
        return 0;
      }
    }

    else
    {
      OUTLINED_FUNCTION_8_1();
      if (v24)
      {
        return 0;
      }
    }

    OUTLINED_FUNCTION_11();
    if (v26)
    {
      if (!v25)
      {
        return 0;
      }
    }

    else
    {
      OUTLINED_FUNCTION_8_1();
      if (v27)
      {
        return 0;
      }
    }

    OUTLINED_FUNCTION_1();
    if (v28)
    {
      if (!v29)
      {
        return 0;
      }

      v32 = *v30 == *v31 && v28 == v29;
      if (!v32 && (sub_1C8BD529C() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v29)
    {
      return 0;
    }

    if (sub_1C87D2814(a1[1], a2[1]))
    {
      sub_1C8BD49FC();
      sub_1C8776500(&qword_1EC2B2F70, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      return sub_1C8BD517C() & 1;
    }
  }

  return 0;
}

uint64_t Siri_Nlu_Internal_Token.hashValue.getter()
{
  sub_1C8BD530C();
  type metadata accessor for Siri_Nlu_Internal_Token(0);
  sub_1C8776500(&qword_1EC2B6DF8, type metadata accessor for Siri_Nlu_Internal_Token, &protocol conformance descriptor for Siri_Nlu_Internal_Token);
  sub_1C8BD515C();
  return sub_1C8BD531C();
}

uint64_t sub_1C882DA44(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776500(&qword_1EC2B6E08, type metadata accessor for Siri_Nlu_Internal_Token, &protocol conformance descriptor for Siri_Nlu_Internal_Token);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C882DAC4(uint64_t a1)
{
  v2 = sub_1C8776500(&qword_1EC2B4BE0, type metadata accessor for Siri_Nlu_Internal_Token, &protocol conformance descriptor for Siri_Nlu_Internal_Token);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C882DB34(uint64_t a1, uint64_t a2)
{
  sub_1C8776500(&qword_1EC2B4BE0, type metadata accessor for Siri_Nlu_Internal_Token, &protocol conformance descriptor for Siri_Nlu_Internal_Token);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C882DCE8(uint64_t a1)
{
  sub_1C882DE84(319, &qword_1EDACD398, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    v2 = sub_1C8BD49FC();
    if (v4 <= 0x3F)
    {
      sub_1C882DE84(319, &qword_1EDACD3E8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
      v2 = v5;
      if (v6 <= 0x3F)
      {
        sub_1C882DE84(319, &qword_1EDACD388, MEMORY[0x1E69E72F0], MEMORY[0x1E69E6720]);
        if (v8 > 0x3F)
        {
          return v7;
        }

        else
        {
          sub_1C882DE84(319, &qword_1EDACA2B8, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
          if (v10 > 0x3F)
          {
            return v9;
          }

          else
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

void sub_1C882DE84(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void Siri_Nlu_External_UserParse.interpretableAsUniversalCommand.getter()
{
  v58 = type metadata accessor for Siri_Nlu_External_UserStatedTask(0);
  v1 = OUTLINED_FUNCTION_80(v58);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_33();
  v54[2] = v3 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2B61D8, &unk_1C8BF4FD0);
  v5 = OUTLINED_FUNCTION_80(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_10_0();
  v54[1] = v6;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v7);
  v56 = v54 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6E10, &unk_1C8BF5000);
  OUTLINED_FUNCTION_80(v9);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v10);
  v57 = v54 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6E18, &qword_1C8BEBC48);
  OUTLINED_FUNCTION_80(v12);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v13);
  v59 = v54 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6E20, &unk_1C8BF4FF0);
  OUTLINED_FUNCTION_80(v15);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v16);
  v60 = v54 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6E28, &unk_1C8C10580);
  OUTLINED_FUNCTION_80(v18);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v19);
  v21 = v54 - v20;
  type metadata accessor for Siri_Nlu_External_UserDialogAct(0);
  OUTLINED_FUNCTION_13_1();
  v61 = v23;
  v62 = v22;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_33();
  v26 = v25 - v24;
  v27 = 0;
  v55 = v0;
  v28 = *v0;
  v63 = *(*v0 + 16);
  while (v63 != v27)
  {
    if (v27 >= *(v28 + 16))
    {
      __break(1u);
      return;
    }

    sub_1C882F0A0(v28 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v27, v26, type metadata accessor for Siri_Nlu_External_UserDialogAct);
    v29 = *(v26 + *(v62 + 20));
    v30 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__rejected;
    OUTLINED_FUNCTION_277(v29 + OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__rejected, v68);
    sub_1C8786744(v29 + v30, v21, &qword_1EC2B6E28, &unk_1C8C10580);
    v31 = type metadata accessor for Siri_Nlu_External_UserRejected(0);
    LODWORD(v30) = __swift_getEnumTagSinglePayload(v21, 1, v31);
    v32 = OUTLINED_FUNCTION_218();
    sub_1C8778ED8(v32, v33, &unk_1C8C10580);
    if (v30 != 1 || (v34 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__cancelled, OUTLINED_FUNCTION_277(v29 + OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__cancelled, v67), v35 = v60, sub_1C8786744(v29 + v34, v60, &qword_1EC2B6E20, &unk_1C8BF4FF0), v36 = type metadata accessor for Siri_Nlu_External_UserCancelled(0), LODWORD(v34) = __swift_getEnumTagSinglePayload(v35, 1, v36), sub_1C8778ED8(v35, &qword_1EC2B6E20, &unk_1C8BF4FF0), v34 != 1) || (v37 = v28, v38 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__wantedToPause, OUTLINED_FUNCTION_277(v29 + OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__wantedToPause, v66), v39 = v59, sub_1C8786744(v29 + v38, v59, &qword_1EC2B6E18, &qword_1C8BEBC48), v40 = type metadata accessor for Siri_Nlu_External_UserWantedToPause(0), __swift_getEnumTagSinglePayload(v39, 1, v40), v41 = OUTLINED_FUNCTION_12_6(), sub_1C8778ED8(v41, v42, &qword_1C8BEBC48), v38 != 1) || (v43 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__wantedToRepeat, OUTLINED_FUNCTION_277(v29 + OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__wantedToRepeat, v65), v44 = v57, sub_1C8786744(v29 + v43, v57, &qword_1EC2B6E10, &unk_1C8BF5000), v45 = type metadata accessor for Siri_Nlu_External_UserWantedToRepeat(0), __swift_getEnumTagSinglePayload(v44, 1, v45), v46 = OUTLINED_FUNCTION_12_6(), sub_1C8778ED8(v46, v47, &unk_1C8BF5000), v43 != 1))
    {
      OUTLINED_FUNCTION_7_8();
      sub_1C882F0FC(v26, v53);
      return;
    }

    v48 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__userStatedTask;
    OUTLINED_FUNCTION_277(v29 + OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__userStatedTask, v64);
    v49 = v56;
    sub_1C8786744(v29 + v48, v56, &unk_1EC2B61D8, &unk_1C8BF4FD0);
    __swift_getEnumTagSinglePayload(v49, 1, v58);
    v50 = OUTLINED_FUNCTION_12_6();
    sub_1C8778ED8(v50, v51, &unk_1C8BF4FD0);
    OUTLINED_FUNCTION_7_8();
    sub_1C882F0FC(v26, v52);
    ++v27;
    v28 = v37;
  }
}

uint64_t sub_1C882E508(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61D0, &qword_1C8C0C1E0);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v29[-v5];
  v7 = type metadata accessor for Siri_Nlu_External_UsoGraph(0);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_33();
  v11 = (v10 - v9);
  v12 = type metadata accessor for Siri_Nlu_External_UserStatedTask(0);
  sub_1C8786744(a1 + *(v12 + 20), v6, &qword_1EC2B61D0, &qword_1C8C0C1E0);
  v13 = OUTLINED_FUNCTION_120();
  if (__swift_getEnumTagSinglePayload(v13, v14, v7) == 1)
  {
    v15 = MEMORY[0x1E69E7CC0];
    *v11 = MEMORY[0x1E69E7CC0];
    v11[1] = v15;
    v11[2] = v15;
    v11[3] = v15;
    v11[4] = v15;
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v16 = *(v7 + 40);
    v17 = type metadata accessor for Siri_Nlu_External_SemVer(0);
    OUTLINED_FUNCTION_43(v11 + v16, v18, v19, v17);
    v20 = OUTLINED_FUNCTION_120();
    if (__swift_getEnumTagSinglePayload(v20, v21, v7) != 1)
    {
      sub_1C8778ED8(v6, &qword_1EC2B61D0, &qword_1C8C0C1E0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_8();
    sub_1C879A6C4(v6, v11, v22);
  }

  v23 = v11[2];

  OUTLINED_FUNCTION_0_7();
  v25 = sub_1C882F0FC(v11, v24);
  MEMORY[0x1EEE9AC00](v25);
  *&v29[-16] = v1;
  v26 = sub_1C8886B28(sub_1C882F080, &v29[-32], v23);

  if (v26)
  {
    v27 = 1;
  }

  else
  {
    v27 = sub_1C882E99C(a1);
  }

  return v27 & 1;
}

uint64_t sub_1C882E704(uint64_t a1)
{
  v3 = sub_1C8BD493C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Siri_Nlu_External_UsoEntityIdentifier(0);
  v8 = v7;
  v9 = a1 + *(v7 + 20);
  if ((*(v9 + 4) & 1) == 0 && *v9)
  {
    goto LABEL_3;
  }

  v11 = (a1 + *(v7 + 24));
  v12 = v11[1];
  v26[1] = v1;
  if (v12)
  {
    v13 = *v11;
    v14 = v12;
  }

  else
  {
    v13 = 0;
    v14 = 0xE000000000000000;
  }

  if (v13 == 0xD000000000000015 && 0x80000001C8C1FA90 == v14)
  {
  }

  else
  {
    v16 = sub_1C8BD529C();

    if ((v16 & 1) == 0)
    {
      v10 = 0;
      return v10 & 1;
    }
  }

  Siri_Nlu_External_UsoEntityIdentifier.namespace.getter();
  v17 = sub_1C8BD490C();
  v19 = v18;
  (*(v4 + 8))(v6, v3);
  if (v17 == 0xD000000000000010 && 0x80000001C8C1FAB0 == v19)
  {
  }

  else
  {
    v21 = sub_1C8BD529C();

    if ((v21 & 1) == 0)
    {
LABEL_3:
      v10 = 0;
      return v10 & 1;
    }
  }

  v22 = (a1 + *(v8 + 28));
  v23 = v22[1];
  if (v23 && (v23 == 0xE400000000000000 ? (v24 = *v22 == 1702195828) : (v24 = 0), v24))
  {

    v10 = 1;
  }

  else
  {
    v10 = sub_1C8BD529C();
  }

  return v10 & 1;
}

uint64_t sub_1C882E99C(uint64_t a1)
{
  sub_1C8BD499C();
  OUTLINED_FUNCTION_13_1();
  v108 = v3;
  v109 = v2;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_10_0();
  v107 = v4;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v5);
  v106 = &v104 - v6;
  type metadata accessor for Siri_Nlu_External_UsoNode(0);
  OUTLINED_FUNCTION_13_1();
  v115 = v8;
  v116 = v7;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_10_0();
  v105 = v9;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v10);
  v112 = &v104 - v11;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v104 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61D0, &qword_1C8C0C1E0);
  v16 = OUTLINED_FUNCTION_80(v15);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_10_0();
  v111 = v17;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v18);
  v114 = &v104 - v19;
  OUTLINED_FUNCTION_83_0();
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v104 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v104 - v24;
  v26 = type metadata accessor for Siri_Nlu_External_UsoGraph(0);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_10_0();
  v110 = v28;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v29);
  v113 = (&v104 - v30);
  OUTLINED_FUNCTION_83_0();
  v32 = MEMORY[0x1EEE9AC00](v31);
  v34 = (&v104 - v33);
  MEMORY[0x1EEE9AC00](v32);
  v36 = (&v104 - v35);
  v117 = *(type metadata accessor for Siri_Nlu_External_UserStatedTask(0) + 20);
  sub_1C8786744(a1 + v117, v25, &qword_1EC2B61D0, &qword_1C8C0C1E0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v25, 1, v26);
  v38 = MEMORY[0x1E69E7CC0];
  if (EnumTagSinglePayload == 1)
  {
    *v36 = MEMORY[0x1E69E7CC0];
    v36[1] = v38;
    v36[2] = v38;
    v36[3] = v38;
    v36[4] = v38;
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v39 = *(v26 + 40);
    v40 = type metadata accessor for Siri_Nlu_External_SemVer(0);
    OUTLINED_FUNCTION_43(v36 + v39, v41, v42, v40);
    OUTLINED_FUNCTION_66_0(v25);
    if (!v43)
    {
      sub_1C8778ED8(v25, &qword_1EC2B61D0, &qword_1C8C0C1E0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_8();
    sub_1C879A6C4(v25, v36, v44);
  }

  v45 = *v36;

  OUTLINED_FUNCTION_0_7();
  sub_1C882F0FC(v36, v46);
  v47 = *(v45 + 16);

  if (v47 < 2)
  {
    v48 = 0;
    return v48 & 1;
  }

  v50 = a1;
  sub_1C8786744(a1 + v117, v23, &qword_1EC2B61D0, &qword_1C8C0C1E0);
  v51 = OUTLINED_FUNCTION_66_0(v23);
  if (v43)
  {
    OUTLINED_FUNCTION_15_5(v51);
    v52 = *(v26 + 40);
    v53 = type metadata accessor for Siri_Nlu_External_SemVer(0);
    OUTLINED_FUNCTION_43(v34 + v52, v54, v55, v53);
    OUTLINED_FUNCTION_66_0(v23);
    v58 = v115;
    v57 = v116;
    if (!v43)
    {
      sub_1C8778ED8(v23, &qword_1EC2B61D0, &qword_1C8C0C1E0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_8();
    sub_1C879A6C4(v23, v34, v56);
    v58 = v115;
    v57 = v116;
  }

  v59 = *v34;

  OUTLINED_FUNCTION_0_7();
  result = sub_1C882F0FC(v34, v60);
  if (!*(v59 + 16))
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v61 = (*(v58 + 80) + 32) & ~*(v58 + 80);
  OUTLINED_FUNCTION_3_7();
  sub_1C882F0A0(v59 + v61, v14, v62);

  v63 = &v14[*(v57 + 24)];
  v64 = *v63;
  v65 = v63[4];
  OUTLINED_FUNCTION_2_13();
  sub_1C882F0FC(v14, v66);
  v48 = 0;
  if ((v65 & 1) != 0 || v64 != 1)
  {
    return v48 & 1;
  }

  v67 = v114;
  sub_1C8786744(v50 + v117, v114, &qword_1EC2B61D0, &qword_1C8C0C1E0);
  v68 = OUTLINED_FUNCTION_66_0(v67);
  if (v43)
  {
    v73 = v113;
    OUTLINED_FUNCTION_15_5(v68);
    v69 = *(v26 + 40);
    v70 = type metadata accessor for Siri_Nlu_External_SemVer(0);
    OUTLINED_FUNCTION_43(v73 + v69, v71, v72, v70);
    OUTLINED_FUNCTION_66_0(v67);
    if (!v43)
    {
      sub_1C8778ED8(v67, &qword_1EC2B61D0, &qword_1C8C0C1E0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_8();
    v73 = v113;
    sub_1C879A6C4(v67, v113, v74);
  }

  v75 = *v73;

  OUTLINED_FUNCTION_0_7();
  result = sub_1C882F0FC(v73, v76);
  if (*(v75 + 16) < 2uLL)
  {
    goto LABEL_29;
  }

  v77 = *(v58 + 72);
  OUTLINED_FUNCTION_3_7();
  v79 = v112;
  sub_1C882F0A0(v78 + v77, v112, v80);

  v81 = v79 + *(v57 + 24);
  v82 = *v81;
  v83 = *(v81 + 4);
  OUTLINED_FUNCTION_2_13();
  sub_1C882F0FC(v79, v84);
  v48 = 0;
  if ((v83 & 1) != 0 || v82 != 3108)
  {
    return v48 & 1;
  }

  v85 = v111;
  sub_1C8786744(v50 + v117, v111, &qword_1EC2B61D0, &qword_1C8C0C1E0);
  OUTLINED_FUNCTION_66_0(v85);
  if (v43)
  {
    v90 = v110;
    *v110 = v38;
    v90[1] = v38;
    v90[2] = v38;
    v90[3] = v38;
    v90[4] = v38;
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v86 = *(v26 + 40);
    v87 = type metadata accessor for Siri_Nlu_External_SemVer(0);
    OUTLINED_FUNCTION_43(v90 + v86, v88, v89, v87);
    OUTLINED_FUNCTION_66_0(v85);
    if (!v43)
    {
      sub_1C8778ED8(v85, &qword_1EC2B61D0, &qword_1C8C0C1E0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_8();
    v90 = v110;
    sub_1C879A6C4(v85, v110, v91);
  }

  v92 = *v90;

  OUTLINED_FUNCTION_0_7();
  result = sub_1C882F0FC(v90, v93);
  if (*(v92 + 16) >= 2uLL)
  {
    OUTLINED_FUNCTION_3_7();
    v95 = v94 + v77;
    v96 = v105;
    sub_1C882F0A0(v95, v105, v97);

    v98 = v106;
    Siri_Nlu_External_UsoNode.usoVerbElementID.getter();
    OUTLINED_FUNCTION_2_13();
    sub_1C882F0FC(v96, v99);
    v100 = v107;
    sub_1C8BD494C();
    v48 = MEMORY[0x1CCA7DA50](v98, v100);
    v101 = *(v108 + 8);
    v102 = v100;
    v103 = v109;
    v101(v102, v109);
    v101(v98, v103);
    return v48 & 1;
  }

LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_1C882F0A0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_21();
  v4 = OUTLINED_FUNCTION_218();
  v5(v4);
  return a2;
}

uint64_t sub_1C882F0FC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_21();
  (*(v3 + 8))(a1);
  return a1;
}

void Siri_Nlu_External_NluRouter_NLRouterServiceResponse.routingDecision.getter()
{
  v1 = OUTLINED_FUNCTION_207();
  v2 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterServiceResponse(v1);
  OUTLINED_FUNCTION_63_2(*(v0 + *(v2 + 28)));
}

uint64_t Siri_Nlu_External_NluRouter_NLRouterServiceResponse.routingDecision.setter()
{
  v2 = OUTLINED_FUNCTION_54_2();
  result = type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterServiceResponse(v2);
  *(v1 + *(result + 28)) = v0;
  return result;
}

uint64_t (*Siri_Nlu_External_NluRouter_NLRouterServiceResponse.routingDecision.modify(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_55_0(a1);
  v2 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterServiceResponse(v1);
  OUTLINED_FUNCTION_53_3(*(v2 + 28));
  OUTLINED_FUNCTION_24_5(v3);
  return j_j__OUTLINED_FUNCTION_158;
}

void Siri_Nlu_External_NluRouter_NLRouterServiceResponse.status.getter()
{
  v1 = OUTLINED_FUNCTION_207();
  v2 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterServiceResponse(v1);
  OUTLINED_FUNCTION_63_2(*(v0 + *(v2 + 32)));
}

uint64_t Siri_Nlu_External_NluRouter_NLRouterServiceResponse.status.setter()
{
  v2 = OUTLINED_FUNCTION_54_2();
  result = type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterServiceResponse(v2);
  *(v1 + *(result + 32)) = v0;
  return result;
}

uint64_t (*Siri_Nlu_External_NluRouter_NLRouterServiceResponse.status.modify(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_55_0(a1);
  v2 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterServiceResponse(v1);
  OUTLINED_FUNCTION_53_3(*(v2 + 32));
  OUTLINED_FUNCTION_24_5(v3);
  return j_j__OUTLINED_FUNCTION_158;
}

uint64_t Siri_Nlu_External_NluRouter_NLRouterServiceResponse.siriXRewriteUtterances.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Siri_Nlu_External_NluRouter_NLRouterServiceResponse.queryRewrites.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

void Siri_Nlu_External_NluRouter_NLRouterServiceResponse.routingDecisionSource.getter()
{
  v1 = OUTLINED_FUNCTION_207();
  v2 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterServiceResponse(v1);
  OUTLINED_FUNCTION_63_2(*(v0 + *(v2 + 36)));
}

uint64_t Siri_Nlu_External_NluRouter_NLRouterServiceResponse.routingDecisionSource.setter()
{
  v2 = OUTLINED_FUNCTION_54_2();
  result = type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterServiceResponse(v2);
  *(v1 + *(result + 36)) = v0;
  return result;
}

uint64_t (*Siri_Nlu_External_NluRouter_NLRouterServiceResponse.routingDecisionSource.modify(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_55_0(a1);
  v2 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterServiceResponse(v1);
  OUTLINED_FUNCTION_53_3(*(v2 + 36));
  OUTLINED_FUNCTION_24_5(v3);
  return j_j__OUTLINED_FUNCTION_158;
}

uint64_t Siri_Nlu_External_NluRouter_NLRouterServiceResponse.genAiMetadata.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = OUTLINED_FUNCTION_220();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_170();
  v9 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterServiceResponse(v8);
  OUTLINED_FUNCTION_73_2(v2 + *(v9 + 40), v1);
  v10 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata(0);
  OUTLINED_FUNCTION_65(v1);
  if (v11)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    *(a1 + *(v10 + 20)) = 5;
    *(a1 + *(v10 + 24)) = 3;
    type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery(0);
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
    result = OUTLINED_FUNCTION_65(v1);
    if (!v11)
    {
      return sub_1C8778ED8(v1, &qword_1EC2B5FA8, &unk_1C8BEBC60);
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_8();
    return sub_1C8830158();
  }

  return result;
}

uint64_t Siri_Nlu_External_NluRouter_NLRouterServiceResponse.genAiMetadata.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterServiceResponse(v1);
  sub_1C8778ED8(v0 + *(v2 + 40), &qword_1EC2B5FA8, &unk_1C8BEBC60);
  OUTLINED_FUNCTION_8_8();
  OUTLINED_FUNCTION_72_1();
  type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.init()@<X0>(uint64_t a2@<X8>)
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v3 = OUTLINED_FUNCTION_44_3();
  *(a2 + v4) = 5;
  *(a2 + *(v3 + 24)) = 3;
  type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery(0);
  OUTLINED_FUNCTION_5();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

void Siri_Nlu_External_NluRouter_NLRouterServiceResponse.genAiMetadata.modify()
{
  OUTLINED_FUNCTION_261();
  v2 = OUTLINED_FUNCTION_251();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  *(v1 + 8) = v6;
  v7 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata(0);
  *(v1 + 16) = v7;
  OUTLINED_FUNCTION_21();
  v9 = *(v8 + 64);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_243(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_168(v12);
  v14 = *(type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterServiceResponse(v13) + 40);
  *(v1 + 40) = v14;
  OUTLINED_FUNCTION_67_2(v0 + v14, v6);
  v15 = OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_76(v15, v16, v7);
  if (v17)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    *(v9 + *(v7 + 20)) = 5;
    *(v9 + *(v7 + 24)) = 3;
    type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery(0);
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
    v22 = OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_76(v22, v23, v7);
    if (!v17)
    {
      sub_1C8778ED8(v6, &qword_1EC2B5FA8, &unk_1C8BEBC60);
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_8();
    sub_1C8830158();
  }

  OUTLINED_FUNCTION_260();
}

uint64_t Siri_Nlu_External_NluRouter_NLRouterServiceResponse.hasGenAiMetadata.getter()
{
  v0 = OUTLINED_FUNCTION_12();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_80(v2);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_74();
  v5 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterServiceResponse(v4);
  v6 = OUTLINED_FUNCTION_13(*(v5 + 40));
  OUTLINED_FUNCTION_94_0(v6, v7);
  v8 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata(0);
  OUTLINED_FUNCTION_10(v8);
  return OUTLINED_FUNCTION_235();
}

Swift::Void __swiftcall Siri_Nlu_External_NluRouter_NLRouterServiceResponse.clearGenAiMetadata()()
{
  v1 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterServiceResponse(0);
  sub_1C8778ED8(v0 + *(v1 + 40), &qword_1EC2B5FA8, &unk_1C8BEBC60);
  type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata(0);
  v2 = OUTLINED_FUNCTION_14_3();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Siri_Nlu_External_NluRouter_NLRouterServiceResponse.heuristicRule.getter()
{
  OUTLINED_FUNCTION_70_1();
  OUTLINED_FUNCTION_8_0(v0);

  return OUTLINED_FUNCTION_218();
}

uint64_t sub_1C882FB68(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_External_NluRouter_NLRouterServiceResponse.heuristicRule.setter(v1, v2);
}

uint64_t Siri_Nlu_External_NluRouter_NLRouterServiceResponse.heuristicRule.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_70_1();
  v6 = (v2 + v5);

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t Siri_Nlu_External_NluRouter_NLRouterServiceResponse.heuristicRule.modify(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[2] = v1;
  OUTLINED_FUNCTION_70_1();
  *(v3 + 8) = v4;
  v5 = OUTLINED_FUNCTION_8_0(v4);
  if (v5)
  {
    v7 = *v6;
    v8 = v5;
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  v3[3] = v5;
  *v3 = v7;
  v3[1] = v8;

  return OUTLINED_FUNCTION_12();
}

Swift::Void __swiftcall Siri_Nlu_External_NluRouter_NLRouterServiceResponse.clearHeuristicRule()()
{
  OUTLINED_FUNCTION_70_1();
  v2 = (v0 + v1);

  *v2 = 0;
  v2[1] = 0;
}

uint64_t Siri_Nlu_External_NluRouter_NLRouterServiceResponse.unknownFields.getter()
{
  v2 = OUTLINED_FUNCTION_207();
  v3 = *(type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterServiceResponse(v2) + 24);
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_21();
  v6 = *(v5 + 16);

  return v6(v0, v1 + v3, v4);
}

uint64_t Siri_Nlu_External_NluRouter_NLRouterServiceResponse.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_241();
  v3 = *(type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterServiceResponse(v2) + 24);
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_21();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

void (*Siri_Nlu_External_NluRouter_NLRouterServiceResponse.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_241();
  type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterServiceResponse(v0);
  return nullsub_1;
}

uint64_t sub_1C882FDFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8832D04();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1C882FE74(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8832CB0();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1C882FEEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8832C5C();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t Siri_Nlu_External_NluRouter_NLRouterServiceResponse.init()@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = v2;
  v3 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterServiceResponse(0);
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  *(a1 + v3[7]) = 7;
  *(a1 + v3[8]) = 6;
  *(a1 + v3[9]) = 4;
  type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata(0);
  OUTLINED_FUNCTION_5();
  result = __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  v9 = (a1 + v3[11]);
  *v9 = 0;
  v9[1] = 0;
  return result;
}

uint64_t Siri_Nlu_External_NluRouter_NLRouterRewriteUtterance.utteranceID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_220();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_74();
  v8 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterRewriteUtterance(v7);
  v9 = OUTLINED_FUNCTION_13(*(v8 + 20));
  OUTLINED_FUNCTION_73_2(v9, v10);
  v11 = type metadata accessor for Siri_Nlu_External_UUID(0);
  OUTLINED_FUNCTION_65(v1);
  if (v12)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_313(a1 + v11[5]);
    OUTLINED_FUNCTION_313(a1 + v11[6]);
    *(a1 + v11[7]) = 6;
    result = OUTLINED_FUNCTION_65(v1);
    if (!v12)
    {
      return sub_1C8778ED8(v1, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_12_7();
    OUTLINED_FUNCTION_121();
    return sub_1C8830158();
  }

  return result;
}

uint64_t sub_1C8830158()
{
  v1 = OUTLINED_FUNCTION_84();
  v2(v1);
  OUTLINED_FUNCTION_21();
  v3 = OUTLINED_FUNCTION_218();
  v4(v3);
  return v0;
}

uint64_t Siri_Nlu_External_NluRouter_NLRouterRewriteUtterance.utteranceID.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterRewriteUtterance(v1);
  sub_1C8778ED8(v0 + *(v2 + 20), &qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_12_7();
  OUTLINED_FUNCTION_72_1();
  type metadata accessor for Siri_Nlu_External_UUID(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_NluRouter_NLRouterRewriteUtterance.utteranceID.modify()
{
  OUTLINED_FUNCTION_261();
  v2 = OUTLINED_FUNCTION_251();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_43_0(v6);
  v8 = type metadata accessor for Siri_Nlu_External_UUID(v7);
  *(v1 + 16) = v8;
  OUTLINED_FUNCTION_21();
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_243(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_168(v13);
  v15 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterRewriteUtterance(v14);
  OUTLINED_FUNCTION_28_5(*(v15 + 20));
  OUTLINED_FUNCTION_5_6();
  if (v16)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_313(v10 + v8[5]);
    OUTLINED_FUNCTION_313(v10 + v8[6]);
    *(v10 + v8[7]) = 6;
    OUTLINED_FUNCTION_5_6();
    if (!v16)
    {
      sub_1C8778ED8(v0, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_12_7();
    OUTLINED_FUNCTION_184();
    sub_1C8830158();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_260();
}

uint64_t sub_1C8830370()
{
  v1 = OUTLINED_FUNCTION_84();
  v2(v1);
  OUTLINED_FUNCTION_21();
  v3 = OUTLINED_FUNCTION_218();
  v4(v3);
  return v0;
}

uint64_t sub_1C88303C4()
{
  v1 = OUTLINED_FUNCTION_241();
  v2(v1);
  OUTLINED_FUNCTION_21();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t Siri_Nlu_External_NluRouter_NLRouterRewriteUtterance.rewriteUtterance.getter()
{
  OUTLINED_FUNCTION_71_0();
  OUTLINED_FUNCTION_8_0(v0);

  return OUTLINED_FUNCTION_218();
}

uint64_t sub_1C88304D4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_External_NluRouter_NLRouterRewriteUtterance.rewriteUtterance.setter(v1, v2);
}

uint64_t Siri_Nlu_External_NluRouter_NLRouterRewriteUtterance.rewriteUtterance.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_71_0();
  v6 = (v2 + v5);

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t Siri_Nlu_External_NluRouter_NLRouterRewriteUtterance.rewriteUtterance.modify(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[2] = v1;
  OUTLINED_FUNCTION_71_0();
  *(v3 + 8) = v4;
  v5 = OUTLINED_FUNCTION_8_0(v4);
  if (v5)
  {
    v7 = *v6;
    v8 = v5;
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  v3[3] = v5;
  *v3 = v7;
  v3[1] = v8;

  return OUTLINED_FUNCTION_12();
}

Swift::Void __swiftcall Siri_Nlu_External_NluRouter_NLRouterRewriteUtterance.clearRewriteUtterance()()
{
  OUTLINED_FUNCTION_71_0();
  v2 = (v0 + v1);

  *v2 = 0;
  v2[1] = 0;
}

void Siri_Nlu_External_NluRouter_NLRouterRewriteUtterance.routingDecision.getter()
{
  v0 = OUTLINED_FUNCTION_207();
  type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterRewriteUtterance(v0);
  OUTLINED_FUNCTION_64_2();
  OUTLINED_FUNCTION_63_2(v1);
}

uint64_t Siri_Nlu_External_NluRouter_NLRouterRewriteUtterance.routingDecision.setter()
{
  v2 = OUTLINED_FUNCTION_54_2();
  result = type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterRewriteUtterance(v2);
  *(v1 + *(result + 28)) = v0;
  return result;
}

uint64_t (*Siri_Nlu_External_NluRouter_NLRouterRewriteUtterance.routingDecision.modify(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_55_0(a1);
  v2 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterRewriteUtterance(v1);
  OUTLINED_FUNCTION_53_3(*(v2 + 28));
  OUTLINED_FUNCTION_24_5(v3);
  return j_j__OUTLINED_FUNCTION_158;
}

BOOL Siri_Nlu_External_NluRouter_NLRouterRewriteUtterance.hasRoutingDecision.getter()
{
  type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterRewriteUtterance(0);
  OUTLINED_FUNCTION_64_2();
  return !v0;
}

uint64_t Siri_Nlu_External_NluRouter_NLRouterRewriteUtterance.correctionOutcome.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_220();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_74();
  v8 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterRewriteUtterance(v7);
  v9 = OUTLINED_FUNCTION_13(*(v8 + 32));
  OUTLINED_FUNCTION_73_2(v9, v10);
  v11 = type metadata accessor for Siri_Nlu_External_CorrectionOutcome(0);
  OUTLINED_FUNCTION_65(v1);
  if (v12)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    *(a1 + *(v11 + 20)) = 2;
    result = OUTLINED_FUNCTION_65(v1);
    if (!v12)
    {
      return sub_1C8778ED8(v1, &qword_1EC2B6EF0, &unk_1C8BEBC70);
    }
  }

  else
  {
    OUTLINED_FUNCTION_11_5();
    OUTLINED_FUNCTION_121();
    return sub_1C8830158();
  }

  return result;
}

uint64_t Siri_Nlu_External_NluRouter_NLRouterRewriteUtterance.correctionOutcome.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterRewriteUtterance(v1);
  sub_1C8778ED8(v0 + *(v2 + 32), &qword_1EC2B6EF0, &unk_1C8BEBC70);
  OUTLINED_FUNCTION_11_5();
  OUTLINED_FUNCTION_72_1();
  type metadata accessor for Siri_Nlu_External_CorrectionOutcome(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_NluRouter_NLRouterRewriteUtterance.correctionOutcome.modify()
{
  OUTLINED_FUNCTION_261();
  v2 = OUTLINED_FUNCTION_251();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_43_0(v6);
  v8 = type metadata accessor for Siri_Nlu_External_CorrectionOutcome(v7);
  *(v1 + 16) = v8;
  OUTLINED_FUNCTION_21();
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_243(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_168(v13);
  v15 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterRewriteUtterance(v14);
  OUTLINED_FUNCTION_28_5(*(v15 + 32));
  OUTLINED_FUNCTION_5_6();
  if (v16)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    *(v10 + *(v8 + 20)) = 2;
    OUTLINED_FUNCTION_5_6();
    if (!v16)
    {
      sub_1C8778ED8(v0, &qword_1EC2B6EF0, &unk_1C8BEBC70);
    }
  }

  else
  {
    OUTLINED_FUNCTION_11_5();
    OUTLINED_FUNCTION_184();
    sub_1C8830158();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_260();
}

uint64_t Siri_Nlu_External_NluRouter_NLRouterRewriteUtterance.hasCorrectionOutcome.getter()
{
  v0 = OUTLINED_FUNCTION_12();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_80(v2);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_74();
  v5 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterRewriteUtterance(v4);
  v6 = OUTLINED_FUNCTION_13(*(v5 + 32));
  OUTLINED_FUNCTION_94_0(v6, v7);
  v8 = type metadata accessor for Siri_Nlu_External_CorrectionOutcome(0);
  OUTLINED_FUNCTION_10(v8);
  return OUTLINED_FUNCTION_235();
}

Swift::Void __swiftcall Siri_Nlu_External_NluRouter_NLRouterRewriteUtterance.clearCorrectionOutcome()()
{
  v1 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterRewriteUtterance(0);
  sub_1C8778ED8(v0 + *(v1 + 32), &qword_1EC2B6EF0, &unk_1C8BEBC70);
  type metadata accessor for Siri_Nlu_External_CorrectionOutcome(0);
  v2 = OUTLINED_FUNCTION_14_3();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t sub_1C8830B2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8837860();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t Siri_Nlu_External_NluRouter_NLRouterRewriteUtterance.init()@<X0>(uint64_t a2@<X8>)
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v3 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterRewriteUtterance(0);
  type metadata accessor for Siri_Nlu_External_UUID(0);
  OUTLINED_FUNCTION_5();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  v8 = (a2 + *(v3 + 24));
  *v8 = 0;
  v8[1] = 0;
  *(a2 + *(v3 + 28)) = 5;
  type metadata accessor for Siri_Nlu_External_CorrectionOutcome(0);
  OUTLINED_FUNCTION_5();

  return __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
}

void Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.prescribedTool.getter()
{
  OUTLINED_FUNCTION_44_3();
  OUTLINED_FUNCTION_64_2();
  OUTLINED_FUNCTION_63_2(v0);
}

uint64_t Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.prescribedTool.setter(char *a1)
{
  v2 = *a1;
  result = OUTLINED_FUNCTION_44_3();
  *(v1 + v4) = v2;
  return result;
}

uint64_t (*Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.prescribedTool.modify(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_55_0(a1);
  v2 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata(v1);
  OUTLINED_FUNCTION_53_3(*(v2 + 20));
  OUTLINED_FUNCTION_24_5(v3);
  return j__OUTLINED_FUNCTION_158;
}

BOOL Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.hasPrescribedTool.getter()
{
  OUTLINED_FUNCTION_44_3();
  OUTLINED_FUNCTION_64_2();
  return !v0;
}

void Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.queryType.getter()
{
  v1 = OUTLINED_FUNCTION_207();
  v2 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata(v1);
  OUTLINED_FUNCTION_63_2(*(v0 + *(v2 + 24)));
}

uint64_t Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.queryType.setter()
{
  v2 = OUTLINED_FUNCTION_54_2();
  result = type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata(v2);
  *(v1 + *(result + 24)) = v0;
  return result;
}

uint64_t (*Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.queryType.modify(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_55_0(a1);
  v2 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata(v1);
  OUTLINED_FUNCTION_53_3(*(v2 + 24));
  OUTLINED_FUNCTION_24_5(v3);
  return j_j__OUTLINED_FUNCTION_158;
}

uint64_t Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.query.getter()
{
  v2 = OUTLINED_FUNCTION_220();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_80(v4);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_170();
  v7 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata(v6);
  OUTLINED_FUNCTION_73_2(v1 + *(v7 + 28), v0);
  type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery(0);
  OUTLINED_FUNCTION_65(v0);
  if (v8)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.Explicit(0);
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
    type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.Implicit(0);
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
    result = OUTLINED_FUNCTION_65(v0);
    if (!v8)
    {
      return sub_1C8778ED8(v0, &qword_1EC2B5F98, &qword_1C8BE6C48);
    }
  }

  else
  {
    OUTLINED_FUNCTION_10_5();
    return sub_1C8830158();
  }

  return result;
}

uint64_t Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.query.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata(v1);
  sub_1C8778ED8(v0 + *(v2 + 28), &qword_1EC2B5F98, &qword_1C8BE6C48);
  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_72_1();
  type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.init()(uint64_t a1)
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery(0);
  type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.Explicit(0);
  OUTLINED_FUNCTION_5();
  __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
  type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.Implicit(0);
  OUTLINED_FUNCTION_5();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

void Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.query.modify()
{
  OUTLINED_FUNCTION_261();
  v2 = OUTLINED_FUNCTION_251();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  *(v1 + 8) = v6;
  v7 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery(0);
  *(v1 + 16) = v7;
  OUTLINED_FUNCTION_21();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_243(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_168(v11);
  v13 = *(type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata(v12) + 28);
  *(v1 + 40) = v13;
  OUTLINED_FUNCTION_67_2(v0 + v13, v6);
  v14 = OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_76(v14, v15, v7);
  if (v16)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.Explicit(0);
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
    type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.Implicit(0);
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
    v25 = OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_76(v25, v26, v7);
    if (!v16)
    {
      sub_1C8778ED8(v6, &qword_1EC2B5F98, &qword_1C8BE6C48);
    }
  }

  else
  {
    OUTLINED_FUNCTION_10_5();
    sub_1C8830158();
  }

  OUTLINED_FUNCTION_260();
}

uint64_t Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.hasQuery.getter()
{
  v0 = OUTLINED_FUNCTION_12();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_80(v2);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_74();
  v5 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata(v4);
  v6 = OUTLINED_FUNCTION_13(*(v5 + 28));
  OUTLINED_FUNCTION_94_0(v6, v7);
  v8 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery(0);
  OUTLINED_FUNCTION_10(v8);
  return OUTLINED_FUNCTION_235();
}

Swift::Void __swiftcall Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.clearQuery()()
{
  v1 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata(0);
  sub_1C8778ED8(v0 + *(v1 + 28), &qword_1EC2B5F98, &qword_1C8BE6C48);
  type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery(0);
  v2 = OUTLINED_FUNCTION_14_3();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t sub_1C88313FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8837908();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1C8831468(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C88378B4();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.explicitQuery.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_220();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_74();
  v8 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery(v7);
  v9 = OUTLINED_FUNCTION_13(*(v8 + 20));
  OUTLINED_FUNCTION_73_2(v9, v10);
  v11 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.Explicit(0);
  OUTLINED_FUNCTION_65(v1);
  if (v12)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    *(a1 + *(v11 + 20)) = 2;
    result = OUTLINED_FUNCTION_65(v1);
    if (!v12)
    {
      return sub_1C8778ED8(v1, &qword_1EC2B6EF8, &qword_1C8BEBC80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9_8();
    OUTLINED_FUNCTION_121();
    return sub_1C8830158();
  }

  return result;
}

uint64_t Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.explicitQuery.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery(v1);
  sub_1C8778ED8(v0 + *(v2 + 20), &qword_1EC2B6EF8, &qword_1C8BEBC80);
  OUTLINED_FUNCTION_9_8();
  OUTLINED_FUNCTION_72_1();
  type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.Explicit(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.Explicit.init()@<X0>(uint64_t a2@<X8>)
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  result = OUTLINED_FUNCTION_45_3();
  *(a2 + v4) = 2;
  return result;
}

void Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.explicitQuery.modify()
{
  OUTLINED_FUNCTION_261();
  v2 = OUTLINED_FUNCTION_251();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_43_0(v6);
  v8 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.Explicit(v7);
  *(v1 + 16) = v8;
  OUTLINED_FUNCTION_21();
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_243(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_168(v13);
  v15 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery(v14);
  OUTLINED_FUNCTION_28_5(*(v15 + 20));
  OUTLINED_FUNCTION_5_6();
  if (v16)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    *(v10 + *(v8 + 20)) = 2;
    OUTLINED_FUNCTION_5_6();
    if (!v16)
    {
      sub_1C8778ED8(v0, &qword_1EC2B6EF8, &qword_1C8BEBC80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9_8();
    OUTLINED_FUNCTION_184();
    sub_1C8830158();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_260();
}

uint64_t sub_1C88317C0()
{
  OUTLINED_FUNCTION_50();
  v6 = v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v7);
  OUTLINED_FUNCTION_80(v8);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v9);
  v10 = OUTLINED_FUNCTION_65_0();
  v11 = v2(v10);
  sub_1C8786744(v1 + *(v11 + 20), v4, v6, v3);
  v12 = v0(0);
  OUTLINED_FUNCTION_76(v4, 1, v12);
  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = 1;
  }

  sub_1C8778ED8(v4, v6, v3);
  return v14;
}

uint64_t sub_1C88318B8()
{
  OUTLINED_FUNCTION_50();
  v5 = v4(0);
  sub_1C8778ED8(v1 + *(v5 + 20), v3, v2);
  v0(0);
  OUTLINED_FUNCTION_5();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.implicitQuery.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_74();
  v6 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery(v5);
  v7 = OUTLINED_FUNCTION_13(*(v6 + 24));
  OUTLINED_FUNCTION_73_2(v7, v8);
  type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.Implicit(0);
  OUTLINED_FUNCTION_65(v0);
  if (v9)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    result = OUTLINED_FUNCTION_65(v0);
    if (!v9)
    {
      return sub_1C8778ED8(v0, &qword_1EC2B6F00, &qword_1C8BEBC88);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7_9();
    OUTLINED_FUNCTION_121();
    return sub_1C8830158();
  }

  return result;
}

uint64_t sub_1C8831A0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(char *))
{
  v8 = (a5)(0, a2, a3, a4);
  OUTLINED_FUNCTION_80(v8);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v13 - v10;
  sub_1C8830370();
  return a7(v11);
}

uint64_t Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.implicitQuery.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery(v1);
  sub_1C8778ED8(v0 + *(v2 + 24), &qword_1EC2B6F00, &qword_1C8BEBC88);
  OUTLINED_FUNCTION_7_9();
  OUTLINED_FUNCTION_72_1();
  type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.Implicit(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.implicitQuery.modify()
{
  OUTLINED_FUNCTION_261();
  v2 = OUTLINED_FUNCTION_251();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_43_0(v6);
  *(v1 + 16) = type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.Implicit(v7);
  OUTLINED_FUNCTION_21();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_243(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_168(v11);
  v13 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery(v12);
  OUTLINED_FUNCTION_28_5(*(v13 + 24));
  OUTLINED_FUNCTION_5_6();
  if (v14)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_5_6();
    if (!v14)
    {
      sub_1C8778ED8(v0, &qword_1EC2B6F00, &qword_1C8BEBC88);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7_9();
    OUTLINED_FUNCTION_184();
    sub_1C8830158();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_260();
}

void sub_1C8831C48()
{
  OUTLINED_FUNCTION_124();
  v2 = v1;
  v3 = v0;
  v5 = *(*v4 + 10);
  v6 = (*v4)[3];
  v7 = (*v4)[4];
  v8 = (*v4)[1];
  v9 = **v4;
  if (v10)
  {
    sub_1C8830370();
    sub_1C8778ED8(v9 + v5, v3, v2);
    sub_1C8830158();
    OUTLINED_FUNCTION_26_1();
    sub_1C88303C4();
  }

  else
  {
    sub_1C8778ED8(v9 + v5, v0, v1);
    sub_1C8830158();
    OUTLINED_FUNCTION_26_1();
  }

  free(v7);
  free(v6);
  free(v8);
  OUTLINED_FUNCTION_125();

  free(v11);
}

uint64_t Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.hasImplicitQuery.getter()
{
  v0 = OUTLINED_FUNCTION_12();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_80(v2);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_74();
  v5 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery(v4);
  v6 = OUTLINED_FUNCTION_13(*(v5 + 24));
  OUTLINED_FUNCTION_94_0(v6, v7);
  v8 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.Implicit(0);
  OUTLINED_FUNCTION_10(v8);
  return OUTLINED_FUNCTION_235();
}

Swift::Void __swiftcall Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.clearImplicitQuery()()
{
  v1 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery(0);
  sub_1C8778ED8(v0 + *(v1 + 24), &qword_1EC2B6F00, &qword_1C8BEBC88);
  type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.Implicit(0);
  v2 = OUTLINED_FUNCTION_14_3();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.Explicit.partner.getter@<X0>(_BYTE *a1@<X8>)
{
  result = OUTLINED_FUNCTION_45_3();
  *a1 = *(v1 + v4) & 1;
  return result;
}

uint64_t sub_1C8831E5C@<X0>(_BYTE *a1@<X8>)
{
  result = Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.Explicit.partner.getter(&v3);
  *a1 = v3;
  return result;
}

uint64_t Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.Explicit.partner.setter(char *a1)
{
  v2 = *a1;
  result = OUTLINED_FUNCTION_45_3();
  *(v1 + v4) = v2;
  return result;
}

uint64_t (*Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.Explicit.partner.modify(void *a1))(uint64_t result)
{
  v2 = OUTLINED_FUNCTION_55_0(a1);
  v3 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.Explicit(v2);
  OUTLINED_FUNCTION_53_3(*(v3 + 20));
  *(v1 + 12) = v4 & 1;
  return j__OUTLINED_FUNCTION_158;
}

SiriNLUTypes::Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata::AjaxQuery::Explicit::GenAIPartner_optional __swiftcall Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.Explicit.GenAIPartner.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1C8831FE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C883795C();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1C8832048@<X0>(uint64_t *a1@<X8>)
{
  result = Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.Explicit.GenAIPartner.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1C88320FC()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B3608);
  __swift_project_value_buffer(v0, qword_1EC2B3608);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE7150;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "routing_decision";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "status";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "siri_x_rewrite_utterances";
  *(v12 + 1) = 25;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "query_rewrites";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "routingDecisionSource";
  *(v16 + 1) = 21;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "gen_ai_metadata";
  *(v18 + 1) = 15;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "heuristic_rule";
  *(v20 + 1) = 14;
  v20[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_External_NluRouter_NLRouterServiceResponse.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    OUTLINED_FUNCTION_97();
    result = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_8();
        sub_1C8833FBC();
        break;
      case 2:
        v15 = OUTLINED_FUNCTION_8();
        sub_1C8832538(v15, v16, v17, v18);
        break;
      case 3:
        v7 = OUTLINED_FUNCTION_8();
        sub_1C88325AC(v7, v8, v9, v10);
        break;
      case 4:
        v11 = OUTLINED_FUNCTION_8();
        sub_1C883264C(v11, v12, v13, v14);
        break;
      case 5:
        v3 = OUTLINED_FUNCTION_8();
        sub_1C88326EC(v3, v4, v5, v6);
        break;
      case 6:
        v19 = OUTLINED_FUNCTION_8();
        sub_1C8832760(v19, v20, v21, v22);
        break;
      case 7:
        v23 = OUTLINED_FUNCTION_8();
        sub_1C8832814(v23, v24, v25, v26);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C8832538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterServiceResponse(0);
  sub_1C8832CB0();
  return sub_1C8BD4B4C();
}

uint64_t sub_1C88325AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterRewriteUtterance(0);
  sub_1C8832C14(&qword_1EC2B3530, type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterRewriteUtterance, &protocol conformance descriptor for Siri_Nlu_External_NluRouter_NLRouterRewriteUtterance);
  return sub_1C8BD4C6C();
}

uint64_t sub_1C883264C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterRewriteUtterance(0);
  sub_1C8832C14(&qword_1EC2B3530, type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterRewriteUtterance, &protocol conformance descriptor for Siri_Nlu_External_NluRouter_NLRouterRewriteUtterance);
  return sub_1C8BD4C6C();
}

uint64_t sub_1C88326EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterServiceResponse(0);
  sub_1C8832C5C();
  return sub_1C8BD4B4C();
}

uint64_t sub_1C8832760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterServiceResponse(0);
  type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata(0);
  sub_1C8832C14(&qword_1EC2B36D0, type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata, &protocol conformance descriptor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata);
  return sub_1C8BD4C7C();
}

void Siri_Nlu_External_NluRouter_NLRouterServiceResponse.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5FA8, &unk_1C8BEBC60);
  OUTLINED_FUNCTION_80(v4);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_74();
  v7 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata(v6);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_33();
  v9 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterServiceResponse(0);
  if (*(v0 + v9[7]) == 7 || (sub_1C8832D04(), OUTLINED_FUNCTION_50_3(), sub_1C8BD4D4C(), (v3 = v1) == 0))
  {
    if (*(v0 + v9[8]) == 6 || (sub_1C8832CB0(), OUTLINED_FUNCTION_50_3(), sub_1C8BD4D4C(), (v3 = v1) == 0))
    {
      if (!*(*v0 + 16) || (type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterRewriteUtterance(0), OUTLINED_FUNCTION_35_2(), sub_1C8832C14(v10, v11, &protocol conformance descriptor for Siri_Nlu_External_NluRouter_NLRouterRewriteUtterance), OUTLINED_FUNCTION_117(), OUTLINED_FUNCTION_39_3(), sub_1C8BD4E0C(), (v3 = v1) == 0))
      {
        if (!*(v0[1] + 16) || (type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterRewriteUtterance(0), OUTLINED_FUNCTION_35_2(), sub_1C8832C14(v12, v13, &protocol conformance descriptor for Siri_Nlu_External_NluRouter_NLRouterRewriteUtterance), OUTLINED_FUNCTION_117(), OUTLINED_FUNCTION_39_3(), sub_1C8BD4E0C(), (v3 = v1) == 0))
        {
          if (*(v0 + v9[9]) == 4 || (sub_1C8832C5C(), OUTLINED_FUNCTION_39_3(), sub_1C8BD4D4C(), (v3 = v1) == 0))
          {
            sub_1C8786744(v0 + v9[10], v2, &qword_1EC2B5FA8, &unk_1C8BEBC60);
            if (__swift_getEnumTagSinglePayload(v2, 1, v7) == 1)
            {
              sub_1C8778ED8(v2, &qword_1EC2B5FA8, &unk_1C8BEBC60);
            }

            else
            {
              sub_1C8830158();
              sub_1C8832C14(&qword_1EC2B36D0, type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata, &protocol conformance descriptor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata);
              OUTLINED_FUNCTION_39_3();
              sub_1C8BD4E2C();
              v3 = v1;
              sub_1C88303C4();
              if (v1)
              {
                goto LABEL_17;
              }
            }

            if (!*(v0 + v9[11] + 8) || (sub_1C8BD4DDC(), !v3))
            {
              sub_1C8BD49DC();
            }
          }
        }
      }
    }
  }

LABEL_17:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

uint64_t sub_1C8832C14(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1C8832C5C()
{
  result = qword_1EC2B35D8;
  if (!qword_1EC2B35D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B35D8);
  }

  return result;
}

unint64_t sub_1C8832CB0()
{
  result = qword_1EC2B3688;
  if (!qword_1EC2B3688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B3688);
  }

  return result;
}

unint64_t sub_1C8832D04()
{
  result = qword_1EC2B3640;
  if (!qword_1EC2B3640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B3640);
  }

  return result;
}

uint64_t sub_1C8833168(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8832C14(&qword_1EC2B70B0, type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterServiceResponse, &protocol conformance descriptor for Siri_Nlu_External_NluRouter_NLRouterServiceResponse);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C88331E8(uint64_t a1)
{
  v2 = sub_1C8832C14(&qword_1EC2B7038, type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterServiceResponse, &protocol conformance descriptor for Siri_Nlu_External_NluRouter_NLRouterServiceResponse);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8833258(uint64_t a1, uint64_t a2)
{
  sub_1C8832C14(&qword_1EC2B7038, type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterServiceResponse, &protocol conformance descriptor for Siri_Nlu_External_NluRouter_NLRouterServiceResponse);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C88332D8()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B3650);
  __swift_project_value_buffer(v0, qword_1EC2B3650);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE7150;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "NL_ROUTING_DECISION_UNSET";
  *(v6 + 8) = 25;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "NL_ROUTING_DECISION_SIRI_X_NO_REWRITE";
  *(v10 + 8) = 37;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "NL_ROUTING_DECISION_SIRI_X_REWRITE";
  *(v12 + 1) = 34;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "NL_ROUTING_DECISION_PLANNER";
  *(v14 + 1) = 27;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "NL_ROUTING_DECISION_QUERY_REWRITE";
  *(v16 + 1) = 33;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "NL_ROUTING_DECISION_GEN_AI";
  *(v18 + 1) = 26;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "NL_ROUTING_DECISION_SEARCH";
  *(v20 + 1) = 26;
  v20[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C88335F8()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B3698);
  __swift_project_value_buffer(v0, qword_1EC2B3698);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE7160;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "NL_ROUTER_SERVICE_RESPONSE_STATUS_UNSET";
  *(v6 + 8) = 39;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "NL_ROUTER_SERVICE_RESPONSE_STATUS_SUCCEEDED";
  *(v10 + 8) = 43;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "NL_ROUTER_SERVICE_RESPONSE_STATUS_CLIENT_NOT_INITIALIZED";
  *(v12 + 1) = 56;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "NL_ROUTER_SERVICE_RESPONSE_STATUS_INPUT_INVALID";
  *(v14 + 1) = 47;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "NL_ROUTER_SERVICE_RESPONSE_STATUS_NO_CLIENT_RESPONSE";
  *(v16 + 1) = 52;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "NL_ROUTER_SERVICE_RESPONSE_STATUS_OVERRIDES_MATCHED";
  *(v18 + 1) = 51;
  v18[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C88338E0()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B35E8);
  __swift_project_value_buffer(v0, qword_1EC2B35E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE68B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "NL_ROUTING_DECISION_SOURCE_UNSET";
  *(v6 + 8) = 32;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "NL_ROUTING_DECISION_SOURCE_OVERRIDE";
  *(v10 + 8) = 35;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "NL_ROUTING_DECISION_SOURCE_MODEL";
  *(v12 + 1) = 32;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "NL_ROUTING_DECISION_SOURCE_HEURISTIC_RULE";
  *(v14 + 1) = 41;
  v14[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C8833B60()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B3540);
  __swift_project_value_buffer(v0, qword_1EC2B3540);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE68B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "utterance_id";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "rewrite_utterance";
  *(v10 + 8) = 17;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "routing_decision";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "correction_outcome";
  *(v14 + 1) = 18;
  v14[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_External_NluRouter_NLRouterRewriteUtterance.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    OUTLINED_FUNCTION_97();
    result = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v3 = OUTLINED_FUNCTION_8();
        sub_1C8833EA4(v3, v4, v5, v6);
        break;
      case 2:
        v11 = OUTLINED_FUNCTION_8();
        sub_1C8833F58(v11, v12, v13, v14);
        break;
      case 3:
        OUTLINED_FUNCTION_8();
        sub_1C8833FBC();
        break;
      case 4:
        v7 = OUTLINED_FUNCTION_8();
        sub_1C883400C(v7, v8, v9, v10);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C8833EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterRewriteUtterance(0);
  type metadata accessor for Siri_Nlu_External_UUID(0);
  sub_1C8832C14(&qword_1EDACCE50, type metadata accessor for Siri_Nlu_External_UUID, &protocol conformance descriptor for Siri_Nlu_External_UUID);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C8833FBC()
{
  v1 = OUTLINED_FUNCTION_47_2();
  v2(v1);
  v3 = v0();
  return OUTLINED_FUNCTION_57_1(v3);
}

uint64_t sub_1C883400C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterRewriteUtterance(0);
  type metadata accessor for Siri_Nlu_External_CorrectionOutcome(0);
  sub_1C8832C14(&qword_1EDACB050, type metadata accessor for Siri_Nlu_External_CorrectionOutcome, &protocol conformance descriptor for Siri_Nlu_External_CorrectionOutcome);
  return sub_1C8BD4C7C();
}

void Siri_Nlu_External_NluRouter_NLRouterRewriteUtterance.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  v2 = v1;
  v26 = v3;
  v27 = v4;
  v25 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6EF0, &unk_1C8BEBC70);
  OUTLINED_FUNCTION_80(v6);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  v23 = &v22 - v8;
  v24 = type metadata accessor for Siri_Nlu_External_CorrectionOutcome(0);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_66_3(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v11);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v22 - v13;
  type metadata accessor for Siri_Nlu_External_UUID(0);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_33();
  v16 = OUTLINED_FUNCTION_65_0();
  v17 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterRewriteUtterance(v16);
  sub_1C8786744(v0 + v17[5], v14, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_33_3();
  if (__swift_getEnumTagSinglePayload(v18, v19, v20) == 1)
  {
    sub_1C8778ED8(v14, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  }

  else
  {
    sub_1C8830158();
    sub_1C8832C14(&qword_1EDACCE50, type metadata accessor for Siri_Nlu_External_UUID, &protocol conformance descriptor for Siri_Nlu_External_UUID);
    OUTLINED_FUNCTION_82_2();
    OUTLINED_FUNCTION_50_3();
    sub_1C8BD4E2C();
    v2 = v1;
    sub_1C88303C4();
    if (v1)
    {
      goto LABEL_12;
    }
  }

  if (!*(v0 + v17[6] + 8) || (v1 = v2, sub_1C8BD4DDC(), !v2))
  {
    if (*(v0 + v17[7]) == 5 || (sub_1C8837860(), OUTLINED_FUNCTION_50_3(), sub_1C8BD4D4C(), !v1))
    {
      v21 = v23;
      sub_1C8786744(v0 + v17[8], v23, &qword_1EC2B6EF0, &unk_1C8BEBC70);
      if (__swift_getEnumTagSinglePayload(v21, 1, v24) == 1)
      {
        sub_1C8778ED8(v21, &qword_1EC2B6EF0, &unk_1C8BEBC70);
LABEL_11:
        OUTLINED_FUNCTION_76_0();
        goto LABEL_12;
      }

      sub_1C8830158();
      sub_1C8832C14(&qword_1EDACB050, type metadata accessor for Siri_Nlu_External_CorrectionOutcome, &protocol conformance descriptor for Siri_Nlu_External_CorrectionOutcome);
      OUTLINED_FUNCTION_50_3();
      sub_1C8BD4E2C();
      sub_1C88303C4();
      if (!v1)
      {
        goto LABEL_11;
      }
    }
  }

LABEL_12:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

void static Siri_Nlu_External_NluRouter_NLRouterRewriteUtterance.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v1 = v0;
  v3 = v2;
  v54 = type metadata accessor for Siri_Nlu_External_CorrectionOutcome(0);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_33();
  v52[1] = v6 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6EF0, &unk_1C8BEBC70);
  OUTLINED_FUNCTION_80(v7);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_66_3(v9);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6F10, &unk_1C8BF50D0);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v10);
  v55 = v52 - v11;
  type metadata accessor for Siri_Nlu_External_UUID(0);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_33();
  v15 = v14 - v13;
  v16 = OUTLINED_FUNCTION_218();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(v16, v17);
  OUTLINED_FUNCTION_80(v18);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v19);
  v21 = v52 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EE8, &unk_1C8BE6F90) - 8;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v23);
  v25 = v52 - v24;
  v56 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterRewriteUtterance(0);
  v57 = v3;
  v26 = *(v56 + 20);
  v27 = *(v22 + 56);
  OUTLINED_FUNCTION_27(v3 + v26, v25);
  OUTLINED_FUNCTION_27(v1 + v26, &v25[v27]);
  OUTLINED_FUNCTION_65(v25);
  if (v28)
  {
    OUTLINED_FUNCTION_65(&v25[v27]);
    if (v28)
    {
      sub_1C8778ED8(v25, &qword_1EC2B5EC8, &unk_1C8BE68C0);
      goto LABEL_14;
    }

LABEL_9:
    v29 = &qword_1EC2B5EE8;
    v30 = &unk_1C8BE6F90;
    v31 = v25;
LABEL_10:
    sub_1C8778ED8(v31, v29, v30);
    goto LABEL_11;
  }

  sub_1C8786744(v25, v21, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_65(&v25[v27]);
  if (v28)
  {
    sub_1C88303C4();
    goto LABEL_9;
  }

  sub_1C8830158();
  v33 = static Siri_Nlu_External_UUID.== infix(_:_:)(v21, v15);
  sub_1C88303C4();
  sub_1C88303C4();
  sub_1C8778ED8(v25, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  if ((v33 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v34 = v56;
  v35 = v57;
  v36 = *(v56 + 24);
  v37 = (v57 + v36);
  v38 = *(v57 + v36 + 8);
  v39 = (v1 + v36);
  v40 = v39[1];
  if (v38)
  {
    if (!v40)
    {
      goto LABEL_11;
    }

    v41 = *v37 == *v39 && v38 == v40;
    if (!v41 && (sub_1C8BD529C() & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (v40)
  {
    goto LABEL_11;
  }

  v42 = *(v34 + 28);
  v43 = *(v35 + v42);
  v44 = *(v1 + v42);
  if (v43 == 5)
  {
    if (v44 != 5)
    {
      goto LABEL_11;
    }
  }

  else if (v43 != v44)
  {
    goto LABEL_11;
  }

  v45 = *(v34 + 32);
  v46 = *(v53 + 48);
  v47 = v55;
  OUTLINED_FUNCTION_27(v35 + v45, v55);
  OUTLINED_FUNCTION_27(v1 + v45, v47 + v46);
  OUTLINED_FUNCTION_76(v47, 1, v54);
  if (v28)
  {
    OUTLINED_FUNCTION_24(v47 + v46);
    if (v28)
    {
      sub_1C8778ED8(v47, &qword_1EC2B6EF0, &unk_1C8BEBC70);
LABEL_37:
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_0_8();
      sub_1C8832C14(v50, v51, MEMORY[0x1E69AAC10]);
      OUTLINED_FUNCTION_97();
      v32 = sub_1C8BD517C();
      goto LABEL_12;
    }

    goto LABEL_35;
  }

  sub_1C8786744(v47, v52[2], &qword_1EC2B6EF0, &unk_1C8BEBC70);
  OUTLINED_FUNCTION_24(v47 + v46);
  if (v48)
  {
    sub_1C88303C4();
LABEL_35:
    v29 = &qword_1EC2B6F10;
    v30 = &unk_1C8BF50D0;
    v31 = v47;
    goto LABEL_10;
  }

  sub_1C8830158();
  v49 = static Siri_Nlu_External_CorrectionOutcome.== infix(_:_:)();
  sub_1C88303C4();
  sub_1C88303C4();
  sub_1C8778ED8(v47, &qword_1EC2B6EF0, &unk_1C8BEBC70);
  if (v49)
  {
    goto LABEL_37;
  }

LABEL_11:
  v32 = 0;
LABEL_12:
  OUTLINED_FUNCTION_157(v32);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C88349E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8832C14(&qword_1EC2B70A8, type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterRewriteUtterance, &protocol conformance descriptor for Siri_Nlu_External_NluRouter_NLRouterRewriteUtterance);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8834A64(uint64_t a1)
{
  v2 = sub_1C8832C14(&qword_1EC2B3530, type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterRewriteUtterance, &protocol conformance descriptor for Siri_Nlu_External_NluRouter_NLRouterRewriteUtterance);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8834AD4(uint64_t a1, uint64_t a2)
{
  sub_1C8832C14(&qword_1EC2B3530, type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterRewriteUtterance, &protocol conformance descriptor for Siri_Nlu_External_NluRouter_NLRouterRewriteUtterance);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8834B54()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B3588);
  __swift_project_value_buffer(v0, qword_1EC2B3588);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BEB0F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "NL_ROUTER_ROUTING_DECISION_UNSET";
  *(v6 + 8) = 32;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "NL_ROUTER_ROUTING_DECISION_SIRI_X";
  *(v10 + 8) = 33;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "NL_ROUTER_ROUTING_DECISION_PLANNER";
  *(v12 + 1) = 34;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "NL_ROUTER_ROUTING_DECISION_GEN_AI";
  *(v14 + 1) = 33;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "NL_ROUTER_ROUTING_DECISION_SEARCH";
  *(v16 + 1) = 33;
  v16[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C8834E0C()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B3738);
  __swift_project_value_buffer(v0, qword_1EC2B3738);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE6F70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "prescribed_tool";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "query_type";
  *(v10 + 1) = 10;
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

uint64_t Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.decodeMessage<A>(decoder:)()
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

    switch(result)
    {
      case 3:
        v7 = OUTLINED_FUNCTION_8();
        sub_1C883516C(v7, v8, v9, v10);
        break;
      case 2:
        v3 = OUTLINED_FUNCTION_8();
        sub_1C88350F8(v3, v4, v5, v6);
        break;
      case 1:
        OUTLINED_FUNCTION_8();
        sub_1C8836E2C();
        break;
    }
  }

  return result;
}

uint64_t sub_1C88350F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata(0);
  sub_1C88378B4();
  return sub_1C8BD4B4C();
}

uint64_t sub_1C883516C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata(0);
  type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery(0);
  sub_1C8832C14(&qword_1EC2B6F20, type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery, &protocol conformance descriptor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery);
  return sub_1C8BD4C7C();
}

void Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5F98, &qword_1C8BE6C48);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_17_4();
  v6 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery(v5);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_33();
  v8 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata(0);
  if (*(v0 + v8[5]) == 5 || (sub_1C8837908(), OUTLINED_FUNCTION_213_0(), sub_1C8BD4D4C(), !v1))
  {
    if (*(v0 + v8[6]) == 3 || (sub_1C88378B4(), OUTLINED_FUNCTION_213_0(), sub_1C8BD4D4C(), !v1))
    {
      sub_1C8786744(v0 + v8[7], v2, &qword_1EC2B5F98, &qword_1C8BE6C48);
      if (__swift_getEnumTagSinglePayload(v2, 1, v6) == 1)
      {
        sub_1C8778ED8(v2, &qword_1EC2B5F98, &qword_1C8BE6C48);
LABEL_8:
        OUTLINED_FUNCTION_15();
        goto LABEL_9;
      }

      sub_1C8830158();
      sub_1C8832C14(&qword_1EC2B6F20, type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery, &protocol conformance descriptor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery);
      OUTLINED_FUNCTION_213_0();
      sub_1C8BD4E2C();
      sub_1C88303C4();
      if (!v1)
      {
        goto LABEL_8;
      }
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

void static Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_124();
  a19 = v23;
  a20 = v24;
  v25 = OUTLINED_FUNCTION_84();
  type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery(v25);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_33();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5F98, &qword_1C8BE6C48);
  OUTLINED_FUNCTION_80(v27);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &a9 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5FA0, &unk_1C8BE6C50);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v32);
  v33 = OUTLINED_FUNCTION_74();
  type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata(v33);
  OUTLINED_FUNCTION_58_1();
  if (v35 == 5)
  {
    if (v34 != 5)
    {
      goto LABEL_18;
    }
  }

  else if (v35 != v34)
  {
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_58_1();
  if (v38 == 3)
  {
    if (v37 != 3)
    {
      goto LABEL_18;
    }
  }

  else if (v38 != v37)
  {
    goto LABEL_18;
  }

  v39 = *(v36 + 28);
  v40 = *(v31 + 48);
  OUTLINED_FUNCTION_67_2(v21 + v39, v22);
  OUTLINED_FUNCTION_67_2(v20 + v39, v22 + v40);
  OUTLINED_FUNCTION_5_6();
  if (v47)
  {
    OUTLINED_FUNCTION_33_3();
    OUTLINED_FUNCTION_76(v41, v42, v43);
    if (v47)
    {
      sub_1C8778ED8(v22, &qword_1EC2B5F98, &qword_1C8BE6C48);
      goto LABEL_21;
    }
  }

  else
  {
    sub_1C8786744(v22, v30, &qword_1EC2B5F98, &qword_1C8BE6C48);
    OUTLINED_FUNCTION_33_3();
    OUTLINED_FUNCTION_76(v44, v45, v46);
    if (!v47)
    {
      sub_1C8830158();
      static Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.== infix(_:_:)();
      v50 = v49;
      OUTLINED_FUNCTION_220();
      sub_1C88303C4();
      sub_1C88303C4();
      sub_1C8778ED8(v22, &qword_1EC2B5F98, &qword_1C8BE6C48);
      if ((v50 & 1) == 0)
      {
        goto LABEL_18;
      }

LABEL_21:
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_0_8();
      sub_1C8832C14(v51, v52, MEMORY[0x1E69AAC10]);
      v53 = OUTLINED_FUNCTION_5_0();
      v48 = OUTLINED_FUNCTION_232_1(v53, v54, v55, v56);
      goto LABEL_19;
    }

    sub_1C88303C4();
  }

  sub_1C8778ED8(v22, &qword_1EC2B5FA0, &unk_1C8BE6C50);
LABEL_18:
  v48 = 0;
LABEL_19:
  OUTLINED_FUNCTION_157(v48);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C8835780(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8832C14(&qword_1EC2B70A0, type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata, &protocol conformance descriptor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8835800(uint64_t a1)
{
  v2 = sub_1C8832C14(&qword_1EC2B36D0, type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata, &protocol conformance descriptor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8835870(uint64_t a1, uint64_t a2)
{
  sub_1C8832C14(&qword_1EC2B36D0, type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata, &protocol conformance descriptor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C88358F0()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B6E30);
  __swift_project_value_buffer(v0, qword_1EC2B6E30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BEB0F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "PRESCRIBED_TOOL_UNSET";
  *(v6 + 8) = 21;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "PRESCRIBED_TOOL_GENERATE_RICH_CONTENT_TOOL";
  *(v10 + 8) = 42;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "PRESCRIBED_TOOL_GENERATE_RICH_CONTENT_FROM_MEDIA_INTENT_TOOL";
  *(v12 + 1) = 60;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "PRESCRIBED_TOOL_GENERATE_IMAGE_INTENT_TOOL";
  *(v14 + 1) = 42;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "PRESCRIBED_TOOL_GENERATE_KNOWLEDGE_RESPONSE_INTENT_TOOL";
  *(v16 + 1) = 55;
  v16[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C8835B94()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B6E48);
  __swift_project_value_buffer(v0, qword_1EC2B6E48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE6F70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "QUERY_TYPE_UNSET";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "QUERY_TYPE_IMPLICIT";
  *(v10 + 1) = 19;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "QUERY_TYPE_EXPLICIT";
  *(v12 + 1) = 19;
  v12[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C8835DBC()
{
  result = MEMORY[0x1CCA7E2D0](0x65755178616A412ELL, 0xEA00000000007972);
  qword_1EC2B6E60 = 0xD000000000000033;
  *algn_1EC2B6E68 = 0x80000001C8C1FB50;
  return result;
}

uint64_t sub_1C8835E4C()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B6E70);
  __swift_project_value_buffer(v0, qword_1EC2B6E70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "explicit_query";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "implicit_query";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.decodeMessage<A>(decoder:)()
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
      v7 = OUTLINED_FUNCTION_8();
      sub_1C8836150(v7, v8, v9, v10);
    }

    else if (result == 1)
    {
      v3 = OUTLINED_FUNCTION_8();
      sub_1C883609C(v3, v4, v5, v6);
    }
  }

  return result;
}

uint64_t sub_1C883609C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery(0);
  type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.Explicit(0);
  sub_1C8832C14(&qword_1EC2B6F48, type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.Explicit, &protocol conformance descriptor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.Explicit);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C8836150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery(0);
  type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.Implicit(0);
  sub_1C8832C14(&qword_1EC2B6F40, type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.Implicit, &protocol conformance descriptor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.Implicit);
  return sub_1C8BD4C7C();
}

void Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  v3 = v0;
  v26 = v4;
  v27 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6F00, &qword_1C8BEBC88);
  OUTLINED_FUNCTION_80(v6);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_17_4();
  v24 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.Implicit(v8);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_33();
  v23[1] = v11 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6EF8, &qword_1C8BEBC80);
  OUTLINED_FUNCTION_80(v12);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v13);
  v15 = v23 - v14;
  type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.Explicit(0);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_33();
  v17 = OUTLINED_FUNCTION_65_0();
  v18 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery(v17);
  v19 = *(v18 + 20);
  v25 = v3;
  sub_1C8786744(v3 + v19, v15, &qword_1EC2B6EF8, &qword_1C8BEBC80);
  OUTLINED_FUNCTION_33_3();
  if (__swift_getEnumTagSinglePayload(v20, v21, v22) == 1)
  {
    sub_1C8778ED8(v15, &qword_1EC2B6EF8, &qword_1C8BEBC80);
  }

  else
  {
    sub_1C8830158();
    sub_1C8832C14(&qword_1EC2B6F48, type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.Explicit, &protocol conformance descriptor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.Explicit);
    OUTLINED_FUNCTION_82_2();
    OUTLINED_FUNCTION_50_3();
    sub_1C8BD4E2C();
    sub_1C88303C4();
    if (v1)
    {
      goto LABEL_8;
    }
  }

  sub_1C8786744(v25 + *(v18 + 24), v2, &qword_1EC2B6F00, &qword_1C8BEBC88);
  if (__swift_getEnumTagSinglePayload(v2, 1, v24) == 1)
  {
    sub_1C8778ED8(v2, &qword_1EC2B6F00, &qword_1C8BEBC88);
LABEL_7:
    OUTLINED_FUNCTION_76_0();
    goto LABEL_8;
  }

  sub_1C8830158();
  sub_1C8832C14(&qword_1EC2B6F40, type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.Implicit, &protocol conformance descriptor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.Implicit);
  OUTLINED_FUNCTION_50_3();
  sub_1C8BD4E2C();
  sub_1C88303C4();
  if (!v1)
  {
    goto LABEL_7;
  }

LABEL_8:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

void static Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v2 = v1;
  v4 = v3;
  v41 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.Implicit(0);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_33();
  v38[1] = v7 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6F00, &qword_1C8BEBC88);
  OUTLINED_FUNCTION_80(v8);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_66_3(v10);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6F50, &qword_1C8BEBC90);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v11);
  v42 = v38 - v12;
  type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.Explicit(0);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_33();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6EF8, &qword_1C8BEBC80);
  OUTLINED_FUNCTION_80(v14);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v15);
  v17 = v38 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6F58, &qword_1C8BEBC98) - 8;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v19);
  v20 = OUTLINED_FUNCTION_17_4();
  v39 = type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery(v20);
  v21 = *(v39 + 20);
  v22 = *(v18 + 56);
  v43 = v4;
  sub_1C8786744(v4 + v21, v0, &qword_1EC2B6EF8, &qword_1C8BEBC80);
  sub_1C8786744(v2 + v21, v0 + v22, &qword_1EC2B6EF8, &qword_1C8BEBC80);
  OUTLINED_FUNCTION_24(v0);
  if (v23)
  {
    OUTLINED_FUNCTION_24(v0 + v22);
    if (v23)
    {
      sub_1C8778ED8(v0, &qword_1EC2B6EF8, &qword_1C8BEBC80);
      goto LABEL_11;
    }

LABEL_9:
    v24 = &qword_1EC2B6F58;
    v25 = &qword_1C8BEBC98;
    v26 = v0;
LABEL_20:
    sub_1C8778ED8(v26, v24, v25);
    goto LABEL_21;
  }

  sub_1C8786744(v0, v17, &qword_1EC2B6EF8, &qword_1C8BEBC80);
  OUTLINED_FUNCTION_24(v0 + v22);
  if (v23)
  {
    sub_1C88303C4();
    goto LABEL_9;
  }

  sub_1C8830158();
  v27 = static Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.Explicit.== infix(_:_:)();
  sub_1C88303C4();
  sub_1C88303C4();
  sub_1C8778ED8(v0, &qword_1EC2B6EF8, &qword_1C8BEBC80);
  if ((v27 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_11:
  v28 = *(v39 + 24);
  v29 = *(v40 + 48);
  v30 = v42;
  OUTLINED_FUNCTION_27(v43 + v28, v42);
  OUTLINED_FUNCTION_27(v2 + v28, v30 + v29);
  OUTLINED_FUNCTION_76(v30, 1, v41);
  if (v23)
  {
    OUTLINED_FUNCTION_24(v30 + v29);
    if (v23)
    {
      sub_1C8778ED8(v30, &qword_1EC2B6F00, &qword_1C8BEBC88);
LABEL_24:
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_0_8();
      sub_1C8832C14(v36, v37, MEMORY[0x1E69AAC10]);
      v32 = sub_1C8BD517C();
      goto LABEL_22;
    }

    goto LABEL_19;
  }

  sub_1C8786744(v30, v38[2], &qword_1EC2B6F00, &qword_1C8BEBC88);
  OUTLINED_FUNCTION_24(v30 + v29);
  if (v31)
  {
    sub_1C88303C4();
LABEL_19:
    v24 = &qword_1EC2B6F50;
    v25 = &qword_1C8BEBC90;
    v26 = v30;
    goto LABEL_20;
  }

  sub_1C8830158();
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_0_8();
  sub_1C8832C14(v33, v34, MEMORY[0x1E69AAC10]);
  OUTLINED_FUNCTION_184();
  v35 = sub_1C8BD517C();
  sub_1C88303C4();
  OUTLINED_FUNCTION_121();
  sub_1C88303C4();
  sub_1C8778ED8(v30, &qword_1EC2B6F00, &qword_1C8BEBC88);
  if (v35)
  {
    goto LABEL_24;
  }

LABEL_21:
  v32 = 0;
LABEL_22:
  OUTLINED_FUNCTION_157(v32);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C8836A64(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8832C14(&qword_1EC2B7098, type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery, &protocol conformance descriptor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8836AE4(uint64_t a1)
{
  v2 = sub_1C8832C14(&qword_1EC2B6F20, type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery, &protocol conformance descriptor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8836B54(uint64_t a1, uint64_t a2)
{
  sub_1C8832C14(&qword_1EC2B6F20, type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery, &protocol conformance descriptor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8836C14()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B6E98);
  __swift_project_value_buffer(v0, qword_1EC2B6E98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1C8BE6F30;
  v4 = v3 + v2 + v1[14];
  *(v3 + v2) = 1;
  *v4 = "partner";
  *(v4 + 8) = 7;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1C8BD50FC();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.Explicit.decodeMessage<A>(decoder:)()
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
      sub_1C8836E2C();
    }
  }

  return result;
}

uint64_t sub_1C8836E2C()
{
  v1 = OUTLINED_FUNCTION_47_2();
  v2(v1);
  v3 = v0();
  return OUTLINED_FUNCTION_57_1(v3);
}

uint64_t Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.Explicit.traverse<A>(visitor:)()
{
  v2 = OUTLINED_FUNCTION_17();
  if (*(v0 + *(type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.Explicit(v2) + 20)) == 2)
  {
    return OUTLINED_FUNCTION_15();
  }

  sub_1C883795C();
  OUTLINED_FUNCTION_213_0();
  result = sub_1C8BD4D4C();
  if (!v1)
  {
    return OUTLINED_FUNCTION_15();
  }

  return result;
}

uint64_t static Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.Explicit.== infix(_:_:)()
{
  v0 = OUTLINED_FUNCTION_84();
  type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.Explicit(v0);
  OUTLINED_FUNCTION_58_1();
  if (v2 != 2)
  {
    if (v1 == 2 || ((v1 ^ v2) & 1) != 0)
    {
      return 0;
    }

LABEL_6:
    sub_1C8BD49FC();
    OUTLINED_FUNCTION_0_8();
    sub_1C8832C14(v3, v4, MEMORY[0x1E69AAC10]);
    v5 = OUTLINED_FUNCTION_5_0();
    return OUTLINED_FUNCTION_232_1(v5, v6, v7, v8) & 1;
  }

  if (v1 == 2)
  {
    goto LABEL_6;
  }

  return 0;
}

uint64_t sub_1C883702C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8832C14(&qword_1EC2B7090, type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.Explicit, &protocol conformance descriptor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.Explicit);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C88370AC(uint64_t a1)
{
  v2 = sub_1C8832C14(&qword_1EC2B6F48, type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.Explicit, &protocol conformance descriptor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.Explicit);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C883711C(uint64_t a1, uint64_t a2)
{
  sub_1C8832C14(&qword_1EC2B6F48, type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.Explicit, &protocol conformance descriptor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.Explicit);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C883719C()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B6EB0);
  __swift_project_value_buffer(v0, qword_1EC2B6EB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "GEN_AI_PARTNER_UNSET";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "GEN_AI_PARTNER_CHATGPT";
  *(v10 + 1) = 22;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C88373AC()
{
  OUTLINED_FUNCTION_50();
  if (qword_1EC2B4D78 != -1)
  {
    swift_once();
  }

  v4 = qword_1EC2B6E60;
  v5 = *algn_1EC2B6E68;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](v2, 0xE900000000000074);

  *v1 = v4;
  *v0 = v5;
  return result;
}

uint64_t sub_1C8837478(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  return OUTLINED_FUNCTION_5_0();
}

uint64_t sub_1C88374C8()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B6ED8);
  __swift_project_value_buffer(v0, qword_1EC2B6ED8);
  return sub_1C8BD511C();
}

uint64_t Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.Implicit.decodeMessage<A>(decoder:)()
{
  do
  {
    OUTLINED_FUNCTION_121();
    result = sub_1C8BD4AFC();
  }

  while (!v0 && (v2 & 1) == 0);
  return result;
}

uint64_t static Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.Implicit.== infix(_:_:)()
{
  OUTLINED_FUNCTION_84();
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_0_8();
  sub_1C8832C14(v0, v1, MEMORY[0x1E69AAC10]);
  v2 = OUTLINED_FUNCTION_5_0();
  return OUTLINED_FUNCTION_232_1(v2, v3, v4, v5) & 1;
}

uint64_t sub_1C883763C()
{
  OUTLINED_FUNCTION_50();
  v2 = v1;
  sub_1C8BD530C();
  v2(0);
  v3 = OUTLINED_FUNCTION_184();
  sub_1C8832C14(v3, v4, v0);
  sub_1C8BD515C();
  return sub_1C8BD531C();
}

uint64_t sub_1C88376F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8832C14(&qword_1EC2B7088, type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.Implicit, &protocol conformance descriptor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.Implicit);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8837770(uint64_t a1)
{
  v2 = sub_1C8832C14(&qword_1EC2B6F40, type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.Implicit, &protocol conformance descriptor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.Implicit);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C88377E0(uint64_t a1, uint64_t a2)
{
  sub_1C8832C14(&qword_1EC2B6F40, type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.Implicit, &protocol conformance descriptor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.Implicit);

  return sub_1C8BD4CFC();
}

unint64_t sub_1C8837860()
{
  result = qword_1EC2B3578;
  if (!qword_1EC2B3578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B3578);
  }

  return result;
}

unint64_t sub_1C88378B4()
{
  result = qword_1EC2B6F28;
  if (!qword_1EC2B6F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B6F28);
  }

  return result;
}

unint64_t sub_1C8837908()
{
  result = qword_1EC2B6F30;
  if (!qword_1EC2B6F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B6F30);
  }

  return result;
}

unint64_t sub_1C883795C()
{
  result = qword_1EC2B6F68;
  if (!qword_1EC2B6F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B6F68);
  }

  return result;
}

unint64_t sub_1C88379B4()
{
  result = qword_1EC2B3630;
  if (!qword_1EC2B3630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B3630);
  }

  return result;
}

unint64_t sub_1C8837A0C()
{
  result = qword_1EC2B3638;
  if (!qword_1EC2B3638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B3638);
  }

  return result;
}

unint64_t sub_1C8837A64()
{
  result = qword_1EC2B3628;
  if (!qword_1EC2B3628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B3628);
  }

  return result;
}

unint64_t sub_1C8837ABC()
{
  result = qword_1EC2B3678;
  if (!qword_1EC2B3678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B3678);
  }

  return result;
}

unint64_t sub_1C8837B14()
{
  result = qword_1EC2B3680;
  if (!qword_1EC2B3680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B3680);
  }

  return result;
}

unint64_t sub_1C8837B6C()
{
  result = qword_1EC2B3670;
  if (!qword_1EC2B3670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B3670);
  }

  return result;
}

unint64_t sub_1C8837BC4()
{
  result = qword_1EC2B35C8;
  if (!qword_1EC2B35C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B35C8);
  }

  return result;
}

unint64_t sub_1C8837C1C()
{
  result = qword_1EC2B35D0;
  if (!qword_1EC2B35D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B35D0);
  }

  return result;
}

unint64_t sub_1C8837C74()
{
  result = qword_1EC2B35C0;
  if (!qword_1EC2B35C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B35C0);
  }

  return result;
}

unint64_t sub_1C8837D5C()
{
  result = qword_1EC2B3568;
  if (!qword_1EC2B3568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B3568);
  }

  return result;
}

unint64_t sub_1C8837DB4()
{
  result = qword_1EC2B3570;
  if (!qword_1EC2B3570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B3570);
  }

  return result;
}

unint64_t sub_1C8837E0C()
{
  result = qword_1EC2B3560;
  if (!qword_1EC2B3560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B3560);
  }

  return result;
}

unint64_t sub_1C8837E94()
{
  result = qword_1EC2B6FC0;
  if (!qword_1EC2B6FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B6FC0);
  }

  return result;
}

unint64_t sub_1C8837EEC()
{
  result = qword_1EC2B6FC8;
  if (!qword_1EC2B6FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B6FC8);
  }

  return result;
}

unint64_t sub_1C8837F44()
{
  result = qword_1EC2B6FD0;
  if (!qword_1EC2B6FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B6FD0);
  }

  return result;
}

unint64_t sub_1C8837F9C()
{
  result = qword_1EC2B6FD8;
  if (!qword_1EC2B6FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B6FD8);
  }

  return result;
}

unint64_t sub_1C8837FF4()
{
  result = qword_1EC2B6FE0;
  if (!qword_1EC2B6FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B6FE0);
  }

  return result;
}

unint64_t sub_1C883804C()
{
  result = qword_1EC2B6FE8;
  if (!qword_1EC2B6FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B6FE8);
  }

  return result;
}

unint64_t sub_1C88380A4()
{
  result = qword_1EC2B6FF0;
  if (!qword_1EC2B6FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B6FF0);
  }

  return result;
}

unint64_t sub_1C88380FC()
{
  result = qword_1EC2B6FF8;
  if (!qword_1EC2B6FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B6FF8);
  }

  return result;
}

unint64_t sub_1C8838154()
{
  result = qword_1EC2B7000;
  if (!qword_1EC2B7000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B7000);
  }

  return result;
}

void sub_1C8838920(uint64_t a1)
{
  sub_1C8838ABC(319, &qword_1EC2B2EF0, type metadata accessor for Siri_Nlu_External_NluRouter_NLRouterRewriteUtterance, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1C8BD49FC();
    if (v2 <= 0x3F)
    {
      sub_1C87EB4B0(319, &qword_1EC2B3620, &type metadata for Siri_Nlu_External_NluRouter_NLRouterServiceResponse.NLRoutingDecision);
      if (v3 <= 0x3F)
      {
        sub_1C87EB4B0(319, &qword_1EC2B3668, &type metadata for Siri_Nlu_External_NluRouter_NLRouterServiceResponse.NLRouterServiceResponseStatus);
        if (v4 <= 0x3F)
        {
          sub_1C87EB4B0(319, &qword_1EC2B35B8, &type metadata for Siri_Nlu_External_NluRouter_NLRouterServiceResponse.NLRoutingDecisionSource);
          if (v5 <= 0x3F)
          {
            sub_1C8838ABC(319, &qword_1EC2B36B0, type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata, MEMORY[0x1E69E6720]);
            if (v6 <= 0x3F)
            {
              sub_1C87EB4B0(319, &qword_1EDACD3E8, MEMORY[0x1E69E6158]);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_1C8838ABC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

_BYTE *storeEnumTagSinglePayload for Siri_Nlu_External_NluRouter_NLRouterServiceResponse.NLRoutingDecision(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for Siri_Nlu_External_NluRouter_NLRouterServiceResponse.NLRouterServiceResponseStatus(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for Siri_Nlu_External_NluRouter_NLRouterServiceResponse.NLRoutingDecisionSource(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_1C8838DDC(uint64_t a1)
{
  sub_1C8BD49FC();
  if (v1 <= 0x3F)
  {
    sub_1C8838ABC(319, qword_1EDACE198, type metadata accessor for Siri_Nlu_External_UUID, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1C87EB4B0(319, &qword_1EDACD3E8, MEMORY[0x1E69E6158]);
      if (v3 <= 0x3F)
      {
        sub_1C87EB4B0(319, &qword_1EC2B3558, &type metadata for Siri_Nlu_External_NluRouter_NLRouterRewriteUtterance.NLRouterRoutingDecision);
        if (v4 <= 0x3F)
        {
          sub_1C8838ABC(319, qword_1EDACD6C8, type metadata accessor for Siri_Nlu_External_CorrectionOutcome, MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1C8838F60(uint64_t a1)
{
  sub_1C8BD49FC();
  if (v1 <= 0x3F)
  {
    sub_1C87EB4B0(319, &qword_1EC2B3750, &type metadata for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.PrescribedTool);
    if (v2 <= 0x3F)
    {
      sub_1C87EB4B0(319, &qword_1EC2B36D8, &type metadata for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.QueryType);
      if (v3 <= 0x3F)
      {
        sub_1C8838ABC(319, &qword_1EC2B36E0, type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for Siri_Nlu_External_Span.MatcherName(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_1C88390EC(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.QueryType(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_1C88392CC(uint64_t a1)
{
  sub_1C8BD49FC();
  if (v1 <= 0x3F)
  {
    sub_1C8838ABC(319, &qword_1EC2B3710, type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.Explicit, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1C8838ABC(319, &qword_1EC2B36F8, type metadata accessor for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.Implicit, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C88393F0(uint64_t a1)
{
  sub_1C8BD49FC();
  if (v1 <= 0x3F)
  {
    sub_1C87EB4B0(319, &qword_1EC2B3728, &type metadata for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.Explicit.GenAIPartner);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

_BYTE *storeEnumTagSinglePayload for Siri_Nlu_External_NluRouter_NLRoutingGenAIMetadata.AjaxQuery.Explicit.GenAIPartner(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1C8839588(uint64_t a1)
{
  result = sub_1C8BD49FC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherResponse.contextualSpans.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherResponse.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherResponse(0) + 20);
  v4 = sub_1C8BD49FC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherResponse(uint64_t a1)
{
  result = qword_1EC2B70F0;
  if (!qword_1EC2B70F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherResponse.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherResponse(0) + 20);
  v4 = sub_1C8BD49FC();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherResponse.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  type metadata accessor for Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherResponse(0);
  return _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
}

uint64_t sub_1C8839908()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B70B8);
  __swift_project_value_buffer(v0, qword_1EC2B70B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1C8BE6F30;
  v4 = v3 + v2 + v1[14];
  *(v3 + v2) = 1;
  *v4 = "contextual_spans";
  *(v4 + 8) = 16;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADE8];
  v6 = sub_1C8BD50FC();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  return sub_1C8BD510C();
}

uint64_t static Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherResponse._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC2B4DB0 != -1)
  {
    swift_once();
  }

  v2 = sub_1C8BD512C();
  v3 = __swift_project_value_buffer(v2, qword_1EC2B70B8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherResponse.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1C8BD4AFC();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C8839B84(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1C8839B84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_Internal_MatchingSpan(0);
  sub_1C883A234(&qword_1EC2B4A28, type metadata accessor for Siri_Nlu_Internal_MatchingSpan, &protocol conformance descriptor for Siri_Nlu_Internal_MatchingSpan);
  return sub_1C8BD4C6C();
}

uint64_t Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for Siri_Nlu_Internal_MatchingSpan(0), sub_1C883A234(&qword_1EC2B4A28, type metadata accessor for Siri_Nlu_Internal_MatchingSpan, &protocol conformance descriptor for Siri_Nlu_Internal_MatchingSpan), result = sub_1C8BD4E0C(), !v4))
  {
    type metadata accessor for Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherResponse(0);
    return sub_1C8BD49DC();
  }

  return result;
}

uint64_t static Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherResponse.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  sub_1C87D27C0(*a1, *a2);
  if ((v2 & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherResponse(0);
  sub_1C8BD49FC();
  sub_1C883A234(&qword_1EC2B2F70, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1C8BD517C() & 1;
}

uint64_t Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherResponse.hashValue.getter()
{
  sub_1C8BD530C();
  type metadata accessor for Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherResponse(0);
  sub_1C883A234(&qword_1EC2B70D0, type metadata accessor for Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherResponse, &protocol conformance descriptor for Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherResponse);
  sub_1C8BD515C();
  return sub_1C8BD531C();
}

uint64_t sub_1C8839EA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C883A234(&qword_1EC2B7100, type metadata accessor for Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherResponse, &protocol conformance descriptor for Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherResponse);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8839F20(uint64_t a1)
{
  v2 = sub_1C883A234(&qword_1EC2B70E0, type metadata accessor for Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherResponse, &protocol conformance descriptor for Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherResponse);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8839F90(uint64_t a1, uint64_t a2)
{
  sub_1C883A234(&qword_1EC2B70E0, type metadata accessor for Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherResponse, &protocol conformance descriptor for Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherResponse);

  return sub_1C8BD4CFC();
}

void sub_1C883A158(uint64_t a1)
{
  sub_1C883A1DC(319);
  if (v1 <= 0x3F)
  {
    sub_1C8BD49FC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C883A1DC(uint64_t a1)
{
  if (!qword_1EC2B2F60)
  {
    type metadata accessor for Siri_Nlu_Internal_MatchingSpan(255);
    v1 = sub_1C8BD521C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC2B2F60);
    }
  }
}

uint64_t sub_1C883A234(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void (*Siri_Nlu_Internal_Queryrewrite_QRRequest.requestID.modify())(uint64_t a1, uint64_t a2)
{
  v2 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_14_2(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_13_2(v5);
  v7 = type metadata accessor for Siri_Nlu_External_UUID(v6);
  OUTLINED_FUNCTION_21();
  v9 = *(v8 + 64);
  *(v1 + 40) = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  *(v1 + 48) = v10;
  OUTLINED_FUNCTION_4_7();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_0_0();
  if (v11)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_11_0(v7[5]);
    OUTLINED_FUNCTION_11_0(v7[6]);
    v10[v7[7]] = 6;
    OUTLINED_FUNCTION_0_0();
    if (!v11)
    {
      sub_1C8778ED8(v0, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7_10();
  }

  return sub_1C883A424;
}

void (*Siri_Nlu_Internal_Queryrewrite_QRRequest.interactions.modify(void *a1))(uint64_t *a1, uint64_t a2)
{
  v3 = __swift_coroFrameAllocStub(0x48uLL);
  *a1 = v3;
  v3[7] = v1;
  OUTLINED_FUNCTION_4_7();
  *(v3 + 16) = v4;
  v5 = *(v1 + v4);
  v6 = OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Queryrewrite_QRRequestP33_187A0F8EC7AE8E873A4A35EF8E37AE9F13_StorageClass__interactions;
  OUTLINED_FUNCTION_277(v5 + OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Queryrewrite_QRRequestP33_187A0F8EC7AE8E873A4A35EF8E37AE9F13_StorageClass__interactions, v3);
  v3[6] = *(v5 + v6);

  return sub_1C883A580;
}

uint64_t sub_1C883A5AC(uint64_t *a1)
{
  OUTLINED_FUNCTION_4_7();
  OUTLINED_FUNCTION_277(*(v1 + v3) + *a1, v5);
}

uint64_t sub_1C883A62C(uint64_t a1, uint64_t *a2)
{
  v5 = v3;
  v6 = OUTLINED_FUNCTION_241();
  v7 = *(type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRRequest(v6) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v3 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_5_7();
    v10 = OUTLINED_FUNCTION_2();
    v9 = sub_1C883BDA4(v10);
    *(v5 + v7) = v9;
  }

  v11 = *a2;
  OUTLINED_FUNCTION_37_0(v9 + v11, v13);
  *(v9 + v11) = v2;
}

void (*Siri_Nlu_Internal_Queryrewrite_QRRequest.originalInteractions.modify(void *a1))(uint64_t *a1, uint64_t a2)
{
  v3 = __swift_coroFrameAllocStub(0x48uLL);
  *a1 = v3;
  v3[7] = v1;
  OUTLINED_FUNCTION_4_7();
  *(v3 + 16) = v4;
  v5 = *(v1 + v4);
  v6 = OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Queryrewrite_QRRequestP33_187A0F8EC7AE8E873A4A35EF8E37AE9F13_StorageClass__originalInteractions;
  OUTLINED_FUNCTION_277(v5 + OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Queryrewrite_QRRequestP33_187A0F8EC7AE8E873A4A35EF8E37AE9F13_StorageClass__originalInteractions, v3);
  v3[6] = *(v5 + v6);

  return sub_1C883A740;
}

void sub_1C883A760(uint64_t *a1, char a2, uint64_t *a3, void (*a4)(uint64_t))
{
  v4 = *a1;
  v5 = *(*a1 + 48);
  if (a2)
  {

    a4(v7);
  }

  else
  {
    v9 = *(v4 + 64);
    v10 = *(v4 + 56);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v10 + v9);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = *(v4 + 64);
      v14 = *(v4 + 56);
      OUTLINED_FUNCTION_5_7();
      v15 = OUTLINED_FUNCTION_2();
      v12 = sub_1C883BDA4(v15);
      *(v14 + v13) = v12;
    }

    v16 = *a3;
    OUTLINED_FUNCTION_37_0(v12 + v16, v4 + 24);
    *(v12 + v16) = v5;
  }

  free(v4);
}

uint64_t Siri_Nlu_Internal_Queryrewrite_QRRequest.resultCandidateID.getter()
{
  OUTLINED_FUNCTION_4_7();
  OUTLINED_FUNCTION_277(*(v0 + v1) + OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Queryrewrite_QRRequestP33_187A0F8EC7AE8E873A4A35EF8E37AE9F13_StorageClass__resultCandidateID, v3);

  return OUTLINED_FUNCTION_218();
}

uint64_t sub_1C883A88C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_Internal_Queryrewrite_QRRequest.resultCandidateID.setter(v1, v2);
}

uint64_t Siri_Nlu_Internal_Queryrewrite_QRRequest.resultCandidateID.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRRequest(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_5_7();
    v9 = OUTLINED_FUNCTION_2();
    v8 = sub_1C883BDA4(v9);
    *(v3 + v6) = v8;
  }

  v10 = (v8 + OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Queryrewrite_QRRequestP33_187A0F8EC7AE8E873A4A35EF8E37AE9F13_StorageClass__resultCandidateID);
  OUTLINED_FUNCTION_37_0(v10, v12);
  *v10 = a1;
  v10[1] = a2;
}

void (*Siri_Nlu_Internal_Queryrewrite_QRRequest.resultCandidateID.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v3;
  v3[8] = v1;
  OUTLINED_FUNCTION_4_7();
  *(v3 + 18) = v4;
  v5 = (*(v1 + v4) + OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Queryrewrite_QRRequestP33_187A0F8EC7AE8E873A4A35EF8E37AE9F13_StorageClass__resultCandidateID);
  OUTLINED_FUNCTION_277(v5, v3);
  if (v5[1])
  {
    v6 = *v5;
    v7 = v5[1];
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  v3[6] = v6;
  v3[7] = v7;

  return sub_1C883AA08;
}

void sub_1C883AA08(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 56);
  if (a2)
  {

    Siri_Nlu_Internal_Queryrewrite_QRRequest.resultCandidateID.setter(v3, v4);
  }

  else
  {
    v5 = *(v2 + 72);
    v6 = *(v2 + 64);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(v6 + v5);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = *(v2 + 72);
      v10 = *(v2 + 64);
      OUTLINED_FUNCTION_5_7();
      v11 = OUTLINED_FUNCTION_2();
      v8 = sub_1C883BDA4(v11);
      *(v10 + v9) = v8;
    }

    v12 = (v8 + OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Queryrewrite_QRRequestP33_187A0F8EC7AE8E873A4A35EF8E37AE9F13_StorageClass__resultCandidateID);
    OUTLINED_FUNCTION_37_0(v12, v2 + 24);
    *v12 = v3;
    v12[1] = v4;
  }

  free(v2);
}

BOOL Siri_Nlu_Internal_Queryrewrite_QRRequest.hasResultCandidateID.getter()
{
  OUTLINED_FUNCTION_4_7();
  v2 = *(v0 + v1) + OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Queryrewrite_QRRequestP33_187A0F8EC7AE8E873A4A35EF8E37AE9F13_StorageClass__resultCandidateID;
  OUTLINED_FUNCTION_277(v2, v4);
  return *(v2 + 8) != 0;
}

Swift::Void __swiftcall Siri_Nlu_Internal_Queryrewrite_QRRequest.clearResultCandidateID()()
{
  v1 = v0;
  v2 = *(type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRRequest(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_5_7();
    v5 = OUTLINED_FUNCTION_2();
    v4 = sub_1C883BDA4(v5);
    *(v1 + v2) = v4;
  }

  v6 = (v4 + OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Queryrewrite_QRRequestP33_187A0F8EC7AE8E873A4A35EF8E37AE9F13_StorageClass__resultCandidateID);
  OUTLINED_FUNCTION_37_0(v4 + OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Queryrewrite_QRRequestP33_187A0F8EC7AE8E873A4A35EF8E37AE9F13_StorageClass__resultCandidateID, v7);
  *v6 = 0;
  v6[1] = 0;
}

uint64_t sub_1C883ABB4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16[-v7 - 8];
  OUTLINED_FUNCTION_4_7();
  OUTLINED_FUNCTION_277(*(v2 + v9) + *a1, v16);
  sub_1C8778810();
  v10 = type metadata accessor for Siri_Nlu_External_UUID(0);
  OUTLINED_FUNCTION_1_0();
  if (!v11)
  {
    return sub_1C883C17C();
  }

  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v12 = a2 + v10[5];
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = a2 + v10[6];
  *v13 = 0;
  *(v13 + 8) = 1;
  *(a2 + v10[7]) = 6;
  result = OUTLINED_FUNCTION_1_0();
  if (!v11)
  {
    return sub_1C8778ED8(v8, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  }

  return result;
}

uint64_t sub_1C883AD04(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v2);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v10 - v4;
  v6 = *(type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRRequest(0) + 20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_5_7();
    v7 = OUTLINED_FUNCTION_2();
    *(v1 + v6) = sub_1C883BDA4(v7);
  }

  sub_1C883C17C();
  v8 = type metadata accessor for Siri_Nlu_External_UUID(0);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v8);
  OUTLINED_FUNCTION_23();
  swift_beginAccess();
  sub_1C8786514();
  return swift_endAccess();
}

void (*Siri_Nlu_Internal_Queryrewrite_QRRequest.nluRequestID.modify())(uint64_t a1, uint64_t a2)
{
  v2 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_14_2(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_13_2(v5);
  v7 = type metadata accessor for Siri_Nlu_External_UUID(v6);
  OUTLINED_FUNCTION_21();
  v9 = *(v8 + 64);
  *(v1 + 40) = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  *(v1 + 48) = v10;
  OUTLINED_FUNCTION_4_7();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_0_0();
  if (v11)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_11_0(v7[5]);
    OUTLINED_FUNCTION_11_0(v7[6]);
    v10[v7[7]] = 6;
    OUTLINED_FUNCTION_0_0();
    if (!v11)
    {
      sub_1C8778ED8(v0, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7_10();
  }

  return sub_1C883AF7C;
}

BOOL sub_1C883AFD8(uint64_t *a1, uint64_t *a2, void *a3, uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_80(v9);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v18[-v11 - 8];
  OUTLINED_FUNCTION_4_7();
  OUTLINED_FUNCTION_277(*(v4 + v13) + *a3, v18);
  sub_1C8778810();
  v14 = a4(0);
  v15 = __swift_getEnumTagSinglePayload(v12, 1, v14) != 1;
  sub_1C8778ED8(v12, a1, a2);
  return v15;
}

uint64_t sub_1C883B0E4(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13 - v7;
  v9 = *(type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRRequest(0) + 20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_5_7();
    v10 = OUTLINED_FUNCTION_2();
    *(v3 + v9) = sub_1C883BDA4(v10);
  }

  v11 = a3(0);
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v11);
  OUTLINED_FUNCTION_23();
  swift_beginAccess();
  sub_1C8786514();
  return swift_endAccess();
}

uint64_t Siri_Nlu_Internal_Queryrewrite_QRRequest.cdmRequestID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64B0, &unk_1C8BF3F40);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v14[-v5 - 8];
  OUTLINED_FUNCTION_4_7();
  OUTLINED_FUNCTION_277(*(v1 + v7) + OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Queryrewrite_QRRequestP33_187A0F8EC7AE8E873A4A35EF8E37AE9F13_StorageClass__cdmRequestID, v14);
  sub_1C8778810();
  v8 = type metadata accessor for Siri_Nlu_External_RequestID(0);
  OUTLINED_FUNCTION_1_0();
  if (v9)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_18_2(v8[5]);
    v10 = v8[6];
    v11 = type metadata accessor for Siri_Nlu_External_UUID(0);
    __swift_storeEnumTagSinglePayload(a1 + v10, 1, 1, v11);
    OUTLINED_FUNCTION_18_2(v8[7]);
    OUTLINED_FUNCTION_18_2(v8[8]);
    OUTLINED_FUNCTION_18_2(v8[9]);
    OUTLINED_FUNCTION_18_2(v8[10]);
    *(a1 + v8[11]) = 6;
    result = OUTLINED_FUNCTION_1_0();
    if (!v9)
    {
      return sub_1C8778ED8(v6, &qword_1EC2B64B0, &unk_1C8BF3F40);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_1();
    return sub_1C883C17C();
  }

  return result;
}

uint64_t sub_1C883B340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(char *))
{
  v8 = (a5)(0, a2, a3, a4);
  OUTLINED_FUNCTION_80(v8);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v13 - v10;
  sub_1C883C1D4();
  return a7(v11);
}

uint64_t Siri_Nlu_Internal_Queryrewrite_QRRequest.cdmRequestID.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64B0, &unk_1C8BF3F40);
  OUTLINED_FUNCTION_80(v2);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v10 - v4;
  v6 = *(type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRRequest(0) + 20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_5_7();
    v7 = OUTLINED_FUNCTION_2();
    *(v1 + v6) = sub_1C883BDA4(v7);
  }

  OUTLINED_FUNCTION_1_1();
  sub_1C883C17C();
  v8 = type metadata accessor for Siri_Nlu_External_RequestID(0);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v8);
  OUTLINED_FUNCTION_23();
  swift_beginAccess();
  sub_1C8786514();
  return swift_endAccess();
}

void (*Siri_Nlu_Internal_Queryrewrite_QRRequest.cdmRequestID.modify())(uint64_t a1, uint64_t a2)
{
  v2 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_14_2(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64B0, &unk_1C8BF3F40);
  OUTLINED_FUNCTION_80(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_13_2(v5);
  v7 = type metadata accessor for Siri_Nlu_External_RequestID(v6);
  OUTLINED_FUNCTION_21();
  v9 = *(v8 + 64);
  *(v1 + 40) = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  *(v1 + 48) = v10;
  OUTLINED_FUNCTION_4_7();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_0_0();
  if (v11)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_26(v7[5]);
    v12 = v7[6];
    v13 = type metadata accessor for Siri_Nlu_External_UUID(0);
    __swift_storeEnumTagSinglePayload(&v10[v12], 1, 1, v13);
    OUTLINED_FUNCTION_26(v7[7]);
    OUTLINED_FUNCTION_26(v7[8]);
    OUTLINED_FUNCTION_26(v7[9]);
    OUTLINED_FUNCTION_26(v7[10]);
    v10[v7[11]] = 6;
    OUTLINED_FUNCTION_0_0();
    if (!v11)
    {
      sub_1C8778ED8(v0, &qword_1EC2B64B0, &unk_1C8BF3F40);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_1();
    sub_1C883C17C();
  }

  return sub_1C883B684;
}

void sub_1C883B6B0(uint64_t a1, char a2, void (*a3)(void *), uint64_t a4)
{
  v5 = *a1;
  v6 = *(*a1 + 40);
  v7 = *(*a1 + 48);
  v8 = *(*a1 + 32);
  if (a2)
  {
    sub_1C883C1D4();
    a3(v6);
    sub_1C88221F0();
  }

  else
  {
    a3(*(*a1 + 48));
  }

  free(v7);
  free(v6);
  free(v8);

  free(v5);
}

uint64_t Siri_Nlu_Internal_Queryrewrite_QRRequest.unknownFields.getter()
{
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_21();
  v0 = OUTLINED_FUNCTION_218();

  return v1(v0);
}

uint64_t Siri_Nlu_Internal_Queryrewrite_QRRequest.unknownFields.setter()
{
  OUTLINED_FUNCTION_241();
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_21();
  v4 = *(v3 + 40);

  return v4(v1, v0, v2);
}

uint64_t Siri_Nlu_Internal_Queryrewrite_QRRequest.init()@<X0>(uint64_t a2@<X8>)
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v3 = *(type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRRequest(0) + 20);
  if (qword_1EC2B4DC0 != -1)
  {
    swift_once();
  }

  *(a2 + v3) = qword_1EC2B7120;
}

uint64_t sub_1C883B930()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B7108);
  __swift_project_value_buffer(v0, qword_1EC2B7108);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE7160;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "requestId";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "interactions";
  *(v10 + 8) = 12;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "original_interactions";
  *(v12 + 1) = 21;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "result_candidate_id";
  *(v14 + 1) = 19;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "nlu_request_id";
  *(v16 + 1) = 14;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "cdm_request_id";
  *(v18 + 1) = 14;
  v18[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t static Siri_Nlu_Internal_Queryrewrite_QRRequest._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC2B4DB8 != -1)
  {
    swift_once();
  }

  v2 = sub_1C8BD512C();
  v3 = __swift_project_value_buffer(v2, qword_1EC2B7108);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C883BCA4()
{
  type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRRequest._StorageClass(0);
  swift_allocObject();
  result = sub_1C883BCE4();
  qword_1EC2B7120 = result;
  return result;
}

uint64_t sub_1C883BCE4()
{
  v1 = OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Queryrewrite_QRRequestP33_187A0F8EC7AE8E873A4A35EF8E37AE9F13_StorageClass__requestID;
  v2 = type metadata accessor for Siri_Nlu_External_UUID(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Queryrewrite_QRRequestP33_187A0F8EC7AE8E873A4A35EF8E37AE9F13_StorageClass__interactions) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Queryrewrite_QRRequestP33_187A0F8EC7AE8E873A4A35EF8E37AE9F13_StorageClass__originalInteractions) = v3;
  v4 = (v0 + OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Queryrewrite_QRRequestP33_187A0F8EC7AE8E873A4A35EF8E37AE9F13_StorageClass__resultCandidateID);
  *v4 = 0;
  v4[1] = 0;
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Queryrewrite_QRRequestP33_187A0F8EC7AE8E873A4A35EF8E37AE9F13_StorageClass__nluRequestID, 1, 1, v2);
  v5 = OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Queryrewrite_QRRequestP33_187A0F8EC7AE8E873A4A35EF8E37AE9F13_StorageClass__cdmRequestID;
  v6 = type metadata accessor for Siri_Nlu_External_RequestID(0);
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  return v0;
}

uint64_t sub_1C883BDA4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64B0, &unk_1C8BF3F40);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v22[2] = v22 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Queryrewrite_QRRequestP33_187A0F8EC7AE8E873A4A35EF8E37AE9F13_StorageClass__requestID;
  v7 = type metadata accessor for Siri_Nlu_External_UUID(0);
  __swift_storeEnumTagSinglePayload(v1 + v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Queryrewrite_QRRequestP33_187A0F8EC7AE8E873A4A35EF8E37AE9F13_StorageClass__interactions;
  v9 = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Queryrewrite_QRRequestP33_187A0F8EC7AE8E873A4A35EF8E37AE9F13_StorageClass__interactions) = MEMORY[0x1E69E7CC0];
  v10 = OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Queryrewrite_QRRequestP33_187A0F8EC7AE8E873A4A35EF8E37AE9F13_StorageClass__originalInteractions;
  *(v1 + OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Queryrewrite_QRRequestP33_187A0F8EC7AE8E873A4A35EF8E37AE9F13_StorageClass__originalInteractions) = v9;
  v11 = (v1 + OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Queryrewrite_QRRequestP33_187A0F8EC7AE8E873A4A35EF8E37AE9F13_StorageClass__resultCandidateID);
  *v11 = 0;
  v11[1] = 0;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Queryrewrite_QRRequestP33_187A0F8EC7AE8E873A4A35EF8E37AE9F13_StorageClass__nluRequestID, 1, 1, v7);
  v12 = OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Queryrewrite_QRRequestP33_187A0F8EC7AE8E873A4A35EF8E37AE9F13_StorageClass__cdmRequestID;
  v22[1] = OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Queryrewrite_QRRequestP33_187A0F8EC7AE8E873A4A35EF8E37AE9F13_StorageClass__cdmRequestID;
  v13 = type metadata accessor for Siri_Nlu_External_RequestID(0);
  __swift_storeEnumTagSinglePayload(v1 + v12, 1, 1, v13);
  swift_beginAccess();
  sub_1C8778810();
  swift_beginAccess();
  sub_1C8786514();
  swift_endAccess();
  v14 = OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Queryrewrite_QRRequestP33_187A0F8EC7AE8E873A4A35EF8E37AE9F13_StorageClass__interactions;
  swift_beginAccess();
  v15 = *(a1 + v14);
  swift_beginAccess();
  *(v1 + v8) = v15;

  v16 = OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Queryrewrite_QRRequestP33_187A0F8EC7AE8E873A4A35EF8E37AE9F13_StorageClass__originalInteractions;
  swift_beginAccess();
  v17 = *(a1 + v16);
  swift_beginAccess();
  *(v1 + v10) = v17;

  v18 = (a1 + OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Queryrewrite_QRRequestP33_187A0F8EC7AE8E873A4A35EF8E37AE9F13_StorageClass__resultCandidateID);
  swift_beginAccess();
  v20 = *v18;
  v19 = v18[1];
  swift_beginAccess();
  *v11 = v20;
  v11[1] = v19;

  swift_beginAccess();
  sub_1C8778810();
  swift_beginAccess();
  sub_1C8786514();
  swift_endAccess();
  swift_beginAccess();
  sub_1C8778810();

  swift_beginAccess();
  sub_1C8786514();
  swift_endAccess();
  return v1;
}

uint64_t sub_1C883C17C()
{
  OUTLINED_FUNCTION_12_0();
  v1(0);
  OUTLINED_FUNCTION_21();
  v2 = OUTLINED_FUNCTION_218();
  v3(v2);
  return v0;
}

uint64_t sub_1C883C1D4()
{
  OUTLINED_FUNCTION_12_0();
  v1(0);
  OUTLINED_FUNCTION_21();
  v2 = OUTLINED_FUNCTION_218();
  v3(v2);
  return v0;
}

uint64_t sub_1C883C22C()
{
  sub_1C8778ED8(v0 + OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Queryrewrite_QRRequestP33_187A0F8EC7AE8E873A4A35EF8E37AE9F13_StorageClass__requestID, &qword_1EC2B5EC8, &unk_1C8BE68C0);

  sub_1C8778ED8(v0 + OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Queryrewrite_QRRequestP33_187A0F8EC7AE8E873A4A35EF8E37AE9F13_StorageClass__nluRequestID, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  sub_1C8778ED8(v0 + OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Queryrewrite_QRRequestP33_187A0F8EC7AE8E873A4A35EF8E37AE9F13_StorageClass__cdmRequestID, &qword_1EC2B64B0, &unk_1C8BF3F40);
  return v0;
}

uint64_t sub_1C883C2E8()
{
  v0 = sub_1C883C22C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t Siri_Nlu_Internal_Queryrewrite_QRRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRRequest(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRRequest._StorageClass(0);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_2();
    v10 = sub_1C883BDA4(v11);
    *(v4 + v8) = v10;
  }

  return sub_1C883C3DC(v10, a1, a2, a3);
}

uint64_t sub_1C883C3DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_1C8BD4AFC();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Queryrewrite_QRRequestP33_187A0F8EC7AE8E873A4A35EF8E37AE9F13_StorageClass__requestID;
        goto LABEL_6;
      case 2:
        sub_1C883C50C(a2, a1, a3, a4);
        break;
      case 3:
        sub_1C883C5E8(a2, a1, a3, a4);
        break;
      case 4:
        sub_1C883C6C4(a2, a1, a3, a4);
        break;
      case 5:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Queryrewrite_QRRequestP33_187A0F8EC7AE8E873A4A35EF8E37AE9F13_StorageClass__nluRequestID;
LABEL_6:
        sub_1C883C750(v11, v12, v13, v14, v15);
        break;
      case 6:
        sub_1C883C824(a2, a1, a3, a4);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C883C50C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRInteraction(0);
  sub_1C8776548(&qword_1EC2B71A0, type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRInteraction, &protocol conformance descriptor for Siri_Nlu_Internal_Queryrewrite_QRInteraction);
  sub_1C8BD4C6C();
  return swift_endAccess();
}

uint64_t sub_1C883C5E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_Internal_RewriteInteraction(0);
  sub_1C8776548(&qword_1EC2B6D50, type metadata accessor for Siri_Nlu_Internal_RewriteInteraction, &protocol conformance descriptor for Siri_Nlu_Internal_RewriteInteraction);
  sub_1C8BD4C6C();
  return swift_endAccess();
}

uint64_t sub_1C883C6C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1C8BD4C1C();
  return swift_endAccess();
}

uint64_t sub_1C883C750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  OUTLINED_FUNCTION_23();
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_UUID(0);
  sub_1C8776548(&qword_1EDACCE50, type metadata accessor for Siri_Nlu_External_UUID, &protocol conformance descriptor for Siri_Nlu_External_UUID);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C883C824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_RequestID(0);
  sub_1C8776548(&qword_1EDACCBA8, type metadata accessor for Siri_Nlu_External_RequestID, &protocol conformance descriptor for Siri_Nlu_External_RequestID);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t Siri_Nlu_Internal_Queryrewrite_QRRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRRequest(0);
  result = sub_1C883C96C(*(v3 + *(v8 + 20)), a1, a2, a3);
  if (!v4)
  {
    return sub_1C8BD49DC();
  }

  return result;
}

uint64_t sub_1C883C96C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64B0, &unk_1C8BF3F40);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v25 = v24 - v6;
  v26 = type metadata accessor for Siri_Nlu_External_RequestID(0);
  MEMORY[0x1EEE9AC00](v26);
  v24[0] = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v27 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v24 - v11;
  v13 = type metadata accessor for Siri_Nlu_External_UUID(0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v24[1] = v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  swift_beginAccess();
  sub_1C8778810();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_1C8778ED8(v12, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    v16 = v28;
  }

  else
  {
    sub_1C883C17C();
    sub_1C8776548(&qword_1EDACCE50, type metadata accessor for Siri_Nlu_External_UUID, &protocol conformance descriptor for Siri_Nlu_External_UUID);
    v17 = v28;
    sub_1C8BD4E2C();
    v16 = v17;
    result = sub_1C88221F0();
    if (v17)
    {
      return result;
    }
  }

  v19 = OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Queryrewrite_QRRequestP33_187A0F8EC7AE8E873A4A35EF8E37AE9F13_StorageClass__interactions;
  swift_beginAccess();
  if (!*(*(a1 + v19) + 16) || (type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRInteraction(0), sub_1C8776548(&qword_1EC2B71A0, type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRInteraction, &protocol conformance descriptor for Siri_Nlu_Internal_Queryrewrite_QRInteraction), , sub_1C8BD4E0C(), result = , !v16))
  {
    v20 = OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Queryrewrite_QRRequestP33_187A0F8EC7AE8E873A4A35EF8E37AE9F13_StorageClass__originalInteractions;
    swift_beginAccess();
    if (!*(*(a1 + v20) + 16) || (type metadata accessor for Siri_Nlu_Internal_RewriteInteraction(0), sub_1C8776548(&qword_1EC2B6D50, type metadata accessor for Siri_Nlu_Internal_RewriteInteraction, &protocol conformance descriptor for Siri_Nlu_Internal_RewriteInteraction), , sub_1C8BD4E0C(), result = , !v16))
    {
      v21 = a1 + OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Queryrewrite_QRRequestP33_187A0F8EC7AE8E873A4A35EF8E37AE9F13_StorageClass__resultCandidateID;
      swift_beginAccess();
      if (!*(v21 + 8) || (, sub_1C8BD4DDC(), result = , !v16))
      {
        swift_beginAccess();
        v22 = v27;
        sub_1C8778810();
        if (__swift_getEnumTagSinglePayload(v22, 1, v13) == 1)
        {
          sub_1C8778ED8(v22, &qword_1EC2B5EC8, &unk_1C8BE68C0);
        }

        else
        {
          sub_1C883C17C();
          sub_1C8776548(&qword_1EDACCE50, type metadata accessor for Siri_Nlu_External_UUID, &protocol conformance descriptor for Siri_Nlu_External_UUID);
          sub_1C8BD4E2C();
          result = sub_1C88221F0();
          if (v16)
          {
            return result;
          }
        }

        swift_beginAccess();
        v23 = v25;
        sub_1C8778810();
        if (__swift_getEnumTagSinglePayload(v23, 1, v26) == 1)
        {
          return sub_1C8778ED8(v23, &qword_1EC2B64B0, &unk_1C8BF3F40);
        }

        else
        {
          sub_1C883C17C();
          sub_1C8776548(&qword_1EDACCBA8, type metadata accessor for Siri_Nlu_External_RequestID, &protocol conformance descriptor for Siri_Nlu_External_RequestID);
          sub_1C8BD4E2C();
          return sub_1C88221F0();
        }
      }
    }
  }

  return result;
}

uint64_t static Siri_Nlu_Internal_Queryrewrite_QRRequest.== infix(_:_:)()
{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_4_7();
  v3 = *(v1 + v2);
  v4 = *(v0 + v2);
  if (v3 != v4)
  {

    v5 = sub_1C883D0F0(v3, v4);

    if (!v5)
    {
      return 0;
    }
  }

  sub_1C8BD49FC();
  sub_1C8776548(&qword_1EC2B2F70, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1C8BD517C() & 1;
}

BOOL sub_1C883D0F0(uint64_t a1, uint64_t a2)
{
  v78 = a2;
  v69 = type metadata accessor for Siri_Nlu_External_RequestID(0);
  MEMORY[0x1EEE9AC00](v69);
  v66 = &v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64D8, &unk_1C8BEAC20);
  MEMORY[0x1EEE9AC00](v68);
  v70 = &v65 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64B0, &unk_1C8BF3F40);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v67 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v74 = &v65 - v8;
  v79 = type metadata accessor for Siri_Nlu_External_UUID(0);
  MEMORY[0x1EEE9AC00](v79);
  v76 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EE8, &unk_1C8BE6F90);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v73 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v65 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v71 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v75 = &v65 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v77 = &v65 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v65 - v22;
  swift_beginAccess();
  v24 = a1;
  sub_1C8778810();
  v25 = v78;
  swift_beginAccess();
  v72 = v10;
  v26 = *(v10 + 48);
  sub_1C8778810();
  v27 = v25;
  v28 = v79;
  sub_1C8778810();
  if (__swift_getEnumTagSinglePayload(v14, 1, v28) == 1)
  {

    sub_1C8778ED8(v23, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    v29 = v24;
    if (__swift_getEnumTagSinglePayload(&v14[v26], 1, v28) == 1)
    {
      sub_1C8778ED8(v14, &qword_1EC2B5EC8, &unk_1C8BE68C0);
      goto LABEL_9;
    }

LABEL_6:
    v32 = v14;
LABEL_7:
    sub_1C8778ED8(v32, &qword_1EC2B5EE8, &unk_1C8BE6F90);
    goto LABEL_20;
  }

  v30 = v24;
  v31 = v77;
  sub_1C8778810();
  if (__swift_getEnumTagSinglePayload(&v14[v26], 1, v28) == 1)
  {

    sub_1C8778ED8(v23, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    sub_1C88221F0();
    goto LABEL_6;
  }

  v33 = v76;
  sub_1C883C17C();

  v34 = static Siri_Nlu_External_UUID.== infix(_:_:)(v31, v33);
  sub_1C88221F0();
  sub_1C8778ED8(v23, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  sub_1C88221F0();
  v29 = v30;
  sub_1C8778ED8(v14, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  if ((v34 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_9:
  swift_beginAccess();
  swift_beginAccess();

  sub_1C87E0664();
  v36 = v35;

  if ((v36 & 1) == 0)
  {
    goto LABEL_20;
  }

  swift_beginAccess();
  swift_beginAccess();

  sub_1C87E1314();
  v38 = v37;

  if ((v38 & 1) == 0)
  {
    goto LABEL_20;
  }

  v39 = (v29 + OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Queryrewrite_QRRequestP33_187A0F8EC7AE8E873A4A35EF8E37AE9F13_StorageClass__resultCandidateID);
  swift_beginAccess();
  v40 = *v39;
  v41 = v39[1];
  v42 = (v27 + OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Queryrewrite_QRRequestP33_187A0F8EC7AE8E873A4A35EF8E37AE9F13_StorageClass__resultCandidateID);
  swift_beginAccess();
  v43 = v42[1];
  if (v41)
  {
    v44 = v75;
    if (!v43)
    {
      goto LABEL_20;
    }

    v45 = v40 == *v42 && v41 == v43;
    if (!v45 && (sub_1C8BD529C() & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v44 = v75;
    if (v43)
    {
      goto LABEL_20;
    }
  }

  swift_beginAccess();
  sub_1C8778810();
  swift_beginAccess();
  v47 = v73;
  v48 = *(v72 + 48);
  sub_1C8778810();
  v49 = v47;
  sub_1C8778810();
  v50 = v79;
  if (__swift_getEnumTagSinglePayload(v47, 1, v79) != 1)
  {
    v53 = v71;
    sub_1C8778810();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v47 + v48, 1, v50);
    v52 = v74;
    if (EnumTagSinglePayload != 1)
    {
      v55 = v76;
      sub_1C883C17C();
      v56 = static Siri_Nlu_External_UUID.== infix(_:_:)(v53, v55);
      sub_1C88221F0();
      sub_1C8778ED8(v44, &qword_1EC2B5EC8, &unk_1C8BE68C0);
      sub_1C88221F0();
      sub_1C8778ED8(v49, &qword_1EC2B5EC8, &unk_1C8BE68C0);
      if (v56)
      {
        goto LABEL_30;
      }

LABEL_20:

      return 0;
    }

    sub_1C8778ED8(v44, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    sub_1C88221F0();
    goto LABEL_28;
  }

  sub_1C8778ED8(v44, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  v51 = __swift_getEnumTagSinglePayload(v47 + v48, 1, v50);
  v52 = v74;
  if (v51 != 1)
  {
LABEL_28:
    v32 = v47;
    goto LABEL_7;
  }

  sub_1C8778ED8(v47, &qword_1EC2B5EC8, &unk_1C8BE68C0);
LABEL_30:
  swift_beginAccess();
  sub_1C8778810();
  swift_beginAccess();
  v57 = *(v68 + 48);
  v58 = v52;
  v59 = v70;
  sub_1C8778810();
  v60 = v59;
  sub_1C8778810();
  v61 = v69;
  if (__swift_getEnumTagSinglePayload(v59, 1, v69) == 1)
  {

    sub_1C8778ED8(v58, &qword_1EC2B64B0, &unk_1C8BF3F40);
    if (__swift_getEnumTagSinglePayload(v59 + v57, 1, v61) == 1)
    {
      sub_1C8778ED8(v59, &qword_1EC2B64B0, &unk_1C8BF3F40);
      return 1;
    }

    goto LABEL_35;
  }

  v62 = v67;
  sub_1C8778810();
  if (__swift_getEnumTagSinglePayload(v60 + v57, 1, v61) == 1)
  {

    sub_1C8778ED8(v74, &qword_1EC2B64B0, &unk_1C8BF3F40);
    sub_1C88221F0();
LABEL_35:
    sub_1C8778ED8(v60, &qword_1EC2B64D8, &unk_1C8BEAC20);
    return 0;
  }

  v63 = v66;
  sub_1C883C17C();
  v64 = static Siri_Nlu_External_RequestID.== infix(_:_:)(v62, v63);

  sub_1C88221F0();
  sub_1C8778ED8(v74, &qword_1EC2B64B0, &unk_1C8BF3F40);
  sub_1C88221F0();
  sub_1C8778ED8(v60, &qword_1EC2B64B0, &unk_1C8BF3F40);
  return (v64 & 1) != 0;
}

uint64_t Siri_Nlu_Internal_Queryrewrite_QRRequest.hashValue.getter()
{
  sub_1C8BD530C();
  type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRRequest(0);
  sub_1C8776548(&qword_1EC2B7158, type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRRequest, &protocol conformance descriptor for Siri_Nlu_Internal_Queryrewrite_QRRequest);
  sub_1C8BD515C();
  return sub_1C8BD531C();
}

uint64_t sub_1C883DCD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776548(&qword_1EC2B7198, type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRRequest, &protocol conformance descriptor for Siri_Nlu_Internal_Queryrewrite_QRRequest);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C883DD50(uint64_t a1)
{
  v2 = sub_1C8776548(&qword_1EC2B7168, type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRRequest, &protocol conformance descriptor for Siri_Nlu_Internal_Queryrewrite_QRRequest);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C883DDC0(uint64_t a1, uint64_t a2)
{
  sub_1C8776548(&qword_1EC2B7168, type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRRequest, &protocol conformance descriptor for Siri_Nlu_Internal_Queryrewrite_QRRequest);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C883DF88(uint64_t a1)
{
  result = sub_1C8BD49FC();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRRequest._StorageClass(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1C883E014(uint64_t a1)
{
  sub_1C883E130(319, qword_1EDACE198, type metadata accessor for Siri_Nlu_External_UUID);
  if (v1 <= 0x3F)
  {
    sub_1C883E130(319, qword_1EDACDC48, type metadata accessor for Siri_Nlu_External_RequestID);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1C883E130(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C8BD522C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t OUTLINED_FUNCTION_7_10()
{

  return sub_1C883C17C();
}

uint64_t Siri_Nlu_External_ResponseStatus.code.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for Siri_Nlu_External_ResponseStatus(0);
  v4 = *(v1 + *(result + 20));
  if (v4 == 8)
  {
    LOBYTE(v4) = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t type metadata accessor for Siri_Nlu_External_ResponseStatus(uint64_t a1)
{
  result = qword_1EDACD360;
  if (!qword_1EDACD360)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C883E238@<X0>(_BYTE *a1@<X8>)
{
  result = Siri_Nlu_External_ResponseStatus.code.getter(&v3);
  *a1 = v3;
  return result;
}

uint64_t Siri_Nlu_External_ResponseStatus.code.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for Siri_Nlu_External_ResponseStatus(0);
  *(v1 + *(result + 20)) = v2;
  return result;
}

uint64_t (*Siri_Nlu_External_ResponseStatus.code.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Siri_Nlu_External_ResponseStatus(0) + 20);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 8)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return OUTLINED_FUNCTION_158;
}

uint64_t Siri_Nlu_External_ResponseStatus.description_p.getter()
{
  v1 = (v0 + *(type metadata accessor for Siri_Nlu_External_ResponseStatus(0) + 24));
  if (v1[1])
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_1C883E3E4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_External_ResponseStatus.description_p.setter(v1, v2);
}

uint64_t Siri_Nlu_External_ResponseStatus.description_p.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Siri_Nlu_External_ResponseStatus(0) + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

void (*Siri_Nlu_External_ResponseStatus.description_p.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[2] = v1;
  v4 = *(type metadata accessor for Siri_Nlu_External_ResponseStatus(0) + 24);
  *(v3 + 8) = v4;
  v5 = (v1 + v4);
  v6 = v5[1];
  if (v6)
  {
    v7 = *v5;
    v8 = v6;
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  v3[3] = v6;
  *v3 = v7;
  v3[1] = v8;

  return sub_1C87E6EC8;
}

Swift::Void __swiftcall Siri_Nlu_External_ResponseStatus.clearDescription_p()()
{
  v1 = (v0 + *(type metadata accessor for Siri_Nlu_External_ResponseStatus(0) + 24));

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Siri_Nlu_External_ResponseStatus.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C8BD49FC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Siri_Nlu_External_ResponseStatus.unknownFields.setter()
{
  sub_1C8BD49FC();
  v0 = OUTLINED_FUNCTION_5_0();

  return v1(v0);
}

SiriNLUTypes::Siri_Nlu_External_ResponseStatus::StatusCode_optional __swiftcall Siri_Nlu_External_ResponseStatus.StatusCode.init(rawValue:)(Swift::Int rawValue)
{
  if (!v2 & v1)
  {
    if (rawValue == 101)
    {
      v4 = 2;
    }

    else
    {
      v4 = 8;
    }

    if (rawValue == 500)
    {
      v5 = 7;
    }

    else
    {
      v5 = v4;
    }

    if (rawValue == 100)
    {
      v6 = 1;
    }

    else
    {
      v6 = v5;
    }

    if (!rawValue)
    {
      v6 = 0;
    }
  }

  else
  {
    switch(rawValue)
    {
      case 300:
        v6 = 3;
        break;
      case 301:
        v6 = 4;
        break;
      case 302:
        v6 = 5;
        break;
      case 303:
        v6 = 6;
        break;
      default:
        JUMPOUT(0);
    }
  }

  *v3 = v6;
  return rawValue;
}

uint64_t sub_1C883E710(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C883EC4C();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}