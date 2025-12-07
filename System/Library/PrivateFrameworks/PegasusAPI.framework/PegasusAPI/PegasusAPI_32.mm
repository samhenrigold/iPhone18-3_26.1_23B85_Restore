uint64_t sub_1B8FE1A18(uint64_t a1)
{
  v2 = sub_1B8CD2450(&qword_1EBAC18B8, type metadata accessor for Apple_Parsec_Feedback_V2_VisibleSectionHeaderFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_VisibleSectionHeaderFeedback);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8FE1A88(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2450(&qword_1EBAC18B8, type metadata accessor for Apple_Parsec_Feedback_V2_VisibleSectionHeaderFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_VisibleSectionHeaderFeedback);

  return sub_1B964C5D0();
}

uint64_t sub_1B8FE1B14()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC03F0);
  __swift_project_value_buffer(v0, qword_1EBAC03F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "timestamp";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "input";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "triggerEvent";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8FE1D80()
{
  OUTLINED_FUNCTION_697_0();
  while (1)
  {
    OUTLINED_FUNCTION_259();
    result = sub_1B964C3C0();
    if (v1 || (v7 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        v8 = OUTLINED_FUNCTION_44_5();
        v0(v8);
        break;
      case 2:
        v2(v3 + 8, v5, v4);
        break;
      case 1:
        OUTLINED_FUNCTION_467();
        sub_1B964C560();
        break;
    }
  }

  return result;
}

void Apple_Parsec_Feedback_V2_DidGoToSiteFeedback.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_800();
  if (!OUTLINED_FUNCTION_25_11() || (OUTLINED_FUNCTION_35_6(), sub_1B964C720(), !v3))
  {
    OUTLINED_FUNCTION_1();
    if (!v5 || (OUTLINED_FUNCTION_59_5(), sub_1B964C700(), !v3))
    {
      if (!*(v4 + 24) || (OUTLINED_FUNCTION_94_4(), sub_1B901397C(), OUTLINED_FUNCTION_687(), sub_1B964C680(), !v3))
      {
        type metadata accessor for Apple_Parsec_Feedback_V2_DidGoToSiteFeedback(0);
        OUTLINED_FUNCTION_8_1();
      }
    }
  }

  OUTLINED_FUNCTION_799();
}

uint64_t sub_1B8FE1FD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2450(&qword_1EBAC1CB8, type metadata accessor for Apple_Parsec_Feedback_V2_DidGoToSiteFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_DidGoToSiteFeedback);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8FE2054(uint64_t a1)
{
  v2 = sub_1B8CD2450(&qword_1EBAC18D0, type metadata accessor for Apple_Parsec_Feedback_V2_DidGoToSiteFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_DidGoToSiteFeedback);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8FE20C4(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2450(&qword_1EBAC18D0, type metadata accessor for Apple_Parsec_Feedback_V2_DidGoToSiteFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_DidGoToSiteFeedback);

  return sub_1B964C5D0();
}

uint64_t sub_1B8FE2150()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC0408);
  __swift_project_value_buffer(v0, qword_1EBAC0408);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "timestamp";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
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
  *v12 = "endpoint";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "triggerEvent";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Feedback_V2_DidGoToSearchFeedback.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_41_7();
        sub_1B964C560();
        break;
      case 2:
        OUTLINED_FUNCTION_311_0();
        sub_1B964C530();
        break;
      case 3:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B8FE2458(v3, v4, v5, v6);
        break;
      case 4:
        v7 = OUTLINED_FUNCTION_9();
        sub_1B8FE24C0(v7, v8, v9, v10);
        break;
      default:
        continue;
    }
  }
}

void Apple_Parsec_Feedback_V2_DidGoToSearchFeedback.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_800();
  if (!OUTLINED_FUNCTION_25_11() || (OUTLINED_FUNCTION_35_6(), sub_1B964C720(), !v3))
  {
    OUTLINED_FUNCTION_1();
    if (!v5 || (OUTLINED_FUNCTION_59_5(), sub_1B964C700(), !v3))
    {
      if (!*(v4 + 24) || (OUTLINED_FUNCTION_94_4(), sub_1B9013D18(), OUTLINED_FUNCTION_687(), sub_1B964C680(), !v3))
      {
        if (!*(v4 + 40) || (OUTLINED_FUNCTION_94_4(), sub_1B901397C(), OUTLINED_FUNCTION_687(), sub_1B964C680(), !v3))
        {
          type metadata accessor for Apple_Parsec_Feedback_V2_DidGoToSearchFeedback(0);
          OUTLINED_FUNCTION_8_1();
        }
      }
    }
  }

  OUTLINED_FUNCTION_799();
}

uint64_t sub_1B8FE26B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2450(&qword_1EBAC1CB0, type metadata accessor for Apple_Parsec_Feedback_V2_DidGoToSearchFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_DidGoToSearchFeedback);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8FE2734(uint64_t a1)
{
  v2 = sub_1B8CD2450(&qword_1EBAC18E8, type metadata accessor for Apple_Parsec_Feedback_V2_DidGoToSearchFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_DidGoToSearchFeedback);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8FE27A4(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2450(&qword_1EBAC18E8, type metadata accessor for Apple_Parsec_Feedback_V2_DidGoToSearchFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_DidGoToSearchFeedback);

  return sub_1B964C5D0();
}

uint64_t sub_1B8FE2830()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC0420);
  __swift_project_value_buffer(v0, qword_1EBAC0420);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "timestamp";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "results";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

void Apple_Parsec_Feedback_V2_SessionMissingResultsFeedback.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_822();
  if (!OUTLINED_FUNCTION_25_11() || (OUTLINED_FUNCTION_35_6(), sub_1B964C720(), !v3))
  {
    OUTLINED_FUNCTION_659_0();
    if (!v4 || (OUTLINED_FUNCTION_872(), OUTLINED_FUNCTION_9_16(), sub_1B8CD2450(v5, v6, protocol conformance descriptor for Apple_Parsec_Feedback_V2_SearchResultForFeedback), OUTLINED_FUNCTION_60_2(), OUTLINED_FUNCTION_687(), sub_1B964C730(), !v3))
    {
      type metadata accessor for Apple_Parsec_Feedback_V2_SessionMissingResultsFeedback(0);
      v7 = OUTLINED_FUNCTION_184_2();
      OUTLINED_FUNCTION_655_0(v7);
    }
  }

  OUTLINED_FUNCTION_823();
}

uint64_t sub_1B8FE2BA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2450(&qword_1EBAC1CA8, type metadata accessor for Apple_Parsec_Feedback_V2_SessionMissingResultsFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_SessionMissingResultsFeedback);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8FE2C28(uint64_t a1)
{
  v2 = sub_1B8CD2450(&qword_1EBAC1900, type metadata accessor for Apple_Parsec_Feedback_V2_SessionMissingResultsFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_SessionMissingResultsFeedback);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8FE2C98(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2450(&qword_1EBAC1900, type metadata accessor for Apple_Parsec_Feedback_V2_SessionMissingResultsFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_SessionMissingResultsFeedback);

  return sub_1B964C5D0();
}

uint64_t sub_1B8FE2D30()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC0438);
  __swift_project_value_buffer(v0, qword_1EBAC0438);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "timestamp";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "suggestions";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

void sub_1B8FE2F1C()
{
  OUTLINED_FUNCTION_273_0();
  v2 = OUTLINED_FUNCTION_114_1();
  v3(v2);
  v4 = OUTLINED_FUNCTION_128();
  v6 = sub_1B8CD2450(v4, v5, v0);
  OUTLINED_FUNCTION_157_1(v1 + 8, v7, v6);
  OUTLINED_FUNCTION_272_0();
}

uint64_t sub_1B8FE2F9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (!OUTLINED_FUNCTION_25_11() || (OUTLINED_FUNCTION_35_6(), result = sub_1B964C720(), !v4))
  {
    OUTLINED_FUNCTION_659_0();
    if (!v7 || (type metadata accessor for Apple_Parsec_Feedback_V2_SearchSuggestionForFeedback(0), OUTLINED_FUNCTION_560_0(), sub_1B8CD2450(v8, v9, protocol conformance descriptor for Apple_Parsec_Feedback_V2_SearchSuggestionForFeedback), OUTLINED_FUNCTION_60_2(), OUTLINED_FUNCTION_687(), result = sub_1B964C730(), !v4))
    {
      a4(0);
      v10 = OUTLINED_FUNCTION_184_2();
      return OUTLINED_FUNCTION_655_0(v10);
    }
  }

  return result;
}

uint64_t sub_1B8FE30E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2450(&qword_1EBAC1CA0, type metadata accessor for Apple_Parsec_Feedback_V2_SessionMissingSuggestionsFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_SessionMissingSuggestionsFeedback);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8FE3164(uint64_t a1)
{
  v2 = sub_1B8CD2450(&qword_1EBAC1918, type metadata accessor for Apple_Parsec_Feedback_V2_SessionMissingSuggestionsFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_SessionMissingSuggestionsFeedback);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8FE31D4(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2450(&qword_1EBAC1918, type metadata accessor for Apple_Parsec_Feedback_V2_SessionMissingSuggestionsFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_SessionMissingSuggestionsFeedback);

  return sub_1B964C5D0();
}

uint64_t sub_1B8FE3260()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC0450);
  __swift_project_value_buffer(v0, qword_1EBAC0450);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "timestamp";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "result";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "grade";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "textFeedback";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Feedback_V2_ResultGradingFeedback.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_41_7();
        sub_1B964C560();
        break;
      case 2:
        v7 = OUTLINED_FUNCTION_9();
        sub_1B8FE356C(v7, v8, v9, v10);
        break;
      case 3:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B8FE3620(v3, v4, v5, v6);
        break;
      case 4:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B8FE356C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Feedback_V2_ResultGradingFeedback(0);
  type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(0);
  sub_1B8CD2450(&qword_1EBAC0828, type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_SearchResultForFeedback);
  return sub_1B964C580();
}

void Apple_Parsec_Feedback_V2_ResultGradingFeedback.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_614();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9168, &qword_1B964D950);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_77_3();
  type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(v5);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_62();
  if (!OUTLINED_FUNCTION_481_0() || (OUTLINED_FUNCTION_35_6(), sub_1B964C720(), !v0))
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_ResultGradingFeedback(0);
    OUTLINED_FUNCTION_743();
    OUTLINED_FUNCTION_118(v2);
    if (v7)
    {
      sub_1B8D9207C(v2, &qword_1EBAB9168, &qword_1B964D950);
    }

    else
    {
      OUTLINED_FUNCTION_2_21();
      OUTLINED_FUNCTION_190_0();
      sub_1B8FAC528();
      OUTLINED_FUNCTION_9_16();
      sub_1B8CD2450(v8, v9, protocol conformance descriptor for Apple_Parsec_Feedback_V2_SearchResultForFeedback);
      OUTLINED_FUNCTION_683_0();
      OUTLINED_FUNCTION_680_0();
      OUTLINED_FUNCTION_687();
      sub_1B964C740();
      OUTLINED_FUNCTION_13_13();
      sub_1B8FAC5C8();
      if (v0)
      {
        goto LABEL_12;
      }
    }

    v10 = *(v1 + 8);
    if (!v10 || (OUTLINED_FUNCTION_540_0(v10), sub_1B9013FB8(), OUTLINED_FUNCTION_687(), sub_1B964C680(), !v0))
    {
      OUTLINED_FUNCTION_1();
      if (!v11 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), !v0))
      {
        OUTLINED_FUNCTION_8_1();
      }
    }
  }

LABEL_12:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

uint64_t sub_1B8FE38F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2450(&qword_1EBAC1C98, type metadata accessor for Apple_Parsec_Feedback_V2_ResultGradingFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_ResultGradingFeedback);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8FE3970(uint64_t a1)
{
  v2 = sub_1B8CD2450(&qword_1EBAC1930, type metadata accessor for Apple_Parsec_Feedback_V2_ResultGradingFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_ResultGradingFeedback);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8FE39E0(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2450(&qword_1EBAC1930, type metadata accessor for Apple_Parsec_Feedback_V2_ResultGradingFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_ResultGradingFeedback);

  return sub_1B964C5D0();
}

uint64_t sub_1B8FE3A78()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC0468);
  __swift_project_value_buffer(v0, qword_1EBAC0468);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "location";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "length";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Feedback_V2_Range.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C560();
    }
  }

  return result;
}

uint64_t Apple_Parsec_Feedback_V2_Range.traverse<A>(visitor:)(uint64_t a1)
{
  if (!OUTLINED_FUNCTION_25_11() || (OUTLINED_FUNCTION_35_6(), result = sub_1B964C720(), !v1))
  {
    if (!*(v2 + 8) || (OUTLINED_FUNCTION_29(), result = sub_1B964C720(), !v1))
    {
      type metadata accessor for Apple_Parsec_Feedback_V2_Range(0);
      v4 = OUTLINED_FUNCTION_184_2();
      return OUTLINED_FUNCTION_655_0(v4);
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Feedback_V2_Range.== infix(_:_:)()
{
  OUTLINED_FUNCTION_227_0();
  if (!v0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_468();
  if (*(v1 + 8) != *(v2 + 8))
  {
    return 0;
  }

  type metadata accessor for Apple_Parsec_Feedback_V2_Range(0);
  OUTLINED_FUNCTION_188_1();
  OUTLINED_FUNCTION_0_40();
  v5 = sub_1B8CD2450(v3, v4, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v5) & 1;
}

uint64_t sub_1B8FE3E64(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2450(&qword_1EBAC1C90, type metadata accessor for Apple_Parsec_Feedback_V2_Range, protocol conformance descriptor for Apple_Parsec_Feedback_V2_Range);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8FE3EE4(uint64_t a1)
{
  v2 = sub_1B8CD2450(&qword_1EBAC0B50, type metadata accessor for Apple_Parsec_Feedback_V2_Range, protocol conformance descriptor for Apple_Parsec_Feedback_V2_Range);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8FE3F54(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2450(&qword_1EBAC0B50, type metadata accessor for Apple_Parsec_Feedback_V2_Range, protocol conformance descriptor for Apple_Parsec_Feedback_V2_Range);

  return sub_1B964C5D0();
}

uint64_t sub_1B8FE3FE0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC0480);
  __swift_project_value_buffer(v0, qword_1EBAC0480);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4A0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "timestamp";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "hintRange";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "domain";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "discarded";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "grade";
  *(v16 + 1) = 5;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "context";
  *(v18 + 1) = 7;
  v18[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Feedback_V2_LookupHintRelevancyFeedback.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_41_7();
        sub_1B964C560();
        break;
      case 2:
        v7 = OUTLINED_FUNCTION_9();
        sub_1B8FE4380(v7, v8, v9, v10);
        break;
      case 3:
      case 6:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 4:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      case 5:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B8FE4434(v3, v4, v5, v6);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B8FE4380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Feedback_V2_LookupHintRelevancyFeedback(0);
  type metadata accessor for Apple_Parsec_Feedback_V2_Range(0);
  sub_1B8CD2450(&qword_1EBAC0B50, type metadata accessor for Apple_Parsec_Feedback_V2_Range, protocol conformance descriptor for Apple_Parsec_Feedback_V2_Range);
  return sub_1B964C580();
}

void Apple_Parsec_Feedback_V2_LookupHintRelevancyFeedback.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_614();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0770, &unk_1B966F9F8);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_77_3();
  type metadata accessor for Apple_Parsec_Feedback_V2_Range(v5);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_62();
  if (!OUTLINED_FUNCTION_481_0() || (OUTLINED_FUNCTION_35_6(), sub_1B964C720(), !v0))
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_LookupHintRelevancyFeedback(0);
    OUTLINED_FUNCTION_743();
    OUTLINED_FUNCTION_118(v2);
    if (v7)
    {
      sub_1B8D9207C(v2, &qword_1EBAC0770, &unk_1B966F9F8);
    }

    else
    {
      OUTLINED_FUNCTION_43_5();
      OUTLINED_FUNCTION_190_0();
      sub_1B8FAC528();
      sub_1B8CD2450(&qword_1EBAC0B50, type metadata accessor for Apple_Parsec_Feedback_V2_Range, protocol conformance descriptor for Apple_Parsec_Feedback_V2_Range);
      OUTLINED_FUNCTION_683_0();
      OUTLINED_FUNCTION_680_0();
      OUTLINED_FUNCTION_687();
      sub_1B964C740();
      OUTLINED_FUNCTION_317_0();
      sub_1B8FAC5C8();
      if (v0)
      {
        goto LABEL_16;
      }
    }

    OUTLINED_FUNCTION_1();
    if (!v8 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), !v0))
    {
      if (*(v1 + 24) != 1 || (OUTLINED_FUNCTION_29(), sub_1B964C670(), !v0))
      {
        v9 = *(v1 + 32);
        if (!v9 || (OUTLINED_FUNCTION_540_0(v9), sub_1B901400C(), OUTLINED_FUNCTION_687(), sub_1B964C680(), !v0))
        {
          OUTLINED_FUNCTION_1();
          if (!v10 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), !v0))
          {
            OUTLINED_FUNCTION_8_1();
          }
        }
      }
    }
  }

LABEL_16:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

uint64_t sub_1B8FE4758(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2450(&qword_1EBAC1C88, type metadata accessor for Apple_Parsec_Feedback_V2_LookupHintRelevancyFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_LookupHintRelevancyFeedback);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8FE47D8(uint64_t a1)
{
  v2 = sub_1B8CD2450(&qword_1EBAC1958, type metadata accessor for Apple_Parsec_Feedback_V2_LookupHintRelevancyFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_LookupHintRelevancyFeedback);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8FE4848(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2450(&qword_1EBAC1958, type metadata accessor for Apple_Parsec_Feedback_V2_LookupHintRelevancyFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_LookupHintRelevancyFeedback);

  return sub_1B964C5D0();
}

uint64_t sub_1B8FE4914()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      OUTLINED_FUNCTION_41_7();
      sub_1B964C560();
    }
  }

  return result;
}

void sub_1B8FE498C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_822();
  v6 = v5;
  if (!OUTLINED_FUNCTION_25_11() || (OUTLINED_FUNCTION_35_6(), sub_1B964C720(), !v4))
  {
    v6(0);
    OUTLINED_FUNCTION_8_1();
  }

  OUTLINED_FUNCTION_823();
}

uint64_t sub_1B8FE4A7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2450(&qword_1EBAC1C80, type metadata accessor for Apple_Parsec_Feedback_V2_ConnectionInvalidatedFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_ConnectionInvalidatedFeedback);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8FE4AFC(uint64_t a1)
{
  v2 = sub_1B8CD2450(&qword_1EBAC1970, type metadata accessor for Apple_Parsec_Feedback_V2_ConnectionInvalidatedFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_ConnectionInvalidatedFeedback);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8FE4B6C(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2450(&qword_1EBAC1970, type metadata accessor for Apple_Parsec_Feedback_V2_ConnectionInvalidatedFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_ConnectionInvalidatedFeedback);

  return sub_1B964C5D0();
}

uint64_t sub_1B8FE4BF8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC04B0);
  __swift_project_value_buffer(v0, qword_1EBAC04B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "timestamp";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "reason";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8FE5004(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2450(&qword_1EBAC1C78, type metadata accessor for Apple_Parsec_Feedback_V2_SessionEndFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_SessionEndFeedback);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8FE5084(uint64_t a1)
{
  v2 = sub_1B8CD2450(&qword_1EBAC1988, type metadata accessor for Apple_Parsec_Feedback_V2_SessionEndFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_SessionEndFeedback);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8FE50F4(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2450(&qword_1EBAC1988, type metadata accessor for Apple_Parsec_Feedback_V2_SessionEndFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_SessionEndFeedback);

  return sub_1B964C5D0();
}

uint64_t sub_1B8FE518C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC04C8);
  __swift_project_value_buffer(v0, qword_1EBAC04C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "timestamp";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
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
  *v12 = "eventName";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "queryId";
  *(v14 + 1) = 7;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "nanosecondInterval";
  *(v16 + 1) = 18;
  v16[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Feedback_V2_ClientTimingFeedback.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 4:
      case 5:
        OUTLINED_FUNCTION_12();
        sub_1B964C560();
        break;
      case 2:
      case 3:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      default:
        continue;
    }
  }
}

uint64_t Apple_Parsec_Feedback_V2_ClientTimingFeedback.traverse<A>(visitor:)(uint64_t a1)
{
  if (!OUTLINED_FUNCTION_25_11() || (OUTLINED_FUNCTION_35_6(), result = sub_1B964C720(), !v1))
  {
    OUTLINED_FUNCTION_1();
    if (!v4 || (OUTLINED_FUNCTION_59_5(), result = sub_1B964C700(), !v1))
    {
      OUTLINED_FUNCTION_1();
      if (!v5 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v1))
      {
        if (!*(v2 + 40) || (OUTLINED_FUNCTION_29(), result = sub_1B964C720(), !v1))
        {
          if (!*(v2 + 48) || (OUTLINED_FUNCTION_29(), result = sub_1B964C720(), !v1))
          {
            type metadata accessor for Apple_Parsec_Feedback_V2_ClientTimingFeedback(0);
            return OUTLINED_FUNCTION_8_1();
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1B8FE5644(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2450(&qword_1EBAC1C70, type metadata accessor for Apple_Parsec_Feedback_V2_ClientTimingFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_ClientTimingFeedback);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8FE56C4(uint64_t a1)
{
  v2 = sub_1B8CD2450(&qword_1EBAC19A0, type metadata accessor for Apple_Parsec_Feedback_V2_ClientTimingFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_ClientTimingFeedback);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8FE5734(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2450(&qword_1EBAC19A0, type metadata accessor for Apple_Parsec_Feedback_V2_ClientTimingFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_ClientTimingFeedback);

  return sub_1B964C5D0();
}

uint64_t sub_1B8FE57CC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC04E0);
  __swift_project_value_buffer(v0, qword_1EBAC04E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v98 = swift_allocObject();
  *(v98 + 16) = xmmword_1B966F940;
  v4 = v98 + v3 + v1[14];
  *(v98 + v3) = 1;
  *v4 = "feedback";
  *(v4 + 8) = 8;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v98 + v3 + v2 + v1[14];
  *(v98 + v3 + v2) = 2;
  *v8 = "searchViewAppearFeedback";
  *(v8 + 8) = 24;
  *(v8 + 16) = 2;
  v7();
  v9 = (v98 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "searchViewDisappearFeedback";
  *(v10 + 1) = 27;
  v10[16] = 2;
  v7();
  v11 = (v98 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "rankingFeedback";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v7();
  v13 = (v98 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "sectionRankingFeedback";
  *(v14 + 1) = 22;
  v14[16] = 2;
  v7();
  v15 = (v98 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "resultRankingFeedback";
  *(v16 + 1) = 21;
  v16[16] = 2;
  v7();
  v17 = (v98 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "resultFeedback";
  *(v18 + 1) = 14;
  v18[16] = 2;
  v7();
  v19 = (v98 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "resultEngagementFeedback";
  *(v20 + 1) = 24;
  v20[16] = 2;
  v7();
  v21 = (v98 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "visibleResultsFeedback";
  *(v22 + 1) = 22;
  v22[16] = 2;
  v7();
  v23 = (v98 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "cardSectionFeedback";
  *(v24 + 1) = 19;
  v24[16] = 2;
  v7();
  v25 = (v98 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "mapsCardSectionEngagementFeedback";
  *(v26 + 1) = 33;
  v26[16] = 2;
  v7();
  v27 = (v98 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "storeCardSectionEngagementFeedback";
  *(v28 + 1) = 34;
  v28[16] = 2;
  v7();
  v29 = (v98 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "startSearchFeedback";
  *(v30 + 1) = 19;
  v30[16] = 2;
  v7();
  v31 = (v98 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "endSearchFeedback";
  *(v32 + 1) = 17;
  v32[16] = 2;
  v7();
  v33 = (v98 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "startNetworkSearchFeedback";
  *(v34 + 1) = 26;
  v34[16] = 2;
  v7();
  v35 = (v98 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "endNetworkSearchFeedback";
  *(v36 + 1) = 24;
  v36[16] = 2;
  v7();
  v37 = (v98 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 17;
  *v38 = "startLocalSearchFeedback";
  *(v38 + 1) = 24;
  v38[16] = 2;
  v7();
  v39 = (v98 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 18;
  *v40 = "endLocalSearchFeedback";
  *(v40 + 1) = 22;
  v40[16] = 2;
  v7();
  v41 = (v98 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 19;
  *v42 = "errorFeedback";
  *(v42 + 1) = 13;
  v42[16] = 2;
  v7();
  v43 = (v98 + v3 + 19 * v2);
  v44 = v43 + v1[14];
  *v43 = 20;
  *v44 = "customFeedback";
  *(v44 + 1) = 14;
  v44[16] = 2;
  v7();
  v45 = (v98 + v3 + 20 * v2);
  v46 = v45 + v1[14];
  *v45 = 21;
  *v46 = "suggestionEngagementFeedback";
  *(v46 + 1) = 28;
  v46[16] = 2;
  v7();
  v47 = (v98 + v3 + 21 * v2);
  v48 = v47 + v1[14];
  *v47 = 22;
  *v48 = "cardViewDisappearFeedback";
  *(v48 + 1) = 25;
  v48[16] = 2;
  v7();
  v49 = (v98 + v3 + 22 * v2);
  v50 = v49 + v1[14];
  *v49 = 23;
  *v50 = "visibleSuggestionsFeedback";
  *(v50 + 1) = 26;
  v50[16] = 2;
  v7();
  v51 = (v98 + v3 + 23 * v2);
  v52 = v51 + v1[14];
  *v51 = 24;
  *v52 = "resultsReceivedAfterTimeoutFeedback";
  *(v52 + 1) = 35;
  v52[16] = 2;
  v7();
  v53 = (v98 + v3 + 24 * v2);
  v54 = v53 + v1[14];
  *v53 = 25;
  *v54 = "lateSectionsAppendedFeedback";
  *(v54 + 1) = 28;
  v54[16] = 2;
  v7();
  v55 = (v98 + v3 + 25 * v2);
  v56 = v55 + v1[14];
  *v55 = 26;
  *v56 = "clearInputFeedback";
  *(v56 + 1) = 18;
  v56[16] = 2;
  v7();
  v57 = (v98 + v3 + 26 * v2);
  v58 = v57 + v1[14];
  *v57 = 27;
  *v58 = "sectionEngagementFeedback";
  *(v58 + 1) = 25;
  v58[16] = 2;
  v7();
  v59 = (v98 + v3 + 27 * v2);
  v60 = v59 + v1[14];
  *v59 = 28;
  *v60 = "visibleSectionHeaderFeedback";
  *(v60 + 1) = 28;
  v60[16] = 2;
  v7();
  v61 = (v98 + v3 + 28 * v2);
  v62 = v61 + v1[14];
  *v61 = 29;
  *v62 = "didGoToSiteFeedback";
  *(v62 + 1) = 19;
  v62[16] = 2;
  v7();
  v63 = (v98 + v3 + 29 * v2);
  v64 = v63 + v1[14];
  *v63 = 30;
  *v64 = "didGoToSearchFeedback";
  *(v64 + 1) = 21;
  v64[16] = 2;
  v7();
  v65 = (v98 + v3 + 30 * v2);
  v66 = v65 + v1[14];
  *v65 = 31;
  *v66 = "sessionMissingResultsFeedback";
  *(v66 + 1) = 29;
  v66[16] = 2;
  v7();
  v67 = (v98 + v3 + 31 * v2);
  v68 = v67 + v1[14];
  *v67 = 32;
  *v68 = "sessionMissingSuggestionsFeedback";
  *(v68 + 1) = 33;
  v68[16] = 2;
  v7();
  v69 = (v98 + v3 + 32 * v2);
  v70 = v69 + v1[14];
  *v69 = 33;
  *v70 = "resultGradingFeedback";
  *(v70 + 1) = 21;
  v70[16] = 2;
  v7();
  v71 = (v98 + v3 + 33 * v2);
  v72 = v71 + v1[14];
  *v71 = 34;
  *v72 = "lookupHintRelevancyFeedback";
  *(v72 + 1) = 27;
  v72[16] = 2;
  v7();
  v73 = (v98 + v3 + 34 * v2);
  v74 = v73 + v1[14];
  *v73 = 35;
  *v74 = "connectionInvalidatedFeedback";
  *(v74 + 1) = 29;
  v74[16] = 2;
  v7();
  v75 = (v98 + v3 + 35 * v2);
  v76 = v75 + v1[14];
  *v75 = 36;
  *v76 = "cardSectionEngagementFeedback";
  *(v76 + 1) = 29;
  v76[16] = 2;
  v7();
  v77 = (v98 + v3 + 36 * v2);
  v78 = v77 + v1[14];
  *v77 = 37;
  *v78 = "sessionEndFeedback";
  *(v78 + 1) = 18;
  v78[16] = 2;
  v7();
  v79 = (v98 + v3 + 37 * v2);
  v80 = v79 + v1[14];
  *v79 = 38;
  *v80 = "cardViewAppearFeedback";
  *(v80 + 1) = 22;
  v80[16] = 2;
  v7();
  v81 = (v98 + v3 + 38 * v2);
  v82 = v81 + v1[14];
  *v81 = 39;
  *v82 = "skipSearchFeedback";
  *(v82 + 1) = 18;
  v82[16] = 2;
  v7();
  v83 = (v98 + v3 + 39 * v2);
  v84 = v83 + v1[14];
  *v83 = 40;
  *v84 = "cacheHitFeedback";
  *(v84 + 1) = 16;
  v84[16] = 2;
  v7();
  v85 = (v98 + v3 + 40 * v2);
  v86 = v85 + v1[14];
  *v85 = 41;
  *v86 = "cbaEngagementFeedback";
  *(v86 + 1) = 21;
  v86[16] = 2;
  v7();
  v87 = (v98 + v3 + 41 * v2);
  v88 = v87 + v1[14];
  *v87 = 42;
  *v88 = "clientTimingFeedback";
  *(v88 + 1) = 20;
  v88[16] = 2;
  v7();
  v89 = (v98 + v3 + 42 * v2);
  v90 = v89 + v1[14];
  *v89 = 43;
  *v90 = "commandEngagementFeedback";
  *(v90 + 1) = 25;
  v90[16] = 2;
  v7();
  v91 = (v98 + v3 + 43 * v2);
  v92 = v91 + v1[14];
  *v91 = 44;
  *v92 = "dynamicButtonVisibilityFeedback";
  *(v92 + 1) = 31;
  v92[16] = 2;
  v7();
  v93 = (v98 + v3 + 44 * v2);
  v94 = v93 + v1[14];
  *v93 = 45;
  *v94 = "experimentTriggeredFeedback";
  *(v94 + 1) = 27;
  v94[16] = 2;
  v7();
  v95 = (v98 + v3 + 45 * v2);
  v96 = v95 + v1[14];
  *v95 = 100;
  *v96 = "queryId";
  *(v96 + 1) = 7;
  v96[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v3 = OUTLINED_FUNCTION_17_3();
        sub_1B8FE678C(v3, v4, v5, v6);
        break;
      case 2:
        v91 = OUTLINED_FUNCTION_17_3();
        sub_1B8FE6C84(v91, v92, v93, v94);
        break;
      case 3:
        v75 = OUTLINED_FUNCTION_17_3();
        sub_1B8FE717C(v75, v76, v77, v78);
        break;
      case 4:
        v83 = OUTLINED_FUNCTION_17_3();
        sub_1B8FE7674(v83, v84, v85, v86);
        break;
      case 5:
        v51 = OUTLINED_FUNCTION_17_3();
        sub_1B8FE7B6C(v51, v52, v53, v54);
        break;
      case 6:
        v111 = OUTLINED_FUNCTION_17_3();
        sub_1B8FE8064(v111, v112, v113, v114);
        break;
      case 7:
        v123 = OUTLINED_FUNCTION_17_3();
        sub_1B8FE855C(v123, v124, v125, v126);
        break;
      case 8:
        v87 = OUTLINED_FUNCTION_17_3();
        sub_1B8FE8A54(v87, v88, v89, v90);
        break;
      case 9:
        v135 = OUTLINED_FUNCTION_17_3();
        sub_1B8FE8F4C(v135, v136, v137, v138);
        break;
      case 10:
        v63 = OUTLINED_FUNCTION_17_3();
        sub_1B8FE9444(v63, v64, v65, v66);
        break;
      case 11:
        v131 = OUTLINED_FUNCTION_17_3();
        sub_1B8FE993C(v131, v132, v133, v134);
        break;
      case 12:
        v47 = OUTLINED_FUNCTION_17_3();
        sub_1B8FE9E34(v47, v48, v49, v50);
        break;
      case 13:
        v59 = OUTLINED_FUNCTION_17_3();
        sub_1B8FEA32C(v59, v60, v61, v62);
        break;
      case 14:
        v119 = OUTLINED_FUNCTION_17_3();
        sub_1B8FEA824(v119, v120, v121, v122);
        break;
      case 15:
        v39 = OUTLINED_FUNCTION_17_3();
        sub_1B8FEAD1C(v39, v40, v41, v42);
        break;
      case 16:
        v79 = OUTLINED_FUNCTION_17_3();
        sub_1B8FEB214(v79, v80, v81, v82);
        break;
      case 17:
        v31 = OUTLINED_FUNCTION_17_3();
        sub_1B8FEB70C(v31, v32, v33, v34);
        break;
      case 18:
        v99 = OUTLINED_FUNCTION_17_3();
        sub_1B8FEBC04(v99, v100, v101, v102);
        break;
      case 19:
        v127 = OUTLINED_FUNCTION_17_3();
        sub_1B8FEC0FC(v127, v128, v129, v130);
        break;
      case 20:
        v161 = OUTLINED_FUNCTION_17_3();
        sub_1B8FEC5F4(v161, v162, v163, v164);
        break;
      case 21:
        v107 = OUTLINED_FUNCTION_17_3();
        sub_1B8FECAEC(v107, v108, v109, v110);
        break;
      case 22:
        v115 = OUTLINED_FUNCTION_17_3();
        sub_1B8FECFE4(v115, v116, v117, v118);
        break;
      case 23:
        v153 = OUTLINED_FUNCTION_17_3();
        sub_1B8FED4DC(v153, v154, v155, v156);
        break;
      case 24:
        v169 = OUTLINED_FUNCTION_17_3();
        sub_1B8FED9D4(v169, v170, v171, v172);
        break;
      case 25:
        v71 = OUTLINED_FUNCTION_17_3();
        sub_1B8FEDECC(v71, v72, v73, v74);
        break;
      case 26:
        v67 = OUTLINED_FUNCTION_17_3();
        sub_1B8FEE3C4(v67, v68, v69, v70);
        break;
      case 27:
        v185 = OUTLINED_FUNCTION_17_3();
        sub_1B8FEE8BC(v185, v186, v187, v188);
        break;
      case 28:
        v23 = OUTLINED_FUNCTION_17_3();
        sub_1B8FEEDB4(v23, v24, v25, v26);
        break;
      case 29:
        v173 = OUTLINED_FUNCTION_17_3();
        sub_1B8FEF2AC(v173, v174, v175, v176);
        break;
      case 30:
        v177 = OUTLINED_FUNCTION_17_3();
        sub_1B8FEF7A4(v177, v178, v179, v180);
        break;
      case 31:
        v139 = OUTLINED_FUNCTION_17_3();
        sub_1B8FEFC9C(v139, v140, v141, v142);
        break;
      case 32:
        v95 = OUTLINED_FUNCTION_17_3();
        sub_1B8FF0194(v95, v96, v97, v98);
        break;
      case 33:
        v143 = OUTLINED_FUNCTION_17_3();
        sub_1B8FF068C(v143, v144, v145, v146);
        break;
      case 34:
        v43 = OUTLINED_FUNCTION_17_3();
        sub_1B8FF0B84(v43, v44, v45, v46);
        break;
      case 35:
        v27 = OUTLINED_FUNCTION_17_3();
        sub_1B8FF107C(v27, v28, v29, v30);
        break;
      case 36:
        v15 = OUTLINED_FUNCTION_17_3();
        sub_1B8FF1574(v15, v16, v17, v18);
        break;
      case 37:
        v19 = OUTLINED_FUNCTION_17_3();
        sub_1B8FF1A6C(v19, v20, v21, v22);
        break;
      case 38:
        v11 = OUTLINED_FUNCTION_17_3();
        sub_1B8FF1F64(v11, v12, v13, v14);
        break;
      case 39:
        v181 = OUTLINED_FUNCTION_17_3();
        sub_1B8FF245C(v181, v182, v183, v184);
        break;
      case 40:
        v157 = OUTLINED_FUNCTION_17_3();
        sub_1B8FF2954(v157, v158, v159, v160);
        break;
      case 41:
        v55 = OUTLINED_FUNCTION_17_3();
        sub_1B8FF2E4C(v55, v56, v57, v58);
        break;
      case 42:
        v103 = OUTLINED_FUNCTION_17_3();
        sub_1B8FF3344(v103, v104, v105, v106);
        break;
      case 43:
        v165 = OUTLINED_FUNCTION_17_3();
        sub_1B8FF383C(v165, v166, v167, v168);
        break;
      case 44:
        v7 = OUTLINED_FUNCTION_17_3();
        sub_1B8FF3D34(v7, v8, v9, v10);
        break;
      case 45:
        v35 = OUTLINED_FUNCTION_17_3();
        sub_1B8FF422C(v35, v36, v37, v38);
        break;
      case 100:
        v147 = OUTLINED_FUNCTION_9();
        sub_1B9011BA4(v147, v148, v149, v150, v151, v152);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B8FE678C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_Feedback(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC1F50, &qword_1B967F3F8);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_1B8F1B8B8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v10, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    sub_1B8FAC528();
    sub_1B8FAC528();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1B8FAC5C8();
    }

    else
    {
      sub_1B8D9207C(v18, &qword_1EBAC1F50, &qword_1B967F3F8);
      sub_1B8FAC528();
      sub_1B8FAC528();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }
  }

  sub_1B8CD2450(&qword_1EBAC1548, type metadata accessor for Apple_Parsec_Feedback_V2_Feedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_Feedback);
  v19 = v29;
  sub_1B964C580();
  if (v19)
  {
    v20 = v18;
    return sub_1B8D9207C(v20, &qword_1EBAC1F50, &qword_1B967F3F8);
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_1B8D9207C(v18, &qword_1EBAC1F50, &qword_1B967F3F8);
    v20 = v16;
    return sub_1B8D9207C(v20, &qword_1EBAC1F50, &qword_1B967F3F8);
  }

  sub_1B8FAC528();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v22 = v27;
  sub_1B8D9207C(v18, &qword_1EBAC1F50, &qword_1B967F3F8);
  v23 = v25;
  sub_1B8D9207C(v25, &qword_1EBAB9148, &unk_1B964D930);
  sub_1B8FAC528();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_1B8FE6C84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchViewAppearFeedback(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC1F58, &qword_1B967F400);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_1B8F1B8B8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v10, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    sub_1B8FAC528();
    sub_1B8FAC528();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B8D9207C(v18, &qword_1EBAC1F58, &qword_1B967F400);
      sub_1B8FAC528();
      sub_1B8FAC528();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_1B8FAC5C8();
    }
  }

  sub_1B8CD2450(&qword_1EBAC1560, type metadata accessor for Apple_Parsec_Feedback_V2_SearchViewAppearFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_SearchViewAppearFeedback);
  v19 = v29;
  sub_1B964C580();
  if (v19)
  {
    v20 = v18;
    return sub_1B8D9207C(v20, &qword_1EBAC1F58, &qword_1B967F400);
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_1B8D9207C(v18, &qword_1EBAC1F58, &qword_1B967F400);
    v20 = v16;
    return sub_1B8D9207C(v20, &qword_1EBAC1F58, &qword_1B967F400);
  }

  sub_1B8FAC528();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v22 = v27;
  sub_1B8D9207C(v18, &qword_1EBAC1F58, &qword_1B967F400);
  v23 = v25;
  sub_1B8D9207C(v25, &qword_1EBAB9148, &unk_1B964D930);
  sub_1B8FAC528();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_1B8FE717C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchViewDisappearFeedback(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC1F60, &qword_1B967F408);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_1B8F1B8B8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v10, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    sub_1B8FAC528();
    sub_1B8FAC528();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1B8D9207C(v18, &qword_1EBAC1F60, &qword_1B967F408);
      sub_1B8FAC528();
      sub_1B8FAC528();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_1B8FAC5C8();
    }
  }

  sub_1B8CD2450(&qword_1EBAC1578, type metadata accessor for Apple_Parsec_Feedback_V2_SearchViewDisappearFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_SearchViewDisappearFeedback);
  v19 = v29;
  sub_1B964C580();
  if (v19)
  {
    v20 = v18;
    return sub_1B8D9207C(v20, &qword_1EBAC1F60, &qword_1B967F408);
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_1B8D9207C(v18, &qword_1EBAC1F60, &qword_1B967F408);
    v20 = v16;
    return sub_1B8D9207C(v20, &qword_1EBAC1F60, &qword_1B967F408);
  }

  sub_1B8FAC528();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v22 = v27;
  sub_1B8D9207C(v18, &qword_1EBAC1F60, &qword_1B967F408);
  v23 = v25;
  sub_1B8D9207C(v25, &qword_1EBAB9148, &unk_1B964D930);
  sub_1B8FAC528();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_1B8FE7674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_RankingFeedback(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC1F68, &qword_1B967F410);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_1B8F1B8B8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v10, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    sub_1B8FAC528();
    sub_1B8FAC528();
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1B8D9207C(v18, &qword_1EBAC1F68, &qword_1B967F410);
      sub_1B8FAC528();
      sub_1B8FAC528();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_1B8FAC5C8();
    }
  }

  sub_1B8CD2450(&qword_1EBAC1590, type metadata accessor for Apple_Parsec_Feedback_V2_RankingFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_RankingFeedback);
  v19 = v29;
  sub_1B964C580();
  if (v19)
  {
    v20 = v18;
    return sub_1B8D9207C(v20, &qword_1EBAC1F68, &qword_1B967F410);
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_1B8D9207C(v18, &qword_1EBAC1F68, &qword_1B967F410);
    v20 = v16;
    return sub_1B8D9207C(v20, &qword_1EBAC1F68, &qword_1B967F410);
  }

  sub_1B8FAC528();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v22 = v27;
  sub_1B8D9207C(v18, &qword_1EBAC1F68, &qword_1B967F410);
  v23 = v25;
  sub_1B8D9207C(v25, &qword_1EBAB9148, &unk_1B964D930);
  sub_1B8FAC528();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_1B8FE7B6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_SectionRankingFeedback(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC1F70, &qword_1B967F418);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_1B8F1B8B8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v10, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    sub_1B8FAC528();
    sub_1B8FAC528();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1B8D9207C(v18, &qword_1EBAC1F70, &qword_1B967F418);
      sub_1B8FAC528();
      sub_1B8FAC528();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_1B8FAC5C8();
    }
  }

  sub_1B8CD2450(&qword_1EBAC0900, type metadata accessor for Apple_Parsec_Feedback_V2_SectionRankingFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_SectionRankingFeedback);
  v19 = v29;
  sub_1B964C580();
  if (v19)
  {
    v20 = v18;
    return sub_1B8D9207C(v20, &qword_1EBAC1F70, &qword_1B967F418);
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_1B8D9207C(v18, &qword_1EBAC1F70, &qword_1B967F418);
    v20 = v16;
    return sub_1B8D9207C(v20, &qword_1EBAC1F70, &qword_1B967F418);
  }

  sub_1B8FAC528();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v22 = v27;
  sub_1B8D9207C(v18, &qword_1EBAC1F70, &qword_1B967F418);
  v23 = v25;
  sub_1B8D9207C(v25, &qword_1EBAB9148, &unk_1B964D930);
  sub_1B8FAC528();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_1B8FE8064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_ResultRankingFeedback(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC1F78, &qword_1B967F420);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_1B8F1B8B8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v10, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    sub_1B8FAC528();
    sub_1B8FAC528();
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_1B8D9207C(v18, &qword_1EBAC1F78, &qword_1B967F420);
      sub_1B8FAC528();
      sub_1B8FAC528();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_1B8FAC5C8();
    }
  }

  sub_1B8CD2450(&qword_1EBAC0918, type metadata accessor for Apple_Parsec_Feedback_V2_ResultRankingFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_ResultRankingFeedback);
  v19 = v29;
  sub_1B964C580();
  if (v19)
  {
    v20 = v18;
    return sub_1B8D9207C(v20, &qword_1EBAC1F78, &qword_1B967F420);
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_1B8D9207C(v18, &qword_1EBAC1F78, &qword_1B967F420);
    v20 = v16;
    return sub_1B8D9207C(v20, &qword_1EBAC1F78, &qword_1B967F420);
  }

  sub_1B8FAC528();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v22 = v27;
  sub_1B8D9207C(v18, &qword_1EBAC1F78, &qword_1B967F420);
  v23 = v25;
  sub_1B8D9207C(v25, &qword_1EBAB9148, &unk_1B964D930);
  sub_1B8FAC528();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_1B8FE855C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_ResultFeedback(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC1F80, &qword_1B967F428);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_1B8F1B8B8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v10, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    sub_1B8FAC528();
    sub_1B8FAC528();
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_1B8D9207C(v18, &qword_1EBAC1F80, &qword_1B967F428);
      sub_1B8FAC528();
      sub_1B8FAC528();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_1B8FAC5C8();
    }
  }

  sub_1B8CD2450(&qword_1EBAC15C8, type metadata accessor for Apple_Parsec_Feedback_V2_ResultFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_ResultFeedback);
  v19 = v29;
  sub_1B964C580();
  if (v19)
  {
    v20 = v18;
    return sub_1B8D9207C(v20, &qword_1EBAC1F80, &qword_1B967F428);
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_1B8D9207C(v18, &qword_1EBAC1F80, &qword_1B967F428);
    v20 = v16;
    return sub_1B8D9207C(v20, &qword_1EBAC1F80, &qword_1B967F428);
  }

  sub_1B8FAC528();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v22 = v27;
  sub_1B8D9207C(v18, &qword_1EBAC1F80, &qword_1B967F428);
  v23 = v25;
  sub_1B8D9207C(v25, &qword_1EBAB9148, &unk_1B964D930);
  sub_1B8FAC528();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_1B8FE8A54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_ResultEngagementFeedback(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC1F88, &qword_1B967F430);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_1B8F1B8B8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v10, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    sub_1B8FAC528();
    sub_1B8FAC528();
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_1B8D9207C(v18, &qword_1EBAC1F88, &qword_1B967F430);
      sub_1B8FAC528();
      sub_1B8FAC528();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_1B8FAC5C8();
    }
  }

  sub_1B8CD2450(&qword_1EBAC15E0, type metadata accessor for Apple_Parsec_Feedback_V2_ResultEngagementFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_ResultEngagementFeedback);
  v19 = v29;
  sub_1B964C580();
  if (v19)
  {
    v20 = v18;
    return sub_1B8D9207C(v20, &qword_1EBAC1F88, &qword_1B967F430);
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_1B8D9207C(v18, &qword_1EBAC1F88, &qword_1B967F430);
    v20 = v16;
    return sub_1B8D9207C(v20, &qword_1EBAC1F88, &qword_1B967F430);
  }

  sub_1B8FAC528();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v22 = v27;
  sub_1B8D9207C(v18, &qword_1EBAC1F88, &qword_1B967F430);
  v23 = v25;
  sub_1B8D9207C(v25, &qword_1EBAB9148, &unk_1B964D930);
  sub_1B8FAC528();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_1B8FE8F4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_VisibleResultsFeedback(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC1F90, &qword_1B967F438);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_1B8F1B8B8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v10, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    sub_1B8FAC528();
    sub_1B8FAC528();
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_1B8D9207C(v18, &qword_1EBAC1F90, &qword_1B967F438);
      sub_1B8FAC528();
      sub_1B8FAC528();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_1B8FAC5C8();
    }
  }

  sub_1B8CD2450(&qword_1EBAC1610, type metadata accessor for Apple_Parsec_Feedback_V2_VisibleResultsFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_VisibleResultsFeedback);
  v19 = v29;
  sub_1B964C580();
  if (v19)
  {
    v20 = v18;
    return sub_1B8D9207C(v20, &qword_1EBAC1F90, &qword_1B967F438);
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_1B8D9207C(v18, &qword_1EBAC1F90, &qword_1B967F438);
    v20 = v16;
    return sub_1B8D9207C(v20, &qword_1EBAC1F90, &qword_1B967F438);
  }

  sub_1B8FAC528();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v22 = v27;
  sub_1B8D9207C(v18, &qword_1EBAC1F90, &qword_1B967F438);
  v23 = v25;
  sub_1B8D9207C(v25, &qword_1EBAB9148, &unk_1B964D930);
  sub_1B8FAC528();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_1B8FE9444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionFeedback(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC1F98, &qword_1B967F440);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_1B8F1B8B8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v10, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    sub_1B8FAC528();
    sub_1B8FAC528();
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      sub_1B8D9207C(v18, &qword_1EBAC1F98, &qword_1B967F440);
      sub_1B8FAC528();
      sub_1B8FAC528();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_1B8FAC5C8();
    }
  }

  sub_1B8CD2450(&qword_1EBAC16B0, type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_CardSectionFeedback);
  v19 = v29;
  sub_1B964C580();
  if (v19)
  {
    v20 = v18;
    return sub_1B8D9207C(v20, &qword_1EBAC1F98, &qword_1B967F440);
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_1B8D9207C(v18, &qword_1EBAC1F98, &qword_1B967F440);
    v20 = v16;
    return sub_1B8D9207C(v20, &qword_1EBAC1F98, &qword_1B967F440);
  }

  sub_1B8FAC528();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v22 = v27;
  sub_1B8D9207C(v18, &qword_1EBAC1F98, &qword_1B967F440);
  v23 = v25;
  sub_1B8D9207C(v25, &qword_1EBAB9148, &unk_1B964D930);
  sub_1B8FAC528();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_1B8FE993C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_MapsCardSectionEngagementFeedback(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC1FA0, &qword_1B967F448);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_1B8F1B8B8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v10, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    sub_1B8FAC528();
    sub_1B8FAC528();
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      sub_1B8D9207C(v18, &qword_1EBAC1FA0, &qword_1B967F448);
      sub_1B8FAC528();
      sub_1B8FAC528();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_1B8FAC5C8();
    }
  }

  sub_1B8CD2450(&qword_1EBAC16E0, type metadata accessor for Apple_Parsec_Feedback_V2_MapsCardSectionEngagementFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_MapsCardSectionEngagementFeedback);
  v19 = v29;
  sub_1B964C580();
  if (v19)
  {
    v20 = v18;
    return sub_1B8D9207C(v20, &qword_1EBAC1FA0, &qword_1B967F448);
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_1B8D9207C(v18, &qword_1EBAC1FA0, &qword_1B967F448);
    v20 = v16;
    return sub_1B8D9207C(v20, &qword_1EBAC1FA0, &qword_1B967F448);
  }

  sub_1B8FAC528();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v22 = v27;
  sub_1B8D9207C(v18, &qword_1EBAC1FA0, &qword_1B967F448);
  v23 = v25;
  sub_1B8D9207C(v25, &qword_1EBAB9148, &unk_1B964D930);
  sub_1B8FAC528();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_1B8FE9E34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedback(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC1FA8, &qword_1B967F450);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_1B8F1B8B8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v10, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    sub_1B8FAC528();
    sub_1B8FAC528();
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      sub_1B8D9207C(v18, &qword_1EBAC1FA8, &qword_1B967F450);
      sub_1B8FAC528();
      sub_1B8FAC528();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_1B8FAC5C8();
    }
  }

  sub_1B8CD2450(&qword_1EBAC16F8, type metadata accessor for Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedback);
  v19 = v29;
  sub_1B964C580();
  if (v19)
  {
    v20 = v18;
    return sub_1B8D9207C(v20, &qword_1EBAC1FA8, &qword_1B967F450);
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_1B8D9207C(v18, &qword_1EBAC1FA8, &qword_1B967F450);
    v20 = v16;
    return sub_1B8D9207C(v20, &qword_1EBAC1FA8, &qword_1B967F450);
  }

  sub_1B8FAC528();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v22 = v27;
  sub_1B8D9207C(v18, &qword_1EBAC1FA8, &qword_1B967F450);
  v23 = v25;
  sub_1B8D9207C(v25, &qword_1EBAB9148, &unk_1B964D930);
  sub_1B8FAC528();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_1B8FEA32C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  started = type metadata accessor for Apple_Parsec_Feedback_V2_StartSearchFeedback(0);
  v6 = MEMORY[0x1EEE9AC00](started);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC1FB0, &qword_1B967F458);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, started);
  v25 = a1;
  sub_1B8F1B8B8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v10, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    sub_1B8FAC528();
    sub_1B8FAC528();
    if (swift_getEnumCaseMultiPayload() == 12)
    {
      sub_1B8D9207C(v18, &qword_1EBAC1FB0, &qword_1B967F458);
      sub_1B8FAC528();
      sub_1B8FAC528();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, started);
    }

    else
    {
      sub_1B8FAC5C8();
    }
  }

  sub_1B8CD2450(&qword_1EBAC1710, type metadata accessor for Apple_Parsec_Feedback_V2_StartSearchFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_StartSearchFeedback);
  v19 = v29;
  sub_1B964C580();
  if (v19)
  {
    v20 = v18;
    return sub_1B8D9207C(v20, &qword_1EBAC1FB0, &qword_1B967F458);
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v16, 1, started) == 1)
  {
    sub_1B8D9207C(v18, &qword_1EBAC1FB0, &qword_1B967F458);
    v20 = v16;
    return sub_1B8D9207C(v20, &qword_1EBAC1FB0, &qword_1B967F458);
  }

  sub_1B8FAC528();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v22 = v27;
  sub_1B8D9207C(v18, &qword_1EBAC1FB0, &qword_1B967F458);
  v23 = v25;
  sub_1B8D9207C(v25, &qword_1EBAB9148, &unk_1B964D930);
  sub_1B8FAC528();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_1B8FEA824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_EndSearchFeedback(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC1FB8, &qword_1B967F460);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_1B8F1B8B8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v10, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    sub_1B8FAC528();
    sub_1B8FAC528();
    if (swift_getEnumCaseMultiPayload() == 13)
    {
      sub_1B8D9207C(v18, &qword_1EBAC1FB8, &qword_1B967F460);
      sub_1B8FAC528();
      sub_1B8FAC528();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_1B8FAC5C8();
    }
  }

  sub_1B8CD2450(&qword_1EBAC1728, type metadata accessor for Apple_Parsec_Feedback_V2_EndSearchFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_EndSearchFeedback);
  v19 = v29;
  sub_1B964C580();
  if (v19)
  {
    v20 = v18;
    return sub_1B8D9207C(v20, &qword_1EBAC1FB8, &qword_1B967F460);
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_1B8D9207C(v18, &qword_1EBAC1FB8, &qword_1B967F460);
    v20 = v16;
    return sub_1B8D9207C(v20, &qword_1EBAC1FB8, &qword_1B967F460);
  }

  sub_1B8FAC528();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v22 = v27;
  sub_1B8D9207C(v18, &qword_1EBAC1FB8, &qword_1B967F460);
  v23 = v25;
  sub_1B8D9207C(v25, &qword_1EBAB9148, &unk_1B964D930);
  sub_1B8FAC528();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_1B8FEAD1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  started = type metadata accessor for Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback(0);
  v6 = MEMORY[0x1EEE9AC00](started);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC1FC0, &qword_1B967F468);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, started);
  v25 = a1;
  sub_1B8F1B8B8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v10, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    sub_1B8FAC528();
    sub_1B8FAC528();
    if (swift_getEnumCaseMultiPayload() == 14)
    {
      sub_1B8D9207C(v18, &qword_1EBAC1FC0, &qword_1B967F468);
      sub_1B8FAC528();
      sub_1B8FAC528();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, started);
    }

    else
    {
      sub_1B8FAC5C8();
    }
  }

  sub_1B8CD2450(&qword_1EBAB5958, type metadata accessor for Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback);
  v19 = v29;
  sub_1B964C580();
  if (v19)
  {
    v20 = v18;
    return sub_1B8D9207C(v20, &qword_1EBAC1FC0, &qword_1B967F468);
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v16, 1, started) == 1)
  {
    sub_1B8D9207C(v18, &qword_1EBAC1FC0, &qword_1B967F468);
    v20 = v16;
    return sub_1B8D9207C(v20, &qword_1EBAC1FC0, &qword_1B967F468);
  }

  sub_1B8FAC528();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v22 = v27;
  sub_1B8D9207C(v18, &qword_1EBAC1FC0, &qword_1B967F468);
  v23 = v25;
  sub_1B8D9207C(v25, &qword_1EBAB9148, &unk_1B964D930);
  sub_1B8FAC528();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_1B8FEB214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_EndNetworkSearchFeedback(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC1FC8, &qword_1B967F470);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_1B8F1B8B8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v10, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    sub_1B8FAC528();
    sub_1B8FAC528();
    if (swift_getEnumCaseMultiPayload() == 15)
    {
      sub_1B8D9207C(v18, &qword_1EBAC1FC8, &qword_1B967F470);
      sub_1B8FAC528();
      sub_1B8FAC528();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_1B8FAC5C8();
    }
  }

  sub_1B8CD2450(&qword_1EBAB5978, type metadata accessor for Apple_Parsec_Feedback_V2_EndNetworkSearchFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_EndNetworkSearchFeedback);
  v19 = v29;
  sub_1B964C580();
  if (v19)
  {
    v20 = v18;
    return sub_1B8D9207C(v20, &qword_1EBAC1FC8, &qword_1B967F470);
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_1B8D9207C(v18, &qword_1EBAC1FC8, &qword_1B967F470);
    v20 = v16;
    return sub_1B8D9207C(v20, &qword_1EBAC1FC8, &qword_1B967F470);
  }

  sub_1B8FAC528();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v22 = v27;
  sub_1B8D9207C(v18, &qword_1EBAC1FC8, &qword_1B967F470);
  v23 = v25;
  sub_1B8D9207C(v25, &qword_1EBAB9148, &unk_1B964D930);
  sub_1B8FAC528();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_1B8FEB70C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  started = type metadata accessor for Apple_Parsec_Feedback_V2_StartLocalSearchFeedback(0);
  v6 = MEMORY[0x1EEE9AC00](started);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC1FD0, &qword_1B967F478);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, started);
  v25 = a1;
  sub_1B8F1B8B8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v10, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    sub_1B8FAC528();
    sub_1B8FAC528();
    if (swift_getEnumCaseMultiPayload() == 16)
    {
      sub_1B8D9207C(v18, &qword_1EBAC1FD0, &qword_1B967F478);
      sub_1B8FAC528();
      sub_1B8FAC528();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, started);
    }

    else
    {
      sub_1B8FAC5C8();
    }
  }

  sub_1B8CD2450(&qword_1EBAC1780, type metadata accessor for Apple_Parsec_Feedback_V2_StartLocalSearchFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_StartLocalSearchFeedback);
  v19 = v29;
  sub_1B964C580();
  if (v19)
  {
    v20 = v18;
    return sub_1B8D9207C(v20, &qword_1EBAC1FD0, &qword_1B967F478);
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v16, 1, started) == 1)
  {
    sub_1B8D9207C(v18, &qword_1EBAC1FD0, &qword_1B967F478);
    v20 = v16;
    return sub_1B8D9207C(v20, &qword_1EBAC1FD0, &qword_1B967F478);
  }

  sub_1B8FAC528();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v22 = v27;
  sub_1B8D9207C(v18, &qword_1EBAC1FD0, &qword_1B967F478);
  v23 = v25;
  sub_1B8D9207C(v25, &qword_1EBAB9148, &unk_1B964D930);
  sub_1B8FAC528();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_1B8FEBC04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_EndLocalSearchFeedback(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC1FD8, &qword_1B967F480);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_1B8F1B8B8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v10, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    sub_1B8FAC528();
    sub_1B8FAC528();
    if (swift_getEnumCaseMultiPayload() == 17)
    {
      sub_1B8D9207C(v18, &qword_1EBAC1FD8, &qword_1B967F480);
      sub_1B8FAC528();
      sub_1B8FAC528();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_1B8FAC5C8();
    }
  }

  sub_1B8CD2450(&qword_1EBAC17A8, type metadata accessor for Apple_Parsec_Feedback_V2_EndLocalSearchFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_EndLocalSearchFeedback);
  v19 = v29;
  sub_1B964C580();
  if (v19)
  {
    v20 = v18;
    return sub_1B8D9207C(v20, &qword_1EBAC1FD8, &qword_1B967F480);
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_1B8D9207C(v18, &qword_1EBAC1FD8, &qword_1B967F480);
    v20 = v16;
    return sub_1B8D9207C(v20, &qword_1EBAC1FD8, &qword_1B967F480);
  }

  sub_1B8FAC528();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v22 = v27;
  sub_1B8D9207C(v18, &qword_1EBAC1FD8, &qword_1B967F480);
  v23 = v25;
  sub_1B8D9207C(v25, &qword_1EBAB9148, &unk_1B964D930);
  sub_1B8FAC528();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_1B8FEC0FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_ErrorFeedback(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC1FE0, &qword_1B967F488);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_1B8F1B8B8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v10, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    sub_1B8FAC528();
    sub_1B8FAC528();
    if (swift_getEnumCaseMultiPayload() == 18)
    {
      sub_1B8D9207C(v18, &qword_1EBAC1FE0, &qword_1B967F488);
      sub_1B8FAC528();
      sub_1B8FAC528();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_1B8FAC5C8();
    }
  }

  sub_1B8CD2450(&qword_1EBAB59E8, type metadata accessor for Apple_Parsec_Feedback_V2_ErrorFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_ErrorFeedback);
  v19 = v29;
  sub_1B964C580();
  if (v19)
  {
    v20 = v18;
    return sub_1B8D9207C(v20, &qword_1EBAC1FE0, &qword_1B967F488);
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_1B8D9207C(v18, &qword_1EBAC1FE0, &qword_1B967F488);
    v20 = v16;
    return sub_1B8D9207C(v20, &qword_1EBAC1FE0, &qword_1B967F488);
  }

  sub_1B8FAC528();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v22 = v27;
  sub_1B8D9207C(v18, &qword_1EBAC1FE0, &qword_1B967F488);
  v23 = v25;
  sub_1B8D9207C(v25, &qword_1EBAB9148, &unk_1B964D930);
  sub_1B8FAC528();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_1B8FEC5F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_CustomFeedback(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC1FE8, &qword_1B967F490);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_1B8F1B8B8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v10, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    sub_1B8FAC528();
    sub_1B8FAC528();
    if (swift_getEnumCaseMultiPayload() == 19)
    {
      sub_1B8D9207C(v18, &qword_1EBAC1FE8, &qword_1B967F490);
      sub_1B8FAC528();
      sub_1B8FAC528();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_1B8FAC5C8();
    }
  }

  sub_1B8CD2450(&qword_1EBAC17E0, type metadata accessor for Apple_Parsec_Feedback_V2_CustomFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_CustomFeedback);
  v19 = v29;
  sub_1B964C580();
  if (v19)
  {
    v20 = v18;
    return sub_1B8D9207C(v20, &qword_1EBAC1FE8, &qword_1B967F490);
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_1B8D9207C(v18, &qword_1EBAC1FE8, &qword_1B967F490);
    v20 = v16;
    return sub_1B8D9207C(v20, &qword_1EBAC1FE8, &qword_1B967F490);
  }

  sub_1B8FAC528();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v22 = v27;
  sub_1B8D9207C(v18, &qword_1EBAC1FE8, &qword_1B967F490);
  v23 = v25;
  sub_1B8D9207C(v25, &qword_1EBAB9148, &unk_1B964D930);
  sub_1B8FAC528();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_1B8FECAEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_SuggestionEngagementFeedback(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC1FF0, &qword_1B967F498);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_1B8F1B8B8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v10, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    sub_1B8FAC528();
    sub_1B8FAC528();
    if (swift_getEnumCaseMultiPayload() == 20)
    {
      sub_1B8D9207C(v18, &qword_1EBAC1FF0, &qword_1B967F498);
      sub_1B8FAC528();
      sub_1B8FAC528();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_1B8FAC5C8();
    }
  }

  sub_1B8CD2450(&qword_1EBAC17F8, type metadata accessor for Apple_Parsec_Feedback_V2_SuggestionEngagementFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_SuggestionEngagementFeedback);
  v19 = v29;
  sub_1B964C580();
  if (v19)
  {
    v20 = v18;
    return sub_1B8D9207C(v20, &qword_1EBAC1FF0, &qword_1B967F498);
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_1B8D9207C(v18, &qword_1EBAC1FF0, &qword_1B967F498);
    v20 = v16;
    return sub_1B8D9207C(v20, &qword_1EBAC1FF0, &qword_1B967F498);
  }

  sub_1B8FAC528();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v22 = v27;
  sub_1B8D9207C(v18, &qword_1EBAC1FF0, &qword_1B967F498);
  v23 = v25;
  sub_1B8D9207C(v25, &qword_1EBAB9148, &unk_1B964D930);
  sub_1B8FAC528();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_1B8FECFE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_CardViewDisappearFeedback(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC1FF8, &qword_1B967F4A0);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_1B8F1B8B8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v10, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    sub_1B8FAC528();
    sub_1B8FAC528();
    if (swift_getEnumCaseMultiPayload() == 21)
    {
      sub_1B8D9207C(v18, &qword_1EBAC1FF8, &qword_1B967F4A0);
      sub_1B8FAC528();
      sub_1B8FAC528();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_1B8FAC5C8();
    }
  }

  sub_1B8CD2450(&qword_1EBAC1810, type metadata accessor for Apple_Parsec_Feedback_V2_CardViewDisappearFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_CardViewDisappearFeedback);
  v19 = v29;
  sub_1B964C580();
  if (v19)
  {
    v20 = v18;
    return sub_1B8D9207C(v20, &qword_1EBAC1FF8, &qword_1B967F4A0);
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_1B8D9207C(v18, &qword_1EBAC1FF8, &qword_1B967F4A0);
    v20 = v16;
    return sub_1B8D9207C(v20, &qword_1EBAC1FF8, &qword_1B967F4A0);
  }

  sub_1B8FAC528();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v22 = v27;
  sub_1B8D9207C(v18, &qword_1EBAC1FF8, &qword_1B967F4A0);
  v23 = v25;
  sub_1B8D9207C(v25, &qword_1EBAB9148, &unk_1B964D930);
  sub_1B8FAC528();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_1B8FED4DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_VisibleSuggestionsFeedback(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2000, &qword_1B967F4A8);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_1B8F1B8B8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v10, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    sub_1B8FAC528();
    sub_1B8FAC528();
    if (swift_getEnumCaseMultiPayload() == 22)
    {
      sub_1B8D9207C(v18, &qword_1EBAC2000, &qword_1B967F4A8);
      sub_1B8FAC528();
      sub_1B8FAC528();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_1B8FAC5C8();
    }
  }

  sub_1B8CD2450(&qword_1EBAC1840, type metadata accessor for Apple_Parsec_Feedback_V2_VisibleSuggestionsFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_VisibleSuggestionsFeedback);
  v19 = v29;
  sub_1B964C580();
  if (v19)
  {
    v20 = v18;
    return sub_1B8D9207C(v20, &qword_1EBAC2000, &qword_1B967F4A8);
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_1B8D9207C(v18, &qword_1EBAC2000, &qword_1B967F4A8);
    v20 = v16;
    return sub_1B8D9207C(v20, &qword_1EBAC2000, &qword_1B967F4A8);
  }

  sub_1B8FAC528();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v22 = v27;
  sub_1B8D9207C(v18, &qword_1EBAC2000, &qword_1B967F4A8);
  v23 = v25;
  sub_1B8D9207C(v25, &qword_1EBAB9148, &unk_1B964D930);
  sub_1B8FAC528();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_1B8FED9D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_ResultsReceivedAfterTimeoutFeedback(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2008, &qword_1B967F4B0);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_1B8F1B8B8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v10, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    sub_1B8FAC528();
    sub_1B8FAC528();
    if (swift_getEnumCaseMultiPayload() == 23)
    {
      sub_1B8D9207C(v18, &qword_1EBAC2008, &qword_1B967F4B0);
      sub_1B8FAC528();
      sub_1B8FAC528();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_1B8FAC5C8();
    }
  }

  sub_1B8CD2450(&qword_1EBAC1858, type metadata accessor for Apple_Parsec_Feedback_V2_ResultsReceivedAfterTimeoutFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_ResultsReceivedAfterTimeoutFeedback);
  v19 = v29;
  sub_1B964C580();
  if (v19)
  {
    v20 = v18;
    return sub_1B8D9207C(v20, &qword_1EBAC2008, &qword_1B967F4B0);
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_1B8D9207C(v18, &qword_1EBAC2008, &qword_1B967F4B0);
    v20 = v16;
    return sub_1B8D9207C(v20, &qword_1EBAC2008, &qword_1B967F4B0);
  }

  sub_1B8FAC528();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v22 = v27;
  sub_1B8D9207C(v18, &qword_1EBAC2008, &qword_1B967F4B0);
  v23 = v25;
  sub_1B8D9207C(v25, &qword_1EBAB9148, &unk_1B964D930);
  sub_1B8FAC528();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_1B8FEDECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_LateSectionsAppendedFeedback(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2010, &qword_1B967F4B8);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_1B8F1B8B8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v10, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    sub_1B8FAC528();
    sub_1B8FAC528();
    if (swift_getEnumCaseMultiPayload() == 24)
    {
      sub_1B8D9207C(v18, &qword_1EBAC2010, &qword_1B967F4B8);
      sub_1B8FAC528();
      sub_1B8FAC528();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_1B8FAC5C8();
    }
  }

  sub_1B8CD2450(&qword_1EBAC1870, type metadata accessor for Apple_Parsec_Feedback_V2_LateSectionsAppendedFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_LateSectionsAppendedFeedback);
  v19 = v29;
  sub_1B964C580();
  if (v19)
  {
    v20 = v18;
    return sub_1B8D9207C(v20, &qword_1EBAC2010, &qword_1B967F4B8);
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_1B8D9207C(v18, &qword_1EBAC2010, &qword_1B967F4B8);
    v20 = v16;
    return sub_1B8D9207C(v20, &qword_1EBAC2010, &qword_1B967F4B8);
  }

  sub_1B8FAC528();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v22 = v27;
  sub_1B8D9207C(v18, &qword_1EBAC2010, &qword_1B967F4B8);
  v23 = v25;
  sub_1B8D9207C(v25, &qword_1EBAB9148, &unk_1B964D930);
  sub_1B8FAC528();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_1B8FEE3C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_ClearInputFeedback(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2018, &qword_1B967F4C0);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_1B8F1B8B8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v10, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    sub_1B8FAC528();
    sub_1B8FAC528();
    if (swift_getEnumCaseMultiPayload() == 25)
    {
      sub_1B8D9207C(v18, &qword_1EBAC2018, &qword_1B967F4C0);
      sub_1B8FAC528();
      sub_1B8FAC528();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_1B8FAC5C8();
    }
  }

  sub_1B8CD2450(&qword_1EBAC1888, type metadata accessor for Apple_Parsec_Feedback_V2_ClearInputFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_ClearInputFeedback);
  v19 = v29;
  sub_1B964C580();
  if (v19)
  {
    v20 = v18;
    return sub_1B8D9207C(v20, &qword_1EBAC2018, &qword_1B967F4C0);
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_1B8D9207C(v18, &qword_1EBAC2018, &qword_1B967F4C0);
    v20 = v16;
    return sub_1B8D9207C(v20, &qword_1EBAC2018, &qword_1B967F4C0);
  }

  sub_1B8FAC528();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v22 = v27;
  sub_1B8D9207C(v18, &qword_1EBAC2018, &qword_1B967F4C0);
  v23 = v25;
  sub_1B8D9207C(v25, &qword_1EBAB9148, &unk_1B964D930);
  sub_1B8FAC528();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_1B8FEE8BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_SectionEngagementFeedback(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2020, &qword_1B967F4C8);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_1B8F1B8B8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v10, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    sub_1B8FAC528();
    sub_1B8FAC528();
    if (swift_getEnumCaseMultiPayload() == 26)
    {
      sub_1B8D9207C(v18, &qword_1EBAC2020, &qword_1B967F4C8);
      sub_1B8FAC528();
      sub_1B8FAC528();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_1B8FAC5C8();
    }
  }

  sub_1B8CD2450(&qword_1EBAC18A0, type metadata accessor for Apple_Parsec_Feedback_V2_SectionEngagementFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_SectionEngagementFeedback);
  v19 = v29;
  sub_1B964C580();
  if (v19)
  {
    v20 = v18;
    return sub_1B8D9207C(v20, &qword_1EBAC2020, &qword_1B967F4C8);
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_1B8D9207C(v18, &qword_1EBAC2020, &qword_1B967F4C8);
    v20 = v16;
    return sub_1B8D9207C(v20, &qword_1EBAC2020, &qword_1B967F4C8);
  }

  sub_1B8FAC528();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v22 = v27;
  sub_1B8D9207C(v18, &qword_1EBAC2020, &qword_1B967F4C8);
  v23 = v25;
  sub_1B8D9207C(v25, &qword_1EBAB9148, &unk_1B964D930);
  sub_1B8FAC528();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_1B8FEEDB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_VisibleSectionHeaderFeedback(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2028, &qword_1B967F4D0);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_1B8F1B8B8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v10, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    sub_1B8FAC528();
    sub_1B8FAC528();
    if (swift_getEnumCaseMultiPayload() == 27)
    {
      sub_1B8D9207C(v18, &qword_1EBAC2028, &qword_1B967F4D0);
      sub_1B8FAC528();
      sub_1B8FAC528();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_1B8FAC5C8();
    }
  }

  sub_1B8CD2450(&qword_1EBAC18B8, type metadata accessor for Apple_Parsec_Feedback_V2_VisibleSectionHeaderFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_VisibleSectionHeaderFeedback);
  v19 = v29;
  sub_1B964C580();
  if (v19)
  {
    v20 = v18;
    return sub_1B8D9207C(v20, &qword_1EBAC2028, &qword_1B967F4D0);
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_1B8D9207C(v18, &qword_1EBAC2028, &qword_1B967F4D0);
    v20 = v16;
    return sub_1B8D9207C(v20, &qword_1EBAC2028, &qword_1B967F4D0);
  }

  sub_1B8FAC528();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v22 = v27;
  sub_1B8D9207C(v18, &qword_1EBAC2028, &qword_1B967F4D0);
  v23 = v25;
  sub_1B8D9207C(v25, &qword_1EBAB9148, &unk_1B964D930);
  sub_1B8FAC528();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_1B8FEF2AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_DidGoToSiteFeedback(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2030, &qword_1B967F4D8);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_1B8F1B8B8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v10, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    sub_1B8FAC528();
    sub_1B8FAC528();
    if (swift_getEnumCaseMultiPayload() == 28)
    {
      sub_1B8D9207C(v18, &qword_1EBAC2030, &qword_1B967F4D8);
      sub_1B8FAC528();
      sub_1B8FAC528();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_1B8FAC5C8();
    }
  }

  sub_1B8CD2450(&qword_1EBAC18D0, type metadata accessor for Apple_Parsec_Feedback_V2_DidGoToSiteFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_DidGoToSiteFeedback);
  v19 = v29;
  sub_1B964C580();
  if (v19)
  {
    v20 = v18;
    return sub_1B8D9207C(v20, &qword_1EBAC2030, &qword_1B967F4D8);
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_1B8D9207C(v18, &qword_1EBAC2030, &qword_1B967F4D8);
    v20 = v16;
    return sub_1B8D9207C(v20, &qword_1EBAC2030, &qword_1B967F4D8);
  }

  sub_1B8FAC528();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v22 = v27;
  sub_1B8D9207C(v18, &qword_1EBAC2030, &qword_1B967F4D8);
  v23 = v25;
  sub_1B8D9207C(v25, &qword_1EBAB9148, &unk_1B964D930);
  sub_1B8FAC528();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_1B8FEF7A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_DidGoToSearchFeedback(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2038, &qword_1B967F4E0);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_1B8F1B8B8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v10, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    sub_1B8FAC528();
    sub_1B8FAC528();
    if (swift_getEnumCaseMultiPayload() == 29)
    {
      sub_1B8D9207C(v18, &qword_1EBAC2038, &qword_1B967F4E0);
      sub_1B8FAC528();
      sub_1B8FAC528();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_1B8FAC5C8();
    }
  }

  sub_1B8CD2450(&qword_1EBAC18E8, type metadata accessor for Apple_Parsec_Feedback_V2_DidGoToSearchFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_DidGoToSearchFeedback);
  v19 = v29;
  sub_1B964C580();
  if (v19)
  {
    v20 = v18;
    return sub_1B8D9207C(v20, &qword_1EBAC2038, &qword_1B967F4E0);
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_1B8D9207C(v18, &qword_1EBAC2038, &qword_1B967F4E0);
    v20 = v16;
    return sub_1B8D9207C(v20, &qword_1EBAC2038, &qword_1B967F4E0);
  }

  sub_1B8FAC528();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v22 = v27;
  sub_1B8D9207C(v18, &qword_1EBAC2038, &qword_1B967F4E0);
  v23 = v25;
  sub_1B8D9207C(v25, &qword_1EBAB9148, &unk_1B964D930);
  sub_1B8FAC528();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_1B8FEFC9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_SessionMissingResultsFeedback(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2040, &qword_1B967F4E8);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_1B8F1B8B8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v10, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    sub_1B8FAC528();
    sub_1B8FAC528();
    if (swift_getEnumCaseMultiPayload() == 30)
    {
      sub_1B8D9207C(v18, &qword_1EBAC2040, &qword_1B967F4E8);
      sub_1B8FAC528();
      sub_1B8FAC528();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_1B8FAC5C8();
    }
  }

  sub_1B8CD2450(&qword_1EBAC1900, type metadata accessor for Apple_Parsec_Feedback_V2_SessionMissingResultsFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_SessionMissingResultsFeedback);
  v19 = v29;
  sub_1B964C580();
  if (v19)
  {
    v20 = v18;
    return sub_1B8D9207C(v20, &qword_1EBAC2040, &qword_1B967F4E8);
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_1B8D9207C(v18, &qword_1EBAC2040, &qword_1B967F4E8);
    v20 = v16;
    return sub_1B8D9207C(v20, &qword_1EBAC2040, &qword_1B967F4E8);
  }

  sub_1B8FAC528();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v22 = v27;
  sub_1B8D9207C(v18, &qword_1EBAC2040, &qword_1B967F4E8);
  v23 = v25;
  sub_1B8D9207C(v25, &qword_1EBAB9148, &unk_1B964D930);
  sub_1B8FAC528();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_1B8FF0194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_SessionMissingSuggestionsFeedback(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2048, &qword_1B967F4F0);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_1B8F1B8B8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v10, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    sub_1B8FAC528();
    sub_1B8FAC528();
    if (swift_getEnumCaseMultiPayload() == 31)
    {
      sub_1B8D9207C(v18, &qword_1EBAC2048, &qword_1B967F4F0);
      sub_1B8FAC528();
      sub_1B8FAC528();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_1B8FAC5C8();
    }
  }

  sub_1B8CD2450(&qword_1EBAC1918, type metadata accessor for Apple_Parsec_Feedback_V2_SessionMissingSuggestionsFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_SessionMissingSuggestionsFeedback);
  v19 = v29;
  sub_1B964C580();
  if (v19)
  {
    v20 = v18;
    return sub_1B8D9207C(v20, &qword_1EBAC2048, &qword_1B967F4F0);
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_1B8D9207C(v18, &qword_1EBAC2048, &qword_1B967F4F0);
    v20 = v16;
    return sub_1B8D9207C(v20, &qword_1EBAC2048, &qword_1B967F4F0);
  }

  sub_1B8FAC528();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v22 = v27;
  sub_1B8D9207C(v18, &qword_1EBAC2048, &qword_1B967F4F0);
  v23 = v25;
  sub_1B8D9207C(v25, &qword_1EBAB9148, &unk_1B964D930);
  sub_1B8FAC528();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_1B8FF068C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_ResultGradingFeedback(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2050, &qword_1B967F4F8);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_1B8F1B8B8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v10, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    sub_1B8FAC528();
    sub_1B8FAC528();
    if (swift_getEnumCaseMultiPayload() == 32)
    {
      sub_1B8D9207C(v18, &qword_1EBAC2050, &qword_1B967F4F8);
      sub_1B8FAC528();
      sub_1B8FAC528();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_1B8FAC5C8();
    }
  }

  sub_1B8CD2450(&qword_1EBAC1930, type metadata accessor for Apple_Parsec_Feedback_V2_ResultGradingFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_ResultGradingFeedback);
  v19 = v29;
  sub_1B964C580();
  if (v19)
  {
    v20 = v18;
    return sub_1B8D9207C(v20, &qword_1EBAC2050, &qword_1B967F4F8);
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_1B8D9207C(v18, &qword_1EBAC2050, &qword_1B967F4F8);
    v20 = v16;
    return sub_1B8D9207C(v20, &qword_1EBAC2050, &qword_1B967F4F8);
  }

  sub_1B8FAC528();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v22 = v27;
  sub_1B8D9207C(v18, &qword_1EBAC2050, &qword_1B967F4F8);
  v23 = v25;
  sub_1B8D9207C(v25, &qword_1EBAB9148, &unk_1B964D930);
  sub_1B8FAC528();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_1B8FF0B84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_LookupHintRelevancyFeedback(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2058, &qword_1B967F500);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_1B8F1B8B8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v10, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    sub_1B8FAC528();
    sub_1B8FAC528();
    if (swift_getEnumCaseMultiPayload() == 33)
    {
      sub_1B8D9207C(v18, &qword_1EBAC2058, &qword_1B967F500);
      sub_1B8FAC528();
      sub_1B8FAC528();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_1B8FAC5C8();
    }
  }

  sub_1B8CD2450(&qword_1EBAC1958, type metadata accessor for Apple_Parsec_Feedback_V2_LookupHintRelevancyFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_LookupHintRelevancyFeedback);
  v19 = v29;
  sub_1B964C580();
  if (v19)
  {
    v20 = v18;
    return sub_1B8D9207C(v20, &qword_1EBAC2058, &qword_1B967F500);
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_1B8D9207C(v18, &qword_1EBAC2058, &qword_1B967F500);
    v20 = v16;
    return sub_1B8D9207C(v20, &qword_1EBAC2058, &qword_1B967F500);
  }

  sub_1B8FAC528();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v22 = v27;
  sub_1B8D9207C(v18, &qword_1EBAC2058, &qword_1B967F500);
  v23 = v25;
  sub_1B8D9207C(v25, &qword_1EBAB9148, &unk_1B964D930);
  sub_1B8FAC528();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_1B8FF107C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_ConnectionInvalidatedFeedback(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2060, &qword_1B967F508);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_1B8F1B8B8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v10, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    sub_1B8FAC528();
    sub_1B8FAC528();
    if (swift_getEnumCaseMultiPayload() == 34)
    {
      sub_1B8D9207C(v18, &qword_1EBAC2060, &qword_1B967F508);
      sub_1B8FAC528();
      sub_1B8FAC528();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_1B8FAC5C8();
    }
  }

  sub_1B8CD2450(&qword_1EBAC1970, type metadata accessor for Apple_Parsec_Feedback_V2_ConnectionInvalidatedFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_ConnectionInvalidatedFeedback);
  v19 = v29;
  sub_1B964C580();
  if (v19)
  {
    v20 = v18;
    return sub_1B8D9207C(v20, &qword_1EBAC2060, &qword_1B967F508);
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_1B8D9207C(v18, &qword_1EBAC2060, &qword_1B967F508);
    v20 = v16;
    return sub_1B8D9207C(v20, &qword_1EBAC2060, &qword_1B967F508);
  }

  sub_1B8FAC528();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v22 = v27;
  sub_1B8D9207C(v18, &qword_1EBAC2060, &qword_1B967F508);
  v23 = v25;
  sub_1B8D9207C(v25, &qword_1EBAB9148, &unk_1B964D930);
  sub_1B8FAC528();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_1B8FF1574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionEngagementFeedback(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2068, &qword_1B967F510);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_1B8F1B8B8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v10, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    sub_1B8FAC528();
    sub_1B8FAC528();
    if (swift_getEnumCaseMultiPayload() == 35)
    {
      sub_1B8D9207C(v18, &qword_1EBAC2068, &qword_1B967F510);
      sub_1B8FAC528();
      sub_1B8FAC528();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_1B8FAC5C8();
    }
  }

  sub_1B8CD2450(&qword_1EBAC16C8, type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionEngagementFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_CardSectionEngagementFeedback);
  v19 = v29;
  sub_1B964C580();
  if (v19)
  {
    v20 = v18;
    return sub_1B8D9207C(v20, &qword_1EBAC2068, &qword_1B967F510);
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_1B8D9207C(v18, &qword_1EBAC2068, &qword_1B967F510);
    v20 = v16;
    return sub_1B8D9207C(v20, &qword_1EBAC2068, &qword_1B967F510);
  }

  sub_1B8FAC528();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v22 = v27;
  sub_1B8D9207C(v18, &qword_1EBAC2068, &qword_1B967F510);
  v23 = v25;
  sub_1B8D9207C(v25, &qword_1EBAB9148, &unk_1B964D930);
  sub_1B8FAC528();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_1B8FF1A6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_SessionEndFeedback(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2070, &qword_1B967F518);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_1B8F1B8B8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v10, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    sub_1B8FAC528();
    sub_1B8FAC528();
    if (swift_getEnumCaseMultiPayload() == 36)
    {
      sub_1B8D9207C(v18, &qword_1EBAC2070, &qword_1B967F518);
      sub_1B8FAC528();
      sub_1B8FAC528();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_1B8FAC5C8();
    }
  }

  sub_1B8CD2450(&qword_1EBAC1988, type metadata accessor for Apple_Parsec_Feedback_V2_SessionEndFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_SessionEndFeedback);
  v19 = v29;
  sub_1B964C580();
  if (v19)
  {
    v20 = v18;
    return sub_1B8D9207C(v20, &qword_1EBAC2070, &qword_1B967F518);
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_1B8D9207C(v18, &qword_1EBAC2070, &qword_1B967F518);
    v20 = v16;
    return sub_1B8D9207C(v20, &qword_1EBAC2070, &qword_1B967F518);
  }

  sub_1B8FAC528();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v22 = v27;
  sub_1B8D9207C(v18, &qword_1EBAC2070, &qword_1B967F518);
  v23 = v25;
  sub_1B8D9207C(v25, &qword_1EBAB9148, &unk_1B964D930);
  sub_1B8FAC528();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_1B8FF1F64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_CardViewAppearFeedback(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2078, &qword_1B967F520);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_1B8F1B8B8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v10, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    sub_1B8FAC528();
    sub_1B8FAC528();
    if (swift_getEnumCaseMultiPayload() == 37)
    {
      sub_1B8D9207C(v18, &qword_1EBAC2078, &qword_1B967F520);
      sub_1B8FAC528();
      sub_1B8FAC528();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_1B8FAC5C8();
    }
  }

  sub_1B8CD2450(&qword_1EBAC1828, type metadata accessor for Apple_Parsec_Feedback_V2_CardViewAppearFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_CardViewAppearFeedback);
  v19 = v29;
  sub_1B964C580();
  if (v19)
  {
    v20 = v18;
    return sub_1B8D9207C(v20, &qword_1EBAC2078, &qword_1B967F520);
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_1B8D9207C(v18, &qword_1EBAC2078, &qword_1B967F520);
    v20 = v16;
    return sub_1B8D9207C(v20, &qword_1EBAC2078, &qword_1B967F520);
  }

  sub_1B8FAC528();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v22 = v27;
  sub_1B8D9207C(v18, &qword_1EBAC2078, &qword_1B967F520);
  v23 = v25;
  sub_1B8D9207C(v25, &qword_1EBAB9148, &unk_1B964D930);
  sub_1B8FAC528();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_1B8FF245C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_SkipSearchFeedback(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2080, &qword_1B967F528);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_1B8F1B8B8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v10, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    sub_1B8FAC528();
    sub_1B8FAC528();
    if (swift_getEnumCaseMultiPayload() == 38)
    {
      sub_1B8D9207C(v18, &qword_1EBAC2080, &qword_1B967F528);
      sub_1B8FAC528();
      sub_1B8FAC528();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_1B8FAC5C8();
    }
  }

  sub_1B8CD2450(&qword_1EBAC19C8, type metadata accessor for Apple_Parsec_Feedback_V2_SkipSearchFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_SkipSearchFeedback);
  v19 = v29;
  sub_1B964C580();
  if (v19)
  {
    v20 = v18;
    return sub_1B8D9207C(v20, &qword_1EBAC2080, &qword_1B967F528);
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_1B8D9207C(v18, &qword_1EBAC2080, &qword_1B967F528);
    v20 = v16;
    return sub_1B8D9207C(v20, &qword_1EBAC2080, &qword_1B967F528);
  }

  sub_1B8FAC528();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v22 = v27;
  sub_1B8D9207C(v18, &qword_1EBAC2080, &qword_1B967F528);
  v23 = v25;
  sub_1B8D9207C(v25, &qword_1EBAB9148, &unk_1B964D930);
  sub_1B8FAC528();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_1B8FF2954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_CacheHitFeedback(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2088, &qword_1B967F530);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_1B8F1B8B8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v10, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    sub_1B8FAC528();
    sub_1B8FAC528();
    if (swift_getEnumCaseMultiPayload() == 39)
    {
      sub_1B8D9207C(v18, &qword_1EBAC2088, &qword_1B967F530);
      sub_1B8FAC528();
      sub_1B8FAC528();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_1B8FAC5C8();
    }
  }

  sub_1B8CD2450(&qword_1EBAC19E0, type metadata accessor for Apple_Parsec_Feedback_V2_CacheHitFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_CacheHitFeedback);
  v19 = v29;
  sub_1B964C580();
  if (v19)
  {
    v20 = v18;
    return sub_1B8D9207C(v20, &qword_1EBAC2088, &qword_1B967F530);
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_1B8D9207C(v18, &qword_1EBAC2088, &qword_1B967F530);
    v20 = v16;
    return sub_1B8D9207C(v20, &qword_1EBAC2088, &qword_1B967F530);
  }

  sub_1B8FAC528();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v22 = v27;
  sub_1B8D9207C(v18, &qword_1EBAC2088, &qword_1B967F530);
  v23 = v25;
  sub_1B8D9207C(v25, &qword_1EBAB9148, &unk_1B964D930);
  sub_1B8FAC528();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_1B8FF2E4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_CBAEngagementFeedback(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2090, &qword_1B967F538);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_1B8F1B8B8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v10, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    sub_1B8FAC528();
    sub_1B8FAC528();
    if (swift_getEnumCaseMultiPayload() == 40)
    {
      sub_1B8D9207C(v18, &qword_1EBAC2090, &qword_1B967F538);
      sub_1B8FAC528();
      sub_1B8FAC528();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_1B8FAC5C8();
    }
  }

  sub_1B8CD2450(&qword_1EBAC1A68, type metadata accessor for Apple_Parsec_Feedback_V2_CBAEngagementFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_CBAEngagementFeedback);
  v19 = v29;
  sub_1B964C580();
  if (v19)
  {
    v20 = v18;
    return sub_1B8D9207C(v20, &qword_1EBAC2090, &qword_1B967F538);
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_1B8D9207C(v18, &qword_1EBAC2090, &qword_1B967F538);
    v20 = v16;
    return sub_1B8D9207C(v20, &qword_1EBAC2090, &qword_1B967F538);
  }

  sub_1B8FAC528();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v22 = v27;
  sub_1B8D9207C(v18, &qword_1EBAC2090, &qword_1B967F538);
  v23 = v25;
  sub_1B8D9207C(v25, &qword_1EBAB9148, &unk_1B964D930);
  sub_1B8FAC528();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_1B8FF3344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_ClientTimingFeedback(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2098, &qword_1B967F540);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_1B8F1B8B8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v10, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    sub_1B8FAC528();
    sub_1B8FAC528();
    if (swift_getEnumCaseMultiPayload() == 41)
    {
      sub_1B8D9207C(v18, &qword_1EBAC2098, &qword_1B967F540);
      sub_1B8FAC528();
      sub_1B8FAC528();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_1B8FAC5C8();
    }
  }

  sub_1B8CD2450(&qword_1EBAC19A0, type metadata accessor for Apple_Parsec_Feedback_V2_ClientTimingFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_ClientTimingFeedback);
  v19 = v29;
  sub_1B964C580();
  if (v19)
  {
    v20 = v18;
    return sub_1B8D9207C(v20, &qword_1EBAC2098, &qword_1B967F540);
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_1B8D9207C(v18, &qword_1EBAC2098, &qword_1B967F540);
    v20 = v16;
    return sub_1B8D9207C(v20, &qword_1EBAC2098, &qword_1B967F540);
  }

  sub_1B8FAC528();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v22 = v27;
  sub_1B8D9207C(v18, &qword_1EBAC2098, &qword_1B967F540);
  v23 = v25;
  sub_1B8D9207C(v25, &qword_1EBAB9148, &unk_1B964D930);
  sub_1B8FAC528();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_1B8FF383C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC20A0, &qword_1B967F548);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_1B8F1B8B8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v10, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    sub_1B8FAC528();
    sub_1B8FAC528();
    if (swift_getEnumCaseMultiPayload() == 42)
    {
      sub_1B8D9207C(v18, &qword_1EBAC20A0, &qword_1B967F548);
      sub_1B8FAC528();
      sub_1B8FAC528();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_1B8FAC5C8();
    }
  }

  sub_1B8CD2450(&qword_1EBAC15F8, type metadata accessor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback);
  v19 = v29;
  sub_1B964C580();
  if (v19)
  {
    v20 = v18;
    return sub_1B8D9207C(v20, &qword_1EBAC20A0, &qword_1B967F548);
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_1B8D9207C(v18, &qword_1EBAC20A0, &qword_1B967F548);
    v20 = v16;
    return sub_1B8D9207C(v20, &qword_1EBAC20A0, &qword_1B967F548);
  }

  sub_1B8FAC528();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v22 = v27;
  sub_1B8D9207C(v18, &qword_1EBAC20A0, &qword_1B967F548);
  v23 = v25;
  sub_1B8D9207C(v25, &qword_1EBAB9148, &unk_1B964D930);
  sub_1B8FAC528();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_1B8FF3D34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_DynamicButtonVisibilityFeedback(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC20A8, &qword_1B967F550);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_1B8F1B8B8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v10, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    sub_1B8FAC528();
    sub_1B8FAC528();
    if (swift_getEnumCaseMultiPayload() == 43)
    {
      sub_1B8D9207C(v18, &qword_1EBAC20A8, &qword_1B967F550);
      sub_1B8FAC528();
      sub_1B8FAC528();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_1B8FAC5C8();
    }
  }

  sub_1B8CD2450(&qword_1EBAC1628, type metadata accessor for Apple_Parsec_Feedback_V2_DynamicButtonVisibilityFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_DynamicButtonVisibilityFeedback);
  v19 = v29;
  sub_1B964C580();
  if (v19)
  {
    v20 = v18;
    return sub_1B8D9207C(v20, &qword_1EBAC20A8, &qword_1B967F550);
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_1B8D9207C(v18, &qword_1EBAC20A8, &qword_1B967F550);
    v20 = v16;
    return sub_1B8D9207C(v20, &qword_1EBAC20A8, &qword_1B967F550);
  }

  sub_1B8FAC528();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v22 = v27;
  sub_1B8D9207C(v18, &qword_1EBAC20A8, &qword_1B967F550);
  v23 = v25;
  sub_1B8D9207C(v25, &qword_1EBAB9148, &unk_1B964D930);
  sub_1B8FAC528();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_1B8FF422C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_ExperimentTriggeredFeedback(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC20B0, &qword_1B967F558);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_1B8F1B8B8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v10, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    sub_1B8FAC528();
    sub_1B8FAC528();
    if (swift_getEnumCaseMultiPayload() == 44)
    {
      sub_1B8D9207C(v18, &qword_1EBAC20B0, &qword_1B967F558);
      sub_1B8FAC528();
      sub_1B8FAC528();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_1B8FAC5C8();
    }
  }

  sub_1B8CD2450(&qword_1EBAC1650, type metadata accessor for Apple_Parsec_Feedback_V2_ExperimentTriggeredFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_ExperimentTriggeredFeedback);
  v19 = v29;
  sub_1B964C580();
  if (v19)
  {
    v20 = v18;
    return sub_1B8D9207C(v20, &qword_1EBAC20B0, &qword_1B967F558);
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_1B8D9207C(v18, &qword_1EBAC20B0, &qword_1B967F558);
    v20 = v16;
    return sub_1B8D9207C(v20, &qword_1EBAC20B0, &qword_1B967F558);
  }

  sub_1B8FAC528();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v22 = v27;
  sub_1B8D9207C(v18, &qword_1EBAC20B0, &qword_1B967F558);
  v23 = v25;
  sub_1B8D9207C(v25, &qword_1EBAB9148, &unk_1B964D930);
  sub_1B8FAC528();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t Apple_Parsec_Feedback_V2_FeedbackPayload.traverse<A>(visitor:)(uint64_t a1)
{
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_197();
  sub_1B8F1B8B8();
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  OUTLINED_FUNCTION_178(v1, 1, v7);
  if (!v8)
  {
    OUTLINED_FUNCTION_432();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        v97 = OUTLINED_FUNCTION_30_15();
        sub_1B8FF4CB4(v97, v98, v99, v100);
        break;
      case 2u:
        v81 = OUTLINED_FUNCTION_30_15();
        sub_1B8FF4EC8(v81, v82, v83, v84);
        break;
      case 3u:
        v89 = OUTLINED_FUNCTION_30_15();
        sub_1B8FF50DC(v89, v90, v91, v92);
        break;
      case 4u:
        v57 = OUTLINED_FUNCTION_30_15();
        sub_1B8FF52F0(v57, v58, v59, v60);
        break;
      case 5u:
        v117 = OUTLINED_FUNCTION_30_15();
        sub_1B8FF5504(v117, v118, v119, v120);
        break;
      case 6u:
        v129 = OUTLINED_FUNCTION_30_15();
        sub_1B8FF5718(v129, v130, v131, v132);
        break;
      case 7u:
        v93 = OUTLINED_FUNCTION_30_15();
        sub_1B8FF592C(v93, v94, v95, v96);
        break;
      case 8u:
        v141 = OUTLINED_FUNCTION_30_15();
        sub_1B8FF5B40(v141, v142, v143, v144);
        break;
      case 9u:
        v69 = OUTLINED_FUNCTION_30_15();
        sub_1B8FF5D54(v69, v70, v71, v72);
        break;
      case 0xAu:
        v137 = OUTLINED_FUNCTION_30_15();
        sub_1B8FF5F68(v137, v138, v139, v140);
        break;
      case 0xBu:
        v53 = OUTLINED_FUNCTION_30_15();
        sub_1B8FF617C(v53, v54, v55, v56);
        break;
      case 0xCu:
        v65 = OUTLINED_FUNCTION_30_15();
        sub_1B8FF6390(v65, v66, v67, v68);
        break;
      case 0xDu:
        v125 = OUTLINED_FUNCTION_30_15();
        sub_1B8FF65A4(v125, v126, v127, v128);
        break;
      case 0xEu:
        v45 = OUTLINED_FUNCTION_30_15();
        sub_1B8FF67B8(v45, v46, v47, v48);
        break;
      case 0xFu:
        v85 = OUTLINED_FUNCTION_30_15();
        sub_1B8FF69CC(v85, v86, v87, v88);
        break;
      case 0x10u:
        v37 = OUTLINED_FUNCTION_30_15();
        sub_1B8FF6BE0(v37, v38, v39, v40);
        break;
      case 0x11u:
        v105 = OUTLINED_FUNCTION_30_15();
        sub_1B8FF6DF4(v105, v106, v107, v108);
        break;
      case 0x12u:
        v133 = OUTLINED_FUNCTION_30_15();
        sub_1B8FF7008(v133, v134, v135, v136);
        break;
      case 0x13u:
        v161 = OUTLINED_FUNCTION_30_15();
        sub_1B8FF721C(v161, v162, v163, v164);
        break;
      case 0x14u:
        v113 = OUTLINED_FUNCTION_30_15();
        sub_1B8FF7430(v113, v114, v115, v116);
        break;
      case 0x15u:
        v121 = OUTLINED_FUNCTION_30_15();
        sub_1B8FF7644(v121, v122, v123, v124);
        break;
      case 0x16u:
        v153 = OUTLINED_FUNCTION_30_15();
        sub_1B8FF7858(v153, v154, v155, v156);
        break;
      case 0x17u:
        v169 = OUTLINED_FUNCTION_30_15();
        sub_1B8FF7A6C(v169, v170, v171, v172);
        break;
      case 0x18u:
        v77 = OUTLINED_FUNCTION_30_15();
        sub_1B8FF7C80(v77, v78, v79, v80);
        break;
      case 0x19u:
        v73 = OUTLINED_FUNCTION_30_15();
        sub_1B8FF7E94(v73, v74, v75, v76);
        break;
      case 0x1Au:
        v185 = OUTLINED_FUNCTION_30_15();
        sub_1B8FF80A8(v185, v186, v187, v188);
        break;
      case 0x1Bu:
        v29 = OUTLINED_FUNCTION_30_15();
        sub_1B8FF82BC(v29, v30, v31, v32);
        break;
      case 0x1Cu:
        v173 = OUTLINED_FUNCTION_30_15();
        sub_1B8FF84D0(v173, v174, v175, v176);
        break;
      case 0x1Du:
        v177 = OUTLINED_FUNCTION_30_15();
        sub_1B8FF86E4(v177, v178, v179, v180);
        break;
      case 0x1Eu:
        v145 = OUTLINED_FUNCTION_30_15();
        sub_1B8FF88F8(v145, v146, v147, v148);
        break;
      case 0x1Fu:
        v101 = OUTLINED_FUNCTION_30_15();
        sub_1B8FF8B0C(v101, v102, v103, v104);
        break;
      case 0x20u:
        v149 = OUTLINED_FUNCTION_30_15();
        sub_1B8FF8D20(v149, v150, v151, v152);
        break;
      case 0x21u:
        v49 = OUTLINED_FUNCTION_30_15();
        sub_1B8FF8F34(v49, v50, v51, v52);
        break;
      case 0x22u:
        v33 = OUTLINED_FUNCTION_30_15();
        sub_1B8FF9148(v33, v34, v35, v36);
        break;
      case 0x23u:
        v21 = OUTLINED_FUNCTION_30_15();
        sub_1B8FF935C(v21, v22, v23, v24);
        break;
      case 0x24u:
        v25 = OUTLINED_FUNCTION_30_15();
        sub_1B8FF9570(v25, v26, v27, v28);
        break;
      case 0x25u:
        v17 = OUTLINED_FUNCTION_30_15();
        sub_1B8FF9784(v17, v18, v19, v20);
        break;
      case 0x26u:
        v181 = OUTLINED_FUNCTION_30_15();
        sub_1B8FF9998(v181, v182, v183, v184);
        break;
      case 0x27u:
        v157 = OUTLINED_FUNCTION_30_15();
        sub_1B8FF9BAC(v157, v158, v159, v160);
        break;
      case 0x28u:
        v61 = OUTLINED_FUNCTION_30_15();
        sub_1B8FF9DC0(v61, v62, v63, v64);
        break;
      case 0x29u:
        v109 = OUTLINED_FUNCTION_30_15();
        sub_1B8FF9FD4(v109, v110, v111, v112);
        break;
      case 0x2Au:
        v165 = OUTLINED_FUNCTION_30_15();
        sub_1B8FFA1E8(v165, v166, v167, v168);
        break;
      case 0x2Bu:
        v13 = OUTLINED_FUNCTION_30_15();
        sub_1B8FFA3FC(v13, v14, v15, v16);
        break;
      case 0x2Cu:
        v41 = OUTLINED_FUNCTION_30_15();
        sub_1B8FFA610(v41, v42, v43, v44);
        break;
      default:
        v9 = OUTLINED_FUNCTION_30_15();
        sub_1B8FF4AA4(v9, v10, v11, v12);
        break;
    }

    v4 = v3;
    if (v3)
    {
      OUTLINED_FUNCTION_23_10();
      return sub_1B8FAC5C8();
    }

    OUTLINED_FUNCTION_23_10();
    sub_1B8FAC5C8();
  }

  if (!*(v2 + *(type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload(0) + 20)))
  {
    return sub_1B964C290();
  }

  OUTLINED_FUNCTION_445_0();
  result = sub_1B964C720();
  if (!v4)
  {
    return sub_1B964C290();
  }

  return result;
}

uint64_t sub_1B8FF4AA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_Feedback(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1B8F1B8B8();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1B8FAC528();
      sub_1B8CD2450(&qword_1EBAC1548, type metadata accessor for Apple_Parsec_Feedback_V2_Feedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_Feedback);
      sub_1B964C740();
      return sub_1B8FAC5C8();
    }

    result = sub_1B8FAC5C8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8FF4CB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchViewAppearFeedback(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1B8F1B8B8();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B8FAC528();
      sub_1B8CD2450(&qword_1EBAC1560, type metadata accessor for Apple_Parsec_Feedback_V2_SearchViewAppearFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_SearchViewAppearFeedback);
      sub_1B964C740();
      return sub_1B8FAC5C8();
    }

    result = sub_1B8FAC5C8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8FF4EC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchViewDisappearFeedback(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1B8F1B8B8();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1B8FAC528();
      sub_1B8CD2450(&qword_1EBAC1578, type metadata accessor for Apple_Parsec_Feedback_V2_SearchViewDisappearFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_SearchViewDisappearFeedback);
      sub_1B964C740();
      return sub_1B8FAC5C8();
    }

    result = sub_1B8FAC5C8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8FF50DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_RankingFeedback(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1B8F1B8B8();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1B8FAC528();
      sub_1B8CD2450(&qword_1EBAC1590, type metadata accessor for Apple_Parsec_Feedback_V2_RankingFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_RankingFeedback);
      sub_1B964C740();
      return sub_1B8FAC5C8();
    }

    result = sub_1B8FAC5C8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8FF52F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_SectionRankingFeedback(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1B8F1B8B8();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1B8FAC528();
      sub_1B8CD2450(&qword_1EBAC0900, type metadata accessor for Apple_Parsec_Feedback_V2_SectionRankingFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_SectionRankingFeedback);
      sub_1B964C740();
      return sub_1B8FAC5C8();
    }

    result = sub_1B8FAC5C8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8FF5504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_ResultRankingFeedback(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1B8F1B8B8();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_1B8FAC528();
      sub_1B8CD2450(&qword_1EBAC0918, type metadata accessor for Apple_Parsec_Feedback_V2_ResultRankingFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_ResultRankingFeedback);
      sub_1B964C740();
      return sub_1B8FAC5C8();
    }

    result = sub_1B8FAC5C8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8FF5718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_ResultFeedback(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1B8F1B8B8();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_1B8FAC528();
      sub_1B8CD2450(&qword_1EBAC15C8, type metadata accessor for Apple_Parsec_Feedback_V2_ResultFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_ResultFeedback);
      sub_1B964C740();
      return sub_1B8FAC5C8();
    }

    result = sub_1B8FAC5C8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8FF592C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_ResultEngagementFeedback(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1B8F1B8B8();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_1B8FAC528();
      sub_1B8CD2450(&qword_1EBAC15E0, type metadata accessor for Apple_Parsec_Feedback_V2_ResultEngagementFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_ResultEngagementFeedback);
      sub_1B964C740();
      return sub_1B8FAC5C8();
    }

    result = sub_1B8FAC5C8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8FF5B40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_VisibleResultsFeedback(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1B8F1B8B8();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_1B8FAC528();
      sub_1B8CD2450(&qword_1EBAC1610, type metadata accessor for Apple_Parsec_Feedback_V2_VisibleResultsFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_VisibleResultsFeedback);
      sub_1B964C740();
      return sub_1B8FAC5C8();
    }

    result = sub_1B8FAC5C8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8FF5D54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionFeedback(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1B8F1B8B8();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      sub_1B8FAC528();
      sub_1B8CD2450(&qword_1EBAC16B0, type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_CardSectionFeedback);
      sub_1B964C740();
      return sub_1B8FAC5C8();
    }

    result = sub_1B8FAC5C8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8FF5F68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_MapsCardSectionEngagementFeedback(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1B8F1B8B8();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      sub_1B8FAC528();
      sub_1B8CD2450(&qword_1EBAC16E0, type metadata accessor for Apple_Parsec_Feedback_V2_MapsCardSectionEngagementFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_MapsCardSectionEngagementFeedback);
      sub_1B964C740();
      return sub_1B8FAC5C8();
    }

    result = sub_1B8FAC5C8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8FF617C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedback(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1B8F1B8B8();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      sub_1B8FAC528();
      sub_1B8CD2450(&qword_1EBAC16F8, type metadata accessor for Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedback);
      sub_1B964C740();
      return sub_1B8FAC5C8();
    }

    result = sub_1B8FAC5C8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8FF6390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  started = type metadata accessor for Apple_Parsec_Feedback_V2_StartSearchFeedback(0);
  MEMORY[0x1EEE9AC00](started);
  sub_1B8F1B8B8();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 12)
    {
      sub_1B8FAC528();
      sub_1B8CD2450(&qword_1EBAC1710, type metadata accessor for Apple_Parsec_Feedback_V2_StartSearchFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_StartSearchFeedback);
      sub_1B964C740();
      return sub_1B8FAC5C8();
    }

    result = sub_1B8FAC5C8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8FF65A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_EndSearchFeedback(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1B8F1B8B8();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 13)
    {
      sub_1B8FAC528();
      sub_1B8CD2450(&qword_1EBAC1728, type metadata accessor for Apple_Parsec_Feedback_V2_EndSearchFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_EndSearchFeedback);
      sub_1B964C740();
      return sub_1B8FAC5C8();
    }

    result = sub_1B8FAC5C8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8FF67B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  started = type metadata accessor for Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback(0);
  MEMORY[0x1EEE9AC00](started);
  sub_1B8F1B8B8();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 14)
    {
      sub_1B8FAC528();
      sub_1B8CD2450(&qword_1EBAB5958, type metadata accessor for Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback);
      sub_1B964C740();
      return sub_1B8FAC5C8();
    }

    result = sub_1B8FAC5C8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8FF69CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_EndNetworkSearchFeedback(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1B8F1B8B8();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 15)
    {
      sub_1B8FAC528();
      sub_1B8CD2450(&qword_1EBAB5978, type metadata accessor for Apple_Parsec_Feedback_V2_EndNetworkSearchFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_EndNetworkSearchFeedback);
      sub_1B964C740();
      return sub_1B8FAC5C8();
    }

    result = sub_1B8FAC5C8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8FF6BE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  started = type metadata accessor for Apple_Parsec_Feedback_V2_StartLocalSearchFeedback(0);
  MEMORY[0x1EEE9AC00](started);
  sub_1B8F1B8B8();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 16)
    {
      sub_1B8FAC528();
      sub_1B8CD2450(&qword_1EBAC1780, type metadata accessor for Apple_Parsec_Feedback_V2_StartLocalSearchFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_StartLocalSearchFeedback);
      sub_1B964C740();
      return sub_1B8FAC5C8();
    }

    result = sub_1B8FAC5C8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8FF6DF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_EndLocalSearchFeedback(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1B8F1B8B8();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 17)
    {
      sub_1B8FAC528();
      sub_1B8CD2450(&qword_1EBAC17A8, type metadata accessor for Apple_Parsec_Feedback_V2_EndLocalSearchFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_EndLocalSearchFeedback);
      sub_1B964C740();
      return sub_1B8FAC5C8();
    }

    result = sub_1B8FAC5C8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8FF7008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_ErrorFeedback(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1B8F1B8B8();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 18)
    {
      sub_1B8FAC528();
      sub_1B8CD2450(&qword_1EBAB59E8, type metadata accessor for Apple_Parsec_Feedback_V2_ErrorFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_ErrorFeedback);
      sub_1B964C740();
      return sub_1B8FAC5C8();
    }

    result = sub_1B8FAC5C8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8FF721C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_CustomFeedback(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1B8F1B8B8();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 19)
    {
      sub_1B8FAC528();
      sub_1B8CD2450(&qword_1EBAC17E0, type metadata accessor for Apple_Parsec_Feedback_V2_CustomFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_CustomFeedback);
      sub_1B964C740();
      return sub_1B8FAC5C8();
    }

    result = sub_1B8FAC5C8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8FF7430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_SuggestionEngagementFeedback(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1B8F1B8B8();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 20)
    {
      sub_1B8FAC528();
      sub_1B8CD2450(&qword_1EBAC17F8, type metadata accessor for Apple_Parsec_Feedback_V2_SuggestionEngagementFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_SuggestionEngagementFeedback);
      sub_1B964C740();
      return sub_1B8FAC5C8();
    }

    result = sub_1B8FAC5C8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8FF7644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_CardViewDisappearFeedback(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1B8F1B8B8();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 21)
    {
      sub_1B8FAC528();
      sub_1B8CD2450(&qword_1EBAC1810, type metadata accessor for Apple_Parsec_Feedback_V2_CardViewDisappearFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_CardViewDisappearFeedback);
      sub_1B964C740();
      return sub_1B8FAC5C8();
    }

    result = sub_1B8FAC5C8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8FF7858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_VisibleSuggestionsFeedback(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1B8F1B8B8();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 22)
    {
      sub_1B8FAC528();
      sub_1B8CD2450(&qword_1EBAC1840, type metadata accessor for Apple_Parsec_Feedback_V2_VisibleSuggestionsFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_VisibleSuggestionsFeedback);
      sub_1B964C740();
      return sub_1B8FAC5C8();
    }

    result = sub_1B8FAC5C8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8FF7A6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_ResultsReceivedAfterTimeoutFeedback(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1B8F1B8B8();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 23)
    {
      sub_1B8FAC528();
      sub_1B8CD2450(&qword_1EBAC1858, type metadata accessor for Apple_Parsec_Feedback_V2_ResultsReceivedAfterTimeoutFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_ResultsReceivedAfterTimeoutFeedback);
      sub_1B964C740();
      return sub_1B8FAC5C8();
    }

    result = sub_1B8FAC5C8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8FF7C80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_LateSectionsAppendedFeedback(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1B8F1B8B8();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 24)
    {
      sub_1B8FAC528();
      sub_1B8CD2450(&qword_1EBAC1870, type metadata accessor for Apple_Parsec_Feedback_V2_LateSectionsAppendedFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_LateSectionsAppendedFeedback);
      sub_1B964C740();
      return sub_1B8FAC5C8();
    }

    result = sub_1B8FAC5C8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8FF7E94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_ClearInputFeedback(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1B8F1B8B8();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 25)
    {
      sub_1B8FAC528();
      sub_1B8CD2450(&qword_1EBAC1888, type metadata accessor for Apple_Parsec_Feedback_V2_ClearInputFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_ClearInputFeedback);
      sub_1B964C740();
      return sub_1B8FAC5C8();
    }

    result = sub_1B8FAC5C8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8FF80A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_SectionEngagementFeedback(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1B8F1B8B8();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 26)
    {
      sub_1B8FAC528();
      sub_1B8CD2450(&qword_1EBAC18A0, type metadata accessor for Apple_Parsec_Feedback_V2_SectionEngagementFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_SectionEngagementFeedback);
      sub_1B964C740();
      return sub_1B8FAC5C8();
    }

    result = sub_1B8FAC5C8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8FF82BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_VisibleSectionHeaderFeedback(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1B8F1B8B8();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 27)
    {
      sub_1B8FAC528();
      sub_1B8CD2450(&qword_1EBAC18B8, type metadata accessor for Apple_Parsec_Feedback_V2_VisibleSectionHeaderFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_VisibleSectionHeaderFeedback);
      sub_1B964C740();
      return sub_1B8FAC5C8();
    }

    result = sub_1B8FAC5C8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8FF84D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_DidGoToSiteFeedback(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1B8F1B8B8();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 28)
    {
      sub_1B8FAC528();
      sub_1B8CD2450(&qword_1EBAC18D0, type metadata accessor for Apple_Parsec_Feedback_V2_DidGoToSiteFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_DidGoToSiteFeedback);
      sub_1B964C740();
      return sub_1B8FAC5C8();
    }

    result = sub_1B8FAC5C8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8FF86E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_DidGoToSearchFeedback(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1B8F1B8B8();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 29)
    {
      sub_1B8FAC528();
      sub_1B8CD2450(&qword_1EBAC18E8, type metadata accessor for Apple_Parsec_Feedback_V2_DidGoToSearchFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_DidGoToSearchFeedback);
      sub_1B964C740();
      return sub_1B8FAC5C8();
    }

    result = sub_1B8FAC5C8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8FF88F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_SessionMissingResultsFeedback(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1B8F1B8B8();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 30)
    {
      sub_1B8FAC528();
      sub_1B8CD2450(&qword_1EBAC1900, type metadata accessor for Apple_Parsec_Feedback_V2_SessionMissingResultsFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_SessionMissingResultsFeedback);
      sub_1B964C740();
      return sub_1B8FAC5C8();
    }

    result = sub_1B8FAC5C8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8FF8B0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_SessionMissingSuggestionsFeedback(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1B8F1B8B8();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 31)
    {
      sub_1B8FAC528();
      sub_1B8CD2450(&qword_1EBAC1918, type metadata accessor for Apple_Parsec_Feedback_V2_SessionMissingSuggestionsFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_SessionMissingSuggestionsFeedback);
      sub_1B964C740();
      return sub_1B8FAC5C8();
    }

    result = sub_1B8FAC5C8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8FF8D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_ResultGradingFeedback(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1B8F1B8B8();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 32)
    {
      sub_1B8FAC528();
      sub_1B8CD2450(&qword_1EBAC1930, type metadata accessor for Apple_Parsec_Feedback_V2_ResultGradingFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_ResultGradingFeedback);
      sub_1B964C740();
      return sub_1B8FAC5C8();
    }

    result = sub_1B8FAC5C8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8FF8F34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_LookupHintRelevancyFeedback(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1B8F1B8B8();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 33)
    {
      sub_1B8FAC528();
      sub_1B8CD2450(&qword_1EBAC1958, type metadata accessor for Apple_Parsec_Feedback_V2_LookupHintRelevancyFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_LookupHintRelevancyFeedback);
      sub_1B964C740();
      return sub_1B8FAC5C8();
    }

    result = sub_1B8FAC5C8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8FF9148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_ConnectionInvalidatedFeedback(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1B8F1B8B8();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 34)
    {
      sub_1B8FAC528();
      sub_1B8CD2450(&qword_1EBAC1970, type metadata accessor for Apple_Parsec_Feedback_V2_ConnectionInvalidatedFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_ConnectionInvalidatedFeedback);
      sub_1B964C740();
      return sub_1B8FAC5C8();
    }

    result = sub_1B8FAC5C8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8FF935C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionEngagementFeedback(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1B8F1B8B8();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 35)
    {
      sub_1B8FAC528();
      sub_1B8CD2450(&qword_1EBAC16C8, type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionEngagementFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_CardSectionEngagementFeedback);
      sub_1B964C740();
      return sub_1B8FAC5C8();
    }

    result = sub_1B8FAC5C8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8FF9570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_SessionEndFeedback(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1B8F1B8B8();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 36)
    {
      sub_1B8FAC528();
      sub_1B8CD2450(&qword_1EBAC1988, type metadata accessor for Apple_Parsec_Feedback_V2_SessionEndFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_SessionEndFeedback);
      sub_1B964C740();
      return sub_1B8FAC5C8();
    }

    result = sub_1B8FAC5C8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8FF9784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_CardViewAppearFeedback(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1B8F1B8B8();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 37)
    {
      sub_1B8FAC528();
      sub_1B8CD2450(&qword_1EBAC1828, type metadata accessor for Apple_Parsec_Feedback_V2_CardViewAppearFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_CardViewAppearFeedback);
      sub_1B964C740();
      return sub_1B8FAC5C8();
    }

    result = sub_1B8FAC5C8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8FF9998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_SkipSearchFeedback(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1B8F1B8B8();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 38)
    {
      sub_1B8FAC528();
      sub_1B8CD2450(&qword_1EBAC19C8, type metadata accessor for Apple_Parsec_Feedback_V2_SkipSearchFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_SkipSearchFeedback);
      sub_1B964C740();
      return sub_1B8FAC5C8();
    }

    result = sub_1B8FAC5C8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8FF9BAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_CacheHitFeedback(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1B8F1B8B8();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 39)
    {
      sub_1B8FAC528();
      sub_1B8CD2450(&qword_1EBAC19E0, type metadata accessor for Apple_Parsec_Feedback_V2_CacheHitFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_CacheHitFeedback);
      sub_1B964C740();
      return sub_1B8FAC5C8();
    }

    result = sub_1B8FAC5C8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8FF9DC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_CBAEngagementFeedback(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1B8F1B8B8();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 40)
    {
      sub_1B8FAC528();
      sub_1B8CD2450(&qword_1EBAC1A68, type metadata accessor for Apple_Parsec_Feedback_V2_CBAEngagementFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_CBAEngagementFeedback);
      sub_1B964C740();
      return sub_1B8FAC5C8();
    }

    result = sub_1B8FAC5C8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8FF9FD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_ClientTimingFeedback(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1B8F1B8B8();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 41)
    {
      sub_1B8FAC528();
      sub_1B8CD2450(&qword_1EBAC19A0, type metadata accessor for Apple_Parsec_Feedback_V2_ClientTimingFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_ClientTimingFeedback);
      sub_1B964C740();
      return sub_1B8FAC5C8();
    }

    result = sub_1B8FAC5C8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8FFA1E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1B8F1B8B8();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 42)
    {
      sub_1B8FAC528();
      sub_1B8CD2450(&qword_1EBAC15F8, type metadata accessor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback);
      sub_1B964C740();
      return sub_1B8FAC5C8();
    }

    result = sub_1B8FAC5C8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8FFA3FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_DynamicButtonVisibilityFeedback(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1B8F1B8B8();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 43)
    {
      sub_1B8FAC528();
      sub_1B8CD2450(&qword_1EBAC1628, type metadata accessor for Apple_Parsec_Feedback_V2_DynamicButtonVisibilityFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_DynamicButtonVisibilityFeedback);
      sub_1B964C740();
      return sub_1B8FAC5C8();
    }

    result = sub_1B8FAC5C8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B8FFA610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9148, &unk_1B964D930);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_ExperimentTriggeredFeedback(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1B8F1B8B8();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBAB9148, &unk_1B964D930);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 44)
    {
      sub_1B8FAC528();
      sub_1B8CD2450(&qword_1EBAC1650, type metadata accessor for Apple_Parsec_Feedback_V2_ExperimentTriggeredFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_ExperimentTriggeredFeedback);
      sub_1B964C740();
      return sub_1B8FAC5C8();
    }

    result = sub_1B8FAC5C8();
  }

  __break(1u);
  return result;
}

void static Apple_Parsec_Feedback_V2_FeedbackPayload.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v3 = OUTLINED_FUNCTION_280();
  type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback(v3);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_238_0();
  v5 = OUTLINED_FUNCTION_686();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_183(v7);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_79();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9150, &unk_1B966FAC0);
  OUTLINED_FUNCTION_183(v9);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_88();
  v12 = *(v11 + 56);
  OUTLINED_FUNCTION_89_3();
  OUTLINED_FUNCTION_861();
  OUTLINED_FUNCTION_50(v2);
  if (v13)
  {
    OUTLINED_FUNCTION_50(v2 + v12);
    if (v13)
    {
      sub_1B8D9207C(v2, &qword_1EBAB9148, &unk_1B964D930);
      goto LABEL_11;
    }

LABEL_9:
    sub_1B8D9207C(v2, &qword_1EBAB9150, &unk_1B966FAC0);
LABEL_13:
    v20 = 0;
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_177_1();
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_50(v2 + v12);
  if (v13)
  {
    OUTLINED_FUNCTION_23_10();
    sub_1B8FAC5C8();
    goto LABEL_9;
  }

  sub_1B8FAC528();
  OUTLINED_FUNCTION_246();
  static Apple_Parsec_Feedback_V2_FeedbackPayload.OneOf_ContainedFeedback.== infix(_:_:)();
  v15 = v14;
  sub_1B8FAC5C8();
  OUTLINED_FUNCTION_467();
  sub_1B8FAC5C8();
  sub_1B8D9207C(v2, &qword_1EBAB9148, &unk_1B964D930);
  if ((v15 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_11:
  v16 = type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload(0);
  if (*(v1 + *(v16 + 20)) != *(v0 + *(v16 + 20)))
  {
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_188_1();
  OUTLINED_FUNCTION_0_40();
  v19 = sub_1B8CD2450(v17, v18, MEMORY[0x1E69AAC10]);
  v20 = OUTLINED_FUNCTION_634(v19);
LABEL_14:
  OUTLINED_FUNCTION_264(v20);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B8FFAB00(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2450(&qword_1EBAC1C68, type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload, protocol conformance descriptor for Apple_Parsec_Feedback_V2_FeedbackPayload);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8FFAB80(uint64_t a1)
{
  v2 = sub_1B8CD2450(&qword_1EBAC19B0, type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload, protocol conformance descriptor for Apple_Parsec_Feedback_V2_FeedbackPayload);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8FFABF0(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2450(&qword_1EBAC19B0, type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload, protocol conformance descriptor for Apple_Parsec_Feedback_V2_FeedbackPayload);

  return sub_1B964C5D0();
}

uint64_t sub_1B8FFAC7C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC04F8);
  __swift_project_value_buffer(v0, qword_1EBAC04F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4A0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "timestamp";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
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
  *v12 = "triggerEvent";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "experimentId";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "treatmentId";
  *(v16 + 1) = 11;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "experimentNamespaceId";
  *(v18 + 1) = 21;
  v18[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Feedback_V2_SkipSearchFeedback.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_41_7();
        sub_1B964C560();
        break;
      case 2:
      case 4:
      case 5:
      case 6:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 3:
        OUTLINED_FUNCTION_9();
        sub_1B8CF0394();
        break;
      default:
        continue;
    }
  }
}

void Apple_Parsec_Feedback_V2_SkipSearchFeedback.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_800();
  if (!OUTLINED_FUNCTION_25_11() || (OUTLINED_FUNCTION_35_6(), sub_1B964C720(), !v3))
  {
    OUTLINED_FUNCTION_1();
    if (!v5 || (OUTLINED_FUNCTION_59_5(), sub_1B964C700(), !v3))
    {
      if (!*(v4 + 24) || (OUTLINED_FUNCTION_94_4(), sub_1B90140B4(), OUTLINED_FUNCTION_687(), sub_1B964C680(), !v3))
      {
        OUTLINED_FUNCTION_1();
        if (!v6 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), !v3))
        {
          OUTLINED_FUNCTION_1();
          if (!v7 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), !v3))
          {
            OUTLINED_FUNCTION_1();
            if (!v8 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), !v3))
            {
              type metadata accessor for Apple_Parsec_Feedback_V2_SkipSearchFeedback(0);
              OUTLINED_FUNCTION_8_1();
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_799();
}

uint64_t sub_1B8FFB1C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2450(&qword_1EBAC1C60, type metadata accessor for Apple_Parsec_Feedback_V2_SkipSearchFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_SkipSearchFeedback);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8FFB240(uint64_t a1)
{
  v2 = sub_1B8CD2450(&qword_1EBAC19C8, type metadata accessor for Apple_Parsec_Feedback_V2_SkipSearchFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_SkipSearchFeedback);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8FFB2B0(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2450(&qword_1EBAC19C8, type metadata accessor for Apple_Parsec_Feedback_V2_SkipSearchFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_SkipSearchFeedback);

  return sub_1B964C5D0();
}

uint64_t sub_1B8FFB348()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC0510);
  __swift_project_value_buffer(v0, qword_1EBAC0510);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "timestamp";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
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
  *v12 = "triggerEvent";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "uuid";
  *(v14 + 1) = 4;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Feedback_V2_CacheHitFeedback.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_41_7();
        sub_1B964C560();
        break;
      case 2:
      case 4:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 3:
        OUTLINED_FUNCTION_9();
        sub_1B8CF0394();
        break;
      default:
        continue;
    }
  }
}

void Apple_Parsec_Feedback_V2_CacheHitFeedback.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_800();
  if (!OUTLINED_FUNCTION_25_11() || (OUTLINED_FUNCTION_35_6(), sub_1B964C720(), !v3))
  {
    OUTLINED_FUNCTION_1();
    if (!v5 || (OUTLINED_FUNCTION_59_5(), sub_1B964C700(), !v3))
    {
      if (!*(v4 + 24) || (OUTLINED_FUNCTION_94_4(), sub_1B90140B4(), OUTLINED_FUNCTION_687(), sub_1B964C680(), !v3))
      {
        OUTLINED_FUNCTION_1();
        if (!v6 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), !v3))
        {
          type metadata accessor for Apple_Parsec_Feedback_V2_CacheHitFeedback(0);
          OUTLINED_FUNCTION_8_1();
        }
      }
    }
  }

  OUTLINED_FUNCTION_799();
}

uint64_t sub_1B8FFB7BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2450(&qword_1EBAC1C58, type metadata accessor for Apple_Parsec_Feedback_V2_CacheHitFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_CacheHitFeedback);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8FFB83C(uint64_t a1)
{
  v2 = sub_1B8CD2450(&qword_1EBAC19E0, type metadata accessor for Apple_Parsec_Feedback_V2_CacheHitFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_CacheHitFeedback);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8FFB8AC(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2450(&qword_1EBAC19E0, type metadata accessor for Apple_Parsec_Feedback_V2_CacheHitFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_CacheHitFeedback);

  return sub_1B964C5D0();
}

uint64_t sub_1B8FFB938()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC0528);
  __swift_project_value_buffer(v0, qword_1EBAC0528);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "namespaceId";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "experimentId";
  *(v10 + 8) = 12;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "treatmentId";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "deploymentId";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "version";
  *(v16 + 1) = 7;
  v16[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Feedback_V2_ExperimentInfo.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 4:
      case 5:
        OUTLINED_FUNCTION_12();
        sub_1B964C4A0();
        break;
      default:
        continue;
    }
  }
}

uint64_t Apple_Parsec_Feedback_V2_ExperimentInfo.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  OUTLINED_FUNCTION_1();
  if (!v2 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v0))
  {
    OUTLINED_FUNCTION_1();
    if (!v4 || (OUTLINED_FUNCTION_59_5(), result = sub_1B964C700(), !v0))
    {
      OUTLINED_FUNCTION_1();
      if (!v5 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v0))
      {
        if (!*(v1 + 48) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6C0(), !v0))
        {
          if (!*(v1 + 52) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6C0(), !v0))
          {
            type metadata accessor for Apple_Parsec_Feedback_V2_ExperimentInfo(0);
            return OUTLINED_FUNCTION_8_1();
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Feedback_V2_ExperimentInfo.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_17_1(a1);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_84_1();
  v8 = v5 && v6 == v7;
  if (!v8 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_40_5();
  v11 = v5 && v9 == v10;
  if (!v11 && (sub_1B964C9F0() & 1) == 0 || *(v2 + 48) != *(v1 + 48) || *(v2 + 52) != *(v1 + 52))
  {
    return 0;
  }

  type metadata accessor for Apple_Parsec_Feedback_V2_ExperimentInfo(0);
  OUTLINED_FUNCTION_830();
  OUTLINED_FUNCTION_0_40();
  v14 = sub_1B8CD2450(v12, v13, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v14) & 1;
}

uint64_t sub_1B8FFBECC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2450(&qword_1EBAC1C50, type metadata accessor for Apple_Parsec_Feedback_V2_ExperimentInfo, protocol conformance descriptor for Apple_Parsec_Feedback_V2_ExperimentInfo);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8FFBF4C(uint64_t a1)
{
  v2 = sub_1B8CD2450(&qword_1EBAC19F8, type metadata accessor for Apple_Parsec_Feedback_V2_ExperimentInfo, protocol conformance descriptor for Apple_Parsec_Feedback_V2_ExperimentInfo);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8FFBFBC(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2450(&qword_1EBAC19F8, type metadata accessor for Apple_Parsec_Feedback_V2_ExperimentInfo, protocol conformance descriptor for Apple_Parsec_Feedback_V2_ExperimentInfo);

  return sub_1B964C5D0();
}

uint64_t sub_1B8FFC048()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC0540);
  __swift_project_value_buffer(v0, qword_1EBAC0540);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_1B965A600;
  v4 = v44 + v3 + v1[14];
  *(v44 + v3) = 1;
  *v4 = "agent";
  *(v4 + 8) = 5;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v44 + v3 + v2 + v1[14];
  *(v44 + v3 + v2) = 2;
  *v8 = "userGuidString";
  *(v8 + 8) = 14;
  *(v8 + 16) = 2;
  v7();
  v9 = (v44 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "resourceVersions";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v7();
  v11 = (v44 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "sessionStart";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v7();
  v13 = (v44 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "previousSessionEndReason";
  *(v14 + 1) = 24;
  v14[16] = 2;
  v7();
  v15 = (v44 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 8;
  *v16 = "removeTimestamps";
  *(v16 + 1) = 16;
  v16[16] = 2;
  v7();
  v17 = (v44 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 12;
  *v18 = "parsecDeveloperID";
  *(v18 + 1) = 17;
  v18[16] = 2;
  v7();
  v19 = (v44 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 13;
  *v20 = "duEnabled";
  *(v20 + 1) = 9;
  v20[16] = 2;
  v7();
  v21 = (v44 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 14;
  *v22 = "countryCode";
  *(v22 + 1) = 11;
  v22[16] = 2;
  v7();
  v23 = (v44 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 15;
  *v24 = "locale";
  *(v24 + 1) = 6;
  v24[16] = 2;
  v7();
  v25 = (v44 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 16;
  *v26 = "usageSinceLookback";
  *(v26 + 1) = 18;
  v26[16] = 2;
  v7();
  v27 = (v44 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 17;
  *v28 = "cohortsFeedback";
  *(v28 + 1) = 15;
  v28[16] = 2;
  v7();
  v29 = (v44 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 18;
  *v30 = "devicePersistentD20";
  *(v30 + 1) = 19;
  v30[16] = 2;
  v7();
  v31 = (v44 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 19;
  *v32 = "privateRelayStatus";
  *(v32 + 1) = 18;
  v32[16] = 2;
  v7();
  v33 = (v44 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 20;
  *v34 = "isInternalCarry";
  *(v34 + 1) = 15;
  v34[16] = 2;
  v7();
  v35 = (v44 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 21;
  *v36 = "experimentInfo";
  *(v36 + 1) = 14;
  v36[16] = 2;
  v7();
  v37 = (v44 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 22;
  *v38 = "searchOptOut";
  *(v38 + 1) = 12;
  v38[16] = 2;
  v7();
  v39 = (v44 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 101;
  *v40 = "jsonFeedback";
  *(v40 + 1) = 12;
  v40[16] = 2;
  v7();
  v41 = (v44 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 200;
  *v42 = "feedback";
  *(v42 + 1) = 8;
  v42[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t sub_1B8FFC688()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  v1 = MEMORY[0x1E69E7CC0];
  v2 = sub_1B964C7B0();
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  *(v0 + 48) = v2;
  *(v0 + 72) = 1;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0xE000000000000000;
  *(v0 + 96) = 0;
  *(v0 + 104) = 0;
  *(v0 + 112) = 0xE000000000000000;
  *(v0 + 120) = 0;
  *(v0 + 128) = 0xE000000000000000;
  v3 = OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Feedback_V2_ClientSessionP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__usageSinceLookback;
  v4 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageSinceLookback(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Feedback_V2_ClientSessionP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__cohortsFeedback;
  v6 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope(0);
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Feedback_V2_ClientSessionP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__devicePersistentD20) = 0;
  v7 = v0 + OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Feedback_V2_ClientSessionP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__privateRelayStatus;
  *v7 = 0;
  *(v7 + 8) = 1;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Feedback_V2_ClientSessionP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__isInternalCarry) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Feedback_V2_ClientSessionP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__experimentInfo) = v1;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Feedback_V2_ClientSessionP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__searchOptOut) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Feedback_V2_ClientSessionP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__jsonFeedback) = xmmword_1B9652FE0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Feedback_V2_ClientSessionP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__feedback) = v1;
  return v0;
}

uint64_t sub_1B8FFC7AC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC07D8, &unk_1B966FA78);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v66 = &v53 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC07D0, &qword_1B966FA70);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v61 = &v53 - v6;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0xE000000000000000;
  *(v1 + 48) = sub_1B964C7B0();
  *(v1 + 64) = 0;
  v54 = (v1 + 64);
  *(v1 + 56) = 0;
  *(v1 + 72) = 1;
  *(v1 + 80) = 0;
  v55 = (v1 + 80);
  *(v1 + 88) = 0xE000000000000000;
  *(v1 + 96) = 0;
  v56 = (v1 + 96);
  *(v1 + 104) = 0;
  v57 = (v1 + 104);
  *(v1 + 112) = 0xE000000000000000;
  *(v1 + 120) = 0;
  v58 = (v1 + 120);
  *(v1 + 128) = 0xE000000000000000;
  v7 = OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Feedback_V2_ClientSessionP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__usageSinceLookback;
  v59 = OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Feedback_V2_ClientSessionP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__usageSinceLookback;
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageSinceLookback(0);
  __swift_storeEnumTagSinglePayload(v1 + v7, 1, 1, v8);
  v9 = OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Feedback_V2_ClientSessionP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__cohortsFeedback;
  v60 = OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Feedback_V2_ClientSessionP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__cohortsFeedback;
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope(0);
  __swift_storeEnumTagSinglePayload(v1 + v9, 1, 1, v10);
  v62 = OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Feedback_V2_ClientSessionP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__devicePersistentD20;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Feedback_V2_ClientSessionP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__devicePersistentD20) = 0;
  v11 = v1 + OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Feedback_V2_ClientSessionP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__privateRelayStatus;
  v63 = v1 + OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Feedback_V2_ClientSessionP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__privateRelayStatus;
  *v11 = 0;
  *(v11 + 8) = 1;
  v64 = OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Feedback_V2_ClientSessionP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__isInternalCarry;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Feedback_V2_ClientSessionP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__isInternalCarry) = 0;
  v65 = OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Feedback_V2_ClientSessionP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__experimentInfo;
  v12 = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Feedback_V2_ClientSessionP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__experimentInfo) = MEMORY[0x1E69E7CC0];
  v67 = OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Feedback_V2_ClientSessionP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__searchOptOut;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Feedback_V2_ClientSessionP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__searchOptOut) = 0;
  v68 = (v1 + OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Feedback_V2_ClientSessionP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__jsonFeedback);
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Feedback_V2_ClientSessionP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__jsonFeedback) = xmmword_1B9652FE0;
  v69 = OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Feedback_V2_ClientSessionP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__feedback;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Feedback_V2_ClientSessionP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__feedback) = v12;
  swift_beginAccess();
  v13 = *(a1 + 16);
  v14 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v13;
  *(v1 + 24) = v14;

  swift_beginAccess();
  v15 = *(a1 + 32);
  v16 = *(a1 + 40);
  swift_beginAccess();
  *(v1 + 32) = v15;
  *(v1 + 40) = v16;

  swift_beginAccess();
  v17 = *(a1 + 48);
  swift_beginAccess();
  *(v1 + 48) = v17;

  swift_beginAccess();
  v18 = *(a1 + 56);
  swift_beginAccess();
  *(v1 + 56) = v18;
  swift_beginAccess();
  v19 = *(a1 + 64);
  LOBYTE(v15) = *(a1 + 72);
  v20 = v54;
  swift_beginAccess();
  *v20 = v19;
  *(v1 + 72) = v15;
  swift_beginAccess();
  LOBYTE(v19) = *(a1 + 73);
  swift_beginAccess();
  *(v1 + 73) = v19;
  swift_beginAccess();
  v22 = *(a1 + 80);
  v21 = *(a1 + 88);
  v23 = v55;
  swift_beginAccess();
  *v23 = v22;
  *(v1 + 88) = v21;

  swift_beginAccess();
  LOBYTE(v21) = *(a1 + 96);
  v24 = v56;
  swift_beginAccess();
  *v24 = v21;
  swift_beginAccess();
  v26 = *(a1 + 104);
  v25 = *(a1 + 112);
  v27 = v57;
  swift_beginAccess();
  *v27 = v26;
  *(v1 + 112) = v25;

  swift_beginAccess();
  v29 = *(a1 + 120);
  v28 = *(a1 + 128);
  v30 = v58;
  swift_beginAccess();
  *v30 = v29;
  *(v1 + 128) = v28;

  swift_beginAccess();
  sub_1B8F1B8B8();
  swift_beginAccess();
  sub_1B8F188B0();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8F1B8B8();
  swift_beginAccess();
  sub_1B8F188B0();
  swift_endAccess();
  v31 = OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Feedback_V2_ClientSessionP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__devicePersistentD20;
  swift_beginAccess();
  LODWORD(v31) = *(a1 + v31);
  v32 = v62;
  swift_beginAccess();
  *(v1 + v32) = v31;
  v33 = (a1 + OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Feedback_V2_ClientSessionP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__privateRelayStatus);
  swift_beginAccess();
  v34 = *v33;
  LOBYTE(v33) = *(v33 + 8);
  v35 = v63;
  swift_beginAccess();
  *v35 = v34;
  *(v35 + 8) = v33;
  v36 = OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Feedback_V2_ClientSessionP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__isInternalCarry;
  swift_beginAccess();
  LOBYTE(v36) = *(a1 + v36);
  v37 = v64;
  swift_beginAccess();
  *(v1 + v37) = v36;
  v38 = OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Feedback_V2_ClientSessionP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__experimentInfo;
  swift_beginAccess();
  v39 = *(a1 + v38);
  v40 = v65;
  swift_beginAccess();
  *(v1 + v40) = v39;

  v41 = OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Feedback_V2_ClientSessionP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__searchOptOut;
  swift_beginAccess();
  LOBYTE(v41) = *(a1 + v41);
  v42 = v67;
  swift_beginAccess();
  *(v1 + v42) = v41;
  v43 = (a1 + OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Feedback_V2_ClientSessionP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__jsonFeedback);
  swift_beginAccess();
  v45 = *v43;
  v44 = v43[1];
  v46 = v68;
  swift_beginAccess();
  v47 = *v46;
  v48 = v46[1];
  *v46 = v45;
  v46[1] = v44;
  sub_1B8D91FCC(v45, v44);
  sub_1B8D538A0(v47, v48);
  v49 = OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Feedback_V2_ClientSessionP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__feedback;
  swift_beginAccess();
  v50 = *(a1 + v49);

  v51 = v69;
  swift_beginAccess();
  *(v1 + v51) = v50;

  return v1;
}

void *sub_1B8FFCF90()
{

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Feedback_V2_ClientSessionP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__usageSinceLookback, &qword_1EBAC07D0, &qword_1B966FA70);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Feedback_V2_ClientSessionP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__cohortsFeedback, &qword_1EBAC07D8, &unk_1B966FA78);

  sub_1B8D538A0(*(v0 + OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Feedback_V2_ClientSessionP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__jsonFeedback), *(v0 + OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Feedback_V2_ClientSessionP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__jsonFeedback + 8));

  return v0;
}

void sub_1B8FFD0CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    v9 = sub_1B964C3C0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    switch(v9)
    {
      case 1:
        sub_1B8FFD418(a2, a1, a3, a4);
        break;
      case 2:
        sub_1B8FFD46C(a2, a1, a3, a4, MEMORY[0x1E69AACE0]);
        break;
      case 3:
        sub_1B8FFD4C4(a2, a1, a3, a4);
        break;
      case 4:
        sub_1B8FFD568(a2, a1, a3, a4, MEMORY[0x1E69AACD0]);
        break;
      case 5:
        sub_1B8FFD5C0(a2, a1, a3, a4);
        break;
      case 6:
      case 7:
      case 9:
      case 10:
      case 11:
        continue;
      case 8:
        sub_1B8FFD654(a2, a1, a3, a4);
        break;
      case 12:
        sub_1B8E16B50(a2, a1);
        break;
      case 13:
        sub_1B8ED5CB4(a2, a1, a3, a4);
        break;
      case 14:
        sub_1B8EC1004(a2, a1);
        break;
      case 15:
        sub_1B8E16CDC(a2, a1);
        break;
      case 16:
        sub_1B8FFD6A8(a2, a1, a3, a4);
        break;
      case 17:
        sub_1B8FFD784(a2, a1, a3, a4);
        break;
      case 18:
        sub_1B900C4C4(a2, a1, a3, a4, &OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Feedback_V2_ClientSessionP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__devicePersistentD20, MEMORY[0x1E69AACF0]);
        break;
      case 19:
        sub_1B9003F0C(a2, a1, a3, a4, &OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Feedback_V2_ClientSessionP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__privateRelayStatus, sub_1B9023BE8, &type metadata for Apple_Parsec_Feedback_V2_PrivateRelayStatus);
        break;
      case 20:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Feedback_V2_ClientSessionP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__isInternalCarry;
        goto LABEL_10;
      case 21:
        sub_1B8FFD860(a2, a1, a3, a4);
        break;
      case 22:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Feedback_V2_ClientSessionP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__searchOptOut;
LABEL_10:
        sub_1B900709C(v11, v12, v13, v14, v15);
        break;
      default:
        if (v9 == 101)
        {
          sub_1B9003EAC(a2, a1, a3, a4, &OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Feedback_V2_ClientSessionP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__jsonFeedback, MEMORY[0x1E69AAC78]);
        }

        else if (v9 == 200)
        {
          sub_1B8FFD93C(a2, a1, a3, a4);
        }

        break;
    }
  }
}

void sub_1B8FFD418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_796();
  OUTLINED_FUNCTION_147_1();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_160_3();
  v4 = sub_1B964C530();
  OUTLINED_FUNCTION_199_1(v4);
  OUTLINED_FUNCTION_795();
}

void sub_1B8FFD46C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_821();
  OUTLINED_FUNCTION_111_4();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_169_2();
  v6 = v5();
  OUTLINED_FUNCTION_199_1(v6);
  OUTLINED_FUNCTION_820();
}

uint64_t sub_1B8FFD4C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C280();
  sub_1B964C3B0();
  return swift_endAccess();
}

void sub_1B8FFD568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_821();
  OUTLINED_FUNCTION_111_4();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_169_2();
  v6 = v5();
  OUTLINED_FUNCTION_199_1(v6);
  OUTLINED_FUNCTION_820();
}

uint64_t sub_1B8FFD5C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B9014060();
  sub_1B964C420();
  return swift_endAccess();
}

void sub_1B8FFD654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_796();
  OUTLINED_FUNCTION_147_1();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_160_3();
  v4 = sub_1B964C400();
  OUTLINED_FUNCTION_199_1(v4);
  OUTLINED_FUNCTION_795();
}

uint64_t sub_1B8FFD6A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Feedback_V2_UsageSinceLookback(0);
  sub_1B8CD2450(&qword_1EBAC1AA8, type metadata accessor for Apple_Parsec_Feedback_V2_UsageSinceLookback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_UsageSinceLookback);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B8FFD784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope(0);
  sub_1B8CD2450(&qword_1EBAC1B50, type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope, protocol conformance descriptor for Apple_Parsec_Feedback_V2_UsageEnvelope);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B8FFD860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Feedback_V2_ExperimentInfo(0);
  sub_1B8CD2450(&qword_1EBAC19F8, type metadata accessor for Apple_Parsec_Feedback_V2_ExperimentInfo, protocol conformance descriptor for Apple_Parsec_Feedback_V2_ExperimentInfo);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B8FFD93C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload(0);
  sub_1B8CD2450(&qword_1EBAC19B0, type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload, protocol conformance descriptor for Apple_Parsec_Feedback_V2_FeedbackPayload);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B8FFDA58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC07D8, &unk_1B966FA78);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v38 = v37 - v7;
  v43 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope(0);
  MEMORY[0x1EEE9AC00](v43);
  v37[1] = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC07D0, &qword_1B966FA70);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v37 - v10;
  v12 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageSinceLookback(0);
  MEMORY[0x1EEE9AC00](v12);
  v37[2] = v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v14 = *(a1 + 24);
  v15 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v15 = *(a1 + 16) & 0xFFFFFFFFFFFFLL;
  }

  if (v15)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v16 = *(a1 + 40);
  v17 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v17 = *(a1 + 32) & 0xFFFFFFFFFFFFLL;
  }

  if (v17)
  {

    sub_1B964C700();
    if (!v4)
    {

      goto LABEL_11;
    }
  }

LABEL_11:
  swift_beginAccess();
  if (*(*(a1 + 48) + 16))
  {
    sub_1B964C280();

    sub_1B964C5F0();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  if (*(a1 + 56) == 0.0 || (result = sub_1B964C6F0(), !v4))
  {
    swift_beginAccess();
    if (!*(a1 + 64) || (v19 = *(a1 + 72), v41 = *(a1 + 64), v42 = v19, sub_1B9014060(), result = sub_1B964C680(), !v4))
    {
      swift_beginAccess();
      if (*(a1 + 73) != 1 || (result = sub_1B964C670(), !v4))
      {
        swift_beginAccess();
        v20 = *(a1 + 88);
        v21 = HIBYTE(v20) & 0xF;
        if ((v20 & 0x2000000000000000) == 0)
        {
          v21 = *(a1 + 80) & 0xFFFFFFFFFFFFLL;
        }

        if (v21)
        {

          sub_1B964C700();
          if (v4)
          {
          }
        }

        swift_beginAccess();
        if (*(a1 + 96) != 1 || (result = sub_1B964C670(), !v4))
        {
          swift_beginAccess();
          v22 = *(a1 + 112);
          v23 = HIBYTE(v22) & 0xF;
          if ((v22 & 0x2000000000000000) == 0)
          {
            v23 = *(a1 + 104) & 0xFFFFFFFFFFFFLL;
          }

          if (v23)
          {

            sub_1B964C700();
            if (v4)
            {
            }
          }

          swift_beginAccess();
          v24 = *(a1 + 128);
          v25 = HIBYTE(v24) & 0xF;
          if ((v24 & 0x2000000000000000) == 0)
          {
            v25 = *(a1 + 120) & 0xFFFFFFFFFFFFLL;
          }

          if (v25)
          {

            sub_1B964C700();
            if (v4)
            {
            }
          }

          swift_beginAccess();
          sub_1B8F1B8B8();
          if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
          {
            sub_1B8D9207C(v11, &qword_1EBAC07D0, &qword_1B966FA70);
          }

          else
          {
            sub_1B8FAC528();
            sub_1B8CD2450(&qword_1EBAC1AA8, type metadata accessor for Apple_Parsec_Feedback_V2_UsageSinceLookback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_UsageSinceLookback);
            sub_1B964C740();
            if (v4)
            {
              return sub_1B8FAC5C8();
            }

            sub_1B8FAC5C8();
          }

          swift_beginAccess();
          v26 = v38;
          sub_1B8F1B8B8();
          if (__swift_getEnumTagSinglePayload(v26, 1, v43) == 1)
          {
            sub_1B8D9207C(v26, &qword_1EBAC07D8, &unk_1B966FA78);
          }

          else
          {
            sub_1B8FAC528();
            sub_1B8CD2450(&qword_1EBAC1B50, type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope, protocol conformance descriptor for Apple_Parsec_Feedback_V2_UsageEnvelope);
            sub_1B964C740();
            result = sub_1B8FAC5C8();
            if (v4)
            {
              return result;
            }
          }

          v27 = OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Feedback_V2_ClientSessionP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__devicePersistentD20;
          swift_beginAccess();
          if (!*(a1 + v27) || (result = sub_1B964C710(), !v4))
          {
            v28 = (a1 + OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Feedback_V2_ClientSessionP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__privateRelayStatus);
            swift_beginAccess();
            if (!*v28 || (v29 = *(v28 + 8), v39 = *v28, v40 = v29, sub_1B9023BE8(), result = sub_1B964C680(), !v4))
            {
              v30 = OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Feedback_V2_ClientSessionP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__isInternalCarry;
              swift_beginAccess();
              if (*(a1 + v30) != 1 || (result = sub_1B964C670(), !v4))
              {
                v31 = OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Feedback_V2_ClientSessionP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__experimentInfo;
                swift_beginAccess();
                if (!*(*(a1 + v31) + 16) || (type metadata accessor for Apple_Parsec_Feedback_V2_ExperimentInfo(0), sub_1B8CD2450(&qword_1EBAC19F8, type metadata accessor for Apple_Parsec_Feedback_V2_ExperimentInfo, protocol conformance descriptor for Apple_Parsec_Feedback_V2_ExperimentInfo), , sub_1B964C730(), result = , !v4))
                {
                  v32 = OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Feedback_V2_ClientSessionP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__searchOptOut;
                  swift_beginAccess();
                  if (*(a1 + v32) != 1 || (result = sub_1B964C670(), !v4))
                  {
                    v33 = a1 + OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Feedback_V2_ClientSessionP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__jsonFeedback;
                    swift_beginAccess();
                    if (sub_1B8D99EA8(*v33, *(v33 + 8)) || (v35 = *v33, v34 = *(v33 + 8), sub_1B8D91FCC(v35, v34), sub_1B964C6A0(), result = sub_1B8D538A0(v35, v34), !v4))
                    {
                      v36 = OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Feedback_V2_ClientSessionP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__feedback;
                      result = swift_beginAccess();
                      if (*(*(a1 + v36) + 16))
                      {
                        type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload(0);
                        sub_1B8CD2450(&qword_1EBAC19B0, type metadata accessor for Apple_Parsec_Feedback_V2_FeedbackPayload, protocol conformance descriptor for Apple_Parsec_Feedback_V2_FeedbackPayload);

                        sub_1B964C730();
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
  }

  return result;
}

uint64_t sub_1B8FFE4B0(uint64_t a1, uint64_t a2)
{
  v98 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageEnvelope(0);
  MEMORY[0x1EEE9AC00](v98);
  v94 = &v92 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC1F40, &qword_1B967F3E8);
  MEMORY[0x1EEE9AC00](v97);
  v6 = &v92 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC07D8, &unk_1B966FA78);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v95 = &v92 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v99 = &v92 - v10;
  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_UsageSinceLookback(0);
  MEMORY[0x1EEE9AC00](v11);
  v96 = &v92 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC1F48, &qword_1B967F3F0);
  MEMORY[0x1EEE9AC00](v13);
  v100 = &v92 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC07D0, &qword_1B966FA70);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v92 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v92 - v19;
  swift_beginAccess();
  v22 = *(a1 + 16);
  v21 = *(a1 + 24);
  swift_beginAccess();
  v23 = v22 == *(a2 + 16) && v21 == *(a2 + 24);
  if (!v23 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_57;
  }

  swift_beginAccess();
  v24 = *(a1 + 32);
  v25 = *(a1 + 40);
  swift_beginAccess();
  v26 = v24 == *(a2 + 32) && v25 == *(a2 + 40);
  if (!v26 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_57;
  }

  v93 = v6;
  swift_beginAccess();
  v27 = *(a1 + 48);
  swift_beginAccess();
  v28 = *(a2 + 48);

  sub_1B8DB02F8(v27, v28);
  v30 = v29;

  if ((v30 & 1) == 0)
  {
    goto LABEL_56;
  }

  swift_beginAccess();
  v31 = *(a1 + 56);
  swift_beginAccess();
  if (v31 != *(a2 + 56))
  {
    goto LABEL_56;
  }

  swift_beginAccess();
  v32 = *(a1 + 64);
  v33 = *(a1 + 72);
  swift_beginAccess();
  if (!sub_1B8D92198(v32, v33, *(a2 + 64)))
  {
    goto LABEL_56;
  }

  swift_beginAccess();
  v34 = *(a1 + 73);
  swift_beginAccess();
  if (v34 != *(a2 + 73))
  {
    goto LABEL_56;
  }

  swift_beginAccess();
  v35 = *(a1 + 80);
  v36 = *(a1 + 88);
  swift_beginAccess();
  v37 = v35 == *(a2 + 80) && v36 == *(a2 + 88);
  if (!v37 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_56;
  }

  swift_beginAccess();
  v38 = *(a1 + 96);
  swift_beginAccess();
  if (v38 != *(a2 + 96))
  {
    goto LABEL_56;
  }

  swift_beginAccess();
  v39 = *(a1 + 104);
  v40 = *(a1 + 112);
  swift_beginAccess();
  v41 = v39 == *(a2 + 104) && v40 == *(a2 + 112);
  if (!v41 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_56;
  }

  swift_beginAccess();
  v42 = *(a1 + 120);
  v43 = *(a1 + 128);
  swift_beginAccess();
  v44 = v42 == *(a2 + 120) && v43 == *(a2 + 128);
  if (!v44 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_56;
  }

  swift_beginAccess();
  sub_1B8F1B8B8();
  swift_beginAccess();
  v45 = *(v13 + 48);
  v46 = v100;
  sub_1B8F1B8B8();
  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v46, 1, v11) == 1)
  {
    sub_1B8D9207C(v20, &qword_1EBAC07D0, &qword_1B966FA70);
    if (__swift_getEnumTagSinglePayload(v46 + v45, 1, v11) == 1)
    {
      sub_1B8D9207C(v46, &qword_1EBAC07D0, &qword_1B966FA70);
      goto LABEL_40;
    }

LABEL_36:
    v47 = &qword_1EBAC1F48;
    v48 = &qword_1B967F3F0;
    v49 = v46;
LABEL_55:
    sub_1B8D9207C(v49, v47, v48);
    goto LABEL_56;
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v46 + v45, 1, v11) == 1)
  {
    sub_1B8D9207C(v20, &qword_1EBAC07D0, &qword_1B966FA70);
    sub_1B8FAC5C8();
    goto LABEL_36;
  }

  v50 = v96;
  sub_1B8FAC528();
  v51 = *(v11 + 20);
  v52 = *&v18[v51];
  v53 = *&v50[v51];
  if (v52 != v53)
  {

    v54 = sub_1B90076F8(v52, v53);

    if (!v54)
    {
      sub_1B8FAC5C8();
      sub_1B8D9207C(v20, &qword_1EBAC07D0, &qword_1B966FA70);
      sub_1B8FAC5C8();
      v49 = v46;
      v47 = &qword_1EBAC07D0;
      v48 = &qword_1B966FA70;
      goto LABEL_55;
    }
  }

  sub_1B964C2B0();
  sub_1B8CD2450(&qword_1EBAB3B38, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v55 = sub_1B964C850();
  sub_1B8FAC5C8();
  sub_1B8D9207C(v20, &qword_1EBAC07D0, &qword_1B966FA70);
  sub_1B8FAC5C8();
  sub_1B8D9207C(v46, &qword_1EBAC07D0, &qword_1B966FA70);
  if ((v55 & 1) == 0)
  {
    goto LABEL_56;
  }

LABEL_40:
  swift_beginAccess();
  v56 = v99;
  sub_1B8F1B8B8();
  swift_beginAccess();
  v57 = *(v97 + 48);
  v58 = v93;
  sub_1B8F1B8B8();
  sub_1B8F1B8B8();
  v59 = v98;
  if (__swift_getEnumTagSinglePayload(v58, 1, v98) != 1)
  {
    sub_1B8F1B8B8();
    if (__swift_getEnumTagSinglePayload(v58 + v57, 1, v59) == 1)
    {
      sub_1B8D9207C(v99, &qword_1EBAC07D8, &unk_1B966FA78);
      sub_1B8FAC5C8();
      goto LABEL_45;
    }

    sub_1B8FAC528();
    static Apple_Parsec_Feedback_V2_UsageEnvelope.== infix(_:_:)();
    v61 = v60;
    sub_1B8FAC5C8();
    sub_1B8D9207C(v99, &qword_1EBAC07D8, &unk_1B966FA78);
    sub_1B8FAC5C8();
    sub_1B8D9207C(v58, &qword_1EBAC07D8, &unk_1B966FA78);
    if (v61)
    {
      goto LABEL_47;
    }

LABEL_56:

LABEL_57:
    v90 = 0;
    return v90 & 1;
  }

  sub_1B8D9207C(v56, &qword_1EBAC07D8, &unk_1B966FA78);
  if (__swift_getEnumTagSinglePayload(v58 + v57, 1, v59) != 1)
  {
LABEL_45:
    v47 = &qword_1EBAC1F40;
    v48 = &qword_1B967F3E8;
    v49 = v58;
    goto LABEL_55;
  }

  sub_1B8D9207C(v58, &qword_1EBAC07D8, &unk_1B966FA78);
LABEL_47:
  v62 = OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Feedback_V2_ClientSessionP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__devicePersistentD20;
  swift_beginAccess();
  LODWORD(v62) = *(a1 + v62);
  v63 = OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Feedback_V2_ClientSessionP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__devicePersistentD20;
  swift_beginAccess();
  if (v62 != *(a2 + v63))
  {
    goto LABEL_56;
  }

  v64 = a1 + OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Feedback_V2_ClientSessionP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__privateRelayStatus;
  swift_beginAccess();
  v65 = *v64;
  v66 = *(v64 + 8);
  v67 = (a2 + OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Feedback_V2_ClientSessionP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__privateRelayStatus);
  swift_beginAccess();
  if (!sub_1B8D92198(v65, v66, *v67))
  {
    goto LABEL_56;
  }

  v68 = OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Feedback_V2_ClientSessionP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__isInternalCarry;
  swift_beginAccess();
  LODWORD(v68) = *(a1 + v68);
  v69 = OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Feedback_V2_ClientSessionP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__isInternalCarry;
  swift_beginAccess();
  if (v68 != *(a2 + v69))
  {
    goto LABEL_56;
  }

  v70 = OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Feedback_V2_ClientSessionP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__experimentInfo;
  swift_beginAccess();
  v71 = *(a1 + v70);
  v72 = OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Feedback_V2_ClientSessionP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__experimentInfo;
  swift_beginAccess();
  v73 = *(a2 + v72);

  sub_1B8D8BC70(v71, v73);
  v75 = v74;

  if ((v75 & 1) == 0)
  {
    goto LABEL_56;
  }

  v76 = OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Feedback_V2_ClientSessionP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__searchOptOut;
  swift_beginAccess();
  LODWORD(v76) = *(a1 + v76);
  v77 = OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Feedback_V2_ClientSessionP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__searchOptOut;
  swift_beginAccess();
  if (v76 != *(a2 + v77))
  {
    goto LABEL_56;
  }

  v78 = (a1 + OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Feedback_V2_ClientSessionP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__jsonFeedback);
  swift_beginAccess();
  v80 = *v78;
  v79 = v78[1];
  v81 = (a2 + OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Feedback_V2_ClientSessionP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__jsonFeedback);
  swift_beginAccess();
  v83 = *v81;
  v82 = v81[1];
  sub_1B8D91FCC(v80, v79);
  sub_1B8D91FCC(v83, v82);
  v84 = MEMORY[0x1BFADC060](v80, v79, v83, v82);
  sub_1B8D538A0(v83, v82);
  sub_1B8D538A0(v80, v79);
  if ((v84 & 1) == 0)
  {
    goto LABEL_56;
  }

  v85 = OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Feedback_V2_ClientSessionP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__feedback;
  swift_beginAccess();
  v86 = *(a1 + v85);
  v87 = OBJC_IVAR____TtCV10PegasusAPI38Apple_Parsec_Feedback_V2_ClientSessionP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__feedback;
  swift_beginAccess();
  v88 = *(a2 + v87);

  sub_1B8D8BE68(v86, v88);
  v90 = v89;

  return v90 & 1;
}

uint64_t sub_1B8FFF294(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2450(&qword_1EBAC1C48, type metadata accessor for Apple_Parsec_Feedback_V2_ClientSession, protocol conformance descriptor for Apple_Parsec_Feedback_V2_ClientSession);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8FFF314(uint64_t a1)
{
  v2 = sub_1B8CD2450(&qword_1EBAC1A10, type metadata accessor for Apple_Parsec_Feedback_V2_ClientSession, protocol conformance descriptor for Apple_Parsec_Feedback_V2_ClientSession);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8FFF384(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2450(&qword_1EBAC1A10, type metadata accessor for Apple_Parsec_Feedback_V2_ClientSession, protocol conformance descriptor for Apple_Parsec_Feedback_V2_ClientSession);

  return sub_1B964C5D0();
}

uint64_t sub_1B8FFF41C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC0560);
  __swift_project_value_buffer(v0, qword_1EBAC0560);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "stringKeyFields";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "intKeyFields";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Feedback_V2_Struct.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      v7 = OUTLINED_FUNCTION_9();
      sub_1B8FFF764(v7, v8, v9, v10);
    }

    else if (result == 1)
    {
      v3 = OUTLINED_FUNCTION_9();
      sub_1B8FFF66C(v3, v4, v5, v6);
    }
  }

  return result;
}

uint64_t sub_1B8FFF66C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1B964C280();
  type metadata accessor for Apple_Parsec_Feedback_V2_Value(0);
  sub_1B8CD2450(&qword_1EBAC0BB0, type metadata accessor for Apple_Parsec_Feedback_V2_Value, protocol conformance descriptor for Apple_Parsec_Feedback_V2_Value);
  sub_1B8CD2450(&qword_1EBAC0BB8, type metadata accessor for Apple_Parsec_Feedback_V2_Value, protocol conformance descriptor for Apple_Parsec_Feedback_V2_Value);
  return sub_1B964C3A0();
}

uint64_t sub_1B8FFF764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1B964C250();
  type metadata accessor for Apple_Parsec_Feedback_V2_Value(0);
  sub_1B8CD2450(&qword_1EBAC0BB0, type metadata accessor for Apple_Parsec_Feedback_V2_Value, protocol conformance descriptor for Apple_Parsec_Feedback_V2_Value);
  sub_1B8CD2450(&qword_1EBAC0BB8, type metadata accessor for Apple_Parsec_Feedback_V2_Value, protocol conformance descriptor for Apple_Parsec_Feedback_V2_Value);
  return sub_1B964C3A0();
}

void Apple_Parsec_Feedback_V2_Struct.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_859();
  OUTLINED_FUNCTION_423_0();
  OUTLINED_FUNCTION_835();
  if (!v1 || (sub_1B964C280(), type metadata accessor for Apple_Parsec_Feedback_V2_Value(0), sub_1B8CD2450(&qword_1EBAC0BB0, type metadata accessor for Apple_Parsec_Feedback_V2_Value, protocol conformance descriptor for Apple_Parsec_Feedback_V2_Value), OUTLINED_FUNCTION_550_0(), sub_1B8CD2450(v2, type metadata accessor for Apple_Parsec_Feedback_V2_Value, v3), OUTLINED_FUNCTION_85_1(), sub_1B964C5E0(), !v0))
  {
    OUTLINED_FUNCTION_659_0();
    if (!v4 || (sub_1B964C250(), type metadata accessor for Apple_Parsec_Feedback_V2_Value(0), sub_1B8CD2450(&qword_1EBAC0BB0, type metadata accessor for Apple_Parsec_Feedback_V2_Value, protocol conformance descriptor for Apple_Parsec_Feedback_V2_Value), OUTLINED_FUNCTION_550_0(), sub_1B8CD2450(v5, type metadata accessor for Apple_Parsec_Feedback_V2_Value, v6), sub_1B964C5E0(), !v0))
    {
      type metadata accessor for Apple_Parsec_Feedback_V2_Struct(0);
      OUTLINED_FUNCTION_184_2();
      sub_1B964C290();
    }
  }

  OUTLINED_FUNCTION_747();
}

uint64_t sub_1B8FFFAD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2450(&qword_1EBAC1C40, type metadata accessor for Apple_Parsec_Feedback_V2_Struct, protocol conformance descriptor for Apple_Parsec_Feedback_V2_Struct);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8FFFB58(uint64_t a1)
{
  v2 = sub_1B8CD2450(&qword_1EBAC1A28, type metadata accessor for Apple_Parsec_Feedback_V2_Struct, protocol conformance descriptor for Apple_Parsec_Feedback_V2_Struct);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8FFFBC8(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2450(&qword_1EBAC1A28, type metadata accessor for Apple_Parsec_Feedback_V2_Struct, protocol conformance descriptor for Apple_Parsec_Feedback_V2_Struct);

  return sub_1B964C5D0();
}

uint64_t sub_1B8FFFC60()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC0578);
  __swift_project_value_buffer(v0, qword_1EBAC0578);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1B9650810;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 1;
  *v4 = "null_value";
  *(v4 + 8) = 10;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADE8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 2;
  *v8 = "number_value";
  *(v8 + 8) = 12;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "string_value";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "BOOL_value";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "struct_value";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "list_value";
  *(v16 + 1) = 10;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "bytes_value";
  *(v18 + 1) = 11;
  v18[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Feedback_V2_Value.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B9000044(v3, v4, v5, v6);
        break;
      case 2:
        v19 = OUTLINED_FUNCTION_9();
        sub_1B9000200(v19, v20, v21, v22);
        break;
      case 3:
        v11 = OUTLINED_FUNCTION_9();
        sub_1B9000398(v11, v12, v13, v14);
        break;
      case 4:
        v15 = OUTLINED_FUNCTION_9();
        sub_1B900053C(v15, v16, v17, v18);
        break;
      case 5:
        v7 = OUTLINED_FUNCTION_17_3();
        sub_1B90006C8(v7, v8, v9, v10);
        break;
      case 6:
        v23 = OUTLINED_FUNCTION_17_3();
        sub_1B9000BC0(v23, v24, v25, v26);
        break;
      case 7:
        v27 = OUTLINED_FUNCTION_9();
        sub_1B90010B8(v27, v28, v29, v30);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B9000044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9158, &qword_1B964D940);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v12 - v7;
  v14 = 0;
  v15 = 256;
  sub_1B9023B94();
  result = sub_1B964C410();
  if (!v4 && (v15 & 0x100) == 0)
  {
    v16 = v14;
    v13 = v15;
    sub_1B8F1B8B8();
    v10 = type metadata accessor for Apple_Parsec_Feedback_V2_Value.OneOf_Kind(0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v8, 1, v10);
    sub_1B8D9207C(v8, &qword_1EBAB9158, &qword_1B964D940);
    if (EnumTagSinglePayload != 1)
    {
      sub_1B964C3D0();
    }

    sub_1B8D9207C(a2, &qword_1EBAB9158, &qword_1B964D940);
    *a2 = v16;
    *(a2 + 8) = v13 & 1;
    swift_storeEnumTagMultiPayload();
    return __swift_storeEnumTagSinglePayload(a2, 0, 1, v10);
  }

  return result;
}

uint64_t sub_1B9000200(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9158, &qword_1B964D940);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v13 - v7;
  v13 = 0;
  v14 = 1;
  result = sub_1B964C500();
  if (!v4 && (v14 & 1) == 0)
  {
    v10 = v13;
    sub_1B8F1B8B8();
    v11 = type metadata accessor for Apple_Parsec_Feedback_V2_Value.OneOf_Kind(0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v8, 1, v11);
    sub_1B8D9207C(v8, &qword_1EBAB9158, &qword_1B964D940);
    if (EnumTagSinglePayload != 1)
    {
      sub_1B964C3D0();
    }

    sub_1B8D9207C(a2, &qword_1EBAB9158, &qword_1B964D940);
    *a2 = v10;
    swift_storeEnumTagMultiPayload();
    return __swift_storeEnumTagSinglePayload(a2, 0, 1, v11);
  }

  return result;
}

uint64_t sub_1B9000398(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9158, &qword_1B964D940);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v13 - v7;
  v13 = 0;
  v14 = 0;
  result = sub_1B964C520();
  if (v4)
  {
  }

  v10 = v14;
  if (v14)
  {
    v15 = v13;
    sub_1B8F1B8B8();
    v11 = type metadata accessor for Apple_Parsec_Feedback_V2_Value.OneOf_Kind(0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v8, 1, v11);
    sub_1B8D9207C(v8, &qword_1EBAB9158, &qword_1B964D940);
    if (EnumTagSinglePayload != 1)
    {
      sub_1B964C3D0();
    }

    sub_1B8D9207C(a2, &qword_1EBAB9158, &qword_1B964D940);
    *a2 = v15;
    a2[1] = v10;
    swift_storeEnumTagMultiPayload();
    return __swift_storeEnumTagSinglePayload(a2, 0, 1, v11);
  }

  return result;
}

uint64_t sub_1B900053C(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9158, &qword_1B964D940);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v13 - v7;
  v14 = 2;
  result = sub_1B964C3F0();
  if (!v4)
  {
    v10 = v14;
    if (v14 != 2)
    {
      sub_1B8F1B8B8();
      v11 = type metadata accessor for Apple_Parsec_Feedback_V2_Value.OneOf_Kind(0);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v8, 1, v11);
      sub_1B8D9207C(v8, &qword_1EBAB9158, &qword_1B964D940);
      if (EnumTagSinglePayload != 1)
      {
        sub_1B964C3D0();
      }

      sub_1B8D9207C(a2, &qword_1EBAB9158, &qword_1B964D940);
      *a2 = v10 & 1;
      swift_storeEnumTagMultiPayload();
      return __swift_storeEnumTagSinglePayload(a2, 0, 1, v11);
    }
  }

  return result;
}

uint64_t sub_1B90006C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_Struct(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9158, &qword_1B964D940);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_Value.OneOf_Kind(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC06E8, &qword_1B966F970);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_1B8F1B8B8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v10, &qword_1EBAB9158, &qword_1B964D940);
  }

  else
  {
    sub_1B8FAC528();
    sub_1B8FAC528();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1B8D9207C(v18, &qword_1EBAC06E8, &qword_1B966F970);
      sub_1B8FAC528();
      sub_1B8FAC528();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_1B8FAC5C8();
    }
  }

  sub_1B8CD2450(&qword_1EBAC1A28, type metadata accessor for Apple_Parsec_Feedback_V2_Struct, protocol conformance descriptor for Apple_Parsec_Feedback_V2_Struct);
  v19 = v29;
  sub_1B964C580();
  if (v19)
  {
    v20 = v18;
    return sub_1B8D9207C(v20, &qword_1EBAC06E8, &qword_1B966F970);
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_1B8D9207C(v18, &qword_1EBAC06E8, &qword_1B966F970);
    v20 = v16;
    return sub_1B8D9207C(v20, &qword_1EBAC06E8, &qword_1B966F970);
  }

  sub_1B8FAC528();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v22 = v27;
  sub_1B8D9207C(v18, &qword_1EBAC06E8, &qword_1B966F970);
  v23 = v25;
  sub_1B8D9207C(v25, &qword_1EBAB9158, &qword_1B964D940);
  sub_1B8FAC528();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_1B9000BC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_ListValue(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9158, &qword_1B964D940);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_Value.OneOf_Kind(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC1F38, &qword_1B967F3E0);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_1B8F1B8B8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v10, &qword_1EBAB9158, &qword_1B964D940);
  }

  else
  {
    sub_1B8FAC528();
    sub_1B8FAC528();
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_1B8D9207C(v18, &qword_1EBAC1F38, &qword_1B967F3E0);
      sub_1B8FAC528();
      sub_1B8FAC528();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_1B8FAC5C8();
    }
  }

  sub_1B8CD2450(&qword_1EBAC1A50, type metadata accessor for Apple_Parsec_Feedback_V2_ListValue, protocol conformance descriptor for Apple_Parsec_Feedback_V2_ListValue);
  v19 = v29;
  sub_1B964C580();
  if (v19)
  {
    v20 = v18;
    return sub_1B8D9207C(v20, &qword_1EBAC1F38, &qword_1B967F3E0);
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_1B8D9207C(v18, &qword_1EBAC1F38, &qword_1B967F3E0);
    v20 = v16;
    return sub_1B8D9207C(v20, &qword_1EBAC1F38, &qword_1B967F3E0);
  }

  sub_1B8FAC528();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v22 = v27;
  sub_1B8D9207C(v18, &qword_1EBAC1F38, &qword_1B967F3E0);
  v23 = v25;
  sub_1B8D9207C(v25, &qword_1EBAB9158, &qword_1B964D940);
  sub_1B8FAC528();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_1B90010B8(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9158, &qword_1B964D940);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v13 - v7;
  v13 = xmmword_1B96556C0;
  sub_1B964C460();
  v9 = v13;
  if (v4 || *(&v13 + 1) >> 60 == 15)
  {
    return sub_1B8DF2920(v13, *(&v13 + 1));
  }

  sub_1B8F1B8B8();
  v14 = type metadata accessor for Apple_Parsec_Feedback_V2_Value.OneOf_Kind(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v8, 1, v14);
  sub_1B8D91FCC(v9, *(&v9 + 1));
  sub_1B8D9207C(v8, &qword_1EBAB9158, &qword_1B964D940);
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  sub_1B8DF2920(v9, *(&v9 + 1));
  sub_1B8D9207C(a2, &qword_1EBAB9158, &qword_1B964D940);
  *a2 = v9;
  v12 = v14;
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(a2, 0, 1, v12);
}

uint64_t Apple_Parsec_Feedback_V2_Value.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_12_8();
  v1 = OUTLINED_FUNCTION_190_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_173();
  OUTLINED_FUNCTION_85_1();
  sub_1B8F1B8B8();
  v5 = type metadata accessor for Apple_Parsec_Feedback_V2_Value.OneOf_Kind(0);
  v6 = OUTLINED_FUNCTION_538();
  OUTLINED_FUNCTION_178(v6, v7, v5);
  if (!v8)
  {
    OUTLINED_FUNCTION_686();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        v26 = OUTLINED_FUNCTION_7_6();
        result = sub_1B900156C(v26, v27, v28, v29);
        goto LABEL_12;
      case 2u:
        OUTLINED_FUNCTION_32_9();
        sub_1B8FAC5C8();
        v18 = OUTLINED_FUNCTION_7_6();
        result = sub_1B90016AC(v18, v19, v20, v21);
        goto LABEL_12;
      case 3u:
        v22 = OUTLINED_FUNCTION_7_6();
        result = sub_1B9001800(v22, v23, v24, v25);
        goto LABEL_12;
      case 4u:
        v14 = OUTLINED_FUNCTION_7_6();
        sub_1B9001940(v14, v15, v16, v17);
        goto LABEL_9;
      case 5u:
        v30 = OUTLINED_FUNCTION_7_6();
        sub_1B9001B54(v30, v31, v32, v33);
LABEL_9:
        OUTLINED_FUNCTION_32_9();
        result = sub_1B8FAC5C8();
        if (!v0)
        {
          break;
        }

        return result;
      case 6u:
        OUTLINED_FUNCTION_32_9();
        sub_1B8FAC5C8();
        v34 = OUTLINED_FUNCTION_7_6();
        result = sub_1B9001D68(v34, v35, v36, v37);
        goto LABEL_12;
      default:
        v9 = OUTLINED_FUNCTION_7_6();
        result = sub_1B900140C(v9, v10, v11, v12);
LABEL_12:
        if (!v0)
        {
          break;
        }

        return result;
    }
  }

  type metadata accessor for Apple_Parsec_Feedback_V2_Value(0);
  OUTLINED_FUNCTION_12();
  return sub_1B964C290();
}

uint64_t sub_1B900140C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9158, &qword_1B964D940);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  sub_1B8F1B8B8();
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_Value.OneOf_Kind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBAB9158, &qword_1B964D940);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      v8 = v6[8];
      v10 = *v6;
      v11 = v8;
      sub_1B9023B94();
      return sub_1B964C680();
    }

    result = sub_1B8FAC5C8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B900156C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9158, &qword_1B964D940);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  sub_1B8F1B8B8();
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_Value.OneOf_Kind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBAB9158, &qword_1B964D940);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return sub_1B964C6F0();
    }

    result = sub_1B8FAC5C8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B90016AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9158, &qword_1B964D940);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  sub_1B8F1B8B8();
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_Value.OneOf_Kind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBAB9158, &qword_1B964D940);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1B964C700();
    }

    result = sub_1B8FAC5C8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B9001800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9158, &qword_1B964D940);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  sub_1B8F1B8B8();
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_Value.OneOf_Kind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBAB9158, &qword_1B964D940);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      return sub_1B964C670();
    }

    result = sub_1B8FAC5C8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B9001940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9158, &qword_1B964D940);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_Struct(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1B8F1B8B8();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_Value.OneOf_Kind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBAB9158, &qword_1B964D940);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1B8FAC528();
      sub_1B8CD2450(&qword_1EBAC1A28, type metadata accessor for Apple_Parsec_Feedback_V2_Struct, protocol conformance descriptor for Apple_Parsec_Feedback_V2_Struct);
      sub_1B964C740();
      return sub_1B8FAC5C8();
    }

    result = sub_1B8FAC5C8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B9001B54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9158, &qword_1B964D940);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_ListValue(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1B8F1B8B8();
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_Value.OneOf_Kind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBAB9158, &qword_1B964D940);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_1B8FAC528();
      sub_1B8CD2450(&qword_1EBAC1A50, type metadata accessor for Apple_Parsec_Feedback_V2_ListValue, protocol conformance descriptor for Apple_Parsec_Feedback_V2_ListValue);
      sub_1B964C740();
      return sub_1B8FAC5C8();
    }

    result = sub_1B8FAC5C8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B9001D68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9158, &qword_1B964D940);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (&v11 - v5);
  sub_1B8F1B8B8();
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_Value.OneOf_Kind(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBAB9158, &qword_1B964D940);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      v9 = *v6;
      v8 = v6[1];
      sub_1B964C6A0();
      return sub_1B8D538A0(v9, v8);
    }

    result = sub_1B8FAC5C8();
  }

  __break(1u);
  return result;
}

void static Apple_Parsec_Feedback_V2_Value.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_280();
  type metadata accessor for Apple_Parsec_Feedback_V2_Value.OneOf_Kind(v1);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_238_0();
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_79();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9160, &qword_1B964D948);
  OUTLINED_FUNCTION_183(v7);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_88();
  v10 = *(v9 + 56);
  OUTLINED_FUNCTION_89_3();
  OUTLINED_FUNCTION_861();
  OUTLINED_FUNCTION_50(v0);
  if (v11)
  {
    OUTLINED_FUNCTION_50(v0 + v10);
    if (v11)
    {
      sub_1B8D9207C(v0, &qword_1EBAB9158, &qword_1B964D940);
LABEL_12:
      type metadata accessor for Apple_Parsec_Feedback_V2_Value(0);
      OUTLINED_FUNCTION_871();
      OUTLINED_FUNCTION_0_40();
      v17 = sub_1B8CD2450(v15, v16, MEMORY[0x1E69AAC10]);
      v12 = OUTLINED_FUNCTION_634(v17);
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_177_1();
  sub_1B8F1B8B8();
  OUTLINED_FUNCTION_50(v0 + v10);
  if (v11)
  {
    OUTLINED_FUNCTION_32_9();
    sub_1B8FAC5C8();
LABEL_9:
    sub_1B8D9207C(v0, &qword_1EBAB9160, &qword_1B964D948);
    goto LABEL_10;
  }

  sub_1B8FAC528();
  OUTLINED_FUNCTION_246();
  static Apple_Parsec_Feedback_V2_Value.OneOf_Kind.== infix(_:_:)();
  v14 = v13;
  sub_1B8FAC5C8();
  OUTLINED_FUNCTION_467();
  sub_1B8FAC5C8();
  sub_1B8D9207C(v0, &qword_1EBAB9158, &qword_1B964D940);
  if (v14)
  {
    goto LABEL_12;
  }

LABEL_10:
  v12 = 0;
LABEL_13:
  OUTLINED_FUNCTION_264(v12);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B9002188(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2450(&qword_1EBAC1C38, type metadata accessor for Apple_Parsec_Feedback_V2_Value, protocol conformance descriptor for Apple_Parsec_Feedback_V2_Value);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9002208(uint64_t a1)
{
  v2 = sub_1B8CD2450(&qword_1EBAC0BB0, type metadata accessor for Apple_Parsec_Feedback_V2_Value, protocol conformance descriptor for Apple_Parsec_Feedback_V2_Value);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9002278(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2450(&qword_1EBAC0BB0, type metadata accessor for Apple_Parsec_Feedback_V2_Value, protocol conformance descriptor for Apple_Parsec_Feedback_V2_Value);

  return sub_1B964C5D0();
}

void sub_1B900232C()
{
  OUTLINED_FUNCTION_243();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_1B964C780();
  __swift_allocate_value_buffer(v8, v7);
  v9 = OUTLINED_FUNCTION_202();
  __swift_project_value_buffer(v9, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v11 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v12 = (*(*v11 + 80) + 32) & ~*(*v11 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1B964D050;
  v14 = v13 + v12 + v11[14];
  *(v13 + v12) = v5;
  *v14 = v3;
  *(v14 + 8) = v1;
  *(v14 + 16) = 2;
  v15 = *MEMORY[0x1E69AADC8];
  sub_1B964C750();
  OUTLINED_FUNCTION_21_7();
  (*(v16 + 104))(v14, v15);
  sub_1B964C760();
  OUTLINED_FUNCTION_242();
}

void Apple_Parsec_Feedback_V2_ListValue.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    v1 = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 1)
    {
      OUTLINED_FUNCTION_9();
      sub_1B9002548();
    }
  }
}

void sub_1B9002548()
{
  OUTLINED_FUNCTION_273_0();
  v2 = OUTLINED_FUNCTION_114_1();
  v3(v2);
  v4 = OUTLINED_FUNCTION_128();
  v6 = sub_1B8CD2450(v4, v5, v0);
  OUTLINED_FUNCTION_157_1(v1, v7, v6);
  OUTLINED_FUNCTION_272_0();
}

void Apple_Parsec_Feedback_V2_ListValue.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_822();
  OUTLINED_FUNCTION_614();
  OUTLINED_FUNCTION_835();
  if (!v4 || (type metadata accessor for Apple_Parsec_Feedback_V2_Value(0), sub_1B8CD2450(&qword_1EBAC0BB0, type metadata accessor for Apple_Parsec_Feedback_V2_Value, protocol conformance descriptor for Apple_Parsec_Feedback_V2_Value), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_749(), OUTLINED_FUNCTION_687(), sub_1B964C730(), !v3))
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_ListValue(0);
    OUTLINED_FUNCTION_8_1();
  }

  OUTLINED_FUNCTION_823();
}

uint64_t sub_1B90026E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2450(&qword_1EBAC1C30, type metadata accessor for Apple_Parsec_Feedback_V2_ListValue, protocol conformance descriptor for Apple_Parsec_Feedback_V2_ListValue);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9002768(uint64_t a1)
{
  v2 = sub_1B8CD2450(&qword_1EBAC1A50, type metadata accessor for Apple_Parsec_Feedback_V2_ListValue, protocol conformance descriptor for Apple_Parsec_Feedback_V2_ListValue);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B90027D8(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2450(&qword_1EBAC1A50, type metadata accessor for Apple_Parsec_Feedback_V2_ListValue, protocol conformance descriptor for Apple_Parsec_Feedback_V2_ListValue);

  return sub_1B964C5D0();
}

uint64_t sub_1B9002864()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC05A8);
  __swift_project_value_buffer(v0, qword_1EBAC05A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "timestamp";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "queryId";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "cbaType";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "url";
  *(v14 + 1) = 3;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Feedback_V2_CBAEngagementFeedback.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
        OUTLINED_FUNCTION_12();
        sub_1B964C560();
        break;
      case 3:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B9002B68(v3, v4, v5, v6);
        break;
      case 4:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      default:
        continue;
    }
  }
}

void Apple_Parsec_Feedback_V2_CBAEngagementFeedback.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_800();
  if (!OUTLINED_FUNCTION_25_11() || (OUTLINED_FUNCTION_35_6(), sub_1B964C720(), !v3))
  {
    if (!*(v4 + 8) || (OUTLINED_FUNCTION_29(), sub_1B964C720(), !v3))
    {
      if (!*(v4 + 16) || (OUTLINED_FUNCTION_94_4(), sub_1B9014108(), OUTLINED_FUNCTION_687(), sub_1B964C680(), !v3))
      {
        OUTLINED_FUNCTION_1();
        if (!v5 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), !v3))
        {
          type metadata accessor for Apple_Parsec_Feedback_V2_CBAEngagementFeedback(0);
          OUTLINED_FUNCTION_8_1();
        }
      }
    }
  }

  OUTLINED_FUNCTION_799();
}

uint64_t sub_1B9002D44(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2450(&qword_1EBAC1C28, type metadata accessor for Apple_Parsec_Feedback_V2_CBAEngagementFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_CBAEngagementFeedback);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9002DC4(uint64_t a1)
{
  v2 = sub_1B8CD2450(&qword_1EBAC1A68, type metadata accessor for Apple_Parsec_Feedback_V2_CBAEngagementFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_CBAEngagementFeedback);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9002E34(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2450(&qword_1EBAC1A68, type metadata accessor for Apple_Parsec_Feedback_V2_CBAEngagementFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_CBAEngagementFeedback);

  return sub_1B964C5D0();
}

uint64_t sub_1B9002EC0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC05C0);
  __swift_project_value_buffer(v0, qword_1EBAC05C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1B96511B0;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = 1;
  *v5 = "timestamp";
  *(v5 + 8) = 9;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1B964C750();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "result";
  *(v9 + 8) = 6;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "userSelection";
  *(v11 + 1) = 13;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "cardSection";
  *(v13 + 1) = 11;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "uuidBytes";
  *(v15 + 1) = 9;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "sections";
  *(v17 + 1) = 8;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "uploadedDataIdentifier";
  *(v19 + 1) = 22;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "reportType";
  *(v21 + 1) = 10;
  v21[16] = 2;
  v8();
  return sub_1B964C760();
}

uint64_t sub_1B9003260()
{
  *(v0 + 16) = 0;
  v1 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UserReportFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__result;
  v2 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UserReportFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__userSelection;
  v4 = type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UserReportFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__cardSection;
  v6 = type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionForFeedback(0);
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UserReportFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__uuidBytes) = xmmword_1B9652FE0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UserReportFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__sections) = MEMORY[0x1E69E7CC0];
  v7 = (v0 + OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UserReportFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__uploadedDataIdentifier);
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  v8 = v0 + OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UserReportFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__reportType;
  *v8 = 0;
  *(v8 + 8) = 1;
  return v0;
}

uint64_t sub_1B900334C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0730, &qword_1B966F9B8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v35 = v33 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC06D8, &qword_1B966F960);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v33[2] = v33 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9168, &qword_1B964D950);
  MEMORY[0x1EEE9AC00](v7 - 8);
  *(v1 + 16) = 0;
  v8 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UserReportFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__result;
  v9 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(0);
  __swift_storeEnumTagSinglePayload(v1 + v8, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UserReportFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__userSelection;
  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(0);
  __swift_storeEnumTagSinglePayload(v1 + v10, 1, 1, v11);
  v12 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UserReportFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__cardSection;
  v33[1] = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UserReportFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__cardSection;
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionForFeedback(0);
  __swift_storeEnumTagSinglePayload(v1 + v12, 1, 1, v13);
  v14 = (v1 + OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UserReportFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__uuidBytes);
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UserReportFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__uuidBytes) = xmmword_1B9652FE0;
  v34 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UserReportFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__sections;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UserReportFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__sections) = MEMORY[0x1E69E7CC0];
  v15 = (v1 + OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UserReportFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__uploadedDataIdentifier);
  *v15 = 0;
  v15[1] = 0xE000000000000000;
  v16 = v1 + OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UserReportFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__reportType;
  v36 = v1 + OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UserReportFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__reportType;
  *v16 = 0;
  *(v16 + 8) = 1;
  swift_beginAccess();
  v17 = *(a1 + 16);
  swift_beginAccess();
  *(v1 + 16) = v17;
  swift_beginAccess();
  sub_1B8F1B8B8();
  swift_beginAccess();
  sub_1B8F188B0();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8F1B8B8();
  swift_beginAccess();
  sub_1B8F188B0();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8F1B8B8();
  swift_beginAccess();
  sub_1B8F188B0();
  swift_endAccess();
  v18 = (a1 + OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UserReportFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__uuidBytes);
  swift_beginAccess();
  v20 = *v18;
  v19 = v18[1];
  swift_beginAccess();
  v21 = *v14;
  v22 = v14[1];
  *v14 = v20;
  v14[1] = v19;
  sub_1B8D91FCC(v20, v19);
  sub_1B8D538A0(v21, v22);
  v23 = OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UserReportFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__sections;
  swift_beginAccess();
  v24 = *(a1 + v23);
  v25 = v34;
  swift_beginAccess();
  *(v1 + v25) = v24;

  v26 = (a1 + OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UserReportFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__uploadedDataIdentifier);
  swift_beginAccess();
  v27 = *v26;
  v28 = v26[1];
  swift_beginAccess();
  *v15 = v27;
  v15[1] = v28;

  v29 = (a1 + OBJC_IVAR____TtCV10PegasusAPI43Apple_Parsec_Feedback_V2_UserReportFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__reportType);
  swift_beginAccess();
  v30 = *v29;
  LOBYTE(v29) = *(v29 + 8);

  v31 = v36;
  swift_beginAccess();
  *v31 = v30;
  *(v31 + 8) = v29;
  return v1;
}