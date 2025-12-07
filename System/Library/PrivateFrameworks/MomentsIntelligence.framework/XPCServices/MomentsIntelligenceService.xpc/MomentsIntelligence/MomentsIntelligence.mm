id _mo_log_facility_get_os_log(dispatch_once_t *predicate)
{
  if (*predicate != -1)
  {
    dispatch_once_f(predicate, predicate, _mo_log_facility_prepare);
  }

  v2 = predicate[2];

  return v2;
}

os_log_t _mo_log_facility_prepare(uint64_t a1)
{
  result = os_log_create("com.apple.MomentsIntelligenceService", *(a1 + 8));
  *(a1 + 16) = result;
  return result;
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_opt_new();
  v4 = _mo_log_facility_get_os_log(&MOLogFacilityIntelligence);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "MIService,Starting MomentsIntelligenceService delegate and attempting connection to XPC listener", v7, 2u);
  }

  v5 = +[NSXPCListener serviceListener];
  [v5 setDelegate:v3];
  [v5 resume];

  return 0;
}

uint64_t one-time initialization function for nameForNewModel()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog24ResourceBundleIdentifierVyAA20AssetBackedLLMBundleVGMd, &_s12ModelCatalog24ResourceBundleIdentifierVyAA20AssetBackedLLMBundleVGMR);
  __swift_allocate_value_buffer(v0, nameForNewModel);
  __swift_project_value_buffer(v0, nameForNewModel);
  type metadata accessor for AssetBackedLLMBundle();
  lazy protocol witness table accessor for type TokenGenerator and conformance TokenGenerator(&lazy protocol witness table cache variable for type AssetBackedLLMBundle and conformance AssetBackedLLMBundle, &type metadata accessor for AssetBackedLLMBundle, &protocol conformance descriptor for AssetBackedLLMBundle);
  return ResourceBundleIdentifier.init(stringLiteral:)();
}

uint64_t nameForNewModel.unsafeMutableAddressor()
{
  if (one-time initialization token for nameForNewModel != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog24ResourceBundleIdentifierVyAA20AssetBackedLLMBundleVGMd, &_s12ModelCatalog24ResourceBundleIdentifierVyAA20AssetBackedLLMBundleVGMR);

  return __swift_project_value_buffer(v0, nameForNewModel);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t ClassificationQueryRunner.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&_swiftEmptyArrayStorage);
  type metadata accessor for ClassificationQueryRunner._ClientInfo(0);
  swift_allocObject();
  *(v0 + 16) = ClassificationQueryRunner._ClientInfo.init(useCaseIdentifier:onBehalfOfProcessID:sessionTrackingConfig:)(0xD00000000000002ELL, 0x800000010000D7D0, 0, 1, v1);
  return v0;
}

uint64_t ClassificationQueryRunner.init()()
{
  v1 = v0;
  v2 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&_swiftEmptyArrayStorage);
  type metadata accessor for ClassificationQueryRunner._ClientInfo(0);
  swift_allocObject();
  *(v1 + 16) = ClassificationQueryRunner._ClientInfo.init(useCaseIdentifier:onBehalfOfProcessID:sessionTrackingConfig:)(0xD00000000000002ELL, 0x800000010000D7D0, 0, 1, v2);
  return v1;
}

uint64_t ClassificationQueryRunner.classify(systemPrompt:input:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19GenerativeFunctions0A21ConfigurationRunnableVy9PromptKit012ChatMessagesE0V15TokenGeneration0I9GeneratorCAFGMd, &_s19GenerativeFunctions0A21ConfigurationRunnableVy9PromptKit012ChatMessagesE0V15TokenGeneration0I9GeneratorCAFGMR);
  v5[2] = v10;
  v5[3] = *(v10 - 8);
  v11 = swift_task_alloc();
  v5[4] = v11;
  v12 = swift_task_alloc();
  v5[5] = v12;
  *v12 = v5;
  v12[1] = ClassificationQueryRunner.classify(systemPrompt:input:);

  return closure #1 in ClassificationQueryRunner._classify_runnable(systemPrompt:input:)(v11, a1, a2, a3, a4, v4);
}

uint64_t ClassificationQueryRunner.classify(systemPrompt:input:)()
{
  v2 = *v1;
  v2[6] = v0;

  if (v0)
  {

    return _swift_task_switch(ClassificationQueryRunner.classify(systemPrompt:input:), 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[7] = v3;
    v4 = lazy protocol witness table accessor for type TokenGenerator and conformance TokenGenerator(&lazy protocol witness table cache variable for type TokenGenerator and conformance TokenGenerator, &type metadata accessor for TokenGenerator, &protocol conformance descriptor for TokenGenerator);
    *v3 = v2;
    v3[1] = ClassificationQueryRunner.classify(systemPrompt:input:);
    v5 = v2[2];

    return GenerativeConfigurationRunnable<>.run(returning:)(v5, v4);
  }
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t ClassificationQueryRunner.classify(systemPrompt:input:)(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;
  *(*v3 + 64) = v2;

  (*(v6[3] + 8))(v6[4], v6[2]);
  if (v2)
  {

    return _swift_task_switch(ClassificationQueryRunner.classify(systemPrompt:input:), 0, 0);
  }

  else
  {

    v8 = v7[1];

    return v8(a1, a2);
  }
}

uint64_t ClassificationQueryRunner._classify(systemPrompt:input:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19GenerativeFunctions0A21ConfigurationRunnableVy9PromptKit012ChatMessagesE0V15TokenGeneration0I9GeneratorCAFGMd, &_s19GenerativeFunctions0A21ConfigurationRunnableVy9PromptKit012ChatMessagesE0V15TokenGeneration0I9GeneratorCAFGMR);
  v5[2] = v10;
  v5[3] = *(v10 - 8);
  v11 = swift_task_alloc();
  v5[4] = v11;
  v12 = swift_task_alloc();
  v5[5] = v12;
  *v12 = v5;
  v12[1] = ClassificationQueryRunner._classify(systemPrompt:input:);

  return closure #1 in ClassificationQueryRunner._classify_runnable(systemPrompt:input:)(v11, a1, a2, a3, a4, v4);
}

uint64_t ClassificationQueryRunner._classify(systemPrompt:input:)()
{
  v2 = *v1;
  v2[6] = v0;

  if (v0)
  {

    return _swift_task_switch(ClassificationQueryRunner._classify(systemPrompt:input:), 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[7] = v3;
    v4 = lazy protocol witness table accessor for type TokenGenerator and conformance TokenGenerator(&lazy protocol witness table cache variable for type TokenGenerator and conformance TokenGenerator, &type metadata accessor for TokenGenerator, &protocol conformance descriptor for TokenGenerator);
    *v3 = v2;
    v3[1] = ClassificationQueryRunner._classify(systemPrompt:input:);
    v5 = v2[2];

    return GenerativeConfigurationRunnable<>.run(returning:)(v5, v4);
  }
}

uint64_t ClassificationQueryRunner._classify(systemPrompt:input:)(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;
  *(*v3 + 64) = v2;

  (*(v6[3] + 8))(v6[4], v6[2]);
  if (v2)
  {

    return _swift_task_switch(ClassificationQueryRunner._classify(systemPrompt:input:), 0, 0);
  }

  else
  {

    v8 = v7[1];

    return v8(a1, a2);
  }
}

uint64_t ClassificationQueryRunner._classify_runnable(systemPrompt:input:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = ClassificationQueryRunner._classify_runnable(systemPrompt:input:);

  return closure #1 in ClassificationQueryRunner._classify_runnable(systemPrompt:input:)(a1, a2, a3, a4, a5, v5);
}

uint64_t ClassificationQueryRunner._classify_runnable(systemPrompt:input:)()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t closure #1 in ClassificationQueryRunner._classify_runnable(systemPrompt:input:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[28] = a5;
  v6[29] = a6;
  v6[26] = a3;
  v6[27] = a4;
  v6[24] = a1;
  v6[25] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19GenerativeFunctions01_A47FunctionOverridableInternals_ChatMessagesPromptV04chatgH0_AA01_acE9_MetadataV8metadatatSgMd, &_s19GenerativeFunctions01_A47FunctionOverridableInternals_ChatMessagesPromptV04chatgH0_AA01_acE9_MetadataV8metadatatSgMR);
  v6[30] = swift_task_alloc();
  v6[31] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19GenerativeFunctions01_A47FunctionOverridableInternals_ChatMessagesPromptV_AA01_acE9_MetadataVtMd, &_s19GenerativeFunctions01_A47FunctionOverridableInternals_ChatMessagesPromptV_AA01_acE9_MetadataVtMR);
  v6[32] = swift_task_alloc();
  v7 = type metadata accessor for _GenerativeFunctionInternals_Metadata();
  v6[33] = v7;
  v6[34] = *(v7 - 8);
  v6[35] = swift_task_alloc();
  v8 = type metadata accessor for _GenerativeFunctionOverridableInternals_ChatMessagesPrompt();
  v6[36] = v8;
  v6[37] = *(v8 - 8);
  v6[38] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s29GenerativeFunctionsFoundation18FunctionIdentifierV19ResourceInformationVSgMd, &_s29GenerativeFunctionsFoundation18FunctionIdentifierV19ResourceInformationVSgMR);
  v6[39] = swift_task_alloc();
  v9 = type metadata accessor for FunctionIdentifier();
  v6[40] = v9;
  v6[41] = *(v9 - 8);
  v6[42] = swift_task_alloc();
  v6[43] = swift_task_alloc();
  v10 = type metadata accessor for _ClientInfoSessionTrackingConfig();
  v6[44] = v10;
  v6[45] = *(v10 - 8);
  v6[46] = swift_task_alloc();
  v11 = type metadata accessor for StringResponseSanitizer.DefaultableGuardrails();
  v6[47] = v11;
  v6[48] = *(v11 - 8);
  v6[49] = swift_task_alloc();
  v12 = type metadata accessor for StringResponseSanitizer.DefaultableOverrides();
  v6[50] = v12;
  v6[51] = *(v12 - 8);
  v6[52] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16GenerativeModels12OverrideHintOyAA23StringResponseSanitizerVGMd, &_s16GenerativeModels12OverrideHintOyAA23StringResponseSanitizerVGMR);
  v6[53] = v13;
  v6[54] = *(v13 - 8);
  v6[55] = swift_task_alloc();
  v14 = type metadata accessor for StringRenderedPromptSanitizer.DefaultableGuardrails();
  v6[56] = v14;
  v6[57] = *(v14 - 8);
  v6[58] = swift_task_alloc();
  v15 = type metadata accessor for StringRenderedPromptSanitizer.DefaultableOverrides();
  v6[59] = v15;
  v6[60] = *(v15 - 8);
  v6[61] = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16GenerativeModels12OverrideHintOyAA29StringRenderedPromptSanitizerVGMd, &_s16GenerativeModels12OverrideHintOyAA29StringRenderedPromptSanitizerVGMR);
  v6[62] = v16;
  v6[63] = *(v16 - 8);
  v6[64] = swift_task_alloc();
  v17 = type metadata accessor for ChatMessagesPrompt();
  v6[65] = v17;
  v6[66] = *(v17 - 8);
  v6[67] = swift_task_alloc();
  v6[68] = swift_task_alloc();
  v6[69] = swift_task_alloc();
  v6[70] = swift_task_alloc();
  v6[71] = swift_task_alloc();

  return _swift_task_switch(closure #1 in ClassificationQueryRunner._classify_runnable(systemPrompt:input:), 0, 0);
}

uint64_t closure #1 in ClassificationQueryRunner._classify_runnable(systemPrompt:input:)()
{
  v40 = *(v0 + 560);
  v38 = *(v0 + 552);
  v28 = *(v0 + 544);
  v23 = *(v0 + 536);
  v45 = *(v0 + 528);
  v1 = *(v0 + 504);
  v2 = *(v0 + 512);
  v3 = *(v0 + 488);
  v26 = *(v0 + 496);
  v27 = *(v0 + 520);
  v4 = *(v0 + 480);
  v5 = *(v0 + 456);
  v6 = *(v0 + 464);
  v24 = *(v0 + 472);
  v25 = *(v0 + 448);
  v35 = *(v0 + 440);
  v36 = *(v0 + 432);
  v37 = *(v0 + 424);
  v29 = *(v0 + 416);
  v30 = *(v0 + 408);
  v31 = *(v0 + 400);
  v32 = *(v0 + 392);
  v33 = *(v0 + 384);
  v34 = *(v0 + 376);
  v41 = *(v0 + 360);
  v42 = *(v0 + 352);
  v43 = *(v0 + 368);
  v22 = *(v0 + 200);
  v44 = *(v0 + 312);
  v7 = *(v0 + 224);
  v39 = *(v0 + 232);
  v8 = *(v0 + 216);
  v9 = swift_task_alloc();
  *(v9 + 16) = v22;
  *(v9 + 32) = v8;
  *(v9 + 40) = v7;
  ChatMessagesPrompt.init(_:)();

  v10 = type metadata accessor for StringRenderedPromptSanitizer.Overrides();
  (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
  (*(v4 + 104))(v3, enum case for StringRenderedPromptSanitizer.DefaultableOverrides.withoutDefault(_:), v24);
  v11 = type metadata accessor for StringRenderedPromptSanitizer.Guardrails();
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  (*(v5 + 104))(v6, enum case for StringRenderedPromptSanitizer.DefaultableGuardrails.withoutDefault(_:), v25);
  StringRenderedPromptSanitizer.init(overrides:guardrails:)();
  v12 = enum case for OverrideHint.constant<A>(_:);
  (*(v1 + 104))(v2, enum case for OverrideHint.constant<A>(_:), v26);
  *(v0 + 576) = lazy protocol witness table accessor for type TokenGenerator and conformance TokenGenerator(&lazy protocol witness table cache variable for type ChatMessagesPrompt and conformance ChatMessagesPrompt, &type metadata accessor for ChatMessagesPrompt, &protocol conformance descriptor for ChatMessagesPrompt);
  GenerativeConfigurationProtocol.renderedPromptSanitizer(_:)();
  (*(v1 + 8))(v2, v26);
  v13 = *(v45 + 8);
  *(v0 + 584) = v13;
  *(v0 + 592) = (v45 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13(v23, v27);
  v14 = type metadata accessor for StringResponseSanitizer.Overrides();
  (*(*(v14 - 8) + 56))(v29, 1, 1, v14);
  (*(v30 + 104))(v29, enum case for StringResponseSanitizer.DefaultableOverrides.withoutDefault(_:), v31);
  v15 = type metadata accessor for StringResponseSanitizer.Guardrails();
  (*(*(v15 - 8) + 56))(v32, 1, 1, v15);
  (*(v33 + 104))(v32, enum case for StringResponseSanitizer.DefaultableGuardrails.withoutDefault(_:), v34);
  StringResponseSanitizer.init(overrides:guardrails:)();
  (*(v36 + 104))(v35, v12, v37);
  GenerativeConfigurationProtocol.responseSanitizer(_:)();
  (*(v36 + 8))(v35, v37);
  v13(v28, v27);
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&_swiftEmptyArrayStorage);
  GenerativeConfigurationProtocol._internalTrackingConfig(_:)();

  v13(v38, v27);
  v16 = *(v39 + 16);
  *(v0 + 600) = v16;
  v17 = OBJC_IVAR____TtCC26MomentsIntelligenceService25ClassificationQueryRunnerP33_8CF816FBE8897DCB181C8B7873D1FDB811_ClientInfo_trackingConfig;
  swift_beginAccess();
  (*(v41 + 16))(v43, v16 + v17, v42);
  GenerativeConfigurationProtocol._internalSessionTrackingConfig(_:)();
  (*(v41 + 8))(v43, v42);
  v13(v40, v27);
  v18 = type metadata accessor for FunctionIdentifier.ResourceInformation();
  (*(*(v18 - 8) + 56))(v44, 1, 1, v18);
  FunctionIdentifier.init(identifier:resourceInformation:)();
  v19 = swift_task_alloc();
  *(v0 + 608) = v19;
  *v19 = v0;
  v19[1] = closure #1 in ClassificationQueryRunner._classify_runnable(systemPrompt:input:);
  v20 = *(v0 + 240);

  return static _GenerativeModelOverrideHelpers._generativeFunctionOverridesWithMetadataChatMessagesPrompt(_:)(v20, 0xD00000000000001CLL, 0x800000010000D800);
}

{
  *(*v1 + 616) = v0;

  if (v0)
  {
    v2 = closure #1 in ClassificationQueryRunner._classify_runnable(systemPrompt:input:);
  }

  else
  {
    v2 = closure #1 in ClassificationQueryRunner._classify_runnable(systemPrompt:input:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v1 = v0[30];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19GenerativeFunctions01_A47FunctionOverridableInternals_ChatMessagesPromptV04chatgH0_AA01_acE9_MetadataV8metadatatMd, &_s19GenerativeFunctions01_A47FunctionOverridableInternals_ChatMessagesPromptV04chatgH0_AA01_acE9_MetadataV8metadatatMR);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    outlined destroy of (chatMessagesPrompt: _GenerativeFunctionOverridableInternals_ChatMessagesPrompt, metadata: _GenerativeFunctionInternals_Metadata)?(v1);
  }

  else
  {
    v39 = v0[73];
    v34 = v0[70];
    v35 = v0[71];
    v37 = v0[65];
    v38 = v0[66];
    v26 = v0[42];
    v27 = v0[41];
    v28 = v0[40];
    v29 = v0[43];
    v22 = v0[38];
    v36 = v0[37];
    v3 = v0[36];
    v24 = v0[35];
    v5 = v0[33];
    v4 = v0[34];
    v7 = v0[31];
    v6 = v0[32];
    v30 = v0[27];
    v31 = v0[28];
    v32 = v0[25];
    v33 = v0[26];
    v20 = *(v7 + 48);
    v21 = *(v2 + 48);
    v8 = *(v36 + 32);
    v8(v6, v1, v3);
    v9 = *(v4 + 32);
    v9(v6 + v20, v1 + v21, v5);
    v10 = *(v7 + 48);
    v8(v22, v6, v3);
    v9(v24, v6 + v10, v5);
    _GenerativeFunctionInternals_Metadata.functionIdentifier.getter();
    (*(v27 + 8))(v29, v28);
    (*(v27 + 32))(v29, v26, v28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_9PromptKit0D25ComponentValueConvertible_ptGMd, &_ss23_ContiguousArrayStorageCySS_9PromptKit0D25ComponentValueConvertible_ptGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10000DC90;
    *(inited + 32) = 0x7475706E69;
    *(inited + 72) = &type metadata for String;
    *(inited + 80) = &protocol witness table for String;
    *(inited + 40) = 0xE500000000000000;
    *(inited + 48) = v30;
    *(inited + 56) = v31;
    strcpy((inited + 88), "systemPrompt");
    *(inited + 101) = 0;
    *(inited + 102) = -5120;
    *(inited + 128) = &type metadata for String;
    *(inited + 136) = &protocol witness table for String;
    *(inited + 104) = v32;
    *(inited + 112) = v33;

    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_9PromptKit0C25ComponentValueConvertible_pTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_9PromptKit0A25ComponentValueConvertible_ptMd, &_sSS_9PromptKit0A25ComponentValueConvertible_ptMR);
    swift_arrayDestroy();
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(&_swiftEmptyArrayStorage);
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_9PromptKit012ChatMessagesC11Convertible_pTt0g5Tf4g_n(&_swiftEmptyArrayStorage);
    static _GenerativeFunctionOverrideHelpers._configurePrompt(_:withOverride:bindingChatMessagesPrompts:bindingVariables:bindingConfigurations:)();

    (*(v4 + 8))(v24, v5);
    (*(v36 + 8))(v22, v3);
    v39(v35, v37);
    (*(v38 + 32))(v35, v34, v37);
  }

  v12 = v0[75];
  v25 = v0[73];
  v13 = v0[71];
  v14 = v0[70];
  v15 = v0[65];
  v16 = v0[43];
  v17 = v0[41];
  v23 = v0[40];
  GenerativeConfigurationProtocol.functionIdentifier(_:)();
  v0[23] = *(v12 + OBJC_IVAR____TtCC26MomentsIntelligenceService25ClassificationQueryRunnerP33_8CF816FBE8897DCB181C8B7873D1FDB811_ClientInfo__model);
  type metadata accessor for TokenGenerator();
  GenerativeConfigurationProtocol.with<A>(model:modelType:)();
  v25(v14, v15);
  (*(v17 + 8))(v16, v23);
  v25(v13, v15);

  v18 = v0[1];

  return v18();
}

{
  v1 = v0[73];
  v2 = v0[71];
  v3 = v0[65];
  (*(v0[41] + 8))(v0[43], v0[40]);
  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t closure #1 in closure #1 in ClassificationQueryRunner._classify_runnable(systemPrompt:input:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v36 = a3;
  v37 = a4;
  v33 = a2;
  v44 = a5;
  v6 = type metadata accessor for User();
  v7 = *(v6 - 8);
  v38 = v6;
  v39 = v7;
  __chkstk_darwin(v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for System();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ChatMessagesPrompt();
  v34 = *(v14 - 8);
  v15 = v34;
  v16 = __chkstk_darwin(v14);
  v31 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v32 = &v30 - v18;
  v42 = a1;
  v43 = v33;
  v19 = v35;
  System.init(_:)();
  static ChatMessagesPromptBuilder.buildExpression<A>(_:)();
  (*(v11 + 8))(v13, v10);
  v40 = v36;
  v41 = v37;
  User.init(_:)();
  v37 = v19;
  v20 = v31;
  v21 = v38;
  static ChatMessagesPromptBuilder.buildExpression<A>(_:)();
  (*(v39 + 8))(v9, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9PromptKit012ChatMessagesD0VGMd, &_ss23_ContiguousArrayStorageCy9PromptKit012ChatMessagesD0VGMR);
  v22 = *(v34 + 72);
  v23 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_10000DC90;
  v25 = v24 + v23;
  v26 = *(v15 + 16);
  v27 = v32;
  v26(v25, v32, v14);
  v26(v25 + v22, v20, v14);
  static ChatMessagesPromptBuilder.buildBlock(_:)();

  v28 = *(v15 + 8);
  v28(v20, v14);
  return (v28)(v27, v14);
}

uint64_t closure #1 in closure #1 in closure #1 in ClassificationQueryRunner._classify_runnable(systemPrompt:input:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Prompt();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[3] = &type metadata for String;
  v12[4] = &protocol witness table for String;
  v12[0] = a1;
  v12[1] = a2;

  static CustomPromptBuilder.buildExpression(_:)();
  __swift_destroy_boxed_opaque_existential_1(v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9PromptKit0D0VGMd, &_ss23_ContiguousArrayStorageCy9PromptKit0D0VGMR);
  v8 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10000DCA0;
  (*(v5 + 16))(v9 + v8, v7, v4);
  static CustomPromptBuilder.buildBlock(_:)();

  return (*(v5 + 8))(v7, v4);
}

uint64_t ClassificationQueryRunner._classify_generateGenerativeFunctionOverride()()
{
  v0 = type metadata accessor for StringResponseSanitizer.DefaultableGuardrails();
  v53 = *(v0 - 8);
  v54 = v0;
  __chkstk_darwin(v0);
  v52 = &v41 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for StringResponseSanitizer.DefaultableOverrides();
  v48 = *(v2 - 8);
  v49 = v2;
  __chkstk_darwin(v2);
  v46 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16GenerativeModels12OverrideHintOyAA23StringResponseSanitizerVGMd, &_s16GenerativeModels12OverrideHintOyAA23StringResponseSanitizerVGMR);
  v50 = *(v4 - 8);
  v51 = v4;
  __chkstk_darwin(v4);
  v47 = &v41 - v5;
  v6 = type metadata accessor for StringRenderedPromptSanitizer.DefaultableGuardrails();
  v42 = *(v6 - 8);
  v43 = v6;
  __chkstk_darwin(v6);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for StringRenderedPromptSanitizer.DefaultableOverrides();
  v9 = *(v41 - 8);
  __chkstk_darwin(v41);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16GenerativeModels12OverrideHintOyAA29StringRenderedPromptSanitizerVGMd, &_s16GenerativeModels12OverrideHintOyAA29StringRenderedPromptSanitizerVGMR);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v41 - v14;
  v16 = type metadata accessor for ChatMessagesPrompt();
  v55 = *(v16 - 8);
  v17 = __chkstk_darwin(v16);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v22 = &v41 - v21;
  __chkstk_darwin(v20);
  v44 = &v41 - v23;
  v24 = v45;
  ChatMessagesPrompt.init(_:)();
  v45 = v24;
  v25 = type metadata accessor for StringRenderedPromptSanitizer.Overrides();
  (*(*(v25 - 8) + 56))(v11, 1, 1, v25);
  (*(v9 + 104))(v11, enum case for StringRenderedPromptSanitizer.DefaultableOverrides.withoutDefault(_:), v41);
  v26 = type metadata accessor for StringRenderedPromptSanitizer.Guardrails();
  (*(*(v26 - 8) + 56))(v8, 1, 1, v26);
  (*(v42 + 104))(v8, enum case for StringRenderedPromptSanitizer.DefaultableGuardrails.withoutDefault(_:), v43);
  StringRenderedPromptSanitizer.init(overrides:guardrails:)();
  v27 = enum case for OverrideHint.constant<A>(_:);
  (*(v13 + 104))(v15, enum case for OverrideHint.constant<A>(_:), v12);
  lazy protocol witness table accessor for type TokenGenerator and conformance TokenGenerator(&lazy protocol witness table cache variable for type ChatMessagesPrompt and conformance ChatMessagesPrompt, &type metadata accessor for ChatMessagesPrompt, &protocol conformance descriptor for ChatMessagesPrompt);
  GenerativeConfigurationProtocol.renderedPromptSanitizer(_:)();
  (*(v13 + 8))(v15, v12);
  v28 = *(v55 + 8);
  v55 += 8;
  v28(v19, v16);
  v29 = type metadata accessor for StringResponseSanitizer.Overrides();
  v30 = v46;
  (*(*(v29 - 8) + 56))(v46, 1, 1, v29);
  (*(v48 + 104))(v30, enum case for StringResponseSanitizer.DefaultableOverrides.withoutDefault(_:), v49);
  v31 = type metadata accessor for StringResponseSanitizer.Guardrails();
  v32 = v52;
  (*(*(v31 - 8) + 56))(v52, 1, 1, v31);
  (*(v53 + 104))(v32, enum case for StringResponseSanitizer.DefaultableGuardrails.withoutDefault(_:), v54);
  v33 = v47;
  StringResponseSanitizer.init(overrides:guardrails:)();
  v34 = v50;
  v35 = v51;
  (*(v50 + 104))(v33, v27, v51);
  v36 = v44;
  GenerativeConfigurationProtocol.responseSanitizer(_:)();
  (*(v34 + 8))(v33, v35);
  v28(v22, v16);
  v37 = v45;
  v38 = static _GenerativeFunctionOverrideHelpers._generateGenerativeFunctionOverride(promptBody:identifier:)();
  if (v37)
  {
    return (v28)(v36, v16);
  }

  v40 = v38;
  v28(v36, v16);
  return v40;
}

uint64_t closure #1 in ClassificationQueryRunner._classify_generateGenerativeFunctionOverride()@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v2 = type metadata accessor for User();
  v3 = *(v2 - 8);
  v29 = v2;
  v30 = v3;
  __chkstk_darwin(v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for System();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ChatMessagesPrompt();
  v27 = *(v10 - 8);
  v11 = v27;
  v12 = __chkstk_darwin(v10);
  v25 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v26 = &v25 - v14;
  System.init(_:)();
  static ChatMessagesPromptBuilder.buildExpression<A>(_:)();
  (*(v7 + 8))(v9, v6);
  User.init(_:)();
  v28 = v1;
  v15 = v25;
  v16 = v29;
  static ChatMessagesPromptBuilder.buildExpression<A>(_:)();
  (*(v30 + 8))(v5, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9PromptKit012ChatMessagesD0VGMd, &_ss23_ContiguousArrayStorageCy9PromptKit012ChatMessagesD0VGMR);
  v17 = *(v27 + 72);
  v18 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_10000DC90;
  v20 = v19 + v18;
  v21 = *(v11 + 16);
  v22 = v26;
  v21(v20, v26, v10);
  v21(v20 + v17, v15, v10);
  static ChatMessagesPromptBuilder.buildBlock(_:)();

  v23 = *(v11 + 8);
  v23(v15, v10);
  return (v23)(v22, v10);
}

uint64_t closure #1 in closure #1 in ClassificationQueryRunner._classify_generateGenerativeFunctionOverride()(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Prompt();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[3] = type metadata accessor for BindableVariable();
  v10[4] = &protocol witness table for BindableVariable;
  __swift_allocate_boxed_opaque_existential_1(v10);
  BindableVariable.init(name:)();
  static CustomPromptBuilder.buildExpression(_:)();
  __swift_destroy_boxed_opaque_existential_1(v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9PromptKit0D0VGMd, &_ss23_ContiguousArrayStorageCy9PromptKit0D0VGMR);
  v6 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10000DCA0;
  (*(v3 + 16))(v7 + v6, v5, v2);
  static CustomPromptBuilder.buildBlock(_:)();

  return (*(v3 + 8))(v5, v2);
}

unsigned __int8 *ClassificationQueryRunner._ClientInfo.init(useCaseIdentifier:onBehalfOfProcessID:sessionTrackingConfig:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, unint64_t a5)
{
  v6 = v5;
  v57 = a4;
  v60 = a3;
  v10 = type metadata accessor for CachePolicy();
  __chkstk_darwin(v10 - 8);
  v56[2] = v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for GenerativeModelSessionConfiguration();
  __chkstk_darwin(v12 - 8);
  v56[1] = v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog24ResourceBundleIdentifierVyAA20AssetBackedLLMBundleVGMd, &_s12ModelCatalog24ResourceBundleIdentifierVyAA20AssetBackedLLMBundleVGMR);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v56 - v16;
  v18 = type metadata accessor for _ClientInfoSessionTrackingConfig();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = a1;
  v59 = a2;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&_swiftEmptyArrayStorage);
  _ClientInfoSessionTrackingConfig.init(sessionTrackingConifg:_internalSessionTrackingConfig:)();
  (*(v19 + 32))(v6 + OBJC_IVAR____TtCC26MomentsIntelligenceService25ClassificationQueryRunnerP33_8CF816FBE8897DCB181C8B7873D1FDB811_ClientInfo_trackingConfig, v21, v18);
  if (!*(a5 + 16))
  {
    goto LABEL_66;
  }

  v22 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000015, 0x800000010000D910);
  if ((v23 & 1) == 0)
  {
    goto LABEL_66;
  }

  v24 = (*(a5 + 56) + 16 * v22);
  v26 = *v24;
  v25 = v24[1];

  v28 = HIBYTE(v25) & 0xF;
  v29 = v26 & 0xFFFFFFFFFFFFLL;
  if (!((v25 & 0x2000000000000000) != 0 ? HIBYTE(v25) & 0xF : v26 & 0xFFFFFFFFFFFFLL))
  {
    goto LABEL_66;
  }

  if ((v25 & 0x1000000000000000) != 0)
  {
    specialized _parseInteger<A, B>(ascii:radix:)(v26, v25, 10);
    goto LABEL_66;
  }

  if ((v25 & 0x2000000000000000) != 0)
  {
    v61[0] = v26;
    v61[1] = v25 & 0xFFFFFFFFFFFFFFLL;
    if (v26 == 43)
    {
      if (v28)
      {
        if (--v28)
        {
          v44 = 0;
          v45 = v61 + 1;
          while (1)
          {
            v46 = *v45 - 48;
            if (v46 > 9)
            {
              break;
            }

            v47 = 10 * v44;
            if ((v44 * 10) >> 64 != (10 * v44) >> 63)
            {
              break;
            }

            v44 = v47 + v46;
            if (__OFADD__(v47, v46))
            {
              break;
            }

            ++v45;
            if (!--v28)
            {
              goto LABEL_65;
            }
          }
        }

        goto LABEL_64;
      }

LABEL_75:
      __break(1u);
      return result;
    }

    if (v26 != 45)
    {
      if (v28)
      {
        v51 = 0;
        v52 = v61;
        while (1)
        {
          v53 = *v52 - 48;
          if (v53 > 9)
          {
            break;
          }

          v54 = 10 * v51;
          if ((v51 * 10) >> 64 != (10 * v51) >> 63)
          {
            break;
          }

          v51 = v54 + v53;
          if (__OFADD__(v54, v53))
          {
            break;
          }

          ++v52;
          if (!--v28)
          {
            goto LABEL_65;
          }
        }
      }

      goto LABEL_64;
    }

    if (v28)
    {
      if (--v28)
      {
        v36 = 0;
        v37 = v61 + 1;
        while (1)
        {
          v38 = *v37 - 48;
          if (v38 > 9)
          {
            break;
          }

          v39 = 10 * v36;
          if ((v36 * 10) >> 64 != (10 * v36) >> 63)
          {
            break;
          }

          v36 = v39 - v38;
          if (__OFSUB__(v39, v38))
          {
            break;
          }

          ++v37;
          if (!--v28)
          {
            goto LABEL_65;
          }
        }
      }

      goto LABEL_64;
    }

    goto LABEL_73;
  }

  if ((v26 & 0x1000000000000000) != 0)
  {
    result = ((v25 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    result = _StringObject.sharedUTF8.getter();
  }

  v31 = *result;
  if (v31 == 43)
  {
    if (v29 < 1)
    {
LABEL_74:
      __break(1u);
      goto LABEL_75;
    }

    v28 = v29 - 1;
    if (v29 != 1)
    {
      v40 = 0;
      if (result)
      {
        v41 = result + 1;
        while (1)
        {
          v42 = *v41 - 48;
          if (v42 > 9)
          {
            goto LABEL_64;
          }

          v43 = 10 * v40;
          if ((v40 * 10) >> 64 != (10 * v40) >> 63)
          {
            goto LABEL_64;
          }

          v40 = v43 + v42;
          if (__OFADD__(v43, v42))
          {
            goto LABEL_64;
          }

          ++v41;
          if (!--v28)
          {
            goto LABEL_65;
          }
        }
      }

      goto LABEL_56;
    }

LABEL_64:
    LOBYTE(v28) = 1;
    goto LABEL_65;
  }

  if (v31 != 45)
  {
    if (v29)
    {
      v48 = 0;
      if (result)
      {
        while (1)
        {
          v49 = *result - 48;
          if (v49 > 9)
          {
            goto LABEL_64;
          }

          v50 = 10 * v48;
          if ((v48 * 10) >> 64 != (10 * v48) >> 63)
          {
            goto LABEL_64;
          }

          v48 = v50 + v49;
          if (__OFADD__(v50, v49))
          {
            goto LABEL_64;
          }

          ++result;
          if (!--v29)
          {
            goto LABEL_56;
          }
        }
      }

      goto LABEL_56;
    }

    goto LABEL_64;
  }

  if (v29 < 1)
  {
    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v28 = v29 - 1;
  if (v29 == 1)
  {
    goto LABEL_64;
  }

  v32 = 0;
  if (result)
  {
    v33 = result + 1;
    while (1)
    {
      v34 = *v33 - 48;
      if (v34 > 9)
      {
        goto LABEL_64;
      }

      v35 = 10 * v32;
      if ((v32 * 10) >> 64 != (10 * v32) >> 63)
      {
        goto LABEL_64;
      }

      v32 = v35 - v34;
      if (__OFSUB__(v35, v34))
      {
        goto LABEL_64;
      }

      ++v33;
      if (!--v28)
      {
        goto LABEL_65;
      }
    }
  }

LABEL_56:
  LOBYTE(v28) = 0;
LABEL_65:
  v62 = v28;
LABEL_66:

  type metadata accessor for TokenGenerator();
  if (one-time initialization token for nameForNewModel != -1)
  {
    swift_once();
  }

  v55 = __swift_project_value_buffer(v14, nameForNewModel);
  (*(v15 + 16))(v17, v55, v14);
  static CachePolicy.inMemory.getter();
  GenerativeModelSessionConfiguration.init(identifier:handlesSensitiveData:cachePolicy:)();
  *(v6 + OBJC_IVAR____TtCC26MomentsIntelligenceService25ClassificationQueryRunnerP33_8CF816FBE8897DCB181C8B7873D1FDB811_ClientInfo__model) = TokenGenerator.init(model:configuration:useCaseIdentifier:onBehalfOf:parentOfOnBehalfOf:)();
  return v6;
}

uint64_t ClassificationQueryRunner._ClientInfo.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtCC26MomentsIntelligenceService25ClassificationQueryRunnerP33_8CF816FBE8897DCB181C8B7873D1FDB811_ClientInfo_trackingConfig;
  v2 = type metadata accessor for _ClientInfoSessionTrackingConfig();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t protocol witness for _ClientInfoProtocol.useCaseIdentifier.getter in conformance ClassificationQueryRunner._ClientInfo()
{
  v1 = *(*v0 + 16);

  return v1;
}

uint64_t protocol witness for _ClientInfoProtocol.trackingConfig.getter in conformance ClassificationQueryRunner._ClientInfo@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtCC26MomentsIntelligenceService25ClassificationQueryRunnerP33_8CF816FBE8897DCB181C8B7873D1FDB811_ClientInfo_trackingConfig;
  swift_beginAccess();
  v5 = type metadata accessor for _ClientInfoSessionTrackingConfig();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

uint64_t protocol witness for _ClientInfoProtocol.trackingConfig.setter in conformance ClassificationQueryRunner._ClientInfo(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtCC26MomentsIntelligenceService25ClassificationQueryRunnerP33_8CF816FBE8897DCB181C8B7873D1FDB811_ClientInfo_trackingConfig;
  swift_beginAccess();
  v5 = type metadata accessor for _ClientInfoSessionTrackingConfig();
  (*(*(v5 - 8) + 40))(v3 + v4, a1, v5);
  return swift_endAccess();
}

uint64_t PersonalizedReflectionQueryRunner.__deallocating_deinit()
{

  return _swift_deallocClassInstance(v0, 24, 7);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v4);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t type metadata accessor for ClassificationQueryRunner._ClientInfo(uint64_t a1)
{
  result = type metadata singleton initialization cache for ClassificationQueryRunner._ClientInfo;
  if (!type metadata singleton initialization cache for ClassificationQueryRunner._ClientInfo)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for ClassificationQueryRunner._ClientInfo(uint64_t a1)
{
  result = type metadata accessor for _ClientInfoSessionTrackingConfig();
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_9PromptKit0C25ComponentValueConvertible_pTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS9PromptKit0C25ComponentValueConvertible_pGMd, &_ss18_DictionaryStorageCySS9PromptKit0C25ComponentValueConvertible_pGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of (String, ChatMessagesPromptConvertible)(v4, &v13, &_sSS_9PromptKit0A25ComponentValueConvertible_ptMd, &_sSS_9PromptKit0A25ComponentValueConvertible_ptMR);
      v5 = v13;
      v6 = v14;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100006714(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of (String, ChatMessagesPromptConvertible)(v4, &v13, &_sSS_yptMd, &_sSS_yptMR);
      v5 = v13;
      v6 = v14;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = outlined init with take of Any(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_9PromptKit012ChatMessagesC11Convertible_pTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS9PromptKit012ChatMessagesC11Convertible_pGMd, &_ss18_DictionaryStorageCySS9PromptKit012ChatMessagesC11Convertible_pGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of (String, ChatMessagesPromptConvertible)(v4, &v13, &_sSS_9PromptKit012ChatMessagesA11Convertible_ptMd, &_sSS_9PromptKit012ChatMessagesA11Convertible_ptMR);
      v5 = v13;
      v6 = v14;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100006714(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_100006714(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t outlined init with copy of (String, ChatMessagesPromptConvertible)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
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

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t outlined destroy of (chatMessagesPrompt: _GenerativeFunctionOverridableInternals_ChatMessagesPrompt, metadata: _GenerativeFunctionInternals_Metadata)?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19GenerativeFunctions01_A47FunctionOverridableInternals_ChatMessagesPromptV04chatgH0_AA01_acE9_MetadataV8metadatatSgMd, &_s19GenerativeFunctions01_A47FunctionOverridableInternals_ChatMessagesPromptV04chatgH0_AA01_acE9_MetadataV8metadatatSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t lazy protocol witness table accessor for type TokenGenerator and conformance TokenGenerator(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t BundleDataClassifier.classifyBundleData(systemPrompt:input:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  __chkstk_darwin(v12 - 8);
  v14 = &v18 - v13;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = a1;
  v16[5] = a2;
  v16[6] = a3;
  v16[7] = a4;
  v16[8] = a5;
  v16[9] = a6;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v14, &async function pointer to partial apply for closure #1 in BundleDataClassifier.classifyBundleData(systemPrompt:input:completion:), v16);
}

uint64_t closure #1 in BundleDataClassifier.classifyBundleData(systemPrompt:input:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a8;
  v8[10] = v12;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19GenerativeFunctions0A21ConfigurationRunnableVy9PromptKit012ChatMessagesE0V15TokenGeneration0I9GeneratorCAFGMd, &_s19GenerativeFunctions0A21ConfigurationRunnableVy9PromptKit012ChatMessagesE0V15TokenGeneration0I9GeneratorCAFGMR);
  v8[11] = v9;
  v8[12] = *(v9 - 8);
  v8[13] = swift_task_alloc();

  return _swift_task_switch(closure #1 in BundleDataClassifier.classifyBundleData(systemPrompt:input:completion:), 0, 0);
}

uint64_t closure #1 in BundleDataClassifier.classifyBundleData(systemPrompt:input:completion:)()
{
  type metadata accessor for ClassificationQueryRunner();
  inited = swift_initStackObject();
  v0[14] = inited;
  v2 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&_swiftEmptyArrayStorage);
  type metadata accessor for ClassificationQueryRunner._ClientInfo(0);
  swift_allocObject();
  v3 = ClassificationQueryRunner._ClientInfo.init(useCaseIdentifier:onBehalfOfProcessID:sessionTrackingConfig:)(0xD00000000000002ELL, 0x800000010000D7D0, 0, 1, v2);
  v0[15] = v3;
  *(inited + 16) = v3;
  v4 = swift_task_alloc();
  v0[16] = v4;
  *v4 = v0;
  v4[1] = closure #1 in BundleDataClassifier.classifyBundleData(systemPrompt:input:completion:);
  v5 = v0[13];
  v6 = v0[7];
  v7 = v0[8];
  v8 = v0[5];
  v9 = v0[6];

  return closure #1 in ClassificationQueryRunner._classify_runnable(systemPrompt:input:)(v5, v8, v9, v6, v7, inited);
}

{
  v2 = *v1;
  v2[17] = v0;

  if (v0)
  {

    return _swift_task_switch(closure #1 in BundleDataClassifier.classifyBundleData(systemPrompt:input:completion:), 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[18] = v3;
    v4 = lazy protocol witness table accessor for type TokenGenerator and conformance TokenGenerator();
    *v3 = v2;
    v3[1] = closure #1 in BundleDataClassifier.classifyBundleData(systemPrompt:input:completion:);
    v5 = v2[11];

    return GenerativeConfigurationRunnable<>.run(returning:)(v5, v4);
  }
}

{
  v1 = v0[17];
  v2 = v0[9];

  swift_errorRetain();
  v2(0, 0, v1);

  v3 = v0[1];

  return v3();
}

{
  (*(v0 + 72))(*(v0 + 168), *(v0 + 160), 0);

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = v0[19];
  v2 = v0[9];

  swift_errorRetain();
  v2(0, 0, v1);

  v3 = v0[1];

  return v3();
}

uint64_t closure #1 in BundleDataClassifier.classifyBundleData(systemPrompt:input:completion:)(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v6[19] = v2;

  v7 = v6[13];
  v8 = v6[12];
  v9 = v6[11];
  if (v2)
  {
    (*(v8 + 8))(v7, v9);
    v10 = closure #1 in BundleDataClassifier.classifyBundleData(systemPrompt:input:completion:);
  }

  else
  {
    v6[20] = a2;
    v6[21] = a1;
    (*(v8 + 8))(v7, v9);
    v10 = closure #1 in BundleDataClassifier.classifyBundleData(systemPrompt:input:completion:);
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t partial apply for closure #1 in BundleDataClassifier.classifyBundleData(systemPrompt:input:completion:)(uint64_t a1)
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
  v11[1] = partial apply for closure #1 in BundleDataClassifier.classifyBundleData(systemPrompt:input:completion:);

  return closure #1 in BundleDataClassifier.classifyBundleData(systemPrompt:input:completion:)(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  outlined init with copy of TaskPriority?(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    outlined destroy of TaskPriority?(v11);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      outlined destroy of TaskPriority?(a3);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of TaskPriority?(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

id PersonalizedReflectionPromptGenerator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BundleDataClassifier.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BundleDataClassifier();
  return objc_msgSendSuper2(&v2, "init");
}

id BundleDataClassifier.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BundleDataClassifier();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100007820()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t objectdestroyTm()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t closure #1 in BundleDataClassifier.classifyBundleData(systemPrompt:input:completion:)partial apply(uint64_t a1)
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
  v11[1] = ClassificationQueryRunner._classify_runnable(systemPrompt:input:);

  return closure #1 in BundleDataClassifier.classifyBundleData(systemPrompt:input:completion:)(a1, v4, v5, v6, v7, v8, v9, v10);
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

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_;

  return v6(a1);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100007C64()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in BundleDataClassifier.classifyBundleData(systemPrompt:input:completion:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v4);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA_18(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = ClassificationQueryRunner._classify_runnable(systemPrompt:input:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v4);
}

unint64_t lazy protocol witness table accessor for type TokenGenerator and conformance TokenGenerator()
{
  result = lazy protocol witness table cache variable for type TokenGenerator and conformance TokenGenerator;
  if (!lazy protocol witness table cache variable for type TokenGenerator and conformance TokenGenerator)
  {
    type metadata accessor for TokenGenerator();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TokenGenerator and conformance TokenGenerator);
  }

  return result;
}

void thunk for @escaping @callee_unowned @convention(block) (@unowned NSString?, @unowned NSError?) -> ()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = String._bridgeToObjectiveC()();
    if (a3)
    {
LABEL_3:
      v7 = _convertErrorToNSError(_:)();
      goto LABEL_6;
    }
  }

  else
  {
    v6 = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = v7;
  (*(a4 + 16))(a4, v6);
}

uint64_t PersonalizedReflectionPromptGenerator.generatePersonalizedReflectionPrompt(systemPrompt:input:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  __chkstk_darwin(v12 - 8);
  v14 = &v18 - v13;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = a1;
  v16[5] = a2;
  v16[6] = a3;
  v16[7] = a4;
  v16[8] = a5;
  v16[9] = a6;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v14, &async function pointer to partial apply for closure #1 in PersonalizedReflectionPromptGenerator.generatePersonalizedReflectionPrompt(systemPrompt:input:completion:), v16);
}

uint64_t closure #1 in PersonalizedReflectionPromptGenerator.generatePersonalizedReflectionPrompt(systemPrompt:input:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a8;
  v8[10] = v12;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19GenerativeFunctions0A21ConfigurationRunnableVy9PromptKit012ChatMessagesE0V15TokenGeneration0I9GeneratorCAFGMd, &_s19GenerativeFunctions0A21ConfigurationRunnableVy9PromptKit012ChatMessagesE0V15TokenGeneration0I9GeneratorCAFGMR);
  v8[11] = v9;
  v8[12] = *(v9 - 8);
  v8[13] = swift_task_alloc();

  return _swift_task_switch(closure #1 in PersonalizedReflectionPromptGenerator.generatePersonalizedReflectionPrompt(systemPrompt:input:completion:), 0, 0);
}

uint64_t closure #1 in PersonalizedReflectionPromptGenerator.generatePersonalizedReflectionPrompt(systemPrompt:input:completion:)()
{
  type metadata accessor for PersonalizedReflectionQueryRunner();
  inited = swift_initStackObject();
  v0[14] = inited;
  v2 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&_swiftEmptyArrayStorage);
  type metadata accessor for PersonalizedReflectionQueryRunner._ClientInfo(0);
  swift_allocObject();
  v3 = PersonalizedReflectionQueryRunner._ClientInfo.init(useCaseIdentifier:onBehalfOfProcessID:sessionTrackingConfig:)(0xD00000000000003CLL, 0x800000010000DA50, 0, 1, v2);
  v0[15] = v3;
  *(inited + 16) = v3;
  v4 = swift_task_alloc();
  v0[16] = v4;
  *v4 = v0;
  v4[1] = closure #1 in BundleDataClassifier.classifyBundleData(systemPrompt:input:completion:);
  v5 = v0[13];
  v6 = v0[7];
  v7 = v0[8];
  v8 = v0[5];
  v9 = v0[6];

  return closure #1 in PersonalizedReflectionQueryRunner._generatePersonalizedReflectionPrompt_runnable(systemPrompt:input:)(v5, v8, v9, v6, v7, inited);
}

uint64_t partial apply for closure #1 in PersonalizedReflectionPromptGenerator.generatePersonalizedReflectionPrompt(systemPrompt:input:completion:)(uint64_t a1)
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
  v11[1] = partial apply for closure #1 in BundleDataClassifier.classifyBundleData(systemPrompt:input:completion:);

  return closure #1 in PersonalizedReflectionPromptGenerator.generatePersonalizedReflectionPrompt(systemPrompt:input:completion:)(a1, v4, v5, v6, v7, v8, v9, v10);
}

id PersonalizedReflectionPromptGenerator.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PersonalizedReflectionPromptGenerator();
  return objc_msgSendSuper2(&v2, "init");
}

id PersonalizedReflectionPromptGenerator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PersonalizedReflectionPromptGenerator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100008574()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t closure #1 in PersonalizedReflectionPromptGenerator.generatePersonalizedReflectionPrompt(systemPrompt:input:completion:)partial apply(uint64_t a1)
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
  v11[1] = ClassificationQueryRunner._classify_runnable(systemPrompt:input:);

  return closure #1 in PersonalizedReflectionPromptGenerator.generatePersonalizedReflectionPrompt(systemPrompt:input:completion:)(a1, v4, v5, v6, v7, v8, v9, v10);
}

BOOL static GenerativeModelsAvailable.isGenerativeModelAvailable()()
{
  v0 = type metadata accessor for GenerativeModelsAvailability.Availability();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for GenerativeModelsAvailability.Parameters();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for GenerativeModelsAvailability();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  GenerativeModelsAvailability.Parameters.init(useCaseIdentifiers:)();
  static GenerativeModelsAvailability.current(parameters:)();
  (*(v5 + 8))(v7, v4);
  GenerativeModelsAvailability.availability.getter();
  (*(v9 + 8))(v11, v8);
  v12 = (*(v1 + 88))(v3, v0) == enum case for GenerativeModelsAvailability.Availability.available(_:);
  (*(v1 + 8))(v3, v0);
  return v12;
}

id GenerativeModelsAvailable.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GenerativeModelsAvailable();
  return objc_msgSendSuper2(&v2, "init");
}

id GenerativeModelsAvailable.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GenerativeModelsAvailable();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t PersonalizedReflectionQueryRunner.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&_swiftEmptyArrayStorage);
  type metadata accessor for PersonalizedReflectionQueryRunner._ClientInfo(0);
  swift_allocObject();
  *(v0 + 16) = PersonalizedReflectionQueryRunner._ClientInfo.init(useCaseIdentifier:onBehalfOfProcessID:sessionTrackingConfig:)(0xD00000000000003CLL, 0x800000010000DA50, 0, 1, v1);
  return v0;
}

uint64_t PersonalizedReflectionQueryRunner.generatePersonalizedReflectionPrompt(systemPrompt:input:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19GenerativeFunctions0A21ConfigurationRunnableVy9PromptKit012ChatMessagesE0V15TokenGeneration0I9GeneratorCAFGMd, &_s19GenerativeFunctions0A21ConfigurationRunnableVy9PromptKit012ChatMessagesE0V15TokenGeneration0I9GeneratorCAFGMR);
  v5[2] = v10;
  v5[3] = *(v10 - 8);
  v11 = swift_task_alloc();
  v5[4] = v11;
  v12 = swift_task_alloc();
  v5[5] = v12;
  *v12 = v5;
  v12[1] = ClassificationQueryRunner.classify(systemPrompt:input:);

  return closure #1 in PersonalizedReflectionQueryRunner._generatePersonalizedReflectionPrompt_runnable(systemPrompt:input:)(v11, a1, a2, a3, a4, v4);
}

uint64_t one-time initialization function for nameForNewModelID()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog24ResourceBundleIdentifierVyAA20AssetBackedLLMBundleVGMd, &_s12ModelCatalog24ResourceBundleIdentifierVyAA20AssetBackedLLMBundleVGMR);
  __swift_allocate_value_buffer(v0, nameForNewModelID);
  __swift_project_value_buffer(v0, nameForNewModelID);
  type metadata accessor for AssetBackedLLMBundle();
  lazy protocol witness table accessor for type TokenGenerator and conformance TokenGenerator(&lazy protocol witness table cache variable for type AssetBackedLLMBundle and conformance AssetBackedLLMBundle, &type metadata accessor for AssetBackedLLMBundle, &protocol conformance descriptor for AssetBackedLLMBundle);
  return ResourceBundleIdentifier.init(stringLiteral:)();
}

uint64_t nameForNewModelID.unsafeMutableAddressor()
{
  if (one-time initialization token for nameForNewModelID != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog24ResourceBundleIdentifierVyAA20AssetBackedLLMBundleVGMd, &_s12ModelCatalog24ResourceBundleIdentifierVyAA20AssetBackedLLMBundleVGMR);

  return __swift_project_value_buffer(v0, nameForNewModelID);
}

uint64_t PersonalizedReflectionQueryRunner.init()()
{
  v1 = v0;
  v2 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&_swiftEmptyArrayStorage);
  type metadata accessor for PersonalizedReflectionQueryRunner._ClientInfo(0);
  swift_allocObject();
  *(v1 + 16) = PersonalizedReflectionQueryRunner._ClientInfo.init(useCaseIdentifier:onBehalfOfProcessID:sessionTrackingConfig:)(0xD00000000000003CLL, 0x800000010000DA50, 0, 1, v2);
  return v1;
}

uint64_t PersonalizedReflectionQueryRunner._generatePersonalizedReflectionPrompt(systemPrompt:input:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19GenerativeFunctions0A21ConfigurationRunnableVy9PromptKit012ChatMessagesE0V15TokenGeneration0I9GeneratorCAFGMd, &_s19GenerativeFunctions0A21ConfigurationRunnableVy9PromptKit012ChatMessagesE0V15TokenGeneration0I9GeneratorCAFGMR);
  v5[2] = v10;
  v5[3] = *(v10 - 8);
  v11 = swift_task_alloc();
  v5[4] = v11;
  v12 = swift_task_alloc();
  v5[5] = v12;
  *v12 = v5;
  v12[1] = ClassificationQueryRunner._classify(systemPrompt:input:);

  return closure #1 in PersonalizedReflectionQueryRunner._generatePersonalizedReflectionPrompt_runnable(systemPrompt:input:)(v11, a1, a2, a3, a4, v4);
}

uint64_t PersonalizedReflectionQueryRunner._generatePersonalizedReflectionPrompt_runnable(systemPrompt:input:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = ClassificationQueryRunner._classify_runnable(systemPrompt:input:);

  return closure #1 in PersonalizedReflectionQueryRunner._generatePersonalizedReflectionPrompt_runnable(systemPrompt:input:)(a1, a2, a3, a4, a5, v5);
}

uint64_t closure #1 in PersonalizedReflectionQueryRunner._generatePersonalizedReflectionPrompt_runnable(systemPrompt:input:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[28] = a5;
  v6[29] = a6;
  v6[26] = a3;
  v6[27] = a4;
  v6[24] = a1;
  v6[25] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19GenerativeFunctions01_A47FunctionOverridableInternals_ChatMessagesPromptV04chatgH0_AA01_acE9_MetadataV8metadatatSgMd, &_s19GenerativeFunctions01_A47FunctionOverridableInternals_ChatMessagesPromptV04chatgH0_AA01_acE9_MetadataV8metadatatSgMR);
  v6[30] = swift_task_alloc();
  v6[31] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19GenerativeFunctions01_A47FunctionOverridableInternals_ChatMessagesPromptV_AA01_acE9_MetadataVtMd, &_s19GenerativeFunctions01_A47FunctionOverridableInternals_ChatMessagesPromptV_AA01_acE9_MetadataVtMR);
  v6[32] = swift_task_alloc();
  v7 = type metadata accessor for _GenerativeFunctionInternals_Metadata();
  v6[33] = v7;
  v6[34] = *(v7 - 8);
  v6[35] = swift_task_alloc();
  v8 = type metadata accessor for _GenerativeFunctionOverridableInternals_ChatMessagesPrompt();
  v6[36] = v8;
  v6[37] = *(v8 - 8);
  v6[38] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s29GenerativeFunctionsFoundation18FunctionIdentifierV19ResourceInformationVSgMd, &_s29GenerativeFunctionsFoundation18FunctionIdentifierV19ResourceInformationVSgMR);
  v6[39] = swift_task_alloc();
  v9 = type metadata accessor for FunctionIdentifier();
  v6[40] = v9;
  v6[41] = *(v9 - 8);
  v6[42] = swift_task_alloc();
  v6[43] = swift_task_alloc();
  v10 = type metadata accessor for _ClientInfoSessionTrackingConfig();
  v6[44] = v10;
  v6[45] = *(v10 - 8);
  v6[46] = swift_task_alloc();
  v11 = type metadata accessor for StringResponseSanitizer.DefaultableGuardrails();
  v6[47] = v11;
  v6[48] = *(v11 - 8);
  v6[49] = swift_task_alloc();
  v12 = type metadata accessor for StringResponseSanitizer.DefaultableOverrides();
  v6[50] = v12;
  v6[51] = *(v12 - 8);
  v6[52] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16GenerativeModels12OverrideHintOyAA23StringResponseSanitizerVGMd, &_s16GenerativeModels12OverrideHintOyAA23StringResponseSanitizerVGMR);
  v6[53] = v13;
  v6[54] = *(v13 - 8);
  v6[55] = swift_task_alloc();
  v14 = type metadata accessor for StringRenderedPromptSanitizer.DefaultableGuardrails();
  v6[56] = v14;
  v6[57] = *(v14 - 8);
  v6[58] = swift_task_alloc();
  v15 = type metadata accessor for StringRenderedPromptSanitizer.DefaultableOverrides();
  v6[59] = v15;
  v6[60] = *(v15 - 8);
  v6[61] = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16GenerativeModels12OverrideHintOyAA29StringRenderedPromptSanitizerVGMd, &_s16GenerativeModels12OverrideHintOyAA29StringRenderedPromptSanitizerVGMR);
  v6[62] = v16;
  v6[63] = *(v16 - 8);
  v6[64] = swift_task_alloc();
  v17 = type metadata accessor for ChatMessagesPrompt();
  v6[65] = v17;
  v6[66] = *(v17 - 8);
  v6[67] = swift_task_alloc();
  v6[68] = swift_task_alloc();
  v6[69] = swift_task_alloc();
  v6[70] = swift_task_alloc();
  v6[71] = swift_task_alloc();

  return _swift_task_switch(closure #1 in PersonalizedReflectionQueryRunner._generatePersonalizedReflectionPrompt_runnable(systemPrompt:input:), 0, 0);
}

uint64_t closure #1 in PersonalizedReflectionQueryRunner._generatePersonalizedReflectionPrompt_runnable(systemPrompt:input:)()
{
  v40 = *(v0 + 560);
  v38 = *(v0 + 552);
  v28 = *(v0 + 544);
  v23 = *(v0 + 536);
  v45 = *(v0 + 528);
  v1 = *(v0 + 504);
  v2 = *(v0 + 512);
  v3 = *(v0 + 488);
  v26 = *(v0 + 496);
  v27 = *(v0 + 520);
  v4 = *(v0 + 480);
  v5 = *(v0 + 456);
  v6 = *(v0 + 464);
  v24 = *(v0 + 472);
  v25 = *(v0 + 448);
  v35 = *(v0 + 440);
  v36 = *(v0 + 432);
  v37 = *(v0 + 424);
  v29 = *(v0 + 416);
  v30 = *(v0 + 408);
  v31 = *(v0 + 400);
  v32 = *(v0 + 392);
  v33 = *(v0 + 384);
  v34 = *(v0 + 376);
  v41 = *(v0 + 360);
  v42 = *(v0 + 352);
  v43 = *(v0 + 368);
  v22 = *(v0 + 200);
  v44 = *(v0 + 312);
  v7 = *(v0 + 224);
  v39 = *(v0 + 232);
  v8 = *(v0 + 216);
  v9 = swift_task_alloc();
  *(v9 + 16) = v22;
  *(v9 + 32) = v8;
  *(v9 + 40) = v7;
  ChatMessagesPrompt.init(_:)();

  v10 = type metadata accessor for StringRenderedPromptSanitizer.Overrides();
  (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
  (*(v4 + 104))(v3, enum case for StringRenderedPromptSanitizer.DefaultableOverrides.withoutDefault(_:), v24);
  v11 = type metadata accessor for StringRenderedPromptSanitizer.Guardrails();
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  (*(v5 + 104))(v6, enum case for StringRenderedPromptSanitizer.DefaultableGuardrails.withoutDefault(_:), v25);
  StringRenderedPromptSanitizer.init(overrides:guardrails:)();
  v12 = enum case for OverrideHint.constant<A>(_:);
  (*(v1 + 104))(v2, enum case for OverrideHint.constant<A>(_:), v26);
  *(v0 + 576) = lazy protocol witness table accessor for type TokenGenerator and conformance TokenGenerator(&lazy protocol witness table cache variable for type ChatMessagesPrompt and conformance ChatMessagesPrompt, &type metadata accessor for ChatMessagesPrompt, &protocol conformance descriptor for ChatMessagesPrompt);
  GenerativeConfigurationProtocol.renderedPromptSanitizer(_:)();
  (*(v1 + 8))(v2, v26);
  v13 = *(v45 + 8);
  *(v0 + 584) = v13;
  *(v0 + 592) = (v45 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13(v23, v27);
  v14 = type metadata accessor for StringResponseSanitizer.Overrides();
  (*(*(v14 - 8) + 56))(v29, 1, 1, v14);
  (*(v30 + 104))(v29, enum case for StringResponseSanitizer.DefaultableOverrides.withoutDefault(_:), v31);
  v15 = type metadata accessor for StringResponseSanitizer.Guardrails();
  (*(*(v15 - 8) + 56))(v32, 1, 1, v15);
  (*(v33 + 104))(v32, enum case for StringResponseSanitizer.DefaultableGuardrails.withoutDefault(_:), v34);
  StringResponseSanitizer.init(overrides:guardrails:)();
  (*(v36 + 104))(v35, v12, v37);
  GenerativeConfigurationProtocol.responseSanitizer(_:)();
  (*(v36 + 8))(v35, v37);
  v13(v28, v27);
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&_swiftEmptyArrayStorage);
  GenerativeConfigurationProtocol._internalTrackingConfig(_:)();

  v13(v38, v27);
  v16 = *(v39 + 16);
  *(v0 + 600) = v16;
  v17 = OBJC_IVAR____TtCC26MomentsIntelligenceService33PersonalizedReflectionQueryRunnerP33_C37EF07D5AB8DD526C5ACF80C612EC4E11_ClientInfo_trackingConfig;
  swift_beginAccess();
  (*(v41 + 16))(v43, v16 + v17, v42);
  GenerativeConfigurationProtocol._internalSessionTrackingConfig(_:)();
  (*(v41 + 8))(v43, v42);
  v13(v40, v27);
  v18 = type metadata accessor for FunctionIdentifier.ResourceInformation();
  (*(*(v18 - 8) + 56))(v44, 1, 1, v18);
  FunctionIdentifier.init(identifier:resourceInformation:)();
  v19 = swift_task_alloc();
  *(v0 + 608) = v19;
  *v19 = v0;
  v19[1] = closure #1 in PersonalizedReflectionQueryRunner._generatePersonalizedReflectionPrompt_runnable(systemPrompt:input:);
  v20 = *(v0 + 240);

  return static _GenerativeModelOverrideHelpers._generativeFunctionOverridesWithMetadataChatMessagesPrompt(_:)(v20, 0xD00000000000001CLL, 0x800000010000DAE0);
}

{
  *(*v1 + 616) = v0;

  if (v0)
  {
    v2 = closure #1 in ClassificationQueryRunner._classify_runnable(systemPrompt:input:);
  }

  else
  {
    v2 = closure #1 in PersonalizedReflectionQueryRunner._generatePersonalizedReflectionPrompt_runnable(systemPrompt:input:);
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v1 = v0[30];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19GenerativeFunctions01_A47FunctionOverridableInternals_ChatMessagesPromptV04chatgH0_AA01_acE9_MetadataV8metadatatMd, &_s19GenerativeFunctions01_A47FunctionOverridableInternals_ChatMessagesPromptV04chatgH0_AA01_acE9_MetadataV8metadatatMR);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    outlined destroy of (chatMessagesPrompt: _GenerativeFunctionOverridableInternals_ChatMessagesPrompt, metadata: _GenerativeFunctionInternals_Metadata)?(v1);
  }

  else
  {
    v39 = v0[73];
    v34 = v0[70];
    v35 = v0[71];
    v37 = v0[65];
    v38 = v0[66];
    v26 = v0[42];
    v27 = v0[41];
    v28 = v0[40];
    v29 = v0[43];
    v22 = v0[38];
    v36 = v0[37];
    v3 = v0[36];
    v24 = v0[35];
    v5 = v0[33];
    v4 = v0[34];
    v7 = v0[31];
    v6 = v0[32];
    v30 = v0[27];
    v31 = v0[28];
    v32 = v0[25];
    v33 = v0[26];
    v20 = *(v7 + 48);
    v21 = *(v2 + 48);
    v8 = *(v36 + 32);
    v8(v6, v1, v3);
    v9 = *(v4 + 32);
    v9(v6 + v20, v1 + v21, v5);
    v10 = *(v7 + 48);
    v8(v22, v6, v3);
    v9(v24, v6 + v10, v5);
    _GenerativeFunctionInternals_Metadata.functionIdentifier.getter();
    (*(v27 + 8))(v29, v28);
    (*(v27 + 32))(v29, v26, v28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_9PromptKit0D25ComponentValueConvertible_ptGMd, &_ss23_ContiguousArrayStorageCySS_9PromptKit0D25ComponentValueConvertible_ptGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10000DC90;
    *(inited + 32) = 0x7475706E69;
    *(inited + 72) = &type metadata for String;
    *(inited + 80) = &protocol witness table for String;
    *(inited + 40) = 0xE500000000000000;
    *(inited + 48) = v30;
    *(inited + 56) = v31;
    strcpy((inited + 88), "systemPrompt");
    *(inited + 101) = 0;
    *(inited + 102) = -5120;
    *(inited + 128) = &type metadata for String;
    *(inited + 136) = &protocol witness table for String;
    *(inited + 104) = v32;
    *(inited + 112) = v33;

    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_9PromptKit0C25ComponentValueConvertible_pTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_9PromptKit0A25ComponentValueConvertible_ptMd, &_sSS_9PromptKit0A25ComponentValueConvertible_ptMR);
    swift_arrayDestroy();
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(&_swiftEmptyArrayStorage);
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_9PromptKit012ChatMessagesC11Convertible_pTt0g5Tf4g_n(&_swiftEmptyArrayStorage);
    static _GenerativeFunctionOverrideHelpers._configurePrompt(_:withOverride:bindingChatMessagesPrompts:bindingVariables:bindingConfigurations:)();

    (*(v4 + 8))(v24, v5);
    (*(v36 + 8))(v22, v3);
    v39(v35, v37);
    (*(v38 + 32))(v35, v34, v37);
  }

  v12 = v0[75];
  v25 = v0[73];
  v13 = v0[71];
  v14 = v0[70];
  v15 = v0[65];
  v16 = v0[43];
  v17 = v0[41];
  v23 = v0[40];
  GenerativeConfigurationProtocol.functionIdentifier(_:)();
  v0[23] = *(v12 + OBJC_IVAR____TtCC26MomentsIntelligenceService33PersonalizedReflectionQueryRunnerP33_C37EF07D5AB8DD526C5ACF80C612EC4E11_ClientInfo__model);
  type metadata accessor for TokenGenerator();
  GenerativeConfigurationProtocol.with<A>(model:modelType:)();
  v25(v14, v15);
  (*(v17 + 8))(v16, v23);
  v25(v13, v15);

  v18 = v0[1];

  return v18();
}

uint64_t closure #1 in closure #1 in PersonalizedReflectionQueryRunner._generatePersonalizedReflectionPrompt_runnable(systemPrompt:input:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v36 = a3;
  v37 = a4;
  v33 = a2;
  v44 = a5;
  v6 = type metadata accessor for User();
  v7 = *(v6 - 8);
  v38 = v6;
  v39 = v7;
  __chkstk_darwin(v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for System();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ChatMessagesPrompt();
  v34 = *(v14 - 8);
  v15 = v34;
  v16 = __chkstk_darwin(v14);
  v31 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v32 = &v30 - v18;
  v42 = a1;
  v43 = v33;
  v19 = v35;
  System.init(_:)();
  static ChatMessagesPromptBuilder.buildExpression<A>(_:)();
  (*(v11 + 8))(v13, v10);
  v40 = v36;
  v41 = v37;
  User.init(_:)();
  v37 = v19;
  v20 = v31;
  v21 = v38;
  static ChatMessagesPromptBuilder.buildExpression<A>(_:)();
  (*(v39 + 8))(v9, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9PromptKit012ChatMessagesD0VGMd, &_ss23_ContiguousArrayStorageCy9PromptKit012ChatMessagesD0VGMR);
  v22 = *(v34 + 72);
  v23 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_10000DC90;
  v25 = v24 + v23;
  v26 = *(v15 + 16);
  v27 = v32;
  v26(v25, v32, v14);
  v26(v25 + v22, v20, v14);
  static ChatMessagesPromptBuilder.buildBlock(_:)();

  v28 = *(v15 + 8);
  v28(v20, v14);
  return (v28)(v27, v14);
}

uint64_t closure #1 in closure #1 in closure #1 in PersonalizedReflectionQueryRunner._generatePersonalizedReflectionPrompt_runnable(systemPrompt:input:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Prompt();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[3] = &type metadata for String;
  v12[4] = &protocol witness table for String;
  v12[0] = a1;
  v12[1] = a2;

  static CustomPromptBuilder.buildExpression(_:)();
  __swift_destroy_boxed_opaque_existential_1(v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9PromptKit0D0VGMd, &_ss23_ContiguousArrayStorageCy9PromptKit0D0VGMR);
  v8 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10000DCA0;
  (*(v5 + 16))(v9 + v8, v7, v4);
  static CustomPromptBuilder.buildBlock(_:)();

  return (*(v5 + 8))(v7, v4);
}

uint64_t PersonalizedReflectionQueryRunner._generatePersonalizedReflectionPrompt_generateGenerativeFunctionOverride()()
{
  v0 = type metadata accessor for StringResponseSanitizer.DefaultableGuardrails();
  v53 = *(v0 - 8);
  v54 = v0;
  __chkstk_darwin(v0);
  v52 = &v41 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for StringResponseSanitizer.DefaultableOverrides();
  v48 = *(v2 - 8);
  v49 = v2;
  __chkstk_darwin(v2);
  v46 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16GenerativeModels12OverrideHintOyAA23StringResponseSanitizerVGMd, &_s16GenerativeModels12OverrideHintOyAA23StringResponseSanitizerVGMR);
  v50 = *(v4 - 8);
  v51 = v4;
  __chkstk_darwin(v4);
  v47 = &v41 - v5;
  v6 = type metadata accessor for StringRenderedPromptSanitizer.DefaultableGuardrails();
  v42 = *(v6 - 8);
  v43 = v6;
  __chkstk_darwin(v6);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for StringRenderedPromptSanitizer.DefaultableOverrides();
  v9 = *(v41 - 8);
  __chkstk_darwin(v41);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16GenerativeModels12OverrideHintOyAA29StringRenderedPromptSanitizerVGMd, &_s16GenerativeModels12OverrideHintOyAA29StringRenderedPromptSanitizerVGMR);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v41 - v14;
  v16 = type metadata accessor for ChatMessagesPrompt();
  v55 = *(v16 - 8);
  v17 = __chkstk_darwin(v16);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v22 = &v41 - v21;
  __chkstk_darwin(v20);
  v44 = &v41 - v23;
  v24 = v45;
  ChatMessagesPrompt.init(_:)();
  v45 = v24;
  v25 = type metadata accessor for StringRenderedPromptSanitizer.Overrides();
  (*(*(v25 - 8) + 56))(v11, 1, 1, v25);
  (*(v9 + 104))(v11, enum case for StringRenderedPromptSanitizer.DefaultableOverrides.withoutDefault(_:), v41);
  v26 = type metadata accessor for StringRenderedPromptSanitizer.Guardrails();
  (*(*(v26 - 8) + 56))(v8, 1, 1, v26);
  (*(v42 + 104))(v8, enum case for StringRenderedPromptSanitizer.DefaultableGuardrails.withoutDefault(_:), v43);
  StringRenderedPromptSanitizer.init(overrides:guardrails:)();
  v27 = enum case for OverrideHint.constant<A>(_:);
  (*(v13 + 104))(v15, enum case for OverrideHint.constant<A>(_:), v12);
  lazy protocol witness table accessor for type TokenGenerator and conformance TokenGenerator(&lazy protocol witness table cache variable for type ChatMessagesPrompt and conformance ChatMessagesPrompt, &type metadata accessor for ChatMessagesPrompt, &protocol conformance descriptor for ChatMessagesPrompt);
  GenerativeConfigurationProtocol.renderedPromptSanitizer(_:)();
  (*(v13 + 8))(v15, v12);
  v28 = *(v55 + 8);
  v55 += 8;
  v28(v19, v16);
  v29 = type metadata accessor for StringResponseSanitizer.Overrides();
  v30 = v46;
  (*(*(v29 - 8) + 56))(v46, 1, 1, v29);
  (*(v48 + 104))(v30, enum case for StringResponseSanitizer.DefaultableOverrides.withoutDefault(_:), v49);
  v31 = type metadata accessor for StringResponseSanitizer.Guardrails();
  v32 = v52;
  (*(*(v31 - 8) + 56))(v52, 1, 1, v31);
  (*(v53 + 104))(v32, enum case for StringResponseSanitizer.DefaultableGuardrails.withoutDefault(_:), v54);
  v33 = v47;
  StringResponseSanitizer.init(overrides:guardrails:)();
  v34 = v50;
  v35 = v51;
  (*(v50 + 104))(v33, v27, v51);
  v36 = v44;
  GenerativeConfigurationProtocol.responseSanitizer(_:)();
  (*(v34 + 8))(v33, v35);
  v28(v22, v16);
  v37 = v45;
  v38 = static _GenerativeFunctionOverrideHelpers._generateGenerativeFunctionOverride(promptBody:identifier:)();
  if (v37)
  {
    return (v28)(v36, v16);
  }

  v40 = v38;
  v28(v36, v16);
  return v40;
}

uint64_t closure #1 in PersonalizedReflectionQueryRunner._generatePersonalizedReflectionPrompt_generateGenerativeFunctionOverride()@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v2 = type metadata accessor for User();
  v3 = *(v2 - 8);
  v29 = v2;
  v30 = v3;
  __chkstk_darwin(v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for System();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ChatMessagesPrompt();
  v27 = *(v10 - 8);
  v11 = v27;
  v12 = __chkstk_darwin(v10);
  v25 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v26 = &v25 - v14;
  System.init(_:)();
  static ChatMessagesPromptBuilder.buildExpression<A>(_:)();
  (*(v7 + 8))(v9, v6);
  User.init(_:)();
  v28 = v1;
  v15 = v25;
  v16 = v29;
  static ChatMessagesPromptBuilder.buildExpression<A>(_:)();
  (*(v30 + 8))(v5, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9PromptKit012ChatMessagesD0VGMd, &_ss23_ContiguousArrayStorageCy9PromptKit012ChatMessagesD0VGMR);
  v17 = *(v27 + 72);
  v18 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_10000DC90;
  v20 = v19 + v18;
  v21 = *(v11 + 16);
  v22 = v26;
  v21(v20, v26, v10);
  v21(v20 + v17, v15, v10);
  static ChatMessagesPromptBuilder.buildBlock(_:)();

  v23 = *(v11 + 8);
  v23(v15, v10);
  return (v23)(v22, v10);
}

uint64_t closure #1 in closure #1 in PersonalizedReflectionQueryRunner._generatePersonalizedReflectionPrompt_generateGenerativeFunctionOverride()(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Prompt();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[3] = type metadata accessor for BindableVariable();
  v10[4] = &protocol witness table for BindableVariable;
  __swift_allocate_boxed_opaque_existential_1(v10);
  BindableVariable.init(name:)();
  static CustomPromptBuilder.buildExpression(_:)();
  __swift_destroy_boxed_opaque_existential_1(v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9PromptKit0D0VGMd, &_ss23_ContiguousArrayStorageCy9PromptKit0D0VGMR);
  v6 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10000DCA0;
  (*(v3 + 16))(v7 + v6, v5, v2);
  static CustomPromptBuilder.buildBlock(_:)();

  return (*(v3 + 8))(v5, v2);
}

unsigned __int8 *PersonalizedReflectionQueryRunner._ClientInfo.init(useCaseIdentifier:onBehalfOfProcessID:sessionTrackingConfig:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, unint64_t a5)
{
  v6 = v5;
  v57 = a4;
  v60 = a3;
  v10 = type metadata accessor for CachePolicy();
  __chkstk_darwin(v10 - 8);
  v56[2] = v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for GenerativeModelSessionConfiguration();
  __chkstk_darwin(v12 - 8);
  v56[1] = v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog24ResourceBundleIdentifierVyAA20AssetBackedLLMBundleVGMd, &_s12ModelCatalog24ResourceBundleIdentifierVyAA20AssetBackedLLMBundleVGMR);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v56 - v16;
  v18 = type metadata accessor for _ClientInfoSessionTrackingConfig();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = a1;
  v59 = a2;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&_swiftEmptyArrayStorage);
  _ClientInfoSessionTrackingConfig.init(sessionTrackingConifg:_internalSessionTrackingConfig:)();
  (*(v19 + 32))(v6 + OBJC_IVAR____TtCC26MomentsIntelligenceService33PersonalizedReflectionQueryRunnerP33_C37EF07D5AB8DD526C5ACF80C612EC4E11_ClientInfo_trackingConfig, v21, v18);
  if (!*(a5 + 16))
  {
    goto LABEL_66;
  }

  v22 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000015, 0x800000010000D910);
  if ((v23 & 1) == 0)
  {
    goto LABEL_66;
  }

  v24 = (*(a5 + 56) + 16 * v22);
  v26 = *v24;
  v25 = v24[1];

  v28 = HIBYTE(v25) & 0xF;
  v29 = v26 & 0xFFFFFFFFFFFFLL;
  if (!((v25 & 0x2000000000000000) != 0 ? HIBYTE(v25) & 0xF : v26 & 0xFFFFFFFFFFFFLL))
  {
    goto LABEL_66;
  }

  if ((v25 & 0x1000000000000000) != 0)
  {
    specialized _parseInteger<A, B>(ascii:radix:)(v26, v25, 10);
    goto LABEL_66;
  }

  if ((v25 & 0x2000000000000000) != 0)
  {
    v61[0] = v26;
    v61[1] = v25 & 0xFFFFFFFFFFFFFFLL;
    if (v26 == 43)
    {
      if (v28)
      {
        if (--v28)
        {
          v44 = 0;
          v45 = v61 + 1;
          while (1)
          {
            v46 = *v45 - 48;
            if (v46 > 9)
            {
              break;
            }

            v47 = 10 * v44;
            if ((v44 * 10) >> 64 != (10 * v44) >> 63)
            {
              break;
            }

            v44 = v47 + v46;
            if (__OFADD__(v47, v46))
            {
              break;
            }

            ++v45;
            if (!--v28)
            {
              goto LABEL_65;
            }
          }
        }

        goto LABEL_64;
      }

LABEL_75:
      __break(1u);
      return result;
    }

    if (v26 != 45)
    {
      if (v28)
      {
        v51 = 0;
        v52 = v61;
        while (1)
        {
          v53 = *v52 - 48;
          if (v53 > 9)
          {
            break;
          }

          v54 = 10 * v51;
          if ((v51 * 10) >> 64 != (10 * v51) >> 63)
          {
            break;
          }

          v51 = v54 + v53;
          if (__OFADD__(v54, v53))
          {
            break;
          }

          ++v52;
          if (!--v28)
          {
            goto LABEL_65;
          }
        }
      }

      goto LABEL_64;
    }

    if (v28)
    {
      if (--v28)
      {
        v36 = 0;
        v37 = v61 + 1;
        while (1)
        {
          v38 = *v37 - 48;
          if (v38 > 9)
          {
            break;
          }

          v39 = 10 * v36;
          if ((v36 * 10) >> 64 != (10 * v36) >> 63)
          {
            break;
          }

          v36 = v39 - v38;
          if (__OFSUB__(v39, v38))
          {
            break;
          }

          ++v37;
          if (!--v28)
          {
            goto LABEL_65;
          }
        }
      }

      goto LABEL_64;
    }

    goto LABEL_73;
  }

  if ((v26 & 0x1000000000000000) != 0)
  {
    result = ((v25 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    result = _StringObject.sharedUTF8.getter();
  }

  v31 = *result;
  if (v31 == 43)
  {
    if (v29 < 1)
    {
LABEL_74:
      __break(1u);
      goto LABEL_75;
    }

    v28 = v29 - 1;
    if (v29 != 1)
    {
      v40 = 0;
      if (result)
      {
        v41 = result + 1;
        while (1)
        {
          v42 = *v41 - 48;
          if (v42 > 9)
          {
            goto LABEL_64;
          }

          v43 = 10 * v40;
          if ((v40 * 10) >> 64 != (10 * v40) >> 63)
          {
            goto LABEL_64;
          }

          v40 = v43 + v42;
          if (__OFADD__(v43, v42))
          {
            goto LABEL_64;
          }

          ++v41;
          if (!--v28)
          {
            goto LABEL_65;
          }
        }
      }

      goto LABEL_56;
    }

LABEL_64:
    LOBYTE(v28) = 1;
    goto LABEL_65;
  }

  if (v31 != 45)
  {
    if (v29)
    {
      v48 = 0;
      if (result)
      {
        while (1)
        {
          v49 = *result - 48;
          if (v49 > 9)
          {
            goto LABEL_64;
          }

          v50 = 10 * v48;
          if ((v48 * 10) >> 64 != (10 * v48) >> 63)
          {
            goto LABEL_64;
          }

          v48 = v50 + v49;
          if (__OFADD__(v50, v49))
          {
            goto LABEL_64;
          }

          ++result;
          if (!--v29)
          {
            goto LABEL_56;
          }
        }
      }

      goto LABEL_56;
    }

    goto LABEL_64;
  }

  if (v29 < 1)
  {
    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v28 = v29 - 1;
  if (v29 == 1)
  {
    goto LABEL_64;
  }

  v32 = 0;
  if (result)
  {
    v33 = result + 1;
    while (1)
    {
      v34 = *v33 - 48;
      if (v34 > 9)
      {
        goto LABEL_64;
      }

      v35 = 10 * v32;
      if ((v32 * 10) >> 64 != (10 * v32) >> 63)
      {
        goto LABEL_64;
      }

      v32 = v35 - v34;
      if (__OFSUB__(v35, v34))
      {
        goto LABEL_64;
      }

      ++v33;
      if (!--v28)
      {
        goto LABEL_65;
      }
    }
  }

LABEL_56:
  LOBYTE(v28) = 0;
LABEL_65:
  v62 = v28;
LABEL_66:

  type metadata accessor for TokenGenerator();
  if (one-time initialization token for nameForNewModelID != -1)
  {
    swift_once();
  }

  v55 = __swift_project_value_buffer(v14, nameForNewModelID);
  (*(v15 + 16))(v17, v55, v14);
  static CachePolicy.inMemory.getter();
  GenerativeModelSessionConfiguration.init(identifier:handlesSensitiveData:cachePolicy:)();
  *(v6 + OBJC_IVAR____TtCC26MomentsIntelligenceService33PersonalizedReflectionQueryRunnerP33_C37EF07D5AB8DD526C5ACF80C612EC4E11_ClientInfo__model) = TokenGenerator.init(model:configuration:useCaseIdentifier:onBehalfOf:parentOfOnBehalfOf:)();
  return v6;
}

uint64_t PersonalizedReflectionQueryRunner._ClientInfo.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtCC26MomentsIntelligenceService33PersonalizedReflectionQueryRunnerP33_C37EF07D5AB8DD526C5ACF80C612EC4E11_ClientInfo_trackingConfig;
  v2 = type metadata accessor for _ClientInfoSessionTrackingConfig();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t protocol witness for _ClientInfoProtocol.trackingConfig.getter in conformance PersonalizedReflectionQueryRunner._ClientInfo@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtCC26MomentsIntelligenceService33PersonalizedReflectionQueryRunnerP33_C37EF07D5AB8DD526C5ACF80C612EC4E11_ClientInfo_trackingConfig;
  swift_beginAccess();
  v5 = type metadata accessor for _ClientInfoSessionTrackingConfig();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

uint64_t protocol witness for _ClientInfoProtocol.trackingConfig.setter in conformance PersonalizedReflectionQueryRunner._ClientInfo(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtCC26MomentsIntelligenceService33PersonalizedReflectionQueryRunnerP33_C37EF07D5AB8DD526C5ACF80C612EC4E11_ClientInfo_trackingConfig;
  swift_beginAccess();
  v5 = type metadata accessor for _ClientInfoSessionTrackingConfig();
  (*(*(v5 - 8) + 40))(v3 + v4, a1, v5);
  return swift_endAccess();
}

unsigned __int8 *specialized _parseInteger<A, B>(ascii:radix:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = static String._copying(_:)(result, v5);
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t static String._copying(_:)(uint64_t a1, unint64_t a2)
{
  v2 = String.subscript.getter();
  v6 = static String._copying(_:)(v2, v3, v4, v5);

  return v6;
}

uint64_t static String._copying(_:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = Substring.UTF8View.distance(from:to:)();
    if (!v9 || (v10 = v9, v11 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v9, 0), v12 = specialized Sequence._copySequenceContents(initializing:)(v14, v11 + 32, v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = static String._uncheckedFromUTF8(_:)();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unint64_t specialized Sequence._copySequenceContents(initializing:)(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t _StringGuts._slowEnsureMatchingEncoding(_:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = String.UTF8View._foreignIndex(_:offsetBy:)();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t type metadata accessor for PersonalizedReflectionQueryRunner._ClientInfo(uint64_t a1)
{
  result = type metadata singleton initialization cache for PersonalizedReflectionQueryRunner._ClientInfo;
  if (!type metadata singleton initialization cache for PersonalizedReflectionQueryRunner._ClientInfo)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for PersonalizedReflectionQueryRunner._ClientInfo(uint64_t a1)
{
  result = type metadata accessor for _ClientInfoSessionTrackingConfig();
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