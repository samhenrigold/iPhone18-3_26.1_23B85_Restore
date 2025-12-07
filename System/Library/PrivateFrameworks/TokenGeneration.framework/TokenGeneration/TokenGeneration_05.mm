uint64_t closure #1 in TokenGenerator._streamCompletion<A>(configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[555] = a5;
  v5[554] = a4;
  v5[553] = a3;
  v5[552] = a2;
  v5[551] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s29GenerativeFunctionsFoundation6SchemaVSgMd, &_s29GenerativeFunctionsFoundation6SchemaVSgMR);
  v5[556] = swift_task_alloc();
  v5[557] = *(a4 - 8);
  v5[558] = swift_task_alloc();
  v5[559] = swift_task_alloc();
  type metadata accessor for TokenGenerator.PromptInputFromGenerativeModel(0);
  v5[560] = swift_task_alloc();
  type metadata accessor for RunnableConfigurationStorage();
  v5[561] = swift_task_alloc();
  type metadata accessor for OverridableConfigurationStorage();
  v5[562] = swift_task_alloc();
  v7 = type metadata accessor for CompletionPrompt();
  v5[563] = v7;
  v5[564] = *(v7 - 8);
  v5[565] = swift_task_alloc();
  v8 = type metadata accessor for StringResponseSanitizerRunnerConfiguration();
  v5[566] = v8;
  v5[567] = *(v8 - 8);
  v5[568] = swift_task_alloc();
  v5[569] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16GenerativeModels33StringResponseSanitizerWithRunnerVSgMd, &_s16GenerativeModels33StringResponseSanitizerWithRunnerVSgMR);
  v5[570] = swift_task_alloc();
  v9 = type metadata accessor for StringResponseSanitizerWithRunner();
  v5[571] = v9;
  v5[572] = *(v9 - 8);
  v5[573] = swift_task_alloc();
  v5[574] = swift_task_alloc();
  v10 = type metadata accessor for UUID();
  v5[575] = v10;
  v5[576] = *(v10 - 8);
  v5[577] = swift_task_alloc();
  v5[578] = swift_task_alloc();
  v11 = type metadata accessor for StringRenderedPromptSanitizerRunnerConfiguration();
  v5[579] = v11;
  v5[580] = *(v11 - 8);
  v5[581] = swift_task_alloc();
  v5[582] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16GenerativeModels39StringRenderedPromptSanitizerWithRunnerVSgMd, &_s16GenerativeModels39StringRenderedPromptSanitizerWithRunnerVSgMR);
  v5[583] = swift_task_alloc();
  v12 = type metadata accessor for StringRenderedPromptSanitizerWithRunner();
  v5[584] = v12;
  v5[585] = *(v12 - 8);
  v5[586] = swift_task_alloc();
  v5[587] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
  v5[588] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMR);
  v5[589] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
  v5[590] = swift_task_alloc();
  v5[591] = swift_task_alloc();
  v13 = type metadata accessor for GenerativeFunctionInstrumenter();
  v5[592] = v13;
  v5[593] = *(v13 - 8);
  v5[594] = swift_task_alloc();
  v5[595] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in TokenGenerator._streamCompletion<A>(configuration:), 0, 0);
}

uint64_t closure #1 in TokenGenerator._streamCompletion<A>(configuration:)(__n128 a1)
{
  if (*(*(v1 + 4424) + 24))
  {
  }

  v2 = *(v1 + 4440);
  v3 = *(v1 + 4432);
  GenerativeConfigurationProtocol.generateGenerativeFunctionInstrumenter(useCaseIdentifier:eventReporter:)();

  GenerativeFunctionInstrumenter.executionBegin()();
  GenerativeFunctionInstrumenter.promptConstructionBegin()();
  *(v1 + 4768) = GenerativeConfigurationProtocol.documents.getter(v3, v2);
  *(v1 + 4776) = GenerativeConfigurationProtocol.tools.getter();
  GenerativeConfigurationProtocol.toolChoice.getter();
  GenerativeConfigurationProtocol.stringRenderedPromptSanitizer.getter();
  v4 = *(v1 + 4680);
  v5 = *(v1 + 4672);
  v6 = *(v1 + 4664);
  if ((*(v4 + 48))(v6, 1, v5) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v6, &_s16GenerativeModels39StringRenderedPromptSanitizerWithRunnerVSgMd, &_s16GenerativeModels39StringRenderedPromptSanitizerWithRunnerVSgMR);
    v7 = 1;
  }

  else
  {
    v8 = *(v1 + 4624);
    (*(v4 + 32))(*(v1 + 4696), v6, v5);
    GenerativeFunctionInstrumenter.userRequestIdentifier.getter();
    TokenGenerator.responseSanitizerConfiguration(userRequestIdentifier:)(v8, MEMORY[0x1E69A1568]);
    v9 = *(v1 + 4696);
    v10 = *(v1 + 4688);
    v11 = *(v1 + 4680);
    v12 = *(v1 + 4672);
    v13 = *(v1 + 4656);
    v14 = *(v1 + 4648);
    v15 = *(v1 + 4640);
    v16 = *(v1 + 4632);
    (*(*(v1 + 4608) + 8))(*(v1 + 4624), *(v1 + 4600));
    (*(v11 + 16))(v10, v9, v12);
    (*(v15 + 16))(v14, v13, v16);
    StringRenderedPromptSanitizerWithConfiguration.init(stringRenderedPromptSanitizer:configuration:)();
    (*(v15 + 8))(v13, v16);
    (*(v11 + 8))(v9, v12);
    v7 = 0;
  }

  v17 = *(v1 + 4728);
  v18 = type metadata accessor for StringRenderedPromptSanitizerWithConfiguration();
  (*(*(v18 - 8) + 56))(v17, v7, 1, v18);
  GenerativeConfigurationProtocol.stringResponseSanitizer.getter();
  v19 = *(v1 + 4576);
  v20 = *(v1 + 4568);
  v21 = *(v1 + 4560);
  if ((*(v19 + 48))(v21, 1, v20) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v21, &_s16GenerativeModels33StringResponseSanitizerWithRunnerVSgMd, &_s16GenerativeModels33StringResponseSanitizerWithRunnerVSgMR);
    v22 = 1;
  }

  else
  {
    v23 = *(v1 + 4616);
    (*(v19 + 32))(*(v1 + 4592), v21, v20);
    GenerativeFunctionInstrumenter.userRequestIdentifier.getter();
    TokenGenerator.responseSanitizerConfiguration(userRequestIdentifier:)(v23, MEMORY[0x1E69A1558]);
    v24 = *(v1 + 4592);
    v25 = *(v1 + 4584);
    v26 = *(v1 + 4576);
    v27 = *(v1 + 4568);
    v28 = *(v1 + 4552);
    v29 = *(v1 + 4544);
    v30 = *(v1 + 4536);
    v31 = *(v1 + 4528);
    (*(*(v1 + 4608) + 8))(*(v1 + 4616), *(v1 + 4600));
    (*(v26 + 16))(v25, v24, v27);
    (*(v30 + 16))(v29, v28, v31);
    StringResponseSanitizerWithConfiguration.init(stringResponseSanitizer:configuration:)();
    (*(v30 + 8))(v28, v31);
    (*(v26 + 8))(v24, v27);
    v22 = 0;
  }

  v32 = *(v1 + 4712);
  v33 = *(v1 + 4440);
  v34 = *(v1 + 4432);
  v35 = type metadata accessor for StringResponseSanitizerWithConfiguration();
  (*(*(v35 - 8) + 56))(v32, v22, 1, v35);
  *(v1 + 4784) = GenerativeConfigurationProtocol.grammar.getter(v34, v33);
  *(v1 + 4792) = v36;
  *(v1 + 4800) = GenerativeConfigurationProtocol.partialGrammar.getter(*(v1 + 4432), *(v1 + 4440));
  *(v1 + 4808) = v37;
  *(v1 + 4816) = GenerativeConfigurationProtocol.grammarIdentifier.getter(*(v1 + 4432), *(v1 + 4440));
  *(v1 + 4824) = v38;
  *(v1 + 4832) = GenerativeConfigurationProtocol.schemaIdentifier.getter(*(v1 + 4432), *(v1 + 4440));
  *(v1 + 4840) = v39;
  GenerativeConfigurationProtocol.samplingParameters.getter(*(v1 + 4432), *(v1 + 4440), v1 + 1960);
  v40 = *(v1 + 2136);
  *(v1 + 392) = *(v1 + 2120);
  *(v1 + 408) = v40;
  *(v1 + 424) = *(v1 + 2152);
  v41 = *(v1 + 2072);
  *(v1 + 328) = *(v1 + 2056);
  *(v1 + 344) = v41;
  v42 = *(v1 + 2104);
  *(v1 + 360) = *(v1 + 2088);
  *(v1 + 376) = v42;
  v43 = *(v1 + 2008);
  *(v1 + 264) = *(v1 + 1992);
  *(v1 + 280) = v43;
  v44 = *(v1 + 2040);
  *(v1 + 296) = *(v1 + 2024);
  *(v1 + 312) = v44;
  v45 = *(v1 + 1976);
  *(v1 + 232) = *(v1 + 1960);
  v46 = *(v1 + 4728);
  v47 = *(v1 + 4520);
  v60 = *(v1 + 4720);
  v61 = *(v1 + 4472);
  v48 = *(v1 + 4456);
  v49 = *(v1 + 4432);
  v50 = *(v1 + 4416);
  *(v1 + 440) = *(v1 + 2168);
  *(v1 + 248) = v45;
  dispatch thunk of GenerativeConfigurationProtocol._overridableConfigurationStorage.getter();
  dispatch thunk of GenerativeConfigurationProtocol._runnableConfigurationStorage.getter();
  CompletionPrompt.init(overridableConfigurationStorage:runnableConfigurationStorage:)();
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v46, v60, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
  v51 = swift_task_alloc();
  *(v1 + 4848) = v51;
  *(v51 + 16) = v47;
  v52 = *(v48 + 16);
  *(v1 + 4856) = v52;
  *(v1 + 4864) = (v48 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v52(v61, v50, v49);
  v53 = swift_task_alloc();
  *(v1 + 4872) = v53;
  *v53 = v1;
  v53[1] = closure #1 in TokenGenerator._streamCompletion<A>(configuration:);
  v54 = *(v1 + 4720);
  v55 = *(v1 + 4480);
  v56 = *(v1 + 4472);
  v57 = *(v1 + 4440);
  v58 = *(v1 + 4432);

  return TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPrompt:completionConfiguration:forceRenderPrompt:)(v55, v54, &async function pointer to partial apply for closure #1 in closure #1 in TokenGenerator._streamCompletion<A>(configuration:), v51, v56, 0, v58, v57);
}

uint64_t closure #1 in TokenGenerator._streamCompletion<A>(configuration:)()
{
  v2 = *v1;
  *(*v1 + 4880) = v0;

  if (v0)
  {

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v2 + 232, &_s15TokenGeneration18SamplingParametersVSgMd, &_s15TokenGeneration18SamplingParametersVSgMR);

    v3 = closure #1 in TokenGenerator._streamCompletion<A>(configuration:);
  }

  else
  {

    v3 = closure #1 in TokenGenerator._streamCompletion<A>(configuration:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = (v0 + 232);
  v2 = *(v0 + 4792);
  GenerativeFunctionInstrumenter.promptConstructionEnd()();
  GenerativeFunctionInstrumenter.inferenceBegin()();
  if (v2)
  {
    v116 = *(v0 + 4856);
    v128 = *(v0 + 4792);
    v120 = *(v0 + 4776);
    v123 = *(v0 + 4768);
    v3 = *(v0 + 4752);
    v4 = *(v0 + 4744);
    v5 = *(v0 + 4736);
    v6 = *(v0 + 4464);
    v114 = *(v0 + 4760);
    v7 = *(v0 + 4432);
    v113 = *(v0 + 4416);

    v8 = *(v0 + 408);
    *(v0 + 3200) = *(v0 + 392);
    *(v0 + 3216) = v8;
    *(v0 + 3232) = *(v0 + 424);
    v9 = *(v0 + 344);
    *(v0 + 3136) = *(v0 + 328);
    *(v0 + 3152) = v9;
    v10 = *(v0 + 376);
    *(v0 + 3168) = *(v0 + 360);
    *(v0 + 3184) = v10;
    v11 = *(v0 + 280);
    *(v0 + 3072) = *(v0 + 264);
    *(v0 + 3088) = v11;
    v12 = *(v0 + 312);
    *(v0 + 3104) = *(v0 + 296);
    *(v0 + 3120) = v12;
    v13 = *(v0 + 248);
    *(v0 + 3040) = *v1;
    *(v0 + 3248) = *(v0 + 440);
    *(v0 + 3056) = v13;
    (*(v4 + 16))(v3, v114, v5);
    v116(v6, v113, v7);
    RequestMetadata.init<A>(generativeFunctionInstrumenter:configuration:)(v3, v6, v7, (v0 + 4024));
    v14 = *(v0 + 4040);
    v15 = *(v0 + 4048);
    v16 = *(v0 + 4072);
    *(v0 + 4080) = *(v0 + 4024);
    *(v0 + 4096) = v14;
    *(v0 + 4104) = v15;
    *(v0 + 4112) = *(v0 + 4056);
    *(v0 + 4128) = v16;
    v17 = swift_task_alloc();
    *(v0 + 4888) = v17;
    *v17 = v0;
    v17[1] = closure #1 in TokenGenerator._streamCompletion<A>(configuration:);
    if (v120)
    {
      v18 = v120;
    }

    else
    {
      v18 = MEMORY[0x1E69E7CC0];
    }

    if (v123)
    {
      v19 = v123;
    }

    else
    {
      v19 = MEMORY[0x1E69E7CC0];
    }

    v20 = *(v0 + 4784);
    v21 = *(v0 + 4704);
    v22 = *(v0 + 4480);

    return TokenGenerator.complete(promptInputFromGenerativeModel:parameters:tools:toolChoice:documents:grammar:metadata:)(v0 + 4376, v22, v0 + 3040, v18, v21, v19, v20, v128);
  }

  else
  {
    v24 = *(v0 + 4808);
    if (v24)
    {
      v125 = *(v0 + 4776);
      v129 = *(v0 + 4768);
      v115 = *(v0 + 4760);
      v25 = *(v0 + 4752);
      v26 = *(v0 + 4744);
      v27 = *(v0 + 4736);
      v28 = *(v0 + 4464);
      v117 = *(v0 + 4856);
      v29 = *(v0 + 4432);
      v30 = *(v0 + 4416);

      v31 = *(v0 + 408);
      *(v0 + 2768) = *(v0 + 392);
      *(v0 + 2784) = v31;
      *(v0 + 2800) = *(v0 + 424);
      v32 = *(v0 + 344);
      *(v0 + 2704) = *(v0 + 328);
      *(v0 + 2720) = v32;
      v33 = *(v0 + 376);
      *(v0 + 2736) = *(v0 + 360);
      *(v0 + 2752) = v33;
      v34 = *(v0 + 280);
      *(v0 + 2640) = *(v0 + 264);
      *(v0 + 2656) = v34;
      v35 = *(v0 + 312);
      *(v0 + 2672) = *(v0 + 296);
      *(v0 + 2688) = v35;
      v36 = *(v0 + 248);
      *(v0 + 2608) = *v1;
      *(v0 + 2816) = *(v0 + 440);
      *(v0 + 2624) = v36;
      (*(v26 + 16))(v25, v115, v27);
      v117(v28, v30, v29);
      RequestMetadata.init<A>(generativeFunctionInstrumenter:configuration:)(v25, v28, v29, (v0 + 3744));
      v37 = *(v0 + 3760);
      v38 = *(v0 + 3768);
      v39 = *(v0 + 3792);
      *(v0 + 3800) = *(v0 + 3744);
      *(v0 + 3816) = v37;
      *(v0 + 3824) = v38;
      *(v0 + 3832) = *(v0 + 3776);
      *(v0 + 3848) = v39;
      v40 = swift_task_alloc();
      *(v0 + 4904) = v40;
      *v40 = v0;
      v40[1] = closure #1 in TokenGenerator._streamCompletion<A>(configuration:);
      if (v125)
      {
        v41 = v125;
      }

      else
      {
        v41 = MEMORY[0x1E69E7CC0];
      }

      if (v129)
      {
        v42 = v129;
      }

      else
      {
        v42 = MEMORY[0x1E69E7CC0];
      }

      v43 = *(v0 + 4800);
      v44 = *(v0 + 4704);
      v45 = *(v0 + 4480);

      return TokenGenerator.complete(promptInputFromGenerativeModel:parameters:tools:toolChoice:documents:partialGrammar:metadata:)(v0 + 4344, v45, v0 + 2608, v41, v44, v42, v43, v24);
    }

    else
    {
      v46 = *(v0 + 4824);
      if (v46)
      {
        v126 = *(v0 + 4776);
        v130 = *(v0 + 4768);
        v47 = *(v0 + 4760);
        v48 = *(v0 + 4752);
        v49 = *(v0 + 4744);
        v50 = *(v0 + 4736);
        v51 = *(v0 + 4464);
        v118 = *(v0 + 4856);
        v52 = *(v0 + 4432);
        v53 = *(v0 + 4416);

        v54 = *(v0 + 408);
        *(v0 + 1904) = *(v0 + 392);
        *(v0 + 1920) = v54;
        *(v0 + 1936) = *(v0 + 424);
        v55 = *(v0 + 344);
        *(v0 + 1840) = *(v0 + 328);
        *(v0 + 1856) = v55;
        v56 = *(v0 + 376);
        *(v0 + 1872) = *(v0 + 360);
        *(v0 + 1888) = v56;
        v57 = *(v0 + 280);
        *(v0 + 1776) = *(v0 + 264);
        *(v0 + 1792) = v57;
        v58 = *(v0 + 312);
        *(v0 + 1808) = *(v0 + 296);
        *(v0 + 1824) = v58;
        v59 = *(v0 + 248);
        *(v0 + 1744) = *v1;
        *(v0 + 1952) = *(v0 + 440);
        *(v0 + 1760) = v59;
        (*(v49 + 16))(v48, v47, v50);
        v118(v51, v53, v52);
        RequestMetadata.init<A>(generativeFunctionInstrumenter:configuration:)(v48, v51, v52, (v0 + 4192));
        v60 = *(v0 + 4208);
        v61 = *(v0 + 4216);
        v62 = *(v0 + 4240);
        *(v0 + 3688) = *(v0 + 4192);
        *(v0 + 3704) = v60;
        *(v0 + 3712) = v61;
        *(v0 + 3720) = *(v0 + 4224);
        *(v0 + 3736) = v62;
        v63 = swift_task_alloc();
        *(v0 + 4920) = v63;
        *v63 = v0;
        v63[1] = closure #1 in TokenGenerator._streamCompletion<A>(configuration:);
        if (v126)
        {
          v64 = v126;
        }

        else
        {
          v64 = MEMORY[0x1E69E7CC0];
        }

        if (v130)
        {
          v65 = v130;
        }

        else
        {
          v65 = MEMORY[0x1E69E7CC0];
        }

        v66 = *(v0 + 4816);
        v67 = *(v0 + 4704);
        v68 = *(v0 + 4480);

        return TokenGenerator.complete(promptInputFromGenerativeModel:parameters:tools:toolChoice:documents:grammarIdentifier:metadata:)(v0 + 4312, v68, v0 + 1744, v64, v67, v65, v66, v46);
      }

      else
      {
        v69 = *(v0 + 4840);
        v70 = (*(v0 + 4744) + 16);
        v127 = *(v0 + 4856);
        if (v69)
        {
          v121 = *(v0 + 4776);
          v71 = *(v0 + 4760);
          v72 = *(v0 + 4752);
          v73 = *(v0 + 4736);
          v74 = *(v0 + 4464);
          v119 = *(v0 + 4768);
          v75 = *(v0 + 4432);
          v76 = *(v0 + 4416);
          v77 = *(v0 + 408);
          *(v0 + 1256) = *(v0 + 392);
          *(v0 + 1272) = v77;
          *(v0 + 1288) = *(v0 + 424);
          *(v0 + 1304) = *(v0 + 440);
          v78 = *(v0 + 344);
          *(v0 + 1192) = *(v0 + 328);
          *(v0 + 1208) = v78;
          v79 = *(v0 + 376);
          *(v0 + 1224) = *(v0 + 360);
          *(v0 + 1240) = v79;
          v80 = *(v0 + 280);
          *(v0 + 1128) = *(v0 + 264);
          *(v0 + 1144) = v80;
          v81 = *(v0 + 312);
          *(v0 + 1160) = *(v0 + 296);
          *(v0 + 1176) = v81;
          v82 = *(v0 + 248);
          *(v0 + 1096) = *v1;
          *(v0 + 1112) = v82;
          (*v70)(v72, v71, v73);
          v127(v74, v76, v75);
          RequestMetadata.init<A>(generativeFunctionInstrumenter:configuration:)(v72, v74, v75, (v0 + 3912));
          v83 = *(v0 + 3928);
          v84 = *(v0 + 3936);
          v85 = *(v0 + 3960);
          *(v0 + 3856) = *(v0 + 3912);
          *(v0 + 3872) = v83;
          *(v0 + 3880) = v84;
          *(v0 + 3888) = *(v0 + 3944);
          *(v0 + 3904) = v85;
          v86 = swift_task_alloc();
          *(v0 + 4936) = v86;
          *v86 = v0;
          v86[1] = closure #1 in TokenGenerator._streamCompletion<A>(configuration:);
          if (v121)
          {
            v87 = v121;
          }

          else
          {
            v87 = MEMORY[0x1E69E7CC0];
          }

          if (v119)
          {
            v88 = v119;
          }

          else
          {
            v88 = MEMORY[0x1E69E7CC0];
          }

          v89 = *(v0 + 4832);
          v90 = *(v0 + 4704);
          v91 = *(v0 + 4480);

          return TokenGenerator.complete(promptInputFromGenerativeModel:parameters:tools:toolChoice:documents:schemaIdentifier:metadata:)(v0 + 4280, v91, v0 + 1096, v87, v90, v88, v89, v69);
        }

        else
        {
          v122 = *(v0 + 4768);
          v124 = *(v0 + 4776);
          v92 = *(v0 + 4760);
          v93 = *(v0 + 4752);
          v94 = *(v0 + 4736);
          v95 = *(v0 + 4464);
          v96 = *(v0 + 4432);
          v97 = *(v0 + 4416);
          v98 = *(v0 + 408);
          *(v0 + 608) = *(v0 + 392);
          *(v0 + 624) = v98;
          *(v0 + 640) = *(v0 + 424);
          *(v0 + 656) = *(v0 + 440);
          v99 = *(v0 + 344);
          *(v0 + 544) = *(v0 + 328);
          *(v0 + 560) = v99;
          v100 = *(v0 + 376);
          *(v0 + 576) = *(v0 + 360);
          *(v0 + 592) = v100;
          v101 = *(v0 + 280);
          *(v0 + 480) = *(v0 + 264);
          *(v0 + 496) = v101;
          v102 = *(v0 + 312);
          *(v0 + 512) = *(v0 + 296);
          *(v0 + 528) = v102;
          v103 = *(v0 + 248);
          *(v0 + 448) = *v1;
          *(v0 + 464) = v103;
          GenerativeConfigurationProtocol.schema.getter();
          (*v70)(v93, v92, v94);
          v127(v95, v97, v96);
          RequestMetadata.init<A>(generativeFunctionInstrumenter:configuration:)(v93, v95, v96, (v0 + 4136));
          v104 = *(v0 + 4152);
          v105 = *(v0 + 4160);
          v106 = *(v0 + 4184);
          *(v0 + 3968) = *(v0 + 4136);
          *(v0 + 3984) = v104;
          *(v0 + 3992) = v105;
          *(v0 + 4000) = *(v0 + 4168);
          *(v0 + 4016) = v106;
          v107 = swift_task_alloc();
          *(v0 + 4952) = v107;
          *v107 = v0;
          v107[1] = closure #1 in TokenGenerator._streamCompletion<A>(configuration:);
          if (v124)
          {
            v108 = v124;
          }

          else
          {
            v108 = MEMORY[0x1E69E7CC0];
          }

          if (v122)
          {
            v109 = v122;
          }

          else
          {
            v109 = MEMORY[0x1E69E7CC0];
          }

          v110 = *(v0 + 4704);
          v111 = *(v0 + 4480);
          v112 = *(v0 + 4448);

          return TokenGenerator.complete(promptInputFromGenerativeModel:parameters:tools:toolChoice:documents:schema:metadata:)(v0 + 4248, v111, v0 + 448, v108, v110, v109, v112, v0 + 3968);
        }
      }
    }
  }
}

{
  v2 = *v1;
  v3 = (*v1 + 3040);
  *(*v1 + 4896) = v0;

  v4 = *(v2 + 3056);
  if (v0)
  {
    *(v2 + 2824) = *v3;
    *(v2 + 2840) = v4;
    v5 = *(v2 + 3072);
    v6 = *(v2 + 3088);
    v7 = *(v2 + 3120);
    *(v2 + 2888) = *(v2 + 3104);
    *(v2 + 2904) = v7;
    *(v2 + 2856) = v5;
    *(v2 + 2872) = v6;
    v8 = *(v2 + 3136);
    v9 = *(v2 + 3152);
    v10 = *(v2 + 3184);
    *(v2 + 2952) = *(v2 + 3168);
    *(v2 + 2968) = v10;
    *(v2 + 2920) = v8;
    *(v2 + 2936) = v9;
    v11 = *(v2 + 3200);
    v12 = *(v2 + 3216);
    v13 = *(v2 + 3232);
    *(v2 + 3032) = *(v2 + 3248);
    *(v2 + 3000) = v12;
    *(v2 + 3016) = v13;
    *(v2 + 2984) = v11;
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v2 + 2824, &_s15TokenGeneration18SamplingParametersVSgMd, &_s15TokenGeneration18SamplingParametersVSgMR);
    v14 = closure #1 in TokenGenerator._streamCompletion<A>(configuration:);
  }

  else
  {
    *(v2 + 16) = *v3;
    *(v2 + 32) = v4;
    v15 = *(v2 + 3072);
    v16 = *(v2 + 3088);
    v17 = *(v2 + 3120);
    *(v2 + 80) = *(v2 + 3104);
    *(v2 + 96) = v17;
    *(v2 + 48) = v15;
    *(v2 + 64) = v16;
    v18 = *(v2 + 3136);
    v19 = *(v2 + 3152);
    v20 = *(v2 + 3184);
    *(v2 + 144) = *(v2 + 3168);
    *(v2 + 160) = v20;
    *(v2 + 112) = v18;
    *(v2 + 128) = v19;
    v21 = *(v2 + 3200);
    v22 = *(v2 + 3216);
    v23 = *(v2 + 3232);
    *(v2 + 224) = *(v2 + 3248);
    *(v2 + 192) = v22;
    *(v2 + 208) = v23;
    *(v2 + 176) = v21;
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v2 + 16, &_s15TokenGeneration18SamplingParametersVSgMd, &_s15TokenGeneration18SamplingParametersVSgMR);
    v14 = closure #1 in TokenGenerator._streamCompletion<A>(configuration:);
  }

  return MEMORY[0x1EEE6DFA0](v14, 0, 0);
}

{
  v2 = *v1;
  v3 = (*v1 + 2608);
  *(*v1 + 4912) = v0;

  if (v0)
  {
    v4 = *v3;
    *(v2 + 3488) = *(v2 + 2624);
    *(v2 + 3472) = v4;
    v5 = *(v2 + 2640);
    v6 = *(v2 + 2656);
    v7 = *(v2 + 2672);
    *(v2 + 3552) = *(v2 + 2688);
    *(v2 + 3536) = v7;
    *(v2 + 3520) = v6;
    *(v2 + 3504) = v5;
    v8 = *(v2 + 2704);
    v9 = *(v2 + 2720);
    v10 = *(v2 + 2736);
    *(v2 + 3616) = *(v2 + 2752);
    *(v2 + 3600) = v10;
    *(v2 + 3584) = v9;
    *(v2 + 3568) = v8;
    v11 = *(v2 + 2768);
    v12 = *(v2 + 2784);
    v13 = *(v2 + 2800);
    *(v2 + 3680) = *(v2 + 2816);
    *(v2 + 3664) = v13;
    *(v2 + 3648) = v12;
    *(v2 + 3632) = v11;
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v2 + 3472, &_s15TokenGeneration18SamplingParametersVSgMd, &_s15TokenGeneration18SamplingParametersVSgMR);
    v14 = closure #1 in TokenGenerator._streamCompletion<A>(configuration:);
  }

  else
  {
    v15 = *(v2 + 2624);
    *(v2 + 3256) = *v3;
    *(v2 + 3272) = v15;
    v16 = *(v2 + 2640);
    v17 = *(v2 + 2656);
    v18 = *(v2 + 2688);
    *(v2 + 3320) = *(v2 + 2672);
    *(v2 + 3336) = v18;
    *(v2 + 3288) = v16;
    *(v2 + 3304) = v17;
    v19 = *(v2 + 2704);
    v20 = *(v2 + 2720);
    v21 = *(v2 + 2752);
    *(v2 + 3384) = *(v2 + 2736);
    *(v2 + 3400) = v21;
    *(v2 + 3352) = v19;
    *(v2 + 3368) = v20;
    v22 = *(v2 + 2768);
    v23 = *(v2 + 2784);
    v24 = *(v2 + 2800);
    *(v2 + 3464) = *(v2 + 2816);
    *(v2 + 3432) = v23;
    *(v2 + 3448) = v24;
    *(v2 + 3416) = v22;
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v2 + 3256, &_s15TokenGeneration18SamplingParametersVSgMd, &_s15TokenGeneration18SamplingParametersVSgMR);
    v14 = closure #1 in TokenGenerator._streamCompletion<A>(configuration:);
  }

  return MEMORY[0x1EEE6DFA0](v14, 0, 0);
}

{
  v2 = *v1;
  v3 = (*v1 + 1744);
  *(*v1 + 4928) = v0;

  if (v0)
  {
    v4 = *v3;
    *(v2 + 2192) = *(v2 + 1760);
    *(v2 + 2176) = v4;
    v5 = *(v2 + 1776);
    v6 = *(v2 + 1792);
    v7 = *(v2 + 1808);
    *(v2 + 2256) = *(v2 + 1824);
    *(v2 + 2240) = v7;
    *(v2 + 2224) = v6;
    *(v2 + 2208) = v5;
    v8 = *(v2 + 1840);
    v9 = *(v2 + 1856);
    v10 = *(v2 + 1872);
    *(v2 + 2320) = *(v2 + 1888);
    *(v2 + 2304) = v10;
    *(v2 + 2288) = v9;
    *(v2 + 2272) = v8;
    v11 = *(v2 + 1904);
    v12 = *(v2 + 1920);
    v13 = *(v2 + 1936);
    *(v2 + 2384) = *(v2 + 1952);
    *(v2 + 2368) = v13;
    *(v2 + 2352) = v12;
    *(v2 + 2336) = v11;
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v2 + 2176, &_s15TokenGeneration18SamplingParametersVSgMd, &_s15TokenGeneration18SamplingParametersVSgMR);
    v14 = closure #1 in TokenGenerator._streamCompletion<A>(configuration:);
  }

  else
  {
    v15 = *(v2 + 1760);
    *(v2 + 2392) = *v3;
    *(v2 + 2408) = v15;
    v16 = *(v2 + 1776);
    v17 = *(v2 + 1792);
    v18 = *(v2 + 1824);
    *(v2 + 2456) = *(v2 + 1808);
    *(v2 + 2472) = v18;
    *(v2 + 2424) = v16;
    *(v2 + 2440) = v17;
    v19 = *(v2 + 1840);
    v20 = *(v2 + 1856);
    v21 = *(v2 + 1888);
    *(v2 + 2520) = *(v2 + 1872);
    *(v2 + 2536) = v21;
    *(v2 + 2488) = v19;
    *(v2 + 2504) = v20;
    v22 = *(v2 + 1904);
    v23 = *(v2 + 1920);
    v24 = *(v2 + 1936);
    *(v2 + 2600) = *(v2 + 1952);
    *(v2 + 2568) = v23;
    *(v2 + 2584) = v24;
    *(v2 + 2552) = v22;
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v2 + 2392, &_s15TokenGeneration18SamplingParametersVSgMd, &_s15TokenGeneration18SamplingParametersVSgMR);
    v14 = closure #1 in TokenGenerator._streamCompletion<A>(configuration:);
  }

  return MEMORY[0x1EEE6DFA0](v14, 0, 0);
}

{
  v2 = *v1;
  v3 = (*v1 + 1096);
  *(*v1 + 4944) = v0;

  if (v0)
  {
    v4 = *v3;
    *(v2 + 1328) = *(v2 + 1112);
    *(v2 + 1312) = v4;
    v5 = *(v2 + 1128);
    v6 = *(v2 + 1144);
    v7 = *(v2 + 1160);
    *(v2 + 1392) = *(v2 + 1176);
    *(v2 + 1376) = v7;
    *(v2 + 1360) = v6;
    *(v2 + 1344) = v5;
    v8 = *(v2 + 1192);
    v9 = *(v2 + 1208);
    v10 = *(v2 + 1224);
    *(v2 + 1456) = *(v2 + 1240);
    *(v2 + 1440) = v10;
    *(v2 + 1424) = v9;
    *(v2 + 1408) = v8;
    v11 = *(v2 + 1256);
    v12 = *(v2 + 1272);
    v13 = *(v2 + 1288);
    *(v2 + 1520) = *(v2 + 1304);
    *(v2 + 1504) = v13;
    *(v2 + 1488) = v12;
    *(v2 + 1472) = v11;
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v2 + 1312, &_s15TokenGeneration18SamplingParametersVSgMd, &_s15TokenGeneration18SamplingParametersVSgMR);
    v14 = closure #1 in TokenGenerator._streamCompletion<A>(configuration:);
  }

  else
  {
    v15 = *(v2 + 1112);
    *(v2 + 1528) = *v3;
    *(v2 + 1544) = v15;
    v16 = *(v2 + 1128);
    v17 = *(v2 + 1144);
    v18 = *(v2 + 1176);
    *(v2 + 1592) = *(v2 + 1160);
    *(v2 + 1608) = v18;
    *(v2 + 1560) = v16;
    *(v2 + 1576) = v17;
    v19 = *(v2 + 1192);
    v20 = *(v2 + 1208);
    v21 = *(v2 + 1240);
    *(v2 + 1656) = *(v2 + 1224);
    *(v2 + 1672) = v21;
    *(v2 + 1624) = v19;
    *(v2 + 1640) = v20;
    v22 = *(v2 + 1256);
    v23 = *(v2 + 1272);
    v24 = *(v2 + 1288);
    *(v2 + 1736) = *(v2 + 1304);
    *(v2 + 1704) = v23;
    *(v2 + 1720) = v24;
    *(v2 + 1688) = v22;
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v2 + 1528, &_s15TokenGeneration18SamplingParametersVSgMd, &_s15TokenGeneration18SamplingParametersVSgMR);
    v14 = closure #1 in TokenGenerator._streamCompletion<A>(configuration:);
  }

  return MEMORY[0x1EEE6DFA0](v14, 0, 0);
}

{
  v2 = *v1;
  *(v2 + 4960) = v0;

  v3 = *(v2 + 4448);

  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v3, &_s29GenerativeFunctionsFoundation6SchemaVSgMd, &_s29GenerativeFunctionsFoundation6SchemaVSgMR);
  v4 = *(v2 + 464);
  if (v0)
  {
    *(v2 + 664) = *(v2 + 448);
    *(v2 + 680) = v4;
    v5 = *(v2 + 528);
    v7 = *(v2 + 480);
    v6 = *(v2 + 496);
    *(v2 + 728) = *(v2 + 512);
    *(v2 + 744) = v5;
    *(v2 + 696) = v7;
    *(v2 + 712) = v6;
    v8 = *(v2 + 592);
    v10 = *(v2 + 544);
    v9 = *(v2 + 560);
    *(v2 + 792) = *(v2 + 576);
    *(v2 + 808) = v8;
    *(v2 + 760) = v10;
    *(v2 + 776) = v9;
    v12 = *(v2 + 624);
    v11 = *(v2 + 640);
    v13 = *(v2 + 608);
    *(v2 + 872) = *(v2 + 656);
    *(v2 + 840) = v12;
    *(v2 + 856) = v11;
    *(v2 + 824) = v13;
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v2 + 664, &_s15TokenGeneration18SamplingParametersVSgMd, &_s15TokenGeneration18SamplingParametersVSgMR);
    v14 = closure #1 in TokenGenerator._streamCompletion<A>(configuration:);
  }

  else
  {
    *(v2 + 880) = *(v2 + 448);
    *(v2 + 896) = v4;
    v15 = *(v2 + 528);
    v17 = *(v2 + 480);
    v16 = *(v2 + 496);
    *(v2 + 944) = *(v2 + 512);
    *(v2 + 960) = v15;
    *(v2 + 912) = v17;
    *(v2 + 928) = v16;
    v18 = *(v2 + 592);
    v20 = *(v2 + 544);
    v19 = *(v2 + 560);
    *(v2 + 1008) = *(v2 + 576);
    *(v2 + 1024) = v18;
    *(v2 + 976) = v20;
    *(v2 + 992) = v19;
    v22 = *(v2 + 624);
    v21 = *(v2 + 640);
    v23 = *(v2 + 656);
    *(v2 + 1040) = *(v2 + 608);
    *(v2 + 1088) = v23;
    *(v2 + 1072) = v21;
    *(v2 + 1056) = v22;
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v2 + 880, &_s15TokenGeneration18SamplingParametersVSgMd, &_s15TokenGeneration18SamplingParametersVSgMR);
    v14 = closure #1 in TokenGenerator._streamCompletion<A>(configuration:);
  }

  return MEMORY[0x1EEE6DFA0](v14, 0, 0);
}

uint64_t closure #1 in closure #1 in TokenGenerator._streamCompletion<A>(configuration:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in TokenGenerator._streamCompletion<A>(configuration:), 0, 0);
}

uint64_t closure #1 in closure #1 in TokenGenerator._streamCompletion<A>(configuration:)()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = type metadata accessor for CompletionPrompt();
  (*(*(v3 - 8) + 16))(v1, v2, v3);
  v4 = v0[1];

  return v4();
}

uint64_t protocol witness for CompletionLanguageModelProvidingStreamable._streamCompletion<A>(configuration:) in conformance TokenGenerator(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return TokenGenerator._streamCompletion<A>(configuration:)(a1, a2, a3, a4);
}

uint64_t TokenGenerator.CompleteGenerableConfigurationInput.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  outlined init with copy of TokenGenerator.CompleteGenerableConfigurationInput(v2, v11);
  outlined init with take of any AsyncIteratorProtocol<Self.Element == A, Self.Failure == Error>(v11, v9);
  v8 = v10;
  v4 = v10;
  v5 = __swift_project_boxed_opaque_existential_1(v9, v10);
  *(a1 + 24) = v8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_1, v5, v4);

  return __swift_destroy_boxed_opaque_existential_0(v9);
}

uint64_t TokenGenerator.completeGenerable<A>(type:configurationInput:generativeFunctionInstrumenter:getStringRenderedPromptSanitizerWithConfiguration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[32] = v13;
  v9[33] = v8;
  v9[30] = a7;
  v9[31] = a8;
  v9[28] = a5;
  v9[29] = a6;
  v9[26] = a2;
  v9[27] = a4;
  v9[25] = a1;
  v9[34] = *v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s34GenerativeFunctionsInstrumentation0A20FunctionInstrumenterVSgMd, &_s34GenerativeFunctionsInstrumentation0A20FunctionInstrumenterVSgMR);
  v9[35] = swift_task_alloc();
  type metadata accessor for TokenGenerator.PromptInputFromGenerativeModel(0);
  v9[36] = swift_task_alloc();
  v9[37] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
  v9[38] = swift_task_alloc();
  v9[39] = swift_task_alloc();
  v9[40] = swift_task_alloc();
  type metadata accessor for PromptCompletion(255);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9[41] = TupleTypeMetadata2;
  v9[42] = *(TupleTypeMetadata2 - 8);
  v9[43] = swift_task_alloc();
  v9[44] = swift_task_alloc();
  v9[45] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](TokenGenerator.completeGenerable<A>(type:configurationInput:generativeFunctionInstrumenter:getStringRenderedPromptSanitizerWithConfiguration:), 0, 0);
}

uint64_t TokenGenerator.completeGenerable<A>(type:configurationInput:generativeFunctionInstrumenter:getStringRenderedPromptSanitizerWithConfiguration:)()
{
  v1 = v0[29];
  GenerativeFunctionInstrumenter.executionBegin()();
  GenerativeFunctionInstrumenter.promptConstructionBegin()();
  v5 = (v1 + *v1);
  v2 = swift_task_alloc();
  v0[46] = v2;
  *v2 = v0;
  v2[1] = TokenGenerator.completeGenerable<A>(type:configurationInput:generativeFunctionInstrumenter:getStringRenderedPromptSanitizerWithConfiguration:);
  v3 = v0[40];

  return v5(v3);
}

{
  *(*v1 + 376) = v0;

  if (v0)
  {
    v2 = TokenGenerator.completeGenerable<A>(type:configurationInput:generativeFunctionInstrumenter:getStringRenderedPromptSanitizerWithConfiguration:);
  }

  else
  {
    v2 = TokenGenerator.completeGenerable<A>(type:configurationInput:generativeFunctionInstrumenter:getStringRenderedPromptSanitizerWithConfiguration:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  outlined init with copy of TokenGenerator.CompleteGenerableConfigurationInput(*(v0 + 216), v0 + 16);
  v1 = *(v0 + 72);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  *(v0 + 384) = v2;
  v4 = *(v0 + 320);
  if (v1)
  {
    v5 = *(v0 + 304);
    outlined init with take of any AsyncIteratorProtocol<Self.Element == A, Self.Failure == Error>((v0 + 16), v0 + 80);
    v6 = *(v0 + 104);
    v7 = *(v0 + 112);
    __swift_project_boxed_opaque_existential_1((v0 + 80), v6);
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v4, v5, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
    v8 = *(v6 - 8);
    v9 = swift_task_alloc();
    *(v0 + 416) = v9;
    (*(v8 + 16))();
    v10 = swift_task_alloc();
    *(v0 + 424) = v10;
    *v10 = v0;
    v10[1] = TokenGenerator.completeGenerable<A>(type:configurationInput:generativeFunctionInstrumenter:getStringRenderedPromptSanitizerWithConfiguration:);
    v11 = *(v0 + 304);
    v12 = *(v0 + 288);

    return TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPromptTurns:chatMessagesConfiguration:forceRenderPrompt:)(v12, v11, v3, v2, v9, 0, v6, v7);
  }

  else
  {
    v14 = *(v0 + 312);
    outlined init with take of any AsyncIteratorProtocol<Self.Element == A, Self.Failure == Error>((v0 + 16), v0 + 160);
    v15 = *(v0 + 184);
    v16 = *(v0 + 192);
    __swift_project_boxed_opaque_existential_1((v0 + 160), v15);
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v4, v14, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
    v17 = *(v15 - 8);
    v18 = swift_task_alloc();
    *(v0 + 392) = v18;
    (*(v17 + 16))();
    v19 = swift_task_alloc();
    *(v0 + 400) = v19;
    *v19 = v0;
    v19[1] = TokenGenerator.completeGenerable<A>(type:configurationInput:generativeFunctionInstrumenter:getStringRenderedPromptSanitizerWithConfiguration:);
    v20 = *(v0 + 312);
    v21 = *(v0 + 288);

    return TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPrompt:completionConfiguration:forceRenderPrompt:)(v21, v20, v3, v2, v18, 0, v15, v16);
  }
}

{
  *(*v1 + 408) = v0;

  if (v0)
  {
    v2 = TokenGenerator.completeGenerable<A>(type:configurationInput:generativeFunctionInstrumenter:getStringRenderedPromptSanitizerWithConfiguration:);
  }

  else
  {

    v2 = TokenGenerator.completeGenerable<A>(type:configurationInput:generativeFunctionInstrumenter:getStringRenderedPromptSanitizerWithConfiguration:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{

  __swift_destroy_boxed_opaque_existential_0((v0 + 160));
  v1 = *(v0 + 296);
  v2 = *(v0 + 280);
  v3 = *(v0 + 264);
  v4 = *(v0 + 224);
  v11 = *(v0 + 248);
  outlined init with take of TokenGeneratorResponsePromptCompletionStream(*(v0 + 288), v1, type metadata accessor for TokenGenerator.PromptInputFromGenerativeModel);
  GenerativeFunctionInstrumenter.promptConstructionEnd()();
  TokenGenerator.CompleteGenerableConfigurationInput.configuration.getter(v0 + 120);
  GenerativeFunctionInstrumenter.inferenceBegin()();
  v5 = type metadata accessor for GenerativeFunctionInstrumenter();
  (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  v6 = swift_task_alloc();
  *(v0 + 440) = v6;
  *(v6 + 16) = v11;
  *(v6 + 32) = v0 + 120;
  *(v6 + 40) = v4;
  *(v6 + 48) = v3;
  *(v6 + 56) = v1;
  v7 = swift_task_alloc();
  *(v0 + 448) = v7;
  *v7 = v0;
  v7[1] = TokenGenerator.completeGenerable<A>(type:configurationInput:generativeFunctionInstrumenter:getStringRenderedPromptSanitizerWithConfiguration:);
  v8 = *(v0 + 352);
  v9 = *(v0 + 280);

  return static TokenGenerator.mapErrorToGenerativeFunctionsModelError<A>(generativeFunctionInstrumenter:_:)(v8, v9, &async function pointer to partial apply for closure #1 in TokenGenerator.completeGenerable<A>(type:configurationInput:generativeFunctionInstrumenter:getStringRenderedPromptSanitizerWithConfiguration:));
}

{
  *(*v1 + 432) = v0;

  if (v0)
  {
    v2 = TokenGenerator.completeGenerable<A>(type:configurationInput:generativeFunctionInstrumenter:getStringRenderedPromptSanitizerWithConfiguration:);
  }

  else
  {

    v2 = TokenGenerator.completeGenerable<A>(type:configurationInput:generativeFunctionInstrumenter:getStringRenderedPromptSanitizerWithConfiguration:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{

  __swift_destroy_boxed_opaque_existential_0((v0 + 80));
  v1 = *(v0 + 296);
  v2 = *(v0 + 280);
  v3 = *(v0 + 264);
  v4 = *(v0 + 224);
  v11 = *(v0 + 248);
  outlined init with take of TokenGeneratorResponsePromptCompletionStream(*(v0 + 288), v1, type metadata accessor for TokenGenerator.PromptInputFromGenerativeModel);
  GenerativeFunctionInstrumenter.promptConstructionEnd()();
  TokenGenerator.CompleteGenerableConfigurationInput.configuration.getter(v0 + 120);
  GenerativeFunctionInstrumenter.inferenceBegin()();
  v5 = type metadata accessor for GenerativeFunctionInstrumenter();
  (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  v6 = swift_task_alloc();
  *(v0 + 440) = v6;
  *(v6 + 16) = v11;
  *(v6 + 32) = v0 + 120;
  *(v6 + 40) = v4;
  *(v6 + 48) = v3;
  *(v6 + 56) = v1;
  v7 = swift_task_alloc();
  *(v0 + 448) = v7;
  *v7 = v0;
  v7[1] = TokenGenerator.completeGenerable<A>(type:configurationInput:generativeFunctionInstrumenter:getStringRenderedPromptSanitizerWithConfiguration:);
  v8 = *(v0 + 352);
  v9 = *(v0 + 280);

  return static TokenGenerator.mapErrorToGenerativeFunctionsModelError<A>(generativeFunctionInstrumenter:_:)(v8, v9, &async function pointer to partial apply for closure #1 in TokenGenerator.completeGenerable<A>(type:configurationInput:generativeFunctionInstrumenter:getStringRenderedPromptSanitizerWithConfiguration:));
}

{
  v2 = *v1;
  *(*v1 + 456) = v0;

  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(*(v2 + 280), &_s34GenerativeFunctionsInstrumentation0A20FunctionInstrumenterVSgMd, &_s34GenerativeFunctionsInstrumentation0A20FunctionInstrumenterVSgMR);

  if (v0)
  {
    v3 = TokenGenerator.completeGenerable<A>(type:configurationInput:generativeFunctionInstrumenter:getStringRenderedPromptSanitizerWithConfiguration:);
  }

  else
  {
    v3 = TokenGenerator.completeGenerable<A>(type:configurationInput:generativeFunctionInstrumenter:getStringRenderedPromptSanitizerWithConfiguration:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v2 = v0[44];
  v1 = v0[45];
  v12 = v0[43];
  v13 = v0[42];
  v4 = v0[40];
  v3 = v0[41];
  v5 = v0[37];
  v6 = v0[31];
  v14 = v0[25];
  v15 = v0[26];
  v7 = *(v3 + 48);
  v11 = *(*(v6 - 8) + 32);
  v11(v1, v2, v6);
  outlined init with take of TokenGeneratorResponsePromptCompletionStream(v2 + v7, v1 + *(v3 + 48), type metadata accessor for PromptCompletion);
  GenerativeFunctionInstrumenter.inferenceEnd()();
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v4, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
  __swift_destroy_boxed_opaque_existential_0(v0 + 15);
  outlined destroy of TokenGeneratorCompletionResponseStringStream(v5, type metadata accessor for TokenGenerator.PromptInputFromGenerativeModel);
  GenerativeFunctionInstrumenter.executionEnd(error:)();
  (*(v13 + 32))(v12, v1, v3);
  v8 = *(v3 + 48);
  v11(v14, v12, v6);
  outlined init with take of TokenGeneratorResponsePromptCompletionStream(v12 + v8, v15, type metadata accessor for PromptCompletion);

  v9 = v0[1];

  return v9();
}

{
  v1 = *(v0 + 376);
  MEMORY[0x1AC5A6AE0](v1);
  GenerativeFunctionInstrumenter.executionEnd(error:)();

  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

{
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[40], &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);

  __swift_destroy_boxed_opaque_existential_0(v0 + 20);
  v1 = v0[51];
  MEMORY[0x1AC5A6AE0](v1);
  GenerativeFunctionInstrumenter.executionEnd(error:)();

  swift_willThrow();

  v2 = v0[1];

  return v2();
}

{
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[40], &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);

  __swift_destroy_boxed_opaque_existential_0(v0 + 10);
  v1 = v0[54];
  MEMORY[0x1AC5A6AE0](v1);
  GenerativeFunctionInstrumenter.executionEnd(error:)();

  swift_willThrow();

  v2 = v0[1];

  return v2();
}

{
  v1 = v0[37];
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[40], &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
  __swift_destroy_boxed_opaque_existential_0(v0 + 15);
  outlined destroy of TokenGeneratorCompletionResponseStringStream(v1, type metadata accessor for TokenGenerator.PromptInputFromGenerativeModel);
  v2 = v0[57];
  MEMORY[0x1AC5A6AE0](v2);
  GenerativeFunctionInstrumenter.executionEnd(error:)();

  swift_willThrow();

  v3 = v0[1];

  return v3();
}

uint64_t closure #1 in TokenGenerator.completeGenerable<A>(type:configurationInput:generativeFunctionInstrumenter:getStringRenderedPromptSanitizerWithConfiguration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[1094] = a7;
  v7[1093] = a6;
  v7[1092] = a5;
  v7[1091] = a4;
  v7[1090] = a3;
  v7[1089] = a2;
  v7[1088] = a1;
  v8 = type metadata accessor for UUID();
  v7[1095] = v8;
  v7[1096] = *(v8 - 8);
  v7[1097] = swift_task_alloc();
  v9 = type metadata accessor for StringResponseSanitizerRunnerConfiguration();
  v7[1098] = v9;
  v7[1099] = *(v9 - 8);
  v7[1100] = swift_task_alloc();
  v7[1101] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16GenerativeModels33StringResponseSanitizerWithRunnerVSgMd, &_s16GenerativeModels33StringResponseSanitizerWithRunnerVSgMR);
  v7[1102] = swift_task_alloc();
  v10 = type metadata accessor for StringResponseSanitizerWithRunner();
  v7[1103] = v10;
  v7[1104] = *(v10 - 8);
  v7[1105] = swift_task_alloc();
  v7[1106] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMR);
  v7[1107] = swift_task_alloc();
  v11 = type metadata accessor for String.Encoding();
  v7[1108] = v11;
  v7[1109] = *(v11 - 8);
  v7[1110] = swift_task_alloc();
  v7[1111] = type metadata accessor for PromptCompletion(0);
  v7[1112] = swift_task_alloc();
  v7[1113] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s29GenerativeFunctionsFoundation6SchemaVSgMd, &_s29GenerativeFunctionsFoundation6SchemaVSgMR);
  v7[1114] = swift_task_alloc();
  v7[1115] = swift_task_alloc();
  v7[1116] = swift_task_alloc();
  v7[1117] = swift_task_alloc();
  v12 = type metadata accessor for Schema();
  v7[1118] = v12;
  v7[1119] = *(v12 - 8);
  v7[1120] = swift_task_alloc();
  v13 = type metadata accessor for GenerativeFunctionInstrumenter();
  v7[1121] = v13;
  v7[1122] = *(v13 - 8);
  v7[1123] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
  v7[1124] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in TokenGenerator.completeGenerable<A>(type:configurationInput:generativeFunctionInstrumenter:getStringRenderedPromptSanitizerWithConfiguration:), 0, 0);
}

uint64_t closure #1 in TokenGenerator.completeGenerable<A>(type:configurationInput:generativeFunctionInstrumenter:getStringRenderedPromptSanitizerWithConfiguration:)()
{
  v257 = v0;
  v1 = *(v0 + 8712);
  v3 = v1[3];
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  GenerativeConfigurationProtocol.samplingParameters.getter(v3, v2, v0 + 240);
  v4 = *(v0 + 240);
  v5 = *(v0 + 248);
  *(v0 + 898) = *(v0 + 249);
  *(v0 + 901) = *(v0 + 252);
  v6 = *(v0 + 256);
  v7 = *(v0 + 264);
  *(v0 + 684) = *(v0 + 268);
  *(v0 + 681) = *(v0 + 265);
  v8 = *(v0 + 272);
  v9 = *(v0 + 280);
  *(v0 + 677) = *(v0 + 284);
  *(v0 + 674) = *(v0 + 281);
  v10 = *(v0 + 288);
  LOBYTE(v3) = *(v0 + 296);
  *(v0 + 229) = *(v0 + 300);
  *(v0 + 226) = *(v0 + 297);
  v11 = *(v0 + 304);
  v12 = *(v0 + 312);
  *(v0 + 460) = *(v0 + 316);
  *(v0 + 457) = *(v0 + 313);
  v13 = *(v0 + 320);
  v14 = *(v0 + 328);
  v15 = *(v0 + 336);
  *(v0 + 453) = *(v0 + 340);
  *(v0 + 450) = *(v0 + 337);
  v16 = *(v0 + 344);
  v17 = *(v0 + 352);
  v18 = *(v0 + 353);
  *(v0 + 236) = *(v0 + 356);
  *(v0 + 233) = v18;
  v19 = *(v0 + 360);
  v20 = *(v0 + 368);
  v21 = *(v0 + 369);
  *(v0 + 476) = *(v0 + 252);
  *(v0 + 473) = *(v0 + 249);
  v22 = *(v0 + 370);
  *(v0 + 492) = *(v0 + 268);
  *(v0 + 489) = *(v0 + 265);
  LOBYTE(v18) = *(v0 + 371);
  *(v0 + 508) = *(v0 + 284);
  *(v0 + 505) = *(v0 + 281);
  v23 = *(v0 + 372);
  *(v0 + 524) = *(v0 + 300);
  *(v0 + 521) = *(v0 + 297);
  *(v0 + 1796) = *(v0 + 375);
  *(v0 + 1794) = *(v0 + 373);
  *(v0 + 540) = *(v0 + 316);
  *(v0 + 537) = *(v0 + 313);
  v24 = *(v0 + 337);
  *(v0 + 564) = *(v0 + 340);
  *(v0 + 561) = v24;
  v25 = *(v0 + 376);
  v26 = *(v0 + 384);
  *(v0 + 580) = *(v0 + 356);
  *(v0 + 577) = *(v0 + 353);
  *(v0 + 597) = *(v0 + 373);
  v27 = *(v0 + 392);
  v28 = *(v0 + 400);
  v220 = v6;
  v221 = v4;
  *(v0 + 464) = v4;
  *(v0 + 472) = v5;
  *(v0 + 480) = v6;
  v212 = v3;
  v213 = v7;
  *(v0 + 488) = v7;
  v29 = v9;
  v218 = v10;
  v219 = v8;
  *(v0 + 496) = v8;
  *(v0 + 504) = v9;
  *(v0 + 512) = v10;
  *(v0 + 520) = v3;
  v228 = v14;
  v229 = v11;
  *(v0 + 528) = v11;
  v223 = v15;
  v224 = v12;
  *(v0 + 536) = v12;
  v226 = v13;
  v227 = v16;
  *(v0 + 544) = v13;
  *(v0 + 552) = v14;
  *(v0 + 560) = v15;
  *(v0 + 568) = v16;
  v222 = v17;
  *(v0 + 576) = v17;
  v225 = v19;
  *(v0 + 584) = v19;
  *(v0 + 592) = v20;
  v216 = v22;
  v217 = v21;
  *(v0 + 593) = v21;
  *(v0 + 594) = v22;
  v214 = v23;
  v215 = v18;
  *(v0 + 595) = v18;
  *(v0 + 596) = v23;
  *(v0 + 599) = *(v0 + 375);
  v246 = v27;
  v248 = v25;
  *(v0 + 600) = v25;
  v244 = v26;
  *(v0 + 608) = v26;
  *(v0 + 616) = v27;
  v30 = v28;
  *(v0 + 624) = v28;
  v32 = *(v0 + 408);
  v31 = *(v0 + 416);
  *(v0 + 632) = v32;
  v211 = v31;
  *(v0 + 640) = v31;
  v33 = *(v0 + 432);
  v210 = *(v0 + 424);
  *(v0 + 648) = v210;
  v242 = v33;
  *(v0 + 656) = v33;
  v209 = *(v0 + 440);
  *(v0 + 664) = v209;
  v240 = *(v0 + 448);
  *(v0 + 672) = v240;
  v235 = (v0 + 1122);
  v236 = (v0 + 905);
  v34 = (v0 + 1346);
  v35 = (v0 + 1353);
  v36 = (v0 + 1570);
  v232 = (v0 + 1577);
  v233 = (v0 + 1129);
  v238 = (v0 + 1797);
  if (_s15TokenGeneration26SamplingParametersEnvelopeVSgWOg(v0 + 464) == 1)
  {
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v246 = 0;
    v248 = 0;
    v244 = 0;
    v230 = 0;
    v231 = 0;
    v45 = 0;
    v46 = 0;
    v242 = 0;
    v240 = 0;
    v20 = 1;
    LOBYTE(v250) = 1;
    *(v0 + 9272) = 1;
    v47 = MEMORY[0x1E69E7CD0];
    v48 = 2;
    v49 = -1;
    v50 = 768;
    v51 = 1;
    v29 = 1;
    v52 = 1;
    v53 = 1;
    v54 = 1;
    v55 = 1;
    v56 = 2;
    v57 = 2;
    v58 = 2;
  }

  else
  {
    *v232 = *(v0 + 898);
    *(v0 + 1580) = *(v0 + 901);
    *v36 = *(v0 + 681);
    *(v0 + 1573) = *(v0 + 684);
    *v35 = *(v0 + 674);
    *(v0 + 1356) = *(v0 + 677);
    *(v0 + 1349) = *(v0 + 229);
    *v34 = *(v0 + 226);
    v59 = *(v0 + 457);
    *(v0 + 1132) = *(v0 + 460);
    *v233 = v59;
    *(v0 + 1125) = *(v0 + 453);
    *v235 = *(v0 + 450);
    *(v0 + 908) = *(v0 + 236);
    *v236 = *(v0 + 233);
    *(v0 + 1799) = *(v0 + 1796);
    *v238 = *(v0 + 1794);
    *(v0 + 9272) = v20;
    v42 = v228;
    v41 = v229;
    v47 = v226;
    v43 = v227;
    v44 = v225;
    v56 = v216;
    v48 = v217;
    v54 = v223;
    v53 = v224;
    v230 = v30;
    v231 = v32;
    v55 = v222;
    v38 = v220;
    v37 = v221;
    v40 = v218;
    v39 = v219;
    v57 = v215;
    v49 = v5;
    v51 = v213;
    v58 = v214;
    v52 = v212;
    v46 = v210;
    v45 = v211;
    v50 = v209;
  }

  *(v0 + 688) = v37;
  *(v0 + 696) = v49;
  *(v0 + 704) = v38;
  *(v0 + 712) = v51;
  *(v0 + 720) = v39;
  *(v0 + 728) = v29;
  *(v0 + 736) = v40;
  *(v0 + 744) = v52;
  *(v0 + 697) = *v232;
  *(v0 + 713) = *v36;
  *(v0 + 732) = *(v0 + 1356);
  *(v0 + 729) = *v35;
  *(v0 + 748) = *(v0 + 1349);
  *(v0 + 745) = *v34;
  *(v0 + 764) = *(v0 + 1132);
  *(v0 + 761) = *v233;
  v60 = *(v0 + 8984);
  v61 = *(v0 + 8976);
  *(v0 + 700) = *(v0 + 1580);
  v234 = *(v0 + 8968);
  *(v0 + 716) = *(v0 + 1573);
  v62 = *(v0 + 8720);
  *(v0 + 752) = v41;
  v63 = *(v0 + 8712);
  *(v0 + 760) = v53;
  *(v0 + 768) = v47;
  *(v0 + 776) = v42;
  *(v0 + 784) = v54;
  v64 = *v235;
  *(v0 + 788) = *(v0 + 1125);
  *(v0 + 785) = v64;
  *(v0 + 792) = v43;
  *(v0 + 800) = v55;
  v65 = *v236;
  *(v0 + 804) = *(v0 + 908);
  *(v0 + 801) = v65;
  *(v0 + 808) = v44;
  *(v0 + 816) = v20;
  *(v0 + 817) = v48;
  *(v0 + 818) = v56;
  *(v0 + 819) = v57;
  *(v0 + 820) = v58;
  LOWORD(v65) = *v238;
  *(v0 + 823) = *(v0 + 1799);
  *(v0 + 821) = v65;
  *(v0 + 824) = v248;
  *(v0 + 832) = v244;
  *(v0 + 840) = v246;
  *(v0 + 848) = v230;
  *(v0 + 856) = v231;
  *(v0 + 864) = v45;
  *(v0 + 872) = v46;
  *(v0 + 880) = v242;
  *(v0 + 888) = v50;
  *(v0 + 896) = v240;
  v67 = v1[3];
  v66 = v1[4];
  __swift_project_boxed_opaque_existential_1(v63, v67);
  v68 = GenerativeConfigurationProtocol.documents.getter(v67, v66);
  *(v0 + 9000) = v68;
  v69 = MEMORY[0x1E69E7CC0];
  if (v68)
  {
    v70 = v68;
  }

  else
  {
    v70 = MEMORY[0x1E69E7CC0];
  }

  v249 = v70;
  __swift_project_boxed_opaque_existential_1(v63, v1[3]);
  v71 = GenerativeConfigurationProtocol.tools.getter();
  *(v0 + 9008) = v71;
  if (v71)
  {
    v72 = v71;
  }

  else
  {
    v72 = v69;
  }

  v247 = v72;
  __swift_project_boxed_opaque_existential_1(v63, v1[3]);
  GenerativeConfigurationProtocol.toolChoice.getter();
  v73 = v1[3];
  v74 = __swift_project_boxed_opaque_existential_1(v63, v73);
  (*(v61 + 16))(v60, v62, v234);
  v75 = *(v73 - 8);
  v76 = swift_task_alloc();
  (*(v75 + 16))(v76, v74, v73);
  RequestMetadata.init<A>(generativeFunctionInstrumenter:configuration:)(v60, v76, v73, &v250);

  v77 = v250;
  v78 = v251;
  *(v0 + 9016) = v251;
  v79 = v252;
  v80 = v253;
  *(v0 + 9024) = v253;
  v81 = v254;
  v245 = v255;
  *(v0 + 9032) = v255;
  v243 = v256;
  *(v0 + 9040) = v256;
  v83 = v1[3];
  v82 = v1[4];
  __swift_project_boxed_opaque_existential_1(v63, v83);
  v84 = GenerativeConfigurationProtocol.grammar.getter(v83, v82);
  *(v0 + 9048) = v85;
  v239 = v79;
  v241 = v81;
  if (v85)
  {
    v86 = *(v0 + 864);
    *(v0 + 5200) = *(v0 + 848);
    *(v0 + 5216) = v86;
    *(v0 + 5232) = *(v0 + 880);
    v87 = *(v0 + 800);
    *(v0 + 5136) = *(v0 + 784);
    *(v0 + 5152) = v87;
    v88 = *(v0 + 832);
    *(v0 + 5168) = *(v0 + 816);
    *(v0 + 5184) = v88;
    v89 = *(v0 + 736);
    *(v0 + 5072) = *(v0 + 720);
    *(v0 + 5088) = v89;
    v90 = *(v0 + 768);
    *(v0 + 5104) = *(v0 + 752);
    *(v0 + 5120) = v90;
    v91 = *(v0 + 704);
    *(v0 + 5040) = *(v0 + 688);
    *(v0 + 5248) = *(v0 + 896);
    *(v0 + 5056) = v91;
    v92 = v84;
    v93 = v85;
    protocol witness for Message.unknownFields.modify in conformance Promptkit_Wireformat_VersionedPromptRequest();
    v94 = *(v0 + 5216);
    *(v0 + 4984) = *(v0 + 5200);
    *(v0 + 5000) = v94;
    *(v0 + 5016) = *(v0 + 5232);
    *(v0 + 5032) = *(v0 + 5248);
    v95 = *(v0 + 5152);
    *(v0 + 4920) = *(v0 + 5136);
    *(v0 + 4936) = v95;
    v96 = *(v0 + 5184);
    *(v0 + 4952) = *(v0 + 5168);
    *(v0 + 4968) = v96;
    v97 = *(v0 + 5088);
    *(v0 + 4856) = *(v0 + 5072);
    *(v0 + 4872) = v97;
    v98 = *(v0 + 5120);
    *(v0 + 4888) = *(v0 + 5104);
    *(v0 + 4904) = v98;
    v99 = *(v0 + 5056);
    *(v0 + 4824) = *(v0 + 5040);
    *(v0 + 4840) = v99;
    *(v0 + 8448) = v77;
    *(v0 + 8456) = v78;
    *(v0 + 8464) = v79;
    *(v0 + 8472) = v80;
    *(v0 + 8480) = v81;
    *(v0 + 8488) = v245;
    *(v0 + 8496) = v243;
    outlined init with copy of SamplingParameters(v0 + 688, v0 + 4608);
    v100 = swift_task_alloc();
    *(v0 + 9056) = v100;
    *v100 = v0;
    v100[1] = closure #1 in TokenGenerator.completeGenerable<A>(type:configurationInput:generativeFunctionInstrumenter:getStringRenderedPromptSanitizerWithConfiguration:);
    v101 = *(v0 + 8992);
    v102 = *(v0 + 8736);
    v259 = v0 + 8448;

    return TokenGenerator.complete(promptInputFromGenerativeModel:parameters:tools:toolChoice:documents:grammar:metadata:)(v0 + 8672, v102, v0 + 4824, v247, v101, v249, v92, v93);
  }

  v105 = v1[3];
  v104 = v1[4];
  __swift_project_boxed_opaque_existential_1(*(v0 + 8712), v105);
  v106 = GenerativeConfigurationProtocol.partialGrammar.getter(v105, v104);
  *(v0 + 9072) = v107;
  v108 = v77;
  if (v107)
  {
    v109 = *(v0 + 864);
    *(v0 + 6496) = *(v0 + 848);
    *(v0 + 6512) = v109;
    *(v0 + 6528) = *(v0 + 880);
    v110 = *(v0 + 800);
    *(v0 + 6432) = *(v0 + 784);
    *(v0 + 6448) = v110;
    v111 = *(v0 + 832);
    *(v0 + 6464) = *(v0 + 816);
    *(v0 + 6480) = v111;
    v112 = *(v0 + 736);
    *(v0 + 6368) = *(v0 + 720);
    *(v0 + 6384) = v112;
    v113 = *(v0 + 768);
    *(v0 + 6400) = *(v0 + 752);
    *(v0 + 6416) = v113;
    v114 = *(v0 + 704);
    *(v0 + 6336) = *(v0 + 688);
    *(v0 + 6544) = *(v0 + 896);
    *(v0 + 6352) = v114;
    v115 = v106;
    v116 = v107;
    protocol witness for Message.unknownFields.modify in conformance Promptkit_Wireformat_VersionedPromptRequest();
    v117 = *(v0 + 6512);
    *(v0 + 6280) = *(v0 + 6496);
    *(v0 + 6296) = v117;
    *(v0 + 6312) = *(v0 + 6528);
    *(v0 + 6328) = *(v0 + 6544);
    v118 = *(v0 + 6448);
    *(v0 + 6216) = *(v0 + 6432);
    *(v0 + 6232) = v118;
    v119 = *(v0 + 6480);
    *(v0 + 6248) = *(v0 + 6464);
    *(v0 + 6264) = v119;
    v120 = *(v0 + 6384);
    *(v0 + 6152) = *(v0 + 6368);
    *(v0 + 6168) = v120;
    v121 = *(v0 + 6416);
    *(v0 + 6184) = *(v0 + 6400);
    *(v0 + 6200) = v121;
    v122 = *(v0 + 6352);
    *(v0 + 6120) = *(v0 + 6336);
    *(v0 + 6136) = v122;
    *(v0 + 8504) = v77;
    *(v0 + 8512) = v78;
    *(v0 + 8520) = v239;
    *(v0 + 8528) = v80;
    *(v0 + 8536) = v81;
    *(v0 + 8544) = v245;
    *(v0 + 8552) = v243;
    outlined init with copy of SamplingParameters(v0 + 688, v0 + 5688);
    v123 = swift_task_alloc();
    *(v0 + 9080) = v123;
    *v123 = v0;
    v123[1] = closure #1 in TokenGenerator.completeGenerable<A>(type:configurationInput:generativeFunctionInstrumenter:getStringRenderedPromptSanitizerWithConfiguration:);
    v124 = *(v0 + 8992);
    v125 = *(v0 + 8736);
    v259 = v0 + 8504;

    return TokenGenerator.complete(promptInputFromGenerativeModel:parameters:tools:toolChoice:documents:partialGrammar:metadata:)(v0 + 8672, v125, v0 + 6120, v247, v124, v249, v115, v116);
  }

  v126 = *(v0 + 8952);
  v127 = *(v0 + 8936);
  v237 = *(v0 + 8944);
  __swift_project_boxed_opaque_existential_1(*(v0 + 8712), v1[3]);
  GenerativeConfigurationProtocol.schema.getter();
  if ((*(v126 + 48))(v127, 1, v237) == 1)
  {
    v128 = *(v0 + 8712);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(*(v0 + 8936), &_s29GenerativeFunctionsFoundation6SchemaVSgMd, &_s29GenerativeFunctionsFoundation6SchemaVSgMR);
    v129 = v1[3];
    v130 = v1[4];
    __swift_project_boxed_opaque_existential_1(v128, v129);
    v131 = GenerativeConfigurationProtocol.grammarIdentifier.getter(v129, v130);
    *(v0 + 9096) = v132;
    if (v132)
    {
      v133 = *(v0 + 864);
      *(v0 + 4336) = *(v0 + 848);
      *(v0 + 4352) = v133;
      *(v0 + 4368) = *(v0 + 880);
      v134 = *(v0 + 800);
      *(v0 + 4272) = *(v0 + 784);
      *(v0 + 4288) = v134;
      v135 = *(v0 + 832);
      *(v0 + 4304) = *(v0 + 816);
      *(v0 + 4320) = v135;
      v136 = *(v0 + 736);
      *(v0 + 4208) = *(v0 + 720);
      *(v0 + 4224) = v136;
      v137 = *(v0 + 768);
      *(v0 + 4240) = *(v0 + 752);
      *(v0 + 4256) = v137;
      v138 = *(v0 + 704);
      *(v0 + 4176) = *(v0 + 688);
      *(v0 + 4384) = *(v0 + 896);
      *(v0 + 4192) = v138;
      v139 = v131;
      v140 = v132;
      protocol witness for Message.unknownFields.modify in conformance Promptkit_Wireformat_VersionedPromptRequest();
      *(v0 + 7360) = *(v0 + 4336);
      *(v0 + 7376) = *(v0 + 4352);
      *(v0 + 7392) = *(v0 + 4368);
      *(v0 + 7408) = *(v0 + 4384);
      *(v0 + 7296) = *(v0 + 4272);
      *(v0 + 7312) = *(v0 + 4288);
      *(v0 + 7328) = *(v0 + 4304);
      *(v0 + 7344) = *(v0 + 4320);
      *(v0 + 7232) = *(v0 + 4208);
      *(v0 + 7248) = *(v0 + 4224);
      *(v0 + 7264) = *(v0 + 4240);
      *(v0 + 7280) = *(v0 + 4256);
      *(v0 + 7200) = *(v0 + 4176);
      *(v0 + 7216) = *(v0 + 4192);
      *(v0 + 8616) = v108;
      *(v0 + 8624) = v78;
      *(v0 + 8632) = v239;
      *(v0 + 8640) = v80;
      *(v0 + 8648) = v241;
      *(v0 + 8656) = v245;
      *(v0 + 8664) = v243;
      outlined init with copy of SamplingParameters(v0 + 688, v0 + 7416);
      v141 = swift_task_alloc();
      *(v0 + 9120) = v141;
      *v141 = v0;
      v141[1] = closure #1 in TokenGenerator.completeGenerable<A>(type:configurationInput:generativeFunctionInstrumenter:getStringRenderedPromptSanitizerWithConfiguration:);
      v142 = *(v0 + 8992);
      v143 = *(v0 + 8736);
      v259 = v0 + 8616;

      return TokenGenerator.complete(promptInputFromGenerativeModel:parameters:tools:toolChoice:documents:grammarIdentifier:metadata:)(v0 + 8672, v143, v0 + 7200, v247, v142, v249, v139, v140);
    }

    v166 = v1[3];
    v165 = v1[4];
    __swift_project_boxed_opaque_existential_1(*(v0 + 8712), v166);
    v167 = GenerativeConfigurationProtocol.schemaIdentifier.getter(v166, v165);
    *(v0 + 9136) = v168;
    if (v168)
    {
      v169 = v167;
      v170 = v168;
      v171 = *(v0 + 864);
      *(v0 + 3256) = *(v0 + 848);
      *(v0 + 3272) = v171;
      *(v0 + 3288) = *(v0 + 880);
      *(v0 + 3304) = *(v0 + 896);
      v172 = *(v0 + 800);
      *(v0 + 3192) = *(v0 + 784);
      *(v0 + 3208) = v172;
      v173 = *(v0 + 832);
      *(v0 + 3224) = *(v0 + 816);
      *(v0 + 3240) = v173;
      v174 = *(v0 + 736);
      *(v0 + 3128) = *(v0 + 720);
      *(v0 + 3144) = v174;
      v175 = *(v0 + 768);
      *(v0 + 3160) = *(v0 + 752);
      *(v0 + 3176) = v175;
      v176 = *(v0 + 704);
      *(v0 + 3096) = *(v0 + 688);
      *(v0 + 3112) = v176;
      protocol witness for Message.unknownFields.modify in conformance Promptkit_Wireformat_VersionedPromptRequest();
      v177 = *(v0 + 3272);
      *(v0 + 3472) = *(v0 + 3256);
      *(v0 + 3488) = v177;
      *(v0 + 3504) = *(v0 + 3288);
      v178 = *(v0 + 3208);
      *(v0 + 3408) = *(v0 + 3192);
      *(v0 + 3424) = v178;
      v179 = *(v0 + 3240);
      *(v0 + 3440) = *(v0 + 3224);
      *(v0 + 3456) = v179;
      v180 = *(v0 + 3144);
      *(v0 + 3344) = *(v0 + 3128);
      *(v0 + 3360) = v180;
      v181 = *(v0 + 3176);
      *(v0 + 3376) = *(v0 + 3160);
      *(v0 + 3392) = v181;
      v182 = *(v0 + 3112);
      *(v0 + 3312) = *(v0 + 3096);
      *(v0 + 3520) = *(v0 + 3304);
      *(v0 + 3328) = v182;
      *(v0 + 8392) = v108;
      *(v0 + 8400) = v78;
      *(v0 + 8408) = v239;
      *(v0 + 8416) = v80;
      *(v0 + 8424) = v241;
      *(v0 + 8432) = v245;
      *(v0 + 8440) = v243;
      outlined init with copy of SamplingParameters(v0 + 688, v0 + 3528);
      v183 = swift_task_alloc();
      *(v0 + 9144) = v183;
      *v183 = v0;
      v183[1] = closure #1 in TokenGenerator.completeGenerable<A>(type:configurationInput:generativeFunctionInstrumenter:getStringRenderedPromptSanitizerWithConfiguration:);
      v184 = *(v0 + 8992);
      v185 = *(v0 + 8736);
      v259 = v0 + 8392;

      return TokenGenerator.complete(promptInputFromGenerativeModel:parameters:tools:toolChoice:documents:schemaIdentifier:metadata:)(v0 + 8672, v185, v0 + 3312, v247, v184, v249, v169, v170);
    }

    v186 = *(v0 + 8952);
    v187 = *(v0 + 8944);
    v188 = *(v0 + 864);
    if (*(v0 + 8744) == MEMORY[0x1E69E6158])
    {
      *(v0 + 2176) = *(v0 + 848);
      *(v0 + 2192) = v188;
      *(v0 + 2208) = *(v0 + 880);
      v196 = *(v0 + 800);
      *(v0 + 2112) = *(v0 + 784);
      *(v0 + 2128) = v196;
      v197 = *(v0 + 832);
      *(v0 + 2144) = *(v0 + 816);
      *(v0 + 2160) = v197;
      v198 = *(v0 + 736);
      *(v0 + 2048) = *(v0 + 720);
      *(v0 + 2064) = v198;
      v199 = *(v0 + 768);
      *(v0 + 2080) = *(v0 + 752);
      *(v0 + 2096) = v199;
      v200 = *(v0 + 704);
      *(v0 + 2016) = *(v0 + 688);
      v201 = *(v0 + 8920);
      *(v0 + 2224) = *(v0 + 896);
      *(v0 + 2032) = v200;
      protocol witness for Message.unknownFields.modify in conformance Promptkit_Wireformat_VersionedPromptRequest();
      v202 = *(v0 + 2192);
      *(v0 + 2392) = *(v0 + 2176);
      *(v0 + 2408) = v202;
      *(v0 + 2424) = *(v0 + 2208);
      *(v0 + 2440) = *(v0 + 2224);
      v203 = *(v0 + 2128);
      *(v0 + 2328) = *(v0 + 2112);
      *(v0 + 2344) = v203;
      v204 = *(v0 + 2160);
      *(v0 + 2360) = *(v0 + 2144);
      *(v0 + 2376) = v204;
      v205 = *(v0 + 2064);
      *(v0 + 2264) = *(v0 + 2048);
      *(v0 + 2280) = v205;
      v206 = *(v0 + 2096);
      *(v0 + 2296) = *(v0 + 2080);
      *(v0 + 2312) = v206;
      v207 = *(v0 + 2032);
      *(v0 + 2232) = *(v0 + 2016);
      *(v0 + 2248) = v207;
      (*(v186 + 56))(v201, 1, 1, v187);
      *(v0 + 8336) = v108;
      *(v0 + 8344) = v78;
      *(v0 + 8352) = v239;
      *(v0 + 8360) = v80;
      *(v0 + 8368) = v241;
      *(v0 + 8376) = v245;
      *(v0 + 8384) = v243;
      outlined init with copy of SamplingParameters(v0 + 688, v0 + 2448);
      v208 = swift_task_alloc();
      *(v0 + 9160) = v208;
      *v208 = v0;
      v208[1] = closure #1 in TokenGenerator.completeGenerable<A>(type:configurationInput:generativeFunctionInstrumenter:getStringRenderedPromptSanitizerWithConfiguration:);
      v159 = *(v0 + 8992);
      v160 = *(v0 + 8920);
      v161 = *(v0 + 8736);
      v162 = v0 + 8672;
      v164 = v0 + 8336;
      v163 = v0 + 2232;
    }

    else
    {
      *(v0 + 6064) = *(v0 + 848);
      *(v0 + 6080) = v188;
      *(v0 + 6096) = *(v0 + 880);
      v189 = *(v0 + 800);
      *(v0 + 6000) = *(v0 + 784);
      *(v0 + 6016) = v189;
      v190 = *(v0 + 832);
      *(v0 + 6032) = *(v0 + 816);
      *(v0 + 6048) = v190;
      v191 = *(v0 + 736);
      *(v0 + 5936) = *(v0 + 720);
      *(v0 + 5952) = v191;
      v192 = *(v0 + 768);
      *(v0 + 5968) = *(v0 + 752);
      *(v0 + 5984) = v192;
      v193 = *(v0 + 704);
      *(v0 + 5904) = *(v0 + 688);
      v194 = *(v0 + 8912);
      *(v0 + 6112) = *(v0 + 896);
      *(v0 + 5920) = v193;
      protocol witness for Message.unknownFields.modify in conformance Promptkit_Wireformat_VersionedPromptRequest();
      *(v0 + 1296) = *(v0 + 6064);
      *(v0 + 1312) = *(v0 + 6080);
      *(v0 + 1328) = *(v0 + 6096);
      *(v0 + 1344) = *(v0 + 6112);
      *(v0 + 1232) = *(v0 + 6000);
      *(v0 + 1248) = *(v0 + 6016);
      *(v0 + 1264) = *(v0 + 6032);
      *(v0 + 1280) = *(v0 + 6048);
      *(v0 + 1168) = *(v0 + 5936);
      *(v0 + 1184) = *(v0 + 5952);
      *(v0 + 1200) = *(v0 + 5968);
      *(v0 + 1216) = *(v0 + 5984);
      *(v0 + 1136) = *(v0 + 5904);
      *(v0 + 1152) = *(v0 + 5920);
      outlined init with copy of SamplingParameters(v0 + 688, v0 + 1360);
      dispatch thunk of static Generable.schema.getter();
      (*(v186 + 56))(v194, 0, 1, v187);
      *(v0 + 8280) = v108;
      *(v0 + 8288) = v78;
      *(v0 + 8296) = v239;
      *(v0 + 8304) = v80;
      *(v0 + 8312) = v241;
      *(v0 + 8320) = v245;
      *(v0 + 8328) = v243;
      v195 = swift_task_alloc();
      *(v0 + 9176) = v195;
      *v195 = v0;
      v195[1] = closure #1 in TokenGenerator.completeGenerable<A>(type:configurationInput:generativeFunctionInstrumenter:getStringRenderedPromptSanitizerWithConfiguration:);
      v159 = *(v0 + 8992);
      v160 = *(v0 + 8912);
      v161 = *(v0 + 8736);
      v162 = v0 + 8672;
      v163 = v0 + 1136;
      v164 = v0 + 8280;
    }
  }

  else
  {
    v144 = *(v0 + 8960);
    v145 = *(v0 + 8952);
    v146 = *(v0 + 8944);
    v147 = *(v0 + 8928);
    (*(v145 + 32))(v144, *(v0 + 8936), v146);
    v148 = *(v0 + 864);
    *(v0 + 8224) = *(v0 + 848);
    *(v0 + 8240) = v148;
    *(v0 + 8256) = *(v0 + 880);
    v149 = *(v0 + 800);
    *(v0 + 8160) = *(v0 + 784);
    *(v0 + 8176) = v149;
    v150 = *(v0 + 832);
    *(v0 + 0x2000) = *(v0 + 816);
    *(v0 + 8208) = v150;
    v151 = *(v0 + 736);
    *(v0 + 8096) = *(v0 + 720);
    *(v0 + 8112) = v151;
    v152 = *(v0 + 768);
    *(v0 + 8128) = *(v0 + 752);
    *(v0 + 8144) = v152;
    v153 = *(v0 + 704);
    *(v0 + 8064) = *(v0 + 688);
    *(v0 + 8272) = *(v0 + 896);
    *(v0 + 8080) = v153;
    protocol witness for Message.unknownFields.modify in conformance Promptkit_Wireformat_VersionedPromptRequest();
    *(v0 + 1072) = *(v0 + 8224);
    *(v0 + 1088) = *(v0 + 8240);
    *(v0 + 1104) = *(v0 + 8256);
    *(v0 + 1120) = *(v0 + 8272);
    v154 = *(v0 + 8176);
    *(v0 + 1008) = *(v0 + 8160);
    *(v0 + 1024) = v154;
    *(v0 + 1040) = *(v0 + 0x2000);
    *(v0 + 1056) = *(v0 + 8208);
    v155 = *(v0 + 8112);
    *(v0 + 944) = *(v0 + 8096);
    *(v0 + 960) = v155;
    v156 = *(v0 + 8144);
    *(v0 + 976) = *(v0 + 8128);
    *(v0 + 992) = v156;
    v157 = *(v0 + 8080);
    *(v0 + 912) = *(v0 + 8064);
    *(v0 + 928) = v157;
    (*(v145 + 16))(v147, v144, v146);
    (*(v145 + 56))(v147, 0, 1, v146);
    *(v0 + 8560) = v108;
    *(v0 + 8568) = v78;
    *(v0 + 8576) = v239;
    *(v0 + 8584) = v80;
    *(v0 + 8592) = v81;
    *(v0 + 8600) = v245;
    *(v0 + 8608) = v243;
    outlined init with copy of SamplingParameters(v0 + 688, v0 + 6984);
    v158 = swift_task_alloc();
    *(v0 + 9104) = v158;
    *v158 = v0;
    v158[1] = closure #1 in TokenGenerator.completeGenerable<A>(type:configurationInput:generativeFunctionInstrumenter:getStringRenderedPromptSanitizerWithConfiguration:);
    v159 = *(v0 + 8992);
    v160 = *(v0 + 8928);
    v161 = *(v0 + 8736);
    v162 = v0 + 8672;
    v163 = v0 + 912;
    v164 = v0 + 8560;
  }

  return TokenGenerator.complete(promptInputFromGenerativeModel:parameters:tools:toolChoice:documents:schema:metadata:)(v162, v161, v163, v247, v159, v249, v160, v164);
}

{
  v2 = *v1;
  v3 = *v1 + 4824;
  *(*v1 + 9064) = v0;

  if (v0)
  {
    v5 = *(v3 + 176);
    v4 = *(v3 + 192);
    v6 = *(v3 + 160);
    *(v2 + 4600) = *(v3 + 208);
    v7 = *(v3 + 16);
    *(v2 + 4392) = *v3;
    *(v2 + 4408) = v7;
    v8 = *(v3 + 80);
    v10 = *(v3 + 32);
    v9 = *(v3 + 48);
    *(v2 + 4456) = *(v3 + 64);
    *(v2 + 4472) = v8;
    *(v2 + 4424) = v10;
    *(v2 + 4440) = v9;
    v11 = *(v3 + 144);
    v13 = *(v3 + 96);
    v12 = *(v3 + 112);
    *(v2 + 4520) = *(v3 + 128);
    *(v2 + 4536) = v11;
    *(v2 + 4488) = v13;
    *(v2 + 4504) = v12;
    *(v2 + 4568) = v5;
    *(v2 + 4584) = v4;
    *(v2 + 4552) = v6;
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v2 + 4392, &_s15TokenGeneration18SamplingParametersVSgMd, &_s15TokenGeneration18SamplingParametersVSgMR);
    outlined destroy of SamplingParameters(v2 + 688);

    v14 = closure #1 in TokenGenerator.completeGenerable<A>(type:configurationInput:generativeFunctionInstrumenter:getStringRenderedPromptSanitizerWithConfiguration:);
  }

  else
  {
    v15 = *(v3 + 16);
    *(v2 + 16) = *v3;
    *(v2 + 32) = v15;
    v16 = *(v3 + 80);
    v18 = *(v3 + 32);
    v17 = *(v3 + 48);
    *(v2 + 80) = *(v3 + 64);
    *(v2 + 96) = v16;
    *(v2 + 48) = v18;
    *(v2 + 64) = v17;
    v19 = *(v3 + 144);
    v21 = *(v3 + 96);
    v20 = *(v3 + 112);
    *(v2 + 144) = *(v3 + 128);
    *(v2 + 160) = v19;
    *(v2 + 112) = v21;
    *(v2 + 128) = v20;
    v23 = *(v3 + 176);
    v22 = *(v3 + 192);
    v24 = *(v3 + 160);
    *(v2 + 224) = *(v3 + 208);
    *(v2 + 192) = v23;
    *(v2 + 208) = v22;
    *(v2 + 176) = v24;
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v2 + 16, &_s15TokenGeneration18SamplingParametersVSgMd, &_s15TokenGeneration18SamplingParametersVSgMR);

    v14 = closure #1 in TokenGenerator.completeGenerable<A>(type:configurationInput:generativeFunctionInstrumenter:getStringRenderedPromptSanitizerWithConfiguration:);
  }

  return MEMORY[0x1EEE6DFA0](v14, 0, 0);
}

{
  v1 = v0[1084];
  v2 = v0[1085];
  v0[1149] = v2;
  v3 = v0[1086];
  v4 = v0[1087];
  v0[1150] = v4;
  v5 = swift_task_alloc();
  v0[1151] = v5;
  *v5 = v0;
  v5[1] = closure #1 in TokenGenerator.completeGenerable<A>(type:configurationInput:generativeFunctionInstrumenter:getStringRenderedPromptSanitizerWithConfiguration:);
  v6 = v0[1112];

  return specialized TokenStream.contentAndPromptCompletion()(v6, v1, v2, v3, v4);
}

{
  v2 = *v1;
  v3 = *v1 + 6120;
  *(*v1 + 9088) = v0;

  if (v0)
  {
    v4 = *(v3 + 16);
    *(v2 + 5472) = *v3;
    *(v2 + 5488) = v4;
    v5 = *(v3 + 64);
    v6 = *(v3 + 80);
    v7 = *(v3 + 48);
    *(v2 + 5504) = *(v3 + 32);
    *(v2 + 5552) = v6;
    *(v2 + 5536) = v5;
    *(v2 + 5520) = v7;
    v8 = *(v3 + 128);
    v9 = *(v3 + 144);
    v10 = *(v3 + 112);
    *(v2 + 5568) = *(v3 + 96);
    *(v2 + 5616) = v9;
    *(v2 + 5600) = v8;
    *(v2 + 5584) = v10;
    v12 = *(v3 + 176);
    v11 = *(v3 + 192);
    v13 = *(v3 + 208);
    *(v2 + 5632) = *(v3 + 160);
    *(v2 + 5680) = v13;
    *(v2 + 5664) = v11;
    *(v2 + 5648) = v12;
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v2 + 5472, &_s15TokenGeneration18SamplingParametersVSgMd, &_s15TokenGeneration18SamplingParametersVSgMR);
    outlined destroy of SamplingParameters(v2 + 688);

    v14 = closure #1 in TokenGenerator.completeGenerable<A>(type:configurationInput:generativeFunctionInstrumenter:getStringRenderedPromptSanitizerWithConfiguration:);
  }

  else
  {
    v16 = *(v3 + 176);
    v15 = *(v3 + 192);
    v17 = *(v3 + 160);
    *(v2 + 5464) = *(v3 + 208);
    v18 = *(v3 + 16);
    *(v2 + 5256) = *v3;
    *(v2 + 5272) = v18;
    v19 = *(v3 + 80);
    v21 = *(v3 + 32);
    v20 = *(v3 + 48);
    *(v2 + 5320) = *(v3 + 64);
    *(v2 + 5336) = v19;
    *(v2 + 5288) = v21;
    *(v2 + 5304) = v20;
    v22 = *(v3 + 144);
    v24 = *(v3 + 96);
    v23 = *(v3 + 112);
    *(v2 + 5384) = *(v3 + 128);
    *(v2 + 5400) = v22;
    *(v2 + 5352) = v24;
    *(v2 + 5368) = v23;
    *(v2 + 5432) = v16;
    *(v2 + 5448) = v15;
    *(v2 + 5416) = v17;
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v2 + 5256, &_s15TokenGeneration18SamplingParametersVSgMd, &_s15TokenGeneration18SamplingParametersVSgMR);

    v14 = closure #1 in TokenGenerator.completeGenerable<A>(type:configurationInput:generativeFunctionInstrumenter:getStringRenderedPromptSanitizerWithConfiguration:);
  }

  return MEMORY[0x1EEE6DFA0](v14, 0, 0);
}

{
  v2 = *v1;
  v3 = *v1 + 912;
  *(*v1 + 9112) = v0;

  if (v0)
  {
    v4 = *(v2 + 8928);

    outlined destroy of SamplingParameters(v2 + 688);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v4, &_s29GenerativeFunctionsFoundation6SchemaVSgMd, &_s29GenerativeFunctionsFoundation6SchemaVSgMR);
    v5 = *(v3 + 16);
    *(v2 + 6768) = *v3;
    *(v2 + 6784) = v5;
    v6 = *(v3 + 64);
    v7 = *(v3 + 80);
    v8 = *(v3 + 48);
    *(v2 + 6800) = *(v3 + 32);
    *(v2 + 6848) = v7;
    *(v2 + 6832) = v6;
    *(v2 + 6816) = v8;
    v9 = *(v3 + 128);
    v10 = *(v3 + 144);
    v11 = *(v3 + 112);
    *(v2 + 6864) = *(v3 + 96);
    *(v2 + 6912) = v10;
    *(v2 + 6896) = v9;
    *(v2 + 6880) = v11;
    v13 = *(v3 + 176);
    v12 = *(v3 + 192);
    v14 = *(v3 + 208);
    *(v2 + 6928) = *(v3 + 160);
    *(v2 + 6976) = v14;
    *(v2 + 6960) = v12;
    *(v2 + 6944) = v13;
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v2 + 6768, &_s15TokenGeneration18SamplingParametersVSgMd, &_s15TokenGeneration18SamplingParametersVSgMR);
    v15 = closure #1 in TokenGenerator.completeGenerable<A>(type:configurationInput:generativeFunctionInstrumenter:getStringRenderedPromptSanitizerWithConfiguration:);
  }

  else
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(*(v2 + 8928), &_s29GenerativeFunctionsFoundation6SchemaVSgMd, &_s29GenerativeFunctionsFoundation6SchemaVSgMR);
    v16 = *(v3 + 16);
    *(v2 + 6552) = *v3;
    *(v2 + 6568) = v16;
    v17 = *(v3 + 80);
    v19 = *(v3 + 32);
    v18 = *(v3 + 48);
    *(v2 + 6616) = *(v3 + 64);
    *(v2 + 6632) = v17;
    *(v2 + 6584) = v19;
    *(v2 + 6600) = v18;
    v20 = *(v3 + 144);
    v22 = *(v3 + 96);
    v21 = *(v3 + 112);
    *(v2 + 6680) = *(v3 + 128);
    *(v2 + 6696) = v20;
    *(v2 + 6648) = v22;
    *(v2 + 6664) = v21;
    v24 = *(v3 + 176);
    v23 = *(v3 + 192);
    v25 = *(v3 + 160);
    *(v2 + 6760) = *(v3 + 208);
    *(v2 + 6728) = v24;
    *(v2 + 6744) = v23;
    *(v2 + 6712) = v25;
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v2 + 6552, &_s15TokenGeneration18SamplingParametersVSgMd, &_s15TokenGeneration18SamplingParametersVSgMR);
    v15 = closure #1 in TokenGenerator.completeGenerable<A>(type:configurationInput:generativeFunctionInstrumenter:getStringRenderedPromptSanitizerWithConfiguration:);
  }

  return MEMORY[0x1EEE6DFA0](v15, 0, 0);
}

{
  (*(v0[1119] + 8))(v0[1120], v0[1118]);
  v1 = v0[1084];
  v2 = v0[1085];
  v0[1149] = v2;
  v3 = v0[1086];
  v4 = v0[1087];
  v0[1150] = v4;
  v5 = swift_task_alloc();
  v0[1151] = v5;
  *v5 = v0;
  v5[1] = closure #1 in TokenGenerator.completeGenerable<A>(type:configurationInput:generativeFunctionInstrumenter:getStringRenderedPromptSanitizerWithConfiguration:);
  v6 = v0[1112];

  return specialized TokenStream.contentAndPromptCompletion()(v6, v1, v2, v3, v4);
}

{
  v2 = *v1;
  v3 = *v1 + 7200;
  *(*v1 + 9128) = v0;

  if (v0)
  {
    v4 = *(v3 + 16);
    *(v2 + 7632) = *v3;
    *(v2 + 7648) = v4;
    v5 = *(v3 + 64);
    v6 = *(v3 + 80);
    v7 = *(v3 + 48);
    *(v2 + 7664) = *(v3 + 32);
    *(v2 + 7712) = v6;
    *(v2 + 7696) = v5;
    *(v2 + 7680) = v7;
    v8 = *(v3 + 128);
    v9 = *(v3 + 144);
    v10 = *(v3 + 112);
    *(v2 + 7728) = *(v3 + 96);
    *(v2 + 7776) = v9;
    *(v2 + 7760) = v8;
    *(v2 + 7744) = v10;
    v12 = *(v3 + 176);
    v11 = *(v3 + 192);
    v13 = *(v3 + 208);
    *(v2 + 7792) = *(v3 + 160);
    *(v2 + 7840) = v13;
    *(v2 + 7824) = v11;
    *(v2 + 7808) = v12;
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v2 + 7632, &_s15TokenGeneration18SamplingParametersVSgMd, &_s15TokenGeneration18SamplingParametersVSgMR);
    outlined destroy of SamplingParameters(v2 + 688);

    v14 = closure #1 in TokenGenerator.completeGenerable<A>(type:configurationInput:generativeFunctionInstrumenter:getStringRenderedPromptSanitizerWithConfiguration:);
  }

  else
  {
    v16 = *(v3 + 176);
    v15 = *(v3 + 192);
    v17 = *(v3 + 160);
    *(v2 + 8056) = *(v3 + 208);
    v18 = *(v3 + 16);
    *(v2 + 7848) = *v3;
    *(v2 + 7864) = v18;
    v19 = *(v3 + 80);
    v21 = *(v3 + 32);
    v20 = *(v3 + 48);
    *(v2 + 7912) = *(v3 + 64);
    *(v2 + 7928) = v19;
    *(v2 + 7880) = v21;
    *(v2 + 7896) = v20;
    v22 = *(v3 + 144);
    v24 = *(v3 + 96);
    v23 = *(v3 + 112);
    *(v2 + 7976) = *(v3 + 128);
    *(v2 + 7992) = v22;
    *(v2 + 7944) = v24;
    *(v2 + 7960) = v23;
    *(v2 + 8024) = v16;
    *(v2 + 8040) = v15;
    *(v2 + 8008) = v17;
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v2 + 7848, &_s15TokenGeneration18SamplingParametersVSgMd, &_s15TokenGeneration18SamplingParametersVSgMR);

    v14 = closure #1 in TokenGenerator.completeGenerable<A>(type:configurationInput:generativeFunctionInstrumenter:getStringRenderedPromptSanitizerWithConfiguration:);
  }

  return MEMORY[0x1EEE6DFA0](v14, 0, 0);
}

{
  v2 = *v1;
  v3 = *v1 + 3312;
  *(*v1 + 9152) = v0;

  v4 = *(v3 + 16);
  if (v0)
  {
    *(v2 + 3744) = *v3;
    *(v2 + 3760) = v4;
    v5 = *(v3 + 64);
    v6 = *(v3 + 80);
    v7 = *(v3 + 48);
    *(v2 + 3776) = *(v3 + 32);
    *(v2 + 3824) = v6;
    *(v2 + 3808) = v5;
    *(v2 + 3792) = v7;
    v8 = *(v3 + 128);
    v9 = *(v3 + 144);
    v10 = *(v3 + 112);
    *(v2 + 3840) = *(v3 + 96);
    *(v2 + 3888) = v9;
    *(v2 + 3872) = v8;
    *(v2 + 3856) = v10;
    v12 = *(v3 + 176);
    v11 = *(v3 + 192);
    v13 = *(v3 + 208);
    *(v2 + 3904) = *(v3 + 160);
    *(v2 + 3952) = v13;
    *(v2 + 3936) = v11;
    *(v2 + 3920) = v12;
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v2 + 3744, &_s15TokenGeneration18SamplingParametersVSgMd, &_s15TokenGeneration18SamplingParametersVSgMR);
    outlined destroy of SamplingParameters(v2 + 688);

    v14 = closure #1 in TokenGenerator.completeGenerable<A>(type:configurationInput:generativeFunctionInstrumenter:getStringRenderedPromptSanitizerWithConfiguration:);
  }

  else
  {
    *(v2 + 3960) = *v3;
    *(v2 + 3976) = v4;
    v15 = *(v3 + 80);
    v17 = *(v3 + 32);
    v16 = *(v3 + 48);
    *(v2 + 4024) = *(v3 + 64);
    *(v2 + 4040) = v15;
    *(v2 + 3992) = v17;
    *(v2 + 4008) = v16;
    v18 = *(v3 + 144);
    v20 = *(v3 + 96);
    v19 = *(v3 + 112);
    *(v2 + 4088) = *(v3 + 128);
    *(v2 + 4104) = v18;
    *(v2 + 4056) = v20;
    *(v2 + 4072) = v19;
    v22 = *(v3 + 176);
    v21 = *(v3 + 192);
    v23 = *(v3 + 160);
    *(v2 + 4168) = *(v3 + 208);
    *(v2 + 4136) = v22;
    *(v2 + 4152) = v21;
    *(v2 + 4120) = v23;
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v2 + 3960, &_s15TokenGeneration18SamplingParametersVSgMd, &_s15TokenGeneration18SamplingParametersVSgMR);

    v14 = closure #1 in TokenGenerator.completeGenerable<A>(type:configurationInput:generativeFunctionInstrumenter:getStringRenderedPromptSanitizerWithConfiguration:);
  }

  return MEMORY[0x1EEE6DFA0](v14, 0, 0);
}

{
  v2 = *v1;
  v3 = *v1 + 2232;
  *(*v1 + 9168) = v0;

  if (v0)
  {
    v4 = *(v2 + 8920);

    outlined destroy of SamplingParameters(v2 + 688);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v4, &_s29GenerativeFunctionsFoundation6SchemaVSgMd, &_s29GenerativeFunctionsFoundation6SchemaVSgMR);
    v5 = *(v3 + 16);
    *(v2 + 2664) = *v3;
    *(v2 + 2680) = v5;
    v6 = *(v3 + 80);
    v8 = *(v3 + 32);
    v7 = *(v3 + 48);
    *(v2 + 2728) = *(v3 + 64);
    *(v2 + 2744) = v6;
    *(v2 + 2696) = v8;
    *(v2 + 2712) = v7;
    v9 = *(v3 + 144);
    v11 = *(v3 + 96);
    v10 = *(v3 + 112);
    *(v2 + 2792) = *(v3 + 128);
    *(v2 + 2808) = v9;
    *(v2 + 2760) = v11;
    *(v2 + 2776) = v10;
    v13 = *(v3 + 176);
    v12 = *(v3 + 192);
    v14 = *(v3 + 160);
    *(v2 + 2872) = *(v3 + 208);
    *(v2 + 2840) = v13;
    *(v2 + 2856) = v12;
    *(v2 + 2824) = v14;
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v2 + 2664, &_s15TokenGeneration18SamplingParametersVSgMd, &_s15TokenGeneration18SamplingParametersVSgMR);
    v15 = closure #1 in TokenGenerator.completeGenerable<A>(type:configurationInput:generativeFunctionInstrumenter:getStringRenderedPromptSanitizerWithConfiguration:);
  }

  else
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(*(v2 + 8920), &_s29GenerativeFunctionsFoundation6SchemaVSgMd, &_s29GenerativeFunctionsFoundation6SchemaVSgMR);
    v16 = *(v3 + 16);
    *(v2 + 2880) = *v3;
    *(v2 + 2896) = v16;
    v17 = *(v3 + 64);
    v18 = *(v3 + 80);
    v19 = *(v3 + 48);
    *(v2 + 2912) = *(v3 + 32);
    *(v2 + 2960) = v18;
    *(v2 + 2944) = v17;
    *(v2 + 2928) = v19;
    v20 = *(v3 + 128);
    v21 = *(v3 + 144);
    v22 = *(v3 + 112);
    *(v2 + 2976) = *(v3 + 96);
    *(v2 + 3024) = v21;
    *(v2 + 3008) = v20;
    *(v2 + 2992) = v22;
    v24 = *(v3 + 176);
    v23 = *(v3 + 192);
    v25 = *(v3 + 208);
    *(v2 + 3040) = *(v3 + 160);
    *(v2 + 3088) = v25;
    *(v2 + 3072) = v23;
    *(v2 + 3056) = v24;
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v2 + 2880, &_s15TokenGeneration18SamplingParametersVSgMd, &_s15TokenGeneration18SamplingParametersVSgMR);
    v15 = closure #1 in TokenGenerator.completeGenerable<A>(type:configurationInput:generativeFunctionInstrumenter:getStringRenderedPromptSanitizerWithConfiguration:);
  }

  return MEMORY[0x1EEE6DFA0](v15, 0, 0);
}

{
  v2 = *v1;
  v3 = *v1 + 1136;
  *(*v1 + 9184) = v0;

  if (v0)
  {
    v4 = *(v2 + 8912);

    outlined destroy of SamplingParameters(v2 + 688);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v4, &_s29GenerativeFunctionsFoundation6SchemaVSgMd, &_s29GenerativeFunctionsFoundation6SchemaVSgMR);
    v5 = *(v3 + 16);
    *(v2 + 1584) = *v3;
    *(v2 + 1600) = v5;
    v6 = *(v3 + 64);
    v7 = *(v3 + 80);
    v8 = *(v3 + 48);
    *(v2 + 1616) = *(v3 + 32);
    *(v2 + 1664) = v7;
    *(v2 + 1648) = v6;
    *(v2 + 1632) = v8;
    v9 = *(v3 + 128);
    v10 = *(v3 + 144);
    v11 = *(v3 + 112);
    *(v2 + 1680) = *(v3 + 96);
    *(v2 + 1728) = v10;
    *(v2 + 1712) = v9;
    *(v2 + 1696) = v11;
    v13 = *(v3 + 176);
    v12 = *(v3 + 192);
    v14 = *(v3 + 208);
    *(v2 + 1744) = *(v3 + 160);
    *(v2 + 1792) = v14;
    *(v2 + 1776) = v12;
    *(v2 + 1760) = v13;
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v2 + 1584, &_s15TokenGeneration18SamplingParametersVSgMd, &_s15TokenGeneration18SamplingParametersVSgMR);
    v15 = closure #1 in TokenGenerator.completeGenerable<A>(type:configurationInput:generativeFunctionInstrumenter:getStringRenderedPromptSanitizerWithConfiguration:);
  }

  else
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(*(v2 + 8912), &_s29GenerativeFunctionsFoundation6SchemaVSgMd, &_s29GenerativeFunctionsFoundation6SchemaVSgMR);
    v16 = *(v3 + 16);
    *(v2 + 1800) = *v3;
    *(v2 + 1816) = v16;
    v17 = *(v3 + 80);
    v19 = *(v3 + 32);
    v18 = *(v3 + 48);
    *(v2 + 1864) = *(v3 + 64);
    *(v2 + 1880) = v17;
    *(v2 + 1832) = v19;
    *(v2 + 1848) = v18;
    v20 = *(v3 + 144);
    v22 = *(v3 + 96);
    v21 = *(v3 + 112);
    *(v2 + 1928) = *(v3 + 128);
    *(v2 + 1944) = v20;
    *(v2 + 1896) = v22;
    *(v2 + 1912) = v21;
    v24 = *(v3 + 176);
    v23 = *(v3 + 192);
    v25 = *(v3 + 160);
    *(v2 + 2008) = *(v3 + 208);
    *(v2 + 1976) = v24;
    *(v2 + 1992) = v23;
    *(v2 + 1960) = v25;
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v2 + 1800, &_s15TokenGeneration18SamplingParametersVSgMd, &_s15TokenGeneration18SamplingParametersVSgMR);
    v15 = closure #1 in TokenGenerator.completeGenerable<A>(type:configurationInput:generativeFunctionInstrumenter:getStringRenderedPromptSanitizerWithConfiguration:);
  }

  return MEMORY[0x1EEE6DFA0](v15, 0, 0);
}

{
  v1 = v0[1110];
  v2 = v0[1109];
  v3 = v0[1108];
  outlined init with take of TokenGeneratorResponsePromptCompletionStream(v0[1112], v0[1113], type metadata accessor for PromptCompletion);
  static String.Encoding.utf8.getter();
  v4 = String.data(using:allowLossyConversion:)();
  v6 = v5;
  v33 = v4;
  v0[1155] = v4;
  v0[1156] = v5;
  v7 = (*(v2 + 8))(v1, v3);
  v34 = v6;
  if (v6 >> 60 == 15)
  {
    __break(1u);
    return MEMORY[0x1EEE0B7E0](v7, v8, v9, v10);
  }

  v32 = v0[1153];
  v11 = v0[1089];
  outlined destroy of SamplingParameters((v0 + 86));

  __swift_project_boxed_opaque_existential_1(v11, v11[3]);
  GenerativeConfigurationProtocol.stringResponseSanitizer.getter();
  if (!v32)
  {
    v16 = v0[1104];
    v17 = v0[1103];
    v18 = v0[1102];
    if ((*(v16 + 48))(v18, 1, v17) == 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v18, &_s16GenerativeModels33StringResponseSanitizerWithRunnerVSgMd, &_s16GenerativeModels33StringResponseSanitizerWithRunnerVSgMR);
      v19 = 1;
    }

    else
    {
      v20 = v0[1097];
      (*(v16 + 32))(v0[1106], v18, v17);
      GenerativeFunctionInstrumenter.userRequestIdentifier.getter();
      TokenGenerator.responseSanitizerConfiguration(userRequestIdentifier:)(v20, MEMORY[0x1E69A1558]);
      v21 = v0[1106];
      v22 = v0[1105];
      v23 = v0[1104];
      v24 = v0[1103];
      v25 = v0[1101];
      v26 = v0[1100];
      v27 = v0[1099];
      v28 = v0[1098];
      (*(v0[1096] + 8))(v0[1097], v0[1095]);
      (*(v23 + 16))(v22, v21, v24);
      (*(v27 + 16))(v26, v25, v28);
      StringResponseSanitizerWithConfiguration.init(stringResponseSanitizer:configuration:)();
      (*(v27 + 8))(v25, v28);
      (*(v23 + 8))(v21, v24);
      v19 = 0;
    }

    v29 = v0[1107];
    v30 = type metadata accessor for StringResponseSanitizerWithConfiguration();
    (*(*(v30 - 8) + 56))(v29, v19, 1, v30);
    v31 = swift_task_alloc();
    v0[1157] = v31;
    *v31 = v0;
    v31[1] = closure #1 in TokenGenerator.completeGenerable<A>(type:configurationInput:generativeFunctionInstrumenter:getStringRenderedPromptSanitizerWithConfiguration:);
    v10 = v0[1107];
    v7 = v0[1088];
    v8 = v33;
    v9 = v34;

    return MEMORY[0x1EEE0B7E0](v7, v8, v9, v10);
  }

  v12 = v0[1124];
  v13 = v0[1113];
  outlined consume of Data?(v33, v34);

  outlined destroy of TokenGeneratorCompletionResponseStringStream(v13, type metadata accessor for PromptCompletion);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v12, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);

  v14 = v0[1];

  return v14();
}

{
  v2 = *v1;
  *(*v1 + 9264) = v0;

  if (v0)
  {
    v3 = closure #1 in TokenGenerator.completeGenerable<A>(type:configurationInput:generativeFunctionInstrumenter:getStringRenderedPromptSanitizerWithConfiguration:);
  }

  else
  {
    *(v2 + 2012) = *(swift_getTupleTypeMetadata2() + 48);
    v3 = closure #1 in TokenGenerator.completeGenerable<A>(type:configurationInput:generativeFunctionInstrumenter:getStringRenderedPromptSanitizerWithConfiguration:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = *(v0 + 2012);
  v2 = *(v0 + 8992);
  v3 = *(v0 + 8904);
  v4 = *(v0 + 8856);
  v5 = *(v0 + 8704);
  outlined consume of Data?(*(v0 + 9240), *(v0 + 9248));

  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v4, &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v2, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
  outlined init with take of TokenGeneratorResponsePromptCompletionStream(v3, v5 + v1, type metadata accessor for PromptCompletion);

  v6 = *(v0 + 8);

  return v6();
}

{
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(*(v0 + 8992), &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);

  v1 = *(v0 + 8);

  return v1();
}

{
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(*(v0 + 8992), &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = v0[1124];
  (*(v0[1119] + 8))(v0[1120], v0[1118]);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v1, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);

  v2 = v0[1];

  return v2();
}

{
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(*(v0 + 8992), &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);

  v1 = *(v0 + 8);

  return v1();
}

{
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(*(v0 + 8992), &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);

  v1 = *(v0 + 8);

  return v1();
}

{
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(*(v0 + 8992), &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);

  v1 = *(v0 + 8);

  return v1();
}

{
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(*(v0 + 8992), &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = *(v0 + 8992);

  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v1, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);

  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = v0[1124];
  v2 = v0[1113];
  v3 = v0[1107];
  outlined consume of Data?(v0[1155], v0[1156]);

  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v3, &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMR);
  outlined destroy of TokenGeneratorCompletionResponseStringStream(v2, type metadata accessor for PromptCompletion);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v1, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);

  v4 = v0[1];

  return v4();
}

uint64_t closure #1 in TokenGenerator.completeGenerable<A>(type:configurationInput:generativeFunctionInstrumenter:getStringRenderedPromptSanitizerWithConfiguration:)(uint64_t a1, uint64_t a2)
{
  v5 = *v3;
  v5[1152] = a2;
  v5[1153] = v2;

  if (v2)
  {
    outlined destroy of SamplingParameters((v5 + 86));

    v6 = closure #1 in TokenGenerator.completeGenerable<A>(type:configurationInput:generativeFunctionInstrumenter:getStringRenderedPromptSanitizerWithConfiguration:);
  }

  else
  {
    v5[1154] = a1;
    v6 = closure #1 in TokenGenerator.completeGenerable<A>(type:configurationInput:generativeFunctionInstrumenter:getStringRenderedPromptSanitizerWithConfiguration:);
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t TokenGeneratorCompletionResponse.inferenceResponse.getter@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = type metadata accessor for InferenceResponse();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t TokenGenerator._complete<A, B>(type:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  type metadata accessor for TokenGeneratorCompletionResponseOneShotGenerableAdditionalInfo(0);
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  v16 = swift_task_alloc();
  *(v7 + 24) = v16;
  *v16 = v7;
  v16[1] = TokenGenerator._complete<A, B>(type:configuration:);

  return TokenGenerator._oneShotCompletion<A, B>(type:configuration:)(a1, v15, a2, a3, a4, a5, a6, a7);
}

uint64_t TokenGenerator._complete<A, B>(type:configuration:)()
{
  v2 = *v1;
  *(*v1 + 32) = v0;

  if (v0)
  {
    v3 = TokenGenerator._complete<A, B>(type:configuration:);
  }

  else
  {
    outlined destroy of TokenGeneratorCompletionResponseStringStream(*(v2 + 16), type metadata accessor for TokenGeneratorCompletionResponseOneShotGenerableAdditionalInfo);
    v3 = TokenGenerator._complete<A, B>(type:configuration:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t TokenGenerator._oneShotCompletion<A, B>(type:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[17] = a8;
  v9[18] = v8;
  v9[15] = a6;
  v9[16] = a7;
  v9[13] = a4;
  v9[14] = a5;
  v9[11] = a2;
  v9[12] = a3;
  v9[10] = a1;
  v11 = *(a6 - 8);
  v9[19] = v11;
  v9[20] = *(v11 + 64);
  v9[21] = swift_task_alloc();
  type metadata accessor for PromptCompletion(0);
  v9[22] = swift_task_alloc();
  v9[23] = swift_task_alloc();
  v9[24] = *(a5 - 8);
  v9[25] = swift_task_alloc();
  v9[26] = swift_task_alloc();
  v12 = type metadata accessor for GenerativeFunctionInstrumenter();
  v9[27] = v12;
  v9[28] = *(v12 - 8);
  v9[29] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](TokenGenerator._oneShotCompletion<A, B>(type:configuration:), 0, 0);
}

uint64_t TokenGenerator._oneShotCompletion<A, B>(type:configuration:)(__n128 a1)
{
  v2 = *(v1 + 144);
  if (*(v2 + 24))
  {
  }

  v23 = *(v1 + 232);
  v3 = *(v1 + 168);
  v4 = *(v1 + 152);
  v5 = *(v1 + 136);
  v21 = *(v1 + 128);
  v6 = *(v1 + 112);
  v7 = *(v1 + 120);
  v8 = *(v1 + 104);
  GenerativeConfigurationProtocol.generateGenerativeFunctionInstrumenter(useCaseIdentifier:eventReporter:)();

  *(v1 + 40) = v7;
  *(v1 + 48) = v5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v1 + 16));
  v10 = *(v4 + 16);
  v10(boxed_opaque_existential_1, v8, v7);
  v10(v3, v8, v7);
  v11 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v12 = swift_allocObject();
  *(v12 + 2) = v6;
  *(v12 + 3) = v7;
  *(v12 + 4) = v21;
  *(v12 + 5) = v5;
  (*(v4 + 32))(&v12[v11], v3, v7);
  *(v1 + 56) = &async function pointer to partial apply for closure #1 in TokenGenerator._oneShotCompletion<A, B>(type:configuration:);
  *(v1 + 64) = v12;
  *(v1 + 72) = 0;
  v13 = swift_task_alloc();
  *(v1 + 240) = v13;
  v13[2] = v6;
  v13[3] = v7;
  v13[4] = v21;
  v13[5] = v5;
  v13[6] = v8;
  v13[7] = v2;
  v13[8] = v23;
  v14 = swift_task_alloc();
  *(v1 + 248) = v14;
  *v14 = v1;
  v14[1] = TokenGenerator._oneShotCompletion<A, B>(type:configuration:);
  v15 = *(v1 + 232);
  v16 = *(v1 + 208);
  v17 = *(v1 + 184);
  v18 = *(v1 + 112);
  v19 = *(v1 + 96);

  return TokenGenerator.completeGenerable<A>(type:configurationInput:generativeFunctionInstrumenter:getStringRenderedPromptSanitizerWithConfiguration:)(v16, v17, v19, v1 + 16, v15, &async function pointer to partial apply for closure #2 in TokenGenerator._oneShotCompletion<A, B>(type:configuration:), v13, v18);
}

uint64_t TokenGenerator._oneShotCompletion<A, B>(type:configuration:)()
{
  v2 = *v1;
  *(*v1 + 256) = v0;

  if (v0)
  {
    v3 = TokenGenerator._oneShotCompletion<A, B>(type:configuration:);
  }

  else
  {

    outlined destroy of TokenGenerator.CompleteGenerableConfigurationInput(v2 + 16);
    v3 = TokenGenerator._oneShotCompletion<A, B>(type:configuration:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = v0[28];
  v2 = v0[26];
  v11 = v0[27];
  v12 = v0[29];
  v3 = v0[24];
  v4 = v0[22];
  v5 = v0[23];
  v6 = v0[14];
  v7 = v0[11];
  (*(v3 + 16))(v0[25], v2, v6);
  CompletionResponse.init(content:)();
  outlined init with copy of PromptCompletion(v5, v7, type metadata accessor for PromptCompletion);
  outlined init with copy of PromptCompletion(v5, v4, type metadata accessor for PromptCompletion);
  v8 = type metadata accessor for TokenGeneratorCompletionResponseOneShotGenerableAdditionalInfo(0);
  InferenceResponse.init(_:)(v4, v7 + *(v8 + 20));
  outlined destroy of TokenGeneratorCompletionResponseStringStream(v5, type metadata accessor for PromptCompletion);
  (*(v3 + 8))(v2, v6);
  (*(v1 + 8))(v12, v11);

  v9 = v0[1];

  return v9();
}

{
  v1 = v0[29];
  v2 = v0[27];
  v3 = v0[28];

  outlined destroy of TokenGenerator.CompleteGenerableConfigurationInput((v0 + 2));
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t closure #1 in TokenGenerator._oneShotCompletion<A, B>(type:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a4;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a2;
  type metadata accessor for RunnableConfigurationStorage();
  v6[6] = swift_task_alloc();
  type metadata accessor for OverridableConfigurationStorage();
  v6[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in TokenGenerator._oneShotCompletion<A, B>(type:configuration:), 0, 0);
}

uint64_t closure #2 in TokenGenerator._oneShotCompletion<A, B>(type:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a6;
  v8[7] = a8;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  v9 = type metadata accessor for UUID();
  v8[8] = v9;
  v8[9] = *(v9 - 8);
  v8[10] = swift_task_alloc();
  v10 = type metadata accessor for StringRenderedPromptSanitizerRunnerConfiguration();
  v8[11] = v10;
  v8[12] = *(v10 - 8);
  v8[13] = swift_task_alloc();
  v8[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16GenerativeModels39StringRenderedPromptSanitizerWithRunnerVSgMd, &_s16GenerativeModels39StringRenderedPromptSanitizerWithRunnerVSgMR);
  v8[15] = swift_task_alloc();
  v11 = type metadata accessor for StringRenderedPromptSanitizerWithRunner();
  v8[16] = v11;
  v8[17] = *(v11 - 8);
  v8[18] = swift_task_alloc();
  v8[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #2 in TokenGenerator._oneShotCompletion<A, B>(type:configuration:), 0, 0);
}

uint64_t protocol witness for CompletionLanguageModelProvidingOneShotGenerable._oneShotCompletion<A, B>(type:configuration:) in conformance TokenGenerator(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return TokenGenerator._oneShotCompletion<A, B>(type:configuration:)(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t TokenGenerator._completeSingleElement<A, B>(type:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[9] = a7;
  v8[10] = v7;
  v8[7] = a5;
  v8[8] = a6;
  v8[5] = a3;
  v8[6] = a4;
  v8[3] = a1;
  v8[4] = a2;
  v9 = type metadata accessor for GenerativeFunctionInstrumenter();
  v8[11] = v9;
  v8[12] = *(v9 - 8);
  v8[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](TokenGenerator._completeSingleElement<A, B>(type:configuration:), 0, 0);
}

uint64_t TokenGenerator._completeSingleElement<A, B>(type:configuration:)(__n128 a1)
{
  v2 = v1[10];
  if (*(v2 + 24))
  {
  }

  v17 = v1[13];
  v3 = v1[8];
  v4 = v1[9];
  v5 = v1[6];
  v6 = v1[7];
  v7 = v1[5];
  GenerativeConfigurationProtocol.generateGenerativeFunctionInstrumenter(useCaseIdentifier:eventReporter:)();

  v1[2] = 0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = swift_allocObject();
  v1[14] = v9;
  *(v9 + 16) = v1 + 2;
  v10 = swift_task_alloc();
  v1[15] = v10;
  v10[2] = v5;
  v10[3] = v6;
  v10[4] = v3;
  v10[5] = v4;
  v10[6] = v7;
  v10[7] = v2;
  v10[8] = v17;
  v11 = swift_task_alloc();
  v1[16] = v11;
  swift_getAssociatedConformanceWitness();
  *v11 = v1;
  v11[1] = TokenGenerator._completeSingleElement<A, B>(type:configuration:);
  v12 = v1[13];
  v13 = v1[5];
  v14 = v1[4];
  v15 = v1[3];

  return TokenGenerator._complete<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:)(v15, v14, v13, AssociatedTypeWitness, v12, partial apply for specialized closure #1 in TokenGenerator._completeSingleElement<A, B>(type:configuration:), v9, &async function pointer to partial apply for closure #2 in TokenGenerator._completeSingleElement<A, B>(type:configuration:));
}

uint64_t TokenGenerator._completeSingleElement<A, B>(type:configuration:)()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = TokenGenerator._completeSingleElement<A, B>(type:configuration:);
  }

  else
  {

    v2 = TokenGenerator._completeSingleElement<A, B>(type:configuration:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t closure #2 in TokenGenerator._completeSingleElement<A, B>(type:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 168) = v15;
  *(v8 + 152) = v14;
  *(v8 + 136) = a7;
  *(v8 + 144) = a8;
  *(v8 + 120) = a5;
  *(v8 + 128) = a6;
  *(v8 + 312) = a4;
  *(v8 + 104) = a2;
  *(v8 + 112) = a3;
  *(v8 + 96) = a1;
  v9 = type metadata accessor for UUID();
  *(v8 + 176) = v9;
  *(v8 + 184) = *(v9 - 8);
  *(v8 + 192) = swift_task_alloc();
  type metadata accessor for StringResponseSanitizerRunnerConfiguration();
  *(v8 + 200) = swift_task_alloc();
  v10 = type metadata accessor for StringResponseSanitizerWithConfiguration();
  *(v8 + 208) = v10;
  *(v8 + 216) = *(v10 - 8);
  *(v8 + 224) = swift_task_alloc();
  v11 = type metadata accessor for StringResponseSanitizerWithRunner();
  *(v8 + 232) = v11;
  *(v8 + 240) = *(v11 - 8);
  *(v8 + 248) = swift_task_alloc();
  *(v8 + 256) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16GenerativeModels33StringResponseSanitizerWithRunnerVSgMd, &_s16GenerativeModels33StringResponseSanitizerWithRunnerVSgMR);
  *(v8 + 264) = swift_task_alloc();
  *(v8 + 272) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #2 in TokenGenerator._completeSingleElement<A, B>(type:configuration:), 0, 0);
}

uint64_t closure #2 in TokenGenerator._completeSingleElement<A, B>(type:configuration:)()
{
  GenerativeConfigurationProtocol.stringResponseSanitizer.getter();
  v1 = *(v0 + 264);
  v2 = *(v0 + 232);
  v3 = *(v0 + 240);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(*(v0 + 272), v1, &_s16GenerativeModels33StringResponseSanitizerWithRunnerVSgMd, &_s16GenerativeModels33StringResponseSanitizerWithRunnerVSgMR);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 312);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(*(v0 + 264), &_s16GenerativeModels33StringResponseSanitizerWithRunnerVSgMd, &_s16GenerativeModels33StringResponseSanitizerWithRunnerVSgMR);
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0;
    *(v0 + 16) = 0u;
    v5 = swift_task_alloc();
    *(v0 + 280) = v5;
    *v5 = v0;
    v5[1] = closure #2 in TokenGenerator._completeSingleElement<A, B>(type:configuration:);
    v6 = *(v0 + 160);
    v7 = *(v0 + 144);
    v8 = *(v0 + 104);
    v9 = *(v0 + 112);
    v10 = *(v0 + 96);
    v11 = v4 & 1;
    v12 = v0 + 16;
  }

  else
  {
    v13 = *(v0 + 256);
    v15 = *(v0 + 240);
    v14 = *(v0 + 248);
    v16 = *(v0 + 232);
    v17 = *(v0 + 192);
    (*(v15 + 32))(v13, *(v0 + 264), v16);
    (*(v15 + 16))(v14, v13, v16);
    GenerativeFunctionInstrumenter.userRequestIdentifier.getter();
    TokenGenerator.responseSanitizerConfiguration(userRequestIdentifier:)(v17, MEMORY[0x1E69A1558]);
    v19 = *(v0 + 216);
    v18 = *(v0 + 224);
    v20 = *(v0 + 208);
    v21 = *(v0 + 312);
    (*(*(v0 + 184) + 8))(*(v0 + 192), *(v0 + 176));
    StringResponseSanitizerWithConfiguration.init(stringResponseSanitizer:configuration:)();
    *(v0 + 80) = v20;
    *(v0 + 88) = lazy protocol witness table accessor for type TokenGeneratorCompletionResponse and conformance TokenGeneratorCompletionResponse(&lazy protocol witness table cache variable for type StringResponseSanitizerWithConfiguration and conformance StringResponseSanitizerWithConfiguration, MEMORY[0x1E69A1550], MEMORY[0x1E69A1540]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 56));
    (*(v19 + 16))(boxed_opaque_existential_1, v18, v20);
    v23 = swift_task_alloc();
    *(v0 + 296) = v23;
    *v23 = v0;
    v23[1] = closure #2 in TokenGenerator._completeSingleElement<A, B>(type:configuration:);
    v6 = *(v0 + 160);
    v7 = *(v0 + 144);
    v8 = *(v0 + 104);
    v9 = *(v0 + 112);
    v10 = *(v0 + 96);
    v11 = v21 & 1;
    v12 = v0 + 56;
  }

  return MEMORY[0x1EEE0A3C8](v10, v8, v9, v11, v7, v12, v7, v6);
}

{
  v2 = *v1;
  *(v2 + 288) = v0;

  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v2 + 16, &_s19GenerativeFunctions16_StreamSanitizer_pSgMd, &_s19GenerativeFunctions16_StreamSanitizer_pSgMR);
  if (v0)
  {
    v3 = closure #2 in TokenGenerator._completeSingleElement<A, B>(type:configuration:);
  }

  else
  {
    v3 = closure #2 in TokenGenerator._completeSingleElement<A, B>(type:configuration:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v2 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    v3 = closure #2 in TokenGenerator._completeSingleElement<A, B>(type:configuration:);
  }

  else
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v2 + 56, &_s19GenerativeFunctions16_StreamSanitizer_pSgMd, &_s19GenerativeFunctions16_StreamSanitizer_pSgMR);
    v3 = closure #2 in TokenGenerator._completeSingleElement<A, B>(type:configuration:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t TokenGenerator._complete<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 1440) = v8;
  *(v9 + 1432) = v21;
  *(v9 + 1416) = v20;
  *(v9 + 1408) = v19;
  *(v9 + 1400) = v18;
  *(v9 + 1392) = v17;
  *(v9 + 1376) = v16;
  *(v9 + 1368) = a8;
  *(v9 + 1360) = a5;
  *(v9 + 1352) = a4;
  *(v9 + 1344) = a3;
  *(v9 + 1336) = a1;
  *(v9 + 1448) = *v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s34GenerativeFunctionsInstrumentation0A20FunctionInstrumenterVSgMd, &_s34GenerativeFunctionsInstrumentation0A20FunctionInstrumenterVSgMR);
  *(v9 + 1456) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScsySSs5Error_pGMd, &_sScsySSs5Error_pGMR);
  *(v9 + 1464) = v10;
  *(v9 + 1472) = *(v10 - 8);
  *(v9 + 1480) = swift_task_alloc();
  v11 = *(v19 - 8);
  *(v9 + 1488) = v11;
  *(v9 + 1496) = *(v11 + 64);
  *(v9 + 1504) = swift_task_alloc();
  *(v9 + 1512) = swift_task_alloc();
  v12 = type metadata accessor for GenerativeFunctionInstrumenter();
  *(v9 + 1520) = v12;
  v13 = *(v12 - 8);
  *(v9 + 1528) = v13;
  *(v9 + 1536) = *(v13 + 64);
  *(v9 + 1544) = swift_task_alloc();
  *(v9 + 1552) = swift_task_alloc();
  *(v9 + 1560) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScsySSs5Error_pG6result_Sd8durationtMd, &_sScsySSs5Error_pG6result_Sd8durationtMR);
  *(v9 + 1568) = swift_task_alloc();
  *(v9 + 1576) = swift_task_alloc();
  *(v9 + 1584) = *(v18 - 8);
  *(v9 + 1592) = swift_task_alloc();
  *(v9 + 1600) = swift_task_alloc();
  *(v9 + 1608) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](TokenGenerator._complete<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:), 0, 0);
}

uint64_t TokenGenerator._complete<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:)()
{
  GenerativeConfigurationProtocol.samplingParameters.getter(*(v0 + 1408), *(v0 + 1432), v0 + 16);
  v2 = *(v0 + 176);
  v1 = *(v0 + 192);
  v3 = *(v0 + 160);
  *(v0 + 616) = v2;
  *(v0 + 632) = v1;
  v4 = *(v0 + 192);
  *(v0 + 648) = *(v0 + 208);
  v6 = *(v0 + 112);
  v5 = *(v0 + 128);
  v7 = *(v0 + 96);
  *(v0 + 552) = v6;
  *(v0 + 568) = v5;
  v8 = *(v0 + 128);
  v10 = *(v0 + 144);
  v9 = *(v0 + 160);
  *(v0 + 584) = v10;
  *(v0 + 600) = v9;
  v12 = *(v0 + 48);
  v11 = *(v0 + 64);
  v13 = *(v0 + 32);
  *(v0 + 488) = v12;
  *(v0 + 504) = v11;
  v14 = *(v0 + 64);
  v16 = *(v0 + 80);
  v15 = *(v0 + 96);
  *(v0 + 520) = v16;
  *(v0 + 536) = v15;
  v17 = *(v0 + 32);
  v18 = *(v0 + 16);
  *(v0 + 456) = v18;
  *(v0 + 472) = v17;
  *(v0 + 400) = v2;
  *(v0 + 416) = v4;
  *(v0 + 432) = *(v0 + 208);
  *(v0 + 336) = v6;
  *(v0 + 352) = v8;
  *(v0 + 368) = v10;
  *(v0 + 384) = v3;
  *(v0 + 272) = v12;
  *(v0 + 288) = v14;
  *(v0 + 304) = v16;
  *(v0 + 320) = v7;
  *(v0 + 664) = *(v0 + 224);
  *(v0 + 448) = *(v0 + 224);
  *(v0 + 240) = v18;
  *(v0 + 256) = v13;
  if (_s15TokenGeneration26SamplingParametersEnvelopeVSgWOg(v0 + 240) == 1)
  {
    v62 = 1;
    v19 = 0;
  }

  else
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0 + 456, &_s15TokenGeneration18SamplingParametersVSgMd, &_s15TokenGeneration18SamplingParametersVSgMR);
    v19 = *(v0 + 344);
    v62 = *(v0 + 352);
  }

  v20 = *(v0 + 1528);
  v21 = *(v0 + 1520);
  v22 = *(v0 + 1512);
  v51 = *(v0 + 1544);
  v52 = *(v0 + 1504);
  v54 = *(v0 + 1496);
  v55 = *(v0 + 1536);
  v23 = *(v0 + 1488);
  v61 = *(v0 + 1440);
  v59 = *(v0 + 1400);
  v60 = *(v0 + 1352);
  v50 = *(v0 + 1344);
  v24 = *(v20 + 16);
  v56 = *(v0 + 1408);
  v25 = *(v0 + 1408);
  v53 = v25;
  v57 = *(v0 + 1424);
  v58 = *(v0 + 1384);
  v26 = *(v0 + 1552);
  v24();
  v27 = *(v23 + 16);
  v27(v22, v50, v25);
  (v24)(v51, v26, v21);
  v27(v52, v22, v25);
  v28 = (*(v20 + 80) + 72) & ~*(v20 + 80);
  v29 = (v55 + *(v23 + 80) + v28) & ~*(v23 + 80);
  v30 = (v54 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  *(v0 + 1616) = v31;
  *(v31 + 16) = v58;
  *(v31 + 32) = v59;
  *(v31 + 40) = v56;
  *(v31 + 56) = v57;
  (*(v20 + 32))(v31 + v28, v26, v21);
  (*(v23 + 32))(v31 + v29, v22, v53);
  *(v31 + v30) = v61;
  *(v31 + ((v30 + 15) & 0xFFFFFFFFFFFFFFF8)) = v60;

  if (v62)
  {
    *(v0 + 1648) = mach_absolute_time();
    v32 = swift_task_alloc();
    *(v0 + 1656) = v32;
    *v32 = v0;
    v32[1] = TokenGenerator._complete<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:);
    v33 = *(v0 + 1544);
    v34 = *(v0 + 1504);
    v35 = *(v0 + 1480);
    v36 = *(v0 + 1440);
    v37 = *(v0 + 1400);
    v38 = *(v0 + 1392);
    v39 = *(v0 + 1384);
    v40 = *(v0 + 1352);

    return closure #1 in TokenGenerator._complete<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:)(v35, v33, v34, v36, v40, v39, v38, v37);
  }

  else
  {
    v42 = *(v0 + 1504);
    v43 = *(v0 + 1488);
    v44 = *(v0 + 1408);
    (*(*(v0 + 1528) + 8))(*(v0 + 1544), *(v0 + 1520));
    (*(v43 + 8))(v42, v44);
    v45 = swift_task_alloc();
    *(v0 + 1624) = v45;
    v45[2] = &async function pointer to partial apply for closure #1 in TokenGenerator._complete<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:);
    v45[3] = v31;
    v45[4] = v19;
    v46 = swift_task_alloc();
    *(v0 + 1632) = v46;
    *v46 = v0;
    v46[1] = TokenGenerator._complete<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:);
    v47 = *(v0 + 1568);
    v48 = *(v0 + 1560);
    v49 = *(v0 + 1464);

    return MEMORY[0x1EEE6DD58](v47, v49, v48, 0, 0, &closure #1 in withTimeout<A>(timeout:_:)specialized partial apply, v45, v49);
  }
}

{
  *(*v1 + 1640) = v0;

  if (v0)
  {
    v2 = TokenGenerator._complete<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:);
  }

  else
  {

    v2 = TokenGenerator._complete<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v2 = *v1;
  *(*v1 + 1664) = v0;

  v3 = v2[188];
  v4 = v2[186];
  v5 = v2[176];
  (*(v2[191] + 8))(v2[193], v2[190]);
  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = TokenGenerator._complete<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:);
  }

  else
  {
    v6 = TokenGenerator._complete<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:);
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

{
  v1 = *(v0 + 1576);
  v2 = *(v0 + 1568);
  v3 = *(v0 + 1560);
  v4 = *(v0 + 1472);
  v5 = *(v0 + 1464);

  v6 = *(v2 + *(v3 + 48));
  (*(v4 + 32))(v1, v2, v5);
  v7 = *(v0 + 1640);
  v8 = *(v0 + 1432);
  v9 = *(v0 + 1408);
  *(*(v0 + 1576) + *(*(v0 + 1560) + 48)) = v6;
  *(v0 + 1320) = 0;
  *(v0 + 1328) = 1;
  GenerativeConfigurationProtocol.samplingParameters.getter(v9, v8, v0 + 672);
  if (v7)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(*(v0 + 1576), &_sScsySSs5Error_pG6result_Sd8durationtMd, &_sScsySSs5Error_pG6result_Sd8durationtMR);
    MEMORY[0x1AC5A6AE0](v7);
    GenerativeFunctionInstrumenter.executionEnd(error:)();

    swift_willThrow();

    v10 = *(v0 + 8);

    return v10();
  }

  else
  {
    v13 = *(v0 + 832);
    v12 = *(v0 + 848);
    v14 = *(v0 + 816);
    *(v0 + 1264) = v13;
    *(v0 + 1280) = v12;
    v15 = *(v0 + 848);
    *(v0 + 1296) = *(v0 + 864);
    v17 = *(v0 + 768);
    v16 = *(v0 + 784);
    v18 = *(v0 + 752);
    *(v0 + 1200) = v17;
    *(v0 + 1216) = v16;
    v19 = *(v0 + 784);
    v21 = *(v0 + 800);
    v20 = *(v0 + 816);
    *(v0 + 1232) = v21;
    *(v0 + 1248) = v20;
    v23 = *(v0 + 704);
    v22 = *(v0 + 720);
    v24 = *(v0 + 688);
    *(v0 + 1136) = v23;
    *(v0 + 1152) = v22;
    v25 = *(v0 + 720);
    v27 = *(v0 + 736);
    v26 = *(v0 + 752);
    *(v0 + 1168) = v27;
    *(v0 + 1184) = v26;
    v28 = *(v0 + 688);
    v29 = *(v0 + 672);
    *(v0 + 1104) = v29;
    *(v0 + 1120) = v28;
    *(v0 + 1048) = v13;
    *(v0 + 1064) = v15;
    *(v0 + 1080) = *(v0 + 864);
    *(v0 + 984) = v17;
    *(v0 + 1000) = v19;
    *(v0 + 1016) = v21;
    *(v0 + 1032) = v14;
    *(v0 + 920) = v23;
    *(v0 + 936) = v25;
    *(v0 + 952) = v27;
    *(v0 + 968) = v18;
    *(v0 + 1312) = *(v0 + 880);
    *(v0 + 1096) = *(v0 + 880);
    *(v0 + 888) = v29;
    *(v0 + 904) = v24;
    if (_s15TokenGeneration26SamplingParametersEnvelopeVSgWOg(v0 + 888) != 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0 + 1104, &_s15TokenGeneration18SamplingParametersVSgMd, &_s15TokenGeneration18SamplingParametersVSgMR);
      if ((*(v0 + 1000) & 1) == 0)
      {
        *(v0 + 1320) = *(v0 + 992) - v6;
        *(v0 + 1328) = 0;
      }
    }

    v30 = *(v0 + 1576);
    v31 = *(v0 + 1432);
    v38 = *(v0 + 1416);
    v39 = *(v0 + 1400);
    v36 = *(v0 + 1384);
    v37 = *(v0 + 1368);
    (*(*(v0 + 1528) + 56))(*(v0 + 1456), 1, 1, *(v0 + 1520));
    v32 = swift_task_alloc();
    *(v0 + 1672) = v32;
    *(v32 + 16) = v36;
    *(v32 + 32) = v39;
    *(v32 + 48) = v38;
    *(v32 + 64) = v31;
    *(v32 + 72) = v37;
    *(v32 + 88) = v30;
    *(v32 + 96) = v0 + 1320;
    v33 = swift_task_alloc();
    *(v0 + 1680) = v33;
    *v33 = v0;
    v33[1] = TokenGenerator._complete<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:);
    v34 = *(v0 + 1600);
    v35 = *(v0 + 1456);

    return static TokenGenerator.mapErrorToGenerativeFunctionsModelError<A>(generativeFunctionInstrumenter:_:)(v34, v35, &async function pointer to partial apply for closure #2 in TokenGenerator._complete<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:));
  }
}

{

  v1 = *(v0 + 1640);
  MEMORY[0x1AC5A6AE0](v1);
  GenerativeFunctionInstrumenter.executionEnd(error:)();

  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = *(v0 + 1648);
  (*(*(v0 + 1472) + 16))(*(v0 + 1576), *(v0 + 1480), *(v0 + 1464));
  v2 = mach_absolute_time();
  v3 = v2 >= v1;
  v4 = v2 - v1;
  if (!v3)
  {
    __break(1u);
  }

  *(v0 + 228) = 0;
  v5 = *(v0 + 1480);
  v6 = *(v0 + 1472);
  v7 = *(v0 + 1464);
  *(v0 + 232) = 0;
  mach_timebase_info((v0 + 228));

  (*(v6 + 8))(v5, v7);
  LODWORD(v8) = *(v0 + 228);
  LODWORD(v9) = *(v0 + 232);
  v10 = v4 * v8 / (v9 * 1000000000.0);
  v11 = *(v0 + 1664);
  v12 = *(v0 + 1432);
  v13 = *(v0 + 1408);
  *(*(v0 + 1576) + *(*(v0 + 1560) + 48)) = v10;
  *(v0 + 1320) = 0;
  *(v0 + 1328) = 1;
  GenerativeConfigurationProtocol.samplingParameters.getter(v13, v12, v0 + 672);
  if (v11)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(*(v0 + 1576), &_sScsySSs5Error_pG6result_Sd8durationtMd, &_sScsySSs5Error_pG6result_Sd8durationtMR);
    MEMORY[0x1AC5A6AE0](v11);
    GenerativeFunctionInstrumenter.executionEnd(error:)();

    swift_willThrow();

    v14 = *(v0 + 8);

    return v14();
  }

  else
  {
    v17 = *(v0 + 832);
    v16 = *(v0 + 848);
    v18 = *(v0 + 816);
    *(v0 + 1264) = v17;
    *(v0 + 1280) = v16;
    v19 = *(v0 + 848);
    *(v0 + 1296) = *(v0 + 864);
    v21 = *(v0 + 768);
    v20 = *(v0 + 784);
    v22 = *(v0 + 752);
    *(v0 + 1200) = v21;
    *(v0 + 1216) = v20;
    v23 = *(v0 + 784);
    v25 = *(v0 + 800);
    v24 = *(v0 + 816);
    *(v0 + 1232) = v25;
    *(v0 + 1248) = v24;
    v27 = *(v0 + 704);
    v26 = *(v0 + 720);
    v28 = *(v0 + 688);
    *(v0 + 1136) = v27;
    *(v0 + 1152) = v26;
    v29 = *(v0 + 720);
    v31 = *(v0 + 736);
    v30 = *(v0 + 752);
    *(v0 + 1168) = v31;
    *(v0 + 1184) = v30;
    v32 = *(v0 + 688);
    v33 = *(v0 + 672);
    *(v0 + 1104) = v33;
    *(v0 + 1120) = v32;
    *(v0 + 1048) = v17;
    *(v0 + 1064) = v19;
    *(v0 + 1080) = *(v0 + 864);
    *(v0 + 984) = v21;
    *(v0 + 1000) = v23;
    *(v0 + 1016) = v25;
    *(v0 + 1032) = v18;
    *(v0 + 920) = v27;
    *(v0 + 936) = v29;
    *(v0 + 952) = v31;
    *(v0 + 968) = v22;
    *(v0 + 1312) = *(v0 + 880);
    *(v0 + 1096) = *(v0 + 880);
    *(v0 + 888) = v33;
    *(v0 + 904) = v28;
    if (_s15TokenGeneration26SamplingParametersEnvelopeVSgWOg(v0 + 888) != 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0 + 1104, &_s15TokenGeneration18SamplingParametersVSgMd, &_s15TokenGeneration18SamplingParametersVSgMR);
      if ((*(v0 + 1000) & 1) == 0)
      {
        *(v0 + 1320) = *(v0 + 992) - v10;
        *(v0 + 1328) = 0;
      }
    }

    v34 = *(v0 + 1576);
    v35 = *(v0 + 1432);
    v42 = *(v0 + 1416);
    v43 = *(v0 + 1400);
    v40 = *(v0 + 1384);
    v41 = *(v0 + 1368);
    (*(*(v0 + 1528) + 56))(*(v0 + 1456), 1, 1, *(v0 + 1520));
    v36 = swift_task_alloc();
    *(v0 + 1672) = v36;
    *(v36 + 16) = v40;
    *(v36 + 32) = v43;
    *(v36 + 48) = v42;
    *(v36 + 64) = v35;
    *(v36 + 72) = v41;
    *(v36 + 88) = v34;
    *(v36 + 96) = v0 + 1320;
    v37 = swift_task_alloc();
    *(v0 + 1680) = v37;
    *v37 = v0;
    v37[1] = TokenGenerator._complete<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:);
    v38 = *(v0 + 1600);
    v39 = *(v0 + 1456);

    return static TokenGenerator.mapErrorToGenerativeFunctionsModelError<A>(generativeFunctionInstrumenter:_:)(v38, v39, &async function pointer to partial apply for closure #2 in TokenGenerator._complete<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:));
  }
}

{

  v1 = *(v0 + 1664);
  MEMORY[0x1AC5A6AE0](v1);
  GenerativeFunctionInstrumenter.executionEnd(error:)();

  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

{
  v2 = *v1;
  *(*v1 + 1688) = v0;

  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(*(v2 + 1456), &_s34GenerativeFunctionsInstrumentation0A20FunctionInstrumenterVSgMd, &_s34GenerativeFunctionsInstrumentation0A20FunctionInstrumenterVSgMR);

  if (v0)
  {
    v3 = TokenGenerator._complete<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:);
  }

  else
  {
    v3 = TokenGenerator._complete<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = v0[201];
  v2 = v0[199];
  v3 = v0[198];
  v4 = v0[197];
  v5 = v0[175];
  (*(v3 + 32))(v1, v0[200], v5);
  GenerativeFunctionInstrumenter.inferenceEnd()();
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v4, &_sScsySSs5Error_pG6result_Sd8durationtMd, &_sScsySSs5Error_pG6result_Sd8durationtMR);
  GenerativeFunctionInstrumenter.executionEnd(error:)();
  (*(v3 + 16))(v2, v1, v5);
  CompletionResponse.init(content:)();
  (*(v3 + 8))(v1, v5);

  v6 = v0[1];

  return v6();
}

{
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[197], &_sScsySSs5Error_pG6result_Sd8durationtMd, &_sScsySSs5Error_pG6result_Sd8durationtMR);
  v1 = v0[211];
  MEMORY[0x1AC5A6AE0](v1);
  GenerativeFunctionInstrumenter.executionEnd(error:)();

  swift_willThrow();

  v2 = v0[1];

  return v2();
}

uint64_t TokenGenerator._completeMultiElement<A, B>(type:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[10] = a7;
  v8[11] = v7;
  v8[8] = a5;
  v8[9] = a6;
  v8[6] = a3;
  v8[7] = a4;
  v8[4] = a1;
  v8[5] = a2;
  v9 = type metadata accessor for GenerativeFunctionInstrumenter();
  v8[12] = v9;
  v8[13] = *(v9 - 8);
  v8[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](TokenGenerator._completeMultiElement<A, B>(type:configuration:), 0, 0);
}

uint64_t TokenGenerator._completeMultiElement<A, B>(type:configuration:)(__n128 a1)
{
  v2 = v1[11];
  if (*(v2 + 24))
  {
  }

  v16 = v1[14];
  v3 = v1[9];
  v4 = v1[10];
  v5 = v1[7];
  v6 = v1[8];
  v7 = v1[6];
  GenerativeConfigurationProtocol.generateGenerativeFunctionInstrumenter(useCaseIdentifier:eventReporter:)();

  v1[2] = 0;
  swift_getAssociatedTypeWitness();
  v17 = type metadata accessor for Array();
  v8 = swift_allocObject();
  v1[15] = v8;
  *(v8 + 16) = v1 + 2;
  v9 = swift_task_alloc();
  v1[16] = v9;
  v9[2] = v5;
  v9[3] = v6;
  v9[4] = v3;
  v9[5] = v4;
  v9[6] = v7;
  v9[7] = v2;
  v9[8] = v16;
  v10 = swift_task_alloc();
  v1[17] = v10;
  type metadata accessor for GenerativeStream();
  v1[3] = swift_getAssociatedConformanceWitness();
  swift_getWitnessTable();
  *v10 = v1;
  v10[1] = TokenGenerator._completeMultiElement<A, B>(type:configuration:);
  v11 = v1[14];
  v12 = v1[6];
  v13 = v1[5];
  v14 = v1[4];

  return TokenGenerator._complete<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:)(v14, v13, v12, v17, v11, partial apply for specialized closure #1 in TokenGenerator._completeSingleElement<A, B>(type:configuration:), v8, &async function pointer to partial apply for closure #2 in TokenGenerator._completeMultiElement<A, B>(type:configuration:));
}

uint64_t TokenGenerator._completeMultiElement<A, B>(type:configuration:)()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = TokenGenerator._completeMultiElement<A, B>(type:configuration:);
  }

  else
  {

    v2 = TokenGenerator._completeMultiElement<A, B>(type:configuration:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t closure #2 in TokenGenerator._completeMultiElement<A, B>(type:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 168) = v15;
  *(v8 + 152) = v14;
  *(v8 + 136) = a7;
  *(v8 + 144) = a8;
  *(v8 + 120) = a5;
  *(v8 + 128) = a6;
  *(v8 + 312) = a4;
  *(v8 + 104) = a2;
  *(v8 + 112) = a3;
  *(v8 + 96) = a1;
  v9 = type metadata accessor for UUID();
  *(v8 + 176) = v9;
  *(v8 + 184) = *(v9 - 8);
  *(v8 + 192) = swift_task_alloc();
  type metadata accessor for StringResponseSanitizerRunnerConfiguration();
  *(v8 + 200) = swift_task_alloc();
  v10 = type metadata accessor for StringResponseSanitizerWithConfiguration();
  *(v8 + 208) = v10;
  *(v8 + 216) = *(v10 - 8);
  *(v8 + 224) = swift_task_alloc();
  v11 = type metadata accessor for StringResponseSanitizerWithRunner();
  *(v8 + 232) = v11;
  *(v8 + 240) = *(v11 - 8);
  *(v8 + 248) = swift_task_alloc();
  *(v8 + 256) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16GenerativeModels33StringResponseSanitizerWithRunnerVSgMd, &_s16GenerativeModels33StringResponseSanitizerWithRunnerVSgMR);
  *(v8 + 264) = swift_task_alloc();
  *(v8 + 272) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #2 in TokenGenerator._completeMultiElement<A, B>(type:configuration:), 0, 0);
}

uint64_t closure #2 in TokenGenerator._completeMultiElement<A, B>(type:configuration:)()
{
  GenerativeConfigurationProtocol.stringResponseSanitizer.getter();
  v1 = *(v0 + 264);
  v2 = *(v0 + 232);
  v3 = *(v0 + 240);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(*(v0 + 272), v1, &_s16GenerativeModels33StringResponseSanitizerWithRunnerVSgMd, &_s16GenerativeModels33StringResponseSanitizerWithRunnerVSgMR);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 312);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(*(v0 + 264), &_s16GenerativeModels33StringResponseSanitizerWithRunnerVSgMd, &_s16GenerativeModels33StringResponseSanitizerWithRunnerVSgMR);
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0;
    *(v0 + 16) = 0u;
    v5 = swift_task_alloc();
    *(v0 + 280) = v5;
    *v5 = v0;
    v5[1] = closure #2 in TokenGenerator._completeSingleElement<A, B>(type:configuration:);
    v6 = *(v0 + 160);
    v7 = *(v0 + 144);
    v8 = *(v0 + 104);
    v9 = *(v0 + 112);
    v10 = *(v0 + 96);
    v11 = v4 & 1;
    v12 = v0 + 16;
  }

  else
  {
    v13 = *(v0 + 256);
    v15 = *(v0 + 240);
    v14 = *(v0 + 248);
    v16 = *(v0 + 232);
    v17 = *(v0 + 192);
    (*(v15 + 32))(v13, *(v0 + 264), v16);
    (*(v15 + 16))(v14, v13, v16);
    GenerativeFunctionInstrumenter.userRequestIdentifier.getter();
    TokenGenerator.responseSanitizerConfiguration(userRequestIdentifier:)(v17, MEMORY[0x1E69A1558]);
    v19 = *(v0 + 216);
    v18 = *(v0 + 224);
    v20 = *(v0 + 208);
    v21 = *(v0 + 312);
    (*(*(v0 + 184) + 8))(*(v0 + 192), *(v0 + 176));
    StringResponseSanitizerWithConfiguration.init(stringResponseSanitizer:configuration:)();
    *(v0 + 80) = v20;
    *(v0 + 88) = lazy protocol witness table accessor for type TokenGeneratorCompletionResponse and conformance TokenGeneratorCompletionResponse(&lazy protocol witness table cache variable for type StringResponseSanitizerWithConfiguration and conformance StringResponseSanitizerWithConfiguration, MEMORY[0x1E69A1550], MEMORY[0x1E69A1540]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 56));
    (*(v19 + 16))(boxed_opaque_existential_1, v18, v20);
    v23 = swift_task_alloc();
    *(v0 + 296) = v23;
    *v23 = v0;
    v23[1] = closure #2 in TokenGenerator._completeSingleElement<A, B>(type:configuration:);
    v6 = *(v0 + 160);
    v7 = *(v0 + 144);
    v8 = *(v0 + 104);
    v9 = *(v0 + 112);
    v10 = *(v0 + 96);
    v11 = v21 & 1;
    v12 = v0 + 56;
  }

  return MEMORY[0x1EEE0A3D0](v10, v8, v9, v11, v12, v7, v6);
}

uint64_t closure #1 in TokenGenerator._complete<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 120) = v17;
  *(v8 + 104) = v16;
  *(v8 + 88) = a8;
  *(v8 + 96) = v15;
  *(v8 + 72) = a6;
  *(v8 + 80) = a7;
  *(v8 + 56) = a4;
  *(v8 + 64) = a5;
  *(v8 + 40) = a2;
  *(v8 + 48) = a3;
  *(v8 + 32) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s34GenerativeFunctionsInstrumentation0A20FunctionInstrumenterVSgMd, &_s34GenerativeFunctionsInstrumentation0A20FunctionInstrumenterVSgMR);
  *(v8 + 128) = swift_task_alloc();
  *(v8 + 136) = *(v15 - 8);
  *(v8 + 144) = swift_task_alloc();
  type metadata accessor for TokenGenerator.PromptInputFromGenerativeModel(0);
  *(v8 + 152) = swift_task_alloc();
  type metadata accessor for RunnableConfigurationStorage();
  *(v8 + 160) = swift_task_alloc();
  type metadata accessor for OverridableConfigurationStorage();
  *(v8 + 168) = swift_task_alloc();
  v9 = type metadata accessor for CompletionPrompt();
  *(v8 + 176) = v9;
  *(v8 + 184) = *(v9 - 8);
  *(v8 + 192) = swift_task_alloc();
  v10 = type metadata accessor for UUID();
  *(v8 + 200) = v10;
  *(v8 + 208) = *(v10 - 8);
  *(v8 + 216) = swift_task_alloc();
  v11 = type metadata accessor for StringRenderedPromptSanitizerRunnerConfiguration();
  *(v8 + 224) = v11;
  *(v8 + 232) = *(v11 - 8);
  *(v8 + 240) = swift_task_alloc();
  *(v8 + 248) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16GenerativeModels39StringRenderedPromptSanitizerWithRunnerVSgMd, &_s16GenerativeModels39StringRenderedPromptSanitizerWithRunnerVSgMR);
  *(v8 + 256) = swift_task_alloc();
  v12 = type metadata accessor for StringRenderedPromptSanitizerWithRunner();
  *(v8 + 264) = v12;
  *(v8 + 272) = *(v12 - 8);
  *(v8 + 280) = swift_task_alloc();
  *(v8 + 288) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
  *(v8 + 296) = swift_task_alloc();
  *(v8 + 304) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in TokenGenerator._complete<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:), 0, 0);
}

uint64_t closure #1 in TokenGenerator._complete<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:)()
{
  GenerativeFunctionInstrumenter.executionBegin()();
  GenerativeFunctionInstrumenter.promptConstructionBegin()();
  GenerativeConfigurationProtocol.stringRenderedPromptSanitizer.getter();
  v1 = v0[33];
  v2 = v0[34];
  v3 = v0[32];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v3, &_s16GenerativeModels39StringRenderedPromptSanitizerWithRunnerVSgMd, &_s16GenerativeModels39StringRenderedPromptSanitizerWithRunnerVSgMR);
    v4 = 1;
  }

  else
  {
    v6 = v0[26];
    v5 = v0[27];
    v29 = v0[25];
    (*(v2 + 32))(v0[36], v3, v1);
    GenerativeFunctionInstrumenter.userRequestIdentifier.getter();
    TokenGenerator.responseSanitizerConfiguration(userRequestIdentifier:)(v5, MEMORY[0x1E69A1568]);
    (*(v6 + 8))(v5, v29);
    v7 = v0[36];
    v8 = v0[33];
    v9 = v0[34];
    v11 = v0[30];
    v10 = v0[31];
    v12 = v0[28];
    v13 = v0[29];
    (*(v9 + 16))(v0[35], v7, v8);
    (*(v13 + 16))(v11, v10, v12);
    StringRenderedPromptSanitizerWithConfiguration.init(stringRenderedPromptSanitizer:configuration:)();
    (*(v13 + 8))(v10, v12);
    (*(v9 + 8))(v7, v8);
    v4 = 0;
  }

  v14 = v0[38];
  v15 = v0[24];
  v16 = v0[17];
  v28 = v0[37];
  v30 = v0[18];
  v17 = v0[12];
  v18 = v0[6];
  v19 = type metadata accessor for StringRenderedPromptSanitizerWithConfiguration();
  (*(*(v19 - 8) + 56))(v14, v4, 1, v19);
  dispatch thunk of GenerativeConfigurationProtocol._overridableConfigurationStorage.getter();
  dispatch thunk of GenerativeConfigurationProtocol._runnableConfigurationStorage.getter();
  CompletionPrompt.init(overridableConfigurationStorage:runnableConfigurationStorage:)();
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v14, v28, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
  v20 = swift_task_alloc();
  v0[39] = v20;
  *(v20 + 16) = v15;
  (*(v16 + 16))(v30, v18, v17);
  v21 = swift_task_alloc();
  v0[40] = v21;
  *v21 = v0;
  v21[1] = closure #1 in TokenGenerator._complete<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:);
  v22 = v0[37];
  v24 = v0[18];
  v23 = v0[19];
  v25 = v0[15];
  v26 = v0[12];

  return TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPrompt:completionConfiguration:forceRenderPrompt:)(v23, v22, &async function pointer to partial apply for closure #1 in closure #1 in TokenGenerator._complete<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:), v20, v24, 0, v26, v25);
}

{
  *(*v1 + 328) = v0;

  if (v0)
  {
    v2 = closure #1 in TokenGenerator._complete<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:);
  }

  else
  {

    v2 = closure #1 in TokenGenerator._complete<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v1 = v0[16];
  GenerativeFunctionInstrumenter.promptConstructionEnd()();
  GenerativeFunctionInstrumenter.inferenceBegin()();
  v2 = type metadata accessor for GenerativeFunctionInstrumenter();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v0[2] = type metadata accessor for TokenGenerator();
  v0[3] = v3;
  v4 = swift_task_alloc();
  v0[42] = v4;
  *v4 = v0;
  v4[1] = closure #1 in TokenGenerator._complete<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:);
  v5 = v0[19];
  v6 = v0[9];
  v7 = v0[10];
  v8 = v0[7];
  v9 = v0[8];
  v11 = v0[5];
  v10 = v0[6];
  v12 = v0[4];

  return closure #2 in closure #1 in TokenGenerator._complete<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:)(v12, v8, v5, v10, v9, v11, v6, v7);
}

{
  v2 = *v1;
  *(*v1 + 344) = v0;

  if (v0)
  {
    *(v2 + 352) = *(v2 + 16);
    v3 = closure #1 in TokenGenerator._complete<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:);
  }

  else
  {
    v3 = closure #1 in TokenGenerator._complete<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t closure #1 in closure #1 in TokenGenerator._complete<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in TokenGenerator._complete<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:), 0, 0);
}

uint64_t closure #2 in closure #1 in TokenGenerator._complete<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 1120) = v15;
  *(v8 + 1104) = v14;
  *(v8 + 1096) = v13;
  *(v8 + 1088) = v12;
  *(v8 + 1080) = a8;
  *(v8 + 1072) = a7;
  *(v8 + 1064) = a6;
  *(v8 + 1056) = a5;
  *(v8 + 1048) = a4;
  *(v8 + 1040) = a3;
  *(v8 + 1032) = a2;
  *(v8 + 1024) = a1;
  *(v8 + 1128) = *(v13 - 8);
  *(v8 + 1136) = swift_task_alloc();
  v9 = type metadata accessor for GenerativeFunctionInstrumenter();
  *(v8 + 1144) = v9;
  *(v8 + 1152) = *(v9 - 8);
  *(v8 + 1160) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
  *(v8 + 1168) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #2 in closure #1 in TokenGenerator._complete<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:), 0, 0);
}

uint64_t closure #2 in closure #1 in TokenGenerator._complete<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:)()
{
  GenerativeConfigurationProtocol.samplingParameters.getter(*(v0 + 1096), *(v0 + 1120), v0 + 16);
  v1 = *(v0 + 192);
  *(v0 + 392) = *(v0 + 176);
  *(v0 + 408) = v1;
  *(v0 + 424) = *(v0 + 208);
  v2 = *(v0 + 128);
  *(v0 + 328) = *(v0 + 112);
  *(v0 + 344) = v2;
  v3 = *(v0 + 160);
  *(v0 + 360) = *(v0 + 144);
  *(v0 + 376) = v3;
  v4 = *(v0 + 64);
  *(v0 + 264) = *(v0 + 48);
  *(v0 + 280) = v4;
  v5 = *(v0 + 96);
  *(v0 + 296) = *(v0 + 80);
  *(v0 + 312) = v5;
  v6 = *(v0 + 32);
  *(v0 + 232) = *(v0 + 16);
  v7 = *(v0 + 1160);
  v8 = *(v0 + 1152);
  v27 = *(v0 + 1144);
  v28 = (v0 + 936);
  v9 = *(v0 + 1136);
  v10 = *(v0 + 1128);
  v11 = *(v0 + 1120);
  v12 = *(v0 + 1096);
  v26 = *(v0 + 1064);
  v13 = *(v0 + 1048);
  *(v0 + 440) = *(v0 + 224);
  *(v0 + 248) = v6;
  v14 = GenerativeConfigurationProtocol.tools.getter();
  *(v0 + 1176) = v14;
  v15 = MEMORY[0x1E69E7CC0];
  if (v14)
  {
    v15 = v14;
  }

  v29 = v15;
  GenerativeConfigurationProtocol.toolChoice.getter();
  v16 = GenerativeConfigurationProtocol.documents.getter(v12, v11);
  *(v0 + 1184) = v16;
  if (v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
  }

  (*(v8 + 16))(v7, v26, v27);
  (*(v10 + 16))(v9, v13, v12);
  RequestMetadata.init<A>(generativeFunctionInstrumenter:configuration:)(v7, v9, v12, (v0 + 880));
  v18 = *(v0 + 896);
  v19 = *(v0 + 904);
  v20 = *(v0 + 928);
  *v28 = *(v0 + 880);
  *(v0 + 952) = v18;
  *(v0 + 960) = v19;
  *(v0 + 968) = *(v0 + 912);
  *(v0 + 984) = v20;
  v21 = swift_task_alloc();
  *(v0 + 1192) = v21;
  *v21 = v0;
  v21[1] = closure #2 in closure #1 in TokenGenerator._complete<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:);
  v22 = *(v0 + 1168);
  v23 = *(v0 + 1056);
  v24 = *(v0 + 1040);

  return TokenGenerator.complete<A>(promptInputFromGenerativeModel:parameters:tools:toolChoice:documents:generating:metadata:)(v0 + 992, v24, v0 + 232, v29, v22, v17, v23, v28);
}

{
  v2 = *v1;
  v3 = *v1;
  v4 = (*v1 + 232);
  *(*v1 + 1200) = v0;

  v5 = *(v2 + 1168);

  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v5, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
  v6 = *(v3 + 248);
  if (v0)
  {
    *(v3 + 448) = *v4;
    *(v3 + 464) = v6;
    v7 = *(v3 + 312);
    v9 = *(v3 + 264);
    v8 = *(v3 + 280);
    *(v3 + 512) = *(v3 + 296);
    *(v3 + 528) = v7;
    *(v3 + 480) = v9;
    *(v3 + 496) = v8;
    v10 = *(v3 + 376);
    v12 = *(v3 + 328);
    v11 = *(v3 + 344);
    *(v3 + 576) = *(v3 + 360);
    *(v3 + 592) = v10;
    *(v3 + 544) = v12;
    *(v3 + 560) = v11;
    v14 = *(v3 + 408);
    v13 = *(v3 + 424);
    v15 = *(v3 + 392);
    *(v3 + 656) = *(v3 + 440);
    *(v3 + 624) = v14;
    *(v3 + 640) = v13;
    *(v3 + 608) = v15;
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v3 + 448, &_s15TokenGeneration18SamplingParametersVSgMd, &_s15TokenGeneration18SamplingParametersVSgMR);
    v16 = closure #2 in closure #1 in TokenGenerator._complete<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:);
  }

  else
  {
    *(v3 + 664) = *v4;
    *(v3 + 680) = v6;
    v17 = *(v3 + 312);
    v19 = *(v3 + 264);
    v18 = *(v3 + 280);
    *(v3 + 728) = *(v3 + 296);
    *(v3 + 744) = v17;
    *(v3 + 696) = v19;
    *(v3 + 712) = v18;
    v20 = *(v3 + 376);
    v22 = *(v3 + 328);
    v21 = *(v3 + 344);
    *(v3 + 792) = *(v3 + 360);
    *(v3 + 808) = v20;
    *(v3 + 760) = v22;
    *(v3 + 776) = v21;
    v24 = *(v3 + 408);
    v23 = *(v3 + 424);
    v25 = *(v3 + 392);
    *(v3 + 872) = *(v3 + 440);
    *(v3 + 840) = v24;
    *(v3 + 856) = v23;
    *(v3 + 824) = v25;
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v3 + 664, &_s15TokenGeneration18SamplingParametersVSgMd, &_s15TokenGeneration18SamplingParametersVSgMR);
    v16 = closure #2 in closure #1 in TokenGenerator._complete<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:);
  }

  return MEMORY[0x1EEE6DFA0](v16, 0, 0);
}

uint64_t closure #2 in closure #1 in TokenGenerator._complete<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 1072);
  v17 = *(v4 + 1080);
  v6 = *(v4 + 1080);
  v16 = *(v4 + 1112);
  v7 = *(v4 + 1112);
  type metadata accessor for TokenStream.AsyncIterator(0, v6, v7, a4);
  v15 = *(v4 + 1096);
  v8 = swift_allocBox();
  v10 = v9;
  type metadata accessor for TokenStream(0, v6, v7, v11);
  TokenStream.makeAsyncIterator()(v10);
  v12 = swift_allocObject();
  *(v12 + 16) = v5;
  *(v12 + 24) = v17;
  *(v12 + 40) = v15;
  *(v12 + 56) = v16;
  *(v12 + 72) = v8;
  AsyncThrowingStream.init<>(unfolding:)();

  v13 = *(v4 + 8);

  return v13();
}

uint64_t closure #1 in closure #2 in closure #1 in TokenGenerator._complete<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration0A0VSgMd, &_s15TokenGeneration0A0VSgMR);
  v8[6] = swift_task_alloc();
  v8[7] = type metadata accessor for TokenStream.AsyncIterator(0, a4, a8, v11);
  v8[8] = swift_projectBox();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #2 in closure #1 in TokenGenerator._complete<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:), 0, 0);
}

uint64_t closure #1 in closure #2 in closure #1 in TokenGenerator._complete<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:)()
{
  swift_beginAccess();
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = closure #1 in closure #2 in closure #1 in TokenGenerator._complete<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:);
  v2 = *(v0 + 48);

  return TokenStream.AsyncIterator.next()(v2);
}

{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = closure #1 in closure #2 in closure #1 in TokenGenerator._complete<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:);
  }

  else
  {
    swift_endAccess();
    v2 = closure #1 in closure #2 in closure #1 in TokenGenerator._complete<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t closure #2 in TokenGenerator._complete<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](closure #2 in TokenGenerator._complete<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:), 0, 0);
}

uint64_t closure #2 in TokenGenerator._complete<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:)()
{
  v1 = v0[6];
  v2 = *v1;
  v3 = *(v1 + 8);
  v8 = (v0[3] + *v0[3]);
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = closure #2 in TokenGenerator._complete<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:);
  v5 = v0[5];
  v6 = v0[2];

  return v8(v6, v5, v2, v3);
}

uint64_t protocol witness for CompletionLanguageModelProvidingGenerativeStreamable._completeMultiElement<A, B>(type:configuration:) in conformance TokenGenerator(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return TokenGenerator._completeMultiElement<A, B>(type:configuration:)(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t protocol witness for CompletionLanguageModelProvidingGenerativeStreamable._completeSingleElement<A, B>(type:configuration:) in conformance TokenGenerator(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return TokenGenerator._completeSingleElement<A, B>(type:configuration:)(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t TokenGenerator._respond<A>(configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  v5[4] = a1;
  v5[5] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s34GenerativeFunctionsInstrumentation0A20FunctionInstrumenterVSgMd, &_s34GenerativeFunctionsInstrumentation0A20FunctionInstrumenterVSgMR);
  v5[6] = swift_task_alloc();
  v10 = type metadata accessor for ChatMessageRole();
  v5[7] = v10;
  v5[8] = *(v10 - 8);
  v5[9] = swift_task_alloc();
  v5[10] = type metadata accessor for TokenGeneratorChatResponseStringStream(0);
  v11 = swift_task_alloc();
  v5[11] = v11;
  v12 = swift_task_alloc();
  v5[12] = v12;
  *v12 = v5;
  v12[1] = TokenGenerator._respond<A>(configuration:);

  return TokenGenerator._streamResponse<A>(configuration:)(v11, a2, a3, a4);
}

uint64_t TokenGenerator._respond<A>(configuration:)()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = TokenGenerator._respond<A>(configuration:);
  }

  else
  {
    v2 = TokenGenerator._respond<A>(configuration:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[6];
  (*(v0[8] + 104))(v0[9], *MEMORY[0x1E69C6400], v0[7]);
  v4 = *(v1 + 24);
  v5 = type metadata accessor for GenerativeFunctionInstrumenter();
  v6 = *(v5 - 8);
  (*(v6 + 16))(v3, v2 + v4, v5);
  (*(v6 + 56))(v3, 0, 1, v5);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = TokenGenerator._respond<A>(configuration:);
  v8 = v0[11];

  return specialized closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect()(v8);
}

{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[11];
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[6], &_s34GenerativeFunctionsInstrumentation0A20FunctionInstrumenterVSgMd, &_s34GenerativeFunctionsInstrumentation0A20FunctionInstrumenterVSgMR);

  v0[2] = v1;
  v0[3] = v2;
  ChatMessageResponse.init(role:content:)();
  outlined destroy of TokenGeneratorCompletionResponseStringStream(v3, type metadata accessor for TokenGeneratorChatResponseStringStream);

  v4 = v0[1];

  return v4();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t TokenGenerator._respond<A>(configuration:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v4;
  *(*v4 + 120) = v3;

  if (v3)
  {
    v9 = TokenGenerator._respond<A>(configuration:);
  }

  else
  {
    v8[16] = a3;
    v8[17] = a2;
    v8[18] = a1;
    v9 = TokenGenerator._respond<A>(configuration:);
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t TokenGenerator._streamResponse<A>(configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[142] = v4;
  v5[141] = a4;
  v5[140] = a3;
  v5[139] = a2;
  v5[138] = a1;
  v5[143] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumentertMd, &_s15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumentertMR);
  v5[144] = swift_task_alloc();
  v7 = *(a3 - 8);
  v5[145] = v7;
  v5[146] = *(v7 + 64);
  v5[147] = swift_task_alloc();
  v5[148] = swift_task_alloc();
  v5[149] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumentert6result_Sd8durationtMd, &_s15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumentert6result_Sd8durationtMR);
  v5[150] = swift_task_alloc();
  v5[151] = swift_task_alloc();
  v5[152] = swift_task_alloc();
  v5[153] = swift_task_alloc();
  v5[154] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](TokenGenerator._streamResponse<A>(configuration:), 0, 0);
}

uint64_t TokenGenerator._streamResponse<A>(configuration:)()
{
  GenerativeConfigurationProtocol.samplingParameters.getter(*(v0 + 1120), *(v0 + 1128), v0 + 16);
  v2 = *(v0 + 176);
  v1 = *(v0 + 192);
  v3 = *(v0 + 160);
  *(v0 + 616) = v2;
  *(v0 + 632) = v1;
  v4 = *(v0 + 192);
  *(v0 + 648) = *(v0 + 208);
  v6 = *(v0 + 112);
  v5 = *(v0 + 128);
  v7 = *(v0 + 96);
  *(v0 + 552) = v6;
  *(v0 + 568) = v5;
  v8 = *(v0 + 128);
  v10 = *(v0 + 144);
  v9 = *(v0 + 160);
  *(v0 + 584) = v10;
  *(v0 + 600) = v9;
  v12 = *(v0 + 48);
  v11 = *(v0 + 64);
  v13 = *(v0 + 32);
  *(v0 + 488) = v12;
  *(v0 + 504) = v11;
  v14 = *(v0 + 64);
  v16 = *(v0 + 80);
  v15 = *(v0 + 96);
  *(v0 + 520) = v16;
  *(v0 + 536) = v15;
  v17 = *(v0 + 32);
  v18 = *(v0 + 16);
  *(v0 + 456) = v18;
  *(v0 + 472) = v17;
  *(v0 + 400) = v2;
  *(v0 + 416) = v4;
  *(v0 + 432) = *(v0 + 208);
  *(v0 + 336) = v6;
  *(v0 + 352) = v8;
  *(v0 + 368) = v10;
  *(v0 + 384) = v3;
  *(v0 + 272) = v12;
  *(v0 + 288) = v14;
  *(v0 + 304) = v16;
  *(v0 + 320) = v7;
  *(v0 + 664) = *(v0 + 224);
  *(v0 + 448) = *(v0 + 224);
  *(v0 + 240) = v18;
  *(v0 + 256) = v13;
  if (_s15TokenGeneration26SamplingParametersEnvelopeVSgWOg(v0 + 240) == 1)
  {
    v19 = 1;
    v20 = 0;
  }

  else
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0 + 456, &_s15TokenGeneration18SamplingParametersVSgMd, &_s15TokenGeneration18SamplingParametersVSgMR);
    v20 = *(v0 + 344);
    v19 = *(v0 + 352);
  }

  v21 = *(v0 + 1184);
  v22 = *(v0 + 1176);
  v23 = *(v0 + 1168);
  v24 = *(v0 + 1160);
  v25 = *(v0 + 1136);
  v26 = *(v24 + 16);
  v42 = *(v0 + 1120);
  v27 = *(v0 + 1120);
  v26(v21, *(v0 + 1112), v27);
  v26(v22, v21, v27);
  v28 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v29 = swift_allocObject();
  *(v0 + 1240) = v29;
  *(v29 + 16) = v42;
  (*(v24 + 32))(v29 + v28, v21, v27);
  *(v29 + ((v23 + v28 + 7) & 0xFFFFFFFFFFFFFFF8)) = v25;

  if (v19)
  {
    *(v0 + 1272) = mach_absolute_time();
    v30 = swift_task_alloc();
    *(v0 + 1280) = v30;
    *v30 = v0;
    v30[1] = TokenGenerator._streamResponse<A>(configuration:);
    v31 = *(v0 + 1176);
    v32 = *(v0 + 1152);
    v33 = *(v0 + 1136);
    v34 = *(v0 + 1128);
    v35 = *(v0 + 1120);

    return closure #1 in TokenGenerator._streamResponse<A>(configuration:)(v32, v31, v33, v35, v34);
  }

  else
  {
    (*(*(v0 + 1160) + 8))(*(v0 + 1176), *(v0 + 1120));
    v37 = swift_task_alloc();
    *(v0 + 1248) = v37;
    v37[2] = &async function pointer to partial apply for closure #1 in TokenGenerator._streamResponse<A>(configuration:);
    v37[3] = v29;
    v37[4] = v20;
    v38 = swift_task_alloc();
    *(v0 + 1256) = v38;
    *v38 = v0;
    v38[1] = TokenGenerator._streamResponse<A>(configuration:);
    v39 = *(v0 + 1224);
    v40 = *(v0 + 1192);
    v41 = *(v0 + 1144);

    return MEMORY[0x1EEE6DD58](v39, v41, v40, 0, 0, &closure #1 in withTimeout<A>(timeout:_:)specialized partial apply, v37, v41);
  }
}

{
  *(*v1 + 1264) = v0;

  if (v0)
  {
    v2 = TokenGenerator._streamResponse<A>(configuration:);
  }

  else
  {

    v2 = TokenGenerator._streamResponse<A>(configuration:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v2 = *v1;
  *(*v1 + 1288) = v0;

  (*(v2[145] + 8))(v2[147], v2[140]);
  if (v0)
  {
    v3 = TokenGenerator._streamResponse<A>(configuration:);
  }

  else
  {
    v3 = TokenGenerator._streamResponse<A>(configuration:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v65 = v0;
  v64 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 1232);
  v2 = *(v0 + 1224);
  v3 = *(v0 + 1192);

  v4 = *(v2 + *(v3 + 48));
  outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v2, v1, &_s15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumentertMd, &_s15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumentertMR);
  v5 = *(v0 + 1264);
  v6 = *(v0 + 1128);
  v7 = *(v0 + 1120);
  *(*(v0 + 1232) + *(*(v0 + 1192) + 48)) = v4;
  GenerativeConfigurationProtocol.samplingParameters.getter(v7, v6, &v50);
  if (v5)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(*(v0 + 1232), &_s15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumentert6result_Sd8durationtMd, &_s15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumentert6result_Sd8durationtMR);

    v8 = *(v0 + 8);
  }

  else
  {
    v10 = v60;
    v9 = v61;
    v11 = v59;
    *(v0 + 1048) = v60;
    *(v0 + 1064) = v9;
    v12 = v61;
    *(v0 + 1080) = v62;
    v13 = v57;
    v14 = v56;
    v15 = v57;
    *(v0 + 984) = v56;
    *(v0 + 1000) = v13;
    v16 = v59;
    v17 = v58;
    *(v0 + 1016) = v58;
    *(v0 + 1032) = v16;
    v18 = v53;
    v19 = v52;
    v20 = v53;
    *(v0 + 920) = v52;
    *(v0 + 936) = v18;
    v21 = v55;
    v22 = v54;
    v23 = v55;
    *(v0 + 952) = v54;
    *(v0 + 968) = v21;
    v24 = v51;
    v25 = v50;
    v26 = v51;
    *(v0 + 888) = v50;
    *(v0 + 904) = v24;
    *(v0 + 832) = v10;
    *(v0 + 848) = v12;
    *(v0 + 864) = v62;
    *(v0 + 768) = v14;
    *(v0 + 784) = v15;
    *(v0 + 800) = v17;
    *(v0 + 816) = v11;
    *(v0 + 704) = v19;
    *(v0 + 720) = v20;
    *(v0 + 736) = v22;
    *(v0 + 752) = v23;
    *(v0 + 1096) = v63;
    *(v0 + 880) = v63;
    *(v0 + 672) = v25;
    *(v0 + 688) = v26;
    v27 = 0.0;
    if (_s15TokenGeneration26SamplingParametersEnvelopeVSgWOg(v0 + 672) == 1 || (outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0 + 888, &_s15TokenGeneration18SamplingParametersVSgMd, &_s15TokenGeneration18SamplingParametersVSgMR), (*(v0 + 784) & 1) != 0))
    {
      v49 = 1;
    }

    else
    {
      v49 = 0;
      v27 = *(v0 + 776) - v4;
    }

    v28 = *(v0 + 1232);
    v29 = *(v0 + 1216);
    v30 = *(v0 + 1208);
    v31 = *(v0 + 1200);
    v32 = *(v0 + 1144);
    v33 = *(v0 + 1104);
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, v29, &_s15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumentert6result_Sd8durationtMd, &_s15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumentert6result_Sd8durationtMR);
    v47 = *(v32 + 64);
    v48 = *(v32 + 48);
    v43 = v29[1];
    v44 = *v29;
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28, v30, &_s15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumentert6result_Sd8durationtMd, &_s15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumentert6result_Sd8durationtMR);

    v34 = *(v32 + 48);
    v46 = *(v32 + 64);
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v28, v31, &_s15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumentert6result_Sd8durationtMd, &_s15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumentert6result_Sd8durationtMR);

    v45 = *(v32 + 48);
    v42 = *(v32 + 64);
    *v33 = v44;
    *(v33 + 1) = v43;
    v35 = type metadata accessor for TokenGeneratorChatResponseStringStream(0);
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v30 + v34, &v33[v35[5]], &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMR);
    v36 = v35[6];
    v37 = type metadata accessor for GenerativeFunctionInstrumenter();
    v38 = *(v37 - 8);
    (*(v38 + 32))(&v33[v36], v31 + v42, v37);
    v39 = &v33[v35[7]];
    *v39 = v27;
    *(v39 + 8) = v49;
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v31 + v45, &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMR);
    v40 = *(v38 + 8);
    v40(v30 + v46, v37);
    v40(v29 + v47, v37);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v29 + v48, &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMR);

    v8 = *(v0 + 8);
  }

  return v8();
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v68 = v0;
  v67 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 1272);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(*(v0 + 1152), *(v0 + 1232), &_s15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumentertMd, &_s15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumentertMR);
  v2 = mach_absolute_time();
  v3 = v2 - v1;
  if (v2 < v1)
  {
    __break(1u);
  }

  *(v0 + 228) = 0;
  v4 = *(v0 + 1152);
  *(v0 + 232) = 0;
  mach_timebase_info((v0 + 228));

  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v4, &_s15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumentertMd, &_s15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumentertMR);
  LODWORD(v5) = *(v0 + 228);
  LODWORD(v6) = *(v0 + 232);
  v7 = v3 * v5 / (v6 * 1000000000.0);
  v8 = *(v0 + 1288);
  v9 = *(v0 + 1128);
  v10 = *(v0 + 1120);
  *(*(v0 + 1232) + *(*(v0 + 1192) + 48)) = v7;
  GenerativeConfigurationProtocol.samplingParameters.getter(v10, v9, &v53);
  if (v8)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(*(v0 + 1232), &_s15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumentert6result_Sd8durationtMd, &_s15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumentert6result_Sd8durationtMR);

    v11 = *(v0 + 8);
  }

  else
  {
    v13 = v63;
    v12 = v64;
    v14 = v62;
    *(v0 + 1048) = v63;
    *(v0 + 1064) = v12;
    v15 = v64;
    *(v0 + 1080) = v65;
    v16 = v60;
    v17 = v59;
    v18 = v60;
    *(v0 + 984) = v59;
    *(v0 + 1000) = v16;
    v19 = v62;
    v20 = v61;
    *(v0 + 1016) = v61;
    *(v0 + 1032) = v19;
    v21 = v56;
    v22 = v55;
    v23 = v56;
    *(v0 + 920) = v55;
    *(v0 + 936) = v21;
    v24 = v58;
    v25 = v57;
    v26 = v58;
    *(v0 + 952) = v57;
    *(v0 + 968) = v24;
    v27 = v54;
    v28 = v53;
    v29 = v54;
    *(v0 + 888) = v53;
    *(v0 + 904) = v27;
    *(v0 + 832) = v13;
    *(v0 + 848) = v15;
    *(v0 + 864) = v65;
    *(v0 + 768) = v17;
    *(v0 + 784) = v18;
    *(v0 + 800) = v20;
    *(v0 + 816) = v14;
    *(v0 + 704) = v22;
    *(v0 + 720) = v23;
    *(v0 + 736) = v25;
    *(v0 + 752) = v26;
    *(v0 + 1096) = v66;
    *(v0 + 880) = v66;
    *(v0 + 672) = v28;
    *(v0 + 688) = v29;
    v30 = 0.0;
    if (_s15TokenGeneration26SamplingParametersEnvelopeVSgWOg(v0 + 672) == 1 || (outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0 + 888, &_s15TokenGeneration18SamplingParametersVSgMd, &_s15TokenGeneration18SamplingParametersVSgMR), (*(v0 + 784) & 1) != 0))
    {
      v52 = 1;
    }

    else
    {
      v52 = 0;
      v30 = *(v0 + 776) - v7;
    }

    v31 = *(v0 + 1232);
    v32 = *(v0 + 1216);
    v33 = *(v0 + 1208);
    v34 = *(v0 + 1200);
    v35 = *(v0 + 1144);
    v36 = *(v0 + 1104);
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v31, v32, &_s15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumentert6result_Sd8durationtMd, &_s15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumentert6result_Sd8durationtMR);
    v50 = *(v35 + 64);
    v51 = *(v35 + 48);
    v46 = v32[1];
    v47 = *v32;
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v31, v33, &_s15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumentert6result_Sd8durationtMd, &_s15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumentert6result_Sd8durationtMR);

    v37 = *(v35 + 48);
    v49 = *(v35 + 64);
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v31, v34, &_s15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumentert6result_Sd8durationtMd, &_s15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumentert6result_Sd8durationtMR);

    v48 = *(v35 + 48);
    v45 = *(v35 + 64);
    *v36 = v47;
    *(v36 + 1) = v46;
    v38 = type metadata accessor for TokenGeneratorChatResponseStringStream(0);
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v33 + v37, &v36[v38[5]], &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMR);
    v39 = v38[6];
    v40 = type metadata accessor for GenerativeFunctionInstrumenter();
    v41 = *(v40 - 8);
    (*(v41 + 32))(&v36[v39], v34 + v45, v40);
    v42 = &v36[v38[7]];
    *v42 = v30;
    *(v42 + 8) = v52;
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v34 + v48, &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMR);
    v43 = *(v41 + 8);
    v43(v33 + v49, v40);
    v43(v32 + v50, v40);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v32 + v51, &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMR);

    v11 = *(v0 + 8);
  }

  return v11();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t TokenGeneratorChatResponseStringStream.role.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69C6400];
  v3 = type metadata accessor for ChatMessageRole();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t protocol witness for ChatLanguageModelProviding._respond<A>(configuration:) in conformance TokenGenerator(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return TokenGenerator._respond<A>(configuration:)(a1, a2, a3, a4);
}

uint64_t TokenGeneratorChatResponse.role.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ChatMessageRole();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t TokenGenerator._oneShotResponse<A>(configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = type metadata accessor for TokenGeneratorResponsePromptCompletionStream(0);
  v4[4] = swift_task_alloc();
  type metadata accessor for PromptCompletion(0);
  v4[5] = swift_task_alloc();
  v4[6] = type metadata accessor for TokenGeneratorChatResponseStringStream(0);
  v8 = swift_task_alloc();
  v4[7] = v8;
  v9 = swift_task_alloc();
  v4[8] = v9;
  *v9 = v4;
  v9[1] = TokenGenerator._oneShotResponse<A>(configuration:);

  return TokenGenerator._streamResponse<A>(configuration:)(v8, a2, a3, a4);
}

uint64_t TokenGenerator._oneShotResponse<A>(configuration:)()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = TokenGenerator._oneShotResponse<A>(configuration:);
  }

  else
  {
    v2 = TokenGenerator._oneShotResponse<A>(configuration:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[3];
  v3 = v0[4];
  v5 = *v1;
  v6 = v1[3];
  v16 = *(v1 + 1);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v1 + v2[5], v3 + v4[5], &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMR);
  v7 = v4[6];
  v8 = v2[6];
  v9 = type metadata accessor for GenerativeFunctionInstrumenter();
  (*(*(v9 - 8) + 16))(v3 + v7, v1 + v8, v9);
  v10 = (v1 + v2[7]);
  v11 = *v10;
  LOBYTE(v10) = *(v10 + 8);
  *v3 = v5;
  *(v3 + 8) = v16;
  *(v3 + 24) = v6;
  v12 = v3 + v4[7];
  *v12 = v11;
  *(v12 + 8) = v10;

  v13 = swift_task_alloc();
  v0[10] = v13;
  *v13 = v0;
  v13[1] = TokenGenerator._oneShotResponse<A>(configuration:);
  v14 = v0[5];

  return TokenGeneratorResponsePromptCompletionStream.collect()(v14);
}

{
  v2 = *(*v1 + 32);
  *(*v1 + 88) = v0;

  outlined destroy of TokenGeneratorCompletionResponseStringStream(v2, type metadata accessor for TokenGeneratorResponsePromptCompletionStream);
  if (v0)
  {
    v3 = TokenGenerator._oneShotResponse<A>(configuration:);
  }

  else
  {
    v3 = TokenGenerator._oneShotResponse<A>(configuration:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = v0[5];
  v2 = v0[2];
  outlined destroy of TokenGeneratorCompletionResponseStringStream(v0[7], type metadata accessor for TokenGeneratorChatResponseStringStream);
  v3 = *MEMORY[0x1E69C6400];
  v4 = type metadata accessor for ChatMessageRole();
  (*(*(v4 - 8) + 104))(v2, v3, v4);
  v5 = type metadata accessor for TokenGeneratorChatResponse(0);
  outlined init with take of TokenGeneratorResponsePromptCompletionStream(v1, v2 + *(v5 + 20), type metadata accessor for PromptCompletion);

  v6 = v0[1];

  return v6();
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  outlined destroy of TokenGeneratorCompletionResponseStringStream(*(v0 + 56), type metadata accessor for TokenGeneratorChatResponseStringStream);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t protocol witness for ChatLanguageModelProvidingOneShot._oneShotResponse<A>(configuration:) in conformance TokenGenerator(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return TokenGenerator._oneShotResponse<A>(configuration:)(a1, a2, a3, a4);
}

uint64_t TokenGeneratorCompletionResponseStringStream.rawStream.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = *(v1 + 8);
  *(a1 + 24) = v2;
}

uint64_t TokenGeneratorCompletionResponseStringStream._generativeFunctionInstrumenter.getter@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 24);
  v5 = type metadata accessor for GenerativeFunctionInstrumenter();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for TokenGeneratorResponseStringStreamAsyncSequence.collect() in conformance TokenGeneratorChatResponseStringStream(uint64_t a1)
{
  v2[4] = v1;
  v2[5] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s34GenerativeFunctionsInstrumentation0A20FunctionInstrumenterVSgMd, &_s34GenerativeFunctionsInstrumentation0A20FunctionInstrumenterVSgMR);
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](protocol witness for TokenGeneratorResponseStringStreamAsyncSequence.collect() in conformance TokenGeneratorChatResponseStringStream, 0, 0);
}

uint64_t protocol witness for TokenGeneratorResponseStringStreamAsyncSequence.collect() in conformance TokenGeneratorChatResponseStringStream()
{
  v1 = v0[6];
  v2 = v0[4];
  v3 = *(v0[5] + 24);
  v4 = type metadata accessor for GenerativeFunctionInstrumenter();
  v5 = *(v4 - 8);
  (*(v5 + 16))(v1, v2 + v3, v4);
  (*(v5 + 56))(v1, 0, 1, v4);
  v0[2] = type metadata accessor for TokenGenerator();
  v0[3] = v6;
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = protocol witness for TokenGeneratorResponseStringStreamAsyncSequence.collect() in conformance TokenGeneratorChatResponseStringStream;
  v8 = v0[4];

  return specialized closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect()(v8);
}

{
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[6], &_s34GenerativeFunctionsInstrumentation0A20FunctionInstrumenterVSgMd, &_s34GenerativeFunctionsInstrumentation0A20FunctionInstrumenterVSgMR);

  v1 = v0[1];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[9];

  return v1(v2, v3, v4);
}

uint64_t protocol witness for TokenGeneratorResponseStringStreamAsyncSequence.collect() in conformance TokenGeneratorChatResponseStringStream(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v4;
  *(*v4 + 64) = v3;

  if (v3)
  {
    v8[12] = v8[2];
    v9 = protocol witness for TokenGeneratorResponseStringStreamAsyncSequence.collect() in conformance TokenGeneratorChatResponseStringStream;
  }

  else
  {
    v8[9] = a3;
    v8[10] = a2;
    v8[11] = a1;
    v9 = protocol witness for TokenGeneratorResponseStringStreamAsyncSequence.collect() in conformance TokenGeneratorChatResponseStringStream;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t protocol witness for TokenGeneratorResponseStringStreamAsyncSequence._generativeFunctionInstrumenter.getter in conformance TokenGeneratorCompletionResponseStringStream@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = type metadata accessor for GenerativeFunctionInstrumenter();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for ChatLanguageModelResponseStringStream.role.getter in conformance TokenGeneratorChatResponseStringStream@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69C6400];
  v3 = type metadata accessor for ChatMessageRole();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t closure #1 in static TokenGenerator.scrubIfNeeded(inputPrompt:stringRenderedPromptSanitizerWithConfiguration:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = closure #1 in static TokenGenerator.scrubIfNeeded(inputPrompt:stringRenderedPromptSanitizerWithConfiguration:);

  return MEMORY[0x1EEE0B7C8](a1, a2);
}

{
  v10 = *v3;

  v8 = *(v10 + 8);
  if (!v2)
  {
    v6 = a1;
    v7 = a2;
  }

  return v8(v6, v7);
}

uint64_t closure #1 in static TokenGenerator.scrubIfNeeded(promptTurns:stringRenderedPromptSanitizerWithConfiguration:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = closure #1 in static TokenGenerator.scrubIfNeeded(promptTurns:stringRenderedPromptSanitizerWithConfiguration:);

  return MEMORY[0x1EEE0B7C8](a1, a2);
}

uint64_t closure #1 in TokenGenerator._streamResponse<A>(configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[555] = a5;
  v5[554] = a4;
  v5[553] = a3;
  v5[552] = a2;
  v5[551] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s29GenerativeFunctionsFoundation6SchemaVSgMd, &_s29GenerativeFunctionsFoundation6SchemaVSgMR);
  v5[556] = swift_task_alloc();
  v5[557] = *(a4 - 8);
  v5[558] = swift_task_alloc();
  v5[559] = swift_task_alloc();
  type metadata accessor for TokenGenerator.PromptInputFromGenerativeModel(0);
  v5[560] = swift_task_alloc();
  type metadata accessor for RunnableConfigurationStorage();
  v5[561] = swift_task_alloc();
  type metadata accessor for OverridableConfigurationStorage();
  v5[562] = swift_task_alloc();
  v7 = type metadata accessor for ChatMessagesPrompt();
  v5[563] = v7;
  v5[564] = *(v7 - 8);
  v5[565] = swift_task_alloc();
  v8 = type metadata accessor for StringResponseSanitizerRunnerConfiguration();
  v5[566] = v8;
  v5[567] = *(v8 - 8);
  v5[568] = swift_task_alloc();
  v5[569] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16GenerativeModels33StringResponseSanitizerWithRunnerVSgMd, &_s16GenerativeModels33StringResponseSanitizerWithRunnerVSgMR);
  v5[570] = swift_task_alloc();
  v9 = type metadata accessor for StringResponseSanitizerWithRunner();
  v5[571] = v9;
  v5[572] = *(v9 - 8);
  v5[573] = swift_task_alloc();
  v5[574] = swift_task_alloc();
  v10 = type metadata accessor for UUID();
  v5[575] = v10;
  v5[576] = *(v10 - 8);
  v5[577] = swift_task_alloc();
  v5[578] = swift_task_alloc();
  v11 = type metadata accessor for StringRenderedPromptSanitizerRunnerConfiguration();
  v5[579] = v11;
  v5[580] = *(v11 - 8);
  v5[581] = swift_task_alloc();
  v5[582] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16GenerativeModels39StringRenderedPromptSanitizerWithRunnerVSgMd, &_s16GenerativeModels39StringRenderedPromptSanitizerWithRunnerVSgMR);
  v5[583] = swift_task_alloc();
  v12 = type metadata accessor for StringRenderedPromptSanitizerWithRunner();
  v5[584] = v12;
  v5[585] = *(v12 - 8);
  v5[586] = swift_task_alloc();
  v5[587] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
  v5[588] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMR);
  v5[589] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
  v5[590] = swift_task_alloc();
  v5[591] = swift_task_alloc();
  v13 = type metadata accessor for GenerativeFunctionInstrumenter();
  v5[592] = v13;
  v5[593] = *(v13 - 8);
  v5[594] = swift_task_alloc();
  v5[595] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in TokenGenerator._streamResponse<A>(configuration:), 0, 0);
}

uint64_t closure #1 in TokenGenerator._streamResponse<A>(configuration:)(__n128 a1)
{
  if (*(*(v1 + 4424) + 24))
  {
  }

  v2 = *(v1 + 4440);
  v3 = *(v1 + 4432);
  GenerativeConfigurationProtocol.generateGenerativeFunctionInstrumenter(useCaseIdentifier:eventReporter:)();

  GenerativeFunctionInstrumenter.executionBegin()();
  GenerativeFunctionInstrumenter.promptConstructionBegin()();
  *(v1 + 4768) = GenerativeConfigurationProtocol.documents.getter(v3, v2);
  *(v1 + 4776) = GenerativeConfigurationProtocol.tools.getter();
  GenerativeConfigurationProtocol.toolChoice.getter();
  GenerativeConfigurationProtocol.stringRenderedPromptSanitizer.getter();
  v4 = *(v1 + 4680);
  v5 = *(v1 + 4672);
  v6 = *(v1 + 4664);
  if ((*(v4 + 48))(v6, 1, v5) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v6, &_s16GenerativeModels39StringRenderedPromptSanitizerWithRunnerVSgMd, &_s16GenerativeModels39StringRenderedPromptSanitizerWithRunnerVSgMR);
    v7 = 1;
  }

  else
  {
    v8 = *(v1 + 4624);
    (*(v4 + 32))(*(v1 + 4696), v6, v5);
    GenerativeFunctionInstrumenter.userRequestIdentifier.getter();
    TokenGenerator.responseSanitizerConfiguration(userRequestIdentifier:)(v8, MEMORY[0x1E69A1568]);
    v9 = *(v1 + 4696);
    v10 = *(v1 + 4688);
    v11 = *(v1 + 4680);
    v12 = *(v1 + 4672);
    v13 = *(v1 + 4656);
    v14 = *(v1 + 4648);
    v15 = *(v1 + 4640);
    v16 = *(v1 + 4632);
    (*(*(v1 + 4608) + 8))(*(v1 + 4624), *(v1 + 4600));
    (*(v11 + 16))(v10, v9, v12);
    (*(v15 + 16))(v14, v13, v16);
    StringRenderedPromptSanitizerWithConfiguration.init(stringRenderedPromptSanitizer:configuration:)();
    (*(v15 + 8))(v13, v16);
    (*(v11 + 8))(v9, v12);
    v7 = 0;
  }

  v17 = *(v1 + 4728);
  v18 = type metadata accessor for StringRenderedPromptSanitizerWithConfiguration();
  (*(*(v18 - 8) + 56))(v17, v7, 1, v18);
  GenerativeConfigurationProtocol.stringResponseSanitizer.getter();
  v19 = *(v1 + 4576);
  v20 = *(v1 + 4568);
  v21 = *(v1 + 4560);
  if ((*(v19 + 48))(v21, 1, v20) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v21, &_s16GenerativeModels33StringResponseSanitizerWithRunnerVSgMd, &_s16GenerativeModels33StringResponseSanitizerWithRunnerVSgMR);
    v22 = 1;
  }

  else
  {
    v23 = *(v1 + 4616);
    (*(v19 + 32))(*(v1 + 4592), v21, v20);
    GenerativeFunctionInstrumenter.userRequestIdentifier.getter();
    TokenGenerator.responseSanitizerConfiguration(userRequestIdentifier:)(v23, MEMORY[0x1E69A1558]);
    v24 = *(v1 + 4592);
    v25 = *(v1 + 4584);
    v26 = *(v1 + 4576);
    v27 = *(v1 + 4568);
    v28 = *(v1 + 4552);
    v29 = *(v1 + 4544);
    v30 = *(v1 + 4536);
    v31 = *(v1 + 4528);
    (*(*(v1 + 4608) + 8))(*(v1 + 4616), *(v1 + 4600));
    (*(v26 + 16))(v25, v24, v27);
    (*(v30 + 16))(v29, v28, v31);
    StringResponseSanitizerWithConfiguration.init(stringResponseSanitizer:configuration:)();
    (*(v30 + 8))(v28, v31);
    (*(v26 + 8))(v24, v27);
    v22 = 0;
  }

  v32 = *(v1 + 4712);
  v33 = *(v1 + 4440);
  v34 = *(v1 + 4432);
  v35 = type metadata accessor for StringResponseSanitizerWithConfiguration();
  (*(*(v35 - 8) + 56))(v32, v22, 1, v35);
  *(v1 + 4784) = GenerativeConfigurationProtocol.grammar.getter(v34, v33);
  *(v1 + 4792) = v36;
  *(v1 + 4800) = GenerativeConfigurationProtocol.partialGrammar.getter(*(v1 + 4432), *(v1 + 4440));
  *(v1 + 4808) = v37;
  *(v1 + 4816) = GenerativeConfigurationProtocol.grammarIdentifier.getter(*(v1 + 4432), *(v1 + 4440));
  *(v1 + 4824) = v38;
  *(v1 + 4832) = GenerativeConfigurationProtocol.schemaIdentifier.getter(*(v1 + 4432), *(v1 + 4440));
  *(v1 + 4840) = v39;
  GenerativeConfigurationProtocol.samplingParameters.getter(*(v1 + 4432), *(v1 + 4440), v1 + 1960);
  v40 = *(v1 + 2136);
  *(v1 + 392) = *(v1 + 2120);
  *(v1 + 408) = v40;
  *(v1 + 424) = *(v1 + 2152);
  v41 = *(v1 + 2072);
  *(v1 + 328) = *(v1 + 2056);
  *(v1 + 344) = v41;
  v42 = *(v1 + 2104);
  *(v1 + 360) = *(v1 + 2088);
  *(v1 + 376) = v42;
  v43 = *(v1 + 2008);
  *(v1 + 264) = *(v1 + 1992);
  *(v1 + 280) = v43;
  v44 = *(v1 + 2040);
  *(v1 + 296) = *(v1 + 2024);
  *(v1 + 312) = v44;
  v45 = *(v1 + 1976);
  *(v1 + 232) = *(v1 + 1960);
  v46 = *(v1 + 4728);
  v47 = *(v1 + 4520);
  v60 = *(v1 + 4720);
  v61 = *(v1 + 4472);
  v48 = *(v1 + 4456);
  v49 = *(v1 + 4432);
  v50 = *(v1 + 4416);
  *(v1 + 440) = *(v1 + 2168);
  *(v1 + 248) = v45;
  dispatch thunk of GenerativeConfigurationProtocol._overridableConfigurationStorage.getter();
  dispatch thunk of GenerativeConfigurationProtocol._runnableConfigurationStorage.getter();
  ChatMessagesPrompt.init(overridableConfigurationStorage:runnableConfigurationStorage:)();
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v46, v60, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
  v51 = swift_task_alloc();
  *(v1 + 4848) = v51;
  *(v51 + 16) = v47;
  v52 = *(v48 + 16);
  *(v1 + 4856) = v52;
  *(v1 + 4864) = (v48 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v52(v61, v50, v49);
  v53 = swift_task_alloc();
  *(v1 + 4872) = v53;
  *v53 = v1;
  v53[1] = closure #1 in TokenGenerator._streamResponse<A>(configuration:);
  v54 = *(v1 + 4720);
  v55 = *(v1 + 4480);
  v56 = *(v1 + 4472);
  v57 = *(v1 + 4440);
  v58 = *(v1 + 4432);

  return TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPromptTurns:chatMessagesConfiguration:forceRenderPrompt:)(v55, v54, &async function pointer to partial apply for closure #1 in closure #1 in TokenGenerator._streamResponse<A>(configuration:), v51, v56, 0, v58, v57);
}

uint64_t closure #1 in TokenGenerator._streamResponse<A>(configuration:)()
{
  v2 = *v1;
  *(*v1 + 4880) = v0;

  if (v0)
  {

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v2 + 232, &_s15TokenGeneration18SamplingParametersVSgMd, &_s15TokenGeneration18SamplingParametersVSgMR);

    v3 = closure #1 in TokenGenerator._streamResponse<A>(configuration:);
  }

  else
  {

    v3 = closure #1 in TokenGenerator._streamResponse<A>(configuration:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = (v0 + 232);
  v2 = *(v0 + 4792);
  GenerativeFunctionInstrumenter.promptConstructionEnd()();
  GenerativeFunctionInstrumenter.inferenceBegin()();
  if (v2)
  {
    v116 = *(v0 + 4856);
    v128 = *(v0 + 4792);
    v120 = *(v0 + 4776);
    v123 = *(v0 + 4768);
    v3 = *(v0 + 4752);
    v4 = *(v0 + 4744);
    v5 = *(v0 + 4736);
    v6 = *(v0 + 4464);
    v114 = *(v0 + 4760);
    v7 = *(v0 + 4432);
    v113 = *(v0 + 4416);

    v8 = *(v0 + 408);
    *(v0 + 3200) = *(v0 + 392);
    *(v0 + 3216) = v8;
    *(v0 + 3232) = *(v0 + 424);
    v9 = *(v0 + 344);
    *(v0 + 3136) = *(v0 + 328);
    *(v0 + 3152) = v9;
    v10 = *(v0 + 376);
    *(v0 + 3168) = *(v0 + 360);
    *(v0 + 3184) = v10;
    v11 = *(v0 + 280);
    *(v0 + 3072) = *(v0 + 264);
    *(v0 + 3088) = v11;
    v12 = *(v0 + 312);
    *(v0 + 3104) = *(v0 + 296);
    *(v0 + 3120) = v12;
    v13 = *(v0 + 248);
    *(v0 + 3040) = *v1;
    *(v0 + 3248) = *(v0 + 440);
    *(v0 + 3056) = v13;
    (*(v4 + 16))(v3, v114, v5);
    v116(v6, v113, v7);
    RequestMetadata.init<A>(generativeFunctionInstrumenter:configuration:)(v3, v6, v7, (v0 + 4024));
    v14 = *(v0 + 4040);
    v15 = *(v0 + 4048);
    v16 = *(v0 + 4072);
    *(v0 + 4080) = *(v0 + 4024);
    *(v0 + 4096) = v14;
    *(v0 + 4104) = v15;
    *(v0 + 4112) = *(v0 + 4056);
    *(v0 + 4128) = v16;
    v17 = swift_task_alloc();
    *(v0 + 4888) = v17;
    *v17 = v0;
    v17[1] = closure #1 in TokenGenerator._streamResponse<A>(configuration:);
    if (v120)
    {
      v18 = v120;
    }

    else
    {
      v18 = MEMORY[0x1E69E7CC0];
    }

    if (v123)
    {
      v19 = v123;
    }

    else
    {
      v19 = MEMORY[0x1E69E7CC0];
    }

    v20 = *(v0 + 4784);
    v21 = *(v0 + 4704);
    v22 = *(v0 + 4480);

    return TokenGenerator.complete(promptInputFromGenerativeModel:parameters:tools:toolChoice:documents:grammar:metadata:)(v0 + 4376, v22, v0 + 3040, v18, v21, v19, v20, v128);
  }

  else
  {
    v24 = *(v0 + 4808);
    if (v24)
    {
      v125 = *(v0 + 4776);
      v129 = *(v0 + 4768);
      v115 = *(v0 + 4760);
      v25 = *(v0 + 4752);
      v26 = *(v0 + 4744);
      v27 = *(v0 + 4736);
      v28 = *(v0 + 4464);
      v117 = *(v0 + 4856);
      v29 = *(v0 + 4432);
      v30 = *(v0 + 4416);

      v31 = *(v0 + 408);
      *(v0 + 2768) = *(v0 + 392);
      *(v0 + 2784) = v31;
      *(v0 + 2800) = *(v0 + 424);
      v32 = *(v0 + 344);
      *(v0 + 2704) = *(v0 + 328);
      *(v0 + 2720) = v32;
      v33 = *(v0 + 376);
      *(v0 + 2736) = *(v0 + 360);
      *(v0 + 2752) = v33;
      v34 = *(v0 + 280);
      *(v0 + 2640) = *(v0 + 264);
      *(v0 + 2656) = v34;
      v35 = *(v0 + 312);
      *(v0 + 2672) = *(v0 + 296);
      *(v0 + 2688) = v35;
      v36 = *(v0 + 248);
      *(v0 + 2608) = *v1;
      *(v0 + 2816) = *(v0 + 440);
      *(v0 + 2624) = v36;
      (*(v26 + 16))(v25, v115, v27);
      v117(v28, v30, v29);
      RequestMetadata.init<A>(generativeFunctionInstrumenter:configuration:)(v25, v28, v29, (v0 + 3744));
      v37 = *(v0 + 3760);
      v38 = *(v0 + 3768);
      v39 = *(v0 + 3792);
      *(v0 + 3800) = *(v0 + 3744);
      *(v0 + 3816) = v37;
      *(v0 + 3824) = v38;
      *(v0 + 3832) = *(v0 + 3776);
      *(v0 + 3848) = v39;
      v40 = swift_task_alloc();
      *(v0 + 4904) = v40;
      *v40 = v0;
      v40[1] = closure #1 in TokenGenerator._streamResponse<A>(configuration:);
      if (v125)
      {
        v41 = v125;
      }

      else
      {
        v41 = MEMORY[0x1E69E7CC0];
      }

      if (v129)
      {
        v42 = v129;
      }

      else
      {
        v42 = MEMORY[0x1E69E7CC0];
      }

      v43 = *(v0 + 4800);
      v44 = *(v0 + 4704);
      v45 = *(v0 + 4480);

      return TokenGenerator.complete(promptInputFromGenerativeModel:parameters:tools:toolChoice:documents:partialGrammar:metadata:)(v0 + 4344, v45, v0 + 2608, v41, v44, v42, v43, v24);
    }

    else
    {
      v46 = *(v0 + 4824);
      if (v46)
      {
        v126 = *(v0 + 4776);
        v130 = *(v0 + 4768);
        v47 = *(v0 + 4760);
        v48 = *(v0 + 4752);
        v49 = *(v0 + 4744);
        v50 = *(v0 + 4736);
        v51 = *(v0 + 4464);
        v118 = *(v0 + 4856);
        v52 = *(v0 + 4432);
        v53 = *(v0 + 4416);

        v54 = *(v0 + 408);
        *(v0 + 1904) = *(v0 + 392);
        *(v0 + 1920) = v54;
        *(v0 + 1936) = *(v0 + 424);
        v55 = *(v0 + 344);
        *(v0 + 1840) = *(v0 + 328);
        *(v0 + 1856) = v55;
        v56 = *(v0 + 376);
        *(v0 + 1872) = *(v0 + 360);
        *(v0 + 1888) = v56;
        v57 = *(v0 + 280);
        *(v0 + 1776) = *(v0 + 264);
        *(v0 + 1792) = v57;
        v58 = *(v0 + 312);
        *(v0 + 1808) = *(v0 + 296);
        *(v0 + 1824) = v58;
        v59 = *(v0 + 248);
        *(v0 + 1744) = *v1;
        *(v0 + 1952) = *(v0 + 440);
        *(v0 + 1760) = v59;
        (*(v49 + 16))(v48, v47, v50);
        v118(v51, v53, v52);
        RequestMetadata.init<A>(generativeFunctionInstrumenter:configuration:)(v48, v51, v52, (v0 + 4192));
        v60 = *(v0 + 4208);
        v61 = *(v0 + 4216);
        v62 = *(v0 + 4240);
        *(v0 + 3688) = *(v0 + 4192);
        *(v0 + 3704) = v60;
        *(v0 + 3712) = v61;
        *(v0 + 3720) = *(v0 + 4224);
        *(v0 + 3736) = v62;
        v63 = swift_task_alloc();
        *(v0 + 4920) = v63;
        *v63 = v0;
        v63[1] = closure #1 in TokenGenerator._streamResponse<A>(configuration:);
        if (v126)
        {
          v64 = v126;
        }

        else
        {
          v64 = MEMORY[0x1E69E7CC0];
        }

        if (v130)
        {
          v65 = v130;
        }

        else
        {
          v65 = MEMORY[0x1E69E7CC0];
        }

        v66 = *(v0 + 4816);
        v67 = *(v0 + 4704);
        v68 = *(v0 + 4480);

        return TokenGenerator.complete(promptInputFromGenerativeModel:parameters:tools:toolChoice:documents:grammarIdentifier:metadata:)(v0 + 4312, v68, v0 + 1744, v64, v67, v65, v66, v46);
      }

      else
      {
        v69 = *(v0 + 4840);
        v70 = (*(v0 + 4744) + 16);
        v127 = *(v0 + 4856);
        if (v69)
        {
          v121 = *(v0 + 4776);
          v71 = *(v0 + 4760);
          v72 = *(v0 + 4752);
          v73 = *(v0 + 4736);
          v74 = *(v0 + 4464);
          v119 = *(v0 + 4768);
          v75 = *(v0 + 4432);
          v76 = *(v0 + 4416);
          v77 = *(v0 + 408);
          *(v0 + 1256) = *(v0 + 392);
          *(v0 + 1272) = v77;
          *(v0 + 1288) = *(v0 + 424);
          *(v0 + 1304) = *(v0 + 440);
          v78 = *(v0 + 344);
          *(v0 + 1192) = *(v0 + 328);
          *(v0 + 1208) = v78;
          v79 = *(v0 + 376);
          *(v0 + 1224) = *(v0 + 360);
          *(v0 + 1240) = v79;
          v80 = *(v0 + 280);
          *(v0 + 1128) = *(v0 + 264);
          *(v0 + 1144) = v80;
          v81 = *(v0 + 312);
          *(v0 + 1160) = *(v0 + 296);
          *(v0 + 1176) = v81;
          v82 = *(v0 + 248);
          *(v0 + 1096) = *v1;
          *(v0 + 1112) = v82;
          (*v70)(v72, v71, v73);
          v127(v74, v76, v75);
          RequestMetadata.init<A>(generativeFunctionInstrumenter:configuration:)(v72, v74, v75, (v0 + 3912));
          v83 = *(v0 + 3928);
          v84 = *(v0 + 3936);
          v85 = *(v0 + 3960);
          *(v0 + 3856) = *(v0 + 3912);
          *(v0 + 3872) = v83;
          *(v0 + 3880) = v84;
          *(v0 + 3888) = *(v0 + 3944);
          *(v0 + 3904) = v85;
          v86 = swift_task_alloc();
          *(v0 + 4936) = v86;
          *v86 = v0;
          v86[1] = closure #1 in TokenGenerator._streamResponse<A>(configuration:);
          if (v121)
          {
            v87 = v121;
          }

          else
          {
            v87 = MEMORY[0x1E69E7CC0];
          }

          if (v119)
          {
            v88 = v119;
          }

          else
          {
            v88 = MEMORY[0x1E69E7CC0];
          }

          v89 = *(v0 + 4832);
          v90 = *(v0 + 4704);
          v91 = *(v0 + 4480);

          return TokenGenerator.complete(promptInputFromGenerativeModel:parameters:tools:toolChoice:documents:schemaIdentifier:metadata:)(v0 + 4280, v91, v0 + 1096, v87, v90, v88, v89, v69);
        }

        else
        {
          v122 = *(v0 + 4768);
          v124 = *(v0 + 4776);
          v92 = *(v0 + 4760);
          v93 = *(v0 + 4752);
          v94 = *(v0 + 4736);
          v95 = *(v0 + 4464);
          v96 = *(v0 + 4432);
          v97 = *(v0 + 4416);
          v98 = *(v0 + 408);
          *(v0 + 608) = *(v0 + 392);
          *(v0 + 624) = v98;
          *(v0 + 640) = *(v0 + 424);
          *(v0 + 656) = *(v0 + 440);
          v99 = *(v0 + 344);
          *(v0 + 544) = *(v0 + 328);
          *(v0 + 560) = v99;
          v100 = *(v0 + 376);
          *(v0 + 576) = *(v0 + 360);
          *(v0 + 592) = v100;
          v101 = *(v0 + 280);
          *(v0 + 480) = *(v0 + 264);
          *(v0 + 496) = v101;
          v102 = *(v0 + 312);
          *(v0 + 512) = *(v0 + 296);
          *(v0 + 528) = v102;
          v103 = *(v0 + 248);
          *(v0 + 448) = *v1;
          *(v0 + 464) = v103;
          GenerativeConfigurationProtocol.schema.getter();
          (*v70)(v93, v92, v94);
          v127(v95, v97, v96);
          RequestMetadata.init<A>(generativeFunctionInstrumenter:configuration:)(v93, v95, v96, (v0 + 4136));
          v104 = *(v0 + 4152);
          v105 = *(v0 + 4160);
          v106 = *(v0 + 4184);
          *(v0 + 3968) = *(v0 + 4136);
          *(v0 + 3984) = v104;
          *(v0 + 3992) = v105;
          *(v0 + 4000) = *(v0 + 4168);
          *(v0 + 4016) = v106;
          v107 = swift_task_alloc();
          *(v0 + 4952) = v107;
          *v107 = v0;
          v107[1] = closure #1 in TokenGenerator._streamResponse<A>(configuration:);
          if (v124)
          {
            v108 = v124;
          }

          else
          {
            v108 = MEMORY[0x1E69E7CC0];
          }

          if (v122)
          {
            v109 = v122;
          }

          else
          {
            v109 = MEMORY[0x1E69E7CC0];
          }

          v110 = *(v0 + 4704);
          v111 = *(v0 + 4480);
          v112 = *(v0 + 4448);

          return TokenGenerator.complete(promptInputFromGenerativeModel:parameters:tools:toolChoice:documents:schema:metadata:)(v0 + 4248, v111, v0 + 448, v108, v110, v109, v112, v0 + 3968);
        }
      }
    }
  }
}

{
  v2 = *v1;
  v3 = (*v1 + 3040);
  *(*v1 + 4896) = v0;

  v4 = *(v2 + 3056);
  if (v0)
  {
    *(v2 + 2824) = *v3;
    *(v2 + 2840) = v4;
    v5 = *(v2 + 3072);
    v6 = *(v2 + 3088);
    v7 = *(v2 + 3120);
    *(v2 + 2888) = *(v2 + 3104);
    *(v2 + 2904) = v7;
    *(v2 + 2856) = v5;
    *(v2 + 2872) = v6;
    v8 = *(v2 + 3136);
    v9 = *(v2 + 3152);
    v10 = *(v2 + 3184);
    *(v2 + 2952) = *(v2 + 3168);
    *(v2 + 2968) = v10;
    *(v2 + 2920) = v8;
    *(v2 + 2936) = v9;
    v11 = *(v2 + 3200);
    v12 = *(v2 + 3216);
    v13 = *(v2 + 3232);
    *(v2 + 3032) = *(v2 + 3248);
    *(v2 + 3000) = v12;
    *(v2 + 3016) = v13;
    *(v2 + 2984) = v11;
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v2 + 2824, &_s15TokenGeneration18SamplingParametersVSgMd, &_s15TokenGeneration18SamplingParametersVSgMR);
    v14 = closure #1 in TokenGenerator._streamResponse<A>(configuration:);
  }

  else
  {
    *(v2 + 16) = *v3;
    *(v2 + 32) = v4;
    v15 = *(v2 + 3072);
    v16 = *(v2 + 3088);
    v17 = *(v2 + 3120);
    *(v2 + 80) = *(v2 + 3104);
    *(v2 + 96) = v17;
    *(v2 + 48) = v15;
    *(v2 + 64) = v16;
    v18 = *(v2 + 3136);
    v19 = *(v2 + 3152);
    v20 = *(v2 + 3184);
    *(v2 + 144) = *(v2 + 3168);
    *(v2 + 160) = v20;
    *(v2 + 112) = v18;
    *(v2 + 128) = v19;
    v21 = *(v2 + 3200);
    v22 = *(v2 + 3216);
    v23 = *(v2 + 3232);
    *(v2 + 224) = *(v2 + 3248);
    *(v2 + 192) = v22;
    *(v2 + 208) = v23;
    *(v2 + 176) = v21;
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v2 + 16, &_s15TokenGeneration18SamplingParametersVSgMd, &_s15TokenGeneration18SamplingParametersVSgMR);
    v14 = closure #1 in TokenGenerator._streamResponse<A>(configuration:);
  }

  return MEMORY[0x1EEE6DFA0](v14, 0, 0);
}

{
  v2 = *v1;
  v3 = (*v1 + 2608);
  *(*v1 + 4912) = v0;

  if (v0)
  {
    v4 = *v3;
    *(v2 + 3488) = *(v2 + 2624);
    *(v2 + 3472) = v4;
    v5 = *(v2 + 2640);
    v6 = *(v2 + 2656);
    v7 = *(v2 + 2672);
    *(v2 + 3552) = *(v2 + 2688);
    *(v2 + 3536) = v7;
    *(v2 + 3520) = v6;
    *(v2 + 3504) = v5;
    v8 = *(v2 + 2704);
    v9 = *(v2 + 2720);
    v10 = *(v2 + 2736);
    *(v2 + 3616) = *(v2 + 2752);
    *(v2 + 3600) = v10;
    *(v2 + 3584) = v9;
    *(v2 + 3568) = v8;
    v11 = *(v2 + 2768);
    v12 = *(v2 + 2784);
    v13 = *(v2 + 2800);
    *(v2 + 3680) = *(v2 + 2816);
    *(v2 + 3664) = v13;
    *(v2 + 3648) = v12;
    *(v2 + 3632) = v11;
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v2 + 3472, &_s15TokenGeneration18SamplingParametersVSgMd, &_s15TokenGeneration18SamplingParametersVSgMR);
    v14 = closure #1 in TokenGenerator._streamResponse<A>(configuration:);
  }

  else
  {
    v15 = *(v2 + 2624);
    *(v2 + 3256) = *v3;
    *(v2 + 3272) = v15;
    v16 = *(v2 + 2640);
    v17 = *(v2 + 2656);
    v18 = *(v2 + 2688);
    *(v2 + 3320) = *(v2 + 2672);
    *(v2 + 3336) = v18;
    *(v2 + 3288) = v16;
    *(v2 + 3304) = v17;
    v19 = *(v2 + 2704);
    v20 = *(v2 + 2720);
    v21 = *(v2 + 2752);
    *(v2 + 3384) = *(v2 + 2736);
    *(v2 + 3400) = v21;
    *(v2 + 3352) = v19;
    *(v2 + 3368) = v20;
    v22 = *(v2 + 2768);
    v23 = *(v2 + 2784);
    v24 = *(v2 + 2800);
    *(v2 + 3464) = *(v2 + 2816);
    *(v2 + 3432) = v23;
    *(v2 + 3448) = v24;
    *(v2 + 3416) = v22;
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v2 + 3256, &_s15TokenGeneration18SamplingParametersVSgMd, &_s15TokenGeneration18SamplingParametersVSgMR);
    v14 = closure #1 in TokenGenerator._streamResponse<A>(configuration:);
  }

  return MEMORY[0x1EEE6DFA0](v14, 0, 0);
}

{
  v1 = *(v0 + 4728);
  v2 = *(v0 + 4704);
  outlined destroy of TokenGeneratorCompletionResponseStringStream(*(v0 + 4480), type metadata accessor for TokenGenerator.PromptInputFromGenerativeModel);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v2, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v1, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
  v17 = *(v0 + 4376);
  v16 = *(v0 + 4392);
  v3 = *(v0 + 4760);
  v4 = *(v0 + 4744);
  v5 = *(v0 + 4736);
  v6 = *(v0 + 4712);
  v7 = *(v0 + 4520);
  v8 = *(v0 + 4512);
  v9 = *(v0 + 4504);
  v10 = *(v0 + 4408);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumentertMd, &_s15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumentertMR);
  v12 = *(v11 + 48);
  v13 = *(v11 + 64);
  *v10 = v17;
  *(v10 + 1) = v16;
  outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v6, &v10[v12], &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMR);
  (*(v4 + 32))(&v10[v13], v3, v5);
  (*(v8 + 8))(v7, v9);

  v14 = *(v0 + 8);

  return v14();
}

{
  v2 = *v1;
  v3 = (*v1 + 1744);
  *(*v1 + 4928) = v0;

  if (v0)
  {
    v4 = *v3;
    *(v2 + 2192) = *(v2 + 1760);
    *(v2 + 2176) = v4;
    v5 = *(v2 + 1776);
    v6 = *(v2 + 1792);
    v7 = *(v2 + 1808);
    *(v2 + 2256) = *(v2 + 1824);
    *(v2 + 2240) = v7;
    *(v2 + 2224) = v6;
    *(v2 + 2208) = v5;
    v8 = *(v2 + 1840);
    v9 = *(v2 + 1856);
    v10 = *(v2 + 1872);
    *(v2 + 2320) = *(v2 + 1888);
    *(v2 + 2304) = v10;
    *(v2 + 2288) = v9;
    *(v2 + 2272) = v8;
    v11 = *(v2 + 1904);
    v12 = *(v2 + 1920);
    v13 = *(v2 + 1936);
    *(v2 + 2384) = *(v2 + 1952);
    *(v2 + 2368) = v13;
    *(v2 + 2352) = v12;
    *(v2 + 2336) = v11;
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v2 + 2176, &_s15TokenGeneration18SamplingParametersVSgMd, &_s15TokenGeneration18SamplingParametersVSgMR);
    v14 = closure #1 in TokenGenerator._streamResponse<A>(configuration:);
  }

  else
  {
    v15 = *(v2 + 1760);
    *(v2 + 2392) = *v3;
    *(v2 + 2408) = v15;
    v16 = *(v2 + 1776);
    v17 = *(v2 + 1792);
    v18 = *(v2 + 1824);
    *(v2 + 2456) = *(v2 + 1808);
    *(v2 + 2472) = v18;
    *(v2 + 2424) = v16;
    *(v2 + 2440) = v17;
    v19 = *(v2 + 1840);
    v20 = *(v2 + 1856);
    v21 = *(v2 + 1888);
    *(v2 + 2520) = *(v2 + 1872);
    *(v2 + 2536) = v21;
    *(v2 + 2488) = v19;
    *(v2 + 2504) = v20;
    v22 = *(v2 + 1904);
    v23 = *(v2 + 1920);
    v24 = *(v2 + 1936);
    *(v2 + 2600) = *(v2 + 1952);
    *(v2 + 2568) = v23;
    *(v2 + 2584) = v24;
    *(v2 + 2552) = v22;
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v2 + 2392, &_s15TokenGeneration18SamplingParametersVSgMd, &_s15TokenGeneration18SamplingParametersVSgMR);
    v14 = closure #1 in TokenGenerator._streamResponse<A>(configuration:);
  }

  return MEMORY[0x1EEE6DFA0](v14, 0, 0);
}

{
  v1 = *(v0 + 4728);
  v2 = *(v0 + 4704);
  outlined destroy of TokenGeneratorCompletionResponseStringStream(*(v0 + 4480), type metadata accessor for TokenGenerator.PromptInputFromGenerativeModel);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v2, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v1, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
  v17 = *(v0 + 4344);
  v16 = *(v0 + 4360);
  v3 = *(v0 + 4760);
  v4 = *(v0 + 4744);
  v5 = *(v0 + 4736);
  v6 = *(v0 + 4712);
  v7 = *(v0 + 4520);
  v8 = *(v0 + 4512);
  v9 = *(v0 + 4504);
  v10 = *(v0 + 4408);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumentertMd, &_s15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumentertMR);
  v12 = *(v11 + 48);
  v13 = *(v11 + 64);
  *v10 = v17;
  *(v10 + 1) = v16;
  outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v6, &v10[v12], &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMR);
  (*(v4 + 32))(&v10[v13], v3, v5);
  (*(v8 + 8))(v7, v9);

  v14 = *(v0 + 8);

  return v14();
}

{
  v2 = *v1;
  v3 = (*v1 + 1096);
  *(*v1 + 4944) = v0;

  if (v0)
  {
    v4 = *v3;
    *(v2 + 1328) = *(v2 + 1112);
    *(v2 + 1312) = v4;
    v5 = *(v2 + 1128);
    v6 = *(v2 + 1144);
    v7 = *(v2 + 1160);
    *(v2 + 1392) = *(v2 + 1176);
    *(v2 + 1376) = v7;
    *(v2 + 1360) = v6;
    *(v2 + 1344) = v5;
    v8 = *(v2 + 1192);
    v9 = *(v2 + 1208);
    v10 = *(v2 + 1224);
    *(v2 + 1456) = *(v2 + 1240);
    *(v2 + 1440) = v10;
    *(v2 + 1424) = v9;
    *(v2 + 1408) = v8;
    v11 = *(v2 + 1256);
    v12 = *(v2 + 1272);
    v13 = *(v2 + 1288);
    *(v2 + 1520) = *(v2 + 1304);
    *(v2 + 1504) = v13;
    *(v2 + 1488) = v12;
    *(v2 + 1472) = v11;
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v2 + 1312, &_s15TokenGeneration18SamplingParametersVSgMd, &_s15TokenGeneration18SamplingParametersVSgMR);
    v14 = closure #1 in TokenGenerator._streamResponse<A>(configuration:);
  }

  else
  {
    v15 = *(v2 + 1112);
    *(v2 + 1528) = *v3;
    *(v2 + 1544) = v15;
    v16 = *(v2 + 1128);
    v17 = *(v2 + 1144);
    v18 = *(v2 + 1176);
    *(v2 + 1592) = *(v2 + 1160);
    *(v2 + 1608) = v18;
    *(v2 + 1560) = v16;
    *(v2 + 1576) = v17;
    v19 = *(v2 + 1192);
    v20 = *(v2 + 1208);
    v21 = *(v2 + 1240);
    *(v2 + 1656) = *(v2 + 1224);
    *(v2 + 1672) = v21;
    *(v2 + 1624) = v19;
    *(v2 + 1640) = v20;
    v22 = *(v2 + 1256);
    v23 = *(v2 + 1272);
    v24 = *(v2 + 1288);
    *(v2 + 1736) = *(v2 + 1304);
    *(v2 + 1704) = v23;
    *(v2 + 1720) = v24;
    *(v2 + 1688) = v22;
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v2 + 1528, &_s15TokenGeneration18SamplingParametersVSgMd, &_s15TokenGeneration18SamplingParametersVSgMR);
    v14 = closure #1 in TokenGenerator._streamResponse<A>(configuration:);
  }

  return MEMORY[0x1EEE6DFA0](v14, 0, 0);
}

{
  v1 = *(v0 + 4728);
  v2 = *(v0 + 4704);
  outlined destroy of TokenGeneratorCompletionResponseStringStream(*(v0 + 4480), type metadata accessor for TokenGenerator.PromptInputFromGenerativeModel);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v2, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v1, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
  v17 = *(v0 + 4312);
  v16 = *(v0 + 4328);
  v3 = *(v0 + 4760);
  v4 = *(v0 + 4744);
  v5 = *(v0 + 4736);
  v6 = *(v0 + 4712);
  v7 = *(v0 + 4520);
  v8 = *(v0 + 4512);
  v9 = *(v0 + 4504);
  v10 = *(v0 + 4408);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumentertMd, &_s15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumentertMR);
  v12 = *(v11 + 48);
  v13 = *(v11 + 64);
  *v10 = v17;
  *(v10 + 1) = v16;
  outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v6, &v10[v12], &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMR);
  (*(v4 + 32))(&v10[v13], v3, v5);
  (*(v8 + 8))(v7, v9);

  v14 = *(v0 + 8);

  return v14();
}

{
  v2 = *v1;
  *(v2 + 4960) = v0;

  v3 = *(v2 + 4448);

  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v3, &_s29GenerativeFunctionsFoundation6SchemaVSgMd, &_s29GenerativeFunctionsFoundation6SchemaVSgMR);
  v4 = *(v2 + 464);
  if (v0)
  {
    *(v2 + 664) = *(v2 + 448);
    *(v2 + 680) = v4;
    v5 = *(v2 + 528);
    v7 = *(v2 + 480);
    v6 = *(v2 + 496);
    *(v2 + 728) = *(v2 + 512);
    *(v2 + 744) = v5;
    *(v2 + 696) = v7;
    *(v2 + 712) = v6;
    v8 = *(v2 + 592);
    v10 = *(v2 + 544);
    v9 = *(v2 + 560);
    *(v2 + 792) = *(v2 + 576);
    *(v2 + 808) = v8;
    *(v2 + 760) = v10;
    *(v2 + 776) = v9;
    v12 = *(v2 + 624);
    v11 = *(v2 + 640);
    v13 = *(v2 + 608);
    *(v2 + 872) = *(v2 + 656);
    *(v2 + 840) = v12;
    *(v2 + 856) = v11;
    *(v2 + 824) = v13;
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v2 + 664, &_s15TokenGeneration18SamplingParametersVSgMd, &_s15TokenGeneration18SamplingParametersVSgMR);
    v14 = closure #1 in TokenGenerator._streamResponse<A>(configuration:);
  }

  else
  {
    *(v2 + 880) = *(v2 + 448);
    *(v2 + 896) = v4;
    v15 = *(v2 + 528);
    v17 = *(v2 + 480);
    v16 = *(v2 + 496);
    *(v2 + 944) = *(v2 + 512);
    *(v2 + 960) = v15;
    *(v2 + 912) = v17;
    *(v2 + 928) = v16;
    v18 = *(v2 + 592);
    v20 = *(v2 + 544);
    v19 = *(v2 + 560);
    *(v2 + 1008) = *(v2 + 576);
    *(v2 + 1024) = v18;
    *(v2 + 976) = v20;
    *(v2 + 992) = v19;
    v22 = *(v2 + 624);
    v21 = *(v2 + 640);
    v23 = *(v2 + 656);
    *(v2 + 1040) = *(v2 + 608);
    *(v2 + 1088) = v23;
    *(v2 + 1072) = v21;
    *(v2 + 1056) = v22;
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v2 + 880, &_s15TokenGeneration18SamplingParametersVSgMd, &_s15TokenGeneration18SamplingParametersVSgMR);
    v14 = closure #1 in TokenGenerator._streamResponse<A>(configuration:);
  }

  return MEMORY[0x1EEE6DFA0](v14, 0, 0);
}

{
  v1 = *(v0 + 4728);
  v2 = *(v0 + 4704);
  outlined destroy of TokenGeneratorCompletionResponseStringStream(*(v0 + 4480), type metadata accessor for TokenGenerator.PromptInputFromGenerativeModel);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v2, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v1, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
  v17 = *(v0 + 4280);
  v16 = *(v0 + 4296);
  v3 = *(v0 + 4760);
  v4 = *(v0 + 4744);
  v5 = *(v0 + 4736);
  v6 = *(v0 + 4712);
  v7 = *(v0 + 4520);
  v8 = *(v0 + 4512);
  v9 = *(v0 + 4504);
  v10 = *(v0 + 4408);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumentertMd, &_s15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumentertMR);
  v12 = *(v11 + 48);
  v13 = *(v11 + 64);
  *v10 = v17;
  *(v10 + 1) = v16;
  outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v6, &v10[v12], &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMR);
  (*(v4 + 32))(&v10[v13], v3, v5);
  (*(v8 + 8))(v7, v9);

  v14 = *(v0 + 8);

  return v14();
}

{
  v1 = *(v0 + 4728);
  v2 = *(v0 + 4704);
  outlined destroy of TokenGeneratorCompletionResponseStringStream(*(v0 + 4480), type metadata accessor for TokenGenerator.PromptInputFromGenerativeModel);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v2, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v1, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
  v17 = *(v0 + 4248);
  v16 = *(v0 + 4264);
  v3 = *(v0 + 4760);
  v4 = *(v0 + 4744);
  v5 = *(v0 + 4736);
  v6 = *(v0 + 4712);
  v7 = *(v0 + 4520);
  v8 = *(v0 + 4512);
  v9 = *(v0 + 4504);
  v10 = *(v0 + 4408);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumentertMd, &_s15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumentertMR);
  v12 = *(v11 + 48);
  v13 = *(v11 + 64);
  *v10 = v17;
  *(v10 + 1) = v16;
  outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v6, &v10[v12], &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMR);
  (*(v4 + 32))(&v10[v13], v3, v5);
  (*(v8 + 8))(v7, v9);

  v14 = *(v0 + 8);

  return v14();
}

{
  v1 = v0[595];
  v2 = v0[593];
  v3 = v0[592];
  v4 = v0[591];
  v5 = v0[589];
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[588], &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v5, &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v4, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
  (*(v2 + 8))(v1, v3);

  (*(v0[564] + 8))(v0[565], v0[563]);

  v6 = v0[1];

  return v6();
}

{
  v1 = v0[595];
  v2 = v0[593];
  v3 = v0[592];
  v4 = v0[591];
  v5 = v0[589];
  v6 = v0[588];
  outlined destroy of TokenGeneratorCompletionResponseStringStream(v0[560], type metadata accessor for TokenGenerator.PromptInputFromGenerativeModel);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v6, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v5, &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v4, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
  (*(v2 + 8))(v1, v3);
  (*(v0[564] + 8))(v0[565], v0[563]);

  v7 = v0[1];

  return v7();
}

{
  v1 = v0[595];
  v2 = v0[593];
  v3 = v0[592];
  v4 = v0[591];
  v5 = v0[589];
  v6 = v0[588];
  outlined destroy of TokenGeneratorCompletionResponseStringStream(v0[560], type metadata accessor for TokenGenerator.PromptInputFromGenerativeModel);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v6, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v5, &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v4, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
  (*(v2 + 8))(v1, v3);
  (*(v0[564] + 8))(v0[565], v0[563]);

  v7 = v0[1];

  return v7();
}

{
  v1 = v0[595];
  v2 = v0[593];
  v3 = v0[592];
  v4 = v0[591];
  v5 = v0[589];
  v6 = v0[588];
  outlined destroy of TokenGeneratorCompletionResponseStringStream(v0[560], type metadata accessor for TokenGenerator.PromptInputFromGenerativeModel);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v6, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v5, &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v4, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
  (*(v2 + 8))(v1, v3);
  (*(v0[564] + 8))(v0[565], v0[563]);

  v7 = v0[1];

  return v7();
}

{
  v1 = v0[595];
  v2 = v0[593];
  v3 = v0[592];
  v4 = v0[591];
  v5 = v0[589];
  v6 = v0[588];
  outlined destroy of TokenGeneratorCompletionResponseStringStream(v0[560], type metadata accessor for TokenGenerator.PromptInputFromGenerativeModel);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v6, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v5, &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v4, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
  (*(v2 + 8))(v1, v3);
  (*(v0[564] + 8))(v0[565], v0[563]);

  v7 = v0[1];

  return v7();
}

{
  v1 = v0[595];
  v2 = v0[593];
  v3 = v0[592];
  v4 = v0[591];
  v5 = v0[589];
  v6 = v0[588];
  outlined destroy of TokenGeneratorCompletionResponseStringStream(v0[560], type metadata accessor for TokenGenerator.PromptInputFromGenerativeModel);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v6, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v5, &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v4, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
  (*(v2 + 8))(v1, v3);
  (*(v0[564] + 8))(v0[565], v0[563]);

  v7 = v0[1];

  return v7();
}

uint64_t closure #1 in closure #1 in TokenGenerator._streamResponse<A>(configuration:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in TokenGenerator._streamResponse<A>(configuration:), 0, 0);
}

uint64_t closure #1 in closure #1 in TokenGenerator._streamResponse<A>(configuration:)()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = type metadata accessor for ChatMessagesPrompt();
  (*(*(v3 - 8) + 16))(v1, v2, v3);
  v4 = v0[1];

  return v4();
}

uint64_t protocol witness for ChatLanguageModelProvidingStreamable._streamResponse<A>(configuration:) in conformance TokenGenerator(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return TokenGenerator._streamResponse<A>(configuration:)(a1, a2, a3, a4);
}

uint64_t TokenGenerator._respond<A, B>(type:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  type metadata accessor for TokenGeneratorChatResponseGenerableAdditionalInfo(0);
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  v16 = swift_task_alloc();
  *(v7 + 24) = v16;
  *v16 = v7;
  v16[1] = TokenGenerator._respond<A, B>(type:configuration:);

  return TokenGenerator._oneShotResponse<A, B>(type:configuration:)(a1, v15, a2, a3, a4, a5, a6, a7);
}

uint64_t TokenGenerator._respond<A, B>(type:configuration:)()
{
  v2 = *v1;
  *(*v1 + 32) = v0;

  if (v0)
  {
    v3 = TokenGenerator._respond<A, B>(type:configuration:);
  }

  else
  {
    outlined destroy of TokenGeneratorCompletionResponseStringStream(*(v2 + 16), type metadata accessor for TokenGeneratorChatResponseGenerableAdditionalInfo);
    v3 = TokenGenerator._respond<A, B>(type:configuration:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t TokenGenerator._oneShotResponse<A, B>(type:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[17] = a8;
  v9[18] = v8;
  v9[15] = a6;
  v9[16] = a7;
  v9[13] = a4;
  v9[14] = a5;
  v9[11] = a2;
  v9[12] = a3;
  v9[10] = a1;
  v12 = type metadata accessor for ChatMessageRole();
  v9[19] = v12;
  v9[20] = *(v12 - 8);
  v9[21] = swift_task_alloc();
  v13 = *(a6 - 8);
  v9[22] = v13;
  v9[23] = *(v13 + 64);
  v9[24] = swift_task_alloc();
  type metadata accessor for PromptCompletion(0);
  v9[25] = swift_task_alloc();
  v9[26] = swift_task_alloc();
  v9[27] = *(a5 - 8);
  v9[28] = swift_task_alloc();
  v9[29] = swift_task_alloc();
  v14 = type metadata accessor for GenerativeFunctionInstrumenter();
  v9[30] = v14;
  v9[31] = *(v14 - 8);
  v9[32] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](TokenGenerator._oneShotResponse<A, B>(type:configuration:), 0, 0);
}

uint64_t TokenGenerator._oneShotResponse<A, B>(type:configuration:)(__n128 a1)
{
  v2 = *(v1 + 144);
  if (*(v2 + 24))
  {
  }

  v23 = *(v1 + 256);
  v3 = *(v1 + 192);
  v4 = *(v1 + 176);
  v5 = *(v1 + 136);
  v21 = *(v1 + 128);
  v6 = *(v1 + 112);
  v7 = *(v1 + 120);
  v8 = *(v1 + 104);
  GenerativeConfigurationProtocol.generateGenerativeFunctionInstrumenter(useCaseIdentifier:eventReporter:)();

  *(v1 + 40) = v7;
  *(v1 + 48) = v5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v1 + 16));
  v10 = *(v4 + 16);
  v10(boxed_opaque_existential_1, v8, v7);
  v10(v3, v8, v7);
  v11 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v12 = swift_allocObject();
  *(v12 + 2) = v6;
  *(v12 + 3) = v7;
  *(v12 + 4) = v21;
  *(v12 + 5) = v5;
  (*(v4 + 32))(&v12[v11], v3, v7);
  *(v1 + 56) = &async function pointer to partial apply for closure #1 in TokenGenerator._oneShotResponse<A, B>(type:configuration:);
  *(v1 + 64) = v12;
  *(v1 + 72) = 1;
  v13 = swift_task_alloc();
  *(v1 + 264) = v13;
  v13[2] = v6;
  v13[3] = v7;
  v13[4] = v21;
  v13[5] = v5;
  v13[6] = v8;
  v13[7] = v2;
  v13[8] = v23;
  v14 = swift_task_alloc();
  *(v1 + 272) = v14;
  *v14 = v1;
  v14[1] = TokenGenerator._oneShotResponse<A, B>(type:configuration:);
  v15 = *(v1 + 256);
  v16 = *(v1 + 232);
  v17 = *(v1 + 208);
  v18 = *(v1 + 112);
  v19 = *(v1 + 96);

  return TokenGenerator.completeGenerable<A>(type:configurationInput:generativeFunctionInstrumenter:getStringRenderedPromptSanitizerWithConfiguration:)(v16, v17, v19, v1 + 16, v15, &async function pointer to partial apply for closure #2 in TokenGenerator._oneShotResponse<A, B>(type:configuration:), v13, v18);
}

uint64_t TokenGenerator._oneShotResponse<A, B>(type:configuration:)()
{
  v2 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v3 = TokenGenerator._oneShotResponse<A, B>(type:configuration:);
  }

  else
  {

    outlined destroy of TokenGenerator.CompleteGenerableConfigurationInput(v2 + 16);
    v3 = TokenGenerator._oneShotResponse<A, B>(type:configuration:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = v0[31];
  v2 = v0[29];
  v12 = v0[30];
  v13 = v0[32];
  v3 = v0[27];
  v4 = v0[28];
  v5 = v0[26];
  v11 = v0[25];
  v6 = v0[14];
  v7 = v0[11];
  (*(v0[20] + 104))(v0[21], *MEMORY[0x1E69C6400], v0[19]);
  (*(v3 + 16))(v4, v2, v6);
  ChatMessageResponse.init(role:content:)();
  outlined init with copy of PromptCompletion(v5, v7, type metadata accessor for PromptCompletion);
  outlined init with copy of PromptCompletion(v5, v11, type metadata accessor for PromptCompletion);
  v8 = type metadata accessor for TokenGeneratorChatResponseGenerableAdditionalInfo(0);
  InferenceResponse.init(_:)(v11, v7 + *(v8 + 20));
  outlined destroy of TokenGeneratorCompletionResponseStringStream(v5, type metadata accessor for PromptCompletion);
  (*(v3 + 8))(v2, v6);
  (*(v1 + 8))(v13, v12);

  v9 = v0[1];

  return v9();
}

{
  v1 = v0[32];
  v2 = v0[30];
  v3 = v0[31];

  outlined destroy of TokenGenerator.CompleteGenerableConfigurationInput((v0 + 2));
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t closure #1 in TokenGenerator._oneShotResponse<A, B>(type:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a4;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a2;
  type metadata accessor for RunnableConfigurationStorage();
  v6[6] = swift_task_alloc();
  type metadata accessor for OverridableConfigurationStorage();
  v6[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in TokenGenerator._oneShotResponse<A, B>(type:configuration:), 0, 0);
}

uint64_t closure #2 in TokenGenerator._oneShotResponse<A, B>(type:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a6;
  v8[7] = a8;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  v9 = type metadata accessor for UUID();
  v8[8] = v9;
  v8[9] = *(v9 - 8);
  v8[10] = swift_task_alloc();
  v10 = type metadata accessor for StringRenderedPromptSanitizerRunnerConfiguration();
  v8[11] = v10;
  v8[12] = *(v10 - 8);
  v8[13] = swift_task_alloc();
  v8[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16GenerativeModels39StringRenderedPromptSanitizerWithRunnerVSgMd, &_s16GenerativeModels39StringRenderedPromptSanitizerWithRunnerVSgMR);
  v8[15] = swift_task_alloc();
  v11 = type metadata accessor for StringRenderedPromptSanitizerWithRunner();
  v8[16] = v11;
  v8[17] = *(v11 - 8);
  v8[18] = swift_task_alloc();
  v8[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #2 in TokenGenerator._oneShotResponse<A, B>(type:configuration:), 0, 0);
}

uint64_t closure #2 in TokenGenerator._oneShotResponse<A, B>(type:configuration:)()
{
  GenerativeConfigurationProtocol.stringRenderedPromptSanitizer.getter();
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[15];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v3, &_s16GenerativeModels39StringRenderedPromptSanitizerWithRunnerVSgMd, &_s16GenerativeModels39StringRenderedPromptSanitizerWithRunnerVSgMR);
    v4 = 1;
  }

  else
  {
    v6 = v0[9];
    v5 = v0[10];
    v18 = v0[8];
    (*(v2 + 32))(v0[19], v3, v1);
    GenerativeFunctionInstrumenter.userRequestIdentifier.getter();
    TokenGenerator.responseSanitizerConfiguration(userRequestIdentifier:)(v5, MEMORY[0x1E69A1568]);
    (*(v6 + 8))(v5, v18);
    v7 = v0[19];
    v8 = v0[17];
    v9 = v0[16];
    v11 = v0[13];
    v10 = v0[14];
    v12 = v0[11];
    v13 = v0[12];
    (*(v8 + 16))(v0[18], v7, v9);
    (*(v13 + 16))(v11, v10, v12);
    StringRenderedPromptSanitizerWithConfiguration.init(stringRenderedPromptSanitizer:configuration:)();
    (*(v13 + 8))(v10, v12);
    (*(v8 + 8))(v7, v9);
    v4 = 0;
  }

  v14 = v0[2];
  v15 = type metadata accessor for StringRenderedPromptSanitizerWithConfiguration();
  (*(*(v15 - 8) + 56))(v14, v4, 1, v15);

  v16 = v0[1];

  return v16();
}

uint64_t protocol witness for ChatLanguageModelProvidingOneShotGenerable._oneShotResponse<A, B>(type:configuration:) in conformance TokenGenerator(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return TokenGenerator._oneShotResponse<A, B>(type:configuration:)(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t TokenGenerator._respondMultiElement<A, B>(type:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[10] = a7;
  v8[11] = v7;
  v8[8] = a5;
  v8[9] = a6;
  v8[6] = a3;
  v8[7] = a4;
  v8[4] = a1;
  v8[5] = a2;
  v9 = type metadata accessor for GenerativeFunctionInstrumenter();
  v8[12] = v9;
  v8[13] = *(v9 - 8);
  v8[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](TokenGenerator._respondMultiElement<A, B>(type:configuration:), 0, 0);
}

uint64_t TokenGenerator._respondMultiElement<A, B>(type:configuration:)(__n128 a1)
{
  v2 = v1[11];
  if (*(v2 + 24))
  {
  }

  v16 = v1[14];
  v3 = v1[9];
  v4 = v1[10];
  v5 = v1[7];
  v6 = v1[8];
  v7 = v1[6];
  GenerativeConfigurationProtocol.generateGenerativeFunctionInstrumenter(useCaseIdentifier:eventReporter:)();

  v1[2] = 0;
  swift_getAssociatedTypeWitness();
  v17 = type metadata accessor for Array();
  v8 = swift_allocObject();
  v1[15] = v8;
  *(v8 + 16) = v1 + 2;
  v9 = swift_task_alloc();
  v1[16] = v9;
  v9[2] = v5;
  v9[3] = v6;
  v9[4] = v3;
  v9[5] = v4;
  v9[6] = v7;
  v9[7] = v2;
  v9[8] = v16;
  v10 = swift_task_alloc();
  v1[17] = v10;
  type metadata accessor for GenerativeStream();
  v1[3] = swift_getAssociatedConformanceWitness();
  swift_getWitnessTable();
  *v10 = v1;
  v10[1] = TokenGenerator._respondMultiElement<A, B>(type:configuration:);
  v11 = v1[14];
  v12 = v1[6];
  v13 = v1[5];
  v14 = v1[4];

  return TokenGenerator._respond<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:)(v14, v13, v12, v17, v11, partial apply for specialized closure #1 in TokenGenerator._respondMultiElement<A, B>(type:configuration:), v8, &async function pointer to partial apply for closure #2 in TokenGenerator._respondMultiElement<A, B>(type:configuration:));
}

uint64_t TokenGenerator._respondMultiElement<A, B>(type:configuration:)()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = TokenGenerator._respondMultiElement<A, B>(type:configuration:);
  }

  else
  {

    v2 = TokenGenerator._respondMultiElement<A, B>(type:configuration:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t closure #2 in TokenGenerator._respondMultiElement<A, B>(type:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 168) = v15;
  *(v8 + 152) = v14;
  *(v8 + 136) = a7;
  *(v8 + 144) = a8;
  *(v8 + 120) = a5;
  *(v8 + 128) = a6;
  *(v8 + 312) = a4;
  *(v8 + 104) = a2;
  *(v8 + 112) = a3;
  *(v8 + 96) = a1;
  v9 = type metadata accessor for UUID();
  *(v8 + 176) = v9;
  *(v8 + 184) = *(v9 - 8);
  *(v8 + 192) = swift_task_alloc();
  type metadata accessor for StringResponseSanitizerRunnerConfiguration();
  *(v8 + 200) = swift_task_alloc();
  v10 = type metadata accessor for StringResponseSanitizerWithConfiguration();
  *(v8 + 208) = v10;
  *(v8 + 216) = *(v10 - 8);
  *(v8 + 224) = swift_task_alloc();
  v11 = type metadata accessor for StringResponseSanitizerWithRunner();
  *(v8 + 232) = v11;
  *(v8 + 240) = *(v11 - 8);
  *(v8 + 248) = swift_task_alloc();
  *(v8 + 256) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16GenerativeModels33StringResponseSanitizerWithRunnerVSgMd, &_s16GenerativeModels33StringResponseSanitizerWithRunnerVSgMR);
  *(v8 + 264) = swift_task_alloc();
  *(v8 + 272) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #2 in TokenGenerator._respondMultiElement<A, B>(type:configuration:), 0, 0);
}

uint64_t closure #2 in TokenGenerator._respondMultiElement<A, B>(type:configuration:)()
{
  GenerativeConfigurationProtocol.stringResponseSanitizer.getter();
  v1 = *(v0 + 264);
  v2 = *(v0 + 232);
  v3 = *(v0 + 240);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(*(v0 + 272), v1, &_s16GenerativeModels33StringResponseSanitizerWithRunnerVSgMd, &_s16GenerativeModels33StringResponseSanitizerWithRunnerVSgMR);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 312);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(*(v0 + 264), &_s16GenerativeModels33StringResponseSanitizerWithRunnerVSgMd, &_s16GenerativeModels33StringResponseSanitizerWithRunnerVSgMR);
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0;
    *(v0 + 16) = 0u;
    v5 = swift_task_alloc();
    *(v0 + 280) = v5;
    *v5 = v0;
    v5[1] = closure #2 in TokenGenerator._respondMultiElement<A, B>(type:configuration:);
    v6 = *(v0 + 160);
    v7 = *(v0 + 144);
    v8 = *(v0 + 104);
    v9 = *(v0 + 112);
    v10 = *(v0 + 96);
    v11 = v4 & 1;
    v12 = v0 + 16;
  }

  else
  {
    v13 = *(v0 + 256);
    v15 = *(v0 + 240);
    v14 = *(v0 + 248);
    v16 = *(v0 + 232);
    v17 = *(v0 + 192);
    (*(v15 + 32))(v13, *(v0 + 264), v16);
    (*(v15 + 16))(v14, v13, v16);
    GenerativeFunctionInstrumenter.userRequestIdentifier.getter();
    TokenGenerator.responseSanitizerConfiguration(userRequestIdentifier:)(v17, MEMORY[0x1E69A1558]);
    v19 = *(v0 + 216);
    v18 = *(v0 + 224);
    v20 = *(v0 + 208);
    v21 = *(v0 + 312);
    (*(*(v0 + 184) + 8))(*(v0 + 192), *(v0 + 176));
    StringResponseSanitizerWithConfiguration.init(stringResponseSanitizer:configuration:)();
    *(v0 + 80) = v20;
    *(v0 + 88) = lazy protocol witness table accessor for type TokenGeneratorCompletionResponse and conformance TokenGeneratorCompletionResponse(&lazy protocol witness table cache variable for type StringResponseSanitizerWithConfiguration and conformance StringResponseSanitizerWithConfiguration, MEMORY[0x1E69A1550], MEMORY[0x1E69A1540]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 56));
    (*(v19 + 16))(boxed_opaque_existential_1, v18, v20);
    v23 = swift_task_alloc();
    *(v0 + 296) = v23;
    *v23 = v0;
    v23[1] = closure #2 in TokenGenerator._respondMultiElement<A, B>(type:configuration:);
    v6 = *(v0 + 160);
    v7 = *(v0 + 144);
    v8 = *(v0 + 104);
    v9 = *(v0 + 112);
    v10 = *(v0 + 96);
    v11 = v21 & 1;
    v12 = v0 + 56;
  }

  return MEMORY[0x1EEE0A3D0](v10, v8, v9, v11, v12, v7, v6);
}

{
  v2 = *v1;
  *(v2 + 288) = v0;

  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v2 + 16, &_s19GenerativeFunctions16_StreamSanitizer_pSgMd, &_s19GenerativeFunctions16_StreamSanitizer_pSgMR);
  if (v0)
  {
    v3 = closure #2 in TokenGenerator._respondMultiElement<A, B>(type:configuration:);
  }

  else
  {
    v3 = closure #2 in TokenGenerator._respondMultiElement<A, B>(type:configuration:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v2 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    v3 = closure #2 in TokenGenerator._respondMultiElement<A, B>(type:configuration:);
  }

  else
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v2 + 56, &_s19GenerativeFunctions16_StreamSanitizer_pSgMd, &_s19GenerativeFunctions16_StreamSanitizer_pSgMR);
    v3 = closure #2 in TokenGenerator._respondMultiElement<A, B>(type:configuration:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = v0[32];
  v2 = v0[29];
  v3 = v0[30];
  (*(v0[27] + 8))(v0[28], v0[26]);
  (*(v3 + 8))(v1, v2);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[34], &_s16GenerativeModels33StringResponseSanitizerWithRunnerVSgMd, &_s16GenerativeModels33StringResponseSanitizerWithRunnerVSgMR);

  v4 = v0[1];

  return v4();
}

{
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(*(v0 + 272), &_s16GenerativeModels33StringResponseSanitizerWithRunnerVSgMd, &_s16GenerativeModels33StringResponseSanitizerWithRunnerVSgMR);

  v1 = *(v0 + 8);

  return v1();
}

{
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(*(v0 + 272), &_s16GenerativeModels33StringResponseSanitizerWithRunnerVSgMd, &_s16GenerativeModels33StringResponseSanitizerWithRunnerVSgMR);

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = v0[34];
  v2 = v0[32];
  v3 = v0[29];
  v4 = v0[30];
  (*(v0[27] + 8))(v0[28], v0[26]);
  (*(v4 + 8))(v2, v3);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v1, &_s16GenerativeModels33StringResponseSanitizerWithRunnerVSgMd, &_s16GenerativeModels33StringResponseSanitizerWithRunnerVSgMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?((v0 + 7), &_s19GenerativeFunctions16_StreamSanitizer_pSgMd, &_s19GenerativeFunctions16_StreamSanitizer_pSgMR);

  v5 = v0[1];

  return v5();
}

uint64_t TokenGenerator._respond<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 1440) = v8;
  *(v9 + 1432) = v22;
  *(v9 + 1416) = v21;
  *(v9 + 1408) = v20;
  *(v9 + 1400) = v19;
  *(v9 + 1392) = v18;
  *(v9 + 1376) = v17;
  *(v9 + 1368) = a8;
  *(v9 + 1360) = a5;
  *(v9 + 1352) = a4;
  *(v9 + 1344) = a3;
  *(v9 + 1336) = a1;
  *(v9 + 1448) = *v8;
  v10 = type metadata accessor for ChatMessageRole();
  *(v9 + 1456) = v10;
  *(v9 + 1464) = *(v10 - 8);
  *(v9 + 1472) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s34GenerativeFunctionsInstrumentation0A20FunctionInstrumenterVSgMd, &_s34GenerativeFunctionsInstrumentation0A20FunctionInstrumenterVSgMR);
  *(v9 + 1480) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScsySSs5Error_pGMd, &_sScsySSs5Error_pGMR);
  *(v9 + 1488) = v11;
  *(v9 + 1496) = *(v11 - 8);
  *(v9 + 1504) = swift_task_alloc();
  v12 = *(v20 - 8);
  *(v9 + 1512) = v12;
  *(v9 + 1520) = *(v12 + 64);
  *(v9 + 1528) = swift_task_alloc();
  *(v9 + 1536) = swift_task_alloc();
  v13 = type metadata accessor for GenerativeFunctionInstrumenter();
  *(v9 + 1544) = v13;
  v14 = *(v13 - 8);
  *(v9 + 1552) = v14;
  *(v9 + 1560) = *(v14 + 64);
  *(v9 + 1568) = swift_task_alloc();
  *(v9 + 1576) = swift_task_alloc();
  *(v9 + 1584) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScsySSs5Error_pG6result_Sd8durationtMd, &_sScsySSs5Error_pG6result_Sd8durationtMR);
  *(v9 + 1592) = swift_task_alloc();
  *(v9 + 1600) = swift_task_alloc();
  *(v9 + 1608) = *(v19 - 8);
  *(v9 + 1616) = swift_task_alloc();
  *(v9 + 1624) = swift_task_alloc();
  *(v9 + 1632) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](TokenGenerator._respond<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:), 0, 0);
}

uint64_t TokenGenerator._respond<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:)()
{
  GenerativeConfigurationProtocol.samplingParameters.getter(*(v0 + 1408), *(v0 + 1432), v0 + 16);
  v2 = *(v0 + 176);
  v1 = *(v0 + 192);
  v3 = *(v0 + 160);
  *(v0 + 616) = v2;
  *(v0 + 632) = v1;
  v4 = *(v0 + 192);
  *(v0 + 648) = *(v0 + 208);
  v6 = *(v0 + 112);
  v5 = *(v0 + 128);
  v7 = *(v0 + 96);
  *(v0 + 552) = v6;
  *(v0 + 568) = v5;
  v8 = *(v0 + 128);
  v10 = *(v0 + 144);
  v9 = *(v0 + 160);
  *(v0 + 584) = v10;
  *(v0 + 600) = v9;
  v12 = *(v0 + 48);
  v11 = *(v0 + 64);
  v13 = *(v0 + 32);
  *(v0 + 488) = v12;
  *(v0 + 504) = v11;
  v14 = *(v0 + 64);
  v16 = *(v0 + 80);
  v15 = *(v0 + 96);
  *(v0 + 520) = v16;
  *(v0 + 536) = v15;
  v17 = *(v0 + 32);
  v18 = *(v0 + 16);
  *(v0 + 456) = v18;
  *(v0 + 472) = v17;
  *(v0 + 400) = v2;
  *(v0 + 416) = v4;
  *(v0 + 432) = *(v0 + 208);
  *(v0 + 336) = v6;
  *(v0 + 352) = v8;
  *(v0 + 368) = v10;
  *(v0 + 384) = v3;
  *(v0 + 272) = v12;
  *(v0 + 288) = v14;
  *(v0 + 304) = v16;
  *(v0 + 320) = v7;
  *(v0 + 664) = *(v0 + 224);
  *(v0 + 448) = *(v0 + 224);
  *(v0 + 240) = v18;
  *(v0 + 256) = v13;
  if (_s15TokenGeneration26SamplingParametersEnvelopeVSgWOg(v0 + 240) == 1)
  {
    v62 = 1;
    v19 = 0;
  }

  else
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0 + 456, &_s15TokenGeneration18SamplingParametersVSgMd, &_s15TokenGeneration18SamplingParametersVSgMR);
    v19 = *(v0 + 344);
    v62 = *(v0 + 352);
  }

  v20 = *(v0 + 1552);
  v21 = *(v0 + 1544);
  v22 = *(v0 + 1536);
  v51 = *(v0 + 1568);
  v52 = *(v0 + 1528);
  v54 = *(v0 + 1520);
  v55 = *(v0 + 1560);
  v23 = *(v0 + 1512);
  v61 = *(v0 + 1440);
  v59 = *(v0 + 1400);
  v60 = *(v0 + 1352);
  v50 = *(v0 + 1344);
  v24 = *(v20 + 16);
  v56 = *(v0 + 1408);
  v25 = *(v0 + 1408);
  v53 = v25;
  v57 = *(v0 + 1424);
  v58 = *(v0 + 1384);
  v26 = *(v0 + 1576);
  v24();
  v27 = *(v23 + 16);
  v27(v22, v50, v25);
  (v24)(v51, v26, v21);
  v27(v52, v22, v25);
  v28 = (*(v20 + 80) + 72) & ~*(v20 + 80);
  v29 = (v55 + *(v23 + 80) + v28) & ~*(v23 + 80);
  v30 = (v54 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  *(v0 + 1640) = v31;
  *(v31 + 16) = v58;
  *(v31 + 32) = v59;
  *(v31 + 40) = v56;
  *(v31 + 56) = v57;
  (*(v20 + 32))(v31 + v28, v26, v21);
  (*(v23 + 32))(v31 + v29, v22, v53);
  *(v31 + v30) = v61;
  *(v31 + ((v30 + 15) & 0xFFFFFFFFFFFFFFF8)) = v60;

  if (v62)
  {
    *(v0 + 1672) = mach_absolute_time();
    v32 = swift_task_alloc();
    *(v0 + 1680) = v32;
    *v32 = v0;
    v32[1] = TokenGenerator._respond<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:);
    v33 = *(v0 + 1568);
    v34 = *(v0 + 1528);
    v35 = *(v0 + 1504);
    v36 = *(v0 + 1440);
    v37 = *(v0 + 1400);
    v38 = *(v0 + 1392);
    v39 = *(v0 + 1384);
    v40 = *(v0 + 1352);

    return closure #1 in TokenGenerator._respond<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:)(v35, v33, v34, v36, v40, v39, v38, v37);
  }

  else
  {
    v42 = *(v0 + 1528);
    v43 = *(v0 + 1512);
    v44 = *(v0 + 1408);
    (*(*(v0 + 1552) + 8))(*(v0 + 1568), *(v0 + 1544));
    (*(v43 + 8))(v42, v44);
    v45 = swift_task_alloc();
    *(v0 + 1648) = v45;
    v45[2] = &async function pointer to partial apply for closure #1 in TokenGenerator._respond<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:);
    v45[3] = v31;
    v45[4] = v19;
    v46 = swift_task_alloc();
    *(v0 + 1656) = v46;
    *v46 = v0;
    v46[1] = TokenGenerator._respond<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:);
    v47 = *(v0 + 1592);
    v48 = *(v0 + 1584);
    v49 = *(v0 + 1488);

    return MEMORY[0x1EEE6DD58](v47, v49, v48, 0, 0, &async function pointer to partial apply for specialized closure #1 in withTimeout<A>(timeout:_:), v45, v49);
  }
}

{
  *(*v1 + 1664) = v0;

  if (v0)
  {
    v2 = TokenGenerator._respond<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:);
  }

  else
  {

    v2 = TokenGenerator._respond<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v2 = *v1;
  *(*v1 + 1688) = v0;

  v3 = v2[191];
  v4 = v2[189];
  v5 = v2[176];
  (*(v2[194] + 8))(v2[196], v2[193]);
  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = TokenGenerator._respond<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:);
  }

  else
  {
    v6 = TokenGenerator._respond<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:);
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

{
  v1 = *(v0 + 1600);
  v2 = *(v0 + 1592);
  v3 = *(v0 + 1584);
  v4 = *(v0 + 1496);
  v5 = *(v0 + 1488);

  v6 = *(v2 + *(v3 + 48));
  (*(v4 + 32))(v1, v2, v5);
  v7 = *(v0 + 1664);
  v8 = *(v0 + 1432);
  v9 = *(v0 + 1408);
  *(*(v0 + 1600) + *(*(v0 + 1584) + 48)) = v6;
  *(v0 + 1320) = 0;
  *(v0 + 1328) = 1;
  GenerativeConfigurationProtocol.samplingParameters.getter(v9, v8, v0 + 672);
  if (v7)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(*(v0 + 1600), &_sScsySSs5Error_pG6result_Sd8durationtMd, &_sScsySSs5Error_pG6result_Sd8durationtMR);
    MEMORY[0x1AC5A6AE0](v7);
    GenerativeFunctionInstrumenter.executionEnd(error:)();

    swift_willThrow();

    v10 = *(v0 + 8);

    return v10();
  }

  else
  {
    v13 = *(v0 + 832);
    v12 = *(v0 + 848);
    v14 = *(v0 + 816);
    *(v0 + 1264) = v13;
    *(v0 + 1280) = v12;
    v15 = *(v0 + 848);
    *(v0 + 1296) = *(v0 + 864);
    v17 = *(v0 + 768);
    v16 = *(v0 + 784);
    v18 = *(v0 + 752);
    *(v0 + 1200) = v17;
    *(v0 + 1216) = v16;
    v19 = *(v0 + 784);
    v21 = *(v0 + 800);
    v20 = *(v0 + 816);
    *(v0 + 1232) = v21;
    *(v0 + 1248) = v20;
    v23 = *(v0 + 704);
    v22 = *(v0 + 720);
    v24 = *(v0 + 688);
    *(v0 + 1136) = v23;
    *(v0 + 1152) = v22;
    v25 = *(v0 + 720);
    v27 = *(v0 + 736);
    v26 = *(v0 + 752);
    *(v0 + 1168) = v27;
    *(v0 + 1184) = v26;
    v28 = *(v0 + 688);
    v29 = *(v0 + 672);
    *(v0 + 1104) = v29;
    *(v0 + 1120) = v28;
    *(v0 + 1048) = v13;
    *(v0 + 1064) = v15;
    *(v0 + 1080) = *(v0 + 864);
    *(v0 + 984) = v17;
    *(v0 + 1000) = v19;
    *(v0 + 1016) = v21;
    *(v0 + 1032) = v14;
    *(v0 + 920) = v23;
    *(v0 + 936) = v25;
    *(v0 + 952) = v27;
    *(v0 + 968) = v18;
    *(v0 + 1312) = *(v0 + 880);
    *(v0 + 1096) = *(v0 + 880);
    *(v0 + 888) = v29;
    *(v0 + 904) = v24;
    if (_s15TokenGeneration26SamplingParametersEnvelopeVSgWOg(v0 + 888) != 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0 + 1104, &_s15TokenGeneration18SamplingParametersVSgMd, &_s15TokenGeneration18SamplingParametersVSgMR);
      if ((*(v0 + 1000) & 1) == 0)
      {
        *(v0 + 1320) = *(v0 + 992) - v6;
        *(v0 + 1328) = 0;
      }
    }

    v30 = *(v0 + 1600);
    v31 = *(v0 + 1432);
    v38 = *(v0 + 1416);
    v39 = *(v0 + 1400);
    v36 = *(v0 + 1384);
    v37 = *(v0 + 1368);
    (*(*(v0 + 1552) + 56))(*(v0 + 1480), 1, 1, *(v0 + 1544));
    v32 = swift_task_alloc();
    *(v0 + 1696) = v32;
    *(v32 + 16) = v36;
    *(v32 + 32) = v39;
    *(v32 + 48) = v38;
    *(v32 + 64) = v31;
    *(v32 + 72) = v37;
    *(v32 + 88) = v30;
    *(v32 + 96) = v0 + 1320;
    v33 = swift_task_alloc();
    *(v0 + 1704) = v33;
    *v33 = v0;
    v33[1] = TokenGenerator._respond<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:);
    v34 = *(v0 + 1624);
    v35 = *(v0 + 1480);

    return static TokenGenerator.mapErrorToGenerativeFunctionsModelError<A>(generativeFunctionInstrumenter:_:)(v34, v35, &async function pointer to partial apply for closure #2 in TokenGenerator._respond<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:));
  }
}

{

  v1 = *(v0 + 1664);
  MEMORY[0x1AC5A6AE0](v1);
  GenerativeFunctionInstrumenter.executionEnd(error:)();

  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = *(v0 + 1672);
  (*(*(v0 + 1496) + 16))(*(v0 + 1600), *(v0 + 1504), *(v0 + 1488));
  v2 = mach_absolute_time();
  v3 = v2 >= v1;
  v4 = v2 - v1;
  if (!v3)
  {
    __break(1u);
  }

  *(v0 + 228) = 0;
  v5 = *(v0 + 1504);
  v6 = *(v0 + 1496);
  v7 = *(v0 + 1488);
  *(v0 + 232) = 0;
  mach_timebase_info((v0 + 228));

  (*(v6 + 8))(v5, v7);
  LODWORD(v8) = *(v0 + 228);
  LODWORD(v9) = *(v0 + 232);
  v10 = v4 * v8 / (v9 * 1000000000.0);
  v11 = *(v0 + 1688);
  v12 = *(v0 + 1432);
  v13 = *(v0 + 1408);
  *(*(v0 + 1600) + *(*(v0 + 1584) + 48)) = v10;
  *(v0 + 1320) = 0;
  *(v0 + 1328) = 1;
  GenerativeConfigurationProtocol.samplingParameters.getter(v13, v12, v0 + 672);
  if (v11)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(*(v0 + 1600), &_sScsySSs5Error_pG6result_Sd8durationtMd, &_sScsySSs5Error_pG6result_Sd8durationtMR);
    MEMORY[0x1AC5A6AE0](v11);
    GenerativeFunctionInstrumenter.executionEnd(error:)();

    swift_willThrow();

    v14 = *(v0 + 8);

    return v14();
  }

  else
  {
    v17 = *(v0 + 832);
    v16 = *(v0 + 848);
    v18 = *(v0 + 816);
    *(v0 + 1264) = v17;
    *(v0 + 1280) = v16;
    v19 = *(v0 + 848);
    *(v0 + 1296) = *(v0 + 864);
    v21 = *(v0 + 768);
    v20 = *(v0 + 784);
    v22 = *(v0 + 752);
    *(v0 + 1200) = v21;
    *(v0 + 1216) = v20;
    v23 = *(v0 + 784);
    v25 = *(v0 + 800);
    v24 = *(v0 + 816);
    *(v0 + 1232) = v25;
    *(v0 + 1248) = v24;
    v27 = *(v0 + 704);
    v26 = *(v0 + 720);
    v28 = *(v0 + 688);
    *(v0 + 1136) = v27;
    *(v0 + 1152) = v26;
    v29 = *(v0 + 720);
    v31 = *(v0 + 736);
    v30 = *(v0 + 752);
    *(v0 + 1168) = v31;
    *(v0 + 1184) = v30;
    v32 = *(v0 + 688);
    v33 = *(v0 + 672);
    *(v0 + 1104) = v33;
    *(v0 + 1120) = v32;
    *(v0 + 1048) = v17;
    *(v0 + 1064) = v19;
    *(v0 + 1080) = *(v0 + 864);
    *(v0 + 984) = v21;
    *(v0 + 1000) = v23;
    *(v0 + 1016) = v25;
    *(v0 + 1032) = v18;
    *(v0 + 920) = v27;
    *(v0 + 936) = v29;
    *(v0 + 952) = v31;
    *(v0 + 968) = v22;
    *(v0 + 1312) = *(v0 + 880);
    *(v0 + 1096) = *(v0 + 880);
    *(v0 + 888) = v33;
    *(v0 + 904) = v28;
    if (_s15TokenGeneration26SamplingParametersEnvelopeVSgWOg(v0 + 888) != 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0 + 1104, &_s15TokenGeneration18SamplingParametersVSgMd, &_s15TokenGeneration18SamplingParametersVSgMR);
      if ((*(v0 + 1000) & 1) == 0)
      {
        *(v0 + 1320) = *(v0 + 992) - v10;
        *(v0 + 1328) = 0;
      }
    }

    v34 = *(v0 + 1600);
    v35 = *(v0 + 1432);
    v42 = *(v0 + 1416);
    v43 = *(v0 + 1400);
    v40 = *(v0 + 1384);
    v41 = *(v0 + 1368);
    (*(*(v0 + 1552) + 56))(*(v0 + 1480), 1, 1, *(v0 + 1544));
    v36 = swift_task_alloc();
    *(v0 + 1696) = v36;
    *(v36 + 16) = v40;
    *(v36 + 32) = v43;
    *(v36 + 48) = v42;
    *(v36 + 64) = v35;
    *(v36 + 72) = v41;
    *(v36 + 88) = v34;
    *(v36 + 96) = v0 + 1320;
    v37 = swift_task_alloc();
    *(v0 + 1704) = v37;
    *v37 = v0;
    v37[1] = TokenGenerator._respond<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:);
    v38 = *(v0 + 1624);
    v39 = *(v0 + 1480);

    return static TokenGenerator.mapErrorToGenerativeFunctionsModelError<A>(generativeFunctionInstrumenter:_:)(v38, v39, &async function pointer to partial apply for closure #2 in TokenGenerator._respond<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:));
  }
}

{

  v1 = *(v0 + 1688);
  MEMORY[0x1AC5A6AE0](v1);
  GenerativeFunctionInstrumenter.executionEnd(error:)();

  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

{
  v2 = *v1;
  *(*v1 + 1712) = v0;

  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(*(v2 + 1480), &_s34GenerativeFunctionsInstrumentation0A20FunctionInstrumenterVSgMd, &_s34GenerativeFunctionsInstrumentation0A20FunctionInstrumenterVSgMR);

  if (v0)
  {
    v3 = TokenGenerator._respond<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:);
  }

  else
  {
    v3 = TokenGenerator._respond<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = v0[204];
  v2 = v0[202];
  v3 = v0[201];
  v4 = v0[200];
  v5 = v0[184];
  v6 = v0[183];
  v7 = v0[182];
  v8 = v0[175];
  (*(v3 + 32))(v1);
  GenerativeFunctionInstrumenter.inferenceEnd()();
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v4, &_sScsySSs5Error_pG6result_Sd8durationtMd, &_sScsySSs5Error_pG6result_Sd8durationtMR);
  GenerativeFunctionInstrumenter.executionEnd(error:)();
  (*(v6 + 104))(v5, *MEMORY[0x1E69C6400], v7);
  (*(v3 + 16))(v2, v1, v8);
  ChatMessageResponse.init(role:content:)();
  (*(v3 + 8))(v1, v8);

  v9 = v0[1];

  return v9();
}

{
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[200], &_sScsySSs5Error_pG6result_Sd8durationtMd, &_sScsySSs5Error_pG6result_Sd8durationtMR);
  v1 = v0[214];
  MEMORY[0x1AC5A6AE0](v1);
  GenerativeFunctionInstrumenter.executionEnd(error:)();

  swift_willThrow();

  v2 = v0[1];

  return v2();
}

uint64_t TokenGenerator._respondSingleElement<A, B>(type:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[9] = a7;
  v8[10] = v7;
  v8[7] = a5;
  v8[8] = a6;
  v8[5] = a3;
  v8[6] = a4;
  v8[3] = a1;
  v8[4] = a2;
  v9 = type metadata accessor for GenerativeFunctionInstrumenter();
  v8[11] = v9;
  v8[12] = *(v9 - 8);
  v8[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](TokenGenerator._respondSingleElement<A, B>(type:configuration:), 0, 0);
}

uint64_t TokenGenerator._respondSingleElement<A, B>(type:configuration:)(__n128 a1)
{
  v2 = v1[10];
  if (*(v2 + 24))
  {
  }

  v17 = v1[13];
  v3 = v1[8];
  v4 = v1[9];
  v5 = v1[6];
  v6 = v1[7];
  v7 = v1[5];
  GenerativeConfigurationProtocol.generateGenerativeFunctionInstrumenter(useCaseIdentifier:eventReporter:)();

  v1[2] = 0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = swift_allocObject();
  v1[14] = v9;
  *(v9 + 16) = v1 + 2;
  v10 = swift_task_alloc();
  v1[15] = v10;
  v10[2] = v5;
  v10[3] = v6;
  v10[4] = v3;
  v10[5] = v4;
  v10[6] = v7;
  v10[7] = v2;
  v10[8] = v17;
  v11 = swift_task_alloc();
  v1[16] = v11;
  swift_getAssociatedConformanceWitness();
  *v11 = v1;
  v11[1] = TokenGenerator._respondSingleElement<A, B>(type:configuration:);
  v12 = v1[13];
  v13 = v1[5];
  v14 = v1[4];
  v15 = v1[3];

  return TokenGenerator._respond<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:)(v15, v14, v13, AssociatedTypeWitness, v12, partial apply for specialized closure #1 in TokenGenerator._completeSingleElement<A, B>(type:configuration:), v9, &async function pointer to partial apply for closure #2 in TokenGenerator._respondSingleElement<A, B>(type:configuration:));
}

uint64_t TokenGenerator._respondSingleElement<A, B>(type:configuration:)()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = TokenGenerator._respondSingleElement<A, B>(type:configuration:);
  }

  else
  {

    v2 = TokenGenerator._respondSingleElement<A, B>(type:configuration:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t specialized closure #1 in TokenGenerator._completeSingleElement<A, B>(type:configuration:)(uint64_t *a1)
{
  swift_beginAccess();
  if (*a1)
  {
    v2 = *a1;
  }

  else
  {
    type metadata accessor for CatalogClient();
    swift_allocObject();
    v2 = CatalogClient.init()();
    *a1 = v2;
  }

  swift_endAccess();

  return v2;
}

uint64_t closure #1 in TokenGenerator._respond<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 120) = v17;
  *(v8 + 104) = v16;
  *(v8 + 88) = a8;
  *(v8 + 96) = v15;
  *(v8 + 72) = a6;
  *(v8 + 80) = a7;
  *(v8 + 56) = a4;
  *(v8 + 64) = a5;
  *(v8 + 40) = a2;
  *(v8 + 48) = a3;
  *(v8 + 32) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s34GenerativeFunctionsInstrumentation0A20FunctionInstrumenterVSgMd, &_s34GenerativeFunctionsInstrumentation0A20FunctionInstrumenterVSgMR);
  *(v8 + 128) = swift_task_alloc();
  *(v8 + 136) = *(v15 - 8);
  *(v8 + 144) = swift_task_alloc();
  type metadata accessor for TokenGenerator.PromptInputFromGenerativeModel(0);
  *(v8 + 152) = swift_task_alloc();
  type metadata accessor for RunnableConfigurationStorage();
  *(v8 + 160) = swift_task_alloc();
  type metadata accessor for OverridableConfigurationStorage();
  *(v8 + 168) = swift_task_alloc();
  v9 = type metadata accessor for ChatMessagesPrompt();
  *(v8 + 176) = v9;
  *(v8 + 184) = *(v9 - 8);
  *(v8 + 192) = swift_task_alloc();
  v10 = type metadata accessor for UUID();
  *(v8 + 200) = v10;
  *(v8 + 208) = *(v10 - 8);
  *(v8 + 216) = swift_task_alloc();
  v11 = type metadata accessor for StringRenderedPromptSanitizerRunnerConfiguration();
  *(v8 + 224) = v11;
  *(v8 + 232) = *(v11 - 8);
  *(v8 + 240) = swift_task_alloc();
  *(v8 + 248) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16GenerativeModels39StringRenderedPromptSanitizerWithRunnerVSgMd, &_s16GenerativeModels39StringRenderedPromptSanitizerWithRunnerVSgMR);
  *(v8 + 256) = swift_task_alloc();
  v12 = type metadata accessor for StringRenderedPromptSanitizerWithRunner();
  *(v8 + 264) = v12;
  *(v8 + 272) = *(v12 - 8);
  *(v8 + 280) = swift_task_alloc();
  *(v8 + 288) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
  *(v8 + 296) = swift_task_alloc();
  *(v8 + 304) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in TokenGenerator._respond<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:), 0, 0);
}

uint64_t closure #1 in TokenGenerator._respond<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:)()
{
  GenerativeFunctionInstrumenter.executionBegin()();
  GenerativeFunctionInstrumenter.promptConstructionBegin()();
  GenerativeConfigurationProtocol.stringRenderedPromptSanitizer.getter();
  v1 = v0[33];
  v2 = v0[34];
  v3 = v0[32];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v3, &_s16GenerativeModels39StringRenderedPromptSanitizerWithRunnerVSgMd, &_s16GenerativeModels39StringRenderedPromptSanitizerWithRunnerVSgMR);
    v4 = 1;
  }

  else
  {
    v6 = v0[26];
    v5 = v0[27];
    v29 = v0[25];
    (*(v2 + 32))(v0[36], v3, v1);
    GenerativeFunctionInstrumenter.userRequestIdentifier.getter();
    TokenGenerator.responseSanitizerConfiguration(userRequestIdentifier:)(v5, MEMORY[0x1E69A1568]);
    (*(v6 + 8))(v5, v29);
    v7 = v0[36];
    v8 = v0[33];
    v9 = v0[34];
    v11 = v0[30];
    v10 = v0[31];
    v12 = v0[28];
    v13 = v0[29];
    (*(v9 + 16))(v0[35], v7, v8);
    (*(v13 + 16))(v11, v10, v12);
    StringRenderedPromptSanitizerWithConfiguration.init(stringRenderedPromptSanitizer:configuration:)();
    (*(v13 + 8))(v10, v12);
    (*(v9 + 8))(v7, v8);
    v4 = 0;
  }

  v14 = v0[38];
  v15 = v0[24];
  v16 = v0[17];
  v28 = v0[37];
  v30 = v0[18];
  v17 = v0[12];
  v18 = v0[6];
  v19 = type metadata accessor for StringRenderedPromptSanitizerWithConfiguration();
  (*(*(v19 - 8) + 56))(v14, v4, 1, v19);
  dispatch thunk of GenerativeConfigurationProtocol._overridableConfigurationStorage.getter();
  dispatch thunk of GenerativeConfigurationProtocol._runnableConfigurationStorage.getter();
  ChatMessagesPrompt.init(overridableConfigurationStorage:runnableConfigurationStorage:)();
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v14, v28, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
  v20 = swift_task_alloc();
  v0[39] = v20;
  *(v20 + 16) = v15;
  (*(v16 + 16))(v30, v18, v17);
  v21 = swift_task_alloc();
  v0[40] = v21;
  *v21 = v0;
  v21[1] = closure #1 in TokenGenerator._respond<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:);
  v22 = v0[37];
  v24 = v0[18];
  v23 = v0[19];
  v25 = v0[15];
  v26 = v0[12];

  return TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPromptTurns:chatMessagesConfiguration:forceRenderPrompt:)(v23, v22, &async function pointer to partial apply for closure #1 in closure #1 in TokenGenerator._respond<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:), v20, v24, 0, v26, v25);
}

{
  *(*v1 + 328) = v0;

  if (v0)
  {
    v2 = closure #1 in TokenGenerator._respond<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:);
  }

  else
  {

    v2 = closure #1 in TokenGenerator._respond<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v1 = v0[16];
  GenerativeFunctionInstrumenter.promptConstructionEnd()();
  GenerativeFunctionInstrumenter.inferenceBegin()();
  v2 = type metadata accessor for GenerativeFunctionInstrumenter();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v0[2] = type metadata accessor for TokenGenerator();
  v0[3] = v3;
  v4 = swift_task_alloc();
  v0[42] = v4;
  *v4 = v0;
  v4[1] = closure #1 in TokenGenerator._respond<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:);
  v5 = v0[19];
  v6 = v0[9];
  v7 = v0[10];
  v8 = v0[7];
  v9 = v0[8];
  v11 = v0[5];
  v10 = v0[6];
  v12 = v0[4];

  return closure #2 in closure #1 in TokenGenerator._respond<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:)(v12, v8, v5, v10, v9, v11, v6, v7);
}

{
  v2 = *v1;
  *(*v1 + 344) = v0;

  if (v0)
  {
    *(v2 + 352) = *(v2 + 16);
    v3 = closure #1 in TokenGenerator._respond<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:);
  }

  else
  {
    v3 = closure #1 in TokenGenerator._respond<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = v0[38];
  v2 = v0[23];
  v3 = v0[24];
  v4 = v0[22];
  v5 = v0[19];
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[16], &_s34GenerativeFunctionsInstrumentation0A20FunctionInstrumenterVSgMd, &_s34GenerativeFunctionsInstrumentation0A20FunctionInstrumenterVSgMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v1, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
  outlined destroy of TokenGeneratorCompletionResponseStringStream(v5, type metadata accessor for TokenGenerator.PromptInputFromGenerativeModel);
  (*(v2 + 8))(v3, v4);

  v6 = v0[1];

  return v6();
}

{
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[38], &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);

  (*(v0[23] + 8))(v0[24], v0[22]);

  v1 = v0[1];

  return v1();
}

uint64_t closure #1 in closure #1 in TokenGenerator._respond<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in TokenGenerator._respond<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:), 0, 0);
}

uint64_t closure #2 in closure #1 in TokenGenerator._respond<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 1120) = v15;
  *(v8 + 1104) = v14;
  *(v8 + 1096) = v13;
  *(v8 + 1088) = v12;
  *(v8 + 1080) = a8;
  *(v8 + 1072) = a7;
  *(v8 + 1064) = a6;
  *(v8 + 1056) = a5;
  *(v8 + 1048) = a4;
  *(v8 + 1040) = a3;
  *(v8 + 1032) = a2;
  *(v8 + 1024) = a1;
  *(v8 + 1128) = *(v13 - 8);
  *(v8 + 1136) = swift_task_alloc();
  v9 = type metadata accessor for GenerativeFunctionInstrumenter();
  *(v8 + 1144) = v9;
  *(v8 + 1152) = *(v9 - 8);
  *(v8 + 1160) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
  *(v8 + 1168) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #2 in closure #1 in TokenGenerator._respond<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:), 0, 0);
}

uint64_t closure #2 in closure #1 in TokenGenerator._respond<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:)()
{
  GenerativeConfigurationProtocol.samplingParameters.getter(*(v0 + 1096), *(v0 + 1120), v0 + 16);
  v1 = *(v0 + 192);
  *(v0 + 392) = *(v0 + 176);
  *(v0 + 408) = v1;
  *(v0 + 424) = *(v0 + 208);
  v2 = *(v0 + 128);
  *(v0 + 328) = *(v0 + 112);
  *(v0 + 344) = v2;
  v3 = *(v0 + 160);
  *(v0 + 360) = *(v0 + 144);
  *(v0 + 376) = v3;
  v4 = *(v0 + 64);
  *(v0 + 264) = *(v0 + 48);
  *(v0 + 280) = v4;
  v5 = *(v0 + 96);
  *(v0 + 296) = *(v0 + 80);
  *(v0 + 312) = v5;
  v6 = *(v0 + 32);
  *(v0 + 232) = *(v0 + 16);
  v7 = *(v0 + 1160);
  v8 = *(v0 + 1152);
  v27 = *(v0 + 1144);
  v28 = (v0 + 936);
  v9 = *(v0 + 1136);
  v10 = *(v0 + 1128);
  v11 = *(v0 + 1120);
  v12 = *(v0 + 1096);
  v26 = *(v0 + 1064);
  v13 = *(v0 + 1048);
  *(v0 + 440) = *(v0 + 224);
  *(v0 + 248) = v6;
  v14 = GenerativeConfigurationProtocol.tools.getter();
  *(v0 + 1176) = v14;
  v15 = MEMORY[0x1E69E7CC0];
  if (v14)
  {
    v15 = v14;
  }

  v29 = v15;
  GenerativeConfigurationProtocol.toolChoice.getter();
  v16 = GenerativeConfigurationProtocol.documents.getter(v12, v11);
  *(v0 + 1184) = v16;
  if (v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
  }

  (*(v8 + 16))(v7, v26, v27);
  (*(v10 + 16))(v9, v13, v12);
  RequestMetadata.init<A>(generativeFunctionInstrumenter:configuration:)(v7, v9, v12, (v0 + 880));
  v18 = *(v0 + 896);
  v19 = *(v0 + 904);
  v20 = *(v0 + 928);
  *v28 = *(v0 + 880);
  *(v0 + 952) = v18;
  *(v0 + 960) = v19;
  *(v0 + 968) = *(v0 + 912);
  *(v0 + 984) = v20;
  v21 = swift_task_alloc();
  *(v0 + 1192) = v21;
  *v21 = v0;
  v21[1] = closure #2 in closure #1 in TokenGenerator._respond<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:);
  v22 = *(v0 + 1168);
  v23 = *(v0 + 1056);
  v24 = *(v0 + 1040);

  return TokenGenerator.complete<A>(promptInputFromGenerativeModel:parameters:tools:toolChoice:documents:generating:metadata:)(v0 + 992, v24, v0 + 232, v29, v22, v17, v23, v28);
}

{
  v2 = *v1;
  v3 = *v1;
  v4 = (*v1 + 232);
  *(*v1 + 1200) = v0;

  v5 = *(v2 + 1168);

  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v5, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMd, &_s29GenerativeFunctionsFoundation10ToolChoiceVSgMR);
  v6 = *(v3 + 248);
  if (v0)
  {
    *(v3 + 448) = *v4;
    *(v3 + 464) = v6;
    v7 = *(v3 + 312);
    v9 = *(v3 + 264);
    v8 = *(v3 + 280);
    *(v3 + 512) = *(v3 + 296);
    *(v3 + 528) = v7;
    *(v3 + 480) = v9;
    *(v3 + 496) = v8;
    v10 = *(v3 + 376);
    v12 = *(v3 + 328);
    v11 = *(v3 + 344);
    *(v3 + 576) = *(v3 + 360);
    *(v3 + 592) = v10;
    *(v3 + 544) = v12;
    *(v3 + 560) = v11;
    v14 = *(v3 + 408);
    v13 = *(v3 + 424);
    v15 = *(v3 + 392);
    *(v3 + 656) = *(v3 + 440);
    *(v3 + 624) = v14;
    *(v3 + 640) = v13;
    *(v3 + 608) = v15;
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v3 + 448, &_s15TokenGeneration18SamplingParametersVSgMd, &_s15TokenGeneration18SamplingParametersVSgMR);
    v16 = closure #2 in closure #1 in TokenGenerator._respond<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:);
  }

  else
  {
    *(v3 + 664) = *v4;
    *(v3 + 680) = v6;
    v17 = *(v3 + 312);
    v19 = *(v3 + 264);
    v18 = *(v3 + 280);
    *(v3 + 728) = *(v3 + 296);
    *(v3 + 744) = v17;
    *(v3 + 696) = v19;
    *(v3 + 712) = v18;
    v20 = *(v3 + 376);
    v22 = *(v3 + 328);
    v21 = *(v3 + 344);
    *(v3 + 792) = *(v3 + 360);
    *(v3 + 808) = v20;
    *(v3 + 760) = v22;
    *(v3 + 776) = v21;
    v24 = *(v3 + 408);
    v23 = *(v3 + 424);
    v25 = *(v3 + 392);
    *(v3 + 872) = *(v3 + 440);
    *(v3 + 840) = v24;
    *(v3 + 856) = v23;
    *(v3 + 824) = v25;
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v3 + 664, &_s15TokenGeneration18SamplingParametersVSgMd, &_s15TokenGeneration18SamplingParametersVSgMR);
    v16 = closure #2 in closure #1 in TokenGenerator._respond<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:);
  }

  return MEMORY[0x1EEE6DFA0](v16, 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #2 in closure #1 in TokenGenerator._respond<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 1072);
  v17 = *(v4 + 1080);
  v6 = *(v4 + 1080);
  v16 = *(v4 + 1112);
  v7 = *(v4 + 1112);
  type metadata accessor for TokenStream.AsyncIterator(0, v6, v7, a4);
  v15 = *(v4 + 1096);
  v8 = swift_allocBox();
  v10 = v9;
  type metadata accessor for TokenStream(0, v6, v7, v11);
  TokenStream.makeAsyncIterator()(v10);
  v12 = swift_allocObject();
  *(v12 + 16) = v5;
  *(v12 + 24) = v17;
  *(v12 + 40) = v15;
  *(v12 + 56) = v16;
  *(v12 + 72) = v8;
  AsyncThrowingStream.init<>(unfolding:)();

  v13 = *(v4 + 8);

  return v13();
}

uint64_t closure #1 in closure #2 in closure #1 in TokenGenerator._respond<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration0A0VSgMd, &_s15TokenGeneration0A0VSgMR);
  v8[6] = swift_task_alloc();
  v8[7] = type metadata accessor for TokenStream.AsyncIterator(0, a4, a8, v11);
  v8[8] = swift_projectBox();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #2 in closure #1 in TokenGenerator._respond<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:), 0, 0);
}

uint64_t closure #1 in closure #2 in closure #1 in TokenGenerator._respond<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:)()
{
  swift_beginAccess();
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = closure #1 in closure #2 in closure #1 in TokenGenerator._respond<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:);
  v2 = *(v0 + 48);

  return TokenStream.AsyncIterator.next()(v2);
}

{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = closure #1 in closure #2 in closure #1 in TokenGenerator._respond<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:);
  }

  else
  {
    swift_endAccess();
    v2 = closure #1 in closure #2 in closure #1 in TokenGenerator._respond<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v1 = v0[6];
  v2 = type metadata accessor for Token();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v1, &_s15TokenGeneration0A0VSgMd, &_s15TokenGeneration0A0VSgMR);
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v4 = Token.text.getter();
    v5 = v6;
    (*(v3 + 8))(v1, v2);
  }

  v7 = v0[5];
  *v7 = v4;
  v7[1] = v5;

  v8 = v0[1];

  return v8();
}

{
  swift_endAccess();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #2 in TokenGenerator._respond<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](closure #2 in TokenGenerator._respond<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:), 0, 0);
}

uint64_t closure #2 in TokenGenerator._respond<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:)()
{
  v1 = v0[6];
  v2 = *v1;
  v3 = *(v1 + 8);
  v8 = (v0[3] + *v0[3]);
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = closure #2 in TokenGenerator._respond<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:);
  v5 = v0[5];
  v6 = v0[2];

  return v8(v6, v5, v2, v3);
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t protocol witness for ChatLanguageModelProvidingGenerativeStreamable._respondMultiElement<A, B>(type:configuration:) in conformance TokenGenerator(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return TokenGenerator._respondMultiElement<A, B>(type:configuration:)(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t protocol witness for ChatLanguageModelProvidingGenerativeStreamable._respondSingleElement<A, B>(type:configuration:) in conformance TokenGenerator(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return TokenGenerator._respondSingleElement<A, B>(type:configuration:)(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t closure #1 in TokenGeneratorResponseStringStreamAsyncIterator.init<A>(tokenStream:stringResponseSanitizerWithConfiguration:generativeFunctionInstrumenter:timeout:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](closure #1 in TokenGeneratorResponseStringStreamAsyncIterator.init<A>(tokenStream:stringResponseSanitizerWithConfiguration:generativeFunctionInstrumenter:timeout:), 0, 0);
}

uint64_t closure #1 in TokenGeneratorResponseStringStreamAsyncIterator.init<A>(tokenStream:stringResponseSanitizerWithConfiguration:generativeFunctionInstrumenter:timeout:)()
{
  v1 = *(v0 + 16);
  *v1 = Token.text.getter();
  v1[1] = v2;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t closure #2 in TokenGeneratorResponseStringStreamAsyncIterator.init<A>(tokenStream:stringResponseSanitizerWithConfiguration:generativeFunctionInstrumenter:timeout:)(uint64_t *a1)
{
  v1 = *a1;

  return v1;
}

uint64_t _s16GenerativeModels47TokenGeneratorResponseStringStreamAsyncIteratorV05tokenG030generativeFunctionInstrumenter7timeoutACx_0A24FunctionsInstrumentation0alM0VSdSgtcSciRz0C10Generation0C0V7ElementRtzlu33_EE31B55F68B8D8F9B96F66F00FC05E4ELlfCAK0cG0VySSG_Tt3B5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X8>)
{
  v47 = a7;
  v46 = a6;
  v49 = a5;
  v48 = a8;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16AsyncMapSequenceVy15TokenGeneration0D6StreamVySSGSSGMd, &_ss16AsyncMapSequenceVy15TokenGeneration0D6StreamVySSGSSGMR);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v43 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScsySSs5Error_pGMd, &_sScsySSs5Error_pGMR);
  v44 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v45 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v50 = &v43 - v22;
  v54[0] = a1;
  v54[1] = a2;
  v54[2] = a3;
  v55 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration0A6StreamVySSGMd, &_s15TokenGeneration0A6StreamVySSGMR);
  lazy protocol witness table accessor for type TokenStream<String> and conformance TokenStream<A>(&lazy protocol witness table cache variable for type TokenStream<String> and conformance TokenStream<A>, &_s15TokenGeneration0A6StreamVySSGMd, &_s15TokenGeneration0A6StreamVySSGMR, &protocol conformance descriptor for TokenStream<A>);
  AsyncMapSequence.init(_:transform:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16AsyncMapSequenceV8IteratorVy15TokenGeneration0E6StreamVySSGSS_GSgMd, &_ss16AsyncMapSequenceV8IteratorVy15TokenGeneration0E6StreamVySSGSS_GSgMR);
  v23 = swift_allocBox();
  v25 = v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16AsyncMapSequenceV8IteratorVy15TokenGeneration0E6StreamVySSGSS_GMd, &_ss16AsyncMapSequenceV8IteratorVy15TokenGeneration0E6StreamVySSGSS_GMR);
  (*(*(v26 - 8) + 56))(v25, 1, 1, v26);
  (*(v13 + 16))(v15, v18, v12);
  v27 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = v23;
  (*(v13 + 32))(v28 + v27, v15, v12);
  v29 = (v28 + ((v14 + v27 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v29 = closure #1 in default argument 1 of AsyncThrowingStream<>.init<A>(_:mapError:);
  v29[1] = 0;

  v30 = v50;
  AsyncThrowingStream.init<>(unfolding:)();
  (*(v13 + 8))(v18, v12);

  v55 = v19;
  v56 = lazy protocol witness table accessor for type TokenStream<String> and conformance TokenStream<A>(&lazy protocol witness table cache variable for type AsyncThrowingStream<String, Error> and conformance AsyncThrowingStream<A, B>, &_sScsySSs5Error_pGMd, &_sScsySSs5Error_pGMR, MEMORY[0x1E69E87D0]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v54);
  v32 = v44;
  (*(v44 + 16))(boxed_opaque_existential_1, v30, v19);
  v57 = v46;
  v58 = v47 & 1;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v54, v53, &_s15TokenGeneration17StreamWithTimeout33_7BCBCDF8CEE368FFC3F2C722E3238A4FLLVySSGMd, &_s15TokenGeneration17StreamWithTimeout33_7BCBCDF8CEE368FFC3F2C722E3238A4FLLVySSGMR);
  v33 = swift_allocObject();
  *(v33 + 16) = 0;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v53, v51, &_s15TokenGeneration17StreamWithTimeout33_7BCBCDF8CEE368FFC3F2C722E3238A4FLLVySSGMd, &_s15TokenGeneration17StreamWithTimeout33_7BCBCDF8CEE368FFC3F2C722E3238A4FLLVySSGMR);
  v34 = swift_allocObject();
  *(v34 + 16) = v33;
  v35 = v51[1];
  *(v34 + 24) = v51[0];
  *(v34 + 40) = v35;
  *(v34 + 56) = v51[2];
  *(v34 + 72) = v52;
  *(v34 + 80) = closure #1 in default argument 1 of AsyncThrowingStream<>.init<A>(_:mapError:);
  *(v34 + 88) = 0;

  v36 = v45;
  AsyncThrowingStream.init<>(unfolding:)();
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v53, &_s15TokenGeneration17StreamWithTimeout33_7BCBCDF8CEE368FFC3F2C722E3238A4FLLVySSGMd, &_s15TokenGeneration17StreamWithTimeout33_7BCBCDF8CEE368FFC3F2C722E3238A4FLLVySSGMR);

  v37 = *(type metadata accessor for TokenGeneratorResponseStringStreamAsyncIterator(0) + 20);
  v38 = type metadata accessor for GenerativeFunctionInstrumenter();
  v39 = *(v38 - 8);
  v40 = v49;
  (*(v39 + 16))(v48 + v37, v49, v38);
  MEMORY[0x1AC5A5E40](v19);
  (*(v39 + 8))(v40, v38);
  v41 = *(v32 + 8);
  v41(v36, v19);
  v41(v50, v19);
  return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v54, &_s15TokenGeneration17StreamWithTimeout33_7BCBCDF8CEE368FFC3F2C722E3238A4FLLVySSGMd, &_s15TokenGeneration17StreamWithTimeout33_7BCBCDF8CEE368FFC3F2C722E3238A4FLLVySSGMR);
}

uint64_t closure #1 in TokenGeneratorResponseStringStreamAsyncIterator.init<A>(tokenStream:generativeFunctionInstrumenter:timeout:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](closure #1 in TokenGeneratorResponseStringStreamAsyncIterator.init<A>(tokenStream:generativeFunctionInstrumenter:timeout:), 0, 0);
}

uint64_t TokenGeneratorResponseStringStreamAsyncIterator.next()()
{
  *(v1 + 48) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s34GenerativeFunctionsInstrumentation0A20FunctionInstrumenterVSgMd, &_s34GenerativeFunctionsInstrumentation0A20FunctionInstrumenterVSgMR);
  *(v1 + 56) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](TokenGeneratorResponseStringStreamAsyncIterator.next(), 0, 0);
}

{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(type metadata accessor for TokenGeneratorResponseStringStreamAsyncIterator(0) + 20);
  *(v0 + 88) = v3;
  v4 = type metadata accessor for GenerativeFunctionInstrumenter();
  v5 = *(v4 - 8);
  (*(v5 + 16))(v1, v2 + v3, v4);
  (*(v5 + 56))(v1, 0, 1, v4);
  *(v0 + 32) = type metadata accessor for TokenGenerator();
  *(v0 + 40) = v6;
  v7 = swift_task_alloc();
  *(v0 + 64) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs8IteratorVySSs5Error_p_GMd, &_sScs8IteratorVySSs5Error_p_GMR);
  *v7 = v0;
  v7[1] = TokenGeneratorResponseStringStreamAsyncIterator.next();

  return MEMORY[0x1EEE6DB98](v0 + 16, v8);
}

{
  v2 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    *(v2 + 80) = *(v2 + 32);
    v3 = TokenGeneratorResponseStringStreamAsyncIterator.next();
  }

  else
  {
    v3 = TokenGeneratorResponseStringStreamAsyncIterator.next();
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = v0[2];
  v2 = v0[3];
  if (!v2)
  {
    GenerativeFunctionInstrumenter.inferenceEnd()();
    GenerativeFunctionInstrumenter.executionEnd(error:)();
  }

  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[7], &_s34GenerativeFunctionsInstrumentation0A20FunctionInstrumenterVSgMd, &_s34GenerativeFunctionsInstrumentation0A20FunctionInstrumenterVSgMR);

  v3 = v0[1];

  return v3(v1, v2);
}

void TokenGeneratorResponseStringStreamAsyncIterator.next()()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 56);
  MEMORY[0x1AC5A6AE0](v1);
  static TokenGenerator.handleError(_:generativeFunctionInstrumenter:)(v1, v2);
}

uint64_t protocol witness for AsyncIteratorProtocol.next() in conformance TokenGeneratorResponseStringStreamAsyncIterator(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = specialized closure #1 in AsyncThrowingStream<>.init<A>(_:mapError:);

  return TokenGeneratorResponseStringStreamAsyncIterator.next()();
}

uint64_t _s16GenerativeModels47TokenGeneratorResponseStringStreamAsyncIteratorVScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTW(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  v5 = swift_task_alloc();
  v4[7] = v5;
  *v5 = v4;
  v5[1] = _s16GenerativeModels47TokenGeneratorResponseStringStreamAsyncIteratorVScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTQ0_;

  return TokenGeneratorResponseStringStreamAsyncIterator.next()();
}

uint64_t _s16GenerativeModels47TokenGeneratorResponseStringStreamAsyncIteratorVScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTQ0_(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 32);
  *(*v3 + 64) = v2;

  if (v2)
  {
    if (v7)
    {
      swift_getObjectType();
      v8 = dispatch thunk of Actor.unownedExecutor.getter();
      v10 = v9;
    }

    else
    {
      v8 = 0;
      v10 = 0;
    }

    v12 = _s16GenerativeModels47TokenGeneratorResponseStringStreamAsyncIteratorVScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTY2_;
  }

  else
  {
    if (v7)
    {
      swift_getObjectType();
      v8 = dispatch thunk of Actor.unownedExecutor.getter();
      v10 = v11;
    }

    else
    {
      v8 = 0;
      v10 = 0;
    }

    *(v6 + 72) = a2;
    *(v6 + 80) = a1;
    v12 = _s16GenerativeModels47TokenGeneratorResponseStringStreamAsyncIteratorVScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTY1_;
  }

  return MEMORY[0x1EEE6DFA0](v12, v8, v10);
}

uint64_t _s16GenerativeModels47TokenGeneratorResponseStringStreamAsyncIteratorVScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTY2_()
{
  v1 = v0[8];
  v2 = v0[6];
  v0[2] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  swift_willThrowTypedImpl();
  *v2 = v1;
  v3 = v0[1];

  return v3();
}

uint64_t _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF15TokenGeneration0E39GeneratorResponsePromptCompletionStreamV13AsyncIteratorV_Tg5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s34GenerativeFunctionsInstrumentation0A20FunctionInstrumenterVSgMd, &_s34GenerativeFunctionsInstrumentation0A20FunctionInstrumenterVSgMR);
  v4[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](_sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF15TokenGeneration0E39GeneratorResponsePromptCompletionStreamV13AsyncIteratorV_Tg5TY0_, 0, 0);
}

uint64_t _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF15TokenGeneration0E39GeneratorResponsePromptCompletionStreamV13AsyncIteratorV_Tg5TY0_()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(type metadata accessor for TokenGeneratorResponsePromptCompletionStream.AsyncIterator(0) + 20);
  *(v0 + 112) = v3;
  v4 = type metadata accessor for GenerativeFunctionInstrumenter();
  v5 = *(v4 - 8);
  (*(v5 + 16))(v1, v2 + v3, v4);
  (*(v5 + 56))(v1, 0, 1, v4);
  *(v0 + 16) = type metadata accessor for TokenGenerator();
  *(v0 + 24) = v6;
  v7 = swift_task_alloc();
  *(v0 + 80) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs8IteratorVy15TokenGeneration21PromptCompletionEvent_ps5Error_p_GMd, &_sScs8IteratorVy15TokenGeneration21PromptCompletionEvent_ps5Error_p_GMR);
  *v7 = v0;
  v7[1] = _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF15TokenGeneration0E39GeneratorResponsePromptCompletionStreamV13AsyncIteratorV_Tg5TQ1_;
  v9 = *(v0 + 40);

  return MEMORY[0x1EEE6DB98](v9, v8);
}

uint64_t _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF15TokenGeneration0E39GeneratorResponsePromptCompletionStreamV13AsyncIteratorV_Tg5TQ1_()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    *(v2 + 96) = *(v2 + 16);
    v3 = _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF15TokenGeneration0E39GeneratorResponsePromptCompletionStreamV13AsyncIteratorV_Tg5TY3_;
  }

  else
  {
    v3 = _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF15TokenGeneration0E39GeneratorResponsePromptCompletionStreamV13AsyncIteratorV_Tg5TY2_;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF15TokenGeneration0E39GeneratorResponsePromptCompletionStreamV13AsyncIteratorV_Tg5TY2_()
{
  if (!*(v0[5] + 24))
  {
    GenerativeFunctionInstrumenter.inferenceEnd()();
    GenerativeFunctionInstrumenter.executionEnd(error:)();
  }

  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[9], &_s34GenerativeFunctionsInstrumentation0A20FunctionInstrumenterVSgMd, &_s34GenerativeFunctionsInstrumentation0A20FunctionInstrumenterVSgMR);

  v1 = v0[1];

  return v1();
}

void _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF15TokenGeneration0E39GeneratorResponsePromptCompletionStreamV13AsyncIteratorV_Tg5TY3_()
{
  v1 = v0[11];
  v2 = v0[9];
  MEMORY[0x1AC5A6AE0](v1);
  static TokenGenerator.handleError(_:generativeFunctionInstrumenter:)(v1, v2);
  v0[13] = 0;
}

uint64_t _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF15TokenGeneration0E39GeneratorResponsePromptCompletionStreamV13AsyncIteratorV_Tg5TY4_()
{
  v0[4] = v0[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  swift_willThrowTypedImpl();

  v1 = v0[1];

  return v1();
}

uint64_t TokenGeneratorResponseStringStreamAsyncSequence.collect()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = *v4;

  v11 = *(v13 + 8);
  if (!v3)
  {
    v8 = a1;
    v9 = a2;
    v10 = a3;
  }

  return v11(v8, v9, v10);
}

uint64_t specialized closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect()(uint64_t a1)
{
  v1[6] = a1;
  v2 = type metadata accessor for TokenGeneratorCompletionResponseStringStream(0);
  v1[7] = v2;
  v3 = *(v2 - 8);
  v1[8] = v3;
  v1[9] = *(v3 + 64);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](specialized closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect(), 0, 0);
}

{
  v1[6] = a1;
  v2 = type metadata accessor for TokenGeneratorChatResponseStringStream(0);
  v1[7] = v2;
  v3 = *(v2 - 8);
  v1[8] = v3;
  v1[9] = *(v3 + 64);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](specialized closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect(), 0, 0);
}

uint64_t specialized closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect()()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[6];
  v5 = v4 + *(v0[7] + 28);
  v6 = *v5;
  v7 = *(v5 + 8);
  outlined init with copy of PromptCompletion(v4, v2, type metadata accessor for TokenGeneratorCompletionResponseStringStream);
  outlined init with copy of PromptCompletion(v2, v1, type metadata accessor for TokenGeneratorCompletionResponseStringStream);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  v0[12] = v9;
  outlined init with take of TokenGeneratorResponsePromptCompletionStream(v2, v9 + v8, type metadata accessor for TokenGeneratorCompletionResponseStringStream);
  if (v7)
  {
    mach_absolute_time();
    v10 = swift_task_alloc();
    v0[16] = v10;
    *v10 = v0;
    v10[1] = specialized closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect();
    v11 = v0[10];

    return specialized closure #1 in closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect()(v11);
  }

  else
  {
    outlined destroy of TokenGeneratorCompletionResponseStringStream(v0[10], type metadata accessor for TokenGeneratorCompletionResponseStringStream);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS7content_SaySSG6tokenstMd, &_sSS7content_SaySSG6tokenstMR);
    v14 = swift_task_alloc();
    v0[13] = v14;
    v14[2] = &async function pointer to partial apply for specialized closure #1 in closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect();
    v14[3] = v9;
    v14[4] = v6;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS7content_SaySSG6tokenst6result_Sd8durationtMd, &_sSS7content_SaySSG6tokenst6result_Sd8durationtMR);
    v16 = swift_task_alloc();
    v0[14] = v16;
    *v16 = v0;
    v16[1] = specialized closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect();

    return MEMORY[0x1EEE6DD58](v0 + 2, v13, v15, 0, 0, &closure #1 in withTimeout<A>(timeout:_:)specialized partial apply, v14, v13);
  }
}

{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = specialized closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect();
  }

  else
  {

    v2 = specialized closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect();
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{

  mach_absolute_time();
  *(v0 + 172) = 0;
  *(v0 + 168) = 0;
  mach_timebase_info((v0 + 168));

  v1 = *(v0 + 152);
  v2 = *(v0 + 160);
  v3 = *(v0 + 144);

  v4 = *(v0 + 8);

  return v4(v2, v1, v3);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];

  v4 = v0[1];

  return v4(v2, v1, v3);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[6];
  v5 = v4 + *(v0[7] + 28);
  v6 = *v5;
  v7 = *(v5 + 8);
  outlined init with copy of PromptCompletion(v4, v2, type metadata accessor for TokenGeneratorChatResponseStringStream);
  outlined init with copy of PromptCompletion(v2, v1, type metadata accessor for TokenGeneratorChatResponseStringStream);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  v0[12] = v9;
  outlined init with take of TokenGeneratorResponsePromptCompletionStream(v2, v9 + v8, type metadata accessor for TokenGeneratorChatResponseStringStream);
  if (v7)
  {
    mach_absolute_time();
    v10 = swift_task_alloc();
    v0[16] = v10;
    *v10 = v0;
    v10[1] = specialized closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect();
    v11 = v0[10];

    return specialized closure #1 in closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect()(v11);
  }

  else
  {
    outlined destroy of TokenGeneratorCompletionResponseStringStream(v0[10], type metadata accessor for TokenGeneratorChatResponseStringStream);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS7content_SaySSG6tokenstMd, &_sSS7content_SaySSG6tokenstMR);
    v14 = swift_task_alloc();
    v0[13] = v14;
    v14[2] = &async function pointer to partial apply for specialized closure #1 in closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect();
    v14[3] = v9;
    v14[4] = v6;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS7content_SaySSG6tokenst6result_Sd8durationtMd, &_sSS7content_SaySSG6tokenst6result_Sd8durationtMR);
    v16 = swift_task_alloc();
    v0[14] = v16;
    *v16 = v0;
    v16[1] = specialized closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect();

    return MEMORY[0x1EEE6DD58](v0 + 2, v13, v15, 0, 0, &async function pointer to partial apply for specialized closure #1 in withTimeout<A>(timeout:_:), v14, v13);
  }
}

{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = specialized closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect();
  }

  else
  {

    v2 = specialized closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect();
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{

  return specialized closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect()();
}

{

  return specialized closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect()();
}

{

  return specialized closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect()();
}

{

  return specialized closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect()();
}

uint64_t specialized closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v4;
  v8[17] = v3;

  v9 = v8[10];
  if (v3)
  {
    outlined destroy of TokenGeneratorCompletionResponseStringStream(v9, type metadata accessor for TokenGeneratorCompletionResponseStringStream);
    v10 = specialized closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect();
  }

  else
  {
    v8[18] = a3;
    v8[19] = a2;
    v8[20] = a1;
    outlined destroy of TokenGeneratorCompletionResponseStringStream(v9, type metadata accessor for TokenGeneratorCompletionResponseStringStream);
    v10 = specialized closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect();
  }

  return MEMORY[0x1EEE6DFA0](v10, 0, 0);
}

{
  v8 = *v4;
  v8[17] = v3;

  v9 = v8[10];
  if (v3)
  {
    outlined destroy of TokenGeneratorCompletionResponseStringStream(v9, type metadata accessor for TokenGeneratorChatResponseStringStream);
    v10 = specialized closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect();
  }

  else
  {
    v8[18] = a3;
    v8[19] = a2;
    v8[20] = a1;
    outlined destroy of TokenGeneratorCompletionResponseStringStream(v9, type metadata accessor for TokenGeneratorChatResponseStringStream);
    v10 = specialized closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect();
  }

  return MEMORY[0x1EEE6DFA0](v10, 0, 0);
}

uint64_t partial apply for closure #1 in TokenGenerator._streamCompletion<A>(configuration:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = (*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80);
  v7 = *(v1 + ((*(*(v4 - 8) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return closure #1 in TokenGenerator._streamCompletion<A>(configuration:)(a1, v1 + v6, v7, v4, v5);
}

uint64_t closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a3;
  v4[12] = a4;
  v4[9] = a1;
  v4[10] = a2;
  v5 = *(a3 - 8);
  v4[13] = v5;
  v4[14] = *(v5 + 64);
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect(), 0, 0);
}

uint64_t closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect()()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[13];
  v5 = v0[11];
  v4 = v0[12];
  v6 = v0[10];
  v20 = (*(v4 + 48))(v5, v4);
  v21 = v7;
  v8 = *(v3 + 16);
  v8(v1, v6, v5);
  v8(v2, v1, v5);
  v9 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v10 = swift_allocObject();
  v0[17] = v10;
  *(v10 + 16) = v5;
  *(v10 + 24) = v4;
  (*(v3 + 32))(v10 + v9, v1, v5);
  if (v21)
  {
    mach_absolute_time();
    v11 = swift_task_alloc();
    v0[21] = v11;
    *v11 = v0;
    v11[1] = closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect();
    v12 = v0[15];
    v13 = v0[11];
    v14 = v0[12];

    return closure #1 in closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect()((v0 + 6), v12, v13, v14);
  }

  else
  {
    (*(v0[13] + 8))(v0[15], v0[11]);
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS7content_SaySSG6tokenstMd, &_sSS7content_SaySSG6tokenstMR);
    v17 = swift_task_alloc();
    v0[18] = v17;
    v17[2] = &async function pointer to partial apply for closure #1 in closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect();
    v17[3] = v10;
    v17[4] = v20;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS7content_SaySSG6tokenst6result_Sd8durationtMd, &_sSS7content_SaySSG6tokenst6result_Sd8durationtMR);
    v19 = swift_task_alloc();
    v0[19] = v19;
    *v19 = v0;
    v19[1] = closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect();

    return MEMORY[0x1EEE6DD58](v0 + 2, v16, v18, 0, 0, &closure #1 in withTimeout<A>(timeout:_:)specialized partial apply, v17, v16);
  }
}

{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect();
  }

  else
  {

    v2 = closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect();
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v2 = *(*v1 + 120);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 88);
  *(*v1 + 176) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect();
  }

  else
  {
    v5 = closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect();
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

{

  v1 = *(v0 + 24);
  v2 = *(v0 + 72);
  *v2 = *(v0 + 16);
  *(v2 + 8) = v1;

  v3 = *(v0 + 8);

  return v3();
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 64);

  mach_absolute_time();
  *(v0 + 188) = 0;
  *(v0 + 184) = 0;
  mach_timebase_info((v0 + 184));

  v4 = *(v0 + 72);
  *v4 = v2;
  v4[1] = v1;
  v4[2] = v3;

  v5 = *(v0 + 8);

  return v5();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t specialized closure #1 in closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect()(uint64_t a1)
{
  v1[4] = a1;
  v2 = type metadata accessor for Token();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMR);
  v1[8] = swift_task_alloc();
  v3 = type metadata accessor for StringResponseSanitizerWithConfiguration();
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](specialized closure #1 in closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect(), 0, 0);
}

{
  v3 = *v2;
  *(v3 + 104) = a1;
  *(v3 + 112) = v1;

  if (v1)
  {
    v4 = specialized closure #1 in closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect();
  }

  else
  {
    v4 = specialized closure #1 in closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect();
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

{
  v1[4] = a1;
  v2 = type metadata accessor for Token();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMR);
  v1[8] = swift_task_alloc();
  v3 = type metadata accessor for StringResponseSanitizerWithConfiguration();
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](specialized closure #1 in closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect(), 0, 0);
}

{
  v3 = *v2;
  *(v3 + 104) = a1;
  *(v3 + 112) = v1;

  if (v1)
  {
    v4 = specialized closure #1 in closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect();
  }

  else
  {
    v4 = specialized closure #1 in closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect();
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t specialized closure #1 in closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect()()
{
  v1 = *(v0 + 32);
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = swift_task_alloc();
  *(v0 + 96) = v6;
  *v6 = v0;
  v6[1] = specialized closure #1 in closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect();

  return specialized TokenStream.collect()(v0 + 16, v3, v2, v4, v5);
}

{
  v1 = *(v0 + 104);
  v2 = *(v0 + 24);
  v3 = *(v0 + 16);
  *(v0 + 120) = v2;
  v4 = type metadata accessor for TokenGeneratorCompletionResponseStringStream(0);
  *(v0 + 168) = *(v4 + 24);
  GenerativeFunctionInstrumenter.inferenceEnd()();
  GenerativeFunctionInstrumenter.responseProcessingBegin()();
  v5 = *(v1 + 16);
  v6 = *(v0 + 104);
  if (v5)
  {
    v27 = v4;
    v28 = v3;
    v7 = *(v0 + 48);
    v32 = MEMORY[0x1E69E7CC0];
    v29 = v2;

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
    v8 = v32;
    v9 = *(v7 + 16);
    v7 += 16;
    v10 = v6 + ((*(v7 + 64) + 32) & ~*(v7 + 64));
    v30 = *(v7 + 56);
    v31 = v9;
    v11 = (v7 - 8);
    do
    {
      v12 = *(v0 + 56);
      v13 = *(v0 + 40);
      v31(v12, v10, v13);
      v14 = Token.text.getter();
      v16 = v15;
      (*v11)(v12, v13);
      v18 = *(v32 + 16);
      v17 = *(v32 + 24);
      if (v18 >= v17 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1);
      }

      *(v32 + 16) = v18 + 1;
      v19 = v32 + 16 * v18;
      *(v19 + 32) = v14;
      *(v19 + 40) = v16;
      v10 += v30;
      --v5;
    }

    while (v5);
    v2 = v29;

    v4 = v27;
    v3 = v28;
  }

  else
  {

    v8 = MEMORY[0x1E69E7CC0];
  }

  *(v0 + 128) = v8;
  v21 = *(v0 + 72);
  v20 = *(v0 + 80);
  v22 = *(v0 + 64);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(*(v0 + 32) + *(v4 + 20), v22, &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMR);
  if ((*(v20 + 48))(v22, 1, v21) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(*(v0 + 64), &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMR);
    GenerativeFunctionInstrumenter.responseProcessingEnd()();
    GenerativeFunctionInstrumenter.executionEnd(error:)();

    v23 = *(v0 + 8);
    v24 = *(v0 + 128);

    return v23(v3, v2, v24);
  }

  else
  {
    (*(*(v0 + 80) + 32))(*(v0 + 88), *(v0 + 64), *(v0 + 72));
    v26 = swift_task_alloc();
    *(v0 + 136) = v26;
    *v26 = v0;
    v26[1] = specialized closure #1 in closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect();

    return MEMORY[0x1EEE0B778](v3, v2);
  }
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  (*(v0[10] + 8))(v0[11], v0[9]);
  v2 = v0[19];
  v1 = v0[20];
  GenerativeFunctionInstrumenter.responseProcessingEnd()();
  GenerativeFunctionInstrumenter.executionEnd(error:)();

  v3 = v0[1];
  v4 = v0[16];

  return v3(v1, v2, v4);
}

{
  (*(v0[10] + 8))(v0[11], v0[9]);

  v1 = v0[1];

  return v1();
}

{
  v1 = *(v0 + 32);
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = swift_task_alloc();
  *(v0 + 96) = v6;
  *v6 = v0;
  v6[1] = specialized closure #1 in closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect();

  return specialized TokenStream.collect()(v0 + 16, v3, v2, v4, v5);
}

{
  v1 = *(v0 + 104);
  v2 = *(v0 + 24);
  v3 = *(v0 + 16);
  *(v0 + 120) = v2;
  v4 = type metadata accessor for TokenGeneratorChatResponseStringStream(0);
  *(v0 + 168) = *(v4 + 24);
  GenerativeFunctionInstrumenter.inferenceEnd()();
  GenerativeFunctionInstrumenter.responseProcessingBegin()();
  v5 = *(v1 + 16);
  v6 = *(v0 + 104);
  if (v5)
  {
    v27 = v4;
    v28 = v3;
    v7 = *(v0 + 48);
    v32 = MEMORY[0x1E69E7CC0];
    v29 = v2;

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
    v8 = v32;
    v9 = *(v7 + 16);
    v7 += 16;
    v10 = v6 + ((*(v7 + 64) + 32) & ~*(v7 + 64));
    v30 = *(v7 + 56);
    v31 = v9;
    v11 = (v7 - 8);
    do
    {
      v12 = *(v0 + 56);
      v13 = *(v0 + 40);
      v31(v12, v10, v13);
      v14 = Token.text.getter();
      v16 = v15;
      (*v11)(v12, v13);
      v18 = *(v32 + 16);
      v17 = *(v32 + 24);
      if (v18 >= v17 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1);
      }

      *(v32 + 16) = v18 + 1;
      v19 = v32 + 16 * v18;
      *(v19 + 32) = v14;
      *(v19 + 40) = v16;
      v10 += v30;
      --v5;
    }

    while (v5);
    v2 = v29;

    v4 = v27;
    v3 = v28;
  }

  else
  {

    v8 = MEMORY[0x1E69E7CC0];
  }

  *(v0 + 128) = v8;
  v21 = *(v0 + 72);
  v20 = *(v0 + 80);
  v22 = *(v0 + 64);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(*(v0 + 32) + *(v4 + 20), v22, &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMR);
  if ((*(v20 + 48))(v22, 1, v21) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(*(v0 + 64), &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMR);
    GenerativeFunctionInstrumenter.responseProcessingEnd()();
    GenerativeFunctionInstrumenter.executionEnd(error:)();

    v23 = *(v0 + 8);
    v24 = *(v0 + 128);

    return v23(v3, v2, v24);
  }

  else
  {
    (*(*(v0 + 80) + 32))(*(v0 + 88), *(v0 + 64), *(v0 + 72));
    v26 = swift_task_alloc();
    *(v0 + 136) = v26;
    *v26 = v0;
    v26[1] = specialized closure #1 in closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect();

    return MEMORY[0x1EEE0B778](v3, v2);
  }
}

uint64_t specialized closure #1 in closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect()(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 144) = v2;

  if (v2)
  {

    v7 = specialized closure #1 in closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect();
  }

  else
  {
    *(v6 + 152) = a2;
    *(v6 + 160) = a1;
    v7 = specialized closure #1 in closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect();
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

{
  v6 = *v3;
  *(*v3 + 144) = v2;

  if (v2)
  {

    v7 = specialized closure #1 in closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect();
  }

  else
  {
    *(v6 + 152) = a2;
    *(v6 + 160) = a1;
    v7 = specialized closure #1 in closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect();
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = specialized closure #1 in closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect();

  return specialized closure #1 in closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect()(a2);
}

{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = specialized closure #1 in closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect();

  return specialized closure #1 in closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect()(a2);
}

uint64_t closure #1 in closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[8] = a1;
  v4[9] = a2;
  v5 = type metadata accessor for Token();
  v4[12] = v5;
  v4[13] = *(v5 - 8);
  v4[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMR);
  v4[15] = swift_task_alloc();
  v6 = type metadata accessor for StringResponseSanitizerWithConfiguration();
  v4[16] = v6;
  v4[17] = *(v6 - 8);
  v4[18] = swift_task_alloc();
  v7 = type metadata accessor for GenerativeFunctionInstrumenter();
  v4[19] = v7;
  v4[20] = *(v7 - 8);
  v4[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect(), 0, 0);
}

uint64_t closure #1 in closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect()()
{
  (*(v0[11] + 16))(v0[10]);
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v0[22] = v1;
  v0[23] = v4;
  v5 = swift_task_alloc();
  v0[24] = v5;
  *v5 = v0;
  v5[1] = closure #1 in closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect();

  return specialized TokenStream.collect()((v0 + 6), v2, v1, v3, v4);
}

{
  v1 = v0[20];
  v2 = v0[21];
  v3 = v0[19];
  v4 = v0[11];
  v40 = v0[10];
  v42 = v0[25];
  v37 = v0[6];
  v38 = v0[7];
  v0[27] = v38;
  v5 = *(v4 + 40);
  v0[28] = v5;
  v0[29] = (v4 + 40) & 0xFFFFFFFFFFFFLL | 0x65BD000000000000;
  v5();
  GenerativeFunctionInstrumenter.inferenceEnd()();
  v6 = *(v1 + 8);
  v0[30] = v6;
  v0[31] = (v1 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v2, v3);
  (v5)(v40, v4);
  GenerativeFunctionInstrumenter.responseProcessingBegin()();
  v6(v2, v3);
  v7 = *(v42 + 16);
  v8 = v0[25];
  if (v7)
  {
    v9 = v0[13];
    v43 = MEMORY[0x1E69E7CC0];

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
    v10 = v43;
    v11 = *(v9 + 16);
    v9 += 16;
    v12 = v8 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v39 = *(v9 + 56);
    v41 = v11;
    v13 = (v9 - 8);
    do
    {
      v14 = v0[14];
      v15 = v0[12];
      v41(v14, v12, v15);
      v16 = Token.text.getter();
      v18 = v17;
      (*v13)(v14, v15);
      v20 = *(v43 + 16);
      v19 = *(v43 + 24);
      if (v20 >= v19 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1);
      }

      *(v43 + 16) = v20 + 1;
      v21 = v43 + 16 * v20;
      *(v21 + 32) = v16;
      *(v21 + 40) = v18;
      v12 += v39;
      --v7;
    }

    while (v7);
    v22 = v38;
  }

  else
  {

    v10 = MEMORY[0x1E69E7CC0];
    v22 = v38;
  }

  v0[32] = v10;
  v24 = v0[16];
  v23 = v0[17];
  v25 = v0[15];
  (*(v0[11] + 32))(v0[10]);
  if ((*(v23 + 48))(v25, 1, v24) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[15], &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMR);
    v26 = v0[30];
    v27 = v0[28];
    v28 = v0[21];
    v29 = v0[19];
    v36 = v0[32];
    v30 = v0[10];
    v35 = v0[11];
    v31 = v0[8];
    v27(v30);
    GenerativeFunctionInstrumenter.responseProcessingEnd()();
    v26(v28, v29);
    (v27)(v30, v35);
    GenerativeFunctionInstrumenter.executionEnd(error:)();
    v26(v28, v29);
    *v31 = v37;
    v31[1] = v38;
    v31[2] = v36;

    v32 = v0[1];

    return v32();
  }

  else
  {
    (*(v0[17] + 32))(v0[18], v0[15], v0[16]);
    v34 = swift_task_alloc();
    v0[33] = v34;
    *v34 = v0;
    v34[1] = closure #1 in closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect();

    return MEMORY[0x1EEE0B778](v37, v22);
  }
}

{
  (*(v0[17] + 8))(v0[18], v0[16]);
  v11 = v0[35];
  v12 = v0[36];
  v1 = v0[30];
  v2 = v0[28];
  v3 = v0[21];
  v4 = v0[19];
  v10 = v0[32];
  v5 = v0[10];
  v9 = v0[11];
  v6 = v0[8];
  v2(v5);
  GenerativeFunctionInstrumenter.responseProcessingEnd()();
  v1(v3, v4);
  (v2)(v5, v9);
  GenerativeFunctionInstrumenter.executionEnd(error:)();
  v1(v3, v4);
  *v6 = v12;
  v6[1] = v11;
  v6[2] = v10;

  v7 = v0[1];

  return v7();
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  (*(v0[17] + 8))(v0[18], v0[16]);

  v1 = v0[1];

  return v1();
}

uint64_t closure #1 in closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect()(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 200) = a1;
  *(v3 + 208) = v1;

  if (v1)
  {
    v4 = closure #1 in closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect();
  }

  else
  {
    v4 = closure #1 in closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect();
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t closure #1 in closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect()(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 272) = v2;

  if (v2)
  {

    v7 = closure #1 in closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect();
  }

  else
  {
    *(v6 + 280) = a2;
    *(v6 + 288) = a1;
    v7 = closure #1 in closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect();
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t specialized TokenStream.collect()(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5)
{
  v5[5] = a3;
  v5[6] = a5;
  v5[4] = a1;
  v7 = type metadata accessor for String.Encoding();
  v5[7] = v7;
  v5[8] = *(v7 - 8);
  v5[9] = swift_task_alloc();
  v8 = type metadata accessor for Token();
  v5[10] = v8;
  v5[11] = *(v8 - 8);
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v5[15] = *(type metadata accessor for PromptCompletion.Segment(0) - 8);
  v5[16] = swift_task_alloc();
  v9 = type metadata accessor for PromptCompletion.Content(0);
  v5[17] = v9;
  v5[18] = *(v9 - 8);
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  type metadata accessor for PromptCompletion(0);
  v10 = swift_task_alloc();
  v5[22] = v10;
  v5[23] = swift_task_alloc();

  v13 = (a4 + *a4);
  v11 = swift_task_alloc();
  v5[24] = v11;
  *v11 = v5;
  v11[1] = specialized TokenStream.collect();

  return v13(v10);
}

uint64_t specialized TokenStream.collect()()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = specialized TokenStream.collect();
  }

  else
  {
    v2 = specialized TokenStream.collect();
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

char *specialized TokenStream.collect()()
{
  v1 = v0[23];
  outlined init with take of TokenGeneratorResponsePromptCompletionStream(v0[22], v1, type metadata accessor for PromptCompletion);

  v2 = *(v1 + 32);

  outlined destroy of TokenGeneratorCompletionResponseStringStream(v1, type metadata accessor for PromptCompletion);
  if (v2[2] && (v3 = v2[4], v4 = v2[7], v5 = v2[8], v6 = v2[9], v7 = v2[10], , , , outlined copy of FinishReason(v4, v5), outlined copy of Data._Representation(v6, v7), , , , outlined consume of FinishReason(v4, v5), outlined consume of Data._Representation(v6, v7), (v8 = *(v3 + 16)) != 0))
  {
    v9 = v0[18];
    v10 = v0[15];
    v78 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8, 0);
    v11 = v78;
    v12 = v3 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v13 = *(v10 + 72);
    do
    {
      v14 = v0[21];
      v15 = v0[16];
      outlined init with copy of PromptCompletion(v12, v15, type metadata accessor for PromptCompletion.Segment);
      outlined init with copy of PromptCompletion(v15, v14, type metadata accessor for PromptCompletion.Content);
      outlined destroy of TokenGeneratorCompletionResponseStringStream(v15, type metadata accessor for PromptCompletion.Segment);
      v17 = *(v78 + 16);
      v16 = *(v78 + 24);
      if (v17 >= v16 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1);
      }

      v18 = v0[21];
      *(v78 + 16) = v17 + 1;
      outlined init with take of TokenGeneratorResponsePromptCompletionStream(v18, v78 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v17, type metadata accessor for PromptCompletion.Content);
      v12 += v13;
      --v8;
    }

    while (v8);
  }

  else
  {

    v11 = MEMORY[0x1E69E7CC0];
  }

  v19 = *(v11 + 16);
  if (v19)
  {
    v20 = v0[18];
    v70 = v0[19];
    v21 = v11 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
    v22 = *(v20 + 72);
    v69 = v0[11];
    v77 = (v69 + 32);
    v23 = MEMORY[0x1E69E7CC0];
    v72 = v0;
    v68 = v22;
    do
    {
      v25 = v0[19];
      v24 = v0[20];
      outlined init with copy of PromptCompletion(v21, v24, type metadata accessor for PromptCompletion.Content);
      outlined init with copy of PromptCompletion(v24, v25, type metadata accessor for PromptCompletion.Content);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v28 = v0[19];
      v27 = v0[20];
      if (EnumCaseMultiPayload)
      {
        outlined destroy of TokenGeneratorCompletionResponseStringStream(v0[20], type metadata accessor for PromptCompletion.Content);
        outlined destroy of TokenGeneratorCompletionResponseStringStream(v28, type metadata accessor for PromptCompletion.Content);
      }

      else
      {
        v29 = v0[13];
        v73 = v0[10];
        v75 = v0[14];
        v30 = *(v70 + 24);
        v31 = *(v70 + 32);

        Token.init(text:)();

        outlined consume of Data?(v30, v31);
        outlined destroy of TokenGeneratorCompletionResponseStringStream(v27, type metadata accessor for PromptCompletion.Content);
        v32 = *v77;
        (*v77)(v75, v29, v73);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v23[2] + 1, 1, v23);
        }

        v34 = v23[2];
        v33 = v23[3];
        v0 = v72;
        if (v34 >= v33 >> 1)
        {
          v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1, v23);
        }

        v35 = v72[14];
        v36 = v72[10];
        v23[2] = v34 + 1;
        v32(v23 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v34, v35, v36);
        v22 = v68;
      }

      v21 += v22;
      --v19;
    }

    while (v19);
  }

  else
  {

    v23 = MEMORY[0x1E69E7CC0];
  }

  v38 = v23[2];
  v39 = MEMORY[0x1E69E7CC0];
  v71 = v23;
  if (v38)
  {
    v40 = v0[11];
    v79 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v38, 0);
    v39 = v79;
    v41 = *(v40 + 16);
    v40 += 16;
    v42 = v23 + ((*(v40 + 64) + 32) & ~*(v40 + 64));
    v74 = *(v40 + 56);
    v76 = v41;
    v43 = (v40 - 8);
    do
    {
      v44 = v0[12];
      v45 = v0[10];
      v76(v44, v42, v45);
      v46 = Token.text.getter();
      v48 = v47;
      result = (*v43)(v44, v45);
      v50 = *(v79 + 16);
      v49 = *(v79 + 24);
      v51 = v50 + 1;
      if (v50 >= v49 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v49 > 1), v50 + 1, 1);
      }

      *(v79 + 16) = v51;
      v52 = v79 + 16 * v50;
      *(v52 + 32) = v46;
      *(v52 + 40) = v48;
      v42 += v74;
      --v38;
    }

    while (v38);
LABEL_28:
    v53 = 0;
    v54 = (v39 + 40);
    while (v53 < *(v39 + 16))
    {
      ++v53;
      v56 = *(v54 - 1);
      v55 = *v54;

      MEMORY[0x1AC5A5BC0](v56, v55);

      v54 += 2;
      if (v51 == v53)
      {
        goto LABEL_31;
      }
    }

    __break(1u);
    goto LABEL_41;
  }

  v51 = *(MEMORY[0x1E69E7CC0] + 16);
  if (v51)
  {
    goto LABEL_28;
  }

LABEL_31:
  v58 = v0[8];
  v57 = v0[9];
  v59 = v0[7];

  static String.Encoding.utf8.getter();
  v60 = String.data(using:allowLossyConversion:)();
  v62 = v61;
  result = (*(v58 + 8))(v57, v59);
  if (v62 >> 60 == 15)
  {
LABEL_41:
    __break(1u);
    return result;
  }

  v63 = v0[25];

  static Generable.decode(data:)();
  if (v63)
  {
    outlined consume of Data?(v60, v62);

    v64 = v0[1];

    return v64();
  }

  else
  {
    v65 = v0[4];
    outlined consume of Data?(v60, v62);
    v66 = v0[3];
    *v65 = v0[2];
    v65[1] = v66;

    v67 = v0[1];

    return v67(v71);
  }
}