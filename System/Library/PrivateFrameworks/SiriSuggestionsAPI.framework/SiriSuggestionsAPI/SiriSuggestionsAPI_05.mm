uint64_t sub_1BFA73028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBD48, &qword_1BFAB49C0);
  v4[6] = swift_task_alloc();
  v5 = sub_1BFAAEEF8();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  type metadata accessor for SiriSuggestions.SuggestionList(0);
  v4[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BFA73150, 0, 0);
}

uint64_t sub_1BFA73150()
{
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_16_5(*(v0 + 24));
  OUTLINED_FUNCTION_30();
  v5 = (v1 + *v1);
  swift_task_alloc();
  OUTLINED_FUNCTION_33();
  *(v0 + 88) = v2;
  *v2 = v3;
  v2[1] = sub_1BFA73260;
  OUTLINED_FUNCTION_200();

  return v5();
}

uint64_t sub_1BFA73260()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  OUTLINED_FUNCTION_8();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1BFA73344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_141();
  OUTLINED_FUNCTION_58();
  sub_1BFA17B2C(*(v10 + 40), *(v10 + 48), &qword_1EBDFBD48, &qword_1BFAB49C0);
  if (OUTLINED_FUNCTION_83_2() == 1)
  {
    sub_1BF9FDD5C(*(v10 + 48), &qword_1EBDFBD48, &qword_1BFAB49C0);
    v11 = SiriSuggestions.SuggestionList.suggestions.getter();
    OUTLINED_FUNCTION_1_7();
    sub_1BFA755F8();
  }

  else
  {
    v12 = *(v10 + 72);
    v13 = OUTLINED_FUNCTION_211();
    v14(v13);
    v15 = SiriSuggestions.SuggestionList.suggestions.getter();
    v16 = swift_task_alloc();
    *(v16 + 16) = v12;
    v11 = sub_1BFA2C3EC(sub_1BFA7677C, v16, v15);

    OUTLINED_FUNCTION_1_7();
    sub_1BFA755F8();
    v17 = OUTLINED_FUNCTION_67();
    v18(v17);
  }

  **(v10 + 16) = v11;

  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_138();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10);
}

uint64_t SiriSuggestionsFacade.getConversationStarters(requestId:deviceState:)()
{
  OUTLINED_FUNCTION_40();
  v0[17] = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB670, &qword_1BFAB1CD0);
  OUTLINED_FUNCTION_60_0(v2);
  v0[18] = OUTLINED_FUNCTION_100();
  v3 = sub_1BFAAE3F8();
  v0[19] = v3;
  OUTLINED_FUNCTION_15(v3);
  v0[20] = v4;
  v0[21] = OUTLINED_FUNCTION_109();
  v0[22] = swift_task_alloc();
  v0[23] = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t SiriSuggestionsFacade.getConversationContinuers(requestId:deviceState:)()
{
  OUTLINED_FUNCTION_40();
  v0[17] = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB670, &qword_1BFAB1CD0);
  OUTLINED_FUNCTION_60_0(v2);
  v0[18] = OUTLINED_FUNCTION_100();
  v3 = sub_1BFAAE3F8();
  v0[19] = v3;
  OUTLINED_FUNCTION_15(v3);
  v0[20] = v4;
  v0[21] = OUTLINED_FUNCTION_109();
  v0[22] = swift_task_alloc();
  v0[23] = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_12();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t SiriSuggestionsFacade.logShown(for:deliveryVehicle:generationId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_2_0();
}

uint64_t sub_1BFA739B0()
{
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_16_5(v1[5]);
  OUTLINED_FUNCTION_39(*(v0 + 16));
  OUTLINED_FUNCTION_30();
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  v1[6] = v3;
  *v3 = v1;
  v3[1] = sub_1BFA4C9C8;
  OUTLINED_FUNCTION_53(v1[2]);
  OUTLINED_FUNCTION_216();

  return v5();
}

uint64_t SiriSuggestionsFacade.getNextSuggestions(requestId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_2_0();
}

uint64_t sub_1BFA73ADC()
{
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_16_5(*(v1 + 40));
  OUTLINED_FUNCTION_144(*(v0 + 24));
  OUTLINED_FUNCTION_30();
  v6 = (v2 + *v2);
  swift_task_alloc();
  OUTLINED_FUNCTION_33();
  *(v1 + 48) = v3;
  *v3 = v4;
  v3[1] = sub_1BFA4C9C8;
  OUTLINED_FUNCTION_216();

  return v6();
}

uint64_t SiriSuggestionsFacade.getNextSuggestions(for:relatedIds:extraStateStoreProperties:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return OUTLINED_FUNCTION_2_0();
}

uint64_t sub_1BFA73C0C()
{
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_16_5(v2[7]);
  OUTLINED_FUNCTION_144(*(v1 + 24));
  OUTLINED_FUNCTION_30();
  v12 = (v3 + *v3);
  swift_task_alloc();
  OUTLINED_FUNCTION_33();
  v2[8] = v4;
  *v4 = v5;
  v4[1] = sub_1BFA5071C;
  v6 = v2[5];
  v7 = v2[6];
  v8 = v2[3];
  v9 = v2[4];
  v10 = v2[2];

  return v12(v10, v8, v9, v6, v7, v0, v1);
}

uint64_t SiriSuggestionsFacade.submitAsync(for:propertyKey:propertyValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 56) = a4;
  *(v5 + 64) = v4;
  *(v5 + 40) = a2;
  *(v5 + 48) = a3;
  *(v5 + 72) = *a1;
  *(v5 + 33) = *(a1 + 16);
  return OUTLINED_FUNCTION_2_0();
}

uint64_t sub_1BFA73D50()
{
  OUTLINED_FUNCTION_72();
  v1 = *(v0 + 33);
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);
  v4 = *(v0 + 64);
  v5 = v4[5];
  v6 = v4[6];
  OUTLINED_FUNCTION_16_1(v4 + 2);
  *(v0 + 16) = v3;
  *(v0 + 24) = v2;
  *(v0 + 32) = v1;
  v7 = *(*(v6 + 16) + 8);
  OUTLINED_FUNCTION_30();
  v14 = (v8 + *v8);
  v9 = swift_task_alloc();
  *(v0 + 88) = v9;
  *v9 = v0;
  v9[1] = sub_1BFA73EA0;
  v10 = *(v0 + 48);
  v11 = *(v0 + 56);
  v12 = *(v0 + 40);

  return v14(v0 + 16, v12, v10, v11, v5, v7);
}

uint64_t sub_1BFA73EA0()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_27_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_8();
  *v5 = v4;
  *(v6 + 96) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_78();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_85();

    return v10();
  }
}

uint64_t SiriSuggestionsFacade.submitAsync(for:propertyKey:propertyValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[12] = a5;
  v6[13] = v5;
  v6[10] = a3;
  v6[11] = a4;
  v6[8] = a1;
  v6[9] = a2;
  return OUTLINED_FUNCTION_2_0();
}

uint64_t sub_1BFA73FD0()
{
  OUTLINED_FUNCTION_72();
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = *(v1 + 48);
  OUTLINED_FUNCTION_16_1((v1 + 16));
  v4 = *(v2 + 40);
  v12 = *(v2 + 24);
  v5 = OUTLINED_FUNCTION_120_0();
  __swift_project_boxed_opaque_existential_1(v5, v6);
  *(v0 + 40) = v12;
  *(v0 + 56) = v4;
  __swift_allocate_boxed_opaque_existential_1Tm_0((v0 + 16));
  OUTLINED_FUNCTION_54();
  (*(v7 + 16))();
  OUTLINED_FUNCTION_39(*(v3 + 16));
  OUTLINED_FUNCTION_30();
  v13 = (v8 + *v8);
  v9 = swift_task_alloc();
  *(v0 + 112) = v9;
  *v9 = v0;
  v9[1] = sub_1BFA108C4;
  v10 = OUTLINED_FUNCTION_53(*(v0 + 64));

  return v13(v10);
}

uint64_t sub_1BFA74174()
{
  OUTLINED_FUNCTION_51();
  OUTLINED_FUNCTION_16_5(*(v1 + 16));
  OUTLINED_FUNCTION_144(*(v0 + 24));
  OUTLINED_FUNCTION_30();
  v6 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 24) = v3;
  *v3 = v1;
  OUTLINED_FUNCTION_45(v3);
  v4 = OUTLINED_FUNCTION_46();

  return v6(v4);
}

uint64_t sub_1BFA7427C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1BF9FDF08;

  return SiriSuggestionsFacade.getNextSuggestions(requestId:)(a1, a2, a3);
}

uint64_t sub_1BFA74330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1BF9FDF08;

  return SiriSuggestionsFacade.getNextSuggestions(for:relatedIds:extraStateStoreProperties:)(a1, a2, a3, a4, a5);
}

uint64_t sub_1BFA743FC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BF9FDF08;

  return SiriSuggestionsFacade.refreshService()();
}

uint64_t sub_1BFA7448C()
{
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_51();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_41(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_45(v1);
  OUTLINED_FUNCTION_112();

  return SiriSuggestionsFacade.submitAsync(for:propertyKey:propertyValue:)(v3, v4, v5, v6);
}

uint64_t sub_1BFA74538()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BF9FDF08;

  return SiriSuggestionsFacade.flush(for:)();
}

uint64_t sub_1BFA745E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1BF9FDF08;

  return SiriSuggestionsFacade.logShown(for:deliveryVehicle:generationId:)(a1, a2, a3);
}

uint64_t sub_1BFA74690()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BF9FDF08;

  return SiriSuggestionsFacade.warmup()();
}

uint64_t sub_1BFA74720()
{
  OUTLINED_FUNCTION_43();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_41(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_45(v1);
  v3 = OUTLINED_FUNCTION_60_1();

  return SiriSuggestionsFacade.submitEngagement(for:with:)(v3, v4);
}

uint64_t SuggestionErrors.hashValue.getter()
{
  v1 = *v0;
  sub_1BFAAFF98();
  MEMORY[0x1BFB611E0](v1);
  return sub_1BFAAFFE8();
}

uint64_t sub_1BFA7484C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBD70, &qword_1BFAB4A08);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - v2;
  v4 = type metadata accessor for InAppSuggestions(0);
  __swift_allocate_value_buffer(v4, qword_1EBDFBD30);
  v5 = __swift_project_value_buffer(v4, qword_1EBDFBD30);
  type metadata accessor for SiriSuggestions.SuggestionList(0);
  sub_1BFAAFB18();
  result = (*(v1 + 32))(v5, v3, v0);
  v7 = (v5 + *(v4 + 20));
  *v7 = nullsub_1;
  v7[1] = 0;
  v8 = (v5 + *(v4 + 24));
  *v8 = &unk_1BFAB5048;
  v8[1] = 0;
  return result;
}

uint64_t sub_1BFA749C4()
{
  OUTLINED_FUNCTION_43();
  sub_1BFA770B4();
  swift_allocError();
  *v0 = 2;
  swift_willThrow();
  OUTLINED_FUNCTION_85();

  return v1();
}

uint64_t InAppSuggestions.suggestionsStream.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBD70, &qword_1BFAB4A08);
  OUTLINED_FUNCTION_0();
  v0 = OUTLINED_FUNCTION_96();

  return v1(v0);
}

uint64_t sub_1BFA74B34(void (*a1)(void))
{
  v1 = (a1)(0);
  OUTLINED_FUNCTION_54_3(*(v1 + 20));

  return OUTLINED_FUNCTION_96();
}

uint64_t sub_1BFA74BDC(void (*a1)(void))
{
  v1 = (a1)(0);
  OUTLINED_FUNCTION_54_3(*(v1 + 24));

  return OUTLINED_FUNCTION_96();
}

uint64_t AssistantEngineSuggestions.renderedCallback.getter()
{
  v0 = type metadata accessor for AssistantEngineSuggestions(0);
  OUTLINED_FUNCTION_54_3(*(v0 + 28));

  return OUTLINED_FUNCTION_96();
}

uint64_t SiriAutoCompleteSuggestion.iconInfo.getter()
{
  OUTLINED_FUNCTION_195();
  sub_1BFAAF138();
  OUTLINED_FUNCTION_0();
  v0 = OUTLINED_FUNCTION_107_0();

  return v1(v0);
}

uint64_t SiriAutoCompleteSuggestion.uuidIdentifier.getter()
{
  OUTLINED_FUNCTION_195();
  sub_1BFAAE3F8();
  OUTLINED_FUNCTION_0();
  v0 = OUTLINED_FUNCTION_107_0();

  return v1(v0);
}

uint64_t SiriAutoCompleteSuggestion.appBundleId.getter()
{
  v0 = type metadata accessor for SiriAutoCompleteSuggestion(0);
  OUTLINED_FUNCTION_54_3(*(v0 + 32));

  return OUTLINED_FUNCTION_96();
}

uint64_t SiriAutoCompleteSuggestion.loggingIdentifier.getter()
{
  v0 = type metadata accessor for SiriAutoCompleteSuggestion(0);
  OUTLINED_FUNCTION_54_3(*(v0 + 36));

  return OUTLINED_FUNCTION_96();
}

uint64_t SiriAutoCompleteSuggestion.source.getter()
{
  OUTLINED_FUNCTION_195();
  sub_1BFAAF398();
  OUTLINED_FUNCTION_0();
  v0 = OUTLINED_FUNCTION_107_0();

  return v1(v0);
}

uint64_t SiriAutoCompleteSuggestion.zkwGenerationId.getter()
{
  v0 = type metadata accessor for SiriAutoCompleteSuggestion(0);
  OUTLINED_FUNCTION_54_3(*(v0 + 48));

  return OUTLINED_FUNCTION_96();
}

uint64_t SiriAutoCompleteSuggestion.suggestionType.getter()
{
  OUTLINED_FUNCTION_195();
  sub_1BFAAEB28();
  OUTLINED_FUNCTION_0();
  v0 = OUTLINED_FUNCTION_107_0();

  return v1(v0);
}

id HintsSuggestionsUI.snippet.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

void *HintsSuggestionsUI.aceView.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

void sub_1BFA75028(void *a1, void *a2, uint64_t a3)
{
  if (a3)
  {
  }
}

uint64_t sub_1BFA7507C()
{
  OUTLINED_FUNCTION_66();
  v0 = sub_1BFAAE3F8();
  OUTLINED_FUNCTION_15(v0);
  OUTLINED_FUNCTION_167();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_77(v1);
  *v2 = v3;
  v2[1] = sub_1BF9FDF08;
  OUTLINED_FUNCTION_61();

  return sub_1BFA61F80(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1BFA751D0(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_1BFAAFD18();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_1BFA75220()
{
  v0 = sub_1BFAAED58();
  OUTLINED_FUNCTION_15(v0);
  v1 = sub_1BFAAE3F8();
  OUTLINED_FUNCTION_15(v1);
  v2 = OUTLINED_FUNCTION_60_1();

  return sub_1BFA66620(v2, v3, v4, v5, v6);
}

uint64_t sub_1BFA7531C()
{
  OUTLINED_FUNCTION_43();
  v1 = sub_1BFAAED58();
  OUTLINED_FUNCTION_60_0(v1);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_41(v5);
  *v6 = v7;
  v6[1] = sub_1BF9FDF08;

  return sub_1BFA67528(v4, v0 + v3);
}

uint64_t sub_1BFA75428(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_184();
  v4(v3);
  OUTLINED_FUNCTION_14();
  v5 = OUTLINED_FUNCTION_96();
  v6(v5);
  return a2;
}

uint64_t sub_1BFA7547C()
{
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_51();
  v0 = OUTLINED_FUNCTION_55_3();
  v1 = type metadata accessor for InAppSuggestions(v0);
  OUTLINED_FUNCTION_15(v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBD48, &qword_1BFAB49C0);
  OUTLINED_FUNCTION_15(v2);
  v3 = sub_1BFAAED58();
  OUTLINED_FUNCTION_60_0(v3);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_77(v4);
  *v5 = v6;
  v5[1] = sub_1BF9FDF08;
  OUTLINED_FUNCTION_112();

  return sub_1BFA6913C(v7, v8, v9, v10);
}

uint64_t sub_1BFA755F8()
{
  v1 = OUTLINED_FUNCTION_101_0();
  v2(v1);
  OUTLINED_FUNCTION_1();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_1BFA75648(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_184();
  v4(v3);
  OUTLINED_FUNCTION_14();
  v5 = OUTLINED_FUNCTION_96();
  v6(v5);
  return a2;
}

uint64_t sub_1BFA7569C()
{
  v1 = type metadata accessor for InAppSuggestions(0);
  OUTLINED_FUNCTION_15(v1);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = type metadata accessor for SiriSuggestions.Suggestion(0);
  OUTLINED_FUNCTION_15(v6);
  v8 = (v3 + v5 + *(v7 + 80)) & ~*(v7 + 80);
  v10 = *(v9 + 64);
  v11 = sub_1BFAAE3F8();
  OUTLINED_FUNCTION_60_0(v11);
  v13 = v0 + ((v8 + v10 + *(v12 + 80)) & ~*(v12 + 80));

  return sub_1BFA69F18(v0 + v3, v0 + v8, v13);
}

uint64_t sub_1BFA757D0()
{
  v0 = OUTLINED_FUNCTION_101_0();
  v1 = type metadata accessor for SiriSuggestions.SuggestionList(v0);
  OUTLINED_FUNCTION_15(v1);
  v2 = OUTLINED_FUNCTION_128_0();

  return sub_1BFA6B4BC(v2, v3, v4, v5, v6);
}

uint64_t objectdestroy_34Tm()
{
  type metadata accessor for SiriSuggestions.SuggestionList(0);
  OUTLINED_FUNCTION_60();

  OUTLINED_FUNCTION_159();
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_1();
  (*(v2 + 8))(v1 + v0);
  v3 = OUTLINED_FUNCTION_235();
  if (!OUTLINED_FUNCTION_100_0(v3))
  {
    OUTLINED_FUNCTION_54();
    v4 = OUTLINED_FUNCTION_207();
    v5(v4);
  }

  v6 = OUTLINED_FUNCTION_129_0();

  return MEMORY[0x1EEE6BDD0](v6, v7, v8);
}

uint64_t sub_1BFA75964()
{
  v0 = OUTLINED_FUNCTION_101_0();
  v1 = type metadata accessor for SiriSuggestions.SuggestionList(v0);
  OUTLINED_FUNCTION_15(v1);
  v2 = OUTLINED_FUNCTION_128_0();

  return sub_1BFA6D480(v2, v3, v4, v5, v6);
}

uint64_t sub_1BFA75A2C()
{
  OUTLINED_FUNCTION_101_0();
  v0 = sub_1BFAAE3F8();
  OUTLINED_FUNCTION_60_0(v0);
  v1 = OUTLINED_FUNCTION_183();

  return sub_1BFA70DDC(v1, v2, v3);
}

uint64_t objectdestroy_18Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  OUTLINED_FUNCTION_2_3();
  v4 = v3;
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);

  (*(v4 + 8))(v1 + v5, v2);
  v6 = OUTLINED_FUNCTION_129_0();

  return MEMORY[0x1EEE6BDD0](v6, v7, v8);
}

uint64_t sub_1BFA75B70(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v3 = OUTLINED_FUNCTION_101_0();
  v5 = v4(v3);
  OUTLINED_FUNCTION_60_0(v5);
  v6 = OUTLINED_FUNCTION_183();

  return a3(v6);
}

uint64_t sub_1BFA75BE4()
{
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_51();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBD48, &qword_1BFAB49C0);
  OUTLINED_FUNCTION_60_0(v1);
  swift_task_alloc();
  OUTLINED_FUNCTION_33();
  *(v0 + 16) = v2;
  *v2 = v3;
  v2[1] = sub_1BF9FDF08;
  OUTLINED_FUNCTION_36_0();
  OUTLINED_FUNCTION_112();

  return sub_1BFA73028(v4, v5, v6, v7);
}

unint64_t sub_1BFA75CC8()
{
  result = qword_1EBDFBD80;
  if (!qword_1EBDFBD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFBD80);
  }

  return result;
}

unint64_t sub_1BFA75D20()
{
  result = qword_1EBDFBD88;
  if (!qword_1EBDFBD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFBD88);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TypingSessionEndReason(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1BFA75E58(uint64_t a1)
{
  result = sub_1BFAAEAC8();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SuggestionErrors(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_1BFA76024(uint64_t a1)
{
  sub_1BFA760A8(319);
  if (v1 <= 0x3F)
  {
    sub_1BFA76124();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1BFA760A8(uint64_t a1)
{
  if (!qword_1EDCC6FC8)
  {
    type metadata accessor for SiriSuggestions.SuggestionList(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDFBA40, &qword_1BFAB4880);
    v1 = sub_1BFAAFB28();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDCC6FC8);
    }
  }
}

unint64_t sub_1BFA76124()
{
  result = qword_1EDCC6FB8;
  if (!qword_1EDCC6FB8)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1EDCC6FB8);
  }

  return result;
}

unint64_t sub_1BFA761BC(uint64_t a1)
{
  result = type metadata accessor for SiriSuggestions.Suggestion(319);
  if (v2 <= 0x3F)
  {
    result = sub_1BFA76124();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_92Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OUTLINED_FUNCTION_101_0();
  v7(v6);
  OUTLINED_FUNCTION_18();
  if (*(v9 + 84) != a2)
  {
    return OUTLINED_FUNCTION_84_1(*(v3 + *(a3 + 20)));
  }

  return __swift_getEnumTagSinglePayload(v3, a2, v8);
}

void __swift_store_extra_inhabitant_index_93Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = OUTLINED_FUNCTION_184();
  v9(v8);
  OUTLINED_FUNCTION_18();
  if (*(v10 + 84) == a3)
  {
    v11 = OUTLINED_FUNCTION_210();

    __swift_storeEnumTagSinglePayload(v11, a2, a2, v12);
  }

  else
  {
    *(v4 + *(a4 + 20)) = (a2 - 1);
  }
}

unint64_t sub_1BFA763A4(uint64_t a1)
{
  result = type metadata accessor for SiriSuggestions.SuggestionList(319);
  if (v2 <= 0x3F)
  {
    result = sub_1BFA76124();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1BFA76458(uint64_t a1)
{
  v1 = sub_1BFAAF138();
  if (v2 <= 0x3F)
  {
    v1 = sub_1BFAAE3F8();
    if (v3 <= 0x3F)
    {
      sub_1BFA20EF4();
      v1 = v4;
      if (v5 <= 0x3F)
      {
        v6 = sub_1BFAAF398();
        if (v7 > 0x3F)
        {
          return v6;
        }

        sub_1BFA76574(319);
        if (v8 > 0x3F)
        {
          return v6;
        }

        else
        {
          v1 = sub_1BFAAEB28();
          if (v9 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v1;
}

void sub_1BFA76574(uint64_t a1)
{
  if (!qword_1EDCC84F0)
  {
    sub_1BFAAF758();
    v1 = sub_1BFAAFBA8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDCC84F0);
    }
  }
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1BFA765E0(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BFA76620(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1BFA7668C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BFA766CC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 40))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BFA76720(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1BFA7679C()
{
  OUTLINED_FUNCTION_141();
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_101_0();
  v1 = sub_1BFAAE3F8();
  OUTLINED_FUNCTION_15(v1);
  OUTLINED_FUNCTION_122_0();
  swift_task_alloc();
  OUTLINED_FUNCTION_33();
  *(v0 + 16) = v2;
  *v2 = v3;
  v2[1] = sub_1BF9FDF08;
  OUTLINED_FUNCTION_36_0();
  OUTLINED_FUNCTION_138();

  return sub_1BFA718F0(v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1BFA76894()
{
  OUTLINED_FUNCTION_141();
  OUTLINED_FUNCTION_58();
  v0 = OUTLINED_FUNCTION_55_3();
  v1 = type metadata accessor for SiriAutoCompleteSuggestion(v0);
  OUTLINED_FUNCTION_15(v1);
  v2 = sub_1BFAAE3F8();
  OUTLINED_FUNCTION_60_0(v2);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_77(v3);
  *v4 = v5;
  v4[1] = sub_1BF9FDF08;
  OUTLINED_FUNCTION_36_0();
  OUTLINED_FUNCTION_138();

  return sub_1BFA71070(v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1BFA769BC()
{
  OUTLINED_FUNCTION_141();
  OUTLINED_FUNCTION_58();
  v1 = OUTLINED_FUNCTION_101_0();
  v2 = type metadata accessor for SiriSuggestions.SuggestionList(v1);
  OUTLINED_FUNCTION_15(v2);
  OUTLINED_FUNCTION_122_0();
  swift_task_alloc();
  OUTLINED_FUNCTION_33();
  *(v0 + 16) = v3;
  *v3 = v4;
  v3[1] = sub_1BF9FDE28;
  OUTLINED_FUNCTION_36_0();
  OUTLINED_FUNCTION_138();

  return sub_1BFA6EC8C(v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1BFA76AB4()
{
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_72();
  v0 = OUTLINED_FUNCTION_55_3();
  v1 = type metadata accessor for SiriSuggestions.SuggestionList(v0);
  OUTLINED_FUNCTION_15(v1);
  v2 = type metadata accessor for SiriSuggestions.Suggestion(0);
  OUTLINED_FUNCTION_15(v2);
  OUTLINED_FUNCTION_122_0();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_77(v3);
  *v4 = v5;
  v4[1] = sub_1BF9FDE28;
  OUTLINED_FUNCTION_36_0();
  OUTLINED_FUNCTION_25_1();

  return sub_1BFA6D730(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_1BFA76C04()
{
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_72();
  v0 = OUTLINED_FUNCTION_55_3();
  v1 = type metadata accessor for SiriSuggestions.SuggestionList(v0);
  OUTLINED_FUNCTION_15(v1);
  OUTLINED_FUNCTION_167();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_77(v2);
  *v3 = v4;
  v3[1] = sub_1BF9FDF08;
  OUTLINED_FUNCTION_36_0();
  OUTLINED_FUNCTION_25_1();

  return sub_1BFA6B6B8(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_1BFA76D14()
{
  OUTLINED_FUNCTION_58();
  v1 = OUTLINED_FUNCTION_55_3();
  v2 = type metadata accessor for SiriSuggestions.Suggestion(v1);
  OUTLINED_FUNCTION_15(v2);
  v3 = sub_1BFAAED58();
  OUTLINED_FUNCTION_15(v3);
  v4 = sub_1BFAAE3F8();
  OUTLINED_FUNCTION_60_0(v4);
  v5 = *(v0 + 32);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_77(v6);
  *v7 = v8;
  v7[1] = sub_1BF9FDF08;
  OUTLINED_FUNCTION_36_0();

  return sub_1BFA66E2C(v9, v10, v11, v5, v12, v13, v14);
}

uint64_t sub_1BFA76EA0()
{
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_55_3();
  v0 = sub_1BFAAED58();
  OUTLINED_FUNCTION_15(v0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBDA0, "TB");
  OUTLINED_FUNCTION_15(v1);
  v2 = sub_1BFAAE3F8();
  OUTLINED_FUNCTION_60_0(v2);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_77(v3);
  *v4 = v5;
  v4[1] = sub_1BF9FDF08;
  OUTLINED_FUNCTION_36_0();
  OUTLINED_FUNCTION_25_1();

  return sub_1BFA652FC(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_1BFA77044(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB570, &qword_1BFAB1F50);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BFA770B4()
{
  result = qword_1EBDFBDB0;
  if (!qword_1EBDFBDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFBDB0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_32_5(uint64_t a1, uint64_t a2)
{

  return sub_1BFAAF258();
}

uint64_t OUTLINED_FUNCTION_52_4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 56) + 48 * (__clz(v2) | (a2 << 6));

  return sub_1BFA27F7C(v5, v3 + 32);
}

uint64_t OUTLINED_FUNCTION_63_3()
{
  *(v2 + 80) = v0;
  *(v2 + 88) = v1;
  sub_1BFA17D30((v2 + 32), (v2 + 96));
  __swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40));
}

void OUTLINED_FUNCTION_74_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_81_1()
{

  return swift_slowAlloc();
}

BOOL OUTLINED_FUNCTION_82_1(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_83_2()
{

  return __swift_getEnumTagSinglePayload(v0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_100_0(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v2 + v1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_103_0(uint64_t a1, uint64_t a2)
{

  return sub_1BFAAF258();
}

uint64_t OUTLINED_FUNCTION_104_0()
{

  return sub_1BFAAF968();
}

uint64_t OUTLINED_FUNCTION_105_0()
{

  return sub_1BFA755F8();
}

uint64_t OUTLINED_FUNCTION_106_0()
{
}

uint64_t OUTLINED_FUNCTION_109_0(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_113_0(uint64_t a1)
{
  *(v1 + 696) = *(a1 + 32);
}

uint64_t OUTLINED_FUNCTION_115_0(float a1)
{
  *v1 = a1;
}

uint64_t OUTLINED_FUNCTION_118_0(uint64_t a1, uint64_t a2)
{

  return sub_1BFAAF248();
}

uint64_t OUTLINED_FUNCTION_135_0(uint64_t a1)
{
}

BOOL OUTLINED_FUNCTION_136_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_137()
{

  return __swift_getEnumTagSinglePayload(v1, 1, v0);
}

void OUTLINED_FUNCTION_153(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v5, a4, v4, 2u);
}

uint64_t OUTLINED_FUNCTION_154()
{

  return sub_1BFAAF688();
}

uint64_t OUTLINED_FUNCTION_155()
{

  return sub_1BFAAF688();
}

unint64_t OUTLINED_FUNCTION_157(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  return sub_1BF9F88A8(v4, v5, va);
}

uint64_t OUTLINED_FUNCTION_159()
{
}

uint64_t OUTLINED_FUNCTION_160()
{
  __swift_destroy_boxed_opaque_existential_2Tm(v0);

  return sub_1BFAAE3F8();
}

uint64_t OUTLINED_FUNCTION_169@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  a6 = v7;
  a7 = a2;
  a3 = a1;

  return SiriSuggestionsFacade.__allocating_init(clientProvider:flagProvider:)(va, &a3);
}

uint64_t OUTLINED_FUNCTION_185()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_186(uint64_t a1)
{

  return sub_1BFAAFEE8();
}

char *OUTLINED_FUNCTION_187()
{

  return sub_1BFA2DC58(0, v0, 0);
}

uint64_t OUTLINED_FUNCTION_188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  __swift_destroy_boxed_opaque_existential_2Tm((v10 + 56));
  *v11 = a10;
  sub_1BF9FA474((v10 + 96), (v11 + 1));

  return type metadata accessor for SiriSuggestions.SuggestionList(0);
}

BOOL OUTLINED_FUNCTION_189(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_190(uint64_t a1, uint64_t a2)
{

  return sub_1BFAAF248();
}

uint64_t OUTLINED_FUNCTION_191()
{

  return sub_1BFAAF688();
}

uint64_t OUTLINED_FUNCTION_192()
{
}

uint64_t OUTLINED_FUNCTION_193()
{

  return swift_slowAlloc();
}

BOOL OUTLINED_FUNCTION_194()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_195()
{

  return type metadata accessor for SiriAutoCompleteSuggestion(0);
}

uint64_t OUTLINED_FUNCTION_227()
{

  return sub_1BFA17B2C(v2, v0 + v4, v1, v3);
}

uint64_t OUTLINED_FUNCTION_228(uint64_t a1, uint64_t a2)
{

  return sub_1BFAAF248();
}

void *OUTLINED_FUNCTION_229()
{
  v2 = *(v0 + 16);
  v3 = *(v2 + 88);

  return __swift_project_boxed_opaque_existential_1((v2 + 64), v3);
}

uint64_t OUTLINED_FUNCTION_231()
{
}

uint64_t OUTLINED_FUNCTION_234()
{
}

uint64_t OUTLINED_FUNCTION_235()
{

  return sub_1BFAAED08();
}

uint64_t OUTLINED_FUNCTION_237()
{
}

uint64_t PresentationContext.init(displayAllSuggestions:invocationType:requestId:dialogContextId:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _BYTE *a6@<X8>)
{
  v12 = type metadata accessor for PresentationContext(0);
  v13 = v12[6];
  sub_1BFAAE3F8();
  OUTLINED_FUNCTION_86_2();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  *a6 = a1;
  v18 = v12[5];
  sub_1BFAAEEA8();
  OUTLINED_FUNCTION_0();
  (*(v19 + 32))(&a6[v18], a2);
  result = sub_1BFA77044(a3, &a6[v13]);
  v21 = &a6[v12[7]];
  *v21 = a4;
  v21[1] = a5;
  a6[v12[8]] = 0;
  return result;
}

uint64_t type metadata accessor for PresentationContext(uint64_t a1)
{
  result = qword_1EDCC75D8;
  if (!qword_1EDCC75D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PresentationContext.invocationType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PresentationContext(0) + 20);
  sub_1BFAAEEA8();
  OUTLINED_FUNCTION_0();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t PresentationContext.requestId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PresentationContext(0) + 24);

  return sub_1BFA77EC0(v3, a1);
}

uint64_t sub_1BFA77EC0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB570, &qword_1BFAB1F50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t PresentationContext.requestId.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for PresentationContext(0) + 24);

  return sub_1BFA77044(a1, v3);
}

uint64_t PresentationContext.dialogContextId.getter()
{
  v1 = *(v0 + *(type metadata accessor for PresentationContext(0) + 28));

  return v1;
}

uint64_t PresentationContext.invokedBefore.setter(char a1)
{
  result = type metadata accessor for PresentationContext(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t PresentationContext.init(from:requestId:invokedBefore:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, _BYTE *a4@<X8>)
{
  v8 = *a1;
  v9 = type metadata accessor for PresentationContext(0);
  v10 = v9[5];
  sub_1BFAAEEA8();
  OUTLINED_FUNCTION_0();
  (*(v11 + 16))(&a4[v10], &a1[v10]);
  v12 = &a1[v9[7]];
  v14 = *v12;
  v13 = *(v12 + 1);

  sub_1BFA7825C(a1);
  v15 = v9[6];
  sub_1BFAAE3F8();
  OUTLINED_FUNCTION_86_2();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
  *a4 = v8;
  result = sub_1BFA77044(a2, &a4[v15]);
  v21 = &a4[v9[7]];
  *v21 = v14;
  v21[1] = v13;
  a4[v9[8]] = a3;
  return result;
}

uint64_t PresentationContext.init(displayAllSuggestions:invocationType:requestId:dialogContextId:invokedBefore:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, _BYTE *a7@<X8>)
{
  v14 = type metadata accessor for PresentationContext(0);
  v15 = v14[6];
  sub_1BFAAE3F8();
  OUTLINED_FUNCTION_86_2();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
  *a7 = a1;
  v20 = v14[5];
  sub_1BFAAEEA8();
  OUTLINED_FUNCTION_0();
  (*(v21 + 32))(&a7[v20], a2);
  result = sub_1BFA77044(a3, &a7[v15]);
  v23 = &a7[v14[7]];
  *v23 = a4;
  v23[1] = a5;
  a7[v14[8]] = a6;
  return result;
}

uint64_t sub_1BFA7825C(uint64_t a1)
{
  v2 = type metadata accessor for PresentationContext(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static PresentationContext.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = sub_1BFAAE3F8();
  OUTLINED_FUNCTION_2_3();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2();
  v10 = v9 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB570, &qword_1BFAB1F50);
  OUTLINED_FUNCTION_73();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v34 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBDB8, &qword_1BFAB5058);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_73();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v34 - v16;
  if (*a1 != *a2)
  {
    goto LABEL_12;
  }

  v18 = type metadata accessor for PresentationContext(0);
  if ((sub_1BFAAEE98() & 1) == 0)
  {
    goto LABEL_12;
  }

  v19 = v18[6];
  v20 = *(v14 + 48);
  sub_1BFA77EC0(&a1[v19], v17);
  sub_1BFA77EC0(&a2[v19], &v17[v20]);
  OUTLINED_FUNCTION_24_2(v17);
  if (!v21)
  {
    sub_1BFA77EC0(v17, v13);
    OUTLINED_FUNCTION_24_2(&v17[v20]);
    if (!v21)
    {
      (*(v6 + 32))(v10, &v17[v20], v4);
      OUTLINED_FUNCTION_0_11();
      sub_1BFA79078(v24, v25, MEMORY[0x1E69695C8]);
      v26 = sub_1BFAAF848();
      v27 = *(v6 + 8);
      v27(v10, v4);
      v27(v13, v4);
      sub_1BF9FAB40(v17, &qword_1EBDFB570, &qword_1BFAB1F50);
      if ((v26 & 1) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_15;
    }

    (*(v6 + 8))(v13, v4);
LABEL_11:
    sub_1BF9FAB40(v17, &qword_1EBDFBDB8, &qword_1BFAB5058);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_24_2(&v17[v20]);
  if (!v21)
  {
    goto LABEL_11;
  }

  sub_1BF9FAB40(v17, &qword_1EBDFB570, &qword_1BFAB1F50);
LABEL_15:
  v28 = v18[7];
  v29 = &a1[v28];
  v30 = *&a1[v28 + 8];
  v31 = &a2[v28];
  v32 = *(v31 + 1);
  if (v30)
  {
    if (v32)
    {
      v33 = *v29 == *v31 && v30 == v32;
      if (v33 || (sub_1BFAAFF08() & 1) != 0)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v32)
  {
LABEL_24:
    v22 = a1[v18[8]] ^ a2[v18[8]] ^ 1;
    return v22 & 1;
  }

LABEL_12:
  v22 = 0;
  return v22 & 1;
}

uint64_t sub_1BFA785C8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000015 && 0x80000001BFAB97C0 == a2;
  if (v3 || (sub_1BFAAFF08() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x697461636F766E69 && a2 == 0xEE00657079546E6FLL;
    if (v6 || (sub_1BFAAFF08() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x4974736575716572 && a2 == 0xE900000000000064;
      if (v7 || (sub_1BFAAFF08() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6F43676F6C616964 && a2 == 0xEF6449747865746ELL;
        if (v8 || (sub_1BFAAFF08() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x4264656B6F766E69 && a2 == 0xED000065726F6665)
        {

          return 4;
        }

        else
        {
          v10 = sub_1BFAAFF08();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_1BFA78790(char a1)
{
  result = 0x697461636F766E69;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x4974736575716572;
      break;
    case 3:
      result = 0x6F43676F6C616964;
      break;
    case 4:
      result = 0x4264656B6F766E69;
      break;
    default:
      result = 0xD000000000000015;
      break;
  }

  return result;
}

uint64_t sub_1BFA78860@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BFA785C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BFA78888@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BFA2D518();
  *a1 = result;
  return result;
}

uint64_t sub_1BFA788B0(uint64_t a1)
{
  v2 = sub_1BFA78B70();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BFA788EC(uint64_t a1)
{
  v2 = sub_1BFA78B70();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PresentationContext.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBDC8, &qword_1BFAB5060);
  OUTLINED_FUNCTION_2_3();
  v5 = v4;
  OUTLINED_FUNCTION_73();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v14[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BFA78B70();
  sub_1BFAB0008();
  v14[15] = 0;
  OUTLINED_FUNCTION_7_7();
  sub_1BFAAFE88();
  if (!v1)
  {
    type metadata accessor for PresentationContext(0);
    v14[14] = 1;
    sub_1BFAAEEA8();
    OUTLINED_FUNCTION_3_9();
    sub_1BFA79078(v9, v10, MEMORY[0x1E69D2FE8]);
    OUTLINED_FUNCTION_7_7();
    sub_1BFAAFEB8();
    v14[13] = 2;
    sub_1BFAAE3F8();
    OUTLINED_FUNCTION_0_11();
    sub_1BFA79078(v11, v12, MEMORY[0x1E69695B0]);
    OUTLINED_FUNCTION_7_7();
    sub_1BFAAFE68();
    v14[12] = 3;
    OUTLINED_FUNCTION_7_7();
    sub_1BFAAFE38();
    v14[11] = 4;
    OUTLINED_FUNCTION_7_7();
    sub_1BFAAFE88();
  }

  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_1BFA78B70()
{
  result = qword_1EBDFBDD0;
  if (!qword_1EBDFBDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFBDD0);
  }

  return result;
}

uint64_t PresentationContext.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB570, &qword_1BFAB1F50);
  OUTLINED_FUNCTION_73();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v39 - v4;
  v44 = sub_1BFAAEEA8();
  OUTLINED_FUNCTION_2_3();
  v42 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2();
  v10 = v9 - v8;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBDE0, &qword_1BFAB5068);
  OUTLINED_FUNCTION_2_3();
  v41 = v11;
  OUTLINED_FUNCTION_73();
  MEMORY[0x1EEE9AC00](v12);
  type metadata accessor for PresentationContext(0);
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_2();
  v16 = (v15 - v14);
  v46 = v17;
  v18 = *(v17 + 24);
  v19 = sub_1BFAAE3F8();
  v48 = v18;
  OUTLINED_FUNCTION_86_2();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v19);
  v23 = a1[3];
  v47 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_1BFA78B70();
  v24 = v45;
  sub_1BFAAFFF8();
  if (v24)
  {
    v25 = v48;
    __swift_destroy_boxed_opaque_existential_2Tm(v47);
    return sub_1BF9FAB40(&v16[v25], &qword_1EBDFB570, &qword_1BFAB1F50);
  }

  else
  {
    v53 = 0;
    OUTLINED_FUNCTION_8_7();
    *v16 = sub_1BFAAFDD8() & 1;
    v52 = 1;
    OUTLINED_FUNCTION_3_9();
    sub_1BFA79078(v26, v27, MEMORY[0x1E69D2FF8]);
    v28 = v44;
    OUTLINED_FUNCTION_8_7();
    sub_1BFAAFE08();
    v29 = v46;
    (*(v42 + 32))(&v16[*(v46 + 20)], v10, v28);
    v51 = 2;
    OUTLINED_FUNCTION_0_11();
    sub_1BFA79078(v30, v31, MEMORY[0x1E69695D0]);
    OUTLINED_FUNCTION_8_7();
    sub_1BFAAFDB8();
    sub_1BFA77044(v5, &v16[v48]);
    v50 = 3;
    OUTLINED_FUNCTION_8_7();
    v32 = sub_1BFAAFD88();
    v33 = &v16[*(v29 + 28)];
    *v33 = v32;
    v33[1] = v34;
    v49 = 4;
    OUTLINED_FUNCTION_8_7();
    v35 = sub_1BFAAFDD8();
    v36 = OUTLINED_FUNCTION_4_10();
    v37(v36);
    v16[*(v29 + 32)] = v35 & 1;
    sub_1BFA790C0(v16, v40);
    __swift_destroy_boxed_opaque_existential_2Tm(v47);
    return sub_1BFA7825C(v16);
  }
}

uint64_t sub_1BFA79078(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BFA790C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PresentationContext(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1BFA79180(uint64_t a1)
{
  sub_1BFAAEEA8();
  if (v1 <= 0x3F)
  {
    sub_1BFA7922C(319);
    if (v2 <= 0x3F)
    {
      sub_1BFA20EF4();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1BFA7922C(uint64_t a1)
{
  if (!qword_1EDCC7798)
  {
    sub_1BFAAE3F8();
    v1 = sub_1BFAAFBA8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDCC7798);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for PresentationContext.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1BFA79364()
{
  result = qword_1EBDFBDF0;
  if (!qword_1EBDFBDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFBDF0);
  }

  return result;
}

unint64_t sub_1BFA793BC()
{
  result = qword_1EBDFBDF8;
  if (!qword_1EBDFBDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFBDF8);
  }

  return result;
}

unint64_t sub_1BFA79414()
{
  result = qword_1EBDFBE00;
  if (!qword_1EBDFBE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFBE00);
  }

  return result;
}

uint64_t sub_1BFA794C4(uint64_t a1, uint64_t a2)
{
  v58 = a2;
  v3 = sub_1BFAAE888();
  OUTLINED_FUNCTION_22();
  v57 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2();
  v52 = v7 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB8D8, &qword_1BFAB1A40);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v49[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v49[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB698, &qword_1BFAB1A50);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v49[-v17];
  v19 = MEMORY[0x1EEE9AC00](v16);
  v55 = &v49[-v20];
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v49[-v22];
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v49[-v25];
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v49[-v27];
  v56 = v29;
  v54 = a1;
  if (a1)
  {
    sub_1BFAAF4F8();
    v30 = 0;
  }

  else
  {
    v30 = 1;
  }

  OUTLINED_FUNCTION_6_11(v28, v30);
  sub_1BFAAE878();
  OUTLINED_FUNCTION_6_11(v26, 0);
  v53 = v8;
  v31 = *(v8 + 48);
  sub_1BFA7A474(v28, v13);
  sub_1BFA7A474(v26, &v13[v31]);
  OUTLINED_FUNCTION_2_11(v13);
  if (v33)
  {
    sub_1BFA20F44(v26, &qword_1EBDFB698, &qword_1BFAB1A50);
    sub_1BFA20F44(v28, &qword_1EBDFB698, &qword_1BFAB1A50);
    OUTLINED_FUNCTION_2_11(&v13[v31]);
    if (v33)
    {
      v32 = v13;
      goto LABEL_23;
    }

    goto LABEL_12;
  }

  sub_1BFA7A474(v13, v23);
  OUTLINED_FUNCTION_2_11(&v13[v31]);
  if (v33)
  {
    sub_1BFA20F44(v26, &qword_1EBDFB698, &qword_1BFAB1A50);
    sub_1BFA20F44(v28, &qword_1EBDFB698, &qword_1BFAB1A50);
    (*(v57 + 8))(v23, v3);
LABEL_12:
    sub_1BFA20F44(v13, &qword_1EBDFB8D8, &qword_1BFAB1A40);
    goto LABEL_13;
  }

  v37 = v52;
  v51 = v11;
  v38 = v57;
  (*(v57 + 32))(v52, &v13[v31], v3);
  sub_1BFA7A4E4();
  v50 = sub_1BFAAF848();
  v39 = v38;
  v11 = v51;
  v40 = *(v39 + 8);
  v40(v37, v3);
  sub_1BFA20F44(v26, &qword_1EBDFB698, &qword_1BFAB1A50);
  sub_1BFA20F44(v28, &qword_1EBDFB698, &qword_1BFAB1A50);
  v40(v23, v3);
  sub_1BFA20F44(v13, &qword_1EBDFB698, &qword_1BFAB1A50);
  if (v50)
  {
    goto LABEL_24;
  }

LABEL_13:
  if (v54)
  {
    v34 = v55;
    sub_1BFAAF4F8();
    v35 = 0;
  }

  else
  {
    v35 = 1;
    v34 = v55;
  }

  v36 = v56;
  OUTLINED_FUNCTION_6_11(v34, v35);
  sub_1BFAAE858();
  OUTLINED_FUNCTION_6_11(v18, 0);
  v41 = *(v53 + 48);
  sub_1BFA7A474(v34, v11);
  sub_1BFA7A474(v18, &v11[v41]);
  OUTLINED_FUNCTION_2_11(v11);
  if (v33)
  {
    OUTLINED_FUNCTION_5_7(v18);
    OUTLINED_FUNCTION_5_7(v34);
    OUTLINED_FUNCTION_2_11(&v11[v41]);
    if (!v33)
    {
      goto LABEL_28;
    }

    v32 = v11;
LABEL_23:
    sub_1BFA20F44(v32, &qword_1EBDFB698, &qword_1BFAB1A50);
LABEL_24:
    v42 = 1;
    goto LABEL_29;
  }

  sub_1BFA7A474(v11, v36);
  OUTLINED_FUNCTION_2_11(&v11[v41]);
  if (!v43)
  {
    v44 = v11;
    v51 = v11;
    v45 = v52;
    v46 = v57;
    (*(v57 + 32))(v52, &v44[v41], v3);
    sub_1BFA7A4E4();
    v42 = sub_1BFAAF848();
    v47 = *(v46 + 8);
    v47(v45, v3);
    sub_1BFA20F44(v18, &qword_1EBDFB698, &qword_1BFAB1A50);
    sub_1BFA20F44(v34, &qword_1EBDFB698, &qword_1BFAB1A50);
    v47(v36, v3);
    sub_1BFA20F44(v51, &qword_1EBDFB698, &qword_1BFAB1A50);
    goto LABEL_29;
  }

  OUTLINED_FUNCTION_5_7(v18);
  OUTLINED_FUNCTION_5_7(v34);
  (*(v57 + 8))(v36, v3);
LABEL_28:
  sub_1BFA20F44(v11, &qword_1EBDFB8D8, &qword_1BFAB1A40);
  v42 = 0;
LABEL_29:
  if (v58)
  {
    v42 |= sub_1BFAAE8A8();
  }

  return v42 & 1;
}

BOOL sub_1BFA79AF0(uint64_t a1, unint64_t a2)
{
  if (qword_1EBDFB500 != -1)
  {
    swift_once();
  }

  v4 = sub_1BFA7A0E8(a1, a2, qword_1EBDFBE08);
  if (v4)
  {
    if (qword_1EDCC77C0 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDCC77C0);
    }

    v5 = sub_1BFAAF688();
    __swift_project_value_buffer(v5, qword_1EDCC77C8);

    v6 = sub_1BFAAF668();
    v7 = sub_1BFAAFB78();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v13 = v9;
      *v8 = 136315138;
      if (a2)
      {
        v10 = a2;
      }

      else
      {
        a1 = 0;
        v10 = 0xE000000000000000;
      }

      v11 = sub_1BF9F88A8(a1, v10, &v13);

      *(v8 + 4) = v11;
      _os_log_impl(&dword_1BF9F6000, v6, v7, "Current Siri execution's patternId %s is not qualified for spoken announcement", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_2Tm(v9);
      OUTLINED_FUNCTION_94();
      OUTLINED_FUNCTION_94();
    }
  }

  return (v4 & 1) == 0;
}

uint64_t sub_1BFA79C98(uint64_t a1)
{
  if (*(a1 + 16) != 1)
  {
    v7 = *(a1 + 24);
    v6 = *(a1 + 32);
    v8 = qword_1EDCC6AD0;

    if (v8 != -1)
    {
      swift_once();
    }

    v9 = sub_1BFA7A0E8(v7, v6, qword_1EDCC6AD8);
    if (v9)
    {
      if (qword_1EDCC77C0 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDCC77C0);
      }

      v10 = sub_1BFAAF688();
      __swift_project_value_buffer(v10, qword_1EDCC77C8);

      v11 = sub_1BFAAF668();
      v12 = sub_1BFAAFB78();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v18 = v14;
        *v13 = 136315138;
        if (v6)
        {
          v15 = v7;
        }

        else
        {
          v15 = 0;
        }

        if (!v6)
        {
          v6 = 0xE000000000000000;
        }

        v16 = sub_1BF9F88A8(v15, v6, &v18);

        *(v13 + 4) = v16;
        _os_log_impl(&dword_1BF9F6000, v11, v12, "Current Siri execution's patternId %s is not qualified for cross domain hint or announcement", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_2Tm(v14);
        OUTLINED_FUNCTION_94();
        OUTLINED_FUNCTION_94();

        goto LABEL_21;
      }
    }

LABEL_21:
    v5 = v9 ^ 1;
    return v5 & 1;
  }

  if (qword_1EDCC77C0 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDCC77C0);
  }

  v1 = sub_1BFAAF688();
  __swift_project_value_buffer(v1, qword_1EDCC77C8);
  v2 = sub_1BFAAF668();
  v3 = sub_1BFAAFB78();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1BF9F6000, v2, v3, "Current Siri execution has additional commands to be run after the Siri response. Not returning announcement or cross domain hint", v4, 2u);
    OUTLINED_FUNCTION_94();
  }

  v5 = 0;
  return v5 & 1;
}

void *sub_1BFA79F0C(void *result, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t *a6)
{
  v34 = a5;
  v22 = result;
  v20 = a6[1];
  v21 = *a6;
  v33 = *(a6 + 16);
  v8 = a6[4];
  v19 = a6[3];
  v9 = *(v6 + 16);
  v10 = v9 + 32;
  v11 = -*(v9 + 16);
  v12 = -1;
  while (1)
  {
    if (v11 + v12 == -1)
    {
      return 0;
    }

    if (++v12 >= *(v9 + 16))
    {
      break;
    }

    sub_1BF9F94C4(v10, v30);
    v13 = v31;
    v14 = v32;
    v15 = __swift_project_boxed_opaque_existential_1(v30, v31);
    v26[0] = v21;
    v26[1] = v20;
    v27 = v33;
    v28 = v19;
    v29 = v8;
    v16 = (*(v14 + 8))(v22, a2, a3, a4, v34 & 1, v26, v13, v14);
    if (v7)
    {
      __swift_destroy_boxed_opaque_existential_2Tm(v30);
      return v15;
    }

    v15 = v16;
    v18 = v17;
    v10 += 40;
    result = __swift_destroy_boxed_opaque_existential_2Tm(v30);
    if (v18)
    {
      return v15;
    }
  }

  __break(1u);
  return result;
}

void *sub_1BFA7A064(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t *a6)
{
  result = sub_1BFA79F0C(a1, a2, a3, a4, a5, a6);
  if (v6)
  {
    return v8;
  }

  return result;
}

uint64_t sub_1BFA7A098()
{
  result = sub_1BFA7A2E4(&unk_1F3F07AD8);
  qword_1EDCC6AD8 = result;
  return result;
}

uint64_t sub_1BFA7A0C0()
{
  result = sub_1BFA7A2E4(&unk_1F3F07B38);
  qword_1EBDFBE08 = result;
  return result;
}

uint64_t sub_1BFA7A0E8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB8E8, &qword_1BFAB1A58);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v25 - v7;
  if (a2)
  {
    v9 = a1;
  }

  else
  {
    v9 = 0;
  }

  v26 = v9;
  if (a2)
  {
    v10 = a2;
  }

  else
  {
    v10 = 0xE000000000000000;
  }

  v11 = 1 << *(a3 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a3 + 56);
  v14 = (v11 + 63) >> 6;

  v16 = 0;
  while (v13)
  {
    v17 = v16;
LABEL_16:
    v18 = (*(a3 + 48) + ((v17 << 10) | (16 * __clz(__rbit64(v13)))));
    v19 = *v18;
    v20 = v18[1];
    v13 &= v13 - 1;
    v29 = v26;
    v30 = v10;
    v27 = v19;
    v28 = v20;
    v21 = sub_1BFAAE428();
    v22 = 1;
    __swift_storeEnumTagSinglePayload(v8, 1, 1, v21);
    sub_1BF9F86D0();

    sub_1BFAAFBC8();
    v24 = v23;
    sub_1BFA20F44(v8, &qword_1EBDFB8E8, &qword_1BFAB1A58);

    if ((v24 & 1) == 0)
    {
LABEL_19:

      return v22;
    }
  }

  while (1)
  {
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v17 >= v14)
    {
      v22 = 0;
      goto LABEL_19;
    }

    v13 = *(a3 + 56 + 8 * v17);
    ++v16;
    if (v13)
    {
      v16 = v17;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BFA7A2E4(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x1E69E7CD0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBE10, &qword_1BFAB52C0);
  result = sub_1BFAAFC28();
  v3 = result;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_19:

    return v3;
  }

  v5 = 0;
  v6 = result + 56;
  while (v5 < *(a1 + 16))
  {
    v7 = (a1 + 32 + 16 * v5);
    v9 = *v7;
    v8 = v7[1];
    ++v5;
    sub_1BFAAFF98();

    sub_1BFAAF908();
    result = sub_1BFAAFFE8();
    v10 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v11 = result & v10;
      v12 = (result & v10) >> 6;
      v13 = *(v6 + 8 * v12);
      v14 = 1 << (result & v10);
      if ((v14 & v13) == 0)
      {
        break;
      }

      v15 = (*(v3 + 48) + 16 * v11);
      v16 = *v15 == v9 && v15[1] == v8;
      if (v16 || (sub_1BFAAFF08() & 1) != 0)
      {

        goto LABEL_16;
      }

      result = v11 + 1;
    }

    *(v6 + 8 * v12) = v14 | v13;
    v17 = (*(v3 + 48) + 16 * v11);
    *v17 = v9;
    v17[1] = v8;
    v18 = *(v3 + 16);
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
      goto LABEL_21;
    }

    *(v3 + 16) = v20;
LABEL_16:
    if (v5 == v4)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1BFA7A474(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB698, &qword_1BFAB1A50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BFA7A4E4()
{
  result = qword_1EDCC6F70;
  if (!qword_1EDCC6F70)
  {
    sub_1BFAAE888();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC6F70);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_6_11(uint64_t a1, uint64_t a2)
{

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v2);
}

uint64_t sub_1BFA7A554(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_41(v4);
  *v5 = v6;
  v5[1] = sub_1BF9FDF08;

  return sub_1BFA7A60C(a1, a2);
}

uint64_t sub_1BFA7A60C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(type metadata accessor for PresentationContext(0) - 8);
  v3[5] = v4;
  v3[6] = *(v4 + 64);
  v3[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBE20, &qword_1BFAB52D8);
  v3[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BFA7A70C, 0, 0);
}

uint64_t sub_1BFA7A70C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_141();
  OUTLINED_FUNCTION_58();
  v12 = v10[7];
  v11 = v10[8];
  v13 = v10[5];
  v15 = v10[3];
  v14 = v10[4];
  v10[9] = SiriSuggestions.SuggestionList.suggestions.getter();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBE28, &qword_1BFAB52E0);
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v16);
  OUTLINED_FUNCTION_4_11();
  sub_1BFA7C6D0(v15, v12, v17);
  v18 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v19 = swift_allocObject();
  v10[10] = v19;
  *(v19 + 16) = v14;
  sub_1BFA7B6FC(v12, v19 + v18);

  v20 = swift_task_alloc();
  v10[11] = v20;
  type metadata accessor for SiriSuggestions.Suggestion(0);
  *v20 = v10;
  v20[1] = sub_1BFA7A874;
  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE40720](v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
}

uint64_t sub_1BFA7A874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_141();
  OUTLINED_FUNCTION_58();
  v12 = *v11;
  v13 = *v11;
  OUTLINED_FUNCTION_8();
  *v14 = v13;
  *v14 = *v11;
  *(v13 + 96) = v10;

  v15 = *(v12 + 64);
  if (v10)
  {
    sub_1BFA7B890(v15);

    OUTLINED_FUNCTION_20_7();
    OUTLINED_FUNCTION_138();

    return MEMORY[0x1EEE6DFA0](v16, v17, v18);
  }

  else
  {

    sub_1BFA7B890(v15);

    OUTLINED_FUNCTION_19_5();
    OUTLINED_FUNCTION_138();

    return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10);
  }
}

uint64_t sub_1BFA7AA24()
{
  OUTLINED_FUNCTION_40();

  OUTLINED_FUNCTION_85();

  return v0();
}

uint64_t SuggestionDispatcher.dispatch(suggestions:presentationContext:)()
{
  OUTLINED_FUNCTION_40();
  v3 = v2;
  v1[5] = v4;
  v1[6] = v0;
  v1[3] = v5;
  v1[4] = v2;
  v1[2] = v6;
  v7 = *(type metadata accessor for PresentationContext(0) - 8);
  v1[7] = v7;
  v1[8] = *(v7 + 64);
  v1[9] = swift_task_alloc();
  v8 = *(v3 - 8);
  v1[10] = v8;
  v1[11] = *(v8 + 64);
  v1[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBE20, &qword_1BFAB52D8);
  v1[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BFA7ABE4, 0, 0);
}

uint64_t sub_1BFA7ABE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = *(v10 + 96);
  v12 = *(v10 + 104);
  v13 = *(v10 + 80);
  v14 = *(v10 + 72);
  v31 = *(v10 + 88);
  v15 = *(v10 + 48);
  v16 = *(v10 + 56);
  v17 = *(v10 + 24);
  v32 = *(v10 + 32);
  v18 = SiriSuggestions.SuggestionList.suggestions.getter();
  *(v10 + 112) = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBE28, &qword_1BFAB52E0);
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v19);
  (*(v13 + 16))(v11, v15, v32);
  OUTLINED_FUNCTION_4_11();
  sub_1BFA7C6D0(v17, v14, v20);
  v21 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v22 = (v31 + *(v16 + 80) + v21) & ~*(v16 + 80);
  v23 = swift_allocObject();
  *(v10 + 120) = v23;
  *(v23 + 16) = v32;
  (*(v13 + 32))(v23 + v21, v11, v32);
  sub_1BFA7B6FC(v14, v23 + v22);
  v24 = swift_task_alloc();
  *(v10 + 128) = v24;
  v25 = type metadata accessor for SiriSuggestions.Suggestion(0);
  *v24 = v10;
  v24[1] = sub_1BFA7ADD0;
  v28 = *(v10 + 104);
  v29 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE40720](v18, v28, &unk_1BFAB52F0, v23, v25, v29, v26, v27, a9, a10);
}

uint64_t sub_1BFA7ADD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_141();
  OUTLINED_FUNCTION_58();
  v12 = *v11;
  v13 = *v11;
  OUTLINED_FUNCTION_8();
  *v14 = v13;
  *v14 = *v11;
  *(v13 + 136) = v10;

  v15 = *(v12 + 104);
  if (v10)
  {
    sub_1BFA7B890(v15);

    OUTLINED_FUNCTION_20_7();
    OUTLINED_FUNCTION_138();

    return MEMORY[0x1EEE6DFA0](v16, v17, v18);
  }

  else
  {

    sub_1BFA7B890(v15);

    OUTLINED_FUNCTION_19_5();
    OUTLINED_FUNCTION_138();

    return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10);
  }
}

uint64_t sub_1BFA7AF8C()
{
  OUTLINED_FUNCTION_40();

  OUTLINED_FUNCTION_85();

  return v0();
}

uint64_t static SuggestionsDispatchers.chain(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  a2[3] = &unk_1F3F0A7D0;
  a2[4] = &off_1F3F0A7F8;
  *a2 = a1;
}

uint64_t sub_1BFA7B030(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v3[5] = type metadata accessor for SiriSuggestions.Suggestion(0);
  v3[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BFA7B0C8, 0, 0);
}

uint64_t sub_1BFA7B0C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_141();
  a17 = v20;
  a18 = v21;
  OUTLINED_FUNCTION_58();
  a16 = v18;
  if (qword_1EDCC7470 != -1)
  {
    OUTLINED_FUNCTION_4(&qword_1EDCC7470);
  }

  v22 = sub_1BFAAF688();
  __swift_project_value_buffer(v22, qword_1EDCC7478);
  OUTLINED_FUNCTION_3_10();
  v23 = sub_1BFAAF668();
  v24 = sub_1BFAAFB78();
  v25 = OUTLINED_FUNCTION_48(v24);
  v26 = v18[6];
  if (v25)
  {
    v27 = v18[5];
    v28 = OUTLINED_FUNCTION_51_0();
    v29 = OUTLINED_FUNCTION_31_4();
    a9 = v29;
    OUTLINED_FUNCTION_18_9(4.8149e-34);
    sub_1BFA1C9FC(v26);
    v30 = sub_1BF9F88A8(v27, v19, &a9);

    *(v28 + 4) = v30;
    OUTLINED_FUNCTION_28_0(&dword_1BF9F6000, v31, v32, "dispatching %s");
    __swift_destroy_boxed_opaque_existential_2Tm(v29);
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_94();
  }

  else
  {

    sub_1BFA1C9FC(v26);
  }

  v33 = swift_task_alloc();
  v18[7] = v33;
  *v33 = v18;
  v33[1] = sub_1BFA7B248;
  OUTLINED_FUNCTION_23_5();
  OUTLINED_FUNCTION_138();

  return ACECommandSuggestionDispatcher.dispatch(suggestion:presentationContext:)(v34);
}

uint64_t sub_1BFA7B248()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v2 = *v1;
  OUTLINED_FUNCTION_8();
  *v3 = v2;

  OUTLINED_FUNCTION_24_0();
  if (!v0)
  {
    v4 = &unk_1F3F07DD8;
  }

  return v5(v4);
}

uint64_t sub_1BFA7B350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v5[7] = type metadata accessor for SiriSuggestions.Suggestion(0);
  v5[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BFA7B3EC, 0, 0);
}

uint64_t sub_1BFA7B3EC()
{
  v18 = v0;
  if (qword_1EDCC7470 != -1)
  {
    OUTLINED_FUNCTION_4(&qword_1EDCC7470);
  }

  v2 = sub_1BFAAF688();
  __swift_project_value_buffer(v2, qword_1EDCC7478);
  OUTLINED_FUNCTION_3_10();
  v3 = sub_1BFAAF668();
  v4 = sub_1BFAAFB78();
  v5 = OUTLINED_FUNCTION_48(v4);
  v6 = v0[8];
  if (v5)
  {
    v7 = v0[7];
    v8 = OUTLINED_FUNCTION_51_0();
    v9 = OUTLINED_FUNCTION_31_4();
    v17 = v9;
    OUTLINED_FUNCTION_18_9(4.8149e-34);
    sub_1BFA1C9FC(v6);
    v10 = sub_1BF9F88A8(v7, v1, &v17);

    *(v8 + 4) = v10;
    OUTLINED_FUNCTION_28_0(&dword_1BF9F6000, v11, v12, "dispatching %s");
    __swift_destroy_boxed_opaque_existential_2Tm(v9);
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_94();
  }

  else
  {

    sub_1BFA1C9FC(v6);
  }

  v16 = (*(v0[6] + 16) + **(v0[6] + 16));
  v13 = swift_task_alloc();
  v0[9] = v13;
  *v13 = v0;
  v13[1] = sub_1BFA7B5F4;
  v14 = OUTLINED_FUNCTION_23_5();

  return v16(v14);
}

uint64_t sub_1BFA7B5F4()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v2 = *v1;
  OUTLINED_FUNCTION_8();
  *v3 = v2;

  OUTLINED_FUNCTION_24_0();
  if (!v0)
  {
    v4 = &unk_1F3F07DF8;
  }

  return v5(v4);
}

uint64_t sub_1BFA7B6FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PresentationContext(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BFA7B760(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  OUTLINED_FUNCTION_24_7();
  v7 = *(v6 + 64);
  v8 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v9 = *(type metadata accessor for PresentationContext(0) - 8);
  v10 = (v8 + v7 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_41(v11);
  *v12 = v13;
  v12[1] = sub_1BFA7C730;

  return sub_1BFA7B350(a1, v1 + v8, v1 + v10, v3, v4);
}

uint64_t sub_1BFA7B890(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBE20, &qword_1BFAB52D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t dispatch thunk of SuggestionsDispatcher.dispatch(suggestions:presentationContext:)()
{
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_34(v0, v1, v2, v3);
  OUTLINED_FUNCTION_30();
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_41(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_19(v5);

  return v8(v7);
}

uint64_t dispatch thunk of SuggestionDispatcher.dispatch(suggestion:presentationContext:)()
{
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_34(v0, v1, v2, v3);
  OUTLINED_FUNCTION_30();
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_41(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_19(v5);

  return v8(v7);
}

_BYTE *storeEnumTagSinglePayload for SuggestionsDispatchers(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1BFA7BBA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[15] = a2;
  v3[16] = a3;
  v3[14] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1BFA7BBCC, 0, 0);
}

void sub_1BFA7BBCC()
{
  v1 = v0[16];
  v2 = *(v1 + 16);
  v0[17] = v2;
  if (v2)
  {
    v0[18] = 0;
    sub_1BF9F94C4(v1 + 32, (v0 + 2));
    if (qword_1EDCC7470 != -1)
    {
      OUTLINED_FUNCTION_4(&qword_1EDCC7470);
    }

    v3 = sub_1BFAAF688();
    __swift_project_value_buffer(v3, qword_1EDCC7478);
    sub_1BF9F94C4((v0 + 2), (v0 + 7));
    v4 = sub_1BFAAF668();
    v5 = sub_1BFAAFB78();
    if (OUTLINED_FUNCTION_48(v5))
    {
      v6 = OUTLINED_FUNCTION_51_0();
      v7 = OUTLINED_FUNCTION_31_4();
      v21 = v7;
      v8 = OUTLINED_FUNCTION_21_6(4.8149e-34);
      v9 = v0[11];
      v0[12] = v8;
      v0[13] = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBE30, &qword_1BFAB5410);
      v10 = sub_1BFAAF8B8();
      v12 = v11;
      __swift_destroy_boxed_opaque_existential_2Tm(v0 + 7);
      v13 = sub_1BF9F88A8(v10, v12, &v21);

      *(v6 + 4) = v13;
      OUTLINED_FUNCTION_26_5(&dword_1BF9F6000, v14, v15, "Dispatching to %s in chain");
      __swift_destroy_boxed_opaque_existential_2Tm(v7);
      OUTLINED_FUNCTION_94();
      OUTLINED_FUNCTION_94();
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_2Tm(v0 + 7);
    }

    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    OUTLINED_FUNCTION_30();
    v18 = swift_task_alloc();
    v0[19] = v18;
    *v18 = v0;
    OUTLINED_FUNCTION_2_12(v18);
    OUTLINED_FUNCTION_25_6();

    __asm { BRAA            X4, X16 }
  }

  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_25_6();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1BFA7BE30()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_42();
  v2 = *v1;
  OUTLINED_FUNCTION_8();
  *v3 = v2;
  *(v4 + 160) = v0;

  if (v0)
  {
    v5 = sub_1BFA7C1B4;
  }

  else
  {
    v5 = sub_1BFA7BF34;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

void sub_1BFA7BF34()
{
  v1 = v0[17];
  v2 = v0[18] + 1;
  __swift_destroy_boxed_opaque_existential_2Tm(v0 + 2);
  if (v2 == v1)
  {
    OUTLINED_FUNCTION_85();
    OUTLINED_FUNCTION_25_6();

    __asm { BRAA            X1, X16 }
  }

  v5 = v0[18];
  v0[18] = v5 + 1;
  sub_1BF9F94C4(v0[16] + 40 * v5 + 72, (v0 + 2));
  if (qword_1EDCC7470 != -1)
  {
    OUTLINED_FUNCTION_4(&qword_1EDCC7470);
  }

  v6 = sub_1BFAAF688();
  __swift_project_value_buffer(v6, qword_1EDCC7478);
  sub_1BF9F94C4((v0 + 2), (v0 + 7));
  v7 = sub_1BFAAF668();
  v8 = sub_1BFAAFB78();
  if (OUTLINED_FUNCTION_48(v8))
  {
    v9 = OUTLINED_FUNCTION_51_0();
    v10 = OUTLINED_FUNCTION_31_4();
    v22 = v10;
    v11 = OUTLINED_FUNCTION_21_6(4.8149e-34);
    v12 = v0[11];
    v0[12] = v11;
    v0[13] = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBE30, &qword_1BFAB5410);
    v13 = sub_1BFAAF8B8();
    v15 = v14;
    __swift_destroy_boxed_opaque_existential_2Tm(v0 + 7);
    v16 = sub_1BF9F88A8(v13, v15, &v22);

    *(v9 + 4) = v16;
    OUTLINED_FUNCTION_26_5(&dword_1BF9F6000, v17, v18, "Dispatching to %s in chain");
    __swift_destroy_boxed_opaque_existential_2Tm(v10);
    OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_94();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_2Tm(v0 + 7);
  }

  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  OUTLINED_FUNCTION_30();
  v19 = swift_task_alloc();
  v0[19] = v19;
  *v19 = v0;
  OUTLINED_FUNCTION_2_12(v19);
  OUTLINED_FUNCTION_25_6();

  __asm { BRAA            X4, X16 }
}

uint64_t sub_1BFA7C1B4()
{
  OUTLINED_FUNCTION_40();
  __swift_destroy_boxed_opaque_existential_2Tm((v0 + 16));
  OUTLINED_FUNCTION_85();

  return v1();
}

uint64_t sub_1BFA7C210(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1BF9FDE28;

  return sub_1BFA7BBA8(a1, a2, v6);
}

uint64_t sub_1BFA7C2E0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BF9FDF08;

  return sub_1BFA7C2BC();
}

uint64_t sub_1BFA7C36C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1BFA7C418;

  return sub_1BFA7B030(a1, v6, a3);
}

uint64_t sub_1BFA7C418()
{
  OUTLINED_FUNCTION_40();
  v3 = v2;
  OUTLINED_FUNCTION_42();
  v4 = *v1;
  OUTLINED_FUNCTION_8();
  *v5 = v4;

  OUTLINED_FUNCTION_24_0();
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_1BFA7C504(uint64_t a1)
{
  v3 = *(type metadata accessor for PresentationContext(0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_41(v5);
  *v6 = v7;
  v6[1] = sub_1BFA7C5E8;

  return sub_1BFA7C36C(a1, (v1 + 16), v1 + v4);
}

uint64_t sub_1BFA7C5E8()
{
  OUTLINED_FUNCTION_40();
  v2 = v1;
  OUTLINED_FUNCTION_42();
  v3 = *v0;
  OUTLINED_FUNCTION_8();
  *v4 = v3;

  OUTLINED_FUNCTION_24_0();

  return v5(v2);
}

uint64_t sub_1BFA7C6D0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_3_10()
{

  return sub_1BFA7C6D0(v0, v1, type metadata accessor for SiriSuggestions.Suggestion);
}

uint64_t OUTLINED_FUNCTION_21_6(float a1)
{
  *v1 = a1;
  __swift_project_boxed_opaque_existential_1((v2 + 56), *(v2 + 80));

  return swift_getDynamicType();
}

uint64_t FeatureType.rawValue.getter()
{
  if (*v0)
  {
    return 0x6169646E496E6170;
  }

  else
  {
    return 0x737567616DLL;
  }
}

void *sub_1BFA7C804@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v10 = sub_1BFAAE428();
  OUTLINED_FUNCTION_2_3();
  v12 = v11;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v46 - v17;
  v19 = *a3;
  sub_1BFAAE7A8();
  if (!sub_1BFAAE778())
  {

    if (qword_1EDCC7470 != -1)
    {
      OUTLINED_FUNCTION_4(&qword_1EDCC7470);
    }

    v25 = sub_1BFAAF688();
    v26 = OUTLINED_FUNCTION_56(v25, qword_1EDCC7478);
    v27 = sub_1BFAAFB88();
    if (os_log_type_enabled(v26, v27))
    {
      *OUTLINED_FUNCTION_44_0() = 0;
      OUTLINED_FUNCTION_49_0(&dword_1BF9F6000, v28, v29, "Unable to get the current Siri locale to fetch correct cached FeatureAnnouncement dialogs");
      OUTLINED_FUNCTION_94();
    }

    goto LABEL_15;
  }

  v61 = a1;
  sub_1BFAAE768();
  OUTLINED_FUNCTION_45_3();

  sub_1BFAAE898();

  (*(v12 + 32))(v18, v16, v10);
  v20 = sub_1BFAAE418();
  sub_1BFA7D288(v19 | 0xFFFFFF80, &unk_1F3F09360, v20, v21, __src);

  memcpy(__dst, __src, sizeof(__dst));
  v22 = __dst[1];
  if (!__dst[1])
  {

    if (qword_1EDCC7470 != -1)
    {
      OUTLINED_FUNCTION_4(&qword_1EDCC7470);
    }

    v30 = sub_1BFAAF688();
    v31 = OUTLINED_FUNCTION_56(v30, qword_1EDCC7478);
    v32 = sub_1BFAAFB88();
    if (os_log_type_enabled(v31, v32))
    {
      *OUTLINED_FUNCTION_44_0() = 0;
      OUTLINED_FUNCTION_49_0(&dword_1BF9F6000, v33, v34, "Unable to retrieve cached announcement dialog data");
      OUTLINED_FUNCTION_94();
    }

    v35 = OUTLINED_FUNCTION_25_7();
    v36(v35);
LABEL_15:
    __swift_destroy_boxed_opaque_existential_2Tm(a4);
    sub_1BFA87E58(__src);
    return memcpy(a5, __src, 0x88uLL);
  }

  v58 = a2;
  v59 = a4;
  v60 = a5;
  v57 = __dst[0];
  v56 = __dst[2];
  v54 = __dst[4];
  v23 = __dst[5];
  v53 = __dst[6];
  v24 = __dst[7];
  v52 = __dst[8];
  v55 = __dst[3];
  v51 = __dst[9];
  if (v19)
  {
  }

  else
  {
    v48 = __dst[10];
    v49 = __dst[11];
    v38 = __dst[12];
    v47 = __dst[13];
    v50 = sub_1BFAAFF08();

    if ((v50 & 1) == 0)
    {
      v44 = OUTLINED_FUNCTION_25_7();
      v45(v44);
      v40 = v49;

      v39 = v47;

      sub_1BFA20F44(__dst, &qword_1EBDFC050, qword_1BFAB6B38);
      v43 = v48;
      goto LABEL_19;
    }
  }

  v38 = 0xD00000000000001FLL;
  sub_1BFA20F44(__dst, &qword_1EBDFC050, qword_1BFAB6B38);
  v39 = 0x80000001BFAB9C40;
  v40 = 0x80000001BFAB9C60;
  v41 = OUTLINED_FUNCTION_25_7();
  v42(v41);
  v43 = 0xD000000000000026;
LABEL_19:
  *__src = v61;
  *&__src[8] = v58;
  __src[16] = v19;
  *&__src[24] = v38;
  *&__src[32] = v39;
  *&__src[40] = v57;
  *&__src[48] = v22;
  *&__src[56] = v56;
  *&__src[64] = v55;
  *&__src[72] = v54;
  *&__src[80] = v23;
  *&__src[88] = v53;
  *&__src[96] = v24;
  *&__src[104] = v52;
  *&__src[112] = v51;
  *&__src[120] = v43;
  *&__src[128] = v40;
  nullsub_1();
  memcpy(v60, __src, 0x88uLL);
  return __swift_destroy_boxed_opaque_existential_2Tm(v59);
}

id sub_1BFA7CD74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v8 = sub_1BFAAE3F8();
  OUTLINED_FUNCTION_2_3();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v54, v4, sizeof(v54));
  memcpy(v53, v4, 0xE1uLL);
  sub_1BFA87E04();
  v14 = sub_1BFAAE448();
  if (v15 >> 60 == 15)
  {
    goto LABEL_4;
  }

  if (sub_1BFA7D220(v14, v15))
  {
    v16 = OUTLINED_FUNCTION_4_5();
    sub_1BFA1B9DC(v16, v17);
LABEL_4:
    if (qword_1EDCC7470 != -1)
    {
      OUTLINED_FUNCTION_4(&qword_1EDCC7470);
    }

    v18 = sub_1BFAAF688();
    v19 = OUTLINED_FUNCTION_56(v18, qword_1EDCC7478);
    v20 = sub_1BFAAFB88();
    if (OUTLINED_FUNCTION_48(v20))
    {
      v21 = OUTLINED_FUNCTION_44_0();
      *v21 = 0;
      _os_log_impl(&dword_1BF9F6000, v19, v20, "ResponseFactory: SnippetPluginModel has no Data. Unable to build ACEView.", v21, 2u);
      OUTLINED_FUNCTION_94();
    }

    return 0;
  }

  v49 = a2;
  if (qword_1EDCC7470 != -1)
  {
    OUTLINED_FUNCTION_4(&qword_1EDCC7470);
  }

  v48[1] = a1;
  v23 = sub_1BFAAF688();
  v24 = OUTLINED_FUNCTION_56(v23, qword_1EDCC7478);
  v25 = sub_1BFAAFB78();
  if (OUTLINED_FUNCTION_48(v25))
  {
    v26 = OUTLINED_FUNCTION_44_0();
    *v26 = 0;
    _os_log_impl(&dword_1BF9F6000, v24, v25, "Suggestion ResponseFactory: Building snippet for Response", v26, 2u);
    OUTLINED_FUNCTION_94();
  }

  v27 = [objc_allocWithZone(MEMORY[0x1E69C7B88]) init];
  sub_1BFAAE3E8();
  v28 = sub_1BFAAE398();
  v30 = v29;
  (*(v10 + 8))(v13, v8);
  sub_1BFA531AC(v28, v30, v27);
  v22 = v27;
  sub_1BFA861F0(a3, v50, v22);
  swift_beginAccess();
  v32 = qword_1EBDFBE38;
  v31 = off_1EBDFBE40;

  sub_1BFA86248(v32, v31, v22);
  if (v49)
  {
    v33 = sub_1BFAAF858();
  }

  else
  {
    v33 = 0;
  }

  [v22 setCorrespondingSessionID_];

  v34 = OUTLINED_FUNCTION_4_5();
  sub_1BFA862AC(v34, v35, v22);
  memcpy(v53, v54, 0xE1uLL);
  v36 = sub_1BFA2B568(v53);
  v37 = sub_1BFA074AC(v53);
  switch(v36)
  {
    case 1:
    case 3:

      goto LABEL_26;
    case 2:
      v40 = sub_1BFAAF868();
      sub_1BFA53268(v40, v41, v22);

      if (*(v37 + 16))
      {
        v42 = 0x6169646E496E6170;
      }

      else
      {
        v42 = 0x737567616DLL;
      }

      if (*(v37 + 16))
      {
        v43 = 0xE800000000000000;
      }

      else
      {
        v43 = 0xE500000000000000;
      }

      v51 = 0xD000000000000014;
      v52 = 0x80000001BFAB8DE0;
      MEMORY[0x1BFB60B80](v42, v43);

      v44 = sub_1BFAAF858();

      break;
    default:
      v38 = sub_1BFAAF868();
      sub_1BFA53268(v38, v39, v22);

LABEL_26:
      v44 = sub_1BFAAF858();
      break;
  }

  [v22 setResponseViewId_];
  v45 = OUTLINED_FUNCTION_4_5();
  sub_1BFA1B9DC(v45, v46);

  return v22;
}

BOOL sub_1BFA7D220(uint64_t a1, unint64_t a2)
{
  v2 = 0;
  v3 = 0;
  switch(a2 >> 62)
  {
    case 1uLL:
      v3 = a1;
      v2 = a1 >> 32;
      break;
    case 2uLL:
      v3 = *(a1 + 16);
      v2 = *(a1 + 24);
      break;
    case 3uLL:
      return v3 == v2;
    default:
      v3 = 0;
      v2 = BYTE6(a2);
      break;
  }

  return v3 == v2;
}

uint64_t sub_1BFA7D288@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  memset(v15, 0, sizeof(v15));
  if (qword_1EDCC6710 != -1)
  {
    swift_once();
  }

  v10 = qword_1EDCC6718;

  sub_1BFA7D53C(v10, v15, a1, a2, a3, a4, sub_1BFA8E9C8);
  sub_1BFA87E60(v15, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBA30, &unk_1BFAB5450);
  if (swift_dynamicCast())
  {
    memcpy(a5, __src, 0x70uLL);
  }

  else
  {
    memset(__src, 0, sizeof(__src));
    memset(v12, 0, sizeof(v12));
    sub_1BFA20F44(v12, &qword_1EBDFC050, qword_1BFAB6B38);
    *a5 = 0u;
    a5[1] = 0u;
    a5[2] = 0u;
    a5[3] = 0u;
    a5[4] = 0u;
    a5[5] = 0u;
    a5[6] = 0u;
  }

  return sub_1BFA20F44(v15, &qword_1EBDFBA30, &unk_1BFAB5450);
}

uint64_t sub_1BFA7D410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  memset(v14, 0, sizeof(v14));
  if (qword_1EDCC6710 != -1)
  {
    swift_once();
  }

  v8 = qword_1EDCC6718;

  sub_1BFA7D53C(v8, v14, a1, a2, a3, a4, sub_1BFA8E9C8);
  sub_1BFA87E60(v14, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBA30, &unk_1BFAB5450);
  if (swift_dynamicCast())
  {
    v10 = v12;
  }

  else
  {
    v10 = 0;
  }

  sub_1BFA20F44(v14, &qword_1EBDFBA30, &unk_1BFAB5450);
  return v10;
}

uint64_t sub_1BFA7D53C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  [a1 lock];
  if (qword_1EDCC6700 != -1)
  {
    swift_once();
  }

  v14 = a7(a3, a4, a5, a6);
  v16 = v15;
  swift_beginAccess();
  sub_1BFA2351C(v14, v16, off_1EDCC6708, v18);
  swift_endAccess();

  sub_1BFA87ED0(v18, a2);
  [a1 unlock];
}

uint64_t sub_1BFA7D65C@<X0>(void *a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = sub_1BFAAE428();
  OUTLINED_FUNCTION_2_3();
  v6 = v5;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v31 - v11;
  sub_1BFAAE7A8();
  if (sub_1BFAAE778())
  {
    sub_1BFAAE768();

    sub_1BFAAE898();

    (*(v6 + 32))(v12, v10, v4);
    v13 = sub_1BFAAE418();
    v15 = sub_1BFA7D410(0, &unk_1F3F093F8, v13, v14);
    v17 = v16;

    if (v17)
    {
      v18 = OUTLINED_FUNCTION_25_7();
      v19(v18);
      *a2 = v15;
      a2[1] = v17;
      return __swift_destroy_boxed_opaque_existential_2Tm(a1);
    }

    if (qword_1EDCC7470 != -1)
    {
      OUTLINED_FUNCTION_4(&qword_1EDCC7470);
    }

    v25 = sub_1BFAAF688();
    v26 = OUTLINED_FUNCTION_56(v25, qword_1EDCC7478);
    v27 = sub_1BFAAFB88();
    if (OUTLINED_FUNCTION_48(v27))
    {
      v28 = OUTLINED_FUNCTION_44_0();
      *v28 = 0;
      _os_log_impl(&dword_1BF9F6000, v26, v27, "Unable to retrieve cached CrossDomain dialog data", v28, 2u);
      OUTLINED_FUNCTION_94();
    }

    v29 = OUTLINED_FUNCTION_25_7();
    v30(v29);
  }

  else
  {
    if (qword_1EDCC7470 != -1)
    {
      OUTLINED_FUNCTION_4(&qword_1EDCC7470);
    }

    v21 = sub_1BFAAF688();
    v22 = OUTLINED_FUNCTION_56(v21, qword_1EDCC7478);
    v23 = sub_1BFAAFB88();
    if (OUTLINED_FUNCTION_48(v23))
    {
      v24 = OUTLINED_FUNCTION_44_0();
      *v24 = 0;
      _os_log_impl(&dword_1BF9F6000, v22, v23, "Unable to get the current Siri locale to fetch correct cached CrossDomainHint dialogs", v24, 2u);
      OUTLINED_FUNCTION_94();
    }
  }

  result = __swift_destroy_boxed_opaque_existential_2Tm(a1);
  *a2 = 0;
  a2[1] = 0;
  return result;
}

uint64_t SiriHelpSuggestion.suggestionId.setter()
{
  OUTLINED_FUNCTION_59();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t SiriHelpSuggestion.iconData.setter()
{
  OUTLINED_FUNCTION_59();

  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

uint64_t SiriHelpSuggestion.iconSymbolTintName.setter()
{
  OUTLINED_FUNCTION_59();

  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

uint64_t SiriHelpSuggestion.iconSymbolTintRGBA.setter()
{
  OUTLINED_FUNCTION_59();

  *(v1 + 56) = v2;
  *(v1 + 64) = v0;
  return result;
}

uint64_t SiriHelpSuggestion.iconAppBundleId.setter()
{
  OUTLINED_FUNCTION_59();

  *(v1 + 72) = v2;
  *(v1 + 80) = v0;
  return result;
}

uint64_t SiriHelpSuggestion.displayText.setter()
{
  OUTLINED_FUNCTION_59();

  *(v1 + 88) = v2;
  *(v1 + 96) = v0;
  return result;
}

uint64_t SiriHelpSuggestion.formattedDisplayText.setter()
{
  OUTLINED_FUNCTION_59();

  *(v1 + 104) = v2;
  *(v1 + 112) = v0;
  return result;
}

uint64_t SiriHelpSuggestion.iconSymbol.setter()
{
  OUTLINED_FUNCTION_59();

  *(v1 + 120) = v2;
  *(v1 + 128) = v0;
  return result;
}

uint64_t SiriHelpSuggestion.description.setter()
{
  OUTLINED_FUNCTION_59();

  *(v1 + 136) = v2;
  *(v1 + 144) = v0;
  return result;
}

uint64_t SiriHelpSuggestion.directInvocation.setter()
{
  OUTLINED_FUNCTION_59();

  *(v1 + 152) = v2;
  *(v1 + 160) = v0;
  return result;
}

uint64_t SiriHelpSuggestion.toDictionary()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8[1];
  v10 = *(v8 + 16);
  v11 = v8[3];
  v12 = v8[4];
  v13 = v8[6];
  v14 = v8[8];
  v242 = v8[5];
  v247 = v8[7];
  v252 = v8[10];
  v257 = *(v8 + 11);
  v227 = v8[9];
  v232 = v8[15];
  v237 = v8[17];
  v266 = v8[16];
  v271 = v8[18];
  v276 = v8[19];
  v281 = v8[20];
  if (v9)
  {
    v15 = *v8;
    v295 = MEMORY[0x1E69E6158];
    *&v293 = v15;
    *(&v293 + 1) = v9;
    OUTLINED_FUNCTION_56_3(a1, a2, a3, a4, a5, a6, a7, a8, v222, v227, v232, v237, v242, v247, v252, v257, *(&v257 + 1), v266, v271, v276, v281, v286, v292[0]);

    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_10_9();
    v17 = sub_1BFA26704(v16, 0x6974736567677573);
    v25 = v286;
  }

  else
  {
    OUTLINED_FUNCTION_55_4();
    sub_1BFA20F44(&v293, &qword_1EBDFBA30, &unk_1BFAB5450);
    v25 = MEMORY[0x1E69E7CC8];
    sub_1BFA01764(0x6974736567677573, 0xEC00000064496E6FLL);
    if (v26)
    {
      OUTLINED_FUNCTION_45_3();
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_67_4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB8A0, &unk_1BFAB1960);
      OUTLINED_FUNCTION_27_7();
      sub_1BFAAFCD8();
      v27 = OUTLINED_FUNCTION_17_5();
      OUTLINED_FUNCTION_34_6(v27, v28, v29, v30, v31, v32, v33, v34, v222, v227, v232, v237, v242, v247);
      sub_1BFAAFCF8();
    }

    else
    {
      OUTLINED_FUNCTION_46_4();
    }

    v17 = sub_1BFA20F44(v292, &qword_1EBDFBA30, &unk_1BFAB5450);
  }

  if (v10 == 2)
  {
    sub_1BFA01764(0x6E6F6349776F6873, 0xE800000000000000);
    if (v35)
    {
      OUTLINED_FUNCTION_45_3();
      swift_isUniquelyReferenced_nonNull_native();
      *&v292[0] = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB8A0, &unk_1BFAB1960);
      sub_1BFAAFCD8();
      v36 = *&v292[0];

      sub_1BFA27FE0((*(v36 + 56) - 0x321396D11212F1A0), &v293);
      sub_1BFAAFCF8();
    }

    else
    {
      OUTLINED_FUNCTION_55_4();
    }

    v38 = sub_1BFA20F44(&v293, &qword_1EBDFBA30, &unk_1BFAB5450);
  }

  else
  {
    v295 = MEMORY[0x1E69E6370];
    LOBYTE(v293) = v10 & 1;
    OUTLINED_FUNCTION_56_3(v17, v18, v19, v20, v21, v22, v23, v24, v222, v227, v232, v237, v242, v247, v252, v257, *(&v257 + 1), v266, v271, v276, v281, v286, v292[0]);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_10_9();
    v38 = sub_1BFA26704(v37, 0x6E6F6349776F6873);
  }

  if (v12)
  {
    v295 = MEMORY[0x1E69E6158];
    *&v293 = v11;
    *(&v293 + 1) = v12;
    OUTLINED_FUNCTION_56_3(v38, v39, v40, v41, v42, v43, v44, v45, v222, v227, v232, v237, v242, v247, v252, v257, *(&v257 + 1), v266, v271, v276, v281, v286, v292[0]);

    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_10_9();
    v47 = sub_1BFA26704(v46, 0x617461446E6F6369);
    v55 = v252;
  }

  else
  {
    OUTLINED_FUNCTION_55_4();
    sub_1BFA20F44(&v293, &qword_1EBDFBA30, &unk_1BFAB5450);
    sub_1BFA01764(0x617461446E6F6369, 0xE800000000000000);
    if (v56)
    {
      OUTLINED_FUNCTION_45_3();
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_67_4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB8A0, &unk_1BFAB1960);
      OUTLINED_FUNCTION_27_7();
      sub_1BFAAFCD8();
      v57 = OUTLINED_FUNCTION_17_5();
      v65 = OUTLINED_FUNCTION_34_6(v57, v58, v59, v60, v61, v62, v63, v64, v222, v227, v232, v237, v242, v247);
      OUTLINED_FUNCTION_43_3(v65, v66, MEMORY[0x1E69E6158]);
    }

    else
    {
      OUTLINED_FUNCTION_46_4();
    }

    v55 = v252;
    v47 = sub_1BFA20F44(v292, &qword_1EBDFBA30, &unk_1BFAB5450);
  }

  v67 = v242;
  if (v13)
  {
    v68 = MEMORY[0x1E69E6158];
    v69 = v13;
  }

  else
  {
    OUTLINED_FUNCTION_42_2();
    v294 = 0;
  }

  *&v293 = v67;
  *(&v293 + 1) = v69;
  v295 = v68;
  if (v13)
  {
    OUTLINED_FUNCTION_56_3(v47, v48, v49, v50, v51, v52, v53, v54, v222, v227, v232, v237, v242, v247, v252, v257, *(&v257 + 1), v266, v271, v276, v281, v286, v292[0]);

    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_37_3();
    v78 = OUTLINED_FUNCTION_62_1(v70, v71, v72, v73, v74, v75, v76, v77, v223, v228, v233, v238, v243, v248, v253, v258, v262, v267, v272, v277, v282, v287, v292[0]);
    v79 = sub_1BFA26704(v78, 0xD000000000000012);
    v87 = MEMORY[0x1E69E6158];
  }

  else
  {

    sub_1BFA20F44(&v293, &qword_1EBDFBA30, &unk_1BFAB5450);
    sub_1BFA01764(0xD000000000000012, 0x80000001BFAB98C0);
    if (v88)
    {
      OUTLINED_FUNCTION_45_3();
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_67_4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB8A0, &unk_1BFAB1960);
      OUTLINED_FUNCTION_27_7();
      sub_1BFAAFCD8();
      v89 = OUTLINED_FUNCTION_17_5();
      v97 = OUTLINED_FUNCTION_34_6(v89, v90, v91, v92, v93, v94, v95, v96, v222, v227, v232, v237, v242, v247);
      OUTLINED_FUNCTION_43_3(v97, v98, MEMORY[0x1E69E6158]);
    }

    else
    {
      OUTLINED_FUNCTION_46_4();
    }

    v87 = MEMORY[0x1E69E6158];
    v79 = sub_1BFA20F44(v292, &qword_1EBDFBA30, &unk_1BFAB5450);
  }

  v99 = v247;
  if (v14)
  {
    v100 = MEMORY[0x1E69E6158];
    v101 = v14;
  }

  else
  {
    OUTLINED_FUNCTION_42_2();
    v294 = 0;
  }

  *&v293 = v99;
  *(&v293 + 1) = v101;
  v295 = v100;
  if (v14)
  {
    OUTLINED_FUNCTION_56_3(v79, v80, v81, v82, v83, v84, v85, v86, v222, v227, v232, v237, v242, v247, v252, v257, *(&v257 + 1), v266, v271, v276, v281, v286, v292[0]);

    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_37_3();
    v110 = OUTLINED_FUNCTION_62_1(v102, v103, v104, v105, v106, v107, v108, v109, v224, v229, v234, v239, v244, v249, v254, v259, v263, v268, v273, v278, v283, v288, v292[0]);
    v111 = sub_1BFA26704(v110, 0xD000000000000012);
    v119 = v271;
  }

  else
  {

    sub_1BFA20F44(&v293, &qword_1EBDFBA30, &unk_1BFAB5450);
    sub_1BFA01764(0xD000000000000012, 0x80000001BFAB98E0);
    if (v120)
    {
      OUTLINED_FUNCTION_45_3();
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_67_4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB8A0, &unk_1BFAB1960);
      OUTLINED_FUNCTION_27_7();
      sub_1BFAAFCD8();
      v121 = OUTLINED_FUNCTION_17_5();
      v129 = OUTLINED_FUNCTION_34_6(v121, v122, v123, v124, v125, v126, v127, v128, v222, v227, v232, v237, v242, v247);
      OUTLINED_FUNCTION_43_3(v129, v130, MEMORY[0x1E69E6158]);
    }

    else
    {
      OUTLINED_FUNCTION_46_4();
    }

    v119 = v271;
    v111 = sub_1BFA20F44(v292, &qword_1EBDFBA30, &unk_1BFAB5450);
  }

  if (v55)
  {
    v295 = v87;
    *&v293 = v227;
    *(&v293 + 1) = v55;
    OUTLINED_FUNCTION_56_3(v111, v112, v113, v114, v115, v116, v117, v118, v222, v227, v232, v237, v242, v247, v252, v257, *(&v257 + 1), v266, v271, v276, v281, v286, v292[0]);

    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_10_9();
    v132 = sub_1BFA26704(v131, 0x427070416E6F6369);
    v140 = v266;
  }

  else
  {
    OUTLINED_FUNCTION_55_4();
    sub_1BFA20F44(&v293, &qword_1EBDFBA30, &unk_1BFAB5450);
    sub_1BFA01764(0x427070416E6F6369, 0xEF6449656C646E75);
    if (v141)
    {
      OUTLINED_FUNCTION_45_3();
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_67_4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB8A0, &unk_1BFAB1960);
      OUTLINED_FUNCTION_27_7();
      sub_1BFAAFCD8();
      v142 = OUTLINED_FUNCTION_17_5();
      v150 = OUTLINED_FUNCTION_34_6(v142, v143, v144, v145, v146, v147, v148, v149, v222, v227, v232, v237, v242, v247);
      OUTLINED_FUNCTION_43_3(v150, v151, MEMORY[0x1E69E6158]);
    }

    else
    {
      OUTLINED_FUNCTION_46_4();
    }

    v140 = v266;
    v132 = sub_1BFA20F44(v292, &qword_1EBDFBA30, &unk_1BFAB5450);
  }

  v295 = v87;
  v293 = v257;
  OUTLINED_FUNCTION_56_3(v132, v133, v134, v135, v136, v137, v138, v139, v222, v227, v232, v237, v242, v247, v252, v257, *(&v257 + 1), v266, v271, v276, v281, v286, v292[0]);

  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_37_3();
  v152 = sub_1BFA26704(v292, 0x5479616C70736964);
  v160 = v289;
  if (v140)
  {
    v295 = v87;
    *&v293 = v235;
    *(&v293 + 1) = v140;
    OUTLINED_FUNCTION_56_3(v152, v153, v154, v155, v156, v157, v158, v159, v225, v230, v235, v240, v245, v250, v255, v260, v264, v269, v274, v279, v284, v289, v292[0]);

    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_10_9();
    v162 = sub_1BFA26704(v161, 0x626D79536E6F6369);
    v160 = v289;
  }

  else
  {
    OUTLINED_FUNCTION_55_4();
    sub_1BFA20F44(&v293, &qword_1EBDFBA30, &unk_1BFAB5450);
    sub_1BFA01764(0x626D79536E6F6369, 0xEA00000000006C6FLL);
    if (v170)
    {
      OUTLINED_FUNCTION_45_3();
      swift_isUniquelyReferenced_nonNull_native();
      v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB8A0, &unk_1BFAB1960);
      OUTLINED_FUNCTION_89_3(v171);
      v172 = OUTLINED_FUNCTION_17_5();
      v180 = OUTLINED_FUNCTION_34_6(v172, v173, v174, v175, v176, v177, v178, v179, v225, v230, v235, v240, v245, v250);
      OUTLINED_FUNCTION_43_3(v180, v181, MEMORY[0x1E69E6158]);
    }

    else
    {
      OUTLINED_FUNCTION_46_4();
    }

    v162 = sub_1BFA20F44(v292, &qword_1EBDFBA30, &unk_1BFAB5450);
  }

  if (v119)
  {
    v295 = v87;
    *&v293 = v240;
    *(&v293 + 1) = v119;
    OUTLINED_FUNCTION_56_3(v162, v163, v164, v165, v166, v167, v168, v169, v225, v230, v235, v240, v245, v250, v255, v260, v264, v269, v274, v279, v284, v289, v292[0]);

    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_10_9();
    v183 = sub_1BFA26704(v182, 0x7470697263736564);
    v191 = v284;
    v160 = v289;
  }

  else
  {
    OUTLINED_FUNCTION_55_4();
    sub_1BFA20F44(&v293, &qword_1EBDFBA30, &unk_1BFAB5450);
    v192 = OUTLINED_FUNCTION_4_5();
    sub_1BFA01764(v192, v193);
    if (v194)
    {
      OUTLINED_FUNCTION_45_3();
      swift_isUniquelyReferenced_nonNull_native();
      v289 = v160;
      v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB8A0, &unk_1BFAB1960);
      OUTLINED_FUNCTION_89_3(v195);
      v196 = OUTLINED_FUNCTION_17_5();
      v204 = OUTLINED_FUNCTION_34_6(v196, v197, v198, v199, v200, v201, v202, v203, v225, v230, v235, v240, v245, v250);
      OUTLINED_FUNCTION_43_3(v204, v205, MEMORY[0x1E69E6158]);
    }

    else
    {
      OUTLINED_FUNCTION_46_4();
    }

    v191 = v284;
    v183 = sub_1BFA20F44(v292, &qword_1EBDFBA30, &unk_1BFAB5450);
  }

  v206 = v279;
  if (v191)
  {
    v207 = MEMORY[0x1E69E6158];
    v208 = v191;
  }

  else
  {
    OUTLINED_FUNCTION_42_2();
    v294 = 0;
  }

  *&v293 = v206;
  *(&v293 + 1) = v208;
  v295 = v207;
  if (v191)
  {
    OUTLINED_FUNCTION_56_3(v183, v184, v185, v186, v187, v188, v189, v190, v225, v230, v235, v240, v245, v250, v255, v260, v264, v269, v274, v279, v284, v289, v292[0]);

    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_37_3();
    v216 = OUTLINED_FUNCTION_62_1(v209, 0xD000000000000010, v210, v211, v212, v213, v214, v215, v226, v231, v236, v241, v246, v251, v256, v261, v265, v270, v275, v280, v285, v290, v292[0]);
    sub_1BFA26704(v216, v217);
    return v291;
  }

  else
  {

    sub_1BFA20F44(&v293, &qword_1EBDFBA30, &unk_1BFAB5450);
    v218 = sub_1BFA01764(0xD000000000000010, 0x80000001BFAB9900);
    if (v219)
    {
      v220 = v218;
      swift_isUniquelyReferenced_nonNull_native();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB8A0, &unk_1BFAB1960);
      sub_1BFAAFCD8();

      sub_1BFA27FE0((*(v160 + 56) + 32 * v220), v292);
      OUTLINED_FUNCTION_96();
      sub_1BFAAFCF8();
    }

    else
    {
      OUTLINED_FUNCTION_46_4();
    }

    sub_1BFA20F44(v292, &qword_1EBDFBA30, &unk_1BFAB5450);
  }

  return v160;
}

void __swiftcall SiriHelpSuggestion.init(displayText:)(SiriSuggestionsAPI::SiriHelpSuggestion *__return_ptr retstr, Swift::String displayText)
{
  retstr->suggestionId.value._countAndFlagsBits = 0;
  retstr->suggestionId.value._object = 0;
  retstr->showIcon.value = 2;
  retstr->iconData = 0u;
  retstr->iconSymbolTintName = 0u;
  retstr->iconSymbolTintRGBA = 0u;
  retstr->iconAppBundleId = 0u;
  retstr->formattedDisplayText = 0u;
  retstr->iconSymbol = 0u;
  retstr->description = 0u;
  retstr->directInvocation = 0u;
  retstr->displayText = displayText;
}

uint64_t sub_1BFA7E840(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6974736567677573 && a2 == 0xEC00000064496E6FLL;
  if (v4 || (sub_1BFAAFF08() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E6F6349776F6873 && a2 == 0xE800000000000000;
    if (v6 || (sub_1BFAAFF08() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x617461446E6F6369 && a2 == 0xE800000000000000;
      if (v7 || (sub_1BFAAFF08() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000012 && 0x80000001BFAB98C0 == a2;
        if (v8 || (sub_1BFAAFF08() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000012 && 0x80000001BFAB98E0 == a2;
          if (v9 || (sub_1BFAAFF08() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x427070416E6F6369 && a2 == 0xEF6449656C646E75;
            if (v10 || (sub_1BFAAFF08() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x5479616C70736964 && a2 == 0xEB00000000747865;
              if (v11 || (sub_1BFAAFF08() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000014 && 0x80000001BFAB9A20 == a2;
                if (v12 || (sub_1BFAAFF08() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x626D79536E6F6369 && a2 == 0xEA00000000006C6FLL;
                  if (v13 || (sub_1BFAAFF08() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69;
                    if (v14 || (sub_1BFAAFF08() & 1) != 0)
                    {

                      return 9;
                    }

                    else if (a1 == 0xD000000000000010 && 0x80000001BFAB9900 == a2)
                    {

                      return 10;
                    }

                    else
                    {
                      v16 = sub_1BFAAFF08();

                      if (v16)
                      {
                        return 10;
                      }

                      else
                      {
                        return 11;
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

unint64_t sub_1BFA7EBBC(char a1)
{
  result = 0x6974736567677573;
  switch(a1)
  {
    case 1:
      result = 0x6E6F6349776F6873;
      break;
    case 2:
      result = 0x617461446E6F6369;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    case 5:
      result = 0x427070416E6F6369;
      break;
    case 6:
      result = 0x5479616C70736964;
      break;
    case 7:
      result = 0xD000000000000014;
      break;
    case 8:
      result = 0x626D79536E6F6369;
      break;
    case 9:
      result = 0x7470697263736564;
      break;
    case 10:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1BFA7ED28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BFA7E840(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BFA7ED50@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BFA7EBB4();
  *a1 = result;
  return result;
}

uint64_t sub_1BFA7ED78(uint64_t a1)
{
  v2 = sub_1BFA859D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BFA7EDB4(uint64_t a1)
{
  v2 = sub_1BFA859D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SiriHelpSuggestion.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_52_5();
  v45 = v24;
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBE58, &qword_1BFAB5460);
  OUTLINED_FUNCTION_2_3();
  v29 = v28;
  OUTLINED_FUNCTION_73();
  MEMORY[0x1EEE9AC00](v30);
  v32 = v43 - v31;
  v44 = *(v23 + 16);
  v33 = *(v23 + 24);
  v43[16] = *(v23 + 32);
  v43[17] = v33;
  v34 = *(v23 + 40);
  v43[14] = *(v23 + 48);
  v43[15] = v34;
  v35 = *(v23 + 56);
  v43[12] = *(v23 + 64);
  v43[13] = v35;
  v36 = *(v23 + 80);
  v43[10] = *(v23 + 72);
  v43[11] = v36;
  v37 = *(v23 + 96);
  v43[8] = *(v23 + 88);
  v43[9] = v37;
  v38 = *(v23 + 112);
  v43[6] = *(v23 + 104);
  v43[7] = v38;
  v39 = *(v23 + 128);
  v43[4] = *(v23 + 120);
  v43[5] = v39;
  v40 = *(v23 + 144);
  v43[2] = *(v23 + 136);
  v43[3] = v40;
  v41 = *(v23 + 160);
  v43[0] = *(v23 + 152);
  v43[1] = v41;
  OUTLINED_FUNCTION_83_1(v26, v26[3]);
  sub_1BFA859D0();
  sub_1BFAB0008();
  v42 = v45;
  sub_1BFAAFE38();
  if (!v42)
  {
    sub_1BFAAFE48();
    OUTLINED_FUNCTION_38_4();
    sub_1BFAAFE38();
    OUTLINED_FUNCTION_38_4();
    sub_1BFAAFE38();
    OUTLINED_FUNCTION_38_4();
    sub_1BFAAFE38();
    OUTLINED_FUNCTION_38_4();
    sub_1BFAAFE38();
    OUTLINED_FUNCTION_38_4();
    sub_1BFAAFE78();
    OUTLINED_FUNCTION_30_5(7);
    OUTLINED_FUNCTION_38_4();
    sub_1BFAAFE38();
    v48 = 8;
    OUTLINED_FUNCTION_38_4();
    sub_1BFAAFE38();
    v47 = 9;
    OUTLINED_FUNCTION_38_4();
    sub_1BFAAFE38();
    v46 = 10;
    OUTLINED_FUNCTION_38_4();
    sub_1BFAAFE38();
  }

  (*(v29 + 8))(v32, v27);
  OUTLINED_FUNCTION_65_2();
  OUTLINED_FUNCTION_51_3();
}

void SiriHelpSuggestion.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_52_5();
  v26 = v25;
  v28 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBE68, &qword_1BFAB5468);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_73();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_61_3();
  v62 = v26;
  OUTLINED_FUNCTION_83_1(v26, v26[3]);
  sub_1BFA859D0();
  sub_1BFAAFFF8();
  if (v24)
  {
    OUTLINED_FUNCTION_12_10();
    __swift_destroy_boxed_opaque_existential_2Tm(v26);

    if (v26)
    {
    }
  }

  else
  {
    v30 = v28;
    LOBYTE(v67[0]) = 0;
    v31 = sub_1BFAAFD88();
    v60 = v32;
    OUTLINED_FUNCTION_3_11(1);
    v87 = sub_1BFAAFD98();
    OUTLINED_FUNCTION_3_11(2);
    v58 = sub_1BFAAFD88();
    v59 = v33;
    OUTLINED_FUNCTION_3_11(3);
    v56 = sub_1BFAAFD88();
    v57 = v34;
    OUTLINED_FUNCTION_3_11(4);
    v54 = sub_1BFAAFD88();
    v55 = v35;
    OUTLINED_FUNCTION_3_11(5);
    v52 = sub_1BFAAFD88();
    v53 = v36;
    OUTLINED_FUNCTION_3_11(6);
    v51 = sub_1BFAAFDC8();
    v61 = v37;
    OUTLINED_FUNCTION_3_11(7);
    v50 = sub_1BFAAFD88();
    v63 = v38;
    OUTLINED_FUNCTION_3_11(8);
    v49 = sub_1BFAAFD88();
    v65 = v39;
    OUTLINED_FUNCTION_3_11(9);
    v40 = sub_1BFAAFD88();
    v64 = v41;
    v42 = v40;
    v43 = sub_1BFAAFD88();
    v48 = v44;
    v45 = v43;
    v46 = OUTLINED_FUNCTION_32_6();
    v47(v46);
    v66[0] = v31;
    v66[1] = v60;
    LOBYTE(v66[2]) = v87;
    v66[3] = v58;
    v66[4] = v59;
    v66[5] = v56;
    v66[6] = v57;
    v66[7] = v54;
    v66[8] = v55;
    v66[9] = v52;
    v66[10] = v53;
    v66[11] = v51;
    v66[12] = v61;
    v66[13] = v50;
    v66[14] = v63;
    v66[15] = v49;
    v66[16] = v65;
    v66[17] = v42;
    v66[18] = v64;
    v66[19] = v45;
    v66[20] = v48;
    memcpy(v30, v66, 0xA8uLL);
    sub_1BFA85A24(v66, v67);
    __swift_destroy_boxed_opaque_existential_2Tm(v62);
    v67[0] = v31;
    v67[1] = v60;
    v68 = v87;
    v69 = v58;
    v70 = v59;
    v71 = v56;
    v72 = v57;
    v73 = v54;
    v74 = v55;
    v75 = v52;
    v76 = v53;
    v77 = v51;
    v78 = v61;
    v79 = v50;
    v80 = v63;
    v81 = v49;
    v82 = v65;
    v83 = v42;
    v84 = v64;
    v85 = v45;
    v86 = v48;
    sub_1BFA85A5C(v67);
  }

  OUTLINED_FUNCTION_65_2();
  OUTLINED_FUNCTION_51_3();
}

uint64_t SiriHelpPatternParameters.speakSuggestions.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t SiriHelpPatternParameters.suggestions.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t SiriHelpPatternParameters.otherSuggestions.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t SiriHelpPatternParameters.appBundleId.setter()
{
  OUTLINED_FUNCTION_59();

  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

uint64_t SiriHelpPatternParameters.moreSuggestionsDirectInvocation.setter()
{
  OUTLINED_FUNCTION_59();

  *(v1 + 56) = v2;
  *(v1 + 64) = v0;
  return result;
}

uint64_t SiriHelpPatternParameters.learnMorePunchout.setter()
{
  OUTLINED_FUNCTION_59();

  *(v1 + 72) = v2;
  *(v1 + 80) = v0;
  return result;
}

uint64_t SiriHelpPatternParameters.appName.setter(uint64_t a1)
{

  *(v1 + 88) = a1;
  return result;
}

uint64_t SiriHelpPatternParameters.expectedAppName.setter(uint64_t a1)
{

  *(v1 + 96) = a1;
  return result;
}

double SiriHelpPatternParameters.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  v1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = 0;
  *(a1 + 16) = v1;
  *(a1 + 24) = v1;
  *(a1 + 32) = 0;
  strcpy((a1 + 40), "com.apple.siri");
  *(a1 + 55) = -18;
  result = 0.0;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0;
  return result;
}

uint64_t SiriHelpPatternParameters.asDictionary.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *v8;
  v10 = *(v8 + 1);
  v11 = *(v8 + 2);
  v12 = *(v8 + 3);
  HIDWORD(v185) = v8[32];
  v195 = *(v8 + 5);
  v205 = *(v8 + 6);
  v225 = *(v8 + 7);
  v235 = *(v8 + 8);
  v245 = *(v8 + 9);
  v255 = *(v8 + 10);
  v13 = *(v8 + 11);
  v215 = *(v8 + 12);
  HIDWORD(v275) = v8[105];
  LODWORD(v285) = v8[106];
  HIDWORD(v285) = v8[107];
  *&__dst[24] = MEMORY[0x1E69E6370];
  __dst[0] = v9;
  OUTLINED_FUNCTION_53_5(a1, a2, a3, a4, a5, a6, a7, a8, v185, v195, v205, v215, v225, v235, v245, v255, v265, v275, v285, v295, *__dst);

  v14 = MEMORY[0x1E69E7CC8];
  swift_isUniquelyReferenced_nonNull_native();
  v306 = v14;
  sub_1BFA26704(&v307, 0xD000000000000015);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB560, &qword_1BFAB5470);
  v23 = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v24 = v10;
  }

  else
  {
    v24 = MEMORY[0x1E69E7CC0];
  }

  *&__dst[24] = v15;
  *__dst = v24;
  OUTLINED_FUNCTION_53_5(v15, v16, v17, v18, v19, v20, v21, v22, v186, v196, v206, v216, v226, v236, v246, v256, v266, v276, v286, v296, *__dst);
  swift_isUniquelyReferenced_nonNull_native();
  v306 = v14;
  OUTLINED_FUNCTION_66_3();
  sub_1BFA26704(v25, 0xD000000000000010);
  v26 = *(v11 + 16);
  v267 = v26;
  if (v26)
  {
    *&v307 = v23;
    sub_1BFA2DD28(0, v26, 0);
    v23 = v307;
    v27 = (v11 + 32);
    v28 = v26;
    do
    {
      v29 = memcpy(__dst, v27, sizeof(__dst));
      v37 = SiriHelpSuggestion.toDictionary()(v29, v30, v31, v32, v33, v34, v35, v36);
      *&v307 = v23;
      v39 = *(v23 + 16);
      v38 = *(v23 + 24);
      if (v39 >= v38 >> 1)
      {
        sub_1BFA2DD28((v38 > 1), v39 + 1, 1);
        v23 = v307;
      }

      *(v23 + 16) = v39 + 1;
      *(v23 + 8 * v39 + 32) = v37;
      v27 += 168;
      --v28;
    }

    while (v28);
  }

  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBE70, &unk_1BFAB5478);
  *&__dst[24] = v40;
  *__dst = v23;
  OUTLINED_FUNCTION_53_5(v40, v41, v42, v43, v44, v45, v46, v47, v187, v197, v207, v217, v227, v237, v247, v257, v267, v277, v287, v297, *__dst);
  swift_isUniquelyReferenced_nonNull_native();
  v306 = v14;
  v48 = sub_1BFA26704(&v307, 0x6974736567677573);
  v56 = v306;
  v57 = *(v12 + 16);
  v58 = MEMORY[0x1E69E7CC0];
  if (v57)
  {
    *&v307 = MEMORY[0x1E69E7CC0];
    sub_1BFA2DD28(0, v57, 0);
    v58 = v307;
    v59 = (v12 + 32);
    do
    {
      v60 = memcpy(__dst, v59, sizeof(__dst));
      v48 = SiriHelpSuggestion.toDictionary()(v60, v61, v62, v63, v64, v65, v66, v67);
      v68 = v48;
      *&v307 = v58;
      v70 = *(v58 + 16);
      v69 = *(v58 + 24);
      if (v70 >= v69 >> 1)
      {
        v48 = sub_1BFA2DD28((v69 > 1), v70 + 1, 1);
        v58 = v307;
      }

      *(v58 + 16) = v70 + 1;
      *(v58 + 8 * v70 + 32) = v68;
      v59 += 168;
      --v57;
    }

    while (v57);
  }

  *&__dst[24] = v40;
  *__dst = v58;
  OUTLINED_FUNCTION_53_5(v48, v49, v50, v51, v52, v53, v54, v55, v188, v198, v208, v218, v228, v238, v248, v258, v268, v278, v288, v298, *__dst);
  swift_isUniquelyReferenced_nonNull_native();
  v306 = v56;
  OUTLINED_FUNCTION_66_3();
  v72 = sub_1BFA26704(v71, 0xD000000000000010);
  v73 = MEMORY[0x1E69E6370];
  *&__dst[24] = MEMORY[0x1E69E6370];
  __dst[0] = BYTE4(v189);
  OUTLINED_FUNCTION_53_5(v72, v74, v75, v76, v77, v78, v79, v80, v189, v199, v209, v219, v229, v239, v249, v259, v269, v279, v289, v299, *__dst);
  swift_isUniquelyReferenced_nonNull_native();
  v81 = OUTLINED_FUNCTION_63_4();
  v82 = sub_1BFA26704(v81, 0xD000000000000019);
  v83 = v306;
  *&__dst[24] = MEMORY[0x1E69E6158];
  *__dst = v200;
  *&__dst[8] = v210;
  OUTLINED_FUNCTION_53_5(v82, v84, v85, v86, v87, v88, v89, v90, v190, v200, v210, v220, v230, v240, v250, v260, v270, v280, v290, v300, *__dst);

  swift_isUniquelyReferenced_nonNull_native();
  v306 = v83;
  v91 = sub_1BFA26704(&v307, 0x6C646E7542707061);
  v99 = v306;
  v100 = v221;
  if (v13)
  {
    v306 = v13;
    sub_1BFAAE9A8();
    sub_1BFA85A8C();

    v101 = sub_1BFAAE9E8();
    *&__dst[24] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB958, &unk_1BFAB1EE0);
    *__dst = v101;
    OUTLINED_FUNCTION_53_5(*&__dst[24], v102, v103, v104, v105, v106, v107, v108, v191, v201, v211, v221, v231, v241, v251, v261, v271, v281, v291, v301, *__dst);
    swift_isUniquelyReferenced_nonNull_native();
    v301 = v99;
    sub_1BFA26704(&v307, 0x656D614E707061);
  }

  if (v100)
  {
    v306 = v100;
    sub_1BFAAE9A8();
    sub_1BFA85A8C();

    v109 = sub_1BFAAE9E8();
    *&__dst[24] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB958, &unk_1BFAB1EE0);
    *__dst = v109;
    OUTLINED_FUNCTION_53_5(*&__dst[24], v110, v111, v112, v113, v114, v115, v116, v191, v201, v211, v221, v231, v241, v251, v261, v271, v281, v291, v301, *__dst);
    swift_isUniquelyReferenced_nonNull_native();
    v301 = v99;
    sub_1BFA26704(&v307, 0x6465746365707865);
  }

  v117 = v231;
  if (v241)
  {
    v118 = MEMORY[0x1E69E6158];
    v119 = v241;
  }

  else
  {
    OUTLINED_FUNCTION_42_2();
    *&__dst[16] = 0;
  }

  *__dst = v117;
  *&__dst[8] = v119;
  *&__dst[24] = v118;
  if (v241)
  {
    OUTLINED_FUNCTION_53_5(v91, v92, v93, v94, v95, v96, v97, v98, v191, v201, v211, v221, v231, v241, v251, v261, v271, v281, v291, v301, *__dst);

    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_64_2();
    OUTLINED_FUNCTION_66_3();
    v122 = sub_1BFA26704(v120, v121);
    v99 = v306;
    v130 = v251;
    v131 = v261;
    if (v261)
    {
LABEL_23:
      v132 = MEMORY[0x1E69E6158];
      v133 = v131;
      goto LABEL_29;
    }
  }

  else
  {

    sub_1BFA20F44(__dst, &qword_1EBDFBA30, &unk_1BFAB5450);
    v134 = sub_1BFA01764(0xD00000000000001FLL, 0x80000001BFAB9980);
    if (v135)
    {
      v136 = v134;
      swift_isUniquelyReferenced_nonNull_native();
      v306 = v99;
      v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB8A0, &unk_1BFAB1960);
      OUTLINED_FUNCTION_88_2(v137);
      OUTLINED_FUNCTION_87_1();
      sub_1BFA27FE0((*(v99 + 56) + 32 * v136), &v307);
      sub_1BFAAFCF8();
    }

    else
    {
      v307 = 0u;
      v308 = 0u;
    }

    v130 = v251;
    v131 = v261;
    v122 = sub_1BFA20F44(&v307, &qword_1EBDFBA30, &unk_1BFAB5450);
    if (v261)
    {
      goto LABEL_23;
    }
  }

  v130 = 0;
  v133 = 0;
  v132 = 0;
  *&__dst[16] = 0;
LABEL_29:
  *__dst = v130;
  *&__dst[8] = v133;
  *&__dst[24] = v132;
  if (v131)
  {
    OUTLINED_FUNCTION_53_5(v122, v123, v124, v125, v126, v127, v128, v129, v191, v201, v211, v221, v231, v241, v251, v261, v271, v281, v291, v301, *__dst);

    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_64_2();
    OUTLINED_FUNCTION_66_3();
    v140 = sub_1BFA26704(v138, v139);
    v149 = v291;
    v148 = BYTE4(v291);
    v150 = BYTE4(v281);
  }

  else
  {

    sub_1BFA20F44(__dst, &qword_1EBDFBA30, &unk_1BFAB5450);
    v151 = sub_1BFA01764(0xD000000000000011, 0x80000001BFAB99A0);
    if (v152)
    {
      v153 = v151;
      swift_isUniquelyReferenced_nonNull_native();
      v306 = v99;
      v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB8A0, &unk_1BFAB1960);
      OUTLINED_FUNCTION_88_2(v154);
      OUTLINED_FUNCTION_87_1();
      sub_1BFA27FE0((*(v99 + 56) + 32 * v153), &v307);
      sub_1BFAAFCF8();
    }

    else
    {
      v307 = 0u;
      v308 = 0u;
    }

    v149 = v291;
    v148 = BYTE4(v291);
    v150 = BYTE4(v281);
    v140 = sub_1BFA20F44(&v307, &qword_1EBDFBA30, &unk_1BFAB5450);
  }

  *&__dst[24] = v73;
  __dst[0] = v150;
  OUTLINED_FUNCTION_53_5(v140, v141, v142, v143, v144, v145, v146, v147, v191, v201, v211, v221, v231, v241, v251, v261, v271, v281, v291, v301, *__dst);
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_64_2();
  OUTLINED_FUNCTION_66_3();
  v157 = sub_1BFA26704(v155, v156);
  *&__dst[24] = MEMORY[0x1E69E6530];
  *__dst = v272;
  OUTLINED_FUNCTION_53_5(v157, v158, v159, v160, v161, v162, v163, v164, v192, v202, v212, v222, v232, v242, v252, v262, v272, v282, v292, v302, *__dst);
  swift_isUniquelyReferenced_nonNull_native();
  v165 = OUTLINED_FUNCTION_63_4();
  v166 = sub_1BFA26704(v165, 0xD000000000000013);
  v167 = v306;
  *&__dst[24] = v73;
  __dst[0] = v149;
  OUTLINED_FUNCTION_53_5(v166, v168, v169, v170, v171, v172, v173, v174, v193, v203, v213, v223, v233, v243, v253, v263, v273, v283, v293, v303, *__dst);
  swift_isUniquelyReferenced_nonNull_native();
  v306 = v167;
  v175 = sub_1BFA26704(&v307, 0x61626C6C61467369);
  *&__dst[24] = v73;
  __dst[0] = v148;
  OUTLINED_FUNCTION_53_5(v175, v176, v177, v178, v179, v180, v181, v182, v194, v204, v214, v224, v234, v244, v254, v264, v274, v284, v294, v304, *__dst);
  swift_isUniquelyReferenced_nonNull_native();
  v183 = OUTLINED_FUNCTION_63_4();
  sub_1BFA26704(v183, 0xD000000000000012);
  return v306;
}

uint64_t static SuggestionsRFDataModels.bundleName.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_84_2(a1);

  return OUTLINED_FUNCTION_93();
}

uint64_t static SuggestionsRFDataModels.bundleName.setter(uint64_t a1, char *a2)
{
  OUTLINED_FUNCTION_85_2(a1);
  qword_1EBDFBE38 = a1;
  off_1EBDFBE40 = a2;
}

uint64_t (*static SuggestionsRFDataModels.bundleName.modify())(uint64_t a1)
{
  OUTLINED_FUNCTION_93();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1BFA80340@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = off_1EBDFBE40;
  *a1 = qword_1EBDFBE38;
  a1[1] = v2;
}

uint64_t sub_1BFA80390(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  qword_1EBDFBE38 = v2;
  off_1EBDFBE40 = v1;
}

uint64_t sub_1BFA803F4()
{
  v0 = sub_1BFAAE308();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = v16 - v6;
  v8 = MEMORY[0x1BFB61290](v5);
  sub_1BFAAF868();

  sub_1BFAAE2A8();

  v16[1] = 0;
  v16[2] = 0xE000000000000000;
  sub_1BFAAFC48();

  v16[4] = 0xD000000000000022;
  v16[5] = 0x80000001BFAB9C90;
  swift_beginAccess();
  v9 = qword_1EBDFBE38;
  v10 = off_1EBDFBE40;

  MEMORY[0x1BFB60B80](v9, v10);

  MEMORY[0x1BFB60B80](0x656C646E75622ELL, 0xE700000000000000);
  sub_1BFAAE2C8();

  v11 = *(v1 + 8);
  v11(v4, v0);
  v12 = sub_1BFAAE2E8();
  v14 = v13;
  result = (v11)(v7, v0);
  qword_1EBDFBE48 = v12;
  qword_1EBDFBE50 = v14;
  return result;
}

uint64_t *sub_1BFA805F8()
{
  if (qword_1EBDFB508 != -1)
  {
    OUTLINED_FUNCTION_9_6(&qword_1EBDFB508);
  }

  return &qword_1EBDFBE48;
}

uint64_t static SuggestionsRFDataModels.bundlePath.getter(uint64_t a1)
{
  if (qword_1EBDFB508 != -1)
  {
    a1 = OUTLINED_FUNCTION_9_6(&qword_1EBDFB508);
  }

  OUTLINED_FUNCTION_84_2(a1);

  return OUTLINED_FUNCTION_93();
}

uint64_t static SuggestionsRFDataModels.bundlePath.setter(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  if (qword_1EBDFB508 != -1)
  {
    a1 = OUTLINED_FUNCTION_9_6(&qword_1EBDFB508);
  }

  OUTLINED_FUNCTION_85_2(a1);
  qword_1EBDFBE48 = v3;
  qword_1EBDFBE50 = a2;
}

uint64_t (*static SuggestionsRFDataModels.bundlePath.modify())(uint64_t)
{
  if (qword_1EBDFB508 != -1)
  {
    OUTLINED_FUNCTION_9_6(&qword_1EBDFB508);
  }

  OUTLINED_FUNCTION_93();
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1BFA80778@<X0>(void *a1@<X8>)
{
  sub_1BFA805F8();
  swift_beginAccess();
  v2 = qword_1EBDFBE50;
  *a1 = qword_1EBDFBE48;
  a1[1] = v2;
}

uint64_t sub_1BFA807CC(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];

  sub_1BFA805F8();
  swift_beginAccess();
  qword_1EBDFBE48 = v2;
  qword_1EBDFBE50 = v1;
}

uint64_t SuggestionsRFDataModels.SuggestionHintsDataModel.requestId.setter()
{
  OUTLINED_FUNCTION_59();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t SuggestionsRFDataModels.SuggestionHintsDataModel.crossDomainHint.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 24);
  a1[1] = v2;
}

uint64_t SuggestionsRFDataModels.SuggestionHintsDataModel.crossDomainHint.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  *(v1 + 24) = v2;
  *(v1 + 32) = v3;
  return result;
}

uint64_t sub_1BFA80928(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4974736575716572 && a2 == 0xE900000000000064;
  if (v4 || (sub_1BFAAFF08() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000010 && 0x80000001BFAB9580 == a2;
    if (v6 || (sub_1BFAAFF08() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6D6F4473736F7263 && a2 == 0xEF746E69486E6961)
    {

      return 2;
    }

    else
    {
      v8 = sub_1BFAAFF08();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1BFA80A58(char a1)
{
  if (!a1)
  {
    return 0x4974736575716572;
  }

  if (a1 == 1)
  {
    return 0xD000000000000010;
  }

  return 0x6D6F4473736F7263;
}

uint64_t sub_1BFA80ACC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BFA80928(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BFA80AF4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BFA80A50();
  *a1 = result;
  return result;
}

uint64_t sub_1BFA80B1C(uint64_t a1)
{
  v2 = sub_1BFA85AE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BFA80B58(uint64_t a1)
{
  v2 = sub_1BFA85AE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SuggestionsRFDataModels.SuggestionHintsDataModel.encode(to:)()
{
  OUTLINED_FUNCTION_55_2();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBE80, &qword_1BFAB5488);
  OUTLINED_FUNCTION_2_3();
  v6 = v5;
  OUTLINED_FUNCTION_73();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_44_4();
  OUTLINED_FUNCTION_83_1(v3, v3[3]);
  sub_1BFA85AE4();
  OUTLINED_FUNCTION_79_2();
  sub_1BFAB0008();
  sub_1BFAAFE78();
  if (!v0)
  {
    OUTLINED_FUNCTION_3();
    sub_1BFAAFE98();
    sub_1BFA85B38();

    OUTLINED_FUNCTION_3();
    sub_1BFAAFE68();
  }

  (*(v6 + 8))(v1, v4);
  OUTLINED_FUNCTION_65_2();
  OUTLINED_FUNCTION_56_2();
}

void SuggestionsRFDataModels.SuggestionHintsDataModel.init(from:)()
{
  OUTLINED_FUNCTION_55_2();
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBE88, &qword_1BFAB5490);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_73();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_83_1(v2, v2[3]);
  sub_1BFA85AE4();
  sub_1BFAAFFF8();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_2Tm(v2);
  }

  else
  {
    OUTLINED_FUNCTION_78_2();
    v6 = sub_1BFAAFDC8();
    v8 = v7;
    LOBYTE(v13) = 1;
    OUTLINED_FUNCTION_78_2();
    sub_1BFAAFDE8();
    v10 = v9;
    sub_1BFA85B8C();
    sub_1BFAAFDB8();
    v11 = OUTLINED_FUNCTION_57_3();
    v12(v11);

    *v4 = v6;
    v4[1] = v8;
    v4[2] = v10;
    v4[3] = v13;
    v4[4] = v14;

    __swift_destroy_boxed_opaque_existential_2Tm(v2);
  }

  OUTLINED_FUNCTION_56_2();
}

uint64_t SuggestionsRFDataModels.SuggestionHelpDataModel.speakSuggestions.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t SuggestionsRFDataModels.SuggestionHelpDataModel.suggestions.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t SuggestionsRFDataModels.SuggestionHelpDataModel.otherSuggestions.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t SuggestionsRFDataModels.SuggestionHelpDataModel.appBundleId.setter()
{
  OUTLINED_FUNCTION_59();

  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

uint64_t SuggestionsRFDataModels.SuggestionHelpDataModel.moreSuggestionsDirectInvocation.setter()
{
  OUTLINED_FUNCTION_59();

  *(v1 + 56) = v2;
  *(v1 + 64) = v0;
  return result;
}

uint64_t SuggestionsRFDataModels.SuggestionHelpDataModel.learnMorePunchout.setter()
{
  OUTLINED_FUNCTION_59();

  *(v1 + 72) = v2;
  *(v1 + 80) = v0;
  return result;
}

uint64_t SuggestionsRFDataModels.SuggestionHelpDataModel.moreCat.setter()
{
  OUTLINED_FUNCTION_59();

  *(v1 + 96) = v2;
  *(v1 + 104) = v0;
  return result;
}

uint64_t SuggestionsRFDataModels.SuggestionHelpDataModel.siriHelpWithAppNameCat.setter()
{
  OUTLINED_FUNCTION_59();

  *(v1 + 112) = v2;
  *(v1 + 120) = v0;
  return result;
}

uint64_t SuggestionsRFDataModels.SuggestionHelpDataModel.learnMoreCat.setter()
{
  OUTLINED_FUNCTION_59();

  *(v1 + 128) = v2;
  *(v1 + 136) = v0;
  return result;
}

uint64_t SuggestionsRFDataModels.SuggestionHelpDataModel.trySayingCat.setter()
{
  OUTLINED_FUNCTION_59();

  *(v1 + 144) = v2;
  *(v1 + 152) = v0;
  return result;
}

uint64_t SuggestionsRFDataModels.SuggestionHelpDataModel.otherIntro.setter()
{
  OUTLINED_FUNCTION_59();

  *(v1 + 160) = v2;
  *(v1 + 168) = v0;
  return result;
}

uint64_t SuggestionsRFDataModels.SuggestionHelpDataModel.siriHelpHeader.setter()
{
  OUTLINED_FUNCTION_59();

  *(v1 + 176) = v2;
  *(v1 + 184) = v0;
  return result;
}

uint64_t SuggestionsRFDataModels.SuggestionHelpDataModel.unsupportedAppHeader.setter()
{
  OUTLINED_FUNCTION_59();

  *(v1 + 192) = v2;
  *(v1 + 200) = v0;
  return result;
}

uint64_t SuggestionsRFDataModels.SuggestionHelpDataModel.seeOtherSuggestionsButton.setter()
{
  OUTLINED_FUNCTION_59();

  *(v1 + 208) = v2;
  *(v1 + 216) = v0;
  return result;
}

uint64_t *SuggestionsRFDataModels.SuggestionHelpDataModel.init(parameters:catDialogs:isSmartSnippet:)@<X0>(uint64_t *__return_ptr a1@<X8>, void *__src@<X0>, uint64_t a3@<X1>, char a4@<W2>)
{
  memcpy(__dst, __src, 0x6CuLL);
  v55 = __dst[0];
  v7 = __dst[1];
  v6 = __dst[2];
  v8 = __dst[3];
  v61 = __dst[4];
  v9 = __dst[6];
  v59 = __dst[7];
  v60 = __dst[5];
  v10 = __dst[10];
  v58 = __dst[9];
  v63 = __dst[8];

  v57 = v6;

  v56 = v8;

  v64 = v9;

  v62 = v10;

  v11 = sub_1BFA2368C(0, a3);
  if (v12)
  {
    v13 = v11;
  }

  else
  {
    v13 = 0;
  }

  v14 = 0xE000000000000000;
  if (v12)
  {
    v15 = v12;
  }

  else
  {
    v15 = 0xE000000000000000;
  }

  v53 = v15;
  v54 = v13;
  v16 = sub_1BFA2368C(1, a3);
  if (v17)
  {
    v18 = v16;
  }

  else
  {
    v18 = 0;
  }

  if (v17)
  {
    v14 = v17;
  }

  v50 = sub_1BFA2368C(2, a3);
  v20 = v19;
  v48 = sub_1BFA2368C(3, a3);
  v22 = v21;
  v47 = sub_1BFA2368C(4, a3);
  v24 = v23;
  v25 = sub_1BFA2368C(5, a3);
  v52 = v18;
  if (v26)
  {
    v27 = v25;
    v28 = v26;
  }

  else
  {

    v27 = v18;
    v28 = v14;
  }

  v29 = sub_1BFA2368C(7, a3);
  v51 = v14;
  v49 = v27;
  if (v30)
  {
    v31 = v30;
    v46 = v29;
  }

  else
  {

    v46 = v27;
    v31 = v28;
  }

  v32 = sub_1BFA2368C(8, a3);
  v34 = v33;

  if (v34)
  {
    sub_1BFA85BE0(__dst);
    v36 = v53;
    result = v54;
  }

  else
  {
    v36 = v53;

    sub_1BFA85BE0(__dst);
    result = v54;
    v32 = v54;
    v34 = v53;
  }

  v37 = MEMORY[0x1E69E7CC0];
  v38 = 0xE000000000000000;
  *a1 = v55;
  if (v24)
  {
    v39 = v24;
  }

  else
  {
    v39 = 0xE000000000000000;
  }

  v40 = v47;
  v41 = v48;
  if (!v24)
  {
    v40 = 0;
  }

  v42 = BYTE2(__dst[13]);
  if (v22)
  {
    v43 = v22;
  }

  else
  {
    v43 = 0xE000000000000000;
  }

  if (!v22)
  {
    v41 = 0;
  }

  if (v20)
  {
    v38 = v20;
  }

  v44 = __dst[13];
  v45 = v50;
  if (!v20)
  {
    v45 = 0;
  }

  if (v7)
  {
    v37 = v7;
  }

  a1[1] = v37;
  a1[2] = v57;
  a1[3] = v56;
  *(a1 + 32) = v61;
  a1[5] = v60;
  a1[6] = v64;
  a1[7] = v59;
  a1[8] = v63;
  a1[9] = v58;
  a1[10] = v62;
  *(a1 + 88) = a4 & 1;
  *(a1 + 89) = v44;
  a1[12] = result;
  a1[13] = v36;
  a1[14] = v52;
  a1[15] = v51;
  a1[16] = v45;
  a1[17] = v38;
  a1[18] = v41;
  a1[19] = v43;
  a1[20] = v40;
  a1[21] = v39;
  a1[22] = v49;
  a1[23] = v28;
  a1[24] = v46;
  a1[25] = v31;
  a1[26] = v32;
  a1[27] = v34;
  *(a1 + 224) = v42;
  return result;
}

uint64_t sub_1BFA81954(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000015 && 0x80000001BFAB97C0 == a2;
  if (v3 || (sub_1BFAAFF08() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000010 && 0x80000001BFAB9920 == a2;
    if (v6 || (sub_1BFAAFF08() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6974736567677573 && a2 == 0xEB00000000736E6FLL;
      if (v7 || (sub_1BFAAFF08() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000010 && 0x80000001BFAB9940 == a2;
        if (v8 || (sub_1BFAAFF08() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000017 && 0x80000001BFAB9A40 == a2;
          if (v9 || (sub_1BFAAFF08() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6C646E7542707061 && a2 == 0xEB00000000644965;
            if (v10 || (sub_1BFAAFF08() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD00000000000001FLL && 0x80000001BFAB9980 == a2;
              if (v11 || (sub_1BFAAFF08() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000011 && 0x80000001BFAB99A0 == a2;
                if (v12 || (sub_1BFAAFF08() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x537472616D537369 && a2 == 0xEE0074657070696ELL;
                  if (v13 || (sub_1BFAAFF08() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x616E456561537369 && a2 == 0xEC00000064656C62;
                    if (v14 || (sub_1BFAAFF08() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x74614365726F6DLL && a2 == 0xE700000000000000;
                      if (v15 || (sub_1BFAAFF08() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD000000000000016 && 0x80000001BFAB9A60 == a2;
                        if (v16 || (sub_1BFAAFF08() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x726F4D6E7261656CLL && a2 == 0xEC00000074614365;
                          if (v17 || (sub_1BFAAFF08() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x6E69796153797274 && a2 == 0xEC00000074614367;
                            if (v18 || (sub_1BFAAFF08() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x746E49726568746FLL && a2 == 0xEA00000000006F72;
                              if (v19 || (sub_1BFAAFF08() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0x706C654869726973 && a2 == 0xEE00726564616548;
                                if (v20 || (sub_1BFAAFF08() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0xD000000000000014 && 0x80000001BFAB9A80 == a2;
                                  if (v21 || (sub_1BFAAFF08() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0xD000000000000019 && 0x80000001BFAB8580 == a2;
                                    if (v22 || (sub_1BFAAFF08() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else if (a1 == 0xD000000000000014 && 0x80000001BFAB9AA0 == a2)
                                    {

                                      return 18;
                                    }

                                    else
                                    {
                                      v24 = sub_1BFAAFF08();

                                      if (v24)
                                      {
                                        return 18;
                                      }

                                      else
                                      {
                                        return 19;
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
}

unint64_t sub_1BFA81F18(char a1)
{
  result = 0x6974736567677573;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      return result;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0xD000000000000017;
      break;
    case 5:
      result = 0x6C646E7542707061;
      break;
    case 6:
      result = 0xD00000000000001FLL;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    case 8:
      result = 0x537472616D537369;
      break;
    case 9:
      result = 0x616E456561537369;
      break;
    case 10:
      result = 0x74614365726F6DLL;
      break;
    case 11:
      result = 0xD000000000000016;
      break;
    case 12:
      result = 0x726F4D6E7261656CLL;
      break;
    case 13:
      result = 0x6E69796153797274;
      break;
    case 14:
      result = 0x746E49726568746FLL;
      break;
    case 15:
      result = 0x706C654869726973;
      break;
    case 16:
    case 18:
      result = 0xD000000000000014;
      break;
    case 17:
      v3 = 9;
      goto LABEL_14;
    default:
      v3 = 5;
LABEL_14:
      result = v3 | 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_1BFA8217C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BFA81954(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BFA821A4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BFA81F10();
  *a1 = result;
  return result;
}

uint64_t sub_1BFA821CC(uint64_t a1)
{
  v2 = sub_1BFA85C10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BFA82208(uint64_t a1)
{
  v2 = sub_1BFA85C10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SuggestionsRFDataModels.SuggestionHelpDataModel.encode(to:)(uint64_t a1)
{
  OUTLINED_FUNCTION_52_5();
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBE90, &qword_1BFAB5498);
  OUTLINED_FUNCTION_2_3();
  v8 = v7;
  OUTLINED_FUNCTION_73();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_44_4();
  v29 = v1[15];
  v30 = v1[14];
  v27 = v1[17];
  v28 = v1[16];
  v25 = v1[19];
  v26 = v1[18];
  v24 = v1[20];
  v23 = v1[21];
  v22 = v1[22];
  v21 = v1[23];
  v20 = v1[24];
  v19 = v1[25];
  v18 = v1[26];
  v17 = v1[27];
  OUTLINED_FUNCTION_83_1(v5, v5[3]);
  sub_1BFA85C10();
  OUTLINED_FUNCTION_79_2();
  sub_1BFAB0008();
  sub_1BFAAFE88();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB560, &qword_1BFAB5470);
    sub_1BFA154CC(&qword_1EBDFB568, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
    OUTLINED_FUNCTION_58_3();
    OUTLINED_FUNCTION_36_8();
    sub_1BFAAFEB8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBEA0, &qword_1BFAB54A0);
    sub_1BFA85CB8(&qword_1EBDFBEA8, sub_1BFA85C64, MEMORY[0x1E69E6300]);
    OUTLINED_FUNCTION_58_3();
    OUTLINED_FUNCTION_36_8();
    sub_1BFAAFEB8();
    OUTLINED_FUNCTION_58_3();
    OUTLINED_FUNCTION_36_8();
    sub_1BFAAFEB8();
    OUTLINED_FUNCTION_81_2(4);
    OUTLINED_FUNCTION_36_8();
    sub_1BFAAFE88();
    OUTLINED_FUNCTION_30_5(5);
    OUTLINED_FUNCTION_36_8();
    sub_1BFAAFE78();
    OUTLINED_FUNCTION_30_5(6);
    OUTLINED_FUNCTION_36_8();
    sub_1BFAAFE38();
    OUTLINED_FUNCTION_30_5(7);
    OUTLINED_FUNCTION_36_8();
    sub_1BFAAFE38();
    OUTLINED_FUNCTION_81_2(8);
    OUTLINED_FUNCTION_36_8();
    sub_1BFAAFE88();
    OUTLINED_FUNCTION_81_2(9);
    OUTLINED_FUNCTION_36_8();
    sub_1BFAAFE88();
    OUTLINED_FUNCTION_30_5(10);
    OUTLINED_FUNCTION_36_8();
    sub_1BFAAFE78();
    OUTLINED_FUNCTION_30_5(11);
    OUTLINED_FUNCTION_33_4(v30, v29, v10);
    OUTLINED_FUNCTION_30_5(12);
    OUTLINED_FUNCTION_33_4(v28, v27, v11);
    OUTLINED_FUNCTION_30_5(13);
    OUTLINED_FUNCTION_33_4(v26, v25, v12);
    OUTLINED_FUNCTION_30_5(14);
    OUTLINED_FUNCTION_33_4(v24, v23, v13);
    OUTLINED_FUNCTION_30_5(15);
    OUTLINED_FUNCTION_33_4(v22, v21, v14);
    OUTLINED_FUNCTION_30_5(16);
    OUTLINED_FUNCTION_33_4(v20, v19, v15);
    OUTLINED_FUNCTION_30_5(17);
    OUTLINED_FUNCTION_33_4(v18, v17, v16);
    OUTLINED_FUNCTION_81_2(18);
    sub_1BFAAFE88();
  }

  (*(v8 + 8))(v3, v6);
  OUTLINED_FUNCTION_51_3();
}

void SuggestionsRFDataModels.SuggestionHelpDataModel.init(from:)(uint64_t a1)
{
  OUTLINED_FUNCTION_52_5();
  v3 = v2;
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBEB8, &qword_1BFAB54A8);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_73();
  MEMORY[0x1EEE9AC00](v6);
  v7 = v3[4];
  v49 = v3;
  OUTLINED_FUNCTION_83_1(v3, v3[3]);
  sub_1BFA85C10();
  sub_1BFAAFFF8();
  if (v1)
  {
    OUTLINED_FUNCTION_4_12();
    __swift_destroy_boxed_opaque_existential_2Tm(v3);

    if (v3)
    {

      if ((v7 & 1) == 0)
      {
LABEL_13:
        if (v50)
        {
LABEL_14:

          if ((v52 & 1) == 0)
          {
LABEL_15:
            if (v54)
            {
LABEL_16:

              if ((v56 & 1) == 0)
              {
LABEL_17:
                if (!v58)
                {
                  goto LABEL_19;
                }

LABEL_18:

                goto LABEL_19;
              }

LABEL_9:

              if ((v58 & 1) == 0)
              {
                goto LABEL_19;
              }

              goto LABEL_18;
            }

LABEL_8:
            if (!v56)
            {
              goto LABEL_17;
            }

            goto LABEL_9;
          }

LABEL_7:

          if (v54)
          {
            goto LABEL_16;
          }

          goto LABEL_8;
        }

LABEL_6:
        if (!v52)
        {
          goto LABEL_15;
        }

        goto LABEL_7;
      }
    }

    else if (!v7)
    {
      goto LABEL_13;
    }

    if (v50)
    {
      goto LABEL_14;
    }

    goto LABEL_6;
  }

  v57 = v5;
  LOBYTE(v61[0]) = 0;
  OUTLINED_FUNCTION_21_7();
  v8 = sub_1BFAAFDD8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFB560, &qword_1BFAB5470);
  sub_1BFA154CC(&qword_1EDCC77A8, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
  OUTLINED_FUNCTION_21_7();
  sub_1BFAAFE08();
  v48 = v61[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBEA0, &qword_1BFAB54A0);
  sub_1BFA85CB8(&qword_1EBDFBEC0, sub_1BFA85D30, MEMORY[0x1E69E6330]);
  OUTLINED_FUNCTION_21_7();
  sub_1BFAAFE08();
  v47 = v61[0];
  LOBYTE(v60[0]) = 3;
  OUTLINED_FUNCTION_21_7();
  sub_1BFAAFE08();
  v46 = v61[0];
  OUTLINED_FUNCTION_0_12(4);
  v9 = sub_1BFAAFDD8();
  OUTLINED_FUNCTION_0_12(5);
  v10 = sub_1BFAAFDC8();
  v55 = v9;
  v45 = v11;
  OUTLINED_FUNCTION_0_12(6);
  v12 = sub_1BFAAFD88();
  v96 = v13;
  OUTLINED_FUNCTION_0_12(7);
  v53 = sub_1BFAAFD88();
  v59 = v14;
  OUTLINED_FUNCTION_0_12(8);
  v51 = sub_1BFAAFDD8();
  v15 = v10;
  OUTLINED_FUNCTION_0_12(9);
  v37 = sub_1BFAAFDD8();
  OUTLINED_FUNCTION_0_12(10);
  v16 = sub_1BFAAFDC8();
  v44 = v17;
  v18 = v16;
  OUTLINED_FUNCTION_0_12(11);
  v36 = sub_1BFAAFDC8();
  v43 = v19;
  OUTLINED_FUNCTION_0_12(12);
  v35 = sub_1BFAAFDC8();
  v42 = v20;
  OUTLINED_FUNCTION_0_12(13);
  v34 = sub_1BFAAFDC8();
  v41 = v21;
  OUTLINED_FUNCTION_0_12(14);
  v33 = sub_1BFAAFDC8();
  v40 = v22;
  OUTLINED_FUNCTION_0_12(15);
  v32 = sub_1BFAAFDC8();
  v39 = v23;
  OUTLINED_FUNCTION_0_12(16);
  v31 = sub_1BFAAFDC8();
  v38 = v24;
  OUTLINED_FUNCTION_0_12(17);
  v29 = sub_1BFAAFDC8();
  v30 = v25;
  v91 = 18;
  OUTLINED_FUNCTION_21_7();
  v26 = sub_1BFAAFDD8();
  v55 &= 1u;
  v51 &= 1u;
  v27 = OUTLINED_FUNCTION_7_8();
  v28(v27);
  LOBYTE(v60[0]) = v8 & 1;
  v60[1] = v48;
  v60[2] = v47;
  v60[3] = v46;
  LOBYTE(v60[4]) = v55;
  v60[5] = v15;
  v60[6] = v45;
  v60[7] = v12;
  v60[8] = v96;
  v60[9] = v53;
  v60[10] = v59;
  LOBYTE(v60[11]) = v51;
  BYTE1(v60[11]) = v37 & 1;
  v60[12] = v18;
  v60[13] = v44;
  v60[14] = v36;
  v60[15] = v43;
  v60[16] = v35;
  v60[17] = v42;
  v60[18] = v34;
  v60[19] = v41;
  v60[20] = v33;
  v60[21] = v40;
  v60[22] = v32;
  v60[23] = v39;
  v60[24] = v31;
  v60[25] = v38;
  v60[26] = v29;
  v60[27] = v30;
  LOBYTE(v60[28]) = v26 & 1;
  memcpy(v57, v60, 0xE1uLL);
  sub_1BFA85D84(v60, v61);
  __swift_destroy_boxed_opaque_existential_2Tm(v49);
  LOBYTE(v61[0]) = v8 & 1;
  *(v61 + 1) = *v95;
  HIDWORD(v61[0]) = *&v95[3];
  v61[1] = v48;
  v61[2] = v47;
  v61[3] = v46;
  v62 = v55;
  *v63 = *v94;
  *&v63[3] = *&v94[3];
  v64 = v15;
  v65 = v45;
  v66 = v12;
  v67 = v96;
  v68 = v53;
  v69 = v59;
  v70 = v51;
  v71 = v37 & 1;
  v73 = v93;
  v72 = v92;
  v74 = v18;
  v75 = v44;
  v76 = v36;
  v77 = v43;
  v78 = v35;
  v79 = v42;
  v80 = v34;
  v81 = v41;
  v82 = v33;
  v83 = v40;
  v84 = v32;
  v85 = v39;
  v86 = v31;
  v87 = v38;
  v88 = v29;
  v89 = v30;
  v90 = v26 & 1;
  sub_1BFA85DBC(v61);
LABEL_19:
  OUTLINED_FUNCTION_51_3();
}

uint64_t sub_1BFA83264(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4974736575716572 && a2 == 0xE900000000000064;
  if (v4 || (sub_1BFAAFF08() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x5465727574616566 && a2 == 0xEB00000000657079;
    if (v6 || (sub_1BFAAFF08() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000019 && 0x80000001BFAB9AC0 == a2;
      if (v7 || (sub_1BFAAFF08() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000011 && 0x80000001BFAB9AE0 == a2;
        if (v8 || (sub_1BFAAFF08() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000010 && 0x80000001BFAB9B00 == a2;
          if (v9 || (sub_1BFAAFF08() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000023 && 0x80000001BFAB9B20 == a2;
            if (v10 || (sub_1BFAAFF08() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000022 && 0x80000001BFAB9B50 == a2;
              if (v11 || (sub_1BFAAFF08() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000017 && 0x80000001BFAB9B80 == a2;
                if (v12 || (sub_1BFAAFF08() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0xD000000000000017 && 0x80000001BFAB9BA0 == a2)
                {

                  return 8;
                }

                else
                {
                  v14 = sub_1BFAAFF08();

                  if (v14)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
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

unint64_t sub_1BFA83534(char a1)
{
  result = 0x4974736575716572;
  switch(a1)
  {
    case 1:
      result = 0x5465727574616566;
      break;
    case 2:
      result = 0xD000000000000019;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0xD000000000000023;
      break;
    case 6:
      result = 0xD000000000000022;
      break;
    case 7:
      result = 0xD000000000000017;
      break;
    case 8:
      result = 0xD000000000000017;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1BFA8366C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BFA83264(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BFA83694@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BFA8352C();
  *a1 = result;
  return result;
}

uint64_t sub_1BFA836BC(uint64_t a1)
{
  v2 = sub_1BFA85DEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BFA836F8(uint64_t a1)
{
  v2 = sub_1BFA85DEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SuggestionsRFDataModels.FeatureAnnouncementDataModel.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  OUTLINED_FUNCTION_52_5();
  v30 = v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBED0, &qword_1BFAB54B0);
  OUTLINED_FUNCTION_2_3();
  v33 = v32;
  OUTLINED_FUNCTION_73();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_44_4();
  OUTLINED_FUNCTION_83_1(v30, v30[3]);
  sub_1BFA85DEC();
  OUTLINED_FUNCTION_79_2();
  sub_1BFAB0008();
  sub_1BFAAFE78();
  if (!v27)
  {
    sub_1BFA85E40();
    OUTLINED_FUNCTION_3();
    sub_1BFAAFEB8();
    OUTLINED_FUNCTION_13_2();
    sub_1BFAAFE38();
    OUTLINED_FUNCTION_13_2();
    sub_1BFAAFE78();
    OUTLINED_FUNCTION_13_2();
    sub_1BFAAFE78();
    OUTLINED_FUNCTION_13_2();
    sub_1BFAAFE78();
    OUTLINED_FUNCTION_30_5(6);
    OUTLINED_FUNCTION_13_2();
    sub_1BFAAFE78();
    OUTLINED_FUNCTION_13_2();
    sub_1BFAAFE38();
    OUTLINED_FUNCTION_13_2();
    sub_1BFAAFE38();
  }

  (*(v33 + 8))(v28, v31);
  OUTLINED_FUNCTION_65_2();
  OUTLINED_FUNCTION_51_3();
}

void SuggestionsRFDataModels.FeatureAnnouncementDataModel.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_52_5();
  v25 = v24;
  v27 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBEE8, &qword_1BFAB54B8);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_73();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_60_3();
  v56 = v25;
  OUTLINED_FUNCTION_83_1(v25, v25[3]);
  sub_1BFA85DEC();
  sub_1BFAAFFF8();
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_2Tm(v25);
  }

  else
  {
    LOBYTE(v58[0]) = 0;
    v29 = sub_1BFAAFDC8();
    v31 = v30;
    LOBYTE(v57[0]) = 1;
    sub_1BFA85E94();
    sub_1BFAAFE08();
    OUTLINED_FUNCTION_8_8(2);
    v49 = sub_1BFAAFD88();
    v55 = v32;
    OUTLINED_FUNCTION_8_8(3);
    v48 = sub_1BFAAFDC8();
    v54 = v33;
    OUTLINED_FUNCTION_8_8(4);
    v47 = sub_1BFAAFDC8();
    v53 = v34;
    OUTLINED_FUNCTION_8_8(5);
    v46 = sub_1BFAAFDC8();
    v52 = v35;
    OUTLINED_FUNCTION_8_8(6);
    v45 = sub_1BFAAFDC8();
    v51 = v36;
    OUTLINED_FUNCTION_8_8(7);
    v44 = sub_1BFAAFD88();
    v50 = v37;
    v38 = sub_1BFAAFD88();
    v43 = v39;
    v40 = v38;
    v41 = OUTLINED_FUNCTION_11_9();
    v42(v41);
    v57[0] = v29;
    v57[1] = v31;
    LOBYTE(v57[2]) = 0;
    v57[3] = v49;
    v57[4] = v55;
    v57[5] = v48;
    v57[6] = v54;
    v57[7] = v47;
    v57[8] = v53;
    v57[9] = v46;
    v57[10] = v52;
    v57[11] = v45;
    v57[12] = v51;
    v57[13] = v44;
    v57[14] = v50;
    v57[15] = v40;
    v57[16] = v43;
    memcpy(v27, v57, 0x88uLL);
    sub_1BFA85EE8(v57, v58);
    __swift_destroy_boxed_opaque_existential_2Tm(v56);
    v58[0] = v29;
    v58[1] = v31;
    v59 = 0;
    v60 = v49;
    v61 = v55;
    v62 = v48;
    v63 = v54;
    v64 = v47;
    v65 = v53;
    v66 = v46;
    v67 = v52;
    v68 = v45;
    v69 = v51;
    v70 = v44;
    v71 = v50;
    v72 = v40;
    v73 = v43;
    sub_1BFA85F20(v58);
  }

  OUTLINED_FUNCTION_51_3();
}

uint64_t sub_1BFA83EC8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65695673746E6968 && a2 == 0xE900000000000077;
  if (v4 || (sub_1BFAAFF08() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x77656956706C6568 && a2 == 0xE800000000000000;
    if (v6 || (sub_1BFAAFF08() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000011 && 0x80000001BFAB9BC0 == a2;
      if (v7 || (sub_1BFAAFF08() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000017 && 0x80000001BFAB9BE0 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_1BFAAFF08();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_1BFA84034(char a1)
{
  result = 0x65695673746E6968;
  switch(a1)
  {
    case 1:
      result = 0x77656956706C6568;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0xD000000000000017;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1BFA840C8(uint64_t a1)
{
  v2 = sub_1BFA8604C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BFA84104(uint64_t a1)
{
  v2 = sub_1BFA8604C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BFA84148@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BFA83EC8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BFA84170(uint64_t a1)
{
  v2 = sub_1BFA85F50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BFA841AC(uint64_t a1)
{
  v2 = sub_1BFA85F50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BFA841E8(uint64_t a1)
{
  v2 = sub_1BFA85FA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BFA84224(uint64_t a1)
{
  v2 = sub_1BFA85FA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BFA84260(uint64_t a1)
{
  v2 = sub_1BFA860F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BFA8429C(uint64_t a1)
{
  v2 = sub_1BFA860F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BFA842D8(uint64_t a1)
{
  v2 = sub_1BFA86148();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BFA84314(uint64_t a1)
{
  v2 = sub_1BFA86148();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SuggestionsRFDataModels.encode(to:)()
{
  OUTLINED_FUNCTION_55_2();
  v49 = v1;
  v46 = v0;
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBEF8, &qword_1BFAB54C0);
  OUTLINED_FUNCTION_2_3();
  v44 = v7;
  v45 = v6;
  OUTLINED_FUNCTION_73();
  MEMORY[0x1EEE9AC00](v8);
  v43 = &v37 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBF00, &qword_1BFAB54C8);
  OUTLINED_FUNCTION_2_3();
  v41 = v11;
  v42 = v10;
  OUTLINED_FUNCTION_73();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_61_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBF08, &qword_1BFAB54D0);
  OUTLINED_FUNCTION_2_3();
  v39 = v14;
  v40 = v13;
  OUTLINED_FUNCTION_73();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v37 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBF10, &qword_1BFAB54D8);
  OUTLINED_FUNCTION_2_3();
  v38 = v19;
  OUTLINED_FUNCTION_73();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v37 - v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBF18, &qword_1BFAB54E0);
  OUTLINED_FUNCTION_2_3();
  v47 = v24;
  v48 = v23;
  OUTLINED_FUNCTION_73();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_60_3();
  OUTLINED_FUNCTION_83_1(v5, v5[3]);
  sub_1BFA85F50();
  sub_1BFAB0008();
  memcpy(v51, v46, 0xE1uLL);
  LODWORD(v5) = sub_1BFA2B568(v51);
  v26 = sub_1BFA074AC(v51);
  v27 = v26;
  switch(v5)
  {
    case 1:
      LOBYTE(v50[0]) = 1;
      sub_1BFA860F4();
      v32 = v48;
      OUTLINED_FUNCTION_28_5();
      sub_1BFAAFE28();
      memcpy(v50, v27, 0xE1uLL);
      sub_1BFA85FF8();
      v33 = v40;
      sub_1BFAAFEB8();
      v36 = v39;
      goto LABEL_6;
    case 2:
      LOBYTE(v50[0]) = 2;
      sub_1BFA8604C();
      v32 = v48;
      OUTLINED_FUNCTION_28_5();
      sub_1BFAAFE28();
      memcpy(v50, v27, 0x88uLL);
      sub_1BFA860A0();
      v33 = v42;
      sub_1BFAAFEB8();
      v34 = *(v41 + 8);
      v35 = v3;
      goto LABEL_7;
    case 3:
      LOBYTE(v50[0]) = 3;
      sub_1BFA85FA4();
      v17 = v43;
      v32 = v48;
      OUTLINED_FUNCTION_28_5();
      sub_1BFAAFE28();
      memcpy(v50, v27, 0xE1uLL);
      sub_1BFA85FF8();
      v33 = v45;
      sub_1BFAAFEB8();
      v36 = v44;
LABEL_6:
      v34 = *(v36 + 8);
      v35 = v17;
LABEL_7:
      v34(v35, v33);
      break;
    default:
      v28 = *(v26 + 8);
      v46 = *v26;
      v29 = *(v26 + 16);
      v31 = *(v26 + 24);
      v30 = *(v26 + 32);
      LOBYTE(v50[0]) = 0;
      sub_1BFA86148();
      v32 = v48;
      OUTLINED_FUNCTION_28_5();
      sub_1BFAAFE28();
      v50[0] = v46;
      v50[1] = v28;
      v50[2] = v29;
      v50[3] = v31;
      v50[4] = v30;
      sub_1BFA8619C();
      sub_1BFAAFEB8();
      (*(v38 + 8))(v22, v18);
      break;
  }

  (*(v47 + 8))(v2, v32);
  OUTLINED_FUNCTION_56_2();
}

void SuggestionsRFDataModels.init(from:)(uint64_t a1)
{
  OUTLINED_FUNCTION_52_5();
  v4 = v3;
  v69 = v5;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBF48, &qword_1BFAB54E8);
  OUTLINED_FUNCTION_2_3();
  v67 = v6;
  OUTLINED_FUNCTION_73();
  MEMORY[0x1EEE9AC00](v7);
  v71 = v61 - v8;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBF50, &qword_1BFAB54F0);
  OUTLINED_FUNCTION_2_3();
  v65 = v9;
  OUTLINED_FUNCTION_73();
  MEMORY[0x1EEE9AC00](v10);
  v70 = v61 - v11;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBF58, &qword_1BFAB54F8);
  OUTLINED_FUNCTION_2_3();
  v64 = v12;
  OUTLINED_FUNCTION_73();
  MEMORY[0x1EEE9AC00](v13);
  v15 = v61 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBF60, &qword_1BFAB5500);
  OUTLINED_FUNCTION_2_3();
  v63 = v17;
  OUTLINED_FUNCTION_73();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_61_3();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBF68, &qword_1BFAB5508);
  OUTLINED_FUNCTION_2_3();
  v72 = v20;
  OUTLINED_FUNCTION_73();
  MEMORY[0x1EEE9AC00](v21);
  v23 = v61 - v22;
  v24 = v4[3];
  v74 = v4;
  OUTLINED_FUNCTION_83_1(v4, v24);
  sub_1BFA85F50();
  sub_1BFAAFFF8();
  if (v1)
  {
    goto LABEL_9;
  }

  v61[1] = v16;
  v61[2] = v2;
  v62 = v15;
  v25 = v23;
  v26 = sub_1BFAAFE18();
  sub_1BFA47038(v26, 0);
  v30 = v19;
  if (v28 == v29 >> 1)
  {
LABEL_8:
    v37 = sub_1BFAAFC78();
    swift_allocError();
    v39 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBAC0, &qword_1BFAB5510);
    *v39 = &type metadata for SuggestionsRFDataModels;
    sub_1BFAAFD78();
    sub_1BFAAFC68();
    (*(*(v37 - 8) + 104))(v39, *MEMORY[0x1E69E6AF8], v37);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v72 + 8))(v25, v30);
LABEL_9:
    v40 = v74;
LABEL_10:
    __swift_destroy_boxed_opaque_existential_2Tm(v40);
    OUTLINED_FUNCTION_51_3();
    return;
  }

  v61[0] = 0;
  if (v28 < (v29 >> 1))
  {
    v31 = *(v27 + v28);
    sub_1BFA47A1C(v28 + 1);
    v33 = v32;
    v35 = v34;
    swift_unknownObjectRelease();
    if (v33 == v35 >> 1)
    {
      switch(v31)
      {
        case 1:
          LOBYTE(v76[0]) = 1;
          sub_1BFA860F4();
          OUTLINED_FUNCTION_35_5(&type metadata for SuggestionsRFDataModels.HelpViewCodingKeys, v76);
          sub_1BFA86304();
          v48 = v66;
          sub_1BFAAFE08();
          v49 = (v64 + 8);
          swift_unknownObjectRelease();
          (*v49)(v62, v48);
          v59 = OUTLINED_FUNCTION_18_10();
          v60(v59);
          memcpy(v75, v76, 0xE1uLL);
          sub_1BFA863C0(v75);
          v58 = v75;
          goto LABEL_15;
        case 2:
          LOBYTE(v76[0]) = 2;
          sub_1BFA8604C();
          OUTLINED_FUNCTION_35_5(&type metadata for SuggestionsRFDataModels.AnnouncementsViewCodingKeys, v76);
          v40 = v74;
          sub_1BFA8636C();
          OUTLINED_FUNCTION_50_4(&type metadata for SuggestionsRFDataModels.FeatureAnnouncementDataModel, v41);
          swift_unknownObjectRelease();
          v42 = OUTLINED_FUNCTION_24_8();
          v43(v42);
          v44 = OUTLINED_FUNCTION_18_10();
          v45(v44);
          memcpy(v76, v75, 0x88uLL);
          sub_1BFA2B7F0(v76);
          v46 = v76;
          goto LABEL_14;
        case 3:
          LOBYTE(v76[0]) = 3;
          sub_1BFA85FA4();
          OUTLINED_FUNCTION_35_5(&type metadata for SuggestionsRFDataModels.ExpandedSuggestionsViewCodingKeys, v76);
          v40 = v74;
          sub_1BFA86304();
          OUTLINED_FUNCTION_50_4(&type metadata for SuggestionsRFDataModels.SuggestionHelpDataModel, v47);
          swift_unknownObjectRelease();
          v50 = OUTLINED_FUNCTION_24_8();
          v51(v50);
          v52 = OUTLINED_FUNCTION_18_10();
          v53(v52);
          memcpy(v75, v76, 0xE1uLL);
          sub_1BFA86358(v75);
          v46 = v75;
LABEL_14:
          memcpy(v77, v46, sizeof(v77));
          break;
        default:
          LOBYTE(v76[0]) = 0;
          sub_1BFA86148();
          OUTLINED_FUNCTION_35_5(&type metadata for SuggestionsRFDataModels.HintsViewCodingKeys, v76);
          sub_1BFA863D4();
          OUTLINED_FUNCTION_50_4(&type metadata for SuggestionsRFDataModels.SuggestionHintsDataModel, v36);
          swift_unknownObjectRelease();
          v54 = OUTLINED_FUNCTION_24_8();
          v55(v54);
          v56 = OUTLINED_FUNCTION_18_10();
          v57(v56);
          v76[0] = v75[0];
          v76[1] = v75[1];
          v76[2] = v75[2];
          *&v76[3] = *&v75[3];
          sub_1BFA5CDE4(v76);
          v58 = v76;
LABEL_15:
          memcpy(v77, v58, sizeof(v77));
          v40 = v74;
          break;
      }

      memcpy(v69, v77, 0xE1uLL);
      goto LABEL_10;
    }

    v30 = v19;
    v25 = v23;
    goto LABEL_8;
  }

  __break(1u);
}

SiriSuggestionsAPI::FeatureType_optional __swiftcall FeatureType.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_59_2();
  v2 = sub_1BFAAFD58();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1BFA8512C@<X0>(uint64_t *a1@<X8>)
{
  result = FeatureType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t CrossDomainHintType.init(rawValue:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_59_2();
  v3 = sub_1BFAAFD58();

  *v2 = v3 != 0;
  return result;
}

uint64_t sub_1BFA8535C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65707954746E6968 && a2 == 0xE800000000000000;
  if (v4 || (sub_1BFAAFF08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74786554746E6968 && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1BFAAFF08();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1BFA8542C(char a1)
{
  if (a1)
  {
    return 0x74786554746E6968;
  }

  else
  {
    return 0x65707954746E6968;
  }
}

uint64_t sub_1BFA85464@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BFA8535C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BFA8548C(uint64_t a1)
{
  v2 = sub_1BFA86428();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BFA854C8(uint64_t a1)
{
  v2 = sub_1BFA86428();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CrossDomainHint.encode(to:)(uint64_t a1)
{
  OUTLINED_FUNCTION_52_5();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBF80, &qword_1BFAB5518);
  OUTLINED_FUNCTION_2_3();
  v7 = v6;
  OUTLINED_FUNCTION_73();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_44_4();
  OUTLINED_FUNCTION_83_1(v4, v4[3]);
  sub_1BFA86428();
  OUTLINED_FUNCTION_79_2();
  sub_1BFAB0008();
  sub_1BFA8647C();
  OUTLINED_FUNCTION_3();
  sub_1BFAAFEB8();
  if (!v1)
  {
    OUTLINED_FUNCTION_3();
    sub_1BFAAFE78();
  }

  (*(v7 + 8))(v2, v5);
  OUTLINED_FUNCTION_65_2();
  OUTLINED_FUNCTION_51_3();
}

void CrossDomainHint.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_52_5();
  v26 = v25;
  v28 = v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDFBF98, &qword_1BFAB5520);
  OUTLINED_FUNCTION_2_3();
  v31 = v30;
  OUTLINED_FUNCTION_73();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_60_3();
  OUTLINED_FUNCTION_83_1(v26, v26[3]);
  sub_1BFA86428();
  sub_1BFAAFFF8();
  if (!v23)
  {
    sub_1BFA864D0();
    OUTLINED_FUNCTION_28_5();
    sub_1BFAAFE08();
    v33 = sub_1BFAAFDC8();
    v35 = v34;
    (*(v31 + 8))(v24, v29);
    *v28 = v33;
    v28[1] = v35;
  }

  __swift_destroy_boxed_opaque_existential_2Tm(v26);
  OUTLINED_FUNCTION_51_3();
}

SiriSuggestionsAPI::SiriHelpSnippetLabel_optional __swiftcall SiriHelpSnippetLabel.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_59_2();
  v2 = sub_1BFAAFD58();

  v4 = 9;
  if (v2 < 9)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

unint64_t SiriHelpSnippetLabel.rawValue.getter()
{
  result = 1701998445;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000013;
      break;
    case 2:
      result = 0x726F4D6E7261656CLL;
      break;
    case 3:
      result = 0x6E69796173797274;
      break;
    case 4:
      result = 0x746E69726568746FLL;
      break;
    case 5:
      result = 0x706C654869726973;
      break;
    case 6:
      result = 0xD00000000000001FLL;
      break;
    case 7:
      result = 0x726F707075736E75;
      break;
    case 8:
      result = 0xD000000000000019;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1BFA859A8@<X0>(unint64_t *a1@<X8>)
{
  result = SiriHelpSnippetLabel.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1BFA859D0()
{
  result = qword_1EBDFBE60;
  if (!qword_1EBDFBE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFBE60);
  }

  return result;
}

unint64_t sub_1BFA85A8C()
{
  result = qword_1EBDFBE78;
  if (!qword_1EBDFBE78)
  {
    sub_1BFAAE9A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFBE78);
  }

  return result;
}

unint64_t sub_1BFA85AE4()
{
  result = qword_1EDCC7320;
  if (!qword_1EDCC7320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC7320);
  }

  return result;
}

unint64_t sub_1BFA85B38()
{
  result = qword_1EDCC6AE8;
  if (!qword_1EDCC6AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC6AE8);
  }

  return result;
}

unint64_t sub_1BFA85B8C()
{
  result = qword_1EDCC6AE0;
  if (!qword_1EDCC6AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC6AE0);
  }

  return result;
}

unint64_t sub_1BFA85C10()
{
  result = qword_1EBDFBE98;
  if (!qword_1EBDFBE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFBE98);
  }

  return result;
}

unint64_t sub_1BFA85C64()
{
  result = qword_1EBDFBEB0;
  if (!qword_1EBDFBEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFBEB0);
  }

  return result;
}

uint64_t sub_1BFA85CB8(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDFBEA0, &qword_1BFAB54A0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BFA85D30()
{
  result = qword_1EBDFBEC8;
  if (!qword_1EBDFBEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFBEC8);
  }

  return result;
}

unint64_t sub_1BFA85DEC()
{
  result = qword_1EBDFBED8;
  if (!qword_1EBDFBED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFBED8);
  }

  return result;
}

unint64_t sub_1BFA85E40()
{
  result = qword_1EBDFBEE0;
  if (!qword_1EBDFBEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFBEE0);
  }

  return result;
}

unint64_t sub_1BFA85E94()
{
  result = qword_1EBDFBEF0;
  if (!qword_1EBDFBEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFBEF0);
  }

  return result;
}

unint64_t sub_1BFA85F50()
{
  result = qword_1EDCC7360;
  if (!qword_1EDCC7360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC7360);
  }

  return result;
}

unint64_t sub_1BFA85FA4()
{
  result = qword_1EBDFBF20;
  if (!qword_1EBDFBF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFBF20);
  }

  return result;
}

unint64_t sub_1BFA85FF8()
{
  result = qword_1EBDFBF28;
  if (!qword_1EBDFBF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFBF28);
  }

  return result;
}

unint64_t sub_1BFA8604C()
{
  result = qword_1EBDFBF30;
  if (!qword_1EBDFBF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFBF30);
  }

  return result;
}

unint64_t sub_1BFA860A0()
{
  result = qword_1EBDFBF38;
  if (!qword_1EBDFBF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFBF38);
  }

  return result;
}

unint64_t sub_1BFA860F4()
{
  result = qword_1EBDFBF40;
  if (!qword_1EBDFBF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFBF40);
  }

  return result;
}

unint64_t sub_1BFA86148()
{
  result = qword_1EDCC7338;
  if (!qword_1EDCC7338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC7338);
  }

  return result;
}

unint64_t sub_1BFA8619C()
{
  result = qword_1EDCC6C98[0];
  if (!qword_1EDCC6C98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDCC6C98);
  }

  return result;
}

void sub_1BFA861F0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1BFAAF858();
  [a3 setViewId_];
}

void sub_1BFA86248(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1BFAAF858();

  [a3 setBundleName_];
}

void sub_1BFA862AC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1BFAAE328();
  [a3 setModelData_];
}

unint64_t sub_1BFA86304()
{
  result = qword_1EBDFBF70;
  if (!qword_1EBDFBF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFBF70);
  }

  return result;
}

unint64_t sub_1BFA8636C()
{
  result = qword_1EBDFBF78;
  if (!qword_1EBDFBF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFBF78);
  }

  return result;
}

unint64_t sub_1BFA863D4()
{
  result = qword_1EDCC6C90;
  if (!qword_1EDCC6C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC6C90);
  }

  return result;
}

unint64_t sub_1BFA86428()
{
  result = qword_1EBDFBF88;
  if (!qword_1EBDFBF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFBF88);
  }

  return result;
}

unint64_t sub_1BFA8647C()
{
  result = qword_1EBDFBF90;
  if (!qword_1EBDFBF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFBF90);
  }

  return result;
}

unint64_t sub_1BFA864D0()
{
  result = qword_1EBDFBFA0;
  if (!qword_1EBDFBFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFBFA0);
  }

  return result;
}

unint64_t sub_1BFA86540()
{
  result = qword_1EDCC72F0;
  if (!qword_1EDCC72F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC72F0);
  }

  return result;
}

unint64_t sub_1BFA86598()
{
  result = qword_1EDCC72F8;
  if (!qword_1EDCC72F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC72F8);
  }

  return result;
}

unint64_t sub_1BFA865F0()
{
  result = qword_1EBDFBFA8;
  if (!qword_1EBDFBFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFBFA8);
  }

  return result;
}

unint64_t sub_1BFA86648()
{
  result = qword_1EBDFBFB0;
  if (!qword_1EBDFBFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFBFB0);
  }

  return result;
}

unint64_t sub_1BFA866A0()
{
  result = qword_1EBDFBFB8;
  if (!qword_1EBDFBFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFBFB8);
  }

  return result;
}

uint64_t sub_1BFA866FC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 168))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 96);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BFA8673C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 168) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 96) = (a2 - 1);
      return result;
    }

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BFA867B8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 108))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BFA867F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 108) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 108) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BFA86874(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7D && *(a1 + 225))
    {
      v2 = *a1 + 124;
    }

    else
    {
      v2 = ((*(a1 + 224) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 224) >> 1) & 0x1F))) ^ 0x7F;
      if (v2 >= 0x7C)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

void sub_1BFA868C0(char *a1, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *(a1 + 27) = 0;
    *(a1 + 200) = 0u;
    *(a1 + 184) = 0u;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    a1[224] = 0;
    *a1 = a2 - 125;
    if (a3 >= 0x7D)
    {
      a1[225] = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      a1[225] = 0;
    }

    if (a2)
    {
      v4 = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
      bzero(a1, 0xE0uLL);
      a1[224] = v4;
    }
  }
}

uint64_t sub_1BFA86994(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BFA869D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BFA86A28(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 225))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BFA86A68(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 216) = 0;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 224) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 225) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 225) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1BFA86AF8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 136))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BFA86B38(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *sub_1BFA86BD4(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_76_2(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SuggestionsRFDataModels.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1BFA86DB8(unsigned __int8 *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return OUTLINED_FUNCTION_68_0(a1);
}

_BYTE *sub_1BFA86E04(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1BFA86EB0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
    if (a2 + 8 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 8) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_1BFA86F38(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_76_2(result, a2 + 8);
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SuggestionsRFDataModels.SuggestionHelpDataModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xEE)
  {
    if (a2 + 18 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 18) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 19;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x13;
  v5 = v6 - 19;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SuggestionsRFDataModels.SuggestionHelpDataModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xED)
  {
    v6 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
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
          *result = a2 + 18;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SuggestionsRFDataModels.SuggestionHintsDataModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for SiriHelpSuggestion.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF6)
  {
    if (a2 + 10 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 10) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 11;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v5 = v6 - 11;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SiriHelpSuggestion.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1BFA873B8()
{
  result = qword_1EBDFBFC0;
  if (!qword_1EBDFBFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFBFC0);
  }

  return result;
}

unint64_t sub_1BFA87410()
{
  result = qword_1EBDFBFC8;
  if (!qword_1EBDFBFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFBFC8);
  }

  return result;
}

unint64_t sub_1BFA87468()
{
  result = qword_1EBDFBFD0;
  if (!qword_1EBDFBFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFBFD0);
  }

  return result;
}

unint64_t sub_1BFA874C0()
{
  result = qword_1EBDFBFD8;
  if (!qword_1EBDFBFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFBFD8);
  }

  return result;
}

unint64_t sub_1BFA87518()
{
  result = qword_1EBDFBFE0;
  if (!qword_1EBDFBFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFBFE0);
  }

  return result;
}

unint64_t sub_1BFA87570()
{
  result = qword_1EBDFBFE8;
  if (!qword_1EBDFBFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFBFE8);
  }

  return result;
}

unint64_t sub_1BFA875C8()
{
  result = qword_1EBDFBFF0;
  if (!qword_1EBDFBFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFBFF0);
  }

  return result;
}

unint64_t sub_1BFA87620()
{
  result = qword_1EBDFBFF8;
  if (!qword_1EBDFBFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFBFF8);
  }

  return result;
}

unint64_t sub_1BFA87678()
{
  result = qword_1EBDFC000;
  if (!qword_1EBDFC000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFC000);
  }

  return result;
}

unint64_t sub_1BFA876D0()
{
  result = qword_1EBDFC008;
  if (!qword_1EBDFC008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFC008);
  }

  return result;
}

unint64_t sub_1BFA87728()
{
  result = qword_1EBDFC010;
  if (!qword_1EBDFC010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFC010);
  }

  return result;
}

unint64_t sub_1BFA87780()
{
  result = qword_1EBDFC018;
  if (!qword_1EBDFC018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFC018);
  }

  return result;
}

unint64_t sub_1BFA877D8()
{
  result = qword_1EDCC7328;
  if (!qword_1EDCC7328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC7328);
  }

  return result;
}

unint64_t sub_1BFA87830()
{
  result = qword_1EDCC7330;
  if (!qword_1EDCC7330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC7330);
  }

  return result;
}

unint64_t sub_1BFA87888()
{
  result = qword_1EDCC7340;
  if (!qword_1EDCC7340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC7340);
  }

  return result;
}

unint64_t sub_1BFA878E0()
{
  result = qword_1EDCC7348;
  if (!qword_1EDCC7348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC7348);
  }

  return result;
}

unint64_t sub_1BFA87938()
{
  result = qword_1EDCC7300;
  if (!qword_1EDCC7300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC7300);
  }

  return result;
}

unint64_t sub_1BFA87990()
{
  result = qword_1EDCC7308;
  if (!qword_1EDCC7308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC7308);
  }

  return result;
}

unint64_t sub_1BFA879E8()
{
  result = qword_1EDCC7368;
  if (!qword_1EDCC7368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC7368);
  }

  return result;
}

unint64_t sub_1BFA87A40()
{
  result = qword_1EDCC7370;
  if (!qword_1EDCC7370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC7370);
  }

  return result;
}

unint64_t sub_1BFA87A98()
{
  result = qword_1EDCC7350;
  if (!qword_1EDCC7350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC7350);
  }

  return result;
}

unint64_t sub_1BFA87AF0()
{
  result = qword_1EDCC7358;
  if (!qword_1EDCC7358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCC7358);
  }

  return result;
}

unint64_t sub_1BFA87B48()
{
  result = qword_1EBDFC020;
  if (!qword_1EBDFC020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFC020);
  }

  return result;
}

unint64_t sub_1BFA87BA0()
{
  result = qword_1EBDFC028;
  if (!qword_1EBDFC028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFC028);
  }

  return result;
}

unint64_t sub_1BFA87BF8()
{
  result = qword_1EBDFC030;
  if (!qword_1EBDFC030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDFC030);
  }

  return result;
}