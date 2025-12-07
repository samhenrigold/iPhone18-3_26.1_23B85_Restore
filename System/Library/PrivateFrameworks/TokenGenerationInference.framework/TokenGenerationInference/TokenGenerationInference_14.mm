uint64_t TG_OnDeviceInferenceProvider.classify(prompt:parameters:metadata:configuration:)(uint64_t a1, char a2)
{
  v4 = *v3;
  *(v4 + 264) = v2;
  *(v4 + 240) = v3;
  *(v4 + 248) = a1;
  *(v4 + 256) = a2;
  *(v4 + 1088) = v2;

  if (v2)
  {
    v5 = TG_OnDeviceInferenceProvider.classify(prompt:parameters:metadata:configuration:);
    v6 = 0;
  }

  else
  {
    v6 = *(v4 + 856);
    v5 = TG_OnDeviceInferenceProvider.classify(prompt:parameters:metadata:configuration:);
  }

  return MEMORY[0x2822009F8](v5, v6, 0);
}

uint64_t TG_OnDeviceInferenceProvider.classify(prompt:parameters:metadata:configuration:)(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v5 = v3[85];
  v6 = *(v5 + 8);
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    v9 = v3[121];
    v10 = v3[114];
    v11 = v3[113];
    v12 = v3[112];
    v13 = v3[107];
    v14 = v3[83];
    *(v5 + 8) = v8;
    specialized TG_OnDeviceInferenceProvider.updateMetrics(dataStreamState:inferenceContext:)(v5, v9);
    *(v5 + 24) = 1;
    v15 = *(v14 + 64);
    outlined destroy of [Int](v5 + v15, &_s15TokenGeneration12FinishReasonOSgMd, &_s15TokenGeneration12FinishReasonOSgMR);
    (*(v11 + 104))(v5 + v15, *MEMORY[0x277D71B50], v12);
    v10(v5 + v15, 0, 1, v12);
    a1 = TG_OnDeviceInferenceProvider.classify(prompt:parameters:metadata:configuration:);
    a2 = v13;
    a3 = 0;
  }

  return MEMORY[0x2822009F8](a1, a2, a3);
}

uint64_t TG_OnDeviceInferenceProvider.compileAdapter(request:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for URL();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v5 = type metadata accessor for CompileAdapterResponse.DraftModelCompileResult();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v6 = type metadata accessor for TokenGenerationError();
  v3[13] = v6;
  v3[14] = *(v6 - 8);
  v3[15] = swift_task_alloc();
  v7 = type metadata accessor for TokenGenerationError.Context();
  v3[16] = v7;
  v3[17] = *(v7 - 8);
  v3[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v3[19] = swift_task_alloc();
  type metadata accessor for AppAssetManager.CopyResult(0);
  v3[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s20ModelManagerServices10AuditTokenVSgMd, &_s20ModelManagerServices10AuditTokenVSgMR);
  v3[21] = swift_task_alloc();
  v8 = type metadata accessor for AuditToken();
  v3[22] = v8;
  v3[23] = *(v8 - 8);
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](TG_OnDeviceInferenceProvider.compileAdapter(request:configuration:), 0, 0);
}

uint64_t TG_OnDeviceInferenceProvider.compileAdapter(request:configuration:)()
{
  v1 = v0;
  v2 = *(v0 + 184);
  v4 = *(v1 + 168);
  v3 = *(v1 + 176);
  InferenceProviderRequestConfiguration.auditToken.getter();
  if ((*(v2 + 48))(v4, 1, v3) == 1)
  {
    v6 = *(v1 + 136);
    v5 = *(v1 + 144);
    v7 = *(v1 + 120);
    v8 = *(v1 + 128);
    v9 = *(v1 + 104);
    v10 = *(v1 + 112);
    outlined destroy of [Int](*(v1 + 168), &_s20ModelManagerServices10AuditTokenVSgMd, &_s20ModelManagerServices10AuditTokenVSgMR);
    TokenGenerationError.Context.init(debugDescription:underlyingError:)();
    (*(v6 + 16))(v7, v5, v8);
    (*(v10 + 104))(v7, *MEMORY[0x277D71AF0], v9);
    type metadata accessor for InferenceError();
    _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_1(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, MEMORY[0x277D29DE0], MEMORY[0x277D29DE8]);
    swift_allocError();
    TokenGenerationError.toInferenceError()();
    (*(v10 + 8))(v7, v9);
    swift_willThrow();
    (*(v6 + 8))(v5, v8);
LABEL_13:

    v43 = *(v1 + 8);
    goto LABEL_14;
  }

  (*(*(v1 + 184) + 32))(*(v1 + 200), *(v1 + 168), *(v1 + 176));
  v11 = CompileAdapterRequest.info.getter();
  v12 = *(v1 + 200);
  if (!v11)
  {
    v28 = *(v1 + 184);
    v68 = *(v1 + 176);
    v30 = *(v1 + 136);
    v29 = *(v1 + 144);
    v31 = *(v1 + 120);
    v32 = *(v1 + 128);
    v33 = v1;
    v34 = *(v1 + 112);
    v35 = *(v33 + 104);
    TokenGenerationError.Context.init(debugDescription:underlyingError:)();
    (*(v30 + 16))(v31, v29, v32);
    (*(v34 + 104))(v31, *MEMORY[0x277D71AF0], v35);
    type metadata accessor for InferenceError();
    _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_1(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, MEMORY[0x277D29DE0], MEMORY[0x277D29DE8]);
    swift_allocError();
    TokenGenerationError.toInferenceError()();
    (*(v34 + 8))(v31, v35);
    v1 = v33;
    swift_willThrow();
    (*(v30 + 8))(v29, v32);
    (*(v28 + 8))(v12, v68);
    goto LABEL_13;
  }

  v14 = *(v1 + 184);
  v13 = *(v1 + 192);
  v15 = *(v1 + 176);
  v16 = CompileAdapterRequest.secureIdentifier.getter();
  v18 = v17;
  (*(v14 + 16))(v13, v12, v15);
  specialized AppAssetManager.__allocating_init(identifier:auditToken:)(v16, v18, v13);
  if (!v19)
  {
    v36 = *(v1 + 184);
    v67 = *(v1 + 200);
    v69 = *(v1 + 176);
    v37 = *(v1 + 136);
    v38 = *(v1 + 144);
    v39 = *(v1 + 120);
    v40 = *(v1 + 128);
    v41 = *(v1 + 112);
    v70 = *(v1 + 104);
    _StringGuts.grow(_:)(45);

    *(v1 + 208) = AuditToken.processIdentifier.getter();
    v42 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x223D8E780](v42);

    TokenGenerationError.Context.init(debugDescription:underlyingError:)();
    (*(v37 + 16))(v39, v38, v40);
    (*(v41 + 104))(v39, *MEMORY[0x277D71AF0], v70);
    type metadata accessor for InferenceError();
    _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_1(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, MEMORY[0x277D29DE0], MEMORY[0x277D29DE8]);
    swift_allocError();
    TokenGenerationError.toInferenceError()();
    (*(v41 + 8))(v39, v70);
    swift_willThrow();

    (*(v37 + 8))(v38, v40);
    (*(v36 + 8))(v67, v69);
    goto LABEL_13;
  }

  v20 = v19;
  v21 = *(v1 + 160);
  v22 = FoundationModelsExtensionInfo.metadata.getter();
  v23 = FoundationModelsExtensionInfo.adapterWeights.getter();
  v24 = FoundationModelsExtensionInfo.draftMIL.getter();
  v25 = FoundationModelsExtensionInfo.draftWeights.getter();
  v26 = v25;
  if ((v24 & 0x100000000) != 0)
  {
    v27 = 0;
  }

  else
  {
    v27 = v24;
  }

  if ((v25 & 0x100000000) != 0)
  {
    v26 = 0;
  }

  AppAssetManager.copyAssetsIfNeeded(metadata:adapterWeights:draftMIL:draftWeights:)(v22, v23, v27 | ((HIDWORD(v24) & 1) << 32), v26 | ((HIDWORD(v25) & 1) << 32), v21);
  v45 = *(v1 + 152);
  v47 = *(v1 + 40);
  v46 = *(v1 + 48);
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(*(v1 + 160), v45, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v48 = (*(v46 + 48))(v45, 1, v47);
  v50 = *(v1 + 152);
  v49 = *(v1 + 160);
  if (v48 == 1)
  {
    v51 = *(v1 + 64);
    outlined destroy of OnDeviceInferenceAssetObjectTokenizer(*(v1 + 160), type metadata accessor for AppAssetManager.CopyResult);
    outlined destroy of [Int](v50, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    AppAssetManager.draftMILURL.getter(v51);
    v52 = v20;
    v53 = [objc_opt_self() defaultManager];
    countAndFlagsBits = URL.path(percentEncoded:)(1)._countAndFlagsBits;
    v55 = MEMORY[0x223D8E6B0](countAndFlagsBits);

    LODWORD(v51) = [v53 fileExistsAtPath_];
    v56 = *(v1 + 64);
    v58 = *(v1 + 40);
    v57 = *(v1 + 48);

    v59 = *(v57 + 8);
    v59(v56, v58);
    if (v51)
    {
      if (CompileAdapterRequest.dryRun.getter())
      {
        (*(*(v1 + 80) + 104))(*(v1 + 96), *MEMORY[0x277D71C88], *(v1 + 72));
      }

      else
      {
        if (one-time initialization token for shared != -1)
        {
          swift_once();
        }

        v63 = *(v1 + 56);
        AppAssetManager.draftMILURL.getter(v63);
        DraftModelCompiler.findCompiledDraftPathOrBeginCompilation(mil:identifier:appAssetManager:)(v63, *(v52 + OBJC_IVAR____TtC24TokenGenerationInference15AppAssetManager_identifier), *(v52 + OBJC_IVAR____TtC24TokenGenerationInference15AppAssetManager_identifier + 8), v52);
        v65 = v64;
        v59(*(v1 + 56), *(v1 + 40));
        if (v65)
        {

          v66 = MEMORY[0x277D71CA0];
        }

        else
        {
          v66 = MEMORY[0x277D71C98];
        }

        (*(*(v1 + 80) + 104))(*(v1 + 88), *v66, *(v1 + 72));
      }

      CompileAdapterResponse.init(draftModelCompileResult:)();
    }

    else
    {
      (*(*(v1 + 80) + 104))(*(v1 + 96), *MEMORY[0x277D71C80], *(v1 + 72));
      CompileAdapterResponse.init(draftModelCompileResult:)();
    }
  }

  else
  {
    v60 = *(v1 + 96);
    v62 = *(v1 + 72);
    v61 = *(v1 + 80);
    outlined destroy of [Int](*(v1 + 152), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    (*(v61 + 104))(v60, *MEMORY[0x277D71C90], v62);
    CompileAdapterResponse.init(draftModelCompileResult:)();

    outlined destroy of OnDeviceInferenceAssetObjectTokenizer(v49, type metadata accessor for AppAssetManager.CopyResult);
  }

  (*(*(v1 + 184) + 8))(*(v1 + 200), *(v1 + 176));

  v43 = *(v1 + 8);
LABEL_14:

  return v43();
}

uint64_t _s24TokenGenerationInference011TG_OnDeviceC8ProviderC16inferenceRequest10clientData27promptTemplateConfigurationAA0cI0V20ModelManagerServices06ClientK0V_AA06PromptmN0VSgtYaAI0C5ErrorOYKF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = v4;
  v5[6] = a4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for InferenceError.Context();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v7 = type metadata accessor for InferenceError();
  v5[10] = v7;
  v5[11] = *(v7 - 8);
  v5[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptVSgMd, &_s15TokenGeneration6PromptVSgMR);
  v5[13] = swift_task_alloc();
  v8 = type metadata accessor for PromptTemplateInfo();
  v5[14] = v8;
  v5[15] = *(v8 - 8);
  v5[16] = swift_task_alloc();
  v9 = type metadata accessor for Prompt();
  v5[17] = v9;
  v5[18] = *(v9 - 8);
  v5[19] = swift_task_alloc();
  v10 = type metadata accessor for CompletePromptTemplateRequest();
  v5[20] = v10;
  v5[21] = *(v10 - 8);
  v5[22] = swift_task_alloc();
  v11 = type metadata accessor for CompletePromptRequest();
  v5[23] = v11;
  v5[24] = *(v11 - 8);
  v5[25] = swift_task_alloc();
  v12 = type metadata accessor for XPCDictionary();
  v5[26] = v12;
  v5[27] = *(v12 - 8);
  v5[28] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s3XPC16XPCCodableObjectVSgMd, &_s3XPC16XPCCodableObjectVSgMR);
  v5[29] = swift_task_alloc();
  v13 = type metadata accessor for XPCCodableObject();
  v5[30] = v13;
  v5[31] = *(v13 - 8);
  v5[32] = swift_task_alloc();
  v14 = type metadata accessor for StreamingRequestPayload();
  v5[33] = v14;
  v5[34] = *(v14 - 8);
  v5[35] = swift_task_alloc();
  v5[36] = swift_task_alloc();
  v5[37] = swift_task_alloc();

  return MEMORY[0x2822009F8](_s24TokenGenerationInference011TG_OnDeviceC8ProviderC16inferenceRequest10clientData27promptTemplateConfigurationAA0cI0V20ModelManagerServices06ClientK0V_AA06PromptmN0VSgtYaAI0C5ErrorOYKFTY0_, 0, 0);
}

uint64_t _s24TokenGenerationInference011TG_OnDeviceC8ProviderC16inferenceRequest10clientData27promptTemplateConfigurationAA0cI0V20ModelManagerServices06ClientK0V_AA06PromptmN0VSgtYaAI0C5ErrorOYKFTY0_(uint64_t a1)
{
  v2 = ClientData.data.getter();
  if (v3 >> 60 == 15)
  {
    v4 = 0;
  }

  else
  {
    v4 = v2;
  }

  if (v3 >> 60 == 15)
  {
    v5 = 0xC000000000000000;
  }

  else
  {
    v5 = v3;
  }

  _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_1(&lazy protocol witness table cache variable for type StreamingRequestPayload and conformance StreamingRequestPayload, MEMORY[0x277D71D00], MEMORY[0x277D71D08]);
  static Serialization.decode<A>(_:from:)();
  outlined consume of Data._Representation(v4, v5);
  v6 = v1[30];
  v7 = v1[31];
  v8 = v1[29];
  ClientData.xpcData.getter();
  if ((*(v7 + 48))(v8, 1, v6) == 1)
  {
    outlined destroy of [Int](v1[29], &_s3XPC16XPCCodableObjectVSgMd, &_s3XPC16XPCCodableObjectVSgMR);
  }

  else
  {
    (*(v1[31] + 32))(v1[32], v1[29], v1[30]);
    XPCCodableObject.copyUnderlyingXPCObject()();
    v9 = MEMORY[0x223D90BE0]();
    if (v9 == XPC_TYPE_DICTIONARY.getter())
    {
      v11 = v1[31];
      v10 = v1[32];
      v12 = v1[30];
      v14 = v1[27];
      v13 = v1[28];
      v15 = v1[26];
      swift_unknownObjectRetain();
      XPCDictionary.init(_:)();
      StreamingRequestPayload.revive(withXpcData:)();
      swift_unknownObjectRelease();
      (*(v14 + 8))(v13, v15);
      (*(v11 + 8))(v10, v12);
    }

    else
    {
      (*(v1[31] + 8))(v1[32], v1[30]);
      swift_unknownObjectRelease();
    }
  }

  v16 = v1[37];
  v18 = v1[34];
  v17 = v1[35];
  v19 = v1[33];
  (*(v18 + 32))(v16, v1[36], v19);
  (*(v18 + 16))(v17, v16, v19);
  v20 = (*(v18 + 88))(v17, v19);
  if (v20 == *MEMORY[0x277D71CF0])
  {
    v21 = v1[35];
    v23 = v1[24];
    v22 = v1[25];
    v24 = v1[23];
    (*(v1[34] + 96))(v21, v1[33]);
    (*(v23 + 32))(v22, v21, v24);
    CompletePromptRequest.prompt.getter();
    v25 = type metadata accessor for InferenceRequest(0);
    CompletePromptRequest.parameters.getter();
    v51 = CompletePromptRequest.tools.getter();
    CompletePromptRequest.constraints.getter();
    CompletePromptRequest.metadata.getter();
    v26 = v1[37];
    v27 = v1[34];
    v28 = v1[33];
    v29 = v1[2];
    (*(v1[24] + 8))(v1[25], v1[23]);
    (*(v27 + 8))(v26, v28);
    *(v29 + *(v25 + 24)) = v51;

    v30 = v1[1];
LABEL_14:

    return v30();
  }

  if (v20 != *MEMORY[0x277D71CF8])
  {
    v42 = v1[34];
    v52 = v1[37];
    v53 = v1[35];
    v43 = v1[33];
    v45 = v1[10];
    v44 = v1[11];
    v47 = v1[8];
    v46 = v1[9];
    v49 = v1[6];
    v48 = v1[7];
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    InferenceError.Context.init(additionalDescription:domain:code:userInfo:fallbackAllowed:)();
    (*(v47 + 16))(v49, v46, v48);
    (*(v44 + 104))(v49, *MEMORY[0x277D29DD0], v45);
    _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_1(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, MEMORY[0x277D29DE0], MEMORY[0x277D29DE8]);
    swift_willThrowTypedImpl();
    (*(v47 + 8))(v46, v48);
    v50 = *(v42 + 8);
    v50(v52, v43);
    v50(v53, v43);

    v30 = v1[1];
    goto LABEL_14;
  }

  v32 = v1[35];
  v34 = v1[21];
  v33 = v1[22];
  v35 = v1[20];
  (*(v1[34] + 96))(v32, v1[33]);
  (*(v34 + 32))(v33, v32, v35);
  CompletePromptTemplateRequest.promptTemplateInfo.getter();
  CompletePromptTemplateRequest.prompt.getter();
  v36 = swift_task_alloc();
  v1[38] = v36;
  *v36 = v1;
  v36[1] = _s24TokenGenerationInference011TG_OnDeviceC8ProviderC16inferenceRequest10clientData27promptTemplateConfigurationAA0cI0V20ModelManagerServices06ClientK0V_AA06PromptmN0VSgtYaAI0C5ErrorOYKFTQ1_;
  v37 = v1[19];
  v38 = v1[16];
  v40 = v1[12];
  v39 = v1[13];
  v41 = v1[4];

  return _s24TokenGenerationInference011TG_OnDeviceC8ProviderC6prompt33_F67B098F505663682541EE68977BD2AALL0H12TemplateInfo0hO13Configuration14fallbackPrompt0aB00S0V0aB4Core0soP0V_AA0soQ0VSgAKSgtYa20ModelManagerServices0C5ErrorOYKF(v37, v38, v41, v39, v40);
}

uint64_t _s24TokenGenerationInference011TG_OnDeviceC8ProviderC16inferenceRequest10clientData27promptTemplateConfigurationAA0cI0V20ModelManagerServices06ClientK0V_AA06PromptmN0VSgtYaAI0C5ErrorOYKFTQ1_()
{
  v2 = *(*v1 + 128);
  v3 = *(*v1 + 120);
  v4 = *(*v1 + 112);
  v5 = *(*v1 + 104);

  outlined destroy of [Int](v5, &_s15TokenGeneration6PromptVSgMd, &_s15TokenGeneration6PromptVSgMR);
  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v6 = _s24TokenGenerationInference011TG_OnDeviceC8ProviderC16inferenceRequest10clientData27promptTemplateConfigurationAA0cI0V20ModelManagerServices06ClientK0V_AA06PromptmN0VSgtYaAI0C5ErrorOYKFTY3_;
  }

  else
  {
    v6 = _s24TokenGenerationInference011TG_OnDeviceC8ProviderC16inferenceRequest10clientData27promptTemplateConfigurationAA0cI0V20ModelManagerServices06ClientK0V_AA06PromptmN0VSgtYaAI0C5ErrorOYKFTY2_;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t _s24TokenGenerationInference011TG_OnDeviceC8ProviderC16inferenceRequest10clientData27promptTemplateConfigurationAA0cI0V20ModelManagerServices06ClientK0V_AA06PromptmN0VSgtYaAI0C5ErrorOYKFTY2_()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  (*(v2 + 16))(v0[2], v1, v3);
  v4 = type metadata accessor for InferenceRequest(0);
  CompletePromptTemplateRequest.parameters.getter();
  v11 = CompletePromptTemplateRequest.tools.getter();
  CompletePromptTemplateRequest.constraints.getter();
  CompletePromptTemplateRequest.metadata.getter();
  (*(v2 + 8))(v1, v3);
  v5 = v0[37];
  v6 = v0[34];
  v7 = v0[33];
  v8 = v0[2];
  (*(v0[21] + 8))(v0[22], v0[20]);
  (*(v6 + 8))(v5, v7);
  *(v8 + *(v4 + 24)) = v11;

  v9 = v0[1];

  return v9();
}

uint64_t _s24TokenGenerationInference011TG_OnDeviceC8ProviderC16inferenceRequest10clientData27promptTemplateConfigurationAA0cI0V20ModelManagerServices06ClientK0V_AA06PromptmN0VSgtYaAI0C5ErrorOYKFTY3_()
{
  v1 = v0[37];
  v2 = v0[33];
  v3 = v0[34];
  v5 = v0[11];
  v4 = v0[12];
  v6 = v0[10];
  v7 = v0[6];
  (*(v0[21] + 8))(v0[22], v0[20]);
  (*(v3 + 8))(v1, v2);
  (*(v5 + 32))(v7, v4, v6);

  v8 = v0[1];

  return v8();
}

uint64_t closure #1 in TG_OnDeviceInferenceProvider.requestStream(clientData:configuration:isOneShot:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 928) = v34;
  *(v8 + 896) = v32;
  *(v8 + 912) = v33;
  *(v8 + 864) = v30;
  *(v8 + 880) = v31;
  *(v8 + 848) = v29;
  *(v8 + 2148) = v28;
  *(v8 + 840) = a8;
  *(v8 + 832) = a7;
  *(v8 + 824) = a6;
  *(v8 + 816) = a5;
  *(v8 + 808) = a4;
  *(v8 + 800) = a3;
  *(v8 + 792) = a2;
  *(v8 + 784) = a1;
  v9 = type metadata accessor for InferenceError.Context();
  *(v8 + 936) = v9;
  *(v8 + 944) = *(v9 - 8);
  *(v8 + 952) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration12FinishReasonOSgMd, &_s15TokenGeneration12FinishReasonOSgMR);
  *(v8 + 960) = swift_task_alloc();
  v10 = type metadata accessor for FinishReason();
  *(v8 + 968) = v10;
  *(v8 + 976) = *(v10 - 8);
  *(v8 + 984) = swift_task_alloc();
  *(v8 + 992) = swift_task_alloc();
  type metadata accessor for Usage();
  *(v8 + 1000) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration43PromptCompletionEventCandidateToolCallDeltaVSgMd, &_s15TokenGeneration43PromptCompletionEventCandidateToolCallDeltaVSgMR);
  *(v8 + 1008) = swift_task_alloc();
  v11 = type metadata accessor for PromptCompletionEventCandidateToolCallDelta();
  *(v8 + 1016) = v11;
  *(v8 + 1024) = *(v11 - 8);
  *(v8 + 1032) = swift_task_alloc();
  *(v8 + 1040) = swift_task_alloc();
  *(v8 + 1048) = swift_task_alloc();
  *(v8 + 1056) = swift_task_alloc();
  v12 = type metadata accessor for Token();
  *(v8 + 1064) = v12;
  *(v8 + 1072) = *(v12 - 8);
  *(v8 + 1080) = swift_task_alloc();
  v13 = type metadata accessor for TokenGenerationError();
  *(v8 + 1088) = v13;
  *(v8 + 1096) = *(v13 - 8);
  *(v8 + 1104) = swift_task_alloc();
  v14 = type metadata accessor for PromptCompletionEventCandidateTextDelta();
  *(v8 + 1112) = v14;
  *(v8 + 1120) = *(v14 - 8);
  *(v8 + 1128) = swift_task_alloc();
  *(v8 + 1136) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration39PromptCompletionEventCandidateTextDeltaVSgMd, &_s15TokenGeneration39PromptCompletionEventCandidateTextDeltaVSgMR);
  *(v8 + 1144) = swift_task_alloc();
  *(v8 + 1152) = swift_task_alloc();
  *(v8 + 1160) = swift_task_alloc();
  v15 = type metadata accessor for PromptCompletionEventRenderedPrompt();
  *(v8 + 1168) = v15;
  *(v8 + 1176) = *(v15 - 8);
  *(v8 + 1184) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV9RenderingVSgMd, &_s15TokenGeneration6PromptV9RenderingVSgMR);
  *(v8 + 1192) = swift_task_alloc();
  v16 = type metadata accessor for PromptCompletionEventModelInformation();
  *(v8 + 1200) = v16;
  *(v8 + 1208) = *(v16 - 8);
  *(v8 + 1216) = swift_task_alloc();
  v17 = type metadata accessor for ModelInformation();
  *(v8 + 1224) = v17;
  *(v8 + 1232) = *(v17 - 8);
  *(v8 + 1240) = swift_task_alloc();
  *(v8 + 1248) = swift_task_alloc();
  v18 = type metadata accessor for StopSequenceMonitor();
  *(v8 + 1256) = v18;
  *(v8 + 1264) = *(v18 - 8);
  *(v8 + 1272) = swift_task_alloc();
  v19 = type metadata accessor for GenerativeExperiencesTransparencyLog.ExecutionEnvironment();
  *(v8 + 1280) = v19;
  *(v8 + 1288) = *(v19 - 8);
  *(v8 + 1296) = swift_task_alloc();
  v20 = type metadata accessor for TokenGenerationError.Context();
  *(v8 + 1304) = v20;
  *(v8 + 1312) = *(v20 - 8);
  *(v8 + 1320) = swift_task_alloc();
  v21 = type metadata accessor for Prompt.Rendering();
  *(v8 + 1328) = v21;
  *(v8 + 1336) = *(v21 - 8);
  *(v8 + 1344) = swift_task_alloc();
  *(v8 + 1352) = swift_task_alloc();
  *(v8 + 1360) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference15DataStreamStateVSgMd, &_s24TokenGenerationInference15DataStreamStateVSgMR);
  *(v8 + 1368) = swift_task_alloc();
  *(v8 + 1376) = swift_task_alloc();
  v22 = type metadata accessor for PromptPreprocessingTemplateVersion();
  *(v8 + 1384) = v22;
  *(v8 + 1392) = *(v22 - 8);
  *(v8 + 1400) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  *(v8 + 1408) = swift_task_alloc();
  v23 = type metadata accessor for DataStreamState(0);
  *(v8 + 1416) = v23;
  *(v8 + 1424) = *(v23 - 8);
  *(v8 + 1432) = swift_task_alloc();
  *(v8 + 1440) = swift_task_alloc();
  *(v8 + 1448) = type metadata accessor for InferenceRequest(0);
  *(v8 + 1456) = swift_task_alloc();
  v24 = type metadata accessor for InferenceError();
  *(v8 + 1464) = v24;
  *(v8 + 1472) = *(v24 - 8);
  *(v8 + 1480) = swift_task_alloc();
  *(v8 + 1488) = swift_task_alloc();
  *(v8 + 1496) = swift_task_alloc();
  *(v8 + 1504) = swift_task_alloc();
  *(v8 + 1512) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference27PromptTemplateConfigurationVSgMd, &_s24TokenGenerationInference27PromptTemplateConfigurationVSgMR);
  *(v8 + 1520) = swift_task_alloc();
  v25 = type metadata accessor for UUID();
  *(v8 + 1528) = v25;
  *(v8 + 1536) = *(v25 - 8);
  *(v8 + 1544) = swift_task_alloc();
  *(v8 + 1552) = swift_task_alloc();
  *(v8 + 1560) = swift_task_alloc();
  *(v8 + 1568) = swift_task_alloc();
  *(v8 + 1576) = swift_task_alloc();
  *(v8 + 1584) = swift_task_alloc();
  *(v8 + 1592) = swift_task_alloc();
  *(v8 + 1600) = swift_task_alloc();
  *(v8 + 1608) = swift_task_alloc();
  *(v8 + 1616) = swift_task_alloc();
  *(v8 + 1624) = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in TG_OnDeviceInferenceProvider.requestStream(clientData:configuration:isOneShot:), 0, 0);
}

uint64_t TG_OnDeviceInferenceProvider.process(prompt:context:requestMetadata:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[17] = a5;
  v6[18] = v5;
  v6[15] = a3;
  v6[16] = a4;
  v6[13] = a1;
  v6[14] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVSgMd, &_s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVSgMR);
  v6[19] = swift_task_alloc();
  v7 = type metadata accessor for OnDeviceInferenceAssetObjectE5Runner(0);
  v6[20] = v7;
  v6[21] = *(v7 - 8);
  v6[22] = swift_task_alloc();
  v8 = type metadata accessor for Prompt.RenderedPromptFragment();
  v6[23] = v8;
  v6[24] = *(v8 - 8);
  v6[25] = swift_task_alloc();
  v9 = type metadata accessor for TokenizationResult();
  v6[26] = v9;
  v6[27] = *(v9 - 8);
  v6[28] = swift_task_alloc();
  v10 = type metadata accessor for Prompt.Rendering.Source();
  v6[29] = v10;
  v6[30] = *(v10 - 8);
  v6[31] = swift_task_alloc();
  v6[32] = swift_task_alloc();
  v11 = type metadata accessor for TokenizedPromptModule();
  v6[33] = v11;
  v6[34] = *(v11 - 8);
  v6[35] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_19TokenGenerationCore21TokenizedPromptModuleV7elementtSgMd, &_sSi6offset_19TokenGenerationCore21TokenizedPromptModuleV7elementtSgMR);
  v6[36] = swift_task_alloc();
  v6[37] = swift_task_alloc();
  v6[38] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference21SamplingDecoderPromptV_0aB00F0V9RenderingVtMd, &_s24TokenGenerationInference21SamplingDecoderPromptV_0aB00F0V9RenderingVtMR);
  v6[39] = swift_task_alloc();
  v6[40] = swift_task_alloc();

  return MEMORY[0x2822009F8](TG_OnDeviceInferenceProvider.process(prompt:context:requestMetadata:), 0, 0);
}

uint64_t TG_OnDeviceInferenceProvider.process(prompt:context:requestMetadata:)()
{
  v1 = v0[16];
  v2 = TG_OnDeviceInferenceProvider.promptTokenTable(from:)(*(v1 + 39));
  v0[41] = v2;
  v0[42] = specialized TG_OnDeviceInferenceProvider.localizationOverrideMap(from:)(*(v1 + 40));
  v3 = *(v1 + 48);
  v0[43] = v3;
  v0[44] = *(v1 + 31);
  v4 = OBJC_IVAR____TtC24TokenGenerationInference24OnDeviceInferenceContext_promptPreprocessingTemplateVersion;

  TokenizerRunner.substitutionTextForInputTokenText.getter();
  v5 = Prompt.renderPromptModules(tokenTable:localizationOverrideMap:promptPreprocessingTemplateVersion:substitutionTextForInputTokenText:)();
  v0[45] = v5;
  v6 = v5;

  v0[5] = type metadata accessor for OnDeviceAttachmentTokenizer();
  v7 = _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_1(&lazy protocol witness table cache variable for type OnDeviceAttachmentTokenizer and conformance OnDeviceAttachmentTokenizer, type metadata accessor for OnDeviceAttachmentTokenizer, &protocol conformance descriptor for OnDeviceAttachmentTokenizer);
  v0[2] = v3;
  v0[6] = v7;
  v10 = (*MEMORY[0x277D71E58] + MEMORY[0x277D71E58]);

  v8 = swift_task_alloc();
  v0[46] = v8;
  *v8 = v0;
  v8[1] = TG_OnDeviceInferenceProvider.process(prompt:context:requestMetadata:);

  return v10(v6, v2, v0 + 2, &v1[v4]);
}

{
  v1 = v0;
  v2 = v0[34];
  v3 = MEMORY[0x277D84F90];
  v87 = (v2 + 32);
  v84 = v0[24];
  v93 = v0[27];
  v85 = (v2 + 8);
  v86 = v0[47];
  v91 = *MEMORY[0x277D71EC0];

  v83 = v3;
  v4 = v3;
  while (1)
  {
    v89 = v4;
    v6 = v1[36];
    v5 = v1[37];
    specialized EnumeratedSequence.Iterator.next()(v6);
    outlined init with take of Asset?(v6, v5, &_sSi6offset_19TokenGenerationCore21TokenizedPromptModuleV7elementtSgMd, &_sSi6offset_19TokenGenerationCore21TokenizedPromptModuleV7elementtSgMR);
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_19TokenGenerationCore21TokenizedPromptModuleV7elementtMd, &_sSi6offset_19TokenGenerationCore21TokenizedPromptModuleV7elementtMR);
    if ((*(*(v7 - 8) + 48))(v5, 1, v7) == 1)
    {

      v1[12] = type metadata accessor for OnDeviceInferenceProvider();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference08OnDeviceC8ProviderCmMd, &_s24TokenGenerationInference08OnDeviceC8ProviderCmMR);
      String.init<A>(describing:)();
      v9 = v3;
      v42 = [objc_opt_self() processInfo];
      v43 = [v42 operatingSystemVersionString];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Prompt.Rendering.Source.init(identifier:version:)();
      v44 = RequestMetadata.userInfo.getter();
      ShouldDetokenizeRendered = static RequestMetadata.userInfoKeyShouldDetokenizeRenderedPrompt.getter();
      if (*(v44 + 16))
      {
        specialized __RawDictionaryStorage.find<A>(_:)(ShouldDetokenizeRendered, v46);
        v48 = v47;

        if (v48)
        {
          v49 = v1[48];
          dispatch thunk of TokenizerRunner.detokenize(_:)();
          if (v49)
          {
            v50 = v1[32];
            v52 = v1[29];
            v51 = v1[30];

            (*(v51 + 8))(v50, v52);

            v53 = v1[1];
LABEL_58:

            return v53();
          }
        }
      }

      else
      {
      }

LABEL_51:
      v54 = v1[40];
      v55 = v1[38];
      v56 = v1[31];
      v90 = v1[32];
      v57 = v1[30];
      v98 = v1;
      v58 = v1[29];
      v95 = v98[16];
      v92 = v55;
      (*(v57 + 16))(v56);
      Prompt.description.getter();
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(v9);
      Prompt.Rendering.init(source:segments:renderedString:originalPrompt:tokenIDs:userInfo:detokenizedString:)();

      v59 = v58;
      v60 = v98;
      (*(v57 + 8))(v90, v59);
      *v54 = v83;
      v54[1] = v89;
      v54[2] = v9;
      v61 = *(v95 + 296);
      v62 = *(v61 + 16);
      if (v62)
      {
        v63 = v61 + 32;
        v64 = (v98[21] + 56);
        v96 = v98[20];
        v94 = v64;
        do
        {
          outlined init with copy of DeterministicLanguageModelProtocol(v63, (v60 + 7));
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference08OnDeviceC11AssetObject_pMd, &_s24TokenGenerationInference08OnDeviceC11AssetObject_pMR);
          v72 = swift_dynamicCast();
          v73 = *v64;
          if (v72)
          {
            v65 = v60[22];
            v66 = v60[19];
            v73(v66, 0, 1, v60[20]);
            outlined init with take of OnDeviceInferenceAssetObjectTokenizer(v66, v65, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);
            v67 = *(v65 + *(v96 + 28) + 8);
            ObjectType = swift_getObjectType();
            v69 = *(v67 + 104);

            v71 = ObjectType;
            v60 = v98;
            v69(v70, v71, v67);
            v64 = v94;
            outlined destroy of OnDeviceInferenceAssetObjectTokenizer(v65, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);
          }

          else
          {
            v74 = v60[19];
            v73(v74, 1, 1, v60[20]);
            outlined destroy of [Int](v74, &_s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVSgMd, &_s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVSgMR);
          }

          v63 += 40;
          --v62;
        }

        while (v62);
      }

      v75 = v60;
      v77 = v60 + 39;
      v76 = v60[39];
      v79 = v75[13];
      v78 = v75[14];
      outlined init with take of Asset?(v77[1], v76, &_s24TokenGenerationInference21SamplingDecoderPromptV_0aB00F0V9RenderingVtMd, &_s24TokenGenerationInference21SamplingDecoderPromptV_0aB00F0V9RenderingVtMR);
      v80 = *(v76 + 16);
      v81 = *(v92 + 48);
      *v79 = *v76;
      *(v79 + 16) = v80;
      v82 = type metadata accessor for Prompt.Rendering();
      (*(*(v82 - 8) + 32))(v78, v76 + v81, v82);

      v53 = v75[1];
      goto LABEL_58;
    }

    v8 = v1[37];
    v88 = *v8;
    (*v87)(v1[35], &v8[*(v7 + 48)], v1[33]);
    v9 = TokenizedPromptModule.promptFragments.getter();
    v10 = *(v9 + 16);
    if (v10)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10, 0);
      v11 = v3;
      v12 = v9 + ((*(v84 + 80) + 32) & ~*(v84 + 80));
      v97 = *(v84 + 72);
      v13 = *(v84 + 16);
      do
      {
        v14 = v1[25];
        v9 = v1;
        v15 = v1[23];
        v13(v14, v12, v15);
        v16 = Prompt.RenderedPromptFragment.renderedText()();
        (*(v84 + 8))(v14, v15);
        v18 = *(v11 + 2);
        v17 = *(v11 + 3);
        if (v18 >= v17 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1);
        }

        *(v11 + 2) = v18 + 1;
        *&v11[16 * v18 + 32] = v16;
        v12 += v97;
        --v10;
      }

      while (v10);

      v3 = MEMORY[0x277D84F90];
    }

    else
    {

      v11 = v3;
    }

    specialized Array.append<A>(contentsOf:)(v11);
    v19 = TokenizedPromptModule.renderedString.getter();
    MEMORY[0x223D8E780](v19);

    v20 = TokenizedPromptModule.tokenizationResults.getter();
    v21 = *(v20 + 16);
    if (v21)
    {
      break;
    }

    v23 = v3;
LABEL_30:

    specialized Array.append<A>(contentsOf:)(v38);
    if (v88 == *(v86 + 16) - 1)
    {
      (*v85)(v1[35], v1[33]);

      v83 = v23;
      v4 = v89;
    }

    else
    {
      v4 = v89;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v89[2] + 1, 1, v89);
      }

      v40 = v4[2];
      v39 = v4[3];
      if (v40 >= v39 >> 1)
      {
        v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1, v4);
      }

      (*v85)(v1[35], v1[33]);
      v4[2] = v40 + 1;
      v4[v40 + 4] = v23;
    }
  }

  v22 = 0;
  v23 = v3;
  while (1)
  {
    if (v22 >= *(v20 + 16))
    {
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    v24 = v1[28];
    v25 = v1[26];
    (*(v93 + 16))(v24, v20 + ((*(v93 + 80) + 32) & ~*(v93 + 80)) + *(v93 + 72) * v22, v25);
    v26 = (*(v93 + 88))(v24, v25);
    if (v26 != v91)
    {
      break;
    }

    v27 = v1[28];
    (*(v93 + 96))(v27, v1[26]);
    v28 = *v27;
    v29 = *(*v27 + 16);
    v9 = *(v23 + 16);
    v30 = v9 + v29;
    if (__OFADD__(v9, v29))
    {
      goto LABEL_49;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) != 0 && v30 <= *(v23 + 24) >> 1)
    {
      if (!*(v28 + 16))
      {
        goto LABEL_12;
      }
    }

    else
    {
      if (v9 <= v30)
      {
        v33 = v9 + v29;
      }

      else
      {
        v33 = v9;
      }

      isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v33, 1, v23);
      v23 = isUniquelyReferenced_nonNull_native;
      if (!*(v28 + 16))
      {
LABEL_12:

        if (v29)
        {
          goto LABEL_50;
        }

        goto LABEL_13;
      }
    }

    v34 = *(v23 + 16);
    if ((*(v23 + 24) >> 1) - v34 < v29)
    {
      __break(1u);
LABEL_62:
      __break(1u);
      return MEMORY[0x2821FDEB8](isUniquelyReferenced_nonNull_native, v32);
    }

    memcpy((v23 + 8 * v34 + 32), (v28 + 32), 8 * v29);

    if (v29)
    {
      v35 = *(v23 + 16);
      v36 = __OFADD__(v35, v29);
      v37 = v35 + v29;
      if (v36)
      {
        goto LABEL_62;
      }

      *(v23 + 16) = v37;
    }

LABEL_13:
    if (v21 == ++v22)
    {
      goto LABEL_30;
    }
  }

  if (v26 == *MEMORY[0x277D71EB8])
  {
    (*(v1[27] + 8))(v1[28], v1[26]);
    return _assertionFailure(_:_:file:line:flags:)();
  }

  isUniquelyReferenced_nonNull_native = v1[26];
  v32 = isUniquelyReferenced_nonNull_native;

  return MEMORY[0x2821FDEB8](isUniquelyReferenced_nonNull_native, v32);
}

{

  outlined destroy of [Int](v0 + 16, &_s19TokenGenerationCore19AttachmentTokenizer_pSgMd, &_s19TokenGenerationCore19AttachmentTokenizer_pSgMR);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t TG_OnDeviceInferenceProvider.process(prompt:context:requestMetadata:)(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 376) = a1;
  *(v3 + 384) = v1;

  if (v1)
  {

    v4 = TG_OnDeviceInferenceProvider.process(prompt:context:requestMetadata:);
  }

  else
  {
    outlined destroy of [Int](v3 + 16, &_s19TokenGenerationCore19AttachmentTokenizer_pSgMd, &_s19TokenGenerationCore19AttachmentTokenizer_pSgMR);
    v4 = TG_OnDeviceInferenceProvider.process(prompt:context:requestMetadata:);
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

void closure #2 in TG_OnDeviceInferenceProvider.requestStream(clientData:configuration:isOneShot:)(uint64_t a1)
{
  v1 = *(a1 + 24);
  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)();
  os_unfair_lock_unlock(v1 + 4);
}

void *TG_OnDeviceInferenceProvider.promptTokenTable(from:)(uint64_t a1)
{
  v76 = type metadata accessor for Prompt.SpecialToken();
  v3 = *(v76 - 8);
  v5 = MEMORY[0x28223BE20](v76, v4);
  v77 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v70 - v8;
  v78 = a1;
  if (!a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV07SpecialD0V_yptGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration6PromptV07SpecialD0V_yptGMR);
    v59 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV07SpecialA0V_yptMd, &_s15TokenGeneration6PromptV07SpecialA0V_yptMR) - 8);
    v60 = (*(*v59 + 80) + 32) & ~*(*v59 + 80);
    v61 = swift_allocObject();
    *(v61 + 16) = xmmword_220AE8A30;
    v62 = v61 + v60;
    v63 = (v62 + v59[14]);
    static Prompt.SpecialToken.endPrompt.getter();
    __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
    v64 = off_2834512F8[0];
    type metadata accessor for OnDeviceInferenceOverrides(0);
    v65 = v64();
    v63[3] = MEMORY[0x277D837D0];
    v67 = 0x3E616F653CLL;
    if (v66)
    {
      v67 = v65;
    }

    v68 = 0xE500000000000000;
    if (v66)
    {
      v68 = v66;
    }

    *v63 = v67;
    v63[1] = v68;
    v11 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC15TokenGeneration6PromptV07SpecialC0V_ypTt0g5Tf4g_n(v61);
    swift_setDeallocating();
    outlined destroy of [Int](v62, &_s15TokenGeneration6PromptV07SpecialA0V_yptMd, &_s15TokenGeneration6PromptV07SpecialA0V_yptMR);
    swift_deallocClassInstance();
    return v11;
  }

  v10 = v78;

  v11 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC15TokenGeneration6PromptV07SpecialC0V_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v12 = 0;
  v15 = *(v10 + 64);
  v14 = v10 + 64;
  v13 = v15;
  v16 = 1 << *(v14 - 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v13;
  v19 = (v16 + 63) >> 6;
  v72 = v3 + 16;
  v73 = v3;
  v74 = v9;
  v75 = (v3 + 8);
  while (v18)
  {
    v21 = v12;
LABEL_12:
    v22 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    v23 = *(v78 + 56) + 24 * (v22 | (v21 << 6));
    v24 = *v23;
    if (*(v23 + 16) == 1)
    {
      v25 = *(v23 + 8);
      outlined copy of MetadataSpecialToken(*v23, v25, 1);

      outlined copy of MetadataSpecialToken(v24, v25, 1);
      v26 = v77;
      Prompt.SpecialToken.init(identifier:)();
      v82 = MEMORY[0x277D837D0];
      *&v81 = v24;
      *(&v81 + 1) = v25;
      outlined init with take of Any(&v81, v80);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v79 = v11;
      v28 = specialized __RawDictionaryStorage.find<A>(_:)(v26);
      v30 = v11[2];
      v31 = (v29 & 1) == 0;
      v32 = __OFADD__(v30, v31);
      v33 = v30 + v31;
      if (v32)
      {
        goto LABEL_41;
      }

      v34 = v29;
      if (v11[3] >= v33)
      {
        v9 = v74;
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_22;
        }

        v50 = v28;
        specialized _NativeDictionary.copy()();
        v28 = v50;
        v11 = v79;
        if (v34)
        {
          goto LABEL_23;
        }

LABEL_29:
        v11[(v28 >> 6) + 8] |= 1 << v28;
        v51 = v73;
        v52 = v11[6] + *(v73 + 72) * v28;
        v53 = *(v73 + 16);
        v71 = v28;
        v55 = v76;
        v54 = v77;
        v53(v52, v77, v76);
        outlined init with take of Any(v80, (v11[7] + 32 * v71));
        outlined consume of MetadataSpecialToken(v24, v25, 1);
        (*(v51 + 8))(v54, v55);
        v56 = v11[2];
        v32 = __OFADD__(v56, 1);
        v57 = v56 + 1;
        if (v32)
        {
          goto LABEL_43;
        }

        v11[2] = v57;
        v12 = v21;
        v9 = v74;
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v33, isUniquelyReferenced_nonNull_native);
        v28 = specialized __RawDictionaryStorage.find<A>(_:)(v77);
        v9 = v74;
        if ((v34 & 1) != (v35 & 1))
        {
          goto LABEL_45;
        }

LABEL_22:
        v11 = v79;
        if ((v34 & 1) == 0)
        {
          goto LABEL_29;
        }

LABEL_23:
        v44 = (v11[7] + 32 * v28);
        __swift_destroy_boxed_opaque_existential_1(v44);
        outlined init with take of Any(v80, v44);
        outlined consume of MetadataSpecialToken(v24, v25, 1);
        (*v75)(v77, v76);
LABEL_6:
        v12 = v21;
      }
    }

    else
    {

      Prompt.SpecialToken.init(identifier:)();
      v82 = MEMORY[0x277D83B88];
      *&v81 = v24;
      outlined init with take of Any(&v81, v80);
      v36 = swift_isUniquelyReferenced_nonNull_native();
      v79 = v11;
      v37 = specialized __RawDictionaryStorage.find<A>(_:)(v9);
      v39 = v11[2];
      v40 = (v38 & 1) == 0;
      v32 = __OFADD__(v39, v40);
      v41 = v39 + v40;
      if (v32)
      {
        goto LABEL_42;
      }

      v42 = v38;
      if (v11[3] < v41)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v41, v36);
        v37 = specialized __RawDictionaryStorage.find<A>(_:)(v9);
        if ((v42 & 1) != (v43 & 1))
        {
          goto LABEL_45;
        }

LABEL_25:
        v11 = v79;
        if (v42)
        {
          goto LABEL_5;
        }

        goto LABEL_26;
      }

      if (v36)
      {
        goto LABEL_25;
      }

      v58 = v37;
      specialized _NativeDictionary.copy()();
      v37 = v58;
      v11 = v79;
      if (v42)
      {
LABEL_5:
        v20 = (v11[7] + 32 * v37);
        __swift_destroy_boxed_opaque_existential_1(v20);
        outlined init with take of Any(v80, v20);
        (*v75)(v9, v76);
        goto LABEL_6;
      }

LABEL_26:
      v11[(v37 >> 6) + 8] |= 1 << v37;
      v45 = v73;
      v46 = v37;
      v47 = v76;
      (*(v73 + 16))(v11[6] + *(v73 + 72) * v37, v9, v76);
      outlined init with take of Any(v80, (v11[7] + 32 * v46));
      (*(v45 + 8))(v9, v47);
      v48 = v11[2];
      v32 = __OFADD__(v48, 1);
      v49 = v48 + 1;
      if (v32)
      {
        goto LABEL_44;
      }

      v11[2] = v49;
      v12 = v21;
    }
  }

  while (1)
  {
    v21 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v21 >= v19)
    {

      return v11;
    }

    v18 = *(v14 + 8 * v21);
    ++v12;
    if (v18)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t TG_OnDeviceInferenceProvider.isVersionSupported(requestVersion:)()
{
  v1 = MEMORY[0x223D8CD60](*(v0 + 16));
  v2 = *(v0 + 8);
  v3 = v1 & 1;

  return v2(v3);
}

uint64_t TG_OnDeviceInferenceProvider.convertData(clientData:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  return MEMORY[0x2822009F8](TG_OnDeviceInferenceProvider.convertData(clientData:), 0, 0);
}

{
  v2 = ClientData.data.getter();
  if (v3 >> 60 == 15)
  {
    v2 = 0;
    v3 = 0xC000000000000000;
  }

  v4 = *(v1 + 8);

  return v4(v2, v3);
}

void *TG_OnDeviceInferenceProvider.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  __swift_destroy_boxed_opaque_existential_1(v0 + 17);

  __swift_destroy_boxed_opaque_existential_1(v0 + 23);
  return v0;
}

uint64_t TG_OnDeviceInferenceProvider.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  __swift_destroy_boxed_opaque_existential_1(v0 + 17);

  __swift_destroy_boxed_opaque_existential_1(v0 + 23);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for InferenceProviding.requestInputStreamStep(clientDataArray:configuration:) in conformance TG_OnDeviceInferenceProvider(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = partial apply for closure #1 in TGITokenGeneratorGenerate(_:_:_:_:);

  return MEMORY[0x282188C90](a1, a2, a3, a4, a5);
}

void protocol witness for InferenceProviding.inputStreamEnded(requestID:) in conformance TG_OnDeviceInferenceProvider()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for UnbatchedDeterministicLanguageModelProtocol.singleNextTokenLogits(node:presampler:isPrompt:) in conformance TGICAPILanguageModel;

  JUMPOUT(0x223D8D9E0);
}

uint64_t _s24TokenGenerationInference011TG_OnDeviceC8ProviderC20ModelManagerServices0C9ProvidingAadEP14requestOneShot10clientData13configurationAD06ClientP0VAK_AD0cG20RequestConfigurationVtYaAD0C5ErrorOYKFTW(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v8 = type metadata accessor for InferenceError();
  v4[3] = v8;
  v4[4] = *(v8 - 8);
  v9 = swift_task_alloc();
  v4[5] = v9;
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = _s24TokenGenerationInference011TG_OnDeviceC8ProviderC20ModelManagerServices0C9ProvidingAadEP14requestOneShot10clientData13configurationAD06ClientP0VAK_AD0cG20RequestConfigurationVtYaAD0C5ErrorOYKFTWTQ0_;

  return _s24TokenGenerationInference011TG_OnDeviceC8ProviderC14requestOneShot10clientData13configuration20ModelManagerServices06ClientL0VAI_AG0cG20RequestConfigurationVtYaAG0C5ErrorOYKF(a1, a2, a3, v9);
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

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TQ0_;

  return v5(v2 + 32);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TQ0_()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_1(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t specialized static InferenceRequest.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Constraints();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v25 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration11ConstraintsOSg_ADtMd, _s15TokenGeneration11ConstraintsOSg_ADtMR);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v25 - v15;
  if ((static Prompt.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_10;
  }

  v17 = type metadata accessor for InferenceRequest(0);
  if ((MEMORY[0x223D8CAF0](a1 + v17[5], a2 + v17[5]) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ15TokenGeneration15ToolDescriptionV_Tt1g5(*(a1 + v17[6]), *(a2 + v17[6])) & 1) == 0)
  {
    goto LABEL_10;
  }

  v18 = v17[7];
  v19 = *(v13 + 48);
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(a1 + v18, v16, &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  v26 = v19;
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(a2 + v18, &v16[v19], &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  v20 = *(v5 + 48);
  if (v20(v16, 1, v4) == 1)
  {
    if (v20(&v16[v26], 1, v4) == 1)
    {
      outlined destroy of [Int](v16, &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
LABEL_13:
      v21 = MEMORY[0x223D8C940](a1 + v17[8], a2 + v17[8]);
      return v21 & 1;
    }

    goto LABEL_9;
  }

  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v16, v12, &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  if (v20(&v16[v26], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
LABEL_9:
    outlined destroy of [Int](v16, &_s15TokenGeneration11ConstraintsOSg_ADtMd, _s15TokenGeneration11ConstraintsOSg_ADtMR);
    goto LABEL_10;
  }

  (*(v5 + 32))(v8, &v16[v26], v4);
  _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_1(&lazy protocol witness table cache variable for type Constraints and conformance Constraints, MEMORY[0x277D71B40], MEMORY[0x277D71B48]);
  v23 = dispatch thunk of static Equatable.== infix(_:_:)();
  v24 = *(v5 + 8);
  v24(v8, v4);
  v24(v12, v4);
  outlined destroy of [Int](v16, &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  if (v23)
  {
    goto LABEL_13;
  }

LABEL_10:
  v21 = 0;
  return v21 & 1;
}

uint64_t specialized TG_OnDeviceInferenceProvider.localizationOverrideMap(from:)(uint64_t a1)
{
  v70 = type metadata accessor for Prompt.SpecialToken();
  v2 = *(v70 - 8);
  MEMORY[0x28223BE20](v70, v3);
  v69 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x277D84F90];
  if (!a1)
  {

    return _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC15TokenGeneration6PromptV07SpecialC0V_SDyS2SGTt0g5Tf4g_n(v5);
  }

  v6 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC15TokenGeneration6PromptV07SpecialC0V_SDyS2SGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v7 = a1 + 64;
  v8 = 1 << *(a1 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(a1 + 64);
  v11 = (v8 + 63) >> 6;
  v65 = (v2 + 8);

  v12 = 0;
  v66 = v11;
  v67 = a1 + 64;
  v68 = a1;
LABEL_7:
  if (v10)
  {
    v73 = v6;
    v16 = v12;
  }

  else
  {
    do
    {
      v16 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_43;
      }

      if (v16 >= v11)
      {

        return v6;
      }

      v10 = *(v7 + 8 * v16);
      ++v12;
    }

    while (!v10);
    v73 = v6;
  }

  v17 = __clz(__rbit64(v10));
  v10 &= v10 - 1;
  v18 = v17 | (v16 << 6);
  v19 = *(a1 + 56);
  v20 = (*(a1 + 48) + 16 * v18);
  v21 = *v20;
  v71 = v20[1];
  v72 = v21;
  v22 = *(v19 + 8 * v18);

  v74 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v75 = v22;
  v23 = 0;
  v24 = v22 + 64;
  v25 = 1 << *(v22 + 32);
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  else
  {
    v26 = -1;
  }

  v27 = v26 & *(v22 + 64);
  v28 = (v25 + 63) >> 6;
  while (1)
  {
    v29 = v23;
    if (!v27)
    {
      break;
    }

LABEL_22:
    v30 = __clz(__rbit64(v27));
    v27 &= v27 - 1;
    v31 = v30 | (v23 << 6);
    v32 = *(v75 + 56) + 24 * v31;
    v34 = *v32;
    v33 = *(v32 + 8);
    LODWORD(v32) = *(v32 + 16);
    v76 = v33;
    if (v32 == 1)
    {
      v39 = (*(v75 + 48) + 16 * v31);
      v40 = v39[1];
      v64 = *v39;
      outlined copy of MetadataSpecialToken(v34, v33, 1);
      outlined copy of MetadataSpecialToken(v34, v33, 1);

      v41 = v74;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v77 = v41;
      v63 = v40;
      v44 = specialized __RawDictionaryStorage.find<A>(_:)(v64, v40);
      v45 = *(v41 + 16);
      v46 = (v43 & 1) == 0;
      v47 = v45 + v46;
      if (__OFADD__(v45, v46))
      {
        goto LABEL_44;
      }

      if (*(v41 + 24) >= v47)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if ((v43 & 1) == 0)
          {
            goto LABEL_36;
          }
        }

        else
        {
          v52 = v43;
          specialized _NativeDictionary.copy()();
          if ((v52 & 1) == 0)
          {
            goto LABEL_36;
          }
        }

LABEL_34:

        v50 = v76;
        v74 = v77;
        v51 = (*(v77 + 56) + 16 * v44);
        *v51 = v34;
        v51[1] = v50;

        outlined consume of MetadataSpecialToken(v34, v50, 1);
      }

      else
      {
        LODWORD(v74) = v43;
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v47, isUniquelyReferenced_nonNull_native);
        v48 = specialized __RawDictionaryStorage.find<A>(_:)(v64, v63);
        if ((v74 & 1) != (v49 & 1))
        {
          goto LABEL_46;
        }

        v44 = v48;
        if (v74)
        {
          goto LABEL_34;
        }

LABEL_36:
        v53 = v76;
        v54 = v77;
        *(v77 + 8 * (v44 >> 6) + 64) |= 1 << v44;
        v55 = (v54[6] + 16 * v44);
        v56 = v63;
        *v55 = v64;
        v55[1] = v56;
        v57 = (v54[7] + 16 * v44);
        *v57 = v34;
        v57[1] = v53;
        outlined consume of MetadataSpecialToken(v34, v53, 1);
        v58 = v54[2];
        v59 = __OFADD__(v58, 1);
        v60 = v58 + 1;
        if (v59)
        {
          goto LABEL_45;
        }

        v74 = v54;
        v54[2] = v60;
      }
    }

    else
    {
      if (one-time initialization token for device != -1)
      {
        swift_once();
      }

      v35 = type metadata accessor for Logger();
      __swift_project_value_buffer(v35, static Log.device);
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&dword_220940000, v36, v37, "Special token value of type int is not supported", v38, 2u);
        MEMORY[0x223D90A10](v38, -1, -1);

        outlined consume of MetadataSpecialToken(v34, v76, 0);
      }

      else
      {
      }
    }
  }

  while (1)
  {
    v23 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v23 >= v28)
    {

      v13 = v69;
      Prompt.SpecialToken.init(identifier:)();
      v14 = v73;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v77 = v14;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v74, v13, v15);
      (*v65)(v13, v70);
      v6 = v77;
      v12 = v16;
      v7 = v67;
      a1 = v68;
      v11 = v66;
      goto LABEL_7;
    }

    v27 = *(v24 + 8 * v23);
    ++v29;
    if (v27)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t type metadata accessor for InferenceRequest(uint64_t a1)
{
  result = type metadata singleton initialization cache for InferenceRequest;
  if (!type metadata singleton initialization cache for InferenceRequest)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t partial apply for specialized closure #2 in DataStreamStateManager.createState(uuid:isOneShot:loggingIdentifier:onBehalfOfUserIdentifier:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in TGITokenGeneratorGenerate(_:_:_:_:);

  return specialized closure #2 in DataStreamStateManager.createState(uuid:isOneShot:loggingIdentifier:onBehalfOfUserIdentifier:)(a1, v4, v5, v6);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in TGITokenGeneratorGenerate(_:_:_:_:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5(a1, v4);
}

uint64_t partial apply for closure #1 in TG_OnDeviceInferenceProvider.requestStream(clientData:configuration:isOneShot:)(uint64_t a1)
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = *(v2 + 80);
  v18 = (v3 + 24) & ~v3;
  v4 = (*(v2 + 64) + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(type metadata accessor for InferenceProviderRequestConfiguration() - 8);
  v7 = (v5 + *(v6 + 80) + 8) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(type metadata accessor for ClientData() - 8);
  v16 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v15 = (*(v9 + 64) + v3 + v16) & ~v3;
  v13 = *(v1 + v5);
  v14 = *(v1 + v4);
  v12 = *(v1 + 16);
  v10 = swift_task_alloc();
  *(v17 + 16) = v10;
  *v10 = v17;
  v10[1] = protocol witness for UnbatchedDeterministicLanguageModelProtocol.singleNextTokenLogits(node:presampler:isPrompt:) in conformance TGICAPILanguageModel;

  return closure #1 in TG_OnDeviceInferenceProvider.requestStream(clientData:configuration:isOneShot:)(a1, v12, v1 + v18, v14, v13, v1 + v7, v1 + v16, v1 + v15);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in TGITokenGeneratorGenerate(_:_:_:_:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v4);
}

void *partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)@<X0>(_BYTE *a1@<X8>)
{
  return partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(a1);
}

{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

uint64_t objectdestroyTm_1()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t closure #2 in DataStreamStateManager.createState(uuid:isOneShot:loggingIdentifier:onBehalfOfUserIdentifier:)specialized partial apply(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = protocol witness for UnbatchedDeterministicLanguageModelProtocol.singleNextTokenLogits(node:presampler:isPrompt:) in conformance TGICAPILanguageModel;

  return specialized closure #2 in DataStreamStateManager.createState(uuid:isOneShot:loggingIdentifier:onBehalfOfUserIdentifier:)(a1, v4, v5, v6);
}

void type metadata completion function for InferenceRequest(uint64_t a1)
{
  type metadata accessor for Prompt();
  if (v1 <= 0x3F)
  {
    type metadata accessor for SamplingParameters();
    if (v2 <= 0x3F)
    {
      type metadata accessor for [ToolDescription](319, &lazy cache variable for type metadata for [ToolDescription], MEMORY[0x277D71BD0], MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for [ToolDescription](319, &lazy cache variable for type metadata for Constraints?, MEMORY[0x277D71B40], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          type metadata accessor for RequestMetadata();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void type metadata accessor for [ToolDescription](uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Asset(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((static URL.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  if (v7 == *v9 && v8 == v9[1])
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t __swift_deallocate_boxed_opaque_existential_1(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x223D90A10);
  }

  return result;
}

void *specialized OnDeviceInferenceProviderDataSource.adapterMetadataFromResource(_:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v26 = a2;
  v3 = type metadata accessor for URL();
  MEMORY[0x28223BE20](v3 - 8, v4);
  v28 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LLMAdapterAssetContents();
  v27 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for LLMAdapterAssetMetadata();
  MEMORY[0x28223BE20](v10 - 8, v11);
  v29 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog0B5AssetVyAA010LLMAdapterC8MetadataVAA0dC8ContentsVGMd, &_s12ModelCatalog0B5AssetVyAA010LLMAdapterC8MetadataVAA0dC8ContentsVGMR);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v24 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v18 = v31;
  result = dispatch thunk of AssetBackedResource.fetchAsset()();
  if (!v18)
  {
    v31 = v14;
    v25 = v6;
    v21 = v28;
    v20 = v29;
    CatalogAsset.metadata.getter();
    v22 = v9;
    CatalogAsset.contents.getter();
    v23 = v25;
    AssetContents.metadataURL.getter();
    (*(v27 + 8))(v22, v23);
    specialized AdapterMetadata.init(from:metadataUrl:)(v20, v21, v30);
    (*(v31 + 8))(v17, v13);
    return memcpy(v26, v30, 0x102uLL);
  }

  return result;
}

uint64_t outlined init with take of ModelMetadata?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference13ModelMetadataVSgMd, &_s24TokenGenerationInference13ModelMetadataVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for DataSourceError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DataSourceError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t PreprocessedImage.init(imageData:shape:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  a3[1] = a2;
  a3[2] = 1;
  *a3 = result;
  return result;
}

void ProcessedImage.copy(to:bufferShape:tileIndex:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = v4[5];
  v41 = v4[4];
  v42 = v9;
  v10 = v4[7];
  v43 = v4[6];
  v44 = v10;
  v11 = v4[1];
  v37 = *v4;
  v38 = v11;
  v12 = v4[3];
  v39 = v4[2];
  v40 = v12;
  v13 = v12;
  if (_sSasSQRzlE2eeoiySbSayxG_ABtFZSi_Tt1g5(a3, v12))
  {
    v17 = v44;
    if (v44 > a4)
    {
      v14.i16[0] = v39;
      specialized static CLIPImagePlanarizer.copy(to:fromPixelData:numSegmentsPerDimension:tileIndex:width:height:paddingValue:inputDimension:)(a1, a2, v38, *(&v44 + 1), a4, v37, *(&v37 + 1), v41, v14, v15, v16);
      return;
    }

    if (one-time initialization token for device != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    __swift_project_value_buffer(v32, static Log.device);
    outlined init with copy of ProcessedImage(&v37, v36);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 134218240;
      *(v35 + 4) = a4;
      *(v35 + 12) = 2048;
      *(v35 + 14) = v17;
      outlined destroy of ProcessedImage(&v37);
      _os_log_impl(&dword_220940000, v33, v34, "Tile index %ld must be less than the total number of tiles %ld", v35, 0x16u);
      MEMORY[0x223D90A10](v35, -1, -1);
    }

    else
    {
      outlined destroy of ProcessedImage(&v37);
    }
  }

  else
  {
    if (one-time initialization token for device != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Log.device);
    outlined init with copy of ProcessedImage(&v37, v36);

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    outlined destroy of ProcessedImage(&v37);
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v36[0] = v22;
      *v21 = 136315394;
      v23 = MEMORY[0x277D83B88];
      v24 = MEMORY[0x223D8E8D0](a3, MEMORY[0x277D83B88]);
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, v36);

      *(v21 + 4) = v26;
      *(v21 + 12) = 2080;
      v27 = MEMORY[0x223D8E8D0](v13, v23);
      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, v36);

      *(v21 + 14) = v29;
      _os_log_impl(&dword_220940000, v19, v20, "Input buffer shape %s is not the expected value %s", v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223D90A10](v22, -1, -1);
      MEMORY[0x223D90A10](v21, -1, -1);
    }
  }

  v30 = type metadata accessor for GenerationError();
  lazy protocol witness table accessor for type GenerationError and conformance GenerationError();
  swift_allocError();
  (*(*(v30 - 8) + 104))(v31, *MEMORY[0x277D71E18], v30);
  swift_willThrow();
}

uint64_t PreprocessedImage.copy(to:bufferShape:tileIndex:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v4;
  v9 = v4[1];
  result = _sSasSQRzlE2eeoiySbSayxG_ABtFZSi_Tt1g5(a3, v9);
  if ((result & 1) == 0)
  {
    if (one-time initialization token for device != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Log.device);

    v13 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v13, v18))
    {
      goto LABEL_12;
    }

    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v32 = v20;
    *v19 = 136315394;
    v21 = MEMORY[0x277D83B88];
    v22 = MEMORY[0x223D8E8D0](a3, MEMORY[0x277D83B88]);
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v32);

    *(v19 + 4) = v24;
    *(v19 + 12) = 2080;
    v25 = MEMORY[0x223D8E8D0](v9, v21);
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v32);

    *(v19 + 14) = v27;
    _os_log_impl(&dword_220940000, v13, v18, "Input buffer shape %s is not the expected value %s", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D90A10](v20, -1, -1);
    v16 = v19;
    goto LABEL_11;
  }

  if (a4)
  {
    if (one-time initialization token for device != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Log.device);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v13, v14))
    {
      goto LABEL_12;
    }

    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_220940000, v13, v14, "Preprocessed image only supports one tile", v15, 2u);
    v16 = v15;
LABEL_11:
    MEMORY[0x223D90A10](v16, -1, -1);
LABEL_12:

    v28 = type metadata accessor for GenerationError();
    lazy protocol witness table accessor for type GenerationError and conformance GenerationError();
    swift_allocError();
    (*(*(v28 - 8) + 104))(v29, *MEMORY[0x277D71E18], v28);
    return swift_willThrow();
  }

  v30 = *(v10 + 16);
  if (v30 > a2)
  {
    __break(1u);
  }

  else if ((v10 + 32) != a1 || v10 + 32 + 2 * v30 <= a1)
  {

    return memmove(a1, (v10 + 32), 2 * v30);
  }

  return result;
}

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t getEnumTagSinglePayload for ProcessedImage(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ProcessedImage(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
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
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t protocol witness for CustomStringConvertible.description.getter in conformance AFMDecodeIOSpecificationVersion()
{
  if (*v0)
  {
    return 0xD000000000000021;
  }

  else
  {
    return 0xD000000000000023;
  }
}

uint64_t AFMDecodeFunction.init(programDescriptor:functionName:kernelRegistry:adaptedBy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  v113 = a5;
  v110 = a4;
  v108 = a6;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s4ODIE17ProgramDescriptorVSgMd, &_s4ODIE17ProgramDescriptorVSgMR);
  v12 = MEMORY[0x28223BE20](v10 - 8, v11);
  v103 = &v100 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v100 - v15;
  v112 = type metadata accessor for ProgramDescriptor();
  v109 = *(v112 - 8);
  v18 = MEMORY[0x28223BE20](v112, v17);
  v101 = &v100 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v20);
  v102 = &v100 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s4ODIE18FunctionDescriptorVSgMd, &_s4ODIE18FunctionDescriptorVSgMR);
  MEMORY[0x28223BE20](v22 - 8, v23);
  v25 = &v100 - v24;
  v26 = type metadata accessor for FunctionDescriptor();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26, v28);
  v30 = &v100 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = a2;
  v111 = a1;
  ProgramDescriptor.functionDescriptor(for:)();
  if ((*(v27 + 48))(v25, 1, v26) == 1)
  {
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v106 = v27;
  v107 = v26;
  (*(v27 + 32))(v30, v25, v26);
  v31 = FunctionDescriptor.inputNames.getter();
  v114 = 0x706574735F6E69;
  v115 = 0xE700000000000000;
  MEMORY[0x28223BE20](v31, v32);
  v98 = &v114;
  v33 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, (&v100 - 4), v31);

  if ((v33 & 1) == 0)
  {
    if (one-time initialization token for device != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    __swift_project_value_buffer(v37, static Log.device);

    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.debug.getter();

    v40 = os_log_type_enabled(v38, v39);
    v41 = v111;
    v42 = v109;
    if (v40)
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v114 = v44;
      *v43 = 136315138;
      v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v105, a3, &v114);

      *(v43 + 4) = v45;
      _os_log_impl(&dword_220940000, v38, v39, "Found that %s was not a decoding function", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v44);
      MEMORY[0x223D90A10](v44, -1, -1);
      MEMORY[0x223D90A10](v43, -1, -1);

      outlined destroy of ProgramDescriptor?(v113);
      v46 = type metadata accessor for KernelRegistry();
      (*(*(v46 - 8) + 8))(v110, v46);
      (*(v42 + 8))(v111, v112);
    }

    else
    {

      outlined destroy of ProgramDescriptor?(v113);
      v61 = type metadata accessor for KernelRegistry();
      (*(*(v61 - 8) + 8))(v110, v61);
      (*(v42 + 8))(v41, v112);
    }

    result = (*(v106 + 8))(v30, v107);
    v63 = v108;
    goto LABEL_19;
  }

  v100 = v6;
  v104 = v30;
  outlined init with copy of ProgramDescriptor?(v113, v16);
  v34 = v109;
  v35 = *(v109 + 48);
  v36 = v112;
  if (v35(v16, 1, v112) == 1)
  {
    outlined destroy of ProgramDescriptor?(v16);
    goto LABEL_11;
  }

  v47 = v102;
  (*(v34 + 32))(v102, v16, v36);
  v48 = ProgramDescriptor.functionNames.getter();
  v49 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v48);

  v50 = specialized static ODIEUtils.isFunction(_:adaptedBy:)(v104, v49);

  if ((v50 & 1) == 0)
  {
    if (one-time initialization token for device != -1)
    {
      swift_once();
    }

    v82 = type metadata accessor for Logger();
    __swift_project_value_buffer(v82, static Log.device);

    v83 = Logger.logObject.getter();
    v84 = static os_log_type_t.debug.getter();

    v85 = os_log_type_enabled(v83, v84);
    v63 = v108;
    v86 = v104;
    if (v85)
    {
      v87 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      v114 = v88;
      *v87 = 136315138;
      v89 = v36;
      v90 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v105, a3, &v114);

      *(v87 + 4) = v90;
      _os_log_impl(&dword_220940000, v83, v84, "Not using %s since it is not adapted by the provided adapter.", v87, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v88);
      MEMORY[0x223D90A10](v88, -1, -1);
      MEMORY[0x223D90A10](v87, -1, -1);

      outlined destroy of ProgramDescriptor?(v113);
      v91 = type metadata accessor for KernelRegistry();
      (*(*(v91 - 8) + 8))(v110, v91);
      v92 = *(v109 + 8);
      v92(v111, v89);
      v93 = v102;
      v94 = v89;
    }

    else
    {

      outlined destroy of ProgramDescriptor?(v113);
      v97 = type metadata accessor for KernelRegistry();
      (*(*(v97 - 8) + 8))(v110, v97);
      v92 = *(v109 + 8);
      v92(v111, v36);
      v93 = v47;
      v94 = v36;
    }

    v92(v93, v94);
    result = (*(v106 + 8))(v86, v107);
LABEL_19:
    v63[1] = 0u;
    v63[2] = 0u;
    *v63 = 0u;
    return result;
  }

  (*(v34 + 8))(v47, v36);
LABEL_11:
  v51 = v34;
  if (one-time initialization token for device != -1)
  {
    swift_once();
  }

  v52 = v35;
  v53 = type metadata accessor for Logger();
  __swift_project_value_buffer(v53, static Log.device);

  v54 = Logger.logObject.getter();
  v55 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v114 = v57;
    *v56 = 136315138;
    *(v56 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v105, a3, &v114);
    _os_log_impl(&dword_220940000, v54, v55, "Found that %s was a decoding function", v56, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v57);
    MEMORY[0x223D90A10](v57, -1, -1);
    v58 = v56;
    v36 = v112;
    MEMORY[0x223D90A10](v58, -1, -1);
  }

  v59 = v111;
  v60 = v103;
  outlined init with copy of ProgramDescriptor?(v113, v103);
  if (v52(v60, 1, v36) != 1)
  {
    v64 = *(v51 + 32);
    v65 = v101;
    v64(v101, v60, v36);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy4ODIE17ProgramDescriptorVGMd, &_ss23_ContiguousArrayStorageCy4ODIE17ProgramDescriptorVGMR);
    v66 = (*(v51 + 80) + 32) & ~*(v51 + 80);
    v67 = swift_allocObject();
    *(v67 + 16) = xmmword_220AE8A30;
    v64((v67 + v66), v65, v36);
  }

  v68 = v108;
  v69 = v110;
  v116 = type metadata accessor for EmptyProfiler();
  v117 = MEMORY[0x277D36AD0];
  __swift_allocate_boxed_opaque_existential_1(&v114);
  EmptyProfiler.init()();
  v70 = v100;
  v71 = ProgramDescriptor.function(named:kernelRegistry:dependencies:profiler:)();
  if (v70)
  {

    outlined destroy of ProgramDescriptor?(v113);
    v72 = type metadata accessor for KernelRegistry();
    (*(*(v72 - 8) + 8))(v69, v72);
    (*(v51 + 8))(v59, v36);
    (*(v106 + 8))(v104, v107);
    return __swift_destroy_boxed_opaque_existential_1(&v114);
  }

  v73 = v71;
  __swift_destroy_boxed_opaque_existential_1(&v114);

  v109 = v73;
  if (!v73)
  {
    goto LABEL_36;
  }

  v74 = FunctionDescriptor.inputNames.getter();
  v114 = 0xD000000000000018;
  v115 = 0x8000000220AFA5D0;
  MEMORY[0x28223BE20](v74, v75);
  v98 = &v114;
  v76 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, (&v100 - 4), v74);
  if (v76)
  {

    v78 = &type metadata for AFMV5DecodeFunctionEngine;
    v79 = lazy protocol witness table accessor for type AFMV5DecodeFunctionEngine and conformance AFMV5DecodeFunctionEngine();
    v80 = 0;
    v81 = v112;
LABEL_32:
    outlined destroy of ProgramDescriptor?(v113);
    v96 = type metadata accessor for KernelRegistry();
    (*(*(v96 - 8) + 8))(v110, v96);
    (*(v51 + 8))(v59, v81);
    result = (*(v106 + 8))(v104, v107);
    *v68 = v80;
    *(v68 + 1) = *v119;
    *(v68 + 1) = *&v119[3];
    *(v68 + 1) = v109;
    v68[1] = v118;
    *(v68 + 4) = v78;
    *(v68 + 5) = v79;
    return result;
  }

  v114 = 0x6D5F6C6173756163;
  v115 = 0xEB000000006B7361;
  MEMORY[0x28223BE20](v76, v77);
  v98 = &v114;
  v95 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, (&v100 - 4), v74);
  v81 = v112;
  if (v95)
  {

    v78 = &type metadata for AFMV7DecodeFunctionEngine;
    v80 = 1;
    v79 = lazy protocol witness table accessor for type AFMV7DecodeFunctionEngine and conformance AFMV7DecodeFunctionEngine();
    goto LABEL_32;
  }

LABEL_37:
  v99 = 0;
  v98 = 123;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t protocol witness for AFMDecodeFunctionDescriptor.contextLength.getter in conformance AFMDecodeFunction()
{
  v1 = v0[4];
  v2 = v0[5];
  __swift_project_boxed_opaque_existential_1(v0 + 1, v1);
  return (*(*(v2 + 8) + 16))(v1);
}

uint64_t protocol witness for AFMDecodeFunctionDescriptor.queryLength.getter in conformance AFMDecodeFunction()
{
  v1 = v0[4];
  v2 = v0[5];
  __swift_project_boxed_opaque_existential_1(v0 + 1, v1);
  return (*(*(v2 + 8) + 24))(v1);
}

uint64_t protocol witness for AFMDecodeFunctionDescriptor.computesLogits.getter in conformance AFMDecodeFunction()
{
  v1 = v0[4];
  v2 = v0[5];
  __swift_project_boxed_opaque_existential_1(v0 + 1, v1);
  return (*(*(v2 + 8) + 32))(v1) & 1;
}

uint64_t AFMDecodeFunction.description.getter()
{
  v1 = v0;
  _StringGuts.grow(_:)(73);
  MEMORY[0x223D8E780](0xD000000000000021, 0x8000000220AFDDA0);
  v3 = v0[4];
  v2 = v0[5];
  __swift_project_boxed_opaque_existential_1(v1 + 1, v1[4]);
  (*(*(v2 + 8) + 16))(v3);
  v4 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x223D8E780](v4);

  MEMORY[0x223D8E780](0x4C7972657551202CLL, 0xEF203A6874676E65);
  v6 = v1[4];
  v5 = v1[5];
  __swift_project_boxed_opaque_existential_1(v1 + 1, v6);
  (*(*(v5 + 8) + 24))(v6);
  v7 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x223D8E780](v7);

  MEMORY[0x223D8E780](0xD000000000000012, 0x8000000220AFDDD0);
  v9 = v1[4];
  v8 = v1[5];
  __swift_project_boxed_opaque_existential_1(v1 + 1, v9);
  v10 = (*(*(v8 + 8) + 32))(v9);
  v11 = (v10 & 1) == 0;
  if (v10)
  {
    v12 = 1702195828;
  }

  else
  {
    v12 = 0x65736C6166;
  }

  if (v11)
  {
    v13 = 0xE500000000000000;
  }

  else
  {
    v13 = 0xE400000000000000;
  }

  MEMORY[0x223D8E780](v12, v13);

  MEMORY[0x223D8E780](41, 0xE100000000000000);
  return 0;
}

unint64_t lazy protocol witness table accessor for type AFMDecodeFunction and conformance AFMDecodeFunction()
{
  result = lazy protocol witness table cache variable for type AFMDecodeFunction and conformance AFMDecodeFunction;
  if (!lazy protocol witness table cache variable for type AFMDecodeFunction and conformance AFMDecodeFunction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AFMDecodeFunction and conformance AFMDecodeFunction);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AFMDecodeFunction and conformance AFMDecodeFunction;
  if (!lazy protocol witness table cache variable for type AFMDecodeFunction and conformance AFMDecodeFunction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AFMDecodeFunction and conformance AFMDecodeFunction);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for AFMDecodeFunction(uint64_t a1)
{
  result = lazy protocol witness table accessor for type AFMDecodeFunction and conformance AFMDecodeFunction();
  *(a1 + 8) = result;
  return result;
}

uint64_t _s24TokenGenerationInference27AFMDecodeFunctionDescriptorPAAE7compare33_A0DB0E9E2F2F948015DE50E98AADB3DALL3lhs3rhsAA10ComparisonAELLOx_xtFZAA0dE0V_Tt1g5(void *a1, void *a2)
{
  v5 = a1[4];
  v4 = a1[5];
  __swift_project_boxed_opaque_existential_1(a1 + 1, v5);
  v6 = (*(*(v4 + 8) + 24))(v5);
  v8 = a2[4];
  v7 = a2[5];
  __swift_project_boxed_opaque_existential_1(a2 + 1, v8);
  v9 = (*(*(v7 + 8) + 24))(v8);
  v10 = a1[4];
  v11 = a1[5];
  __swift_project_boxed_opaque_existential_1(a1 + 1, v10);
  v12 = *(v11 + 8);
  if (v6 != v9)
  {
    v26 = (*(v12 + 24))(v10);
    v28 = a2[4];
    v27 = a2[5];
    __swift_project_boxed_opaque_existential_1(a2 + 1, v28);
    v29 = (*(*(v27 + 8) + 24))(v28);
    return 2 * (v26 >= v29);
  }

  v13 = (*(v12 + 16))(v10);
  v15 = a2[4];
  v14 = a2[5];
  __swift_project_boxed_opaque_existential_1(a2 + 1, v15);
  v16 = (*(*(v14 + 8) + 16))(v15);
  v17 = a1[4];
  v18 = a1[5];
  __swift_project_boxed_opaque_existential_1(a1 + 1, v17);
  v19 = *(v18 + 8);
  if (v13 != v16)
  {
    v26 = (*(v19 + 16))(v17);
    v31 = a2[4];
    v30 = a2[5];
    __swift_project_boxed_opaque_existential_1(a2 + 1, v31);
    v29 = (*(*(v30 + 8) + 16))(v31);
    return 2 * (v26 >= v29);
  }

  v20 = (*(v19 + 32))(v17);
  v22 = a2[4];
  v21 = a2[5];
  __swift_project_boxed_opaque_existential_1(a2 + 1, v22);
  if (((v20 ^ (*(*(v21 + 8) + 32))(v22)) & 1) == 0)
  {
    return 1;
  }

  v23 = a1[4];
  v24 = a1[5];
  __swift_project_boxed_opaque_existential_1(a1 + 1, v23);
  if ((*(*(v24 + 8) + 32))(v23))
  {
    return 0;
  }

  else
  {
    return 2;
  }
}

uint64_t _s24TokenGenerationInference27AFMDecodeFunctionDescriptorPAAE7compare33_A0DB0E9E2F2F948015DE50E98AADB3DALL3lhs3rhsAA10ComparisonAELLOx_xtFZAA011AFMV5DecodeE6EngineV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for FunctionDescriptor();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v28[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = AFMV5DecodeFunctionEngine.queryLength.getter();
  if (v7 != AFMV5DecodeFunctionEngine.queryLength.getter())
  {
    v26 = AFMV5DecodeFunctionEngine.queryLength.getter();
    v27 = AFMV5DecodeFunctionEngine.queryLength.getter();
    return 2 * (v26 >= v27);
  }

  v8 = AFMV5DecodeFunctionEngine.contextLength.getter();
  if (v8 != AFMV5DecodeFunctionEngine.contextLength.getter())
  {
    v26 = AFMV5DecodeFunctionEngine.contextLength.getter();
    v27 = AFMV5DecodeFunctionEngine.contextLength.getter();
    return 2 * (v26 >= v27);
  }

  v9 = Function.descriptor.getter();
  v10 = MEMORY[0x223D8E2D0](v9);
  v11 = *(v3 + 8);
  v12 = v11(v6, v2);
  v29 = 0x69676F6C5F74756FLL;
  v30 = 0xEA00000000007374;
  MEMORY[0x28223BE20](v12, v13);
  *&v28[-16] = &v29;
  v14 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), &v28[-32], v10);

  v15 = Function.descriptor.getter();
  v16 = MEMORY[0x223D8E2D0](v15);
  v17 = v11(v6, v2);
  v29 = 0x69676F6C5F74756FLL;
  v30 = 0xEA00000000007374;
  MEMORY[0x28223BE20](v17, v18);
  *&v28[-16] = &v29;
  v19 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, &v28[-32], v16);

  if (((v14 ^ v19) & 1) == 0)
  {
    return 1;
  }

  v20 = Function.descriptor.getter();
  v21 = MEMORY[0x223D8E2D0](v20);
  v22 = v11(v6, v2);
  v29 = 0x69676F6C5F74756FLL;
  v30 = 0xEA00000000007374;
  MEMORY[0x28223BE20](v22, v23);
  *&v28[-16] = &v29;
  v24 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, &v28[-32], v21);

  if (v24)
  {
    return 0;
  }

  else
  {
    return 2;
  }
}

uint64_t _s24TokenGenerationInference27AFMDecodeFunctionDescriptorPAAE7compare33_A0DB0E9E2F2F948015DE50E98AADB3DALL3lhs3rhsAA10ComparisonAELLOx_xtFZAA011AFMV7DecodeE6EngineV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for FunctionDescriptor();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v28[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = AFMV7DecodeFunctionEngine.queryLength.getter();
  if (v7 != AFMV7DecodeFunctionEngine.queryLength.getter())
  {
    v26 = AFMV7DecodeFunctionEngine.queryLength.getter();
    v27 = AFMV7DecodeFunctionEngine.queryLength.getter();
    return 2 * (v26 >= v27);
  }

  v8 = AFMV7DecodeFunctionEngine.contextLength.getter();
  if (v8 != AFMV7DecodeFunctionEngine.contextLength.getter())
  {
    v26 = AFMV7DecodeFunctionEngine.contextLength.getter();
    v27 = AFMV7DecodeFunctionEngine.contextLength.getter();
    return 2 * (v26 >= v27);
  }

  v9 = Function.descriptor.getter();
  v10 = MEMORY[0x223D8E2D0](v9);
  v11 = *(v3 + 8);
  v12 = v11(v6, v2);
  v29 = 0x69676F6C5F74756FLL;
  v30 = 0xEA00000000007374;
  MEMORY[0x28223BE20](v12, v13);
  *&v28[-16] = &v29;
  v14 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, &v28[-32], v10);

  v15 = Function.descriptor.getter();
  v16 = MEMORY[0x223D8E2D0](v15);
  v17 = v11(v6, v2);
  v29 = 0x69676F6C5F74756FLL;
  v30 = 0xEA00000000007374;
  MEMORY[0x28223BE20](v17, v18);
  *&v28[-16] = &v29;
  v19 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, &v28[-32], v16);

  if (((v14 ^ v19) & 1) == 0)
  {
    return 1;
  }

  v20 = Function.descriptor.getter();
  v21 = MEMORY[0x223D8E2D0](v20);
  v22 = v11(v6, v2);
  v29 = 0x69676F6C5F74756FLL;
  v30 = 0xEA00000000007374;
  MEMORY[0x28223BE20](v22, v23);
  *&v28[-16] = &v29;
  v24 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, &v28[-32], v21);

  if (v24)
  {
    return 0;
  }

  else
  {
    return 2;
  }
}

uint64_t outlined destroy of ProgramDescriptor?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s4ODIE17ProgramDescriptorVSgMd, &_s4ODIE17ProgramDescriptorVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of ProgramDescriptor?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s4ODIE17ProgramDescriptorVSgMd, &_s4ODIE17ProgramDescriptorVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type AFMV7DecodeFunctionEngine and conformance AFMV7DecodeFunctionEngine()
{
  result = lazy protocol witness table cache variable for type AFMV7DecodeFunctionEngine and conformance AFMV7DecodeFunctionEngine;
  if (!lazy protocol witness table cache variable for type AFMV7DecodeFunctionEngine and conformance AFMV7DecodeFunctionEngine)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AFMV7DecodeFunctionEngine and conformance AFMV7DecodeFunctionEngine);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AFMV7DecodeFunctionEngine and conformance AFMV7DecodeFunctionEngine;
  if (!lazy protocol witness table cache variable for type AFMV7DecodeFunctionEngine and conformance AFMV7DecodeFunctionEngine)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AFMV7DecodeFunctionEngine and conformance AFMV7DecodeFunctionEngine);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AFMV7DecodeFunctionEngine and conformance AFMV7DecodeFunctionEngine;
  if (!lazy protocol witness table cache variable for type AFMV7DecodeFunctionEngine and conformance AFMV7DecodeFunctionEngine)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AFMV7DecodeFunctionEngine and conformance AFMV7DecodeFunctionEngine);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AFMV7DecodeFunctionEngine and conformance AFMV7DecodeFunctionEngine;
  if (!lazy protocol witness table cache variable for type AFMV7DecodeFunctionEngine and conformance AFMV7DecodeFunctionEngine)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AFMV7DecodeFunctionEngine and conformance AFMV7DecodeFunctionEngine);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AFMV5DecodeFunctionEngine and conformance AFMV5DecodeFunctionEngine()
{
  result = lazy protocol witness table cache variable for type AFMV5DecodeFunctionEngine and conformance AFMV5DecodeFunctionEngine;
  if (!lazy protocol witness table cache variable for type AFMV5DecodeFunctionEngine and conformance AFMV5DecodeFunctionEngine)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AFMV5DecodeFunctionEngine and conformance AFMV5DecodeFunctionEngine);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AFMV5DecodeFunctionEngine and conformance AFMV5DecodeFunctionEngine;
  if (!lazy protocol witness table cache variable for type AFMV5DecodeFunctionEngine and conformance AFMV5DecodeFunctionEngine)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AFMV5DecodeFunctionEngine and conformance AFMV5DecodeFunctionEngine);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AFMV5DecodeFunctionEngine and conformance AFMV5DecodeFunctionEngine;
  if (!lazy protocol witness table cache variable for type AFMV5DecodeFunctionEngine and conformance AFMV5DecodeFunctionEngine)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AFMV5DecodeFunctionEngine and conformance AFMV5DecodeFunctionEngine);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AFMV5DecodeFunctionEngine and conformance AFMV5DecodeFunctionEngine;
  if (!lazy protocol witness table cache variable for type AFMV5DecodeFunctionEngine and conformance AFMV5DecodeFunctionEngine)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AFMV5DecodeFunctionEngine and conformance AFMV5DecodeFunctionEngine);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AFMDecodeFunction(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for AFMDecodeFunction(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AFMDecodeIOSpecificationVersion and conformance AFMDecodeIOSpecificationVersion()
{
  result = lazy protocol witness table cache variable for type AFMDecodeIOSpecificationVersion and conformance AFMDecodeIOSpecificationVersion;
  if (!lazy protocol witness table cache variable for type AFMDecodeIOSpecificationVersion and conformance AFMDecodeIOSpecificationVersion)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AFMDecodeIOSpecificationVersion and conformance AFMDecodeIOSpecificationVersion);
  }

  return result;
}

uint64_t closure #1 in Sequence<>.contains(_:)specialized partial apply(uint64_t *a1)
{
  return partial apply for specialized closure #1 in Sequence<>.contains(_:)(a1) & 1;
}

{
  return _sSTsSQ7ElementRpzrlE8containsySbABFSbABXEfU_SaySSG_TG5TA_0(a1) & 1;
}

uint64_t AFMGatherFunction.vocabularyCount.getter()
{
  v0 = type metadata accessor for Dimension();
  v1 = *(v0 - 8);
  v3 = MEMORY[0x28223BE20](v0, v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3, v6);
  v25 = &v24 - v7;
  v8 = type metadata accessor for FunctionDescriptor();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ArrayDescriptor();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  Function.descriptor.getter();
  FunctionDescriptor.arrayDescriptor(of:)(0x6465626D655F6E69, 0xED000073676E6964, v17);
  (*(v9 + 8))(v12, v8);
  v18 = ArrayDescriptor.shape.getter();
  (*(v14 + 8))(v17, v13);
  if (*(v18 + 16))
  {
    v20 = *(v1 + 16);
    v21 = v25;
    v20(v25, v18 + ((*(v1 + 80) + 32) & ~*(v1 + 80)), v0);

    v20(v5, v21, v0);
    v22 = (*(v1 + 88))(v5, v0);
    v19 = *(v1 + 8);
    if (v22 == *MEMORY[0x277D36B40])
    {
      v19(v21, v0);
      (*(v1 + 96))(v5, v0);
      return *v5;
    }
  }

  else
  {
    __break(1u);
  }

  v19(v5, v0);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t AFMGatherFunction.callAsFunction<A>(tokens:embeddingsTable:buffers:featureProjector:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[21] = a7;
  v8[22] = a8;
  v8[19] = a5;
  v8[20] = a6;
  v8[17] = a3;
  v8[18] = a4;
  v8[15] = a1;
  v8[16] = a2;
  v8[23] = *(a8 + 8);
  v8[24] = type metadata accessor for EnumeratedSequence();
  v8[25] = swift_task_alloc();
  v9 = type metadata accessor for EnumeratedSequence.Iterator();
  v8[26] = v9;
  v8[27] = *(v9 - 8);
  v8[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](AFMGatherFunction.callAsFunction<A>(tokens:embeddingsTable:buffers:featureProjector:), 0, 0);
}

int64_t AFMGatherFunction.callAsFunction<A>(tokens:embeddingsTable:buffers:featureProjector:)()
{
  v40 = v0[21];
  v41 = v0[22];
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[17];
  v43 = v0[18];
  v4 = v0[16];
  v0[10] = v1;
  v0[11] = v2;
  v5 = swift_task_alloc();
  *(v5 + 16) = v3;
  *(v5 + 24) = v0 + 10;
  v6 = MEMORY[0x277D84F98];
  v7 = specialized Sequence.reduce<A>(into:_:)(MEMORY[0x277D84F98], partial apply for specialized closure #1 in static AFMUtilities.makeTensors<A>(for:descriptorProvider:wrapping:), v5, &outlined read-only object #0 of AFMGatherFunction.callAsFunction<A>(tokens:embeddingsTable:buffers:featureProjector:));
  outlined destroy of String(&unk_28344E360);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v4, 0x6465626D655F6E69, 0xED000073676E6964, isUniquelyReferenced_nonNull_native);
  v0[29] = v7;
  v0[12] = v1;
  v0[13] = v2;
  v9 = swift_task_alloc();
  *(v9 + 16) = v3;
  *(v9 + 24) = v0 + 12;
  v10 = specialized Sequence.reduce<A>(into:_:)(v6, closure #1 in static AFMUtilities.makeTensors<A>(for:descriptorProvider:wrapping:)specialized partial apply, v9, &outlined read-only object #1 of AFMGatherFunction.callAsFunction<A>(tokens:embeddingsTable:buffers:featureProjector:));
  v0[30] = v10;
  outlined destroy of String(&unk_28344E390);

  v12 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(specialized implicit closure #2 in AFMGatherFunction.callAsFunction<A>(tokens:embeddingsTable:buffers:featureProjector:), 0, v40, MEMORY[0x277D849A8], MEMORY[0x277D84A98], v41, MEMORY[0x277D84AC0], v11);
  v13 = AFMGatherFunction.vocabularyCount.getter();
  _s24TokenGenerationInference12AFMUtilitiesV14validateTokens_15vocabularyCount16featureProjectoryx_SiAA016ODIEImageFeatureJ0CtKSlRzs5Int32V7ElementRtzlFZSayAJG_Tt2g5(v12, v13, v43);
  v38 = v10;
  v42 = (v0 + 14);
  v39 = v7;
  v14 = v0[23];
  v15 = v0[21];
  v16 = v0[18];

  v0[14] = MEMORY[0x277D84F98];
  MEMORY[0x223D8E850](v15, v14);
  EnumeratedSequence.makeIterator()();
  EnumeratedSequence.Iterator.next()();
  if (!v0[6])
  {
LABEL_25:
    result = (*(v0[27] + 8))(v0[28], v0[26]);
    if (*(v39 + 16))
    {
      result = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000010, 0x8000000220AFA5B0);
      if (v34)
      {
        v35 = v0[15];
        v0[31] = *(*(v39 + 56) + 8 * result);
        v36 = swift_task_alloc();
        *(v36 + 16) = *(v0 + 21);
        *(v36 + 32) = v35;
        *(v36 + 40) = v42;

        _s4ODIE7NDArrayC29withUnsafeMutableArrayPointer2of_q_xm_q_AA0defG0VyxGq0_YKXEtq0_YKs5ErrorR0_r1_lF();

        v37 = swift_task_alloc();
        v0[32] = v37;
        *v37 = v0;
        v37[1] = AFMGatherFunction.callAsFunction<A>(tokens:embeddingsTable:buffers:featureProjector:);

        return Function._run(inputs:outputs:)(v39, v38);
      }
    }

    else
    {
LABEL_36:
      __break(1u);
    }

    __break(1u);
    return result;
  }

  v17 = v0[2];
  v18 = v0[3];
  while (1)
  {
    v19 = *(v16 + 16);
    if (v19)
    {
      break;
    }

LABEL_4:

LABEL_5:
    EnumeratedSequence.Iterator.next()();
    v17 = v0[2];
    v18 = v0[3];
    if (!v0[6])
    {
      goto LABEL_25;
    }
  }

  result = [swift_unknownObjectRetain() imageCount];
  v21 = result;
  if ((result & 0x80000000) != 0)
  {
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (!result)
  {
    swift_unknownObjectRelease();
    goto LABEL_4;
  }

  v22 = 0;
  while (1)
  {
    v23 = [v19 tokenRangeAt_];
    if (v18 >= v23)
    {
      if (__OFADD__(v23, v24))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v18 < v23 + v24)
      {
        break;
      }
    }

    v22 = (v22 + 1);
    if (v21 == v22)
    {
      swift_unknownObjectRelease();

      goto LABEL_5;
    }
  }

  swift_unknownObjectRelease();
  v25 = *v42;
  v26 = swift_isUniquelyReferenced_nonNull_native();
  v28 = specialized __RawDictionaryStorage.find<A>(_:)(v17);
  v29 = v25[2];
  v30 = (v27 & 1) == 0;
  result = v29 + v30;
  if (__OFADD__(v29, v30))
  {
    goto LABEL_35;
  }

  v31 = v27;
  if (v25[3] >= result)
  {
    if ((v26 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
    }

    goto LABEL_21;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(result, v26);
  v32 = specialized __RawDictionaryStorage.find<A>(_:)(v17);
  if ((v31 & 1) == (v33 & 1))
  {
    v28 = v32;
LABEL_21:

    if (v31)
    {
      *(v25[7] + 4 * v28) = v18;
    }

    else
    {
      specialized _NativeDictionary._insert(at:key:value:)(v28, v17, v18, v25);
    }

    *v42 = v25;
    goto LABEL_5;
  }

LABEL_31:

  return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
}

uint64_t AFMGatherFunction.callAsFunction<A>(tokens:embeddingsTable:buffers:featureProjector:)()
{
  *(*v1 + 264) = v0;

  if (v0)
  {

    v2 = AFMGatherFunction.callAsFunction<A>(tokens:embeddingsTable:buffers:featureProjector:);
  }

  else
  {
    v2 = AFMGatherFunction.callAsFunction<A>(tokens:embeddingsTable:buffers:featureProjector:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  *(*v1 + 304) = v0;

  if (v0)
  {

    v2 = AFMGatherFunction.callAsFunction<A>(tokens:embeddingsTable:buffers:featureProjector:);
  }

  else
  {
    v2 = AFMGatherFunction.callAsFunction<A>(tokens:embeddingsTable:buffers:featureProjector:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

void AFMGatherFunction.callAsFunction<A>(tokens:embeddingsTable:buffers:featureProjector:)()
{
  *(v0 + 56) = 0;
  v1 = *(v0 + 240);
  *(v0 + 64) = 0;
  *(v0 + 72) = 1;
  if (!*(v1 + 16))
  {
    __break(1u);
    goto LABEL_27;
  }

  specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000013, 0x8000000220AFA630);
  if ((v2 & 1) == 0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  *(swift_task_alloc() + 16) = v0 + 56;

  _s4ODIE7NDArrayC32withUnsafeMutableRawArrayPointeryxxAA0defgH0Vq_YKXEq_YKs5ErrorR_r0_lF();

  v3 = *(v0 + 112);
  *(v0 + 272) = v3;
  v4 = *(v3 + 32);
  *(v0 + 73) = v4;
  v5 = -1;
  v6 = -1 << v4;
  if (-(-1 << v4) < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(v3 + 64);

  if (v7)
  {
    v8 = 0;
LABEL_10:
    *(v0 + 280) = v7;
    *(v0 + 288) = v8;
    v10 = *(v0 + 160);
    v11 = __clz(__rbit64(v7)) | (v8 << 6);
    v12 = *(*(v3 + 48) + 8 * v11);
    v13 = v10 * v12;
    if ((v10 * v12) >> 64 == (v10 * v12) >> 63)
    {
      if (*(v0 + 72))
      {
LABEL_31:
        __break(1u);
        return;
      }

      v14 = __OFADD__(v13, v10);
      v15 = v13 + v10;
      if (!v14)
      {
        if (v15 >= v13)
        {
          v16 = *(*(v3 + 56) + 4 * v11);
          v17 = *(v0 + 56);
          v18 = v17 + v13;
          v19 = v17 + v15;
          if (v17)
          {
            v20 = v19;
          }

          else
          {
            v20 = 0;
          }

          if (v17)
          {
            v21 = v18;
          }

          else
          {
            v21 = 0;
          }

          v22 = swift_task_alloc();
          *(v0 + 296) = v22;
          *v22 = v0;
          v22[1] = AFMGatherFunction.callAsFunction<A>(tokens:embeddingsTable:buffers:featureProjector:);

          ODIEImageFeatureProjector.copyEmbedding(forToken:to:)(v16, v21, v20);
          return;
        }

        goto LABEL_30;
      }

LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v9 = 0;
  while (((63 - v6) >> 6) - 1 != v9)
  {
    v8 = v9 + 1;
    v7 = *(v3 + 8 * v9++ + 72);
    if (v7)
    {
      goto LABEL_10;
    }
  }

  v23 = *(v0 + 8);

  v23();
}

{
  v1 = *(v0 + 288);
  v2 = (*(v0 + 280) - 1) & *(v0 + 280);
  if (v2)
  {
    v3 = *(v0 + 272);
LABEL_7:
    *(v0 + 280) = v2;
    *(v0 + 288) = v1;
    v5 = *(v0 + 160);
    v6 = __clz(__rbit64(v2)) | (v1 << 6);
    v7 = *(*(v3 + 48) + 8 * v6);
    v8 = v5 * v7;
    if ((v5 * v7) >> 64 == (v5 * v7) >> 63)
    {
      if (*(v0 + 72))
      {
LABEL_27:
        __break(1u);
        return;
      }

      v9 = __OFADD__(v8, v5);
      v10 = v8 + v5;
      if (!v9)
      {
        if (v10 >= v8)
        {
          v11 = *(*(v3 + 56) + 4 * v6);
          v12 = *(v0 + 56);
          if (v12)
          {
            v13 = v12 + v10;
          }

          else
          {
            v13 = 0;
          }

          if (v12)
          {
            v14 = v12 + v8;
          }

          else
          {
            v14 = 0;
          }

          v15 = swift_task_alloc();
          *(v0 + 296) = v15;
          *v15 = v0;
          v15[1] = AFMGatherFunction.callAsFunction<A>(tokens:embeddingsTable:buffers:featureProjector:);

          ODIEImageFeatureProjector.copyEmbedding(forToken:to:)(v11, v14, v13);
          return;
        }

        goto LABEL_26;
      }
    }

    else
    {
LABEL_24:
      __break(1u);
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  while (1)
  {
    v4 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
      goto LABEL_24;
    }

    if (v4 >= (((1 << *(v0 + 73)) + 63) >> 6))
    {
      break;
    }

    v3 = *(v0 + 272);
    v2 = *(v3 + 8 * v4 + 64);
    ++v1;
    if (v2)
    {
      v1 = v4;
      goto LABEL_7;
    }
  }

  v16 = *(v0 + 8);

  v16();
}

void *closure #1 in AFMGatherFunction.callAsFunction<A>(tokens:embeddingsTable:buffers:featureProjector:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18[1] = a2;
  v7 = *(a5 + 8);
  v18[0] = type metadata accessor for EnumeratedSequence();
  MEMORY[0x28223BE20](v18[0], v8);
  v9 = type metadata accessor for EnumeratedSequence.Iterator();
  v19 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v10);
  v12 = v18 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s4ODIE25UnsafeMutableArrayPointerVys5Int32VGMd, &_s4ODIE25UnsafeMutableArrayPointerVys5Int32VGMR);
  result = UnsafeMutableArrayPointer.contents.getter();
  if (result)
  {
    if (v14 < 0)
    {
      __break(1u);
      return result;
    }

    if (v14)
    {
      bzero(result, 4 * v14);
    }
  }

  MEMORY[0x223D8E850](a4, v7);
  EnumeratedSequence.makeIterator()();
  EnumeratedSequence.Iterator.next()();
  if (v22)
  {
    v15 = v20;
    v16 = v21;
    do
    {

      if (v16 == -1 || *(*a3 + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(v15), (v17 & 1) != 0))
      {
        v16 = 0;
      }

      *(UnsafeMutableArrayPointer.contents.getter() + 4 * v15) = v16;
      EnumeratedSequence.Iterator.next()();
      v15 = v20;
      v16 = v21;
    }

    while (v22);
  }

  return (*(v19 + 8))(v12, v9);
}

uint64_t partial apply for specialized closure #1 in static AFMUtilities.makeTensors<A>(for:descriptorProvider:wrapping:)(unint64_t *a1, uint64_t *a2)
{
  return partial apply for specialized closure #1 in static AFMUtilities.makeTensors<A>(for:descriptorProvider:wrapping:)(a1, a2);
}

{
  return specialized closure #1 in static AFMUtilities.makeTensors<A>(for:descriptorProvider:wrapping:)(a1, *a2, a2[1], *(v2 + 16), **(v2 + 24));
}

{
  return specialized closure #1 in static AFMUtilities.makeTensors<A>(for:descriptorProvider:wrapping:)(a1, *a2, a2[1], *(v2 + 16), *(v2 + 24));
}

uint64_t partial apply for closure #2 in AFMGatherFunction.callAsFunction<A>(tokens:embeddingsTable:buffers:featureProjector:)()
{
  v1 = *(v0 + 16);
  result = UnsafeMutableRawArrayPointer.contents.getter();
  *v1 = result;
  *(v1 + 8) = v3;
  *(v1 + 16) = 0;
  return result;
}

uint64_t specialized AFMGatherFunction.init(programDescriptor:functionName:kernelRegistry:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v71 = a4;
  v7 = type metadata accessor for ScalarType();
  v67 = *(v7 - 8);
  v68 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v66 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Dimension();
  v11 = *(v10 - 8);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v15 = (&v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13, v16);
  v65 = &v61 - v17;
  v18 = type metadata accessor for ArrayDescriptor();
  v62 = *(v18 - 8);
  v63 = v18;
  MEMORY[0x28223BE20](v18, v19);
  v73 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s4ODIE18FunctionDescriptorVSgMd, &_s4ODIE18FunctionDescriptorVSgMR);
  MEMORY[0x28223BE20](v21 - 8, v22);
  v24 = &v61 - v23;
  v25 = type metadata accessor for FunctionDescriptor();
  MEMORY[0x28223BE20](v25, v26);
  v28 = &v61 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = a2;
  v30 = v29;
  v70 = a3;
  v72 = a1;
  ProgramDescriptor.functionDescriptor(for:)();
  if ((*(v30 + 48))(v24, 1, v25) == 1)
  {
    goto LABEL_17;
  }

  v31 = *(v30 + 32);
  v69 = v25;
  v32 = v31(v28, v24, v25);
  v33 = MEMORY[0x223D8E2D0](v32);
  v74[0] = 0xD000000000000013;
  v74[1] = 0x8000000220AFA630;
  MEMORY[0x28223BE20](v33, v34);
  v59 = v74;
  v35 = v75;
  v36 = v28;
  v37 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), (&v61 - 4), v33);
  v75 = v35;

  if ((v37 & 1) == 0)
  {

    v54 = type metadata accessor for KernelRegistry();
    (*(*(v54 - 8) + 8))(v71, v54);
    v55 = type metadata accessor for ProgramDescriptor();
    (*(*(v55 - 8) + 8))(v72, v55);
    v48 = 0;
    goto LABEL_13;
  }

  FunctionDescriptor.arrayDescriptor(of:)(0xD000000000000013, 0x8000000220AFA630, v73);
  if (ArrayDescriptor.rank.getter() == 4)
  {
    v38 = ArrayDescriptor.shape.getter();
    if (*(v38 + 16) < 4uLL)
    {
      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    v39 = *(v11 + 16);
    v40 = v65;
    v39(v65, v38 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + 3 * *(v11 + 72), v10);

    v39(v15, v40, v10);
    v41 = (*(v11 + 88))(v15, v10);
    v42 = *(v11 + 8);
    if (v41 != *MEMORY[0x277D36B40])
    {
      v42(v15, v10);
      v60 = 0;
      v59 = 64;
      goto LABEL_21;
    }

    v42(v40, v10);
    (*(v11 + 96))(v15, v10);
    v43 = *v15;
    v44 = v66;
    v45 = v73;
    ArrayDescriptor.scalarType.getter();
    v46 = ScalarType.byteCount.getter();
    (*(v67 + 8))(v44, v68);
    v47 = (v43 * v46) >> 64 == (v43 * v46) >> 63;
    v48 = v75;
    if (!v47)
    {
      goto LABEL_16;
    }

    v74[3] = type metadata accessor for EmptyProfiler();
    v74[4] = MEMORY[0x277D36AD0];
    __swift_allocate_boxed_opaque_existential_1(v74);
    EmptyProfiler.init()();
    v49 = v71;
    v50 = v72;
    v51 = ProgramDescriptor.function(named:kernelRegistry:dependencies:profiler:)();
    if (v48)
    {

      v52 = type metadata accessor for KernelRegistry();
      (*(*(v52 - 8) + 8))(v49, v52);
      v53 = type metadata accessor for ProgramDescriptor();
      (*(*(v53 - 8) + 8))(v50, v53);
      (*(v62 + 8))(v45, v63);
      (*(v30 + 8))(v36, v69);
      __swift_destroy_boxed_opaque_existential_1(v74);
      return v48;
    }

    v48 = v51;
    __swift_destroy_boxed_opaque_existential_1(v74);
    if (!v48)
    {
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v56 = type metadata accessor for KernelRegistry();
    (*(*(v56 - 8) + 8))(v49, v56);
    v57 = type metadata accessor for ProgramDescriptor();
    (*(*(v57 - 8) + 8))(v50, v57);
    (*(v62 + 8))(v45, v63);
LABEL_13:
    (*(v30 + 8))(v36, v69);
    return v48;
  }

LABEL_19:
  v60 = 0;
  v59 = 32;
LABEL_21:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t getEnumTagSinglePayload for AFMGatherFunction(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for AFMGatherFunction(uint64_t result, int a2, int a3)
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

uint64_t closure #1 in static AFMUtilities.makeTensors<A>(for:descriptorProvider:wrapping:)specialized partial apply(unint64_t *a1, uint64_t *a2)
{
  return partial apply for specialized closure #1 in static AFMUtilities.makeTensors<A>(for:descriptorProvider:wrapping:)(a1, a2);
}

{
  return partial apply for specialized closure #1 in static AFMUtilities.makeTensors<A>(for:descriptorProvider:wrapping:)(a1, a2);
}

{
  return _s24TokenGenerationInference12AFMUtilitiesV11makeTensors3for18descriptorProvider8wrappingSDySS4ODIE7NDArrayCGSaySSG_xSDySSAJ6BufferVGtAA015ArrayDescriptorI0RzlFZyAKz_SStXEfU_AH08FunctionO0V_TG5TA_0(a1, a2);
}

void static AFMUtilities.addHoles(_:to:)(uint64_t isUniquelyReferenced_nonNull_native@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v5 = *a2;
  v4 = a2[1];
  v6 = a2[2];
  v7 = *(isUniquelyReferenced_nonNull_native + 16);
  if (!v7)
  {
LABEL_5:
    *a3 = v5;
    a3[1] = v4;
    a3[2] = v6;

    return;
  }

  v8 = v5 + v4;
  if (__OFADD__(v5, v4))
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v9 = *(v6 + 16);
  v10 = __OFADD__(v8, v9);
  v11 = v8 + v9;
  if (v10)
  {
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v14 = *(isUniquelyReferenced_nonNull_native + 32);
  v12 = isUniquelyReferenced_nonNull_native + 32;
  v13 = v14;
  if (v11 < v14)
  {
    goto LABEL_5;
  }

  v15 = v12;
  TokenMask.prefix(upTo:)(v13);
  v16 = *(v6 + 16);
  v10 = __OFADD__(v8, v16);
  v17 = v8 + v16;
  if (v10)
  {
    goto LABEL_73;
  }

  v10 = __OFADD__(v17, v7);
  v18 = v17 + v7;
  if (v10)
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v19 = v49;
  v10 = __OFSUB__(v18, v49);
  v20 = v18 - v49;
  if (v10)
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  v48 = v5 + v4;
  v21 = *(&v49 + 1);
  if (__OFSUB__(v20, *(&v49 + 1)))
  {
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  v22 = v50;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v50 + 16), 0, v50);
  }

  v23 = *(v6 + 16);
  v44 = v48 + v23;
  if (!__OFADD__(v48, v23))
  {
    v40 = v15;
    v41 = v7;
    v46 = v6;
    v47 = v4;
    v45 = v6 + 32;
    v24 = v13;
    v42 = a3;
    v43 = 1;
    v25 = v13;
    v26 = *(&v49 + 1);
    while (1)
    {
      v27 = v13;
      if (v24 <= v44)
      {
        v28 = v44;
      }

      else
      {
        v28 = v24;
      }

      while (1)
      {
        if (v28 == v24)
        {
          *v42 = v49;
          v42[2] = v22;
          return;
        }

        if (v27 == v25)
        {
          break;
        }

        if (v24 >= v5)
        {
          if (v24 < v48)
          {
            if (*(v22 + 2))
            {
              v29 = 1;
              goto LABEL_38;
            }

LABEL_34:
            v21 = v26 + 1;
            if (__OFADD__(v26, 1))
            {
              goto LABEL_69;
            }

            *(&v49 + 1) = ++v26;
            goto LABEL_19;
          }

          v30 = v24 - v5;
          if (__OFSUB__(v24, v5))
          {
            goto LABEL_65;
          }

          v10 = __OFSUB__(v30, v47);
          v31 = v30 - v47;
          if (v10)
          {
            goto LABEL_66;
          }

          if ((v31 & 0x8000000000000000) != 0)
          {
            goto LABEL_67;
          }

          if (v31 >= *(v46 + 16))
          {
            goto LABEL_68;
          }

          v29 = *(v45 + v31);
          if (*(v22 + 2))
          {
            goto LABEL_38;
          }

          if (*(v45 + v31))
          {
            goto LABEL_34;
          }
        }

        else if (*(v22 + 2))
        {
          v29 = 0;
          goto LABEL_38;
        }

        if (v26)
        {
          v29 = 0;
          v21 = v26;
LABEL_38:
          v32 = static Array._allocateBufferUninitialized(minimumCapacity:)();
          *(v32 + 16) = 1;
          *(v32 + 32) = v29;
          v33 = *(v22 + 2);
          if (v33 >= *(v22 + 3) >> 1)
          {
            v35 = v32;
            v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(1, v33 + 1, 1, v22);
            v32 = v35;
            if (!*(v35 + 16))
            {
              goto LABEL_83;
            }
          }

          v34 = *(v22 + 2);
          if (v34 >= *(v22 + 3) >> 1)
          {
            goto LABEL_64;
          }

          v22[v34 + 32] = *(v32 + 32);

          ++*(v22 + 2);
          goto LABEL_19;
        }

        v10 = __OFADD__(v19++, 1);
        if (v10)
        {
          goto LABEL_70;
        }

        v21 = 0;
        v26 = 0;
        *&v49 = v19;
LABEL_19:
        ++v24;
        v10 = __OFADD__(v25++, 1);
        if (v10)
        {
          __break(1u);
LABEL_64:
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
LABEL_70:
          __break(1u);
          goto LABEL_71;
        }
      }

      v36 = v41;
      if (v43 == v41)
      {
        v13 = -1;
        goto LABEL_50;
      }

      if (v43 >= v41)
      {
        goto LABEL_79;
      }

      v36 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        goto LABEL_81;
      }

      v13 = *(v40 + 8 * v43);
LABEL_50:
      v43 = v36;
      if (!(*(v22 + 2) | v21))
      {
        v10 = __OFADD__(v19++, 1);
        if (v10)
        {
          goto LABEL_80;
        }

        *&v49 = v19;
        v25 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          goto LABEL_78;
        }

        continue;
      }

      v37 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v37 + 16) = 1;
      *(v37 + 32) = 0;
      v38 = *(v22 + 2);
      if (v38 >= *(v22 + 3) >> 1)
      {
        v39 = v37;
        v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(1, v38 + 1, 1, v22);
        v37 = v39;
        if (!*(v39 + 16))
        {
          goto LABEL_84;
        }

        v38 = *(v22 + 2);
      }

      if (v38 >= *(v22 + 3) >> 1)
      {
        goto LABEL_82;
      }

      v22[v38 + 32] = *(v37 + 32);

      ++*(v22 + 2);
      v25 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        goto LABEL_78;
      }
    }
  }

LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:

  __break(1u);
LABEL_84:

  __break(1u);
}

uint64_t specialized static AFMUtilities.defaultMasks(tokenCount:startingContextCount:)(uint64_t result, uint64_t a2)
{
  if (result < 1)
  {
LABEL_15:
    __break(1u);
  }

  else
  {
    v3 = result;
    v4 = MEMORY[0x277D84F90];
    v12 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, result, 0);
    v5 = 0;
    v6 = 1;
    result = v12;
    v7 = v3;
    while (!v5)
    {
      if (__OFADD__(a2, v6))
      {
        __break(1u);
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      v13 = result;
      v9 = *(result + 16);
      v8 = *(result + 24);
      if (v9 >= v8 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1);
        result = v13;
      }

      v10 = 0;
      *(result + 16) = v9 + 1;
      v11 = (result + 24 * v9);
      v11[4] = 0;
      v11[5] = a2 + v6;
      v11[6] = v4;
      v5 = v6 == v3;
      if (v6 != v3)
      {
        v10 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_14;
        }
      }

      v6 = v10;
      if (!--v7)
      {
        return result;
      }
    }
  }

  __break(1u);
  return result;
}

char *specialized static AFMUtilities.makeCacheFillPlan(currentCacheSize:holeIndices:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = a2;
  v5 = 0;
  v6 = v2 == 1;
  v7 = a2 + 32;
  v8 = MEMORY[0x277D84F90];
  v9 = 1;
LABEL_3:
  v10 = v5;
  v11 = v6;
  while (v11 != v2)
  {
    if (v11 >= v2)
    {
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    if (v9 >= v2)
    {
      goto LABEL_33;
    }

    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      goto LABEL_34;
    }

    if (v12 == v2)
    {
      v6 = v2;
    }

    else
    {
      v6 = v9;
    }

    v5 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      goto LABEL_35;
    }

    v13 = *(v7 + 8 * v11);
    v14 = *(v7 + 8 * v9);
    v15 = v14 - v13;
    if (__OFSUB__(v14, v13))
    {
      goto LABEL_36;
    }

    ++v10;
    ++v9;
    v11 = v6;
    if (v15 != 1)
    {
      v16 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_38;
      }

      v17 = v15 - 1;
      if (__OFSUB__(v15, 1))
      {
        goto LABEL_39;
      }

      v28 = v3;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
      }

      v19 = *(v8 + 2);
      v18 = *(v8 + 3);
      if (v19 >= v18 >> 1)
      {
        v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v8);
      }

      *(v8 + 2) = v19 + 1;
      v20 = &v8[24 * v19];
      *(v20 + 4) = v16;
      *(v20 + 5) = v17;
      *(v20 + 6) = v5;
      v9 = v12;
      v3 = v28;
      goto LABEL_3;
    }
  }

  if (__OFSUB__(a1, 1))
  {
    goto LABEL_37;
  }

  v21 = *(v3 + 8 * v2 + 24);
  if (v21 == a1 - 1)
  {
    return v8;
  }

  v3 = v21 + 1;
  if (__OFADD__(v21, 1))
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v22 = __OFSUB__(a1, v21);
  v23 = a1 - v21;
  if (v22)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  a1 = v23 - 1;
  if (__OFSUB__(v23, 1))
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (swift_isUniquelyReferenced_nonNull_native())
  {
    goto LABEL_28;
  }

LABEL_43:
  v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
LABEL_28:
  v25 = *(v8 + 2);
  v24 = *(v8 + 3);
  if (v25 >= v24 >> 1)
  {
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1, v8);
  }

  *(v8 + 2) = v25 + 1;
  v26 = &v8[24 * v25];
  *(v26 + 4) = v3;
  *(v26 + 5) = a1;
  *(v26 + 6) = v2;
  return v8;
}

void specialized static AFMUtilities.fillCacheHoles(cacheBuffer:bytesPerElement:currentCacheSize:holeIndices:stridePerSequence:sequentialElementsPerToken:numSequencesPerToken:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v87 = a5;
  v13 = type metadata accessor for NDArray.Buffer.Allocation();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  BaseAddress = &v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  NDArray.Buffer.allocation.getter();
  v18 = (*(v14 + 88))(BaseAddress, v13);
  if (v18 == *MEMORY[0x277D36AF8])
  {
    (*(v14 + 96))(BaseAddress, v13);
    v19 = *BaseAddress;
    v20 = NDArray.Bytes.buffer.getter();
    if (a7 < 1 || !*(a4 + 16))
    {

      return;
    }

    v22 = v20;
    v84 = v19;
    v23 = v21;
    v24 = specialized static AFMUtilities.makeCacheFillPlan(currentCacheSize:holeIndices:)(a3, a4);
    v25 = *(v24 + 2);
    if (!v25)
    {
LABEL_26:

      return;
    }

    v26 = 0;
    a3 = v23 - v22;
    v85 = v24 + 48;
    v86 = a7;
    while (2)
    {
      v27 = v26 * v87;
      if ((v26 * v87) >> 64 == (v26 * v87) >> 63)
      {
        v28 = 0;
        v88 = v26 + 1;
        v7 = v85;
        do
        {
          if (v28 >= *(v24 + 2))
          {
            __break(1u);
LABEL_83:
            __break(1u);
LABEL_84:
            __break(1u);
LABEL_85:
            __break(1u);
LABEL_86:
            __break(1u);
LABEL_87:
            __break(1u);
LABEL_88:
            __break(1u);
LABEL_89:
            __break(1u);
LABEL_90:
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
            goto LABEL_95;
          }

          v29 = *(v7 - 16);
          v30 = v29 * a6;
          if ((v29 * a6) >> 64 != (v29 * a6) >> 63)
          {
            goto LABEL_83;
          }

          v31 = v27 + v30;
          if (__OFADD__(v27, v30))
          {
            goto LABEL_84;
          }

          v32 = *v7 * a6;
          if ((*v7 * a6) >> 64 != v32 >> 63)
          {
            goto LABEL_85;
          }

          v33 = v31 - v32;
          if (__OFSUB__(v31, v32))
          {
            goto LABEL_86;
          }

          v34 = *(v7 - 8);
          v35 = v34 * a6;
          if ((v34 * a6) >> 64 != (v34 * a6) >> 63)
          {
            goto LABEL_87;
          }

          v36 = v33 * a2;
          if ((v33 * a2) >> 64 != (v33 * a2) >> 63)
          {
            goto LABEL_88;
          }

          v37 = __OFADD__(v33, v35);
          v38 = v33 + v35;
          if (v37)
          {
            goto LABEL_89;
          }

          a4 = v38 * a2;
          if ((v38 * a2) >> 64 != (v38 * a2) >> 63)
          {
            goto LABEL_90;
          }

          v39 = v31 * a2;
          if ((v31 * a2) >> 64 != (v31 * a2) >> 63)
          {
            goto LABEL_91;
          }

          v37 = __OFADD__(v31, v35);
          v40 = v31 + v35;
          if (v37)
          {
            goto LABEL_92;
          }

          BaseAddress = v40 * a2;
          if ((v40 * a2) >> 64 != (v40 * a2) >> 63)
          {
            goto LABEL_93;
          }

          if (!v22)
          {
            goto LABEL_124;
          }

          if (a3 < a4)
          {
            goto LABEL_133;
          }

          if (a3 < BaseAddress)
          {
            goto LABEL_135;
          }

          if ((v35 * a2) >> 64 != (v35 * a2) >> 63)
          {
            goto LABEL_94;
          }

          ++v28;
          a4 = v24;
          memmove((v22 + v36), (v22 + v39), v35 * a2);
          v24 = a4;
          v7 += 24;
        }

        while (v25 != v28);
        v26 = v88;
        if (v88 != v86)
        {
          continue;
        }

        goto LABEL_26;
      }

      break;
    }

LABEL_121:
    __break(1u);
LABEL_122:
    __break(1u);
LABEL_123:
    __break(1u);
LABEL_124:
    if (a4 > 0)
    {
      a3 = 0;
LABEL_133:
      v90[0] = 0;
      v90[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(38);

      v90[0] = 0xD000000000000013;
      v90[1] = 0x8000000220AFDFB0;
      v89 = a4;
      v77 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x223D8E780](v77);

      MEMORY[0x223D8E780](0x20666F2074756F20, 0xEF2073646E756F62);
      v89 = a3;
    }

    else if (BaseAddress >= 1)
    {
      a3 = 0;
LABEL_135:
      v90[0] = 0;
      v90[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(33);

      strcpy(v90, "source offset ");
      HIBYTE(v90[1]) = -18;
      v89 = BaseAddress;
      v78 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x223D8E780](v78);

      MEMORY[0x223D8E780](0x20666F2074756F20, 0xEF2073646E756F62);
      v89 = a3;
    }

    else
    {
      __break(1u);
LABEL_127:
      if (v7 > 0)
      {
        v22 = 0;
LABEL_137:
        v90[0] = 0;
        v90[1] = 0xE000000000000000;
        _StringGuts.grow(_:)(38);

        v90[0] = 0xD000000000000013;
        v90[1] = 0x8000000220AFDFB0;
        v89 = v7;
        v79 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x223D8E780](v79);

        MEMORY[0x223D8E780](0x20666F2074756F20, 0xEF2073646E756F62);
        v89 = v22;
      }

      else
      {
        if (a3 >= 1)
        {
          v22 = 0;
LABEL_139:
          v90[0] = 0;
          v90[1] = 0xE000000000000000;
          _StringGuts.grow(_:)(33);

          strcpy(v90, "source offset ");
          HIBYTE(v90[1]) = -18;
          v89 = a3;
        }

        else
        {
          __break(1u);
LABEL_130:
          v90[0] = 0;
          v90[1] = 0xE000000000000000;
          _StringGuts.grow(_:)(33);

          strcpy(v90, "source offset ");
          HIBYTE(v90[1]) = -18;
          v89 = a4;
        }

        v80 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x223D8E780](v80);

        MEMORY[0x223D8E780](0x20666F2074756F20, 0xEF2073646E756F62);
        v89 = v22;
      }
    }

    v81 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x223D8E780](v81);

    goto LABEL_142;
  }

  if (v18 == *MEMORY[0x277D36B00])
  {
    (*(v14 + 96))(BaseAddress, v13);
    v41 = *BaseAddress;
    IOSurfaceLock(*BaseAddress, 0, 0);
    BaseAddress = IOSurfaceGetBaseAddress(v41);
    AllocSize = IOSurfaceGetAllocSize(v41);
    if (a7 > 0 && *(a4 + 16))
    {
      v22 = AllocSize;
      v83 = v41;
      v43 = specialized static AFMUtilities.makeCacheFillPlan(currentCacheSize:holeIndices:)(a3, a4);
      a4 = v43;
      v88 = *(v43 + 2);
      if (v88)
      {
        v44 = 0;
        v84 = v43 + 48;
        v86 = a7;
LABEL_32:
        v45 = v44 * v87;
        if ((v44 * v87) >> 64 != (v44 * v87) >> 63)
        {
          goto LABEL_123;
        }

        v46 = 0;
        v85 = v44 + 1;
        v47 = v84;
        while (v46 < *(a4 + 16))
        {
          v48 = *(v47 - 2);
          v49 = v48 * a6;
          if ((v48 * a6) >> 64 != (v48 * a6) >> 63)
          {
            goto LABEL_98;
          }

          v50 = v45 + v49;
          if (__OFADD__(v45, v49))
          {
            goto LABEL_100;
          }

          v51 = *v47 * a6;
          if ((*v47 * a6) >> 64 != v51 >> 63)
          {
            goto LABEL_102;
          }

          v52 = v50 - v51;
          if (__OFSUB__(v50, v51))
          {
            goto LABEL_104;
          }

          v53 = *(v47 - 1);
          v54 = v53 * a6;
          if ((v53 * a6) >> 64 != (v53 * a6) >> 63)
          {
            goto LABEL_106;
          }

          v55 = v52 * a2;
          if ((v52 * a2) >> 64 != (v52 * a2) >> 63)
          {
            goto LABEL_108;
          }

          v37 = __OFADD__(v52, v54);
          v56 = v52 + v54;
          if (v37)
          {
            goto LABEL_110;
          }

          v7 = v56 * a2;
          if ((v56 * a2) >> 64 != (v56 * a2) >> 63)
          {
            goto LABEL_112;
          }

          v57 = v50 * a2;
          if ((v50 * a2) >> 64 != (v50 * a2) >> 63)
          {
            goto LABEL_114;
          }

          v37 = __OFADD__(v50, v54);
          v58 = v50 + v54;
          if (v37)
          {
            goto LABEL_116;
          }

          a3 = v58 * a2;
          if ((v58 * a2) >> 64 != (v58 * a2) >> 63)
          {
            goto LABEL_118;
          }

          if (!BaseAddress)
          {
            goto LABEL_127;
          }

          if (v22 < v7)
          {
            goto LABEL_137;
          }

          if (v22 < a3)
          {
            goto LABEL_139;
          }

          if ((v54 * a2) >> 64 != (v54 * a2) >> 63)
          {
            goto LABEL_120;
          }

          ++v46;
          memmove((BaseAddress + v55), (BaseAddress + v57), v54 * a2);
          v47 += 24;
          if (v88 == v46)
          {
            v44 = v85;
            if (v85 != v86)
            {
              goto LABEL_32;
            }

            goto LABEL_52;
          }
        }

LABEL_96:
        __break(1u);
LABEL_97:
        __break(1u);
LABEL_98:
        __break(1u);
LABEL_99:
        __break(1u);
LABEL_100:
        __break(1u);
LABEL_101:
        __break(1u);
LABEL_102:
        __break(1u);
LABEL_103:
        __break(1u);
LABEL_104:
        __break(1u);
LABEL_105:
        __break(1u);
LABEL_106:
        __break(1u);
LABEL_107:
        __break(1u);
LABEL_108:
        __break(1u);
LABEL_109:
        __break(1u);
LABEL_110:
        __break(1u);
LABEL_111:
        __break(1u);
LABEL_112:
        __break(1u);
LABEL_113:
        __break(1u);
LABEL_114:
        __break(1u);
LABEL_115:
        __break(1u);
LABEL_116:
        __break(1u);
LABEL_117:
        __break(1u);
LABEL_118:
        __break(1u);
LABEL_119:
        __break(1u);
LABEL_120:
        __break(1u);
        goto LABEL_121;
      }

LABEL_52:

      v41 = v83;
    }

    IOSurfaceUnlock(v41, 0, 0);

    return;
  }

  if (v18 != *MEMORY[0x277D36AF0])
  {
LABEL_142:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  (*(v14 + 96))(BaseAddress, v13);
  v59 = *BaseAddress;
  BaseAddress = [swift_unknownObjectRetain() contents];
  v60 = [(__IOSurface *)v59 length];
  if (a7 < 1 || !*(a4 + 16))
  {
LABEL_81:
    swift_unknownObjectRelease();
    return;
  }

  v22 = v60;
  v61 = specialized static AFMUtilities.makeCacheFillPlan(currentCacheSize:holeIndices:)(a3, a4);
  a3 = v61;
  v88 = *(v61 + 2);
  if (!v88)
  {

    goto LABEL_81;
  }

  v62 = 0;
  v83 = v59;
  v84 = v61 + 48;
  v86 = a7;
  while (2)
  {
    v63 = v62 * v87;
    if ((v62 * v87) >> 64 != (v62 * v87) >> 63)
    {
      goto LABEL_122;
    }

    v64 = 0;
    v85 = v62 + 1;
    v65 = v84;
    do
    {
      if (v64 >= *(a3 + 16))
      {
LABEL_95:
        __break(1u);
        goto LABEL_96;
      }

      v66 = *(v65 - 2);
      v67 = v66 * a6;
      if ((v66 * a6) >> 64 != (v66 * a6) >> 63)
      {
        goto LABEL_97;
      }

      v68 = v63 + v67;
      if (__OFADD__(v63, v67))
      {
        goto LABEL_99;
      }

      v69 = *v65 * a6;
      if ((*v65 * a6) >> 64 != v69 >> 63)
      {
        goto LABEL_101;
      }

      v70 = v68 - v69;
      if (__OFSUB__(v68, v69))
      {
        goto LABEL_103;
      }

      v71 = *(v65 - 1);
      v72 = v71 * a6;
      if ((v71 * a6) >> 64 != (v71 * a6) >> 63)
      {
        goto LABEL_105;
      }

      v73 = v70 * a2;
      if ((v70 * a2) >> 64 != (v70 * a2) >> 63)
      {
        goto LABEL_107;
      }

      v37 = __OFADD__(v70, v72);
      v74 = v70 + v72;
      if (v37)
      {
        goto LABEL_109;
      }

      v7 = v74 * a2;
      if ((v74 * a2) >> 64 != (v74 * a2) >> 63)
      {
        goto LABEL_111;
      }

      v75 = v68 * a2;
      if ((v68 * a2) >> 64 != (v68 * a2) >> 63)
      {
        goto LABEL_113;
      }

      v37 = __OFADD__(v68, v72);
      v76 = v68 + v72;
      if (v37)
      {
        goto LABEL_115;
      }

      a4 = v76 * a2;
      if ((v76 * a2) >> 64 != (v76 * a2) >> 63)
      {
        goto LABEL_117;
      }

      if (v22 < v7)
      {
        goto LABEL_137;
      }

      if (v22 < a4)
      {
        goto LABEL_130;
      }

      if ((v72 * a2) >> 64 != (v72 * a2) >> 63)
      {
        goto LABEL_119;
      }

      ++v64;
      memmove((BaseAddress + v73), (BaseAddress + v75), v72 * a2);
      v65 += 24;
    }

    while (v88 != v64);
    v62 = v85;
    if (v85 != v86)
    {
      continue;
    }

    break;
  }

  swift_unknownObjectRelease();
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v32 = a8;
  v41 = a1;
  v42 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x28223BE20](a1, a2);
  v43 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v45 = *(AssociatedTypeWitness - 8);
  v13 = MEMORY[0x28223BE20](AssociatedTypeWitness, v12);
  v15 = &v30 - v14;
  MEMORY[0x28223BE20](v13, v16);
  v39 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_getAssociatedTypeWitness();
  v33 = *(v18 - 8);
  v34 = v18;
  MEMORY[0x28223BE20](v18, v19);
  v21 = &v30 - v20;
  v22 = dispatch thunk of Collection.count.getter();
  if (!v22)
  {
    return static Array._allocateUninitialized(_:)();
  }

  v44 = v22;
  v48 = ContiguousArray.init()();
  v35 = type metadata accessor for ContiguousArray();
  ContiguousArray.reserveCapacity(_:)(v44);
  result = dispatch thunk of Collection.startIndex.getter();
  if ((v44 & 0x8000000000000000) == 0)
  {
    v30 = v10;
    v31 = a5;
    v24 = 0;
    v36 = (v45 + 16);
    v37 = (v45 + 8);
    v38 = v8;
    while (!__OFADD__(v24, 1))
    {
      v45 = v24 + 1;
      v25 = dispatch thunk of Collection.subscript.read();
      v26 = v15;
      v27 = v15;
      v28 = AssociatedTypeWitness;
      (*v36)(v26);
      v25(v47, 0);
      v29 = v46;
      v41(v27, v43);
      if (v29)
      {
        (*v37)(v27, v28);
        (*(v33 + 8))(v21, v34);

        return (*(v30 + 32))(v32, v43, v31);
      }

      v46 = 0;
      (*v37)(v27, v28);
      ContiguousArray.append(_:)();
      result = dispatch thunk of Collection.formIndex(after:)();
      ++v24;
      v15 = v27;
      if (v45 == v44)
      {
        (*(v33 + 8))(v21, v34);
        return v48;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t specialized Sequence.contains(where:)(uint64_t (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = (a1)(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t _s24TokenGenerationInference12AFMUtilitiesV14validateTokens_15vocabularyCount16featureProjectoryx_SiAA016ODIEImageFeatureJ0CtKSlRzs5Int32V7ElementRtzlFZSayAJG_Tt2g5(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    v4 = (result + 32);
    while (1)
    {
      v6 = *v4++;
      v5 = v6;
      if (v6 != -1)
      {
        if ((v5 & 0x80000000) != 0)
        {
          break;
        }

        if (a2 < 0xFFFFFFFF80000000)
        {
          __break(1u);
LABEL_14:
          __break(1u);
          return result;
        }

        if (a2 > 0x7FFFFFFF)
        {
          goto LABEL_14;
        }

        if (v5 >= a2)
        {
          break;
        }
      }

      if (!--v3)
      {
        return result;
      }
    }

    v7 = *(a3 + 16);
    if (!v7 || (swift_unknownObjectRetain(), findEmbeddingLocation(forToken:in:)(v5, v7), v9 = v8, result = swift_unknownObjectRelease(), (v9 & 1) != 0))
    {
      lazy protocol witness table accessor for type DecoderModelError and conformance DecoderModelError();
      swift_allocError();
      *v10 = v5;
      *(v10 + 8) = 0;
      *(v10 + 16) = 0;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t specialized closure #1 in static AFMUtilities.makeTensors<A>(for:descriptorProvider:wrapping:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v51 = a1;
  v45 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s4ODIE15ArrayDescriptorVSgMd, &_s4ODIE15ArrayDescriptorVSgMR);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v43 - v10;
  v50 = type metadata accessor for ArrayDescriptor();
  v46 = *(v50 - 8);
  v13 = MEMORY[0x28223BE20](v50, v12);
  v47 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v15);
  v49 = &v43 - v16;
  v17 = type metadata accessor for NDArray.Buffer();
  v18 = *(v17 - 8);
  v20 = MEMORY[0x28223BE20](v17, v19);
  v44 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20, v22);
  v25 = &v43 - v24;
  MEMORY[0x28223BE20](v23, v26);
  v28 = &v43 - v27;
  if (*(a4 + 16) && (v29 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3), (v30 & 1) != 0))
  {
    v31 = *(a4 + 56) + *(v18 + 72) * v29;
    v32 = a3;
    v33 = *(v18 + 16);
    v33(v25, v31, v17);
    v34 = *(v18 + 32);
    v53 = v28;
    v56 = v17;
    v34(v28, v25, v17);
    v52 = a2;
    v48 = v32;
    FunctionDescriptor.findArrayDescriptor(of:)(a2, v32, v11);
    v35 = v46;
    v36 = v50;
    if ((*(v46 + 48))(v11, 1, v50) != 1)
    {
      v37 = v49;
      (*(v35 + 32))(v49, v11, v36);
      (*(v35 + 16))(v47, v37, v36);
      v33(v44, v53, v56);
      type metadata accessor for NDArray();
      swift_allocObject();
      v38 = v48;

      v39 = NDArray.init(descriptor:buffer:)();
      v40 = v51;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v54 = *v40;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v39, v52, v38, isUniquelyReferenced_nonNull_native);

      *v40 = v54;
      (*(v35 + 8))(v37, v36);
      return (*(v18 + 8))(v53, v56);
    }

    outlined destroy of [Int](v11, &_s4ODIE15ArrayDescriptorVSgMd, &_s4ODIE15ArrayDescriptorVSgMR);
    v54 = 0;
    v55 = 0xE000000000000000;
    _StringGuts.grow(_:)(46);

    v54 = 0xD00000000000002CLL;
    v55 = 0x8000000220AFE0B0;
    MEMORY[0x223D8E780](v52, v48);
  }

  else
  {
    v54 = 0;
    v55 = 0xE000000000000000;
    _StringGuts.grow(_:)(35);

    v54 = 0xD000000000000021;
    v55 = 0x8000000220AFE080;
    MEMORY[0x223D8E780](a2, a3);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  v61 = a1;
  v65 = a5;
  v8 = type metadata accessor for FunctionDescriptor();
  v54 = *(v8 - 8);
  v55 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s4ODIE15ArrayDescriptorVSgMd, &_s4ODIE15ArrayDescriptorVSgMR);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v53 = &v50 - v14;
  v60 = type metadata accessor for ArrayDescriptor();
  v56 = *(v60 - 8);
  v16 = MEMORY[0x28223BE20](v60, v15);
  v57 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v18);
  v58 = &v50 - v19;
  v59 = type metadata accessor for NDArray.Buffer();
  v20 = *(v59 - 8);
  v22 = MEMORY[0x28223BE20](v59, v21);
  v52 = &v50 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22, v24);
  v27 = &v50 - v26;
  MEMORY[0x28223BE20](v25, v28);
  v30 = &v50 - v29;
  if (*(a4 + 16) && (v31 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3), (v32 & 1) != 0))
  {
    v33 = *(a4 + 56) + v20[9] * v31;
    v34 = v20[2];
    v35 = v59;
    v34(v27, v33, v59);
    v36 = v20[4];
    v51 = v20;
    v37 = v30;
    v38 = v27;
    v39 = v35;
    v36(v30, v38, v35);
    Function.descriptor.getter();
    v40 = v53;
    v62 = a2;
    v65 = a3;
    FunctionDescriptor.findArrayDescriptor(of:)(a2, a3, v53);
    (*(v54 + 8))(v11, v55);
    v41 = v56;
    v42 = v60;
    if ((*(v56 + 48))(v40, 1, v60) != 1)
    {
      v43 = v58;
      (*(v41 + 32))(v58, v40, v42);
      (*(v41 + 16))(v57, v43, v42);
      v34(v52, v37, v39);
      type metadata accessor for NDArray();
      swift_allocObject();
      v44 = v65;

      v45 = NDArray.init(descriptor:buffer:)();
      v46 = v39;
      v47 = v61;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v63 = *v47;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v45, v62, v44, isUniquelyReferenced_nonNull_native);

      *v47 = v63;
      (*(v41 + 8))(v43, v42);
      return (v51[1])(v37, v46);
    }

    outlined destroy of [Int](v40, &_s4ODIE15ArrayDescriptorVSgMd, &_s4ODIE15ArrayDescriptorVSgMR);
    v63 = 0;
    v64 = 0xE000000000000000;
    _StringGuts.grow(_:)(46);

    v63 = 0xD00000000000002CLL;
    v64 = 0x8000000220AFE0B0;
    MEMORY[0x223D8E780](v62, v65);
  }

  else
  {
    v63 = 0;
    v64 = 0xE000000000000000;
    _StringGuts.grow(_:)(35);

    v63 = 0xD000000000000021;
    v64 = 0x8000000220AFE080;
    MEMORY[0x223D8E780](a2, a3);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized Sequence.reduce<A>(into:_:)(uint64_t result, void (*a2)(uint64_t *, void *, __n128), uint64_t a3, uint64_t a4)
{
  v10 = result;
  v5 = *(a4 + 16);
  if (v5)
  {
    for (i = (a4 + 40); ; i += 2)
    {
      v8 = *i;
      v9[0] = *(i - 1);
      v9[1] = v8;

      (a2)(&v10, v9);
      if (v4)
      {
        break;
      }

      if (!--v5)
      {
        return v10;
      }
    }
  }

  return result;
}

char *one-time initialization function for allNames()
{
  result = specialized Array.append<A>(contentsOf:)(outlined read-only object #0 of one-time initialization function for allOutputNames);
  static V5DecodeOperandNames.allNames = &outlined read-only object #0 of one-time initialization function for inputNames;
  return result;
}

{
  result = specialized Array.append<A>(contentsOf:)(outlined read-only object #0 of one-time initialization function for allOutputNames);
  static V7DecodeOperandNames.allNames = &outlined read-only object #0 of one-time initialization function for inputNames;
  return result;
}

uint64_t AFMV5DecodeFunctionEngine.contextLength.getter()
{
  v0 = type metadata accessor for Dimension();
  v1 = *(v0 - 8);
  v3 = MEMORY[0x28223BE20](v0, v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3, v6);
  v25 = &v24 - v7;
  v8 = type metadata accessor for FunctionDescriptor();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ArrayDescriptor();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  Function.descriptor.getter();
  FunctionDescriptor.arrayDescriptor(of:)(0xD000000000000018, 0x8000000220AFA5D0, v17);
  (*(v9 + 8))(v12, v8);
  v18 = ArrayDescriptor.shape.getter();
  (*(v14 + 8))(v17, v13);
  if (*(v18 + 16) < 2uLL)
  {
    __break(1u);
  }

  else
  {
    v20 = *(v1 + 16);
    v21 = v25;
    v20(v25, v18 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72), v0);

    v20(v5, v21, v0);
    v22 = (*(v1 + 88))(v5, v0);
    v19 = *(v1 + 8);
    if (v22 == *MEMORY[0x277D36B40])
    {
      v19(v21, v0);
      (*(v1 + 96))(v5, v0);
      return *v5;
    }
  }

  v19(v5, v0);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t AFMV5DecodeFunctionEngine.queryLength.getter()
{
  v0 = type metadata accessor for Dimension();
  v1 = *(v0 - 8);
  v3 = MEMORY[0x28223BE20](v0, v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3, v6);
  v25 = &v24 - v7;
  v8 = type metadata accessor for FunctionDescriptor();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ArrayDescriptor();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  Function.descriptor.getter();
  FunctionDescriptor.arrayDescriptor(of:)(0xD000000000000010, 0x8000000220AFA5B0, v17);
  (*(v9 + 8))(v12, v8);
  v18 = ArrayDescriptor.shape.getter();
  (*(v14 + 8))(v17, v13);
  if (*(v18 + 16) < 2uLL)
  {
    __break(1u);
  }

  else
  {
    v20 = *(v1 + 16);
    v21 = v25;
    v20(v25, v18 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72), v0);

    v20(v5, v21, v0);
    v22 = (*(v1 + 88))(v5, v0);
    v19 = *(v1 + 8);
    if (v22 == *MEMORY[0x277D36B40])
    {
      v19(v21, v0);
      (*(v1 + 96))(v5, v0);
      return *v5;
    }
  }

  v19(v5, v0);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t AFMV5DecodeFunctionEngine.vocabularyCount.getter()
{
  v0 = type metadata accessor for Dimension();
  v1 = *(v0 - 8);
  v3 = MEMORY[0x28223BE20](v0, v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3, v6);
  v25 = &v24 - v7;
  v8 = type metadata accessor for FunctionDescriptor();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ArrayDescriptor();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  Function.descriptor.getter();
  FunctionDescriptor.arrayDescriptor(of:)(0x6465626D655F6E69, 0xED000073676E6964, v17);
  (*(v9 + 8))(v12, v8);
  v18 = ArrayDescriptor.shape.getter();
  (*(v14 + 8))(v17, v13);
  if (*(v18 + 16))
  {
    v20 = *(v1 + 16);
    v21 = v25;
    v20(v25, v18 + ((*(v1 + 80) + 32) & ~*(v1 + 80)), v0);

    v20(v5, v21, v0);
    v22 = (*(v1 + 88))(v5, v0);
    v19 = *(v1 + 8);
    if (v22 == *MEMORY[0x277D36B40])
    {
      v19(v21, v0);
      (*(v1 + 96))(v5, v0);
      return *v5;
    }
  }

  else
  {
    __break(1u);
  }

  v19(v5, v0);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t protocol witness for AFMDecodeFunctionDescriptor.computesLogits.getter in conformance AFMV5DecodeFunctionEngine()
{
  v0 = type metadata accessor for FunctionDescriptor();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = Function.descriptor.getter();
  v6 = MEMORY[0x223D8E2D0](v5);
  (*(v1 + 8))(v4, v0);
  v10[0] = 0x69676F6C5F74756FLL;
  v10[1] = 0xEA00000000007374;
  v9 = v10;
  LOBYTE(v0) = specialized Sequence.contains(where:)(_sSTsSQ7ElementRpzrlE8containsySbABFSbABXEfU_SaySSG_TG5TA_0, v8, v6);

  return v0 & 1;
}

uint64_t AFMV5DecodeFunctionEngine.makeIOTensors(wrapping:)(uint64_t a1)
{
  v2 = type metadata accessor for FunctionDescriptor();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  Function.descriptor.getter();
  v20 = a1;
  v21 = v6;
  v7 = specialized Sequence.reduce<A>(into:_:)(MEMORY[0x277D84F98], partial apply for specialized closure #1 in static AFMUtilities.makeTensors<A>(for:descriptorProvider:wrapping:), v19, &outlined read-only object #0 of one-time initialization function for inputNames);
  v8 = *(v3 + 8);
  v8(v6, v2);
  v9 = Function.descriptor.getter();
  v10 = MEMORY[0x223D8E2D0](v9);
  v8(v6, v2);
  v22[0] = 0x69676F6C5F74756FLL;
  v22[1] = 0xEA00000000007374;
  v18 = v22;
  v11 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v17, v10);

  if (v11)
  {
    v12 = &outlined read-only object #0 of one-time initialization function for extendOutputNames;
  }

  else
  {
    v12 = &outlined read-only object #0 of one-time initialization function for promptOutputNames;
  }

  Function.descriptor.getter();
  v15 = a1;
  v16 = v6;
  specialized Sequence.reduce<A>(into:_:)(MEMORY[0x277D84F98], closure #1 in static AFMUtilities.makeTensors<A>(for:descriptorProvider:wrapping:)specialized partial apply, v14, v12);

  v8(v6, v2);
  return v7;
}

void *closure #1 in AFMV5DecodeFunctionEngine.callAsFunction<A>(query:step:holeIndices:embeddingsTable:buffers:gatherFunctions:featureProjector:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[1] = a2;
  v5 = *(a4 + 8);
  v6 = type metadata accessor for EnumeratedSequence();
  MEMORY[0x28223BE20](v6, v7);
  v8 = type metadata accessor for EnumeratedSequence.Iterator();
  v19 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v9);
  v11 = v18 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s4ODIE25UnsafeMutableArrayPointerVys5Int32VGMd, &_s4ODIE25UnsafeMutableArrayPointerVys5Int32VGMR);
  result = UnsafeMutableArrayPointer.contents.getter();
  if (result)
  {
    if (v13 < 0)
    {
      __break(1u);
      return result;
    }

    if (v13)
    {
      bzero(result, 4 * v13);
    }
  }

  MEMORY[0x223D8E850](a3, v5);
  EnumeratedSequence.makeIterator()();
  EnumeratedSequence.Iterator.next()();
  if (v22)
  {
    v14 = v20;
    v15 = v21;
    do
    {

      v16 = UnsafeMutableArrayPointer.contents.getter();
      if (v15 == -1)
      {
        v17 = 0;
      }

      else
      {
        v17 = v15;
      }

      *(v16 + 4 * v14) = v17;
      EnumeratedSequence.Iterator.next()();
      v14 = v20;
      v15 = v21;
    }

    while (v22);
  }

  return (*(v19 + 8))(v11, v8);
}

void closure #1 in static AFMV5DecodeFunctionEngine.setRelativePositions(_:queryLength:contextLength:step:tokenCount:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s4ODIE25UnsafeMutableArrayPointerVys7Float16VGMd, &_s4ODIE25UnsafeMutableArrayPointerVys7Float16VGMR);
  v7 = UnsafeMutableArrayPointer.contents.getter();
  if (!v7)
  {
    goto LABEL_7;
  }

  if (v8 < 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  if (v8)
  {
    v9 = v7;
    v10 = v8;
    memset_pattern16(v7, &unk_220AE5280, 2 * v8);
    v8 = v10;
    v7 = v9;
  }

  F16Span = swift_helpers::makeF16Span(v7, v8);
  cgm::token_generation_inference::ajax::utils::setRelativePositions(F16Span, v12, a2, a3, a4, 0);
}

double protocol witness for AFMDecodeFunctionEngine.allOperandNames.getter in conformance AFMV5DecodeFunctionEngine()
{
  if (one-time initialization token for allNames != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t protocol witness for AFMDecodeFunctionEngine.callAsFunction<A>(query:step:holeIndices:embeddingsTable:buffers:gatherFunctions:featureProjector:) in conformance AFMV5DecodeFunctionEngine(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = *v8;
  v18 = swift_task_alloc();
  *(v9 + 16) = v18;
  *v18 = v9;
  v18[1] = protocol witness for SamplingDecoder.decodeNextChunk() in conformance TwoStageSpeculativeDecoder;

  return specialized AFMV5DecodeFunctionEngine.callAsFunction<A>(query:step:holeIndices:embeddingsTable:buffers:gatherFunctions:featureProjector:)(a1, a2, a3, a4, a5, a7, v17, a8);
}

unint64_t instantiation function for generic protocol witness table for AFMV5DecodeFunctionEngine(uint64_t a1)
{
  result = lazy protocol witness table accessor for type AFMV5DecodeFunctionEngine and conformance AFMV5DecodeFunctionEngine();
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type AFMV5DecodeFunctionEngine and conformance AFMV5DecodeFunctionEngine();
  *(a1 + 8) = result;
  return result;
}

uint64_t specialized closure #1 in Sequence<>.contains(_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t specialized AFMV5DecodeFunctionEngine.callAsFunction<A>(query:step:holeIndices:embeddingsTable:buffers:gatherFunctions:featureProjector:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a8;
  v8[10] = v10;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  v8[3] = a2;
  v8[4] = a3;
  v8[2] = a1;
  return MEMORY[0x2822009F8](specialized AFMV5DecodeFunctionEngine.callAsFunction<A>(query:step:holeIndices:embeddingsTable:buffers:gatherFunctions:featureProjector:), 0, 0);
}

void specialized AFMV5DecodeFunctionEngine.callAsFunction<A>(query:step:holeIndices:embeddingsTable:buffers:gatherFunctions:featureProjector:)()
{
  v1 = *(*(v0 + 56) + 16);
  if (v1 && [v1 imageCount])
  {
    goto LABEL_10;
  }

  v2 = *(v0 + 40);
  v3 = AFMV5DecodeFunctionEngine.makeIOTensors(wrapping:)(*(v0 + 48));
  v5 = v4;
  *(v0 + 88) = v4;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v2, 0x6465626D655F6E69, 0xED000073676E6964, isUniquelyReferenced_nonNull_native);
  v7 = v3;
  *(v0 + 96) = v3;
  if (!*(v3 + 16))
  {
    __break(1u);
    goto LABEL_17;
  }

  v8 = specialized __RawDictionaryStorage.find<A>(_:)(0x706574735F6E69, 0xE700000000000000);
  if ((v9 & 1) == 0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v10 = *(v0 + 24);
  *(v0 + 104) = *(*(v3 + 56) + 8 * v8);
  if (v10 < 0xFFFFFFFF80000000)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v10 > 0x7FFFFFFF)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v29 = v5;
  v12 = *(v0 + 72);
  v11 = *(v0 + 80);
  v13 = *(v0 + 56);
  *(v0 + 136) = v10;

  v14 = MEMORY[0x277D849A8];
  NDArray.subscript.setter();
  v16 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(specialized implicit closure #2 in AFMGatherFunction.callAsFunction<A>(tokens:embeddingsTable:buffers:featureProjector:), 0, v12, v14, MEMORY[0x277D84A98], v11, MEMORY[0x277D84AC0], v15);
  v17 = AFMV5DecodeFunctionEngine.vocabularyCount.getter();
  _s24TokenGenerationInference12AFMUtilitiesV14validateTokens_15vocabularyCount16featureProjectoryx_SiAA016ODIEImageFeatureJ0CtKSlRzs5Int32V7ElementRtzlFZSayAJG_Tt2g5(v16, v17, v13);

  if (!*(v7 + 16))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v18 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000010, 0x8000000220AFA5B0);
  if ((v19 & 1) == 0)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v20 = *(v0 + 32);
  v21 = *(v0 + 16);
  *(v0 + 112) = *(*(v7 + 56) + 8 * v18);
  v22 = swift_task_alloc();
  *(v22 + 16) = *(v0 + 72);
  *(v22 + 32) = v21;

  _s4ODIE7NDArrayC29withUnsafeMutableArrayPointer2of_q_xm_q_AA0defG0VyxGq0_YKXEtq0_YKs5ErrorR0_r1_lF();

  if (*(v20 + 16))
  {
LABEL_10:
    _assertionFailure(_:_:file:line:flags:)();
    return;
  }

  if (!*(v7 + 16))
  {
    goto LABEL_22;
  }

  specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000018, 0x8000000220AFA5D0);
  if ((v23 & 1) == 0)
  {
LABEL_23:
    __break(1u);
    return;
  }

  v24 = *(v0 + 24);

  v25 = AFMV5DecodeFunctionEngine.queryLength.getter();
  AFMV5DecodeFunctionEngine.contextLength.getter();
  v26 = dispatch thunk of Collection.count.getter();
  v27 = swift_task_alloc();
  v27[2] = v24;
  v27[3] = v26;
  v27[4] = v25;
  _s4ODIE7NDArrayC29withUnsafeMutableArrayPointer2of_q_xm_q_AA0defG0VyxGq0_YKXEtq0_YKs5ErrorR0_r1_lF();

  v28 = swift_task_alloc();
  *(v0 + 120) = v28;
  *v28 = v0;
  v28[1] = specialized AFMV5DecodeFunctionEngine.callAsFunction<A>(query:step:holeIndices:embeddingsTable:buffers:gatherFunctions:featureProjector:);

  Function._run(inputs:outputs:)(v7, v29);
}

uint64_t specialized AFMV5DecodeFunctionEngine.callAsFunction<A>(query:step:holeIndices:embeddingsTable:buffers:gatherFunctions:featureProjector:)()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = specialized AFMV5DecodeFunctionEngine.callAsFunction<A>(query:step:holeIndices:embeddingsTable:buffers:gatherFunctions:featureProjector:);
  }

  else
  {
    v2 = specialized AFMV5DecodeFunctionEngine.callAsFunction<A>(query:step:holeIndices:embeddingsTable:buffers:gatherFunctions:featureProjector:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  if (*(*(v0 + 88) + 16) && (v1 = specialized __RawDictionaryStorage.find<A>(_:)(0x69676F6C5F74756FLL, 0xEA00000000007374), (v2 & 1) != 0))
  {
    v3 = *(*(*(v0 + 88) + 56) + 8 * v1);

    v4 = v3;
  }

  else
  {

    v4 = 0;
  }

  v5 = *(v0 + 8);

  return v5(v4);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t swift_helpers::makeF16Span(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  return result;
}

void cgm::token_generation_inference::ajax::utils::setRelativePositions(short float *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  memset(v6, 0, sizeof(v6));
  cgm::token_generation_inference::ajax::utils::setRelativePositions(a1, a2, a3, a4, a5, a6, v6);
  v7 = v6;
  std::vector<std::vector<signed char>>::__destroy_vector::operator()[abi:ne200100](&v7);
}

void sub_220A6A7D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<std::vector<signed char>>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

unint64_t lazy protocol witness table accessor for type DecoderModelError and conformance DecoderModelError()
{
  result = lazy protocol witness table cache variable for type DecoderModelError and conformance DecoderModelError;
  if (!lazy protocol witness table cache variable for type DecoderModelError and conformance DecoderModelError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DecoderModelError and conformance DecoderModelError);
  }

  return result;
}

void specialized closure #1 in static AFMUtilities.fillAbsolutePositions<A>(_:masks:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s4ODIE25UnsafeMutableArrayPointerVys6UInt16VGMd, &_s4ODIE25UnsafeMutableArrayPointerVys6UInt16VGMR);
  v3 = UnsafeMutableArrayPointer.contents.getter();
  if (v3)
  {
    if (v4 < 0)
    {
LABEL_24:
      __break(1u);
      return;
    }

    if (v4)
    {
      bzero(v3, 2 * v4);
    }
  }

  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = 0;
    v7 = a2 + 32;
    while (1)
    {
      v9 = v7 + 24 * v6;
      v10 = *(v9 + 8);
      v11 = *(v9 + 16);
      v12 = *(v11 + 16);
      if (v12)
      {
        break;
      }

      v17 = *(v9 + 8);
LABEL_17:
      v18 = UnsafeMutableArrayPointer.contents.getter();
      if (v17 <= 0)
      {
        v8 = 0;
      }

      else
      {
        if (v17 > 0x10000)
        {
          goto LABEL_23;
        }

        v8 = v17 - 1;
      }

      *(v18 + 2 * v6++) = v8;
      if (v6 == v5)
      {
        return;
      }
    }

    v13 = 0;
    v14 = (v11 + 32);
    do
    {
      v15 = *v14;
      v16 = __OFADD__(v13, v15);
      v13 += v15;
      if (v16)
      {
        __break(1u);
        goto LABEL_22;
      }

      ++v14;
      --v12;
    }

    while (v12);
    v17 = v10 + v13;
    if (!__OFADD__(v10, v13))
    {
      goto LABEL_17;
    }

LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }
}

void _s24TokenGenerationInference12AFMUtilitiesV24fillCausalMasksANELayout_10contentsOfy4ODIE7NDArrayC_xtSlRzAA0A4MaskV7ElementRtzlFZSayAJG_Tt1g5(uint64_t a1, uint64_t a2)
{
  v3 = *(NDArray.shape.getter() + 16);

  if (v3 < 4)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v4 = *(NDArray.shape.getter() + 16);

  if (v4 < 2)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (*(NDArray.strides.getter() + 16) < 4uLL)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v5 = *(a2 + 16);
  if (!v5)
  {
    goto LABEL_31;
  }

  v8 = *(a2 + 48);
  v6 = a2 + 48;
  v7 = v8;
  v10 = *(v6 - 16);
  v9 = *(v6 - 8);

  v11 = 1;
LABEL_6:
  v12 = v10 + v9;
  v13 = __OFADD__(v10, v9);
  v14 = (v6 + 24 * v11);
  while (v5 != v11)
  {
    if (v11 >= v5)
    {
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v15 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      goto LABEL_23;
    }

    if (v13)
    {
      goto LABEL_24;
    }

    v16 = *(v7 + 16);
    v17 = __OFADD__(v12, v16);
    v18 = v12 + v16;
    if (v17)
    {
      goto LABEL_25;
    }

    v10 = *(v14 - 2);
    v9 = *(v14 - 1);
    v19 = v10 + v9;
    if (__OFADD__(v10, v9))
    {
      goto LABEL_26;
    }

    v20 = *v14;
    v21 = *(*v14 + 16);
    v17 = __OFADD__(v19, v21);
    v22 = v19 + v21;
    if (v17)
    {
      goto LABEL_27;
    }

    ++v11;
    v14 += 3;
    if (v18 < v22)
    {

      v11 = v15;
      v7 = v20;
      goto LABEL_6;
    }
  }

  if (v13)
  {
    goto LABEL_32;
  }

  v23 = *(v7 + 16);

  if (!__OFADD__(v12, v23))
  {
    MEMORY[0x28223BE20](v24, v25);
    _s4ODIE7NDArrayC29withUnsafeMutableArrayPointer2of_q_xm_q_AA0defG0VyxGq0_YKXEtq0_YKs5ErrorR0_r1_lF();
    return;
  }

LABEL_33:
  __break(1u);
}

void specialized closure #2 in static AFMUtilities.fillCausalMasksANELayout<A>(_:contentsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = NDArray.byteCount.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s4ODIE25UnsafeMutableArrayPointerVys7Float16VGMd, &_s4ODIE25UnsafeMutableArrayPointerVys7Float16VGMR);
  v8 = UnsafeMutableArrayPointer.contents.getter();
  if (v7 < -1)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    return;
  }

  if (v8 && (v7 + 1) >= 3)
  {
    memset_pattern16(v8, &unk_220AE5280, 2 * (v7 / 2));
  }

  if (a3 < 0)
  {
    goto LABEL_35;
  }

  if (a3)
  {
    v9 = 0;
    v10 = *(a5 + 16);
    v23 = a5 + 48;
    while (1)
    {
      v11 = v9 * a4;
      if ((v9 * a4) >> 64 != (v9 * a4) >> 63)
      {
        break;
      }

      if (v10)
      {
        v12 = 0;
        v13 = v23;
        while (1)
        {
          v15 = *(v13 - 16);
          v14 = *(v13 - 8);
          v16 = v15 + v14;
          if (__OFADD__(v15, v14))
          {
            break;
          }

          v17 = *(*v13 + 16);
          if (__OFADD__(v16, v17))
          {
            goto LABEL_28;
          }

          if (v9 < (v16 + v17) && v9 >= v15)
          {
            if (v9 < v16)
            {
              goto LABEL_24;
            }

            v19 = __OFSUB__(v9, v15);
            v20 = v9 - v15;
            if (v19)
            {
              goto LABEL_30;
            }

            v19 = __OFSUB__(v20, v14);
            v21 = v20 - v14;
            if (v19)
            {
              goto LABEL_31;
            }

            if (v21 >= v17)
            {
              goto LABEL_32;
            }

            if (*(*v13 + v21 + 32))
            {
LABEL_24:
              v22 = UnsafeMutableArrayPointer.contents.getter();
              if (__OFADD__(v11, v12))
              {
                goto LABEL_29;
              }

              *(v22 + 2 * (v11 + v12)) = 0;
            }
          }

          ++v12;
          v13 += 24;
          if (v10 == v12)
          {
            goto LABEL_8;
          }
        }

        __break(1u);
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
        break;
      }

LABEL_8:
      if (++v9 == a3)
      {
        return;
      }
    }

    __break(1u);
    goto LABEL_34;
  }
}

uint64_t AFMV7DecodeFunctionEngine.contextLength.getter()
{
  v0 = type metadata accessor for Dimension();
  v1 = *(v0 - 8);
  v3 = MEMORY[0x28223BE20](v0, v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3, v6);
  v25 = &v24 - v7;
  v8 = type metadata accessor for FunctionDescriptor();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ArrayDescriptor();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  Function.descriptor.getter();
  FunctionDescriptor.arrayDescriptor(of:)(0x6D5F6C6173756163, 0xEB000000006B7361, v17);
  (*(v9 + 8))(v12, v8);
  v18 = ArrayDescriptor.shape.getter();
  (*(v14 + 8))(v17, v13);
  if (*(v18 + 16) < 2uLL)
  {
    __break(1u);
  }

  else
  {
    v20 = *(v1 + 16);
    v21 = v25;
    v20(v25, v18 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72), v0);

    v20(v5, v21, v0);
    v22 = (*(v1 + 88))(v5, v0);
    v19 = *(v1 + 8);
    if (v22 == *MEMORY[0x277D36B40])
    {
      v19(v21, v0);
      (*(v1 + 96))(v5, v0);
      return *v5;
    }
  }

  v19(v5, v0);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t AFMV7DecodeFunctionEngine.queryLength.getter()
{
  v0 = type metadata accessor for Dimension();
  v1 = *(v0 - 8);
  v3 = MEMORY[0x28223BE20](v0, v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3, v6);
  v25 = &v24 - v7;
  v8 = type metadata accessor for FunctionDescriptor();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ArrayDescriptor();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  Function.descriptor.getter();
  FunctionDescriptor.arrayDescriptor(of:)(0xD000000000000011, 0x8000000220AFA610, v17);
  (*(v9 + 8))(v12, v8);
  v18 = ArrayDescriptor.shape.getter();
  (*(v14 + 8))(v17, v13);
  if (*(v18 + 16) < 2uLL)
  {
    __break(1u);
  }

  else
  {
    v20 = *(v1 + 16);
    v21 = v25;
    v20(v25, v18 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72), v0);

    v20(v5, v21, v0);
    v22 = (*(v1 + 88))(v5, v0);
    v19 = *(v1 + 8);
    if (v22 == *MEMORY[0x277D36B40])
    {
      v19(v21, v0);
      (*(v1 + 96))(v5, v0);
      return *v5;
    }
  }

  v19(v5, v0);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t protocol witness for AFMDecodeFunctionDescriptor.computesLogits.getter in conformance AFMV7DecodeFunctionEngine()
{
  v0 = type metadata accessor for FunctionDescriptor();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = Function.descriptor.getter();
  v6 = MEMORY[0x223D8E2D0](v5);
  (*(v1 + 8))(v4, v0);
  v10[0] = 0x69676F6C5F74756FLL;
  v10[1] = 0xEA00000000007374;
  v9 = v10;
  LOBYTE(v0) = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v8, v6);

  return v0 & 1;
}

uint64_t AFMV7DecodeFunctionEngine.bytesPerEmbedding.getter()
{
  v0 = type metadata accessor for ScalarType();
  v31 = *(v0 - 8);
  v32 = v0;
  MEMORY[0x28223BE20](v0, v1);
  v30 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Dimension();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = (&v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v29 - v10;
  v12 = type metadata accessor for FunctionDescriptor();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for ArrayDescriptor();
  v17 = *(v29 - 8);
  MEMORY[0x28223BE20](v29, v18);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  Function.descriptor.getter();
  FunctionDescriptor.arrayDescriptor(of:)(0xD000000000000011, 0x8000000220AFA610, v20);
  (*(v13 + 8))(v16, v12);
  v21 = ArrayDescriptor.shape.getter();
  if (*(v21 + 16) < 4uLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  v23 = *(v4 + 16);
  v23(v11, v21 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + 3 * *(v4 + 72), v3);

  v23(v8, v11, v3);
  v24 = (*(v4 + 88))(v8, v3);
  v22 = *(v4 + 8);
  if (v24 != *MEMORY[0x277D36B40])
  {
LABEL_7:
    v22(v8, v3);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v22(v11, v3);
  (*(v4 + 96))(v8, v3);
  v25 = *v8;
  v26 = v30;
  ArrayDescriptor.scalarType.getter();
  v27 = ScalarType.byteCount.getter();
  (*(v31 + 8))(v26, v32);
  (*(v17 + 8))(v20, v29);
  result = v25 * v27;
  if ((v25 * v27) >> 64 != (v25 * v27) >> 63)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t AFMV7DecodeFunctionEngine.callAsFunction<A>(query:step:holeIndices:embeddingsTable:buffers:gatherFunctions:featureProjector:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[12] = v14;
  v8[13] = v15;
  v8[10] = a7;
  v8[11] = a8;
  v8[8] = a5;
  v8[9] = a6;
  v8[6] = a3;
  v8[7] = a4;
  v8[4] = a1;
  v8[5] = a2;
  v9 = type metadata accessor for Dimension();
  v8[14] = v9;
  v8[15] = *(v9 - 8);
  v8[16] = swift_task_alloc();
  v8[17] = swift_task_alloc();
  v8[18] = swift_task_alloc();
  v8[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s4ODIE15ArrayDescriptorVSgMd, &_s4ODIE15ArrayDescriptorVSgMR);
  v8[20] = swift_task_alloc();
  v8[21] = swift_task_alloc();
  v8[22] = swift_task_alloc();
  v8[23] = swift_task_alloc();
  v10 = type metadata accessor for FunctionDescriptor();
  v8[24] = v10;
  v8[25] = *(v10 - 8);
  v8[26] = swift_task_alloc();
  v8[27] = swift_task_alloc();
  v11 = type metadata accessor for ArrayDescriptor();
  v8[28] = v11;
  v8[29] = *(v11 - 8);
  v8[30] = swift_task_alloc();
  v8[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](AFMV7DecodeFunctionEngine.callAsFunction<A>(query:step:holeIndices:embeddingsTable:buffers:gatherFunctions:featureProjector:), 0, 0);
}

uint64_t AFMV7DecodeFunctionEngine.callAsFunction<A>(query:step:holeIndices:embeddingsTable:buffers:gatherFunctions:featureProjector:)()
{
  v1 = v0[9];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[29];
    v75 = (v0[25] + 8);
    v76 = (v3 + 6);
    v73 = (v3 + 1);
    v74 = (v3 + 4);
    v72 = *MEMORY[0x277D36B40];
    v71 = (v0[15] + 96);
    v59 = v0[15];
    v4 = (v1 + 40);
    while (1)
    {
      v5 = v0[28];
      v7 = v0[22];
      v6 = v0[23];
      v8 = *(v4 - 1);
      v0[32] = v8;
      v9 = *v4;

      Function.descriptor.getter();
      FunctionDescriptor.findArrayDescriptor(of:)(0xD000000000000010, 0x8000000220AFA5B0, v6);
      outlined init with copy of ArrayDescriptor?(v6, v7);
      v10 = *v76;
      if ((*v76)(v7, 1, v5) == 1)
      {
        outlined destroy of ArrayDescriptor?(v0[22]);
        return _assertionFailure(_:_:file:line:flags:)();
      }

      v70 = v10;
      v11 = v0[31];
      v12 = v0[27];
      v13 = v0[28];
      v14 = v0[24];
      v15 = v0[22];
      outlined destroy of ArrayDescriptor?(v0[23]);
      v69 = *v75;
      (*v75)(v12, v14);
      v16 = *v74;
      (*v74)(v11, v15, v13);
      v17 = ArrayDescriptor.shape.getter();
      v18 = *v73;
      result = (*v73)(v11, v13);
      if (*(v17 + 16) < 2uLL)
      {
        break;
      }

      v67 = v18;
      v68 = v16;
      v62 = v4;
      v58 = v9;
      v21 = v0[18];
      v20 = v0[19];
      v22 = v0[14];
      v65 = (*(v59 + 80) + 32) & ~*(v59 + 80);
      v23 = *(v59 + 16);
      v66 = *(v59 + 72);
      v23(v20, v17 + v65 + v66, v22);

      v23(v21, v20, v22);
      v24 = *(v59 + 88);
      v25 = v24(v21, v22);
      v26 = *(v59 + 8);
      if (v25 != v72)
      {
        v49 = v0[18];
        v50 = v0[14];
        goto LABEL_18;
      }

      v63 = v24;
      v60 = v2;
      v61 = v8;
      v27 = v0[28];
      v29 = v0[20];
      v28 = v0[21];
      v30 = v0[18];
      v31 = v0[14];
      v64 = *(v59 + 8);
      v26(v0[19], v31);
      v32 = *v71;
      (*v71)(v30, v31);
      v33 = *v30;
      Function.descriptor.getter();
      FunctionDescriptor.findArrayDescriptor(of:)(0xD000000000000011, 0x8000000220AFA610, v28);
      outlined init with copy of ArrayDescriptor?(v28, v29);
      if (v70(v29, 1, v27) == 1)
      {
        outlined destroy of ArrayDescriptor?(v0[20]);
        return _assertionFailure(_:_:file:line:flags:)();
      }

      v34 = v33;
      v35 = v0[30];
      v36 = v0[28];
      v37 = v0[26];
      v38 = v0[24];
      v39 = v0[20];
      outlined destroy of ArrayDescriptor?(v0[21]);
      v69(v37, v38);
      v68(v35, v39, v36);
      v40 = ArrayDescriptor.shape.getter();
      result = v67(v35, v36);
      if (*(v40 + 16) < 2uLL)
      {
        goto LABEL_24;
      }

      v42 = v0[16];
      v41 = v0[17];
      v43 = v0[14];
      v23(v41, v40 + v65 + v66, v43);

      v23(v42, v41, v43);
      if (v63(v42, v43) != v72)
      {
        v49 = v0[16];
        v50 = v0[14];
        v26 = v64;
LABEL_18:
        v26(v49, v50);
        return _assertionFailure(_:_:file:line:flags:)();
      }

      v44 = v0[16];
      v45 = v0[14];
      v64(v0[17], v45);
      v32(v44, v45);
      if (v34 == *v44)
      {

        v51 = swift_task_alloc();
        v0[33] = v51;
        *v51 = v0;
        v51[1] = AFMV7DecodeFunctionEngine.callAsFunction<A>(query:step:holeIndices:embeddingsTable:buffers:gatherFunctions:featureProjector:);
        v52 = v0[12];
        v53 = v0[13];
        v54 = v0[10];
        v55 = v0[7];
        v56 = v0[8];
        v57 = v0[4];

        return AFMGatherFunction.callAsFunction<A>(tokens:embeddingsTable:buffers:featureProjector:)(v57, v55, v56, v54, v61, v58, v52, v53);
      }

      v4 = v62 + 2;

      v2 = v60 - 1;
      if (v60 == 1)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  else
  {
LABEL_11:
    _StringGuts.grow(_:)(37);

    v0[3] = AFMV7DecodeFunctionEngine.queryLength.getter();
    v46 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x223D8E780](v46);

    MEMORY[0x223D8E780](0x6C20797265757120, 0xEE002E6874676E65);
    lazy protocol witness table accessor for type DecoderModelError and conformance DecoderModelError();
    swift_allocError();
    *v47 = 0xD000000000000015;
    *(v47 + 8) = 0x8000000220AFE160;
    *(v47 + 16) = 1;
    swift_willThrow();

    v48 = v0[1];

    return v48();
  }

  return result;
}

{
  *(*v1 + 272) = v0;

  if (v0)
  {
    v2 = AFMV7DecodeFunctionEngine.callAsFunction<A>(query:step:holeIndices:embeddingsTable:buffers:gatherFunctions:featureProjector:);
  }

  else
  {

    v2 = AFMV7DecodeFunctionEngine.callAsFunction<A>(query:step:holeIndices:embeddingsTable:buffers:gatherFunctions:featureProjector:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  *(*v1 + 328) = v0;

  if (v0)
  {
    v2 = AFMV7DecodeFunctionEngine.callAsFunction<A>(query:step:holeIndices:embeddingsTable:buffers:gatherFunctions:featureProjector:);
  }

  else
  {
    v2 = AFMV7DecodeFunctionEngine.callAsFunction<A>(query:step:holeIndices:embeddingsTable:buffers:gatherFunctions:featureProjector:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  if (*(*(v0 + 280) + 16) && (v1 = specialized __RawDictionaryStorage.find<A>(_:)(0x69676F6C5F74756FLL, 0xEA00000000007374), (v2 & 1) != 0))
  {
    v5 = *(*(*(v0 + 280) + 56) + 8 * v1);
  }

  else
  {

    v5 = 0;
  }

  v3 = *(v0 + 8);

  return v3(v5);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

void AFMV7DecodeFunctionEngine.callAsFunction<A>(query:step:holeIndices:embeddingsTable:buffers:gatherFunctions:featureProjector:)()
{
  v1 = *(v0 + 56);
  v2 = AFMV7DecodeFunctionEngine.makeIOTensors(wrapping:)(*(v0 + 64));
  v4 = v3;
  *(v0 + 280) = v3;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v1, 0x6465626D655F6E69, 0xED000073676E6964, isUniquelyReferenced_nonNull_native);
  *(v0 + 288) = v2;
  if (!*(v2 + 16))
  {
    __break(1u);
    goto LABEL_13;
  }

  v6 = specialized __RawDictionaryStorage.find<A>(_:)(0x706574735F6E69, 0xE700000000000000);
  if ((v7 & 1) == 0)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v8 = *(v0 + 40);
  *(v0 + 296) = *(*(v2 + 56) + 8 * v6);
  if (v8 < 0xFFFFFFFF80000000)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v8 > 0x7FFFFFFF)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = *(v0 + 96);
  v9 = *(v0 + 104);
  v11 = *(v0 + 48);
  *(v0 + 336) = v8;

  NDArray.subscript.setter();
  v12 = swift_task_alloc();
  *(v12 + 16) = v11;
  v14 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #2 in AFMV7DecodeFunctionEngine.callAsFunction<A>(query:step:holeIndices:embeddingsTable:buffers:gatherFunctions:featureProjector:), v12, v10, &type metadata for TokenMask, MEMORY[0x277D84A98], v9, MEMORY[0x277D84AC0], v13);

  if (!*(v2 + 16))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v15 = specialized __RawDictionaryStorage.find<A>(_:)(7565168, 0xE300000000000000);
  if ((v16 & 1) == 0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  *(v0 + 304) = *(*(v2 + 56) + 8 * v15);
  *(v0 + 16) = v14;
  *(swift_task_alloc() + 16) = v0 + 16;

  _s4ODIE7NDArrayC29withUnsafeMutableArrayPointer2of_q_xm_q_AA0defG0VyxGq0_YKXEtq0_YKs5ErrorR0_r1_lF();

  if (!*(v2 + 16))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v17 = specialized __RawDictionaryStorage.find<A>(_:)(0x6D5F6C6173756163, 0xEB000000006B7361);
  if ((v18 & 1) == 0)
  {
LABEL_19:
    __break(1u);
    return;
  }

  *(v0 + 312) = *(*(v2 + 56) + 8 * v17);

  _s24TokenGenerationInference12AFMUtilitiesV24fillCausalMasksANELayout_10contentsOfy4ODIE7NDArrayC_xtSlRzAA0A4MaskV7ElementRtzlFZSayAJG_Tt1g5(v19, v14);

  v20 = swift_task_alloc();
  *(v0 + 320) = v20;
  *v20 = v0;
  v20[1] = AFMV7DecodeFunctionEngine.callAsFunction<A>(query:step:holeIndices:embeddingsTable:buffers:gatherFunctions:featureProjector:);

  Function._run(inputs:outputs:)(v2, v4);
}

uint64_t AFMV7DecodeFunctionEngine.makeIOTensors(wrapping:)(uint64_t a1)
{
  v2 = type metadata accessor for FunctionDescriptor();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  Function.descriptor.getter();
  v20 = a1;
  v21 = v6;
  v7 = specialized Sequence.reduce<A>(into:_:)(MEMORY[0x277D84F98], _s24TokenGenerationInference12AFMUtilitiesV11makeTensors3for18descriptorProvider8wrappingSDySS4ODIE7NDArrayCGSaySSG_xSDySSAJ6BufferVGtAA015ArrayDescriptorI0RzlFZyAKz_SStXEfU_AH08FunctionO0V_TG5TA_0, v19, &outlined read-only object #0 of one-time initialization function for inputNames);
  v8 = *(v3 + 8);
  v8(v6, v2);
  v9 = Function.descriptor.getter();
  v10 = MEMORY[0x223D8E2D0](v9);
  v8(v6, v2);
  v22[0] = 0x69676F6C5F74756FLL;
  v22[1] = 0xEA00000000007374;
  v18 = v22;
  v11 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v17, v10);

  if (v11)
  {
    v12 = &outlined read-only object #0 of one-time initialization function for extendOutputNames;
  }

  else
  {
    v12 = &outlined read-only object #0 of one-time initialization function for promptOutputNames;
  }

  Function.descriptor.getter();
  v15 = a1;
  v16 = v6;
  specialized Sequence.reduce<A>(into:_:)(MEMORY[0x277D84F98], closure #1 in static AFMUtilities.makeTensors<A>(for:descriptorProvider:wrapping:)specialized partial apply, v14, v12);

  v8(v6, v2);
  return v7;
}

uint64_t closure #2 in AFMV7DecodeFunctionEngine.callAsFunction<A>(query:step:holeIndices:embeddingsTable:buffers:gatherFunctions:featureProjector:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(a1 + 24);
  v7 = *(a1 + 8);
  v8 = v5;

  static AFMUtilities.addHoles(_:to:)(a2, &v7, a3);
}

double protocol witness for AFMDecodeFunctionEngine.allOperandNames.getter in conformance AFMV7DecodeFunctionEngine()
{
  if (one-time initialization token for allNames != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t protocol witness for AFMDecodeFunctionEngine.callAsFunction<A>(query:step:holeIndices:embeddingsTable:buffers:gatherFunctions:featureProjector:) in conformance AFMV7DecodeFunctionEngine(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = *v7;
  v16 = swift_task_alloc();
  *(v8 + 16) = v16;
  *v16 = v8;
  v16[1] = protocol witness for SamplingDecoder.decodeNextChunk() in conformance TwoStageSpeculativeDecoder;

  return AFMV7DecodeFunctionEngine.callAsFunction<A>(query:step:holeIndices:embeddingsTable:buffers:gatherFunctions:featureProjector:)(a1, a2, a3, a4, a5, a6, a7, v15);
}

unint64_t instantiation function for generic protocol witness table for AFMV7DecodeFunctionEngine(uint64_t a1)
{
  result = lazy protocol witness table accessor for type AFMV7DecodeFunctionEngine and conformance AFMV7DecodeFunctionEngine();
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type AFMV7DecodeFunctionEngine and conformance AFMV7DecodeFunctionEngine();
  *(a1 + 8) = result;
  return result;
}

uint64_t outlined init with copy of ArrayDescriptor?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s4ODIE15ArrayDescriptorVSgMd, &_s4ODIE15ArrayDescriptorVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of ArrayDescriptor?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s4ODIE15ArrayDescriptorVSgMd, &_s4ODIE15ArrayDescriptorVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ODIEBaseModel.init(contentsOf:assetIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s4ODIE24DelegateProgramArgumentsVSgMd, &_s4ODIE24DelegateProgramArgumentsVSgMR);
  v4[7] = swift_task_alloc();
  v5 = type metadata accessor for DelegateProgramArguments();
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v6 = type metadata accessor for ProgramDescriptor();
  v4[12] = v6;
  v4[13] = *(v6 - 8);
  v4[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](ODIEBaseModel.init(contentsOf:assetIdentifier:), 0, 0);
}

uint64_t ODIEBaseModel.init(contentsOf:assetIdentifier:)()
{
  v2 = v0[4];
  v1 = v0[5];
  *(v1 + 16) = v0[3];
  *(v1 + 24) = v2;
  v3 = swift_task_alloc();
  v0[15] = v3;
  *v3 = v0;
  v3[1] = ODIEBaseModel.init(contentsOf:assetIdentifier:);
  v4 = v0[14];
  v5 = v0[2];

  return static ODIEUtils.loadOrCompileProgram(contentsOf:delegate:nameOfCompiledPackage:)(v4, v5, 0, 0xE000000000000000, 7169633, 0xE300000000000000);
}

{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = ODIEBaseModel.init(contentsOf:assetIdentifier:);
  }

  else
  {
    v2 = ODIEBaseModel.init(contentsOf:assetIdentifier:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[7];
  type metadata accessor for MPSGraphDelegate();
  v4 = static MPSGraphDelegate.name.getter();
  MEMORY[0x223D8E270](v4);

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v5 = v0[5];
    outlined destroy of DelegateProgramArguments?(v0[7]);
    *(v5 + 32) = 0;
    v0[20] = 0;
    v6 = swift_task_alloc();
    v0[21] = v6;
    *v6 = v0;
    v6[1] = ODIEBaseModel.init(contentsOf:assetIdentifier:);
    v7 = v0[14];

    return specialized static ODIELanguageModel.loadEmbeddingTable(from:streamingDelegate:)(v7, 0);
  }

  else
  {
    v10 = v0[10];
    v9 = v0[11];
    v11 = v0[8];
    v12 = v0[9];
    (*(v12 + 32))(v9, v0[7], v11);
    (*(v12 + 16))(v10, v9, v11);
    swift_allocObject();
    v13 = swift_task_alloc();
    v0[17] = v13;
    *v13 = v0;
    v13[1] = ODIEBaseModel.init(contentsOf:assetIdentifier:);
    v14 = v0[10];

    return MEMORY[0x282124268](v14);
  }
}

{
  v1 = v0[19];
  v2 = v0[5];
  (*(v0[9] + 8))(v0[11], v0[8]);
  *(v2 + 32) = v1;
  v0[20] = v1;

  v3 = swift_task_alloc();
  v0[21] = v3;
  *v3 = v0;
  v3[1] = ODIEBaseModel.init(contentsOf:assetIdentifier:);
  v4 = v0[14];

  return specialized static ODIELanguageModel.loadEmbeddingTable(from:streamingDelegate:)(v4, v1);
}

{
  v2 = v0[13];
  v1 = v0[14];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[8];
  v6 = v0[9];
  v7 = v0[2];
  v8 = type metadata accessor for URL();
  (*(*(v8 - 8) + 8))(v7, v8);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  swift_deallocPartialClassInstance();

  v9 = v0[1];

  return v9();
}

{
  v1 = v0[23];
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[12];
  v5 = v0[5];
  v6 = v0[2];
  v7 = type metadata accessor for URL();
  (*(*(v7 - 8) + 8))(v6, v7);
  (*(v3 + 8))(v2, v4);
  *(v5 + 40) = v1;

  v8 = v0[1];
  v9 = v0[5];

  return v8(v9);
}

{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v1, v2);

  swift_deallocPartialClassInstance();

  v3 = *(v0 + 8);

  return v3();
}

{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v4 = v0[2];
  v5 = type metadata accessor for URL();
  (*(*(v5 - 8) + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  swift_deallocPartialClassInstance();

  v6 = v0[1];

  return v6();
}

uint64_t ODIEBaseModel.init(contentsOf:assetIdentifier:)(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 144) = v1;

  if (v1)
  {
    v5 = ODIEBaseModel.init(contentsOf:assetIdentifier:);
  }

  else
  {
    *(v4 + 152) = a1;
    v5 = ODIEBaseModel.init(contentsOf:assetIdentifier:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

{
  v4 = *v2;
  *(*v2 + 176) = v1;

  if (v1)
  {

    v5 = ODIEBaseModel.init(contentsOf:assetIdentifier:);
  }

  else
  {
    *(v4 + 184) = a1;

    v5 = ODIEBaseModel.init(contentsOf:assetIdentifier:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t ODIEBaseModel.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t protocol witness for BaseModel.assetIdentifier.getter in conformance ODIEBaseModel()
{
  v1 = *(*v0 + 16);

  return v1;
}

uint64_t outlined destroy of DelegateProgramArguments?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s4ODIE24DelegateProgramArgumentsVSgMd, &_s4ODIE24DelegateProgramArgumentsVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static ODIEUtils.loadOrCompileProgram(contentsOf:delegate:nameOfCompiledPackage:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[9] = a3;
  v6[10] = a4;
  v6[7] = a1;
  v6[8] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v6[13] = swift_task_alloc();
  v7 = type metadata accessor for Compiler.Options();
  v6[14] = v7;
  v6[15] = *(v7 - 8);
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();
  v8 = type metadata accessor for URL.DirectoryHint();
  v6[18] = v8;
  v6[19] = *(v8 - 8);
  v6[20] = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  v6[21] = v9;
  v6[22] = *(v9 - 8);
  v6[23] = swift_task_alloc();
  v10 = type metadata accessor for URL();
  v6[24] = v10;
  v6[25] = *(v10 - 8);
  v6[26] = swift_task_alloc();
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();
  v6[29] = swift_task_alloc();
  v6[30] = swift_task_alloc();
  v6[31] = swift_task_alloc();
  v6[32] = swift_task_alloc();
  v6[33] = swift_task_alloc();
  v6[34] = swift_task_alloc();
  type metadata accessor for String.Encoding();
  v6[35] = swift_task_alloc();
  v11 = type metadata accessor for Compiler.Module();
  v6[36] = v11;
  v6[37] = *(v11 - 8);
  v6[38] = swift_task_alloc();
  v6[39] = swift_task_alloc();

  return MEMORY[0x2822009F8](static ODIEUtils.loadOrCompileProgram(contentsOf:delegate:nameOfCompiledPackage:), 0, 0);
}

uint64_t static ODIEUtils.loadOrCompileProgram(contentsOf:delegate:nameOfCompiledPackage:)()
{
  if (v0[9] == 0x6E696D6165727473 && v0[10] == 0xE900000000000067)
  {
    v2 = 1;
  }

  else
  {
    v2 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v3 = URL.pathExtension.getter();
  v5 = v4;
  v6 = v3 == 25442 && v4 == 0xE200000000000000;
  if (v6 || (v7 = v3, (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0) || v7 == 1919511661 && v5 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    if (URL.pathExtension.getter() == 25442 && v8 == 0xE200000000000000)
    {
    }

    else
    {
      v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v9 & 1) == 0)
      {
        static String.Encoding.utf8.getter();
        v14 = String.init(contentsOf:encoding:)();
        v17 = v0[38];
        *v17 = v14;
        v17[1] = v18;
        v13 = MEMORY[0x277D36B18];
        goto LABEL_24;
      }
    }

    v10 = Data.init(contentsOf:options:)();
    v11 = v0[38];
    *v11 = v10;
    v11[1] = v12;
    v13 = MEMORY[0x277D36B20];
LABEL_24:
    v19 = v0[38];
    v20 = v0[39];
    v21 = v0[36];
    v22 = v0[37];
    (*(v22 + 104))(v19, *v13, v21);
    (*(v22 + 32))(v20, v19, v21);
    v81 = v2;
    v23 = [objc_opt_self() defaultManager];
    v24 = [v23 temporaryDirectory];
    v25 = v0[25];
    v83 = v0[24];
    v85 = v0[33];
    v27 = v0[22];
    v26 = v0[23];
    v28 = v0[20];
    v73 = v0[21];
    v75 = v0[32];
    v29 = v0[18];
    v30 = v0[19];
    v77 = v0[11];
    v79 = v0[12];
    v31 = v24;

    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    UUID.init()();
    v32 = UUID.uuidString.getter();
    v34 = v33;
    (*(v27 + 8))(v26, v73);
    v0[2] = v32;
    v0[3] = v34;
    v70 = *MEMORY[0x277CC91D8];
    v68 = *(v30 + 104);
    v68(v28);
    lazy protocol witness table accessor for type String and conformance String();
    URL.appending<A>(path:directoryHint:)();
    v35 = *(v30 + 8);
    v35(v28, v29);

    v36 = *(v25 + 8);
    v0[40] = v36;
    v0[41] = (v25 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v36(v75, v83);

    MEMORY[0x223D8E780](0x6361707869646F2ELL, 0xEC0000006567616BLL);
    v0[4] = v77;
    v0[5] = v79;
    (v68)(v28, v70, v29);
    URL.appending<A>(path:directoryHint:)();
    v35(v28, v29);

    v36(v85, v83);
    Compiler.Options.init()();
    if (v81)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy4ODIE8CompilerC9Segmenter_pGMd, &_ss23_ContiguousArrayStorageCy4ODIE8CompilerC9Segmenter_pGMR);
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_220AE8A30;
      *(v37 + 56) = type metadata accessor for MPSGraphSegmenter();
      *(v37 + 64) = lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type MPSGraphSegmenter and conformance MPSGraphSegmenter, MEMORY[0x277CD77F0], MEMORY[0x277CD77E8]);
      __swift_allocate_boxed_opaque_existential_1((v37 + 32));
      MPSGraphSegmenter.init()();
      Compiler.Options.segmenters.setter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy4ODIE8CompilerC08DelegateE0_pGMd, &_ss23_ContiguousArrayStorageCy4ODIE8CompilerC08DelegateE0_pGMR);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_220AE8A30;
      *(v38 + 56) = type metadata accessor for MPSGraphDelegateCompiler();
      *(v38 + 64) = lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type MPSGraphDelegateCompiler and conformance MPSGraphDelegateCompiler, MEMORY[0x277CD7800], MEMORY[0x277CD77F8]);
      __swift_allocate_boxed_opaque_existential_1((v38 + 32));
      MPSGraphDelegateCompiler.init()();
      Compiler.Options.delegateCompilers.setter();
    }

    (*(v0[15] + 32))(v0[17], v0[16], v0[14]);
    type metadata accessor for Compiler();
    v39 = swift_task_alloc();
    v0[42] = v39;
    *v39 = v0;
    v39[1] = static ODIEUtils.loadOrCompileProgram(contentsOf:delegate:nameOfCompiledPackage:);
    v40 = v0[39];
    v41 = v0[34];
    v42 = v0[17];

    return MEMORY[0x282195DF8](v40, v41, v42);
  }

  if ((v7 != 0x72617262696C6C6DLL || v5 != 0xE900000000000079) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    if (v7 == 0x6B6361707869646FLL && v5 == 0xEB00000000656761)
    {
    }

    else
    {
      v62 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v62 & 1) == 0)
      {
        _StringGuts.grow(_:)(29);

        lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
        v67 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x223D8E780](v67);

        return _assertionFailure(_:_:file:line:flags:)();
      }
    }

    (*(v0[25] + 16))(v0[26], v0[8], v0[24]);
    ProgramDescriptor.init(contentsOf:)();
    goto LABEL_51;
  }

  v43 = [objc_opt_self() defaultManager];
  countAndFlagsBits = URL.path(percentEncoded:)(1)._countAndFlagsBits;
  v45 = MEMORY[0x223D8E6B0](countAndFlagsBits);

  v0[6] = 0;
  v46 = [v43 contentsOfDirectoryAtPath:v45 error:v0 + 6];

  v47 = v0[6];
  if (v46)
  {
    v48 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v49 = v47;

    v72 = *(v48 + 16);
    if (!v72)
    {
LABEL_42:
      _StringGuts.grow(_:)(31);

      lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v60 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x223D8E780](v60);

      return _assertionFailure(_:_:file:line:flags:)();
    }

    v50 = 0;
    v51 = v0[25];
    v78 = (v51 + 56);
    v82 = *MEMORY[0x277CC91D8];
    v80 = (v0[19] + 104);
    v74 = (v51 + 8);
    v76 = v48;
    v52 = v48 + 40;
    while (1)
    {
      if (v50 >= *(v48 + 16))
      {
        __break(1u);
      }

      v53 = v0[28];
      v54 = v0[20];
      v84 = v0[24];
      v86 = v0[18];
      v71 = *v78;
      (*v78)(v0[13], 1, 1);
      v69 = *v80;
      (*v80)(v54, v82, v86);
      swift_bridgeObjectRetain_n();
      URL.init(filePath:directoryHint:relativeTo:)();
      v55 = URL.pathExtension.getter();
      v57 = v56;
      (*v74)(v53, v84);
      if (v55 == 0x6B6361707869646FLL && v57 == 0xEB00000000656761)
      {
        break;
      }

      v59 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v59)
      {
        goto LABEL_50;
      }

      ++v50;

      v52 += 16;
      v48 = v76;
      if (v72 == v50)
      {
        goto LABEL_42;
      }
    }

LABEL_50:

    v63 = v0[24];
    v64 = v0[20];
    v65 = v0[18];
    v66 = v0[13];

    v71(v66, 1, 1, v63);
    v69(v64, v82, v65);
    URL.init(filePath:directoryHint:relativeTo:)();
    ProgramDescriptor.init(contentsOf:)();
LABEL_51:

    v15 = v0[1];
    goto LABEL_21;
  }

  v61 = v47;

  _convertNSErrorToError(_:)();

  swift_willThrow();

  v15 = v0[1];
LABEL_21:

  return v15();
}

{
  *(*v1 + 344) = v0;

  if (v0)
  {
    v2 = static ODIEUtils.loadOrCompileProgram(contentsOf:delegate:nameOfCompiledPackage:);
  }

  else
  {
    v2 = static ODIEUtils.loadOrCompileProgram(contentsOf:delegate:nameOfCompiledPackage:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v39 = v0;
  v1 = v0;
  v38[1] = *MEMORY[0x277D85DE8];
  if (one-time initialization token for device != -1)
  {
    swift_once();
  }

  v2 = v0[34];
  v4 = v0[30];
  v3 = v0[31];
  v5 = v0[24];
  v6 = v0[25];
  v7 = v0[8];
  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Log.device);
  v9 = *(v6 + 16);
  v9(v3, v7, v5);
  v9(v4, v2, v5);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();
  v12 = os_log_type_enabled(v10, v11);
  v13 = v1[40];
  v15 = v1[30];
  v14 = v1[31];
  v16 = v1[24];
  if (v12)
  {
    v37 = v1[30];
    v35 = v11;
    log = v10;
    v17 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v38[0] = v34;
    *v17 = 136315394;
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v19;
    v13(v14, v16);
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, v38);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2080;
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = v23;
    v13(v37, v16);
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, v38);

    *(v17 + 14) = v25;
    _os_log_impl(&dword_220940000, log, v35, "Compiled MLIR bytecode at %s to mllibrary at %s", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D90A10](v34, -1, -1);
    MEMORY[0x223D90A10](v17, -1, -1);
  }

  else
  {

    v13(v15, v16);
    v13(v14, v16);
  }

  v9(v1[29], v1[34], v1[24]);
  ProgramDescriptor.init(contentsOf:)();
  v26 = v1[40];
  v27 = v1[39];
  v28 = v1[36];
  v29 = v1[37];
  v30 = v1[34];
  v31 = v1[24];
  (*(v1[15] + 8))(v1[17], v1[14]);
  v26(v30, v31);
  (*(v29 + 8))(v27, v28);

  v32 = v1[1];

  return v32();
}

{
  v1 = v0[40];
  v2 = v0[39];
  v3 = v0[36];
  v4 = v0[37];
  v5 = v0[34];
  v6 = v0[24];
  (*(v0[15] + 8))(v0[17], v0[14]);
  v1(v5, v6);
  (*(v4 + 8))(v2, v3);

  v7 = v0[1];

  return v7();
}

void sub_220A6F48C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x220A6F494);
  }

  _Unwind_Resume(a1);
}

uint64_t FunctionDescriptor.arrayDescriptor(of:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s4ODIE15ArrayDescriptorVSgMd, &_s4ODIE15ArrayDescriptorVSgMR);
  v8 = MEMORY[0x28223BE20](v6 - 8, v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v17 - v12;
  FunctionDescriptor.findArrayDescriptor(of:)(a1, a2, &v17 - v12);
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v13, v10, &_s4ODIE15ArrayDescriptorVSgMd, &_s4ODIE15ArrayDescriptorVSgMR);
  v14 = type metadata accessor for ArrayDescriptor();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v10, 1, v14) == 1)
  {
    outlined destroy of [Int](v10, &_s4ODIE15ArrayDescriptorVSgMd, &_s4ODIE15ArrayDescriptorVSgMR);
    v17 = 0;
    v18 = 0xE000000000000000;
    _StringGuts.grow(_:)(39);

    v17 = 0x742064656C696146;
    v18 = 0xEF20646E6966206FLL;
    MEMORY[0x223D8E780](a1, a2);
    MEMORY[0x223D8E780](0xD000000000000016, 0x8000000220AFE1F0);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    outlined destroy of [Int](v13, &_s4ODIE15ArrayDescriptorVSgMd, &_s4ODIE15ArrayDescriptorVSgMR);
    return (*(v15 + 32))(a3, v10, v14);
  }

  return result;
}

uint64_t Function._run(inputs:outputs:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for Operand();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](Function._run(inputs:outputs:), 0, 0);
}

void *Function._run(inputs:outputs:)()
{
  v55 = v0;
  v1 = v0[6];
  v2 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS4ODIE7OperandOGMd, &_ss18_DictionaryStorageCySS4ODIE7OperandOGMR);
  result = static _DictionaryStorage.copy(original:)();
  v4 = 0;
  v5 = 1 << *(v2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v2 + 64);
  v8 = (v5 + 63) >> 6;
  v52 = *MEMORY[0x277D36B10];
  inputs = result;
  v43 = result + 8;
  v53 = v1;
  v51 = v0;
  v9 = v1;
  if (v7)
  {
    do
    {
      v10 = __clz(__rbit64(v7));
      v47 = (v7 - 1) & v7;
LABEL_10:
      v13 = v10 | (v4 << 6);
      v14 = v0[7];
      v49 = v0[5];
      v15 = (*(v2 + 48) + 16 * v13);
      v16 = *v15;
      v17 = v15[1];
      *v14 = *(*(v2 + 56) + 8 * v13);
      (*(v9 + 104))(v14, v52);
      *(v43 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v18 = (inputs[6] + 16 * v13);
      *v18 = v16;
      v18[1] = v17;
      result = (*(v9 + 32))(inputs[7] + *(v9 + 72) * v13, v14, v49);
      v19 = inputs[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      inputs[2] = v21;

      v0 = v51;
      v7 = v47;
    }

    while (v47);
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    if (v4 >= v8)
    {
      break;
    }

    v12 = *(v2 + 64 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v47 = (v12 - 1) & v12;
      goto LABEL_10;
    }
  }

  v22 = v0[3];
  result = static _DictionaryStorage.copy(original:)();
  v23 = result;
  v24 = 0;
  v44 = result;
  v45 = v22;
  v25 = 1 << *(v22 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v22 + 64;
  v28 = v26 & *(v22 + 64);
  v29 = (v25 + 63) >> 6;
  v42 = result + 8;
  if (!v28)
  {
LABEL_17:
    v31 = v24;
    while (1)
    {
      v24 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        goto LABEL_29;
      }

      if (v24 >= v29)
      {
        outputs._rawValue = v23;
        Function.callAsFunction(inputs:outputs:)(inputs, &outputs);

        v41 = v0[1];

        return v41();
      }

      v32 = *(v27 + 8 * v24);
      ++v31;
      if (v32)
      {
        v30 = __clz(__rbit64(v32));
        v48 = (v32 - 1) & v32;
        goto LABEL_22;
      }
    }
  }

  while (1)
  {
    v30 = __clz(__rbit64(v28));
    v48 = (v28 - 1) & v28;
LABEL_22:
    v33 = v30 | (v24 << 6);
    v34 = v0[7];
    v35 = v0[5];
    v36 = (*(v45 + 48) + 16 * v33);
    v37 = v36[1];
    v50 = *v36;
    *v34 = *(*(v45 + 56) + 8 * v33);
    (*(v53 + 104))(v34, v52, v35);
    *(v42 + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v33;
    v38 = (v44[6] + 16 * v33);
    v23 = v44;
    *v38 = v50;
    v38[1] = v37;
    result = (*(v53 + 32))(v44[7] + *(v53 + 72) * v33, v34, v35);
    v39 = v44[2];
    v20 = __OFADD__(v39, 1);
    v40 = v39 + 1;
    if (v20)
    {
      break;
    }

    v44[2] = v40;

    v0 = v51;
    v28 = v48;
    if (!v48)
    {
      goto LABEL_17;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t FunctionDescriptor.findArrayDescriptor(of:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v42 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s4ODIE15ArrayDescriptorVSgMd, &_s4ODIE15ArrayDescriptorVSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v41 = &v37 - v7;
  v8 = type metadata accessor for OperandType();
  v9 = *(v8 - 8);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v39 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v13);
  v40 = &v37 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s4ODIE11OperandTypeOSgMd, &_s4ODIE11OperandTypeOSgMR);
  v17 = MEMORY[0x28223BE20](v15 - 8, v16);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v17, v20);
  v23 = &v37 - v22;
  MEMORY[0x28223BE20](v21, v24);
  v26 = &v37 - v25;
  FunctionDescriptor.operandType(ofInput:)();
  v27 = *(v9 + 48);
  v28 = v27(v23, 1, v8);
  v37 = a1;
  v38 = a2;
  if (v28 == 1)
  {
    FunctionDescriptor.operandType(ofOutput:)();
    if (v27(v23, 1, v8) != 1)
    {
      outlined destroy of [Int](v23, &_s4ODIE11OperandTypeOSgMd, &_s4ODIE11OperandTypeOSgMR);
    }
  }

  else
  {
    (*(v9 + 32))(v26, v23, v8);
    (*(v9 + 56))(v26, 0, 1, v8);
  }

  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v26, v19, &_s4ODIE11OperandTypeOSgMd, &_s4ODIE11OperandTypeOSgMR);
  if (v27(v19, 1, v8) == 1)
  {
    outlined destroy of [Int](v26, &_s4ODIE11OperandTypeOSgMd, &_s4ODIE11OperandTypeOSgMR);
    outlined destroy of [Int](v19, &_s4ODIE11OperandTypeOSgMd, &_s4ODIE11OperandTypeOSgMR);
    v29 = type metadata accessor for ArrayDescriptor();
    return (*(*(v29 - 8) + 56))(v42, 1, 1, v29);
  }

  else
  {
    v31 = v40;
    (*(v9 + 32))(v40, v19, v8);
    v32 = v39;
    (*(v9 + 16))(v39, v31, v8);
    if ((*(v9 + 88))(v32, v8) == *MEMORY[0x277D36AC8])
    {
      (*(v9 + 8))(v31, v8);
      outlined destroy of [Int](v26, &_s4ODIE11OperandTypeOSgMd, &_s4ODIE11OperandTypeOSgMR);
      (*(v9 + 96))(v32, v8);
      v33 = type metadata accessor for ArrayDescriptor();
      v34 = swift_projectBox();
      v35 = *(v33 - 8);
      v36 = v41;
      (*(v35 + 16))(v41, v34, v33);
      (*(v35 + 56))(v36, 0, 1, v33);

      return outlined init with take of ArrayDescriptor?(v36, v42);
    }

    else
    {
      v43 = 0;
      v44 = 0xE000000000000000;
      _StringGuts.grow(_:)(55);
      MEMORY[0x223D8E780](0xD000000000000019, 0x8000000220AFE210);
      MEMORY[0x223D8E780](v37, v38);
      MEMORY[0x223D8E780](0xD00000000000001ALL, 0x8000000220AFE230);
      _print_unlocked<A, B>(_:_:)();
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  return result;
}

uint64_t outlined init with take of ArrayDescriptor?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s4ODIE15ArrayDescriptorVSgMd, &_s4ODIE15ArrayDescriptorVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t Function._run(inputs:)(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = type metadata accessor for Operand();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](Function._run(inputs:), 0, 0);
}

void *Function._run(inputs:)()
{
  v1 = v0[7];
  v2 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS4ODIE7OperandOGMd, &_ss18_DictionaryStorageCySS4ODIE7OperandOGMR);
  result = static _DictionaryStorage.copy(original:)();
  v4 = 0;
  v5 = v2 + 64;
  v62 = v2;
  v6 = 1 << *(v2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v2 + 64);
  v9 = (v6 + 63) >> 6;
  v65 = *MEMORY[0x277D36B10];
  v57 = result + 8;
  v66 = v1;
  v64 = v0;
  v60 = result;
  if (v8)
  {
    do
    {
      v10 = __clz(__rbit64(v8));
      v67 = (v8 - 1) & v8;
LABEL_10:
      v13 = v10 | (v4 << 6);
      v14 = v0[10];
      v15 = v0[6];
      v16 = (*(v62 + 48) + 16 * v13);
      v17 = v16[1];
      v69 = *v16;
      *v14 = *(*(v62 + 56) + 8 * v13);
      (*(v66 + 104))(v14, v65, v15);
      *(v57 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v18 = (v60[6] + 16 * v13);
      *v18 = v69;
      v18[1] = v17;
      result = (*(v66 + 32))(v60[7] + *(v66 + 72) * v13, v14, v15);
      v19 = v60[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
        return result;
      }

      v60[2] = v21;

      v0 = v64;
      v8 = v67;
    }

    while (v67);
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    if (v4 >= v9)
    {
      break;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v67 = (v12 - 1) & v12;
      goto LABEL_10;
    }
  }

  v22 = Function.callAsFunction(inputs:)();

  v23 = v0[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS4ODIE7NDArrayCGMd, &_ss18_DictionaryStorageCySS4ODIE7NDArrayCGMR);
  result = static _DictionaryStorage.copy(original:)();
  v24 = result;
  v25 = 0;
  v54 = v22 + 64;
  v26 = 1 << *(v22 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & *(v22 + 64);
  v53 = (v26 + 63) >> 6;
  v68 = (v23 + 16);
  v61 = (v23 + 8);
  v63 = (v23 + 88);
  v56 = result + 8;
  v58 = (v23 + 96);
  v59 = result;
  v55 = v22;
  if (!v28)
  {
LABEL_17:
    v30 = v25;
    while (1)
    {
      v25 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        goto LABEL_31;
      }

      if (v25 >= v53)
      {

        v49 = v0[1];

        return v49(v24);
      }

      v31 = *(v54 + 8 * v25);
      ++v30;
      if (v31)
      {
        v29 = __clz(__rbit64(v31));
        v70 = (v31 - 1) & v31;
        goto LABEL_22;
      }
    }
  }

  while (1)
  {
    v29 = __clz(__rbit64(v28));
    v70 = (v28 - 1) & v28;
LABEL_22:
    v32 = v29 | (v25 << 6);
    v34 = v0[8];
    v33 = v0[9];
    v35 = v0[6];
    v36 = (*(v22 + 48) + 16 * v32);
    v37 = *v36;
    v38 = v36[1];
    v39 = *(v22 + 56) + *(v66 + 72) * v32;
    v40 = *v68;
    (*v68)(v33, v39, v35);
    v40(v34, v33, v35);
    if ((*v63)(v34, v35) != v65)
    {
      break;
    }

    v42 = v0[8];
    v41 = v0[9];
    v43 = v0[6];
    v44 = *v61;

    v44(v41, v43);
    result = (*v58)(v42, v43);
    v45 = *v42;
    *(v56 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
    v24 = v59;
    v46 = (v59[6] + 16 * v32);
    *v46 = v37;
    v46[1] = v38;
    *(v59[7] + 8 * v32) = v45;
    v47 = v59[2];
    v20 = __OFADD__(v47, 1);
    v48 = v47 + 1;
    if (v20)
    {
      goto LABEL_33;
    }

    v59[2] = v48;
    v0 = v64;
    v22 = v55;
    v28 = v70;
    if (!v70)
    {
      goto LABEL_17;
    }
  }

  v50 = v0[8];
  v51 = v0[6];
  v52 = *v61;

  v52(v50, v51);
  _StringGuts.grow(_:)(53);
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  MEMORY[0x223D8E780](0xD000000000000033, 0x8000000220AFE250);
  _print_unlocked<A, B>(_:_:)();
  return _assertionFailure(_:_:file:line:flags:)();
}

uint64_t Attribute.stringValue.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Attribute();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2);
  if ((*(v3 + 88))(v6, v2) == *MEMORY[0x277D36B30])
  {
    (*(v3 + 96))(v6, v2);
    return *v6;
  }

  else
  {
    (*(v3 + 8))(v6, v2);
    v8[0] = 0;
    v8[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(29);
    MEMORY[0x223D8E780](0x7475626972747441, 0xEA00000000002065);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x223D8E780](0xD000000000000011, 0x8000000220AFE300);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type URL and conformance URL(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t specialized static ODIEUtils.loadStreamingDelegate(from:)(uint64_t a1)
{
  v1[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s4ODIE24DelegateProgramArgumentsVSgMd, &_s4ODIE24DelegateProgramArgumentsVSgMR);
  v1[3] = swift_task_alloc();
  v2 = type metadata accessor for DelegateProgramArguments();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized static ODIEUtils.loadStreamingDelegate(from:), 0, 0);
}

{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = specialized static ODIEUtils.loadStreamingDelegate(from:);
  }

  else
  {
    *(v4 + 80) = a1;
    v5 = specialized static ODIEUtils.loadStreamingDelegate(from:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t specialized static ODIEUtils.loadStreamingDelegate(from:)()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  type metadata accessor for MPSGraphDelegate();
  v4 = static MPSGraphDelegate.name.getter();
  MEMORY[0x223D8E270](v4);

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    outlined destroy of [Int](v0[3], &_s4ODIE24DelegateProgramArgumentsVSgMd, &_s4ODIE24DelegateProgramArgumentsVSgMR);

    v5 = v0[1];

    return v5(0);
  }

  else
  {
    v8 = v0[6];
    v7 = v0[7];
    v9 = v0[4];
    v10 = v0[5];
    (*(v10 + 32))(v7, v0[3], v9);
    (*(v10 + 16))(v8, v7, v9);
    swift_allocObject();
    v11 = swift_task_alloc();
    v0[8] = v11;
    *v11 = v0;
    v11[1] = specialized static ODIEUtils.loadStreamingDelegate(from:);
    v12 = v0[6];

    return MEMORY[0x282124268](v12);
  }
}

{
  v1 = v0[10];
  (*(v0[5] + 8))(v0[7], v0[4]);

  v2 = v0[1];

  return v2(v1);
}

{
  (*(v0[5] + 8))(v0[7], v0[4]);

  v1 = v0[1];

  return v1();
}

uint64_t specialized static ODIEUtils.isFunction(_:adaptedBy:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for SymbolDescriptor();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Attribute();
  v36 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8, v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v10, v13);
  v16 = &v35 - v15;
  v18 = MEMORY[0x28223BE20](v14, v17);
  v20 = &v35 - v19;
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v35 - v22;
  v35 = a2;
  if (!*(a2 + 16))
  {
    goto LABEL_9;
  }

  FunctionDescriptor.symbol.getter();
  v24 = SymbolDescriptor.namedAttributes.getter();
  (*(v4 + 8))(v7, v3);
  if (!*(v24 + 16) || (v25 = specialized __RawDictionaryStorage.find<A>(_:)(0x6C61632E6174656DLL, 0xEC0000007365656CLL), (v26 & 1) == 0))
  {
LABEL_8:

LABEL_9:
    v33 = 0;
    return v33 & 1;
  }

  v27 = v36;
  v28 = *(v36 + 16);
  v28(v20, *(v24 + 56) + *(v36 + 72) * v25, v8);

  (*(v27 + 32))(v23, v20, v8);
  v28(v16, v23, v8);
  if ((*(v27 + 88))(v16, v8) == *MEMORY[0x277D36B38])
  {
    (*(v27 + 96))(v16, v8);
    if (*(*v16 + 16))
    {
      v28(v12, *v16 + ((*(v27 + 80) + 32) & ~*(v27 + 80)), v8);

      v29 = Attribute.stringValue.getter();
      v31 = v30;
      v32 = *(v27 + 8);
      v32(v12, v8);
      v33 = specialized Set.contains(_:)(v29, v31, v35);

      v32(v23, v8);
      return v33 & 1;
    }

    (*(v27 + 8))(v23, v8);
    goto LABEL_8;
  }

  (*(v27 + 8))(v16, v8);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t ODIEImageFeatureProjector.copyEmbedding(forToken:to:)(int a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 104) = a3;
  *(v4 + 112) = v3;
  *(v4 + 96) = a2;
  *(v4 + 156) = a1;
  return MEMORY[0x2822009F8](ODIEImageFeatureProjector.copyEmbedding(forToken:to:), 0, 0);
}

uint64_t ODIEImageFeatureProjector.copyEmbedding(forToken:to:)(uint64_t a1, uint64_t a2)
{
  v3 = *(*(v2 + 112) + 16);
  *(v2 + 120) = v3;
  if (!v3)
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v4 = *(v2 + 156);
  swift_unknownObjectRetain();
  result = findEmbeddingLocation(forToken:in:)(v4, v3);
  if (v7)
  {
    v8 = *(v2 + 156);
    _StringGuts.grow(_:)(61);
    MEMORY[0x223D8E780](0xD000000000000021, 0x8000000220AFE440);
    *(v2 + 152) = v8;
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x223D8E780](v9);

    MEMORY[0x223D8E780](0xD00000000000001ALL, 0x8000000220AFE470);
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v10 = result;
  *(v2 + 64) = 0;
  *(v2 + 72) = 0;
  *(v2 + 80) = 0;
  *(v2 + 88) = 2;
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v11 = v6;
  v12 = swift_allocObject();
  *(v2 + 128) = v12;
  *(v12 + 16) = v2 + 64;
  v13 = swift_allocObject();
  *(v13 + 16) = partial apply for closure #1 in ODIEImageFeatureProjector.copyEmbedding(forToken:to:);
  *(v13 + 24) = v12;
  *(v2 + 48) = partial apply for thunk for @callee_guaranteed (@unowned _EncodedImage) -> ();
  *(v2 + 56) = v13;
  *(v2 + 16) = MEMORY[0x277D85DD0];
  *(v2 + 24) = 1107296256;
  *(v2 + 32) = thunk for @escaping @callee_guaranteed (@unowned _EncodedImage) -> ();
  *(v2 + 40) = &block_descriptor_0;
  v14 = _Block_copy((v2 + 16));

  [v3 getEncodedImageAt:v10 withHandler:v14];
  _Block_release(v14);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v16 = *(v2 + 88);
  if (v16 == 2)
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v18 = *(v2 + 72);
  v17 = *(v2 + 80);
  v19 = *(v2 + 64);
  v20 = swift_task_alloc();
  *(v2 + 136) = v20;
  *v20 = v2;
  v20[1] = ODIEImageFeatureProjector.copyEmbedding(forToken:to:);
  v21 = *(v2 + 104);
  v22 = *(v2 + 96);

  return ODIEImageFeatureProjector.copyEmbedding(from:at:to:)(v19, v18, v17, v16 & 1, v10, v11, v22, v21);
}

uint64_t ODIEImageFeatureProjector.copyEmbedding(forToken:to:)()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = ODIEImageFeatureProjector.copyEmbedding(forToken:to:);
  }

  else
  {
    v2 = ODIEImageFeatureProjector.copyEmbedding(forToken:to:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{

  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

{

  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t ODIEImageFeatureProjector.FeatureProjector.callAsFunction()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[17] = a2;
  v3[18] = a3;
  v3[16] = a1;
  return MEMORY[0x2822009F8](ODIEImageFeatureProjector.FeatureProjector.callAsFunction(), 0, 0);
}

uint64_t ODIEImageFeatureProjector.FeatureProjector.callAsFunction()()
{
  v2 = v0[17];
  v1 = v0[18];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_4ODIE7NDArrayCtGMd, &_ss23_ContiguousArrayStorageCySS_4ODIE7NDArrayCtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_220AE8A30;
  strcpy((inited + 32), "image_features");
  *(inited + 47) = -18;
  *(inited + 48) = v2;

  v4 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_4ODIE7NDArrayCTt0g5Tf4g_n(inited);
  v0[19] = v4;
  swift_setDeallocating();
  outlined destroy of [Int](inited + 32, &_sSS_4ODIE7NDArrayCtMd, &_sSS_4ODIE7NDArrayCtMR);
  v5 = swift_initStackObject();
  *(v5 + 16) = xmmword_220AE8A30;
  *(v5 + 32) = 0xD000000000000010;
  *(v5 + 40) = 0x8000000220AFBF50;
  *(v5 + 48) = v1;

  v6 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_4ODIE7NDArrayCTt0g5Tf4g_n(v5);
  v0[20] = v6;
  swift_setDeallocating();
  outlined destroy of [Int](v5 + 32, &_sSS_4ODIE7NDArrayCtMd, &_sSS_4ODIE7NDArrayCtMR);
  v7 = swift_task_alloc();
  v0[21] = v7;
  *v7 = v0;
  v7[1] = ODIEImageFeatureProjector.FeatureProjector.callAsFunction();

  return Function._run(inputs:outputs:)(v4, v6);
}

{
  v2 = *v1;
  *(v2 + 176) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](ODIEImageFeatureProjector.FeatureProjector.callAsFunction(), 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

{

  v1 = *(v0 + 8);

  return v1();
}

void *ODIEImageFeatureProjector.init(programDescriptor:streamingDelegate:decoderBytesPerEmbedding:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v122 = a2;
  v124 = a3;
  v125 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s4ODIE25DelegateFunctionArgumentsVSgMd, &_s4ODIE25DelegateFunctionArgumentsVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v111 = &v100 - v6;
  v108 = type metadata accessor for DelegateFunctionArguments();
  v107 = *(v108 - 8);
  MEMORY[0x28223BE20](v108, v7);
  v115 = &v100 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = type metadata accessor for KernelRegistry();
  v109 = *(v110 - 8);
  MEMORY[0x28223BE20](v110, v9);
  v118 = &v100 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ScalarType();
  v113 = *(v11 - 8);
  v114 = v11;
  MEMORY[0x28223BE20](v11, v12);
  v112 = &v100 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Dimension();
  v15 = *(v14 - 8);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v19 = (&v100 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17, v20);
  v116 = &v100 - v21;
  v119 = type metadata accessor for ArrayDescriptor();
  v117 = *(v119 - 8);
  v23 = MEMORY[0x28223BE20](v119, v22);
  v103 = &v100 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v23, v25);
  v105 = &v100 - v27;
  v29 = MEMORY[0x28223BE20](v26, v28);
  v123 = &v100 - v30;
  MEMORY[0x28223BE20](v29, v31);
  v33 = &v100 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s4ODIE18FunctionDescriptorVSgMd, &_s4ODIE18FunctionDescriptorVSgMR);
  MEMORY[0x28223BE20](v34 - 8, v35);
  v37 = &v100 - v36;
  v38 = type metadata accessor for FunctionDescriptor();
  v39 = *(v38 - 8);
  MEMORY[0x28223BE20](v38, v40);
  v42 = &v100 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  v120 = v3;
  v43 = v124;
  *(v3 + 48) = 0;
  *(v3 + 56) = v43;
  v106 = "Expected encoded image to be ";
  ProgramDescriptor.functionDescriptor(for:)();
  v44 = v38;
  v45 = v39;
  if ((*(v39 + 48))(v37, 1, v44) != 1)
  {
    v57 = *(v39 + 32);
    v102 = v44;
    v57(v42, v37, v44);
    FunctionDescriptor.arrayDescriptor(of:)(0x65665F6567616D69, 0xEE00736572757461, v33);
    if (ArrayDescriptor.rank.getter() != 4)
    {
LABEL_26:
      v126 = 0;
      v127 = 0xE000000000000000;
      _StringGuts.grow(_:)(52);
      MEMORY[0x223D8E780](0xD000000000000032, 0x8000000220AFE5B0);
      v130 = ArrayDescriptor.rank.getter();
      v96 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x223D8E780](v96);

      goto LABEL_30;
    }

    FunctionDescriptor.arrayDescriptor(of:)(0xD000000000000010, 0x8000000220AFBF50, v123);
    v58 = ArrayDescriptor.rank.getter();
    v59 = v116;
    if (v58 != 4)
    {
      v126 = 0;
      v127 = 0xE000000000000000;
      _StringGuts.grow(_:)(53);
      MEMORY[0x223D8E780](0xD000000000000033, 0x8000000220AFE5F0);
      v130 = ArrayDescriptor.rank.getter();
      v97 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x223D8E780](v97);

      goto LABEL_30;
    }

    v60 = ArrayDescriptor.shape.getter();
    if (*(v60 + 16) < 4uLL)
    {
      __break(1u);
    }

    else
    {
      v101 = v45;
      v104 = v33;
      v61 = v121;
      v62 = *(v15 + 16);
      v62(v59, v60 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + 3 * *(v15 + 72), v14);

      v62(v19, v59, v14);
      v63 = (*(v15 + 88))(v19, v14);
      v64 = *(v15 + 8);
      if (v63 != *MEMORY[0x277D36B40])
      {
        v64(v19, v14);
        goto LABEL_30;
      }

      v64(v59, v14);
      (*(v15 + 96))(v19, v14);
      v14 = *v19;
      v65 = v112;
      ArrayDescriptor.scalarType.getter();
      v66 = ScalarType.byteCount.getter();
      (*(v113 + 8))(v65, v114);
      v67 = v14 * v66;
      v68 = v115;
      if ((v14 * v66) >> 64 == (v14 * v66) >> 63)
      {
        v116 = v42;
        v69 = v124;
        if (v67 == v124)
        {
          v70 = v61;
          v71 = v118;
          KernelRegistry.init()();
          v72 = v119;
          v51 = v120;
          v73 = v117;
          v14 = v111;
          if (v122)
          {
            type metadata accessor for MPSGraphDelegate();

            v74 = static MPSGraphDelegate.name.getter();
            MEMORY[0x223D8E2E0](v74);

            v75 = v107;
            v76 = v108;
            if ((*(v107 + 48))(v14, 1, v108) == 1)
            {
              goto LABEL_31;
            }

            (*(v75 + 32))(v68, v14, v76);
            MPSGraphDelegate.registerKernels(for:with:into:)();
            if (v70)
            {

              v77 = type metadata accessor for ProgramDescriptor();
              (*(*(v77 - 8) + 8))(v125, v77);
              (*(v75 + 8))(v68, v76);
              (*(v109 + 8))(v71, v110);
              v78 = *(v73 + 8);
              v79 = v119;
              v78(v123, v119);
              v78(v104, v79);
              (*(v101 + 8))(v116, v102);
              return v51;
            }

            (*(v75 + 8))(v68, v76);

            v72 = v119;
          }

          v128 = type metadata accessor for EmptyProfiler();
          v129 = MEMORY[0x277D36AD0];
          __swift_allocate_boxed_opaque_existential_1(&v126);
          EmptyProfiler.init()();
          v80 = v125;
          v81 = ProgramDescriptor.function(named:kernelRegistry:dependencies:profiler:)();
          if (v70)
          {

            v82 = type metadata accessor for ProgramDescriptor();
            (*(*(v82 - 8) + 8))(v80, v82);
            (*(v109 + 8))(v71, v110);
            v83 = *(v73 + 8);
            v83(v123, v72);
            v83(v104, v72);
            (*(v101 + 8))(v116, v102);
            __swift_destroy_boxed_opaque_existential_1(&v126);
            return v51;
          }

          v14 = v81;
          __swift_destroy_boxed_opaque_existential_1(&v126);
          v124 = v14;
          if (v14)
          {
            v84 = *(v73 + 16);
            v84(v105, v104, v72);
            type metadata accessor for NDArray();
            swift_allocObject();
            v121 = NDArray.init(descriptor:)();
            v86 = v123;
            v84(v103, v123, v119);
            swift_allocObject();
            v87 = NDArray.init(descriptor:)();

            v88 = type metadata accessor for ProgramDescriptor();
            (*(*(v88 - 8) + 8))(v80, v88);
            (*(v109 + 8))(v118, v110);
            v89 = *(v117 + 8);
            v90 = v86;
            v91 = v119;
            v89(v90, v119);
            v89(v104, v91);
            (*(v101 + 8))(v116, v102);
            v92 = v51[3];
            v93 = v51[4];
            v94 = v51[5];
            v95 = v121;
            v51[3] = v124;
            v51[4] = v95;
            v51[5] = v87;
            v51[6] = -1;
            outlined consume of ODIEImageFeatureProjector.FeatureProjector?(v92, v93, v94);
            return v51;
          }

          goto LABEL_25;
        }

        v126 = 0;
        v127 = 0xE000000000000000;
        _StringGuts.grow(_:)(91);
        v14 = 0xD000000000000018;
        MEMORY[0x223D8E780](0xD000000000000030, 0x8000000220AFE630);
        v130 = v67;
        v98 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x223D8E780](v98);

        MEMORY[0x223D8E780](0xD000000000000027, 0x8000000220AFE670);
        v130 = v69;
        v99 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x223D8E780](v99);

        while (1)
        {
LABEL_30:
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
LABEL_31:
          outlined destroy of [Int](v14, &_s4ODIE25DelegateFunctionArgumentsVSgMd, &_s4ODIE25DelegateFunctionArgumentsVSgMR);
        }
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  outlined destroy of [Int](v37, &_s4ODIE18FunctionDescriptorVSgMd, &_s4ODIE18FunctionDescriptorVSgMR);
  if (one-time initialization token for device != -1)
  {
    swift_once();
  }

  v46 = type metadata accessor for Logger();
  __swift_project_value_buffer(v46, static Log.device);
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.default.getter();
  v49 = os_log_type_enabled(v47, v48);
  v50 = v125;
  v51 = v120;
  if (v49)
  {
    v52 = swift_slowAlloc();
    *v52 = 0;
    _os_log_impl(&dword_220940000, v47, v48, "AFM decoder did not have image_feature_projection function", v52, 2u);
    MEMORY[0x223D90A10](v52, -1, -1);
  }

  v53 = type metadata accessor for ProgramDescriptor();
  (*(*(v53 - 8) + 8))(v50, v53);
  v54 = v51[3];
  v55 = v51[4];
  v56 = v51[5];
  *(v51 + 3) = 0u;
  *(v51 + 5) = 0u;
  outlined consume of ODIEImageFeatureProjector.FeatureProjector?(v54, v55, v56);
  return v51;
}

uint64_t findEmbeddingLocation(forToken:in:)(int a1, id a2)
{
  result = [a2 imageCount];
  if ((result & 0x80000000) != 0)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
  }

  else
  {
    if (!result)
    {
      return 0;
    }

    v5 = 0;
    v6 = result;
    while (1)
    {
      result = [a2 tokenRangeAt_];
      if (result <= a1)
      {
        if (__OFADD__(result, v7))
        {
          __break(1u);
          goto LABEL_13;
        }

        if (result + v7 > a1)
        {
          break;
        }
      }

      if (v6 == ++v5)
      {
        return 0;
      }
    }

    if (__OFSUB__(a1, result))
    {
      goto LABEL_14;
    }

    return v5;
  }

  return result;
}

uint64_t ODIEImageFeatureProjector.copyEmbedding(from:at:to:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 80) = a8;
  *(v9 + 88) = v8;
  *(v9 + 64) = a6;
  *(v9 + 72) = a7;
  *(v9 + 120) = a4;
  *(v9 + 48) = a3;
  *(v9 + 56) = a5;
  *(v9 + 32) = a1;
  *(v9 + 40) = a2;
  return MEMORY[0x2822009F8](ODIEImageFeatureProjector.copyEmbedding(from:at:to:), 0, 0);
}

void ODIEImageFeatureProjector.copyEmbedding(from:at:to:)()
{
  v1 = *(v0 + 32);
  if (!v1)
  {
    __break(1u);
    goto LABEL_20;
  }

  v2 = *(v0 + 40);
  v3 = v2 / v1;
  if (((v2 / v1) & 0x8000000000000000) != 0)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v4 = *(v0 + 88);
  if ((*(v0 + 120) & 1) == 0 && *(v4 + 24))
  {
    v5 = swift_task_alloc();
    *(v0 + 96) = v5;
    v6 = *(v0 + 72);
    v7 = *(v0 + 56);
    *(v5 + 16) = v4;
    *(v5 + 24) = v7;
    *(v5 + 40) = v6;
    v8 = swift_task_alloc();
    *(v0 + 104) = v8;
    *v8 = v0;
    v8[1] = ODIEImageFeatureProjector.copyEmbedding(from:at:to:);
    v10 = *(v0 + 48);
    v9 = *(v0 + 56);
    v11 = *(v0 + 32);
    v12 = *(v0 + 40);

    specialized ODIEImageFeatureProjector.withProjectedImage<A>(imageIndex:encodedImage:_:)(v8, v9, v11, v12, v10, 0, partial apply for closure #1 in ODIEImageFeatureProjector.copyEmbedding(from:at:to:), v5);
    return;
  }

  v13 = *(v4 + 56);
  if (v3 != v13)
  {
    _StringGuts.grow(_:)(57);
    MEMORY[0x223D8E780](0xD00000000000002DLL, 0x8000000220AFE4D0);
    *(v0 + 16) = v3;
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x223D8E780](v18);

    MEMORY[0x223D8E780](0x20746F6E20736920, 0xE800000000000000);
    *(v0 + 24) = v13;
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x223D8E780](v19);

    _assertionFailure(_:_:file:line:flags:)();
    return;
  }

  if ((v2 & 0x8000000000000000) != 0)
  {
    goto LABEL_21;
  }

  v14 = *(v0 + 64);
  v15 = v14 * v3;
  if ((v14 * v3) >> 64 != (v14 * v3) >> 63)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (__OFADD__(v15, v3))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v15 + v3 < v15)
  {
LABEL_24:
    __break(1u);
    return;
  }

  v16 = *(v0 + 72);
  if (v16)
  {
    memmove(v16, (*(v0 + 48) + v15), v3);
  }

  v17 = *(v0 + 8);

  v17();
}

uint64_t ODIEImageFeatureProjector.copyEmbedding(from:at:to:)()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = ODIEImageFeatureProjector.copyEmbedding(from:at:to:);
  }

  else
  {

    v2 = ODIEImageFeatureProjector.copyEmbedding(from:at:to:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  return (*(v0 + 8))();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t specialized ODIEImageFeatureProjector.withProjectedImage<A>(imageIndex:encodedImage:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 88) = a8;
  *(v9 + 96) = v8;
  *(v9 + 144) = a6;
  *(v9 + 72) = a5;
  *(v9 + 80) = a7;
  *(v9 + 56) = a3;
  *(v9 + 64) = a4;
  *(v9 + 40) = a1;
  *(v9 + 48) = a2;
  return MEMORY[0x2822009F8](specialized ODIEImageFeatureProjector.withProjectedImage<A>(imageIndex:encodedImage:_:), 0, 0);
}

uint64_t specialized ODIEImageFeatureProjector.withProjectedImage<A>(imageIndex:encodedImage:_:)()
{
  v1 = *(v0 + 96);
  v2 = v1[3];
  *(v0 + 104) = v2;
  v3 = v1[4];
  *(v0 + 112) = v3;
  v4 = v1[5];
  *(v0 + 120) = v4;
  if (!v2)
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v5 = v1[6];
  v6 = *(v0 + 64);
  outlined copy of ODIEImageFeatureProjector.FeatureProjector?(v2, v3, v4);

  v7 = NDArray.byteCount.getter();

  if (v7 < 0 || v7 != v6)
  {
    v8 = *(v0 + 64);
    _StringGuts.grow(_:)(42);

    *(v0 + 16) = NDArray.byteCount.getter();
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x223D8E780](v9);

    MEMORY[0x223D8E780](0x7361772074756220, 0xE900000000000020);
    *(v0 + 24) = v8;
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x223D8E780](v10);

    return _assertionFailure(_:_:file:line:flags:)();
  }

  if (v5 == *(v0 + 48))
  {
    *(swift_task_alloc() + 16) = *(v0 + 80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    _s4ODIE7NDArrayC25withUnsafeRawArrayPointeryxxAA0defG0Vq_YKXEq_YKs5ErrorR_r0_lF();

    v16 = *(v0 + 8);

    return v16();
  }

  else
  {
    v12 = *(v0 + 144);
    v13 = *(v0 + 72);
    v17 = *(v0 + 56);
    v14 = swift_task_alloc();
    *(v14 + 16) = v17;
    *(v14 + 32) = v13;
    *(v14 + 40) = v12;

    _s4ODIE7NDArrayC32withUnsafeMutableRawArrayPointeryxxAA0defgH0Vq_YKXEq_YKs5ErrorR_r0_lF();

    v15 = swift_task_alloc();
    *(v0 + 128) = v15;
    *v15 = v0;
    v15[1] = specialized ODIEImageFeatureProjector.withProjectedImage<A>(imageIndex:encodedImage:_:);

    return ODIEImageFeatureProjector.FeatureProjector.callAsFunction()(v2, v3, v4);
  }
}

{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = specialized ODIEImageFeatureProjector.withProjectedImage<A>(imageIndex:encodedImage:_:);
  }

  else
  {

    v2 = specialized ODIEImageFeatureProjector.withProjectedImage<A>(imageIndex:encodedImage:_:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  v3 = *(v0 + 96);
  v4 = *(v0 + 48);
  v5 = v3[3];
  v6 = v3[4];
  v7 = v3[5];
  v3[3] = *(v0 + 104);
  v3[4] = v1;
  v3[5] = v2;
  v3[6] = v4;

  outlined consume of ODIEImageFeatureProjector.FeatureProjector?(v5, v6, v7);
  *(swift_task_alloc() + 16) = *(v0 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  _s4ODIE7NDArrayC25withUnsafeRawArrayPointeryxxAA0defG0Vq_YKXEq_YKs5ErrorR_r0_lF();

  v8 = *(v0 + 8);

  return v8();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t ODIEImageFeatureProjector.__deallocating_deinit()
{
  swift_unknownObjectRelease();
  outlined consume of ODIEImageFeatureProjector.FeatureProjector?(v0[3], v0[4], v0[5]);

  return swift_deallocClassInstance();
}

uint64_t partial apply for closure #1 in ODIEImageFeatureProjector.copyEmbedding(forToken:to:)(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  v5 = *(v4 + 16);
  *v5 = result;
  v5[1] = a2;
  v5[2] = a3;
  v5[3] = a4 & 1;
  return result;
}

char *partial apply for closure #1 in ODIEImageFeatureProjector.copyEmbedding(from:at:to:)(char *result)
{
  v2 = *(v1 + 32);
  v3 = *(*(v1 + 16) + 56);
  v4 = v2 * v3;
  if ((v2 * v3) >> 64 != (v2 * v3) >> 63)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = v4 + v3;
  if (__OFADD__(v4, v3))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v5 < v4)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v6 = &result[v4];
  if (result)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  if (*(v1 + 40) && v7)
  {
    v8 = &result[v5];
    if (!result)
    {
      v8 = 0;
    }

    return memmove(*(v1 + 40), v7, v8 - v7);
  }

  return result;
}

uint64_t outlined copy of ODIEImageFeatureProjector.FeatureProjector?(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
  }

  return result;
}

void *partial apply for closure #1 in ODIEImageFeatureProjector.withProjectedImage<A>(imageIndex:encodedImage:_:)()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  result = UnsafeMutableRawArrayPointer.contents.getter();
  if ((v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result)
  {

    return memmove(result, v2, v1);
  }

  return result;
}

uint64_t outlined consume of ODIEImageFeatureProjector.FeatureProjector?(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
  }

  return result;
}

uint64_t partial apply for specialized closure #2 in ODIEImageFeatureProjector.withProjectedImage<A>(imageIndex:encodedImage:_:)(uint64_t a1, void *a2)
{
  v5 = *(v2 + 16);
  v6 = UnsafeRawArrayPointer.contents.getter();
  result = v5(v6);
  if (v3)
  {
    *a2 = v3;
  }

  return result;
}

uint64_t destroy for ODIELanguageModel(uint64_t a1, int *a2)
{
  v3 = type metadata accessor for ProgramDescriptor();
  (*(*(v3 - 8) + 8))(a1, v3);
}

uint64_t initializeWithTake for ODIELanguageModel(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for ProgramDescriptor();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  *(a1 + v7) = *(a2 + v7);
  v8 = a3[8];
  *(a1 + a3[7]) = *(a2 + a3[7]);
  *(a1 + v8) = *(a2 + v8);
  v9 = a3[10];
  *(a1 + a3[9]) = *(a2 + a3[9]);
  *(a1 + v9) = *(a2 + v9);
  return a1;
}

uint64_t assignWithTake for ODIELanguageModel(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for ProgramDescriptor();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  *(a1 + a3[5]) = *(a2 + a3[5]);

  *(a1 + a3[6]) = *(a2 + a3[6]);

  *(a1 + a3[7]) = *(a2 + a3[7]);

  *(a1 + a3[8]) = *(a2 + a3[8]);

  *(a1 + a3[9]) = *(a2 + a3[9]);

  *(a1 + a3[10]) = *(a2 + a3[10]);

  return a1;
}

uint64_t type metadata accessor for ODIELanguageModel(uint64_t a1)
{
  result = type metadata singleton initialization cache for ODIELanguageModel;
  if (!type metadata singleton initialization cache for ODIELanguageModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for ODIELanguageModel(uint64_t a1)
{
  result = type metadata accessor for ProgramDescriptor();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t one-time initialization function for signposter()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OSSignposter();
  __swift_allocate_value_buffer(v5, static ODIELanguageModel.signposter);
  __swift_project_value_buffer(v5, static ODIELanguageModel.signposter);
  if (one-time initialization token for device != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, static Log.device);
  (*(v1 + 16))(v4, v6, v0);
  return OSSignposter.init(logger:)();
}

uint64_t ODIELanguageModel.init(contentsOf:adapterURL:baseModel:delegate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[42] = a5;
  v6[43] = a6;
  v6[40] = a3;
  v6[41] = a4;
  v6[38] = a1;
  v6[39] = a2;
  v10 = type metadata accessor for FunctionDescriptor();
  v6[44] = v10;
  v6[45] = *(v10 - 8);
  v6[46] = swift_task_alloc();
  v11 = type metadata accessor for KernelRegistry();
  v6[47] = v11;
  v6[48] = *(v11 - 8);
  v6[49] = swift_task_alloc();
  v12 = type metadata accessor for URL();
  v6[50] = v12;
  v6[51] = *(v12 - 8);
  v6[52] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s4ODIE17ProgramDescriptorVSgMd, &_s4ODIE17ProgramDescriptorVSgMR);
  v6[53] = swift_task_alloc();
  v6[54] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v6[55] = swift_task_alloc();
  v6[56] = swift_task_alloc();
  v6[57] = swift_task_alloc();
  v13 = type metadata accessor for ProgramDescriptor();
  v6[58] = v13;
  v6[59] = *(v13 - 8);
  v6[60] = swift_task_alloc();
  v14 = swift_task_alloc();
  v6[61] = v14;
  v15 = swift_task_alloc();
  v6[62] = v15;
  *v15 = v6;
  v15[1] = ODIELanguageModel.init(contentsOf:adapterURL:baseModel:delegate:);

  return static ODIEUtils.loadOrCompileProgram(contentsOf:delegate:nameOfCompiledPackage:)(v14, a2, a5, a6, 7169633, 0xE300000000000000);
}