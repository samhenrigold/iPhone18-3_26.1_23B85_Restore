unint64_t lazy protocol witness table accessor for type FetchTokenizerMetadataResponse and conformance FetchTokenizerMetadataResponse()
{
  result = lazy protocol witness table cache variable for type FetchTokenizerMetadataResponse and conformance FetchTokenizerMetadataResponse;
  if (!lazy protocol witness table cache variable for type FetchTokenizerMetadataResponse and conformance FetchTokenizerMetadataResponse)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FetchTokenizerMetadataResponse and conformance FetchTokenizerMetadataResponse);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FetchTokenizerMetadataResponse and conformance FetchTokenizerMetadataResponse;
  if (!lazy protocol witness table cache variable for type FetchTokenizerMetadataResponse and conformance FetchTokenizerMetadataResponse)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FetchTokenizerMetadataResponse and conformance FetchTokenizerMetadataResponse);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CountTokensResponse and conformance CountTokensResponse()
{
  result = lazy protocol witness table cache variable for type CountTokensResponse and conformance CountTokensResponse;
  if (!lazy protocol witness table cache variable for type CountTokensResponse and conformance CountTokensResponse)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CountTokensResponse and conformance CountTokensResponse);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CountTokensResponse and conformance CountTokensResponse;
  if (!lazy protocol witness table cache variable for type CountTokensResponse and conformance CountTokensResponse)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CountTokensResponse and conformance CountTokensResponse);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type OneShotRequest and conformance OneShotRequest(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t outlined init with take of OneShotRequest(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s15TokenGeneration14OneShotRequestOWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type FetchModelMetadataResponse and conformance FetchModelMetadataResponse()
{
  result = lazy protocol witness table cache variable for type FetchModelMetadataResponse and conformance FetchModelMetadataResponse;
  if (!lazy protocol witness table cache variable for type FetchModelMetadataResponse and conformance FetchModelMetadataResponse)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FetchModelMetadataResponse and conformance FetchModelMetadataResponse);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FetchModelMetadataResponse and conformance FetchModelMetadataResponse;
  if (!lazy protocol witness table cache variable for type FetchModelMetadataResponse and conformance FetchModelMetadataResponse)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FetchModelMetadataResponse and conformance FetchModelMetadataResponse);
  }

  return result;
}

uint64_t type metadata instantiation function for InferenceRequestHandler.ResponseStream.AsyncIterator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for InferenceRequestHandler.ResponseStream.AsyncIterator(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for InferenceRequestHandler.ResponseStream.AsyncIterator(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t InferenceRequestInstrumentation.measure(_:)(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary39GenerativeFunctionsInstrumentationEventVSgMd, &_s27IntelligencePlatformLibrary39GenerativeFunctionsInstrumentationEventVSgMR);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](InferenceRequestInstrumentation.measure(_:), 0, 0);
}

{
  v4 = *v3;
  v4[2] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v4[5] = v2;
  v4[14] = v2;

  if (v2)
  {
    v5 = InferenceRequestInstrumentation.measure(_:);
  }

  else
  {
    v5 = InferenceRequestInstrumentation.measure(_:);
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t InferenceRequestInstrumentation.measure(_:)()
{
  v0[12] = *(v0[8] + OBJC_IVAR____TtC15TokenGeneration31InferenceRequestInstrumentation_eventReporter);
  EventReporter.send(eventBuiltWithPresetsAnd:)();
  v1 = v0[11];
  v2 = v0[6];
  v3 = type metadata accessor for GenerativeFunctionsInstrumentationEvent();
  (*(*(v3 - 8) + 56))(v1, 0, 1, v3);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v1, &_s27IntelligencePlatformLibrary39GenerativeFunctionsInstrumentationEventVSgMd, &_s27IntelligencePlatformLibrary39GenerativeFunctionsInstrumentationEventVSgMR);
  v7 = (v2 + *v2);
  v4 = swift_task_alloc();
  v0[13] = v4;
  *v4 = v0;
  v4[1] = InferenceRequestInstrumentation.measure(_:);
  v5 = v0[8];

  return (v7)(partial apply for closure #1 in InferenceRequestInstrumentation.measure(_:), v5);
}

{
  v1 = v0[14];
  v2 = v0[8];
  v3 = swift_task_alloc();
  *(v3 + 16) = v2;
  *(v3 + 24) = 0;
  EventReporter.send(eventBuiltWithPresetsAnd:)();
  if (v1)
  {

    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[10];

  v8 = type metadata accessor for GenerativeFunctionsInstrumentationEvent();
  (*(*(v8 - 8) + 56))(v7, v4, 1, v8);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v7, &_s27IntelligencePlatformLibrary39GenerativeFunctionsInstrumentationEventVSgMd, &_s27IntelligencePlatformLibrary39GenerativeFunctionsInstrumentationEventVSgMR);

  v9 = v0[1];

  return v9(v5, v6);
}

{
  v1 = *(v0 + 112);
  v2 = *(v0 + 64);
  v3 = swift_task_alloc();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  MEMORY[0x1AC5A6AE0](v1);
  EventReporter.send(eventBuiltWithPresetsAnd:)();
  v4 = *(v0 + 72);

  v5 = type metadata accessor for GenerativeFunctionsInstrumentationEvent();
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v4, &_s27IntelligencePlatformLibrary39GenerativeFunctionsInstrumentationEventVSgMd, &_s27IntelligencePlatformLibrary39GenerativeFunctionsInstrumentationEventVSgMR);
  swift_willThrow();

  v6 = *(v0 + 8);

  return v6();
}

uint64_t InferenceRequestInstrumentation.init(inferenceRequestHandlerIdentifier:inferenceRequest:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v5 = v4;
  v49 = a4;
  v41 = a3;
  v46 = a1;
  v47 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptVSgMd, &_s15TokenGeneration6PromptVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v48 = &v38 - v8;
  v9 = type metadata accessor for GenerativeExperiencesTransparencyLog.ExecutionEnvironment();
  v44 = *(v9 - 8);
  v45 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v43 = (&v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for InferenceProviderRequestConfiguration();
  v39 = v11;
  v42 = *(v11 - 8);
  v12 = v42;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for InferenceRequest(0);
  MEMORY[0x1EEE9AC00](v40);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.RequestType();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v4 + OBJC_IVAR____TtC15TokenGeneration31InferenceRequestInstrumentation_outputTokensCount) = 0;
  *(v4 + OBJC_IVAR____TtC15TokenGeneration31InferenceRequestInstrumentation_outputImagesCount) = 0;
  *(v4 + OBJC_IVAR____TtC15TokenGeneration31InferenceRequestInstrumentation_outputAudioSegmentCount) = 0;
  v38 = *(v12 + 16);
  v38(v4 + OBJC_IVAR____TtC15TokenGeneration31InferenceRequestInstrumentation_configuration, a4, v11, v19);
  v52 = 0;
  v53 = 0xE000000000000000;
  _StringGuts.grow(_:)(29);

  v52 = 0xD00000000000001BLL;
  v53 = 0x80000001ABA41250;
  v22 = v41;
  countAndFlagsBits = InferenceRequest.eventTypeSuffix()()._countAndFlagsBits;
  MEMORY[0x1AC5A5BC0](countAndFlagsBits);

  v24 = v53;
  v25 = (v4 + OBJC_IVAR____TtC15TokenGeneration31InferenceRequestInstrumentation_eventType);
  *v25 = v52;
  v25[1] = v24;
  v26 = v22;
  outlined init with copy of PromptCompletion.Segment(v22, v16, type metadata accessor for InferenceRequest);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v28 = MEMORY[0x1E69AA548];
  if (EnumCaseMultiPayload != 1)
  {
    v28 = MEMORY[0x1E69AA550];
  }

  (*(v18 + 104))(v21, *v28, v17);
  v40 = type metadata accessor for InferenceRequest;
  outlined destroy of PromptCompletion(v16, type metadata accessor for InferenceRequest);
  (*(v18 + 32))(v4 + OBJC_IVAR____TtC15TokenGeneration31InferenceRequestInstrumentation_requestType, v21, v17);
  type metadata accessor for EventReporter();
  swift_allocObject();
  *(v4 + OBJC_IVAR____TtC15TokenGeneration31InferenceRequestInstrumentation_eventReporter) = EventReporter.init()();
  v29 = v38;
  v30 = v39;
  (v38)(v14, v49, v39);
  type metadata accessor for InferenceRequestTransparency(0);
  v31 = swift_allocObject();
  v32 = v43;
  static GenerativeExperiencesTransparencyLog.ExecutionEnvironment.from(inferenceRequestHandlerIdentifier:configuration:)(v46, v47, v43);

  (*(v44 + 32))(v31 + OBJC_IVAR____TtC15TokenGeneration28InferenceRequestTransparency_executionEnvironment, v32, v45);
  v29(v31 + OBJC_IVAR____TtC15TokenGeneration28InferenceRequestTransparency_configuration, v14, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCy15TokenGeneration28InferenceRequestTransparencyC12MutableStateVSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCy15TokenGeneration28InferenceRequestTransparencyC12MutableStateVSo16os_unfair_lock_sVGMR);
  v33 = swift_allocObject();
  *(v33 + 48) = 0;
  v34 = *(v42 + 8);
  v34(v14, v30);
  *(v33 + 16) = 0u;
  *(v33 + 32) = 0u;
  *(v31 + OBJC_IVAR____TtC15TokenGeneration28InferenceRequestTransparency_mutableState) = v33;
  *(v5 + OBJC_IVAR____TtC15TokenGeneration31InferenceRequestInstrumentation_transparency) = v31;
  v35 = v48;
  InferenceRequest.prompt()(v48);
  v36 = *(v31 + OBJC_IVAR____TtC15TokenGeneration28InferenceRequestTransparency_mutableState);
  v50 = v35;
  v51 = v31;
  os_unfair_lock_lock((v36 + 48));
  partial apply for closure #1 in InferenceRequestTransparency.record(prompt:)((v36 + 16));
  os_unfair_lock_unlock((v36 + 48));
  v34(v49, v30);
  outlined destroy of PromptCompletion(v26, v40);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v35, &_s15TokenGeneration6PromptVSgMd, &_s15TokenGeneration6PromptVSgMR);
  return v5;
}

Swift::String __swiftcall InferenceRequest.eventTypeSuffix()()
{
  v1 = v0;
  v2 = type metadata accessor for OneShotRequest(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for StreamingRequest(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for InferenceRequest(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PromptCompletion.Segment(v1, v13, type metadata accessor for InferenceRequest);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of PromptCompletion.Content(v13, v4, type metadata accessor for OneShotRequest);
    v14 = OneShotRequest.eventTypeSuffix()();
    countAndFlagsBits = v14._countAndFlagsBits;
    object = v14._object;
    v17 = type metadata accessor for OneShotRequest;
    v18 = v4;
LABEL_8:
    outlined destroy of PromptCompletion(v18, v17);
    goto LABEL_9;
  }

  outlined init with take of PromptCompletion.Content(v13, v10, type metadata accessor for StreamingRequest);
  outlined init with copy of PromptCompletion.Segment(v10, v7, type metadata accessor for StreamingRequest);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      countAndFlagsBits = 0xD000000000000010;
      outlined destroy of PromptCompletion(v7, type metadata accessor for StreamingRequest);
      object = 0x80000001ABA41270;
      v18 = v10;
      v17 = type metadata accessor for StreamingRequest;
      goto LABEL_8;
    }

    object = 0x80000001ABA41290;
    outlined destroy of PromptCompletion(v10, type metadata accessor for StreamingRequest);
    outlined destroy of PromptCompletion(v7, type metadata accessor for StreamingRequest);
    countAndFlagsBits = 0xD000000000000016;
  }

  else
  {
    outlined destroy of PromptCompletion(v10, type metadata accessor for StreamingRequest);
    outlined destroy of PromptCompletion(v7, type metadata accessor for StreamingRequest);
    object = 0xEE0074706D6F7250;
    countAndFlagsBits = 0x6574656C706D6F63;
  }

LABEL_9:
  v20 = countAndFlagsBits;
  v21 = object;
  result._object = v21;
  result._countAndFlagsBits = v20;
  return result;
}

uint64_t InferenceRequest.prompt()@<X0>(uint64_t a1@<X8>)
{
  v132 = a1;
  v129 = type metadata accessor for StreamingRequest(0);
  MEMORY[0x1EEE9AC00](v129);
  v3 = &v119 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v119 - v5;
  v123 = type metadata accessor for ClassifyPromptTemplateRequest(0);
  MEMORY[0x1EEE9AC00](v123);
  v126 = &v119 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = type metadata accessor for ClassifyPromptRequest(0);
  MEMORY[0x1EEE9AC00](v122);
  v125 = &v119 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = type metadata accessor for CompletePromptRequest(0);
  MEMORY[0x1EEE9AC00](v127);
  v128 = &v119 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = type metadata accessor for CountTokensPromptTemplateRequest(0);
  MEMORY[0x1EEE9AC00](v119);
  v124 = &v119 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CountTokensRequest(0);
  MEMORY[0x1EEE9AC00](v11);
  v121 = &v119 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v130 = &v119 - v14;
  v15 = type metadata accessor for CompletePromptTemplateRequest(0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v119 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v120 = &v119 - v19;
  v20 = type metadata accessor for OneShotRequest(0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v119 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v119 - v24;
  v26 = type metadata accessor for InferenceRequest(0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v119 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PromptCompletion.Segment(v131, v28, type metadata accessor for InferenceRequest);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of PromptCompletion.Content(v28, v25, type metadata accessor for OneShotRequest);
    outlined init with copy of PromptCompletion.Segment(v25, v22, type metadata accessor for OneShotRequest);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 3)
    {
      if (EnumCaseMultiPayload <= 5)
      {
        if (EnumCaseMultiPayload == 4)
        {
          v30 = v120;
          outlined init with take of PromptCompletion.Content(v22, v120, type metadata accessor for CompletePromptTemplateRequest);
          v86 = (v30 + *(v15 + 20));
          v87 = v86[1];
          if (v87)
          {
            v89 = v86[2];
            v88 = v86[3];
            v90 = *v86;
            v91 = type metadata accessor for XPCDictionary();
            v92 = *(v91 - 8);
            v93 = v130;
            (*(v92 + 16))(v130, v30, v91);
            (*(v92 + 56))(v93, 0, 1, v91);
            v94 = v132;
            PromptEnvelope.unseal(_:)(v93, v90, v87, v89, v88, v132);
            outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v93, &_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR);
            v95 = 0;
          }

          else
          {
            v95 = 1;
            v94 = v132;
          }

          outlined destroy of PromptCompletion(v25, type metadata accessor for OneShotRequest);
          v118 = type metadata accessor for Prompt();
          (*(*(v118 - 8) + 56))(v94, v95, 1, v118);
          v116 = type metadata accessor for CompletePromptTemplateRequest;
          return outlined destroy of PromptCompletion(v30, v116);
        }

        goto LABEL_23;
      }

      if (EnumCaseMultiPayload != 6)
      {
        if (EnumCaseMultiPayload == 7)
        {
          v30 = v126;
          outlined init with take of PromptCompletion.Content(v22, v126, type metadata accessor for ClassifyPromptTemplateRequest);
          v31 = (v30 + *(v123 + 20));
          v32 = v31[1];
          if (v32)
          {
            v34 = v31[2];
            v33 = v31[3];
            v35 = *v31;
            v36 = type metadata accessor for XPCDictionary();
            v37 = *(v36 - 8);
            v38 = v130;
            (*(v37 + 16))(v130, v30, v36);
            (*(v37 + 56))(v38, 0, 1, v36);
            v39 = v132;
            PromptEnvelope.unseal(_:)(v38, v35, v32, v34, v33, v132);
            outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v38, &_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR);
            v40 = 0;
          }

          else
          {
            v40 = 1;
            v39 = v132;
          }

          outlined destroy of PromptCompletion(v25, type metadata accessor for OneShotRequest);
          v117 = type metadata accessor for Prompt();
          (*(*(v117 - 8) + 56))(v39, v40, 1, v117);
          v116 = type metadata accessor for ClassifyPromptTemplateRequest;
          return outlined destroy of PromptCompletion(v30, v116);
        }

        goto LABEL_23;
      }

      v52 = v125;
      outlined init with take of PromptCompletion.Content(v22, v125, type metadata accessor for ClassifyPromptRequest);
      v99 = (v52 + *(v122 + 20));
      v100 = *v99;
      v101 = v99[1];
      v102 = v99[2];
      v103 = v99[3];
      v104 = type metadata accessor for XPCDictionary();
      v105 = *(v104 - 8);
      v106 = v130;
      (*(v105 + 16))(v130, v52, v104);
      (*(v105 + 56))(v106, 0, 1, v104);
      v61 = v132;
      PromptEnvelope.unseal(_:)(v106, v100, v101, v102, v103, v132);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v106, &_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR);
      outlined destroy of PromptCompletion(v25, type metadata accessor for OneShotRequest);
      v62 = type metadata accessor for ClassifyPromptRequest;
      goto LABEL_30;
    }

    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
LABEL_23:
        outlined destroy of PromptCompletion(v25, type metadata accessor for OneShotRequest);
        outlined destroy of PromptCompletion(v22, type metadata accessor for OneShotRequest);
        v73 = type metadata accessor for Prompt();
        v74 = *(*(v73 - 8) + 56);
        v75 = v132;
        goto LABEL_24;
      }

      v52 = v121;
      outlined init with take of PromptCompletion.Content(v22, v121, type metadata accessor for CountTokensRequest);
      v53 = (v52 + *(v11 + 20));
      v54 = *v53;
      v55 = v53[1];
      v56 = v53[2];
      v57 = v53[3];
      v58 = type metadata accessor for XPCDictionary();
      v59 = *(v58 - 8);
      v60 = v130;
      (*(v59 + 16))(v130, v52, v58);
      (*(v59 + 56))(v60, 0, 1, v58);
      v61 = v132;
      PromptEnvelope.unseal(_:)(v60, v54, v55, v56, v57, v132);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v60, &_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR);
      outlined destroy of PromptCompletion(v25, type metadata accessor for OneShotRequest);
      v62 = type metadata accessor for CountTokensRequest;
LABEL_30:
      outlined destroy of PromptCompletion(v52, v62);
      v73 = type metadata accessor for Prompt();
      v74 = *(*(v73 - 8) + 56);
      v75 = v61;
      v96 = 0;
      return v74(v75, v96, 1, v73);
    }

    if (EnumCaseMultiPayload == 2)
    {
      v30 = v124;
      outlined init with take of PromptCompletion.Content(v22, v124, type metadata accessor for CountTokensPromptTemplateRequest);
      v76 = (v30 + *(v119 + 20));
      v77 = v76[1];
      if (v77)
      {
        v79 = v76[2];
        v78 = v76[3];
        v80 = *v76;
        v81 = type metadata accessor for XPCDictionary();
        v82 = *(v81 - 8);
        v83 = v130;
        (*(v82 + 16))(v130, v30, v81);
        (*(v82 + 56))(v83, 0, 1, v81);
        v84 = v132;
        PromptEnvelope.unseal(_:)(v83, v80, v77, v79, v78, v132);
        outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v83, &_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR);
        v85 = 0;
      }

      else
      {
        v85 = 1;
        v84 = v132;
      }

      outlined destroy of PromptCompletion(v25, type metadata accessor for OneShotRequest);
      v115 = type metadata accessor for Prompt();
      (*(*(v115 - 8) + 56))(v84, v85, 1, v115);
      v116 = type metadata accessor for CountTokensPromptTemplateRequest;
      return outlined destroy of PromptCompletion(v30, v116);
    }

    v52 = v128;
    outlined init with take of PromptCompletion.Content(v22, v128, type metadata accessor for CompletePromptRequest);
    v107 = (v52 + *(v127 + 20));
    v108 = *v107;
    v109 = v107[1];
    v110 = v107[2];
    v111 = v107[3];
    v112 = type metadata accessor for XPCDictionary();
    v113 = *(v112 - 8);
    v114 = v130;
    (*(v113 + 16))(v130, v52, v112);
    (*(v113 + 56))(v114, 0, 1, v112);
    v61 = v132;
    PromptEnvelope.unseal(_:)(v114, v108, v109, v110, v111, v132);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v114, &_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR);
    v72 = type metadata accessor for OneShotRequest;
LABEL_29:
    outlined destroy of PromptCompletion(v25, v72);
    v62 = type metadata accessor for CompletePromptRequest;
    goto LABEL_30;
  }

  outlined init with take of PromptCompletion.Content(v28, v6, type metadata accessor for StreamingRequest);
  outlined init with copy of PromptCompletion.Segment(v6, v3, type metadata accessor for StreamingRequest);
  v41 = swift_getEnumCaseMultiPayload();
  v25 = v6;
  if (!v41)
  {
    v63 = v3;
    v52 = v128;
    outlined init with take of PromptCompletion.Content(v63, v128, type metadata accessor for CompletePromptRequest);
    v64 = (v52 + *(v127 + 20));
    v65 = *v64;
    v66 = v64[1];
    v67 = v64[2];
    v68 = v64[3];
    v69 = type metadata accessor for XPCDictionary();
    v70 = *(v69 - 8);
    v71 = v130;
    (*(v70 + 16))(v130, v52, v69);
    (*(v70 + 56))(v71, 0, 1, v69);
    v61 = v132;
    PromptEnvelope.unseal(_:)(v71, v65, v66, v67, v68, v132);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v71, &_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR);
    v72 = type metadata accessor for StreamingRequest;
    goto LABEL_29;
  }

  v42 = v132;
  if (v41 != 1)
  {
    outlined destroy of PromptCompletion(v6, type metadata accessor for StreamingRequest);
    outlined destroy of PromptCompletion(v3, type metadata accessor for StreamingRequest);
    v73 = type metadata accessor for Prompt();
    v74 = *(*(v73 - 8) + 56);
    v75 = v42;
LABEL_24:
    v96 = 1;
    return v74(v75, v96, 1, v73);
  }

  outlined init with take of PromptCompletion.Content(v3, v17, type metadata accessor for CompletePromptTemplateRequest);
  v43 = &v17[*(v15 + 20)];
  v44 = v43[1];
  if (v44)
  {
    v46 = v43[2];
    v45 = v43[3];
    v47 = *v43;
    v48 = type metadata accessor for XPCDictionary();
    v49 = *(v48 - 8);
    v50 = v130;
    (*(v49 + 16))(v130, v17, v48);
    (*(v49 + 56))(v50, 0, 1, v48);
    PromptEnvelope.unseal(_:)(v50, v47, v44, v46, v45, v42);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v50, &_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR);
    v51 = 0;
  }

  else
  {
    v51 = 1;
  }

  outlined destroy of PromptCompletion(v25, type metadata accessor for StreamingRequest);
  v97 = type metadata accessor for Prompt();
  (*(*(v97 - 8) + 56))(v42, v51, 1, v97);
  return outlined destroy of PromptCompletion(v17, type metadata accessor for CompletePromptTemplateRequest);
}

uint64_t InferenceRequestInstrumentation.handleCompletePromptResponse(_:)(_OWORD *a1)
{
  v137 = type metadata accessor for PromptCompletion.Content(0);
  MEMORY[0x1EEE9AC00](v137);
  v3 = &v119 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v119 - v5;
  v7 = type metadata accessor for PromptCompletion.Segment(0);
  v135 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v136 = &v119 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v119 - v10;
  v12 = type metadata accessor for PromptCompletion(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v120 = &v119 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v121 = &v119 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v119 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v119 - v20;
  v22 = a1[6];
  v203[7] = a1[7];
  v23 = a1[7];
  v203[8] = a1[8];
  v24 = a1[8];
  v203[9] = a1[9];
  v25 = a1[9];
  v203[10] = a1[10];
  v26 = a1[2];
  v203[3] = a1[3];
  v27 = a1[3];
  v203[4] = a1[4];
  v28 = a1[4];
  v203[5] = a1[5];
  v29 = a1[5];
  v203[6] = a1[6];
  v30 = a1[1];
  v203[0] = *a1;
  v31 = *a1;
  v203[1] = a1[1];
  v203[2] = a1[2];
  v213 = v23;
  v214 = v24;
  v215 = v25;
  v216 = a1[10];
  v209 = v27;
  v210 = v28;
  v211 = v29;
  v212 = v22;
  v206 = v31;
  v207 = v30;
  v208 = v26;
  outlined init with copy of PromptCompletionEnvelope(v203, v205);
  PromptCompletionEnvelope.unseal()(v21);
  v204[7] = v213;
  v204[8] = v214;
  v204[9] = v215;
  v204[10] = v216;
  v204[3] = v209;
  v204[4] = v210;
  v204[5] = v211;
  v204[6] = v212;
  v204[0] = v206;
  v204[1] = v207;
  v204[2] = v208;
  outlined destroy of PromptCompletionEnvelope(v204);
  v32 = *(v21 + 6);
  v119 = v21;
  outlined destroy of PromptCompletion(v21, type metadata accessor for PromptCompletion);
  v33 = a1[6];
  v205[7] = a1[7];
  v34 = a1[7];
  v205[8] = a1[8];
  v35 = a1[8];
  v205[9] = a1[9];
  v36 = a1[9];
  v205[10] = a1[10];
  v37 = a1[2];
  v205[3] = a1[3];
  v38 = a1[3];
  v205[4] = a1[4];
  v39 = a1[4];
  v205[5] = a1[5];
  v40 = a1[5];
  v205[6] = a1[6];
  v41 = a1[1];
  v205[0] = *a1;
  v42 = *a1;
  v205[1] = a1[1];
  v205[2] = a1[2];
  v199 = v34;
  v200 = v35;
  v201 = v36;
  v122 = a1;
  v202 = a1[10];
  v195 = v38;
  v196 = v39;
  v197 = v40;
  v198 = v33;
  v192 = v42;
  v193 = v41;
  *(v123 + OBJC_IVAR____TtC15TokenGeneration31InferenceRequestInstrumentation_outputTokensCount) = v32;
  v194 = v37;
  outlined init with copy of PromptCompletionEnvelope(v205, &v206);
  PromptCompletionEnvelope.unseal()(v18);
  v213 = v199;
  v214 = v200;
  v215 = v201;
  v216 = v202;
  v209 = v195;
  v210 = v196;
  v211 = v197;
  v212 = v198;
  v206 = v192;
  v207 = v193;
  v208 = v194;
  outlined destroy of PromptCompletionEnvelope(&v206);
  v43 = *(v18 + 4);

  result = outlined destroy of PromptCompletion(v18, type metadata accessor for PromptCompletion);
  v45 = 0;
  v46 = 0;
  v125 = *(v43 + 16);
  v126 = v43;
  v124 = v43 + 32;
  while (v45 != v125)
  {
    if (v45 >= *(v126 + 16))
    {
      goto LABEL_29;
    }

    v48 = (v124 + 56 * v45);
    v49 = *v48;
    v50 = *(*v48 + 16);
    if (v50)
    {
      v131 = v46;
      v51 = v48[4];
      v53 = v48[5];
      v52 = v48[6];
      v133 = v48[3];
      v134 = v53;
      v132 = v52;
      v54 = v48[1];
      v55 = v49 + ((*(v135 + 80) + 32) & ~*(v135 + 80));
      v127 = v48[2];

      v128 = v54;

      v129 = v51;
      outlined copy of FinishReason(v133, v51);
      outlined copy of Data._Representation(v134, v132);
      v130 = v49;

      v56 = 0;
      v57 = *(v135 + 72);
      while (1)
      {
        outlined init with copy of PromptCompletion.Segment(v55, v11, type metadata accessor for PromptCompletion.Segment);
        outlined init with take of PromptCompletion.Content(v11, v6, type metadata accessor for PromptCompletion.Content);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        result = outlined destroy of PromptCompletion(v6, type metadata accessor for PromptCompletion.Content);
        if (EnumCaseMultiPayload == 1)
        {
          v47 = __OFADD__(v56++, 1);
          if (v47)
          {
            break;
          }
        }

        v55 += v57;
        if (!--v50)
        {

          outlined consume of FinishReason(v133, v129);
          outlined consume of Data._Representation(v134, v132);

          v46 = v131;
          goto LABEL_3;
        }
      }

      __break(1u);
      goto LABEL_28;
    }

    v56 = 0;
LABEL_3:
    ++v45;
    v47 = __OFADD__(v46, v56);
    v46 += v56;
    if (v47)
    {
      goto LABEL_30;
    }
  }

  v59 = v122[8];
  v60 = v122[6];
  v188 = v122[7];
  v189 = v59;
  v61 = v122[8];
  v190 = v122[9];
  v62 = v122[9];
  v191 = v122[10];
  v63 = v122[4];
  v65 = v122[2];
  v184 = v122[3];
  v64 = v184;
  v185 = v63;
  v66 = v122[4];
  v67 = v122[6];
  v186 = v122[5];
  v187 = v67;
  v68 = *v122;
  v69 = v122[2];
  v182 = v122[1];
  v183 = v69;
  v70 = *v122;
  v178 = v61;
  v179 = v62;
  v180 = v122[10];
  v181 = v70;
  v174 = v66;
  v175 = v186;
  v176 = v60;
  v177 = v188;
  v170 = v68;
  v171 = v182;
  *(v123 + OBJC_IVAR____TtC15TokenGeneration31InferenceRequestInstrumentation_outputImagesCount) = v46;
  v172 = v65;
  v173 = v64;
  outlined init with copy of PromptCompletionEnvelope(&v181, &v192);
  v71 = v121;
  PromptCompletionEnvelope.unseal()(v121);
  v199 = v177;
  v200 = v178;
  v201 = v179;
  v202 = v180;
  v195 = v173;
  v196 = v174;
  v197 = v175;
  v198 = v176;
  v192 = v170;
  v193 = v171;
  v194 = v172;
  outlined destroy of PromptCompletionEnvelope(&v192);
  v72 = *(v71 + 32);

  result = outlined destroy of PromptCompletion(v71, type metadata accessor for PromptCompletion);
  v73 = 0;
  v74 = 0;
  v126 = *(v72 + 16);
  v127 = v72;
  v125 = v72 + 32;
  while (1)
  {
    if (v73 == v126)
    {

      v86 = v122;
      v87 = v122[7];
      v88 = v122[9];
      v156 = v122[8];
      v157 = v88;
      v89 = v122[9];
      v158 = v122[10];
      v90 = v122[3];
      v91 = v122[5];
      v152 = v122[4];
      v153 = v91;
      v92 = v122[5];
      v93 = v122[7];
      v154 = v122[6];
      v155 = v93;
      v94 = v122[1];
      v149[0] = *v122;
      v149[1] = v94;
      v95 = v122[3];
      v97 = *v122;
      v96 = v122[1];
      v150 = v122[2];
      v98 = v150;
      v151 = v95;
      v178 = v156;
      v179 = v89;
      v180 = v122[10];
      v174 = v152;
      v175 = v92;
      v176 = v154;
      v177 = v87;
      v170 = v97;
      v171 = v96;
      v99 = v123;
      *(v123 + OBJC_IVAR____TtC15TokenGeneration31InferenceRequestInstrumentation_outputAudioSegmentCount) = v74;
      v172 = v98;
      v173 = v90;
      outlined init with copy of PromptCompletionEnvelope(v149, v160);
      v100 = v119;
      PromptCompletionEnvelope.unseal()(v119);
      v159[8] = v178;
      v159[9] = v179;
      v159[10] = v180;
      v159[4] = v174;
      v159[5] = v175;
      v159[6] = v176;
      v159[7] = v177;
      v159[0] = v170;
      v159[1] = v171;
      v159[2] = v172;
      v159[3] = v173;
      outlined destroy of PromptCompletionEnvelope(v159);
      v101 = *v100;
      v102 = v100[1];
      v103 = v100[2];

      outlined destroy of PromptCompletion(v100, type metadata accessor for PromptCompletion);
      *&v170 = v101;
      *(&v170 + 1) = v102;
      *&v171 = v103;
      InferenceRequestInstrumentation.reportModelInformation(_:)(&v170);

      v104 = v86[7];
      v105 = v86[9];
      v167 = v86[8];
      v168 = v105;
      v106 = v86[9];
      v169 = v86[10];
      v107 = v86[3];
      v108 = v86[5];
      v163 = v86[4];
      v164 = v108;
      v109 = v86[5];
      v110 = v86[7];
      v165 = v86[6];
      v166 = v110;
      v111 = v86[1];
      v160[0] = *v86;
      v160[1] = v111;
      v112 = v86[3];
      v114 = *v86;
      v113 = v86[1];
      v161 = v86[2];
      v162 = v112;
      v146 = v167;
      v147 = v106;
      v148 = v86[10];
      v142 = v163;
      v143 = v109;
      v144 = v165;
      v145 = v104;
      v138 = v114;
      v139 = v113;
      v115 = *(v99 + OBJC_IVAR____TtC15TokenGeneration31InferenceRequestInstrumentation_transparency);
      v140 = v161;
      v141 = v107;
      outlined init with copy of PromptCompletionEnvelope(v160, &v170);
      v116 = v120;
      PromptCompletionEnvelope.unseal()(v120);
      v178 = v146;
      v179 = v147;
      v180 = v148;
      v174 = v142;
      v175 = v143;
      v176 = v144;
      v177 = v145;
      v170 = v138;
      v171 = v139;
      v172 = v140;
      v173 = v141;
      v117 = outlined destroy of PromptCompletionEnvelope(&v170);
      v118 = *(v115 + OBJC_IVAR____TtC15TokenGeneration28InferenceRequestTransparency_mutableState);
      MEMORY[0x1EEE9AC00](v117);
      *(&v119 - 2) = v116;
      *(&v119 - 1) = v115;
      os_unfair_lock_lock((v118 + 48));
      partial apply for closure #1 in InferenceRequestTransparency.record(completion:)((v118 + 16));
      os_unfair_lock_unlock((v118 + 48));
      return outlined destroy of PromptCompletion(v116, type metadata accessor for PromptCompletion);
    }

    if (v73 >= *(v127 + 16))
    {
      goto LABEL_31;
    }

    v75 = (v125 + 56 * v73);
    v76 = *v75;
    v77 = *(*v75 + 16);
    if (v77)
    {
      break;
    }

    v83 = 0;
LABEL_16:
    ++v73;
    v47 = __OFADD__(v74, v83);
    v74 += v83;
    if (v47)
    {
      goto LABEL_32;
    }
  }

  v131 = v74;
  v79 = v75[3];
  v78 = v75[4];
  v80 = v75[6];
  v134 = v75[5];
  v81 = v75[1];
  v82 = v76 + ((*(v135 + 80) + 32) & ~*(v135 + 80));
  v128 = v75[2];

  v129 = v81;

  v133 = v79;
  v130 = v78;
  outlined copy of FinishReason(v79, v78);
  v132 = v80;
  outlined copy of Data._Representation(v134, v80);

  v83 = 0;
  v84 = *(v135 + 72);
  while (1)
  {
    v85 = v136;
    outlined init with copy of PromptCompletion.Segment(v82, v136, type metadata accessor for PromptCompletion.Segment);
    outlined init with take of PromptCompletion.Content(v85, v3, type metadata accessor for PromptCompletion.Content);
    LODWORD(v85) = swift_getEnumCaseMultiPayload();
    result = outlined destroy of PromptCompletion(v3, type metadata accessor for PromptCompletion.Content);
    if (v85 == 3)
    {
      v47 = __OFADD__(v83++, 1);
      if (v47)
      {
        break;
      }
    }

    v82 += v84;
    if (!--v77)
    {

      outlined consume of FinishReason(v133, v130);
      outlined consume of Data._Representation(v134, v132);

      v74 = v131;
      goto LABEL_16;
    }
  }

LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t closure #1 in InferenceRequestInstrumentation.start()(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary42GenerativeFunctionsInstrumentationMetadataOSgMd, &_s27IntelligencePlatformLibrary42GenerativeFunctionsInstrumentationMetadataOSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = (&v17 - v3);
  v5 = type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers();
  MEMORY[0x1EEE9AC00](v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary39GenerativeFunctionsInstrumentationEventV7SubtypeOSgMd, &_s27IntelligencePlatformLibrary39GenerativeFunctionsInstrumentationEventV7SubtypeOSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v17 - v7;

  GenerativeFunctionsInstrumentationEvent.eventType.setter();
  v9 = *MEMORY[0x1E69AA418];
  v10 = type metadata accessor for GenerativeFunctionsInstrumentationEvent.Subtype();
  v11 = *(v10 - 8);
  (*(v11 + 104))(v8, v9, v10);
  (*(v11 + 56))(v8, 0, 1, v10);
  GenerativeFunctionsInstrumentationEvent.subtype.setter();
  static Buildable.with(_:)();
  GenerativeFunctionsInstrumentationEvent.identifiers.setter();
  type metadata accessor for GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest();
  v12 = swift_allocBox();
  static Buildable.with(_:)();
  *v4 = v12;
  v13 = *MEMORY[0x1E69AA5C8];
  v14 = type metadata accessor for GenerativeFunctionsInstrumentationMetadata();
  v15 = *(v14 - 8);
  (*(v15 + 104))(v4, v13, v14);
  (*(v15 + 56))(v4, 0, 1, v14);
  return GenerativeFunctionsInstrumentationEvent.metadata.setter();
}

uint64_t closure #1 in closure #1 in InferenceRequestInstrumentation.start()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  InferenceProviderRequestConfiguration.requestUUID.getter();
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 56);
  v4(v2, 0, 1, v3);
  GenerativeFunctionsInstrumentationEvent.Identifiers.modelManagerRequestIdentifier.setter();
  InferenceProviderRequestConfiguration.sessionUUID.getter();
  v4(v2, 0, 1, v3);
  GenerativeFunctionsInstrumentationEvent.Identifiers.modelManagerSessionIdentifier.setter();
  InferenceProviderRequestConfiguration.useCaseIdentifier.getter();
  return GenerativeFunctionsInstrumentationEvent.Identifiers.useCaseIdentifier.setter();
}

uint64_t closure #2 in closure #1 in InferenceRequestInstrumentation.start()(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary42GenerativeFunctionsInstrumentationMetadataO17TGIExecuteRequestV0I4TypeOSgMd, &_s27IntelligencePlatformLibrary42GenerativeFunctionsInstrumentationMetadataO17TGIExecuteRequestV0I4TypeOSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - v4;
  v6 = OBJC_IVAR____TtC15TokenGeneration31InferenceRequestInstrumentation_requestType;
  v7 = type metadata accessor for GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.RequestType();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v5, a2 + v6, v7);
  (*(v8 + 56))(v5, 0, 1, v7);
  return MEMORY[0x1AC5A44D0](v5);
}

void InferenceRequestInstrumentation.reportModelInformation(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary39GenerativeFunctionsInstrumentationEventVSgMd, &_s27IntelligencePlatformLibrary39GenerativeFunctionsInstrumentationEventVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v24 - v10;
  v12 = *a1;
  if (*(*a1 + 16))
  {
    v13 = v12[3];
    v26[0] = v12[2];
    v26[1] = v13;
    v26[2] = v12[4];
    MEMORY[0x1EEE9AC00](v9);
    v24[-2] = v2;
    v24[-1] = v26;
    outlined init with copy of ModelInformation.Asset(v26, v25);
    EventReporter.send(eventBuiltWithPresetsAnd:)();
    outlined destroy of ModelInformation.Asset(v26);
    v22 = type metadata accessor for GenerativeFunctionsInstrumentationEvent();
    (*(*(v22 - 8) + 56))(v11, 0, 1, v22);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v11, &_s27IntelligencePlatformLibrary39GenerativeFunctionsInstrumentationEventVSgMd, &_s27IntelligencePlatformLibrary39GenerativeFunctionsInstrumentationEventVSgMR);
  }

  else
  {
    if (one-time initialization token for inference != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Log.inference);

    v24[0] = Logger.logObject.getter();
    v15 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v24[0], v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *&v26[0] = v17;
      *v16 = 136315138;
      InferenceProviderRequestConfiguration.requestUUID.getter();
      lazy protocol witness table accessor for type UUID and conformance UUID();
      v18 = dispatch thunk of CustomStringConvertible.description.getter();
      v20 = v19;
      (*(v5 + 8))(v7, v4);
      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, v26);

      *(v16 + 4) = v21;
      _os_log_impl(&dword_1AB828000, v24[0], v15, "No model information found for request %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x1AC5A6CD0](v17, -1, -1);
      MEMORY[0x1AC5A6CD0](v16, -1, -1);
    }

    else
    {
      v23 = v24[0];
    }
  }
}

uint64_t closure #1 in InferenceRequestInstrumentation.reportModelInformation(_:)(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers();
  MEMORY[0x1EEE9AC00](v4);

  MEMORY[0x1AC5A5BC0](0x6E496C65646F6D2ELL, 0xEA00000000006F66);
  GenerativeFunctionsInstrumentationEvent.eventType.setter();
  static Buildable.with(_:)();
  return GenerativeFunctionsInstrumentationEvent.identifiers.setter();
}

uint64_t closure #1 in closure #1 in InferenceRequestInstrumentation.reportModelInformation(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary39GenerativeFunctionsInstrumentationEventV35CatalogResourceIdentifierAndVersionVSgMd, &_s27IntelligencePlatformLibrary39GenerativeFunctionsInstrumentationEventV35CatalogResourceIdentifierAndVersionVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v13[-v8];
  InferenceProviderRequestConfiguration.requestUUID.getter();
  v10 = type metadata accessor for UUID();
  (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  GenerativeFunctionsInstrumentationEvent.Identifiers.modelManagerRequestIdentifier.setter();
  v11 = type metadata accessor for GenerativeFunctionsInstrumentationEvent.CatalogResourceIdentifierAndVersion();
  v14 = a3;
  static Buildable.with(_:)();
  (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  return GenerativeFunctionsInstrumentationEvent.Identifiers.catalogResourceIdentifier.setter();
}

uint64_t closure #1 in closure #1 in closure #1 in InferenceRequestInstrumentation.reportModelInformation(_:)(uint64_t a1, uint64_t *a2)
{

  result = GenerativeFunctionsInstrumentationEvent.CatalogResourceIdentifierAndVersion.identifier.setter();
  if (a2[3])
  {

    return GenerativeFunctionsInstrumentationEvent.CatalogResourceIdentifierAndVersion.version.setter();
  }

  return result;
}

uint64_t InferenceRequestInstrumentation.handlePromptCompletionEvent(_:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary39GenerativeFunctionsInstrumentationEventVSgMd, &_s27IntelligencePlatformLibrary39GenerativeFunctionsInstrumentationEventVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v33[-1] - v4;
  outlined init with copy of PromptCompletionEvent(a1, v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration21PromptCompletionEvent_pMd, &_s15TokenGeneration21PromptCompletionEvent_pMR);
  if (swift_dynamicCast())
  {
    v33[0] = v34;
    v33[1] = v35;
    v33[2] = v36;

    InferenceRequestInstrumentation.reportModelInformation(_:)(v33);

    return __swift_destroy_boxed_opaque_existential_0(v41);
  }

  result = swift_dynamicCast();
  if (result)
  {
    v8 = v37;
    v7 = v38;
    v9 = v39;
    v10 = v40;
    v11 = OBJC_IVAR____TtC15TokenGeneration31InferenceRequestInstrumentation_outputTokensCount;
    v12 = *(v1 + OBJC_IVAR____TtC15TokenGeneration31InferenceRequestInstrumentation_outputTokensCount);
    if (v12)
    {
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (!v13)
      {
LABEL_6:
        *(v1 + v11) = v14;
        v15 = *(*(v1 + OBJC_IVAR____TtC15TokenGeneration31InferenceRequestInstrumentation_transparency) + OBJC_IVAR____TtC15TokenGeneration28InferenceRequestTransparency_mutableState);
        MEMORY[0x1EEE9AC00](result);
        *(&v32 - 2) = v8;
        *(&v32 - 1) = v7;
        os_unfair_lock_lock(v15 + 12);
        closure #1 in InferenceRequestTransparency.record(textDelta:)partial apply(&v15[4]);
        os_unfair_lock_unlock(v15 + 12);

        outlined consume of Data?(v9, v10);
        return __swift_destroy_boxed_opaque_existential_0(v41);
      }
    }

    else
    {
      v32 = v1;
      EventReporter.send(eventBuiltWithPresetsAnd:)();
      v30 = type metadata accessor for GenerativeFunctionsInstrumentationEvent();
      (*(*(v30 - 8) + 56))(v5, 0, 1, v30);
      result = outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v5, &_s27IntelligencePlatformLibrary39GenerativeFunctionsInstrumentationEventVSgMd, &_s27IntelligencePlatformLibrary39GenerativeFunctionsInstrumentationEventVSgMR);
      v1 = v32;
      v31 = *(v32 + v11);
      v13 = __OFADD__(v31, 1);
      v14 = v31 + 1;
      if (!v13)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

  if (swift_dynamicCast())
  {
    v16 = v37;
    v17 = v38;

    result = outlined consume of Data._Representation(v16, v17);
    v18 = *(v1 + OBJC_IVAR____TtC15TokenGeneration31InferenceRequestInstrumentation_outputImagesCount);
    v13 = __OFADD__(v18, 1);
    v19 = v18 + 1;
    if (v13)
    {
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    *(v1 + OBJC_IVAR____TtC15TokenGeneration31InferenceRequestInstrumentation_outputImagesCount) = v19;
    v20 = *(*(v1 + OBJC_IVAR____TtC15TokenGeneration31InferenceRequestInstrumentation_transparency) + OBJC_IVAR____TtC15TokenGeneration28InferenceRequestTransparency_mutableState);
    MEMORY[0x1EEE9AC00](result);
    *(&v32 - 2) = 0x3E6567616D693CLL;
    *(&v32 - 1) = 0xE700000000000000;
    os_unfair_lock_lock(v20 + 12);
    closure #1 in InferenceRequestTransparency.record(textDelta:)partial apply(&v20[4]);
LABEL_13:
    os_unfair_lock_unlock(v20 + 12);
    return __swift_destroy_boxed_opaque_existential_0(v41);
  }

  if (!swift_dynamicCast())
  {
    if (swift_dynamicCast())
    {
      v25 = v36;
      v26 = v37;
      v27 = v38;
      v28 = v39;

      outlined consume of FinishReason(v25, v26);
      outlined consume of Data._Representation(v27, v28);
      v29 = *(*(v1 + OBJC_IVAR____TtC15TokenGeneration31InferenceRequestInstrumentation_transparency) + OBJC_IVAR____TtC15TokenGeneration28InferenceRequestTransparency_mutableState);
      os_unfair_lock_lock((v29 + 48));
      partial apply for closure #1 in InferenceRequestTransparency.submit()((v29 + 16));
      os_unfair_lock_unlock((v29 + 48));
    }

    return __swift_destroy_boxed_opaque_existential_0(v41);
  }

  v21 = v37;
  v22 = v38;

  result = outlined consume of Data._Representation(v21, v22);
  v23 = *(v1 + OBJC_IVAR____TtC15TokenGeneration31InferenceRequestInstrumentation_outputAudioSegmentCount);
  v13 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (!v13)
  {
    *(v1 + OBJC_IVAR____TtC15TokenGeneration31InferenceRequestInstrumentation_outputAudioSegmentCount) = v24;
    v20 = *(*(v1 + OBJC_IVAR____TtC15TokenGeneration31InferenceRequestInstrumentation_transparency) + OBJC_IVAR____TtC15TokenGeneration28InferenceRequestTransparency_mutableState);
    MEMORY[0x1EEE9AC00](result);
    *(&v32 - 2) = 0x3E6F696475613CLL;
    *(&v32 - 1) = 0xE700000000000000;
    os_unfair_lock_lock(v20 + 12);
    partial apply for closure #1 in InferenceRequestTransparency.record(textDelta:)(&v20[4]);
    goto LABEL_13;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t closure #1 in InferenceRequestInstrumentation.handlePromptCompletionEvent(_:)(__n128 a1, uint64_t a2, uint64_t a3)
{
  v3 = type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers();
  MEMORY[0x1EEE9AC00](v3);

  MEMORY[0x1AC5A5BC0](0x6F5474737269662ELL, 0xEB000000006E656BLL);
  GenerativeFunctionsInstrumentationEvent.eventType.setter();
  static Buildable.with(_:)();
  return GenerativeFunctionsInstrumentationEvent.identifiers.setter();
}

void closure #1 in InferenceRequestInstrumentation.end(error:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary39GenerativeFunctionsInstrumentationErrorOSgMd, &_s27IntelligencePlatformLibrary39GenerativeFunctionsInstrumentationErrorOSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (v25 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary42GenerativeFunctionsInstrumentationMetadataOSgMd, &_s27IntelligencePlatformLibrary42GenerativeFunctionsInstrumentationMetadataOSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = (v25 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary39GenerativeFunctionsInstrumentationEventV7SubtypeOSgMd, &_s27IntelligencePlatformLibrary39GenerativeFunctionsInstrumentationEventV7SubtypeOSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v25 - v11;
  v13 = type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers();
  MEMORY[0x1EEE9AC00](v13);

  GenerativeFunctionsInstrumentationEvent.eventType.setter();
  static Buildable.with(_:)();
  GenerativeFunctionsInstrumentationEvent.identifiers.setter();
  if (a3)
  {
    v14 = *MEMORY[0x1E69AA408];
    v15 = type metadata accessor for GenerativeFunctionsInstrumentationEvent.Subtype();
    v16 = *(v15 - 8);
    (*(v16 + 104))(v12, v14, v15);
    (*(v16 + 56))(v12, 0, 1, v15);
    MEMORY[0x1AC5A6AE0](a3);
    GenerativeFunctionsInstrumentationEvent.subtype.setter();
    swift_getErrorValue();
    Error.telemetryValue.getter(v25[2], v25[3], v6);
    v17 = type metadata accessor for GenerativeFunctionsInstrumentationError();
    (*(*(v17 - 8) + 56))(v6, 0, 1, v17);
    GenerativeFunctionsInstrumentationEvent.error.setter();
  }

  else
  {
    v18 = *MEMORY[0x1E69AA400];
    v19 = type metadata accessor for GenerativeFunctionsInstrumentationEvent.Subtype();
    v20 = *(v19 - 8);
    (*(v20 + 104))(v12, v18, v19);
    (*(v20 + 56))(v12, 0, 1, v19);
    GenerativeFunctionsInstrumentationEvent.subtype.setter();
    type metadata accessor for GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest();
    v21 = swift_allocBox();
    static Buildable.with(_:)();
    *v9 = v21;
    v22 = *MEMORY[0x1E69AA5C8];
    v23 = type metadata accessor for GenerativeFunctionsInstrumentationMetadata();
    v24 = *(v23 - 8);
    (*(v24 + 104))(v9, v22, v23);
    (*(v24 + 56))(v9, 0, 1, v23);
    GenerativeFunctionsInstrumentationEvent.metadata.setter();
  }
}

uint64_t closure #1 in closure #1 in InferenceRequestInstrumentation.handlePromptCompletionEvent(_:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v5 - v1;
  InferenceProviderRequestConfiguration.requestUUID.getter();
  v3 = type metadata accessor for UUID();
  (*(*(v3 - 8) + 56))(v2, 0, 1, v3);
  return GenerativeFunctionsInstrumentationEvent.Identifiers.modelManagerRequestIdentifier.setter();
}

uint64_t Error.telemetryValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v82 = a2;
  v83 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20ModelManagerServices14InferenceErrorO7ContextVSgMd, &_s20ModelManagerServices14InferenceErrorO7ContextVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v73 - v7;
  v9 = type metadata accessor for InferenceError.Context();
  v78 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v77 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20ModelManagerServices14InferenceErrorOSgMd, &_s20ModelManagerServices14InferenceErrorOSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v73 - v12;
  v14 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v79 = &v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v73 - v18;
  v20 = type metadata accessor for InferenceError();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v73 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = v14;
  v81 = v4;
  v25 = v4;
  v26 = *(v14 + 16);
  v26(v19, v25, a1, v22);
  v27 = v21;
  v28 = swift_dynamicCast();
  v29 = *(v21 + 56);
  if ((v28 & 1) == 0)
  {
    v29(v13, 1, 1, v20);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v13, &_s20ModelManagerServices14InferenceErrorOSgMd, &_s20ModelManagerServices14InferenceErrorOSgMR);
    goto LABEL_5;
  }

  v29(v13, 0, 1, v20);
  (*(v21 + 32))(v24, v13, v20);
  InferenceError.context.getter();
  v30 = v78;
  v31 = v27;
  if ((*(v78 + 48))(v8, 1, v9) != 1)
  {
    v42 = v9;
    v74 = v20;
    v75 = v24;
    v76 = v31;
    v43 = v30;
    v44 = v77;
    (*(v30 + 32))(v77, v8, v42);
    v45 = InferenceError.Context.userInfo.getter();
    if (*(v45 + 16))
    {
      v46 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000015, 0x80000001ABA41210);
      if (v47)
      {
        v48 = (*(v45 + 56) + 16 * v46);
        v50 = *v48;
        v49 = v48[1];

        v51 = InferenceError.Context.userInfo.getter();
        if (*(v51 + 16))
        {
          v52 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000013, 0x80000001ABA41230);
          if (v53)
          {
            v54 = (*(v51 + 56) + 16 * v52);
            v55 = v44;
            v56 = v42;
            v57 = *v54;
            v58 = v54[1];

            type metadata accessor for GenerativeFunctionsInstrumentationError.GenericError();
            v59 = swift_allocBox();
            MEMORY[0x1EEE9AC00](v59);
            v60 = v50;
            v61 = v75;
            *(&v73 - 6) = v75;
            *(&v73 - 5) = v60;
            *(&v73 - 4) = v49;
            *(&v73 - 3) = v57;
            *(&v73 - 2) = v58;
            static Buildable.with(_:)();

            v62 = v83;
            *v83 = v59;
            v63 = *MEMORY[0x1E69AA3C8];
            v64 = type metadata accessor for GenerativeFunctionsInstrumentationError();
            (*(*(v64 - 8) + 104))(v62, v63, v64);
            (*(v43 + 8))(v55, v56);
            return (*(v76 + 8))(v61, v74);
          }
        }
      }
    }

    v65 = InferenceError.Context.domain.getter();
    v67 = v66;

    v68 = HIBYTE(v67) & 0xF;
    if ((v67 & 0x2000000000000000) == 0)
    {
      v68 = v65 & 0xFFFFFFFFFFFFLL;
    }

    if (!v68)
    {
      (*(v30 + 8))(v44, v42);
      (*(v76 + 8))(v75, v74);
      goto LABEL_5;
    }

    type metadata accessor for GenerativeFunctionsInstrumentationError.GenericError();
    v69 = swift_allocBox();
    MEMORY[0x1EEE9AC00](v69);
    v61 = v75;
    *(&v73 - 2) = v75;
    *(&v73 - 1) = v44;
    static Buildable.with(_:)();
    v70 = v83;
    *v83 = v69;
    v71 = *MEMORY[0x1E69AA3C8];
    v72 = type metadata accessor for GenerativeFunctionsInstrumentationError();
    (*(*(v72 - 8) + 104))(v70, v71, v72);
    (*(v30 + 8))(v44, v42);
    return (*(v76 + 8))(v61, v74);
  }

  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v8, &_s20ModelManagerServices14InferenceErrorO7ContextVSgMd, &_s20ModelManagerServices14InferenceErrorO7ContextVSgMR);
  (*(v27 + 8))(v24, v20);
LABEL_5:
  v32 = v79;
  (v26)(v79, v81, a1);
  v33 = _getErrorEmbeddedNSError<A>(_:)();
  if (v33)
  {
    v34 = v33;
    (*(v80 + 8))(v32, a1);
  }

  else
  {
    v34 = swift_allocError();
    (*(v80 + 32))(v35, v32, a1);
  }

  v36 = _convertErrorToNSError(_:)();

  type metadata accessor for GenerativeFunctionsInstrumentationError.GenericError();
  v37 = swift_allocBox();
  MEMORY[0x1EEE9AC00](v37);
  *(&v73 - 2) = v36;
  static Buildable.with(_:)();

  v38 = v83;
  *v83 = v37;
  v39 = *MEMORY[0x1E69AA3C8];
  v40 = type metadata accessor for GenerativeFunctionsInstrumentationError();
  return (*(*(v40 - 8) + 104))(v38, v39, v40);
}

uint64_t InferenceRequestInstrumentation.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC15TokenGeneration31InferenceRequestInstrumentation_configuration;
  v2 = type metadata accessor for InferenceProviderRequestConfiguration();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC15TokenGeneration31InferenceRequestInstrumentation_requestType;
  v4 = type metadata accessor for GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.RequestType();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata completion function for InferenceRequestInstrumentation(uint64_t a1)
{
  result = type metadata accessor for InferenceProviderRequestConfiguration();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for GenerativeFunctionsInstrumentationMetadata.TGIExecuteRequest.RequestType();
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

void type metadata completion function for InstrumentedStream(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    type metadata accessor for ()();
    if (v2 <= 0x3F)
    {
      type metadata accessor for (())?(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for InstrumentedStream(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_BYTE *storeEnumTagSinglePayload for InstrumentedStream(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
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
      if (v6 < 0x7FFFFFFF)
      {
        v19 = (&result[v8 + 7] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v19 = a2 & 0x7FFFFFFF;
          v19[1] = 0;
        }

        else
        {
          *v19 = a2 - 1;
        }
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

unint64_t type metadata accessor for ()()
{
  result = lazy cache variable for type metadata for ();
  if (!lazy cache variable for type metadata for ())
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &lazy cache variable for type metadata for ());
  }

  return result;
}

void type metadata accessor for (())?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (())?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_syycMd, &_syycMR);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for (())?);
    }
  }
}

uint64_t type metadata completion function for InferenceRequest(uint64_t a1, __n128 a2)
{
  result = type metadata accessor for StreamingRequest(319);
  if (v3 <= 0x3F)
  {
    result = type metadata accessor for OneShotRequest(319);
    if (v4 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

unsigned __int8 *closure #1 in Error.telemetryValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  _StringGuts.grow(_:)(20);

  v38 = 0x636E657265666E49;
  v39 = 0xEF2E726F72724565;
  v10 = InferenceError.caseName.getter();
  MEMORY[0x1AC5A5BC0](v10);

  MEMORY[0x1AC5A5BC0](46, 0xE100000000000000);
  MEMORY[0x1AC5A5BC0](a3, a4);
  result = GenerativeFunctionsInstrumentationError.GenericError.domain.setter();
  v12 = HIBYTE(a6) & 0xF;
  v13 = a5 & 0xFFFFFFFFFFFFLL;
  if ((a6 & 0x2000000000000000) != 0)
  {
    v14 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v14 = a5 & 0xFFFFFFFFFFFFLL;
  }

  if (!v14)
  {
    v35 = 0;
    v34 = 1;
    return MEMORY[0x1AC5A4390](v35, v34 & 1);
  }

  if ((a6 & 0x1000000000000000) != 0)
  {

    v16 = specialized _parseInteger<A, B>(ascii:radix:)(a5, a6, 10, v36);
    v34 = v37;

LABEL_63:
    if (v34)
    {
      v35 = 0;
    }

    else
    {
      v35 = v16;
    }

    return MEMORY[0x1AC5A4390](v35, v34 & 1);
  }

  if ((a6 & 0x2000000000000000) == 0)
  {
    if ((a5 & 0x1000000000000000) != 0)
    {
      result = ((a6 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
    }

    v15 = *result;
    if (v15 == 43)
    {
      if (v13 >= 1)
      {
        v12 = v13 - 1;
        if (v13 != 1)
        {
          v16 = 0;
          if (result)
          {
            v23 = result + 1;
            while (1)
            {
              v24 = *v23 - 48;
              if (v24 > 9)
              {
                goto LABEL_61;
              }

              v25 = 10 * v16;
              if ((v16 * 10) >> 64 != (10 * v16) >> 63)
              {
                goto LABEL_61;
              }

              v16 = v25 + v24;
              if (__OFADD__(v25, v24))
              {
                goto LABEL_61;
              }

              ++v23;
              if (!--v12)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_53;
        }

        goto LABEL_61;
      }

      goto LABEL_72;
    }

    if (v15 != 45)
    {
      if (v13)
      {
        v16 = 0;
        if (result)
        {
          while (1)
          {
            v29 = *result - 48;
            if (v29 > 9)
            {
              goto LABEL_61;
            }

            v30 = 10 * v16;
            if ((v16 * 10) >> 64 != (10 * v16) >> 63)
            {
              goto LABEL_61;
            }

            v16 = v30 + v29;
            if (__OFADD__(v30, v29))
            {
              goto LABEL_61;
            }

            ++result;
            if (!--v13)
            {
              goto LABEL_53;
            }
          }
        }

        goto LABEL_53;
      }

LABEL_61:
      v16 = 0;
      LOBYTE(v12) = 1;
      goto LABEL_62;
    }

    if (v13 >= 1)
    {
      v12 = v13 - 1;
      if (v13 != 1)
      {
        v16 = 0;
        if (result)
        {
          v17 = result + 1;
          while (1)
          {
            v18 = *v17 - 48;
            if (v18 > 9)
            {
              goto LABEL_61;
            }

            v19 = 10 * v16;
            if ((v16 * 10) >> 64 != (10 * v16) >> 63)
            {
              goto LABEL_61;
            }

            v16 = v19 - v18;
            if (__OFSUB__(v19, v18))
            {
              goto LABEL_61;
            }

            ++v17;
            if (!--v12)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_53:
        LOBYTE(v12) = 0;
LABEL_62:
        v34 = v12;
        goto LABEL_63;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v38 = a5;
  v39 = a6 & 0xFFFFFFFFFFFFFFLL;
  if (a5 != 43)
  {
    if (a5 != 45)
    {
      if (v12)
      {
        v16 = 0;
        v31 = &v38;
        while (1)
        {
          v32 = *v31 - 48;
          if (v32 > 9)
          {
            break;
          }

          v33 = 10 * v16;
          if ((v16 * 10) >> 64 != (10 * v16) >> 63)
          {
            break;
          }

          v16 = v33 + v32;
          if (__OFADD__(v33, v32))
          {
            break;
          }

          v31 = (v31 + 1);
          if (!--v12)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    if (v12)
    {
      if (--v12)
      {
        v16 = 0;
        v20 = &v38 + 1;
        while (1)
        {
          v21 = *v20 - 48;
          if (v21 > 9)
          {
            break;
          }

          v22 = 10 * v16;
          if ((v16 * 10) >> 64 != (10 * v16) >> 63)
          {
            break;
          }

          v16 = v22 - v21;
          if (__OFSUB__(v22, v21))
          {
            break;
          }

          ++v20;
          if (!--v12)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_71;
  }

  if (v12)
  {
    if (--v12)
    {
      v16 = 0;
      v26 = &v38 + 1;
      while (1)
      {
        v27 = *v26 - 48;
        if (v27 > 9)
        {
          break;
        }

        v28 = 10 * v16;
        if ((v16 * 10) >> 64 != (10 * v16) >> 63)
        {
          break;
        }

        v16 = v28 + v27;
        if (__OFADD__(v28, v27))
        {
          break;
        }

        ++v26;
        if (!--v12)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_73:
  __break(1u);
  return result;
}

uint64_t closure #2 in Error.telemetryValue.getter()
{
  _StringGuts.grow(_:)(20);

  v0 = InferenceError.caseName.getter();
  MEMORY[0x1AC5A5BC0](v0);

  MEMORY[0x1AC5A5BC0](46, 0xE100000000000000);
  v1 = InferenceError.Context.domain.getter();
  MEMORY[0x1AC5A5BC0](v1);

  GenerativeFunctionsInstrumentationError.GenericError.domain.setter();
  v2 = InferenceError.Context.code.getter();
  return MEMORY[0x1AC5A4390](v2, 0);
}

uint64_t closure #3 in Error.telemetryValue.getter(int a1, id a2)
{
  v3 = [a2 domain];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  GenerativeFunctionsInstrumentationError.GenericError.domain.setter();
  return MEMORY[0x1AC5A4390]([a2 code], 0);
}

Swift::String __swiftcall OneShotRequest.eventTypeSuffix()()
{
  v1 = type metadata accessor for OneShotRequest(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PromptCompletion.Segment(v0, v3, type metadata accessor for OneShotRequest);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload <= 5)
    {
      if (EnumCaseMultiPayload != 4)
      {
        outlined destroy of PromptCompletion(v3, type metadata accessor for OneShotRequest);
        v7 = 0xD000000000000016;
        v6 = 0x80000001ABA412D0;
        goto LABEL_20;
      }

      v5 = "completePromptTemplate";
LABEL_13:
      v8 = (v5 - 32) | 0x8000000000000000;
      outlined destroy of PromptCompletion(v3, type metadata accessor for OneShotRequest);
      v6 = v8;
      v7 = 0xD000000000000016;
      goto LABEL_20;
    }

    if (EnumCaseMultiPayload != 6)
    {
      if (EnumCaseMultiPayload != 7)
      {
        outlined destroy of PromptCompletion(v3, type metadata accessor for OneShotRequest);
        v6 = 0xEE00726574706164;
        v7 = 0x41656C69706D6F63;
        goto LABEL_20;
      }

      v5 = "classifyPromptTemplate";
      goto LABEL_13;
    }

    outlined destroy of PromptCompletion(v3, type metadata accessor for OneShotRequest);
    v7 = 0x7966697373616C63;
LABEL_17:
    v6 = 0xEE0074706D6F7250;
    goto LABEL_20;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      outlined destroy of PromptCompletion(v3, type metadata accessor for OneShotRequest);
      v7 = 0x6574656C706D6F63;
      goto LABEL_17;
    }

    outlined destroy of PromptCompletion(v3, type metadata accessor for OneShotRequest);
    v6 = 0x80000001ABA412F0;
    v7 = 0xD000000000000019;
  }

  else if (EnumCaseMultiPayload)
  {
    outlined destroy of PromptCompletion(v3, type metadata accessor for OneShotRequest);
    v6 = 0xEB00000000736E65;
    v7 = 0x6B6F54746E756F63;
  }

  else
  {
    outlined destroy of PromptCompletion(v3, type metadata accessor for OneShotRequest);
    v6 = 0x80000001ABA41310;
    v7 = 0xD000000000000012;
  }

LABEL_20:
  result._object = v6;
  result._countAndFlagsBits = v7;
  return result;
}

uint64_t closure #1 in InstrumentedStream.init<>(using:on:)()
{
  PromptCompletionStreamElementEnvelope.Envelope.unseal()(v1);
  InferenceRequestInstrumentation.handlePromptCompletionEvent(_:)(v1);
  return __swift_destroy_boxed_opaque_existential_0(v1);
}

uint64_t InstrumentedStream.makeAsyncIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(a1 + 16);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness - 8);
  v15 = &v22 - v14;
  (*(v7 + 16))(v9, v3, v6, v13);
  v16 = dispatch thunk of AsyncSequence.makeAsyncIterator()();
  v17 = (*(v3 + *(a1 + 36)))(v16);
  v18 = (v3 + *(a1 + 40));
  v19 = *v18;
  v20 = v18[1];
  InstrumentedStream.AsyncIterator.init(wrapped:instrumentation:handleElement:isStarted:)(v15, v17, *v18, v20, 0, v6, v11, a2);
  return _s15TokenGeneration31InferenceRequestInstrumentationCxRi_zRi0_zly7ElementQzIseghgn_Sgs8SendableRzSciRzlWOy(v19, v20);
}

int *InstrumentedStream.AsyncIterator.init(wrapped:instrumentation:handleElement:isStarted:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a8, a1, AssociatedTypeWitness);
  result = type metadata accessor for InstrumentedStream.AsyncIterator(0, a6, a7, v17);
  *(a8 + result[9]) = a2;
  v19 = (a8 + result[10]);
  *v19 = a3;
  v19[1] = a4;
  *(a8 + result[11]) = a5;
  return result;
}

uint64_t InstrumentedStream.AsyncIterator.next()(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *(a2 + 24);
  v3[6] = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3[7] = AssociatedTypeWitness;
  v5 = type metadata accessor for Optional();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v3[11] = *(AssociatedTypeWitness - 8);
  v3[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary39GenerativeFunctionsInstrumentationEventVSgMd, &_s27IntelligencePlatformLibrary39GenerativeFunctionsInstrumentationEventVSgMR);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](InstrumentedStream.AsyncIterator.next(), 0, 0);
}

uint64_t InstrumentedStream.AsyncIterator.next()()
{
  v1 = v0[4];
  v2 = *(v0[3] + 44);
  if ((*(v1 + v2) & 1) == 0)
  {
    EventReporter.send(eventBuiltWithPresetsAnd:)();
    v3 = v0[15];
    v4 = type metadata accessor for GenerativeFunctionsInstrumentationEvent();
    (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v3, &_s27IntelligencePlatformLibrary39GenerativeFunctionsInstrumentationEventVSgMd, &_s27IntelligencePlatformLibrary39GenerativeFunctionsInstrumentationEventVSgMR);
    *(v1 + v2) = 1;
  }

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = swift_task_alloc();
  v0[16] = v7;
  *v7 = v0;
  v7[1] = InstrumentedStream.AsyncIterator.next();
  v8 = v0[10];

  return MEMORY[0x1EEE6D8C8](v8, AssociatedTypeWitness, AssociatedConformanceWitness);
}

{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = InstrumentedStream.AsyncIterator.next();
  }

  else
  {
    v2 = InstrumentedStream.AsyncIterator.next();
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[7];
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    v4 = v0[17];
    v6 = v0[3];
    v5 = v0[4];
    (*(v0[9] + 8))(v1, v0[8]);
    v7 = *(v5 + *(v6 + 36));
    v8 = swift_task_alloc();
    *(v8 + 16) = v7;
    *(v8 + 24) = 0;
    EventReporter.send(eventBuiltWithPresetsAnd:)();
    if (v4)
    {

      v4 = 1;
    }

    v9 = v0[14];

    v10 = type metadata accessor for GenerativeFunctionsInstrumentationEvent();
    v11 = 1;
    (*(*(v10 - 8) + 56))(v9, v4, 1, v10);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v9, &_s27IntelligencePlatformLibrary39GenerativeFunctionsInstrumentationEventVSgMd, &_s27IntelligencePlatformLibrary39GenerativeFunctionsInstrumentationEventVSgMR);
  }

  else
  {
    v13 = v0[3];
    v12 = v0[4];
    v14 = *(v2 + 32);
    v14(v0[12], v1, v3);
    v15 = *(v12 + *(v13 + 40));
    if (v15)
    {
      v15(*(v0[4] + *(v0[3] + 36)), v0[12]);
    }

    v14(v0[2], v0[12], v0[7]);
    v11 = 0;
  }

  (*(v0[11] + 56))(v0[2], v11, 1, v0[7]);

  v16 = v0[1];

  return v16();
}

{
  v1 = *(v0 + 136);
  v2 = *(*(v0 + 32) + *(*(v0 + 24) + 36));
  v3 = swift_task_alloc();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  MEMORY[0x1AC5A6AE0](v1);
  EventReporter.send(eventBuiltWithPresetsAnd:)();
  v4 = *(v0 + 104);

  v5 = type metadata accessor for GenerativeFunctionsInstrumentationEvent();
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v4, &_s27IntelligencePlatformLibrary39GenerativeFunctionsInstrumentationEventVSgMd, &_s27IntelligencePlatformLibrary39GenerativeFunctionsInstrumentationEventVSgMR);
  swift_willThrow();

  v6 = *(v0 + 8);

  return v6();
}

uint64_t protocol witness for AsyncIteratorProtocol.next() in conformance InstrumentedStream<A>.AsyncIterator(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return InstrumentedStream.AsyncIterator.next()(a1, a2);
}

uint64_t protocol witness for AsyncSequence.makeAsyncIterator() in conformance InstrumentedStream<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  InstrumentedStream.makeAsyncIterator()(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t _s15TokenGeneration31InferenceRequestInstrumentationCxRi_zRi0_zly7ElementQzIseghgn_Sgs8SendableRzSciRzlWOy(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UUID and conformance UUID()
{
  result = lazy protocol witness table cache variable for type UUID and conformance UUID;
  if (!lazy protocol witness table cache variable for type UUID and conformance UUID)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UUID and conformance UUID);
  }

  return result;
}

uint64_t outlined destroy of PromptCompletion(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with copy of PromptCompletion.Segment(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of PromptCompletion.Content(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void type metadata completion function for InstrumentedStream.AsyncIterator(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    type metadata accessor for InferenceRequestInstrumentation(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for (())?(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for InstrumentedStream.AsyncIterator(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
    goto LABEL_28;
  }

  v10 = ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 17;
  if (v10 <= 3)
  {
    v11 = ((a2 - v8 + 255) >> 8) + 1;
  }

  else
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *&a1[v10];
      if (!*&a1[v10])
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *&a1[v10];
      if (!v14)
      {
        goto LABEL_28;
      }
    }

LABEL_24:
    v16 = (v14 - 1) << (8 * v10);
    if (v10 <= 3)
    {
      v17 = *a1;
    }

    else
    {
      v16 = 0;
      v17 = *a1;
    }

    return v8 + (v17 | v16) + 1;
  }

  if (v13)
  {
    v14 = a1[v10];
    if (a1[v10])
    {
      goto LABEL_24;
    }
  }

LABEL_28:
  if (v7 < 0x7FFFFFFF)
  {
    v19 = *(&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
    if (v19 >= 0xFFFFFFFF)
    {
      LODWORD(v19) = -1;
    }

    return (v19 + 1);
  }

  else
  {
    v18 = *(v6 + 48);

    return v18(a1);
  }
}

void storeEnumTagSinglePayload for InstrumentedStream.AsyncIterator(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 64);
  if (v8 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v7 + 84);
  }

  v11 = ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 17;
  if (v10 >= a3)
  {
    v14 = 0;
    if (v10 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (v11 <= 3)
    {
      v12 = ((a3 - v10 + 255) >> 8) + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (v10 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v11] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v11] = 0;
      }

      else if (v14)
      {
        a1[v11] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return;
      }

LABEL_32:
      if (v8 < 0x7FFFFFFF)
      {
        v18 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          v19 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v19 = (a2 - 1);
        }

        *v18 = v19;
      }

      else
      {
        v17 = *(v7 + 56);

        v17(a1, a2);
      }

      return;
    }
  }

  v15 = ~v10 + a2;
  bzero(a1, v11);
  if (v11 <= 3)
  {
    v16 = (v15 >> 8) + 1;
  }

  else
  {
    v16 = 1;
  }

  if (v11 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v11] = v16;
      }

      else
      {
        *&a1[v11] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v11] = v16;
  }
}

uint64_t static GenerativeExperiencesTransparencyLog.ExecutionEnvironment.from(inferenceRequestHandlerIdentifier:configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = type metadata accessor for GenerativeExperiencesTransparencyLog.ExecutionEnvironment();
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1 == 0xD000000000000015 && 0x80000001ABA41410 == a2 || (v20 = v8, v11 = _stringCompareWithSmolCheck(_:_:expecting:)(), v8 = v20, (v11 & 1) != 0))
  {
    v12 = *MEMORY[0x1E69AA380];
LABEL_5:
    v13 = *(v8 + 104);

    return v13(a3, v12, v7);
  }

  if ((a1 != 0xD00000000000001CLL || 0x80000001ABA41430 != a2) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    if (a1 == 0xD000000000000011 && 0x80000001ABA41450 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v18 = MEMORY[0x1E69AA378];
    }

    else
    {
      *a3 = 0;
      v18 = MEMORY[0x1E69AA390];
    }

    v12 = *v18;
    v8 = v20;
    goto LABEL_5;
  }

  v23 = InferenceProviderRequestConfiguration.assetBundleIdentifier.getter();
  v24 = v15;
  v21 = 0x74706774616863;
  v22 = 0xE700000000000000;
  lazy protocol witness table accessor for type String and conformance String();
  v16 = StringProtocol.contains<A>(_:)();

  if (v16)
  {
    v17 = MEMORY[0x1E69AA388];
  }

  else
  {
    *v10 = 6;
    v17 = MEMORY[0x1E69AA390];
  }

  (*(v20 + 104))(v10, *v17, v7);
  return (*(v20 + 32))(a3, v10, v7);
}

uint64_t closure #1 in InferenceRequestTransparency.record(prompt:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptVSgMd, &_s15TokenGeneration6PromptVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - v6;
  outlined init with copy of Prompt?(a2, &v14 - v6);
  v8 = type metadata accessor for Prompt();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of Prompt?(v7);
    v10 = 0;
    v11 = 0;
  }

  else
  {
    v10 = Prompt.transparencyDescription.getter();
    v11 = v12;
    (*(v9 + 8))(v7, v8);
  }

  type metadata accessor for TransparencyReport();
  swift_allocObject();
  TransparencyReport.init()();
  TransparencyReport.logEvent(configuration:prompt:response:executionEnvironment:)();

  *a1 = v10;
  a1[1] = v11;

  a1[2] = 0;
  a1[3] = 0;
  return result;
}

uint64_t Prompt.transparencyDescription.getter()
{
  v0 = type metadata accessor for Prompt.Turn.Segment();
  v95 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v2 = (&v69 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v69 - v4;
  v91 = type metadata accessor for Prompt.Turn.Role();
  v6 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v90 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v89 = &v69 - v9;
  v84 = type metadata accessor for Prompt.Turn();
  v10 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v79 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v88 = &v69 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v69 - v15;
  v17 = Prompt.turns()();
  v18 = *(v17 + 16);
  v94 = v5;
  v80 = v10;
  v87 = v18;
  if (v18)
  {
    v19 = 0;
    v85 = v10 + 16;
    v83 = *MEMORY[0x1E69DA7B0];
    v82 = (v6 + 104);
    v78 = v6 + 8;
    v75 = (v10 + 8);
    v77 = (v10 + 32);
    v81 = MEMORY[0x1E69E7CC0];
    v20 = v84;
    v86 = v17;
    v76 = v16;
    v21 = v89;
    v22 = v90;
    while (v19 < *(v17 + 16))
    {
      v93 = (*(v80 + 80) + 32) & ~*(v80 + 80);
      v92 = *(v80 + 72);
      (*(v80 + 16))(v16, v17 + v93 + v92 * v19, v20);
      Prompt.Turn.role.getter();
      v23 = v91;
      (*v82)(v22, v83, v91);
      v24 = static Prompt.Turn.Role.== infix(_:_:)();
      v25 = *v78;
      (*v78)(v22, v23);
      v25(v21, v23);
      if (v24)
      {
        v26 = *v77;
        v27 = v76;
        v28 = v84;
        (*v77)(v88, v76, v84);
        v29 = v81;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v31 = v29;
        v97 = v29;
        v20 = v28;
        v16 = v27;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v31 + 16) + 1, 1);
          v20 = v84;
          v31 = v97;
        }

        v33 = *(v31 + 16);
        v32 = *(v31 + 24);
        if (v33 >= v32 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1);
          v20 = v84;
          v31 = v97;
        }

        *(v31 + 16) = v33 + 1;
        v81 = v31;
        v26((v31 + v93 + v33 * v92), v88, v20);
        v5 = v94;
      }

      else
      {
        v16 = v76;
        v20 = v84;
        (*v75)(v76, v84);
      }

      ++v19;
      v17 = v86;
      if (v87 == v19)
      {
        goto LABEL_13;
      }
    }

LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v81 = MEMORY[0x1E69E7CC0];
LABEL_13:

  v34 = *(v81 + 16);
  if (v34)
  {
    v35 = v81;
    v97 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v34, 0);
    v36 = v84;
    v37 = 0;
    v38 = v80;
    v73 = v35 + ((*(v38 + 80) + 32) & ~*(v38 + 80));
    v72 = v80 + 16;
    v89 = (v95 + 88);
    v90 = (v95 + 16);
    v39 = v97;
    v76 = 0x80000001ABA413B0;
    LODWORD(v88) = *MEMORY[0x1E69DA7E8];
    LODWORD(v87) = *MEMORY[0x1E69DA7F0];
    LODWORD(v85) = *MEMORY[0x1E69DA7D0];
    v83 = *MEMORY[0x1E69DA7D8];
    v40 = (v95 + 8);
    v75 = 0x80000001ABA413D0;
    v74 = *MEMORY[0x1E69DA7E0];
    v82 = 0x80000001ABA413F0;
    v86 = (v95 + 96);
    v70 = (v80 + 8);
    v71 = v34;
    while (v37 < *(v81 + 16))
    {
      v77 = v37;
      v78 = v39;
      (*(v38 + 16))(v79, v73 + *(v38 + 72) * v37, v36);
      v41 = Prompt.Turn.segments.getter();
      v42 = *(v41 + 16);
      if (v42)
      {
        v96 = MEMORY[0x1E69E7CC0];
        v43 = v41;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v42, 0);
        v44 = v43;
        v45 = 0;
        v46 = v96;
        v91 = v44 + ((*(v95 + 80) + 32) & ~*(v95 + 80));
        v92 = v42;
        v93 = v44;
        while (v45 < *(v44 + 16))
        {
          v47 = v95;
          v48 = *(v95 + 16);
          v48(v5, v91 + *(v95 + 72) * v45, v0);
          v48(v2, v5, v0);
          v49 = (*(v47 + 88))(v2, v0);
          if (v49 == v88)
          {
            (*v40)(v5, v0);
            (*v86)(v2, v0);
            v51 = *v2;
            v50 = v2[1];
          }

          else if (v49 == v87)
          {
            v52 = *v40;
            (*v40)(v5, v0);
            v52(v2, v0);
            v50 = 0xE700000000000000;
            v51 = 0x3E6567616D693CLL;
          }

          else if (v49 == v85)
          {
            v53 = *v40;
            (*v40)(v5, v0);
            v53(v2, v0);
            v51 = 0xD000000000000014;
            v50 = v82;
          }

          else
          {
            if (v49 == v83)
            {
              v54 = *v40;
              (*v40)(v5, v0);
              v54(v2, v0);
              v51 = 0xD000000000000011;
              v55 = &v98;
            }

            else
            {
              if (v49 != v74)
              {
                goto LABEL_44;
              }

              v56 = *v40;
              (*v40)(v5, v0);
              v56(v2, v0);
              v51 = 0xD000000000000014;
              v55 = &v99;
            }

            v50 = *(v55 - 32);
          }

          v96 = v46;
          v58 = *(v46 + 16);
          v57 = *(v46 + 24);
          if (v58 >= v57 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v57 > 1), v58 + 1, 1);
            v46 = v96;
          }

          ++v45;
          *(v46 + 16) = v58 + 1;
          v59 = v46 + 16 * v58;
          *(v59 + 32) = v51;
          *(v59 + 40) = v50;
          v44 = v93;
          v5 = v94;
          if (v92 == v45)
          {

            goto LABEL_35;
          }
        }

        __break(1u);
        goto LABEL_42;
      }

      v46 = MEMORY[0x1E69E7CC0];
LABEL_35:
      v96 = v46;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type [String] and conformance [A]();
      v60 = BidirectionalCollection<>.joined(separator:)();
      v62 = v61;

      v36 = v84;
      (*v70)(v79, v84);
      v39 = v78;
      v97 = v78;
      v64 = *(v78 + 16);
      v63 = *(v78 + 24);
      if (v64 >= v63 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v63 > 1), v64 + 1, 1);
        v36 = v84;
        v39 = v97;
      }

      v37 = (v77 + 1);
      *(v39 + 16) = v64 + 1;
      v65 = v39 + 16 * v64;
      *(v65 + 32) = v60;
      *(v65 + 40) = v62;
      v38 = v80;
      if (v37 == v71)
      {
        v66 = v39;

        goto LABEL_40;
      }
    }

LABEL_43:
    __break(1u);
LABEL_44:
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
    return result;
  }

  v66 = MEMORY[0x1E69E7CC0];
LABEL_40:
  v97 = v66;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v67 = BidirectionalCollection<>.joined(separator:)();

  return v67;
}

uint64_t closure #1 in InferenceRequestTransparency.record(completion:)(void *a1, uint64_t a2, uint64_t a3)
{
  PromptCompletion.transparencyDescription.getter();
  type metadata accessor for TransparencyReport();
  swift_allocObject();
  TransparencyReport.init()();
  TransparencyReport.logEvent(configuration:prompt:response:executionEnvironment:)();

  *a1 = 0;
  a1[1] = 0;

  a1[2] = 0;
  a1[3] = 0;
  return result;
}

uint64_t PromptCompletion.transparencyDescription.getter()
{
  v1 = type metadata accessor for PromptCompletion.Segment(0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for PromptCompletion.Content(0);
  v5 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v7 = (&v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v36 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v36 - v12;
  v14 = *(v0 + 32);
  if (*(v14 + 16))
  {
    v15 = *(v14 + 32);
    v16 = *(v15 + 16);
    v17 = MEMORY[0x1E69E7CC0];
    if (v16)
    {
      v39 = MEMORY[0x1E69E7CC0];

      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16, 0);
      v17 = v39;
      v18 = v15 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
      v19 = *(v2 + 72);
      v36 = v15;
      v37 = v19;
      do
      {
        _s15TokenGeneration16PromptCompletionV7SegmentVWOcTm_0(v18, v4, type metadata accessor for PromptCompletion.Segment);
        _s15TokenGeneration16PromptCompletionV7SegmentVWOcTm_0(v4, v13, type metadata accessor for PromptCompletion.Content);
        outlined destroy of PromptCompletion.Segment(v4, type metadata accessor for PromptCompletion.Segment);
        v39 = v17;
        v21 = *(v17 + 2);
        v20 = *(v17 + 3);
        if (v21 >= v20 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1);
          v17 = v39;
        }

        *(v17 + 2) = v21 + 1;
        outlined init with take of PromptCompletion.Content(v13, &v17[((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v21]);
        v18 += v37;
        --v16;
      }

      while (v16);
    }

    v22 = *(v17 + 2);
    if (v22)
    {
      goto LABEL_9;
    }

LABEL_25:

    v24 = MEMORY[0x1E69E7CC0];
    goto LABEL_26;
  }

  v17 = MEMORY[0x1E69E7CC0];
  v22 = *(MEMORY[0x1E69E7CC0] + 16);
  if (!v22)
  {
    goto LABEL_25;
  }

LABEL_9:
  v23 = &v17[(*(v5 + 80) + 32) & ~*(v5 + 80)];
  v37 = *(v5 + 72);
  v24 = MEMORY[0x1E69E7CC0];
  do
  {
    _s15TokenGeneration16PromptCompletionV7SegmentVWOcTm_0(v23, v10, type metadata accessor for PromptCompletion.Content);
    _s15TokenGeneration16PromptCompletionV7SegmentVWOcTm_0(v10, v7, type metadata accessor for PromptCompletion.Content);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        outlined destroy of PromptCompletion.Segment(v10, type metadata accessor for PromptCompletion.Content);
        outlined destroy of PromptCompletion.Segment(v7, type metadata accessor for PromptCompletion.Content);
        v26 = 0xE600000000000000;
        v27 = 0x3E656C69663CLL;
        goto LABEL_18;
      }

      outlined destroy of PromptCompletion.Segment(v7, type metadata accessor for PromptCompletion.Content);
      outlined destroy of PromptCompletion.Segment(v10, type metadata accessor for PromptCompletion.Content);
      v26 = 0xE700000000000000;
      v30 = 0x6F696475613CLL;
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {
        outlined destroy of PromptCompletion.Segment(v10, type metadata accessor for PromptCompletion.Content);
        v27 = *v7;
        v26 = v7[1];
        v28 = v7[3];
        v29 = v7[4];

        outlined consume of Data?(v28, v29);
        goto LABEL_18;
      }

      outlined destroy of PromptCompletion.Segment(v7, type metadata accessor for PromptCompletion.Content);
      outlined destroy of PromptCompletion.Segment(v10, type metadata accessor for PromptCompletion.Content);
      v26 = 0xE700000000000000;
      v30 = 0x6567616D693CLL;
    }

    v27 = v30 & 0xFFFFFFFFFFFFLL | 0x3E000000000000;
LABEL_18:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v24 + 2) + 1, 1, v24);
    }

    v32 = *(v24 + 2);
    v31 = *(v24 + 3);
    if (v32 >= v31 >> 1)
    {
      v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1, v24);
    }

    *(v24 + 2) = v32 + 1;
    v33 = &v24[16 * v32];
    *(v33 + 4) = v27;
    *(v33 + 5) = v26;
    v23 += v37;
    --v22;
  }

  while (v22);

LABEL_26:
  v39 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v34 = BidirectionalCollection<>.joined(separator:)();

  return v34;
}

uint64_t closure #1 in InferenceRequestTransparency.record(textDelta:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    v6 = *(a1 + 16);
    v7 = *(a1 + 24);
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  v9 = v6;

  MEMORY[0x1AC5A5BC0](a2, a3);

  *(a1 + 16) = v9;
  *(a1 + 24) = v7;
  return result;
}

double closure #1 in InferenceRequestTransparency.submit()(void *a1, uint64_t a2)
{
  type metadata accessor for TransparencyReport();
  swift_allocObject();
  TransparencyReport.init()();
  TransparencyReport.logEvent(configuration:prompt:response:executionEnvironment:)();

  result = 0.0;
  *a1 = 0u;
  *(a1 + 1) = 0u;
  return result;
}

uint64_t InferenceRequestTransparency.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC15TokenGeneration28InferenceRequestTransparency_configuration;
  v2 = type metadata accessor for InferenceProviderRequestConfiguration();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC15TokenGeneration28InferenceRequestTransparency_executionEnvironment;
  v4 = type metadata accessor for GenerativeExperiencesTransparencyLog.ExecutionEnvironment();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for InferenceRequestTransparency(uint64_t a1)
{
  result = type metadata singleton initialization cache for InferenceRequestTransparency;
  if (!type metadata singleton initialization cache for InferenceRequestTransparency)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for InferenceRequestTransparency(uint64_t a1)
{
  result = type metadata accessor for InferenceProviderRequestConfiguration();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for GenerativeExperiencesTransparencyLog.ExecutionEnvironment();
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

uint64_t getEnumTagSinglePayload for InferenceRequestTransparency.MutableState(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
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

uint64_t storeEnumTagSinglePayload for InferenceRequestTransparency.MutableState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t _s15TokenGeneration16PromptCompletionV7SegmentVWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of PromptCompletion.Content(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PromptCompletion.Content(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of PromptCompletion.Segment(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with copy of Prompt?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptVSgMd, &_s15TokenGeneration6PromptVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Prompt?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptVSgMd, &_s15TokenGeneration6PromptVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t InferenceSessionProtocol.request<A>(loggingIdentifier:payload:requiredAssets:expectedResponse:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[10] = v15;
  v9[11] = v8;
  v9[8] = a8;
  v9[9] = v14;
  v9[6] = a5;
  v9[7] = a7;
  v9[4] = a3;
  v9[5] = a4;
  v9[2] = a1;
  v9[3] = a2;
  v10 = type metadata accessor for XPCDictionary();
  v9[12] = v10;
  v9[13] = *(v10 - 8);
  v9[14] = swift_task_alloc();
  v11 = type metadata accessor for XPCCodableObject();
  v9[15] = v11;
  v9[16] = *(v11 - 8);
  v9[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](InferenceSessionProtocol.request<A>(loggingIdentifier:payload:requiredAssets:expectedResponse:), 0, 0);
}

uint64_t InferenceSessionProtocol.request<A>(loggingIdentifier:payload:requiredAssets:expectedResponse:)(uint64_t a1, uint64_t a2)
{
  v5 = *v3;
  v6 = *(*v3 + 152);
  v7 = *(*v3 + 144);
  v8 = *(*v3 + 136);
  v9 = *(*v3 + 128);
  v10 = *(*v3 + 120);
  *(*v3 + 168) = v2;

  (*(v9 + 8))(v8, v10);
  outlined consume of Data._Representation(v6, v7);
  if (v2)
  {
    v11 = InferenceSessionProtocol.request<A>(loggingIdentifier:payload:requiredAssets:expectedResponse:);
  }

  else
  {
    *(v5 + 176) = a2;
    *(v5 + 184) = a1;
    v11 = InferenceSessionProtocol.request<A>(loggingIdentifier:payload:requiredAssets:expectedResponse:);
  }

  return MEMORY[0x1EEE6DFA0](v11, 0, 0);
}

uint64_t static InferenceSessionProtocol.decodeSequence<A, B>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v15 = MEMORY[0x1EEE9AC00](a1);
  (*(v17 + 16))(&v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v15);
  v18 = swift_allocObject();
  v18[2] = a3;
  v18[3] = a4;
  v18[4] = a5;
  v18[5] = a6;
  v18[6] = a7;
  v18[7] = a8;
  v18[8] = a9;
  AsyncSequence.map<A>(_:)();
}

uint64_t closure #1 in static InferenceSessionProtocol.decodeSequence<A, B>(_:_:)(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 24) = a4;
  *(v7 + 32) = a7;
  *(v7 + 16) = a1;
  *(v7 + 40) = *a2;
  return MEMORY[0x1EEE6DFA0](closure #1 in static InferenceSessionProtocol.decodeSequence<A, B>(_:_:), 0, 0);
}

uint64_t closure #1 in static InferenceSessionProtocol.decodeSequence<A, B>(_:_:)()
{
  static WireFormat.decode<A>(_:from:)(v0[3], v0[5], v0[6], v0[3], v0[4]);
  v1 = v0[1];

  return v1();
}

uint64_t InferenceSessionProtocol.streamingRequest<A>(loggingIdentifier:payload:requiredAssets:expectedResponse:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t *a8@<X8>, uint64_t a9, uint64_t a10)
{
  v35 = a4;
  v37 = a6;
  v38 = a7;
  v39 = a5;
  v33 = a1;
  v34 = a2;
  v36 = a8;
  v32 = type metadata accessor for XPCDictionary();
  v10 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for XPCCodableObject();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for encoder != -1)
  {
    swift_once();
  }

  type metadata accessor for StreamingRequest(0);
  lazy protocol witness table accessor for type StreamingRequest and conformance StreamingRequest(&lazy protocol witness table cache variable for type StreamingRequest and conformance StreamingRequest, type metadata accessor for StreamingRequest, &protocol conformance descriptor for StreamingRequest);
  v17 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v19 = v18;
  v30 = a9;
  v31 = a10;
  StreamingRequest.xpcData.getter(v12);
  XPCDictionary.withUnsafeUnderlyingDictionary<A>(_:)();
  (*(v10 + 8))(v12, v32);
  v21 = v38;
  v20 = v39;
  (*(v38 + 48))(v40, v33, v34, v17, v19, v16, v35, v39, v38);
  outlined consume of Data._Representation(v17, v19);
  (*(v14 + 8))(v16, v13);
  v22 = v41;
  v23 = v42;
  v24 = __swift_project_boxed_opaque_existential_1(v40, v41);
  v25 = v37;
  v26 = type metadata accessor for AsyncThrowingMapSequence();
  v27 = v36;
  v36[3] = v26;
  v27[4] = swift_getWitnessTable();
  __swift_allocate_boxed_opaque_existential_1(v27);
  static InferenceSessionProtocol.decodeSequence<A, B>(_:_:)(v24, v25, v20, v25, v22, v21, v30, v31, v23);
  return __swift_destroy_boxed_opaque_existential_0(v40);
}

uint64_t InferenceSessionProtocol.streamingRequest<A>(loggingIdentifier:payload:xpcCodableObject:requiredAssets:expectedResponse:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t *a8@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (one-time initialization token for encoder != -1)
  {
    swift_once();
  }

  type metadata accessor for StreamingRequest(0);
  lazy protocol witness table accessor for type StreamingRequest and conformance StreamingRequest(&lazy protocol witness table cache variable for type StreamingRequest and conformance StreamingRequest, type metadata accessor for StreamingRequest, &protocol conformance descriptor for StreamingRequest);
  v16 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v18 = v17;
  (*(a10 + 48))(v26, a1, a2, v16, v17, a4, a5, a6, a10);
  outlined consume of Data._Representation(v16, v18);
  v19 = v27;
  v20 = v28;
  v21 = __swift_project_boxed_opaque_existential_1(v26, v27);
  a8[3] = type metadata accessor for AsyncThrowingMapSequence();
  a8[4] = swift_getWitnessTable();
  __swift_allocate_boxed_opaque_existential_1(a8);
  static InferenceSessionProtocol.decodeSequence<A, B>(_:_:)(v21, a7, a6, a7, v19, a10, a11, a12, v20);
  return __swift_destroy_boxed_opaque_existential_0(v26);
}

uint64_t static ModelCatalogStub.AssetKey.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

Swift::Int ModelCatalogStub.AssetKey.hashValue.getter()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ModelCatalogStub.AssetKey()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ModelCatalogStub.AssetKey(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ModelCatalogStub.AssetKey(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t dispatch thunk of InferenceSessionProtocol.request(loggingIdentifier:data:requiredAssets:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17 = (*(a7 + 32) + **(a7 + 32));
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = partial apply for closure #1 in static TokenGenerator.scrubIfNeeded(inputPrompt:stringRenderedPromptSanitizerWithConfiguration:);

  return v17(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t dispatch thunk of InferenceSessionProtocol.request(loggingIdentifier:data:xpcData:requiredAssets:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = (*(a8 + 40) + **(a8 + 40));
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = partial apply for closure #1 in static TokenGenerator.scrubIfNeeded(promptTurns:stringRenderedPromptSanitizerWithConfiguration:);

  return v19(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t getEnumTagSinglePayload for ModelCatalogStub.AssetKey(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for ModelCatalogStub.AssetKey(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t partial apply for closure #1 in static InferenceSessionProtocol.decodeSequence<A, B>(_:_:)(uint64_t a1, _OWORD *a2)
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

  return closure #1 in static InferenceSessionProtocol.decodeSequence<A, B>(_:_:)(a1, a2, v6, v7, v8, v9, v10);
}

uint64_t lazy protocol witness table accessor for type StreamingRequest and conformance StreamingRequest(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t one-time initialization function for generation()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Log.generation);
  __swift_project_value_buffer(v0, static Log.generation);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for assets(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return Logger.init(subsystem:category:)();
}

void _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy15TokenGeneration16ModelCatalogStubV8AssetKeyVG_SSs5NeverOTg504_s15d12Generation19f153ManagerSessionV13createRequest33_F61778B4E28C3CEC7B6F3BC34FB92D58LL4data17loggingIdentifier14requiredAssets0cD8Services0G0V10Foundation4DataV_SSShyAA0C11gh2V8iJ60VGtFSSARcfu_32d73f8ee8dcd6a9ac23a3a668891edd15ARSSTf3nnnpk_nTf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v23 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v3 = a1 + 56;
    v4 = _HashTable.startBucket.getter();
    v5 = 0;
    v20 = v1;
    while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(a1 + 32))
    {
      v7 = v4 >> 6;
      if ((*(v3 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
      {
        goto LABEL_21;
      }

      v21 = *(a1 + 36);
      v8 = (*(a1 + 48) + 16 * v4);
      v9 = v8[1];
      v22 = *v8;
      v10 = *(v23 + 16);
      v11 = *(v23 + 24);

      if (v10 >= v11 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v10 + 1, 1);
      }

      *(v23 + 16) = v10 + 1;
      v12 = v23 + 16 * v10;
      *(v12 + 32) = v22;
      *(v12 + 40) = v9;
      v6 = 1 << *(a1 + 32);
      if (v4 >= v6)
      {
        goto LABEL_22;
      }

      v3 = a1 + 56;
      v13 = *(a1 + 56 + 8 * v7);
      if ((v13 & (1 << v4)) == 0)
      {
        goto LABEL_23;
      }

      if (v21 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v14 = v13 & (-2 << (v4 & 0x3F));
      if (v14)
      {
        v6 = __clz(__rbit64(v14)) | v4 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v15 = v7 << 6;
        v16 = v7 + 1;
        v17 = (a1 + 64 + 8 * v7);
        while (v16 < (v6 + 63) >> 6)
        {
          v19 = *v17++;
          v18 = v19;
          v15 += 64;
          ++v16;
          if (v19)
          {
            outlined consume of Set<ModelCatalogStub.AssetKey>.Index._Variant(v4, v21, 0);
            v6 = __clz(__rbit64(v18)) + v15;
            goto LABEL_4;
          }
        }

        outlined consume of Set<ModelCatalogStub.AssetKey>.Index._Variant(v4, v21, 0);
      }

LABEL_4:
      ++v5;
      v4 = v6;
      if (v5 == v20)
      {
        return;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }
}

uint64_t ModelManagerSession.request(loggingIdentifier:data:requiredAssets:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = type metadata accessor for Request();
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](ModelManagerSession.request(loggingIdentifier:data:requiredAssets:), 0, 0);
}

uint64_t ModelManagerSession.request(loggingIdentifier:data:requiredAssets:)()
{
  v1 = v0[6];
  v3 = v0[4];
  v2 = v0[5];

  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy15TokenGeneration16ModelCatalogStubV8AssetKeyVG_SSs5NeverOTg504_s15d12Generation19f153ManagerSessionV13createRequest33_F61778B4E28C3CEC7B6F3BC34FB92D584data17loggingIdentifier14requiredAssets0cD8Services0G0V10Foundation4DataV_SSShyAA0C11gh2V8iJ60VGtFSSARcfu_32d73f8ee8dcd6a9ac23a3a668891edd15ARSSTf3nnnpk_nTf1cn_n(v1);
  _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v4);

  outlined copy of Data._Representation(v3, v2);

  Request.init(session:loggingIdentifier:clientData:requiredAssetTypes:)();
  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = ModelManagerSession.request(loggingIdentifier:data:requiredAssets:);

  return MEMORY[0x1EEE1F430]();
}

{
  (*(v0[9] + 8))(v0[10], v0[8]);

  v1 = v0[1];
  v3 = v0[13];
  v2 = v0[14];

  return v1(v2, v3);
}

{
  v1 = v0[12];
  (*(v0[9] + 8))(v0[10], v0[8]);
  specialized ModelManagerSession.attemptUnwrappingGenerationError(_:)(v1);
  swift_willThrow();

  v2 = v0[1];

  return v2();
}

uint64_t ModelManagerSession.request(loggingIdentifier:data:requiredAssets:)(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 96) = v2;

  if (v2)
  {
    v7 = ModelManagerSession.request(loggingIdentifier:data:requiredAssets:);
  }

  else
  {
    *(v6 + 104) = a2;
    *(v6 + 112) = a1;
    v7 = ModelManagerSession.request(loggingIdentifier:data:requiredAssets:);
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t ModelManagerSession.streamingRequest(loggingIdentifier:data:xpcData:requiredAssets:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (*a6)(uint64_t a1)@<X6>, uint64_t *a7@<X8>)
{
  v33 = a5;
  v35 = a2;
  v36 = a4;
  v37 = a1;
  v39 = a7;
  v38 = type metadata accessor for ResponseSequence();
  MEMORY[0x1EEE9AC00](v38);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23AsyncCompactMapSequenceVy20ModelManagerServices08ResponseD0V10Foundation4DataVGMd, &_ss23AsyncCompactMapSequenceVy20ModelManagerServices08ResponseD0V10Foundation4DataVGMR);
  v9 = *(v41 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v34 = &v32 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s3XPC16XPCCodableObjectVSgMd, &_s3XPC16XPCCodableObjectVSgMR);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v32 - v14;
  v16 = type metadata accessor for ClientData();
  MEMORY[0x1EEE9AC00](v16 - 8);
  type metadata accessor for StreamingRequest();
  v17 = type metadata accessor for XPCCodableObject();
  v18 = *(v17 - 8);
  (*(v18 + 16))(v15, v33, v17);
  (*(v18 + 56))(v15, 0, 1, v17);

  outlined copy of Data._Representation(a3, v36);
  ClientData.init(data:xpcData:)();
  v37 = StreamingRequest.__allocating_init(session:loggingIdentifier:clientData:)();
  dispatch thunk of StreamingRequest.execute()();
  lazy protocol witness table accessor for type ResponseSequence and conformance ResponseSequence(&lazy protocol witness table cache variable for type ResponseSequence and conformance ResponseSequence, MEMORY[0x1E69B2660], MEMORY[0x1E69B2668]);
  v19 = v34;
  AsyncCompactMapSequence.init(_:transform:)();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScsy10Foundation4DataVs5Error_pGMd, &_sScsy10Foundation4DataVs5Error_pGMR);
  v21 = v39;
  v39[3] = v20;
  v21[4] = lazy protocol witness table accessor for type TokenStream<String> and conformance TokenStream<A>(&lazy protocol witness table cache variable for type AsyncThrowingStream<Data, Error> and conformance AsyncThrowingStream<A, B>, &_sScsy10Foundation4DataVs5Error_pGMd, &_sScsy10Foundation4DataVs5Error_pGMR, MEMORY[0x1E69E87D0]);
  __swift_allocate_boxed_opaque_existential_1(v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23AsyncCompactMapSequenceV8IteratorVy20ModelManagerServices08ResponseD0V10Foundation4DataV_GSgMd, &_ss23AsyncCompactMapSequenceV8IteratorVy20ModelManagerServices08ResponseD0V10Foundation4DataV_GSgMR);
  v22 = swift_allocBox();
  v24 = v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23AsyncCompactMapSequenceV8IteratorVy20ModelManagerServices08ResponseD0V10Foundation4DataV_GMd, &_ss23AsyncCompactMapSequenceV8IteratorVy20ModelManagerServices08ResponseD0V10Foundation4DataV_GMR);
  (*(*(v25 - 8) + 56))(v24, 1, 1, v25);
  v26 = v40;
  v27 = v41;
  (*(v9 + 16))(v40, v19, v41);
  v28 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = v22;
  (*(v9 + 32))(v29 + v28, v26, v27);
  v30 = (v29 + ((v10 + v28 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v30 = partial apply for closure #1 in ModelManagerSession.streamingRequest(loggingIdentifier:data:xpcData:requiredAssets:);
  v30[1] = a6;
  swift_retain_n();

  AsyncThrowingStream.init<>(unfolding:)();

  (*(v9 + 8))(v19, v27);
}

uint64_t specialized thunk for @escaping @callee_guaranteed (@in_guaranteed ClientData) -> (@owned Data?)(uint64_t *a1)
{
  *a1 = ClientData.data.getter();
  a1[1] = v3;
  v4 = *(v1 + 8);

  return v4();
}

void protocol witness for InferenceSessionProtocol.requestPrewarm() in conformance ModelManagerSession()
{
  Session.requestPrewarm()();
  if (v0)
  {
    specialized ModelManagerSession.attemptUnwrappingGenerationError(_:)(v0);
    swift_willThrow();
  }
}

uint64_t protocol witness for InferenceSessionProtocol.request(loggingIdentifier:data:requiredAssets:) in conformance ModelManagerSession(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *v5;
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = closure #1 in static TokenGenerator.scrubIfNeeded(inputPrompt:stringRenderedPromptSanitizerWithConfiguration:);

  return ModelManagerSession.request(loggingIdentifier:data:requiredAssets:)(a1, a2, a3, a4, a5, v12);
}

uint64_t protocol witness for InferenceSessionProtocol.request(loggingIdentifier:data:xpcData:requiredAssets:) in conformance ModelManagerSession(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *v5;
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = closure #1 in static TokenGenerator.scrubIfNeeded(promptTurns:stringRenderedPromptSanitizerWithConfiguration:);

  return specialized ModelManagerSession.request(loggingIdentifier:data:xpcData:requiredAssets:)(a1, a2, a3, a4, a5, v12);
}

uint64_t _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSS8UTF8ViewV_Tt0g5(uint64_t a1, unint64_t a2)
{
  v45 = *MEMORY[0x1E69E9840];
  v39[0] = a1;
  v39[1] = a2;
  *&v42 = a1;
  *(&v42 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation15ContiguousBytes_pMd, &_s10Foundation15ContiguousBytes_pMR);
  if (swift_dynamicCast())
  {
    outlined init with take of any AsyncIteratorProtocol<Self.Element == A, Self.Failure == Error>(__src, &v43);
    __swift_project_boxed_opaque_existential_1(&v43, v44);
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    __src[0] = v42;
    __swift_destroy_boxed_opaque_existential_0(&v43);
    goto LABEL_63;
  }

  v41 = 0;
  memset(__src, 0, sizeof(__src));
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(__src, &_s10Foundation15ContiguousBytes_pSgMd, &_s10Foundation15ContiguousBytes_pSgMR);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = _StringObject.sharedUTF8.getter();
  }

  closure #2 in Data.init<A>(_:)(&v43, v4, v5);
  v6 = *(&v43 + 1);
  v7 = v43;
  if (*(&v43 + 1) >> 60 != 15)
  {
    __src[0] = v43;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = specialized Data._Representation.init(count:)(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x1EEE9AC00](*&__src[0]);
  v34[2] = v39;
  v10 = specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(partial apply for specialized closure #3 in Data.init<A>(_:), v34);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        Data._Representation.replaceSubrange(_:with:count:)();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v42 + 7) = 0;
  *&v42 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = _StringGuts._slowEnsureMatchingEncoding(_:)(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = String.UTF8View._foreignCount()();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = String.UTF8View._foreignSubscript(position:)();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v43 = v14;
      *(&v43 + 1) = v38;
      v31 = *(&v43 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = _StringObject.sharedUTF8.getter();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = _StringGuts._slowEnsureMatchingEncoding(_:)(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = String.UTF8View._foreignIndex(after:)();
LABEL_52:
    *(&v42 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v43 = v42;
      *(&v43 + 6) = *(&v42 + 6);
      Data._Representation.append(contentsOf:)();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v43 = v42;
    *(&v43 + 6) = *(&v42 + 6);
    Data._Representation.append(contentsOf:)();
    outlined consume of Data?(v36, v6);
    goto LABEL_62;
  }

LABEL_57:

  outlined consume of Data?(v36, v6);
LABEL_63:
  v32 = __src[0];
  outlined copy of Data._Representation(*&__src[0], *(&__src[0] + 1));

  outlined consume of Data._Representation(v32, *(&v32 + 1));
  return v32;
}

uint64_t closure #1 in uuid(from:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    v2 = result;
    v4 = type metadata accessor for UUID();
    return (*(*(v4 - 8) + 16))(a2, v2, v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t *closure #2 in Data.init<A>(_:)@<X0>(uint64_t *__return_ptr a1@<X8>, _BYTE *__src@<X0>, unint64_t a3@<X1>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a3)
  {
    if (a3 <= 14)
    {
      result = specialized Data.InlineData.init(_:)(__src, &__src[a3]);
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      type metadata accessor for __DataStorage();
      swift_allocObject();
      v8 = __DataStorage.init(bytes:length:)();
      if (a3 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        result[2] = 0;
        result[3] = a3;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = (a3 << 32);
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a1 = result;
  a1[1] = v6;
  return result;
}

char *specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
{
  v4 = v2;
  v19[2] = *MEMORY[0x1E69E9840];
  v7 = *v2;
  v6 = v2[1];
  v8 = v6 >> 62;
  if ((v6 >> 62) <= 1)
  {
    if (!v8)
    {
      outlined consume of Data._Representation(v7, v6);
      v19[0] = v7;
      LOWORD(v19[1]) = v6;
      BYTE2(v19[1]) = BYTE2(v6);
      BYTE3(v19[1]) = BYTE3(v6);
      BYTE4(v19[1]) = BYTE4(v6);
      BYTE5(v19[1]) = BYTE5(v6);
      BYTE6(v19[1]) = BYTE6(v6);
      result = a1(&v17, v19, v19 + BYTE6(v6));
      if (!v3)
      {
        result = v17;
      }

      v10 = LODWORD(v19[1]) | ((WORD2(v19[1]) | (BYTE6(v19[1]) << 16)) << 32);
      *v4 = v19[0];
      v4[1] = v10;
      return result;
    }

    v12 = v6 & 0x3FFFFFFFFFFFFFFFLL;

    outlined consume of Data._Representation(v7, v6);
    *v4 = xmmword_1ABA29C00;
    outlined consume of Data._Representation(0, 0xC000000000000000);
    v13 = v7 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v13 < v7)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (__DataStorage._bytes.getter() && __OFSUB__(v7, __DataStorage._offset.getter()))
      {
LABEL_26:
        __break(1u);
      }

      type metadata accessor for __DataStorage();
      swift_allocObject();
      v14 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

      v12 = v14;
    }

    if (v13 >= v7)
    {

      v15 = specialized __DataStorage.withUnsafeMutableBytes<A>(in:apply:)(v7, v7 >> 32, a1);

      v11 = v12 | 0x4000000000000000;
      if (!v3)
      {
        *v4 = v7;
        v4[1] = v11;
        return v15;
      }

      *v4 = v7;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v8 == 2)
  {

    outlined consume of Data._Representation(v7, v6);
    v17 = v7;
    v18 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    *v4 = xmmword_1ABA29C00;
    outlined consume of Data._Representation(0, 0xC000000000000000);
    Data.LargeSlice.ensureUniqueReference()();
    result = specialized __DataStorage.withUnsafeMutableBytes<A>(in:apply:)(*(v17 + 2), *(v17 + 3), a1);
    v11 = v18 | 0x8000000000000000;
    if (!v3)
    {
      *v4 = v17;
      v4[1] = v11;
      return result;
    }

    *v4 = v17;
LABEL_21:
    v4[1] = v11;
    return result;
  }

  memset(v19, 0, 15);
  result = a1(&v17, v19, v19);
  if (!v3)
  {
    return v17;
  }

  return result;
}

_BYTE *closure #1 in Data.init<A>(_:)@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = specialized Data.InlineData.init(_:)(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = specialized Data.LargeSlice.init(_:)(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = specialized Data.InlineSlice.init(_:)(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *_sSw17withMemoryRebound2to_q0_xm_q0_SryxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lFs5UInt8V_s5NeverOs16IndexingIteratorVySS8UTF8ViewVG_SitTt1g5(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = (a1)(&v6, 0, 0, 0, a4);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *specialized __DataStorage.withUnsafeMutableBytes<A>(in:apply:)(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = __DataStorage._bytes.getter();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = __DataStorage._offset.getter();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = MEMORY[0x1AC5A2EC0]();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t specialized Data._Representation.withUnsafeBytes<A>(_:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      type metadata accessor for Insecure.MD5();
      lazy protocol witness table accessor for type ResponseSequence and conformance ResponseSequence(&lazy protocol witness table cache variable for type Insecure.MD5 and conformance Insecure.MD5, MEMORY[0x1E6966688], MEMORY[0x1E6966680]);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v5, v6);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v5, v6);
  }

  type metadata accessor for Insecure.MD5();
  lazy protocol witness table accessor for type ResponseSequence and conformance ResponseSequence(&lazy protocol witness table cache variable for type Insecure.MD5 and conformance Insecure.MD5, MEMORY[0x1E6966688], MEMORY[0x1E6966680]);
  return dispatch thunk of HashFunction.update(bufferPointer:)();
}

uint64_t specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(uint64_t a1, uint64_t a2)
{
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      MEMORY[0x1AC5A2EC0]();
      type metadata accessor for Insecure.MD5();
      lazy protocol witness table accessor for type ResponseSequence and conformance ResponseSequence(&lazy protocol witness table cache variable for type Insecure.MD5 and conformance Insecure.MD5, MEMORY[0x1E6966688], MEMORY[0x1E6966680]);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t specialized closure #1 in closure #3 in Data.init<A>(_:)@<X0>(uint64_t result@<X0>, void *a4@<X8>)
{
  if (result)
  {
    result = _StringGuts.copyUTF8(into:)();
    if ((v5 & 1) == 0)
    {
      *a4 = 0;
      a4[1] = 0xE000000000000000;
      a4[2] = 15;
      a4[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *specialized ModelManagerSession.attemptUnwrappingGenerationError(_:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration0aB5ErrorOSgMd, &_s15TokenGeneration0aB5ErrorOSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v84 = v77 - v3;
  v86 = type metadata accessor for TokenGenerationError(0);
  v83 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v82 = (v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v80 = v77 - v6;
  v85 = type metadata accessor for InferenceError();
  v7 = *(v85 - 1);
  MEMORY[0x1EEE9AC00](v85);
  v9 = v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v77 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20ModelManagerServices0aB5ErrorOSgMd, &_s20ModelManagerServices0aB5ErrorOSgMR);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v77 - v14;
  v16 = type metadata accessor for ModelManagerError();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v81 = v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v77 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = v77 - v23;
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = v77 - v27;
  v87 = a1;
  MEMORY[0x1AC5A6AE0](a1, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v29 = swift_dynamicCast();
  v30 = *(v17 + 56);
  if (v29)
  {
    v30(v15, 0, 1, v16);
    v77[0] = *(v17 + 32);
    v77[1] = v17 + 32;
    (v77[0])(v28, v15, v16);
    v78 = *(v17 + 16);
    v79 = v28;
    v78(v24, v28, v16);
    v31 = *(v17 + 88);
    if (v31(v24, v16) == *MEMORY[0x1E69B2578])
    {
      (*(v17 + 96))(v24, v16);
      v32 = v24;
      v33 = v85;
      (*(v7 + 32))(v12, v32, v85);
      (*(v7 + 16))(v9, v12, v33);
      v34 = v9;
      v35 = v84;
      TokenGenerationError.init(_:)(v34, v84);
      if ((*(v83 + 48))(v35, 1, v86) != 1)
      {
        v72 = v80;
        outlined init with take of TokenGenerationError(v35, v80, v36);
        lazy protocol witness table accessor for type ResponseSequence and conformance ResponseSequence(&lazy protocol witness table cache variable for type TokenGenerationError and conformance TokenGenerationError, type metadata accessor for TokenGenerationError, &protocol conformance descriptor for TokenGenerationError);
        a1 = swift_allocError();
        outlined init with take of TokenGenerationError(v72, v73, v74);
        (*(v7 + 8))(v12, v85);
        (*(v17 + 8))(v79, v16);
        return a1;
      }

      (*(v7 + 8))(v12, v85);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v35, &_s15TokenGeneration0aB5ErrorOSgMd, &_s15TokenGeneration0aB5ErrorOSgMR);
    }

    else
    {
      (*(v17 + 8))(v24, v16);
    }

    v45 = v78;
    v46 = v79;
    v78(v21, v79, v16);
    v47 = v31(v21, v16);
    v48 = *MEMORY[0x1E69B2580];
    v49 = *(v17 + 8);
    v49(v21, v16);
    if (v47 == v48)
    {
      v50 = ModelManagerError.descriptionWithoutUnderlying.getter();
      v51 = v45;
      v53 = v52;
      lazy protocol witness table accessor for type ResponseSequence and conformance ResponseSequence(&lazy protocol witness table cache variable for type ModelManagerError and conformance ModelManagerError, MEMORY[0x1E69B25A8], MEMORY[0x1E69B25B0]);
      v54 = v49;
      v55 = swift_allocError();
      v51(v56, v46, v16);
      v57 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      v58 = v82;
      *v82 = v50;
      v58[1] = v53;
      v58[2] = v55;
      v58[3] = 0;
      v58[4] = 0;
      v58[5] = v57;
      swift_storeEnumTagMultiPayload();
      lazy protocol witness table accessor for type ResponseSequence and conformance ResponseSequence(&lazy protocol witness table cache variable for type TokenGenerationError and conformance TokenGenerationError, type metadata accessor for TokenGenerationError, &protocol conformance descriptor for TokenGenerationError);
      a1 = swift_allocError();
      outlined init with take of TokenGenerationError(v58, v59, v60);
      v54(v46, v16);
    }

    else
    {
      if (one-time initialization token for generator != -1)
      {
        swift_once();
      }

      v61 = type metadata accessor for Logger();
      __swift_project_value_buffer(v61, static Log.generator);
      v62 = v81;
      v45(v81, v46, v16);
      v63 = Logger.logObject.getter();
      v64 = v45;
      v65 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v63, v65))
      {
        v66 = swift_slowAlloc();
        v85 = v49;
        v67 = v66;
        v68 = swift_slowAlloc();
        v86 = swift_slowAlloc();
        v87 = v86;
        *v67 = 136315650;
        *(v67 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000011, 0x80000001ABA41510, &v87);
        *(v67 + 12) = 2080;
        *(v67 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000014, 0x80000001ABA41530, &v87);
        *(v67 + 22) = 2112;
        lazy protocol witness table accessor for type ResponseSequence and conformance ResponseSequence(&lazy protocol witness table cache variable for type ModelManagerError and conformance ModelManagerError, MEMORY[0x1E69B25A8], MEMORY[0x1E69B25B0]);
        swift_allocError();
        v64(v69, v62, v16);
        v70 = _swift_stdlib_bridgeErrorToNSError();
        (v85)(v62, v16);
        *(v67 + 24) = v70;
        *v68 = v70;
        _os_log_impl(&dword_1AB828000, v63, v65, "Received %s that couldn't be converted to a %s: %@", v67, 0x20u);
        outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v68, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x1AC5A6CD0](v68, -1, -1);
        v71 = v86;
        swift_arrayDestroy();
        v46 = v79;
        MEMORY[0x1AC5A6CD0](v71, -1, -1);
        MEMORY[0x1AC5A6CD0](v67, -1, -1);
      }

      else
      {

        v49(v62, v16);
      }

      lazy protocol witness table accessor for type ResponseSequence and conformance ResponseSequence(&lazy protocol witness table cache variable for type ModelManagerError and conformance ModelManagerError, MEMORY[0x1E69B25A8], MEMORY[0x1E69B25B0]);
      a1 = swift_allocError();
      (v77[0])(v75, v46, v16);
    }
  }

  else
  {
    v30(v15, 1, 1, v16);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v15, &_s20ModelManagerServices0aB5ErrorOSgMd, &_s20ModelManagerServices0aB5ErrorOSgMR);
    if (one-time initialization token for generator != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    __swift_project_value_buffer(v37, static Log.generator);
    MEMORY[0x1AC5A6AE0](a1);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v87 = v41;
      *v40 = 136315138;
      swift_getErrorValue();
      swift_getDynamicType();
      v42 = _typeName(_:qualified:)();
      v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v43, &v87);

      *(v40 + 4) = v44;
      _os_log_impl(&dword_1AB828000, v38, v39, "Received unexpected error type from model manager: %s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v41);
      MEMORY[0x1AC5A6CD0](v41, -1, -1);
      MEMORY[0x1AC5A6CD0](v40, -1, -1);
    }

    MEMORY[0x1AC5A6AE0](a1);
  }

  return a1;
}

uint64_t outlined init with take of TokenGenerationError(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for TokenGenerationError(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t specialized ModelManagerSession.request(loggingIdentifier:data:xpcData:requiredAssets:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s3XPC16XPCCodableObjectVSgMd, &_s3XPC16XPCCodableObjectVSgMR);
  v6[8] = swift_task_alloc();
  v7 = type metadata accessor for ClientData();
  v6[9] = v7;
  v6[10] = *(v7 - 8);
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](specialized ModelManagerSession.request(loggingIdentifier:data:xpcData:requiredAssets:), 0, 0);
}

uint64_t specialized ModelManagerSession.request(loggingIdentifier:data:xpcData:requiredAssets:)()
{
  v1 = v0[8];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[4];
  type metadata accessor for OneShotRequest();
  v5 = type metadata accessor for XPCCodableObject();
  v6 = *(v5 - 8);
  (*(v6 + 16))(v1, v2, v5);
  (*(v6 + 56))(v1, 0, 1, v5);

  outlined copy of Data._Representation(v4, v3);
  ClientData.init(data:xpcData:)();
  v0[13] = OneShotRequest.__allocating_init(session:loggingIdentifier:clientData:)();
  v10 = (*MEMORY[0x1E69B2650] + MEMORY[0x1E69B2650]);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = specialized ModelManagerSession.request(loggingIdentifier:data:xpcData:requiredAssets:);
  v8 = v0[11];

  return v10(v8);
}

{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = specialized ModelManagerSession.request(loggingIdentifier:data:xpcData:requiredAssets:);
  }

  else
  {
    v2 = specialized ModelManagerSession.request(loggingIdentifier:data:xpcData:requiredAssets:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  result = ClientData.data.getter();
  if (v2 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    v4 = v2;
    (*(v0[10] + 8))(v0[11], v0[9]);

    v5 = v0[1];

    return v5(v3, v4);
  }

  return result;
}

{
  v1 = *(v0 + 120);

  specialized ModelManagerSession.attemptUnwrappingGenerationError(_:)(v1);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t specialized Data.InlineData.init(_:)(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t specialized Data._Representation.init(count:)(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      type metadata accessor for __DataStorage();
      swift_allocObject();
      __DataStorage.init(length:)();
      if (v1 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t specialized Data.LargeSlice.init(_:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for Data.RangeReference();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t specialized Data.InlineSlice.init(_:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t outlined consume of Set<ModelCatalogStub.AssetKey>.Index._Variant(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t lazy protocol witness table accessor for type ResponseSequence and conformance ResponseSequence(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *partial apply for specialized closure #3 in Data.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = _sSw17withMemoryRebound2to_q0_xm_q0_SryxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lFs5UInt8V_s5NeverOs16IndexingIteratorVySS8UTF8ViewVG_SitTt1g5(partial apply for specialized closure #1 in closure #3 in Data.init<A>(_:), v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

void _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSD6ValuesVySS15TokenGeneration16PromptCompletionV10AggregatorV09CandidateI033_D174D4387BF6B304FA76AEBF3D593BFDLLV_G_AJ0J0Vs5NeverOTg504_s15e12Generation16gh3V10i15V6finishACyFAC9j10VAE0gE033_klmnopQ11BFDLLVXEfU_Tf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v33 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v3 = v33;
    v4 = a1 + 64;
    v5 = _HashTable.startBucket.getter();
    v6 = 0;
    v27 = v1;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(a1 + 32))
    {
      v8 = v5 >> 6;
      if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_21;
      }

      v28 = *(a1 + 36);
      PromptCompletion.Aggregator.CandidateAggregator.finish()(&v29);
      v9 = v29;
      v10 = v30;
      v11 = v31;
      v12 = v32;
      v33 = v3;
      v14 = *(v3 + 16);
      v13 = *(v3 + 24);
      v15 = v3;
      if (v14 >= v13 >> 1)
      {
        v25 = v30;
        v26 = v29;
        v24 = v31;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
        v11 = v24;
        v10 = v25;
        v9 = v26;
        v15 = v33;
      }

      *(v15 + 16) = v14 + 1;
      v16 = v15 + 56 * v14;
      *(v16 + 32) = v9;
      *(v16 + 48) = v10;
      *(v16 + 64) = v11;
      *(v16 + 80) = v12;
      v7 = 1 << *(a1 + 32);
      if (v5 >= v7)
      {
        goto LABEL_22;
      }

      v4 = a1 + 64;
      v17 = *(a1 + 64 + 8 * v8);
      if ((v17 & (1 << v5)) == 0)
      {
        goto LABEL_23;
      }

      v3 = v15;
      if (v28 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v18 = v17 & (-2 << (v5 & 0x3F));
      if (v18)
      {
        v7 = __clz(__rbit64(v18)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v19 = v8 << 6;
        v20 = v8 + 1;
        v21 = (a1 + 72 + 8 * v8);
        while (v20 < (v7 + 63) >> 6)
        {
          v23 = *v21++;
          v22 = v23;
          v19 += 64;
          ++v20;
          if (v23)
          {
            outlined consume of Set<ModelCatalogStub.AssetKey>.Index._Variant(v5, v28, 0);
            v7 = __clz(__rbit64(v22)) + v19;
            goto LABEL_4;
          }
        }

        outlined consume of Set<ModelCatalogStub.AssetKey>.Index._Variant(v5, v28, 0);
      }

LABEL_4:
      ++v6;
      v5 = v7;
      if (v6 == v27)
      {
        return;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }
}

double PromptCompletion.TextContent.init(value:annotations:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = 0.0;
  *(a4 + 24) = xmmword_1ABA1D8C0;
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

double PromptCompletion.modelInformation.getter@<D0>(uint64_t *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;

  return result;
}

__n128 PromptCompletion.modelInformation.setter(__n128 *a1)
{
  v4 = *a1;
  v2 = a1[1].n128_u64[0];

  result = v4;
  *v1 = v4;
  v1[1].n128_u64[0] = v2;
  return result;
}

double PromptCompletion.promptModeration.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 24);

  return result;
}

uint64_t PromptCompletion.promptModeration.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 24) = v2;
  return result;
}

uint64_t PromptCompletion.candidates.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

__n128 PromptCompletion.usage.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *(v1 + 40);
  *a1 = result;
  return result;
}

__n128 PromptCompletion.usage.setter(__n128 *a1)
{
  result = *a1;
  *(v1 + 40) = *a1;
  return result;
}

id PromptCompletion.metadata.getter()
{
  v6[5] = *MEMORY[0x1E69E9840];
  v0 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v6[0] = 0;
  v2 = [v0 JSONObjectWithData:isa options:0 error:v6];

  v3 = v6[0];
  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
    swift_dynamicCast();
    return v6[0];
  }

  else
  {
    v5 = v3;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t PromptCompletion.renderedPrompt.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for PromptCompletion(0) + 36);

  return outlined assign with take of Prompt.Rendering?(a1, v3);
}

uint64_t PromptCompletion.init(modelInformation:candidates:usage:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, char *a4@<X8>)
{
  v32 = a2;
  v33[1] = *MEMORY[0x1E69E9840];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV9RenderingVSgMd, &_s15TokenGeneration6PromptV9RenderingVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v28 - v8;
  v11 = *a1;
  v10 = a1[1];
  v12 = a1[2];
  v13 = a3[1];
  v30 = *a3;
  v31 = v12;
  v29 = v13;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v14 = type metadata accessor for Prompt.Rendering();
  v15 = *(*(v14 - 8) + 56);
  v15(v9, 1, 1, v14);
  v16 = objc_opt_self();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v33[0] = 0;
  v18 = [v16 dataWithJSONObject:isa options:0 error:v33];

  v19 = v33[0];
  if (!v18)
  {
    v27 = v19;

    _convertNSErrorToError(_:)();

    swift_willThrow();
    __break(1u);
  }

  v20 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  *(a4 + 3) = 0;
  v23 = *(type metadata accessor for PromptCompletion(0) + 36);
  v15(&a4[v23], 1, 1, v14);
  *a4 = v11;
  *(a4 + 1) = v10;
  *(a4 + 2) = v31;

  v24 = v32;
  *(a4 + 3) = 0;
  *(a4 + 4) = v24;
  v25 = v29;
  *(a4 + 5) = v30;
  *(a4 + 6) = v25;
  *(a4 + 7) = v20;
  *(a4 + 8) = v22;
  return outlined assign with take of Prompt.Rendering?(v9, &a4[v23]);
}

uint64_t PromptCompletion.init(modelInformation:promptModeration:candidates:usage:metadata:renderedPrompt:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v27[1] = *MEMORY[0x1E69E9840];
  v9 = *a1;
  v8 = a1[1];
  v10 = a1[2];
  v11 = *a2;
  v13 = *a4;
  v12 = a4[1];
  v14 = objc_opt_self();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v27[0] = 0;
  v16 = [v14 dataWithJSONObject:isa options:0 error:v27];

  if (!v16)
  {
    v24 = v27[0];

    _convertNSErrorToError(_:)();

    swift_willThrow();
    __break(1u);
  }

  v17 = v27[0];

  v18 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  *(a7 + 3) = 0;
  v21 = *(type metadata accessor for PromptCompletion(0) + 36);
  v22 = type metadata accessor for Prompt.Rendering();
  (*(*(v22 - 8) + 56))(&a7[v21], 1, 1, v22);
  *a7 = v9;
  *(a7 + 1) = v8;
  *(a7 + 2) = v10;

  *(a7 + 3) = v11;
  *(a7 + 4) = a3;
  *(a7 + 5) = v13;
  *(a7 + 6) = v12;
  *(a7 + 7) = v18;
  *(a7 + 8) = v20;
  return outlined assign with take of Prompt.Rendering?(a6, &a7[v21]);
}

uint64_t PromptCompletion.init(modelInformation:candidates:usage:renderedPrompt:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v30 = a2;
  v31[1] = *MEMORY[0x1E69E9840];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV9RenderingVSgMd, &_s15TokenGeneration6PromptV9RenderingVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v28 - v10;
  v13 = *a1;
  v12 = a1[1];
  v29 = a1[2];
  v15 = *a3;
  v14 = a3[1];
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a4, v11, &_s15TokenGeneration6PromptV9RenderingVSgMd, &_s15TokenGeneration6PromptV9RenderingVSgMR);
  v16 = objc_opt_self();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v31[0] = 0;
  v18 = [v16 dataWithJSONObject:isa options:0 error:v31];

  v19 = v31[0];
  if (!v18)
  {
    v27 = v19;

    _convertNSErrorToError(_:)();

    swift_willThrow();
    __break(1u);
  }

  v20 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(a4, &_s15TokenGeneration6PromptV9RenderingVSgMd, &_s15TokenGeneration6PromptV9RenderingVSgMR);
  *(a5 + 3) = 0;
  v23 = *(type metadata accessor for PromptCompletion(0) + 36);
  v24 = type metadata accessor for Prompt.Rendering();
  (*(*(v24 - 8) + 56))(&a5[v23], 1, 1, v24);
  *a5 = v13;
  *(a5 + 1) = v12;
  *(a5 + 2) = v29;

  v25 = v30;
  *(a5 + 3) = 0;
  *(a5 + 4) = v25;
  *(a5 + 5) = v15;
  *(a5 + 6) = v14;
  *(a5 + 7) = v20;
  *(a5 + 8) = v22;
  return outlined assign with take of Prompt.Rendering?(v11, &a5[v23]);
}

uint64_t PromptCompletion.init(modelInformation:promptModeration:candidates:usage:renderedPrompt:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v34 = a3;
  v35[1] = *MEMORY[0x1E69E9840];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV9RenderingVSgMd, &_s15TokenGeneration6PromptV9RenderingVSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v32 - v12;
  v14 = *a1;
  v15 = a1[1];
  v16 = a1[2];
  v17 = *a2;
  v32 = v14;
  v33 = v17;
  v18 = *a4;
  v19 = a4[1];
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a5, v13, &_s15TokenGeneration6PromptV9RenderingVSgMd, &_s15TokenGeneration6PromptV9RenderingVSgMR);
  v20 = objc_opt_self();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v35[0] = 0;
  v22 = [v20 dataWithJSONObject:isa options:0 error:v35];

  if (!v22)
  {
    v31 = v35[0];

    _convertNSErrorToError(_:)();

    swift_willThrow();
    __break(1u);
  }

  v23 = v35[0];

  v24 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;

  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(a5, &_s15TokenGeneration6PromptV9RenderingVSgMd, &_s15TokenGeneration6PromptV9RenderingVSgMR);
  *(a6 + 3) = 0;
  v27 = *(type metadata accessor for PromptCompletion(0) + 36);
  v28 = type metadata accessor for Prompt.Rendering();
  (*(*(v28 - 8) + 56))(&a6[v27], 1, 1, v28);
  *a6 = v32;
  *(a6 + 1) = v15;
  *(a6 + 2) = v16;

  v29 = v34;
  *(a6 + 3) = v33;
  *(a6 + 4) = v29;
  *(a6 + 5) = v18;
  *(a6 + 6) = v19;
  *(a6 + 7) = v24;
  *(a6 + 8) = v26;
  return outlined assign with take of Prompt.Rendering?(v13, &a6[v27]);
}

uint64_t PromptCompletion.Candidate.segments.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t PromptCompletion.Candidate.toolCalls.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

double PromptCompletion.Candidate.moderation.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 16);

  return result;
}

uint64_t PromptCompletion.Candidate.moderation.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 16) = v2;
  return result;
}

uint64_t PromptCompletion.Candidate.finishReason.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  *a1 = v2;
  a1[1] = v3;
  return outlined copy of FinishReason(v2, v3);
}

uint64_t PromptCompletion.Candidate.finishReason.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = outlined consume of FinishReason(*(v1 + 24), *(v1 + 32));
  *(v1 + 24) = v2;
  *(v1 + 32) = v3;
  return result;
}

id PromptCompletion.Candidate.metadata.getter()
{
  v6[5] = *MEMORY[0x1E69E9840];
  v0 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v6[0] = 0;
  v2 = [v0 JSONObjectWithData:isa options:0 error:v6];

  v3 = v6[0];
  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
    swift_dynamicCast();
    return v6[0];
  }

  else
  {
    v5 = v3;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void PromptCompletion.Candidate.init(segments:toolCalls:finishReason:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v8 = *a3;
  v9 = a3[1];
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v10 = objc_opt_self();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v18[0] = 0;
  v12 = [v10 dataWithJSONObject:isa options:0 error:v18];

  v13 = v18[0];
  if (!v12)
  {
    v17 = v13;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    __break(1u);
  }

  v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  *a4 = a1;
  a4[1] = a2;
  a4[2] = 0;
  a4[3] = v8;
  a4[4] = v9;
  a4[5] = v14;
  a4[6] = v16;
}

void PromptCompletion.Candidate.init(segments:toolCalls:moderation:finishReason:metadata:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, void *a6@<X8>)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v9 = *a3;
  v10 = *a4;
  v11 = a4[1];
  v12 = objc_opt_self();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v20[0] = 0;
  v14 = [v12 dataWithJSONObject:isa options:0 error:v20];

  v15 = v20[0];
  if (!v14)
  {
    v19 = v15;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    __break(1u);
  }

  v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  *a6 = a1;
  a6[1] = a2;
  a6[2] = v9;
  a6[3] = v10;
  a6[4] = v11;
  a6[5] = v16;
  a6[6] = v18;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ15TokenGeneration41Promptkit_Wireformat_RecursiveSchemaFieldV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Promptkit_Wireformat_JSONSchema(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v73 = (&v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMd, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = (&v65 - v8);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSg_ADtMd, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v74);
  v77 = &v65 - v10;
  v11 = type metadata accessor for Promptkit_Wireformat_RecursiveSchema(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v78 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration36Promptkit_Wireformat_RecursiveSchemaVSgMd, &_s15TokenGeneration36Promptkit_Wireformat_RecursiveSchemaVSgMR);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v79 = &v65 - v15;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration36Promptkit_Wireformat_RecursiveSchemaVSg_ADtMd, &_s15TokenGeneration36Promptkit_Wireformat_RecursiveSchemaVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v80);
  v17 = &v65 - v16;
  v75 = type metadata accessor for Promptkit_Wireformat_RecursiveSchemaField(0);
  MEMORY[0x1EEE9AC00](v75);
  v82 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v65 - v21;
  v23 = *(a1 + 16);
  if (v23 != *(a2 + 16))
  {
    goto LABEL_51;
  }

  if (!v23 || a1 == a2)
  {
    v60 = 1;
    return v60 & 1;
  }

  v69 = v4;
  v24 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v25 = a1 + v24;
  v81 = a2 + v24;
  v71 = &v65 - v21;
  v72 = (v12 + 48);
  v66 = v17;
  v67 = (v5 + 48);
  v70 = *(v20 + 72);
  v26 = v75;
  while (1)
  {
    outlined init with copy of PromptCompletion.Content(v25, v22, type metadata accessor for Promptkit_Wireformat_RecursiveSchemaField);
    v27 = v82;
    outlined init with copy of PromptCompletion.Content(v81, v82, type metadata accessor for Promptkit_Wireformat_RecursiveSchemaField);
    v28 = *(v22 + 1);
    v29 = *(v27 + 8);
    if (v28)
    {
      if (!v29 || (*v22 != *v82 || v28 != v29) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_50;
      }
    }

    else if (v29)
    {
      goto LABEL_50;
    }

    v30 = *(v22 + 3);
    v31 = *(v82 + 24);
    if (v30)
    {
      if (!v31 || (*(v22 + 2) != *(v82 + 16) || v30 != v31) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_50;
      }
    }

    else if (v31)
    {
      goto LABEL_50;
    }

    v32 = v22[32];
    v33 = *(v82 + 32);
    if (v32 == 2)
    {
      if (v33 != 2)
      {
        goto LABEL_50;
      }
    }

    else if (v33 == 2 || ((v32 ^ v33) & 1) != 0)
    {
      goto LABEL_50;
    }

    v76 = v23;
    v34 = *(v26 + 28);
    v35 = *(v80 + 48);
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(&v22[v34], v17, &_s15TokenGeneration36Promptkit_Wireformat_RecursiveSchemaVSgMd, &_s15TokenGeneration36Promptkit_Wireformat_RecursiveSchemaVSgMR);
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v82 + v34, &v17[v35], &_s15TokenGeneration36Promptkit_Wireformat_RecursiveSchemaVSgMd, &_s15TokenGeneration36Promptkit_Wireformat_RecursiveSchemaVSgMR);
    v36 = *v72;
    if ((*v72)(v17, 1, v11) != 1)
    {
      break;
    }

    v37 = v36(&v17[v35], 1, v11);
    v22 = v71;
    if (v37 != 1)
    {
      goto LABEL_44;
    }

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, &_s15TokenGeneration36Promptkit_Wireformat_RecursiveSchemaVSgMd, &_s15TokenGeneration36Promptkit_Wireformat_RecursiveSchemaVSgMR);
    v38 = v76;
LABEL_39:
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Prompt.ToolCall and conformance Prompt.ToolCall(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v59 = v82;
    v60 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of PromptCompletion.FileContent(v59, type metadata accessor for Promptkit_Wireformat_RecursiveSchemaField);
    outlined destroy of PromptCompletion.FileContent(v22, type metadata accessor for Promptkit_Wireformat_RecursiveSchemaField);
    if (v60)
    {
      v81 += v70;
      v25 += v70;
      v23 = v38 - 1;
      if (v23)
      {
        continue;
      }
    }

    return v60 & 1;
  }

  v68 = v25;
  v39 = v79;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, v79, &_s15TokenGeneration36Promptkit_Wireformat_RecursiveSchemaVSgMd, &_s15TokenGeneration36Promptkit_Wireformat_RecursiveSchemaVSgMR);
  v40 = v11;
  if (v36(&v17[v35], 1, v11) == 1)
  {
    outlined destroy of PromptCompletion.FileContent(v39, type metadata accessor for Promptkit_Wireformat_RecursiveSchema);
    v22 = v71;
LABEL_44:
    v61 = &_s15TokenGeneration36Promptkit_Wireformat_RecursiveSchemaVSg_ADtMd;
    v62 = &_s15TokenGeneration36Promptkit_Wireformat_RecursiveSchemaVSg_ADtMR;
    v63 = v17;
    goto LABEL_49;
  }

  v41 = &v17[v35];
  v42 = v78;
  _s15TokenGeneration16PromptCompletionV7ContentOWObTm_0(v41, v78, type metadata accessor for Promptkit_Wireformat_RecursiveSchema);
  v43 = *(v74 + 48);
  v44 = v77;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v39, v77, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMd, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMR);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v42, v44 + v43, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMd, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMR);
  v45 = *v67;
  v46 = v69;
  v47 = (*v67)(v44, 1, v69);
  v22 = v71;
  if (v47 == 1)
  {
    v48 = v45(v44 + v43, 1, v46);
    v38 = v76;
    if (v48 != 1)
    {
      goto LABEL_47;
    }

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v44, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMd, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMR);
    v49 = v78;
    v11 = v40;
LABEL_38:
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Prompt.ToolCall and conformance Prompt.ToolCall(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v57 = v79;
    v58 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of PromptCompletion.FileContent(v49, type metadata accessor for Promptkit_Wireformat_RecursiveSchema);
    outlined destroy of PromptCompletion.FileContent(v57, type metadata accessor for Promptkit_Wireformat_RecursiveSchema);
    v17 = v66;
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v66, &_s15TokenGeneration36Promptkit_Wireformat_RecursiveSchemaVSgMd, &_s15TokenGeneration36Promptkit_Wireformat_RecursiveSchemaVSgMR);
    v26 = v75;
    v25 = v68;
    if ((v58 & 1) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_39;
  }

  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v44, v9, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMd, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMR);
  v50 = v45(v44 + v43, 1, v46);
  v38 = v76;
  if (v50 != 1)
  {
    v51 = v73;
    _s15TokenGeneration16PromptCompletionV7ContentOWObTm_0(v44 + v43, v73, type metadata accessor for Promptkit_Wireformat_JSONSchema);
    v52 = *v9;
    v53 = *v51;
    v54 = *v51 & 0xF000000000000007;
    if ((~*v9 & 0xF000000000000007) != 0)
    {
      v49 = v78;
      if (v54 == 0xF000000000000007 || (v11 = v40, outlined copy of Promptkit_Wireformat_JsonschemaEnum?(*v51), outlined copy of Promptkit_Wireformat_JsonschemaEnum?(v52), v55 = static Promptkit_Wireformat_JsonschemaEnum.== infix(_:_:)(v52, v53), outlined consume of Promptkit_Wireformat_JsonschemaEnum?(v53), outlined consume of Promptkit_Wireformat_JsonschemaEnum?(v52), (v55 & 1) == 0))
      {
LABEL_45:
        outlined destroy of PromptCompletion.FileContent(v51, type metadata accessor for Promptkit_Wireformat_JSONSchema);
        outlined destroy of PromptCompletion.FileContent(v9, type metadata accessor for Promptkit_Wireformat_JSONSchema);
        outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v77, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMd, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMR);
        goto LABEL_48;
      }
    }

    else
    {
      v49 = v78;
      v11 = v40;
      if (v54 != 0xF000000000000007)
      {
        goto LABEL_45;
      }
    }

    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Prompt.ToolCall and conformance Prompt.ToolCall(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v56 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of PromptCompletion.FileContent(v51, type metadata accessor for Promptkit_Wireformat_JSONSchema);
    outlined destroy of PromptCompletion.FileContent(v9, type metadata accessor for Promptkit_Wireformat_JSONSchema);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v77, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMd, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMR);
    if ((v56 & 1) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_38;
  }

  outlined destroy of PromptCompletion.FileContent(v9, type metadata accessor for Promptkit_Wireformat_JSONSchema);
LABEL_47:
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v44, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSg_ADtMd, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSg_ADtMR);
  v49 = v78;
LABEL_48:
  outlined destroy of PromptCompletion.FileContent(v49, type metadata accessor for Promptkit_Wireformat_RecursiveSchema);
  outlined destroy of PromptCompletion.FileContent(v79, type metadata accessor for Promptkit_Wireformat_RecursiveSchema);
  v61 = &_s15TokenGeneration36Promptkit_Wireformat_RecursiveSchemaVSgMd;
  v62 = &_s15TokenGeneration36Promptkit_Wireformat_RecursiveSchemaVSgMR;
  v63 = v66;
LABEL_49:
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v63, v61, v62);
LABEL_50:
  outlined destroy of PromptCompletion.FileContent(v82, type metadata accessor for Promptkit_Wireformat_RecursiveSchemaField);
  outlined destroy of PromptCompletion.FileContent(v22, type metadata accessor for Promptkit_Wireformat_RecursiveSchemaField);
LABEL_51:
  v60 = 0;
  return v60 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ15TokenGeneration36Promptkit_Wireformat_RecursiveSchemaV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v46 = type metadata accessor for Promptkit_Wireformat_JSONSchema(0);
  v4 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v44 = (&v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMd, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v47 = (&v40 - v7);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSg_ADtMd, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v45);
  v9 = &v40 - v8;
  v43 = type metadata accessor for Promptkit_Wireformat_RecursiveSchema(0);
  MEMORY[0x1EEE9AC00](v43);
  v48 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v49 = &v40 - v13;
  v14 = *(a1 + 16);
  if (v14 != *(a2 + 16))
  {
LABEL_26:
    v36 = 0;
    return v36 & 1;
  }

  if (!v14 || a1 == a2)
  {
    v36 = 1;
    return v36 & 1;
  }

  v42 = v9;
  v15 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v16 = a1 + v15;
  v17 = a2 + v15;
  v18 = (v4 + 48);
  v19 = *(v12 + 72);
  v40 = v18;
  v41 = v19;
  v20 = v46;
  while (1)
  {
    result = outlined init with copy of PromptCompletion.Content(v16, v49, type metadata accessor for Promptkit_Wireformat_RecursiveSchema);
    if (!v14)
    {
      break;
    }

    v22 = v48;
    outlined init with copy of PromptCompletion.Content(v17, v48, type metadata accessor for Promptkit_Wireformat_RecursiveSchema);
    v23 = *(v45 + 48);
    v24 = v42;
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v49, v42, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMd, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMR);
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v22, v24 + v23, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMd, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMR);
    v25 = *v18;
    if ((*v18)(v24, 1, v20) == 1)
    {
      if (v25(v24 + v23, 1, v20) != 1)
      {
        goto LABEL_23;
      }

      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v24, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMd, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMR);
    }

    else
    {
      outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v24, v47, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMd, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMR);
      if (v25(v24 + v23, 1, v20) == 1)
      {
        outlined destroy of PromptCompletion.FileContent(v47, type metadata accessor for Promptkit_Wireformat_JSONSchema);
LABEL_23:
        v38 = &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSg_ADtMd;
        v39 = &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSg_ADtMR;
        goto LABEL_24;
      }

      v26 = v44;
      _s15TokenGeneration16PromptCompletionV7ContentOWObTm_0(v24 + v23, v44, type metadata accessor for Promptkit_Wireformat_JSONSchema);
      v27 = *v47;
      v28 = *v26;
      v29 = *v26 & 0xF000000000000007;
      if ((~*v47 & 0xF000000000000007) != 0)
      {
        if (v29 == 0xF000000000000007 || (outlined copy of Promptkit_Wireformat_JsonschemaEnum?(*v26), outlined copy of Promptkit_Wireformat_JsonschemaEnum?(v27), v30 = static Promptkit_Wireformat_JsonschemaEnum.== infix(_:_:)(v27, v28), outlined consume of Promptkit_Wireformat_JsonschemaEnum?(v28), outlined consume of Promptkit_Wireformat_JsonschemaEnum?(v27), (v30 & 1) == 0))
        {
LABEL_21:
          outlined destroy of PromptCompletion.FileContent(v44, type metadata accessor for Promptkit_Wireformat_JSONSchema);
          outlined destroy of PromptCompletion.FileContent(v47, type metadata accessor for Promptkit_Wireformat_JSONSchema);
          v38 = &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMd;
          v39 = &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMR;
LABEL_24:
          outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v24, v38, v39);
LABEL_25:
          outlined destroy of PromptCompletion.FileContent(v48, type metadata accessor for Promptkit_Wireformat_RecursiveSchema);
          outlined destroy of PromptCompletion.FileContent(v49, type metadata accessor for Promptkit_Wireformat_RecursiveSchema);
          goto LABEL_26;
        }
      }

      else if (v29 != 0xF000000000000007)
      {
        goto LABEL_21;
      }

      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Prompt.ToolCall and conformance Prompt.ToolCall(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v31 = v47;
      v32 = v44;
      v33 = dispatch thunk of static Equatable.== infix(_:_:)();
      outlined destroy of PromptCompletion.FileContent(v32, type metadata accessor for Promptkit_Wireformat_JSONSchema);
      outlined destroy of PromptCompletion.FileContent(v31, type metadata accessor for Promptkit_Wireformat_JSONSchema);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v24, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMd, &_s15TokenGeneration31Promptkit_Wireformat_JSONSchemaVSgMR);
      v18 = v40;
      if ((v33 & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Prompt.ToolCall and conformance Prompt.ToolCall(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v34 = v48;
    v35 = v49;
    v36 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of PromptCompletion.FileContent(v34, type metadata accessor for Promptkit_Wireformat_RecursiveSchema);
    outlined destroy of PromptCompletion.FileContent(v35, type metadata accessor for Promptkit_Wireformat_RecursiveSchema);
    if (v36)
    {
      v17 += v41;
      v16 += v41;
      v37 = v14-- == 1;
      v20 = v46;
      if (!v37)
      {
        continue;
      }
    }

    return v36 & 1;
  }

  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZSd_Tt1g5(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZs5Int32V_Tt1g5(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ15TokenGeneration35Promptkit_Wireformat_ToolDefinitionV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Promptkit_Wireformat_ToolDefinitionTypeEnum(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumOSgMd, &_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumOSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v50 - v9;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumOSg_ADtMd, &_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumOSg_ADtMR);
  MEMORY[0x1EEE9AC00](v55);
  v63 = &v50 - v11;
  v58 = type metadata accessor for Promptkit_Wireformat_ToolDefinitionType(0);
  v12 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v60 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration39Promptkit_Wireformat_ToolDefinitionTypeVSgMd, &_s15TokenGeneration39Promptkit_Wireformat_ToolDefinitionTypeVSgMR);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v61 = &v50 - v15;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration39Promptkit_Wireformat_ToolDefinitionTypeVSg_ADtMd, &_s15TokenGeneration39Promptkit_Wireformat_ToolDefinitionTypeVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v62);
  v17 = &v50 - v16;
  v59 = type metadata accessor for Promptkit_Wireformat_ToolDefinition(0);
  MEMORY[0x1EEE9AC00](v59);
  v19 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v65 = &v50 - v22;
  v23 = *(a1 + 16);
  if (v23 != *(a2 + 16))
  {
LABEL_26:
    v49 = 0;
    return v49 & 1;
  }

  if (!v23 || a1 == a2)
  {
    v49 = 1;
    return v49 & 1;
  }

  v50 = v7;
  v51 = v10;
  v53 = v4;
  v54 = v19;
  v24 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v25 = a1 + v24;
  v26 = a2 + v24;
  v27 = (v12 + 48);
  v52 = (v5 + 48);
  v56 = *(v21 + 72);
  v57 = v27;
  v28 = v58;
  while (1)
  {
    v29 = v65;
    result = outlined init with copy of PromptCompletion.Content(v25, v65, type metadata accessor for Promptkit_Wireformat_ToolDefinition);
    if (!v23)
    {
      break;
    }

    v64 = v23;
    outlined init with copy of PromptCompletion.Content(v26, v19, type metadata accessor for Promptkit_Wireformat_ToolDefinition);
    v31 = *(v62 + 48);
    v32 = v17;
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v29, v17, &_s15TokenGeneration39Promptkit_Wireformat_ToolDefinitionTypeVSgMd, &_s15TokenGeneration39Promptkit_Wireformat_ToolDefinitionTypeVSgMR);
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v19, &v17[v31], &_s15TokenGeneration39Promptkit_Wireformat_ToolDefinitionTypeVSgMd, &_s15TokenGeneration39Promptkit_Wireformat_ToolDefinitionTypeVSgMR);
    v33 = *v27;
    if ((*v27)(v17, 1, v28) == 1)
    {
      if (v33(&v17[v31], 1, v28) != 1)
      {
        goto LABEL_21;
      }

      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, &_s15TokenGeneration39Promptkit_Wireformat_ToolDefinitionTypeVSgMd, &_s15TokenGeneration39Promptkit_Wireformat_ToolDefinitionTypeVSgMR);
    }

    else
    {
      v34 = v61;
      outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, v61, &_s15TokenGeneration39Promptkit_Wireformat_ToolDefinitionTypeVSgMd, &_s15TokenGeneration39Promptkit_Wireformat_ToolDefinitionTypeVSgMR);
      if (v33(&v17[v31], 1, v28) == 1)
      {
        outlined destroy of PromptCompletion.FileContent(v34, type metadata accessor for Promptkit_Wireformat_ToolDefinitionType);
        v19 = v54;
LABEL_21:
        outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, &_s15TokenGeneration39Promptkit_Wireformat_ToolDefinitionTypeVSg_ADtMd, &_s15TokenGeneration39Promptkit_Wireformat_ToolDefinitionTypeVSg_ADtMR);
        goto LABEL_25;
      }

      v35 = v60;
      _s15TokenGeneration16PromptCompletionV7ContentOWObTm_0(&v17[v31], v60, type metadata accessor for Promptkit_Wireformat_ToolDefinitionType);
      v36 = *(v55 + 48);
      v37 = v63;
      outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v34, v63, &_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumOSgMd, &_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumOSgMR);
      outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v35, v37 + v36, &_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumOSgMd, &_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumOSgMR);
      v38 = *v52;
      v39 = v37;
      v40 = v53;
      if ((*v52)(v39, 1, v53) == 1)
      {
        if (v38(v63 + v36, 1, v40) != 1)
        {
          goto LABEL_23;
        }

        outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v63, &_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumOSgMd, &_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumOSgMR);
      }

      else
      {
        v41 = v63;
        v42 = v51;
        outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v63, v51, &_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumOSgMd, &_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumOSgMR);
        if (v38(v41 + v36, 1, v40) == 1)
        {
          outlined destroy of PromptCompletion.FileContent(v42, type metadata accessor for Promptkit_Wireformat_ToolDefinitionTypeEnum);
          v17 = v32;
LABEL_23:
          outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v63, &_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumOSg_ADtMd, &_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumOSg_ADtMR);
LABEL_24:
          outlined destroy of PromptCompletion.FileContent(v60, type metadata accessor for Promptkit_Wireformat_ToolDefinitionType);
          outlined destroy of PromptCompletion.FileContent(v61, type metadata accessor for Promptkit_Wireformat_ToolDefinitionType);
          outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, &_s15TokenGeneration39Promptkit_Wireformat_ToolDefinitionTypeVSgMd, &_s15TokenGeneration39Promptkit_Wireformat_ToolDefinitionTypeVSgMR);
          v19 = v54;
LABEL_25:
          outlined destroy of PromptCompletion.FileContent(v19, type metadata accessor for Promptkit_Wireformat_ToolDefinition);
          outlined destroy of PromptCompletion.FileContent(v65, type metadata accessor for Promptkit_Wireformat_ToolDefinition);
          goto LABEL_26;
        }

        v43 = v50;
        _s15TokenGeneration16PromptCompletionV7ContentOWObTm_0(v41 + v36, v50, type metadata accessor for Promptkit_Wireformat_ToolDefinitionTypeEnum);
        v44 = specialized static Promptkit_Wireformat_ToolDefinitionTypeEnum.== infix(_:_:)(v42, v43);
        outlined destroy of PromptCompletion.FileContent(v43, type metadata accessor for Promptkit_Wireformat_ToolDefinitionTypeEnum);
        outlined destroy of PromptCompletion.FileContent(v42, type metadata accessor for Promptkit_Wireformat_ToolDefinitionTypeEnum);
        outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v41, &_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumOSgMd, &_s15TokenGeneration43Promptkit_Wireformat_ToolDefinitionTypeEnumOSgMR);
        v17 = v32;
        if ((v44 & 1) == 0)
        {
          goto LABEL_24;
        }
      }

      v28 = v58;
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Prompt.ToolCall and conformance Prompt.ToolCall(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v45 = v60;
      v46 = v61;
      v47 = dispatch thunk of static Equatable.== infix(_:_:)();
      outlined destroy of PromptCompletion.FileContent(v45, type metadata accessor for Promptkit_Wireformat_ToolDefinitionType);
      outlined destroy of PromptCompletion.FileContent(v46, type metadata accessor for Promptkit_Wireformat_ToolDefinitionType);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v17, &_s15TokenGeneration39Promptkit_Wireformat_ToolDefinitionTypeVSgMd, &_s15TokenGeneration39Promptkit_Wireformat_ToolDefinitionTypeVSgMR);
      v19 = v54;
      if ((v47 & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Prompt.ToolCall and conformance Prompt.ToolCall(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v48 = v65;
    v49 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of PromptCompletion.FileContent(v19, type metadata accessor for Promptkit_Wireformat_ToolDefinition);
    outlined destroy of PromptCompletion.FileContent(v48, type metadata accessor for Promptkit_Wireformat_ToolDefinition);
    if (v49)
    {
      v23 = v64 - 1;
      v27 = v57;
      v26 += v56;
      v25 += v56;
      if (v64 != 1)
      {
        continue;
      }
    }

    return v49 & 1;
  }

  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ15TokenGeneration29Promptkit_Wireformat_ModalityV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Promptkit_Wireformat_Modality(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v20 - v9);
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (v11 && a1 != a2)
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      while (1)
      {
        outlined init with copy of PromptCompletion.Content(v13, v10, type metadata accessor for Promptkit_Wireformat_Modality);
        outlined init with copy of PromptCompletion.Content(v14, v6, type metadata accessor for Promptkit_Wireformat_Modality);
        v16 = v10[1];
        v17 = v6[1];
        if (v16)
        {
          if (!v17 || (*v10 != *v6 || v16 != v17) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
LABEL_16:
            outlined destroy of PromptCompletion.FileContent(v6, type metadata accessor for Promptkit_Wireformat_Modality);
            outlined destroy of PromptCompletion.FileContent(v10, type metadata accessor for Promptkit_Wireformat_Modality);
            goto LABEL_17;
          }
        }

        else if (v17)
        {
          goto LABEL_16;
        }

        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type Prompt.ToolCall and conformance Prompt.ToolCall(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        v18 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of PromptCompletion.FileContent(v6, type metadata accessor for Promptkit_Wireformat_Modality);
        outlined destroy of PromptCompletion.FileContent(v10, type metadata accessor for Promptkit_Wireformat_Modality);
        if (v18)
        {
          v14 += v15;
          v13 += v15;
          if (--v11)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v18 = 1;
  }

  else
  {
LABEL_17:
    v18 = 0;
  }

  return v18 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ15TokenGeneration36Promptkit_Wireformat_PromptComponentV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Promptkit_Wireformat_ValueEnum(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v66 = (&v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v60 - v8;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSg_ADtMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSg_ADtMR);
  MEMORY[0x1EEE9AC00](v71);
  v72 = &v60 - v10;
  v77 = type metadata accessor for Promptkit_Wireformat_PromptComponentValue(0);
  v11 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v73 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVSgMd, &_s15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVSgMR);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v74 = &v60 - v14;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVSg_ADtMd, &_s15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v75);
  v16 = &v60 - v15;
  v17 = type metadata accessor for Promptkit_Wireformat_PromptComponent(0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v60 - v23;
  v25 = *(a1 + 16);
  if (v25 != *(a2 + 16))
  {
    goto LABEL_36;
  }

  if (!v25 || a1 == a2)
  {
    v56 = 1;
    return v56 & 1;
  }

  v67 = v21;
  v68 = v16;
  v61 = v9;
  v62 = v4;
  v26 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v27 = a1 + v26;
  v28 = a2 + v26;
  v69 = &v60 - v23;
  v70 = (v11 + 48);
  v29 = *(v22 + 72);
  v64 = (v5 + 48);
  v65 = v29;
  v63 = v19;
  while (1)
  {
    outlined init with copy of PromptCompletion.Content(v27, v24, type metadata accessor for Promptkit_Wireformat_PromptComponent);
    v76 = v27;
    outlined init with copy of PromptCompletion.Content(v28, v19, type metadata accessor for Promptkit_Wireformat_PromptComponent);
    v30 = *(v75 + 48);
    v31 = v68;
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v24, v68, &_s15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVSgMd, &_s15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVSgMR);
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v19, v31 + v30, &_s15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVSgMd, &_s15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVSgMR);
    v32 = *v70;
    v33 = v77;
    if ((*v70)(v31, 1, v77) != 1)
    {
      break;
    }

    if (v32(v31 + v30, 1, v33) != 1)
    {
      goto LABEL_30;
    }

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v31, &_s15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVSgMd, &_s15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVSgMR);
    v34 = v67;
    v24 = v69;
LABEL_15:
    v48 = *(v34 + 20);
    v49 = &v24[v48];
    v50 = v24[v48 + 4];
    v51 = &v19[v48];
    v52 = v19[v48 + 4];
    if (v50)
    {
      if (!v52)
      {
        goto LABEL_35;
      }
    }

    else
    {
      if (*v49 != *v51)
      {
        LOBYTE(v52) = 1;
      }

      if (v52)
      {
        goto LABEL_35;
      }
    }

    v53 = *(v34 + 24);
    v54 = v24[v53];
    v55 = v19[v53];
    if (v54 == 3)
    {
      if (v55 != 3)
      {
        goto LABEL_35;
      }
    }

    else if (v54 != v55)
    {
      goto LABEL_35;
    }

    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Prompt.ToolCall and conformance Prompt.ToolCall(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v56 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of PromptCompletion.FileContent(v19, type metadata accessor for Promptkit_Wireformat_PromptComponent);
    outlined destroy of PromptCompletion.FileContent(v24, type metadata accessor for Promptkit_Wireformat_PromptComponent);
    if (v56)
    {
      v28 += v65;
      v27 = v76 + v65;
      if (--v25)
      {
        continue;
      }
    }

    return v56 & 1;
  }

  v35 = v74;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v31, v74, &_s15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVSgMd, &_s15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVSgMR);
  if (v32(v31 + v30, 1, v33) == 1)
  {
    outlined destroy of PromptCompletion.FileContent(v35, type metadata accessor for Promptkit_Wireformat_PromptComponentValue);
    v19 = v63;
LABEL_30:
    v57 = &_s15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVSg_ADtMd;
    v58 = &_s15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVSg_ADtMR;
    goto LABEL_34;
  }

  v36 = v73;
  _s15TokenGeneration16PromptCompletionV7ContentOWObTm_0(v31 + v30, v73, type metadata accessor for Promptkit_Wireformat_PromptComponentValue);
  v37 = v72;
  v38 = *(v71 + 48);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v35, v72, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v36, v37 + v38, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
  v39 = *v64;
  v40 = v62;
  if ((*v64)(v37, 1, v62) == 1)
  {
    v41 = v39(v37 + v38, 1, v40);
    v19 = v63;
    if (v41 != 1)
    {
      goto LABEL_32;
    }

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v37, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
    v42 = v74;
    goto LABEL_14;
  }

  v43 = v61;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v37, v61, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
  if (v39(v37 + v38, 1, v40) != 1)
  {
    v44 = v66;
    _s15TokenGeneration16PromptCompletionV7ContentOWObTm_0(v37 + v38, v66, type metadata accessor for Promptkit_Wireformat_ValueEnum);
    v45 = specialized static Promptkit_Wireformat_ValueEnum.== infix(_:_:)(v43, v44);
    outlined destroy of PromptCompletion.FileContent(v44, type metadata accessor for Promptkit_Wireformat_ValueEnum);
    outlined destroy of PromptCompletion.FileContent(v43, type metadata accessor for Promptkit_Wireformat_ValueEnum);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v37, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
    v42 = v74;
    v19 = v63;
    if ((v45 & 1) == 0)
    {
      goto LABEL_33;
    }

LABEL_14:
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Prompt.ToolCall and conformance Prompt.ToolCall(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v46 = v73;
    v47 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of PromptCompletion.FileContent(v46, type metadata accessor for Promptkit_Wireformat_PromptComponentValue);
    outlined destroy of PromptCompletion.FileContent(v42, type metadata accessor for Promptkit_Wireformat_PromptComponentValue);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v31, &_s15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVSgMd, &_s15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVSgMR);
    v34 = v67;
    v24 = v69;
    if ((v47 & 1) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_15;
  }

  outlined destroy of PromptCompletion.FileContent(v43, type metadata accessor for Promptkit_Wireformat_ValueEnum);
  v19 = v63;
LABEL_32:
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v37, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSg_ADtMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSg_ADtMR);
  v42 = v74;
LABEL_33:
  outlined destroy of PromptCompletion.FileContent(v73, type metadata accessor for Promptkit_Wireformat_PromptComponentValue);
  outlined destroy of PromptCompletion.FileContent(v42, type metadata accessor for Promptkit_Wireformat_PromptComponentValue);
  v57 = &_s15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVSgMd;
  v58 = &_s15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVSgMR;
LABEL_34:
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v31, v57, v58);
  v24 = v69;
LABEL_35:
  outlined destroy of PromptCompletion.FileContent(v19, type metadata accessor for Promptkit_Wireformat_PromptComponent);
  outlined destroy of PromptCompletion.FileContent(v24, type metadata accessor for Promptkit_Wireformat_PromptComponent);
LABEL_36:
  v56 = 0;
  return v56 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ15TokenGeneration31Promptkit_Wireformat_JSONSchemaV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Promptkit_Wireformat_JSONSchema(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v22 - v9);
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (v11 && a1 != a2)
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      while (1)
      {
        outlined init with copy of PromptCompletion.Content(v13, v10, type metadata accessor for Promptkit_Wireformat_JSONSchema);
        outlined init with copy of PromptCompletion.Content(v14, v6, type metadata accessor for Promptkit_Wireformat_JSONSchema);
        v16 = *v10;
        v17 = *v6;
        v18 = *v6 & 0xF000000000000007;
        if ((~*v10 & 0xF000000000000007) != 0)
        {
          if (v18 == 0xF000000000000007 || (outlined copy of Promptkit_Wireformat_JsonschemaEnum?(*v6), outlined copy of Promptkit_Wireformat_JsonschemaEnum?(v16), v19 = static Promptkit_Wireformat_JsonschemaEnum.== infix(_:_:)(v16, v17), outlined consume of Promptkit_Wireformat_JsonschemaEnum?(v17), outlined consume of Promptkit_Wireformat_JsonschemaEnum?(v16), (v19 & 1) == 0))
          {
LABEL_14:
            outlined destroy of PromptCompletion.FileContent(v6, type metadata accessor for Promptkit_Wireformat_JSONSchema);
            outlined destroy of PromptCompletion.FileContent(v10, type metadata accessor for Promptkit_Wireformat_JSONSchema);
            goto LABEL_15;
          }
        }

        else if (v18 != 0xF000000000000007)
        {
          goto LABEL_14;
        }

        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type Prompt.ToolCall and conformance Prompt.ToolCall(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        v20 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of PromptCompletion.FileContent(v6, type metadata accessor for Promptkit_Wireformat_JSONSchema);
        outlined destroy of PromptCompletion.FileContent(v10, type metadata accessor for Promptkit_Wireformat_JSONSchema);
        if (v20)
        {
          v14 += v15;
          v13 += v15;
          if (--v11)
          {
            continue;
          }
        }

        return v20 & 1;
      }
    }

    v20 = 1;
  }

  else
  {
LABEL_15:
    v20 = 0;
  }

  return v20 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ15TokenGeneration47Promptkit_Wireformat_VersionedChatMessagePromptV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration51Promptkit_Wireformat_VersionedChatMessagePromptEnumO_ACtMd, &_s15TokenGeneration51Promptkit_Wireformat_VersionedChatMessagePromptEnumO_ACtMR);
  MEMORY[0x1EEE9AC00](v34);
  v33 = &v31 - v4;
  v44 = type metadata accessor for Promptkit_Wireformat_VersionedChatMessagePromptEnum(0);
  v5 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v32 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration51Promptkit_Wireformat_VersionedChatMessagePromptEnumOSgMd, &_s15TokenGeneration51Promptkit_Wireformat_VersionedChatMessagePromptEnumOSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v42 = &v31 - v8;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration51Promptkit_Wireformat_VersionedChatMessagePromptEnumOSg_ADtMd, &_s15TokenGeneration51Promptkit_Wireformat_VersionedChatMessagePromptEnumOSg_ADtMR);
  MEMORY[0x1EEE9AC00](v40);
  v41 = &v31 - v9;
  v39 = type metadata accessor for Promptkit_Wireformat_VersionedChatMessagePrompt(0);
  MEMORY[0x1EEE9AC00](v39);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v35 = &v31 - v14;
  v15 = *(a1 + 16);
  if (v15 != *(a2 + 16))
  {
LABEL_19:
    v28 = 0;
    return v28 & 1;
  }

  if (!v15 || a1 == a2)
  {
    v28 = 1;
    return v28 & 1;
  }

  v16 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v17 = a1 + v16;
  v18 = a2 + v16;
  v37 = v11;
  v38 = (v5 + 48);
  v36 = *(v13 + 72);
  v19 = v35;
  while (1)
  {
    result = outlined init with copy of PromptCompletion.Content(v17, v19, type metadata accessor for Promptkit_Wireformat_VersionedChatMessagePrompt);
    if (!v15)
    {
      break;
    }

    v43 = v15;
    outlined init with copy of PromptCompletion.Content(v18, v11, type metadata accessor for Promptkit_Wireformat_VersionedChatMessagePrompt);
    v21 = v41;
    v22 = *(v40 + 48);
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v19, v41, &_s15TokenGeneration51Promptkit_Wireformat_VersionedChatMessagePromptEnumOSgMd, &_s15TokenGeneration51Promptkit_Wireformat_VersionedChatMessagePromptEnumOSgMR);
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v11, v21 + v22, &_s15TokenGeneration51Promptkit_Wireformat_VersionedChatMessagePromptEnumOSgMd, &_s15TokenGeneration51Promptkit_Wireformat_VersionedChatMessagePromptEnumOSgMR);
    v23 = *v38;
    if ((*v38)(v21, 1, v44) == 1)
    {
      if (v23(v21 + v22, 1, v44) != 1)
      {
        outlined destroy of PromptCompletion.FileContent(v11, type metadata accessor for Promptkit_Wireformat_VersionedChatMessagePrompt);
        v30 = v19;
        v29 = type metadata accessor for Promptkit_Wireformat_VersionedChatMessagePrompt;
        goto LABEL_17;
      }

      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v21, &_s15TokenGeneration51Promptkit_Wireformat_VersionedChatMessagePromptEnumOSgMd, &_s15TokenGeneration51Promptkit_Wireformat_VersionedChatMessagePromptEnumOSgMR);
    }

    else
    {
      outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v21, v42, &_s15TokenGeneration51Promptkit_Wireformat_VersionedChatMessagePromptEnumOSgMd, &_s15TokenGeneration51Promptkit_Wireformat_VersionedChatMessagePromptEnumOSgMR);
      if (v23(v21 + v22, 1, v44) == 1)
      {
        outlined destroy of PromptCompletion.FileContent(v11, type metadata accessor for Promptkit_Wireformat_VersionedChatMessagePrompt);
        outlined destroy of PromptCompletion.FileContent(v19, type metadata accessor for Promptkit_Wireformat_VersionedChatMessagePrompt);
        v29 = type metadata accessor for Promptkit_Wireformat_VersionedChatMessagePromptEnum;
        v30 = v42;
LABEL_17:
        outlined destroy of PromptCompletion.FileContent(v30, v29);
        outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v41, &_s15TokenGeneration51Promptkit_Wireformat_VersionedChatMessagePromptEnumOSg_ADtMd, &_s15TokenGeneration51Promptkit_Wireformat_VersionedChatMessagePromptEnumOSg_ADtMR);
        goto LABEL_19;
      }

      v24 = v32;
      _s15TokenGeneration16PromptCompletionV7ContentOWObTm_0(v21 + v22, v32, type metadata accessor for Promptkit_Wireformat_VersionedChatMessagePromptEnum);
      v25 = *(v34 + 48);
      v26 = v33;
      outlined init with copy of PromptCompletion.Content(v42, v33, type metadata accessor for Promptkit_Wireformat_VersionedChatMessagePromptEnum);
      outlined init with copy of PromptCompletion.Content(v24, v26 + v25, type metadata accessor for Promptkit_Wireformat_VersionedChatMessagePromptEnum);
      v27 = specialized static Promptkit_Wireformat_ChatMessagePromptV1.== infix(_:_:)(v26, v26 + v25);
      outlined destroy of PromptCompletion.FileContent(v24, type metadata accessor for Promptkit_Wireformat_VersionedChatMessagePromptEnum);
      outlined destroy of PromptCompletion.FileContent(v26 + v25, type metadata accessor for Promptkit_Wireformat_ChatMessagePromptV1);
      v19 = v35;
      outlined destroy of PromptCompletion.FileContent(v26, type metadata accessor for Promptkit_Wireformat_ChatMessagePromptV1);
      outlined destroy of PromptCompletion.FileContent(v42, type metadata accessor for Promptkit_Wireformat_VersionedChatMessagePromptEnum);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v21, &_s15TokenGeneration51Promptkit_Wireformat_VersionedChatMessagePromptEnumOSgMd, &_s15TokenGeneration51Promptkit_Wireformat_VersionedChatMessagePromptEnumOSgMR);
      if ((v27 & 1) == 0)
      {
        outlined destroy of PromptCompletion.FileContent(v37, type metadata accessor for Promptkit_Wireformat_VersionedChatMessagePrompt);
        outlined destroy of PromptCompletion.FileContent(v19, type metadata accessor for Promptkit_Wireformat_VersionedChatMessagePrompt);
        goto LABEL_19;
      }
    }

    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Prompt.ToolCall and conformance Prompt.ToolCall(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v11 = v37;
    v28 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of PromptCompletion.FileContent(v11, type metadata accessor for Promptkit_Wireformat_VersionedChatMessagePrompt);
    outlined destroy of PromptCompletion.FileContent(v19, type metadata accessor for Promptkit_Wireformat_VersionedChatMessagePrompt);
    if (v28)
    {
      v15 = v43 - 1;
      v18 += v36;
      v17 += v36;
      if (v43 != 1)
      {
        continue;
      }
    }

    return v28 & 1;
  }

  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ15TokenGeneration29Promptkit_Wireformat_ToolCallV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration40Promptkit_Wireformat_ToolCallContentEnumO_ACtMd, &_s15TokenGeneration40Promptkit_Wireformat_ToolCallContentEnumO_ACtMR);
  MEMORY[0x1EEE9AC00](v4);
  v79 = (&v68 - v5);
  v77 = type metadata accessor for Promptkit_Wireformat_ToolCallContentEnum(0);
  v6 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v8 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration40Promptkit_Wireformat_ToolCallContentEnumOSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ToolCallContentEnumOSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v68 - v10;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration40Promptkit_Wireformat_ToolCallContentEnumOSg_ADtMd, &_s15TokenGeneration40Promptkit_Wireformat_ToolCallContentEnumOSg_ADtMR);
  MEMORY[0x1EEE9AC00](v76);
  v78 = &v68 - v12;
  v85 = type metadata accessor for Promptkit_Wireformat_ToolCallContent(0);
  v13 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v15 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration36Promptkit_Wireformat_ToolCallContentVSgMd, &_s15TokenGeneration36Promptkit_Wireformat_ToolCallContentVSgMR);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v86 = &v68 - v17;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration36Promptkit_Wireformat_ToolCallContentVSg_ADtMd, &_s15TokenGeneration36Promptkit_Wireformat_ToolCallContentVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v80);
  v19 = &v68 - v18;
  v87 = type metadata accessor for Promptkit_Wireformat_ToolCall(0);
  MEMORY[0x1EEE9AC00](v87);
  v88 = (&v68 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v21);
  v84 = &v68 - v23;
  v24 = *(a1 + 16);
  if (v24 != *(a2 + 16))
  {
LABEL_50:
    v60 = 0;
    return v60 & 1;
  }

  if (!v24 || a1 == a2)
  {
    v60 = 1;
    return v60 & 1;
  }

  v70 = v8;
  v71 = v11;
  v68 = v4;
  v25 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v26 = a1 + v25;
  v27 = a2 + v25;
  v72 = v19;
  v73 = (v6 + 48);
  v74 = *(v22 + 72);
  v75 = (v13 + 48);
  v28 = v84;
  while (1)
  {
    result = outlined init with copy of PromptCompletion.Content(v26, v28, type metadata accessor for Promptkit_Wireformat_ToolCall);
    if (!v24)
    {
      break;
    }

    v30 = v88;
    outlined init with copy of PromptCompletion.Content(v27, v88, type metadata accessor for Promptkit_Wireformat_ToolCall);
    v31 = v28[1];
    v32 = v30[1];
    if (v31)
    {
      if (!v32 || (*v28 != *v88 || v31 != v32) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_49;
      }
    }

    else if (v32)
    {
      goto LABEL_49;
    }

    v82 = v26;
    v83 = v24;
    v81 = v27;
    v33 = v86;
    v34 = v15;
    v35 = *(v87 + 20);
    v36 = *(v80 + 48);
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v28 + v35, v19, &_s15TokenGeneration36Promptkit_Wireformat_ToolCallContentVSgMd, &_s15TokenGeneration36Promptkit_Wireformat_ToolCallContentVSgMR);
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v88 + v35, &v19[v36], &_s15TokenGeneration36Promptkit_Wireformat_ToolCallContentVSgMd, &_s15TokenGeneration36Promptkit_Wireformat_ToolCallContentVSgMR);
    v37 = *v75;
    v38 = v85;
    if ((*v75)(v19, 1, v85) == 1)
    {
      if (v37(&v19[v36], 1, v38) != 1)
      {
        goto LABEL_43;
      }

      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v19, &_s15TokenGeneration36Promptkit_Wireformat_ToolCallContentVSgMd, &_s15TokenGeneration36Promptkit_Wireformat_ToolCallContentVSgMR);
      v15 = v34;
      v40 = v81;
      v39 = v82;
      v41 = v83;
    }

    else
    {
      outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v19, v33, &_s15TokenGeneration36Promptkit_Wireformat_ToolCallContentVSgMd, &_s15TokenGeneration36Promptkit_Wireformat_ToolCallContentVSgMR);
      if (v37(&v19[v36], 1, v38) == 1)
      {
        outlined destroy of PromptCompletion.FileContent(v33, type metadata accessor for Promptkit_Wireformat_ToolCallContent);
LABEL_43:
        v65 = &_s15TokenGeneration36Promptkit_Wireformat_ToolCallContentVSg_ADtMd;
        v66 = &_s15TokenGeneration36Promptkit_Wireformat_ToolCallContentVSg_ADtMR;
        v67 = v19;
        goto LABEL_48;
      }

      v15 = v34;
      _s15TokenGeneration16PromptCompletionV7ContentOWObTm_0(&v19[v36], v34, type metadata accessor for Promptkit_Wireformat_ToolCallContent);
      v42 = *(v76 + 48);
      v43 = v78;
      outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v33, v78, &_s15TokenGeneration40Promptkit_Wireformat_ToolCallContentEnumOSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ToolCallContentEnumOSgMR);
      outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v34, v43 + v42, &_s15TokenGeneration40Promptkit_Wireformat_ToolCallContentEnumOSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ToolCallContentEnumOSgMR);
      v44 = *v73;
      v45 = v77;
      if ((*v73)(v43, 1, v77) == 1)
      {
        v46 = v44(v43 + v42, 1, v45);
        v19 = v72;
        v41 = v83;
        if (v46 != 1)
        {
          goto LABEL_45;
        }

        outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v43, &_s15TokenGeneration40Promptkit_Wireformat_ToolCallContentEnumOSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ToolCallContentEnumOSgMR);
      }

      else
      {
        v47 = v71;
        outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v43, v71, &_s15TokenGeneration40Promptkit_Wireformat_ToolCallContentEnumOSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ToolCallContentEnumOSgMR);
        v48 = v44(v43 + v42, 1, v45);
        v41 = v83;
        if (v48 == 1)
        {
          outlined destroy of PromptCompletion.FileContent(v47, type metadata accessor for Promptkit_Wireformat_ToolCallContentEnum);
          v15 = v34;
          v19 = v72;
LABEL_45:
          v62 = &_s15TokenGeneration40Promptkit_Wireformat_ToolCallContentEnumOSg_ADtMd;
          v63 = &_s15TokenGeneration40Promptkit_Wireformat_ToolCallContentEnumOSg_ADtMR;
          v64 = v43;
          goto LABEL_46;
        }

        v49 = v70;
        _s15TokenGeneration16PromptCompletionV7ContentOWObTm_0(v43 + v42, v70, type metadata accessor for Promptkit_Wireformat_ToolCallContentEnum);
        v50 = v79;
        v51 = (v79 + *(v68 + 48));
        outlined init with copy of PromptCompletion.Content(v47, v79, type metadata accessor for Promptkit_Wireformat_ToolCallContentEnum);
        outlined init with copy of PromptCompletion.Content(v49, v51, type metadata accessor for Promptkit_Wireformat_ToolCallContentEnum);
        v52 = v50[1];
        v53 = v51[1];
        v19 = v72;
        v15 = v34;
        if (v52)
        {
          v28 = v84;
          if (!v53 || (*v79 != *v51 || v52 != v53) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
LABEL_41:
            outlined destroy of PromptCompletion.FileContent(v70, type metadata accessor for Promptkit_Wireformat_ToolCallContentEnum);
            outlined destroy of PromptCompletion.FileContent(v51, type metadata accessor for Promptkit_Wireformat_ToolCallFunction);
            outlined destroy of PromptCompletion.FileContent(v79, type metadata accessor for Promptkit_Wireformat_ToolCallFunction);
            outlined destroy of PromptCompletion.FileContent(v71, type metadata accessor for Promptkit_Wireformat_ToolCallContentEnum);
            v62 = &_s15TokenGeneration40Promptkit_Wireformat_ToolCallContentEnumOSgMd;
            v63 = &_s15TokenGeneration40Promptkit_Wireformat_ToolCallContentEnumOSgMR;
            v64 = v78;
LABEL_46:
            outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v64, v62, v63);
LABEL_47:
            outlined destroy of PromptCompletion.FileContent(v15, type metadata accessor for Promptkit_Wireformat_ToolCallContent);
            outlined destroy of PromptCompletion.FileContent(v86, type metadata accessor for Promptkit_Wireformat_ToolCallContent);
            v65 = &_s15TokenGeneration36Promptkit_Wireformat_ToolCallContentVSgMd;
            v66 = &_s15TokenGeneration36Promptkit_Wireformat_ToolCallContentVSgMR;
            v67 = v19;
LABEL_48:
            outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v67, v65, v66);
LABEL_49:
            outlined destroy of PromptCompletion.FileContent(v88, type metadata accessor for Promptkit_Wireformat_ToolCall);
            outlined destroy of PromptCompletion.FileContent(v28, type metadata accessor for Promptkit_Wireformat_ToolCall);
            goto LABEL_50;
          }
        }

        else
        {
          v28 = v84;
          if (v53)
          {
            goto LABEL_41;
          }
        }

        v54 = v79[3];
        v55 = v51[3];
        if (v54)
        {
          if (!v55 || (v79[2] != v51[2] || v54 != v55) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            goto LABEL_41;
          }
        }

        else if (v55)
        {
          goto LABEL_41;
        }

        type metadata accessor for Promptkit_Wireformat_ToolCallFunction(0);
        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type Prompt.ToolCall and conformance Prompt.ToolCall(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        v56 = v79;
        v69 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of PromptCompletion.FileContent(v70, type metadata accessor for Promptkit_Wireformat_ToolCallContentEnum);
        outlined destroy of PromptCompletion.FileContent(v51, type metadata accessor for Promptkit_Wireformat_ToolCallFunction);
        outlined destroy of PromptCompletion.FileContent(v56, type metadata accessor for Promptkit_Wireformat_ToolCallFunction);
        outlined destroy of PromptCompletion.FileContent(v71, type metadata accessor for Promptkit_Wireformat_ToolCallContentEnum);
        outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v78, &_s15TokenGeneration40Promptkit_Wireformat_ToolCallContentEnumOSgMd, &_s15TokenGeneration40Promptkit_Wireformat_ToolCallContentEnumOSgMR);
        if ((v69 & 1) == 0)
        {
          goto LABEL_47;
        }
      }

      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Prompt.ToolCall and conformance Prompt.ToolCall(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v57 = v86;
      v58 = dispatch thunk of static Equatable.== infix(_:_:)();
      outlined destroy of PromptCompletion.FileContent(v15, type metadata accessor for Promptkit_Wireformat_ToolCallContent);
      outlined destroy of PromptCompletion.FileContent(v57, type metadata accessor for Promptkit_Wireformat_ToolCallContent);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v19, &_s15TokenGeneration36Promptkit_Wireformat_ToolCallContentVSgMd, &_s15TokenGeneration36Promptkit_Wireformat_ToolCallContentVSgMR);
      v40 = v81;
      v39 = v82;
      if ((v58 & 1) == 0)
      {
        goto LABEL_49;
      }
    }

    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Prompt.ToolCall and conformance Prompt.ToolCall(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v59 = v88;
    v60 = dispatch thunk of static Equatable.== infix(_:_:)();
    v61 = v59;
    v28 = v84;
    outlined destroy of PromptCompletion.FileContent(v61, type metadata accessor for Promptkit_Wireformat_ToolCall);
    outlined destroy of PromptCompletion.FileContent(v28, type metadata accessor for Promptkit_Wireformat_ToolCall);
    if (v60)
    {
      v24 = v41 - 1;
      v27 = v40 + v74;
      v26 = v39 + v74;
      if (v41 != 1)
      {
        continue;
      }
    }

    return v60 & 1;
  }

  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ15TokenGeneration27Promptkit_Wireformat_PromptV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Promptkit_Wireformat_ValueEnum(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v97 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v98 = &v81 - v8;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSg_ADtMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSg_ADtMR);
  MEMORY[0x1EEE9AC00](v100);
  v101 = &v81 - v9;
  v105 = type metadata accessor for Promptkit_Wireformat_PromptComponentValue(0);
  v10 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v104 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVSgMd, &_s15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v106 = &v81 - v13;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVSg_ADtMd, &_s15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v107);
  v109 = &v81 - v14;
  v103 = type metadata accessor for Promptkit_Wireformat_PromptComponent(0);
  v108 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v16 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v81 - v18;
  v20 = type metadata accessor for Promptkit_Wireformat_Prompt(0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v81 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v81 - v26;
  v28 = *(a1 + 16);
  if (v28 != *(a2 + 16))
  {
    goto LABEL_47;
  }

  if (!v28 || a1 == a2)
  {
    v76 = 1;
    return v76 & 1;
  }

  v102 = v19;
  v83 = v24;
  v29 = 0;
  v30 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v31 = a1 + v30;
  v88 = a2 + v30;
  v95 = (v10 + 48);
  v84 = (v5 + 48);
  v32 = *(v25 + 72);
  v33 = &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMd;
  v87 = v22;
  v86 = &v81 - v26;
  v85 = v4;
  v89 = v28;
  v82 = a1 + v30;
  v81 = v32;
  while (1)
  {
    v99 = v29;
    v34 = v32 * v29;
    result = outlined init with copy of PromptCompletion.Content(v31 + v32 * v29, v27, type metadata accessor for Promptkit_Wireformat_Prompt);
    if (v99 == v89)
    {
      goto LABEL_51;
    }

    result = outlined init with copy of PromptCompletion.Content(v88 + v34, v22, type metadata accessor for Promptkit_Wireformat_Prompt);
    v36 = *v27;
    v37 = *v22;
    v38 = *(*v27 + 16);
    v39 = *(*v22 + 16);
    v40 = v105;
    v41 = v33;
    v42 = v102;
    if (v38 != v39)
    {
      goto LABEL_46;
    }

    if (v38 && v36 != v37)
    {
      break;
    }

LABEL_33:
    v33 = v41;
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Prompt.ToolCall and conformance Prompt.ToolCall(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v27 = v86;
    v22 = v87;
    v76 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of PromptCompletion.FileContent(v22, type metadata accessor for Promptkit_Wireformat_Prompt);
    outlined destroy of PromptCompletion.FileContent(v27, type metadata accessor for Promptkit_Wireformat_Prompt);
    if (v76)
    {
      v29 = v99 + 1;
      v31 = v82;
      v32 = v81;
      if (v99 + 1 != v89)
      {
        continue;
      }
    }

    return v76 & 1;
  }

  v43 = 0;
  v44 = (*(v108 + 80) + 32) & ~*(v108 + 80);
  v96 = v36 + v44;
  v93 = v37 + v44;
  v94 = v16;
  v91 = v36;
  v92 = v37;
  v90 = v38;
  while (1)
  {
    if (v43 >= *(v36 + 16))
    {
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
      return result;
    }

    v45 = *(v108 + 72) * v43;
    result = outlined init with copy of PromptCompletion.Content(v96 + v45, v42, type metadata accessor for Promptkit_Wireformat_PromptComponent);
    if (v43 >= *(v37 + 16))
    {
      goto LABEL_50;
    }

    v46 = v41;
    outlined init with copy of PromptCompletion.Content(v93 + v45, v16, type metadata accessor for Promptkit_Wireformat_PromptComponent);
    v47 = *(v107 + 48);
    v48 = v42;
    v49 = v109;
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v48, v109, &_s15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVSgMd, &_s15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVSgMR);
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v16, v49 + v47, &_s15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVSgMd, &_s15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVSgMR);
    v50 = *v95;
    if ((*v95)(v49, 1, v40) == 1)
    {
      if (v50(v49 + v47, 1, v40) == 1)
      {
        outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v49, &_s15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVSgMd, &_s15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVSgMR);
        v42 = v102;
        v51 = v103;
        v16 = v94;
        goto LABEL_22;
      }

      outlined destroy of PromptCompletion.FileContent(v94, type metadata accessor for Promptkit_Wireformat_PromptComponent);
      v78 = v102;
      v77 = type metadata accessor for Promptkit_Wireformat_PromptComponent;
LABEL_39:
      outlined destroy of PromptCompletion.FileContent(v78, v77);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v49, &_s15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVSg_ADtMd, &_s15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVSg_ADtMR);
      goto LABEL_46;
    }

    v52 = v106;
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v49, v106, &_s15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVSgMd, &_s15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVSgMR);
    if (v50(v49 + v47, 1, v40) == 1)
    {
      outlined destroy of PromptCompletion.FileContent(v94, type metadata accessor for Promptkit_Wireformat_PromptComponent);
      outlined destroy of PromptCompletion.FileContent(v102, type metadata accessor for Promptkit_Wireformat_PromptComponent);
      v77 = type metadata accessor for Promptkit_Wireformat_PromptComponentValue;
      v78 = v52;
      goto LABEL_39;
    }

    v53 = v104;
    _s15TokenGeneration16PromptCompletionV7ContentOWObTm_0(v49 + v47, v104, type metadata accessor for Promptkit_Wireformat_PromptComponentValue);
    v54 = v101;
    v55 = *(v100 + 48);
    v56 = v46;
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v52, v101, v46, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v53, v54 + v55, v46, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
    v57 = *v84;
    v58 = v85;
    if ((*v84)(v54, 1, v85) == 1)
    {
      v59 = v57(v54 + v55, 1, v58);
      v16 = v94;
      if (v59 != 1)
      {
        v79 = type metadata accessor for Promptkit_Wireformat_PromptComponentValue;
        v80 = v104;
        goto LABEL_42;
      }

      v60 = v54;
      v41 = v46;
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v60, v46, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
      v61 = v106;
      goto LABEL_21;
    }

    v62 = v98;
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v54, v98, v56, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
    v63 = v57(v54 + v55, 1, v58);
    v16 = v94;
    if (v63 == 1)
    {
      break;
    }

    v64 = v97;
    _s15TokenGeneration16PromptCompletionV7ContentOWObTm_0(v54 + v55, v97, type metadata accessor for Promptkit_Wireformat_ValueEnum);
    v65 = static Promptkit_Wireformat_ValueEnum.== infix(_:_:)(v62, v64);
    outlined destroy of PromptCompletion.FileContent(v64, type metadata accessor for Promptkit_Wireformat_ValueEnum);
    outlined destroy of PromptCompletion.FileContent(v62, type metadata accessor for Promptkit_Wireformat_ValueEnum);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v54, v56, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSgMR);
    v61 = v106;
    v41 = v56;
    if ((v65 & 1) == 0)
    {
      outlined destroy of PromptCompletion.FileContent(v104, type metadata accessor for Promptkit_Wireformat_PromptComponentValue);
      goto LABEL_44;
    }

LABEL_21:
    v40 = v105;
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Prompt.ToolCall and conformance Prompt.ToolCall(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v66 = v104;
    v67 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of PromptCompletion.FileContent(v66, type metadata accessor for Promptkit_Wireformat_PromptComponentValue);
    outlined destroy of PromptCompletion.FileContent(v61, type metadata accessor for Promptkit_Wireformat_PromptComponentValue);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v109, &_s15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVSgMd, &_s15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVSgMR);
    v42 = v102;
    v51 = v103;
    if ((v67 & 1) == 0)
    {
      goto LABEL_45;
    }

LABEL_22:
    v68 = *(v51 + 20);
    v69 = (v42 + v68);
    v70 = *(v42 + v68 + 4);
    v71 = &v16[v68];
    if (v70)
    {
      v37 = v92;
      if ((v71[4] & 1) == 0)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v37 = v92;
      if ((v71[4] & 1) != 0 || *v69 != *v71)
      {
        goto LABEL_45;
      }
    }

    v72 = *(v51 + 24);
    v73 = *(v42 + v72);
    v74 = v16[v72];
    if (v73 == 3)
    {
      if (v74 != 3)
      {
        goto LABEL_45;
      }
    }

    else if (v73 != v74)
    {
      goto LABEL_45;
    }

    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Prompt.ToolCall and conformance Prompt.ToolCall(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v75 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of PromptCompletion.FileContent(v16, type metadata accessor for Promptkit_Wireformat_PromptComponent);
    result = outlined destroy of PromptCompletion.FileContent(v42, type metadata accessor for Promptkit_Wireformat_PromptComponent);
    v36 = v91;
    if ((v75 & 1) == 0)
    {
      goto LABEL_46;
    }

    if (v90 == ++v43)
    {
      goto LABEL_33;
    }
  }

  outlined destroy of PromptCompletion.FileContent(v104, type metadata accessor for Promptkit_Wireformat_PromptComponentValue);
  v79 = type metadata accessor for Promptkit_Wireformat_ValueEnum;
  v80 = v62;
LABEL_42:
  outlined destroy of PromptCompletion.FileContent(v80, v79);
  v61 = v106;
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v54, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSg_ADtMd, &_s15TokenGeneration30Promptkit_Wireformat_ValueEnumOSg_ADtMR);
LABEL_44:
  v42 = v102;
  outlined destroy of PromptCompletion.FileContent(v61, type metadata accessor for Promptkit_Wireformat_PromptComponentValue);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v109, &_s15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVSgMd, &_s15TokenGeneration41Promptkit_Wireformat_PromptComponentValueVSgMR);
LABEL_45:
  outlined destroy of PromptCompletion.FileContent(v16, type metadata accessor for Promptkit_Wireformat_PromptComponent);
  outlined destroy of PromptCompletion.FileContent(v42, type metadata accessor for Promptkit_Wireformat_PromptComponent);
LABEL_46:
  outlined destroy of PromptCompletion.FileContent(v87, type metadata accessor for Promptkit_Wireformat_Prompt);
  outlined destroy of PromptCompletion.FileContent(v86, type metadata accessor for Promptkit_Wireformat_Prompt);
LABEL_47:
  v76 = 0;
  return v76 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ15TokenGeneration16PromptCompletionV9CandidateV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a1 + 80);
  v4 = (a2 + 40);
  while (1)
  {
    v5 = *(v3 - 5);
    result = *(v3 - 4);
    v7 = *(v3 - 3);
    v9 = *(v3 - 2);
    v8 = *(v3 - 1);
    v10 = *v3;
    v32[0] = *(v3 - 6);
    v32[1] = v5;
    v32[2] = result;
    v33 = v7;
    v34 = v9;
    v35 = v8;
    v36 = v10;
    if (!v2)
    {
      break;
    }

    v21 = v2;
    v22 = *v4;
    v11 = v4[1];
    v23 = v4[3];
    v24 = v4[2];
    v25 = v4[5];
    v26 = v4[4];
    v27[0] = *(v4 - 1);
    v27[1] = v22;
    v27[2] = v11;
    v28 = v24;
    v29 = v23;
    v30 = v26;
    v31 = v25;

    outlined copy of FinishReason(v7, v9);
    outlined copy of Data._Representation(v8, v10);

    outlined copy of FinishReason(v24, v23);
    outlined copy of Data._Representation(v26, v25);
    v12 = specialized static PromptCompletion.Candidate.== infix(_:_:)(v32, v27);
    v13 = v28;
    v14 = v29;
    v15 = v30;
    v16 = v31;

    outlined consume of FinishReason(v13, v14);
    outlined consume of Data._Representation(v15, v16);
    v17 = v33;
    v18 = v34;
    v19 = v35;
    v20 = v36;

    outlined consume of FinishReason(v17, v18);
    outlined consume of Data._Representation(v19, v20);
    if (v12)
    {
      v3 += 7;
      v4 += 7;
      v2 = v21 - 1;
      if (v21 != 1)
      {
        continue;
      }
    }

    return v12;
  }

  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ15TokenGeneration31Promptkit_Wireformat_ToolResultV_Tt1g5Tm(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(char *, char *), uint64_t (*a6)(void))
{
  v11 = a3(0) - 8;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v25 - v16;
  v18 = *(a1 + 16);
  if (v18 == *(a2 + 16))
  {
    if (!v18 || a1 == a2)
    {
      v23 = 1;
    }

    else
    {
      v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
      v20 = a1 + v19;
      v21 = a2 + v19;
      v22 = *(v15 + 72);
      do
      {
        outlined init with copy of PromptCompletion.Content(v20, v17, a4);
        outlined init with copy of PromptCompletion.Content(v21, v13, a4);
        v23 = a5(v17, v13);
        outlined destroy of PromptCompletion.FileContent(v13, a6);
        outlined destroy of PromptCompletion.FileContent(v17, a6);
        if ((v23 & 1) == 0)
        {
          break;
        }

        v21 += v22;
        v20 += v22;
        --v18;
      }

      while (v18);
    }
  }

  else
  {
    v23 = 0;
  }

  return v23 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ15TokenGeneration11ModelBundleV_Tt1g5Tm(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v33 = a5;
  v34 = a6;
  v32 = a4;
  v8 = a3(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v29 - v14;
  v16 = *(a1 + 16);
  if (v16 != *(a2 + 16))
  {
    v26 = 0;
    return v26 & 1;
  }

  if (!v16 || a1 == a2)
  {
    v26 = 1;
    return v26 & 1;
  }

  v17 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v18 = a1 + v17;
  v19 = a2 + v17;
  v21 = *(v9 + 16);
  v20 = v9 + 16;
  v22 = (v20 - 8);
  v30 = *(v20 + 56);
  v31 = v21;
  while (1)
  {
    v23 = v31;
    result = (v31)(v15, v18, v8, v13);
    if (!v16)
    {
      break;
    }

    v25 = v20;
    v23(v11, v19, v8);
    lazy protocol witness table accessor for type Prompt.ToolCall and conformance Prompt.ToolCall(v32, v33, v34);
    v26 = dispatch thunk of static Equatable.== infix(_:_:)();
    v27 = *v22;
    (*v22)(v11, v8);
    v27(v15, v8);
    if (v26)
    {
      v19 += v30;
      v18 += v30;
      v28 = v16-- == 1;
      v20 = v25;
      if (!v28)
      {
        continue;
      }
    }

    return v26 & 1;
  }

  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ15TokenGeneration16PromptCompletionV10AnnotationV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PromptCompletion.DocumentCitation(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v39 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for PromptCompletion.URLCitation(0);
  MEMORY[0x1EEE9AC00](v38);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for PromptCompletion.Annotation.Type(0);
  MEMORY[0x1EEE9AC00](v43);
  v40 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v34 - v10);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration16PromptCompletionV10AnnotationV4TypeO_AGtMd, &_s15TokenGeneration16PromptCompletionV10AnnotationV4TypeO_AGtMR);
  MEMORY[0x1EEE9AC00](v42);
  v13 = &v34 - v12;
  v41 = type metadata accessor for PromptCompletion.Annotation(0);
  MEMORY[0x1EEE9AC00](v41);
  v15 = (&v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16);
  v19 = (&v34 - v18);
  v20 = *(a1 + 16);
  if (v20 == *(a2 + 16))
  {
    if (!v20 || a1 == a2)
    {
      return 1;
    }

    v21 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v22 = a1 + v21;
    v23 = a2 + v21;
    v35 = *(v17 + 72);
    v36 = &v34 - v18;
    v37 = v15;
    while (1)
    {
      outlined init with copy of PromptCompletion.Content(v22, v19, type metadata accessor for PromptCompletion.Annotation);
      outlined init with copy of PromptCompletion.Content(v23, v15, type metadata accessor for PromptCompletion.Annotation);
      if (*v19 != *v15)
      {
        break;
      }

      v24 = v19;
      v25 = v7;
      v26 = *(v41 + 20);
      v27 = *(v42 + 48);
      outlined init with copy of PromptCompletion.Content(v24 + v26, v13, type metadata accessor for PromptCompletion.Annotation.Type);
      outlined init with copy of PromptCompletion.Content(v15 + v26, &v13[v27], type metadata accessor for PromptCompletion.Annotation.Type);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v28 = v40;
        outlined init with copy of PromptCompletion.Content(v13, v40, type metadata accessor for PromptCompletion.Annotation.Type);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          v32 = type metadata accessor for PromptCompletion.DocumentCitation;
          v33 = v28;
          goto LABEL_21;
        }

        v29 = v39;
        _s15TokenGeneration16PromptCompletionV7ContentOWObTm_0(&v13[v27], v39, type metadata accessor for PromptCompletion.DocumentCitation);
        v30 = static DocumentResourceIdentifier.== infix(_:_:)();
        outlined destroy of PromptCompletion.FileContent(v29, type metadata accessor for PromptCompletion.DocumentCitation);
        outlined destroy of PromptCompletion.FileContent(v28, type metadata accessor for PromptCompletion.DocumentCitation);
        v7 = v25;
        v19 = v36;
        v15 = v37;
        if ((v30 & 1) == 0)
        {
          outlined destroy of PromptCompletion.FileContent(v13, type metadata accessor for PromptCompletion.Annotation.Type);
          break;
        }
      }

      else
      {
        outlined init with copy of PromptCompletion.Content(v13, v11, type metadata accessor for PromptCompletion.Annotation.Type);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v32 = type metadata accessor for PromptCompletion.URLCitation;
          v33 = v11;
LABEL_21:
          outlined destroy of PromptCompletion.FileContent(v33, v32);
          v19 = v36;
          v15 = v37;
          outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v13, &_s15TokenGeneration16PromptCompletionV10AnnotationV4TypeO_AGtMd, &_s15TokenGeneration16PromptCompletionV10AnnotationV4TypeO_AGtMR);
          break;
        }

        v7 = v25;
        _s15TokenGeneration16PromptCompletionV7ContentOWObTm_0(&v13[v27], v25, type metadata accessor for PromptCompletion.URLCitation);
        if ((*v11 != *v25 || v11[1] != *(v25 + 1)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (static URL.== infix(_:_:)() & 1) == 0)
        {
          outlined destroy of PromptCompletion.FileContent(v25, type metadata accessor for PromptCompletion.URLCitation);
          outlined destroy of PromptCompletion.FileContent(v11, type metadata accessor for PromptCompletion.URLCitation);
          outlined destroy of PromptCompletion.FileContent(v13, type metadata accessor for PromptCompletion.Annotation.Type);
          v19 = v36;
          v15 = v37;
          break;
        }

        outlined destroy of PromptCompletion.FileContent(v25, type metadata accessor for PromptCompletion.URLCitation);
        outlined destroy of PromptCompletion.FileContent(v11, type metadata accessor for PromptCompletion.URLCitation);
        v19 = v36;
        v15 = v37;
      }

      outlined destroy of PromptCompletion.FileContent(v13, type metadata accessor for PromptCompletion.Annotation.Type);
      outlined destroy of PromptCompletion.FileContent(v15, type metadata accessor for PromptCompletion.Annotation);
      outlined destroy of PromptCompletion.FileContent(v19, type metadata accessor for PromptCompletion.Annotation);
      v23 += v35;
      v22 += v35;
      if (!--v20)
      {
        return 1;
      }
    }

    outlined destroy of PromptCompletion.FileContent(v15, type metadata accessor for PromptCompletion.Annotation);
    outlined destroy of PromptCompletion.FileContent(v19, type metadata accessor for PromptCompletion.Annotation);
  }

  return 0;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ15TokenGeneration16ModelInformationV5AssetV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v39[3] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v35 = 0;
    v3 = (a1 + 72);
    for (i = (a2 + 40); ; i += 6)
    {
      v5 = *(v3 - 3);
      v6 = *(v3 - 2);
      v8 = *(v3 - 1);
      v7 = *v3;
      v9 = i[1];
      v10 = i[2];
      v11 = i[3];
      v12 = i[4];
      if (*(v3 - 5) != *(i - 1) || *(v3 - 4) != *i)
      {
        v37 = i[2];
        v36 = i[3];
        v13 = *(v3 - 3);
        v14 = i[1];
        v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v9 = v14;
        v5 = v13;
        v11 = v36;
        v10 = v37;
        if ((v15 & 1) == 0)
        {
          return 0;
        }
      }

      if (v6)
      {
        if (!v10 || (v5 != v9 || v6 != v10) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v10)
      {
        return 0;
      }

      v16 = v7 >> 62;
      v17 = v12 >> 62;
      if (v7 >> 62 == 3)
      {
        break;
      }

      if (v16 > 1)
      {
        if (v16 == 2)
        {
          v24 = *(v8 + 16);
          v23 = *(v8 + 24);
          v21 = __OFSUB__(v23, v24);
          v18 = v23 - v24;
          if (v21)
          {
            goto LABEL_68;
          }

          goto LABEL_33;
        }

        v18 = 0;
        if (v17 <= 1)
        {
          goto LABEL_34;
        }
      }

      else if (v16)
      {
        LODWORD(v18) = HIDWORD(v8) - v8;
        if (__OFSUB__(HIDWORD(v8), v8))
        {
          goto LABEL_67;
        }

        v18 = v18;
        if (v17 <= 1)
        {
LABEL_34:
          if (v17)
          {
            LODWORD(v22) = HIDWORD(v11) - v11;
            if (__OFSUB__(HIDWORD(v11), v11))
            {
              __break(1u);
LABEL_66:
              __break(1u);
LABEL_67:
              __break(1u);
LABEL_68:
              __break(1u);
LABEL_69:
              __break(1u);
LABEL_70:
              __break(1u);
LABEL_71:
              __break(1u);
LABEL_72:
              __break(1u);
            }

            v22 = v22;
          }

          else
          {
            v22 = BYTE6(v12);
          }

          goto LABEL_38;
        }
      }

      else
      {
        v18 = BYTE6(v7);
        if (v17 <= 1)
        {
          goto LABEL_34;
        }
      }

LABEL_27:
      if (v17 != 2)
      {
        if (v18)
        {
          return 0;
        }

        goto LABEL_6;
      }

      v20 = *(v11 + 16);
      v19 = *(v11 + 24);
      v21 = __OFSUB__(v19, v20);
      v22 = v19 - v20;
      if (v21)
      {
        goto LABEL_66;
      }

LABEL_38:
      if (v18 != v22)
      {
        return 0;
      }

      if (v18 < 1)
      {
        goto LABEL_6;
      }

      if (v16 > 1)
      {
        if (v16 == 2)
        {
          v26 = *(v8 + 16);
          v34 = *(v8 + 24);

          outlined copy of Data._Representation(v8, v7);

          outlined copy of Data._Representation(v11, v12);
          v27 = __DataStorage._bytes.getter();
          if (v27)
          {
            v28 = __DataStorage._offset.getter();
            if (__OFSUB__(v26, v28))
            {
              goto LABEL_71;
            }

            v27 += v26 - v28;
          }

          if (__OFSUB__(v34, v26))
          {
            goto LABEL_70;
          }

          MEMORY[0x1AC5A2EC0]();
          v29 = v27;
          v30 = v35;
          goto LABEL_59;
        }

        memset(v39, 0, 14);

        outlined copy of Data._Representation(v8, v7);

        outlined copy of Data._Representation(v11, v12);
        closure #1 in static Data.== infix(_:_:)(v39, v11, v12, &v38);

        v25 = v11;
      }

      else
      {
        if (v16)
        {
          if (v8 >> 32 < v8)
          {
            goto LABEL_69;
          }

          outlined copy of Data._Representation(v8, v7);

          outlined copy of Data._Representation(v11, v12);
          v31 = __DataStorage._bytes.getter();
          if (v31)
          {
            v32 = __DataStorage._offset.getter();
            if (__OFSUB__(v8, v32))
            {
              goto LABEL_72;
            }

            v31 += v8 - v32;
          }

          v30 = v35;
          MEMORY[0x1AC5A2EC0]();
          v29 = v31;
LABEL_59:
          closure #1 in static Data.== infix(_:_:)(v29, v11, v12, v39);
          v35 = v30;

          outlined consume of Data._Representation(v11, v12);

          outlined consume of Data._Representation(v8, v7);
          if ((v39[0] & 1) == 0)
          {
            return 0;
          }

          goto LABEL_6;
        }

        v39[0] = v8;
        LOWORD(v39[1]) = v7;
        BYTE2(v39[1]) = BYTE2(v7);
        BYTE3(v39[1]) = BYTE3(v7);
        BYTE4(v39[1]) = BYTE4(v7);
        BYTE5(v39[1]) = BYTE5(v7);

        outlined copy of Data._Representation(v8, v7);

        outlined copy of Data._Representation(v11, v12);
        closure #1 in static Data.== infix(_:_:)(v39, v11, v12, &v38);

        v25 = v11;
      }

      outlined consume of Data._Representation(v25, v12);

      outlined consume of Data._Representation(v8, v7);
      if (!v38)
      {
        return 0;
      }

LABEL_6:
      v3 += 6;
      if (!--v2)
      {
        return 1;
      }
    }

    v18 = 0;
    if (!v8 && v7 == 0xC000000000000000 && v12 >> 62 == 3)
    {
      v18 = 0;
      if (!v11 && v12 == 0xC000000000000000)
      {
        goto LABEL_6;
      }
    }

LABEL_33:
    if (v17 <= 1)
    {
      goto LABEL_34;
    }

    goto LABEL_27;
  }

  return 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ15TokenGeneration021Promptkit_Wireformat_C11SchemaFieldV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v61 = type metadata accessor for Promptkit_Wireformat_GenerationSchema(0);
  v4 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v6 = (&v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMd, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = (&v50 - v8);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSg_ADtMd, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v59);
  v58 = &v50 - v10;
  v60 = type metadata accessor for Promptkit_Wireformat_GenerationSchemaField(0);
  MEMORY[0x1EEE9AC00](v60);
  v12 = (&v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v16 = (&v50 - v15);
  v17 = *(a1 + 16);
  if (v17 != *(a2 + 16))
  {
    goto LABEL_43;
  }

  if (!v17 || a1 == a2)
  {
    v46 = 1;
    return v46 & 1;
  }

  v52 = v6;
  v53 = v9;
  v18 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v19 = a1 + v18;
  v20 = a2 + v18;
  v54 = v12;
  v55 = (v4 + 48);
  v51 = *(v14 + 72);
  v21 = v60;
  v22 = v58;
  while (1)
  {
    outlined init with copy of PromptCompletion.Content(v19, v16, type metadata accessor for Promptkit_Wireformat_GenerationSchemaField);
    outlined init with copy of PromptCompletion.Content(v20, v12, type metadata accessor for Promptkit_Wireformat_GenerationSchemaField);
    v23 = v16[1];
    v24 = v12[1];
    if (v23)
    {
      if (!v24 || (*v16 != *v12 || v23 != v24) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_42;
      }
    }

    else if (v24)
    {
      goto LABEL_42;
    }

    v25 = v16[3];
    v26 = v12[3];
    if (v25)
    {
      if (!v26 || (v16[2] != v12[2] || v25 != v26) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_42;
      }
    }

    else if (v26)
    {
      goto LABEL_42;
    }

    v56 = v17;
    v57 = v20;
    v27 = *(v21 + 24);
    v28 = *(v59 + 48);
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v16 + v27, v22, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMd, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMR);
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v12 + v27, v22 + v28, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMd, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMR);
    v29 = *v55;
    v30 = v61;
    if ((*v55)(v22, 1, v61) == 1)
    {
      v31 = v29(v22 + v28, 1, v30);
      v12 = v54;
      if (v31 != 1)
      {
        goto LABEL_40;
      }

      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v22, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMd, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMR);
      v32 = v56;
      v33 = v57;
      v21 = v60;
      goto LABEL_29;
    }

    v34 = v53;
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v22, v53, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMd, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMR);
    if (v29(v22 + v28, 1, v30) == 1)
    {
      break;
    }

    v35 = v52;
    _s15TokenGeneration16PromptCompletionV7ContentOWObTm_0(v22 + v28, v52, type metadata accessor for Promptkit_Wireformat_GenerationSchema);
    v36 = *v34;
    v37 = *v35;
    v38 = v37 & 0xF000000000000007;
    v12 = v54;
    if ((~*v34 & 0xF000000000000007) != 0)
    {
      if (v38 == 0xF000000000000007 || (outlined copy of Promptkit_Wireformat_GenerationSchemaEnum?(v37), outlined copy of Promptkit_Wireformat_GenerationSchemaEnum?(v36), v39 = static Promptkit_Wireformat_GenerationSchemaEnum.== infix(_:_:)(v36, v37), outlined consume of Promptkit_Wireformat_GenerationSchemaEnum?(v37), outlined consume of Promptkit_Wireformat_GenerationSchemaEnum?(v36), (v39 & 1) == 0))
      {
LABEL_38:
        outlined destroy of PromptCompletion.FileContent(v52, type metadata accessor for Promptkit_Wireformat_GenerationSchema);
        outlined destroy of PromptCompletion.FileContent(v53, type metadata accessor for Promptkit_Wireformat_GenerationSchema);
        v47 = &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMd;
        v48 = &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMR;
        goto LABEL_41;
      }
    }

    else if (v38 != 0xF000000000000007)
    {
      goto LABEL_38;
    }

    v50 = v19;
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Prompt.ToolCall and conformance Prompt.ToolCall(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v40 = v52;
    v41 = v53;
    v42 = dispatch thunk of static Equatable.== infix(_:_:)();
    v19 = v50;
    outlined destroy of PromptCompletion.FileContent(v40, type metadata accessor for Promptkit_Wireformat_GenerationSchema);
    outlined destroy of PromptCompletion.FileContent(v41, type metadata accessor for Promptkit_Wireformat_GenerationSchema);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v22, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMd, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMR);
    v21 = v60;
    v32 = v56;
    v33 = v57;
    if ((v42 & 1) == 0)
    {
      goto LABEL_42;
    }

LABEL_29:
    v43 = *(v21 + 28);
    v44 = *(v16 + v43);
    v45 = *(v12 + v43);
    if (v44 == 2)
    {
      if (v45 != 2)
      {
        goto LABEL_42;
      }
    }

    else if (v45 == 2 || ((v44 ^ v45) & 1) != 0)
    {
      goto LABEL_42;
    }

    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Prompt.ToolCall and conformance Prompt.ToolCall(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v46 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of PromptCompletion.FileContent(v12, type metadata accessor for Promptkit_Wireformat_GenerationSchemaField);
    outlined destroy of PromptCompletion.FileContent(v16, type metadata accessor for Promptkit_Wireformat_GenerationSchemaField);
    if (v46)
    {
      v20 = v33 + v51;
      v19 += v51;
      v17 = v32 - 1;
      if (v17)
      {
        continue;
      }
    }

    return v46 & 1;
  }

  outlined destroy of PromptCompletion.FileContent(v34, type metadata accessor for Promptkit_Wireformat_GenerationSchema);
  v12 = v54;
LABEL_40:
  v47 = &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSg_ADtMd;
  v48 = &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSg_ADtMR;
LABEL_41:
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v22, v47, v48);
LABEL_42:
  outlined destroy of PromptCompletion.FileContent(v12, type metadata accessor for Promptkit_Wireformat_GenerationSchemaField);
  outlined destroy of PromptCompletion.FileContent(v16, type metadata accessor for Promptkit_Wireformat_GenerationSchemaField);
LABEL_43:
  v46 = 0;
  return v46 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ15TokenGeneration021Promptkit_Wireformat_C12SchemaChoiceV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Promptkit_Wireformat_GenerationSchema(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v49 = (&v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMd, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = (&v42 - v8);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSg_ADtMd, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v50);
  v11 = &v42 - v10;
  v12 = type metadata accessor for Promptkit_Wireformat_GenerationSchemaChoice(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v18 = (&v42 - v17);
  v19 = *(a1 + 16);
  if (v19 != *(a2 + 16))
  {
    goto LABEL_32;
  }

  if (!v19 || a1 == a2)
  {
    v38 = 1;
    return v38 & 1;
  }

  v48 = v4;
  v20 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v21 = a1 + v20;
  v22 = a2 + v20;
  v46 = v14;
  v47 = (v5 + 48);
  v23 = *(v16 + 72);
  v42 = v9;
  v43 = v23;
  v44 = v12;
  v45 = (&v42 - v17);
  while (1)
  {
    outlined init with copy of PromptCompletion.Content(v21, v18, type metadata accessor for Promptkit_Wireformat_GenerationSchemaChoice);
    outlined init with copy of PromptCompletion.Content(v22, v14, type metadata accessor for Promptkit_Wireformat_GenerationSchemaChoice);
    v24 = v18[1];
    v25 = v14[1];
    if (v24)
    {
      if (!v25 || (*v18 != *v14 || v24 != v25) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    else if (v25)
    {
      goto LABEL_27;
    }

    v51 = v21;
    v26 = *(v12 + 20);
    v27 = *(v50 + 48);
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v18 + v26, v11, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMd, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMR);
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v14 + v26, &v11[v27], &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMd, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMR);
    v28 = v48;
    v29 = *v47;
    if ((*v47)(v11, 1, v48) != 1)
    {
      break;
    }

    if (v29(&v11[v27], 1, v28) != 1)
    {
      v39 = type metadata accessor for Promptkit_Wireformat_GenerationSchemaChoice;
      v40 = v45;
      goto LABEL_30;
    }

    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v11, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMd, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMR);
    v18 = v45;
    v14 = v46;
LABEL_22:
    v12 = v44;
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Prompt.ToolCall and conformance Prompt.ToolCall(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v38 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of PromptCompletion.FileContent(v18, type metadata accessor for Promptkit_Wireformat_GenerationSchemaChoice);
    outlined destroy of PromptCompletion.FileContent(v14, type metadata accessor for Promptkit_Wireformat_GenerationSchemaChoice);
    if (v38)
    {
      v22 += v43;
      v21 = v51 + v43;
      if (--v19)
      {
        continue;
      }
    }

    return v38 & 1;
  }

  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v11, v9, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMd, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMR);
  if (v29(&v11[v27], 1, v28) != 1)
  {
    v30 = v49;
    _s15TokenGeneration16PromptCompletionV7ContentOWObTm_0(&v11[v27], v49, type metadata accessor for Promptkit_Wireformat_GenerationSchema);
    v31 = *v9;
    v32 = *v30;
    v33 = v32 & 0xF000000000000007;
    v18 = v45;
    v14 = v46;
    if ((~*v9 & 0xF000000000000007) != 0)
    {
      if (v33 == 0xF000000000000007 || (outlined copy of Promptkit_Wireformat_GenerationSchemaEnum?(v32), outlined copy of Promptkit_Wireformat_GenerationSchemaEnum?(v31), v34 = static Promptkit_Wireformat_GenerationSchemaEnum.== infix(_:_:)(v31, v32), outlined consume of Promptkit_Wireformat_GenerationSchemaEnum?(v32), outlined consume of Promptkit_Wireformat_GenerationSchemaEnum?(v31), (v34 & 1) == 0))
      {
LABEL_26:
        outlined destroy of PromptCompletion.FileContent(v49, type metadata accessor for Promptkit_Wireformat_GenerationSchema);
        outlined destroy of PromptCompletion.FileContent(v42, type metadata accessor for Promptkit_Wireformat_GenerationSchema);
        outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v11, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMd, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMR);
LABEL_27:
        outlined destroy of PromptCompletion.FileContent(v18, type metadata accessor for Promptkit_Wireformat_GenerationSchemaChoice);
        goto LABEL_31;
      }
    }

    else if (v33 != 0xF000000000000007)
    {
      goto LABEL_26;
    }

    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Prompt.ToolCall and conformance Prompt.ToolCall(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v35 = v42;
    v36 = v49;
    v37 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of PromptCompletion.FileContent(v36, type metadata accessor for Promptkit_Wireformat_GenerationSchema);
    v9 = v35;
    outlined destroy of PromptCompletion.FileContent(v35, type metadata accessor for Promptkit_Wireformat_GenerationSchema);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v11, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMd, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSgMR);
    if ((v37 & 1) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_22;
  }

  outlined destroy of PromptCompletion.FileContent(v45, type metadata accessor for Promptkit_Wireformat_GenerationSchemaChoice);
  v39 = type metadata accessor for Promptkit_Wireformat_GenerationSchema;
  v40 = v9;
LABEL_30:
  outlined destroy of PromptCompletion.FileContent(v40, v39);
  v14 = v46;
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v11, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSg_ADtMd, &_s15TokenGeneration021Promptkit_Wireformat_B6SchemaVSg_ADtMR);
LABEL_31:
  outlined destroy of PromptCompletion.FileContent(v14, type metadata accessor for Promptkit_Wireformat_GenerationSchemaChoice);
LABEL_32:
  v38 = 0;
  return v38 & 1;
}

uint64_t PromptCompletion.Candidate.hash(into:)(uint64_t a1)
{
  v3 = type metadata accessor for Prompt.ToolCall();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = v1[1];
  v9 = v1[2];
  v22[1] = v1[3];
  v23 = v9;
  v10 = v1[4];
  v26 = v1[5];
  v11 = v1[6];
  v24 = v10;
  v25 = v11;
  specialized Array<A>.hash(into:)(a1, v7);
  MEMORY[0x1AC5A6570](*(v8 + 16));
  v12 = *(v8 + 16);
  if (v12)
  {
    v15 = *(v4 + 16);
    v13 = v4 + 16;
    v14 = v15;
    v16 = v8 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v6, v16, v3);
      lazy protocol witness table accessor for type Prompt.ToolCall and conformance Prompt.ToolCall(&lazy protocol witness table cache variable for type Prompt.ToolCall and conformance Prompt.ToolCall, MEMORY[0x1E69DA810], MEMORY[0x1E69DA818]);
      dispatch thunk of Hashable.hash(into:)();
      (*(v13 - 8))(v6, v3);
      v16 += v17;
      --v12;
    }

    while (v12);
  }

  v18 = v23;
  if (v23)
  {
    Hasher._combine(_:)(1u);
    specialized Dictionary<>.hash(into:)(a1, v18);
    v19 = v24;
    if (v24)
    {
      goto LABEL_6;
    }

LABEL_10:
    v20 = 0;
    goto LABEL_12;
  }

  Hasher._combine(_:)(0);
  v19 = v24;
  if (!v24)
  {
    goto LABEL_10;
  }

LABEL_6:
  if (v19 == 1)
  {
    v20 = 2;
  }

  else
  {
    if (v19 != 2)
    {
      MEMORY[0x1AC5A6570](1);
      String.hash(into:)();
      return Data.hash(into:)();
    }

    v20 = 3;
  }

LABEL_12:
  MEMORY[0x1AC5A6570](v20);
  return Data.hash(into:)();
}

Swift::Int PromptCompletion.Candidate.hashValue.getter()
{
  v1 = *(v0 + 6);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v0[2];
  v8 = v1;
  Hasher.init(_seed:)();
  PromptCompletion.Candidate.hash(into:)(v4);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PromptCompletion.Candidate()
{
  v1 = *(v0 + 6);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v0[2];
  v8 = v1;
  Hasher.init(_seed:)();
  PromptCompletion.Candidate.hash(into:)(v4);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PromptCompletion.Candidate(uint64_t a1)
{
  v2 = *(v1 + 6);
  v3 = v1[1];
  v6 = *v1;
  v7 = v3;
  v8 = v1[2];
  v9 = v2;
  Hasher.init(_seed:)();
  PromptCompletion.Candidate.hash(into:)(v5);
  return Hasher._finalize()();
}

uint64_t PromptCompletion.Content.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for PromptCompletion.FileContent(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PromptCompletion.Content(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of PromptCompletion.Content(v2, v9, type metadata accessor for PromptCompletion.Content);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      _s15TokenGeneration16PromptCompletionV7ContentOWObTm_0(v9, v6, type metadata accessor for PromptCompletion.FileContent);
      MEMORY[0x1AC5A6570](2);
      type metadata accessor for URL();
      lazy protocol witness table accessor for type Prompt.ToolCall and conformance Prompt.ToolCall(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
      dispatch thunk of Hashable.hash(into:)();
      String.hash(into:)();
      String.hash(into:)();
      MEMORY[0x1AC5A65A0](*&v6[*(v4 + 28)]);
      return outlined destroy of PromptCompletion.FileContent(v6, type metadata accessor for PromptCompletion.FileContent);
    }

    v15 = *v9;
    v16 = v9[1];
    v17 = 3;
    goto LABEL_9;
  }

  if (EnumCaseMultiPayload)
  {
    v15 = *v9;
    v16 = v9[1];
    v17 = 1;
LABEL_9:
    MEMORY[0x1AC5A6570](v17);
    Data.hash(into:)();
    return outlined consume of Data._Representation(v15, v16);
  }

  v12 = v9[2];
  v11 = v9[3];
  v13 = v9[4];
  MEMORY[0x1AC5A6570](0);
  String.hash(into:)();
  specialized Array<A>.hash(into:)(a1, v12);
  if (v13 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
  }

  return outlined consume of Data?(v11, v13);
}

uint64_t PromptCompletion.TextContent.value.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PromptCompletion.TextContent.value.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t PromptCompletion.TextContent.annotations.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t PromptCompletion.TextContent._userInfo.getter()
{
  v1 = *(v0 + 24);
  outlined copy of Data?(v1, *(v0 + 32));
  return v1;
}

uint64_t PromptCompletion.TextContent._userInfo.setter(uint64_t a1, uint64_t a2)
{
  result = outlined consume of Data?(*(v2 + 24), *(v2 + 32));
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

double PromptCompletion.TextContent.init(value:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = 0.0;
  *(a3 + 24) = xmmword_1ABA1D8C0;
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = MEMORY[0x1E69E7CC0];
  return result;
}

void PromptCompletion.TextContent.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 32);
  String.hash(into:)();
  specialized Array<A>.hash(into:)(a1, v3);
  if (v4 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);

    Data.hash(into:)();
  }
}

Swift::Int PromptCompletion.TextContent.hashValue.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  Hasher.init(_seed:)();
  String.hash(into:)();
  specialized Array<A>.hash(into:)(v4, v1);
  if (v2 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
  }

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PromptCompletion.TextContent()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  Hasher.init(_seed:)();
  String.hash(into:)();
  specialized Array<A>.hash(into:)(v4, v1);
  if (v2 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
  }

  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance PromptCompletion.TextContent(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 32);
  String.hash(into:)();
  specialized Array<A>.hash(into:)(a1, v3);
  if (v4 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);

    Data.hash(into:)();
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PromptCompletion.TextContent(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 32);
  Hasher.init(_seed:)();
  String.hash(into:)();
  specialized Array<A>.hash(into:)(v5, v2);
  if (v3 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
  }

  return Hasher._finalize()();
}

uint64_t static PromptCompletion.URLCitation.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for PromptCompletion.URLCitation(0);

  return static URL.== infix(_:_:)();
}

uint64_t PromptCompletion.Annotation.Type.hash(into:)(uint64_t a1)
{
  v2 = type metadata accessor for PromptCompletion.DocumentCitation(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PromptCompletion.URLCitation(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PromptCompletion.Annotation.Type(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PromptCompletion.Content(v1, v10, type metadata accessor for PromptCompletion.Annotation.Type);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    _s15TokenGeneration16PromptCompletionV7ContentOWObTm_0(v10, v4, type metadata accessor for PromptCompletion.DocumentCitation);
    MEMORY[0x1AC5A6570](1);
    type metadata accessor for DocumentResourceIdentifier();
    lazy protocol witness table accessor for type Prompt.ToolCall and conformance Prompt.ToolCall(&lazy protocol witness table cache variable for type DocumentResourceIdentifier and conformance DocumentResourceIdentifier, MEMORY[0x1E69C6178], MEMORY[0x1E69C6188]);
    dispatch thunk of Hashable.hash(into:)();
    v11 = type metadata accessor for PromptCompletion.DocumentCitation;
    v12 = v4;
  }

  else
  {
    _s15TokenGeneration16PromptCompletionV7ContentOWObTm_0(v10, v7, type metadata accessor for PromptCompletion.URLCitation);
    MEMORY[0x1AC5A6570](0);
    String.hash(into:)();
    type metadata accessor for URL();
    lazy protocol witness table accessor for type Prompt.ToolCall and conformance Prompt.ToolCall(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
    dispatch thunk of Hashable.hash(into:)();
    v11 = type metadata accessor for PromptCompletion.URLCitation;
    v12 = v7;
  }

  return outlined destroy of PromptCompletion.FileContent(v12, v11);
}

uint64_t PromptCompletion.Annotation.init(index:type:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  v5 = type metadata accessor for PromptCompletion.Annotation(0);
  return _s15TokenGeneration16PromptCompletionV7ContentOWObTm_0(a2, a3 + *(v5 + 20), type metadata accessor for PromptCompletion.Annotation.Type);
}

uint64_t static PromptCompletion.Annotation.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v5 = *(type metadata accessor for PromptCompletion.Annotation(0) + 20);

  return specialized static PromptCompletion.Annotation.Type.== infix(_:_:)(a1 + v5, a2 + v5);
}

uint64_t PromptCompletion.Annotation.hash(into:)(uint64_t a1)
{
  MEMORY[0x1AC5A6570](*v1);
  type metadata accessor for PromptCompletion.Annotation(0);
  return PromptCompletion.Annotation.Type.hash(into:)(a1);
}

Swift::Int PromptCompletion.Annotation.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x1AC5A6570](*v0);
  type metadata accessor for PromptCompletion.Annotation(0);
  PromptCompletion.Annotation.Type.hash(into:)(v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PromptCompletion.Annotation()
{
  Hasher.init(_seed:)();
  MEMORY[0x1AC5A6570](*v0);
  PromptCompletion.Annotation.Type.hash(into:)(v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PromptCompletion.Annotation(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1AC5A6570](*v1);
  PromptCompletion.Annotation.Type.hash(into:)(v3);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance PromptCompletion.Annotation(void *a1, void *a2, uint64_t a3)
{
  if (*a1 == *a2)
  {
    return specialized static PromptCompletion.Annotation.Type.== infix(_:_:)(a1 + *(a3 + 20), a2 + *(a3 + 20));
  }

  else
  {
    return 0;
  }
}

uint64_t PromptCompletion.URLCitation.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PromptCompletion.URLCitation.title.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t PromptCompletion.URLCitation.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PromptCompletion.URLCitation(0) + 20);
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PromptCompletion.URLCitation.url.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PromptCompletion.URLCitation(0) + 20);
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t PromptCompletion.URLCitation.init(title:url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  *(a4 + 1) = a2;
  v6 = *(type metadata accessor for PromptCompletion.URLCitation(0) + 20);
  v7 = type metadata accessor for URL();
  v8 = *(*(v7 - 8) + 32);

  return v8(&a4[v6], a3, v7);
}

uint64_t PromptCompletion.URLCitation.hash(into:)(uint64_t a1)
{
  String.hash(into:)();
  type metadata accessor for PromptCompletion.URLCitation(0);
  type metadata accessor for URL();
  lazy protocol witness table accessor for type Prompt.ToolCall and conformance Prompt.ToolCall(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int PromptCompletion.URLCitation.hashValue.getter()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  type metadata accessor for PromptCompletion.URLCitation(0);
  type metadata accessor for URL();
  lazy protocol witness table accessor for type Prompt.ToolCall and conformance Prompt.ToolCall(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PromptCompletion.URLCitation()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  type metadata accessor for URL();
  lazy protocol witness table accessor for type Prompt.ToolCall and conformance Prompt.ToolCall(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PromptCompletion.URLCitation(uint64_t a1)
{
  String.hash(into:)();
  type metadata accessor for URL();
  lazy protocol witness table accessor for type Prompt.ToolCall and conformance Prompt.ToolCall(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PromptCompletion.URLCitation(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  type metadata accessor for URL();
  lazy protocol witness table accessor for type Prompt.ToolCall and conformance Prompt.ToolCall(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance PromptCompletion.URLCitation(uint64_t *a1, void *a2, uint64_t a3)
{
  v3 = *a1 == *a2 && a1[1] == a2[1];
  if (!v3 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  return static URL.== infix(_:_:)();
}

uint64_t PromptCompletion.DocumentCitation.documentIdentifier.setter(uint64_t a1)
{
  v3 = type metadata accessor for DocumentResourceIdentifier();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t PromptCompletion.DocumentCitation.init(documentIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for DocumentResourceIdentifier();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t PromptCompletion.DocumentCitation.hash(into:)(uint64_t a1)
{
  type metadata accessor for DocumentResourceIdentifier();
  lazy protocol witness table accessor for type Prompt.ToolCall and conformance Prompt.ToolCall(&lazy protocol witness table cache variable for type DocumentResourceIdentifier and conformance DocumentResourceIdentifier, MEMORY[0x1E69C6178], MEMORY[0x1E69C6188]);

  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int PromptCompletion.DocumentCitation.hashValue.getter()
{
  Hasher.init(_seed:)();
  type metadata accessor for DocumentResourceIdentifier();
  lazy protocol witness table accessor for type Prompt.ToolCall and conformance Prompt.ToolCall(&lazy protocol witness table cache variable for type DocumentResourceIdentifier and conformance DocumentResourceIdentifier, MEMORY[0x1E69C6178], MEMORY[0x1E69C6188]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PromptCompletion.DocumentCitation()
{
  Hasher.init(_seed:)();
  type metadata accessor for DocumentResourceIdentifier();
  lazy protocol witness table accessor for type Prompt.ToolCall and conformance Prompt.ToolCall(&lazy protocol witness table cache variable for type DocumentResourceIdentifier and conformance DocumentResourceIdentifier, MEMORY[0x1E69C6178], MEMORY[0x1E69C6188]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PromptCompletion.DocumentCitation(uint64_t a1)
{
  type metadata accessor for DocumentResourceIdentifier();
  lazy protocol witness table accessor for type Prompt.ToolCall and conformance Prompt.ToolCall(&lazy protocol witness table cache variable for type DocumentResourceIdentifier and conformance DocumentResourceIdentifier, MEMORY[0x1E69C6178], MEMORY[0x1E69C6188]);

  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PromptCompletion.DocumentCitation(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for DocumentResourceIdentifier();
  lazy protocol witness table accessor for type Prompt.ToolCall and conformance Prompt.ToolCall(&lazy protocol witness table cache variable for type DocumentResourceIdentifier and conformance DocumentResourceIdentifier, MEMORY[0x1E69C6178], MEMORY[0x1E69C6188]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t PromptCompletion.ImageContent.imageData()()
{
  v2 = *v0;
  v3 = v0[1];
  outlined copy of Data._Representation(v2, v3);
  v4 = *(v1 + 8);

  return v4(v2, v3);
}

uint64_t PromptCompletion.AudioContent.data.getter()
{
  v1 = *v0;
  outlined copy of Data._Representation(*v0, *(v0 + 8));
  return v1;
}

uint64_t PromptCompletion.AudioContent.init(data:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t PromptCompletion.DocumentCitation.documentIdentifier.getter@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = a1(0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, v2, v4);
}

uint64_t PromptCompletion.FileContent.name.getter()
{
  v1 = *(v0 + *(type metadata accessor for PromptCompletion.FileContent(0) + 20));

  return v1;
}

uint64_t PromptCompletion.FileContent.mimeType.getter()
{
  v1 = *(v0 + *(type metadata accessor for PromptCompletion.FileContent(0) + 24));

  return v1;
}

int *PromptCompletion.FileContent.init(url:name:mimeType:size:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = type metadata accessor for URL();
  (*(*(v14 - 8) + 32))(a7, a1, v14);
  result = type metadata accessor for PromptCompletion.FileContent(0);
  v16 = (a7 + result[5]);
  *v16 = a2;
  v16[1] = a3;
  v17 = (a7 + result[6]);
  *v17 = a4;
  v17[1] = a5;
  *(a7 + result[7]) = a6;
  return result;
}

uint64_t PromptCompletion.FileContent.hash(into:)(uint64_t a1)
{
  type metadata accessor for URL();
  lazy protocol witness table accessor for type Prompt.ToolCall and conformance Prompt.ToolCall(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  dispatch thunk of Hashable.hash(into:)();
  v2 = type metadata accessor for PromptCompletion.FileContent(0);
  String.hash(into:)();
  String.hash(into:)();
  return MEMORY[0x1AC5A65A0](*(v1 + *(v2 + 28)));
}

Swift::Int PromptCompletion.FileContent.hashValue.getter()
{
  Hasher.init(_seed:)();
  type metadata accessor for URL();
  lazy protocol witness table accessor for type Prompt.ToolCall and conformance Prompt.ToolCall(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  dispatch thunk of Hashable.hash(into:)();
  v1 = type metadata accessor for PromptCompletion.FileContent(0);
  String.hash(into:)();
  String.hash(into:)();
  MEMORY[0x1AC5A65A0](*(v0 + *(v1 + 28)));
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PromptCompletion.FileContent(int *a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for URL();
  lazy protocol witness table accessor for type Prompt.ToolCall and conformance Prompt.ToolCall(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  dispatch thunk of Hashable.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  MEMORY[0x1AC5A65A0](*(v1 + a1[7]));
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PromptCompletion.FileContent(uint64_t a1, int *a2)
{
  type metadata accessor for URL();
  lazy protocol witness table accessor for type Prompt.ToolCall and conformance Prompt.ToolCall(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  dispatch thunk of Hashable.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  return MEMORY[0x1AC5A65A0](*(v2 + a2[7]));
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PromptCompletion.FileContent(uint64_t a1, int *a2)
{
  Hasher.init(_seed:)();
  type metadata accessor for URL();
  lazy protocol witness table accessor for type Prompt.ToolCall and conformance Prompt.ToolCall(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  dispatch thunk of Hashable.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  MEMORY[0x1AC5A65A0](*(v2 + a2[7]));
  return Hasher._finalize()();
}

uint64_t PromptCompletion.Moderation.ratings.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t PromptCompletion.Moderation.Category.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t static PromptCompletion.Moderation.Category.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

Swift::Int PromptCompletion.ImageContent.hashValue.getter(void (*a1)(void *, uint64_t, uint64_t))
{
  v4 = *v1;
  v3 = v1[1];
  Hasher.init(_seed:)();
  a1(v6, v4, v3);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PromptCompletion.ImageContent(uint64_t a1, uint64_t a2, void (*a3)(void *, uint64_t, uint64_t))
{
  v6 = *v3;
  v5 = v3[1];
  Hasher.init(_seed:)();
  a3(v8, v6, v5);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PromptCompletion.ImageContent(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *, uint64_t, uint64_t))
{
  v7 = *v4;
  v6 = v4[1];
  Hasher.init(_seed:)();
  a4(v9, v7, v6);
  return Hasher._finalize()();
}

Swift::Int PromptCompletion.Moderation.Probability.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1AC5A6570](v1);
  return Hasher._finalize()();
}

void _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_15TokenGeneration31Promptkit_Wireformat_JSONSchemaVTt1g5(uint64_t a1, uint64_t a2)
{
  v56 = type metadata accessor for Promptkit_Wireformat_JSONSchema(0);
  v59 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v60 = (&v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v51 - v6);
  MEMORY[0x1EEE9AC00](v8);
  v55 = &v51 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_15TokenGeneration31Promptkit_Wireformat_JSONSchemaV5valuetSgMd, &_sSS3key_15TokenGeneration31Promptkit_Wireformat_JSONSchemaV5valuetSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v51 - v14);
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v16 = 0;
    v52 = (&v51 - v14);
    v53 = a1;
    v17 = *(a1 + 64);
    v51 = a1 + 64;
    v18 = 1 << *(a1 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & v17;
    v21 = (v18 + 63) >> 6;
    v57 = v12;
    v54 = a2;
    while (v20)
    {
      v58 = (v20 - 1) & v20;
      v24 = __clz(__rbit64(v20)) | (v16 << 6);
LABEL_18:
      v29 = (*(v53 + 48) + 16 * v24);
      v30 = *v29;
      v31 = v29[1];
      v32 = v55;
      outlined init with copy of PromptCompletion.Content(*(v53 + 56) + *(v59 + 72) * v24, v55, type metadata accessor for Promptkit_Wireformat_JSONSchema);
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_15TokenGeneration31Promptkit_Wireformat_JSONSchemaV5valuetMd, &_sSS3key_15TokenGeneration31Promptkit_Wireformat_JSONSchemaV5valuetMR);
      v34 = *(v33 + 48);
      v35 = v57;
      *v57 = v30;
      *(v35 + 1) = v31;
      v12 = v35;
      _s15TokenGeneration16PromptCompletionV7ContentOWObTm_0(v32, &v35[v34], type metadata accessor for Promptkit_Wireformat_JSONSchema);
      (*(*(v33 - 8) + 56))(v12, 0, 1, v33);

      v15 = v52;
LABEL_19:
      outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v12, v15, &_sSS3key_15TokenGeneration31Promptkit_Wireformat_JSONSchemaV5valuetSgMd, &_sSS3key_15TokenGeneration31Promptkit_Wireformat_JSONSchemaV5valuetSgMR);
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_15TokenGeneration31Promptkit_Wireformat_JSONSchemaV5valuetMd, &_sSS3key_15TokenGeneration31Promptkit_Wireformat_JSONSchemaV5valuetMR);
      if ((*(*(v36 - 8) + 48))(v15, 1, v36) == 1)
      {
        return;
      }

      v37 = *(v36 + 48);
      v39 = *v15;
      v38 = v15[1];
      _s15TokenGeneration16PromptCompletionV7ContentOWObTm_0(v15 + v37, v7, type metadata accessor for Promptkit_Wireformat_JSONSchema);
      v40 = specialized __RawDictionaryStorage.find<A>(_:)(v39, v38);
      v42 = v41;

      if ((v42 & 1) == 0)
      {
        goto LABEL_28;
      }

      v43 = *(a2 + 56);
      v44 = v60;
      outlined init with copy of PromptCompletion.Content(v43 + *(v59 + 72) * v40, v60, type metadata accessor for Promptkit_Wireformat_JSONSchema);
      v45 = *v44;
      v46 = v7;
      v47 = *v7;
      v48 = *v7 & 0xF000000000000007;
      if ((~v45 & 0xF000000000000007) != 0)
      {
        if (v48 == 0xF000000000000007 || (outlined copy of Promptkit_Wireformat_JsonschemaEnum?(*v7), outlined copy of Promptkit_Wireformat_JsonschemaEnum?(v45), v49 = static Promptkit_Wireformat_JsonschemaEnum.== infix(_:_:)(v45, v47), outlined consume of Promptkit_Wireformat_JsonschemaEnum?(v47), outlined consume of Promptkit_Wireformat_JsonschemaEnum?(v45), (v49 & 1) == 0))
        {
LABEL_27:
          outlined destroy of PromptCompletion.FileContent(v60, type metadata accessor for Promptkit_Wireformat_JSONSchema);
          v7 = v46;
LABEL_28:
          outlined destroy of PromptCompletion.FileContent(v7, type metadata accessor for Promptkit_Wireformat_JSONSchema);
          return;
        }
      }

      else if (v48 != 0xF000000000000007)
      {
        goto LABEL_27;
      }

      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Prompt.ToolCall and conformance Prompt.ToolCall(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v22 = v60;
      v7 = v46;
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      outlined destroy of PromptCompletion.FileContent(v22, type metadata accessor for Promptkit_Wireformat_JSONSchema);
      outlined destroy of PromptCompletion.FileContent(v7, type metadata accessor for Promptkit_Wireformat_JSONSchema);
      a2 = v54;
      v12 = v57;
      v20 = v58;
      if ((v23 & 1) == 0)
      {
        return;
      }
    }

    if (v21 <= v16 + 1)
    {
      v25 = v16 + 1;
    }

    else
    {
      v25 = v21;
    }

    v26 = v25 - 1;
    while (1)
    {
      v27 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v27 >= v21)
      {
        v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_15TokenGeneration31Promptkit_Wireformat_JSONSchemaV5valuetMd, &_sSS3key_15TokenGeneration31Promptkit_Wireformat_JSONSchemaV5valuetMR);
        (*(*(v50 - 8) + 56))(v12, 1, 1, v50);
        v58 = 0;
        v16 = v26;
        goto LABEL_19;
      }

      v28 = *(v51 + 8 * v27);
      ++v16;
      if (v28)
      {
        v58 = (v28 - 1) & v28;
        v24 = __clz(__rbit64(v28)) | (v27 << 6);
        v16 = v27;
        goto LABEL_18;
      }
    }

    __break(1u);
  }
}