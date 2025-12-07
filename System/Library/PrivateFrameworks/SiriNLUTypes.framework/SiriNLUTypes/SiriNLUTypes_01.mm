void *sub_1C878F30C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = a5(0);
  OUTLINED_FUNCTION_105(v8);
  v10 = *(v9 + 72);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (v10)
  {
    if ((result - v12) != 0x8000000000000000 || v10 != -1)
    {
      v13[2] = a1;
      v13[3] = 2 * ((result - v12) / v10);
      return v13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C878F400()
{
  OUTLINED_FUNCTION_12_0();
  v1(0);
  OUTLINED_FUNCTION_21();
  v2 = OUTLINED_FUNCTION_218();
  v3(v2);
  return v0;
}

void *sub_1C878F458(void *result, int64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(void), void (*a8)(void))
{
  v11 = result;
  if (a3)
  {
    v12 = *(a4 + 24);
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = *(a4 + 16);
  v15 = sub_1C878F30C(v14, v13, a5, a6, a7);
  a8(0);
  OUTLINED_FUNCTION_32();
  if (v11)
  {
    sub_1C8790ED4(a4 + v16, v14, v15 + v16, a7);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v15;
}

uint64_t sub_1C878F564(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_21();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_18_13()
{
  type metadata accessor for Siri_Nlu_External_Cdm_NluResponse._StorageClass(0);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_18_16()
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, v0);
}

unint64_t sub_1C878F6F0(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

uint64_t Siri_Nlu_Internal_MatchingSpan.init()@<X0>(uint64_t a2@<X8>)
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v3 = *(type metadata accessor for Siri_Nlu_Internal_MatchingSpan(0) + 20);
  if (qword_1EC2B4A68 != -1)
  {
    swift_once();
  }

  *(a2 + v3) = qword_1EC2B4A70;
}

uint64_t sub_1C878F828(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BDD48, &qword_1C8C0C1E8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v35 = &v31 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61D0, &qword_1C8C0C1E0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v33 = &v31 - v6;
  *(v1 + 48) = 0;
  *(v1 + 32) = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 52) = 1;
  *(v1 + 56) = 0;
  *(v1 + 60) = 1;
  v7 = OBJC_IVAR____TtCV12SiriNLUTypes30Siri_Nlu_Internal_MatchingSpanP33_8AEF3234A80133152DECA9B682B915F813_StorageClass__usoGraph;
  v32 = OBJC_IVAR____TtCV12SiriNLUTypes30Siri_Nlu_Internal_MatchingSpanP33_8AEF3234A80133152DECA9B682B915F813_StorageClass__usoGraph;
  v8 = type metadata accessor for Siri_Nlu_External_UsoGraph(0);
  __swift_storeEnumTagSinglePayload(v1 + v7, 1, 1, v8);
  v31 = OBJC_IVAR____TtCV12SiriNLUTypes30Siri_Nlu_Internal_MatchingSpanP33_8AEF3234A80133152DECA9B682B915F813_StorageClass__matcherNames;
  *(v1 + OBJC_IVAR____TtCV12SiriNLUTypes30Siri_Nlu_Internal_MatchingSpanP33_8AEF3234A80133152DECA9B682B915F813_StorageClass__matcherNames) = MEMORY[0x1E69E7CC0];
  v9 = OBJC_IVAR____TtCV12SiriNLUTypes30Siri_Nlu_Internal_MatchingSpanP33_8AEF3234A80133152DECA9B682B915F813_StorageClass__internalSpanData;
  v34 = OBJC_IVAR____TtCV12SiriNLUTypes30Siri_Nlu_Internal_MatchingSpanP33_8AEF3234A80133152DECA9B682B915F813_StorageClass__internalSpanData;
  v10 = type metadata accessor for Siri_Nlu_Internal_InternalSpanData(0);
  __swift_storeEnumTagSinglePayload(v1 + v9, 1, 1, v10);
  v11 = (v1 + OBJC_IVAR____TtCV12SiriNLUTypes30Siri_Nlu_Internal_MatchingSpanP33_8AEF3234A80133152DECA9B682B915F813_StorageClass__semanticValue);
  *v11 = 0;
  v11[1] = 0;
  swift_beginAccess();
  v12 = *(a1 + 16);
  v13 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v12;
  *(v1 + 24) = v13;
  swift_beginAccess();
  v15 = *(a1 + 32);
  v14 = *(a1 + 40);
  swift_beginAccess();
  *(v1 + 32) = v15;
  *(v1 + 40) = v14;
  swift_beginAccess();
  LODWORD(v15) = *(a1 + 48);
  v16 = *(a1 + 52);
  swift_beginAccess();
  *(v1 + 48) = v15;
  *(v1 + 52) = v16;
  swift_beginAccess();
  v17 = *(a1 + 56);
  LOBYTE(v15) = *(a1 + 60);
  swift_beginAccess();
  *(v1 + 56) = v17;
  *(v1 + 60) = v15;
  v18 = OBJC_IVAR____TtCV12SiriNLUTypes30Siri_Nlu_Internal_MatchingSpanP33_8AEF3234A80133152DECA9B682B915F813_StorageClass__usoGraph;
  swift_beginAccess();
  v19 = v33;
  sub_1C87867A0(a1 + v18, v33, &qword_1EC2B61D0, &qword_1C8C0C1E0);
  v20 = v32;
  swift_beginAccess();

  sub_1C878656C(v19, v1 + v20, &qword_1EC2B61D0, &qword_1C8C0C1E0);
  swift_endAccess();
  v21 = OBJC_IVAR____TtCV12SiriNLUTypes30Siri_Nlu_Internal_MatchingSpanP33_8AEF3234A80133152DECA9B682B915F813_StorageClass__matcherNames;
  swift_beginAccess();
  v22 = *(a1 + v21);
  v23 = v31;
  swift_beginAccess();
  *(v1 + v23) = v22;

  v24 = OBJC_IVAR____TtCV12SiriNLUTypes30Siri_Nlu_Internal_MatchingSpanP33_8AEF3234A80133152DECA9B682B915F813_StorageClass__internalSpanData;
  swift_beginAccess();
  v25 = v35;
  sub_1C87867A0(a1 + v24, v35, &qword_1EC2BDD48, &qword_1C8C0C1E8);
  v26 = v34;
  swift_beginAccess();
  sub_1C878656C(v25, v1 + v26, &qword_1EC2BDD48, &qword_1C8C0C1E8);
  swift_endAccess();
  v27 = (a1 + OBJC_IVAR____TtCV12SiriNLUTypes30Siri_Nlu_Internal_MatchingSpanP33_8AEF3234A80133152DECA9B682B915F813_StorageClass__semanticValue);
  swift_beginAccess();
  v29 = *v27;
  v28 = v27[1];

  swift_beginAccess();
  *v11 = v29;
  v11[1] = v28;

  return v1;
}

uint64_t sub_1C878FC70(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  OUTLINED_FUNCTION_17();
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_18_0();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v4;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BDD50, &qword_1C8C0C1F0);
    OUTLINED_FUNCTION_18_0();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BDD58, &qword_1C8C0C1F8);
      OUTLINED_FUNCTION_18_0();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[6];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BDD60, &qword_1C8C0C200);
        OUTLINED_FUNCTION_18_0();
        if (*(v18 + 84) == a3)
        {
          v10 = v17;
          v14 = a4[7];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BDD68, &qword_1C8C0C208);
          OUTLINED_FUNCTION_18_0();
          if (*(v20 + 84) == a3)
          {
            v10 = v19;
            v14 = a4[8];
          }

          else
          {
            v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BDD70, &qword_1C8C0C210);
            v14 = a4[9];
          }
        }
      }
    }

    v11 = v4 + v14;
  }

  return __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

void *sub_1C878FE5C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1C8BD49FC();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_65_3(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1 + v2, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_65_5()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_65_8()
{
}

uint64_t sub_1C878FFC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
        sub_1C8793380(a2, a1, a3, a4);
        break;
      case 2:
        sub_1C8793404(a2, a1, a3, a4);
        break;
      case 3:
        sub_1C89FB184(a2, a1, a3, a4);
        break;
      case 4:
        sub_1C89FB208(a2, a1, a3, a4);
        break;
      case 5:
        sub_1C89FB28C(a2, a1, a3, a4);
        break;
      case 6:
        sub_1C879348C(a2, a1, a3, a4);
        break;
      case 7:
        sub_1C89FB368(a2, a1, a3, a4);
        break;
      case 8:
        sub_1C87A1DB8(a2, a1, a3, a4);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C8790158()
{
  OUTLINED_FUNCTION_12_0();
  v1(0);
  OUTLINED_FUNCTION_21();
  v2 = OUTLINED_FUNCTION_218();
  v3(v2);
  return v0;
}

unint64_t sub_1C87901B0(uint64_t a1)
{
  v2 = sub_1C8BD52FC();

  return sub_1C878F6F0(a1, v2);
}

uint64_t OUTLINED_FUNCTION_44_2()
{

  return sub_1C87F97EC();
}

uint64_t OUTLINED_FUNCTION_44_4()
{

  return sub_1C887D3FC();
}

uint64_t OUTLINED_FUNCTION_44_5(uint64_t a1, uint64_t a2, void (*a3)(void))
{

  return sub_1C8884444(v3, v4 + v5, a3);
}

uint64_t OUTLINED_FUNCTION_44_6()
{

  return sub_1C888A4E0(v0, v1 + v2);
}

uint64_t OUTLINED_FUNCTION_44_10@<X0>(uint64_t a1@<X8>)
{
  *(v3 + 40) = a1;

  return sub_1C87867A0(v1 + a1, v2, v4, v5);
}

uint64_t OUTLINED_FUNCTION_44_11(uint64_t a1)
{
  *(v2 - 96) = a1;
  *(v2 - 88) = v1;

  return sub_1C8778810();
}

uint64_t OUTLINED_FUNCTION_22_0()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_22_1()
{

  return sub_1C87867A0(v0 + v4, v2, v1, v3);
}

uint64_t OUTLINED_FUNCTION_22_2(uint64_t a1)
{
  *(v1 + 32) = a1;

  return type metadata accessor for Siri_Nlu_Internal_Spanmatch_SpanMatchRequest(0);
}

uint64_t OUTLINED_FUNCTION_22_8(uint64_t a1)
{

  return sub_1C87AB9AC(a1, v2, v1, v3);
}

void OUTLINED_FUNCTION_22_14(uint64_t a1@<X8>)
{
  v2 = v1 + a1;
  *v2 = 0;
  *(v2 + 4) = 1;
}

uint64_t OUTLINED_FUNCTION_33_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1C8BD4E2C();
}

uint64_t OUTLINED_FUNCTION_46_3()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_38_1(uint64_t a1)
{

  return sub_1C87867A0(a1, v2, v1, v3);
}

uint64_t OUTLINED_FUNCTION_51_5(uint64_t a1)
{
  *(v4 - 112) = a1;

  return sub_1C87A4F90(v3, 255, v2, v1);
}

uint64_t OUTLINED_FUNCTION_47_0()
{
  sub_1C87E4490(v5, v4, v1);
  sub_1C87E4490(v0, v3, v2);
  return v5;
}

uint64_t OUTLINED_FUNCTION_179()
{

  return sub_1C8778810();
}

uint64_t OUTLINED_FUNCTION_47_7(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_47_8@<X0>(uint64_t a1@<X8>)
{

  return sub_1C87867A0(v1 + a1, v3, v2, v4);
}

uint64_t OUTLINED_FUNCTION_47_9()
{
}

uint64_t OUTLINED_FUNCTION_135_1(uint64_t a1)
{

  return sub_1C8BD4E2C();
}

uint64_t OUTLINED_FUNCTION_135_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_1C8BD515C();
}

uint64_t OUTLINED_FUNCTION_81_0()
{

  return sub_1C8BD4AFC();
}

uint64_t OUTLINED_FUNCTION_69()
{

  return sub_1C8BD49DC();
}

uint64_t OUTLINED_FUNCTION_81_1(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);

  return _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
}

uint64_t OUTLINED_FUNCTION_81_4(uint64_t a1)
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_1C87909B4(uint64_t (*a1)(uint64_t))
{
  v3 = OUTLINED_FUNCTION_299_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_74();
  v8 = a1(v7);
  OUTLINED_FUNCTION_13(*(v8 + 36));
  sub_1C8778810();
  sub_1C8BD499C();
  OUTLINED_FUNCTION_1_0();
  if (v9)
  {
    sub_1C8BD486C();
    result = OUTLINED_FUNCTION_1_0();
    if (!v9)
    {
      return sub_1C8778ED8(v1, &qword_1EC2B6948, &unk_1C8BF9F90);
    }
  }

  else
  {
    OUTLINED_FUNCTION_35_1();
    v10 = OUTLINED_FUNCTION_37_4();
    return v11(v10);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_89_0(uint64_t a1)
{

  return sub_1C8BD517C();
}

uint64_t OUTLINED_FUNCTION_89_3()
{

  return sub_1C8A1B55C();
}

uint64_t OUTLINED_FUNCTION_89_4(uint64_t result)
{
  v2 = (v1 + *(result + 20));
  *v2 = 0;
  v2[1] = 0;
  v3 = (v1 + *(result + 24));
  *v3 = 0;
  v3[1] = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_6_2()
{

  return sub_1C87E6710(v0, type metadata accessor for Siri_Nlu_External_UserDialogAct);
}

uint64_t OUTLINED_FUNCTION_6_3(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 16) = v2;

  return type metadata accessor for Siri_Nlu_External_RequestID(0);
}

uint64_t OUTLINED_FUNCTION_6_13()
{
  v4 = v1 + v3[5];
  *v4 = 0;
  *(v4 + 8) = v0;
  v5 = v1 + v3[6];
  *v5 = 0;
  *(v5 + 8) = v0;
  *(v1 + v3[7]) = 6;
  return __swift_getEnumTagSinglePayload(v2, 1, v3);
}

uint64_t OUTLINED_FUNCTION_6_18(uint64_t result)
{
  v2 = v1 + *(result + 20);
  *v2 = 0;
  *(v2 + 4) = 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_39_1()
{

  return sub_1C87F97EC();
}

uint64_t OUTLINED_FUNCTION_39_4()
{

  return sub_1C887D3FC();
}

uint64_t OUTLINED_FUNCTION_39_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1C8BD4E2C();
}

uint64_t OUTLINED_FUNCTION_39_6()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 - 176));
}

void sub_1C8790ED4(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_12_0();
  if (v9 < v8 || (a4(0), OUTLINED_FUNCTION_21(), v5 + *(v10 + 72) * v4 <= a3))
  {
    a4(0);
    v12 = OUTLINED_FUNCTION_57_5();

    MEMORY[0x1EEE6BD00](v12);
  }

  else if (a3 != v5)
  {
    v11 = OUTLINED_FUNCTION_57_5();

    MEMORY[0x1EEE6BCF8](v11);
  }
}

uint64_t __swift_store_extra_inhabitant_index_135Tm(uint64_t a1, uint64_t a2, int a3)
{
  OUTLINED_FUNCTION_17();
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_18_0();
  if (*(v4 + 84) == a3)
  {
    OUTLINED_FUNCTION_117();
  }

  else
  {
    v5 = OUTLINED_FUNCTION_97();
    __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
    OUTLINED_FUNCTION_248_0();
  }

  OUTLINED_FUNCTION_135();

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

void sub_1C8791094()
{
  OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_18_0();
  if (*(v2 + 84) == v1)
  {
    OUTLINED_FUNCTION_117();
    OUTLINED_FUNCTION_135();

    __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  }

  else
  {
    OUTLINED_FUNCTION_164_1(*(v0 + 20));
  }
}

uint64_t OUTLINED_FUNCTION_431()
{
  sub_1C87A8FA8(v1, v0);
  sub_1C87A8FA8(v3, v2);
  return v1;
}

uint64_t OUTLINED_FUNCTION_37_1(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_1C878656C(v4, v5 + v6, a3, a4);
}

uint64_t OUTLINED_FUNCTION_116_2(uint64_t a1)
{
  v3 = *(a1 + 20);
  *(v2 + 40) = v3;
  return v1 + v3;
}

uint64_t Siri_Nlu_Internal_TurnInputRule.utteranceRule.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_220();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_170();
  type metadata accessor for Siri_Nlu_Internal_TurnInputRule(v7);
  OUTLINED_FUNCTION_232();
  sub_1C87867A0(v8, v9, v10, &qword_1C8BE6CD8);
  v11 = type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule(0);
  OUTLINED_FUNCTION_65(v1);
  if (v12)
  {
    *a1 = MEMORY[0x1E69E7CC0];
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v13 = (a1 + *(v11 + 24));
    *v13 = 0;
    v13[1] = 0;
    *(a1 + *(v11 + 28)) = 3;
    type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule.CompareOptions(0);
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
    result = OUTLINED_FUNCTION_65(v1);
    if (!v12)
    {
      return sub_1C8778ED8(v1, &qword_1EC2B6020, &qword_1C8BE6CD8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_25_13();
    return OUTLINED_FUNCTION_227_2();
  }

  return result;
}

uint64_t Siri_Nlu_Internal_TurnInputRule.UtteranceRule.CompareOptions.caseInsensitive.getter()
{
  OUTLINED_FUNCTION_128_4();
  OUTLINED_FUNCTION_114_2();
  return v0 & 1;
}

uint64_t sub_1C8791864()
{
  v1 = OUTLINED_FUNCTION_84();
  v2(v1);
  OUTLINED_FUNCTION_21();
  v3 = OUTLINED_FUNCTION_218();
  v4(v3);
  return v0;
}

uint64_t OUTLINED_FUNCTION_123_0(uint64_t a1)
{
  *(v1 + 40) = *(a1 + 20);

  return sub_1C8778810();
}

uint64_t OUTLINED_FUNCTION_9_15()
{

  return type metadata accessor for Siri_Nlu_Internal_ContextualSpanMatcher_ContextualSpanMatcherRequest(0);
}

uint64_t OUTLINED_FUNCTION_9_18()
{

  return type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor(0);
}

uint64_t OUTLINED_FUNCTION_9_19()
{

  return type metadata accessor for Siri_Nlu_External_SsuInference_SsuInferenceRequest(0);
}

uint64_t OUTLINED_FUNCTION_164_2()
{

  return sub_1C8778810();
}

uint64_t OUTLINED_FUNCTION_68_0@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

uint64_t type metadata accessor for Siri_Nlu_Internal_TokenChain(uint64_t a1)
{
  result = qword_1EC2B4B20;
  if (!qword_1EC2B4B20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Siri_Nlu_Internal_Overrides_TurnInputAndPreprocessing.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1C8BD4AFC();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v6 = OUTLINED_FUNCTION_8();
        sub_1C8791E24(v6, v7, v8, v9);
        break;
      case 2:
        v18 = OUTLINED_FUNCTION_8();
        sub_1C8791E88(v18, v19, v20, v21);
        break;
      case 3:
        v10 = OUTLINED_FUNCTION_8();
        sub_1C8A281E4(v10, v11, v12, v13);
        break;
      case 4:
        v14 = OUTLINED_FUNCTION_8();
        sub_1C878BF74(v14, v15, v16, v17);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C8791E88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_Internal_Overrides_TurnInputAndPreprocessing(0);
  type metadata accessor for Siri_Nlu_Internal_TokenChain(0);
  sub_1C8776AE8(&qword_1EC2B4B38, type metadata accessor for Siri_Nlu_Internal_TokenChain, &protocol conformance descriptor for Siri_Nlu_Internal_TokenChain);
  return sub_1C8BD4C7C();
}

uint64_t Siri_Nlu_Internal_TokenChain.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  v2 = type metadata accessor for Siri_Nlu_Internal_TokenChain(0);
  result = _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v4 = (a1 + *(v2 + 24));
  *v4 = 0;
  v4[1] = 0;
  v5 = (a1 + *(v2 + 28));
  *v5 = 0;
  v5[1] = 0;
  return result;
}

uint64_t sub_1C8791FFC()
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

uint64_t Siri_Nlu_Internal_TurnInputRule.UtteranceRule.compareOptions.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_220();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_74();
  v8 = type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule(v7);
  v9 = OUTLINED_FUNCTION_13(*(v8 + 32));
  OUTLINED_FUNCTION_167_3(v9, v10);
  v11 = type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule.CompareOptions(0);
  OUTLINED_FUNCTION_65(v1);
  if (v12)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_206_2(v11[5]);
    *(a1 + v11[6]) = v13;
    *(a1 + v11[7]) = v13;
    result = OUTLINED_FUNCTION_65(v1);
    if (!v12)
    {
      return sub_1C8778ED8(v1, &qword_1EC2BEBA8, &qword_1C8C10AD8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_33_11();
    OUTLINED_FUNCTION_121();
    return sub_1C8791864();
  }

  return result;
}

uint64_t Siri_Nlu_Internal_Overrides_TurnInputAndPreprocessing.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  v1 = type metadata accessor for Siri_Nlu_Internal_Overrides_TurnInputAndPreprocessing(0);
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  OUTLINED_FUNCTION_18_2(*(v1 + 24));
  type metadata accessor for Siri_Nlu_Internal_TokenChain(0);
  OUTLINED_FUNCTION_5();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  type metadata accessor for Siri_Nlu_External_TurnInput(0);
  OUTLINED_FUNCTION_5();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

void *sub_1C8792204(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1C8BD49FC();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C8792330(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1C8BD49FC();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t Siri_Nlu_Internal_TokenChain.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
        sub_1C879B104(v14, v15, v16, v17);
        break;
      case 2:
        v10 = OUTLINED_FUNCTION_8();
        sub_1C8792284(v10, v11, v12, v13);
        break;
      case 1:
        v6 = OUTLINED_FUNCTION_8();
        sub_1C8791F98(v6, v7, v8, v9);
        break;
    }
  }

  return result;
}

uint64_t sub_1C87924BC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6EF0, &unk_1C8BEBC70);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v49 = v41 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6010, &unk_1C8BF5040);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v46 = v41 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5FF0, &qword_1C8BE6CA8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__systemDialogActGroup;
  v9 = type metadata accessor for Siri_Nlu_External_SystemDialogActGroup(0);
  __swift_storeEnumTagSinglePayload(v1 + v8, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__salientEntities;
  v11 = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__salientEntities) = MEMORY[0x1E69E7CC0];
  v12 = OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__activeTasks;
  *(v1 + OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__activeTasks) = v11;
  v42 = OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__executedTasks;
  *(v1 + OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__executedTasks) = v11;
  v13 = OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__asrOutputs;
  *(v1 + OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__asrOutputs) = v11;
  v14 = OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__turnContext;
  v43 = v13;
  v44 = OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__turnContext;
  v15 = type metadata accessor for Siri_Nlu_External_TurnContext(0);
  __swift_storeEnumTagSinglePayload(v1 + v14, 1, 1, v15);
  v16 = (v1 + OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__locale);
  *v16 = 0;
  v16[1] = 0;
  v45 = OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__tapToEdit;
  *(v1 + OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__tapToEdit) = 2;
  v17 = v1 + OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__startTimestamp;
  v47 = v1 + OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__startTimestamp;
  *v17 = 0;
  *(v17 + 8) = 1;
  v18 = OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__correctionOutcomeOverride;
  v41[1] = OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__correctionOutcomeOverride;
  v19 = type metadata accessor for Siri_Nlu_External_CorrectionOutcome(0);
  __swift_storeEnumTagSinglePayload(v1 + v18, 1, 1, v19);
  v48 = OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__connectedToCarPlayUltra;
  *(v1 + OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__connectedToCarPlayUltra) = 2;
  swift_beginAccess();
  sub_1C8778810();
  swift_beginAccess();
  sub_1C8786514();
  swift_endAccess();
  v20 = OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__salientEntities;
  swift_beginAccess();
  v21 = *(a1 + v20);
  swift_beginAccess();
  *(v1 + v10) = v21;

  v22 = OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__activeTasks;
  swift_beginAccess();
  v23 = *(a1 + v22);
  swift_beginAccess();
  *(v1 + v12) = v23;

  v24 = OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__executedTasks;
  swift_beginAccess();
  v25 = *(a1 + v24);
  v26 = v42;
  swift_beginAccess();
  *(v1 + v26) = v25;

  v27 = OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__asrOutputs;
  swift_beginAccess();
  v28 = *(a1 + v27);
  v29 = v43;
  swift_beginAccess();
  *(v1 + v29) = v28;

  swift_beginAccess();
  sub_1C8778810();
  swift_beginAccess();
  sub_1C8786514();
  swift_endAccess();
  v30 = (a1 + OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__locale);
  swift_beginAccess();
  v32 = *v30;
  v31 = v30[1];
  swift_beginAccess();
  *v16 = v32;
  v16[1] = v31;

  v33 = OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__tapToEdit;
  swift_beginAccess();
  LOBYTE(v33) = *(a1 + v33);
  v34 = v45;
  swift_beginAccess();
  *(v1 + v34) = v33;
  v35 = (a1 + OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__startTimestamp);
  swift_beginAccess();
  v36 = *v35;
  LOBYTE(v35) = *(v35 + 8);
  v37 = v47;
  swift_beginAccess();
  *v37 = v36;
  *(v37 + 8) = v35;
  swift_beginAccess();
  sub_1C8778810();
  swift_beginAccess();
  sub_1C8786514();
  swift_endAccess();
  v38 = OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__connectedToCarPlayUltra;
  swift_beginAccess();
  LOBYTE(v38) = *(a1 + v38);

  v39 = v48;
  swift_beginAccess();
  *(v1 + v39) = v38;
  return v1;
}

void sub_1C8792ADC()
{
  OUTLINED_FUNCTION_64();
  OUTLINED_FUNCTION_18_0();
  if (*(v4 + 84) == v3)
  {
    v5 = OUTLINED_FUNCTION_147_2();

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 20)) = v0 + 2;
  }
}

uint64_t sub_1C8792B78(uint64_t a1, int a2, uint64_t a3)
{
  OUTLINED_FUNCTION_241();
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_18_0();
  if (*(v6 + 84) == a2)
  {
    v7 = OUTLINED_FUNCTION_226();

    return __swift_getEnumTagSinglePayload(v7, v8, v9);
  }

  else
  {
    v11 = *(v3 + *(a3 + 20));
    if (v11 <= 2)
    {
      v12 = 2;
    }

    else
    {
      v12 = *(v3 + *(a3 + 20));
    }

    v13 = v12 - 2;
    if (v11 >= 2)
    {
      return v13;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1C8792C1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
        sub_1C88AC63C(a2, a1, a3, a4);
        break;
      case 2:
        sub_1C88AC718(a2, a1, a3, a4);
        break;
      case 3:
        sub_1C88AC7F4(a2, a1, a3, a4);
        break;
      case 4:
        sub_1C88AC8D0(a2, a1, a3, a4);
        break;
      case 5:
        sub_1C8792E48(a2, a1, a3, a4);
        break;
      case 6:
        sub_1C88AC9AC(a2, a1, a3, a4);
        break;
      case 7:
        sub_1C8793B58(a2, a1, a3, a4);
        break;
      case 8:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__tapToEdit;
        goto LABEL_14;
      case 9:
        sub_1C88ACA88(a2, a1, a3, a4);
        break;
      case 10:
        sub_1C88ACB14(a2, a1, a3, a4);
        break;
      case 11:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__connectedToCarPlayUltra;
LABEL_14:
        sub_1C88ACBF0(v11, v12, v13, v14, v15);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C8792E48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_AsrHypothesis(0);
  sub_1C8776788(&qword_1EDACC330, type metadata accessor for Siri_Nlu_External_AsrHypothesis, &protocol conformance descriptor for Siri_Nlu_External_AsrHypothesis);
  sub_1C8BD4C6C();
  return swift_endAccess();
}

void Siri_Nlu_External_AsrHypothesis.init()(void *a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = v2;
  v3 = type metadata accessor for Siri_Nlu_External_AsrHypothesis(0);
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  type metadata accessor for Siri_Nlu_External_UUID(0);
  OUTLINED_FUNCTION_5();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  OUTLINED_FUNCTION_18_2(*(v3 + 32));
  OUTLINED_FUNCTION_38(*(v3 + 36));
  *(v8 + 8) = 1;
}

uint64_t OUTLINED_FUNCTION_38_3()
{

  return sub_1C87F97EC();
}

uint64_t OUTLINED_FUNCTION_38_6()
{

  return sub_1C887D3FC();
}

uint64_t OUTLINED_FUNCTION_38_9()
{

  return sub_1C88DD078();
}

uint64_t OUTLINED_FUNCTION_447(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1 + v2, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_38_11(uint64_t a1)
{

  return sub_1C8BD4E2C();
}

uint64_t OUTLINED_FUNCTION_38_12()
{
  v3 = *v0;
  v4 = v0[1];
  *(v1 - 304) = *v0;
  *(v1 - 296) = v4;

  return sub_1C87A8FBC(v3, v4);
}

double sirinluexternal::SystemDialogActGroup::SystemDialogActGroup(sirinluexternal::SystemDialogActGroup *this)
{
  *this = &unk_1F4878290;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

{
  *this = &unk_1F4878290;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

void Siri_Nlu_External_AsrHypothesis.decodeMessage<A>(decoder:)()
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
        sub_1C87932CC(v3, v4, v5, v6);
        break;
      case 2:
        OUTLINED_FUNCTION_27_5();
        sub_1C878C33C();
        break;
      case 3:
        v7 = OUTLINED_FUNCTION_8();
        sub_1C8797474(v7, v8, v9, v10);
        break;
      case 4:
        OUTLINED_FUNCTION_8();
        sub_1C879DC10();
        break;
      case 5:
        OUTLINED_FUNCTION_8();
        sub_1C87A33F8();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C87932CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_External_AsrHypothesis(0);
  type metadata accessor for Siri_Nlu_External_UUID(0);
  sub_1C8776788(&qword_1EDACCE50, type metadata accessor for Siri_Nlu_External_UUID, &protocol conformance descriptor for Siri_Nlu_External_UUID);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C8793380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1C8BD4C1C();
  return swift_endAccess();
}

uint64_t sub_1C8793404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1C8BD4C1C();
  return swift_endAccess();
}

uint64_t sub_1C879348C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1C8793528();
  sub_1C8BD4B1C();
  return swift_endAccess();
}

unint64_t sub_1C8793528()
{
  result = qword_1EC2B4AA8;
  if (!qword_1EC2B4AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B4AA8);
  }

  return result;
}

void Siri_Nlu_External_UUID.init()(uint64_t a2@<X8>)
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v3 = type metadata accessor for Siri_Nlu_External_UUID(0);
  OUTLINED_FUNCTION_2_1(a2 + *(v3 + 20));
  v5 = a2 + *(v4 + 24);
  *v5 = 0;
  *(v5 + 8) = v6;
  *(a2 + *(v4 + 28)) = 6;
}

uint64_t OUTLINED_FUNCTION_2_17(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_storeEnumTagSinglePayload(a1, 1, 1, a4);
  __swift_storeEnumTagSinglePayload(v5 + *(v7 + 24), 1, 1, *(v4 + 408));
  return __swift_getEnumTagSinglePayload(v6, 1, v7);
}

uint64_t OUTLINED_FUNCTION_257_0()
{

  return sub_1C8BD49FC();
}

uint64_t OUTLINED_FUNCTION_80_2()
{

  return type metadata accessor for Siri_Nlu_External_UUID(0);
}

uint64_t OUTLINED_FUNCTION_85_3(uint64_t a1)
{

  return sub_1C8778ED8(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_36_0(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_262()
{

  return sub_1C8778810();
}

void OUTLINED_FUNCTION_190_0(uint64_t a1@<X8>)
{
  v3 = v1 + a1;
  *v3 = v2;
  *(v3 + 8) = 0;
}

uint64_t OUTLINED_FUNCTION_36_5()
{

  return sub_1C88DD078();
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

uint64_t sub_1C8793B58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1C8BD4C1C();
  return swift_endAccess();
}

void *sub_1C8793BF8(void *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_1C8BD49FC();
    OUTLINED_FUNCTION_18_0();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = a4[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6048, &unk_1C8BE6F80);
      OUTLINED_FUNCTION_18_0();
      if (*(v13 + 84) == a3)
      {
        v10 = v12;
        v11 = a4[7];
      }

      else
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6038, &unk_1C8BE8850);
        v11 = a4[8];
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_1C8793D28(unint64_t *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_68_0(*a1);
  }

  sub_1C8BD49FC();
  OUTLINED_FUNCTION_18_0();
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a3[5];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6048, &unk_1C8BE6F80);
    OUTLINED_FUNCTION_18_0();
    if (*(v12 + 84) == a2)
    {
      v9 = v11;
      v10 = a3[7];
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6038, &unk_1C8BE8850);
      v10 = a3[8];
    }
  }

  return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
}

void sirinluinternalitfm::ITFMParserResponse::~ITFMParserResponse(sirinluinternalitfm::ITFMParserResponse *this)
{
  *this = &unk_1F4878DC8;
  v2 = *(this + 4);
  *(this + 4) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(this + 1))
  {
    std::vector<std::unique_ptr<siricommon::StringValue>>::clear[abi:ne200100](this + 1);
    operator delete(*(this + 1));
  }

  PB::Base::~Base(this);
}

{
  sirinluinternalitfm::ITFMParserResponse::~ITFMParserResponse(this);

  JUMPOUT(0x1CCA7EC50);
}

sirinluinternalitfm::ITFMParserResponse *sirinluinternalitfm::ITFMParserResponse::ITFMParserResponse(sirinluinternalitfm::ITFMParserResponse *this, const sirinluinternalitfm::ITFMParserResponse *a2)
{
  *this = &unk_1F4878DC8;
  *(this + 8) = 0u;
  *(this + 12) = 0;
  *(this + 24) = 0u;
  if ((*(a2 + 48) & 2) != 0)
  {
    v3 = *(a2 + 44);
    *(this + 48) = 2;
    *(this + 44) = v3;
    v2 = 3;
    if ((*(a2 + 48) & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v2 = 1;
  if (*(a2 + 48))
  {
LABEL_5:
    v4 = *(a2 + 10);
    *(this + 48) = v2;
    *(this + 10) = v4;
  }

LABEL_6:
  if (*(a2 + 4))
  {
    operator new();
  }

  if (*(a2 + 1) != *(a2 + 2))
  {
    operator new();
  }

  return this;
}

void sirinluinternal::SubwordToken::~SubwordToken(sirinluinternal::SubwordToken *this)
{
  v2 = *(this + 1);
  *this = &unk_1F4877ED0;
  *(this + 1) = 0;
  if (v2)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v2);
  }

  PB::Base::~Base(this);
}

{
  sirinluinternal::SubwordToken::~SubwordToken(this);

  JUMPOUT(0x1CCA7EC50);
}

sirinluinternal::SubwordTokenChain *sirinluinternal::SubwordTokenChain::SubwordTokenChain(sirinluinternal::SubwordTokenChain *this, const sirinluinternal::SubwordTokenChain *a2)
{
  *this = &unk_1F4875B60;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  if (*(a2 + 1))
  {
    operator new();
  }

  if (*(a2 + 2) != *(a2 + 3))
  {
    operator new();
  }

  return this;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x1E69E5420], MEMORY[0x1E69E52A8]);
}

uint64_t sirinluexternal::UUID::readFrom(sirinluexternal::UUID *this, PB::Reader *a2)
{
  v3 = *(a2 + 1);
  v2 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v3 < v2 && (*(a2 + 24) & 1) == 0)
  {
    while (1)
    {
      v7 = *a2;
      if (v3 > 0xFFFFFFFFFFFFFFF5 || v3 + 10 > v2)
      {
        break;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = (v7 + v3);
      v12 = v3 + 1;
      while (1)
      {
        *(a2 + 1) = v12;
        v13 = *v11++;
        v10 |= (v13 & 0x7F) << v8;
        if ((v13 & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        ++v12;
        v14 = v9++ > 8;
        if (v14)
        {
          goto LABEL_17;
        }
      }

LABEL_22:
      if ((v10 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_87;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) == 3)
      {
        *(this + 28) |= 4u;
        v39 = *(a2 + 1);
        v2 = *(a2 + 2);
        v40 = *a2;
        if (v39 > 0xFFFFFFFFFFFFFFF5 || v39 + 10 > v2)
        {
          v51 = 0;
          v52 = 0;
          v43 = 0;
          if (v2 <= v39)
          {
            v3 = *(a2 + 1);
          }

          else
          {
            v3 = *(a2 + 2);
          }

          while (1)
          {
            if (v3 == v39)
            {
              LODWORD(v43) = 0;
              *(a2 + 24) = 1;
              goto LABEL_81;
            }

            v53 = v39 + 1;
            v54 = *(v40 + v39);
            *(a2 + 1) = v53;
            v43 |= (v54 & 0x7F) << v51;
            if ((v54 & 0x80) == 0)
            {
              break;
            }

            v51 += 7;
            v39 = v53;
            v14 = v52++ > 8;
            if (v14)
            {
              LODWORD(v43) = 0;
              goto LABEL_80;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v43) = 0;
          }

LABEL_80:
          v3 = v53;
        }

        else
        {
          v41 = 0;
          v42 = 0;
          v43 = 0;
          v44 = (v40 + v39);
          v45 = v39 + 1;
          while (1)
          {
            v3 = v45;
            *(a2 + 1) = v45;
            v46 = *v44++;
            v43 |= (v46 & 0x7F) << v41;
            if ((v46 & 0x80) == 0)
            {
              break;
            }

            v41 += 7;
            ++v45;
            v14 = v42++ > 8;
            if (v14)
            {
              LODWORD(v43) = 0;
              break;
            }
          }
        }

LABEL_81:
        *(this + 6) = v43;
      }

      else if (v22 == 2)
      {
        *(this + 28) |= 2u;
        v31 = *(a2 + 1);
        v2 = *(a2 + 2);
        v32 = *a2;
        if (v31 > 0xFFFFFFFFFFFFFFF5 || v31 + 10 > v2)
        {
          v47 = 0;
          v48 = 0;
          v35 = 0;
          if (v2 <= v31)
          {
            v3 = *(a2 + 1);
          }

          else
          {
            v3 = *(a2 + 2);
          }

          while (1)
          {
            if (v3 == v31)
            {
              v35 = 0;
              *(a2 + 24) = 1;
              goto LABEL_77;
            }

            v49 = v31 + 1;
            v50 = *(v32 + v31);
            *(a2 + 1) = v49;
            v35 |= (v50 & 0x7F) << v47;
            if ((v50 & 0x80) == 0)
            {
              break;
            }

            v47 += 7;
            v31 = v49;
            v14 = v48++ > 8;
            if (v14)
            {
              v35 = 0;
              goto LABEL_76;
            }
          }

          if (*(a2 + 24))
          {
            v35 = 0;
          }

LABEL_76:
          v3 = v49;
        }

        else
        {
          v33 = 0;
          v34 = 0;
          v35 = 0;
          v36 = (v32 + v31);
          v37 = v31 + 1;
          while (1)
          {
            v3 = v37;
            *(a2 + 1) = v37;
            v38 = *v36++;
            v35 |= (v38 & 0x7F) << v33;
            if ((v38 & 0x80) == 0)
            {
              break;
            }

            v33 += 7;
            ++v37;
            v14 = v34++ > 8;
            if (v14)
            {
              v35 = 0;
              break;
            }
          }
        }

LABEL_77:
        *(this + 2) = v35;
      }

      else if (v22 == 1)
      {
        *(this + 28) |= 1u;
        v23 = *(a2 + 1);
        v2 = *(a2 + 2);
        v24 = *a2;
        if (v23 > 0xFFFFFFFFFFFFFFF5 || v23 + 10 > v2)
        {
          v55 = 0;
          v56 = 0;
          v27 = 0;
          if (v2 <= v23)
          {
            v3 = *(a2 + 1);
          }

          else
          {
            v3 = *(a2 + 2);
          }

          while (1)
          {
            if (v3 == v23)
            {
              v27 = 0;
              *(a2 + 24) = 1;
              goto LABEL_85;
            }

            v57 = v23 + 1;
            v58 = *(v24 + v23);
            *(a2 + 1) = v57;
            v27 |= (v58 & 0x7F) << v55;
            if ((v58 & 0x80) == 0)
            {
              break;
            }

            v55 += 7;
            v23 = v57;
            v14 = v56++ > 8;
            if (v14)
            {
              v27 = 0;
              goto LABEL_84;
            }
          }

          if (*(a2 + 24))
          {
            v27 = 0;
          }

LABEL_84:
          v3 = v57;
        }

        else
        {
          v25 = 0;
          v26 = 0;
          v27 = 0;
          v28 = (v24 + v23);
          v29 = v23 + 1;
          while (1)
          {
            v3 = v29;
            *(a2 + 1) = v29;
            v30 = *v28++;
            v27 |= (v30 & 0x7F) << v25;
            if ((v30 & 0x80) == 0)
            {
              break;
            }

            v25 += 7;
            ++v29;
            v14 = v26++ > 8;
            if (v14)
            {
              v27 = 0;
              break;
            }
          }
        }

LABEL_85:
        *(this + 1) = v27;
      }

      else
      {
LABEL_17:
        if (!PB::Reader::skip(a2))
        {
          v59 = 0;
          return v59 & 1;
        }

        v3 = *(a2 + 1);
        v2 = *(a2 + 2);
      }

      v4 = *(a2 + 24);
      if (v3 >= v2 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_87;
      }
    }

    v15 = 0;
    v16 = 0;
    v10 = 0;
    v17 = (v7 + v3);
    v18 = v2 >= v3;
    v19 = v2 - v3;
    if (!v18)
    {
      v19 = 0;
    }

    v20 = v3 + 1;
    while (v19)
    {
      v21 = *v17;
      *(a2 + 1) = v20;
      v10 |= (v21 & 0x7F) << v15;
      if ((v21 & 0x80) == 0)
      {
        goto LABEL_22;
      }

      v15 += 7;
      ++v17;
      --v19;
      ++v20;
      v14 = v16++ > 8;
      if (v14)
      {
        goto LABEL_17;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_87:
  v59 = v4 ^ 1;
  return v59 & 1;
}

uint64_t sirinluinternalnlv4_parser::Tokenisation::readFrom(sirinluinternalnlv4_parser::Tokenisation *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    while (1)
    {
      v6 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        break;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = (v6 + v2);
      v11 = v2 + 1;
      while (1)
      {
        *(a2 + 1) = v11;
        v12 = *v10++;
        v9 |= (v12 & 0x7F) << v7;
        if ((v12 & 0x80) == 0)
        {
          break;
        }

        v7 += 7;
        ++v11;
        v13 = v8++ > 8;
        if (v13)
        {
          goto LABEL_17;
        }
      }

LABEL_19:
      if ((v9 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_30;
      }

      v21 = v9 >> 3;
      if ((v9 >> 3) == 3)
      {
        operator new();
      }

      if (v21 == 2)
      {
        operator new();
      }

      if (v21 == 1)
      {
        operator new();
      }

LABEL_17:
      if ((PB::Reader::skip(a2) & 1) == 0)
      {
        v23 = 0;
        return v23 & 1;
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_30;
      }
    }

    v14 = 0;
    v15 = 0;
    v9 = 0;
    v16 = (v6 + v2);
    v17 = v3 >= v2;
    v18 = v3 - v2;
    if (!v17)
    {
      v18 = 0;
    }

    v19 = v2 + 1;
    while (v18)
    {
      v20 = *v16;
      *(a2 + 1) = v19;
      v9 |= (v20 & 0x7F) << v14;
      if ((v20 & 0x80) == 0)
      {
        goto LABEL_19;
      }

      v14 += 7;
      ++v16;
      --v18;
      ++v19;
      v13 = v15++ > 8;
      if (v13)
      {
        goto LABEL_17;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_30:
  v23 = v4 ^ 1;
  return v23 & 1;
}

uint64_t sirinluinternal::TokenChain::readFrom(sirinluinternal::TokenChain *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    while (1)
    {
      v7 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        break;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = (v7 + v2);
      v12 = v2 + 1;
      while (1)
      {
        *(a2 + 1) = v12;
        v13 = *v11++;
        v10 |= (v13 & 0x7F) << v8;
        if ((v13 & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        ++v12;
        v14 = v9++ > 8;
        if (v14)
        {
          goto LABEL_17;
        }
      }

LABEL_19:
      if ((v10 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_30;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) == 3)
      {
        PB::PtrVector<sirinluinternal::Token>::emplace_back<>(this + 24);
      }

      if (v22 == 2)
      {
        operator new();
      }

      if (v22 == 1)
      {
        operator new();
      }

LABEL_17:
      if ((PB::Reader::skip(a2) & 1) == 0)
      {
        v24 = 0;
        return v24 & 1;
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_30;
      }
    }

    v15 = 0;
    v16 = 0;
    v10 = 0;
    v17 = (v7 + v2);
    v18 = v3 >= v2;
    v19 = v3 - v2;
    if (!v18)
    {
      v19 = 0;
    }

    v20 = v2 + 1;
    while (v19)
    {
      v21 = *v17;
      *(a2 + 1) = v20;
      v10 |= (v21 & 0x7F) << v15;
      if ((v21 & 0x80) == 0)
      {
        goto LABEL_19;
      }

      v15 += 7;
      ++v17;
      --v19;
      ++v20;
      v14 = v16++ > 8;
      if (v14)
      {
        goto LABEL_17;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_30:
  v24 = v4 ^ 1;
  return v24 & 1;
}

uint64_t sirinluinternalitfm::ITFMParserRequest::readFrom(sirinluinternalitfm::ITFMParserRequest *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    while (1)
    {
      v7 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        break;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = (v7 + v2);
      v12 = v2 + 1;
      while (1)
      {
        *(a2 + 1) = v12;
        v13 = *v11++;
        v10 |= (v13 & 0x7F) << v8;
        if ((v13 & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        ++v12;
        v14 = v9++ > 8;
        if (v14)
        {
          goto LABEL_17;
        }
      }

LABEL_19:
      if ((v10 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_40;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) <= 3)
      {
        switch(v22)
        {
          case 1:
            operator new();
          case 2:
            operator new();
          case 3:
            operator new();
        }
      }

      else if (v22 > 5)
      {
        if (v22 == 6)
        {
          operator new();
        }

        if (v22 == 7)
        {
          operator new();
        }
      }

      else
      {
        if (v22 == 4)
        {
          PB::PtrVector<sirinluinternal::MatchingSpan>::emplace_back<>(this + 16);
        }

        if (v22 == 5)
        {
          operator new();
        }
      }

LABEL_17:
      if ((PB::Reader::skip(a2) & 1) == 0)
      {
        v24 = 0;
        return v24 & 1;
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_40;
      }
    }

    v15 = 0;
    v16 = 0;
    v10 = 0;
    v17 = (v7 + v2);
    v18 = v3 >= v2;
    v19 = v3 - v2;
    if (!v18)
    {
      v19 = 0;
    }

    v20 = v2 + 1;
    while (v19)
    {
      v21 = *v17;
      *(a2 + 1) = v20;
      v10 |= (v21 & 0x7F) << v15;
      if ((v21 & 0x80) == 0)
      {
        goto LABEL_19;
      }

      v15 += 7;
      ++v17;
      --v19;
      ++v20;
      v14 = v16++ > 8;
      if (v14)
      {
        goto LABEL_17;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_40:
  v24 = v4 ^ 1;
  return v24 & 1;
}

uint64_t sirinluinternal::Token::readFrom(sirinluinternal::Token *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v7 = (this + 40);
    v8 = (this + 16);
    do
    {
      v9 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v17 = 0;
        v18 = 0;
        v12 = 0;
        v19 = (v9 + v2);
        v20 = v3 >= v2;
        v21 = v3 - v2;
        if (!v20)
        {
          v21 = 0;
        }

        v22 = v2 + 1;
        while (v21)
        {
          v23 = *v19;
          *(a2 + 1) = v22;
          v12 |= (v23 & 0x7F) << v17;
          if ((v23 & 0x80) == 0)
          {
            goto LABEL_22;
          }

          v17 += 7;
          ++v19;
          --v21;
          ++v22;
          v16 = v18++ > 8;
          if (v16)
          {
            goto LABEL_18;
          }
        }

        v4 = 1;
        *(a2 + 24) = 1;
        break;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = (v9 + v2);
      v14 = v2 + 1;
      while (1)
      {
        *(a2 + 1) = v14;
        v15 = *v13++;
        v12 |= (v15 & 0x7F) << v10;
        if ((v15 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        ++v14;
        v16 = v11++ > 8;
        if (v16)
        {
          goto LABEL_18;
        }
      }

LABEL_22:
      if ((v12 & 7) == 4)
      {
        v4 = 0;
        break;
      }

      v24 = v12 >> 3;
      if ((v12 >> 3) > 5)
      {
        if (v24 <= 7)
        {
          if (v24 == 6)
          {
            v50 = *(this + 3);
            v51 = *(this + 4);
            if (v50 >= v51)
            {
              v87 = 0xAAAAAAAAAAAAAAABLL * ((v50 - *v8) >> 3);
              v88 = v87 + 1;
              if (v87 + 1 > 0xAAAAAAAAAAAAAAALL)
              {
                goto LABEL_152;
              }

              v89 = 0xAAAAAAAAAAAAAAABLL * ((v51 - *v8) >> 3);
              if (2 * v89 > v88)
              {
                v88 = 2 * v89;
              }

              if (v89 >= 0x555555555555555)
              {
                v90 = 0xAAAAAAAAAAAAAAALL;
              }

              else
              {
                v90 = v88;
              }

              v121.__end_cap_.__value_ = v8;
              if (v90)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(v90);
              }

              v107 = 24 * v87;
              *v107 = 0;
              *(v107 + 8) = 0;
              *(v107 + 16) = 0;
              v52 = 24 * v87 + 24;
              v108 = *(this + 2);
              v109 = *(this + 3) - v108;
              v110 = 24 * v87 - v109;
              memcpy((v107 - v109), v108, v109);
              v111 = *(this + 2);
              *(this + 2) = v110;
              *(this + 3) = v52;
              v112 = *(this + 4);
              *(this + 4) = 0;
              v121.__end_ = v111;
              v121.__end_cap_.__value_ = v112;
              v121.__first_ = v111;
              v121.__begin_ = v111;
              std::__split_buffer<std::string>::~__split_buffer(&v121);
            }

            else
            {
              *v50 = 0;
              v50[1] = 0;
              v52 = (v50 + 3);
              v50[2] = 0;
            }

            *(this + 3) = v52;
LABEL_130:
            PB::Reader::read();
            goto LABEL_19;
          }

          if (v24 == 7)
          {
            *(this + 92) |= 8u;
            v42 = *(a2 + 1);
            v41 = *(a2 + 2);
            v43 = *a2;
            if (v42 > 0xFFFFFFFFFFFFFFF5 || v42 + 10 > v41)
            {
              v81 = 0;
              v82 = 0;
              v46 = 0;
              v83 = (v43 + v42);
              v20 = v41 >= v42;
              v84 = v41 - v42;
              if (!v20)
              {
                v84 = 0;
              }

              v85 = v42 + 1;
              while (1)
              {
                if (!v84)
                {
                  LODWORD(v46) = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_140;
                }

                v86 = *v83;
                *(a2 + 1) = v85;
                v46 |= (v86 & 0x7F) << v81;
                if ((v86 & 0x80) == 0)
                {
                  break;
                }

                v81 += 7;
                ++v83;
                --v84;
                ++v85;
                v16 = v82++ > 8;
                if (v16)
                {
LABEL_89:
                  LODWORD(v46) = 0;
                  goto LABEL_140;
                }
              }

              if (*(a2 + 24))
              {
                LODWORD(v46) = 0;
              }
            }

            else
            {
              v44 = 0;
              v45 = 0;
              v46 = 0;
              v47 = (v43 + v42);
              v48 = v42 + 1;
              while (1)
              {
                *(a2 + 1) = v48;
                v49 = *v47++;
                v46 |= (v49 & 0x7F) << v44;
                if ((v49 & 0x80) == 0)
                {
                  break;
                }

                v44 += 7;
                ++v48;
                v16 = v45++ > 8;
                if (v16)
                {
                  goto LABEL_89;
                }
              }
            }

LABEL_140:
            *(this + 21) = v46;
            goto LABEL_19;
          }
        }

        else
        {
          switch(v24)
          {
            case 8:
              *(this + 92) |= 4u;
              v63 = *(a2 + 1);
              v62 = *(a2 + 2);
              v64 = *a2;
              if (v63 > 0xFFFFFFFFFFFFFFF5 || v63 + 10 > v62)
              {
                v97 = 0;
                v98 = 0;
                v67 = 0;
                v99 = (v64 + v63);
                v20 = v62 >= v63;
                v100 = v62 - v63;
                if (!v20)
                {
                  v100 = 0;
                }

                v101 = v63 + 1;
                while (1)
                {
                  if (!v100)
                  {
                    LODWORD(v67) = 0;
                    *(a2 + 24) = 1;
                    goto LABEL_146;
                  }

                  v102 = *v99;
                  *(a2 + 1) = v101;
                  v67 |= (v102 & 0x7F) << v97;
                  if ((v102 & 0x80) == 0)
                  {
                    break;
                  }

                  v97 += 7;
                  ++v99;
                  --v100;
                  ++v101;
                  v16 = v98++ > 8;
                  if (v16)
                  {
LABEL_113:
                    LODWORD(v67) = 0;
                    goto LABEL_146;
                  }
                }

                if (*(a2 + 24))
                {
                  LODWORD(v67) = 0;
                }
              }

              else
              {
                v65 = 0;
                v66 = 0;
                v67 = 0;
                v68 = (v64 + v63);
                v69 = v63 + 1;
                while (1)
                {
                  *(a2 + 1) = v69;
                  v70 = *v68++;
                  v67 |= (v70 & 0x7F) << v65;
                  if ((v70 & 0x80) == 0)
                  {
                    break;
                  }

                  v65 += 7;
                  ++v69;
                  v16 = v66++ > 8;
                  if (v16)
                  {
                    goto LABEL_113;
                  }
                }
              }

LABEL_146:
              *(this + 20) = v67;
              goto LABEL_19;
            case 9:
              operator new();
            case 0xA:
              v29 = *(this + 6);
              v30 = *(this + 7);
              if (v29 >= v30)
              {
                v103 = 0xAAAAAAAAAAAAAAABLL * ((v29 - *v7) >> 3);
                v104 = v103 + 1;
                if (v103 + 1 > 0xAAAAAAAAAAAAAAALL)
                {
LABEL_152:
                  std::vector<std::unique_ptr<siricommon::StringValue>>::__throw_length_error[abi:ne200100]();
                }

                v105 = 0xAAAAAAAAAAAAAAABLL * ((v30 - *v7) >> 3);
                if (2 * v105 > v104)
                {
                  v104 = 2 * v105;
                }

                if (v105 >= 0x555555555555555)
                {
                  v106 = 0xAAAAAAAAAAAAAAALL;
                }

                else
                {
                  v106 = v104;
                }

                v121.__end_cap_.__value_ = v7;
                if (v106)
                {
                  std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(v106);
                }

                v113 = 24 * v103;
                *v113 = 0;
                *(v113 + 8) = 0;
                *(v113 + 16) = 0;
                v31 = 24 * v103 + 24;
                v114 = *(this + 5);
                v115 = *(this + 6) - v114;
                v116 = 24 * v103 - v115;
                memcpy((v113 - v115), v114, v115);
                v117 = *(this + 5);
                *(this + 5) = v116;
                *(this + 6) = v31;
                v118 = *(this + 7);
                *(this + 7) = 0;
                v121.__end_ = v117;
                v121.__end_cap_.__value_ = v118;
                v121.__first_ = v117;
                v121.__begin_ = v117;
                std::__split_buffer<std::string>::~__split_buffer(&v121);
              }

              else
              {
                *v29 = 0;
                v29[1] = 0;
                v31 = (v29 + 3);
                v29[2] = 0;
              }

              *(this + 6) = v31;
              goto LABEL_130;
          }
        }
      }

      else if (v24 <= 2)
      {
        if (v24 == 1)
        {
          operator new();
        }

        if (v24 == 2)
        {
          *(this + 92) |= 1u;
          v33 = *(a2 + 1);
          v32 = *(a2 + 2);
          v34 = *a2;
          if (v33 > 0xFFFFFFFFFFFFFFF5 || v33 + 10 > v32)
          {
            v75 = 0;
            v76 = 0;
            v37 = 0;
            v77 = (v34 + v33);
            v20 = v32 >= v33;
            v78 = v32 - v33;
            if (!v20)
            {
              v78 = 0;
            }

            v79 = v33 + 1;
            while (1)
            {
              if (!v78)
              {
                LODWORD(v37) = 0;
                *(a2 + 24) = 1;
                goto LABEL_137;
              }

              v80 = *v77;
              *(a2 + 1) = v79;
              v37 |= (v80 & 0x7F) << v75;
              if ((v80 & 0x80) == 0)
              {
                break;
              }

              v75 += 7;
              ++v77;
              --v78;
              ++v79;
              v16 = v76++ > 8;
              if (v16)
              {
LABEL_81:
                LODWORD(v37) = 0;
                goto LABEL_137;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v37) = 0;
            }
          }

          else
          {
            v35 = 0;
            v36 = 0;
            v37 = 0;
            v38 = (v34 + v33);
            v39 = v33 + 1;
            while (1)
            {
              *(a2 + 1) = v39;
              v40 = *v38++;
              v37 |= (v40 & 0x7F) << v35;
              if ((v40 & 0x80) == 0)
              {
                break;
              }

              v35 += 7;
              ++v39;
              v16 = v36++ > 8;
              if (v16)
              {
                goto LABEL_81;
              }
            }
          }

LABEL_137:
          *(this + 18) = v37;
          goto LABEL_19;
        }
      }

      else
      {
        switch(v24)
        {
          case 3:
            *(this + 92) |= 2u;
            v54 = *(a2 + 1);
            v53 = *(a2 + 2);
            v55 = *a2;
            if (v54 > 0xFFFFFFFFFFFFFFF5 || v54 + 10 > v53)
            {
              v91 = 0;
              v92 = 0;
              v58 = 0;
              v93 = (v55 + v54);
              v20 = v53 >= v54;
              v94 = v53 - v54;
              if (!v20)
              {
                v94 = 0;
              }

              v95 = v54 + 1;
              while (1)
              {
                if (!v94)
                {
                  LODWORD(v58) = 0;
                  *(a2 + 24) = 1;
                  goto LABEL_143;
                }

                v96 = *v93;
                *(a2 + 1) = v95;
                v58 |= (v96 & 0x7F) << v91;
                if ((v96 & 0x80) == 0)
                {
                  break;
                }

                v91 += 7;
                ++v93;
                --v94;
                ++v95;
                v16 = v92++ > 8;
                if (v16)
                {
LABEL_105:
                  LODWORD(v58) = 0;
                  goto LABEL_143;
                }
              }

              if (*(a2 + 24))
              {
                LODWORD(v58) = 0;
              }
            }

            else
            {
              v56 = 0;
              v57 = 0;
              v58 = 0;
              v59 = (v55 + v54);
              v60 = v54 + 1;
              while (1)
              {
                *(a2 + 1) = v60;
                v61 = *v59++;
                v58 |= (v61 & 0x7F) << v56;
                if ((v61 & 0x80) == 0)
                {
                  break;
                }

                v56 += 7;
                ++v60;
                v16 = v57++ > 8;
                if (v16)
                {
                  goto LABEL_105;
                }
              }
            }

LABEL_143:
            *(this + 19) = v58;
            goto LABEL_19;
          case 4:
            *(this + 92) |= 0x10u;
            v71 = *(a2 + 1);
            if (v71 >= *(a2 + 2))
            {
              v74 = 0;
              *(a2 + 24) = 1;
            }

            else
            {
              v72 = v71 + 1;
              v73 = *(*a2 + v71);
              *(a2 + 1) = v72;
              v74 = v73 != 0;
            }

            *(this + 88) = v74;
            goto LABEL_19;
          case 5:
            *(this + 92) |= 0x20u;
            v25 = *(a2 + 1);
            if (v25 >= *(a2 + 2))
            {
              v28 = 0;
              *(a2 + 24) = 1;
            }

            else
            {
              v26 = v25 + 1;
              v27 = *(*a2 + v25);
              *(a2 + 1) = v26;
              v28 = v27 != 0;
            }

            *(this + 89) = v28;
            goto LABEL_19;
        }
      }

LABEL_18:
      if (!PB::Reader::skip(a2))
      {
        v119 = 0;
        return v119 & 1;
      }

LABEL_19:
      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
    }

    while (v2 < v3 && (*(a2 + 24) & 1) == 0);
  }

  v119 = v4 ^ 1;
  return v119 & 1;
}

uint64_t sirinluexternal::SystemDialogActGroup::readFrom(sirinluexternal::SystemDialogActGroup *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    while (1)
    {
      v6 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        break;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = (v6 + v2);
      v11 = v2 + 1;
      while (1)
      {
        *(a2 + 1) = v11;
        v12 = *v10++;
        v9 |= (v12 & 0x7F) << v7;
        if ((v12 & 0x80) == 0)
        {
          break;
        }

        v7 += 7;
        ++v11;
        v13 = v8++ > 8;
        if (v13)
        {
          goto LABEL_22;
        }
      }

LABEL_18:
      if ((v9 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_29;
      }

      if ((v9 >> 3) == 2)
      {
        operator new();
      }

      if ((v9 >> 3) == 1)
      {
        operator new();
      }

LABEL_22:
      if ((PB::Reader::skip(a2) & 1) == 0)
      {
        v22 = 0;
        return v22 & 1;
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_29;
      }
    }

    v14 = 0;
    v15 = 0;
    v9 = 0;
    v16 = (v6 + v2);
    v17 = v3 >= v2;
    v18 = v3 - v2;
    if (!v17)
    {
      v18 = 0;
    }

    v19 = v2 + 1;
    while (v18)
    {
      v20 = *v16;
      *(a2 + 1) = v19;
      v9 |= (v20 & 0x7F) << v14;
      if ((v20 & 0x80) == 0)
      {
        goto LABEL_18;
      }

      v14 += 7;
      ++v16;
      --v18;
      ++v19;
      v13 = v15++ > 8;
      if (v13)
      {
        goto LABEL_22;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_29:
  v22 = v4 ^ 1;
  return v22 & 1;
}

uint64_t sirinluexternal::TurnContext::readFrom(sirinluexternal::TurnContext *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    while (1)
    {
      v6 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        break;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = (v6 + v2);
      v11 = v2 + 1;
      while (1)
      {
        *(a2 + 1) = v11;
        v12 = *v10++;
        v9 |= (v12 & 0x7F) << v7;
        if ((v12 & 0x80) == 0)
        {
          break;
        }

        v7 += 7;
        ++v11;
        v13 = v8++ > 8;
        if (v13)
        {
          goto LABEL_22;
        }
      }

LABEL_18:
      if ((v9 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_29;
      }

      if ((v9 >> 3) == 2)
      {
        operator new();
      }

      if ((v9 >> 3) == 1)
      {
        operator new();
      }

LABEL_22:
      if ((PB::Reader::skip(a2) & 1) == 0)
      {
        v22 = 0;
        return v22 & 1;
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_29;
      }
    }

    v14 = 0;
    v15 = 0;
    v9 = 0;
    v16 = (v6 + v2);
    v17 = v3 >= v2;
    v18 = v3 - v2;
    if (!v17)
    {
      v18 = 0;
    }

    v19 = v2 + 1;
    while (v18)
    {
      v20 = *v16;
      *(a2 + 1) = v19;
      v9 |= (v20 & 0x7F) << v14;
      if ((v20 & 0x80) == 0)
      {
        goto LABEL_18;
      }

      v14 += 7;
      ++v16;
      --v18;
      ++v19;
      v13 = v15++ > 8;
      if (v13)
      {
        goto LABEL_22;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_29:
  v22 = v4 ^ 1;
  return v22 & 1;
}

uint64_t sirinluexternal::NLContext::readFrom(sirinluexternal::NLContext *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    while (1)
    {
      v7 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        break;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = (v7 + v2);
      v12 = v2 + 1;
      while (1)
      {
        *(a2 + 1) = v12;
        v13 = *v11++;
        v10 |= (v13 & 0x7F) << v8;
        if ((v13 & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        ++v12;
        v14 = v9++ > 8;
        if (v14)
        {
          goto LABEL_17;
        }
      }

LABEL_19:
      if ((v10 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_35;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) <= 2)
      {
        if (v22 == 1)
        {
          operator new();
        }

        if (v22 == 2)
        {
          PB::PtrVector<sirinluexternal::Task>::emplace_back<>(this + 8);
        }
      }

      else
      {
        switch(v22)
        {
          case 3:
            PB::PtrVector<sirinluexternal::Task>::emplace_back<>(this + 32);
          case 4:
            PB::PtrVector<sirinluexternal::EntityCandidate>::emplace_back<>(this + 56);
          case 5:
            PB::PtrVector<sirinluexternal::SystemDialogAct>::emplace_back<>(this + 88);
        }
      }

LABEL_17:
      if ((PB::Reader::skip(a2) & 1) == 0)
      {
        v24 = 0;
        return v24 & 1;
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_35;
      }
    }

    v15 = 0;
    v16 = 0;
    v10 = 0;
    v17 = (v7 + v2);
    v18 = v3 >= v2;
    v19 = v3 - v2;
    if (!v18)
    {
      v19 = 0;
    }

    v20 = v2 + 1;
    while (v19)
    {
      v21 = *v17;
      *(a2 + 1) = v20;
      v10 |= (v21 & 0x7F) << v15;
      if ((v21 & 0x80) == 0)
      {
        goto LABEL_19;
      }

      v15 += 7;
      ++v17;
      --v19;
      ++v20;
      v14 = v16++ > 8;
      if (v14)
      {
        goto LABEL_17;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_35:
  v24 = v4 ^ 1;
  return v24 & 1;
}

uint64_t sirinluexternal::RequestID::readFrom(sirinluexternal::RequestID *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  while (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    v7 = *a2;
    if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
    {
      v15 = 0;
      v16 = 0;
      v10 = 0;
      v17 = (v7 + v2);
      v18 = v3 >= v2;
      v19 = v3 - v2;
      if (!v18)
      {
        v19 = 0;
      }

      v20 = v2 + 1;
      while (v19)
      {
        v21 = *v17;
        *(a2 + 1) = v20;
        v10 |= (v21 & 0x7F) << v15;
        if ((v21 & 0x80) == 0)
        {
          goto LABEL_19;
        }

        v15 += 7;
        ++v17;
        --v19;
        ++v20;
        v14 = v16++ > 8;
        if (v14)
        {
          goto LABEL_17;
        }
      }

      v4 = 1;
      *(a2 + 24) = 1;
      break;
    }

    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = (v7 + v2);
    v12 = v2 + 1;
    while (1)
    {
      *(a2 + 1) = v12;
      v13 = *v11++;
      v10 |= (v13 & 0x7F) << v8;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v8 += 7;
      ++v12;
      v14 = v9++ > 8;
      if (v14)
      {
        goto LABEL_17;
      }
    }

LABEL_19:
    if ((v10 & 7) == 4)
    {
      v4 = 0;
      break;
    }

    v22 = v10 >> 3;
    if ((v10 >> 3) <= 3)
    {
      switch(v22)
      {
        case 1:
          operator new();
        case 2:
          operator new();
        case 3:
          operator new();
      }
    }

    else if (v22 > 10)
    {
      if (v22 == 11)
      {
        operator new();
      }

      if (v22 == 12)
      {
        *(this + 60) |= 1u;
        v24 = *(a2 + 1);
        v23 = *(a2 + 2);
        v25 = *a2;
        if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v23)
        {
          v32 = 0;
          v33 = 0;
          v28 = 0;
          v34 = (v25 + v24);
          v18 = v23 >= v24;
          v35 = v23 - v24;
          if (!v18)
          {
            v35 = 0;
          }

          v36 = v24 + 1;
          while (1)
          {
            if (!v35)
            {
              LODWORD(v28) = 0;
              *(a2 + 24) = 1;
              goto LABEL_56;
            }

            v37 = *v34;
            *(a2 + 1) = v36;
            v28 |= (v37 & 0x7F) << v32;
            if ((v37 & 0x80) == 0)
            {
              break;
            }

            v32 += 7;
            ++v34;
            --v35;
            ++v36;
            v14 = v33++ > 8;
            if (v14)
            {
LABEL_52:
              LODWORD(v28) = 0;
              goto LABEL_56;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v28) = 0;
          }
        }

        else
        {
          v26 = 0;
          v27 = 0;
          v28 = 0;
          v29 = (v25 + v24);
          v30 = v24 + 1;
          while (1)
          {
            *(a2 + 1) = v30;
            v31 = *v29++;
            v28 |= (v31 & 0x7F) << v26;
            if ((v31 & 0x80) == 0)
            {
              break;
            }

            v26 += 7;
            ++v30;
            v14 = v27++ > 8;
            if (v14)
            {
              goto LABEL_52;
            }
          }
        }

LABEL_56:
        *(this + 14) = v28;
        goto LABEL_41;
      }
    }

    else
    {
      if (v22 == 4)
      {
        operator new();
      }

      if (v22 == 5)
      {
        operator new();
      }
    }

LABEL_17:
    if ((PB::Reader::skip(a2) & 1) == 0)
    {
      v39 = 0;
      return v39 & 1;
    }

LABEL_41:
    v2 = *(a2 + 1);
    v3 = *(a2 + 2);
    v4 = *(a2 + 24);
  }

  v39 = v4 ^ 1;
  return v39 & 1;
}

void Siri_Nlu_Internal_TurnInputRule.UtteranceRule.AdjacentSpans.init()()
{
  v1 = OUTLINED_FUNCTION_143_1(MEMORY[0x1E69E7CC0]);
  v2 = type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule.AdjacentSpans(v1);
  OUTLINED_FUNCTION_702(v2);
  OUTLINED_FUNCTION_18_2(*(v0 + 24));
}

void Siri_Nlu_Internal_TurnInputRule.UtteranceRule.AdjacentSpans.decodeMessage<A>(decoder:)()
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
      sub_1C878301C();
    }

    else if (v1 == 1)
    {
      OUTLINED_FUNCTION_8();
      sub_1C8782FD4();
    }
  }
}

uint64_t sub_1C8796AD8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), void (*a5)(uint64_t))
{
  while (1)
  {
    OUTLINED_FUNCTION_516();
    result = sub_1C8BD4AFC();
    if (v5 || (v9 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      v11 = OUTLINED_FUNCTION_251_0();
      a5(v11);
    }

    else if (result == 1)
    {
      v10 = OUTLINED_FUNCTION_251_0();
      a4(v10);
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_216_1(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 56) = v2;
  result = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ToolDefinition.Version1(0);
  *(a1 + 64) = *(result + 20);
  return result;
}

uint64_t Siri_Nlu_External_NLContext.init()@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = v2;
  a1[2] = v2;
  a1[3] = v2;
  type metadata accessor for Siri_Nlu_External_NLContext(0);
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  type metadata accessor for Siri_Nlu_External_SystemDialogActGroup(0);
  v3 = OUTLINED_FUNCTION_27_1();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t sirinluinternal::SubwordTokenChain::operator=(uint64_t a1, const sirinluinternal::SubwordTokenChain *a2)
{
  if (a1 != a2)
  {
    sirinluinternal::SubwordTokenChain::SubwordTokenChain(v7, a2);
    v3 = v9;
    v4 = *(a1 + 8);
    *(a1 + 8) = v8;
    v5 = *(a1 + 24);
    *(a1 + 24) = v3;
    v8 = v4;
    v9 = v5;
    sirinluinternal::SubwordTokenChain::~SubwordTokenChain(v7);
  }

  return a1;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<siricommon::StringValue>>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<std::unique_ptr<siricommon::StringValue>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    v5 = *--v2;
    v4 = v5;
    *(a1 + 16) = v2;
    *v2 = 0;
    if (v5)
    {
      (*(*v4 + 8))(v4);
      v2 = *(a1 + 16);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sirinluinternal::SubwordTokenChain::~SubwordTokenChain(sirinluinternal::SubwordTokenChain *this)
{
  *this = &unk_1F4875B60;
  v2 = (this + 16);
  if (*(this + 2))
  {
    std::vector<std::unique_ptr<siricommon::StringValue>>::clear[abi:ne200100](this + 2);
    operator delete(*v2);
  }

  v3 = *(this + 1);
  *(this + 1) = 0;
  if (v3)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v3);
  }

  PB::Base::~Base(this);
}

{
  sirinluinternal::SubwordTokenChain::~SubwordTokenChain(this);

  JUMPOUT(0x1CCA7EC50);
}

double sirinluinternalitfm::ITFMParserRequest::ITFMParserRequest(sirinluinternalitfm::ITFMParserRequest *this)
{
  *this = &unk_1F4875AC0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 9) = 0;
  return result;
}

{
  *this = &unk_1F4875AC0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 9) = 0;
  return result;
}

void Siri_Nlu_Internal_TurnInputRule.UtteranceRule.SpanDataForNamedCaptureGroup.init()(uint64_t a2@<X8>)
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v3 = type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule.SpanDataForNamedCaptureGroup(0);
  OUTLINED_FUNCTION_18_2(*(v3 + 20));
  OUTLINED_FUNCTION_16_3(a2 + *(v4 + 24));
  v6 = a2 + *(v5 + 28);
  *v6 = 0;
  *(v6 + 4) = v7;
}

void OUTLINED_FUNCTION_63_2(char a1@<W8>)
{
  if (v1)
  {
    a1 = 0;
  }

  *v2 = a1;
}

void OUTLINED_FUNCTION_63_3(uint64_t a1@<X8>)
{
  v3 = v2 + a1;
  *v3 = v1;
  *(v3 + 4) = 0;
}

uint64_t OUTLINED_FUNCTION_63_5()
{

  return sub_1C8A0E760();
}

uint64_t sub_1C8797130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_External_TurnContext(0);
  type metadata accessor for Siri_Nlu_External_NLContext(0);
  sub_1C8776788(&qword_1EDACCC80, type metadata accessor for Siri_Nlu_External_NLContext, &protocol conformance descriptor for Siri_Nlu_External_NLContext);
  return sub_1C8BD4C7C();
}

void Siri_Nlu_External_NLContext.decodeMessage<A>(decoder:)()
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
        sub_1C88AEF6C(v3, v4, v5, v6);
        break;
      case 2:
        OUTLINED_FUNCTION_8();
        sub_1C879DC10();
        break;
      case 3:
        OUTLINED_FUNCTION_8();
        sub_1C87A33F8();
        break;
      case 4:
        v11 = OUTLINED_FUNCTION_8();
        sub_1C88AF020(v11, v12, v13, v14);
        break;
      case 5:
        v7 = OUTLINED_FUNCTION_8();
        sub_1C8797350(v7, v8, v9, v10);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C8797350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_External_SystemDialogAct(0);
  sub_1C8776788(qword_1EDACB410, type metadata accessor for Siri_Nlu_External_SystemDialogAct, &protocol conformance descriptor for Siri_Nlu_External_SystemDialogAct);
  return sub_1C8BD4C6C();
}

uint64_t Siri_Nlu_Internal_Overrides_TurnInputAndPreprocessing.hasTokenChain.getter()
{
  v0 = OUTLINED_FUNCTION_12();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_80(v2);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_74();
  v5 = type metadata accessor for Siri_Nlu_Internal_Overrides_TurnInputAndPreprocessing(v4);
  OUTLINED_FUNCTION_13(*(v5 + 28));
  OUTLINED_FUNCTION_262();
  type metadata accessor for Siri_Nlu_Internal_TokenChain(0);
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

  v11 = OUTLINED_FUNCTION_121();
  sub_1C8778ED8(v11, v12, &unk_1C8BE6F80);
  return v10;
}

uint64_t sirinluinternalitfm::ITFMHypothesis::ITFMHypothesis(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4876900;
  *(a1 + 8) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = 0;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  v3 = *(a2 + 8);
  *(a2 + 8) = 0;
  v4 = *(a1 + 8);
  *(a1 + 8) = v3;
  if (v4)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v4);
  }

  return a1;
}

uint64_t Siri_Nlu_Internal_Overrides_TurnInputAndPreprocessing.tokenChain.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_74();
  v6 = type metadata accessor for Siri_Nlu_Internal_Overrides_TurnInputAndPreprocessing(v5);
  OUTLINED_FUNCTION_13(*(v6 + 28));
  OUTLINED_FUNCTION_49_8();
  v7 = type metadata accessor for Siri_Nlu_Internal_TokenChain(0);
  OUTLINED_FUNCTION_65(v1);
  if (v8)
  {
    *a1 = MEMORY[0x1E69E7CC0];
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_18_2(*(v7 + 24));
    OUTLINED_FUNCTION_18_2(*(v7 + 28));
    result = OUTLINED_FUNCTION_65(v1);
    if (!v8)
    {
      return sub_1C8778ED8(v1, &qword_1EC2B6048, &unk_1C8BE6F80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_26();
    OUTLINED_FUNCTION_121();
    return sub_1C87977A8();
  }

  return result;
}

uint64_t sub_1C87976F8(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_17();
  v4(v3);
  OUTLINED_FUNCTION_21();
  v5 = OUTLINED_FUNCTION_218();
  v6(v5);
  return a2;
}

uint64_t sub_1C8797750(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_17();
  v4(v3);
  OUTLINED_FUNCTION_21();
  v5 = OUTLINED_FUNCTION_218();
  v6(v5);
  return a2;
}

uint64_t sub_1C87977A8()
{
  OUTLINED_FUNCTION_12_0();
  v1(0);
  OUTLINED_FUNCTION_21();
  v2 = OUTLINED_FUNCTION_218();
  v3(v2);
  return v0;
}

uint64_t sub_1C8797800()
{
  v1 = OUTLINED_FUNCTION_84();
  v2(v1);
  OUTLINED_FUNCTION_21();
  v3 = OUTLINED_FUNCTION_218();
  v4(v3);
  return v0;
}

void sirinluinternalitfm::ITFMHypothesis::~ITFMHypothesis(sirinluinternalitfm::ITFMHypothesis *this)
{
  v2 = *(this + 1);
  *this = &unk_1F4876900;
  *(this + 1) = 0;
  if (v2)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v2);
  }

  PB::Base::~Base(this);
}

{
  sirinluinternalitfm::ITFMHypothesis::~ITFMHypothesis(this);

  JUMPOUT(0x1CCA7EC50);
}

void sirinluinternalitfm::ITFMParserRequest::~ITFMParserRequest(sirinluinternalitfm::ITFMParserRequest *this)
{
  sirinluinternalitfm::ITFMParserRequest::~ITFMParserRequest(this);

  JUMPOUT(0x1CCA7EC50);
}

{
  *this = &unk_1F4875AC0;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 7);
  *(this + 7) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 6);
  *(this + 6) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 5);
  *(this + 5) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v8 = (this + 16);
  std::vector<std::unique_ptr<sirinluexternal::UserParse>>::__destroy_vector::operator()[abi:ne200100](&v8);
  v7 = *(this + 1);
  *(this + 1) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  PB::Base::~Base(this);
}

uint64_t Siri_Nlu_Internal_TokenChain.locale.getter()
{
  v0 = type metadata accessor for Siri_Nlu_Internal_TokenChain(0);
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

uint64_t Siri_Nlu_Internal_Overrides_TurnInputAndPreprocessing.utterance.getter()
{
  OUTLINED_FUNCTION_34_9();

  return OUTLINED_FUNCTION_218();
}

uint64_t sub_1C8797B78@<X0>(uint64_t *a1@<X8>)
{
  result = Siri_Nlu_Internal_TurnInputRule.UtteranceRule.ComparisonType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t Siri_Nlu_Internal_NluRequestRule.localeID.getter()
{
  v0 = type metadata accessor for Siri_Nlu_Internal_NluRequestRule(0);
  if (OUTLINED_FUNCTION_8_0(*(v0 + 28)))
  {
    OUTLINED_FUNCTION_20();
  }

  else
  {
    OUTLINED_FUNCTION_19_0();
  }

  return OUTLINED_FUNCTION_218();
}

void Siri_Nlu_Internal_TurnInputRule.UtteranceRule.type.getter()
{
  v1 = OUTLINED_FUNCTION_207();
  type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule(v1);
  OUTLINED_FUNCTION_134_4();
  if (v2 == 3)
  {
    LOBYTE(v2) = 0;
  }

  *v0 = v2;
}

uint64_t OUTLINED_FUNCTION_120_1(uint64_t a1, uint64_t a2)
{

  return sub_1C8BD4D3C();
}

uint64_t sirinluinternalitfm::ITFMParserResponse::ITFMParserResponse(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4878DC8;
  *(a1 + 8) = 0u;
  v4 = (a1 + 8);
  *(a1 + 24) = 0u;
  *(a1 + 48) = *(a2 + 48);
  *(a2 + 48) = 0;
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 40) = *(a2 + 40);
  v5 = *(a2 + 32);
  *(a2 + 32) = 0;
  v6 = *(a1 + 32);
  *(a1 + 32) = v5;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  if (*v4)
  {
    std::vector<std::unique_ptr<siricommon::StringValue>>::clear[abi:ne200100](v4);
    operator delete(*v4);
    *v4 = 0;
    v4[1] = 0;
    v4[2] = 0;
  }

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  return a1;
}

uint64_t Siri_Nlu_External_UserWantedToProceed.reference.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_UserWantedToProceed(v1);
  sub_1C8778ED8(v0 + *(v2 + 24), &qword_1EC2B61D0, &qword_1C8C0C1E0);
  OUTLINED_FUNCTION_1_13();
  OUTLINED_FUNCTION_200();
  sub_1C879A720();
  type metadata accessor for Siri_Nlu_External_UsoGraph(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t OUTLINED_FUNCTION_418(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_203_0()
{
  type metadata accessor for Siri_Nlu_External_UsoEntitySpan(0);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_203_1()
{
  type metadata accessor for Siri_Nlu_External_SystemDialogAct._StorageClass(0);

  return swift_allocObject();
}

uint64_t sub_1C8797F18@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v8 = *(a1(0) + 20);
  if (*a2 != -1)
  {
    OUTLINED_FUNCTION_184();
    swift_once();
  }

  *(a4 + v8) = *a3;
}

uint64_t sub_1C879804C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8A68, &qword_1C8BF5068);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v45[16] = v45 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B86C0, &unk_1C8BF5020);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v45[15] = v45 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2B61D8, &unk_1C8BF4FD0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v45[14] = v45 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B86C8, &unk_1C8C10570);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v45[13] = v45 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6E18, &qword_1C8BEBC48);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v45[12] = v45 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B86D0, &unk_1C8BF5010);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v45[11] = v45 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B86D8, &qword_1C8BF4620);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v45[10] = v45 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6E10, &unk_1C8BF5000);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v45[6] = v45 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6E20, &unk_1C8BF4FF0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v45[3] = v45 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6E28, &unk_1C8C10580);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2B6330, &unk_1C8BF4FE0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v22 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__accepted;
  v23 = type metadata accessor for Siri_Nlu_External_UserAccepted(0);
  __swift_storeEnumTagSinglePayload(v1 + v22, 1, 1, v23);
  v24 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__rejected;
  v25 = type metadata accessor for Siri_Nlu_External_UserRejected(0);
  __swift_storeEnumTagSinglePayload(v1 + v24, 1, 1, v25);
  v26 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__cancelled;
  v27 = type metadata accessor for Siri_Nlu_External_UserCancelled(0);
  __swift_storeEnumTagSinglePayload(v1 + v26, 1, 1, v27);
  v28 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__wantedToRepeat;
  v45[0] = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__wantedToRepeat;
  v29 = type metadata accessor for Siri_Nlu_External_UserWantedToRepeat(0);
  __swift_storeEnumTagSinglePayload(v1 + v28, 1, 1, v29);
  v30 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__acknowledged;
  v45[1] = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__acknowledged;
  v31 = type metadata accessor for Siri_Nlu_External_UserAcknowledged(0);
  __swift_storeEnumTagSinglePayload(v1 + v30, 1, 1, v31);
  v32 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__wantedToProceed;
  v45[2] = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__wantedToProceed;
  v33 = type metadata accessor for Siri_Nlu_External_UserWantedToProceed(0);
  __swift_storeEnumTagSinglePayload(v1 + v32, 1, 1, v33);
  v34 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__wantedToPause;
  v45[4] = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__wantedToPause;
  v35 = type metadata accessor for Siri_Nlu_External_UserWantedToPause(0);
  __swift_storeEnumTagSinglePayload(v1 + v34, 1, 1, v35);
  v36 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__delegated;
  v45[5] = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__delegated;
  v37 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct(0);
  __swift_storeEnumTagSinglePayload(v1 + v36, 1, 1, v37);
  v38 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__userStatedTask;
  v45[7] = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__userStatedTask;
  v39 = type metadata accessor for Siri_Nlu_External_UserStatedTask(0);
  __swift_storeEnumTagSinglePayload(v1 + v38, 1, 1, v39);
  v40 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__wantedToUndo;
  v45[8] = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__wantedToUndo;
  v41 = type metadata accessor for Siri_Nlu_External_UserWantedToUndo(0);
  __swift_storeEnumTagSinglePayload(v1 + v40, 1, 1, v41);
  v42 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__alignment;
  v45[9] = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__alignment;
  v43 = type metadata accessor for Siri_Nlu_External_UtteranceAlignment(0);
  __swift_storeEnumTagSinglePayload(v1 + v42, 1, 1, v43);
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
  swift_beginAccess();
  sub_1C8778810();

  swift_beginAccess();
  sub_1C8786514();
  swift_endAccess();
  return v1;
}

void *sub_1C8798B88(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1C8BD49FC();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for Siri_Nlu_External_UUID(uint64_t a1)
{
  result = qword_1EDACE1D0;
  if (!qword_1EDACE1D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_144(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1C8BD49DC();
}

uint64_t OUTLINED_FUNCTION_221_1()
{

  return sub_1C877B4F0();
}

uint64_t sub_1C8798CCC()
{
  OUTLINED_FUNCTION_12_0();
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v1(0);
  v0(0);
  v2 = OUTLINED_FUNCTION_73_3();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Siri_Nlu_External_SystemDialogAct.offered.setter()
{
  OUTLINED_FUNCTION_31_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B86F0, &unk_1C8BF5030);
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_170();
  v3 = type metadata accessor for Siri_Nlu_External_SystemDialogAct(v2);
  if ((OUTLINED_FUNCTION_41_1(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_203_1();
    v4 = OUTLINED_FUNCTION_2();
    v5 = sub_1C879A880(v4);
    OUTLINED_FUNCTION_40(v5);
  }

  OUTLINED_FUNCTION_94_3();
  OUTLINED_FUNCTION_196_0();
  sub_1C879A720();
  type metadata accessor for Siri_Nlu_External_SystemOffered(0);
  v6 = OUTLINED_FUNCTION_128_2();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_200();
  sub_1C8786514();
  return swift_endAccess();
}

uint64_t OUTLINED_FUNCTION_25_2()
{
}

void sub_1C8798EFC()
{
  OUTLINED_FUNCTION_101_0();
  if (v0)
  {
    OUTLINED_FUNCTION_244();
  }

  else
  {
    sub_1C8BD49FC();
    OUTLINED_FUNCTION_226_2();
    v2 = OUTLINED_FUNCTION_102_0(v1);

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

void *__swift_project_boxed_opaque_existential_1Tm(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_42_3(uint64_t a1, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_42_8()
{

  return sub_1C8BD4AAC();
}

uint64_t sub_1C87990F4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v90 = a4;
  v93 = a2;
  v107 = *MEMORY[0x1E69E9840];
  v95 = sub_1C8BD51CC();
  v92 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v96 = v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C8BD4A8C();
  v94 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61D0, &qword_1C8C0C1E0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v88 - v14;
  v16 = type metadata accessor for Siri_Nlu_External_UsoGraph(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v88 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = a6;
  v106 = a7;
  __swift_allocate_boxed_opaque_existential_1(v104);
  (*(*(a6 - 8) + 16))();
  sub_1C8799CAC(v104, v102);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BE7D8, &qword_1C8C10538);
  if (!swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v15, 1, 1, v16);
    sub_1C8778ED8(v15, &qword_1EC2B61D0, &qword_1C8C0C1E0);
    __swift_project_boxed_opaque_existential_1Tm(v104, v105);
    sub_1C8BD4A7C();
    v19 = sub_1C8BD4C9C();
    v21 = v20;
    (*(v94 + 8))(v12, v10);
    v100 = v19;
    v101 = v21;
    type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor();
    v22 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BE7E0, &unk_1C8C10540);
    sub_1C87A4F3C();
    *(v22 + 16) = sub_1C8BD513C();
    *(v22 + 24) = 0;
    v98 = v22;
    sub_1C87A4F90(qword_1EDACA548, v23, type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor, &unk_1C8C10348);
    sub_1C8BD4C8C();
    v88[1] = 0;
    v25 = v92;
    v26 = v98;
    swift_beginAccess();
    v89 = v26;
    v27 = *(v26 + 16);
    v28 = v27 + 64;
    v29 = 1 << *(v27 + 32);
    v30 = -1;
    if (v29 < 64)
    {
      v30 = ~(-1 << v29);
    }

    v31 = v30 & *(v27 + 64);
    v32 = (v29 + 63) >> 6;
    v92 = v25 + 1;
    v91 = v27;

    v33 = 0;
    if (!v31)
    {
      while (1)
      {
LABEL_6:
        v34 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
          __break(1u);
LABEL_44:
          __break(1u);
        }

        if (v34 >= v32)
        {
          break;
        }

        v31 = *(v28 + 8 * v34);
        ++v33;
        if (v31)
        {
          v33 = v34;
          goto LABEL_10;
        }
      }

      v46 = objc_opt_self();
      v47 = v100;
      v48 = v101;
      v49 = sub_1C8BD3FEC();
      v97 = 0;
      v50 = [v46 JSONObjectWithData:v49 options:0 error:&v97];

      v51 = v97;
      if (v50)
      {
        sub_1C8BD523C();
        swift_unknownObjectRelease();
        sub_1C87A9D30(v99, v102);
        __swift_project_boxed_opaque_existential_1Tm(v102, v103);
        v52 = sub_1C8BD528C();
        v97 = 0;
        v53 = [v46 dataWithJSONObject:v52 options:1 error:&v97];
        swift_unknownObjectRelease();
        v54 = v97;
        if (v53)
        {
          v55 = sub_1C8BD400C();
          v57 = v56;

          *&v99[0] = v55;
          *(&v99[0] + 1) = v57;
          v58 = *(v89 + 16);
          v61 = *(v58 + 64);
          v60 = v58 + 64;
          v59 = v61;
          v62 = 1 << *(*(v89 + 16) + 32);
          v63 = -1;
          if (v62 < 64)
          {
            v63 = ~(-1 << v62);
          }

          v64 = v63 & v59;
          v65 = (v62 + 63) >> 6;
          v91 = *(v89 + 16);

          v66 = 0;
          v67 = v96;
          if (!v64)
          {
            while (1)
            {
LABEL_20:
              v68 = v66 + 1;
              if (__OFADD__(v66, 1))
              {
                goto LABEL_44;
              }

              if (v68 >= v65)
              {
                break;
              }

              v64 = *(v60 + 8 * v68);
              ++v66;
              if (v64)
              {
                v66 = v68;
                goto LABEL_24;
              }
            }

            v80 = v99[0];
            sub_1C8BD51BC();
            v81 = sub_1C8BD51AC();
            if (v82)
            {
              v24 = v81;
            }

            else
            {
              v24 = 0xD000000000000036;
            }

            sub_1C87A997C(v80, *(&v80 + 1));
            __swift_destroy_boxed_opaque_existential_1Tm(v102);

            v83 = v100;
            v84 = v101;
            goto LABEL_38;
          }

LABEL_24:
          while (1)
          {
            v69 = __clz(__rbit64(v64)) | (v66 << 6);
            v70 = (*(v91 + 48) + 16 * v69);
            v71 = v70[1];
            v72 = *(v91 + 56) + 32 * v69;
            v73 = *(v72 + 16);
            v74 = *(v72 + 24);
            v93 = *v70;
            v94 = v71;
            sub_1C87A8FBC(v93, v71);

            sub_1C87A8FBC(v73, v74);
            sub_1C8BD51BC();
            v75 = sub_1C8BD519C();
            v77 = v76;
            (*v92)(v67, v95);
            if (v77 >> 60 == 15)
            {
              break;
            }

            type metadata accessor for SiriNLUTypesPrintUtils();
            if (v90)
            {
                ;
              }
            }

            else
            {
                ;
              }
            }

            v64 &= v64 - 1;
            sub_1C87A9A24(v75, v77);
            sub_1C87A997C(v93, v94);

            sub_1C87A997C(v73, v74);
            if (!v64)
            {
              goto LABEL_20;
            }
          }

          sub_1C87A997C(v93, v94);

          sub_1C87A997C(v73, v74);
          sub_1C87A997C(*&v99[0], *(&v99[0] + 1));
          __swift_destroy_boxed_opaque_existential_1Tm(v102);
LABEL_42:

          sub_1C87A997C(v100, v101);
          v24 = 0xD000000000000022;
          goto LABEL_39;
        }

        v85 = v54;
        v24 = 0xD00000000000001ALL;
        v86 = sub_1C8BD3FCC();

        swift_willThrow();
        __swift_destroy_boxed_opaque_existential_1Tm(v102);
      }

      else
      {
        v78 = v51;
        v24 = 0xD00000000000001ALL;
        v79 = sub_1C8BD3FCC();

        swift_willThrow();
      }

      v83 = v47;
      v84 = v48;
LABEL_38:
      sub_1C87A997C(v83, v84);
      goto LABEL_39;
    }

LABEL_10:
    while (1)
    {
      v35 = __clz(__rbit64(v31)) | (v33 << 6);
      v36 = (*(v91 + 48) + 16 * v35);
      v38 = *v36;
      v37 = v36[1];
      v39 = *(v91 + 56) + 32 * v35;
      v40 = *(v39 + 16);
      v41 = *(v39 + 24);
      sub_1C87A8FBC(*v36, v37);

      v94 = v40;
      v93 = v41;
      sub_1C87A8FBC(v40, v41);
      v42 = v96;
      sub_1C8BD51BC();
      v43 = sub_1C8BD519C();
      v45 = v44;
      (*v92)(v42, v95);
      if (v45 >> 60 == 15)
      {
        break;
      }

      type metadata accessor for SiriNLUTypesPrintUtils();
        ;
      }

      v31 &= v31 - 1;
      sub_1C87A9A24(v43, v45);
      sub_1C87A997C(v38, v37);

      sub_1C87A997C(v94, v93);
      if (!v31)
      {
        goto LABEL_6;
      }
    }

    sub_1C87A997C(v38, v37);

    sub_1C87A997C(v94, v93);
    goto LABEL_42;
  }

  __swift_storeEnumTagSinglePayload(v15, 0, 1, v16);
  sub_1C87A5594(v15, v18, type metadata accessor for Siri_Nlu_External_UsoGraph);
  static UsoGraphProtoReader.fromSwiftProtobuf(protobufGraph:vocabManager:)(v18, v93);
  v24 = sub_1C8BD426C();

  sub_1C87A9A38(v18, type metadata accessor for Siri_Nlu_External_UsoGraph);
LABEL_39:
  __swift_destroy_boxed_opaque_existential_1Tm(v104);
  return v24;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_1C8799CAC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1C8799D10@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_1C8BD512C();
  __swift_project_value_buffer(v6, a2);
  OUTLINED_FUNCTION_35_1();
  v8 = *(v7 + 16);

  return v8(a4);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t OUTLINED_FUNCTION_12_3()
{
  type metadata accessor for Siri_Nlu_Internal_Itfm_ITFMParserRequest._StorageClass(0);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_12_10()
{
  type metadata accessor for Siri_Nlu_Internal_Psc_PSCServiceRequest._StorageClass(0);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_12_11(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 16) = v2;

  return type metadata accessor for Siri_Nlu_Internal_Tokenizer_TokenizerRequest(0);
}

uint64_t OUTLINED_FUNCTION_12_12(uint64_t a1)
{
  __swift_getEnumTagSinglePayload(v3, 1, a1);

  return sub_1C8778ED8(v3, v1, v2);
}

uint64_t OUTLINED_FUNCTION_12_15()
{
  v3 = v1[7];
  v4 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Subtitle(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  v5 = v1[8];
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.AltText(0);
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  v7 = v1[9];
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation.Image(0);
  __swift_storeEnumTagSinglePayload(v0 + v7, 1, 1, v8);
  v9 = v1[10];
  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.PluginModelData(0);
  __swift_storeEnumTagSinglePayload(v0 + v9, 1, 1, v10);
  return __swift_getEnumTagSinglePayload(v2, 1, v1);
}

uint64_t OUTLINED_FUNCTION_12_16()
{
  type metadata accessor for Siri_Nlu_Internal_Snlc_SNLCParserRequest._StorageClass(0);

  return swift_allocObject();
}

uint64_t Siri_Nlu_External_UserDialogAct.wantedToProceed.setter()
{
  OUTLINED_FUNCTION_31_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B86D0, &unk_1C8BF5010);
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_170();
  if ((OUTLINED_FUNCTION_375(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_189_1();
    v3 = OUTLINED_FUNCTION_2();
    v4 = sub_1C879804C(v3);
    OUTLINED_FUNCTION_40(v4);
  }

  OUTLINED_FUNCTION_106_0();
  OUTLINED_FUNCTION_196_0();
  sub_1C879A720();
  type metadata accessor for Siri_Nlu_External_UserWantedToProceed(0);
  v5 = OUTLINED_FUNCTION_128_2();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_200();
  sub_1C8786514();
  return swift_endAccess();
}

void sub_1C879A2DC()
{
  OUTLINED_FUNCTION_101_0();
  if (v2)
  {
    OUTLINED_FUNCTION_244();
  }

  else
  {
    OUTLINED_FUNCTION_149_0();
    sub_1C8BD49FC();
    OUTLINED_FUNCTION_18_0();
    if (*(v3 + 84) == v1)
    {
      OUTLINED_FUNCTION_226_2();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6110, &qword_1C8BF5070);
      OUTLINED_FUNCTION_18_0();
      if (*(v5 + 84) == v1)
      {
        OUTLINED_FUNCTION_248_0();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2B8A70, &qword_1C8BF5078);
        OUTLINED_FUNCTION_18_0();
        if (*(v6 + 84) == v1)
        {
          v4 = *(v0 + 36);
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EC2B8A78, &unk_1C8BF5080);
          v4 = *(v0 + 40);
        }
      }
    }

    v7 = OUTLINED_FUNCTION_102_0(v4);

    __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }
}

uint64_t OUTLINED_FUNCTION_138()
{

  return sub_1C8BD49FC();
}

uint64_t Siri_Nlu_External_SystemOffered.offeredAct.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_SystemOffered(v1);
  sub_1C8778ED8(v0 + *(v2 + 20), &unk_1EC2B61F0, &qword_1C8BF50B0);
  OUTLINED_FUNCTION_55_5();
  OUTLINED_FUNCTION_200();
  sub_1C879A720();
  type metadata accessor for Siri_Nlu_External_UserDialogAct(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t static SiriNLUTypesPrintUtils.printableProtoObject(object:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v1);
  OUTLINED_FUNCTION_44_12();

  return sub_1C87990F4(v3, v4, v5, v6, v7, v1, v2);
}

uint64_t sub_1C879A6C4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_21();
  v4 = OUTLINED_FUNCTION_218();
  v5(v4);
  return a2;
}

uint64_t sub_1C879A720()
{
  v1 = OUTLINED_FUNCTION_84();
  v2(v1);
  OUTLINED_FUNCTION_21();
  v3 = OUTLINED_FUNCTION_218();
  v4(v3);
  return v0;
}

uint64_t sub_1C879A880(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6110, &qword_1C8BF5070);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v33[9] = v33 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8A98, &unk_1C8C10550);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v33[8] = v33 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8A90, &unk_1C8BF50A0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v33[7] = v33 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8A88, &unk_1C8C10560);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v33[6] = v33 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EC2B8A80, &unk_1C8BF5090);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v33[5] = v33 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B86F0, &unk_1C8BF5030);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v33[2] = v33 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EC2B86E8, &unk_1C8BF4630);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v16 = OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_SystemDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__id;
  v17 = type metadata accessor for Siri_Nlu_External_UUID(0);
  __swift_storeEnumTagSinglePayload(v1 + v16, 1, 1, v17);
  v18 = OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_SystemDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__prompted;
  v19 = type metadata accessor for Siri_Nlu_External_SystemPrompted(0);
  __swift_storeEnumTagSinglePayload(v1 + v18, 1, 1, v19);
  v20 = OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_SystemDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__offered;
  v21 = type metadata accessor for Siri_Nlu_External_SystemOffered(0);
  __swift_storeEnumTagSinglePayload(v1 + v20, 1, 1, v21);
  v22 = OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_SystemDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__gaveOptions;
  v23 = type metadata accessor for Siri_Nlu_External_SystemGaveOptions(0);
  __swift_storeEnumTagSinglePayload(v1 + v22, 1, 1, v23);
  v24 = OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_SystemDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__informed;
  v33[0] = OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_SystemDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__informed;
  v25 = type metadata accessor for Siri_Nlu_External_SystemInformed(0);
  __swift_storeEnumTagSinglePayload(v1 + v24, 1, 1, v25);
  v26 = OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_SystemDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__reportedSuccess;
  v33[1] = OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_SystemDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__reportedSuccess;
  v27 = type metadata accessor for Siri_Nlu_External_SystemReportedSuccess(0);
  __swift_storeEnumTagSinglePayload(v1 + v26, 1, 1, v27);
  v28 = OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_SystemDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__reportedFailure;
  v33[3] = OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_SystemDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__reportedFailure;
  v29 = type metadata accessor for Siri_Nlu_External_SystemReportedFailure(0);
  __swift_storeEnumTagSinglePayload(v1 + v28, 1, 1, v29);
  v30 = OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_SystemDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__renderedText;
  v33[4] = OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_SystemDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__renderedText;
  v31 = sub_1C8BD493C();
  __swift_storeEnumTagSinglePayload(v1 + v30, 1, 1, v31);
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

uint64_t OUTLINED_FUNCTION_86_0()
{

  return sub_1C8778810();
}

uint64_t OUTLINED_FUNCTION_86_2(uint64_t a1)
{
  *(v1 + 40) = *(a1 + 24);

  return sub_1C8778810();
}

uint64_t sub_1C879B104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_Internal_Token(0);
  sub_1C879B1F0(&qword_1EC2B4BE0, type metadata accessor for Siri_Nlu_Internal_Token, &protocol conformance descriptor for Siri_Nlu_Internal_Token);
  return sub_1C8BD4C6C();
}

uint64_t type metadata accessor for Siri_Nlu_Internal_Token(uint64_t a1)
{
  result = qword_1EC2B4BC8;
  if (!qword_1EC2B4BC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C879B1F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void Siri_Nlu_Internal_Token.init()(void *a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = v2;
  v3 = type metadata accessor for Siri_Nlu_Internal_Token(0);
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v4 = (a1 + v3[7]);
  *v4 = 0;
  v4[1] = 0;
  v5 = a1 + v3[8];
  *v5 = 0;
  v5[4] = 1;
  OUTLINED_FUNCTION_11_4(v3[9]);
  *(a1 + v3[10]) = 2;
  *(a1 + v3[11]) = 2;
  OUTLINED_FUNCTION_11_4(v3[12]);
  OUTLINED_FUNCTION_11_4(v3[13]);
  v6 = (a1 + v3[14]);
  *v6 = 0;
  v6[1] = 0;
}

uint64_t Siri_Nlu_Internal_Token.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1C8BD4AFC();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v6 = OUTLINED_FUNCTION_8();
        sub_1C879B428(v6, v7, v8, v9);
        break;
      case 2:
        v22 = OUTLINED_FUNCTION_8();
        sub_1C879B48C(v22, v23, v24, v25);
        break;
      case 3:
        v12 = OUTLINED_FUNCTION_8();
        sub_1C879B4F0(v12, v13, v14, v15);
        break;
      case 4:
        v16 = OUTLINED_FUNCTION_8();
        sub_1C878BF10(v16, v17);
        break;
      case 5:
        v10 = OUTLINED_FUNCTION_8();
        sub_1C879B5B8(v10, v11);
        break;
      case 6:
      case 10:
        sub_1C8BD4BDC();
        break;
      case 7:
        v26 = OUTLINED_FUNCTION_8();
        sub_1C879B554(v26, v27, v28, v29);
        break;
      case 8:
        v18 = OUTLINED_FUNCTION_8();
        sub_1C879B61C(v18, v19, v20, v21);
        break;
      case 9:
        v30 = OUTLINED_FUNCTION_8();
        sub_1C879B680(v30, v31, v32, v33);
        break;
      default:
        continue;
    }
  }
}

sirinluinternalitfm::ITFMHypothesis *sirinluinternalitfm::ITFMHypothesis::ITFMHypothesis(sirinluinternalitfm::ITFMHypothesis *this, const sirinluinternalitfm::ITFMHypothesis *a2)
{
  *this = &unk_1F4876900;
  *(this + 1) = 0;
  *(this + 6) = 0;
  if (*(a2 + 24))
  {
    v3 = *(a2 + 4);
    *(this + 24) = 1;
    *(this + 4) = v3;
    v2 = 3;
    if ((*(a2 + 24) & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v2 = 2;
  if ((*(a2 + 24) & 2) != 0)
  {
LABEL_5:
    v4 = *(a2 + 5);
    *(this + 24) = v2;
    *(this + 5) = v4;
  }

LABEL_6:
  if (*(a2 + 1))
  {
    operator new();
  }

  return this;
}

uint64_t sirinluinternalitfm::ITFMHypothesis::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 24);
  if (v4)
  {
    this = PB::Writer::writeVarInt(a2);
    v4 = *(v3 + 24);
  }

  if ((v4 & 2) != 0)
  {
    this = PB::Writer::write(a2, *(v3 + 20));
  }

  if (*(v3 + 8))
  {

    return PB::Writer::write();
  }

  return this;
}

uint64_t SIRINLUINTERNALITFMITFMParserResponseReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v27) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v27 & 0x7F) << v5;
        if ((v27 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v16 = objc_alloc_init(SIRINLUEXTERNALParser);
          objc_storeStrong((a1 + 24), v16);
          v27 = 0;
          v28 = 0;
          if (!PBReaderPlaceMark() || !SIRINLUEXTERNALParserReadFrom(v16, a2))
          {
LABEL_48:

            return 0;
          }

          goto LABEL_41;
        }

        if (v13 == 4)
        {
          v16 = objc_alloc_init(SIRINLUINTERNALITFMITFMHypothesis);
          [a1 addHypotheses:v16];
          v27 = 0;
          v28 = 0;
          if (!PBReaderPlaceMark() || !SIRINLUINTERNALITFMITFMHypothesisReadFrom(v16, a2))
          {
            goto LABEL_48;
          }

LABEL_41:
          PBReaderRecallMark();

          goto LABEL_46;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v17 = 0;
          v18 = 0;
          v19 = 0;
          *(a1 + 36) |= 2u;
          while (1)
          {
            LOBYTE(v27) = 0;
            v20 = [a2 position] + 1;
            if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
            {
              v22 = [a2 data];
              [v22 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v19 |= (v27 & 0x7F) << v17;
            if ((v27 & 0x80) == 0)
            {
              break;
            }

            v17 += 7;
            v11 = v18++ >= 9;
            if (v11)
            {
              LOBYTE(v23) = 0;
              goto LABEL_43;
            }
          }

          v23 = (v19 != 0) & ~[a2 hasError];
LABEL_43:
          *(a1 + 32) = v23;
          goto LABEL_46;
        }

        if (v13 == 2)
        {
          *(a1 + 36) |= 1u;
          LODWORD(v27) = 0;
          v14 = [a2 position] + 4;
          if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 4, v15 <= objc_msgSend(a2, "length")))
          {
            v24 = [a2 data];
            [v24 getBytes:&v27 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          *(a1 + 8) = v27;
          goto LABEL_46;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_46:
      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t __swift_get_extra_inhabitant_index_163Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_241();
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_18_0();
  if (*(v6 + 84) == a2)
  {
    v7 = OUTLINED_FUNCTION_196();

    return __swift_getEnumTagSinglePayload(v7, a2, v8);
  }

  else
  {
    v10 = *(v3 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1C879BD80()
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

uint64_t Siri_Nlu_Internal_Overrides_TurnInputAndPreprocessing.turnInput.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_74();
  v6 = type metadata accessor for Siri_Nlu_Internal_Overrides_TurnInputAndPreprocessing(v5);
  OUTLINED_FUNCTION_13(*(v6 + 32));
  OUTLINED_FUNCTION_49_8();
  v7 = type metadata accessor for Siri_Nlu_External_TurnInput(0);
  OUTLINED_FUNCTION_65(v1);
  if (v8)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v9 = *(v7 + 20);
    if (qword_1EDACCB60 != -1)
    {
      OUTLINED_FUNCTION_25(&qword_1EDACCB60);
    }

    *(a1 + v9) = qword_1EDACCB68;
    v10 = OUTLINED_FUNCTION_120();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, v11, v7);

    if (EnumTagSinglePayload != 1)
    {
      return sub_1C8778ED8(v1, &qword_1EC2B6038, &unk_1C8BE8850);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_18();
    OUTLINED_FUNCTION_121();
    return sub_1C87977A8();
  }

  return result;
}

uint64_t sub_1C879BEFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_1C8BD4AFC();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 1:
        sub_1C87A9DC4(a2, a1, a3, a4);
        break;
      case 2:
        sub_1C879C53C(a2, a1, a3, a4);
        break;
      case 3:
        sub_1C879CAA8(a2, a1, a3, a4);
        break;
      case 4:
        sub_1C879D69C(a2, a1, a3, a4);
        break;
      case 5:
        sub_1C88BF0F4(a2, a1, a3, a4);
        break;
      case 6:
        sub_1C88BF1D0(a2, a1, a3, a4);
        break;
      case 7:
        sub_1C88BF2AC(a2, a1, a3, a4);
        break;
      default:
        if (result == 101)
        {
          sub_1C88BF388(a2, a1, a3, a4);
        }

        break;
    }
  }

  return result;
}

uint64_t SIRINLUINTERNALITFMITFMHypothesisReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v29 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v29 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v29 & 0x7F) << v5;
        if ((v29 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v23 = PBReaderReadString();
        v24 = *(a1 + 16);
        *(a1 + 16) = v23;
      }

      else if (v13 == 2)
      {
        *(a1 + 24) |= 2u;
        v28 = 0;
        v21 = [a2 position] + 4;
        if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 4, v22 <= objc_msgSend(a2, "length")))
        {
          v26 = [a2 data];
          [v26 getBytes:&v28 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 12) = v28;
      }

      else if (v13 == 1)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 24) |= 1u;
        while (1)
        {
          v30 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v30 & 0x7F) << v14;
          if ((v30 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_38;
          }
        }

        v20 = [a2 hasError] ? 0 : v16;
LABEL_38:
        *(a1 + 8) = v20;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v27 = [a2 position];
    }

    while (v27 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t Siri_Nlu_External_TurnInput.turnContext.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_170();
  type metadata accessor for Siri_Nlu_External_TurnInput(v5);
  OUTLINED_FUNCTION_215_1();
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_187_1();
  type metadata accessor for Siri_Nlu_External_TurnContext(0);
  OUTLINED_FUNCTION_24_8();
  if (v6)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v7 = OUTLINED_FUNCTION_332_0();
    type metadata accessor for Siri_Nlu_External_NLContext(v7);
    v8 = OUTLINED_FUNCTION_44();
    v12 = OUTLINED_FUNCTION_231_1(v8, v9, v10, v11);
    v13 = type metadata accessor for Siri_Nlu_External_LegacyNLContext(v12);
    result = OUTLINED_FUNCTION_9_13(v13);
    if (!v6)
    {
      return sub_1C8778ED8(v0, &qword_1EC2B6010, &unk_1C8BF5040);
    }
  }

  else
  {
    OUTLINED_FUNCTION_99_2();
    OUTLINED_FUNCTION_312();
    return sub_1C879A720();
  }

  return result;
}

uint64_t sub_1C879C53C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_SystemPrompted(0);
  sub_1C8776788(&qword_1EC2B48C0, type metadata accessor for Siri_Nlu_External_SystemPrompted, &protocol conformance descriptor for Siri_Nlu_External_SystemPrompted);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t OUTLINED_FUNCTION_224_1()
{

  return sub_1C877B4F0();
}

uint64_t OUTLINED_FUNCTION_224_2(uint64_t a1)
{
  *(v1 + 40) = a1;

  return sub_1C89CBE2C();
}

uint64_t sub_1C879C850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_External_SystemPrompted(0);
  type metadata accessor for Siri_Nlu_External_UsoGraph(0);
  sub_1C8776788(&qword_1EDACCCE0, type metadata accessor for Siri_Nlu_External_UsoGraph, &protocol conformance descriptor for Siri_Nlu_External_UsoGraph);
  return sub_1C8BD4C7C();
}

uint64_t Siri_Nlu_External_UsoGraph.init()@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = v2;
  a1[2] = v2;
  a1[3] = v2;
  a1[4] = v2;
  type metadata accessor for Siri_Nlu_External_UsoGraph(0);
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  type metadata accessor for Siri_Nlu_External_SemVer(0);
  OUTLINED_FUNCTION_5();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t type metadata accessor for Siri_Nlu_External_SemVer(uint64_t a1)
{
  result = qword_1EDACE080;
  if (!qword_1EDACE080)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Siri_Nlu_Internal_TurnInputRule.ContextRule.hasTurnContext.getter()
{
  v0 = OUTLINED_FUNCTION_12();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_80(v2);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_74();
  v5 = type metadata accessor for Siri_Nlu_Internal_TurnInputRule.ContextRule(v4);
  v6 = OUTLINED_FUNCTION_13(*(v5 + 24));
  OUTLINED_FUNCTION_190_3(v6, v7);
  v8 = type metadata accessor for Siri_Nlu_External_TurnContext(0);
  OUTLINED_FUNCTION_10(v8);
  return OUTLINED_FUNCTION_235();
}

uint64_t sub_1C879CA60(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_17();
  v4 = sub_1C8BD49FC();

  return __swift_storeEnumTagSinglePayload(v2, a2, a2, v4);
}

uint64_t sub_1C879CAA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_SystemOffered(0);
  sub_1C8776788(qword_1EDACC1D8, type metadata accessor for Siri_Nlu_External_SystemOffered, &protocol conformance descriptor for Siri_Nlu_External_SystemOffered);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t OUTLINED_FUNCTION_10_2()
{

  return type metadata accessor for Siri_Nlu_External_RequestID(0);
}

uint64_t OUTLINED_FUNCTION_10_3()
{
  type metadata accessor for Siri_Nlu_Internal_MentionResolver_MentionResolverRequest._StorageClass(0);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_10_8()
{

  return sub_1C87AAA8C(v0, type metadata accessor for Siri_Nlu_External_SpanProperty);
}

uint64_t OUTLINED_FUNCTION_10_10()
{
  type metadata accessor for Siri_Nlu_Internal_MentionDetector_MentionDetectorRequest._StorageClass(0);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_10_17(uint64_t a1, uint64_t a2)
{
  *(v2 - 64) = a1;
  *(v2 - 56) = a2;
  *(v2 - 80) = 0;
  *(v2 - 112) = 0u;
  *(v2 - 96) = 0u;

  return sub_1C8BD4A9C();
}

uint64_t Siri_Nlu_External_UsoGraph.decodeMessage<A>(decoder:)()
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
        sub_1C879CEC0(v3, v4, v5, v6);
        break;
      case 2:
        v19 = OUTLINED_FUNCTION_8();
        sub_1C879D82C(v19, v20, v21, v22);
        break;
      case 3:
        v11 = OUTLINED_FUNCTION_8();
        sub_1C879E064(v11, v12, v13, v14);
        break;
      case 4:
        v15 = OUTLINED_FUNCTION_8();
        sub_1C880F870(v15, v16, v17, v18);
        break;
      case 5:
        v7 = OUTLINED_FUNCTION_8();
        sub_1C880F910(v7, v8, v9, v10);
        break;
      case 6:
        v23 = OUTLINED_FUNCTION_8();
        sub_1C880F9B0(v23, v24, v25, v26);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C879CEC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_External_UsoGraph(0);
  type metadata accessor for Siri_Nlu_External_SemVer(0);
  sub_1C879D08C(&qword_1EDACCD70, type metadata accessor for Siri_Nlu_External_SemVer, &protocol conformance descriptor for Siri_Nlu_External_SemVer);
  return sub_1C8BD4C7C();
}

uint64_t Siri_Nlu_Internal_TurnInputRule.ContextRule.turnContext.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_170();
  type metadata accessor for Siri_Nlu_Internal_TurnInputRule.ContextRule(v5);
  OUTLINED_FUNCTION_232();
  sub_1C87867A0(v6, v7, v8, &unk_1C8BF5040);
  type metadata accessor for Siri_Nlu_External_TurnContext(0);
  OUTLINED_FUNCTION_65(v0);
  if (v9)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    type metadata accessor for Siri_Nlu_External_NLContext(0);
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
    type metadata accessor for Siri_Nlu_External_LegacyNLContext(0);
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
    result = OUTLINED_FUNCTION_65(v0);
    if (!v9)
    {
      return sub_1C8778ED8(v0, &qword_1EC2B6010, &unk_1C8BF5040);
    }
  }

  else
  {
    OUTLINED_FUNCTION_24_14();
    return OUTLINED_FUNCTION_227_2();
  }

  return result;
}

uint64_t sub_1C879D08C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t Siri_Nlu_Internal_TurnInputRule.ContextRule.sdaComparisonMode.getter()
{
  v2 = OUTLINED_FUNCTION_207();
  result = type metadata accessor for Siri_Nlu_Internal_TurnInputRule.ContextRule(v2);
  *v0 = *(v1 + *(result + 32)) & 1;
  return result;
}

uint64_t sub_1C879D108(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  OUTLINED_FUNCTION_137_1();
  while (1)
  {
    result = sub_1C8BD4AFC();
    if (v4 || (v7 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      v8 = OUTLINED_FUNCTION_307();
      a4(v8);
    }
  }

  return result;
}

int *Siri_Nlu_External_SemVer.init()@<X0>(uint64_t a2@<X8>)
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  result = type metadata accessor for Siri_Nlu_External_SemVer(0);
  v4 = a2 + result[5];
  *v4 = 0;
  *(v4 + 4) = 1;
  v5 = a2 + result[6];
  *v5 = 0;
  *(v5 + 4) = 1;
  v6 = a2 + result[7];
  *v6 = 0;
  *(v6 + 4) = 1;
  return result;
}

uint64_t Siri_Nlu_External_TurnContext.nlContext.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_220();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_170();
  type metadata accessor for Siri_Nlu_External_TurnContext(v7);
  OUTLINED_FUNCTION_232();
  sub_1C8778810();
  type metadata accessor for Siri_Nlu_External_NLContext(0);
  OUTLINED_FUNCTION_24_8();
  if (v8)
  {
    v9 = MEMORY[0x1E69E7CC0];
    *a1 = MEMORY[0x1E69E7CC0];
    a1[1] = v9;
    a1[2] = v9;
    a1[3] = v9;
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v10 = type metadata accessor for Siri_Nlu_External_SystemDialogActGroup(0);
    result = OUTLINED_FUNCTION_9_13(v10);
    if (!v8)
    {
      return sub_1C8778ED8(v1, &qword_1EC2B6000, &qword_1C8BF5050);
    }
  }

  else
  {
    OUTLINED_FUNCTION_61_5();
    OUTLINED_FUNCTION_312();
    return sub_1C879A720();
  }

  return result;
}

uint64_t sub_1C879D330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_External_SystemOffered(0);
  type metadata accessor for Siri_Nlu_External_UserDialogAct(0);
  sub_1C8776788(&qword_1EDACBDF8, type metadata accessor for Siri_Nlu_External_UserDialogAct, &protocol conformance descriptor for Siri_Nlu_External_UserDialogAct);
  return sub_1C8BD4C7C();
}

uint64_t Siri_Nlu_External_SemVer.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
        sub_1C879D778(v14, v15, v16, v17);
        break;
      case 2:
        v10 = OUTLINED_FUNCTION_8();
        sub_1C879D4FC(v10, v11, v12, v13);
        break;
      case 1:
        v6 = OUTLINED_FUNCTION_8();
        sub_1C879D48C(v6, v7, v8, v9);
        break;
    }
  }

  return result;
}

uint64_t sub_1C879D560()
{
  OUTLINED_FUNCTION_50();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_211();
  v7 = v1(0);
  OUTLINED_FUNCTION_329_0(v7);
  OUTLINED_FUNCTION_85_1();
  sub_1C8778810();
  v8 = v0(0);
  OUTLINED_FUNCTION_140_1(v2, v9, v8);
  OUTLINED_FUNCTION_119();
  sub_1C8778ED8(v10, v11, v12);
  return OUTLINED_FUNCTION_216_0();
}

uint64_t sub_1C879D69C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_SystemGaveOptions(0);
  sub_1C8776788(&qword_1EC2B4850, type metadata accessor for Siri_Nlu_External_SystemGaveOptions, &protocol conformance descriptor for Siri_Nlu_External_SystemGaveOptions);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t Siri_Nlu_External_SystemGaveOptions.init()()
{
  v0 = OUTLINED_FUNCTION_143_1(MEMORY[0x1E69E7CC0]);
  type metadata accessor for Siri_Nlu_External_SystemGaveOptions(v0);
  OUTLINED_FUNCTION_109_0();
  return _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
}

uint64_t sub_1C879D82C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_External_UsoNode(0);
  sub_1C879D08C(&qword_1EDACCD10, type metadata accessor for Siri_Nlu_External_UsoNode, &protocol conformance descriptor for Siri_Nlu_External_UsoNode);
  return sub_1C8BD4C6C();
}

void OUTLINED_FUNCTION_233_1()
{
  if (v0)
  {
    v3 = v1;
  }

  else
  {
    v3 = 0;
  }

  *v2 = v3;
}

uint64_t OUTLINED_FUNCTION_324(uint64_t a1)
{

  return sub_1C8BD517C();
}

void Siri_Nlu_External_UsoNode.init()(void *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  type metadata accessor for Siri_Nlu_External_UsoNode(0);
  OUTLINED_FUNCTION_122_0();
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  OUTLINED_FUNCTION_16_3(a1 + v1[6]);
  sub_1C8BD493C();
  OUTLINED_FUNCTION_5();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  sub_1C8BD48BC();
  OUTLINED_FUNCTION_5();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  sub_1C8BD499C();
  OUTLINED_FUNCTION_5();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  OUTLINED_FUNCTION_18_2(v1[10]);
  OUTLINED_FUNCTION_18_2(v1[11]);
}

uint64_t sub_1C879D9EC()
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

void Siri_Nlu_External_SystemGaveOptions.decodeMessage<A>(decoder:)()
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

    if (v1 == 1)
    {
      OUTLINED_FUNCTION_348();
      OUTLINED_FUNCTION_8();
      sub_1C879DC10();
    }
  }
}

uint64_t OUTLINED_FUNCTION_108_2(uint64_t a1)
{

  return sub_1C87867A0(a1, v3, v1, v2);
}

uint64_t sub_1C879DB88(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1C8BD49FC();
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void sub_1C879DC10()
{
  OUTLINED_FUNCTION_189();
  v1 = OUTLINED_FUNCTION_129();
  v2(v1);
  v3 = OUTLINED_FUNCTION_254_0();
  sub_1C8776788(v3, v4, v0);
  v5 = OUTLINED_FUNCTION_491();
  OUTLINED_FUNCTION_529(v5, v6, v7);
  OUTLINED_FUNCTION_190();
}

uint64_t Siri_Nlu_External_UsoNode.decodeMessage<A>(decoder:)()
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
        sub_1C879DE30(v3, v4, v5, v6, v7, v8);
        break;
      case 2:
        v17 = OUTLINED_FUNCTION_8();
        sub_1C879DFB0(v17, v18, v19, v20);
        break;
      case 3:
        v13 = OUTLINED_FUNCTION_8();
        sub_1C88101FC(v13, v14, v15, v16);
        break;
      case 4:
        OUTLINED_FUNCTION_8();
        sub_1C879DF1C();
        break;
      case 5:
        v9 = OUTLINED_FUNCTION_8();
        sub_1C88102B0(v9, v10, v11, v12);
        break;
      case 6:
        v21 = OUTLINED_FUNCTION_8();
        sub_1C87A3B10(v21, v22, v23, v24);
        break;
      case 7:
        OUTLINED_FUNCTION_119();
        sub_1C8BD4BDC();
        break;
      default:
        continue;
    }
  }
}

uint64_t Siri_Nlu_Internal_Token.begin.getter()
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

uint64_t Siri_Nlu_Internal_Token.end.getter()
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

uint64_t OUTLINED_FUNCTION_325(uint64_t a1)
{

  return sub_1C8BD517C();
}

uint64_t Siri_Nlu_Internal_MatchingSpan.label.setter()
{
  v4 = OUTLINED_FUNCTION_68_5();
  v6 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_25_10();
    v7 = OUTLINED_FUNCTION_2();
    v8 = sub_1C878F828(v7);
    OUTLINED_FUNCTION_40(v8);
  }

  OUTLINED_FUNCTION_178_0(v6 + 16, v5);
  *(v6 + 16) = v2;
  *(v6 + 24) = v0;
}

uint64_t sub_1C879DF1C()
{
  v0 = OUTLINED_FUNCTION_93();
  v1(v0);
  sub_1C8BD499C();
  OUTLINED_FUNCTION_0_5();
  sub_1C879D08C(v2, v3, MEMORY[0x1E69AA9B0]);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C879DFB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_External_UsoNode(0);
  sub_1C8BD493C();
  sub_1C879D08C(&qword_1EDACA318, MEMORY[0x1E69AA9A0], MEMORY[0x1E69AA998]);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C879E064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_External_UsoEdge(0);
  sub_1C879D08C(&qword_1EDACCD40, type metadata accessor for Siri_Nlu_External_UsoEdge, &protocol conformance descriptor for Siri_Nlu_External_UsoEdge);
  return sub_1C8BD4C6C();
}

uint64_t sub_1C879E104()
{
  OUTLINED_FUNCTION_12_0();
  v3 = v2;
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v4 = v1(0);
  OUTLINED_FUNCTION_16_3(v3 + *(v4 + 20));
  v6 = v3 + *(v5 + 24);
  *v6 = 0;
  *(v6 + 4) = v7;
  v0(0);
  OUTLINED_FUNCTION_5();

  return __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
}

uint64_t OUTLINED_FUNCTION_178_0(uint64_t a1, uint64_t a2, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_178_4(uint64_t a1)
{

  return sub_1C8BD4E2C();
}

uint64_t Siri_Nlu_Internal_MatchingSpan.startTokenIndex.setter(int a1)
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

  result = OUTLINED_FUNCTION_178_0(v7 + 48, v6);
  *(v7 + 48) = a1;
  *(v7 + 52) = 0;
  return result;
}

uint64_t Siri_Nlu_Internal_MatchingSpan.endTokenIndex.setter(int a1)
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

  result = OUTLINED_FUNCTION_178_0(v7 + 56, v6);
  *(v7 + 56) = a1;
  *(v7 + 60) = 0;
  return result;
}

uint64_t Siri_Nlu_Internal_MatchingSpan.input.setter()
{
  v4 = OUTLINED_FUNCTION_68_5();
  v6 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_25_10();
    v7 = OUTLINED_FUNCTION_2();
    v8 = sub_1C878F828(v7);
    OUTLINED_FUNCTION_40(v8);
  }

  OUTLINED_FUNCTION_178_0(v6 + 32, v5);
  *(v6 + 32) = v2;
  *(v6 + 40) = v0;
}

void __swift_store_extra_inhabitant_index_164Tm()
{
  OUTLINED_FUNCTION_149_0();
  v4 = v3;
  OUTLINED_FUNCTION_17();
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_18_0();
  if (*(v5 + 84) == v2)
  {
    v6 = OUTLINED_FUNCTION_147_2();

    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  }

  else
  {
    *(v0 + *(v1 + 20) + 8) = v4;
  }
}

uint64_t sub_1C879E498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), void (*a6)(uint64_t))
{
  while (1)
  {
    OUTLINED_FUNCTION_234();
    result = sub_1C8BD4AFC();
    if (v6 || (v10 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        v16 = OUTLINED_FUNCTION_163_0();
        a6(v16);
        break;
      case 2:
        v11 = OUTLINED_FUNCTION_163_0();
        sub_1C879DE30(v11, v12, v13, v14, a5, v15);
        break;
      case 1:
        OUTLINED_FUNCTION_163_0();
        sub_1C879E5A8();
        break;
    }
  }

  return result;
}

uint64_t sirinluinternalitfm::ITFMHypothesis::ITFMHypothesis(uint64_t this)
{
  *this = &unk_1F4876900;
  *(this + 8) = 0;
  *(this + 24) = 0;
  return this;
}

{
  *this = &unk_1F4876900;
  *(this + 8) = 0;
  *(this + 24) = 0;
  return this;
}

uint64_t Siri_Nlu_Internal_TurnInputRule.UtteranceRule.SpanDataForNamedCaptureGroup.targetUdaIdx.getter()
{
  type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule.SpanDataForNamedCaptureGroup(0);
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

uint64_t sub_1C879E5A8()
{
  v0 = OUTLINED_FUNCTION_93();
  v1(v0);
  OUTLINED_FUNCTION_119();
  return sub_1C8BD4C3C();
}

uint64_t Siri_Nlu_Internal_TurnInputRule.UtteranceRule.SpanDataForNamedCaptureGroup.targetNodeIdx.getter()
{
  type metadata accessor for Siri_Nlu_Internal_TurnInputRule.UtteranceRule.SpanDataForNamedCaptureGroup(0);
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

uint64_t OUTLINED_FUNCTION_161_2()
{
  *(v1 - 88) = v0;

  return sub_1C8778810();
}

void OUTLINED_FUNCTION_96_0(uint64_t a1@<X8>)
{
  v3 = v1 + a1;
  *v3 = 0;
  *(v3 + 4) = v2;
}

uint64_t OUTLINED_FUNCTION_96_4(uint64_t a1)
{

  return sub_1C87867A0(a1, v3, v1, v2);
}

uint64_t sub_1C879E720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_External_UsoEdge(0);
  type metadata accessor for Siri_Nlu_External_UsoEdgeLabel(0);
  sub_1C879D08C(&qword_1EDACC360, type metadata accessor for Siri_Nlu_External_UsoEdgeLabel, &protocol conformance descriptor for Siri_Nlu_External_UsoEdgeLabel);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C879E7F8()
{
  sub_1C8778ED8(v0 + OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__systemDialogActGroup, &qword_1EC2B5FF0, &qword_1C8BE6CA8);

  sub_1C8778ED8(v0 + OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__turnContext, &qword_1EC2B6010, &unk_1C8BF5040);

  sub_1C8778ED8(v0 + OBJC_IVAR____TtCV12SiriNLUTypes27Siri_Nlu_External_TurnInputP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__correctionOutcomeOverride, &qword_1EC2B6EF0, &unk_1C8BEBC70);
  return v0;
}

uint64_t sub_1C879E98C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
      case 3:
        sub_1C87A3BFC(a2, a1, a3, a4);
        break;
      case 4:
        sub_1C88B3ED4(a2, a1, a3, a4);
        break;
      case 5:
      case 11:
        continue;
      case 6:
        sub_1C88B3FB0(a2, a1, a3, a4);
        break;
      case 7:
        sub_1C88B408C(a2, a1, a3, a4);
        break;
      case 8:
        sub_1C88B4168(a2, a1, a3, a4);
        break;
      case 9:
        sub_1C879EB68(a2, a1, a3, a4);
        break;
      case 10:
        sub_1C88B4244(a2, a1, a3, a4);
        break;
      case 12:
        sub_1C88B4320(a2, a1, a3, a4);
        break;
      case 13:
        sub_1C879ECF0(a2, a1, a3, a4);
        break;
      case 14:
        sub_1C88B43FC(a2, a1, a3, a4);
        break;
      default:
        if (result == 101)
        {
          sub_1C88B44D8(a2, a1, a3, a4);
        }

        break;
    }
  }
}

uint64_t sub_1C879EB68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_UserWantedToProceed(0);
  sub_1C8776788(qword_1EDACAB48, type metadata accessor for Siri_Nlu_External_UserWantedToProceed, &protocol conformance descriptor for Siri_Nlu_External_UserWantedToProceed);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C879ECF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_UserStatedTask(0);
  sub_1C8776788(&qword_1EDACBA78, type metadata accessor for Siri_Nlu_External_UserStatedTask, &protocol conformance descriptor for Siri_Nlu_External_UserStatedTask);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C879EE78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_Internal_TurnInputRule.ContextRule(0);
  sub_1C879EEEC();
  return sub_1C8BD4B4C();
}

unint64_t sub_1C879EEEC()
{
  result = qword_1EC2B4188;
  if (!qword_1EC2B4188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B4188);
  }

  return result;
}

SiriNLUTypes::Siri_Nlu_Internal_TurnInputRule::ContextRule::SDAContextComparisonMode_optional __swiftcall Siri_Nlu_Internal_TurnInputRule.ContextRule.SDAContextComparisonMode.init(rawValue:)(Swift::Int rawValue)
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

uint64_t sub_1C879F048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_External_UserWantedToProceed(0);
  type metadata accessor for Siri_Nlu_External_UsoGraph(0);
  sub_1C8776788(&qword_1EDACCCE0, type metadata accessor for Siri_Nlu_External_UsoGraph, &protocol conformance descriptor for Siri_Nlu_External_UsoGraph);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C879F0FC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t (*a5)(void))
{
  a4(0);
  OUTLINED_FUNCTION_119();
  result = a5();
  if (!v5)
  {
    OUTLINED_FUNCTION_97();
    return sub_1C8BD49DC();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Siri_Nlu_Internal_Queryrewrite_QRHypothesis.QRRewriteType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1C879F1FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v67 = a4;
  v68 = a3;
  v65 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6110, &qword_1C8BF5070);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v47 = &v43 - v5;
  v48 = sub_1C8BD493C();
  v45 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v44 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8A98, &unk_1C8C10550);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v50 = &v43 - v8;
  v51 = type metadata accessor for Siri_Nlu_External_SystemReportedFailure(0);
  MEMORY[0x1EEE9AC00](v51);
  v46 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8A90, &unk_1C8BF50A0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v64 = &v43 - v11;
  v53 = type metadata accessor for Siri_Nlu_External_SystemReportedSuccess(0);
  MEMORY[0x1EEE9AC00](v53);
  v49 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8A88, &unk_1C8C10560);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v58 = &v43 - v14;
  v55 = type metadata accessor for Siri_Nlu_External_SystemInformed(0);
  MEMORY[0x1EEE9AC00](v55);
  v52 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EC2B8A80, &unk_1C8BF5090);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v63 = &v43 - v17;
  v57 = type metadata accessor for Siri_Nlu_External_SystemGaveOptions(0);
  MEMORY[0x1EEE9AC00](v57);
  v54 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B86F0, &unk_1C8BF5030);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v60 = &v43 - v20;
  v61 = type metadata accessor for Siri_Nlu_External_SystemOffered(0);
  MEMORY[0x1EEE9AC00](v61);
  v56 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EC2B86E8, &unk_1C8BF4630);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v43 - v23;
  v62 = type metadata accessor for Siri_Nlu_External_SystemPrompted(0);
  MEMORY[0x1EEE9AC00](v62);
  v59 = &v43 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v28 = &v43 - v27;
  v29 = type metadata accessor for Siri_Nlu_External_UUID(0);
  MEMORY[0x1EEE9AC00](v29);
  swift_beginAccess();
  sub_1C8778810();
  if (__swift_getEnumTagSinglePayload(v28, 1, v29) == 1)
  {
    sub_1C8778ED8(v28, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    v30 = v66;
  }

  else
  {
    sub_1C879A720();
    sub_1C8776788(&qword_1EDACCE50, type metadata accessor for Siri_Nlu_External_UUID, &protocol conformance descriptor for Siri_Nlu_External_UUID);
    v31 = v66;
    sub_1C8BD4E2C();
    v30 = v31;
    if (v31)
    {
      return sub_1C87A0410();
    }

    sub_1C87A0410();
  }

  swift_beginAccess();
  sub_1C8778810();
  if (__swift_getEnumTagSinglePayload(v24, 1, v62) == 1)
  {
    sub_1C8778ED8(v24, &dword_1EC2B86E8, &unk_1C8BF4630);
    v33 = v64;
    v34 = v63;
  }

  else
  {
    sub_1C879A720();
    sub_1C8776788(&qword_1EC2B48C0, type metadata accessor for Siri_Nlu_External_SystemPrompted, &protocol conformance descriptor for Siri_Nlu_External_SystemPrompted);
    sub_1C8BD4E2C();
    result = sub_1C87A0410();
    v33 = v64;
    v34 = v63;
    if (v30)
    {
      return result;
    }
  }

  swift_beginAccess();
  v35 = v60;
  sub_1C8778810();
  if (__swift_getEnumTagSinglePayload(v35, 1, v61) == 1)
  {
    sub_1C8778ED8(v35, &qword_1EC2B86F0, &unk_1C8BF5030);
  }

  else
  {
    sub_1C879A720();
    sub_1C8776788(qword_1EDACC1D8, type metadata accessor for Siri_Nlu_External_SystemOffered, &protocol conformance descriptor for Siri_Nlu_External_SystemOffered);
    sub_1C8BD4E2C();
    result = sub_1C87A0410();
    if (v30)
    {
      return result;
    }

    v33 = v64;
  }

  swift_beginAccess();
  sub_1C8778810();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v34, 1, v57);
  v37 = v58;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8778ED8(v34, &dword_1EC2B8A80, &unk_1C8BF5090);
  }

  else
  {
    sub_1C879A720();
    sub_1C8776788(&qword_1EC2B4850, type metadata accessor for Siri_Nlu_External_SystemGaveOptions, &protocol conformance descriptor for Siri_Nlu_External_SystemGaveOptions);
    sub_1C8BD4E2C();
    result = sub_1C87A0410();
    if (v30)
    {
      return result;
    }
  }

  swift_beginAccess();
  sub_1C8778810();
  if (__swift_getEnumTagSinglePayload(v37, 1, v55) == 1)
  {
    sub_1C8778ED8(v37, &qword_1EC2B8A88, &unk_1C8C10560);
  }

  else
  {
    sub_1C879A720();
    sub_1C8776788(&qword_1EC2B8DA0, type metadata accessor for Siri_Nlu_External_SystemInformed, &protocol conformance descriptor for Siri_Nlu_External_SystemInformed);
    sub_1C8BD4E2C();
    result = sub_1C87A0410();
    if (v30)
    {
      return result;
    }
  }

  swift_beginAccess();
  sub_1C8778810();
  if (__swift_getEnumTagSinglePayload(v33, 1, v53) == 1)
  {
    sub_1C8778ED8(v33, &qword_1EC2B8A90, &unk_1C8BF50A0);
  }

  else
  {
    sub_1C879A720();
    sub_1C8776788(&qword_1EC2B8DB8, type metadata accessor for Siri_Nlu_External_SystemReportedSuccess, &protocol conformance descriptor for Siri_Nlu_External_SystemReportedSuccess);
    sub_1C8BD4E2C();
    result = sub_1C87A0410();
    if (v30)
    {
      return result;
    }
  }

  swift_beginAccess();
  v38 = v50;
  sub_1C8778810();
  if (__swift_getEnumTagSinglePayload(v38, 1, v51) == 1)
  {
    sub_1C8778ED8(v38, &qword_1EC2B8A98, &unk_1C8C10550);
  }

  else
  {
    sub_1C879A720();
    sub_1C8776788(&qword_1EC2B8DD0, type metadata accessor for Siri_Nlu_External_SystemReportedFailure, &protocol conformance descriptor for Siri_Nlu_External_SystemReportedFailure);
    sub_1C8BD4E2C();
    result = sub_1C87A0410();
    if (v30)
    {
      return result;
    }
  }

  swift_beginAccess();
  v39 = v47;
  sub_1C8778810();
  v40 = v48;
  if (__swift_getEnumTagSinglePayload(v39, 1, v48) == 1)
  {
    return sub_1C8778ED8(v39, &qword_1EC2B6110, &qword_1C8BF5070);
  }

  v41 = v45;
  v42 = v44;
  (*(v45 + 32))(v44, v39, v40);
  sub_1C8776788(&qword_1EDACA318, MEMORY[0x1E69AA9A0], MEMORY[0x1E69AA998]);
  sub_1C8BD4E2C();
  return (*(v41 + 8))(v42, v40);
}

uint64_t sub_1C87A0138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_External_UserStatedTask(0);
  type metadata accessor for Siri_Nlu_External_UsoGraph(0);
  sub_1C8776788(&qword_1EDACCCE0, type metadata accessor for Siri_Nlu_External_UsoGraph, &protocol conformance descriptor for Siri_Nlu_External_UsoGraph);
  return sub_1C8BD4C7C();
}

_BYTE *storeEnumTagSinglePayload for Siri_Nlu_Internal_TurnInputRule.ContextRule.SDAContextComparisonMode(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1C87A02B8);
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

uint64_t Siri_Nlu_External_UUID.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Siri_Nlu_External_UUID(0);
  if ((*(v3 + v5[5] + 8) & 1) != 0 || (result = sub_1C8BD4DFC(), !v4))
  {
    if ((*(v3 + v5[6] + 8) & 1) != 0 || (result = sub_1C8BD4DFC(), !v4))
    {
      if (*(v3 + v5[7]) == 6)
      {
        return sub_1C8BD49DC();
      }

      sub_1C88208E4();
      result = sub_1C8BD4D4C();
      if (!v4)
      {
        return sub_1C8BD49DC();
      }
    }
  }

  return result;
}

uint64_t sub_1C87A0410()
{
  v1 = OUTLINED_FUNCTION_241();
  v2(v1);
  OUTLINED_FUNCTION_21();
  (*(v3 + 8))(v0);
  return v0;
}

void Siri_Nlu_External_SystemOffered.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_444(v2, v3, v4);
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2B61F0, &qword_1C8BF50B0);
  OUTLINED_FUNCTION_80(v7);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_17_4();
  type metadata accessor for Siri_Nlu_External_UserDialogAct(v9);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_33();
  v11 = OUTLINED_FUNCTION_402();
  v12 = type metadata accessor for Siri_Nlu_External_SystemOffered(v11);
  OUTLINED_FUNCTION_82(v12);
  v13 = OUTLINED_FUNCTION_158_1();
  OUTLINED_FUNCTION_188_0(v13, v14);
  if (v15)
  {
    sub_1C8778ED8(v1, &unk_1EC2B61F0, &qword_1C8BF50B0);
LABEL_5:
    OUTLINED_FUNCTION_260_0();
    sub_1C8BD49DC();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_55_5();
  OUTLINED_FUNCTION_127_0();
  sub_1C879A720();
  OUTLINED_FUNCTION_174_1();
  sub_1C8776788(v16, v17, &protocol conformance descriptor for Siri_Nlu_External_UserDialogAct);
  OUTLINED_FUNCTION_298_0();
  OUTLINED_FUNCTION_328();
  OUTLINED_FUNCTION_504(v18, v19, v20, v21, v6);
  OUTLINED_FUNCTION_356();
  sub_1C87A0410();
  if (!v0)
  {
    goto LABEL_5;
  }

LABEL_6:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

uint64_t OUTLINED_FUNCTION_25_10()
{
  type metadata accessor for Siri_Nlu_Internal_MatchingSpan._StorageClass(0);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_156_0()
{

  return sub_1C87A3B74();
}

uint64_t OUTLINED_FUNCTION_156_2(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

uint64_t sub_1C87A07FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v84 = a2;
  v85 = a4;
  v87 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8A68, &qword_1C8BF5068);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v57 = v56 - v6;
  v58 = type metadata accessor for Siri_Nlu_External_UtteranceAlignment(0);
  MEMORY[0x1EEE9AC00](v58);
  v56[1] = v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B86C0, &unk_1C8BF5020);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v60 = v56 - v9;
  v61 = type metadata accessor for Siri_Nlu_External_UserWantedToUndo(0);
  MEMORY[0x1EEE9AC00](v61);
  v56[2] = v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2B61D8, &unk_1C8BF4FD0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v63 = v56 - v12;
  v64 = type metadata accessor for Siri_Nlu_External_UserStatedTask(0);
  MEMORY[0x1EEE9AC00](v64);
  v59 = v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B86C8, &unk_1C8C10570);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v66 = v56 - v15;
  v67 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct(0);
  MEMORY[0x1EEE9AC00](v67);
  v62 = v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6E18, &qword_1C8BEBC48);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v69 = v56 - v18;
  v70 = type metadata accessor for Siri_Nlu_External_UserWantedToPause(0);
  MEMORY[0x1EEE9AC00](v70);
  v65 = v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B86D0, &unk_1C8BF5010);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v72 = v56 - v21;
  v73 = type metadata accessor for Siri_Nlu_External_UserWantedToProceed(0);
  MEMORY[0x1EEE9AC00](v73);
  v68 = v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B86D8, &qword_1C8BF4620);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v78 = v56 - v24;
  v75 = type metadata accessor for Siri_Nlu_External_UserAcknowledged(0);
  MEMORY[0x1EEE9AC00](v75);
  v71 = v56 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6E10, &unk_1C8BF5000);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v76 = v56 - v27;
  v77 = type metadata accessor for Siri_Nlu_External_UserWantedToRepeat(0);
  MEMORY[0x1EEE9AC00](v77);
  v74 = v56 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6E20, &unk_1C8BF4FF0);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v83 = v56 - v30;
  v80 = type metadata accessor for Siri_Nlu_External_UserCancelled(0);
  MEMORY[0x1EEE9AC00](v80);
  v81 = v56 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6E28, &unk_1C8C10580);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v34 = v56 - v33;
  v82 = type metadata accessor for Siri_Nlu_External_UserRejected(0);
  MEMORY[0x1EEE9AC00](v82);
  v79 = v56 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2B6330, &unk_1C8BF4FE0);
  MEMORY[0x1EEE9AC00](v36 - 8);
  v38 = v56 - v37;
  v39 = type metadata accessor for Siri_Nlu_External_UserAccepted(0);
  MEMORY[0x1EEE9AC00](v39);
  swift_beginAccess();
  v86 = a1;
  sub_1C8778810();
  if (__swift_getEnumTagSinglePayload(v38, 1, v39) == 1)
  {
    sub_1C8778ED8(v38, &unk_1EC2B6330, &unk_1C8BF4FE0);
    v40 = v88;
  }

  else
  {
    sub_1C879A720();
    sub_1C8776788(&qword_1EC2B4AF8, type metadata accessor for Siri_Nlu_External_UserAccepted, &protocol conformance descriptor for Siri_Nlu_External_UserAccepted);
    v41 = v88;
    sub_1C8BD4E2C();
    if (v41)
    {
      return sub_1C87A0410();
    }

    v40 = 0;
    sub_1C87A0410();
  }

  swift_beginAccess();
  sub_1C8778810();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v34, 1, v82);
  v43 = v83;
  if (EnumTagSinglePayload == 1)
  {
    v88 = v40;
    sub_1C8778ED8(v34, &qword_1EC2B6E28, &unk_1C8C10580);
  }

  else
  {
    sub_1C879A720();
    sub_1C8776788(qword_1EDACC430, type metadata accessor for Siri_Nlu_External_UserRejected, &protocol conformance descriptor for Siri_Nlu_External_UserRejected);
    sub_1C8BD4E2C();
    if (v40)
    {
      return sub_1C87A0410();
    }

    v88 = 0;
    sub_1C87A0410();
  }

  swift_beginAccess();
  sub_1C8778810();
  if (__swift_getEnumTagSinglePayload(v43, 1, v80) == 1)
  {
    sub_1C8778ED8(v43, &qword_1EC2B6E20, &unk_1C8BF4FF0);
    v44 = v88;
  }

  else
  {
    sub_1C879A720();
    sub_1C8776788(&qword_1EC2B41C8, type metadata accessor for Siri_Nlu_External_UserCancelled, &protocol conformance descriptor for Siri_Nlu_External_UserCancelled);
    v45 = v88;
    sub_1C8BD4E2C();
    v44 = v45;
    if (v45)
    {
      return sub_1C87A0410();
    }

    sub_1C87A0410();
  }

  swift_beginAccess();
  v46 = v76;
  sub_1C8778810();
  v47 = __swift_getEnumTagSinglePayload(v46, 1, v77);
  v48 = v78;
  if (v47 == 1)
  {
    sub_1C8778ED8(v46, &qword_1EC2B6E10, &unk_1C8BF5000);
  }

  else
  {
    sub_1C879A720();
    sub_1C8776788(&qword_1EC2B4028, type metadata accessor for Siri_Nlu_External_UserWantedToRepeat, &protocol conformance descriptor for Siri_Nlu_External_UserWantedToRepeat);
    sub_1C8BD4E2C();
    if (v44)
    {
      return sub_1C87A0410();
    }

    sub_1C87A0410();
  }

  swift_beginAccess();
  sub_1C8778810();
  if (__swift_getEnumTagSinglePayload(v48, 1, v75) == 1)
  {
    sub_1C8778ED8(v48, &qword_1EC2B86D8, &qword_1C8BF4620);
    goto LABEL_23;
  }

  sub_1C879A720();
  sub_1C8776788(&qword_1EC2B8D10, type metadata accessor for Siri_Nlu_External_UserAcknowledged, &protocol conformance descriptor for Siri_Nlu_External_UserAcknowledged);
  sub_1C8BD4E2C();
  if (v44)
  {
    return sub_1C87A0410();
  }

  sub_1C87A0410();
LABEL_23:
  swift_beginAccess();
  v50 = v72;
  sub_1C8778810();
  if (__swift_getEnumTagSinglePayload(v50, 1, v73) == 1)
  {
    sub_1C8778ED8(v50, &qword_1EC2B86D0, &unk_1C8BF5010);
  }

  else
  {
    sub_1C879A720();
    sub_1C8776788(qword_1EDACAB48, type metadata accessor for Siri_Nlu_External_UserWantedToProceed, &protocol conformance descriptor for Siri_Nlu_External_UserWantedToProceed);
    sub_1C8BD4E2C();
    result = sub_1C87A0410();
    if (v44)
    {
      return result;
    }
  }

  swift_beginAccess();
  v51 = v69;
  sub_1C8778810();
  if (__swift_getEnumTagSinglePayload(v51, 1, v70) == 1)
  {
    sub_1C8778ED8(v51, &qword_1EC2B6E18, &qword_1C8BEBC48);
  }

  else
  {
    sub_1C879A720();
    sub_1C8776788(&qword_1EC2B40B8, type metadata accessor for Siri_Nlu_External_UserWantedToPause, &protocol conformance descriptor for Siri_Nlu_External_UserWantedToPause);
    sub_1C8BD4E2C();
    result = sub_1C87A0410();
    if (v44)
    {
      return result;
    }
  }

  swift_beginAccess();
  v52 = v66;
  sub_1C8778810();
  if (__swift_getEnumTagSinglePayload(v52, 1, v67) == 1)
  {
    sub_1C8778ED8(v52, &qword_1EC2B86C8, &unk_1C8C10570);
  }

  else
  {
    sub_1C879A720();
    sub_1C8776788(&qword_1EC2B4740, type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct, &protocol conformance descriptor for Siri_Nlu_External_DelegatedUserDialogAct);
    sub_1C8BD4E2C();
    result = sub_1C87A0410();
    if (v44)
    {
      return result;
    }
  }

  swift_beginAccess();
  v53 = v63;
  sub_1C8778810();
  if (__swift_getEnumTagSinglePayload(v53, 1, v64) == 1)
  {
    sub_1C8778ED8(v53, &unk_1EC2B61D8, &unk_1C8BF4FD0);
  }

  else
  {
    sub_1C879A720();
    sub_1C8776788(&qword_1EDACBA78, type metadata accessor for Siri_Nlu_External_UserStatedTask, &protocol conformance descriptor for Siri_Nlu_External_UserStatedTask);
    sub_1C8BD4E2C();
    result = sub_1C87A0410();
    if (v44)
    {
      return result;
    }
  }

  swift_beginAccess();
  v54 = v60;
  sub_1C8778810();
  if (__swift_getEnumTagSinglePayload(v54, 1, v61) == 1)
  {
    sub_1C8778ED8(v54, &qword_1EC2B86C0, &unk_1C8BF5020);
LABEL_38:
    swift_beginAccess();
    v55 = v57;
    sub_1C8778810();
    if (__swift_getEnumTagSinglePayload(v55, 1, v58) == 1)
    {
      return sub_1C8778ED8(v55, &qword_1EC2B8A68, &qword_1C8BF5068);
    }

    sub_1C879A720();
    sub_1C8776788(&qword_1EDACAC48, type metadata accessor for Siri_Nlu_External_UtteranceAlignment, &protocol conformance descriptor for Siri_Nlu_External_UtteranceAlignment);
    sub_1C8BD4E2C();
    return sub_1C87A0410();
  }

  sub_1C879A720();
  sub_1C8776788(&qword_1EC2B8D60, type metadata accessor for Siri_Nlu_External_UserWantedToUndo, &protocol conformance descriptor for Siri_Nlu_External_UserWantedToUndo);
  sub_1C8BD4E2C();
  result = sub_1C87A0410();
  if (!v44)
  {
    goto LABEL_38;
  }

  return result;
}

void Siri_Nlu_External_UserWantedToProceed.traverse<A>(visitor:)()
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
  type metadata accessor for Siri_Nlu_External_UserWantedToProceed(v18);
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

uint64_t sub_1C87A1DB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1C8BD4C1C();
  return swift_endAccess();
}

uint64_t OUTLINED_FUNCTION_97_0()
{

  return sub_1C8778810();
}

uint64_t OUTLINED_FUNCTION_1_17()
{
  v4 = v1 + v2[6];
  *v4 = 0;
  *(v4 + 8) = v0;
  v5 = v1 + v2[7];
  *v5 = 0;
  *(v5 + 8) = v0;
  v6 = v1 + v2[8];
  *v6 = 0;
  *(v6 + 8) = v0;
  v7 = (v1 + v2[9]);
  *v7 = 0;
  v7[1] = 0;
  return __swift_getEnumTagSinglePayload(v3, 1, v2);
}

uint64_t OUTLINED_FUNCTION_74_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  *(v9 - 104) = a8;
  *(v9 - 96) = a3;
  *(v9 - 88) = v8;
  *(v9 - 72) = a4;

  return __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
}

void Siri_Nlu_External_UsoGraph.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6138, &unk_1C8BE8D80);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_259_0();
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_33();
  v7 = OUTLINED_FUNCTION_66();
  type metadata accessor for Siri_Nlu_External_UsoGraph(v7);
  sub_1C8778810();
  OUTLINED_FUNCTION_76(v2, 1, v5);
  if (v8)
  {
    sub_1C8778ED8(v2, &qword_1EC2B6138, &unk_1C8BE8D80);
  }

  else
  {
    OUTLINED_FUNCTION_143_0();
    sub_1C87A386C();
    OUTLINED_FUNCTION_137_0();
    sub_1C879D08C(v9, v10, &protocol conformance descriptor for Siri_Nlu_External_SemVer);
    OUTLINED_FUNCTION_118_0();
    sub_1C8BD4E2C();
    OUTLINED_FUNCTION_136();
    sub_1C87A3B74();
    if (v1)
    {
      goto LABEL_16;
    }
  }

  if (!*(*v0 + 16) || (type metadata accessor for Siri_Nlu_External_UsoNode(0), sub_1C879D08C(&qword_1EDACCD10, type metadata accessor for Siri_Nlu_External_UsoNode, &protocol conformance descriptor for Siri_Nlu_External_UsoNode), v11 = OUTLINED_FUNCTION_117(), OUTLINED_FUNCTION_87_0(v11, 2, v12, v13), !v1))
  {
    if (!*(v0[1] + 16) || (type metadata accessor for Siri_Nlu_External_UsoEdge(0), sub_1C879D08C(&qword_1EDACCD40, type metadata accessor for Siri_Nlu_External_UsoEdge, &protocol conformance descriptor for Siri_Nlu_External_UsoEdge), v14 = OUTLINED_FUNCTION_117(), OUTLINED_FUNCTION_87_0(v14, 3, v15, v16), !v1))
    {
      if (!*(v0[2] + 16) || (type metadata accessor for Siri_Nlu_External_UsoEntityIdentifier(0), sub_1C879D08C(&qword_1EDACAA38, type metadata accessor for Siri_Nlu_External_UsoEntityIdentifier, &protocol conformance descriptor for Siri_Nlu_External_UsoEntityIdentifier), v17 = OUTLINED_FUNCTION_117(), OUTLINED_FUNCTION_87_0(v17, 4, v18, v19), !v1))
      {
        if (!*(v0[3] + 16) || (type metadata accessor for Siri_Nlu_External_UtteranceAlignment(0), sub_1C879D08C(&qword_1EDACAC48, type metadata accessor for Siri_Nlu_External_UtteranceAlignment, &protocol conformance descriptor for Siri_Nlu_External_UtteranceAlignment), v20 = OUTLINED_FUNCTION_117(), OUTLINED_FUNCTION_87_0(v20, 5, v21, v22), !v1))
        {
          if (!*(v0[4] + 16) || (type metadata accessor for Siri_Nlu_External_UsoEntitySpan(0), sub_1C879D08C(&qword_1EDACBCE0, type metadata accessor for Siri_Nlu_External_UsoEntitySpan, &protocol conformance descriptor for Siri_Nlu_External_UsoEntitySpan), v23 = OUTLINED_FUNCTION_117(), OUTLINED_FUNCTION_87_0(v23, 6, v24, v25), !v1))
          {
            sub_1C8BD49DC();
          }
        }
      }
    }
  }

LABEL_16:
  OUTLINED_FUNCTION_190();
}

uint64_t OUTLINED_FUNCTION_130_2()
{

  return sub_1C8778810();
}

uint64_t OUTLINED_FUNCTION_130_3@<X0>(int a1@<W8>)
{
  *(v1 + 40) = a1;

  return sub_1C8778810();
}

void sub_1C87A2668()
{
  OUTLINED_FUNCTION_101_0();
  if (v1)
  {
    OUTLINED_FUNCTION_244();
  }

  else
  {
    OUTLINED_FUNCTION_149_0();
    sub_1C8BD49FC();
    OUTLINED_FUNCTION_18_0();
    if (*(v2 + 84) != v0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6110, &qword_1C8BF5070);
      OUTLINED_FUNCTION_18_0();
      if (*(v3 + 84) == v0)
      {
        OUTLINED_FUNCTION_248_0();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6940, &unk_1C8BE8D90);
        OUTLINED_FUNCTION_18_0();
        if (*(v4 + 84) == v0)
        {
          OUTLINED_FUNCTION_249_0();
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6948, &unk_1C8BF9F90);
        }
      }
    }

    OUTLINED_FUNCTION_135();

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

uint64_t sub_1C87A27C4()
{
  OUTLINED_FUNCTION_166();
  if (v2)
  {
    OUTLINED_FUNCTION_61_1();
    return (v3 + 1);
  }

  else
  {
    OUTLINED_FUNCTION_173();
    sub_1C8BD49FC();
    OUTLINED_FUNCTION_18_0();
    if (*(v5 + 84) == v0)
    {
      v6 = *(v1 + 20);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6110, &qword_1C8BF5070);
      OUTLINED_FUNCTION_18_0();
      if (*(v7 + 84) == v0)
      {
        OUTLINED_FUNCTION_240_0();
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6940, &unk_1C8BE8D90);
        OUTLINED_FUNCTION_18_0();
        if (*(v8 + 84) == v0)
        {
          OUTLINED_FUNCTION_241_0();
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6948, &unk_1C8BF9F90);
          v6 = *(v1 + 36);
        }
      }
    }

    v9 = OUTLINED_FUNCTION_21_0(v6);

    return __swift_getEnumTagSinglePayload(v9, v10, v11);
  }
}

void Siri_Nlu_External_UsoNode.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6948, &unk_1C8BF9F90);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_103_1(v5, v47);
  v50 = sub_1C8BD499C();
  OUTLINED_FUNCTION_13_1();
  v54 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_9_0();
  v48 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6940, &unk_1C8BE8D90);
  OUTLINED_FUNCTION_80(v9);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_81();
  v51 = v11;
  OUTLINED_FUNCTION_86();
  v52 = sub_1C8BD48BC();
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_9_0();
  v49 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6110, &qword_1C8BF5070);
  OUTLINED_FUNCTION_80(v14);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_74();
  v16 = sub_1C8BD493C();
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_33();
  v55 = type metadata accessor for Siri_Nlu_External_UsoNode(0);
  v18 = v0 + *(v55 + 24);
  if (*(v18 + 4))
  {
    v19 = v1;
  }

  else
  {
    OUTLINED_FUNCTION_227_1(v18);
    sub_1C8BD4DEC();
    v19 = v1;
    if (v1)
    {
      goto LABEL_30;
    }
  }

  OUTLINED_FUNCTION_13(*(v55 + 28));
  sub_1C8778810();
  OUTLINED_FUNCTION_76(v2, 1, v16);
  if (v20)
  {
    sub_1C8778ED8(v2, &qword_1EC2B6110, &qword_1C8BF5070);
  }

  else
  {
    OUTLINED_FUNCTION_201_0();
    v21 = OUTLINED_FUNCTION_260_0();
    v22(v21);
    OUTLINED_FUNCTION_3_6();
    sub_1C879D08C(v23, v24, MEMORY[0x1E69AA998]);
    OUTLINED_FUNCTION_130_0();
    v1 = v19;
    sub_1C8BD4E2C();
    if (v19)
    {
      v25 = OUTLINED_FUNCTION_252_0();
      v27 = v16;
LABEL_21:
      v26(v25, v27);
      goto LABEL_30;
    }

    v28 = OUTLINED_FUNCTION_252_0();
    v29(v28, v16);
  }

  v30 = v55;
  sub_1C8778810();
  v31 = OUTLINED_FUNCTION_199();
  OUTLINED_FUNCTION_76(v31, v32, v52);
  v33 = v54;
  if (v20)
  {
    sub_1C8778ED8(v51, &qword_1EC2B6940, &unk_1C8BE8D90);
    v34 = v53;
  }

  else
  {
    OUTLINED_FUNCTION_154_1();
    v35(v49, v51, v52);
    OUTLINED_FUNCTION_145_0();
    sub_1C879D08C(v36, v37, MEMORY[0x1E69AA940]);
    OUTLINED_FUNCTION_118_0();
    OUTLINED_FUNCTION_225_0();
    sub_1C8BD4E2C();
    v34 = v53;
    if (v1)
    {
      v38 = OUTLINED_FUNCTION_215_0();
      v39(v38);
      goto LABEL_30;
    }

    v40 = OUTLINED_FUNCTION_215_0();
    v41(v40);
    v33 = v54;
    v30 = v55;
  }

  sub_1C8778810();
  v42 = OUTLINED_FUNCTION_199();
  OUTLINED_FUNCTION_76(v42, v43, v50);
  if (v20)
  {
    sub_1C8778ED8(v34, &qword_1EC2B6948, &unk_1C8BF9F90);
  }

  else
  {
    OUTLINED_FUNCTION_201_0();
    v44();
    OUTLINED_FUNCTION_0_5();
    sub_1C879D08C(v45, v46, MEMORY[0x1E69AA9B0]);
    OUTLINED_FUNCTION_224_0();
    OUTLINED_FUNCTION_225_0();
    sub_1C8BD4E2C();
    if (v1)
    {
      v26 = *(v33 + 8);
      v25 = v48;
      v27 = v50;
      goto LABEL_21;
    }

    (*(v33 + 8))(v48, v50);
  }

  if (!*(v0 + *(v30 + 40) + 8) || (OUTLINED_FUNCTION_225_0(), sub_1C8BD4DDC(), !v1))
  {
    if (!*(v0 + *(v30 + 44) + 8) || (OUTLINED_FUNCTION_225_0(), sub_1C8BD4DDC(), !v1))
    {
      if (!*(*v0 + 16) || (OUTLINED_FUNCTION_225_0(), OUTLINED_FUNCTION_85_1(), sub_1C8BD4DAC(), !v1))
      {
        OUTLINED_FUNCTION_119();
        sub_1C8BD49DC();
      }
    }
  }

LABEL_30:
  OUTLINED_FUNCTION_190();
}

uint64_t OUTLINED_FUNCTION_20_2()
{

  return sub_1C87EF7B0();
}

uint64_t OUTLINED_FUNCTION_20_3(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 16) = v2;

  return type metadata accessor for Siri_Nlu_Internal_Token(0);
}

uint64_t OUTLINED_FUNCTION_20_6@<X0>(uint64_t a1@<X8>)
{

  return sub_1C8786744(v2 + a1, v4, v1, v3);
}

uint64_t OUTLINED_FUNCTION_20_9()
{
  type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingResponse._StorageClass(0);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_20_10()
{

  return sub_1C8BD4C3C();
}

void sub_1C87A309C()
{
  OUTLINED_FUNCTION_189();
  v1 = OUTLINED_FUNCTION_129();
  v2(v1);
  v3 = OUTLINED_FUNCTION_220_1();
  OUTLINED_FUNCTION_163_1(v0 + 8, v4, v3);
  OUTLINED_FUNCTION_190();
}

uint64_t Siri_Nlu_External_Task.init()(uint64_t a1)
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  type metadata accessor for Siri_Nlu_External_Task(0);
  v1 = OUTLINED_FUNCTION_485();
  type metadata accessor for Siri_Nlu_External_UUID(v1);
  OUTLINED_FUNCTION_5();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  v6 = OUTLINED_FUNCTION_524();
  type metadata accessor for Siri_Nlu_External_UsoGraph(v6);
  OUTLINED_FUNCTION_5();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  sub_1C8BD48FC();
  v11 = OUTLINED_FUNCTION_27_1();

  return __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
}

uint64_t Siri_Nlu_External_Task.decodeMessage<A>(decoder:)()
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
        v11 = OUTLINED_FUNCTION_8();
        sub_1C88CB844(v11, v12, v13, v14);
        break;
      case 2:
        v7 = OUTLINED_FUNCTION_8();
        sub_1C87A3240(v7, v8, v9, v10);
        break;
      case 1:
        v3 = OUTLINED_FUNCTION_8();
        sub_1C87A331C(v3, v4, v5, v6);
        break;
    }
  }

  return result;
}

uint64_t sub_1C87A3240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_External_Task(0);
  type metadata accessor for Siri_Nlu_External_UsoGraph(0);
  sub_1C8776788(&qword_1EDACCCE0, type metadata accessor for Siri_Nlu_External_UsoGraph, &protocol conformance descriptor for Siri_Nlu_External_UsoGraph);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C87A331C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_External_Task(0);
  type metadata accessor for Siri_Nlu_External_UUID(0);
  sub_1C8776788(&qword_1EDACCE50, type metadata accessor for Siri_Nlu_External_UUID, &protocol conformance descriptor for Siri_Nlu_External_UUID);
  return sub_1C8BD4C7C();
}

void sub_1C87A33F8()
{
  OUTLINED_FUNCTION_189();
  v2 = OUTLINED_FUNCTION_129();
  v4 = v3(v2);
  v5 = OUTLINED_FUNCTION_254_0();
  v7 = sub_1C8776788(v5, v6, v0);
  OUTLINED_FUNCTION_529(v1 + 8, v4, v7);
  OUTLINED_FUNCTION_190();
}

void Siri_Nlu_External_UsoEdge.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_9_3();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61B0, &qword_1C8BE6E40);
  OUTLINED_FUNCTION_80(v4);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_66();
  type metadata accessor for Siri_Nlu_External_UsoEdgeLabel(v6);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_33();
  v8 = OUTLINED_FUNCTION_165_0();
  type metadata accessor for Siri_Nlu_External_UsoEdge(v8);
  OUTLINED_FUNCTION_209_0();
  if ((*(v9 + 4) & 1) != 0 || (v10 = OUTLINED_FUNCTION_227_1(v9), OUTLINED_FUNCTION_30(v10, v11), !v0))
  {
    v12 = (v1 + *(v3 + 24));
    if ((v12[1] & 1) != 0 || (OUTLINED_FUNCTION_30(*v12, 2), !v0))
    {
      sub_1C8778810();
      OUTLINED_FUNCTION_17_6(v2);
      if (v13)
      {
        sub_1C8778ED8(v2, &qword_1EC2B61B0, &qword_1C8BE6E40);
LABEL_9:
        OUTLINED_FUNCTION_15();
        goto LABEL_10;
      }

      sub_1C87A386C();
      sub_1C879D08C(&qword_1EDACC360, type metadata accessor for Siri_Nlu_External_UsoEdgeLabel, &protocol conformance descriptor for Siri_Nlu_External_UsoEdgeLabel);
      OUTLINED_FUNCTION_240();
      OUTLINED_FUNCTION_213_0();
      sub_1C8BD4E2C();
      sub_1C87A3B74();
      if (!v0)
      {
        goto LABEL_9;
      }
    }
  }

LABEL_10:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

uint64_t OUTLINED_FUNCTION_202()
{

  return sub_1C8BD49FC();
}

uint64_t OUTLINED_FUNCTION_202_1()
{
  type metadata accessor for Siri_Nlu_External_TurnInput._StorageClass(0);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_202_3()
{

  return sub_1C8A43180();
}

uint64_t OUTLINED_FUNCTION_28_2()
{

  return type metadata accessor for Siri_Nlu_External_RequestID(0);
}

uint64_t OUTLINED_FUNCTION_28_5@<X0>(uint64_t a1@<X8>)
{
  *(v3 + 40) = a1;

  return sub_1C8786744(v1 + a1, v2, v4, v5);
}

uint64_t OUTLINED_FUNCTION_28_8()
{

  return type metadata accessor for Siri_Nlu_External_SemVer(0);
}

uint64_t OUTLINED_FUNCTION_28_9(uint64_t a1)
{
  *(v1 + 32) = a1;

  return type metadata accessor for Siri_Nlu_Internal_PreprocessingWrapper(0);
}

uint64_t OUTLINED_FUNCTION_28_13(uint64_t a1)
{
  *(v1 + 32) = a1;

  return type metadata accessor for Siri_Nlu_Internal_Cati_CATIRequest(0);
}

uint64_t OUTLINED_FUNCTION_28_14()
{

  return sub_1C888D594(v0);
}

uint64_t sub_1C87A386C()
{
  v1 = OUTLINED_FUNCTION_84();
  v2(v1);
  OUTLINED_FUNCTION_21();
  v3 = OUTLINED_FUNCTION_218();
  v4(v3);
  return v0;
}

uint64_t OUTLINED_FUNCTION_166_4(uint64_t a1, uint64_t a2)
{

  return sub_1C87867A0(a1, a2, v2, v3);
}

void Siri_Nlu_External_UsoEdgeLabel.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_9_3();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6950, &unk_1C8BF4880);
  OUTLINED_FUNCTION_80(v4);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_66();
  type metadata accessor for Siri_Nlu_External_UsoLabel(v6);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_33();
  v8 = OUTLINED_FUNCTION_165_0();
  type metadata accessor for Siri_Nlu_External_UsoEdgeLabel(v8);
  OUTLINED_FUNCTION_209_0();
  if ((*(v9 + 4) & 1) != 0 || (v10 = OUTLINED_FUNCTION_227_1(v9), OUTLINED_FUNCTION_30(v10, v11), !v0))
  {
    v12 = (v1 + *(v3 + 24));
    if ((v12[1] & 1) != 0 || (OUTLINED_FUNCTION_30(*v12, 2), !v0))
    {
      sub_1C8778810();
      OUTLINED_FUNCTION_17_6(v2);
      if (v13)
      {
        sub_1C8778ED8(v2, &qword_1EC2B6950, &unk_1C8BF4880);
LABEL_9:
        OUTLINED_FUNCTION_15();
        goto LABEL_10;
      }

      sub_1C87A386C();
      sub_1C879D08C(&qword_1EC2B4BC0, type metadata accessor for Siri_Nlu_External_UsoLabel, &protocol conformance descriptor for Siri_Nlu_External_UsoLabel);
      OUTLINED_FUNCTION_240();
      OUTLINED_FUNCTION_213_0();
      sub_1C8BD4E2C();
      sub_1C87A3B74();
      if (!v0)
      {
        goto LABEL_9;
      }
    }
  }

LABEL_10:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

uint64_t sub_1C87A3B74()
{
  v1 = OUTLINED_FUNCTION_241();
  v2(v1);
  OUTLINED_FUNCTION_21();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_1C87A3BFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_UserAccepted(0);
  sub_1C8776788(&qword_1EC2B4AF8, type metadata accessor for Siri_Nlu_External_UserAccepted, &protocol conformance descriptor for Siri_Nlu_External_UserAccepted);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

void Siri_Nlu_External_LegacyNLContext.init()(void *a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = v2;
  v3 = type metadata accessor for Siri_Nlu_External_LegacyNLContext(0);
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  *(a1 + v3[7]) = 2;
  *(a1 + v3[8]) = 2;
  OUTLINED_FUNCTION_18_2(v3[9]);
  *(a1 + v3[10]) = v4;
  OUTLINED_FUNCTION_464(v3[11]);
}

uint64_t Siri_Nlu_External_LegacyNLContext.dictationPrompt.setter()
{
  v2 = OUTLINED_FUNCTION_241();
  result = type metadata accessor for Siri_Nlu_External_LegacyNLContext(v2);
  *(v1 + *(result + 28)) = v0;
  return result;
}

uint64_t Siri_Nlu_External_LegacyNLContext.strictPrompt.setter()
{
  v2 = OUTLINED_FUNCTION_241();
  result = type metadata accessor for Siri_Nlu_External_LegacyNLContext(v2);
  *(v1 + *(result + 32)) = v0;
  return result;
}

uint64_t Siri_Nlu_External_LegacyNLContext.previousDomainName.setter()
{
  v3 = OUTLINED_FUNCTION_68();
  type metadata accessor for Siri_Nlu_External_LegacyNLContext(v3);
  result = OUTLINED_FUNCTION_24_0();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Siri_Nlu_External_LegacyNLContext.listenAfterSpeaking.setter()
{
  v2 = OUTLINED_FUNCTION_241();
  result = type metadata accessor for Siri_Nlu_External_LegacyNLContext(v2);
  *(v1 + *(result + 40)) = v0;
  return result;
}

uint64_t Siri_Nlu_External_LegacyNLContext.legacyContextSource.setter()
{
  v2 = OUTLINED_FUNCTION_54_2();
  result = type metadata accessor for Siri_Nlu_External_LegacyNLContext(v2);
  *(v1 + *(result + 44)) = v0;
  return result;
}

uint64_t Siri_Nlu_External_NLContext.executedTasks.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t OUTLINED_FUNCTION_83_1()
{

  return sub_1C8BD494C();
}

uint64_t OUTLINED_FUNCTION_83_2()
{

  return sub_1C8776A10(v2, v1, v0);
}

uint64_t OUTLINED_FUNCTION_67@<X0>(uint64_t a1@<X8>)
{

  return sub_1C87E8DEC(v1 + a1, v2);
}

uint64_t OUTLINED_FUNCTION_69_4()
{

  return sub_1C8BD4DDC();
}

uint64_t OUTLINED_FUNCTION_69_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
}

uint64_t OUTLINED_FUNCTION_69_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1C8BD4E0C();
}

uint64_t OUTLINED_FUNCTION_53()
{

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, v0);
}

uint64_t sirinluinternal::SubwordTokenChain::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sirinluinternal::SubwordTokenChain::SubwordTokenChain(v7, a2);
    v3 = v9;
    v4 = *(a1 + 8);
    *(a1 + 8) = v8;
    v5 = *(a1 + 24);
    *(a1 + 24) = v3;
    v8 = v4;
    v9 = v5;
    sirinluinternal::SubwordTokenChain::~SubwordTokenChain(v7);
  }

  return a1;
}

uint64_t sirinluinternal::SubwordTokenChain::SubwordTokenChain(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F4875B60;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  v4 = *(a2 + 8);
  *(a2 + 8) = 0;
  v5 = *(a1 + 8);
  *(a1 + 8) = v4;
  if (v5)
  {
    std::default_delete<std::string>::operator()[abi:ne200100](v5);
    v6 = (a1 + 16);
    if (*(a1 + 16))
    {
      std::vector<std::unique_ptr<siricommon::StringValue>>::clear[abi:ne200100]((a1 + 16));
      operator delete(*v6);
      *v6 = 0;
      *(a1 + 24) = 0;
      *(a1 + 32) = 0;
    }
  }

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  return a1;
}

uint64_t sub_1C87A4314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_External_TurnContext(0);
  type metadata accessor for Siri_Nlu_External_LegacyNLContext(0);
  sub_1C8776788(&qword_1EDACB6D0, type metadata accessor for Siri_Nlu_External_LegacyNLContext, &protocol conformance descriptor for Siri_Nlu_External_LegacyNLContext);
  return sub_1C8BD4C7C();
}

void static ConversionUtils.convertUuidToProto(uuid:)(uint64_t a1@<X8>)
{
  v2 = sub_1C8BD4AAC();
  v3 = OUTLINED_FUNCTION_80(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_33();
  v4 = objc_opt_self();
  v5 = sub_1C8BD402C();
  v6 = [v4 convertFromUUID_];

  if (v6)
  {
    v7 = v6;
    sub_1C87A458C(v7);
    OUTLINED_FUNCTION_13_5();
    if (!v9 & v8)
    {
      __break(1u);
    }

    else
    {
      v10 = type metadata accessor for Siri_Nlu_External_UUID(0);
      sub_1C8BD4A9C();
      OUTLINED_FUNCTION_3_0();
      sub_1C87A4A08(v11, v12, &protocol conformance descriptor for Siri_Nlu_External_UUID);
      sub_1C8BD4CDC();

      __swift_storeEnumTagSinglePayload(a1, 0, 1, v10);
    }
  }

  else
  {
    type metadata accessor for Siri_Nlu_External_UUID(0);
    OUTLINED_FUNCTION_5();

    __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  }
}

uint64_t sub_1C87A458C(void *a1)
{
  v2 = [a1 data];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1C8BD400C();

  return v3;
}

void Siri_Nlu_External_LegacyNLContext.decodeMessage<A>(decoder:)()
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
        sub_1C88AFB78(v3, v4);
        break;
      case 2:
        OUTLINED_FUNCTION_27_5();
        sub_1C87A4C50();
        break;
      case 3:
        v5 = OUTLINED_FUNCTION_8();
        sub_1C87A4C94(v5, v6, v7, v8);
        break;
      case 4:
        OUTLINED_FUNCTION_27_5();
        sub_1C88CE06C();
        break;
      case 5:
        OUTLINED_FUNCTION_8();
        sub_1C879DC10();
        break;
      case 7:
        v9 = OUTLINED_FUNCTION_8();
        sub_1C88AFBDC(v9, v10, v11, v12);
        break;
      case 8:
        OUTLINED_FUNCTION_119();
        sub_1C8BD4BDC();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C87A4A08(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C87A4A50(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C87A4A98(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C87A4AE0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C87A4B28(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t Siri_Nlu_External_SystemDialogAct.id.setter()
{
  OUTLINED_FUNCTION_31_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_170();
  v3 = type metadata accessor for Siri_Nlu_External_SystemDialogAct(v2);
  if ((OUTLINED_FUNCTION_41_1(v3) & 1) == 0)
  {
    OUTLINED_FUNCTION_203_1();
    v4 = OUTLINED_FUNCTION_2();
    v5 = sub_1C879A880(v4);
    OUTLINED_FUNCTION_40(v5);
  }

  OUTLINED_FUNCTION_0_16();
  OUTLINED_FUNCTION_196_0();
  sub_1C879A720();
  type metadata accessor for Siri_Nlu_External_UUID(0);
  v6 = OUTLINED_FUNCTION_128_2();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_200();
  sub_1C8786514();
  return swift_endAccess();
}

uint64_t sub_1C87A4C50()
{
  v0 = OUTLINED_FUNCTION_93();
  v2 = v1(v0);
  OUTLINED_FUNCTION_75_1(*(v2 + 32));
  return sub_1C8BD4B2C();
}

uint64_t sub_1C87A4CF8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_1C8BD512C();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_1C87A4D90()
{
  OUTLINED_FUNCTION_9_2();
  v1 = v0(0);
  OUTLINED_FUNCTION_75_1(*(v1 + 36));
  return sub_1C8BD4C1C();
}

unint64_t sub_1C87A4F3C()
{
  result = qword_1EDACCF20;
  if (!qword_1EDACCF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDACCF20);
  }

  return result;
}

uint64_t sub_1C87A4F90(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C87A4FD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  sub_1C8BD51CC();
  OUTLINED_FUNCTION_13_1();
  v60 = v10;
  v61 = v9;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_33();
  v59 = v12 - v11;
  sub_1C8BD4A8C();
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_33();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61D0, &qword_1C8C0C1E0);
  OUTLINED_FUNCTION_80(v14);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_112_0();
  v16 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_33();
  v20 = v19 - v18;
  v21 = type metadata accessor for Siri_Nlu_External_UsoGraph(0);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_33();
  v25 = v24 - v23;
  (*(v16 + 16))(v20, a1, a3);

  if (!swift_dynamicCast())
  {
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v36, v37, v38, v21);
    sub_1C8778ED8(v4, &qword_1EC2B61D0, &qword_1C8C0C1E0);
    type metadata accessor for SiriNLUTypesPrintUtils.ReadableGraphVisitor();
    OUTLINED_FUNCTION_1_19();
    sub_1C87A4F90(v39, v40, v41, &unk_1C8C10348);
    sub_1C8BD4C8C();
  }

  OUTLINED_FUNCTION_19_1();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v21);
  OUTLINED_FUNCTION_11_23();
  v29 = OUTLINED_FUNCTION_218();
  sub_1C87A5594(v29, v30, v31);
  sub_1C8BD4A7C();
  sub_1C87A4F90(&qword_1EDACCCE0, 255, type metadata accessor for Siri_Nlu_External_UsoGraph, &protocol conformance descriptor for Siri_Nlu_External_UsoGraph);
  v32 = sub_1C8BD4C9C();
  if (v62)
  {

    v34 = OUTLINED_FUNCTION_57_9();
    v35(v34);
    OUTLINED_FUNCTION_0_27();
    sub_1C87A9A38(v25, v46);
  }

  v42 = v32;
  v43 = v33;
  v44 = OUTLINED_FUNCTION_57_9();
  v45(v44);
  type metadata accessor for UsoGraphProtoReader.UnitIndexHelper();
  swift_initStackObject();
  sub_1C87A5614(v25);
  v48 = sub_1C8BD426C();
  MEMORY[0x1CCA7E2D0](v48);

  MEMORY[0x1CCA7E2D0](2570, 0xE200000000000000);
  sub_1C8BD51BC();
  OUTLINED_FUNCTION_49_9();
  v49 = sub_1C8BD519C();
  v51 = v50;

  (*(v60 + 8))(v59, v61);
  if (v51 >> 60 == 15)
  {
    OUTLINED_FUNCTION_0_27();
    sub_1C87A9A38(v25, v52);

    sub_1C87A997C(v42, v43);
  }

  v53 = sub_1C8BD527C();
  MEMORY[0x1CCA7E2D0](v53);

  MEMORY[0x1CCA7E2D0](572728099, 0xE400000000000000);
  swift_beginAccess();
  sub_1C87A8FA8(v49, v51);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v63 = *(v6 + 16);
  sub_1C87A9014(0x7061726723232322, 0xE900000000000068, v49, v51, v42, v43, isUniquelyReferenced_nonNull_native);
  *(v6 + 16) = v63;
  sub_1C87A997C(v42, v43);
  swift_endAccess();

  sub_1C87A9A24(v49, v51);
  OUTLINED_FUNCTION_0_27();
  result = sub_1C87A9A38(v25, v55);
  v56 = *(v6 + 24);
  v57 = __OFADD__(v56, 1);
  v58 = v56 + 1;
  if (!v57)
  {
    *(v6 + 24) = v58;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C87A5594(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_21();
  v4 = OUTLINED_FUNCTION_218();
  v5(v4);
  return a2;
}

void sub_1C87A5614(uint64_t a1)
{
  v539 = a1;
  v1 = sub_1C8BD439C();
  v2 = OUTLINED_FUNCTION_0_15(v1, v563);
  v513 = v3;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_63_0(v4);
  sub_1C8BD42EC();
  OUTLINED_FUNCTION_13_1();
  v593[0] = v5;
  v593[1] = v6;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_9_0();
  v594 = v7;
  v8 = OUTLINED_FUNCTION_86();
  v9 = type metadata accessor for Siri_Nlu_External_UtteranceSpan(v8);
  OUTLINED_FUNCTION_13_1();
  v536 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_9_0();
  v13 = OUTLINED_FUNCTION_63_0(v12);
  v14 = type metadata accessor for Siri_Nlu_External_UtteranceAlignment(v13);
  v15 = OUTLINED_FUNCTION_0_15(v14, &v585);
  v547 = v16;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_63_0(v17);
  v18 = sub_1C8BD419C();
  v19 = OUTLINED_FUNCTION_0_15(v18, &v588);
  v515 = v20;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_9_0();
  v22 = OUTLINED_FUNCTION_63_0(v21);
  v23 = type metadata accessor for Siri_Nlu_External_UsoEntitySpan(v22);
  v24 = OUTLINED_FUNCTION_0_15(v23, &v589);
  v514 = v25;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_33();
  v28 = v27 - v26;
  v29 = sub_1C8BD425C();
  v30 = OUTLINED_FUNCTION_0_15(v29, &v594);
  v518 = v31;
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_63_0(v32);
  v33 = sub_1C8BD48FC();
  v34 = OUTLINED_FUNCTION_0_15(v33, v593);
  v517 = v35;
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_87(v36);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5FC8, &unk_1C8BE8DA0);
  v38 = OUTLINED_FUNCTION_80(v37);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_87(v40);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B87B0, &qword_1C8BF4878);
  v42 = OUTLINED_FUNCTION_80(v41);
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_96();
  v585 = v45;
  v46 = OUTLINED_FUNCTION_86();
  v47 = type metadata accessor for Siri_Nlu_External_UsoEntityIdentifier(v46);
  v48 = OUTLINED_FUNCTION_0_15(v47, v542);
  v516 = v49;
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_9_0();
  v580 = v50;
  OUTLINED_FUNCTION_86();
  v51 = sub_1C8BD448C();
  v52 = OUTLINED_FUNCTION_0_15(v51, &v564);
  v527 = v53;
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_87(v54);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6950, &unk_1C8BF4880);
  v56 = OUTLINED_FUNCTION_80(v55);
  MEMORY[0x1EEE9AC00](v56);
  v58 = OUTLINED_FUNCTION_63_0(v512 - v57);
  v560 = type metadata accessor for Siri_Nlu_External_UsoLabel(v58);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_87(v60);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61B0, &qword_1C8BE6E40);
  v62 = OUTLINED_FUNCTION_80(v61);
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_10_0();
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
  OUTLINED_FUNCTION_96();
  v68 = OUTLINED_FUNCTION_63_0(v67);
  v574 = type metadata accessor for Siri_Nlu_External_UsoEdgeLabel(v68);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_10_0();
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
  OUTLINED_FUNCTION_96();
  v579 = v74;
  v75 = OUTLINED_FUNCTION_86();
  v76 = type metadata accessor for Siri_Nlu_External_UsoEdge(v75);
  v77 = OUTLINED_FUNCTION_0_15(v76, &v597);
  v552 = v78;
  MEMORY[0x1EEE9AC00](v77);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_63_0(v79);
  v80 = sub_1C8BD48BC();
  v81 = OUTLINED_FUNCTION_0_15(v80, &v547);
  v592 = v82;
  MEMORY[0x1EEE9AC00](v81);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_87(v83);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6940, &unk_1C8BE8D90);
  v85 = OUTLINED_FUNCTION_80(v84);
  MEMORY[0x1EEE9AC00](v85);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v86);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_63_0(v87);
  v88 = sub_1C8BD493C();
  v89 = OUTLINED_FUNCTION_0_15(v88, &v598);
  v581 = v90;
  MEMORY[0x1EEE9AC00](v89);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v91);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_87(v92);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6110, &qword_1C8BF5070);
  v94 = OUTLINED_FUNCTION_80(v93);
  MEMORY[0x1EEE9AC00](v94);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v95);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v96);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v97);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_63_0(v98);
  v589 = sub_1C8BD461C();
  OUTLINED_FUNCTION_13_1();
  MEMORY[0x1EEE9AC00](v99);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v100);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v101);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v102);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v103);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v104);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v105);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v106);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v107);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v108);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_87(v109);
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B87B8, &unk_1C8BF4890);
  v111 = OUTLINED_FUNCTION_80(v110);
  MEMORY[0x1EEE9AC00](v111);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v112);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v113);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v114);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_63_0(v115);
  v116 = sub_1C8BD44EC();
  v117 = OUTLINED_FUNCTION_0_15(v116, &v577);
  v587 = v118;
  MEMORY[0x1EEE9AC00](v117);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v119);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_63_0(v120);
  v121 = sub_1C8BD499C();
  v122 = OUTLINED_FUNCTION_0_15(v121, v582);
  v124 = v123;
  MEMORY[0x1EEE9AC00](v122);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v125);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v126);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v127);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v128);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_87(v129);
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6948, &unk_1C8BF9F90);
  v131 = OUTLINED_FUNCTION_80(v130);
  MEMORY[0x1EEE9AC00](v131);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v132);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v133);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v134);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v135);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v136);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_63_0(v137);
  v138 = sub_1C8BD456C();
  OUTLINED_FUNCTION_13_1();
  v140 = v139;
  MEMORY[0x1EEE9AC00](v141);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v142);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v143);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v144);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v145);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v146);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v147);
  OUTLINED_FUNCTION_96();
  v149 = OUTLINED_FUNCTION_63_0(v148);
  v583 = type metadata accessor for Siri_Nlu_External_UsoNode(v149);
  OUTLINED_FUNCTION_13_1();
  v151 = v150;
  MEMORY[0x1EEE9AC00](v152);
  OUTLINED_FUNCTION_33();
  v155 = (v154 - v153);
  v519 = sub_1C8BD46CC();
  v156 = swift_allocObject();
  v582[0] = sub_1C8BD46BC();
  OUTLINED_FUNCTION_61_4();
  v158 = *v157;
  v159 = *(*v157 + 16);
  v590 = v160;
  v591 = v28;
  v586 = v138;
  v526 = v140;
  v570 = v159;
  v582[1] = v9;
  if (!v159)
  {
    v592 = MEMORY[0x1E69E7CC0];
    v156 = v579;
    v167 = v138;
LABEL_80:
    OUTLINED_FUNCTION_61_4();
    v573 = *(v298 + 8);
    v299 = v580;
    v300 = v551;
    v570 = v573[2];
    if (v570)
    {
      v301 = 0;
      OUTLINED_FUNCTION_69_2();
      OUTLINED_FUNCTION_32();
      v571 = v573 + v302;
      v559 = v526 + 32;
      v569 = v590 + 16;
      v567 = v590 + 8;
      v566 = v527 + 8;
      v568 = v526 + 8;
      v303 = &qword_1EC2B61B0;
      while (v301 < v573[2])
      {
        OUTLINED_FUNCTION_69_2();
        v587 = v301;
        sub_1C87A88B8();
        v588 = v575[7];
        OUTLINED_FUNCTION_192();
        sub_1C8778810();
        OUTLINED_FUNCTION_199();
        OUTLINED_FUNCTION_79_0();
        OUTLINED_FUNCTION_76(v304, v305, v306);
        if (v171)
        {
          _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
          OUTLINED_FUNCTION_81_2();
          OUTLINED_FUNCTION_16_3(v307);
          OUTLINED_FUNCTION_59_4(v156 + *(v28 + 24));
          v309 = OUTLINED_FUNCTION_14_8(v308);
          OUTLINED_FUNCTION_84_2(v309, v310, v311);
          OUTLINED_FUNCTION_17_6(v301);
          v312 = v549;
          if (!v171)
          {
            OUTLINED_FUNCTION_85_3(v301);
          }
        }

        else
        {
          OUTLINED_FUNCTION_4_14();
          OUTLINED_FUNCTION_218();
          sub_1C87A8E58();
          v312 = v549;
        }

        OUTLINED_FUNCTION_81_2();
        v314 = *v313;
        v315 = *(v313 + 4);
        OUTLINED_FUNCTION_1_12();
        sub_1C87A8B2C(v316, v317);
        if ((v315 & 1) != 0 || !v314)
        {
          OUTLINED_FUNCTION_74_2();
          OUTLINED_FUNCTION_192();
          sub_1C8778810();
          OUTLINED_FUNCTION_17_6(v314);
          if (v171)
          {
            _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
            OUTLINED_FUNCTION_16_3(v312 + *(v28 + 20));
            OUTLINED_FUNCTION_59_4(v312 + *(v28 + 24));
            OUTLINED_FUNCTION_5();
            v328 = v560;
            __swift_storeEnumTagSinglePayload(v323, v324, v325, v560);
            OUTLINED_FUNCTION_17_6(v314);
            v326 = v535;
            v327 = v534;
            if (!v171)
            {
              OUTLINED_FUNCTION_85_3(v537);
            }
          }

          else
          {
            OUTLINED_FUNCTION_4_14();
            sub_1C87A8E58();
            v326 = v535;
            v327 = v534;
            v328 = v560;
          }

          sub_1C8778810();
          OUTLINED_FUNCTION_73(v326);
          if (v171)
          {
            _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
            OUTLINED_FUNCTION_1_12();
            sub_1C87A8B2C(v312, v329);
            v330 = (v327 + *(v328 + 20));
            *v330 = 0;
            v330[1] = 0;
            OUTLINED_FUNCTION_73(v326);
            if (!v171)
            {
              sub_1C8778ED8(v326, &qword_1EC2B6950, &unk_1C8BF4880);
            }
          }

          else
          {
            OUTLINED_FUNCTION_1_12();
            sub_1C87A8B2C(v312, v331);
            OUTLINED_FUNCTION_218();
            sub_1C87A8E58();
          }

          sub_1C87A8B2C(v327, type metadata accessor for Siri_Nlu_External_UsoLabel);
          OUTLINED_FUNCTION_55_4();
          sub_1C8BD44DC();
          sub_1C8BD454C();
          v332 = v592;
          v167 = v586;
        }

        else
        {
          OUTLINED_FUNCTION_74_2();
          OUTLINED_FUNCTION_192();
          sub_1C8778810();
          OUTLINED_FUNCTION_17_6(v314);
          if (v171)
          {
            OUTLINED_FUNCTION_35_4();
            _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
            OUTLINED_FUNCTION_81_2();
            OUTLINED_FUNCTION_16_3(v318);
            OUTLINED_FUNCTION_59_4(v315 + *(v28 + 24));
            v320 = OUTLINED_FUNCTION_14_8(v319);
            OUTLINED_FUNCTION_84_2(v320, v321, v322);
            OUTLINED_FUNCTION_17_6(v314);
            v333 = v533;
            if (!v171)
            {
              OUTLINED_FUNCTION_85_3(v314);
            }
          }

          else
          {
            OUTLINED_FUNCTION_4_14();
            OUTLINED_FUNCTION_238();
            sub_1C87A8E58();
            v333 = v533;
          }

          OUTLINED_FUNCTION_81_2();
          v335 = *v334;
          v336 = *(v334 + 4);
          OUTLINED_FUNCTION_1_12();
          sub_1C87A8B2C(v337, v338);
          if (v336)
          {
            v339 = 0;
          }

          else
          {
            v339 = v335;
          }

          sub_1C87A8910(v339, v333);
          OUTLINED_FUNCTION_73(v333);
          if (v171)
          {
            sub_1C8778ED8(v333, &qword_1EC2B87B8, &unk_1C8BF4890);
            OUTLINED_FUNCTION_74_2();
            OUTLINED_FUNCTION_238();
            sub_1C8778810();
            OUTLINED_FUNCTION_17_6(v336);
            if (v171)
            {
              OUTLINED_FUNCTION_55_4();
              _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
              v492 = &qword_1EC2B61B0 + *(v28 + 20);
              *v492 = 0;
              v492[4] = 1;
              v493 = &qword_1EC2B61B0 + *(v28 + 24);
              *v493 = 0;
              v493[4] = 1;
              OUTLINED_FUNCTION_5();
              OUTLINED_FUNCTION_84_2(v494, v495, v496);
              OUTLINED_FUNCTION_17_6(v336);
              if (!v171)
              {
                sub_1C8778ED8(v336, &qword_1EC2B61B0, &qword_1C8BE6E40);
              }
            }

            else
            {
              OUTLINED_FUNCTION_4_14();
              v303 = v512[3];
              sub_1C87A8E58();
            }

            OUTLINED_FUNCTION_1_12();
            sub_1C87A8B2C(v303, v500);
            v501 = sub_1C888D6F8();
            v502 = OUTLINED_FUNCTION_66_4(&type metadata for UsoGraphProtoConversionError, v501);
            OUTLINED_FUNCTION_53_4(v502, v503, v504);

            v491 = OUTLINED_FUNCTION_11_11();
            goto LABEL_178;
          }

          OUTLINED_FUNCTION_22_9();
          v340(v565, v333, v167);
          v332 = v592;
        }

        v341 = (v300 + v575[5]);
        v342 = v332[2];
        if (*(v341 + 4))
        {
          v343 = 0;
        }

        else
        {
          v343 = *v341;
        }

        if (v343 >= v342 || (v344 = (v300 + v575[6]), v345 = *(v344 + 4), (v345 & 1) == 0) && v342 <= *v344)
        {
          v478 = sub_1C888D6F8();
          OUTLINED_FUNCTION_66_4(&type metadata for UsoGraphProtoConversionError, v478);
          *v479 = 0;
          *(v479 + 8) = 0;
          *(v479 + 16) = 3;
          swift_willThrow();

          OUTLINED_FUNCTION_22_9();
          v480(v565, v167);
          v481 = OUTLINED_FUNCTION_11_11();
          sub_1C87A8B2C(v481, v482);
          goto LABEL_179;
        }

        v346 = v589;
        v347 = v590;
        v348 = v332 + ((*(v590 + 80) + 32) & ~*(v590 + 80));
        v349 = *(v590 + 72);
        v350 = *(v590 + 16);
        v584 = *v344;
        v350(v572, &v348[v349 * v343], v589);
        v351 = sub_1C8BD460C();
        v352 = v572;
        v583 = v351;
        v353 = *(v347 + 8);
        v354 = OUTLINED_FUNCTION_251_0();
        v353(v354);
        v355 = v584;
        if (v345)
        {
          v355 = 0;
        }

        if (v355 >= v592[2])
        {
          goto LABEL_191;
        }

        v350(v352, &v348[v349 * v355], v346);
        sub_1C8BD460C();
        (v353)(v352, v346);
        v300 = v551;
        OUTLINED_FUNCTION_74_2();
        OUTLINED_FUNCTION_231();
        v303 = &qword_1EC2B61B0;
        sub_1C8778810();
        v356 = OUTLINED_FUNCTION_109();
        v357 = v574;
        OUTLINED_FUNCTION_76(v356, v358, v574);
        if (v171)
        {
          OUTLINED_FUNCTION_56_2();
          _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
          OUTLINED_FUNCTION_16_3(v353 + *(v357 + 20));
          v359 = v353 + *(v357 + 24);
          *v359 = 0;
          v359[4] = v360;
          OUTLINED_FUNCTION_5();
          OUTLINED_FUNCTION_84_2(v361, v362, v363);
          v364 = OUTLINED_FUNCTION_109();
          v365 = v357;
          v357 = v353;
          OUTLINED_FUNCTION_76(v364, v366, v365);
          v28 = v591;
          v299 = v580;
          if (!v171)
          {
            OUTLINED_FUNCTION_85_3(v346);
          }
        }

        else
        {
          OUTLINED_FUNCTION_4_14();
          OUTLINED_FUNCTION_192();
          sub_1C87A8E58();
          v28 = v591;
          v299 = v580;
        }

        v367 = v587 + 1;
        v368 = *(v357 + *(v574 + 24));
        OUTLINED_FUNCTION_1_12();
        sub_1C87A8B2C(v369, v370);
        OUTLINED_FUNCTION_70_3();
        v371 = v565;
        sub_1C8BD462C();
        OUTLINED_FUNCTION_22_9();
        v372 = v368;
        v301 = v367;
        v373(v372, v545);
        OUTLINED_FUNCTION_22_9();
        v374 = v371;
        v167 = v586;
        v375(v374, v586);
        v376 = OUTLINED_FUNCTION_11_11();
        sub_1C87A8B2C(v376, v377);
        v156 = v579;
        if (v570 == v367)
        {
          goto LABEL_121;
        }
      }
    }

    else
    {
LABEL_121:
      OUTLINED_FUNCTION_61_4();
      v379 = *(*(v378 + 16) + 16);
      v380 = v592;
      v381 = v525;
      v382 = v589;
      if (v379)
      {
        OUTLINED_FUNCTION_40_3();
        v385 = v383 + v384;
        OUTLINED_FUNCTION_17_3();
        v575 = (v380 + v386);
        v574 = *(v387 + 72);
        v573 = (v388 + 16);
        v568 = v389 + 32;
        v570 = v389 + 8;
        v567 = v517 + 32;
        v569 = v517 + 8;
        v572 = v518 + 8;
        v571 = (v388 + 8);
        while (1)
        {
          sub_1C87A88B8();
          v390 = (v299 + v381[5]);
          v391 = *(v390 + 4) ? 0 : *v390;
          if (v391 >= v380[2])
          {
            break;
          }

          (*(v590 + 16))(v578, v575 + *(v590 + 72) * v391, v382);
          v392 = (v299 + v381[7]);
          v393 = v392[1];
          if (v393)
          {
            v586 = *v392;
            v584 = v393;
          }

          else
          {
            v586 = 0;
            v584 = 0xE000000000000000;
          }

          v394 = v576;
          v395 = (v299 + v381[6]);
          v396 = v395[1];
          v587 = v385;
          v588 = v379;
          if (v396)
          {
            v583 = *v395;
            v581 = v396;
          }

          else
          {
            v583 = 0;
            v581 = 0xE000000000000000;
          }

          sub_1C8BD41FC();
          OUTLINED_FUNCTION_5();
          __swift_storeEnumTagSinglePayload(v397, v398, v399, v400);
          v401 = v381[8];
          OUTLINED_FUNCTION_231();
          sub_1C8778810();
          v402 = OUTLINED_FUNCTION_109();
          EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v402, v403, v394);

          sub_1C8778ED8(v379, &qword_1EC2B6110, &qword_1C8BF5070);
          v405 = 0;
          v171 = EnumTagSinglePayload == 1;
          v406 = v563[7];
          if (!v171)
          {
            OUTLINED_FUNCTION_192();
            sub_1C8778810();
            v407 = OUTLINED_FUNCTION_199();
            v401 = v576;
            OUTLINED_FUNCTION_76(v407, v408, v576);
            if (v171)
            {
              OUTLINED_FUNCTION_35_4();
              sub_1C8BD492C();
              v409 = OUTLINED_FUNCTION_199();
              OUTLINED_FUNCTION_76(v409, v410, v401);
              if (!v171)
              {
                sub_1C8778ED8(0, &qword_1EC2B6110, &qword_1C8BF5070);
              }
            }

            else
            {
              OUTLINED_FUNCTION_22_9();
              v411 = OUTLINED_FUNCTION_44_7();
              v412(v411);
            }

            v405 = sub_1C8BD490C();
            v413 = OUTLINED_FUNCTION_18_11();
            v414(v413, v401);
            v299 = v580;
          }

          v579 = v405;
          OUTLINED_FUNCTION_257();
          sub_1C8778810();
          v415 = OUTLINED_FUNCTION_213();
          v417 = __swift_getEnumTagSinglePayload(v415, v416, v406);
          sub_1C8778ED8(v401, &qword_1EC2B5FC8, &unk_1C8BE8DA0);
          if (v417 == 1)
          {
            v577 = 0;
          }

          else
          {
            OUTLINED_FUNCTION_257();
            sub_1C8778810();
            v418 = OUTLINED_FUNCTION_213();
            OUTLINED_FUNCTION_76(v418, v419, v406);
            if (v171)
            {
              OUTLINED_FUNCTION_35_4();
              MEMORY[0x1CCA7D9E0](v420, v421, v422);
              v423 = OUTLINED_FUNCTION_213();
              OUTLINED_FUNCTION_76(v423, v424, v406);
              if (!v171)
              {
                sub_1C8778ED8(v401, &qword_1EC2B5FC8, &unk_1C8BE8DA0);
              }
            }

            else
            {
              OUTLINED_FUNCTION_22_9();
              v425(v543, v401, v406);
            }

            sub_1C8BD48CC();
            v427 = v426;
            v428 = OUTLINED_FUNCTION_18_11();
            v429(v428, v406);
            v577 = v427;
          }

          if (*(v299 + v381[10]) != 7)
          {
            OUTLINED_FUNCTION_49_4();
            sub_1C8BD41DC();
            sub_1C8778ED8(v585, &qword_1EC2B87B0, &qword_1C8BF4878);
            sub_1C87791EC();
          }

          v430 = v381[12];
          v431 = *(v299 + v430);
          v432 = *(v299 + v430 + 4);
          v433 = v585;
          sub_1C8778810();
          LOBYTE(v595) = v432;
          v299 = v580;
          OUTLINED_FUNCTION_49_4();
          sub_1C8BD422C();
          sub_1C8BD45CC();
          OUTLINED_FUNCTION_22_9();
          v434(v431, v564);
          sub_1C8778ED8(v433, &qword_1EC2B87B0, &qword_1C8BF4878);
          v435 = OUTLINED_FUNCTION_18_11();
          v382 = v589;
          v436(v435, v589);
          sub_1C87A8B2C(v299, type metadata accessor for Siri_Nlu_External_UsoEntityIdentifier);
          v385 = v587 + v574;
          v379 = v588 - 1;
          v28 = v591;
          v380 = v592;
          if (v588 == 1)
          {
            goto LABEL_149;
          }
        }

        __break(1u);
      }

      else
      {
LABEL_149:
        OUTLINED_FUNCTION_61_4();
        v438 = *(*(v437 + 32) + 16);
        v439 = v524;
        if (!v438)
        {
LABEL_155:
          OUTLINED_FUNCTION_61_4();
          v588 = *(v455 + 24);
          v155 = v548;
          v456 = v589;
          v457 = v590;
          v587 = *(v588 + 16);
          if (!v587)
          {
            goto LABEL_179;
          }

          v458 = 0;
          v586 = v592[2];
          OUTLINED_FUNCTION_32();
          v585 = v588 + v459;
          v584 = v457 + 16;
          v583 = v513 + 8;
          v581 = (v457 + 8);
          while (v458 < *(v588 + 16))
          {
            sub_1C87A88B8();
            v460 = (v155 + *(v562 + 28));
            if (*(v460 + 4) == 1)
            {
              if (!v586)
              {
                goto LABEL_176;
              }

              v461 = 0;
            }

            else
            {
              v461 = *v460;
              if (v586 <= v461)
              {
LABEL_176:
                v488 = sub_1C888D6F8();
                OUTLINED_FUNCTION_66_4(&type metadata for UsoGraphProtoConversionError, v488);
                *v489 = xmmword_1C8BF4830;
                *(v489 + 16) = 3;
                swift_willThrow();

                v487 = type metadata accessor for Siri_Nlu_External_UtteranceAlignment;
                goto LABEL_177;
              }
            }

            if (v461 >= v592[2])
            {
              goto LABEL_193;
            }

            v591 = v458;
            (*(v457 + 16))(v561, v592 + ((*(v457 + 80) + 32) & ~*(v457 + 80)) + *(v457 + 72) * v461, v456);
            v462 = *(*v155 + 16);
            if (v462)
            {
              OUTLINED_FUNCTION_40_3();
              v465 = v463 + v464;
              v467 = *(v466 + 72);
              v468 = MEMORY[0x1E69E7CC0];
              do
              {
                sub_1C87A88B8();
                OUTLINED_FUNCTION_42_2();
                OUTLINED_FUNCTION_41_5();
                OUTLINED_FUNCTION_42_2();
                OUTLINED_FUNCTION_41_5();
                OUTLINED_FUNCTION_42_2();
                OUTLINED_FUNCTION_41_5();
                sub_1C8BD427C();
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v473 = OUTLINED_FUNCTION_13_0();
                  v468 = sub_1C88DB208(v473, v474, v475, v468);
                }

                v470 = *(v468 + 2);
                v469 = *(v468 + 3);
                v438 = v470 + 1;
                if (v470 >= v469 >> 1)
                {
                  v476 = OUTLINED_FUNCTION_38_7(v469);
                  v468 = sub_1C88DB208(v476, v470 + 1, 1, v468);
                }

                sub_1C87A8B2C(v439, type metadata accessor for Siri_Nlu_External_UtteranceSpan);
                *(v468 + 2) = v438;
                OUTLINED_FUNCTION_17_3();
                (*(v472 + 32))(&v468[v471 + *(v472 + 72) * v470], v594);
                v465 += v467;
                --v462;
              }

              while (v462);
            }

            v458 = v591 + 1;
            v155 = v548;
            OUTLINED_FUNCTION_41_5();
            OUTLINED_FUNCTION_49_4();
            sub_1C8BD436C();
            v477 = v561;
            sub_1C8BD45EC();
            (*v583)(v438, v541);
            v456 = v589;
            (*v581)(v477, v589);
            sub_1C87A8B2C(v155, type metadata accessor for Siri_Nlu_External_UtteranceAlignment);
            v457 = v590;
            if (v458 == v587)
            {
              goto LABEL_179;
            }
          }

          goto LABEL_192;
        }

        OUTLINED_FUNCTION_40_3();
        v442 = v440 + v441;
        OUTLINED_FUNCTION_17_3();
        v588 = v592 + v443;
        v445 = *(v444 + 72);
        v586 = v446 + 16;
        v587 = v445;
        v447 = (v515 + 8);
        v585 = v446 + 8;
        while (1)
        {
          sub_1C87A88B8();
          v448 = *(v28 + *(v563[3] + 20));
          OUTLINED_FUNCTION_36_3();
          swift_beginAccess();
          v449 = *(v448 + 16);
          if (*(v448 + 20))
          {
            v449 = 0;
          }

          if (v449 >= v592[2])
          {
            break;
          }

          v451 = v589;
          v450 = v590;
          v452 = v563[0];
          (*(v590 + 16))(v563[0], v588 + *(v590 + 72) * v449, v589);
          OUTLINED_FUNCTION_56_2();
          sub_1C888B410(v591, v453);
          sub_1C8BD45BC();
          v454 = v28;
          v28 = v591;
          (*v447)(v454, v563[2]);
          (*(v450 + 8))(v452, v451);
          sub_1C87A8B2C(v28, type metadata accessor for Siri_Nlu_External_UsoEntitySpan);
          v442 += v587;
          if (!--v438)
          {
            goto LABEL_155;
          }
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_191:
    __break(1u);
LABEL_192:
    __break(1u);
LABEL_193:
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_32();
  v569 = v158 + v161;
  v559 = v140 + 32;
  v584 = v140 + 8;
  v554 = (v587 + 8);
  v532 = v124 + 32;
  v550 = (v124 + 8);
  v162 = 0;
  v566 = v163 + 32;
  v512[0] = v592 + 4;
  v512[2] = v592 + 1;
  v512[1] = v164 + 32;
  v521 = v164 + 8;
  v592 = MEMORY[0x1E69E7CC0];
  v588 = v155;
  v165 = v583;
  v567 = v151;
  v167 = v166;
  v568 = v158;
  while (v162 < *(v158 + 16))
  {
    v587 = v162;
    v155 = v588;
    sub_1C87A88B8();
    v168 = v155 + *(v165 + 6);
    if ((v168[4] & 1) != 0 || (v169 = *v168) == 0)
    {
      v189 = *(v165 + 9);
      OUTLINED_FUNCTION_52_2();
      sub_1C8778810();
      OUTLINED_FUNCTION_193_0();
      OUTLINED_FUNCTION_79_0();
      v193 = __swift_getEnumTagSinglePayload(v190, v191, v192);
      v194 = OUTLINED_FUNCTION_80_1();
      sub_1C8778ED8(v194, v195, &unk_1C8BF9F90);
      if (v193 == 1)
      {
        v196 = v557;

        OUTLINED_FUNCTION_56_2();
        sub_1C8BD44CC();
        OUTLINED_FUNCTION_218();
        goto LABEL_30;
      }

      OUTLINED_FUNCTION_231();
      sub_1C8778810();
      OUTLINED_FUNCTION_17_6(v155);
      v197 = v540;
      if (v171)
      {
        sub_1C8BD486C();
        OUTLINED_FUNCTION_17_6(v155);
        if (!v171)
        {
          sub_1C8778ED8(v155, &qword_1EC2B6948, &unk_1C8BF9F90);
        }
      }

      else
      {
        OUTLINED_FUNCTION_22_9();
        v200(v197, v155, v28);
      }

      OUTLINED_FUNCTION_83_1();
      v201 = MEMORY[0x1CCA7DA50](v197, v189);
      v202 = *v550;
      (*v550)(v189, v28);
      v202(v197, v28);
      if (v201)
      {
        v595 = 0;
        v596 = 0xE000000000000000;
        v203 = v583;
        OUTLINED_FUNCTION_73_4(*(v583 + 44));

        v204 = OUTLINED_FUNCTION_196_0();
        MEMORY[0x1CCA7E2D0](v204);

        v205 = sub_1C8BD433C();
        MEMORY[0x1CCA7E2D0](v205);

        OUTLINED_FUNCTION_73_4(*(v203 + 40));

        v206 = OUTLINED_FUNCTION_196_0();
        MEMORY[0x1CCA7E2D0](v206);

        OUTLINED_FUNCTION_49_4();
        sub_1C8BD44AC();
        v196 = v557;
        OUTLINED_FUNCTION_218();
LABEL_30:
        sub_1C8BD454C();
        v167 = v586;
        v207 = v568;
      }

      else
      {
        v155 = v588;
        OUTLINED_FUNCTION_238();
        sub_1C8778810();
        OUTLINED_FUNCTION_17_6(&unk_1C8BF9F90);
        v207 = v568;
        if (v171)
        {
          OUTLINED_FUNCTION_70_3();
          sub_1C8BD486C();
          OUTLINED_FUNCTION_17_6(&unk_1C8BF9F90);
          if (!v171)
          {
            sub_1C8778ED8(&unk_1C8BF9F90, &qword_1EC2B6948, &unk_1C8BF9F90);
          }
        }

        else
        {
          OUTLINED_FUNCTION_22_9();
          v197 = v531;
          v213 = OUTLINED_FUNCTION_218();
          v214(v213);
        }

        v215 = v197;
        v216 = sub_1C8BD484C();
        OUTLINED_FUNCTION_76_2();
        (v202)(v217, v218, v219);
        OUTLINED_FUNCTION_35_4();
        sub_1C87A8910(v216, v220);
        v221 = OUTLINED_FUNCTION_155_0();
        v222 = v586;
        OUTLINED_FUNCTION_76(v221, v223, v586);
        if (v171)
        {
          sub_1C8778ED8(v215, &qword_1EC2B87B8, &unk_1C8BF4890);
          OUTLINED_FUNCTION_55_4();
          Siri_Nlu_External_UsoNode.usoVerbElementID.getter();
          sub_1C8BD484C();
          OUTLINED_FUNCTION_76_2();
          (v202)(v497, v498, v499);
          goto LABEL_174;
        }

        OUTLINED_FUNCTION_22_9();
        v224 = OUTLINED_FUNCTION_218();
        v225(v224);
        v595 = sub_1C8BD455C();
        v596 = v226;
        v227 = sub_1C8BD433C();
        MEMORY[0x1CCA7E2D0](v227);

        v167 = v222;
        v196 = v557;

        v238 = OUTLINED_FUNCTION_196_0();
        MEMORY[0x1CCA7E2D0](v238);

        OUTLINED_FUNCTION_56_2();
        sub_1C8BD44AC();
        OUTLINED_FUNCTION_218();
        sub_1C8BD454C();
        (*v584)(v538, v222);
      }

      v239 = v582[0];
      sub_1C8BD463C();
      if ((OUTLINED_FUNCTION_65_5() & 1) == 0)
      {
        v283 = OUTLINED_FUNCTION_13_0();
        v239 = sub_1C87A8A00(v283, v284, v285, v239);
      }

      v172 = v239[2];
      v240 = v239[3];
      v155 = (v172 + 1);
      v138 = v207;
      if (v172 >= v240 >> 1)
      {
        v592 = OUTLINED_FUNCTION_15_7(v240);
      }

      else
      {
        v592 = v239;
      }

      (*v584)(v196, v167);
      v188 = v571;
      v165 = v583;
      goto LABEL_44;
    }

    OUTLINED_FUNCTION_35_4();
    sub_1C87A8910(v169, v170);
    OUTLINED_FUNCTION_73(v156);
    if (v171)
    {
      sub_1C8778ED8(v156, &qword_1EC2B87B8, &unk_1C8BF4890);
LABEL_174:
      v483 = sub_1C888D6F8();
      v484 = OUTLINED_FUNCTION_66_4(&type metadata for UsoGraphProtoConversionError, v483);
      OUTLINED_FUNCTION_53_4(v484, v485, v486);

      goto LABEL_175;
    }

    v172 = v573;
    OUTLINED_FUNCTION_50_5();
    v553 = v173;
    v173(v174, v175, v176);
    OUTLINED_FUNCTION_55_4();
    sub_1C8BD452C();
    OUTLINED_FUNCTION_49_4();
    sub_1C8BD453C();
    v177 = v555;
    OUTLINED_FUNCTION_60_2();
    sub_1C8BD452C();
    v155 = v584;
    v165 = *v584;
    (*v584)(v167, v167);
    v178 = sub_1C8BD449C();
    v179 = *v554;
    v180 = v177;
    v181 = v556;
    (*v554)(v180, v556);
    v179(v138, v181);
    if (v178)
    {
      v182 = v165;
      v183 = v582[0];
      sub_1C8BD46AC();
      if ((OUTLINED_FUNCTION_65_5() & 1) == 0)
      {
        v286 = OUTLINED_FUNCTION_13_0();
        v183 = sub_1C87A8A00(v286, v287, v288, v183);
      }

      v167 = v586;
      v165 = v583;
      v138 = v568;
      OUTLINED_FUNCTION_30_7();
      if (v185)
      {
        v592 = OUTLINED_FUNCTION_15_7(v184);
      }

      else
      {
        v592 = v183;
      }

      v186 = OUTLINED_FUNCTION_47_4();
      v182(v186);
      v187 = &v578;
      goto LABEL_13;
    }

    sub_1C8BD44FC();
    MEMORY[0x1CCA7D610](v172, v167);
    v198 = OUTLINED_FUNCTION_67_3();
    v199 = v586;
    (v165)(v198, v586);
    v138 = v165;
    sub_1C8BD450C();
    MEMORY[0x1CCA7D610](v172, v167);
    v208 = OUTLINED_FUNCTION_67_3();
    (v165)(v208, v199);
    v209 = v588;
    if (v178)
    {
      v167 = v199;
      v546 = v165;
      OUTLINED_FUNCTION_52_2();
      sub_1C8778810();
      v210 = OUTLINED_FUNCTION_193_0();
      v155 = v530;
      v212 = __swift_getEnumTagSinglePayload(v210, v211, v530);
      v172 = &unk_1C8BE8D90;
      sub_1C8778ED8(v165, &qword_1EC2B6940, &unk_1C8BE8D90);
      if (v212 != 1)
      {
        OUTLINED_FUNCTION_52_2();
        sub_1C8778810();
        OUTLINED_FUNCTION_219();
        OUTLINED_FUNCTION_76(v245, v246, v247);
        if (v171)
        {
          OUTLINED_FUNCTION_35_4();
          MEMORY[0x1CCA7D9A0](v248, v249, v250);
          OUTLINED_FUNCTION_219();
          OUTLINED_FUNCTION_76(v251, v252, v253);
          if (!v171)
          {
            sub_1C8778ED8(v165, &qword_1EC2B6940, &unk_1C8BE8D90);
          }
        }

        else
        {
          OUTLINED_FUNCTION_22_9();
          v257(v523, v165, v155);
        }

        sub_1C8BD488C();
        OUTLINED_FUNCTION_22_9();
        v258 = OUTLINED_FUNCTION_80_1();
        v259(v258);
      }

      v260 = v582[0];
      sub_1C8BD464C();
      v261 = OUTLINED_FUNCTION_65_5();
      v165 = v583;
      if ((v261 & 1) == 0)
      {
        v289 = OUTLINED_FUNCTION_13_0();
        v260 = sub_1C87A8A00(v289, v290, v291, v260);
      }

      OUTLINED_FUNCTION_30_7();
      v138 = v568;
      if (v185)
      {
        v592 = OUTLINED_FUNCTION_15_7(v262);
      }

      else
      {
        v592 = v260;
      }

      v263 = OUTLINED_FUNCTION_47_4();
      v546(v263);
      v187 = &v549;
      goto LABEL_13;
    }

    v228 = *(v583 + 36);
    OUTLINED_FUNCTION_52_2();
    v155 = &qword_1EC2B6948;
    v172 = &unk_1C8BF9F90;
    sub_1C8778810();
    v229 = OUTLINED_FUNCTION_193_0();
    v230 = v558;
    v232 = __swift_getEnumTagSinglePayload(v229, v231, v558);
    v233 = OUTLINED_FUNCTION_80_1();
    sub_1C8778ED8(v233, v234, &unk_1C8BF9F90);
    if (v232 == 1)
    {
      v235 = v582[0];
      sub_1C8BD463C();
      if ((OUTLINED_FUNCTION_65_5() & 1) == 0)
      {
        v292 = OUTLINED_FUNCTION_13_0();
        v235 = sub_1C87A8A00(v292, v293, v294, v235);
      }

      OUTLINED_FUNCTION_58_3();
      OUTLINED_FUNCTION_30_7();
      v167 = v586;
      if (v185)
      {
        v592 = OUTLINED_FUNCTION_15_7(v236);
      }

      else
      {
        v592 = v235;
      }

      v237 = OUTLINED_FUNCTION_47_4();
      v165(v237);
      v187 = &v544;
LABEL_13:
      v188 = *(v187 - 32);
LABEL_44:
      v241 = v589;
      goto LABEL_45;
    }

    OUTLINED_FUNCTION_52_2();
    sub_1C8778810();
    OUTLINED_FUNCTION_73(v165);
    v254 = v522;
    v546 = v165;
    if (v171)
    {
      sub_1C8BD486C();
      OUTLINED_FUNCTION_73(v165);
      if (!v171)
      {
        v255 = OUTLINED_FUNCTION_80_1();
        sub_1C8778ED8(v255, v256, &unk_1C8BF9F90);
      }
    }

    else
    {
      OUTLINED_FUNCTION_22_9();
      v264(v254, v165, v230);
    }

    OUTLINED_FUNCTION_83_1();
    v265 = MEMORY[0x1CCA7DA50](v254, v209);
    v266 = *v550;
    (*v550)(v209, v230);
    v267 = v266;
    (v266)(v254, v230);
    v268 = v586;
    if (v265)
    {
      v165 = v583;
      v155 = v588;
      v172 = v529;
      v278 = v520;

      OUTLINED_FUNCTION_55_4();
      sub_1C8BD44BC();
      OUTLINED_FUNCTION_218();
      sub_1C8BD454C();
      v268 = v586;
    }

    else
    {
      OUTLINED_FUNCTION_238();
      sub_1C8778810();
      OUTLINED_FUNCTION_73(v228);
      v172 = v529;
      if (v171)
      {
        OUTLINED_FUNCTION_70_3();
        sub_1C8BD486C();
        OUTLINED_FUNCTION_73(v228);
        v165 = v267;
        if (!v171)
        {
          sub_1C8778ED8(v228, &qword_1EC2B6948, &unk_1C8BF9F90);
        }
      }

      else
      {
        OUTLINED_FUNCTION_22_9();
        v254 = v512[6];
        v269 = OUTLINED_FUNCTION_218();
        v270(v269);
        v165 = v267;
      }

      v156 = v254;
      v271 = sub_1C8BD484C();
      OUTLINED_FUNCTION_251_0();
      OUTLINED_FUNCTION_76_2();
      (v165)(v272, v273, v274);
      OUTLINED_FUNCTION_35_4();
      sub_1C87A8910(v271, v275);
      v276 = OUTLINED_FUNCTION_155_0();
      v162 = v268;
      OUTLINED_FUNCTION_76(v276, v277, v268);
      v155 = v588;
      if (v171)
      {
        goto LABEL_187;
      }

      v553(v172, v156, v268);
      v278 = v520;
      v165 = v583;
    }

    sub_1C8BD467C();
    v279 = v582[0];
    sub_1C8BD463C();
    if ((OUTLINED_FUNCTION_65_5() & 1) == 0)
    {
      v295 = OUTLINED_FUNCTION_13_0();
      v279 = sub_1C87A8A00(v295, v296, v297, v279);
    }

    OUTLINED_FUNCTION_30_7();
    if (v185)
    {
      v592 = OUTLINED_FUNCTION_15_7(v280);
    }

    else
    {
      v592 = v279;
    }

    v281 = v278;
    v167 = v268;
    v282 = v546;
    (v546)(v281, v268);
    v282(v529, v268);
    v282(v573, v268);
    v188 = v528;
    v241 = v589;
    v138 = v568;
LABEL_45:
    v162 = v587 + 1;
    sub_1C87A8B2C(v588, type metadata accessor for Siri_Nlu_External_UsoNode);
    v592[2] = v155;
    OUTLINED_FUNCTION_17_3();
    (*(v244 + 32))(v243 + v242 + *(v244 + 72) * v172, v188, v241);
    v28 = v591;
    v156 = v579;
    v158 = v138;
    if (v570 == v162)
    {
      goto LABEL_80;
    }
  }

  __break(1u);
LABEL_187:
  sub_1C8778ED8(v156, &qword_1EC2B87B8, &unk_1C8BF4890);
  OUTLINED_FUNCTION_49_4();
  Siri_Nlu_External_UsoNode.usoVerbElementID.getter();
  sub_1C8BD484C();
  OUTLINED_FUNCTION_67_3();
  OUTLINED_FUNCTION_76_2();
  (v165)(v505, v506, v507);
  v508 = sub_1C888D6F8();
  v509 = OUTLINED_FUNCTION_66_4(&type metadata for UsoGraphProtoConversionError, v508);
  OUTLINED_FUNCTION_53_4(v509, v510, v511);

  (v546)(v573, v162);
LABEL_175:
  v487 = type metadata accessor for Siri_Nlu_External_UsoNode;
LABEL_177:
  v490 = v487;
  v491 = v155;
LABEL_178:
  sub_1C87A8B2C(v491, v490);
LABEL_179:
}