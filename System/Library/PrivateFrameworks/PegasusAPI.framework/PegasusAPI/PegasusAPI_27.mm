uint64_t Apple_Parsec_Feedback_V2_RankingFeedback.sections.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_RankingFeedback.hiddenResults.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_RankingFeedback.spotlightQueryIntent.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 32) = *result;
  *(v1 + 40) = v2;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_RankingFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Feedback_V2_RankingFeedback(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Feedback_V2_RankingFeedback.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = v2;
  *(a1 + 24) = v2;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_RankingFeedback(0);
  return OUTLINED_FUNCTION_694_0(v3);
}

uint64_t Apple_Parsec_Feedback_V2_SectionRankingFeedback.section.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Apple_Parsec_Feedback_V2_SectionRankingFeedback(v7);
  OUTLINED_FUNCTION_100_3();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_ResultSectionForFeedback(0);
  OUTLINED_FUNCTION_29_14(v8);
  if (v9)
  {
    Apple_Parsec_Feedback_V2_ResultSectionForFeedback.init()(a1);
    result = OUTLINED_FUNCTION_9_2();
    if (!v9)
    {
      return sub_1B8D9207C(v1, &unk_1EBAB9178, &unk_1B964D960);
    }
  }

  else
  {
    OUTLINED_FUNCTION_12_17();
    OUTLINED_FUNCTION_182();
    return sub_1B8FAC528();
  }

  return result;
}

uint64_t Apple_Parsec_Feedback_V2_SectionRankingFeedback.section.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Feedback_V2_SectionRankingFeedback(v1);
  sub_1B8D9207C(v0 + *(v2 + 36), &unk_1EBAB9178, &unk_1B964D960);
  OUTLINED_FUNCTION_12_17();
  OUTLINED_FUNCTION_122_0();
  sub_1B8FAC528();
  type metadata accessor for Apple_Parsec_Feedback_V2_ResultSectionForFeedback(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_Feedback_V2_SectionRankingFeedback.section.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_26_1(v7);
  v9 = type metadata accessor for Apple_Parsec_Feedback_V2_ResultSectionForFeedback(v8);
  OUTLINED_FUNCTION_140_2(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_202_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_89_0(v13);
  v15 = type metadata accessor for Apple_Parsec_Feedback_V2_SectionRankingFeedback(v14);
  OUTLINED_FUNCTION_256_1(*(v15 + 36));
  OUTLINED_FUNCTION_17_2();
  if (v16)
  {
    OUTLINED_FUNCTION_608_0(MEMORY[0x1E69E7CC0]);
    type metadata accessor for Apple_Parsec_Feedback_V2_ButtonForFeedback(0);
    OUTLINED_FUNCTION_756();
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
    OUTLINED_FUNCTION_17_2();
    if (!v16)
    {
      sub_1B8D9207C(v0, &unk_1EBAB9178, &unk_1B964D960);
    }
  }

  else
  {
    OUTLINED_FUNCTION_12_17();
    OUTLINED_FUNCTION_246();
    sub_1B8FAC528();
  }

  OUTLINED_FUNCTION_242();
}

void sub_1B8F68528()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_67();
  if (v5)
  {
    OUTLINED_FUNCTION_128();
    sub_1B8FAC578();
    sub_1B8D9207C(v4 + v3, &unk_1EBAB9178, &unk_1B964D960);
    OUTLINED_FUNCTION_12_17();
    OUTLINED_FUNCTION_691_0();
    OUTLINED_FUNCTION_30_2();
    OUTLINED_FUNCTION_156_5();
    sub_1B8FAC5C8();
  }

  else
  {
    sub_1B8D9207C(v4 + v3, &unk_1EBAB9178, &unk_1B964D960);
    OUTLINED_FUNCTION_12_17();
    OUTLINED_FUNCTION_692_0();
    OUTLINED_FUNCTION_30_2();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_242();

  free(v6);
}

uint64_t sub_1B8F686DC()
{
  v0 = OUTLINED_FUNCTION_338_0();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_18_1();

  return v3(v2);
}

uint64_t sub_1B8F68760()
{
  v0 = OUTLINED_FUNCTION_313();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_21_7();
  v2 = OUTLINED_FUNCTION_209();

  return v3(v2);
}

uint64_t Apple_Parsec_Feedback_V2_SectionRankingFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Feedback_V2_SectionRankingFeedback(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Feedback_V2_SectionRankingFeedback.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a1 = 0;
  *(a1 + 8) = v2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_SectionRankingFeedback(0);
  OUTLINED_FUNCTION_690_0(v3);
  type metadata accessor for Apple_Parsec_Feedback_V2_ResultSectionForFeedback(0);
  v4 = OUTLINED_FUNCTION_40_3();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

void Apple_Parsec_Feedback_V2_ResultRankingFeedback.result.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_26_1(v8);
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(v9);
  OUTLINED_FUNCTION_140_2(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_202_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_89_0(v14);
  v16 = type metadata accessor for Apple_Parsec_Feedback_V2_ResultRankingFeedback(v15);
  OUTLINED_FUNCTION_256_1(*(v16 + 40));
  OUTLINED_FUNCTION_17_2();
  if (v17)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB6BC0 != -1)
    {
      OUTLINED_FUNCTION_41_9(&qword_1EBAB6BC0);
    }

    OUTLINED_FUNCTION_57_2();
    if (v0 != 1)
    {
      sub_1B8D9207C(v1, &qword_1EBAB9168, &qword_1B964D950);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_21();
    OUTLINED_FUNCTION_246();
    sub_1B8FAC528();
  }

  OUTLINED_FUNCTION_242();
}

uint64_t Apple_Parsec_Feedback_V2_ResultRankingFeedback.hiddenResults.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t sub_1B8F68B3C()
{
  v0 = OUTLINED_FUNCTION_338_0();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_18_1();

  return v3(v2);
}

uint64_t sub_1B8F68BC0()
{
  v0 = OUTLINED_FUNCTION_313();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_21_7();
  v2 = OUTLINED_FUNCTION_209();

  return v3(v2);
}

uint64_t Apple_Parsec_Feedback_V2_ResultRankingFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Feedback_V2_ResultRankingFeedback(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Feedback_V2_ResultRankingFeedback.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a1 = 0;
  *(a1 + 8) = v2;
  *(a1 + 16) = v2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_ResultRankingFeedback(0);
  OUTLINED_FUNCTION_643_0(v3);
  v4 = OUTLINED_FUNCTION_663_0();
  type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(v4);
  v5 = OUTLINED_FUNCTION_40_3();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t Apple_Parsec_Feedback_V2_ResultFeedback.result.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Apple_Parsec_Feedback_V2_ResultFeedback(v7);
  OUTLINED_FUNCTION_100_3();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(0);
  OUTLINED_FUNCTION_29_14(v8);
  if (v9)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB6BC0 != -1)
    {
      OUTLINED_FUNCTION_41_9(&qword_1EBAB6BC0);
    }

    result = OUTLINED_FUNCTION_59_0();
    if (a1 != 1)
    {
      return sub_1B8D9207C(v1, &qword_1EBAB9168, &qword_1B964D950);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_21();
    OUTLINED_FUNCTION_182();
    return sub_1B8FAC528();
  }

  return result;
}

uint64_t Apple_Parsec_Feedback_V2_ResultFeedback.result.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Feedback_V2_ResultFeedback(v1);
  sub_1B8D9207C(v0 + *(v2 + 24), &qword_1EBAB9168, &qword_1B964D950);
  OUTLINED_FUNCTION_2_21();
  OUTLINED_FUNCTION_122_0();
  sub_1B8FAC528();
  type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_Feedback_V2_ResultFeedback.result.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_26_1(v8);
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(v9);
  OUTLINED_FUNCTION_140_2(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_202_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_89_0(v14);
  v16 = type metadata accessor for Apple_Parsec_Feedback_V2_ResultFeedback(v15);
  OUTLINED_FUNCTION_256_1(*(v16 + 24));
  OUTLINED_FUNCTION_17_2();
  if (v17)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB6BC0 != -1)
    {
      OUTLINED_FUNCTION_41_9(&qword_1EBAB6BC0);
    }

    OUTLINED_FUNCTION_57_2();
    if (v0 != 1)
    {
      sub_1B8D9207C(v1, &qword_1EBAB9168, &qword_1B964D950);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_21();
    OUTLINED_FUNCTION_246();
    sub_1B8FAC528();
  }

  OUTLINED_FUNCTION_242();
}

void sub_1B8F68F8C()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_67();
  if (v5)
  {
    OUTLINED_FUNCTION_128();
    sub_1B8FAC578();
    sub_1B8D9207C(v4 + v3, &qword_1EBAB9168, &qword_1B964D950);
    OUTLINED_FUNCTION_2_21();
    OUTLINED_FUNCTION_691_0();
    OUTLINED_FUNCTION_30_2();
    OUTLINED_FUNCTION_13_13();
    sub_1B8FAC5C8();
  }

  else
  {
    sub_1B8D9207C(v4 + v3, &qword_1EBAB9168, &qword_1B964D950);
    OUTLINED_FUNCTION_2_21();
    OUTLINED_FUNCTION_692_0();
    OUTLINED_FUNCTION_30_2();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_242();

  free(v6);
}

uint64_t Apple_Parsec_Feedback_V2_ResultFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Feedback_V2_ResultFeedback(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Feedback_V2_ResultEngagementFeedback.actionTarget.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 48) = *result;
  *(v1 + 56) = v2;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_ResultEngagementFeedback.result.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Apple_Parsec_Feedback_V2_ResultEngagementFeedback(v7);
  OUTLINED_FUNCTION_100_3();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(0);
  OUTLINED_FUNCTION_29_14(v8);
  if (v9)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB6BC0 != -1)
    {
      OUTLINED_FUNCTION_41_9(&qword_1EBAB6BC0);
    }

    result = OUTLINED_FUNCTION_59_0();
    if (a1 != 1)
    {
      return sub_1B8D9207C(v1, &qword_1EBAB9168, &qword_1B964D950);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_21();
    OUTLINED_FUNCTION_182();
    return sub_1B8FAC528();
  }

  return result;
}

uint64_t Apple_Parsec_Feedback_V2_ResultEngagementFeedback.result.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Feedback_V2_ResultEngagementFeedback(v1);
  sub_1B8D9207C(v0 + *(v2 + 48), &qword_1EBAB9168, &qword_1B964D950);
  OUTLINED_FUNCTION_2_21();
  OUTLINED_FUNCTION_122_0();
  sub_1B8FAC528();
  type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_Feedback_V2_ResultEngagementFeedback.result.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_26_1(v8);
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(v9);
  OUTLINED_FUNCTION_140_2(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_202_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_89_0(v14);
  v16 = type metadata accessor for Apple_Parsec_Feedback_V2_ResultEngagementFeedback(v15);
  OUTLINED_FUNCTION_256_1(*(v16 + 48));
  OUTLINED_FUNCTION_17_2();
  if (v17)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB6BC0 != -1)
    {
      OUTLINED_FUNCTION_41_9(&qword_1EBAB6BC0);
    }

    OUTLINED_FUNCTION_57_2();
    if (v0 != 1)
    {
      sub_1B8D9207C(v1, &qword_1EBAB9168, &qword_1B964D950);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_21();
    OUTLINED_FUNCTION_246();
    sub_1B8FAC528();
  }

  OUTLINED_FUNCTION_242();
}

uint64_t sub_1B8F69500()
{
  OUTLINED_FUNCTION_250_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_137();
  v1(0);
  OUTLINED_FUNCTION_225_0();
  sub_1B8F1B8B8();
  v6 = v0(0);
  OUTLINED_FUNCTION_220_2(v6);
  return OUTLINED_FUNCTION_681_0();
}

uint64_t sub_1B8F695C8()
{
  v1 = OUTLINED_FUNCTION_218_0();
  v2(v1);
  OUTLINED_FUNCTION_397();
  sub_1B8D9207C(v3, v4, v5);
  v0(0);
  v6 = OUTLINED_FUNCTION_282_1();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t Apple_Parsec_Feedback_V2_ResultEngagementFeedback.titleText.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_ResultEngagementFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Feedback_V2_ResultEngagementFeedback(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Feedback_V2_ResultEngagementFeedback.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_581_0(a1);
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
  OUTLINED_FUNCTION_724(1);
  *(v1 + 48) = 0;
  *(v1 + 56) = v3;
  *(v1 + 64) = 0;
  *(v1 + 72) = 0xE000000000000000;
  *(v1 + 80) = 0;
  type metadata accessor for Apple_Parsec_Feedback_V2_ResultEngagementFeedback(0);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(0);
  v4 = OUTLINED_FUNCTION_40_3();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

void Apple_Parsec_Feedback_V2_CommandEngagementFeedback.commandType.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_275_1();
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback(v4);
  v6 = OUTLINED_FUNCTION_47(v5);
  v8 = *(v0 + v3);
  if ((v6 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback._StorageClass(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B8FC7F28(v9);
    OUTLINED_FUNCTION_72_2(v10);
  }

  OUTLINED_FUNCTION_9_3(v8 + 16, v7);
  *(v8 + 16) = v1;
  *(v8 + 24) = v2;
  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Feedback_V2_CommandEngagementFeedback.commandType.modify()
{
  v1 = OUTLINED_FUNCTION_196_1();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_37_3(v2);
  v4 = type metadata accessor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback(v3);
  OUTLINED_FUNCTION_21_8(v4);
  OUTLINED_FUNCTION_344_0();
  OUTLINED_FUNCTION_71_2(*(v0 + 16));
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F698A4()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_7_14();
  v4 = OUTLINED_FUNCTION_459_0();
  v5 = *(v3 + v0);
  if ((v4 & 1) == 0)
  {
    v6 = OUTLINED_FUNCTION_425_0();
    type metadata accessor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback._StorageClass(v6);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FC7F28(v7);
    OUTLINED_FUNCTION_73_2(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v5 + 16) = v1;
  *(v5 + 24) = v2;
  OUTLINED_FUNCTION_242();

  free(v9);
}

void sub_1B8F69948(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Apple_Parsec_Feedback_V2_CommandEngagementFeedback.commandDetail.setter(v1, v2);
}

uint64_t Apple_Parsec_Feedback_V2_CommandEngagementFeedback.commandDetail.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_11_10(v3);
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback(v4);
  OUTLINED_FUNCTION_66_1(v5);
  OUTLINED_FUNCTION_374_0();
  v6 = *(v0 + 40);
  *(v1 + 48) = *(v0 + 32);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

uint64_t Apple_Parsec_Feedback_V2_CommandEngagementFeedback.uniqueButtonID.getter()
{
  v1 = type metadata accessor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback(0);
  OUTLINED_FUNCTION_354_0(v1, v2);
  return *(v0 + 48);
}

uint64_t Apple_Parsec_Feedback_V2_CommandEngagementFeedback.uniqueButtonID.setter()
{
  v3 = OUTLINED_FUNCTION_65_3();
  v4 = type metadata accessor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback(v3);
  v5 = OUTLINED_FUNCTION_182_0(v4);
  v7 = *(v1 + v2);
  if ((v5 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback._StorageClass(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8FC7F28(v8);
    OUTLINED_FUNCTION_157_2(v9);
  }

  result = OUTLINED_FUNCTION_9_3(v7 + 48, v6);
  *(v7 + 48) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_CommandEngagementFeedback.uniqueButtonID.modify()
{
  v2 = OUTLINED_FUNCTION_196_1();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_138_3(v3);
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback(v4);
  OUTLINED_FUNCTION_225_2(v5);
  OUTLINED_FUNCTION_62_0(v0 + 48);
  *(v1 + 72) = *(v0 + 48);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F69B70()
{
  OUTLINED_FUNCTION_7_14();
  v4 = OUTLINED_FUNCTION_500_0();
  v5 = *(v3 + v1);
  if ((v4 & 1) == 0)
  {
    v6 = OUTLINED_FUNCTION_278_1();
    type metadata accessor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback._StorageClass(v6);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FC7F28(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v5 + 48) = v2;

  free(v0);
}

uint64_t Apple_Parsec_Feedback_V2_CommandEngagementFeedback.cardSectionID.getter()
{
  type metadata accessor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback(0);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_10_4(v0 + 56, v1);

  return OUTLINED_FUNCTION_432();
}

void Apple_Parsec_Feedback_V2_CommandEngagementFeedback.cardSectionID.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback(v4);
  v6 = OUTLINED_FUNCTION_47(v5);
  v8 = *(v1 + v3);
  if ((v6 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback._StorageClass(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B8FC7F28(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  OUTLINED_FUNCTION_9_3(v8 + 56, v7);
  *(v8 + 56) = v2;
  *(v8 + 64) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Feedback_V2_CommandEngagementFeedback.cardSectionID.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_11_10(v3);
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback(v4);
  OUTLINED_FUNCTION_66_1(v5);
  OUTLINED_FUNCTION_62_0(v0 + 56);
  v6 = *(v0 + 64);
  *(v1 + 48) = *(v0 + 56);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8F69D5C()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Feedback_V2_CommandEngagementFeedback.cardSectionID.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      v8 = OUTLINED_FUNCTION_18_9();
      type metadata accessor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback._StorageClass(v8);
      OUTLINED_FUNCTION_57_0();
      swift_allocObject();
      v9 = OUTLINED_FUNCTION_40_0();
      v10 = sub_1B8FC7F28(v9);
      OUTLINED_FUNCTION_168(v10);
    }

    OUTLINED_FUNCTION_59_3(v7 + 56);
    *(v7 + 56) = v3;
    *(v7 + 64) = v2;
  }

  free(v0);
}

uint64_t Apple_Parsec_Feedback_V2_CommandEngagementFeedback.result.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback(v7);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_343_0();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(0);
  OUTLINED_FUNCTION_29_14(v8);
  if (v9)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB6BC0 != -1)
    {
      OUTLINED_FUNCTION_41_9(&qword_1EBAB6BC0);
    }

    result = OUTLINED_FUNCTION_59_0();
    if (a1 != 1)
    {
      return sub_1B8D9207C(v1, &qword_1EBAB9168, &qword_1B964D950);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_21();
    OUTLINED_FUNCTION_182();
    return sub_1B8FAC528();
  }

  return result;
}

uint64_t Apple_Parsec_Feedback_V2_CommandEngagementFeedback.result.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9168, &qword_1B964D950);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback(v2);
  if ((OUTLINED_FUNCTION_47(v3) & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback._StorageClass(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_40_0();
    v5 = sub_1B8FC7F28(v4);
    OUTLINED_FUNCTION_135(v5);
  }

  OUTLINED_FUNCTION_2_21();
  OUTLINED_FUNCTION_294();
  sub_1B8FAC528();
  v6 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(0);
  OUTLINED_FUNCTION_65_1(v6);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  return swift_endAccess();
}

void Apple_Parsec_Feedback_V2_CommandEngagementFeedback.result.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(v9);
  OUTLINED_FUNCTION_135_0();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_224_2(v13);
  type metadata accessor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback(v14);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_150_2();
  OUTLINED_FUNCTION_17_2();
  if (v15)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB6BC0 != -1)
    {
      OUTLINED_FUNCTION_41_9(&qword_1EBAB6BC0);
    }

    OUTLINED_FUNCTION_57_2();
    if (v0 != 1)
    {
      sub_1B8D9207C(v1, &qword_1EBAB9168, &qword_1B964D950);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_21();
    OUTLINED_FUNCTION_246();
    sub_1B8FAC528();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Feedback_V2_CommandEngagementFeedback.hasResult.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback(v4);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_285_0();
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Apple_Parsec_Feedback_V2_CommandEngagementFeedback.clearResult()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9168, &qword_1B964D950);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback(v2);
  if ((OUTLINED_FUNCTION_182_0(v3) & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback._StorageClass(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_40_0();
    v5 = sub_1B8FC7F28(v4);
    OUTLINED_FUNCTION_157_2(v5);
  }

  v6 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(0);
  OUTLINED_FUNCTION_274_1(v6);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  swift_endAccess();
}

uint64_t Apple_Parsec_Feedback_V2_CommandEngagementFeedback.timestamp.modify()
{
  v0 = OUTLINED_FUNCTION_196_1();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_138_3(v1);
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback(v2);
  OUTLINED_FUNCTION_225_2(v3);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_838();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_CommandEngagementFeedback.resultSectionID.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_11_10(v1);
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback(v2);
  OUTLINED_FUNCTION_254_1(v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Apple_Parsec_Feedback_V2_CommandEngagementFeedback.triggerEvent.modify()
{
  v0 = OUTLINED_FUNCTION_196_1();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_37_3(v1);
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback(v2);
  OUTLINED_FUNCTION_264_1(v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_117_0();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_CommandEngagementFeedback.contactActionType.modify()
{
  v0 = OUTLINED_FUNCTION_196_1();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_37_3(v1);
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback(v2);
  OUTLINED_FUNCTION_264_1(v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_117_0();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_CommandEngagementFeedback.didDisplayHandleOptions.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_6_11(v1);
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback(v2);
  OUTLINED_FUNCTION_124_0(v3);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_CommandEngagementFeedback.didSelectFromOptionsMenu.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_6_11(v1);
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback(v2);
  OUTLINED_FUNCTION_124_0(v3);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F6A944()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_522_0();
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_79();
  v8 = v2(0);
  OUTLINED_FUNCTION_309_0(v8);
  OUTLINED_FUNCTION_433_0();
  type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAttributes(0);
  OUTLINED_FUNCTION_199_2();
  OUTLINED_FUNCTION_57(v3);
  if (v9)
  {
    *(v0 + 16) = 0;
    *v0 = 0;
    *(v0 + 8) = 0;
    *(v0 + 24) = v1;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_57(v3);
    if (!v9)
    {
      sub_1B8D9207C(v3, &qword_1EBAC0718, &qword_1B966F9A0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_202();
    sub_1B8FAC528();
  }

  OUTLINED_FUNCTION_242();
}

uint64_t Apple_Parsec_Feedback_V2_CommandEngagementFeedback.photosAttributes.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0718, &qword_1B966F9A0);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback(v2);
  if ((OUTLINED_FUNCTION_47(v3) & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback._StorageClass(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_40_0();
    v5 = sub_1B8FC7F28(v4);
    OUTLINED_FUNCTION_135(v5);
  }

  OUTLINED_FUNCTION_208_1();
  OUTLINED_FUNCTION_294();
  sub_1B8FAC528();
  v6 = type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAttributes(0);
  OUTLINED_FUNCTION_65_1(v6);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  return swift_endAccess();
}

void Apple_Parsec_Feedback_V2_CommandEngagementFeedback.photosAttributes.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_491();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_71(v7);
  type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAttributes(v8);
  OUTLINED_FUNCTION_135_0();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_187(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_224_2(v12);
  type metadata accessor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback(v13);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_150_2();
  v14 = OUTLINED_FUNCTION_17_2();
  if (v15)
  {
    OUTLINED_FUNCTION_740(v14);
    OUTLINED_FUNCTION_17_2();
    if (!v15)
    {
      sub_1B8D9207C(v0, &qword_1EBAC0718, &qword_1B966F9A0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_208_1();
    OUTLINED_FUNCTION_246();
    sub_1B8FAC528();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Feedback_V2_CommandEngagementFeedback.hasPhotosAttributes.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback(v4);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_285_0();
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAttributes(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Apple_Parsec_Feedback_V2_CommandEngagementFeedback.clearPhotosAttributes()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0718, &qword_1B966F9A0);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback(v2);
  if ((OUTLINED_FUNCTION_182_0(v3) & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback._StorageClass(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_40_0();
    v5 = sub_1B8FC7F28(v4);
    OUTLINED_FUNCTION_157_2(v5);
  }

  v6 = type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAttributes(0);
  OUTLINED_FUNCTION_274_1(v6);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  swift_endAccess();
}

uint64_t sub_1B8F6AEA8@<X0>(void (*a1)(uint64_t)@<X0>, int a2@<W8>)
{
  v5 = OUTLINED_FUNCTION_690();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_183(v7);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  a1(v9);
  OUTLINED_FUNCTION_466();
  sub_1B8F1B8B8();
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(0);
  OUTLINED_FUNCTION_29_14(v10);
  if (v11)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB6BC0 != -1)
    {
      OUTLINED_FUNCTION_41_9(&qword_1EBAB6BC0);
    }

    result = OUTLINED_FUNCTION_59_0();
    if (a2 != 1)
    {
      return sub_1B8D9207C(v2, &qword_1EBAB9168, &qword_1B964D950);
    }
  }

  else
  {
    OUTLINED_FUNCTION_182();
    return sub_1B8FAC528();
  }

  return result;
}

uint64_t sub_1B8F6AFDC()
{
  v1 = OUTLINED_FUNCTION_313();
  v3 = v2(v1);
  sub_1B8D9207C(v0 + *(v3 + 40), &qword_1EBAB9168, &qword_1B964D950);
  OUTLINED_FUNCTION_2_21();
  OUTLINED_FUNCTION_122_0();
  sub_1B8FAC528();
  type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(0);
  v4 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

void Apple_Parsec_Feedback_V2_VisibleResultsFeedback.goTakeoverResult.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_26_1(v8);
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(v9);
  OUTLINED_FUNCTION_140_2(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_202_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_89_0(v14);
  v16 = type metadata accessor for Apple_Parsec_Feedback_V2_VisibleResultsFeedback(v15);
  OUTLINED_FUNCTION_256_1(*(v16 + 40));
  OUTLINED_FUNCTION_17_2();
  if (v17)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB6BC0 != -1)
    {
      OUTLINED_FUNCTION_41_9(&qword_1EBAB6BC0);
    }

    OUTLINED_FUNCTION_57_2();
    if (v0 != 1)
    {
      sub_1B8D9207C(v1, &qword_1EBAB9168, &qword_1B964D950);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_21();
    OUTLINED_FUNCTION_246();
    sub_1B8FAC528();
  }

  OUTLINED_FUNCTION_242();
}

uint64_t sub_1B8F6B1C4()
{
  OUTLINED_FUNCTION_250_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_137();
  v1(0);
  OUTLINED_FUNCTION_225_0();
  sub_1B8F1B8B8();
  v6 = v0(0);
  OUTLINED_FUNCTION_220_2(v6);
  return OUTLINED_FUNCTION_681_0();
}

uint64_t sub_1B8F6B28C()
{
  v1 = OUTLINED_FUNCTION_218_0();
  v2(v1);
  OUTLINED_FUNCTION_397();
  sub_1B8D9207C(v3, v4, v5);
  v0(0);
  v6 = OUTLINED_FUNCTION_282_1();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t Apple_Parsec_Feedback_V2_VisibleResultsFeedback.uniqueIdentifiersOfVisibleCardSections.setter(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_VisibleResultsFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Feedback_V2_VisibleResultsFeedback(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Feedback_V2_VisibleResultsFeedback.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_840(MEMORY[0x1E69E7CC0]);
  *(a1 + 24) = 1;
  *(a1 + 32) = v2;
  *(a1 + 40) = v2;
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_VisibleResultsFeedback(0);
  OUTLINED_FUNCTION_643_0(v3);
  v4 = OUTLINED_FUNCTION_663_0();
  type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(v4);
  v5 = OUTLINED_FUNCTION_40_3();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t Apple_Parsec_Feedback_V2_DynamicButtonVisibilityFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Feedback_V2_DynamicButtonVisibilityFeedback(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Feedback_V2_DynamicButtonVisibilityFeedback.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_228_0(a1);
  v2 = MEMORY[0x1E69E7CC0];
  *(v1 + 16) = v3;
  *(v1 + 24) = v2;
  v4 = type metadata accessor for Apple_Parsec_Feedback_V2_DynamicButtonVisibilityFeedback(0);
  return OUTLINED_FUNCTION_101_2(v4);
}

uint64_t Apple_Parsec_Feedback_V2_CounterfactualInfo.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Feedback_V2_CounterfactualInfo(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Feedback_V2_CounterfactualInfo.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v1 = type metadata accessor for Apple_Parsec_Feedback_V2_CounterfactualInfo(0);
  return OUTLINED_FUNCTION_101_2(v1);
}

uint64_t Apple_Parsec_Feedback_V2_ExperimentTriggeredFeedback.counterfactual.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = OUTLINED_FUNCTION_236();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Apple_Parsec_Feedback_V2_ExperimentTriggeredFeedback(v8);
  OUTLINED_FUNCTION_100_3();
  type metadata accessor for Apple_Parsec_Feedback_V2_CounterfactualInfo(0);
  OUTLINED_FUNCTION_199_2();
  v9 = OUTLINED_FUNCTION_9_2();
  if (v10)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = v1;
    OUTLINED_FUNCTION_826(v9);
    result = OUTLINED_FUNCTION_9_2();
    if (!v10)
    {
      return sub_1B8D9207C(v2, &qword_1EBAC0728, &qword_1B966F9B0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_50_6();
    OUTLINED_FUNCTION_182();
    return sub_1B8FAC528();
  }

  return result;
}

uint64_t Apple_Parsec_Feedback_V2_ExperimentTriggeredFeedback.counterfactual.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Feedback_V2_ExperimentTriggeredFeedback(v1);
  sub_1B8D9207C(v0 + *(v2 + 32), &qword_1EBAC0728, &qword_1B966F9B0);
  OUTLINED_FUNCTION_50_6();
  OUTLINED_FUNCTION_122_0();
  sub_1B8FAC528();
  type metadata accessor for Apple_Parsec_Feedback_V2_CounterfactualInfo(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_Feedback_V2_ExperimentTriggeredFeedback.counterfactual.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_85(v7);
  v9 = type metadata accessor for Apple_Parsec_Feedback_V2_CounterfactualInfo(v8);
  OUTLINED_FUNCTION_150_3(v9);
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_202_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_89_0(v14);
  v16 = type metadata accessor for Apple_Parsec_Feedback_V2_ExperimentTriggeredFeedback(v15);
  OUTLINED_FUNCTION_68_4(*(v16 + 32));
  OUTLINED_FUNCTION_16_2();
  if (v17)
  {
    *v11 = 0;
    *(v11 + 8) = 0;
    *(v11 + 16) = 1;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_16_2();
    if (!v17)
    {
      sub_1B8D9207C(v0, &qword_1EBAC0728, &qword_1B966F9B0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_50_6();
    OUTLINED_FUNCTION_461();
    sub_1B8FAC528();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

void sub_1B8F6B8DC()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_67();
  if (v5)
  {
    OUTLINED_FUNCTION_128();
    sub_1B8FAC578();
    sub_1B8D9207C(v4 + v3, &qword_1EBAC0728, &qword_1B966F9B0);
    OUTLINED_FUNCTION_50_6();
    OUTLINED_FUNCTION_691_0();
    OUTLINED_FUNCTION_30_2();
    OUTLINED_FUNCTION_333_0();
    sub_1B8FAC5C8();
  }

  else
  {
    sub_1B8D9207C(v4 + v3, &qword_1EBAC0728, &qword_1B966F9B0);
    OUTLINED_FUNCTION_50_6();
    OUTLINED_FUNCTION_692_0();
    OUTLINED_FUNCTION_30_2();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_242();

  free(v6);
}

uint64_t Apple_Parsec_Feedback_V2_ExperimentTriggeredFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Feedback_V2_ExperimentTriggeredFeedback(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Feedback_V2_ExperimentTriggeredFeedback.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_228_0(a1);
  *(v1 + 16) = 0;
  *(v1 + 24) = v2;
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_ExperimentTriggeredFeedback(0);
  OUTLINED_FUNCTION_543_0(v3);
  v4 = OUTLINED_FUNCTION_661_0();
  type metadata accessor for Apple_Parsec_Feedback_V2_CounterfactualInfo(v4);
  v5 = OUTLINED_FUNCTION_40_3();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t Apple_Parsec_Feedback_V2_CardSectionForFeedback.resultID.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_CardSectionForFeedback.commandDetail.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_CardSectionForFeedback.cardSections.setter(uint64_t a1)
{

  *(v1 + 96) = a1;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_CardSectionForFeedback.cardSectionType.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 104) = *result;
  *(v1 + 112) = v2;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_CardSectionForFeedback.cardSectionDetail.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 120) = v2;
  *(v1 + 128) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_CardSectionForFeedback.buttons.setter(uint64_t a1)
{

  *(v1 + 136) = a1;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_CardSectionForFeedback.leadingSwipeButtonItems.setter(uint64_t a1)
{

  *(v1 + 144) = a1;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_CardSectionForFeedback.trailingSwipeButtonItems.setter(uint64_t a1)
{

  *(v1 + 152) = a1;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_CardSectionForFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionForFeedback(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Feedback_V2_CardSectionForFeedback.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_276_1();
  *(a1 + 48) = 0;
  *(a1 + 56) = v2;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
  *(a1 + 80) = 0;
  *(a1 + 88) = v2;
  v3 = MEMORY[0x1E69E7CC0];
  *(a1 + 96) = MEMORY[0x1E69E7CC0];
  *(a1 + 104) = 0;
  *(a1 + 112) = 1;
  *(a1 + 120) = 0;
  *(a1 + 128) = v2;
  *(a1 + 136) = v3;
  *(a1 + 144) = v3;
  *(a1 + 152) = v3;
  type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionForFeedback(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Apple_Parsec_Feedback_V2_ButtonFeedback.commandType.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_ButtonFeedback.commandDetail.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_ButtonFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Feedback_V2_ButtonFeedback(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Feedback_V2_ButtonFeedback.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_197_1(a1);
  v2 = OUTLINED_FUNCTION_518_0();
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_ButtonFeedback(v2);
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  return OUTLINED_FUNCTION_690_0(v3);
}

uint64_t Apple_Parsec_Feedback_V2_ButtonForFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Feedback_V2_ButtonForFeedback(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Feedback_V2_CardForFeedback.cardSections.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_1B8F6C200()
{
  v0 = OUTLINED_FUNCTION_338_0();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_18_1();

  return v3(v2);
}

uint64_t sub_1B8F6C284()
{
  v0 = OUTLINED_FUNCTION_313();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_21_7();
  v2 = OUTLINED_FUNCTION_209();

  return v3(v2);
}

uint64_t Apple_Parsec_Feedback_V2_CardForFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Feedback_V2_CardSectionFeedback.cardSection.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionFeedback(v7);
  OUTLINED_FUNCTION_100_3();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionForFeedback(0);
  OUTLINED_FUNCTION_29_14(v8);
  if (v9)
  {
    Apple_Parsec_Feedback_V2_CardSectionForFeedback.init()(a1);
    result = OUTLINED_FUNCTION_9_2();
    if (!v9)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC0730, &qword_1B966F9B8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_10_15();
    OUTLINED_FUNCTION_182();
    return sub_1B8FAC528();
  }

  return result;
}

uint64_t Apple_Parsec_Feedback_V2_CardSectionFeedback.cardSection.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionFeedback(v1);
  sub_1B8D9207C(v0 + *(v2 + 32), &qword_1EBAC0730, &qword_1B966F9B8);
  OUTLINED_FUNCTION_10_15();
  OUTLINED_FUNCTION_122_0();
  sub_1B8FAC528();
  type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionForFeedback(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_Feedback_V2_CardSectionFeedback.cardSection.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_26_1(v7);
  v9 = type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionForFeedback(v8);
  OUTLINED_FUNCTION_140_2(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_202_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_89_0(v13);
  v15 = type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionFeedback(v14);
  OUTLINED_FUNCTION_256_1(*(v15 + 32));
  OUTLINED_FUNCTION_17_2();
  if (v16)
  {
    OUTLINED_FUNCTION_241_1();
    OUTLINED_FUNCTION_607_0(v17);
    OUTLINED_FUNCTION_368_0(v18);
    OUTLINED_FUNCTION_17_2();
    if (!v16)
    {
      sub_1B8D9207C(v0, &qword_1EBAC0730, &qword_1B966F9B8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_10_15();
    OUTLINED_FUNCTION_246();
    sub_1B8FAC528();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

void sub_1B8F6C59C()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_67();
  if (v5)
  {
    OUTLINED_FUNCTION_128();
    sub_1B8FAC578();
    sub_1B8D9207C(v4 + v3, &qword_1EBAC0730, &qword_1B966F9B8);
    OUTLINED_FUNCTION_10_15();
    OUTLINED_FUNCTION_691_0();
    OUTLINED_FUNCTION_30_2();
    OUTLINED_FUNCTION_331_0();
    sub_1B8FAC5C8();
  }

  else
  {
    sub_1B8D9207C(v4 + v3, &qword_1EBAC0730, &qword_1B966F9B8);
    OUTLINED_FUNCTION_10_15();
    OUTLINED_FUNCTION_692_0();
    OUTLINED_FUNCTION_30_2();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_242();

  free(v6);
}

uint64_t sub_1B8F6C6AC()
{
  OUTLINED_FUNCTION_250_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_137();
  v1(0);
  OUTLINED_FUNCTION_225_0();
  sub_1B8F1B8B8();
  v6 = v0(0);
  OUTLINED_FUNCTION_220_2(v6);
  return OUTLINED_FUNCTION_681_0();
}

uint64_t sub_1B8F6C774()
{
  v1 = OUTLINED_FUNCTION_218_0();
  v2(v1);
  OUTLINED_FUNCTION_397();
  sub_1B8D9207C(v3, v4, v5);
  v0(0);
  v6 = OUTLINED_FUNCTION_282_1();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t Apple_Parsec_Feedback_V2_CardSectionFeedback.resultID.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_CardSectionFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionFeedback(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Feedback_V2_CardSectionFeedback.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_280_1(a1);
  v2 = OUTLINED_FUNCTION_839(v1);
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionFeedback(v2);
  OUTLINED_FUNCTION_543_0(v3);
  v4 = OUTLINED_FUNCTION_661_0();
  type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionForFeedback(v4);
  v5 = OUTLINED_FUNCTION_40_3();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t Apple_Parsec_Feedback_V2_CardSectionEngagementFeedback.timestamp.modify()
{
  v0 = OUTLINED_FUNCTION_196_1();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_138_3(v1);
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionEngagementFeedback(v2);
  OUTLINED_FUNCTION_225_2(v3);
  OUTLINED_FUNCTION_344_0();
  OUTLINED_FUNCTION_755();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_CardSectionEngagementFeedback.destination.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC06D8, &qword_1B966F960);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionEngagementFeedback(v2);
  if ((OUTLINED_FUNCTION_47(v3) & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionEngagementFeedback._StorageClass(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_40_0();
    v5 = sub_1B8FCEDC0(v4);
    OUTLINED_FUNCTION_135(v5);
  }

  OUTLINED_FUNCTION_4_23();
  OUTLINED_FUNCTION_294();
  sub_1B8FAC528();
  v6 = type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(0);
  OUTLINED_FUNCTION_65_1(v6);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  return swift_endAccess();
}

void Apple_Parsec_Feedback_V2_CardSectionEngagementFeedback.destination.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_491();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_71(v7);
  type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(v8);
  OUTLINED_FUNCTION_135_0();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_187(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_224_2(v12);
  type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionEngagementFeedback(v13);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_150_2();
  OUTLINED_FUNCTION_17_2();
  if (v14)
  {
    OUTLINED_FUNCTION_114_0();
    OUTLINED_FUNCTION_310_0(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_17_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBAC06D8, &qword_1B966F960);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_23();
    OUTLINED_FUNCTION_246();
    sub_1B8FAC528();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Feedback_V2_CardSectionEngagementFeedback.hasDestination.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionEngagementFeedback(v4);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_285_0();
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Apple_Parsec_Feedback_V2_CardSectionEngagementFeedback.clearDestination()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC06D8, &qword_1B966F960);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionEngagementFeedback(v2);
  if ((OUTLINED_FUNCTION_182_0(v3) & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionEngagementFeedback._StorageClass(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_40_0();
    v5 = sub_1B8FCEDC0(v4);
    OUTLINED_FUNCTION_157_2(v5);
  }

  v6 = type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(0);
  OUTLINED_FUNCTION_274_1(v6);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  swift_endAccess();
}

uint64_t Apple_Parsec_Feedback_V2_CardSectionEngagementFeedback.triggerEvent.modify()
{
  v0 = OUTLINED_FUNCTION_196_1();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_37_3(v1);
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionEngagementFeedback(v2);
  OUTLINED_FUNCTION_264_1(v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_117_0();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_CardSectionEngagementFeedback.actionCardType.modify()
{
  v0 = OUTLINED_FUNCTION_196_1();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_37_3(v1);
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionEngagementFeedback(v2);
  OUTLINED_FUNCTION_264_1(v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_117_0();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_CardSectionEngagementFeedback.cardSection.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0730, &qword_1B966F9B8);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionEngagementFeedback(v2);
  if ((OUTLINED_FUNCTION_47(v3) & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionEngagementFeedback._StorageClass(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_40_0();
    v5 = sub_1B8FCEDC0(v4);
    OUTLINED_FUNCTION_135(v5);
  }

  OUTLINED_FUNCTION_10_15();
  OUTLINED_FUNCTION_294();
  sub_1B8FAC528();
  v6 = type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionForFeedback(0);
  OUTLINED_FUNCTION_65_1(v6);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  return swift_endAccess();
}

void Apple_Parsec_Feedback_V2_CardSectionEngagementFeedback.cardSection.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_491();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_71(v7);
  type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionForFeedback(v8);
  OUTLINED_FUNCTION_135_0();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_187(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_224_2(v12);
  type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionEngagementFeedback(v13);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_150_2();
  OUTLINED_FUNCTION_17_2();
  if (v14)
  {
    OUTLINED_FUNCTION_241_1();
    OUTLINED_FUNCTION_607_0(v15);
    OUTLINED_FUNCTION_368_0(v16);
    OUTLINED_FUNCTION_17_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBAC0730, &qword_1B966F9B8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_10_15();
    OUTLINED_FUNCTION_246();
    sub_1B8FAC528();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Feedback_V2_CardSectionEngagementFeedback.hasCardSection.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionEngagementFeedback(v4);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_285_0();
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionForFeedback(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Apple_Parsec_Feedback_V2_CardSectionEngagementFeedback.clearCardSection()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0730, &qword_1B966F9B8);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionEngagementFeedback(v2);
  if ((OUTLINED_FUNCTION_182_0(v3) & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionEngagementFeedback._StorageClass(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_40_0();
    v5 = sub_1B8FCEDC0(v4);
    OUTLINED_FUNCTION_157_2(v5);
  }

  v6 = type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionForFeedback(0);
  OUTLINED_FUNCTION_274_1(v6);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  swift_endAccess();
}

uint64_t Apple_Parsec_Feedback_V2_CardSectionEngagementFeedback.destinationWasParpunchout.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_6_11(v1);
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionEngagementFeedback(v2);
  OUTLINED_FUNCTION_124_0(v3);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_CardSectionEngagementFeedback.parPunchoutActionTarget.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_11_10(v1);
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionEngagementFeedback(v2);
  OUTLINED_FUNCTION_254_1(v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Apple_Parsec_Feedback_V2_CardSectionEngagementFeedback.cardSectionID.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_11_10(v1);
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionEngagementFeedback(v2);
  OUTLINED_FUNCTION_254_1(v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Apple_Parsec_Feedback_V2_CardSectionEngagementFeedback.resultID.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_11_10(v1);
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionEngagementFeedback(v2);
  OUTLINED_FUNCTION_254_1(v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Apple_Parsec_Feedback_V2_CardSectionEngagementFeedback.actionTarget.modify()
{
  v0 = OUTLINED_FUNCTION_196_1();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_37_3(v1);
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionEngagementFeedback(v2);
  OUTLINED_FUNCTION_264_1(v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_117_0();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_MapsCardSectionEngagementFeedback.destination.getter()
{
  v1 = OUTLINED_FUNCTION_236();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Apple_Parsec_Feedback_V2_MapsCardSectionEngagementFeedback(v5);
  OUTLINED_FUNCTION_100_3();
  v6 = type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(0);
  OUTLINED_FUNCTION_29_14(v6);
  if (v7)
  {
    OUTLINED_FUNCTION_92_0();
    OUTLINED_FUNCTION_532_0(MEMORY[0x1E69E7CC0]);
    result = OUTLINED_FUNCTION_9_2();
    if (!v7)
    {
      return sub_1B8D9207C(v0, &qword_1EBAC06D8, &qword_1B966F960);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_23();
    OUTLINED_FUNCTION_182();
    return sub_1B8FAC528();
  }

  return result;
}

uint64_t Apple_Parsec_Feedback_V2_MapsCardSectionEngagementFeedback.destination.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Feedback_V2_MapsCardSectionEngagementFeedback(v1);
  sub_1B8D9207C(v0 + *(v2 + 44), &qword_1EBAC06D8, &qword_1B966F960);
  OUTLINED_FUNCTION_4_23();
  OUTLINED_FUNCTION_122_0();
  sub_1B8FAC528();
  type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_Feedback_V2_MapsCardSectionEngagementFeedback.destination.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_26_1(v7);
  v9 = type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(v8);
  OUTLINED_FUNCTION_140_2(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_202_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_89_0(v13);
  v15 = type metadata accessor for Apple_Parsec_Feedback_V2_MapsCardSectionEngagementFeedback(v14);
  OUTLINED_FUNCTION_256_1(*(v15 + 44));
  OUTLINED_FUNCTION_17_2();
  if (v16)
  {
    OUTLINED_FUNCTION_114_0();
    OUTLINED_FUNCTION_310_0(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_17_2();
    if (!v16)
    {
      sub_1B8D9207C(v0, &qword_1EBAC06D8, &qword_1B966F960);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_23();
    OUTLINED_FUNCTION_246();
    sub_1B8FAC528();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t sub_1B8F6DD74()
{
  v0 = OUTLINED_FUNCTION_338_0();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_18_1();

  return v3(v2);
}

uint64_t sub_1B8F6DDF8()
{
  v0 = OUTLINED_FUNCTION_313();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_21_7();
  v2 = OUTLINED_FUNCTION_209();

  return v3(v2);
}

uint64_t Apple_Parsec_Feedback_V2_MapsCardSectionEngagementFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Feedback_V2_MapsCardSectionEngagementFeedback(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Feedback_V2_MapsCardSectionEngagementFeedback.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_370_0(a1);
  *(v1 + 24) = 0;
  OUTLINED_FUNCTION_733(v2);
  v3 = OUTLINED_FUNCTION_732(0xE000000000000000);
  v4 = type metadata accessor for Apple_Parsec_Feedback_V2_MapsCardSectionEngagementFeedback(v3);
  OUTLINED_FUNCTION_723_0(v4);
  type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(0);
  v5 = OUTLINED_FUNCTION_40_3();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t sub_1B8F6DF18()
{
  v1 = OUTLINED_FUNCTION_178_1();
  v2(v1);
  OUTLINED_FUNCTION_402_0();
  OUTLINED_FUNCTION_10_4(v0 + 16, v3);
  return *(v0 + 16);
}

void sub_1B8F6DF98()
{
  OUTLINED_FUNCTION_193_0();
  OUTLINED_FUNCTION_451_0();
  v6 = OUTLINED_FUNCTION_65_3();
  v8 = v7(v6);
  v9 = OUTLINED_FUNCTION_866(v8);
  v11 = *(v1 + v5);
  if ((v9 & 1) == 0)
  {
    v4(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v12 = OUTLINED_FUNCTION_40_0();
    v11 = v3(v12);
    *(v2 + v5) = v11;
  }

  OUTLINED_FUNCTION_9_3(v11 + 16, v10);
  *(v11 + 16) = v0;
  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedback.timestamp.modify()
{
  v0 = OUTLINED_FUNCTION_196_1();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_138_3(v1);
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedback(v2);
  OUTLINED_FUNCTION_225_2(v3);
  OUTLINED_FUNCTION_344_0();
  OUTLINED_FUNCTION_755();
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F6E09C()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_60_5();
  v4 = *(v3 + 72);
  v5 = *(v0 + 88);
  v6 = *(v0 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v6 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = v1(v9);
    OUTLINED_FUNCTION_228_1(v10);
  }

  OUTLINED_FUNCTION_11_4();
  *(v8 + 16) = v4;
  OUTLINED_FUNCTION_242();

  free(v11);
}

uint64_t Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedback.destination.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC06D8, &qword_1B966F960);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedback(v2);
  if ((OUTLINED_FUNCTION_47(v3) & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedback._StorageClass(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_40_0();
    v5 = sub_1B8FD1A5C(v4);
    OUTLINED_FUNCTION_135(v5);
  }

  OUTLINED_FUNCTION_4_23();
  OUTLINED_FUNCTION_294();
  sub_1B8FAC528();
  v6 = type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(0);
  OUTLINED_FUNCTION_65_1(v6);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  return swift_endAccess();
}

void Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedback.destination.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_491();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_71(v7);
  type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(v8);
  OUTLINED_FUNCTION_135_0();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_187(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_224_2(v12);
  type metadata accessor for Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedback(v13);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_150_2();
  OUTLINED_FUNCTION_17_2();
  if (v14)
  {
    OUTLINED_FUNCTION_114_0();
    OUTLINED_FUNCTION_310_0(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_17_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBAC06D8, &qword_1B966F960);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_23();
    OUTLINED_FUNCTION_246();
    sub_1B8FAC528();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedback.hasDestination.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedback(v4);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_285_0();
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedback.clearDestination()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC06D8, &qword_1B966F960);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedback(v2);
  if ((OUTLINED_FUNCTION_182_0(v3) & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedback._StorageClass(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_40_0();
    v5 = sub_1B8FD1A5C(v4);
    OUTLINED_FUNCTION_157_2(v5);
  }

  v6 = type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(0);
  OUTLINED_FUNCTION_274_1(v6);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  swift_endAccess();
}

uint64_t Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedback.triggerEvent.modify()
{
  v0 = OUTLINED_FUNCTION_196_1();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_37_3(v1);
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedback(v2);
  OUTLINED_FUNCTION_264_1(v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_117_0();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedback.actionCardType.modify()
{
  v0 = OUTLINED_FUNCTION_196_1();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_37_3(v1);
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedback(v2);
  OUTLINED_FUNCTION_264_1(v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_117_0();
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F6E728()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_522_0();
  v3 = OUTLINED_FUNCTION_491();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_79();
  v7 = v1(0);
  OUTLINED_FUNCTION_309_0(v7);
  OUTLINED_FUNCTION_433_0();
  type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionForFeedback(0);
  OUTLINED_FUNCTION_57(v2);
  if (v8)
  {
    Apple_Parsec_Feedback_V2_CardSectionForFeedback.init()(v0);
    OUTLINED_FUNCTION_57(v2);
    if (!v8)
    {
      sub_1B8D9207C(v2, &qword_1EBAC0730, &qword_1B966F9B8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_202();
    sub_1B8FAC528();
  }

  OUTLINED_FUNCTION_242();
}

uint64_t Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedback.cardSection.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0730, &qword_1B966F9B8);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedback(v2);
  if ((OUTLINED_FUNCTION_47(v3) & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedback._StorageClass(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_40_0();
    v5 = sub_1B8FD1A5C(v4);
    OUTLINED_FUNCTION_135(v5);
  }

  OUTLINED_FUNCTION_10_15();
  OUTLINED_FUNCTION_294();
  sub_1B8FAC528();
  v6 = type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionForFeedback(0);
  OUTLINED_FUNCTION_65_1(v6);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  return swift_endAccess();
}

void Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedback.cardSection.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_491();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_71(v7);
  type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionForFeedback(v8);
  OUTLINED_FUNCTION_135_0();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_187(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_224_2(v12);
  type metadata accessor for Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedback(v13);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_150_2();
  OUTLINED_FUNCTION_17_2();
  if (v14)
  {
    OUTLINED_FUNCTION_241_1();
    OUTLINED_FUNCTION_607_0(v15);
    OUTLINED_FUNCTION_368_0(v16);
    OUTLINED_FUNCTION_17_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBAC0730, &qword_1B966F9B8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_10_15();
    OUTLINED_FUNCTION_246();
    sub_1B8FAC528();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedback.hasCardSection.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedback(v4);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_285_0();
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionForFeedback(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedback.clearCardSection()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0730, &qword_1B966F9B8);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedback(v2);
  if ((OUTLINED_FUNCTION_182_0(v3) & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedback._StorageClass(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_40_0();
    v5 = sub_1B8FD1A5C(v4);
    OUTLINED_FUNCTION_157_2(v5);
  }

  v6 = type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionForFeedback(0);
  OUTLINED_FUNCTION_274_1(v6);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  swift_endAccess();
}

uint64_t Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedback.productPageResult.modify()
{
  v0 = OUTLINED_FUNCTION_196_1();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_37_3(v1);
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedback(v2);
  OUTLINED_FUNCTION_264_1(v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_117_0();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedback.cardSectionID.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_11_10(v1);
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedback(v2);
  OUTLINED_FUNCTION_254_1(v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedback.resultID.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_11_10(v1);
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedback(v2);
  OUTLINED_FUNCTION_254_1(v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Apple_Parsec_Feedback_V2_StartSearchFeedback.triggerEvent.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 40) = *result;
  *(v1 + 48) = v2;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_StartSearchFeedback.searchType.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 64) = *result;
  *(v1 + 72) = v2;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_StartSearchFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Feedback_V2_StartSearchFeedback(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Feedback_V2_StartSearchFeedback.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_280_1(a1);
  *(v1 + 32) = v2;
  *(v1 + 40) = 0;
  *(v1 + 48) = 1;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  *(v1 + 72) = 1;
  started = type metadata accessor for Apple_Parsec_Feedback_V2_StartSearchFeedback(0);
  return OUTLINED_FUNCTION_723_0(started);
}

uint64_t Apple_Parsec_Feedback_V2_EndSearchFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Feedback_V2_EndSearchFeedback(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Feedback_V2_EndSearchFeedback.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_228_0(a1);
  *(v1 + 16) = v2;
  type metadata accessor for Apple_Parsec_Feedback_V2_EndSearchFeedback(0);
  return OUTLINED_FUNCTION_279();
}

uint64_t Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback.headers.setter(uint64_t a1)
{

  *(v1 + 64) = a1;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback.endpoint.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 72) = *result;
  *(v1 + 80) = v2;
  return result;
}

void Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback.triggerEvent.getter(void *a1@<X8>)
{
  if (*(v1 + 96) < 0)
  {
    v2 = 0;
  }

  else
  {
    v2 = *(v1 + 88);
  }

  *a1 = v2;
  OUTLINED_FUNCTION_671_0(a1);
}

void (*Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback.triggerEvent.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 16) = v1;
  v2 = *(v1 + 96);
  if (v2 < 0)
  {
    v3 = 0;
    LOBYTE(v2) = 1;
  }

  else
  {
    v3 = *(v1 + 88);
  }

  *a1 = v3;
  *(a1 + 8) = v2 & 1;
  return sub_1B8F6F3F4;
}

void Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback.lookupSelectionType.getter(void *a1@<X8>)
{
  if (*(v1 + 96) <= -3)
  {
    v2 = *(v1 + 88);
  }

  else
  {
    v2 = 0;
  }

  *a1 = v2;
  OUTLINED_FUNCTION_671_0(a1);
}

void (*Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback.lookupSelectionType.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 16) = v1;
  v2 = *(v1 + 96);
  if (v2 <= -3)
  {
    v3 = *(v1 + 88);
  }

  else
  {
    v3 = 0;
    LOBYTE(v2) = 1;
  }

  *a1 = v3;
  *(a1 + 8) = v2 & 1;
  return sub_1B8F6F488;
}

uint64_t Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback.bodyData.getter()
{
  v0 = OUTLINED_FUNCTION_432();
  sub_1B8D91FCC(v0, v1);
  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback.bodyData.setter()
{
  OUTLINED_FUNCTION_16();
  result = sub_1B8D538A0(*(v1 + 104), *(v1 + 112));
  *(v1 + 104) = v2;
  *(v1 + 112) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback.treatmentID.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 136) = v2;
  *(v1 + 144) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback.searchType.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 152) = *result;
  *(v1 + 160) = v2;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  type metadata accessor for Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_18_1();

  return v2(v1);
}

uint64_t Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_21_7();
  v1 = OUTLINED_FUNCTION_209();

  return v2(v1);
}

uint64_t Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t static Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback.OneOf_Trigger.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v4 = *(a1 + 8);
  v5 = *a2;
  v6 = *(a2 + 8);
  if ((v4 & 0x80000000) == 0)
  {
    if ((v6 & 0x80000000) == 0)
    {
      return sub_1B8D92198(result, v4 & 1, v5);
    }

    return 0;
  }

  if ((v6 & 0x80000000) == 0)
  {
    return 0;
  }

  if (v6)
  {
    switch(v5)
    {
      case 1:
        if (result != 1)
        {
          return 0;
        }

        break;
      case 2:
        return result == 2;
      case 3:
        return result == 3;
      default:
        return !result;
    }
  }

  else
  {
    return result == v5;
  }

  return result;
}

uint64_t Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_501_0(a1);
  v2[2] = 0xE000000000000000;
  v2[3] = 0;
  v2[4] = 0xE000000000000000;
  v2[5] = 0;
  v2[6] = 0;
  v2[7] = 0xE000000000000000;
  *(v1 + 64) = sub_1B964C7B0();
  *(v1 + 72) = 0;
  *(v1 + 80) = 1;
  *(v1 + 88) = 0;
  *(v1 + 96) = -2;
  *(v1 + 104) = xmmword_1B9652FE0;
  *(v1 + 120) = 0;
  *(v1 + 128) = 0xE000000000000000;
  *(v1 + 136) = 0;
  *(v1 + 144) = 0xE000000000000000;
  *(v1 + 152) = 0;
  *(v1 + 160) = 1;
  type metadata accessor for Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback(0);
  *(v1 + 168) = 0;
  *(v1 + 176) = 0;
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Apple_Parsec_Feedback_V2_EndNetworkSearchFeedback.timingData.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Apple_Parsec_Feedback_V2_EndNetworkSearchFeedback(v7);
  OUTLINED_FUNCTION_100_3();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData(0);
  OUTLINED_FUNCTION_29_14(v8);
  if (v9)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1ED9D14D0 != -1)
    {
      OUTLINED_FUNCTION_619_0(&qword_1ED9D14D0);
    }

    result = OUTLINED_FUNCTION_59_0();
    if (a1 != 1)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC0738, &qword_1B966F9C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_49_9();
    OUTLINED_FUNCTION_182();
    return sub_1B8FAC528();
  }

  return result;
}

uint64_t Apple_Parsec_Feedback_V2_EndNetworkSearchFeedback.timingData.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Feedback_V2_EndNetworkSearchFeedback(v1);
  sub_1B8D9207C(v0 + *(v2 + 68), &qword_1EBAC0738, &qword_1B966F9C0);
  OUTLINED_FUNCTION_49_9();
  OUTLINED_FUNCTION_122_0();
  sub_1B8FAC528();
  type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_Feedback_V2_EndNetworkSearchFeedback.timingData.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_26_1(v8);
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData(v9);
  OUTLINED_FUNCTION_140_2(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_202_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_89_0(v14);
  v16 = type metadata accessor for Apple_Parsec_Feedback_V2_EndNetworkSearchFeedback(v15);
  OUTLINED_FUNCTION_256_1(*(v16 + 68));
  OUTLINED_FUNCTION_17_2();
  if (v17)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1ED9D14D0 != -1)
    {
      OUTLINED_FUNCTION_619_0(&qword_1ED9D14D0);
    }

    OUTLINED_FUNCTION_57_2();
    if (v0 != 1)
    {
      sub_1B8D9207C(v1, &qword_1EBAC0738, &qword_1B966F9C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_49_9();
    OUTLINED_FUNCTION_246();
    sub_1B8FAC528();
  }

  OUTLINED_FUNCTION_242();
}

void sub_1B8F6FBFC()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_67();
  if (v5)
  {
    OUTLINED_FUNCTION_128();
    sub_1B8FAC578();
    sub_1B8D9207C(v4 + v3, &qword_1EBAC0738, &qword_1B966F9C0);
    OUTLINED_FUNCTION_49_9();
    OUTLINED_FUNCTION_691_0();
    OUTLINED_FUNCTION_30_2();
    OUTLINED_FUNCTION_328_0();
    sub_1B8FAC5C8();
  }

  else
  {
    sub_1B8D9207C(v4 + v3, &qword_1EBAC0738, &qword_1B966F9C0);
    OUTLINED_FUNCTION_49_9();
    OUTLINED_FUNCTION_692_0();
    OUTLINED_FUNCTION_30_2();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_242();

  free(v6);
}

uint64_t Apple_Parsec_Feedback_V2_EndNetworkSearchFeedback.hasTimingData.getter()
{
  v1 = OUTLINED_FUNCTION_514();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Apple_Parsec_Feedback_V2_EndNetworkSearchFeedback(v5);
  OUTLINED_FUNCTION_863();
  v6 = type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData(0);
  OUTLINED_FUNCTION_11(v6);
  return v0;
}

Swift::Void __swiftcall Apple_Parsec_Feedback_V2_EndNetworkSearchFeedback.clearTimingData()()
{
  v1 = type metadata accessor for Apple_Parsec_Feedback_V2_EndNetworkSearchFeedback(0);
  sub_1B8D9207C(v0 + *(v1 + 68), &qword_1EBAC0738, &qword_1B966F9C0);
  type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData(0);
  OUTLINED_FUNCTION_83();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Apple_Parsec_Feedback_V2_EndNetworkSearchFeedback.endpointType.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 96) = *result;
  *(v1 + 104) = v2;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_EndNetworkSearchFeedback.edge.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 128) = v2;
  *(v1 + 136) = v0;
  return result;
}

uint64_t sub_1B8F6FEE0()
{
  v0 = OUTLINED_FUNCTION_338_0();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_18_1();

  return v3(v2);
}

uint64_t sub_1B8F6FF64()
{
  v0 = OUTLINED_FUNCTION_313();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_21_7();
  v2 = OUTLINED_FUNCTION_209();

  return v3(v2);
}

uint64_t Apple_Parsec_Feedback_V2_EndNetworkSearchFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Feedback_V2_EndNetworkSearchFeedback(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Feedback_V2_EndNetworkSearchFeedback.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_501_0(a1);
  *(v2 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0xE000000000000000;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0xE000000000000000;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0xE000000000000000;
  *(v1 + 72) = 0;
  *(v1 + 80) = 0;
  *(v1 + 88) = 0xE000000000000000;
  *(v1 + 96) = 0;
  *(v1 + 104) = 1;
  *(v1 + 112) = 0;
  *(v1 + 120) = 0;
  *(v1 + 128) = 0;
  *(v1 + 136) = 0xE000000000000000;
  type metadata accessor for Apple_Parsec_Feedback_V2_EndNetworkSearchFeedback(0);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData(0);
  v3 = OUTLINED_FUNCTION_40_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t Apple_Parsec_Feedback_V2_PerformEntityQueryCommandForFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Feedback_V2_PerformEntityQueryCommandForFeedback(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Feedback_V2_PerformEntityQueryCommandForFeedback.init()()
{
  OUTLINED_FUNCTION_840(0xE000000000000000);
  OUTLINED_FUNCTION_752();
  type metadata accessor for Apple_Parsec_Feedback_V2_PerformEntityQueryCommandForFeedback(0);
  return OUTLINED_FUNCTION_279();
}

uint64_t Apple_Parsec_Feedback_V2_IndexStateForFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Feedback_V2_IndexStateForFeedback(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Feedback_V2_IndexStateForFeedback.init()()
{
  v1 = OUTLINED_FUNCTION_27();
  v2 = type metadata accessor for Apple_Parsec_Feedback_V2_IndexStateForFeedback(v1);
  *v0 = 0;
  *(v0 + 8) = 0;
  *(v0 + 16) = 0;
  return OUTLINED_FUNCTION_694_0(v2);
}

uint64_t Apple_Parsec_Feedback_V2_StartLocalSearchFeedback.timestamp.modify()
{
  v0 = OUTLINED_FUNCTION_196_1();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_138_3(v1);
  started = type metadata accessor for Apple_Parsec_Feedback_V2_StartLocalSearchFeedback(v2);
  OUTLINED_FUNCTION_225_2(started);
  OUTLINED_FUNCTION_344_0();
  OUTLINED_FUNCTION_755();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_StartLocalSearchFeedback.input.getter()
{
  OUTLINED_FUNCTION_268_1();
  OUTLINED_FUNCTION_10_4(v0 + 24, v1);

  return OUTLINED_FUNCTION_432();
}

void Apple_Parsec_Feedback_V2_StartLocalSearchFeedback.input.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  started = type metadata accessor for Apple_Parsec_Feedback_V2_StartLocalSearchFeedback(v4);
  v6 = OUTLINED_FUNCTION_47(started);
  v8 = *(v1 + v3);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_349_0();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B8FD6F80(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  OUTLINED_FUNCTION_9_3(v8 + 24, v7);
  *(v8 + 24) = v2;
  *(v8 + 32) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Feedback_V2_StartLocalSearchFeedback.input.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_11_10(v3);
  started = type metadata accessor for Apple_Parsec_Feedback_V2_StartLocalSearchFeedback(v4);
  OUTLINED_FUNCTION_66_1(started);
  OUTLINED_FUNCTION_62_0(v0 + 24);
  v6 = *(v0 + 32);
  *(v1 + 48) = *(v0 + 24);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8F70514()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Feedback_V2_StartLocalSearchFeedback.input.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_349_0();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B8FD6F80(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_59_3(v7 + 24);
    *(v7 + 24) = v3;
    *(v7 + 32) = v2;
  }

  free(v0);
}

uint64_t Apple_Parsec_Feedback_V2_StartLocalSearchFeedback.uuid.getter()
{
  OUTLINED_FUNCTION_268_1();
  OUTLINED_FUNCTION_10_4(v0 + 40, v1);

  return OUTLINED_FUNCTION_432();
}

void Apple_Parsec_Feedback_V2_StartLocalSearchFeedback.uuid.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  started = type metadata accessor for Apple_Parsec_Feedback_V2_StartLocalSearchFeedback(v4);
  v6 = OUTLINED_FUNCTION_47(started);
  v8 = *(v1 + v3);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_349_0();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B8FD6F80(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  OUTLINED_FUNCTION_9_3(v8 + 40, v7);
  *(v8 + 40) = v2;
  *(v8 + 48) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Feedback_V2_StartLocalSearchFeedback.uuid.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_11_10(v3);
  started = type metadata accessor for Apple_Parsec_Feedback_V2_StartLocalSearchFeedback(v4);
  OUTLINED_FUNCTION_66_1(started);
  OUTLINED_FUNCTION_62_0(v0 + 40);
  v6 = *(v0 + 48);
  *(v1 + 48) = *(v0 + 40);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8F706F8()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Feedback_V2_StartLocalSearchFeedback.uuid.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_349_0();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B8FD6F80(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_59_3(v7 + 40);
    *(v7 + 40) = v3;
    *(v7 + 48) = v2;
  }

  free(v0);
}

void Apple_Parsec_Feedback_V2_StartLocalSearchFeedback.triggerEvent.getter()
{
  OUTLINED_FUNCTION_268_1();
  OUTLINED_FUNCTION_10_4(v0 + 56, v1);
  OUTLINED_FUNCTION_66_2(*(v0 + 56));
}

void Apple_Parsec_Feedback_V2_StartLocalSearchFeedback.triggerEvent.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_275_1();
  started = type metadata accessor for Apple_Parsec_Feedback_V2_StartLocalSearchFeedback(v4);
  v6 = OUTLINED_FUNCTION_47(started);
  v8 = *(v0 + v3);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_349_0();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B8FD6F80(v9);
    OUTLINED_FUNCTION_72_2(v10);
  }

  OUTLINED_FUNCTION_9_3(v8 + 56, v7);
  *(v8 + 56) = v1;
  *(v8 + 64) = v2;
  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Feedback_V2_StartLocalSearchFeedback.triggerEvent.modify()
{
  v1 = OUTLINED_FUNCTION_196_1();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_37_3(v2);
  started = type metadata accessor for Apple_Parsec_Feedback_V2_StartLocalSearchFeedback(v3);
  OUTLINED_FUNCTION_21_8(started);
  OUTLINED_FUNCTION_62_0(v0 + 56);
  OUTLINED_FUNCTION_71_2(*(v0 + 56));
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F70894()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_7_14();
  v4 = OUTLINED_FUNCTION_459_0();
  v5 = *(v3 + v0);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_349_0();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FD6F80(v6);
    OUTLINED_FUNCTION_73_2(v7);
  }

  OUTLINED_FUNCTION_11_4();
  *(v5 + 56) = v1;
  *(v5 + 64) = v2;
  OUTLINED_FUNCTION_242();

  free(v8);
}

uint64_t sub_1B8F70934()
{
  v1 = OUTLINED_FUNCTION_178_1();
  v2(v1);
  OUTLINED_FUNCTION_402_0();
  OUTLINED_FUNCTION_10_4(v0 + 72, v3);
  return *(v0 + 72);
}

uint64_t Apple_Parsec_Feedback_V2_StartLocalSearchFeedback.queryID.setter()
{
  v3 = OUTLINED_FUNCTION_65_3();
  started = type metadata accessor for Apple_Parsec_Feedback_V2_StartLocalSearchFeedback(v3);
  v5 = OUTLINED_FUNCTION_182_0(started);
  v7 = *(v1 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_349_0();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8FD6F80(v8);
    OUTLINED_FUNCTION_157_2(v9);
  }

  result = OUTLINED_FUNCTION_9_3(v7 + 72, v6);
  *(v7 + 72) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_StartLocalSearchFeedback.queryID.modify()
{
  v2 = OUTLINED_FUNCTION_196_1();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_138_3(v3);
  started = type metadata accessor for Apple_Parsec_Feedback_V2_StartLocalSearchFeedback(v4);
  OUTLINED_FUNCTION_225_2(started);
  OUTLINED_FUNCTION_62_0(v0 + 72);
  *(v1 + 72) = *(v0 + 72);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F70A34()
{
  OUTLINED_FUNCTION_7_14();
  v4 = OUTLINED_FUNCTION_500_0();
  v5 = *(v3 + v1);
  if ((v4 & 1) == 0)
  {
    v6 = OUTLINED_FUNCTION_278_1();
    type metadata accessor for Apple_Parsec_Feedback_V2_StartLocalSearchFeedback._StorageClass(v6);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FD6F80(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v5 + 72) = v2;

  free(v0);
}

void Apple_Parsec_Feedback_V2_StartLocalSearchFeedback.indexType.getter()
{
  OUTLINED_FUNCTION_268_1();
  OUTLINED_FUNCTION_10_4(v0 + 80, v1);
  OUTLINED_FUNCTION_66_2(*(v0 + 80));
}

void Apple_Parsec_Feedback_V2_StartLocalSearchFeedback.indexType.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_275_1();
  started = type metadata accessor for Apple_Parsec_Feedback_V2_StartLocalSearchFeedback(v4);
  v6 = OUTLINED_FUNCTION_47(started);
  v8 = *(v0 + v3);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_349_0();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B8FD6F80(v9);
    OUTLINED_FUNCTION_72_2(v10);
  }

  OUTLINED_FUNCTION_9_3(v8 + 80, v7);
  *(v8 + 80) = v1;
  *(v8 + 88) = v2;
  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Feedback_V2_StartLocalSearchFeedback.indexType.modify()
{
  v1 = OUTLINED_FUNCTION_196_1();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_37_3(v2);
  started = type metadata accessor for Apple_Parsec_Feedback_V2_StartLocalSearchFeedback(v3);
  OUTLINED_FUNCTION_21_8(started);
  OUTLINED_FUNCTION_62_0(v0 + 80);
  OUTLINED_FUNCTION_71_2(*(v0 + 80));
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F70BC4()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_7_14();
  v4 = OUTLINED_FUNCTION_459_0();
  v5 = *(v3 + v0);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_349_0();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FD6F80(v6);
    OUTLINED_FUNCTION_73_2(v7);
  }

  OUTLINED_FUNCTION_11_4();
  *(v5 + 80) = v1;
  *(v5 + 88) = v2;
  OUTLINED_FUNCTION_242();

  free(v8);
}

void Apple_Parsec_Feedback_V2_StartLocalSearchFeedback.searchType.getter()
{
  OUTLINED_FUNCTION_268_1();
  OUTLINED_FUNCTION_10_4(v0 + 96, v1);
  OUTLINED_FUNCTION_66_2(*(v0 + 96));
}

void Apple_Parsec_Feedback_V2_StartLocalSearchFeedback.searchType.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_275_1();
  started = type metadata accessor for Apple_Parsec_Feedback_V2_StartLocalSearchFeedback(v4);
  v6 = OUTLINED_FUNCTION_47(started);
  v8 = *(v0 + v3);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_349_0();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B8FD6F80(v9);
    OUTLINED_FUNCTION_72_2(v10);
  }

  OUTLINED_FUNCTION_9_3(v8 + 96, v7);
  *(v8 + 96) = v1;
  *(v8 + 104) = v2;
  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Feedback_V2_StartLocalSearchFeedback.searchType.modify()
{
  v1 = OUTLINED_FUNCTION_196_1();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_37_3(v2);
  started = type metadata accessor for Apple_Parsec_Feedback_V2_StartLocalSearchFeedback(v3);
  OUTLINED_FUNCTION_21_8(started);
  OUTLINED_FUNCTION_62_0(v0 + 96);
  OUTLINED_FUNCTION_71_2(*(v0 + 96));
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F70D54()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_7_14();
  v4 = OUTLINED_FUNCTION_459_0();
  v5 = *(v3 + v0);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_349_0();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FD6F80(v6);
    OUTLINED_FUNCTION_73_2(v7);
  }

  OUTLINED_FUNCTION_11_4();
  *(v5 + 96) = v1;
  *(v5 + 104) = v2;
  OUTLINED_FUNCTION_242();

  free(v8);
}

uint64_t Apple_Parsec_Feedback_V2_StartLocalSearchFeedback.originatingApp.getter()
{
  OUTLINED_FUNCTION_268_1();
  OUTLINED_FUNCTION_10_4(v0 + 112, v1);

  return OUTLINED_FUNCTION_432();
}

void Apple_Parsec_Feedback_V2_StartLocalSearchFeedback.originatingApp.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  started = type metadata accessor for Apple_Parsec_Feedback_V2_StartLocalSearchFeedback(v4);
  v6 = OUTLINED_FUNCTION_47(started);
  v8 = *(v1 + v3);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_349_0();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B8FD6F80(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  OUTLINED_FUNCTION_9_3(v8 + 112, v7);
  *(v8 + 112) = v2;
  *(v8 + 120) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Feedback_V2_StartLocalSearchFeedback.originatingApp.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_11_10(v3);
  started = type metadata accessor for Apple_Parsec_Feedback_V2_StartLocalSearchFeedback(v4);
  OUTLINED_FUNCTION_66_1(started);
  OUTLINED_FUNCTION_62_0(v0 + 112);
  v6 = *(v0 + 120);
  *(v1 + 48) = *(v0 + 112);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8F70F2C()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Apple_Parsec_Feedback_V2_StartLocalSearchFeedback.originatingApp.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_349_0();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B8FD6F80(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_59_3(v7 + 112);
    *(v7 + 112) = v3;
    *(v7 + 120) = v2;
  }

  free(v0);
}

uint64_t Apple_Parsec_Feedback_V2_StartLocalSearchFeedback.entityQueryCommand.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = OUTLINED_FUNCTION_236();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Apple_Parsec_Feedback_V2_StartLocalSearchFeedback(v8);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_343_0();
  type metadata accessor for Apple_Parsec_Feedback_V2_PerformEntityQueryCommandForFeedback(0);
  OUTLINED_FUNCTION_199_2();
  OUTLINED_FUNCTION_9_2();
  if (v9)
  {
    OUTLINED_FUNCTION_840(0xE000000000000000);
    *(a1 + 24) = v1;
    OUTLINED_FUNCTION_251_0(v10);
    result = OUTLINED_FUNCTION_9_2();
    if (!v9)
    {
      return sub_1B8D9207C(v2, &qword_1EBAC0740, &qword_1B966F9C8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_327_0();
    OUTLINED_FUNCTION_182();
    return sub_1B8FAC528();
  }

  return result;
}

uint64_t Apple_Parsec_Feedback_V2_StartLocalSearchFeedback.entityQueryCommand.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0740, &qword_1B966F9C8);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  started = type metadata accessor for Apple_Parsec_Feedback_V2_StartLocalSearchFeedback(v2);
  if ((OUTLINED_FUNCTION_47(started) & 1) == 0)
  {
    OUTLINED_FUNCTION_349_0();
    v4 = OUTLINED_FUNCTION_40_0();
    v5 = sub_1B8FD6F80(v4);
    OUTLINED_FUNCTION_135(v5);
  }

  OUTLINED_FUNCTION_327_0();
  OUTLINED_FUNCTION_294();
  sub_1B8FAC528();
  CommandForFeedback = type metadata accessor for Apple_Parsec_Feedback_V2_PerformEntityQueryCommandForFeedback(0);
  OUTLINED_FUNCTION_65_1(CommandForFeedback);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  return swift_endAccess();
}

void Apple_Parsec_Feedback_V2_StartLocalSearchFeedback.entityQueryCommand.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_491();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_71(v7);
  type metadata accessor for Apple_Parsec_Feedback_V2_PerformEntityQueryCommandForFeedback(v8);
  OUTLINED_FUNCTION_135_0();
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_224_2(v13);
  type metadata accessor for Apple_Parsec_Feedback_V2_StartLocalSearchFeedback(v14);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_150_2();
  v15 = OUTLINED_FUNCTION_17_2();
  if (v16)
  {
    *v10 = 0;
    *(v10 + 8) = 0xE000000000000000;
    *(v10 + 16) = 0;
    *(v10 + 24) = 1;
    OUTLINED_FUNCTION_280_0(v15);
    OUTLINED_FUNCTION_17_2();
    if (!v16)
    {
      sub_1B8D9207C(v0, &qword_1EBAC0740, &qword_1B966F9C8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_327_0();
    OUTLINED_FUNCTION_246();
    sub_1B8FAC528();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Feedback_V2_StartLocalSearchFeedback.hasEntityQueryCommand.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Apple_Parsec_Feedback_V2_StartLocalSearchFeedback(v4);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_285_0();
  CommandForFeedback = type metadata accessor for Apple_Parsec_Feedback_V2_PerformEntityQueryCommandForFeedback(0);
  OUTLINED_FUNCTION_11(CommandForFeedback);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Apple_Parsec_Feedback_V2_StartLocalSearchFeedback.clearEntityQueryCommand()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0740, &qword_1B966F9C8);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  started = type metadata accessor for Apple_Parsec_Feedback_V2_StartLocalSearchFeedback(v2);
  if ((OUTLINED_FUNCTION_182_0(started) & 1) == 0)
  {
    OUTLINED_FUNCTION_349_0();
    v4 = OUTLINED_FUNCTION_40_0();
    v5 = sub_1B8FD6F80(v4);
    OUTLINED_FUNCTION_157_2(v5);
  }

  CommandForFeedback = type metadata accessor for Apple_Parsec_Feedback_V2_PerformEntityQueryCommandForFeedback(0);
  OUTLINED_FUNCTION_274_1(CommandForFeedback);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  swift_endAccess();
}

uint64_t Apple_Parsec_Feedback_V2_StartLocalSearchFeedback.indexState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Apple_Parsec_Feedback_V2_StartLocalSearchFeedback(v7);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_343_0();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_IndexStateForFeedback(0);
  OUTLINED_FUNCTION_29_14(v8);
  if (v9)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v9)
    {
      return sub_1B8D9207C(v1, &unk_1EBAC0748, &qword_1B966F9D0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_326_0();
    OUTLINED_FUNCTION_182();
    return sub_1B8FAC528();
  }

  return result;
}

uint64_t Apple_Parsec_Feedback_V2_StartLocalSearchFeedback.indexState.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAC0748, &qword_1B966F9D0);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  started = type metadata accessor for Apple_Parsec_Feedback_V2_StartLocalSearchFeedback(v2);
  if ((OUTLINED_FUNCTION_47(started) & 1) == 0)
  {
    OUTLINED_FUNCTION_349_0();
    v4 = OUTLINED_FUNCTION_40_0();
    v5 = sub_1B8FD6F80(v4);
    OUTLINED_FUNCTION_135(v5);
  }

  OUTLINED_FUNCTION_326_0();
  OUTLINED_FUNCTION_294();
  sub_1B8FAC528();
  v6 = type metadata accessor for Apple_Parsec_Feedback_V2_IndexStateForFeedback(0);
  OUTLINED_FUNCTION_65_1(v6);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  return swift_endAccess();
}

void Apple_Parsec_Feedback_V2_StartLocalSearchFeedback.indexState.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_491();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_71(v7);
  type metadata accessor for Apple_Parsec_Feedback_V2_IndexStateForFeedback(v8);
  OUTLINED_FUNCTION_135_0();
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_224_2(v13);
  type metadata accessor for Apple_Parsec_Feedback_V2_StartLocalSearchFeedback(v14);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_150_2();
  OUTLINED_FUNCTION_17_2();
  if (v15)
  {
    *v10 = 0;
    *(v10 + 8) = 0;
    *(v10 + 16) = 0;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_17_2();
    if (!v15)
    {
      sub_1B8D9207C(v0, &unk_1EBAC0748, &qword_1B966F9D0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_326_0();
    OUTLINED_FUNCTION_246();
    sub_1B8FAC528();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Apple_Parsec_Feedback_V2_StartLocalSearchFeedback.hasIndexState.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Apple_Parsec_Feedback_V2_StartLocalSearchFeedback(v4);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_285_0();
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_IndexStateForFeedback(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Apple_Parsec_Feedback_V2_StartLocalSearchFeedback.clearIndexState()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAC0748, &qword_1B966F9D0);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  started = type metadata accessor for Apple_Parsec_Feedback_V2_StartLocalSearchFeedback(v2);
  if ((OUTLINED_FUNCTION_182_0(started) & 1) == 0)
  {
    OUTLINED_FUNCTION_349_0();
    v4 = OUTLINED_FUNCTION_40_0();
    v5 = sub_1B8FD6F80(v4);
    OUTLINED_FUNCTION_157_2(v5);
  }

  v6 = type metadata accessor for Apple_Parsec_Feedback_V2_IndexStateForFeedback(0);
  OUTLINED_FUNCTION_274_1(v6);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8F188B0();
  swift_endAccess();
}

uint64_t Apple_Parsec_Feedback_V2_StartLocalSearchFeedback.coreSpotlightIndexTypeUsed.modify()
{
  v0 = OUTLINED_FUNCTION_196_1();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_37_3(v1);
  started = type metadata accessor for Apple_Parsec_Feedback_V2_StartLocalSearchFeedback(v2);
  OUTLINED_FUNCTION_264_1(started);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_117_0();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Apple_Parsec_Feedback_V2_StartLocalSearchFeedback.isPhotosScopedSearch.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_6_11(v1);
  started = type metadata accessor for Apple_Parsec_Feedback_V2_StartLocalSearchFeedback(v2);
  OUTLINED_FUNCTION_124_0(started);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F71B1C()
{
  v1 = OUTLINED_FUNCTION_338_0();
  v2(v1);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_10_4(v0 + 16, v3);
  OUTLINED_FUNCTION_66_2(*(v0 + 16));
}

void Apple_Parsec_Feedback_V2_QueryUnderstandingParse.queryIntentType.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_275_1();
  UnderstandingParse = type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse(v4);
  v6 = OUTLINED_FUNCTION_47(UnderstandingParse);
  v8 = *(v0 + v3);
  if ((v6 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse._StorageClass();
    OUTLINED_FUNCTION_457_0();
    swift_allocObject();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B8FD975C(v9);
    OUTLINED_FUNCTION_72_2(v10);
  }

  OUTLINED_FUNCTION_9_3(v8 + 16, v7);
  *(v8 + 16) = v1;
  *(v8 + 24) = v2;
  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Feedback_V2_QueryUnderstandingParse.queryIntentType.modify()
{
  v1 = OUTLINED_FUNCTION_196_1();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_37_3(v2);
  UnderstandingParse = type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse(v3);
  OUTLINED_FUNCTION_21_8(UnderstandingParse);
  OUTLINED_FUNCTION_344_0();
  OUTLINED_FUNCTION_71_2(*(v0 + 16));
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F71C34()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_7_14();
  v4 = OUTLINED_FUNCTION_459_0();
  v5 = *(v3 + v0);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_425_0();
    type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse._StorageClass();
    OUTLINED_FUNCTION_457_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FD975C(v6);
    OUTLINED_FUNCTION_73_2(v7);
  }

  OUTLINED_FUNCTION_11_4();
  *(v5 + 16) = v1;
  *(v5 + 24) = v2;
  OUTLINED_FUNCTION_242();

  free(v8);
}

uint64_t Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasUnspecifiedTokens_p.getter()
{
  OUTLINED_FUNCTION_226_2();
  OUTLINED_FUNCTION_10_4(v0 + 25, v1);
  return *(v0 + 25);
}

uint64_t Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasUnspecifiedTokens_p.setter()
{
  v3 = OUTLINED_FUNCTION_65_3();
  v4 = OUTLINED_FUNCTION_509_0(v3);
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse._StorageClass();
    OUTLINED_FUNCTION_457_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FD975C(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  result = OUTLINED_FUNCTION_9_3(v6 + 25, v5);
  *(v6 + 25) = v0 & 1;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasUnspecifiedTokens_p.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_24_14(v3);
  OUTLINED_FUNCTION_62_0(v0 + 25);
  *(v1 + 84) = *(v0 + 25);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F71DB8(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_232_0();
    type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse._StorageClass();
    OUTLINED_FUNCTION_457_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FD975C(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 25) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasSortCriteriaTokens_p.getter()
{
  OUTLINED_FUNCTION_226_2();
  OUTLINED_FUNCTION_10_4(v0 + 26, v1);
  return *(v0 + 26);
}

uint64_t Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasSortCriteriaTokens_p.setter()
{
  v3 = OUTLINED_FUNCTION_65_3();
  v4 = OUTLINED_FUNCTION_509_0(v3);
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse._StorageClass();
    OUTLINED_FUNCTION_457_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FD975C(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  result = OUTLINED_FUNCTION_9_3(v6 + 26, v5);
  *(v6 + 26) = v0 & 1;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasSortCriteriaTokens_p.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_24_14(v3);
  OUTLINED_FUNCTION_62_0(v0 + 26);
  *(v1 + 84) = *(v0 + 26);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F71F34(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_232_0();
    type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse._StorageClass();
    OUTLINED_FUNCTION_457_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FD975C(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 26) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasLocationTokens_p.getter()
{
  OUTLINED_FUNCTION_226_2();
  OUTLINED_FUNCTION_10_4(v0 + 27, v1);
  return *(v0 + 27);
}

uint64_t Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasLocationTokens_p.setter()
{
  v3 = OUTLINED_FUNCTION_65_3();
  v4 = OUTLINED_FUNCTION_509_0(v3);
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse._StorageClass();
    OUTLINED_FUNCTION_457_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FD975C(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  result = OUTLINED_FUNCTION_9_3(v6 + 27, v5);
  *(v6 + 27) = v0 & 1;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasLocationTokens_p.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_24_14(v3);
  OUTLINED_FUNCTION_62_0(v0 + 27);
  *(v1 + 84) = *(v0 + 27);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F720B0(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_232_0();
    type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse._StorageClass();
    OUTLINED_FUNCTION_457_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FD975C(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 27) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasActionTokens_p.getter()
{
  OUTLINED_FUNCTION_226_2();
  OUTLINED_FUNCTION_10_4(v0 + 28, v1);
  return *(v0 + 28);
}

uint64_t Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasActionTokens_p.setter()
{
  v3 = OUTLINED_FUNCTION_65_3();
  v4 = OUTLINED_FUNCTION_509_0(v3);
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse._StorageClass();
    OUTLINED_FUNCTION_457_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FD975C(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  result = OUTLINED_FUNCTION_9_3(v6 + 28, v5);
  *(v6 + 28) = v0 & 1;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasActionTokens_p.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_24_14(v3);
  OUTLINED_FUNCTION_62_0(v0 + 28);
  *(v1 + 84) = *(v0 + 28);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F7222C(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_232_0();
    type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse._StorageClass();
    OUTLINED_FUNCTION_457_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FD975C(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 28) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasMediaTypeTokens_p.getter()
{
  OUTLINED_FUNCTION_226_2();
  OUTLINED_FUNCTION_10_4(v0 + 29, v1);
  return *(v0 + 29);
}

uint64_t Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasMediaTypeTokens_p.setter()
{
  v3 = OUTLINED_FUNCTION_65_3();
  v4 = OUTLINED_FUNCTION_509_0(v3);
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse._StorageClass();
    OUTLINED_FUNCTION_457_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FD975C(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  result = OUTLINED_FUNCTION_9_3(v6 + 29, v5);
  *(v6 + 29) = v0 & 1;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasMediaTypeTokens_p.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_24_14(v3);
  OUTLINED_FUNCTION_62_0(v0 + 29);
  *(v1 + 84) = *(v0 + 29);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F723A8(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_232_0();
    type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse._StorageClass();
    OUTLINED_FUNCTION_457_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FD975C(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 29) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasVisualQualityTokens_p.getter()
{
  OUTLINED_FUNCTION_226_2();
  OUTLINED_FUNCTION_10_4(v0 + 30, v1);
  return *(v0 + 30);
}

uint64_t Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasVisualQualityTokens_p.setter()
{
  v3 = OUTLINED_FUNCTION_65_3();
  v4 = OUTLINED_FUNCTION_509_0(v3);
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse._StorageClass();
    OUTLINED_FUNCTION_457_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FD975C(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  result = OUTLINED_FUNCTION_9_3(v6 + 30, v5);
  *(v6 + 30) = v0 & 1;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasVisualQualityTokens_p.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_24_14(v3);
  OUTLINED_FUNCTION_62_0(v0 + 30);
  *(v1 + 84) = *(v0 + 30);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F72524(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_232_0();
    type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse._StorageClass();
    OUTLINED_FUNCTION_457_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FD975C(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 30) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasNounTokens_p.getter()
{
  OUTLINED_FUNCTION_226_2();
  OUTLINED_FUNCTION_10_4(v0 + 31, v1);
  return *(v0 + 31);
}

uint64_t Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasNounTokens_p.setter()
{
  v3 = OUTLINED_FUNCTION_65_3();
  v4 = OUTLINED_FUNCTION_509_0(v3);
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse._StorageClass();
    OUTLINED_FUNCTION_457_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FD975C(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  result = OUTLINED_FUNCTION_9_3(v6 + 31, v5);
  *(v6 + 31) = v0 & 1;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasNounTokens_p.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_24_14(v3);
  OUTLINED_FUNCTION_62_0(v0 + 31);
  *(v1 + 84) = *(v0 + 31);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F726A0(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_232_0();
    type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse._StorageClass();
    OUTLINED_FUNCTION_457_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FD975C(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 31) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasTimeTokens_p.getter()
{
  OUTLINED_FUNCTION_226_2();
  OUTLINED_FUNCTION_10_4(v0 + 32, v1);
  return *(v0 + 32);
}

uint64_t Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasTimeTokens_p.setter()
{
  v3 = OUTLINED_FUNCTION_65_3();
  v4 = OUTLINED_FUNCTION_509_0(v3);
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse._StorageClass();
    OUTLINED_FUNCTION_457_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FD975C(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  result = OUTLINED_FUNCTION_9_3(v6 + 32, v5);
  *(v6 + 32) = v0 & 1;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasTimeTokens_p.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_24_14(v3);
  OUTLINED_FUNCTION_374_0();
  *(v1 + 84) = *(v0 + 32);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F72818(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_232_0();
    type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse._StorageClass();
    OUTLINED_FUNCTION_457_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FD975C(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 32) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasEventTokens_p.getter()
{
  OUTLINED_FUNCTION_226_2();
  OUTLINED_FUNCTION_10_4(v0 + 33, v1);
  return *(v0 + 33);
}

uint64_t Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasEventTokens_p.setter()
{
  v3 = OUTLINED_FUNCTION_65_3();
  v4 = OUTLINED_FUNCTION_509_0(v3);
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse._StorageClass();
    OUTLINED_FUNCTION_457_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FD975C(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  result = OUTLINED_FUNCTION_9_3(v6 + 33, v5);
  *(v6 + 33) = v0 & 1;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasEventTokens_p.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_24_14(v3);
  OUTLINED_FUNCTION_62_0(v0 + 33);
  *(v1 + 84) = *(v0 + 33);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F72994(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_232_0();
    type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse._StorageClass();
    OUTLINED_FUNCTION_457_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FD975C(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 33) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasGenericLocationTokens_p.getter()
{
  OUTLINED_FUNCTION_226_2();
  OUTLINED_FUNCTION_10_4(v0 + 34, v1);
  return *(v0 + 34);
}

uint64_t Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasGenericLocationTokens_p.setter()
{
  v3 = OUTLINED_FUNCTION_65_3();
  v4 = OUTLINED_FUNCTION_509_0(v3);
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse._StorageClass();
    OUTLINED_FUNCTION_457_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FD975C(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  result = OUTLINED_FUNCTION_9_3(v6 + 34, v5);
  *(v6 + 34) = v0 & 1;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasGenericLocationTokens_p.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_24_14(v3);
  OUTLINED_FUNCTION_62_0(v0 + 34);
  *(v1 + 84) = *(v0 + 34);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F72B10(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_232_0();
    type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse._StorageClass();
    OUTLINED_FUNCTION_457_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FD975C(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 34) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasCaptureDeviceTokens_p.getter()
{
  OUTLINED_FUNCTION_226_2();
  OUTLINED_FUNCTION_10_4(v0 + 35, v1);
  return *(v0 + 35);
}

uint64_t Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasCaptureDeviceTokens_p.setter()
{
  v3 = OUTLINED_FUNCTION_65_3();
  v4 = OUTLINED_FUNCTION_509_0(v3);
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse._StorageClass();
    OUTLINED_FUNCTION_457_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FD975C(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  result = OUTLINED_FUNCTION_9_3(v6 + 35, v5);
  *(v6 + 35) = v0 & 1;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasCaptureDeviceTokens_p.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_24_14(v3);
  OUTLINED_FUNCTION_62_0(v0 + 35);
  *(v1 + 84) = *(v0 + 35);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F72C8C(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_232_0();
    type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse._StorageClass();
    OUTLINED_FUNCTION_457_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FD975C(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 35) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasFavoritedTokens_p.getter()
{
  OUTLINED_FUNCTION_226_2();
  OUTLINED_FUNCTION_10_4(v0 + 36, v1);
  return *(v0 + 36);
}

uint64_t Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasFavoritedTokens_p.setter()
{
  v3 = OUTLINED_FUNCTION_65_3();
  v4 = OUTLINED_FUNCTION_509_0(v3);
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse._StorageClass();
    OUTLINED_FUNCTION_457_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FD975C(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  result = OUTLINED_FUNCTION_9_3(v6 + 36, v5);
  *(v6 + 36) = v0 & 1;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasFavoritedTokens_p.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_24_14(v3);
  OUTLINED_FUNCTION_62_0(v0 + 36);
  *(v1 + 84) = *(v0 + 36);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F72E08(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_232_0();
    type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse._StorageClass();
    OUTLINED_FUNCTION_457_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FD975C(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 36) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasSourceAppTokens_p.getter()
{
  OUTLINED_FUNCTION_226_2();
  OUTLINED_FUNCTION_10_4(v0 + 37, v1);
  return *(v0 + 37);
}

uint64_t Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasSourceAppTokens_p.setter()
{
  v3 = OUTLINED_FUNCTION_65_3();
  v4 = OUTLINED_FUNCTION_509_0(v3);
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse._StorageClass();
    OUTLINED_FUNCTION_457_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FD975C(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  result = OUTLINED_FUNCTION_9_3(v6 + 37, v5);
  *(v6 + 37) = v0 & 1;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasSourceAppTokens_p.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_24_14(v3);
  OUTLINED_FUNCTION_62_0(v0 + 37);
  *(v1 + 84) = *(v0 + 37);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F72F84(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_232_0();
    type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse._StorageClass();
    OUTLINED_FUNCTION_457_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FD975C(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 37) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasPersonTokens_p.getter()
{
  OUTLINED_FUNCTION_226_2();
  OUTLINED_FUNCTION_10_4(v0 + 38, v1);
  return *(v0 + 38);
}

uint64_t Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasPersonTokens_p.setter()
{
  v3 = OUTLINED_FUNCTION_65_3();
  v4 = OUTLINED_FUNCTION_509_0(v3);
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse._StorageClass();
    OUTLINED_FUNCTION_457_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FD975C(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  result = OUTLINED_FUNCTION_9_3(v6 + 38, v5);
  *(v6 + 38) = v0 & 1;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasPersonTokens_p.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_24_14(v3);
  OUTLINED_FUNCTION_62_0(v0 + 38);
  *(v1 + 84) = *(v0 + 38);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F73100(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_232_0();
    type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse._StorageClass();
    OUTLINED_FUNCTION_457_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FD975C(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 38) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasPersonSenderTokens_p.getter()
{
  OUTLINED_FUNCTION_226_2();
  OUTLINED_FUNCTION_10_4(v0 + 39, v1);
  return *(v0 + 39);
}

uint64_t Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasPersonSenderTokens_p.setter()
{
  v3 = OUTLINED_FUNCTION_65_3();
  v4 = OUTLINED_FUNCTION_509_0(v3);
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse._StorageClass();
    OUTLINED_FUNCTION_457_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FD975C(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  result = OUTLINED_FUNCTION_9_3(v6 + 39, v5);
  *(v6 + 39) = v0 & 1;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_QueryUnderstandingParse.hasPersonSenderTokens_p.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_24_14(v3);
  OUTLINED_FUNCTION_62_0(v0 + 39);
  *(v1 + 84) = *(v0 + 39);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F7327C(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_232_0();
    type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse._StorageClass();
    OUTLINED_FUNCTION_457_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FD975C(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 39) = v3;

  free(v1);
}

void Apple_Parsec_Feedback_V2_QueryUnderstandingParse.spotlightQueryIntent.getter()
{
  v1 = OUTLINED_FUNCTION_27();
  type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse(v1);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_10_4(v0 + 40, v2);
  OUTLINED_FUNCTION_66_2(*(v0 + 40));
}

void Apple_Parsec_Feedback_V2_QueryUnderstandingParse.spotlightQueryIntent.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_275_1();
  UnderstandingParse = type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse(v4);
  v6 = OUTLINED_FUNCTION_47(UnderstandingParse);
  v8 = *(v0 + v3);
  if ((v6 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse._StorageClass();
    OUTLINED_FUNCTION_457_0();
    swift_allocObject();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B8FD975C(v9);
    OUTLINED_FUNCTION_72_2(v10);
  }

  OUTLINED_FUNCTION_9_3(v8 + 40, v7);
  *(v8 + 40) = v1;
  *(v8 + 48) = v2;
  OUTLINED_FUNCTION_192_1();
}

uint64_t Apple_Parsec_Feedback_V2_QueryUnderstandingParse.spotlightQueryIntent.modify()
{
  v1 = OUTLINED_FUNCTION_196_1();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_37_3(v2);
  UnderstandingParse = type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse(v3);
  OUTLINED_FUNCTION_21_8(UnderstandingParse);
  OUTLINED_FUNCTION_62_0(v0 + 40);
  OUTLINED_FUNCTION_71_2(*(v0 + 40));
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F73418()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_7_14();
  v4 = OUTLINED_FUNCTION_459_0();
  v5 = *(v3 + v0);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_425_0();
    type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse._StorageClass();
    OUTLINED_FUNCTION_457_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8FD975C(v6);
    OUTLINED_FUNCTION_73_2(v7);
  }

  OUTLINED_FUNCTION_11_4();
  *(v5 + 40) = v1;
  *(v5 + 48) = v2;
  OUTLINED_FUNCTION_242();

  free(v8);
}

uint64_t sub_1B8F734BC()
{
  v1 = OUTLINED_FUNCTION_178_1();
  v2(v1);
  OUTLINED_FUNCTION_402_0();
  OUTLINED_FUNCTION_10_4(v0 + 49, v3);
  return *(v0 + 49);
}

uint64_t Apple_Parsec_Feedback_V2_QueryUnderstandingParse.isUnsafeQuery.setter()
{
  v3 = OUTLINED_FUNCTION_65_3();
  v4 = OUTLINED_FUNCTION_509_0(v3);
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse._StorageClass();
    OUTLINED_FUNCTION_457_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FD975C(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  result = OUTLINED_FUNCTION_9_3(v6 + 49, v5);
  *(v6 + 49) = v0 & 1;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_QueryUnderstandingParse.isUnsafeQuery.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_24_14(v3);
  OUTLINED_FUNCTION_62_0(v0 + 49);
  *(v1 + 84) = *(v0 + 49);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F735C0(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_232_0();
    type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse._StorageClass();
    OUTLINED_FUNCTION_457_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FD975C(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 49) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_QueryUnderstandingParse.isBlocklistedQuery.getter()
{
  OUTLINED_FUNCTION_226_2();
  OUTLINED_FUNCTION_10_4(v0 + 50, v1);
  return *(v0 + 50);
}

uint64_t Apple_Parsec_Feedback_V2_QueryUnderstandingParse.isBlocklistedQuery.setter()
{
  v3 = OUTLINED_FUNCTION_65_3();
  v4 = OUTLINED_FUNCTION_509_0(v3);
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse._StorageClass();
    OUTLINED_FUNCTION_457_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FD975C(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  result = OUTLINED_FUNCTION_9_3(v6 + 50, v5);
  *(v6 + 50) = v0 & 1;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_QueryUnderstandingParse.isBlocklistedQuery.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_24_14(v3);
  OUTLINED_FUNCTION_62_0(v0 + 50);
  *(v1 + 84) = *(v0 + 50);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8F7373C(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_232_0();
    type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse._StorageClass();
    OUTLINED_FUNCTION_457_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8FD975C(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 50) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Feedback_V2_EndLocalSearchFeedback.quParse.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Apple_Parsec_Feedback_V2_EndLocalSearchFeedback(v7);
  OUTLINED_FUNCTION_100_3();
  UnderstandingParse = type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse(0);
  OUTLINED_FUNCTION_29_14(UnderstandingParse);
  if (v9)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB6D08 != -1)
    {
      OUTLINED_FUNCTION_613_0(&qword_1EBAB6D08);
    }

    result = OUTLINED_FUNCTION_59_0();
    if (a1 != 1)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC0750, &qword_1B966F9D8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_46_5();
    OUTLINED_FUNCTION_182();
    return sub_1B8FAC528();
  }

  return result;
}

uint64_t Apple_Parsec_Feedback_V2_EndLocalSearchFeedback.quParse.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Feedback_V2_EndLocalSearchFeedback(v1);
  sub_1B8D9207C(v0 + *(v2 + 36), &qword_1EBAC0750, &qword_1B966F9D8);
  OUTLINED_FUNCTION_46_5();
  OUTLINED_FUNCTION_122_0();
  sub_1B8FAC528();
  type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_Feedback_V2_EndLocalSearchFeedback.quParse.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_26_1(v8);
  UnderstandingParse = type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse(v9);
  OUTLINED_FUNCTION_140_2(UnderstandingParse);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_202_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_89_0(v14);
  v16 = type metadata accessor for Apple_Parsec_Feedback_V2_EndLocalSearchFeedback(v15);
  OUTLINED_FUNCTION_256_1(*(v16 + 36));
  OUTLINED_FUNCTION_17_2();
  if (v17)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB6D08 != -1)
    {
      OUTLINED_FUNCTION_613_0(&qword_1EBAB6D08);
    }

    OUTLINED_FUNCTION_57_2();
    if (v0 != 1)
    {
      sub_1B8D9207C(v1, &qword_1EBAC0750, &qword_1B966F9D8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_46_5();
    OUTLINED_FUNCTION_246();
    sub_1B8FAC528();
  }

  OUTLINED_FUNCTION_242();
}

void sub_1B8F73AF0()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_67();
  if (v5)
  {
    OUTLINED_FUNCTION_128();
    sub_1B8FAC578();
    sub_1B8D9207C(v4 + v3, &qword_1EBAC0750, &qword_1B966F9D8);
    OUTLINED_FUNCTION_46_5();
    OUTLINED_FUNCTION_691_0();
    OUTLINED_FUNCTION_30_2();
    OUTLINED_FUNCTION_298_0();
    sub_1B8FAC5C8();
  }

  else
  {
    sub_1B8D9207C(v4 + v3, &qword_1EBAC0750, &qword_1B966F9D8);
    OUTLINED_FUNCTION_46_5();
    OUTLINED_FUNCTION_692_0();
    OUTLINED_FUNCTION_30_2();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_242();

  free(v6);
}

uint64_t sub_1B8F73BFC()
{
  OUTLINED_FUNCTION_250_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_137();
  v1(0);
  OUTLINED_FUNCTION_225_0();
  sub_1B8F1B8B8();
  v6 = v0(0);
  OUTLINED_FUNCTION_220_2(v6);
  return OUTLINED_FUNCTION_681_0();
}

uint64_t sub_1B8F73CC4()
{
  v1 = OUTLINED_FUNCTION_218_0();
  v2(v1);
  OUTLINED_FUNCTION_397();
  sub_1B8D9207C(v3, v4, v5);
  v0(0);
  v6 = OUTLINED_FUNCTION_282_1();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t Apple_Parsec_Feedback_V2_EndLocalSearchFeedback.photosRankingInfo.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = OUTLINED_FUNCTION_236();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Apple_Parsec_Feedback_V2_EndLocalSearchFeedback(v8);
  OUTLINED_FUNCTION_100_3();
  type metadata accessor for Apple_Parsec_Feedback_V2_PhotosRankingInfo(0);
  OUTLINED_FUNCTION_199_2();
  OUTLINED_FUNCTION_9_2();
  if (v9)
  {
    OUTLINED_FUNCTION_702_0();
    *(a1 + 48) = 0;
    *(a1 + 56) = v1;
    *(a1 + 64) = 0;
    *(a1 + 72) = v1;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v9)
    {
      return sub_1B8D9207C(v2, &qword_1EBAC0758, &qword_1B966F9E0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_45_4();
    OUTLINED_FUNCTION_182();
    return sub_1B8FAC528();
  }

  return result;
}

uint64_t Apple_Parsec_Feedback_V2_EndLocalSearchFeedback.photosRankingInfo.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Feedback_V2_EndLocalSearchFeedback(v1);
  sub_1B8D9207C(v0 + *(v2 + 40), &qword_1EBAC0758, &qword_1B966F9E0);
  OUTLINED_FUNCTION_45_4();
  OUTLINED_FUNCTION_122_0();
  sub_1B8FAC528();
  type metadata accessor for Apple_Parsec_Feedback_V2_PhotosRankingInfo(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t Apple_Parsec_Feedback_V2_PhotosRankingInfo.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_197_1(a1);
  *(v1 + 16) = 0;
  OUTLINED_FUNCTION_724(v2);
  *(v1 + 48) = 0;
  *(v1 + 56) = v3;
  *(v1 + 64) = 0;
  *(v1 + 72) = v3;
  v4 = type metadata accessor for Apple_Parsec_Feedback_V2_PhotosRankingInfo(0);
  return OUTLINED_FUNCTION_694_0(v4);
}

void Apple_Parsec_Feedback_V2_EndLocalSearchFeedback.photosRankingInfo.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_85(v7);
  v9 = type metadata accessor for Apple_Parsec_Feedback_V2_PhotosRankingInfo(v8);
  OUTLINED_FUNCTION_150_3(v9);
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_202_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_89_0(v14);
  v16 = type metadata accessor for Apple_Parsec_Feedback_V2_EndLocalSearchFeedback(v15);
  OUTLINED_FUNCTION_68_4(*(v16 + 40));
  OUTLINED_FUNCTION_16_2();
  if (v17)
  {
    OUTLINED_FUNCTION_700_0();
    *(v11 + 48) = 0;
    *(v11 + 56) = 1;
    *(v11 + 64) = 0;
    *(v11 + 72) = 1;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_16_2();
    if (!v17)
    {
      sub_1B8D9207C(v0, &qword_1EBAC0758, &qword_1B966F9E0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_45_4();
    OUTLINED_FUNCTION_461();
    sub_1B8FAC528();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

void sub_1B8F74030()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_67();
  if (v5)
  {
    OUTLINED_FUNCTION_128();
    sub_1B8FAC578();
    sub_1B8D9207C(v4 + v3, &qword_1EBAC0758, &qword_1B966F9E0);
    OUTLINED_FUNCTION_45_4();
    OUTLINED_FUNCTION_691_0();
    OUTLINED_FUNCTION_30_2();
    OUTLINED_FUNCTION_323_0();
    sub_1B8FAC5C8();
  }

  else
  {
    sub_1B8D9207C(v4 + v3, &qword_1EBAC0758, &qword_1B966F9E0);
    OUTLINED_FUNCTION_45_4();
    OUTLINED_FUNCTION_692_0();
    OUTLINED_FUNCTION_30_2();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_242();

  free(v6);
}

uint64_t Apple_Parsec_Feedback_V2_EndLocalSearchFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Feedback_V2_EndLocalSearchFeedback(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Feedback_V2_EndLocalSearchFeedback.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0u;
  *(a1 + 16) = 0xE000000000000000;
  *(a1 + 24) = 0;
  v1 = type metadata accessor for Apple_Parsec_Feedback_V2_EndLocalSearchFeedback(0);
  OUTLINED_FUNCTION_690_0(v1);
  type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  v6 = OUTLINED_FUNCTION_663_0();
  type metadata accessor for Apple_Parsec_Feedback_V2_PhotosRankingInfo(v6);
  v7 = OUTLINED_FUNCTION_40_3();

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

uint64_t Apple_Parsec_Feedback_V2_PhotosRankingInfo.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Feedback_V2_PhotosRankingInfo(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Feedback_V2_Error.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Feedback_V2_Error(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Feedback_V2_Error.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_92_0();
  v2 = type metadata accessor for Apple_Parsec_Feedback_V2_Error(0);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  return OUTLINED_FUNCTION_690_0(v2);
}

uint64_t Apple_Parsec_Feedback_V2_ErrorFeedback.error.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Apple_Parsec_Feedback_V2_ErrorFeedback(v7);
  OUTLINED_FUNCTION_100_3();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_Error(0);
  OUTLINED_FUNCTION_29_14(v8);
  if (v9)
  {
    OUTLINED_FUNCTION_92_0();
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    OUTLINED_FUNCTION_762(v10);
    result = OUTLINED_FUNCTION_9_2();
    if (!v9)
    {
      return sub_1B8D9207C(v1, &unk_1EBAC0760, &qword_1B966F9E8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_11_19();
    OUTLINED_FUNCTION_182();
    return sub_1B8FAC528();
  }

  return result;
}

uint64_t Apple_Parsec_Feedback_V2_ErrorFeedback.error.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Feedback_V2_ErrorFeedback(v1);
  sub_1B8D9207C(v0 + *(v2 + 28), &unk_1EBAC0760, &qword_1B966F9E8);
  OUTLINED_FUNCTION_11_19();
  OUTLINED_FUNCTION_122_0();
  sub_1B8FAC528();
  type metadata accessor for Apple_Parsec_Feedback_V2_Error(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_Feedback_V2_ErrorFeedback.error.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_85(v7);
  v9 = type metadata accessor for Apple_Parsec_Feedback_V2_Error(v8);
  OUTLINED_FUNCTION_150_3(v9);
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_202_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_89_0(v14);
  v16 = type metadata accessor for Apple_Parsec_Feedback_V2_ErrorFeedback(v15);
  OUTLINED_FUNCTION_68_4(*(v16 + 28));
  OUTLINED_FUNCTION_16_2();
  if (v17)
  {
    OUTLINED_FUNCTION_114_0();
    *(v11 + 32) = 0;
    *(v11 + 40) = 0;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_16_2();
    if (!v17)
    {
      sub_1B8D9207C(v0, &unk_1EBAC0760, &qword_1B966F9E8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_11_19();
    OUTLINED_FUNCTION_461();
    sub_1B8FAC528();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t Apple_Parsec_Feedback_V2_ErrorFeedback.underlyingError.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Apple_Parsec_Feedback_V2_ErrorFeedback(v7);
  OUTLINED_FUNCTION_100_3();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_Error(0);
  OUTLINED_FUNCTION_29_14(v8);
  if (v9)
  {
    OUTLINED_FUNCTION_92_0();
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    OUTLINED_FUNCTION_762(v10);
    result = OUTLINED_FUNCTION_9_2();
    if (!v9)
    {
      return sub_1B8D9207C(v1, &unk_1EBAC0760, &qword_1B966F9E8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_11_19();
    OUTLINED_FUNCTION_182();
    return sub_1B8FAC528();
  }

  return result;
}

uint64_t Apple_Parsec_Feedback_V2_ErrorFeedback.underlyingError.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Feedback_V2_ErrorFeedback(v1);
  sub_1B8D9207C(v0 + *(v2 + 32), &unk_1EBAC0760, &qword_1B966F9E8);
  OUTLINED_FUNCTION_11_19();
  OUTLINED_FUNCTION_122_0();
  sub_1B8FAC528();
  type metadata accessor for Apple_Parsec_Feedback_V2_Error(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_Feedback_V2_ErrorFeedback.underlyingError.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_85(v7);
  v9 = type metadata accessor for Apple_Parsec_Feedback_V2_Error(v8);
  OUTLINED_FUNCTION_150_3(v9);
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_202_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_89_0(v14);
  v16 = type metadata accessor for Apple_Parsec_Feedback_V2_ErrorFeedback(v15);
  OUTLINED_FUNCTION_68_4(*(v16 + 32));
  OUTLINED_FUNCTION_16_2();
  if (v17)
  {
    OUTLINED_FUNCTION_114_0();
    *(v11 + 32) = 0;
    *(v11 + 40) = 0;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_16_2();
    if (!v17)
    {
      sub_1B8D9207C(v0, &unk_1EBAC0760, &qword_1B966F9E8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_11_19();
    OUTLINED_FUNCTION_461();
    sub_1B8FAC528();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

void sub_1B8F749A4()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_67();
  if (v5)
  {
    OUTLINED_FUNCTION_128();
    sub_1B8FAC578();
    sub_1B8D9207C(v4 + v3, &unk_1EBAC0760, &qword_1B966F9E8);
    OUTLINED_FUNCTION_11_19();
    OUTLINED_FUNCTION_691_0();
    OUTLINED_FUNCTION_30_2();
    OUTLINED_FUNCTION_154_2();
    sub_1B8FAC5C8();
  }

  else
  {
    sub_1B8D9207C(v4 + v3, &unk_1EBAC0760, &qword_1B966F9E8);
    OUTLINED_FUNCTION_11_19();
    OUTLINED_FUNCTION_692_0();
    OUTLINED_FUNCTION_30_2();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_242();

  free(v6);
}

uint64_t Apple_Parsec_Feedback_V2_ErrorFeedback.relatedStartNetworkSearchFeedbackID.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_ErrorFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Feedback_V2_ErrorFeedback(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Feedback_V2_ErrorFeedback.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_228_0(a1);
  *(v1 + 16) = v2;
  type metadata accessor for Apple_Parsec_Feedback_V2_ErrorFeedback(0);
  OUTLINED_FUNCTION_279();
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_Error(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v3);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v3);
}

uint64_t Apple_Parsec_Feedback_V2_CustomFeedback.jsonFeedback.getter()
{
  v0 = OUTLINED_FUNCTION_432();
  sub_1B8D91FCC(v0, v1);
  return OUTLINED_FUNCTION_432();
}

uint64_t Apple_Parsec_Feedback_V2_CustomFeedback.jsonFeedback.setter()
{
  OUTLINED_FUNCTION_16();
  result = sub_1B8D538A0(*(v1 + 8), *(v1 + 16));
  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_CustomFeedback.feedbackType.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 24) = *result;
  *(v1 + 32) = v2;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_CustomFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Feedback_V2_CustomFeedback(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Feedback_V2_CustomFeedback.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_501_0(a1);
  *(v1 + 16) = xmmword_1B966F890;
  v2 = OUTLINED_FUNCTION_616_0();
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_CustomFeedback(v2);
  return OUTLINED_FUNCTION_101_2(v3);
}

uint64_t Apple_Parsec_Feedback_V2_SuggestionEngagementFeedback.suggestion.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = OUTLINED_FUNCTION_236();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Apple_Parsec_Feedback_V2_SuggestionEngagementFeedback(v8);
  OUTLINED_FUNCTION_100_3();
  type metadata accessor for Apple_Parsec_Feedback_V2_SearchSuggestionForFeedback(0);
  OUTLINED_FUNCTION_199_2();
  OUTLINED_FUNCTION_9_2();
  if (v9)
  {
    OUTLINED_FUNCTION_276_1();
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = v1;
    *(a1 + 72) = 0;
    *(a1 + 80) = v10;
    *(a1 + 88) = 0;
    *(a1 + 96) = v10;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v9)
    {
      return sub_1B8D9207C(v2, &unk_1EBAC0768, &qword_1B966F9F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_44_6();
    OUTLINED_FUNCTION_182();
    return sub_1B8FAC528();
  }

  return result;
}

uint64_t Apple_Parsec_Feedback_V2_SuggestionEngagementFeedback.suggestion.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Feedback_V2_SuggestionEngagementFeedback(v1);
  sub_1B8D9207C(v0 + *(v2 + 24), &unk_1EBAC0768, &qword_1B966F9F0);
  OUTLINED_FUNCTION_44_6();
  OUTLINED_FUNCTION_122_0();
  sub_1B8FAC528();
  type metadata accessor for Apple_Parsec_Feedback_V2_SearchSuggestionForFeedback(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_Feedback_V2_SuggestionEngagementFeedback.suggestion.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_26_1(v7);
  v9 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchSuggestionForFeedback(v8);
  OUTLINED_FUNCTION_140_2(v9);
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_202_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_89_0(v14);
  v16 = type metadata accessor for Apple_Parsec_Feedback_V2_SuggestionEngagementFeedback(v15);
  OUTLINED_FUNCTION_256_1(*(v16 + 24));
  OUTLINED_FUNCTION_17_2();
  if (v17)
  {
    OUTLINED_FUNCTION_114_0();
    *(v11 + 32) = 0;
    *(v11 + 40) = v18;
    *(v11 + 48) = 0;
    *(v11 + 56) = 0;
    *(v11 + 64) = 1;
    *(v11 + 72) = 0;
    *(v11 + 80) = v18;
    *(v11 + 88) = 0;
    *(v11 + 96) = v18;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_17_2();
    if (!v17)
    {
      sub_1B8D9207C(v0, &unk_1EBAC0768, &qword_1B966F9F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_44_6();
    OUTLINED_FUNCTION_246();
    sub_1B8FAC528();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

void sub_1B8F75064()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_67();
  if (v5)
  {
    OUTLINED_FUNCTION_128();
    sub_1B8FAC578();
    sub_1B8D9207C(v4 + v3, &unk_1EBAC0768, &qword_1B966F9F0);
    OUTLINED_FUNCTION_44_6();
    OUTLINED_FUNCTION_691_0();
    OUTLINED_FUNCTION_30_2();
    OUTLINED_FUNCTION_319_0();
    sub_1B8FAC5C8();
  }

  else
  {
    sub_1B8D9207C(v4 + v3, &unk_1EBAC0768, &qword_1B966F9F0);
    OUTLINED_FUNCTION_44_6();
    OUTLINED_FUNCTION_692_0();
    OUTLINED_FUNCTION_30_2();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_242();

  free(v6);
}

uint64_t sub_1B8F75174()
{
  OUTLINED_FUNCTION_250_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_137();
  v1(0);
  OUTLINED_FUNCTION_225_0();
  sub_1B8F1B8B8();
  v6 = v0(0);
  OUTLINED_FUNCTION_220_2(v6);
  return OUTLINED_FUNCTION_681_0();
}

uint64_t sub_1B8F7523C()
{
  v1 = OUTLINED_FUNCTION_218_0();
  v2(v1);
  OUTLINED_FUNCTION_397();
  sub_1B8D9207C(v3, v4, v5);
  v0(0);
  v6 = OUTLINED_FUNCTION_282_1();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t Apple_Parsec_Feedback_V2_SuggestionEngagementFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Feedback_V2_SuggestionEngagementFeedback(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B8F75340@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a1(0);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  a2(0);
  v4 = OUTLINED_FUNCTION_161_3();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

uint64_t Apple_Parsec_Feedback_V2_CardViewDisappearFeedback.card.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Apple_Parsec_Feedback_V2_CardViewDisappearFeedback(v7);
  OUTLINED_FUNCTION_100_3();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback(0);
  OUTLINED_FUNCTION_29_14(v8);
  if (v9)
  {
    *a1 = MEMORY[0x1E69E7CC0];
    a1[1] = 0;
    OUTLINED_FUNCTION_594_0();
    OUTLINED_FUNCTION_251_0(v10);
    result = OUTLINED_FUNCTION_9_2();
    if (!v9)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC06F0, &qword_1B966F978);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_13();
    OUTLINED_FUNCTION_182();
    return sub_1B8FAC528();
  }

  return result;
}

uint64_t Apple_Parsec_Feedback_V2_CardViewDisappearFeedback.card.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Feedback_V2_CardViewDisappearFeedback(v1);
  sub_1B8D9207C(v0 + *(v2 + 28), &qword_1EBAC06F0, &qword_1B966F978);
  OUTLINED_FUNCTION_6_13();
  OUTLINED_FUNCTION_122_0();
  sub_1B8FAC528();
  type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_Feedback_V2_CardViewDisappearFeedback.card.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_85(v7);
  v9 = type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback(v8);
  OUTLINED_FUNCTION_150_3(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_202_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_89_0(v13);
  v15 = type metadata accessor for Apple_Parsec_Feedback_V2_CardViewDisappearFeedback(v14);
  OUTLINED_FUNCTION_68_4(*(v15 + 28));
  OUTLINED_FUNCTION_16_2();
  if (v16)
  {
    OUTLINED_FUNCTION_513_0(MEMORY[0x1E69E7CC0]);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_16_2();
    if (!v16)
    {
      sub_1B8D9207C(v0, &qword_1EBAC06F0, &qword_1B966F978);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_13();
    OUTLINED_FUNCTION_461();
    sub_1B8FAC528();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t sub_1B8F75684()
{
  OUTLINED_FUNCTION_250_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_137();
  v1(0);
  OUTLINED_FUNCTION_225_0();
  sub_1B8F1B8B8();
  v6 = v0(0);
  OUTLINED_FUNCTION_220_2(v6);
  return OUTLINED_FUNCTION_681_0();
}

uint64_t sub_1B8F7574C()
{
  v1 = OUTLINED_FUNCTION_218_0();
  v2(v1);
  OUTLINED_FUNCTION_397();
  sub_1B8D9207C(v3, v4, v5);
  v0(0);
  v6 = OUTLINED_FUNCTION_282_1();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t Apple_Parsec_Feedback_V2_CardViewDisappearFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Feedback_V2_CardViewDisappearFeedback(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Feedback_V2_CardViewAppearFeedback.card.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Apple_Parsec_Feedback_V2_CardViewAppearFeedback(v7);
  OUTLINED_FUNCTION_100_3();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback(0);
  OUTLINED_FUNCTION_29_14(v8);
  if (v9)
  {
    *a1 = MEMORY[0x1E69E7CC0];
    a1[1] = 0;
    OUTLINED_FUNCTION_594_0();
    OUTLINED_FUNCTION_251_0(v10);
    result = OUTLINED_FUNCTION_9_2();
    if (!v9)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC06F0, &qword_1B966F978);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_13();
    OUTLINED_FUNCTION_182();
    return sub_1B8FAC528();
  }

  return result;
}

uint64_t Apple_Parsec_Feedback_V2_CardViewAppearFeedback.card.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Feedback_V2_CardViewAppearFeedback(v1);
  sub_1B8D9207C(v0 + *(v2 + 32), &qword_1EBAC06F0, &qword_1B966F978);
  OUTLINED_FUNCTION_6_13();
  OUTLINED_FUNCTION_122_0();
  sub_1B8FAC528();
  type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_Feedback_V2_CardViewAppearFeedback.card.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_85(v7);
  v9 = type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback(v8);
  OUTLINED_FUNCTION_150_3(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_202_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_89_0(v13);
  v15 = type metadata accessor for Apple_Parsec_Feedback_V2_CardViewAppearFeedback(v14);
  OUTLINED_FUNCTION_68_4(*(v15 + 32));
  OUTLINED_FUNCTION_16_2();
  if (v16)
  {
    OUTLINED_FUNCTION_513_0(MEMORY[0x1E69E7CC0]);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_16_2();
    if (!v16)
    {
      sub_1B8D9207C(v0, &qword_1EBAC06F0, &qword_1B966F978);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_13();
    OUTLINED_FUNCTION_461();
    sub_1B8FAC528();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

void sub_1B8F75ACC()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_67();
  if (v5)
  {
    OUTLINED_FUNCTION_128();
    sub_1B8FAC578();
    sub_1B8D9207C(v4 + v3, &qword_1EBAC06F0, &qword_1B966F978);
    OUTLINED_FUNCTION_6_13();
    OUTLINED_FUNCTION_691_0();
    OUTLINED_FUNCTION_30_2();
    OUTLINED_FUNCTION_31_12();
    sub_1B8FAC5C8();
  }

  else
  {
    sub_1B8D9207C(v4 + v3, &qword_1EBAC06F0, &qword_1B966F978);
    OUTLINED_FUNCTION_6_13();
    OUTLINED_FUNCTION_692_0();
    OUTLINED_FUNCTION_30_2();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_242();

  free(v6);
}

uint64_t Apple_Parsec_Feedback_V2_CardViewAppearFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Feedback_V2_CardViewAppearFeedback(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Feedback_V2_CardViewAppearFeedback.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_581_0(a1);
  *(v1 + 8) = 0;
  v2 = OUTLINED_FUNCTION_518_0();
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_CardViewAppearFeedback(v2);
  OUTLINED_FUNCTION_543_0(v3);
  v4 = OUTLINED_FUNCTION_661_0();
  type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback(v4);
  v5 = OUTLINED_FUNCTION_40_3();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t Apple_Parsec_Feedback_V2_VisibleSuggestionsFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Feedback_V2_VisibleSuggestionsFeedback(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Feedback_V2_ResultsReceivedAfterTimeoutFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Feedback_V2_ResultsReceivedAfterTimeoutFeedback(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B8F75E94()
{
  v0 = OUTLINED_FUNCTION_699_0(MEMORY[0x1E69E7CC0]);
  v1(v0);
  return OUTLINED_FUNCTION_279();
}

uint64_t Apple_Parsec_Feedback_V2_LateSectionsAppendedFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Feedback_V2_LateSectionsAppendedFeedback(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Feedback_V2_ClearInputFeedback.triggerEvent.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 8) = *result;
  *(v1 + 16) = v2;
  return result;
}

uint64_t Apple_Parsec_Feedback_V2_ClearInputFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Feedback_V2_ClearInputFeedback(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B8F76070@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_370_0(a1);
  v1(0);
  return OUTLINED_FUNCTION_279();
}

uint64_t Apple_Parsec_Feedback_V2_SectionEngagementFeedback.section.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Apple_Parsec_Feedback_V2_SectionEngagementFeedback(v7);
  OUTLINED_FUNCTION_100_3();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_ResultSectionForFeedback(0);
  OUTLINED_FUNCTION_29_14(v8);
  if (v9)
  {
    Apple_Parsec_Feedback_V2_ResultSectionForFeedback.init()(a1);
    result = OUTLINED_FUNCTION_9_2();
    if (!v9)
    {
      return sub_1B8D9207C(v1, &unk_1EBAB9178, &unk_1B964D960);
    }
  }

  else
  {
    OUTLINED_FUNCTION_12_17();
    OUTLINED_FUNCTION_182();
    return sub_1B8FAC528();
  }

  return result;
}

uint64_t Apple_Parsec_Feedback_V2_SectionEngagementFeedback.section.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Feedback_V2_SectionEngagementFeedback(v1);
  sub_1B8D9207C(v0 + *(v2 + 28), &unk_1EBAB9178, &unk_1B964D960);
  OUTLINED_FUNCTION_12_17();
  OUTLINED_FUNCTION_122_0();
  sub_1B8FAC528();
  type metadata accessor for Apple_Parsec_Feedback_V2_ResultSectionForFeedback(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_Feedback_V2_SectionEngagementFeedback.section.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_26_1(v7);
  v9 = type metadata accessor for Apple_Parsec_Feedback_V2_ResultSectionForFeedback(v8);
  OUTLINED_FUNCTION_140_2(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_202_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_89_0(v13);
  v15 = type metadata accessor for Apple_Parsec_Feedback_V2_SectionEngagementFeedback(v14);
  OUTLINED_FUNCTION_256_1(*(v15 + 28));
  OUTLINED_FUNCTION_17_2();
  if (v16)
  {
    OUTLINED_FUNCTION_608_0(MEMORY[0x1E69E7CC0]);
    type metadata accessor for Apple_Parsec_Feedback_V2_ButtonForFeedback(0);
    OUTLINED_FUNCTION_756();
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
    OUTLINED_FUNCTION_17_2();
    if (!v16)
    {
      sub_1B8D9207C(v0, &unk_1EBAB9178, &unk_1B964D960);
    }
  }

  else
  {
    OUTLINED_FUNCTION_12_17();
    OUTLINED_FUNCTION_246();
    sub_1B8FAC528();
  }

  OUTLINED_FUNCTION_242();
}

uint64_t Apple_Parsec_Feedback_V2_SectionEngagementFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Feedback_V2_SectionEngagementFeedback(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B8F7644C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  a1(0);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  a2(0);
  v4 = OUTLINED_FUNCTION_161_3();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

uint64_t Apple_Parsec_Feedback_V2_VisibleSectionHeaderFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Feedback_V2_VisibleSectionHeaderFeedback(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Feedback_V2_VisibleSectionHeaderFeedback.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_501_0(a1);
  v1 = OUTLINED_FUNCTION_364_0();
  v2 = type metadata accessor for Apple_Parsec_Feedback_V2_VisibleSectionHeaderFeedback(v1);
  return OUTLINED_FUNCTION_101_2(v2);
}

uint64_t Apple_Parsec_Feedback_V2_DidGoToSiteFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Feedback_V2_DidGoToSiteFeedback(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Feedback_V2_DidGoToSiteFeedback.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_280_1(a1);
  v1 = OUTLINED_FUNCTION_616_0();
  v2 = type metadata accessor for Apple_Parsec_Feedback_V2_DidGoToSiteFeedback(v1);
  return OUTLINED_FUNCTION_101_2(v2);
}

uint64_t Apple_Parsec_Feedback_V2_DidGoToSearchFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Feedback_V2_DidGoToSearchFeedback(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Feedback_V2_DidGoToSearchFeedback.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_280_1(a1);
  OUTLINED_FUNCTION_733(1);
  v1 = type metadata accessor for Apple_Parsec_Feedback_V2_DidGoToSearchFeedback(0);
  return OUTLINED_FUNCTION_690_0(v1);
}

uint64_t Apple_Parsec_Feedback_V2_SessionMissingResultsFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Feedback_V2_SessionMissingResultsFeedback(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Feedback_V2_SessionMissingSuggestionsFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Feedback_V2_SessionMissingSuggestionsFeedback(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Feedback_V2_ResultGradingFeedback.result.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Apple_Parsec_Feedback_V2_ResultGradingFeedback(v7);
  OUTLINED_FUNCTION_100_3();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(0);
  OUTLINED_FUNCTION_29_14(v8);
  if (v9)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB6BC0 != -1)
    {
      OUTLINED_FUNCTION_41_9(&qword_1EBAB6BC0);
    }

    result = OUTLINED_FUNCTION_59_0();
    if (a1 != 1)
    {
      return sub_1B8D9207C(v1, &qword_1EBAB9168, &qword_1B964D950);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_21();
    OUTLINED_FUNCTION_182();
    return sub_1B8FAC528();
  }

  return result;
}

uint64_t Apple_Parsec_Feedback_V2_ResultGradingFeedback.result.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Feedback_V2_ResultGradingFeedback(v1);
  sub_1B8D9207C(v0 + *(v2 + 32), &qword_1EBAB9168, &qword_1B964D950);
  OUTLINED_FUNCTION_2_21();
  OUTLINED_FUNCTION_122_0();
  sub_1B8FAC528();
  type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_Feedback_V2_ResultGradingFeedback.result.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_26_1(v8);
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(v9);
  OUTLINED_FUNCTION_140_2(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_202_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_89_0(v14);
  v16 = type metadata accessor for Apple_Parsec_Feedback_V2_ResultGradingFeedback(v15);
  OUTLINED_FUNCTION_256_1(*(v16 + 32));
  OUTLINED_FUNCTION_17_2();
  if (v17)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB6BC0 != -1)
    {
      OUTLINED_FUNCTION_41_9(&qword_1EBAB6BC0);
    }

    OUTLINED_FUNCTION_57_2();
    if (v0 != 1)
    {
      sub_1B8D9207C(v1, &qword_1EBAB9168, &qword_1B964D950);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_21();
    OUTLINED_FUNCTION_246();
    sub_1B8FAC528();
  }

  OUTLINED_FUNCTION_242();
}

uint64_t Apple_Parsec_Feedback_V2_ResultGradingFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Feedback_V2_ResultGradingFeedback(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Feedback_V2_ResultGradingFeedback.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_501_0(a1);
  v1 = OUTLINED_FUNCTION_364_0();
  v2 = type metadata accessor for Apple_Parsec_Feedback_V2_ResultGradingFeedback(v1);
  OUTLINED_FUNCTION_543_0(v2);
  v3 = OUTLINED_FUNCTION_661_0();
  type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(v3);
  v4 = OUTLINED_FUNCTION_40_3();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

uint64_t Apple_Parsec_Feedback_V2_Range.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Feedback_V2_Range(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Feedback_V2_Range.init()()
{
  v1 = OUTLINED_FUNCTION_27();
  type metadata accessor for Apple_Parsec_Feedback_V2_Range(v1);
  *v0 = 0;
  v0[1] = 0;
  return OUTLINED_FUNCTION_279();
}

uint64_t Apple_Parsec_Feedback_V2_LookupHintRelevancyFeedback.hintRange.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Apple_Parsec_Feedback_V2_LookupHintRelevancyFeedback(v7);
  OUTLINED_FUNCTION_100_3();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_Range(0);
  v9 = OUTLINED_FUNCTION_29_14(v8);
  if (v10)
  {
    *a1 = 0;
    a1[1] = 0;
    OUTLINED_FUNCTION_251_0(v9);
    result = OUTLINED_FUNCTION_9_2();
    if (!v10)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC0770, &unk_1B966F9F8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_43_5();
    OUTLINED_FUNCTION_182();
    return sub_1B8FAC528();
  }

  return result;
}

uint64_t Apple_Parsec_Feedback_V2_LookupHintRelevancyFeedback.hintRange.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Apple_Parsec_Feedback_V2_LookupHintRelevancyFeedback(v1);
  sub_1B8D9207C(v0 + *(v2 + 40), &qword_1EBAC0770, &unk_1B966F9F8);
  OUTLINED_FUNCTION_43_5();
  OUTLINED_FUNCTION_122_0();
  sub_1B8FAC528();
  type metadata accessor for Apple_Parsec_Feedback_V2_Range(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Apple_Parsec_Feedback_V2_LookupHintRelevancyFeedback.hintRange.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_85(v7);
  v9 = type metadata accessor for Apple_Parsec_Feedback_V2_Range(v8);
  OUTLINED_FUNCTION_150_3(v9);
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_202_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_89_0(v14);
  v16 = type metadata accessor for Apple_Parsec_Feedback_V2_LookupHintRelevancyFeedback(v15);
  OUTLINED_FUNCTION_68_4(*(v16 + 40));
  OUTLINED_FUNCTION_16_2();
  if (v17)
  {
    *v11 = 0;
    v11[1] = 0;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_16_2();
    if (!v17)
    {
      sub_1B8D9207C(v0, &qword_1EBAC0770, &unk_1B966F9F8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_43_5();
    OUTLINED_FUNCTION_461();
    sub_1B8FAC528();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

void sub_1B8F77088()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_67();
  if (v5)
  {
    OUTLINED_FUNCTION_128();
    sub_1B8FAC578();
    sub_1B8D9207C(v4 + v3, &qword_1EBAC0770, &unk_1B966F9F8);
    OUTLINED_FUNCTION_43_5();
    OUTLINED_FUNCTION_691_0();
    OUTLINED_FUNCTION_30_2();
    OUTLINED_FUNCTION_317_0();
    sub_1B8FAC5C8();
  }

  else
  {
    sub_1B8D9207C(v4 + v3, &qword_1EBAC0770, &unk_1B966F9F8);
    OUTLINED_FUNCTION_43_5();
    OUTLINED_FUNCTION_692_0();
    OUTLINED_FUNCTION_30_2();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_242();

  free(v6);
}

uint64_t Apple_Parsec_Feedback_V2_LookupHintRelevancyFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Feedback_V2_LookupHintRelevancyFeedback(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Feedback_V2_LookupHintRelevancyFeedback.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_228_0(a1);
  *(v1 + 16) = v2;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  *(v1 + 40) = 1;
  *(v1 + 48) = 0;
  *(v1 + 56) = v2;
  v3 = type metadata accessor for Apple_Parsec_Feedback_V2_LookupHintRelevancyFeedback(0);
  OUTLINED_FUNCTION_643_0(v3);
  v4 = OUTLINED_FUNCTION_663_0();
  type metadata accessor for Apple_Parsec_Feedback_V2_Range(v4);
  v5 = OUTLINED_FUNCTION_40_3();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t Apple_Parsec_Feedback_V2_ConnectionInvalidatedFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Feedback_V2_ConnectionInvalidatedFeedback(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B8F773BC@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  v3 = a2(0);
  return OUTLINED_FUNCTION_163_2(v3);
}

uint64_t Apple_Parsec_Feedback_V2_SessionEndFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Feedback_V2_SessionEndFeedback(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Feedback_V2_ClientTimingFeedback.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Apple_Parsec_Feedback_V2_ClientTimingFeedback(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Apple_Parsec_Feedback_V2_ClientTimingFeedback.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_280_1(a1);
  v3 = OUTLINED_FUNCTION_839(v2);
  v4 = type metadata accessor for Apple_Parsec_Feedback_V2_ClientTimingFeedback(v3);
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  return OUTLINED_FUNCTION_694_0(v4);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.feedback.getter()
{
  OUTLINED_FUNCTION_180_3();
  v1 = OUTLINED_FUNCTION_177_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_46_3();
  OUTLINED_FUNCTION_7_22();
  if (v5)
  {
    sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
LABEL_6:
    v7 = OUTLINED_FUNCTION_751();
    v8 = type metadata accessor for Apple_Parsec_Feedback_V2_Feedback(v7);
    return OUTLINED_FUNCTION_163_2(v8);
  }

  OUTLINED_FUNCTION_543();
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1B8FAC5C8();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_115_4();
  OUTLINED_FUNCTION_288();
  return sub_1B8FAC528();
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.feedback.setter()
{
  sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
  OUTLINED_FUNCTION_115_4();
  OUTLINED_FUNCTION_432();
  sub_1B8FAC528();
  OUTLINED_FUNCTION_39_3();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_125_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Apple_Parsec_Feedback_V2_FeedbackPayload.feedback.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_25_4();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_85(v7);
  type metadata accessor for Apple_Parsec_Feedback_V2_Feedback(v8);
  OUTLINED_FUNCTION_126_1();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_175_2(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_60_3(v12);
  OUTLINED_FUNCTION_3_24();
  if (v13)
  {
    v14 = sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    OUTLINED_FUNCTION_177_1();
    if (!swift_getEnumCaseMultiPayload())
    {
      OUTLINED_FUNCTION_115_4();
      OUTLINED_FUNCTION_128();
      sub_1B8FAC528();
      goto LABEL_7;
    }

    v14 = sub_1B8FAC5C8();
  }

  OUTLINED_FUNCTION_698_0(v14);
LABEL_7:
  OUTLINED_FUNCTION_242();
}

void sub_1B8F778B8()
{
  OUTLINED_FUNCTION_128_3();
  if (v5)
  {
    OUTLINED_FUNCTION_461();
    sub_1B8FAC578();
    sub_1B8D9207C(v4, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_115_4();
    OUTLINED_FUNCTION_439_0();
    sub_1B8FAC528();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_1();
    OUTLINED_FUNCTION_114_6();
    sub_1B8FAC5C8();
  }

  else
  {
    sub_1B8D9207C(v4, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_115_4();
    OUTLINED_FUNCTION_1_0();
    sub_1B8FAC528();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_1();
  }

  free(v3);
  free(v2);
  free(v1);

  free(v0);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.searchViewAppearFeedback.getter()
{
  OUTLINED_FUNCTION_180_3();
  v2 = OUTLINED_FUNCTION_177_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_46_3();
  OUTLINED_FUNCTION_7_22();
  if (v6)
  {
    sub_1B8D9207C(v1, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_113_3();
      OUTLINED_FUNCTION_288();
      return sub_1B8FAC528();
    }

    sub_1B8FAC5C8();
  }

  return Apple_Parsec_Feedback_V2_SearchViewAppearFeedback.init()(v0);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.searchViewAppearFeedback.setter()
{
  sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
  OUTLINED_FUNCTION_113_3();
  OUTLINED_FUNCTION_432();
  sub_1B8FAC528();
  OUTLINED_FUNCTION_39_3();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_125_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Apple_Parsec_Feedback_V2_FeedbackPayload.searchViewAppearFeedback.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_25_4();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_85(v7);
  type metadata accessor for Apple_Parsec_Feedback_V2_SearchViewAppearFeedback(v8);
  OUTLINED_FUNCTION_126_1();
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_175_2(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_60_3(v13);
  OUTLINED_FUNCTION_3_24();
  if (v14)
  {
    sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
LABEL_7:
    OUTLINED_FUNCTION_350_0();
    *(v10 + 17) = 0;
    *(v10 + 19) = 0;
    OUTLINED_FUNCTION_842();
    *(v10 + 40) = 0;
    *(v10 + 48) = v16;
    *(v10 + 56) = 0;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    sub_1B8FAC5C8();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_113_3();
  OUTLINED_FUNCTION_128();
  sub_1B8FAC528();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

void sub_1B8F77C2C()
{
  OUTLINED_FUNCTION_128_3();
  if (v5)
  {
    OUTLINED_FUNCTION_461();
    sub_1B8FAC578();
    sub_1B8D9207C(v4, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_113_3();
    OUTLINED_FUNCTION_439_0();
    sub_1B8FAC528();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_1();
    OUTLINED_FUNCTION_222();
    sub_1B8FAC5C8();
  }

  else
  {
    sub_1B8D9207C(v4, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_113_3();
    OUTLINED_FUNCTION_1_0();
    sub_1B8FAC528();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_1();
  }

  free(v3);
  free(v2);
  free(v1);

  free(v0);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.searchViewDisappearFeedback.getter()
{
  OUTLINED_FUNCTION_180_3();
  v1 = OUTLINED_FUNCTION_177_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_46_3();
  OUTLINED_FUNCTION_7_22();
  if (v5)
  {
    sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      OUTLINED_FUNCTION_112_4();
      OUTLINED_FUNCTION_288();
      return sub_1B8FAC528();
    }

    sub_1B8FAC5C8();
  }

  v8 = OUTLINED_FUNCTION_369_0();
  type metadata accessor for Apple_Parsec_Feedback_V2_SearchViewDisappearFeedback(v8);
  return OUTLINED_FUNCTION_279();
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.searchViewDisappearFeedback.setter()
{
  sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
  OUTLINED_FUNCTION_112_4();
  OUTLINED_FUNCTION_432();
  sub_1B8FAC528();
  OUTLINED_FUNCTION_39_3();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_125_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Apple_Parsec_Feedback_V2_FeedbackPayload.searchViewDisappearFeedback.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_25_4();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_85(v7);
  type metadata accessor for Apple_Parsec_Feedback_V2_SearchViewDisappearFeedback(v8);
  OUTLINED_FUNCTION_126_1();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_175_2(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_60_3(v12);
  OUTLINED_FUNCTION_3_24();
  if (v13)
  {
    sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
LABEL_7:
    OUTLINED_FUNCTION_350_0();
    OUTLINED_FUNCTION_689_0(v15);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 2)
  {
    sub_1B8FAC5C8();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_112_4();
  OUTLINED_FUNCTION_128();
  sub_1B8FAC528();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

void sub_1B8F77F94()
{
  OUTLINED_FUNCTION_128_3();
  if (v5)
  {
    OUTLINED_FUNCTION_461();
    sub_1B8FAC578();
    sub_1B8D9207C(v4, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_112_4();
    OUTLINED_FUNCTION_439_0();
    sub_1B8FAC528();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_1();
    OUTLINED_FUNCTION_356_0();
  }

  else
  {
    sub_1B8D9207C(v4, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_112_4();
    OUTLINED_FUNCTION_1_0();
    sub_1B8FAC528();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_1();
  }

  free(v3);
  free(v2);
  free(v1);

  free(v0);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.rankingFeedback.getter()
{
  OUTLINED_FUNCTION_180_3();
  v2 = OUTLINED_FUNCTION_177_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_46_3();
  OUTLINED_FUNCTION_7_22();
  if (v6)
  {
    sub_1B8D9207C(v1, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 3)
    {
      OUTLINED_FUNCTION_110_3();
      OUTLINED_FUNCTION_288();
      return sub_1B8FAC528();
    }

    sub_1B8FAC5C8();
  }

  v9 = MEMORY[0x1E69E7CC0];
  *v0 = 0;
  *(v0 + 8) = 0;
  *(v0 + 16) = v9;
  *(v0 + 24) = v9;
  *(v0 + 32) = 0;
  *(v0 + 40) = 1;
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_RankingFeedback(0);
  return OUTLINED_FUNCTION_694_0(v10);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.rankingFeedback.setter()
{
  sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
  OUTLINED_FUNCTION_110_3();
  OUTLINED_FUNCTION_432();
  sub_1B8FAC528();
  OUTLINED_FUNCTION_39_3();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_125_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Apple_Parsec_Feedback_V2_FeedbackPayload.rankingFeedback.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_25_4();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_85(v7);
  type metadata accessor for Apple_Parsec_Feedback_V2_RankingFeedback(v8);
  OUTLINED_FUNCTION_126_1();
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_175_2(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_60_3(v13);
  OUTLINED_FUNCTION_3_24();
  if (v14)
  {
    sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
LABEL_7:
    *v10 = 0;
    *(v10 + 8) = 0;
    v16 = MEMORY[0x1E69E7CC0];
    *(v10 + 16) = MEMORY[0x1E69E7CC0];
    *(v10 + 24) = v16;
    *(v10 + 32) = 0;
    *(v10 + 40) = 1;
    OUTLINED_FUNCTION_676_0();
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 3)
  {
    sub_1B8FAC5C8();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_110_3();
  OUTLINED_FUNCTION_128();
  sub_1B8FAC528();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

void sub_1B8F78320()
{
  OUTLINED_FUNCTION_128_3();
  if (v5)
  {
    OUTLINED_FUNCTION_461();
    sub_1B8FAC578();
    sub_1B8D9207C(v4, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_110_3();
    OUTLINED_FUNCTION_439_0();
    sub_1B8FAC528();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_1();
    OUTLINED_FUNCTION_222();
    sub_1B8FAC5C8();
  }

  else
  {
    sub_1B8D9207C(v4, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_110_3();
    OUTLINED_FUNCTION_1_0();
    sub_1B8FAC528();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_1();
  }

  free(v3);
  free(v2);
  free(v1);

  free(v0);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.sectionRankingFeedback.getter()
{
  OUTLINED_FUNCTION_180_3();
  v2 = OUTLINED_FUNCTION_177_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_46_3();
  OUTLINED_FUNCTION_7_22();
  if (v6)
  {
    sub_1B8D9207C(v1, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 4)
    {
      OUTLINED_FUNCTION_109_1();
      OUTLINED_FUNCTION_288();
      return sub_1B8FAC528();
    }

    sub_1B8FAC5C8();
  }

  v9 = MEMORY[0x1E69E7CC0];
  *v0 = 0;
  *(v0 + 8) = v9;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_SectionRankingFeedback(0);
  OUTLINED_FUNCTION_690_0(v10);
  type metadata accessor for Apple_Parsec_Feedback_V2_ResultSectionForFeedback(0);
  v11 = OUTLINED_FUNCTION_40_3();
  return __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.sectionRankingFeedback.setter()
{
  sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
  OUTLINED_FUNCTION_109_1();
  OUTLINED_FUNCTION_432();
  sub_1B8FAC528();
  OUTLINED_FUNCTION_39_3();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_125_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Apple_Parsec_Feedback_V2_FeedbackPayload.sectionRankingFeedback.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_25_4();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_85(v7);
  type metadata accessor for Apple_Parsec_Feedback_V2_SectionRankingFeedback(v8);
  OUTLINED_FUNCTION_126_1();
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_175_2(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_60_3(v13);
  OUTLINED_FUNCTION_3_24();
  if (v14)
  {
    v15 = sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
LABEL_7:
    v17 = MEMORY[0x1E69E7CC0];
    *v10 = 0;
    *(v10 + 8) = v17;
    *(v10 + 16) = 0;
    *(v10 + 24) = 0;
    OUTLINED_FUNCTION_824(v15);
    type metadata accessor for Apple_Parsec_Feedback_V2_ResultSectionForFeedback(0);
    v18 = OUTLINED_FUNCTION_161_3();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 4)
  {
    v15 = sub_1B8FAC5C8();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_109_1();
  OUTLINED_FUNCTION_128();
  sub_1B8FAC528();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

void sub_1B8F786D8()
{
  OUTLINED_FUNCTION_128_3();
  if (v5)
  {
    OUTLINED_FUNCTION_461();
    sub_1B8FAC578();
    sub_1B8D9207C(v4, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_109_1();
    OUTLINED_FUNCTION_439_0();
    sub_1B8FAC528();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_1();
    OUTLINED_FUNCTION_222();
    sub_1B8FAC5C8();
  }

  else
  {
    sub_1B8D9207C(v4, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_109_1();
    OUTLINED_FUNCTION_1_0();
    sub_1B8FAC528();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_1();
  }

  free(v3);
  free(v2);
  free(v1);

  free(v0);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.resultRankingFeedback.getter()
{
  OUTLINED_FUNCTION_180_3();
  v2 = OUTLINED_FUNCTION_177_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_46_3();
  OUTLINED_FUNCTION_7_22();
  if (v6)
  {
    sub_1B8D9207C(v1, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 5)
    {
      OUTLINED_FUNCTION_108_4();
      OUTLINED_FUNCTION_288();
      return sub_1B8FAC528();
    }

    sub_1B8FAC5C8();
  }

  v9 = MEMORY[0x1E69E7CC0];
  *v0 = 0;
  *(v0 + 8) = v9;
  *(v0 + 16) = v9;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_ResultRankingFeedback(0);
  OUTLINED_FUNCTION_643_0(v10);
  v11 = OUTLINED_FUNCTION_663_0();
  type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(v11);
  v12 = OUTLINED_FUNCTION_40_3();
  return __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.resultRankingFeedback.setter()
{
  sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
  OUTLINED_FUNCTION_108_4();
  OUTLINED_FUNCTION_432();
  sub_1B8FAC528();
  OUTLINED_FUNCTION_39_3();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_125_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Apple_Parsec_Feedback_V2_FeedbackPayload.resultRankingFeedback.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_25_4();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_85(v7);
  type metadata accessor for Apple_Parsec_Feedback_V2_ResultRankingFeedback(v8);
  OUTLINED_FUNCTION_126_1();
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_175_2(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_60_3(v13);
  OUTLINED_FUNCTION_3_24();
  if (v14)
  {
    sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
LABEL_7:
    v16 = MEMORY[0x1E69E7CC0];
    *v10 = 0;
    *(v10 + 8) = v16;
    *(v10 + 16) = v16;
    *(v10 + 24) = 0;
    *(v10 + 32) = 0;
    OUTLINED_FUNCTION_676_0();
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v17 = OUTLINED_FUNCTION_837();
    type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(v17);
    v18 = OUTLINED_FUNCTION_161_3();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 5)
  {
    sub_1B8FAC5C8();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_108_4();
  OUTLINED_FUNCTION_128();
  sub_1B8FAC528();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

void sub_1B8F78A90()
{
  OUTLINED_FUNCTION_128_3();
  if (v5)
  {
    OUTLINED_FUNCTION_461();
    sub_1B8FAC578();
    sub_1B8D9207C(v4, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_108_4();
    OUTLINED_FUNCTION_439_0();
    sub_1B8FAC528();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_1();
    OUTLINED_FUNCTION_222();
    sub_1B8FAC5C8();
  }

  else
  {
    sub_1B8D9207C(v4, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_108_4();
    OUTLINED_FUNCTION_1_0();
    sub_1B8FAC528();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_1();
  }

  free(v3);
  free(v2);
  free(v1);

  free(v0);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.resultFeedback.getter()
{
  OUTLINED_FUNCTION_180_3();
  v1 = OUTLINED_FUNCTION_177_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_46_3();
  OUTLINED_FUNCTION_7_22();
  if (v5)
  {
    sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 6)
    {
      OUTLINED_FUNCTION_107_3();
      OUTLINED_FUNCTION_288();
      return sub_1B8FAC528();
    }

    sub_1B8FAC5C8();
  }

  v8 = OUTLINED_FUNCTION_751();
  v9 = type metadata accessor for Apple_Parsec_Feedback_V2_ResultFeedback(v8);
  OUTLINED_FUNCTION_163_2(v9);
  type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(0);
  v10 = OUTLINED_FUNCTION_40_3();
  return __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.resultFeedback.setter()
{
  sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
  OUTLINED_FUNCTION_107_3();
  OUTLINED_FUNCTION_432();
  sub_1B8FAC528();
  OUTLINED_FUNCTION_39_3();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_125_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Apple_Parsec_Feedback_V2_FeedbackPayload.resultFeedback.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_25_4();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_85(v7);
  type metadata accessor for Apple_Parsec_Feedback_V2_ResultFeedback(v8);
  OUTLINED_FUNCTION_126_1();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_175_2(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_60_3(v12);
  OUTLINED_FUNCTION_3_24();
  if (v13)
  {
    v14 = sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
LABEL_7:
    OUTLINED_FUNCTION_698_0(v14);
    type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(0);
    v16 = OUTLINED_FUNCTION_161_3();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 6)
  {
    v14 = sub_1B8FAC5C8();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_107_3();
  OUTLINED_FUNCTION_128();
  sub_1B8FAC528();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

void sub_1B8F78E20()
{
  OUTLINED_FUNCTION_128_3();
  if (v5)
  {
    OUTLINED_FUNCTION_461();
    sub_1B8FAC578();
    sub_1B8D9207C(v4, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_107_3();
    OUTLINED_FUNCTION_439_0();
    sub_1B8FAC528();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_1();
    OUTLINED_FUNCTION_222();
    sub_1B8FAC5C8();
  }

  else
  {
    sub_1B8D9207C(v4, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_107_3();
    OUTLINED_FUNCTION_1_0();
    sub_1B8FAC528();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_1();
  }

  free(v3);
  free(v2);
  free(v1);

  free(v0);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.resultEngagementFeedback.getter()
{
  OUTLINED_FUNCTION_180_3();
  v2 = OUTLINED_FUNCTION_177_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_46_3();
  OUTLINED_FUNCTION_7_22();
  if (v6)
  {
    sub_1B8D9207C(v1, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 7)
    {
      OUTLINED_FUNCTION_106_4();
      OUTLINED_FUNCTION_288();
      return sub_1B8FAC528();
    }

    sub_1B8FAC5C8();
  }

  return Apple_Parsec_Feedback_V2_ResultEngagementFeedback.init()(v0);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.resultEngagementFeedback.setter()
{
  sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
  OUTLINED_FUNCTION_106_4();
  OUTLINED_FUNCTION_432();
  sub_1B8FAC528();
  OUTLINED_FUNCTION_39_3();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_125_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Apple_Parsec_Feedback_V2_FeedbackPayload.resultEngagementFeedback.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_25_4();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_85(v7);
  type metadata accessor for Apple_Parsec_Feedback_V2_ResultEngagementFeedback(v8);
  OUTLINED_FUNCTION_126_1();
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_175_2(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_60_3(v13);
  OUTLINED_FUNCTION_3_24();
  if (v14)
  {
    sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
LABEL_7:
    *v10 = 0;
    *(v10 + 8) = 0;
    *(v10 + 16) = 0;
    *(v10 + 24) = 1;
    *(v10 + 32) = 0;
    *(v10 + 40) = 1;
    *(v10 + 48) = 0;
    *(v10 + 56) = 1;
    *(v10 + 64) = 0;
    *(v10 + 72) = 0xE000000000000000;
    *(v10 + 80) = 0;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(0);
    v16 = OUTLINED_FUNCTION_161_3();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 7)
  {
    sub_1B8FAC5C8();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_106_4();
  OUTLINED_FUNCTION_128();
  sub_1B8FAC528();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

void sub_1B8F791CC()
{
  OUTLINED_FUNCTION_128_3();
  if (v5)
  {
    OUTLINED_FUNCTION_461();
    sub_1B8FAC578();
    sub_1B8D9207C(v4, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_106_4();
    OUTLINED_FUNCTION_439_0();
    sub_1B8FAC528();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_1();
    OUTLINED_FUNCTION_222();
    sub_1B8FAC5C8();
  }

  else
  {
    sub_1B8D9207C(v4, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_106_4();
    OUTLINED_FUNCTION_1_0();
    sub_1B8FAC528();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_1();
  }

  free(v3);
  free(v2);
  free(v1);

  free(v0);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.visibleResultsFeedback.getter()
{
  OUTLINED_FUNCTION_180_3();
  v2 = OUTLINED_FUNCTION_177_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_46_3();
  OUTLINED_FUNCTION_7_22();
  if (v6)
  {
    sub_1B8D9207C(v1, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 8)
    {
      OUTLINED_FUNCTION_105_4();
      OUTLINED_FUNCTION_288();
      return sub_1B8FAC528();
    }

    sub_1B8FAC5C8();
  }

  OUTLINED_FUNCTION_840(MEMORY[0x1E69E7CC0]);
  *(v0 + 24) = 1;
  *(v0 + 32) = v9;
  *(v0 + 40) = v9;
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_VisibleResultsFeedback(0);
  OUTLINED_FUNCTION_643_0(v10);
  v11 = OUTLINED_FUNCTION_663_0();
  type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(v11);
  v12 = OUTLINED_FUNCTION_40_3();
  return __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.visibleResultsFeedback.setter()
{
  sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
  OUTLINED_FUNCTION_105_4();
  OUTLINED_FUNCTION_432();
  sub_1B8FAC528();
  OUTLINED_FUNCTION_39_3();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_125_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Apple_Parsec_Feedback_V2_FeedbackPayload.visibleResultsFeedback.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_25_4();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_85(v7);
  type metadata accessor for Apple_Parsec_Feedback_V2_VisibleResultsFeedback(v8);
  OUTLINED_FUNCTION_126_1();
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_175_2(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_60_3(v13);
  OUTLINED_FUNCTION_3_24();
  if (v14)
  {
    sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
LABEL_7:
    v16 = MEMORY[0x1E69E7CC0];
    *v10 = 0;
    *(v10 + 8) = v16;
    *(v10 + 16) = 0;
    *(v10 + 24) = 1;
    *(v10 + 32) = v16;
    *(v10 + 40) = v16;
    OUTLINED_FUNCTION_676_0();
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v17 = OUTLINED_FUNCTION_837();
    type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(v17);
    v18 = OUTLINED_FUNCTION_161_3();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 8)
  {
    sub_1B8FAC5C8();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_105_4();
  OUTLINED_FUNCTION_128();
  sub_1B8FAC528();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

void sub_1B8F79588()
{
  OUTLINED_FUNCTION_128_3();
  if (v5)
  {
    OUTLINED_FUNCTION_461();
    sub_1B8FAC578();
    sub_1B8D9207C(v4, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_105_4();
    OUTLINED_FUNCTION_439_0();
    sub_1B8FAC528();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_1();
    OUTLINED_FUNCTION_222();
    sub_1B8FAC5C8();
  }

  else
  {
    sub_1B8D9207C(v4, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_105_4();
    OUTLINED_FUNCTION_1_0();
    sub_1B8FAC528();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_1();
  }

  free(v3);
  free(v2);
  free(v1);

  free(v0);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.cardSectionFeedback.getter()
{
  OUTLINED_FUNCTION_180_3();
  v1 = OUTLINED_FUNCTION_177_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_46_3();
  OUTLINED_FUNCTION_7_22();
  if (v5)
  {
    sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 9)
    {
      OUTLINED_FUNCTION_104_1();
      OUTLINED_FUNCTION_288();
      return sub_1B8FAC528();
    }

    sub_1B8FAC5C8();
  }

  OUTLINED_FUNCTION_427_0();
  v9 = OUTLINED_FUNCTION_839(v8);
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionFeedback(v9);
  OUTLINED_FUNCTION_543_0(v10);
  v11 = OUTLINED_FUNCTION_661_0();
  type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionForFeedback(v11);
  v12 = OUTLINED_FUNCTION_40_3();
  return __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.cardSectionFeedback.setter()
{
  sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
  OUTLINED_FUNCTION_104_1();
  OUTLINED_FUNCTION_432();
  sub_1B8FAC528();
  OUTLINED_FUNCTION_39_3();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_125_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Apple_Parsec_Feedback_V2_FeedbackPayload.cardSectionFeedback.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_25_4();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_85(v7);
  type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionFeedback(v8);
  OUTLINED_FUNCTION_126_1();
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_175_2(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_60_3(v13);
  OUTLINED_FUNCTION_3_24();
  if (v14)
  {
    sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
LABEL_7:
    OUTLINED_FUNCTION_424_0();
    *(v10 + 32) = v16;
    OUTLINED_FUNCTION_745(v17);
    v18 = OUTLINED_FUNCTION_836();
    type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionForFeedback(v18);
    v19 = OUTLINED_FUNCTION_161_3();
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 9)
  {
    sub_1B8FAC5C8();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_104_1();
  OUTLINED_FUNCTION_128();
  sub_1B8FAC528();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

void sub_1B8F79918()
{
  OUTLINED_FUNCTION_128_3();
  if (v5)
  {
    OUTLINED_FUNCTION_461();
    sub_1B8FAC578();
    sub_1B8D9207C(v4, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_104_1();
    OUTLINED_FUNCTION_439_0();
    sub_1B8FAC528();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_1();
    OUTLINED_FUNCTION_222();
    sub_1B8FAC5C8();
  }

  else
  {
    sub_1B8D9207C(v4, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_104_1();
    OUTLINED_FUNCTION_1_0();
    sub_1B8FAC528();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_1();
  }

  free(v3);
  free(v2);
  free(v1);

  free(v0);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.mapsCardSectionEngagementFeedback.getter()
{
  OUTLINED_FUNCTION_180_3();
  v2 = OUTLINED_FUNCTION_177_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_46_3();
  OUTLINED_FUNCTION_7_22();
  if (v6)
  {
    sub_1B8D9207C(v1, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 10)
    {
      OUTLINED_FUNCTION_103_2();
      OUTLINED_FUNCTION_288();
      return sub_1B8FAC528();
    }

    sub_1B8FAC5C8();
  }

  return Apple_Parsec_Feedback_V2_MapsCardSectionEngagementFeedback.init()(v0);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.mapsCardSectionEngagementFeedback.setter()
{
  sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
  OUTLINED_FUNCTION_103_2();
  OUTLINED_FUNCTION_432();
  sub_1B8FAC528();
  OUTLINED_FUNCTION_39_3();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_125_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Apple_Parsec_Feedback_V2_FeedbackPayload.mapsCardSectionEngagementFeedback.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_25_4();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_85(v7);
  type metadata accessor for Apple_Parsec_Feedback_V2_MapsCardSectionEngagementFeedback(v8);
  OUTLINED_FUNCTION_126_1();
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_175_2(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_60_3(v13);
  OUTLINED_FUNCTION_3_24();
  if (v14)
  {
    sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
LABEL_7:
    OUTLINED_FUNCTION_350_0();
    *(v10 + 24) = 0;
    *(v10 + 32) = v16;
    *(v10 + 40) = 0;
    *(v10 + 48) = v16;
    OUTLINED_FUNCTION_862(0xE000000000000000);
    type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(0);
    v17 = OUTLINED_FUNCTION_161_3();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 10)
  {
    sub_1B8FAC5C8();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_103_2();
  OUTLINED_FUNCTION_128();
  sub_1B8FAC528();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

void sub_1B8F79CA4()
{
  OUTLINED_FUNCTION_128_3();
  if (v5)
  {
    OUTLINED_FUNCTION_461();
    sub_1B8FAC578();
    sub_1B8D9207C(v4, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_103_2();
    OUTLINED_FUNCTION_439_0();
    sub_1B8FAC528();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_1();
    OUTLINED_FUNCTION_222();
    sub_1B8FAC5C8();
  }

  else
  {
    sub_1B8D9207C(v4, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_103_2();
    OUTLINED_FUNCTION_1_0();
    sub_1B8FAC528();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_1();
  }

  free(v3);
  free(v2);
  free(v1);

  free(v0);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.storeCardSectionEngagementFeedback.getter()
{
  OUTLINED_FUNCTION_180_3();
  v2 = OUTLINED_FUNCTION_177_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_46_3();
  OUTLINED_FUNCTION_7_22();
  if (v6)
  {
    sub_1B8D9207C(v1, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 11)
    {
      OUTLINED_FUNCTION_102_4();
      OUTLINED_FUNCTION_288();
      return sub_1B8FAC528();
    }

    sub_1B8FAC5C8();
  }

  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v9 = *(type metadata accessor for Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedback(0) + 20);
  if (qword_1EBAB6CB8 != -1)
  {
    OUTLINED_FUNCTION_605_0(&qword_1EBAB6CB8);
  }

  *(v0 + v9) = qword_1EBAC01C8;
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.storeCardSectionEngagementFeedback.setter()
{
  sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
  OUTLINED_FUNCTION_102_4();
  OUTLINED_FUNCTION_432();
  sub_1B8FAC528();
  OUTLINED_FUNCTION_39_3();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_125_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Apple_Parsec_Feedback_V2_FeedbackPayload.storeCardSectionEngagementFeedback.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_25_4();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_85(v8);
  type metadata accessor for Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedback(v9);
  OUTLINED_FUNCTION_126_1();
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_175_2(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_60_3(v14);
  OUTLINED_FUNCTION_3_24();
  if (v15)
  {
    sub_1B8D9207C(v1, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    OUTLINED_FUNCTION_177_1();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 11)
    {
      OUTLINED_FUNCTION_102_4();
      OUTLINED_FUNCTION_128();
      sub_1B8FAC528();
      goto LABEL_10;
    }

    sub_1B8FAC5C8();
  }

  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v17 = *(v0 + 20);
  if (qword_1EBAB6CB8 != -1)
  {
    OUTLINED_FUNCTION_605_0(&qword_1EBAB6CB8);
  }

  *(v11 + v17) = qword_1EBAC01C8;

LABEL_10:
  OUTLINED_FUNCTION_242();
}

void sub_1B8F7A078()
{
  OUTLINED_FUNCTION_128_3();
  if (v5)
  {
    OUTLINED_FUNCTION_461();
    sub_1B8FAC578();
    sub_1B8D9207C(v4, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_102_4();
    OUTLINED_FUNCTION_439_0();
    sub_1B8FAC528();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_1();
    OUTLINED_FUNCTION_222();
    sub_1B8FAC5C8();
  }

  else
  {
    sub_1B8D9207C(v4, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_102_4();
    OUTLINED_FUNCTION_1_0();
    sub_1B8FAC528();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_1();
  }

  free(v3);
  free(v2);
  free(v1);

  free(v0);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.startSearchFeedback.getter()
{
  OUTLINED_FUNCTION_180_3();
  v2 = OUTLINED_FUNCTION_177_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_46_3();
  OUTLINED_FUNCTION_7_22();
  if (v6)
  {
    sub_1B8D9207C(v1, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 12)
    {
      OUTLINED_FUNCTION_101_3();
      OUTLINED_FUNCTION_288();
      return sub_1B8FAC528();
    }

    sub_1B8FAC5C8();
  }

  OUTLINED_FUNCTION_427_0();
  *(v0 + 32) = v9;
  *(v0 + 40) = 0;
  *(v0 + 48) = 1;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  *(v0 + 72) = 1;
  started = type metadata accessor for Apple_Parsec_Feedback_V2_StartSearchFeedback(0);
  return OUTLINED_FUNCTION_723_0(started);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.startSearchFeedback.setter()
{
  sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
  OUTLINED_FUNCTION_101_3();
  OUTLINED_FUNCTION_432();
  sub_1B8FAC528();
  OUTLINED_FUNCTION_39_3();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_125_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Apple_Parsec_Feedback_V2_FeedbackPayload.startSearchFeedback.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_25_4();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_85(v7);
  type metadata accessor for Apple_Parsec_Feedback_V2_StartSearchFeedback(v8);
  OUTLINED_FUNCTION_126_1();
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_175_2(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_60_3(v13);
  OUTLINED_FUNCTION_3_24();
  if (v14)
  {
    sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
LABEL_7:
    OUTLINED_FUNCTION_424_0();
    *(v10 + 32) = v16;
    *(v10 + 40) = 0;
    *(v10 + 48) = 1;
    *(v10 + 56) = 0;
    *(v10 + 64) = 0;
    *(v10 + 72) = 1;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 12)
  {
    sub_1B8FAC5C8();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_101_3();
  OUTLINED_FUNCTION_128();
  sub_1B8FAC528();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

void sub_1B8F7A414()
{
  OUTLINED_FUNCTION_128_3();
  if (v5)
  {
    OUTLINED_FUNCTION_461();
    sub_1B8FAC578();
    sub_1B8D9207C(v4, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_101_3();
    OUTLINED_FUNCTION_439_0();
    sub_1B8FAC528();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_1();
    OUTLINED_FUNCTION_222();
    sub_1B8FAC5C8();
  }

  else
  {
    sub_1B8D9207C(v4, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_101_3();
    OUTLINED_FUNCTION_1_0();
    sub_1B8FAC528();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_1();
  }

  free(v3);
  free(v2);
  free(v1);

  free(v0);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.endSearchFeedback.getter()
{
  OUTLINED_FUNCTION_180_3();
  v2 = OUTLINED_FUNCTION_177_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_46_3();
  OUTLINED_FUNCTION_7_22();
  if (v6)
  {
    sub_1B8D9207C(v1, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 13)
    {
      OUTLINED_FUNCTION_100_4();
      OUTLINED_FUNCTION_288();
      return sub_1B8FAC528();
    }

    sub_1B8FAC5C8();
  }

  *v0 = 0;
  v0[1] = 0;
  v9 = OUTLINED_FUNCTION_517_0();
  type metadata accessor for Apple_Parsec_Feedback_V2_EndSearchFeedback(v9);
  return OUTLINED_FUNCTION_279();
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.endSearchFeedback.setter()
{
  sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
  OUTLINED_FUNCTION_100_4();
  OUTLINED_FUNCTION_432();
  sub_1B8FAC528();
  OUTLINED_FUNCTION_39_3();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_125_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Apple_Parsec_Feedback_V2_FeedbackPayload.endSearchFeedback.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_25_4();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_85(v7);
  type metadata accessor for Apple_Parsec_Feedback_V2_EndSearchFeedback(v8);
  OUTLINED_FUNCTION_126_1();
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_175_2(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_60_3(v13);
  OUTLINED_FUNCTION_3_24();
  if (v14)
  {
    sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
LABEL_7:
    OUTLINED_FUNCTION_534_0();
    *(v10 + 16) = v16;
    OUTLINED_FUNCTION_689_0(v17);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 13)
  {
    sub_1B8FAC5C8();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_100_4();
  OUTLINED_FUNCTION_128();
  sub_1B8FAC528();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

void sub_1B8F7A784()
{
  OUTLINED_FUNCTION_128_3();
  if (v5)
  {
    OUTLINED_FUNCTION_461();
    sub_1B8FAC578();
    sub_1B8D9207C(v4, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_100_4();
    OUTLINED_FUNCTION_439_0();
    sub_1B8FAC528();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_1();
    OUTLINED_FUNCTION_222();
    sub_1B8FAC5C8();
  }

  else
  {
    sub_1B8D9207C(v4, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_100_4();
    OUTLINED_FUNCTION_1_0();
    sub_1B8FAC528();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_1();
  }

  free(v3);
  free(v2);
  free(v1);

  free(v0);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.startNetworkSearchFeedback.getter()
{
  OUTLINED_FUNCTION_180_3();
  v2 = OUTLINED_FUNCTION_177_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_46_3();
  OUTLINED_FUNCTION_7_22();
  if (v6)
  {
    sub_1B8D9207C(v1, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 14)
    {
      OUTLINED_FUNCTION_99_6();
      OUTLINED_FUNCTION_288();
      return sub_1B8FAC528();
    }

    sub_1B8FAC5C8();
  }

  return Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback.init()(v0);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.startNetworkSearchFeedback.setter()
{
  sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
  OUTLINED_FUNCTION_99_6();
  OUTLINED_FUNCTION_432();
  sub_1B8FAC528();
  OUTLINED_FUNCTION_39_3();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_125_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Apple_Parsec_Feedback_V2_FeedbackPayload.startNetworkSearchFeedback.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_25_4();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_85(v7);
  type metadata accessor for Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback(v8);
  OUTLINED_FUNCTION_126_1();
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_175_2(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_60_3(v13);
  OUTLINED_FUNCTION_3_24();
  if (v14)
  {
    sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
LABEL_7:
    *v10 = 0;
    *(v10 + 8) = 0;
    *(v10 + 16) = 0xE000000000000000;
    *(v10 + 24) = 0;
    *(v10 + 32) = 0xE000000000000000;
    *(v10 + 40) = 0;
    *(v10 + 48) = 0;
    *(v10 + 56) = 0xE000000000000000;
    *(v10 + 64) = sub_1B964C7B0();
    *(v10 + 72) = 0;
    *(v10 + 80) = 1;
    *(v10 + 88) = 0;
    *(v10 + 96) = -2;
    *(v10 + 104) = xmmword_1B9652FE0;
    *(v10 + 120) = 0;
    *(v10 + 128) = 0xE000000000000000;
    *(v10 + 136) = 0;
    *(v10 + 144) = 0xE000000000000000;
    *(v10 + 152) = 0;
    *(v10 + 160) = 1;
    *(v10 + 168) = 0;
    *(v10 + 176) = 0;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 14)
  {
    sub_1B8FAC5C8();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_99_6();
  OUTLINED_FUNCTION_128();
  sub_1B8FAC528();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

void sub_1B8F7AB58()
{
  OUTLINED_FUNCTION_128_3();
  if (v5)
  {
    OUTLINED_FUNCTION_461();
    sub_1B8FAC578();
    sub_1B8D9207C(v4, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_99_6();
    OUTLINED_FUNCTION_439_0();
    sub_1B8FAC528();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_1();
    OUTLINED_FUNCTION_222();
    sub_1B8FAC5C8();
  }

  else
  {
    sub_1B8D9207C(v4, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_99_6();
    OUTLINED_FUNCTION_1_0();
    sub_1B8FAC528();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_1();
  }

  free(v3);
  free(v2);
  free(v1);

  free(v0);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.endNetworkSearchFeedback.getter()
{
  OUTLINED_FUNCTION_180_3();
  v2 = OUTLINED_FUNCTION_177_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_46_3();
  OUTLINED_FUNCTION_7_22();
  if (v6)
  {
    sub_1B8D9207C(v1, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 15)
    {
      OUTLINED_FUNCTION_98_5();
      OUTLINED_FUNCTION_288();
      return sub_1B8FAC528();
    }

    sub_1B8FAC5C8();
  }

  return Apple_Parsec_Feedback_V2_EndNetworkSearchFeedback.init()(v0);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.endNetworkSearchFeedback.setter()
{
  sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
  OUTLINED_FUNCTION_98_5();
  OUTLINED_FUNCTION_432();
  sub_1B8FAC528();
  OUTLINED_FUNCTION_39_3();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_125_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Apple_Parsec_Feedback_V2_FeedbackPayload.endNetworkSearchFeedback.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_25_4();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_85(v7);
  type metadata accessor for Apple_Parsec_Feedback_V2_EndNetworkSearchFeedback(v8);
  OUTLINED_FUNCTION_126_1();
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_175_2(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_60_3(v13);
  OUTLINED_FUNCTION_3_24();
  if (v14)
  {
    sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
LABEL_7:
    *v10 = 0;
    *(v10 + 8) = 0;
    *(v10 + 16) = 0;
    OUTLINED_FUNCTION_842();
    *(v10 + 40) = 0;
    *(v10 + 48) = v16;
    *(v10 + 56) = 0;
    *(v10 + 64) = v16;
    *(v10 + 72) = 0;
    *(v10 + 80) = 0;
    *(v10 + 88) = v16;
    *(v10 + 96) = 0;
    *(v10 + 104) = 1;
    *(v10 + 112) = 0;
    *(v10 + 120) = 0;
    *(v10 + 128) = 0;
    *(v10 + 136) = v16;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData(0);
    v17 = OUTLINED_FUNCTION_161_3();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 15)
  {
    sub_1B8FAC5C8();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_98_5();
  OUTLINED_FUNCTION_128();
  sub_1B8FAC528();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

void sub_1B8F7AF00()
{
  OUTLINED_FUNCTION_128_3();
  if (v5)
  {
    OUTLINED_FUNCTION_461();
    sub_1B8FAC578();
    sub_1B8D9207C(v4, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_98_5();
    OUTLINED_FUNCTION_439_0();
    sub_1B8FAC528();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_1();
    OUTLINED_FUNCTION_222();
    sub_1B8FAC5C8();
  }

  else
  {
    sub_1B8D9207C(v4, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_98_5();
    OUTLINED_FUNCTION_1_0();
    sub_1B8FAC528();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_1();
  }

  free(v3);
  free(v2);
  free(v1);

  free(v0);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.startLocalSearchFeedback.getter()
{
  OUTLINED_FUNCTION_180_3();
  v2 = OUTLINED_FUNCTION_177_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_46_3();
  OUTLINED_FUNCTION_7_22();
  if (v6)
  {
    sub_1B8D9207C(v1, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 16)
    {
      OUTLINED_FUNCTION_97_4();
      OUTLINED_FUNCTION_288();
      return sub_1B8FAC528();
    }

    sub_1B8FAC5C8();
  }

  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v9 = *(type metadata accessor for Apple_Parsec_Feedback_V2_StartLocalSearchFeedback(0) + 20);
  if (qword_1EBAB6CF8 != -1)
  {
    OUTLINED_FUNCTION_604_0(&qword_1EBAB6CF8);
  }

  *(v0 + v9) = qword_1EBAC0278;
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.startLocalSearchFeedback.setter()
{
  sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
  OUTLINED_FUNCTION_97_4();
  OUTLINED_FUNCTION_432();
  sub_1B8FAC528();
  OUTLINED_FUNCTION_39_3();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_125_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Apple_Parsec_Feedback_V2_FeedbackPayload.startLocalSearchFeedback.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_25_4();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_85(v8);
  type metadata accessor for Apple_Parsec_Feedback_V2_StartLocalSearchFeedback(v9);
  OUTLINED_FUNCTION_126_1();
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_175_2(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_60_3(v14);
  OUTLINED_FUNCTION_3_24();
  if (v15)
  {
    sub_1B8D9207C(v1, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    OUTLINED_FUNCTION_177_1();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 16)
    {
      OUTLINED_FUNCTION_97_4();
      OUTLINED_FUNCTION_128();
      sub_1B8FAC528();
      goto LABEL_10;
    }

    sub_1B8FAC5C8();
  }

  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v17 = *(v0 + 20);
  if (qword_1EBAB6CF8 != -1)
  {
    OUTLINED_FUNCTION_604_0(&qword_1EBAB6CF8);
  }

  *(v11 + v17) = qword_1EBAC0278;

LABEL_10:
  OUTLINED_FUNCTION_242();
}

void sub_1B8F7B2D4()
{
  OUTLINED_FUNCTION_128_3();
  if (v5)
  {
    OUTLINED_FUNCTION_461();
    sub_1B8FAC578();
    sub_1B8D9207C(v4, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_97_4();
    OUTLINED_FUNCTION_439_0();
    sub_1B8FAC528();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_1();
    OUTLINED_FUNCTION_222();
    sub_1B8FAC5C8();
  }

  else
  {
    sub_1B8D9207C(v4, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_97_4();
    OUTLINED_FUNCTION_1_0();
    sub_1B8FAC528();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_1();
  }

  free(v3);
  free(v2);
  free(v1);

  free(v0);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.endLocalSearchFeedback.getter()
{
  OUTLINED_FUNCTION_180_3();
  v2 = OUTLINED_FUNCTION_177_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_46_3();
  OUTLINED_FUNCTION_7_22();
  if (v6)
  {
    sub_1B8D9207C(v1, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 17)
    {
      OUTLINED_FUNCTION_96_2();
      OUTLINED_FUNCTION_288();
      return sub_1B8FAC528();
    }

    sub_1B8FAC5C8();
  }

  *v0 = 0u;
  *(v0 + 16) = 0xE000000000000000;
  *(v0 + 24) = 0;
  v9 = type metadata accessor for Apple_Parsec_Feedback_V2_EndLocalSearchFeedback(0);
  OUTLINED_FUNCTION_690_0(v9);
  type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  v14 = OUTLINED_FUNCTION_663_0();
  type metadata accessor for Apple_Parsec_Feedback_V2_PhotosRankingInfo(v14);
  v15 = OUTLINED_FUNCTION_40_3();
  return __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.endLocalSearchFeedback.setter()
{
  sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
  OUTLINED_FUNCTION_96_2();
  OUTLINED_FUNCTION_432();
  sub_1B8FAC528();
  OUTLINED_FUNCTION_39_3();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_125_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Apple_Parsec_Feedback_V2_FeedbackPayload.endLocalSearchFeedback.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_25_4();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_85(v7);
  type metadata accessor for Apple_Parsec_Feedback_V2_EndLocalSearchFeedback(v8);
  OUTLINED_FUNCTION_126_1();
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_175_2(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_60_3(v13);
  OUTLINED_FUNCTION_3_24();
  if (v14)
  {
    v15 = sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
LABEL_7:
    *v10 = 0u;
    *(v10 + 16) = 0xE000000000000000;
    *(v10 + 24) = 0;
    OUTLINED_FUNCTION_824(v15);
    type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
    v21 = OUTLINED_FUNCTION_837();
    type metadata accessor for Apple_Parsec_Feedback_V2_PhotosRankingInfo(v21);
    v22 = OUTLINED_FUNCTION_161_3();
    __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 17)
  {
    v15 = sub_1B8FAC5C8();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_96_2();
  OUTLINED_FUNCTION_128();
  sub_1B8FAC528();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

void sub_1B8F7B6BC()
{
  OUTLINED_FUNCTION_128_3();
  if (v5)
  {
    OUTLINED_FUNCTION_461();
    sub_1B8FAC578();
    sub_1B8D9207C(v4, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_96_2();
    OUTLINED_FUNCTION_439_0();
    sub_1B8FAC528();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_1();
    OUTLINED_FUNCTION_222();
    sub_1B8FAC5C8();
  }

  else
  {
    sub_1B8D9207C(v4, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_96_2();
    OUTLINED_FUNCTION_1_0();
    sub_1B8FAC528();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_1();
  }

  free(v3);
  free(v2);
  free(v1);

  free(v0);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.errorFeedback.getter()
{
  OUTLINED_FUNCTION_180_3();
  v2 = OUTLINED_FUNCTION_177_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_46_3();
  OUTLINED_FUNCTION_7_22();
  if (v6)
  {
    sub_1B8D9207C(v1, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 18)
    {
      OUTLINED_FUNCTION_95_3();
      OUTLINED_FUNCTION_288();
      return sub_1B8FAC528();
    }

    sub_1B8FAC5C8();
  }

  *v0 = 0;
  v0[1] = 0;
  v9 = OUTLINED_FUNCTION_517_0();
  type metadata accessor for Apple_Parsec_Feedback_V2_ErrorFeedback(v9);
  OUTLINED_FUNCTION_279();
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_Error(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v10);
  OUTLINED_FUNCTION_83();
  return __swift_storeEnumTagSinglePayload(v14, v15, v16, v10);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.errorFeedback.setter()
{
  sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
  OUTLINED_FUNCTION_95_3();
  OUTLINED_FUNCTION_432();
  sub_1B8FAC528();
  OUTLINED_FUNCTION_39_3();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_125_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Apple_Parsec_Feedback_V2_FeedbackPayload.errorFeedback.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_25_4();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_85(v7);
  type metadata accessor for Apple_Parsec_Feedback_V2_ErrorFeedback(v8);
  OUTLINED_FUNCTION_126_1();
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_175_2(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_60_3(v13);
  OUTLINED_FUNCTION_3_24();
  if (v14)
  {
    sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
LABEL_7:
    OUTLINED_FUNCTION_534_0();
    *(v10 + 16) = v16;
    OUTLINED_FUNCTION_689_0(v17);
    v18 = type metadata accessor for Apple_Parsec_Feedback_V2_Error(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v18);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v22, v23, v24, v18);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 18)
  {
    sub_1B8FAC5C8();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_95_3();
  OUTLINED_FUNCTION_128();
  sub_1B8FAC528();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

void sub_1B8F7BA98()
{
  OUTLINED_FUNCTION_128_3();
  if (v5)
  {
    OUTLINED_FUNCTION_461();
    sub_1B8FAC578();
    sub_1B8D9207C(v4, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_95_3();
    OUTLINED_FUNCTION_439_0();
    sub_1B8FAC528();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_1();
    OUTLINED_FUNCTION_222();
    sub_1B8FAC5C8();
  }

  else
  {
    sub_1B8D9207C(v4, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_95_3();
    OUTLINED_FUNCTION_1_0();
    sub_1B8FAC528();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_1();
  }

  free(v3);
  free(v2);
  free(v1);

  free(v0);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.customFeedback.getter()
{
  OUTLINED_FUNCTION_180_3();
  v2 = OUTLINED_FUNCTION_177_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_46_3();
  OUTLINED_FUNCTION_7_22();
  if (v6)
  {
    sub_1B8D9207C(v1, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 19)
    {
      OUTLINED_FUNCTION_94_6();
      OUTLINED_FUNCTION_288();
      return sub_1B8FAC528();
    }

    sub_1B8FAC5C8();
  }

  *v0 = 0;
  *(v0 + 8) = 0;
  *(v0 + 16) = xmmword_1B966F890;
  v9 = OUTLINED_FUNCTION_616_0();
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_CustomFeedback(v9);
  return OUTLINED_FUNCTION_101_2(v10);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.customFeedback.setter()
{
  sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
  OUTLINED_FUNCTION_94_6();
  OUTLINED_FUNCTION_432();
  sub_1B8FAC528();
  OUTLINED_FUNCTION_39_3();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_125_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Apple_Parsec_Feedback_V2_FeedbackPayload.customFeedback.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_25_4();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_85(v7);
  type metadata accessor for Apple_Parsec_Feedback_V2_CustomFeedback(v8);
  OUTLINED_FUNCTION_126_1();
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_175_2(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_60_3(v13);
  OUTLINED_FUNCTION_3_24();
  if (v14)
  {
    v15 = sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
LABEL_7:
    *v10 = 0;
    *(v10 + 8) = 0;
    *(v10 + 16) = xmmword_1B966F890;
    *(v10 + 32) = 1;
    OUTLINED_FUNCTION_745(v15);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 19)
  {
    v15 = sub_1B8FAC5C8();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_94_6();
  OUTLINED_FUNCTION_128();
  sub_1B8FAC528();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

void sub_1B8F7BE24()
{
  OUTLINED_FUNCTION_128_3();
  if (v5)
  {
    OUTLINED_FUNCTION_461();
    sub_1B8FAC578();
    sub_1B8D9207C(v4, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_94_6();
    OUTLINED_FUNCTION_439_0();
    sub_1B8FAC528();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_1();
    OUTLINED_FUNCTION_222();
    sub_1B8FAC5C8();
  }

  else
  {
    sub_1B8D9207C(v4, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_94_6();
    OUTLINED_FUNCTION_1_0();
    sub_1B8FAC528();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_1();
  }

  free(v3);
  free(v2);
  free(v1);

  free(v0);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.suggestionEngagementFeedback.getter()
{
  OUTLINED_FUNCTION_180_3();
  v1 = OUTLINED_FUNCTION_177_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_46_3();
  OUTLINED_FUNCTION_7_22();
  if (v5)
  {
    sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 20)
    {
      OUTLINED_FUNCTION_93_4();
      OUTLINED_FUNCTION_288();
      return sub_1B8FAC528();
    }

    sub_1B8FAC5C8();
  }

  v8 = OUTLINED_FUNCTION_751();
  v9 = type metadata accessor for Apple_Parsec_Feedback_V2_SuggestionEngagementFeedback(v8);
  OUTLINED_FUNCTION_163_2(v9);
  type metadata accessor for Apple_Parsec_Feedback_V2_SearchSuggestionForFeedback(0);
  v10 = OUTLINED_FUNCTION_40_3();
  return __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.suggestionEngagementFeedback.setter()
{
  sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
  OUTLINED_FUNCTION_93_4();
  OUTLINED_FUNCTION_432();
  sub_1B8FAC528();
  OUTLINED_FUNCTION_39_3();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_125_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Apple_Parsec_Feedback_V2_FeedbackPayload.suggestionEngagementFeedback.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_25_4();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_85(v7);
  type metadata accessor for Apple_Parsec_Feedback_V2_SuggestionEngagementFeedback(v8);
  OUTLINED_FUNCTION_126_1();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_175_2(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_60_3(v12);
  OUTLINED_FUNCTION_3_24();
  if (v13)
  {
    v14 = sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
LABEL_7:
    OUTLINED_FUNCTION_698_0(v14);
    type metadata accessor for Apple_Parsec_Feedback_V2_SearchSuggestionForFeedback(0);
    v16 = OUTLINED_FUNCTION_161_3();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 20)
  {
    v14 = sub_1B8FAC5C8();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_93_4();
  OUTLINED_FUNCTION_128();
  sub_1B8FAC528();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

void sub_1B8F7C1B4()
{
  OUTLINED_FUNCTION_128_3();
  if (v5)
  {
    OUTLINED_FUNCTION_461();
    sub_1B8FAC578();
    sub_1B8D9207C(v4, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_93_4();
    OUTLINED_FUNCTION_439_0();
    sub_1B8FAC528();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_1();
    OUTLINED_FUNCTION_222();
    sub_1B8FAC5C8();
  }

  else
  {
    sub_1B8D9207C(v4, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_93_4();
    OUTLINED_FUNCTION_1_0();
    sub_1B8FAC528();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_1();
  }

  free(v3);
  free(v2);
  free(v1);

  free(v0);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.cardViewDisappearFeedback.getter()
{
  OUTLINED_FUNCTION_180_3();
  v1 = OUTLINED_FUNCTION_177_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_46_3();
  OUTLINED_FUNCTION_7_22();
  if (v5)
  {
    sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 21)
    {
      OUTLINED_FUNCTION_92_3();
      OUTLINED_FUNCTION_288();
      return sub_1B8FAC528();
    }

    sub_1B8FAC5C8();
  }

  v8 = OUTLINED_FUNCTION_369_0();
  type metadata accessor for Apple_Parsec_Feedback_V2_CardViewDisappearFeedback(v8);
  OUTLINED_FUNCTION_279();
  type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback(0);
  v9 = OUTLINED_FUNCTION_40_3();
  return __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.cardViewDisappearFeedback.setter()
{
  sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
  OUTLINED_FUNCTION_92_3();
  OUTLINED_FUNCTION_432();
  sub_1B8FAC528();
  OUTLINED_FUNCTION_39_3();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_125_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Apple_Parsec_Feedback_V2_FeedbackPayload.cardViewDisappearFeedback.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_25_4();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_85(v7);
  type metadata accessor for Apple_Parsec_Feedback_V2_CardViewDisappearFeedback(v8);
  OUTLINED_FUNCTION_126_1();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_175_2(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_60_3(v12);
  OUTLINED_FUNCTION_3_24();
  if (v13)
  {
    sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
LABEL_7:
    OUTLINED_FUNCTION_350_0();
    OUTLINED_FUNCTION_689_0(v15);
    type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback(0);
    v16 = OUTLINED_FUNCTION_161_3();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 21)
  {
    sub_1B8FAC5C8();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_92_3();
  OUTLINED_FUNCTION_128();
  sub_1B8FAC528();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

void sub_1B8F7C548()
{
  OUTLINED_FUNCTION_128_3();
  if (v5)
  {
    OUTLINED_FUNCTION_461();
    sub_1B8FAC578();
    sub_1B8D9207C(v4, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_92_3();
    OUTLINED_FUNCTION_439_0();
    sub_1B8FAC528();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_1();
    OUTLINED_FUNCTION_222();
    sub_1B8FAC5C8();
  }

  else
  {
    sub_1B8D9207C(v4, &qword_1EBAB9148, &unk_1B964D930);
    OUTLINED_FUNCTION_92_3();
    OUTLINED_FUNCTION_1_0();
    sub_1B8FAC528();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_1();
  }

  free(v3);
  free(v2);
  free(v1);

  free(v0);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.visibleSuggestionsFeedback.getter()
{
  OUTLINED_FUNCTION_180_3();
  v1 = OUTLINED_FUNCTION_177_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_46_3();
  OUTLINED_FUNCTION_7_22();
  if (v5)
  {
    sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 22)
    {
      OUTLINED_FUNCTION_91_2();
      OUTLINED_FUNCTION_288();
      return sub_1B8FAC528();
    }

    sub_1B8FAC5C8();
  }

  v8 = OUTLINED_FUNCTION_699_0(MEMORY[0x1E69E7CC0]);
  type metadata accessor for Apple_Parsec_Feedback_V2_VisibleSuggestionsFeedback(v8);
  return OUTLINED_FUNCTION_279();
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.visibleSuggestionsFeedback.setter()
{
  sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
  OUTLINED_FUNCTION_91_2();
  OUTLINED_FUNCTION_432();
  sub_1B8FAC528();
  OUTLINED_FUNCTION_39_3();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_125_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Apple_Parsec_Feedback_V2_FeedbackPayload.visibleSuggestionsFeedback.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_25_4();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_85(v7);
  type metadata accessor for Apple_Parsec_Feedback_V2_VisibleSuggestionsFeedback(v8);
  OUTLINED_FUNCTION_126_1();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_175_2(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  OUTLINED_FUNCTION_60_3(v12);
  OUTLINED_FUNCTION_3_24();
  if (v13)
  {
    sub_1B8D9207C(v0, &qword_1EBAB9148, &unk_1B964D930);
LABEL_7:
    OUTLINED_FUNCTION_669_0(MEMORY[0x1E69E7CC0]);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 22)
  {
    sub_1B8FAC5C8();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_91_2();
  OUTLINED_FUNCTION_128();
  sub_1B8FAC528();
LABEL_8:
  OUTLINED_FUNCTION_242();
}