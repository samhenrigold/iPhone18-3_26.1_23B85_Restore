uint64_t partial apply for closure #2 in register<A>(documents:registrationCallback:)(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return closure #2 in register<A>(documents:registrationCallback:)(a1, a2, v8, v9, v10, v6, v7);
}

uint64_t partial apply for closure #1 in closure #2 in register<A>(documents:registrationCallback:)(uint64_t a1)
{
  v3 = v1[4];
  v4 = (*(*(v3 - 8) + 80) + 48) & ~*(*(v3 - 8) + 80);
  v5 = (*(*(v3 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = v1[2];
  v8 = v1[3];
  v9 = *(v1 + v5);
  v10 = *(v1 + v6);
  v11 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return closure #1 in closure #2 in register<A>(documents:registrationCallback:)(a1, v7, v8, v1 + v4, v9, v10, v11, v3);
}

uint64_t outlined init with copy of TaskPriority?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of TaskPriority?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type URL and conformance URL()
{
  result = lazy protocol witness table cache variable for type URL and conformance URL;
  if (!lazy protocol witness table cache variable for type URL and conformance URL)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URL and conformance URL);
  }

  return result;
}

uint64_t makeSamplingStrategy(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore14AutomationJSONV29SamplingStrategyConfigurationOSgMd, &_s19TokenGenerationCore14AutomationJSONV29SamplingStrategyConfigurationOSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v16 - v8;
  outlined init with copy of AutomationJSON.SamplingStrategyConfiguration?(a1, &v16 - v8);
  v10 = type metadata accessor for AutomationJSON.SamplingStrategyConfiguration();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) != 1)
  {
    outlined init with copy of AutomationJSON.SamplingStrategyConfiguration?(v9, v6);
    v14 = (*(v11 + 88))(v6, v10);
    if (v14 == *MEMORY[0x1E69DA870])
    {
      (*(v11 + 96))(v6, v10);
      v12 = *v6;
      v13 = 1;
      goto LABEL_9;
    }

    if (v14 == *MEMORY[0x1E69DA880])
    {
      (*(v11 + 96))(v6, v10);
      v13 = 0;
      v12 = *v6;
      goto LABEL_9;
    }

    if (v14 == *MEMORY[0x1E69DA878])
    {
      v12 = 0;
      v13 = 2;
      goto LABEL_9;
    }

    (*(v11 + 8))(v6, v10);
  }

  v12 = 0;
  v13 = -1;
LABEL_9:
  *a2 = v12;
  *(a2 + 8) = v13;
  return outlined destroy of AutomationJSON.SamplingStrategyConfiguration?(v9);
}

uint64_t outlined destroy of AutomationJSON.SamplingStrategyConfiguration?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore14AutomationJSONV29SamplingStrategyConfigurationOSgMd, &_s19TokenGenerationCore14AutomationJSONV29SamplingStrategyConfigurationOSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t AutomationJSON.samplingStrategy.getter@<X0>(void (*a1)(__n128)@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore14AutomationJSONV29SamplingStrategyConfigurationOSgMd, &_s19TokenGenerationCore14AutomationJSONV29SamplingStrategyConfigurationOSgMR);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v9 - v6;
  a1(v5);
  makeSamplingStrategy(from:)(v7, a2);
  return outlined destroy of AutomationJSON.SamplingStrategyConfiguration?(v7);
}

uint64_t outlined init with copy of AutomationJSON.SamplingStrategyConfiguration?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore14AutomationJSONV29SamplingStrategyConfigurationOSgMd, &_s19TokenGenerationCore14AutomationJSONV29SamplingStrategyConfigurationOSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type CachePolicy and conformance CachePolicy()
{
  result = lazy protocol witness table cache variable for type CachePolicy and conformance CachePolicy;
  if (!lazy protocol witness table cache variable for type CachePolicy and conformance CachePolicy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CachePolicy and conformance CachePolicy);
  }

  return result;
}

uint64_t ClassificationGenerator.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v4 = *(v1 + 80);
  v10 = *(v1 + 64);
  v3 = v10;
  v11 = v4;
  v12 = *(v1 + 96);
  v6 = *(v1 + 32);
  v9[0] = *(v1 + 16);
  v5 = v9[0];
  v9[1] = v6;
  v9[2] = v2;
  *(a1 + 80) = v12;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v6;
  return outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v9, v8, &_s15TokenGeneration20SessionConfigurationVSgMd, &_s15TokenGeneration20SessionConfigurationVSgMR);
}

uint64_t ClassificationGenerator.__allocating_init(configuration:)(__int128 *a1)
{
  v2 = swift_allocObject();
  v3 = a1[3];
  v4 = a1[1];
  v17 = a1[2];
  v18 = v3;
  v5 = a1[3];
  v19 = a1[4];
  v6 = a1[1];
  v15 = *a1;
  v16 = v6;
  v13[1] = v4;
  v13[2] = v17;
  v7 = a1[4];
  v13[3] = v5;
  v13[4] = v7;
  v20 = *(a1 + 80);
  v14 = *(a1 + 80);
  v13[0] = v15;
  outlined init with copy of SessionConfiguration(&v15, v12);
  v8 = specialized ModelManagerSession.init(configuration:)(v13);
  *(v2 + 128) = &type metadata for ModelManagerSession;
  *(v2 + 136) = &protocol witness table for ModelManagerSession;
  *(v2 + 104) = v8;
  v9 = v18;
  *(v2 + 48) = v17;
  *(v2 + 64) = v9;
  *(v2 + 80) = v19;
  *(v2 + 96) = v20;
  v10 = v16;
  *(v2 + 16) = v15;
  *(v2 + 32) = v10;
  type metadata accessor for EventReporter();
  swift_allocObject();
  LOBYTE(v13[0]) = 1;
  *(v2 + 144) = EventReporter.init(userIdentifier:reportToBiome:)();
  return v2;
}

uint64_t ClassificationGenerator.init(configuration:)(__int128 *a1)
{
  v2 = a1[3];
  v3 = a1[1];
  v16 = a1[2];
  v17 = v2;
  v4 = a1[3];
  v18 = a1[4];
  v5 = a1[1];
  v14 = *a1;
  v15 = v5;
  v12[1] = v3;
  v12[2] = v16;
  v6 = a1[4];
  v12[3] = v4;
  v12[4] = v6;
  v19 = *(a1 + 80);
  v13 = *(a1 + 80);
  v12[0] = v14;
  outlined init with copy of SessionConfiguration(&v14, v11);
  v7 = specialized ModelManagerSession.init(configuration:)(v12);
  *(v1 + 128) = &type metadata for ModelManagerSession;
  *(v1 + 136) = &protocol witness table for ModelManagerSession;
  *(v1 + 104) = v7;
  v8 = v17;
  *(v1 + 48) = v16;
  *(v1 + 64) = v8;
  *(v1 + 80) = v18;
  *(v1 + 96) = v19;
  v9 = v15;
  *(v1 + 16) = v14;
  *(v1 + 32) = v9;
  type metadata accessor for EventReporter();
  swift_allocObject();
  LOBYTE(v12[0]) = 1;
  *(v1 + 144) = EventReporter.init(userIdentifier:reportToBiome:)();
  return v1;
}

void ClassificationParameters.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

uint64_t ClassificationGenerator.classify(prompt:parameters:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 168) = a2;
  *(v4 + 176) = v3;
  *(v4 + 160) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR);
  *(v4 + 184) = swift_task_alloc();
  *(v4 + 192) = type metadata accessor for ClassifyPromptResponse(0);
  *(v4 + 200) = swift_task_alloc();
  *(v4 + 208) = type metadata accessor for OneShotRequest(0);
  *(v4 + 216) = swift_task_alloc();
  v6 = type metadata accessor for Prompt();
  *(v4 + 224) = v6;
  *(v4 + 232) = *(v6 - 8);
  *(v4 + 240) = swift_task_alloc();
  *(v4 + 248) = swift_task_alloc();
  v7 = type metadata accessor for PromptVariant();
  *(v4 + 256) = v7;
  *(v4 + 264) = *(v7 - 8);
  *(v4 + 272) = swift_task_alloc();
  *(v4 + 280) = swift_task_alloc();
  *(v4 + 288) = type metadata accessor for ClassifyPromptRequest(0);
  *(v4 + 296) = swift_task_alloc();
  v8 = type metadata accessor for UUID();
  *(v4 + 304) = v8;
  *(v4 + 312) = *(v8 - 8);
  *(v4 + 320) = swift_task_alloc();
  *(v4 + 328) = *a3;
  *(v4 + 376) = *(a3 + 16);

  return MEMORY[0x1EEE6DFA0](ClassificationGenerator.classify(prompt:parameters:), 0, 0);
}

uint64_t ClassificationGenerator.classify(prompt:parameters:)(uint64_t a1)
{
  v3 = *(v1 + 312);
  v2 = *(v1 + 320);
  v4 = *(v1 + 304);
  v5 = *(v1 + 280);
  v7 = *(v1 + 256);
  v6 = *(v1 + 264);
  v8 = *(v1 + 168);
  UUID.init()();
  v46 = UUID.uuidString.getter();
  v48 = v9;
  v47 = *(v3 + 8);
  v47(v2, v4);
  v10 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0gq5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v11 = *(v6 + 16);
  v11(v5, v8, v7);
  PromptVariant.tgPrompt.getter();
  v41 = *(v1 + 376);
  v39 = *(v1 + 328);
  v40 = *(v1 + 336);
  v42 = *(v1 + 320);
  v12 = *(v1 + 296);
  v34 = *(v1 + 288);
  v35 = *(v1 + 272);
  v38 = *(v1 + 264);
  v36 = *(v1 + 256);
  v37 = *(v1 + 280);
  v14 = *(v1 + 240);
  v13 = *(v1 + 248);
  v16 = *(v1 + 224);
  v15 = *(v1 + 232);
  v43 = *(v1 + 216);
  v44 = *(v1 + 304);
  v45 = *(v1 + 176);

  XPCDictionary.init()();
  (*(v15 + 16))(v14, v13, v16);
  v17 = specialized PromptEnvelope.init(sealing:xpcData:)(v14, v12);
  v18 = (v12 + v34[5]);
  *v18 = v17;
  v18[1] = v19;
  v18[2] = v20;
  v18[3] = v21;
  v11(v35, v37, v36);
  PromptVariantEnvelope.init(sealing:xpcData:)(v35, v12, v12 + v34[6]);
  (*(v15 + 8))(v13, v16);
  (*(v38 + 8))(v37, v36);
  v22 = v12 + v34[7];
  *v22 = v39;
  *(v22 + 8) = v40;
  *(v22 + 16) = v41;

  swift_bridgeObjectRelease_n();
  v23 = (v12 + v34[8]);
  *v23 = v46;
  v23[1] = v48;
  v23[2] = 0xD00000000000001CLL;
  v23[3] = 0x80000001ABA40CF0;
  v23[4] = 0;
  v23[5] = 0;
  v23[6] = v10;
  UUID.init()();
  v24 = UUID.uuidString.getter();
  v26 = v25;

  *(v1 + 344) = v26;
  v47(v42, v44);
  outlined init with copy of ClassifyPromptRequest(v12, v43, type metadata accessor for ClassifyPromptRequest);
  swift_storeEnumTagMultiPayload();
  v27 = *(v45 + 128);
  __swift_project_boxed_opaque_existential_1((v45 + 104), v27);
  v28 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC15TokenGeneration16ModelCatalogStubV8AssetKeyV_SayAHGTt0g5Tf4g_n(&outlined read-only object #0 of ClassificationGenerator.classify(prompt:parameters:));
  *(v1 + 352) = v28;
  swift_arrayDestroy();
  v29 = swift_task_alloc();
  *(v1 + 360) = v29;
  lazy protocol witness table accessor for type ClassifyPromptResponse and conformance ClassifyPromptResponse(&lazy protocol witness table cache variable for type ClassifyPromptResponse and conformance ClassifyPromptResponse, &protocol conformance descriptor for ClassifyPromptResponse);
  lazy protocol witness table accessor for type ClassifyPromptResponse and conformance ClassifyPromptResponse(&lazy protocol witness table cache variable for type ClassifyPromptResponse and conformance ClassifyPromptResponse, &protocol conformance descriptor for ClassifyPromptResponse);
  *v29 = v1;
  v29[1] = ClassificationGenerator.classify(prompt:parameters:);
  v30 = *(v1 + 216);
  v31 = *(v1 + 192);
  v32 = *(v1 + 200);

  return InferenceSessionProtocol.request<A>(loggingIdentifier:payload:requiredAssets:expectedResponse:)(v32, v24, v26, v30, v28, v31, v27, v31);
}

uint64_t ClassificationGenerator.classify(prompt:parameters:)()
{
  *(*v1 + 368) = v0;

  if (v0)
  {
    v2 = ClassificationGenerator.classify(prompt:parameters:);
  }

  else
  {
    v2 = ClassificationGenerator.classify(prompt:parameters:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v1 = *(v0 + 296);
  v2 = *(v0 + 216);
  v3 = *(v0 + 200);
  v4 = *(v0 + 184);
  v5 = *(v0 + 160);
  v6 = (v3 + *(*(v0 + 192) + 20));
  *(v0 + 16) = *v6;
  v7 = v6[4];
  v9 = v6[1];
  v8 = v6[2];
  *(v0 + 64) = v6[3];
  *(v0 + 80) = v7;
  *(v0 + 32) = v9;
  *(v0 + 48) = v8;
  v10 = v6[8];
  v12 = v6[5];
  v11 = v6[6];
  *(v0 + 128) = v6[7];
  *(v0 + 144) = v10;
  *(v0 + 96) = v12;
  *(v0 + 112) = v11;
  v13 = type metadata accessor for XPCDictionary();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v4, v3, v13);
  (*(v14 + 56))(v4, 0, 1, v13);
  ClassificationResponseEnvelope.unseal(_:)(v5);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v4, &_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR);
  outlined destroy of OneShotRequest(v2, type metadata accessor for OneShotRequest);
  outlined destroy of OneShotRequest(v1, type metadata accessor for ClassifyPromptRequest);
  outlined destroy of OneShotRequest(v3, type metadata accessor for ClassifyPromptResponse);

  v15 = *(v0 + 8);

  return v15();
}

{
  v1 = v0[37];
  outlined destroy of OneShotRequest(v0[27], type metadata accessor for OneShotRequest);
  outlined destroy of OneShotRequest(v1, type metadata accessor for ClassifyPromptRequest);

  v2 = v0[1];

  return v2();
}

uint64_t ClassificationGenerator.classify(prompt:promptTemplateInfo:parameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 176) = a3;
  *(v5 + 184) = v4;
  *(v5 + 160) = a1;
  *(v5 + 168) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR);
  *(v5 + 192) = swift_task_alloc();
  *(v5 + 200) = type metadata accessor for ClassifyPromptResponse(0);
  *(v5 + 208) = swift_task_alloc();
  *(v5 + 216) = type metadata accessor for OneShotRequest(0);
  *(v5 + 224) = swift_task_alloc();
  v7 = type metadata accessor for Prompt();
  *(v5 + 232) = v7;
  *(v5 + 240) = *(v7 - 8);
  *(v5 + 248) = swift_task_alloc();
  *(v5 + 256) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLOSgMd, &_s15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLOSgMR);
  *(v5 + 264) = swift_task_alloc();
  v8 = type metadata accessor for PromptVariant();
  *(v5 + 272) = v8;
  *(v5 + 280) = *(v8 - 8);
  *(v5 + 288) = swift_task_alloc();
  *(v5 + 296) = swift_task_alloc();
  v9 = type metadata accessor for PromptTemplateInfo();
  *(v5 + 304) = v9;
  *(v5 + 312) = *(v9 - 8);
  *(v5 + 320) = swift_task_alloc();
  *(v5 + 328) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptVSgMd, &_s15TokenGeneration6PromptVSgMR);
  *(v5 + 336) = swift_task_alloc();
  *(v5 + 344) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration13PromptVariantOSgMd, &_s15TokenGeneration13PromptVariantOSgMR);
  *(v5 + 352) = swift_task_alloc();
  *(v5 + 360) = swift_task_alloc();
  *(v5 + 368) = swift_task_alloc();
  *(v5 + 376) = type metadata accessor for ClassifyPromptTemplateRequest(0);
  *(v5 + 384) = swift_task_alloc();
  *(v5 + 392) = swift_task_alloc();
  v10 = type metadata accessor for UUID();
  *(v5 + 400) = v10;
  *(v5 + 408) = *(v10 - 8);
  *(v5 + 416) = swift_task_alloc();
  *(v5 + 424) = *a4;
  *(v5 + 472) = *(a4 + 16);

  return MEMORY[0x1EEE6DFA0](ClassificationGenerator.classify(prompt:promptTemplateInfo:parameters:), 0, 0);
}

uint64_t ClassificationGenerator.classify(prompt:promptTemplateInfo:parameters:)(uint64_t a1)
{
  v3 = *(v1 + 408);
  v2 = *(v1 + 416);
  v4 = *(v1 + 400);
  v6 = *(v1 + 360);
  v5 = *(v1 + 368);
  v7 = *(v1 + 272);
  v8 = *(v1 + 280);
  v9 = *(v1 + 168);
  UUID.init()();
  v88 = UUID.uuidString.getter();
  v89 = v10;
  v11 = *(v3 + 8);
  v11(v2, v4);
  v90 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0gq5Tf4g_n(MEMORY[0x1E69E7CC0]);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v9, v5, &_s15TokenGeneration13PromptVariantOSgMd, &_s15TokenGeneration13PromptVariantOSgMR);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v9, v6, &_s15TokenGeneration13PromptVariantOSgMd, &_s15TokenGeneration13PromptVariantOSgMR);
  v12 = *(v8 + 48);
  if (v12(v6, 1, v7) == 1)
  {
    v83 = v12;
    v87 = v11;
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(*(v1 + 360), &_s15TokenGeneration13PromptVariantOSgMd, &_s15TokenGeneration13PromptVariantOSgMR);
    v13 = 1;
  }

  else
  {
    PromptVariant.tgPrompt.getter();
    v83 = v12;
    v87 = v11;
    (*(*(v1 + 280) + 8))(*(v1 + 360), *(v1 + 272));
    v13 = 0;
  }

  v15 = *(v1 + 376);
  v14 = *(v1 + 384);
  v16 = *(v1 + 368);
  v17 = *(v1 + 352);
  v18 = *(v1 + 328);
  v20 = *(v1 + 304);
  v19 = *(v1 + 312);
  v81 = *(v1 + 272);
  v21 = *(v1 + 176);
  (*(*(v1 + 240) + 56))(*(v1 + 344), v13, 1, *(v1 + 232));
  v86 = *(v19 + 16);
  v86(v18, v21, v20);

  XPCDictionary.init()();
  v22 = (v14 + *(v15 + 20));
  *v22 = 0u;
  *(v22 + 1) = 0u;
  v79 = v22;
  v23 = *(v15 + 24);
  v24 = type metadata accessor for PromptVariantEnvelope(0);
  v25 = *(*(v24 - 8) + 56);
  v25(v14 + v23, 1, 1, v24);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v16, v17, &_s15TokenGeneration13PromptVariantOSgMd, &_s15TokenGeneration13PromptVariantOSgMR);
  if (v83(v17, 1, v81) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(*(v1 + 352), &_s15TokenGeneration13PromptVariantOSgMd, &_s15TokenGeneration13PromptVariantOSgMR);
  }

  else
  {
    v26 = *(v1 + 384);
    v82 = v25;
    v84 = v23;
    v28 = *(v1 + 288);
    v27 = *(v1 + 296);
    v29 = *(v1 + 272);
    v30 = *(v1 + 280);
    v31 = *(v1 + 264);
    (*(v30 + 32))(v27, *(v1 + 352), v29);
    (*(v30 + 16))(v28, v27, v29);
    PromptVariantEnvelope.init(sealing:xpcData:)(v28, v26, v31);
    (*(v30 + 8))(v27, v29);
    v82(v31, 0, 1, v24);
    outlined assign with take of AsyncCompactMapSequence<ResponseSequence, Data>.Iterator?(v31, v14 + v84, &_s15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLOSgMd, &_s15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLOSgMR);
  }

  v32 = *(v1 + 336);
  v33 = *(v1 + 232);
  v34 = *(v1 + 240);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(*(v1 + 344), v32, &_s15TokenGeneration6PromptVSgMd, &_s15TokenGeneration6PromptVSgMR);
  if ((*(v34 + 48))(v32, 1, v33) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(*(v1 + 336), &_s15TokenGeneration6PromptVSgMd, &_s15TokenGeneration6PromptVSgMR);
  }

  else
  {
    v35 = *(v1 + 384);
    v37 = *(v1 + 248);
    v36 = *(v1 + 256);
    v38 = *(v1 + 232);
    v39 = *(v1 + 240);
    (*(v39 + 32))(v36, *(v1 + 336), v38);
    (*(v39 + 16))(v37, v36, v38);
    v40 = specialized PromptEnvelope.init(sealing:xpcData:)(v37, v35);
    v42 = v41;
    v44 = v43;
    v46 = v45;
    (*(v39 + 8))(v36, v38);
    *v79 = v40;
    v79[1] = v42;
    v79[2] = v44;
    v79[3] = v46;
  }

  v75 = *(v1 + 472);
  v73 = *(v1 + 424);
  v74 = *(v1 + 432);
  v76 = *(v1 + 392);
  v77 = *(v1 + 416);
  v47 = *(v1 + 376);
  v48 = *(v1 + 384);
  v71 = *(v1 + 344);
  v72 = *(v1 + 368);
  v49 = *(v1 + 320);
  v50 = *(v1 + 328);
  v52 = *(v1 + 304);
  v51 = *(v1 + 312);
  v78 = *(v1 + 224);
  v80 = *(v1 + 400);
  v85 = *(v1 + 184);
  v86(v49, v50, v52);
  v53 = (v48 + v47[7]);
  v53[1] = PromptTemplateInfo.templateID.getter();
  v53[2] = v54;
  v55 = PromptTemplateInfo.richVariableBindings.getter();
  v57 = specialized _NativeDictionary.mapValues<A>(_:)(v55, v48, v56);

  *v53 = v57;
  type metadata accessor for PromptTemplateInfoEnvelope(0);
  PromptTemplateInfo.locale.getter();
  v58 = *(v51 + 8);
  v58(v49, v52);
  v58(v50, v52);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v71, &_s15TokenGeneration6PromptVSgMd, &_s15TokenGeneration6PromptVSgMR);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v72, &_s15TokenGeneration13PromptVariantOSgMd, &_s15TokenGeneration13PromptVariantOSgMR);
  v59 = v48 + v47[8];
  *v59 = v73;
  *(v59 + 8) = v74;
  *(v59 + 16) = v75;

  swift_bridgeObjectRelease_n();
  v60 = (v48 + v47[9]);
  *v60 = v88;
  v60[1] = v89;
  v60[2] = 0xD00000000000002FLL;
  v60[3] = 0x80000001ABA40D10;
  v60[4] = 0;
  v60[5] = 0;
  v60[6] = v90;
  outlined init with take of ClassifyPromptTemplateRequest(v48, v76);
  UUID.init()();
  v61 = UUID.uuidString.getter();
  v63 = v62;

  *(v1 + 440) = v63;
  v87(v77, v80);
  outlined init with copy of ClassifyPromptRequest(v76, v78, type metadata accessor for ClassifyPromptTemplateRequest);
  swift_storeEnumTagMultiPayload();
  v64 = *(v85 + 128);
  __swift_project_boxed_opaque_existential_1((v85 + 104), v64);
  v65 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC15TokenGeneration16ModelCatalogStubV8AssetKeyV_SayAHGTt0g5Tf4g_n(&outlined read-only object #0 of ClassificationGenerator.classify(prompt:promptTemplateInfo:parameters:));
  *(v1 + 448) = v65;
  swift_arrayDestroy();
  v66 = swift_task_alloc();
  *(v1 + 456) = v66;
  lazy protocol witness table accessor for type ClassifyPromptResponse and conformance ClassifyPromptResponse(&lazy protocol witness table cache variable for type ClassifyPromptResponse and conformance ClassifyPromptResponse, &protocol conformance descriptor for ClassifyPromptResponse);
  lazy protocol witness table accessor for type ClassifyPromptResponse and conformance ClassifyPromptResponse(&lazy protocol witness table cache variable for type ClassifyPromptResponse and conformance ClassifyPromptResponse, &protocol conformance descriptor for ClassifyPromptResponse);
  *v66 = v1;
  v66[1] = ClassificationGenerator.classify(prompt:promptTemplateInfo:parameters:);
  v67 = *(v1 + 224);
  v68 = *(v1 + 200);
  v69 = *(v1 + 208);

  return InferenceSessionProtocol.request<A>(loggingIdentifier:payload:requiredAssets:expectedResponse:)(v69, v61, v63, v67, v65, v68, v64, v68);
}

uint64_t ClassificationGenerator.classify(prompt:promptTemplateInfo:parameters:)()
{
  *(*v1 + 464) = v0;

  if (v0)
  {
    v2 = ClassificationGenerator.classify(prompt:promptTemplateInfo:parameters:);
  }

  else
  {
    v2 = ClassificationGenerator.classify(prompt:promptTemplateInfo:parameters:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v1 = *(v0 + 392);
  v2 = *(v0 + 224);
  v3 = *(v0 + 208);
  v4 = *(v0 + 192);
  v5 = *(v0 + 160);
  v6 = (v3 + *(*(v0 + 200) + 20));
  *(v0 + 16) = *v6;
  v7 = v6[1];
  v8 = v6[2];
  v9 = v6[4];
  *(v0 + 64) = v6[3];
  *(v0 + 80) = v9;
  *(v0 + 32) = v7;
  *(v0 + 48) = v8;
  v10 = v6[5];
  v11 = v6[6];
  v12 = v6[8];
  *(v0 + 128) = v6[7];
  *(v0 + 144) = v12;
  *(v0 + 96) = v10;
  *(v0 + 112) = v11;
  v13 = type metadata accessor for XPCDictionary();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v4, v3, v13);
  (*(v14 + 56))(v4, 0, 1, v13);
  ClassificationResponseEnvelope.unseal(_:)(v5);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v4, &_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR);
  outlined destroy of OneShotRequest(v2, type metadata accessor for OneShotRequest);
  outlined destroy of OneShotRequest(v1, type metadata accessor for ClassifyPromptTemplateRequest);
  outlined destroy of OneShotRequest(v3, type metadata accessor for ClassifyPromptResponse);

  v15 = *(v0 + 8);

  return v15();
}

{
  v1 = v0[49];
  outlined destroy of OneShotRequest(v0[28], type metadata accessor for OneShotRequest);
  outlined destroy of OneShotRequest(v1, type metadata accessor for ClassifyPromptTemplateRequest);

  v2 = v0[1];

  return v2();
}

uint64_t *ClassificationGenerator.deinit()
{
  outlined consume of SessionConfiguration?(v0[2], v0[3], v0[4], v0[5], v0[6], v0[7], v0[8], v0[9]);
  __swift_destroy_boxed_opaque_existential_0(v0 + 13);

  return v0;
}

uint64_t ClassificationGenerator.__deallocating_deinit()
{
  outlined consume of SessionConfiguration?(v0[2], v0[3], v0[4], v0[5], v0[6], v0[7], v0[8], v0[9]);
  __swift_destroy_boxed_opaque_existential_0(v0 + 13);

  return swift_deallocClassInstance();
}

uint64_t ClassificationResponse.labels.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

double ClassificationResponse.modelInformation.getter@<D0>(void *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  *a1 = v1[1];
  a1[1] = v2;
  a1[2] = v3;

  return result;
}

__n128 ClassificationResponse.modelInformation.setter(__n128 *a1)
{
  v4 = *a1;
  v2 = a1[1].n128_u64[0];

  result = v4;
  *(v1 + 8) = v4;
  *(v1 + 24) = v2;
  return result;
}

__n128 ClassificationResponse.init(labels:modelInformation:didFallbackToDefaultThresholds:)@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v12 = *a2;
  v7 = a2[1].n128_u64[0];
  v8 = type metadata accessor for ClassificationResponse(0);
  v9 = *(v8 + 24);
  v10 = type metadata accessor for Prompt.Rendering();
  (*(*(v10 - 8) + 56))(a4 + v9, 1, 1, v10);
  *a4 = a1;
  result = v12;
  *(a4 + 8) = v12;
  *(a4 + 24) = v7;
  *(a4 + *(v8 + 28)) = a3;
  return result;
}

uint64_t ClassificationResponse.init(labels:modelInformation:didFallbackToDefaultThresholds:renderedPrompt:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v14 = *a2;
  v9 = *(a2 + 2);
  v10 = type metadata accessor for ClassificationResponse(0);
  v11 = *(v10 + 24);
  v12 = type metadata accessor for Prompt.Rendering();
  (*(*(v12 - 8) + 56))(a5 + v11, 1, 1, v12);
  *a5 = a1;
  *(a5 + 8) = v14;
  *(a5 + 24) = v9;
  *(a5 + *(v10 + 28)) = a3;
  return outlined assign with take of AsyncCompactMapSequence<ResponseSequence, Data>.Iterator?(a4, a5 + v11, &_s15TokenGeneration6PromptV9RenderingVSgMd, &_s15TokenGeneration6PromptV9RenderingVSgMR);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance ClassificationParameters.ThresholdConfiguration.CodingKeys()
{
  if (*v0)
  {
    return 0x6569666963657073;
  }

  else
  {
    return 0x746C7561666564;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ClassificationParameters.ThresholdConfiguration.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746C7561666564 && a2 == 0xE700000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6569666963657073 && a2 == 0xE900000000000064)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ClassificationParameters.ThresholdConfiguration.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ClassificationParameters.ThresholdConfiguration.CodingKeys and conformance ClassificationParameters.ThresholdConfiguration.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ClassificationParameters.ThresholdConfiguration.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ClassificationParameters.ThresholdConfiguration.CodingKeys and conformance ClassificationParameters.ThresholdConfiguration.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ClassificationParameters.ThresholdConfiguration.DefaultCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ClassificationParameters.ThresholdConfiguration.DefaultCodingKeys and conformance ClassificationParameters.ThresholdConfiguration.DefaultCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ClassificationParameters.ThresholdConfiguration.DefaultCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ClassificationParameters.ThresholdConfiguration.DefaultCodingKeys and conformance ClassificationParameters.ThresholdConfiguration.DefaultCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ClassificationParameters.ThresholdConfiguration.SpecifiedCodingKeys()
{
  Hasher.init(_seed:)();
  MEMORY[0x1AC5A6570](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ClassificationParameters.ThresholdConfiguration.SpecifiedCodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1AC5A6570](0);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ClassificationParameters.ThresholdConfiguration.SpecifiedCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ClassificationParameters.ThresholdConfiguration.SpecifiedCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ClassificationParameters.ThresholdConfiguration.SpecifiedCodingKeys and conformance ClassificationParameters.ThresholdConfiguration.SpecifiedCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ClassificationParameters.ThresholdConfiguration.SpecifiedCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ClassificationParameters.ThresholdConfiguration.SpecifiedCodingKeys and conformance ClassificationParameters.ThresholdConfiguration.SpecifiedCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ClassificationParameters.ThresholdConfiguration.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration24ClassificationParametersV22ThresholdConfigurationO19SpecifiedCodingKeys33_BFC0BB5AAE28658D1EA5FD917AA8E457LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration24ClassificationParametersV22ThresholdConfigurationO19SpecifiedCodingKeys33_BFC0BB5AAE28658D1EA5FD917AA8E457LLOGMR);
  v21 = *(v3 - 8);
  v22 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v16 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration24ClassificationParametersV22ThresholdConfigurationO17DefaultCodingKeys33_BFC0BB5AAE28658D1EA5FD917AA8E457LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration24ClassificationParametersV22ThresholdConfigurationO17DefaultCodingKeys33_BFC0BB5AAE28658D1EA5FD917AA8E457LLOGMR);
  v18 = *(v6 - 8);
  v19 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v17 = &v16 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration24ClassificationParametersV22ThresholdConfigurationO10CodingKeys33_BFC0BB5AAE28658D1EA5FD917AA8E457LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration24ClassificationParametersV22ThresholdConfigurationO10CodingKeys33_BFC0BB5AAE28658D1EA5FD917AA8E457LLOGMR);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12 = v1[1];
  v20 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ClassificationParameters.ThresholdConfiguration.CodingKeys and conformance ClassificationParameters.ThresholdConfiguration.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v12)
  {
    v24 = 1;
    lazy protocol witness table accessor for type ClassificationParameters.ThresholdConfiguration.SpecifiedCodingKeys and conformance ClassificationParameters.ThresholdConfiguration.SpecifiedCodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v13 = v22;
    KeyedEncodingContainer.encode(_:forKey:)();
    (*(v21 + 8))(v5, v13);
  }

  else
  {
    v23 = 0;
    lazy protocol witness table accessor for type ClassificationParameters.ThresholdConfiguration.DefaultCodingKeys and conformance ClassificationParameters.ThresholdConfiguration.DefaultCodingKeys();
    v15 = v17;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v18 + 8))(v15, v19);
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t ClassificationParameters.ThresholdConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v37 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration24ClassificationParametersV22ThresholdConfigurationO19SpecifiedCodingKeys33_BFC0BB5AAE28658D1EA5FD917AA8E457LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration24ClassificationParametersV22ThresholdConfigurationO19SpecifiedCodingKeys33_BFC0BB5AAE28658D1EA5FD917AA8E457LLOGMR);
  v35 = *(v3 - 8);
  v36 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v32 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration24ClassificationParametersV22ThresholdConfigurationO17DefaultCodingKeys33_BFC0BB5AAE28658D1EA5FD917AA8E457LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration24ClassificationParametersV22ThresholdConfigurationO17DefaultCodingKeys33_BFC0BB5AAE28658D1EA5FD917AA8E457LLOGMR);
  v34 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v32 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration24ClassificationParametersV22ThresholdConfigurationO10CodingKeys33_BFC0BB5AAE28658D1EA5FD917AA8E457LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration24ClassificationParametersV22ThresholdConfigurationO10CodingKeys33_BFC0BB5AAE28658D1EA5FD917AA8E457LLOGMR);
  v38 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v32 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ClassificationParameters.ThresholdConfiguration.CodingKeys and conformance ClassificationParameters.ThresholdConfiguration.CodingKeys();
  v12 = v39;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v12)
  {
    goto LABEL_7;
  }

  v33 = v6;
  v14 = v36;
  v13 = v37;
  v39 = a1;
  v15 = v11;
  v16 = KeyedDecodingContainer.allKeys.getter();
  if (*(v16 + 16) != 1)
  {
    v20 = type metadata accessor for DecodingError();
    swift_allocError();
    v22 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
    *v22 = &type metadata for ClassificationParameters.ThresholdConfiguration;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v20 - 8) + 104))(v22, *MEMORY[0x1E69E6AF8], v20);
    swift_willThrow();
    (*(v38 + 8))(v11, v9);
    swift_unknownObjectRelease();
    a1 = v39;
LABEL_7:
    v27 = a1;
    return __swift_destroy_boxed_opaque_existential_0(v27);
  }

  if (*(v16 + 32))
  {
    v41 = 1;
    lazy protocol witness table accessor for type ClassificationParameters.ThresholdConfiguration.SpecifiedCodingKeys and conformance ClassificationParameters.ThresholdConfiguration.SpecifiedCodingKeys();
    v17 = v5;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v18 = v15;
    v19 = v38;
    v25 = v13;
    v26 = v17;
    v34 = v18;
    v29 = KeyedDecodingContainer.decode(_:forKey:)();
    v31 = v30;
    (*(v35 + 8))(v26, v14);
    (*(v19 + 8))(v34, v9);
    swift_unknownObjectRelease();
  }

  else
  {
    v40 = 0;
    lazy protocol witness table accessor for type ClassificationParameters.ThresholdConfiguration.DefaultCodingKeys and conformance ClassificationParameters.ThresholdConfiguration.DefaultCodingKeys();
    v23 = v8;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v24 = v38;
    v25 = v13;
    (*(v34 + 1))(v23, v33);
    (*(v24 + 8))(v11, v9);
    swift_unknownObjectRelease();
    v29 = 0;
    v31 = 0;
  }

  *v25 = v29;
  v25[1] = v31;
  v27 = v39;
  return __swift_destroy_boxed_opaque_existential_0(v27);
}

uint64_t specialized Collection<>.popFirst()()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 13;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 7;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 5;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 9;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL specialized Collection<>.popFirst()()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24) >> 1;
  if (v1 != v2)
  {
    if (v1 >= v2)
    {
      __break(1u);
      return result;
    }

    *(v0 + 16) = v1 + 1;
  }

  return v1 == v2;
}

double ClassificationParameters.thresholdConfiguration.getter@<D0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;

  return result;
}

__n128 ClassificationParameters.init(thresholdConfiguration:shouldFallbackToDefaultThresholds:)@<Q0>(__n128 *a1@<X0>, unsigned __int8 a2@<W1>, __n128 *a3@<X8>)
{
  result = *a1;
  *a3 = *a1;
  a3[1].n128_u8[0] = a2;
  return result;
}

uint64_t ClassificationParameters.init(thresholdIdentifier:shouldFallbackToDefaultThresholds:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t specialized Set._Variant.insert(_:)(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

{
  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

Swift::Int specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy15TokenGeneration16ModelCatalogStubV8AssetKeyVGMd, &_ss11_SetStorageCy15TokenGeneration16ModelCatalogStubV8AssetKeyVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

void specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    specialized _NativeSet.resize(capacity:)(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      specialized _NativeSet.copy()();
      goto LABEL_16;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v8 + 1);
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v11 = Hasher._finalize()();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = result;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    specialized _NativeSet.resize(capacity:)(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      specialized _NativeSet.copy()();
      goto LABEL_16;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v8 + 1);
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v11 = Hasher._finalize()();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = result;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void specialized _NativeSet.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy15TokenGeneration16ModelCatalogStubV8AssetKeyVGMd, &_ss11_SetStorageCy15TokenGeneration16ModelCatalogStubV8AssetKeyVGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

Swift::Int specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy15TokenGeneration16ModelCatalogStubV8AssetKeyVGMd, &_ss11_SetStorageCy15TokenGeneration16ModelCatalogStubV8AssetKeyVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC15TokenGeneration16ModelCatalogStubV8AssetKeyV_SayAHGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = lazy protocol witness table accessor for type ModelCatalogStub.AssetKey and conformance ModelCatalogStub.AssetKey();
  result = MEMORY[0x1AC5A5E90](v2, &type metadata for ModelCatalogStub.AssetKey, v3);
  v9 = result;
  if (v2)
  {
    v5 = (a1 + 40);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;

      specialized Set._Variant.insert(_:)(&v8, v7, v6);

      v5 += 2;
      --v2;
    }

    while (v2);
    return v9;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ClassifyPromptResponse and conformance ClassifyPromptResponse(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ClassifyPromptResponse(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with take of ClassifyPromptTemplateRequest(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClassifyPromptTemplateRequest(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of ClassifyPromptRequest(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of OneShotRequest(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for ClassificationResponse(uint64_t a1)
{
  result = type metadata singleton initialization cache for ClassificationResponse;
  if (!type metadata singleton initialization cache for ClassificationResponse)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ClassificationParameters.ThresholdConfiguration.CodingKeys and conformance ClassificationParameters.ThresholdConfiguration.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ClassificationParameters.ThresholdConfiguration.CodingKeys and conformance ClassificationParameters.ThresholdConfiguration.CodingKeys;
  if (!lazy protocol witness table cache variable for type ClassificationParameters.ThresholdConfiguration.CodingKeys and conformance ClassificationParameters.ThresholdConfiguration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClassificationParameters.ThresholdConfiguration.CodingKeys and conformance ClassificationParameters.ThresholdConfiguration.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ClassificationParameters.ThresholdConfiguration.CodingKeys and conformance ClassificationParameters.ThresholdConfiguration.CodingKeys;
  if (!lazy protocol witness table cache variable for type ClassificationParameters.ThresholdConfiguration.CodingKeys and conformance ClassificationParameters.ThresholdConfiguration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClassificationParameters.ThresholdConfiguration.CodingKeys and conformance ClassificationParameters.ThresholdConfiguration.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ClassificationParameters.ThresholdConfiguration.CodingKeys and conformance ClassificationParameters.ThresholdConfiguration.CodingKeys;
  if (!lazy protocol witness table cache variable for type ClassificationParameters.ThresholdConfiguration.CodingKeys and conformance ClassificationParameters.ThresholdConfiguration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClassificationParameters.ThresholdConfiguration.CodingKeys and conformance ClassificationParameters.ThresholdConfiguration.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ClassificationParameters.ThresholdConfiguration.CodingKeys and conformance ClassificationParameters.ThresholdConfiguration.CodingKeys;
  if (!lazy protocol witness table cache variable for type ClassificationParameters.ThresholdConfiguration.CodingKeys and conformance ClassificationParameters.ThresholdConfiguration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClassificationParameters.ThresholdConfiguration.CodingKeys and conformance ClassificationParameters.ThresholdConfiguration.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ClassificationParameters.ThresholdConfiguration.SpecifiedCodingKeys and conformance ClassificationParameters.ThresholdConfiguration.SpecifiedCodingKeys()
{
  result = lazy protocol witness table cache variable for type ClassificationParameters.ThresholdConfiguration.SpecifiedCodingKeys and conformance ClassificationParameters.ThresholdConfiguration.SpecifiedCodingKeys;
  if (!lazy protocol witness table cache variable for type ClassificationParameters.ThresholdConfiguration.SpecifiedCodingKeys and conformance ClassificationParameters.ThresholdConfiguration.SpecifiedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClassificationParameters.ThresholdConfiguration.SpecifiedCodingKeys and conformance ClassificationParameters.ThresholdConfiguration.SpecifiedCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ClassificationParameters.ThresholdConfiguration.SpecifiedCodingKeys and conformance ClassificationParameters.ThresholdConfiguration.SpecifiedCodingKeys;
  if (!lazy protocol witness table cache variable for type ClassificationParameters.ThresholdConfiguration.SpecifiedCodingKeys and conformance ClassificationParameters.ThresholdConfiguration.SpecifiedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClassificationParameters.ThresholdConfiguration.SpecifiedCodingKeys and conformance ClassificationParameters.ThresholdConfiguration.SpecifiedCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ClassificationParameters.ThresholdConfiguration.SpecifiedCodingKeys and conformance ClassificationParameters.ThresholdConfiguration.SpecifiedCodingKeys;
  if (!lazy protocol witness table cache variable for type ClassificationParameters.ThresholdConfiguration.SpecifiedCodingKeys and conformance ClassificationParameters.ThresholdConfiguration.SpecifiedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClassificationParameters.ThresholdConfiguration.SpecifiedCodingKeys and conformance ClassificationParameters.ThresholdConfiguration.SpecifiedCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ClassificationParameters.ThresholdConfiguration.SpecifiedCodingKeys and conformance ClassificationParameters.ThresholdConfiguration.SpecifiedCodingKeys;
  if (!lazy protocol witness table cache variable for type ClassificationParameters.ThresholdConfiguration.SpecifiedCodingKeys and conformance ClassificationParameters.ThresholdConfiguration.SpecifiedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClassificationParameters.ThresholdConfiguration.SpecifiedCodingKeys and conformance ClassificationParameters.ThresholdConfiguration.SpecifiedCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ClassificationParameters.ThresholdConfiguration.DefaultCodingKeys and conformance ClassificationParameters.ThresholdConfiguration.DefaultCodingKeys()
{
  result = lazy protocol witness table cache variable for type ClassificationParameters.ThresholdConfiguration.DefaultCodingKeys and conformance ClassificationParameters.ThresholdConfiguration.DefaultCodingKeys;
  if (!lazy protocol witness table cache variable for type ClassificationParameters.ThresholdConfiguration.DefaultCodingKeys and conformance ClassificationParameters.ThresholdConfiguration.DefaultCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClassificationParameters.ThresholdConfiguration.DefaultCodingKeys and conformance ClassificationParameters.ThresholdConfiguration.DefaultCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ClassificationParameters.ThresholdConfiguration.DefaultCodingKeys and conformance ClassificationParameters.ThresholdConfiguration.DefaultCodingKeys;
  if (!lazy protocol witness table cache variable for type ClassificationParameters.ThresholdConfiguration.DefaultCodingKeys and conformance ClassificationParameters.ThresholdConfiguration.DefaultCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClassificationParameters.ThresholdConfiguration.DefaultCodingKeys and conformance ClassificationParameters.ThresholdConfiguration.DefaultCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ClassificationParameters.ThresholdConfiguration.DefaultCodingKeys and conformance ClassificationParameters.ThresholdConfiguration.DefaultCodingKeys;
  if (!lazy protocol witness table cache variable for type ClassificationParameters.ThresholdConfiguration.DefaultCodingKeys and conformance ClassificationParameters.ThresholdConfiguration.DefaultCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClassificationParameters.ThresholdConfiguration.DefaultCodingKeys and conformance ClassificationParameters.ThresholdConfiguration.DefaultCodingKeys);
  }

  return result;
}

uint64_t dispatch thunk of ClassificationGenerator.classify(prompt:parameters:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 120) + **(*v3 + 120));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of ClassificationGenerator.classify(prompt:promptTemplateInfo:parameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 128) + **(*v4 + 128));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return v12(a1, a2, a3, a4);
}

void type metadata completion function for ClassificationResponse(uint64_t a1)
{
  type metadata accessor for [String : Bool]();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Prompt.Rendering?(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for Prompt.Rendering?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Prompt.Rendering?)
  {
    type metadata accessor for Prompt.Rendering();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Prompt.Rendering?);
    }
  }
}

uint64_t getEnumTagSinglePayload for ClassificationParameters(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 17))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for ClassificationParameters(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for ClassificationParameters.ThresholdConfiguration(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ClassificationParameters.ThresholdConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1AC5A5E90](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      specialized Set._Variant.insert(_:)(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModelCatalogStub.AssetKey and conformance ModelCatalogStub.AssetKey()
{
  result = lazy protocol witness table cache variable for type ModelCatalogStub.AssetKey and conformance ModelCatalogStub.AssetKey;
  if (!lazy protocol witness table cache variable for type ModelCatalogStub.AssetKey and conformance ModelCatalogStub.AssetKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModelCatalogStub.AssetKey and conformance ModelCatalogStub.AssetKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModelCatalogStub.AssetKey and conformance ModelCatalogStub.AssetKey;
  if (!lazy protocol witness table cache variable for type ModelCatalogStub.AssetKey and conformance ModelCatalogStub.AssetKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModelCatalogStub.AssetKey and conformance ModelCatalogStub.AssetKey);
  }

  return result;
}

TokenGeneration::ImageTokenizationRecommendations::DimensionRequirements::ExactSizeRequirement __swiftcall ImageTokenizationRecommendations.DimensionRequirements.ExactSizeRequirement.init(pixelWidth:pixelHeight:)(Swift::UInt pixelWidth, Swift::UInt pixelHeight)
{
  *v2 = pixelWidth;
  v2[1] = pixelHeight;
  result.pixelHeight = pixelHeight;
  result.pixelWidth = pixelWidth;
  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance ImageTokenizationRecommendations.DimensionRequirements.ExactSizeRequirement.CodingKeys()
{
  if (*v0)
  {
    return 0x6965486C65786970;
  }

  else
  {
    return 0x6469576C65786970;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ImageTokenizationRecommendations.DimensionRequirements.ExactSizeRequirement.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6469576C65786970 && a2 == 0xEA00000000006874;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6965486C65786970 && a2 == 0xEB00000000746867)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ImageTokenizationRecommendations.DimensionRequirements.ExactSizeRequirement.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ImageTokenizationRecommendations.DimensionRequirements.ExactSizeRequirement.CodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.ExactSizeRequirement.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ImageTokenizationRecommendations.DimensionRequirements.ExactSizeRequirement.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ImageTokenizationRecommendations.DimensionRequirements.ExactSizeRequirement.CodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.ExactSizeRequirement.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImageTokenizationRecommendations.DimensionRequirements.ExactSizeRequirement.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration32ImageTokenizationRecommendationsV21DimensionRequirementsO20ExactSizeRequirementV10CodingKeys33_4E68B6220C3D2A843289BFD2D0E131D9LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration32ImageTokenizationRecommendationsV21DimensionRequirementsO20ExactSizeRequirementV10CodingKeys33_4E68B6220C3D2A843289BFD2D0E131D9LLOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v9 - v6;
  v9[1] = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ImageTokenizationRecommendations.DimensionRequirements.ExactSizeRequirement.CodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.ExactSizeRequirement.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v10 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t lazy protocol witness table accessor for type ImageTokenizationRecommendations.DimensionRequirements.ExactSizeRequirement.CodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.ExactSizeRequirement.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.ExactSizeRequirement.CodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.ExactSizeRequirement.CodingKeys;
  if (!lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.ExactSizeRequirement.CodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.ExactSizeRequirement.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.ExactSizeRequirement.CodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.ExactSizeRequirement.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.ExactSizeRequirement.CodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.ExactSizeRequirement.CodingKeys;
  if (!lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.ExactSizeRequirement.CodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.ExactSizeRequirement.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.ExactSizeRequirement.CodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.ExactSizeRequirement.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.ExactSizeRequirement.CodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.ExactSizeRequirement.CodingKeys;
  if (!lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.ExactSizeRequirement.CodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.ExactSizeRequirement.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.ExactSizeRequirement.CodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.ExactSizeRequirement.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.ExactSizeRequirement.CodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.ExactSizeRequirement.CodingKeys;
  if (!lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.ExactSizeRequirement.CodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.ExactSizeRequirement.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.ExactSizeRequirement.CodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.ExactSizeRequirement.CodingKeys);
  }

  return result;
}

uint64_t ImageTokenizationRecommendations.DimensionRequirements.ExactSizeRequirement.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration32ImageTokenizationRecommendationsV21DimensionRequirementsO20ExactSizeRequirementV10CodingKeys33_4E68B6220C3D2A843289BFD2D0E131D9LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration32ImageTokenizationRecommendationsV21DimensionRequirementsO20ExactSizeRequirementV10CodingKeys33_4E68B6220C3D2A843289BFD2D0E131D9LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ImageTokenizationRecommendations.DimensionRequirements.ExactSizeRequirement.CodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.ExactSizeRequirement.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v14 = 0;
    v9 = KeyedDecodingContainer.decode(_:forKey:)();
    v13 = 1;
    v10 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v10;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionRequirement.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6F69736E656D6964 && a2 == 0xE90000000000006ELL)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionRequirement.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionRequirement.CodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionRequirement.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionRequirement.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionRequirement.CodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionRequirement.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionRequirement.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration32ImageTokenizationRecommendationsV21DimensionRequirementsO03MaxI11RequirementV10CodingKeys33_4E68B6220C3D2A843289BFD2D0E131D9LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration32ImageTokenizationRecommendationsV21DimensionRequirementsO03MaxI11RequirementV10CodingKeys33_4E68B6220C3D2A843289BFD2D0E131D9LLOGMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionRequirement.CodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionRequirement.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

unint64_t lazy protocol witness table accessor for type ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionRequirement.CodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionRequirement.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionRequirement.CodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionRequirement.CodingKeys;
  if (!lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionRequirement.CodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionRequirement.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionRequirement.CodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionRequirement.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionRequirement.CodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionRequirement.CodingKeys;
  if (!lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionRequirement.CodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionRequirement.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionRequirement.CodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionRequirement.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionRequirement.CodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionRequirement.CodingKeys;
  if (!lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionRequirement.CodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionRequirement.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionRequirement.CodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionRequirement.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionRequirement.CodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionRequirement.CodingKeys;
  if (!lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionRequirement.CodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionRequirement.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionRequirement.CodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionRequirement.CodingKeys);
  }

  return result;
}

uint64_t ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionRequirement.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration32ImageTokenizationRecommendationsV21DimensionRequirementsO03MaxI11RequirementV10CodingKeys33_4E68B6220C3D2A843289BFD2D0E131D9LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration32ImageTokenizationRecommendationsV21DimensionRequirementsO03MaxI11RequirementV10CodingKeys33_4E68B6220C3D2A843289BFD2D0E131D9LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionRequirement.CodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionRequirement.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v9 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionRequirement(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration32ImageTokenizationRecommendationsV21DimensionRequirementsO03MaxI11RequirementV10CodingKeys33_4E68B6220C3D2A843289BFD2D0E131D9LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration32ImageTokenizationRecommendationsV21DimensionRequirementsO03MaxI11RequirementV10CodingKeys33_4E68B6220C3D2A843289BFD2D0E131D9LLOGMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionRequirement.CodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionRequirement.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t static ImageTokenizationRecommendations.DimensionRequirements.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    v2 = *(a2 + 16);
  }

  else
  {
    v2 = 0;
  }

  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (*(a2 + 16))
  {
    v4 = 0;
  }

  if (*(a1 + 16))
  {
    return v2;
  }

  else
  {
    return v4;
  }
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance ImageTokenizationRecommendations.DimensionRequirements.CodingKeys()
{
  if (*v0)
  {
    return 0x6E656D694478616DLL;
  }

  else
  {
    return 0x7A69537463617865;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ImageTokenizationRecommendations.DimensionRequirements.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7A69537463617865 && a2 == 0xE900000000000065;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E656D694478616DLL && a2 == 0xEC0000006E6F6973)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ImageTokenizationRecommendations.DimensionRequirements.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ImageTokenizationRecommendations.DimensionRequirements.CodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ImageTokenizationRecommendations.DimensionRequirements.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ImageTokenizationRecommendations.DimensionRequirements.CodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ImageTokenizationRecommendations.DimensionRequirements.ExactSizeCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ImageTokenizationRecommendations.DimensionRequirements.ExactSizeCodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.ExactSizeCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ImageTokenizationRecommendations.DimensionRequirements.ExactSizeCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ImageTokenizationRecommendations.DimensionRequirements.ExactSizeCodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.ExactSizeCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionCodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionCodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImageTokenizationRecommendations.DimensionRequirements.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration32ImageTokenizationRecommendationsV21DimensionRequirementsO03MaxI10CodingKeys33_4E68B6220C3D2A843289BFD2D0E131D9LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration32ImageTokenizationRecommendationsV21DimensionRequirementsO03MaxI10CodingKeys33_4E68B6220C3D2A843289BFD2D0E131D9LLOGMR);
  v22 = *(v3 - 8);
  v23 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v18 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration32ImageTokenizationRecommendationsV21DimensionRequirementsO19ExactSizeCodingKeys33_4E68B6220C3D2A843289BFD2D0E131D9LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration32ImageTokenizationRecommendationsV21DimensionRequirementsO19ExactSizeCodingKeys33_4E68B6220C3D2A843289BFD2D0E131D9LLOGMR);
  v20 = *(v6 - 8);
  v21 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18 - v7;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration32ImageTokenizationRecommendationsV21DimensionRequirementsO10CodingKeys33_4E68B6220C3D2A843289BFD2D0E131D9LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration32ImageTokenizationRecommendationsV21DimensionRequirementsO10CodingKeys33_4E68B6220C3D2A843289BFD2D0E131D9LLOGMR);
  v9 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v11 = &v18 - v10;
  v12 = v1[1];
  v24 = *v1;
  v19 = v12;
  v13 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ImageTokenizationRecommendations.DimensionRequirements.CodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v13)
  {
    LOBYTE(v26) = 1;
    lazy protocol witness table accessor for type ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionCodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionCodingKeys();
    v14 = v25;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v26 = v24;
    lazy protocol witness table accessor for type ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionRequirement and conformance ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionRequirement();
    v15 = v23;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v22 + 8))(v5, v15);
  }

  else
  {
    LOBYTE(v26) = 0;
    lazy protocol witness table accessor for type ImageTokenizationRecommendations.DimensionRequirements.ExactSizeCodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.ExactSizeCodingKeys();
    v14 = v25;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v26 = v24;
    v27 = v19;
    lazy protocol witness table accessor for type ImageTokenizationRecommendations.DimensionRequirements.ExactSizeRequirement and conformance ImageTokenizationRecommendations.DimensionRequirements.ExactSizeRequirement();
    v16 = v21;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v20 + 8))(v8, v16);
  }

  return (*(v9 + 8))(v11, v14);
}

unint64_t lazy protocol witness table accessor for type ImageTokenizationRecommendations.DimensionRequirements.CodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.CodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.CodingKeys;
  if (!lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.CodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.CodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.CodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.CodingKeys;
  if (!lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.CodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.CodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.CodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.CodingKeys;
  if (!lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.CodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.CodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.CodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.CodingKeys;
  if (!lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.CodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.CodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionCodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionCodingKeys()
{
  result = lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionCodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionCodingKeys;
  if (!lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionCodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionCodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionCodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionCodingKeys;
  if (!lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionCodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionCodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionCodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionCodingKeys;
  if (!lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionCodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionCodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionCodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionCodingKeys;
  if (!lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionCodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionCodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionRequirement and conformance ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionRequirement()
{
  result = lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionRequirement and conformance ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionRequirement;
  if (!lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionRequirement and conformance ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionRequirement)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionRequirement and conformance ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionRequirement);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionRequirement and conformance ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionRequirement;
  if (!lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionRequirement and conformance ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionRequirement)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionRequirement and conformance ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionRequirement);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ImageTokenizationRecommendations.DimensionRequirements.ExactSizeCodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.ExactSizeCodingKeys()
{
  result = lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.ExactSizeCodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.ExactSizeCodingKeys;
  if (!lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.ExactSizeCodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.ExactSizeCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.ExactSizeCodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.ExactSizeCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.ExactSizeCodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.ExactSizeCodingKeys;
  if (!lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.ExactSizeCodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.ExactSizeCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.ExactSizeCodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.ExactSizeCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.ExactSizeCodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.ExactSizeCodingKeys;
  if (!lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.ExactSizeCodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.ExactSizeCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.ExactSizeCodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.ExactSizeCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.ExactSizeCodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.ExactSizeCodingKeys;
  if (!lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.ExactSizeCodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.ExactSizeCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.ExactSizeCodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.ExactSizeCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ImageTokenizationRecommendations.DimensionRequirements.ExactSizeRequirement and conformance ImageTokenizationRecommendations.DimensionRequirements.ExactSizeRequirement()
{
  result = lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.ExactSizeRequirement and conformance ImageTokenizationRecommendations.DimensionRequirements.ExactSizeRequirement;
  if (!lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.ExactSizeRequirement and conformance ImageTokenizationRecommendations.DimensionRequirements.ExactSizeRequirement)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.ExactSizeRequirement and conformance ImageTokenizationRecommendations.DimensionRequirements.ExactSizeRequirement);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.ExactSizeRequirement and conformance ImageTokenizationRecommendations.DimensionRequirements.ExactSizeRequirement;
  if (!lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.ExactSizeRequirement and conformance ImageTokenizationRecommendations.DimensionRequirements.ExactSizeRequirement)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements.ExactSizeRequirement and conformance ImageTokenizationRecommendations.DimensionRequirements.ExactSizeRequirement);
  }

  return result;
}

uint64_t ImageTokenizationRecommendations.DimensionRequirements.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration32ImageTokenizationRecommendationsV21DimensionRequirementsO03MaxI10CodingKeys33_4E68B6220C3D2A843289BFD2D0E131D9LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration32ImageTokenizationRecommendationsV21DimensionRequirementsO03MaxI10CodingKeys33_4E68B6220C3D2A843289BFD2D0E131D9LLOGMR);
  v4 = *(v3 - 8);
  v31 = v3;
  v32 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v28[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration32ImageTokenizationRecommendationsV21DimensionRequirementsO19ExactSizeCodingKeys33_4E68B6220C3D2A843289BFD2D0E131D9LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration32ImageTokenizationRecommendationsV21DimensionRequirementsO19ExactSizeCodingKeys33_4E68B6220C3D2A843289BFD2D0E131D9LLOGMR);
  v30 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration32ImageTokenizationRecommendationsV21DimensionRequirementsO10CodingKeys33_4E68B6220C3D2A843289BFD2D0E131D9LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration32ImageTokenizationRecommendationsV21DimensionRequirementsO10CodingKeys33_4E68B6220C3D2A843289BFD2D0E131D9LLOGMR);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28[-v12];
  v14 = a1[3];
  v41 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  lazy protocol witness table accessor for type ImageTokenizationRecommendations.DimensionRequirements.CodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.CodingKeys();
  v15 = v34;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v15)
  {
    v34 = v11;
    v16 = v33;
    v17 = KeyedDecodingContainer.allKeys.getter();
    v18 = (2 * *(v17 + 16)) | 1;
    v37 = v17;
    v38 = v17 + 32;
    v39 = 0;
    v40 = v18;
    v19 = specialized Collection<>.popFirst()();
    if (v19 == 2 || v39 != v40 >> 1)
    {
      v20 = type metadata accessor for DecodingError();
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
      *v22 = &type metadata for ImageTokenizationRecommendations.DimensionRequirements;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x1E69E6AF8], v20);
      swift_willThrow();
      (*(v34 + 8))(v13, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      v29 = v19;
      if (v19)
      {
        LOBYTE(v35) = 1;
        lazy protocol witness table accessor for type ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionCodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionCodingKeys();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        lazy protocol witness table accessor for type ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionRequirement and conformance ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionRequirement();
        v24 = v31;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        (*(v32 + 8))(v6, v24);
        (*(v34 + 8))(v13, v10);
        swift_unknownObjectRelease();
        v25 = 0;
        v26 = v35;
      }

      else
      {
        LOBYTE(v35) = 0;
        lazy protocol witness table accessor for type ImageTokenizationRecommendations.DimensionRequirements.ExactSizeCodingKeys and conformance ImageTokenizationRecommendations.DimensionRequirements.ExactSizeCodingKeys();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        lazy protocol witness table accessor for type ImageTokenizationRecommendations.DimensionRequirements.ExactSizeRequirement and conformance ImageTokenizationRecommendations.DimensionRequirements.ExactSizeRequirement();
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v27 = v34;
        (*(v30 + 8))(v9, v7);
        (*(v27 + 8))(v13, v10);
        swift_unknownObjectRelease();
        v26 = v35;
        v25 = v36;
      }

      *v16 = v26;
      *(v16 + 8) = v25;
      *(v16 + 16) = v29 & 1;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v41);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ImageTokenizationRecommendations.DimensionRequirements(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    v2 = *(a2 + 16);
  }

  else
  {
    v2 = 0;
  }

  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (*(a2 + 16))
  {
    v4 = 0;
  }

  if (*(a1 + 16))
  {
    return v2;
  }

  else
  {
    return v4;
  }
}

__n128 ImageTokenizationRecommendations.dimensions.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[1].n128_u8[0];
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u8[0] = v2;
  return result;
}

__n128 ImageTokenizationRecommendations.dimensions.setter(__n128 *a1)
{
  v2 = a1[1].n128_u8[0];
  result = *a1;
  *v1 = *a1;
  v1[1].n128_u8[0] = v2;
  return result;
}

__n128 ImageTokenizationRecommendations.init(dimensions:pixelFormat:)@<Q0>(__n128 *a1@<X0>, unsigned __int32 a2@<W1>, __n128 *a3@<X8>)
{
  v3 = a1[1].n128_u8[0];
  result = *a1;
  *a3 = *a1;
  a3[1].n128_u8[0] = v3;
  a3[1].n128_u32[1] = a2;
  return result;
}

BOOL static ImageTokenizationRecommendations.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (a1[2])
  {
    if (v2 == v3)
    {
      v4 = *(a2 + 16);
    }

    else
    {
      v4 = 0;
    }

    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (a2[2])
    {
      return 0;
    }

    if (v2 != v3 || a1[1] != a2[1])
    {
      return 0;
    }
  }

  return *(a1 + 5) == *(a2 + 5);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance ImageTokenizationRecommendations.CodingKeys()
{
  if (*v0)
  {
    return 0x726F466C65786970;
  }

  else
  {
    return 0x6F69736E656D6964;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ImageTokenizationRecommendations.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F69736E656D6964 && a2 == 0xEA0000000000736ELL;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x726F466C65786970 && a2 == 0xEB0000000074616DLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ImageTokenizationRecommendations.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ImageTokenizationRecommendations.CodingKeys and conformance ImageTokenizationRecommendations.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ImageTokenizationRecommendations.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ImageTokenizationRecommendations.CodingKeys and conformance ImageTokenizationRecommendations.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImageTokenizationRecommendations.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration32ImageTokenizationRecommendationsV10CodingKeys33_4E68B6220C3D2A843289BFD2D0E131D9LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration32ImageTokenizationRecommendationsV10CodingKeys33_4E68B6220C3D2A843289BFD2D0E131D9LLOGMR);
  v12 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v11 - v4;
  v7 = *v1;
  v6 = v1[1];
  v8 = *(v1 + 16);
  v16 = *(v1 + 5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ImageTokenizationRecommendations.CodingKeys and conformance ImageTokenizationRecommendations.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = v7;
  v14 = v6;
  v15 = v8;
  v17 = 0;
  lazy protocol witness table accessor for type ImageTokenizationRecommendations.DimensionRequirements and conformance ImageTokenizationRecommendations.DimensionRequirements();
  v9 = v11[1];
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v9)
  {
    LOBYTE(v13) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v12 + 8))(v5, v3);
}

unint64_t lazy protocol witness table accessor for type ImageTokenizationRecommendations.CodingKeys and conformance ImageTokenizationRecommendations.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ImageTokenizationRecommendations.CodingKeys and conformance ImageTokenizationRecommendations.CodingKeys;
  if (!lazy protocol witness table cache variable for type ImageTokenizationRecommendations.CodingKeys and conformance ImageTokenizationRecommendations.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ImageTokenizationRecommendations.CodingKeys and conformance ImageTokenizationRecommendations.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ImageTokenizationRecommendations.CodingKeys and conformance ImageTokenizationRecommendations.CodingKeys;
  if (!lazy protocol witness table cache variable for type ImageTokenizationRecommendations.CodingKeys and conformance ImageTokenizationRecommendations.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ImageTokenizationRecommendations.CodingKeys and conformance ImageTokenizationRecommendations.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ImageTokenizationRecommendations.CodingKeys and conformance ImageTokenizationRecommendations.CodingKeys;
  if (!lazy protocol witness table cache variable for type ImageTokenizationRecommendations.CodingKeys and conformance ImageTokenizationRecommendations.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ImageTokenizationRecommendations.CodingKeys and conformance ImageTokenizationRecommendations.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ImageTokenizationRecommendations.CodingKeys and conformance ImageTokenizationRecommendations.CodingKeys;
  if (!lazy protocol witness table cache variable for type ImageTokenizationRecommendations.CodingKeys and conformance ImageTokenizationRecommendations.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ImageTokenizationRecommendations.CodingKeys and conformance ImageTokenizationRecommendations.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ImageTokenizationRecommendations.DimensionRequirements and conformance ImageTokenizationRecommendations.DimensionRequirements()
{
  result = lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements and conformance ImageTokenizationRecommendations.DimensionRequirements;
  if (!lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements and conformance ImageTokenizationRecommendations.DimensionRequirements)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements and conformance ImageTokenizationRecommendations.DimensionRequirements);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements and conformance ImageTokenizationRecommendations.DimensionRequirements;
  if (!lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements and conformance ImageTokenizationRecommendations.DimensionRequirements)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ImageTokenizationRecommendations.DimensionRequirements and conformance ImageTokenizationRecommendations.DimensionRequirements);
  }

  return result;
}

uint64_t ImageTokenizationRecommendations.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration32ImageTokenizationRecommendationsV10CodingKeys33_4E68B6220C3D2A843289BFD2D0E131D9LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration32ImageTokenizationRecommendationsV10CodingKeys33_4E68B6220C3D2A843289BFD2D0E131D9LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ImageTokenizationRecommendations.CodingKeys and conformance ImageTokenizationRecommendations.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v18 = 0;
    lazy protocol witness table accessor for type ImageTokenizationRecommendations.DimensionRequirements and conformance ImageTokenizationRecommendations.DimensionRequirements();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v9 = v14;
    v10 = v15;
    v17 = v16;
    LOBYTE(v14) = 1;
    v11 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    *(a2 + 8) = v10;
    *(a2 + 16) = v17;
    *(a2 + 20) = v11;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance ImageTokenizationRecommendations(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (a1[2])
  {
    if (v2 == v3)
    {
      v4 = *(a2 + 16);
    }

    else
    {
      v4 = 0;
    }

    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (a2[2])
    {
      return 0;
    }

    if (v2 != v3 || a1[1] != a2[1])
    {
      return 0;
    }
  }

  return *(a1 + 5) == *(a2 + 5);
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ImageTokenizationRecommendations(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 24))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for ImageTokenizationRecommendations(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ImageTokenizationRecommendations.DimensionRequirements.ExactSizeRequirement(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ImageTokenizationRecommendations.DimensionRequirements.ExactSizeRequirement(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionRequirement(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ImageTokenizationRecommendations.DimensionRequirements.MaxDimensionRequirement(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

uint64_t InferenceRequestHandler.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t InferenceRequestHandler.init<A, B>(identifier:fetchModelMetadata:countTokens:countTokensPromptTemplate:completePrompt:completePromptTemplate:streamPromptCompletion:streamPromptTemplateCompletion:registerDocuments:fetchTokenizerMetadata:classifyPrompt:classifyPromptTemplate:compileAdapter:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 64) = a10;
  *(a9 + 80) = a11;
  *(a9 + 88) = a12;
  v31 = swift_allocObject();
  v31[2] = a27;
  v31[3] = a28;
  v31[4] = a29;
  v31[5] = a30;
  v31[6] = a13;
  v31[7] = a14;
  *(a9 + 96) = partial apply for closure #2 in InferenceRequestHandler.init<A, B>(identifier:fetchModelMetadata:countTokens:countTokensPromptTemplate:completePrompt:completePromptTemplate:streamPromptCompletion:streamPromptTemplateCompletion:registerDocuments:fetchTokenizerMetadata:classifyPrompt:classifyPromptTemplate:compileAdapter:);
  *(a9 + 104) = v31;
  v32 = swift_allocObject();
  v32[2] = a27;
  v32[3] = a28;
  v32[4] = a29;
  v32[5] = a30;
  v32[6] = a15;
  v32[7] = a16;
  *(a9 + 112) = partial apply for closure #2 in InferenceRequestHandler.init<A, B>(identifier:fetchModelMetadata:countTokens:countTokensPromptTemplate:completePrompt:completePromptTemplate:streamPromptCompletion:streamPromptTemplateCompletion:registerDocuments:fetchTokenizerMetadata:classifyPrompt:classifyPromptTemplate:compileAdapter:);
  *(a9 + 120) = v32;
  v33 = swift_allocObject();
  v33[2] = a27;
  v33[3] = a28;
  v33[4] = a29;
  v33[5] = a30;
  v33[6] = a17;
  v33[7] = a18;
  *(a9 + 128) = partial apply for closure #3 in InferenceRequestHandler.init<A, B>(identifier:fetchModelMetadata:countTokens:countTokensPromptTemplate:completePrompt:completePromptTemplate:streamPromptCompletion:streamPromptTemplateCompletion:registerDocuments:fetchTokenizerMetadata:);
  *(a9 + 136) = v33;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 144) = a19;
  *(a9 + 152) = a20;
  v34 = swift_allocObject();
  *(v34 + 16) = a21;
  *(v34 + 24) = a22;
  *(a9 + 160) = &async function pointer to partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed ClassifyPromptRequest, @in_guaranteed InferenceProviderRequestConfiguration) -> (@out ClassifyPromptResponse);
  *(a9 + 168) = v34;
  v35 = swift_allocObject();
  *(v35 + 16) = a23;
  *(v35 + 24) = a24;
  *(a9 + 176) = &async function pointer to partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed ClassifyPromptTemplateRequest, @in_guaranteed InferenceProviderRequestConfiguration) -> (@out ClassifyPromptResponse);
  *(a9 + 184) = v35;
  result = swift_allocObject();
  *(result + 16) = a25;
  *(result + 24) = a26;
  *(a9 + 192) = &async function pointer to partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed CompileAdapterRequest, @in_guaranteed InferenceProviderRequestConfiguration) -> (@out CompileAdapterResponse);
  *(a9 + 200) = result;
  return result;
}

uint64_t (*InferenceRequestHandler.ResponseStream.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))@<X0>(uint64_t *a1@<X8>)
{
  v8 = *(a3 - 8);
  v9 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 2) = a2;
  *(v10 + 3) = a3;
  *(v10 + 4) = a4;
  (*(v8 + 32))(&v10[v9], a1, a3);
  return partial apply for closure #1 in InferenceRequestHandler.ResponseStream.init<A>(_:);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed ClassifyPromptRequest, @in_guaranteed InferenceProviderRequestConfiguration) -> (@out ClassifyPromptResponse)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return thunk for @escaping @callee_guaranteed (@in_guaranteed ClassifyPromptTemplateRequest, @in_guaranteed InferenceProviderRequestConfiguration) -> (@out ClassifyPromptResponse)(a1, a2, a3, v8);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed ClassifyPromptTemplateRequest, @in_guaranteed InferenceProviderRequestConfiguration) -> (@out ClassifyPromptResponse)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return thunk for @escaping @callee_guaranteed (@in_guaranteed ClassifyPromptTemplateRequest, @in_guaranteed InferenceProviderRequestConfiguration) -> (@out ClassifyPromptResponse)(a1, a2, a3, v8);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed CompileAdapterRequest, @in_guaranteed InferenceProviderRequestConfiguration) -> (@out CompileAdapterResponse)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return thunk for @escaping @callee_guaranteed (@in_guaranteed CompileAdapterRequest, @in_guaranteed InferenceProviderRequestConfiguration) -> (@out CompileAdapterResponse)(a1, a2, a3, v8);
}

uint64_t InferenceRequestHandler.handleRequest(data:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  *(v5 + 472) = a2;
  *(v5 + 480) = a3;
  *(v5 + 464) = a1;
  v6 = type metadata accessor for InferenceError();
  *(v5 + 488) = v6;
  *(v5 + 496) = *(v6 - 8);
  *(v5 + 504) = swift_task_alloc();
  v7 = type metadata accessor for InferenceError.Context();
  *(v5 + 512) = v7;
  *(v5 + 520) = *(v7 - 8);
  *(v5 + 528) = swift_task_alloc();
  v8 = type metadata accessor for InferenceProviderRequestConfiguration();
  *(v5 + 536) = v8;
  *(v5 + 544) = *(v8 - 8);
  *(v5 + 552) = swift_task_alloc();
  *(v5 + 560) = type metadata accessor for InferenceRequest(0);
  *(v5 + 568) = swift_task_alloc();
  *(v5 + 576) = type metadata accessor for OneShotRequest(0);
  *(v5 + 584) = swift_task_alloc();
  *(v5 + 592) = swift_task_alloc();
  v9 = v4[11];
  *(v5 + 176) = v4[10];
  *(v5 + 192) = v9;
  *(v5 + 208) = v4[12];
  v10 = v4[7];
  *(v5 + 112) = v4[6];
  *(v5 + 128) = v10;
  v11 = v4[9];
  *(v5 + 144) = v4[8];
  *(v5 + 160) = v11;
  v12 = v4[3];
  *(v5 + 48) = v4[2];
  *(v5 + 64) = v12;
  v13 = v4[5];
  *(v5 + 80) = v4[4];
  *(v5 + 96) = v13;
  v14 = v4[1];
  *(v5 + 16) = *v4;
  *(v5 + 32) = v14;

  return MEMORY[0x1EEE6DFA0](InferenceRequestHandler.handleRequest(data:configuration:), 0, 0);
}

uint64_t InferenceRequestHandler.handleRequest(data:configuration:)()
{
  v21 = v0;
  if (one-time initialization token for inference != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Log.inference);
  outlined init with copy of InferenceRequestHandler((v0 + 2), (v0 + 28));
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  outlined destroy of InferenceRequestHandler((v0 + 2));
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v20[0] = v5;
    *v4 = 136315394;
    v6 = v0[2];
    v7 = v0[3];

    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, v20);

    *(v4 + 4) = v8;
    *(v4 + 12) = 2080;
    *(v4 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000022, 0x80000001ABA40DC0, v20);
    _os_log_impl(&dword_1AB828000, v2, v3, "%s:%s", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1AC5A6CD0](v5, -1, -1);
    MEMORY[0x1AC5A6CD0](v4, -1, -1);
  }

  if (one-time initialization token for decoder != -1)
  {
    swift_once();
  }

  lazy protocol witness table accessor for type OneShotRequest and conformance OneShotRequest(&lazy protocol witness table cache variable for type OneShotRequest and conformance OneShotRequest, type metadata accessor for OneShotRequest, &protocol conformance descriptor for OneShotRequest);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  v9 = v0[74];
  v10 = v0[71];
  v11 = v0[69];
  v12 = v0[68];
  v13 = v0[67];
  v14 = v0[60];
  outlined init with take of OneShotRequest(v0[73], v9, type metadata accessor for OneShotRequest);
  v15 = v0[2];
  v16 = v0[3];
  outlined init with copy of OneShotRequest(v9, v10, type metadata accessor for OneShotRequest);
  swift_storeEnumTagMultiPayload();
  (*(v12 + 16))(v11, v14, v13);
  type metadata accessor for InferenceRequestInstrumentation(0);
  swift_allocObject();

  v0[75] = InferenceRequestInstrumentation.init(inferenceRequestHandlerIdentifier:inferenceRequest:configuration:)(v15, v16, v10, v11);
  v17 = swift_task_alloc();
  v0[76] = v17;
  v17[2] = v9;
  v17[3] = v0 + 2;
  v17[4] = v14;
  v18 = swift_task_alloc();
  v0[77] = v18;
  *v18 = v0;
  v18[1] = InferenceRequestHandler.handleRequest(data:configuration:);

  return InferenceRequestInstrumentation.measure(_:)(&async function pointer to partial apply for closure #1 in InferenceRequestHandler.handleRequest(data:configuration:), v17);
}

{
  v1 = v0[74];

  _s15TokenGeneration14OneShotRequestOWOhTm_0(v1, type metadata accessor for OneShotRequest);

  v2 = v0[1];
  v3 = v0[80];
  v4 = v0[79];

  return v2(v3, v4);
}

{
  v1 = *(v0 + 592);

  _s15TokenGeneration14OneShotRequestOWOhTm_0(v1, type metadata accessor for OneShotRequest);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t InferenceRequestHandler.handleRequest(data:configuration:)(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 624) = v2;

  if (v2)
  {
    v7 = InferenceRequestHandler.handleRequest(data:configuration:);
  }

  else
  {
    *(v6 + 632) = a2;
    *(v6 + 640) = a1;

    v7 = InferenceRequestHandler.handleRequest(data:configuration:);
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t closure #1 in InferenceRequestHandler.handleRequest(data:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __n128 a6)
{
  v6[427] = a5;
  v6[426] = a4;
  v6[425] = a3;
  v6[424] = a2;
  v6[423] = a1;
  v6[428] = type metadata accessor for TokenGenerationError(0);
  v6[429] = swift_task_alloc();
  v6[430] = swift_task_alloc();
  v6[431] = swift_task_alloc();
  type metadata accessor for CompileAdapterRequest(0);
  v6[432] = swift_task_alloc();
  type metadata accessor for ClassifyPromptTemplateRequest(0);
  v6[433] = swift_task_alloc();
  v6[434] = type metadata accessor for ClassifyPromptResponse(0);
  v6[435] = swift_task_alloc();
  v6[436] = swift_task_alloc();
  type metadata accessor for ClassifyPromptRequest(0);
  v6[437] = swift_task_alloc();
  type metadata accessor for CountTokensPromptTemplateRequest(0);
  v6[438] = swift_task_alloc();
  type metadata accessor for CompletePromptTemplateRequest(0);
  v6[439] = swift_task_alloc();
  v6[440] = type metadata accessor for CompletePromptResponse(0);
  v6[441] = swift_task_alloc();
  v6[442] = swift_task_alloc();
  type metadata accessor for CompletePromptRequest(0);
  v6[443] = swift_task_alloc();
  type metadata accessor for CountTokensRequest(0);
  v6[444] = swift_task_alloc();
  v6[445] = type metadata accessor for OneShotRequest(0);
  v6[446] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in InferenceRequestHandler.handleRequest(data:configuration:), 0, 0);
}

uint64_t closure #1 in InferenceRequestHandler.handleRequest(data:configuration:)()
{
  outlined init with copy of OneShotRequest(v0[425], v0[446], type metadata accessor for OneShotRequest);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v18 = v0[426];
        outlined init with take of OneShotRequest(v0[446], v0[438], type metadata accessor for CountTokensPromptTemplateRequest);
        v42 = (*(v18 + 48) + **(v18 + 48));
        v19 = swift_task_alloc();
        v0[459] = v19;
        *v19 = v0;
        v19[1] = closure #1 in InferenceRequestHandler.handleRequest(data:configuration:);
        v5 = v0[438];
        v17 = v0[427];
        v4 = v0 + 302;
        goto LABEL_17;
      }

      v26 = v0[426];
      outlined init with take of OneShotRequest(v0[446], v0[443], type metadata accessor for CompletePromptRequest);
      v42 = (*(v26 + 64) + **(v26 + 64));
      v27 = swift_task_alloc();
      v0[455] = v27;
      *v27 = v0;
      v27[1] = closure #1 in InferenceRequestHandler.handleRequest(data:configuration:);
      v5 = v0[443];
      v4 = v0[442];
      goto LABEL_16;
    }

    if (EnumCaseMultiPayload)
    {
      v24 = v0[426];
      outlined init with take of OneShotRequest(v0[446], v0[444], type metadata accessor for CountTokensRequest);
      v42 = (*(v24 + 32) + **(v24 + 32));
      v25 = swift_task_alloc();
      v0[453] = v25;
      *v25 = v0;
      v25[1] = closure #1 in InferenceRequestHandler.handleRequest(data:configuration:);
      v5 = v0[444];
      v17 = v0[427];
      v4 = v0 + 358;
    }

    else
    {
      v6 = v0[446];
      v7 = v0[426];
      v8 = *v6;
      v9 = v6[1];
      v0[447] = v9;
      v10 = v6[2];
      v11 = v6[3];
      v0[448] = v11;
      v12 = v6[4];
      v13 = v6[5];
      v0[449] = v13;
      v14 = v6[6];
      v0[450] = v14;
      v15 = *(v7 + 16);
      v0[400] = v8;
      v0[401] = v9;
      v0[402] = v10;
      v0[403] = v11;
      v0[404] = v12;
      v0[405] = v13;
      v0[406] = v14;
      v42 = (v15 + *v15);
      v16 = swift_task_alloc();
      v0[451] = v16;
      *v16 = v0;
      v16[1] = closure #1 in InferenceRequestHandler.handleRequest(data:configuration:);
      v17 = v0[427];
      v4 = v0 + 421;
      v5 = v0 + 400;
    }
  }

  else if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload == 4)
    {
      v20 = v0[426];
      outlined init with take of OneShotRequest(v0[446], v0[439], type metadata accessor for CompletePromptTemplateRequest);
      v42 = (*(v20 + 80) + **(v20 + 80));
      v21 = swift_task_alloc();
      v0[457] = v21;
      *v21 = v0;
      v21[1] = closure #1 in InferenceRequestHandler.handleRequest(data:configuration:);
      v4 = v0[441];
      v5 = v0[439];
      goto LABEL_16;
    }

    v31 = v0[446];
    v32 = v0[426];
    v33 = *v31;
    v34 = v31[1];
    v0[461] = v34;
    v35 = v31[2];
    v36 = v31[3];
    v0[462] = v36;
    v37 = v31[4];
    v38 = v31[5];
    v0[463] = v38;
    v39 = v31[6];
    v0[464] = v39;
    v40 = *(v32 + 144);
    v0[407] = v33;
    v0[408] = v34;
    v0[409] = v35;
    v0[410] = v36;
    v0[411] = v37;
    v0[412] = v38;
    v0[413] = v39;
    v42 = (v40 + *v40);
    v41 = swift_task_alloc();
    v0[465] = v41;
    *v41 = v0;
    v41[1] = closure #1 in InferenceRequestHandler.handleRequest(data:configuration:);
    v17 = v0[427];
    v4 = v0 + 414;
    v5 = v0 + 407;
  }

  else
  {
    if (EnumCaseMultiPayload == 6)
    {
      v22 = v0[426];
      outlined init with take of OneShotRequest(v0[446], v0[437], type metadata accessor for ClassifyPromptRequest);
      v42 = (*(v22 + 160) + **(v22 + 160));
      v23 = swift_task_alloc();
      v0[467] = v23;
      *v23 = v0;
      v23[1] = closure #1 in InferenceRequestHandler.handleRequest(data:configuration:);
      v5 = v0[437];
      v4 = v0[436];
      goto LABEL_16;
    }

    if (EnumCaseMultiPayload == 7)
    {
      v2 = v0[426];
      outlined init with take of OneShotRequest(v0[446], v0[433], type metadata accessor for ClassifyPromptTemplateRequest);
      v42 = (*(v2 + 176) + **(v2 + 176));
      v3 = swift_task_alloc();
      v0[469] = v3;
      *v3 = v0;
      v3[1] = closure #1 in InferenceRequestHandler.handleRequest(data:configuration:);
      v4 = v0[435];
      v5 = v0[433];
LABEL_16:
      v17 = v0[427];
      goto LABEL_17;
    }

    v29 = v0[426];
    outlined init with take of OneShotRequest(v0[446], v0[432], type metadata accessor for CompileAdapterRequest);
    v42 = (*(v29 + 192) + **(v29 + 192));
    v30 = swift_task_alloc();
    v0[471] = v30;
    *v30 = v0;
    v30[1] = closure #1 in InferenceRequestHandler.handleRequest(data:configuration:);
    v5 = v0[432];
    v17 = v0[427];
    v4 = (v0 + 3785);
  }

LABEL_17:

  return (v42)(v4, v5, v17);
}

{
  *(*v1 + 3616) = v0;

  if (v0)
  {
    v2 = closure #1 in InferenceRequestHandler.handleRequest(data:configuration:);
  }

  else
  {

    v2 = closure #1 in InferenceRequestHandler.handleRequest(data:configuration:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v44 = v0;
  v1 = *(v0 + 3368);
  if (one-time initialization token for inference != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 3408);
  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Log.inference);
  outlined init with copy of InferenceRequestHandler(v2, v0 + 16);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  outlined destroy of InferenceRequestHandler(v2);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 3408);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v43[0] = v8;
    *v7 = 136315650;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v6, *(v6 + 8), v43);
    *(v7 + 12) = 2080;
    *(v7 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000022, 0x80000001ABA40DC0, v43);
    *(v7 + 22) = 2050;
    *(v7 + 24) = v1;
    _os_log_impl(&dword_1AB828000, v4, v5, "%s:%s:fetchModelMetadata:response\ncontexteSize: %{public}ld", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1AC5A6CD0](v8, -1, -1);
    MEMORY[0x1AC5A6CD0](v7, -1, -1);
  }

  *(v0 + 3360) = v1;
  if (one-time initialization token for encoder != -1)
  {
    swift_once();
  }

  v9 = *(v0 + 3616);
  lazy protocol witness table accessor for type FetchModelMetadataResponse and conformance FetchModelMetadataResponse();
  v10 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (v9)
  {
    v12 = v9;
    *(v0 + 3376) = v9;
    MEMORY[0x1AC5A6AE0](v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if (swift_dynamicCast())
    {
      v13 = *(v0 + 3448);
      v14 = *(v0 + 3440);

      outlined init with take of OneShotRequest(v13, v14, type metadata accessor for TokenGenerationError);
      if (one-time initialization token for inference != -1)
      {
        swift_once();
      }

      v15 = *(v0 + 3440);
      v16 = *(v0 + 3432);
      v17 = *(v0 + 3408);
      __swift_project_value_buffer(v3, static Log.inference);
      outlined init with copy of OneShotRequest(v15, v16, type metadata accessor for TokenGenerationError);
      outlined init with copy of InferenceRequestHandler(v17, v0 + 432);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.error.getter();
      outlined destroy of InferenceRequestHandler(v17);
      v20 = os_log_type_enabled(v18, v19);
      v21 = *(v0 + 3432);
      if (v20)
      {
        v22 = *(v0 + 3408);
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v43[0] = v25;
        *v23 = 136315394;
        *(v23 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v22, *(v22 + 8), v43);
        *(v23 + 12) = 2112;
        lazy protocol witness table accessor for type OneShotRequest and conformance OneShotRequest(&lazy protocol witness table cache variable for type TokenGenerationError and conformance TokenGenerationError, type metadata accessor for TokenGenerationError, &protocol conformance descriptor for TokenGenerationError);
        swift_allocError();
        outlined init with copy of OneShotRequest(v21, v26, type metadata accessor for TokenGenerationError);
        v27 = _swift_stdlib_bridgeErrorToNSError();
        _s15TokenGeneration14OneShotRequestOWOhTm_0(v21, type metadata accessor for TokenGenerationError);
        *(v23 + 14) = v27;
        *v24 = v27;
        _os_log_impl(&dword_1AB828000, v18, v19, "%s: Request failed %@", v23, 0x16u);
        outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v24, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x1AC5A6CD0](v24, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v25);
        MEMORY[0x1AC5A6CD0](v25, -1, -1);
        MEMORY[0x1AC5A6CD0](v23, -1, -1);
      }

      else
      {

        _s15TokenGeneration14OneShotRequestOWOhTm_0(v21, type metadata accessor for TokenGenerationError);
      }

      v38 = *(v0 + 3440);
      type metadata accessor for InferenceError();
      lazy protocol witness table accessor for type OneShotRequest and conformance OneShotRequest(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, MEMORY[0x1E69B2638], MEMORY[0x1E69B2640]);
      swift_allocError();
      TokenGenerationError.toInferenceError()(v39);
      swift_willThrow();
      _s15TokenGeneration14OneShotRequestOWOhTm_0(v38, type metadata accessor for TokenGenerationError);
    }

    else
    {

      if (one-time initialization token for inference != -1)
      {
        swift_once();
      }

      v30 = *(v0 + 3408);
      __swift_project_value_buffer(v3, static Log.inference);
      outlined init with copy of InferenceRequestHandler(v30, v0 + 224);
      MEMORY[0x1AC5A6AE0](v12);
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.error.getter();
      outlined destroy of InferenceRequestHandler(v30);

      if (os_log_type_enabled(v31, v32))
      {
        v33 = *(v0 + 3408);
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v43[0] = v36;
        *v34 = 136315394;
        *(v34 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v33, *(v33 + 8), v43);
        *(v34 + 12) = 2112;
        MEMORY[0x1AC5A6AE0](v12);
        v37 = _swift_stdlib_bridgeErrorToNSError();
        *(v34 + 14) = v37;
        *v35 = v37;
        _os_log_impl(&dword_1AB828000, v31, v32, "%s: Received unexpected non-TokenGenerationError: %@", v34, 0x16u);
        outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v35, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x1AC5A6CD0](v35, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v36);
        MEMORY[0x1AC5A6CD0](v36, -1, -1);
        MEMORY[0x1AC5A6CD0](v34, -1, -1);
      }

      swift_willThrow();
    }

    v40 = *(v0 + 8);

    return v40();
  }

  else
  {
    v41 = v11;
    v42 = v10;

    v28 = *(v0 + 8);

    return v28(v42, v41);
  }
}

{
  *(*v1 + 3632) = v0;

  if (v0)
  {
    v2 = closure #1 in InferenceRequestHandler.handleRequest(data:configuration:);
  }

  else
  {
    v2 = closure #1 in InferenceRequestHandler.handleRequest(data:configuration:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v45 = v0;
  *(v0 + 3024) = *(v0 + 2912);
  *(v0 + 3040) = *(v0 + 2928);
  *(v0 + 3056) = *(v0 + 2944);
  *(v0 + 3072) = *(v0 + 2960);
  *(v0 + 2976) = *(v0 + 2864);
  *(v0 + 2992) = *(v0 + 2880);
  *(v0 + 3008) = *(v0 + 2896);
  if (one-time initialization token for inference != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 3408);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.inference);
  outlined init with copy of InferenceRequestHandler(v1, v0 + 2096);
  outlined init with copy of CountTokensResponse(v0 + 2976, v0 + 3088);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  outlined destroy of InferenceRequestHandler(v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 3408);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v44[0] = v7;
    *v6 = 136315650;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v5, *(v5 + 8), v44);
    *(v6 + 12) = 2080;
    *(v6 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000022, 0x80000001ABA40DC0, v44);
    *(v6 + 22) = 2048;
    *(v6 + 24) = *(v0 + 2976);
    outlined destroy of CountTokensResponse(v0 + 2976);
    _os_log_impl(&dword_1AB828000, v3, v4, "%s:%s:countTokens:response\ncount: %ld", v6, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1AC5A6CD0](v7, -1, -1);
    MEMORY[0x1AC5A6CD0](v6, -1, -1);
  }

  else
  {
    outlined destroy of CountTokensResponse(v0 + 2976);
  }

  v8 = *(v0 + 3056);
  *(v0 + 2368) = *(v0 + 3040);
  *(v0 + 2384) = v8;
  *(v0 + 2400) = *(v0 + 3072);
  v9 = *(v0 + 2992);
  *(v0 + 2304) = *(v0 + 2976);
  *(v0 + 2320) = v9;
  v10 = *(v0 + 3024);
  *(v0 + 2336) = *(v0 + 3008);
  *(v0 + 2352) = v10;
  if (one-time initialization token for encoder != -1)
  {
    swift_once();
  }

  v11 = *(v0 + 3632);
  lazy protocol witness table accessor for type CountTokensResponse and conformance CountTokensResponse();
  v12 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v14 = v13;
  v15 = v11;
  _s15TokenGeneration14OneShotRequestOWOhTm_0(*(v0 + 3552), type metadata accessor for CountTokensRequest);
  outlined destroy of CountTokensResponse(v0 + 2976);
  if (v11)
  {
    *(v0 + 3376) = v11;
    MEMORY[0x1AC5A6AE0](v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if (swift_dynamicCast())
    {
      v16 = *(v0 + 3448);
      v17 = *(v0 + 3440);

      outlined init with take of OneShotRequest(v16, v17, type metadata accessor for TokenGenerationError);
      if (one-time initialization token for inference != -1)
      {
        swift_once();
      }

      v18 = *(v0 + 3440);
      v19 = *(v0 + 3432);
      v20 = *(v0 + 3408);
      __swift_project_value_buffer(v2, static Log.inference);
      outlined init with copy of OneShotRequest(v18, v19, type metadata accessor for TokenGenerationError);
      outlined init with copy of InferenceRequestHandler(v20, v0 + 432);
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();
      outlined destroy of InferenceRequestHandler(v20);
      v23 = os_log_type_enabled(v21, v22);
      v24 = *(v0 + 3432);
      if (v23)
      {
        v25 = *(v0 + 3408);
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v44[0] = v28;
        *v26 = 136315394;
        *(v26 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v25, *(v25 + 8), v44);
        *(v26 + 12) = 2112;
        lazy protocol witness table accessor for type OneShotRequest and conformance OneShotRequest(&lazy protocol witness table cache variable for type TokenGenerationError and conformance TokenGenerationError, type metadata accessor for TokenGenerationError, &protocol conformance descriptor for TokenGenerationError);
        swift_allocError();
        outlined init with copy of OneShotRequest(v24, v29, type metadata accessor for TokenGenerationError);
        v30 = _swift_stdlib_bridgeErrorToNSError();
        _s15TokenGeneration14OneShotRequestOWOhTm_0(v24, type metadata accessor for TokenGenerationError);
        *(v26 + 14) = v30;
        *v27 = v30;
        _os_log_impl(&dword_1AB828000, v21, v22, "%s: Request failed %@", v26, 0x16u);
        outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v27, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x1AC5A6CD0](v27, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v28);
        MEMORY[0x1AC5A6CD0](v28, -1, -1);
        MEMORY[0x1AC5A6CD0](v26, -1, -1);
      }

      else
      {

        _s15TokenGeneration14OneShotRequestOWOhTm_0(v24, type metadata accessor for TokenGenerationError);
      }

      v41 = *(v0 + 3440);
      type metadata accessor for InferenceError();
      lazy protocol witness table accessor for type OneShotRequest and conformance OneShotRequest(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, MEMORY[0x1E69B2638], MEMORY[0x1E69B2640]);
      swift_allocError();
      TokenGenerationError.toInferenceError()(v42);
      swift_willThrow();
      _s15TokenGeneration14OneShotRequestOWOhTm_0(v41, type metadata accessor for TokenGenerationError);
    }

    else
    {

      if (one-time initialization token for inference != -1)
      {
        swift_once();
      }

      v33 = *(v0 + 3408);
      __swift_project_value_buffer(v2, static Log.inference);
      outlined init with copy of InferenceRequestHandler(v33, v0 + 224);
      MEMORY[0x1AC5A6AE0](v15);
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.error.getter();
      outlined destroy of InferenceRequestHandler(v33);

      if (os_log_type_enabled(v34, v35))
      {
        v36 = *(v0 + 3408);
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v44[0] = v39;
        *v37 = 136315394;
        *(v37 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v36, *(v36 + 8), v44);
        *(v37 + 12) = 2112;
        MEMORY[0x1AC5A6AE0](v15);
        v40 = _swift_stdlib_bridgeErrorToNSError();
        *(v37 + 14) = v40;
        *v38 = v40;
        _os_log_impl(&dword_1AB828000, v34, v35, "%s: Received unexpected non-TokenGenerationError: %@", v37, 0x16u);
        outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v38, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x1AC5A6CD0](v38, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v39);
        MEMORY[0x1AC5A6CD0](v39, -1, -1);
        MEMORY[0x1AC5A6CD0](v37, -1, -1);
      }

      swift_willThrow();
    }

    v43 = *(v0 + 8);

    return v43();
  }

  else
  {

    v31 = *(v0 + 8);

    return v31(v12, v14);
  }
}

{
  *(*v1 + 3648) = v0;

  if (v0)
  {
    v2 = closure #1 in InferenceRequestHandler.handleRequest(data:configuration:);
  }

  else
  {
    v2 = closure #1 in InferenceRequestHandler.handleRequest(data:configuration:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v43 = v0;
  (*(v0 + 3384))(*(v0 + 3536));
  if (one-time initialization token for inference != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 3408);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.inference);
  outlined init with copy of InferenceRequestHandler(v1, v0 + 1888);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  outlined destroy of InferenceRequestHandler(v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 3408);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v42[0] = v7;
    *v6 = 136315394;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v5, *(v5 + 8), v42);
    *(v6 + 12) = 2080;
    *(v6 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000022, 0x80000001ABA40DC0, v42);
    _os_log_impl(&dword_1AB828000, v3, v4, "%s:%s:completePrompt:response", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1AC5A6CD0](v7, -1, -1);
    MEMORY[0x1AC5A6CD0](v6, -1, -1);
  }

  if (one-time initialization token for encoder != -1)
  {
    swift_once();
  }

  v8 = *(v0 + 3648);
  lazy protocol witness table accessor for type OneShotRequest and conformance OneShotRequest(&lazy protocol witness table cache variable for type CompletePromptResponse and conformance CompletePromptResponse, type metadata accessor for CompletePromptResponse, &protocol conformance descriptor for CompletePromptResponse);
  v9 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v11 = v10;
  v12 = v8;
  v13 = *(v0 + 3544);
  _s15TokenGeneration14OneShotRequestOWOhTm_0(*(v0 + 3536), type metadata accessor for CompletePromptResponse);
  _s15TokenGeneration14OneShotRequestOWOhTm_0(v13, type metadata accessor for CompletePromptRequest);
  if (v12)
  {
    *(v0 + 3376) = v12;
    MEMORY[0x1AC5A6AE0](v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if (swift_dynamicCast())
    {
      v14 = *(v0 + 3448);
      v15 = *(v0 + 3440);

      outlined init with take of OneShotRequest(v14, v15, type metadata accessor for TokenGenerationError);
      if (one-time initialization token for inference != -1)
      {
        swift_once();
      }

      v16 = *(v0 + 3440);
      v17 = *(v0 + 3432);
      v18 = *(v0 + 3408);
      __swift_project_value_buffer(v2, static Log.inference);
      outlined init with copy of OneShotRequest(v16, v17, type metadata accessor for TokenGenerationError);
      outlined init with copy of InferenceRequestHandler(v18, v0 + 432);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();
      outlined destroy of InferenceRequestHandler(v18);
      v21 = os_log_type_enabled(v19, v20);
      v22 = *(v0 + 3432);
      if (v21)
      {
        v23 = *(v0 + 3408);
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v42[0] = v26;
        *v24 = 136315394;
        *(v24 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v23, *(v23 + 8), v42);
        *(v24 + 12) = 2112;
        lazy protocol witness table accessor for type OneShotRequest and conformance OneShotRequest(&lazy protocol witness table cache variable for type TokenGenerationError and conformance TokenGenerationError, type metadata accessor for TokenGenerationError, &protocol conformance descriptor for TokenGenerationError);
        swift_allocError();
        outlined init with copy of OneShotRequest(v22, v27, type metadata accessor for TokenGenerationError);
        v28 = _swift_stdlib_bridgeErrorToNSError();
        _s15TokenGeneration14OneShotRequestOWOhTm_0(v22, type metadata accessor for TokenGenerationError);
        *(v24 + 14) = v28;
        *v25 = v28;
        _os_log_impl(&dword_1AB828000, v19, v20, "%s: Request failed %@", v24, 0x16u);
        outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v25, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x1AC5A6CD0](v25, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v26);
        MEMORY[0x1AC5A6CD0](v26, -1, -1);
        MEMORY[0x1AC5A6CD0](v24, -1, -1);
      }

      else
      {

        _s15TokenGeneration14OneShotRequestOWOhTm_0(v22, type metadata accessor for TokenGenerationError);
      }

      v39 = *(v0 + 3440);
      type metadata accessor for InferenceError();
      lazy protocol witness table accessor for type OneShotRequest and conformance OneShotRequest(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, MEMORY[0x1E69B2638], MEMORY[0x1E69B2640]);
      swift_allocError();
      TokenGenerationError.toInferenceError()(v40);
      swift_willThrow();
      _s15TokenGeneration14OneShotRequestOWOhTm_0(v39, type metadata accessor for TokenGenerationError);
    }

    else
    {

      if (one-time initialization token for inference != -1)
      {
        swift_once();
      }

      v31 = *(v0 + 3408);
      __swift_project_value_buffer(v2, static Log.inference);
      outlined init with copy of InferenceRequestHandler(v31, v0 + 224);
      MEMORY[0x1AC5A6AE0](v12);
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.error.getter();
      outlined destroy of InferenceRequestHandler(v31);

      if (os_log_type_enabled(v32, v33))
      {
        v34 = *(v0 + 3408);
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v42[0] = v37;
        *v35 = 136315394;
        *(v35 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v34, *(v34 + 8), v42);
        *(v35 + 12) = 2112;
        MEMORY[0x1AC5A6AE0](v12);
        v38 = _swift_stdlib_bridgeErrorToNSError();
        *(v35 + 14) = v38;
        *v36 = v38;
        _os_log_impl(&dword_1AB828000, v32, v33, "%s: Received unexpected non-TokenGenerationError: %@", v35, 0x16u);
        outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v36, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x1AC5A6CD0](v36, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v37);
        MEMORY[0x1AC5A6CD0](v37, -1, -1);
        MEMORY[0x1AC5A6CD0](v35, -1, -1);
      }

      swift_willThrow();
    }

    v41 = *(v0 + 8);

    return v41();
  }

  else
  {

    v29 = *(v0 + 8);

    return v29(v9, v11);
  }
}

{
  *(*v1 + 3664) = v0;

  if (v0)
  {
    v2 = closure #1 in InferenceRequestHandler.handleRequest(data:configuration:);
  }

  else
  {
    v2 = closure #1 in InferenceRequestHandler.handleRequest(data:configuration:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v43 = v0;
  (*(v0 + 3384))(*(v0 + 3528));
  if (one-time initialization token for inference != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 3408);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.inference);
  outlined init with copy of InferenceRequestHandler(v1, v0 + 1680);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  outlined destroy of InferenceRequestHandler(v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 3408);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v42[0] = v7;
    *v6 = 136315394;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v5, *(v5 + 8), v42);
    *(v6 + 12) = 2080;
    *(v6 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000022, 0x80000001ABA40DC0, v42);
    _os_log_impl(&dword_1AB828000, v3, v4, "%s:%s:completePromptTemplate:response", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1AC5A6CD0](v7, -1, -1);
    MEMORY[0x1AC5A6CD0](v6, -1, -1);
  }

  if (one-time initialization token for encoder != -1)
  {
    swift_once();
  }

  v8 = *(v0 + 3664);
  lazy protocol witness table accessor for type OneShotRequest and conformance OneShotRequest(&lazy protocol witness table cache variable for type CompletePromptResponse and conformance CompletePromptResponse, type metadata accessor for CompletePromptResponse, &protocol conformance descriptor for CompletePromptResponse);
  v9 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v11 = v10;
  v12 = v8;
  v13 = *(v0 + 3512);
  _s15TokenGeneration14OneShotRequestOWOhTm_0(*(v0 + 3528), type metadata accessor for CompletePromptResponse);
  _s15TokenGeneration14OneShotRequestOWOhTm_0(v13, type metadata accessor for CompletePromptTemplateRequest);
  if (v12)
  {
    *(v0 + 3376) = v12;
    MEMORY[0x1AC5A6AE0](v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if (swift_dynamicCast())
    {
      v14 = *(v0 + 3448);
      v15 = *(v0 + 3440);

      outlined init with take of OneShotRequest(v14, v15, type metadata accessor for TokenGenerationError);
      if (one-time initialization token for inference != -1)
      {
        swift_once();
      }

      v16 = *(v0 + 3440);
      v17 = *(v0 + 3432);
      v18 = *(v0 + 3408);
      __swift_project_value_buffer(v2, static Log.inference);
      outlined init with copy of OneShotRequest(v16, v17, type metadata accessor for TokenGenerationError);
      outlined init with copy of InferenceRequestHandler(v18, v0 + 432);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();
      outlined destroy of InferenceRequestHandler(v18);
      v21 = os_log_type_enabled(v19, v20);
      v22 = *(v0 + 3432);
      if (v21)
      {
        v23 = *(v0 + 3408);
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v42[0] = v26;
        *v24 = 136315394;
        *(v24 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v23, *(v23 + 8), v42);
        *(v24 + 12) = 2112;
        lazy protocol witness table accessor for type OneShotRequest and conformance OneShotRequest(&lazy protocol witness table cache variable for type TokenGenerationError and conformance TokenGenerationError, type metadata accessor for TokenGenerationError, &protocol conformance descriptor for TokenGenerationError);
        swift_allocError();
        outlined init with copy of OneShotRequest(v22, v27, type metadata accessor for TokenGenerationError);
        v28 = _swift_stdlib_bridgeErrorToNSError();
        _s15TokenGeneration14OneShotRequestOWOhTm_0(v22, type metadata accessor for TokenGenerationError);
        *(v24 + 14) = v28;
        *v25 = v28;
        _os_log_impl(&dword_1AB828000, v19, v20, "%s: Request failed %@", v24, 0x16u);
        outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v25, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x1AC5A6CD0](v25, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v26);
        MEMORY[0x1AC5A6CD0](v26, -1, -1);
        MEMORY[0x1AC5A6CD0](v24, -1, -1);
      }

      else
      {

        _s15TokenGeneration14OneShotRequestOWOhTm_0(v22, type metadata accessor for TokenGenerationError);
      }

      v39 = *(v0 + 3440);
      type metadata accessor for InferenceError();
      lazy protocol witness table accessor for type OneShotRequest and conformance OneShotRequest(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, MEMORY[0x1E69B2638], MEMORY[0x1E69B2640]);
      swift_allocError();
      TokenGenerationError.toInferenceError()(v40);
      swift_willThrow();
      _s15TokenGeneration14OneShotRequestOWOhTm_0(v39, type metadata accessor for TokenGenerationError);
    }

    else
    {

      if (one-time initialization token for inference != -1)
      {
        swift_once();
      }

      v31 = *(v0 + 3408);
      __swift_project_value_buffer(v2, static Log.inference);
      outlined init with copy of InferenceRequestHandler(v31, v0 + 224);
      MEMORY[0x1AC5A6AE0](v12);
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.error.getter();
      outlined destroy of InferenceRequestHandler(v31);

      if (os_log_type_enabled(v32, v33))
      {
        v34 = *(v0 + 3408);
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v42[0] = v37;
        *v35 = 136315394;
        *(v35 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v34, *(v34 + 8), v42);
        *(v35 + 12) = 2112;
        MEMORY[0x1AC5A6AE0](v12);
        v38 = _swift_stdlib_bridgeErrorToNSError();
        *(v35 + 14) = v38;
        *v36 = v38;
        _os_log_impl(&dword_1AB828000, v32, v33, "%s: Received unexpected non-TokenGenerationError: %@", v35, 0x16u);
        outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v36, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x1AC5A6CD0](v36, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v37);
        MEMORY[0x1AC5A6CD0](v37, -1, -1);
        MEMORY[0x1AC5A6CD0](v35, -1, -1);
      }

      swift_willThrow();
    }

    v41 = *(v0 + 8);

    return v41();
  }

  else
  {

    v29 = *(v0 + 8);

    return v29(v9, v11);
  }
}

{
  *(*v1 + 3680) = v0;

  if (v0)
  {
    v2 = closure #1 in InferenceRequestHandler.handleRequest(data:configuration:);
  }

  else
  {
    v2 = closure #1 in InferenceRequestHandler.handleRequest(data:configuration:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v45 = v0;
  *(v0 + 2576) = *(v0 + 2464);
  *(v0 + 2592) = *(v0 + 2480);
  *(v0 + 2608) = *(v0 + 2496);
  *(v0 + 2624) = *(v0 + 2512);
  *(v0 + 2528) = *(v0 + 2416);
  *(v0 + 2544) = *(v0 + 2432);
  *(v0 + 2560) = *(v0 + 2448);
  if (one-time initialization token for inference != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 3408);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.inference);
  outlined init with copy of InferenceRequestHandler(v1, v0 + 1472);
  outlined init with copy of CountTokensResponse(v0 + 2528, v0 + 2640);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  outlined destroy of InferenceRequestHandler(v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 3408);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v44[0] = v7;
    *v6 = 136315650;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v5, *(v5 + 8), v44);
    *(v6 + 12) = 2080;
    *(v6 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000022, 0x80000001ABA40DC0, v44);
    *(v6 + 22) = 2048;
    *(v6 + 24) = *(v0 + 2528);
    outlined destroy of CountTokensResponse(v0 + 2528);
    _os_log_impl(&dword_1AB828000, v3, v4, "%s:%s:countTokens:response\ncount: %ld", v6, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1AC5A6CD0](v7, -1, -1);
    MEMORY[0x1AC5A6CD0](v6, -1, -1);
  }

  else
  {
    outlined destroy of CountTokensResponse(v0 + 2528);
  }

  v8 = *(v0 + 2608);
  *(v0 + 2816) = *(v0 + 2592);
  *(v0 + 2832) = v8;
  *(v0 + 2848) = *(v0 + 2624);
  v9 = *(v0 + 2544);
  *(v0 + 2752) = *(v0 + 2528);
  *(v0 + 2768) = v9;
  v10 = *(v0 + 2576);
  *(v0 + 2784) = *(v0 + 2560);
  *(v0 + 2800) = v10;
  if (one-time initialization token for encoder != -1)
  {
    swift_once();
  }

  v11 = *(v0 + 3680);
  lazy protocol witness table accessor for type CountTokensResponse and conformance CountTokensResponse();
  v12 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v14 = v13;
  v15 = v11;
  _s15TokenGeneration14OneShotRequestOWOhTm_0(*(v0 + 3504), type metadata accessor for CountTokensPromptTemplateRequest);
  outlined destroy of CountTokensResponse(v0 + 2528);
  if (v11)
  {
    *(v0 + 3376) = v11;
    MEMORY[0x1AC5A6AE0](v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if (swift_dynamicCast())
    {
      v16 = *(v0 + 3448);
      v17 = *(v0 + 3440);

      outlined init with take of OneShotRequest(v16, v17, type metadata accessor for TokenGenerationError);
      if (one-time initialization token for inference != -1)
      {
        swift_once();
      }

      v18 = *(v0 + 3440);
      v19 = *(v0 + 3432);
      v20 = *(v0 + 3408);
      __swift_project_value_buffer(v2, static Log.inference);
      outlined init with copy of OneShotRequest(v18, v19, type metadata accessor for TokenGenerationError);
      outlined init with copy of InferenceRequestHandler(v20, v0 + 432);
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();
      outlined destroy of InferenceRequestHandler(v20);
      v23 = os_log_type_enabled(v21, v22);
      v24 = *(v0 + 3432);
      if (v23)
      {
        v25 = *(v0 + 3408);
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v44[0] = v28;
        *v26 = 136315394;
        *(v26 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v25, *(v25 + 8), v44);
        *(v26 + 12) = 2112;
        lazy protocol witness table accessor for type OneShotRequest and conformance OneShotRequest(&lazy protocol witness table cache variable for type TokenGenerationError and conformance TokenGenerationError, type metadata accessor for TokenGenerationError, &protocol conformance descriptor for TokenGenerationError);
        swift_allocError();
        outlined init with copy of OneShotRequest(v24, v29, type metadata accessor for TokenGenerationError);
        v30 = _swift_stdlib_bridgeErrorToNSError();
        _s15TokenGeneration14OneShotRequestOWOhTm_0(v24, type metadata accessor for TokenGenerationError);
        *(v26 + 14) = v30;
        *v27 = v30;
        _os_log_impl(&dword_1AB828000, v21, v22, "%s: Request failed %@", v26, 0x16u);
        outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v27, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x1AC5A6CD0](v27, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v28);
        MEMORY[0x1AC5A6CD0](v28, -1, -1);
        MEMORY[0x1AC5A6CD0](v26, -1, -1);
      }

      else
      {

        _s15TokenGeneration14OneShotRequestOWOhTm_0(v24, type metadata accessor for TokenGenerationError);
      }

      v41 = *(v0 + 3440);
      type metadata accessor for InferenceError();
      lazy protocol witness table accessor for type OneShotRequest and conformance OneShotRequest(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, MEMORY[0x1E69B2638], MEMORY[0x1E69B2640]);
      swift_allocError();
      TokenGenerationError.toInferenceError()(v42);
      swift_willThrow();
      _s15TokenGeneration14OneShotRequestOWOhTm_0(v41, type metadata accessor for TokenGenerationError);
    }

    else
    {

      if (one-time initialization token for inference != -1)
      {
        swift_once();
      }

      v33 = *(v0 + 3408);
      __swift_project_value_buffer(v2, static Log.inference);
      outlined init with copy of InferenceRequestHandler(v33, v0 + 224);
      MEMORY[0x1AC5A6AE0](v15);
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.error.getter();
      outlined destroy of InferenceRequestHandler(v33);

      if (os_log_type_enabled(v34, v35))
      {
        v36 = *(v0 + 3408);
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v44[0] = v39;
        *v37 = 136315394;
        *(v37 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v36, *(v36 + 8), v44);
        *(v37 + 12) = 2112;
        MEMORY[0x1AC5A6AE0](v15);
        v40 = _swift_stdlib_bridgeErrorToNSError();
        *(v37 + 14) = v40;
        *v38 = v40;
        _os_log_impl(&dword_1AB828000, v34, v35, "%s: Received unexpected non-TokenGenerationError: %@", v37, 0x16u);
        outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v38, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x1AC5A6CD0](v38, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v39);
        MEMORY[0x1AC5A6CD0](v39, -1, -1);
        MEMORY[0x1AC5A6CD0](v37, -1, -1);
      }

      swift_willThrow();
    }

    v43 = *(v0 + 8);

    return v43();
  }

  else
  {

    v31 = *(v0 + 8);

    return v31(v12, v14);
  }
}

{
  *(*v1 + 3728) = v0;

  if (v0)
  {
    v2 = closure #1 in InferenceRequestHandler.handleRequest(data:configuration:);
  }

  else
  {

    v2 = closure #1 in InferenceRequestHandler.handleRequest(data:configuration:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v45 = v0;
  v42 = *(v0 + 3312);
  v1 = *(v0 + 3328);
  if (one-time initialization token for inference != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 3408);
  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Log.inference);
  outlined init with copy of InferenceRequestHandler(v2, v0 + 1264);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  outlined destroy of InferenceRequestHandler(v2);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 3408);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v44[0] = v8;
    *v7 = 136315394;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v6, *(v6 + 8), v44);
    *(v7 + 12) = 2080;
    *(v7 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000022, 0x80000001ABA40DC0, v44);
    _os_log_impl(&dword_1AB828000, v4, v5, "%s:%s:fetchTokenizerMetadata:response", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1AC5A6CD0](v8, -1, -1);
    MEMORY[0x1AC5A6CD0](v7, -1, -1);
  }

  *(v0 + 3336) = v42;
  *(v0 + 3352) = v1;
  if (one-time initialization token for encoder != -1)
  {
    swift_once();
  }

  v9 = *(v0 + 3728);
  lazy protocol witness table accessor for type FetchTokenizerMetadataResponse and conformance FetchTokenizerMetadataResponse();
  v10 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (v9)
  {
    v12 = v9;
    *(v0 + 3376) = v9;
    MEMORY[0x1AC5A6AE0](v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if (swift_dynamicCast())
    {
      v13 = *(v0 + 3448);
      v14 = *(v0 + 3440);

      outlined init with take of OneShotRequest(v13, v14, type metadata accessor for TokenGenerationError);
      if (one-time initialization token for inference != -1)
      {
        swift_once();
      }

      v15 = *(v0 + 3440);
      v16 = *(v0 + 3432);
      v17 = *(v0 + 3408);
      __swift_project_value_buffer(v3, static Log.inference);
      outlined init with copy of OneShotRequest(v15, v16, type metadata accessor for TokenGenerationError);
      outlined init with copy of InferenceRequestHandler(v17, v0 + 432);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.error.getter();
      outlined destroy of InferenceRequestHandler(v17);
      v20 = os_log_type_enabled(v18, v19);
      v21 = *(v0 + 3432);
      if (v20)
      {
        v22 = *(v0 + 3408);
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v44[0] = v25;
        *v23 = 136315394;
        *(v23 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v22, *(v22 + 8), v44);
        *(v23 + 12) = 2112;
        lazy protocol witness table accessor for type OneShotRequest and conformance OneShotRequest(&lazy protocol witness table cache variable for type TokenGenerationError and conformance TokenGenerationError, type metadata accessor for TokenGenerationError, &protocol conformance descriptor for TokenGenerationError);
        swift_allocError();
        outlined init with copy of OneShotRequest(v21, v26, type metadata accessor for TokenGenerationError);
        v27 = _swift_stdlib_bridgeErrorToNSError();
        _s15TokenGeneration14OneShotRequestOWOhTm_0(v21, type metadata accessor for TokenGenerationError);
        *(v23 + 14) = v27;
        *v24 = v27;
        _os_log_impl(&dword_1AB828000, v18, v19, "%s: Request failed %@", v23, 0x16u);
        outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v24, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x1AC5A6CD0](v24, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v25);
        MEMORY[0x1AC5A6CD0](v25, -1, -1);
        MEMORY[0x1AC5A6CD0](v23, -1, -1);
      }

      else
      {

        _s15TokenGeneration14OneShotRequestOWOhTm_0(v21, type metadata accessor for TokenGenerationError);
      }

      v38 = *(v0 + 3440);
      type metadata accessor for InferenceError();
      lazy protocol witness table accessor for type OneShotRequest and conformance OneShotRequest(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, MEMORY[0x1E69B2638], MEMORY[0x1E69B2640]);
      swift_allocError();
      TokenGenerationError.toInferenceError()(v39);
      swift_willThrow();
      _s15TokenGeneration14OneShotRequestOWOhTm_0(v38, type metadata accessor for TokenGenerationError);
    }

    else
    {

      if (one-time initialization token for inference != -1)
      {
        swift_once();
      }

      v30 = *(v0 + 3408);
      __swift_project_value_buffer(v3, static Log.inference);
      outlined init with copy of InferenceRequestHandler(v30, v0 + 224);
      MEMORY[0x1AC5A6AE0](v12);
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.error.getter();
      outlined destroy of InferenceRequestHandler(v30);

      if (os_log_type_enabled(v31, v32))
      {
        v33 = *(v0 + 3408);
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v44[0] = v36;
        *v34 = 136315394;
        *(v34 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v33, *(v33 + 8), v44);
        *(v34 + 12) = 2112;
        MEMORY[0x1AC5A6AE0](v12);
        v37 = _swift_stdlib_bridgeErrorToNSError();
        *(v34 + 14) = v37;
        *v35 = v37;
        _os_log_impl(&dword_1AB828000, v31, v32, "%s: Received unexpected non-TokenGenerationError: %@", v34, 0x16u);
        outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v35, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x1AC5A6CD0](v35, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v36);
        MEMORY[0x1AC5A6CD0](v36, -1, -1);
        MEMORY[0x1AC5A6CD0](v34, -1, -1);
      }

      swift_willThrow();
    }

    v40 = *(v0 + 8);

    return v40();
  }

  else
  {
    v41 = v11;
    v43 = v10;

    v28 = *(v0 + 8);

    return v28(v43, v41);
  }
}

{
  *(*v1 + 3744) = v0;

  if (v0)
  {
    v2 = closure #1 in InferenceRequestHandler.handleRequest(data:configuration:);
  }

  else
  {
    v2 = closure #1 in InferenceRequestHandler.handleRequest(data:configuration:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v43 = v0;
  if (one-time initialization token for inference != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 3408);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.inference);
  outlined init with copy of InferenceRequestHandler(v1, v0 + 1056);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  outlined destroy of InferenceRequestHandler(v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 3408);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v42[0] = v7;
    *v6 = 136315394;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v5, *(v5 + 8), v42);
    *(v6 + 12) = 2080;
    *(v6 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000022, 0x80000001ABA40DC0, v42);
    _os_log_impl(&dword_1AB828000, v3, v4, "%s:%s:classifyPrompt:response", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1AC5A6CD0](v7, -1, -1);
    MEMORY[0x1AC5A6CD0](v6, -1, -1);
  }

  if (one-time initialization token for encoder != -1)
  {
    swift_once();
  }

  v8 = *(v0 + 3744);
  lazy protocol witness table accessor for type OneShotRequest and conformance OneShotRequest(&lazy protocol witness table cache variable for type ClassifyPromptResponse and conformance ClassifyPromptResponse, type metadata accessor for ClassifyPromptResponse, &protocol conformance descriptor for ClassifyPromptResponse);
  v9 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v11 = v10;
  v12 = v8;
  v13 = *(v0 + 3496);
  _s15TokenGeneration14OneShotRequestOWOhTm_0(*(v0 + 3488), type metadata accessor for ClassifyPromptResponse);
  _s15TokenGeneration14OneShotRequestOWOhTm_0(v13, type metadata accessor for ClassifyPromptRequest);
  if (v12)
  {
    *(v0 + 3376) = v12;
    MEMORY[0x1AC5A6AE0](v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if (swift_dynamicCast())
    {
      v14 = *(v0 + 3448);
      v15 = *(v0 + 3440);

      outlined init with take of OneShotRequest(v14, v15, type metadata accessor for TokenGenerationError);
      if (one-time initialization token for inference != -1)
      {
        swift_once();
      }

      v16 = *(v0 + 3440);
      v17 = *(v0 + 3432);
      v18 = *(v0 + 3408);
      __swift_project_value_buffer(v2, static Log.inference);
      outlined init with copy of OneShotRequest(v16, v17, type metadata accessor for TokenGenerationError);
      outlined init with copy of InferenceRequestHandler(v18, v0 + 432);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();
      outlined destroy of InferenceRequestHandler(v18);
      v21 = os_log_type_enabled(v19, v20);
      v22 = *(v0 + 3432);
      if (v21)
      {
        v23 = *(v0 + 3408);
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v42[0] = v26;
        *v24 = 136315394;
        *(v24 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v23, *(v23 + 8), v42);
        *(v24 + 12) = 2112;
        lazy protocol witness table accessor for type OneShotRequest and conformance OneShotRequest(&lazy protocol witness table cache variable for type TokenGenerationError and conformance TokenGenerationError, type metadata accessor for TokenGenerationError, &protocol conformance descriptor for TokenGenerationError);
        swift_allocError();
        outlined init with copy of OneShotRequest(v22, v27, type metadata accessor for TokenGenerationError);
        v28 = _swift_stdlib_bridgeErrorToNSError();
        _s15TokenGeneration14OneShotRequestOWOhTm_0(v22, type metadata accessor for TokenGenerationError);
        *(v24 + 14) = v28;
        *v25 = v28;
        _os_log_impl(&dword_1AB828000, v19, v20, "%s: Request failed %@", v24, 0x16u);
        outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v25, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x1AC5A6CD0](v25, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v26);
        MEMORY[0x1AC5A6CD0](v26, -1, -1);
        MEMORY[0x1AC5A6CD0](v24, -1, -1);
      }

      else
      {

        _s15TokenGeneration14OneShotRequestOWOhTm_0(v22, type metadata accessor for TokenGenerationError);
      }

      v39 = *(v0 + 3440);
      type metadata accessor for InferenceError();
      lazy protocol witness table accessor for type OneShotRequest and conformance OneShotRequest(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, MEMORY[0x1E69B2638], MEMORY[0x1E69B2640]);
      swift_allocError();
      TokenGenerationError.toInferenceError()(v40);
      swift_willThrow();
      _s15TokenGeneration14OneShotRequestOWOhTm_0(v39, type metadata accessor for TokenGenerationError);
    }

    else
    {

      if (one-time initialization token for inference != -1)
      {
        swift_once();
      }

      v31 = *(v0 + 3408);
      __swift_project_value_buffer(v2, static Log.inference);
      outlined init with copy of InferenceRequestHandler(v31, v0 + 224);
      MEMORY[0x1AC5A6AE0](v12);
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.error.getter();
      outlined destroy of InferenceRequestHandler(v31);

      if (os_log_type_enabled(v32, v33))
      {
        v34 = *(v0 + 3408);
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v42[0] = v37;
        *v35 = 136315394;
        *(v35 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v34, *(v34 + 8), v42);
        *(v35 + 12) = 2112;
        MEMORY[0x1AC5A6AE0](v12);
        v38 = _swift_stdlib_bridgeErrorToNSError();
        *(v35 + 14) = v38;
        *v36 = v38;
        _os_log_impl(&dword_1AB828000, v32, v33, "%s: Received unexpected non-TokenGenerationError: %@", v35, 0x16u);
        outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v36, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x1AC5A6CD0](v36, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v37);
        MEMORY[0x1AC5A6CD0](v37, -1, -1);
        MEMORY[0x1AC5A6CD0](v35, -1, -1);
      }

      swift_willThrow();
    }

    v41 = *(v0 + 8);

    return v41();
  }

  else
  {

    v29 = *(v0 + 8);

    return v29(v9, v11);
  }
}

{
  *(*v1 + 3760) = v0;

  if (v0)
  {
    v2 = closure #1 in InferenceRequestHandler.handleRequest(data:configuration:);
  }

  else
  {
    v2 = closure #1 in InferenceRequestHandler.handleRequest(data:configuration:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v43 = v0;
  if (one-time initialization token for inference != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 3408);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.inference);
  outlined init with copy of InferenceRequestHandler(v1, v0 + 848);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  outlined destroy of InferenceRequestHandler(v1);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 3408);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v42[0] = v7;
    *v6 = 136315394;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v5, *(v5 + 8), v42);
    *(v6 + 12) = 2080;
    *(v6 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000022, 0x80000001ABA40DC0, v42);
    _os_log_impl(&dword_1AB828000, v3, v4, "%s:%s:_classifyPromptTemplate:response", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1AC5A6CD0](v7, -1, -1);
    MEMORY[0x1AC5A6CD0](v6, -1, -1);
  }

  if (one-time initialization token for encoder != -1)
  {
    swift_once();
  }

  v8 = *(v0 + 3760);
  lazy protocol witness table accessor for type OneShotRequest and conformance OneShotRequest(&lazy protocol witness table cache variable for type ClassifyPromptResponse and conformance ClassifyPromptResponse, type metadata accessor for ClassifyPromptResponse, &protocol conformance descriptor for ClassifyPromptResponse);
  v9 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v11 = v10;
  v12 = v8;
  v13 = *(v0 + 3464);
  _s15TokenGeneration14OneShotRequestOWOhTm_0(*(v0 + 3480), type metadata accessor for ClassifyPromptResponse);
  _s15TokenGeneration14OneShotRequestOWOhTm_0(v13, type metadata accessor for ClassifyPromptTemplateRequest);
  if (v12)
  {
    *(v0 + 3376) = v12;
    MEMORY[0x1AC5A6AE0](v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if (swift_dynamicCast())
    {
      v14 = *(v0 + 3448);
      v15 = *(v0 + 3440);

      outlined init with take of OneShotRequest(v14, v15, type metadata accessor for TokenGenerationError);
      if (one-time initialization token for inference != -1)
      {
        swift_once();
      }

      v16 = *(v0 + 3440);
      v17 = *(v0 + 3432);
      v18 = *(v0 + 3408);
      __swift_project_value_buffer(v2, static Log.inference);
      outlined init with copy of OneShotRequest(v16, v17, type metadata accessor for TokenGenerationError);
      outlined init with copy of InferenceRequestHandler(v18, v0 + 432);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();
      outlined destroy of InferenceRequestHandler(v18);
      v21 = os_log_type_enabled(v19, v20);
      v22 = *(v0 + 3432);
      if (v21)
      {
        v23 = *(v0 + 3408);
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v42[0] = v26;
        *v24 = 136315394;
        *(v24 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v23, *(v23 + 8), v42);
        *(v24 + 12) = 2112;
        lazy protocol witness table accessor for type OneShotRequest and conformance OneShotRequest(&lazy protocol witness table cache variable for type TokenGenerationError and conformance TokenGenerationError, type metadata accessor for TokenGenerationError, &protocol conformance descriptor for TokenGenerationError);
        swift_allocError();
        outlined init with copy of OneShotRequest(v22, v27, type metadata accessor for TokenGenerationError);
        v28 = _swift_stdlib_bridgeErrorToNSError();
        _s15TokenGeneration14OneShotRequestOWOhTm_0(v22, type metadata accessor for TokenGenerationError);
        *(v24 + 14) = v28;
        *v25 = v28;
        _os_log_impl(&dword_1AB828000, v19, v20, "%s: Request failed %@", v24, 0x16u);
        outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v25, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x1AC5A6CD0](v25, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v26);
        MEMORY[0x1AC5A6CD0](v26, -1, -1);
        MEMORY[0x1AC5A6CD0](v24, -1, -1);
      }

      else
      {

        _s15TokenGeneration14OneShotRequestOWOhTm_0(v22, type metadata accessor for TokenGenerationError);
      }

      v39 = *(v0 + 3440);
      type metadata accessor for InferenceError();
      lazy protocol witness table accessor for type OneShotRequest and conformance OneShotRequest(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, MEMORY[0x1E69B2638], MEMORY[0x1E69B2640]);
      swift_allocError();
      TokenGenerationError.toInferenceError()(v40);
      swift_willThrow();
      _s15TokenGeneration14OneShotRequestOWOhTm_0(v39, type metadata accessor for TokenGenerationError);
    }

    else
    {

      if (one-time initialization token for inference != -1)
      {
        swift_once();
      }

      v31 = *(v0 + 3408);
      __swift_project_value_buffer(v2, static Log.inference);
      outlined init with copy of InferenceRequestHandler(v31, v0 + 224);
      MEMORY[0x1AC5A6AE0](v12);
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.error.getter();
      outlined destroy of InferenceRequestHandler(v31);

      if (os_log_type_enabled(v32, v33))
      {
        v34 = *(v0 + 3408);
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v42[0] = v37;
        *v35 = 136315394;
        *(v35 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v34, *(v34 + 8), v42);
        *(v35 + 12) = 2112;
        MEMORY[0x1AC5A6AE0](v12);
        v38 = _swift_stdlib_bridgeErrorToNSError();
        *(v35 + 14) = v38;
        *v36 = v38;
        _os_log_impl(&dword_1AB828000, v32, v33, "%s: Received unexpected non-TokenGenerationError: %@", v35, 0x16u);
        outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v36, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x1AC5A6CD0](v36, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v37);
        MEMORY[0x1AC5A6CD0](v37, -1, -1);
        MEMORY[0x1AC5A6CD0](v35, -1, -1);
      }

      swift_willThrow();
    }

    v41 = *(v0 + 8);

    return v41();
  }

  else
  {

    v29 = *(v0 + 8);

    return v29(v9, v11);
  }
}

{
  *(*v1 + 3776) = v0;

  if (v0)
  {
    v2 = closure #1 in InferenceRequestHandler.handleRequest(data:configuration:);
  }

  else
  {
    v2 = closure #1 in InferenceRequestHandler.handleRequest(data:configuration:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v43 = v0;
  v1 = *(v0 + 3785);
  if (one-time initialization token for inference != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 3408);
  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Log.inference);
  outlined init with copy of InferenceRequestHandler(v2, v0 + 640);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  outlined destroy of InferenceRequestHandler(v2);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 3408);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v42[0] = v8;
    *v7 = 136315394;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v6, *(v6 + 8), v42);
    *(v7 + 12) = 2080;
    *(v7 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000022, 0x80000001ABA40DC0, v42);
    _os_log_impl(&dword_1AB828000, v4, v5, "%s:%s:_compileAdapter:response", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1AC5A6CD0](v8, -1, -1);
    MEMORY[0x1AC5A6CD0](v7, -1, -1);
  }

  *(v0 + 3784) = v1;
  if (one-time initialization token for encoder != -1)
  {
    swift_once();
  }

  v9 = *(v0 + 3776);
  lazy protocol witness table accessor for type CompileAdapterResponse and conformance CompileAdapterResponse();
  v10 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v12 = v11;
  v13 = v9;
  _s15TokenGeneration14OneShotRequestOWOhTm_0(*(v0 + 3456), type metadata accessor for CompileAdapterRequest);
  if (v9)
  {
    *(v0 + 3376) = v9;
    MEMORY[0x1AC5A6AE0](v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if (swift_dynamicCast())
    {
      v14 = *(v0 + 3448);
      v15 = *(v0 + 3440);

      outlined init with take of OneShotRequest(v14, v15, type metadata accessor for TokenGenerationError);
      if (one-time initialization token for inference != -1)
      {
        swift_once();
      }

      v16 = *(v0 + 3440);
      v17 = *(v0 + 3432);
      v18 = *(v0 + 3408);
      __swift_project_value_buffer(v3, static Log.inference);
      outlined init with copy of OneShotRequest(v16, v17, type metadata accessor for TokenGenerationError);
      outlined init with copy of InferenceRequestHandler(v18, v0 + 432);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.error.getter();
      outlined destroy of InferenceRequestHandler(v18);
      v21 = os_log_type_enabled(v19, v20);
      v22 = *(v0 + 3432);
      if (v21)
      {
        v23 = *(v0 + 3408);
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v42[0] = v26;
        *v24 = 136315394;
        *(v24 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v23, *(v23 + 8), v42);
        *(v24 + 12) = 2112;
        lazy protocol witness table accessor for type OneShotRequest and conformance OneShotRequest(&lazy protocol witness table cache variable for type TokenGenerationError and conformance TokenGenerationError, type metadata accessor for TokenGenerationError, &protocol conformance descriptor for TokenGenerationError);
        swift_allocError();
        outlined init with copy of OneShotRequest(v22, v27, type metadata accessor for TokenGenerationError);
        v28 = _swift_stdlib_bridgeErrorToNSError();
        _s15TokenGeneration14OneShotRequestOWOhTm_0(v22, type metadata accessor for TokenGenerationError);
        *(v24 + 14) = v28;
        *v25 = v28;
        _os_log_impl(&dword_1AB828000, v19, v20, "%s: Request failed %@", v24, 0x16u);
        outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v25, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x1AC5A6CD0](v25, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v26);
        MEMORY[0x1AC5A6CD0](v26, -1, -1);
        MEMORY[0x1AC5A6CD0](v24, -1, -1);
      }

      else
      {

        _s15TokenGeneration14OneShotRequestOWOhTm_0(v22, type metadata accessor for TokenGenerationError);
      }

      v39 = *(v0 + 3440);
      type metadata accessor for InferenceError();
      lazy protocol witness table accessor for type OneShotRequest and conformance OneShotRequest(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, MEMORY[0x1E69B2638], MEMORY[0x1E69B2640]);
      swift_allocError();
      TokenGenerationError.toInferenceError()(v40);
      swift_willThrow();
      _s15TokenGeneration14OneShotRequestOWOhTm_0(v39, type metadata accessor for TokenGenerationError);
    }

    else
    {

      if (one-time initialization token for inference != -1)
      {
        swift_once();
      }

      v31 = *(v0 + 3408);
      __swift_project_value_buffer(v3, static Log.inference);
      outlined init with copy of InferenceRequestHandler(v31, v0 + 224);
      MEMORY[0x1AC5A6AE0](v13);
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.error.getter();
      outlined destroy of InferenceRequestHandler(v31);

      if (os_log_type_enabled(v32, v33))
      {
        v34 = *(v0 + 3408);
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v42[0] = v37;
        *v35 = 136315394;
        *(v35 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v34, *(v34 + 8), v42);
        *(v35 + 12) = 2112;
        MEMORY[0x1AC5A6AE0](v13);
        v38 = _swift_stdlib_bridgeErrorToNSError();
        *(v35 + 14) = v38;
        *v36 = v38;
        _os_log_impl(&dword_1AB828000, v32, v33, "%s: Received unexpected non-TokenGenerationError: %@", v35, 0x16u);
        outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v36, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x1AC5A6CD0](v36, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v37);
        MEMORY[0x1AC5A6CD0](v37, -1, -1);
        MEMORY[0x1AC5A6CD0](v35, -1, -1);
      }

      swift_willThrow();
    }

    v41 = *(v0 + 8);

    return v41();
  }

  else
  {

    v29 = *(v0 + 8);

    return v29(v10, v12);
  }
}

{
  v32 = v0;

  v1 = *(v0 + 3616);
  *(v0 + 3376) = v1;
  MEMORY[0x1AC5A6AE0](v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 3448);
    v3 = *(v0 + 3440);

    outlined init with take of OneShotRequest(v2, v3, type metadata accessor for TokenGenerationError);
    if (one-time initialization token for inference != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 3440);
    v5 = *(v0 + 3432);
    v6 = *(v0 + 3408);
    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Log.inference);
    outlined init with copy of OneShotRequest(v4, v5, type metadata accessor for TokenGenerationError);
    outlined init with copy of InferenceRequestHandler(v6, v0 + 432);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    outlined destroy of InferenceRequestHandler(v6);
    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 3432);
    if (v10)
    {
      v12 = *(v0 + 3408);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v31[0] = v15;
      *v13 = 136315394;
      *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v12, *(v12 + 8), v31);
      *(v13 + 12) = 2112;
      lazy protocol witness table accessor for type OneShotRequest and conformance OneShotRequest(&lazy protocol witness table cache variable for type TokenGenerationError and conformance TokenGenerationError, type metadata accessor for TokenGenerationError, &protocol conformance descriptor for TokenGenerationError);
      swift_allocError();
      outlined init with copy of OneShotRequest(v11, v16, type metadata accessor for TokenGenerationError);
      v17 = _swift_stdlib_bridgeErrorToNSError();
      _s15TokenGeneration14OneShotRequestOWOhTm_0(v11, type metadata accessor for TokenGenerationError);
      *(v13 + 14) = v17;
      *v14 = v17;
      _os_log_impl(&dword_1AB828000, v8, v9, "%s: Request failed %@", v13, 0x16u);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v14, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1AC5A6CD0](v14, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x1AC5A6CD0](v15, -1, -1);
      MEMORY[0x1AC5A6CD0](v13, -1, -1);
    }

    else
    {

      _s15TokenGeneration14OneShotRequestOWOhTm_0(v11, type metadata accessor for TokenGenerationError);
    }

    v27 = *(v0 + 3440);
    type metadata accessor for InferenceError();
    lazy protocol witness table accessor for type OneShotRequest and conformance OneShotRequest(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, MEMORY[0x1E69B2638], MEMORY[0x1E69B2640]);
    swift_allocError();
    TokenGenerationError.toInferenceError()(v28);
    swift_willThrow();
    _s15TokenGeneration14OneShotRequestOWOhTm_0(v27, type metadata accessor for TokenGenerationError);
  }

  else
  {

    if (one-time initialization token for inference != -1)
    {
      swift_once();
    }

    v18 = *(v0 + 3408);
    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Log.inference);
    outlined init with copy of InferenceRequestHandler(v18, v0 + 224);
    MEMORY[0x1AC5A6AE0](v1);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    outlined destroy of InferenceRequestHandler(v18);

    if (os_log_type_enabled(v20, v21))
    {
      v22 = *(v0 + 3408);
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v31[0] = v25;
      *v23 = 136315394;
      *(v23 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v22, *(v22 + 8), v31);
      *(v23 + 12) = 2112;
      MEMORY[0x1AC5A6AE0](v1);
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 14) = v26;
      *v24 = v26;
      _os_log_impl(&dword_1AB828000, v20, v21, "%s: Received unexpected non-TokenGenerationError: %@", v23, 0x16u);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v24, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1AC5A6CD0](v24, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x1AC5A6CD0](v25, -1, -1);
      MEMORY[0x1AC5A6CD0](v23, -1, -1);
    }

    swift_willThrow();
  }

  v29 = *(v0 + 8);

  return v29();
}

{
  v32 = v0;
  _s15TokenGeneration14OneShotRequestOWOhTm_0(*(v0 + 3552), type metadata accessor for CountTokensRequest);
  v1 = *(v0 + 3632);
  *(v0 + 3376) = v1;
  MEMORY[0x1AC5A6AE0](v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 3448);
    v3 = *(v0 + 3440);

    outlined init with take of OneShotRequest(v2, v3, type metadata accessor for TokenGenerationError);
    if (one-time initialization token for inference != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 3440);
    v5 = *(v0 + 3432);
    v6 = *(v0 + 3408);
    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Log.inference);
    outlined init with copy of OneShotRequest(v4, v5, type metadata accessor for TokenGenerationError);
    outlined init with copy of InferenceRequestHandler(v6, v0 + 432);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    outlined destroy of InferenceRequestHandler(v6);
    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 3432);
    if (v10)
    {
      v12 = *(v0 + 3408);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v31[0] = v15;
      *v13 = 136315394;
      *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v12, *(v12 + 8), v31);
      *(v13 + 12) = 2112;
      lazy protocol witness table accessor for type OneShotRequest and conformance OneShotRequest(&lazy protocol witness table cache variable for type TokenGenerationError and conformance TokenGenerationError, type metadata accessor for TokenGenerationError, &protocol conformance descriptor for TokenGenerationError);
      swift_allocError();
      outlined init with copy of OneShotRequest(v11, v16, type metadata accessor for TokenGenerationError);
      v17 = _swift_stdlib_bridgeErrorToNSError();
      _s15TokenGeneration14OneShotRequestOWOhTm_0(v11, type metadata accessor for TokenGenerationError);
      *(v13 + 14) = v17;
      *v14 = v17;
      _os_log_impl(&dword_1AB828000, v8, v9, "%s: Request failed %@", v13, 0x16u);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v14, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1AC5A6CD0](v14, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x1AC5A6CD0](v15, -1, -1);
      MEMORY[0x1AC5A6CD0](v13, -1, -1);
    }

    else
    {

      _s15TokenGeneration14OneShotRequestOWOhTm_0(v11, type metadata accessor for TokenGenerationError);
    }

    v27 = *(v0 + 3440);
    type metadata accessor for InferenceError();
    lazy protocol witness table accessor for type OneShotRequest and conformance OneShotRequest(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, MEMORY[0x1E69B2638], MEMORY[0x1E69B2640]);
    swift_allocError();
    TokenGenerationError.toInferenceError()(v28);
    swift_willThrow();
    _s15TokenGeneration14OneShotRequestOWOhTm_0(v27, type metadata accessor for TokenGenerationError);
  }

  else
  {

    if (one-time initialization token for inference != -1)
    {
      swift_once();
    }

    v18 = *(v0 + 3408);
    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Log.inference);
    outlined init with copy of InferenceRequestHandler(v18, v0 + 224);
    MEMORY[0x1AC5A6AE0](v1);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    outlined destroy of InferenceRequestHandler(v18);

    if (os_log_type_enabled(v20, v21))
    {
      v22 = *(v0 + 3408);
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v31[0] = v25;
      *v23 = 136315394;
      *(v23 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v22, *(v22 + 8), v31);
      *(v23 + 12) = 2112;
      MEMORY[0x1AC5A6AE0](v1);
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 14) = v26;
      *v24 = v26;
      _os_log_impl(&dword_1AB828000, v20, v21, "%s: Received unexpected non-TokenGenerationError: %@", v23, 0x16u);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v24, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1AC5A6CD0](v24, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x1AC5A6CD0](v25, -1, -1);
      MEMORY[0x1AC5A6CD0](v23, -1, -1);
    }

    swift_willThrow();
  }

  v29 = *(v0 + 8);

  return v29();
}

{
  v32 = v0;
  _s15TokenGeneration14OneShotRequestOWOhTm_0(*(v0 + 3544), type metadata accessor for CompletePromptRequest);
  v1 = *(v0 + 3648);
  *(v0 + 3376) = v1;
  MEMORY[0x1AC5A6AE0](v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 3448);
    v3 = *(v0 + 3440);

    outlined init with take of OneShotRequest(v2, v3, type metadata accessor for TokenGenerationError);
    if (one-time initialization token for inference != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 3440);
    v5 = *(v0 + 3432);
    v6 = *(v0 + 3408);
    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Log.inference);
    outlined init with copy of OneShotRequest(v4, v5, type metadata accessor for TokenGenerationError);
    outlined init with copy of InferenceRequestHandler(v6, v0 + 432);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    outlined destroy of InferenceRequestHandler(v6);
    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 3432);
    if (v10)
    {
      v12 = *(v0 + 3408);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v31[0] = v15;
      *v13 = 136315394;
      *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v12, *(v12 + 8), v31);
      *(v13 + 12) = 2112;
      lazy protocol witness table accessor for type OneShotRequest and conformance OneShotRequest(&lazy protocol witness table cache variable for type TokenGenerationError and conformance TokenGenerationError, type metadata accessor for TokenGenerationError, &protocol conformance descriptor for TokenGenerationError);
      swift_allocError();
      outlined init with copy of OneShotRequest(v11, v16, type metadata accessor for TokenGenerationError);
      v17 = _swift_stdlib_bridgeErrorToNSError();
      _s15TokenGeneration14OneShotRequestOWOhTm_0(v11, type metadata accessor for TokenGenerationError);
      *(v13 + 14) = v17;
      *v14 = v17;
      _os_log_impl(&dword_1AB828000, v8, v9, "%s: Request failed %@", v13, 0x16u);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v14, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1AC5A6CD0](v14, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x1AC5A6CD0](v15, -1, -1);
      MEMORY[0x1AC5A6CD0](v13, -1, -1);
    }

    else
    {

      _s15TokenGeneration14OneShotRequestOWOhTm_0(v11, type metadata accessor for TokenGenerationError);
    }

    v27 = *(v0 + 3440);
    type metadata accessor for InferenceError();
    lazy protocol witness table accessor for type OneShotRequest and conformance OneShotRequest(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, MEMORY[0x1E69B2638], MEMORY[0x1E69B2640]);
    swift_allocError();
    TokenGenerationError.toInferenceError()(v28);
    swift_willThrow();
    _s15TokenGeneration14OneShotRequestOWOhTm_0(v27, type metadata accessor for TokenGenerationError);
  }

  else
  {

    if (one-time initialization token for inference != -1)
    {
      swift_once();
    }

    v18 = *(v0 + 3408);
    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Log.inference);
    outlined init with copy of InferenceRequestHandler(v18, v0 + 224);
    MEMORY[0x1AC5A6AE0](v1);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    outlined destroy of InferenceRequestHandler(v18);

    if (os_log_type_enabled(v20, v21))
    {
      v22 = *(v0 + 3408);
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v31[0] = v25;
      *v23 = 136315394;
      *(v23 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v22, *(v22 + 8), v31);
      *(v23 + 12) = 2112;
      MEMORY[0x1AC5A6AE0](v1);
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 14) = v26;
      *v24 = v26;
      _os_log_impl(&dword_1AB828000, v20, v21, "%s: Received unexpected non-TokenGenerationError: %@", v23, 0x16u);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v24, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1AC5A6CD0](v24, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x1AC5A6CD0](v25, -1, -1);
      MEMORY[0x1AC5A6CD0](v23, -1, -1);
    }

    swift_willThrow();
  }

  v29 = *(v0 + 8);

  return v29();
}

{
  v32 = v0;
  _s15TokenGeneration14OneShotRequestOWOhTm_0(*(v0 + 3512), type metadata accessor for CompletePromptTemplateRequest);
  v1 = *(v0 + 3664);
  *(v0 + 3376) = v1;
  MEMORY[0x1AC5A6AE0](v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 3448);
    v3 = *(v0 + 3440);

    outlined init with take of OneShotRequest(v2, v3, type metadata accessor for TokenGenerationError);
    if (one-time initialization token for inference != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 3440);
    v5 = *(v0 + 3432);
    v6 = *(v0 + 3408);
    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Log.inference);
    outlined init with copy of OneShotRequest(v4, v5, type metadata accessor for TokenGenerationError);
    outlined init with copy of InferenceRequestHandler(v6, v0 + 432);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    outlined destroy of InferenceRequestHandler(v6);
    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 3432);
    if (v10)
    {
      v12 = *(v0 + 3408);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v31[0] = v15;
      *v13 = 136315394;
      *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v12, *(v12 + 8), v31);
      *(v13 + 12) = 2112;
      lazy protocol witness table accessor for type OneShotRequest and conformance OneShotRequest(&lazy protocol witness table cache variable for type TokenGenerationError and conformance TokenGenerationError, type metadata accessor for TokenGenerationError, &protocol conformance descriptor for TokenGenerationError);
      swift_allocError();
      outlined init with copy of OneShotRequest(v11, v16, type metadata accessor for TokenGenerationError);
      v17 = _swift_stdlib_bridgeErrorToNSError();
      _s15TokenGeneration14OneShotRequestOWOhTm_0(v11, type metadata accessor for TokenGenerationError);
      *(v13 + 14) = v17;
      *v14 = v17;
      _os_log_impl(&dword_1AB828000, v8, v9, "%s: Request failed %@", v13, 0x16u);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v14, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1AC5A6CD0](v14, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x1AC5A6CD0](v15, -1, -1);
      MEMORY[0x1AC5A6CD0](v13, -1, -1);
    }

    else
    {

      _s15TokenGeneration14OneShotRequestOWOhTm_0(v11, type metadata accessor for TokenGenerationError);
    }

    v27 = *(v0 + 3440);
    type metadata accessor for InferenceError();
    lazy protocol witness table accessor for type OneShotRequest and conformance OneShotRequest(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, MEMORY[0x1E69B2638], MEMORY[0x1E69B2640]);
    swift_allocError();
    TokenGenerationError.toInferenceError()(v28);
    swift_willThrow();
    _s15TokenGeneration14OneShotRequestOWOhTm_0(v27, type metadata accessor for TokenGenerationError);
  }

  else
  {

    if (one-time initialization token for inference != -1)
    {
      swift_once();
    }

    v18 = *(v0 + 3408);
    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Log.inference);
    outlined init with copy of InferenceRequestHandler(v18, v0 + 224);
    MEMORY[0x1AC5A6AE0](v1);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    outlined destroy of InferenceRequestHandler(v18);

    if (os_log_type_enabled(v20, v21))
    {
      v22 = *(v0 + 3408);
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v31[0] = v25;
      *v23 = 136315394;
      *(v23 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v22, *(v22 + 8), v31);
      *(v23 + 12) = 2112;
      MEMORY[0x1AC5A6AE0](v1);
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 14) = v26;
      *v24 = v26;
      _os_log_impl(&dword_1AB828000, v20, v21, "%s: Received unexpected non-TokenGenerationError: %@", v23, 0x16u);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v24, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1AC5A6CD0](v24, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x1AC5A6CD0](v25, -1, -1);
      MEMORY[0x1AC5A6CD0](v23, -1, -1);
    }

    swift_willThrow();
  }

  v29 = *(v0 + 8);

  return v29();
}

{
  v32 = v0;
  _s15TokenGeneration14OneShotRequestOWOhTm_0(*(v0 + 3504), type metadata accessor for CountTokensPromptTemplateRequest);
  v1 = *(v0 + 3680);
  *(v0 + 3376) = v1;
  MEMORY[0x1AC5A6AE0](v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 3448);
    v3 = *(v0 + 3440);

    outlined init with take of OneShotRequest(v2, v3, type metadata accessor for TokenGenerationError);
    if (one-time initialization token for inference != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 3440);
    v5 = *(v0 + 3432);
    v6 = *(v0 + 3408);
    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Log.inference);
    outlined init with copy of OneShotRequest(v4, v5, type metadata accessor for TokenGenerationError);
    outlined init with copy of InferenceRequestHandler(v6, v0 + 432);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    outlined destroy of InferenceRequestHandler(v6);
    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 3432);
    if (v10)
    {
      v12 = *(v0 + 3408);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v31[0] = v15;
      *v13 = 136315394;
      *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v12, *(v12 + 8), v31);
      *(v13 + 12) = 2112;
      lazy protocol witness table accessor for type OneShotRequest and conformance OneShotRequest(&lazy protocol witness table cache variable for type TokenGenerationError and conformance TokenGenerationError, type metadata accessor for TokenGenerationError, &protocol conformance descriptor for TokenGenerationError);
      swift_allocError();
      outlined init with copy of OneShotRequest(v11, v16, type metadata accessor for TokenGenerationError);
      v17 = _swift_stdlib_bridgeErrorToNSError();
      _s15TokenGeneration14OneShotRequestOWOhTm_0(v11, type metadata accessor for TokenGenerationError);
      *(v13 + 14) = v17;
      *v14 = v17;
      _os_log_impl(&dword_1AB828000, v8, v9, "%s: Request failed %@", v13, 0x16u);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v14, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1AC5A6CD0](v14, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x1AC5A6CD0](v15, -1, -1);
      MEMORY[0x1AC5A6CD0](v13, -1, -1);
    }

    else
    {

      _s15TokenGeneration14OneShotRequestOWOhTm_0(v11, type metadata accessor for TokenGenerationError);
    }

    v27 = *(v0 + 3440);
    type metadata accessor for InferenceError();
    lazy protocol witness table accessor for type OneShotRequest and conformance OneShotRequest(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, MEMORY[0x1E69B2638], MEMORY[0x1E69B2640]);
    swift_allocError();
    TokenGenerationError.toInferenceError()(v28);
    swift_willThrow();
    _s15TokenGeneration14OneShotRequestOWOhTm_0(v27, type metadata accessor for TokenGenerationError);
  }

  else
  {

    if (one-time initialization token for inference != -1)
    {
      swift_once();
    }

    v18 = *(v0 + 3408);
    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Log.inference);
    outlined init with copy of InferenceRequestHandler(v18, v0 + 224);
    MEMORY[0x1AC5A6AE0](v1);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    outlined destroy of InferenceRequestHandler(v18);

    if (os_log_type_enabled(v20, v21))
    {
      v22 = *(v0 + 3408);
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v31[0] = v25;
      *v23 = 136315394;
      *(v23 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v22, *(v22 + 8), v31);
      *(v23 + 12) = 2112;
      MEMORY[0x1AC5A6AE0](v1);
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 14) = v26;
      *v24 = v26;
      _os_log_impl(&dword_1AB828000, v20, v21, "%s: Received unexpected non-TokenGenerationError: %@", v23, 0x16u);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v24, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1AC5A6CD0](v24, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x1AC5A6CD0](v25, -1, -1);
      MEMORY[0x1AC5A6CD0](v23, -1, -1);
    }

    swift_willThrow();
  }

  v29 = *(v0 + 8);

  return v29();
}

{
  v32 = v0;

  v1 = *(v0 + 3728);
  *(v0 + 3376) = v1;
  MEMORY[0x1AC5A6AE0](v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 3448);
    v3 = *(v0 + 3440);

    outlined init with take of OneShotRequest(v2, v3, type metadata accessor for TokenGenerationError);
    if (one-time initialization token for inference != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 3440);
    v5 = *(v0 + 3432);
    v6 = *(v0 + 3408);
    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Log.inference);
    outlined init with copy of OneShotRequest(v4, v5, type metadata accessor for TokenGenerationError);
    outlined init with copy of InferenceRequestHandler(v6, v0 + 432);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    outlined destroy of InferenceRequestHandler(v6);
    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 3432);
    if (v10)
    {
      v12 = *(v0 + 3408);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v31[0] = v15;
      *v13 = 136315394;
      *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v12, *(v12 + 8), v31);
      *(v13 + 12) = 2112;
      lazy protocol witness table accessor for type OneShotRequest and conformance OneShotRequest(&lazy protocol witness table cache variable for type TokenGenerationError and conformance TokenGenerationError, type metadata accessor for TokenGenerationError, &protocol conformance descriptor for TokenGenerationError);
      swift_allocError();
      outlined init with copy of OneShotRequest(v11, v16, type metadata accessor for TokenGenerationError);
      v17 = _swift_stdlib_bridgeErrorToNSError();
      _s15TokenGeneration14OneShotRequestOWOhTm_0(v11, type metadata accessor for TokenGenerationError);
      *(v13 + 14) = v17;
      *v14 = v17;
      _os_log_impl(&dword_1AB828000, v8, v9, "%s: Request failed %@", v13, 0x16u);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v14, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1AC5A6CD0](v14, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x1AC5A6CD0](v15, -1, -1);
      MEMORY[0x1AC5A6CD0](v13, -1, -1);
    }

    else
    {

      _s15TokenGeneration14OneShotRequestOWOhTm_0(v11, type metadata accessor for TokenGenerationError);
    }

    v27 = *(v0 + 3440);
    type metadata accessor for InferenceError();
    lazy protocol witness table accessor for type OneShotRequest and conformance OneShotRequest(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, MEMORY[0x1E69B2638], MEMORY[0x1E69B2640]);
    swift_allocError();
    TokenGenerationError.toInferenceError()(v28);
    swift_willThrow();
    _s15TokenGeneration14OneShotRequestOWOhTm_0(v27, type metadata accessor for TokenGenerationError);
  }

  else
  {

    if (one-time initialization token for inference != -1)
    {
      swift_once();
    }

    v18 = *(v0 + 3408);
    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Log.inference);
    outlined init with copy of InferenceRequestHandler(v18, v0 + 224);
    MEMORY[0x1AC5A6AE0](v1);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    outlined destroy of InferenceRequestHandler(v18);

    if (os_log_type_enabled(v20, v21))
    {
      v22 = *(v0 + 3408);
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v31[0] = v25;
      *v23 = 136315394;
      *(v23 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v22, *(v22 + 8), v31);
      *(v23 + 12) = 2112;
      MEMORY[0x1AC5A6AE0](v1);
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 14) = v26;
      *v24 = v26;
      _os_log_impl(&dword_1AB828000, v20, v21, "%s: Received unexpected non-TokenGenerationError: %@", v23, 0x16u);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v24, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1AC5A6CD0](v24, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x1AC5A6CD0](v25, -1, -1);
      MEMORY[0x1AC5A6CD0](v23, -1, -1);
    }

    swift_willThrow();
  }

  v29 = *(v0 + 8);

  return v29();
}

{
  v32 = v0;
  _s15TokenGeneration14OneShotRequestOWOhTm_0(*(v0 + 3496), type metadata accessor for ClassifyPromptRequest);
  v1 = *(v0 + 3744);
  *(v0 + 3376) = v1;
  MEMORY[0x1AC5A6AE0](v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 3448);
    v3 = *(v0 + 3440);

    outlined init with take of OneShotRequest(v2, v3, type metadata accessor for TokenGenerationError);
    if (one-time initialization token for inference != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 3440);
    v5 = *(v0 + 3432);
    v6 = *(v0 + 3408);
    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Log.inference);
    outlined init with copy of OneShotRequest(v4, v5, type metadata accessor for TokenGenerationError);
    outlined init with copy of InferenceRequestHandler(v6, v0 + 432);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    outlined destroy of InferenceRequestHandler(v6);
    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 3432);
    if (v10)
    {
      v12 = *(v0 + 3408);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v31[0] = v15;
      *v13 = 136315394;
      *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v12, *(v12 + 8), v31);
      *(v13 + 12) = 2112;
      lazy protocol witness table accessor for type OneShotRequest and conformance OneShotRequest(&lazy protocol witness table cache variable for type TokenGenerationError and conformance TokenGenerationError, type metadata accessor for TokenGenerationError, &protocol conformance descriptor for TokenGenerationError);
      swift_allocError();
      outlined init with copy of OneShotRequest(v11, v16, type metadata accessor for TokenGenerationError);
      v17 = _swift_stdlib_bridgeErrorToNSError();
      _s15TokenGeneration14OneShotRequestOWOhTm_0(v11, type metadata accessor for TokenGenerationError);
      *(v13 + 14) = v17;
      *v14 = v17;
      _os_log_impl(&dword_1AB828000, v8, v9, "%s: Request failed %@", v13, 0x16u);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v14, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1AC5A6CD0](v14, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x1AC5A6CD0](v15, -1, -1);
      MEMORY[0x1AC5A6CD0](v13, -1, -1);
    }

    else
    {

      _s15TokenGeneration14OneShotRequestOWOhTm_0(v11, type metadata accessor for TokenGenerationError);
    }

    v27 = *(v0 + 3440);
    type metadata accessor for InferenceError();
    lazy protocol witness table accessor for type OneShotRequest and conformance OneShotRequest(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, MEMORY[0x1E69B2638], MEMORY[0x1E69B2640]);
    swift_allocError();
    TokenGenerationError.toInferenceError()(v28);
    swift_willThrow();
    _s15TokenGeneration14OneShotRequestOWOhTm_0(v27, type metadata accessor for TokenGenerationError);
  }

  else
  {

    if (one-time initialization token for inference != -1)
    {
      swift_once();
    }

    v18 = *(v0 + 3408);
    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Log.inference);
    outlined init with copy of InferenceRequestHandler(v18, v0 + 224);
    MEMORY[0x1AC5A6AE0](v1);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    outlined destroy of InferenceRequestHandler(v18);

    if (os_log_type_enabled(v20, v21))
    {
      v22 = *(v0 + 3408);
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v31[0] = v25;
      *v23 = 136315394;
      *(v23 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v22, *(v22 + 8), v31);
      *(v23 + 12) = 2112;
      MEMORY[0x1AC5A6AE0](v1);
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 14) = v26;
      *v24 = v26;
      _os_log_impl(&dword_1AB828000, v20, v21, "%s: Received unexpected non-TokenGenerationError: %@", v23, 0x16u);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v24, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1AC5A6CD0](v24, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x1AC5A6CD0](v25, -1, -1);
      MEMORY[0x1AC5A6CD0](v23, -1, -1);
    }

    swift_willThrow();
  }

  v29 = *(v0 + 8);

  return v29();
}

{
  v32 = v0;
  _s15TokenGeneration14OneShotRequestOWOhTm_0(*(v0 + 3464), type metadata accessor for ClassifyPromptTemplateRequest);
  v1 = *(v0 + 3760);
  *(v0 + 3376) = v1;
  MEMORY[0x1AC5A6AE0](v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 3448);
    v3 = *(v0 + 3440);

    outlined init with take of OneShotRequest(v2, v3, type metadata accessor for TokenGenerationError);
    if (one-time initialization token for inference != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 3440);
    v5 = *(v0 + 3432);
    v6 = *(v0 + 3408);
    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Log.inference);
    outlined init with copy of OneShotRequest(v4, v5, type metadata accessor for TokenGenerationError);
    outlined init with copy of InferenceRequestHandler(v6, v0 + 432);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    outlined destroy of InferenceRequestHandler(v6);
    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 3432);
    if (v10)
    {
      v12 = *(v0 + 3408);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v31[0] = v15;
      *v13 = 136315394;
      *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v12, *(v12 + 8), v31);
      *(v13 + 12) = 2112;
      lazy protocol witness table accessor for type OneShotRequest and conformance OneShotRequest(&lazy protocol witness table cache variable for type TokenGenerationError and conformance TokenGenerationError, type metadata accessor for TokenGenerationError, &protocol conformance descriptor for TokenGenerationError);
      swift_allocError();
      outlined init with copy of OneShotRequest(v11, v16, type metadata accessor for TokenGenerationError);
      v17 = _swift_stdlib_bridgeErrorToNSError();
      _s15TokenGeneration14OneShotRequestOWOhTm_0(v11, type metadata accessor for TokenGenerationError);
      *(v13 + 14) = v17;
      *v14 = v17;
      _os_log_impl(&dword_1AB828000, v8, v9, "%s: Request failed %@", v13, 0x16u);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v14, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1AC5A6CD0](v14, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x1AC5A6CD0](v15, -1, -1);
      MEMORY[0x1AC5A6CD0](v13, -1, -1);
    }

    else
    {

      _s15TokenGeneration14OneShotRequestOWOhTm_0(v11, type metadata accessor for TokenGenerationError);
    }

    v27 = *(v0 + 3440);
    type metadata accessor for InferenceError();
    lazy protocol witness table accessor for type OneShotRequest and conformance OneShotRequest(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, MEMORY[0x1E69B2638], MEMORY[0x1E69B2640]);
    swift_allocError();
    TokenGenerationError.toInferenceError()(v28);
    swift_willThrow();
    _s15TokenGeneration14OneShotRequestOWOhTm_0(v27, type metadata accessor for TokenGenerationError);
  }

  else
  {

    if (one-time initialization token for inference != -1)
    {
      swift_once();
    }

    v18 = *(v0 + 3408);
    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Log.inference);
    outlined init with copy of InferenceRequestHandler(v18, v0 + 224);
    MEMORY[0x1AC5A6AE0](v1);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    outlined destroy of InferenceRequestHandler(v18);

    if (os_log_type_enabled(v20, v21))
    {
      v22 = *(v0 + 3408);
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v31[0] = v25;
      *v23 = 136315394;
      *(v23 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v22, *(v22 + 8), v31);
      *(v23 + 12) = 2112;
      MEMORY[0x1AC5A6AE0](v1);
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 14) = v26;
      *v24 = v26;
      _os_log_impl(&dword_1AB828000, v20, v21, "%s: Received unexpected non-TokenGenerationError: %@", v23, 0x16u);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v24, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1AC5A6CD0](v24, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x1AC5A6CD0](v25, -1, -1);
      MEMORY[0x1AC5A6CD0](v23, -1, -1);
    }

    swift_willThrow();
  }

  v29 = *(v0 + 8);

  return v29();
}

{
  v32 = v0;
  _s15TokenGeneration14OneShotRequestOWOhTm_0(*(v0 + 3456), type metadata accessor for CompileAdapterRequest);
  v1 = *(v0 + 3776);
  *(v0 + 3376) = v1;
  MEMORY[0x1AC5A6AE0](v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 3448);
    v3 = *(v0 + 3440);

    outlined init with take of OneShotRequest(v2, v3, type metadata accessor for TokenGenerationError);
    if (one-time initialization token for inference != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 3440);
    v5 = *(v0 + 3432);
    v6 = *(v0 + 3408);
    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Log.inference);
    outlined init with copy of OneShotRequest(v4, v5, type metadata accessor for TokenGenerationError);
    outlined init with copy of InferenceRequestHandler(v6, v0 + 432);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    outlined destroy of InferenceRequestHandler(v6);
    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 3432);
    if (v10)
    {
      v12 = *(v0 + 3408);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v31[0] = v15;
      *v13 = 136315394;
      *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v12, *(v12 + 8), v31);
      *(v13 + 12) = 2112;
      lazy protocol witness table accessor for type OneShotRequest and conformance OneShotRequest(&lazy protocol witness table cache variable for type TokenGenerationError and conformance TokenGenerationError, type metadata accessor for TokenGenerationError, &protocol conformance descriptor for TokenGenerationError);
      swift_allocError();
      outlined init with copy of OneShotRequest(v11, v16, type metadata accessor for TokenGenerationError);
      v17 = _swift_stdlib_bridgeErrorToNSError();
      _s15TokenGeneration14OneShotRequestOWOhTm_0(v11, type metadata accessor for TokenGenerationError);
      *(v13 + 14) = v17;
      *v14 = v17;
      _os_log_impl(&dword_1AB828000, v8, v9, "%s: Request failed %@", v13, 0x16u);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v14, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1AC5A6CD0](v14, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x1AC5A6CD0](v15, -1, -1);
      MEMORY[0x1AC5A6CD0](v13, -1, -1);
    }

    else
    {

      _s15TokenGeneration14OneShotRequestOWOhTm_0(v11, type metadata accessor for TokenGenerationError);
    }

    v27 = *(v0 + 3440);
    type metadata accessor for InferenceError();
    lazy protocol witness table accessor for type OneShotRequest and conformance OneShotRequest(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, MEMORY[0x1E69B2638], MEMORY[0x1E69B2640]);
    swift_allocError();
    TokenGenerationError.toInferenceError()(v28);
    swift_willThrow();
    _s15TokenGeneration14OneShotRequestOWOhTm_0(v27, type metadata accessor for TokenGenerationError);
  }

  else
  {

    if (one-time initialization token for inference != -1)
    {
      swift_once();
    }

    v18 = *(v0 + 3408);
    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Log.inference);
    outlined init with copy of InferenceRequestHandler(v18, v0 + 224);
    MEMORY[0x1AC5A6AE0](v1);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    outlined destroy of InferenceRequestHandler(v18);

    if (os_log_type_enabled(v20, v21))
    {
      v22 = *(v0 + 3408);
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v31[0] = v25;
      *v23 = 136315394;
      *(v23 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*v22, *(v22 + 8), v31);
      *(v23 + 12) = 2112;
      MEMORY[0x1AC5A6AE0](v1);
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 14) = v26;
      *v24 = v26;
      _os_log_impl(&dword_1AB828000, v20, v21, "%s: Received unexpected non-TokenGenerationError: %@", v23, 0x16u);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v24, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x1AC5A6CD0](v24, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x1AC5A6CD0](v25, -1, -1);
      MEMORY[0x1AC5A6CD0](v23, -1, -1);
    }

    swift_willThrow();
  }

  v29 = *(v0 + 8);

  return v29();
}

uint64_t InferenceRequestHandler.handleStreamingRequest(data:configuration:)@<X0>(uint64_t a3@<X2>, void *a4@<X8>)
{
  v104 = a3;
  v105 = a4;
  v5 = type metadata accessor for CompletePromptTemplateRequest(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v91 = &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16AsyncMapSequenceVy15TokenGeneration18InstrumentedStreamVyAC23InferenceRequestHandlerV08ResponseG033_6CE5FDA809054AFDA0F170337ADF1236LLVy_AC014CompletePromptK7ElementVGG10Foundation4DataVGMd, &_ss16AsyncMapSequenceVy15TokenGeneration18InstrumentedStreamVyAC23InferenceRequestHandlerV08ResponseG033_6CE5FDA809054AFDA0F170337ADF1236LLVy_AC014CompletePromptK7ElementVGG10Foundation4DataVGMR);
  v102 = *(v99 - 8);
  v100 = *(v102 + 64);
  MEMORY[0x1EEE9AC00](v99);
  v101 = &v86 - v7;
  v8 = type metadata accessor for CompletePromptRequest(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v90 = &v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for InferenceProviderRequestConfiguration();
  v97 = *(v10 - 8);
  v98 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v95 = v11;
  v96 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for StreamingRequest(0);
  v92 = *(v12 - 8);
  v13 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v12);
  MEMORY[0x1EEE9AC00](v14);
  v93 = &v86 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v86 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v106 = &v86 - v20;
  v21 = v4[11];
  v118 = v4[10];
  v119 = v21;
  v120 = v4[12];
  v22 = v4[7];
  v114 = v4[6];
  v115 = v22;
  v23 = v4[9];
  v116 = v4[8];
  v117 = v23;
  v24 = v4[3];
  v113[2] = v4[2];
  v113[3] = v24;
  v25 = v4[5];
  v113[4] = v4[4];
  v113[5] = v25;
  v26 = v4[1];
  v113[0] = *v4;
  v113[1] = v26;
  if (one-time initialization token for inference != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  v28 = __swift_project_value_buffer(v27, static Log.inference);
  outlined init with copy of InferenceRequestHandler(v113, &v107);
  v94 = v28;
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();
  outlined destroy of InferenceRequestHandler(v113);
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v103 = v12;
    v88 = v32;
    v107 = v32;
    *v31 = 136315394;
    v89 = v18;
    v33 = *(&v113[0] + 1);
    v34 = *&v113[0];

    v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v33, &v107);

    *(v31 + 4) = v35;
    v18 = v89;
    *(v31 + 12) = 2080;
    *(v31 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002BLL, 0x80000001ABA40EA0, &v107);
    _os_log_impl(&dword_1AB828000, v29, v30, "%s:%s", v31, 0x16u);
    v36 = v88;
    swift_arrayDestroy();
    v37 = v36;
    v12 = v103;
    MEMORY[0x1AC5A6CD0](v37, -1, -1);
    MEMORY[0x1AC5A6CD0](v31, -1, -1);
  }

  if (one-time initialization token for decoder != -1)
  {
    swift_once();
  }

  lazy protocol witness table accessor for type OneShotRequest and conformance OneShotRequest(&lazy protocol witness table cache variable for type StreamingRequest and conformance StreamingRequest, type metadata accessor for StreamingRequest, &protocol conformance descriptor for StreamingRequest);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  v87 = type metadata accessor for StreamingRequest;
  v38 = v106;
  outlined init with take of OneShotRequest(v18, v106, type metadata accessor for StreamingRequest);
  v39 = v113[0];
  v40 = v97;
  v88 = type metadata accessor for StreamingRequest;
  v41 = v93;
  outlined init with copy of OneShotRequest(v38, v93, type metadata accessor for StreamingRequest);
  v42 = *(v40 + 16);
  v43 = v96;
  v89 = &v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = v98;
  v42(v96, v104, v98);
  v45 = *(v92 + 80);
  v103 = v12;
  v46 = (v45 + 32) & ~v45;
  v47 = (v13 + *(v40 + 80) + v46) & ~*(v40 + 80);
  v48 = swift_allocObject();
  v92 = v39;
  *(v48 + 16) = v39;
  v95 = *(&v39 + 1);
  outlined init with take of OneShotRequest(v41, v48 + v46, v87);
  v49 = *(v40 + 32);
  v97 = v48;
  v50 = v89;
  v49(v48 + v47, v43, v44);
  outlined init with copy of OneShotRequest(v106, v50, v88);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v52 = v90;
    outlined init with take of OneShotRequest(v50, v90, type metadata accessor for CompletePromptRequest);
    outlined init with copy of InferenceRequestHandler(v113, &v107);
    v53 = v95;

    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.default.getter();
    outlined destroy of InferenceRequestHandler(v113);
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v107 = v57;
      *v56 = 136315394;
      *(v56 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v92, v53, &v107);
      *(v56 + 12) = 2080;
      *(v56 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002BLL, 0x80000001ABA40EA0, &v107);
      _os_log_impl(&dword_1AB828000, v54, v55, "%s:%s:completePrompt", v56, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1AC5A6CD0](v57, -1, -1);
      MEMORY[0x1AC5A6CD0](v56, -1, -1);
    }

    v58 = v114;
    v59 = v97;

    v107 = v58(v52, v104);
    v108 = v60;
    v109 = partial apply for closure #2 in InferenceRequestHandler.handleStreamingRequest(data:configuration:);
    v110 = v59;
    v111 = closure #1 in InstrumentedStream.init<>(using:on:);
    v112 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration18InstrumentedStreamVyAA23InferenceRequestHandlerV08ResponseD033_6CE5FDA809054AFDA0F170337ADF1236LLVy_AA014CompletePromptH7ElementVGGMd, &_s15TokenGeneration18InstrumentedStreamVyAA23InferenceRequestHandlerV08ResponseD033_6CE5FDA809054AFDA0F170337ADF1236LLVy_AA014CompletePromptH7ElementVGGMR);
    lazy protocol witness table accessor for type TokenStream<String> and conformance TokenStream<A>(&lazy protocol witness table cache variable for type InstrumentedStream<InferenceRequestHandler.ResponseStream<CompletePromptResponseElement>> and conformance InstrumentedStream<A>, &_s15TokenGeneration18InstrumentedStreamVyAA23InferenceRequestHandlerV08ResponseD033_6CE5FDA809054AFDA0F170337ADF1236LLVy_AA014CompletePromptH7ElementVGGMd, &_s15TokenGeneration18InstrumentedStreamVyAA23InferenceRequestHandlerV08ResponseD033_6CE5FDA809054AFDA0F170337ADF1236LLVy_AA014CompletePromptH7ElementVGGMR, &protocol conformance descriptor for InstrumentedStream<A>);
    v61 = v101;
    AsyncMapSequence.init(_:transform:)();
    v62 = v102;
    v63 = (*(v102 + 80) + 16) & ~*(v102 + 80);
    v64 = swift_allocObject();
    (*(v62 + 32))(v64 + v63, v61, v99);
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration23InferenceRequestHandlerV14ResponseStream33_6CE5FDA809054AFDA0F170337ADF1236LLVy_10Foundation4DataVGMd, &_s15TokenGeneration23InferenceRequestHandlerV14ResponseStream33_6CE5FDA809054AFDA0F170337ADF1236LLVy_10Foundation4DataVGMR);
    v66 = v105;
    v105[3] = v65;
    v66[4] = lazy protocol witness table accessor for type TokenStream<String> and conformance TokenStream<A>(&lazy protocol witness table cache variable for type InferenceRequestHandler.ResponseStream<Data> and conformance InferenceRequestHandler.ResponseStream<A>, &_s15TokenGeneration23InferenceRequestHandlerV14ResponseStream33_6CE5FDA809054AFDA0F170337ADF1236LLVy_10Foundation4DataVGMd, &_s15TokenGeneration23InferenceRequestHandlerV14ResponseStream33_6CE5FDA809054AFDA0F170337ADF1236LLVy_10Foundation4DataVGMR, &protocol conformance descriptor for InferenceRequestHandler.ResponseStream<A>);

    *v66 = closure #1 in InferenceRequestHandler.ResponseStream.init<A>(_:)specialized partial apply;
    v66[1] = v64;
    v67 = type metadata accessor for CompletePromptRequest;
LABEL_15:
    _s15TokenGeneration14OneShotRequestOWOhTm_0(v52, v67);
    return _s15TokenGeneration14OneShotRequestOWOhTm_0(v106, type metadata accessor for StreamingRequest);
  }

  v68 = v95;
  if (EnumCaseMultiPayload == 1)
  {
    v52 = v91;
    outlined init with take of OneShotRequest(v50, v91, type metadata accessor for CompletePromptTemplateRequest);
    outlined init with copy of InferenceRequestHandler(v113, &v107);

    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.default.getter();
    outlined destroy of InferenceRequestHandler(v113);
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v107 = v72;
      *v71 = 136315394;
      *(v71 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v92, v68, &v107);
      *(v71 + 12) = 2080;
      *(v71 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002BLL, 0x80000001ABA40EA0, &v107);
      _os_log_impl(&dword_1AB828000, v69, v70, "%s:%s:completePromptTemplate", v71, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1AC5A6CD0](v72, -1, -1);
      MEMORY[0x1AC5A6CD0](v71, -1, -1);
    }

    v73 = v115;
    v74 = v97;

    v107 = v73(v52, v104);
    v108 = v75;
    v109 = partial apply for closure #2 in InferenceRequestHandler.handleStreamingRequest(data:configuration:);
    v110 = v74;
    v111 = closure #1 in InstrumentedStream.init<>(using:on:);
    v112 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration18InstrumentedStreamVyAA23InferenceRequestHandlerV08ResponseD033_6CE5FDA809054AFDA0F170337ADF1236LLVy_AA014CompletePromptH7ElementVGGMd, &_s15TokenGeneration18InstrumentedStreamVyAA23InferenceRequestHandlerV08ResponseD033_6CE5FDA809054AFDA0F170337ADF1236LLVy_AA014CompletePromptH7ElementVGGMR);
    lazy protocol witness table accessor for type TokenStream<String> and conformance TokenStream<A>(&lazy protocol witness table cache variable for type InstrumentedStream<InferenceRequestHandler.ResponseStream<CompletePromptResponseElement>> and conformance InstrumentedStream<A>, &_s15TokenGeneration18InstrumentedStreamVyAA23InferenceRequestHandlerV08ResponseD033_6CE5FDA809054AFDA0F170337ADF1236LLVy_AA014CompletePromptH7ElementVGGMd, &_s15TokenGeneration18InstrumentedStreamVyAA23InferenceRequestHandlerV08ResponseD033_6CE5FDA809054AFDA0F170337ADF1236LLVy_AA014CompletePromptH7ElementVGGMR, &protocol conformance descriptor for InstrumentedStream<A>);
    v76 = v101;
    AsyncMapSequence.init(_:transform:)();
    v77 = v102;
    v78 = (*(v102 + 80) + 16) & ~*(v102 + 80);
    v79 = swift_allocObject();
    (*(v77 + 32))(v79 + v78, v76, v99);
    v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration23InferenceRequestHandlerV14ResponseStream33_6CE5FDA809054AFDA0F170337ADF1236LLVy_10Foundation4DataVGMd, &_s15TokenGeneration23InferenceRequestHandlerV14ResponseStream33_6CE5FDA809054AFDA0F170337ADF1236LLVy_10Foundation4DataVGMR);
    v81 = v105;
    v105[3] = v80;
    v81[4] = lazy protocol witness table accessor for type TokenStream<String> and conformance TokenStream<A>(&lazy protocol witness table cache variable for type InferenceRequestHandler.ResponseStream<Data> and conformance InferenceRequestHandler.ResponseStream<A>, &_s15TokenGeneration23InferenceRequestHandlerV14ResponseStream33_6CE5FDA809054AFDA0F170337ADF1236LLVy_10Foundation4DataVGMd, &_s15TokenGeneration23InferenceRequestHandlerV14ResponseStream33_6CE5FDA809054AFDA0F170337ADF1236LLVy_10Foundation4DataVGMR, &protocol conformance descriptor for InferenceRequestHandler.ResponseStream<A>);

    *v81 = partial apply for specialized closure #1 in InferenceRequestHandler.ResponseStream.init<A>(_:);
    v81[1] = v79;
    v67 = type metadata accessor for CompletePromptTemplateRequest;
    goto LABEL_15;
  }

  v83 = Logger.logObject.getter();
  v84 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v83, v84))
  {
    v85 = swift_slowAlloc();
    *v85 = 0;
    _os_log_impl(&dword_1AB828000, v83, v84, "Incorrect streaming request handler used when registering document. Please use the one which supports the clientData type.", v85, 2u);
    MEMORY[0x1AC5A6CD0](v85, -1, -1);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t closure #1 in InferenceRequestHandler.handleStreamingRequest(data:configuration:)(uint64_t a1, __n128 a2)
{
  v2[6] = a1;
  v3 = type metadata accessor for InferenceError();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v4 = type metadata accessor for InferenceError.Context();
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in InferenceRequestHandler.handleStreamingRequest(data:configuration:), 0, 0);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable @async () -> (@error @owned Error)(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = thunk for @escaping @callee_guaranteed @Sendable @async () -> (@error @owned Error);

  return v5();
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable @async () -> (@error @owned Error)()
{
  v2 = *v1;
  v3 = *v1;

  if (!v0)
  {
    **(v2 + 16) = 0;
  }

  v4 = *(v3 + 8);

  return v4();
}

uint64_t closure #3 in InferenceRequestHandler.handleStreamingRequest(data:configuration:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](closure #3 in InferenceRequestHandler.handleStreamingRequest(data:configuration:), 0, 0);
}

uint64_t closure #3 in InferenceRequestHandler.handleStreamingRequest(data:configuration:)()
{
  if (one-time initialization token for encoder != -1)
  {
    swift_once();
  }

  type metadata accessor for CompletePromptResponseElement(0);
  lazy protocol witness table accessor for type OneShotRequest and conformance OneShotRequest(&lazy protocol witness table cache variable for type CompletePromptResponseElement and conformance CompletePromptResponseElement, type metadata accessor for CompletePromptResponseElement, &protocol conformance descriptor for CompletePromptResponseElement);
  v1 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v2 = *(v0 + 16);
  *v2 = v1;
  v2[1] = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t closure #4 in InferenceRequestHandler.handleStreamingRequest(data:configuration:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](closure #4 in InferenceRequestHandler.handleStreamingRequest(data:configuration:), 0, 0);
}

uint64_t closure #4 in InferenceRequestHandler.handleStreamingRequest(data:configuration:)()
{
  if (one-time initialization token for encoder != -1)
  {
    swift_once();
  }

  type metadata accessor for CompletePromptResponseElement(0);
  lazy protocol witness table accessor for type OneShotRequest and conformance OneShotRequest(&lazy protocol witness table cache variable for type CompletePromptResponseElement and conformance CompletePromptResponseElement, type metadata accessor for CompletePromptResponseElement, &protocol conformance descriptor for CompletePromptResponseElement);
  v1 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v2 = *(v0 + 16);
  *v2 = v1;
  v2[1] = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t InferenceRequestHandler.handleStreamingRequest(clientData:configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v164 = a2;
  v165 = a3;
  v177 = type metadata accessor for URL();
  v147 = *(v177 - 8);
  MEMORY[0x1EEE9AC00](v177);
  v179 = &v142 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = type metadata accessor for DocumentResource();
  v178 = *(v148 - 8);
  MEMORY[0x1EEE9AC00](v148);
  v156 = &v142 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v176 = &v142 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16AsyncMapSequenceVy15TokenGeneration18InstrumentedStreamVyAC23InferenceRequestHandlerV08ResponseG033_6CE5FDA809054AFDA0F170337ADF1236LLVy_26GenerativeModelsFoundation20DocumentRegistrationVGG20ModelManagerServices10ClientDataVGMd, &_ss16AsyncMapSequenceVy15TokenGeneration18InstrumentedStreamVyAC23InferenceRequestHandlerV08ResponseG033_6CE5FDA809054AFDA0F170337ADF1236LLVy_26GenerativeModelsFoundation20DocumentRegistrationVGG20ModelManagerServices10ClientDataVGMR);
  v152 = *(v9 - 8);
  v150 = *(v152 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v151 = &v142 - v10;
  v11 = type metadata accessor for CompletePromptTemplateRequest(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v155 = &v142 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16AsyncMapSequenceVy15TokenGeneration18InstrumentedStreamVyAC23InferenceRequestHandlerV08ResponseG033_6CE5FDA809054AFDA0F170337ADF1236LLVy_AC014CompletePromptK7ElementVGG20ModelManagerServices10ClientDataVGMd, &_ss16AsyncMapSequenceVy15TokenGeneration18InstrumentedStreamVyAC23InferenceRequestHandlerV08ResponseG033_6CE5FDA809054AFDA0F170337ADF1236LLVy_AC014CompletePromptK7ElementVGG20ModelManagerServices10ClientDataVGMR);
  v160 = *(v13 - 8);
  v161 = v13;
  v158 = *(v160 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v159 = &v142 - v14;
  v15 = type metadata accessor for CompletePromptRequest(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v154 = &v142 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = type metadata accessor for InferenceProviderRequestConfiguration();
  v169 = *(v173 - 8);
  MEMORY[0x1EEE9AC00](v173);
  v171 = v17;
  v172 = &v142 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for XPCDictionary();
  v145 = *(v18 - 1);
  v146 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v142 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s3XPC16XPCCodableObjectVSgMd, &_s3XPC16XPCCodableObjectVSgMR);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v153 = &v142 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v142 - v24;
  v26 = type metadata accessor for XPCCodableObject();
  v162 = *(v26 - 8);
  v163 = v26;
  MEMORY[0x1EEE9AC00](v26);
  v157 = &v142 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v142 - v29;
  v175 = type metadata accessor for StreamingRequest(0);
  v168 = *(v175 - 1);
  v31 = *(v168 + 64);
  MEMORY[0x1EEE9AC00](v175);
  v170 = (&v142 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v32);
  v167 = (&v142 - v33);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v142 - v35;
  MEMORY[0x1EEE9AC00](v37);
  v166 = &v142 - v38;
  v39 = v3[11];
  v195 = v3[10];
  v196 = v39;
  v197 = v3[12];
  v40 = v3[7];
  v191 = v3[6];
  v192 = v40;
  v41 = v3[9];
  v193 = v3[8];
  v194 = v41;
  v42 = v3[3];
  v190[2] = v3[2];
  v190[3] = v42;
  v43 = v3[5];
  v190[4] = v3[4];
  v190[5] = v43;
  v44 = v3[1];
  v190[0] = *v3;
  v190[1] = v44;
  v174 = a1;
  v45 = ClientData.data.getter();
  if (v46 >> 60 == 15)
  {
    __break(1u);
    while (1)
    {
LABEL_40:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
LABEL_41:
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v25, &_s3XPC16XPCCodableObjectVSgMd, &_s3XPC16XPCCodableObjectVSgMR);
    }
  }

  v47 = v45;
  v48 = v46;
  v149 = v9;
  if (one-time initialization token for decoder != -1)
  {
    goto LABEL_38;
  }

  while (1)
  {
    lazy protocol witness table accessor for type OneShotRequest and conformance OneShotRequest(&lazy protocol witness table cache variable for type StreamingRequest and conformance StreamingRequest, type metadata accessor for StreamingRequest, &protocol conformance descriptor for StreamingRequest);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    outlined consume of Data?(v47, v48);
    ClientData.xpcData.getter();
    v50 = v162;
    v49 = v163;
    v51 = v162 + 48;
    v143 = *(v162 + 48);
    v52 = v143(v25, 1, v163);
    v144 = v51;
    if (v52 == 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v25, &_s3XPC16XPCCodableObjectVSgMd, &_s3XPC16XPCCodableObjectVSgMR);
    }

    else
    {
      (*(v50 + 32))(v30, v25, v49);
      v53 = v49;
      XPCCodableObject.copyUnderlyingXPCObject()();
      v54 = MEMORY[0x1AC5A6DF0]();
      if (v54 == XPC_TYPE_DICTIONARY.getter())
      {
        swift_unknownObjectRetain();
        XPCDictionary.init(_:)();
        StreamingRequest.revive(withXpcData:)(v20);
        swift_unknownObjectRelease();
        (*(v145 + 1))(v20, v146);
        (*(v50 + 8))(v30, v53);
      }

      else
      {
        (*(v50 + 8))(v30, v53);
        swift_unknownObjectRelease();
      }
    }

    v145 = type metadata accessor for StreamingRequest;
    v55 = v166;
    outlined init with take of OneShotRequest(v36, v166, type metadata accessor for StreamingRequest);
    v56 = v190[0];
    v146 = type metadata accessor for StreamingRequest;
    v20 = v167;
    outlined init with copy of OneShotRequest(v55, v167, type metadata accessor for StreamingRequest);
    v57 = v169;
    v59 = v172;
    v58 = v173;
    (*(v169 + 16))(v172, v164, v173);
    v60 = (*(v168 + 80) + 32) & ~*(v168 + 80);
    v61 = (v31 + *(v57 + 80) + v60) & ~*(v57 + 80);
    v62 = swift_allocObject();
    v168 = v56;
    *(v62 + 16) = v56;
    v171 = *(&v56 + 1);
    outlined init with take of OneShotRequest(v20, v62 + v60, v145);
    v63 = *(v57 + 32);
    v145 = v62;
    v63(v62 + v61, v59, v58);
    v64 = v170;
    outlined init with copy of OneShotRequest(v166, v170, v146);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (!EnumCaseMultiPayload)
    {
      v86 = v154;
      outlined init with take of OneShotRequest(v64, v154, type metadata accessor for CompletePromptRequest);
      v87 = one-time initialization token for inference;
      v88 = v171;

      if (v87 != -1)
      {
        swift_once();
      }

      v89 = type metadata accessor for Logger();
      __swift_project_value_buffer(v89, static Log.inference);
      outlined init with copy of InferenceRequestHandler(v190, &v182);
      v90 = Logger.logObject.getter();
      v91 = static os_log_type_t.default.getter();
      outlined destroy of InferenceRequestHandler(v190);
      v92 = os_log_type_enabled(v90, v91);
      v93 = v164;
      if (v92)
      {
        v94 = swift_slowAlloc();
        v95 = swift_slowAlloc();
        *&v182 = v95;
        *v94 = 136315394;
        *(v94 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v168, v88, &v182);
        *(v94 + 12) = 2080;
        *(v94 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000031, 0x80000001ABA40F50, &v182);
        _os_log_impl(&dword_1AB828000, v90, v91, "%s:%s:completePrompt", v94, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1AC5A6CD0](v95, -1, -1);
        MEMORY[0x1AC5A6CD0](v94, -1, -1);
      }

      v96 = v191;
      v97 = v145;

      *&v182 = v96(v86, v93);
      *(&v182 + 1) = v98;
      v183._countAndFlagsBits = partial apply for closure #2 in InferenceRequestHandler.handleStreamingRequest(clientData:configuration:);
      v183._object = v97;
      v184._countAndFlagsBits = closure #1 in InstrumentedStream.init<>(using:on:);
      v184._object = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration18InstrumentedStreamVyAA23InferenceRequestHandlerV08ResponseD033_6CE5FDA809054AFDA0F170337ADF1236LLVy_AA014CompletePromptH7ElementVGGMd, &_s15TokenGeneration18InstrumentedStreamVyAA23InferenceRequestHandlerV08ResponseD033_6CE5FDA809054AFDA0F170337ADF1236LLVy_AA014CompletePromptH7ElementVGGMR);
      type metadata accessor for ClientData();
      lazy protocol witness table accessor for type TokenStream<String> and conformance TokenStream<A>(&lazy protocol witness table cache variable for type InstrumentedStream<InferenceRequestHandler.ResponseStream<CompletePromptResponseElement>> and conformance InstrumentedStream<A>, &_s15TokenGeneration18InstrumentedStreamVyAA23InferenceRequestHandlerV08ResponseD033_6CE5FDA809054AFDA0F170337ADF1236LLVy_AA014CompletePromptH7ElementVGGMd, &_s15TokenGeneration18InstrumentedStreamVyAA23InferenceRequestHandlerV08ResponseD033_6CE5FDA809054AFDA0F170337ADF1236LLVy_AA014CompletePromptH7ElementVGGMR, &protocol conformance descriptor for InstrumentedStream<A>);
      v99 = v159;
      AsyncMapSequence.init(_:transform:)();
      v100 = v160;
      v101 = (*(v160 + 80) + 16) & ~*(v160 + 80);
      v102 = swift_allocObject();
      (*(v100 + 32))(v102 + v101, v99, v161);
      v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration23InferenceRequestHandlerV14ResponseStream33_6CE5FDA809054AFDA0F170337ADF1236LLVy_20ModelManagerServices10ClientDataVGMd, &_s15TokenGeneration23InferenceRequestHandlerV14ResponseStream33_6CE5FDA809054AFDA0F170337ADF1236LLVy_20ModelManagerServices10ClientDataVGMR);
      v104 = v165;
      v165[3] = v103;
      v104[4] = lazy protocol witness table accessor for type TokenStream<String> and conformance TokenStream<A>(&lazy protocol witness table cache variable for type InferenceRequestHandler.ResponseStream<ClientData> and conformance InferenceRequestHandler.ResponseStream<A>, &_s15TokenGeneration23InferenceRequestHandlerV14ResponseStream33_6CE5FDA809054AFDA0F170337ADF1236LLVy_20ModelManagerServices10ClientDataVGMd, &_s15TokenGeneration23InferenceRequestHandlerV14ResponseStream33_6CE5FDA809054AFDA0F170337ADF1236LLVy_20ModelManagerServices10ClientDataVGMR, &protocol conformance descriptor for InferenceRequestHandler.ResponseStream<A>);

      *v104 = closure #1 in InferenceRequestHandler.ResponseStream.init<A>(_:)specialized partial apply;
      v104[1] = v102;
      v84 = type metadata accessor for CompletePromptRequest;
      v85 = v86;
      goto LABEL_20;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v66 = v155;
      outlined init with take of OneShotRequest(v64, v155, type metadata accessor for CompletePromptTemplateRequest);
      v67 = one-time initialization token for inference;
      v68 = v171;

      v69 = v164;
      if (v67 != -1)
      {
        swift_once();
      }

      v70 = type metadata accessor for Logger();
      __swift_project_value_buffer(v70, static Log.inference);
      outlined init with copy of InferenceRequestHandler(v190, &v182);
      v71 = Logger.logObject.getter();
      v72 = static os_log_type_t.default.getter();
      outlined destroy of InferenceRequestHandler(v190);
      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        *&v182 = v74;
        *v73 = 136315394;
        *(v73 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v168, v68, &v182);
        *(v73 + 12) = 2080;
        *(v73 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000031, 0x80000001ABA40F50, &v182);
        _os_log_impl(&dword_1AB828000, v71, v72, "%s:%s:completePromptTemplate", v73, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1AC5A6CD0](v74, -1, -1);
        MEMORY[0x1AC5A6CD0](v73, -1, -1);
      }

      v75 = v192;
      v76 = v145;

      *&v182 = v75(v66, v69);
      *(&v182 + 1) = v77;
      v183._countAndFlagsBits = partial apply for closure #2 in InferenceRequestHandler.handleStreamingRequest(clientData:configuration:);
      v183._object = v76;
      v184._countAndFlagsBits = closure #1 in InstrumentedStream.init<>(using:on:);
      v184._object = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration18InstrumentedStreamVyAA23InferenceRequestHandlerV08ResponseD033_6CE5FDA809054AFDA0F170337ADF1236LLVy_AA014CompletePromptH7ElementVGGMd, &_s15TokenGeneration18InstrumentedStreamVyAA23InferenceRequestHandlerV08ResponseD033_6CE5FDA809054AFDA0F170337ADF1236LLVy_AA014CompletePromptH7ElementVGGMR);
      type metadata accessor for ClientData();
      lazy protocol witness table accessor for type TokenStream<String> and conformance TokenStream<A>(&lazy protocol witness table cache variable for type InstrumentedStream<InferenceRequestHandler.ResponseStream<CompletePromptResponseElement>> and conformance InstrumentedStream<A>, &_s15TokenGeneration18InstrumentedStreamVyAA23InferenceRequestHandlerV08ResponseD033_6CE5FDA809054AFDA0F170337ADF1236LLVy_AA014CompletePromptH7ElementVGGMd, &_s15TokenGeneration18InstrumentedStreamVyAA23InferenceRequestHandlerV08ResponseD033_6CE5FDA809054AFDA0F170337ADF1236LLVy_AA014CompletePromptH7ElementVGGMR, &protocol conformance descriptor for InstrumentedStream<A>);
      v78 = v159;
      AsyncMapSequence.init(_:transform:)();
      v79 = v160;
      v80 = (*(v160 + 80) + 16) & ~*(v160 + 80);
      v81 = swift_allocObject();
      (*(v79 + 32))(v81 + v80, v78, v161);
      v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration23InferenceRequestHandlerV14ResponseStream33_6CE5FDA809054AFDA0F170337ADF1236LLVy_20ModelManagerServices10ClientDataVGMd, &_s15TokenGeneration23InferenceRequestHandlerV14ResponseStream33_6CE5FDA809054AFDA0F170337ADF1236LLVy_20ModelManagerServices10ClientDataVGMR);
      v83 = v165;
      v165[3] = v82;
      v83[4] = lazy protocol witness table accessor for type TokenStream<String> and conformance TokenStream<A>(&lazy protocol witness table cache variable for type InferenceRequestHandler.ResponseStream<ClientData> and conformance InferenceRequestHandler.ResponseStream<A>, &_s15TokenGeneration23InferenceRequestHandlerV14ResponseStream33_6CE5FDA809054AFDA0F170337ADF1236LLVy_20ModelManagerServices10ClientDataVGMd, &_s15TokenGeneration23InferenceRequestHandlerV14ResponseStream33_6CE5FDA809054AFDA0F170337ADF1236LLVy_20ModelManagerServices10ClientDataVGMR, &protocol conformance descriptor for InferenceRequestHandler.ResponseStream<A>);

      *v83 = partial apply for specialized closure #1 in InferenceRequestHandler.ResponseStream.init<A>(_:);
      v83[1] = v81;
      v84 = type metadata accessor for CompletePromptTemplateRequest;
      v85 = v66;
LABEL_20:
      _s15TokenGeneration14OneShotRequestOWOhTm_0(v85, v84);
      return _s15TokenGeneration14OneShotRequestOWOhTm_0(v166, type metadata accessor for StreamingRequest);
    }

    v105 = v64[1];
    v186 = *v64;
    v187 = v105;
    v106 = v64[3];
    v188 = v64[2];
    v189 = v106;
    v107 = one-time initialization token for inference;
    v108 = v171;

    if (v107 != -1)
    {
      swift_once();
    }

    v109 = type metadata accessor for Logger();
    __swift_project_value_buffer(v109, static Log.inference);
    outlined init with copy of InferenceRequestHandler(v190, &v182);
    v110 = Logger.logObject.getter();
    v111 = static os_log_type_t.default.getter();
    outlined destroy of InferenceRequestHandler(v190);
    v112 = os_log_type_enabled(v110, v111);
    v48 = v179;
    v47 = v144;
    if (v112)
    {
      v113 = swift_slowAlloc();
      v114 = swift_slowAlloc();
      *&v182 = v114;
      *v113 = 136315394;
      *(v113 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v168, v108, &v182);
      *(v113 + 12) = 2080;
      *(v113 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000031, 0x80000001ABA40F50, &v182);
      _os_log_impl(&dword_1AB828000, v110, v111, "%s:%s:registerDocument", v113, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1AC5A6CD0](v114, -1, -1);
      MEMORY[0x1AC5A6CD0](v113, -1, -1);
    }

    v36 = v156;
    v25 = v153;
    ClientData.xpcData.getter();
    v115 = v163;
    if (v143(v25, 1, v163) == 1)
    {
      goto LABEL_41;
    }

    (*(v162 + 32))(v157, v25, v115);
    v175 = XPCCodableObject.copyUnderlyingXPCObject()();
    v182 = v186;
    v183 = v187;
    v184 = v188;
    v185 = v189;
    v116 = RegisterDocumentRequest.documents.getter();
    v25 = *(v116 + 16);
    if (!v25)
    {
      break;
    }

    v181._documents._rawValue = MEMORY[0x1E69E7CC0];
    v117 = v116;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v25, 0);
    v118 = v117;
    v31 = 0;
    v172 = ((*(v178 + 80) + 32) & ~*(v178 + 80));
    v173 = v25;
    v171 = &v172[v117];
    rawValue = v181._documents._rawValue;
    v30 = v148;
    v169 = v147 + 8;
    v170 = (v178 + 16);
    v167 = (v178 + 32);
    v168 = v178 + 8;
    v174 = v118;
    while (v31 < *(v118 + 16))
    {
      v20 = *(v178 + 72);
      (*(v178 + 16))(v36, &v171[v20 * v31], v30);
      DocumentResource.url.getter();
      URL.path(percentEncoded:)(1);
      (*v169)(v48, v177);
      v120 = String.utf8CString.getter();

      v121 = xpc_dictionary_get_value(v175, (v120 + 32));

      if (!v121)
      {
        goto LABEL_40;
      }

      xpc_fd_dup(v121);
      DocumentResource.url.getter();
      DocumentResource.metadata.getter();
      v122 = v176;
      DocumentResource.init(_:_:_:)();
      swift_unknownObjectRelease();
      (*v168)(v36, v30);
      v123 = rawValue;
      v181._documents._rawValue = rawValue;
      v125 = rawValue[2];
      v124 = rawValue[3];
      v47 = v125 + 1;
      if (v125 >= v124 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v124 > 1), v125 + 1, 1);
        v30 = v148;
        v123 = v181._documents._rawValue;
      }

      ++v31;
      *(v123 + 2) = v47;
      rawValue = v123;
      (*v167)(&v172[v123 + v125 * v20], v122, v30);
      v25 = v173;
      v118 = v174;
      v48 = v179;
      if (v173 == v31)
      {

        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_38:
    swift_once();
  }

  rawValue = MEMORY[0x1E69E7CC0];
LABEL_35:
  v126 = *(&v186 + 1);
  v127 = v187;
  v128 = v188;
  v129 = v189;

  outlined destroy of RegisterDocumentRequest(&v186);
  v180._documents._rawValue = v126;
  v180._metadata.invocationIdentifier = v127;
  v180._metadata.functionIdentifier = v128;
  v180._metadata.clientRequestIdentifier = v129;
  RegisterDocumentRequest.init(documents:metadata:)(&v181, rawValue, &v180);
  v130 = v193;
  v180 = v181;
  v131 = v145;

  v132 = v130(&v180, v164);
  v134 = v133;
  outlined destroy of RegisterDocumentRequest(&v181);
  v180._documents._rawValue = v132;
  v180._metadata.invocationIdentifier._countAndFlagsBits = v134;
  v180._metadata.invocationIdentifier._object = partial apply for closure #2 in InferenceRequestHandler.handleStreamingRequest(clientData:configuration:);
  v180._metadata.functionIdentifier._countAndFlagsBits = v131;
  *&v180._metadata.functionIdentifier._object = 0uLL;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration18InstrumentedStreamVyAA23InferenceRequestHandlerV08ResponseD033_6CE5FDA809054AFDA0F170337ADF1236LLVy_26GenerativeModelsFoundation20DocumentRegistrationVGGMd, &_s15TokenGeneration18InstrumentedStreamVyAA23InferenceRequestHandlerV08ResponseD033_6CE5FDA809054AFDA0F170337ADF1236LLVy_26GenerativeModelsFoundation20DocumentRegistrationVGGMR);
  type metadata accessor for ClientData();
  lazy protocol witness table accessor for type TokenStream<String> and conformance TokenStream<A>(&lazy protocol witness table cache variable for type InstrumentedStream<InferenceRequestHandler.ResponseStream<DocumentRegistration>> and conformance InstrumentedStream<A>, &_s15TokenGeneration18InstrumentedStreamVyAA23InferenceRequestHandlerV08ResponseD033_6CE5FDA809054AFDA0F170337ADF1236LLVy_26GenerativeModelsFoundation20DocumentRegistrationVGGMd, &_s15TokenGeneration18InstrumentedStreamVyAA23InferenceRequestHandlerV08ResponseD033_6CE5FDA809054AFDA0F170337ADF1236LLVy_26GenerativeModelsFoundation20DocumentRegistrationVGGMR, &protocol conformance descriptor for InstrumentedStream<A>);
  v135 = v151;
  AsyncMapSequence.init(_:transform:)();
  v136 = v152;
  v137 = (*(v152 + 80) + 16) & ~*(v152 + 80);
  v138 = swift_allocObject();
  (*(v136 + 32))(v138 + v137, v135, v149);
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration23InferenceRequestHandlerV14ResponseStream33_6CE5FDA809054AFDA0F170337ADF1236LLVy_20ModelManagerServices10ClientDataVGMd, &_s15TokenGeneration23InferenceRequestHandlerV14ResponseStream33_6CE5FDA809054AFDA0F170337ADF1236LLVy_20ModelManagerServices10ClientDataVGMR);
  v140 = v165;
  v165[3] = v139;
  v140[4] = lazy protocol witness table accessor for type TokenStream<String> and conformance TokenStream<A>(&lazy protocol witness table cache variable for type InferenceRequestHandler.ResponseStream<ClientData> and conformance InferenceRequestHandler.ResponseStream<A>, &_s15TokenGeneration23InferenceRequestHandlerV14ResponseStream33_6CE5FDA809054AFDA0F170337ADF1236LLVy_20ModelManagerServices10ClientDataVGMd, &_s15TokenGeneration23InferenceRequestHandlerV14ResponseStream33_6CE5FDA809054AFDA0F170337ADF1236LLVy_20ModelManagerServices10ClientDataVGMR, &protocol conformance descriptor for InferenceRequestHandler.ResponseStream<A>);

  swift_unknownObjectRelease();
  *v140 = partial apply for specialized closure #1 in InferenceRequestHandler.ResponseStream.init<A>(_:);
  v140[1] = v138;
  (*(v162 + 8))(v157, v163);
  return _s15TokenGeneration14OneShotRequestOWOhTm_0(v166, type metadata accessor for StreamingRequest);
}

uint64_t closure #1 in InferenceRequestHandler.handleStreamingRequest(clientData:configuration:)(uint64_t a1, __n128 a2)
{
  v2[6] = a1;
  v3 = type metadata accessor for InferenceError();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v4 = type metadata accessor for InferenceError.Context();
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in InferenceRequestHandler.handleStreamingRequest(clientData:configuration:), 0, 0);
}

uint64_t closure #1 in InferenceRequestHandler.handleStreamingRequest(clientData:configuration:)()
{
  if (one-time initialization token for inference != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.inference);
  MEMORY[0x1AC5A6AE0](v1);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[6];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    MEMORY[0x1AC5A6AE0](v5);
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&dword_1AB828000, v3, v4, "Failed to decode request data! %@", v6, 0xCu);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v7, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1AC5A6CD0](v7, -1, -1);
    MEMORY[0x1AC5A6CD0](v6, -1, -1);
  }

  v10 = v0[11];
  v9 = v0[12];
  v11 = v0[9];
  v12 = v0[10];
  v13 = v0[7];
  v14 = v0[8];

  swift_getErrorValue();
  Error.localizedDescription.getter();
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0gq5Tf4g_n(MEMORY[0x1E69E7CC0]);
  InferenceError.Context.init(additionalDescription:domain:code:userInfo:fallbackAllowed:)();
  (*(v10 + 16))(v11, v9, v12);
  (*(v14 + 104))(v11, *MEMORY[0x1E69B2628], v13);
  lazy protocol witness table accessor for type OneShotRequest and conformance OneShotRequest(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, MEMORY[0x1E69B2638], MEMORY[0x1E69B2640]);
  swift_allocError();
  (*(v14 + 16))(v15, v11, v13);
  swift_willThrow();
  (*(v14 + 8))(v11, v13);
  (*(v10 + 8))(v9, v12);

  v16 = v0[1];

  return v16();
}

uint64_t closure #2 in InferenceRequestHandler.handleStreamingRequest(data:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for InferenceProviderRequestConfiguration();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for InferenceRequest(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of OneShotRequest(a3, v14, type metadata accessor for StreamingRequest);
  swift_storeEnumTagMultiPayload();
  (*(v9 + 16))(v11, a4, v8);
  type metadata accessor for InferenceRequestInstrumentation(0);
  swift_allocObject();

  return InferenceRequestInstrumentation.init(inferenceRequestHandlerIdentifier:inferenceRequest:configuration:)(a1, a2, v14, v11);
}

uint64_t closure #3 in InferenceRequestHandler.handleStreamingRequest(clientData:configuration:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](closure #3 in InferenceRequestHandler.handleStreamingRequest(clientData:configuration:), 0, 0);
}

uint64_t closure #3 in InferenceRequestHandler.handleStreamingRequest(clientData:configuration:)()
{
  if (one-time initialization token for encoder != -1)
  {
    swift_once();
  }

  type metadata accessor for CompletePromptResponseElement(0);
  lazy protocol witness table accessor for type OneShotRequest and conformance OneShotRequest(&lazy protocol witness table cache variable for type CompletePromptResponseElement and conformance CompletePromptResponseElement, type metadata accessor for CompletePromptResponseElement, &protocol conformance descriptor for CompletePromptResponseElement);
  v1 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  MEMORY[0x1AC5A3B40](v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t closure #4 in InferenceRequestHandler.handleStreamingRequest(clientData:configuration:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](closure #4 in InferenceRequestHandler.handleStreamingRequest(clientData:configuration:), 0, 0);
}

uint64_t closure #4 in InferenceRequestHandler.handleStreamingRequest(clientData:configuration:)()
{
  if (one-time initialization token for encoder != -1)
  {
    swift_once();
  }

  type metadata accessor for CompletePromptResponseElement(0);
  lazy protocol witness table accessor for type OneShotRequest and conformance OneShotRequest(&lazy protocol witness table cache variable for type CompletePromptResponseElement and conformance CompletePromptResponseElement, type metadata accessor for CompletePromptResponseElement, &protocol conformance descriptor for CompletePromptResponseElement);
  v1 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  MEMORY[0x1AC5A3B40](v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t closure #6 in InferenceRequestHandler.handleStreamingRequest(clientData:configuration:)(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s3XPC16XPCCodableObjectVSgMd, &_s3XPC16XPCCodableObjectVSgMR);
  v2[4] = swift_task_alloc();
  type metadata accessor for DocumentRegistration.InternalStatus();
  v2[5] = swift_task_alloc();
  v3 = type metadata accessor for DocumentRegistration();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = type metadata accessor for RegisterDocumentResponseElement(0);
  v2[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #6 in InferenceRequestHandler.handleStreamingRequest(clientData:configuration:), 0, 0);
}

uint64_t closure #6 in InferenceRequestHandler.handleStreamingRequest(clientData:configuration:)()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[5];
  v7 = *(v5 + 16);
  v7(v3, v0[3], v4);
  v7(v2, v3, v4);
  DocumentRegistration.internalStatus.getter();
  DocumentRegistrationStatusEnvelope.init(sealing:)(v6, v1);
  type metadata accessor for DocumentRegistrationEnvelope(0);
  DocumentRegistration.url.getter();
  v8 = *(v5 + 8);
  v8(v2, v4);
  v8(v3, v4);
  if (one-time initialization token for encoder != -1)
  {
    swift_once();
  }

  lazy protocol witness table accessor for type OneShotRequest and conformance OneShotRequest(&lazy protocol witness table cache variable for type RegisterDocumentResponseElement and conformance RegisterDocumentResponseElement, type metadata accessor for RegisterDocumentResponseElement, &protocol conformance descriptor for RegisterDocumentResponseElement);
  dispatch thunk of JSONEncoder.encode<A>(_:)();
  v9 = v0[11];
  v10 = v0[4];
  v11 = type metadata accessor for XPCCodableObject();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  ClientData.init(data:xpcData:)();
  _s15TokenGeneration14OneShotRequestOWOhTm_0(v9, type metadata accessor for RegisterDocumentResponseElement);

  v12 = v0[1];

  return v12();
}

void *InferenceRequestHandler.init<A, B>(identifier:fetchModelMetadata:countTokens:countTokensPromptTemplate:completePrompt:completePromptTemplate:streamPromptCompletion:streamPromptTemplateCompletion:registerDocuments:fetchTokenizerMetadata:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 64) = a10;
  *(a9 + 80) = a11;
  *(a9 + 88) = a12;
  v25 = swift_allocObject();
  v25[2] = a21;
  v25[3] = a22;
  v25[4] = a23;
  v25[5] = a24;
  v25[6] = a13;
  v25[7] = a14;
  *(a9 + 96) = partial apply for closure #2 in InferenceRequestHandler.init<A, B>(identifier:fetchModelMetadata:countTokens:countTokensPromptTemplate:completePrompt:completePromptTemplate:streamPromptCompletion:streamPromptTemplateCompletion:registerDocuments:fetchTokenizerMetadata:classifyPrompt:classifyPromptTemplate:compileAdapter:);
  *(a9 + 104) = v25;
  v26 = swift_allocObject();
  v26[2] = a21;
  v26[3] = a22;
  v26[4] = a23;
  v26[5] = a24;
  v26[6] = a15;
  v26[7] = a16;
  *(a9 + 112) = partial apply for closure #2 in InferenceRequestHandler.init<A, B>(identifier:fetchModelMetadata:countTokens:countTokensPromptTemplate:completePrompt:completePromptTemplate:streamPromptCompletion:streamPromptTemplateCompletion:registerDocuments:fetchTokenizerMetadata:classifyPrompt:classifyPromptTemplate:compileAdapter:);
  *(a9 + 120) = v26;
  result = swift_allocObject();
  result[2] = a21;
  result[3] = a22;
  result[4] = a23;
  result[5] = a24;
  result[6] = a17;
  result[7] = a18;
  *(a9 + 128) = partial apply for closure #3 in InferenceRequestHandler.init<A, B>(identifier:fetchModelMetadata:countTokens:countTokensPromptTemplate:completePrompt:completePromptTemplate:streamPromptCompletion:streamPromptTemplateCompletion:registerDocuments:fetchTokenizerMetadata:);
  *(a9 + 136) = result;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 144) = a19;
  *(a9 + 152) = a20;
  *(a9 + 160) = &async function pointer to closure #4 in InferenceRequestHandler.init<A, B>(identifier:fetchModelMetadata:countTokens:countTokensPromptTemplate:completePrompt:completePromptTemplate:streamPromptCompletion:streamPromptTemplateCompletion:registerDocuments:fetchTokenizerMetadata:);
  *(a9 + 168) = 0;
  *(a9 + 176) = &async function pointer to closure #5 in InferenceRequestHandler.init<A, B>(identifier:fetchModelMetadata:countTokens:countTokensPromptTemplate:completePrompt:completePromptTemplate:streamPromptCompletion:streamPromptTemplateCompletion:registerDocuments:fetchTokenizerMetadata:);
  *(a9 + 184) = 0;
  *(a9 + 192) = &async function pointer to closure #6 in InferenceRequestHandler.init<A, B>(identifier:fetchModelMetadata:countTokens:countTokensPromptTemplate:completePrompt:completePromptTemplate:streamPromptCompletion:streamPromptTemplateCompletion:registerDocuments:fetchTokenizerMetadata:);
  *(a9 + 200) = 0;
  return result;
}

uint64_t closure #4 in InferenceRequestHandler.init<A, B>(identifier:fetchModelMetadata:countTokens:countTokensPromptTemplate:completePrompt:completePromptTemplate:streamPromptCompletion:streamPromptTemplateCompletion:registerDocuments:fetchTokenizerMetadata:)(__n128 a1)
{
  v2 = type metadata accessor for InferenceError();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = type metadata accessor for InferenceError.Context();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #5 in InferenceRequestHandler.init<A, B>(identifier:fetchModelMetadata:countTokens:countTokensPromptTemplate:completePrompt:completePromptTemplate:streamPromptCompletion:streamPromptTemplateCompletion:registerDocuments:fetchTokenizerMetadata:), 0, 0);
}

uint64_t closure #6 in InferenceRequestHandler.init<A, B>(identifier:fetchModelMetadata:countTokens:countTokensPromptTemplate:completePrompt:completePromptTemplate:streamPromptCompletion:streamPromptTemplateCompletion:registerDocuments:fetchTokenizerMetadata:)(__n128 a1)
{
  v2 = type metadata accessor for InferenceError();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = type metadata accessor for InferenceError.Context();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #7 in InferenceRequestHandler.init<A, B>(identifier:fetchModelMetadata:countTokens:countTokensPromptTemplate:completePrompt:completePromptTemplate:streamPromptCompletion:streamPromptTemplateCompletion:registerDocuments:), 0, 0);
}

void *InferenceRequestHandler.init<A, B>(identifier:fetchModelMetadata:countTokens:countTokensPromptTemplate:completePrompt:completePromptTemplate:streamPromptCompletion:streamPromptTemplateCompletion:registerDocuments:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 64) = a10;
  *(a9 + 80) = a11;
  *(a9 + 88) = a12;
  v23 = swift_allocObject();
  v23[2] = a19;
  v23[3] = a20;
  v23[4] = a21;
  v23[5] = a22;
  v23[6] = a13;
  v23[7] = a14;
  *(a9 + 96) = partial apply for closure #2 in InferenceRequestHandler.init<A, B>(identifier:fetchModelMetadata:countTokens:countTokensPromptTemplate:completePrompt:completePromptTemplate:streamPromptCompletion:streamPromptTemplateCompletion:registerDocuments:fetchTokenizerMetadata:classifyPrompt:classifyPromptTemplate:compileAdapter:);
  *(a9 + 104) = v23;
  v24 = swift_allocObject();
  v24[2] = a19;
  v24[3] = a20;
  v24[4] = a21;
  v24[5] = a22;
  v24[6] = a15;
  v24[7] = a16;
  *(a9 + 112) = partial apply for closure #2 in InferenceRequestHandler.init<A, B>(identifier:fetchModelMetadata:countTokens:countTokensPromptTemplate:completePrompt:completePromptTemplate:streamPromptCompletion:streamPromptTemplateCompletion:registerDocuments:fetchTokenizerMetadata:classifyPrompt:classifyPromptTemplate:compileAdapter:);
  *(a9 + 120) = v24;
  result = swift_allocObject();
  result[2] = a19;
  result[3] = a20;
  result[4] = a21;
  result[5] = a22;
  result[6] = a17;
  result[7] = a18;
  *(a9 + 128) = partial apply for closure #3 in InferenceRequestHandler.init<A, B>(identifier:fetchModelMetadata:countTokens:countTokensPromptTemplate:completePrompt:completePromptTemplate:streamPromptCompletion:streamPromptTemplateCompletion:registerDocuments:fetchTokenizerMetadata:);
  *(a9 + 136) = result;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 144) = &async function pointer to closure #4 in InferenceRequestHandler.init<A, B>(identifier:fetchModelMetadata:countTokens:countTokensPromptTemplate:completePrompt:completePromptTemplate:streamPromptCompletion:streamPromptTemplateCompletion:registerDocuments:);
  *(a9 + 152) = 0;
  *(a9 + 160) = &async function pointer to closure #5 in InferenceRequestHandler.init<A, B>(identifier:fetchModelMetadata:countTokens:countTokensPromptTemplate:completePrompt:completePromptTemplate:streamPromptCompletion:streamPromptTemplateCompletion:registerDocuments:);
  *(a9 + 168) = 0;
  *(a9 + 176) = &async function pointer to closure #6 in InferenceRequestHandler.init<A, B>(identifier:fetchModelMetadata:countTokens:countTokensPromptTemplate:completePrompt:completePromptTemplate:streamPromptCompletion:streamPromptTemplateCompletion:registerDocuments:);
  *(a9 + 184) = 0;
  *(a9 + 192) = &async function pointer to closure #7 in InferenceRequestHandler.init<A, B>(identifier:fetchModelMetadata:countTokens:countTokensPromptTemplate:completePrompt:completePromptTemplate:streamPromptCompletion:streamPromptTemplateCompletion:registerDocuments:);
  *(a9 + 200) = 0;
  return result;
}

uint64_t closure #4 in InferenceRequestHandler.init<A, B>(identifier:fetchModelMetadata:countTokens:countTokensPromptTemplate:completePrompt:completePromptTemplate:streamPromptCompletion:streamPromptTemplateCompletion:registerDocuments:)(__n128 a1)
{
  v2 = type metadata accessor for InferenceError();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = type metadata accessor for InferenceError.Context();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #4 in InferenceRequestHandler.init<A, B>(identifier:fetchModelMetadata:countTokens:countTokensPromptTemplate:completePrompt:completePromptTemplate:streamPromptCompletion:streamPromptTemplateCompletion:registerDocuments:), 0, 0);
}

void *InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:completePromptTemplate:streamPromptCompletion:streamPromptTemplateCompletion:registerDocuments:countTokensPromptTemplate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  *a9 = a1;
  a9[1] = a2;
  a9[4] = a3;
  a9[5] = a4;
  a9[8] = a5;
  a9[9] = a6;
  a9[10] = a7;
  a9[11] = a8;
  v22 = swift_allocObject();
  v22[2] = a18;
  v22[3] = a19;
  v22[4] = a20;
  v22[5] = a21;
  v22[6] = a10;
  v22[7] = a11;
  a9[12] = partial apply for closure #2 in InferenceRequestHandler.init<A, B>(identifier:fetchModelMetadata:countTokens:countTokensPromptTemplate:completePrompt:completePromptTemplate:streamPromptCompletion:streamPromptTemplateCompletion:registerDocuments:fetchTokenizerMetadata:classifyPrompt:classifyPromptTemplate:compileAdapter:);
  a9[13] = v22;
  v23 = swift_allocObject();
  v23[2] = a18;
  v23[3] = a19;
  v23[4] = a20;
  v23[5] = a21;
  v23[6] = a12;
  v23[7] = a13;
  a9[14] = partial apply for closure #2 in InferenceRequestHandler.init<A, B>(identifier:fetchModelMetadata:countTokens:countTokensPromptTemplate:completePrompt:completePromptTemplate:streamPromptCompletion:streamPromptTemplateCompletion:registerDocuments:fetchTokenizerMetadata:classifyPrompt:classifyPromptTemplate:compileAdapter:);
  a9[15] = v23;
  result = swift_allocObject();
  result[2] = a18;
  result[3] = a19;
  result[4] = a20;
  result[5] = a21;
  result[6] = a14;
  result[7] = a15;
  a9[16] = partial apply for closure #3 in InferenceRequestHandler.init<A, B>(identifier:fetchModelMetadata:countTokens:countTokensPromptTemplate:completePrompt:completePromptTemplate:streamPromptCompletion:streamPromptTemplateCompletion:registerDocuments:fetchTokenizerMetadata:);
  a9[17] = result;
  a9[6] = a16;
  a9[7] = a17;
  a9[2] = &async function pointer to closure #4 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:completePromptTemplate:streamPromptCompletion:streamPromptTemplateCompletion:registerDocuments:countTokensPromptTemplate:);
  a9[3] = 0;
  a9[18] = &async function pointer to closure #5 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:completePromptTemplate:streamPromptCompletion:streamPromptTemplateCompletion:registerDocuments:countTokensPromptTemplate:);
  a9[19] = 0;
  a9[20] = &async function pointer to closure #6 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:completePromptTemplate:streamPromptCompletion:streamPromptTemplateCompletion:registerDocuments:countTokensPromptTemplate:);
  a9[21] = 0;
  a9[22] = &async function pointer to closure #7 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:completePromptTemplate:streamPromptCompletion:streamPromptTemplateCompletion:registerDocuments:countTokensPromptTemplate:);
  a9[23] = 0;
  a9[24] = &async function pointer to closure #8 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:completePromptTemplate:streamPromptCompletion:streamPromptTemplateCompletion:registerDocuments:countTokensPromptTemplate:);
  a9[25] = 0;
  return result;
}

uint64_t closure #4 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:completePromptTemplate:streamPromptCompletion:streamPromptTemplateCompletion:registerDocuments:countTokensPromptTemplate:)(__n128 a1)
{
  v2 = type metadata accessor for InferenceError();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = type metadata accessor for InferenceError.Context();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #5 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:completePromptTemplate:streamPromptCompletion:streamPromptTemplateCompletion:registerDocuments:), 0, 0);
}

double InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:completePromptTemplate:streamPromptCompletion:streamPromptTemplateCompletion:registerDocuments:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  *a9 = a1;
  a9[1] = a2;
  a9[4] = a3;
  a9[5] = a4;
  a9[8] = a5;
  a9[9] = a6;
  a9[10] = a7;
  a9[11] = a8;
  v22 = swift_allocObject();
  v22[2] = a16;
  v22[3] = a17;
  v22[4] = a18;
  v22[5] = a19;
  v22[6] = a10;
  v22[7] = a11;
  a9[12] = partial apply for closure #2 in InferenceRequestHandler.init<A, B>(identifier:fetchModelMetadata:countTokens:countTokensPromptTemplate:completePrompt:completePromptTemplate:streamPromptCompletion:streamPromptTemplateCompletion:registerDocuments:fetchTokenizerMetadata:classifyPrompt:classifyPromptTemplate:compileAdapter:);
  a9[13] = v22;
  v23 = swift_allocObject();
  v23[2] = a16;
  v23[3] = a17;
  v23[4] = a18;
  v23[5] = a19;
  v23[6] = a12;
  v23[7] = a13;
  a9[14] = partial apply for closure #2 in InferenceRequestHandler.init<A, B>(identifier:fetchModelMetadata:countTokens:countTokensPromptTemplate:completePrompt:completePromptTemplate:streamPromptCompletion:streamPromptTemplateCompletion:registerDocuments:fetchTokenizerMetadata:classifyPrompt:classifyPromptTemplate:compileAdapter:);
  a9[15] = v23;
  v24 = swift_allocObject();
  v24[2] = a16;
  v24[3] = a17;
  v24[4] = a18;
  v24[5] = a19;
  v24[6] = a14;
  v24[7] = a15;
  a9[16] = partial apply for closure #3 in InferenceRequestHandler.init<A, B>(identifier:fetchModelMetadata:countTokens:countTokensPromptTemplate:completePrompt:completePromptTemplate:streamPromptCompletion:streamPromptTemplateCompletion:registerDocuments:fetchTokenizerMetadata:);
  a9[17] = v24;
  v25 = swift_allocObject();
  *(v25 + 16) = a1;
  *(v25 + 24) = a2;
  a9[6] = &async function pointer to partial apply for closure #4 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:completePromptTemplate:streamPromptCompletion:streamPromptTemplateCompletion:registerDocuments:);
  a9[7] = v25;
  a9[2] = &async function pointer to closure #5 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:completePromptTemplate:streamPromptCompletion:streamPromptTemplateCompletion:registerDocuments:);
  a9[3] = 0;
  a9[18] = &async function pointer to closure #6 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:completePromptTemplate:streamPromptCompletion:streamPromptTemplateCompletion:registerDocuments:);
  a9[19] = 0;
  a9[20] = &async function pointer to closure #7 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:completePromptTemplate:streamPromptCompletion:streamPromptTemplateCompletion:registerDocuments:);
  a9[21] = 0;
  a9[22] = &async function pointer to closure #8 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:completePromptTemplate:streamPromptCompletion:streamPromptTemplateCompletion:registerDocuments:);
  a9[23] = 0;
  a9[24] = &async function pointer to closure #9 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:completePromptTemplate:streamPromptCompletion:streamPromptTemplateCompletion:registerDocuments:);
  a9[25] = 0;

  return result;
}

uint64_t closure #4 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:completePromptTemplate:streamPromptCompletion:streamPromptTemplateCompletion:registerDocuments:)(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v7 = type metadata accessor for InferenceError.Context();
  v6[4] = v7;
  v6[5] = *(v7 - 8);
  v6[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #4 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:completePromptTemplate:streamPromptCompletion:streamPromptTemplateCompletion:registerDocuments:), 0, 0);
}

uint64_t InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:streamPromptCompletion:registerDocuments:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  *a9 = a1;
  a9[1] = a2;
  a9[4] = a3;
  a9[5] = a4;
  a9[8] = a5;
  a9[9] = a6;
  v20 = swift_allocObject();
  v20[2] = a12;
  v20[3] = a13;
  v20[4] = a14;
  v20[5] = a15;
  v20[6] = a7;
  v20[7] = a8;
  a9[12] = partial apply for closure #1 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:streamPromptCompletion:registerDocuments:);
  a9[13] = v20;
  v21 = swift_allocObject();
  v21[2] = a12;
  v21[3] = a13;
  v21[4] = a14;
  v21[5] = a15;
  v21[6] = a10;
  v21[7] = a11;
  a9[16] = partial apply for closure #3 in InferenceRequestHandler.init<A, B>(identifier:fetchModelMetadata:countTokens:countTokensPromptTemplate:completePrompt:completePromptTemplate:streamPromptCompletion:streamPromptTemplateCompletion:registerDocuments:fetchTokenizerMetadata:);
  a9[17] = v21;
  v22 = swift_allocObject();
  *(v22 + 16) = a1;
  *(v22 + 24) = a2;
  a9[10] = &async function pointer to partial apply for closure #3 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:streamPromptCompletion:registerDocuments:);
  a9[11] = v22;
  v23 = swift_allocObject();
  *(v23 + 16) = a1;
  *(v23 + 24) = a2;
  a9[14] = partial apply for closure #4 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:streamPromptCompletion:registerDocuments:);
  a9[15] = v23;
  v24 = swift_allocObject();
  *(v24 + 16) = a1;
  *(v24 + 24) = a2;
  a9[6] = &async function pointer to partial apply for closure #5 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:streamPromptCompletion:registerDocuments:);
  a9[7] = v24;
  a9[2] = &async function pointer to closure #6 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:streamPromptCompletion:registerDocuments:);
  a9[3] = 0;
  a9[18] = &async function pointer to closure #7 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:streamPromptCompletion:registerDocuments:);
  a9[19] = 0;
  a9[20] = &async function pointer to closure #8 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:streamPromptCompletion:registerDocuments:);
  a9[21] = 0;
  a9[22] = &async function pointer to closure #9 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:streamPromptCompletion:registerDocuments:);
  a9[23] = 0;
  a9[24] = &async function pointer to closure #10 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:streamPromptCompletion:registerDocuments:);
  a9[25] = 0;
  return swift_bridgeObjectRetain_n();
}

{
  *a9 = a1;
  a9[1] = a2;
  a9[4] = a3;
  a9[5] = a4;
  a9[8] = a5;
  a9[9] = a6;
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  *(v20 + 24) = a2;
  a9[10] = &async function pointer to partial apply for closure #1 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:streamPromptCompletion:registerDocuments:);
  a9[11] = v20;
  v21 = swift_allocObject();
  v21[2] = a12;
  v21[3] = a13;
  v21[4] = a14;
  v21[5] = a15;
  v21[6] = a7;
  v21[7] = a8;
  a9[12] = partial apply for closure #2 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:streamPromptCompletion:registerDocuments:);
  a9[13] = v21;
  v22 = swift_allocObject();
  *(v22 + 16) = a1;
  *(v22 + 24) = a2;
  a9[14] = partial apply for closure #3 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:streamPromptCompletion:registerDocuments:);
  a9[15] = v22;
  v23 = swift_allocObject();
  v23[2] = a12;
  v23[3] = a13;
  v23[4] = a14;
  v23[5] = a15;
  v23[6] = a10;
  v23[7] = a11;
  a9[16] = partial apply for closure #4 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:streamPromptCompletion:registerDocuments:);
  a9[17] = v23;
  v24 = swift_allocObject();
  *(v24 + 16) = a1;
  *(v24 + 24) = a2;
  a9[6] = &async function pointer to partial apply for closure #5 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:streamPromptCompletion:registerDocuments:);
  a9[7] = v24;
  a9[2] = &async function pointer to closure #6 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:streamPromptCompletion:registerDocuments:);
  a9[3] = 0;
  a9[18] = &async function pointer to closure #7 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:streamPromptCompletion:registerDocuments:);
  a9[19] = 0;
  a9[20] = &async function pointer to closure #8 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:streamPromptCompletion:registerDocuments:);
  a9[21] = 0;
  a9[22] = &async function pointer to closure #9 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:streamPromptCompletion:registerDocuments:);
  a9[23] = 0;
  a9[24] = &async function pointer to closure #10 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:streamPromptCompletion:registerDocuments:);
  a9[25] = 0;
  return swift_bridgeObjectRetain_n();
}

uint64_t (*closure #1 in InferenceRequestHandler.init<A, B>(identifier:fetchModelMetadata:countTokens:countTokensPromptTemplate:completePrompt:completePromptTemplate:streamPromptCompletion:streamPromptTemplateCompletion:registerDocuments:fetchTokenizerMetadata:classifyPrompt:classifyPromptTemplate:compileAdapter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7))@<X0>(uint64_t *a1@<X8>)
{
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12(v9);
  v13 = type metadata accessor for CompletePromptResponseElement(0);
  return InferenceRequestHandler.ResponseStream.init<A>(_:)(v11, v13, a5, a7);
}

uint64_t (*closure #4 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:streamPromptCompletion:registerDocuments:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScsy15TokenGeneration29CompletePromptResponseElementVs5Error_pGMd, &_sScsy15TokenGeneration29CompletePromptResponseElementVs5Error_pGMR);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - v8;
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;
  type metadata accessor for CompletePromptResponseElement(0);

  AsyncThrowingStream.init<>(unfolding:)();
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, v9, v6);
  return closure #1 in InferenceRequestHandler.ResponseStream.init<A>(_:)specialized partial apply;
}

uint64_t closure #1 in closure #4 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:streamPromptCompletion:registerDocuments:)(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a3;
  v4[3] = a4;
  v5 = type metadata accessor for InferenceError.Context();
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #4 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:completePromptTemplate:streamPromptCompletion:streamPromptTemplateCompletion:registerDocuments:), 0, 0);
}

uint64_t InferenceRequestHandler.init<A>(identifier:countTokens:completePrompt:streamPromptCompletion:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = a1;
  a9[1] = a2;
  a9[4] = a3;
  a9[5] = a4;
  a9[8] = a5;
  a9[9] = a6;
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  a9[10] = &async function pointer to partial apply for closure #1 in InferenceRequestHandler.init<A>(identifier:countTokens:completePrompt:streamPromptCompletion:);
  a9[11] = v16;
  v17 = swift_allocObject();
  v17[2] = a10;
  v17[3] = a11;
  v17[4] = a7;
  v17[5] = a8;
  a9[12] = partial apply for closure #2 in InferenceRequestHandler.init<A>(identifier:countTokens:completePrompt:streamPromptCompletion:);
  a9[13] = v17;
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  a9[14] = partial apply for closure #3 in InferenceRequestHandler.init<A>(identifier:countTokens:completePrompt:streamPromptCompletion:);
  a9[15] = v18;
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  a9[16] = partial apply for closure #4 in InferenceRequestHandler.init<A>(identifier:countTokens:completePrompt:streamPromptCompletion:);
  a9[17] = v19;
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  *(v20 + 24) = a2;
  a9[6] = &async function pointer to partial apply for closure #5 in InferenceRequestHandler.init<A>(identifier:countTokens:completePrompt:streamPromptCompletion:);
  a9[7] = v20;
  a9[2] = &async function pointer to closure #6 in InferenceRequestHandler.init<A>(identifier:countTokens:completePrompt:streamPromptCompletion:);
  a9[3] = 0;
  a9[18] = &async function pointer to closure #7 in InferenceRequestHandler.init<A>(identifier:countTokens:completePrompt:streamPromptCompletion:);
  a9[19] = 0;
  a9[20] = &async function pointer to closure #8 in InferenceRequestHandler.init<A>(identifier:countTokens:completePrompt:streamPromptCompletion:);
  a9[21] = 0;
  a9[22] = &async function pointer to closure #9 in InferenceRequestHandler.init<A>(identifier:countTokens:completePrompt:streamPromptCompletion:);
  a9[23] = 0;
  a9[24] = &async function pointer to closure #10 in InferenceRequestHandler.init<A>(identifier:countTokens:completePrompt:streamPromptCompletion:);
  a9[25] = 0;
  return swift_bridgeObjectRetain_n();
}

{
  *a9 = a1;
  a9[1] = a2;
  a9[4] = a3;
  a9[5] = a4;
  a9[8] = a5;
  a9[9] = a6;
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  a9[10] = &async function pointer to partial apply for closure #1 in InferenceRequestHandler.init<A>(identifier:countTokens:completePrompt:streamPromptCompletion:);
  a9[11] = v16;
  v17 = swift_allocObject();
  v17[2] = a10;
  v17[3] = a11;
  v17[4] = a7;
  v17[5] = a8;
  a9[12] = partial apply for closure #2 in InferenceRequestHandler.init<A>(identifier:countTokens:completePrompt:streamPromptCompletion:);
  a9[13] = v17;
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  a9[14] = partial apply for closure #3 in InferenceRequestHandler.init<A>(identifier:countTokens:completePrompt:streamPromptCompletion:);
  a9[15] = v18;
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  a9[16] = partial apply for closure #4 in InferenceRequestHandler.init<A>(identifier:countTokens:completePrompt:streamPromptCompletion:);
  a9[17] = v19;
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  *(v20 + 24) = a2;
  a9[6] = &async function pointer to partial apply for closure #5 in InferenceRequestHandler.init<A>(identifier:countTokens:completePrompt:streamPromptCompletion:);
  a9[7] = v20;
  a9[2] = &async function pointer to closure #6 in InferenceRequestHandler.init<A>(identifier:countTokens:completePrompt:streamPromptCompletion:);
  a9[3] = 0;
  a9[18] = &async function pointer to closure #7 in InferenceRequestHandler.init<A>(identifier:countTokens:completePrompt:streamPromptCompletion:);
  a9[19] = 0;
  a9[20] = &async function pointer to closure #8 in InferenceRequestHandler.init<A>(identifier:countTokens:completePrompt:streamPromptCompletion:);
  a9[21] = 0;
  a9[22] = &async function pointer to closure #9 in InferenceRequestHandler.init<A>(identifier:countTokens:completePrompt:streamPromptCompletion:);
  a9[23] = 0;
  a9[24] = &async function pointer to closure #10 in InferenceRequestHandler.init<A>(identifier:countTokens:completePrompt:streamPromptCompletion:);
  a9[25] = 0;
  return swift_bridgeObjectRetain_n();
}

uint64_t closure #1 in InferenceRequestHandler.init<A>(identifier:countTokens:completePrompt:streamPromptCompletion:)(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v7 = type metadata accessor for InferenceError();
  v6[4] = v7;
  v6[5] = *(v7 - 8);
  v6[6] = swift_task_alloc();
  v8 = type metadata accessor for InferenceError.Context();
  v6[7] = v8;
  v6[8] = *(v8 - 8);
  v6[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in InferenceRequestHandler.init<A>(identifier:countTokens:completePrompt:streamPromptCompletion:), 0, 0);
}

uint64_t (*closure #2 in InferenceRequestHandler.init<A>(identifier:countTokens:completePrompt:streamPromptCompletion:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, __n128), uint64_t a4, uint64_t a5, uint64_t a6))@<X0>(uint64_t *a1@<X8>)
{
  v23 = a4;
  v24 = a3;
  v9 = type metadata accessor for CompletePromptResponseElement(255);
  v10 = type metadata accessor for AsyncMapSequence();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v23 - v11;
  v13 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v23 - v19;
  v24(a1, a2, v18);
  (*(v13 + 16))(v16, v20, a5);
  AsyncSequence.map<A>(_:)();
  (*(v13 + 8))(v20, a5);
  WitnessTable = swift_getWitnessTable();
  return InferenceRequestHandler.ResponseStream.init<A>(_:)(v12, v9, v10, WitnessTable);
}

uint64_t closure #1 in closure #2 in InferenceRequestHandler.init<A>(identifier:countTokens:completePrompt:streamPromptCompletion:)(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for Token();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #2 in InferenceRequestHandler.init<A>(identifier:countTokens:completePrompt:streamPromptCompletion:), 0, 0);
}

uint64_t closure #1 in closure #2 in InferenceRequestHandler.init<A>(identifier:countTokens:completePrompt:streamPromptCompletion:)()
{
  v1 = v0[6];
  v2 = v0[2];
  (*(v0[5] + 16))(v1, v0[3], v0[4]);
  CompletePromptResponseElement.init(token:)(v1, v2);

  v3 = v0[1];

  return v3();
}

uint64_t (*closure #3 in InferenceRequestHandler.init<A>(identifier:countTokens:completePrompt:streamPromptCompletion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScsy15TokenGeneration29CompletePromptResponseElementVs5Error_pGMd, &_sScsy15TokenGeneration29CompletePromptResponseElementVs5Error_pGMR);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - v8;
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;
  type metadata accessor for CompletePromptResponseElement(0);

  AsyncThrowingStream.init<>(unfolding:)();
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, v9, v6);
  return closure #1 in InferenceRequestHandler.ResponseStream.init<A>(_:)specialized partial apply;
}

{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScsy15TokenGeneration29CompletePromptResponseElementVs5Error_pGMd, &_sScsy15TokenGeneration29CompletePromptResponseElementVs5Error_pGMR);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - v8;
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;
  type metadata accessor for CompletePromptResponseElement(0);

  AsyncThrowingStream.init<>(unfolding:)();
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, v9, v6);
  return closure #1 in InferenceRequestHandler.ResponseStream.init<A>(_:)specialized partial apply;
}

uint64_t closure #1 in closure #3 in InferenceRequestHandler.init<A>(identifier:countTokens:completePrompt:streamPromptCompletion:)(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a3;
  v4[3] = a4;
  v5 = type metadata accessor for InferenceError();
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();
  v6 = type metadata accessor for InferenceError.Context();
  v4[7] = v6;
  v4[8] = *(v6 - 8);
  v4[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in InferenceRequestHandler.init<A>(identifier:countTokens:completePrompt:streamPromptCompletion:), 0, 0);
}

uint64_t (*closure #4 in InferenceRequestHandler.init<A>(identifier:countTokens:completePrompt:streamPromptCompletion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScsy26GenerativeModelsFoundation20DocumentRegistrationVs5Error_pGMd, &_sScsy26GenerativeModelsFoundation20DocumentRegistrationVs5Error_pGMR);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - v8;
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;
  type metadata accessor for DocumentRegistration();

  AsyncThrowingStream.init<>(unfolding:)();
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, v9, v6);
  return closure #1 in InferenceRequestHandler.ResponseStream.init<A>(_:)specialized partial apply;
}

{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScsy26GenerativeModelsFoundation20DocumentRegistrationVs5Error_pGMd, &_sScsy26GenerativeModelsFoundation20DocumentRegistrationVs5Error_pGMR);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - v8;
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;
  type metadata accessor for DocumentRegistration();

  AsyncThrowingStream.init<>(unfolding:)();
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, v9, v6);
  return partial apply for specialized closure #1 in InferenceRequestHandler.ResponseStream.init<A>(_:);
}

uint64_t closure #1 in closure #4 in InferenceRequestHandler.init<A>(identifier:countTokens:completePrompt:streamPromptCompletion:)(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a3;
  v4[3] = a4;
  v5 = type metadata accessor for InferenceError.Context();
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #4 in InferenceRequestHandler.init<A>(identifier:countTokens:completePrompt:streamPromptCompletion:), 0, 0);
}

{
  v4[2] = a3;
  v4[3] = a4;
  v5 = type metadata accessor for InferenceError.Context();
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #4 in InferenceRequestHandler.init<A>(identifier:countTokens:completePrompt:streamPromptCompletion:), 0, 0);
}

uint64_t closure #1 in closure #4 in InferenceRequestHandler.init<A>(identifier:countTokens:completePrompt:streamPromptCompletion:)()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[2];
  _StringGuts.grow(_:)(61);
  MEMORY[0x1AC5A5BC0](v5, v3);
  MEMORY[0x1AC5A5BC0](0xD00000000000003BLL, 0x80000001ABA410F0);
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0gq5Tf4g_n(MEMORY[0x1E69E7CC0]);
  InferenceError.Context.init(additionalDescription:domain:code:userInfo:fallbackAllowed:)();
  v6 = type metadata accessor for InferenceError();
  lazy protocol witness table accessor for type OneShotRequest and conformance OneShotRequest(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, MEMORY[0x1E69B2638], MEMORY[0x1E69B2640]);
  swift_allocError();
  v8 = v7;
  (*(v2 + 16))(v7, v1, v4);
  (*(*(v6 - 8) + 104))(v8, *MEMORY[0x1E69B25F0], v6);
  swift_willThrow();
  (*(v2 + 8))(v1, v4);

  v9 = v0[1];

  return v9();
}

uint64_t (*closure #2 in InferenceRequestHandler.init<A>(identifier:countTokens:completePrompt:streamPromptCompletion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6))@<X0>(uint64_t *a1@<X8>)
{
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11(v8);
  v12 = type metadata accessor for CompletePromptResponseElement(0);
  return InferenceRequestHandler.ResponseStream.init<A>(_:)(v10, v12, a5, a6);
}

uint64_t (*closure #2 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:streamPromptCompletion:registerDocuments:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, __n128), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7))@<X0>(uint64_t *a1@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  v10 = type metadata accessor for CompletePromptResponseElement(255);
  v11 = type metadata accessor for AsyncMapSequence();
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v17 - v13;
  a3(a1, a2, v12);
  AsyncSequence.map<A>(_:)();
  WitnessTable = swift_getWitnessTable();
  return InferenceRequestHandler.ResponseStream.init<A>(_:)(v14, v10, v11, WitnessTable);
}

uint64_t closure #1 in closure #2 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:streamPromptCompletion:registerDocuments:)(uint64_t a1, uint64_t a2)
{
  v2[17] = a1;
  v2[18] = a2;
  v3 = type metadata accessor for UUID();
  v2[19] = v3;
  v2[20] = *(v3 - 8);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #2 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:streamPromptCompletion:registerDocuments:), 0, 0);
}

uint64_t closure #1 in closure #2 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:streamPromptCompletion:registerDocuments:)(uint64_t a1)
{
  v2 = v1[21];
  v3 = v1[22];
  v4 = v1[19];
  v5 = v1[20];
  v20 = v1[17];
  UUID.init()();
  v6 = UUID.uuidString.getter();
  v18 = v7;
  v19 = v6;
  v8 = *(v5 + 8);
  v8(v3, v4);
  UUID.init()();
  v9 = UUID.uuidString.getter();
  v11 = v10;
  v8(v2, v4);
  v12 = Token.text.getter();
  v14 = v13;
  v1[5] = &type metadata for PromptCompletionEventCandidateTextDelta;
  v1[6] = &protocol witness table for PromptCompletionEventCandidateTextDelta;
  v15 = swift_allocObject();
  v1[2] = v15;
  *(v15 + 16) = v19;
  *(v15 + 24) = v18;
  *(v15 + 32) = v9;
  *(v15 + 40) = v11;
  *(v15 + 48) = 0;
  *(v15 + 56) = v12;
  *(v15 + 64) = v14;
  *(v15 + 72) = xmmword_1ABA1D8C0;
  outlined init with copy of PromptCompletionEvent((v1 + 2), (v1 + 7));
  outlined init with copy of PromptCompletionEvent((v1 + 7), (v1 + 12));
  PromptCompletionStreamElementEnvelope.Envelope.init(sealing:)(v1 + 12, v20);
  __swift_destroy_boxed_opaque_existential_0(v1 + 7);
  __swift_destroy_boxed_opaque_existential_0(v1 + 2);

  v16 = v1[1];

  return v16();
}

uint64_t (*closure #3 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:streamPromptCompletion:registerDocuments:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScsy15TokenGeneration29CompletePromptResponseElementVs5Error_pGMd, &_sScsy15TokenGeneration29CompletePromptResponseElementVs5Error_pGMR);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - v8;
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;
  type metadata accessor for CompletePromptResponseElement(0);

  AsyncThrowingStream.init<>(unfolding:)();
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, v9, v6);
  return partial apply for specialized closure #1 in InferenceRequestHandler.ResponseStream.init<A>(_:);
}

uint64_t closure #1 in closure #3 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:streamPromptCompletion:registerDocuments:)(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a3;
  v4[3] = a4;
  v5 = type metadata accessor for InferenceError();
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();
  v6 = type metadata accessor for InferenceError.Context();
  v4[7] = v6;
  v4[8] = *(v6 - 8);
  v4[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #3 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:streamPromptCompletion:registerDocuments:), 0, 0);
}

uint64_t closure #1 in closure #3 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:streamPromptCompletion:registerDocuments:)()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[4];
  v6 = v0[5];
  v8 = v0[2];
  v7 = v0[3];
  _StringGuts.grow(_:)(56);
  MEMORY[0x1AC5A5BC0](v8, v7);
  MEMORY[0x1AC5A5BC0](0xD000000000000036, 0x80000001ABA410B0);
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0gq5Tf4g_n(MEMORY[0x1E69E7CC0]);
  InferenceError.Context.init(additionalDescription:domain:code:userInfo:fallbackAllowed:)();
  (*(v2 + 16))(v3, v1, v4);
  (*(v6 + 104))(v3, *MEMORY[0x1E69B25F0], v5);
  lazy protocol witness table accessor for type OneShotRequest and conformance OneShotRequest(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, MEMORY[0x1E69B2638], MEMORY[0x1E69B2640]);
  swift_allocError();
  (*(v6 + 16))(v9, v3, v5);
  swift_willThrow();
  (*(v6 + 8))(v3, v5);
  (*(v2 + 8))(v1, v4);

  v10 = v0[1];

  return v10();
}

uint64_t (*closure #3 in InferenceRequestHandler.init<A, B>(identifier:fetchModelMetadata:countTokens:countTokensPromptTemplate:completePrompt:completePromptTemplate:streamPromptCompletion:streamPromptTemplateCompletion:registerDocuments:fetchTokenizerMetadata:classifyPrompt:classifyPromptTemplate:compileAdapter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8))@<X0>(uint64_t *a1@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v12[1];
  v18[0] = *v12;
  v18[1] = v13;
  v14 = v12[3];
  v18[2] = v12[2];
  v18[3] = v14;
  v15(v18);
  v16 = type metadata accessor for DocumentRegistration();
  return InferenceRequestHandler.ResponseStream.init<A>(_:)(v11, v16, a6, a8);
}

uint64_t closure #5 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:streamPromptCompletion:registerDocuments:)(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v7 = type metadata accessor for InferenceError.Context();
  v6[4] = v7;
  v6[5] = *(v7 - 8);
  v6[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #5 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:streamPromptCompletion:registerDocuments:), 0, 0);
}

uint64_t closure #5 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:streamPromptCompletion:registerDocuments:)()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[2];
  _StringGuts.grow(_:)(56);
  MEMORY[0x1AC5A5BC0](v5, v3);
  MEMORY[0x1AC5A5BC0](0xD000000000000036, 0x80000001ABA410B0);
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0gq5Tf4g_n(MEMORY[0x1E69E7CC0]);
  InferenceError.Context.init(additionalDescription:domain:code:userInfo:fallbackAllowed:)();
  v6 = type metadata accessor for InferenceError();
  lazy protocol witness table accessor for type OneShotRequest and conformance OneShotRequest(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, MEMORY[0x1E69B2638], MEMORY[0x1E69B2640]);
  swift_allocError();
  v8 = v7;
  (*(v2 + 16))(v7, v1, v4);
  (*(*(v6 - 8) + 104))(v8, *MEMORY[0x1E69B25F0], v6);
  swift_willThrow();
  (*(v2 + 8))(v1, v4);

  v9 = v0[1];

  return v9();
}

uint64_t closure #6 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:streamPromptCompletion:registerDocuments:)(__n128 a1)
{
  v2 = type metadata accessor for InferenceError();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = type metadata accessor for InferenceError.Context();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #6 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:streamPromptCompletion:registerDocuments:), 0, 0);
}

uint64_t closure #6 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:streamPromptCompletion:registerDocuments:)()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[3];
  v6 = v0[4];
  _StringGuts.grow(_:)(85);
  MEMORY[0x1AC5A5BC0](0xD00000000000001BLL, 0x80000001ABA40F90);
  v0[2] = &type metadata for InferenceRequestHandler;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration23InferenceRequestHandlerVmMd, &_s15TokenGeneration23InferenceRequestHandlerVmMR);
  v7 = String.init<A>(describing:)();
  MEMORY[0x1AC5A5BC0](v7);

  MEMORY[0x1AC5A5BC0](0xD000000000000038, 0x80000001ABA41070);
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0gq5Tf4g_n(MEMORY[0x1E69E7CC0]);
  InferenceError.Context.init(additionalDescription:domain:code:userInfo:fallbackAllowed:)();
  (*(v2 + 16))(v3, v1, v4);
  (*(v6 + 104))(v3, *MEMORY[0x1E69B25F0], v5);
  lazy protocol witness table accessor for type OneShotRequest and conformance OneShotRequest(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, MEMORY[0x1E69B2638], MEMORY[0x1E69B2640]);
  swift_allocError();
  (*(v6 + 16))(v8, v3, v5);
  swift_willThrow();
  (*(v6 + 8))(v3, v5);
  (*(v2 + 8))(v1, v4);

  v9 = v0[1];

  return v9();
}

uint64_t closure #7 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:streamPromptCompletion:registerDocuments:)(__n128 a1)
{
  v2 = type metadata accessor for InferenceError();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = type metadata accessor for InferenceError.Context();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #7 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:streamPromptCompletion:registerDocuments:), 0, 0);
}

uint64_t closure #7 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:streamPromptCompletion:registerDocuments:)()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[3];
  v6 = v0[4];
  _StringGuts.grow(_:)(89);
  MEMORY[0x1AC5A5BC0](0xD00000000000001BLL, 0x80000001ABA40F90);
  v0[2] = &type metadata for InferenceRequestHandler;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration23InferenceRequestHandlerVmMd, &_s15TokenGeneration23InferenceRequestHandlerVmMR);
  v7 = String.init<A>(describing:)();
  MEMORY[0x1AC5A5BC0](v7);

  MEMORY[0x1AC5A5BC0](0xD00000000000003CLL, 0x80000001ABA41030);
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0gq5Tf4g_n(MEMORY[0x1E69E7CC0]);
  InferenceError.Context.init(additionalDescription:domain:code:userInfo:fallbackAllowed:)();
  (*(v2 + 16))(v3, v1, v4);
  (*(v6 + 104))(v3, *MEMORY[0x1E69B25F0], v5);
  lazy protocol witness table accessor for type OneShotRequest and conformance OneShotRequest(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, MEMORY[0x1E69B2638], MEMORY[0x1E69B2640]);
  swift_allocError();
  (*(v6 + 16))(v8, v3, v5);
  swift_willThrow();
  (*(v6 + 8))(v3, v5);
  (*(v2 + 8))(v1, v4);

  v9 = v0[1];

  return v9();
}

uint64_t closure #9 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:streamPromptCompletion:registerDocuments:)(__n128 a1)
{
  v2 = type metadata accessor for InferenceError();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = type metadata accessor for InferenceError.Context();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #9 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:streamPromptCompletion:registerDocuments:), 0, 0);
}

uint64_t closure #9 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:streamPromptCompletion:registerDocuments:)()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[3];
  v6 = v0[4];
  _StringGuts.grow(_:)(88);
  MEMORY[0x1AC5A5BC0](0xD00000000000001BLL, 0x80000001ABA40F90);
  v0[2] = &type metadata for InferenceRequestHandler;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration23InferenceRequestHandlerVmMd, &_s15TokenGeneration23InferenceRequestHandlerVmMR);
  v7 = String.init<A>(describing:)();
  MEMORY[0x1AC5A5BC0](v7);

  MEMORY[0x1AC5A5BC0](0xD00000000000003BLL, 0x80000001ABA40FF0);
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0gq5Tf4g_n(MEMORY[0x1E69E7CC0]);
  InferenceError.Context.init(additionalDescription:domain:code:userInfo:fallbackAllowed:)();
  (*(v2 + 16))(v3, v1, v4);
  (*(v6 + 104))(v3, *MEMORY[0x1E69B25F0], v5);
  lazy protocol witness table accessor for type OneShotRequest and conformance OneShotRequest(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, MEMORY[0x1E69B2638], MEMORY[0x1E69B2640]);
  swift_allocError();
  (*(v6 + 16))(v8, v3, v5);
  swift_willThrow();
  (*(v6 + 8))(v3, v5);
  (*(v2 + 8))(v1, v4);

  v9 = v0[1];

  return v9();
}

uint64_t closure #10 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:streamPromptCompletion:registerDocuments:)(__n128 a1)
{
  v2 = type metadata accessor for InferenceError();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = type metadata accessor for InferenceError.Context();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #10 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:streamPromptCompletion:registerDocuments:), 0, 0);
}

uint64_t closure #10 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:streamPromptCompletion:registerDocuments:)()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[3];
  v6 = v0[4];
  _StringGuts.grow(_:)(88);
  MEMORY[0x1AC5A5BC0](0xD00000000000001BLL, 0x80000001ABA40F90);
  v0[2] = &type metadata for InferenceRequestHandler;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration23InferenceRequestHandlerVmMd, &_s15TokenGeneration23InferenceRequestHandlerVmMR);
  v7 = String.init<A>(describing:)();
  MEMORY[0x1AC5A5BC0](v7);

  MEMORY[0x1AC5A5BC0](0xD00000000000003BLL, 0x80000001ABA40FB0);
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0gq5Tf4g_n(MEMORY[0x1E69E7CC0]);
  InferenceError.Context.init(additionalDescription:domain:code:userInfo:fallbackAllowed:)();
  (*(v2 + 16))(v3, v1, v4);
  (*(v6 + 104))(v3, *MEMORY[0x1E69B25F0], v5);
  lazy protocol witness table accessor for type OneShotRequest and conformance OneShotRequest(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, MEMORY[0x1E69B2638], MEMORY[0x1E69B2640]);
  swift_allocError();
  (*(v6 + 16))(v8, v3, v5);
  swift_willThrow();
  (*(v6 + 8))(v3, v5);
  (*(v2 + 8))(v1, v4);

  v9 = v0[1];

  return v9();
}

uint64_t specialized closure #1 in InferenceRequestHandler.ResponseStream.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16AsyncMapSequenceVy15TokenGeneration18InstrumentedStreamVyAC23InferenceRequestHandlerV08ResponseG033_6CE5FDA809054AFDA0F170337ADF1236LLVy_AC014CompletePromptK7ElementVGG10Foundation4DataVGMd, &_ss16AsyncMapSequenceVy15TokenGeneration18InstrumentedStreamVyAC23InferenceRequestHandlerV08ResponseG033_6CE5FDA809054AFDA0F170337ADF1236LLVy_AC014CompletePromptK7ElementVGG10Foundation4DataVGMR);
  v5 = MEMORY[0x1EEE9AC00](v4);
  (*(v7 + 16))(&v9 - v6, a1, v4, v5);
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16AsyncMapSequenceV8IteratorVy15TokenGeneration18InstrumentedStreamVyAE23InferenceRequestHandlerV08ResponseH033_6CE5FDA809054AFDA0F170337ADF1236LLVy_AE014CompletePromptL7ElementVGG10Foundation4DataV_GMd, &_ss16AsyncMapSequenceV8IteratorVy15TokenGeneration18InstrumentedStreamVyAE23InferenceRequestHandlerV08ResponseH033_6CE5FDA809054AFDA0F170337ADF1236LLVy_AE014CompletePromptL7ElementVGG10Foundation4DataV_GMR);
  a2[4] = lazy protocol witness table accessor for type TokenStream<String> and conformance TokenStream<A>(&lazy protocol witness table cache variable for type AsyncMapSequence<InstrumentedStream<InferenceRequestHandler.ResponseStream<CompletePromptResponseElement>>, Data>.Iterator and conformance AsyncMapSequence<A, B>.Iterator, &_ss16AsyncMapSequenceV8IteratorVy15TokenGeneration18InstrumentedStreamVyAE23InferenceRequestHandlerV08ResponseH033_6CE5FDA809054AFDA0F170337ADF1236LLVy_AE014CompletePromptL7ElementVGG10Foundation4DataV_GMd, &_ss16AsyncMapSequenceV8IteratorVy15TokenGeneration18InstrumentedStreamVyAE23InferenceRequestHandlerV08ResponseH033_6CE5FDA809054AFDA0F170337ADF1236LLVy_AE014CompletePromptL7ElementVGG10Foundation4DataV_GMR, MEMORY[0x1E69E8868]);
  __swift_allocate_boxed_opaque_existential_1(a2);
  lazy protocol witness table accessor for type TokenStream<String> and conformance TokenStream<A>(&lazy protocol witness table cache variable for type AsyncMapSequence<InstrumentedStream<InferenceRequestHandler.ResponseStream<CompletePromptResponseElement>>, Data> and conformance AsyncMapSequence<A, B>, &_ss16AsyncMapSequenceVy15TokenGeneration18InstrumentedStreamVyAC23InferenceRequestHandlerV08ResponseG033_6CE5FDA809054AFDA0F170337ADF1236LLVy_AC014CompletePromptK7ElementVGG10Foundation4DataVGMd, &_ss16AsyncMapSequenceVy15TokenGeneration18InstrumentedStreamVyAC23InferenceRequestHandlerV08ResponseG033_6CE5FDA809054AFDA0F170337ADF1236LLVy_AC014CompletePromptK7ElementVGG10Foundation4DataVGMR, MEMORY[0x1E69E8878]);
  return dispatch thunk of AsyncSequence.makeAsyncIterator()();
}

{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16AsyncMapSequenceVy15TokenGeneration18InstrumentedStreamVyAC23InferenceRequestHandlerV08ResponseG033_6CE5FDA809054AFDA0F170337ADF1236LLVy_26GenerativeModelsFoundation20DocumentRegistrationVGG20ModelManagerServices10ClientDataVGMd, &_ss16AsyncMapSequenceVy15TokenGeneration18InstrumentedStreamVyAC23InferenceRequestHandlerV08ResponseG033_6CE5FDA809054AFDA0F170337ADF1236LLVy_26GenerativeModelsFoundation20DocumentRegistrationVGG20ModelManagerServices10ClientDataVGMR);
  v5 = MEMORY[0x1EEE9AC00](v4);
  (*(v7 + 16))(&v9 - v6, a1, v4, v5);
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16AsyncMapSequenceV8IteratorVy15TokenGeneration18InstrumentedStreamVyAE23InferenceRequestHandlerV08ResponseH033_6CE5FDA809054AFDA0F170337ADF1236LLVy_26GenerativeModelsFoundation20DocumentRegistrationVGG20ModelManagerServices10ClientDataV_GMd, &_ss16AsyncMapSequenceV8IteratorVy15TokenGeneration18InstrumentedStreamVyAE23InferenceRequestHandlerV08ResponseH033_6CE5FDA809054AFDA0F170337ADF1236LLVy_26GenerativeModelsFoundation20DocumentRegistrationVGG20ModelManagerServices10ClientDataV_GMR);
  a2[4] = lazy protocol witness table accessor for type TokenStream<String> and conformance TokenStream<A>(&lazy protocol witness table cache variable for type AsyncMapSequence<InstrumentedStream<InferenceRequestHandler.ResponseStream<DocumentRegistration>>, ClientData>.Iterator and conformance AsyncMapSequence<A, B>.Iterator, &_ss16AsyncMapSequenceV8IteratorVy15TokenGeneration18InstrumentedStreamVyAE23InferenceRequestHandlerV08ResponseH033_6CE5FDA809054AFDA0F170337ADF1236LLVy_26GenerativeModelsFoundation20DocumentRegistrationVGG20ModelManagerServices10ClientDataV_GMd, &_ss16AsyncMapSequenceV8IteratorVy15TokenGeneration18InstrumentedStreamVyAE23InferenceRequestHandlerV08ResponseH033_6CE5FDA809054AFDA0F170337ADF1236LLVy_26GenerativeModelsFoundation20DocumentRegistrationVGG20ModelManagerServices10ClientDataV_GMR, MEMORY[0x1E69E8868]);
  __swift_allocate_boxed_opaque_existential_1(a2);
  lazy protocol witness table accessor for type TokenStream<String> and conformance TokenStream<A>(&lazy protocol witness table cache variable for type AsyncMapSequence<InstrumentedStream<InferenceRequestHandler.ResponseStream<DocumentRegistration>>, ClientData> and conformance AsyncMapSequence<A, B>, &_ss16AsyncMapSequenceVy15TokenGeneration18InstrumentedStreamVyAC23InferenceRequestHandlerV08ResponseG033_6CE5FDA809054AFDA0F170337ADF1236LLVy_26GenerativeModelsFoundation20DocumentRegistrationVGG20ModelManagerServices10ClientDataVGMd, &_ss16AsyncMapSequenceVy15TokenGeneration18InstrumentedStreamVyAC23InferenceRequestHandlerV08ResponseG033_6CE5FDA809054AFDA0F170337ADF1236LLVy_26GenerativeModelsFoundation20DocumentRegistrationVGG20ModelManagerServices10ClientDataVGMR, MEMORY[0x1E69E8878]);
  return dispatch thunk of AsyncSequence.makeAsyncIterator()();
}

{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16AsyncMapSequenceVy15TokenGeneration18InstrumentedStreamVyAC23InferenceRequestHandlerV08ResponseG033_6CE5FDA809054AFDA0F170337ADF1236LLVy_AC014CompletePromptK7ElementVGG20ModelManagerServices10ClientDataVGMd, &_ss16AsyncMapSequenceVy15TokenGeneration18InstrumentedStreamVyAC23InferenceRequestHandlerV08ResponseG033_6CE5FDA809054AFDA0F170337ADF1236LLVy_AC014CompletePromptK7ElementVGG20ModelManagerServices10ClientDataVGMR);
  v5 = MEMORY[0x1EEE9AC00](v4);
  (*(v7 + 16))(&v9 - v6, a1, v4, v5);
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16AsyncMapSequenceV8IteratorVy15TokenGeneration18InstrumentedStreamVyAE23InferenceRequestHandlerV08ResponseH033_6CE5FDA809054AFDA0F170337ADF1236LLVy_AE014CompletePromptL7ElementVGG20ModelManagerServices10ClientDataV_GMd, &_ss16AsyncMapSequenceV8IteratorVy15TokenGeneration18InstrumentedStreamVyAE23InferenceRequestHandlerV08ResponseH033_6CE5FDA809054AFDA0F170337ADF1236LLVy_AE014CompletePromptL7ElementVGG20ModelManagerServices10ClientDataV_GMR);
  a2[4] = lazy protocol witness table accessor for type TokenStream<String> and conformance TokenStream<A>(&lazy protocol witness table cache variable for type AsyncMapSequence<InstrumentedStream<InferenceRequestHandler.ResponseStream<CompletePromptResponseElement>>, ClientData>.Iterator and conformance AsyncMapSequence<A, B>.Iterator, &_ss16AsyncMapSequenceV8IteratorVy15TokenGeneration18InstrumentedStreamVyAE23InferenceRequestHandlerV08ResponseH033_6CE5FDA809054AFDA0F170337ADF1236LLVy_AE014CompletePromptL7ElementVGG20ModelManagerServices10ClientDataV_GMd, &_ss16AsyncMapSequenceV8IteratorVy15TokenGeneration18InstrumentedStreamVyAE23InferenceRequestHandlerV08ResponseH033_6CE5FDA809054AFDA0F170337ADF1236LLVy_AE014CompletePromptL7ElementVGG20ModelManagerServices10ClientDataV_GMR, MEMORY[0x1E69E8868]);
  __swift_allocate_boxed_opaque_existential_1(a2);
  lazy protocol witness table accessor for type TokenStream<String> and conformance TokenStream<A>(&lazy protocol witness table cache variable for type AsyncMapSequence<InstrumentedStream<InferenceRequestHandler.ResponseStream<CompletePromptResponseElement>>, ClientData> and conformance AsyncMapSequence<A, B>, &_ss16AsyncMapSequenceVy15TokenGeneration18InstrumentedStreamVyAC23InferenceRequestHandlerV08ResponseG033_6CE5FDA809054AFDA0F170337ADF1236LLVy_AC014CompletePromptK7ElementVGG20ModelManagerServices10ClientDataVGMd, &_ss16AsyncMapSequenceVy15TokenGeneration18InstrumentedStreamVyAC23InferenceRequestHandlerV08ResponseG033_6CE5FDA809054AFDA0F170337ADF1236LLVy_AC014CompletePromptK7ElementVGG20ModelManagerServices10ClientDataVGMR, MEMORY[0x1E69E8878]);
  return dispatch thunk of AsyncSequence.makeAsyncIterator()();
}

{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScsy15TokenGeneration29CompletePromptResponseElementVs5Error_pGMd, &_sScsy15TokenGeneration29CompletePromptResponseElementVs5Error_pGMR);
  v5 = MEMORY[0x1EEE9AC00](v4);
  (*(v7 + 16))(&v9 - v6, a1, v4, v5);
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs8IteratorVy15TokenGeneration29CompletePromptResponseElementVs5Error_p_GMd, &_sScs8IteratorVy15TokenGeneration29CompletePromptResponseElementVs5Error_p_GMR);
  a2[4] = lazy protocol witness table accessor for type TokenStream<String> and conformance TokenStream<A>(&lazy protocol witness table cache variable for type AsyncThrowingStream<CompletePromptResponseElement, Error>.Iterator and conformance AsyncThrowingStream<A, B>.Iterator, &_sScs8IteratorVy15TokenGeneration29CompletePromptResponseElementVs5Error_p_GMd, &_sScs8IteratorVy15TokenGeneration29CompletePromptResponseElementVs5Error_p_GMR, MEMORY[0x1E69E87C0]);
  __swift_allocate_boxed_opaque_existential_1(a2);
  lazy protocol witness table accessor for type TokenStream<String> and conformance TokenStream<A>(&lazy protocol witness table cache variable for type AsyncThrowingStream<CompletePromptResponseElement, Error> and conformance AsyncThrowingStream<A, B>, &_sScsy15TokenGeneration29CompletePromptResponseElementVs5Error_pGMd, &_sScsy15TokenGeneration29CompletePromptResponseElementVs5Error_pGMR, MEMORY[0x1E69E87D0]);
  return dispatch thunk of AsyncSequence.makeAsyncIterator()();
}

{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScsy26GenerativeModelsFoundation20DocumentRegistrationVs5Error_pGMd, &_sScsy26GenerativeModelsFoundation20DocumentRegistrationVs5Error_pGMR);
  v5 = MEMORY[0x1EEE9AC00](v4);
  (*(v7 + 16))(&v9 - v6, a1, v4, v5);
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs8IteratorVy26GenerativeModelsFoundation20DocumentRegistrationVs5Error_p_GMd, &_sScs8IteratorVy26GenerativeModelsFoundation20DocumentRegistrationVs5Error_p_GMR);
  a2[4] = lazy protocol witness table accessor for type TokenStream<String> and conformance TokenStream<A>(&lazy protocol witness table cache variable for type AsyncThrowingStream<DocumentRegistration, Error>.Iterator and conformance AsyncThrowingStream<A, B>.Iterator, &_sScs8IteratorVy26GenerativeModelsFoundation20DocumentRegistrationVs5Error_p_GMd, &_sScs8IteratorVy26GenerativeModelsFoundation20DocumentRegistrationVs5Error_p_GMR, MEMORY[0x1E69E87C0]);
  __swift_allocate_boxed_opaque_existential_1(a2);
  lazy protocol witness table accessor for type TokenStream<String> and conformance TokenStream<A>(&lazy protocol witness table cache variable for type AsyncThrowingStream<DocumentRegistration, Error> and conformance AsyncThrowingStream<A, B>, &_sScsy26GenerativeModelsFoundation20DocumentRegistrationVs5Error_pGMd, &_sScsy26GenerativeModelsFoundation20DocumentRegistrationVs5Error_pGMR, MEMORY[0x1E69E87D0]);
  return dispatch thunk of AsyncSequence.makeAsyncIterator()();
}

uint64_t closure #1 in InferenceRequestHandler.ResponseStream.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a4@<X8>)
{
  v5 = MEMORY[0x1EEE9AC00](a1);
  (*(v7 + 16))(&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  a4[3] = swift_getAssociatedTypeWitness();
  a4[4] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(a4);
  return dispatch thunk of AsyncSequence.makeAsyncIterator()();
}

uint64_t InferenceRequestHandler.ResponseStream.AsyncIterator.next()(uint64_t a1, uint64_t a2, __n128 a3)
{
  v4[8] = a2;
  v4[9] = v3;
  v4[7] = a1;
  v4[10] = type metadata accessor for TokenGenerationError(0);
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](InferenceRequestHandler.ResponseStream.AsyncIterator.next(), 0, 0);
}

uint64_t InferenceRequestHandler.ResponseStream.AsyncIterator.next()()
{
  static Task<>.checkCancellation()();
  v1 = v0[9];
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v1, v2);
  v0[13] = swift_getAssociatedTypeWitness();
  v4 = type metadata accessor for Optional();
  v0[14] = v4;
  v0[15] = *(v4 - 8);
  v5 = swift_task_alloc();
  v0[16] = v5;
  v6 = swift_task_alloc();
  v0[17] = v6;
  *v6 = v0;
  v6[1] = InferenceRequestHandler.ResponseStream.AsyncIterator.next();

  return MEMORY[0x1EEE6D8C8](v5, v2, v3);
}

{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = InferenceRequestHandler.ResponseStream.AsyncIterator.next();
  }

  else
  {
    v2 = InferenceRequestHandler.ResponseStream.AsyncIterator.next();
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v1 = *(v0 + 128);
  v2 = *(v0 + 104);
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(*(v0 + 120) + 8))(v1, *(v0 + 112));

    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
  }

  else
  {
    *(v0 + 40) = v2;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
    (*(v3 + 32))(boxed_opaque_existential_1, v1, v2);
  }

  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v7 = *(v6 + 16);
  v8 = swift_dynamicCast();
  (*(*(v7 - 8) + 56))(v5, v8 ^ 1u, 1, v7);

  v9 = *(v0 + 8);

  return v9();
}

{

  v1 = *(v0 + 144);
  *(v0 + 48) = v1;
  MEMORY[0x1AC5A6AE0](v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 88);
    v2 = *(v0 + 96);

    outlined init with take of OneShotRequest(v2, v3, type metadata accessor for TokenGenerationError);
    type metadata accessor for InferenceError();
    lazy protocol witness table accessor for type OneShotRequest and conformance OneShotRequest(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, MEMORY[0x1E69B2638], MEMORY[0x1E69B2640]);
    swift_allocError();
    TokenGenerationError.toInferenceError()(v4);
    swift_willThrow();
    _s15TokenGeneration14OneShotRequestOWOhTm_0(v3, type metadata accessor for TokenGenerationError);
  }

  else
  {

    swift_willThrow();
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t protocol witness for AsyncIteratorProtocol.next() in conformance InferenceRequestHandler.ResponseStream<A>.AsyncIterator(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return InferenceRequestHandler.ResponseStream.AsyncIterator.next()(a1, a2, v6);
}

uint64_t _s15TokenGeneration23InferenceRequestHandlerV14ResponseStream33_6CE5FDA809054AFDA0F170337ADF1236LLV13AsyncIteratorVy_x_GScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTW(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a4;
  v12 = swift_task_alloc();
  *(v6 + 32) = v12;
  *v12 = v6;
  v12[1] = _s15TokenGeneration23InferenceRequestHandlerV14ResponseStream33_6CE5FDA809054AFDA0F170337ADF1236LLV13AsyncIteratorVy_x_GScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTQ0_;

  return MEMORY[0x1EEE6D8E0](a1, a2, a3, a5, a6, v6 + 16);
}

uint64_t _s15TokenGeneration23InferenceRequestHandlerV14ResponseStream33_6CE5FDA809054AFDA0F170337ADF1236LLV13AsyncIteratorVy_x_GScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTQ0_()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    **(v2 + 24) = *(v2 + 16);
  }

  v4 = *(v3 + 8);

  return v4();
}

uint64_t protocol witness for AsyncSequence.makeAsyncIterator() in conformance InferenceRequestHandler.ResponseStream<A>@<X0>(uint64_t a1@<X8>)
{
  InferenceRequestHandler.ResponseStream.makeAsyncIterator()(*v1, a1);
}

uint64_t partial apply for closure #1 in InferenceRequestHandler.handleRequest(data:configuration:)(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = partial apply for closure #1 in static TokenGenerator.scrubIfNeeded(inputPrompt:stringRenderedPromptSanitizerWithConfiguration:);

  return closure #1 in InferenceRequestHandler.handleRequest(data:configuration:)(a1, a2, v6, v7, v8, v10);
}

uint64_t partial apply for closure #1 in InferenceRequestHandler.handleStreamingRequest(data:configuration:)()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return closure #1 in InferenceRequestHandler.handleStreamingRequest(data:configuration:)(v2, v4);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable @async () -> (@error @owned Error)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return thunk for @escaping @callee_guaranteed @Sendable @async () -> (@error @owned Error)(a1, v4);
}

uint64_t partial apply for specialized closure #1 in InferenceRequestHandler.ResponseStream.init<A>(_:)()
{
  return partial apply for specialized closure #1 in InferenceRequestHandler.ResponseStream.init<A>(_:)(&_ss16AsyncMapSequenceVy15TokenGeneration18InstrumentedStreamVyAC23InferenceRequestHandlerV08ResponseG033_6CE5FDA809054AFDA0F170337ADF1236LLVy_AC014CompletePromptK7ElementVGG10Foundation4DataVGMd, &_ss16AsyncMapSequenceVy15TokenGeneration18InstrumentedStreamVyAC23InferenceRequestHandlerV08ResponseG033_6CE5FDA809054AFDA0F170337ADF1236LLVy_AC014CompletePromptK7ElementVGG10Foundation4DataVGMR, specialized closure #1 in InferenceRequestHandler.ResponseStream.init<A>(_:));
}

{
  return partial apply for specialized closure #1 in InferenceRequestHandler.ResponseStream.init<A>(_:)(&_ss16AsyncMapSequenceVy15TokenGeneration18InstrumentedStreamVyAC23InferenceRequestHandlerV08ResponseG033_6CE5FDA809054AFDA0F170337ADF1236LLVy_26GenerativeModelsFoundation20DocumentRegistrationVGG20ModelManagerServices10ClientDataVGMd, &_ss16AsyncMapSequenceVy15TokenGeneration18InstrumentedStreamVyAC23InferenceRequestHandlerV08ResponseG033_6CE5FDA809054AFDA0F170337ADF1236LLVy_26GenerativeModelsFoundation20DocumentRegistrationVGG20ModelManagerServices10ClientDataVGMR, specialized closure #1 in InferenceRequestHandler.ResponseStream.init<A>(_:));
}

{
  return partial apply for specialized closure #1 in InferenceRequestHandler.ResponseStream.init<A>(_:)(&_ss16AsyncMapSequenceVy15TokenGeneration18InstrumentedStreamVyAC23InferenceRequestHandlerV08ResponseG033_6CE5FDA809054AFDA0F170337ADF1236LLVy_AC014CompletePromptK7ElementVGG20ModelManagerServices10ClientDataVGMd, &_ss16AsyncMapSequenceVy15TokenGeneration18InstrumentedStreamVyAC23InferenceRequestHandlerV08ResponseG033_6CE5FDA809054AFDA0F170337ADF1236LLVy_AC014CompletePromptK7ElementVGG20ModelManagerServices10ClientDataVGMR, specialized closure #1 in InferenceRequestHandler.ResponseStream.init<A>(_:));
}

{
  return partial apply for specialized closure #1 in InferenceRequestHandler.ResponseStream.init<A>(_:)(&_sScsy15TokenGeneration29CompletePromptResponseElementVs5Error_pGMd, &_sScsy15TokenGeneration29CompletePromptResponseElementVs5Error_pGMR, specialized closure #1 in InferenceRequestHandler.ResponseStream.init<A>(_:));
}

{
  return partial apply for specialized closure #1 in InferenceRequestHandler.ResponseStream.init<A>(_:)(&_sScsy26GenerativeModelsFoundation20DocumentRegistrationVs5Error_pGMd, &_sScsy26GenerativeModelsFoundation20DocumentRegistrationVs5Error_pGMR, specialized closure #1 in InferenceRequestHandler.ResponseStream.init<A>(_:));
}

uint64_t partial apply for specialized closure #1 in InferenceRequestHandler.ResponseStream.init<A>(_:)(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a1, a2) - 8);
  v5 = v3 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a3(v5);
}

uint64_t partial apply for closure #1 in InferenceRequestHandler.handleStreamingRequest(clientData:configuration:)()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return closure #1 in InferenceRequestHandler.handleStreamingRequest(clientData:configuration:)(v2, v4);
}

uint64_t objectdestroy_31Tm(__n128 a1)
{
  v2 = *(type metadata accessor for StreamingRequest(0) - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for InferenceProviderRequestConfiguration();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v37 = *(v7 + 64);

  v9 = v1 + v4;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload != 1)
    {
      if (EnumCaseMultiPayload)
      {
        goto LABEL_37;
      }

      v35 = v5;
      v36 = (v3 + 32) & ~v3;
      v11 = type metadata accessor for XPCDictionary();
      (*(*(v11 - 8) + 8))(v1 + v4, v11);
      v12 = type metadata accessor for CompletePromptRequest(0);

      v13 = v12[6];
      type metadata accessor for PromptVariantEnvelope(0);
      v14 = type metadata accessor for OverridableConfigurationStorage();
      (*(*(v14 - 8) + 8))(v9 + v13, v14);

      v15 = v9 + v12[8];
      v16 = type metadata accessor for Constraints(0);
      if ((*(*(v16 - 8) + 48))(v15, 1, v16))
      {
        goto LABEL_32;
      }

      v17 = swift_getEnumCaseMultiPayload();
      if (v17 <= 1)
      {
        if (!v17)
        {
          v32 = type metadata accessor for GenerationSchema();
          (*(*(v32 - 8) + 8))(v15, v32);
          goto LABEL_32;
        }

        if (v17 != 1)
        {
LABEL_32:

          if (*(v9 + v12[10] + 8) >= 4uLL)
          {
          }

          goto LABEL_35;
        }
      }

      else if (v17 != 2 && v17 != 3 && v17 != 4)
      {
        goto LABEL_32;
      }

      goto LABEL_32;
    }

    v36 = (v3 + 32) & ~v3;
    v18 = type metadata accessor for XPCDictionary();
    (*(*(v18 - 8) + 8))(v1 + v4, v18);
    v19 = type metadata accessor for CompletePromptTemplateRequest(0);
    if (*(v9 + v19[5] + 8))
    {
    }

    v34 = v6;
    v35 = v5;
    v20 = v19[6];
    v21 = type metadata accessor for PromptVariantEnvelope(0);
    if (!(*(*(v21 - 8) + 48))(v9 + v20, 1, v21))
    {
      v22 = type metadata accessor for OverridableConfigurationStorage();
      (*(*(v22 - 8) + 8))(v9 + v20, v22);
    }

    v23 = v9 + v19[7];

    v24 = *(type metadata accessor for PromptTemplateInfoEnvelope(0) + 24);
    v25 = type metadata accessor for Locale();
    v26 = *(v25 - 8);
    if (!(*(v26 + 48))(v23 + v24, 1, v25))
    {
      (*(v26 + 8))(v23 + v24, v25);
    }

    v6 = v34;
    if (*(v9 + v19[10] + 8) >= 4uLL)
    {
    }

    v27 = v9 + v19[12];
    v28 = type metadata accessor for Constraints(0);
    if ((*(*(v28 - 8) + 48))(v27, 1, v28))
    {
      goto LABEL_35;
    }

    v29 = swift_getEnumCaseMultiPayload();
    if (v29 > 1)
    {
      if (v29 != 2 && v29 != 3 && v29 != 4)
      {
        goto LABEL_35;
      }

      goto LABEL_27;
    }

    if (v29)
    {
      if (v29 == 1)
      {
LABEL_27:
      }
    }

    else
    {
      v31 = type metadata accessor for GenerationSchema();
      (*(*(v31 - 8) + 8))(v27, v31);
    }

LABEL_35:

    v5 = v35;
    v4 = v36;
    goto LABEL_36;
  }

LABEL_36:

LABEL_37:
  v30 = (v4 + v5 + v8) & ~v8;
  (*(v7 + 8))(v1 + v30, v6);

  return MEMORY[0x1EEE6BDD0](v1, v30 + v37, v3 | v8 | 7);
}

uint64_t partial apply for closure #2 in InferenceRequestHandler.handleStreamingRequest(data:configuration:)(__n128 a1)
{
  v2 = *(type metadata accessor for StreamingRequest(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(type metadata accessor for InferenceProviderRequestConfiguration() - 8);
  return closure #2 in InferenceRequestHandler.handleStreamingRequest(data:configuration:)(*(v1 + 16), *(v1 + 24), v1 + v3, v1 + ((v3 + v4 + *(v5 + 80)) & ~*(v5 + 80)));
}

uint64_t partial apply for closure #4 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:completePromptTemplate:streamPromptCompletion:streamPromptTemplateCompletion:registerDocuments:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v8 = *(v3 + 24);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return closure #4 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:completePromptTemplate:streamPromptCompletion:streamPromptTemplateCompletion:registerDocuments:)(v11, a1, a2, a3, v9, v8);
}

uint64_t partial apply for closure #3 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:streamPromptCompletion:registerDocuments:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v8 = *(v3 + 24);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return closure #4 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:completePromptTemplate:streamPromptCompletion:streamPromptTemplateCompletion:registerDocuments:)(v11, a1, a2, a3, v9, v8);
}

uint64_t partial apply for closure #5 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:streamPromptCompletion:registerDocuments:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v8 = *(v3 + 24);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return closure #4 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:completePromptTemplate:streamPromptCompletion:streamPromptTemplateCompletion:registerDocuments:)(v11, a1, a2, a3, v9, v8);
}

{
  v9 = *(v3 + 16);
  v8 = *(v3 + 24);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return closure #5 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:streamPromptCompletion:registerDocuments:)(v11, a1, a2, a3, v9, v8);
}

uint64_t partial apply for closure #1 in InferenceRequestHandler.init<A>(identifier:countTokens:completePrompt:streamPromptCompletion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v8 = *(v3 + 24);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return closure #1 in InferenceRequestHandler.init<A>(identifier:countTokens:completePrompt:streamPromptCompletion:)(v11, a1, a2, a3, v9, v8);
}

{
  v9 = *(v3 + 16);
  v8 = *(v3 + 24);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return closure #1 in InferenceRequestHandler.init<A>(identifier:countTokens:completePrompt:streamPromptCompletion:)(v11, a1, a2, a3, v9, v8);
}

uint64_t (*partial apply for closure #2 in InferenceRequestHandler.init<A>(identifier:countTokens:completePrompt:streamPromptCompletion:)(uint64_t a1, uint64_t a2))@<X0>(uint64_t *a1@<X8>)
{
  return closure #2 in InferenceRequestHandler.init<A>(identifier:countTokens:completePrompt:streamPromptCompletion:)(a1, a2, *(v2 + 32), *(v2 + 40), *(v2 + 16), *(v2 + 24));
}

{
  return closure #2 in InferenceRequestHandler.init<A>(identifier:countTokens:completePrompt:streamPromptCompletion:)(a1, a2, v2[4], v2[5], v2[2], v2[3]);
}

uint64_t (*partial apply for closure #3 in InferenceRequestHandler.init<A>(identifier:countTokens:completePrompt:streamPromptCompletion:)(uint64_t a1, uint64_t a2))()
{
  return closure #3 in InferenceRequestHandler.init<A>(identifier:countTokens:completePrompt:streamPromptCompletion:)(a1, a2, *(v2 + 16), *(v2 + 24));
}

{
  return closure #3 in InferenceRequestHandler.init<A>(identifier:countTokens:completePrompt:streamPromptCompletion:)(a1, a2, *(v2 + 16), *(v2 + 24));
}

uint64_t (*partial apply for closure #4 in InferenceRequestHandler.init<A>(identifier:countTokens:completePrompt:streamPromptCompletion:)(uint64_t a1, uint64_t a2))()
{
  return closure #4 in InferenceRequestHandler.init<A>(identifier:countTokens:completePrompt:streamPromptCompletion:)(a1, a2, *(v2 + 16), *(v2 + 24));
}

{
  return closure #4 in InferenceRequestHandler.init<A>(identifier:countTokens:completePrompt:streamPromptCompletion:)(a1, a2, *(v2 + 16), *(v2 + 24));
}

uint64_t partial apply for closure #5 in InferenceRequestHandler.init<A>(identifier:countTokens:completePrompt:streamPromptCompletion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v8 = *(v3 + 24);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return closure #4 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:completePromptTemplate:streamPromptCompletion:streamPromptTemplateCompletion:registerDocuments:)(v11, a1, a2, a3, v9, v8);
}

{
  v9 = *(v3 + 16);
  v8 = *(v3 + 24);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return closure #4 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:completePromptTemplate:streamPromptCompletion:streamPromptTemplateCompletion:registerDocuments:)(v11, a1, a2, a3, v9, v8);
}

uint64_t partial apply for closure #1 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:streamPromptCompletion:registerDocuments:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v8 = *(v3 + 24);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return closure #1 in InferenceRequestHandler.init<A>(identifier:countTokens:completePrompt:streamPromptCompletion:)(v11, a1, a2, a3, v9, v8);
}

__n128 __swift_memcpy208_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 192);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = v10;
  *(a1 + 144) = result;
  *(a1 + 160) = v9;
  return result;
}

uint64_t getEnumTagSinglePayload for InferenceRequestHandler(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 208))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for InferenceRequestHandler(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 208) = 1;
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

    *(result + 208) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata instantiation function for InferenceRequestHandler.ResponseStream(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for InferenceRequestHandler.ResponseStream(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for InferenceRequestHandler.ResponseStream(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #3 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:streamPromptCompletion:registerDocuments:)(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return closure #1 in closure #3 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:streamPromptCompletion:registerDocuments:)(v7, a1, v5, v4);
}

uint64_t partial apply for closure #1 in closure #4 in InferenceRequestHandler.init<A>(identifier:countTokens:completePrompt:streamPromptCompletion:)(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return closure #1 in closure #4 in InferenceRequestHandler.init<A>(identifier:countTokens:completePrompt:streamPromptCompletion:)(v7, a1, v5, v4);
}

{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return closure #1 in closure #4 in InferenceRequestHandler.init<A>(identifier:countTokens:completePrompt:streamPromptCompletion:)(v7, a1, v5, v4);
}

uint64_t partial apply for closure #1 in closure #3 in InferenceRequestHandler.init<A>(identifier:countTokens:completePrompt:streamPromptCompletion:)(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return closure #1 in closure #3 in InferenceRequestHandler.init<A>(identifier:countTokens:completePrompt:streamPromptCompletion:)(v7, a1, v5, v4);
}

{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return closure #1 in closure #3 in InferenceRequestHandler.init<A>(identifier:countTokens:completePrompt:streamPromptCompletion:)(v7, a1, v5, v4);
}

uint64_t partial apply for closure #1 in closure #4 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:streamPromptCompletion:registerDocuments:)(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return closure #1 in closure #4 in InferenceRequestHandler.init<A, B>(identifier:countTokens:completePrompt:streamPromptCompletion:registerDocuments:)(v7, a1, v5, v4);
}

uint64_t objectdestroy_35Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x1EEE6BDD0](v2, v6 + v7, v5 | 7);
}

uint64_t outlined init with copy of OneShotRequest(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type CompileAdapterResponse and conformance CompileAdapterResponse()
{
  result = lazy protocol witness table cache variable for type CompileAdapterResponse and conformance CompileAdapterResponse;
  if (!lazy protocol witness table cache variable for type CompileAdapterResponse and conformance CompileAdapterResponse)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompileAdapterResponse and conformance CompileAdapterResponse);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CompileAdapterResponse and conformance CompileAdapterResponse;
  if (!lazy protocol witness table cache variable for type CompileAdapterResponse and conformance CompileAdapterResponse)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompileAdapterResponse and conformance CompileAdapterResponse);
  }

  return result;
}