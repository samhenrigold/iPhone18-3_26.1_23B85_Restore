uint64_t sub_1C89F5E6C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v3, a2);
  v4 = OUTLINED_FUNCTION_5_0();
  __swift_project_value_buffer(v4, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v6 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v7 = (*(*v6 + 80) + 32) & ~*(*v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C8BE6F30;
  v9 = v8 + v7 + v6[14];
  *(v8 + v7) = 1;
  *v9 = "value";
  *(v9 + 8) = 5;
  *(v9 + 16) = 2;
  v10 = *MEMORY[0x1E69AADC8];
  sub_1C8BD50FC();
  OUTLINED_FUNCTION_21();
  (*(v11 + 104))(v9, v10);
  return sub_1C8BD510C();
}

uint64_t sub_1C89F6040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = v6;
  while (1)
  {
    OUTLINED_FUNCTION_234();
    result = sub_1C8BD4AFC();
    if (v7 || (v16 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a6(a1, v11, a2, a3, a4, a5);
    }
  }

  return result;
}

uint64_t sub_1C89F60CC()
{
  v1 = OUTLINED_FUNCTION_9();
  v3 = v2(v1);
  v4 = OUTLINED_FUNCTION_11_17(v3);
  return v0(v4);
}

uint64_t Siri_Common_BytesValue.traverse<A>(visitor:)()
{
  v1 = OUTLINED_FUNCTION_72_4();
  type metadata accessor for Siri_Common_BytesValue(v1);
  OUTLINED_FUNCTION_27_8();
  if (*(v2 + 8) >> 60 == 15)
  {
    return OUTLINED_FUNCTION_15();
  }

  v3 = OUTLINED_FUNCTION_234();
  sub_1C87A8FBC(v3, v4);
  OUTLINED_FUNCTION_234();
  OUTLINED_FUNCTION_35_6();
  sub_1C8BD4D6C();
  v5 = OUTLINED_FUNCTION_234();
  result = sub_1C87A9A24(v5, v6);
  if (!v0)
  {
    return OUTLINED_FUNCTION_15();
  }

  return result;
}

uint64_t static Siri_Common_BytesValue.== infix(_:_:)()
{
  v1 = OUTLINED_FUNCTION_84();
  type metadata accessor for Siri_Common_BytesValue(v1);
  OUTLINED_FUNCTION_31_8();
  v4 = *v2;
  v3 = v2[1];
  v6 = (v0 + v5);
  v8 = *v6;
  v7 = v6[1];
  if (v3 >> 60 != 15)
  {
    if (v7 >> 60 != 15)
    {
      v14 = OUTLINED_FUNCTION_15_10();
      v15 = MEMORY[0x1CCA7D0F0](v14);
      sub_1C87A9A24(v8, v7);
      sub_1C87A9A24(v4, v3);
      if (v15)
      {
        goto LABEL_8;
      }

      return 0;
    }

LABEL_5:
    v11 = OUTLINED_FUNCTION_15_10();
    sub_1C87A9A24(v11, v12);
    sub_1C87A9A24(v8, v7);
    return 0;
  }

  if (v7 >> 60 != 15)
  {
    goto LABEL_5;
  }

  v9 = OUTLINED_FUNCTION_15_10();
  sub_1C87A9A24(v9, v10);
LABEL_8:
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_0_20();
  v18 = sub_1C8776980(v16, v17, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_159(v18) & 1;
}

uint64_t sub_1C89F62DC(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_1C8BD530C();
  a1(0);
  sub_1C8776980(a2, a3, a4);
  sub_1C8BD515C();
  return sub_1C8BD531C();
}

uint64_t sub_1C89F63B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776980(&qword_1EC2BDCB8, type metadata accessor for Siri_Common_BytesValue, &protocol conformance descriptor for Siri_Common_BytesValue);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C89F6438(uint64_t a1)
{
  v2 = sub_1C8776980(&qword_1EC2BDC18, type metadata accessor for Siri_Common_BytesValue, &protocol conformance descriptor for Siri_Common_BytesValue);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C89F64A8(uint64_t a1, uint64_t a2)
{
  sub_1C8776980(&qword_1EC2BDC18, type metadata accessor for Siri_Common_BytesValue, &protocol conformance descriptor for Siri_Common_BytesValue);

  return sub_1C8BD4CFC();
}

void sub_1C89F6FC0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5)
{
  sub_1C8BD49FC();
  if (v7 <= 0x3F)
  {
    sub_1C87EB4B0(319, a4, a5);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t OUTLINED_FUNCTION_7_20(uint64_t result)
{
  v2 = v1 + *(result + 20);
  *v2 = 0;
  *(v2 + 8) = 1;
  return result;
}

uint64_t Siri_Nlu_Internal_MatchingSpan.label.getter()
{
  OUTLINED_FUNCTION_15_11();
  OUTLINED_FUNCTION_54_6(*(v0 + v1) + 16, v2);

  return OUTLINED_FUNCTION_218();
}

void (*Siri_Nlu_Internal_MatchingSpan.label.modify())()
{
  v2 = __swift_coroFrameAllocStub(0x50uLL);
  *(OUTLINED_FUNCTION_34_0(v2) + 64) = v0;
  OUTLINED_FUNCTION_15_11();
  *(v1 + 72) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_277(v4 + 16, v1);
  if (*(v4 + 24))
  {
    v5 = *(v4 + 16);
    v6 = *(v4 + 24);
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *(v1 + 48) = v5;
  *(v1 + 56) = v6;

  return sub_1C89F7390;
}

void sub_1C89F7390()
{
  OUTLINED_FUNCTION_732();
  if (v5)
  {

    OUTLINED_FUNCTION_184();
    Siri_Nlu_Internal_MatchingSpan.label.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_94_5();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_25_10();
      v8 = OUTLINED_FUNCTION_2();
      v9 = sub_1C878F828(v8);
      OUTLINED_FUNCTION_90(v9);
    }

    OUTLINED_FUNCTION_37_0(v7 + 16, v0 + 24);
    *(v7 + 16) = v3;
    *(v7 + 24) = v2;
  }

  free(v0);
}

BOOL Siri_Nlu_Internal_MatchingSpan.hasLabel.getter()
{
  OUTLINED_FUNCTION_15_11();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_54_6(v2 + 16, v3);
  return *(v2 + 24) != 0;
}

Swift::Void __swiftcall Siri_Nlu_Internal_MatchingSpan.clearLabel()()
{
  v2 = OUTLINED_FUNCTION_50_7();
  v4 = *(v0 + v1);
  if ((v2 & 1) == 0)
  {
    OUTLINED_FUNCTION_25_10();
    v5 = OUTLINED_FUNCTION_109_3();
    OUTLINED_FUNCTION_102_4(v5);
  }

  OUTLINED_FUNCTION_178_0(v4 + 16, v3);
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
}

uint64_t Siri_Nlu_Internal_MatchingSpan.input.getter()
{
  OUTLINED_FUNCTION_15_11();
  OUTLINED_FUNCTION_54_6(*(v0 + v1) + 32, v2);

  return OUTLINED_FUNCTION_218();
}

void (*Siri_Nlu_Internal_MatchingSpan.input.modify())()
{
  v2 = __swift_coroFrameAllocStub(0x50uLL);
  *(OUTLINED_FUNCTION_34_0(v2) + 64) = v0;
  OUTLINED_FUNCTION_15_11();
  *(v1 + 72) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_277(v4 + 32, v1);
  if (*(v4 + 40))
  {
    v5 = *(v4 + 32);
    v6 = *(v4 + 40);
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *(v1 + 48) = v5;
  *(v1 + 56) = v6;

  return sub_1C89F75FC;
}

void sub_1C89F75FC()
{
  OUTLINED_FUNCTION_732();
  if (v5)
  {

    OUTLINED_FUNCTION_184();
    Siri_Nlu_Internal_MatchingSpan.input.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_94_5();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_25_10();
      v8 = OUTLINED_FUNCTION_2();
      v9 = sub_1C878F828(v8);
      OUTLINED_FUNCTION_90(v9);
    }

    OUTLINED_FUNCTION_37_0(v7 + 32, v0 + 24);
    *(v7 + 32) = v3;
    *(v7 + 40) = v2;
  }

  free(v0);
}

BOOL Siri_Nlu_Internal_MatchingSpan.hasInput.getter()
{
  OUTLINED_FUNCTION_15_11();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_54_6(v2 + 32, v3);
  return *(v2 + 40) != 0;
}

Swift::Void __swiftcall Siri_Nlu_Internal_MatchingSpan.clearInput()()
{
  v2 = OUTLINED_FUNCTION_50_7();
  v4 = *(v0 + v1);
  if ((v2 & 1) == 0)
  {
    OUTLINED_FUNCTION_25_10();
    v5 = OUTLINED_FUNCTION_109_3();
    OUTLINED_FUNCTION_102_4(v5);
  }

  OUTLINED_FUNCTION_178_0(v4 + 32, v3);
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
}

uint64_t Siri_Nlu_Internal_MatchingSpan.startTokenIndex.getter()
{
  OUTLINED_FUNCTION_15_11();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_54_6(v2 + 48, v3);
  if (*(v2 + 52))
  {
    return 0;
  }

  else
  {
    return *(v2 + 48);
  }
}

uint64_t Siri_Nlu_Internal_MatchingSpan.startTokenIndex.modify()
{
  v2 = __swift_coroFrameAllocStub(0x58uLL);
  *(OUTLINED_FUNCTION_34_0(v2) + 72) = v0;
  OUTLINED_FUNCTION_15_11();
  *(v1 + 84) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_277(v4 + 48, v1);
  v5 = *(v4 + 48);
  if (*(v4 + 52))
  {
    v5 = 0;
  }

  *(v1 + 80) = v5;
  return OUTLINED_FUNCTION_31();
}

void sub_1C89F77FC(uint64_t a1)
{
  v6 = OUTLINED_FUNCTION_81_4(a1);
  v7 = *(v5 + v2);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_25_10();
    v8 = OUTLINED_FUNCTION_2();
    v9 = sub_1C878F828(v8);
    OUTLINED_FUNCTION_90(v9);
  }

  v10 = 48;
  if (v3)
  {
    v10 = 24;
  }

  OUTLINED_FUNCTION_37_0(v7 + 48, v1 + v10);
  *(v7 + 48) = v4;
  *(v7 + 52) = 0;

  free(v1);
}

BOOL Siri_Nlu_Internal_MatchingSpan.hasStartTokenIndex.getter()
{
  OUTLINED_FUNCTION_15_11();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_54_6(v2 + 48, v3);
  return (*(v2 + 52) & 1) == 0;
}

Swift::Void __swiftcall Siri_Nlu_Internal_MatchingSpan.clearStartTokenIndex()()
{
  v2 = OUTLINED_FUNCTION_50_7();
  v4 = *(v0 + v1);
  if ((v2 & 1) == 0)
  {
    OUTLINED_FUNCTION_25_10();
    v5 = OUTLINED_FUNCTION_109_3();
    OUTLINED_FUNCTION_102_4(v5);
  }

  OUTLINED_FUNCTION_178_0(v4 + 48, v3);
  *(v4 + 48) = 0;
  *(v4 + 52) = 1;
}

uint64_t Siri_Nlu_Internal_MatchingSpan.endTokenIndex.getter()
{
  OUTLINED_FUNCTION_15_11();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_54_6(v2 + 56, v3);
  if (*(v2 + 60))
  {
    return 0;
  }

  else
  {
    return *(v2 + 56);
  }
}

uint64_t Siri_Nlu_Internal_MatchingSpan.endTokenIndex.modify()
{
  v2 = __swift_coroFrameAllocStub(0x58uLL);
  *(OUTLINED_FUNCTION_34_0(v2) + 72) = v0;
  OUTLINED_FUNCTION_15_11();
  *(v1 + 84) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_277(v4 + 56, v1);
  v5 = *(v4 + 56);
  if (*(v4 + 60))
  {
    v5 = 0;
  }

  *(v1 + 80) = v5;
  return OUTLINED_FUNCTION_31();
}

void sub_1C89F79E4(uint64_t a1)
{
  v6 = OUTLINED_FUNCTION_81_4(a1);
  v7 = *(v5 + v2);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_25_10();
    v8 = OUTLINED_FUNCTION_2();
    v9 = sub_1C878F828(v8);
    OUTLINED_FUNCTION_90(v9);
  }

  v10 = 48;
  if (v3)
  {
    v10 = 24;
  }

  OUTLINED_FUNCTION_37_0(v7 + 56, v1 + v10);
  *(v7 + 56) = v4;
  *(v7 + 60) = 0;

  free(v1);
}

BOOL Siri_Nlu_Internal_MatchingSpan.hasEndTokenIndex.getter()
{
  OUTLINED_FUNCTION_15_11();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_54_6(v2 + 56, v3);
  return (*(v2 + 60) & 1) == 0;
}

Swift::Void __swiftcall Siri_Nlu_Internal_MatchingSpan.clearEndTokenIndex()()
{
  v2 = OUTLINED_FUNCTION_50_7();
  v4 = *(v0 + v1);
  if ((v2 & 1) == 0)
  {
    OUTLINED_FUNCTION_25_10();
    v5 = OUTLINED_FUNCTION_109_3();
    OUTLINED_FUNCTION_102_4(v5);
  }

  OUTLINED_FUNCTION_178_0(v4 + 56, v3);
  *(v4 + 56) = 0;
  *(v4 + 60) = 1;
}

uint64_t Siri_Nlu_Internal_MatchingSpan.usoGraph.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v16[-v5 - 8];
  OUTLINED_FUNCTION_15_11();
  OUTLINED_FUNCTION_277(*(v1 + v7) + OBJC_IVAR____TtCV12SiriNLUTypes30Siri_Nlu_Internal_MatchingSpanP33_8AEF3234A80133152DECA9B682B915F813_StorageClass__usoGraph, v16);
  OUTLINED_FUNCTION_61();
  type metadata accessor for Siri_Nlu_External_UsoGraph(0);
  OUTLINED_FUNCTION_65(v6);
  if (v8)
  {
    v9 = MEMORY[0x1E69E7CC0];
    *a1 = MEMORY[0x1E69E7CC0];
    a1[1] = v9;
    a1[2] = v9;
    a1[3] = v9;
    a1[4] = v9;
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    type metadata accessor for Siri_Nlu_External_SemVer(0);
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
    result = OUTLINED_FUNCTION_65(v6);
    if (!v8)
    {
      return sub_1C8778ED8(v6, &qword_1EC2B61D0, &qword_1C8C0C1E0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_18_14();
    return sub_1C89FB0DC();
  }

  return result;
}

uint64_t Siri_Nlu_Internal_MatchingSpan.usoGraph.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61D0, &qword_1C8C0C1E0);
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_170();
  type metadata accessor for Siri_Nlu_Internal_MatchingSpan(v2);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_25_10();
    v3 = OUTLINED_FUNCTION_2();
    v4 = sub_1C878F828(v3);
    OUTLINED_FUNCTION_40(v4);
  }

  OUTLINED_FUNCTION_18_14();
  OUTLINED_FUNCTION_196_0();
  sub_1C89FB0DC();
  type metadata accessor for Siri_Nlu_External_UsoGraph(0);
  OUTLINED_FUNCTION_19_1();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_15_3();
  v9 = OUTLINED_FUNCTION_200();
  sub_1C878656C(v9, v10, v11, v12);
  return swift_endAccess();
}

void Siri_Nlu_Internal_MatchingSpan.usoGraph.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = v1;
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *v2 = v3;
  v3[3] = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61D0, &qword_1C8C0C1E0);
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[4] = v6;
  type metadata accessor for Siri_Nlu_External_UsoGraph(0);
  OUTLINED_FUNCTION_21();
  v8 = *(v7 + 64);
  v3[5] = __swift_coroFrameAllocStub(v8);
  v9 = __swift_coroFrameAllocStub(v8);
  v3[6] = v9;
  OUTLINED_FUNCTION_15_11();
  OUTLINED_FUNCTION_277(*(v0 + v10) + OBJC_IVAR____TtCV12SiriNLUTypes30Siri_Nlu_Internal_MatchingSpanP33_8AEF3234A80133152DECA9B682B915F813_StorageClass__usoGraph, v3);
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_72(v6);
  if (v11)
  {
    v12 = MEMORY[0x1E69E7CC0];
    *v9 = MEMORY[0x1E69E7CC0];
    v9[1] = v12;
    v9[2] = v12;
    v9[3] = v12;
    v9[4] = v12;
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    type metadata accessor for Siri_Nlu_External_SemVer(0);
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
    OUTLINED_FUNCTION_72(v6);
    if (!v11)
    {
      sub_1C8778ED8(v6, &qword_1EC2B61D0, &qword_1C8C0C1E0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_18_14();
    sub_1C89FB0DC();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_Internal_MatchingSpan.matcherNames.getter()
{
  OUTLINED_FUNCTION_15_11();
  OUTLINED_FUNCTION_54_6(*(v0 + v1) + OBJC_IVAR____TtCV12SiriNLUTypes30Siri_Nlu_Internal_MatchingSpanP33_8AEF3234A80133152DECA9B682B915F813_StorageClass__matcherNames, v2);
}

uint64_t Siri_Nlu_Internal_MatchingSpan.matcherNames.setter(uint64_t a1)
{
  v3 = v1;
  v5 = OUTLINED_FUNCTION_50_7();
  v7 = *(v1 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_25_10();
    v8 = OUTLINED_FUNCTION_2();
    v7 = sub_1C878F828(v8);
    *(v3 + v2) = v7;
  }

  v9 = OBJC_IVAR____TtCV12SiriNLUTypes30Siri_Nlu_Internal_MatchingSpanP33_8AEF3234A80133152DECA9B682B915F813_StorageClass__matcherNames;
  OUTLINED_FUNCTION_178_0(v7 + OBJC_IVAR____TtCV12SiriNLUTypes30Siri_Nlu_Internal_MatchingSpanP33_8AEF3234A80133152DECA9B682B915F813_StorageClass__matcherNames, v6);
  *(v7 + v9) = a1;
}

uint64_t Siri_Nlu_Internal_MatchingSpan.matcherNames.modify()
{
  v2 = __swift_coroFrameAllocStub(0x48uLL);
  *(OUTLINED_FUNCTION_34_0(v2) + 56) = v0;
  OUTLINED_FUNCTION_15_11();
  *(v1 + 64) = v3;
  v4 = *(v0 + v3);
  v5 = OBJC_IVAR____TtCV12SiriNLUTypes30Siri_Nlu_Internal_MatchingSpanP33_8AEF3234A80133152DECA9B682B915F813_StorageClass__matcherNames;
  OUTLINED_FUNCTION_277(v4 + OBJC_IVAR____TtCV12SiriNLUTypes30Siri_Nlu_Internal_MatchingSpanP33_8AEF3234A80133152DECA9B682B915F813_StorageClass__matcherNames, v1);
  *(v1 + 48) = *(v4 + v5);

  return OUTLINED_FUNCTION_12();
}

void sub_1C89F808C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  if (a2)
  {

    Siri_Nlu_Internal_MatchingSpan.matcherNames.setter(v4);
  }

  else
  {
    v5 = *(v2 + 64);
    v6 = *(v2 + 56);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(v6 + v5);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = *(v2 + 64);
      v10 = *(v2 + 56);
      OUTLINED_FUNCTION_25_10();
      v11 = OUTLINED_FUNCTION_2();
      v8 = sub_1C878F828(v11);
      *(v10 + v9) = v8;
    }

    v12 = OBJC_IVAR____TtCV12SiriNLUTypes30Siri_Nlu_Internal_MatchingSpanP33_8AEF3234A80133152DECA9B682B915F813_StorageClass__matcherNames;
    OUTLINED_FUNCTION_37_0(v8 + OBJC_IVAR____TtCV12SiriNLUTypes30Siri_Nlu_Internal_MatchingSpanP33_8AEF3234A80133152DECA9B682B915F813_StorageClass__matcherNames, v2 + 24);
    *(v8 + v12) = v3;
  }

  free(v2);
}

uint64_t Siri_Nlu_Internal_MatchingSpan.internalSpanData.getter()
{
  v2 = OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_80(v2);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v30[-v4 - 8];
  OUTLINED_FUNCTION_15_11();
  OUTLINED_FUNCTION_277(*(v1 + v6) + OBJC_IVAR____TtCV12SiriNLUTypes30Siri_Nlu_Internal_MatchingSpanP33_8AEF3234A80133152DECA9B682B915F813_StorageClass__internalSpanData, v30);
  OUTLINED_FUNCTION_61();
  type metadata accessor for Siri_Nlu_Internal_InternalSpanData(0);
  OUTLINED_FUNCTION_65(v5);
  if (v7)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    type metadata accessor for Siri_Nlu_Internal_SiriVocabularySpanData(0);
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
    type metadata accessor for Siri_Nlu_Internal_PLUMSpanData(0);
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
    type metadata accessor for Siri_Nlu_Internal_OvertonKGSpanData(0);
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
    type metadata accessor for Siri_Nlu_Internal_MentionDetectorSpanData(0);
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
    type metadata accessor for Siri_Nlu_Internal_MentionResolverSpanData(0);
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v24, v25, v26, v27);
    result = OUTLINED_FUNCTION_65(v5);
    if (!v7)
    {
      return sub_1C8778ED8(v5, &qword_1EC2BDD48, &qword_1C8C0C1E8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_21_8();
    return sub_1C89FB0DC();
  }

  return result;
}

uint64_t Siri_Nlu_Internal_MatchingSpan.internalSpanData.setter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BDD48, &qword_1C8C0C1E8);
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_170();
  type metadata accessor for Siri_Nlu_Internal_MatchingSpan(v2);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_25_10();
    v3 = OUTLINED_FUNCTION_2();
    v4 = sub_1C878F828(v3);
    OUTLINED_FUNCTION_40(v4);
  }

  OUTLINED_FUNCTION_21_8();
  OUTLINED_FUNCTION_196_0();
  sub_1C89FB0DC();
  type metadata accessor for Siri_Nlu_Internal_InternalSpanData(0);
  OUTLINED_FUNCTION_19_1();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_15_3();
  v9 = OUTLINED_FUNCTION_200();
  sub_1C878656C(v9, v10, v11, v12);
  return swift_endAccess();
}

uint64_t Siri_Nlu_Internal_InternalSpanData.init()(uint64_t a1)
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  type metadata accessor for Siri_Nlu_Internal_InternalSpanData(0);
  type metadata accessor for Siri_Nlu_Internal_SiriVocabularySpanData(0);
  OUTLINED_FUNCTION_5();
  __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
  type metadata accessor for Siri_Nlu_Internal_PLUMSpanData(0);
  OUTLINED_FUNCTION_5();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  type metadata accessor for Siri_Nlu_Internal_OvertonKGSpanData(0);
  OUTLINED_FUNCTION_5();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  type metadata accessor for Siri_Nlu_Internal_MentionDetectorSpanData(0);
  OUTLINED_FUNCTION_5();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  type metadata accessor for Siri_Nlu_Internal_MentionResolverSpanData(0);
  OUTLINED_FUNCTION_5();

  return __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
}

void Siri_Nlu_Internal_MatchingSpan.internalSpanData.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = v1;
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *v2 = v3;
  v3[3] = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BDD48, &qword_1C8C0C1E8);
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[4] = v6;
  type metadata accessor for Siri_Nlu_Internal_InternalSpanData(0);
  OUTLINED_FUNCTION_21();
  v8 = *(v7 + 64);
  v3[5] = __swift_coroFrameAllocStub(v8);
  v3[6] = __swift_coroFrameAllocStub(v8);
  OUTLINED_FUNCTION_15_11();
  OUTLINED_FUNCTION_277(*(v0 + v9) + OBJC_IVAR____TtCV12SiriNLUTypes30Siri_Nlu_Internal_MatchingSpanP33_8AEF3234A80133152DECA9B682B915F813_StorageClass__internalSpanData, v3);
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_72(v6);
  if (v10)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    type metadata accessor for Siri_Nlu_Internal_SiriVocabularySpanData(0);
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
    type metadata accessor for Siri_Nlu_Internal_PLUMSpanData(0);
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
    type metadata accessor for Siri_Nlu_Internal_OvertonKGSpanData(0);
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
    type metadata accessor for Siri_Nlu_Internal_MentionDetectorSpanData(0);
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
    type metadata accessor for Siri_Nlu_Internal_MentionResolverSpanData(0);
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
    OUTLINED_FUNCTION_72(v6);
    if (!v10)
    {
      sub_1C8778ED8(v6, &qword_1EC2BDD48, &qword_1C8C0C1E8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_21_8();
    sub_1C89FB0DC();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

void sub_1C89F8688()
{
  OUTLINED_FUNCTION_261();
  v2 = v1;
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 32);
  if (v6)
  {
    OUTLINED_FUNCTION_97();
    sub_1C89FB130();
    v2(v3);
    sub_1C87A8BDC();
  }

  else
  {
    v1(*(*v0 + 48));
  }

  free(v4);
  free(v3);
  free(v5);
  OUTLINED_FUNCTION_260();

  free(v7);
}

BOOL sub_1C89F875C(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_80(v9);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20[-v11 - 8];
  OUTLINED_FUNCTION_15_11();
  v14 = *(v4 + v13);
  v15 = *a3;
  OUTLINED_FUNCTION_277(v14 + v15, v20);
  sub_1C87867A0(v14 + v15, v12, a1, a2);
  v16 = a4(0);
  v17 = __swift_getEnumTagSinglePayload(v12, 1, v16) != 1;
  sub_1C8778ED8(v12, a1, a2);
  return v17;
}

void sub_1C89F8868()
{
  OUTLINED_FUNCTION_261();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = v0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v5);
  OUTLINED_FUNCTION_80(v10);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v23 - v12;
  v14 = *(type metadata accessor for Siri_Nlu_Internal_MatchingSpan(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(v0 + v14);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_25_10();
    v17 = OUTLINED_FUNCTION_2();
    v16 = sub_1C878F828(v17);
    *(v9 + v14) = v16;
  }

  v4(0);
  OUTLINED_FUNCTION_5();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
  v22 = *v2;
  swift_beginAccess();
  sub_1C878656C(v13, v16 + v22, v8, v6);
  swift_endAccess();
  OUTLINED_FUNCTION_260();
}

uint64_t Siri_Nlu_Internal_MatchingSpan.semanticValue.getter()
{
  OUTLINED_FUNCTION_15_11();
  OUTLINED_FUNCTION_277(*(v0 + v1) + OBJC_IVAR____TtCV12SiriNLUTypes30Siri_Nlu_Internal_MatchingSpanP33_8AEF3234A80133152DECA9B682B915F813_StorageClass__semanticValue, v3);

  return OUTLINED_FUNCTION_218();
}

uint64_t Siri_Nlu_Internal_MatchingSpan.semanticValue.setter()
{
  v4 = OUTLINED_FUNCTION_68_5();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_25_10();
    v6 = OUTLINED_FUNCTION_2();
    v7 = sub_1C878F828(v6);
    OUTLINED_FUNCTION_40(v7);
  }

  v8 = (v5 + OBJC_IVAR____TtCV12SiriNLUTypes30Siri_Nlu_Internal_MatchingSpanP33_8AEF3234A80133152DECA9B682B915F813_StorageClass__semanticValue);
  OUTLINED_FUNCTION_37_0(v8, v10);
  *v8 = v2;
  v8[1] = v0;
}

void (*Siri_Nlu_Internal_MatchingSpan.semanticValue.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v3;
  v3[8] = v1;
  OUTLINED_FUNCTION_15_11();
  *(v3 + 18) = v4;
  v5 = (*(v1 + v4) + OBJC_IVAR____TtCV12SiriNLUTypes30Siri_Nlu_Internal_MatchingSpanP33_8AEF3234A80133152DECA9B682B915F813_StorageClass__semanticValue);
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

  return sub_1C89F8B28;
}

void sub_1C89F8B28()
{
  OUTLINED_FUNCTION_732();
  if (v5)
  {

    OUTLINED_FUNCTION_184();
    Siri_Nlu_Internal_MatchingSpan.semanticValue.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_94_5();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_25_10();
      v8 = OUTLINED_FUNCTION_2();
      v9 = sub_1C878F828(v8);
      OUTLINED_FUNCTION_90(v9);
    }

    v10 = (v7 + OBJC_IVAR____TtCV12SiriNLUTypes30Siri_Nlu_Internal_MatchingSpanP33_8AEF3234A80133152DECA9B682B915F813_StorageClass__semanticValue);
    OUTLINED_FUNCTION_37_0(v10, v0 + 24);
    *v10 = v3;
    v10[1] = v2;
  }

  free(v0);
}

BOOL Siri_Nlu_Internal_MatchingSpan.hasSemanticValue.getter()
{
  OUTLINED_FUNCTION_15_11();
  v2 = *(v0 + v1) + OBJC_IVAR____TtCV12SiriNLUTypes30Siri_Nlu_Internal_MatchingSpanP33_8AEF3234A80133152DECA9B682B915F813_StorageClass__semanticValue;
  OUTLINED_FUNCTION_277(v2, v4);
  return *(v2 + 8) != 0;
}

Swift::Void __swiftcall Siri_Nlu_Internal_MatchingSpan.clearSemanticValue()()
{
  v1 = v0;
  v2 = *(type metadata accessor for Siri_Nlu_Internal_MatchingSpan(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_25_10();
    v5 = OUTLINED_FUNCTION_2();
    v4 = sub_1C878F828(v5);
    *(v1 + v2) = v4;
  }

  v6 = (v4 + OBJC_IVAR____TtCV12SiriNLUTypes30Siri_Nlu_Internal_MatchingSpanP33_8AEF3234A80133152DECA9B682B915F813_StorageClass__semanticValue);
  OUTLINED_FUNCTION_37_0(v4 + OBJC_IVAR____TtCV12SiriNLUTypes30Siri_Nlu_Internal_MatchingSpanP33_8AEF3234A80133152DECA9B682B915F813_StorageClass__semanticValue, v7);
  *v6 = 0;
  v6[1] = 0;
}

uint64_t sub_1C89F8CE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8793528();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1C89F8D4C@<X0>(uint64_t *a1@<X8>)
{
  result = Siri_Nlu_Internal_MatchingSpan.MatcherName.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t Siri_Nlu_Internal_InternalSpanData.siriVocabularySpanData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_60_1();
  v5 = type metadata accessor for Siri_Nlu_Internal_InternalSpanData(0);
  OUTLINED_FUNCTION_47_8(*(v5 + 20));
  v6 = type metadata accessor for Siri_Nlu_Internal_SiriVocabularySpanData(0);
  OUTLINED_FUNCTION_1_0();
  if (v7)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v8 = a1 + v6[5];
    *v8 = 0;
    *(v8 + 4) = 1;
    OUTLINED_FUNCTION_15_2(v6[6]);
    OUTLINED_FUNCTION_15_2(v6[7]);
    result = OUTLINED_FUNCTION_1_0();
    if (!v7)
    {
      return sub_1C8778ED8(v1, &qword_1EC2BDD50, &qword_1C8C0C1F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_19_12();
    OUTLINED_FUNCTION_121();
    return sub_1C89FB0DC();
  }

  return result;
}

uint64_t Siri_Nlu_Internal_InternalSpanData.siriVocabularySpanData.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_Internal_InternalSpanData(v1);
  sub_1C8778ED8(v0 + *(v2 + 20), &qword_1EC2BDD50, &qword_1C8C0C1F0);
  OUTLINED_FUNCTION_19_12();
  OUTLINED_FUNCTION_200();
  sub_1C89FB0DC();
  type metadata accessor for Siri_Nlu_Internal_SiriVocabularySpanData(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_Internal_SiriVocabularySpanData.init()(uint64_t a2@<X8>)
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v3 = type metadata accessor for Siri_Nlu_Internal_SiriVocabularySpanData(0);
  v4 = a2 + *(v3 + 20);
  *v4 = 0;
  *(v4 + 4) = 1;
  OUTLINED_FUNCTION_38(*(v3 + 24));
  *(v5 + 8) = v6;
  OUTLINED_FUNCTION_38(*(v7 + 28));
  *(v8 + 8) = v9;
}

void Siri_Nlu_Internal_InternalSpanData.siriVocabularySpanData.modify()
{
  OUTLINED_FUNCTION_261();
  v2 = OUTLINED_FUNCTION_251();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  *(v1 + 8) = v6;
  v7 = type metadata accessor for Siri_Nlu_Internal_SiriVocabularySpanData(0);
  *(v1 + 16) = v7;
  OUTLINED_FUNCTION_21();
  v9 = *(v8 + 64);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_243(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = *(OUTLINED_FUNCTION_73_7(v12) + 20);
  *(v1 + 40) = v13;
  sub_1C87867A0(v0 + v13, v6, &qword_1EC2BDD50, &qword_1C8C0C1F0);
  OUTLINED_FUNCTION_72(v6);
  if (v14)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v15 = v9 + v7[5];
    *v15 = 0;
    *(v15 + 4) = 1;
    OUTLINED_FUNCTION_11_0(v7[6]);
    OUTLINED_FUNCTION_11_0(v7[7]);
    OUTLINED_FUNCTION_72(v6);
    if (!v14)
    {
      sub_1C8778ED8(v6, &qword_1EC2BDD50, &qword_1C8C0C1F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_19_12();
    sub_1C89FB0DC();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_260();
}

uint64_t Siri_Nlu_Internal_InternalSpanData.hasSiriVocabularySpanData.getter()
{
  v0 = OUTLINED_FUNCTION_12();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_80(v2);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_60_1();
  v4 = type metadata accessor for Siri_Nlu_Internal_InternalSpanData(0);
  OUTLINED_FUNCTION_62_7(*(v4 + 20));
  v5 = type metadata accessor for Siri_Nlu_Internal_SiriVocabularySpanData(0);
  OUTLINED_FUNCTION_10(v5);
  return OUTLINED_FUNCTION_235();
}

Swift::Void __swiftcall Siri_Nlu_Internal_InternalSpanData.clearSiriVocabularySpanData()()
{
  v1 = type metadata accessor for Siri_Nlu_Internal_InternalSpanData(0);
  sub_1C8778ED8(v0 + *(v1 + 20), &qword_1EC2BDD50, &qword_1C8C0C1F0);
  type metadata accessor for Siri_Nlu_Internal_SiriVocabularySpanData(0);
  v2 = OUTLINED_FUNCTION_14_3();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Siri_Nlu_Internal_InternalSpanData.plumSpanData.getter()
{
  v1 = OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_80(v1);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_60_1();
  v3 = type metadata accessor for Siri_Nlu_Internal_InternalSpanData(0);
  OUTLINED_FUNCTION_47_8(*(v3 + 24));
  v4 = type metadata accessor for Siri_Nlu_Internal_PLUMSpanData(0);
  OUTLINED_FUNCTION_1_0();
  if (v5)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_15_2(*(v4 + 20));
    result = OUTLINED_FUNCTION_1_0();
    if (!v5)
    {
      return sub_1C8778ED8(v0, &qword_1EC2BDD58, &qword_1C8C0C1F8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_21();
    OUTLINED_FUNCTION_121();
    return sub_1C89FB0DC();
  }

  return result;
}

uint64_t Siri_Nlu_Internal_InternalSpanData.plumSpanData.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_Internal_InternalSpanData(v1);
  sub_1C8778ED8(v0 + *(v2 + 24), &qword_1EC2BDD58, &qword_1C8C0C1F8);
  OUTLINED_FUNCTION_4_21();
  OUTLINED_FUNCTION_200();
  sub_1C89FB0DC();
  type metadata accessor for Siri_Nlu_Internal_PLUMSpanData(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_Internal_InternalSpanData.plumSpanData.modify()
{
  OUTLINED_FUNCTION_261();
  v2 = OUTLINED_FUNCTION_251();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_43_0(v6);
  v8 = type metadata accessor for Siri_Nlu_Internal_PLUMSpanData(v7);
  *(v1 + 16) = v8;
  OUTLINED_FUNCTION_21();
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_243(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_73_7(v13);
  OUTLINED_FUNCTION_44_10(*(v14 + 24));
  OUTLINED_FUNCTION_73(v0);
  if (v15)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v16 = OUTLINED_FUNCTION_7_21(v10 + *(v8 + 20));
    OUTLINED_FUNCTION_31_9(v16, v17);
    if (!v15)
    {
      sub_1C8778ED8(v0, &qword_1EC2BDD58, &qword_1C8C0C1F8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_21();
    OUTLINED_FUNCTION_184();
    sub_1C89FB0DC();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_260();
}

uint64_t Siri_Nlu_Internal_InternalSpanData.hasPlumSpanData.getter()
{
  v0 = OUTLINED_FUNCTION_12();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_80(v2);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_60_1();
  v4 = type metadata accessor for Siri_Nlu_Internal_InternalSpanData(0);
  OUTLINED_FUNCTION_62_7(*(v4 + 24));
  v5 = type metadata accessor for Siri_Nlu_Internal_PLUMSpanData(0);
  OUTLINED_FUNCTION_10(v5);
  return OUTLINED_FUNCTION_235();
}

Swift::Void __swiftcall Siri_Nlu_Internal_InternalSpanData.clearPlumSpanData()()
{
  v1 = type metadata accessor for Siri_Nlu_Internal_InternalSpanData(0);
  sub_1C8778ED8(v0 + *(v1 + 24), &qword_1EC2BDD58, &qword_1C8C0C1F8);
  type metadata accessor for Siri_Nlu_Internal_PLUMSpanData(0);
  v2 = OUTLINED_FUNCTION_14_3();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Siri_Nlu_Internal_InternalSpanData.overtonKgSpanData.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_60_1();
  v5 = type metadata accessor for Siri_Nlu_Internal_InternalSpanData(0);
  OUTLINED_FUNCTION_47_8(*(v5 + 28));
  v6 = type metadata accessor for Siri_Nlu_Internal_OvertonKGSpanData(0);
  OUTLINED_FUNCTION_1_0();
  if (v7)
  {
    *a1 = MEMORY[0x1E69E7CC0];
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_15_2(*(v6 + 24));
    result = OUTLINED_FUNCTION_1_0();
    if (!v7)
    {
      return sub_1C8778ED8(v1, &qword_1EC2BDD60, &qword_1C8C0C200);
    }
  }

  else
  {
    OUTLINED_FUNCTION_23_13();
    OUTLINED_FUNCTION_121();
    return sub_1C89FB0DC();
  }

  return result;
}

uint64_t Siri_Nlu_Internal_InternalSpanData.overtonKgSpanData.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_Internal_InternalSpanData(v1);
  sub_1C8778ED8(v0 + *(v2 + 28), &qword_1EC2BDD60, &qword_1C8C0C200);
  OUTLINED_FUNCTION_23_13();
  OUTLINED_FUNCTION_200();
  sub_1C89FB0DC();
  type metadata accessor for Siri_Nlu_Internal_OvertonKGSpanData(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_Internal_OvertonKGSpanData.init()(void *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  v1 = type metadata accessor for Siri_Nlu_Internal_OvertonKGSpanData(0);
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  OUTLINED_FUNCTION_38(*(v1 + 24));
  *(v2 + 8) = 1;
}

void Siri_Nlu_Internal_InternalSpanData.overtonKgSpanData.modify()
{
  OUTLINED_FUNCTION_261();
  v2 = OUTLINED_FUNCTION_251();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_43_0(v6);
  v8 = type metadata accessor for Siri_Nlu_Internal_OvertonKGSpanData(v7);
  *(v1 + 16) = v8;
  OUTLINED_FUNCTION_21();
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_243(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_73_7(v13);
  OUTLINED_FUNCTION_44_10(*(v14 + 28));
  OUTLINED_FUNCTION_73(v0);
  if (v15)
  {
    *v10 = MEMORY[0x1E69E7CC0];
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v16 = OUTLINED_FUNCTION_7_21(v10 + *(v8 + 24));
    OUTLINED_FUNCTION_31_9(v16, v17);
    if (!v15)
    {
      sub_1C8778ED8(v0, &qword_1EC2BDD60, &qword_1C8C0C200);
    }
  }

  else
  {
    OUTLINED_FUNCTION_23_13();
    OUTLINED_FUNCTION_184();
    sub_1C89FB0DC();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_260();
}

uint64_t Siri_Nlu_Internal_InternalSpanData.hasOvertonKgSpanData.getter()
{
  v0 = OUTLINED_FUNCTION_12();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_80(v2);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_60_1();
  v4 = type metadata accessor for Siri_Nlu_Internal_InternalSpanData(0);
  OUTLINED_FUNCTION_62_7(*(v4 + 28));
  v5 = type metadata accessor for Siri_Nlu_Internal_OvertonKGSpanData(0);
  OUTLINED_FUNCTION_10(v5);
  return OUTLINED_FUNCTION_235();
}

Swift::Void __swiftcall Siri_Nlu_Internal_InternalSpanData.clearOvertonKgSpanData()()
{
  v1 = type metadata accessor for Siri_Nlu_Internal_InternalSpanData(0);
  sub_1C8778ED8(v0 + *(v1 + 28), &qword_1EC2BDD60, &qword_1C8C0C200);
  type metadata accessor for Siri_Nlu_Internal_OvertonKGSpanData(0);
  v2 = OUTLINED_FUNCTION_14_3();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Siri_Nlu_Internal_InternalSpanData.mentionDetectorSpanData.getter()
{
  v1 = OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_80(v1);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_60_1();
  v3 = type metadata accessor for Siri_Nlu_Internal_InternalSpanData(0);
  OUTLINED_FUNCTION_47_8(*(v3 + 32));
  v4 = type metadata accessor for Siri_Nlu_Internal_MentionDetectorSpanData(0);
  OUTLINED_FUNCTION_1_0();
  if (v5)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_15_2(*(v4 + 20));
    result = OUTLINED_FUNCTION_1_0();
    if (!v5)
    {
      return sub_1C8778ED8(v0, &qword_1EC2BDD68, &qword_1C8C0C208);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_16();
    OUTLINED_FUNCTION_121();
    return sub_1C89FB0DC();
  }

  return result;
}

uint64_t Siri_Nlu_Internal_InternalSpanData.mentionDetectorSpanData.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_Internal_InternalSpanData(v1);
  sub_1C8778ED8(v0 + *(v2 + 32), &qword_1EC2BDD68, &qword_1C8C0C208);
  OUTLINED_FUNCTION_3_16();
  OUTLINED_FUNCTION_200();
  sub_1C89FB0DC();
  type metadata accessor for Siri_Nlu_Internal_MentionDetectorSpanData(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void sub_1C89F9A5C(uint64_t (*a1)(void))
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v2 = a1(0);
  OUTLINED_FUNCTION_13_9(*(v2 + 20));
}

void Siri_Nlu_Internal_InternalSpanData.mentionDetectorSpanData.modify()
{
  OUTLINED_FUNCTION_261();
  v2 = OUTLINED_FUNCTION_251();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_43_0(v6);
  v8 = type metadata accessor for Siri_Nlu_Internal_MentionDetectorSpanData(v7);
  *(v1 + 16) = v8;
  OUTLINED_FUNCTION_21();
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_243(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_73_7(v13);
  OUTLINED_FUNCTION_44_10(*(v14 + 32));
  OUTLINED_FUNCTION_73(v0);
  if (v15)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v16 = OUTLINED_FUNCTION_7_21(v10 + *(v8 + 20));
    OUTLINED_FUNCTION_31_9(v16, v17);
    if (!v15)
    {
      sub_1C8778ED8(v0, &qword_1EC2BDD68, &qword_1C8C0C208);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_16();
    OUTLINED_FUNCTION_184();
    sub_1C89FB0DC();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_260();
}

uint64_t Siri_Nlu_Internal_InternalSpanData.hasMentionDetectorSpanData.getter()
{
  v0 = OUTLINED_FUNCTION_12();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_80(v2);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_60_1();
  v4 = type metadata accessor for Siri_Nlu_Internal_InternalSpanData(0);
  OUTLINED_FUNCTION_62_7(*(v4 + 32));
  v5 = type metadata accessor for Siri_Nlu_Internal_MentionDetectorSpanData(0);
  OUTLINED_FUNCTION_10(v5);
  return OUTLINED_FUNCTION_235();
}

Swift::Void __swiftcall Siri_Nlu_Internal_InternalSpanData.clearMentionDetectorSpanData()()
{
  v1 = type metadata accessor for Siri_Nlu_Internal_InternalSpanData(0);
  sub_1C8778ED8(v0 + *(v1 + 32), &qword_1EC2BDD68, &qword_1C8C0C208);
  type metadata accessor for Siri_Nlu_Internal_MentionDetectorSpanData(0);
  v2 = OUTLINED_FUNCTION_14_3();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Siri_Nlu_Internal_InternalSpanData.mentionResolverSpanData.getter()
{
  v1 = OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_80(v1);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_60_1();
  v3 = type metadata accessor for Siri_Nlu_Internal_InternalSpanData(0);
  OUTLINED_FUNCTION_47_8(*(v3 + 36));
  v4 = type metadata accessor for Siri_Nlu_Internal_MentionResolverSpanData(0);
  OUTLINED_FUNCTION_1_0();
  if (v5)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_15_2(*(v4 + 20));
    OUTLINED_FUNCTION_15_2(*(v4 + 24));
    result = OUTLINED_FUNCTION_1_0();
    if (!v5)
    {
      return sub_1C8778ED8(v0, &qword_1EC2BDD70, &qword_1C8C0C210);
    }
  }

  else
  {
    OUTLINED_FUNCTION_22_12();
    OUTLINED_FUNCTION_121();
    return sub_1C89FB0DC();
  }

  return result;
}

uint64_t sub_1C89F9D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(char *))
{
  v8 = (a5)(0, a2, a3, a4);
  OUTLINED_FUNCTION_80(v8);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v13 - v10;
  sub_1C89FB130();
  return a7(v11);
}

uint64_t Siri_Nlu_Internal_InternalSpanData.mentionResolverSpanData.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_Internal_InternalSpanData(v1);
  sub_1C8778ED8(v0 + *(v2 + 36), &qword_1EC2BDD70, &qword_1C8C0C210);
  OUTLINED_FUNCTION_22_12();
  OUTLINED_FUNCTION_200();
  sub_1C89FB0DC();
  type metadata accessor for Siri_Nlu_Internal_MentionResolverSpanData(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_Internal_MentionResolverSpanData.init()(uint64_t a1)
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v1 = type metadata accessor for Siri_Nlu_Internal_MentionResolverSpanData(0);
  OUTLINED_FUNCTION_38(*(v1 + 20));
  *(v2 + 8) = 1;
  OUTLINED_FUNCTION_38(*(v3 + 24));
  *(v4 + 8) = v5;
}

void Siri_Nlu_Internal_InternalSpanData.mentionResolverSpanData.modify()
{
  OUTLINED_FUNCTION_261();
  v2 = OUTLINED_FUNCTION_251();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_43_0(v6);
  v8 = type metadata accessor for Siri_Nlu_Internal_MentionResolverSpanData(v7);
  *(v1 + 16) = v8;
  OUTLINED_FUNCTION_21();
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_243(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_73_7(v13);
  OUTLINED_FUNCTION_44_10(*(v14 + 36));
  OUTLINED_FUNCTION_73(v0);
  if (v15)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_11_0(*(v8 + 20));
    v16 = OUTLINED_FUNCTION_7_21(v10 + *(v8 + 24));
    OUTLINED_FUNCTION_31_9(v16, v17);
    if (!v15)
    {
      sub_1C8778ED8(v0, &qword_1EC2BDD70, &qword_1C8C0C210);
    }
  }

  else
  {
    OUTLINED_FUNCTION_22_12();
    OUTLINED_FUNCTION_184();
    sub_1C89FB0DC();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_260();
}

void sub_1C89FA034()
{
  OUTLINED_FUNCTION_124();
  v2 = v1;
  v3 = v0;
  v5 = *(*v4 + 10);
  v6 = (*v4)[3];
  v7 = (*v4)[4];
  v8 = (*v4)[1];
  v9 = (*v4)[2];
  v10 = **v4;
  if (v11)
  {
    sub_1C89FB130();
    sub_1C8778ED8(v10 + v5, v3, v2);
    sub_1C89FB0DC();
    OUTLINED_FUNCTION_19_1();
    __swift_storeEnumTagSinglePayload(v12, v13, v14, v9);
    sub_1C87A8BDC();
  }

  else
  {
    sub_1C8778ED8(v10 + v5, v0, v1);
    sub_1C89FB0DC();
    OUTLINED_FUNCTION_19_1();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v9);
  }

  free(v7);
  free(v6);
  free(v8);
  OUTLINED_FUNCTION_125();

  free(v18);
}

uint64_t Siri_Nlu_Internal_InternalSpanData.hasMentionResolverSpanData.getter()
{
  v0 = OUTLINED_FUNCTION_12();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_80(v2);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_60_1();
  v4 = type metadata accessor for Siri_Nlu_Internal_InternalSpanData(0);
  OUTLINED_FUNCTION_62_7(*(v4 + 36));
  v5 = type metadata accessor for Siri_Nlu_Internal_MentionResolverSpanData(0);
  OUTLINED_FUNCTION_10(v5);
  return OUTLINED_FUNCTION_235();
}

Swift::Void __swiftcall Siri_Nlu_Internal_InternalSpanData.clearMentionResolverSpanData()()
{
  v1 = type metadata accessor for Siri_Nlu_Internal_InternalSpanData(0);
  sub_1C8778ED8(v0 + *(v1 + 36), &qword_1EC2BDD70, &qword_1C8C0C210);
  type metadata accessor for Siri_Nlu_Internal_MentionResolverSpanData(0);
  v2 = OUTLINED_FUNCTION_14_3();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Siri_Nlu_Internal_SiriVocabularySpanData.priorOrdinality.getter()
{
  type metadata accessor for Siri_Nlu_Internal_SiriVocabularySpanData(0);
  OUTLINED_FUNCTION_10_1();
  if (v0[4])
  {
    return 0;
  }

  else
  {
    return *v0;
  }
}

void Siri_Nlu_Internal_SiriVocabularySpanData.priorOrdinality.setter(int a1)
{
  type metadata accessor for Siri_Nlu_Internal_SiriVocabularySpanData(0);
  OUTLINED_FUNCTION_10_1();
  *v2 = a1;
  *(v2 + 4) = 0;
}

uint64_t (*Siri_Nlu_Internal_SiriVocabularySpanData.priorOrdinality.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Siri_Nlu_Internal_SiriVocabularySpanData(0) + 20);
  *(a1 + 12) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 4))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *(a1 + 8) = v5;
  return sub_1C87FE8F0;
}

BOOL Siri_Nlu_Internal_SiriVocabularySpanData.hasPriorOrdinality.getter()
{
  type metadata accessor for Siri_Nlu_Internal_SiriVocabularySpanData(0);
  OUTLINED_FUNCTION_10_1();
  return (*(v0 + 4) & 1) == 0;
}

Swift::Void __swiftcall Siri_Nlu_Internal_SiriVocabularySpanData.clearPriorOrdinality()()
{
  type metadata accessor for Siri_Nlu_Internal_SiriVocabularySpanData(0);
  OUTLINED_FUNCTION_10_1();
  *v0 = 0;
  *(v0 + 4) = 1;
}

void Siri_Nlu_Internal_SiriVocabularySpanData.priorScore.setter()
{
  v0 = OUTLINED_FUNCTION_380_0();
  v1 = type metadata accessor for Siri_Nlu_Internal_SiriVocabularySpanData(v0);
  OUTLINED_FUNCTION_190_0(*(v1 + 24));
}

uint64_t Siri_Nlu_Internal_SiriVocabularySpanData.priorScore.modify(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_33_0(a1);
  v3 = *(type metadata accessor for Siri_Nlu_Internal_SiriVocabularySpanData(v2) + 24);
  *(v1 + 16) = v3;
  v4 = OUTLINED_FUNCTION_2_12(v3);
  if (!v6)
  {
    v4 = v5;
  }

  *v1 = v4;
  return OUTLINED_FUNCTION_74_0();
}

double Siri_Nlu_Internal_SiriVocabularySpanData.matchScore.getter()
{
  v0 = type metadata accessor for Siri_Nlu_Internal_SiriVocabularySpanData(0);
  result = OUTLINED_FUNCTION_2_12(*(v0 + 28));
  if (!v3)
  {
    return v2;
  }

  return result;
}

void Siri_Nlu_Internal_SiriVocabularySpanData.matchScore.setter()
{
  v0 = OUTLINED_FUNCTION_380_0();
  v1 = type metadata accessor for Siri_Nlu_Internal_SiriVocabularySpanData(v0);
  OUTLINED_FUNCTION_190_0(*(v1 + 28));
}

uint64_t Siri_Nlu_Internal_SiriVocabularySpanData.matchScore.modify(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_33_0(a1);
  v3 = *(type metadata accessor for Siri_Nlu_Internal_SiriVocabularySpanData(v2) + 28);
  *(v1 + 16) = v3;
  v4 = OUTLINED_FUNCTION_2_12(v3);
  if (!v6)
  {
    v4 = v5;
  }

  *v1 = v4;
  return OUTLINED_FUNCTION_74_0();
}

void Siri_Nlu_Internal_PLUMSpanData.score.setter()
{
  v0 = OUTLINED_FUNCTION_380_0();
  v1 = type metadata accessor for Siri_Nlu_Internal_PLUMSpanData(v0);
  OUTLINED_FUNCTION_190_0(*(v1 + 20));
}

uint64_t Siri_Nlu_Internal_PLUMSpanData.score.modify(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_33_0(a1);
  v3 = *(type metadata accessor for Siri_Nlu_Internal_PLUMSpanData(v2) + 20);
  *(v1 + 16) = v3;
  v4 = OUTLINED_FUNCTION_2_12(v3);
  if (!v6)
  {
    v4 = v5;
  }

  *v1 = v4;
  return OUTLINED_FUNCTION_74_0();
}

double sub_1C89FA650(uint64_t (*a1)(void))
{
  v1 = a1(0);
  result = OUTLINED_FUNCTION_2_12(*(v1 + 24));
  if (!v4)
  {
    return v3;
  }

  return result;
}

void Siri_Nlu_Internal_OvertonKGSpanData.confidence.setter()
{
  v0 = OUTLINED_FUNCTION_380_0();
  v1 = type metadata accessor for Siri_Nlu_Internal_OvertonKGSpanData(v0);
  OUTLINED_FUNCTION_190_0(*(v1 + 24));
}

uint64_t Siri_Nlu_Internal_OvertonKGSpanData.confidence.modify(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_33_0(a1);
  v3 = *(type metadata accessor for Siri_Nlu_Internal_OvertonKGSpanData(v2) + 24);
  *(v1 + 16) = v3;
  v4 = OUTLINED_FUNCTION_2_12(v3);
  if (!v6)
  {
    v4 = v5;
  }

  *v1 = v4;
  return OUTLINED_FUNCTION_74_0();
}

uint64_t Siri_Nlu_Internal_OvertonKGSpanData.features.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Siri_Nlu_Internal_OvertonKGSpanData.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Siri_Nlu_Internal_OvertonKGSpanData(0) + 20);
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_21();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t Siri_Nlu_Internal_OvertonKGSpanData.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_241();
  v3 = *(type metadata accessor for Siri_Nlu_Internal_OvertonKGSpanData(v2) + 20);
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_21();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

void (*Siri_Nlu_Internal_OvertonKGSpanData.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_241();
  type metadata accessor for Siri_Nlu_Internal_OvertonKGSpanData(v0);
  return nullsub_1;
}

double sub_1C89FA8D8(uint64_t (*a1)(void))
{
  v1 = a1(0);
  result = OUTLINED_FUNCTION_2_12(*(v1 + 20));
  if (!v4)
  {
    return v3;
  }

  return result;
}

void Siri_Nlu_Internal_MentionDetectorSpanData.score.setter()
{
  v0 = OUTLINED_FUNCTION_380_0();
  v1 = type metadata accessor for Siri_Nlu_Internal_MentionDetectorSpanData(v0);
  OUTLINED_FUNCTION_190_0(*(v1 + 20));
}

uint64_t Siri_Nlu_Internal_MentionDetectorSpanData.score.modify(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_33_0(a1);
  v3 = *(type metadata accessor for Siri_Nlu_Internal_MentionDetectorSpanData(v2) + 20);
  *(v1 + 16) = v3;
  v4 = OUTLINED_FUNCTION_2_12(v3);
  if (!v6)
  {
    v4 = v5;
  }

  *v1 = v4;
  return OUTLINED_FUNCTION_74_0();
}

void Siri_Nlu_Internal_MentionResolverSpanData.jointScore.setter()
{
  v0 = OUTLINED_FUNCTION_380_0();
  v1 = type metadata accessor for Siri_Nlu_Internal_MentionResolverSpanData(v0);
  OUTLINED_FUNCTION_190_0(*(v1 + 20));
}

uint64_t Siri_Nlu_Internal_MentionResolverSpanData.jointScore.modify(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_33_0(a1);
  v3 = *(type metadata accessor for Siri_Nlu_Internal_MentionResolverSpanData(v2) + 20);
  *(v1 + 16) = v3;
  v4 = OUTLINED_FUNCTION_2_12(v3);
  if (!v6)
  {
    v4 = v5;
  }

  *v1 = v4;
  return OUTLINED_FUNCTION_74_0();
}

void Siri_Nlu_Internal_MentionResolverSpanData.modelScore.setter()
{
  v0 = OUTLINED_FUNCTION_380_0();
  v1 = type metadata accessor for Siri_Nlu_Internal_MentionResolverSpanData(v0);
  OUTLINED_FUNCTION_190_0(*(v1 + 24));
}

uint64_t Siri_Nlu_Internal_MentionResolverSpanData.modelScore.modify(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_33_0(a1);
  v3 = *(type metadata accessor for Siri_Nlu_Internal_MentionResolverSpanData(v2) + 24);
  *(v1 + 16) = v3;
  v4 = OUTLINED_FUNCTION_2_12(v3);
  if (!v6)
  {
    v4 = v5;
  }

  *v1 = v4;
  return OUTLINED_FUNCTION_74_0();
}

uint64_t sub_1C89FABDC()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B4A38);
  __swift_project_value_buffer(v0, qword_1EC2B4A38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE8D40;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "label";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "input";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "start_token_index";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "end_token_index";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "uso_graph";
  *(v16 + 1) = 9;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "matcher_names";
  *(v18 + 1) = 13;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "internal_span_data";
  *(v20 + 1) = 18;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "semantic_value";
  *(v22 + 1) = 14;
  v22[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C89FAF54()
{
  type metadata accessor for Siri_Nlu_Internal_MatchingSpan._StorageClass(0);
  swift_allocObject();
  result = sub_1C89FAF94();
  qword_1EC2B4A70 = result;
  return result;
}

uint64_t sub_1C89FAF94()
{
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 52) = 1;
  *(v0 + 56) = 0;
  *(v0 + 60) = 1;
  v1 = OBJC_IVAR____TtCV12SiriNLUTypes30Siri_Nlu_Internal_MatchingSpanP33_8AEF3234A80133152DECA9B682B915F813_StorageClass__usoGraph;
  v2 = type metadata accessor for Siri_Nlu_External_UsoGraph(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtCV12SiriNLUTypes30Siri_Nlu_Internal_MatchingSpanP33_8AEF3234A80133152DECA9B682B915F813_StorageClass__matcherNames) = MEMORY[0x1E69E7CC0];
  v3 = OBJC_IVAR____TtCV12SiriNLUTypes30Siri_Nlu_Internal_MatchingSpanP33_8AEF3234A80133152DECA9B682B915F813_StorageClass__internalSpanData;
  v4 = type metadata accessor for Siri_Nlu_Internal_InternalSpanData(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  v5 = (v0 + OBJC_IVAR____TtCV12SiriNLUTypes30Siri_Nlu_Internal_MatchingSpanP33_8AEF3234A80133152DECA9B682B915F813_StorageClass__semanticValue);
  *v5 = 0;
  v5[1] = 0;
  return v0;
}

uint64_t sub_1C89FB0DC()
{
  v1 = OUTLINED_FUNCTION_84();
  v2(v1);
  OUTLINED_FUNCTION_21();
  v3 = OUTLINED_FUNCTION_218();
  v4(v3);
  return v0;
}

uint64_t sub_1C89FB130()
{
  v1 = OUTLINED_FUNCTION_84();
  v2(v1);
  OUTLINED_FUNCTION_21();
  v3 = OUTLINED_FUNCTION_218();
  v4(v3);
  return v0;
}

uint64_t sub_1C89FB184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1C8BD4C3C();
  return swift_endAccess();
}

uint64_t sub_1C89FB208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1C8BD4C3C();
  return swift_endAccess();
}

uint64_t sub_1C89FB28C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_UsoGraph(0);
  sub_1C87769C8(&qword_1EDACCCE0, type metadata accessor for Siri_Nlu_External_UsoGraph, &protocol conformance descriptor for Siri_Nlu_External_UsoGraph);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C89FB368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_Internal_InternalSpanData(0);
  sub_1C87769C8(&qword_1EC2B3028, type metadata accessor for Siri_Nlu_Internal_InternalSpanData, &protocol conformance descriptor for Siri_Nlu_Internal_InternalSpanData);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t Siri_Nlu_Internal_MatchingSpan.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for Siri_Nlu_Internal_MatchingSpan(0);
  OUTLINED_FUNCTION_119();
  result = sub_1C89FB4A8(v5, v6, v7, a3);
  if (!v3)
  {
    OUTLINED_FUNCTION_97();
    return sub_1C8BD49DC();
  }

  return result;
}

uint64_t sub_1C89FB4A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BDD48, &qword_1C8C0C1E8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v21 = v20 - v7;
  v22 = type metadata accessor for Siri_Nlu_Internal_InternalSpanData(0);
  MEMORY[0x1EEE9AC00](v22);
  v20[1] = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61D0, &qword_1C8C0C1E0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v20 - v10;
  v12 = type metadata accessor for Siri_Nlu_External_UsoGraph(0);
  MEMORY[0x1EEE9AC00](v12);
  swift_beginAccess();
  if (!*(a1 + 24) || (, sub_1C8BD4DDC(), result = , !v4))
  {
    swift_beginAccess();
    if (!*(a1 + 40) || (, sub_1C8BD4DDC(), result = , !v4))
    {
      swift_beginAccess();
      if ((*(a1 + 52) & 1) != 0 || (result = sub_1C8BD4DEC(), !v4))
      {
        swift_beginAccess();
        if ((*(a1 + 60) & 1) != 0 || (result = sub_1C8BD4DEC(), !v4))
        {
          v14 = OBJC_IVAR____TtCV12SiriNLUTypes30Siri_Nlu_Internal_MatchingSpanP33_8AEF3234A80133152DECA9B682B915F813_StorageClass__usoGraph;
          swift_beginAccess();
          sub_1C87867A0(a1 + v14, v11, &qword_1EC2B61D0, &qword_1C8C0C1E0);
          if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
          {
            sub_1C8778ED8(v11, &qword_1EC2B61D0, &qword_1C8C0C1E0);
          }

          else
          {
            sub_1C89FB0DC();
            sub_1C87769C8(&qword_1EDACCCE0, type metadata accessor for Siri_Nlu_External_UsoGraph, &protocol conformance descriptor for Siri_Nlu_External_UsoGraph);
            sub_1C8BD4E2C();
            result = sub_1C87A8BDC();
            if (v4)
            {
              return result;
            }
          }

          v15 = OBJC_IVAR____TtCV12SiriNLUTypes30Siri_Nlu_Internal_MatchingSpanP33_8AEF3234A80133152DECA9B682B915F813_StorageClass__matcherNames;
          swift_beginAccess();
          v16 = v22;
          v17 = v21;
          if (!*(*(a1 + v15) + 16) || (sub_1C8793528(), , sub_1C8BD4D2C(), result = , !v4))
          {
            v18 = OBJC_IVAR____TtCV12SiriNLUTypes30Siri_Nlu_Internal_MatchingSpanP33_8AEF3234A80133152DECA9B682B915F813_StorageClass__internalSpanData;
            swift_beginAccess();
            sub_1C87867A0(a1 + v18, v17, &qword_1EC2BDD48, &qword_1C8C0C1E8);
            if (__swift_getEnumTagSinglePayload(v17, 1, v16) == 1)
            {
              sub_1C8778ED8(v17, &qword_1EC2BDD48, &qword_1C8C0C1E8);
            }

            else
            {
              sub_1C89FB0DC();
              sub_1C87769C8(&qword_1EC2B3028, type metadata accessor for Siri_Nlu_Internal_InternalSpanData, &protocol conformance descriptor for Siri_Nlu_Internal_InternalSpanData);
              sub_1C8BD4E2C();
              result = sub_1C87A8BDC();
              if (v4)
              {
                return result;
              }
            }

            v19 = a1 + OBJC_IVAR____TtCV12SiriNLUTypes30Siri_Nlu_Internal_MatchingSpanP33_8AEF3234A80133152DECA9B682B915F813_StorageClass__semanticValue;
            result = swift_beginAccess();
            if (*(v19 + 8))
            {

              sub_1C8BD4DDC();
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Siri_Nlu_Internal_MatchingSpan.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_15_11();
  if (*(a1 + v4) != *(a2 + v4))
  {

    sub_1C89FBAF0();
    v6 = v5;

    if ((v6 & 1) == 0)
    {
      return 0;
    }
  }

  sub_1C8BD49FC();
  OUTLINED_FUNCTION_0_21();
  v9 = sub_1C87769C8(v7, v8, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_159(v9) & 1;
}

void sub_1C89FBAF0()
{
  OUTLINED_FUNCTION_124();
  v1 = v0;
  v3 = v2;
  v65 = type metadata accessor for Siri_Nlu_Internal_InternalSpanData(0);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_9_0();
  v62 = v5;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BDE88, &unk_1C8C0CF70);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_81();
  v66 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BDD48, &qword_1C8C0C1E8);
  v9 = OUTLINED_FUNCTION_80(v8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v63 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v67 = &v62 - v12;
  v13 = OUTLINED_FUNCTION_86();
  type metadata accessor for Siri_Nlu_External_UsoGraph(v13);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_33();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5FD8, &unk_1C8BE6C90);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_81();
  v68 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61D0, &qword_1C8C0C1E0);
  v19 = OUTLINED_FUNCTION_80(v18);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v62 - v23;
  OUTLINED_FUNCTION_277(v3 + 16, &v84);
  v25 = *(v3 + 16);
  v26 = *(v3 + 24);
  OUTLINED_FUNCTION_277(v1 + 16, &v83);
  v27 = *(v1 + 24);
  if (v26)
  {
    if (!v27)
    {
      goto LABEL_61;
    }

    v28 = v25 == *(v1 + 16) && v26 == v27;
    if (!v28 && (sub_1C8BD529C() & 1) == 0)
    {
      goto LABEL_61;
    }
  }

  else if (v27)
  {
    goto LABEL_61;
  }

  OUTLINED_FUNCTION_277(v3 + 32, &v82);
  v29 = *(v3 + 32);
  v30 = *(v3 + 40);
  OUTLINED_FUNCTION_277(v1 + 32, &v81);
  v31 = *(v1 + 40);
  if (v30)
  {
    if (!v31)
    {
      goto LABEL_61;
    }

    v32 = v29 == *(v1 + 32) && v30 == v31;
    if (!v32 && (sub_1C8BD529C() & 1) == 0)
    {
      goto LABEL_61;
    }
  }

  else if (v31)
  {
    goto LABEL_61;
  }

  OUTLINED_FUNCTION_277(v3 + 48, &v80);
  v33 = *(v3 + 48);
  v34 = *(v3 + 52);
  OUTLINED_FUNCTION_277(v1 + 48, &v79);
  v35 = *(v1 + 52);
  if (v34)
  {
    if (!*(v1 + 52))
    {
      goto LABEL_61;
    }
  }

  else
  {
    if (v33 != *(v1 + 48))
    {
      v35 = 1;
    }

    if (v35)
    {
      goto LABEL_61;
    }
  }

  OUTLINED_FUNCTION_277(v3 + 56, &v78);
  v36 = *(v3 + 56);
  v37 = *(v3 + 60);
  OUTLINED_FUNCTION_277(v1 + 56, &v77);
  v38 = *(v1 + 60);
  if (v37)
  {
    if (!*(v1 + 60))
    {
      goto LABEL_61;
    }
  }

  else
  {
    if (v36 != *(v1 + 56))
    {
      v38 = 1;
    }

    if (v38)
    {
      goto LABEL_61;
    }
  }

  v39 = OBJC_IVAR____TtCV12SiriNLUTypes30Siri_Nlu_Internal_MatchingSpanP33_8AEF3234A80133152DECA9B682B915F813_StorageClass__usoGraph;
  OUTLINED_FUNCTION_277(v3 + OBJC_IVAR____TtCV12SiriNLUTypes30Siri_Nlu_Internal_MatchingSpanP33_8AEF3234A80133152DECA9B682B915F813_StorageClass__usoGraph, &v76);
  sub_1C87867A0(v3 + v39, v24, &qword_1EC2B61D0, &qword_1C8C0C1E0);
  v40 = OBJC_IVAR____TtCV12SiriNLUTypes30Siri_Nlu_Internal_MatchingSpanP33_8AEF3234A80133152DECA9B682B915F813_StorageClass__usoGraph;
  OUTLINED_FUNCTION_277(v1 + OBJC_IVAR____TtCV12SiriNLUTypes30Siri_Nlu_Internal_MatchingSpanP33_8AEF3234A80133152DECA9B682B915F813_StorageClass__usoGraph, &v75);
  v41 = *(v15 + 48);
  v42 = v68;
  sub_1C87867A0(v24, v68, &qword_1EC2B61D0, &qword_1C8C0C1E0);
  sub_1C87867A0(v1 + v40, v42 + v41, &qword_1EC2B61D0, &qword_1C8C0C1E0);
  OUTLINED_FUNCTION_73(v42);
  if (!v28)
  {
    sub_1C87867A0(v42, v22, &qword_1EC2B61D0, &qword_1C8C0C1E0);
    OUTLINED_FUNCTION_73(v42 + v41);
    if (!v43)
    {
      sub_1C89FB0DC();

      static Siri_Nlu_External_UsoGraph.== infix(_:_:)();
      v48 = v47;
      sub_1C87A8BDC();
      sub_1C8778ED8(v24, &qword_1EC2B61D0, &qword_1C8C0C1E0);
      sub_1C87A8BDC();
      sub_1C8778ED8(v42, &qword_1EC2B61D0, &qword_1C8C0C1E0);
      if ((v48 & 1) == 0)
      {
        goto LABEL_60;
      }

      goto LABEL_42;
    }

    sub_1C8778ED8(v24, &qword_1EC2B61D0, &qword_1C8C0C1E0);
    sub_1C87A8BDC();
LABEL_39:
    v44 = &qword_1EC2B5FD8;
    v45 = &unk_1C8BE6C90;
    v46 = v42;
LABEL_40:
    sub_1C8778ED8(v46, v44, v45);
    goto LABEL_60;
  }

  sub_1C8778ED8(v24, &qword_1EC2B61D0, &qword_1C8C0C1E0);
  OUTLINED_FUNCTION_73(v42 + v41);
  if (!v28)
  {
    goto LABEL_39;
  }

  sub_1C8778ED8(v42, &qword_1EC2B61D0, &qword_1C8C0C1E0);
LABEL_42:
  OUTLINED_FUNCTION_277(v3 + OBJC_IVAR____TtCV12SiriNLUTypes30Siri_Nlu_Internal_MatchingSpanP33_8AEF3234A80133152DECA9B682B915F813_StorageClass__matcherNames, &v74);
  OUTLINED_FUNCTION_277(v1 + OBJC_IVAR____TtCV12SiriNLUTypes30Siri_Nlu_Internal_MatchingSpanP33_8AEF3234A80133152DECA9B682B915F813_StorageClass__matcherNames, &v73);
  if ((sub_1C87E4684() & 1) == 0)
  {
    goto LABEL_60;
  }

  v49 = OBJC_IVAR____TtCV12SiriNLUTypes30Siri_Nlu_Internal_MatchingSpanP33_8AEF3234A80133152DECA9B682B915F813_StorageClass__internalSpanData;
  OUTLINED_FUNCTION_277(v3 + OBJC_IVAR____TtCV12SiriNLUTypes30Siri_Nlu_Internal_MatchingSpanP33_8AEF3234A80133152DECA9B682B915F813_StorageClass__internalSpanData, &v72);
  v50 = v67;
  sub_1C87867A0(v3 + v49, v67, &qword_1EC2BDD48, &qword_1C8C0C1E8);
  v51 = OBJC_IVAR____TtCV12SiriNLUTypes30Siri_Nlu_Internal_MatchingSpanP33_8AEF3234A80133152DECA9B682B915F813_StorageClass__internalSpanData;
  OUTLINED_FUNCTION_277(v1 + OBJC_IVAR____TtCV12SiriNLUTypes30Siri_Nlu_Internal_MatchingSpanP33_8AEF3234A80133152DECA9B682B915F813_StorageClass__internalSpanData, &v71);
  v52 = *(v64 + 48);
  v53 = v66;
  sub_1C87867A0(v50, v66, &qword_1EC2BDD48, &qword_1C8C0C1E8);
  sub_1C87867A0(v1 + v51, v53 + v52, &qword_1EC2BDD48, &qword_1C8C0C1E8);
  if (__swift_getEnumTagSinglePayload(v53, 1, v65) == 1)
  {
    sub_1C8778ED8(v50, &qword_1EC2BDD48, &qword_1C8C0C1E8);
    OUTLINED_FUNCTION_72(v53 + v52);
    if (!v28)
    {
      goto LABEL_50;
    }

    sub_1C8778ED8(v53, &qword_1EC2BDD48, &qword_1C8C0C1E8);
  }

  else
  {
    sub_1C87867A0(v53, v63, &qword_1EC2BDD48, &qword_1C8C0C1E8);
    OUTLINED_FUNCTION_72(v53 + v52);
    if (v28)
    {
      sub_1C8778ED8(v67, &qword_1EC2BDD48, &qword_1C8C0C1E8);
      sub_1C87A8BDC();
LABEL_50:
      v44 = &qword_1EC2BDE88;
      v45 = &unk_1C8C0CF70;
      v46 = v53;
      goto LABEL_40;
    }

    sub_1C89FB0DC();
    static Siri_Nlu_Internal_InternalSpanData.== infix(_:_:)();
    v55 = v54;
    sub_1C87A8BDC();
    sub_1C8778ED8(v67, &qword_1EC2BDD48, &qword_1C8C0C1E8);
    sub_1C87A8BDC();
    sub_1C8778ED8(v53, &qword_1EC2BDD48, &qword_1C8C0C1E8);
    if ((v55 & 1) == 0)
    {
      goto LABEL_60;
    }
  }

  v56 = (v3 + OBJC_IVAR____TtCV12SiriNLUTypes30Siri_Nlu_Internal_MatchingSpanP33_8AEF3234A80133152DECA9B682B915F813_StorageClass__semanticValue);
  OUTLINED_FUNCTION_277(v3 + OBJC_IVAR____TtCV12SiriNLUTypes30Siri_Nlu_Internal_MatchingSpanP33_8AEF3234A80133152DECA9B682B915F813_StorageClass__semanticValue, &v70);
  v57 = *v56;
  v58 = v56[1];
  v59 = (v1 + OBJC_IVAR____TtCV12SiriNLUTypes30Siri_Nlu_Internal_MatchingSpanP33_8AEF3234A80133152DECA9B682B915F813_StorageClass__semanticValue);
  OUTLINED_FUNCTION_277(v1 + OBJC_IVAR____TtCV12SiriNLUTypes30Siri_Nlu_Internal_MatchingSpanP33_8AEF3234A80133152DECA9B682B915F813_StorageClass__semanticValue, &v69);
  v60 = v59[1];
  if (v58)
  {
    if (v60)
    {
      if (v57 != *v59 || v58 != v60)
      {
        sub_1C8BD529C();
      }

      goto LABEL_61;
    }

LABEL_60:

    goto LABEL_61;
  }

  if (v60)
  {
  }

LABEL_61:
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C89FC3A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C87769C8(&qword_1EC2BDE80, type metadata accessor for Siri_Nlu_Internal_MatchingSpan, &protocol conformance descriptor for Siri_Nlu_Internal_MatchingSpan);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C89FC428(uint64_t a1)
{
  v2 = sub_1C87769C8(&qword_1EC2B4A28, type metadata accessor for Siri_Nlu_Internal_MatchingSpan, &protocol conformance descriptor for Siri_Nlu_Internal_MatchingSpan);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C89FC498(uint64_t a1, uint64_t a2)
{
  sub_1C87769C8(&qword_1EC2B4A28, type metadata accessor for Siri_Nlu_Internal_MatchingSpan, &protocol conformance descriptor for Siri_Nlu_Internal_MatchingSpan);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C89FC518()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B4AB8);
  __swift_project_value_buffer(v0, qword_1EC2B4AB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BFA930;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "DATADETECTOR_MATCHER";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "PLUM_MATCHER";
  *(v10 + 8) = 12;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "SIRI_VOCABULARY_MATCHER";
  *(v12 + 1) = 23;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "VOC_TRIE_MATCHER";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "CONTEXT_MATCHER";
  *(v16 + 1) = 15;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "OVERTON_KG_MATCHER";
  *(v18 + 1) = 18;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "MRR_DETECTOR";
  *(v20 + 1) = 12;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 7;
  *v22 = "MRR_MATCHER";
  *(v22 + 1) = 11;
  v22[16] = 2;
  v9();
  v23 = (v5 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 8;
  *v24 = "REGEX_MATCHER";
  *(v24 + 1) = 13;
  v24[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C89FC8D0()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B3038);
  __swift_project_value_buffer(v0, qword_1EC2B3038);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BEB0F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "siri_vocabulary_span_data";
  *(v6 + 8) = 25;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "plum_span_data";
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "overton_kg_span_data";
  *(v12 + 1) = 20;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "mention_detector_span_data";
  *(v14 + 1) = 26;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "mention_resolver_span_data";
  *(v16 + 1) = 26;
  v16[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_Internal_InternalSpanData.decodeMessage<A>(decoder:)()
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
        sub_1C89FCC24(v3, v4, v5, v6);
        break;
      case 2:
        v19 = OUTLINED_FUNCTION_8();
        sub_1C89FCCD8(v19, v20, v21, v22);
        break;
      case 3:
        v11 = OUTLINED_FUNCTION_8();
        sub_1C89FCD8C(v11, v12, v13, v14);
        break;
      case 4:
        v15 = OUTLINED_FUNCTION_8();
        sub_1C89FCE40(v15, v16, v17, v18);
        break;
      case 5:
        v7 = OUTLINED_FUNCTION_8();
        sub_1C89FCEF4(v7, v8, v9, v10);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C89FCC24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_Internal_InternalSpanData(0);
  type metadata accessor for Siri_Nlu_Internal_SiriVocabularySpanData(0);
  sub_1C87769C8(&qword_1EC2B34A8, type metadata accessor for Siri_Nlu_Internal_SiriVocabularySpanData, &protocol conformance descriptor for Siri_Nlu_Internal_SiriVocabularySpanData);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C89FCCD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_Internal_InternalSpanData(0);
  type metadata accessor for Siri_Nlu_Internal_PLUMSpanData(0);
  sub_1C87769C8(&qword_1EC2BDD90, type metadata accessor for Siri_Nlu_Internal_PLUMSpanData, &protocol conformance descriptor for Siri_Nlu_Internal_PLUMSpanData);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C89FCD8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_Internal_InternalSpanData(0);
  type metadata accessor for Siri_Nlu_Internal_OvertonKGSpanData(0);
  sub_1C87769C8(&qword_1EC2BDD88, type metadata accessor for Siri_Nlu_Internal_OvertonKGSpanData, &protocol conformance descriptor for Siri_Nlu_Internal_OvertonKGSpanData);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C89FCE40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_Internal_InternalSpanData(0);
  type metadata accessor for Siri_Nlu_Internal_MentionDetectorSpanData(0);
  sub_1C87769C8(&qword_1EC2B3F10, type metadata accessor for Siri_Nlu_Internal_MentionDetectorSpanData, &protocol conformance descriptor for Siri_Nlu_Internal_MentionDetectorSpanData);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C89FCEF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_Internal_InternalSpanData(0);
  type metadata accessor for Siri_Nlu_Internal_MentionResolverSpanData(0);
  sub_1C87769C8(&qword_1EC2BDD80, type metadata accessor for Siri_Nlu_Internal_MentionResolverSpanData, &protocol conformance descriptor for Siri_Nlu_Internal_MentionResolverSpanData);
  return sub_1C8BD4C7C();
}

uint64_t Siri_Nlu_Internal_InternalSpanData.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v53 = a2;
  v54 = a3;
  v55 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BDD70, &qword_1C8C0C210);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_81();
  v46 = v7;
  v8 = OUTLINED_FUNCTION_86();
  v44 = type metadata accessor for Siri_Nlu_Internal_MentionResolverSpanData(v8);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_9_0();
  v43[0] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BDD68, &qword_1C8C0C208);
  OUTLINED_FUNCTION_80(v11);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_81();
  v49 = v13;
  v14 = OUTLINED_FUNCTION_86();
  v50 = type metadata accessor for Siri_Nlu_Internal_MentionDetectorSpanData(v14);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_9_0();
  v43[1] = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BDD60, &qword_1C8C0C200);
  OUTLINED_FUNCTION_80(v17);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_81();
  v47 = v19;
  v20 = OUTLINED_FUNCTION_86();
  v48 = type metadata accessor for Siri_Nlu_Internal_OvertonKGSpanData(v20);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_9_0();
  v45 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BDD58, &qword_1C8C0C1F8);
  OUTLINED_FUNCTION_80(v23);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v24);
  v26 = v43 - v25;
  v51 = type metadata accessor for Siri_Nlu_Internal_PLUMSpanData(0);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_33();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BDD50, &qword_1C8C0C1F0);
  OUTLINED_FUNCTION_80(v28);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v29);
  v30 = OUTLINED_FUNCTION_170();
  v31 = type metadata accessor for Siri_Nlu_Internal_SiriVocabularySpanData(v30);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_33();
  v56 = type metadata accessor for Siri_Nlu_Internal_InternalSpanData(0);
  sub_1C87867A0(v4 + v56[5], v3, &qword_1EC2BDD50, &qword_1C8C0C1F0);
  if (__swift_getEnumTagSinglePayload(v3, 1, v31) == 1)
  {
    sub_1C8778ED8(v3, &qword_1EC2BDD50, &qword_1C8C0C1F0);
    v33 = v52;
  }

  else
  {
    sub_1C89FB0DC();
    sub_1C87769C8(&qword_1EC2B34A8, type metadata accessor for Siri_Nlu_Internal_SiriVocabularySpanData, &protocol conformance descriptor for Siri_Nlu_Internal_SiriVocabularySpanData);
    v34 = v52;
    sub_1C8BD4E2C();
    v33 = v34;
    result = sub_1C87A8BDC();
    if (v34)
    {
      return result;
    }
  }

  sub_1C87867A0(v4 + v56[6], v26, &qword_1EC2BDD58, &qword_1C8C0C1F8);
  if (__swift_getEnumTagSinglePayload(v26, 1, v51) == 1)
  {
    sub_1C8778ED8(v26, &qword_1EC2BDD58, &qword_1C8C0C1F8);
  }

  else
  {
    OUTLINED_FUNCTION_62_8();
    sub_1C89FB0DC();
    sub_1C87769C8(&qword_1EC2BDD90, type metadata accessor for Siri_Nlu_Internal_PLUMSpanData, &protocol conformance descriptor for Siri_Nlu_Internal_PLUMSpanData);
    sub_1C8BD4E2C();
    OUTLINED_FUNCTION_121();
    result = sub_1C87A8BDC();
    if (v33)
    {
      return result;
    }
  }

  v36 = v47;
  v37 = v48;
  v38 = v56[7];
  v55 = v4;
  sub_1C87867A0(v4 + v38, v47, &qword_1EC2BDD60, &qword_1C8C0C200);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v36, 1, v37);
  v40 = v49;
  v41 = v50;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8778ED8(v36, &qword_1EC2BDD60, &qword_1C8C0C200);
  }

  else
  {
    OUTLINED_FUNCTION_61_7();
    sub_1C89FB0DC();
    sub_1C87769C8(&qword_1EC2BDD88, type metadata accessor for Siri_Nlu_Internal_OvertonKGSpanData, &protocol conformance descriptor for Siri_Nlu_Internal_OvertonKGSpanData);
    sub_1C8BD4E2C();
    result = sub_1C87A8BDC();
    if (v33)
    {
      return result;
    }
  }

  sub_1C87867A0(v55 + v56[8], v40, &qword_1EC2BDD68, &qword_1C8C0C208);
  if (__swift_getEnumTagSinglePayload(v40, 1, v41) == 1)
  {
    sub_1C8778ED8(v40, &qword_1EC2BDD68, &qword_1C8C0C208);
    v42 = v46;
  }

  else
  {
    OUTLINED_FUNCTION_60_5();
    sub_1C89FB0DC();
    sub_1C87769C8(&qword_1EC2B3F10, type metadata accessor for Siri_Nlu_Internal_MentionDetectorSpanData, &protocol conformance descriptor for Siri_Nlu_Internal_MentionDetectorSpanData);
    sub_1C8BD4E2C();
    OUTLINED_FUNCTION_121();
    result = sub_1C87A8BDC();
    v42 = v46;
    if (v33)
    {
      return result;
    }
  }

  sub_1C87867A0(v55 + v56[9], v42, &qword_1EC2BDD70, &qword_1C8C0C210);
  if (__swift_getEnumTagSinglePayload(v42, 1, v44) == 1)
  {
    sub_1C8778ED8(v42, &qword_1EC2BDD70, &qword_1C8C0C210);
  }

  else
  {
    OUTLINED_FUNCTION_59_8();
    sub_1C89FB0DC();
    sub_1C87769C8(&qword_1EC2BDD80, type metadata accessor for Siri_Nlu_Internal_MentionResolverSpanData, &protocol conformance descriptor for Siri_Nlu_Internal_MentionResolverSpanData);
    sub_1C8BD4E2C();
    result = sub_1C87A8BDC();
    if (v33)
    {
      return result;
    }
  }

  return sub_1C8BD49DC();
}

void static Siri_Nlu_Internal_InternalSpanData.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v108 = v1;
  v109 = v2;
  v93 = type metadata accessor for Siri_Nlu_Internal_MentionResolverSpanData(0);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_9_0();
  v89 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BDD70, &qword_1C8C0C210);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_81();
  v90 = v7;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BDD98, &qword_1C8C0C218);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_81();
  v94 = v9;
  v10 = OUTLINED_FUNCTION_86();
  v98 = type metadata accessor for Siri_Nlu_Internal_MentionDetectorSpanData(v10);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_9_0();
  v91 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BDD68, &qword_1C8C0C208);
  OUTLINED_FUNCTION_80(v13);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_81();
  v95 = v15;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BDDA0, &qword_1C8C0C220);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_81();
  v99 = v17;
  v18 = OUTLINED_FUNCTION_86();
  v103 = type metadata accessor for Siri_Nlu_Internal_OvertonKGSpanData(v18);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_9_0();
  v96 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BDD60, &qword_1C8C0C200);
  OUTLINED_FUNCTION_80(v21);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_81();
  v100 = v23;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BDDA8, &qword_1C8C0C228);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_81();
  v104 = v25;
  v26 = OUTLINED_FUNCTION_86();
  v106 = type metadata accessor for Siri_Nlu_Internal_PLUMSpanData(v26);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_9_0();
  v101 = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BDD58, &qword_1C8C0C1F8);
  OUTLINED_FUNCTION_80(v29);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_81();
  v105 = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BDDB0, &qword_1C8C0C230);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v89 - v34;
  type metadata accessor for Siri_Nlu_Internal_SiriVocabularySpanData(0);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_33();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BDD50, &qword_1C8C0C1F0);
  OUTLINED_FUNCTION_80(v37);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_60_1();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BDDB8, &qword_1C8C0C238) - 8;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v89 - v41;
  v107 = type metadata accessor for Siri_Nlu_Internal_InternalSpanData(0);
  v43 = *(v107 + 20);
  v44 = *(v39 + 56);
  sub_1C87867A0(v108 + v43, v42, &qword_1EC2BDD50, &qword_1C8C0C1F0);
  sub_1C87867A0(v109 + v43, &v42[v44], &qword_1EC2BDD50, &qword_1C8C0C1F0);
  OUTLINED_FUNCTION_73(v42);
  if (v45)
  {
    OUTLINED_FUNCTION_73(&v42[v44]);
    if (v45)
    {
      sub_1C8778ED8(v42, &qword_1EC2BDD50, &qword_1C8C0C1F0);
      goto LABEL_11;
    }

LABEL_9:
    v46 = &qword_1EC2BDDB8;
    v47 = &qword_1C8C0C238;
    v48 = v42;
LABEL_26:
    sub_1C8778ED8(v48, v46, v47);
    goto LABEL_27;
  }

  sub_1C87867A0(v42, v0, &qword_1EC2BDD50, &qword_1C8C0C1F0);
  OUTLINED_FUNCTION_73(&v42[v44]);
  if (v45)
  {
    sub_1C87A8BDC();
    goto LABEL_9;
  }

  sub_1C89FB0DC();
  v49 = static Siri_Nlu_Internal_SiriVocabularySpanData.== infix(_:_:)();
  sub_1C87A8BDC();
  OUTLINED_FUNCTION_121();
  sub_1C87A8BDC();
  sub_1C8778ED8(v42, &qword_1EC2BDD50, &qword_1C8C0C1F0);
  if ((v49 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_11:
  v51 = v107;
  v50 = v108;
  v52 = *(v107 + 24);
  v53 = *(v32 + 48);
  sub_1C87867A0(v108 + v52, v35, &qword_1EC2BDD58, &qword_1C8C0C1F8);
  v54 = v109;
  sub_1C87867A0(v109 + v52, &v35[v53], &qword_1EC2BDD58, &qword_1C8C0C1F8);
  OUTLINED_FUNCTION_124_1(v35, 1);
  if (v45)
  {
    OUTLINED_FUNCTION_24(&v35[v53]);
    if (v45)
    {
      sub_1C8778ED8(v35, &qword_1EC2BDD58, &qword_1C8C0C1F8);
      goto LABEL_16;
    }

LABEL_24:
    v46 = &qword_1EC2BDDB0;
    v47 = &qword_1C8C0C230;
LABEL_25:
    v48 = v35;
    goto LABEL_26;
  }

  sub_1C87867A0(v35, v105, &qword_1EC2BDD58, &qword_1C8C0C1F8);
  OUTLINED_FUNCTION_24(&v35[v53]);
  if (v58)
  {
    sub_1C87A8BDC();
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_4_21();
  sub_1C89FB0DC();
  OUTLINED_FUNCTION_87_4();
  if (v60)
  {
    if (!v59)
    {
LABEL_30:
      OUTLINED_FUNCTION_62_8();
      sub_1C87A8BDC();
      sub_1C87A8BDC();
      v46 = &qword_1EC2BDD58;
      v47 = &qword_1C8C0C1F8;
      goto LABEL_25;
    }
  }

  else
  {
    OUTLINED_FUNCTION_36();
    if (v62)
    {
      goto LABEL_30;
    }
  }

  sub_1C8BD49FC();
  OUTLINED_FUNCTION_0_21();
  v65 = sub_1C87769C8(v63, v64, MEMORY[0x1E69AAC10]);
  v66 = OUTLINED_FUNCTION_104_4(v65);
  sub_1C87A8BDC();
  sub_1C87A8BDC();
  sub_1C8778ED8(v35, &qword_1EC2BDD58, &qword_1C8C0C1F8);
  if ((v66 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_16:
  v55 = v51[7];
  v56 = *(v102 + 48);
  v57 = v104;
  OUTLINED_FUNCTION_96_4(v50 + v55);
  OUTLINED_FUNCTION_95_4(v54 + v55);
  OUTLINED_FUNCTION_124_1(v57, 1);
  if (v45)
  {
    OUTLINED_FUNCTION_24(v57 + v56);
    if (v45)
    {
      sub_1C8778ED8(v57, &qword_1EC2BDD60, &qword_1C8C0C200);
      goto LABEL_39;
    }

LABEL_34:
    v46 = &qword_1EC2BDDA8;
    v47 = &qword_1C8C0C228;
    v48 = v57;
    goto LABEL_26;
  }

  sub_1C87867A0(v57, v100, &qword_1EC2BDD60, &qword_1C8C0C200);
  OUTLINED_FUNCTION_24(v57 + v56);
  if (v61)
  {
    sub_1C87A8BDC();
    goto LABEL_34;
  }

  OUTLINED_FUNCTION_61_7();
  sub_1C89FB0DC();
  OUTLINED_FUNCTION_184();
  v67 = static Siri_Nlu_Internal_OvertonKGSpanData.== infix(_:_:)();
  OUTLINED_FUNCTION_196_0();
  sub_1C87A8BDC();
  OUTLINED_FUNCTION_121();
  sub_1C87A8BDC();
  sub_1C8778ED8(v57, &qword_1EC2BDD60, &qword_1C8C0C200);
  if ((v67 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_39:
  v68 = v51[8];
  v69 = *(v97 + 48);
  v70 = v99;
  OUTLINED_FUNCTION_96_4(v50 + v68);
  v71 = v54 + v68;
  v72 = v70;
  OUTLINED_FUNCTION_95_4(v71);
  OUTLINED_FUNCTION_124_1(v70, 1);
  if (v45)
  {
    OUTLINED_FUNCTION_24(v70 + v69);
    if (v45)
    {
      sub_1C8778ED8(v70, &qword_1EC2BDD68, &qword_1C8C0C208);
      goto LABEL_44;
    }

LABEL_52:
    v46 = &qword_1EC2BDDA0;
    v47 = &qword_1C8C0C220;
LABEL_60:
    v48 = v72;
    goto LABEL_26;
  }

  sub_1C87867A0(v70, v95, &qword_1EC2BDD68, &qword_1C8C0C208);
  OUTLINED_FUNCTION_24(v70 + v69);
  if (v77)
  {
    sub_1C87A8BDC();
    goto LABEL_52;
  }

  OUTLINED_FUNCTION_3_16();
  sub_1C89FB0DC();
  OUTLINED_FUNCTION_87_4();
  if (v79)
  {
    if (!v78)
    {
LABEL_55:
      OUTLINED_FUNCTION_60_5();
      sub_1C87A8BDC();
      sub_1C87A8BDC();
      v46 = &qword_1EC2BDD68;
      v47 = &qword_1C8C0C208;
      goto LABEL_60;
    }
  }

  else
  {
    OUTLINED_FUNCTION_36();
    if (v81)
    {
      goto LABEL_55;
    }
  }

  sub_1C8BD49FC();
  OUTLINED_FUNCTION_0_21();
  v84 = sub_1C87769C8(v82, v83, MEMORY[0x1E69AAC10]);
  v85 = OUTLINED_FUNCTION_104_4(v84);
  sub_1C87A8BDC();
  sub_1C87A8BDC();
  sub_1C8778ED8(v70, &qword_1EC2BDD68, &qword_1C8C0C208);
  if ((v85 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_44:
  v73 = v51[9];
  v74 = *(v92 + 48);
  v75 = v94;
  OUTLINED_FUNCTION_96_4(v50 + v73);
  v76 = v54 + v73;
  v72 = v75;
  OUTLINED_FUNCTION_95_4(v76);
  OUTLINED_FUNCTION_124_1(v75, 1);
  if (v45)
  {
    OUTLINED_FUNCTION_24(v75 + v74);
    if (v45)
    {
      sub_1C8778ED8(v75, &qword_1EC2BDD70, &qword_1C8C0C210);
LABEL_65:
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_0_21();
      sub_1C87769C8(v87, v88, MEMORY[0x1E69AAC10]);
      sub_1C8BD517C();
      goto LABEL_27;
    }

LABEL_59:
    v46 = &qword_1EC2BDD98;
    v47 = &qword_1C8C0C218;
    goto LABEL_60;
  }

  sub_1C87867A0(v75, v90, &qword_1EC2BDD70, &qword_1C8C0C210);
  OUTLINED_FUNCTION_24(v75 + v74);
  if (v80)
  {
    sub_1C87A8BDC();
    goto LABEL_59;
  }

  OUTLINED_FUNCTION_59_8();
  sub_1C89FB0DC();
  v86 = static Siri_Nlu_Internal_MentionResolverSpanData.== infix(_:_:)();
  OUTLINED_FUNCTION_196_0();
  sub_1C87A8BDC();
  sub_1C87A8BDC();
  sub_1C8778ED8(v75, &qword_1EC2BDD70, &qword_1C8C0C210);
  if (v86)
  {
    goto LABEL_65;
  }

LABEL_27:
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C89FE2F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C87769C8(&qword_1EC2BDE78, type metadata accessor for Siri_Nlu_Internal_InternalSpanData, &protocol conformance descriptor for Siri_Nlu_Internal_InternalSpanData);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C89FE374(uint64_t a1)
{
  v2 = sub_1C87769C8(&qword_1EC2B3028, type metadata accessor for Siri_Nlu_Internal_InternalSpanData, &protocol conformance descriptor for Siri_Nlu_Internal_InternalSpanData);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C89FE3E4(uint64_t a1, uint64_t a2)
{
  sub_1C87769C8(&qword_1EC2B3028, type metadata accessor for Siri_Nlu_Internal_InternalSpanData, &protocol conformance descriptor for Siri_Nlu_Internal_InternalSpanData);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C89FE47C()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B34B8);
  __swift_project_value_buffer(v0, qword_1EC2B34B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE6F70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "prior_ordinality";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "prior_score";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "match_score";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_Internal_SiriVocabularySpanData.decodeMessage<A>(decoder:)()
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
        sub_1C89FE798(v7, v8, v9, v10);
        break;
      case 2:
        OUTLINED_FUNCTION_8();
        sub_1C89FF0F4();
        break;
      case 1:
        v3 = OUTLINED_FUNCTION_8();
        sub_1C89FE734(v3, v4, v5, v6);
        break;
    }
  }

  return result;
}

uint64_t Siri_Nlu_Internal_SiriVocabularySpanData.traverse<A>(visitor:)()
{
  v2 = OUTLINED_FUNCTION_72_4();
  if ((*(v1 + *(type metadata accessor for Siri_Nlu_Internal_SiriVocabularySpanData(v2) + 20) + 4) & 1) != 0 || (result = sub_1C8BD4DEC(), !v0))
  {
    OUTLINED_FUNCTION_468();
    if ((v4 & 1) != 0 || (OUTLINED_FUNCTION_55(), result = sub_1C8BD4DCC(), !v0))
    {
      OUTLINED_FUNCTION_468();
      if ((v5 & 1) != 0 || (OUTLINED_FUNCTION_55(), result = sub_1C8BD4DCC(), !v0))
      {
        OUTLINED_FUNCTION_55();
        return sub_1C8BD49DC();
      }
    }
  }

  return result;
}

uint64_t static Siri_Nlu_Internal_SiriVocabularySpanData.== infix(_:_:)()
{
  v2 = OUTLINED_FUNCTION_84();
  v3 = *(type metadata accessor for Siri_Nlu_Internal_SiriVocabularySpanData(v2) + 20);
  v4 = (v1 + v3);
  v5 = *(v1 + v3 + 4);
  v6 = (v0 + v3);
  v7 = *(v0 + v3 + 4);
  if (v5)
  {
    if (!v7)
    {
      return 0;
    }
  }

  else
  {
    if (*v4 != *v6)
    {
      LOBYTE(v7) = 1;
    }

    if (v7)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_4_0();
  if (v9)
  {
    if (!v8)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_36();
    if (v10)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_4_0();
  if (v12)
  {
    if (!v11)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_36();
    if (v14)
    {
      return 0;
    }
  }

  sub_1C8BD49FC();
  OUTLINED_FUNCTION_0_21();
  v17 = sub_1C87769C8(v15, v16, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_159(v17) & 1;
}

uint64_t sub_1C89FEA40(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C87769C8(&qword_1EC2BDE70, type metadata accessor for Siri_Nlu_Internal_SiriVocabularySpanData, &protocol conformance descriptor for Siri_Nlu_Internal_SiriVocabularySpanData);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C89FEAC0(uint64_t a1)
{
  v2 = sub_1C87769C8(&qword_1EC2B34A8, type metadata accessor for Siri_Nlu_Internal_SiriVocabularySpanData, &protocol conformance descriptor for Siri_Nlu_Internal_SiriVocabularySpanData);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C89FEB30(uint64_t a1, uint64_t a2)
{
  sub_1C87769C8(&qword_1EC2B34A8, type metadata accessor for Siri_Nlu_Internal_SiriVocabularySpanData, &protocol conformance descriptor for Siri_Nlu_Internal_SiriVocabularySpanData);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C89FED04(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C87769C8(&qword_1EC2BDE68, type metadata accessor for Siri_Nlu_Internal_PLUMSpanData, &protocol conformance descriptor for Siri_Nlu_Internal_PLUMSpanData);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C89FED84(uint64_t a1)
{
  v2 = sub_1C87769C8(&qword_1EC2BDD90, type metadata accessor for Siri_Nlu_Internal_PLUMSpanData, &protocol conformance descriptor for Siri_Nlu_Internal_PLUMSpanData);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C89FEDF4(uint64_t a1, uint64_t a2)
{
  sub_1C87769C8(&qword_1EC2BDD90, type metadata accessor for Siri_Nlu_Internal_PLUMSpanData, &protocol conformance descriptor for Siri_Nlu_Internal_PLUMSpanData);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C89FEE8C()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BDD18);
  __swift_project_value_buffer(v0, qword_1EC2BDD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "confidence";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "features";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_Internal_OvertonKGSpanData.decodeMessage<A>(decoder:)()
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
      OUTLINED_FUNCTION_119();
      sub_1C8BD4BDC();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_8();
      sub_1C89FF0F4();
    }
  }

  return result;
}

uint64_t sub_1C89FF0F4()
{
  v0 = OUTLINED_FUNCTION_93();
  v1(v0);
  OUTLINED_FUNCTION_119();
  return sub_1C8BD4BFC();
}

uint64_t Siri_Nlu_Internal_OvertonKGSpanData.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(v3 + *(type metadata accessor for Siri_Nlu_Internal_OvertonKGSpanData(0) + 24) + 8) & 1) != 0 || (OUTLINED_FUNCTION_119(), result = sub_1C8BD4DCC(), !v4))
  {
    if (!*(*v3 + 16) || (result = sub_1C8BD4DAC(), !v4))
    {
      OUTLINED_FUNCTION_119();
      return sub_1C8BD49DC();
    }
  }

  return result;
}

uint64_t static Siri_Nlu_Internal_OvertonKGSpanData.== infix(_:_:)()
{
  v2 = OUTLINED_FUNCTION_84();
  type metadata accessor for Siri_Nlu_Internal_OvertonKGSpanData(v2);
  OUTLINED_FUNCTION_4_0();
  if (v4)
  {
    if (!v3)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_36();
    if (v5)
    {
      return 0;
    }
  }

  if (sub_1C87D2814(*v1, *v0))
  {
    sub_1C8BD49FC();
    OUTLINED_FUNCTION_0_21();
    sub_1C87769C8(v6, v7, MEMORY[0x1E69AAC10]);
    return sub_1C8BD517C() & 1;
  }

  return 0;
}

uint64_t sub_1C89FF36C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C87769C8(&qword_1EC2BDE60, type metadata accessor for Siri_Nlu_Internal_OvertonKGSpanData, &protocol conformance descriptor for Siri_Nlu_Internal_OvertonKGSpanData);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C89FF3EC(uint64_t a1)
{
  v2 = sub_1C87769C8(&qword_1EC2BDD88, type metadata accessor for Siri_Nlu_Internal_OvertonKGSpanData, &protocol conformance descriptor for Siri_Nlu_Internal_OvertonKGSpanData);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C89FF45C(uint64_t a1, uint64_t a2)
{
  sub_1C87769C8(&qword_1EC2BDD88, type metadata accessor for Siri_Nlu_Internal_OvertonKGSpanData, &protocol conformance descriptor for Siri_Nlu_Internal_OvertonKGSpanData);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C89FF500(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v4 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v5 = (*(*v4 + 80) + 32) & ~*(*v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1C8BE6F30;
  v7 = v6 + v5 + v4[14];
  *(v6 + v5) = 1;
  *v7 = "score";
  *(v7 + 8) = 5;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x1E69AADC8];
  sub_1C8BD50FC();
  OUTLINED_FUNCTION_21();
  (*(v9 + 104))(v7, v8);
  return sub_1C8BD510C();
}

uint64_t sub_1C89FF6B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_1C8BD4AFC();
    if (v4 || (v6 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C89FF728();
    }
  }

  return result;
}

uint64_t sub_1C89FF728()
{
  v0 = OUTLINED_FUNCTION_93();
  v1(v0);
  OUTLINED_FUNCTION_119();
  return sub_1C8BD4BFC();
}

uint64_t sub_1C89FF7A4()
{
  v1 = OUTLINED_FUNCTION_72_4();
  v2(v1);
  OUTLINED_FUNCTION_468();
  if ((v3 & 1) != 0 || (OUTLINED_FUNCTION_55(), result = sub_1C8BD4DCC(), !v0))
  {
    OUTLINED_FUNCTION_55();
    return sub_1C8BD49DC();
  }

  return result;
}

uint64_t sub_1C89FF838()
{
  v0 = OUTLINED_FUNCTION_84();
  v1(v0);
  OUTLINED_FUNCTION_4_0();
  if (v3)
  {
    if (!v2)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_36();
    if (v5)
    {
      return 0;
    }
  }

  sub_1C8BD49FC();
  OUTLINED_FUNCTION_0_21();
  v8 = sub_1C87769C8(v6, v7, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_159(v8) & 1;
}

uint64_t sub_1C89FF95C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C87769C8(&qword_1EC2BDE58, type metadata accessor for Siri_Nlu_Internal_MentionDetectorSpanData, &protocol conformance descriptor for Siri_Nlu_Internal_MentionDetectorSpanData);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C89FF9DC(uint64_t a1)
{
  v2 = sub_1C87769C8(&qword_1EC2B3F10, type metadata accessor for Siri_Nlu_Internal_MentionDetectorSpanData, &protocol conformance descriptor for Siri_Nlu_Internal_MentionDetectorSpanData);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C89FFA4C(uint64_t a1, uint64_t a2)
{
  sub_1C87769C8(&qword_1EC2B3F10, type metadata accessor for Siri_Nlu_Internal_MentionDetectorSpanData, &protocol conformance descriptor for Siri_Nlu_Internal_MentionDetectorSpanData);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C89FFAE4()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BDD30);
  __swift_project_value_buffer(v0, qword_1EC2BDD30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "joint_score";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "model_score";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_Internal_MentionResolverSpanData.decodeMessage<A>(decoder:)()
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
      sub_1C89FF0F4();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_8();
      sub_1C89FF728();
    }
  }

  return result;
}

uint64_t Siri_Nlu_Internal_MentionResolverSpanData.traverse<A>(visitor:)()
{
  v1 = OUTLINED_FUNCTION_72_4();
  type metadata accessor for Siri_Nlu_Internal_MentionResolverSpanData(v1);
  OUTLINED_FUNCTION_468();
  if ((v2 & 1) != 0 || (OUTLINED_FUNCTION_55(), result = sub_1C8BD4DCC(), !v0))
  {
    OUTLINED_FUNCTION_468();
    if ((v4 & 1) != 0 || (OUTLINED_FUNCTION_55(), result = sub_1C8BD4DCC(), !v0))
    {
      OUTLINED_FUNCTION_55();
      return sub_1C8BD49DC();
    }
  }

  return result;
}

uint64_t static Siri_Nlu_Internal_MentionResolverSpanData.== infix(_:_:)()
{
  v0 = OUTLINED_FUNCTION_84();
  type metadata accessor for Siri_Nlu_Internal_MentionResolverSpanData(v0);
  OUTLINED_FUNCTION_4_0();
  if (v2)
  {
    if (!v1)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_36();
    if (v3)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_4_0();
  if (v5)
  {
    if (!v4)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_36();
    if (v7)
    {
      return 0;
    }
  }

  sub_1C8BD49FC();
  OUTLINED_FUNCTION_0_21();
  v10 = sub_1C87769C8(v8, v9, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_159(v10) & 1;
}

uint64_t sub_1C89FFEE8(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C8BD530C();
  a1(0);
  v6 = OUTLINED_FUNCTION_184();
  sub_1C87769C8(v6, v7, a4);
  sub_1C8BD515C();
  return sub_1C8BD531C();
}

uint64_t sub_1C89FFFC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C87769C8(&qword_1EC2BDE50, type metadata accessor for Siri_Nlu_Internal_MentionResolverSpanData, &protocol conformance descriptor for Siri_Nlu_Internal_MentionResolverSpanData);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8A00040(uint64_t a1)
{
  v2 = sub_1C87769C8(&qword_1EC2BDD80, type metadata accessor for Siri_Nlu_Internal_MentionResolverSpanData, &protocol conformance descriptor for Siri_Nlu_Internal_MentionResolverSpanData);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8A000B0(uint64_t a1, uint64_t a2)
{
  sub_1C87769C8(&qword_1EC2BDD80, type metadata accessor for Siri_Nlu_Internal_MentionResolverSpanData, &protocol conformance descriptor for Siri_Nlu_Internal_MentionResolverSpanData);

  return sub_1C8BD4CFC();
}

unint64_t sub_1C8A00134()
{
  result = qword_1EC2B4A98;
  if (!qword_1EC2B4A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B4A98);
  }

  return result;
}

unint64_t sub_1C8A0018C()
{
  result = qword_1EC2B4AA0;
  if (!qword_1EC2B4AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B4AA0);
  }

  return result;
}

unint64_t sub_1C8A001E4()
{
  result = qword_1EC2B4A90;
  if (!qword_1EC2B4A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B4A90);
  }

  return result;
}

unint64_t sub_1C8A0023C()
{
  result = qword_1EC2BDDF0;
  if (!qword_1EC2BDDF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC2BDDF8, &qword_1C8C0C328);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BDDF0);
  }

  return result;
}

uint64_t sub_1C8A00AA8(uint64_t a1)
{
  result = sub_1C8BD49FC();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Siri_Nlu_Internal_MatchingSpan._StorageClass(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Siri_Nlu_Internal_MatchingSpan.MatcherName(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

void sub_1C8A00C08(uint64_t a1)
{
  sub_1C8BD49FC();
  if (v1 <= 0x3F)
  {
    sub_1C8A00D78(319, &qword_1EC2B4558, type metadata accessor for Siri_Nlu_Internal_SiriVocabularySpanData);
    if (v2 <= 0x3F)
    {
      sub_1C8A00D78(319, &qword_1EC2B49F8, type metadata accessor for Siri_Nlu_Internal_PLUMSpanData);
      if (v3 <= 0x3F)
      {
        sub_1C8A00D78(319, &qword_1EC2B4830, type metadata accessor for Siri_Nlu_Internal_OvertonKGSpanData);
        if (v4 <= 0x3F)
        {
          sub_1C8A00D78(319, &qword_1EC2B4628, type metadata accessor for Siri_Nlu_Internal_MentionDetectorSpanData);
          if (v5 <= 0x3F)
          {
            sub_1C8A00D78(319, &qword_1EC2B4610, type metadata accessor for Siri_Nlu_Internal_MentionResolverSpanData);
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

void sub_1C8A00D78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void sub_1C8A00DF4(uint64_t a1)
{
  sub_1C8BD49FC();
  if (v1 <= 0x3F)
  {
    sub_1C8A0108C(319, &qword_1EDACD380, MEMORY[0x1E69E7668], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1C8A0108C(319, &qword_1EDACD390, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C8A00F00(uint64_t a1)
{
  sub_1C8BD49FC();
  if (v1 <= 0x3F)
  {
    sub_1C8A0108C(319, &qword_1EDACD390, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C8A00FA8(uint64_t a1)
{
  sub_1C8A0108C(319, &qword_1EDACD398, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1C8BD49FC();
    if (v2 <= 0x3F)
    {
      sub_1C8A0108C(319, &qword_1EDACD390, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C8A0108C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1C8A0112C(uint64_t a1)
{
  sub_1C8BD49FC();
  if (v1 <= 0x3F)
  {
    sub_1C8A0108C(319, &qword_1EDACD390, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C8A011DC(uint64_t a1)
{
  sub_1C8A00D78(319, qword_1EDACDE58, type metadata accessor for Siri_Nlu_External_UsoGraph);
  if (v1 <= 0x3F)
  {
    sub_1C8A00D78(319, &qword_1EC2B4528, type metadata accessor for Siri_Nlu_Internal_InternalSpanData);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t OUTLINED_FUNCTION_7_21@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = v1;
  return v2;
}

uint64_t OUTLINED_FUNCTION_68_5()
{
  type metadata accessor for Siri_Nlu_Internal_MatchingSpan(0);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_95_4(uint64_t a1)
{

  return sub_1C87867A0(a1, v4 + v3, v1, v2);
}

uint64_t Siri_Nlu_Internal_Queryrewrite_QRToken.value.getter()
{
  OUTLINED_FUNCTION_42_7();
  if (*(v0 + v1 + 8))
  {
    OUTLINED_FUNCTION_20();
  }

  else
  {
    OUTLINED_FUNCTION_19_0();
  }

  return OUTLINED_FUNCTION_218();
}

uint64_t Siri_Nlu_Internal_Queryrewrite_QRToken.value.setter()
{
  v3 = OUTLINED_FUNCTION_68();
  type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRToken(v3);
  result = OUTLINED_FUNCTION_24_0();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Siri_Nlu_Internal_Queryrewrite_QRToken.value.modify()
{
  v0 = OUTLINED_FUNCTION_17_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_41(v1);
  v3 = type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRToken(v2);
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

Swift::Void __swiftcall Siri_Nlu_Internal_Queryrewrite_QRToken.clearValue()()
{
  OUTLINED_FUNCTION_42_7();
  OUTLINED_FUNCTION_25_2();
  *v0 = 0;
  v0[1] = 0;
}

uint64_t Siri_Nlu_Internal_Queryrewrite_QRToken.startIndex.getter()
{
  type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRToken(0);
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

void Siri_Nlu_Internal_Queryrewrite_QRToken.startIndex.setter(int a1)
{
  type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRToken(0);
  OUTLINED_FUNCTION_25_0();
  *v2 = a1;
  *(v2 + 4) = 0;
}

uint64_t (*Siri_Nlu_Internal_Queryrewrite_QRToken.startIndex.modify(void *a1))(uint64_t result)
{
  v2 = OUTLINED_FUNCTION_55_0(a1);
  *(v1 + 12) = *(type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRToken(v2) + 24);
  OUTLINED_FUNCTION_4();
  if (v4)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

  *(v1 + 8) = v5;
  return sub_1C87FE8F0;
}

BOOL Siri_Nlu_Internal_Queryrewrite_QRToken.hasStartIndex.getter()
{
  type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRToken(0);
  OUTLINED_FUNCTION_25_0();
  return (*(v0 + 4) & 1) == 0;
}

Swift::Void __swiftcall Siri_Nlu_Internal_Queryrewrite_QRToken.clearStartIndex()()
{
  type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRToken(0);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_16_3(v0);
}

uint64_t Siri_Nlu_Internal_Queryrewrite_QRToken.endIndex.getter()
{
  type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRToken(0);
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

void Siri_Nlu_Internal_Queryrewrite_QRToken.endIndex.setter(int a1)
{
  type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRToken(0);
  OUTLINED_FUNCTION_26_3();
  *v2 = a1;
  *(v2 + 4) = 0;
}

uint64_t (*Siri_Nlu_Internal_Queryrewrite_QRToken.endIndex.modify(void *a1))(uint64_t result)
{
  v2 = OUTLINED_FUNCTION_55_0(a1);
  *(v1 + 12) = *(type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRToken(v2) + 28);
  OUTLINED_FUNCTION_4();
  if (v4)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

  *(v1 + 8) = v5;
  return sub_1C8801920;
}

BOOL Siri_Nlu_Internal_Queryrewrite_QRToken.hasEndIndex.getter()
{
  type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRToken(0);
  OUTLINED_FUNCTION_26_3();
  return (*(v0 + 4) & 1) == 0;
}

Swift::Void __swiftcall Siri_Nlu_Internal_Queryrewrite_QRToken.clearEndIndex()()
{
  type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRToken(0);
  OUTLINED_FUNCTION_26_3();
  OUTLINED_FUNCTION_16_3(v0);
}

double Siri_Nlu_Internal_Queryrewrite_QRToken.asrConfidence.getter()
{
  OUTLINED_FUNCTION_63_4();
  result = OUTLINED_FUNCTION_2_12(v0);
  if (!v3)
  {
    return v2;
  }

  return result;
}

uint64_t Siri_Nlu_Internal_Queryrewrite_QRToken.asrConfidence.setter(double a1)
{
  result = OUTLINED_FUNCTION_63_4();
  v5 = v1 + v4;
  *v5 = a1;
  *(v5 + 8) = 0;
  return result;
}

uint64_t Siri_Nlu_Internal_Queryrewrite_QRToken.asrConfidence.modify(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_33_0(a1);
  v3 = *(type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRToken(v2) + 32);
  *(v1 + 16) = v3;
  v4 = OUTLINED_FUNCTION_2_12(v3);
  if (!v6)
  {
    v4 = v5;
  }

  *v1 = v4;
  return OUTLINED_FUNCTION_74_0();
}

uint64_t Siri_Nlu_Internal_Queryrewrite_QRToken.phoneSequence.getter()
{
  type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRToken(0);
  OUTLINED_FUNCTION_25_4();
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

uint64_t Siri_Nlu_Internal_Queryrewrite_QRToken.phoneSequence.setter()
{
  v3 = OUTLINED_FUNCTION_68();
  type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRToken(v3);
  result = OUTLINED_FUNCTION_24_0();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Siri_Nlu_Internal_Queryrewrite_QRToken.phoneSequence.modify()
{
  v0 = OUTLINED_FUNCTION_17_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_41(v1);
  v3 = type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRToken(v2);
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

Swift::Void __swiftcall Siri_Nlu_Internal_Queryrewrite_QRToken.clearPhoneSequence()()
{
  type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRToken(0);
  OUTLINED_FUNCTION_25_2();
  *v0 = 0;
  v0[1] = 0;
}

uint64_t Siri_Nlu_Internal_Queryrewrite_QRToken.removeSpaceAfter.setter(char a1)
{
  result = OUTLINED_FUNCTION_62_9();
  *(v1 + v4) = a1;
  return result;
}

uint64_t (*Siri_Nlu_Internal_Queryrewrite_QRToken.removeSpaceAfter.modify(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_55_0(a1);
  v2 = type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRToken(v1);
  OUTLINED_FUNCTION_21_1(*(v2 + 40));
  return OUTLINED_FUNCTION_158;
}

void Siri_Nlu_Internal_Queryrewrite_QRToken.init()(uint64_t a2@<X8>)
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  OUTLINED_FUNCTION_42_7();
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

uint64_t Siri_Nlu_Internal_Queryrewrite_QRUtterance.asrID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_74();
  v6 = type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRUtterance(v5);
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

uint64_t Siri_Nlu_Internal_Queryrewrite_QRUtterance.asrID.setter()
{
  v2 = OUTLINED_FUNCTION_241();
  v3 = *(type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRUtterance(v2) + 28);
  sub_1C8778ED8(v1 + v3, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  sub_1C87E8E5C(v0, v1 + v3);
  type metadata accessor for Siri_Nlu_External_UUID(0);
  OUTLINED_FUNCTION_19_1();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

uint64_t (*Siri_Nlu_Internal_Queryrewrite_QRUtterance.asrID.modify(void *a1))()
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
  v11 = *(type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRUtterance(0) + 28);
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

uint64_t Siri_Nlu_Internal_Queryrewrite_QRUtterance.hasAsrID.getter()
{
  v1 = OUTLINED_FUNCTION_12();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_74();
  v6 = type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRUtterance(v5);
  OUTLINED_FUNCTION_67(*(v6 + 28));
  type metadata accessor for Siri_Nlu_External_UUID(0);
  v7 = OUTLINED_FUNCTION_120();
  __swift_getEnumTagSinglePayload(v7, v8, v9);
  OUTLINED_FUNCTION_66_2();
  return v0;
}

Swift::Void __swiftcall Siri_Nlu_Internal_Queryrewrite_QRUtterance.clearAsrID()()
{
  v1 = type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRUtterance(0);
  sub_1C8778ED8(v0 + *(v1 + 28), &qword_1EC2B5EC8, &unk_1C8BE68C0);
  type metadata accessor for Siri_Nlu_External_UUID(0);
  v2 = OUTLINED_FUNCTION_14_3();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Siri_Nlu_Internal_Queryrewrite_QRUtterance.utterance.getter()
{
  if (*(v0 + *(type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRUtterance(0) + 32) + 8))
  {
    OUTLINED_FUNCTION_20();
  }

  else
  {
    OUTLINED_FUNCTION_19_0();
  }

  return OUTLINED_FUNCTION_218();
}

uint64_t Siri_Nlu_Internal_Queryrewrite_QRUtterance.utterance.setter()
{
  v3 = OUTLINED_FUNCTION_68();
  type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRUtterance(v3);
  result = OUTLINED_FUNCTION_24_0();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Siri_Nlu_Internal_Queryrewrite_QRUtterance.utterance.modify()
{
  v0 = OUTLINED_FUNCTION_17_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_41(v1);
  v3 = type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRUtterance(v2);
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

Swift::Void __swiftcall Siri_Nlu_Internal_Queryrewrite_QRUtterance.clearUtterance()()
{
  type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRUtterance(0);
  OUTLINED_FUNCTION_25_2();
  *v0 = 0;
  v0[1] = 0;
}

uint64_t Siri_Nlu_Internal_Queryrewrite_QRUtterance.utteranceTokens.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Siri_Nlu_Internal_Queryrewrite_QRUtterance.asrUtteranceTokens.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

double Siri_Nlu_Internal_Queryrewrite_QRUtterance.confidence.getter()
{
  v0 = type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRUtterance(0);
  result = OUTLINED_FUNCTION_2_12(*(v0 + 36));
  if (!v3)
  {
    return v2;
  }

  return result;
}

void Siri_Nlu_Internal_Queryrewrite_QRUtterance.confidence.setter(double a1)
{
  type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRUtterance(0);
  OUTLINED_FUNCTION_25_4();
  *v2 = a1;
  *(v2 + 8) = 0;
}

uint64_t Siri_Nlu_Internal_Queryrewrite_QRUtterance.confidence.modify(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_33_0(a1);
  v3 = *(type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRUtterance(v2) + 36);
  *(v1 + 16) = v3;
  v4 = OUTLINED_FUNCTION_2_12(v3);
  if (!v6)
  {
    v4 = v5;
  }

  *v1 = v4;
  return OUTLINED_FUNCTION_74_0();
}

void (*Siri_Nlu_Internal_Queryrewrite_QRUtterance.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_241();
  type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRUtterance(v0);
  return nullsub_1;
}

void Siri_Nlu_Internal_Queryrewrite_QRUtterance.init()(void *a1@<X8>)
{
  v3 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = v3;
  v4 = type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRUtterance(0);
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v5 = type metadata accessor for Siri_Nlu_External_UUID(0);
  OUTLINED_FUNCTION_65_3(v5);
  OUTLINED_FUNCTION_18_2(*(v4 + 32));
  OUTLINED_FUNCTION_38(*(v4 + 36));
  *(v6 + 8) = v1;
}

uint64_t Siri_Nlu_Internal_Queryrewrite_QRInteraction.locale.getter()
{
  type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRInteraction(0);
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

uint64_t Siri_Nlu_Internal_Queryrewrite_QRInteraction.locale.setter()
{
  v3 = OUTLINED_FUNCTION_68();
  type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRInteraction(v3);
  result = OUTLINED_FUNCTION_24_0();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Siri_Nlu_Internal_Queryrewrite_QRInteraction.locale.modify()
{
  v0 = OUTLINED_FUNCTION_17_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_41(v1);
  v3 = type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRInteraction(v2);
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

Swift::Void __swiftcall Siri_Nlu_Internal_Queryrewrite_QRInteraction.clearLocale()()
{
  type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRInteraction(0);
  OUTLINED_FUNCTION_25_2();
  *v0 = 0;
  v0[1] = 0;
}

uint64_t Siri_Nlu_Internal_Queryrewrite_QRInteraction.tap2Edit.setter(char a1)
{
  result = OUTLINED_FUNCTION_60_6();
  *(v1 + v4) = a1;
  return result;
}

uint64_t (*Siri_Nlu_Internal_Queryrewrite_QRInteraction.tap2Edit.modify(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_55_0(a1);
  v2 = type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRInteraction(v1);
  OUTLINED_FUNCTION_21_1(*(v2 + 32));
  return j__OUTLINED_FUNCTION_158;
}

uint64_t Siri_Nlu_Internal_Queryrewrite_QRInteraction.startTimestamp.getter()
{
  type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRInteraction(0);
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

void Siri_Nlu_Internal_Queryrewrite_QRInteraction.startTimestamp.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRInteraction(v1);
  OUTLINED_FUNCTION_25_4();
  *v2 = v0;
  *(v2 + 8) = 0;
}

uint64_t Siri_Nlu_Internal_Queryrewrite_QRInteraction.startTimestamp.modify(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_33_0(a1);
  v4 = *(type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRInteraction(v3) + 36);
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

uint64_t sub_1C8A02680@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 24);
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_21();
  v7 = *(v6 + 16);

  return v7(a2, v2 + v4, v5);
}

uint64_t sub_1C8A02714()
{
  v2 = OUTLINED_FUNCTION_241();
  v4 = *(v3(v2) + 24);
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_21();
  v6 = *(v5 + 40);

  return v6(v1 + v4, v0);
}

void (*Siri_Nlu_Internal_Queryrewrite_QRInteraction.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_241();
  type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRInteraction(v0);
  return nullsub_1;
}

void Siri_Nlu_Internal_Queryrewrite_QRInteraction.init()(void *a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = v2;
  v3 = type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRInteraction(0);
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  OUTLINED_FUNCTION_18_2(v3[7]);
  *(a1 + v3[8]) = 2;
  OUTLINED_FUNCTION_38(v3[9]);
  *(v4 + 8) = 1;
}

uint64_t Siri_Nlu_Internal_Queryrewrite_QRHypothesis.asrID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_74();
  v6 = type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRHypothesis(v5);
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

uint64_t sub_1C8A0293C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v7 = type metadata accessor for Siri_Nlu_External_UUID(0);
  v8 = OUTLINED_FUNCTION_80(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_33();
  v11 = v10 - v9;
  sub_1C87E9210(a1, v10 - v9);
  return a5(v11);
}

uint64_t Siri_Nlu_Internal_Queryrewrite_QRHypothesis.asrID.setter()
{
  v2 = OUTLINED_FUNCTION_241();
  v3 = *(type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRHypothesis(v2) + 20);
  sub_1C8778ED8(v1 + v3, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  sub_1C87E8E5C(v0, v1 + v3);
  type metadata accessor for Siri_Nlu_External_UUID(0);
  OUTLINED_FUNCTION_19_1();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

uint64_t (*Siri_Nlu_Internal_Queryrewrite_QRHypothesis.asrID.modify(void *a1))()
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
  v11 = *(type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRHypothesis(0) + 20);
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

uint64_t Siri_Nlu_Internal_Queryrewrite_QRHypothesis.hasAsrID.getter()
{
  v1 = OUTLINED_FUNCTION_12();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_74();
  v6 = type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRHypothesis(v5);
  OUTLINED_FUNCTION_67(*(v6 + 20));
  type metadata accessor for Siri_Nlu_External_UUID(0);
  v7 = OUTLINED_FUNCTION_120();
  __swift_getEnumTagSinglePayload(v7, v8, v9);
  OUTLINED_FUNCTION_66_2();
  return v0;
}

Swift::Void __swiftcall Siri_Nlu_Internal_Queryrewrite_QRHypothesis.clearAsrID()()
{
  v1 = type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRHypothesis(0);
  sub_1C8778ED8(v0 + *(v1 + 20), &qword_1EC2B5EC8, &unk_1C8BE68C0);
  type metadata accessor for Siri_Nlu_External_UUID(0);
  v2 = OUTLINED_FUNCTION_14_3();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Siri_Nlu_Internal_Queryrewrite_QRHypothesis.utterance.getter()
{
  type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRHypothesis(0);
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

uint64_t Siri_Nlu_Internal_Queryrewrite_QRHypothesis.utterance.setter()
{
  v3 = OUTLINED_FUNCTION_68();
  type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRHypothesis(v3);
  result = OUTLINED_FUNCTION_24_0();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Siri_Nlu_Internal_Queryrewrite_QRHypothesis.utterance.modify()
{
  v0 = OUTLINED_FUNCTION_17_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_41(v1);
  v3 = type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRHypothesis(v2);
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

Swift::Void __swiftcall Siri_Nlu_Internal_Queryrewrite_QRHypothesis.clearUtterance()()
{
  type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRHypothesis(0);
  OUTLINED_FUNCTION_25_2();
  *v0 = 0;
  v0[1] = 0;
}

double Siri_Nlu_Internal_Queryrewrite_QRHypothesis.confidence.getter()
{
  v0 = type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRHypothesis(0);
  result = OUTLINED_FUNCTION_2_12(*(v0 + 28));
  if (!v3)
  {
    return v2;
  }

  return result;
}

void Siri_Nlu_Internal_Queryrewrite_QRHypothesis.confidence.setter(double a1)
{
  type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRHypothesis(0);
  OUTLINED_FUNCTION_26_3();
  *v2 = a1;
  *(v2 + 8) = 0;
}

uint64_t Siri_Nlu_Internal_Queryrewrite_QRHypothesis.confidence.modify(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_33_0(a1);
  v3 = *(type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRHypothesis(v2) + 28);
  *(v1 + 16) = v3;
  v4 = OUTLINED_FUNCTION_2_12(v3);
  if (!v6)
  {
    v4 = v5;
  }

  *v1 = v4;
  return OUTLINED_FUNCTION_74_0();
}

uint64_t Siri_Nlu_Internal_Queryrewrite_QRHypothesis.rewriteType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = OUTLINED_FUNCTION_61_8();
  *a1 = *(v1 + v4) & 1;
  return result;
}

uint64_t sub_1C8A02F24@<X0>(_BYTE *a1@<X8>)
{
  result = Siri_Nlu_Internal_Queryrewrite_QRHypothesis.rewriteType.getter(&v3);
  *a1 = v3;
  return result;
}

uint64_t Siri_Nlu_Internal_Queryrewrite_QRHypothesis.rewriteType.setter(char *a1)
{
  v2 = *a1;
  result = OUTLINED_FUNCTION_61_8();
  *(v1 + v4) = v2;
  return result;
}

uint64_t (*Siri_Nlu_Internal_Queryrewrite_QRHypothesis.rewriteType.modify(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_55_0(a1);
  v2 = type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRHypothesis(v1);
  OUTLINED_FUNCTION_21_1(*(v2 + 32));
  return j__OUTLINED_FUNCTION_158;
}

SiriNLUTypes::Siri_Nlu_Internal_Queryrewrite_QRHypothesis::QRRewriteType_optional __swiftcall Siri_Nlu_Internal_Queryrewrite_QRHypothesis.QRRewriteType.init(rawValue:)(Swift::Int rawValue)
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

uint64_t sub_1C8A03094(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8A0620C();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1C8A030FC@<X0>(uint64_t *a1@<X8>)
{
  result = Siri_Nlu_Internal_Queryrewrite_QRHypothesis.QRRewriteType.rawValue.getter();
  *a1 = result;
  return result;
}

void Siri_Nlu_Internal_Queryrewrite_QRHypothesis.init()(uint64_t a2@<X8>)
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v4 = type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRHypothesis(0);
  v5 = type metadata accessor for Siri_Nlu_External_UUID(0);
  OUTLINED_FUNCTION_65_3(v5);
  OUTLINED_FUNCTION_18_2(v4[6]);
  OUTLINED_FUNCTION_38(v4[7]);
  *(v6 + 8) = v2;
  *(a2 + v4[8]) = 2;
}

uint64_t sub_1C8A031C0()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BDE90);
  __swift_project_value_buffer(v0, qword_1EC2BDE90);
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

uint64_t Siri_Nlu_Internal_Queryrewrite_QRToken.decodeMessage<A>(decoder:)()
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
        sub_1C8A0356C(v3, v4, v5, v6);
        break;
      case 2:
        v19 = OUTLINED_FUNCTION_8();
        sub_1C8A035D0(v19, v20, v21, v22);
        break;
      case 3:
        v11 = OUTLINED_FUNCTION_8();
        sub_1C8A03634(v11, v12, v13, v14);
        break;
      case 4:
        v15 = OUTLINED_FUNCTION_8();
        sub_1C8A03698(v15, v16, v17, v18);
        break;
      case 5:
        v7 = OUTLINED_FUNCTION_8();
        sub_1C8A036FC(v7, v8, v9, v10);
        break;
      case 6:
        v23 = OUTLINED_FUNCTION_8();
        sub_1C8A03760(v23, v24);
        break;
      default:
        continue;
    }
  }
}

uint64_t Siri_Nlu_Internal_Queryrewrite_QRToken.traverse<A>(visitor:)()
{
  v2 = v1;
  v3 = OUTLINED_FUNCTION_17();
  v4 = type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRToken(v3);
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

uint64_t static Siri_Nlu_Internal_Queryrewrite_QRToken.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = OUTLINED_FUNCTION_17();
  type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRToken(v2);
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
  OUTLINED_FUNCTION_1_15();
  sub_1C8776A10(v27, v28, MEMORY[0x1E69AAC10]);
  OUTLINED_FUNCTION_117();
  return sub_1C8BD517C() & 1;
}

uint64_t sub_1C8A03B10(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776A10(&qword_1EC2BE018, type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRToken, &protocol conformance descriptor for Siri_Nlu_Internal_Queryrewrite_QRToken);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8A03B90(uint64_t a1)
{
  v2 = sub_1C8776A10(&qword_1EC2BDF10, type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRToken, &protocol conformance descriptor for Siri_Nlu_Internal_Queryrewrite_QRToken);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8A03C00(uint64_t a1, uint64_t a2)
{
  sub_1C8776A10(&qword_1EC2BDF10, type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRToken, &protocol conformance descriptor for Siri_Nlu_Internal_Queryrewrite_QRToken);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8A03C98()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BDEA8);
  __swift_project_value_buffer(v0, qword_1EC2BDEA8);
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
  *v11 = 3;
  *v12 = "utterance_tokens";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "asr_utterance_tokens";
  *(v14 + 1) = 20;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "confidence";
  *(v16 + 1) = 10;
  v16[16] = 2;
  v9();
  return sub_1C8BD510C();
}

void Siri_Nlu_Internal_Queryrewrite_QRUtterance.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_81_0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        v3 = OUTLINED_FUNCTION_8();
        sub_1C8A040B0(v3, v4, v5, v6);
        break;
      case 2:
        v13 = OUTLINED_FUNCTION_8();
        sub_1C8A04164(v13, v14, v15, v16);
        break;
      case 3:
        OUTLINED_FUNCTION_8();
        sub_1C8A04D10();
        break;
      case 4:
        OUTLINED_FUNCTION_8();
        sub_1C8A04D58();
        break;
      case 5:
        v7 = OUTLINED_FUNCTION_8();
        sub_1C8A04E68(v7, v8, v9, v10, v11, v12);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C8A040B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRUtterance(0);
  type metadata accessor for Siri_Nlu_External_UUID(0);
  sub_1C8776A10(&qword_1EDACCE50, type metadata accessor for Siri_Nlu_External_UUID, &protocol conformance descriptor for Siri_Nlu_External_UUID);
  return sub_1C8BD4C7C();
}

void Siri_Nlu_Internal_Queryrewrite_QRUtterance.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
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
  v10 = type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRUtterance(0);
  sub_1C87E8DEC(v1 + v10[7], v2);
  if (__swift_getEnumTagSinglePayload(v2, 1, v5) == 1)
  {
    sub_1C8778ED8(v2, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  }

  else
  {
    sub_1C87E8E5C(v2, v9);
    OUTLINED_FUNCTION_22_13();
    sub_1C8776A10(v11, v12, &protocol conformance descriptor for Siri_Nlu_External_UUID);
    OUTLINED_FUNCTION_9_1();
    sub_1C8BD4E2C();
    sub_1C87E9274(v9);
    if (v0)
    {
      goto LABEL_13;
    }
  }

  if (!*(v1 + v10[8] + 8) || (OUTLINED_FUNCTION_29_1(), sub_1C8BD4DDC(), !v0))
  {
    if (!*(*v1 + 16) || (type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRToken(0), OUTLINED_FUNCTION_24_11(), sub_1C8776A10(v13, v14, &protocol conformance descriptor for Siri_Nlu_Internal_Queryrewrite_QRToken), OUTLINED_FUNCTION_117(), OUTLINED_FUNCTION_9_1(), sub_1C8BD4E0C(), !v0))
    {
      if (!*(v1[1] + 16) || (type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRToken(0), OUTLINED_FUNCTION_24_11(), sub_1C8776A10(v15, v16, &protocol conformance descriptor for Siri_Nlu_Internal_Queryrewrite_QRToken), OUTLINED_FUNCTION_117(), OUTLINED_FUNCTION_9_1(), sub_1C8BD4E0C(), !v0))
      {
        if ((*(v1 + v10[9] + 8) & 1) != 0 || (OUTLINED_FUNCTION_29_1(), sub_1C8BD4DCC(), !v0))
        {
          OUTLINED_FUNCTION_49_0();
        }
      }
    }
  }

LABEL_13:
  OUTLINED_FUNCTION_190();
}

uint64_t static Siri_Nlu_Internal_Queryrewrite_QRUtterance.== infix(_:_:)(uint64_t a1, uint64_t a2)
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
  v17 = *(type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRUtterance(v16) + 28);
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

  sub_1C87D8DF8();
  if (v29)
  {
    sub_1C87D8DF8();
    if (v30)
    {
      OUTLINED_FUNCTION_4_0();
      if (v32)
      {
        if (v31)
        {
          goto LABEL_28;
        }
      }

      else
      {
        OUTLINED_FUNCTION_36();
        if ((v33 & 1) == 0)
        {
LABEL_28:
          sub_1C8BD49FC();
          OUTLINED_FUNCTION_1_15();
          v36 = sub_1C8776A10(v34, v35, MEMORY[0x1E69AAC10]);
          v20 = OUTLINED_FUNCTION_64_0(v36);
          return v20 & 1;
        }
      }
    }
  }

LABEL_10:
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_1C8A04768(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776A10(&qword_1EC2BE010, type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRUtterance, &protocol conformance descriptor for Siri_Nlu_Internal_Queryrewrite_QRUtterance);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8A047E8(uint64_t a1)
{
  v2 = sub_1C8776A10(&qword_1EC2BDF20, type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRUtterance, &protocol conformance descriptor for Siri_Nlu_Internal_Queryrewrite_QRUtterance);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8A04858(uint64_t a1, uint64_t a2)
{
  sub_1C8776A10(&qword_1EC2BDF20, type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRUtterance, &protocol conformance descriptor for Siri_Nlu_Internal_Queryrewrite_QRUtterance);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8A048F0()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BDEC0);
  __swift_project_value_buffer(v0, qword_1EC2BDEC0);
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

void Siri_Nlu_Internal_Queryrewrite_QRInteraction.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    v1 = OUTLINED_FUNCTION_81_0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        OUTLINED_FUNCTION_8();
        sub_1C8A04D10();
        break;
      case 2:
        OUTLINED_FUNCTION_8();
        sub_1C8A04D58();
        break;
      case 3:
        v9 = OUTLINED_FUNCTION_8();
        sub_1C8A04DA0(v9, v10, v11, v12);
        break;
      case 4:
        v13 = OUTLINED_FUNCTION_8();
        sub_1C8A04E04(v13, v14);
        break;
      case 5:
        v3 = OUTLINED_FUNCTION_8();
        sub_1C8A04E68(v3, v4, v5, v6, v7, v8);
        break;
      default:
        continue;
    }
  }
}

void sub_1C8A04D10()
{
  OUTLINED_FUNCTION_189();
  v1 = OUTLINED_FUNCTION_129();
  v2(v1);
  v3 = OUTLINED_FUNCTION_83_2();
  OUTLINED_FUNCTION_163_1(v0, v4, v3);
  OUTLINED_FUNCTION_190();
}

void sub_1C8A04D58()
{
  OUTLINED_FUNCTION_189();
  v1 = OUTLINED_FUNCTION_129();
  v2(v1);
  v3 = OUTLINED_FUNCTION_83_2();
  OUTLINED_FUNCTION_163_1(v0 + 8, v4, v3);
  OUTLINED_FUNCTION_190();
}

uint64_t sub_1C8A04E68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(void))
{
  a5(0);
  OUTLINED_FUNCTION_55();
  return a6();
}

uint64_t Siri_Nlu_Internal_Queryrewrite_QRInteraction.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_50_2();
  if (!*(*v0 + 16) || (type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRUtterance(0), sub_1C8776A10(&qword_1EC2BDF20, type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRUtterance, &protocol conformance descriptor for Siri_Nlu_Internal_Queryrewrite_QRUtterance), OUTLINED_FUNCTION_117(), OUTLINED_FUNCTION_9_1(), result = sub_1C8BD4E0C(), !v1))
  {
    if (!*(*(v2 + 8) + 16) || (type metadata accessor for Siri_Nlu_Internal_Token(0), sub_1C8776A10(&qword_1EC2B4BE0, type metadata accessor for Siri_Nlu_Internal_Token, &protocol conformance descriptor for Siri_Nlu_Internal_Token), OUTLINED_FUNCTION_117(), OUTLINED_FUNCTION_9_1(), result = sub_1C8BD4E0C(), !v1))
    {
      v4 = type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRInteraction(0);
      if (!*(v2 + v4[7] + 8) || (OUTLINED_FUNCTION_29_1(), result = sub_1C8BD4DDC(), !v1))
      {
        if (*(v2 + v4[8]) == 2 || (OUTLINED_FUNCTION_29_1(), result = sub_1C8BD4D3C(), !v1))
        {
          if (*(v2 + v4[9] + 8))
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

uint64_t static Siri_Nlu_Internal_Queryrewrite_QRInteraction.== infix(_:_:)()
{
  sub_1C87D8598();
  if ((v0 & 1) == 0)
  {
    return 0;
  }

  sub_1C87D85EC();
  if ((v1 & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRInteraction(0);
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
  OUTLINED_FUNCTION_1_15();
  v17 = sub_1C8776A10(v15, v16, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_64_0(v17) & 1;
}

uint64_t sub_1C8A05240(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776A10(&qword_1EC2BE008, type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRInteraction, &protocol conformance descriptor for Siri_Nlu_Internal_Queryrewrite_QRInteraction);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8A052C0(uint64_t a1)
{
  v2 = sub_1C8776A10(&qword_1EC2B71A0, type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRInteraction, &protocol conformance descriptor for Siri_Nlu_Internal_Queryrewrite_QRInteraction);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8A05330(uint64_t a1, uint64_t a2)
{
  sub_1C8776A10(&qword_1EC2B71A0, type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRInteraction, &protocol conformance descriptor for Siri_Nlu_Internal_Queryrewrite_QRInteraction);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8A053C8()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BDED8);
  __swift_project_value_buffer(v0, qword_1EC2BDED8);
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

uint64_t Siri_Nlu_Internal_Queryrewrite_QRHypothesis.decodeMessage<A>(decoder:)()
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
        sub_1C8A056D8(v3, v4, v5, v6);
        break;
      case 2:
        v15 = OUTLINED_FUNCTION_8();
        sub_1C8A0578C(v15, v16, v17, v18);
        break;
      case 3:
        v7 = OUTLINED_FUNCTION_8();
        sub_1C8A057F0(v7, v8, v9, v10);
        break;
      case 4:
        v11 = OUTLINED_FUNCTION_8();
        sub_1C8A05854(v11, v12, v13, v14);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C8A056D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRHypothesis(0);
  type metadata accessor for Siri_Nlu_External_UUID(0);
  sub_1C8776A10(&qword_1EDACCE50, type metadata accessor for Siri_Nlu_External_UUID, &protocol conformance descriptor for Siri_Nlu_External_UUID);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C8A05854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRHypothesis(0);
  sub_1C8A0620C();
  return sub_1C8BD4B4C();
}

void Siri_Nlu_Internal_Queryrewrite_QRHypothesis.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_189();
  v26 = v24;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v27);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v28);
  v29 = OUTLINED_FUNCTION_80_2();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_33();
  v33 = v32 - v31;
  v34 = type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRHypothesis(0);
  sub_1C87E8DEC(v23 + v34[5], v25);
  if (__swift_getEnumTagSinglePayload(v25, 1, v29) == 1)
  {
    sub_1C8778ED8(v25, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  }

  else
  {
    sub_1C87E8E5C(v25, v33);
    OUTLINED_FUNCTION_22_13();
    sub_1C8776A10(v35, v36, &protocol conformance descriptor for Siri_Nlu_External_UUID);
    sub_1C8BD4E2C();
    sub_1C87E9274(v33);
    if (v24)
    {
      goto LABEL_11;
    }
  }

  v37 = (v23 + v34[6]);
  v38 = v37[1];
  if (!v38 || (OUTLINED_FUNCTION_9_5(*v37, v38, 2), (v26 = v24) == 0))
  {
    if ((*(v23 + v34[7] + 8) & 1) != 0 || (OUTLINED_FUNCTION_55(), sub_1C8BD4DCC(), !v26))
    {
      if (*(v23 + v34[8]) == 2 || (sub_1C8A0620C(), sub_1C8BD4D4C(), !v26))
      {
        OUTLINED_FUNCTION_55();
        sub_1C8BD49DC();
      }
    }
  }

LABEL_11:
  OUTLINED_FUNCTION_190();
}

uint64_t static Siri_Nlu_Internal_Queryrewrite_QRHypothesis.== infix(_:_:)(uint64_t a1, uint64_t a2)
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
  v17 = *(type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRHypothesis(v16) + 20);
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
      OUTLINED_FUNCTION_1_15();
      sub_1C8776A10(v34, v35, MEMORY[0x1E69AAC10]);
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

uint64_t sub_1C8A05DD0(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_1C8BD530C();
  a1(0);
  sub_1C8776A10(a2, a3, a4);
  sub_1C8BD515C();
  return sub_1C8BD531C();
}

uint64_t sub_1C8A05EAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776A10(&qword_1EC2BE000, type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRHypothesis, &protocol conformance descriptor for Siri_Nlu_Internal_Queryrewrite_QRHypothesis);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8A05F2C(uint64_t a1)
{
  v2 = sub_1C8776A10(&qword_1EC2B5ED0, type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRHypothesis, &protocol conformance descriptor for Siri_Nlu_Internal_Queryrewrite_QRHypothesis);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8A05F9C(uint64_t a1, uint64_t a2)
{
  sub_1C8776A10(&qword_1EC2B5ED0, type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRHypothesis, &protocol conformance descriptor for Siri_Nlu_Internal_Queryrewrite_QRHypothesis);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8A0601C()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BDEF0);
  __swift_project_value_buffer(v0, qword_1EC2BDEF0);
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

unint64_t sub_1C8A0620C()
{
  result = qword_1EC2BDF30;
  if (!qword_1EC2BDF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BDF30);
  }

  return result;
}

unint64_t sub_1C8A06264()
{
  result = qword_1EC2BDF40;
  if (!qword_1EC2BDF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BDF40);
  }

  return result;
}

unint64_t sub_1C8A062BC()
{
  result = qword_1EC2BDF48;
  if (!qword_1EC2BDF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BDF48);
  }

  return result;
}

unint64_t sub_1C8A06314()
{
  result = qword_1EC2BDF50;
  if (!qword_1EC2BDF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BDF50);
  }

  return result;
}

unint64_t sub_1C8A0636C()
{
  result = qword_1EC2BDF58;
  if (!qword_1EC2BDF58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC2BDF60, &qword_1C8C0D068);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2BDF58);
  }

  return result;
}

void sub_1C8A068A0(uint64_t a1)
{
  sub_1C8A069EC(319, &qword_1EC2BDFC8, type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRToken, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1C8BD49FC();
    if (v2 <= 0x3F)
    {
      sub_1C8A069EC(319, qword_1EDACE198, type metadata accessor for Siri_Nlu_External_UUID, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1C87EB4B0(319, &qword_1EDACD3E8, MEMORY[0x1E69E6158]);
        if (v4 <= 0x3F)
        {
          sub_1C87EB4B0(319, &qword_1EDACD390, MEMORY[0x1E69E63B0]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1C8A069EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1C8A06A78(uint64_t a1)
{
  sub_1C8A069EC(319, &qword_1EC2BDFE0, type metadata accessor for Siri_Nlu_Internal_Queryrewrite_QRUtterance, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1C8A069EC(319, &qword_1EC2B2F68, type metadata accessor for Siri_Nlu_Internal_Token, MEMORY[0x1E69E62F8]);
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

void sub_1C8A06C14(uint64_t a1)
{
  sub_1C8BD49FC();
  if (v1 <= 0x3F)
  {
    sub_1C8A069EC(319, qword_1EDACE198, type metadata accessor for Siri_Nlu_External_UUID, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1C87EB4B0(319, &qword_1EDACD3E8, MEMORY[0x1E69E6158]);
      if (v3 <= 0x3F)
      {
        sub_1C87EB4B0(319, &qword_1EDACD390, MEMORY[0x1E69E63B0]);
        if (v4 <= 0x3F)
        {
          sub_1C87EB4B0(319, &qword_1EC2BDFF8, &type metadata for Siri_Nlu_Internal_Queryrewrite_QRHypothesis.QRRewriteType);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

_BYTE *storeEnumTagSinglePayload for Siri_Nlu_Internal_Queryrewrite_QRHypothesis.QRRewriteType(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t Siri_Nlu_External_LanguageVariantResult.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  v2 = type metadata accessor for Siri_Nlu_External_LanguageVariantResult(0);
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v3 = *(v2 + 24);
  v4 = type metadata accessor for Siri_Nlu_External_Parser(0);

  return __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v4);
}

uint64_t Siri_Nlu_External_LanguageVariantResult.multilingualVariant.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Siri_Nlu_External_LanguageVariantResult.parser.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6540, &unk_1C8BE7A40);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v15 - v5;
  v7 = type metadata accessor for Siri_Nlu_External_LanguageVariantResult(0);
  sub_1C888EB30(v1 + *(v7 + 24), v6);
  v8 = type metadata accessor for Siri_Nlu_External_Parser(0);
  v9 = OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_76(v9, v10, v8);
  if (!v11)
  {
    return sub_1C888EBA0(v6, a1);
  }

  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  *(a1 + *(v8 + 20)) = 3;
  *(a1 + *(v8 + 24)) = 10;
  v12 = OUTLINED_FUNCTION_120();
  result = OUTLINED_FUNCTION_76(v12, v13, v8);
  if (!v11)
  {
    return sub_1C8778ED8(v6, &qword_1EC2B6540, &unk_1C8BE7A40);
  }

  return result;
}

uint64_t sub_1C8A0701C(uint64_t a1)
{
  v2 = type metadata accessor for Siri_Nlu_External_Parser(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1C888EF40(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  return Siri_Nlu_External_LanguageVariantResult.parser.setter();
}

uint64_t Siri_Nlu_External_LanguageVariantResult.parser.setter()
{
  v2 = OUTLINED_FUNCTION_241();
  v3 = *(type metadata accessor for Siri_Nlu_External_LanguageVariantResult(v2) + 24);
  sub_1C8778ED8(v1 + v3, &qword_1EC2B6540, &unk_1C8BE7A40);
  sub_1C888EBA0(v0, v1 + v3);
  v4 = type metadata accessor for Siri_Nlu_External_Parser(0);

  return __swift_storeEnumTagSinglePayload(v1 + v3, 0, 1, v4);
}

void (*Siri_Nlu_External_LanguageVariantResult.parser.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6540, &unk_1C8BE7A40);
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Siri_Nlu_External_Parser(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_21();
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for Siri_Nlu_External_LanguageVariantResult(0) + 24);
  *(v3 + 10) = v11;
  sub_1C888EB30(v1 + v11, v6);
  v12 = OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_76(v12, v13, v7);
  if (v14)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v10[*(v7 + 20)] = 3;
    v10[*(v7 + 24)] = 10;
    v15 = OUTLINED_FUNCTION_120();
    OUTLINED_FUNCTION_76(v15, v16, v7);
    if (!v14)
    {
      sub_1C8778ED8(v6, &qword_1EC2B6540, &unk_1C8BE7A40);
    }
  }

  else
  {
    sub_1C888EBA0(v6, v10);
  }

  return sub_1C888EE60;
}

uint64_t Siri_Nlu_External_LanguageVariantResult.hasParser.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6540, &unk_1C8BE7A40);
  OUTLINED_FUNCTION_80(v1);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v12 - v3;
  v5 = type metadata accessor for Siri_Nlu_External_LanguageVariantResult(0);
  sub_1C888EB30(v0 + *(v5 + 24), v4);
  type metadata accessor for Siri_Nlu_External_Parser(0);
  v6 = OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_76(v6, v7, v8);
  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  sub_1C8778ED8(v4, &qword_1EC2B6540, &unk_1C8BE7A40);
  return v10;
}

Swift::Void __swiftcall Siri_Nlu_External_LanguageVariantResult.clearParser()()
{
  v1 = *(type metadata accessor for Siri_Nlu_External_LanguageVariantResult(0) + 24);
  sub_1C8778ED8(v0 + v1, &qword_1EC2B6540, &unk_1C8BE7A40);
  v2 = type metadata accessor for Siri_Nlu_External_Parser(0);

  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
}

uint64_t Siri_Nlu_External_LanguageVariantResult.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Siri_Nlu_External_LanguageVariantResult(0) + 20);
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_21();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t Siri_Nlu_External_LanguageVariantResult.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_241();
  v3 = *(type metadata accessor for Siri_Nlu_External_LanguageVariantResult(v2) + 20);
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_21();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

void (*Siri_Nlu_External_LanguageVariantResult.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_241();
  type metadata accessor for Siri_Nlu_External_LanguageVariantResult(v0);
  return nullsub_1;
}

uint64_t Siri_Nlu_External_MultilingualVariant.languageVariantName.getter()
{
  OUTLINED_FUNCTION_2_24();
  v2 = (v0 + v1);
  if (v2[1])
  {
    v3 = *v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_1C8A07534(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_External_MultilingualVariant.languageVariantName.setter(v1, v2);
}

uint64_t Siri_Nlu_External_MultilingualVariant.languageVariantName.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_24();
  v6 = (v2 + v5);

  *v6 = a1;
  v6[1] = a2;
  return result;
}

void (*Siri_Nlu_External_MultilingualVariant.languageVariantName.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[2] = v1;
  OUTLINED_FUNCTION_2_24();
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

Swift::Void __swiftcall Siri_Nlu_External_MultilingualVariant.clearLanguageVariantName()()
{
  OUTLINED_FUNCTION_2_24();
  v2 = (v0 + v1);

  *v2 = 0;
  v2[1] = 0;
}

double Siri_Nlu_External_MultilingualVariant.languageVariantScore.getter()
{
  OUTLINED_FUNCTION_3_17();
  result = OUTLINED_FUNCTION_37(v0);
  if (!v3)
  {
    return v2;
  }

  return result;
}

uint64_t Siri_Nlu_External_MultilingualVariant.languageVariantScore.setter(double a1)
{
  result = OUTLINED_FUNCTION_3_17();
  *v3 = a1;
  *(v3 + 8) = 0;
  return result;
}

uint64_t (*Siri_Nlu_External_MultilingualVariant.languageVariantScore.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Siri_Nlu_External_MultilingualVariant(0) + 24);
  *(a1 + 16) = v3;
  v4 = OUTLINED_FUNCTION_37(v1 + v3);
  if (!v6)
  {
    v4 = v5;
  }

  *a1 = v4;
  return sub_1C8820288;
}

Swift::Void __swiftcall Siri_Nlu_External_MultilingualVariant.clearLanguageVariantScore()()
{
  OUTLINED_FUNCTION_3_17();
  *v0 = 0;
  *(v0 + 8) = 1;
}

uint64_t Siri_Nlu_External_MultilingualVariant.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_21();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t Siri_Nlu_External_MultilingualVariant.unknownFields.setter()
{
  OUTLINED_FUNCTION_241();
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_21();
  v4 = *(v3 + 40);

  return v4(v1, v0, v2);
}

uint64_t Siri_Nlu_External_MultilingualVariant.init()@<X0>(uint64_t a2@<X8>)
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  result = OUTLINED_FUNCTION_2_24();
  v5 = (a2 + v4);
  *v5 = 0;
  v5[1] = 0;
  v6 = a2 + *(result + 24);
  *v6 = 0;
  *(v6 + 8) = 1;
  return result;
}

uint64_t sub_1C8A078D0()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B4780);
  __swift_project_value_buffer(v0, qword_1EC2B4780);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "multilingual_variant";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "parser";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C8A07B04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_External_MultilingualVariant(0);
  sub_1C8A07E84(&qword_1EC2B4808, type metadata accessor for Siri_Nlu_External_MultilingualVariant, &protocol conformance descriptor for Siri_Nlu_External_MultilingualVariant);
  return sub_1C8BD4C6C();
}

uint64_t sub_1C8A07BA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_External_LanguageVariantResult(0);
  type metadata accessor for Siri_Nlu_External_Parser(0);
  sub_1C8A07E84(&qword_1EDACCDA0, type metadata accessor for Siri_Nlu_External_Parser, &protocol conformance descriptor for Siri_Nlu_External_Parser);
  return sub_1C8BD4C7C();
}

uint64_t Siri_Nlu_External_LanguageVariantResult.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6540, &unk_1C8BE7A40);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for Siri_Nlu_External_Parser(0);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v3;
  if (!*(*v3 + 16) || (type metadata accessor for Siri_Nlu_External_MultilingualVariant(0), sub_1C8A07E84(&qword_1EC2B4808, type metadata accessor for Siri_Nlu_External_MultilingualVariant, &protocol conformance descriptor for Siri_Nlu_External_MultilingualVariant), OUTLINED_FUNCTION_10_14(), result = sub_1C8BD4E0C(), !v4))
  {
    v14 = type metadata accessor for Siri_Nlu_External_LanguageVariantResult(0);
    sub_1C888EB30(v16 + *(v14 + 24), v8);
    if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
    {
      sub_1C8778ED8(v8, &qword_1EC2B6540, &unk_1C8BE7A40);
    }

    else
    {
      sub_1C888EBA0(v8, v12);
      sub_1C8A07E84(&qword_1EDACCDA0, type metadata accessor for Siri_Nlu_External_Parser, &protocol conformance descriptor for Siri_Nlu_External_Parser);
      OUTLINED_FUNCTION_10_14();
      sub_1C8BD4E2C();
      result = sub_1C888EFA4(v12);
      if (v4)
      {
        return result;
      }
    }

    return sub_1C8BD49DC();
  }

  return result;
}

uint64_t sub_1C8A07E84(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static Siri_Nlu_External_LanguageVariantResult.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_17();
  v5 = type metadata accessor for Siri_Nlu_External_Parser(v4);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6540, &unk_1C8BE7A40);
  OUTLINED_FUNCTION_80(v9);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v26 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6568, &unk_1C8BE7C10);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v26 - v15;
  sub_1C87DCECC();
  if ((v17 & 1) == 0)
  {
    goto LABEL_11;
  }

  v18 = *(type metadata accessor for Siri_Nlu_External_LanguageVariantResult(0) + 24);
  v19 = *(v13 + 48);
  sub_1C888EB30(v2 + v18, v16);
  sub_1C888EB30(a2 + v18, &v16[v19]);
  OUTLINED_FUNCTION_76(v16, 1, v5);
  if (v20)
  {
    OUTLINED_FUNCTION_76(&v16[v19], 1, v5);
    if (v20)
    {
      sub_1C8778ED8(v16, &qword_1EC2B6540, &unk_1C8BE7A40);
LABEL_14:
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_1_16();
      sub_1C8A07E84(v24, v25, MEMORY[0x1E69AAC10]);
      v21 = sub_1C8BD517C();
      return v21 & 1;
    }

    goto LABEL_10;
  }

  sub_1C888EB30(v16, v12);
  OUTLINED_FUNCTION_76(&v16[v19], 1, v5);
  if (v20)
  {
    sub_1C888EFA4(v12);
LABEL_10:
    sub_1C8778ED8(v16, &qword_1EC2B6568, &unk_1C8BE7C10);
    goto LABEL_11;
  }

  sub_1C888EBA0(&v16[v19], v8);
  v23 = static Siri_Nlu_External_Parser.== infix(_:_:)();
  sub_1C888EFA4(v8);
  sub_1C888EFA4(v12);
  sub_1C8778ED8(v16, &qword_1EC2B6540, &unk_1C8BE7A40);
  if (v23)
  {
    goto LABEL_14;
  }

LABEL_11:
  v21 = 0;
  return v21 & 1;
}

uint64_t sub_1C8A081E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8A07E84(&qword_1EC2BE048, type metadata accessor for Siri_Nlu_External_LanguageVariantResult, &protocol conformance descriptor for Siri_Nlu_External_LanguageVariantResult);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8A08264(uint64_t a1)
{
  v2 = sub_1C8A07E84(&qword_1EC2B4770, type metadata accessor for Siri_Nlu_External_LanguageVariantResult, &protocol conformance descriptor for Siri_Nlu_External_LanguageVariantResult);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8A082D4(uint64_t a1, uint64_t a2)
{
  sub_1C8A07E84(&qword_1EC2B4770, type metadata accessor for Siri_Nlu_External_LanguageVariantResult, &protocol conformance descriptor for Siri_Nlu_External_LanguageVariantResult);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8A08370()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B4818);
  __swift_project_value_buffer(v0, qword_1EC2B4818);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "language_variant_name";
  *(v6 + 8) = 21;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "language_variant_score";
  *(v10 + 1) = 22;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C8A0859C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), void (*a5)(uint64_t))
{
  while (1)
  {
    result = sub_1C8BD4AFC();
    if (v5 || (v9 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      v11 = OUTLINED_FUNCTION_578();
      a5(v11);
    }

    else if (result == 1)
    {
      v10 = OUTLINED_FUNCTION_578();
      a4(v10);
    }
  }

  return result;
}

uint64_t Siri_Nlu_External_MultilingualVariant.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = OUTLINED_FUNCTION_17();
  v6 = type metadata accessor for Siri_Nlu_External_MultilingualVariant(v5);
  if (!*(v3 + *(v6 + 20) + 8) || (result = sub_1C8BD4DDC(), !v4))
  {
    if (*(v3 + *(v6 + 24) + 8))
    {
      return sub_1C8BD49DC();
    }

    result = sub_1C8BD4DCC();
    if (!v4)
    {
      return sub_1C8BD49DC();
    }
  }

  return result;
}

uint64_t static Siri_Nlu_External_MultilingualVariant.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_17();
  v5 = type metadata accessor for Siri_Nlu_External_MultilingualVariant(v4);
  v6 = *(v5 + 20);
  v7 = (v2 + v6);
  v8 = *(v2 + v6 + 8);
  v9 = (a2 + v6);
  v10 = v9[1];
  if (v8)
  {
    if (!v10)
    {
      return 0;
    }

    v11 = *v7 == *v9 && v8 == v10;
    if (!v11 && (sub_1C8BD529C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  v12 = *(v5 + 24);
  v13 = (v2 + v12);
  v14 = *(v2 + v12 + 8);
  v15 = (a2 + v12);
  v16 = *(a2 + v12 + 8);
  if (v14)
  {
    if (!v16)
    {
      return 0;
    }
  }

  else
  {
    if (*v13 != *v15)
    {
      LOBYTE(v16) = 1;
    }

    if (v16)
    {
      return 0;
    }
  }

  sub_1C8BD49FC();
  OUTLINED_FUNCTION_1_16();
  sub_1C8A07E84(v18, v19, MEMORY[0x1E69AAC10]);
  return sub_1C8BD517C() & 1;
}

uint64_t sub_1C8A088FC(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_1C8BD530C();
  a1(0);
  sub_1C8A07E84(a2, a3, a4);
  sub_1C8BD515C();
  return sub_1C8BD531C();
}

uint64_t sub_1C8A089E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8A07E84(&qword_1EC2BE040, type metadata accessor for Siri_Nlu_External_MultilingualVariant, &protocol conformance descriptor for Siri_Nlu_External_MultilingualVariant);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8A08A60(uint64_t a1)
{
  v2 = sub_1C8A07E84(&qword_1EC2B4808, type metadata accessor for Siri_Nlu_External_MultilingualVariant, &protocol conformance descriptor for Siri_Nlu_External_MultilingualVariant);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8A08AD0(uint64_t a1, uint64_t a2)
{
  sub_1C8A07E84(&qword_1EC2B4808, type metadata accessor for Siri_Nlu_External_MultilingualVariant, &protocol conformance descriptor for Siri_Nlu_External_MultilingualVariant);

  return sub_1C8BD4CFC();
}

void sub_1C8A08DA4(uint64_t a1)
{
  sub_1C8A08EA0(319, qword_1EDACD060, type metadata accessor for Siri_Nlu_External_MultilingualVariant, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1C8BD49FC();
    if (v2 <= 0x3F)
    {
      sub_1C8A08EA0(319, qword_1EDACE0E8, type metadata accessor for Siri_Nlu_External_Parser, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C8A08EA0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1C8A08F2C(uint64_t a1)
{
  sub_1C8BD49FC();
  if (v1 <= 0x3F)
  {
    sub_1C87EB4B0(319, &qword_1EDACD3E8, MEMORY[0x1E69E6158]);
    if (v2 <= 0x3F)
    {
      sub_1C87EB4B0(319, &qword_1EDACD390, MEMORY[0x1E69E63B0]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t String.toProtobufStringValue()(uint64_t a1, uint64_t a2)
{
  sub_1C8BD492C();

  return sub_1C8BD491C();
}

uint64_t Siri_Nlu_External_SsuInference_SsuInferenceRequest.requestID.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64B0, &unk_1C8BF3F40);
  OUTLINED_FUNCTION_80(v4);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_9_19();
  sub_1C887DCFC(v1 + *(v6 + 20), v2);
  v7 = type metadata accessor for Siri_Nlu_External_RequestID(0);
  if (__swift_getEnumTagSinglePayload(v2, 1, v7) != 1)
  {
    return sub_1C887DD6C(v2, a1);
  }

  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  OUTLINED_FUNCTION_18_2(v7[5]);
  type metadata accessor for Siri_Nlu_External_UUID(0);
  OUTLINED_FUNCTION_5();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  OUTLINED_FUNCTION_18_2(v7[7]);
  OUTLINED_FUNCTION_18_2(v7[8]);
  OUTLINED_FUNCTION_18_2(v7[9]);
  OUTLINED_FUNCTION_18_2(v7[10]);
  *(a1 + v7[11]) = 6;
  result = __swift_getEnumTagSinglePayload(v2, 1, v7);
  if (result != 1)
  {
    return sub_1C8778ED8(v2, &qword_1EC2B64B0, &unk_1C8BF3F40);
  }

  return result;
}

uint64_t type metadata accessor for Siri_Nlu_External_SsuInference_SsuInferenceRequest(uint64_t a1)
{
  result = qword_1EC2BE088;
  if (!qword_1EC2BE088)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C8A091B4(uint64_t a1)
{
  v2 = type metadata accessor for Siri_Nlu_External_RequestID(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C887E14C(a1, v4);
  return Siri_Nlu_External_SsuInference_SsuInferenceRequest.requestID.setter(v4);
}

uint64_t Siri_Nlu_External_SsuInference_SsuInferenceRequest.requestID.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nlu_External_SsuInference_SsuInferenceRequest(0) + 20);
  sub_1C8778ED8(v1 + v3, &qword_1EC2B64B0, &unk_1C8BF3F40);
  sub_1C887DD6C(a1, v1 + v3);
  v4 = type metadata accessor for Siri_Nlu_External_RequestID(0);

  return __swift_storeEnumTagSinglePayload(v1 + v3, 0, 1, v4);
}

void (*Siri_Nlu_External_SsuInference_SsuInferenceRequest.requestID.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64B0, &unk_1C8BF3F40);
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Siri_Nlu_External_RequestID(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_21();
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for Siri_Nlu_External_SsuInference_SsuInferenceRequest(0) + 20);
  *(v3 + 10) = v11;
  sub_1C887DCFC(v1 + v11, v6);
  OUTLINED_FUNCTION_72(v6);
  if (v12)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_26(v7[5]);
    type metadata accessor for Siri_Nlu_External_UUID(0);
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
    OUTLINED_FUNCTION_26(v7[7]);
    OUTLINED_FUNCTION_26(v7[8]);
    OUTLINED_FUNCTION_26(v7[9]);
    OUTLINED_FUNCTION_26(v7[10]);
    v10[v7[11]] = 6;
    OUTLINED_FUNCTION_72(v6);
    if (!v12)
    {
      sub_1C8778ED8(v6, &qword_1EC2B64B0, &unk_1C8BF3F40);
    }
  }

  else
  {
    sub_1C887DD6C(v6, v10);
  }

  return sub_1C887E06C;
}

BOOL Siri_Nlu_External_SsuInference_SsuInferenceRequest.hasRequestID.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64B0, &unk_1C8BF3F40);
  OUTLINED_FUNCTION_80(v2);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_9_19();
  sub_1C887DCFC(v0 + *(v4 + 20), v1);
  v5 = type metadata accessor for Siri_Nlu_External_RequestID(0);
  v6 = __swift_getEnumTagSinglePayload(v1, 1, v5) != 1;
  sub_1C8778ED8(v1, &qword_1EC2B64B0, &unk_1C8BF3F40);
  return v6;
}

Swift::Void __swiftcall Siri_Nlu_External_SsuInference_SsuInferenceRequest.clearRequestID()()
{
  v1 = type metadata accessor for Siri_Nlu_External_SsuInference_SsuInferenceRequest(0);
  sub_1C8778ED8(v0 + *(v1 + 20), &qword_1EC2B64B0, &unk_1C8BF3F40);
  type metadata accessor for Siri_Nlu_External_RequestID(0);
  OUTLINED_FUNCTION_5();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Siri_Nlu_External_SsuInference_SsuInferenceRequest.utterance.getter()
{
  v1 = (v0 + *(type metadata accessor for Siri_Nlu_External_SsuInference_SsuInferenceRequest(0) + 24));
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

uint64_t sub_1C8A095B4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_External_SsuInference_SsuInferenceRequest.utterance.setter(v1, v2);
}

uint64_t Siri_Nlu_External_SsuInference_SsuInferenceRequest.utterance.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Siri_Nlu_External_SsuInference_SsuInferenceRequest(0) + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

void (*Siri_Nlu_External_SsuInference_SsuInferenceRequest.utterance.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[2] = v1;
  v4 = *(type metadata accessor for Siri_Nlu_External_SsuInference_SsuInferenceRequest(0) + 24);
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

Swift::Void __swiftcall Siri_Nlu_External_SsuInference_SsuInferenceRequest.clearUtterance()()
{
  v1 = (v0 + *(type metadata accessor for Siri_Nlu_External_SsuInference_SsuInferenceRequest(0) + 24));

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Siri_Nlu_External_SsuInference_SsuInferenceRequest.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_21();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t Siri_Nlu_External_SsuInference_SsuInferenceRequest.unknownFields.setter()
{
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_21();
  v0 = OUTLINED_FUNCTION_5_0();

  return v1(v0);
}

void Siri_Nlu_External_SsuInference_SsuInferenceRequest.init()(uint64_t a1)
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v1 = type metadata accessor for Siri_Nlu_External_SsuInference_SsuInferenceRequest(0);
  type metadata accessor for Siri_Nlu_External_RequestID(0);
  OUTLINED_FUNCTION_5();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  OUTLINED_FUNCTION_18_2(*(v1 + 24));
}

uint64_t sub_1C8A09894()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BE050);
  __swift_project_value_buffer(v0, qword_1EC2BE050);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
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
  *v10 = "utterance";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t static Siri_Nlu_External_SsuInference_SsuInferenceRequest._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC2B5C20 != -1)
  {
    swift_once();
  }

  v2 = sub_1C8BD512C();
  v3 = __swift_project_value_buffer(v2, qword_1EC2BE050);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Siri_Nlu_External_SsuInference_SsuInferenceRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1C8BD4AFC();
    if (v3 || (v7 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      v10 = OUTLINED_FUNCTION_5_0();
      sub_1C8A09C44(v10, v11, a2, a3);
    }

    else if (result == 1)
    {
      v8 = OUTLINED_FUNCTION_5_0();
      sub_1C8A09B90(v8, v9, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1C8A09B90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_External_SsuInference_SsuInferenceRequest(0);
  type metadata accessor for Siri_Nlu_External_RequestID(0);
  sub_1C8A0A56C(&qword_1EDACCBA8, type metadata accessor for Siri_Nlu_External_RequestID, &protocol conformance descriptor for Siri_Nlu_External_RequestID);
  return sub_1C8BD4C7C();
}

uint64_t Siri_Nlu_External_SsuInference_SsuInferenceRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64B0, &unk_1C8BF3F40);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v15 - v7;
  v9 = type metadata accessor for Siri_Nlu_External_RequestID(0);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Siri_Nlu_External_SsuInference_SsuInferenceRequest(0);
  sub_1C887DCFC(v3 + *(v13 + 20), v8);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_1C8778ED8(v8, &qword_1EC2B64B0, &unk_1C8BF3F40);
  }

  else
  {
    sub_1C887DD6C(v8, v12);
    sub_1C8A0A56C(&qword_1EDACCBA8, type metadata accessor for Siri_Nlu_External_RequestID, &protocol conformance descriptor for Siri_Nlu_External_RequestID);
    sub_1C8BD4E2C();
    result = sub_1C887E1B0(v12);
    if (v4)
    {
      return result;
    }
  }

  if (!*(v3 + *(v13 + 24) + 8))
  {
    return sub_1C8BD49DC();
  }

  result = sub_1C8BD4DDC();
  if (!v4)
  {
    return sub_1C8BD49DC();
  }

  return result;
}

uint64_t static Siri_Nlu_External_SsuInference_SsuInferenceRequest.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Siri_Nlu_External_RequestID(0);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64B0, &unk_1C8BF3F40);
  OUTLINED_FUNCTION_80(v7);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v28 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64D8, &unk_1C8BEAC20) - 8;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v28 - v13;
  v15 = type metadata accessor for Siri_Nlu_External_SsuInference_SsuInferenceRequest(0);
  v16 = *(v15 + 20);
  v17 = *(v11 + 56);
  sub_1C887DCFC(a1 + v16, v14);
  sub_1C887DCFC(a2 + v16, &v14[v17]);
  OUTLINED_FUNCTION_72(v14);
  if (!v18)
  {
    sub_1C887DCFC(v14, v10);
    OUTLINED_FUNCTION_72(&v14[v17]);
    if (!v18)
    {
      sub_1C887DD6C(&v14[v17], v6);
      v21 = static Siri_Nlu_External_RequestID.== infix(_:_:)(v10, v6);
      sub_1C887E1B0(v6);
      sub_1C887E1B0(v10);
      sub_1C8778ED8(v14, &qword_1EC2B64B0, &unk_1C8BF3F40);
      if ((v21 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_13;
    }

    sub_1C887E1B0(v10);
LABEL_9:
    sub_1C8778ED8(v14, &qword_1EC2B64D8, &unk_1C8BEAC20);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_72(&v14[v17]);
  if (!v18)
  {
    goto LABEL_9;
  }

  sub_1C8778ED8(v14, &qword_1EC2B64B0, &unk_1C8BF3F40);
LABEL_13:
  v22 = *(v15 + 24);
  v23 = (a1 + v22);
  v24 = *(a1 + v22 + 8);
  v25 = (a2 + v22);
  v26 = v25[1];
  if (v24)
  {
    if (v26)
    {
      v27 = *v23 == *v25 && v24 == v26;
      if (v27 || (sub_1C8BD529C() & 1) != 0)
      {
        goto LABEL_22;
      }
    }
  }

  else if (!v26)
  {
LABEL_22:
    sub_1C8BD49FC();
    sub_1C8A0A56C(&qword_1EC2B2F70, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    OUTLINED_FUNCTION_5_0();
    v19 = sub_1C8BD517C();
    return v19 & 1;
  }

LABEL_10:
  v19 = 0;
  return v19 & 1;
}

uint64_t Siri_Nlu_External_SsuInference_SsuInferenceRequest.hashValue.getter()
{
  sub_1C8BD530C();
  type metadata accessor for Siri_Nlu_External_SsuInference_SsuInferenceRequest(0);
  sub_1C8A0A56C(&qword_1EC2BE068, type metadata accessor for Siri_Nlu_External_SsuInference_SsuInferenceRequest, &protocol conformance descriptor for Siri_Nlu_External_SsuInference_SsuInferenceRequest);
  sub_1C8BD515C();
  return sub_1C8BD531C();
}

uint64_t sub_1C8A0A218(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8A0A56C(&qword_1EC2BE098, type metadata accessor for Siri_Nlu_External_SsuInference_SsuInferenceRequest, &protocol conformance descriptor for Siri_Nlu_External_SsuInference_SsuInferenceRequest);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8A0A298(uint64_t a1)
{
  v2 = sub_1C8A0A56C(&qword_1EC2BE078, type metadata accessor for Siri_Nlu_External_SsuInference_SsuInferenceRequest, &protocol conformance descriptor for Siri_Nlu_External_SsuInference_SsuInferenceRequest);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8A0A308(uint64_t a1, uint64_t a2)
{
  sub_1C8A0A56C(&qword_1EC2BE078, type metadata accessor for Siri_Nlu_External_SsuInference_SsuInferenceRequest, &protocol conformance descriptor for Siri_Nlu_External_SsuInference_SsuInferenceRequest);

  return sub_1C8BD4CFC();
}

void sub_1C8A0A4D0(uint64_t a1)
{
  sub_1C8BD49FC();
  if (v1 <= 0x3F)
  {
    sub_1C887F13C(319);
    if (v2 <= 0x3F)
    {
      sub_1C87E8A54();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1C8A0A56C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput.init()@<X0>(uint64_t a2@<X8>)
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v3 = type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput(0);
  OUTLINED_FUNCTION_18_2(v3[5]);
  v4 = type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor(0);
  OUTLINED_FUNCTION_5();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v4);
  OUTLINED_FUNCTION_5();
  result = __swift_storeEnumTagSinglePayload(v8, v9, v10, v4);
  v12 = a2 + v3[8];
  *v12 = 0;
  *(v12 + 8) = 1;
  *(a2 + v3[9]) = 2;
  return result;
}

uint64_t Siri_Nlu_Internal_Embedding_EmbeddingResponse.init()@<X0>(uint64_t a2@<X8>)
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v3 = *(type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingResponse(0) + 20);
  if (qword_1EC2B5C38 != -1)
  {
    swift_once();
  }

  *(a2 + v3) = qword_1EC2BE0D0;
}

uint64_t Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput.embeddingVersion.getter()
{
  OUTLINED_FUNCTION_58_6();

  return OUTLINED_FUNCTION_218();
}

uint64_t sub_1C8A0A754(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput.embeddingVersion.setter(v1, v2);
}

uint64_t Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput.embeddingVersion.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_58_6();
  v6 = (v2 + v5);

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput.embeddingVersion.modify()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *(OUTLINED_FUNCTION_34_0(v2) + 16) = v0;
  OUTLINED_FUNCTION_58_6();
  *(v1 + 32) = v3;
  v4 = (v0 + v3);
  v5 = v4[1];
  if (v5)
  {
    v6 = *v4;
    v7 = v5;
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  *(v1 + 24) = v5;
  *v1 = v6;
  *(v1 + 8) = v7;

  return OUTLINED_FUNCTION_12();
}

Swift::Void __swiftcall Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput.clearEmbeddingVersion()()
{
  OUTLINED_FUNCTION_58_6();
  v2 = (v0 + v1);

  *v2 = 0;
  v2[1] = 0;
}

uint64_t Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput.embeddingTensor.getter()
{
  v2 = OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_80(v2);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_74();
  v5 = type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput(v4);
  OUTLINED_FUNCTION_38_1(v0 + *(v5 + 24));
  v6 = type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor(0);
  OUTLINED_FUNCTION_1_0();
  if (v7)
  {
    OUTLINED_FUNCTION_40_7(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_15_2(v6[6]);
    OUTLINED_FUNCTION_15_2(v6[7]);
    OUTLINED_FUNCTION_15_2(v6[8]);
    OUTLINED_FUNCTION_18_2(v6[9]);
    result = OUTLINED_FUNCTION_1_0();
    if (!v7)
    {
      return sub_1C8778ED8(v1, &qword_1EC2B64A8, &unk_1C8BE7670);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_22();
    OUTLINED_FUNCTION_121();
    return sub_1C8A0E760();
  }

  return result;
}

uint64_t Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput.embeddingTensor.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput(v1);
  sub_1C8778ED8(v0 + *(v2 + 24), &qword_1EC2B64A8, &unk_1C8BE7670);
  OUTLINED_FUNCTION_0_22();
  OUTLINED_FUNCTION_200();
  sub_1C8A0E760();
  type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor(0);
  OUTLINED_FUNCTION_19_1();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput.embeddingTensor.modify()
{
  OUTLINED_FUNCTION_261();
  v2 = v1;
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *v2 = v3;
  *v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64A8, &unk_1C8BE7670);
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v3[2] = type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor(0);
  OUTLINED_FUNCTION_21();
  v8 = *(v7 + 64);
  v3[3] = __swift_coroFrameAllocStub(v8);
  v3[4] = __swift_coroFrameAllocStub(v8);
  v9 = type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput(0);
  OUTLINED_FUNCTION_49(*(v9 + 24));
  OUTLINED_FUNCTION_0_0();
  if (v10)
  {
    OUTLINED_FUNCTION_34_8(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_1_17();
    if (!v10)
    {
      sub_1C8778ED8(v6, &qword_1EC2B64A8, &unk_1C8BE7670);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_22();
    OUTLINED_FUNCTION_63_5();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_260();
}

uint64_t Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput.hasEmbeddingTensor.getter()
{
  v1 = OUTLINED_FUNCTION_12();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_74();
  v6 = type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput(v5);
  OUTLINED_FUNCTION_62_7(*(v6 + 24));
  v7 = type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor(0);
  OUTLINED_FUNCTION_76(v0, 1, v7);
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = OUTLINED_FUNCTION_121();
  sub_1C8778ED8(v10, v11, &unk_1C8BE7670);
  return v9;
}

Swift::Void __swiftcall Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput.clearEmbeddingTensor()()
{
  v1 = type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput(0);
  sub_1C8778ED8(v0 + *(v1 + 24), &qword_1EC2B64A8, &unk_1C8BE7670);
  type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor(0);
  OUTLINED_FUNCTION_5();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput.sentenceEmbeddingTensor.getter()
{
  v2 = OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_80(v2);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_74();
  v5 = type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput(v4);
  OUTLINED_FUNCTION_38_1(v0 + *(v5 + 28));
  v6 = type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor(0);
  OUTLINED_FUNCTION_1_0();
  if (v7)
  {
    OUTLINED_FUNCTION_40_7(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_15_2(v6[6]);
    OUTLINED_FUNCTION_15_2(v6[7]);
    OUTLINED_FUNCTION_15_2(v6[8]);
    OUTLINED_FUNCTION_18_2(v6[9]);
    result = OUTLINED_FUNCTION_1_0();
    if (!v7)
    {
      return sub_1C8778ED8(v1, &qword_1EC2B64A8, &unk_1C8BE7670);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_22();
    OUTLINED_FUNCTION_121();
    return sub_1C8A0E760();
  }

  return result;
}

uint64_t Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput.sentenceEmbeddingTensor.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput(v1);
  sub_1C8778ED8(v0 + *(v2 + 28), &qword_1EC2B64A8, &unk_1C8BE7670);
  OUTLINED_FUNCTION_0_22();
  OUTLINED_FUNCTION_200();
  sub_1C8A0E760();
  type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor(0);
  OUTLINED_FUNCTION_19_1();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput.sentenceEmbeddingTensor.modify()
{
  OUTLINED_FUNCTION_261();
  v2 = v1;
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *v2 = v3;
  *v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64A8, &unk_1C8BE7670);
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v3[2] = type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor(0);
  OUTLINED_FUNCTION_21();
  v8 = *(v7 + 64);
  v3[3] = __swift_coroFrameAllocStub(v8);
  v3[4] = __swift_coroFrameAllocStub(v8);
  v9 = type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput(0);
  OUTLINED_FUNCTION_49(*(v9 + 28));
  OUTLINED_FUNCTION_0_0();
  if (v10)
  {
    OUTLINED_FUNCTION_34_8(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_1_17();
    if (!v10)
    {
      sub_1C8778ED8(v6, &qword_1EC2B64A8, &unk_1C8BE7670);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_22();
    OUTLINED_FUNCTION_63_5();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_260();
}

void sub_1C8A0AF00()
{
  OUTLINED_FUNCTION_261();
  v1 = *(*v0 + 10);
  v2 = (*v0)[3];
  v3 = (*v0)[4];
  v4 = (*v0)[1];
  v5 = (*v0)[2];
  v6 = **v0;
  if (v7)
  {
    sub_1C8A0E7B4();
    sub_1C8778ED8(v6 + v1, &qword_1EC2B64A8, &unk_1C8BE7670);
    sub_1C8A0E760();
    OUTLINED_FUNCTION_19_1();
    __swift_storeEnumTagSinglePayload(v8, v9, v10, v5);
    sub_1C8A0E808();
  }

  else
  {
    sub_1C8778ED8(v6 + v1, &qword_1EC2B64A8, &unk_1C8BE7670);
    OUTLINED_FUNCTION_0_22();
    sub_1C8A0E760();
    OUTLINED_FUNCTION_19_1();
    __swift_storeEnumTagSinglePayload(v11, v12, v13, v5);
  }

  free(v3);
  free(v2);
  free(v4);
  OUTLINED_FUNCTION_260();

  free(v14);
}

uint64_t Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput.hasSentenceEmbeddingTensor.getter()
{
  v1 = OUTLINED_FUNCTION_12();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_74();
  v6 = type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput(v5);
  OUTLINED_FUNCTION_62_7(*(v6 + 28));
  v7 = type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor(0);
  OUTLINED_FUNCTION_76(v0, 1, v7);
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = OUTLINED_FUNCTION_121();
  sub_1C8778ED8(v10, v11, &unk_1C8BE7670);
  return v9;
}

Swift::Void __swiftcall Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput.clearSentenceEmbeddingTensor()()
{
  v1 = type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput(0);
  sub_1C8778ED8(v0 + *(v1 + 28), &qword_1EC2B64A8, &unk_1C8BE7670);
  type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor(0);
  OUTLINED_FUNCTION_5();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput.embeddingDim.getter()
{
  OUTLINED_FUNCTION_50_8();
  if (v0[8])
  {
    return 0;
  }

  else
  {
    return *v0;
  }
}

uint64_t Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput.embeddingDim.setter()
{
  v2 = OUTLINED_FUNCTION_241();
  result = type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput(v2);
  v4 = v1 + *(result + 32);
  *v4 = v0;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput.embeddingDim.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput(0) + 32);
  *(a1 + 16) = v3;
  v4 = (v1 + v3);
  if (*(v4 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = *v4;
  }

  *a1 = v5;
  return sub_1C8820288;
}

Swift::Void __swiftcall Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput.clearEmbeddingDim()()
{
  OUTLINED_FUNCTION_50_8();
  *v0 = 0;
  *(v0 + 8) = 1;
}

uint64_t Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput.isStableEmbeddingsVersion.setter(char a1)
{
  result = OUTLINED_FUNCTION_57_7();
  *(v1 + v4) = a1;
  return result;
}

uint64_t (*Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput.isStableEmbeddingsVersion.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  OUTLINED_FUNCTION_57_7();
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return OUTLINED_FUNCTION_158;
}

void Siri_Nlu_Internal_Embedding_EmbeddingResponse.embeddingTensor.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_14_2(v3);
  v4 = OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_13_2(v6);
  type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor(v7);
  OUTLINED_FUNCTION_21();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_38_0(v9);
  *(v1 + 48) = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_13_18();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_0_0();
  if (v11)
  {
    OUTLINED_FUNCTION_34_8(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_1_17();
    if (!v11)
    {
      sub_1C8778ED8(v0, &qword_1EC2B64A8, &unk_1C8BE7670);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_22();
    OUTLINED_FUNCTION_63_5();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_Internal_Embedding_EmbeddingResponse.tokenChain.getter()
{
  v2 = OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_80(v2);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_74();
  v5 = *(v0 + *(type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingResponse(v4) + 20));
  v6 = OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__tokenChain;
  OUTLINED_FUNCTION_277(v5 + OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__tokenChain, v10);
  OUTLINED_FUNCTION_38_1(v5 + v6);
  v7 = type metadata accessor for Siri_Nlu_Internal_TokenChain(0);
  OUTLINED_FUNCTION_1_0();
  if (v8)
  {
    OUTLINED_FUNCTION_40_7(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_18_2(*(v7 + 24));
    OUTLINED_FUNCTION_18_2(*(v7 + 28));
    result = OUTLINED_FUNCTION_1_0();
    if (!v8)
    {
      return sub_1C8778ED8(v1, &qword_1EC2B6048, &unk_1C8BE6F80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_11_18();
    OUTLINED_FUNCTION_121();
    return sub_1C8A0E760();
  }

  return result;
}

uint64_t Siri_Nlu_Internal_Embedding_EmbeddingResponse.tokenChain.setter(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6048, &unk_1C8BE6F80);
  OUTLINED_FUNCTION_80(v1);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v2);
  if ((OUTLINED_FUNCTION_73_8(0) & 1) == 0)
  {
    OUTLINED_FUNCTION_20_9();
    v3 = OUTLINED_FUNCTION_2();
    v4 = sub_1C8A0E174(v3);
    OUTLINED_FUNCTION_40(v4);
  }

  OUTLINED_FUNCTION_11_18();
  sub_1C8A0E760();
  type metadata accessor for Siri_Nlu_Internal_TokenChain(0);
  OUTLINED_FUNCTION_19_1();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_23();
  swift_beginAccess();
  v9 = OUTLINED_FUNCTION_200();
  sub_1C878656C(v9, v10, v11, v12);
  return swift_endAccess();
}

void Siri_Nlu_Internal_Embedding_EmbeddingResponse.tokenChain.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_14_2(v3);
  v4 = OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_13_2(v6);
  v8 = type metadata accessor for Siri_Nlu_Internal_TokenChain(v7);
  OUTLINED_FUNCTION_21();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_38_0(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v1 + 48) = v12;
  OUTLINED_FUNCTION_13_18();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_0_0();
  if (v13)
  {
    OUTLINED_FUNCTION_34_8(MEMORY[0x1E69E7CC0]);
    v14 = &v12[*(v8 + 24)];
    *v14 = 0;
    *(v14 + 1) = 0;
    v15 = &v12[*(v8 + 28)];
    *v15 = 0;
    *(v15 + 1) = 0;
    OUTLINED_FUNCTION_0_0();
    if (!v13)
    {
      sub_1C8778ED8(v0, &qword_1EC2B6048, &unk_1C8BE6F80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_11_18();
    OUTLINED_FUNCTION_63_5();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C8A0B86C(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_80(v9);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21[-v11 - 8];
  OUTLINED_FUNCTION_13_18();
  v14 = *(v4 + v13);
  v15 = *a3;
  OUTLINED_FUNCTION_277(v14 + v15, v21);
  sub_1C87867A0(v14 + v15, v12, a1, a2);
  v16 = a4(0);
  OUTLINED_FUNCTION_76(v12, 1, v16);
  if (v17)
  {
    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  sub_1C8778ED8(v12, a1, a2);
  return v18;
}

void sub_1C8A0B974()
{
  OUTLINED_FUNCTION_261();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = v0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v5);
  OUTLINED_FUNCTION_80(v10);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v23 - v12;
  v14 = *(type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingResponse(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(v0 + v14);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_20_9();
    v17 = OUTLINED_FUNCTION_2();
    v16 = sub_1C8A0E174(v17);
    *(v9 + v14) = v16;
  }

  v4(0);
  OUTLINED_FUNCTION_5();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
  v22 = *v2;
  OUTLINED_FUNCTION_23();
  swift_beginAccess();
  sub_1C878656C(v13, v16 + v22, v8, v6);
  swift_endAccess();
  OUTLINED_FUNCTION_260();
}

uint64_t Siri_Nlu_Internal_Embedding_EmbeddingResponse.numToken.modify()
{
  v1 = OUTLINED_FUNCTION_758();
  v2 = __swift_coroFrameAllocStub(v1);
  *(OUTLINED_FUNCTION_34_0(v2) + 80) = v0;
  OUTLINED_FUNCTION_13_18();
  OUTLINED_FUNCTION_68_6(v3);
  OUTLINED_FUNCTION_380();
  OUTLINED_FUNCTION_39();
  return OUTLINED_FUNCTION_31();
}

uint64_t sub_1C8A0BB1C(void *a1)
{
  OUTLINED_FUNCTION_13_18();
  v4 = (*(v1 + v3) + *a1);
  OUTLINED_FUNCTION_277(v4, v6);
  if (v4[8])
  {
    return 0;
  }

  else
  {
    return *v4;
  }
}

uint64_t sub_1C8A0BB7C(uint64_t a1, void *a2)
{
  v6 = OUTLINED_FUNCTION_241();
  v7 = OUTLINED_FUNCTION_73_8(v6);
  v8 = *(v3 + v4);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_20_9();
    v9 = OUTLINED_FUNCTION_2();
    v10 = sub_1C8A0E174(v9);
    OUTLINED_FUNCTION_40(v10);
  }

  v11 = v8 + *a2;
  result = OUTLINED_FUNCTION_37_0(v11, v13);
  *v11 = v2;
  *(v11 + 8) = 0;
  return result;
}

uint64_t Siri_Nlu_Internal_Embedding_EmbeddingResponse.numLayer.modify()
{
  v1 = OUTLINED_FUNCTION_758();
  v2 = __swift_coroFrameAllocStub(v1);
  *(OUTLINED_FUNCTION_34_0(v2) + 80) = v0;
  OUTLINED_FUNCTION_13_18();
  OUTLINED_FUNCTION_68_6(v3);
  OUTLINED_FUNCTION_380();
  OUTLINED_FUNCTION_39();
  return OUTLINED_FUNCTION_31();
}

void sub_1C8A0BC68()
{
  OUTLINED_FUNCTION_261();
  v1 = v0;
  v3 = v2;
  v5 = *v4;
  v6 = *(*v4 + 72);
  v7 = *(*v4 + 88);
  v8 = *(*v4 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v8 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = *(v5 + 88);
    v12 = *(v5 + 80);
    OUTLINED_FUNCTION_20_9();
    v13 = OUTLINED_FUNCTION_2();
    v10 = sub_1C8A0E174(v13);
    *(v12 + v11) = v10;
  }

  v14 = 48;
  if (v3)
  {
    v14 = 24;
  }

  v15 = v10 + *v1;
  OUTLINED_FUNCTION_37_0(v15, v5 + v14);
  *v15 = v6;
  *(v15 + 8) = 0;
  OUTLINED_FUNCTION_260();

  free(v16);
}

BOOL sub_1C8A0BD28(void *a1)
{
  OUTLINED_FUNCTION_13_18();
  v4 = *(v1 + v3) + *a1;
  OUTLINED_FUNCTION_277(v4, v6);
  return (*(v4 + 8) & 1) == 0;
}

uint64_t sub_1C8A0BD84(void *a1)
{
  v3 = v1;
  v4 = *(type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingResponse(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_20_9();
    v7 = OUTLINED_FUNCTION_2();
    v6 = sub_1C8A0E174(v7);
    *(v3 + v4) = v6;
  }

  v8 = v6 + *a1;
  result = OUTLINED_FUNCTION_37_0(v8, v10);
  *v8 = 0;
  *(v8 + 8) = 1;
  return result;
}

uint64_t Siri_Nlu_Internal_Embedding_EmbeddingResponse.embeddingDim.modify()
{
  v1 = OUTLINED_FUNCTION_758();
  v2 = __swift_coroFrameAllocStub(v1);
  *(OUTLINED_FUNCTION_34_0(v2) + 80) = v0;
  OUTLINED_FUNCTION_13_18();
  OUTLINED_FUNCTION_68_6(v3);
  OUTLINED_FUNCTION_380();
  OUTLINED_FUNCTION_39();
  return OUTLINED_FUNCTION_31();
}

uint64_t sub_1C8A0BEB8(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64A8, &unk_1C8BE7670);
  OUTLINED_FUNCTION_80(v4);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_74();
  v7 = type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingResponse(v6);
  OUTLINED_FUNCTION_277(*(v1 + *(v7 + 20)) + *a1, v14);
  OUTLINED_FUNCTION_301();
  sub_1C87867A0(v8, v9, v10, &unk_1C8BE7670);
  v11 = type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor(0);
  OUTLINED_FUNCTION_1_0();
  if (v12)
  {
    OUTLINED_FUNCTION_40_7(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_15_2(v11[6]);
    OUTLINED_FUNCTION_15_2(v11[7]);
    OUTLINED_FUNCTION_15_2(v11[8]);
    OUTLINED_FUNCTION_18_2(v11[9]);
    result = OUTLINED_FUNCTION_1_0();
    if (!v12)
    {
      return sub_1C8778ED8(v2, &qword_1EC2B64A8, &unk_1C8BE7670);
    }
  }

  else
  {
    OUTLINED_FUNCTION_121();
    return sub_1C8A0E760();
  }

  return result;
}

uint64_t sub_1C8A0BFF4(uint64_t a1, uint64_t *a2)
{
  v4 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64A8, &unk_1C8BE7670);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19 - v7;
  v9 = *(type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingResponse(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v2 + v9);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_20_9();
    v12 = OUTLINED_FUNCTION_2();
    v11 = sub_1C8A0E174(v12);
    *(v4 + v9) = v11;
  }

  sub_1C8A0E760();
  type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor(0);
  OUTLINED_FUNCTION_19_1();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  v17 = *a2;
  OUTLINED_FUNCTION_23();
  swift_beginAccess();
  sub_1C878656C(v8, v11 + v17, &qword_1EC2B64A8, &unk_1C8BE7670);
  return swift_endAccess();
}

void Siri_Nlu_Internal_Embedding_EmbeddingResponse.sentenceEmbeddingTensor.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_14_2(v3);
  v4 = OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_13_2(v6);
  type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor(v7);
  OUTLINED_FUNCTION_21();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_38_0(v9);
  *(v1 + 48) = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_13_18();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_0_0();
  if (v11)
  {
    OUTLINED_FUNCTION_34_8(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_1_17();
    if (!v11)
    {
      sub_1C8778ED8(v0, &qword_1EC2B64A8, &unk_1C8BE7670);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_22();
    OUTLINED_FUNCTION_63_5();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_Internal_Embedding_EmbeddingResponse.embeddingTensorOutputs.modify()
{
  v2 = __swift_coroFrameAllocStub(0x48uLL);
  *(OUTLINED_FUNCTION_34_0(v2) + 56) = v0;
  OUTLINED_FUNCTION_13_18();
  *(v1 + 64) = v3;
  v4 = *(v0 + v3);
  v5 = OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__embeddingTensorOutputs;
  OUTLINED_FUNCTION_277(v4 + OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__embeddingTensorOutputs, v1);
  *(v1 + 48) = *(v4 + v5);

  return OUTLINED_FUNCTION_12();
}

uint64_t Siri_Nlu_Internal_Embedding_EmbeddingResponse.subwordTokenChain.getter()
{
  v2 = OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_80(v2);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_74();
  v5 = *(v0 + *(type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingResponse(v4) + 20));
  v6 = OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__subwordTokenChain;
  OUTLINED_FUNCTION_277(v5 + OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__subwordTokenChain, v10);
  OUTLINED_FUNCTION_38_1(v5 + v6);
  v7 = type metadata accessor for Siri_Nlu_Internal_SubwordTokenChain(0);
  OUTLINED_FUNCTION_1_0();
  if (v8)
  {
    OUTLINED_FUNCTION_40_7(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_18_2(*(v7 + 24));
    result = OUTLINED_FUNCTION_1_0();
    if (!v8)
    {
      return sub_1C8778ED8(v1, &qword_1EC2B65E0, &qword_1C8BE7DD0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9_20();
    OUTLINED_FUNCTION_121();
    return sub_1C8A0E760();
  }

  return result;
}

uint64_t sub_1C8A0C498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(char *))
{
  v8 = (a5)(0, a2, a3, a4);
  OUTLINED_FUNCTION_80(v8);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v13 - v10;
  sub_1C8A0E7B4();
  return a7(v11);
}

uint64_t Siri_Nlu_Internal_Embedding_EmbeddingResponse.subwordTokenChain.setter(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B65E0, &qword_1C8BE7DD0);
  OUTLINED_FUNCTION_80(v1);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v2);
  if ((OUTLINED_FUNCTION_73_8(0) & 1) == 0)
  {
    OUTLINED_FUNCTION_20_9();
    v3 = OUTLINED_FUNCTION_2();
    v4 = sub_1C8A0E174(v3);
    OUTLINED_FUNCTION_40(v4);
  }

  OUTLINED_FUNCTION_9_20();
  sub_1C8A0E760();
  type metadata accessor for Siri_Nlu_Internal_SubwordTokenChain(0);
  OUTLINED_FUNCTION_19_1();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_23();
  swift_beginAccess();
  v9 = OUTLINED_FUNCTION_200();
  sub_1C878656C(v9, v10, v11, v12);
  return swift_endAccess();
}

void Siri_Nlu_Internal_Embedding_EmbeddingResponse.subwordTokenChain.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_14_2(v3);
  v4 = OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_13_2(v6);
  v8 = type metadata accessor for Siri_Nlu_Internal_SubwordTokenChain(v7);
  OUTLINED_FUNCTION_21();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_38_0(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v1 + 48) = v12;
  OUTLINED_FUNCTION_13_18();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_0_0();
  if (v13)
  {
    OUTLINED_FUNCTION_34_8(MEMORY[0x1E69E7CC0]);
    v14 = &v12[*(v8 + 24)];
    *v14 = 0;
    *(v14 + 1) = 0;
    OUTLINED_FUNCTION_0_0();
    if (!v13)
    {
      sub_1C8778ED8(v0, &qword_1EC2B65E0, &qword_1C8BE7DD0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9_20();
    OUTLINED_FUNCTION_63_5();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

void sub_1C8A0C780()
{
  OUTLINED_FUNCTION_261();
  v2 = v1;
  v3 = *(*v0 + 40);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 32);
  if (v6)
  {
    OUTLINED_FUNCTION_97();
    sub_1C8A0E7B4();
    v2(v3);
    sub_1C8A0E808();
  }

  else
  {
    v1(*(*v0 + 48));
  }

  free(v4);
  free(v3);
  free(v5);
  OUTLINED_FUNCTION_260();

  free(v7);
}

uint64_t Siri_Nlu_Internal_Embedding_EmbeddingResponse.numSubwordToken.modify()
{
  v1 = OUTLINED_FUNCTION_758();
  v2 = __swift_coroFrameAllocStub(v1);
  *(OUTLINED_FUNCTION_34_0(v2) + 80) = v0;
  OUTLINED_FUNCTION_13_18();
  OUTLINED_FUNCTION_68_6(v3);
  OUTLINED_FUNCTION_380();
  OUTLINED_FUNCTION_39();
  return OUTLINED_FUNCTION_31();
}

uint64_t sub_1C8A0C934(uint64_t *a1)
{
  OUTLINED_FUNCTION_13_18();
  OUTLINED_FUNCTION_277(*(v1 + v3) + *a1, v5);
}

uint64_t sub_1C8A0C9B4(uint64_t a1, uint64_t *a2)
{
  v6 = OUTLINED_FUNCTION_241();
  v7 = OUTLINED_FUNCTION_73_8(v6);
  v8 = *(v3 + v4);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_20_9();
    v9 = OUTLINED_FUNCTION_2();
    v10 = sub_1C8A0E174(v9);
    OUTLINED_FUNCTION_40(v10);
  }

  v11 = *a2;
  OUTLINED_FUNCTION_37_0(v8 + v11, v13);
  *(v8 + v11) = v2;
}

uint64_t Siri_Nlu_Internal_Embedding_EmbeddingResponse.subwordEmbeddingTensorOutputs.modify()
{
  v2 = __swift_coroFrameAllocStub(0x48uLL);
  *(OUTLINED_FUNCTION_34_0(v2) + 56) = v0;
  OUTLINED_FUNCTION_13_18();
  *(v1 + 64) = v3;
  v4 = *(v0 + v3);
  v5 = OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__subwordEmbeddingTensorOutputs;
  OUTLINED_FUNCTION_277(v4 + OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__subwordEmbeddingTensorOutputs, v1);
  *(v1 + 48) = *(v4 + v5);

  return OUTLINED_FUNCTION_12();
}

void sub_1C8A0CAD0(uint64_t *a1, char a2, uint64_t *a3, void (*a4)(uint64_t))
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
      OUTLINED_FUNCTION_20_9();
      v15 = OUTLINED_FUNCTION_2();
      v12 = sub_1C8A0E174(v15);
      *(v14 + v13) = v12;
    }

    v16 = *a3;
    OUTLINED_FUNCTION_37_0(v12 + v16, v4 + 24);
    *(v12 + v16) = v5;
  }

  free(v4);
}

uint64_t sub_1C8A0CBD0()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BE0A0);
  __swift_project_value_buffer(v0, qword_1EC2BE0A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BEB0F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "embedding_version";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "embedding_tensor";
  *(v10 + 8) = 16;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "sentence_embedding_tensor";
  *(v12 + 1) = 25;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "embedding_dim";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "is_stable_embeddings_version";
  *(v16 + 1) = 28;
  v16[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput.decodeMessage<A>(decoder:)()
{
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
        sub_1C8A0CF34(v3, v4, v5, v6);
        break;
      case 2:
        v17 = OUTLINED_FUNCTION_8();
        sub_1C8A0CF98(v17, v18, v19, v20);
        break;
      case 3:
        v9 = OUTLINED_FUNCTION_8();
        sub_1C8A0D04C(v9, v10, v11, v12);
        break;
      case 4:
        v13 = OUTLINED_FUNCTION_8();
        sub_1C8A0D100(v13, v14, v15, v16);
        break;
      case 5:
        v7 = OUTLINED_FUNCTION_8();
        sub_1C8A0D164(v7, v8);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C8A0CF98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput(0);
  type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor(0);
  sub_1C8A0E85C(&qword_1EC2B47B8, type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor, &protocol conformance descriptor for Siri_Nlu_Internal_NLv4EmbeddingTensor);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C8A0D04C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput(0);
  type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor(0);
  sub_1C8A0E85C(&qword_1EC2B47B8, type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor, &protocol conformance descriptor for Siri_Nlu_Internal_NLv4EmbeddingTensor);
  return sub_1C8BD4C7C();
}

uint64_t Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64A8, &unk_1C8BE7670);
  v7 = OUTLINED_FUNCTION_80(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_34();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v24 - v12;
  v14 = type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor(0);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_34();
  v24[1] = v16 - v17;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v18);
  v25 = type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput(0);
  if (!*(v3 + v25[5] + 8) || (result = sub_1C8BD4DDC(), !v4))
  {
    sub_1C87867A0(v3 + v25[6], v13, &qword_1EC2B64A8, &unk_1C8BE7670);
    if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
    {
      sub_1C8778ED8(v13, &qword_1EC2B64A8, &unk_1C8BE7670);
    }

    else
    {
      v24[0] = v3;
      OUTLINED_FUNCTION_12_17();
      sub_1C8A0E760();
      OUTLINED_FUNCTION_10_15();
      sub_1C8A0E85C(v20, v21, &protocol conformance descriptor for Siri_Nlu_Internal_NLv4EmbeddingTensor);
      sub_1C8BD4E2C();
      OUTLINED_FUNCTION_97();
      result = sub_1C8A0E808();
      if (v4)
      {
        return result;
      }

      v5 = v24[0];
    }

    sub_1C87867A0(v5 + v25[7], v10, &qword_1EC2B64A8, &unk_1C8BE7670);
    if (__swift_getEnumTagSinglePayload(v10, 1, v14) == 1)
    {
      sub_1C8778ED8(v10, &qword_1EC2B64A8, &unk_1C8BE7670);
    }

    else
    {
      OUTLINED_FUNCTION_12_17();
      sub_1C8A0E760();
      OUTLINED_FUNCTION_10_15();
      sub_1C8A0E85C(v22, v23, &protocol conformance descriptor for Siri_Nlu_Internal_NLv4EmbeddingTensor);
      sub_1C8BD4E2C();
      result = sub_1C8A0E808();
      if (v4)
      {
        return result;
      }
    }

    if ((*(v5 + v25[8] + 8) & 1) != 0 || (result = sub_1C8BD4DFC(), !v4))
    {
      if (*(v5 + v25[9]) == 2)
      {
        return sub_1C8BD49DC();
      }

      result = sub_1C8BD4D3C();
      if (!v4)
      {
        return sub_1C8BD49DC();
      }
    }
  }

  return result;
}

void static Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_84();
  v3 = type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor(v2);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_33();
  v7 = (v6 - v5);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64A8, &unk_1C8BE7670);
  v9 = OUTLINED_FUNCTION_80(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_34();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v55 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64E0, &unk_1C8BE7880);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_34();
  v20 = v18 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v55 - v22;
  v24 = type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput(0);
  v25 = v24[5];
  v26 = (v1 + v25);
  v27 = *(v1 + v25 + 8);
  v28 = (v0 + v25);
  v29 = v28[1];
  if (v27)
  {
    if (!v29)
    {
      goto LABEL_30;
    }

    v30 = *v26 == *v28 && v27 == v29;
    if (!v30 && (sub_1C8BD529C() & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  else if (v29)
  {
    goto LABEL_30;
  }

  v55 = v12;
  v56 = v7;
  v58 = v0;
  v31 = v24[6];
  v32 = *(v16 + 48);
  v57 = v1;
  OUTLINED_FUNCTION_80_4(v1 + v31, v23);
  OUTLINED_FUNCTION_80_4(v58 + v31, &v23[v32]);
  OUTLINED_FUNCTION_76(v23, 1, v3);
  if (v30)
  {
    OUTLINED_FUNCTION_76(&v23[v32], 1, v3);
    if (v30)
    {
      sub_1C8778ED8(v23, &qword_1EC2B64A8, &unk_1C8BE7670);
      goto LABEL_20;
    }

LABEL_18:
    v34 = v23;
LABEL_29:
    sub_1C8778ED8(v34, &qword_1EC2B64E0, &unk_1C8BE7880);
    goto LABEL_30;
  }

  sub_1C87867A0(v23, v15, &qword_1EC2B64A8, &unk_1C8BE7670);
  OUTLINED_FUNCTION_76(&v23[v32], 1, v3);
  if (v33)
  {
    OUTLINED_FUNCTION_4_22();
    sub_1C8A0E808();
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_29_7();
  v35 = v56;
  sub_1C8A0E760();
  v36 = static Siri_Nlu_Internal_NLv4EmbeddingTensor.== infix(_:_:)(v15, v35);
  sub_1C8A0E808();
  sub_1C8A0E808();
  sub_1C8778ED8(v23, &qword_1EC2B64A8, &unk_1C8BE7670);
  if ((v36 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_20:
  v37 = v24[7];
  v38 = *(v16 + 48);
  OUTLINED_FUNCTION_80_4(v57 + v37, v20);
  v39 = v58 + v37;
  v40 = v58;
  OUTLINED_FUNCTION_80_4(v39, v20 + v38);
  OUTLINED_FUNCTION_76(v20, 1, v3);
  if (v30)
  {
    OUTLINED_FUNCTION_76(v20 + v38, 1, v3);
    if (v30)
    {
      sub_1C8778ED8(v20, &qword_1EC2B64A8, &unk_1C8BE7670);
      goto LABEL_32;
    }

    goto LABEL_28;
  }

  v41 = v55;
  sub_1C87867A0(v20, v55, &qword_1EC2B64A8, &unk_1C8BE7670);
  OUTLINED_FUNCTION_76(v20 + v38, 1, v3);
  if (v42)
  {
    OUTLINED_FUNCTION_4_22();
    sub_1C8A0E808();
LABEL_28:
    v34 = v20;
    goto LABEL_29;
  }

  OUTLINED_FUNCTION_29_7();
  v43 = v56;
  sub_1C8A0E760();
  v44 = static Siri_Nlu_Internal_NLv4EmbeddingTensor.== infix(_:_:)(v41, v43);
  sub_1C8A0E808();
  sub_1C8A0E808();
  sub_1C8778ED8(v20, &qword_1EC2B64A8, &unk_1C8BE7670);
  if ((v44 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_32:
  v45 = v24[8];
  v46 = (v57 + v45);
  v47 = *(v57 + v45 + 8);
  v48 = (v40 + v45);
  v49 = *(v40 + v45 + 8);
  if (v47)
  {
    if (!v49)
    {
      goto LABEL_30;
    }

LABEL_38:
    v50 = v24[9];
    v51 = *(v57 + v50);
    v52 = *(v40 + v50);
    if (v51 == 2)
    {
      if (v52 != 2)
      {
        goto LABEL_30;
      }
    }

    else if (v52 == 2 || ((v51 ^ v52) & 1) != 0)
    {
      goto LABEL_30;
    }

    sub_1C8BD49FC();
    OUTLINED_FUNCTION_28_11();
    sub_1C8A0E85C(v53, v54, MEMORY[0x1E69AAC10]);
    OUTLINED_FUNCTION_12();
    sub_1C8BD517C();
    goto LABEL_30;
  }

  if (*v46 != *v48)
  {
    LOBYTE(v49) = 1;
  }

  if ((v49 & 1) == 0)
  {
    goto LABEL_38;
  }

LABEL_30:
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C8A0DA8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8A0E85C(&qword_1EC2BE190, type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput, &protocol conformance descriptor for Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8A0DB0C(uint64_t a1)
{
  v2 = sub_1C8A0E85C(&qword_1EC2B65F0, type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput, &protocol conformance descriptor for Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8A0DB7C(uint64_t a1, uint64_t a2)
{
  sub_1C8A0E85C(&qword_1EC2B65F0, type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput, &protocol conformance descriptor for Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8A0DC18()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2BE0B8);
  __swift_project_value_buffer(v0, qword_1EC2BE0B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE8D50;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "embedding_tensor";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "token_chain";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "num_token";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "num_layer";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "embedding_dim";
  *(v16 + 1) = 13;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "sentence_embedding_tensor";
  *(v18 + 1) = 25;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "embedding_tensor_outputs";
  *(v20 + 1) = 24;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "subword_token_chain";
  *(v22 + 1) = 19;
  v22[16] = 2;
  v9();
  v23 = (v5 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "num_subword_token";
  *(v24 + 1) = 17;
  v24[16] = 2;
  v9();
  v25 = (v5 + 9 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "subword_embedding_tensor_outputs";
  *(v26 + 1) = 32;
  v26[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C8A0DFFC()
{
  OUTLINED_FUNCTION_20_9();
  result = sub_1C8A0E04C();
  qword_1EC2BE0D0 = result;
  return result;
}

uint64_t sub_1C8A0E04C()
{
  v1 = OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__embeddingTensor;
  v2 = type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__tokenChain;
  v4 = type metadata accessor for Siri_Nlu_Internal_TokenChain(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  v5 = v0 + OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__numToken;
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = v0 + OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__numLayer;
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = v0 + OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__embeddingDim;
  *v7 = 0;
  *(v7 + 8) = 1;
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__sentenceEmbeddingTensor, 1, 1, v2);
  v8 = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__embeddingTensorOutputs) = MEMORY[0x1E69E7CC0];
  v9 = OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__subwordTokenChain;
  v10 = type metadata accessor for Siri_Nlu_Internal_SubwordTokenChain(0);
  __swift_storeEnumTagSinglePayload(v0 + v9, 1, 1, v10);
  v11 = v0 + OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__numSubwordToken;
  *v11 = 0;
  *(v11 + 8) = 1;
  *(v0 + OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__subwordEmbeddingTensorOutputs) = v8;
  return v0;
}

uint64_t sub_1C8A0E174(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B65E0, &qword_1C8BE7DD0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v55 = &v48 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6048, &unk_1C8BE6F80);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v49 = &v48 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64A8, &unk_1C8BE7670);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v56 = &v48 - v8;
  v9 = OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__embeddingTensor;
  v10 = type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor(0);
  __swift_storeEnumTagSinglePayload(v1 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__tokenChain;
  v48 = OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__tokenChain;
  v12 = type metadata accessor for Siri_Nlu_Internal_TokenChain(0);
  __swift_storeEnumTagSinglePayload(v1 + v11, 1, 1, v12);
  v13 = v1 + OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__numToken;
  *v13 = 0;
  *(v13 + 8) = 1;
  v14 = v1 + OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__numLayer;
  *v14 = 0;
  *(v14 + 8) = 1;
  v15 = v1 + OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__embeddingDim;
  *v15 = 0;
  *(v15 + 8) = 1;
  v50 = OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__sentenceEmbeddingTensor;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__sentenceEmbeddingTensor, 1, 1, v10);
  v51 = OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__embeddingTensorOutputs;
  v16 = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__embeddingTensorOutputs) = MEMORY[0x1E69E7CC0];
  v17 = OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__subwordTokenChain;
  v52 = OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__subwordTokenChain;
  v18 = type metadata accessor for Siri_Nlu_Internal_SubwordTokenChain(0);
  __swift_storeEnumTagSinglePayload(v1 + v17, 1, 1, v18);
  v19 = v1 + OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__numSubwordToken;
  v53 = v1 + OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__numSubwordToken;
  *v19 = 0;
  *(v19 + 8) = 1;
  v54 = OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__subwordEmbeddingTensorOutputs;
  *(v1 + OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__subwordEmbeddingTensorOutputs) = v16;
  v20 = OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__embeddingTensor;
  swift_beginAccess();
  v21 = v56;
  sub_1C87867A0(a1 + v20, v56, &qword_1EC2B64A8, &unk_1C8BE7670);
  swift_beginAccess();
  sub_1C878656C(v21, v1 + v9, &qword_1EC2B64A8, &unk_1C8BE7670);
  swift_endAccess();
  v22 = OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__tokenChain;
  swift_beginAccess();
  v23 = v49;
  sub_1C87867A0(a1 + v22, v49, &qword_1EC2B6048, &unk_1C8BE6F80);
  v24 = v48;
  swift_beginAccess();
  sub_1C878656C(v23, v1 + v24, &qword_1EC2B6048, &unk_1C8BE6F80);
  swift_endAccess();
  v25 = (a1 + OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__numToken);
  swift_beginAccess();
  v26 = *v25;
  LOBYTE(v25) = *(v25 + 8);
  swift_beginAccess();
  *v13 = v26;
  *(v13 + 8) = v25;
  v27 = (a1 + OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__numLayer);
  swift_beginAccess();
  v28 = *v27;
  LOBYTE(v27) = *(v27 + 8);
  swift_beginAccess();
  *v14 = v28;
  *(v14 + 8) = v27;
  v29 = (a1 + OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__embeddingDim);
  swift_beginAccess();
  v30 = *v29;
  LOBYTE(v29) = *(v29 + 8);
  swift_beginAccess();
  *v15 = v30;
  *(v15 + 8) = v29;
  v31 = OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__sentenceEmbeddingTensor;
  swift_beginAccess();
  v32 = a1 + v31;
  v33 = v56;
  sub_1C87867A0(v32, v56, &qword_1EC2B64A8, &unk_1C8BE7670);
  v34 = v50;
  swift_beginAccess();
  sub_1C878656C(v33, v1 + v34, &qword_1EC2B64A8, &unk_1C8BE7670);
  swift_endAccess();
  v35 = OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__embeddingTensorOutputs;
  swift_beginAccess();
  v36 = *(a1 + v35);
  v37 = v51;
  swift_beginAccess();
  *(v1 + v37) = v36;

  v38 = OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__subwordTokenChain;
  swift_beginAccess();
  v39 = v55;
  sub_1C87867A0(a1 + v38, v55, &qword_1EC2B65E0, &qword_1C8BE7DD0);
  v40 = v52;
  swift_beginAccess();
  sub_1C878656C(v39, v1 + v40, &qword_1EC2B65E0, &qword_1C8BE7DD0);
  swift_endAccess();
  v41 = (a1 + OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__numSubwordToken);
  swift_beginAccess();
  v42 = *v41;
  LOBYTE(v41) = *(v41 + 8);
  v43 = v53;
  swift_beginAccess();
  *v43 = v42;
  *(v43 + 8) = v41;
  v44 = OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__subwordEmbeddingTensorOutputs;
  swift_beginAccess();
  v45 = *(a1 + v44);

  v46 = v54;
  swift_beginAccess();
  *(v1 + v46) = v45;

  return v1;
}

uint64_t sub_1C8A0E760()
{
  v1 = OUTLINED_FUNCTION_84();
  v2(v1);
  OUTLINED_FUNCTION_21();
  v3 = OUTLINED_FUNCTION_218();
  v4(v3);
  return v0;
}

uint64_t sub_1C8A0E7B4()
{
  v1 = OUTLINED_FUNCTION_84();
  v2(v1);
  OUTLINED_FUNCTION_21();
  v3 = OUTLINED_FUNCTION_218();
  v4(v3);
  return v0;
}

uint64_t sub_1C8A0E808()
{
  v1 = OUTLINED_FUNCTION_241();
  v2(v1);
  OUTLINED_FUNCTION_21();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_1C8A0E85C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C8A0E8A4()
{
  sub_1C8778ED8(v0 + OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__embeddingTensor, &qword_1EC2B64A8, &unk_1C8BE7670);
  sub_1C8778ED8(v0 + OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__tokenChain, &qword_1EC2B6048, &unk_1C8BE6F80);
  sub_1C8778ED8(v0 + OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__sentenceEmbeddingTensor, &qword_1EC2B64A8, &unk_1C8BE7670);

  sub_1C8778ED8(v0 + OBJC_IVAR____TtCV12SiriNLUTypes45Siri_Nlu_Internal_Embedding_EmbeddingResponseP33_F3DD80A5899CC0CFD67AD970E2C5FFE113_StorageClass__subwordTokenChain, &qword_1EC2B65E0, &qword_1C8BE7DD0);

  return v0;
}

uint64_t sub_1C8A0E96C()
{
  v0 = sub_1C8A0E8A4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t Siri_Nlu_Internal_Embedding_EmbeddingResponse.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingResponse(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingResponse._StorageClass(0);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_2();
    v10 = sub_1C8A0E174(v11);
    *(v4 + v8) = v10;
  }

  return sub_1C8A0EA60(v10, a1, a2, a3);
}

uint64_t sub_1C8A0EA60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
      case 6:
        sub_1C8A0ED08();
        break;
      case 2:
        sub_1C8A0EC2C(a2, a1, a3, a4);
        break;
      case 3:
      case 4:
      case 5:
      case 9:
        sub_1C8A0EE80();
        break;
      case 7:
      case 10:
        sub_1C8A0EEF4();
        break;
      case 8:
        sub_1C8A0EDA4(a2, a1, a3, a4);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C8A0EC2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_Internal_TokenChain(0);
  sub_1C8A0E85C(&qword_1EC2B4B38, type metadata accessor for Siri_Nlu_Internal_TokenChain, &protocol conformance descriptor for Siri_Nlu_Internal_TokenChain);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C8A0ED08()
{
  OUTLINED_FUNCTION_9_2();
  OUTLINED_FUNCTION_23();
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor(0);
  OUTLINED_FUNCTION_10_15();
  sub_1C8A0E85C(v0, v1, &protocol conformance descriptor for Siri_Nlu_Internal_NLv4EmbeddingTensor);
  OUTLINED_FUNCTION_30_1();
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C8A0EDA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_Internal_SubwordTokenChain(0);
  sub_1C8A0E85C(&qword_1EC2B6478, type metadata accessor for Siri_Nlu_Internal_SubwordTokenChain, &protocol conformance descriptor for Siri_Nlu_Internal_SubwordTokenChain);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C8A0EE80()
{
  OUTLINED_FUNCTION_9_2();
  OUTLINED_FUNCTION_23();
  swift_beginAccess();
  sub_1C8BD4C4C();
  return swift_endAccess();
}