uint64_t TokenGeneratorResponsePromptCompletionStream.makeAsyncIterator()@<X0>(uint64_t a1@<X8>)
{
  v65 = a1;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScsy15TokenGeneration21PromptCompletionEvent_ps5Error_pGMd, &_sScsy15TokenGeneration21PromptCompletionEvent_ps5Error_pGMR);
  v66 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  *&v62 = &v56 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v63 = &v56 - v4;
  v68 = type metadata accessor for GenerativeFunctionInstrumenter();
  v67 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v6 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v56 - v8;
  v10 = type metadata accessor for StringResponseSanitizerWithConfiguration();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v56 - v15;
  v17 = type metadata accessor for TokenGeneratorResponsePromptCompletionStream(0);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v1 + v17[5], v9, &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMR);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v9, &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMR);
    v18 = *v1;
    v19 = v1[3];
    v20 = v17[6];
    v21 = v67;
    v22 = *(v67 + 16);
    v62 = *(v1 + 1);
    v23 = v6;
    v24 = v68;
    v22(v6, v1 + v20, v68);
    v25 = (v1 + v17[7]);
    v26 = *v25;
    v27 = *(v25 + 8);
    *(&v75 + 1) = &type metadata for PromptCompletionStream;
    v76 = lazy protocol witness table accessor for type PromptCompletionStream and conformance PromptCompletionStream();
    v28 = swift_allocObject();
    *(v28 + 16) = v18;
    *(v28 + 24) = v62;
    *(v28 + 40) = v19;
    *&v74 = v28;
    v77 = v26;
    v78 = v27;
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(&v74, v73, &_s15TokenGeneration17StreamWithTimeout33_7BCBCDF8CEE368FFC3F2C722E3238A4FLLVyAA21PromptCompletionEvent_pGMd, &_s15TokenGeneration17StreamWithTimeout33_7BCBCDF8CEE368FFC3F2C722E3238A4FLLVyAA21PromptCompletionEvent_pGMR);
    v29 = swift_allocObject();
    *(v29 + 16) = 0;
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v73, &v69, &_s15TokenGeneration17StreamWithTimeout33_7BCBCDF8CEE368FFC3F2C722E3238A4FLLVyAA21PromptCompletionEvent_pGMd, &_s15TokenGeneration17StreamWithTimeout33_7BCBCDF8CEE368FFC3F2C722E3238A4FLLVyAA21PromptCompletionEvent_pGMR);
    v30 = swift_allocObject();
    v31 = v70;
    *(v30 + 24) = v69;
    *(v30 + 16) = v29;
    *(v30 + 40) = v31;
    *(v30 + 56) = v71;
    *(v30 + 72) = v72;
    *(v30 + 80) = closure #1 in default argument 1 of AsyncThrowingStream<>.init<A>(_:mapError:);
    *(v30 + 88) = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration21PromptCompletionEvent_pMd, &_s15TokenGeneration21PromptCompletionEvent_pMR);
    v32 = v63;
    AsyncThrowingStream.init<>(unfolding:)();
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v73, &_s15TokenGeneration17StreamWithTimeout33_7BCBCDF8CEE368FFC3F2C722E3238A4FLLVyAA21PromptCompletionEvent_pGMd, &_s15TokenGeneration17StreamWithTimeout33_7BCBCDF8CEE368FFC3F2C722E3238A4FLLVyAA21PromptCompletionEvent_pGMR);

    v33 = type metadata accessor for TokenGeneratorResponsePromptCompletionStream.AsyncIterator(0);
    v22((v65 + *(v33 + 20)), v6, v24);
    v34 = v64;
    MEMORY[0x1AC5A5E40](v64);
    (*(v66 + 8))(v32, v34);
    (*(v21 + 8))(v23, v24);
  }

  else
  {
    v35 = *(v11 + 32);
    v61 = v16;
    v35(v16, v9, v10);
    v36 = *(v11 + 16);
    v37 = *(v1 + 1);
    v57 = *v1;
    v56 = v37;
    v60 = v13;
    v36(v13, v16, v10);
    v38 = v17[6];
    v59 = *(v67 + 16);
    v58 = v6;
    v59(v6, v1 + v38, v68);
    v39 = (v1 + v17[7]);
    v40 = *v39;
    v41 = *(v39 + 8);
    v74 = v57;
    v75 = v56;
    lazy protocol witness table accessor for type PromptCompletionStream and conformance PromptCompletionStream();
    v42 = v63;
    StringResponseSanitizerWithConfiguration.scrub<A>(_:elementToContent:)();
    v43 = v64;
    *(&v75 + 1) = v64;
    v76 = lazy protocol witness table accessor for type TokenStream<String> and conformance TokenStream<A>(&lazy protocol witness table cache variable for type AsyncThrowingStream<PromptCompletionEvent, Error> and conformance AsyncThrowingStream<A, B>, &_sScsy15TokenGeneration21PromptCompletionEvent_ps5Error_pGMd, &_sScsy15TokenGeneration21PromptCompletionEvent_ps5Error_pGMR, MEMORY[0x1E69E87D0]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v74);
    v45 = v66;
    (*(v66 + 16))(boxed_opaque_existential_1, v42, v43);
    v77 = v40;
    v78 = v41;
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(&v74, v73, &_s15TokenGeneration17StreamWithTimeout33_7BCBCDF8CEE368FFC3F2C722E3238A4FLLVyAA21PromptCompletionEvent_pGMd, &_s15TokenGeneration17StreamWithTimeout33_7BCBCDF8CEE368FFC3F2C722E3238A4FLLVyAA21PromptCompletionEvent_pGMR);
    v46 = swift_allocObject();
    *(v46 + 16) = 0;
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v73, &v69, &_s15TokenGeneration17StreamWithTimeout33_7BCBCDF8CEE368FFC3F2C722E3238A4FLLVyAA21PromptCompletionEvent_pGMd, &_s15TokenGeneration17StreamWithTimeout33_7BCBCDF8CEE368FFC3F2C722E3238A4FLLVyAA21PromptCompletionEvent_pGMR);
    v47 = swift_allocObject();
    *(v47 + 16) = v46;
    v48 = v70;
    *(v47 + 24) = v69;
    *(v47 + 40) = v48;
    *(v47 + 56) = v71;
    *(v47 + 72) = v72;
    *(v47 + 80) = closure #1 in default argument 1 of AsyncThrowingStream<>.init<A>(_:mapError:);
    *(v47 + 88) = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration21PromptCompletionEvent_pMd, &_s15TokenGeneration21PromptCompletionEvent_pMR);
    v49 = v62;
    AsyncThrowingStream.init<>(unfolding:)();
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v73, &_s15TokenGeneration17StreamWithTimeout33_7BCBCDF8CEE368FFC3F2C722E3238A4FLLVyAA21PromptCompletionEvent_pGMd, &_s15TokenGeneration17StreamWithTimeout33_7BCBCDF8CEE368FFC3F2C722E3238A4FLLVyAA21PromptCompletionEvent_pGMR);

    v50 = type metadata accessor for TokenGeneratorResponsePromptCompletionStream.AsyncIterator(0);
    v51 = v58;
    v52 = v68;
    v59((v65 + *(v50 + 20)), v58, v68);
    MEMORY[0x1AC5A5E40](v43);
    v53 = *(v45 + 8);
    v53(v49, v43);
    v53(v42, v43);
    (*(v67 + 8))(v51, v52);
    v54 = *(v11 + 8);
    v54(v60, v10);
    v54(v61, v10);
  }

  return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(&v74, &_s15TokenGeneration17StreamWithTimeout33_7BCBCDF8CEE368FFC3F2C722E3238A4FLLVyAA21PromptCompletionEvent_pGMd, &_s15TokenGeneration17StreamWithTimeout33_7BCBCDF8CEE368FFC3F2C722E3238A4FLLVyAA21PromptCompletionEvent_pGMR);
}

uint64_t closure #1 in TokenGeneratorResponsePromptCompletionStream.AsyncIterator.init(promptCompletionStream:stringResponseSanitizerWithConfiguration:generativeFunctionInstrumenter:timeout:)(uint64_t a1)
{
  outlined init with copy of PromptCompletionEvent(a1, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration21PromptCompletionEvent_pMd, &_s15TokenGeneration21PromptCompletionEvent_pMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v1 = v3;

  outlined consume of Data?(v4, v5);
  return v1;
}

uint64_t TokenGeneratorResponsePromptCompletionStream.AsyncIterator.next()(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s34GenerativeFunctionsInstrumentation0A20FunctionInstrumenterVSgMd, &_s34GenerativeFunctionsInstrumentation0A20FunctionInstrumenterVSgMR);
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](TokenGeneratorResponsePromptCompletionStream.AsyncIterator.next(), 0, 0);
}

uint64_t TokenGeneratorResponsePromptCompletionStream.AsyncIterator.next()()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(type metadata accessor for TokenGeneratorResponsePromptCompletionStream.AsyncIterator(0) + 20);
  *(v0 + 80) = v3;
  v4 = type metadata accessor for GenerativeFunctionInstrumenter();
  v5 = *(v4 - 8);
  (*(v5 + 16))(v1, v2 + v3, v4);
  (*(v5 + 56))(v1, 0, 1, v4);
  *(v0 + 16) = type metadata accessor for TokenGenerator();
  *(v0 + 24) = v6;
  v7 = swift_task_alloc();
  *(v0 + 56) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScs8IteratorVy15TokenGeneration21PromptCompletionEvent_ps5Error_p_GMd, &_sScs8IteratorVy15TokenGeneration21PromptCompletionEvent_ps5Error_p_GMR);
  *v7 = v0;
  v7[1] = TokenGeneratorResponsePromptCompletionStream.AsyncIterator.next();
  v9 = *(v0 + 32);

  return MEMORY[0x1EEE6DB98](v9, v8);
}

{
  v2 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    *(v2 + 72) = *(v2 + 16);
    v3 = TokenGeneratorResponsePromptCompletionStream.AsyncIterator.next();
  }

  else
  {
    v3 = TokenGeneratorResponsePromptCompletionStream.AsyncIterator.next();
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  if (!*(v0[4] + 24))
  {
    GenerativeFunctionInstrumenter.inferenceEnd()();
    GenerativeFunctionInstrumenter.executionEnd(error:)();
  }

  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0[6], &_s34GenerativeFunctionsInstrumentation0A20FunctionInstrumenterVSgMd, &_s34GenerativeFunctionsInstrumentation0A20FunctionInstrumenterVSgMR);

  v1 = v0[1];

  return v1();
}

void TokenGeneratorResponsePromptCompletionStream.AsyncIterator.next()()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);
  MEMORY[0x1AC5A6AE0](v1);
  static TokenGenerator.handleError(_:generativeFunctionInstrumenter:)(v1, v2);
}

uint64_t protocol witness for AsyncIteratorProtocol.next() in conformance TokenGeneratorResponsePromptCompletionStream.AsyncIterator(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return TokenGeneratorResponsePromptCompletionStream.AsyncIterator.next()(a1);
}

uint64_t _s15TokenGeneration0A39GeneratorResponsePromptCompletionStreamV13AsyncIteratorVScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTW(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = _s15TokenGeneration0A39GeneratorResponsePromptCompletionStreamV13AsyncIteratorVScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTQ0_;

  return _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF15TokenGeneration0E39GeneratorResponsePromptCompletionStreamV13AsyncIteratorV_Tg5(a1, a2, a3);
}

uint64_t _s15TokenGeneration0A39GeneratorResponsePromptCompletionStreamV13AsyncIteratorVScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTQ0_()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    **(v2 + 16) = v0;
  }

  v4 = *(v3 + 8);

  return v4();
}

uint64_t TokenGenerator._render<A>(configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[19] = a4;
  v5[20] = v4;
  v5[17] = a2;
  v5[18] = a3;
  v5[16] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration13PromptVariantOSgMd, &_s15TokenGeneration13PromptVariantOSgMR);
  v5[21] = swift_task_alloc();
  v7 = type metadata accessor for PromptTemplateInfo();
  v5[22] = v7;
  v5[23] = *(v7 - 8);
  v5[24] = swift_task_alloc();
  v8 = type metadata accessor for PromptVariant();
  v5[25] = v8;
  v5[26] = *(v8 - 8);
  v5[27] = swift_task_alloc();
  v5[28] = swift_task_alloc();
  v9 = type metadata accessor for Prompt.Rendering();
  v5[29] = v9;
  v5[30] = *(v9 - 8);
  v5[31] = swift_task_alloc();
  v5[32] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
  v5[33] = swift_task_alloc();
  v5[34] = type metadata accessor for TokenGenerator.PromptInputFromGenerativeModel(0);
  v5[35] = swift_task_alloc();
  v5[36] = swift_task_alloc();
  v5[37] = *(a3 - 8);
  v5[38] = swift_task_alloc();
  v5[39] = swift_task_alloc();
  v10 = type metadata accessor for GenerativeFunctionInstrumenter();
  v5[40] = v10;
  v5[41] = *(v10 - 8);
  v5[42] = swift_task_alloc();
  v5[43] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](TokenGenerator._render<A>(configuration:), 0, 0);
}

{
  v5[19] = a4;
  v5[20] = v4;
  v5[17] = a2;
  v5[18] = a3;
  v5[16] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration13PromptVariantOSgMd, &_s15TokenGeneration13PromptVariantOSgMR);
  v5[21] = swift_task_alloc();
  v7 = type metadata accessor for PromptTemplateInfo();
  v5[22] = v7;
  v5[23] = *(v7 - 8);
  v5[24] = swift_task_alloc();
  v8 = type metadata accessor for PromptVariant();
  v5[25] = v8;
  v5[26] = *(v8 - 8);
  v5[27] = swift_task_alloc();
  v5[28] = swift_task_alloc();
  v9 = type metadata accessor for Prompt.Rendering();
  v5[29] = v9;
  v5[30] = *(v9 - 8);
  v5[31] = swift_task_alloc();
  v5[32] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation46StringRenderedPromptSanitizerWithConfigurationVSgMR);
  v5[33] = swift_task_alloc();
  v5[34] = type metadata accessor for TokenGenerator.PromptInputFromGenerativeModel(0);
  v5[35] = swift_task_alloc();
  v5[36] = swift_task_alloc();
  v5[37] = *(a3 - 8);
  v5[38] = swift_task_alloc();
  v5[39] = swift_task_alloc();
  v10 = type metadata accessor for GenerativeFunctionInstrumenter();
  v5[40] = v10;
  v5[41] = *(v10 - 8);
  v5[42] = swift_task_alloc();
  v5[43] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](TokenGenerator._render<A>(configuration:), 0, 0);
}

uint64_t TokenGenerator._render<A>(configuration:)(__n128 a1)
{
  v28 = v1;
  if (*(*(v1 + 160) + 24))
  {
  }

  v3 = *(v1 + 336);
  v2 = *(v1 + 344);
  v4 = *(v1 + 328);
  v5 = *(v1 + 312);
  v22 = *(v1 + 304);
  v6 = *(v1 + 296);
  v20 = *(v1 + 320);
  v21 = *(v1 + 264);
  v7 = *(v1 + 144);
  v8 = *(v1 + 136);
  v9 = *(v1 + 152);
  GenerativeConfigurationProtocol.generateGenerativeFunctionInstrumenter(useCaseIdentifier:eventReporter:)();

  (*(v4 + 16))(v3, v2, v20);
  v10 = *(v6 + 16);
  v10(v5, v8, v7);
  RequestMetadata.init<A>(generativeFunctionInstrumenter:configuration:)(v3, v5, v7, &v23);
  *(v1 + 352) = v23;
  *(v1 + 360) = v24;
  *(v1 + 376) = v25;
  *(v1 + 384) = v26;
  *(v1 + 400) = v27;
  v11 = type metadata accessor for StringRenderedPromptSanitizerWithConfiguration();
  (*(*(v11 - 8) + 56))(v21, 1, 1, v11);
  v12 = swift_task_alloc();
  *(v1 + 408) = v12;
  v12[2] = v7;
  v12[3] = v9;
  v12[4] = v8;
  v10(v22, v8, v7);
  v13 = swift_task_alloc();
  *(v1 + 416) = v13;
  *v13 = v1;
  v13[1] = TokenGenerator._render<A>(configuration:);
  v14 = *(v1 + 304);
  v15 = *(v1 + 288);
  v16 = *(v1 + 264);
  v17 = *(v1 + 144);
  v18 = *(v1 + 152);

  return TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPrompt:completionConfiguration:forceRenderPrompt:)(v15, v16, &async function pointer to partial apply for closure #1 in TokenGenerator._render<A>(configuration:), v12, v14, 0, v17, v18);
}

{
  v28 = v1;
  if (*(*(v1 + 160) + 24))
  {
  }

  v3 = *(v1 + 336);
  v2 = *(v1 + 344);
  v4 = *(v1 + 328);
  v5 = *(v1 + 312);
  v22 = *(v1 + 304);
  v6 = *(v1 + 296);
  v20 = *(v1 + 320);
  v21 = *(v1 + 264);
  v7 = *(v1 + 144);
  v8 = *(v1 + 136);
  v9 = *(v1 + 152);
  GenerativeConfigurationProtocol.generateGenerativeFunctionInstrumenter(useCaseIdentifier:eventReporter:)();

  (*(v4 + 16))(v3, v2, v20);
  v10 = *(v6 + 16);
  v10(v5, v8, v7);
  RequestMetadata.init<A>(generativeFunctionInstrumenter:configuration:)(v3, v5, v7, &v23);
  *(v1 + 352) = v23;
  *(v1 + 360) = v24;
  *(v1 + 376) = v25;
  *(v1 + 384) = v26;
  *(v1 + 400) = v27;
  v11 = type metadata accessor for StringRenderedPromptSanitizerWithConfiguration();
  (*(*(v11 - 8) + 56))(v21, 1, 1, v11);
  v12 = swift_task_alloc();
  *(v1 + 408) = v12;
  v12[2] = v7;
  v12[3] = v9;
  v12[4] = v8;
  v10(v22, v8, v7);
  v13 = swift_task_alloc();
  *(v1 + 416) = v13;
  *v13 = v1;
  v13[1] = TokenGenerator._render<A>(configuration:);
  v14 = *(v1 + 304);
  v15 = *(v1 + 288);
  v16 = *(v1 + 264);
  v17 = *(v1 + 144);
  v18 = *(v1 + 152);

  return TokenGenerator.PromptInputFromGenerativeModel.init<A>(stringRenderedPromptSanitizerWithConfiguration:renderPromptTurns:chatMessagesConfiguration:forceRenderPrompt:)(v15, v16, &async function pointer to partial apply for closure #1 in TokenGenerator._render<A>(configuration:), v12, v14, 0, v17, v18);
}

uint64_t TokenGenerator._render<A>(configuration:)()
{
  *(*v1 + 424) = v0;

  if (v0)
  {

    v2 = TokenGenerator._render<A>(configuration:);
  }

  else
  {

    v2 = TokenGenerator._render<A>(configuration:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  outlined init with copy of PromptCompletion(v0[36], v0[35], type metadata accessor for TokenGenerator.PromptInputFromGenerativeModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v3 = v0[49];
  v2 = v0[50];
  v5 = v0[47];
  v4 = v0[48];
  v7 = v0[45];
  v6 = v0[46];
  v31 = v0[44];
  v8 = v0[35];
  v9 = v0[25];
  v10 = v0[26];
  if (EnumCaseMultiPayload == 1)
  {
    v29 = v0[49];
    v30 = v0[50];
    v11 = v0[27];
    v26 = v0[45];
    v27 = v0[47];
    v13 = v0[23];
    v12 = v0[24];
    v28 = v0[48];
    v15 = v0[21];
    v14 = v0[22];
    v25 = v0[46];
    v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore18PromptTemplateInfoV06prompteF0_0aB00D7VariantO08renderedD0tMd, &_s19TokenGenerationCore18PromptTemplateInfoV06prompteF0_0aB00D7VariantO08renderedD0tMR) + 48);
    (*(v13 + 32))(v12, v8, v14);
    (*(v10 + 32))(v11, v8 + v16, v9);
    (*(v10 + 16))(v15, v11, v9);
    (*(v10 + 56))(v15, 0, 1, v9);
    v0[2] = v31;
    v0[3] = v26;
    v0[4] = v25;
    v0[5] = v27;
    v0[6] = v28;
    v0[7] = v29;
    v0[8] = v30;
    v17 = swift_task_alloc();
    v0[56] = v17;
    *v17 = v0;
    v17[1] = TokenGenerator._render<A>(configuration:);
    v18 = v0[31];
    v19 = v0[24];
    v20 = v0[21];

    return TokenGenerator.render(promptVariant:promptTemplateInfo:metadata:)(v18, v20, v19, (v0 + 2));
  }

  else
  {
    (*(v10 + 32))(v0[28], v0[35], v0[25]);
    v0[9] = v31;
    v0[10] = v7;
    v0[11] = v6;
    v0[12] = v5;
    v0[13] = v4;
    v0[14] = v3;
    v0[15] = v2;
    v22 = swift_task_alloc();
    v0[54] = v22;
    *v22 = v0;
    v22[1] = TokenGenerator._render<A>(configuration:);
    v23 = v0[31];
    v24 = v0[28];

    return TokenGenerator.render(prompt:metadata:)(v23, v24, (v0 + 9));
  }
}

{
  v2 = *v1;
  v2[55] = v0;

  outlined consume of RequestMetadata?(v2[9], v2[10], v2[11], v2[12], v2[13], v2[14], v2[15]);
  if (v0)
  {
    v3 = TokenGenerator._render<A>(configuration:);
  }

  else
  {
    v3 = TokenGenerator._render<A>(configuration:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = v0[41];
  v9 = v0[40];
  v10 = v0[43];
  v8 = v0[36];
  v2 = v0[32];
  v3 = v0[30];
  v4 = v0[31];
  v5 = v0[29];
  (*(v0[26] + 8))();
  (*(v3 + 32))(v2, v4, v5);
  Prompt.Rendering.renderedString.getter();
  Prompt.Rendering.originalPrompt.getter();
  Prompt.Rendering.segments.getter();
  Prompt.Rendering.tokenIDs.getter();
  RawPrompt.init(text:originalPrompt:segments:tokenIDs:)();
  (*(v3 + 8))(v2, v5);
  outlined destroy of TokenGeneratorCompletionResponseStringStream(v8, type metadata accessor for TokenGenerator.PromptInputFromGenerativeModel);
  (*(v1 + 8))(v10, v9);

  v6 = v0[1];

  return v6();
}

{
  v2 = *v1;
  v3 = (*v1)[21];
  v2[57] = v0;

  outlined consume of RequestMetadata?(v2[2], v2[3], v2[4], v2[5], v2[6], v2[7], v2[8]);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v3, &_s15TokenGeneration13PromptVariantOSgMd, &_s15TokenGeneration13PromptVariantOSgMR);
  if (v0)
  {
    v4 = TokenGenerator._render<A>(configuration:);
  }

  else
  {
    v4 = TokenGenerator._render<A>(configuration:);
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

{
  (*(v0[26] + 8))(v0[27], v0[25]);
  v1 = v0[41];
  v9 = v0[40];
  v10 = v0[43];
  v8 = v0[36];
  v2 = v0[32];
  v4 = v0[30];
  v3 = v0[31];
  v5 = v0[29];
  (*(v0[23] + 8))();
  (*(v4 + 32))(v2, v3, v5);
  Prompt.Rendering.renderedString.getter();
  Prompt.Rendering.originalPrompt.getter();
  Prompt.Rendering.segments.getter();
  Prompt.Rendering.tokenIDs.getter();
  RawPrompt.init(text:originalPrompt:segments:tokenIDs:)();
  (*(v4 + 8))(v2, v5);
  outlined destroy of TokenGeneratorCompletionResponseStringStream(v8, type metadata accessor for TokenGenerator.PromptInputFromGenerativeModel);
  (*(v1 + 8))(v10, v9);

  v6 = v0[1];

  return v6();
}

{
  (*(v0[41] + 8))(v0[43], v0[40]);

  v1 = v0[1];

  return v1();
}

{
  v1 = v0[43];
  v2 = v0[40];
  v3 = v0[41];
  v4 = v0[36];
  (*(v0[26] + 8))(v0[28], v0[25]);
  outlined destroy of TokenGeneratorCompletionResponseStringStream(v4, type metadata accessor for TokenGenerator.PromptInputFromGenerativeModel);
  (*(v3 + 8))(v1, v2);

  v5 = v0[1];

  return v5();
}

{
  v1 = v0[43];
  v2 = v0[40];
  v3 = v0[41];
  v4 = v0[36];
  v5 = v0[24];
  v6 = v0[22];
  v7 = v0[23];
  (*(v0[26] + 8))(v0[27], v0[25]);
  (*(v7 + 8))(v5, v6);
  outlined destroy of TokenGeneratorCompletionResponseStringStream(v4, type metadata accessor for TokenGenerator.PromptInputFromGenerativeModel);
  (*(v3 + 8))(v1, v2);

  v8 = v0[1];

  return v8();
}

{
  *(*v1 + 424) = v0;

  if (v0)
  {

    v2 = TokenGenerator._render<A>(configuration:);
  }

  else
  {

    v2 = TokenGenerator._render<A>(configuration:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  outlined init with copy of PromptCompletion(v0[36], v0[35], type metadata accessor for TokenGenerator.PromptInputFromGenerativeModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v3 = v0[49];
  v2 = v0[50];
  v5 = v0[47];
  v4 = v0[48];
  v7 = v0[45];
  v6 = v0[46];
  v31 = v0[44];
  v8 = v0[35];
  v9 = v0[25];
  v10 = v0[26];
  if (EnumCaseMultiPayload == 1)
  {
    v29 = v0[49];
    v30 = v0[50];
    v11 = v0[27];
    v26 = v0[45];
    v27 = v0[47];
    v13 = v0[23];
    v12 = v0[24];
    v28 = v0[48];
    v15 = v0[21];
    v14 = v0[22];
    v25 = v0[46];
    v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore18PromptTemplateInfoV06prompteF0_0aB00D7VariantO08renderedD0tMd, &_s19TokenGenerationCore18PromptTemplateInfoV06prompteF0_0aB00D7VariantO08renderedD0tMR) + 48);
    (*(v13 + 32))(v12, v8, v14);
    (*(v10 + 32))(v11, v8 + v16, v9);
    (*(v10 + 16))(v15, v11, v9);
    (*(v10 + 56))(v15, 0, 1, v9);
    v0[2] = v31;
    v0[3] = v26;
    v0[4] = v25;
    v0[5] = v27;
    v0[6] = v28;
    v0[7] = v29;
    v0[8] = v30;
    v17 = swift_task_alloc();
    v0[56] = v17;
    *v17 = v0;
    v17[1] = TokenGenerator._render<A>(configuration:);
    v18 = v0[31];
    v19 = v0[24];
    v20 = v0[21];

    return TokenGenerator.render(promptVariant:promptTemplateInfo:metadata:)(v18, v20, v19, (v0 + 2));
  }

  else
  {
    (*(v10 + 32))(v0[28], v0[35], v0[25]);
    v0[9] = v31;
    v0[10] = v7;
    v0[11] = v6;
    v0[12] = v5;
    v0[13] = v4;
    v0[14] = v3;
    v0[15] = v2;
    v22 = swift_task_alloc();
    v0[54] = v22;
    *v22 = v0;
    v22[1] = TokenGenerator._render<A>(configuration:);
    v23 = v0[31];
    v24 = v0[28];

    return TokenGenerator.render(prompt:metadata:)(v23, v24, (v0 + 9));
  }
}

{
  v2 = *v1;
  v2[55] = v0;

  outlined consume of RequestMetadata?(v2[9], v2[10], v2[11], v2[12], v2[13], v2[14], v2[15]);
  if (v0)
  {
    v3 = TokenGenerator._render<A>(configuration:);
  }

  else
  {
    v3 = TokenGenerator._render<A>(configuration:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v2 = *v1;
  v3 = (*v1)[21];
  v2[57] = v0;

  outlined consume of RequestMetadata?(v2[2], v2[3], v2[4], v2[5], v2[6], v2[7], v2[8]);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v3, &_s15TokenGeneration13PromptVariantOSgMd, &_s15TokenGeneration13PromptVariantOSgMR);
  if (v0)
  {
    v4 = TokenGenerator._render<A>(configuration:);
  }

  else
  {
    v4 = TokenGenerator._render<A>(configuration:);
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t protocol witness for CompletionLanguageModelProvidingRenderable._render<A>(configuration:) in conformance TokenGenerator(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return TokenGenerator._render<A>(configuration:)(a1, a2, a3, a4);
}

uint64_t protocol witness for ChatLanguageModelProvidingRenderable._render<A>(configuration:) in conformance TokenGenerator(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return TokenGenerator._render<A>(configuration:)(a1, a2, a3, a4);
}

uint64_t _sScg7addTask8priority9operationyScPSg_xyYaKYAcntF15TokenGeneration0E6StreamVySSG05tokenG0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringmG00I24FunctionsInstrumentation0I20FunctionInstrumenterV12instrumentert_s5Error_pTg5Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v8 = v5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v22 - v12;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, v22 - v12, &_sScPSgMd, &_sScPSgMR);
  v14 = type metadata accessor for TaskPriority();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v13, &_sScPSgMd, &_sScPSgMR);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v16 = dispatch thunk of Actor.unownedExecutor.getter();
      v18 = v17;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v15 + 8))(v13, v14);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v16 = 0;
  v18 = 0;
LABEL_6:
  v19 = *v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v20 = (v18 | v16);
  if (v18 | v16)
  {
    v23[0] = 0;
    v23[1] = 0;
    v20 = v23;
    v23[2] = v16;
    v23[3] = v18;
  }

  v22[1] = 1;
  v22[2] = v20;
  v22[3] = v19;
  swift_task_create();
}

uint64_t _sScg7addTask8priority9operationyScPSg_xyYaKYAcntF15TokenGeneration16PromptCompletionV_s5Error_pTg5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v18 - v8;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, v18 - v8, &_sScPSgMd, &_sScPSgMR);
  v10 = type metadata accessor for TaskPriority();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v9, &_sScPSgMd, &_sScPSgMR);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v12 = dispatch thunk of Actor.unownedExecutor.getter();
      v14 = v13;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v11 + 8))(v9, v10);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v12 = 0;
  v14 = 0;
LABEL_6:
  v15 = *v4;
  type metadata accessor for PromptCompletion(0);
  v16 = (v14 | v12);
  if (v14 | v12)
  {
    v19[0] = 0;
    v19[1] = 0;
    v16 = v19;
    v19[2] = v12;
    v19[3] = v14;
  }

  v18[1] = 1;
  v18[2] = v16;
  v18[3] = v15;
  swift_task_create();
}

uint64_t specialized closure #1 in withTimeout<A>(timeout:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  v5[7] = a5.n128_u64[0];
  v5[5] = a3;
  v5[6] = a4;
  v5[3] = a1;
  v5[4] = a2;
  v6 = type metadata accessor for GenerativeError.RuntimeError.ErrorType();
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  v7 = type metadata accessor for GenerativeError.RuntimeError();
  v5[11] = v7;
  v5[12] = *(v7 - 8);
  v5[13] = swift_task_alloc();
  v8 = type metadata accessor for GenerativeError.ErrorType();
  v5[14] = v8;
  v5[15] = *(v8 - 8);
  v5[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s29GenerativeFunctionsFoundation0A5ErrorVSgMd, &_s29GenerativeFunctionsFoundation0A5ErrorVSgMR);
  v5[17] = swift_task_alloc();
  v9 = type metadata accessor for GenerativeError();
  v5[18] = v9;
  v5[19] = *(v9 - 8);
  v5[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumentertSgMd, &_s15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumentertSgMR);
  v5[21] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumentertMd, &_s15TokenGeneration0A6StreamVySSG05tokenC0_26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSg06stringiC00E24FunctionsInstrumentation0E20FunctionInstrumenterV12instrumentertMR);
  v5[22] = v10;
  v5[23] = *(v10 - 8);
  v5[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v5[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](specialized closure #1 in withTimeout<A>(timeout:_:), 0, 0);
}

{
  v5[7] = a5.n128_u64[0];
  v5[5] = a3;
  v5[6] = a4;
  v5[3] = a1;
  v5[4] = a2;
  v6 = type metadata accessor for GenerativeError.RuntimeError.ErrorType();
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  v7 = type metadata accessor for GenerativeError.RuntimeError();
  v5[11] = v7;
  v5[12] = *(v7 - 8);
  v5[13] = swift_task_alloc();
  v8 = type metadata accessor for GenerativeError.ErrorType();
  v5[14] = v8;
  v5[15] = *(v8 - 8);
  v5[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s29GenerativeFunctionsFoundation0A5ErrorVSgMd, &_s29GenerativeFunctionsFoundation0A5ErrorVSgMR);
  v5[17] = swift_task_alloc();
  v9 = type metadata accessor for GenerativeError();
  v5[18] = v9;
  v5[19] = *(v9 - 8);
  v5[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration16PromptCompletionVSgMd, &_s15TokenGeneration16PromptCompletionVSgMR);
  v5[21] = swift_task_alloc();
  v10 = type metadata accessor for PromptCompletion(0);
  v5[22] = v10;
  v5[23] = *(v10 - 8);
  v5[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v5[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](specialized closure #1 in withTimeout<A>(timeout:_:), 0, 0);
}

{
  v5[7] = a5.n128_u64[0];
  v5[5] = a3;
  v5[6] = a4;
  v5[3] = a1;
  v5[4] = a2;
  v6 = type metadata accessor for GenerativeError.RuntimeError.ErrorType();
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  v7 = type metadata accessor for GenerativeError.RuntimeError();
  v5[11] = v7;
  v5[12] = *(v7 - 8);
  v5[13] = swift_task_alloc();
  v8 = type metadata accessor for GenerativeError.ErrorType();
  v5[14] = v8;
  v5[15] = *(v8 - 8);
  v5[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s29GenerativeFunctionsFoundation0A5ErrorVSgMd, &_s29GenerativeFunctionsFoundation0A5ErrorVSgMR);
  v5[17] = swift_task_alloc();
  v9 = type metadata accessor for GenerativeError();
  v5[18] = v9;
  v5[19] = *(v9 - 8);
  v5[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScsySSs5Error_pGSgMd, &_sScsySSs5Error_pGSgMR);
  v5[21] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScsySSs5Error_pGMd, &_sScsySSs5Error_pGMR);
  v5[22] = v10;
  v5[23] = *(v10 - 8);
  v5[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v5[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](specialized closure #1 in withTimeout<A>(timeout:_:), 0, 0);
}

{
  v5[17] = a5.n128_u64[0];
  v5[15] = a3;
  v5[16] = a4;
  v5[13] = a1;
  v5[14] = a2;
  v6 = type metadata accessor for GenerativeError.RuntimeError.ErrorType();
  v5[18] = v6;
  v5[19] = *(v6 - 8);
  v5[20] = swift_task_alloc();
  v7 = type metadata accessor for GenerativeError.RuntimeError();
  v5[21] = v7;
  v5[22] = *(v7 - 8);
  v5[23] = swift_task_alloc();
  v8 = type metadata accessor for GenerativeError.ErrorType();
  v5[24] = v8;
  v5[25] = *(v8 - 8);
  v5[26] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s29GenerativeFunctionsFoundation0A5ErrorVSgMd, &_s29GenerativeFunctionsFoundation0A5ErrorVSgMR);
  v5[27] = swift_task_alloc();
  v9 = type metadata accessor for GenerativeError();
  v5[28] = v9;
  v5[29] = *(v9 - 8);
  v5[30] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v5[31] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](specialized closure #1 in withTimeout<A>(timeout:_:), 0, 0);
}

uint64_t partial apply for specialized closure #1 in withTimeout<A>(timeout:_:)(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);
  v10.n128_u64[0] = v8;

  return specialized closure #1 in withTimeout<A>(timeout:_:)(a1, a2, v6, v7, v10);
}

{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);
  v10.n128_u64[0] = v8;

  return specialized closure #1 in withTimeout<A>(timeout:_:)(a1, a2, v6, v7, v10);
}

{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);
  v10.n128_u64[0] = v8;

  return specialized closure #1 in withTimeout<A>(timeout:_:)(a1, a2, v6, v7, v10);
}

{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);
  v10.n128_u64[0] = v8;

  return specialized closure #1 in withTimeout<A>(timeout:_:)(a1, a2, v6, v7, v10);
}

{
  v6 = *(v2 + 2);
  v7 = *(v2 + 3);
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return specialized closure #1 in withTimeout<A>(timeout:_:)(a1, a2, v6, v7, v8);
}

{
  v6 = *(v2 + 2);
  v7 = *(v2 + 3);
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return specialized closure #1 in withTimeout<A>(timeout:_:)(a1, a2, v6, v7, v8);
}

uint64_t partial apply for closure #1 in closure #1 in TokenGeneratorResponsePromptCompletionStream.collect()(uint64_t a1)
{
  v4 = *(type metadata accessor for TokenGeneratorResponsePromptCompletionStream(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return closure #1 in closure #1 in TokenGeneratorResponsePromptCompletionStream.collect()(a1, v1 + v5);
}

uint64_t outlined init with take of TokenGeneratorResponsePromptCompletionStream(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t specialized closure #1 in withTimeout<A>(timeout:_:)(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v4[9] = a4.n128_u64[0];
  v4[7] = a2;
  v4[8] = a3;
  v4[6] = a1;
  v5 = type metadata accessor for GenerativeError.RuntimeError.ErrorType();
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();
  v6 = type metadata accessor for GenerativeError.RuntimeError();
  v4[13] = v6;
  v4[14] = *(v6 - 8);
  v4[15] = swift_task_alloc();
  v7 = type metadata accessor for GenerativeError.ErrorType();
  v4[16] = v7;
  v4[17] = *(v7 - 8);
  v4[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s29GenerativeFunctionsFoundation0A5ErrorVSgMd, &_s29GenerativeFunctionsFoundation0A5ErrorVSgMR);
  v4[19] = swift_task_alloc();
  v8 = type metadata accessor for GenerativeError();
  v4[20] = v8;
  v4[21] = *(v8 - 8);
  v4[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v4[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](specialized closure #1 in withTimeout<A>(timeout:_:), 0, 0);
}

{
  v4[8] = a4.n128_u64[0];
  v4[6] = a2;
  v4[7] = a3;
  v4[5] = a1;
  v5 = type metadata accessor for GenerativeError.RuntimeError.ErrorType();
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();
  v6 = type metadata accessor for GenerativeError.RuntimeError();
  v4[12] = v6;
  v4[13] = *(v6 - 8);
  v4[14] = swift_task_alloc();
  v7 = type metadata accessor for GenerativeError.ErrorType();
  v4[15] = v7;
  v4[16] = *(v7 - 8);
  v4[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s29GenerativeFunctionsFoundation0A5ErrorVSgMd, &_s29GenerativeFunctionsFoundation0A5ErrorVSgMR);
  v4[18] = swift_task_alloc();
  v8 = type metadata accessor for GenerativeError();
  v4[19] = v8;
  v4[20] = *(v8 - 8);
  v4[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v4[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](specialized closure #1 in withTimeout<A>(timeout:_:), 0, 0);
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t specialized closure #1 in closure #1 in withTimeout<A>(timeout:_:)(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return v8(a1);
}

{
  *(v4 + 40) = a1;
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 48) = v5;
  *v5 = v4;
  v5[1] = specialized closure #1 in closure #1 in withTimeout<A>(timeout:_:);

  return v7(v4 + 16);
}

{
  *(v4 + 32) = a1;
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 40) = v5;
  *v5 = v4;
  v5[1] = specialized closure #1 in closure #1 in withTimeout<A>(timeout:_:);

  return v7(v4 + 16);
}

uint64_t specialized closure #2 in closure #1 in withTimeout<A>(timeout:_:)(double a1)
{
  *(v1 + 16) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  *(v1 + 24) = swift_task_alloc();
  v2 = type metadata accessor for GenerativeError.RuntimeError.ErrorType();
  *(v1 + 32) = v2;
  *(v1 + 40) = *(v2 - 8);
  *(v1 + 48) = swift_task_alloc();
  v3 = type metadata accessor for ContinuousClock();
  *(v1 + 56) = v3;
  *(v1 + 64) = *(v3 - 8);
  *(v1 + 72) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](specialized closure #2 in closure #1 in withTimeout<A>(timeout:_:), 0, 0);
}

{
  *(v1 + 16) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  *(v1 + 24) = swift_task_alloc();
  v2 = type metadata accessor for GenerativeError.RuntimeError.ErrorType();
  *(v1 + 32) = v2;
  *(v1 + 40) = *(v2 - 8);
  *(v1 + 48) = swift_task_alloc();
  v3 = type metadata accessor for ContinuousClock();
  *(v1 + 56) = v3;
  *(v1 + 64) = *(v3 - 8);
  *(v1 + 72) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](specialized closure #2 in closure #1 in withTimeout<A>(timeout:_:), 0, 0);
}

uint64_t specialized closure #2 in closure #1 in withTimeout<A>(timeout:_:)()
{
  v1 = static Duration.seconds(_:)();
  v3 = v2;
  static Clock<>.continuous.getter();
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *v4 = v0;
  v4[1] = specialized closure #2 in closure #1 in withTimeout<A>(timeout:_:);

  return specialized Clock.sleep(for:tolerance:)(v1, v3, 0, 0, 1);
}

{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  *(*v1 + 88) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = specialized closure #2 in closure #1 in withTimeout<A>(timeout:_:);
  }

  else
  {
    v5 = specialized closure #2 in closure #1 in withTimeout<A>(timeout:_:);
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = type metadata accessor for Date();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  GenerativeError.RuntimeError.ErrorType.TimeoutErrorInfo.init(retryAfterDate:)();
  (*(v2 + 104))(v1, *MEMORY[0x1E69A0A38], v3);
  type metadata accessor for GenerativeError();
  lazy protocol witness table accessor for type TokenGeneratorCompletionResponse and conformance TokenGeneratorCompletionResponse(&lazy protocol witness table cache variable for type GenerativeError and conformance GenerativeError, MEMORY[0x1E69A0A68], MEMORY[0x1E69A0A80]);
  swift_allocError();
  static GenerativeError.runtimeError(type:)();
  (*(v2 + 8))(v1, v3);
  swift_willThrow();

  v6 = v0[1];

  return v6();
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = static Duration.seconds(_:)();
  v3 = v2;
  static Clock<>.continuous.getter();
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *v4 = v0;
  v4[1] = specialized closure #2 in closure #1 in withTimeout<A>(timeout:_:);

  return specialized Clock.sleep(for:tolerance:)(v1, v3, 0, 0, 1);
}

{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  *(*v1 + 88) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = specialized closure #2 in closure #1 in withTimeout<A>(timeout:_:);
  }

  else
  {
    v5 = specialized closure #2 in closure #1 in withTimeout<A>(timeout:_:);
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t specialized StreamWithTimeout.Iterator.next()()
{
  v1[10] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v1[11] = swift_task_alloc();
  v2 = type metadata accessor for GenerativeError.RuntimeError.ErrorType();
  v1[12] = v2;
  v1[13] = *(v2 - 8);
  v1[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](specialized StreamWithTimeout.Iterator.next(), 0, 0);
}

{
  v1 = *(v0 + 80);
  if (*(v1 + 64))
  {
    goto LABEL_2;
  }

  if (*(v1 + 80))
  {
    v6 = mach_absolute_time();
    *(v1 + 72) = v6;
    *(v1 + 80) = 0;
    if (*(v1 + 64) == 1)
    {
      v1 = *(v0 + 80);
LABEL_2:

      v2 = v1;
LABEL_3:
      *(v0 + 144) = mach_absolute_time();
      swift_beginAccess();
      v3 = *(v2 + 40);
      v4 = *(v2 + 48);
      __swift_mutable_project_boxed_opaque_existential_1(v2 + 16, v3);
      v5 = swift_task_alloc();
      *(v0 + 152) = v5;
      *v5 = v0;
      v5[1] = specialized StreamWithTimeout.Iterator.next();

      return MEMORY[0x1EEE6D8C8](v0 + 64, v3, v4);
    }
  }

  else
  {
    v6 = *(v1 + 72);
  }

  v7 = *(v1 + 56);
  v8 = mach_absolute_time();
  v9 = v8 >= v6;
  v10 = v8 - v6;
  if (!v9)
  {
    __break(1u);
    goto LABEL_23;
  }

  *(v0 + 192) = 0;
  mach_timebase_info((v0 + 192));
  v11 = *(v0 + 192);
  v12.i64[0] = v11;
  v12.i64[1] = HIDWORD(v11);
  v13 = vdupq_lane_s64(0x41CDCD6500000000, 0);
  v13.f64[0] = v10;
  v14 = vmulq_f64(v13, vcvtq_f64_u64(v12));
  if (v7 <= vdivq_f64(v14, vdupq_laneq_s64(v14, 1)).f64[0])
  {
    if (one-time initialization token for generator == -1)
    {
LABEL_18:
      v21 = type metadata accessor for Logger();
      __swift_project_value_buffer(v21, static Log.generator);
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 134217984;
        *(v24 + 4) = v7;
        _os_log_impl(&dword_1AB828000, v22, v23, "Aborting execution as stream exceeded maxiumum allotted time %f", v24, 0xCu);
        MEMORY[0x1AC5A6CD0](v24, -1, -1);
      }

      v26 = *(v0 + 104);
      v25 = *(v0 + 112);
      v28 = *(v0 + 88);
      v27 = *(v0 + 96);

      v29 = type metadata accessor for Date();
      (*(*(v29 - 8) + 56))(v28, 1, 1, v29);
      GenerativeError.RuntimeError.ErrorType.TimeoutErrorInfo.init(retryAfterDate:)();
      (*(v26 + 104))(v25, *MEMORY[0x1E69A0A38], v27);
      type metadata accessor for GenerativeError();
      lazy protocol witness table accessor for type TokenGeneratorCompletionResponse and conformance TokenGeneratorCompletionResponse(&lazy protocol witness table cache variable for type GenerativeError and conformance GenerativeError, MEMORY[0x1E69A0A68], MEMORY[0x1E69A0A80]);
      swift_allocError();
      static GenerativeError.runtimeError(type:)();
      (*(v26 + 8))(v25, v27);
      swift_willThrow();

      v30 = *(v0 + 8);

      return v30();
    }

LABEL_23:
    swift_once();
    goto LABEL_18;
  }

  v2 = *(v0 + 80);
  v15 = *(v1 + 64);
  v16 = *(v1 + 56);

  if (v15)
  {
    goto LABEL_3;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  v18 = swift_task_alloc();
  *(v0 + 120) = v18;
  v18[2] = &async function pointer to partial apply for specialized closure #1 in StreamWithTimeout.Iterator.next();
  v18[3] = v2;
  v18[4] = v16;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSg6result_Sd8durationtMd, &_sSSSg6result_Sd8durationtMR);
  v20 = swift_task_alloc();
  *(v0 + 128) = v20;
  *v20 = v0;
  v20[1] = specialized StreamWithTimeout.Iterator.next();

  return MEMORY[0x1EEE6DD58](v0 + 40, v17, v19, 0, 0, &async function pointer to partial apply for specialized closure #1 in withTimeout<A>(timeout:_:), v18, v17);
}

{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = specialized StreamWithTimeout.Iterator.next();
  }

  else
  {

    v2 = specialized StreamWithTimeout.Iterator.next();
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v2 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = specialized StreamWithTimeout.Iterator.next();
  }

  else
  {
    swift_endAccess();
    *(v2 + 168) = *(v2 + 64);
    v3 = specialized StreamWithTimeout.Iterator.next();
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = *(v0 + 144);

  v2 = mach_absolute_time();
  v3 = v2 - v1;
  if (v2 < v1)
  {
    __break(1u);
  }

  *(v0 + 184) = 0;
  *(v0 + 188) = 0;
  mach_timebase_info((v0 + 184));

  v4 = *(v0 + 168);
  v5 = *(v0 + 176);
  v6 = *(v0 + 80);
  if ((*(v6 + 64) & 1) == 0 && v5)
  {
    *(v6 + 56) = *(v6 + 56) + v3 * *(v0 + 184) / (*(v0 + 188) * -1000000000.0);
    *(v6 + 64) = 0;
  }

  v7 = *(v0 + 8);

  return v7(v4, v5);
}

{
  swift_endAccess();

  v1 = *(v0 + 8);

  return v1();
}

{

  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 80);
  if ((*(v3 + 64) & 1) == 0 && v1)
  {
    *(v3 + 56) = *(v3 + 56) - *(v0 + 56);
    *(v3 + 64) = 0;
  }

  v4 = *(v0 + 8);

  return v4(v2, v1);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = *(v0 + 184);
  if (*(v1 + 64))
  {
    goto LABEL_2;
  }

  if (*(v1 + 80))
  {
    v6 = mach_absolute_time();
    *(v1 + 72) = v6;
    *(v1 + 80) = 0;
    if (*(v1 + 64) == 1)
    {
      v1 = *(v0 + 184);
LABEL_2:

      v2 = v1;
LABEL_3:
      *(v0 + 248) = mach_absolute_time();
      swift_beginAccess();
      v3 = *(v2 + 40);
      v4 = *(v2 + 48);
      __swift_mutable_project_boxed_opaque_existential_1(v2 + 16, v3);
      v5 = swift_task_alloc();
      *(v0 + 256) = v5;
      *v5 = v0;
      v5[1] = specialized StreamWithTimeout.Iterator.next();

      return MEMORY[0x1EEE6D8C8](v0 + 112, v3, v4);
    }
  }

  else
  {
    v6 = *(v1 + 72);
  }

  v7 = *(v1 + 56);
  v8 = mach_absolute_time();
  v9 = v8 - v6;
  if (v8 < v6)
  {
    __break(1u);
    goto LABEL_23;
  }

  *(v0 + 280) = 0;
  mach_timebase_info((v0 + 280));
  v10.i64[0] = *(v0 + 280);
  v10.i64[1] = HIDWORD(*(v0 + 280));
  v11 = vdupq_lane_s64(0x41CDCD6500000000, 0);
  v11.f64[0] = v9;
  v12 = vmulq_f64(v11, vcvtq_f64_u64(v10));
  if (v7 <= vdivq_f64(v12, vdupq_laneq_s64(v12, 1)).f64[0])
  {
    if (one-time initialization token for generator == -1)
    {
LABEL_17:
      v19 = type metadata accessor for Logger();
      __swift_project_value_buffer(v19, static Log.generator);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 134217984;
        *(v22 + 4) = v7;
        _os_log_impl(&dword_1AB828000, v20, v21, "Aborting execution as stream exceeded maxiumum allotted time %f", v22, 0xCu);
        MEMORY[0x1AC5A6CD0](v22, -1, -1);
      }

      v24 = *(v0 + 208);
      v23 = *(v0 + 216);
      v26 = *(v0 + 192);
      v25 = *(v0 + 200);

      v27 = type metadata accessor for Date();
      (*(*(v27 - 8) + 56))(v26, 1, 1, v27);
      GenerativeError.RuntimeError.ErrorType.TimeoutErrorInfo.init(retryAfterDate:)();
      (*(v24 + 104))(v23, *MEMORY[0x1E69A0A38], v25);
      type metadata accessor for GenerativeError();
      lazy protocol witness table accessor for type TokenGeneratorCompletionResponse and conformance TokenGeneratorCompletionResponse(&lazy protocol witness table cache variable for type GenerativeError and conformance GenerativeError, MEMORY[0x1E69A0A68], MEMORY[0x1E69A0A80]);
      swift_allocError();
      static GenerativeError.runtimeError(type:)();
      (*(v24 + 8))(v23, v25);
      swift_willThrow();

      v28 = *(v0 + 8);

      return v28();
    }

LABEL_23:
    swift_once();
    goto LABEL_17;
  }

  v2 = *(v0 + 184);
  v13 = *(v1 + 64);
  v14 = *(v1 + 56);

  if (v13)
  {
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration21PromptCompletionEvent_pSgMd, &_s15TokenGeneration21PromptCompletionEvent_pSgMR);
  v16 = swift_task_alloc();
  *(v0 + 224) = v16;
  v16[2] = &async function pointer to partial apply for specialized closure #1 in StreamWithTimeout.Iterator.next();
  v16[3] = v2;
  v16[4] = v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration21PromptCompletionEvent_pSg6result_Sd8durationtMd, &_s15TokenGeneration21PromptCompletionEvent_pSg6result_Sd8durationtMR);
  v18 = swift_task_alloc();
  *(v0 + 232) = v18;
  *v18 = v0;
  v18[1] = specialized StreamWithTimeout.Iterator.next();

  return MEMORY[0x1EEE6DD58](v0 + 64, v15, v17, 0, 0, &async function pointer to partial apply for specialized closure #1 in withTimeout<A>(timeout:_:), v16, v15);
}

{
  *(*v1 + 240) = v0;

  if (v0)
  {
    v2 = specialized StreamWithTimeout.Iterator.next();
  }

  else
  {

    v2 = specialized StreamWithTimeout.Iterator.next();
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  *(*v1 + 264) = v0;

  if (v0)
  {
    v2 = specialized StreamWithTimeout.Iterator.next();
  }

  else
  {
    swift_endAccess();
    v2 = specialized StreamWithTimeout.Iterator.next();
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v1 = *(v0 + 248);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0 + 112, v0 + 16, &_s15TokenGeneration21PromptCompletionEvent_pSgMd, &_s15TokenGeneration21PromptCompletionEvent_pSgMR);
  v2 = mach_absolute_time();
  v3 = v2 - v1;
  if (v2 < v1)
  {
    __break(1u);
  }

  *(v0 + 272) = 0;
  mach_timebase_info((v0 + 272));

  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0 + 112, &_s15TokenGeneration21PromptCompletionEvent_pSgMd, &_s15TokenGeneration21PromptCompletionEvent_pSgMR);
  v4 = *(v0 + 184);
  if ((*(v4 + 64) & 1) == 0 && *(v0 + 40))
  {
    *(v4 + 56) = *(v4 + 56) + v3 * *(v0 + 272) / (*(v0 + 276) * -1000000000.0);
    *(v4 + 64) = 0;
  }

  v5 = *(v0 + 176);
  v6 = *(v0 + 16);
  v7 = *(v0 + 32);
  *(v5 + 32) = *(v0 + 48);
  *v5 = v6;
  *(v5 + 16) = v7;

  v8 = *(v0 + 8);

  return v8();
}

{
  swift_endAccess();

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 104);
  *(v0 + 48) = *(v0 + 96);
  v2 = *(v0 + 80);
  *(v0 + 16) = *(v0 + 64);
  *(v0 + 32) = v2;
  v3 = *(v0 + 184);
  if ((*(v3 + 64) & 1) == 0 && *(v0 + 40))
  {
    *(v3 + 56) = *(v3 + 56) - v1;
    *(v3 + 64) = 0;
  }

  v4 = *(v0 + 176);
  v5 = *(v0 + 16);
  v6 = *(v0 + 32);
  *(v4 + 32) = *(v0 + 48);
  *v4 = v5;
  *(v4 + 16) = v6;

  v7 = *(v0 + 8);

  return v7();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t specialized StreamWithTimeout.Iterator.next()(uint64_t a1)
{
  v2[22] = a1;
  v2[23] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v2[24] = swift_task_alloc();
  v3 = type metadata accessor for GenerativeError.RuntimeError.ErrorType();
  v2[25] = v3;
  v2[26] = *(v3 - 8);
  v2[27] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](specialized StreamWithTimeout.Iterator.next(), 0, 0);
}

uint64_t specialized closure #1 in StreamWithTimeout.Iterator.next()(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x1EEE6DFA0](specialized closure #1 in StreamWithTimeout.Iterator.next(), 0, 0);
}

{
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return MEMORY[0x1EEE6DFA0](specialized closure #1 in StreamWithTimeout.Iterator.next(), 0, 0);
}

uint64_t specialized closure #1 in StreamWithTimeout.Iterator.next()()
{
  v1 = v0[6];
  swift_beginAccess();
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  __swift_mutable_project_boxed_opaque_existential_1(v1 + 16, v2);
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = specialized closure #1 in StreamWithTimeout.Iterator.next();
  v5 = v0[5];

  return MEMORY[0x1EEE6D8C8](v5, v2, v3);
}

{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](specialized closure #1 in StreamWithTimeout.Iterator.next(), 0, 0);
  }

  else
  {
    swift_endAccess();
    v3 = *(v2 + 8);

    return v3();
  }
}

{
  swift_endAccess();
  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = *(v0 + 64);
  swift_beginAccess();
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  __swift_mutable_project_boxed_opaque_existential_1(v1 + 16, v2);
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *v4 = v0;
  v4[1] = specialized closure #1 in StreamWithTimeout.Iterator.next();

  return MEMORY[0x1EEE6D8C8](v0 + 40, v2, v3);
}

{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](specialized closure #1 in StreamWithTimeout.Iterator.next(), 0, 0);
  }

  else
  {
    v3 = *(v2 + 56);
    swift_endAccess();
    *v3 = *(v2 + 40);
    v4 = *(v2 + 8);

    return v4();
  }
}

{
  swift_endAccess();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t specialized closure #1 in AsyncThrowingStream<>.init<A>(_:mapError:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[22] = a3;
  v4[23] = a4;
  v4[20] = a1;
  v4[21] = a2;
  return MEMORY[0x1EEE6DFA0](specialized closure #1 in AsyncThrowingStream<>.init<A>(_:mapError:), 0, 0);
}

{
  v4[14] = a3;
  v4[15] = a4;
  v4[13] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16AsyncMapSequenceVy15TokenGeneration0D6StreamVySSGSSGMd, &_ss16AsyncMapSequenceVy15TokenGeneration0D6StreamVySSGSSGMR);
  v4[16] = v5;
  v4[17] = *(v5 - 8);
  v4[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16AsyncMapSequenceV8IteratorVy15TokenGeneration0E6StreamVySSGSS_GSgMd, &_ss16AsyncMapSequenceV8IteratorVy15TokenGeneration0E6StreamVySSGSS_GSgMR);
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[21] = swift_projectBox();

  return MEMORY[0x1EEE6DFA0](specialized closure #1 in AsyncThrowingStream<>.init<A>(_:mapError:), 0, 0);
}

uint64_t specialized closure #1 in AsyncThrowingStream<>.init<A>(_:mapError:)()
{
  v1 = *(v0 + 160);
  swift_beginAccess();
  if (!*(v1 + 16))
  {
    v2 = *(v0 + 160);
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(*(v0 + 168), v0 + 16, &_s15TokenGeneration17StreamWithTimeout33_7BCBCDF8CEE368FFC3F2C722E3238A4FLLVySSGMd, &_s15TokenGeneration17StreamWithTimeout33_7BCBCDF8CEE368FFC3F2C722E3238A4FLLVySSGMR);
    v3 = *(v0 + 40);
    v4 = __swift_project_boxed_opaque_existential_1((v0 + 16), v3);
    v5 = *(v3 - 8);
    v6 = swift_task_alloc();
    (*(v5 + 16))(v6, v4, v3);
    *(v0 + 96) = swift_getAssociatedTypeWitness();
    *(v0 + 104) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((v0 + 72));
    dispatch thunk of AsyncSequence.makeAsyncIterator()();

    v7 = *(v0 + 56);
    v8 = *(v0 + 64);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration17StreamWithTimeout33_7BCBCDF8CEE368FFC3F2C722E3238A4FLLV8IteratorCySS_GMd, &_s15TokenGeneration17StreamWithTimeout33_7BCBCDF8CEE368FFC3F2C722E3238A4FLLV8IteratorCySS_GMR);
    v9 = swift_allocObject();
    *(v9 + 56) = 0;
    *(v9 + 64) = 1;
    *(v9 + 72) = 0;
    *(v9 + 80) = 1;
    outlined init with take of any AsyncIteratorProtocol<Self.Element == A, Self.Failure == Error>((v0 + 72), v9 + 16);
    *(v9 + 56) = v7;
    *(v9 + 64) = v8;
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0 + 16, &_s15TokenGeneration17StreamWithTimeout33_7BCBCDF8CEE368FFC3F2C722E3238A4FLLVySSGMd, &_s15TokenGeneration17StreamWithTimeout33_7BCBCDF8CEE368FFC3F2C722E3238A4FLLVySSGMR);
    swift_beginAccess();
    *(v2 + 16) = v9;
  }

  v10 = swift_task_alloc();
  *(v0 + 192) = v10;
  *v10 = v0;
  v10[1] = specialized closure #1 in AsyncThrowingStream<>.init<A>(_:mapError:);

  return specialized StreamWithTimeout.Iterator.next()();
}

{
  v1 = *(v0 + 200);
  (*(v0 + 176))(v1);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

{
  v2 = v0[20];
  v1 = v0[21];
  swift_beginAccess();
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v1, v2, &_ss16AsyncMapSequenceV8IteratorVy15TokenGeneration0E6StreamVySSGSS_GSgMd, &_ss16AsyncMapSequenceV8IteratorVy15TokenGeneration0E6StreamVySSGSS_GSgMR);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16AsyncMapSequenceV8IteratorVy15TokenGeneration0E6StreamVySSGSS_GMd, &_ss16AsyncMapSequenceV8IteratorVy15TokenGeneration0E6StreamVySSGSS_GMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 48);
  LODWORD(v1) = v5(v2, 1, v3);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v2, &_ss16AsyncMapSequenceV8IteratorVy15TokenGeneration0E6StreamVySSGSS_GSgMd, &_ss16AsyncMapSequenceV8IteratorVy15TokenGeneration0E6StreamVySSGSS_GSgMR);
  if (v1 == 1)
  {
    v6 = v0[21];
    v7 = v0[19];
    (*(v0[17] + 16))(v0[18], v0[13], v0[16]);
    lazy protocol witness table accessor for type TokenStream<String> and conformance TokenStream<A>(&lazy protocol witness table cache variable for type AsyncMapSequence<TokenStream<String>, String> and conformance AsyncMapSequence<A, B>, &_ss16AsyncMapSequenceVy15TokenGeneration0D6StreamVySSGSSGMd, &_ss16AsyncMapSequenceVy15TokenGeneration0D6StreamVySSGSSGMR, MEMORY[0x1E69E8878]);
    dispatch thunk of AsyncSequence.makeAsyncIterator()();
    (*(v4 + 56))(v7, 0, 1, v3);
    swift_beginAccess();
    outlined assign with take of AsyncCompactMapSequence<ResponseSequence, Data>.Iterator?(v7, v6, &_ss16AsyncMapSequenceV8IteratorVy15TokenGeneration0E6StreamVySSGSS_GSgMd, &_ss16AsyncMapSequenceV8IteratorVy15TokenGeneration0E6StreamVySSGSS_GSgMR);
  }

  v8 = v0[21];
  swift_beginAccess();
  if (v5(v8, 1, v3))
  {
    swift_endAccess();

    v9 = v0[1];

    return v9(0, 0);
  }

  else
  {
    v11 = lazy protocol witness table accessor for type TokenStream<String> and conformance TokenStream<A>(&lazy protocol witness table cache variable for type AsyncMapSequence<TokenStream<String>, String>.Iterator and conformance AsyncMapSequence<A, B>.Iterator, &_ss16AsyncMapSequenceV8IteratorVy15TokenGeneration0E6StreamVySSGSS_GMd, &_ss16AsyncMapSequenceV8IteratorVy15TokenGeneration0E6StreamVySSGSS_GMR, MEMORY[0x1E69E8868]);
    v12 = swift_task_alloc();
    v0[22] = v12;
    *v12 = v0;
    v12[1] = specialized closure #1 in AsyncThrowingStream<>.init<A>(_:mapError:);

    return MEMORY[0x1EEE6D8C8](v0 + 11, v3, v11);
  }
}

{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = specialized closure #1 in AsyncThrowingStream<>.init<A>(_:mapError:);
  }

  else
  {
    swift_endAccess();
    v2 = specialized closure #1 in AsyncThrowingStream<>.init<A>(_:mapError:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v2 = v0[11];
  v1 = v0[12];

  v3 = v0[1];

  return v3(v2, v1);
}

{
  v1 = v0[23];
  v2 = v0[14];
  swift_endAccess();
  v2(v1);
  swift_willThrow();

  v3 = v0[1];

  return v3();
}

{
  v1 = *(v0 + 168);
  swift_beginAccess();
  if (!*(v1 + 16))
  {
    v2 = *(v0 + 168);
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(*(v0 + 176), v0 + 16, &_s15TokenGeneration17StreamWithTimeout33_7BCBCDF8CEE368FFC3F2C722E3238A4FLLVyAA21PromptCompletionEvent_pGMd, &_s15TokenGeneration17StreamWithTimeout33_7BCBCDF8CEE368FFC3F2C722E3238A4FLLVyAA21PromptCompletionEvent_pGMR);
    v3 = *(v0 + 40);
    v4 = __swift_project_boxed_opaque_existential_1((v0 + 16), v3);
    v5 = *(v3 - 8);
    v6 = swift_task_alloc();
    (*(v5 + 16))(v6, v4, v3);
    *(v0 + 96) = swift_getAssociatedTypeWitness();
    *(v0 + 104) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((v0 + 72));
    dispatch thunk of AsyncSequence.makeAsyncIterator()();

    v7 = *(v0 + 56);
    v8 = *(v0 + 64);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration17StreamWithTimeout33_7BCBCDF8CEE368FFC3F2C722E3238A4FLLV8IteratorCyAA21PromptCompletionEvent_p_GMd, &_s15TokenGeneration17StreamWithTimeout33_7BCBCDF8CEE368FFC3F2C722E3238A4FLLV8IteratorCyAA21PromptCompletionEvent_p_GMR);
    v9 = swift_allocObject();
    *(v9 + 56) = 0;
    *(v9 + 64) = 1;
    *(v9 + 72) = 0;
    *(v9 + 80) = 1;
    outlined init with take of any AsyncIteratorProtocol<Self.Element == A, Self.Failure == Error>((v0 + 72), v9 + 16);
    *(v9 + 56) = v7;
    *(v9 + 64) = v8;
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v0 + 16, &_s15TokenGeneration17StreamWithTimeout33_7BCBCDF8CEE368FFC3F2C722E3238A4FLLVyAA21PromptCompletionEvent_pGMd, &_s15TokenGeneration17StreamWithTimeout33_7BCBCDF8CEE368FFC3F2C722E3238A4FLLVyAA21PromptCompletionEvent_pGMR);
    swift_beginAccess();
    *(v2 + 16) = v9;
  }

  v10 = swift_task_alloc();
  *(v0 + 200) = v10;
  *v10 = v0;
  v10[1] = specialized closure #1 in AsyncThrowingStream<>.init<A>(_:mapError:);
  v11 = *(v0 + 160);

  return specialized StreamWithTimeout.Iterator.next()(v11);
}

{
  v2 = *v1;
  *(v2 + 208) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](specialized closure #1 in AsyncThrowingStream<>.init<A>(_:mapError:), 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

{
  v1 = *(v0 + 208);
  (*(v0 + 184))(v1);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

{
  v2 = v0[21];
  v1 = v0[22];
  swift_beginAccess();
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v1, v2, &_ss23AsyncCompactMapSequenceV8IteratorVy20ModelManagerServices08ResponseD0V10Foundation4DataV_GSgMd, &_ss23AsyncCompactMapSequenceV8IteratorVy20ModelManagerServices08ResponseD0V10Foundation4DataV_GSgMR);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23AsyncCompactMapSequenceV8IteratorVy20ModelManagerServices08ResponseD0V10Foundation4DataV_GMd, &_ss23AsyncCompactMapSequenceV8IteratorVy20ModelManagerServices08ResponseD0V10Foundation4DataV_GMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 48);
  LODWORD(v1) = v5(v2, 1, v3);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v2, &_ss23AsyncCompactMapSequenceV8IteratorVy20ModelManagerServices08ResponseD0V10Foundation4DataV_GSgMd, &_ss23AsyncCompactMapSequenceV8IteratorVy20ModelManagerServices08ResponseD0V10Foundation4DataV_GSgMR);
  if (v1 == 1)
  {
    v6 = v0[22];
    v7 = v0[20];
    (*(v0[18] + 16))(v0[19], v0[14], v0[17]);
    lazy protocol witness table accessor for type TokenStream<String> and conformance TokenStream<A>(&lazy protocol witness table cache variable for type AsyncCompactMapSequence<ResponseSequence, Data> and conformance AsyncCompactMapSequence<A, B>, &_ss23AsyncCompactMapSequenceVy20ModelManagerServices08ResponseD0V10Foundation4DataVGMd, &_ss23AsyncCompactMapSequenceVy20ModelManagerServices08ResponseD0V10Foundation4DataVGMR, MEMORY[0x1E69E88C0]);
    dispatch thunk of AsyncSequence.makeAsyncIterator()();
    (*(v4 + 56))(v7, 0, 1, v3);
    swift_beginAccess();
    outlined assign with take of AsyncCompactMapSequence<ResponseSequence, Data>.Iterator?(v7, v6, &_ss23AsyncCompactMapSequenceV8IteratorVy20ModelManagerServices08ResponseD0V10Foundation4DataV_GSgMd, &_ss23AsyncCompactMapSequenceV8IteratorVy20ModelManagerServices08ResponseD0V10Foundation4DataV_GSgMR);
  }

  v8 = v0[22];
  swift_beginAccess();
  if (v5(v8, 1, v3))
  {
    swift_endAccess();
    *v0[13] = xmmword_1ABA1D8C0;

    v9 = v0[1];

    return v9();
  }

  else
  {
    v11 = lazy protocol witness table accessor for type TokenStream<String> and conformance TokenStream<A>(&lazy protocol witness table cache variable for type AsyncCompactMapSequence<ResponseSequence, Data>.Iterator and conformance AsyncCompactMapSequence<A, B>.Iterator, &_ss23AsyncCompactMapSequenceV8IteratorVy20ModelManagerServices08ResponseD0V10Foundation4DataV_GMd, &_ss23AsyncCompactMapSequenceV8IteratorVy20ModelManagerServices08ResponseD0V10Foundation4DataV_GMR, MEMORY[0x1E69E88B0]);
    v12 = swift_task_alloc();
    v0[23] = v12;
    *v12 = v0;
    v12[1] = specialized closure #1 in AsyncThrowingStream<>.init<A>(_:mapError:);

    return MEMORY[0x1EEE6D8C8](v0 + 11, v3, v11);
  }
}

{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = specialized closure #1 in AsyncThrowingStream<>.init<A>(_:mapError:);
  }

  else
  {
    swift_endAccess();
    v2 = specialized closure #1 in AsyncThrowingStream<>.init<A>(_:mapError:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  **(v0 + 104) = *(v0 + 88);

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = v0[24];
  v2 = v0[15];
  swift_endAccess();
  v2(v1);
  swift_willThrow();

  v3 = v0[1];

  return v3();
}

uint64_t specialized closure #1 in AsyncThrowingStream<>.init<A>(_:mapError:)(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(v6 + 200) = v2;

  if (v2)
  {

    return MEMORY[0x1EEE6DFA0](specialized closure #1 in AsyncThrowingStream<>.init<A>(_:mapError:), 0, 0);
  }

  else
  {
    v7 = *(v6 + 8);

    return v7(a1, a2);
  }
}

uint64_t specialized closure #1 in AsyncThrowingStream<>.init<A>(_:mapError:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[23] = a4;
  v5[24] = a5;
  v5[21] = a2;
  v5[22] = a3;
  v5[20] = a1;
  return MEMORY[0x1EEE6DFA0](specialized closure #1 in AsyncThrowingStream<>.init<A>(_:mapError:), 0, 0);
}

{
  v5[15] = a4;
  v5[16] = a5;
  v5[13] = a1;
  v5[14] = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23AsyncCompactMapSequenceVy20ModelManagerServices08ResponseD0V10Foundation4DataVGMd, &_ss23AsyncCompactMapSequenceVy20ModelManagerServices08ResponseD0V10Foundation4DataVGMR);
  v5[17] = v6;
  v5[18] = *(v6 - 8);
  v5[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23AsyncCompactMapSequenceV8IteratorVy20ModelManagerServices08ResponseD0V10Foundation4DataV_GSgMd, &_ss23AsyncCompactMapSequenceV8IteratorVy20ModelManagerServices08ResponseD0V10Foundation4DataV_GSgMR);
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v5[22] = swift_projectBox();

  return MEMORY[0x1EEE6DFA0](specialized closure #1 in AsyncThrowingStream<>.init<A>(_:mapError:), 0, 0);
}

{
  *(v5 + 16) = a1;
  v10 = swift_task_alloc();
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = specialized closure #1 in AsyncThrowingStream<>.init<A>(_:mapError:);

  return specialized closure #1 in AsyncThrowingStream<>.init<A>(_:mapError:)(a2, a3, a4, a5);
}

{
  *(v5 + 16) = a1;
  v10 = swift_task_alloc();
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = specialized closure #1 in AsyncThrowingStream<>.init<A>(_:mapError:);

  return specialized closure #1 in AsyncThrowingStream<>.init<A>(_:mapError:)(a2, a3, a4, a5);
}

uint64_t specialized Clock.sleep(for:tolerance:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = type metadata accessor for ContinuousClock.Instant();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x1EEE6DFA0](specialized Clock.sleep(for:tolerance:), 0, 0);
}

double specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B)@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
  a2[3] = v4;

  return result;
}

BOOL specialized String.withCString<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v4 >= 0x21 || ((0x100003E01uLL >> v4) & 1) == 0)
      {
LABEL_10:
        v6 = _swift_stdlib_strtod_clocale();
        return v6 && *v6 == 0;
      }

      return 0;
    }
  }

  _StringGuts._slowWithCString<A>(_:)();
  if (!v3)
  {
    return v8;
  }

  return v5;
}

uint64_t specialized closure #1 in withTimeout<A>(timeout:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  *(v5 + 16) = a1;
  v10 = swift_task_alloc();
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = specialized closure #1 in withTimeout<A>(timeout:_:);
  v11.n128_f64[0] = a5;

  return specialized closure #1 in withTimeout<A>(timeout:_:)(a2, a3, a4, v11);
}

{
  *(v5 + 16) = a1;
  v10 = swift_task_alloc();
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = specialized closure #1 in withTimeout<A>(timeout:_:);
  v11.n128_f64[0] = a5;

  return specialized closure #1 in withTimeout<A>(timeout:_:)(a2, a3, a4, v11);
}

uint64_t specialized closure #1 in withTimeout<A>(timeout:_:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v10 = *v5;
  v11 = *v5;

  if (!v4)
  {
    v12 = *(v10 + 16);
    *v12 = a1;
    *(v12 + 8) = a2;
    *(v12 + 16) = a3;
    *(v12 + 24) = a4;
  }

  v13 = *(v11 + 8);

  return v13();
}

uint64_t specialized closure #1 in closure #1 in withTimeout<A>(timeout:_:)()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = specialized closure #1 in closure #1 in withTimeout<A>(timeout:_:);
  }

  else
  {
    v2 = specialized closure #1 in closure #1 in withTimeout<A>(timeout:_:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);
  *v1 = *(v0 + 16);
  *(v1 + 8) = v2;
  return (*(v0 + 8))();
}

{
  return (*(v0 + 8))();
}

{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = specialized closure #1 in closure #1 in withTimeout<A>(timeout:_:);
  }

  else
  {
    v2 = specialized closure #1 in closure #1 in withTimeout<A>(timeout:_:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  **(v0 + 32) = *(v0 + 16);
  return (*(v0 + 8))();
}

{
  return (*(v0 + 8))();
}

uint64_t specialized closure #2 in closure #1 in withTimeout<A>(timeout:_:)(uint64_t a1, double a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = specialized closure #2 in closure #1 in withTimeout<A>(timeout:_:);

  return specialized closure #2 in closure #1 in withTimeout<A>(timeout:_:)(a2);
}

{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = specialized closure #2 in closure #1 in withTimeout<A>(timeout:_:);

  return specialized closure #2 in closure #1 in withTimeout<A>(timeout:_:)(a2);
}

uint64_t specialized closure #2 in closure #1 in withTimeout<A>(timeout:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v4;
  v9 = *v4;

  if (!v3)
  {
    v10 = *(v8 + 16);
    *v10 = a1;
    v10[1] = a2;
    v10[2] = a3;
  }

  v11 = *(v9 + 8);

  return v11();
}

uint64_t partial apply for specialized closure #1 in AsyncThrowingStream<>.init<A>(_:mapError:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[10];
  v6 = v1[11];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return specialized closure #1 in AsyncThrowingStream<>.init<A>(_:mapError:)(a1, v4, (v1 + 3), v5, v6);
}

{
  v4 = v1[2];
  v5 = v1[10];
  v6 = v1[11];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return specialized closure #1 in AsyncThrowingStream<>.init<A>(_:mapError:)(a1, v4, (v1 + 3), v5, v6);
}

{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss16AsyncMapSequenceVy15TokenGeneration0D6StreamVySSGSSGMd, &_ss16AsyncMapSequenceVy15TokenGeneration0D6StreamVySSGSSGMR) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return specialized closure #1 in AsyncThrowingStream<>.init<A>(_:mapError:)(a1, v7, v1 + v6, v9, v10);
}

{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss23AsyncCompactMapSequenceVy20ModelManagerServices08ResponseD0V10Foundation4DataVGMd, &_ss23AsyncCompactMapSequenceVy20ModelManagerServices08ResponseD0V10Foundation4DataVGMR) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return specialized closure #1 in AsyncThrowingStream<>.init<A>(_:mapError:)(a1, v6, v1 + v5, v8, v9);
}

uint64_t partial apply for closure #1 in TokenGenerator._oneShotCompletion<A, B>(type:configuration:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = (*(*(v5 - 8) + 80) + 48) & ~*(*(v5 - 8) + 80);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return closure #1 in TokenGenerator._oneShotCompletion<A, B>(type:configuration:)(a1, v1 + v8, v4, v5, v6, v7);
}

uint64_t partial apply for closure #2 in TokenGenerator._oneShotCompletion<A, B>(type:configuration:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return closure #2 in TokenGenerator._oneShotCompletion<A, B>(type:configuration:)(a1, v8, v9, v10, v4, v5, v6, v7);
}

uint64_t partial apply for closure #2 in TokenGenerator._completeSingleElement<A, B>(type:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v10 = v4[2];
  v11 = v4[6];
  v13 = v4[7];
  v12 = v4[8];
  v14 = swift_task_alloc();
  *(v5 + 16) = v14;
  *v14 = v5;
  v14[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return closure #2 in TokenGenerator._completeSingleElement<A, B>(type:configuration:)(a1, a2, a3, a4 & 1, v11, v13, v12, v10);
}

uint64_t partial apply for closure #2 in TokenGenerator._completeMultiElement<A, B>(type:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v10 = v4[2];
  v11 = v4[6];
  v13 = v4[7];
  v12 = v4[8];
  v14 = swift_task_alloc();
  *(v5 + 16) = v14;
  *v14 = v5;
  v14[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return closure #2 in TokenGenerator._completeMultiElement<A, B>(type:configuration:)(a1, a2, a3, a4 & 1, v11, v13, v12, v10);
}

uint64_t objectdestroyTm()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v4 + 8, v2 | 7);
}

uint64_t partial apply for closure #1 in TokenGenerator._streamResponse<A>(configuration:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = (*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80);
  v7 = *(v1 + ((*(*(v4 - 8) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return closure #1 in TokenGenerator._streamResponse<A>(configuration:)(a1, v1 + v6, v7, v4, v5);
}

uint64_t objectdestroy_32Tm()
{
  v1 = *(*(v0 + 24) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t partial apply for closure #1 in TokenGenerator._oneShotResponse<A, B>(type:configuration:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = (*(*(v5 - 8) + 80) + 48) & ~*(*(v5 - 8) + 80);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return closure #1 in TokenGenerator._oneShotResponse<A, B>(type:configuration:)(a1, v1 + v8, v4, v5, v6, v7);
}

uint64_t partial apply for closure #2 in TokenGenerator._oneShotResponse<A, B>(type:configuration:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return closure #2 in TokenGenerator._oneShotResponse<A, B>(type:configuration:)(a1, v8, v9, v10, v4, v5, v6, v7);
}

uint64_t partial apply for closure #2 in TokenGenerator._respondMultiElement<A, B>(type:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v10 = v4[2];
  v11 = v4[6];
  v13 = v4[7];
  v12 = v4[8];
  v14 = swift_task_alloc();
  *(v5 + 16) = v14;
  *v14 = v5;
  v14[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return closure #2 in TokenGenerator._respondMultiElement<A, B>(type:configuration:)(a1, a2, a3, a4 & 1, v11, v13, v12, v10);
}

uint64_t partial apply for closure #2 in TokenGenerator._respondSingleElement<A, B>(type:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v10 = v4[2];
  v11 = v4[6];
  v13 = v4[7];
  v12 = v4[8];
  v14 = swift_task_alloc();
  *(v5 + 16) = v14;
  *v14 = v5;
  v14[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return closure #2 in TokenGenerator._completeSingleElement<A, B>(type:configuration:)(a1, a2, a3, a4 & 1, v11, v13, v12, v10);
}

unint64_t lazy protocol witness table accessor for type PromptCompletionStream and conformance PromptCompletionStream()
{
  result = lazy protocol witness table cache variable for type PromptCompletionStream and conformance PromptCompletionStream;
  if (!lazy protocol witness table cache variable for type PromptCompletionStream and conformance PromptCompletionStream)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStream and conformance PromptCompletionStream);
  }

  return result;
}

uint64_t objectdestroy_26Tm()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t partial apply for closure #1 in TokenGenerator._render<A>(configuration:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return closure #1 in TokenGenerator._tokenCount<A>(configuration:)(a1, v6, v4, v5);
}

{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return closure #1 in TokenGenerator._tokenCount<A>(configuration:)(a1, v6, v4, v5);
}

uint64_t instantiation function for generic protocol witness table for TokenGeneratorCompletionResponseStringStream(uint64_t a1)
{
  result = lazy protocol witness table accessor for type TokenGeneratorCompletionResponse and conformance TokenGeneratorCompletionResponse(&lazy protocol witness table cache variable for type TokenGeneratorCompletionResponseStringStream and conformance TokenGeneratorCompletionResponseStringStream, type metadata accessor for TokenGeneratorCompletionResponseStringStream, &protocol conformance descriptor for TokenGeneratorCompletionResponseStringStream);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type TokenGeneratorCompletionResponse and conformance TokenGeneratorCompletionResponse(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t instantiation function for generic protocol witness table for TokenGeneratorChatResponseStringStream(uint64_t a1)
{
  result = lazy protocol witness table accessor for type TokenGeneratorCompletionResponse and conformance TokenGeneratorCompletionResponse(&lazy protocol witness table cache variable for type TokenGeneratorChatResponseStringStream and conformance TokenGeneratorChatResponseStringStream, type metadata accessor for TokenGeneratorChatResponseStringStream, &protocol conformance descriptor for TokenGeneratorChatResponseStringStream);
  *(a1 + 8) = result;
  return result;
}

void type metadata accessor for TokenStream<String>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!lazy cache variable for type metadata for TokenStream<String>)
  {
    v4 = type metadata accessor for TokenStream(0, MEMORY[0x1E69E6158], MEMORY[0x1E69A0EB0], a4);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for TokenStream<String>);
    }
  }
}

void type metadata accessor for StringResponseSanitizerWithConfiguration?(uint64_t a1, __n128 a2)
{
  if (!lazy cache variable for type metadata for StringResponseSanitizerWithConfiguration?)
  {
    type metadata accessor for StringResponseSanitizerWithConfiguration();
    v2 = type metadata accessor for Optional();
    if (!v3)
    {
      atomic_store(v2, &lazy cache variable for type metadata for StringResponseSanitizerWithConfiguration?);
    }
  }
}

void type metadata accessor for Double?()
{
  if (!lazy cache variable for type metadata for Double?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Double?);
    }
  }
}

void type metadata completion function for TokenGeneratorCompletionResponseStringStream(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TokenStream<String>(319, a2, a3, a4);
  if (v5 <= 0x3F)
  {
    type metadata accessor for StringResponseSanitizerWithConfiguration?(319, v4);
    if (v6 <= 0x3F)
    {
      type metadata accessor for GenerativeFunctionInstrumenter();
      if (v7 <= 0x3F)
      {
        type metadata accessor for Double?();
        if (v8 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v9 = a4(0);
  v10 = *(v9 - 8);
  if (*(v10 + 84) == a2)
  {
    v11 = *(v10 + 48);

    return v11(a1, a2, v9);
  }

  else
  {
    v13 = a5(0);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + *(a3 + 20);

    return v14(v15, a2, v13);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v11 = a5(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a3)
  {
    v13 = *(v12 + 56);

    return v13(a1, a2, a2, v11);
  }

  else
  {
    v15 = a6(0);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + *(a4 + 20);

    return v16(v17, a2, a2, v15);
  }
}

void type metadata accessor for AsyncThrowingStream<String, Error>.Iterator(uint64_t a1)
{
  if (!lazy cache variable for type metadata for AsyncThrowingStream<String, Error>.Iterator)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v1 = type metadata accessor for AsyncThrowingStream.Iterator();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for AsyncThrowingStream<String, Error>.Iterator);
    }
  }
}

uint64_t dispatch thunk of TokenGeneratorResponseStringStreamAsyncSequence.collect()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 24) + **(a2 + 24));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = dispatch thunk of TokenGeneratorResponseStringStreamAsyncSequence.collect();

  return v7(a1, a2);
}

uint64_t dispatch thunk of TokenGeneratorResponseStringStreamAsyncSequence.collect()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *v3;

  v7 = *(v9 + 8);

  return v7(a1, a2, a3);
}

uint64_t __swift_get_extra_inhabitant_index_123Tm(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMR);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for GenerativeFunctionInstrumenter();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *__swift_store_extra_inhabitant_index_124Tm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMd, &_s26GenerativeModelsFoundation40StringResponseSanitizerWithConfigurationVSgMR);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for GenerativeFunctionInstrumenter();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void type metadata completion function for TokenGeneratorResponsePromptCompletionStream(uint64_t a1, __n128 a2)
{
  type metadata accessor for StringResponseSanitizerWithConfiguration?(319, a2);
  if (v2 <= 0x3F)
  {
    type metadata accessor for GenerativeFunctionInstrumenter();
    if (v3 <= 0x3F)
    {
      type metadata accessor for Double?();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_168Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a2)
  {
    v10 = *(v9 + 48);

    return v10(a1, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for GenerativeFunctionInstrumenter();
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 20);

    return v13(v14, a2, v12);
  }
}

uint64_t __swift_store_extra_inhabitant_index_169Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v11 = *(v10 - 8);
  if (*(v11 + 84) == a3)
  {
    v12 = *(v11 + 56);

    return v12(a1, a2, a2, v10);
  }

  else
  {
    v14 = type metadata accessor for GenerativeFunctionInstrumenter();
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + *(a4 + 20);

    return v15(v16, a2, a2, v14);
  }
}

uint64_t type metadata completion function for TokenGeneratorCompletionResponse(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319, a2, a3);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void type metadata accessor for AsyncThrowingStream<PromptCompletionEvent, Error>.Iterator(uint64_t a1)
{
  if (!lazy cache variable for type metadata for AsyncThrowingStream<PromptCompletionEvent, Error>.Iterator)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s15TokenGeneration21PromptCompletionEvent_pMd, &_s15TokenGeneration21PromptCompletionEvent_pMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v1 = type metadata accessor for AsyncThrowingStream.Iterator();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for AsyncThrowingStream<PromptCompletionEvent, Error>.Iterator);
    }
  }
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for TokenGenerator.CompleteGenerableConfigurationInput(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 57))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 56);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TokenGenerator.CompleteGenerableConfigurationInput(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 41) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for TokenGenerator.CompleteGenerableConfigurationInput(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 56) = a2;
  return result;
}

void type metadata accessor for (prompt: PromptVariant)()
{
  if (!lazy cache variable for type metadata for (prompt: PromptVariant))
  {
    v0 = type metadata accessor for PromptVariant();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for (prompt: PromptVariant));
    }
  }
}

void type metadata accessor for (promptTemplateInfo: PromptTemplateInfo, renderedPrompt: PromptVariant)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (promptTemplateInfo: PromptTemplateInfo, renderedPrompt: PromptVariant))
  {
    type metadata accessor for PromptTemplateInfo();
    type metadata accessor for PromptVariant();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (promptTemplateInfo: PromptTemplateInfo, renderedPrompt: PromptVariant));
    }
  }
}

uint64_t partial apply for specialized closure #1 in StreamWithTimeout.Iterator.next()(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return specialized closure #1 in StreamWithTimeout.Iterator.next()(a1, v1);
}

{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return specialized closure #1 in StreamWithTimeout.Iterator.next()(a1, v1);
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t partial apply for specialized closure #1 in closure #1 in withTimeout<A>(timeout:_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return specialized closure #1 in closure #1 in withTimeout<A>(timeout:_:)(a1, v4, v5, v6);
}

{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return specialized closure #1 in closure #1 in withTimeout<A>(timeout:_:)(a1, v4, v5, v6);
}

{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return specialized closure #1 in closure #1 in withTimeout<A>(timeout:_:)(a1, v4, v5, v6);
}

{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return specialized closure #1 in closure #1 in withTimeout<A>(timeout:_:)(a1, v4, v5, v6);
}

{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return specialized closure #1 in closure #1 in withTimeout<A>(timeout:_:)(a1, v4, v5, v6);
}

{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return specialized closure #1 in closure #1 in withTimeout<A>(timeout:_:)(a1, v4, v5, v6);
}

uint64_t partial apply for specialized closure #2 in closure #1 in withTimeout<A>(timeout:_:)()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return specialized closure #2 in closure #1 in withTimeout<A>(timeout:_:)(v2);
}

{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return specialized closure #2 in closure #1 in withTimeout<A>(timeout:_:)(v2);
}

{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return specialized closure #2 in closure #1 in withTimeout<A>(timeout:_:)(v2);
}

{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return specialized closure #2 in closure #1 in withTimeout<A>(timeout:_:)(v2);
}

uint64_t partial apply for closure #1 in TokenGenerator._respond<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:)(uint64_t a1)
{
  v3 = v2;
  v5 = v1[2];
  v6 = v1[5];
  v15 = v1[4];
  v16 = v1[3];
  v7 = *(type metadata accessor for GenerativeFunctionInstrumenter() - 8);
  v8 = (*(v7 + 80) + 72) & ~*(v7 + 80);
  v9 = (v8 + *(v7 + 64) + *(*(v6 - 8) + 80)) & ~*(*(v6 - 8) + 80);
  v10 = (*(*(v6 - 8) + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v1 + v10);
  v12 = *(v1 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return closure #1 in TokenGenerator._respond<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:)(a1, v1 + v8, v1 + v9, v11, v12, v5, v16, v15);
}

uint64_t partial apply for closure #2 in TokenGenerator._respond<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:)(uint64_t a1)
{
  v4 = v1[9];
  v5 = v1[10];
  v7 = v1[11];
  v6 = v1[12];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return closure #2 in TokenGenerator._respond<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:)(a1, v4, v5, v7, v6);
}

uint64_t partial apply for closure #1 in closure #1 in TokenGenerator._respond<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return closure #1 in closure #1 in TokenGenerator._respond<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:)(a1, v4);
}

uint64_t partial apply for closure #1 in closure #2 in closure #1 in TokenGenerator._respond<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[9];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return closure #1 in closure #2 in closure #1 in TokenGenerator._respond<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:)(a1, v10, v4, v5, v6, v7, v8, v9);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable () -> (@out PromptCompletion, @error @owned Error)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return thunk for @escaping @callee_guaranteed @Sendable () -> (@out PromptCompletion, @error @owned Error)(a1, v4);
}

uint64_t partial apply for closure #1 in closure #1 in TokenGenerator._streamResponse<A>(configuration:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return closure #1 in closure #1 in TokenGenerator._streamResponse<A>(configuration:)(a1, v4);
}

uint64_t specialized closure #1 in withTimeout<A>(timeout:_:)(uint64_t a1, uint64_t a2, double a3)
{
  v8 = *v4;
  v9 = *v4;

  if (!v3)
  {
    v10 = *(v8 + 16);
    *v10 = a1;
    *(v10 + 8) = a2;
    *(v10 + 16) = a3;
  }

  v11 = *(v9 + 8);

  return v11();
}

uint64_t specialized closure #2 in closure #1 in withTimeout<A>(timeout:_:)(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;

  if (!v2)
  {
    v8 = *(v6 + 16);
    *v8 = a1;
    v8[1] = a2;
  }

  v9 = *(v7 + 8);

  return v9();
}

uint64_t specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *, __n128), uint64_t a3, char a4, void *a5)
{
  v52 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v42 = v10;
  v43 = v6;
  while (v9)
  {
    v46 = a4;
    v13 = v11;
LABEL_14:
    v15 = (v13 << 10) | (16 * __clz(__rbit64(v9)));
    v16 = (*(a1 + 48) + v15);
    v17 = *v16;
    v18 = v16[1];
    v19 = (*(a1 + 56) + v15);
    v20 = *v19;
    v21 = v19[1];
    v51[0] = v17;
    v51[1] = v18;
    v51[2] = v20;
    v51[3] = v21;

    (a2)(&v47, v51);

    v22 = v47;
    v23 = v48;
    v24 = v49;
    v25 = v50;
    v26 = *v52;
    v28 = specialized __RawDictionaryStorage.find<A>(_:)(v47, v48);
    v29 = v26[2];
    v30 = (v27 & 1) == 0;
    v31 = v29 + v30;
    if (__OFADD__(v29, v30))
    {
      goto LABEL_25;
    }

    v32 = v27;
    if (v26[3] >= v31)
    {
      if ((v46 & 1) == 0)
      {
        specialized _NativeDictionary.copy()();
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v31, v46 & 1);
      v33 = specialized __RawDictionaryStorage.find<A>(_:)(v22, v23);
      if ((v32 & 1) != (v34 & 1))
      {
        goto LABEL_27;
      }

      v28 = v33;
    }

    v9 &= v9 - 1;
    v35 = *v52;
    if (v32)
    {

      v12 = (v35[7] + 16 * v28);
      *v12 = v24;
      v12[1] = v25;
    }

    else
    {
      v35[(v28 >> 6) + 8] |= 1 << v28;
      v36 = (v35[6] + 16 * v28);
      *v36 = v22;
      v36[1] = v23;
      v37 = (v35[7] + 16 * v28);
      *v37 = v24;
      v37[1] = v25;
      v38 = v35[2];
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (v39)
      {
        goto LABEL_26;
      }

      v35[2] = v40;
    }

    a4 = 1;
    v11 = v13;
    v10 = v42;
    v6 = v43;
  }

  v14 = v11;
  while (1)
  {
    v13 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      outlined consume of [String : String].Iterator._Variant(a1);
    }

    v9 = *(v6 + 8 * v13);
    ++v14;
    if (v9)
    {
      v46 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t objectdestroy_15Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(*(v2 - 8) + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(*(v2 - 8) + 64);
  v6 = v1 + v4;

  v7 = *(v2 + 20);
  v8 = type metadata accessor for StringResponseSanitizerWithConfiguration();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v1 + v4 + v7, 1, v8))
  {
    (*(v9 + 8))(v6 + v7, v8);
  }

  v10 = *(v2 + 24);
  v11 = type metadata accessor for GenerativeFunctionInstrumenter();
  (*(*(v11 - 8) + 8))(v6 + v10, v11);

  return MEMORY[0x1EEE6BDD0](v1, v4 + v5, v3 | 7);
}

uint64_t partial apply for specialized closure #1 in closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect()(uint64_t a1)
{
  v4 = *(type metadata accessor for TokenGeneratorChatResponseStringStream(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return specialized closure #1 in closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect()(a1, v1 + v5);
}

{
  v4 = *(type metadata accessor for TokenGeneratorCompletionResponseStringStream(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return specialized closure #1 in closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect()(a1, v1 + v5);
}

uint64_t partial apply for specialized closure #2 in closure #1 in withTimeout<A>(timeout:_:)(uint64_t a1)
{
  v4 = *(v1 + 32);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return specialized closure #2 in closure #1 in withTimeout<A>(timeout:_:)(a1, v4);
}

{
  v4 = *(v1 + 32);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return specialized closure #2 in closure #1 in withTimeout<A>(timeout:_:)(a1, v4);
}

uint64_t objectdestroy_289Tm()
{
  v1 = *(v0 + 40);
  v2 = type metadata accessor for GenerativeFunctionInstrumenter();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 72) & ~v4;
  v6 = *(v1 - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + *(v3 + 64) + v7) & ~v7;
  v9 = v4 | v7;
  v10 = (*(v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v3 + 8))(v0 + v5, v2);
  (*(v6 + 8))(v0 + v8, v1);

  return MEMORY[0x1EEE6BDD0](v0, ((v10 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v9 | 7);
}

uint64_t partial apply for closure #1 in TokenGenerator._complete<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:)(uint64_t a1)
{
  v3 = v2;
  v5 = v1[2];
  v6 = v1[5];
  v15 = v1[4];
  v16 = v1[3];
  v7 = *(type metadata accessor for GenerativeFunctionInstrumenter() - 8);
  v8 = (*(v7 + 80) + 72) & ~*(v7 + 80);
  v9 = (v8 + *(v7 + 64) + *(*(v6 - 8) + 80)) & ~*(*(v6 - 8) + 80);
  v10 = (*(*(v6 - 8) + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v1 + v10);
  v12 = *(v1 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return closure #1 in TokenGenerator._complete<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:)(a1, v1 + v8, v1 + v9, v11, v12, v5, v16, v15);
}

uint64_t partial apply for closure #2 in TokenGenerator._complete<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:)(uint64_t a1)
{
  v4 = v1[9];
  v5 = v1[10];
  v7 = v1[11];
  v6 = v1[12];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return closure #2 in TokenGenerator._complete<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:)(a1, v4, v5, v7, v6);
}

uint64_t partial apply for closure #1 in closure #1 in TokenGenerator._complete<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return closure #1 in closure #1 in TokenGenerator._complete<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:)(a1, v4);
}

uint64_t partial apply for closure #1 in closure #2 in closure #1 in TokenGenerator._complete<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[9];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return closure #1 in closure #2 in closure #1 in TokenGenerator._complete<A, B, C, D>(type:configuration:generatingContent:instrumenter:catalogClient:_:)(a1, v10, v4, v5, v6, v7, v8, v9);
}

uint64_t partial apply for closure #1 in TokenGenerator.completeGenerable<A>(type:configurationInput:generativeFunctionInstrumenter:getStringRenderedPromptSanitizerWithConfiguration:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return closure #1 in TokenGenerator.completeGenerable<A>(type:configurationInput:generativeFunctionInstrumenter:getStringRenderedPromptSanitizerWithConfiguration:)(a1, v6, v7, v9, v8, v4, v5);
}

uint64_t outlined assign with take of AsyncCompactMapSequence<ResponseSequence, Data>.Iterator?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t lazy protocol witness table accessor for type TokenStream<String> and conformance TokenStream<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect()(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = (*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return closure #1 in closure #1 in TokenGeneratorResponseStringStreamAsyncSequence.collect()(a1, v1 + v6, v4, v5);
}

uint64_t objectdestroy_269Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t objectdestroy_349Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t closure #2 in PromptCompletionStream.init(streamResponse:bufferResponse:)partial apply(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return closure #2 in PromptCompletionStream.init(streamResponse:bufferResponse:)(a1, v4, v5, v6);
}

{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return closure #2 in PromptCompletionStream.init(streamResponse:bufferResponse:)(a1, v4, v5, v6);
}

uint64_t partial apply for closure #1 in closure #1 in TokenGenerator._streamCompletion<A>(configuration:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return closure #1 in closure #1 in TokenGenerator._streamCompletion<A>(configuration:)(a1, v4);
}

_BYTE *partial apply for closure #1 in closure #1 in Double.init<A>(_:)@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 0x20;
  v4 = (1 << v2) & 0x100003E01;
  if (v3 || v4 == 0)
  {
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v7 = *result == 0;
    }

    else
    {
      v7 = 0;
    }

    *a2 = v7;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t partial apply for closure #2 in static TokenGenerator.scrubIfNeeded(promptTurns:stringRenderedPromptSanitizerWithConfiguration:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in static TokenGenerator.scrubIfNeeded(promptTurns:stringRenderedPromptSanitizerWithConfiguration:);

  return closure #1 in static TokenGenerator.scrubIfNeeded(promptTurns:stringRenderedPromptSanitizerWithConfiguration:)(a1, a2);
}

uint64_t partial apply for closure #1 in static TokenGenerator.scrubIfNeeded(promptTurns:stringRenderedPromptSanitizerWithConfiguration:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in static TokenGenerator.scrubIfNeeded(promptTurns:stringRenderedPromptSanitizerWithConfiguration:);

  return closure #1 in static TokenGenerator.scrubIfNeeded(promptTurns:stringRenderedPromptSanitizerWithConfiguration:)(a1, a2);
}

uint64_t partial apply for closure #1 in static TokenGenerator.scrubIfNeeded(inputPrompt:stringRenderedPromptSanitizerWithConfiguration:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in static TokenGenerator.scrubIfNeeded(inputPrompt:stringRenderedPromptSanitizerWithConfiguration:);

  return closure #1 in static TokenGenerator.scrubIfNeeded(inputPrompt:stringRenderedPromptSanitizerWithConfiguration:)(a1, a2);
}

{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t type metadata completion function for TokenGenerator.PromptInputFromGenerativeModel(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319, a2, a3);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void type metadata accessor for ScrubbedPrompt<CompletionPrompt>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ScrubbedPrompt<CompletionPrompt>)
  {
    v2 = type metadata accessor for CompletionPrompt();
    v3 = lazy protocol witness table accessor for type TokenGeneratorCompletionResponse and conformance TokenGeneratorCompletionResponse(&lazy protocol witness table cache variable for type CompletionPrompt and conformance CompletionPrompt, MEMORY[0x1E69C61B8], &protocol conformance descriptor for CompletionPrompt);
    v5 = type metadata accessor for ScrubbedPrompt(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &lazy cache variable for type metadata for ScrubbedPrompt<CompletionPrompt>);
    }
  }
}

void type metadata accessor for ScrubbedPrompt<ChatMessagesPrompt>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ScrubbedPrompt<ChatMessagesPrompt>)
  {
    v2 = type metadata accessor for ChatMessagesPrompt();
    v3 = lazy protocol witness table accessor for type TokenGeneratorCompletionResponse and conformance TokenGeneratorCompletionResponse(&lazy protocol witness table cache variable for type ChatMessagesPrompt and conformance ChatMessagesPrompt, MEMORY[0x1E69C61F8], &protocol conformance descriptor for ChatMessagesPrompt);
    v5 = type metadata accessor for ScrubbedPrompt(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &lazy cache variable for type metadata for ScrubbedPrompt<ChatMessagesPrompt>);
    }
  }
}

uint64_t Prompt.overestimatedTokenCount()(__n128 a1)
{
  v31 = type metadata accessor for Prompt.Component.Value();
  v1 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for Prompt.Component();
  v3 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = Prompt.components.getter();
  v7 = *(v6 + 16);
  if (v7)
  {
    v32 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
    v8 = v32;
    v10 = *(v3 + 16);
    v9 = v3 + 16;
    v11 = v6 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v27 = *(v9 + 56);
    v28 = v10;
    v25 = v6;
    v26 = (v1 + 8);
    v12 = (v9 - 8);
    do
    {
      v13 = v29;
      v14 = v9;
      v28(v5, v11, v29);
      v15 = v30;
      Prompt.Component.value.getter();
      v16 = Prompt.Component.Value.overestimatedTokenCount()();
      (*v26)(v15, v31);
      (*v12)(v5, v13);
      v32 = v8;
      v18 = v8[2];
      v17 = v8[3];
      if (v18 >= v17 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1);
        v8 = v32;
      }

      v8[2] = v18 + 1;
      v8[v18 + 4] = v16;
      v11 += v27;
      --v7;
      v9 = v14;
    }

    while (v7);

    v20 = v8[2];
    if (v20)
    {
LABEL_7:
      v21 = 0;
      v22 = v8 + 4;
      while (1)
      {
        v23 = *v22++;
        v24 = __OFADD__(v21, v23);
        v21 += v23;
        if (v24)
        {
          break;
        }

        if (!--v20)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
      return result;
    }
  }

  else
  {

    v8 = MEMORY[0x1E69E7CC0];
    v20 = *(MEMORY[0x1E69E7CC0] + 16);
    if (v20)
    {
      goto LABEL_7;
    }
  }

  v21 = 0;
LABEL_13:

  return v21;
}

uint64_t TokenGenerator._overestimateTokenCount<A>(configuration:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = protocol witness for ChatLanguageModelProvidingTokenCountable._tokenCount<A>(configuration:) in conformance TokenGenerator;

  return specialized TokenGenerator._overestimateTokenCount<A>(configuration:)(a1, a2, a3);
}

{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = protocol witness for CompletionLanguageModelProvidingTokenCountable._tokenCount<A>(configuration:) in conformance TokenGenerator;

  return specialized TokenGenerator._overestimateTokenCount<A>(configuration:)(a1, a2, a3);
}

uint64_t protocol witness for CompletionLanguageModelProvidingTokenCountOverestimatable._overestimateTokenCount<A>(configuration:) in conformance TokenGenerator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = protocol witness for CompletionLanguageModelProvidingTokenCountable._tokenCount<A>(configuration:) in conformance TokenGenerator;

  return specialized TokenGenerator._overestimateTokenCount<A>(configuration:)(a1, a2, a3);
}

uint64_t protocol witness for ChatLanguageModelProvidingTokenCountOverestimatable._overestimateTokenCount<A>(configuration:) in conformance TokenGenerator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = protocol witness for CompletionLanguageModelProvidingTokenCountable._tokenCount<A>(configuration:) in conformance TokenGenerator;

  return specialized TokenGenerator._overestimateTokenCount<A>(configuration:)(a1, a2, a3);
}

uint64_t Prompt.Component.Value.overestimatedTokenCount()()
{
  v1 = v0;
  v57 = type metadata accessor for Prompt.ImageEmbeddingData();
  v59 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v58 = &v57 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for SpecialToken();
  v61 = *(v3 - 8);
  v62 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v60 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for BindableVariable();
  v64 = *(v5 - 8);
  v65 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v63 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Prompt();
  v66 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Prompt();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Prompt.Component.Value();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = (&v57 - v20);
  (*(v15 + 16))(&v57 - v20, v1, v14, v19);
  v22 = (*(v15 + 88))(v21, v14);
  if (v22 == *MEMORY[0x1E69C6318])
  {
    (*(v15 + 96))(v21, v14);
    v23.n128_f64[0] = (*(v11 + 32))(v13, v21, v10);
    v24 = Prompt.overestimatedTokenCount()(v23);
    (*(v11 + 8))(v13, v10);
    return v24;
  }

  v67 = v10;
  if (v22 != *MEMORY[0x1E69C6328])
  {
    if (v22 == *MEMORY[0x1E69C6320])
    {
      (*(v15 + 96))(v21, v14);
      MEMORY[0x1AC5A3900](*v21, v21[1]);
      v24 = Prompt.overestimatedTokenCount()();
      (*(v66 + 8))(v9, v7);
      return v24;
    }

    v24 = 1;
    if (v22 == *MEMORY[0x1E69C62F8] || v22 == *MEMORY[0x1E69C6310])
    {
      return v24;
    }

    if (v22 == *MEMORY[0x1E69C6300])
    {
      (*(v15 + 8))(v21, v14);
      return 1;
    }

    if (v22 == *MEMORY[0x1E69C62E0])
    {
      (*(v15 + 96))(v21, v14);
      v46 = v63;
      v45 = v64;
      v47 = v65;
      (*(v64 + 32))(v63, v21, v65);
      BindableVariable.toValue()();
      v24 = Prompt.Component.Value.overestimatedTokenCount()();
      (*(v15 + 8))(v17, v14);
      (*(v45 + 8))(v46, v47);
      return v24;
    }

    if (v22 == *MEMORY[0x1E69C62D8])
    {
      (*(v15 + 96))(v21, v14);
      v49 = v60;
      v48 = v61;
      v50 = v62;
      (*(v61 + 32))(v60, v21, v62);
      v51 = SpecialToken.overestimatedTokenCount.getter();
      v53 = v52;
      (*(v48 + 8))(v49, v50);
      if (v53)
      {
        return 1;
      }

      else
      {
        return v51;
      }
    }

    if (v22 != *MEMORY[0x1E69C6338] && v22 != *MEMORY[0x1E69C62D0] && v22 == *MEMORY[0x1E69C62E8])
    {
      (*(v15 + 96))(v21, v14);
      v55 = v58;
      v54 = v59;
      v56 = v57;
      (*(v59 + 32))(v58, v21, v57);
      v24 = Prompt.ImageEmbeddingData.tokenCount.getter();
      (*(v54 + 8))(v55, v56);
      return v24;
    }

    (*(v15 + 8))(v21, v14);
    return 0;
  }

  (*(v15 + 96))(v21, v14);
  v25 = *v21;
  v26 = *(*v21 + 16);
  if (!v26)
  {

    v27 = MEMORY[0x1E69E7CC0];
    v41 = *(MEMORY[0x1E69E7CC0] + 16);
    if (v41)
    {
      goto LABEL_13;
    }

    goto LABEL_22;
  }

  v68 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v26, 0);
  v28 = v67;
  v27 = v68;
  v30 = *(v11 + 16);
  v29 = v11 + 16;
  v31 = *(v29 + 64);
  v64 = v25;
  v32 = v25 + ((v31 + 32) & ~v31);
  v65 = *(v29 + 56);
  v66 = v30;
  v33 = (v29 - 8);
  do
  {
    v34 = v29;
    v35.n128_f64[0] = (v66)(v13, v32, v28);
    v36 = Prompt.overestimatedTokenCount()(v35);
    v28 = v67;
    v37 = v36;
    (*v33)(v13, v67);
    v68 = v27;
    v39 = *(v27 + 16);
    v38 = *(v27 + 24);
    if (v39 >= v38 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v39 + 1, 1);
      v28 = v67;
      v27 = v68;
    }

    *(v27 + 16) = v39 + 1;
    *(v27 + 8 * v39 + 32) = v37;
    v32 += v65;
    --v26;
    v29 = v34;
  }

  while (v26);

  v41 = *(v27 + 16);
  if (!v41)
  {
LABEL_22:

    return 0;
  }

LABEL_13:
  v24 = 0;
  for (i = 32; ; i += 8)
  {
    v43 = *(v27 + i);
    v44 = __OFADD__(v24, v43);
    v24 += v43;
    if (v44)
    {
      break;
    }

    if (!--v41)
    {

      return v24;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized TokenGenerator._overestimateTokenCountSync<A>(configuration:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = type metadata accessor for Prompt();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  GenerativeConfigurationProtocol.promptContent.getter();
  v8 = Prompt.overestimatedTokenCount()(v7);
  (*(v4 + 8))(v6, v3);
  return v8;
}

{
  v52 = type metadata accessor for Prompt();
  v3 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v51 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ChatMessageRole();
  v50 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v35 - v9;
  v11 = type metadata accessor for ChatMessagePrompt();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  GenerativeConfigurationProtocol.promptContent.getter();
  v15 = v54;
  v16 = *(v54 + 16);
  if (v16)
  {
    v53 = MEMORY[0x1E69E7CC0];
    v39 = v16;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16, 0);
    v17 = v3;
    v18 = 0;
    v19 = v53;
    v49 = v15 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v47 = (v50 + 16);
    v48 = v12 + 16;
    v46 = (v50 + 88);
    v45 = *MEMORY[0x1E69C63E8];
    v38 = *MEMORY[0x1E69C63F8];
    v37 = *MEMORY[0x1E69C63E0];
    v36 = *MEMORY[0x1E69C6400];
    v35 = *MEMORY[0x1E69C63D8];
    v20 = v12;
    v21 = (v50 + 8);
    v50 = v20;
    v43 = (v20 + 8);
    v44 = (v17 + 8);
    v41 = v10;
    v42 = v7;
    v40 = v15;
    do
    {
      if (v18 >= *(v15 + 16))
      {
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      (*(v50 + 16))(v14, v49 + *(v50 + 72) * v18, v11);
      ChatMessagePrompt.role.getter();
      (*v47)(v7, v10, v5);
      v22 = (*v46)(v7, v5);
      if (v22 == v45)
      {
        v23 = *v21;
        (*v21)(v10, v5);
        v23(v7, v5);
      }

      else
      {
        if (v22 != v38 && v22 != v37 && v22 != v36 && v22 != v35)
        {
          goto LABEL_28;
        }

        (*v21)(v10, v5);
      }

      v24 = v51;
      ChatMessagePrompt.prompt.getter();
      v26 = Prompt.overestimatedTokenCount()(v25);
      (*v44)(v24, v52);
      (*v43)(v14, v11);
      if (__OFADD__(v26, 2))
      {
        goto LABEL_25;
      }

      v53 = v19;
      v28 = v19[2];
      v27 = v19[3];
      if (v28 >= v27 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1);
        v19 = v53;
      }

      ++v18;
      v19[2] = v28 + 1;
      v19[v28 + 4] = v26 + 2;
      v15 = v40;
      v10 = v41;
      v7 = v42;
    }

    while (v39 != v18);

    v29 = v19[2];
    if (!v29)
    {
      goto LABEL_21;
    }
  }

  else
  {

    v19 = MEMORY[0x1E69E7CC0];
    v29 = *(MEMORY[0x1E69E7CC0] + 16);
    if (!v29)
    {
LABEL_21:
      v30 = 0;
LABEL_22:

      result = v30 + 1;
      if (!__OFADD__(v30, 1))
      {
        return result;
      }

      goto LABEL_27;
    }
  }

  v30 = 0;
  v31 = v19 + 4;
  while (1)
  {
    v32 = *v31++;
    v33 = __OFADD__(v30, v32);
    v30 += v32;
    if (v33)
    {
      break;
    }

    if (!--v29)
    {
      goto LABEL_22;
    }
  }

LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t specialized TokenGenerator._overestimateTokenCount<A>(configuration:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = type metadata accessor for Prompt();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](specialized TokenGenerator._overestimateTokenCount<A>(configuration:), 0, 0);
}

{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = type metadata accessor for Prompt();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](specialized TokenGenerator._overestimateTokenCount<A>(configuration:), 0, 0);
}

uint64_t specialized TokenGenerator._overestimateTokenCount<A>(configuration:)()
{
  v1 = type metadata accessor for CatalogClient();
  swift_allocObject();
  v0[2] = CatalogClient.init()();
  v2 = MEMORY[0x1E69DA6B8];
  v0[5] = v1;
  v0[6] = v2;

  GenerativeConfigurationProtocol<>.renderToTokenGenerationPrompt(catalogClient:)();
  v3 = v0[12];
  v4 = v0[10];
  v5 = v0[11];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v6 = Prompt.overestimatedTokenCount()();

  (*(v5 + 8))(v3, v4);

  v7 = v0[1];

  return v7(v6);
}

{
  v1 = type metadata accessor for CatalogClient();
  swift_allocObject();
  v0[2] = CatalogClient.init()();
  v2 = MEMORY[0x1E69DA6B8];
  v0[5] = v1;
  v0[6] = v2;

  GenerativeConfigurationProtocol<>.renderToTokenGenerationPromptTurns(catalogClient:)();
  v3 = v0[12];
  v4 = v0[10];
  v5 = v0[11];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  static Prompt.transcript(turns:)();

  v6 = Prompt.overestimatedTokenCount()();

  (*(v5 + 8))(v3, v4);

  v7 = v0[1];

  return v7(v6);
}

uint64_t static PromptScrubbing.scrubPrompt(_:scrub:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a3;
  v4[10] = a4;
  v4[7] = a1;
  v4[8] = a2;
  v4[11] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration22ScrubbedRenderedPromptVyAA0E0VGMd, &_s15TokenGeneration22ScrubbedRenderedPromptVyAA0E0VGMR);
  v4[12] = swift_task_alloc();
  v5 = type metadata accessor for Prompt();
  v4[13] = v5;
  v4[14] = *(v5 - 8);
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](static PromptScrubbing.scrubPrompt(_:scrub:), 0, 0);
}

{
  v4[9] = a3;
  v4[10] = a4;
  v4[7] = a1;
  v4[8] = a2;
  v5 = type metadata accessor for Prompt.Turn.Segment();
  v4[11] = v5;
  v4[12] = *(v5 - 8);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v6 = type metadata accessor for Prompt.Turn.Role();
  v4[17] = v6;
  v4[18] = *(v6 - 8);
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v7 = type metadata accessor for Prompt.Turn();
  v4[21] = v7;
  v4[22] = *(v7 - 8);
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v8 = type metadata accessor for Prompt();
  v4[26] = v8;
  v4[27] = *(v8 - 8);
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](static PromptScrubbing.scrubPrompt(_:scrub:), 0, 0);
}

uint64_t static PromptScrubbing.scrubPrompt(_:scrub:)()
{
  v1 = type metadata accessor for CatalogClient();
  swift_allocObject();
  v0[2] = CatalogClient.init()();
  v2 = MEMORY[0x1E69DA6B8];
  v0[5] = v1;
  v0[6] = v2;
  type metadata accessor for CompletionPrompt();
  lazy protocol witness table accessor for type Prompt and conformance Prompt(&lazy protocol witness table cache variable for type CompletionPrompt and conformance CompletionPrompt, MEMORY[0x1E69C61B8], MEMORY[0x1E69C61A8]);
  GenerativeConfigurationProtocol<>.renderToTokenGenerationPrompt(catalogClient:)();
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v3 = swift_task_alloc();
  v0[18] = v3;
  *v3 = v0;
  v3[1] = static PromptScrubbing.scrubPrompt(_:scrub:);
  v4 = v0[17];
  v5 = v0[12];
  v6 = v0[9];
  v7 = v0[10];

  return _s15TokenGeneration15PromptScrubbingO05scrubC0_0E0AA016ScrubbedRenderedC0VyxGx_S2SYaKXEtYaKAA0gC0RzlFZAA0C0V_Tt2g5(v5, v4, v6, v7);
}

{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = static PromptScrubbing.scrubPrompt(_:scrub:);
  }

  else
  {
    v2 = static PromptScrubbing.scrubPrompt(_:scrub:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v1 = v0[16];
  v2 = v0[17];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[12];
  v6 = v0[13];
  v12 = v0[11];
  v7 = v0[7];
  v8 = *(v4 + 16);
  v8(v1, v5, v6);
  v8(v3, v1, v6);
  CompletionPrompt.init(_:)();
  v9 = *(v4 + 8);
  v9(v1, v6);
  v9(v2, v6);
  LOBYTE(v6) = *(v5 + *(v12 + 36));
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v5, &_s15TokenGeneration22ScrubbedRenderedPromptVyAA0E0VGMd, &_s15TokenGeneration22ScrubbedRenderedPromptVyAA0E0VGMR);
  *(v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit010CompletionD0VGMR) + 36)) = v6;

  v10 = v0[1];

  return v10();
}

{
  (*(v0[14] + 8))(v0[17], v0[13]);

  v1 = v0[1];

  return v1();
}

{
  v1 = type metadata accessor for CatalogClient();
  swift_allocObject();
  *(v0 + 16) = CatalogClient.init()();
  v2 = MEMORY[0x1E69DA6B8];
  *(v0 + 40) = v1;
  *(v0 + 48) = v2;
  type metadata accessor for ChatMessagesPrompt();
  lazy protocol witness table accessor for type Prompt and conformance Prompt(&lazy protocol witness table cache variable for type ChatMessagesPrompt and conformance ChatMessagesPrompt, MEMORY[0x1E69C61F8], MEMORY[0x1E69C61F0]);
  GenerativeConfigurationProtocol<>.renderToTokenGenerationPromptTurns(catalogClient:)();
  v3 = *(v0 + 240);
  v4 = *(v0 + 208);
  v5 = *(v0 + 216);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  static Prompt.transcript(turns:)();

  v6 = Prompt.turns()();
  *(v0 + 248) = v6;
  v7 = *(v5 + 8);
  *(v0 + 256) = v7;
  *(v0 + 264) = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  result = v7(v3, v4);
  v9 = *(v6 + 16);
  *(v0 + 272) = v9;
  if (!v9)
  {
LABEL_32:

    v70 = *(v0 + 256);
    v71 = *(v0 + 232);
    v72 = *(v0 + 216);
    v73 = *(v0 + 224);
    v74 = *(v0 + 208);
    v75 = *(v0 + 56);
    static Prompt.transcript(turns:)();

    (*(v72 + 16))(v73, v71, v74);
    ChatMessagesPrompt.init(renderedPrompt:)(v73, v75);
    v70(v71, v74);
    *(v75 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMR) + 36)) = 0;

    v76 = *(v0 + 8);

    return v76();
  }

  *(v0 + 408) = *(*(v0 + 176) + 80);
  *(v0 + 412) = *MEMORY[0x1E69DA7B0];
  *(v0 + 416) = *MEMORY[0x1E69DA7E8];
  v10 = MEMORY[0x1E69E7CC0];
  *(v0 + 280) = 0;
  *(v0 + 288) = v10;
  v11 = *(v0 + 248);
  if (!*(v11 + 16))
  {
LABEL_37:
    __break(1u);
    return result;
  }

  v12 = 0;
  v13 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v14 = *(v0 + 412);
    v15 = *(v0 + 200);
    v16 = *(v0 + 168);
    v17 = *(v0 + 176);
    v19 = *(v0 + 152);
    v18 = *(v0 + 160);
    v20 = *(v0 + 136);
    v21 = *(v0 + 144);
    v23 = *(v17 + 16);
    v17 += 16;
    v22 = v23;
    v24 = *(v17 + 56);
    v25 = v11 + ((*(v0 + 408) + 32) & ~*(v0 + 408)) + v24 * v12;
    *(v0 + 296) = v24;
    *(v0 + 304) = v23;
    *(v0 + 312) = v17 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v23(v15, v25, v16);
    Prompt.Turn.role.getter();
    (*(v21 + 104))(v19, v14, v20);
    LOBYTE(v15) = static Prompt.Turn.Role.== infix(_:_:)();
    v26 = *(v21 + 8);
    v26(v19, v20);
    v26(v18, v20);
    if ((v15 & 1) == 0)
    {
      v22(*(v0 + 184), *(v0 + 200), *(v0 + 168));
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13[2] + 1, 1, v13);
      }

      v48 = v13[2];
      v47 = v13[3];
      v78 = v13;
      v49 = v48 + 1;
      if (v48 >= v47 >> 1)
      {
        v78 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v47 > 1), v48 + 1, 1, v78);
      }

      v50 = (v0 + 184);
      goto LABEL_26;
    }

    result = Prompt.Turn.segments.getter();
    *(v0 + 320) = result;
    v27 = *(result + 16);
    *(v0 + 328) = v27;
    if (v27)
    {
      break;
    }

LABEL_21:
    v51 = *(v0 + 304);
    v53 = *(v0 + 192);
    v52 = *(v0 + 200);
    v54 = *(v0 + 168);

    Prompt.Turn.segments.setter();
    v51(v53, v52, v54);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v56 = *(v0 + 288);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v56 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v56[2] + 1, 1, v56);
    }

    v48 = v56[2];
    v57 = v56[3];
    v78 = v56;
    v49 = v48 + 1;
    if (v48 >= v57 >> 1)
    {
      v78 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v57 > 1), v48 + 1, 1, v56);
    }

    v50 = (v0 + 192);
LABEL_26:
    v58 = *v50;
    v59 = *(v0 + 296);
    v60 = *(v0 + 272);
    v61 = *(v0 + 168);
    v62 = *(v0 + 176);
    v63 = *(v0 + 280) + 1;
    v64 = (*(v0 + 408) + 32) & ~*(v0 + 408);
    (*(v62 + 8))(*(v0 + 200), v61);
    v78[2] = v49;
    v13 = v78;
    result = (*(v62 + 32))(v78 + v64 + v59 * v48, v58, v61);
    if (v63 == v60)
    {
      goto LABEL_32;
    }

    v12 = *(v0 + 280) + 1;
    *(v0 + 280) = v12;
    *(v0 + 288) = v78;
    v11 = *(v0 + 248);
    if (v12 >= *(v11 + 16))
    {
      goto LABEL_37;
    }
  }

  v28 = 0;
  *(v0 + 420) = *(*(v0 + 96) + 80);
  v29 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    *(v0 + 336) = v28;
    *(v0 + 344) = v29;
    *(v0 + 424) = 0;
    v30 = *(v0 + 320);
    if (v28 >= *(v30 + 16))
    {
      __break(1u);
      goto LABEL_37;
    }

    v31 = *(v0 + 420);
    v32 = *(v0 + 416);
    v34 = *(v0 + 120);
    v33 = *(v0 + 128);
    v35 = *(v0 + 88);
    v36 = *(v0 + 96);
    v37 = *(v36 + 16);
    v38 = *(v36 + 72);
    *(v0 + 352) = v38;
    v37(v33, v30 + ((v31 + 32) & ~v31) + v38 * v28, v35);
    v37(v34, v33, v35);
    if ((*(v36 + 88))(v34, v35) == v32)
    {
      break;
    }

    v37(*(v0 + 104), *(v0 + 128), *(v0 + 88));
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v29 + 2) + 1, 1, v29);
    }

    v40 = *(v29 + 2);
    v39 = *(v29 + 3);
    if (v40 >= v39 >> 1)
    {
      v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1, v29);
    }

    else
    {
      v41 = v29;
    }

    v77 = *(v0 + 120);
    v43 = *(v0 + 96);
    v42 = *(v0 + 104);
    v44 = *(v0 + 88);
    v45 = (*(v0 + 420) + 32) & ~*(v0 + 420);
    v46 = *(v43 + 8);
    v46(*(v0 + 128), v44);
    *(v41 + 2) = v40 + 1;
    (*(v43 + 32))(&v41[v45 + v40 * v38], v42, v44);
    result = v46(v77, v44);
    v29 = v41;
    v28 = *(v0 + 336) + 1;
    if (v28 == *(v0 + 328))
    {
      goto LABEL_21;
    }
  }

  v65 = *(v0 + 120);
  v66 = *(v0 + 72);
  (*(*(v0 + 96) + 96))(v65, *(v0 + 88));
  v67 = *v65;
  *(v0 + 360) = *v65;
  v68 = v65[1];
  *(v0 + 368) = v68;
  v79 = (v66 + *v66);
  v69 = swift_task_alloc();
  *(v0 + 376) = v69;
  *v69 = v0;
  v69[1] = static PromptScrubbing.scrubPrompt(_:scrub:);

  return v79(v67, v68);
}

{
  if (*(v0 + 384) == *(v0 + 360) && *(v0 + 392) == *(v0 + 368))
  {

    v4 = *(v0 + 424);
  }

  else
  {
    v2 = *(v0 + 424);
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1 | v2;
  }

  v81 = v4;
  v5 = *(v0 + 392);
  v6 = *(v0 + 112);
  v7 = *(v0 + 96);
  *v6 = *(v0 + 384);
  v6[1] = v5;
  (*(v7 + 104))();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v0 + 344);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_41:
    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
  }

  v11 = *(v9 + 2);
  v10 = *(v9 + 3);
  if (v11 >= v10 >> 1)
  {
    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v9);
  }

  v12 = *(v0 + 352);
  v13 = *(v0 + 112);
  v14 = *(v0 + 88);
  v15 = *(v0 + 96);
  v16 = (*(v0 + 420) + 32) & ~*(v0 + 420);
  (*(v15 + 8))(*(v0 + 128), v14);
  *(v9 + 2) = v11 + 1;
  (*(v15 + 32))(&v9[v16 + v12 * v11], v13, v14);
  v80 = (v0 + 192);
  v82 = (v0 + 184);
  v83 = v0;
  while (1)
  {
    v17 = *(v0 + 336) + 1;
    v18 = *(v0 + 320);
    if (v17 == *(v0 + 328))
    {
      while (2)
      {
        v19 = *(v0 + 304);
        v21 = *(v0 + 192);
        v20 = *(v0 + 200);
        v22 = *(v0 + 168);

        Prompt.Turn.segments.setter();
        v19(v21, v20, v22);
        v23 = swift_isUniquelyReferenced_nonNull_native();
        v24 = *(v0 + 288);
        if ((v23 & 1) == 0)
        {
          v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v24 + 2) + 1, 1, *(v0 + 288));
        }

        v26 = *(v24 + 2);
        v25 = *(v24 + 3);
        v9 = (v26 + 1);
        if (v26 >= v25 >> 1)
        {
          v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1, v24);
        }

        v27 = v80;
        while (1)
        {
          v84 = *v27;
          v0 = v83;
          v28 = *(v83 + 296);
          v29 = *(v83 + 272);
          v30 = *(v83 + 168);
          v31 = *(v83 + 176);
          v32 = *(v83 + 280) + 1;
          v33 = (*(v83 + 408) + 32) & ~*(v83 + 408);
          (*(v31 + 8))(*(v83 + 200), v30);
          *(v24 + 2) = v9;
          (*(v31 + 32))(&v24[v33 + v28 * v26], v84, v30);
          if (v32 == v29)
          {

            v66 = *(v83 + 256);
            v67 = *(v83 + 232);
            v68 = *(v83 + 216);
            v69 = *(v83 + 224);
            v70 = *(v83 + 208);
            v71 = *(v83 + 56);
            static Prompt.transcript(turns:)();

            (*(v68 + 16))(v69, v67, v70);
            ChatMessagesPrompt.init(renderedPrompt:)(v69, v71);
            v66(v67, v70);
            *(v71 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMR) + 36)) = v81 & 1;

            v72 = *(v83 + 8);

            return v72();
          }

          v34 = *(v83 + 280) + 1;
          *(v83 + 280) = v34;
          *(v83 + 288) = v24;
          v35 = *(v83 + 248);
          if (v34 >= *(v35 + 16))
          {
            __break(1u);
            goto LABEL_40;
          }

          v36 = *(v83 + 412);
          v37 = *(v83 + 200);
          v38 = *(v83 + 168);
          v39 = *(v83 + 176);
          v41 = *(v83 + 152);
          v40 = *(v83 + 160);
          v42 = *(v83 + 136);
          v43 = *(v83 + 144);
          v45 = *(v39 + 16);
          v39 += 16;
          v44 = v45;
          v46 = *(v39 + 56);
          v47 = v35 + ((*(v83 + 408) + 32) & ~*(v83 + 408)) + v46 * v34;
          *(v83 + 296) = v46;
          *(v83 + 304) = v45;
          *(v83 + 312) = v39 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
          v45(v37, v47, v38);
          Prompt.Turn.role.getter();
          (*(v43 + 104))(v41, v36, v42);
          LOBYTE(v37) = static Prompt.Turn.Role.== infix(_:_:)();
          v48 = *(v43 + 8);
          v48(v41, v42);
          v48(v40, v42);
          if (v37)
          {
            break;
          }

          v44(*(v83 + 184), *(v83 + 200), *(v83 + 168));
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v24 + 2) + 1, 1, v24);
          }

          v26 = *(v24 + 2);
          v49 = *(v24 + 3);
          v9 = (v26 + 1);
          v27 = v82;
          if (v26 >= v49 >> 1)
          {
            v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v49 > 1), v26 + 1, 1, v24);
            v27 = v82;
          }
        }

        v18 = Prompt.Turn.segments.getter();
        *(v83 + 320) = v18;
        v50 = *(v18 + 16);
        *(v83 + 328) = v50;
        v9 = MEMORY[0x1E69E7CC0];
        if (!v50)
        {
          continue;
        }

        break;
      }

      v17 = 0;
      *(v83 + 420) = *(*(v83 + 96) + 80);
    }

    *(v0 + 336) = v17;
    *(v0 + 344) = v9;
    *(v0 + 424) = v81 & 1;
    if (v17 >= *(v18 + 16))
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v51 = *(v0 + 420);
    v52 = *(v0 + 416);
    v54 = *(v0 + 120);
    v53 = *(v0 + 128);
    v55 = *(v0 + 88);
    v56 = *(v0 + 96);
    v57 = *(v56 + 16);
    v58 = *(v56 + 72);
    *(v0 + 352) = v58;
    v57(v53, v18 + ((v51 + 32) & ~v51) + v58 * v17, v55);
    v57(v54, v53, v55);
    if ((*(v56 + 88))(v54, v55) == v52)
    {
      break;
    }

    v57(*(v0 + 104), *(v0 + 128), *(v0 + 88));
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
    }

    v60 = *(v9 + 2);
    v59 = *(v9 + 3);
    if (v60 >= v59 >> 1)
    {
      v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v59 > 1), v60 + 1, 1, v9);
    }

    v79 = *(v0 + 120);
    v62 = *(v0 + 96);
    v61 = *(v0 + 104);
    v63 = *(v0 + 88);
    v64 = (*(v0 + 420) + 32) & ~*(v0 + 420);
    v65 = *(v62 + 8);
    v65(*(v0 + 128), v63);
    *(v9 + 2) = v60 + 1;
    (*(v62 + 32))(&v9[v64 + v60 * v58], v61, v63);
    v65(v79, v63);
  }

  v74 = *(v0 + 120);
  v75 = *(v0 + 72);
  (*(*(v0 + 96) + 96))(v74, *(v0 + 88));
  v76 = *v74;
  *(v0 + 360) = *v74;
  v77 = v74[1];
  *(v0 + 368) = v77;
  v85 = (v75 + *v75);
  v78 = swift_task_alloc();
  *(v0 + 376) = v78;
  *v78 = v0;
  v78[1] = static PromptScrubbing.scrubPrompt(_:scrub:);

  return v85(v76, v77);
}

{
  v1 = v0[25];
  v2 = v0[21];
  v3 = v0[22];
  (*(v0[12] + 8))(v0[16], v0[11]);
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t static PromptScrubbing.scrubPromptIncludingSystemTurns(_:scrub:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a3;
  v4[10] = a4;
  v4[7] = a1;
  v4[8] = a2;
  v4[11] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration22ScrubbedRenderedPromptVyAA0E0VGMd, &_s15TokenGeneration22ScrubbedRenderedPromptVyAA0E0VGMR);
  v4[12] = swift_task_alloc();
  v5 = type metadata accessor for Prompt();
  v4[13] = v5;
  v4[14] = *(v5 - 8);
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](static PromptScrubbing.scrubPromptIncludingSystemTurns(_:scrub:), 0, 0);
}

uint64_t static PromptScrubbing.scrubPromptIncludingSystemTurns(_:scrub:)()
{
  v1 = type metadata accessor for CatalogClient();
  swift_allocObject();
  v0[2] = CatalogClient.init()();
  v2 = MEMORY[0x1E69DA6B8];
  v0[5] = v1;
  v0[6] = v2;
  type metadata accessor for ChatMessagesPrompt();
  lazy protocol witness table accessor for type Prompt and conformance Prompt(&lazy protocol witness table cache variable for type ChatMessagesPrompt and conformance ChatMessagesPrompt, MEMORY[0x1E69C61F8], MEMORY[0x1E69C61F0]);
  GenerativeConfigurationProtocol<>.renderToTokenGenerationPromptTurns(catalogClient:)();
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  static Prompt.transcript(turns:)();

  v3 = swift_task_alloc();
  v0[17] = v3;
  *v3 = v0;
  v3[1] = static PromptScrubbing.scrubPromptIncludingSystemTurns(_:scrub:);
  v4 = v0[16];
  v5 = v0[12];
  v6 = v0[9];
  v7 = v0[10];

  return _s15TokenGeneration15PromptScrubbingO05scrubC0_0E0AA016ScrubbedRenderedC0VyxGx_S2SYaKXEtYaKAA0gC0RzlFZAA0C0V_Tt2g5(v5, v4, v6, v7);
}

{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = static PromptScrubbing.scrubPromptIncludingSystemTurns(_:scrub:);
  }

  else
  {
    v2 = static PromptScrubbing.scrubPromptIncludingSystemTurns(_:scrub:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[13];
  v4 = v0[14];
  v6 = v0[11];
  v5 = v0[12];
  v7 = v0[7];
  (*(v4 + 16))(v1, v5, v3);
  ChatMessagesPrompt.init(renderedPrompt:)(v1, v7);
  (*(v4 + 8))(v2, v3);
  LOBYTE(v3) = *(v5 + *(v6 + 36));
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v5, &_s15TokenGeneration22ScrubbedRenderedPromptVyAA0E0VGMd, &_s15TokenGeneration22ScrubbedRenderedPromptVyAA0E0VGMR);
  *(v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMd, &_s15TokenGeneration14ScrubbedPromptVy0D3Kit012ChatMessagesD0VGMR) + 36)) = v3;

  v8 = v0[1];

  return v8();
}

{
  (*(v0[14] + 8))(v0[16], v0[13]);

  v1 = v0[1];

  return v1();
}

uint64_t static PromptScrubbing.scrubPrompt(_:scrub:)(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[48] = a1;
  v4[49] = a2;
  v4[50] = v2;

  if (v2)
  {

    v5 = static PromptScrubbing.scrubPrompt(_:scrub:);
  }

  else
  {
    v5 = static PromptScrubbing.scrubPrompt(_:scrub:);
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t _s15TokenGeneration15PromptScrubbingO05scrubC0_0E0AA016ScrubbedRenderedC0VyxGx_S2SYaKXEtYaKAA0gC0RzlFZAA0C0V_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[8] = a1;
  v4[9] = a2;
  v5 = type metadata accessor for Prompt();
  v4[12] = v5;
  v4[13] = *(v5 - 8);
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration15PromptScrubbingO012IntermediateC5State33_102AEF12823D01DEBBEF7FCA4216300ALLVy_AA0C0V0aB16NonStringContentOGMd, &_s15TokenGeneration15PromptScrubbingO012IntermediateC5State33_102AEF12823D01DEBBEF7FCA4216300ALLVy_AA0C0V0aB16NonStringContentOGMR);
  v4[17] = v6;
  v4[18] = *(v6 - 8);
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_15TokenGeneration15PromptScrubbingO012IntermediateD5State33_102AEF12823D01DEBBEF7FCA4216300ALLVy_AB0D0V0bC16NonStringContentOG7elementtMd, &_sSi6offset_15TokenGeneration15PromptScrubbingO012IntermediateD5State33_102AEF12823D01DEBBEF7FCA4216300ALLVy_AB0D0V0bC16NonStringContentOG7elementtMR);
  v4[31] = v7;
  v4[32] = *(v7 - 8);
  v4[33] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_15TokenGeneration15PromptScrubbingO012IntermediateD5State33_102AEF12823D01DEBBEF7FCA4216300ALLVy_AB0D0V0bC16NonStringContentOG7elementtSgMd, &_sSi6offset_15TokenGeneration15PromptScrubbingO012IntermediateD5State33_102AEF12823D01DEBBEF7FCA4216300ALLVy_AB0D0V0bC16NonStringContentOG7elementtSgMR);
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss20CollectionDifferenceVySJGMd, &_ss20CollectionDifferenceVySJGMR);
  v4[36] = v8;
  v4[37] = *(v8 - 8);
  v4[38] = swift_task_alloc();
  v9 = type metadata accessor for Prompt.Attachment();
  v4[39] = v9;
  v4[40] = *(v9 - 8);
  v4[41] = swift_task_alloc();
  v10 = type metadata accessor for Prompt.Delimiter();
  v4[42] = v10;
  v4[43] = *(v10 - 8);
  v4[44] = swift_task_alloc();
  v11 = type metadata accessor for Prompt.TokenGenerationNonStringContent(0);
  v4[45] = v11;
  v4[46] = *(v11 - 8);
  v4[47] = swift_task_alloc();
  v4[48] = swift_task_alloc();
  v4[49] = swift_task_alloc();
  v4[50] = swift_task_alloc();
  v4[51] = swift_task_alloc();
  v4[52] = swift_task_alloc();
  v4[53] = swift_task_alloc();
  v4[54] = swift_task_alloc();
  v4[55] = swift_task_alloc();
  v4[56] = swift_task_alloc();
  v4[57] = swift_task_alloc();
  v4[58] = swift_task_alloc();
  v4[59] = swift_task_alloc();
  v4[60] = swift_task_alloc();
  v4[61] = swift_task_alloc();
  v4[62] = swift_task_alloc();
  v4[63] = swift_task_alloc();
  v4[64] = swift_task_alloc();
  v4[65] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](_s15TokenGeneration15PromptScrubbingO05scrubC0_0E0AA016ScrubbedRenderedC0VyxGx_S2SYaKXEtYaKAA0gC0RzlFZAA0C0V_Tt2g5TY0_, 0, 0);
}

uint64_t _s15TokenGeneration15PromptScrubbingO05scrubC0_0E0AA016ScrubbedRenderedC0VyxGx_S2SYaKXEtYaKAA0gC0RzlFZAA0C0V_Tt2g5TY0_()
{
  v126 = v0;
  v1 = Prompt.string.getter();
  v3 = v2;
  v4 = Prompt.nonStringContent.getter();
  v0[2] = v1;
  v0[3] = v3;
  v125 = v4;

  specialized MutableCollection<>.sort(by:)(&v125);
  v118 = v1;
  v119 = v3;

  v6 = v125;
  v122 = *(v125 + 16);
  if (!v122)
  {
    v107 = MEMORY[0x1E69E7CC0];
LABEL_20:

    v36 = *(v107 + 16);
    if (!v36)
    {

      v104 = v119;

      v41 = MEMORY[0x1E69E7CC0];
      v105 = v118;
LABEL_74:
      v0[68] = v41;
      v0[67] = v105;
      v0[66] = v104;
      v124 = (v0[10] + *v0[10]);
      v106 = swift_task_alloc();
      v0[69] = v106;
      *v106 = v0;
      v106[1] = _s15TokenGeneration15PromptScrubbingO05scrubC0_0E0AA016ScrubbedRenderedC0VyxGx_S2SYaKXEtYaKAA0gC0RzlFZAA0C0V_Tt2g5TQ1_;

      return v124(v105, v104);
    }

    v37 = v0[46];
    v38 = v0[43];
    v39 = v0[40];
    v110 = v0[18];
    v109 = v0[17];
    v40 = v107 + ((*(v37 + 80) + 32) & ~*(v37 + 80));
    v117 = (v38 + 32);
    v112 = (v38 + 8);
    v113 = 0;
    v115 = (v39 + 32);
    v111 = (v39 + 8);
    v108 = *(v37 + 72);
    v41 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v42 = v0[51];
      v43 = v0[52];
      outlined init with copy of Prompt.TokenGenerationNonStringContent(v40, v43);
      outlined init with copy of Prompt.TokenGenerationNonStringContent(v43, v42);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v45 = v0[51];
      if (EnumCaseMultiPayload == 1)
      {
        v46 = v0[41];
        v47 = v0[39];
        (*v115)(v46, v45, v47);
        v48 = Prompt.Attachment.position.getter();
        v49 = v111;
      }

      else
      {
        v46 = v0[44];
        v47 = v0[42];
        (*v117)(v46, v45, v47);
        v48 = Prompt.Delimiter.position.getter();
        v49 = v112;
      }

      result = (*v49)(v46, v47);
      v50 = v48 + v113;
      if (__OFADD__(v48, v113))
      {
        goto LABEL_78;
      }

      v123 = v41;
      v51 = v0[52];
      v52 = v0[50];
      v53 = v0[2];
      v54 = v0[3];
      v55 = String.index(_:offsetBy:)();
      outlined init with copy of Prompt.TokenGenerationNonStringContent(v51, v52);
      v56 = swift_getEnumCaseMultiPayload();
      v57 = v0[50];
      if (v56 == 1)
      {
        v58 = v0[41];
        v59 = v0[39];
        (*v115)(v58, v57, v59);
        v121 = Prompt.Attachment.position.getter();
        v60 = v111;
      }

      else
      {
        v58 = v0[44];
        v59 = v0[42];
        (*v117)(v58, v57, v59);
        v121 = Prompt.Delimiter.position.getter();
        v60 = v112;
      }

      (*v60)(v58, v59);
      v61 = String.count.getter();
      if (v55 < 0x4000)
      {
        goto LABEL_42;
      }

      v62 = HIBYTE(v54) & 0xF;
      if ((v54 & 0x2000000000000000) == 0)
      {
        v62 = v53 & 0xFFFFFFFFFFFFLL;
      }

      if (v55 >> 14 != 4 * v62)
      {
        if (String.subscript.getter() == 10 && v66 == 0xE100000000000000)
        {
LABEL_41:

LABEL_42:
          v67 = v0[49];
          v68 = v0[21];
          outlined init with copy of Prompt.TokenGenerationNonStringContent(v0[52], v68);
          outlined init with take of Prompt.TokenGenerationNonStringContent(v68, v67);
          v69 = swift_getEnumCaseMultiPayload();
          v70 = v0[49];
          v71 = v0[21];
          if (v69 == 1)
          {
            v72 = v0[41];
            v73 = v0[39];
            v74 = *v115;
            (*v115)(v72, v70, v73);
            Prompt.Attachment.position.setter();
          }

          else
          {
            v72 = v0[44];
            v73 = v0[42];
            v74 = *v117;
            (*v117)(v72, v70, v73);
            Prompt.Delimiter.position.setter();
          }

          v74(v71, v72, v73);
          v75 = v0[21];
          swift_storeEnumTagMultiPayload();
          *(v75 + *(v109 + 36)) = 0;
          *(v75 + *(v109 + 40)) = v121 == v61;
          v41 = v123;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v123[2] + 1, 1, v123);
          }

          v77 = v41[2];
          v76 = v41[3];
          v78 = v77 + 1;
          if (v77 >= v76 >> 1)
          {
            v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v76 > 1), v77 + 1, 1, v41);
          }

          v79 = v0 + 21;
          goto LABEL_50;
        }

        v81 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v81)
        {
          goto LABEL_42;
        }
      }

      String.index(before:)();
      if (String.subscript.getter() == 10 && v63 == 0xE100000000000000)
      {
        goto LABEL_41;
      }

      v64 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v64)
      {
        goto LABEL_42;
      }

      String.index(before:)();
      if (String.subscript.getter() == 13 && v65 == 0xE100000000000000)
      {
      }

      else
      {
        v82 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v82 & 1) == 0)
        {
          if (__OFADD__(v113++, 1))
          {
            goto LABEL_79;
          }

          result = String.insert(_:at:)();
          if (__OFADD__(v50, 1))
          {
            goto LABEL_80;
          }

          v94 = v0[47];
          v95 = v0[19];
          outlined init with copy of Prompt.TokenGenerationNonStringContent(v0[52], v95);
          outlined init with take of Prompt.TokenGenerationNonStringContent(v95, v94);
          v96 = swift_getEnumCaseMultiPayload();
          v97 = v0[47];
          v98 = v0[19];
          if (v96 == 1)
          {
            v99 = v0[41];
            v100 = v0[39];
            v101 = *v115;
            (*v115)(v99, v97, v100);
            Prompt.Attachment.position.setter();
          }

          else
          {
            v99 = v0[44];
            v100 = v0[42];
            v101 = *v117;
            (*v117)(v99, v97, v100);
            Prompt.Delimiter.position.setter();
          }

          v101(v98, v99, v100);
          v102 = v0[19];
          swift_storeEnumTagMultiPayload();
          *(v102 + *(v109 + 36)) = 1;
          *(v102 + *(v109 + 40)) = v121 == v61;
          v41 = v123;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v123[2] + 1, 1, v123);
          }

          v77 = v41[2];
          v103 = v41[3];
          v78 = v77 + 1;
          if (v77 >= v103 >> 1)
          {
            v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v103 > 1), v77 + 1, 1, v41);
          }

          v79 = v0 + 19;
          goto LABEL_50;
        }
      }

      v83 = v0[48];
      v84 = v0[20];
      outlined init with copy of Prompt.TokenGenerationNonStringContent(v0[52], v84);
      outlined init with take of Prompt.TokenGenerationNonStringContent(v84, v83);
      v85 = swift_getEnumCaseMultiPayload();
      v86 = v0[48];
      v87 = v0[20];
      if (v85 == 1)
      {
        v88 = v0[41];
        v89 = v0[39];
        v90 = *v115;
        (*v115)(v88, v86, v89);
        Prompt.Attachment.position.setter();
      }

      else
      {
        v88 = v0[44];
        v89 = v0[42];
        v90 = *v117;
        (*v117)(v88, v86, v89);
        Prompt.Delimiter.position.setter();
      }

      v90(v87, v88, v89);
      v91 = v0[20];
      swift_storeEnumTagMultiPayload();
      *(v91 + *(v109 + 36)) = 0;
      *(v91 + *(v109 + 40)) = v121 == v61;
      v41 = v123;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v123[2] + 1, 1, v123);
      }

      v77 = v41[2];
      v92 = v41[3];
      v78 = v77 + 1;
      if (v77 >= v92 >> 1)
      {
        v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v92 > 1), v77 + 1, 1, v41);
      }

      v79 = v0 + 20;
LABEL_50:
      v80 = *v79;
      outlined destroy of Prompt.TokenGenerationNonStringContent(v0[52]);
      v41[2] = v78;
      outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v80, v41 + ((*(v110 + 80) + 32) & ~*(v110 + 80)) + *(v110 + 72) * v77, &_s15TokenGeneration15PromptScrubbingO012IntermediateC5State33_102AEF12823D01DEBBEF7FCA4216300ALLVy_AA0C0V0aB16NonStringContentOGMd, &_s15TokenGeneration15PromptScrubbingO012IntermediateC5State33_102AEF12823D01DEBBEF7FCA4216300ALLVy_AA0C0V0aB16NonStringContentOGMR);
      v40 += v108;
      if (!--v36)
      {

        v105 = v0[2];
        v104 = v0[3];
        goto LABEL_74;
      }
    }
  }

  v7 = 0;
  v8 = v0[46];
  v9 = v0[43];
  v10 = v0[40];
  v120 = (v9 + 32);
  v114 = (v10 + 32);
  v116 = (v9 + 8);
  v11 = (v10 + 8);
  v107 = MEMORY[0x1E69E7CC0];
  while (v7 < *(v6 + 16))
  {
    v12 = v0[65];
    v13 = v0[64];
    v14 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v15 = *(v8 + 72);
    outlined init with copy of Prompt.TokenGenerationNonStringContent(v6 + v14 + v15 * v7, v12);
    outlined init with copy of Prompt.TokenGenerationNonStringContent(v12, v13);
    v16 = swift_getEnumCaseMultiPayload();
    v17 = v0[64];
    if (v16 == 1)
    {
      v18 = v0[41];
      v19 = v0[39];
      (*v114)(v18, v17, v19);
      v20 = Prompt.Attachment.position.getter();
      (*v11)(v18, v19);
      if (v20 < 0)
      {
        goto LABEL_3;
      }
    }

    else
    {
      v21 = v0[44];
      v22 = v0[42];
      (*v120)(v21, v17, v22);
      v23 = Prompt.Delimiter.position.getter();
      (*v116)(v21, v22);
      if (v23 < 0)
      {
        goto LABEL_3;
      }
    }

    outlined init with copy of Prompt.TokenGenerationNonStringContent(v0[65], v0[63]);
    v24 = swift_getEnumCaseMultiPayload();
    v25 = v0[63];
    if (v24 == 1)
    {
      v26 = v0[41];
      v27 = v0[39];
      (*v114)(v26, v25, v27);
      v28 = Prompt.Attachment.position.getter();
      (*v11)(v26, v27);
    }

    else
    {
      v29 = v0[44];
      v30 = v0[42];
      (*v120)(v29, v25, v30);
      v28 = Prompt.Delimiter.position.getter();
      (*v116)(v29, v30);
    }

    if (String.count.getter() >= v28)
    {
      outlined init with take of Prompt.TokenGenerationNonStringContent(v0[65], v0[62]);
      v31 = v107;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v125 = v107;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v107 + 16) + 1, 1);
        v31 = v125;
      }

      v34 = *(v31 + 16);
      v33 = *(v31 + 24);
      if (v34 >= v33 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1);
        v31 = v125;
      }

      v35 = v0[62];
      *(v31 + 16) = v34 + 1;
      v107 = v31;
      result = outlined init with take of Prompt.TokenGenerationNonStringContent(v35, v31 + v14 + v34 * v15);
      goto LABEL_4;
    }

LABEL_3:
    result = outlined destroy of Prompt.TokenGenerationNonStringContent(v0[65]);
LABEL_4:
    if (v122 == ++v7)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
  return result;
}

uint64_t _s15TokenGeneration15PromptScrubbingO05scrubC0_0E0AA016ScrubbedRenderedC0VyxGx_S2SYaKXEtYaKAA0gC0RzlFZAA0C0V_Tt2g5TQ1_(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[70] = a1;
  v4[71] = a2;
  v4[72] = v2;

  if (v2)
  {

    v5 = _s15TokenGeneration15PromptScrubbingO05scrubC0_0E0AA016ScrubbedRenderedC0VyxGx_S2SYaKXEtYaKAA0gC0RzlFZAA0C0V_Tt2g5TY3_;
  }

  else
  {
    v5 = _s15TokenGeneration15PromptScrubbingO05scrubC0_0E0AA016ScrubbedRenderedC0VyxGx_S2SYaKXEtYaKAA0gC0RzlFZAA0C0V_Tt2g5TY2_;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t _s15TokenGeneration15PromptScrubbingO05scrubC0_0E0AA016ScrubbedRenderedC0VyxGx_S2SYaKXEtYaKAA0gC0RzlFZAA0C0V_Tt2g5TY2_()
{
  v244 = v0;
  *(v0 + 32) = *(v0 + 560);
  v1 = *(v0 + 544);
  v2 = *(v0 + 528);
  *(v0 + 48) = *(v0 + 536);
  *(v0 + 56) = v2;
  lazy protocol witness table accessor for type String and conformance String();
  BidirectionalCollection<>.difference<A>(from:)();
  v3 = CollectionDifference.removals.getter();
  v210 = *(v1 + 16);
  v213 = v1;
  if (v210)
  {
    v4 = 0;
    v5 = 0;
    v6 = *(v0 + 344);
    v7 = *(v0 + 320);
    v199 = *(v0 + 136);
    v8 = *(v3 + 16);
    v206 = *(v0 + 144);
    v197 = (*(v206 + 80) + 32) & ~*(v206 + 80);
    v203 = *(v0 + 544) + v197;
    v236 = (v6 + 8);
    v240 = (v6 + 32);
    v227 = (v7 + 8);
    v232 = (v7 + 32);
    v222 = MEMORY[0x1E69E7CC0];
    v193 = v3 + 65;
    v195 = v8;
    do
    {
      if (v5 >= *(v213 + 16))
      {
        goto LABEL_128;
      }

      v217 = *(v206 + 72);
      outlined init with copy of PromptScrubbing.IntermediatePromptState<Prompt.TokenGenerationNonStringContent>(v203 + v217 * v5, *(v0 + 184));
      v9 = v8;
      if (v4 != v8)
      {
        if ((v4 & 0x8000000000000000) != 0)
        {
          goto LABEL_134;
        }

        v10 = (v193 + 40 * v4);
        while (1)
        {
          if (v4 >= *(v3 + 16))
          {
            goto LABEL_127;
          }

          if ((*v10 & 1) == 0)
          {
            v9 = v4;
            goto LABEL_17;
          }

          v11 = v3;
          v12 = *(v10 - 33);
          outlined init with copy of Prompt.TokenGenerationNonStringContent(*(v0 + 184), *(v0 + 424));
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          v14 = *(v0 + 424);
          if (EnumCaseMultiPayload == 1)
          {
            v15 = *(v0 + 328);
            v16 = *(v0 + 312);
            (*v232)(v15, v14, v16);
            v17 = Prompt.Attachment.position.getter();
            v18 = v227;
          }

          else
          {
            v15 = *(v0 + 352);
            v16 = *(v0 + 336);
            (*v240)(v15, v14, v16);
            v17 = Prompt.Delimiter.position.getter();
            v18 = v236;
          }

          (*v18)(v15, v16);
          if (v12 >= v17)
          {
            break;
          }

          ++v4;
          v10 += 40;
          v3 = v11;
          if (v8 == v4)
          {
            v9 = v8;
            goto LABEL_17;
          }
        }

        v9 = v4;
        v3 = v11;
      }

LABEL_17:
      outlined init with copy of Prompt.TokenGenerationNonStringContent(*(v0 + 184), *(v0 + 432));
      v19 = swift_getEnumCaseMultiPayload();
      v20 = *(v0 + 432);
      if (v19 == 1)
      {
        v21 = *(v0 + 328);
        v22 = *(v0 + 312);
        (*v232)(v21, v20, v22);
        v23 = Prompt.Attachment.position.getter();
        v24 = v227;
      }

      else
      {
        v21 = *(v0 + 352);
        v22 = *(v0 + 336);
        (*v240)(v21, v20, v22);
        v23 = Prompt.Delimiter.position.getter();
        v24 = v236;
      }

      (*v24)(v21, v22);
      v25 = v222;
      v26 = __OFSUB__(v23, v9);
      v27 = v23 - v9;
      if (v26)
      {
        goto LABEL_129;
      }

      v29 = *(v0 + 176);
      v28 = *(v0 + 184);
      outlined init with copy of Prompt.TokenGenerationNonStringContent(v28, v29);
      Prompt.TokenGenerationNonStringContent.position.setter(v27);
      v30 = *(v28 + *(v199 + 40));
      *(v29 + *(v199 + 36)) = *(v28 + *(v199 + 36));
      *(v29 + *(v199 + 40)) = v30;
      v31 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v222[2] + 1, 1, v222);
      }

      v33 = v25[2];
      v32 = v25[3];
      if (v33 >= v32 >> 1)
      {
        v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1, v25);
      }

      ++v5;
      v34 = *(v0 + 176);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(*(v0 + 184), &_s15TokenGeneration15PromptScrubbingO012IntermediateC5State33_102AEF12823D01DEBBEF7FCA4216300ALLVy_AA0C0V0aB16NonStringContentOGMd, &_s15TokenGeneration15PromptScrubbingO012IntermediateC5State33_102AEF12823D01DEBBEF7FCA4216300ALLVy_AA0C0V0aB16NonStringContentOGMR);
      v25[2] = (v33 + 1);
      v222 = v25;
      outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v34, v25 + v197 + v33 * v217, &_s15TokenGeneration15PromptScrubbingO012IntermediateC5State33_102AEF12823D01DEBBEF7FCA4216300ALLVy_AA0C0V0aB16NonStringContentOGMd, &_s15TokenGeneration15PromptScrubbingO012IntermediateC5State33_102AEF12823D01DEBBEF7FCA4216300ALLVy_AA0C0V0aB16NonStringContentOGMR);
      v4 = v31;
      v8 = v195;
    }

    while (v5 != v210);

    v35 = v222;
  }

  else
  {

    v35 = MEMORY[0x1E69E7CC0];
  }

  v36 = CollectionDifference.insertions.getter();
  v37 = v36;
  v228 = v35[2];
  if (v228)
  {
    v38 = v35;
    v39 = 0;
    v40 = 0;
    v41 = *(v0 + 344);
    v42 = *(v0 + 320);
    v200 = *(v0 + 136);
    v43 = *(v36 + 16);
    v218 = *(v0 + 144);
    v223 = v38;
    v198 = (*(v218 + 80) + 32) & ~*(v218 + 80);
    v214 = v38 + v198;
    v207 = (v41 + 32);
    v196 = (v41 + 8);
    v204 = (v42 + 32);
    v194 = (v42 + 8);
    v237 = MEMORY[0x1E69E7CC0];
    v211 = v36 + 32;
    while (1)
    {
      if (v40 >= v223[2])
      {
        goto LABEL_131;
      }

      v44 = *(v0 + 448);
      v45 = *(v0 + 200);
      v46 = *(v218 + 72);
      outlined init with copy of PromptScrubbing.IntermediatePromptState<Prompt.TokenGenerationNonStringContent>(&v214[v46 * v40], v45);
      outlined init with copy of Prompt.TokenGenerationNonStringContent(v45, v44);
      v47 = swift_getEnumCaseMultiPayload();
      v48 = *(v0 + 448);
      if (v47 == 1)
      {
        v49 = *(v0 + 328);
        v50 = *(v0 + 312);
        (*v204)(v49, v48, v50);
        v51 = Prompt.Attachment.position.getter();
        v52 = v194;
      }

      else
      {
        v49 = *(v0 + 352);
        v50 = *(v0 + 336);
        (*v207)(v49, v48, v50);
        v51 = Prompt.Delimiter.position.getter();
        v52 = v196;
      }

      (*v52)(v49, v50);
      v26 = __OFADD__(v51, v39);
      v53 = v51 + v39;
      if (v26)
      {
        break;
      }

      v54 = v211 + 40 * v39;
      v55 = v39;
      v240 = (v40 + 1);
      v233 = v46;
      while (v43 != v55)
      {
        if (v39 < 0)
        {
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
          goto LABEL_132;
        }

        if (v55 >= *(v37 + 16))
        {
          goto LABEL_125;
        }

        if (*(v54 + 33) == 1 || *v54 >= v53)
        {
          v39 = v55;
          goto LABEL_46;
        }

        ++v55;
        v54 += 40;
        v26 = __OFADD__(v53++, 1);
        if (v26)
        {
          goto LABEL_126;
        }
      }

      v39 = v43;
LABEL_46:
      v56 = *(v0 + 440);
      v57 = *(v0 + 192);
      outlined init with copy of Prompt.TokenGenerationNonStringContent(*(v0 + 200), v57);
      outlined init with take of Prompt.TokenGenerationNonStringContent(v57, v56);
      v58 = swift_getEnumCaseMultiPayload();
      v59 = *(v0 + 440);
      v60 = *(v0 + 192);
      if (v58 == 1)
      {
        v61 = *(v0 + 328);
        v62 = *(v0 + 312);
        v63 = *v204;
        (*v204)(v61, v59, v62);
        Prompt.Attachment.position.setter();
      }

      else
      {
        v61 = *(v0 + 352);
        v62 = *(v0 + 336);
        v63 = *v207;
        (*v207)(v61, v59, v62);
        Prompt.Delimiter.position.setter();
      }

      v63(v60, v61, v62);
      v64 = *(v0 + 192);
      v65 = *(v0 + 200);
      swift_storeEnumTagMultiPayload();
      v66 = *(v65 + *(v200 + 40));
      *(v64 + *(v200 + 36)) = *(v65 + *(v200 + 36));
      *(v64 + *(v200 + 40)) = v66;
      v67 = v237;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v67 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v237[2] + 1, 1, v237);
      }

      ++v40;
      v69 = v67[2];
      v68 = v67[3];
      if (v69 >= v68 >> 1)
      {
        v237 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v68 > 1), v69 + 1, 1, v67);
      }

      else
      {
        v237 = v67;
      }

      v70 = *(v0 + 192);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(*(v0 + 200), &_s15TokenGeneration15PromptScrubbingO012IntermediateC5State33_102AEF12823D01DEBBEF7FCA4216300ALLVy_AA0C0V0aB16NonStringContentOGMd, &_s15TokenGeneration15PromptScrubbingO012IntermediateC5State33_102AEF12823D01DEBBEF7FCA4216300ALLVy_AA0C0V0aB16NonStringContentOGMR);
      v237[2] = v69 + 1;
      outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v70, v237 + v198 + v69 * v233, &_s15TokenGeneration15PromptScrubbingO012IntermediateC5State33_102AEF12823D01DEBBEF7FCA4216300ALLVy_AA0C0V0aB16NonStringContentOGMd, &_s15TokenGeneration15PromptScrubbingO012IntermediateC5State33_102AEF12823D01DEBBEF7FCA4216300ALLVy_AA0C0V0aB16NonStringContentOGMR);
      if (v240 == v228)
      {

        v71 = v237;
        goto LABEL_57;
      }
    }

LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
LABEL_134:
    __break(1u);
LABEL_135:
    __break(1u);
LABEL_136:
    __break(1u);
LABEL_137:
    __break(1u);
LABEL_138:
    __break(1u);
    goto LABEL_139;
  }

  v71 = MEMORY[0x1E69E7CC0];
LABEL_57:
  v72 = *(v0 + 568);
  v73 = *(v0 + 560);

  v241 = v73;
  v242 = v72;
  v74 = v71[2];
  if (v74)
  {
    v234 = 0;
    v75 = *(v0 + 344);
    v76 = *(v0 + 320);
    v78 = *(v0 + 136);
    v77 = *(v0 + 144);
    v79 = v71 + ((*(v77 + 80) + 32) & ~*(v77 + 80));
    v215 = *(v77 + 72);
    v219 = (*(v77 + 80) + 32) & ~*(v77 + 80);
    v212 = (v75 + 8);
    v224 = (v76 + 32);
    v229 = (v75 + 32);
    v240 = MEMORY[0x1E69E7CC0];
    v208 = (v76 + 8);
    while (1)
    {
      v80 = *(v0 + 472);
      v81 = *(v0 + 216);
      outlined init with copy of PromptScrubbing.IntermediatePromptState<Prompt.TokenGenerationNonStringContent>(v79, v81);
      outlined init with copy of Prompt.TokenGenerationNonStringContent(v81, v80);
      v82 = swift_getEnumCaseMultiPayload();
      v83 = *(v0 + 472);
      if (v82 == 1)
      {
        v84 = *(v0 + 328);
        v85 = *(v0 + 312);
        (*v224)(v84, v83, v85);
        v86 = Prompt.Attachment.position.getter();
        v87 = v208;
      }

      else
      {
        v84 = *(v0 + 352);
        v85 = *(v0 + 336);
        (*v229)(v84, v83, v85);
        v86 = Prompt.Delimiter.position.getter();
        v87 = v212;
      }

      (*v87)(v84, v85);
      v88 = v86 - v234;
      if (__OFSUB__(v86, v234))
      {
        goto LABEL_130;
      }

      v89 = *(v0 + 216);
      if (*(v89 + *(v78 + 36)) == 1)
      {
        outlined init with copy of Prompt.TokenGenerationNonStringContent(v89, *(v0 + 464));
        v90 = swift_getEnumCaseMultiPayload();
        v91 = *(v0 + 464);
        if (v90 == 1)
        {
          v92 = *(v0 + 328);
          v93 = *(v0 + 312);
          (*v224)(v92, v91, v93);
          v94 = Prompt.Attachment.position.getter();
          v95 = v208;
        }

        else
        {
          v92 = *(v0 + 352);
          v93 = *(v0 + 336);
          (*v229)(v92, v91, v93);
          v94 = Prompt.Delimiter.position.getter();
          v95 = v212;
        }

        (*v95)(v92, v93);
        if (v94)
        {
          if (__OFSUB__(v88, 1))
          {
            goto LABEL_135;
          }

          String.index(_:offsetBy:)();
          if (String.subscript.getter() == 10 && v96 == 0xE100000000000000)
          {

LABEL_73:
            String.remove(at:)();

            v26 = __OFADD__(v234++, 1);
            if (v26)
            {
              goto LABEL_136;
            }

            goto LABEL_76;
          }

          v97 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v97)
          {
            goto LABEL_73;
          }
        }
      }

LABEL_76:
      v98 = *(v0 + 456);
      v99 = *(v0 + 208);
      outlined init with copy of Prompt.TokenGenerationNonStringContent(*(v0 + 216), v99);
      outlined init with take of Prompt.TokenGenerationNonStringContent(v99, v98);
      v100 = swift_getEnumCaseMultiPayload();
      v101 = *(v0 + 456);
      v102 = *(v0 + 208);
      if (v100 == 1)
      {
        v103 = *(v0 + 328);
        v104 = *(v0 + 312);
        v105 = *v224;
        (*v224)(v103, v101, v104);
        Prompt.Attachment.position.setter();
      }

      else
      {
        v103 = *(v0 + 352);
        v104 = *(v0 + 336);
        v105 = *v229;
        (*v229)(v103, v101, v104);
        Prompt.Delimiter.position.setter();
      }

      v105(v102, v103, v104);
      v107 = *(v0 + 208);
      v106 = *(v0 + 216);
      swift_storeEnumTagMultiPayload();
      v108 = *(v106 + *(v78 + 40));
      *(v107 + *(v78 + 36)) = 0;
      *(v107 + *(v78 + 40)) = v108;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v240 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v240 + 2) + 1, 1, v240);
      }

      v110 = *(v240 + 2);
      v109 = *(v240 + 3);
      if (v110 >= v109 >> 1)
      {
        v240 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v109 > 1), v110 + 1, 1, v240);
      }

      v111 = *(v0 + 208);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(*(v0 + 216), &_s15TokenGeneration15PromptScrubbingO012IntermediateC5State33_102AEF12823D01DEBBEF7FCA4216300ALLVy_AA0C0V0aB16NonStringContentOGMd, &_s15TokenGeneration15PromptScrubbingO012IntermediateC5State33_102AEF12823D01DEBBEF7FCA4216300ALLVy_AA0C0V0aB16NonStringContentOGMR);
      *(v240 + 2) = v110 + 1;
      outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v111, v240 + v219 + v110 * v215, &_s15TokenGeneration15PromptScrubbingO012IntermediateC5State33_102AEF12823D01DEBBEF7FCA4216300ALLVy_AA0C0V0aB16NonStringContentOGMd, &_s15TokenGeneration15PromptScrubbingO012IntermediateC5State33_102AEF12823D01DEBBEF7FCA4216300ALLVy_AA0C0V0aB16NonStringContentOGMR);
      v79 += v215;
      if (!--v74)
      {

        v216 = v241;
        v220 = v242;
        goto LABEL_86;
      }
    }
  }

  v216 = v73;
  v220 = v72;

  v240 = MEMORY[0x1E69E7CC0];
LABEL_86:
  v112 = *(v0 + 256);
  v238 = *(v0 + 248);
  v230 = *(v0 + 144);
  v235 = *(v0 + 136);
  v113 = *(v240 + 2);
  v114 = (v112 + 56);
  v115 = (v112 + 48);
  v205 = (*(v0 + 320) + 32);
  v209 = (*(v0 + 344) + 32);
  v116 = 0;

  while (1)
  {
    if (v116 == v113)
    {
      v117 = 1;
      v116 = v113;
    }

    else
    {
      if (v116 >= *(v240 + 2))
      {
        goto LABEL_133;
      }

      v118 = *(v0 + 264);
      v119 = *(v0 + 272);
      v120 = v240 + ((*(v230 + 80) + 32) & ~*(v230 + 80)) + *(v230 + 72) * v116;
      v121 = *(v238 + 48);
      *v118 = v116;
      outlined init with copy of PromptScrubbing.IntermediatePromptState<Prompt.TokenGenerationNonStringContent>(v120, v118 + v121);
      outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v118, v119, &_sSi6offset_15TokenGeneration15PromptScrubbingO012IntermediateD5State33_102AEF12823D01DEBBEF7FCA4216300ALLVy_AB0D0V0bC16NonStringContentOG7elementtMd, &_sSi6offset_15TokenGeneration15PromptScrubbingO012IntermediateD5State33_102AEF12823D01DEBBEF7FCA4216300ALLVy_AB0D0V0bC16NonStringContentOG7elementtMR);
      v117 = 0;
      ++v116;
    }

    v122 = *(v0 + 272);
    v123 = *(v0 + 280);
    v124 = *(v0 + 248);
    (*v114)(v122, v117, 1, v124);
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v122, v123, &_sSi6offset_15TokenGeneration15PromptScrubbingO012IntermediateD5State33_102AEF12823D01DEBBEF7FCA4216300ALLVy_AB0D0V0bC16NonStringContentOG7elementtSgMd, &_sSi6offset_15TokenGeneration15PromptScrubbingO012IntermediateD5State33_102AEF12823D01DEBBEF7FCA4216300ALLVy_AB0D0V0bC16NonStringContentOG7elementtSgMR);
    if ((*v115)(v123, 1, v124) == 1)
    {
      break;
    }

    v125 = *(v0 + 280);
    v126 = *(v0 + 240);
    v127 = *v125;
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v125 + *(v238 + 48), v126, &_s15TokenGeneration15PromptScrubbingO012IntermediateC5State33_102AEF12823D01DEBBEF7FCA4216300ALLVy_AA0C0V0aB16NonStringContentOGMd, &_s15TokenGeneration15PromptScrubbingO012IntermediateC5State33_102AEF12823D01DEBBEF7FCA4216300ALLVy_AA0C0V0aB16NonStringContentOGMR);
    if (*(v126 + *(v235 + 40)))
    {
      v128 = *(v0 + 488);
      v129 = *(v0 + 240);
      v130 = *(v0 + 224);
      String.count.getter();
      outlined init with copy of Prompt.TokenGenerationNonStringContent(v129, v130);
      outlined init with take of Prompt.TokenGenerationNonStringContent(v130, v128);
      v131 = swift_getEnumCaseMultiPayload();
      v132 = *(v0 + 488);
      v133 = *(v0 + 224);
      if (v131 == 1)
      {
        v134 = *(v0 + 328);
        v201 = *(v0 + 312);
        v135 = *v205;
        (*v205)(v134, v132);
        Prompt.Attachment.position.setter();
        (v135)(v133, v134, v201);
      }

      else
      {
        v136 = *(v0 + 352);
        v202 = *(v0 + 336);
        v137 = *(v0 + 224);
        v138 = *v209;
        (*v209)(v136, v132);
        Prompt.Delimiter.position.setter();
        (v138)(v137, v136, v202);
      }

      v139 = *(v0 + 240);
      v140 = *(v0 + 224);
      swift_storeEnumTagMultiPayload();
      *(v140 + *(v235 + 36)) = *(v139 + *(v235 + 36));
      *(v140 + *(v235 + 40)) = 1;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v225 = specialized _ArrayBuffer._consumeAndCreateNew()(v225);
      }

      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(*(v0 + 240), &_s15TokenGeneration15PromptScrubbingO012IntermediateC5State33_102AEF12823D01DEBBEF7FCA4216300ALLVy_AA0C0V0aB16NonStringContentOGMd, &_s15TokenGeneration15PromptScrubbingO012IntermediateC5State33_102AEF12823D01DEBBEF7FCA4216300ALLVy_AA0C0V0aB16NonStringContentOGMR);
      if ((v127 & 0x8000000000000000) != 0)
      {
        goto LABEL_137;
      }

      if (v127 >= v225[2])
      {
        goto LABEL_138;
      }

      outlined assign with take of PromptScrubbing.IntermediatePromptState<Prompt.TokenGenerationNonStringContent>(*(v0 + 224), v225 + ((*(v230 + 80) + 32) & ~*(v230 + 80)) + *(v230 + 72) * v127);
    }

    else
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(*(v0 + 240), &_s15TokenGeneration15PromptScrubbingO012IntermediateC5State33_102AEF12823D01DEBBEF7FCA4216300ALLVy_AA0C0V0aB16NonStringContentOGMd, &_s15TokenGeneration15PromptScrubbingO012IntermediateC5State33_102AEF12823D01DEBBEF7FCA4216300ALLVy_AA0C0V0aB16NonStringContentOGMR);
    }
  }

  v141 = v225[2];
  if (v141)
  {
    v142 = *(v0 + 368);
    v143 = v225 + ((*(v230 + 80) + 32) & ~*(v230 + 80));
    v144 = *(v230 + 72);
    v145 = MEMORY[0x1E69E7CC0];
    v147 = v216;
    v146 = v220;
    do
    {
      v148 = *(v0 + 480);
      v149 = *(v0 + 232);
      outlined init with copy of PromptScrubbing.IntermediatePromptState<Prompt.TokenGenerationNonStringContent>(v143, v149);
      outlined init with take of Prompt.TokenGenerationNonStringContent(v149, v148);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v145 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v145[2] + 1, 1, v145);
      }

      v151 = v145[2];
      v150 = v145[3];
      if (v151 >= v150 >> 1)
      {
        v145 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v150 > 1), v151 + 1, 1, v145);
      }

      v152 = *(v0 + 480);
      v145[2] = v151 + 1;
      outlined init with take of Prompt.TokenGenerationNonStringContent(v152, v145 + ((*(v142 + 80) + 32) & ~*(v142 + 80)) + *(v142 + 72) * v151);
      v143 += v144;
      v141 = (v141 - 1);
    }

    while (v141);
  }

  else
  {

    v145 = MEMORY[0x1E69E7CC0];
    v147 = v216;
    v146 = v220;
  }

  Prompt.init(string:nonStringContent:)(v147, v146, v145, *(v0 + 128));
  lazy protocol witness table accessor for type Prompt and conformance Prompt(&lazy protocol witness table cache variable for type Prompt and conformance Prompt, MEMORY[0x1E69DA850], MEMORY[0x1E69DA858]);
  LOBYTE(v240) = dispatch thunk of static Equatable.== infix(_:_:)();
  if (v240)
  {
    if (one-time initialization token for prompt == -1)
    {
LABEL_113:
      v153 = type metadata accessor for Logger();
      __swift_project_value_buffer(v153, static Log.prompt);
      v154 = Logger.logObject.getter();
      v155 = static os_log_type_t.default.getter();
      v156 = os_log_type_enabled(v154, v155);
      v158 = *(v0 + 296);
      v157 = *(v0 + 304);
      v159 = *(v0 + 288);
      if (v156)
      {
        v160 = swift_slowAlloc();
        *v160 = 0;
        _os_log_impl(&dword_1AB828000, v154, v155, "Input validation did not change the original prompt.", v160, 2u);
        MEMORY[0x1AC5A6CD0](v160, -1, -1);
      }

      (*(v158 + 8))(v157, v159);
      goto LABEL_121;
    }

LABEL_139:
    swift_once();
    goto LABEL_113;
  }

  if (one-time initialization token for prompt != -1)
  {
    swift_once();
  }

  v161 = *(v0 + 120);
  v162 = *(v0 + 128);
  v164 = *(v0 + 104);
  v163 = *(v0 + 112);
  v165 = *(v0 + 96);
  v166 = *(v0 + 72);
  v167 = type metadata accessor for Logger();
  __swift_project_value_buffer(v167, static Log.prompt);
  v168 = *(v164 + 16);
  v168(v161, v166, v165);
  v168(v163, v162, v165);
  v169 = Logger.logObject.getter();
  v170 = static os_log_type_t.default.getter();
  v171 = os_log_type_enabled(v169, v170);
  v173 = *(v0 + 296);
  v172 = *(v0 + 304);
  v174 = *(v0 + 288);
  v176 = *(v0 + 112);
  v175 = *(v0 + 120);
  v178 = *(v0 + 96);
  v177 = *(v0 + 104);
  if (v171)
  {
    v226 = v170;
    v179 = swift_slowAlloc();
    v231 = swift_slowAlloc();
    v243[0] = v231;
    *v179 = 136643075;
    v221 = v169;
    v180 = Prompt.string.getter();
    v239 = v172;
    v182 = v181;
    v183 = *(v177 + 8);
    v183(v175, v178);
    v184 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v180, v182, v243);

    *(v179 + 4) = v184;
    *(v179 + 12) = 2085;
    v185 = Prompt.string.getter();
    v187 = v186;
    v183(v176, v178);
    v188 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v185, v187, v243);

    *(v179 + 14) = v188;
    _os_log_impl(&dword_1AB828000, v221, v226, "Input validation changed the original prompt from %{sensitive}s to %{sensitive}s", v179, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1AC5A6CD0](v231, -1, -1);
    MEMORY[0x1AC5A6CD0](v179, -1, -1);

    (*(v173 + 8))(v239, v174);
  }

  else
  {

    v189 = *(v177 + 8);
    v189(v176, v178);
    v189(v175, v178);
    (*(v173 + 8))(v172, v174);
  }

LABEL_121:
  v190 = *(v0 + 64);
  (*(*(v0 + 104) + 32))(v190);

  *(v190 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration22ScrubbedRenderedPromptVyAA0E0VGMd, &_s15TokenGeneration22ScrubbedRenderedPromptVyAA0E0VGMR) + 36)) = (v240 & 1) == 0;

  v191 = *(v0 + 8);

  return v191();
}

uint64_t _s15TokenGeneration15PromptScrubbingO05scrubC0_0E0AA016ScrubbedRenderedC0VyxGx_S2SYaKXEtYaKAA0gC0RzlFZAA0C0V_Tt2g5TY3_()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t ChatMessagesPrompt.init(renderedPrompt:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = type metadata accessor for Prompt.Turn();
  v4 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v32 = v25 - v7;
  v33 = type metadata accessor for ChatMessagePrompt();
  v8 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = Prompt.turns()();
  v12 = *(v11 + 16);
  if (v12)
  {
    v25[2] = a2;
    v26 = a1;
    v36 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12, 0);
    v13 = v36;
    v14 = *(v4 + 16);
    v30 = v4 + 16;
    v31 = v14;
    v15 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v25[1] = v11;
    v16 = v11 + v15;
    v17 = *(v4 + 72);
    v28 = (v4 + 8);
    v29 = v17;
    v27 = v8 + 32;
    v18 = v14;
    do
    {
      v19 = v32;
      v20 = v35;
      v18(v32, v16, v35);
      v18(v34, v19, v20);
      ChatMessagePrompt.init(_:)();
      (*v28)(v19, v20);
      v36 = v13;
      v22 = *(v13 + 16);
      v21 = *(v13 + 24);
      if (v22 >= v21 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1);
        v13 = v36;
      }

      *(v13 + 16) = v22 + 1;
      (*(v8 + 32))(v13 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v22, v10, v33);
      v16 += v29;
      --v12;
    }

    while (v12);

    a1 = v26;
  }

  else
  {
  }

  ChatMessagesPrompt.init(_:)();
  v23 = type metadata accessor for Prompt();
  return (*(*(v23 - 8) + 8))(a1, v23);
}

BOOL specialized closure #1 in static PromptScrubbing.scrubPrompt<A>(_:scrub:)(uint64_t a1, uint64_t a2)
{
  v18 = a1;
  v19 = a2;
  v2 = type metadata accessor for Prompt.Attachment();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Prompt.Delimiter();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Prompt.TokenGenerationNonStringContent(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v18 - v14;
  outlined init with copy of Prompt.TokenGenerationNonStringContent(v18, &v18 - v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v5, v15, v2);
    v18 = Prompt.Attachment.position.getter();
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    (*(v7 + 32))(v9, v15, v6);
    v18 = Prompt.Delimiter.position.getter();
    (*(v7 + 8))(v9, v6);
  }

  outlined init with copy of Prompt.TokenGenerationNonStringContent(v19, v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v5, v12, v2);
    v16 = Prompt.Attachment.position.getter();
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    (*(v7 + 32))(v9, v12, v6);
    v16 = Prompt.Delimiter.position.getter();
    (*(v7 + 8))(v9, v6);
  }

  return v18 < v16;
}

uint64_t protocol witness for RenderedPromptConvertible.render() in conformance CompletionPrompt(uint64_t a1, uint64_t a2)
{
  v3[8] = v2;
  v3[9] = a2;
  v3[7] = a1;
  return MEMORY[0x1EEE6DFA0](protocol witness for RenderedPromptConvertible.render() in conformance CompletionPrompt, 0, 0);
}

uint64_t protocol witness for RenderedPromptConvertible.render() in conformance CompletionPrompt()
{
  v1 = type metadata accessor for CatalogClient();
  swift_allocObject();
  v2 = CatalogClient.init()();
  v3 = MEMORY[0x1E69DA6B8];
  v0[5] = v1;
  v0[6] = v3;
  v0[2] = v2;
  lazy protocol witness table accessor for type Prompt and conformance Prompt(&lazy protocol witness table cache variable for type CompletionPrompt and conformance CompletionPrompt, MEMORY[0x1E69C61B8], MEMORY[0x1E69C61A8]);
  GenerativeConfigurationProtocol<>.renderToTokenGenerationPrompt(catalogClient:)();
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v4 = v0[1];

  return v4();
}

uint64_t protocol witness for RenderedPromptConvertible.render() in conformance ChatMessagesPrompt(uint64_t a1, uint64_t a2)
{
  v3[8] = v2;
  v3[9] = a2;
  v3[7] = a1;
  return MEMORY[0x1EEE6DFA0](protocol witness for RenderedPromptConvertible.render() in conformance ChatMessagesPrompt, 0, 0);
}

uint64_t protocol witness for RenderedPromptConvertible.render() in conformance ChatMessagesPrompt()
{
  v1 = type metadata accessor for CatalogClient();
  swift_allocObject();
  v0[2] = CatalogClient.init()();
  v2 = MEMORY[0x1E69DA6B8];
  v0[5] = v1;
  v0[6] = v2;
  lazy protocol witness table accessor for type Prompt and conformance Prompt(&lazy protocol witness table cache variable for type ChatMessagesPrompt and conformance ChatMessagesPrompt, MEMORY[0x1E69C61F8], MEMORY[0x1E69C61F0]);
  GenerativeConfigurationProtocol<>.renderToTokenGenerationPromptTurns(catalogClient:)();
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  static Prompt.transcript(turns:)();

  v3 = v0[1];

  return v3();
}

uint64_t type metadata accessor for Prompt.TokenGenerationNonStringContent(uint64_t a1)
{
  result = type metadata singleton initialization cache for Prompt.TokenGenerationNonStringContent;
  if (!type metadata singleton initialization cache for Prompt.TokenGenerationNonStringContent)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for Prompt(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Prompt and conformance Prompt(&lazy protocol witness table cache variable for type Prompt and conformance Prompt, MEMORY[0x1E69DA850], MEMORY[0x1E69DA858]);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for Prompt.Delimiter(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Prompt and conformance Prompt(&lazy protocol witness table cache variable for type Prompt.Delimiter and conformance Prompt.Delimiter, MEMORY[0x1E69DA828], MEMORY[0x1E69DA830]);
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for Prompt.Attachment(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Prompt and conformance Prompt(&lazy protocol witness table cache variable for type Prompt.Attachment and conformance Prompt.Attachment, MEMORY[0x1E69DA700], MEMORY[0x1E69DA708]);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata completion function for Prompt.TokenGenerationNonStringContent(uint64_t a1)
{
  result = type metadata accessor for Prompt.Delimiter();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Prompt.Attachment();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t Prompt.TokenGenerationNonStringContent.position.setter(uint64_t a1)
{
  v2 = type metadata accessor for Prompt.Attachment();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Prompt.Delimiter();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Prompt.TokenGenerationNonStringContent(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with take of Prompt.TokenGenerationNonStringContent(v1, v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = *(v3 + 32);
    v13(v5, v12, v2);
    Prompt.Attachment.position.setter();
    v13(v1, v5, v2);
  }

  else
  {
    v14 = *(v7 + 32);
    v14(v9, v12, v6);
    Prompt.Delimiter.position.setter();
    v14(v1, v9, v6);
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t instantiation function for generic protocol witness table for Prompt.TokenGenerationNonStringContent(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Prompt and conformance Prompt(&lazy protocol witness table cache variable for type Prompt.TokenGenerationNonStringContent and conformance Prompt.TokenGenerationNonStringContent, type metadata accessor for Prompt.TokenGenerationNonStringContent, &protocol conformance descriptor for Prompt.TokenGenerationNonStringContent);
  *(a1 + 8) = result;
  return result;
}

uint64_t Prompt.nonStringContent.getter()
{
  v31 = type metadata accessor for Prompt.TokenGenerationNonStringContent(0);
  v1 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v3 = v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v29 - v5;
  v7 = Prompt.delimiters.getter();
  v8 = *(v7 + 16);
  v9 = MEMORY[0x1E69E7CC0];
  if (v8)
  {
    v30 = v0;
    v35 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8, 0);
    v10 = v35;
    v34 = type metadata accessor for Prompt.Delimiter();
    v11 = *(v34 - 8);
    v12 = *(v11 + 16);
    v32 = v11 + 16;
    v33 = v12;
    v13 = *(v11 + 80);
    v29[1] = v7;
    v14 = v7 + ((v13 + 32) & ~v13);
    v15 = *(v11 + 72);
    do
    {
      v33(v6, v14, v34);
      swift_storeEnumTagMultiPayload();
      v35 = v10;
      v17 = *(v10 + 16);
      v16 = *(v10 + 24);
      if (v17 >= v16 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1);
        v10 = v35;
      }

      *(v10 + 16) = v17 + 1;
      outlined init with take of Prompt.TokenGenerationNonStringContent(v6, v10 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v17);
      v14 += v15;
      --v8;
    }

    while (v8);

    v9 = MEMORY[0x1E69E7CC0];
  }

  else
  {

    v10 = MEMORY[0x1E69E7CC0];
  }

  v18 = Prompt.attachments.getter();
  v19 = *(v18 + 16);
  if (v19)
  {
    v35 = v9;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v19, 0);
    v20 = v35;
    v34 = type metadata accessor for Prompt.Attachment();
    v21 = *(v34 - 8);
    v22 = *(v21 + 16);
    v32 = v21 + 16;
    v33 = v22;
    v23 = *(v21 + 80);
    v30 = v18;
    v24 = v18 + ((v23 + 32) & ~v23);
    v25 = *(v21 + 72);
    do
    {
      v33(v3, v24, v34);
      swift_storeEnumTagMultiPayload();
      v35 = v20;
      v27 = *(v20 + 16);
      v26 = *(v20 + 24);
      if (v27 >= v26 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1);
        v20 = v35;
      }

      *(v20 + 16) = v27 + 1;
      outlined init with take of Prompt.TokenGenerationNonStringContent(v3, v20 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v27);
      v24 += v25;
      --v19;
    }

    while (v19);
  }

  else
  {

    v20 = MEMORY[0x1E69E7CC0];
  }

  v35 = v10;
  specialized Array.append<A>(contentsOf:)(v20);
  return v35;
}

uint64_t Prompt.init(string:nonStringContent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for Prompt.Attachment();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v73 = &v62 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v80 = &v62 - v15;
  v78 = type metadata accessor for Prompt.Delimiter();
  v76 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v72 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v71 = &v62 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v62 - v20;
  v82 = type metadata accessor for Prompt.TokenGenerationNonStringContent(0);
  MEMORY[0x1EEE9AC00](v82);
  v75 = &v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v62 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v79 = &v62 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v77 = &v62 - v30;
  v31 = *(a3 + 16);
  if (v31)
  {
    v63 = v11;
    v64 = v8;
    v74 = v9;
    v66 = a4;
    v67 = a1;
    v68 = a2;
    v32 = *(v29 + 80);
    v65 = a3;
    v33 = a3 + ((v32 + 32) & ~v32);
    v81 = *(v29 + 72);
    v34 = (v76 + 32);
    v35 = MEMORY[0x1E69E7CC0];
    v36 = v33;
    v37 = v31;
    v69 = v31;
    v70 = v25;
    do
    {
      v38 = v77;
      outlined init with copy of Prompt.TokenGenerationNonStringContent(v36, v77);
      outlined init with take of Prompt.TokenGenerationNonStringContent(v38, v25);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        outlined destroy of Prompt.TokenGenerationNonStringContent(v25);
      }

      else
      {
        v39 = *v34;
        v40 = v21;
        v41 = v72;
        v42 = v78;
        (*v34)(v72, v25, v78);
        v43 = v71;
        v44 = v41;
        v21 = v40;
        v39(v71, v44, v42);
        v39(v40, v43, v42);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v35 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v35[2] + 1, 1, v35);
        }

        v46 = v35[2];
        v45 = v35[3];
        v47 = v35;
        v48 = v76;
        v31 = v69;
        v25 = v70;
        if (v46 >= v45 >> 1)
        {
          v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v45 > 1), v46 + 1, 1, v35);
          v48 = v76;
          v47 = v49;
        }

        v47[2] = v46 + 1;
        v35 = v47;
        v39(v47 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v46, v21, v78);
      }

      v36 += v81;
      --v37;
    }

    while (v37);
    v50 = v75;
    v51 = (v74 + 32);
    v52 = MEMORY[0x1E69E7CC0];
    v54 = v63;
    v53 = v64;
    do
    {
      v55 = v79;
      outlined init with copy of Prompt.TokenGenerationNonStringContent(v33, v79);
      outlined init with take of Prompt.TokenGenerationNonStringContent(v55, v50);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v56 = v35;
        v57 = *v51;
        (*v51)(v54, v50, v53);
        v58 = v73;
        v57(v73, v54, v53);
        v57(v80, v58, v53);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v52 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v52 + 2) + 1, 1, v52);
        }

        v60 = *(v52 + 2);
        v59 = *(v52 + 3);
        if (v60 >= v59 >> 1)
        {
          v52 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v59 > 1), v60 + 1, 1, v52);
        }

        *(v52 + 2) = v60 + 1;
        v57(&v52[((*(v74 + 80) + 32) & ~*(v74 + 80)) + *(v74 + 72) * v60], v80, v53);
        v50 = v75;
        v35 = v56;
      }

      else
      {
        outlined destroy of Prompt.TokenGenerationNonStringContent(v50);
      }

      v33 += v81;
      --v31;
    }

    while (v31);
  }

  return Prompt.init(string:delimiters:attachments:)();
}

void specialized MutableCollection<>.sort(by:)(uint64_t *a1)
{
  v2 = *(type metadata accessor for Prompt.TokenGenerationNonStringContent(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v5);
  *a1 = v3;
}

void specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for Prompt.TokenGenerationNonStringContent(0);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for Prompt.TokenGenerationNonStringContent(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }
}

void specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(char *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v64 = a1;
  v63 = type metadata accessor for Prompt.Attachment();
  v7 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v62 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for Prompt.Delimiter();
  v9 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v60 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for Prompt.TokenGenerationNonStringContent(0);
  MEMORY[0x1EEE9AC00](v65);
  v54 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v45 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v45 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v45 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v45 - v23;
  v47 = a2;
  if (a3 != a2)
  {
    v25 = *a4;
    v26 = *(v22 + 72);
    v57 = (v9 + 8);
    v58 = (v9 + 32);
    v55 = (v7 + 8);
    v56 = (v7 + 32);
    v27 = v25 + v26 * (a3 - 1);
    v52 = -v26;
    v53 = v25;
    v28 = &v64[-a3];
    v46 = v26;
    v29 = v25 + v26 * a3;
    v64 = v14;
    v59 = v17;
LABEL_5:
    v50 = v27;
    v51 = a3;
    v48 = v29;
    v49 = v28;
    v30 = v28;
    while (1)
    {
      outlined init with copy of Prompt.TokenGenerationNonStringContent(v29, v24);
      outlined init with copy of Prompt.TokenGenerationNonStringContent(v27, v20);
      outlined init with copy of Prompt.TokenGenerationNonStringContent(v24, v17);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v31 = v62;
        v32 = v17;
        v33 = v63;
        (*v56)(v62, v32, v63);
        v34 = Prompt.Attachment.position.getter();
        (*v55)(v31, v33);
      }

      else
      {
        v35 = v60;
        v36 = v61;
        (*v58)(v60, v17, v61);
        v34 = Prompt.Delimiter.position.getter();
        v37 = v36;
        v14 = v64;
        (*v57)(v35, v37);
      }

      outlined init with copy of Prompt.TokenGenerationNonStringContent(v20, v14);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v38 = v62;
        v39 = v63;
        (*v56)(v62, v14, v63);
        v40 = Prompt.Attachment.position.getter();
        v41 = v55;
      }

      else
      {
        v38 = v60;
        v39 = v61;
        (*v58)(v60, v14, v61);
        v40 = Prompt.Delimiter.position.getter();
        v41 = v57;
      }

      (*v41)(v38, v39);
      outlined destroy of Prompt.TokenGenerationNonStringContent(v20);
      outlined destroy of Prompt.TokenGenerationNonStringContent(v24);
      v42 = v34 < v40;
      v14 = v64;
      v17 = v59;
      if (!v42)
      {
LABEL_4:
        a3 = v51 + 1;
        v27 = v50 + v46;
        v28 = v49 - 1;
        v29 = v48 + v46;
        if (v51 + 1 == v47)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v53)
      {
        break;
      }

      v43 = v54;
      outlined init with take of Prompt.TokenGenerationNonStringContent(v29, v54);
      swift_arrayInitWithTakeFrontToBack();
      outlined init with take of Prompt.TokenGenerationNonStringContent(v43, v27);
      v27 += v52;
      v29 += v52;
      if (__CFADD__(v30++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(unint64_t *a1, uint64_t a2, unint64_t a3, int64_t a4)
{
  v5 = v4;
  v155 = a1;
  v179 = type metadata accessor for Prompt.Attachment();
  v8 = *(v179 - 8);
  MEMORY[0x1EEE9AC00](v179);
  v178 = &v150 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = type metadata accessor for Prompt.Delimiter();
  v10 = *(v177 - 8);
  MEMORY[0x1EEE9AC00](v177);
  v176 = &v150 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Prompt.TokenGenerationNonStringContent(0);
  v164 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v159 = &v150 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v171 = &v150 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v150 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v150 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v184 = &v150 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v183 = &v150 - v25;
  MEMORY[0x1EEE9AC00](v26);
  MEMORY[0x1EEE9AC00](v27);
  MEMORY[0x1EEE9AC00](v28);
  v170 = &v150 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v168 = &v150 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v153 = &v150 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v152 = &v150 - v37;
  v38 = *(a3 + 8);
  v166 = a3;
  if (v38 < 1)
  {
    v41 = MEMORY[0x1E69E7CC0];
LABEL_110:
    v8 = *v155;
    if (!*v155)
    {
      goto LABEL_151;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_112:
      v185 = v41;
      v144 = *(v41 + 16);
      if (v144 >= 2)
      {
        v145 = v164;
        while (*a3)
        {
          v146 = *(v41 + 16 * v144);
          v147 = v41;
          v148 = *(v41 + 16 * (v144 - 1) + 32);
          v41 = *(v41 + 16 * (v144 - 1) + 40);
          specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + *(v145 + 72) * v146), (*a3 + *(v145 + 72) * v148), *a3 + *(v145 + 72) * v41, v8);
          if (v5)
          {
            goto LABEL_121;
          }

          if (v41 < v146)
          {
            goto LABEL_138;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v147 = specialized _ArrayBuffer._consumeAndCreateNew()(v147);
          }

          if (v144 - 2 >= *(v147 + 2))
          {
            goto LABEL_139;
          }

          v149 = &v147[16 * v144];
          *v149 = v146;
          *(v149 + 1) = v41;
          v185 = v147;
          specialized Array.remove(at:)(v144 - 1);
          v41 = v185;
          v144 = *(v185 + 16);
          a3 = v166;
          if (v144 <= 1)
          {
            goto LABEL_121;
          }
        }

        goto LABEL_149;
      }

LABEL_121:

      return;
    }

LABEL_145:
    v41 = specialized _ArrayBuffer._consumeAndCreateNew()(v41);
    goto LABEL_112;
  }

  v39 = v38;
  v161 = v36;
  v162 = v35;
  v40 = 0;
  v174 = (v10 + 8);
  v175 = (v10 + 32);
  v172 = (v8 + 8);
  v173 = (v8 + 32);
  v41 = MEMORY[0x1E69E7CC0];
  v154 = a4;
  v181 = v12;
  v182 = v18;
  v180 = v21;
  while (1)
  {
    v157 = v40;
    if (v40 + 1 >= v39)
    {
      v56 = v40 + 1;
    }

    else
    {
      v42 = v40;
      v169 = v39;
      v43 = *a3;
      v156 = v5;
      v44 = *(v164 + 72);
      v45 = v43 + v44 * (v40 + 1);
      v46 = v152;
      outlined init with copy of Prompt.TokenGenerationNonStringContent(v45, v152);
      v167 = v43;
      v47 = v43 + v44 * v42;
      v48 = v153;
      outlined init with copy of Prompt.TokenGenerationNonStringContent(v47, v153);
      v49 = v156;
      LODWORD(v163) = specialized closure #1 in static PromptScrubbing.scrubPrompt<A>(_:scrub:)(v46, v48);
      v156 = v49;
      if (v49)
      {
        outlined destroy of Prompt.TokenGenerationNonStringContent(v48);
        outlined destroy of Prompt.TokenGenerationNonStringContent(v46);

        return;
      }

      outlined destroy of Prompt.TokenGenerationNonStringContent(v48);
      outlined destroy of Prompt.TokenGenerationNonStringContent(v46);
      v50 = v42 + 2;
      v8 = v167 + v44 * (v42 + 2);
      v51 = v44;
      v165 = v44;
      v5 = v156;
      while (1)
      {
        v56 = v169;
        if (v169 == v50)
        {
          break;
        }

        v57 = v41;
        v58 = v168;
        outlined init with copy of Prompt.TokenGenerationNonStringContent(v8, v168);
        outlined init with copy of Prompt.TokenGenerationNonStringContent(v45, v170);
        v59 = v161;
        outlined init with copy of Prompt.TokenGenerationNonStringContent(v58, v161);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v60 = v178;
          v61 = v59;
          v62 = v179;
          (*v173)(v178, v61, v179);
          v167 = Prompt.Attachment.position.getter();
          v63 = v172;
        }

        else
        {
          v60 = v176;
          v64 = v59;
          v62 = v177;
          (*v175)(v176, v64, v177);
          v167 = Prompt.Delimiter.position.getter();
          v63 = v174;
        }

        (*v63)(v60, v62);
        v65 = v162;
        outlined init with copy of Prompt.TokenGenerationNonStringContent(v170, v162);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v53 = v178;
          v52 = v179;
          (*v173)(v178, v65, v179);
          v54 = Prompt.Attachment.position.getter();
          v55 = v53;
          v18 = v182;
          (*v172)(v55, v52);
        }

        else
        {
          v66 = v176;
          v67 = v177;
          (*v175)(v176, v65, v177);
          v54 = Prompt.Delimiter.position.getter();
          (*v174)(v66, v67);
        }

        outlined destroy of Prompt.TokenGenerationNonStringContent(v170);
        outlined destroy of Prompt.TokenGenerationNonStringContent(v168);
        ++v50;
        v51 = v165;
        v8 += v165;
        v45 += v165;
        v41 = v57;
        v21 = v180;
        if (((v163 ^ (v167 >= v54)) & 1) == 0)
        {
          v56 = v50 - 1;
          break;
        }
      }

      a4 = v154;
      a3 = v166;
      if (v163)
      {
        if (v56 < v157)
        {
          goto LABEL_144;
        }

        if (v157 < v56)
        {
          v68 = v41;
          v69 = v56;
          v70 = v51 * (v56 - 1);
          v71 = v56 * v51;
          v169 = v56;
          v72 = v157;
          v73 = v157 * v51;
          do
          {
            if (v72 != --v69)
            {
              v74 = *v166;
              if (!*v166)
              {
                goto LABEL_148;
              }

              v8 = v74 + v73;
              outlined init with take of Prompt.TokenGenerationNonStringContent(v74 + v73, v159);
              if (v73 < v70 || v8 >= v74 + v71)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v73 != v70)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              outlined init with take of Prompt.TokenGenerationNonStringContent(v159, v74 + v70);
              v21 = v180;
              v51 = v165;
            }

            ++v72;
            v70 -= v51;
            v71 -= v51;
            v73 += v51;
          }

          while (v72 < v69);
          v5 = v156;
          a3 = v166;
          a4 = v154;
          v41 = v68;
          v18 = v182;
          v56 = v169;
        }
      }
    }

    v75 = *(a3 + 8);
    if (v56 >= v75)
    {
      goto LABEL_41;
    }

    if (__OFSUB__(v56, v157))
    {
      goto LABEL_141;
    }

    if (v56 - v157 >= a4)
    {
LABEL_41:
      v8 = v56;
      goto LABEL_42;
    }

    v76 = v157 + a4;
    if (__OFADD__(v157, a4))
    {
      goto LABEL_142;
    }

    v77 = v157;
    if (v76 >= v75)
    {
      v8 = *(a3 + 8);
    }

    else
    {
      v8 = v76;
    }

    if (v8 < v157)
    {
LABEL_143:
      __break(1u);
LABEL_144:
      __break(1u);
      goto LABEL_145;
    }

    if (v56 == v8)
    {
      v8 = v56;
      goto LABEL_43;
    }

    v151 = v41;
    v156 = v5;
    v123 = *a3;
    v124 = *(v164 + 72);
    v125 = *a3 + v124 * (v56 - 1);
    v126 = -v124;
    v127 = v157 - v56;
    v158 = v124;
    a3 = v123 + v56 * v124;
    v160 = v8;
LABEL_96:
    v169 = v56;
    v163 = a3;
    v165 = v127;
    v167 = v125;
    v128 = v125;
LABEL_97:
    v129 = v183;
    outlined init with copy of Prompt.TokenGenerationNonStringContent(a3, v183);
    outlined init with copy of Prompt.TokenGenerationNonStringContent(v128, v184);
    outlined init with copy of Prompt.TokenGenerationNonStringContent(v129, v21);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v130 = v178;
      v131 = v179;
      (*v173)(v178, v21, v179);
      v132 = Prompt.Attachment.position.getter();
      v133 = v131;
      v18 = v182;
      (*v172)(v130, v133);
    }

    else
    {
      v134 = v176;
      v135 = v177;
      (*v175)(v176, v21, v177);
      v132 = Prompt.Delimiter.position.getter();
      (*v174)(v134, v135);
    }

    outlined init with copy of Prompt.TokenGenerationNonStringContent(v184, v18);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v136 = v178;
      v137 = v18;
      v138 = v179;
      (*v173)(v178, v137, v179);
      v139 = Prompt.Attachment.position.getter();
      v140 = v172;
    }

    else
    {
      v136 = v176;
      v141 = v18;
      v138 = v177;
      (*v175)(v176, v141, v177);
      v139 = Prompt.Delimiter.position.getter();
      v140 = v174;
    }

    (*v140)(v136, v138);
    outlined destroy of Prompt.TokenGenerationNonStringContent(v184);
    outlined destroy of Prompt.TokenGenerationNonStringContent(v183);
    if (v132 < v139)
    {
      break;
    }

    v18 = v182;
    v21 = v180;
LABEL_95:
    v56 = v169 + 1;
    v125 = v167 + v158;
    v127 = v165 - 1;
    a3 = v163 + v158;
    v8 = v160;
    if (v169 + 1 != v160)
    {
      goto LABEL_96;
    }

    v5 = v156;
    v41 = v151;
LABEL_42:
    v77 = v157;
LABEL_43:
    if (v8 < v77)
    {
      goto LABEL_140;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v160 = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v41 + 16) + 1, 1, v41);
    }

    v8 = *(v41 + 16);
    v79 = *(v41 + 24);
    v80 = v8 + 1;
    if (v8 >= v79 >> 1)
    {
      v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v79 > 1), v8 + 1, 1, v41);
    }

    *(v41 + 16) = v80;
    v81 = v41 + 16 * v8;
    v82 = v160;
    *(v81 + 32) = v77;
    *(v81 + 40) = v82;
    v169 = *v155;
    if (!v169)
    {
      goto LABEL_150;
    }

    if (v8)
    {
      while (2)
      {
        a3 = v80 - 1;
        if (v80 >= 4)
        {
          v87 = v41 + 32 + 16 * v80;
          v88 = *(v87 - 64);
          v89 = *(v87 - 56);
          v93 = __OFSUB__(v89, v88);
          v90 = v89 - v88;
          if (v93)
          {
            goto LABEL_127;
          }

          v92 = *(v87 - 48);
          v91 = *(v87 - 40);
          v93 = __OFSUB__(v91, v92);
          v85 = v91 - v92;
          v86 = v93;
          if (v93)
          {
            goto LABEL_128;
          }

          v94 = (v41 + 16 * v80);
          v96 = *v94;
          v95 = v94[1];
          v93 = __OFSUB__(v95, v96);
          v97 = v95 - v96;
          if (v93)
          {
            goto LABEL_130;
          }

          v93 = __OFADD__(v85, v97);
          v98 = v85 + v97;
          if (v93)
          {
            goto LABEL_133;
          }

          if (v98 >= v90)
          {
            v116 = (v41 + 32 + 16 * a3);
            v118 = *v116;
            v117 = v116[1];
            v93 = __OFSUB__(v117, v118);
            v119 = v117 - v118;
            if (v93)
            {
              goto LABEL_137;
            }

            if (v85 < v119)
            {
              a3 = v80 - 2;
            }
          }

          else
          {
LABEL_63:
            if (v86)
            {
              goto LABEL_129;
            }

            v99 = (v41 + 16 * v80);
            v101 = *v99;
            v100 = v99[1];
            v102 = __OFSUB__(v100, v101);
            v103 = v100 - v101;
            v104 = v102;
            if (v102)
            {
              goto LABEL_132;
            }

            v105 = (v41 + 32 + 16 * a3);
            v107 = *v105;
            v106 = v105[1];
            v93 = __OFSUB__(v106, v107);
            v108 = v106 - v107;
            if (v93)
            {
              goto LABEL_135;
            }

            if (__OFADD__(v103, v108))
            {
              goto LABEL_136;
            }

            if (v103 + v108 < v85)
            {
              goto LABEL_77;
            }

            if (v85 < v108)
            {
              a3 = v80 - 2;
            }
          }
        }

        else
        {
          if (v80 == 3)
          {
            v83 = *(v41 + 32);
            v84 = *(v41 + 40);
            v93 = __OFSUB__(v84, v83);
            v85 = v84 - v83;
            v86 = v93;
            goto LABEL_63;
          }

          v109 = (v41 + 16 * v80);
          v111 = *v109;
          v110 = v109[1];
          v93 = __OFSUB__(v110, v111);
          v103 = v110 - v111;
          v104 = v93;
LABEL_77:
          if (v104)
          {
            goto LABEL_131;
          }

          v112 = v41 + 16 * a3;
          v114 = *(v112 + 32);
          v113 = *(v112 + 40);
          v93 = __OFSUB__(v113, v114);
          v115 = v113 - v114;
          if (v93)
          {
            goto LABEL_134;
          }

          if (v115 < v103)
          {
            break;
          }
        }

        v8 = a3 - 1;
        if (a3 - 1 >= v80)
        {
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
          goto LABEL_143;
        }

        if (!*v166)
        {
          goto LABEL_147;
        }

        v120 = *(v41 + 32 + 16 * v8);
        v121 = *(v41 + 32 + 16 * a3 + 8);
        specialized _merge<A>(low:mid:high:buffer:by:)((*v166 + *(v164 + 72) * v120), (*v166 + *(v164 + 72) * *(v41 + 32 + 16 * a3)), *v166 + *(v164 + 72) * v121, v169);
        if (v5)
        {
          goto LABEL_121;
        }

        if (v121 < v120)
        {
          goto LABEL_125;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v41 = specialized _ArrayBuffer._consumeAndCreateNew()(v41);
        }

        if (v8 >= *(v41 + 16))
        {
          goto LABEL_126;
        }

        v122 = v41 + 16 * v8;
        *(v122 + 32) = v120;
        *(v122 + 40) = v121;
        v185 = v41;
        specialized Array.remove(at:)(a3);
        v41 = v185;
        v80 = *(v185 + 16);
        if (v80 <= 1)
        {
          break;
        }

        continue;
      }
    }

    a3 = v166;
    v39 = v166[1];
    v40 = v160;
    a4 = v154;
    if (v160 >= v39)
    {
      goto LABEL_110;
    }
  }

  v18 = v182;
  v21 = v180;
  if (v123)
  {
    v142 = v171;
    outlined init with take of Prompt.TokenGenerationNonStringContent(a3, v171);
    swift_arrayInitWithTakeFrontToBack();
    outlined init with take of Prompt.TokenGenerationNonStringContent(v142, v128);
    v128 += v126;
    a3 += v126;
    if (__CFADD__(v127++, 1))
    {
      goto LABEL_95;
    }

    goto LABEL_97;
  }

  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
}

void specialized _merge<A>(low:mid:high:buffer:by:)(char *a1, char *a2, uint64_t a3, unint64_t a4)
{
  v78 = a4;
  v90 = type metadata accessor for Prompt.Attachment();
  v76 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v89 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for Prompt.Delimiter();
  v8 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v87 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = type metadata accessor for Prompt.TokenGenerationNonStringContent(0);
  MEMORY[0x1EEE9AC00](v93);
  v82 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v75 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v91 = &v75 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v86 = &v75 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v84 = &v75 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v75 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v92 = &v75 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v75 - v26;
  v29 = *(v28 + 72);
  if (!v29)
  {
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v29 == -1)
  {
    goto LABEL_72;
  }

  v30 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v29 == -1)
  {
    goto LABEL_73;
  }

  v85 = a3;
  v83 = a2;
  v31 = (a2 - a1) / v29;
  v96 = a1;
  v32 = v78;
  v95 = v78;
  if (v31 >= v30 / v29)
  {
    v36 = v30 / v29 * v29;
    if (v78 < v83 || &v83[v36] <= v78)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v78 != v83)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v56 = v32 + v36;
    if (v36 >= 1)
    {
      v57 = -v29;
      v79 = (v8 + 8);
      v80 = (v8 + 32);
      v58 = v76++;
      v77 = (v58 + 4);
      v59 = v56;
      v60 = v85;
      v84 = v13;
      v81 = -v29;
      do
      {
        v85 = v56;
        v61 = v83;
        v83 += v57;
        v92 = v61;
        while (1)
        {
          if (v61 <= a1)
          {
            v96 = v61;
            v94 = v85;
            goto LABEL_70;
          }

          v62 = v60;
          v63 = v59 + v57;
          v64 = v86;
          outlined init with copy of Prompt.TokenGenerationNonStringContent(v59 + v57, v86);
          outlined init with copy of Prompt.TokenGenerationNonStringContent(v83, v91);
          outlined init with copy of Prompt.TokenGenerationNonStringContent(v64, v13);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v65 = v89;
            v66 = v90;
            (*v77)(v89, v13, v90);
            v67 = Prompt.Attachment.position.getter();
            (*v76)(v65, v66);
          }

          else
          {
            v68 = v87;
            v69 = v88;
            (*v80)(v87, v13, v88);
            v67 = Prompt.Delimiter.position.getter();
            (*v79)(v68, v69);
          }

          v70 = v82;
          outlined init with copy of Prompt.TokenGenerationNonStringContent(v91, v82);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v71 = v89;
            v72 = v90;
            (*v77)(v89, v70, v90);
            v73 = Prompt.Attachment.position.getter();
            v74 = v76;
          }

          else
          {
            v71 = v87;
            v72 = v88;
            (*v80)(v87, v70, v88);
            v73 = Prompt.Delimiter.position.getter();
            v74 = v79;
          }

          (*v74)(v71, v72);
          v57 = v81;
          v60 = v62 + v81;
          outlined destroy of Prompt.TokenGenerationNonStringContent(v91);
          outlined destroy of Prompt.TokenGenerationNonStringContent(v86);
          if (v67 < v73)
          {
            break;
          }

          v56 = v63;
          v13 = v84;
          if (v62 < v59 || v60 >= v59)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v62 != v59)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v59 = v63;
          v61 = v92;
          if (v63 <= v78)
          {
            v83 = v92;
            goto LABEL_69;
          }
        }

        v13 = v84;
        if (v62 < v92 || v60 >= v92)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v62 != v92)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      while (v59 > v78);
    }

LABEL_69:
    v96 = v83;
    v94 = v56;
  }

  else
  {
    v33 = v31 * v29;
    v34 = v78;
    if (v78 < a1 || &a1[v33] <= v78)
    {
      swift_arrayInitWithTakeFrontToBack();
      v35 = v85;
    }

    else
    {
      v35 = v85;
      if (v78 != a1)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v91 = v34 + v33;
    v94 = v34 + v33;
    v37 = v33 < 1;
    v38 = v83;
    if (!v37 && v83 < v35)
    {
      v81 = v8 + 8;
      v82 = (v8 + 32);
      v79 = v76 + 1;
      v80 = (v76 + 4);
      v86 = v22;
      do
      {
        v40 = v38;
        outlined init with copy of Prompt.TokenGenerationNonStringContent(v38, v27);
        outlined init with copy of Prompt.TokenGenerationNonStringContent(v34, v92);
        outlined init with copy of Prompt.TokenGenerationNonStringContent(v27, v22);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v41 = v89;
          v42 = v90;
          (*v80)(v89, v22, v90);
          v43 = Prompt.Attachment.position.getter();
          v44 = v79;
        }

        else
        {
          v41 = v87;
          v42 = v88;
          (*v82)(v87, v22, v88);
          v43 = Prompt.Delimiter.position.getter();
          v44 = v81;
        }

        (*v44)(v41, v42);
        v45 = v29;
        v46 = v84;
        outlined init with copy of Prompt.TokenGenerationNonStringContent(v92, v84);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v47 = v89;
          v48 = v46;
          v49 = v90;
          (*v80)(v89, v48, v90);
          v50 = Prompt.Attachment.position.getter();
          v51 = v79;
        }

        else
        {
          v47 = v87;
          v52 = v46;
          v49 = v88;
          (*v82)(v87, v52, v88);
          v50 = Prompt.Delimiter.position.getter();
          v51 = v81;
        }

        (*v51)(v47, v49);
        outlined destroy of Prompt.TokenGenerationNonStringContent(v92);
        outlined destroy of Prompt.TokenGenerationNonStringContent(v27);
        if (v43 >= v50)
        {
          v29 = v45;
          v55 = v34 + v45;
          v38 = v40;
          if (a1 < v34 || a1 >= v55)
          {
            swift_arrayInitWithTakeFrontToBack();
            v54 = v85;
            v22 = v86;
          }

          else
          {
            v54 = v85;
            v22 = v86;
            if (a1 != v34)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v95 = v55;
          v34 = v55;
        }

        else
        {
          v53 = v40;
          v29 = v45;
          v38 = (v40 + v45);
          if (a1 < v40 || a1 >= v38)
          {
            swift_arrayInitWithTakeFrontToBack();
            v54 = v85;
            v22 = v86;
          }

          else
          {
            v54 = v85;
            v22 = v86;
            if (a1 != v53)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }
        }

        a1 += v29;
        v96 = a1;
      }

      while (v34 < v91 && v38 < v54);
    }
  }

LABEL_70:
  specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(&v96, &v95, &v94);
}

uint64_t specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for Prompt.TokenGenerationNonStringContent(0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t specialized static Prompt.TokenGenerationNonStringContent.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v27 = a1;
  v28 = a2;
  v26 = type metadata accessor for Prompt.Attachment();
  v2 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Prompt.Delimiter();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Prompt.TokenGenerationNonStringContent(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v25 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV0aB16NonStringContentO_AEtMd, &_s15TokenGeneration6PromptV0aB16NonStringContentO_AEtMR);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v25 - v16;
  v19 = *(v18 + 56);
  outlined init with copy of Prompt.TokenGenerationNonStringContent(v27, &v25 - v16);
  outlined init with copy of Prompt.TokenGenerationNonStringContent(v28, &v17[v19]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with copy of Prompt.TokenGenerationNonStringContent(v17, v11);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v20 = v26;
      (*(v2 + 32))(v4, &v17[v19], v26);
      v21 = static Prompt.Attachment.== infix(_:_:)();
      v22 = *(v2 + 8);
      v22(v4, v20);
      v22(v11, v20);
LABEL_9:
      outlined destroy of Prompt.TokenGenerationNonStringContent(v17);
      return v21 & 1;
    }

    (*(v2 + 8))(v11, v26);
  }

  else
  {
    outlined init with copy of Prompt.TokenGenerationNonStringContent(v17, v14);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      (*(v6 + 32))(v8, &v17[v19], v5);
      v21 = static Prompt.Delimiter.== infix(_:_:)();
      v23 = *(v6 + 8);
      v23(v8, v5);
      v23(v14, v5);
      goto LABEL_9;
    }

    (*(v6 + 8))(v14, v5);
  }

  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, &_s15TokenGeneration6PromptV0aB16NonStringContentO_AEtMd, &_s15TokenGeneration6PromptV0aB16NonStringContentO_AEtMR);
  v21 = 0;
  return v21 & 1;
}

uint64_t outlined init with copy of Prompt.TokenGenerationNonStringContent(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Prompt.TokenGenerationNonStringContent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Prompt.TokenGenerationNonStringContent(uint64_t a1)
{
  v2 = type metadata accessor for Prompt.TokenGenerationNonStringContent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t lazy protocol witness table accessor for type Prompt and conformance Prompt(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t outlined init with take of Prompt.TokenGenerationNonStringContent(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Prompt.TokenGenerationNonStringContent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of PromptScrubbing.IntermediatePromptState<Prompt.TokenGenerationNonStringContent>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration15PromptScrubbingO012IntermediateC5State33_102AEF12823D01DEBBEF7FCA4216300ALLVy_AA0C0V0aB16NonStringContentOGMd, &_s15TokenGeneration15PromptScrubbingO012IntermediateC5State33_102AEF12823D01DEBBEF7FCA4216300ALLVy_AA0C0V0aB16NonStringContentOGMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of PromptScrubbing.IntermediatePromptState<Prompt.TokenGenerationNonStringContent>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration15PromptScrubbingO012IntermediateC5State33_102AEF12823D01DEBBEF7FCA4216300ALLVy_AA0C0V0aB16NonStringContentOGMd, &_s15TokenGeneration15PromptScrubbingO012IntermediateC5State33_102AEF12823D01DEBBEF7FCA4216300ALLVy_AA0C0V0aB16NonStringContentOGMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t type metadata completion function for PromptScrubbing.IntermediatePromptState(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PromptScrubbing.IntermediatePromptState(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_25;
  }

  v9 = v6 + 2;
  v10 = 8 * (v6 + 2);
  if ((v6 + 2) > 3)
  {
    goto LABEL_7;
  }

  v12 = ((v8 + ~(-1 << v10)) >> v10) + 1;
  if (HIWORD(v12))
  {
    v11 = *(a1 + v9);
    if (v11)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v12 <= 0xFF)
    {
      if (v12 < 2)
      {
        goto LABEL_25;
      }

LABEL_7:
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_25;
      }

LABEL_14:
      v13 = (v11 - 1) << v10;
      if (v9 > 3)
      {
        v13 = 0;
      }

      if (v9)
      {
        if (v9 > 3)
        {
          LODWORD(v9) = 4;
        }

        if (v9 > 2)
        {
          if (v9 == 3)
          {
            LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            LODWORD(v9) = *a1;
          }
        }

        else if (v9 == 1)
        {
          LODWORD(v9) = *a1;
        }

        else
        {
          LODWORD(v9) = *a1;
        }
      }

      return v7 + (v9 | v13) + 1;
    }

    v11 = *(a1 + v9);
    if (*(a1 + v9))
    {
      goto LABEL_14;
    }
  }

LABEL_25:
  if (v5 >= 0xFE)
  {
    return (*(v4 + 48))();
  }

  v15 = *(a1 + v6);
  if (v15 < 2)
  {
    return 0;
  }

  return ((v15 + 2147483646) & 0x7FFFFFFF) + 1;
}

unsigned int *storeEnumTagSinglePayload for PromptScrubbing.IntermediatePromptState(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = v8 + 2;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    v12 = 1;
    if (v9 <= 3)
    {
      v13 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      v14 = HIWORD(v13);
      if (v13 < 0x100)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v13 >= 2)
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      if (v14)
      {
        v12 = 4;
      }

      else
      {
        v12 = v16;
      }
    }

    if (v7 >= a2)
    {
LABEL_21:
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v12)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0xFE)
      {
        *(result + v8) = a2 + 1;
      }

      else
      {
        v22 = *(v5 + 56);

        return v22();
      }

      return result;
    }
  }

  else
  {
    v12 = 0;
    if (v7 >= a2)
    {
      goto LABEL_21;
    }
  }

  v17 = ~v7 + a2;
  if (v9 >= 4)
  {
    v18 = result;
    bzero(result, v8 + 2);
    result = v18;
    *v18 = v17;
    v19 = 1;
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v19 = (v17 >> (8 * v9)) + 1;
  if (v8 == -2)
  {
LABEL_41:
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v20 = v17 & ~(-1 << (8 * v9));
  v21 = result;
  bzero(result, v9);
  result = v21;
  if (v9 == 3)
  {
    *v21 = v20;
    *(v21 + 2) = BYTE2(v20);
    goto LABEL_41;
  }

  if (v9 == 2)
  {
    *v21 = v20;
    if (v12 > 1)
    {
LABEL_45:
      if (v12 == 2)
      {
        *(result + v9) = v19;
      }

      else
      {
        *(result + v9) = v19;
      }

      return result;
    }
  }

  else
  {
    *v21 = v17;
    if (v12 > 1)
    {
      goto LABEL_45;
    }
  }

LABEL_42:
  if (v12)
  {
    *(result + v9) = v19;
  }

  return result;
}

uint64_t type metadata completion function for ScrubbedRenderedPrompt(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ScrubbedRenderedPrompt(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_25;
  }

  v9 = v6 + 1;
  v10 = 8 * (v6 + 1);
  if ((v6 + 1) > 3)
  {
    goto LABEL_7;
  }

  v12 = ((v8 + ~(-1 << v10)) >> v10) + 1;
  if (HIWORD(v12))
  {
    v11 = *(a1 + v9);
    if (v11)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v12 <= 0xFF)
    {
      if (v12 < 2)
      {
        goto LABEL_25;
      }

LABEL_7:
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_25;
      }

LABEL_14:
      v13 = (v11 - 1) << v10;
      if (v9 > 3)
      {
        v13 = 0;
      }

      if (v9)
      {
        if (v9 > 3)
        {
          LODWORD(v9) = 4;
        }

        if (v9 > 2)
        {
          if (v9 == 3)
          {
            LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            LODWORD(v9) = *a1;
          }
        }

        else if (v9 == 1)
        {
          LODWORD(v9) = *a1;
        }

        else
        {
          LODWORD(v9) = *a1;
        }
      }

      return v7 + (v9 | v13) + 1;
    }

    v11 = *(a1 + v9);
    if (*(a1 + v9))
    {
      goto LABEL_14;
    }
  }

LABEL_25:
  if (v5 >= 0xFE)
  {
    return (*(v4 + 48))();
  }

  v15 = *(a1 + v6);
  if (v15 < 2)
  {
    return 0;
  }

  return ((v15 + 2147483646) & 0x7FFFFFFF) + 1;
}

unsigned int *storeEnumTagSinglePayload for ScrubbedRenderedPrompt(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = v8 + 1;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    v12 = 1;
    if (v9 <= 3)
    {
      v13 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      v14 = HIWORD(v13);
      if (v13 < 0x100)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v13 >= 2)
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      if (v14)
      {
        v12 = 4;
      }

      else
      {
        v12 = v16;
      }
    }

    if (v7 >= a2)
    {
LABEL_21:
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v12)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0xFE)
      {
        *(result + v8) = a2 + 1;
      }

      else
      {
        v22 = *(v5 + 56);

        return v22();
      }

      return result;
    }
  }

  else
  {
    v12 = 0;
    if (v7 >= a2)
    {
      goto LABEL_21;
    }
  }

  v17 = ~v7 + a2;
  if (v9 >= 4)
  {
    v18 = result;
    bzero(result, v8 + 1);
    result = v18;
    *v18 = v17;
    v19 = 1;
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v19 = (v17 >> (8 * v9)) + 1;
  if (v8 == -1)
  {
LABEL_41:
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v20 = v17 & ~(-1 << (8 * v9));
  v21 = result;
  bzero(result, v9);
  result = v21;
  if (v9 == 3)
  {
    *v21 = v20;
    *(v21 + 2) = BYTE2(v20);
    goto LABEL_41;
  }

  if (v9 == 2)
  {
    *v21 = v20;
    if (v12 > 1)
    {
LABEL_45:
      if (v12 == 2)
      {
        *(result + v9) = v19;
      }

      else
      {
        *(result + v9) = v19;
      }

      return result;
    }
  }

  else
  {
    *v21 = v17;
    if (v12 > 1)
    {
      goto LABEL_45;
    }
  }

LABEL_42:
  if (v12)
  {
    *(result + v9) = v19;
  }

  return result;
}

uint64_t static _OverrideConfigurationHelper.samplingParameters(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 176);
  v3 = *(a1 + 144);
  v30 = *(a1 + 160);
  v31 = v2;
  v4 = *(a1 + 176);
  v32 = *(a1 + 192);
  v5 = *(a1 + 112);
  v7 = *(a1 + 80);
  v26 = *(a1 + 96);
  v6 = v26;
  v27 = v5;
  v8 = *(a1 + 112);
  v9 = *(a1 + 144);
  v28 = *(a1 + 128);
  v10 = v28;
  v29 = v9;
  v11 = *(a1 + 48);
  v13 = *(a1 + 16);
  v22 = *(a1 + 32);
  v12 = v22;
  v23 = v11;
  v14 = *(a1 + 48);
  v15 = *(a1 + 80);
  v24 = *(a1 + 64);
  v16 = v24;
  v25 = v15;
  v17 = *(a1 + 16);
  v21[0] = *a1;
  v18 = v21[0];
  v21[1] = v17;
  *(a2 + 160) = v30;
  *(a2 + 176) = v4;
  *(a2 + 192) = *(a1 + 192);
  *(a2 + 96) = v6;
  *(a2 + 112) = v8;
  *(a2 + 128) = v10;
  *(a2 + 144) = v3;
  *(a2 + 32) = v12;
  *(a2 + 48) = v14;
  *(a2 + 64) = v16;
  *(a2 + 80) = v7;
  v33 = *(a1 + 208);
  *(a2 + 208) = *(a1 + 208);
  *a2 = v18;
  *(a2 + 16) = v13;
  return outlined init with copy of SamplingParameters(v21, v20);
}

uint64_t static _OverrideConfigurationHelper.draftCache(_:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16GenerativeModels12OverrideHintOySaySSGGMd, &_s16GenerativeModels12OverrideHintOySaySSGGMR);
  OverrideHint.value.getter();
  return v1;
}

uint64_t static _OverrideConfigurationHelper.grammar(_:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16GenerativeModels12OverrideHintOySSGMd, &_s16GenerativeModels12OverrideHintOySSGMR);
  OverrideHint.value.getter();
  return v1;
}

uint64_t register<A>(documents:registrationCallback:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for URL();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  v7 = type metadata accessor for DocumentResource();
  v5[11] = v7;
  v5[12] = *(v7 - 8);
  v5[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](register<A>(documents:registrationCallback:), 0, 0);
}

uint64_t register<A>(documents:registrationCallback:)()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCySay26GenerativeModelsFoundation26DocumentResourceIdentifierVGSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCySay26GenerativeModelsFoundation26DocumentResourceIdentifierVGSo16os_unfair_lock_sVGMR);
  v2 = swift_allocObject();
  *(v0 + 112) = v2;
  *(v2 + 24) = 0;
  v3 = (v2 + 24);
  v4 = MEMORY[0x1E69E7CC0];
  *(v2 + 16) = MEMORY[0x1E69E7CC0];
  v5 = *(v1 + 16);
  if (v5)
  {
    v28 = v2;
    v6 = *(v0 + 96);
    v7 = *(v0 + 64);
    v34 = v4;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
    v8 = v1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v29 = (v7 + 8);
    v30 = *(v7 + 72);
    v31 = v6;
    v9 = *(v7 + 16);
    do
    {
      v11 = *(v0 + 72);
      v10 = *(v0 + 80);
      v12 = *(v0 + 56);
      v9(v10, v8, v12);
      v9(v11, v10, v12);
      DocumentResource.init(url:)();
      (*v29)(v10, v12);
      v14 = *(v34 + 16);
      v13 = *(v34 + 24);
      if (v14 >= v13 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
      }

      v15 = *(v0 + 104);
      v16 = *(v0 + 88);
      *(v34 + 16) = v14 + 1;
      (*(v31 + 32))(v34 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v14, v15, v16);
      v8 += v30;
      --v5;
    }

    while (v5);
    v17 = *(v0 + 16);
    v32 = *(v0 + 40);
    v18 = (*(v0 + 24))(v34);
    *(v0 + 120) = v18;

    v19 = swift_task_alloc();
    *(v0 + 128) = v19;
    *(v19 + 16) = v32;
    *(v19 + 32) = v18;
    *(v19 + 40) = v17;
    *(v19 + 48) = v28;
    v20 = swift_task_alloc();
    *(v0 + 136) = v20;
    *v20 = v0;
    v20[1] = register<A>(documents:registrationCallback:);
    v21 = MEMORY[0x1E69E7CA8] + 8;
    v22 = MEMORY[0x1E69E7CA8] + 8;
    v23 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DD58](v20, v21, v22, 0, 0, &async function pointer to partial apply for closure #2 in register<A>(documents:registrationCallback:), v19, v23);
  }

  else
  {
    v24 = v2;
    os_unfair_lock_lock((v2 + 24));
    v25 = *(v24 + 16);

    os_unfair_lock_unlock(v3);

    v26 = *(v0 + 8);

    return v26(v25);
  }
}

{
  v1 = *(v0 + 112);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);

  os_unfair_lock_unlock((v1 + 24));

  v3 = *(v0 + 8);

  return v3(v2);
}

void register<A>(documents:registrationCallback:)()
{

  if (v0)
  {
  }

  else
  {

    MEMORY[0x1EEE6DFA0](register<A>(documents:registrationCallback:), 0, 0);
  }
}

uint64_t closure #2 in register<A>(documents:registrationCallback:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[19] = a6;
  v7[20] = a7;
  v7[17] = a4;
  v7[18] = a5;
  v7[15] = a2;
  v7[16] = a3;
  v8 = *(a6 - 8);
  v7[21] = v8;
  v7[22] = *(v8 + 64);
  v7[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v7[24] = swift_task_alloc();
  v7[25] = swift_task_alloc();
  v7[26] = swift_getTupleTypeMetadata2();
  v9 = type metadata accessor for Optional();
  v7[27] = v9;
  v7[28] = *(v9 - 8);
  v7[29] = swift_task_alloc();
  v7[30] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #2 in register<A>(documents:registrationCallback:), 0, 0);
}

uint64_t closure #2 in register<A>(documents:registrationCallback:)()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 208);
  v4 = *(v0 + 168);
  v3 = *(v0 + 176);
  *(v0 + 104) = *(v0 + 128);
  v5 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x1AC5A5C70](v5, WitnessTable);
  *(v0 + 112) = *(v0 + 96);
  type metadata accessor for EnumeratedSequence();
  EnumeratedSequence.makeIterator()();
  v33 = v4;
  v34 = v2;
  v35 = v2 - 8;
  v36 = (v1 + 32);
  v32 = v3 + 7;
  type metadata accessor for EnumeratedSequence.Iterator();
  while (1)
  {
    v10 = *(v0 + 232);
    v9 = *(v0 + 240);
    v12 = *(v0 + 208);
    v11 = *(v0 + 216);
    EnumeratedSequence.Iterator.next()();
    (*v36)(v9, v10, v11);
    v13 = (*(*v35 + 48))(v9, 1, v12);
    v14 = *(v0 + 240);
    if (v13 == 1)
    {
      break;
    }

    v15 = *(v0 + 200);
    v39 = v15;
    v43 = *(v0 + 192);
    v16 = *(v0 + 184);
    v37 = v16;
    v40 = *(v0 + 136);
    v41 = *v14;
    v42 = *(v0 + 144);
    v17 = *(v34 + 48);
    v18 = type metadata accessor for TaskPriority();
    v38 = *(v18 - 8);
    v44 = *(v0 + 152);
    (*(v38 + 56))(v15, 1, 1, v18);
    v19 = *(v33 + 32);
    v19(v16, &v14[v17], v44);
    v20 = (*(v33 + 80) + 48) & ~*(v33 + 80);
    v21 = (v32 + v20) & 0xFFFFFFFFFFFFFFF8;
    v22 = (v21 + 15) & 0xFFFFFFFFFFFFFFF8;
    v23 = swift_allocObject();
    *(v23 + 16) = 0;
    *(v23 + 24) = 0;
    *(v23 + 32) = v44;
    v19((v23 + v20), v37, v44);
    *(v23 + v21) = v40;
    *(v23 + v22) = v41;
    *(v23 + ((v22 + 15) & 0xFFFFFFFFFFFFFFF8)) = v42;
    outlined init with copy of TaskPriority?(v39, v43);
    v24 = (*(v38 + 48))(v43, 1, v18);

    v25 = *(v0 + 192);
    if (v24 == 1)
    {
      outlined destroy of TaskPriority?(*(v0 + 192));
    }

    else
    {
      TaskPriority.rawValue.getter();
      (*(v38 + 8))(v25, v18);
    }

    if (*(v23 + 16))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v26 = dispatch thunk of Actor.unownedExecutor.getter();
      v28 = v27;
      swift_unknownObjectRelease();
    }

    else
    {
      v26 = 0;
      v28 = 0;
    }

    v29 = **(v0 + 120);

    if (v28 | v26)
    {
      v7 = v0 + 16;
      *(v0 + 16) = 0;
      *(v0 + 24) = 0;
      *(v0 + 32) = v26;
      *(v0 + 40) = v28;
    }

    else
    {
      v7 = 0;
    }

    v8 = *(v0 + 200);
    *(v0 + 72) = 1;
    *(v0 + 80) = v7;
    *(v0 + 88) = v29;
    swift_task_create();

    outlined destroy of TaskPriority?(v8);
  }

  v30 = *(v0 + 8);

  return v30();
}

uint64_t closure #1 in closure #2 in register<A>(documents:registrationCallback:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[15] = a8;
  v8[16] = v17;
  v8[13] = a6;
  v8[14] = a7;
  v8[11] = a4;
  v8[12] = a5;
  v10 = type metadata accessor for DocumentResourceIdentifier();
  v8[17] = v10;
  v8[18] = *(v10 - 8);
  v8[19] = swift_task_alloc();
  v11 = type metadata accessor for DocumentRegistration.Progress();
  v8[20] = v11;
  v8[21] = *(v11 - 8);
  v8[22] = swift_task_alloc();
  v12 = type metadata accessor for DocumentRegistration.Status();
  v8[23] = v12;
  v8[24] = *(v12 - 8);
  v8[25] = swift_task_alloc();
  v13 = type metadata accessor for DocumentRegistration();
  v8[26] = v13;
  v8[27] = *(v13 - 8);
  v8[28] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26GenerativeModelsFoundation20DocumentRegistrationVSgMd, &_s26GenerativeModelsFoundation20DocumentRegistrationVSgMR);
  v8[29] = swift_task_alloc();
  v8[30] = *(a8 - 8);
  v8[31] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[32] = AssociatedTypeWitness;
  v8[33] = *(AssociatedTypeWitness - 8);
  v8[34] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #2 in register<A>(documents:registrationCallback:), 0, 0);
}

uint64_t closure #1 in closure #2 in register<A>(documents:registrationCallback:)()
{
  (*(*(v0 + 240) + 16))(*(v0 + 248), *(v0 + 88), *(v0 + 120));
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  v1 = MEMORY[0x1E69A1528];
  *(v0 + 296) = *MEMORY[0x1E69A1520];
  *(v0 + 300) = *v1;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v3 = swift_task_alloc();
  *(v0 + 280) = v3;
  *v3 = v0;
  v3[1] = closure #1 in closure #2 in register<A>(documents:registrationCallback:);
  v4 = *(v0 + 256);
  v5 = *(v0 + 232);

  return MEMORY[0x1EEE6D8D0](v5, 0, 0, v0 + 80, v4, AssociatedConformanceWitness);
}

{
  *(*v1 + 288) = v0;

  if (v0)
  {
    v2 = closure #1 in closure #2 in register<A>(documents:registrationCallback:);
  }

  else
  {
    v2 = closure #1 in closure #2 in register<A>(documents:registrationCallback:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  (*(v0[33] + 8))(v0[34], v0[32]);

  v1 = v0[1];

  return v1();
}

void closure #1 in closure #2 in register<A>(documents:registrationCallback:)()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 208);
  v3 = *(v0 + 216);
  if ((*(v3 + 48))(v1, 1, v2) != 1)
  {
    v5 = *(v0 + 296);
    v7 = *(v0 + 192);
    v6 = *(v0 + 200);
    v8 = *(v0 + 184);
    (*(v3 + 32))(*(v0 + 224), v1, v2);
    DocumentRegistration.status.getter();
    v9 = (*(v7 + 88))(v6, v8);
    if (v9 == v5)
    {
      v10 = *(v0 + 200);
      v11 = *(v0 + 176);
      v12 = *(v0 + 160);
      v13 = *(v0 + 168);
      v14 = *(v0 + 104);
      (*(*(v0 + 192) + 96))(v10, *(v0 + 184));
      (*(v13 + 32))(v11, v10, v12);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_1ABA1D930;
      *(v0 + 64) = 0;
      *(v0 + 72) = 0xE000000000000000;
      _StringGuts.grow(_:)(32);
      v16 = *(v0 + 72);
      *(v0 + 48) = *(v0 + 64);
      *(v0 + 56) = v16;
      v17 = MEMORY[0x1AC5A5BC0](0x746E656D75636F44, 0xEE00203A4C525520);
      if (v14 < 0)
      {
        __break(1u);
      }

      else if (*(*(v0 + 96) + 16) > *(v0 + 104))
      {
        v23 = *(v0 + 216);
        v48 = *(v0 + 224);
        v24 = *(v0 + 208);
        v26 = *(v0 + 168);
        v25 = *(v0 + 176);
        v27 = *(v0 + 160);
        type metadata accessor for URL();
        lazy protocol witness table accessor for type URL and conformance URL();
        v28 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x1AC5A5BC0](v28);

        MEMORY[0x1AC5A5BC0](0x6572676F7250202CLL, 0xED0000202D207373);
        DocumentRegistration.Progress.progress.getter();
        Float.write<A>(to:)();
        MEMORY[0x1AC5A5BC0](37, 0xE100000000000000);
        v29 = *(v0 + 48);
        v30 = *(v0 + 56);
        *(v15 + 56) = MEMORY[0x1E69E6158];
        *(v15 + 32) = v29;
        *(v15 + 40) = v30;
        print(_:separator:terminator:)();

        (*(v26 + 8))(v25, v27);
        (*(v23 + 8))(v48, v24);
LABEL_9:
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        v32 = swift_task_alloc();
        *(v0 + 280) = v32;
        *v32 = v0;
        v32[1] = closure #1 in closure #2 in register<A>(documents:registrationCallback:);
        v21 = *(v0 + 256);
        v17 = *(v0 + 232);
        v20 = v0 + 80;
        v18 = 0;
        v19 = 0;
        v22 = AssociatedConformanceWitness;

        goto _$sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj;
      }

      __break(1u);
    }

    else
    {
      if (v9 != *(v0 + 300))
      {
        _assertionFailure(_:_:file:line:flags:)();
        return;
      }

      v33 = *(v0 + 200);
      v35 = *(v0 + 144);
      v34 = *(v0 + 152);
      v36 = *(v0 + 136);
      v37 = *(v0 + 104);
      (*(*(v0 + 192) + 96))(v33, *(v0 + 184));
      (*(v35 + 32))(v34, v33, v36);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_1ABA1D930;
      *(v0 + 32) = 0;
      *(v0 + 40) = 0xE000000000000000;
      _StringGuts.grow(_:)(28);

      strcpy((v0 + 16), "Document URL: ");
      *(v0 + 31) = -18;
      if ((v37 & 0x8000000000000000) == 0)
      {
        if (*(*(v0 + 96) + 16) > *(v0 + 104))
        {
          v39 = *(v0 + 288);
          v40 = *(v0 + 152);
          v41 = *(v0 + 112);
          type metadata accessor for URL();
          lazy protocol witness table accessor for type URL and conformance URL();
          v42 = dispatch thunk of CustomStringConvertible.description.getter();
          MEMORY[0x1AC5A5BC0](v42);

          MEMORY[0x1AC5A5BC0](0x747369676552202CLL, 0xEC00000064657265);
          v43 = *(v0 + 16);
          v44 = *(v0 + 24);
          *(v38 + 56) = MEMORY[0x1E69E6158];
          *(v38 + 32) = v43;
          *(v38 + 40) = v44;
          print(_:separator:terminator:)();

          *(swift_task_alloc() + 16) = v40;
          os_unfair_lock_lock((v41 + 24));
          partial apply for closure #1 in closure #1 in closure #2 in register<A>(documents:registrationCallback:)((v41 + 16));
          os_unfair_lock_unlock((v41 + 24));
          if (v39)
          {
            return;
          }

          v46 = *(v0 + 144);
          v45 = *(v0 + 152);
          v47 = *(v0 + 136);
          (*(*(v0 + 216) + 8))(*(v0 + 224), *(v0 + 208));

          (*(v46 + 8))(v45, v47);
          goto LABEL_9;
        }

LABEL_22:
        __break(1u);
_$sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj:
        MEMORY[0x1EEE6D8D0](v17, v18, v19, v20, v21, v22);
        return;
      }
    }

    __break(1u);
    goto LABEL_22;
  }

  (*(*(v0 + 264) + 8))(*(v0 + 272), *(v0 + 256));

  v4 = *(v0 + 8);

  v4();
}

uint64_t closure #1 in closure #1 in closure #2 in register<A>(documents:registrationCallback:)(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for DocumentResourceIdentifier();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a2, v4, v6);
  v9 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9[2] + 1, 1, v9);
  }

  v11 = v9[2];
  v10 = v9[3];
  if (v11 >= v10 >> 1)
  {
    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v9);
  }

  v9[2] = v11 + 1;
  result = (*(v5 + 32))(v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v11, v8, v4);
  *a1 = v9;
  return result;
}