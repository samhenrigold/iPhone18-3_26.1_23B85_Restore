uint64_t sub_22FAAFCB0(uint64_t a1)
{
  v1[45] = OBJC_IVAR___PHAContextualPromptSuggestionTask_logger;
  v2 = sub_22FCC8664();
  v3 = sub_22FCC8F34();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_22FA28000, v2, v3, "Generating Contextual prompt suggestions", v4, 2u);
    MEMORY[0x23190A000](v4, -1, -1);
  }

  v5 = v1[40];
  v30 = v1[39];
  v31 = v1[41];
  v6 = v1[37];
  v32 = v1[36];
  v7 = v1[32];
  v29 = v1[31];
  v9 = v1[29];
  v8 = v1[30];

  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = v8;
  v1[6] = sub_22FA4ED4C;
  v1[7] = v10;
  v1[2] = MEMORY[0x277D85DD0];
  v1[3] = 1107296256;
  v1[4] = sub_22FA51A14;
  v1[5] = &block_descriptor_10;
  v11 = _Block_copy(v1 + 2);
  v12 = objc_opt_self();

  v13 = [v12 progressReporterWithProgressBlock_];
  v1[46] = v13;
  _Block_release(v11);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7260, &unk_22FCD1AD0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_22FCD17F0;
  sub_22FCC8514();
  sub_22FCC8504();
  v1[28] = v14;
  sub_22FAB1624(&qword_28147B000, MEMORY[0x277D3CA90], MEMORY[0x277D3CA98]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7268, &unk_22FCDA240);
  sub_22FA4ED8C();
  sub_22FCC9264();
  (*(v5 + 16))(v31, v29 + OBJC_IVAR___PHAContextualPromptSuggestionTask_loggerEvents, v30);
  sub_22FCC8564();
  v15 = sub_22FCC8554();
  v1[47] = v15;
  swift_allocObject();
  v16 = sub_22FCC8534();
  v1[48] = v16;
  (*(v6 + 56))(v7, 1, 1, v32);
  sub_22FCC84F4();
  sub_22FA2B420(v7, &qword_27DAD8010, &qword_22FCD4728);
  sub_22FCC8FF4();
  v17 = v1[31];
  v1[49] = *(v17 + OBJC_IVAR___PHAContextualPromptSuggestionTask_persister);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD72A8, &qword_22FCD4730);
  v18 = sub_22FCC74C4();
  v19 = *(v18 - 8);
  v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_22FCD1800;
  (*(v19 + 104))(v21 + v20, *MEMORY[0x277D3C128], v18);
  sub_22FCC7E84();

  v22 = [v13 childProgressReporterFromStart:0.1 toEnd:0.5];
  v1[50] = v22;
  v23 = *(v17 + OBJC_IVAR___PHAContextualPromptSuggestionTask_promptProvider + 24);
  v24 = *(v17 + OBJC_IVAR___PHAContextualPromptSuggestionTask_promptProvider + 32);
  __swift_project_boxed_opaque_existential_1((v17 + OBJC_IVAR___PHAContextualPromptSuggestionTask_promptProvider), v23);
  v25 = MEMORY[0x277D3CAA0];
  v1[11] = v15;
  v1[12] = v25;
  v1[8] = v16;
  v26 = *(v24 + 8);

  v33 = (v26 + *v26);
  v27 = swift_task_alloc();
  v1[51] = v27;
  *v27 = v1;
  v27[1] = sub_22FAB0318;

  return (v33)(v1 + 8, v22, v23, v24);
}

uint64_t sub_22FAB0318(uint64_t a1)
{
  v3 = *v2;
  v3[52] = a1;
  v3[53] = v1;

  if (v1)
  {
    v4 = sub_22FAB0938;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v3 + 8);
    v4 = sub_22FAB0434;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22FAB0434()
{

  v1 = sub_22FCC8664();
  v2 = sub_22FCC8F34();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 416);
  v5 = *(v0 + 400);
  if (v3)
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = *(v4 + 16);

    _os_log_impl(&dword_22FA28000, v1, v2, "Generated %ld prompt suggestions", v6, 0xCu);
    MEMORY[0x23190A000](v6, -1, -1);
  }

  else
  {
  }

  v7 = *(v0 + 416);
  v8 = *(v0 + 424);
  sub_22FCC8FF4();
  if (v8)
  {
    v16 = v8;
    v17 = sub_22FCC8664();
    v18 = sub_22FCC8F34();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      v21 = v8;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 4) = v22;
      *v20 = v22;
      _os_log_impl(&dword_22FA28000, v17, v18, "Failed to persist contextual suggestions %@", v19, 0xCu);
      sub_22FA2B420(v20, &unk_27DAD7B10, &unk_22FCD21C0);
      MEMORY[0x23190A000](v20, -1, -1);
      MEMORY[0x23190A000](v19, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v9 = *(v0 + 384);
    v10 = MEMORY[0x277D3CAA0];
    *(v0 + 208) = *(v0 + 376);
    *(v0 + 216) = v10;
    *(v0 + 184) = v9;

    v11 = sub_22FCC7E34();
    __swift_destroy_boxed_opaque_existential_0((v0 + 184));

    v12 = sub_22FCC8664();
    v13 = sub_22FCC8F34();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 134217984;
      v15 = *(v11 + 16);

      *(v14 + 4) = v15;

      _os_log_impl(&dword_22FA28000, v12, v13, "Persisted %ld Contextual prompt suggestions", v14, 0xCu);
      MEMORY[0x23190A000](v14, -1, -1);
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }

    sub_22FCC8FF4();
  }

  v23 = *(v0 + 248);
  v24 = *(v7 + 16);

  *(v23 + OBJC_IVAR___PHAContextualPromptSuggestionTask_recordsInserted) = v24;
  sub_22FA2E6E4(v23 + OBJC_IVAR___PHAContextualPromptSuggestionTask_taskProductivityReporter, v0 + 144);
  if (*(v0 + 168))
  {
    v25 = *(v0 + 248);
    sub_22FA2D89C((v0 + 144), v0 + 104);
    v26 = *(v0 + 128);
    v27 = *(v0 + 136);
    __swift_project_boxed_opaque_existential_1((v0 + 104), v26);
    (*(v27 + 16))(v24, *(v25 + OBJC_IVAR___PHAContextualPromptSuggestionTask_name), *(v25 + OBJC_IVAR___PHAContextualPromptSuggestionTask_name + 8), v26, v27);
    __swift_destroy_boxed_opaque_existential_0((v0 + 104));
  }

  else
  {
    sub_22FA2B420(v0 + 144, &unk_27DAD83A0, &qword_22FCD1AC0);
  }

  sub_22FCC9004();
  v28 = *(v0 + 264);
  v29 = (*(v0 + 272) + 8);
  v30 = *(v0 + 368);
  v31 = *(v0 + 280);
  sub_22FCC8544();

  (*v29)(v31, v28);

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_22FAB0938()
{
  v1 = *(v0 + 424);

  __swift_destroy_boxed_opaque_existential_0((v0 + 64));
  v2 = v1;
  v3 = sub_22FCC8664();
  v4 = sub_22FCC8F34();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 424);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_22FA28000, v3, v4, "Failed to fetch contextual suggestions %@", v7, 0xCu);
    sub_22FA2B420(v8, &unk_27DAD7B10, &unk_22FCD21C0);
    MEMORY[0x23190A000](v8, -1, -1);
    MEMORY[0x23190A000](v7, -1, -1);
  }

  else
  {
  }

  sub_22FCC8FF4();
  v11 = *(v0 + 384);
  v12 = MEMORY[0x277D3CAA0];
  *(v0 + 208) = *(v0 + 376);
  *(v0 + 216) = v12;
  *(v0 + 184) = v11;

  v13 = sub_22FCC7E34();
  __swift_destroy_boxed_opaque_existential_0((v0 + 184));

  v14 = sub_22FCC8664();
  v15 = sub_22FCC8F34();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 134217984;
    v17 = *(v13 + 16);

    *(v16 + 4) = v17;

    _os_log_impl(&dword_22FA28000, v14, v15, "Persisted %ld Contextual prompt suggestions", v16, 0xCu);
    MEMORY[0x23190A000](v16, -1, -1);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  sub_22FCC8FF4();
  v18 = *(v0 + 248);
  v19 = *(MEMORY[0x277D84F90] + 16);

  *(v18 + OBJC_IVAR___PHAContextualPromptSuggestionTask_recordsInserted) = v19;
  sub_22FA2E6E4(v18 + OBJC_IVAR___PHAContextualPromptSuggestionTask_taskProductivityReporter, v0 + 144);
  if (*(v0 + 168))
  {
    v20 = *(v0 + 248);
    sub_22FA2D89C((v0 + 144), v0 + 104);
    v21 = *(v0 + 128);
    v22 = *(v0 + 136);
    __swift_project_boxed_opaque_existential_1((v0 + 104), v21);
    (*(v22 + 16))(v19, *(v20 + OBJC_IVAR___PHAContextualPromptSuggestionTask_name), *(v20 + OBJC_IVAR___PHAContextualPromptSuggestionTask_name + 8), v21, v22);
    __swift_destroy_boxed_opaque_existential_0((v0 + 104));
  }

  else
  {
    sub_22FA2B420(v0 + 144, &unk_27DAD83A0, &qword_22FCD1AC0);
  }

  sub_22FCC9004();
  v23 = *(v0 + 264);
  v24 = (*(v0 + 272) + 8);
  v25 = *(v0 + 368);
  v26 = *(v0 + 280);
  sub_22FCC8544();

  (*v24)(v26, v23);

  v27 = *(v0 + 8);

  return v27();
}

id ContextualPromptSuggestionTask.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ContextualPromptSuggestionTask.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22FAB10C0()
{
  v1 = *(*v0 + OBJC_IVAR___PHAContextualPromptSuggestionTask_name);

  return v1;
}

uint64_t sub_22FAB1100()
{
  v1 = *(*v0 + OBJC_IVAR___PHAContextualPromptSuggestionTask_identifier);

  return v1;
}

uint64_t sub_22FAB1154()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD72B8, &qword_22FCD1BF0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_22FCD17F0;
  *(v0 + 32) = sub_22FA3A77C(0, &qword_28147AE58, off_2788AF1E8);
  *(v0 + 40) = sub_22FA3A77C(0, &qword_28147AE40, off_2788AF218);
  return v0;
}

uint64_t sub_22FAB121C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_22FA2C030;

  return sub_22FAAFAA0(a2, a3);
}

void sub_22FAB1314(uint64_t a1)
{
  if (a1)
  {
    sub_22FCC94D4();
    __break(1u);
  }

  else
  {
    sub_22FCC8F24();
    sub_22FA3A77C(0, &qword_28147ADA0, 0x277D86200);
    v1 = sub_22FCC91B4();
    sub_22FCC85A4();
  }
}

uint64_t sub_22FAB13F4()
{
  v1 = *(*v0 + OBJC_IVAR___PHAContextualPromptSuggestionTask_incrementalKey);

  return v1;
}

uint64_t sub_22FAB1434(uint64_t a1)
{
  *(a1 + 8) = sub_22FAB1624(&qword_28147D450, type metadata accessor for ContextualPromptSuggestionTask, MEMORY[0x277CC9E10]);
  result = sub_22FAB1624(&qword_27DAD7FB0, type metadata accessor for ContextualPromptSuggestionTask, MEMORY[0x277D85380]);
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for ContextualPromptSuggestionTask(uint64_t a1)
{
  result = qword_28147D458;
  if (!qword_28147D458)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22FAB150C(uint64_t a1)
{
  result = sub_22FCC8684();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t block_destroy_helper_10(uint64_t a1)
{
}

{
  return __swift_destroy_boxed_opaque_existential_0((a1 + 32));
}

uint64_t sub_22FAB1624(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_22FAB166C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22FCC65F4();
  v45 = *(v4 - 8);
  v46 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v44 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22FCC7E14();
  v47 = v7;
  v8 = *(v7 - 8);
  *&v10 = MEMORY[0x28223BE20](v7, v9).n128_u64[0];
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [*(a1 + 112) photoLibrary];
  sub_22FCC7884();
  swift_allocObject();
  v49 = v13;
  sub_22FCC7874();
  v48 = a2;
  sub_22FCC7DE4();
  v14 = *(v8 + 16);
  v14(v12, a2, v7);
  v15 = type metadata accessor for PromptSuggestionMeaningfulEventGroundingProvider(0);
  v16 = swift_allocObject();

  v50 = "Process Search Suggestions";
  sub_22FCC8674();
  v17 = v47;
  (*(v8 + 32))(v16 + OBJC_IVAR____TtC13PhotoAnalysis48PromptSuggestionMeaningfulEventGroundingProvider_storyPhotoLibraryContext, v12, v47);
  v51 = a1;
  *(v16 + OBJC_IVAR____TtC13PhotoAnalysis48PromptSuggestionMeaningfulEventGroundingProvider_graphManager) = a1;
  v18 = v48;
  v14(v12, v48, v17);
  v19 = v18;
  v52[3] = v15;
  v52[4] = sub_22FAC2F3C(&qword_28147B8F8, type metadata accessor for PromptSuggestionMeaningfulEventGroundingProvider, &unk_22FCD1E48);
  v52[0] = v16;

  CountAC18PhotosIntelligence05StoryagH0V_AG06MomentjklmN0_pSgSitcfC_0 = _s13PhotoAnalysis25PromptSuggestionValidatorC05storyA14LibraryContext37momentBasedGroundingAndAssetsProvider18maxAssetFetchCountAC18PhotosIntelligence05StoryagH0V_AG06MomentjklmN0_pSgSitcfC_0(v12, v52, 50);
  v21 = type metadata accessor for PromptSuggestionFetcher.Configuration(0);
  v22 = (v18 + v21[5]);
  v22[3] = type metadata accessor for PromptSuggestionValidator(0);
  v22[4] = &protocol witness table for PromptSuggestionValidator;
  *v22 = CountAC18PhotosIntelligence05StoryagH0V_AG06MomentjklmN0_pSgSitcfC_0;
  v23 = sub_22FCC8194();
  swift_allocObject();
  v24 = v49;
  v25 = sub_22FCC8184();
  v26 = MEMORY[0x277D3C668];
  v27 = (v19 + v21[6]);
  v27[3] = v23;
  v27[4] = v26;
  *v27 = v25;
  *(v19 + v21[7]) = [objc_allocWithZone(MEMORY[0x277D3C790]) initWithPhotoLibrary_];
  *(v19 + v21[8]) = 1;
  v28 = type metadata accessor for LocalizedStringProvider();
  v29 = swift_allocObject();
  v30 = type metadata accessor for PromptLocalizer();
  v31 = swift_allocObject();
  v31[5] = v28;
  v31[6] = &protocol witness table for LocalizedStringProvider;
  v31[2] = v29;
  v32 = (v19 + v21[9]);
  v32[3] = v30;
  v32[4] = &protocol witness table for PromptLocalizer;
  *v32 = v31;
  v33 = [objc_opt_self() mockMomentDataFromFile];
  v34 = sub_22FCC8A84();
  v36 = v35;

  v37 = HIBYTE(v36) & 0xF;
  if ((v36 & 0x2000000000000000) == 0)
  {
    v37 = v34 & 0xFFFFFFFFFFFFLL;
  }

  if (v37)
  {
    v38 = type metadata accessor for MockMomentContextProvider(0);
    v39 = swift_allocObject();
    sub_22FCC8674();
    v40 = v44;
    sub_22FCC6554();

    (*(v45 + 32))(v39 + OBJC_IVAR____TtC13PhotoAnalysis25MockMomentContextProvider_filePath, v40, v46);
    v41 = &protocol witness table for MockMomentContextProvider;
  }

  else
  {

    v38 = type metadata accessor for MomentContextProvider(0);
    v39 = swift_allocObject();
    sub_22FCC8674();
    v41 = &protocol witness table for MomentContextProvider;
  }

  v42 = (v19 + v21[10]);
  v42[3] = v38;
  v42[4] = v41;

  *v42 = v39;
}

uint64_t PromptSuggestionFetcher.__allocating_init(configuration:)(uint64_t a1)
{
  v2 = swift_allocObject();
  PromptSuggestionFetcher.init(configuration:)(a1);
  return v2;
}

uint64_t sub_22FAB1C2C()
{
  v1 = *(v0 + 16) + OBJC_IVAR____TtC13PhotoAnalysis23PromptSuggestionFetcher_configuration;
  v2 = (v1 + *(type metadata accessor for PromptSuggestionFetcher.Configuration(0) + 20));
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v3);
  v7 = (*(v4 + 32) + **(v4 + 32));
  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_22FA7CBA4;

  return v7(v3, v4);
}

uint64_t sub_22FAB1D6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[14] = a3;
  v4[15] = v3;
  v4[12] = a1;
  v4[13] = a2;
  v5 = type metadata accessor for PromptSuggestionFetcher.MCSuggestion(0);
  v4[16] = v5;
  v4[17] = *(v5 - 8);
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v6 = sub_22FCC67F4();
  v4[20] = v6;
  v4[21] = *(v6 - 8);
  v4[22] = swift_task_alloc();
  v7 = type metadata accessor for TemplatedPrompt(0);
  v4[23] = v7;
  v4[24] = *(v7 - 8);
  v4[25] = swift_task_alloc();
  v8 = sub_22FCC8084();
  v4[26] = v8;
  v4[27] = *(v8 - 8);
  v4[28] = swift_task_alloc();
  v9 = type metadata accessor for MomentContextResponse.PromptTemplate(0);
  v4[29] = v9;
  v4[30] = *(v9 - 8);
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  v10 = sub_22FCC7BC4();
  v4[36] = v10;
  v4[37] = *(v10 - 8);
  v4[38] = swift_task_alloc();
  v4[39] = swift_task_alloc();
  v11 = type metadata accessor for MomentContextResponse(0);
  v4[40] = v11;
  v4[41] = *(v11 - 8);
  v4[42] = swift_task_alloc();
  v4[43] = swift_task_alloc();
  v4[44] = swift_task_alloc();
  v4[45] = swift_task_alloc();
  v4[46] = swift_task_alloc();
  v12 = sub_22FCC68A4();
  v4[47] = v12;
  v4[48] = *(v12 - 8);
  v4[49] = swift_task_alloc();
  v13 = sub_22FCC7F34();
  v4[50] = v13;
  v4[51] = *(v13 - 8);
  v4[52] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FAB2188, 0, 0);
}

uint64_t sub_22FAB2188()
{
  v1 = *(v0[15] + 16);
  sub_22FCC76D4();
  swift_allocObject();
  v2 = v1;
  v3 = sub_22FCC76C4();
  v4 = OBJC_IVAR____TtC13PhotoAnalysis23PromptSuggestionFetcher_logger;
  v0[53] = v3;
  v0[54] = v4;
  v5 = sub_22FCC8664();
  v6 = sub_22FCC8F34();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[13];
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    *(v8 + 4) = v7;
    _os_log_impl(&dword_22FA28000, v5, v6, "Requesting suggestions with limit %ld", v8, 0xCu);
    MEMORY[0x23190A000](v8, -1, -1);
  }

  sub_22FCC8FF4();
  v0[55] = 0;
  sub_22FCC7644();
  v9 = swift_task_alloc();
  v0[56] = v9;
  *v9 = v0;
  v9[1] = sub_22FAB246C;
  v10 = v0[52];
  v11.n128_u64[0] = 0x404E000000000000;

  return MEMORY[0x28219C0A8](v10, v11);
}

uint64_t sub_22FAB246C()
{

  return MEMORY[0x2822009F8](sub_22FAB2568, 0, 0);
}

uint64_t sub_22FAB2568()
{
  v2 = *(v0 + 408);
  v1 = *(v0 + 416);
  v4 = *(v0 + 392);
  v3 = *(v0 + 400);
  v5 = *(v0 + 376);
  v6 = *(v0 + 384);
  v7 = *(v0 + 120);
  *(v0 + 496) = sub_22FCC7F24() & 1;
  (*(v2 + 8))(v1, v3);
  sub_22FCC6874();
  v8 = sub_22FCC6834();
  v10 = v9;
  (*(v6 + 8))(v4, v5);
  *(v0 + 16) = v8;
  *(v0 + 24) = v10;
  v11 = swift_task_alloc();
  *(v11 + 16) = v0 + 16;
  *(v0 + 497) = sub_22FB34410(sub_22FA7EDC8, v11, &unk_2844A4CD8) & 1;

  v12 = OBJC_IVAR____TtC13PhotoAnalysis23PromptSuggestionFetcher_configuration;
  *(v0 + 456) = OBJC_IVAR____TtC13PhotoAnalysis23PromptSuggestionFetcher_configuration;
  v13 = v7 + v12;
  v14 = type metadata accessor for PromptSuggestionFetcher.Configuration(0);
  *(v0 + 464) = v14;
  v15 = (v13 + *(v14 + 40));
  v16 = v15[3];
  v17 = v15[4];
  __swift_project_boxed_opaque_existential_1(v15, v16);
  v21 = (*(v17 + 8) + **(v17 + 8));
  v18 = swift_task_alloc();
  *(v0 + 472) = v18;
  *v18 = v0;
  v18[1] = sub_22FAB278C;
  v19 = *(v0 + 104);

  return v21(v19, v16, v17);
}

uint64_t sub_22FAB278C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 480) = a1;
  *(v3 + 488) = v1;

  if (v1)
  {

    v4 = sub_22FAB45DC;
  }

  else
  {
    v4 = sub_22FAB28AC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t *sub_22FAB28AC()
{
  v251 = v0;
  v1 = v0[60];
  v186 = *(v1 + 16);

  v2 = sub_22FCC8664();
  v3 = sub_22FCC8F34();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 134217984;
    *(v4 + 4) = *(v1 + 16);

    _os_log_impl(&dword_22FA28000, v2, v3, "Moments returned with %ld responses", v4, 0xCu);
    MEMORY[0x23190A000](v4, -1, -1);
  }

  else
  {
  }

  v5 = v0[61];
  sub_22FCC8FF4();
  if (v5)
  {

    goto LABEL_87;
  }

  v198 = [v0[14] childProgressReporterFromStart:0.5 toEnd:0.9];
  v6 = v186;
  if (v186 <= 1)
  {
    v6 = 1;
  }

  result = v0[60];
  v193 = *(v1 + 16);
  if (!v193)
  {

    v197 = 0;
    v235 = 0;
    v12 = MEMORY[0x277D84F90];
    goto LABEL_83;
  }

  v196 = v1;
  v197 = 0;
  v235 = 0;
  v8 = 0;
  v214 = 0;
  v9 = 0;
  v238 = v0 + 4;
  v248 = v0 + 6;
  v184 = v0[40];
  v10 = v0[37];
  v11 = v0[21];
  v195 = v0[41];
  v194 = result + ((*(v195 + 80) + 32) & ~*(v195 + 80));
  v247 = v0[27];
  v192 = v0[62] & *(v0 + 497);
  v190 = (v10 + 16);
  v191 = (v11 + 16);
  v199 = (v10 + 8);
  v189 = (v11 + 8);
  v12 = MEMORY[0x277D84F90];
  v13 = 1.0 / v6;
  v14 = 0.0;
  v218 = v0[46];
  v219 = v0[58];
  v185 = v0[45];
  v232 = v0[43];
  v180 = v0[42];
  v241 = v0[30];
  v246 = v0[29];
  v187 = v0[23];
  v188 = v0[24];
  v182 = v0[17];
  v183 = v0[19];
  v181 = v0[16];
  v249 = v0;
LABEL_12:
  if (v8 >= *(v196 + 16))
  {
    goto LABEL_95;
  }

  v15 = v0[45];
  v16 = v0[46];
  v17 = v0[44];
  v204 = v8;
  sub_22FAC2F84(v194 + *(v195 + 72) * v8, v16, type metadata accessor for MomentContextResponse);
  sub_22FAC2F84(v16, v15, type metadata accessor for MomentContextResponse);
  sub_22FAC2F84(v16, v17, type metadata accessor for MomentContextResponse);
  v18 = sub_22FCC8664();
  v19 = sub_22FCC8F34();
  v20 = os_log_type_enabled(v18, v19);
  v21 = v0[44];
  v22 = v0[45];
  v213 = v12;
  if (v20)
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v250[0] = v24;
    *v23 = 136315394;
    v242 = *(v185 + 104);
    v244 = v9;
    v25 = *(v185 + 112);

    sub_22FAC2FEC(v22, type metadata accessor for MomentContextResponse);
    v26 = sub_22FA2F600(v242, v25, v250);
    v9 = v244;

    *(v23 + 4) = v26;
    *(v23 + 12) = 2048;
    v27 = *(*v21 + 16);
    sub_22FAC2FEC(v21, type metadata accessor for MomentContextResponse);
    *(v23 + 14) = v27;
    _os_log_impl(&dword_22FA28000, v18, v19, "Processing moment context response %s with %ld prompts", v23, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v24);
    MEMORY[0x23190A000](v24, -1, -1);
    MEMORY[0x23190A000](v23, -1, -1);
  }

  else
  {
    sub_22FAC2FEC(v21, type metadata accessor for MomentContextResponse);

    sub_22FAC2FEC(v22, type metadata accessor for MomentContextResponse);
  }

  v14 = v13 + v14;
  sub_22FCC8FF4();
  result = v0[46];
  v28 = *result;
  v29 = *(*result + 16);
  if (!v29)
  {
    sub_22FAC2F84(result, v0[42], type metadata accessor for MomentContextResponse);
    v150 = sub_22FCC8664();
    v151 = sub_22FCC8F14();
    v152 = os_log_type_enabled(v150, v151);
    v153 = v0[42];
    if (v152)
    {
      v154 = swift_slowAlloc();
      v155 = swift_slowAlloc();
      v250[0] = v155;
      *v154 = 136315138;
      v156 = *(v180 + 104);
      v157 = *(v180 + 112);

      sub_22FAC2FEC(v153, type metadata accessor for MomentContextResponse);
      v158 = sub_22FA2F600(v156, v157, v250);

      *(v154 + 4) = v158;
      _os_log_impl(&dword_22FA28000, v150, v151, "Suggestion %s has empty prompts", v154, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v155);
      MEMORY[0x23190A000](v155, -1, -1);
      MEMORY[0x23190A000](v154, -1, -1);
    }

    else
    {

      sub_22FAC2FEC(v153, type metadata accessor for MomentContextResponse);
    }

    goto LABEL_11;
  }

  v197 = v9 + v29;
  if (__OFADD__(v9, v29))
  {
    goto LABEL_97;
  }

  v30 = v218[1];
  v31 = v218[2];
  v32 = v218[3];
  v33 = v218[4];
  v34 = v218[5];
  v35 = v218[6];
  v37 = v218[7];
  v36 = v218[8];

  v230 = v31;
  v231 = v30;
  v228 = v33;
  v229 = v32;
  v226 = v35;
  v227 = v34;
  v224 = v36;
  v225 = v37;
  result = sub_22FCC7B94();
  v243 = *(v28 + 16);
  if (!v243)
  {
    v223 = MEMORY[0x277D84F90];
    goto LABEL_73;
  }

  v38 = 0;
  v240 = v28 + ((*(v241 + 80) + 32) & ~*(v241 + 80));
  v223 = MEMORY[0x277D84F90];
  v239 = v28;
LABEL_20:
  if (v38 >= *(v28 + 16))
  {
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
    return result;
  }

  v39 = v0[46];
  v40 = v0[43];
  v42 = v0[34];
  v41 = v0[35];
  v245 = v38;
  sub_22FAC2F84(v240 + *(v241 + 72) * v38, v41, type metadata accessor for MomentContextResponse.PromptTemplate);
  sub_22FAC2F84(v39, v40, type metadata accessor for MomentContextResponse);
  sub_22FAC2F84(v41, v42, type metadata accessor for MomentContextResponse.PromptTemplate);
  v43 = sub_22FCC8664();
  v44 = sub_22FCC8F34();
  v45 = os_log_type_enabled(v43, v44);
  v46 = v0[43];
  v47 = v0[34];
  if (v45)
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v250[0] = v49;
    *v48 = 136315394;
    v50 = *(v232 + 104);
    v51 = *(v232 + 112);

    sub_22FAC2FEC(v46, type metadata accessor for MomentContextResponse);
    v52 = sub_22FA2F600(v50, v51, v250);

    *(v48 + 4) = v52;
    *(v48 + 12) = 2080;
    v53 = (v47 + v246[5]);
    v54 = *v53;
    v55 = v53[1];

    sub_22FAC2FEC(v47, type metadata accessor for MomentContextResponse.PromptTemplate);
    v56 = sub_22FA2F600(v54, v55, v250);

    *(v48 + 14) = v56;
    _os_log_impl(&dword_22FA28000, v43, v44, "Processing prompt from moment context %s : %s", v48, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23190A000](v49, -1, -1);
    MEMORY[0x23190A000](v48, -1, -1);
  }

  else
  {

    sub_22FAC2FEC(v47, type metadata accessor for MomentContextResponse.PromptTemplate);
    sub_22FAC2FEC(v46, type metadata accessor for MomentContextResponse);
  }

  if (qword_27DAD6F50 != -1)
  {
    swift_once();
  }

  v57 = qword_27DAD9198;
  v58 = (v0[35] + v246[5]);
  v59 = *v58;
  v60 = v58[1];
  v0[4] = *v58;
  v0[5] = v60;
  v61 = swift_task_alloc();
  *(v61 + 16) = v238;
  LOBYTE(v57) = sub_22FB34410(sub_22FAC5684, v61, v57);

  if (v57)
  {
    sub_22FAC2F84(v0[35], v0[32], type metadata accessor for MomentContextResponse.PromptTemplate);
    v62 = sub_22FCC8664();
    v63 = sub_22FCC8F04();
    v64 = os_log_type_enabled(v62, v63);
    v65 = v0[32];
    if (v64)
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v250[0] = v67;
      *v66 = 136315138;
      v68 = (v65 + v246[5]);
      v69 = *v68;
      v70 = v68[1];

      sub_22FAC2FEC(v65, type metadata accessor for MomentContextResponse.PromptTemplate);
      v71 = sub_22FA2F600(v69, v70, v250);

      *(v66 + 4) = v71;
      _os_log_impl(&dword_22FA28000, v62, v63, "Skipping prompt suggestion, manually disabled %s", v66, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v67);
      MEMORY[0x23190A000](v67, -1, -1);
      v72 = v66;
      goto LABEL_35;
    }

    v99 = v65;
    goto LABEL_39;
  }

  sub_22FCC8094();
  v236 = v60;
  v237 = v59;
  v73 = sub_22FCC8034();
  v74 = 0;
  v0 = *(v73 + 16);
  while (1)
  {
    if (v0 == v74)
    {
      v0 = v249;
      v94 = v249[57];
      v95 = v249[15];

      v96 = (v95 + v94 + *(v219 + 36));
      v97 = v96[3];
      v98 = v96[4];
      __swift_project_boxed_opaque_existential_1(v96, v97);
      v220 = (*(v98 + 8))(v237, v236, v231, v230, v229, v228, v227, v226, v225, v224, v97, v98);
      v102 = v101;
      v103 = v96[3];
      v104 = v96[4];
      __swift_project_boxed_opaque_existential_1(v96, v103);
      if (v192)
      {
        v105 = v218[9];
        v106 = v218[10];
        v108 = v218[11];
        v107 = v218[12];
        v109 = (*(v104 + 16))(v250, v105, v106, v108, v107, v103, v104);
        v217 = v107;
        v207 = v110;
        v208 = v109;
        if (SLOBYTE(v250[0]) == 6)
        {
          v206 = 0;
        }

        else
        {
          v206 = qword_22FCD4AD8[SLOBYTE(v250[0])];
        }

        v209 = v108;
        v210 = v106;
        v211 = v105;
        v205 = SLOBYTE(v250[0]) == 6;
        LOBYTE(v250[0]) = v205;
      }

      else
      {
        v111 = (*(v104 + 24))(v250, v103, v104);
        v207 = v112;
        v208 = v111;
        v210 = 0;
        v211 = 0;
        v209 = 0;
        v217 = 0;
        v205 = 0;
        v206 = qword_22FCD4AD8[SLOBYTE(v250[0])];
      }

      v212 = v102;
      v235 = sub_22FCC8AF4();
      v114 = v113;
      v115 = sub_22FCC8064();
      v116 = 0;
      v118 = v115 + 56;
      v117 = *(v115 + 56);
      v233 = v115;
      v119 = -1 << *(v115 + 32);
      if (-v119 < 64)
      {
        v120 = ~(-1 << -v119);
      }

      else
      {
        v120 = -1;
      }

      v121 = v120 & v117;
      v122 = (63 - v119) >> 6;
      v221 = v114;
      if ((v120 & v117) != 0)
      {
        goto LABEL_56;
      }

      do
      {
LABEL_57:
        v123 = v116 + 1;
        if (__OFADD__(v116, 1))
        {
          __break(1u);
          goto LABEL_91;
        }

        if (v123 >= v122)
        {
          v132 = v249[38];
          v133 = v249[35];
          v202 = v249[36];
          v203 = v249[39];
          v134 = v249[25];
          v135 = v249[22];
          v136 = v249[20];

          v137 = *v191;
          v216 = v135;
          (*v191)(v135, v133, v136);
          v200 = *(v133 + v246[6]);
          v201 = v218[15];
          v222 = *(v133 + v246[7]);
          v234 = *v190;
          (*v190)(v132, v203, v202);
          v137(v134, v135, v136);
          v138 = (v134 + v187[5]);
          *v138 = v237;
          v138[1] = v236;
          v139 = (v134 + v187[6]);
          *v139 = v220;
          v139[1] = v212;
          v140 = (v134 + v187[7]);
          *v140 = v220;
          v140[1] = v212;
          *(v134 + v187[8]) = v200;
          *(v134 + v187[9]) = v201;
          *(v134 + v187[10]) = v222;
          v141 = v134 + v187[11];
          *v141 = v208;
          *(v141 + 8) = v207;
          *(v141 + 16) = v211;
          *(v141 + 24) = v210;
          *(v141 + 32) = v209;
          *(v141 + 40) = v217;
          *(v141 + 48) = v206;
          *(v141 + 56) = v205;
          v234(v134 + v187[13], v132, v202);

          v142 = _s13PhotoAnalysis15TemplatedPromptV10promptHash4fromS2S_tFZ_0(v237, v236);
          v144 = v143;
          (*v199)(v132, v202);
          (*v189)(v216, v136);
          v145 = (v134 + v187[12]);
          *v145 = v142;
          v145[1] = v144;
          v146 = v223;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v146 = sub_22FAC1E40(0, v223[2] + 1, 1, v223, &qword_27DAD7860, &qword_22FCD9BC0, type metadata accessor for TemplatedPrompt);
          }

          v100 = v245;
          v148 = v146[2];
          v147 = v146[3];
          if (v148 >= v147 >> 1)
          {
            v146 = sub_22FAC1E40((v147 > 1), v148 + 1, 1, v146, &qword_27DAD7860, &qword_22FCD9BC0, type metadata accessor for TemplatedPrompt);
          }

          v149 = v249[25];
          v146[2] = v148 + 1;
          result = sub_22FAC5164(v149, v146 + ((*(v188 + 80) + 32) & ~*(v188 + 80)) + *(v188 + 72) * v148, type metadata accessor for TemplatedPrompt);
          if (__OFADD__(v214, 1))
          {
            goto LABEL_96;
          }

          v223 = v146;
          v235 = ++v214;
          v28 = v239;
          goto LABEL_41;
        }

        v121 = *(v118 + 8 * v123);
        ++v116;
      }

      while (!v121);
      while (1)
      {
        v124 = (*(v233 + 48) + ((v123 << 10) | (16 * __clz(__rbit64(v121)))));
        v125 = *v124;
        v126 = v124[1];
        v121 &= v121 - 1;
        v249[8] = v235;
        v249[9] = v114;
        v249[10] = v125;
        v249[11] = v126;
        sub_22FA7FD88();

        if ((sub_22FCC9224() & 1) == 0)
        {
          goto LABEL_55;
        }

        v127 = sub_22FCC8664();
        v128 = sub_22FCC8F14();

        if (!os_log_type_enabled(v127, v128))
        {
          break;
        }

        v129 = swift_slowAlloc();
        v215 = swift_slowAlloc();
        v250[0] = v215;
        *v129 = 136380931;
        *(v129 + 4) = sub_22FA2F600(v235, v221, v250);
        *(v129 + 12) = 2080;
        v130 = sub_22FA2F600(v125, v126, v250);

        *(v129 + 14) = v130;
        _os_log_impl(&dword_22FA28000, v127, v128, "Found placeholder value in hydrated prompt:%{private}s. PlaceholderValue:%s", v129, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x23190A000](v215, -1, -1);
        v131 = v129;
        v114 = v221;
        MEMORY[0x23190A000](v131, -1, -1);

        v116 = v123;
        if (!v121)
        {
          goto LABEL_57;
        }

LABEL_56:
        v123 = v116;
      }

LABEL_55:

      v116 = v123;
      if (!v121)
      {
        goto LABEL_57;
      }

      goto LABEL_56;
    }

    if (v74 >= *(v73 + 16))
    {
      break;
    }

    v75 = v249[28];
    v76 = v249[26];
    (*(v247 + 16))(v75, v73 + ((*(v247 + 80) + 32) & ~*(v247 + 80)) + *(v247 + 72) * v74++, v76);
    v249[6] = sub_22FCC8044();
    v249[7] = v77;
    v78 = swift_task_alloc();
    *(v78 + 16) = v248;
    v79 = sub_22FB34410(sub_22FAC5684, v78, &unk_2844A54B8);

    (*(v247 + 8))(v75, v76);

    if (v79)
    {
      v0 = v249;
      v80 = v249[35];
      v81 = v249[33];

      sub_22FAC2F84(v80, v81, type metadata accessor for MomentContextResponse.PromptTemplate);
      v62 = sub_22FCC8664();
      v82 = sub_22FCC8F04();
      v83 = os_log_type_enabled(v62, v82);
      v84 = v249[33];
      if (!v83)
      {

        v99 = v84;
LABEL_39:
        sub_22FAC2FEC(v99, type metadata accessor for MomentContextResponse.PromptTemplate);
        goto LABEL_40;
      }

      v85 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v250[0] = v86;
      *v85 = 136315394;
      v87 = (v84 + v246[5]);
      v88 = *v87;
      v89 = v87[1];

      sub_22FAC2FEC(v84, type metadata accessor for MomentContextResponse.PromptTemplate);
      v90 = sub_22FA2F600(v88, v89, v250);

      *(v85 + 4) = v90;
      *(v85 + 12) = 2080;
      v91 = MEMORY[0x2319080B0](&unk_2844A54B8, MEMORY[0x277D837D0]);
      v93 = sub_22FA2F600(v91, v92, v250);

      *(v85 + 14) = v93;
      _os_log_impl(&dword_22FA28000, v62, v82, "Skipping prompt suggestion, manually disabled parameter type %s | %s", v85, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23190A000](v86, -1, -1);
      v72 = v85;
LABEL_35:
      MEMORY[0x23190A000](v72, -1, -1);

LABEL_40:
      v28 = v239;
      v100 = v245;
LABEL_41:
      v38 = v100 + 1;
      result = sub_22FAC2FEC(v0[35], type metadata accessor for MomentContextResponse.PromptTemplate);
      if (v38 == v243)
      {
LABEL_73:
        if (v223[2])
        {
          v159 = v0[46];
          v160 = v0[18];
          v161 = v0[19];
          v163 = v218[13];
          v162 = v218[14];
          v164 = *(v184 + 52);
          v165 = *(v181 + 24);
          v166 = sub_22FCC6794();
          (*(*(v166 - 8) + 16))(&v161[v165], v159 + v164, v166);
          *v161 = v163;
          *(v183 + 8) = v162;
          *(v183 + 16) = v223;
          sub_22FAC2F84(v161, v160, type metadata accessor for PromptSuggestionFetcher.MCSuggestion);

          v12 = v213;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v12 = sub_22FAC1E40(0, v213[2] + 1, 1, v213, &qword_27DAD72B0, &qword_22FCD1BE0, type metadata accessor for PromptSuggestionFetcher.MCSuggestion);
          }

          v168 = v12[2];
          v167 = v12[3];
          if (v168 >= v167 >> 1)
          {
            v12 = sub_22FAC1E40((v167 > 1), v168 + 1, 1, v12, &qword_27DAD72B0, &qword_22FCD1BE0, type metadata accessor for PromptSuggestionFetcher.MCSuggestion);
          }

          v169 = v0[39];
          v170 = v0[36];
          v171 = v0[18];
          sub_22FAC2FEC(v0[19], type metadata accessor for PromptSuggestionFetcher.MCSuggestion);
          (*v199)(v169, v170);
          v12[2] = v168 + 1;
          sub_22FAC5164(v171, v12 + ((*(v182 + 80) + 32) & ~*(v182 + 80)) + *(v182 + 72) * v168, type metadata accessor for PromptSuggestionFetcher.MCSuggestion);
          v9 = v197;
        }

        else
        {
          (*v199)(v0[39], v0[36]);

          v9 = v197;
          v12 = v213;
        }

LABEL_11:
        result = sub_22FAC2FEC(v0[46], type metadata accessor for MomentContextResponse);
        v8 = v204 + 1;
        if (v204 + 1 == v193)
        {

LABEL_83:

          v173 = sub_22FCC8664();
          v174 = sub_22FCC8F34();
          if (os_log_type_enabled(v173, v174))
          {
            v175 = swift_slowAlloc();
            *v175 = 134217984;
            *(v175 + 4) = v12[2];

            _os_log_impl(&dword_22FA28000, v173, v174, "Parsed %ld journal suggestions", v175, 0xCu);
            MEMORY[0x23190A000](v175, -1, -1);
          }

          else
          {
          }

          v118 = v12[2];
          sub_22FCC9004();
          v123 = v12;
          sub_22FCC9004();
LABEL_91:
          v177 = v0[12];
          v177[3] = &type metadata for PromptSuggestionFetchDiagnosticContext;
          v177[4] = &protocol witness table for PromptSuggestionFetchDiagnosticContext;
          v178 = swift_allocObject();
          *v177 = v178;

          v178[2] = v186;
          v178[3] = v197;
          v178[4] = v118;
          v178[5] = v235;
          v178[6] = MEMORY[0x277D84F90];
          sub_22FCC76B4();

          v179 = v0[1];

          return v179(v123);
        }

        goto LABEL_12;
      }

      goto LABEL_20;
    }
  }

  __break(1u);
  v172 = v0[46];

  sub_22FAC2FEC(v172, type metadata accessor for MomentContextResponse);
LABEL_87:

  sub_22FCC76B4();

  v176 = v0[1];

  return v176();
}

uint64_t sub_22FAB45DC(uint64_t a1)
{
  sub_22FCC76B4();

  v2 = *(v1 + 8);

  return v2();
}

uint64_t PromptSuggestionFetcher.MCSuggestion.init(contextId:prompts:creationDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  *a5 = a1;
  *(a5 + 1) = a2;
  *(a5 + 2) = a3;
  v7 = *(type metadata accessor for PromptSuggestionFetcher.MCSuggestion(0) + 24);
  v8 = sub_22FCC6794();
  v9 = *(*(v8 - 8) + 32);

  return v9(&a5[v7], a4, v8);
}

uint64_t sub_22FAB47D4(uint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) == 0)
  {
    return a2;
  }

  __break(1u);
  return result;
}

void sub_22FAB480C(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7298, &qword_22FCD47F0);
  v6 = MEMORY[0x28223BE20](v3, v4);
  v8 = (&v17 - v7);
  v10 = *v1;
  v9 = v1[1];
  v11 = *(*v1 + 16);
  if (v9 == v11)
  {
    v12 = *(v5 + 56);

    v12(a1, 1, 1, v3, v6);
  }

  else
  {
    if (v9 >= v11)
    {
      __break(1u);
    }

    else
    {
      v18 = v5;
      v13 = *(type metadata accessor for PromptSuggestionFetcher.MCSuggestion(0) - 8);
      v14 = v10 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v9;
      v1[1] = v9 + 1;
      v15 = *(v3 + 48);
      v16 = v1[2];
      *v8 = v16;
      sub_22FAC2F84(v14, v8 + v15, type metadata accessor for PromptSuggestionFetcher.MCSuggestion);
      if (!__OFADD__(v16, 1))
      {
        v1[2] = v16 + 1;
        sub_22FA4F224(v8, a1, &qword_27DAD7298, &qword_22FCD47F0);
        (*(v18 + 56))(a1, 0, 1, v3);
        return;
      }
    }

    __break(1u);
  }
}

uint64_t sub_22FAB49FC()
{
  v1 = v0[3];
  v2 = v0[4];
  if (!v2)
  {
    v4 = (v0[2] + 64) >> 6;
    if (v4 <= v1 + 1)
    {
      v5 = v1 + 1;
    }

    else
    {
      v5 = (v0[2] + 64) >> 6;
    }

    v6 = v5 - 1;
    while (1)
    {
      v3 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        break;
      }

      if (v3 >= v4)
      {
        v7 = 0;
        v0[3] = v6;
        v0[4] = 0;
        return v7;
      }

      v2 = *(v0[1] + 8 * v3);
      ++v1;
      if (v2)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

  v3 = v0[3];
LABEL_10:
  v0[3] = v3;
  v0[4] = (v2 - 1) & v2;
  v7 = v0[5];
  if (__OFADD__(v7, 1))
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v0[5] = v7 + 1;

  return v7;
}

uint64_t PromptSuggestionFetcher.validateSmartSuggestions(_:eventRecorder:progressReporter:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[14] = a3;
  v4[15] = v3;
  v4[12] = a1;
  v4[13] = a2;
  return MEMORY[0x2822009F8](sub_22FAB4B10, 0, 0);
}

uint64_t sub_22FAB4B10()
{
  v1 = *(*(v0 + 120) + 16);
  sub_22FCC76D4();
  swift_allocObject();
  v2 = v1;
  *(v0 + 128) = sub_22FCC76C4();
  sub_22FCC8FF4();
  v3 = [*(v0 + 112) childProgressReporterFromStart:0.1 toEnd:0.9];
  *(v0 + 136) = v3;
  v4 = swift_task_alloc();
  *(v0 + 144) = v4;
  *v4 = v0;
  v4[1] = sub_22FAB4C80;
  v5 = *(v0 + 96);
  v6 = *(v0 + 104);

  return PromptSuggestionFetcher.processFetchedSuggestions(fetchedSuggestions:eventRecorder:progressReporter:)(v0 + 56, v5, v6, v3);
}

uint64_t sub_22FAB4C80(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 152) = a1;
  *(v3 + 160) = v1;

  if (v1)
  {
    v4 = sub_22FAB4EC8;
  }

  else
  {

    v4 = sub_22FAB4D9C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22FAB4D9C()
{
  v1 = *(v0 + 160);
  sub_22FA2CF78((v0 + 56), v0 + 16);
  sub_22FCC9004();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    sub_22FCC76B4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8018, &qword_22FCD47A8);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_22FCD1800;
    sub_22FA2CF78((v0 + 16), v4 + 32);

    v5 = *(v0 + 8);
    v6 = *(v0 + 152);

    return v5(v6, v4);
  }
}

uint64_t sub_22FAB4EC8()
{
  v1 = *(v0 + 136);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t PromptSuggestionFetcher.prioritizeAndRankPromptSuggestions(_:momentSuggestions:eventRecorder:progressReporter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[15] = a4;
  v5[16] = v4;
  v5[13] = a2;
  v5[14] = a3;
  v5[12] = a1;
  v6 = sub_22FCC84E4();
  v5[17] = v6;
  v5[18] = *(v6 - 8);
  v5[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FAB4FF8, 0, 0);
}

uint64_t sub_22FAB4FF8()
{
  v1 = *(v0 + 112);
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_22FCC8414();
  sub_22FCC8FF4();
  v2 = PromptSuggestionFetcher.prioritizePromptSuggestions(promptSuggestions:)((v0 + 16), *(v0 + 96));
  v4 = v3;
  sub_22FCC8FF4();
  PromptSuggestionFetcher.rankSuggestions(fetchedSuggestions:smartSuggestions:optOutSuggestions:)((v0 + 56), *(v0 + 104), v2, v4);
  v6 = v5;

  v7 = sub_22FCC8664();
  v8 = sub_22FCC8F34();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 134217984;
    *(v9 + 4) = *(v6 + 16);

    _os_log_impl(&dword_22FA28000, v7, v8, "Validated and ranked smart suggestions: %ld", v9, 0xCu);
    MEMORY[0x23190A000](v9, -1, -1);
  }

  else
  {
  }

  sub_22FCC9004();
  v10 = *(v0 + 152);
  v11 = *(v0 + 136);
  v12 = *(v0 + 144);
  v13 = *(v0 + 112);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8018, &qword_22FCD47A8);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_22FCD17F0;
  sub_22FA2D328(v0 + 16, v14 + 32);
  sub_22FA2D328(v0 + 56, v14 + 72);
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_project_boxed_opaque_existential_1(v13, v1[3]);
  sub_22FCC83F4();
  (*(v12 + 8))(v10, v11);

  v15 = *(v0 + 8);

  return v15(v6, v14);
}

uint64_t PromptSuggestionFetcher.fetchAndValidateSearchSuggestions(eventRecorder:progressReporter:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_22FAB537C, 0, 0);
}

uint64_t sub_22FAB537C()
{
  v1 = *(v0[4] + 16);
  sub_22FCC76D4();
  swift_allocObject();
  v2 = v1;
  v0[5] = sub_22FCC76C4();
  sub_22FCC8FF4();
  v3 = v0[4] + OBJC_IVAR____TtC13PhotoAnalysis23PromptSuggestionFetcher_configuration;
  v4 = (v3 + *(type metadata accessor for PromptSuggestionFetcher.Configuration(0) + 24));
  v5 = v4[3];
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v5);
  v7 = swift_task_alloc();
  v0[6] = v7;
  *v7 = v0;
  v7[1] = sub_22FAB54E8;

  return MEMORY[0x28219C758](3, v5, v6);
}

uint64_t sub_22FAB54E8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 56) = a1;
  *(v3 + 64) = v1;

  if (v1)
  {
    v4 = sub_22FAB5A5C;
  }

  else
  {
    v4 = sub_22FAB55FC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22FAB55FC()
{
  *(v0 + 72) = OBJC_IVAR____TtC13PhotoAnalysis23PromptSuggestionFetcher_logger;

  v1 = sub_22FCC8664();
  v2 = sub_22FCC8F34();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 56);
  if (v3)
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    if (v4 >> 62)
    {
      v15 = v5;
      v6 = sub_22FCC92C4();
      v5 = v15;
    }

    else
    {
      v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v5 + 4) = v6;
    v7 = v5;

    _os_log_impl(&dword_22FA28000, v1, v2, "Fetched %ld search suggested prompts", v7, 0xCu);
    MEMORY[0x23190A000](v7, -1, -1);
  }

  else
  {
  }

  v8 = *(v0 + 64);
  sub_22FCC8FF4();
  if (v8)
  {

    v9 = *(v0 + 8);

    return v9();
  }

  else
  {
    v11 = [*(v0 + 24) childProgressReporterFromStart:0.5 toEnd:0.9];
    *(v0 + 80) = v11;
    v12 = swift_task_alloc();
    *(v0 + 88) = v12;
    *v12 = v0;
    v12[1] = sub_22FAB5818;
    v13 = *(v0 + 56);
    v14 = *(v0 + 16);

    return sub_22FABB5FC(v13, v14, v11);
  }
}

uint64_t sub_22FAB5818(uint64_t a1)
{
  v3 = *v2;
  v3[12] = a1;
  v3[13] = v1;

  if (v1)
  {
    v4 = sub_22FAB5AC0;
  }

  else
  {
    v5 = v3[10];

    v4 = sub_22FAB593C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22FAB593C()
{

  v1 = sub_22FCC8664();
  v2 = sub_22FCC8F34();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 96);
  if (v3)
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = *(v4 + 16);

    _os_log_impl(&dword_22FA28000, v1, v2, "Processed %ld search suggested prompts", v5, 0xCu);
    MEMORY[0x23190A000](v5, -1, -1);
  }

  else
  {
  }

  sub_22FCC76B4();

  v6 = *(v0 + 8);
  v7 = *(v0 + 96);

  return v6(v7);
}

uint64_t sub_22FAB5A5C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FAB5AC0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FAB5B3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_22FCC9844();
  sub_22FCC8B14();
  v6 = sub_22FCC9894();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_22FCC9704() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_22FAB5C34(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (v4 = sub_22FCC9304(), v5 = -1 << *(a2 + 32), v6 = v4 & ~v5, ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0))
  {
    v7 = ~v5;
    do
    {
      sub_22FA728C0(*(a2 + 48) + 40 * v6, v10);
      v8 = MEMORY[0x231908770](v10, a1);
      sub_22FA3A7C4(v10);
      if (v8)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

BOOL sub_22FAB5D0C(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = sub_22FCC9834();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 8 * v6);
    result = v8 == a1;
    if (v8 == a1)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t PromptSuggestionFetcher.Configuration.init(photoLibrary:validator:searchSuggestionsDataSource:curationContext:enableDejunkingDeduping:promptLocalizer:momentContextProvider:)@<X0>(__int128 *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, __int128 *a6@<X5>, __int128 *a7@<X6>, uint64_t a8@<X8>)
{
  sub_22FCC7884();
  swift_allocObject();
  sub_22FCC7874();
  sub_22FCC7DE4();
  v15 = type metadata accessor for PromptSuggestionFetcher.Configuration(0);
  sub_22FA2CF78(a2, a8 + v15[5]);
  sub_22FA2CF78(a3, a8 + v15[6]);
  *(a8 + v15[7]) = a4;
  *(a8 + v15[8]) = a5;
  sub_22FA2CF78(a6, a8 + v15[9]);
  v16 = a8 + v15[10];

  return sub_22FA2CF78(a7, v16);
}

uint64_t PromptSuggestionFetcher.MCSuggestion.contextId.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PromptSuggestionFetcher.MCSuggestion.creationDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PromptSuggestionFetcher.MCSuggestion(0) + 24);
  v4 = sub_22FCC6794();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t static PromptSuggestionFetcher.MCSuggestion.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_22FCC9704();
  }
}

uint64_t PromptSuggestionFetcher.MCSuggestion.description.getter()
{
  sub_22FCC9384();
  MEMORY[0x231907FA0](0xD000000000000018, 0x800000022FCE1FF0);
  MEMORY[0x231907FA0](*v0, v0[1]);
  MEMORY[0x231907FA0](0xD000000000000010, 0x800000022FCE2010);
  type metadata accessor for PromptSuggestionFetcher.MCSuggestion(0);
  sub_22FCC6794();
  sub_22FAC2F3C(&qword_281482528, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
  v1 = sub_22FCC96C4();
  MEMORY[0x231907FA0](v1);

  MEMORY[0x231907FA0](0x74706D6F7270202CLL, 0xEF203A746E756F43);
  v2 = sub_22FCC96C4();
  MEMORY[0x231907FA0](v2);

  MEMORY[0x231907FA0](41, 0xE100000000000000);
  return 0;
}

uint64_t PromptSuggestionFetcher.MCSuggestion.hash(into:)(uint64_t a1)
{
  v2 = type metadata accessor for TemplatedPrompt(0);
  v3 = *(v2 - 1);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FCC8B14();
  v23 = v1;
  v7 = *(v1 + 16);
  MEMORY[0x231908CB0](*(v7 + 16));
  v37 = *(v7 + 16);
  if (v37)
  {
    v8 = 0;
    v36 = v7 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = v2[6];
    v35 = &v6[v2[5]];
    v34 = &v6[v9];
    v10 = v2[8];
    v32 = &v6[v2[7]];
    v33 = v10;
    v11 = v2[9];
    v30 = v2[10];
    v31 = v11;
    v12 = v2[12];
    v29 = &v6[v2[11]];
    v28 = &v6[v12];
    v13 = v2[13];
    v26 = *(v3 + 72);
    v27 = v13;
    while (1)
    {
      sub_22FAC2F84(v36 + v26 * v8, v6, type metadata accessor for TemplatedPrompt);
      sub_22FCC67F4();
      sub_22FAC2F3C(&qword_281482518, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      sub_22FCC8A14();
      sub_22FCC8B14();
      sub_22FCC8B14();
      sub_22FCC8B14();
      v14 = *&v6[v33];
      MEMORY[0x231908CB0](*(v14 + 16));
      v15 = *(v14 + 16);
      if (v15)
      {
        v16 = v14 + 40;
        do
        {

          sub_22FCC8B14();

          v16 += 16;
          --v15;
        }

        while (v15);
      }

      MEMORY[0x231908CB0](*&v6[v31]);
      MEMORY[0x231908CB0](*&v6[v30]);
      v17 = *(v29 + 1);
      v38 = *v29;
      v39 = v17;
      *v40 = *(v29 + 2);
      *&v40[9] = *(v29 + 41);
      if (*(&v38 + 1))
      {
        break;
      }

      sub_22FCC9864();
LABEL_4:
      ++v8;
      sub_22FCC8B14();
      sub_22FCC7BC4();
      sub_22FAC2F3C(&qword_27DAD8028, MEMORY[0x277D3C560], MEMORY[0x277D3C568]);
      sub_22FCC8A14();
      sub_22FAC2FEC(v6, type metadata accessor for TemplatedPrompt);
      if (v8 == v37)
      {
        goto LABEL_17;
      }
    }

    v18 = *(&v39 + 1);
    v19 = *&v40[8];
    v25 = *v40;
    v24 = *&v40[16];
    v20 = v40[24];
    sub_22FCC9864();

    sub_22FCC8B14();
    if (v18)
    {
      sub_22FCC9864();
      sub_22FCC8B14();
      if (v19)
      {
        goto LABEL_11;
      }
    }

    else
    {
      sub_22FCC9864();
      if (v19)
      {
LABEL_11:
        sub_22FCC9864();
        sub_22FCC8B14();
        if (v20)
        {
LABEL_12:
          sub_22FCC9864();
LABEL_16:
          sub_22FA2B420(&v38, &qword_27DAD8020, &qword_22FCD47C8);
          goto LABEL_4;
        }

LABEL_15:
        sub_22FCC9864();
        MEMORY[0x231908CE0](v24);
        goto LABEL_16;
      }
    }

    sub_22FCC9864();
    if (v20)
    {
      goto LABEL_12;
    }

    goto LABEL_15;
  }

LABEL_17:
  type metadata accessor for PromptSuggestionFetcher.MCSuggestion(0);
  sub_22FCC6794();
  sub_22FAC2F3C(&qword_27DAD8030, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  return sub_22FCC8A14();
}

uint64_t PromptSuggestionFetcher.MCSuggestion.hashValue.getter()
{
  sub_22FCC9844();
  PromptSuggestionFetcher.MCSuggestion.hash(into:)(v1);
  return sub_22FCC9894();
}

uint64_t sub_22FAB65F0()
{
  sub_22FCC9844();
  PromptSuggestionFetcher.MCSuggestion.hash(into:)(v1);
  return sub_22FCC9894();
}

uint64_t sub_22FAB6634(uint64_t a1)
{
  sub_22FCC9844();
  PromptSuggestionFetcher.MCSuggestion.hash(into:)(v2);
  return sub_22FCC9894();
}

uint64_t sub_22FAB6674(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_22FCC9704();
  }
}

uint64_t PromptSuggestionFetcher.CurationResult.keyAssetUUID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PromptSuggestionFetcher.init(configuration:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22FCC8684();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FA3A77C(0, &qword_28147ADA0, 0x277D86200);
  v9 = sub_22FCC91C4();
  *(v1 + 16) = v9;
  v10 = v9;
  sub_22FCC8694();
  (*(v5 + 32))(v1 + OBJC_IVAR____TtC13PhotoAnalysis23PromptSuggestionFetcher_logger, v8, v4);
  sub_22FAC2F84(a1, v1 + OBJC_IVAR____TtC13PhotoAnalysis23PromptSuggestionFetcher_configuration, type metadata accessor for PromptSuggestionFetcher.Configuration);
  sub_22FCC82D4();
  swift_allocObject();
  v11 = sub_22FCC82C4();
  sub_22FAC2FEC(a1, type metadata accessor for PromptSuggestionFetcher.Configuration);
  *(v2 + OBJC_IVAR____TtC13PhotoAnalysis23PromptSuggestionFetcher_embeddingCalculator) = v11;
  return v2;
}

uint64_t PromptSuggestionFetcher.processFetchedSuggestions(fetchedSuggestions:eventRecorder:progressReporter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[13] = a4;
  v5[14] = v4;
  v5[11] = a2;
  v5[12] = a3;
  v5[10] = a1;
  v6 = sub_22FCC7514();
  v5[15] = v6;
  v5[16] = *(v6 - 8);
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD72A0, &qword_22FCD1B50);
  v5[21] = swift_task_alloc();
  v5[22] = swift_task_alloc();
  v5[23] = *(type metadata accessor for PromptSuggestionFetcher.MCSuggestion(0) - 8);
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FAB6A5C, 0, 0);
}

void sub_22FAB6A5C()
{
  v1 = *(v0 + 88);
  v2 = *(*(v0 + 112) + 16);
  sub_22FCC76D4();
  swift_allocObject();
  v3 = v2;
  v4 = sub_22FCC76C4();
  v5 = MEMORY[0x277D84F90];
  *(v0 + 16) = MEMORY[0x277D84F90];
  *(v0 + 216) = v4;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  v6 = *(v1 + 16);
  *(v0 + 224) = v6;
  *(v0 + 24) = v6;
  if (!v6)
  {
    v21 = sub_22FCC8664();
    v22 = sub_22FCC8F14();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_22FA28000, v21, v22, "No suggestions to process", v23, 2u);
      MEMORY[0x23190A000](v23, -1, -1);
    }

    v24 = *(v0 + 80);

    v24[3] = &type metadata for PromptSuggestionProcessingDiagnosticContext;
    v24[4] = &protocol witness table for PromptSuggestionProcessingDiagnosticContext;
    v25 = swift_allocObject();
    *v24 = v25;
    v25[4] = 0;
    v25[5] = 0;
    v25[2] = v5;
    v25[3] = 0;
    goto LABEL_21;
  }

  v7 = *(v0 + 208);
  v8 = *(v0 + 184);
  v9 = *(v0 + 88) + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  do
  {
    sub_22FAC2F84(v9, *(v0 + 208), type metadata accessor for PromptSuggestionFetcher.MCSuggestion);
    v11 = *(v7 + 16);
    v12 = *(v11 + 16);
    v13 = v5[2];
    v14 = v13 + v12;
    if (__OFADD__(v13, v12))
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
      goto LABEL_70;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v14 > v5[3] >> 1)
    {
      if (v13 <= v14)
      {
        v16 = v13 + v12;
      }

      else
      {
        v16 = v13;
      }

      v5 = sub_22FAC1E40(isUniquelyReferenced_nonNull_native, v16, 1, v5, &qword_27DAD7860, &qword_22FCD9BC0, type metadata accessor for TemplatedPrompt);
    }

    *(v0 + 232) = v5;
    if (*(v11 + 16))
    {
      v17 = (v5[3] >> 1) - v5[2];
      type metadata accessor for TemplatedPrompt(0);
      if (v17 < v12)
      {
        goto LABEL_66;
      }

      swift_arrayInitWithCopy();

      if (v12)
      {
        v18 = v5[2];
        v19 = __OFADD__(v18, v12);
        v20 = v18 + v12;
        if (v19)
        {
          goto LABEL_67;
        }

        v5[2] = v20;
      }
    }

    else
    {

      if (v12)
      {
        goto LABEL_65;
      }
    }

    sub_22FAC2FEC(*(v0 + 208), type metadata accessor for PromptSuggestionFetcher.MCSuggestion);
    v9 += v10;
    --v6;
  }

  while (v6);
  *(v0 + 32) = v5[2];
  sub_22FCC8FF4();
  v27 = *(v0 + 88);
  *(v0 + 72) = MEMORY[0x277D84F90];
  v28 = v5[2];
  if (v28 <= 1)
  {
    v28 = 1;
  }

  *(v0 + 48) = v27;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  v29 = OBJC_IVAR____TtC13PhotoAnalysis23PromptSuggestionFetcher_logger;
  *(v0 + 240) = v28;
  *(v0 + 248) = v29;
  *(v0 + 256) = 0x3FC999999999999ALL;
  v31 = *(v0 + 168);
  v30 = *(v0 + 176);

  sub_22FAB480C(v31);
  sub_22FA4F224(v31, v30, &qword_27DAD72A0, &qword_22FCD1B50);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7298, &qword_22FCD47F0);
  if ((*(*(v32 - 8) + 48))(v30, 1, v32) != 1)
  {
    v34 = *(v0 + 192);
    v33 = *(v0 + 200);
    v35 = *(v0 + 176);
    v36 = *v35;
    sub_22FAC5164(v35 + *(v32 + 48), v33, type metadata accessor for PromptSuggestionFetcher.MCSuggestion);
    sub_22FAC2F84(v33, v34, type metadata accessor for PromptSuggestionFetcher.MCSuggestion);

    v37 = sub_22FCC8664();
    v38 = sub_22FCC8F34();
    if (!os_log_type_enabled(v37, v38))
    {
      sub_22FAC2FEC(*(v0 + 192), type metadata accessor for PromptSuggestionFetcher.MCSuggestion);

      goto LABEL_32;
    }

    v39 = swift_slowAlloc();
    *v39 = 134218496;
    if (!__OFADD__(v36, 1))
    {
      v40 = *(v0 + 224);
      v41 = *(v0 + 192);
      *(v39 + 4) = v36 + 1;
      *(v39 + 12) = 2048;
      *(v39 + 14) = v40;
      v42 = v39;

      *(v42 + 22) = 2048;
      v43 = *(*(v41 + 16) + 16);
      sub_22FAC2FEC(v41, type metadata accessor for PromptSuggestionFetcher.MCSuggestion);
      *(v42 + 24) = v43;
      _os_log_impl(&dword_22FA28000, v37, v38, "Processing fetched suggestion %ld/%ld with %ld prompts", v42, 0x20u);
      MEMORY[0x23190A000](v42, -1, -1);
LABEL_32:

      v44 = *(*(v0 + 200) + 16);
      v45 = 0.8 / *(v0 + 240) + 0.2;
      if (v45 > 1.0)
      {
        v45 = 1.0;
      }

      v46 = [*(v0 + 104) childProgressReporterFromStart:0.2 toEnd:v45];
      *(v0 + 264) = v46;
      v47 = swift_task_alloc();
      *(v0 + 272) = v47;
      *v47 = v0;
      v47[1] = sub_22FAB7684;
      v48 = *(v0 + 96);

      PromptSuggestionFetcher.validatePrompts(_:eventRecorder:progressReporter:diagnosticContext:forceValidation:)(v44, v48, v46, v0 + 16, 0);
      return;
    }

LABEL_70:
    __break(1u);
    return;
  }

  sub_22FCC8FF4();
  v49 = *(v0 + 72);
  v50 = v49[2];

  v86 = v49;
  v87 = v50;
  if (v50)
  {
    v51 = 0;
    v52 = *(v0 + 128);
    v84 = (v52 + 32);
    v53 = MEMORY[0x277D84F90];
    while (v51 < v49[2])
    {
      v54 = (*(v52 + 80) + 32) & ~*(v52 + 80);
      v55 = *(v52 + 72);
      (*(v52 + 16))(*(v0 + 160), v49 + v54 + v55 * v51, *(v0 + 120));
      if (sub_22FCC7504())
      {
        v56 = *v84;
        (*v84)(*(v0 + 152), *(v0 + 160), *(v0 + 120));
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_22FA86EC8(0, *(v53 + 16) + 1, 1);
        }

        v58 = *(v53 + 16);
        v57 = *(v53 + 24);
        if (v58 >= v57 >> 1)
        {
          sub_22FA86EC8((v57 > 1), v58 + 1, 1);
        }

        v59 = *(v0 + 152);
        v60 = *(v0 + 120);
        *(v53 + 16) = v58 + 1;
        v56(v53 + v54 + v58 * v55, v59, v60);
        v49 = v86;
      }

      else
      {
        (*(v52 + 8))(*(v0 + 160), *(v0 + 120));
      }

      if (v50 == ++v51)
      {
        v61 = *(v0 + 128);
        v83 = *(v53 + 16);

        v62 = 0;
        v85 = (v61 + 32);
        v63 = MEMORY[0x277D84F90];
        while (v62 < v49[2])
        {
          v64 = (*(v61 + 80) + 32) & ~*(v61 + 80);
          v65 = *(v61 + 72);
          (*(v61 + 16))(*(v0 + 144), v49 + v64 + v65 * v62, *(v0 + 120));
          if (sub_22FCC7504())
          {
            v66 = *v85;
            (*v85)(*(v0 + 136), *(v0 + 144), *(v0 + 120));
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_22FA86EC8(0, *(v63 + 16) + 1, 1);
            }

            v68 = *(v63 + 16);
            v67 = *(v63 + 24);
            v69 = v63;
            if (v68 >= v67 >> 1)
            {
              sub_22FA86EC8((v67 > 1), v68 + 1, 1);
              v69 = v63;
            }

            v70 = *(v0 + 136);
            v71 = *(v0 + 120);
            *(v69 + 16) = v68 + 1;
            v66(v69 + v64 + v68 * v65, v70, v71);
            v49 = v86;
            v63 = v69;
          }

          else
          {
            (*(v61 + 8))(*(v0 + 144), *(v0 + 120));
          }

          if (v87 == ++v62)
          {
            v72 = v83;
            goto LABEL_60;
          }
        }

        goto LABEL_69;
      }
    }

    goto LABEL_68;
  }

  v63 = MEMORY[0x277D84F90];
  v72 = *(MEMORY[0x277D84F90] + 16);

LABEL_60:
  v73 = *(v63 + 16);

  *(v0 + 40) = v73;

  v74 = sub_22FCC8664();
  v75 = sub_22FCC8F34();
  if (os_log_type_enabled(v74, v75))
  {
    v76 = *(v0 + 232);
    v77 = swift_slowAlloc();
    *v77 = 134218496;
    v78 = v86[2];

    *(v77 + 4) = v78;

    *(v77 + 12) = 2048;
    *(v77 + 14) = *(v76 + 16);
    *(v77 + 22) = 2048;
    *(v77 + 24) = v72;
    _os_log_impl(&dword_22FA28000, v74, v75, "Validated %ld prompts from %ld prompts. %ld are valid", v77, 0x20u);
    MEMORY[0x23190A000](v77, -1, -1);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  sub_22FCC9004();
  v79 = *(v0 + 80);
  v88 = *(v0 + 16);
  v80 = *(v0 + 32);
  v81 = *(v0 + 40);
  v79[3] = &type metadata for PromptSuggestionProcessingDiagnosticContext;
  v79[4] = &protocol witness table for PromptSuggestionProcessingDiagnosticContext;
  v82 = swift_allocObject();
  *v79 = v82;

  *(v82 + 16) = v88;
  *(v82 + 32) = v80;
  *(v82 + 40) = v81;
  v5 = v86;
LABEL_21:
  sub_22FCC76B4();

  v26 = *(v0 + 8);

  v26(v5);
}

uint64_t sub_22FAB7684(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 280) = v1;

  if (v1)
  {
    v5 = sub_22FAB8128;
  }

  else
  {
    *(v4 + 288) = a1;
    v5 = sub_22FAB77AC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

void sub_22FAB77AC()
{
  v1 = *(v0 + 264);
  sub_22FA681D0(*(v0 + 288));

  v2 = *(v0 + 280);
  sub_22FCC8DA4();
  if (v2)
  {
    v3 = *(v0 + 200);

    sub_22FAC2FEC(v3, type metadata accessor for PromptSuggestionFetcher.MCSuggestion);

    sub_22FCC76B4();

    v4 = *(v0 + 8);

    v4();
    return;
  }

  sub_22FAC2FEC(*(v0 + 200), type metadata accessor for PromptSuggestionFetcher.MCSuggestion);
  v5 = *(v0 + 256) + 0.8 / *(v0 + 240);
  *(v0 + 256) = v5;
  v7 = *(v0 + 168);
  v6 = *(v0 + 176);
  sub_22FAB480C(v7);
  sub_22FA4F224(v7, v6, &qword_27DAD72A0, &qword_22FCD1B50);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7298, &qword_22FCD47F0);
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) == 1)
  {

    sub_22FCC8FF4();
    v25 = *(v0 + 72);
    v26 = *(v25 + 16);

    v64 = v25;
    if (v26)
    {
      v27 = 0;
      v28 = *(v0 + 128);
      v61 = (v28 + 32);
      v29 = MEMORY[0x277D84F90];
      v60 = v26;
      do
      {
        if (v27 >= *(v25 + 16))
        {
          __break(1u);
          goto LABEL_46;
        }

        v30 = (*(v28 + 80) + 32) & ~*(v28 + 80);
        v31 = *(v28 + 72);
        (*(v28 + 16))(*(v0 + 160), v25 + v30 + v31 * v27, *(v0 + 120));
        if (sub_22FCC7504())
        {
          v32 = *v61;
          (*v61)(*(v0 + 152), *(v0 + 160), *(v0 + 120));
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_22FA86EC8(0, *(v29 + 16) + 1, 1);
          }

          v34 = *(v29 + 16);
          v33 = *(v29 + 24);
          if (v34 >= v33 >> 1)
          {
            sub_22FA86EC8((v33 > 1), v34 + 1, 1);
          }

          v35 = *(v0 + 152);
          v36 = *(v0 + 120);
          *(v29 + 16) = v34 + 1;
          v32(v29 + v30 + v34 * v31, v35, v36);
          v25 = v64;
          v26 = v60;
        }

        else
        {
          (*(v28 + 8))(*(v0 + 160), *(v0 + 120));
        }

        ++v27;
      }

      while (v26 != v27);
      v37 = *(v0 + 128);
      v59 = *(v29 + 16);

      v38 = 0;
      v62 = (v37 + 32);
      v39 = MEMORY[0x277D84F90];
      while (v38 < *(v25 + 16))
      {
        v40 = (*(v37 + 80) + 32) & ~*(v37 + 80);
        v41 = *(v37 + 72);
        (*(v37 + 16))(*(v0 + 144), v25 + v40 + v41 * v38, *(v0 + 120));
        if (sub_22FCC7504())
        {
          v42 = *v62;
          (*v62)(*(v0 + 136), *(v0 + 144), *(v0 + 120));
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_22FA86EC8(0, *(v39 + 16) + 1, 1);
          }

          v44 = *(v39 + 16);
          v43 = *(v39 + 24);
          if (v44 >= v43 >> 1)
          {
            sub_22FA86EC8((v43 > 1), v44 + 1, 1);
          }

          v45 = *(v0 + 136);
          v46 = *(v0 + 120);
          *(v39 + 16) = v44 + 1;
          v42(v39 + v40 + v44 * v41, v45, v46);
          v25 = v64;
          v26 = v60;
        }

        else
        {
          (*(v37 + 8))(*(v0 + 144), *(v0 + 120));
        }

        if (v26 == ++v38)
        {
          v47 = v59;
          goto LABEL_39;
        }
      }

LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v39 = MEMORY[0x277D84F90];
    v47 = *(MEMORY[0x277D84F90] + 16);

LABEL_39:
    v48 = *(v39 + 16);

    *(v0 + 40) = v48;

    v49 = sub_22FCC8664();
    v50 = sub_22FCC8F34();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = *(v0 + 232);
      v52 = swift_slowAlloc();
      *v52 = 134218496;
      v53 = *(v64 + 16);

      *(v52 + 4) = v53;

      *(v52 + 12) = 2048;
      *(v52 + 14) = *(v51 + 16);
      *(v52 + 22) = 2048;
      *(v52 + 24) = v47;
      _os_log_impl(&dword_22FA28000, v49, v50, "Validated %ld prompts from %ld prompts. %ld are valid", v52, 0x20u);
      MEMORY[0x23190A000](v52, -1, -1);
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }

    sub_22FCC9004();
    v54 = *(v0 + 80);
    v63 = *(v0 + 16);
    v55 = *(v0 + 32);
    v56 = *(v0 + 40);
    v54[3] = &type metadata for PromptSuggestionProcessingDiagnosticContext;
    v54[4] = &protocol witness table for PromptSuggestionProcessingDiagnosticContext;
    v57 = swift_allocObject();
    *v54 = v57;

    *(v57 + 16) = v63;
    *(v57 + 32) = v55;
    *(v57 + 40) = v56;
    sub_22FCC76B4();

    v58 = *(v0 + 8);

    v58(v64);
  }

  else
  {
    v10 = *(v0 + 192);
    v9 = *(v0 + 200);
    v11 = *(v0 + 176);
    v12 = *v11;
    sub_22FAC5164(v11 + *(v8 + 48), v9, type metadata accessor for PromptSuggestionFetcher.MCSuggestion);
    sub_22FAC2F84(v9, v10, type metadata accessor for PromptSuggestionFetcher.MCSuggestion);

    v13 = sub_22FCC8664();
    v14 = sub_22FCC8F34();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 134218496;
      if (__OFADD__(v12, 1))
      {
LABEL_47:
        __break(1u);
        return;
      }

      v16 = *(v0 + 224);
      v17 = *(v0 + 192);
      *(v15 + 4) = v12 + 1;
      *(v15 + 12) = 2048;
      *(v15 + 14) = v16;
      v18 = v15;

      *(v18 + 22) = 2048;
      v19 = *(*(v17 + 16) + 16);
      sub_22FAC2FEC(v17, type metadata accessor for PromptSuggestionFetcher.MCSuggestion);
      *(v18 + 24) = v19;
      _os_log_impl(&dword_22FA28000, v13, v14, "Processing fetched suggestion %ld/%ld with %ld prompts", v18, 0x20u);
      MEMORY[0x23190A000](v18, -1, -1);
    }

    else
    {
      sub_22FAC2FEC(*(v0 + 192), type metadata accessor for PromptSuggestionFetcher.MCSuggestion);
    }

    v20 = *(*(v0 + 200) + 16);
    v21 = 1.0;
    if (v5 + 0.8 / *(v0 + 240) <= 1.0)
    {
      v21 = v5 + 0.8 / *(v0 + 240);
    }

    v22 = [*(v0 + 104) childProgressReporterFromStart:v5 toEnd:v21];
    *(v0 + 264) = v22;
    v23 = swift_task_alloc();
    *(v0 + 272) = v23;
    *v23 = v0;
    v23[1] = sub_22FAB7684;
    v24 = *(v0 + 96);

    PromptSuggestionFetcher.validatePrompts(_:eventRecorder:progressReporter:diagnosticContext:forceValidation:)(v20, v24, v22, v0 + 16, 0);
  }
}

void sub_22FAB8128()
{
  v1 = *(v0 + 280);

  v2 = v1;
  v3 = sub_22FCC8664();
  v4 = sub_22FCC8F14();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 280);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_22FA28000, v3, v4, "Error validating prompts: %@", v7, 0xCu);
    sub_22FA2B420(v8, &unk_27DAD7B10, &unk_22FCD21C0);
    MEMORY[0x23190A000](v8, -1, -1);
    MEMORY[0x23190A000](v7, -1, -1);
  }

  else
  {
  }

  sub_22FCC8DA4();
  sub_22FAC2FEC(*(v0 + 200), type metadata accessor for PromptSuggestionFetcher.MCSuggestion);
  v11 = *(v0 + 256) + 0.8 / *(v0 + 240);
  *(v0 + 256) = v11;
  v13 = *(v0 + 168);
  v12 = *(v0 + 176);
  sub_22FAB480C(v13);
  sub_22FA4F224(v13, v12, &qword_27DAD72A0, &qword_22FCD1B50);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7298, &qword_22FCD47F0);
  if ((*(*(v14 - 8) + 48))(v12, 1, v14) == 1)
  {

    sub_22FCC8FF4();
    v31 = *(v0 + 72);
    v32 = *(v31 + 16);

    v70 = v31;
    if (v32)
    {
      v33 = 0;
      v34 = *(v0 + 128);
      v67 = (v34 + 32);
      v35 = MEMORY[0x277D84F90];
      v66 = v32;
      do
      {
        if (v33 >= *(v31 + 16))
        {
          __break(1u);
          goto LABEL_45;
        }

        v36 = (*(v34 + 80) + 32) & ~*(v34 + 80);
        v37 = *(v34 + 72);
        (*(v34 + 16))(*(v0 + 160), v31 + v36 + v37 * v33, *(v0 + 120));
        if (sub_22FCC7504())
        {
          v38 = *v67;
          (*v67)(*(v0 + 152), *(v0 + 160), *(v0 + 120));
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_22FA86EC8(0, *(v35 + 16) + 1, 1);
          }

          v40 = *(v35 + 16);
          v39 = *(v35 + 24);
          if (v40 >= v39 >> 1)
          {
            sub_22FA86EC8((v39 > 1), v40 + 1, 1);
          }

          v41 = *(v0 + 152);
          v42 = *(v0 + 120);
          *(v35 + 16) = v40 + 1;
          v38(v35 + v36 + v40 * v37, v41, v42);
          v31 = v70;
          v32 = v66;
        }

        else
        {
          (*(v34 + 8))(*(v0 + 160), *(v0 + 120));
        }

        ++v33;
      }

      while (v32 != v33);
      v43 = *(v0 + 128);
      v65 = *(v35 + 16);

      v44 = 0;
      v68 = (v43 + 32);
      v45 = MEMORY[0x277D84F90];
      while (v44 < *(v31 + 16))
      {
        v46 = (*(v43 + 80) + 32) & ~*(v43 + 80);
        v47 = *(v43 + 72);
        (*(v43 + 16))(*(v0 + 144), v31 + v46 + v47 * v44, *(v0 + 120));
        if (sub_22FCC7504())
        {
          v48 = *v68;
          (*v68)(*(v0 + 136), *(v0 + 144), *(v0 + 120));
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_22FA86EC8(0, *(v45 + 16) + 1, 1);
          }

          v50 = *(v45 + 16);
          v49 = *(v45 + 24);
          if (v50 >= v49 >> 1)
          {
            sub_22FA86EC8((v49 > 1), v50 + 1, 1);
          }

          v51 = *(v0 + 136);
          v52 = *(v0 + 120);
          *(v45 + 16) = v50 + 1;
          v48(v45 + v46 + v50 * v47, v51, v52);
          v31 = v70;
          v32 = v66;
        }

        else
        {
          (*(v43 + 8))(*(v0 + 144), *(v0 + 120));
        }

        if (v32 == ++v44)
        {
          v53 = v65;
          goto LABEL_38;
        }
      }

LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    v45 = MEMORY[0x277D84F90];
    v53 = *(MEMORY[0x277D84F90] + 16);

LABEL_38:
    v54 = *(v45 + 16);

    *(v0 + 40) = v54;

    v55 = sub_22FCC8664();
    v56 = sub_22FCC8F34();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = *(v0 + 232);
      v58 = swift_slowAlloc();
      *v58 = 134218496;
      v59 = *(v70 + 16);

      *(v58 + 4) = v59;

      *(v58 + 12) = 2048;
      *(v58 + 14) = *(v57 + 16);
      *(v58 + 22) = 2048;
      *(v58 + 24) = v53;
      _os_log_impl(&dword_22FA28000, v55, v56, "Validated %ld prompts from %ld prompts. %ld are valid", v58, 0x20u);
      MEMORY[0x23190A000](v58, -1, -1);
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }

    sub_22FCC9004();
    v60 = *(v0 + 80);
    v69 = *(v0 + 16);
    v61 = *(v0 + 32);
    v62 = *(v0 + 40);
    v60[3] = &type metadata for PromptSuggestionProcessingDiagnosticContext;
    v60[4] = &protocol witness table for PromptSuggestionProcessingDiagnosticContext;
    v63 = swift_allocObject();
    *v60 = v63;

    *(v63 + 16) = v69;
    *(v63 + 32) = v61;
    *(v63 + 40) = v62;
    sub_22FCC76B4();

    v64 = *(v0 + 8);

    v64(v70);
  }

  else
  {
    v16 = *(v0 + 192);
    v15 = *(v0 + 200);
    v17 = *(v0 + 176);
    v18 = *v17;
    sub_22FAC5164(v17 + *(v14 + 48), v15, type metadata accessor for PromptSuggestionFetcher.MCSuggestion);
    sub_22FAC2F84(v15, v16, type metadata accessor for PromptSuggestionFetcher.MCSuggestion);

    v19 = sub_22FCC8664();
    v20 = sub_22FCC8F34();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 134218496;
      if (__OFADD__(v18, 1))
      {
LABEL_46:
        __break(1u);
        return;
      }

      v22 = *(v0 + 224);
      v23 = *(v0 + 192);
      *(v21 + 4) = v18 + 1;
      *(v21 + 12) = 2048;
      *(v21 + 14) = v22;
      v24 = v21;

      *(v24 + 22) = 2048;
      v25 = *(*(v23 + 16) + 16);
      sub_22FAC2FEC(v23, type metadata accessor for PromptSuggestionFetcher.MCSuggestion);
      *(v24 + 24) = v25;
      _os_log_impl(&dword_22FA28000, v19, v20, "Processing fetched suggestion %ld/%ld with %ld prompts", v24, 0x20u);
      MEMORY[0x23190A000](v24, -1, -1);
    }

    else
    {
      sub_22FAC2FEC(*(v0 + 192), type metadata accessor for PromptSuggestionFetcher.MCSuggestion);
    }

    v26 = *(*(v0 + 200) + 16);
    v27 = 1.0;
    if (v11 + 0.8 / *(v0 + 240) <= 1.0)
    {
      v27 = v11 + 0.8 / *(v0 + 240);
    }

    v28 = [*(v0 + 104) childProgressReporterFromStart:v11 toEnd:v27];
    *(v0 + 264) = v28;
    v29 = swift_task_alloc();
    *(v0 + 272) = v29;
    *v29 = v0;
    v29[1] = sub_22FAB7684;
    v30 = *(v0 + 96);

    PromptSuggestionFetcher.validatePrompts(_:eventRecorder:progressReporter:diagnosticContext:forceValidation:)(v26, v30, v28, v0 + 16, 0);
  }
}

uint64_t PromptSuggestionFetcher.prioritizePromptSuggestions(promptSuggestions:)(void *a1, void (*a2)(char *, char *, uint64_t))
{
  v5 = sub_22FCC7514();
  v132 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v6);
  v131 = (&v118 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8, v9);
  v11 = (&v118 - v10);
  MEMORY[0x28223BE20](v12, v13);
  v133 = &v118 - v15;
  v16 = *(a2 + 2);
  if (!v16)
  {
    v38 = sub_22FCC8664();
    v39 = sub_22FCC8F34();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = a1;
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_22FA28000, v38, v39, "[prioritizePromptSuggestions] No prompt suggestions available", v41, 2u);
      v42 = v41;
      a1 = v40;
      MEMORY[0x23190A000](v42, -1, -1);
    }

    a1[3] = &type metadata for PromptSuggestionPrioritizationDiagnosticContext;
    a1[4] = &off_2844A70B8;
    v43 = swift_allocObject();
    v44 = MEMORY[0x277D84F90];
    *a1 = v43;
    v43[2] = v44;
    v43[3] = 0;
    v43[4] = 0;
    v43[5] = 0;
    return v44;
  }

  v134 = v14;
  v122 = v16;
  v137 = a2;
  v17 = OBJC_IVAR____TtC13PhotoAnalysis23PromptSuggestionFetcher_logger;

  v124 = v17;
  v125 = v2;
  v18 = sub_22FCC8664();
  v19 = sub_22FCC8F34();
  v20 = os_log_type_enabled(v18, v19);
  v129 = v11;
  v123 = a1;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = v22;
    v136[0] = v22;
    *v21 = 134218243;
    v24 = *(a2 + 2);
    *(v21 + 4) = v24;
    *(v21 + 12) = 2081;
    v25 = MEMORY[0x277D84F90];
    if (v24)
    {
      v119 = v22;
      v120 = v19;
      v121 = v21;
      v126 = v18;
      v135 = MEMORY[0x277D84F90];

      sub_22FA86EA8(0, v24, 0);
      v26 = v134;
      v25 = v135;
      v27 = *(v132 + 16);
      v28 = a2 + ((*(v132 + 80) + 32) & ~*(v132 + 80));
      v127 = *(v132 + 72);
      v128 = v27;
      v130 = (v132 + 16);
      v29 = (v132 + 8);
      do
      {
        v30 = v133;
        v128(v133, v28, v26);
        v31 = sub_22FCC7354();
        v26 = v134;
        v32 = v31;
        v34 = v33;
        (*v29)(v30, v134);
        v135 = v25;
        v36 = *(v25 + 16);
        v35 = *(v25 + 24);
        if (v36 >= v35 >> 1)
        {
          sub_22FA86EA8((v35 > 1), v36 + 1, 1);
          v26 = v134;
          v25 = v135;
        }

        *(v25 + 16) = v36 + 1;
        v37 = v25 + 16 * v36;
        *(v37 + 32) = v32;
        *(v37 + 40) = v34;
        v28 += v127;
        --v24;
      }

      while (v24);

      v11 = v129;
      v18 = v126;
      v21 = v121;
      LOBYTE(v19) = v120;
      v23 = v119;
    }

    v45 = MEMORY[0x2319080B0](v25, MEMORY[0x277D837D0]);
    v47 = v46;

    v48 = sub_22FA2F600(v45, v47, v136);

    *(v21 + 14) = v48;
    _os_log_impl(&dword_22FA28000, v18, v19, "Prompt suggestions before prioritization (N=%ld): %{private}s", v21, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x23190A000](v23, -1, -1);
    MEMORY[0x23190A000](v21, -1, -1);
  }

  v49 = *(a2 + 2);

  v50 = MEMORY[0x277D84F90];
  if (v49)
  {
    v51 = 0;
    v127 = v132 + 8;
    v128 = a2;
    v130 = (v132 + 32);
    v52 = v134;
    v126 = (v132 + 16);
    while (v51 < *(a2 + 2))
    {
      v53 = (*(v132 + 80) + 32) & ~*(v132 + 80);
      v54 = *(v132 + 72);
      (*(v132 + 16))(v11, a2 + v53 + v54 * v51, v52);
      if (sub_22FABB044(v11))
      {
        v55 = v49;
        v56 = *v130;
        (*v130)(v131, v11, v52);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v136[0] = v50;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22FA86EC8(0, *(v50 + 16) + 1, 1);
          v52 = v134;
          v50 = v136[0];
        }

        v59 = *(v50 + 16);
        v58 = *(v50 + 24);
        if (v59 >= v58 >> 1)
        {
          sub_22FA86EC8((v58 > 1), v59 + 1, 1);
          v52 = v134;
          v50 = v136[0];
        }

        *(v50 + 16) = v59 + 1;
        v56((v50 + v53 + v59 * v54), v131, v52);
        a2 = v128;
        v11 = v129;
        v49 = v55;
      }

      else
      {
        (*v127)(v11, v52);
      }

      if (v49 == ++v51)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
    goto LABEL_45;
  }

LABEL_24:

  v52 = v124 + v125;
  v11 = sub_22FCC8664();
  v60 = sub_22FCC8F34();
  v61 = os_log_type_enabled(v11, v60);
  v128 = v50;
  if (v61)
  {
    v62 = swift_slowAlloc();
    v127 = swift_slowAlloc();
    v136[0] = v127;
    *v62 = 134218243;
    *(v62 + 4) = *(v50 + 16);

    *(v62 + 12) = 2081;
    v63 = *(v50 + 16);
    v64 = v50;
    v65 = MEMORY[0x277D84F90];
    if (v63)
    {
      v120 = v60;
      v121 = v62;
      v126 = v11;
      v135 = MEMORY[0x277D84F90];
      sub_22FA86EA8(0, v63, 0);
      v66 = v134;
      v65 = v135;
      v67 = *(v132 + 16);
      v68 = v64 + ((*(v132 + 80) + 32) & ~*(v132 + 80));
      v129 = *(v132 + 72);
      v130 = v67;
      v131 = (v132 + 16);
      v69 = (v132 + 8);
      do
      {
        v70 = v133;
        (v130)(v133, v68, v66);
        v71 = sub_22FCC7354();
        v66 = v134;
        v72 = v71;
        v74 = v73;
        (*v69)(v70, v134);
        v135 = v65;
        v76 = *(v65 + 16);
        v75 = *(v65 + 24);
        if (v76 >= v75 >> 1)
        {
          sub_22FA86EA8((v75 > 1), v76 + 1, 1);
          v66 = v134;
          v65 = v135;
        }

        *(v65 + 16) = v76 + 1;
        v77 = v65 + 16 * v76;
        *(v77 + 32) = v72;
        *(v77 + 40) = v74;
        v68 += v129;
        --v63;
      }

      while (v63);
      v11 = v126;
      v62 = v121;
      LOBYTE(v60) = v120;
    }

    v52 = MEMORY[0x2319080B0](v65, MEMORY[0x277D837D0]);
    v79 = v78;

    v80 = sub_22FA2F600(v52, v79, v136);

    *(v62 + 14) = v80;
    _os_log_impl(&dword_22FA28000, v11, v60, "Low priority prompts (N=%ld): %{private}s", v62, 0x16u);
    v81 = v127;
    __swift_destroy_boxed_opaque_existential_0(v127);
    MEMORY[0x23190A000](v81, -1, -1);
    MEMORY[0x23190A000](v62, -1, -1);

    v50 = v128;
  }

  else
  {
  }

  swift_beginAccess();

  v82 = v50;
  v83 = sub_22FAC4B8C(&v137, v50);

  v84 = *(v137 + 2);
  if (v84 >= v83)
  {
    sub_22FAC5080(v83, v84);
    swift_endAccess();
    v85 = *(v137 + 2);
    v86 = *(v82 + 16);
    swift_beginAccess();

    sub_22FA681D0(v87);
    swift_endAccess();
    v88 = sub_22FCC8664();
    v89 = sub_22FCC8F34();
    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      v92 = v91;
      v136[0] = v91;
      *v90 = 134218243;
      v93 = v137;
      v94 = *(v137 + 2);
      *(v90 + 4) = v94;
      *(v90 + 12) = 2081;
      v95 = MEMORY[0x277D84F90];
      if (v94)
      {
        v124 = v91;
        LODWORD(v125) = v89;
        v126 = v90;
        v127 = v88;
        v129 = v86;
        v130 = v85;
        v135 = MEMORY[0x277D84F90];

        sub_22FA86EA8(0, v94, 0);
        v96 = v134;
        v95 = v135;
        v97 = v132 + 16;
        v98 = *(v132 + 16);
        v99 = *(v132 + 80);
        v121 = v93;
        v100 = v93 + ((v99 + 32) & ~v99);
        v131 = *(v132 + 72);
        v132 = v98;
        v101 = (v97 - 8);
        do
        {
          v102 = v133;
          (v132)(v133, v100, v96);
          v103 = sub_22FCC7354();
          v96 = v134;
          v104 = v103;
          v106 = v105;
          (*v101)(v102, v134);
          v135 = v95;
          v108 = *(v95 + 16);
          v107 = *(v95 + 24);
          if (v108 >= v107 >> 1)
          {
            sub_22FA86EA8((v107 > 1), v108 + 1, 1);
            v96 = v134;
            v95 = v135;
          }

          *(v95 + 16) = v108 + 1;
          v109 = v95 + 16 * v108;
          *(v109 + 32) = v104;
          *(v109 + 40) = v106;
          v100 += v131;
          --v94;
        }

        while (v94);

        v86 = v129;
        v85 = v130;
        v90 = v126;
        v88 = v127;
        LOBYTE(v89) = v125;
        v92 = v124;
      }

      v110 = MEMORY[0x2319080B0](v95, MEMORY[0x277D837D0]);
      v112 = v111;

      v113 = sub_22FA2F600(v110, v112, v136);

      *(v90 + 14) = v113;
      _os_log_impl(&dword_22FA28000, v88, v89, "Fetched suggestions after prioritization (N=%ld: %{private}s", v90, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v92);
      MEMORY[0x23190A000](v92, -1, -1);
      MEMORY[0x23190A000](v90, -1, -1);
    }

    v44 = v137;
    v114 = v123;
    v123[3] = &type metadata for PromptSuggestionPrioritizationDiagnosticContext;
    v114[4] = &off_2844A70B8;
    v115 = swift_allocObject();
    *v114 = v115;
    v116 = v122;
    v115[2] = MEMORY[0x277D84F90];
    v115[3] = v116;
    v115[4] = v86;
    v115[5] = v85;
    return v44;
  }

LABEL_45:
  __break(1u);

  (*v127)(v11, v52);

  __break(1u);
  result = swift_endAccess();
  __break(1u);
  return result;
}

void PromptSuggestionFetcher.rankSuggestions(fetchedSuggestions:smartSuggestions:optOutSuggestions:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v235 = a4;
  v236 = a1;
  v255 = sub_22FCC7B44();
  v7 = *(v255 - 8);
  MEMORY[0x28223BE20](v255, v8);
  v254 = (&v235 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10, v11);
  v253 = &v235 - v12;
  v13 = sub_22FCC7514();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v260 = &v235 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v18);
  v240 = &v235 - v19;
  MEMORY[0x28223BE20](v20, v21);
  v23 = &v235 - v22;
  MEMORY[0x28223BE20](v24, v25);
  v250 = &v235 - v26;
  MEMORY[0x28223BE20](v27, v28);
  v239 = &v235 - v29;
  MEMORY[0x28223BE20](v30, v31);
  v263 = (&v235 - v32);
  MEMORY[0x28223BE20](v33, v34);
  v36 = &v235 - v35;
  v37 = type metadata accessor for TemplatedPrompt(0);
  v245 = *(v37 - 8);
  MEMORY[0x28223BE20](v37 - 8, v38);
  v268 = &v235 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for PromptSuggestionFetcher.MCSuggestion(0);
  v41 = *(v40 - 8);
  MEMORY[0x28223BE20](v40 - 8, v42);
  v251 = &v235 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v237 = v4;
  v44 = *(v4 + 16);
  sub_22FCC76D4();
  swift_allocObject();
  v45 = v44;
  v238 = sub_22FCC76C4();
  v46 = *(a2 + 16);
  v270 = v13;
  v247 = v14;
  v252 = v46;
  v246 = a3;
  v256 = v23;
  if (v46)
  {
    v47 = 0;
    v259 = 0;
    v264 = *(a3 + 16);
    v249 = a2 + ((*(v41 + 80) + 32) & ~*(v41 + 80));
    v267 = v14 + 16;
    v248 = *(v41 + 72);
    v266 = v14 + 8;
    v262 = (v14 + 32);
    v243 = (v7 + 16);
    v242 = v7 + 8;
    v244 = v7;
    v241 = v7 + 32;
    v258 = MEMORY[0x277D84F90];
    v48 = v251;
    while (1)
    {
      v257 = v47;
      sub_22FAC2F84(v249 + v248 * v47, v48, type metadata accessor for PromptSuggestionFetcher.MCSuggestion);
      v49 = *(v48 + 16);
      v50 = *(v49 + 16);
      if (v50)
      {
        v272 = MEMORY[0x277D84F90];
        sub_22FA86EA8(0, v50, 0);
        v51 = v272;
        v52 = v49 + ((*(v245 + 80) + 32) & ~*(v245 + 80));
        v53 = *(v245 + 72);
        do
        {
          v54 = v268;
          sub_22FAC2F84(v52, v268, type metadata accessor for TemplatedPrompt);
          v55 = sub_22FCC67B4();
          v57 = v56;
          sub_22FAC2FEC(v54, type metadata accessor for TemplatedPrompt);
          v272 = v51;
          v59 = *(v51 + 16);
          v58 = *(v51 + 24);
          if (v59 >= v58 >> 1)
          {
            sub_22FA86EA8((v58 > 1), v59 + 1, 1);
            v51 = v272;
          }

          *(v51 + 16) = v59 + 1;
          v60 = v51 + 16 * v59;
          *(v60 + 32) = v55;
          *(v60 + 40) = v57;
          v52 += v53;
          --v50;
        }

        while (v50);
      }

      else
      {
        v51 = MEMORY[0x277D84F90];
      }

      v61 = sub_22FAA99B0(v51);

      v62 = v264;
      if (v264)
      {
        v63 = 0;
        v261 = (*(v247 + 80) + 32) & ~*(v247 + 80);
        v64 = v246 + v261;
        v269 = *(v247 + 72);
        v65 = *(v247 + 16);
        v66 = v61 + 56;
        v265 = MEMORY[0x277D84F90];
        v67 = v270;
        v65(v36, v246 + v261, v270);
        while (1)
        {
          if (sub_22FCC7504())
          {
            v68 = sub_22FCC74B4();
            v70 = v69;
            if (*(v61 + 16))
            {
              v71 = v68;
              sub_22FCC9844();
              sub_22FCC8B14();
              v72 = sub_22FCC9894();
              v73 = -1 << *(v61 + 32);
              v74 = v72 & ~v73;
              if ((*(v66 + ((v74 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v74))
              {
                v75 = ~v73;
                while (1)
                {
                  v76 = (*(v61 + 48) + 16 * v74);
                  v77 = *v76 == v71 && v76[1] == v70;
                  if (v77 || (sub_22FCC9704() & 1) != 0)
                  {
                    break;
                  }

                  v74 = (v74 + 1) & v75;
                  if (((*(v66 + ((v74 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v74) & 1) == 0)
                  {
                    goto LABEL_27;
                  }
                }

                v78 = *v262;
                (*v262)(v263, v36, v270);
                v79 = v265;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v273 = v79;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  sub_22FA86EC8(0, *(v79 + 16) + 1, 1);
                  v79 = v273;
                }

                v82 = *(v79 + 16);
                v81 = *(v79 + 24);
                if (v82 >= v81 >> 1)
                {
                  sub_22FA86EC8((v81 > 1), v82 + 1, 1);
                  v79 = v273;
                }

                *(v79 + 16) = v82 + 1;
                v265 = v79;
                v67 = v270;
                v78(v79 + v261 + v82 * v269, v263, v270);
                v62 = v264;
              }

              else
              {
LABEL_27:

                v67 = v270;
                (*v266)(v36, v270);
                v62 = v264;
              }
            }

            else
            {

              v67 = v270;
              (*v266)(v36, v270);
            }
          }

          else
          {
            (*v266)(v36, v67);
          }

          if (++v63 == v62)
          {
            break;
          }

          v65(v36, v64 + v269 * v63, v67);
        }
      }

      else
      {
        v265 = MEMORY[0x277D84F90];
      }

      v83 = *(v265 + 16);
      if (__OFADD__(v259, v83))
      {
        break;
      }

      v259 += v83;
      if (v83)
      {
        v48 = v251;

        v84 = v253;
        sub_22FCC7B34();
        (*v243)(v254, v84, v255);
        v85 = swift_isUniquelyReferenced_nonNull_native();
        v23 = v256;
        if ((v85 & 1) == 0)
        {
          v258 = sub_22FAC1E40(0, v258[2] + 1, 1, v258, &qword_27DAD8178, &unk_22FCD4AC0, MEMORY[0x277D3C558]);
        }

        v87 = v258[2];
        v86 = v258[3];
        v88 = v244;
        if (v87 >= v86 >> 1)
        {
          v92 = sub_22FAC1E40((v86 > 1), v87 + 1, 1, v258, &qword_27DAD8178, &unk_22FCD4AC0, MEMORY[0x277D3C558]);
          v88 = v244;
          v258 = v92;
        }

        v89 = v255;
        v90 = v88;
        (*(v88 + 8))(v253, v255);
        sub_22FAC2FEC(v48, type metadata accessor for PromptSuggestionFetcher.MCSuggestion);
        v91 = v258;
        v258[2] = v87 + 1;
        (*(v90 + 32))(v91 + ((*(v90 + 80) + 32) & ~*(v90 + 80)) + *(v90 + 72) * v87, v254, v89);
      }

      else
      {
        v48 = v251;
        sub_22FAC2FEC(v251, type metadata accessor for PromptSuggestionFetcher.MCSuggestion);

        v23 = v256;
      }

      v47 = v257 + 1;
      if (v257 + 1 == v252)
      {
        goto LABEL_43;
      }
    }

    __break(1u);
  }

  else
  {
    v259 = 0;
    v258 = MEMORY[0x277D84F90];
LABEL_43:
    sub_22FCC7A94();
    swift_allocObject();
    v261 = sub_22FCC7A84();
    v93 = sub_22FCC7A64();
    sub_22FCC76B4();
    v257 = *(v93 + 16);
    v94 = *(v246 + 16);
    v267 = v94;
    v263 = v93;
    if (v94)
    {
      v269 = *(v247 + 16);
      v265 = (*(v247 + 80) + 32) & ~*(v247 + 80);
      v95 = v246 + v265;
      v96 = *(v247 + 72);
      v97 = (v247 + 32);
      v98 = (v247 + 8);
      v268 = MEMORY[0x277D84F90];
      v266 = v246 + v265;
      v99 = v239;
      do
      {
        v100 = v270;
        v269(v99, v95, v270);
        if (sub_22FCC7504())
        {
          (*v98)(v99, v100);
        }

        else
        {
          v101 = *v97;
          (*v97)(v250, v99, v100);
          v102 = v268;
          v103 = swift_isUniquelyReferenced_nonNull_native();
          v104 = v102;
          v272 = v102;
          if ((v103 & 1) == 0)
          {
            sub_22FA86EC8(0, *(v102 + 16) + 1, 1);
            v99 = v239;
            v104 = v272;
          }

          v106 = *(v104 + 16);
          v105 = *(v104 + 24);
          if (v106 >= v105 >> 1)
          {
            sub_22FA86EC8((v105 > 1), v106 + 1, 1);
            v99 = v239;
            v104 = v272;
          }

          *(v104 + 16) = v106 + 1;
          v268 = v104;
          v101((v104 + v265 + v106 * v96), v250, v270);
          v23 = v256;
        }

        v95 += v96;
        --v94;
      }

      while (v94);
      v262 = v263 + v265;
      v264 = MEMORY[0x277D84F90];
      do
      {
        v269(v23, v266 + v96 * v94, v270);
        if (sub_22FCC7504())
        {
          v107 = v262;
          v108 = v263[2].isa + 1;
          while (--v108)
          {
            sub_22FAC2F3C(&qword_27DAD8038, MEMORY[0x277D3C160], MEMORY[0x277D3C170]);
            v107 += v96;
            if (sub_22FCC8A44())
            {
              goto LABEL_54;
            }
          }

          v109 = v23;
          v110 = *v97;
          (*v97)(v240, v109, v270);
          v111 = v264;
          v112 = swift_isUniquelyReferenced_nonNull_native();
          v272 = v111;
          if ((v112 & 1) == 0)
          {
            sub_22FA86EC8(0, *(v111 + 16) + 1, 1);
            v111 = v272;
          }

          v114 = *(v111 + 16);
          v113 = *(v111 + 24);
          if (v114 >= v113 >> 1)
          {
            sub_22FA86EC8((v113 > 1), v114 + 1, 1);
            v111 = v272;
          }

          *(v111 + 16) = v114 + 1;
          v264 = v111;
          v110((v111 + v265 + v114 * v96), v240, v270);
          v23 = v256;
        }

        else
        {
LABEL_54:
          (*v98)(v23, v270);
        }

        ++v94;
      }

      while (v94 != v267);
      v94 = v267;
      v115 = v268;
      v93 = v263;
      v116 = v264;
    }

    else
    {
      v115 = MEMORY[0x277D84F90];
      v116 = MEMORY[0x277D84F90];
    }

    v117 = *(v116 + 16);
    v265 = *(v115 + 16);
    v118 = OBJC_IVAR____TtC13PhotoAnalysis23PromptSuggestionFetcher_logger;
    swift_retain_n();
    swift_retain_n();

    v119 = sub_22FCC8664();
    v120 = sub_22FCC8F34();
    v121 = os_log_type_enabled(v119, v120);
    v262 = v117;
    if (v121)
    {
      LODWORD(v253) = v120;
      v254 = v119;
      v264 = v116;
      v268 = v115;
      v256 = v118;
      v122 = swift_slowAlloc();
      v251 = swift_slowAlloc();
      v272 = v251;
      *v122 = 134219267;
      *(v122 + 4) = *(v93 + 16);

      *(v122 + 12) = 2081;
      v123 = MEMORY[0x277D84F90];
      v124 = v257;
      v255 = v122;
      if (v257)
      {
        v273 = MEMORY[0x277D84F90];
        sub_22FA86EA8(0, v257, 0);
        v123 = v273;
        v269 = *(v247 + 16);
        v125 = v93 + ((*(v247 + 80) + 32) & ~*(v247 + 80));
        v266 = *(v247 + 72);
        v126 = (v247 + 8);
        do
        {
          v127 = v260;
          v128 = v270;
          v269(v260, v125, v270);
          v129 = sub_22FCC7354();
          v131 = v130;
          (*v126)(v127, v128);
          v273 = v123;
          v133 = *(v123 + 16);
          v132 = *(v123 + 24);
          if (v133 >= v132 >> 1)
          {
            sub_22FA86EA8((v132 > 1), v133 + 1, 1);
            v123 = v273;
          }

          *(v123 + 16) = v133 + 1;
          v134 = v123 + 16 * v133;
          *(v134 + 32) = v129;
          *(v134 + 40) = v131;
          v125 += v266;
          --v124;
        }

        while (v124);
        v117 = v262;
        v122 = v255;
      }

      v135 = MEMORY[0x2319080B0](v123, MEMORY[0x277D837D0]);
      v137 = v136;

      v138 = sub_22FA2F600(v135, v137, &v272);

      *(v122 + 14) = v138;
      *(v122 + 22) = 2048;
      v139 = v264;
      v140 = *(v264 + 16);

      *(v122 + 24) = v140;

      *(v122 + 32) = 2081;
      v141 = MEMORY[0x277D84F90];
      if (v117)
      {
        v273 = MEMORY[0x277D84F90];
        sub_22FA86EA8(0, v117, 0);
        v141 = v273;
        v269 = *(v247 + 16);
        v142 = v139 + ((*(v247 + 80) + 32) & ~*(v247 + 80));
        v266 = *(v247 + 72);
        v143 = (v247 + 8);
        v144 = v117;
        do
        {
          v145 = v260;
          v146 = v270;
          v269(v260, v142, v270);
          v147 = sub_22FCC7354();
          v149 = v148;
          (*v143)(v145, v146);
          v273 = v141;
          v151 = *(v141 + 16);
          v150 = *(v141 + 24);
          if (v151 >= v150 >> 1)
          {
            sub_22FA86EA8((v150 > 1), v151 + 1, 1);
            v141 = v273;
          }

          *(v141 + 16) = v151 + 1;
          v152 = v141 + 16 * v151;
          *(v152 + 32) = v147;
          *(v152 + 40) = v149;
          v142 += v266;
          --v144;
        }

        while (v144);
        v122 = v255;
      }

      v153 = MEMORY[0x2319080B0](v141, MEMORY[0x277D837D0]);
      v155 = v154;

      v156 = sub_22FA2F600(v153, v155, &v272);

      *(v122 + 34) = v156;
      *(v122 + 42) = 2048;
      v157 = v268;
      v158 = *(v268 + 16);

      *(v122 + 44) = v158;

      *(v122 + 52) = 2081;
      v159 = MEMORY[0x277D84F90];
      v160 = v270;
      v161 = v265;
      if (v265)
      {
        v273 = MEMORY[0x277D84F90];
        sub_22FA86EA8(0, v265, 0);
        v159 = v273;
        v269 = *(v247 + 16);
        v162 = v157 + ((*(v247 + 80) + 32) & ~*(v247 + 80));
        v266 = *(v247 + 72);
        v163 = (v247 + 8);
        do
        {
          v164 = v260;
          v269(v260, v162, v160);
          v165 = sub_22FCC7354();
          v167 = v166;
          (*v163)(v164, v160);
          v273 = v159;
          v169 = *(v159 + 16);
          v168 = *(v159 + 24);
          if (v169 >= v168 >> 1)
          {
            sub_22FA86EA8((v168 > 1), v169 + 1, 1);
            v159 = v273;
          }

          *(v159 + 16) = v169 + 1;
          v170 = v159 + 16 * v169;
          *(v170 + 32) = v165;
          *(v170 + 40) = v167;
          v162 += v266;
          --v161;
          v160 = v270;
        }

        while (v161);
        v122 = v255;
      }

      v171 = MEMORY[0x2319080B0](v159, MEMORY[0x277D837D0]);
      v173 = v172;

      v174 = sub_22FA2F600(v171, v173, &v272);

      *(v122 + 54) = v174;
      v175 = v254;
      _os_log_impl(&dword_22FA28000, v254, v253, "Ranked prompts (N=%ld)\n%{private}s\n\nUnranked valid prompts (N=%ld)\n%{private}s\n\nPrompts not valid (N=%ld)\n%{private}s\n", v122, 0x3Eu);
      v176 = v251;
      swift_arrayDestroy();
      MEMORY[0x23190A000](v176, -1, -1);
      MEMORY[0x23190A000](v122, -1, -1);

      v117 = v262;
      v93 = v263;
      v94 = v267;
      v115 = v268;
      v118 = v256;
      v116 = v264;
    }

    else
    {
    }

    v271 = v93;
    sub_22FA681D0(v116);
    sub_22FA681D0(v115);
    v177 = v271;
    if (*(v271 + 16) != v94)
    {

      v178 = sub_22FCC8664();
      v179 = sub_22FCC8F14();
      if (os_log_type_enabled(v178, v179))
      {
        v180 = swift_slowAlloc();
        *v180 = 134218240;
        *(v180 + 4) = *(v177 + 16);
        *(v180 + 12) = 2048;
        *(v180 + 14) = v94;

        _os_log_impl(&dword_22FA28000, v178, v179, "Number of ranked prompt suggestions is incorrect, %ld != %ld", v180, 0x16u);
        MEMORY[0x23190A000](v180, -1, -1);
      }

      else
      {
      }
    }

    v181 = sub_22FCC8664();
    v182 = sub_22FCC8F34();
    if (os_log_type_enabled(v181, v182))
    {
      LODWORD(v267) = v182;
      v183 = swift_slowAlloc();
      v266 = swift_slowAlloc();
      v272 = v266;
      *v183 = 134218243;
      v184 = *(v177 + 16);
      *(v183 + 4) = v184;
      *(v183 + 12) = 2081;
      v185 = MEMORY[0x277D84F90];
      if (v184)
      {
        v255 = v183;
        v263 = v181;
        v256 = v118;
        v273 = MEMORY[0x277D84F90];

        sub_22FA86EA8(0, v184, 0);
        v185 = v273;
        v186 = *(v247 + 16);
        v187 = *(v247 + 80);
        v264 = v177;
        v188 = v177 + ((v187 + 32) & ~v187);
        v268 = *(v247 + 72);
        v269 = v186;
        v189 = (v247 + 8);
        do
        {
          v190 = v260;
          v191 = v270;
          v269(v260, v188, v270);
          v192 = sub_22FCC7354();
          v194 = v193;
          (*v189)(v190, v191);
          v273 = v185;
          v196 = *(v185 + 16);
          v195 = *(v185 + 24);
          if (v196 >= v195 >> 1)
          {
            sub_22FA86EA8((v195 > 1), v196 + 1, 1);
            v185 = v273;
          }

          *(v185 + 16) = v196 + 1;
          v197 = v185 + 16 * v196;
          *(v197 + 32) = v192;
          *(v197 + 40) = v194;
          v188 += v268;
          --v184;
        }

        while (v184);

        v117 = v262;
        v181 = v263;
        v183 = v255;
      }

      v198 = MEMORY[0x2319080B0](v185, MEMORY[0x277D837D0]);
      v200 = v199;

      v201 = sub_22FA2F600(v198, v200, &v272);

      *(v183 + 14) = v201;
      _os_log_impl(&dword_22FA28000, v181, v267, "Result prompts in order (N=%ld): %{private}s", v183, 0x16u);
      v202 = v266;
      __swift_destroy_boxed_opaque_existential_0(v266);
      MEMORY[0x23190A000](v202, -1, -1);
      MEMORY[0x23190A000](v183, -1, -1);
    }

    v203 = sub_22FCC7A74();
    swift_bridgeObjectRelease_n();

    v204 = sub_22FCC8664();
    v205 = sub_22FCC8F34();
    if (os_log_type_enabled(v204, v205))
    {
      v206 = swift_slowAlloc();
      v207 = swift_slowAlloc();
      v208 = v207;
      v272 = v207;
      *v206 = 134218243;
      v209 = *(v203 + 16);
      *(v206 + 4) = v209;
      *(v206 + 12) = 2081;
      if (v209)
      {
        v256 = v207;
        LODWORD(v263) = v205;
        v264 = v206;
        v266 = v204;
        v273 = MEMORY[0x277D84F90];
        sub_22FA86EA8(0, v209, 0);
        v210 = v273;
        v211 = v247 + 16;
        v212 = *(v247 + 16);
        v213 = *(v247 + 80);
        v267 = v203;
        v214 = v203 + ((v213 + 32) & ~v213);
        v268 = *(v247 + 72);
        v269 = v212;
        v215 = (v247 + 8);
        do
        {
          v216 = v260;
          v217 = v270;
          v218 = v211;
          v269(v260, v214, v270);
          v219 = sub_22FCC7354();
          v221 = v220;
          (*v215)(v216, v217);
          v273 = v210;
          v223 = *(v210 + 16);
          v222 = *(v210 + 24);
          if (v223 >= v222 >> 1)
          {
            sub_22FA86EA8((v222 > 1), v223 + 1, 1);
            v210 = v273;
          }

          *(v210 + 16) = v223 + 1;
          v224 = v210 + 16 * v223;
          *(v224 + 32) = v219;
          *(v224 + 40) = v221;
          v214 += v268;
          --v209;
          v211 = v218;
        }

        while (v209);
        v203 = v267;

        v117 = v262;
        v204 = v266;
        v206 = v264;
        LOBYTE(v205) = v263;
        v208 = v256;
      }

      else
      {

        v210 = MEMORY[0x277D84F90];
      }

      v225 = MEMORY[0x2319080B0](v210, MEMORY[0x277D837D0]);
      v227 = v226;

      v228 = sub_22FA2F600(v225, v227, &v272);

      *(v206 + 14) = v228;
      _os_log_impl(&dword_22FA28000, v204, v205, "Result prompts after deduping (N=%ld): %{private}s", v206, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v208);
      MEMORY[0x23190A000](v208, -1, -1);
      MEMORY[0x23190A000](v206, -1, -1);
    }

    else
    {
    }

    v229 = *(v203 + 16);
    v230 = v236;
    v236[3] = &type metadata for PromptSuggestionRankingDiagnosticContext;
    v230[4] = &off_2844A7080;
    v231 = swift_allocObject();
    *v230 = v231;

    v232 = v252;
    v231[2] = MEMORY[0x277D84F90];
    v231[3] = v232;
    v233 = v257;
    v231[4] = v259;
    v231[5] = v233;
    v234 = v265;
    v231[6] = v117;
    v231[7] = v234;
    v231[8] = v229;
  }
}

uint64_t sub_22FABB044(uint64_t a1)
{
  v2 = sub_22FCC7344();
  v41 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v3);
  v5 = v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = v36 - v8;
  v10 = sub_22FCC7424();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v18 = v36 - v17;
  v42 = a1;
  sub_22FCC74F4();
  sub_22FCC7394();
  v36[1] = sub_22FAC2F3C(&qword_27DAD8180, MEMORY[0x277D3C118], MEMORY[0x277D3C120]);
  LOBYTE(a1) = sub_22FCC9244();
  v19 = *(v11 + 8);
  v37 = v14;
  v19(v14, v10);
  v38 = v10;
  v39 = v19;
  v40 = v11 + 8;
  v19(v18, v10);
  if (a1 & 1) == 0 || (sub_22FCC74D4(), v20 = v41, (*(v41 + 104))(v5, *MEMORY[0x277D3C0F8], v2), sub_22FAC2F3C(&qword_27DAD8188, MEMORY[0x277D3C108], MEMORY[0x277D3C110]), v21 = sub_22FCC8A44(), v22 = *(v20 + 8), v22(v5, v2), v22(v9, v2), (v21) || (sub_22FCC74F4(), v23 = v37, sub_22FCC7364(), v24 = v38, v25 = sub_22FCC9244(), v26 = v39, v39(v23, v24), v26(v18, v24), (v25) || (sub_22FCC74F4(), sub_22FCC73C4(), v27 = sub_22FCC9244(), v26(v23, v24), v26(v18, v24), (v27) || (sub_22FCC74F4(), sub_22FCC73D4(), v28 = sub_22FCC9244(), v26(v23, v24), v26(v18, v24), (v28) || (sub_22FCC74F4(), sub_22FCC73E4(), v29 = sub_22FCC9244(), v26(v23, v24), v26(v18, v24), (v29) || (sub_22FCC74F4(), sub_22FCC73A4(), v30 = sub_22FCC9244(), v26(v23, v24), v26(v18, v24), (v30) || (sub_22FCC74F4(), sub_22FCC7414(), v31 = sub_22FCC9244(), v26(v23, v24), v26(v18, v24), (v31) || (sub_22FCC74F4(), sub_22FCC7384(), v32 = sub_22FCC9244(), v26(v23, v24), v26(v18, v24), (v32))
  {
    v33 = 0;
  }

  else
  {
    sub_22FCC74F4();
    sub_22FCC7374();
    v35 = sub_22FCC9244();
    v26(v23, v24);
    v26(v18, v24);
    v33 = v35 ^ 1;
  }

  return v33 & 1;
}

uint64_t sub_22FABB5FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_22FCC7514();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  sub_22FCC8494();
  v4[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FABB6EC, 0, 0);
}

uint64_t sub_22FABB6EC()
{
  v1 = v0[4];
  v2 = v0[5] + OBJC_IVAR____TtC13PhotoAnalysis23PromptSuggestionFetcher_configuration;
  v3 = (v2 + *(type metadata accessor for PromptSuggestionFetcher.Configuration(0) + 20));
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  *(swift_allocObject() + 16) = v1;
  v6 = v1;
  sub_22FCC84B4();
  v12 = (*(v5 + 8) + **(v5 + 8));
  v7 = swift_task_alloc();
  v0[10] = v7;
  *v7 = v0;
  v7[1] = sub_22FABB894;
  v8 = v0[9];
  v10 = v0[2];
  v9 = v0[3];

  return v12(v10, v9, v8, v4, v5);
}

uint64_t sub_22FABB894(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 88) = a1;
  *(v3 + 96) = v1;

  if (v1)
  {
    v4 = sub_22FABBBB4;
  }

  else
  {
    v4 = sub_22FABB9A8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

void *sub_22FABB9A8()
{
  v23 = v0;
  v1 = v0[2];
  if (v1 >> 62)
  {
    goto LABEL_16;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v2)
  {
    while (1)
    {
      v21 = MEMORY[0x277D84F90];
      result = sub_22FA86EC8(0, v2 & ~(v2 >> 63), 0);
      if (v2 < 0)
      {
        break;
      }

      v4 = 0;
      v5 = v0[7];
      v6 = v21;
      v19 = v1 & 0xFFFFFFFFFFFFFF8;
      v20 = v1 & 0xC000000000000001;
      v18 = v0[2] + 32;
      v1 = v0[12];
      while (1)
      {
        v7 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          break;
        }

        if (v20)
        {
          v8 = MEMORY[0x231908810](v4, v0[2]);
        }

        else
        {
          if (v4 >= *(v19 + 16))
          {
            goto LABEL_15;
          }

          v8 = *(v18 + 8 * v4);
        }

        v9 = v8;
        v10 = v0[11];
        v11 = v0[8];
        v12 = v0[5];
        v22[0] = v8;
        sub_22FAC1050(v22, v10, v12, v11);

        v14 = *(v21 + 16);
        v13 = *(v21 + 24);
        if (v14 >= v13 >> 1)
        {
          sub_22FA86EC8((v13 > 1), v14 + 1, 1);
        }

        v15 = v0[8];
        v16 = v0[6];
        *(v21 + 16) = v14 + 1;
        (*(v5 + 32))(v21 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v14, v15, v16);
        ++v4;
        if (v7 == v2)
        {

          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      v2 = sub_22FCC92C4();
      if (!v2)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    v6 = MEMORY[0x277D84F90];
LABEL_18:

    v17 = v0[1];

    return v17(v6);
  }

  return result;
}

uint64_t sub_22FABBBB4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t PromptSuggestionFetcher.fetchUnvalidatedPromptSuggestions(fetchLimit:)(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  sub_22FCC6794();
  v2[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8040, &unk_22FCD4810);
  v2[10] = swift_task_alloc();
  v3 = sub_22FCC68A4();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8048, &qword_22FCD9CA0);
  v2[14] = swift_task_alloc();
  sub_22FCC7424();
  v2[15] = swift_task_alloc();
  v4 = sub_22FCC7344();
  v2[16] = v4;
  v2[17] = *(v4 - 8);
  v2[18] = swift_task_alloc();
  v5 = sub_22FCC74C4();
  v2[19] = v5;
  v2[20] = *(v5 - 8);
  v2[21] = swift_task_alloc();
  v6 = sub_22FCC7514();
  v2[22] = v6;
  v2[23] = *(v6 - 8);
  v2[24] = swift_task_alloc();
  v7 = type metadata accessor for TemplatedPrompt(0);
  v2[25] = v7;
  v2[26] = *(v7 - 8);
  v2[27] = swift_task_alloc();
  v2[28] = *(type metadata accessor for PromptSuggestionFetcher.MCSuggestion(0) - 8);
  v2[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FABBF70, 0, 0);
}

uint64_t sub_22FABBF70()
{
  v1 = [objc_opt_self() ignoreProgress];
  v0[30] = v1;
  v2 = swift_task_alloc();
  v0[31] = v2;
  *v2 = v0;
  v2[1] = sub_22FABC034;
  v3 = v0[7];

  return sub_22FAB1D6C((v0 + 2), v3, v1);
}

uint64_t sub_22FABC034(uint64_t a1)
{
  v3 = *v2;
  v3[32] = a1;
  v3[33] = v1;

  if (v1)
  {
    v4 = sub_22FABC708;
  }

  else
  {
    v5 = v3[30];
    __swift_destroy_boxed_opaque_existential_0(v3 + 2);

    v4 = sub_22FABC158;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22FABC158()
{
  result = v0[32];
  v25 = *(result + 16);
  if (v25)
  {
    v2 = 0;
    v22 = v0[28];
    v23 = v0[29];
    v20 = v0[26];
    v21 = result + ((*(v22 + 80) + 32) & ~*(v22 + 80));
    v31 = *MEMORY[0x277D3C130];
    v30 = (v0[20] + 104);
    v29 = *MEMORY[0x277D3C100];
    v27 = (v0[12] + 8);
    v28 = (v0[17] + 104);
    v32 = v0[23];
    v3 = MEMORY[0x277D84F90];
    v24 = v0[32];
    while (v2 < *(result + 16))
    {
      v26 = v2;
      sub_22FAC2F84(v21 + *(v22 + 72) * v2, v0[29], type metadata accessor for PromptSuggestionFetcher.MCSuggestion);
      v4 = *(v23 + 16);
      v5 = *(v4 + 16);
      if (v5)
      {
        v6 = v4 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
        v33 = *(v20 + 72);
        do
        {
          v39 = v5;
          v40 = v3;
          v7 = v0[21];
          v9 = v0[18];
          v8 = v0[19];
          v34 = v0[16];
          v10 = v0[13];
          v35 = v0[14];
          v36 = v0[11];
          v37 = v0[10];
          v38 = v6;
          sub_22FAC2F84(v6, v0[27], type metadata accessor for TemplatedPrompt);
          v11 = objc_allocWithZone(MEMORY[0x277CCA898]);

          v12 = sub_22FCC8A54();
          [v11 initWithString_];

          (*v30)(v7, v31, v8);
          (*v28)(v9, v29, v34);

          sub_22FCC73B4();
          v13 = sub_22FCC7BC4();
          (*(*(v13 - 8) + 56))(v35, 1, 1, v13);
          sub_22FCC6874();
          sub_22FCC6834();
          (*v27)(v10, v36);
          v14 = sub_22FCC74A4();
          (*(*(v14 - 8) + 56))(v37, 1, 1, v14);
          sub_22FCC6764();
          v3 = v40;
          sub_22FCC7464();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v3 = sub_22FAC1E40(0, v40[2] + 1, 1, v40, &qword_27DAD7878, &qword_22FCD3538, MEMORY[0x277D3C160]);
          }

          v16 = v3[2];
          v15 = v3[3];
          if (v16 >= v15 >> 1)
          {
            v3 = sub_22FAC1E40((v15 > 1), v16 + 1, 1, v3, &qword_27DAD7878, &qword_22FCD3538, MEMORY[0x277D3C160]);
          }

          v17 = v0[24];
          v18 = v0[22];
          sub_22FAC2FEC(v0[27], type metadata accessor for TemplatedPrompt);
          v3[2] = v16 + 1;
          (*(v32 + 32))(v3 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v16, v17, v18);
          v6 = v38 + v33;
          v5 = v39 - 1;
        }

        while (v39 != 1);
      }

      v2 = v26 + 1;
      sub_22FAC2FEC(v0[29], type metadata accessor for PromptSuggestionFetcher.MCSuggestion);
      result = v24;
      if (v26 + 1 == v25)
      {

        v41 = v3;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {

    v41 = MEMORY[0x277D84F90];
LABEL_15:

    v19 = v0[1];

    return v19(v41);
  }

  return result;
}

uint64_t sub_22FABC708()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t PromptSuggestionFetcher.validatePrompts(_:eventRecorder:progressReporter:diagnosticContext:forceValidation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 472) = a4;
  *(v6 + 480) = v5;
  *(v6 + 89) = a5;
  *(v6 + 456) = a2;
  *(v6 + 464) = a3;
  *(v6 + 448) = a1;
  v7 = sub_22FCC6EE4();
  *(v6 + 488) = v7;
  *(v6 + 496) = *(v7 - 8);
  *(v6 + 504) = swift_task_alloc();
  *(v6 + 512) = swift_task_alloc();
  sub_22FCC6794();
  *(v6 + 520) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8040, &unk_22FCD4810);
  *(v6 + 528) = swift_task_alloc();
  v8 = sub_22FCC68A4();
  *(v6 + 536) = v8;
  *(v6 + 544) = *(v8 - 8);
  *(v6 + 552) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8048, &qword_22FCD9CA0);
  *(v6 + 560) = swift_task_alloc();
  v9 = sub_22FCC74C4();
  *(v6 + 568) = v9;
  *(v6 + 576) = *(v9 - 8);
  *(v6 + 584) = swift_task_alloc();
  v10 = sub_22FCC7BC4();
  *(v6 + 592) = v10;
  *(v6 + 600) = *(v10 - 8);
  *(v6 + 608) = swift_task_alloc();
  v11 = sub_22FCC7424();
  *(v6 + 616) = v11;
  *(v6 + 624) = *(v11 - 8);
  *(v6 + 632) = swift_task_alloc();
  *(v6 + 640) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8050, &qword_22FCD4828);
  *(v6 + 648) = swift_task_alloc();
  v12 = sub_22FCC7344();
  *(v6 + 656) = v12;
  *(v6 + 664) = *(v12 - 8);
  *(v6 + 672) = swift_task_alloc();
  *(v6 + 680) = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8058, &qword_22FCD4830);
  *(v6 + 688) = v13;
  *(v6 + 696) = *(v13 - 8);
  *(v6 + 704) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8060, &qword_22FCD4838);
  *(v6 + 712) = swift_task_alloc();
  *(v6 + 720) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8068, &unk_22FCD4840);
  *(v6 + 728) = swift_task_alloc();
  v14 = sub_22FCC7514();
  *(v6 + 736) = v14;
  *(v6 + 744) = *(v14 - 8);
  *(v6 + 752) = swift_task_alloc();
  *(v6 + 760) = swift_task_alloc();
  *(v6 + 768) = swift_task_alloc();
  *(v6 + 776) = swift_task_alloc();
  *(v6 + 784) = swift_task_alloc();
  *(v6 + 792) = swift_task_alloc();
  *(v6 + 800) = swift_task_alloc();
  *(v6 + 808) = swift_task_alloc();
  v15 = type metadata accessor for TemplatedPrompt(0);
  *(v6 + 816) = v15;
  *(v6 + 824) = *(v15 - 8);
  *(v6 + 832) = swift_task_alloc();
  *(v6 + 840) = swift_task_alloc();
  *(v6 + 848) = swift_task_alloc();
  v16 = sub_22FCC84E4();
  *(v6 + 856) = v16;
  *(v6 + 864) = *(v16 - 8);
  *(v6 + 872) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FABCDF0, 0, 0);
}

void sub_22FABCDF0()
{
  v64 = v0;
  __swift_project_boxed_opaque_existential_1(*(v0 + 456), *(*(v0 + 456) + 24));
  sub_22FCC8414();
  *(v0 + 880) = OBJC_IVAR____TtC13PhotoAnalysis23PromptSuggestionFetcher_logger;

  v1 = sub_22FCC8664();
  v2 = sub_22FCC8F34();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 448);
  if (v3)
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = *(v4 + 16);

    _os_log_impl(&dword_22FA28000, v1, v2, "Validate Fetched [TemplatedPrompt]. Check if validation is needed for %ld prompts", v5, 0xCu);
    MEMORY[0x23190A000](v5, -1, -1);
  }

  else
  {
  }

  v6 = *(v0 + 448);
  v7 = MEMORY[0x277D84F90];
  *(v0 + 440) = MEMORY[0x277D84F90];
  v8 = *(v6 + 16);
  *(v0 + 888) = v8;
  if (v8)
  {
    v54 = 0;
    v9 = *(v0 + 824);
    v59 = *(v0 + 816);
    v10 = *(v0 + 744);
    v56 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v11 = v6 + v56;
    v60 = *(v9 + 72);
    v58 = (v10 + 48);
    v55 = (v10 + 32);
    v50 = (v10 + 16);
    v51 = v10;
    v53 = (v10 + 8);
    v57 = v7;
    while (1)
    {
      v12 = v7;
      v13 = *(v0 + 848);
      v14 = *(v0 + 736);
      v15 = *(v0 + 728);
      sub_22FAC2F84(v11, v13, type metadata accessor for TemplatedPrompt);
      v62 = objc_autoreleasePoolPush();
      v16 = (v13 + *(v59 + 24));
      v17 = *v16;
      v18 = v16[1];
      PromptSuggestionFetcher.fetchPromptSuggestionWithValidNumberOfAssets(for:)(*v16, v18, v15);
      if ((*v58)(v15, 1, v14) == 1)
      {
        break;
      }

      v19 = *(v0 + 89);
      v20 = *v55;
      (*v55)(*(v0 + 808), *(v0 + 728), *(v0 + 736));
      if (v19)
      {
        (*v53)(*(v0 + 808), *(v0 + 736));
        goto LABEL_10;
      }

      v52 = v20;

      v24 = sub_22FCC8664();
      v25 = sub_22FCC8F34();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v63[0] = v27;
        *v26 = 136642819;
        v28 = sub_22FA2F600(v17, v18, v63);

        *(v26 + 4) = v28;
        _os_log_impl(&dword_22FA28000, v24, v25, "Existing PHSuggestion exists for %{sensitive}s. Skipping", v26, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v27);
        MEMORY[0x23190A000](v27, -1, -1);
        MEMORY[0x23190A000](v26, -1, -1);
      }

      else
      {
      }

      v29 = v57;
      if (__OFADD__(v54++, 1))
      {
        __break(1u);
        return;
      }

      (*v50)(*(v0 + 800), *(v0 + 808), *(v0 + 736));
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = sub_22FAC1E40(0, v57[2] + 1, 1, v57, &qword_27DAD7878, &qword_22FCD3538, MEMORY[0x277D3C160]);
      }

      v32 = v29[2];
      v31 = v29[3];
      if (v32 >= v31 >> 1)
      {
        v57 = sub_22FAC1E40((v31 > 1), v32 + 1, 1, v29, &qword_27DAD7878, &qword_22FCD3538, MEMORY[0x277D3C160]);
      }

      else
      {
        v57 = v29;
      }

      v33 = *(v0 + 800);
      v34 = *(v0 + 736);
      (*(v51 + 8))(*(v0 + 808), v34);
      v57[2] = v32 + 1;
      v52(v57 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v32, v33, v34);
      v7 = v12;
LABEL_24:
      objc_autoreleasePoolPop(v62);
      sub_22FCC8DA4();
      sub_22FAC2FEC(*(v0 + 848), type metadata accessor for TemplatedPrompt);
      v11 += v60;
      if (!--v8)
      {
        goto LABEL_28;
      }
    }

    sub_22FA2B420(*(v0 + 728), &qword_27DAD8068, &unk_22FCD4840);
LABEL_10:
    sub_22FAC2F84(*(v0 + 848), *(v0 + 840), type metadata accessor for TemplatedPrompt);
    v7 = v12;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_22FAC1E40(0, v12[2] + 1, 1, v12, &qword_27DAD7860, &qword_22FCD9BC0, type metadata accessor for TemplatedPrompt);
    }

    v22 = v7[2];
    v21 = v7[3];
    if (v22 >= v21 >> 1)
    {
      v7 = sub_22FAC1E40((v21 > 1), v22 + 1, 1, v7, &qword_27DAD7860, &qword_22FCD9BC0, type metadata accessor for TemplatedPrompt);
    }

    v23 = *(v0 + 840);
    v7[2] = v22 + 1;
    sub_22FAC5164(v23, v7 + v56 + v22 * v60, type metadata accessor for TemplatedPrompt);
    *(v0 + 440) = v7;
    goto LABEL_24;
  }

  v54 = 0;
  v57 = v7;
LABEL_28:
  *(v0 + 920) = v7;
  *(v0 + 912) = v54;
  *(v0 + 904) = v57;
  *(v0 + 896) = v57;
  v35 = sub_22FCC8664();
  v36 = sub_22FCC8F34();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 134218240;
    *(v37 + 4) = v7[2];
    *(v37 + 12) = 2048;
    *(v37 + 14) = v54;
    _os_log_impl(&dword_22FA28000, v35, v36, "Validate Fetched [TemplatedPrompt]. Validating %ld prompts, %ld have existing/valid PHSuggestion to skip validation", v37, 0x16u);
    MEMORY[0x23190A000](v37, -1, -1);
  }

  v38 = *(v0 + 480);
  v39 = *(v0 + 464);

  v40 = [v39 childProgressReporterFromStart:0.1 toEnd:0.2];
  *(v0 + 928) = v40;
  v41 = OBJC_IVAR____TtC13PhotoAnalysis23PromptSuggestionFetcher_configuration;
  *(v0 + 936) = OBJC_IVAR____TtC13PhotoAnalysis23PromptSuggestionFetcher_configuration;
  v42 = v38 + v41;
  v43 = *(type metadata accessor for PromptSuggestionFetcher.Configuration(0) + 20);
  *(v0 + 92) = v43;
  v44 = (v42 + v43);
  v45 = *(v42 + v43 + 24);
  v46 = v44[4];
  __swift_project_boxed_opaque_existential_1(v44, v45);
  v47 = *(v46 + 24);

  v61 = (v47 + *v47);
  v48 = swift_task_alloc();
  *(v0 + 944) = v48;
  *v48 = v0;
  v48[1] = sub_22FABD85C;
  v49 = *(v0 + 456);

  (v61)(v7, v49, v40, v45, v46);
}

uint64_t sub_22FABD85C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 952) = a1;
  *(v3 + 960) = v1;

  if (v1)
  {
    v4 = sub_22FABF958;
  }

  else
  {

    v4 = sub_22FABD97C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22FABD97C()
{
  v1 = *(v0 + 952);
  swift_beginAccess();
  *(v0 + 440) = v1;

  v2 = sub_22FCC8664();
  v3 = sub_22FCC8F34();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 952);
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = *(v4 + 16);
    _os_log_impl(&dword_22FA28000, v2, v3, "People validation returned %ld valid prompts", v5, 0xCu);
    MEMORY[0x23190A000](v5, -1, -1);
  }

  v6 = *(v0 + 952);
  *(v0 + 968) = v6;
  v7 = (*(v0 + 480) + *(v0 + 936) + *(v0 + 92));
  v8 = [*(v0 + 464) childProgressReporterFromStart:0.2 toEnd:0.3];
  *(v0 + 976) = v8;
  v9 = v7[3];
  v10 = v7[4];
  __swift_project_boxed_opaque_existential_1(v7, v9);
  v11 = *(v10 + 16);

  v15 = (v11 + *v11);
  v12 = swift_task_alloc();
  *(v0 + 984) = v12;
  *v12 = v0;
  v12[1] = sub_22FABDBD8;
  v13 = *(v0 + 456);

  return v15(v0 + 384, v6, v13, v8, v9, v10);
}

uint64_t sub_22FABDBD8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 992) = a1;
  *(v3 + 1000) = v1;

  if (v1)
  {
    v4 = sub_22FABFC0C;
  }

  else
  {

    v4 = sub_22FABDCF8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22FABDCF8()
{
  v266 = v0;
  v1 = *(v0 + 384);
  v2 = *(v0 + 400);
  v3 = *(v0 + 408);
  v4 = **(v0 + 472);
  v259 = *(v0 + 392);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    goto LABEL_2;
  }

LABEL_85:
  v4 = sub_22FAC23E0(0, *(v4 + 16) + 1, 1, v4, &qword_27DAD8018, &qword_22FCD47A8, &qword_27DAD7618, &unk_22FCD4AB0);
LABEL_2:
  v6 = *(v4 + 16);
  v5 = *(v4 + 24);
  if (v6 >= v5 >> 1)
  {
    v4 = sub_22FAC23E0((v5 > 1), v6 + 1, 1, v4, &qword_27DAD8018, &qword_22FCD47A8, &qword_27DAD7618, &unk_22FCD4AB0);
  }

  v7 = *(v0 + 1000);
  v8 = *(v0 + 472);
  *(v0 + 368) = &type metadata for PromptSuggestionLLMQUDiagnosticContext;
  *(v0 + 376) = &protocol witness table for PromptSuggestionLLMQUDiagnosticContext;
  v9 = swift_allocObject();
  *(v0 + 344) = v9;
  v9[2] = v1;
  v9[3] = v259;
  v9[4] = v2;
  v9[5] = v3;
  *(v4 + 16) = v6 + 1;
  sub_22FA2CF78((v0 + 344), v4 + 40 * v6 + 32);
  *v8 = v4;
  sub_22FCC8FF4();
  if (v7)
  {
    v10 = *(v0 + 976);
    v11 = *(v0 + 928);
    v12 = *(v0 + 456);

    __swift_project_boxed_opaque_existential_1(v12, v12[3]);
    sub_22FCC83F4();
    (*(*(v0 + 864) + 8))(*(v0 + 872), *(v0 + 856));

    v173 = *(v0 + 8);

    return v173();
  }

  else
  {
    v244 = *(v0 + 968);
    v13 = *(v0 + 888);
    v241 = *(v0 + 824);
    v251 = *(v0 + 816);
    v14 = *(v0 + 744);
    v3 = *(v0 + 696);
    v252 = *(v0 + 688);
    v15 = *(v0 + 664);
    v255 = *(v0 + 624);
    v2 = *(v0 + 600);
    v253 = *(v0 + 576);
    v259 = *(v0 + 544);
    v16 = *(v0 + 496);
    v250 = *(v0 + 992);
    v17 = (*(v0 + 480) + *(v0 + 936) + *(v0 + 92));
    v18 = v17[3];
    v19 = v17[4];
    __swift_project_boxed_opaque_existential_1(v17, v18);
    v205 = (*(v19 + 40))(v18, v19);
    if (v13 <= 1)
    {
      v20 = 1;
    }

    else
    {
      v20 = v13;
    }

    v21 = 0.7 / v20;
    v22 = *(v244 + 16);
    v249 = (v3 + 56);
    v248 = (v3 + 48);
    v258 = (v16 + 8);
    v257 = (v16 + 32);
    v204 = (v15 + 48);
    v193 = (v15 + 32);
    v194 = v16;
    v192 = *MEMORY[0x277D3C100];
    v191 = (v15 + 104);
    v228 = (v2 + 16);
    v203 = *MEMORY[0x277D3C130];
    v201 = (v15 + 16);
    v202 = (v253 + 104);
    v199 = (v2 + 56);
    v200 = (v255 + 16);
    v238 = (v14 + 16);
    v234 = (v14 + 8);
    v197 = (v2 + 8);
    v198 = (v259 + 8);
    v195 = (v15 + 8);
    v196 = (v255 + 8);
    v236 = v14;
    v235 = (v14 + 32);
    v229 = *(v0 + 904);
    v242 = *(v0 + 896);

    v4 = 0;
    v1 = 0;
    v23 = 0.3;
    v245 = v22;
    v243 = v0;
    if (!v22)
    {
LABEL_10:
      v24 = 1;
      v25 = v22;
      goto LABEL_13;
    }

    while (1)
    {
      if (v4 >= *(v244 + 16))
      {
        goto LABEL_82;
      }

      v26 = *(v0 + 712);
      v27 = *(v0 + 704);
      v28 = *(v0 + 968) + ((*(v241 + 80) + 32) & ~*(v241 + 80)) + *(v241 + 72) * v4;
      v29 = *(v252 + 48);
      *v27 = v4;
      sub_22FAC2F84(v28, v27 + v29, type metadata accessor for TemplatedPrompt);
      sub_22FA4F224(v27, v26, &qword_27DAD8058, &qword_22FCD4830);
      v24 = 0;
      v25 = v4 + 1;
LABEL_13:
      v30 = *(v0 + 720);
      v31 = *(v0 + 712);
      v32 = *(v0 + 688);
      (*v249)(v31, v24, 1, v32);
      sub_22FA4F224(v31, v30, &qword_27DAD8060, &qword_22FCD4838);
      if ((*v248)(v30, 1, v32) == 1)
      {
        break;
      }

      v256 = v25;
      v33 = *(v0 + 832);
      v34 = *(v0 + 720);
      v35 = *v34;
      sub_22FAC5164(v34 + *(v252 + 48), v33, type metadata accessor for TemplatedPrompt);
      v254 = objc_autoreleasePoolPush();
      v36 = (v33 + v251[6]);
      v2 = *v36;
      v3 = v36[1];

      v37 = sub_22FCC8664();
      v38 = sub_22FCC8EF4();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v4 = swift_slowAlloc();
        *&v263 = v4;
        *v39 = 136643331;
        *(v39 + 4) = sub_22FA2F600(v2, v3, &v263);
        *(v39 + 12) = 2048;
        if (__OFADD__(v35, 1))
        {
          goto LABEL_83;
        }

        v40 = *(v0 + 888);
        *(v39 + 14) = v35 + 1;
        *(v39 + 22) = 2048;
        *(v39 + 24) = v40;

        _os_log_impl(&dword_22FA28000, v37, v38, "Validating prompt '%{sensitive}s', (%ld/%ld)", v39, 0x20u);
        __swift_destroy_boxed_opaque_existential_0(v4);
        MEMORY[0x23190A000](v4, -1, -1);
        MEMORY[0x23190A000](v39, -1, -1);
      }

      else
      {
      }

      if (*(v250 + 16) && (v41 = sub_22FA69F80(*(v0 + 832)), (v42 & 1) != 0))
      {
        v246 = v1;
        v43 = *(v0 + 832);
        v44 = *(v0 + 464);
        v45 = *(v250 + 56) + 48 * v41;
        v47 = *v45;
        v46 = *(v45 + 8);
        v48 = *(v45 + 16);
        v49 = *(v45 + 24);
        v50 = *(v45 + 32);
        v51 = *(v45 + 40);
        v52 = v21 + v23;
        if (v21 + v23 <= 1.0)
        {
          v53 = v21 + v23;
        }

        else
        {
          v53 = 1.0;
        }

        v54 = v48;

        v55 = [v44 childProgressReporterFromStart:v23 toEnd:v53];
        *&v263 = v47;
        *(&v263 + 1) = v46;
        *&v264 = v54;
        *(&v264 + 1) = v49;
        *&v265[0] = v50;
        BYTE8(v265[0]) = v51;
        sub_22FAC0820(v43, &v263, v55, v262);
        v222 = v51;

        v224 = v262[2];
        v61 = *(v50 + 16);
        v230 = v54;
        if (v61)
        {
          *&v263 = MEMORY[0x277D84F90];
          v62 = v54;
          sub_22FA87260(0, v61, 0);
          v63 = v263;
          v260 = (*(v194 + 80) + 32) & ~*(v194 + 80);
          v64 = v50 + v260;
          v65 = *(v194 + 72);
          v66 = *(v194 + 16);
          do
          {
            v68 = *(v243 + 504);
            v67 = *(v243 + 512);
            v69 = *(v243 + 488);
            v66(v68, v64, v69);
            v66(v67, v68, v69);
            sub_22FCC6EC4();
            (*v258)(v68, v69);
            *&v263 = v63;
            v71 = *(v63 + 16);
            v70 = *(v63 + 24);
            if (v71 >= v70 >> 1)
            {
              sub_22FA87260((v70 > 1), v71 + 1, 1);
              v63 = v263;
            }

            v72 = *(v243 + 512);
            v73 = *(v243 + 488);
            *(v63 + 16) = v71 + 1;
            (*v257)(v63 + v260 + v71 * v65, v72, v73);
            v64 += v65;
            --v61;
          }

          while (v61);
          v74 = v230;
        }

        else
        {
          v75 = v54;
          v63 = MEMORY[0x277D84F90];
          v74 = v54;
        }

        v76 = *(v243 + 656);
        v77 = *(v243 + 648);
        v78 = (*(v243 + 832) + v251[11]);
        v80 = v78[1];
        v79 = v78[2];
        v81 = *v78;
        *(v243 + 201) = *(v78 + 41);
        *(v243 + 176) = v80;
        *(v243 + 192) = v79;
        *(v243 + 160) = v81;
        v82 = v78[1];
        v263 = *v78;
        v264 = v82;
        v265[0] = v78[2];
        *(v265 + 9) = *(v78 + 41);
        sub_22FA4FAA4(v243 + 160, v243 + 224, &qword_27DAD8020, &qword_22FCD47C8);
        TokenVG0kO6TokenstSo18NSAttributedStringC_AA09TemplatedC0V0gH0VSgtFZ_0 = _s13PhotoAnalysis23PromptSuggestionFetcherC22processMusicProperties3for4withSSSg14musicSubstring_Say18PhotosIntelligence10QueryTokenVG0kO6TokenstSo18NSAttributedStringC_AA09TemplatedC0V0gH0VSgtFZ_0(v74, &v263);
        v219 = v84;
        v220 = v85;
        v86 = v264;
        *(v243 + 96) = v263;
        *(v243 + 112) = v86;
        *(v243 + 128) = v265[0];
        *(v243 + 137) = *(v265 + 9);
        sub_22FA2B420(v243 + 96, &qword_27DAD8020, &qword_22FCD47C8);
        v87 = v222;
        if (*(v224 + 16) < v205)
        {
          v87 = 0;
        }

        v261 = v87;
        sub_22FCC7324();
        v88 = *v204;
        v89 = (*v204)(v77, 1, v76);
        v90 = *(v243 + 680);
        v91 = *(v243 + 656);
        v92 = *(v243 + 648);
        v221 = TokenVG0kO6TokenstSo18NSAttributedStringC_AA09TemplatedC0V0gH0VSgtFZ_0;
        if (v89 == 1)
        {
          (*v191)(v90, v192, v91);
          if (v88(v92, 1, v91) != 1)
          {
            sub_22FA2B420(*(v243 + 648), &qword_27DAD8050, &qword_22FCD4828);
          }
        }

        else
        {
          (*v193)(v90, v92, v91);
        }

        sub_22FCC73F4();
        sub_22FCC7E94();
        v93 = sub_22FCC7E74();
        sub_22FAC369C(v93, v224, v243 + 288);

        v94 = *(v243 + 288);
        v95 = *(v243 + 296);
        v96 = *(v243 + 304);
        v98 = *(v243 + 312);
        v97 = *(v243 + 320);
        v99 = *(v243 + 328);
        v100 = sub_22FAC3294(v94, v95, v96, v98, v97, v99, *(v243 + 336));
        if (v100)
        {
          v101 = v100;
          v102 = sub_22FA86B08(v100, 0);
          v103 = v96;
          v104 = v99;
          v105 = v97;
          v106 = v102;
          v225 = v94;
          v107 = v94;
          v108 = v103;
          sub_22FAC51CC(v107, v95, v103);
          sub_22FAC51CC(v98, v105, v104);

          v109 = sub_22FAC3394(&v263, v106 + 4, v101);
          v110 = v265[1];
          *(v243 + 48) = v265[0];
          *(v243 + 64) = v110;
          *(v243 + 73) = *(&v265[1] + 9);
          v111 = v264;
          *(v243 + 16) = v263;
          *(v243 + 32) = v111;
          result = sub_22FA2B420(v243 + 16, &qword_27DAD8070, &qword_22FCDBCB0);
          if (v109 != v101)
          {
            __break(1u);
            return result;
          }

          sub_22FAC51D8(v225, v95, v108);
          sub_22FAC51D8(v98, v105, v104);
        }

        else
        {
          sub_22FAC51D8(v94, v95, v96);
          sub_22FAC51D8(v98, v97, v99);
        }

        v113 = *v228;
        (*v228)(*(v243 + 608), *(v243 + 832) + v251[13], *(v243 + 592));
        v209 = v113;
        if (v261)
        {
          sub_22FCC82B4();
        }

        v216 = *(v243 + 792);
        v223 = *(v243 + 776);
        v217 = *(v243 + 736);
        v218 = *(v243 + 784);
        v119 = *(v243 + 672);
        v120 = *(v243 + 656);
        v208 = *(v243 + 640);
        v121 = *(v243 + 632);
        v206 = *(v243 + 680);
        v207 = *(v243 + 616);
        v122 = *(v243 + 608);
        v123 = *(v243 + 592);
        v214 = v119;
        v215 = *(v243 + 584);
        v239 = *(v243 + 560);
        v124 = *(v243 + 552);
        v212 = *(v243 + 528);
        v213 = v121;
        v211 = *(v243 + 536);
        (*v202)(v215, v203, *(v243 + 568), v114, v115, v116, v117, v118, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190);
        (*v201)(v119, v206, v120);
        (*v200)(v121, v208, v207);
        v209(v239, v122, v123);
        (*v199)(v239, 0, 1, v123);
        v125 = v230;

        v231 = sub_22FCC7B84();
        v210 = v126;
        v127 = sub_22FCC7B74();
        sub_22FCC6874();
        sub_22FCC6834();
        (*v198)(v124, v211);
        v128 = sub_22FCC74A4();
        (*(*(v128 - 8) + 56))(v212, 1, 1, v128);

        sub_22FCC6764();
        v186 = 0;
        v187 = 0;
        v189 = v210;
        v190 = v127;
        v188 = v231;
        v184 = v219;
        v185 = v239;
        v182 = v220;
        v183 = v221;
        v0 = v243;
        v180 = v213;
        v181 = v63;
        v178 = v215;
        v179 = v214;
        v240 = v125;
        sub_22FCC7464();
        v129 = *v238;
        (*v238)(v218, v216, v217);
        v129(v223, v216, v217);
        v130 = sub_22FCC8664();
        v131 = sub_22FCC8EF4();
        v132 = os_log_type_enabled(v130, v131);
        v133 = *(v243 + 784);
        v134 = *(v243 + 776);
        v135 = *(v243 + 736);
        if (v132)
        {
          v237 = v129;
          v136 = swift_slowAlloc();
          v232 = swift_slowAlloc();
          *&v263 = v232;
          *v136 = 136315395;
          v137 = sub_22FCC74B4();
          v139 = v138;
          v226 = v131;
          v140 = *v234;
          (*v234)(v133, v135);
          v141 = sub_22FA2F600(v137, v139, &v263);

          *(v136 + 4) = v141;
          *(v136 + 12) = 2081;
          v142 = sub_22FCC7434();
          v144 = v143;
          v259 = v140;
          (v140)(v134, v135);
          v145 = sub_22FA2F600(v142, v144, &v263);

          *(v136 + 14) = v145;
          _os_log_impl(&dword_22FA28000, v130, v226, "Processed smart suggested prompt %s: %{private}s", v136, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x23190A000](v232, -1, -1);
          v146 = v136;
          v129 = v237;
          MEMORY[0x23190A000](v146, -1, -1);
        }

        else
        {

          v147 = *v234;
          (*v234)(v134, v135);
          v259 = v147;
          (v147)(v133, v135);
        }

        v148 = v242;
        v129(*(v243 + 768), *(v243 + 792), *(v243 + 736));
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v148 = sub_22FAC1E40(0, v242[2] + 1, 1, v242, &qword_27DAD7878, &qword_22FCD3538, MEMORY[0x277D3C160]);
        }

        v150 = v148[2];
        v149 = v148[3];
        if (v150 >= v149 >> 1)
        {
          v242 = sub_22FAC1E40((v149 > 1), v150 + 1, 1, v148, &qword_27DAD7878, &qword_22FCD3538, MEMORY[0x277D3C160]);
        }

        else
        {
          v242 = v148;
        }

        v151 = *(v243 + 792);
        v233 = *(v243 + 768);
        v152 = *(v243 + 736);
        v227 = *(v243 + 680);
        v2 = *(v243 + 656);
        v3 = *(v243 + 640);
        v153 = *(v243 + 616);
        v154 = *(v243 + 608);
        v155 = *(v243 + 592);

        (v259)(v151, v152);
        (*v197)(v154, v155);
        (*v196)(v3, v153);
        (*v195)(v227, v2);
        v242[2] = v150 + 1;
        (*(v236 + 32))(v242 + ((*(v236 + 80) + 32) & ~*(v236 + 80)) + *(v236 + 72) * v150, v233, v152);
        v229 = v242;
        v1 = v246;
        v22 = v245;
        v4 = v256;
      }

      else
      {

        v56 = sub_22FCC8664();
        v57 = sub_22FCC8F14();
        if (os_log_type_enabled(v56, v57))
        {
          v58 = swift_slowAlloc();
          v59 = swift_slowAlloc();
          *&v263 = v59;
          *v58 = 136642819;
          v2 = sub_22FA2F600(v2, v3, &v263);

          *(v58 + 4) = v2;
          v22 = v245;
          _os_log_impl(&dword_22FA28000, v56, v57, "Empty validation result for prompt %{sensitive}s. Skipping", v58, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v59);
          MEMORY[0x23190A000](v59, -1, -1);
          MEMORY[0x23190A000](v58, -1, -1);
        }

        else
        {
        }

        v4 = v256;
        if (__OFADD__(v1++, 1))
        {
          __break(1u);
LABEL_82:
          __break(1u);
LABEL_83:
          __break(1u);
LABEL_84:
          __break(1u);
          __break(1u);
          goto LABEL_85;
        }

        v52 = v23;
      }

      objc_autoreleasePoolPop(v254);
      sub_22FCC8DA4();
      sub_22FAC2FEC(*(v0 + 832), type metadata accessor for TemplatedPrompt);
      v23 = v52;
      if (v4 == v22)
      {
        goto LABEL_10;
      }
    }

    sub_22FCC8FF4();
    v4 = v242;
    v156 = v242[2];

    if (v156)
    {
      v157 = 0;
      v158 = MEMORY[0x277D84F90];
      v259 = v156;
      v247 = v1;
      while (v157 < v242[2])
      {
        v2 = (*(v236 + 80) + 32) & ~*(v236 + 80);
        v3 = *(v236 + 72);
        (*(v236 + 16))(*(v0 + 760), v242 + v2 + v3 * v157, *(v0 + 736));
        if (sub_22FCC7504())
        {
          v159 = *v235;
          (*v235)(*(v0 + 752), *(v0 + 760), *(v0 + 736));
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v263 = v158;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_22FA86EC8(0, *(v158 + 16) + 1, 1);
            v158 = v263;
          }

          v162 = *(v158 + 16);
          v161 = *(v158 + 24);
          if (v162 >= v161 >> 1)
          {
            sub_22FA86EC8((v161 > 1), v162 + 1, 1);
            v158 = v263;
          }

          v163 = *(v0 + 752);
          v164 = *(v0 + 736);
          *(v158 + 16) = v162 + 1;
          v159(v158 + v2 + v162 * v3, v163, v164);
          v1 = v247;
          v156 = v259;
        }

        else
        {
          (*v234)(*(v0 + 760), *(v0 + 736));
        }

        if (v156 == ++v157)
        {
          goto LABEL_72;
        }
      }

      goto LABEL_84;
    }

    v158 = MEMORY[0x277D84F90];
LABEL_72:

    v165 = *(v158 + 16);

    v166 = sub_22FCC8664();
    v167 = sub_22FCC8F34();
    if (os_log_type_enabled(v166, v167))
    {
      v168 = *(v0 + 912);
      v169 = *(v0 + 888);
      v170 = swift_slowAlloc();
      *v170 = 134219264;
      *(v170 + 4) = v242[2];
      *(v170 + 12) = 2048;
      *(v170 + 14) = v169;

      *(v170 + 22) = 2048;
      *(v170 + 24) = v1;
      *(v170 + 32) = 2048;
      *(v170 + 34) = 0;
      *(v170 + 42) = 2048;
      *(v170 + 44) = v168;
      *(v170 + 52) = 2048;
      *(v170 + 54) = v165;
      _os_log_impl(&dword_22FA28000, v166, v167, "Validated %ld prompts from %ld prompts. %ld with empty ValidationResult. %ld had curatePromptAssets error. %ld have existing/valid PHSuggestion. %ld are valid", v170, 0x3Eu);
      MEMORY[0x23190A000](v170, -1, -1);
    }

    else
    {
    }

    sub_22FCC9004();
    v171 = *(v0 + 928);
    v172 = *(v0 + 872);
    v174 = *(v0 + 864);
    v175 = *(v0 + 856);
    v176 = *(v0 + 456);

    __swift_project_boxed_opaque_existential_1(v176, v176[3]);
    sub_22FCC83F4();
    (*(v174 + 8))(v172, v175);

    v177 = *(v0 + 8);

    return v177(v229);
  }
}

uint64_t sub_22FABF958()
{
  v1 = *(v0 + 960);

  v2 = v1;
  v3 = sub_22FCC8664();
  v4 = sub_22FCC8F14();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 960);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_22FA28000, v3, v4, "People validation threw an error. Assume all templates are invalid %@", v6, 0xCu);
    sub_22FA2B420(v7, &unk_27DAD7B10, &unk_22FCD21C0);
    MEMORY[0x23190A000](v7, -1, -1);
    MEMORY[0x23190A000](v6, -1, -1);
  }

  v10 = *(v0 + 960);

  v11 = MEMORY[0x277D84F90];
  *(v0 + 968) = MEMORY[0x277D84F90];
  v12 = (*(v0 + 480) + *(v0 + 936) + *(v0 + 92));
  v13 = [*(v0 + 464) childProgressReporterFromStart:0.2 toEnd:0.3];
  *(v0 + 976) = v13;
  v14 = v12[3];
  v15 = v12[4];
  __swift_project_boxed_opaque_existential_1(v12, v14);
  v16 = *(v15 + 16);

  v20 = (v16 + *v16);
  v17 = swift_task_alloc();
  *(v0 + 984) = v17;
  *v17 = v0;
  v17[1] = sub_22FABDBD8;
  v18 = *(v0 + 456);

  return v20(v0 + 384, v11, v18, v13, v14, v15);
}

uint64_t sub_22FABFC0C()
{
  v1 = *(v0 + 928);
  v2 = *(v0 + 456);

  swift_bridgeObjectRelease_n();

  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_22FCC83F4();
  (*(*(v0 + 864) + 8))(*(v0 + 872), *(v0 + 856));

  v3 = *(v0 + 8);

  return v3();
}

void PromptSuggestionFetcher.fetchPromptSuggestionWithValidNumberOfAssets(for:)(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v55 = a3;
  v5 = sub_22FCC7514();
  v6 = *(v5 - 8);
  v56 = v5;
  v57 = v6;
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22FCC7DF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD73D8, &unk_22FCD4850);
  v11 = swift_allocObject();
  v54 = xmmword_22FCD1800;
  *(v11 + 16) = xmmword_22FCD1800;
  *(v11 + 32) = a1;
  *(v11 + 40) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD72A8, &qword_22FCD4730);
  v12 = sub_22FCC74C4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v54;
  (*(v13 + 104))(v15 + v14, *MEMORY[0x277D3C130], v12);

  v16 = sub_22FCC7AA4();

  if (!*(v16 + 16) || (v17 = sub_22FA2DB54(a1, a2), (v18 & 1) == 0))
  {

    v31 = sub_22FCC8664();
    v32 = sub_22FCC8F34();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v58 = v34;
      *v33 = 136642819;
      *(v33 + 4) = sub_22FA2F600(a1, a2, &v58);
      _os_log_impl(&dword_22FA28000, v31, v32, "No matching PHSuggestion for %{sensitive}s, should re-validate", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v34);
      MEMORY[0x23190A000](v34, -1, -1);
      MEMORY[0x23190A000](v33, -1, -1);
    }

    goto LABEL_9;
  }

  v19 = *(*(v16 + 56) + 8 * v17);

  v20 = [v19 version];
  if (v20 < sub_22FCC7B54())
  {

    v21 = v19;
    v22 = sub_22FCC8664();
    v23 = sub_22FCC8F34();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v58 = v25;
      *v24 = 134218499;
      *(v24 + 4) = [v21 version];

      *(v24 + 12) = 2048;
      *(v24 + 14) = sub_22FCC7B54();
      *(v24 + 22) = 2085;
      *(v24 + 24) = sub_22FA2F600(a1, a2, &v58);
      v26 = "PHSuggestion version %ld is older than %ld, for %{sensitive}s, should re-validate";
      v27 = v23;
      v28 = v22;
      v29 = v24;
      v30 = 32;
LABEL_16:
      _os_log_impl(&dword_22FA28000, v28, v27, v26, v29, v30);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x23190A000](v25, -1, -1);
      MEMORY[0x23190A000](v24, -1, -1);

LABEL_9:
LABEL_10:
      v35 = v56;
      v36 = *(v57 + 56);
      v37 = v55;

      v36(v37, 1, 1, v35);
      return;
    }

    goto LABEL_17;
  }

  if ([v19 state] == 2)
  {

    v21 = v19;
    v22 = sub_22FCC8664();
    v38 = sub_22FCC8F34();

    if (os_log_type_enabled(v22, v38))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v58 = v25;
      *v24 = 33554947;
      *(v24 + 4) = [v21 state];

      *(v24 + 6) = 2085;
      *(v24 + 8) = sub_22FA2F600(a1, a2, &v58);
      v26 = "PHSuggestion is in state %hu, for %{sensitive}s, should re-validate";
      v27 = v38;
      v28 = v22;
      v29 = v24;
      v30 = 16;
      goto LABEL_16;
    }

LABEL_17:

    goto LABEL_10;
  }

  v39 = [objc_opt_self() promptValidationAssetCountThreshold];
  *&v54 = sub_22FCC7D54();
  [v54 setShouldPrefetchCount_];
  [v54 setFetchLimit_];
  v40 = [objc_opt_self() fetchKeyAssetsInAssetCollection:v19 options:v54];
  if (v40)
  {
    v41 = v40;
    if ([v40 count] >= v39)
    {
      v49 = [v19 featuresProperties];
      sub_22FCC89D4();

      sub_22FCC7314();

      v50 = v56;
      v51 = v55;
      (*(v57 + 32))(v55, v9, v56);
      (*(v57 + 56))(v51, 0, 1, v50);
      return;
    }

    v42 = v41;
    v43 = sub_22FCC8664();
    v44 = sub_22FCC8F34();

    if (!os_log_type_enabled(v43, v44))
    {

      goto LABEL_10;
    }

    v45 = v42;
    v46 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v58 = v53;
    *v46 = 134218499;
    *(v46 + 4) = [v45 count];

    *(v46 + 12) = 2048;
    *(v46 + 14) = v39;
    *(v46 + 22) = 2085;
    *(v46 + 24) = sub_22FA2F600(a1, a2, &v58);
    _os_log_impl(&dword_22FA28000, v43, v44, "PHSuggestion doesn't have enough assets (%ld/%ld) for %{sensitive}s, should re-validate", v46, 0x20u);
    v47 = v53;
    __swift_destroy_boxed_opaque_existential_0(v53);
    MEMORY[0x23190A000](v47, -1, -1);
    MEMORY[0x23190A000](v46, -1, -1);

    goto LABEL_9;
  }

  (*(v57 + 56))(v55, 1, 1, v56);

  v48 = v54;
}

uint64_t sub_22FAC0820@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v50 = a4;
  v8 = sub_22FCC8CF4();
  v54 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v9);
  v57 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TemplatedPrompt(0);
  MEMORY[0x28223BE20](v11, v12);
  v53 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v49 - v16;
  v18 = a2[1];
  v55 = a2[2];
  v56 = v18;
  v19 = a2[4];
  v63 = a2[3];
  v61 = v19;
  v20 = *(v4 + 16);
  sub_22FCC76D4();
  swift_allocObject();
  v21 = v20;
  v22 = sub_22FCC76C4();
  v23 = OBJC_IVAR____TtC13PhotoAnalysis23PromptSuggestionFetcher_logger;
  v52 = a1;
  sub_22FAC2F84(a1, v17, type metadata accessor for TemplatedPrompt);
  v59 = v23;
  v24 = sub_22FCC8664();
  v25 = sub_22FCC8F34();
  v26 = os_log_type_enabled(v24, v25);
  v51 = v11;
  if (v26)
  {
    v27 = v11;
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v49 = v8;
    v58 = a3;
    v30 = v29;
    v62[0] = v29;
    *v28 = 136642819;
    v31 = &v17[*(v27 + 24)];
    v32 = v22;
    v34 = *v31;
    v33 = v31[1];

    sub_22FAC2FEC(v17, type metadata accessor for TemplatedPrompt);
    v35 = sub_22FA2F600(v34, v33, v62);

    *(v28 + 4) = v35;
    v22 = v32;
    _os_log_impl(&dword_22FA28000, v24, v25, "Curating assets for prompt '%{sensitive}s'", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v30);
    v36 = v30;
    a3 = v58;
    MEMORY[0x23190A000](v36, -1, -1);
    MEMORY[0x23190A000](v28, -1, -1);
  }

  else
  {

    sub_22FAC2FEC(v17, type metadata accessor for TemplatedPrompt);
  }

  v37 = v60;
  sub_22FCC8FF4();
  v38 = v63;
  if (v37)
  {
    sub_22FCC76B4();
  }

  else
  {

    v41 = sub_22FAA99B0(v40);

    PromptSuggestionFetcher.curateAssets(assetUUIDs:progressReporter:)(v41, v62);
    v58 = a3;
    v60 = v22;

    v42 = v62[1];
    v54 = v62[0];
    v43 = v62[2];

    v57 = v55;

    v44 = sub_22FCC8664();
    v45 = v38;
    v46 = sub_22FCC8F34();
    if (os_log_type_enabled(v44, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 134218240;
      *(v47 + 4) = *(v43 + 16);

      *(v47 + 12) = 2048;
      *(v47 + 14) = *(v45 + 16);

      _os_log_impl(&dword_22FA28000, v44, v46, "Curated %ld assets out of %ld", v47, 0x16u);
      MEMORY[0x23190A000](v47, -1, -1);
    }

    else
    {
    }

    sub_22FCC8FF4();
    v48 = v50;
    *v50 = v54;
    v48[1] = v42;
    v48[2] = v43;
    sub_22FCC76B4();
  }
}

void sub_22FAC1050(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v102 = a3;
  v89 = a4;
  v6 = sub_22FCC7514();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22FCC6794();
  MEMORY[0x28223BE20](v11 - 8, v12);
  v88 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8040, &unk_22FCD4810);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v87 = &v71 - v16;
  v85 = sub_22FCC68A4();
  v84 = *(v85 - 8);
  MEMORY[0x28223BE20](v85, v17);
  v82 = &v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8048, &qword_22FCD9CA0);
  MEMORY[0x28223BE20](v19 - 8, v20);
  v86 = &v71 - v21;
  v22 = sub_22FCC7424();
  MEMORY[0x28223BE20](v22 - 8, v23);
  v83 = &v71 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_22FCC7344();
  v78 = *(v79 - 8);
  MEMORY[0x28223BE20](v79, v25);
  v81 = &v71 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_22FCC74C4();
  v76 = *(v77 - 8);
  MEMORY[0x28223BE20](v77, v27);
  v80 = &v71 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *a1;
  v30 = *(a2 + 16);
  v91 = v7;
  v92 = v6;
  v90 = v10;
  v74 = v29;
  if (v30 && (v31 = sub_22FA6A0C0(v29), (v32 & 1) != 0))
  {
    v33 = *(*(a2 + 56) + 8 * v31);
  }

  else
  {
    v33 = MEMORY[0x277D84FA0];
  }

  sub_22FCC7E94();

  v34 = sub_22FCC7E74();
  sub_22FAC369C(v34, v33, &v95);
  v75 = v33;

  v35 = v95;
  v36 = v96;
  v37 = v97;
  v38 = v98;
  v39 = v99;
  v40 = v100;
  v41 = sub_22FAC3294(v95, v96, v97, v98, v99, v100, v101);
  if (v41)
  {
    v42 = v41;
    v43 = sub_22FA86B08(v41, 0);
    sub_22FAC51CC(v35, v36, v37);
    sub_22FAC51CC(v38, v39, v40);

    v93 = v43;
    v44 = sub_22FAC3394(v94, v43 + 4, v42);
    sub_22FA2B420(v94, &qword_27DAD8070, &qword_22FCDBCB0);
    if (v44 != v42)
    {
      __break(1u);
      return;
    }

    sub_22FAC51D8(v35, v36, v37);
    sub_22FAC51D8(v38, v39, v40);

    v45 = v93;
  }

  else
  {
    sub_22FAC51D8(v35, v36, v37);
    sub_22FAC51D8(v38, v39, v40);

    v45 = MEMORY[0x277D84F90];
  }

  v74 = sub_22FCC7DA4();
  v46 = [v74 string];
  sub_22FCC8A84();

  v71 = sub_22FCC82B4();

  v47 = v45[2];
  v93 = v45;
  if (v47)
  {
    v48 = v45[5];
    v73 = v45[4];
    v72 = v48;
  }

  else
  {
    v73 = 0;
    v72 = 0;
  }

  v49 = *(v75 + 16);

  v50 = v102 + OBJC_IVAR____TtC13PhotoAnalysis23PromptSuggestionFetcher_configuration;
  v51 = (v50 + *(type metadata accessor for PromptSuggestionFetcher.Configuration(0) + 20));
  v52 = v51[3];
  v53 = v51[4];
  __swift_project_boxed_opaque_existential_1(v51, v52);
  LODWORD(v75) = v49 >= (*(v53 + 40))(v52, v53);
  (*(v76 + 104))(v80, *MEMORY[0x277D3C138], v77);
  (*(v78 + 104))(v81, *MEMORY[0x277D3C100], v79);
  sub_22FCC73B4();
  v54 = sub_22FCC7BC4();
  (*(*(v54 - 8) + 56))(v86, 1, 1, v54);
  v55 = v82;
  sub_22FCC6874();
  sub_22FCC6834();
  (*(v84 + 8))(v55, v85);
  v56 = sub_22FCC74A4();
  (*(*(v56 - 8) + 56))(v87, 1, 1, v56);
  sub_22FCC6764();
  v57 = v74;
  v58 = v89;
  sub_22FCC7464();
  v60 = v91;
  v59 = v92;
  v61 = v90;
  (*(v91 + 16))(v90, v58, v92);
  v62 = sub_22FCC8664();
  v63 = sub_22FCC8F34();
  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v94[0] = v65;
    *v64 = 136380675;
    v66 = sub_22FCC7434();
    v67 = v61;
    v69 = v68;
    (*(v60 + 8))(v67, v59);
    v70 = sub_22FA2F600(v66, v69, v94);

    *(v64 + 4) = v70;
    _os_log_impl(&dword_22FA28000, v62, v63, "Processed search suggested prompt: %{private}s", v64, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v65);
    MEMORY[0x23190A000](v65, -1, -1);
    MEMORY[0x23190A000](v64, -1, -1);
  }

  else
  {

    (*(v60 + 8))(v61, v59);
  }
}

void PromptSuggestionFetcher.curateAssets(assetUUIDs:progressReporter:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  v6 = sub_22FCC8494();
  MEMORY[0x28223BE20](v6 - 8, v7);
  if (*(a1 + 16) && (v8 = v2 + OBJC_IVAR____TtC13PhotoAnalysis23PromptSuggestionFetcher_configuration, *(v8 + *(type metadata accessor for PromptSuggestionFetcher.Configuration(0) + 32)) == 1))
  {
    v9 = sub_22FCC8664();
    v10 = sub_22FCC8F34();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_22FA28000, v9, v10, "Deduping dejunking using curated library", v11, 2u);
      MEMORY[0x23190A000](v11, -1, -1);
    }

    sub_22FCC84B4();
    v12 = sub_22FCC7D44();
    if (!v3)
    {
      *a2 = 0;
      a2[1] = 0;
      a2[2] = v12;
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = a1;
  }
}

uint64_t PromptSuggestionFetcher.deinit()
{
  v1 = OBJC_IVAR____TtC13PhotoAnalysis23PromptSuggestionFetcher_logger;
  v2 = sub_22FCC8684();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_22FAC2FEC(v0 + OBJC_IVAR____TtC13PhotoAnalysis23PromptSuggestionFetcher_configuration, type metadata accessor for PromptSuggestionFetcher.Configuration);

  return v0;
}

uint64_t PromptSuggestionFetcher.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC13PhotoAnalysis23PromptSuggestionFetcher_logger;
  v2 = sub_22FCC8684();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_22FAC2FEC(v0 + OBJC_IVAR____TtC13PhotoAnalysis23PromptSuggestionFetcher_configuration, type metadata accessor for PromptSuggestionFetcher.Configuration);

  return swift_deallocClassInstance();
}

char *sub_22FAC1D0C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD73D8, &unk_22FCD4850);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_22FAC1E40(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_22FAC20B8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8128, &qword_22FCD4A50);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22FAC21FC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8360, &unk_22FCD4980);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_22FAC23E0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
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

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_22FAC2528(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD80F0, &unk_22FCD4A00);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7478, &qword_22FCD65B0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22FAC265C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD80E0, &qword_22FCD49D8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_22FAC2760(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD77B8, &qword_22FCD34C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD77C0, &qword_22FCD49D0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_22FAC2954(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

char *sub_22FAC2B3C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD80D8, &unk_22FCD49C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22FAC2CD4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD73E0, &qword_22FCD2170);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_22FAC2E08(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
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

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

uint64_t sub_22FAC2F3C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22FAC2F84(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22FAC2FEC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_22FAC304C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_22FCC9274();
  v7 = 1 << *(a2 + 32);
  if (v7 < v6)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (*(a1 + 16))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = *(a2 + 36);
  v9 = *(a1 + 8);
  if (v8 != v9)
  {
    goto LABEL_12;
  }

  if (*a1 < v6)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (*(a1 + 40))
  {
LABEL_17:
    __break(1u);
    return;
  }

  v10 = *(a1 + 32);
  if (v8 != v10)
  {
    goto LABEL_14;
  }

  v11 = *(a1 + 24);
  if (v7 < v11)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  *a3 = *a1;
  *(a3 + 8) = v9;
  *(a3 + 16) = 0;
  *(a3 + 24) = v11;
  *(a3 + 32) = v10;
  *(a3 + 40) = 0;
  *(a3 + 48) = a2;
}

uint64_t sub_22FAC3130(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, int a6, char a7, uint64_t a8)
{
  if (a4 < 0)
  {
LABEL_26:
    __break(1u);
  }

  else
  {
    if (!a4)
    {
      v20 = result;
      sub_22FAC51CC(result, a2, a3 & 1);
      return v20;
    }

    v8 = 0;
    v9 = a3 | a7;
    while ((v9 & 1) == 0)
    {
      if (a2 != a6)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (result == a5)
      {
        return 0;
      }

      if (result < 0)
      {
        goto LABEL_23;
      }

      v11 = 1 << *(a8 + 32);
      if (result >= v11)
      {
        goto LABEL_23;
      }

      v12 = result >> 6;
      v13 = *(a8 + 56 + 8 * (result >> 6));
      if (((v13 >> result) & 1) == 0)
      {
        goto LABEL_24;
      }

      if (*(a8 + 36) != a6)
      {
        goto LABEL_25;
      }

      v14 = v13 & (-2 << (result & 0x3F));
      if (v14)
      {
        result = __clz(__rbit64(v14)) | result & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v15 = v12 << 6;
        v16 = v12 + 1;
        v17 = (a8 + 64 + 8 * v12);
        while (v16 < (v11 + 63) >> 6)
        {
          v19 = *v17++;
          v18 = v19;
          v15 += 64;
          ++v16;
          if (v19)
          {
            result = __clz(__rbit64(v18)) + v15;
            goto LABEL_5;
          }
        }

        result = 1 << *(a8 + 32);
      }

LABEL_5:
      LODWORD(a2) = a6;
      v9 = a7;
      if (v8++ == a4 - 1)
      {
        return result;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22FAC3294(uint64_t result, int a2, char a3, uint64_t a4, int a5, char a6, uint64_t a7)
{
  if (a6 & 1) != 0 || (a3)
  {
    goto LABEL_29;
  }

  v7 = result;
  if (a4 < result)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (a5 != a2)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (result != a4)
  {
    if (*(a7 + 36) != a5)
    {
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
      return result;
    }

    v8 = 1 << *(a7 + 32);
    result = 1;
    while ((v7 & 0x8000000000000000) == 0 && v7 < v8)
    {
      v9 = v7 >> 6;
      v10 = *(a7 + 56 + 8 * (v7 >> 6));
      if (((v10 >> v7) & 1) == 0)
      {
        goto LABEL_25;
      }

      v11 = v10 & (-2 << (v7 & 0x3F));
      if (v11)
      {
        v7 = __clz(__rbit64(v11)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v12 = v9 << 6;
        v13 = v9 + 1;
        v14 = (a7 + 64 + 8 * v9);
        while (v13 < (v8 + 63) >> 6)
        {
          v16 = *v14++;
          v15 = v16;
          v12 += 64;
          ++v13;
          if (v16)
          {
            v7 = __clz(__rbit64(v15)) + v12;
            goto LABEL_20;
          }
        }

        v7 = 1 << *(a7 + 32);
      }

LABEL_20:
      if (v7 == a4)
      {
        return result;
      }

      if (__OFADD__(result++, 1))
      {
        __break(1u);
        break;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  return 0;
}

uint64_t sub_22FAC3394(uint64_t result, void *a2, uint64_t a3)
{
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  if (!a2)
  {
LABEL_28:
    v29 = *(v3 + 16);
    *result = *v3;
    *(result + 16) = v29;
    *(result + 32) = *(v3 + 32);
    *(result + 48) = *(v3 + 48);
    *(result + 56) = v4;
    *(result + 64) = v5;
    *(result + 72) = v6;
    sub_22FAC51CC(v4, v5, v6 & 1);
    return 0;
  }

  v7 = a3;
  v40 = *(v3 + 16);
  if (!a3)
  {
    v30 = v6 & 1;
    v31 = result;
    sub_22FAC51CC(v4, v5, v30);
    v32 = v31;
    v33 = v40;
LABEL_32:
    v35 = *(v3 + 16);
    *v32 = *v3;
    *(v32 + 16) = v35;
    *(v32 + 32) = *(v3 + 32);
    *(v32 + 48) = *(v3 + 48);
    *(v32 + 56) = v4;
    *(v32 + 64) = v5;
    *(v32 + 72) = v33;
    return v7;
  }

  if (a3 < 0)
  {
LABEL_41:
    __break(1u);
  }

  else
  {
    v8 = a2;
    v37 = result;
    v46 = *(v3 + 24);
    v9 = *(v3 + 40);
    v45 = *(v3 + 32);
    v10 = *(v3 + 48);
    sub_22FAC51CC(v4, v5, v6 & 1);
    v11 = v10;
    result = 0;
    v43 = v10;
    v44 = v10 + 56;
    v41 = v9;
    v12 = v6 | v9;
    v38 = v10 + 64;
    v39 = v7;
    v13 = 1;
    v14 = v4;
    v15 = v5;
    v42 = v5;
    while ((v12 & 1) == 0)
    {
      if (v15 != v45)
      {
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      if (v14 == v46)
      {
        v34 = *(v36 + 16);
        *v37 = *v36;
        *(v37 + 16) = v34;
        *(v37 + 32) = *(v36 + 32);
        *(v37 + 48) = *(v36 + 48);
        *(v37 + 56) = v46;
        *(v37 + 64) = v15;
        v7 = result;
        *(v37 + 72) = 0;
        return v7;
      }

      if (v6)
      {
        goto LABEL_43;
      }

      if (v14 < v4)
      {
        goto LABEL_35;
      }

      if (v45 != v5)
      {
        goto LABEL_36;
      }

      if (v14 >= v46)
      {
        goto LABEL_37;
      }

      if (v14 < 0)
      {
        goto LABEL_38;
      }

      v3 = v4;
      v16 = 1 << *(v11 + 32);
      if (v14 >= v16)
      {
        goto LABEL_38;
      }

      v17 = v14 >> 6;
      v18 = *(v44 + 8 * (v14 >> 6));
      if (((v18 >> v14) & 1) == 0)
      {
        goto LABEL_39;
      }

      if (*(v11 + 36) != v45)
      {
        goto LABEL_40;
      }

      v19 = (*(v11 + 48) + 16 * v14);
      v20 = *v19;
      v21 = v19[1];
      v22 = v18 & (-2 << (v14 & 0x3F));
      if (v22)
      {
        v14 = __clz(__rbit64(v22)) | v14 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v23 = v17 << 6;
        v24 = v17 + 1;
        v25 = (v38 + 8 * v17);
        while (v24 < (v16 + 63) >> 6)
        {
          v27 = *v25++;
          v26 = v27;
          v23 += 64;
          ++v24;
          if (v27)
          {

            sub_22FAC51D8(v14, v15, 0);
            v14 = __clz(__rbit64(v26)) + v23;
            goto LABEL_23;
          }
        }

        sub_22FAC51D8(v14, v15, 0);
        v14 = v16;
LABEL_23:
        v7 = v39;
        v6 = v40;
      }

      v11 = v43;
      v15 = *(v43 + 36);
      *v8 = v20;
      v8[1] = v21;
      if (v13 == v7)
      {
        v33 = 0;
        v5 = v15;
        v4 = v14;
        v3 = v36;
        v32 = v37;
        goto LABEL_32;
      }

      v4 = v3;
      v8 += 2;
      result = v13;
      v12 = v41;
      v28 = __OFADD__(v13++, 1);
      v5 = v42;
      if (v28)
      {
        __break(1u);
        goto LABEL_28;
      }
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

void sub_22FAC369C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = sub_22FCC9274();
    v7 = *(a2 + 36);
    v8 = -1 << *(a2 + 32);
    v9 = sub_22FAC3130(v6, v7, 0, a1, -v8, *(a2 + 36), 0, a2);
    v11 = v10;
    v13 = v12;
    v14 = v12;
    v15 = sub_22FCC9274();
    if (v14 == 255)
    {
      v16 = -v8;
    }

    else
    {
      v16 = v9;
    }

    if (v14 == 255)
    {
      v17 = v7;
    }

    else
    {
      v17 = v11;
    }

    if (v14 != 255 && (v13 & 1) != 0)
    {
      goto LABEL_16;
    }

    v18 = *(a2 + 36);
    if (v18 == v17)
    {
      if (v16 >= v15)
      {
        v22[0] = v15;
        v22[1] = v18;
        v23 = 0;
        v24 = v16;
        v25 = v17;
        v26 = 0;
        sub_22FAC304C(v22, a2, v20);
        v19 = v20[1];
        *a3 = v20[0];
        *(a3 + 16) = v19;
        *(a3 + 32) = v20[2];
        *(a3 + 48) = v21;
        return;
      }

      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
}

uint64_t _s13PhotoAnalysis23PromptSuggestionFetcherC22processMusicProperties3for4withSSSg14musicSubstring_Say18PhotosIntelligence10QueryTokenVG0kO6TokenstSo18NSAttributedStringC_AA09TemplatedC0V0gH0VSgtFZ_0(void *a1, uint64_t *a2)
{
  v4 = sub_22FCC6EE4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v159 = &v123 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8150, &qword_22FCD4A78);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v156 = &v123 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v158 = &v123 - v14;
  v15 = sub_22FCC7C84();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v148 = &v123 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8158, &qword_22FCD4A80);
  MEMORY[0x28223BE20](v19 - 8, v20);
  v147 = &v123 - v21;
  v22 = sub_22FCC7B14();
  v23 = *(v22 - 8);
  v152 = v22;
  v153 = v23;
  MEMORY[0x28223BE20](v22, v24);
  MEMORY[0x28223BE20](v25, v26);
  MEMORY[0x28223BE20](v28, &v123 - v27);
  MEMORY[0x28223BE20](v29, v30);
  MEMORY[0x28223BE20](v31, v32);
  MEMORY[0x28223BE20](v33, v34);
  *&v43 = MEMORY[0x28223BE20](&v123 - v35, v36).n128_u64[0];
  v45 = &v123 - v44;
  v46 = a2[1];
  if (!v46)
  {
    return 0;
  }

  v141 = v16;
  v47 = *a2;
  v48 = HIBYTE(v46) & 0xF;
  if ((v46 & 0x2000000000000000) == 0)
  {
    v48 = *a2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v48)
  {
    return 0;
  }

  v155 = v5;
  v145 = v39;
  v131 = v38;
  v149 = v37;
  v138 = v42;
  v135 = v41;
  v134 = v15;
  v146 = v40;
  v137 = v8;
  v50 = a2[2];
  v49 = a2[3];
  v51 = a2[5];
  v139 = a2[4];
  v142 = v51;
  v130 = a2[6];
  v132 = *(a2 + 56);
  v52 = [a1 string];
  v53 = sub_22FCC8A84();
  v55 = v54;

  v160 = v53;
  v161 = v55;
  v56 = v49;

  MEMORY[0x231907FA0](v47, v46);

  v151 = sub_22FCC8A54();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8160, &qword_22FCD4A88);
  v57 = *(v9 + 72);
  v58 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v136 = swift_allocObject();
  v59 = v136 + v58;
  v60 = *MEMORY[0x277D3C4B8];
  v61 = v152;
  v62 = v153 + 104;
  v140 = *(v153 + 104);
  v140(v45, v60, v152);
  v154 = v4;
  v133 = v62;
  v143 = v47;
  v144 = v46;
  v157 = v57;
  v150 = v59;
  if (!v56)
  {
    goto LABEL_13;
  }

  v63 = HIBYTE(v56) & 0xF;
  if ((v56 & 0x2000000000000000) == 0)
  {
    v63 = v50 & 0xFFFFFFFFFFFFLL;
  }

  if (v63)
  {

    v64 = sub_22FCC8A54();
    v65 = v50;
    v66 = [v151 rangeOfString_];
    v128 = v67;

    v68 = sub_22FCC6334();
    v127 = v66;
    v69 = v66 == v68;
    v70 = v56;
    v71 = v156;
    if (v69)
    {

      v145 = *(v155 + 56);
      v145(v59, 1, 1, v4);
      v72 = v45;
      v73 = *(v153 + 8);
      v73(v72, v61);
      v57 = v157;
    }

    else
    {
      v125 = v65;
      v126 = v70;
      v76 = v153;
      v77 = v145;
      v124 = *(v153 + 16);
      v124(v145, v45, v61);
      v78 = v138;
      sub_22FCC7AF4();
      v79 = MEMORY[0x231906F30](v77, v78);
      v129 = *(v76 + 8);
      v129(v78, v61);
      if (v79)
      {
        v80 = v129;
        v129(v77, v61);

        v81 = *(v155 + 56);
        v59 = v150;
        v82 = v150;
        v83 = 1;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8168, &qword_22FCD4A90);
        sub_22FCC7854();
        *(swift_allocObject() + 16) = xmmword_22FCD1800;
        v124(v78, v77, v61);
        v4 = v154;
        sub_22FCC7844();
        v84 = sub_22FCC8324();
        (*(*(v84 - 8) + 56))(v147, 1, 1, v84);
        (*(v141 + 104))(v148, *MEMORY[0x277D3C598], v134);
        v59 = v150;
        sub_22FCC6EB4();
        v80 = v129;
        v129(v77, v61);
        v81 = *(v155 + 56);
        v82 = v59;
        v83 = 0;
      }

      v145 = v81;
      v81(v82, v83, 1, v4);
      v80(v45, v61);
      v57 = v157;
      v73 = v80;
    }
  }

  else
  {
LABEL_13:
    v145 = *(v155 + 56);
    v145(v59, 1, 1, v4);
    v75 = v45;
    v73 = *(v153 + 8);
    v73(v75, v61);
    v71 = v156;
  }

  v140(v149, *MEMORY[0x277D3C4A8], v61);
  if (!v142)
  {
    goto LABEL_24;
  }

  v85 = HIBYTE(v142) & 0xF;
  if ((v142 & 0x2000000000000000) == 0)
  {
    v85 = v139 & 0xFFFFFFFFFFFFLL;
  }

  if (!v85)
  {
    goto LABEL_24;
  }

  v86 = sub_22FCC8A54();
  v87 = [v151 rangeOfString_];
  v128 = v88;

  if (v87 == sub_22FCC6334())
  {

    v57 = v157;
    v59 = v150;
LABEL_24:
    v145(v59 + v57, 1, 1, v4);
    goto LABEL_25;
  }

  v126 = v87;
  v101 = v153 + 16;
  v102 = v131;
  v125 = *(v153 + 16);
  v125(v131, v149, v61);
  v103 = v138;
  sub_22FCC7AF4();
  v104 = MEMORY[0x231906F30](v102, v103);
  v129 = v73;
  v127 = (v101 - 8);
  v73(v103, v61);
  if (v104)
  {
    v61 = v152;
    v73 = v129;
    v129(v102, v152);

    v57 = v157;
    v59 = v150;
    v105 = v150 + v157;
    v106 = 1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8168, &qword_22FCD4A90);
    sub_22FCC7854();
    *(swift_allocObject() + 16) = xmmword_22FCD1800;
    v120 = v152;
    (v125)(v103, v102);
    v4 = v154;
    sub_22FCC7844();
    v121 = sub_22FCC8324();
    (*(*(v121 - 8) + 56))(v147, 1, 1, v121);
    (*(v141 + 104))(v148, *MEMORY[0x277D3C598], v134);
    v57 = v157;
    v59 = v150;
    sub_22FCC6EB4();
    v61 = v120;
    v122 = v120;
    v73 = v129;
    v129(v102, v122);
    v105 = v59 + v57;
    v106 = 0;
  }

  v145(v105, v106, 1, v4);
LABEL_25:
  v73(v149, v61);

  v89 = v146;
  sub_22FCC7AF4();
  v90 = v59 + 2 * v57;

  v91 = sub_22FCC8A54();
  v92 = [v151 rangeOfString_];
  v142 = v93;

  v94 = sub_22FCC6334();
  v149 = v92;
  if (v92 == v94)
  {

    v95 = v155;
    v145(v90, 1, 1, v4);
    goto LABEL_34;
  }

  v139 = v90;
  v96 = *(v153 + 16);
  v97 = v135;
  v96(v135, v89, v61);
  v98 = v73;
  v99 = v138;
  sub_22FCC7AF4();
  v100 = MEMORY[0x231906F30](v97, v99);
  v98(v99, v61);
  if (v100)
  {
    if (v132)
    {
      v73 = v98;
      v98(v135, v61);

      v95 = v155;
      v145(v139, 1, 1, v4);
      v71 = v156;
      goto LABEL_34;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8170, &qword_22FCD4A98);
    v107 = swift_allocObject();
    *(v107 + 16) = xmmword_22FCD1800;
    *(v107 + 32) = v130;
    v97 = v135;
    v98(v135, v61);
    v99 = v138;
    *v138 = v107;
    v140(v99, *MEMORY[0x277D3C4E0], v61);
    (*(v153 + 32))(v97, v99, v61);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8168, &qword_22FCD4A90);
  sub_22FCC7854();
  *(swift_allocObject() + 16) = xmmword_22FCD1800;
  v96(v99, v97, v152);
  v61 = v152;
  sub_22FCC7844();
  v108 = sub_22FCC8324();
  (*(*(v108 - 8) + 56))(v147, 1, 1, v108);
  (*(v141 + 104))(v148, *MEMORY[0x277D3C598], v134);
  v109 = v139;
  sub_22FCC6EB4();
  v98(v97, v61);
  v95 = v155;
  v145(v109, 0, 1, v4);
  v71 = v156;
  v73 = v98;
LABEL_34:
  v73(v146, v61);
  v110 = (v95 + 48);
  v111 = (v95 + 32);
  v112 = MEMORY[0x277D84F90];
  v113 = 3;
  v114 = v150;
  do
  {
    v115 = v158;
    sub_22FA4FAA4(v114, v158, &qword_27DAD8150, &qword_22FCD4A78);
    sub_22FA4F224(v115, v71, &qword_27DAD8150, &qword_22FCD4A78);
    if ((*v110)(v71, 1, v4) == 1)
    {
      sub_22FA2B420(v71, &qword_27DAD8150, &qword_22FCD4A78);
    }

    else
    {
      v116 = *v111;
      (*v111)(v159, v71, v4);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v112 = sub_22FAC1E40(0, v112[2] + 1, 1, v112, &qword_27DAD7870, &unk_22FCD4AA0, MEMORY[0x277D3BF48]);
      }

      v118 = v112[2];
      v117 = v112[3];
      if (v118 >= v117 >> 1)
      {
        v112 = sub_22FAC1E40((v117 > 1), v118 + 1, 1, v112, &qword_27DAD7870, &unk_22FCD4AA0, MEMORY[0x277D3BF48]);
      }

      v112[2] = v118 + 1;
      v119 = v112 + ((*(v155 + 80) + 32) & ~*(v155 + 80)) + *(v155 + 72) * v118;
      v4 = v154;
      v116(v119, v159, v154);
      v71 = v156;
    }

    v114 += v157;
    --v113;
  }

  while (v113);

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v143;
}

uint64_t sub_22FAC4A08(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = 0;
  v5 = *(sub_22FCC7514() - 8);
  v6 = *(v5 + 72);
  v7 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v12 = a2;
  v11 = v7;
  do
  {
    v8 = *(a2 + 16) + 1;
    v9 = v7;
    while (--v8)
    {
      sub_22FAC2F3C(&qword_27DAD8038, MEMORY[0x277D3C160], MEMORY[0x277D3C170]);
      v9 += v6;
      if (sub_22FCC8A44())
      {
        return v4;
      }
    }

    ++v4;
    a2 = v12;
    v7 = v11;
  }

  while (v4 != v2);
  return 0;
}

uint64_t sub_22FAC4B8C(uint64_t *a1, uint64_t a2)
{
  v5 = sub_22FCC7514();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v38 - v12;
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v38 - v16;
  v18 = *a1;
  result = sub_22FAC4A08(*a1, a2);
  if (!v2)
  {
    if (v20)
    {
      return v18[2];
    }

    else
    {
      v38 = 0;
      v39 = a1;
      v42 = v9;
      v43 = v13;
      v46 = v6;
      v50 = result;
      v21 = result + 1;
      if (!__OFADD__(result, 1))
      {
        v49 = v46 + 16;
        v44 = a2;
        v45 = (v46 + 8);
        v40 = (v46 + 40);
        while (1)
        {
LABEL_7:
          v23 = v18[2];
          if (v21 == v23)
          {
            return v50;
          }

          if (v21 >= v23)
          {
            break;
          }

          v24 = (*(v46 + 80) + 32) & ~*(v46 + 80);
          v52 = v18;
          v25 = v18 + v24;
          v26 = *(v46 + 72);
          v27 = *(v46 + 16);
          v51 = v26 * v21;
          v47 = v25;
          v48 = v27;
          v27(v17, &v25[v26 * v21], v5);
          v28 = a2 + v24;
          v29 = *(a2 + 16) + 1;
          while (--v29)
          {
            sub_22FAC2F3C(&qword_27DAD8038, MEMORY[0x277D3C160], MEMORY[0x277D3C170]);
            v28 += v26;
            if (sub_22FCC8A44())
            {
              result = (*v45)(v17, v5);
              a2 = v44;
              v18 = v52;
              v22 = __OFADD__(v21++, 1);
              if (v22)
              {
                goto LABEL_29;
              }

              goto LABEL_7;
            }
          }

          result = (*v45)(v17, v5);
          v30 = v50;
          if (v50 == v21)
          {
            a2 = v44;
            v18 = v52;
          }

          else
          {
            if ((v50 & 0x8000000000000000) != 0)
            {
              goto LABEL_31;
            }

            v31 = v52[2];
            if (v50 >= v31)
            {
              goto LABEL_32;
            }

            v32 = v26 * v50;
            v34 = v47;
            v33 = v48;
            v41 = v32;
            result = (v48)(v43, &v47[v32], v5);
            if (v21 >= v31)
            {
              goto LABEL_33;
            }

            v33(v42, &v34[v51], v5);
            v18 = v52;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v18 = sub_22FB07320(v18);
            }

            a2 = v44;
            v35 = v18 + v24;
            v36 = *v40;
            result = (*v40)(&v35[v41], v42, v5);
            if (v21 >= v18[2])
            {
              goto LABEL_34;
            }

            result = v36(&v35[v51], v43, v5);
            *v39 = v18;
            v30 = v50;
          }

          v22 = __OFADD__(v30, 1);
          v37 = v30 + 1;
          if (v22)
          {
            goto LABEL_30;
          }

          v50 = v37;
          v22 = __OFADD__(v21++, 1);
          if (v22)
          {
            goto LABEL_29;
          }
        }

        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
      }

      __break(1u);
    }
  }

  return result;
}

unint64_t sub_22FAC4F38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = sub_22FCC7514();
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_22FAC5080(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_22FAC1E40(isUniquelyReferenced_nonNull_native, v10, 1, v4, &qword_27DAD7878, &qword_22FCD3538, MEMORY[0x277D3C160]);
    *v2 = v4;
  }

  result = sub_22FAC4F38(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_22FAC5164(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

double sub_22FAC51CC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

double sub_22FAC51D8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_22FAC5254(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22FAC528C(uint64_t a1)
{
  result = sub_22FCC8684();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for PromptSuggestionFetcher.Configuration(319);
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_22FAC53C8(uint64_t a1)
{
  result = sub_22FCC7E14();
  if (v2 <= 0x3F)
  {
    result = sub_22FAC5504(319, &qword_27DAD8090, &protocol descriptor for PromptSuggestionValidating);
    if (v3 <= 0x3F)
    {
      result = sub_22FAC5504(319, &qword_27DAD8098, MEMORY[0x277D3C5B8]);
      if (v4 <= 0x3F)
      {
        result = sub_22FA3A77C(319, &qword_27DAD80A0, 0x277D3C790);
        if (v5 <= 0x3F)
        {
          result = sub_22FAC5504(319, &qword_27DAD80A8, &protocol descriptor for PromptLocalizing);
          if (v6 <= 0x3F)
          {
            result = sub_22FAC5504(319, &qword_27DAD80B0, &protocol descriptor for MomentContextProviding);
            if (v7 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_22FAC5504(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_22FAC5588(uint64_t a1)
{
  sub_22FAC561C(319);
  if (v1 <= 0x3F)
  {
    sub_22FCC6794();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22FAC561C(uint64_t a1)
{
  if (!qword_28147AF70)
  {
    type metadata accessor for TemplatedPrompt(255);
    v1 = sub_22FCC8CA4();
    if (!v2)
    {
      atomic_store(v1, &qword_28147AF70);
    }
  }
}

uint64_t sub_22FAC56A0()
{
  sub_22FA3A77C(0, &qword_28147ADA0, 0x277D86200);
  result = sub_22FCC91C4();
  qword_28147C960 = result;
  return result;
}

uint64_t sub_22FAC5718()
{
  v0 = sub_22FCC8684();
  __swift_allocate_value_buffer(v0, qword_28147C938);
  __swift_project_value_buffer(v0, qword_28147C938);
  if (qword_28147C958 != -1)
  {
    swift_once();
  }

  v1 = qword_28147C960;
  return sub_22FCC8694();
}

uint64_t sub_22FAC57A4()
{
  if ([*(v0 + 176) isSystemPhotoLibrary])
  {

    return sub_22FAC6BD0();
  }

  else
  {
    if (qword_28147C930 != -1)
    {
      swift_once();
    }

    v2 = sub_22FCC8684();
    __swift_project_value_buffer(v2, qword_28147C938);
    v3 = sub_22FCC8664();
    v4 = sub_22FCC8EF4();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_22FA28000, v3, v4, "Task will not run: Task can only run on system library", v5, 2u);
      MEMORY[0x23190A000](v5, -1, -1);
    }

    return 0;
  }
}

uint64_t sub_22FAC58B4(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  v4 = sub_22FCC7614();
  v3[15] = v4;
  v3[16] = *(v4 - 8);
  v3[17] = swift_task_alloc();
  v5 = sub_22FCC8494();
  v3[18] = v5;
  v3[19] = *(v5 - 8);
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FAC59E0, 0, 0);
}

uint64_t sub_22FAC59E0()
{
  if (qword_28147C958 != -1)
  {
    swift_once();
  }

  v1 = v0[21];
  v12 = v0[20];
  v2 = v0[18];
  v3 = v0[19];
  v4 = v0[14];
  v5 = qword_28147C960;
  sub_22FCC76D4();
  swift_allocObject();
  v6 = v5;
  v0[22] = sub_22FCC76C4();

  sub_22FCC84A4();
  v7 = *(v4 + 184);
  sub_22FAC67AC();

  v8 = v7;
  sub_22FCC75F4();
  (*(v3 + 32))(v12, v1, v2);
  v9 = swift_task_alloc();
  v0[23] = v9;
  *v9 = v0;
  v9[1] = sub_22FAC5BA4;
  v10 = v0[20];

  return MEMORY[0x28219C090](v10);
}

uint64_t sub_22FAC5BA4(uint64_t a1, uint64_t a2)
{
  v5 = *v3;
  v5[24] = a1;
  v5[25] = v2;

  if (v2)
  {
    v6 = sub_22FAC5F14;
  }

  else
  {
    v5[26] = a2;
    v6 = sub_22FAC5CCC;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_22FAC5CCC()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 112);
  *(v2 + 200) = *(v0 + 192);
  *(v2 + 208) = v1;
  sub_22FA2E6E4(v2 + 136, v0 + 56);
  if (*(v0 + 80))
  {
    v3 = *(v0 + 192);
    v14 = *(v0 + 128);
    v4 = *(v0 + 112);
    v15 = *(v0 + 120);
    v16 = *(v0 + 136);
    sub_22FA2D89C((v0 + 56), v0 + 16);
    v5 = *(v0 + 40);
    v6 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v5);
    sub_22FCC9384();
    v7 = *(v4 + 64);
    v8 = *(v4 + 72);

    MEMORY[0x231907FA0](0xD00000000000001DLL, 0x800000022FCE2250);
    (*(v6 + 16))(v3, v7, v8, v5, v6);

    v9 = *(v0 + 40);
    v10 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v9);
    v11 = *(v2 + 208);

    MEMORY[0x231907FA0](0x67696C686769482ELL, 0xEB00000000737468);
    (*(v10 + 16))(v11, v7, v8, v9, v10);

    (*(v14 + 8))(v16, v15);
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  }

  else
  {
    (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));
    sub_22FA518B4(v0 + 56);
  }

  sub_22FCC76B4();

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_22FAC5F14()
{
  (*(v0[16] + 8))(v0[17], v0[15]);
  sub_22FCC76B4();

  v1 = v0[1];

  return v1();
}

uint64_t sub_22FAC5FE0()
{
  v1 = *(v0 + 16);
  if (*(v1 + 216) != 1)
  {
    return (*(v0 + 8))(0);
  }

  if (*(v1 + 200) <= 0)
  {
    return (*(v0 + 8))(*(v1 + 208) > 0);
  }

  return (*(v0 + 8))(1);
}

uint64_t sub_22FAC604C()
{
  v1 = *(v0 + 16);
  if (*(v1 + 216))
  {
    return (*(v0 + 8))(0);
  }

  if (*(v1 + 200) <= 0)
  {
    return (*(v0 + 8))(*(v1 + 208) > 0);
  }

  return (*(v0 + 8))(1);
}

uint64_t sub_22FAC6094()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  sub_22FA518B4(v0 + 136);

  return v0;
}

uint64_t sub_22FAC60FC()
{
  sub_22FAC6094();

  return swift_deallocClassInstance();
}

uint64_t sub_22FAC618C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_22FA2C030;

  return sub_22FAC58B4(a2, a3);
}

uint64_t sub_22FAC6234()
{
  v0 = sub_22FCC77B4();
  v1 = *(v0 - 8);
  v3 = MEMORY[0x28223BE20](v0, v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v5, *MEMORY[0x277D3C260], v0, v3);
  v6 = sub_22FCC7794();
  (*(v1 + 8))(v5, v0);
  return v6;
}

uint64_t sub_22FAC6324()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22FA8E164;

  return sub_22FAC5FC0();
}

uint64_t sub_22FAC63B4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22FA4C64C;

  return sub_22FAC602C();
}

uint64_t sub_22FAC6444(uint64_t result)
{
  if (result)
  {

    MEMORY[0x231907FA0](0x6375747320736920, 0xE90000000000006BLL);
    result = sub_22FCC94D4();
    __break(1u);
  }

  return result;
}

uint64_t sub_22FAC64C8()
{
  v0 = sub_22FCC8684();
  __swift_allocate_value_buffer(v0, qword_28147F5D0);
  __swift_project_value_buffer(v0, qword_28147F5D0);
  return sub_22FCC8674();
}

void sub_22FAC6548(void *a1, uint64_t a2)
{
  v4[4] = sub_22FAC6F34;
  v4[5] = a2;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 1107296256;
  v4[2] = sub_22FAC66B4;
  v4[3] = &block_descriptor_11;
  v3 = _Block_copy(v4);

  [a1 enumeratePersonNodesIncludingMe:1 withBlock:v3];
  _Block_release(v3);
}

double sub_22FAC6614(void *a1, uint64_t a2, uint64_t a3)
{
  if ([a1 isMeNode])
  {
    v6 = [a1 localIdentifier];
    if (v6)
    {
      v7 = v6;
      v8 = sub_22FCC8A84();
      v10 = v9;
    }

    else
    {
      v8 = 0;
      v10 = 0;
    }

    swift_beginAccess();
    *(a3 + 16) = v8;
    *(a3 + 24) = v10;
  }

  return result;
}

void sub_22FAC66B4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_22FAC6728(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = sub_22FAC6E90(&qword_27DAD8198, a2, type metadata accessor for GyroPosterSuggestionGenerationTask, &unk_22FCD4C50);
  result = sub_22FAC6E90(&qword_27DAD81A0, v3, type metadata accessor for GyroPosterSuggestionGenerationTask, &unk_22FCD4C28);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_22FAC67AC()
{
  result = qword_27DAD81A8;
  if (!qword_27DAD81A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAD81A8);
  }

  return result;
}

uint64_t sub_22FAC6800()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  sub_22FCC9124();
  if (qword_27DAD6E88 != -1)
  {
    swift_once();
  }

  v1 = sub_22FCC8684();
  __swift_project_value_buffer(v1, qword_28147F5D0);

  v2 = sub_22FCC8664();
  v3 = sub_22FCC8F34();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11[0] = v5;
    *v4 = 136315138;
    swift_beginAccess();
    v6 = *(v0 + 24);
    if (v6)
    {
      v7 = *(v0 + 16);
    }

    else
    {
      v6 = 0xE300000000000000;
      v7 = 7104878;
    }

    v8 = sub_22FA2F600(v7, v6, v11);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_22FA28000, v2, v3, "Found Me Person Local Identifier: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x23190A000](v5, -1, -1);
    MEMORY[0x23190A000](v4, -1, -1);
  }

  else
  {
  }

  swift_beginAccess();
  v9 = *(v0 + 16);

  return v9;
}

uint64_t sub_22FAC6A18(uint64_t a1, id a2)
{
  if ([a2 isReady])
  {
    v4 = [a2 workingContext];
    v5 = sub_22FAC6800();
    if (v6)
    {
      v7 = v5;
      v8 = v6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD73D8, &unk_22FCD4850);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_22FCD1800;
      *(inited + 32) = v7;
      v10 = inited + 32;
      *(inited + 40) = v8;
      sub_22FAA9C74(inited);
      swift_setDeallocating();
      sub_22FAC6ED8(v10);
    }
  }

  else
  {
    if (qword_27DAD6E88 != -1)
    {
      swift_once();
    }

    v11 = sub_22FCC8684();
    __swift_project_value_buffer(v11, qword_28147F5D0);
    v12 = sub_22FCC8664();
    v13 = sub_22FCC8F14();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_22FA28000, v12, v13, "Graph is not ready, falling back to graph-free curation", v14, 2u);
      MEMORY[0x23190A000](v14, -1, -1);
    }
  }

  return a1;
}

uint64_t sub_22FAC6BD0()
{
  if ((PLIsAlchemistAllowed() & 1) == 0)
  {
    if (qword_28147C930 != -1)
    {
      swift_once();
    }

    v3 = sub_22FCC8684();
    __swift_project_value_buffer(v3, qword_28147C938);
    v4 = sub_22FCC8664();
    v5 = sub_22FCC8EF4();
    if (!os_log_type_enabled(v4, v5))
    {
      goto LABEL_18;
    }

    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = "Alchemist has been disabled from settings";
    goto LABEL_17;
  }

  v0 = sub_22FCC6DE4();
  v10[3] = v0;
  v10[4] = sub_22FAC6E90(qword_28147B080, 255, MEMORY[0x277D3A838], MEMORY[0x277D3A7F0]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10);
  (*(*(v0 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D3A7F8], v0);
  LOBYTE(v0) = sub_22FCC6C74();
  __swift_destroy_boxed_opaque_existential_0(v10);
  if ((v0 & 1) == 0)
  {
    if (qword_28147C930 != -1)
    {
      swift_once();
    }

    v8 = sub_22FCC8684();
    __swift_project_value_buffer(v8, qword_28147C938);
    v4 = sub_22FCC8664();
    v5 = sub_22FCC8EF4();
    if (!os_log_type_enabled(v4, v5))
    {
      goto LABEL_18;
    }

    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = "Task will not run: FF Photos/GyroPoster is not enabled";
    goto LABEL_17;
  }

  if (PFPosterDeviceSupportsSpatialPhoto())
  {
    return 1;
  }

  if (qword_28147C930 != -1)
  {
    swift_once();
  }

  v9 = sub_22FCC8684();
  __swift_project_value_buffer(v9, qword_28147C938);
  v4 = sub_22FCC8664();
  v5 = sub_22FCC8EF4();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = "Task will not run: GyroPoster is not supported on this device";
LABEL_17:
    _os_log_impl(&dword_22FA28000, v4, v5, v7, v6, 2u);
    MEMORY[0x23190A000](v6, -1, -1);
  }

LABEL_18:

  return 0;
}

uint64_t sub_22FAC6E90(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t type metadata accessor for Spatial3DFeaturedPhotosFastPassActivity(uint64_t a1)
{
  result = qword_28147C220;
  if (!qword_28147C220)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_22FAC6FC4()
{
  result = qword_281480230;
  if (!qword_281480230)
  {
    type metadata accessor for MomentGraphWorker();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281480230);
  }

  return result;
}

uint64_t sub_22FAC701C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for Spatial3DFeaturedPhotosFastPassActivityTaskSource();
  v2 = swift_allocObject();
  result = swift_defaultActor_initialize();
  *a1 = v2;
  return result;
}

void sub_22FAC7058(uint64_t a1)
{
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8238, &unk_22FCD4FF0);
  MEMORY[0x28223BE20](v49, v2);
  v48 = (&v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4, v5);
  v47 = &v44 - v6;
  v50 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7308, &qword_22FCD1C40);
    v7 = sub_22FCC9524();
  }

  else
  {
    v7 = MEMORY[0x277D84F98];
  }

  v8 = v50 + 64;
  v9 = 1 << *(v50 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v50 + 64);
  v12 = (v9 + 63) >> 6;
  v44 = v7 + 64;

  v13 = 0;
  v46 = v7;
  v45 = v8;
  while (v11)
  {
    v17 = v13;
LABEL_14:
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = v18 | (v17 << 6);
    v20 = *(v50 + 56);
    v21 = (*(v50 + 48) + 16 * v19);
    v23 = *v21;
    v51 = v21[1];
    v22 = v51;
    v24 = sub_22FCC8874();
    v25 = *(v24 - 8);
    v26 = v20 + *(v25 + 72) * v19;
    v27 = v49;
    v28 = v47;
    (*(v25 + 16))(&v47[*(v49 + 48)], v26, v24);
    *v28 = v23;
    v28[1] = v22;
    v29 = v28;
    v30 = v48;
    sub_22FACAFC0(v29, v48);
    v31 = *(v27 + 48);
    v32 = *v30;
    v33 = v30[1];
    v53 = v24;
    v54 = MEMORY[0x277D72A68];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v52);
    (*(v25 + 32))(boxed_opaque_existential_1, v30 + v31, v24);
    sub_22FA2CF78(&v52, v56);
    v35 = v32;
    sub_22FA2CF78(v56, v57);
    sub_22FA2CF78(v57, &v55);

    v36 = v32;
    v37 = v46;
    v38 = sub_22FA2DB54(v36, v33);
    if (v39)
    {
      v14 = (v37[6] + 16 * v38);
      *v14 = v35;
      v14[1] = v33;
      v15 = v38;

      v16 = (v37[7] + 40 * v15);
      __swift_destroy_boxed_opaque_existential_0(v16);
      sub_22FA2CF78(&v55, v16);
    }

    else
    {
      if (v37[2] >= v37[3])
      {
        goto LABEL_20;
      }

      *(v44 + ((v38 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v38;
      v40 = (v37[6] + 16 * v38);
      *v40 = v35;
      v40[1] = v33;
      sub_22FA2CF78(&v55, v37[7] + 40 * v38);
      v41 = v37[2];
      v42 = __OFADD__(v41, 1);
      v43 = v41 + 1;
      if (v42)
      {
        goto LABEL_21;
      }

      v37[2] = v43;
    }

    v13 = v17;
    v8 = v45;
  }

  while (1)
  {
    v17 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v17 >= v12)
    {

      return;
    }

    v11 = *(v8 + 8 * v17);
    ++v13;
    if (v11)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_22FAC7414(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD72D8, &qword_22FCD1C10);
    v2 = sub_22FCC9524();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v8 = 0;
  while (v5)
  {
LABEL_15:
    v11 = (v8 << 9) | (8 * __clz(__rbit64(v5)));
    v12 = *(*(a1 + 48) + v11);
    v13 = *(*(a1 + 56) + v11);
    sub_22FA3A77C(0, &qword_28147AEE8, 0x277CF1B40);
    v14 = v13;
    swift_dynamicCast();
    sub_22FA32554((v23 + 8), v24);
    sub_22FA32554(v24, v23);
    v15 = sub_22FCC9834();
    v16 = -1 << *(v2 + 32);
    v17 = v15 & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v7 + 8 * (v17 >> 6))) == 0)
    {
      v19 = 0;
      v20 = (63 - v16) >> 6;
      while (++v18 != v20 || (v19 & 1) == 0)
      {
        v21 = v18 == v20;
        if (v18 == v20)
        {
          v18 = 0;
        }

        v19 |= v21;
        v22 = *(v7 + 8 * v18);
        if (v22 != -1)
        {
          v9 = __clz(__rbit64(~v22)) + (v18 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v17) & ~*(v7 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v7 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v5 &= v5 - 1;
    *(*(v2 + 48) + 8 * v9) = v12;
    sub_22FA32554(v23, (*(v2 + 56) + 32 * v9));
    ++*(v2 + 16);
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v8;
    if (v5)
    {
      v8 = v10;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_22FAC7684(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD72D8, &qword_22FCD1C10);
    v2 = sub_22FCC9524();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v8 = 0;
  while (v5)
  {
LABEL_15:
    v11 = (v8 << 9) | (8 * __clz(__rbit64(v5)));
    v12 = *(*(a1 + 48) + v11);
    v13 = *(*(a1 + 56) + v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8230, &qword_22FCD4FE8);
    swift_dynamicCast();
    sub_22FA32554((v22 + 8), v23);
    sub_22FA32554(v23, v22);
    v14 = sub_22FCC9834();
    v15 = -1 << *(v2 + 32);
    v16 = v14 & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v7 + 8 * (v16 >> 6))) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *(v7 + 8 * v17);
        if (v21 != -1)
        {
          v9 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v16) & ~*(v7 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v7 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v5 &= v5 - 1;
    *(*(v2 + 48) + 8 * v9) = v12;
    sub_22FA32554(v22, (*(v2 + 56) + 32 * v9));
    ++*(v2 + 16);
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v8;
    if (v5)
    {
      v8 = v10;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_22FAC78E8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8228, &qword_22FCD4FE0);
    v2 = sub_22FCC9524();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v8 = 0;
  while (v5)
  {
LABEL_15:
    v12 = __clz(__rbit64(v5)) | (v8 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    sub_22FA2F7D8(*(a1 + 56) + 32 * v12, v35);
    *&v34 = v15;
    *(&v34 + 1) = v14;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_22FA32554(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_22FA32554(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_22FA32554(v31, v32);
    v16 = sub_22FCC9304();
    v17 = -1 << *(v2 + 32);
    v18 = v16 & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v9 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v10 = *(v2 + 48) + 40 * v9;
    *v10 = v24;
    *(v10 + 16) = v25;
    *(v10 + 32) = v26;
    sub_22FA32554(v32, (*(v2 + 56) + 32 * v9));
    ++*(v2 + 16);
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      v8 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}