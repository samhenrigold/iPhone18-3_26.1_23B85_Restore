uint64_t sub_1B8FC2FB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2450(&qword_1EBAC1E20, type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8FC3038(uint64_t a1)
{
  v2 = sub_1B8CD2450(&qword_1EBAC1518, type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8FC30A8(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2450(&qword_1EBAC1518, type metadata accessor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_MailRankingSignalsForFeedback);

  return sub_1B964C5D0();
}

uint64_t sub_1B8FC3140()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABFFA8);
  __swift_project_value_buffer(v0, qword_1EBABFFA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1B96594C0;
  v4 = v39 + v3;
  v5 = v39 + v3 + v1[14];
  *(v39 + v3) = 1;
  *v5 = "topicalityScore";
  *(v5 + 8) = 15;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1B964C750();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "freshness";
  *(v9 + 8) = 9;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "engagementScore";
  *(v11 + 1) = 15;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "predictedLikelihoodOfEngagement";
  *(v13 + 1) = 31;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "wasNominatedAsTopHit";
  *(v15 + 1) = 20;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "sodiumL2Score";
  *(v17 + 1) = 13;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "isExactMatchOfLaunchString";
  *(v19 + 1) = 26;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "wasEngagedInSpotlight";
  *(v21 + 1) = 21;
  v21[16] = 2;
  v8();
  v22 = (v4 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 9;
  *v23 = "resultQueryRecency";
  *(v23 + 1) = 18;
  v23[16] = 2;
  v8();
  v24 = (v4 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 10;
  *v25 = "pommesL2Score";
  *(v25 + 1) = 13;
  v25[16] = 2;
  v8();
  v26 = (v4 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 11;
  *v27 = "isSemanticMatch";
  *(v27 + 1) = 15;
  v27[16] = 2;
  v8();
  v28 = (v4 + 11 * v2);
  v29 = v28 + v1[14];
  *v28 = 12;
  *v29 = "semanticScore";
  *(v29 + 1) = 13;
  v29[16] = 2;
  v8();
  v30 = (v4 + 12 * v2);
  v31 = v30 + v1[14];
  *v30 = 13;
  *v31 = "isSyntacticMatch";
  *(v31 + 1) = 16;
  v31[16] = 2;
  v8();
  v32 = (v4 + 13 * v2);
  v33 = v32 + v1[14];
  *v32 = 14;
  *v33 = "syntacticScore";
  *(v33 + 1) = 14;
  v33[16] = 2;
  v8();
  v34 = (v4 + 14 * v2);
  v35 = v34 + v1[14];
  *v34 = 15;
  *v35 = "embeddingStatus";
  *(v35 + 1) = 15;
  v35[16] = 2;
  v8();
  v36 = (v4 + 15 * v2);
  v37 = v36 + v1[14];
  *v36 = 16;
  *v37 = "itemAgeInDays";
  *(v37 + 1) = 13;
  v37[16] = 2;
  v8();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Feedback_V2_CoreSpotlightRankingSignalsForFeedback.decodeMessage<A>(decoder:)()
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
      case 4:
      case 6:
      case 10:
      case 12:
      case 14:
        OUTLINED_FUNCTION_12();
        sub_1B964C490();
        break;
      case 5:
      case 7:
      case 8:
      case 11:
      case 13:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      case 9:
        v7 = OUTLINED_FUNCTION_9();
        sub_1B8FC3790(v7, v8, v9, v10);
        break;
      case 15:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B8FC37F8(v3, v4, v5, v6);
        break;
      case 16:
        OUTLINED_FUNCTION_12();
        sub_1B964C540();
        break;
      default:
        continue;
    }
  }
}

void Apple_Parsec_Feedback_V2_CoreSpotlightRankingSignalsForFeedback.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_800();
  OUTLINED_FUNCTION_614();
  OUTLINED_FUNCTION_750();
  if (v5 || (OUTLINED_FUNCTION_26_9(), sub_1B964C6B0(), !v3))
  {
    OUTLINED_FUNCTION_844();
    if (v5 || (OUTLINED_FUNCTION_26_9(), sub_1B964C6B0(), !v3))
    {
      if (*(v4 + 8) == 0.0 || (OUTLINED_FUNCTION_26_9(), sub_1B964C6B0(), !v3))
      {
        if (*(v4 + 12) == 0.0 || (OUTLINED_FUNCTION_26_9(), sub_1B964C6B0(), !v3))
        {
          if (*(v4 + 16) != 1 || (OUTLINED_FUNCTION_29(), sub_1B964C670(), !v3))
          {
            if (*(v4 + 20) == 0.0 || (OUTLINED_FUNCTION_26_9(), sub_1B964C6B0(), !v3))
            {
              if (*(v4 + 24) != 1 || (OUTLINED_FUNCTION_29(), sub_1B964C670(), !v3))
              {
                if (*(v4 + 25) != 1 || (OUTLINED_FUNCTION_29(), sub_1B964C670(), !v3))
                {
                  if (!*(v4 + 32) || (OUTLINED_FUNCTION_94_4(), sub_1B90137D8(), OUTLINED_FUNCTION_687(), sub_1B964C680(), !v3))
                  {
                    if (*(v4 + 44) == 0.0 || (OUTLINED_FUNCTION_26_9(), sub_1B964C6B0(), !v3))
                    {
                      if (*(v4 + 48) != 1 || (OUTLINED_FUNCTION_29(), sub_1B964C670(), !v3))
                      {
                        if (*(v4 + 52) == 0.0 || (OUTLINED_FUNCTION_26_9(), sub_1B964C6B0(), !v3))
                        {
                          if (*(v4 + 56) != 1 || (OUTLINED_FUNCTION_29(), sub_1B964C670(), !v3))
                          {
                            if (*(v4 + 60) == 0.0 || (OUTLINED_FUNCTION_26_9(), sub_1B964C6B0(), !v3))
                            {
                              if (!*(v4 + 64) || (OUTLINED_FUNCTION_94_4(), sub_1B901382C(), OUTLINED_FUNCTION_687(), sub_1B964C680(), !v3))
                              {
                                if (!*(v4 + 76) || (OUTLINED_FUNCTION_29(), sub_1B964C710(), !v3))
                                {
                                  type metadata accessor for Apple_Parsec_Feedback_V2_CoreSpotlightRankingSignalsForFeedback(0);
                                  OUTLINED_FUNCTION_8_1();
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
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_799();
}

uint64_t static Apple_Parsec_Feedback_V2_CoreSpotlightRankingSignalsForFeedback.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_516_0(a1);
  if (!v4)
  {
    return 0;
  }

  OUTLINED_FUNCTION_375_0(v3);
  if (!v4)
  {
    return 0;
  }

  if (*(v2 + 8) != *(v1 + 8))
  {
    return 0;
  }

  OUTLINED_FUNCTION_722_0();
  if (!v4)
  {
    return 0;
  }

  if (*(v2 + 16) != *(v1 + 16))
  {
    return 0;
  }

  if (*(v2 + 20) != *(v1 + 20))
  {
    return 0;
  }

  if (*(v2 + 24) != *(v1 + 24))
  {
    return 0;
  }

  if (*(v2 + 25) != *(v1 + 25))
  {
    return 0;
  }

  v5 = OUTLINED_FUNCTION_492_0();
  if (!sub_1B8D92198(v5, v6, v7))
  {
    return 0;
  }

  if (*(v2 + 44) != *(v1 + 44))
  {
    return 0;
  }

  if (*(v2 + 48) != *(v1 + 48))
  {
    return 0;
  }

  if (*(v2 + 52) != *(v1 + 52))
  {
    return 0;
  }

  if (*(v2 + 56) != *(v1 + 56))
  {
    return 0;
  }

  if (*(v2 + 60) != *(v1 + 60))
  {
    return 0;
  }

  v8 = OUTLINED_FUNCTION_627_0();
  if (!sub_1B8D92198(v8, v9, v10) || *(v2 + 76) != *(v1 + 76))
  {
    return 0;
  }

  type metadata accessor for Apple_Parsec_Feedback_V2_CoreSpotlightRankingSignalsForFeedback(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_40();
  v13 = sub_1B8CD2450(v11, v12, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v13) & 1;
}

uint64_t sub_1B8FC3CF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2450(&qword_1EBAC1E18, type metadata accessor for Apple_Parsec_Feedback_V2_CoreSpotlightRankingSignalsForFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_CoreSpotlightRankingSignalsForFeedback);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8FC3D74(uint64_t a1)
{
  v2 = sub_1B8CD2450(&qword_1EBAC1530, type metadata accessor for Apple_Parsec_Feedback_V2_CoreSpotlightRankingSignalsForFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_CoreSpotlightRankingSignalsForFeedback);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8FC3DE4(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2450(&qword_1EBAC1530, type metadata accessor for Apple_Parsec_Feedback_V2_CoreSpotlightRankingSignalsForFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_CoreSpotlightRankingSignalsForFeedback);

  return sub_1B964C5D0();
}

uint64_t sub_1B8FC3F8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2450(&qword_1EBAC1E10, type metadata accessor for Apple_Parsec_Feedback_V2_Feedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_Feedback);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8FC400C(uint64_t a1)
{
  v2 = sub_1B8CD2450(&qword_1EBAC1548, type metadata accessor for Apple_Parsec_Feedback_V2_Feedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_Feedback);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8FC407C(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2450(&qword_1EBAC1548, type metadata accessor for Apple_Parsec_Feedback_V2_Feedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_Feedback);

  return sub_1B964C5D0();
}

uint64_t sub_1B8FC4108()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABFFD8);
  __swift_project_value_buffer(v0, qword_1EBABFFD8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B96511B0;
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
  *v10 = "viewAppearEvent";
  *(v10 + 8) = 15;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "isOnLockScreen";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "isOverApp";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "readerTextAvailable";
  *(v16 + 1) = 19;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "preexistingInput";
  *(v18 + 1) = 16;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "originatingApp";
  *(v20 + 1) = 14;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "isUsingLoweredSearchBar";
  *(v22 + 1) = 23;
  v22[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Feedback_V2_SearchViewAppearFeedback.decodeMessage<A>(decoder:)()
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
        v3 = OUTLINED_FUNCTION_9();
        sub_1B8FC453C(v3, v4, v5, v6);
        break;
      case 3:
      case 4:
      case 5:
      case 8:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      case 6:
      case 7:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B8FC47B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2450(&qword_1EBAC1E08, type metadata accessor for Apple_Parsec_Feedback_V2_SearchViewAppearFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_SearchViewAppearFeedback);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8FC4834(uint64_t a1)
{
  v2 = sub_1B8CD2450(&qword_1EBAC1560, type metadata accessor for Apple_Parsec_Feedback_V2_SearchViewAppearFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_SearchViewAppearFeedback);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8FC48A4(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2450(&qword_1EBAC1560, type metadata accessor for Apple_Parsec_Feedback_V2_SearchViewAppearFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_SearchViewAppearFeedback);

  return sub_1B964C5D0();
}

uint64_t sub_1B8FC4930()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABFFF0);
  __swift_project_value_buffer(v0, qword_1EBABFFF0);
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
  *v10 = "viewDisappearEvent";
  *(v10 + 1) = 18;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8FC4CF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2450(&qword_1EBAC1E00, type metadata accessor for Apple_Parsec_Feedback_V2_SearchViewDisappearFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_SearchViewDisappearFeedback);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8FC4D70(uint64_t a1)
{
  v2 = sub_1B8CD2450(&qword_1EBAC1578, type metadata accessor for Apple_Parsec_Feedback_V2_SearchViewDisappearFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_SearchViewDisappearFeedback);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8FC4DE0(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2450(&qword_1EBAC1578, type metadata accessor for Apple_Parsec_Feedback_V2_SearchViewDisappearFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_SearchViewDisappearFeedback);

  return sub_1B964C5D0();
}

uint64_t sub_1B8FC4E78()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC0008);
  __swift_project_value_buffer(v0, qword_1EBAC0008);
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
  *v10 = "blendingDuration";
  *(v10 + 8) = 16;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "sections";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "hiddenResults";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "spotlightQueryIntent";
  *(v16 + 1) = 20;
  v16[16] = 2;
  v9();
  return sub_1B964C760();
}

void Apple_Parsec_Feedback_V2_RankingFeedback.decodeMessage<A>(decoder:)()
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

    switch(v1)
    {
      case 1:
        OUTLINED_FUNCTION_41_7();
        sub_1B964C560();
        break;
      case 2:
        OUTLINED_FUNCTION_311_0();
        sub_1B964C510();
        break;
      case 3:
        OUTLINED_FUNCTION_9();
        sub_1B8FC6344();
        break;
      case 4:
        OUTLINED_FUNCTION_9();
        sub_1B8FCACD0();
        break;
      case 5:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B8FC5268(v3, v4, v5, v6);
        break;
      default:
        continue;
    }
  }
}

void Apple_Parsec_Feedback_V2_RankingFeedback.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_817();
  if (!OUTLINED_FUNCTION_25_11() || (OUTLINED_FUNCTION_35_6(), sub_1B964C720(), !v3))
  {
    if (*(v4 + 8) == 0.0 || (OUTLINED_FUNCTION_26_9(), sub_1B964C6F0(), !v3))
    {
      if (!*(*(v4 + 16) + 16) || (type metadata accessor for Apple_Parsec_Feedback_V2_SectionRankingFeedback(0), sub_1B8CD2450(&qword_1EBAC0900, type metadata accessor for Apple_Parsec_Feedback_V2_SectionRankingFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_SectionRankingFeedback), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_687(), sub_1B964C730(), !v3))
      {
        if (!*(*(v4 + 24) + 16) || (OUTLINED_FUNCTION_872(), OUTLINED_FUNCTION_9_16(), sub_1B8CD2450(v5, v6, protocol conformance descriptor for Apple_Parsec_Feedback_V2_SearchResultForFeedback), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_687(), sub_1B964C730(), !v3))
        {
          if (!*(v4 + 32) || (OUTLINED_FUNCTION_94_4(), sub_1B9013928(), OUTLINED_FUNCTION_687(), sub_1B964C680(), !v3))
          {
            type metadata accessor for Apple_Parsec_Feedback_V2_RankingFeedback(0);
            OUTLINED_FUNCTION_8_1();
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_816();
}

uint64_t sub_1B8FC54E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2450(&qword_1EBAC1DF8, type metadata accessor for Apple_Parsec_Feedback_V2_RankingFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_RankingFeedback);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8FC5564(uint64_t a1)
{
  v2 = sub_1B8CD2450(&qword_1EBAC1590, type metadata accessor for Apple_Parsec_Feedback_V2_RankingFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_RankingFeedback);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8FC55D4(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2450(&qword_1EBAC1590, type metadata accessor for Apple_Parsec_Feedback_V2_RankingFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_RankingFeedback);

  return sub_1B964C5D0();
}

uint64_t sub_1B8FC5660()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC0020);
  __swift_project_value_buffer(v0, qword_1EBAC0020);
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
  *v10 = "results";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "section";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "localSectionPosition";
  *(v14 + 1) = 20;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "personalizationScore";
  *(v16 + 1) = 20;
  v16[16] = 2;
  v9();
  return sub_1B964C760();
}

void Apple_Parsec_Feedback_V2_SectionRankingFeedback.decodeMessage<A>(decoder:)()
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

    switch(v1)
    {
      case 1:
        OUTLINED_FUNCTION_41_7();
        sub_1B964C560();
        break;
      case 2:
        OUTLINED_FUNCTION_9();
        sub_1B8FE2F1C();
        break;
      case 3:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B8FC5A08(v3, v4, v5, v6);
        break;
      case 4:
        OUTLINED_FUNCTION_12();
        sub_1B964C540();
        break;
      case 5:
        OUTLINED_FUNCTION_12();
        sub_1B964C510();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B8FC5A08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Feedback_V2_SectionRankingFeedback(0);
  type metadata accessor for Apple_Parsec_Feedback_V2_ResultSectionForFeedback(0);
  sub_1B8CD2450(&qword_1EBAC0920, type metadata accessor for Apple_Parsec_Feedback_V2_ResultSectionForFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_ResultSectionForFeedback);
  return sub_1B964C580();
}

void Apple_Parsec_Feedback_V2_SectionRankingFeedback.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_423_0();
  OUTLINED_FUNCTION_12_8();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAB9178, &unk_1B964D960);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_151();
  type metadata accessor for Apple_Parsec_Feedback_V2_ResultSectionForFeedback(v6);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_175_3();
  if (!*v2 || (v1 = v0, sub_1B964C720(), !v0))
  {
    OUTLINED_FUNCTION_659_0();
    if (!v8 || (type metadata accessor for Apple_Parsec_Feedback_V2_ResultRankingFeedback(0), sub_1B8CD2450(&qword_1EBAC0918, type metadata accessor for Apple_Parsec_Feedback_V2_ResultRankingFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_ResultRankingFeedback), OUTLINED_FUNCTION_60_2(), OUTLINED_FUNCTION_687(), sub_1B964C730(), !v1))
    {
      type metadata accessor for Apple_Parsec_Feedback_V2_SectionRankingFeedback(0);
      OUTLINED_FUNCTION_715_0();
      OUTLINED_FUNCTION_243_1();
      if (v9)
      {
        sub_1B8D9207C(v3, &unk_1EBAB9178, &unk_1B964D960);
      }

      else
      {
        OUTLINED_FUNCTION_12_17();
        OUTLINED_FUNCTION_424();
        sub_1B8FAC528();
        OUTLINED_FUNCTION_330_0();
        sub_1B8CD2450(v10, v11, protocol conformance descriptor for Apple_Parsec_Feedback_V2_ResultSectionForFeedback);
        OUTLINED_FUNCTION_597_0();
        OUTLINED_FUNCTION_687();
        sub_1B964C740();
        OUTLINED_FUNCTION_156_5();
        sub_1B8FAC5C8();
        if (v1)
        {
          goto LABEL_14;
        }
      }

      if (!*(v2 + 16) || (OUTLINED_FUNCTION_29(), sub_1B964C710(), !v1))
      {
        if (*(v2 + 24) == 0.0 || (OUTLINED_FUNCTION_26_9(), sub_1B964C6F0(), !v1))
        {
          OUTLINED_FUNCTION_8_1();
        }
      }
    }
  }

LABEL_14:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

uint64_t sub_1B8FC5D88(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2450(&qword_1EBAC1DF0, type metadata accessor for Apple_Parsec_Feedback_V2_SectionRankingFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_SectionRankingFeedback);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8FC5E08(uint64_t a1)
{
  v2 = sub_1B8CD2450(&qword_1EBAC0900, type metadata accessor for Apple_Parsec_Feedback_V2_SectionRankingFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_SectionRankingFeedback);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8FC5E78(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2450(&qword_1EBAC0900, type metadata accessor for Apple_Parsec_Feedback_V2_SectionRankingFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_SectionRankingFeedback);

  return sub_1B964C5D0();
}

uint64_t sub_1B8FC5F04()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC0038);
  __swift_project_value_buffer(v0, qword_1EBAC0038);
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
  *v10 = "result";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "hiddenResults";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "duplicateResults";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "localResultPosition";
  *(v16 + 1) = 19;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "personalizationScore";
  *(v18 + 1) = 20;
  v18[16] = 2;
  v9();
  return sub_1B964C760();
}

void Apple_Parsec_Feedback_V2_ResultRankingFeedback.decodeMessage<A>(decoder:)()
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

    switch(v1)
    {
      case 1:
        OUTLINED_FUNCTION_41_7();
        sub_1B964C560();
        break;
      case 2:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B8FCA4F8(v3, v4, v5, v6);
        break;
      case 3:
        OUTLINED_FUNCTION_569_0();
        OUTLINED_FUNCTION_9();
        sub_1B8FE2F1C();
        break;
      case 4:
        OUTLINED_FUNCTION_9();
        sub_1B8FC6344();
        break;
      case 5:
        OUTLINED_FUNCTION_12();
        sub_1B964C540();
        break;
      case 6:
        OUTLINED_FUNCTION_12();
        sub_1B964C510();
        break;
      default:
        continue;
    }
  }
}

void sub_1B8FC6344()
{
  OUTLINED_FUNCTION_273_0();
  v2 = OUTLINED_FUNCTION_114_1();
  v3(v2);
  v4 = OUTLINED_FUNCTION_128();
  v6 = sub_1B8CD2450(v4, v5, v0);
  OUTLINED_FUNCTION_157_1(v1 + 16, v7, v6);
  OUTLINED_FUNCTION_272_0();
}

void Apple_Parsec_Feedback_V2_ResultRankingFeedback.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_614();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9168, &qword_1B964D950);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_77_3();
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(v6);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_62();
  if (!*v0 || (OUTLINED_FUNCTION_35_6(), sub_1B964C720(), !v1))
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_ResultRankingFeedback(0);
    OUTLINED_FUNCTION_743();
    OUTLINED_FUNCTION_178(v3, 1, v7);
    if (v9)
    {
      sub_1B8D9207C(v3, &qword_1EBAB9168, &qword_1B964D950);
    }

    else
    {
      OUTLINED_FUNCTION_2_21();
      sub_1B8FAC528();
      OUTLINED_FUNCTION_9_16();
      sub_1B8CD2450(v10, v11, protocol conformance descriptor for Apple_Parsec_Feedback_V2_SearchResultForFeedback);
      OUTLINED_FUNCTION_687();
      sub_1B964C740();
      OUTLINED_FUNCTION_13_13();
      sub_1B8FAC5C8();
      if (v1)
      {
        goto LABEL_16;
      }
    }

    OUTLINED_FUNCTION_659_0();
    if (!v12 || (OUTLINED_FUNCTION_9_16(), sub_1B8CD2450(v13, v14, protocol conformance descriptor for Apple_Parsec_Feedback_V2_SearchResultForFeedback), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_687(), sub_1B964C730(), !v1))
    {
      if (!*(*(v2 + 16) + 16) || (OUTLINED_FUNCTION_9_16(), sub_1B8CD2450(v15, v16, protocol conformance descriptor for Apple_Parsec_Feedback_V2_SearchResultForFeedback), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_687(), sub_1B964C730(), !v1))
      {
        if (!*(v2 + 24) || (OUTLINED_FUNCTION_29(), sub_1B964C710(), !v1))
        {
          if (*(v2 + 32) == 0.0 || (OUTLINED_FUNCTION_26_9(), sub_1B964C6F0(), !v1))
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

uint64_t sub_1B8FC6694(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2450(&qword_1EBAC1DE8, type metadata accessor for Apple_Parsec_Feedback_V2_ResultRankingFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_ResultRankingFeedback);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8FC6714(uint64_t a1)
{
  v2 = sub_1B8CD2450(&qword_1EBAC0918, type metadata accessor for Apple_Parsec_Feedback_V2_ResultRankingFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_ResultRankingFeedback);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8FC6784(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2450(&qword_1EBAC0918, type metadata accessor for Apple_Parsec_Feedback_V2_ResultRankingFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_ResultRankingFeedback);

  return sub_1B964C5D0();
}

uint64_t sub_1B8FC6810()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC0050);
  __swift_project_value_buffer(v0, qword_1EBAC0050);
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
  *v10 = "result";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8FC6A28()
{
  OUTLINED_FUNCTION_515_0();
  while (1)
  {
    OUTLINED_FUNCTION_257();
    result = sub_1B964C3C0();
    if (v1 || (v3 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_113_0();
      OUTLINED_FUNCTION_445_0();
      v0();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_1_0();
      sub_1B964C560();
    }
  }

  return result;
}

uint64_t sub_1B8FC6AA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Feedback_V2_ResultFeedback(0);
  type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(0);
  sub_1B8CD2450(&qword_1EBAC0828, type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_SearchResultForFeedback);
  return sub_1B964C580();
}

void Apple_Parsec_Feedback_V2_ResultFeedback.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_423_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9168, &qword_1B964D950);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_151();
  type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(v5);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_175_3();
  if (!*v1 || (OUTLINED_FUNCTION_480_0(), sub_1B964C720(), !v0))
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_ResultFeedback(0);
    OUTLINED_FUNCTION_715_0();
    OUTLINED_FUNCTION_243_1();
    if (v7)
    {
      sub_1B8D9207C(v2, &qword_1EBAB9168, &qword_1B964D950);
LABEL_7:
      OUTLINED_FUNCTION_741();
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_2_21();
    OUTLINED_FUNCTION_424();
    sub_1B8FAC528();
    OUTLINED_FUNCTION_9_16();
    sub_1B8CD2450(v8, v9, protocol conformance descriptor for Apple_Parsec_Feedback_V2_SearchResultForFeedback);
    OUTLINED_FUNCTION_597_0();
    OUTLINED_FUNCTION_729();
    sub_1B964C740();
    OUTLINED_FUNCTION_13_13();
    sub_1B8FAC5C8();
    if (!v0)
    {
      goto LABEL_7;
    }
  }

LABEL_8:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

uint64_t sub_1B8FC6D70(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2450(&qword_1EBAC1DE0, type metadata accessor for Apple_Parsec_Feedback_V2_ResultFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_ResultFeedback);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8FC6DF0(uint64_t a1)
{
  v2 = sub_1B8CD2450(&qword_1EBAC15C8, type metadata accessor for Apple_Parsec_Feedback_V2_ResultFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_ResultFeedback);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8FC6E60(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2450(&qword_1EBAC15C8, type metadata accessor for Apple_Parsec_Feedback_V2_ResultFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_ResultFeedback);

  return sub_1B964C5D0();
}

uint64_t sub_1B8FC6EEC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC0068);
  __swift_project_value_buffer(v0, qword_1EBAC0068);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B96511B0;
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
  *v10 = "actionEngaged";
  *(v10 + 8) = 13;
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
  *v14 = "destination";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "actionTarget";
  *(v16 + 1) = 12;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "result";
  *(v18 + 1) = 6;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "titleText";
  *(v20 + 1) = 9;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "matchesUnengagedSuggestion";
  *(v22 + 1) = 26;
  v22[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Feedback_V2_ResultEngagementFeedback.decodeMessage<A>(decoder:)()
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
      case 8:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      case 3:
        v7 = OUTLINED_FUNCTION_9();
        sub_1B8FC7330(v7, v8, v9, v10);
        break;
      case 4:
        v11 = OUTLINED_FUNCTION_9();
        sub_1B8FC7398(v11, v12, v13, v14);
        break;
      case 5:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B8FC7400(v3, v4, v5, v6);
        break;
      case 6:
        v15 = OUTLINED_FUNCTION_9();
        sub_1B8FC7468(v15, v16, v17, v18);
        break;
      case 7:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B8FC7468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Feedback_V2_ResultEngagementFeedback(0);
  type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(0);
  sub_1B8CD2450(&qword_1EBAC0828, type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_SearchResultForFeedback);
  return sub_1B964C580();
}

void Apple_Parsec_Feedback_V2_ResultEngagementFeedback.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_614();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9168, &qword_1B964D950);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_151();
  type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(v6);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_175_3();
  if (!*v0 || (OUTLINED_FUNCTION_35_6(), sub_1B964C720(), !v1))
  {
    if (*(v2 + 8) != 1 || (OUTLINED_FUNCTION_29(), sub_1B964C670(), !v1))
    {
      v8 = *(v2 + 16);
      if (!v8 || (OUTLINED_FUNCTION_540_0(v8), sub_1B901397C(), OUTLINED_FUNCTION_687(), sub_1B964C680(), !v1))
      {
        v9 = *(v2 + 32);
        if (!v9 || (OUTLINED_FUNCTION_540_0(v9), sub_1B90139D0(), OUTLINED_FUNCTION_687(), sub_1B964C680(), !v1))
        {
          v10 = *(v2 + 48);
          if (!v10 || (OUTLINED_FUNCTION_540_0(v10), sub_1B9013A24(), OUTLINED_FUNCTION_687(), sub_1B964C680(), !v1))
          {
            type metadata accessor for Apple_Parsec_Feedback_V2_ResultEngagementFeedback(0);
            OUTLINED_FUNCTION_715_0();
            OUTLINED_FUNCTION_243_1();
            if (v11)
            {
              sub_1B8D9207C(v3, &qword_1EBAB9168, &qword_1B964D950);
            }

            else
            {
              OUTLINED_FUNCTION_2_21();
              OUTLINED_FUNCTION_424();
              sub_1B8FAC528();
              OUTLINED_FUNCTION_9_16();
              sub_1B8CD2450(v12, v13, protocol conformance descriptor for Apple_Parsec_Feedback_V2_SearchResultForFeedback);
              OUTLINED_FUNCTION_597_0();
              OUTLINED_FUNCTION_687();
              sub_1B964C740();
              OUTLINED_FUNCTION_13_13();
              sub_1B8FAC5C8();
              if (v1)
              {
                goto LABEL_20;
              }
            }

            OUTLINED_FUNCTION_1();
            if (!v14 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), !v1))
            {
              if (*(v2 + 80) != 1 || (OUTLINED_FUNCTION_29(), sub_1B964C670(), !v1))
              {
                OUTLINED_FUNCTION_8_1();
              }
            }
          }
        }
      }
    }
  }

LABEL_20:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

uint64_t sub_1B8FC783C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2450(&qword_1EBAC1DD8, type metadata accessor for Apple_Parsec_Feedback_V2_ResultEngagementFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_ResultEngagementFeedback);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8FC78BC(uint64_t a1)
{
  v2 = sub_1B8CD2450(&qword_1EBAC15E0, type metadata accessor for Apple_Parsec_Feedback_V2_ResultEngagementFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_ResultEngagementFeedback);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8FC792C(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2450(&qword_1EBAC15E0, type metadata accessor for Apple_Parsec_Feedback_V2_ResultEngagementFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_ResultEngagementFeedback);

  return sub_1B964C5D0();
}

uint64_t sub_1B8FC79C4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC0080);
  __swift_project_value_buffer(v0, qword_1EBAC0080);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1B964D040;
  v4 = v30 + v3 + v1[14];
  *(v30 + v3) = 1;
  *v4 = "commandType";
  *(v4 + 8) = 11;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v30 + v3 + v2 + v1[14];
  *(v30 + v3 + v2) = 2;
  *v8 = "commandDetail";
  *(v8 + 8) = 13;
  *(v8 + 16) = 2;
  v7();
  v9 = (v30 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "uniqueButtonId";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v7();
  v11 = (v30 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "cardSectionId";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v7();
  v13 = (v30 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "result";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v7();
  v15 = (v30 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "timestamp";
  *(v16 + 1) = 9;
  v16[16] = 2;
  v7();
  v17 = (v30 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "resultSectionId";
  *(v18 + 1) = 15;
  v18[16] = 2;
  v7();
  v19 = (v30 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "triggerEvent";
  *(v20 + 1) = 12;
  v20[16] = 2;
  v7();
  v21 = (v30 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "contactActionType";
  *(v22 + 1) = 17;
  v22[16] = 2;
  v7();
  v23 = (v30 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "didDisplayHandleOptions";
  *(v24 + 1) = 23;
  v24[16] = 2;
  v7();
  v25 = (v30 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "didSelectFromOptionsMenu";
  *(v26 + 1) = 24;
  v26[16] = 2;
  v7();
  v27 = (v30 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "photosAttributes";
  *(v28 + 1) = 16;
  v28[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t sub_1B8FC7E40()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0xE000000000000000;
  v1 = OBJC_IVAR____TtCV10PegasusAPI50Apple_Parsec_Feedback_V2_CommandEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__result;
  v2 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI50Apple_Parsec_Feedback_V2_CommandEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__timestamp) = 0;
  v3 = (v0 + OBJC_IVAR____TtCV10PegasusAPI50Apple_Parsec_Feedback_V2_CommandEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__resultSectionID);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  v4 = v0 + OBJC_IVAR____TtCV10PegasusAPI50Apple_Parsec_Feedback_V2_CommandEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__triggerEvent;
  *v4 = 0;
  *(v4 + 8) = 1;
  v5 = v0 + OBJC_IVAR____TtCV10PegasusAPI50Apple_Parsec_Feedback_V2_CommandEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__contactActionType;
  *v5 = 0;
  *(v5 + 8) = 1;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI50Apple_Parsec_Feedback_V2_CommandEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__didDisplayHandleOptions) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI50Apple_Parsec_Feedback_V2_CommandEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__didSelectFromOptionsMenu) = 0;
  v6 = OBJC_IVAR____TtCV10PegasusAPI50Apple_Parsec_Feedback_V2_CommandEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__photosAttributes;
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAttributes(0);
  __swift_storeEnumTagSinglePayload(v0 + v6, 1, 1, v7);
  return v0;
}

uint64_t sub_1B8FC7F28(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0718, &qword_1B966F9A0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v45 = v38 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9168, &qword_1B964D950);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v38[2] = v38 - v6;
  *(v1 + 16) = 0;
  *(v1 + 32) = 0;
  *(v1 + 24) = 1;
  *(v1 + 40) = 0xE000000000000000;
  *(v1 + 56) = 0;
  *(v1 + 48) = 0;
  *(v1 + 64) = 0xE000000000000000;
  v7 = OBJC_IVAR____TtCV10PegasusAPI50Apple_Parsec_Feedback_V2_CommandEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__result;
  v38[1] = OBJC_IVAR____TtCV10PegasusAPI50Apple_Parsec_Feedback_V2_CommandEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__result;
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(0);
  __swift_storeEnumTagSinglePayload(v1 + v7, 1, 1, v8);
  v39 = OBJC_IVAR____TtCV10PegasusAPI50Apple_Parsec_Feedback_V2_CommandEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__timestamp;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI50Apple_Parsec_Feedback_V2_CommandEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__timestamp) = 0;
  v9 = (v1 + OBJC_IVAR____TtCV10PegasusAPI50Apple_Parsec_Feedback_V2_CommandEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__resultSectionID);
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  v10 = v1 + OBJC_IVAR____TtCV10PegasusAPI50Apple_Parsec_Feedback_V2_CommandEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__triggerEvent;
  v40 = v1 + OBJC_IVAR____TtCV10PegasusAPI50Apple_Parsec_Feedback_V2_CommandEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__triggerEvent;
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = v1 + OBJC_IVAR____TtCV10PegasusAPI50Apple_Parsec_Feedback_V2_CommandEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__contactActionType;
  v41 = v1 + OBJC_IVAR____TtCV10PegasusAPI50Apple_Parsec_Feedback_V2_CommandEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__contactActionType;
  *v11 = 0;
  *(v11 + 8) = 1;
  v42 = OBJC_IVAR____TtCV10PegasusAPI50Apple_Parsec_Feedback_V2_CommandEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__didDisplayHandleOptions;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI50Apple_Parsec_Feedback_V2_CommandEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__didDisplayHandleOptions) = 0;
  v43 = OBJC_IVAR____TtCV10PegasusAPI50Apple_Parsec_Feedback_V2_CommandEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__didSelectFromOptionsMenu;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI50Apple_Parsec_Feedback_V2_CommandEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__didSelectFromOptionsMenu) = 0;
  v12 = OBJC_IVAR____TtCV10PegasusAPI50Apple_Parsec_Feedback_V2_CommandEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__photosAttributes;
  v44 = OBJC_IVAR____TtCV10PegasusAPI50Apple_Parsec_Feedback_V2_CommandEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__photosAttributes;
  v13 = type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAttributes(0);
  __swift_storeEnumTagSinglePayload(v1 + v12, 1, 1, v13);
  swift_beginAccess();
  v14 = *(a1 + 16);
  v15 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v14;
  *(v1 + 24) = v15;
  swift_beginAccess();
  v17 = *(a1 + 32);
  v16 = *(a1 + 40);
  swift_beginAccess();
  *(v1 + 32) = v17;
  *(v1 + 40) = v16;
  swift_beginAccess();
  v18 = *(a1 + 48);
  swift_beginAccess();
  *(v1 + 48) = v18;
  swift_beginAccess();
  v20 = *(a1 + 56);
  v19 = *(a1 + 64);
  swift_beginAccess();
  *(v1 + 56) = v20;
  *(v1 + 64) = v19;

  swift_beginAccess();
  sub_1B8F1B8B8();
  swift_beginAccess();
  sub_1B8F188B0();
  swift_endAccess();
  v21 = OBJC_IVAR____TtCV10PegasusAPI50Apple_Parsec_Feedback_V2_CommandEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__timestamp;
  swift_beginAccess();
  v22 = *(a1 + v21);
  v23 = v39;
  swift_beginAccess();
  *(v1 + v23) = v22;
  v24 = (a1 + OBJC_IVAR____TtCV10PegasusAPI50Apple_Parsec_Feedback_V2_CommandEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__resultSectionID);
  swift_beginAccess();
  v26 = *v24;
  v25 = v24[1];
  swift_beginAccess();
  *v9 = v26;
  v9[1] = v25;

  v27 = (a1 + OBJC_IVAR____TtCV10PegasusAPI50Apple_Parsec_Feedback_V2_CommandEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__triggerEvent);
  swift_beginAccess();
  v28 = *v27;
  LOBYTE(v27) = *(v27 + 8);
  v29 = v40;
  swift_beginAccess();
  *v29 = v28;
  *(v29 + 8) = v27;
  v30 = (a1 + OBJC_IVAR____TtCV10PegasusAPI50Apple_Parsec_Feedback_V2_CommandEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__contactActionType);
  swift_beginAccess();
  v31 = *v30;
  LOBYTE(v30) = *(v30 + 8);
  v32 = v41;
  swift_beginAccess();
  *v32 = v31;
  *(v32 + 8) = v30;
  v33 = OBJC_IVAR____TtCV10PegasusAPI50Apple_Parsec_Feedback_V2_CommandEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__didDisplayHandleOptions;
  swift_beginAccess();
  LOBYTE(v33) = *(a1 + v33);
  v34 = v42;
  swift_beginAccess();
  *(v1 + v34) = v33;
  v35 = OBJC_IVAR____TtCV10PegasusAPI50Apple_Parsec_Feedback_V2_CommandEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__didSelectFromOptionsMenu;
  swift_beginAccess();
  LOBYTE(v35) = *(a1 + v35);
  v36 = v43;
  swift_beginAccess();
  *(v1 + v36) = v35;
  swift_beginAccess();
  sub_1B8F1B8B8();

  swift_beginAccess();
  sub_1B8F188B0();
  swift_endAccess();
  return v1;
}

uint64_t sub_1B8FC8598()
{

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI50Apple_Parsec_Feedback_V2_CommandEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__result, &qword_1EBAB9168, &qword_1B964D950);

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI50Apple_Parsec_Feedback_V2_CommandEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__photosAttributes, &qword_1EBAC0718, &qword_1B966F9A0);
  return v0;
}

void sub_1B8FC8694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
        sub_1B8FDA25C(a2, a1, a3, a4, sub_1B9013B20, &type metadata for Apple_Parsec_Feedback_V2_CommandType);
        continue;
      case 2:
        sub_1B8FFD46C(a2, a1, a3, a4, MEMORY[0x1E69AACE0]);
        continue;
      case 3:
        sub_1B8FC8930(a2, a1, a3, a4);
        continue;
      case 4:
        sub_1B8DE24EC(a2, a1);
        continue;
      case 5:
        sub_1B8FC89B4(a2, a1, a3, a4);
        continue;
      case 6:
        sub_1B8FC8A90(a2, a1, a3, a4, &OBJC_IVAR____TtCV10PegasusAPI50Apple_Parsec_Feedback_V2_CommandEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__timestamp, MEMORY[0x1E69AAD00]);
        continue;
      case 7:
        sub_1B9003EAC(a2, a1, a3, a4, &OBJC_IVAR____TtCV10PegasusAPI50Apple_Parsec_Feedback_V2_CommandEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__resultSectionID, MEMORY[0x1E69AACE0]);
        continue;
      case 8:
        v16 = sub_1B901397C;
        v17 = a2;
        v18 = a1;
        v19 = a3;
        v20 = a4;
        v21 = &OBJC_IVAR____TtCV10PegasusAPI50Apple_Parsec_Feedback_V2_CommandEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__triggerEvent;
        v22 = &type metadata for Apple_Parsec_Feedback_V2_TriggerEngagementEvent;
        goto LABEL_17;
      case 9:
        v16 = sub_1B9023DE0;
        v17 = a2;
        v18 = a1;
        v19 = a3;
        v20 = a4;
        v21 = &OBJC_IVAR____TtCV10PegasusAPI50Apple_Parsec_Feedback_V2_CommandEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__contactActionType;
        v22 = &type metadata for Apple_Parsec_Feedback_V2_ContactActionType;
LABEL_17:
        sub_1B9003F0C(v17, v18, v19, v20, v21, v16, v22);
        continue;
      case 10:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV10PegasusAPI50Apple_Parsec_Feedback_V2_CommandEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__didDisplayHandleOptions;
        goto LABEL_15;
      case 11:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV10PegasusAPI50Apple_Parsec_Feedback_V2_CommandEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__didSelectFromOptionsMenu;
LABEL_15:
        sub_1B900709C(v11, v12, v13, v14, v15);
        break;
      case 12:
        sub_1B8FC8AF0(a2, a1, a3, a4);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B8FC8930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C560();
  return swift_endAccess();
}

uint64_t sub_1B8FC89B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(0);
  sub_1B8CD2450(&qword_1EBAC0828, type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_SearchResultForFeedback);
  sub_1B964C580();
  return swift_endAccess();
}

void sub_1B8FC8A90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_819();
  v7 = v6;
  OUTLINED_FUNCTION_132_5();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_169_2();
  v8 = v7();
  OUTLINED_FUNCTION_199_1(v8);
  OUTLINED_FUNCTION_818();
}

uint64_t sub_1B8FC8AF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAttributes(0);
  sub_1B8CD2450(&qword_1EBAC14D0, type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAttributes, protocol conformance descriptor for Apple_Parsec_Feedback_V2_PhotosAttributes);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B8FC8C0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0718, &qword_1B966F9A0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v34 = &v33 - v8;
  v35 = type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAttributes(0);
  MEMORY[0x1EEE9AC00](v35);
  v33 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9168, &qword_1B964D950);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v37 = &v33 - v11;
  v44 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(0);
  MEMORY[0x1EEE9AC00](v44);
  v36 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v13 = *(a1 + 16);
  v14 = *(a1 + 24);
  v42 = v13;
  v43 = v14;
  if (!Apple_Parsec_Feedback_V2_CommandType.rawValue.getter() || (v42 = v13, v43 = v14, sub_1B9013B20(), result = sub_1B964C680(), !v4))
  {
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
      if (v4)
      {
      }
    }

    swift_beginAccess();
    if (!*(a1 + 48) || (result = sub_1B964C720(), !v4))
    {
      swift_beginAccess();
      v18 = *(a1 + 64);
      v19 = HIBYTE(v18) & 0xF;
      if ((v18 & 0x2000000000000000) == 0)
      {
        v19 = *(a1 + 56) & 0xFFFFFFFFFFFFLL;
      }

      if (!v19 || (, sub_1B964C700(), result = , !v4))
      {
        swift_beginAccess();
        v20 = v37;
        sub_1B8F1B8B8();
        if (__swift_getEnumTagSinglePayload(v20, 1, v44) == 1)
        {
          sub_1B8D9207C(v20, &qword_1EBAB9168, &qword_1B964D950);
        }

        else
        {
          sub_1B8FAC528();
          sub_1B8CD2450(&qword_1EBAC0828, type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_SearchResultForFeedback);
          sub_1B964C740();
          result = sub_1B8FAC5C8();
          if (v4)
          {
            return result;
          }
        }

        v21 = OBJC_IVAR____TtCV10PegasusAPI50Apple_Parsec_Feedback_V2_CommandEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__timestamp;
        swift_beginAccess();
        if (!*(a1 + v21) || (result = sub_1B964C720(), !v4))
        {
          v22 = (a1 + OBJC_IVAR____TtCV10PegasusAPI50Apple_Parsec_Feedback_V2_CommandEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__resultSectionID);
          swift_beginAccess();
          v23 = *v22;
          v24 = v22[1];
          v25 = HIBYTE(v24) & 0xF;
          if ((v24 & 0x2000000000000000) == 0)
          {
            v25 = v23 & 0xFFFFFFFFFFFFLL;
          }

          if (!v25 || (, sub_1B964C700(), result = , !v5))
          {
            v26 = (a1 + OBJC_IVAR____TtCV10PegasusAPI50Apple_Parsec_Feedback_V2_CommandEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__triggerEvent);
            swift_beginAccess();
            if (!*v26 || (v27 = *(v26 + 8), v40 = *v26, v41 = v27, sub_1B901397C(), result = sub_1B964C680(), !v5))
            {
              v28 = (a1 + OBJC_IVAR____TtCV10PegasusAPI50Apple_Parsec_Feedback_V2_CommandEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__contactActionType);
              swift_beginAccess();
              if (!*v28 || (v29 = *(v28 + 8), v38 = *v28, v39 = v29, sub_1B9023DE0(), result = sub_1B964C680(), !v5))
              {
                v30 = OBJC_IVAR____TtCV10PegasusAPI50Apple_Parsec_Feedback_V2_CommandEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__didDisplayHandleOptions;
                swift_beginAccess();
                if (*(a1 + v30) != 1 || (result = sub_1B964C670(), !v5))
                {
                  v31 = OBJC_IVAR____TtCV10PegasusAPI50Apple_Parsec_Feedback_V2_CommandEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__didSelectFromOptionsMenu;
                  swift_beginAccess();
                  if (*(a1 + v31) != 1 || (result = sub_1B964C670(), !v5))
                  {
                    swift_beginAccess();
                    v32 = v34;
                    sub_1B8F1B8B8();
                    if (__swift_getEnumTagSinglePayload(v32, 1, v35) == 1)
                    {
                      return sub_1B8D9207C(v32, &qword_1EBAC0718, &qword_1B966F9A0);
                    }

                    else
                    {
                      sub_1B8FAC528();
                      sub_1B8CD2450(&qword_1EBAC14D0, type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAttributes, protocol conformance descriptor for Apple_Parsec_Feedback_V2_PhotosAttributes);
                      sub_1B964C740();
                      return sub_1B8FAC5C8();
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

BOOL sub_1B8FC9348(uint64_t a1, uint64_t a2)
{
  v72 = type metadata accessor for Apple_Parsec_Feedback_V2_PhotosAttributes(0);
  MEMORY[0x1EEE9AC00](v72);
  v69[0] = v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC20D8, &qword_1B967F580);
  MEMORY[0x1EEE9AC00](v70);
  v73 = v69 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0718, &qword_1B966F9A0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v69[1] = v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v71 = v69 - v9;
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(0);
  MEMORY[0x1EEE9AC00](v10);
  v74 = v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9170, &qword_1B964D958);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v69 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9168, &qword_1B964D950);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = v69 - v19;
  swift_beginAccess();
  v21 = *(a1 + 16);
  v22 = *(a1 + 24);
  swift_beginAccess();
  v23 = *(a2 + 16);
  v24 = *(a2 + 24);
  v77 = v21;
  v78 = v22;
  v75 = v23;
  v76 = v24;
  v25 = Apple_Parsec_Feedback_V2_CommandType.rawValue.getter();
  if (v25 != Apple_Parsec_Feedback_V2_CommandType.rawValue.getter())
  {
    return 0;
  }

  swift_beginAccess();
  v26 = *(a1 + 32);
  v27 = *(a1 + 40);
  swift_beginAccess();
  v28 = v26 == *(a2 + 32) && v27 == *(a2 + 40);
  if (!v28 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v29 = *(a1 + 48);
  swift_beginAccess();
  if (v29 != *(a2 + 48))
  {
    return 0;
  }

  swift_beginAccess();
  v30 = *(a1 + 56);
  v31 = *(a1 + 64);
  swift_beginAccess();
  v32 = v30 == *(a2 + 56) && v31 == *(a2 + 64);
  if (!v32 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  sub_1B8F1B8B8();
  swift_beginAccess();
  v33 = *(v12 + 48);
  sub_1B8F1B8B8();
  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v14, 1, v10) == 1)
  {

    sub_1B8D9207C(v20, &qword_1EBAB9168, &qword_1B964D950);
    if (__swift_getEnumTagSinglePayload(&v14[v33], 1, v10) == 1)
    {
      sub_1B8D9207C(v14, &qword_1EBAB9168, &qword_1B964D950);
LABEL_23:
      v43 = OBJC_IVAR____TtCV10PegasusAPI50Apple_Parsec_Feedback_V2_CommandEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__timestamp;
      swift_beginAccess();
      v44 = *(a1 + v43);
      v45 = OBJC_IVAR____TtCV10PegasusAPI50Apple_Parsec_Feedback_V2_CommandEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__timestamp;
      swift_beginAccess();
      if (v44 != *(a2 + v45))
      {
        goto LABEL_33;
      }

      v46 = (a1 + OBJC_IVAR____TtCV10PegasusAPI50Apple_Parsec_Feedback_V2_CommandEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__resultSectionID);
      swift_beginAccess();
      v47 = *v46;
      v48 = v46[1];
      v49 = (a2 + OBJC_IVAR____TtCV10PegasusAPI50Apple_Parsec_Feedback_V2_CommandEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__resultSectionID);
      swift_beginAccess();
      v50 = v47 == *v49 && v48 == v49[1];
      if (!v50 && (sub_1B964C9F0() & 1) == 0)
      {
        goto LABEL_33;
      }

      v51 = a1 + OBJC_IVAR____TtCV10PegasusAPI50Apple_Parsec_Feedback_V2_CommandEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__triggerEvent;
      swift_beginAccess();
      v52 = *v51;
      v53 = *(v51 + 8);
      v54 = (a2 + OBJC_IVAR____TtCV10PegasusAPI50Apple_Parsec_Feedback_V2_CommandEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__triggerEvent);
      swift_beginAccess();
      if (!sub_1B8D92198(v52, v53, *v54))
      {
        goto LABEL_33;
      }

      v55 = a1 + OBJC_IVAR____TtCV10PegasusAPI50Apple_Parsec_Feedback_V2_CommandEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__contactActionType;
      swift_beginAccess();
      v56 = *v55;
      v57 = *(v55 + 8);
      v58 = (a2 + OBJC_IVAR____TtCV10PegasusAPI50Apple_Parsec_Feedback_V2_CommandEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__contactActionType);
      swift_beginAccess();
      if (!sub_1B8D92198(v56, v57, *v58))
      {
        goto LABEL_33;
      }

      v59 = OBJC_IVAR____TtCV10PegasusAPI50Apple_Parsec_Feedback_V2_CommandEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__didDisplayHandleOptions;
      swift_beginAccess();
      LODWORD(v59) = *(a1 + v59);
      v60 = OBJC_IVAR____TtCV10PegasusAPI50Apple_Parsec_Feedback_V2_CommandEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__didDisplayHandleOptions;
      swift_beginAccess();
      if (v59 != *(a2 + v60))
      {
        goto LABEL_33;
      }

      v61 = OBJC_IVAR____TtCV10PegasusAPI50Apple_Parsec_Feedback_V2_CommandEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__didSelectFromOptionsMenu;
      swift_beginAccess();
      LODWORD(v61) = *(a1 + v61);
      v62 = OBJC_IVAR____TtCV10PegasusAPI50Apple_Parsec_Feedback_V2_CommandEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__didSelectFromOptionsMenu;
      swift_beginAccess();
      if (v61 != *(a2 + v62))
      {
        goto LABEL_33;
      }

      swift_beginAccess();
      v64 = v71;
      sub_1B8F1B8B8();
      swift_beginAccess();
      v65 = *(v70 + 48);
      v66 = v73;
      sub_1B8F1B8B8();
      sub_1B8F1B8B8();
      v67 = v72;
      if (__swift_getEnumTagSinglePayload(v66, 1, v72) == 1)
      {

        sub_1B8D9207C(v64, &qword_1EBAC0718, &qword_1B966F9A0);
        if (__swift_getEnumTagSinglePayload(v66 + v65, 1, v67) == 1)
        {
          sub_1B8D9207C(v66, &qword_1EBAC0718, &qword_1B966F9A0);
          return 1;
        }
      }

      else
      {
        sub_1B8F1B8B8();
        if (__swift_getEnumTagSinglePayload(v66 + v65, 1, v67) != 1)
        {
          sub_1B8FAC528();
          v68 = static Apple_Parsec_Feedback_V2_PhotosAttributes.== infix(_:_:)();

          sub_1B8FAC5C8();
          sub_1B8D9207C(v64, &qword_1EBAC0718, &qword_1B966F9A0);
          sub_1B8FAC5C8();
          sub_1B8D9207C(v66, &qword_1EBAC0718, &qword_1B966F9A0);
          return (v68 & 1) != 0;
        }

        sub_1B8D9207C(v64, &qword_1EBAC0718, &qword_1B966F9A0);
        sub_1B8FAC5C8();
      }

      sub_1B8D9207C(v66, &qword_1EBAC20D8, &qword_1B967F580);
      return 0;
    }

    goto LABEL_18;
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(&v14[v33], 1, v10) == 1)
  {

    sub_1B8D9207C(v20, &qword_1EBAB9168, &qword_1B964D950);
    sub_1B8FAC5C8();
LABEL_18:
    v34 = &qword_1EBAB9170;
    v35 = &qword_1B964D958;
    v36 = v14;
LABEL_19:
    sub_1B8D9207C(v36, v34, v35);
    goto LABEL_33;
  }

  v37 = v74;
  sub_1B8FAC528();
  v38 = *(v10 + 20);
  v39 = *&v18[v38];
  v40 = *&v37[v38];

  if (v39 != v40)
  {

    v41 = sub_1B8FB7DA4(v39, v40);

    if (!v41)
    {
      sub_1B8FAC5C8();
      sub_1B8D9207C(v20, &qword_1EBAB9168, &qword_1B964D950);
      sub_1B8FAC5C8();
      v36 = v14;
      v34 = &qword_1EBAB9168;
      v35 = &qword_1B964D950;
      goto LABEL_19;
    }
  }

  sub_1B964C2B0();
  sub_1B8CD2450(&qword_1EBAB3B38, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v42 = sub_1B964C850();
  sub_1B8FAC5C8();
  sub_1B8D9207C(v20, &qword_1EBAB9168, &qword_1B964D950);
  sub_1B8FAC5C8();
  sub_1B8D9207C(v14, &qword_1EBAB9168, &qword_1B964D950);
  if (v42)
  {
    goto LABEL_23;
  }

LABEL_33:

  return 0;
}

uint64_t sub_1B8FC9F10(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2450(&qword_1EBAC1DD0, type metadata accessor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8FC9F90(uint64_t a1)
{
  v2 = sub_1B8CD2450(&qword_1EBAC15F8, type metadata accessor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8FCA000(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2450(&qword_1EBAC15F8, type metadata accessor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_CommandEngagementFeedback);

  return sub_1B964C5D0();
}

uint64_t sub_1B8FCA08C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC00A0);
  __swift_project_value_buffer(v0, qword_1EBAC00A0);
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
  *v10 = "results";
  *(v10 + 8) = 7;
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
  *v14 = "goTakeoverResult";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "uniqueIdsOfVisibleButtons";
  *(v16 + 1) = 25;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "uniqueIdentifiersOfVisibleCardSections";
  *(v18 + 1) = 38;
  v18[16] = 2;
  v9();
  return sub_1B964C760();
}

void Apple_Parsec_Feedback_V2_VisibleResultsFeedback.decodeMessage<A>(decoder:)()
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

    switch(v1)
    {
      case 1:
        OUTLINED_FUNCTION_41_7();
        sub_1B964C560();
        break;
      case 2:
        OUTLINED_FUNCTION_569_0();
        OUTLINED_FUNCTION_9();
        sub_1B8FE2F1C();
        break;
      case 3:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B8FCA490(v3, v4, v5, v6);
        break;
      case 4:
        v7 = OUTLINED_FUNCTION_9();
        sub_1B8FCA4F8(v7, v8, v9, v10);
        break;
      case 5:
        OUTLINED_FUNCTION_12();
        sub_1B964C4F0();
        break;
      case 6:
        OUTLINED_FUNCTION_12();
        sub_1B964C4D0();
        break;
      default:
        continue;
    }
  }
}

void sub_1B8FCA4F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_822();
  OUTLINED_FUNCTION_147_1();
  v4(0);
  type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(0);
  OUTLINED_FUNCTION_9_16();
  sub_1B8CD2450(v5, v6, protocol conformance descriptor for Apple_Parsec_Feedback_V2_SearchResultForFeedback);
  OUTLINED_FUNCTION_49_1();
  sub_1B964C580();
  OUTLINED_FUNCTION_823();
}

void Apple_Parsec_Feedback_V2_VisibleResultsFeedback.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_614();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9168, &qword_1B964D950);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_151();
  type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(v6);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_175_3();
  if (!*v0 || (OUTLINED_FUNCTION_35_6(), sub_1B964C720(), !v1))
  {
    OUTLINED_FUNCTION_659_0();
    if (!v8 || (OUTLINED_FUNCTION_9_16(), sub_1B8CD2450(v9, v10, protocol conformance descriptor for Apple_Parsec_Feedback_V2_SearchResultForFeedback), OUTLINED_FUNCTION_60_2(), OUTLINED_FUNCTION_687(), sub_1B964C730(), !v1))
    {
      v11 = v2[2];
      if (!v11 || (OUTLINED_FUNCTION_540_0(v11), sub_1B9013A78(), OUTLINED_FUNCTION_687(), sub_1B964C680(), !v1))
      {
        type metadata accessor for Apple_Parsec_Feedback_V2_VisibleResultsFeedback(0);
        OUTLINED_FUNCTION_715_0();
        OUTLINED_FUNCTION_243_1();
        if (v12)
        {
          sub_1B8D9207C(v3, &qword_1EBAB9168, &qword_1B964D950);
        }

        else
        {
          OUTLINED_FUNCTION_2_21();
          OUTLINED_FUNCTION_424();
          sub_1B8FAC528();
          OUTLINED_FUNCTION_9_16();
          sub_1B8CD2450(v13, v14, protocol conformance descriptor for Apple_Parsec_Feedback_V2_SearchResultForFeedback);
          OUTLINED_FUNCTION_597_0();
          OUTLINED_FUNCTION_687();
          sub_1B964C740();
          OUTLINED_FUNCTION_13_13();
          sub_1B8FAC5C8();
          if (v1)
          {
            goto LABEL_16;
          }
        }

        if (!*(v2[4] + 16) || (OUTLINED_FUNCTION_29(), sub_1B964C660(), !v1))
        {
          if (!*(v2[5] + 16) || (OUTLINED_FUNCTION_29(), sub_1B964C6E0(), !v1))
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

uint64_t sub_1B8FCA84C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2450(&qword_1EBAC1DC8, type metadata accessor for Apple_Parsec_Feedback_V2_VisibleResultsFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_VisibleResultsFeedback);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8FCA8CC(uint64_t a1)
{
  v2 = sub_1B8CD2450(&qword_1EBAC1610, type metadata accessor for Apple_Parsec_Feedback_V2_VisibleResultsFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_VisibleResultsFeedback);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8FCA93C(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2450(&qword_1EBAC1610, type metadata accessor for Apple_Parsec_Feedback_V2_VisibleResultsFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_VisibleResultsFeedback);

  return sub_1B964C5D0();
}

uint64_t sub_1B8FCA9D4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC00B8);
  __swift_project_value_buffer(v0, qword_1EBAC00B8);
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
  *(v5 + v2) = 3;
  *v10 = "cardSectionIdentifier";
  *(v10 + 1) = 21;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "visibleDynamicButton2s";
  *(v12 + 1) = 22;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

void Apple_Parsec_Feedback_V2_DynamicButtonVisibilityFeedback.decodeMessage<A>(decoder:)()
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

    switch(v1)
    {
      case 4:
        OUTLINED_FUNCTION_9();
        sub_1B8FCACD0();
        break;
      case 3:
        OUTLINED_FUNCTION_311_0();
        sub_1B964C530();
        break;
      case 1:
        OUTLINED_FUNCTION_41_7();
        sub_1B964C560();
        break;
    }
  }
}

void sub_1B8FCACD0()
{
  OUTLINED_FUNCTION_273_0();
  v2 = OUTLINED_FUNCTION_114_1();
  v3(v2);
  v4 = OUTLINED_FUNCTION_128();
  v6 = sub_1B8CD2450(v4, v5, v0);
  OUTLINED_FUNCTION_157_1(v1 + 24, v7, v6);
  OUTLINED_FUNCTION_272_0();
}

void Apple_Parsec_Feedback_V2_DynamicButtonVisibilityFeedback.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_822();
  if (!OUTLINED_FUNCTION_25_11() || (OUTLINED_FUNCTION_35_6(), sub_1B964C720(), !v3))
  {
    OUTLINED_FUNCTION_1();
    if (!v5 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), !v3))
    {
      if (!*(*(v4 + 24) + 16) || (OUTLINED_FUNCTION_873(), OUTLINED_FUNCTION_153_2(), sub_1B8CD2450(v6, v7, protocol conformance descriptor for Apple_Parsec_Feedback_V2_ButtonForFeedback), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_687(), sub_1B964C730(), !v3))
      {
        type metadata accessor for Apple_Parsec_Feedback_V2_DynamicButtonVisibilityFeedback(0);
        OUTLINED_FUNCTION_8_1();
      }
    }
  }

  OUTLINED_FUNCTION_823();
}

uint64_t sub_1B8FCAE94(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2450(&qword_1EBAC1DC0, type metadata accessor for Apple_Parsec_Feedback_V2_DynamicButtonVisibilityFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_DynamicButtonVisibilityFeedback);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8FCAF14(uint64_t a1)
{
  v2 = sub_1B8CD2450(&qword_1EBAC1628, type metadata accessor for Apple_Parsec_Feedback_V2_DynamicButtonVisibilityFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_DynamicButtonVisibilityFeedback);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8FCAF84(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2450(&qword_1EBAC1628, type metadata accessor for Apple_Parsec_Feedback_V2_DynamicButtonVisibilityFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_DynamicButtonVisibilityFeedback);

  return sub_1B964C5D0();
}

uint64_t sub_1B8FCB010()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC00D0);
  __swift_project_value_buffer(v0, qword_1EBAC00D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "cfDiffered";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "cfUsed";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "cfError";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Feedback_V2_CounterfactualInfo.decodeMessage<A>(decoder:)()
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

    if (result == 3)
    {
      v3 = OUTLINED_FUNCTION_9();
      sub_1B8FCB2B4(v3, v4, v5, v6);
    }

    else if (result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C400();
    }
  }

  return result;
}

void Apple_Parsec_Feedback_V2_CounterfactualInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_800();
  OUTLINED_FUNCTION_614();
  if (*v3 != 1 || (OUTLINED_FUNCTION_35_6(), sub_1B964C670(), !v4))
  {
    if (*(v5 + 1) != 1 || (OUTLINED_FUNCTION_29(), sub_1B964C670(), !v4))
    {
      if (!*(v5 + 8) || (OUTLINED_FUNCTION_94_4(), sub_1B9013ACC(), OUTLINED_FUNCTION_687(), sub_1B964C680(), !v4))
      {
        type metadata accessor for Apple_Parsec_Feedback_V2_CounterfactualInfo(0);
        OUTLINED_FUNCTION_8_1();
      }
    }
  }

  OUTLINED_FUNCTION_799();
}

uint64_t static Apple_Parsec_Feedback_V2_CounterfactualInfo.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_468();
  if (*(v4 + 1) != *(v5 + 1))
  {
    return 0;
  }

  v7 = *(v3 + 8);
  v8 = *(v2 + 8);
  if (*(v2 + 16) != 1)
  {
    if (v7 == v8)
    {
      goto LABEL_14;
    }

    return 0;
  }

  if (!v8)
  {
    if (!v7)
    {
      goto LABEL_14;
    }

    return 0;
  }

  if (v8 == 1)
  {
    if (v7 == 1)
    {
      goto LABEL_14;
    }

    return 0;
  }

  if (v7 != 2)
  {
    return 0;
  }

LABEL_14:
  type metadata accessor for Apple_Parsec_Feedback_V2_CounterfactualInfo(0);
  OUTLINED_FUNCTION_736();
  OUTLINED_FUNCTION_0_40();
  v11 = sub_1B8CD2450(v9, v10, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v11) & 1;
}

uint64_t sub_1B8FCB558(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2450(&qword_1EBAC1DB8, type metadata accessor for Apple_Parsec_Feedback_V2_CounterfactualInfo, protocol conformance descriptor for Apple_Parsec_Feedback_V2_CounterfactualInfo);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8FCB5D8(uint64_t a1)
{
  v2 = sub_1B8CD2450(&qword_1EBAC0990, type metadata accessor for Apple_Parsec_Feedback_V2_CounterfactualInfo, protocol conformance descriptor for Apple_Parsec_Feedback_V2_CounterfactualInfo);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8FCB648(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2450(&qword_1EBAC0990, type metadata accessor for Apple_Parsec_Feedback_V2_CounterfactualInfo, protocol conformance descriptor for Apple_Parsec_Feedback_V2_CounterfactualInfo);

  return sub_1B964C5D0();
}

uint64_t sub_1B8FCB6D4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC00E8);
  __swift_project_value_buffer(v0, qword_1EBAC00E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "queryID";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "timestamp";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "counterfactual";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "codepathId";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Feedback_V2_ExperimentTriggeredFeedback.decodeMessage<A>(decoder:)()
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
        sub_1B8FCB9DC(v3, v4, v5, v6);
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

uint64_t sub_1B8FCB9DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Feedback_V2_ExperimentTriggeredFeedback(0);
  type metadata accessor for Apple_Parsec_Feedback_V2_CounterfactualInfo(0);
  sub_1B8CD2450(&qword_1EBAC0990, type metadata accessor for Apple_Parsec_Feedback_V2_CounterfactualInfo, protocol conformance descriptor for Apple_Parsec_Feedback_V2_CounterfactualInfo);
  return sub_1B964C580();
}

void Apple_Parsec_Feedback_V2_ExperimentTriggeredFeedback.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_614();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0728, &qword_1B966F9B0);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_151();
  type metadata accessor for Apple_Parsec_Feedback_V2_CounterfactualInfo(v6);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_175_3();
  if (!*v0 || (OUTLINED_FUNCTION_35_6(), sub_1B964C720(), !v1))
  {
    if (!*(v2 + 8) || (OUTLINED_FUNCTION_29(), sub_1B964C720(), !v1))
    {
      type metadata accessor for Apple_Parsec_Feedback_V2_ExperimentTriggeredFeedback(0);
      OUTLINED_FUNCTION_715_0();
      OUTLINED_FUNCTION_243_1();
      if (v8)
      {
        sub_1B8D9207C(v3, &qword_1EBAC0728, &qword_1B966F9B0);
      }

      else
      {
        OUTLINED_FUNCTION_50_6();
        OUTLINED_FUNCTION_424();
        sub_1B8FAC528();
        sub_1B8CD2450(&qword_1EBAC0990, type metadata accessor for Apple_Parsec_Feedback_V2_CounterfactualInfo, protocol conformance descriptor for Apple_Parsec_Feedback_V2_CounterfactualInfo);
        OUTLINED_FUNCTION_597_0();
        OUTLINED_FUNCTION_687();
        sub_1B964C740();
        OUTLINED_FUNCTION_333_0();
        sub_1B8FAC5C8();
        if (v1)
        {
          goto LABEL_12;
        }
      }

      OUTLINED_FUNCTION_1();
      if (!v9 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), !v1))
      {
        OUTLINED_FUNCTION_8_1();
      }
    }
  }

LABEL_12:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

uint64_t sub_1B8FCBCF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2450(&qword_1EBAC1DB0, type metadata accessor for Apple_Parsec_Feedback_V2_ExperimentTriggeredFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_ExperimentTriggeredFeedback);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8FCBD74(uint64_t a1)
{
  v2 = sub_1B8CD2450(&qword_1EBAC1650, type metadata accessor for Apple_Parsec_Feedback_V2_ExperimentTriggeredFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_ExperimentTriggeredFeedback);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8FCBDE4(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2450(&qword_1EBAC1650, type metadata accessor for Apple_Parsec_Feedback_V2_ExperimentTriggeredFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_ExperimentTriggeredFeedback);

  return sub_1B964C5D0();
}

uint64_t sub_1B8FCBE70()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC0100);
  __swift_project_value_buffer(v0, qword_1EBAC0100);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1B964D040;
  v4 = v31 + v3;
  v5 = v31 + v3 + v1[14];
  *(v31 + v3) = 1;
  *v5 = "cardSectionId";
  *(v5 + 8) = 13;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1B964C750();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "actionTarget";
  *(v9 + 8) = 12;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "actionDestination";
  *(v11 + 1) = 17;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "resultId";
  *(v13 + 1) = 8;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 6;
  *v15 = "commandType";
  *(v15 + 1) = 11;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 7;
  *v17 = "commandDetail";
  *(v17 + 1) = 13;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 8;
  *v19 = "cardSections";
  *(v19 + 1) = 12;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 9;
  *v21 = "cardSectionType";
  *(v21 + 1) = 15;
  v21[16] = 2;
  v8();
  v22 = (v4 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 10;
  *v23 = "cardSectionDetail";
  *(v23 + 1) = 17;
  v23[16] = 2;
  v8();
  v24 = (v4 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 11;
  *v25 = "buttons";
  *(v25 + 1) = 7;
  v25[16] = 2;
  v8();
  v26 = (v4 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 12;
  *v27 = "leadingSwipeButtonItems";
  *(v27 + 1) = 23;
  v27[16] = 2;
  v8();
  v28 = (v4 + 11 * v2);
  v29 = v28 + v1[14];
  *v28 = 13;
  *v29 = "trailingSwipeButtonItems";
  *(v29 + 1) = 24;
  v29[16] = 2;
  v8();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Feedback_V2_CardSectionForFeedback.decodeMessage<A>(decoder:)()
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
      case 4:
      case 7:
      case 10:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 6:
        v7 = OUTLINED_FUNCTION_9();
        sub_1B8FCC3C0(v7, v8, v9, v10);
        break;
      case 8:
        v19 = OUTLINED_FUNCTION_9();
        sub_1B8FCC428(v19, v20, v21, v22);
        break;
      case 9:
        v15 = OUTLINED_FUNCTION_9();
        sub_1B8FCC4C8(v15, v16, v17, v18);
        break;
      case 11:
        v11 = OUTLINED_FUNCTION_9();
        sub_1B8FCC530(v11, v12, v13, v14);
        break;
      case 12:
        v23 = OUTLINED_FUNCTION_9();
        sub_1B8FCC5D0(v23, v24, v25, v26);
        break;
      case 13:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B8FCC670(v3, v4, v5, v6);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B8FCC428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionForFeedback(0);
  sub_1B8CD2450(&qword_1EBAC09A8, type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionForFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_CardSectionForFeedback);
  return sub_1B964C570();
}

uint64_t sub_1B8FCC530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Feedback_V2_ButtonForFeedback(0);
  sub_1B8CD2450(&qword_1EBAC0830, type metadata accessor for Apple_Parsec_Feedback_V2_ButtonForFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_ButtonForFeedback);
  return sub_1B964C570();
}

uint64_t sub_1B8FCC5D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Feedback_V2_ButtonForFeedback(0);
  sub_1B8CD2450(&qword_1EBAC0830, type metadata accessor for Apple_Parsec_Feedback_V2_ButtonForFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_ButtonForFeedback);
  return sub_1B964C570();
}

uint64_t sub_1B8FCC670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Feedback_V2_ButtonForFeedback(0);
  sub_1B8CD2450(&qword_1EBAC0830, type metadata accessor for Apple_Parsec_Feedback_V2_ButtonForFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_ButtonForFeedback);
  return sub_1B964C570();
}

uint64_t Apple_Parsec_Feedback_V2_CardSectionForFeedback.traverse<A>(visitor:)()
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
        OUTLINED_FUNCTION_1();
        if (!v6 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v0))
        {
          OUTLINED_FUNCTION_620_0();
          if (!Apple_Parsec_Feedback_V2_CommandType.rawValue.getter() || (OUTLINED_FUNCTION_657_1(), sub_1B9013B20(), OUTLINED_FUNCTION_687(), result = sub_1B964C680(), !v0))
          {
            OUTLINED_FUNCTION_1();
            if (!v7 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v0))
            {
              if (!*(v1[12] + 16) || (type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionForFeedback(0), OUTLINED_FUNCTION_329_0(), sub_1B8CD2450(v8, v9, protocol conformance descriptor for Apple_Parsec_Feedback_V2_CardSectionForFeedback), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_687(), result = sub_1B964C730(), !v0))
              {
                OUTLINED_FUNCTION_620_0();
                if (!Apple_Parsec_Feedback_V2_CardSectionType.rawValue.getter() || (OUTLINED_FUNCTION_657_1(), sub_1B9013B74(), OUTLINED_FUNCTION_687(), result = sub_1B964C680(), !v0))
                {
                  OUTLINED_FUNCTION_1();
                  if (!v10 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v0))
                  {
                    if (!*(v1[17] + 16) || (OUTLINED_FUNCTION_873(), OUTLINED_FUNCTION_153_2(), sub_1B8CD2450(v11, v12, protocol conformance descriptor for Apple_Parsec_Feedback_V2_ButtonForFeedback), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_687(), result = sub_1B964C730(), !v0))
                    {
                      if (!*(v1[18] + 16) || (OUTLINED_FUNCTION_873(), OUTLINED_FUNCTION_153_2(), sub_1B8CD2450(v13, v14, protocol conformance descriptor for Apple_Parsec_Feedback_V2_ButtonForFeedback), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_687(), result = sub_1B964C730(), !v0))
                      {
                        if (!*(v1[19] + 16) || (OUTLINED_FUNCTION_873(), OUTLINED_FUNCTION_153_2(), sub_1B8CD2450(v15, v16, protocol conformance descriptor for Apple_Parsec_Feedback_V2_ButtonForFeedback), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_687(), result = sub_1B964C730(), !v0))
                        {
                          type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionForFeedback(0);
                          return OUTLINED_FUNCTION_8_1();
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
  }

  return result;
}

uint64_t static Apple_Parsec_Feedback_V2_CardSectionForFeedback.== infix(_:_:)()
{
  OUTLINED_FUNCTION_16();
  v4 = *v3 == *v0 && v1[1] == v0[1];
  if (!v4 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_265_0();
  v7 = v4 && v5 == v6;
  if (!v7 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v8 = v1[4] == v0[4] && v1[5] == v0[5];
  if (!v8 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_850();
  v11 = v4 && v9 == v10;
  if (!v11 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_361_0();
  Apple_Parsec_Feedback_V2_CommandType.rawValue.getter();
  OUTLINED_FUNCTION_843();
  if (v2 != Apple_Parsec_Feedback_V2_CommandType.rawValue.getter())
  {
    return 0;
  }

  v12 = v1[10] == v0[10] && v1[11] == v0[11];
  if (!v12 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  sub_1B8D8050C(v1[12], v0[12]);
  if ((v13 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_361_0();
  Apple_Parsec_Feedback_V2_CardSectionType.rawValue.getter();
  OUTLINED_FUNCTION_843();
  if (v2 != Apple_Parsec_Feedback_V2_CardSectionType.rawValue.getter())
  {
    return 0;
  }

  v14 = v1[15] == v0[15] && v1[16] == v0[16];
  if (!v14 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  sub_1B8D7F7FC(v1[17], v0[17]);
  if ((v15 & 1) == 0)
  {
    return 0;
  }

  sub_1B8D7F7FC(v1[18], v0[18]);
  if ((v16 & 1) == 0)
  {
    return 0;
  }

  sub_1B8D7F7FC(v1[19], v0[19]);
  if ((v17 & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionForFeedback(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_40();
  v20 = sub_1B8CD2450(v18, v19, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_199_0(v20) & 1;
}

uint64_t sub_1B8FCCC58(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2450(&qword_1EBAC1DA8, type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionForFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_CardSectionForFeedback);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8FCCCD8(uint64_t a1)
{
  v2 = sub_1B8CD2450(&qword_1EBAC09A8, type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionForFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_CardSectionForFeedback);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8FCCD48(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2450(&qword_1EBAC09A8, type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionForFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_CardSectionForFeedback);

  return sub_1B964C5D0();
}

uint64_t sub_1B8FCCDD4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC0118);
  __swift_project_value_buffer(v0, qword_1EBAC0118);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "commandType";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "commandDetail";
  *(v10 + 8) = 13;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "uniqueId";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "timestamp";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Feedback_V2_ButtonFeedback.decodeMessage<A>(decoder:)()
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
        OUTLINED_FUNCTION_9();
        sub_1B8CEFD9C();
        break;
      case 2:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 3:
      case 4:
        OUTLINED_FUNCTION_12();
        sub_1B964C560();
        break;
      default:
        continue;
    }
  }
}

uint64_t Apple_Parsec_Feedback_V2_ButtonFeedback.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  OUTLINED_FUNCTION_620_0();
  if (!Apple_Parsec_Feedback_V2_CommandType.rawValue.getter() || (OUTLINED_FUNCTION_657_1(), sub_1B9013B20(), OUTLINED_FUNCTION_687(), result = sub_1B964C680(), !v0))
  {
    OUTLINED_FUNCTION_1();
    if (!v3 || (OUTLINED_FUNCTION_59_5(), result = sub_1B964C700(), !v0))
    {
      if (!*(v1 + 32) || (OUTLINED_FUNCTION_29(), result = sub_1B964C720(), !v0))
      {
        if (!*(v1 + 40) || (OUTLINED_FUNCTION_29(), result = sub_1B964C720(), !v0))
        {
          type metadata accessor for Apple_Parsec_Feedback_V2_ButtonFeedback(0);
          return OUTLINED_FUNCTION_8_1();
        }
      }
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Feedback_V2_ButtonFeedback.== infix(_:_:)()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_361_0();
  Apple_Parsec_Feedback_V2_CommandType.rawValue.getter();
  OUTLINED_FUNCTION_843();
  if (v2 != Apple_Parsec_Feedback_V2_CommandType.rawValue.getter())
  {
    return 0;
  }

  OUTLINED_FUNCTION_265_0();
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_1B964C9F0() & 1) == 0 || *(v1 + 32) != *(v0 + 32) || *(v1 + 40) != *(v0 + 40))
  {
    return 0;
  }

  type metadata accessor for Apple_Parsec_Feedback_V2_ButtonFeedback(0);
  OUTLINED_FUNCTION_764();
  OUTLINED_FUNCTION_0_40();
  v8 = sub_1B8CD2450(v6, v7, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_199_0(v8) & 1;
}

uint64_t sub_1B8FCD344(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2450(&qword_1EBAC1DA0, type metadata accessor for Apple_Parsec_Feedback_V2_ButtonFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_ButtonFeedback);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8FCD3C4(uint64_t a1)
{
  v2 = sub_1B8CD2450(&qword_1EBAC1678, type metadata accessor for Apple_Parsec_Feedback_V2_ButtonFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_ButtonFeedback);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8FCD434(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2450(&qword_1EBAC1678, type metadata accessor for Apple_Parsec_Feedback_V2_ButtonFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_ButtonFeedback);

  return sub_1B964C5D0();
}

uint64_t sub_1B8FCD4C0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC0130);
  __swift_project_value_buffer(v0, qword_1EBAC0130);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "commandType";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "commandDetail";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "uniqueId";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Feedback_V2_ButtonForFeedback.decodeMessage<A>(decoder:)()
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

    switch(result)
    {
      case 3:
        OUTLINED_FUNCTION_12();
        sub_1B964C560();
        break;
      case 2:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 1:
        OUTLINED_FUNCTION_9();
        sub_1B8CEFD9C();
        break;
    }
  }

  return result;
}

uint64_t Apple_Parsec_Feedback_V2_ButtonForFeedback.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  OUTLINED_FUNCTION_620_0();
  if (!Apple_Parsec_Feedback_V2_CommandType.rawValue.getter() || (OUTLINED_FUNCTION_657_1(), sub_1B9013B20(), OUTLINED_FUNCTION_687(), result = sub_1B964C680(), !v0))
  {
    OUTLINED_FUNCTION_1();
    if (!v3 || (OUTLINED_FUNCTION_59_5(), result = sub_1B964C700(), !v0))
    {
      if (!*(v1 + 32) || (OUTLINED_FUNCTION_29(), result = sub_1B964C720(), !v0))
      {
        type metadata accessor for Apple_Parsec_Feedback_V2_ButtonForFeedback(0);
        return OUTLINED_FUNCTION_8_1();
      }
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Feedback_V2_ButtonForFeedback.== infix(_:_:)()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_361_0();
  Apple_Parsec_Feedback_V2_CommandType.rawValue.getter();
  OUTLINED_FUNCTION_843();
  if (v2 != Apple_Parsec_Feedback_V2_CommandType.rawValue.getter())
  {
    return 0;
  }

  OUTLINED_FUNCTION_265_0();
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_1B964C9F0() & 1) == 0 || *(v1 + 32) != *(v0 + 32))
  {
    return 0;
  }

  type metadata accessor for Apple_Parsec_Feedback_V2_ButtonForFeedback(0);
  OUTLINED_FUNCTION_736();
  OUTLINED_FUNCTION_0_40();
  v8 = sub_1B8CD2450(v6, v7, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_199_0(v8) & 1;
}

uint64_t sub_1B8FCD9AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2450(&qword_1EBAC1D98, type metadata accessor for Apple_Parsec_Feedback_V2_ButtonForFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_ButtonForFeedback);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8FCDA2C(uint64_t a1)
{
  v2 = sub_1B8CD2450(&qword_1EBAC0830, type metadata accessor for Apple_Parsec_Feedback_V2_ButtonForFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_ButtonForFeedback);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8FCDA9C(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2450(&qword_1EBAC0830, type metadata accessor for Apple_Parsec_Feedback_V2_ButtonForFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_ButtonForFeedback);

  return sub_1B964C5D0();
}

uint64_t sub_1B8FCDB34()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC0148);
  __swift_project_value_buffer(v0, qword_1EBAC0148);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "cardSections";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "fbr";
  *(v10 + 1) = 3;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

void Apple_Parsec_Feedback_V2_CardForFeedback.decodeMessage<A>(decoder:)()
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

    if (v1 == 2)
    {
      OUTLINED_FUNCTION_311_0();
      sub_1B964C530();
    }

    else if (v1 == 1)
    {
      OUTLINED_FUNCTION_9();
      sub_1B9002548();
    }
  }
}

void Apple_Parsec_Feedback_V2_CardForFeedback.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_822();
  OUTLINED_FUNCTION_614();
  OUTLINED_FUNCTION_835();
  if (!v4 || (type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionForFeedback(0), OUTLINED_FUNCTION_329_0(), sub_1B8CD2450(v5, v6, protocol conformance descriptor for Apple_Parsec_Feedback_V2_CardSectionForFeedback), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_749(), OUTLINED_FUNCTION_687(), sub_1B964C730(), !v3))
  {
    OUTLINED_FUNCTION_1();
    if (!v7 || (OUTLINED_FUNCTION_59_5(), sub_1B964C700(), !v3))
    {
      type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback(0);
      v8 = OUTLINED_FUNCTION_184_2();
      OUTLINED_FUNCTION_655_0(v8);
    }
  }

  OUTLINED_FUNCTION_823();
}

uint64_t static Apple_Parsec_Feedback_V2_CardForFeedback.== infix(_:_:)(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_51_2(a1);
  sub_1B8D8050C(v1, *v2);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_524_0();
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback(0);
  OUTLINED_FUNCTION_188_1();
  OUTLINED_FUNCTION_0_40();
  v9 = sub_1B8CD2450(v7, v8, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v9) & 1;
}

uint64_t sub_1B8FCDFC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2450(&qword_1EBAC1D90, type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_CardForFeedback);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8FCE040(uint64_t a1)
{
  v2 = sub_1B8CD2450(&qword_1EBAC0AB0, type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_CardForFeedback);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8FCE0B0(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2450(&qword_1EBAC0AB0, type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_CardForFeedback);

  return sub_1B964C5D0();
}

uint64_t sub_1B8FCE13C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC0160);
  __swift_project_value_buffer(v0, qword_1EBAC0160);
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
  *v10 = "cardSection";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "cardSectionId";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "resultId";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Feedback_V2_CardSectionFeedback.decodeMessage<A>(decoder:)()
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
        v3 = OUTLINED_FUNCTION_9();
        sub_1B8FCE440(v3, v4, v5, v6);
        break;
      case 3:
      case 4:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B8FCE440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionFeedback(0);
  type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionForFeedback(0);
  sub_1B8CD2450(&qword_1EBAC09A8, type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionForFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_CardSectionForFeedback);
  return sub_1B964C580();
}

void Apple_Parsec_Feedback_V2_CardSectionFeedback.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_614();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0730, &qword_1B966F9B8);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_77_3();
  type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionForFeedback(v4);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_62();
  if (!OUTLINED_FUNCTION_481_0() || (OUTLINED_FUNCTION_35_6(), sub_1B964C720(), !v0))
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionFeedback(0);
    OUTLINED_FUNCTION_743();
    OUTLINED_FUNCTION_118(v1);
    if (v6)
    {
      sub_1B8D9207C(v1, &qword_1EBAC0730, &qword_1B966F9B8);
    }

    else
    {
      OUTLINED_FUNCTION_10_15();
      OUTLINED_FUNCTION_190_0();
      sub_1B8FAC528();
      OUTLINED_FUNCTION_329_0();
      sub_1B8CD2450(v7, v8, protocol conformance descriptor for Apple_Parsec_Feedback_V2_CardSectionForFeedback);
      OUTLINED_FUNCTION_683_0();
      OUTLINED_FUNCTION_680_0();
      OUTLINED_FUNCTION_687();
      sub_1B964C740();
      OUTLINED_FUNCTION_331_0();
      sub_1B8FAC5C8();
      if (v0)
      {
        goto LABEL_12;
      }
    }

    OUTLINED_FUNCTION_1();
    if (!v9 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), !v0))
    {
      OUTLINED_FUNCTION_1();
      if (!v10 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), !v0))
      {
        OUTLINED_FUNCTION_8_1();
      }
    }
  }

LABEL_12:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

uint64_t sub_1B8FCE740(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2450(&qword_1EBAC1D88, type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_CardSectionFeedback);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8FCE7C0(uint64_t a1)
{
  v2 = sub_1B8CD2450(&qword_1EBAC16B0, type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_CardSectionFeedback);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8FCE830(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2450(&qword_1EBAC16B0, type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_CardSectionFeedback);

  return sub_1B964C5D0();
}

uint64_t sub_1B8FCE8BC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC0178);
  __swift_project_value_buffer(v0, qword_1EBAC0178);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B9656CE0;
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
  *v10 = "destination";
  *(v10 + 8) = 11;
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
  *v14 = "actionCardType";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "cardSection";
  *(v16 + 1) = 11;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "destinationWasPARPunchout";
  *(v18 + 1) = 25;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "parPunchoutActionTarget";
  *(v20 + 1) = 23;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "cardSectionId";
  *(v22 + 1) = 13;
  v22[16] = 2;
  v9();
  v23 = (v5 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "resultId";
  *(v24 + 1) = 8;
  v24[16] = 2;
  v9();
  v25 = (v5 + 9 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "actionTarget";
  *(v26 + 1) = 12;
  v26[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8FCECCC()
{
  *(v0 + 16) = 0;
  v1 = OBJC_IVAR____TtCV10PegasusAPI54Apple_Parsec_Feedback_V2_CardSectionEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__destination;
  v2 = type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = v0 + OBJC_IVAR____TtCV10PegasusAPI54Apple_Parsec_Feedback_V2_CardSectionEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__triggerEvent;
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = v0 + OBJC_IVAR____TtCV10PegasusAPI54Apple_Parsec_Feedback_V2_CardSectionEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__actionCardType;
  *v4 = 0;
  *(v4 + 8) = 1;
  v5 = OBJC_IVAR____TtCV10PegasusAPI54Apple_Parsec_Feedback_V2_CardSectionEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__cardSection;
  v6 = type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionForFeedback(0);
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI54Apple_Parsec_Feedback_V2_CardSectionEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__destinationWasParpunchout) = 0;
  v7 = (v0 + OBJC_IVAR____TtCV10PegasusAPI54Apple_Parsec_Feedback_V2_CardSectionEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__parPunchoutActionTarget);
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  v8 = (v0 + OBJC_IVAR____TtCV10PegasusAPI54Apple_Parsec_Feedback_V2_CardSectionEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__cardSectionID);
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  v9 = (v0 + OBJC_IVAR____TtCV10PegasusAPI54Apple_Parsec_Feedback_V2_CardSectionEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__resultID);
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  v10 = v0 + OBJC_IVAR____TtCV10PegasusAPI54Apple_Parsec_Feedback_V2_CardSectionEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__actionTarget;
  *v10 = 0;
  *(v10 + 8) = 1;
  return v0;
}

uint64_t sub_1B8FCEDC0(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0730, &qword_1B966F9B8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v41 = v39 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC06D8, &qword_1B966F960);
  MEMORY[0x1EEE9AC00](v6 - 8);
  *(v1 + 16) = 0;
  v7 = OBJC_IVAR____TtCV10PegasusAPI54Apple_Parsec_Feedback_V2_CardSectionEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__destination;
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(0);
  __swift_storeEnumTagSinglePayload(v1 + v7, 1, 1, v8);
  v9 = v1 + OBJC_IVAR____TtCV10PegasusAPI54Apple_Parsec_Feedback_V2_CardSectionEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__triggerEvent;
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = v1 + OBJC_IVAR____TtCV10PegasusAPI54Apple_Parsec_Feedback_V2_CardSectionEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__actionCardType;
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = OBJC_IVAR____TtCV10PegasusAPI54Apple_Parsec_Feedback_V2_CardSectionEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__cardSection;
  v39[1] = OBJC_IVAR____TtCV10PegasusAPI54Apple_Parsec_Feedback_V2_CardSectionEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__cardSection;
  v12 = type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionForFeedback(0);
  __swift_storeEnumTagSinglePayload(v1 + v11, 1, 1, v12);
  v40 = OBJC_IVAR____TtCV10PegasusAPI54Apple_Parsec_Feedback_V2_CardSectionEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__destinationWasParpunchout;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI54Apple_Parsec_Feedback_V2_CardSectionEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__destinationWasParpunchout) = 0;
  v13 = (v1 + OBJC_IVAR____TtCV10PegasusAPI54Apple_Parsec_Feedback_V2_CardSectionEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__parPunchoutActionTarget);
  *v13 = 0;
  v13[1] = 0xE000000000000000;
  v14 = (v1 + OBJC_IVAR____TtCV10PegasusAPI54Apple_Parsec_Feedback_V2_CardSectionEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__cardSectionID);
  v42 = v14;
  *v14 = 0;
  v14[1] = 0xE000000000000000;
  v15 = (v1 + OBJC_IVAR____TtCV10PegasusAPI54Apple_Parsec_Feedback_V2_CardSectionEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__resultID);
  *v15 = 0;
  v15[1] = 0xE000000000000000;
  v16 = v1 + OBJC_IVAR____TtCV10PegasusAPI54Apple_Parsec_Feedback_V2_CardSectionEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__actionTarget;
  v43 = v15;
  v44 = v16;
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
  v18 = (a1 + OBJC_IVAR____TtCV10PegasusAPI54Apple_Parsec_Feedback_V2_CardSectionEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__triggerEvent);
  swift_beginAccess();
  v19 = *v18;
  LOBYTE(v18) = *(v18 + 8);
  swift_beginAccess();
  *v9 = v19;
  *(v9 + 8) = v18;
  v20 = (a1 + OBJC_IVAR____TtCV10PegasusAPI54Apple_Parsec_Feedback_V2_CardSectionEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__actionCardType);
  swift_beginAccess();
  v21 = *v20;
  LOBYTE(v20) = *(v20 + 8);
  swift_beginAccess();
  *v10 = v21;
  *(v10 + 8) = v20;
  swift_beginAccess();
  sub_1B8F1B8B8();
  swift_beginAccess();
  sub_1B8F188B0();
  swift_endAccess();
  v22 = OBJC_IVAR____TtCV10PegasusAPI54Apple_Parsec_Feedback_V2_CardSectionEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__destinationWasParpunchout;
  swift_beginAccess();
  LOBYTE(v22) = *(a1 + v22);
  v23 = v40;
  swift_beginAccess();
  *(v2 + v23) = v22;
  v24 = (a1 + OBJC_IVAR____TtCV10PegasusAPI54Apple_Parsec_Feedback_V2_CardSectionEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__parPunchoutActionTarget);
  swift_beginAccess();
  v26 = *v24;
  v25 = v24[1];
  swift_beginAccess();
  *v13 = v26;
  v13[1] = v25;

  v27 = (a1 + OBJC_IVAR____TtCV10PegasusAPI54Apple_Parsec_Feedback_V2_CardSectionEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__cardSectionID);
  swift_beginAccess();
  v29 = *v27;
  v28 = v27[1];
  v30 = v42;
  swift_beginAccess();
  *v30 = v29;
  v30[1] = v28;

  v31 = (a1 + OBJC_IVAR____TtCV10PegasusAPI54Apple_Parsec_Feedback_V2_CardSectionEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__resultID);
  swift_beginAccess();
  v33 = *v31;
  v32 = v31[1];
  v34 = v43;
  swift_beginAccess();
  *v34 = v33;
  v34[1] = v32;

  v35 = (a1 + OBJC_IVAR____TtCV10PegasusAPI54Apple_Parsec_Feedback_V2_CardSectionEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__actionTarget);
  swift_beginAccess();
  v36 = *v35;
  LOBYTE(v35) = *(v35 + 8);

  v37 = v44;
  swift_beginAccess();
  *v37 = v36;
  *(v37 + 8) = v35;
  return v2;
}

uint64_t sub_1B8FCF314()
{
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI54Apple_Parsec_Feedback_V2_CardSectionEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__destination, &qword_1EBAC06D8, &qword_1B966F960);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI54Apple_Parsec_Feedback_V2_CardSectionEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__cardSection, &qword_1EBAC0730, &qword_1B966F9B8);

  return v0;
}

void sub_1B8FCF428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
        sub_1B9006E98(a2, a1, a3, a4, MEMORY[0x1E69AAD00]);
        continue;
      case 2:
        sub_1B8FCF698(a2, a1, a3, a4);
        continue;
      case 3:
        v11 = sub_1B901397C;
        v12 = a2;
        v13 = a1;
        v14 = a3;
        v15 = a4;
        v16 = &OBJC_IVAR____TtCV10PegasusAPI54Apple_Parsec_Feedback_V2_CardSectionEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__triggerEvent;
        v17 = &type metadata for Apple_Parsec_Feedback_V2_TriggerEngagementEvent;
        goto LABEL_9;
      case 4:
        v11 = sub_1B9013BC8;
        v12 = a2;
        v13 = a1;
        v14 = a3;
        v15 = a4;
        v16 = &OBJC_IVAR____TtCV10PegasusAPI54Apple_Parsec_Feedback_V2_CardSectionEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__actionCardType;
        v17 = &type metadata for Apple_Parsec_Feedback_V2_ActionCardType;
        goto LABEL_9;
      case 5:
        sub_1B8FCF774(a2, a1, a3, a4);
        continue;
      case 6:
        sub_1B900709C(a2, a1, a3, a4, &OBJC_IVAR____TtCV10PegasusAPI54Apple_Parsec_Feedback_V2_CardSectionEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__destinationWasParpunchout);
        continue;
      case 7:
        v18 = MEMORY[0x1E69AACE0];
        v19 = a2;
        v20 = a1;
        v21 = a3;
        v22 = a4;
        v23 = &OBJC_IVAR____TtCV10PegasusAPI54Apple_Parsec_Feedback_V2_CardSectionEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__parPunchoutActionTarget;
        goto LABEL_15;
      case 8:
        v18 = MEMORY[0x1E69AACE0];
        v19 = a2;
        v20 = a1;
        v21 = a3;
        v22 = a4;
        v23 = &OBJC_IVAR____TtCV10PegasusAPI54Apple_Parsec_Feedback_V2_CardSectionEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__cardSectionID;
        goto LABEL_15;
      case 9:
        v18 = MEMORY[0x1E69AACE0];
        v19 = a2;
        v20 = a1;
        v21 = a3;
        v22 = a4;
        v23 = &OBJC_IVAR____TtCV10PegasusAPI54Apple_Parsec_Feedback_V2_CardSectionEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__resultID;
LABEL_15:
        sub_1B9003EAC(v19, v20, v21, v22, v23, v18);
        break;
      case 10:
        v11 = sub_1B9013A24;
        v12 = a2;
        v13 = a1;
        v14 = a3;
        v15 = a4;
        v16 = &OBJC_IVAR____TtCV10PegasusAPI54Apple_Parsec_Feedback_V2_CardSectionEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__actionTarget;
        v17 = &type metadata for Apple_Parsec_Feedback_V2_EngagementActionTarget;
LABEL_9:
        sub_1B9003F0C(v12, v13, v14, v15, v16, v11, v17);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B8FCF698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(0);
  sub_1B8CD2450(&qword_1EBAC0848, type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_PunchoutForFeedback);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B8FCF774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionForFeedback(0);
  sub_1B8CD2450(&qword_1EBAC09A8, type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionForFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_CardSectionForFeedback);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B8FCF890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0730, &qword_1B966F9B8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v40 = &v38 - v6;
  v39 = type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionForFeedback(0);
  MEMORY[0x1EEE9AC00](v39);
  v38 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC06D8, &qword_1B966F960);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v38 - v9;
  v11 = type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(0);
  MEMORY[0x1EEE9AC00](v11);
  swift_beginAccess();
  if (*(a1 + 16))
  {
    v12 = v47;
    result = sub_1B964C720();
    if (v12)
    {
      return result;
    }

    v47 = 0;
  }

  swift_beginAccess();
  v14 = a1;
  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    sub_1B8D9207C(v10, &qword_1EBAC06D8, &qword_1B966F960);
  }

  else
  {
    sub_1B8FAC528();
    sub_1B8CD2450(&qword_1EBAC0848, type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_PunchoutForFeedback);
    v15 = v47;
    sub_1B964C740();
    if (v15)
    {
      return sub_1B8FAC5C8();
    }

    v47 = 0;
    sub_1B8FAC5C8();
  }

  v16 = (a1 + OBJC_IVAR____TtCV10PegasusAPI54Apple_Parsec_Feedback_V2_CardSectionEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__triggerEvent);
  swift_beginAccess();
  v17 = v40;
  if (*v16)
  {
    v18 = *(v16 + 8);
    v45 = *v16;
    v46 = v18;
    sub_1B901397C();
    v19 = v47;
    result = sub_1B964C680();
    v20 = v19;
    if (v19)
    {
      return result;
    }
  }

  else
  {
    v20 = v47;
  }

  v21 = v14 + OBJC_IVAR____TtCV10PegasusAPI54Apple_Parsec_Feedback_V2_CardSectionEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__actionCardType;
  swift_beginAccess();
  if (!*v21 || (v22 = *(v21 + 8), v43 = *v21, v44 = v22, sub_1B9013BC8(), result = sub_1B964C680(), !v20))
  {
    swift_beginAccess();
    sub_1B8F1B8B8();
    if (__swift_getEnumTagSinglePayload(v17, 1, v39) == 1)
    {
      sub_1B8D9207C(v17, &qword_1EBAC0730, &qword_1B966F9B8);
    }

    else
    {
      sub_1B8FAC528();
      sub_1B8CD2450(&qword_1EBAC09A8, type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionForFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_CardSectionForFeedback);
      sub_1B964C740();
      result = sub_1B8FAC5C8();
      if (v20)
      {
        return result;
      }
    }

    v23 = OBJC_IVAR____TtCV10PegasusAPI54Apple_Parsec_Feedback_V2_CardSectionEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__destinationWasParpunchout;
    swift_beginAccess();
    if (*(v14 + v23) != 1 || (result = sub_1B964C670(), !v20))
    {
      v24 = (v14 + OBJC_IVAR____TtCV10PegasusAPI54Apple_Parsec_Feedback_V2_CardSectionEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__parPunchoutActionTarget);
      swift_beginAccess();
      v25 = *v24;
      v26 = v24[1];
      v27 = HIBYTE(v26) & 0xF;
      if ((v26 & 0x2000000000000000) == 0)
      {
        v27 = v25 & 0xFFFFFFFFFFFFLL;
      }

      if (!v27 || (, sub_1B964C700(), result = , !v20))
      {
        v28 = (v14 + OBJC_IVAR____TtCV10PegasusAPI54Apple_Parsec_Feedback_V2_CardSectionEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__cardSectionID);
        swift_beginAccess();
        v29 = *v28;
        v30 = v28[1];
        v31 = HIBYTE(v30) & 0xF;
        if ((v30 & 0x2000000000000000) == 0)
        {
          v31 = v29 & 0xFFFFFFFFFFFFLL;
        }

        if (!v31 || (, sub_1B964C700(), result = , !v20))
        {
          v32 = (v14 + OBJC_IVAR____TtCV10PegasusAPI54Apple_Parsec_Feedback_V2_CardSectionEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__resultID);
          swift_beginAccess();
          v33 = *v32;
          v34 = v32[1];
          v35 = HIBYTE(v34) & 0xF;
          if ((v34 & 0x2000000000000000) == 0)
          {
            v35 = v33 & 0xFFFFFFFFFFFFLL;
          }

          if (!v35 || (, sub_1B964C700(), result = , !v20))
          {
            v36 = v14 + OBJC_IVAR____TtCV10PegasusAPI54Apple_Parsec_Feedback_V2_CardSectionEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__actionTarget;
            result = swift_beginAccess();
            if (*v36)
            {
              v37 = *(v36 + 8);
              v41 = *v36;
              v42 = v37;
              sub_1B9013A24();
              return sub_1B964C680();
            }
          }
        }
      }
    }
  }

  return result;
}

BOOL sub_1B8FCFF74(uint64_t a1, uint64_t a2)
{
  v72 = type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionForFeedback(0);
  MEMORY[0x1EEE9AC00](v72);
  v5 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0780, &qword_1B966FA20);
  MEMORY[0x1EEE9AC00](v70);
  v7 = &v67 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0730, &qword_1B966F9B8);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v69 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v71 = &v67 - v11;
  v12 = type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(0);
  MEMORY[0x1EEE9AC00](v12);
  v73 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0788, &qword_1B966FA28);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v67 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC06D8, &qword_1B966F960);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v75 = &v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v67 - v20;
  swift_beginAccess();
  v22 = *(a1 + 16);
  swift_beginAccess();
  if (v22 != *(a2 + 16))
  {
    return 0;
  }

  v67 = v5;
  v68 = v7;
  v74 = a2;
  swift_beginAccess();
  v23 = v74;
  sub_1B8F1B8B8();
  swift_beginAccess();
  v24 = *(v14 + 48);
  sub_1B8F1B8B8();
  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v16, 1, v12) != 1)
  {
    v25 = v75;
    sub_1B8F1B8B8();
    if (__swift_getEnumTagSinglePayload(&v16[v24], 1, v12) != 1)
    {
      sub_1B8FAC528();

      v26 = static Apple_Parsec_Feedback_V2_PunchoutForFeedback.== infix(_:_:)(v25);
      sub_1B8FAC5C8();
      sub_1B8D9207C(v21, &qword_1EBAC06D8, &qword_1B966F960);
      sub_1B8FAC5C8();
      v23 = v74;
      sub_1B8D9207C(v16, &qword_1EBAC06D8, &qword_1B966F960);
      if ((v26 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_10;
    }

    sub_1B8D9207C(v21, &qword_1EBAC06D8, &qword_1B966F960);
    sub_1B8FAC5C8();
LABEL_7:
    sub_1B8D9207C(v16, &qword_1EBAC0788, &qword_1B966FA28);
    goto LABEL_15;
  }

  sub_1B8D9207C(v21, &qword_1EBAC06D8, &qword_1B966F960);
  if (__swift_getEnumTagSinglePayload(&v16[v24], 1, v12) != 1)
  {
    goto LABEL_7;
  }

  sub_1B8D9207C(v16, &qword_1EBAC06D8, &qword_1B966F960);
LABEL_10:
  v27 = a1 + OBJC_IVAR____TtCV10PegasusAPI54Apple_Parsec_Feedback_V2_CardSectionEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__triggerEvent;
  swift_beginAccess();
  v28 = *v27;
  v29 = *(v27 + 8);
  v30 = v23;
  v31 = (v23 + OBJC_IVAR____TtCV10PegasusAPI54Apple_Parsec_Feedback_V2_CardSectionEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__triggerEvent);
  swift_beginAccess();
  if (!sub_1B8D92198(v28, v29, *v31))
  {
    goto LABEL_15;
  }

  v32 = a1 + OBJC_IVAR____TtCV10PegasusAPI54Apple_Parsec_Feedback_V2_CardSectionEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__actionCardType;
  swift_beginAccess();
  v33 = *v32;
  v34 = *(v32 + 8);
  v35 = (v30 + OBJC_IVAR____TtCV10PegasusAPI54Apple_Parsec_Feedback_V2_CardSectionEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__actionCardType);
  swift_beginAccess();
  if (!sub_1B8D92198(v33, v34, *v35))
  {
    goto LABEL_15;
  }

  swift_beginAccess();
  v36 = v71;
  sub_1B8F1B8B8();
  swift_beginAccess();
  v37 = *(v70 + 48);
  v38 = v68;
  sub_1B8F1B8B8();
  sub_1B8F1B8B8();
  v39 = v72;
  if (__swift_getEnumTagSinglePayload(v38, 1, v72) == 1)
  {
    sub_1B8D9207C(v36, &qword_1EBAC0730, &qword_1B966F9B8);
    if (__swift_getEnumTagSinglePayload(v38 + v37, 1, v39) == 1)
    {
      sub_1B8D9207C(v38, &qword_1EBAC0730, &qword_1B966F9B8);
      v40 = v74;
LABEL_23:
      v44 = OBJC_IVAR____TtCV10PegasusAPI54Apple_Parsec_Feedback_V2_CardSectionEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__destinationWasParpunchout;
      swift_beginAccess();
      LODWORD(v44) = *(a1 + v44);
      v45 = OBJC_IVAR____TtCV10PegasusAPI54Apple_Parsec_Feedback_V2_CardSectionEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__destinationWasParpunchout;
      swift_beginAccess();
      if (v44 == *(v40 + v45))
      {
        v46 = (a1 + OBJC_IVAR____TtCV10PegasusAPI54Apple_Parsec_Feedback_V2_CardSectionEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__parPunchoutActionTarget);
        swift_beginAccess();
        v47 = v40;
        v48 = *v46;
        v49 = v46[1];
        v50 = (v47 + OBJC_IVAR____TtCV10PegasusAPI54Apple_Parsec_Feedback_V2_CardSectionEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__parPunchoutActionTarget);
        swift_beginAccess();
        v51 = v48 == *v50 && v49 == v50[1];
        if (v51 || (sub_1B964C9F0() & 1) != 0)
        {
          v52 = (a1 + OBJC_IVAR____TtCV10PegasusAPI54Apple_Parsec_Feedback_V2_CardSectionEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__cardSectionID);
          swift_beginAccess();
          v53 = *v52;
          v54 = v52[1];
          v55 = (v74 + OBJC_IVAR____TtCV10PegasusAPI54Apple_Parsec_Feedback_V2_CardSectionEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__cardSectionID);
          swift_beginAccess();
          v56 = v53 == *v55 && v54 == v55[1];
          if (v56 || (sub_1B964C9F0() & 1) != 0)
          {
            v57 = (a1 + OBJC_IVAR____TtCV10PegasusAPI54Apple_Parsec_Feedback_V2_CardSectionEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__resultID);
            swift_beginAccess();
            v58 = *v57;
            v59 = v57[1];
            v60 = (v74 + OBJC_IVAR____TtCV10PegasusAPI54Apple_Parsec_Feedback_V2_CardSectionEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__resultID);
            swift_beginAccess();
            v61 = v58 == *v60 && v59 == v60[1];
            if (v61 || (sub_1B964C9F0() & 1) != 0)
            {
              v62 = a1 + OBJC_IVAR____TtCV10PegasusAPI54Apple_Parsec_Feedback_V2_CardSectionEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__actionTarget;
              swift_beginAccess();
              v63 = *v62;
              v64 = *(v62 + 8);

              v65 = (v74 + OBJC_IVAR____TtCV10PegasusAPI54Apple_Parsec_Feedback_V2_CardSectionEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__actionTarget);
              swift_beginAccess();
              v66 = *v65;

              return sub_1B8D92198(v63, v64, v66);
            }
          }
        }
      }

      goto LABEL_15;
    }

    goto LABEL_20;
  }

  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v38 + v37, 1, v39) == 1)
  {
    sub_1B8D9207C(v36, &qword_1EBAC0730, &qword_1B966F9B8);
    sub_1B8FAC5C8();
LABEL_20:
    sub_1B8D9207C(v38, &qword_1EBAC0780, &qword_1B966FA20);
    goto LABEL_15;
  }

  sub_1B8FAC528();
  v43 = static Apple_Parsec_Feedback_V2_CardSectionForFeedback.== infix(_:_:)();
  sub_1B8FAC5C8();
  sub_1B8D9207C(v36, &qword_1EBAC0730, &qword_1B966F9B8);
  sub_1B8FAC5C8();
  sub_1B8D9207C(v38, &qword_1EBAC0730, &qword_1B966F9B8);
  v40 = v74;
  if (v43)
  {
    goto LABEL_23;
  }

LABEL_15:

  return 0;
}

uint64_t sub_1B8FD0A0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2450(&qword_1EBAC1D80, type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionEngagementFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_CardSectionEngagementFeedback);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8FD0A8C(uint64_t a1)
{
  v2 = sub_1B8CD2450(&qword_1EBAC16C8, type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionEngagementFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_CardSectionEngagementFeedback);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8FD0AFC(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2450(&qword_1EBAC16C8, type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionEngagementFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_CardSectionEngagementFeedback);

  return sub_1B964C5D0();
}

uint64_t sub_1B8FD0B94()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC0198);
  __swift_project_value_buffer(v0, qword_1EBAC0198);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B9650810;
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
  *v10 = "destination";
  *(v10 + 8) = 11;
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
  *v14 = "actionCardType";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "feedbackType";
  *(v16 + 1) = 12;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "cardSectionId";
  *(v18 + 1) = 13;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "resultId";
  *(v20 + 1) = 8;
  v20[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Feedback_V2_MapsCardSectionEngagementFeedback.decodeMessage<A>(decoder:)()
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
        v15 = OUTLINED_FUNCTION_9();
        sub_1B8FD0F80(v15, v16, v17, v18);
        break;
      case 3:
        v7 = OUTLINED_FUNCTION_9();
        sub_1B8FD1034(v7, v8, v9, v10);
        break;
      case 4:
        v11 = OUTLINED_FUNCTION_9();
        sub_1B8FD109C(v11, v12, v13, v14);
        break;
      case 5:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B8FD1104(v3, v4, v5, v6);
        break;
      case 6:
      case 7:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B8FD0F80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Feedback_V2_MapsCardSectionEngagementFeedback(0);
  type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(0);
  sub_1B8CD2450(&qword_1EBAC0848, type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_PunchoutForFeedback);
  return sub_1B964C580();
}

void Apple_Parsec_Feedback_V2_MapsCardSectionEngagementFeedback.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_614();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC06D8, &qword_1B966F960);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_77_3();
  type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(v5);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_62();
  if (!OUTLINED_FUNCTION_481_0() || (OUTLINED_FUNCTION_35_6(), sub_1B964C720(), !v0))
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_MapsCardSectionEngagementFeedback(0);
    OUTLINED_FUNCTION_743();
    OUTLINED_FUNCTION_118(v2);
    if (v7)
    {
      sub_1B8D9207C(v2, &qword_1EBAC06D8, &qword_1B966F960);
    }

    else
    {
      OUTLINED_FUNCTION_4_23();
      OUTLINED_FUNCTION_190_0();
      sub_1B8FAC528();
      OUTLINED_FUNCTION_548_0();
      sub_1B8CD2450(v8, v9, protocol conformance descriptor for Apple_Parsec_Feedback_V2_PunchoutForFeedback);
      OUTLINED_FUNCTION_683_0();
      OUTLINED_FUNCTION_680_0();
      OUTLINED_FUNCTION_687();
      sub_1B964C740();
      OUTLINED_FUNCTION_119_2();
      sub_1B8FAC5C8();
      if (v0)
      {
        goto LABEL_18;
      }
    }

    v10 = v1[1];
    if (!v10 || (OUTLINED_FUNCTION_540_0(v10), sub_1B901397C(), OUTLINED_FUNCTION_687(), sub_1B964C680(), !v0))
    {
      v11 = v1[3];
      if (!v11 || (OUTLINED_FUNCTION_540_0(v11), sub_1B9013BC8(), OUTLINED_FUNCTION_687(), sub_1B964C680(), !v0))
      {
        v12 = v1[5];
        if (!v12 || (OUTLINED_FUNCTION_540_0(v12), sub_1B9013C1C(), OUTLINED_FUNCTION_687(), sub_1B964C680(), !v0))
        {
          OUTLINED_FUNCTION_1();
          if (!v13 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), !v0))
          {
            OUTLINED_FUNCTION_1();
            if (!v14 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), !v0))
            {
              OUTLINED_FUNCTION_8_1();
            }
          }
        }
      }
    }
  }

LABEL_18:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

uint64_t sub_1B8FD1464(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2450(&qword_1EBAC1D78, type metadata accessor for Apple_Parsec_Feedback_V2_MapsCardSectionEngagementFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_MapsCardSectionEngagementFeedback);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8FD14E4(uint64_t a1)
{
  v2 = sub_1B8CD2450(&qword_1EBAC16E0, type metadata accessor for Apple_Parsec_Feedback_V2_MapsCardSectionEngagementFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_MapsCardSectionEngagementFeedback);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8FD1554(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2450(&qword_1EBAC16E0, type metadata accessor for Apple_Parsec_Feedback_V2_MapsCardSectionEngagementFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_MapsCardSectionEngagementFeedback);

  return sub_1B964C5D0();
}

uint64_t sub_1B8FD15EC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC01B0);
  __swift_project_value_buffer(v0, qword_1EBAC01B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B96511B0;
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
  *v10 = "destination";
  *(v10 + 8) = 11;
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
  *v14 = "actionCardType";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "cardSection";
  *(v16 + 1) = 11;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "productPageResult";
  *(v18 + 1) = 17;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "cardSectionId";
  *(v20 + 1) = 13;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "resultId";
  *(v22 + 1) = 8;
  v22[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8FD1984()
{
  *(v0 + 16) = 0;
  v1 = OBJC_IVAR____TtCV10PegasusAPI59Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__destination;
  v2 = type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = v0 + OBJC_IVAR____TtCV10PegasusAPI59Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__triggerEvent;
  *v3 = 0;
  *(v3 + 8) = 1;
  v4 = v0 + OBJC_IVAR____TtCV10PegasusAPI59Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__actionCardType;
  *v4 = 0;
  *(v4 + 8) = 1;
  v5 = OBJC_IVAR____TtCV10PegasusAPI59Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__cardSection;
  v6 = type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionForFeedback(0);
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  v7 = v0 + OBJC_IVAR____TtCV10PegasusAPI59Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__productPageResult;
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = (v0 + OBJC_IVAR____TtCV10PegasusAPI59Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__cardSectionID);
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  v9 = (v0 + OBJC_IVAR____TtCV10PegasusAPI59Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__resultID);
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  return v0;
}

uint64_t sub_1B8FD1A5C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0730, &qword_1B966F9B8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v34 = v32 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC06D8, &qword_1B966F960);
  MEMORY[0x1EEE9AC00](v6 - 8);
  *(v1 + 16) = 0;
  v7 = OBJC_IVAR____TtCV10PegasusAPI59Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__destination;
  v8 = type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(0);
  __swift_storeEnumTagSinglePayload(v1 + v7, 1, 1, v8);
  v9 = v1 + OBJC_IVAR____TtCV10PegasusAPI59Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__triggerEvent;
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = v1 + OBJC_IVAR____TtCV10PegasusAPI59Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__actionCardType;
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = OBJC_IVAR____TtCV10PegasusAPI59Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__cardSection;
  v32[1] = OBJC_IVAR____TtCV10PegasusAPI59Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__cardSection;
  v12 = type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionForFeedback(0);
  __swift_storeEnumTagSinglePayload(v1 + v11, 1, 1, v12);
  v13 = v1 + OBJC_IVAR____TtCV10PegasusAPI59Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__productPageResult;
  v33 = v13;
  *v13 = 0;
  *(v13 + 8) = 1;
  v14 = (v1 + OBJC_IVAR____TtCV10PegasusAPI59Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__cardSectionID);
  *v14 = 0;
  v14[1] = 0xE000000000000000;
  v15 = (v1 + OBJC_IVAR____TtCV10PegasusAPI59Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__resultID);
  v35 = v15;
  *v15 = 0;
  v15[1] = 0xE000000000000000;
  swift_beginAccess();
  v16 = *(a1 + 16);
  swift_beginAccess();
  *(v1 + 16) = v16;
  swift_beginAccess();
  sub_1B8F1B8B8();
  swift_beginAccess();
  sub_1B8F188B0();
  swift_endAccess();
  v17 = (a1 + OBJC_IVAR____TtCV10PegasusAPI59Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__triggerEvent);
  swift_beginAccess();
  v18 = *v17;
  LOBYTE(v17) = *(v17 + 8);
  swift_beginAccess();
  *v9 = v18;
  *(v9 + 8) = v17;
  v19 = (a1 + OBJC_IVAR____TtCV10PegasusAPI59Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__actionCardType);
  swift_beginAccess();
  v20 = *v19;
  LOBYTE(v19) = *(v19 + 8);
  swift_beginAccess();
  *v10 = v20;
  *(v10 + 8) = v19;
  swift_beginAccess();
  sub_1B8F1B8B8();
  swift_beginAccess();
  sub_1B8F188B0();
  swift_endAccess();
  v21 = (a1 + OBJC_IVAR____TtCV10PegasusAPI59Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__productPageResult);
  swift_beginAccess();
  v22 = *v21;
  LOBYTE(v21) = *(v21 + 8);
  v23 = v33;
  swift_beginAccess();
  *v23 = v22;
  *(v23 + 8) = v21;
  v24 = (a1 + OBJC_IVAR____TtCV10PegasusAPI59Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__cardSectionID);
  swift_beginAccess();
  v26 = *v24;
  v25 = v24[1];
  swift_beginAccess();
  *v14 = v26;
  v14[1] = v25;

  v27 = (a1 + OBJC_IVAR____TtCV10PegasusAPI59Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__resultID);
  swift_beginAccess();
  v29 = *v27;
  v28 = v27[1];

  v30 = v35;
  swift_beginAccess();
  *v30 = v29;
  v30[1] = v28;

  return v2;
}

uint64_t sub_1B8FD1F98()
{
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI59Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__destination, &qword_1EBAC06D8, &qword_1B966F960);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI59Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__cardSection, &qword_1EBAC0730, &qword_1B966F9B8);

  return v0;
}

void sub_1B8FD2098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
        sub_1B9006E98(a2, a1, a3, a4, MEMORY[0x1E69AAD00]);
        continue;
      case 2:
        sub_1B8FD22B4(a2, a1, a3, a4);
        continue;
      case 3:
        v11 = sub_1B901397C;
        v12 = a2;
        v13 = a1;
        v14 = a3;
        v15 = a4;
        v16 = &OBJC_IVAR____TtCV10PegasusAPI59Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__triggerEvent;
        v17 = &type metadata for Apple_Parsec_Feedback_V2_TriggerEngagementEvent;
        goto LABEL_11;
      case 4:
        v11 = sub_1B9013BC8;
        v12 = a2;
        v13 = a1;
        v14 = a3;
        v15 = a4;
        v16 = &OBJC_IVAR____TtCV10PegasusAPI59Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__actionCardType;
        v17 = &type metadata for Apple_Parsec_Feedback_V2_ActionCardType;
        goto LABEL_11;
      case 5:
        sub_1B8FD2390(a2, a1, a3, a4);
        continue;
      case 6:
        v11 = sub_1B9023D8C;
        v12 = a2;
        v13 = a1;
        v14 = a3;
        v15 = a4;
        v16 = &OBJC_IVAR____TtCV10PegasusAPI59Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__productPageResult;
        v17 = &type metadata for Apple_Parsec_Feedback_V2_SKStoreProductPageResult;
LABEL_11:
        sub_1B9003F0C(v12, v13, v14, v15, v16, v11, v17);
        continue;
      case 7:
        v18 = MEMORY[0x1E69AACE0];
        v19 = a2;
        v20 = a1;
        v21 = a3;
        v22 = a4;
        v23 = &OBJC_IVAR____TtCV10PegasusAPI59Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__cardSectionID;
        goto LABEL_13;
      case 8:
        v18 = MEMORY[0x1E69AACE0];
        v19 = a2;
        v20 = a1;
        v21 = a3;
        v22 = a4;
        v23 = &OBJC_IVAR____TtCV10PegasusAPI59Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__resultID;
LABEL_13:
        sub_1B9003EAC(v19, v20, v21, v22, v23, v18);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B8FD22B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(0);
  sub_1B8CD2450(&qword_1EBAC0848, type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_PunchoutForFeedback);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B8FD2390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionForFeedback(0);
  sub_1B8CD2450(&qword_1EBAC09A8, type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionForFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_CardSectionForFeedback);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B8FD24AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0730, &qword_1B966F9B8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v39 = v31 - v8;
  v32 = type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionForFeedback(0);
  MEMORY[0x1EEE9AC00](v32);
  v10 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC06D8, &qword_1B966F960);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v31 - v12;
  v14 = type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(0);
  MEMORY[0x1EEE9AC00](v14);
  swift_beginAccess();
  if (!*(a1 + 16) || (result = sub_1B964C720(), !v4))
  {
    v31[1] = v10;
    swift_beginAccess();
    sub_1B8F1B8B8();
    if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
    {
      sub_1B8D9207C(v13, &qword_1EBAC06D8, &qword_1B966F960);
    }

    else
    {
      sub_1B8FAC528();
      sub_1B8CD2450(&qword_1EBAC0848, type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_PunchoutForFeedback);
      sub_1B964C740();
      result = sub_1B8FAC5C8();
      if (v4)
      {
        return result;
      }
    }

    v16 = (a1 + OBJC_IVAR____TtCV10PegasusAPI59Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__triggerEvent);
    swift_beginAccess();
    v17 = v39;
    if (!*v16 || (v18 = *(v16 + 8), v37 = *v16, v38 = v18, sub_1B901397C(), result = sub_1B964C680(), !v4))
    {
      v19 = (a1 + OBJC_IVAR____TtCV10PegasusAPI59Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__actionCardType);
      swift_beginAccess();
      if (!*v19 || (v20 = *(v19 + 8), v35 = *v19, v36 = v20, sub_1B9013BC8(), result = sub_1B964C680(), !v4))
      {
        swift_beginAccess();
        sub_1B8F1B8B8();
        if (__swift_getEnumTagSinglePayload(v17, 1, v32) == 1)
        {
          sub_1B8D9207C(v17, &qword_1EBAC0730, &qword_1B966F9B8);
        }

        else
        {
          sub_1B8FAC528();
          sub_1B8CD2450(&qword_1EBAC09A8, type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionForFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_CardSectionForFeedback);
          sub_1B964C740();
          result = sub_1B8FAC5C8();
          if (v4)
          {
            return result;
          }
        }

        v21 = (a1 + OBJC_IVAR____TtCV10PegasusAPI59Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__productPageResult);
        swift_beginAccess();
        if (!*v21 || (v22 = *(v21 + 8), v33 = *v21, v34 = v22, sub_1B9023D8C(), result = sub_1B964C680(), !v4))
        {
          v23 = (a1 + OBJC_IVAR____TtCV10PegasusAPI59Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__cardSectionID);
          swift_beginAccess();
          v24 = *v23;
          v25 = v23[1];
          v26 = HIBYTE(v25) & 0xF;
          if ((v25 & 0x2000000000000000) == 0)
          {
            v26 = v24 & 0xFFFFFFFFFFFFLL;
          }

          if (!v26 || (, sub_1B964C700(), result = , !v5))
          {
            v27 = (a1 + OBJC_IVAR____TtCV10PegasusAPI59Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__resultID);
            result = swift_beginAccess();
            v28 = *v27;
            v29 = v27[1];
            v30 = HIBYTE(v29) & 0xF;
            if ((v29 & 0x2000000000000000) == 0)
            {
              v30 = v28 & 0xFFFFFFFFFFFFLL;
            }

            if (v30)
            {

              sub_1B964C700();
            }
          }
        }
      }
    }
  }

  return result;
}

BOOL sub_1B8FD2AAC(uint64_t a1, uint64_t a2)
{
  v63 = type metadata accessor for Apple_Parsec_Feedback_V2_CardSectionForFeedback(0);
  MEMORY[0x1EEE9AC00](v63);
  v5 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0780, &qword_1B966FA20);
  MEMORY[0x1EEE9AC00](v61);
  v7 = &v58 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0730, &qword_1B966F9B8);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v60 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v62 = &v58 - v11;
  v12 = type metadata accessor for Apple_Parsec_Feedback_V2_PunchoutForFeedback(0);
  MEMORY[0x1EEE9AC00](v12);
  v64 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0788, &qword_1B966FA28);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v58 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC06D8, &qword_1B966F960);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v66 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v58 - v20;
  swift_beginAccess();
  v22 = *(a1 + 16);
  swift_beginAccess();
  if (v22 != *(a2 + 16))
  {
    return 0;
  }

  v58 = v5;
  v59 = v7;
  v65 = a2;
  swift_beginAccess();
  v23 = v65;
  sub_1B8F1B8B8();
  swift_beginAccess();
  v24 = *(v14 + 48);
  sub_1B8F1B8B8();
  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v16, 1, v12) == 1)
  {

    sub_1B8D9207C(v21, &qword_1EBAC06D8, &qword_1B966F960);
    if (__swift_getEnumTagSinglePayload(&v16[v24], 1, v12) == 1)
    {
      sub_1B8D9207C(v16, &qword_1EBAC06D8, &qword_1B966F960);
      goto LABEL_10;
    }

LABEL_7:
    sub_1B8D9207C(v16, &qword_1EBAC0788, &qword_1B966FA28);
    goto LABEL_32;
  }

  v25 = v66;
  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(&v16[v24], 1, v12) == 1)
  {

    sub_1B8D9207C(v21, &qword_1EBAC06D8, &qword_1B966F960);
    sub_1B8FAC5C8();
    goto LABEL_7;
  }

  sub_1B8FAC528();

  v26 = static Apple_Parsec_Feedback_V2_PunchoutForFeedback.== infix(_:_:)(v25);
  sub_1B8FAC5C8();
  sub_1B8D9207C(v21, &qword_1EBAC06D8, &qword_1B966F960);
  sub_1B8FAC5C8();
  v23 = v65;
  sub_1B8D9207C(v16, &qword_1EBAC06D8, &qword_1B966F960);
  if ((v26 & 1) == 0)
  {
    goto LABEL_32;
  }

LABEL_10:
  v27 = a1 + OBJC_IVAR____TtCV10PegasusAPI59Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__triggerEvent;
  swift_beginAccess();
  v28 = *v27;
  v29 = *(v27 + 8);
  v30 = v23;
  v31 = (v23 + OBJC_IVAR____TtCV10PegasusAPI59Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__triggerEvent);
  swift_beginAccess();
  if (!sub_1B8D92198(v28, v29, *v31))
  {
    goto LABEL_32;
  }

  v32 = a1 + OBJC_IVAR____TtCV10PegasusAPI59Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__actionCardType;
  swift_beginAccess();
  v33 = *v32;
  v34 = *(v32 + 8);
  v35 = (v30 + OBJC_IVAR____TtCV10PegasusAPI59Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__actionCardType);
  swift_beginAccess();
  if (!sub_1B8D92198(v33, v34, *v35))
  {
    goto LABEL_32;
  }

  swift_beginAccess();
  v36 = v62;
  sub_1B8F1B8B8();
  swift_beginAccess();
  v37 = *(v61 + 48);
  v38 = v59;
  sub_1B8F1B8B8();
  sub_1B8F1B8B8();
  v39 = v63;
  if (__swift_getEnumTagSinglePayload(v38, 1, v63) != 1)
  {
    sub_1B8F1B8B8();
    if (__swift_getEnumTagSinglePayload(v38 + v37, 1, v39) == 1)
    {
      sub_1B8D9207C(v36, &qword_1EBAC0730, &qword_1B966F9B8);
      sub_1B8FAC5C8();
      goto LABEL_17;
    }

    sub_1B8FAC528();
    v41 = static Apple_Parsec_Feedback_V2_CardSectionForFeedback.== infix(_:_:)();
    sub_1B8FAC5C8();
    sub_1B8D9207C(v36, &qword_1EBAC0730, &qword_1B966F9B8);
    sub_1B8FAC5C8();
    sub_1B8D9207C(v38, &qword_1EBAC0730, &qword_1B966F9B8);
    v40 = v65;
    if (v41)
    {
      goto LABEL_20;
    }

LABEL_32:

    return 0;
  }

  sub_1B8D9207C(v36, &qword_1EBAC0730, &qword_1B966F9B8);
  if (__swift_getEnumTagSinglePayload(v38 + v37, 1, v39) != 1)
  {
LABEL_17:
    sub_1B8D9207C(v38, &qword_1EBAC0780, &qword_1B966FA20);
    goto LABEL_32;
  }

  sub_1B8D9207C(v38, &qword_1EBAC0730, &qword_1B966F9B8);
  v40 = v65;
LABEL_20:
  v42 = a1 + OBJC_IVAR____TtCV10PegasusAPI59Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__productPageResult;
  swift_beginAccess();
  v43 = *v42;
  v44 = *(v42 + 8);
  v45 = (v40 + OBJC_IVAR____TtCV10PegasusAPI59Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__productPageResult);
  swift_beginAccess();
  if (!sub_1B8D92198(v43, v44, *v45))
  {
    goto LABEL_32;
  }

  v46 = (a1 + OBJC_IVAR____TtCV10PegasusAPI59Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__cardSectionID);
  swift_beginAccess();
  v47 = *v46;
  v48 = v46[1];
  v49 = (v40 + OBJC_IVAR____TtCV10PegasusAPI59Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__cardSectionID);
  swift_beginAccess();
  v50 = v47 == *v49 && v48 == v49[1];
  if (!v50 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_32;
  }

  v51 = (a1 + OBJC_IVAR____TtCV10PegasusAPI59Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__resultID);
  swift_beginAccess();
  v52 = *v51;
  v53 = v51[1];
  v54 = (v65 + OBJC_IVAR____TtCV10PegasusAPI59Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__resultID);
  swift_beginAccess();
  if (v52 != *v54 || v53 != v54[1])
  {
    v56 = sub_1B964C9F0();

    return (v56 & 1) != 0;
  }

  return 1;
}

uint64_t sub_1B8FD34A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2450(&qword_1EBAC1D70, type metadata accessor for Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedback);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8FD3524(uint64_t a1)
{
  v2 = sub_1B8CD2450(&qword_1EBAC16F8, type metadata accessor for Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedback);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8FD3594(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2450(&qword_1EBAC16F8, type metadata accessor for Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_StoreCardSectionEngagementFeedback);

  return sub_1B964C5D0();
}

uint64_t sub_1B8FD3620()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC01D0);
  __swift_project_value_buffer(v0, qword_1EBAC01D0);
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
  *v12 = "uuid";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "triggerEvent";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "queryId";
  *(v16 + 1) = 7;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "searchType";
  *(v18 + 1) = 10;
  v18[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Feedback_V2_StartSearchFeedback.decodeMessage<A>(decoder:)()
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
      case 5:
        OUTLINED_FUNCTION_12();
        sub_1B964C560();
        break;
      case 2:
      case 3:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 4:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B8FD39BC(v3, v4, v5, v6);
        break;
      case 6:
        v7 = OUTLINED_FUNCTION_9();
        sub_1B8FD3A24(v7, v8, v9, v10);
        break;
      default:
        continue;
    }
  }
}

void Apple_Parsec_Feedback_V2_StartSearchFeedback.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_817();
  if (!OUTLINED_FUNCTION_25_11() || (OUTLINED_FUNCTION_35_6(), sub_1B964C720(), !v3))
  {
    OUTLINED_FUNCTION_1();
    if (!v5 || (OUTLINED_FUNCTION_59_5(), sub_1B964C700(), !v3))
    {
      OUTLINED_FUNCTION_1();
      if (!v6 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), !v3))
      {
        v7 = OUTLINED_FUNCTION_646_0();
        if (sub_1B8D92198(v7, v8, v9) || (sub_1B9013C70(), OUTLINED_FUNCTION_687(), sub_1B964C680(), !v3))
        {
          if (!*(v4 + 56) || (OUTLINED_FUNCTION_29(), sub_1B964C720(), !v3))
          {
            if (!*(v4 + 64) || (OUTLINED_FUNCTION_94_4(), sub_1B9013CC4(), OUTLINED_FUNCTION_687(), sub_1B964C680(), !v3))
            {
              type metadata accessor for Apple_Parsec_Feedback_V2_StartSearchFeedback(0);
              OUTLINED_FUNCTION_8_1();
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_816();
}

uint64_t sub_1B8FD3C60(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2450(&qword_1EBAC1D68, type metadata accessor for Apple_Parsec_Feedback_V2_StartSearchFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_StartSearchFeedback);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8FD3CE0(uint64_t a1)
{
  v2 = sub_1B8CD2450(&qword_1EBAC1710, type metadata accessor for Apple_Parsec_Feedback_V2_StartSearchFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_StartSearchFeedback);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8FD3D50(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2450(&qword_1EBAC1710, type metadata accessor for Apple_Parsec_Feedback_V2_StartSearchFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_StartSearchFeedback);

  return sub_1B964C5D0();
}

uint64_t sub_1B8FD3DDC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC01E8);
  __swift_project_value_buffer(v0, qword_1EBAC01E8);
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
  *v10 = "uuid";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Feedback_V2_EndSearchFeedback.decodeMessage<A>(decoder:)()
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
      OUTLINED_FUNCTION_311_0();
      sub_1B964C530();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_41_7();
      sub_1B964C560();
    }
  }

  return result;
}

uint64_t Apple_Parsec_Feedback_V2_EndSearchFeedback.traverse<A>(visitor:)(uint64_t a1)
{
  if (!OUTLINED_FUNCTION_25_11() || (OUTLINED_FUNCTION_35_6(), result = sub_1B964C720(), !v1))
  {
    OUTLINED_FUNCTION_1();
    if (!v3 || (OUTLINED_FUNCTION_59_5(), result = sub_1B964C700(), !v1))
    {
      type metadata accessor for Apple_Parsec_Feedback_V2_EndSearchFeedback(0);
      v4 = OUTLINED_FUNCTION_184_2();
      return OUTLINED_FUNCTION_655_0(v4);
    }
  }

  return result;
}

uint64_t sub_1B8FD4148(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2450(&qword_1EBAC1D60, type metadata accessor for Apple_Parsec_Feedback_V2_EndSearchFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_EndSearchFeedback);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8FD41C8(uint64_t a1)
{
  v2 = sub_1B8CD2450(&qword_1EBAC1728, type metadata accessor for Apple_Parsec_Feedback_V2_EndSearchFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_EndSearchFeedback);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8FD4238(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2450(&qword_1EBAC1728, type metadata accessor for Apple_Parsec_Feedback_V2_EndSearchFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_EndSearchFeedback);

  return sub_1B964C5D0();
}

uint64_t sub_1B8FD42D0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC0200);
  __swift_project_value_buffer(v0, qword_1EBAC0200);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1B966F8E0;
  v4 = v36 + v3 + v1[14];
  *(v36 + v3) = 1;
  *v4 = "timestamp";
  *(v4 + 8) = 9;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v36 + v3 + v2 + v1[14];
  *(v36 + v3 + v2) = 2;
  *v8 = "input";
  *(v8 + 8) = 5;
  *(v8 + 16) = 2;
  v7();
  v9 = (v36 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "uuid";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v7();
  v11 = (v36 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "queryId";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v7();
  v13 = (v36 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "url";
  *(v14 + 1) = 3;
  v14[16] = 2;
  v7();
  v15 = (v36 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "headers";
  *(v16 + 1) = 7;
  v16[16] = 2;
  v7();
  v17 = (v36 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "endpoint";
  *(v18 + 1) = 8;
  v18[16] = 2;
  v7();
  v19 = (v36 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "triggerEvent";
  *(v20 + 1) = 12;
  v20[16] = 2;
  v7();
  v21 = (v36 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "lookupSelectionType";
  *(v22 + 1) = 19;
  v22[16] = 2;
  v7();
  v23 = (v36 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 11;
  *v24 = "bodyData";
  *(v24 + 1) = 8;
  v24[16] = 2;
  v7();
  v25 = (v36 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 12;
  *v26 = "experimentId";
  *(v26 + 1) = 12;
  v26[16] = 2;
  v7();
  v27 = (v36 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 13;
  *v28 = "treatmentId";
  *(v28 + 1) = 11;
  v28[16] = 2;
  v7();
  v29 = (v36 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 14;
  *v30 = "searchType";
  *(v30 + 1) = 10;
  v30[16] = 2;
  v7();
  v31 = (v36 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 15;
  *v32 = "rawRequestSize";
  *(v32 + 1) = 14;
  v32[16] = 2;
  v7();
  v33 = (v36 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 16;
  *v34 = "compressedRequestSize";
  *(v34 + 1) = 21;
  v34[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback.decodeMessage<A>(decoder:)()
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
      case 15:
      case 16:
        OUTLINED_FUNCTION_12();
        sub_1B964C560();
        break;
      case 2:
      case 3:
      case 5:
      case 12:
      case 13:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 6:
        v11 = OUTLINED_FUNCTION_9();
        sub_1B8FD48E4(v11, v12, v13, v14);
        break;
      case 7:
        v15 = OUTLINED_FUNCTION_9();
        sub_1B8FD495C(v15, v16, v17, v18);
        break;
      case 8:
        v7 = OUTLINED_FUNCTION_9();
        sub_1B8FD49C4(v7, v8, v9, v10);
        break;
      case 9:
        v19 = OUTLINED_FUNCTION_9();
        sub_1B8FD4A78(v19, v20, v21, v22);
        break;
      case 11:
        OUTLINED_FUNCTION_12();
        sub_1B964C470();
        break;
      case 14:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B8FD4B30(v3, v4, v5, v6);
        break;
      default:
        continue;
    }
  }
}

void Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_800();
  if (!OUTLINED_FUNCTION_25_11() || (OUTLINED_FUNCTION_35_6(), sub_1B964C720(), (v3 = v4) == 0))
  {
    OUTLINED_FUNCTION_1();
    if (!v6 || (OUTLINED_FUNCTION_59_5(), sub_1B964C700(), (v3 = v4) == 0))
    {
      OUTLINED_FUNCTION_1();
      if (!v7 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), (v3 = v4) == 0))
      {
        if (!*(v5 + 40) || (OUTLINED_FUNCTION_29(), sub_1B964C720(), (v3 = v4) == 0))
        {
          OUTLINED_FUNCTION_1();
          if (!v8 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), (v3 = v4) == 0))
          {
            if (!*(*(v5 + 64) + 16) || (sub_1B964C280(), v4 = v3, sub_1B964C5F0(), !v3))
            {
              if (!*(v5 + 72) || (OUTLINED_FUNCTION_94_4(), sub_1B9013D18(), OUTLINED_FUNCTION_687(), sub_1B964C680(), !v4))
              {
                if (*(v5 + 96) > 0xFDu)
                {
                  goto LABEL_36;
                }

                OUTLINED_FUNCTION_491();
                OUTLINED_FUNCTION_292_0();
                if (v13 < 0)
                {
                  sub_1B8FD4E74(v9, v10, v11, v12);
                }

                else
                {
                  sub_1B8FD4DF4(v9, v10, v11, v12);
                }

                if (!v4)
                {
LABEL_36:
                  if (sub_1B8D99EA8(*(v5 + 104), *(v5 + 112)) || (OUTLINED_FUNCTION_11_5(), sub_1B964C6A0(), !v4))
                  {
                    OUTLINED_FUNCTION_1();
                    if (!v14 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), !v4))
                    {
                      OUTLINED_FUNCTION_1();
                      if (!v15 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), !v4))
                      {
                        if (!*(v5 + 152) || (OUTLINED_FUNCTION_94_4(), sub_1B9013CC4(), OUTLINED_FUNCTION_687(), sub_1B964C680(), !v4))
                        {
                          if (!*(v5 + 168) || (OUTLINED_FUNCTION_29(), sub_1B964C720(), !v4))
                          {
                            if (!*(v5 + 176) || (OUTLINED_FUNCTION_29(), sub_1B964C720(), !v4))
                            {
                              type metadata accessor for Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback(0);
                              OUTLINED_FUNCTION_8_1();
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
      }
    }
  }

  OUTLINED_FUNCTION_799();
}

uint64_t sub_1B8FD4DF4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(result + 96) < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1B9013C70();
    return sub_1B964C680();
  }

  return result;
}

uint64_t sub_1B8FD4E74(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(result + 96) > -3)
  {
    __break(1u);
  }

  else
  {
    sub_1B9023C3C();
    return sub_1B964C680();
  }

  return result;
}

uint64_t sub_1B8FD4FC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2450(&qword_1EBAC1D58, type metadata accessor for Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8FD5040(uint64_t a1)
{
  v2 = sub_1B8CD2450(&qword_1EBAB5958, type metadata accessor for Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8FD50B0(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2450(&qword_1EBAB5958, type metadata accessor for Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback);

  return sub_1B964C5D0();
}

uint64_t sub_1B8FD513C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC0218);
  __swift_project_value_buffer(v0, qword_1EBAC0218);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1B9653B20;
  v4 = v32 + v3 + v1[14];
  *(v32 + v3) = 1;
  *v4 = "timestamp";
  *(v4 + 8) = 9;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v32 + v3 + v2 + v1[14];
  *(v32 + v3 + v2) = 2;
  *v8 = "responseSize";
  *(v8 + 8) = 12;
  *(v8 + 16) = 2;
  v7();
  v9 = (v32 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "statusCode";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v7();
  v11 = (v32 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 5;
  *v12 = "uuid";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v7();
  v13 = (v32 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 7;
  *v14 = "parsecStatus";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v7();
  v15 = (v32 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 8;
  *v16 = "fbq";
  *(v16 + 1) = 3;
  v16[16] = 2;
  v7();
  v17 = (v32 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 9;
  *v18 = "duration";
  *(v18 + 1) = 8;
  v18[16] = 2;
  v7();
  v19 = (v32 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 10;
  *v20 = "partialClientIp";
  *(v20 + 1) = 15;
  v20[16] = 2;
  v7();
  v21 = (v32 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 11;
  *v22 = "timingData";
  *(v22 + 1) = 10;
  v22[16] = 2;
  v7();
  v23 = (v32 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 12;
  *v24 = "endpointType";
  *(v24 + 1) = 12;
  v24[16] = 2;
  v7();
  v25 = (v32 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 13;
  *v26 = "rawResponseSize";
  *(v26 + 1) = 15;
  v26[16] = 2;
  v7();
  v27 = (v32 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 14;
  *v28 = "decompressedResponseSize";
  *(v28 + 1) = 24;
  v28[16] = 2;
  v7();
  v29 = (v32 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 15;
  *v30 = "edge";
  *(v30 + 1) = 4;
  v30[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Feedback_V2_EndNetworkSearchFeedback.decodeMessage<A>(decoder:)()
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
      case 13:
      case 14:
        OUTLINED_FUNCTION_12();
        sub_1B964C560();
        break;
      case 2:
        OUTLINED_FUNCTION_311_0();
        sub_1B964C4B0();
        break;
      case 3:
        OUTLINED_FUNCTION_12();
        sub_1B964C4A0();
        break;
      case 5:
      case 7:
      case 8:
      case 10:
      case 15:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 9:
        OUTLINED_FUNCTION_12();
        sub_1B964C510();
        break;
      case 11:
        v7 = OUTLINED_FUNCTION_9();
        sub_1B8FD56D8(v7, v8, v9, v10);
        break;
      case 12:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B8FD578C(v3, v4, v5, v6);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B8FD56D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Feedback_V2_EndNetworkSearchFeedback(0);
  type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData(0);
  sub_1B8CD2450(&qword_1EBAB4570, type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData, protocol conformance descriptor for Apple_Parsec_Feedback_V2_NetworkTimingData);
  return sub_1B964C580();
}

void Apple_Parsec_Feedback_V2_EndNetworkSearchFeedback.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_614();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0738, &qword_1B966F9C0);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_151();
  type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData(v6);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_175_3();
  if (!*v0 || (OUTLINED_FUNCTION_35_6(), sub_1B964C720(), !v1))
  {
    if (!*(v2 + 8) || (OUTLINED_FUNCTION_29(), sub_1B964C6D0(), !v1))
    {
      if (!*(v2 + 16) || (OUTLINED_FUNCTION_29(), sub_1B964C6C0(), !v1))
      {
        OUTLINED_FUNCTION_1();
        if (!v8 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), !v1))
        {
          OUTLINED_FUNCTION_1();
          if (!v9 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), !v1))
          {
            OUTLINED_FUNCTION_1();
            if (!v10 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), !v1))
            {
              if (*(v2 + 72) == 0.0 || (OUTLINED_FUNCTION_26_9(), sub_1B964C6F0(), !v1))
              {
                OUTLINED_FUNCTION_1();
                if (!v11 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), !v1))
                {
                  type metadata accessor for Apple_Parsec_Feedback_V2_EndNetworkSearchFeedback(0);
                  OUTLINED_FUNCTION_715_0();
                  OUTLINED_FUNCTION_243_1();
                  if (v12)
                  {
                    sub_1B8D9207C(v3, &qword_1EBAC0738, &qword_1B966F9C0);
                  }

                  else
                  {
                    OUTLINED_FUNCTION_49_9();
                    OUTLINED_FUNCTION_424();
                    sub_1B8FAC528();
                    sub_1B8CD2450(&qword_1EBAB4570, type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData, protocol conformance descriptor for Apple_Parsec_Feedback_V2_NetworkTimingData);
                    OUTLINED_FUNCTION_597_0();
                    OUTLINED_FUNCTION_687();
                    sub_1B964C740();
                    OUTLINED_FUNCTION_328_0();
                    sub_1B8FAC5C8();
                    if (v1)
                    {
                      goto LABEL_31;
                    }
                  }

                  v13 = *(v2 + 96);
                  if (!v13 || (OUTLINED_FUNCTION_540_0(v13), sub_1B9013D18(), OUTLINED_FUNCTION_687(), sub_1B964C680(), !v1))
                  {
                    if (!*(v2 + 112) || (OUTLINED_FUNCTION_29(), sub_1B964C720(), !v1))
                    {
                      if (!*(v2 + 120) || (OUTLINED_FUNCTION_29(), sub_1B964C720(), !v1))
                      {
                        OUTLINED_FUNCTION_1();
                        if (!v14 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), !v1))
                        {
                          OUTLINED_FUNCTION_8_1();
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
  }

LABEL_31:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

uint64_t sub_1B8FD5B80(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2450(&qword_1EBAC1D50, type metadata accessor for Apple_Parsec_Feedback_V2_EndNetworkSearchFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_EndNetworkSearchFeedback);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8FD5C00(uint64_t a1)
{
  v2 = sub_1B8CD2450(&qword_1EBAB5978, type metadata accessor for Apple_Parsec_Feedback_V2_EndNetworkSearchFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_EndNetworkSearchFeedback);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8FD5C70(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2450(&qword_1EBAB5978, type metadata accessor for Apple_Parsec_Feedback_V2_EndNetworkSearchFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_EndNetworkSearchFeedback);

  return sub_1B964C5D0();
}

uint64_t sub_1B8FD5D08()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC0230);
  __swift_project_value_buffer(v0, qword_1EBAC0230);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "tokenString";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "entityType";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Feedback_V2_PerformEntityQueryCommandForFeedback.decodeMessage<A>(decoder:)()
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
      v3 = OUTLINED_FUNCTION_9();
      sub_1B8FD5F58(v3, v4, v5, v6);
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_41_7();
      sub_1B964C530();
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Feedback_V2_PerformEntityQueryCommandForFeedback.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_17_1(a1);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v6 = *(v2 + 16);
  v7 = *(v1 + 16);
  if (*(v1 + 24) == 1)
  {
    switch(v7)
    {
      case 1:
        if (v6 == 1)
        {
          goto LABEL_11;
        }

        return 0;
      case 2:
        if (v6 == 2)
        {
          goto LABEL_11;
        }

        return 0;
      case 3:
        if (v6 == 3)
        {
          goto LABEL_11;
        }

        return 0;
      case 4:
        if (v6 == 4)
        {
          goto LABEL_11;
        }

        return 0;
      default:
        if (v6)
        {
          return 0;
        }

        goto LABEL_11;
    }
  }

  if (v6 != v7)
  {
    return 0;
  }

LABEL_11:
  type metadata accessor for Apple_Parsec_Feedback_V2_PerformEntityQueryCommandForFeedback(0);
  OUTLINED_FUNCTION_188_1();
  OUTLINED_FUNCTION_0_40();
  v11 = sub_1B8CD2450(v9, v10, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v11) & 1;
}

uint64_t sub_1B8FD61F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2450(&qword_1EBAC1D48, type metadata accessor for Apple_Parsec_Feedback_V2_PerformEntityQueryCommandForFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_PerformEntityQueryCommandForFeedback);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8FD6270(uint64_t a1)
{
  v2 = sub_1B8CD2450(&qword_1EBAC1750, type metadata accessor for Apple_Parsec_Feedback_V2_PerformEntityQueryCommandForFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_PerformEntityQueryCommandForFeedback);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8FD62E0(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2450(&qword_1EBAC1750, type metadata accessor for Apple_Parsec_Feedback_V2_PerformEntityQueryCommandForFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_PerformEntityQueryCommandForFeedback);

  return sub_1B964C5D0();
}

uint64_t sub_1B8FD636C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC0248);
  __swift_project_value_buffer(v0, qword_1EBAC0248);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "percentMessagesIndexed";
  *(v6 + 8) = 22;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "percentAttachmentsIndexed";
  *(v10 + 8) = 25;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "searchIndex";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "totalMessageCount";
  *(v14 + 1) = 17;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "indexedMessageCount";
  *(v16 + 1) = 19;
  v16[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Feedback_V2_IndexStateForFeedback.decodeMessage<A>(decoder:)()
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

uint64_t Apple_Parsec_Feedback_V2_IndexStateForFeedback.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*v0 || (OUTLINED_FUNCTION_35_6(), result = sub_1B964C6C0(), !v1))
  {
    if (!v2[1] || (OUTLINED_FUNCTION_29(), result = sub_1B964C6C0(), !v1))
    {
      if (!v2[2] || (OUTLINED_FUNCTION_29(), result = sub_1B964C6C0(), !v1))
      {
        if (!v2[3] || (OUTLINED_FUNCTION_29(), result = sub_1B964C6C0(), !v1))
        {
          if (!v2[4] || (OUTLINED_FUNCTION_29(), result = sub_1B964C6C0(), !v1))
          {
            type metadata accessor for Apple_Parsec_Feedback_V2_IndexStateForFeedback(0);
            return OUTLINED_FUNCTION_8_1();
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Feedback_V2_IndexStateForFeedback.== infix(_:_:)(_DWORD *a1, _DWORD *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_468();
  if (*(v4 + 4) != *(v5 + 4))
  {
    return 0;
  }

  if (*(v3 + 8) != *(v2 + 8))
  {
    return 0;
  }

  if (*(v3 + 12) != *(v2 + 12))
  {
    return 0;
  }

  OUTLINED_FUNCTION_735();
  if (!v6)
  {
    return 0;
  }

  type metadata accessor for Apple_Parsec_Feedback_V2_IndexStateForFeedback(0);
  OUTLINED_FUNCTION_830();
  OUTLINED_FUNCTION_0_40();
  v9 = sub_1B8CD2450(v7, v8, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v9) & 1;
}

uint64_t sub_1B8FD68D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2450(&qword_1EBAC1D40, type metadata accessor for Apple_Parsec_Feedback_V2_IndexStateForFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_IndexStateForFeedback);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8FD6950(uint64_t a1)
{
  v2 = sub_1B8CD2450(&qword_1EBAC1768, type metadata accessor for Apple_Parsec_Feedback_V2_IndexStateForFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_IndexStateForFeedback);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8FD69C0(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2450(&qword_1EBAC1768, type metadata accessor for Apple_Parsec_Feedback_V2_IndexStateForFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_IndexStateForFeedback);

  return sub_1B964C5D0();
}

uint64_t sub_1B8FD6A4C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC0260);
  __swift_project_value_buffer(v0, qword_1EBAC0260);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1B964D040;
  v4 = v31 + v3;
  v5 = v31 + v3 + v1[14];
  *(v31 + v3) = 1;
  *v5 = "timestamp";
  *(v5 + 8) = 9;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1B964C750();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "input";
  *(v9 + 8) = 5;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "uuid";
  *(v11 + 1) = 4;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "triggerEvent";
  *(v13 + 1) = 12;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "queryId";
  *(v15 + 1) = 7;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "indexType";
  *(v17 + 1) = 9;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "searchType";
  *(v19 + 1) = 10;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "originatingApp";
  *(v21 + 1) = 14;
  v21[16] = 2;
  v8();
  v22 = (v4 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 9;
  *v23 = "entityQueryCommand";
  *(v23 + 1) = 18;
  v23[16] = 2;
  v8();
  v24 = (v4 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 10;
  *v25 = "indexState";
  *(v25 + 1) = 10;
  v25[16] = 2;
  v8();
  v26 = (v4 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 11;
  *v27 = "coreSpotlightIndexTypeUsed";
  *(v27 + 1) = 26;
  v27[16] = 2;
  v8();
  v28 = (v4 + 11 * v2);
  v29 = v28 + v1[14];
  *v28 = 12;
  *v29 = "isPhotosScopedSearch";
  *(v29 + 1) = 20;
  v29[16] = 2;
  v8();
  return sub_1B964C760();
}

uint64_t sub_1B8FD6EC4()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0xE000000000000000;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0xE000000000000000;
  *(v0 + 56) = 0;
  *(v0 + 64) = 1;
  *(v0 + 72) = 0;
  *(v0 + 80) = 0;
  *(v0 + 88) = 1;
  *(v0 + 96) = 0;
  *(v0 + 104) = 1;
  *(v0 + 112) = 0;
  *(v0 + 120) = 0xE000000000000000;
  v1 = OBJC_IVAR____TtCV10PegasusAPI49Apple_Parsec_Feedback_V2_StartLocalSearchFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__entityQueryCommand;
  CommandForFeedback = type metadata accessor for Apple_Parsec_Feedback_V2_PerformEntityQueryCommandForFeedback(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, CommandForFeedback);
  v3 = OBJC_IVAR____TtCV10PegasusAPI49Apple_Parsec_Feedback_V2_StartLocalSearchFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__indexState;
  v4 = type metadata accessor for Apple_Parsec_Feedback_V2_IndexStateForFeedback(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  v5 = v0 + OBJC_IVAR____TtCV10PegasusAPI49Apple_Parsec_Feedback_V2_StartLocalSearchFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__coreSpotlightIndexTypeUsed;
  *v5 = 0;
  *(v5 + 8) = 1;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI49Apple_Parsec_Feedback_V2_StartLocalSearchFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__isPhotosScopedSearch) = 0;
  return v0;
}

uint64_t sub_1B8FD6F80(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAC0748, &qword_1B966F9D0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v40 = &v32 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0740, &qword_1B966F9C8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v37 = &v32 - v6;
  *(v1 + 24) = 0;
  *(v1 + 16) = 0;
  *(v1 + 40) = 0;
  *(v1 + 32) = 0xE000000000000000;
  *(v1 + 48) = 0xE000000000000000;
  *(v1 + 56) = 0;
  *(v1 + 80) = 0;
  v33 = (v1 + 80);
  *(v1 + 72) = 0;
  *(v1 + 64) = 1;
  *(v1 + 88) = 1;
  *(v1 + 96) = 0;
  v34 = (v1 + 96);
  *(v1 + 104) = 1;
  *(v1 + 112) = 0;
  *(v1 + 120) = 0xE000000000000000;
  v7 = OBJC_IVAR____TtCV10PegasusAPI49Apple_Parsec_Feedback_V2_StartLocalSearchFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__entityQueryCommand;
  v35 = (v1 + 112);
  v36 = OBJC_IVAR____TtCV10PegasusAPI49Apple_Parsec_Feedback_V2_StartLocalSearchFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__entityQueryCommand;
  CommandForFeedback = type metadata accessor for Apple_Parsec_Feedback_V2_PerformEntityQueryCommandForFeedback(0);
  __swift_storeEnumTagSinglePayload(v1 + v7, 1, 1, CommandForFeedback);
  v9 = OBJC_IVAR____TtCV10PegasusAPI49Apple_Parsec_Feedback_V2_StartLocalSearchFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__indexState;
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_IndexStateForFeedback(0);
  __swift_storeEnumTagSinglePayload(v1 + v9, 1, 1, v10);
  v11 = v1 + OBJC_IVAR____TtCV10PegasusAPI49Apple_Parsec_Feedback_V2_StartLocalSearchFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__coreSpotlightIndexTypeUsed;
  v38 = v1 + OBJC_IVAR____TtCV10PegasusAPI49Apple_Parsec_Feedback_V2_StartLocalSearchFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__coreSpotlightIndexTypeUsed;
  *v11 = 0;
  *(v11 + 8) = 1;
  v39 = OBJC_IVAR____TtCV10PegasusAPI49Apple_Parsec_Feedback_V2_StartLocalSearchFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__isPhotosScopedSearch;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI49Apple_Parsec_Feedback_V2_StartLocalSearchFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__isPhotosScopedSearch) = 0;
  swift_beginAccess();
  v12 = *(a1 + 16);
  swift_beginAccess();
  *(v1 + 16) = v12;
  swift_beginAccess();
  v14 = *(a1 + 24);
  v13 = *(a1 + 32);
  swift_beginAccess();
  *(v1 + 24) = v14;
  *(v1 + 32) = v13;
  swift_beginAccess();
  v15 = *(a1 + 40);
  v16 = *(a1 + 48);
  swift_beginAccess();
  *(v1 + 40) = v15;
  *(v1 + 48) = v16;

  swift_beginAccess();
  v17 = *(a1 + 56);
  LOBYTE(v15) = *(a1 + 64);
  swift_beginAccess();
  *(v1 + 56) = v17;
  *(v1 + 64) = v15;
  swift_beginAccess();
  v18 = *(a1 + 72);
  swift_beginAccess();
  *(v1 + 72) = v18;
  swift_beginAccess();
  v19 = *(a1 + 80);
  LOBYTE(v15) = *(a1 + 88);
  v20 = v33;
  swift_beginAccess();
  *v20 = v19;
  *(v1 + 88) = v15;
  swift_beginAccess();
  v21 = *(a1 + 96);
  LOBYTE(v15) = *(a1 + 104);
  v22 = v34;
  swift_beginAccess();
  *v22 = v21;
  *(v1 + 104) = v15;
  swift_beginAccess();
  v24 = *(a1 + 112);
  v23 = *(a1 + 120);
  v25 = v35;
  swift_beginAccess();
  *v25 = v24;
  *(v1 + 120) = v23;

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
  v26 = (a1 + OBJC_IVAR____TtCV10PegasusAPI49Apple_Parsec_Feedback_V2_StartLocalSearchFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__coreSpotlightIndexTypeUsed);
  swift_beginAccess();
  v27 = *v26;
  LOBYTE(v26) = *(v26 + 8);
  v28 = v38;
  swift_beginAccess();
  *v28 = v27;
  *(v28 + 8) = v26;
  v29 = OBJC_IVAR____TtCV10PegasusAPI49Apple_Parsec_Feedback_V2_StartLocalSearchFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__isPhotosScopedSearch;
  swift_beginAccess();
  LOBYTE(v29) = *(a1 + v29);

  v30 = v39;
  swift_beginAccess();
  *(v1 + v30) = v29;
  return v1;
}

void *sub_1B8FD74DC()
{

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI49Apple_Parsec_Feedback_V2_StartLocalSearchFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__entityQueryCommand, &qword_1EBAC0740, &qword_1B966F9C8);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI49Apple_Parsec_Feedback_V2_StartLocalSearchFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__indexState, &unk_1EBAC0748, &qword_1B966F9D0);
  return v0;
}

void sub_1B8FD75CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
        sub_1B9006E98(a2, a1, a3, a4, MEMORY[0x1E69AAD00]);
        break;
      case 2:
        sub_1B8FD77E8(a2, a1);
        break;
      case 3:
        sub_1B8FD786C(a2, a1);
        break;
      case 4:
        sub_1B8FD78F0(a2, a1, a3, a4);
        break;
      case 5:
        sub_1B8FD7984(a2, a1, a3, a4);
        break;
      case 6:
        sub_1B8FD79D8(a2, a1, a3, a4);
        break;
      case 7:
        sub_1B8FD7A6C(a2, a1, a3, a4);
        break;
      case 8:
        sub_1B8E2F858(a2, a1);
        break;
      case 9:
        sub_1B8FD7B00(a2, a1, a3, a4);
        break;
      case 10:
        sub_1B8FD7BDC(a2, a1, a3, a4);
        break;
      case 11:
        sub_1B9003F0C(a2, a1, a3, a4, &OBJC_IVAR____TtCV10PegasusAPI49Apple_Parsec_Feedback_V2_StartLocalSearchFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__coreSpotlightIndexTypeUsed, sub_1B9023EDC, &type metadata for Apple_Parsec_Feedback_V2_CoreSpotlightIndexUsed);
        break;
      case 12:
        sub_1B900709C(a2, a1, a3, a4, &OBJC_IVAR____TtCV10PegasusAPI49Apple_Parsec_Feedback_V2_StartLocalSearchFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__isPhotosScopedSearch);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B8FD77E8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1B964C530();
  return swift_endAccess();
}

uint64_t sub_1B8FD786C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1B964C530();
  return swift_endAccess();
}

uint64_t sub_1B8FD78F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B9013C70();
  sub_1B964C420();
  return swift_endAccess();
}

void sub_1B8FD7984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_796();
  OUTLINED_FUNCTION_147_1();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_160_3();
  v4 = sub_1B964C560();
  OUTLINED_FUNCTION_199_1(v4);
  OUTLINED_FUNCTION_795();
}

uint64_t sub_1B8FD79D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B9023F84();
  sub_1B964C420();
  return swift_endAccess();
}

uint64_t sub_1B8FD7A6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B9013CC4();
  sub_1B964C420();
  return swift_endAccess();
}

uint64_t sub_1B8FD7B00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Feedback_V2_PerformEntityQueryCommandForFeedback(0);
  sub_1B8CD2450(&qword_1EBAC1750, type metadata accessor for Apple_Parsec_Feedback_V2_PerformEntityQueryCommandForFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_PerformEntityQueryCommandForFeedback);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B8FD7BDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Feedback_V2_IndexStateForFeedback(0);
  sub_1B8CD2450(&qword_1EBAC1768, type metadata accessor for Apple_Parsec_Feedback_V2_IndexStateForFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_IndexStateForFeedback);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B8FD7CF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAC0748, &qword_1B966F9D0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v32 = v31 - v8;
  v41 = type metadata accessor for Apple_Parsec_Feedback_V2_IndexStateForFeedback(0);
  MEMORY[0x1EEE9AC00](v41);
  v10 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0740, &qword_1B966F9C8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v31 - v12;
  CommandForFeedback = type metadata accessor for Apple_Parsec_Feedback_V2_PerformEntityQueryCommandForFeedback(0);
  MEMORY[0x1EEE9AC00](CommandForFeedback);
  v31[3] = v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (!*(a1 + 16) || (result = sub_1B964C720(), !v4))
  {
    v31[2] = v10;
    v17 = a4;
    swift_beginAccess();
    v18 = *(a1 + 32);
    v19 = HIBYTE(v18) & 0xF;
    if ((v18 & 0x2000000000000000) == 0)
    {
      v19 = *(a1 + 24) & 0xFFFFFFFFFFFFLL;
    }

    if (v19)
    {

      sub_1B964C700();
      if (v4)
      {
      }
    }

    swift_beginAccess();
    v20 = *(a1 + 48);
    v21 = HIBYTE(v20) & 0xF;
    if ((v20 & 0x2000000000000000) == 0)
    {
      v21 = *(a1 + 40) & 0xFFFFFFFFFFFFLL;
    }

    if (v21)
    {

      sub_1B964C700();
      if (v4)
      {
      }
    }

    swift_beginAccess();
    if (sub_1B8D92198(*(a1 + 56), *(a1 + 64), 0) || (v22 = *(a1 + 64), v39 = *(a1 + 56), v40 = v22, sub_1B9013C70(), result = sub_1B964C680(), !v4))
    {
      swift_beginAccess();
      if (!*(a1 + 72) || (result = sub_1B964C720(), !v4))
      {
        swift_beginAccess();
        if (!*(a1 + 80) || (v23 = *(a1 + 88), v37 = *(a1 + 80), v38 = v23, sub_1B9023F84(), result = sub_1B964C680(), !v4))
        {
          swift_beginAccess();
          if (!*(a1 + 96) || (v24 = *(a1 + 104), v35 = *(a1 + 96), v36 = v24, sub_1B9013CC4(), result = sub_1B964C680(), !v4))
          {
            v31[1] = v17;
            swift_beginAccess();
            v25 = *(a1 + 120);
            v26 = HIBYTE(v25) & 0xF;
            if ((v25 & 0x2000000000000000) == 0)
            {
              v26 = *(a1 + 112) & 0xFFFFFFFFFFFFLL;
            }

            if (!v26 || (, sub_1B964C700(), result = , !v4))
            {
              swift_beginAccess();
              sub_1B8F1B8B8();
              if (__swift_getEnumTagSinglePayload(v13, 1, CommandForFeedback) == 1)
              {
                sub_1B8D9207C(v13, &qword_1EBAC0740, &qword_1B966F9C8);
              }

              else
              {
                sub_1B8FAC528();
                sub_1B8CD2450(&qword_1EBAC1750, type metadata accessor for Apple_Parsec_Feedback_V2_PerformEntityQueryCommandForFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_PerformEntityQueryCommandForFeedback);
                sub_1B964C740();
                result = sub_1B8FAC5C8();
                if (v4)
                {
                  return result;
                }
              }

              swift_beginAccess();
              v27 = v32;
              sub_1B8F1B8B8();
              if (__swift_getEnumTagSinglePayload(v27, 1, v41) == 1)
              {
                sub_1B8D9207C(v27, &unk_1EBAC0748, &qword_1B966F9D0);
              }

              else
              {
                sub_1B8FAC528();
                sub_1B8CD2450(&qword_1EBAC1768, type metadata accessor for Apple_Parsec_Feedback_V2_IndexStateForFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_IndexStateForFeedback);
                sub_1B964C740();
                result = sub_1B8FAC5C8();
                if (v4)
                {
                  return result;
                }
              }

              v28 = (a1 + OBJC_IVAR____TtCV10PegasusAPI49Apple_Parsec_Feedback_V2_StartLocalSearchFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__coreSpotlightIndexTypeUsed);
              swift_beginAccess();
              if (!*v28 || (v29 = *(v28 + 8), v33 = *v28, v34 = v29, sub_1B9023EDC(), result = sub_1B964C680(), !v4))
              {
                v30 = OBJC_IVAR____TtCV10PegasusAPI49Apple_Parsec_Feedback_V2_StartLocalSearchFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__isPhotosScopedSearch;
                result = swift_beginAccess();
                if (*(a1 + v30) == 1)
                {
                  return sub_1B964C670();
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

uint64_t sub_1B8FD8428(uint64_t a1, void *a2)
{
  v68 = type metadata accessor for Apple_Parsec_Feedback_V2_IndexStateForFeedback(0);
  MEMORY[0x1EEE9AC00](v68);
  v64 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2110, &qword_1B967F5B8);
  MEMORY[0x1EEE9AC00](v66);
  v6 = &v63 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAC0748, &qword_1B966F9D0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v65 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v67 = &v63 - v10;
  CommandForFeedback = type metadata accessor for Apple_Parsec_Feedback_V2_PerformEntityQueryCommandForFeedback(0);
  MEMORY[0x1EEE9AC00](CommandForFeedback);
  v13 = (&v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC2118, &unk_1B967F5C0);
  MEMORY[0x1EEE9AC00](v14);
  v69 = &v63 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0740, &qword_1B966F9C8);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v63 - v20;
  swift_beginAccess();
  v22 = *(a1 + 16);
  swift_beginAccess();
  if (v22 != a2[2])
  {
    goto LABEL_44;
  }

  v63 = v6;
  swift_beginAccess();
  v24 = *(a1 + 24);
  v23 = *(a1 + 32);
  swift_beginAccess();
  v25 = v24 == a2[3] && v23 == a2[4];
  if (!v25 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_44;
  }

  swift_beginAccess();
  v26 = *(a1 + 40);
  v27 = *(a1 + 48);
  swift_beginAccess();
  v28 = v26 == a2[5] && v27 == a2[6];
  if (!v28 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_44;
  }

  swift_beginAccess();
  v29 = *(a1 + 56);
  v30 = *(a1 + 64);
  swift_beginAccess();
  if (!sub_1B8D92198(v29, v30, a2[7]))
  {
    goto LABEL_44;
  }

  swift_beginAccess();
  v31 = *(a1 + 72);
  swift_beginAccess();
  if (v31 != a2[9])
  {
    goto LABEL_44;
  }

  swift_beginAccess();
  v32 = *(a1 + 80);
  v33 = *(a1 + 88);
  swift_beginAccess();
  if (!sub_1B8D92198(v32, v33, a2[10]))
  {
    goto LABEL_44;
  }

  swift_beginAccess();
  v34 = *(a1 + 96);
  v35 = *(a1 + 104);
  swift_beginAccess();
  if (!sub_1B8D92198(v34, v35, a2[12]))
  {
    goto LABEL_44;
  }

  swift_beginAccess();
  v36 = *(a1 + 112);
  v37 = *(a1 + 120);
  swift_beginAccess();
  v38 = v36 == a2[14] && v37 == a2[15];
  if (!v38 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_44;
  }

  swift_beginAccess();
  sub_1B8F1B8B8();
  swift_beginAccess();
  v39 = *(v14 + 48);
  v40 = v69;
  sub_1B8F1B8B8();
  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v40, 1, CommandForFeedback) == 1)
  {

    sub_1B8D9207C(v21, &qword_1EBAC0740, &qword_1B966F9C8);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v40 + v39, 1, CommandForFeedback);
    v42 = v63;
    if (EnumTagSinglePayload == 1)
    {
      sub_1B8D9207C(v40, &qword_1EBAC0740, &qword_1B966F9C8);
      goto LABEL_24;
    }

    goto LABEL_29;
  }

  sub_1B8F1B8B8();
  v46 = __swift_getEnumTagSinglePayload(v40 + v39, 1, CommandForFeedback);
  v42 = v63;
  if (v46 == 1)
  {

    sub_1B8D9207C(v21, &qword_1EBAC0740, &qword_1B966F9C8);
    sub_1B8FAC5C8();
LABEL_29:
    v47 = &qword_1EBAC2118;
    v48 = &unk_1B967F5C0;
    v49 = v40;
LABEL_42:
    sub_1B8D9207C(v49, v47, v48);
    goto LABEL_43;
  }

  sub_1B8FAC528();
  v50 = *v19 == *v13 && *(v19 + 1) == v13[1];
  if (!v50 && (sub_1B964C9F0() & 1) == 0 || !sub_1B8D92198(*(v19 + 2), v19[24], v13[2]))
  {

    sub_1B8D9207C(v21, &qword_1EBAC0740, &qword_1B966F9C8);
    sub_1B8FAC5C8();
    sub_1B8FAC5C8();
    v49 = v69;
    v47 = &qword_1EBAC0740;
    v48 = &qword_1B966F9C8;
    goto LABEL_42;
  }

  sub_1B964C2B0();
  sub_1B8CD2450(&qword_1EBAB3B38, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);

  v51 = sub_1B964C850();
  sub_1B8D9207C(v21, &qword_1EBAC0740, &qword_1B966F9C8);
  sub_1B8FAC5C8();
  sub_1B8FAC5C8();
  sub_1B8D9207C(v69, &qword_1EBAC0740, &qword_1B966F9C8);
  if ((v51 & 1) == 0)
  {
    goto LABEL_43;
  }

LABEL_24:
  swift_beginAccess();
  v43 = v67;
  sub_1B8F1B8B8();
  swift_beginAccess();
  v44 = *(v66 + 48);
  sub_1B8F1B8B8();
  sub_1B8F1B8B8();
  v45 = v68;
  if (__swift_getEnumTagSinglePayload(v42, 1, v68) == 1)
  {
    sub_1B8D9207C(v43, &unk_1EBAC0748, &qword_1B966F9D0);
    if (__swift_getEnumTagSinglePayload(v42 + v44, 1, v45) == 1)
    {
      sub_1B8D9207C(v42, &unk_1EBAC0748, &qword_1B966F9D0);
      goto LABEL_47;
    }

    goto LABEL_41;
  }

  v52 = v65;
  sub_1B8F1B8B8();
  if (__swift_getEnumTagSinglePayload(v42 + v44, 1, v45) == 1)
  {
    sub_1B8D9207C(v43, &unk_1EBAC0748, &qword_1B966F9D0);
    sub_1B8FAC5C8();
LABEL_41:
    v47 = &qword_1EBAC2110;
    v48 = &qword_1B967F5B8;
    v49 = v42;
    goto LABEL_42;
  }

  v55 = v64;
  sub_1B8FAC528();
  v56 = static Apple_Parsec_Feedback_V2_IndexStateForFeedback.== infix(_:_:)(v52, v55);
  sub_1B8FAC5C8();
  sub_1B8D9207C(v43, &unk_1EBAC0748, &qword_1B966F9D0);
  sub_1B8FAC5C8();
  sub_1B8D9207C(v42, &unk_1EBAC0748, &qword_1B966F9D0);
  if (v56)
  {
LABEL_47:
    v57 = a1 + OBJC_IVAR____TtCV10PegasusAPI49Apple_Parsec_Feedback_V2_StartLocalSearchFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__coreSpotlightIndexTypeUsed;
    swift_beginAccess();
    v58 = *v57;
    v59 = *(v57 + 8);
    v60 = (a2 + OBJC_IVAR____TtCV10PegasusAPI49Apple_Parsec_Feedback_V2_StartLocalSearchFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__coreSpotlightIndexTypeUsed);
    swift_beginAccess();
    if (sub_1B8D92198(v58, v59, *v60))
    {
      v61 = OBJC_IVAR____TtCV10PegasusAPI49Apple_Parsec_Feedback_V2_StartLocalSearchFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__isPhotosScopedSearch;
      swift_beginAccess();
      LOBYTE(v61) = *(a1 + v61);

      v62 = OBJC_IVAR____TtCV10PegasusAPI49Apple_Parsec_Feedback_V2_StartLocalSearchFeedbackP33_77B5B706CF0E73DDD7D70D7AB7885D7913_StorageClass__isPhotosScopedSearch;
      swift_beginAccess();
      LOBYTE(v62) = *(a2 + v62);

      v53 = v61 ^ v62 ^ 1;
      return v53 & 1;
    }
  }

LABEL_43:

LABEL_44:
  v53 = 0;
  return v53 & 1;
}

uint64_t sub_1B8FD8F90(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2450(&qword_1EBAC1D38, type metadata accessor for Apple_Parsec_Feedback_V2_StartLocalSearchFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_StartLocalSearchFeedback);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8FD9010(uint64_t a1)
{
  v2 = sub_1B8CD2450(&qword_1EBAC1780, type metadata accessor for Apple_Parsec_Feedback_V2_StartLocalSearchFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_StartLocalSearchFeedback);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8FD9080(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2450(&qword_1EBAC1780, type metadata accessor for Apple_Parsec_Feedback_V2_StartLocalSearchFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_StartLocalSearchFeedback);

  return sub_1B964C5D0();
}

uint64_t sub_1B8FD9118()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC0280);
  __swift_project_value_buffer(v0, qword_1EBAC0280);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_1B965A600;
  v4 = v44 + v3 + v1[14];
  *(v44 + v3) = 1;
  *v4 = "queryIntentType";
  *(v4 + 8) = 15;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v44 + v3 + v2 + v1[14];
  *(v44 + v3 + v2) = 2;
  *v8 = "hasUnspecifiedTokens";
  *(v8 + 8) = 20;
  *(v8 + 16) = 2;
  v7();
  v9 = (v44 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "hasSortCriteriaTokens";
  *(v10 + 1) = 21;
  v10[16] = 2;
  v7();
  v11 = (v44 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "hasLocationTokens";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v7();
  v13 = (v44 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "hasActionTokens";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v7();
  v15 = (v44 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "hasMediaTypeTokens";
  *(v16 + 1) = 18;
  v16[16] = 2;
  v7();
  v17 = (v44 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "hasVisualQualityTokens";
  *(v18 + 1) = 22;
  v18[16] = 2;
  v7();
  v19 = (v44 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "hasNounTokens";
  *(v20 + 1) = 13;
  v20[16] = 2;
  v7();
  v21 = (v44 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 9;
  *v22 = "hasTimeTokens";
  *(v22 + 1) = 13;
  v22[16] = 2;
  v7();
  v23 = (v44 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "hasEventTokens";
  *(v24 + 1) = 14;
  v24[16] = 2;
  v7();
  v25 = (v44 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "hasGenericLocationTokens";
  *(v26 + 1) = 24;
  v26[16] = 2;
  v7();
  v27 = (v44 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "hasCaptureDeviceTokens";
  *(v28 + 1) = 22;
  v28[16] = 2;
  v7();
  v29 = (v44 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "hasFavoritedTokens";
  *(v30 + 1) = 18;
  v30[16] = 2;
  v7();
  v31 = (v44 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "hasSourceAppTokens";
  *(v32 + 1) = 18;
  v32[16] = 2;
  v7();
  v33 = (v44 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "hasPersonTokens";
  *(v34 + 1) = 15;
  v34[16] = 2;
  v7();
  v35 = (v44 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "hasPersonSenderTokens";
  *(v36 + 1) = 21;
  v36[16] = 2;
  v7();
  v37 = (v44 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 17;
  *v38 = "spotlightQueryIntent";
  *(v38 + 1) = 20;
  v38[16] = 2;
  v7();
  v39 = (v44 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 18;
  *v40 = "isUnsafeQuery";
  *(v40 + 1) = 13;
  v40[16] = 2;
  v7();
  v41 = (v44 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 19;
  *v42 = "isBlocklistedQuery";
  *(v42 + 1) = 18;
  v42[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t sub_1B8FD970C()
{
  type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse._StorageClass();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 1;
  *(result + 33) = 0;
  *(result + 25) = 0;
  *(result + 40) = 0;
  *(result + 48) = 1;
  *(result + 49) = 0;
  qword_1EBAC0298 = result;
  return result;
}

uint64_t sub_1B8FD975C(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  *(v1 + 40) = 0;
  *(v1 + 33) = 0;
  *(v1 + 25) = 0;
  *(v1 + 48) = 1;
  *(v1 + 49) = 0;
  swift_beginAccess();
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v3;
  *(v1 + 24) = v4;
  swift_beginAccess();
  v5 = *(a1 + 25);
  swift_beginAccess();
  *(v1 + 25) = v5;
  swift_beginAccess();
  v6 = *(a1 + 26);
  swift_beginAccess();
  *(v1 + 26) = v6;
  swift_beginAccess();
  v7 = *(a1 + 27);
  swift_beginAccess();
  *(v1 + 27) = v7;
  swift_beginAccess();
  v8 = *(a1 + 28);
  swift_beginAccess();
  *(v1 + 28) = v8;
  swift_beginAccess();
  v9 = *(a1 + 29);
  swift_beginAccess();
  *(v1 + 29) = v9;
  swift_beginAccess();
  v10 = *(a1 + 30);
  swift_beginAccess();
  *(v1 + 30) = v10;
  swift_beginAccess();
  v11 = *(a1 + 31);
  swift_beginAccess();
  *(v1 + 31) = v11;
  swift_beginAccess();
  v12 = *(a1 + 32);
  swift_beginAccess();
  *(v1 + 32) = v12;
  swift_beginAccess();
  v13 = *(a1 + 33);
  swift_beginAccess();
  *(v1 + 33) = v13;
  swift_beginAccess();
  v14 = *(a1 + 34);
  swift_beginAccess();
  *(v1 + 34) = v14;
  swift_beginAccess();
  v15 = *(a1 + 35);
  swift_beginAccess();
  *(v1 + 35) = v15;
  swift_beginAccess();
  v16 = *(a1 + 36);
  swift_beginAccess();
  *(v1 + 36) = v16;
  swift_beginAccess();
  v17 = *(a1 + 37);
  swift_beginAccess();
  *(v1 + 37) = v17;
  swift_beginAccess();
  v18 = *(a1 + 38);
  swift_beginAccess();
  *(v1 + 38) = v18;
  swift_beginAccess();
  v19 = *(a1 + 39);
  swift_beginAccess();
  *(v1 + 39) = v19;
  swift_beginAccess();
  v20 = *(a1 + 40);
  v21 = *(a1 + 48);
  swift_beginAccess();
  *(v1 + 40) = v20;
  *(v1 + 48) = v21;
  swift_beginAccess();
  v22 = *(a1 + 49);
  swift_beginAccess();
  *(v1 + 49) = v22;
  swift_beginAccess();
  v23 = *(a1 + 50);

  swift_beginAccess();
  *(v1 + 50) = v23;
  return v1;
}

void Apple_Parsec_Feedback_V2_QueryUnderstandingParse.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_822();
  OUTLINED_FUNCTION_12_8();
  UnderstandingParse = type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse(0);
  OUTLINED_FUNCTION_704_0(UnderstandingParse);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse._StorageClass();
    OUTLINED_FUNCTION_457_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    *(v3 + v4) = sub_1B8FD975C(v6);
  }

  v7 = OUTLINED_FUNCTION_7_6();
  sub_1B8FD9FB0(v7, v8, v9, v10);
  OUTLINED_FUNCTION_823();
}

void sub_1B8FD9FB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
        sub_1B8FDA25C(a2, a1, a3, a4, sub_1B9023D38, &type metadata for Apple_Parsec_Feedback_V2_QueryUnderstandingQueryIntentType);
        break;
      case 2:
        sub_1B8FDA2D4(a2, a1, a3, a4);
        break;
      case 3:
        sub_1B8FDA358(a2, a1, a3, a4);
        break;
      case 4:
        sub_1B8FDA3DC(a2, a1, a3, a4);
        break;
      case 5:
        sub_1B8FDA460(a2, a1, a3, a4);
        break;
      case 6:
        sub_1B8FDA4E4(a2, a1, a3, a4);
        break;
      case 7:
        sub_1B8FDA568(a2, a1, a3, a4);
        break;
      case 8:
        sub_1B8FDA5EC(a2, a1, a3, a4);
        break;
      case 9:
        sub_1B8FDA670(a2, a1, a3, a4);
        break;
      case 10:
        sub_1B8FDA6F4(a2, a1, a3, a4);
        break;
      case 11:
        sub_1B8FDA778(a2, a1, a3, a4);
        break;
      case 12:
        sub_1B8FDA7FC(a2, a1, a3, a4);
        break;
      case 13:
        sub_1B8FDA880(a2, a1, a3, a4);
        break;
      case 14:
        sub_1B8FDA904(a2, a1, a3, a4);
        break;
      case 15:
        sub_1B8FDA988(a2, a1, a3, a4);
        break;
      case 16:
        sub_1B8FDAA0C(a2, a1, a3, a4);
        break;
      case 17:
        sub_1B8FDAA90(a2, a1, a3, a4);
        break;
      case 18:
        sub_1B8FDAB24(a2, a1, a3, a4);
        break;
      case 19:
        sub_1B8FDAB78(a2, a1, a3, a4);
        break;
      default:
        continue;
    }
  }
}

void sub_1B8FDA25C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_819();
  v7 = v6;
  OUTLINED_FUNCTION_122_1();
  OUTLINED_FUNCTION_131();
  v8 = swift_beginAccess();
  v7(v8);
  OUTLINED_FUNCTION_601_0();
  v9 = sub_1B964C420();
  OUTLINED_FUNCTION_199_1(v9);
  OUTLINED_FUNCTION_818();
}

uint64_t sub_1B8FDA2D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C400();
  return swift_endAccess();
}

uint64_t sub_1B8FDA358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C400();
  return swift_endAccess();
}

uint64_t sub_1B8FDA3DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C400();
  return swift_endAccess();
}

uint64_t sub_1B8FDA460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C400();
  return swift_endAccess();
}

uint64_t sub_1B8FDA4E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C400();
  return swift_endAccess();
}

uint64_t sub_1B8FDA568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C400();
  return swift_endAccess();
}

uint64_t sub_1B8FDA5EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C400();
  return swift_endAccess();
}

uint64_t sub_1B8FDA670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C400();
  return swift_endAccess();
}

uint64_t sub_1B8FDA6F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C400();
  return swift_endAccess();
}

uint64_t sub_1B8FDA778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C400();
  return swift_endAccess();
}

uint64_t sub_1B8FDA7FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C400();
  return swift_endAccess();
}

uint64_t sub_1B8FDA880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C400();
  return swift_endAccess();
}

uint64_t sub_1B8FDA904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C400();
  return swift_endAccess();
}

uint64_t sub_1B8FDA988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C400();
  return swift_endAccess();
}

uint64_t sub_1B8FDAA0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C400();
  return swift_endAccess();
}

uint64_t sub_1B8FDAA90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B9013928();
  sub_1B964C420();
  return swift_endAccess();
}

void sub_1B8FDAB24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_1B8FDAB78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C400();
  return swift_endAccess();
}

uint64_t sub_1B8FDAC3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if (!*(a1 + 16) || (sub_1B9023D38(), result = sub_1B964C680(), !v4))
  {
    swift_beginAccess();
    if (*(a1 + 25) != 1 || (result = sub_1B964C670(), !v4))
    {
      swift_beginAccess();
      if (*(a1 + 26) != 1 || (result = sub_1B964C670(), !v4))
      {
        swift_beginAccess();
        if (*(a1 + 27) != 1 || (result = sub_1B964C670(), !v4))
        {
          swift_beginAccess();
          if (*(a1 + 28) != 1 || (result = sub_1B964C670(), !v4))
          {
            swift_beginAccess();
            if (*(a1 + 29) != 1 || (result = sub_1B964C670(), !v4))
            {
              swift_beginAccess();
              if (*(a1 + 30) != 1 || (result = sub_1B964C670(), !v4))
              {
                swift_beginAccess();
                if (*(a1 + 31) != 1 || (result = sub_1B964C670(), !v4))
                {
                  swift_beginAccess();
                  if (*(a1 + 32) != 1 || (result = sub_1B964C670(), !v4))
                  {
                    swift_beginAccess();
                    if (*(a1 + 33) != 1 || (result = sub_1B964C670(), !v4))
                    {
                      swift_beginAccess();
                      if (*(a1 + 34) != 1 || (result = sub_1B964C670(), !v4))
                      {
                        swift_beginAccess();
                        if (*(a1 + 35) != 1 || (result = sub_1B964C670(), !v4))
                        {
                          swift_beginAccess();
                          if (*(a1 + 36) != 1 || (result = sub_1B964C670(), !v4))
                          {
                            swift_beginAccess();
                            if (*(a1 + 37) != 1 || (result = sub_1B964C670(), !v4))
                            {
                              swift_beginAccess();
                              if (*(a1 + 38) != 1 || (result = sub_1B964C670(), !v4))
                              {
                                swift_beginAccess();
                                if (*(a1 + 39) != 1 || (result = sub_1B964C670(), !v4))
                                {
                                  swift_beginAccess();
                                  if (!*(a1 + 40) || (sub_1B9013928(), result = sub_1B964C680(), !v4))
                                  {
                                    swift_beginAccess();
                                    if (*(a1 + 49) != 1 || (result = sub_1B964C670(), !v4))
                                    {
                                      result = swift_beginAccess();
                                      if (*(a1 + 50) == 1)
                                      {
                                        return sub_1B964C670();
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

uint64_t sub_1B8FDB1A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = OUTLINED_FUNCTION_280();
  v8 = v7(v6);
  v9 = OUTLINED_FUNCTION_847(v8);
  if (v9 != *(v4 + v10) && (a4() & 1) == 0)
  {
    return 0;
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_40();
  sub_1B8CD2450(v11, v12, MEMORY[0x1E69AAC10]);
  v13 = OUTLINED_FUNCTION_288();
  return OUTLINED_FUNCTION_656_0(v13, v14) & 1;
}

uint64_t sub_1B8FDB238(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  swift_beginAccess();
  v5 = *(a2 + 16);
  if (*(a2 + 24) == 1)
  {
    switch(v5)
    {
      case 1:
        if (v4 != 1)
        {
          goto LABEL_29;
        }

        goto LABEL_6;
      case 2:
        if (v4 != 2)
        {
          goto LABEL_29;
        }

        goto LABEL_6;
      case 3:
        if (v4 != 3)
        {
          goto LABEL_29;
        }

        goto LABEL_6;
      default:
        if (!v4)
        {
          goto LABEL_6;
        }

        goto LABEL_29;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_29;
  }

LABEL_6:
  swift_beginAccess();
  v6 = *(a1 + 25);
  swift_beginAccess();
  if (v6 != *(a2 + 25) || (swift_beginAccess(), v7 = *(a1 + 26), swift_beginAccess(), v7 != *(a2 + 26)) || (swift_beginAccess(), v8 = *(a1 + 27), swift_beginAccess(), v8 != *(a2 + 27)) || (swift_beginAccess(), v9 = *(a1 + 28), swift_beginAccess(), v9 != *(a2 + 28)) || (swift_beginAccess(), v10 = *(a1 + 29), swift_beginAccess(), v10 != *(a2 + 29)) || (swift_beginAccess(), v11 = *(a1 + 30), swift_beginAccess(), v11 != *(a2 + 30)) || (swift_beginAccess(), v12 = *(a1 + 31), swift_beginAccess(), v12 != *(a2 + 31)) || (swift_beginAccess(), v13 = *(a1 + 32), swift_beginAccess(), v13 != *(a2 + 32)) || (swift_beginAccess(), v14 = *(a1 + 33), swift_beginAccess(), v14 != *(a2 + 33)) || (swift_beginAccess(), v15 = *(a1 + 34), swift_beginAccess(), v15 != *(a2 + 34)) || (swift_beginAccess(), v16 = *(a1 + 35), swift_beginAccess(), v16 != *(a2 + 35)) || (swift_beginAccess(), v17 = *(a1 + 36), swift_beginAccess(), v17 != *(a2 + 36)) || (swift_beginAccess(), v18 = *(a1 + 37), swift_beginAccess(), v18 != *(a2 + 37)) || (swift_beginAccess(), v19 = *(a1 + 38), swift_beginAccess(), v19 != *(a2 + 38)) || (swift_beginAccess(), v20 = *(a1 + 39), swift_beginAccess(), v20 != *(a2 + 39)) || (swift_beginAccess(), v21 = *(a1 + 40), v22 = *(a1 + 48), swift_beginAccess(), !sub_1B8D92198(v21, v22, *(a2 + 40))) || (swift_beginAccess(), v23 = *(a1 + 49), swift_beginAccess(), v23 != *(a2 + 49)))
  {
LABEL_29:
    v25 = 0;
    return v25 & 1;
  }

  swift_beginAccess();
  v24 = *(a1 + 50);
  swift_beginAccess();
  v25 = v24 ^ *(a2 + 50) ^ 1;
  return v25 & 1;
}

uint64_t sub_1B8FDB7A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2450(&qword_1EBAC1D30, type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse, protocol conformance descriptor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8FDB828(uint64_t a1)
{
  v2 = sub_1B8CD2450(&qword_1EBAC0A58, type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse, protocol conformance descriptor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8FDB898(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2450(&qword_1EBAC0A58, type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse, protocol conformance descriptor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse);

  return sub_1B964C5D0();
}

uint64_t sub_1B8FDB924()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC02A0);
  __swift_project_value_buffer(v0, qword_1EBAC02A0);
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
  *v10 = "uuid";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "quParse";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "l1ToL2ResultCount";
  *(v14 + 1) = 17;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "coreSpotlightIndexCount";
  *(v16 + 1) = 23;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "photosRankingInfo";
  *(v18 + 1) = 17;
  v18[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Feedback_V2_EndLocalSearchFeedback.decodeMessage<A>(decoder:)()
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
        sub_1B8FDBCC0(v3, v4, v5, v6);
        break;
      case 4:
      case 5:
        OUTLINED_FUNCTION_12();
        sub_1B964C540();
        break;
      case 6:
        v7 = OUTLINED_FUNCTION_9();
        sub_1B8FDBD74(v7, v8, v9, v10);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B8FDBCC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Feedback_V2_EndLocalSearchFeedback(0);
  type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse(0);
  sub_1B8CD2450(&qword_1EBAC0A58, type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse, protocol conformance descriptor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse);
  return sub_1B964C580();
}

uint64_t sub_1B8FDBD74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Feedback_V2_EndLocalSearchFeedback(0);
  type metadata accessor for Apple_Parsec_Feedback_V2_PhotosRankingInfo(0);
  sub_1B8CD2450(&qword_1EBAC0A50, type metadata accessor for Apple_Parsec_Feedback_V2_PhotosRankingInfo, protocol conformance descriptor for Apple_Parsec_Feedback_V2_PhotosRankingInfo);
  return sub_1B964C580();
}

void Apple_Parsec_Feedback_V2_EndLocalSearchFeedback.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_423_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0758, &qword_1B966F9E0);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_151();
  v15 = type metadata accessor for Apple_Parsec_Feedback_V2_PhotosRankingInfo(v6);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_21();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC0750, &qword_1B966F9D8);
  OUTLINED_FUNCTION_183(v8);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v9);
  v10 = OUTLINED_FUNCTION_77_3();
  UnderstandingParse = type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse(v10);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_212_0();
  if (!*v1 || (sub_1B964C720(), !v0))
  {
    OUTLINED_FUNCTION_1();
    if (!v13 || (sub_1B964C700(), !v0))
    {
      type metadata accessor for Apple_Parsec_Feedback_V2_EndLocalSearchFeedback(0);
      OUTLINED_FUNCTION_743();
      OUTLINED_FUNCTION_178(v2, 1, UnderstandingParse);
      if (v14)
      {
        sub_1B8D9207C(v2, &qword_1EBAC0750, &qword_1B966F9D8);
      }

      else
      {
        OUTLINED_FUNCTION_46_5();
        sub_1B8FAC528();
        sub_1B8CD2450(&qword_1EBAC0A58, type metadata accessor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse, protocol conformance descriptor for Apple_Parsec_Feedback_V2_QueryUnderstandingParse);
        OUTLINED_FUNCTION_709_0();
        sub_1B964C740();
        OUTLINED_FUNCTION_298_0();
        sub_1B8FAC5C8();
        if (v0)
        {
          goto LABEL_18;
        }
      }

      if (!*(v1 + 24) || (sub_1B964C710(), !v0))
      {
        if (!*(v1 + 28) || (sub_1B964C710(), !v0))
        {
          OUTLINED_FUNCTION_715_0();
          OUTLINED_FUNCTION_178(v3, 1, v15);
          if (v14)
          {
            sub_1B8D9207C(v3, &qword_1EBAC0758, &qword_1B966F9E0);
LABEL_17:
            sub_1B964C290();
            goto LABEL_18;
          }

          OUTLINED_FUNCTION_45_4();
          sub_1B8FAC528();
          sub_1B8CD2450(&qword_1EBAC0A50, type metadata accessor for Apple_Parsec_Feedback_V2_PhotosRankingInfo, protocol conformance descriptor for Apple_Parsec_Feedback_V2_PhotosRankingInfo);
          OUTLINED_FUNCTION_709_0();
          sub_1B964C740();
          OUTLINED_FUNCTION_323_0();
          sub_1B8FAC5C8();
          if (!v0)
          {
            goto LABEL_17;
          }
        }
      }
    }
  }

LABEL_18:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

uint64_t sub_1B8FDC248(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2450(&qword_1EBAC1D28, type metadata accessor for Apple_Parsec_Feedback_V2_EndLocalSearchFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_EndLocalSearchFeedback);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8FDC2C8(uint64_t a1)
{
  v2 = sub_1B8CD2450(&qword_1EBAC17A8, type metadata accessor for Apple_Parsec_Feedback_V2_EndLocalSearchFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_EndLocalSearchFeedback);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8FDC338(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2450(&qword_1EBAC17A8, type metadata accessor for Apple_Parsec_Feedback_V2_EndLocalSearchFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_EndLocalSearchFeedback);

  return sub_1B964C5D0();
}

uint64_t sub_1B8FDC3C4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC02B8);
  __swift_project_value_buffer(v0, qword_1EBAC02B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "totalNumberOfAssetsIndexed";
  *(v6 + 8) = 26;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "totalNumberOfAssetsInLibrary";
  *(v10 + 8) = 28;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "totalNumberOfEmbeddingMatchedAssets";
  *(v12 + 1) = 35;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "totalNumberOfMetadataMatchedAssets";
  *(v14 + 1) = 34;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "assetEstimationOffAmount";
  *(v16 + 1) = 24;
  v16[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Feedback_V2_PhotosRankingInfo.decodeMessage<A>(decoder:)()
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
        sub_1B8FDC71C(v3, v4, v5, v6);
        break;
      case 2:
        v15 = OUTLINED_FUNCTION_9();
        sub_1B8FDC784(v15, v16, v17, v18);
        break;
      case 3:
        OUTLINED_FUNCTION_9();
        sub_1B8CEFFD4();
        break;
      case 4:
        v11 = OUTLINED_FUNCTION_9();
        sub_1B8FDC7EC(v11, v12, v13, v14);
        break;
      case 5:
        v7 = OUTLINED_FUNCTION_9();
        sub_1B8FDC854(v7, v8, v9, v10);
        break;
      default:
        continue;
    }
  }
}

uint64_t static Apple_Parsec_Feedback_V2_PhotosRankingInfo.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  v3 = *v2;
  v5 = *v4;
  if (*(v4 + 8) == 1)
  {
    switch(v5)
    {
      case 1:
        if (v3 != 1)
        {
          return 0;
        }

        goto LABEL_6;
      case 2:
        if (v3 != 2)
        {
          return 0;
        }

        goto LABEL_6;
      case 3:
        if (v3 != 3)
        {
          return 0;
        }

        goto LABEL_6;
      case 4:
        if (v3 != 4)
        {
          return 0;
        }

        goto LABEL_6;
      case 5:
        if (v3 != 5)
        {
          return 0;
        }

        goto LABEL_6;
      case 6:
        if (v3 != 6)
        {
          return 0;
        }

        goto LABEL_6;
      case 7:
        if (v3 != 7)
        {
          return 0;
        }

        goto LABEL_6;
      case 8:
        if (v3 != 8)
        {
          return 0;
        }

        goto LABEL_6;
      case 9:
        if (v3 != 9)
        {
          return 0;
        }

        goto LABEL_6;
      case 10:
        if (v3 != 10)
        {
          return 0;
        }

        goto LABEL_6;
      default:
        if (!v3)
        {
          goto LABEL_6;
        }

        return 0;
    }
  }

  if (v3 == v5)
  {
LABEL_6:
    v6 = *(v1 + 16);
    v7 = *(v0 + 16);
    if (*(v0 + 24) == 1)
    {
      switch(v7)
      {
        case 1:
          if (v6 != 1)
          {
            return 0;
          }

          goto LABEL_11;
        case 2:
          if (v6 != 2)
          {
            return 0;
          }

          goto LABEL_11;
        case 3:
          if (v6 != 3)
          {
            return 0;
          }

          goto LABEL_11;
        case 4:
          if (v6 != 4)
          {
            return 0;
          }

          goto LABEL_11;
        case 5:
          if (v6 != 5)
          {
            return 0;
          }

          goto LABEL_11;
        case 6:
          if (v6 != 6)
          {
            return 0;
          }

          goto LABEL_11;
        case 7:
          if (v6 != 7)
          {
            return 0;
          }

          goto LABEL_11;
        case 8:
          if (v6 != 8)
          {
            return 0;
          }

          goto LABEL_11;
        case 9:
          if (v6 != 9)
          {
            return 0;
          }

          goto LABEL_11;
        case 10:
          if (v6 != 10)
          {
            return 0;
          }

          goto LABEL_11;
        default:
          if (!v6)
          {
            goto LABEL_11;
          }

          return 0;
      }
    }

    if (v6 == v7)
    {
LABEL_11:
      v8 = OUTLINED_FUNCTION_492_0();
      if (sub_1B8D92198(v8, v9, v10) && sub_1B8D92198(*(v1 + 48), *(v1 + 56), *(v0 + 48)))
      {
        v11 = OUTLINED_FUNCTION_627_0();
        if (sub_1B8D92198(v11, v12, v13))
        {
          type metadata accessor for Apple_Parsec_Feedback_V2_PhotosRankingInfo(0);
          OUTLINED_FUNCTION_830();
          OUTLINED_FUNCTION_0_40();
          v16 = sub_1B8CD2450(v14, v15, MEMORY[0x1E69AAC10]);
          return OUTLINED_FUNCTION_634(v16) & 1;
        }
      }
    }
  }

  return 0;
}

uint64_t sub_1B8FDCCCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2450(&qword_1EBAC1D20, type metadata accessor for Apple_Parsec_Feedback_V2_PhotosRankingInfo, protocol conformance descriptor for Apple_Parsec_Feedback_V2_PhotosRankingInfo);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8FDCD4C(uint64_t a1)
{
  v2 = sub_1B8CD2450(&qword_1EBAC0A50, type metadata accessor for Apple_Parsec_Feedback_V2_PhotosRankingInfo, protocol conformance descriptor for Apple_Parsec_Feedback_V2_PhotosRankingInfo);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8FDCDBC(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2450(&qword_1EBAC0A50, type metadata accessor for Apple_Parsec_Feedback_V2_PhotosRankingInfo, protocol conformance descriptor for Apple_Parsec_Feedback_V2_PhotosRankingInfo);

  return sub_1B964C5D0();
}

uint64_t sub_1B8FDCE54()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC02D0);
  __swift_project_value_buffer(v0, qword_1EBAC02D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "domain";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "reason";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "code";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "errorCode";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Feedback_V2_Error.decodeMessage<A>(decoder:)()
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
        sub_1B964C530();
        break;
      case 3:
        OUTLINED_FUNCTION_12();
        sub_1B964C510();
        break;
      case 4:
        OUTLINED_FUNCTION_12();
        sub_1B964C560();
        break;
      default:
        continue;
    }
  }
}

uint64_t Apple_Parsec_Feedback_V2_Error.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  OUTLINED_FUNCTION_1();
  if (!v2 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v0))
  {
    OUTLINED_FUNCTION_1();
    if (!v4 || (OUTLINED_FUNCTION_59_5(), result = sub_1B964C700(), !v0))
    {
      if (*(v1 + 32) == 0.0 || (OUTLINED_FUNCTION_26_9(), result = sub_1B964C6F0(), !v0))
      {
        if (!*(v1 + 40) || (OUTLINED_FUNCTION_29(), result = sub_1B964C720(), !v0))
        {
          type metadata accessor for Apple_Parsec_Feedback_V2_Error(0);
          return OUTLINED_FUNCTION_8_1();
        }
      }
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Feedback_V2_Error.== infix(_:_:)(uint64_t a1)
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

  if (*(v2 + 32) != *(v1 + 32))
  {
    return 0;
  }

  OUTLINED_FUNCTION_726();
  if (!v5)
  {
    return 0;
  }

  type metadata accessor for Apple_Parsec_Feedback_V2_Error(0);
  OUTLINED_FUNCTION_764();
  OUTLINED_FUNCTION_0_40();
  v11 = sub_1B8CD2450(v9, v10, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v11) & 1;
}

uint64_t sub_1B8FDD374(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2450(&qword_1EBAC1D18, type metadata accessor for Apple_Parsec_Feedback_V2_Error, protocol conformance descriptor for Apple_Parsec_Feedback_V2_Error);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8FDD3F4(uint64_t a1)
{
  v2 = sub_1B8CD2450(&qword_1EBAB5228, type metadata accessor for Apple_Parsec_Feedback_V2_Error, protocol conformance descriptor for Apple_Parsec_Feedback_V2_Error);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8FDD464(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2450(&qword_1EBAB5228, type metadata accessor for Apple_Parsec_Feedback_V2_Error, protocol conformance descriptor for Apple_Parsec_Feedback_V2_Error);

  return sub_1B964C5D0();
}

uint64_t sub_1B8FDD4F0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC02E8);
  __swift_project_value_buffer(v0, qword_1EBAC02E8);
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
  *v10 = "error";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "underlyingError";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "relatedStartNetworkSearchFeedbackId";
  *(v14 + 1) = 35;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Feedback_V2_ErrorFeedback.decodeMessage<A>(decoder:)()
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
        sub_1B8FDD7F8(v7, v8, v9, v10);
        break;
      case 3:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B8FDD8AC(v3, v4, v5, v6);
        break;
      case 4:
        OUTLINED_FUNCTION_311_0();
        sub_1B964C530();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B8FDD7F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Feedback_V2_ErrorFeedback(0);
  type metadata accessor for Apple_Parsec_Feedback_V2_Error(0);
  sub_1B8CD2450(&qword_1EBAB5228, type metadata accessor for Apple_Parsec_Feedback_V2_Error, protocol conformance descriptor for Apple_Parsec_Feedback_V2_Error);
  return sub_1B964C580();
}

uint64_t sub_1B8FDD8AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Feedback_V2_ErrorFeedback(0);
  type metadata accessor for Apple_Parsec_Feedback_V2_Error(0);
  sub_1B8CD2450(&qword_1EBAB5228, type metadata accessor for Apple_Parsec_Feedback_V2_Error, protocol conformance descriptor for Apple_Parsec_Feedback_V2_Error);
  return sub_1B964C580();
}

void Apple_Parsec_Feedback_V2_ErrorFeedback.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  v4 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAC0760, &qword_1B966F9E8);
  v6 = OUTLINED_FUNCTION_183(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_512_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_725();
  type metadata accessor for Apple_Parsec_Feedback_V2_Error(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v9);
  if (!*v0 || (sub_1B964C720(), !v1))
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_ErrorFeedback(0);
    sub_1B8F1B8B8();
    OUTLINED_FUNCTION_118(v3);
    if (v10)
    {
      sub_1B8D9207C(v3, &unk_1EBAC0760, &qword_1B966F9E8);
    }

    else
    {
      OUTLINED_FUNCTION_11_19();
      sub_1B8FAC528();
      OUTLINED_FUNCTION_561_0();
      sub_1B8CD2450(v11, v12, protocol conformance descriptor for Apple_Parsec_Feedback_V2_Error);
      OUTLINED_FUNCTION_680_0();
      sub_1B964C740();
      OUTLINED_FUNCTION_154_2();
      sub_1B8FAC5C8();
      if (v1)
      {
        goto LABEL_14;
      }
    }

    sub_1B8F1B8B8();
    OUTLINED_FUNCTION_118(v2);
    if (v10)
    {
      sub_1B8D9207C(v2, &unk_1EBAC0760, &qword_1B966F9E8);
    }

    else
    {
      OUTLINED_FUNCTION_11_19();
      sub_1B8FAC528();
      OUTLINED_FUNCTION_561_0();
      sub_1B8CD2450(v13, v14, protocol conformance descriptor for Apple_Parsec_Feedback_V2_Error);
      OUTLINED_FUNCTION_709_0();
      OUTLINED_FUNCTION_729();
      sub_1B964C740();
      v4 = v1;
      OUTLINED_FUNCTION_154_2();
      sub_1B8FAC5C8();
      if (v1)
      {
        goto LABEL_14;
      }
    }

    OUTLINED_FUNCTION_1();
    if (!v15 || (sub_1B964C700(), !v4))
    {
      sub_1B964C290();
    }
  }

LABEL_14:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

uint64_t sub_1B8FDDCF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2450(&qword_1EBAC1D10, type metadata accessor for Apple_Parsec_Feedback_V2_ErrorFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_ErrorFeedback);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8FDDD74(uint64_t a1)
{
  v2 = sub_1B8CD2450(&qword_1EBAB59E8, type metadata accessor for Apple_Parsec_Feedback_V2_ErrorFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_ErrorFeedback);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8FDDDE4(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2450(&qword_1EBAB59E8, type metadata accessor for Apple_Parsec_Feedback_V2_ErrorFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_ErrorFeedback);

  return sub_1B964C5D0();
}

uint64_t sub_1B8FDDE70()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC0300);
  __swift_project_value_buffer(v0, qword_1EBAC0300);
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
  *v10 = "jsonFeedback";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "feedbackType";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

void Apple_Parsec_Feedback_V2_CustomFeedback.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_817();
  if (!OUTLINED_FUNCTION_25_11() || (OUTLINED_FUNCTION_35_6(), sub_1B964C720(), !v3))
  {
    v5 = OUTLINED_FUNCTION_616();
    if (sub_1B8D99EA8(v5, v6) || (OUTLINED_FUNCTION_616(), OUTLINED_FUNCTION_59_5(), sub_1B964C6A0(), !v3))
    {
      if (!*(v4 + 24) || (OUTLINED_FUNCTION_94_4(), sub_1B9013E14(), OUTLINED_FUNCTION_687(), sub_1B964C680(), !v3))
      {
        type metadata accessor for Apple_Parsec_Feedback_V2_CustomFeedback(0);
        OUTLINED_FUNCTION_8_1();
      }
    }
  }

  OUTLINED_FUNCTION_816();
}

uint64_t sub_1B8FDE29C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2450(&qword_1EBAC1D08, type metadata accessor for Apple_Parsec_Feedback_V2_CustomFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_CustomFeedback);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8FDE31C(uint64_t a1)
{
  v2 = sub_1B8CD2450(&qword_1EBAC17E0, type metadata accessor for Apple_Parsec_Feedback_V2_CustomFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_CustomFeedback);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8FDE38C(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2450(&qword_1EBAC17E0, type metadata accessor for Apple_Parsec_Feedback_V2_CustomFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_CustomFeedback);

  return sub_1B964C5D0();
}

uint64_t sub_1B8FDE418()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC0318);
  __swift_project_value_buffer(v0, qword_1EBAC0318);
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
  *v10 = "suggestion";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8FDE630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Feedback_V2_SuggestionEngagementFeedback(0);
  type metadata accessor for Apple_Parsec_Feedback_V2_SearchSuggestionForFeedback(0);
  sub_1B8CD2450(&qword_1EBAC0A98, type metadata accessor for Apple_Parsec_Feedback_V2_SearchSuggestionForFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_SearchSuggestionForFeedback);
  return sub_1B964C580();
}

void Apple_Parsec_Feedback_V2_SuggestionEngagementFeedback.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_423_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAC0768, &qword_1B966F9F0);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_151();
  type metadata accessor for Apple_Parsec_Feedback_V2_SearchSuggestionForFeedback(v5);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_175_3();
  if (!*v1 || (OUTLINED_FUNCTION_480_0(), sub_1B964C720(), !v0))
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_SuggestionEngagementFeedback(0);
    OUTLINED_FUNCTION_715_0();
    OUTLINED_FUNCTION_243_1();
    if (v7)
    {
      sub_1B8D9207C(v2, &unk_1EBAC0768, &qword_1B966F9F0);
LABEL_7:
      OUTLINED_FUNCTION_741();
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_44_6();
    OUTLINED_FUNCTION_424();
    sub_1B8FAC528();
    OUTLINED_FUNCTION_560_0();
    sub_1B8CD2450(v8, v9, protocol conformance descriptor for Apple_Parsec_Feedback_V2_SearchSuggestionForFeedback);
    OUTLINED_FUNCTION_597_0();
    OUTLINED_FUNCTION_729();
    sub_1B964C740();
    OUTLINED_FUNCTION_319_0();
    sub_1B8FAC5C8();
    if (!v0)
    {
      goto LABEL_7;
    }
  }

LABEL_8:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

uint64_t sub_1B8FDE900(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2450(&qword_1EBAC1D00, type metadata accessor for Apple_Parsec_Feedback_V2_SuggestionEngagementFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_SuggestionEngagementFeedback);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8FDE980(uint64_t a1)
{
  v2 = sub_1B8CD2450(&qword_1EBAC17F8, type metadata accessor for Apple_Parsec_Feedback_V2_SuggestionEngagementFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_SuggestionEngagementFeedback);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8FDE9F0(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2450(&qword_1EBAC17F8, type metadata accessor for Apple_Parsec_Feedback_V2_SuggestionEngagementFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_SuggestionEngagementFeedback);

  return sub_1B964C5D0();
}

uint64_t sub_1B8FDEA88()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC0330);
  __swift_project_value_buffer(v0, qword_1EBAC0330);
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
  *v10 = "cardDisappearEvent";
  *(v10 + 1) = 18;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "card";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8FDED5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Feedback_V2_CardViewDisappearFeedback(0);
  type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback(0);
  sub_1B8CD2450(&qword_1EBAC0AB0, type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_CardForFeedback);
  return sub_1B964C580();
}

void Apple_Parsec_Feedback_V2_CardViewDisappearFeedback.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_614();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC06F0, &qword_1B966F978);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_151();
  type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback(v6);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_175_3();
  if (!*v0 || (OUTLINED_FUNCTION_35_6(), sub_1B964C720(), !v1))
  {
    v8 = *(v2 + 8);
    if (!v8 || (OUTLINED_FUNCTION_540_0(v8), sub_1B9013E68(), OUTLINED_FUNCTION_687(), sub_1B964C680(), !v1))
    {
      type metadata accessor for Apple_Parsec_Feedback_V2_CardViewDisappearFeedback(0);
      OUTLINED_FUNCTION_715_0();
      OUTLINED_FUNCTION_243_1();
      if (v9)
      {
        sub_1B8D9207C(v3, &qword_1EBAC06F0, &qword_1B966F978);
LABEL_9:
        OUTLINED_FUNCTION_8_1();
        goto LABEL_10;
      }

      OUTLINED_FUNCTION_6_13();
      OUTLINED_FUNCTION_424();
      sub_1B8FAC528();
      OUTLINED_FUNCTION_559_0();
      sub_1B8CD2450(v10, v11, protocol conformance descriptor for Apple_Parsec_Feedback_V2_CardForFeedback);
      OUTLINED_FUNCTION_597_0();
      OUTLINED_FUNCTION_687();
      sub_1B964C740();
      OUTLINED_FUNCTION_31_12();
      sub_1B8FAC5C8();
      if (!v1)
      {
        goto LABEL_9;
      }
    }
  }

LABEL_10:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

uint64_t sub_1B8FDF05C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2450(&qword_1EBAC1CF8, type metadata accessor for Apple_Parsec_Feedback_V2_CardViewDisappearFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_CardViewDisappearFeedback);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8FDF0DC(uint64_t a1)
{
  v2 = sub_1B8CD2450(&qword_1EBAC1810, type metadata accessor for Apple_Parsec_Feedback_V2_CardViewDisappearFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_CardViewDisappearFeedback);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8FDF14C(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2450(&qword_1EBAC1810, type metadata accessor for Apple_Parsec_Feedback_V2_CardViewDisappearFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_CardViewDisappearFeedback);

  return sub_1B964C5D0();
}

uint64_t sub_1B8FDF1D8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC0348);
  __swift_project_value_buffer(v0, qword_1EBAC0348);
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
  *v10 = "card";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "level";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "fbr";
  *(v14 + 1) = 3;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Feedback_V2_CardViewAppearFeedback.decodeMessage<A>(decoder:)()
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
        v3 = OUTLINED_FUNCTION_9();
        sub_1B8FDF4E0(v3, v4, v5, v6);
        break;
      case 3:
        OUTLINED_FUNCTION_311_0();
        sub_1B964C540();
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

uint64_t sub_1B8FDF4E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Feedback_V2_CardViewAppearFeedback(0);
  type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback(0);
  sub_1B8CD2450(&qword_1EBAC0AB0, type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_CardForFeedback);
  return sub_1B964C580();
}

void Apple_Parsec_Feedback_V2_CardViewAppearFeedback.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_614();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC06F0, &qword_1B966F978);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_77_3();
  type metadata accessor for Apple_Parsec_Feedback_V2_CardForFeedback(v5);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_62();
  if (!OUTLINED_FUNCTION_481_0() || (OUTLINED_FUNCTION_35_6(), sub_1B964C720(), !v0))
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_CardViewAppearFeedback(0);
    OUTLINED_FUNCTION_743();
    OUTLINED_FUNCTION_118(v2);
    if (v7)
    {
      sub_1B8D9207C(v2, &qword_1EBAC06F0, &qword_1B966F978);
    }

    else
    {
      OUTLINED_FUNCTION_6_13();
      OUTLINED_FUNCTION_190_0();
      sub_1B8FAC528();
      OUTLINED_FUNCTION_559_0();
      sub_1B8CD2450(v8, v9, protocol conformance descriptor for Apple_Parsec_Feedback_V2_CardForFeedback);
      OUTLINED_FUNCTION_683_0();
      OUTLINED_FUNCTION_680_0();
      OUTLINED_FUNCTION_687();
      sub_1B964C740();
      OUTLINED_FUNCTION_31_12();
      sub_1B8FAC5C8();
      if (v0)
      {
        goto LABEL_12;
      }
    }

    if (!*(v1 + 8) || (OUTLINED_FUNCTION_29(), sub_1B964C710(), !v0))
    {
      OUTLINED_FUNCTION_1();
      if (!v10 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), !v0))
      {
        OUTLINED_FUNCTION_8_1();
      }
    }
  }

LABEL_12:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

uint64_t sub_1B8FDF7DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2450(&qword_1EBAC1CF0, type metadata accessor for Apple_Parsec_Feedback_V2_CardViewAppearFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_CardViewAppearFeedback);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8FDF85C(uint64_t a1)
{
  v2 = sub_1B8CD2450(&qword_1EBAC1828, type metadata accessor for Apple_Parsec_Feedback_V2_CardViewAppearFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_CardViewAppearFeedback);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8FDF8CC(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2450(&qword_1EBAC1828, type metadata accessor for Apple_Parsec_Feedback_V2_CardViewAppearFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_CardViewAppearFeedback);

  return sub_1B964C5D0();
}

uint64_t sub_1B8FDF964()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC0360);
  __swift_project_value_buffer(v0, qword_1EBAC0360);
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

void sub_1B8FDFBAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    OUTLINED_FUNCTION_233();
    v4 = sub_1B964C3C0();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (v4 == 2)
    {
      sub_1B8FE2F1C();
    }

    else if (v4 == 1)
    {
      sub_1B964C560();
    }
  }
}

uint64_t sub_1B8FDFD18(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2450(&qword_1EBAC1CE8, type metadata accessor for Apple_Parsec_Feedback_V2_VisibleSuggestionsFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_VisibleSuggestionsFeedback);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8FDFD98(uint64_t a1)
{
  v2 = sub_1B8CD2450(&qword_1EBAC1840, type metadata accessor for Apple_Parsec_Feedback_V2_VisibleSuggestionsFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_VisibleSuggestionsFeedback);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8FDFE08(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2450(&qword_1EBAC1840, type metadata accessor for Apple_Parsec_Feedback_V2_VisibleSuggestionsFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_VisibleSuggestionsFeedback);

  return sub_1B964C5D0();
}

uint64_t sub_1B8FDFEA0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC0378);
  __swift_project_value_buffer(v0, qword_1EBAC0378);
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

void Apple_Parsec_Feedback_V2_ResultsReceivedAfterTimeoutFeedback.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_822();
  if (!OUTLINED_FUNCTION_25_11() || (OUTLINED_FUNCTION_35_6(), sub_1B964C720(), !v3))
  {
    OUTLINED_FUNCTION_659_0();
    if (!v4 || (OUTLINED_FUNCTION_872(), OUTLINED_FUNCTION_9_16(), sub_1B8CD2450(v5, v6, protocol conformance descriptor for Apple_Parsec_Feedback_V2_SearchResultForFeedback), OUTLINED_FUNCTION_60_2(), OUTLINED_FUNCTION_687(), sub_1B964C730(), !v3))
    {
      type metadata accessor for Apple_Parsec_Feedback_V2_ResultsReceivedAfterTimeoutFeedback(0);
      v7 = OUTLINED_FUNCTION_184_2();
      OUTLINED_FUNCTION_655_0(v7);
    }
  }

  OUTLINED_FUNCTION_823();
}

uint64_t sub_1B8FE01BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2450(&qword_1EBAC1CE0, type metadata accessor for Apple_Parsec_Feedback_V2_ResultsReceivedAfterTimeoutFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_ResultsReceivedAfterTimeoutFeedback);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8FE023C(uint64_t a1)
{
  v2 = sub_1B8CD2450(&qword_1EBAC1858, type metadata accessor for Apple_Parsec_Feedback_V2_ResultsReceivedAfterTimeoutFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_ResultsReceivedAfterTimeoutFeedback);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8FE02AC(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2450(&qword_1EBAC1858, type metadata accessor for Apple_Parsec_Feedback_V2_ResultsReceivedAfterTimeoutFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_ResultsReceivedAfterTimeoutFeedback);

  return sub_1B964C5D0();
}

uint64_t sub_1B8FE0338()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC0390);
  __swift_project_value_buffer(v0, qword_1EBAC0390);
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
  *v10 = "sections";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

void Apple_Parsec_Feedback_V2_LateSectionsAppendedFeedback.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_822();
  if (!OUTLINED_FUNCTION_25_11() || (OUTLINED_FUNCTION_35_6(), sub_1B964C720(), !v3))
  {
    OUTLINED_FUNCTION_659_0();
    if (!v4 || (type metadata accessor for Apple_Parsec_Feedback_V2_ResultSectionForFeedback(0), OUTLINED_FUNCTION_330_0(), sub_1B8CD2450(v5, v6, protocol conformance descriptor for Apple_Parsec_Feedback_V2_ResultSectionForFeedback), OUTLINED_FUNCTION_60_2(), OUTLINED_FUNCTION_687(), sub_1B964C730(), !v3))
    {
      type metadata accessor for Apple_Parsec_Feedback_V2_LateSectionsAppendedFeedback(0);
      v7 = OUTLINED_FUNCTION_184_2();
      OUTLINED_FUNCTION_655_0(v7);
    }
  }

  OUTLINED_FUNCTION_823();
}

uint64_t sub_1B8FE06D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2450(&qword_1EBAC1CD8, type metadata accessor for Apple_Parsec_Feedback_V2_LateSectionsAppendedFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_LateSectionsAppendedFeedback);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8FE0750(uint64_t a1)
{
  v2 = sub_1B8CD2450(&qword_1EBAC1870, type metadata accessor for Apple_Parsec_Feedback_V2_LateSectionsAppendedFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_LateSectionsAppendedFeedback);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8FE07C0(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2450(&qword_1EBAC1870, type metadata accessor for Apple_Parsec_Feedback_V2_LateSectionsAppendedFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_LateSectionsAppendedFeedback);

  return sub_1B964C5D0();
}

uint64_t sub_1B8FE084C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC03A8);
  __swift_project_value_buffer(v0, qword_1EBAC03A8);
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
  *v10 = "triggerEvent";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8FE0BB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2450(&qword_1EBAC1CD0, type metadata accessor for Apple_Parsec_Feedback_V2_ClearInputFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_ClearInputFeedback);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8FE0C38(uint64_t a1)
{
  v2 = sub_1B8CD2450(&qword_1EBAC1888, type metadata accessor for Apple_Parsec_Feedback_V2_ClearInputFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_ClearInputFeedback);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8FE0CA8(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2450(&qword_1EBAC1888, type metadata accessor for Apple_Parsec_Feedback_V2_ClearInputFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_ClearInputFeedback);

  return sub_1B964C5D0();
}

uint64_t sub_1B8FE0D40()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC03C0);
  __swift_project_value_buffer(v0, qword_1EBAC03C0);
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
  *v10 = "section";
  *(v10 + 1) = 7;
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

uint64_t sub_1B8FE0FAC()
{
  OUTLINED_FUNCTION_697_0();
  while (1)
  {
    OUTLINED_FUNCTION_259();
    result = sub_1B964C3C0();
    if (v1 || (v4 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        v6 = OUTLINED_FUNCTION_44_5();
        v0(v6);
        break;
      case 2:
        v5 = OUTLINED_FUNCTION_44_5();
        v2(v5);
        break;
      case 1:
        OUTLINED_FUNCTION_467();
        sub_1B964C560();
        break;
    }
  }

  return result;
}

uint64_t sub_1B8FE103C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Feedback_V2_SectionEngagementFeedback(0);
  type metadata accessor for Apple_Parsec_Feedback_V2_ResultSectionForFeedback(0);
  sub_1B8CD2450(&qword_1EBAC0920, type metadata accessor for Apple_Parsec_Feedback_V2_ResultSectionForFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_ResultSectionForFeedback);
  return sub_1B964C580();
}

void Apple_Parsec_Feedback_V2_SectionEngagementFeedback.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_614();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAB9178, &unk_1B964D960);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_77_3();
  type metadata accessor for Apple_Parsec_Feedback_V2_ResultSectionForFeedback(v5);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_62();
  if (!OUTLINED_FUNCTION_481_0() || (OUTLINED_FUNCTION_35_6(), sub_1B964C720(), !v0))
  {
    type metadata accessor for Apple_Parsec_Feedback_V2_SectionEngagementFeedback(0);
    OUTLINED_FUNCTION_743();
    OUTLINED_FUNCTION_118(v2);
    if (v7)
    {
      sub_1B8D9207C(v2, &unk_1EBAB9178, &unk_1B964D960);
    }

    else
    {
      OUTLINED_FUNCTION_12_17();
      OUTLINED_FUNCTION_190_0();
      sub_1B8FAC528();
      OUTLINED_FUNCTION_330_0();
      sub_1B8CD2450(v8, v9, protocol conformance descriptor for Apple_Parsec_Feedback_V2_ResultSectionForFeedback);
      OUTLINED_FUNCTION_683_0();
      OUTLINED_FUNCTION_680_0();
      OUTLINED_FUNCTION_687();
      sub_1B964C740();
      OUTLINED_FUNCTION_156_5();
      sub_1B8FAC5C8();
      if (v0)
      {
        goto LABEL_10;
      }
    }

    v10 = *(v1 + 8);
    if (!v10 || (OUTLINED_FUNCTION_540_0(v10), sub_1B9013F10(), OUTLINED_FUNCTION_687(), sub_1B964C680(), !v0))
    {
      OUTLINED_FUNCTION_8_1();
    }
  }

LABEL_10:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

uint64_t sub_1B8FE13AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2450(&qword_1EBAC1CC8, type metadata accessor for Apple_Parsec_Feedback_V2_SectionEngagementFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_SectionEngagementFeedback);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8FE142C(uint64_t a1)
{
  v2 = sub_1B8CD2450(&qword_1EBAC18A0, type metadata accessor for Apple_Parsec_Feedback_V2_SectionEngagementFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_SectionEngagementFeedback);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8FE149C(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2450(&qword_1EBAC18A0, type metadata accessor for Apple_Parsec_Feedback_V2_SectionEngagementFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_SectionEngagementFeedback);

  return sub_1B964C5D0();
}

uint64_t sub_1B8FE1528()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC03D8);
  __swift_project_value_buffer(v0, qword_1EBAC03D8);
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
  *(v5 + v2) = 3;
  *v10 = "headerType";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "sectionId";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Feedback_V2_VisibleSectionHeaderFeedback.decodeMessage<A>(decoder:)()
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

    switch(result)
    {
      case 4:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 3:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B8FE17D8(v3, v4, v5, v6);
        break;
      case 1:
        OUTLINED_FUNCTION_41_7();
        sub_1B964C560();
        break;
    }
  }

  return result;
}

void Apple_Parsec_Feedback_V2_VisibleSectionHeaderFeedback.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_800();
  if (!OUTLINED_FUNCTION_25_11() || (OUTLINED_FUNCTION_35_6(), sub_1B964C720(), !v3))
  {
    if (!*(v4 + 8) || (OUTLINED_FUNCTION_94_4(), sub_1B9013F64(), OUTLINED_FUNCTION_687(), sub_1B964C680(), !v3))
    {
      OUTLINED_FUNCTION_1();
      if (!v5 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), !v3))
      {
        type metadata accessor for Apple_Parsec_Feedback_V2_VisibleSectionHeaderFeedback(0);
        OUTLINED_FUNCTION_8_1();
      }
    }
  }

  OUTLINED_FUNCTION_799();
}

uint64_t sub_1B8FE1998(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2450(&qword_1EBAC1CC0, type metadata accessor for Apple_Parsec_Feedback_V2_VisibleSectionHeaderFeedback, protocol conformance descriptor for Apple_Parsec_Feedback_V2_VisibleSectionHeaderFeedback);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}