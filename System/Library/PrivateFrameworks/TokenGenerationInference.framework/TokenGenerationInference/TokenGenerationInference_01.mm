uint64_t type metadata completion function for Asset(uint64_t a1)
{
  result = type metadata accessor for URL();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OnDeviceInferenceProviderDataSource.catalogResource(for:)@<X0>(uint64_t a3@<X8>)
{
  type metadata accessor for CatalogClient();
  swift_allocObject();
  CatalogClient.init()();
  dispatch thunk of CatalogClient.resource(for:)();

  if (!v3)
  {
    if (v8)
    {
      return outlined init with take of RandomNumberGenerator(&v7, a3);
    }

    else
    {
      outlined destroy of [Int](&v7, &_s12ModelCatalog0B8Resource_pSgMd, &_s12ModelCatalog0B8Resource_pSgMR);
      lazy protocol witness table accessor for type DataSourceError and conformance DataSourceError();
      swift_allocError();
      *v6 = 3;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t OnDeviceInferenceProviderDataSource.asset(for:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for AssetVersion();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = OnDeviceInferenceProviderDataSource.catalogResource(for:)(v41);
  if (!v3)
  {
    outlined init with copy of DeterministicLanguageModelProtocol(v41, v37);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog0B8Resource_pMd, &_s12ModelCatalog0B8Resource_pMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog19AssetBackedResource_pMd, &_s12ModelCatalog19AssetBackedResource_pMR);
    if (swift_dynamicCast())
    {
      v34 = a3;
      outlined init with take of RandomNumberGenerator(v35, v40);
      __swift_project_boxed_opaque_existential_1(v40, v40[3]);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v39 = AssociatedConformanceWitness;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v37);
      dispatch thunk of AssetBackedResource.fetchAsset()();
      v41[7] = 0;
      __swift_project_boxed_opaque_existential_1(v37, AssociatedTypeWitness);
      v20 = swift_getAssociatedTypeWitness();
      v32 = &v29;
      v30 = *(v20 - 8);
      MEMORY[0x28223BE20](v20, v21);
      v31 = AssociatedConformanceWitness;
      v23 = &v29 - v22;
      dispatch thunk of CatalogAssetProtocol.contents.getter();
      swift_getAssociatedConformanceWitness();
      v24 = v34;
      dispatch thunk of AssetContents.baseURL.getter();
      (*(v30 + 8))(v23, v20);
      dispatch thunk of CatalogAssetProtocol.version.getter();
      v25 = AssetVersion.number.getter();
      v27 = v26;
      (*(v8 + 8))(v11, v7);
      __swift_destroy_boxed_opaque_existential_1(v41);
      v28 = (v24 + *(type metadata accessor for Asset(0) + 20));
      *v28 = v25;
      v28[1] = v27;
      __swift_destroy_boxed_opaque_existential_1(v37);
      return __swift_destroy_boxed_opaque_existential_1(v40);
    }

    else
    {
      v36 = 0;
      memset(v35, 0, sizeof(v35));
      outlined destroy of [Int](v35, &_s12ModelCatalog19AssetBackedResource_pSgMd, &_s12ModelCatalog19AssetBackedResource_pSgMR);
      if (one-time initialization token for device != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      __swift_project_value_buffer(v14, static Log.device);

      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v40[0] = v18;
        *v17 = 136315138;
        *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v40);
        _os_log_impl(&dword_220940000, v15, v16, "Catalog resource with identifier %s is not asset backed resource", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v18);
        MEMORY[0x223D90A10](v18, -1, -1);
        MEMORY[0x223D90A10](v17, -1, -1);
      }

      lazy protocol witness table accessor for type DataSourceError and conformance DataSourceError();
      swift_allocError();
      *v19 = 1;
      swift_willThrow();
      return __swift_destroy_boxed_opaque_existential_1(v41);
    }
  }

  return result;
}

void type metadata completion function for OnDeviceInferenceAssetObjectTokenizer(uint64_t a1)
{
  type metadata accessor for Asset?(319, &lazy cache variable for type metadata for Asset?, type metadata accessor for Asset);
  if (v1 <= 0x3F)
  {
    type metadata accessor for TokenizerRunner();
    if (v2 <= 0x3F)
    {
      type metadata accessor for ImageTokenIDGenerator();
      if (v3 <= 0x3F)
      {
        type metadata accessor for [String : String]?(319, &lazy cache variable for type metadata for [String : String]?, &_sSDyS2SGMd, &_sSDyS2SGMR);
        if (v4 <= 0x3F)
        {
          type metadata accessor for [String : String]?(319, &lazy cache variable for type metadata for [Int]?, &_sSaySiGMd, &_sSaySiGMR);
          if (v5 <= 0x3F)
          {
            type metadata accessor for Asset?(319, &lazy cache variable for type metadata for GuidedGenerationVocabularyManager?, MEMORY[0x277D71DE8]);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC15handleTokenizer33_65818D6FA4B5F545C6B162D7CBE031AELL17tokenizerResource5assety12ModelCatalog0f6BackedI0_p_AA0F0Vt0V15ManagerServices0C5ErrorOYKF(void *a1, uint64_t a2, uint64_t a3)
{
  v50 = a3;
  v56 = a2;
  v48 = type metadata accessor for InferenceError.Context();
  v51 = *(v48 - 8);
  MEMORY[0x28223BE20](v48, v5);
  v49 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference5AssetVSgMd, &_s24TokenGenerationInference5AssetVSgMR);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v46 = &v45 - v9;
  v47 = type metadata accessor for OnDeviceInferenceAssetObjectTokenizer(0);
  MEMORY[0x28223BE20](v47, v10);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for URL();
  v53 = *(v13 - 8);
  v54 = v13;
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v52 = dispatch thunk of CatalogResource.id.getter();
  v18 = v17;
  if (one-time initialization token for device != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static Log.device);

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  v22 = os_log_type_enabled(v20, v21);
  v55 = v18;
  if (v22)
  {
    v23 = v18;
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v57[0] = v25;
    *v24 = 136446210;
    *(v24 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v23, v57);
    _os_log_impl(&dword_220940000, v20, v21, "Creating tokenizer for asset %{public}s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v25);
    MEMORY[0x223D90A10](v25, -1, -1);
    MEMORY[0x223D90A10](v24, -1, -1);
  }

  __swift_project_boxed_opaque_existential_1((v58 + 192), *(v58 + 216));
  v26 = off_283451590;
  type metadata accessor for OnDeviceInferenceProviderDataSource();
  v27 = (v26)(a1);
  if (v3)
  {

    v29 = 0;
    v30 = 1;
  }

  else
  {
    v30 = v27;
    v29 = v28;
  }

  URL.appendingPathComponent(_:)();
  URL.path.getter();
  if (v30 >= 2)
  {
  }

  else
  {
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&outlined read-only object #0 of OnDeviceInferenceProviderDataSource.createTokenizer(tokenizerPath:metadata:));
    outlined destroy of [Int](&unk_28344E240, &_sSS_SStMd, &_sSS_SStMR);
  }

  type metadata accessor for TokenizerRunner();
  swift_allocObject();

  v31 = TokenizerRunner.init(tokenizerPath:substitutionTextForInputTokenText:)();
  (*(v53 + 8))(v16, v54);

  v32 = v46;
  outlined init with copy of OnDeviceInferenceAssetObjectE5Runner(v56, v46, type metadata accessor for Asset);
  v33 = type metadata accessor for Asset(0);
  (*(*(v33 - 8) + 56))(v32, 0, 1, v33);

  v34 = dispatch thunk of TokenizerRunner.vocabularyCount.getter();
  type metadata accessor for ImageTokenIDGenerator();
  v35 = swift_allocObject();
  *(v35 + 16) = v34;
  if (v30 == 1)
  {
    v36 = 0;
  }

  else
  {
    v36 = v29;
  }

  v56 = v36;
  if (v30 == 1)
  {
    v37 = 0;
  }

  else
  {
    v37 = v30;
  }

  v38 = v47;
  v39 = *(v47 + 44);
  v40 = type metadata accessor for GuidedGenerationVocabularyManager();
  (*(*(v40 - 8) + 56))(&v12[v39], 1, 1, v40);
  v41 = v52;
  v42 = v55;
  *v12 = v52;
  *(v12 + 1) = v42;
  outlined init with take of Asset?(v32, &v12[v38[5]], &_s24TokenGenerationInference5AssetVSgMd, &_s24TokenGenerationInference5AssetVSgMR);
  *&v12[v38[6]] = v31;
  *&v12[v38[7]] = v35;
  *&v12[v38[8]] = v37;
  *&v12[v38[9]] = v56;
  *&v12[v38[10]] = 0;
  v57[3] = v38;
  v57[4] = &protocol witness table for OnDeviceInferenceAssetObjectTokenizer;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v57);
  outlined init with copy of OnDeviceInferenceAssetObjectE5Runner(v12, boxed_opaque_existential_1, type metadata accessor for OnDeviceInferenceAssetObjectTokenizer);
  swift_beginAccess();

  specialized Dictionary.subscript.setter(v57, v41, v42);
  swift_endAccess();

  return outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v12, type metadata accessor for OnDeviceInferenceAssetObjectTokenizer);
}

void type metadata accessor for Asset?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t protocol witness for OnDeviceInferenceProviderDataSourceProtocol.tokenizerMetadataFromResource(_:) in conformance OnDeviceInferenceProviderDataSource(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for TokenizerAssetMetadata();
  v17 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog0B5AssetVyAA09TokenizerC8MetadataVAA0dC8ContentsVGMd, &_s12ModelCatalog0B5AssetVyAA09TokenizerC8MetadataVAA0dC8ContentsVGMR);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v16 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of AssetBackedResource.fetchAsset()();
  if (!v1)
  {
    v13 = v17;
    CatalogAsset.metadata.getter();
    v14 = (*(v9 + 8))(v12, v8);
    v2 = MEMORY[0x223D8C4B0](v14);
    MEMORY[0x223D8C4C0]();
    (*(v13 + 8))(v7, v4);
  }

  return v2;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC14handleLLMModel33_65818D6FA4B5F545C6B162D7CBE031AELL8llmModel5assety0T7Catalog0f6BackedI0_p_AA0F0VtYa0T15ManagerServices0C5ErrorOYKF(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[78] = a3;
  v4[77] = v3;
  v4[76] = a2;
  v4[75] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore34PromptPreprocessingTemplateVersionOSgMd, &_s19TokenGenerationCore34PromptPreprocessingTemplateVersionOSgMR);
  v4[79] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v4[80] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference5AssetVSgMd, &_s24TokenGenerationInference5AssetVSgMR);
  v4[81] = swift_task_alloc();
  v4[82] = swift_task_alloc();
  v4[83] = type metadata accessor for OnDeviceInferenceAssetObjectE5Runner(0);
  v4[84] = swift_task_alloc();
  v5 = type metadata accessor for ModelConfiguration();
  v4[85] = v5;
  v4[86] = *(v5 - 8);
  v4[87] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference27PromptTemplateConfigurationVSgMd, &_s24TokenGenerationInference27PromptTemplateConfigurationVSgMR);
  v4[88] = swift_task_alloc();
  v4[89] = swift_task_alloc();
  v4[90] = swift_task_alloc();
  v4[91] = type metadata accessor for OnDeviceInferenceAssetObjectBaseModel(0);
  v4[92] = swift_task_alloc();
  v6 = type metadata accessor for InferenceError.Context();
  v4[93] = v6;
  v4[94] = *(v6 - 8);
  v4[95] = swift_task_alloc();
  v7 = type metadata accessor for CostProfile();
  v4[96] = v7;
  v4[97] = *(v7 - 8);
  v4[98] = swift_task_alloc();
  v8 = type metadata accessor for URL();
  v4[99] = v8;
  v4[100] = *(v8 - 8);
  v4[101] = swift_task_alloc();
  v4[102] = swift_task_alloc();
  v9 = type metadata accessor for InferenceError();
  v4[103] = v9;
  v4[104] = *(v9 - 8);
  v4[105] = swift_task_alloc();
  v4[106] = swift_task_alloc();
  v4[107] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v4[108] = swift_task_alloc();
  v4[109] = swift_task_alloc();
  v4[110] = swift_task_alloc();
  v4[111] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference13ModelMetadataVSgMd, &_s24TokenGenerationInference13ModelMetadataVSgMR);
  v4[112] = swift_task_alloc();
  v4[113] = swift_task_alloc();
  v4[114] = swift_task_alloc();
  v4[115] = swift_task_alloc();
  v4[116] = swift_task_alloc();
  v4[117] = swift_task_alloc();
  v4[118] = swift_task_alloc();
  v4[119] = swift_task_alloc();

  return MEMORY[0x2822009F8](_s24TokenGenerationInference08OnDeviceC15AssetRepositoryC14handleLLMModel33_65818D6FA4B5F545C6B162D7CBE031AELL8llmModel5assety0T7Catalog0f6BackedI0_p_AA0F0VtYa0T15ManagerServices0C5ErrorOYKFTY0_, v3, 0);
}

void type metadata completion function for OnDeviceInferenceAssetObjectE5Runner(uint64_t a1)
{
  type metadata accessor for Asset?(319, &lazy cache variable for type metadata for Asset?, type metadata accessor for Asset);
  if (v1 <= 0x3F)
  {
    type metadata accessor for BaseModel(319, &lazy cache variable for type metadata for LanguageModelRunner, &protocol descriptor for LanguageModelRunner, 0);
    if (v2 <= 0x3F)
    {
      type metadata accessor for E5TransformerLanguageModel(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for [String](319, &lazy cache variable for type metadata for DraftingBehavior?, &type metadata for DraftingBehavior, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          type metadata accessor for [String : String]?(319, &lazy cache variable for type metadata for [String : MetadataSpecialToken]?, &_sSDySS24TokenGenerationInference015MetadataSpecialA0OGMd, &_sSDySS24TokenGenerationInference015MetadataSpecialA0OGMR);
          if (v5 <= 0x3F)
          {
            type metadata accessor for [String : String]?(319, &lazy cache variable for type metadata for [String : [String : MetadataSpecialToken]]?, &_sSDySSSDySS24TokenGenerationInference015MetadataSpecialA0OGGMd, &_sSDySSSDySS24TokenGenerationInference015MetadataSpecialA0OGGMR);
            if (v6 <= 0x3F)
            {
              type metadata accessor for Asset?(319, &lazy cache variable for type metadata for UUID?, MEMORY[0x277CC95F0]);
              if (v7 <= 0x3F)
              {
                type metadata accessor for Asset?(319, &lazy cache variable for type metadata for PromptTemplateConfiguration?, type metadata accessor for PromptTemplateConfiguration);
                if (v8 <= 0x3F)
                {
                  type metadata accessor for [String](319, &lazy cache variable for type metadata for ClassifierMetadata?, &type metadata for ClassifierMetadata, MEMORY[0x277D83D88]);
                  if (v9 <= 0x3F)
                  {
                    type metadata accessor for [String](319, &lazy cache variable for type metadata for StopToken?, &type metadata for StopToken, MEMORY[0x277D83D88]);
                    if (v10 <= 0x3F)
                    {
                      type metadata accessor for Asset?(319, &lazy cache variable for type metadata for PromptPreprocessingTemplateVersion?, MEMORY[0x277D71ED8]);
                      if (v11 <= 0x3F)
                      {
                        swift_cvw_initStructMetadataWithLayoutString();
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

uint64_t type metadata completion function for E5TransformerLanguageModel(uint64_t a1)
{
  result = type metadata accessor for ContinuousClock();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

void type metadata accessor for [String](uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_220952FB4()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&_s15Synchronization6AtomicVySiGMd, &_s15Synchronization6AtomicVySiGMR);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t outlined init with take of Asset?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

Swift::Int specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS24TokenGenerationInference08OnDeviceE11AssetObject_pGMd, &_ss18_DictionaryStorageCySS24TokenGenerationInference08OnDeviceE11AssetObject_pGMR);
  v33 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 40 * v20);
      if (v33)
      {
        outlined init with take of RandomNumberGenerator(v24, v34);
      }

      else
      {
        outlined init with copy of DeterministicLanguageModelProtocol(v24, v34);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = outlined init with take of RandomNumberGenerator(v34, *(v7 + 56) + 40 * v15);
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSbGMd, &_ss18_DictionaryStorageCySSSbGMR);
  v34 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + v20);
      if ((v34 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSi10logitCount_Sbs13OpaquePointerV_SPySiGSgSiSpySfGSitXC8callbackAE9cbContexttGMd, &_ss18_DictionaryStorageCySSSi10logitCount_Sbs13OpaquePointerV_SPySiGSgSiSpySfGSitXC8callbackAE9cbContexttGMR);
  v36 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(v5 + 56) + 24 * v21;
      v26 = *v25;
      v37 = *(v25 + 8);
      if ((v36 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = *(v7 + 56) + 24 * v15;
      *v17 = v26;
      *(v17 + 8) = v37;
      ++*(v7 + 16);
      v5 = v35;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
  v5 = *(v46 - 8);
  MEMORY[0x28223BE20](v46, v6);
  v45 = &v38 - v7;
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSScCyyts5NeverOGGMd, &_ss18_DictionaryStorageCySSScCyyts5NeverOGGMR);
  v43 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v8 + 16))
  {
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v39 = v2;
    v40 = (v5 + 16);
    v41 = v8;
    v42 = v5;
    v44 = (v5 + 32);
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v23 = v20 | (v11 << 6);
      v24 = *(v8 + 56);
      v25 = (*(v8 + 48) + 16 * v23);
      v27 = *v25;
      v26 = v25[1];
      v28 = *(v42 + 72);
      v29 = v24 + v28 * v23;
      if (v43)
      {
        (*v44)(v45, v29, v46);
      }

      else
      {
        (*v40)(v45, v29, v46);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v30 = -1 << *(v10 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v17 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v17 + 8 * v32);
          if (v36 != -1)
          {
            v18 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v27;
      v19[1] = v26;
      result = (*v44)(*(v10 + 56) + v28 * v18, v45, v46);
      ++*(v10 + 16);
      v8 = v41;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_34;
    }

    v37 = 1 << *(v8 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v12, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v37;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy24TokenGenerationInference13AsyncLRUCacheC6KeyRef33_8DC87293709CC156815E18BD803FE0EELLCyAC19ImageEmbeddingCacheC0H033_CFAE1BBD2BB7BB3F3F8CA2528C3DB6E7LLVSay10Foundation4DataVG_GAC10LinkedListAGLLV4NodeCyAE0R4DataAGLLVyAmQ_G_GGMd, &_ss18_DictionaryStorageCy24TokenGenerationInference13AsyncLRUCacheC6KeyRef33_8DC87293709CC156815E18BD803FE0EELLCyAC19ImageEmbeddingCacheC0H033_CFAE1BBD2BB7BB3F3F8CA2528C3DB6E7LLVSay10Foundation4DataVG_GAC10LinkedListAGLLV4NodeCyAE0R4DataAGLLVyAmQ_G_GGMR);
  v30 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      MEMORY[0x223D8F420](*(v20 + 48));
      result = Hasher._finalize()();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for AppAssetGarbageCollector.Manifest.Entry(0);
  v40 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v42 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS24TokenGenerationInference24AppAssetGarbageCollectorV8ManifestV5EntryVGMd, &_ss18_DictionaryStorageCySS24TokenGenerationInference24AppAssetGarbageCollectorV8ManifestV5EntryVGMR);
  v41 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v8 + 16))
  {
    v38 = v2;
    v39 = v8;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v23 = v20 | (v11 << 6);
      v24 = *(v8 + 56);
      v25 = (*(v8 + 48) + 16 * v23);
      v26 = *v25;
      v27 = v25[1];
      v28 = *(v40 + 72);
      v29 = v24 + v28 * v23;
      if (v41)
      {
        outlined init with take of AppAssetGarbageCollector.Manifest.Entry(v29, v42, type metadata accessor for AppAssetGarbageCollector.Manifest.Entry);
      }

      else
      {
        outlined init with copy of AppAssetGarbageCollector.Manifest.Entry(v29, v42, type metadata accessor for AppAssetGarbageCollector.Manifest.Entry);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v30 = -1 << *(v10 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v17 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v17 + 8 * v32);
          if (v36 != -1)
          {
            v18 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v26;
      v19[1] = v27;
      result = outlined init with take of AppAssetGarbageCollector.Manifest.Entry(v42, *(v10 + 56) + v28 * v18, type metadata accessor for AppAssetGarbageCollector.Manifest.Entry);
      ++*(v10 + 16);
      v8 = v39;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v8 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v12, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v37;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSiGMd, &_ss18_DictionaryStorageCySSSiGMR);
  v34 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS24TokenGenerationInference015MetadataSpecialC0OGMd, &_ss18_DictionaryStorageCySS24TokenGenerationInference015MetadataSpecialC0OGMR);
  v38 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v2;
    v37 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v39 = (v12 - 1) & v12;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = v22[1];
      v40 = *v22;
      v24 = *(v5 + 56) + 24 * v21;
      v25 = *v24;
      v26 = *(v24 + 8);
      v27 = *(v24 + 16);
      if ((v38 & 1) == 0)
      {

        outlined copy of MetadataSpecialToken(v25, v26, v27);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v40;
      v16[1] = v23;
      v17 = *(v7 + 56) + 24 * v15;
      *v17 = v25;
      *(v17 + 8) = v26;
      *(v17 + 16) = v27;
      ++*(v7 + 16);
      v5 = v37;
      v12 = v39;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v39 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSDySS24TokenGenerationInference015MetadataSpecialC0OGGMd, &_ss18_DictionaryStorageCySSSDySS24TokenGenerationInference015MetadataSpecialC0OGGMR);
  v34 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS24TokenGenerationInference17ODIELanguageModelV23KeyValueCacheDescriptorVGMd, &_ss18_DictionaryStorageCySS24TokenGenerationInference17ODIELanguageModelV23KeyValueCacheDescriptorVGMR);
  v34 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      v35 = v25[1];
      v36 = *v25;
      if ((v34 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = (*(v7 + 56) + 32 * v15);
      *v17 = v36;
      v17[1] = v35;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v46 = type metadata accessor for NDArray.Buffer();
  v5 = *(v46 - 8);
  MEMORY[0x28223BE20](v46, v6);
  v45 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS4ODIE7NDArrayC6BufferVGMd, &_ss18_DictionaryStorageCySS4ODIE7NDArrayC6BufferVGMR);
  v43 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v8 + 16))
  {
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v39 = v2;
    v40 = (v5 + 16);
    v41 = v8;
    v42 = v5;
    v44 = (v5 + 32);
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v23 = v20 | (v11 << 6);
      v24 = *(v8 + 56);
      v25 = (*(v8 + 48) + 16 * v23);
      v27 = *v25;
      v26 = v25[1];
      v28 = *(v42 + 72);
      v29 = v24 + v28 * v23;
      if (v43)
      {
        (*v44)(v45, v29, v46);
      }

      else
      {
        (*v40)(v45, v29, v46);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v30 = -1 << *(v10 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v17 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v17 + 8 * v32);
          if (v36 != -1)
          {
            v18 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v27;
      v19[1] = v26;
      result = (*v44)(*(v10 + 56) + v28 * v18, v45, v46);
      ++*(v10 + 16);
      v8 = v41;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_34;
    }

    v37 = 1 << *(v8 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v12, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v37;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
  v37 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS4ODIE7NDArrayCGMd, &_ss18_DictionaryStorageCySS4ODIE7NDArrayCGMR);
  v34 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t _s24TokenGenerationInference011TG_OnDeviceC8ProviderC11unloadAsset33_F67B098F505663682541EE68977BD2AALL09inferenceI10IdentifierySS_tYa20ModelManagerServices0C5ErrorOYKF(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[19] = v3;
  v4[20] = a3;
  v4[17] = a1;
  v4[18] = a2;
  v5 = type metadata accessor for InferenceError();
  v4[21] = v5;
  v4[22] = *(v5 - 8);
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](_s24TokenGenerationInference011TG_OnDeviceC8ProviderC11unloadAsset33_F67B098F505663682541EE68977BD2AALL09inferenceI10IdentifierySS_tYa20ModelManagerServices0C5ErrorOYKFTY0_, 0, 0);
}

uint64_t _s24TokenGenerationInference011TG_OnDeviceC8ProviderC11unloadAsset33_F67B098F505663682541EE68977BD2AALL09inferenceI10IdentifierySS_tYa20ModelManagerServices0C5ErrorOYKFTY0_()
{
  v32 = v0;
  if (one-time initialization token for device != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[30] = __swift_project_value_buffer(v1, static Log.device);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[17];
    v4 = v0[18];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v31 = v7;
    *v6 = 136446210;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, &v31);
    _os_log_impl(&dword_220940000, v2, v3, "Handling load out for asset with identifier %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x223D90A10](v7, -1, -1);
    MEMORY[0x223D90A10](v6, -1, -1);
  }

  if (v0[17] == 0xD000000000000017 && 0x8000000220AFD6C0 == v0[18] || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v8 = [objc_opt_self() defaultManager];
    v9 = v0[19];
    v10 = v8;
    __swift_project_boxed_opaque_existential_1((v9 + 16), *(v9 + 40));
    v11 = off_2834512C0[0];
    v0[31] = type metadata accessor for OnDeviceInferenceOverrides(0);
    v12 = v11();
    if (v13)
    {
      v14 = v13;
    }

    else
    {
      v12 = 0xD000000000000022;
      v14 = 0x8000000220AFD7D0;
    }

    v15 = MEMORY[0x223D8E6B0](v12, v14);

    v16 = [v10 fileExistsAtPath_];

    if (v16)
    {
      outlined init with copy of DeterministicLanguageModelProtocol(v0[19] + 136, (v0 + 12));
      __swift_project_boxed_opaque_existential_1(v0 + 12, v0[15]);
      __swift_project_boxed_opaque_existential_1((v9 + 16), *(v9 + 40));
      v17 = v11();
      v0[32] = v18;
      if (v18)
      {
        v19 = v17;
      }

      else
      {
        v19 = 0xD000000000000022;
      }

      if (v18)
      {
        v20 = v18;
      }

      else
      {
        v20 = 0x8000000220AFD7D0;
      }

      v21 = swift_task_alloc();
      v0[33] = v21;
      *v21 = v0;
      v21[1] = _s24TokenGenerationInference011TG_OnDeviceC8ProviderC11unloadAsset33_F67B098F505663682541EE68977BD2AALL09inferenceI10IdentifierySS_tYa20ModelManagerServices0C5ErrorOYKFTQ1_;
      v22 = v0[28];
    }

    else
    {
      v23 = v0[19];
      outlined init with copy of DeterministicLanguageModelProtocol(v23 + 136, (v0 + 2));
      __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
      __swift_project_boxed_opaque_existential_1((v23 + 16), *(v23 + 40));
      v24 = (off_283451290)();
      v0[35] = v25;
      if (v25)
      {
        v19 = v24;
      }

      else
      {
        v19 = 0xD00000000000001DLL;
      }

      if (v25)
      {
        v20 = v25;
      }

      else
      {
        v20 = 0x8000000220AFD790;
      }

      v26 = swift_task_alloc();
      v0[36] = v26;
      *v26 = v0;
      v26[1] = _s24TokenGenerationInference011TG_OnDeviceC8ProviderC11unloadAsset33_F67B098F505663682541EE68977BD2AALL09inferenceI10IdentifierySS_tYa20ModelManagerServices0C5ErrorOYKFTQ4_;
      v22 = v0[27];
    }

    v27 = v19;
    v28 = v20;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1((v0[19] + 136), *(v0[19] + 160));
    v29 = swift_task_alloc();
    v0[41] = v29;
    *v29 = v0;
    v29[1] = _s24TokenGenerationInference011TG_OnDeviceC8ProviderC11unloadAsset33_F67B098F505663682541EE68977BD2AALL09inferenceI10IdentifierySS_tYa20ModelManagerServices0C5ErrorOYKFTQ10_;
    v22 = v0[25];
    v28 = v0[18];
    v27 = v0[17];
  }

  return _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC06unloadF010identifierySS_tYa20ModelManagerServices0C5ErrorOYKF(v27, v28, v22);
}

void sub_22095399C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = TGIE5ANESessionObjC;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::~ANEAJAXE5MLModel(cgm::token_generation_inference::ajax::ANEAJAXE5MLModel *this)
{
  *this = &unk_28344D488;
  *(this + 6) = &unk_28344D510;
  v2 = *(this + 34);
  if (v2)
  {
    *(this + 35) = v2;
    operator delete(v2);
  }

  v4 = (this + 248);
  std::vector<cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::TokenRecord>::__destroy_vector::operator()[abi:ne200100](&v4);
  v3 = *(this + 30);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = (this + 208);
  std::vector<cgm::token_generation_inference::ajax::utils::StreamOpPair>::__destroy_vector::operator()[abi:ne200100](&v4);
  v4 = (this + 184);
  std::vector<cgm::token_generation_inference::ajax::utils::StreamOpPair>::__destroy_vector::operator()[abi:ne200100](&v4);
  v4 = (this + 160);
  std::vector<cgm::token_generation_inference::ajax::utils::StreamOpPair>::__destroy_vector::operator()[abi:ne200100](&v4);
  if (*(this + 79) < 0)
  {
    operator delete(*(this + 7));
  }

  cgm::token_generation_inference::ajax::AJAXE5MLModel::~AJAXE5MLModel(this);
}

{
  cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::~ANEAJAXE5MLModel(this);

  JUMPOUT(0x223D8FE50);
}

void std::vector<cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::TokenRecord>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::TokenRecord>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC06unloadF010identifierySS_tYa20ModelManagerServices0C5ErrorOYKF(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[51] = v3;
  v4[52] = a3;
  v4[49] = a1;
  v4[50] = a2;
  v5 = type metadata accessor for InferenceError.Context();
  v4[53] = v5;
  v4[54] = *(v5 - 8);
  v4[55] = swift_task_alloc();

  return MEMORY[0x2822009F8](_s24TokenGenerationInference08OnDeviceC15AssetRepositoryC06unloadF010identifierySS_tYa20ModelManagerServices0C5ErrorOYKFTY0_, v3, 0);
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC06unloadF010identifierySS_tYa20ModelManagerServices0C5ErrorOYKFTY0_()
{
  v93 = v0;
  if (one-time initialization token for device != -1)
  {
LABEL_47:
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 448) = __swift_project_value_buffer(v1, static Log.device);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = *(v0 + 392);
    v4 = *(v0 + 400);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *&v90 = v7;
    *v6 = 136446210;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, &v90);
    _os_log_impl(&dword_220940000, v2, v3, "Unloading asset %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x223D90A10](v7, -1, -1);
    MEMORY[0x223D90A10](v6, -1, -1);
  }

  v8 = *(v0 + 400);
  v9 = *(v0 + 408);
  v10 = *(v0 + 392);
  swift_beginAccess();
  v11 = *(v9 + 184);

  LOBYTE(v8) = specialized Set.contains(_:)(v10, v8, v11);

  if ((v8 & 1) == 0)
  {
    v19 = *(v0 + 400);
    v20 = *(v0 + 408);
    v21 = *(v0 + 392);
    swift_beginAccess();

    specialized Set._Variant.insert(_:)(&v90, v21, v19);
    swift_endAccess();

    swift_beginAccess();
    v22 = *(v20 + 128);
    if (*(v22 + 16))
    {
      v24 = *(v0 + 392);
      v23 = *(v0 + 400);

      v25 = specialized __RawDictionaryStorage.find<A>(_:)(v24, v23);
      if (v26)
      {
        v27 = *(v0 + 400);
        v28 = *(v0 + 392);
        outlined init with copy of DeterministicLanguageModelProtocol(*(v22 + 56) + 40 * v25, v0 + 72);

        outlined destroy of [Int](v0 + 72, &_s24TokenGenerationInference08OnDeviceC11AssetObject_pSgMd, &_s24TokenGenerationInference08OnDeviceC11AssetObject_pSgMR);
        v92 = 0;
        v90 = 0u;
        v91 = 0u;
        swift_beginAccess();

        specialized Dictionary.subscript.setter(&v90, v28, v27);
        swift_endAccess();
        v92 = 0;
        v90 = 0u;
        v91 = 0u;
        swift_beginAccess();

        specialized Dictionary.subscript.setter(&v90, v28, v27);
        goto LABEL_14;
      }
    }

    v29 = *(v0 + 408);
    *(v0 + 72) = 0u;
    *(v0 + 88) = 0u;
    *(v0 + 104) = 0;
    outlined destroy of [Int](v0 + 72, &_s24TokenGenerationInference08OnDeviceC11AssetObject_pSgMd, &_s24TokenGenerationInference08OnDeviceC11AssetObject_pSgMR);
    swift_beginAccess();
    v30 = *(v29 + 152);
    if (*(v30 + 16))
    {
      v32 = *(v0 + 392);
      v31 = *(v0 + 400);

      v33 = specialized __RawDictionaryStorage.find<A>(_:)(v32, v31);
      if (v34)
      {
        v36 = *(v0 + 392);
        v35 = *(v0 + 400);
        outlined init with copy of DeterministicLanguageModelProtocol(*(v30 + 56) + 40 * v33, v0 + 112);

        outlined destroy of [Int](v0 + 112, &_s24TokenGenerationInference08OnDeviceC11AssetObject_pSgMd, &_s24TokenGenerationInference08OnDeviceC11AssetObject_pSgMR);
        v92 = 0;
        v90 = 0u;
        v91 = 0u;
        swift_beginAccess();

        specialized Dictionary.subscript.setter(&v90, v36, v35);
LABEL_14:
        swift_endAccess();
        v37 = *(v0 + 408);
        swift_beginAccess();
        v38 = *(v37 + 144);
        v39 = -1;
        v40 = -1 << *(v38 + 32);
        if (-v40 < 64)
        {
          v39 = ~(-1 << -v40);
        }

        v41 = v39 & *(v38 + 64);
        v42 = (63 - v40) >> 6;
        swift_bridgeObjectRetain_n();
        v43 = 0;
        while (v41)
        {
LABEL_22:
          v46 = *(v0 + 392);
          v45 = *(v0 + 400);
          v47 = __clz(__rbit64(v41)) | (v43 << 6);
          v48 = (*(v38 + 48) + 16 * v47);
          v50 = *v48;
          v49 = v48[1];
          outlined init with copy of DeterministicLanguageModelProtocol(*(v38 + 56) + 40 * v47, v0 + 32);
          *(v0 + 16) = v50;
          *(v0 + 24) = v49;
          if (v50 == v46 && v49 == v45)
          {

            outlined destroy of [Int](v0 + 16, &_sSS3key_24TokenGenerationInference08OnDeviceD11AssetObject_p5valuetMd, &_sSS3key_24TokenGenerationInference08OnDeviceD11AssetObject_p5valuetMR);
LABEL_41:

            v78 = Logger.logObject.getter();
            v79 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v78, v79))
            {
              v81 = *(v0 + 392);
              v80 = *(v0 + 400);
              v82 = swift_slowAlloc();
              v83 = swift_slowAlloc();
              *&v90 = v83;
              *v82 = 136446210;
              *(v82 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v81, v80, &v90);
              _os_log_impl(&dword_220940000, v78, v79, "Suspending unload for the asset %{public}s since its currently in use", v82, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v83);
              MEMORY[0x223D90A10](v83, -1, -1);
              MEMORY[0x223D90A10](v82, -1, -1);
            }

            v85 = *(v0 + 400);
            v84 = *(v0 + 408);
            v86 = *(v0 + 392);
            lazy protocol witness table accessor for type InferenceError and conformance InferenceError(&lazy protocol witness table cache variable for type OnDeviceInferenceAssetRepository and conformance OnDeviceInferenceAssetRepository, v87, type metadata accessor for OnDeviceInferenceAssetRepository, &protocol conformance descriptor for OnDeviceInferenceAssetRepository);
            v88 = swift_task_alloc();
            *(v0 + 456) = v88;
            v88[2] = v84;
            v88[3] = v86;
            v88[4] = v85;
            v89 = swift_task_alloc();
            *(v0 + 464) = v89;
            *v89 = v0;
            v89[1] = _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC06unloadF010identifierySS_tYa20ModelManagerServices0C5ErrorOYKFTQ1_;

            return MEMORY[0x2822007B8]();
          }

          v41 &= v41 - 1;
          v52 = _stringCompareWithSmolCheck(_:_:expecting:)();

          outlined destroy of [Int](v0 + 16, &_sSS3key_24TokenGenerationInference08OnDeviceD11AssetObject_p5valuetMd, &_sSS3key_24TokenGenerationInference08OnDeviceD11AssetObject_p5valuetMR);
          if (v52)
          {
            goto LABEL_41;
          }
        }

        while (1)
        {
          v44 = v43 + 1;
          if (__OFADD__(v43, 1))
          {
            __break(1u);
            goto LABEL_47;
          }

          if (v44 >= v42)
          {
            break;
          }

          v41 = *(v38 + 64 + 8 * v44);
          ++v43;
          if (v41)
          {
            v43 = v44;
            goto LABEL_22;
          }
        }

        v53 = *(v0 + 400);
        v54 = *(v0 + 392);
        OnDeviceInferenceAssetRepository.resumeSuspendedFetch()();
        swift_beginAccess();
        specialized Set._Variant.remove(_:)(v54, v53);
        swift_endAccess();

        v12 = Logger.logObject.getter();
        v13 = static os_log_type_t.default.getter();

        if (!os_log_type_enabled(v12, v13))
        {
          goto LABEL_37;
        }

        v56 = *(v0 + 392);
        v55 = *(v0 + 400);
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        *&v90 = v17;
        *v16 = 136446210;
        *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v55, &v90);
        v18 = "Finished unloading asset %{public}s";
        goto LABEL_30;
      }
    }

    *(v0 + 112) = 0u;
    *(v0 + 128) = 0u;
    *(v0 + 144) = 0;
    outlined destroy of [Int](v0 + 112, &_s24TokenGenerationInference08OnDeviceC11AssetObject_pSgMd, &_s24TokenGenerationInference08OnDeviceC11AssetObject_pSgMR);

    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v57, v58))
    {
      v60 = *(v0 + 392);
      v59 = *(v0 + 400);
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      *&v90 = v62;
      *v61 = 136446210;
      *(v61 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v60, v59, &v90);
      _os_log_impl(&dword_220940000, v57, v58, "Asset is not loaded %{public}s", v61, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v62);
      MEMORY[0x223D90A10](v62, -1, -1);
      MEMORY[0x223D90A10](v61, -1, -1);
    }

    v63 = *(v0 + 432);
    v64 = *(v0 + 440);
    v66 = *(v0 + 416);
    v65 = *(v0 + 424);
    v68 = *(v0 + 392);
    v67 = *(v0 + 400);
    *&v90 = 0x207465737341;
    *(&v90 + 1) = 0xE600000000000000;
    MEMORY[0x223D8E780](v68, v67);
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    InferenceError.Context.init(additionalDescription:domain:code:userInfo:fallbackAllowed:)();
    (*(v63 + 16))(v66, v64, v65);
    v69 = *MEMORY[0x277D29DD8];
    v70 = type metadata accessor for InferenceError();
    (*(*(v70 - 8) + 104))(v66, v69, v70);
    lazy protocol witness table accessor for type InferenceError and conformance InferenceError(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, 255, MEMORY[0x277D29DE0], MEMORY[0x277D29DE8]);
    swift_willThrowTypedImpl();
    (*(v63 + 8))(v64, v65);
    swift_beginAccess();
    specialized Set._Variant.remove(_:)(v68, v67);
    swift_endAccess();

    v12 = Logger.logObject.getter();
    v71 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v12, v71))
    {
      v73 = *(v0 + 392);
      v72 = *(v0 + 400);
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      *&v90 = v75;
      *v74 = 136446210;
      *(v74 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v73, v72, &v90);
      _os_log_impl(&dword_220940000, v12, v71, "Finished unloading asset %{public}s", v74, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v75);
      MEMORY[0x223D90A10](v75, -1, -1);
      MEMORY[0x223D90A10](v74, -1, -1);
    }

    goto LABEL_37;
  }

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v15 = *(v0 + 392);
    v14 = *(v0 + 400);
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *&v90 = v17;
    *v16 = 136446210;
    *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v14, &v90);
    v18 = "Asset %{public}s is already being unloaded, ignoring duplicate unload request";
LABEL_30:
    _os_log_impl(&dword_220940000, v12, v13, v18, v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x223D90A10](v17, -1, -1);
    MEMORY[0x223D90A10](v16, -1, -1);
  }

LABEL_37:

  v76 = *(v0 + 8);

  return v76();
}

void std::vector<cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::TokenRecord>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 32)
  {
    v4 = *(i - 24);
    if (v4)
    {
      *(i - 16) = v4;
      operator delete(v4);
    }
  }

  a1[1] = v2;
}

uint64_t std::__shared_ptr_pointer<E5RT::ExecutionStream  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<E5RT::ExecutionStreamOperation  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_220954918(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference5AssetVSgMd, &_s24TokenGenerationInference5AssetVSgMR);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[13];
    goto LABEL_11;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference27PromptTemplateConfigurationVSgMd, &_s24TokenGenerationInference27PromptTemplateConfigurationVSgMR);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[15];
    goto LABEL_11;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore34PromptPreprocessingTemplateVersionOSgMd, &_s19TokenGenerationCore34PromptPreprocessingTemplateVersionOSgMR);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[18];

  return v16(v17, a2, v15);
}

uint64_t cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::moveToDynamicState(cgm::token_generation_inference::ajax::utils ***this)
{
  v2 = cgm::token_generation_inference::common::logging::CGMTGILogger::GENERAL(this);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v16[0] = 0;
    _os_log_impl(&dword_220940000, v2, OS_LOG_TYPE_DEFAULT, "ANE model moving to dynamic state. Unwiring and deallocating IO buffers", v16, 2u);
  }

  result = ((*this)[1])(this, 0);
  v4 = this[23];
  v5 = this[24];
  while (v4 != v5)
  {
    E5RT::ExecutionStream::ResetStream(v4[2]);
    v6 = *v4;
    v4 += 4;
    result = cgm::token_generation_inference::ajax::utils::unbindAllMemoryFromOperation(v6, v7);
  }

  v8 = this[20];
  v9 = this[21];
  while (v8 != v9)
  {
    E5RT::ExecutionStream::ResetStream(v8[2]);
    v10 = *v8;
    v8 += 4;
    result = cgm::token_generation_inference::ajax::utils::unbindAllMemoryFromOperation(v10, v11);
  }

  v12 = this[26];
  v13 = this[27];
  while (v12 != v13)
  {
    E5RT::ExecutionStream::ResetStream(v12[2]);
    v14 = *v12;
    v12 += 4;
    result = cgm::token_generation_inference::ajax::utils::unbindAllMemoryFromOperation(v14, v15);
  }

  *(this + 296) = 1;
  return result;
}

void std::vector<unsigned long>::resize(void *result, unint64_t a2)
{
  v2 = (result[1] - *result) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      result[1] = *result + 8 * a2;
    }
  }

  else
  {
    std::vector<unsigned long>::__append(result, a2 - v2);
  }
}

uint64_t E5TransformerLanguageModel.__deallocating_deinit()
{
  E5TransformerLanguageModel.deinit();

  return swift_deallocClassInstance();
}

char *E5TransformerLanguageModel.deinit()
{

  swift_unknownObjectRelease();

  v1 = OBJC_IVAR____TtC24TokenGenerationInference26E5TransformerLanguageModel_clock;
  v2 = type metadata accessor for ContinuousClock();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

void cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::reset(cgm::token_generation_inference::ajax::ANEAJAXE5MLModel *this, unint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = (this + 248);
  if (a2 > (*(this + 32) - *(this + 31)) >> 5)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    v16 = *(this + 10);
    std::string::basic_string[abi:ne200100]<0>(&v17, "reset");
    cgm::token_generation_inference::ajax::AJAXE5Error::createContextExceededError(v16, &v17, exception);
  }

  v5 = *(this + 34);
  v6 = 0;
  v7 = *(this + 35) - v5;
  if (v7)
  {
    v8 = 0;
    v9 = v7 >> 3;
    if (v9 <= 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9;
    }

    while (1)
    {
      v11 = v6 ? v5[v6] + ~v5[v6 - 1] : *v5;
      if (a2 - v8 <= v11)
      {
        break;
      }

      v8 += v11;
      if (v10 == ++v6)
      {
        v6 = v10;
        break;
      }
    }

    if (v6 > v9)
    {
      cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::reset();
    }
  }

  std::vector<unsigned long>::resize(this + 34, v6);
  std::vector<cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::TokenRecord>::resize(v3, v6 + a2);
  v13 = cgm::token_generation_inference::common::logging::CGMTGILogger::GENERAL(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v14 = (*(this + 32) - *(this + 31)) >> 5;
    v17 = 134218496;
    v18 = a2;
    v19 = 2048;
    v20 = v14;
    v21 = 2048;
    v22 = v6;
    _os_log_debug_impl(&dword_220940000, v13, OS_LOG_TYPE_DEBUG, "Reset called with startIndex=%zu, end of function call mContextTokensSize=%zu and numHoles=%zu", &v17, 0x20u);
  }
}

void sub_220954FE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v15 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v15)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v14);
  goto LABEL_6;
}

void std::vector<cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::TokenRecord>::resize(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = (v3 - *a1) >> 5;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      v6 = *a1 + 32 * a2;
      while (v3 != v6)
      {
        v7 = *(v3 - 24);
        if (v7)
        {
          *(v3 - 16) = v7;
          operator delete(v7);
        }

        v3 -= 32;
      }

      a1[1] = v6;
    }
  }

  else
  {
    v5 = a2 - v4;

    std::vector<cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::TokenRecord>::__append(a1, v5);
  }
}

uint64_t cgm::token_generation_inference::ajax::utils::unbindAllMemoryFromOperation(cgm::token_generation_inference::ajax::utils *this, E5RT::ExecutionStreamOperation *a2)
{
  InputPorts = E5RT::ExecutionStreamOperation::GetInputPorts(this);
  std::unordered_map<std::string,std::shared_ptr<E5RT::IOPort>>::unordered_map(v14, InputPorts);
  for (i = v15; i; i = *i)
  {
    v16 = 0;
    v17 = 0;
    E5RT::IOPort::BindMemoryObject();
    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>>>::~__hash_table(v14);
  v5 = E5RT::ExecutionStreamOperation::GetInOutPorts(this);
  std::unordered_map<std::string,std::shared_ptr<E5RT::IOPort>>::unordered_map(v12, v5);
  for (j = v13; j; j = *j)
  {
    v16 = 0;
    v17 = 0;
    E5RT::IOPort::BindMemoryObject();
    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>>>::~__hash_table(v12);
  OutputPorts = E5RT::ExecutionStreamOperation::GetOutputPorts(this);
  std::unordered_map<std::string,std::shared_ptr<E5RT::IOPort>>::unordered_map(v10, OutputPorts);
  for (k = v11; k; k = *k)
  {
    v16 = 0;
    v17 = 0;
    E5RT::IOPort::BindMemoryObject();
    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }
  }

  return std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>>>::~__hash_table(v10);
}

void sub_2209551B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  v5 = *(v3 - 24);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::IOPort>>>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

uint64_t std::__shared_ptr_pointer<E5RT::BufferObject  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SiTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2iGMd, &_ss18_DictionaryStorageCyS2iGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t KVLRUCache.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t _s24TokenGenerationInference011TG_OnDeviceC8ProviderC15transitionAsset_2toy20ModelManagerServices0cgI10DescriptorV_AF9LoadStateOtYaAF0C5ErrorOYKFTQ3_()
{
  v2 = *v1;

  if (v0)
  {
    v3 = v2[19];
    v4 = v2[17];
    v5 = v2[12];
    v6 = *(v2[13] + 32);
    v2[24] = v6;
    v6(v3, v4, v5);
    v7 = _s24TokenGenerationInference011TG_OnDeviceC8ProviderC15transitionAsset_2toy20ModelManagerServices0cgI10DescriptorV_AF9LoadStateOtYaAF0C5ErrorOYKFTY5_;
  }

  else
  {
    v7 = _s24TokenGenerationInference011TG_OnDeviceC8ProviderC15transitionAsset_2toy20ModelManagerServices0cgI10DescriptorV_AF9LoadStateOtYaAF0C5ErrorOYKFTY4_;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t type metadata accessor for E5TransformerLanguageModel(uint64_t a1)
{
  result = type metadata singleton initialization cache for E5TransformerLanguageModel;
  if (!type metadata singleton initialization cache for E5TransformerLanguageModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t specialized E5TransformerLanguageModel.__allocating_init(e5Runner:name:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = (*(a6 + 80))(a5, a6);
  type metadata accessor for KVLRUCache();
  v12 = swift_allocObject();
  v13 = [objc_allocWithZone(MEMORY[0x277CBEA78]) init];
  *(v12 + 16) = v13;
  [v13 setTotalCostLimit_];
  v14 = swift_allocObject();

  return specialized E5TransformerLanguageModel.init(e5Runner:kvCache:name:)(a1, v12, a2, a3, v14, a5, a6);
}

uint64_t specialized E5TransformerLanguageModel.init(e5Runner:kvCache:name:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(a5 + 32) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy24TokenGenerationInference26E5TransformerLanguageModelC9NodeStateVGMd, &_ss23_ContiguousArrayStorageCy24TokenGenerationInference26E5TransformerLanguageModelC9NodeStateVGMR);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_220AE8A30;
  v14 = MEMORY[0x277D84F90];
  v15 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SiTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *(v13 + 32) = 0;
  *(v13 + 40) = 0;
  *(v13 + 48) = 1;
  *(v13 + 56) = v15;
  *(v13 + 64) = 0;
  *(v13 + 72) = 1;
  *(a5 + 56) = v13;
  *(a5 + 64) = 0;
  *(a5 + 72) = static Duration.zero.getter();
  *(a5 + 80) = v16;
  ContinuousClock.init()();
  *(a5 + OBJC_IVAR____TtC24TokenGenerationInference26E5TransformerLanguageModel_currentQueryNodes) = &outlined read-only object #0 of specialized E5TransformerLanguageModel.init(e5Runner:kvCache:name:);
  *(a5 + OBJC_IVAR____TtC24TokenGenerationInference26E5TransformerLanguageModel_currentPromptModuleNodes) = v14;
  *(a5 + OBJC_IVAR____TtC24TokenGenerationInference26E5TransformerLanguageModel_allPromptModuleNodes) = v14;
  v17 = a5 + OBJC_IVAR____TtC24TokenGenerationInference26E5TransformerLanguageModel_prefixKVCacheTokensMatchCount;
  *v17 = 0;
  *(v17 + 8) = 1;
  v18 = a5 + OBJC_IVAR____TtC24TokenGenerationInference26E5TransformerLanguageModel_promptModulesKVCacheTokensMatchCount;
  *v18 = 0;
  *(v18 + 8) = 1;
  *(a5 + 40) = a1;
  *(a5 + 48) = a7;
  *(a5 + OBJC_IVAR____TtC24TokenGenerationInference26E5TransformerLanguageModel_lruKVCache) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  return a5;
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed E5RunnerLogitsProtocol?, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  swift_unknownObjectRetain();
  v6 = a3;
  v5(a2, a3);

  return swift_unknownObjectRelease();
}

void closure #3 in closure #1 in E5RunnerObjC.run(tokens:computeLogitsTokenCount:tokenMasks:presampler:)(void *a1, void *a2, void **a3, uint64_t *a4, void *a5, char **a6, uint64_t a7, uint64_t a8)
{
  v16 = type metadata accessor for ContinuousClock();
  MEMORY[0x28223BE20](v16, v17);
  v20 = v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v21 = *a4 + 1;
    if (__OFADD__(*a4, 1))
    {
      __break(1u);
      goto LABEL_23;
    }

    v41[0] = v18;
    *a4 = v21;
    swift_unknownObjectRetain();
    v22 = [a5 getNumTokensProcessed];
    v23 = v22 - a6;
    if (v22 > a6)
    {
      if (!__OFSUB__(v22, a6))
      {
        a6 = &selRef__encodedImageByteCount;
        v24 = [a1 numTokens];
        if (v24 >= v23)
        {
          v25 = v23;
        }

        else
        {
          v25 = v24;
        }

        v26 = [a1 numTokens];
        v27 = (v26 - v25);
        if (!__OFSUB__(v26, v25))
        {
          v28 = ContinuousClock.init()();
          MEMORY[0x28223BE20](v28, v29);
          v41[-6] = a7;
          v41[-5] = a1;
          v41[-4] = v27;
          v41[-3] = v25;
          v41[-2] = a8;
          lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock();
          Clock.measure(_:)();
          (*(v41[0] + 8))(v20, v16);
          if (one-time initialization token for device == -1)
          {
            goto LABEL_10;
          }

          goto LABEL_25;
        }

LABEL_24:
        __break(1u);
LABEL_25:
        swift_once();
LABEL_10:
        v30 = type metadata accessor for Logger();
        __swift_project_value_buffer(v30, static Log.device);
        swift_unknownObjectRetain();
        v31 = Logger.logObject.getter();
        v32 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          *v33 = 134218240;
          v34 = Duration.components.getter();
          Duration.components.getter();
          *(v33 + 4) = (v35 * 1.0e-18 + v34) * 1000000.0;
          *(v33 + 12) = 2048;
          *(v33 + 14) = [a1 a6[42]];
          swift_unknownObjectRelease();
          _os_log_impl(&dword_220940000, v31, v32, "Took %f µsec to presample %ld token(s)", v33, 0x16u);
          MEMORY[0x223D90A10](v33, -1, -1);
          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease_n();
        }

        return;
      }

LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    if (a2)
    {
      v36 = *a3;
      *a3 = a2;
      v37 = a2;
      v38 = v36;
    }

    else
    {
      v39 = [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:@"com.apple.TokenGenerationInference.E5Runner" code:0 userInfo:0];
      v40 = *a3;
      *a3 = v39;
      v38 = v40;
    }
  }
}

void cgm::token_generation_inference::ajax::ane::findBestStreamOpForQuery<cgm::token_generation_inference::ajax::utils::StreamOpPair>(uint64_t *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, E5RT::ExecutionStreamOperation **a5@<X8>)
{
  v45 = 0u;
  v46 = 0u;
  v5 = *a1;
  v42 = a1[1];
  if (*a1 == v42)
  {
    goto LABEL_65;
  }

  v34 = 0;
  v35 = 0;
  v41 = a3 - a4;
  v38 = a5[1];
  v39 = *a5;
  v40 = -1;
  v36 = a5[2];
  v37 = a5[3];
  while (1)
  {
    v9 = *v5;
    v8 = *(v5 + 8);
    *v44 = *v5;
    *&v44[8] = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v10 = *(v5 + 16);
    v11 = *(v5 + 24);
    *&v44[16] = v10;
    *&v44[24] = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    InputPorts = E5RT::ExecutionStreamOperation::GetInputPorts(v9);
    QueryLength = cgm::token_generation_inference::ajax::ane::getQueryLength(InputPorts);
    ContextLength = cgm::token_generation_inference::ajax::ane::getContextLength(v9, v14);
    OutputPorts = E5RT::ExecutionStreamOperation::GetOutputPorts(v9);
    std::string::basic_string[abi:ne200100]<0>(v47, "out_logits");
    v17 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>>>::find<std::string>(OutputPorts, v47);
    if (v48 < 0)
    {
      operator delete(v47[0]);
    }

    v18 = a2 % QueryLength;
    if (QueryLength >= a3)
    {
      v19 = a3;
    }

    else
    {
      v19 = QueryLength;
    }

    v20 = v18 + v19;
    v21 = v20 > QueryLength;
    if (v20 <= QueryLength)
    {
      v22 = a2 % QueryLength;
    }

    else
    {
      v22 = 0;
    }

    if (v21)
    {
      v23 = QueryLength;
    }

    else
    {
      v23 = 0;
    }

    if (QueryLength + a2 - v18 + v23 <= ContextLength)
    {
      v26 = QueryLength - v22;
      if (QueryLength < a3 || v26 <= v41)
      {
        if (v17 || v26 <= v41)
        {
          v27 = QueryLength == v35;
          v28 = ContextLength < v40 && QueryLength == v35;
          if (ContextLength != v40)
          {
            v27 = 0;
          }

          v29 = v26 <= v41 && v27;
          if (v17)
          {
            v29 = 0;
          }

          if (QueryLength > v35 || v28 || v29)
          {
            if (v8)
            {
              atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            *&v45 = v9;
            *(&v45 + 1) = v8;
            if (v34)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v34);
              v10 = *&v44[16];
              v11 = *&v44[24];
            }

            if (v11)
            {
              atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v30 = *(&v46 + 1);
            *&v46 = v10;
            *(&v46 + 1) = v11;
            if (v30)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v30);
            }

            v24 = 0;
            v34 = v8;
            v35 = QueryLength;
            v40 = ContextLength;
          }

          else
          {
            v24 = 0;
          }

LABEL_51:
          v25 = a5;
          if (!v11)
          {
            goto LABEL_53;
          }

LABEL_52:
          std::__shared_weak_count::__release_shared[abi:ne200100](v11);
          goto LABEL_53;
        }
      }

      else if (v17)
      {
        v24 = 1;
        memset(v44, 0, sizeof(v44));
        v38 = v8;
        v39 = v9;
        v36 = v10;
        v37 = v11;
        v25 = a5;
        goto LABEL_53;
      }

      v24 = 3;
      goto LABEL_51;
    }

    v24 = 0;
    v25 = a5;
    if (v11)
    {
      goto LABEL_52;
    }

LABEL_53:
    if (*&v44[8])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&v44[8]);
    }

    if (v24 != 3 && v24)
    {
      break;
    }

    v5 += 32;
    if (v5 == v42)
    {
      v25[2] = v36;
      v25[3] = v37;
      *v25 = v39;
      v25[1] = v38;
      if (v40 != -1)
      {
        v31 = v45;
        v32 = v46;
        v45 = 0uLL;
        *v25 = v31;
        *(v25 + 1) = v32;
        goto LABEL_62;
      }

LABEL_65:
      exception = __cxa_allocate_exception(0x18uLL);
      std::string::basic_string[abi:ne200100]<0>(v44, "Could not find op to run next query");
      cgm::token_generation_inference::ajax::AJAXE5Error::AJAXE5Error(exception, 0, v44);
    }
  }

  v25[2] = v36;
  v25[3] = v37;
  *v25 = v39;
  v25[1] = v38;
  if (*(&v46 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v46 + 1));
  }

LABEL_62:
  if (*(&v45 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v45 + 1));
  }
}

void sub_220955F6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, char a26)
{
  if (a24 < 0)
  {
    operator delete(__p);
    if ((v27 & 1) == 0)
    {
LABEL_6:
      cgm::token_generation_inference::ajax::utils::AJAXKVCache::~AJAXKVCache(&a26);
      _Unwind_Resume(a1);
    }
  }

  else if (!v27)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v26);
  goto LABEL_6;
}

void cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::fillCacheHolesIfNeeded(cgm::token_generation_inference::ajax::ANEAJAXE5MLModel *this, unint64_t a2, char a3)
{
  if (*(this + 34) != *(this + 35))
  {
    v23 = this;
    v4 = (this + 248);
    if ((a3 & 1) != 0 || *(this + 10) - ((*(this + 32) - *(this + 31)) >> 5) < a2)
    {
      v5 = *(*(this + 23) + 8);
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      std::string::basic_string[abi:ne200100]<0>(&__p, "state_keys_LHC");
      v6 = E5RT::ExecutionStreamOperation::GetInOutPortRef();
      if (v22 < 0)
      {
        operator delete(__p);
      }

      PortDescriptorRef = E5RT::IOPort::GetPortDescriptorRef(v6);
      E5RT::IOPort::GetMemoryObject(&__p, v6);
      v8 = E5RT::MemoryObject::Buffer(__p);
      DataSpan = E5RT::BufferObject::GetDataSpan(v8);
      cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::fillCacheHolesIfNeeded(unsigned long,BOOL)::$_1::operator()(&v23, PortDescriptorRef, DataSpan, v10);
      if (v21)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v21);
      }

      std::string::basic_string[abi:ne200100]<0>(&__p, "state_values_LHC");
      v11 = E5RT::ExecutionStreamOperation::GetInOutPortRef();
      if (v22 < 0)
      {
        operator delete(__p);
      }

      v12 = E5RT::IOPort::GetPortDescriptorRef(v11);
      E5RT::IOPort::GetMemoryObject(&__p, v11);
      v13 = E5RT::MemoryObject::Buffer(__p);
      v14 = E5RT::BufferObject::GetDataSpan(v13);
      cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::fillCacheHolesIfNeeded(unsigned long,BOOL)::$_1::operator()(&v23, v12, v14, v15);
      if (v21)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v21);
      }

      *(this + 35) = *(this + 34);
      v16 = *(this + 31);
      v17 = *(this + 32);
      while (1)
      {
        if (v16 == v17)
        {
          v16 = *(this + 32);
          goto LABEL_19;
        }

        if (*v16 == -1)
        {
          break;
        }

        v16 += 8;
      }

      if (v16 != v17)
      {
        v18 = v16 + 8;
        if (v16 + 8 != v17)
        {
          do
          {
            if (*v18 != -1)
            {
              *v16 = *v18;
              v19 = v16 + 8;
              std::vector<signed char>::__move_assign((v16 + 2), (v18 + 2));
              v16 = v19;
            }

            v18 += 8;
          }

          while (v18 != v17);
          v17 = *(this + 32);
        }
      }

LABEL_19:
      std::vector<cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::TokenRecord>::erase(v4, v16, v17);
      if (v5)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v5);
      }
    }
  }
}

void sub_220956200(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t cgm::token_generation_inference::ajax::ane::getContextLength(cgm::token_generation_inference::ajax::ane *this, const E5RT::ExecutionStreamOperation *a2)
{
  InputPorts = E5RT::ExecutionStreamOperation::GetInputPorts(this);
  std::string::basic_string[abi:ne200100]<0>(&__p, "in_relative_positions_CT");
  v3 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>>>::find<std::string>(InputPorts, &__p.__r_.__value_.__l.__data_);
  v4 = v3;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (v4)
    {
      goto LABEL_8;
    }
  }

  else if (v3)
  {
    goto LABEL_8;
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "in_causal_mask");
  v4 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>>>::find<std::string>(InputPorts, &__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (!v4)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    std::string::basic_string[abi:ne200100]<0>(&__p, "Cannot find in_relative_positions_CT or in_causal_mask on extend/prompt function.");
    cgm::token_generation_inference::ajax::AJAXE5Error::AJAXE5Error(exception, 1, &__p);
  }

LABEL_8:
  E5RT::IOPort::GetPortDescriptor(&__p, v4[5]);
  v5 = E5RT::OperandDescriptor::TensorDescriptor(__p.__r_.__value_.__l.__data_);
  v6 = *(*E5RT::TensorDescriptor::GetTensorShape(v5) + 8);
  if (__p.__r_.__value_.__l.__size_)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](__p.__r_.__value_.__l.__size_);
  }

  return v6;
}

void sub_22095638C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

void cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::alignContextForQueryLength(cgm::token_generation_inference::ajax::ANEAJAXE5MLModel *this, unint64_t a2, unint64_t a3)
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = *(this + 31);
  v5 = *(this + 32);
  v6 = (this + 248);
  v7 = cgm::token_generation_inference::common::logging::CGMTGILogger::GENERAL(this);
  v8 = (v5 - v4) >> 5;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v28 = (*(this + 32) - *(this + 31)) >> 5;
    v29 = (*(this + 35) - *(this + 34)) >> 3;
    *buf = 134219008;
    *v36 = a2;
    *&v36[8] = 2048;
    *&v36[10] = a3;
    *&v36[18] = 2048;
    v37 = v8;
    v38 = 2048;
    v39 = v28;
    v40 = 2048;
    v41 = v29;
    _os_log_debug_impl(&dword_220940000, v7, OS_LOG_TYPE_DEBUG, "alignContextForQueryLength called with queryLength=%zu and numTokens=%zu, start of function numTokensProcessed=%zu and mContextTokensSize=%zu and numHoles=%zu", buf, 0x34u);
  }

  v9 = a2 - v8 % a2;
  if (v8 % a2)
  {
    v10 = v9 >= a3;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    v11 = 0;
    do
    {
      v12 = (*(this + 32) - *(this + 31)) >> 5;
      v14 = *(this + 35);
      v13 = *(this + 36);
      if (v14 >= v13)
      {
        v16 = *(this + 34);
        v17 = v14 - v16;
        v18 = (v14 - v16) >> 3;
        v19 = v18 + 1;
        if ((v18 + 1) >> 61)
        {
          _ZNSt3__16vectorIDF16_NS_9allocatorIDF16_EEE20__throw_length_errorB8ne200100Ev();
        }

        v20 = v13 - v16;
        if (v20 >> 2 > v19)
        {
          v19 = v20 >> 2;
        }

        v10 = v20 >= 0x7FFFFFFFFFFFFFF8;
        v21 = 0x1FFFFFFFFFFFFFFFLL;
        if (!v10)
        {
          v21 = v19;
        }

        if (v21)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(this + 272, v21);
        }

        v22 = (v14 - v16) >> 3;
        v23 = (8 * v18);
        v24 = (8 * v18 - 8 * v22);
        *v23 = v12;
        v15 = v23 + 1;
        memcpy(v24, v16, v17);
        v25 = *(this + 34);
        *(this + 34) = v24;
        *(this + 35) = v15;
        *(this + 36) = 0;
        if (v25)
        {
          operator delete(v25);
        }
      }

      else
      {
        *v14 = v12;
        v15 = v14 + 1;
      }

      *(this + 35) = v15;
      *buf = -1;
      v34 = 0;
      *&v36[12] = 0;
      v37 = 0;
      *&v36[4] = 0;
      std::vector<signed char>::__init_with_size[abi:ne200100]<signed char const*,signed char const*>(&v36[4], &v34, buf, 1);
      std::vector<cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::TokenRecord>::push_back[abi:ne200100](v6, buf);
      v26 = *&v36[4];
      if (*&v36[4])
      {
        *&v36[12] = *&v36[4];
        operator delete(*&v36[4]);
      }

      ++v11;
    }

    while (v9 > v11);
    v27 = cgm::token_generation_inference::common::logging::CGMTGILogger::GENERAL(v26);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      v30 = (*(this + 32) - *(this + 31)) >> 5;
      v31 = (*(this + 35) - *(this + 34)) >> 3;
      *buf = 134219008;
      *v36 = a2;
      *&v36[8] = 2048;
      *&v36[10] = a3;
      *&v36[18] = 2048;
      v37 = v30;
      v38 = 2048;
      v39 = v30;
      v40 = 2048;
      v41 = v31;
      _os_log_debug_impl(&dword_220940000, v27, OS_LOG_TYPE_DEBUG, "alignContextForQueryLength called with queryLength=%zu and numTokens=%zu, end of function numTokensProcessed=%zu and mContextTokensSize=%zu and numHoles=%zu", buf, 0x34u);
    }
  }
}

void sub_2209566E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t cgm::token_generation_inference::ajax::utils::inputSpan<int>()
{
  InputPortRef = E5RT::ExecutionStreamOperation::GetInputPortRef();
  MemoryObjectRef = E5RT::IOPort::GetMemoryObjectRef(InputPortRef);
  v2 = E5RT::MemoryObject::TryAsBuffer(MemoryObjectRef);
  result = E5RT::BufferObject::GetDataSpan(v2);
  if (v4 < 4)
  {
    return 0;
  }

  return result;
}

uint64_t cgm::token_generation_inference::ajax::ane::findInTokenIDSpan(E5RT::ExecutionStreamOperation *a1, void *a2)
{
  InputPorts = E5RT::ExecutionStreamOperation::GetInputPorts(a1);
  std::string::basic_string[abi:ne200100]<0>(&__p, "in_new_token_ids");
  v5 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>>>::find<std::string>(InputPorts, &__p.__r_.__value_.__l.__data_);
  v6 = v5;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (v6)
    {
      goto LABEL_9;
    }
  }

  else if (v5)
  {
    goto LABEL_9;
  }

  v7 = E5RT::ExecutionStreamOperation::GetInputPorts(a1);
  std::string::basic_string[abi:ne200100]<0>(&__p, "transformer_input");
  v8 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>>>::find<std::string>(v7, &__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (!v8)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    std::string::basic_string[abi:ne200100]<0>(&__p, "Cannot find in_token_id or transformer_input on extend/prompt function.");
    cgm::token_generation_inference::ajax::AJAXE5Error::AJAXE5Error(exception, 1, &__p);
  }

  if (a2[1] == *a2)
  {
    cgm::token_generation_inference::ajax::ane::findInTokenIDSpan();
  }

LABEL_9:
  std::string::basic_string[abi:ne200100]<0>(&__p, "in_new_token_ids");
  v9 = cgm::token_generation_inference::ajax::utils::inputSpan<int>();
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v9;
}

void sub_2209568B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

const void **std::vector<std::vector<signed char>>::reserve(const void **result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<signed char>>>(result, a2);
    }

    _ZNSt3__16vectorIDF16_NS_9allocatorIDF16_EEE20__throw_length_errorB8ne200100Ev();
  }

  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<signed char>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<std::vector<signed char>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::vector<signed char>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::vector<signed char>>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    v5 = *(v2 - 24);
    *(a1 + 16) = v2 - 24;
    if (v5)
    {
      *(v2 - 16) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 24;
    }
  }
}

uint64_t *std::vector<signed char>::vector[abi:ne200100](uint64_t *a1, uint64_t a2, unsigned __int8 *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<signed char>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_220956B20(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<signed char>::__vallocate[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  _ZNSt3__16vectorIDF16_NS_9allocatorIDF16_EEE20__throw_length_errorB8ne200100Ev();
}

uint64_t *std::vector<signed char>::__init_with_size[abi:ne200100]<signed char *,signed char *>(uint64_t *result, const void *a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<signed char>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_220956BEC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<std::vector<signed char>>::__construct_one_at_end[abi:ne200100]<std::vector<signed char> const&>(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = std::vector<signed char>::__init_with_size[abi:ne200100]<signed char *,signed char *>(v3, *a2, *(a2 + 8), *(a2 + 8) - *a2);
  *(a1 + 8) = v3 + 3;
  return result;
}

uint64_t *std::vector<std::vector<signed char>>::push_back[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::vector<signed char>>::__emplace_back_slow_path<std::vector<signed char> const&>(a1, a2);
  }

  else
  {
    std::vector<std::vector<signed char>>::__construct_one_at_end[abi:ne200100]<std::vector<signed char> const&>(a1, a2);
    result = (v3 + 24);
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t std::vector<cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::TokenRecord>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::TokenRecord>::__emplace_back_slow_path<cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::TokenRecord>(a1, a2);
  }

  else
  {
    *v3 = *a2;
    *(v3 + 16) = 0;
    *(v3 + 24) = 0;
    *(v3 + 8) = 0;
    *(v3 + 8) = *(a2 + 8);
    *(v3 + 24) = *(a2 + 24);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    result = v3 + 32;
  }

  a1[1] = result;
  return result;
}

char *cgm::token_generation_inference::ajax::utils::addHolesToMask@<X0>(char **a1@<X0>, size_t **a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  std::vector<signed char>::reserve(a3, a1[1] - *a1 + a2[1] - *a2);
  v7 = *a1;
  v6 = a1[1];
  if (*a1 != v6)
  {
    v8 = *a2;
    do
    {
      if (v8 == a2[1])
      {
        break;
      }

      v9 = *v8;
      v11 = *a3;
      v10 = *(a3 + 8);
      v12 = &v10[-*a3];
      v13 = *(a3 + 16);
      if (*v8 == v12)
      {
        if (v10 >= v13)
        {
          v16 = (v9 + 1);
          if ((v9 + 1) < 0)
          {
            _ZNSt3__16vectorIDF16_NS_9allocatorIDF16_EEE20__throw_length_errorB8ne200100Ev();
          }

          v17 = v13 - v11;
          if (2 * v17 > v16)
          {
            v16 = 2 * v17;
          }

          if (v17 >= 0x3FFFFFFFFFFFFFFFLL)
          {
            v18 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v18 = v16;
          }

          if (v18)
          {
            operator new();
          }

          v22 = *v8;
          v23 = &v9[v11 - v10];
          *v9 = 0;
          v14 = v9 + 1;
          memcpy(v23, v11, v22);
          *a3 = v23;
          *(a3 + 8) = v9 + 1;
          *(a3 + 16) = 0;
          if (v11)
          {
            operator delete(v11);
          }
        }

        else
        {
          *v10 = 0;
          v14 = v10 + 1;
        }

        *(a3 + 8) = v14;
        ++v8;
      }

      else
      {
        if (v10 >= v13)
        {
          v19 = (v12 + 1);
          if ((v12 + 1) < 0)
          {
            _ZNSt3__16vectorIDF16_NS_9allocatorIDF16_EEE20__throw_length_errorB8ne200100Ev();
          }

          v20 = v13 - v11;
          if (2 * v20 > v19)
          {
            v19 = 2 * v20;
          }

          if (v20 >= 0x3FFFFFFFFFFFFFFFLL)
          {
            v21 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v21 = v19;
          }

          if (v21)
          {
            operator new();
          }

          v24 = &v10[-*a3];
          *v12 = *v7;
          v15 = v12 + 1;
          memcpy(0, v11, v24);
          *a3 = 0;
          *(a3 + 8) = v12 + 1;
          *(a3 + 16) = 0;
          if (v11)
          {
            operator delete(v11);
          }
        }

        else
        {
          *v10 = *v7;
          v15 = v10 + 1;
        }

        *(a3 + 8) = v15;
        ++v7;
      }

      v6 = a1[1];
    }

    while (v7 != v6);
  }

  return std::vector<signed char>::__insert_with_size[abi:ne200100]<std::__wrap_iter<signed char const*>,std::__wrap_iter<signed char const*>>(a3, *(a3 + 8), v7, v6, v6 - v7);
}

void sub_220956F2C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<signed char>::reserve(void *a1, unint64_t a2)
{
  if (a1[2] - *a1 < a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    _ZNSt3__16vectorIDF16_NS_9allocatorIDF16_EEE20__throw_length_errorB8ne200100Ev();
  }
}

char *std::vector<signed char>::__insert_with_size[abi:ne200100]<std::__wrap_iter<signed char const*>,std::__wrap_iter<signed char const*>>(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v6 = a5;
  v7 = __src;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  if ((v10 - v9) >= a5)
  {
    v15 = v9 - __dst;
    if ((v9 - __dst) >= a5)
    {
      v19 = &__dst[a5];
      v20 = (v9 - a5);
      v21 = *(a1 + 8);
      if (v9 >= a5)
      {
        do
        {
          v22 = *v20++;
          *v21++ = v22;
        }

        while (v20 != v9);
      }

      *(a1 + 8) = v21;
      if (v9 != v19)
      {
        memmove(&__dst[a5], __dst, v9 - v19);
      }

      v23 = v5;
      v24 = v7;
      v25 = v6;
    }

    else
    {
      v16 = &__src[v15];
      if (&__src[v15] == a4)
      {
        v17 = *(a1 + 8);
        v18 = v17;
      }

      else
      {
        v17 = (&a4[v9] - v16);
        v18 = *(a1 + 8);
        do
        {
          v34 = *v16++;
          *v18++ = v34;
        }

        while (v16 != a4);
      }

      *(a1 + 8) = v17;
      if (v15 < 1)
      {
        return v5;
      }

      v35 = &__dst[a5];
      v36 = &v17[-a5];
      v37 = v17;
      if (&v17[-a5] < v9)
      {
        do
        {
          v38 = *v36++;
          *v37++ = v38;
        }

        while (v36 != v9);
      }

      *(a1 + 8) = v37;
      if (v18 != v35)
      {
        memmove(&__dst[a5], __dst, v17 - v35);
      }

      v23 = v5;
      v24 = v7;
      v25 = v15;
    }

    memmove(v23, v24, v25);
    return v5;
  }

  v11 = *a1;
  v12 = v9 - *a1 + a5;
  if (v12 < 0)
  {
    _ZNSt3__16vectorIDF16_NS_9allocatorIDF16_EEE20__throw_length_errorB8ne200100Ev();
  }

  v13 = v10 - v11;
  if (2 * v13 > v12)
  {
    v12 = 2 * v13;
  }

  if (v13 >= 0x3FFFFFFFFFFFFFFFLL)
  {
    v14 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v14 = v12;
  }

  if (v14)
  {
    operator new();
  }

  v26 = (__dst - v11);
  v27 = (__dst - v11 + a5);
  v28 = (__dst - v11);
  do
  {
    v29 = *v7++;
    *v28++ = v29;
    --v6;
  }

  while (v6);
  v30 = *(a1 + 8) - __dst;
  memcpy(v27, __dst, v30);
  v31 = &v27[v30];
  *(a1 + 8) = v5;
  v32 = *a1;
  v33 = &v26[*a1 - v5];
  memcpy(v33, *a1, &v5[-*a1]);
  *a1 = v33;
  *(a1 + 8) = v31;
  *(a1 + 16) = 0;
  if (v32)
  {
    operator delete(v32);
  }

  return v26;
}

const void **std::vector<std::vector<signed char>>::push_back[abi:ne200100](const void **result, uint64_t a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 3);
    v8 = v7 + 1;
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      _ZNSt3__16vectorIDF16_NS_9allocatorIDF16_EEE20__throw_length_errorB8ne200100Ev();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 3);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v8;
    }

    v16[4] = result;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<signed char>>>(result, v10);
    }

    v11 = 24 * v7;
    *v11 = 0;
    *(v11 + 8) = 0;
    *(v11 + 16) = 0;
    *v11 = *a2;
    *(v11 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = 24 * v7 + 24;
    v12 = result[1] - *result;
    v13 = (v11 - v12);
    memcpy((v11 - v12), *result, v12);
    v14 = *v3;
    *v3 = v13;
    v3[1] = v6;
    v15 = v3[2];
    v3[2] = 0;
    v16[2] = v14;
    v16[3] = v15;
    v16[0] = v14;
    v16[1] = v14;
    result = std::__split_buffer<std::vector<signed char>>::~__split_buffer(v16);
  }

  else
  {
    *v4 = 0;
    *(v4 + 1) = 0;
    *(v4 + 2) = 0;
    *v4 = *a2;
    *(v4 + 2) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = (v4 + 24);
  }

  v3[1] = v6;
  return result;
}

uint64_t *cgm::token_generation_inference::ajax::ane::findGatherOpWithQueryLength@<X0>(uint64_t *__return_ptr a1@<X8>, uint64_t *__val@<X1>, uint64_t *result@<X0>)
{
  v5 = *result;
  v6 = result[1];
  if (*result != v6)
  {
    v7 = result;
    while (1)
    {
      InputPorts = E5RT::ExecutionStreamOperation::GetInputPorts(*v5);
      result = cgm::token_generation_inference::ajax::ane::getQueryLength(InputPorts);
      if (result == __val)
      {
        break;
      }

      v5 += 32;
      if (v5 == v6)
      {
        v5 = v6;
        break;
      }
    }

    v6 = v7[1];
  }

  if (v5 == v6)
  {
    std::to_string(&__p, __val);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("Could not find gather op with queryLength: ", &__p, &v13);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    exception = __cxa_allocate_exception(0x18uLL);
    cgm::token_generation_inference::ajax::AJAXE5Error::AJAXE5Error(exception, 1, &v13);
  }

  v9 = *(v5 + 8);
  *a1 = *v5;
  a1[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  v10 = *(v5 + 24);
  a1[2] = *(v5 + 16);
  a1[3] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_22095749C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ImageEmbeddingsProvider::getEmbeddings(ImageEmbeddingsProvider *this, int a2)
{
  v3 = *(this + 6);
  if (!v3 || ![v3 imageCount])
  {
    return 0;
  }

  v5 = *(this + 6);
  for (i = 0; ; ++i)
  {
    if (i >= [v5 imageCount])
    {

      return 0;
    }

    v7 = [v5 tokenRangeAt:i];
    v9 = (a2 - v7);
    if (a2 >= v7 && v7 + v8 - 1 >= a2)
    {
      break;
    }
  }

  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 1;
  v12 = *(this + 6);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = ___ZN23ImageEmbeddingsProvider13getEmbeddingsEi_block_invoke;
  v15[3] = &unk_27844FB50;
  v15[6] = this;
  v15[7] = i + (v9 << 32);
  v16 = 1;
  v15[4] = &v21;
  v15[5] = &v17;
  [v12 getEncodedImageAt:i withHandler:v15];
  if ((v18[3] & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    std::string::basic_string[abi:ne200100]<0>(&v14, "Embeddings were not compatible with decoder.");
    cgm::token_generation_inference::ajax::AJAXE5Error::AJAXE5Error(exception, 0, &v14);
  }

  v10 = v22[3];
  if (!v10)
  {
    __assert_rtn("getEmbeddings", "ImageEmbeddingsProvider.mm", 249, "embeddingData != nullptr");
  }

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);
  return v10;
}

void sub_2209576C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v25 & 1) == 0)
    {
LABEL_6:
      _Block_object_dispose(&a24, 8);
      _Block_object_dispose((v26 - 80), 8);
      _Unwind_Resume(a1);
    }
  }

  else if (!v25)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v24);
  goto LABEL_6;
}

uint64_t cgm::token_generation_inference::ajax::ANEAJAXE5MLModel::checkTokenInVocab(uint64_t this, signed int a2)
{
  v2 = this;
  v17 = *MEMORY[0x277D85DE8];
  if (a2 < 0 || *(this + 96) <= a2)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    v10[0] = a2;
    v10[1] = 0;
    v5 = *(v2 + 96);
    v10[3] = 0;
    v10[4] = 227;
    v10[2] = v5;
    v11 = v15;
    v12 = xmmword_220AE5410;
    v13 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
    v14 = 0;
    __p = v15;
    v7 = 2;
    v8 = v10;
    v9 = 227;
    std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&v11, "Input token {} is not in bounds [0, {})", 39, &v7);
    v7 = __p;
    v8 = *(&v12 + 1);
    std::string::basic_string<std::string_view,0>(&v6, &v7);
    if (__p != v15)
    {
      operator delete(__p);
    }

    cgm::token_generation_inference::ajax::AJAXE5Error::AJAXE5Error(exception, 4, &v6);
  }

  return this;
}

void sub_2209578F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, void *a62)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v63 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v63)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v62);
  goto LABEL_6;
}

uint64_t specialized closure #1 in static UnsafeBufferPointer<A>.makeArgmaxBNNSGraphContext()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Accelerate9BNNSGraphO7BuilderV6TensorVy__s5Int32VGMd, &_s10Accelerate9BNNSGraphO7BuilderV6TensorVy__s5Int32VGMR);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v18 - v3;
  v5 = type metadata accessor for BNNSGraph.Builder.Intent();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Accelerate9BNNSGraphO7BuilderV6TensorVy__s7Float16VGMd, &_s10Accelerate9BNNSGraphO7BuilderV6TensorVy__s7Float16VGMR);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v18 - v13;
  (*(v6 + 104))(v9, *MEMORY[0x277D831D8], v5);
  BNNSGraph.Builder.argument<A>(name:dataType:shape:intent:)();
  (*(v6 + 8))(v9, v5);
  BNNSGraph.Builder.Tensor.argMax(axis:keepDimension:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Accelerate9BNNSGraphO16TensorDescriptor_pGMd, &_ss23_ContiguousArrayStorageCy10Accelerate9BNNSGraphO16TensorDescriptor_pGMR);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_220AE8A30;
  *(v15 + 56) = v0;
  *(v15 + 64) = lazy protocol witness table accessor for type Slice<TokenMask> and conformance Slice<A>(&lazy protocol witness table cache variable for type BNNSGraph.Builder.Tensor<Int32> and conformance BNNSGraph.Builder.Tensor<A>, &_s10Accelerate9BNNSGraphO7BuilderV6TensorVy__s5Int32VGMd, &_s10Accelerate9BNNSGraphO7BuilderV6TensorVy__s5Int32VGMR, MEMORY[0x277D831E0]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v15 + 32));
  (*(v1 + 32))(boxed_opaque_existential_1, v4, v0);
  (*(v11 + 8))(v14, v10);
  return v15;
}

unint64_t lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock()
{
  result = lazy protocol witness table cache variable for type ContinuousClock and conformance ContinuousClock;
  if (!lazy protocol witness table cache variable for type ContinuousClock and conformance ContinuousClock)
  {
    type metadata accessor for ContinuousClock();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContinuousClock and conformance ContinuousClock);
  }

  return result;
}

uint64_t outlined init with copy of LogitPresampler?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference15LogitPresampler_pSgMd, &_s24TokenGenerationInference15LogitPresampler_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id closure #1 in closure #3 in closure #1 in E5RunnerObjC.run(tokens:computeLogitsTokenCount:tokenMasks:presampler:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v19 = a4;
  outlined init with copy of LogitPresampler?(a1, &v14);
  if (v15)
  {
    outlined init with take of RandomNumberGenerator(&v14, v16);
  }

  else
  {
    v17 = type metadata accessor for BasicLogitPresampler(0);
    v18 = &protocol witness table for BasicLogitPresampler;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v16);
    v7 = type metadata accessor for LogitIndexSet(0);
    (*(*(v7 - 8) + 56))(boxed_opaque_existential_1, 1, 1, v7);
    if (v15)
    {
      outlined destroy of LogitPresampler?(&v14);
    }
  }

  v8 = v18;
  __swift_project_boxed_opaque_existential_1(v16, v17);
  v9 = [a2 logitData];
  v10 = [a2 numLogitsPerToken];
  v11 = [a2 stridePerToken];
  result = [a2 stridePerLogit];
  if (__OFADD__(v19, a3))
  {
    __break(1u);
  }

  else if (v19 + a3 >= a3)
  {
    v13 = (v8[1])(v9, v10, v11, result, a3);
    specialized Array.append<A>(contentsOf:)(v13);
    return __swift_destroy_boxed_opaque_existential_1(v16);
  }

  __break(1u);
  return result;
}

void *ArgmaxPresampler.presampleLogits(buffer:numLogits:tokensStride:logitStride:range:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v115 = a3;
  v120 = a2;
  v118 = a1;
  v9 = type metadata accessor for BasicLogitPresampler(0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  *&v117 = v101 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference13LogitIndexSetOSgMd, &_s24TokenGenerationInference13LogitIndexSetOSgMR);
  v14 = MEMORY[0x28223BE20](v12 - 8, v13);
  v16 = v101 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v17);
  v19 = v101 - v18;
  v20 = type metadata accessor for LogitIndexSet(0);
  v21 = *(v20 - 8);
  v23 = MEMORY[0x28223BE20](v20, v22);
  v25 = v101 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v23, v26);
  v109 = (v101 - v28);
  v30 = MEMORY[0x28223BE20](v27, v29);
  v110 = (v101 - v31);
  v33 = MEMORY[0x28223BE20](v30, v32);
  v119 = a4;
  v104 = a6;
  v112 = v33;
  if (a4 != 1)
  {
    outlined init with copy of LogitIndexSet?(v116, v16);
    if ((*(v21 + 48))(v16, 1, v20) == 1)
    {
      outlined destroy of LogitIndexSet?(v16);
    }

    else
    {
      outlined init with take of LogitIndexSet(v16, v25);
      if (v120 < 0)
      {
LABEL_76:
        __break(1u);
        goto LABEL_77;
      }

      v78 = v110;
      v79 = v120;
      *v110 = 0;
      v78[1] = v79;
      v80 = v112;
      swift_storeEnumTagMultiPayload();
      v81 = specialized static LogitIndexSet.== infix(_:_:)(v25, v78);
      outlined destroy of LogitIndexSet(v78, type metadata accessor for LogitIndexSet);
      if ((v81 & 1) == 0)
      {
        v95 = v117;
        outlined init with copy of LogitIndexSet(v25, v117);
        v96 = (*(v21 + 56))(v95, 0, 1, v80);
        MEMORY[0x28223BE20](v96, v97);
        v98 = v120;
        v101[-6] = v95;
        v101[-5] = v98;
        v99 = v115;
        v101[-4] = v118;
        v101[-3] = v99;
        v101[-2] = v119;
        v36 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_24TokenGenerationInference15LogitCollection_ps5NeverOTg5(partial apply for closure #1 in BasicLogitPresampler.presampleLogits(buffer:numLogits:tokensStride:logitStride:range:), &v101[-8], a5, v104);
        outlined destroy of LogitIndexSet(v25, type metadata accessor for LogitIndexSet);
        outlined destroy of LogitIndexSet(v95, type metadata accessor for BasicLogitPresampler);
        return v36;
      }

      outlined destroy of LogitIndexSet(v25, type metadata accessor for LogitIndexSet);
    }

    v82 = v104 - a5;
    if (__OFSUB__(v104, a5))
    {
      goto LABEL_69;
    }

    if ((v82 & 0x8000000000000000) != 0)
    {
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
      goto LABEL_72;
    }

    v83 = MEMORY[0x277D84F90];
    if (v82)
    {
      v84 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v84 + 16) = v82;
    }

    else
    {
      v84 = MEMORY[0x277D84F90];
    }

    if (v120 > 0x7FFFFFFF)
    {
      goto LABEL_71;
    }

    if (v119 > 0x7FFFFFFF)
    {
LABEL_72:
      __break(1u);
      goto LABEL_73;
    }

    if (a5 > 0x7FFFFFFF)
    {
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
      goto LABEL_75;
    }

    if (v120 < 0xFFFFFFFF80000000 || v119 < 0xFFFFFFFF80000000 || a5 < 0xFFFFFFFF80000000)
    {
      goto LABEL_74;
    }

    if (v82 >> 31)
    {
LABEL_75:
      __break(1u);
      goto LABEL_76;
    }

    PresampleArgmax(v118, v120, v119, a5, v82, (v84 + 32));
    *(v84 + 16) = v82;
    if (!v82)
    {

      return MEMORY[0x277D84F90];
    }

    *&v124 = v83;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v82, 0);
    v85 = 0;
    v36 = v124;
    v120 = *(v84 + 16);
    v86 = v119;
    while (1)
    {
      if (v120 == v85)
      {
        goto LABEL_60;
      }

      if (v85 >= *(v84 + 16))
      {
        break;
      }

      v87 = *(v84 + 4 * v85 + 32);
      v88 = v87 * v86;
      if ((*(v84 + 4 * v85 + 32) * v86) >> 64 != (v87 * v86) >> 63)
      {
        goto LABEL_62;
      }

      _VF = __OFADD__(v88, v85);
      v89 = v88 + v85;
      if (_VF)
      {
        goto LABEL_63;
      }

      _VF = __OFADD__(v89, a5);
      v90 = v89 + a5;
      if (_VF)
      {
        goto LABEL_64;
      }

      _H8 = *(v118 + 2 * v90);
      *&v124 = v36;
      v93 = v36[2];
      v92 = v36[3];
      if (v93 >= v92 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v92 > 1), v93 + 1, 1);
        v86 = v119;
        v36 = v124;
      }

      __asm { FCVT            S0, H8 }

      ++v85;
      *(&v135 + 1) = &type metadata for WeightedSingleLogitCollection;
      *&v136 = &protocol witness table for WeightedSingleLogitCollection;
      *&v134 = v87;
      DWORD2(v134) = _S0;
      v36[2] = v93 + 1;
      outlined init with take of LogitCollection(&v134, &v36[5 * v93 + 4]);
      if (v82 == v85)
      {

        return v36;
      }
    }

LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
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
    goto LABEL_70;
  }

  v111 = 0;
  if (__OFSUB__(a6, a5))
  {
    goto LABEL_68;
  }

  v35 = a6;
  v105 = v101 - v34;
  v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, (a6 - a5) & ~((a6 - a5) >> 63), 0, MEMORY[0x277D84F90]);
  if (a5 == a6)
  {
    return v36;
  }

  if (a6 >= a5)
  {
    if (a5 < a6)
    {
      v114 = (v21 + 48);
      v101[1] = 2 * v120;
      v101[2] = 4 * v120;
      v103 = xmmword_220AE8A20;
      v102 = (v120 - 0x2000000000000000) >> 62;
      v117 = xmmword_220AE8A30;
      v37 = v112;
      v38 = v116;
      v113 = v19;
      while (1)
      {
        if ((v115 * a5) >> 64 != (v115 * a5) >> 63)
        {
          __break(1u);
LABEL_60:
          __break(1u);
          goto LABEL_61;
        }

        v119 = v118 + 2 * v115 * a5;
        outlined init with copy of LogitIndexSet?(v38, v19);
        if ((*v114)(v19, 1, v37) == 1)
        {
          outlined destroy of LogitIndexSet?(v19);
          if (!v120)
          {
            goto LABEL_20;
          }

          if (one-time initialization token for argmaxGraphContext != -1)
          {
            swift_once();
          }

          v47 = static UnsafeBufferPointer<A>.argmaxGraphContext;
          swift_beginAccess();
          os_unfair_lock_lock(v47 + 4);
          swift_endAccess();
          if (v120 < 1)
          {
            v49 = MEMORY[0x277D84F90];
          }

          else
          {
            v48 = v120;
            v49 = static Array._allocateBufferUninitialized(minimumCapacity:)();
            *(v49 + 16) = v48;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo10BNNSTensoraGMd, &_ss23_ContiguousArrayStorageCySo10BNNSTensoraGMR);
          v58 = swift_allocObject();
          *(v58 + 16) = v103;
          if (v102 < 3)
          {
            goto LABEL_66;
          }

          v59 = v58;
          v107 = v47;
          v108 = a5;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
          v60 = swift_allocObject();
          v61 = v120;
          *(v60 + 16) = v117;
          *(v60 + 32) = v61;
          v62 = swift_allocObject();
          v106 = v49;
          *(v62 + 16) = v117;
          *(v62 + 32) = v61;
          static Int32.bnnsDataType.getter();
          BNNSTensor.init(data:shape:stride:dataType:)();
          v63 = v131;
          v59[8] = v130;
          v59[9] = v63;
          v64 = v133;
          v59[10] = v132;
          v59[11] = v64;
          v65 = v127;
          v59[4] = v126;
          v59[5] = v65;
          v66 = v129;
          v59[6] = v128;
          v59[7] = v66;
          v67 = v125;
          v59[2] = v124;
          v59[3] = v67;
          v68 = swift_allocObject();
          *(v68 + 16) = v117;
          *(v68 + 32) = v61;
          v69 = swift_allocObject();
          *(v69 + 16) = v117;
          *(v69 + 32) = v61;
          static Float16.bnnsDataType.getter();
          BNNSTensor.init(data:shape:stride:dataType:)();
          v70 = v141;
          v59[18] = v140;
          v59[19] = v70;
          v71 = v143;
          v59[20] = v142;
          v59[21] = v71;
          v72 = v137;
          v59[14] = v136;
          v59[15] = v72;
          v73 = v139;
          v59[16] = v138;
          v59[17] = v73;
          v74 = v135;
          v59[12] = v134;
          v59[13] = v74;
          *&v121 = v59;
          BNNSGraph.Context.executeFunction(_:arguments:)(0, &v121);
          v111 = v75;
          if (v75)
          {
            goto LABEL_79;
          }

          v77 = v106;
          v76 = v107;
          *(v106 + 16) = v120;
          swift_beginAccess();
          os_unfair_lock_unlock(v76 + 4);
          swift_endAccess();
          a5 = v108;
          v35 = v104;
          if (!*(v77 + 16))
          {
            goto LABEL_67;
          }

          v54 = *(v77 + 32);
        }

        else
        {
          v50 = v105;
          outlined init with take of LogitIndexSet(v19, v105);
          if (v120 < 0)
          {
            goto LABEL_65;
          }

          v51 = v109;
          v52 = v120;
          *v109 = 0;
          *(v51 + 8) = v52;
          swift_storeEnumTagMultiPayload();
          v53 = v110;
          outlined init with copy of LogitIndexSet(v50, v110);
          LogitIndexSet.formIntersection(_:)(v51);
          outlined destroy of LogitIndexSet(v51, type metadata accessor for LogitIndexSet);
          v54 = UnsafeBufferPointer<A>.argmax(mask:)(v53, v119, v52);
          LOBYTE(v51) = v55;
          outlined destroy of LogitIndexSet(v53, type metadata accessor for LogitIndexSet);
          outlined destroy of LogitIndexSet(v50, type metadata accessor for LogitIndexSet);
          if (v51)
          {
LABEL_20:
            v57 = v36[2];
            v56 = v36[3];
            if (v57 >= v56 >> 1)
            {
              v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v56 > 1), v57 + 1, 1, v36);
            }

            v122 = &type metadata for EmptyLogitCollection;
            v123 = &protocol witness table for EmptyLogitCollection;
            v36[2] = v57 + 1;
            outlined init with take of LogitCollection(&v121, &v36[5 * v57 + 4]);
            goto LABEL_10;
          }
        }

        _H8 = *(v119 + 2 * v54);
        v41 = v36[2];
        v40 = v36[3];
        if (v41 >= v40 >> 1)
        {
          v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v40 > 1), v41 + 1, 1, v36);
        }

        __asm { FCVT            S0, H8 }

        v122 = &type metadata for WeightedSingleLogitCollection;
        v123 = &protocol witness table for WeightedSingleLogitCollection;
        *&v121 = v54;
        DWORD2(v121) = _S0;
        v36[2] = v41 + 1;
        outlined init with take of LogitCollection(&v121, &v36[5 * v41 + 4]);
        v37 = v112;
LABEL_10:
        v38 = v116;
        v19 = v113;
        if (v35 == ++a5)
        {
          return v36;
        }
      }
    }

    goto LABEL_78;
  }

LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

void *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, uint64_t a2, uint64_t a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *specialized Array.append<A>(contentsOf:)(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference15LogitCollection_pMd, &_s24TokenGenerationInference15LogitCollection_pMR);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t __swift_memcpy12_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t protocol witness for LanguageModelRunner.run(tokens:computeLogitsTokenCount:tokenMasks:presampler:) in conformance E5RunnerObjC()
{
  return (*(v0 + 8))(*(v0 + 16), *(v0 + 24));
}

{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = E5RunnerImageTokenizerObjC.withEncodedImage<A>(imageSetter:_:);
  }

  else
  {

    v2 = protocol witness for LanguageModelRunner.run(tokens:computeLogitsTokenCount:tokenMasks:presampler:) in conformance E5RunnerObjC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v5 = v0[4];
  v6 = swift_task_alloc();
  v0[9] = v6;
  v6[2] = v5;
  v6[3] = v3;
  v6[4] = v1;
  v6[5] = v4;
  v6[6] = v2;
  v7 = swift_task_alloc();
  v0[10] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay24TokenGenerationInference15LogitCollection_pG6logits_Si9callCounttMd, &_sSay24TokenGenerationInference15LogitCollection_pG6logits_Si9callCounttMR);
  *v7 = v0;
  v7[1] = protocol witness for LanguageModelRunner.run(tokens:computeLogitsTokenCount:tokenMasks:presampler:) in conformance E5RunnerObjC;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD00000000000003ALL, 0x8000000220AFEBE0, closure #1 in E5RunnerObjC.run(tokens:computeLogitsTokenCount:tokenMasks:presampler:)partial apply, v6, v8);
}

uint64_t closure #1 in E5TransformerLanguageModel.run(promptModuleNodes:queryNodes:computeLogitsTokenCount:presampler:)(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[19] = a1;
  v4[20] = a2;
  v4[21] = v2;

  if (v2)
  {
    v5 = closure #1 in E5TransformerLanguageModel.run(promptModuleNodes:queryNodes:computeLogitsTokenCount:presampler:);
  }

  else
  {

    v5 = closure #1 in E5TransformerLanguageModel.run(promptModuleNodes:queryNodes:computeLogitsTokenCount:presampler:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t _ss5ClockPsE7measure9isolation_8DurationQzScA_pSgYi_yyYaKXEtYaKFs010ContinuousA0V_Tg50120_s24TokenGenerationInference26E5TransformerLanguageModelC7measure015_C54BEC2A6549C4L16D2CDB56F73805ABELLyxxyYaKXEYaKlFyyX35KXEfU_SayAA15LogitCollection_pG_Tg5Say0gH9Inference15LogitCollection_pGSgxs5Error_pRi_zRi0_zlyAMIsgHrzo_Tf1ncn_nTf4nnng_nTY2_()
{
  **(v0 + 48) = *(v0 + 32);

  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  return MEMORY[0x2822009F8](_ss5ClockPsE7measure9isolation_8DurationQzScA_pSgYi_yyYaKXEtYaKFs010ContinuousA0V_Tg50120_s24TokenGenerationInference26E5TransformerLanguageModelC7measure015_C54BEC2A6549C4L16D2CDB56F73805ABELLyxxyYaKXEYaKlFyyX35KXEfU_SayAA15LogitCollection_pG_Tg5Say0gH9Inference15LogitCollection_pGSgxs5Error_pRi_zRi0_zlyAMIsgHrzo_Tf1ncn_nTf4nnng_nTY3_, v1, v2);
}

uint64_t type metadata completion function for PromptTemplateConfiguration(uint64_t a1)
{
  result = type metadata accessor for ModelConfiguration();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void type metadata completion function for OnDeviceInferenceAssetObjectBaseModel(uint64_t a1)
{
  type metadata accessor for Asset?(319, &lazy cache variable for type metadata for Asset?, type metadata accessor for Asset);
  if (v1 <= 0x3F)
  {
    type metadata accessor for BaseModel(319, &lazy cache variable for type metadata for BaseModel, &protocol descriptor for BaseModel, 1);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t type metadata accessor for ModelMetadata(uint64_t a1)
{
  result = type metadata singleton initialization cache for ModelMetadata;
  if (!type metadata singleton initialization cache for ModelMetadata)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for ModelMetadata(uint64_t a1)
{
  type metadata accessor for [String : String]?(319, &lazy cache variable for type metadata for [String : String]?, &_sSDyS2SGMd, &_sSDyS2SGMR);
  if (v1 <= 0x3F)
  {
    type metadata accessor for [String : String]?(319, &lazy cache variable for type metadata for [String : E5Function]?, &_sSDySS24TokenGenerationInference10E5FunctionVGMd, &_sSDySS24TokenGenerationInference10E5FunctionVGMR);
    if (v2 <= 0x3F)
    {
      type metadata accessor for [String : String]?(319, &lazy cache variable for type metadata for [String : MetadataSpecialToken]?, &_sSDySS24TokenGenerationInference015MetadataSpecialA0OGMd, &_sSDySS24TokenGenerationInference015MetadataSpecialA0OGMR);
      if (v3 <= 0x3F)
      {
        type metadata accessor for SpeculativeDecoderPerformanceMeasurement?(319, &lazy cache variable for type metadata for DefaultParameters?, &type metadata for DefaultParameters);
        if (v4 <= 0x3F)
        {
          type metadata accessor for SpeculativeDecoderPerformanceMeasurement?(319, &lazy cache variable for type metadata for String?, MEMORY[0x277D837D0]);
          if (v5 <= 0x3F)
          {
            type metadata accessor for [String : String]?(319, &lazy cache variable for type metadata for [String : [String : MetadataSpecialToken]]?, &_sSDySSSDySS24TokenGenerationInference015MetadataSpecialA0OGGMd, &_sSDySSSDySS24TokenGenerationInference015MetadataSpecialA0OGGMR);
            if (v6 <= 0x3F)
            {
              type metadata accessor for SpeculativeDecoderPerformanceMeasurement?(319, &lazy cache variable for type metadata for Bool?, MEMORY[0x277D839B0]);
              if (v7 <= 0x3F)
              {
                type metadata accessor for SpeculativeDecoderPerformanceMeasurement?(319, &lazy cache variable for type metadata for ClassifierMetadata?, &type metadata for ClassifierMetadata);
                if (v8 <= 0x3F)
                {
                  type metadata accessor for SpeculativeDecoderPerformanceMeasurement?(319, &lazy cache variable for type metadata for StopToken?, &type metadata for StopToken);
                  if (v9 <= 0x3F)
                  {
                    type metadata accessor for PromptPreprocessingTemplateVersion?(319);
                    if (v10 <= 0x3F)
                    {
                      swift_cvw_initStructMetadataWithLayoutString();
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

void type metadata accessor for SpeculativeDecoderPerformanceMeasurement?(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for PromptPreprocessingTemplateVersion?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for PromptPreprocessingTemplateVersion?)
  {
    type metadata accessor for PromptPreprocessingTemplateVersion();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for PromptPreprocessingTemplateVersion?);
    }
  }
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC14handleLLMModel33_65818D6FA4B5F545C6B162D7CBE031AELL8llmModel5assety0T7Catalog0f6BackedI0_p_AA0F0VtYa0T15ManagerServices0C5ErrorOYKFTY0_()
{
  v82 = v0;
  v1 = *(v0 + 888);
  v2 = *(v0 + 880);
  v3 = *(v0 + 800);
  v4 = *(v0 + 792);
  v5 = *(v0 + 600);
  (*(v3 + 56))(v1, 1, 1, v4);
  v6 = v5[3];
  v7 = v5[4];
  v79 = v5;
  v8 = __swift_project_boxed_opaque_existential_1(v5, v6);
  *(v0 + 320) = v6;
  *(v0 + 328) = *(v7 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 296));
  (*(*(v6 - 8) + 16))(boxed_opaque_existential_1, v8, v6);
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v1, v2, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v10 = *(v3 + 48);
  if (v10(v2, 1, v4) == 1)
  {
    v11 = *(v0 + 872);
    v12 = *(v0 + 864);
    v13 = *(v0 + 792);
    outlined destroy of [Int](*(v0 + 880), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    static LanguageModelLoader.findURLOfKnownModelAsset(in:source:)(v11);
    outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v11, v12, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    if (v10(v12, 1, v13) == 1)
    {
      v76 = *(v0 + 872);
      v80 = *(v0 + 888);
      v14 = *(v0 + 856);
      v15 = *(v0 + 832);
      v16 = *(v0 + 824);
      v17 = *(v0 + 760);
      v18 = *(v0 + 752);
      v19 = *(v0 + 744);
      outlined destroy of [Int](*(v0 + 864), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);

      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
      InferenceError.Context.init(additionalDescription:domain:code:userInfo:fallbackAllowed:)();
      (*(v18 + 16))(v14, v17, v19);
      (*(v15 + 104))(v14, *MEMORY[0x277D29D78], v16);
      lazy protocol witness table accessor for type InferenceError and conformance InferenceError(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, 255, MEMORY[0x277D29DE0], MEMORY[0x277D29DE8]);
      swift_willThrowTypedImpl();
      (*(v18 + 8))(v17, v19);
      outlined destroy of [Int](v76, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      outlined destroy of [Int](v80, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      (*(v15 + 32))(*(v0 + 624), *(v0 + 856), *(v0 + 824));
      __swift_destroy_boxed_opaque_existential_1((v0 + 296));

      v26 = *(v0 + 8);

      return v26();
    }

    v23 = *(v0 + 952);
    v24 = *(v0 + 840);
    (*(*(v0 + 800) + 32))(*(v0 + 808), *(v0 + 864), *(v0 + 792));
    v25 = URL.path(percentEncoded:)(1);
    v28 = _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC25modelConfigurationWithURL33_65818D6FA4B5F545C6B162D7CBE031AELL0H4Path0H8Resource07adapterV11InformationSo017TGIMutableE5ModelI4ObjCC_AA13ModelMetadataVSgtSS_12ModelCatalog0f6BackedV0_pAA07AdaptervX0VSgt20ModelManagerServices0C5ErrorOYKF(v23, v25._countAndFlagsBits, v25._object, v0 + 296, 0, 0, 0, 0, v24);
    v32 = *(v0 + 872);
    v33 = *(v0 + 808);
    v34 = *(v0 + 800);
    v35 = *(v0 + 792);

    (*(v34 + 8))(v33, v35);
    outlined destroy of [Int](v32, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  }

  else
  {
    v20 = *(v0 + 952);
    v21 = *(v0 + 848);
    (*(*(v0 + 800) + 32))(*(v0 + 816), *(v0 + 880), *(v0 + 792));
    v22 = URL.path(percentEncoded:)(1);
    v28 = _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC25modelConfigurationWithURL33_65818D6FA4B5F545C6B162D7CBE031AELL0H4Path0H8Resource07adapterV11InformationSo017TGIMutableE5ModelI4ObjCC_AA13ModelMetadataVSgtSS_12ModelCatalog0f6BackedV0_pAA07AdaptervX0VSgt20ModelManagerServices0C5ErrorOYKF(v20, v22._countAndFlagsBits, v22._object, v0 + 296, 0, 0, 0, 0, v21);
    v29 = *(v0 + 816);
    v30 = *(v0 + 800);
    v31 = *(v0 + 792);

    (*(v30 + 8))(v29, v31);
  }

  *(v0 + 960) = v28;
  v36 = *(v0 + 784);
  v37 = *(v0 + 776);
  v77 = *(v0 + 768);
  v38 = *(v0 + 600);
  outlined destroy of [Int](*(v0 + 888), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  __swift_destroy_boxed_opaque_existential_1((v0 + 296));
  __swift_project_boxed_opaque_existential_1(v38, v79[3]);
  v39 = dispatch thunk of CatalogResource.id.getter();
  v41 = v40;
  *(v0 + 968) = v39;
  *(v0 + 976) = v40;
  __swift_project_boxed_opaque_existential_1(v38, v79[3]);
  dispatch thunk of ManagedResource.cost.getter();
  v42 = CostProfile.energyEfficientMode.getter();
  v44 = *(v37 + 8);
  v43 = (v37 + 8);
  v44(v36, v77);
  [v28 setUseEnergyEfficientMode_];
  v45 = MEMORY[0x223D8E6B0](v39, v41);
  [v28 setAssetIdentifier_];

  v74 = v39;
  v75 = v28;
  v46 = [v28 e5Functions];
  type metadata accessor for TGIE5FunctionObjC(0, &lazy cache variable for type metadata for TGIE5FunctionObjC, off_27844EEC0);
  lazy protocol witness table accessor for type TGIE5FunctionObjC and conformance NSObject(&lazy protocol witness table cache variable for type TGIE5FunctionObjC and conformance NSObject, &lazy cache variable for type metadata for TGIE5FunctionObjC, off_27844EEC0);
  v47 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v47 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v47 = *(v0 + 256);
    v48 = *(v0 + 264);
    v49 = *(v0 + 272);
    v50 = *(v0 + 280);
    v51 = *(v0 + 288);
  }

  else
  {
    v52 = -1 << *(v47 + 32);
    v48 = v47 + 56;
    v49 = ~v52;
    v53 = -v52;
    if (v53 < 64)
    {
      v54 = ~(-1 << v53);
    }

    else
    {
      v54 = -1;
    }

    v51 = v54 & *(v47 + 56);

    v50 = 0;
  }

  v78 = (v0 + 584);
  v55 = (v49 + 64) >> 6;
  do
  {
    if (v47 < 0)
    {
      v59 = __CocoaSet.Iterator.next()();
      if (!v59 || (*(v0 + 592) = v59, swift_dynamicCast(), (v58 = *v78) == 0))
      {
LABEL_34:
        outlined consume of [Int : (next: Int, logit: Float)].Iterator._Variant(v47);

        v55 = v75;
        v43 = v41;
        v47 = v74;
LABEL_35:
        if (one-time initialization token for device == -1)
        {
LABEL_36:
          v68 = type metadata accessor for Logger();
          *(v0 + 1000) = __swift_project_value_buffer(v68, static Log.device);

          v69 = Logger.logObject.getter();
          v70 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v69, v70))
          {
            v71 = swift_slowAlloc();
            v72 = swift_slowAlloc();
            v81 = v72;
            *v71 = 136446210;
            *(v71 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v43, &v81);
            _os_log_impl(&dword_220940000, v69, v70, "Creating e5Runner model for asset %{public}s", v71, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v72);
            MEMORY[0x223D90A10](v72, -1, -1);
            MEMORY[0x223D90A10](v71, -1, -1);
          }

          *(v0 + 368) = 0;
          *(v0 + 336) = 0u;
          *(v0 + 352) = 0u;
          v73 = swift_task_alloc();
          *(v0 + 1008) = v73;
          *v73 = v0;
          v73[1] = _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC14handleLLMModel33_65818D6FA4B5F545C6B162D7CBE031AELL8llmModel5assety0T7Catalog0f6BackedI0_p_AA0F0VtYa0T15ManagerServices0C5ErrorOYKFTQ4_;

          return specialized static LanguageModelLoader.load(from:baseModel:)(v55, v0 + 336);
        }

LABEL_42:
        swift_once();
        goto LABEL_36;
      }
    }

    else
    {
      v56 = v50;
      v57 = v51;
      if (!v51)
      {
        while (1)
        {
          v50 = v56 + 1;
          if (__OFADD__(v56, 1))
          {
            break;
          }

          if (v50 >= v55)
          {
            goto LABEL_34;
          }

          v57 = *(v48 + 8 * v50);
          ++v56;
          if (v57)
          {
            goto LABEL_21;
          }
        }

        __break(1u);
        goto LABEL_42;
      }

LABEL_21:
      v51 = (v57 - 1) & v57;
      v58 = *(*(v47 + 48) + ((v50 << 9) | (8 * __clz(__rbit64(v57)))));
      if (!v58)
      {
        goto LABEL_34;
      }
    }

    v43 = [v58 adapterType];
  }

  while (!v43);

  outlined consume of [Int : (next: Int, logit: Float)].Iterator._Variant(v47);

  v55 = v75;
  v43 = v41;
  v47 = v74;
  if ([v75 modelType] != 1)
  {
    goto LABEL_35;
  }

  if (one-time initialization token for device != -1)
  {
    swift_once();
  }

  v60 = type metadata accessor for Logger();
  __swift_project_value_buffer(v60, static Log.device);
  v61 = v75;
  v62 = Logger.logObject.getter();
  v63 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    *v64 = 138543362;
    *(v64 + 4) = v61;
    *v65 = v61;
    v66 = v61;
    _os_log_impl(&dword_220940000, v62, v63, "Creating asset object for ane base model with configuration %{public}@", v64, 0xCu);
    outlined destroy of [Int](v65, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x223D90A10](v65, -1, -1);
    MEMORY[0x223D90A10](v64, -1, -1);
  }

  v67 = swift_task_alloc();
  *(v0 + 984) = v67;
  *v67 = v0;
  v67[1] = _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC14handleLLMModel33_65818D6FA4B5F545C6B162D7CBE031AELL8llmModel5assety0T7Catalog0f6BackedI0_p_AA0F0VtYa0T15ManagerServices0C5ErrorOYKFTQ1_;

  return static BaseModelLoader.load(from:)(v0 + 456, v61);
}

uint64_t outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t static LanguageModelLoader.findURLOfKnownModelAsset(in:source:)@<X0>(char *a1@<X8>)
{
  v31 = a1;
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v4 = MEMORY[0x28223BE20](v1, v3);
  v6 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v4, v7);
  v32 = v29 - v9;
  MEMORY[0x28223BE20](v8, v10);
  v11 = *(v2 + 16);
  v33 = v29 - v12;
  v11();
  v13 = (v2 + 32);
  v14 = (v2 + 8);
  v15 = aNdle;
  v16 = 5;
  v29[1] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v30 = v2;
  while (1)
  {
    v17 = v32;
    URL.appendingPathComponent(_:)();
    v18 = *v13;
    v19 = v17;
    v20 = v1;
    (*v13)(v6, v19, v1);
    v21 = URL.path(percentEncoded:)(1);
    v22 = [objc_opt_self() defaultManager];
    v23 = MEMORY[0x223D8E6B0](v21._countAndFlagsBits, v21._object);

    v24 = [v22 fileExistsAtPath_];

    if (v24)
    {
      break;
    }

    v25 = *v14;
    v1 = v20;
    (*v14)(v6, v20);
    v15 += 16;
    if (!--v16)
    {
      (*(v30 + 56))(v31, 1, 1, v20);
      return v25(v33, v1);
    }
  }

  v26 = v31;
  v1 = v20;
  v18(v31, v6, v20);
  v27 = v30 + 56;
  (*(v30 + 56))(v26, 0, 1, v20);
  v25 = *(v27 - 48);
  return v25(v33, v1);
}

unint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC25modelConfigurationWithURL33_65818D6FA4B5F545C6B162D7CBE031AELL0H4Path0H8Resource07adapterV11InformationSo017TGIMutableE5ModelI4ObjCC_AA13ModelMetadataVSgtSS_12ModelCatalog0f6BackedV0_pAA07AdaptervX0VSgt20ModelManagerServices0C5ErrorOYKF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v162 = a3;
  v154 = a7;
  v155 = a8;
  v159 = a6;
  v160 = a1;
  v157 = a5;
  v161 = a2;
  v11 = type metadata accessor for InferenceError.Context();
  v158 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v139 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference13ModelMetadataVSgMd, &_s24TokenGenerationInference13ModelMetadataVSgMR);
  MEMORY[0x28223BE20](v15 - 8, v16);
  v18 = &v139 - v17;
  v19 = type metadata accessor for ModelMetadata(0);
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v21);
  v23 = (&v139 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1((v9 + 192), *(v9 + 216));
  v24 = v163;
  OnDeviceInferenceProviderDataSource.modelMetadataFromResource(_:)(a4, v18);
  if (v24)
  {

    (*(v20 + 56))(v18, 1, 1, v19);
    v163 = 0;
    goto LABEL_4;
  }

  v153 = v23;
  v25 = v158;
  v163 = 0;
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
LABEL_4:
    outlined destroy of [Int](v18, &_s24TokenGenerationInference13ModelMetadataVSgMd, &_s24TokenGenerationInference13ModelMetadataVSgMR);
    if (one-time initialization token for device == -1)
    {
LABEL_5:
      v26 = type metadata accessor for Logger();
      __swift_project_value_buffer(v26, static Log.device);
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_220940000, v27, v28, "Falling back to default configuration, metadata json not encoded correctly", v29, 2u);
        MEMORY[0x223D90A10](v29, -1, -1);
      }

      if (MEMORY[0x277D84F90] >> 62)
      {
        if (__CocoaSet.count.getter())
        {
          _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo17TGIE5FunctionObjCC_Tt0g5Tf4g_n(MEMORY[0x277D84F90]);
        }

        if (__CocoaSet.count.getter())
        {
          _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo29TGIE5AdapterConfigurationObjCC_Tt0g5Tf4g_n(MEMORY[0x277D84F90]);
        }
      }

      v30 = objc_allocWithZone(TGIMutableE5ModelConfigurationObjC);
      v31 = MEMORY[0x223D8E6B0](v161, v162);
      type metadata accessor for TGIE5FunctionObjC(0, &lazy cache variable for type metadata for TGIE5FunctionObjC, off_27844EEC0);
      lazy protocol witness table accessor for type TGIE5FunctionObjC and conformance NSObject(&lazy protocol witness table cache variable for type TGIE5FunctionObjC and conformance NSObject, &lazy cache variable for type metadata for TGIE5FunctionObjC, off_27844EEC0);
      isa = Set._bridgeToObjectiveC()().super.isa;

      type metadata accessor for TGIE5FunctionObjC(0, &lazy cache variable for type metadata for TGIE5AdapterConfigurationObjC, off_27844EEB0);
      lazy protocol witness table accessor for type TGIE5FunctionObjC and conformance NSObject(&lazy protocol witness table cache variable for type TGIE5AdapterConfigurationObjC and conformance NSObject, &lazy cache variable for type metadata for TGIE5AdapterConfigurationObjC, off_27844EEB0);
      v33 = Set._bridgeToObjectiveC()().super.isa;

      v34 = [v30 initWithModelType:0 modelBundlePath:v31 e5Functions:isa adapterConfigurations:v33];

      (*(v20 + 56))(v160, 1, 1, v19);
      return v34;
    }

LABEL_71:
    swift_once();
    goto LABEL_5;
  }

  v145 = v20;
  v146 = v19;
  v141 = a9;
  v36 = v153;
  outlined init with take of OnDeviceInferenceAssetObjectE5Runner(v18, v153, type metadata accessor for ModelMetadata);
  v37 = *v36;
  v38 = v36[1];
  v39 = *v36 == 7696487 && v38 == 0xE300000000000000;
  v140 = v14;
  if (v39 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v40 = 2;
    goto LABEL_16;
  }

  v100 = v37 == 6647393 && v38 == 0xE300000000000000;
  if (v100 || (v101 = v14, (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    v40 = 1;
LABEL_16:
    v144 = v40;
    v41 = MEMORY[0x277D84FA0];
    v167 = MEMORY[0x277D84FA0];
    v42 = v36[3];
    v139 = v11;
    if (v42)
    {
      v43 = v42;
    }

    else
    {
      v43 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_24TokenGenerationInference10E5FunctionVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    }

    v164 = v41;
    v44 = v43 + 64;
    v45 = 1 << *(v43 + 32);
    v46 = -1;
    if (v45 < 64)
    {
      v46 = ~(-1 << v45);
    }

    v20 = v46 & *(v43 + 64);
    v149 = (v45 + 63) >> 6;

    v19 = 0;
    *&v47 = 136446466;
    v143 = v47;
    v148 = v43;
    v150 = v9;
    while (v20)
    {
LABEL_27:
      v49 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
      v50 = v49 | (v19 << 6);
      v51 = (*(v43 + 48) + 16 * v50);
      v52 = *v51;
      v53 = v51[1];
      v54 = (*(v43 + 56) + 48 * v50);
      v56 = v54[3];
      v55 = v54[4];
      v156 = v54[5];
      if (v56)
      {
        v151 = v55;
        v57 = v54[2];
        if (v159)
        {
          v58 = v57 == v157 && v56 == v159;
          if (v58 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            v59 = v153[2];
            if (!v59)
            {

              if (one-time initialization token for device != -1)
              {
                swift_once();
              }

              v111 = type metadata accessor for Logger();
              __swift_project_value_buffer(v111, static Log.device);
              v112 = Logger.logObject.getter();
              v113 = static os_log_type_t.error.getter();
              v114 = os_log_type_enabled(v112, v113);
              v115 = v153;
              v116 = v139;
              v117 = v158;
              if (v114)
              {
                v118 = swift_slowAlloc();
                *v118 = 0;
                _os_log_impl(&dword_220940000, v112, v113, "Metadata json is missing adapter type to symbol mapping", v118, 2u);
                MEMORY[0x223D90A10](v118, -1, -1);
              }

              _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
              v119 = v140;
              InferenceError.Context.init(additionalDescription:domain:code:userInfo:fallbackAllowed:)();
              v120 = v141;
              (*(v117 + 16))(v141, v119, v116);
              v34 = *MEMORY[0x277D29D78];
              v121 = type metadata accessor for InferenceError();
              (*(*(v121 - 8) + 104))(v120, v34, v121);
              lazy protocol witness table accessor for type InferenceError and conformance InferenceError(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, 255, MEMORY[0x277D29DE0], MEMORY[0x277D29DE8]);
              swift_willThrowTypedImpl();

              (*(v117 + 8))(v119, v116);
              v110 = v115;
              goto LABEL_69;
            }

            if (!*(v59 + 16))
            {

LABEL_64:
              v122 = v57;

              v123 = v158;
              if (one-time initialization token for device != -1)
              {
                swift_once();
              }

              v124 = type metadata accessor for Logger();
              __swift_project_value_buffer(v124, static Log.device);

              v125 = Logger.logObject.getter();
              v126 = static os_log_type_t.error.getter();

              if (os_log_type_enabled(v125, v126))
              {
                v127 = swift_slowAlloc();
                v142 = v56;
                v128 = v127;
                v129 = swift_slowAlloc();
                v165 = v129;
                *v128 = v143;
                *(v128 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v122, v142, &v165);
                *(v128 + 12) = 2082;
                v130 = Dictionary.description.getter();
                v132 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v130, v131, &v165);

                *(v128 + 14) = v132;
                _os_log_impl(&dword_220940000, v125, v126, "Failed to get symbol for adapter type %{public}s from %{public}s", v128, 0x16u);
                swift_arrayDestroy();
                MEMORY[0x223D90A10](v129, -1, -1);
                v56 = v142;
                MEMORY[0x223D90A10](v128, -1, -1);
              }

              v133 = v153;
              v134 = v139;
              v165 = 0;
              v166 = 0xE000000000000000;
              _StringGuts.grow(_:)(29);

              v165 = 0xD000000000000015;
              v166 = 0x8000000220AFD200;
              MEMORY[0x223D8E780](v122, v56);

              MEMORY[0x223D8E780](544106784, 0xE400000000000000);
              v135 = Dictionary.description.getter();
              MEMORY[0x223D8E780](v135);

              _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
              v136 = v140;
              InferenceError.Context.init(additionalDescription:domain:code:userInfo:fallbackAllowed:)();
              v137 = v141;
              (*(v123 + 16))(v141, v136, v134);
              v34 = *MEMORY[0x277D29D78];
              v138 = type metadata accessor for InferenceError();
              (*(*(v138 - 8) + 104))(v137, v34, v138);
              lazy protocol witness table accessor for type InferenceError and conformance InferenceError(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, 255, MEMORY[0x277D29DE0], MEMORY[0x277D29DE8]);
              swift_willThrowTypedImpl();

              (*(v123 + 8))(v136, v134);
              v110 = v133;
              goto LABEL_69;
            }

            v152 = v57;
            v60 = specialized __RawDictionaryStorage.find<A>(_:)(v57, v56);
            if ((v61 & 1) == 0)
            {

              v57 = v152;
              goto LABEL_64;
            }

            v62 = *(v59 + 56) + 16 * v60;
            v63 = *(v62 + 8);
            v147 = *v62;
            v64 = v56;
            v65 = objc_allocWithZone(TGIE5FunctionObjC);

            v66 = MEMORY[0x223D8E6B0](v52, v53);

            v67 = MEMORY[0x223D8E6B0](v152, v64);
            v68 = [v65 initWithName:v66 queryLength:v151 contextSize:v156 adapterType:v67];

            v69 = v68;
            specialized Set._Variant.insert(_:)(&v165, v69);

            v70 = objc_allocWithZone(TGIE5AdapterConfigurationObjC);
            v71 = MEMORY[0x223D8E6B0](v152, v64);

            v72 = MEMORY[0x223D8E6B0](v147, v63);

            v73 = MEMORY[0x223D8E6B0](v154, v155);
            v74 = [v70 initWithAdapterType:v71 symbolName:v72 mutableWeightsFilePath:v73];

            specialized Set._Variant.insert(_:)(&v165, v74);
            v43 = v148;
          }
        }

        else
        {
          v78 = v43;
          v152 = v54[2];
          v79 = one-time initialization token for device;

          if (v79 != -1)
          {
            swift_once();
          }

          v80 = type metadata accessor for Logger();
          __swift_project_value_buffer(v80, static Log.device);

          v81 = Logger.logObject.getter();
          v82 = static os_log_type_t.default.getter();

          v147 = v81;
          if (os_log_type_enabled(v81, v82))
          {
            v83 = swift_slowAlloc();
            v84 = swift_slowAlloc();
            v142 = v56;
            v85 = v84;
            v165 = v84;
            *v83 = v143;
            *(v83 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v53, &v165);
            *(v83 + 12) = 2082;
            v86 = v152;
            *(v83 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v152, v142, &v165);
            v87 = v82;
            v88 = v147;
            _os_log_impl(&dword_220940000, v147, v87, "E5 function %{public}s specifies adapter type %{public}s but resource information was not provided", v83, 0x16u);
            swift_arrayDestroy();
            v89 = v85;
            v56 = v142;
            MEMORY[0x223D90A10](v89, -1, -1);
            v90 = v83;
            v78 = v148;
            MEMORY[0x223D90A10](v90, -1, -1);
          }

          else
          {

            v86 = v152;
          }

          v91 = objc_allocWithZone(TGIE5FunctionObjC);
          v92 = MEMORY[0x223D8E6B0](v52, v53);

          v93 = MEMORY[0x223D8E6B0](v86, v56);

          v94 = [v91 initWithName:v92 queryLength:v151 contextSize:v156 adapterType:v93];

          specialized Set._Variant.insert(_:)(&v165, v94);
          v43 = v78;
        }
      }

      else
      {
        v75 = objc_allocWithZone(TGIE5FunctionObjC);

        v76 = MEMORY[0x223D8E6B0](v52, v53);

        v77 = [v75 initWithName:v76 queryLength:v55 contextSize:v156 adapterType:0];

        specialized Set._Variant.insert(_:)(&v165, v77);
      }
    }

    while (1)
    {
      v48 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v48 >= v149)
      {

        v95 = objc_allocWithZone(TGIMutableE5ModelConfigurationObjC);
        v96 = MEMORY[0x223D8E6B0](v161, v162);
        type metadata accessor for TGIE5FunctionObjC(0, &lazy cache variable for type metadata for TGIE5FunctionObjC, off_27844EEC0);
        lazy protocol witness table accessor for type TGIE5FunctionObjC and conformance NSObject(&lazy protocol witness table cache variable for type TGIE5FunctionObjC and conformance NSObject, &lazy cache variable for type metadata for TGIE5FunctionObjC, off_27844EEC0);
        v97 = Set._bridgeToObjectiveC()().super.isa;

        type metadata accessor for TGIE5FunctionObjC(0, &lazy cache variable for type metadata for TGIE5AdapterConfigurationObjC, off_27844EEB0);
        lazy protocol witness table accessor for type TGIE5FunctionObjC and conformance NSObject(&lazy protocol witness table cache variable for type TGIE5AdapterConfigurationObjC and conformance NSObject, &lazy cache variable for type metadata for TGIE5AdapterConfigurationObjC, off_27844EEB0);
        v98 = Set._bridgeToObjectiveC()().super.isa;

        v34 = [v95 initWithModelType:v144 modelBundlePath:v96 e5Functions:v97 adapterConfigurations:v98];

        v99 = v160;
        outlined init with take of OnDeviceInferenceAssetObjectE5Runner(v153, v160, type metadata accessor for ModelMetadata);
        (*(v145 + 56))(v99, 0, 1, v146);
        return v34;
      }

      v20 = *(v44 + 8 * v48);
      ++v19;
      if (v20)
      {
        v19 = v48;
        goto LABEL_27;
      }
    }

    __break(1u);
    goto LABEL_71;
  }

  if (one-time initialization token for device != -1)
  {
    swift_once();
  }

  v102 = type metadata accessor for Logger();
  __swift_project_value_buffer(v102, static Log.device);

  v103 = Logger.logObject.getter();
  v104 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v103, v104))
  {
    v105 = swift_slowAlloc();
    v106 = swift_slowAlloc();
    v165 = v106;
    *v105 = 136446210;
    *(v105 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v38, &v165);
    _os_log_impl(&dword_220940000, v103, v104, "Failed to handle model of type %{public}s", v105, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v106);
    v107 = v106;
    v101 = v140;
    MEMORY[0x223D90A10](v107, -1, -1);
    MEMORY[0x223D90A10](v105, -1, -1);
  }

  v165 = 0;
  v166 = 0xE000000000000000;
  _StringGuts.grow(_:)(23);

  v165 = 0xD000000000000015;
  v166 = 0x8000000220AFD1A0;
  MEMORY[0x223D8E780](v37, v38);
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  InferenceError.Context.init(additionalDescription:domain:code:userInfo:fallbackAllowed:)();
  v108 = v141;
  (*(v25 + 16))(v141, v101, v11);
  v34 = *MEMORY[0x277D29D78];
  v109 = type metadata accessor for InferenceError();
  (*(*(v109 - 8) + 104))(v108, v34, v109);
  lazy protocol witness table accessor for type InferenceError and conformance InferenceError(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, 255, MEMORY[0x277D29DE0], MEMORY[0x277D29DE8]);
  swift_willThrowTypedImpl();
  (*(v25 + 8))(v101, v11);
  v110 = v153;
LABEL_69:
  outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v110, type metadata accessor for ModelMetadata);
  return v34;
}

uint64_t OnDeviceInferenceProviderDataSource.modelMetadataFromResource(_:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v61 = type metadata accessor for LLMDraftModelAssetContents();
  v60 = *(v61 - 8);
  MEMORY[0x28223BE20](v61, v4);
  v59 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LLMDraftModelAssetMetadata();
  MEMORY[0x28223BE20](v6 - 8, v7);
  v66 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog0B5AssetVyAA08LLMDraftaC8MetadataVAA0daC8ContentsVGMd, &_s12ModelCatalog0B5AssetVyAA08LLMDraftaC8MetadataVAA0daC8ContentsVGMR);
  v67 = *(v9 - 8);
  v68 = v9;
  MEMORY[0x28223BE20](v9, v10);
  v70 = &v56 - v11;
  v12 = type metadata accessor for URL();
  v14 = MEMORY[0x28223BE20](v12 - 8, v13);
  v58 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v16);
  v65 = &v56 - v17;
  v18 = type metadata accessor for LLMModelAssetContents();
  v64 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v19);
  v21 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for LLMModelAssetMetadata();
  MEMORY[0x28223BE20](v22 - 8, v23);
  v25 = &v56 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference13ModelMetadataVSgMd, &_s24TokenGenerationInference13ModelMetadataVSgMR);
  v28 = MEMORY[0x28223BE20](v26 - 8, v27);
  v57 = &v56 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28, v30);
  v32 = &v56 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog0B5AssetVyAA08LLMModelC8MetadataVAA0dC8ContentsVGMd, &_s12ModelCatalog0B5AssetVyAA08LLMModelC8MetadataVAA0dC8ContentsVGMR);
  v69 = *(v33 - 8);
  MEMORY[0x28223BE20](v33, v34);
  v36 = &v56 - v35;
  v37 = type metadata accessor for ModelMetadata(0);
  v38 = *(v37 - 8);
  v39 = *(v38 + 56);
  v71 = a2;
  v63 = v39;
  v62 = v38 + 56;
  v39(a2, 1, 1, v37);
  outlined init with copy of DeterministicLanguageModelProtocol(a1, v75);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog19AssetBackedResource_pMd, &_s12ModelCatalog19AssetBackedResource_pMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog19AssetBackedLLMModel_pMd, &_s12ModelCatalog19AssetBackedLLMModel_pMR);
  if (swift_dynamicCast())
  {
    outlined init with take of RandomNumberGenerator(&v72, v76);
    __swift_project_boxed_opaque_existential_1(v76, v77);
    v40 = v78;
    dispatch thunk of AssetBackedResource.fetchAsset()();
    if (!v40)
    {
      CatalogAsset.metadata.getter();
      v78 = 0;
      CatalogAsset.contents.getter();
      v46 = v65;
      AssetContents.metadataURL.getter();
      (*(v64 + 8))(v21, v18);
      v47 = v78;
      ModelMetadata.init(from:metadataUrl:)(v25, v46, v32);
      (*(v69 + 8))(v36, v33);
      v48 = v71;
      outlined destroy of [Int](v71, &_s24TokenGenerationInference13ModelMetadataVSgMd, &_s24TokenGenerationInference13ModelMetadataVSgMR);
      if (v47)
      {
        return __swift_destroy_boxed_opaque_existential_1(v76);
      }

      v63(v32, 0, 1, v37);
      v54 = v32;
      v55 = v48;
      goto LABEL_12;
    }

    goto LABEL_6;
  }

  v41 = v78;
  v74 = 0;
  v72 = 0u;
  v73 = 0u;
  outlined destroy of [Int](&v72, &_s12ModelCatalog19AssetBackedLLMModel_pSgMd, &_s12ModelCatalog19AssetBackedLLMModel_pSgMR);
  outlined init with copy of DeterministicLanguageModelProtocol(a1, v75);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s12ModelCatalog019AssetBackedLLMDraftA0_pMd, &_s12ModelCatalog019AssetBackedLLMDraftA0_pMR);
  if (swift_dynamicCast())
  {
    outlined init with take of RandomNumberGenerator(&v72, v76);
    __swift_project_boxed_opaque_existential_1(v76, v77);
    v42 = v70;
    dispatch thunk of AssetBackedResource.fetchAsset()();
    if (!v41)
    {
      v44 = v66;
      v45 = v68;
      CatalogAsset.metadata.getter();
      v49 = v59;
      CatalogAsset.contents.getter();
      v50 = v58;
      v51 = v61;
      AssetContents.metadataURL.getter();
      (*(v60 + 8))(v49, v51);
      v52 = v57;
      ModelMetadata.init(from:metadataUrl:)(v44, v50, v57);
      (*(v67 + 8))(v42, v45);
      v53 = v71;
      outlined destroy of [Int](v71, &_s24TokenGenerationInference13ModelMetadataVSgMd, &_s24TokenGenerationInference13ModelMetadataVSgMR);
      v63(v52, 0, 1, v37);
      v54 = v52;
      v55 = v53;
LABEL_12:
      outlined init with take of ModelMetadata?(v54, v55);
      return __swift_destroy_boxed_opaque_existential_1(v76);
    }

LABEL_6:
    outlined destroy of [Int](v71, &_s24TokenGenerationInference13ModelMetadataVSgMd, &_s24TokenGenerationInference13ModelMetadataVSgMR);
    return __swift_destroy_boxed_opaque_existential_1(v76);
  }

  v74 = 0;
  v72 = 0u;
  v73 = 0u;
  return outlined destroy of [Int](&v72, &_s12ModelCatalog019AssetBackedLLMDraftA0_pSgMd, &_s12ModelCatalog019AssetBackedLLMDraftA0_pSgMR);
}

uint64_t sub_22095C108(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore34PromptPreprocessingTemplateVersionOSgMd, &_s19TokenGenerationCore34PromptPreprocessingTemplateVersionOSgMR);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 64);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

unsigned __int8 *std::__format::__handle_replacement_field[abi:ne200100]<char const*,std::basic_format_parse_context<char>,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unsigned __int8 *a1, unsigned __int8 *a2, unsigned __int8 **a3, unsigned __int8 **a4)
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = std::__format::__parse_arg_id[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(a1, a2, a3);
  if (v7 == a2)
  {
    goto LABEL_14;
  }

  v9 = *v7;
  v20 = v9 == 58;
  if (v9 == 125)
  {
    goto LABEL_5;
  }

  if (v9 != 58)
  {
LABEL_14:
    std::__throw_format_error[abi:ne200100]("The argument index should end with a ':' or a '}'");
  }

  ++v7;
LABEL_5:
  *a3 = v7;
  v19[0] = a3;
  v19[1] = a4;
  v19[2] = &v20;
  v10 = a4[1];
  if (v10 <= v8)
  {
    LOBYTE(v22) = 0;
  }

  else if (v10 > 0xC)
  {
    v15 = &a4[2][32 * v8];
    v16 = *(v15 + 1);
    v21 = *v15;
    v22 = v16;
  }

  else
  {
    v11 = &a4[2][16 * v8];
    v13 = *v11;
    v12 = *(v11 + 1);
    v14 = (a4[3] >> (5 * v8)) & 0x1F;
    *&v21 = v13;
    *(&v21 + 1) = v12;
    LOBYTE(v22) = v14;
  }

  std::__visit_format_arg[abi:ne200100]<char const* std::__format::__handle_replacement_field[abi:ne200100]<char const*,std::basic_format_parse_context<char>,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(char const*,char const*,std::basic_format_parse_context<char> &,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char> &)::{lambda(char const*)#1},std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v19, &v21);
  v17 = *a3;
  if (*a3 == a2 || *v17 != 125)
  {
    std::__throw_format_error[abi:ne200100]("The replacement field misses a terminating '}'");
  }

  return v17 + 1;
}

uint64_t *std::__visit_format_arg[abi:ne200100]<char const* std::__format::__handle_replacement_field[abi:ne200100]<char const*,std::basic_format_parse_context<char>,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(char const*,char const*,std::basic_format_parse_context<char> &,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char> &)::{lambda(char const*)#1},std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unsigned __int8 ***a1, unsigned __int8 *a2)
{
  switch(a2[16])
  {
    case 1u:
      v3 = *a2;
      *v60 = 0;
      *&v60[8] = -1;
      v61 = 32;
      v62 = 0;
      v63 = 0;
      if (*a1[2] == 1)
      {
        v4 = *a1;
        v5 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(v60, *a1, 311);
        std::__format_spec::__process_parsed_BOOL[abi:ne200100]<char>(v60, "a BOOL");
        *v4 = v5;
      }

      v6 = a1[1];
      result = std::formatter<BOOL,char>::format[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v60, v3, v6);
      goto LABEL_65;
    case 2u:
      v26 = *a2;
      *v60 = 0;
      *&v60[8] = -1;
      v61 = 32;
      v62 = 0;
      v63 = 0;
      if (*a1[2] == 1)
      {
        v27 = *a1;
        v28 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(v60, *a1, 311);
        std::__format_spec::__process_parsed_char[abi:ne200100]<char>(v60, "a character");
        *v27 = v28;
      }

      v6 = a1[1];
      result = std::__formatter_char<char>::format[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v60, v26, v6);
      goto LABEL_65;
    case 3u:
      v29 = *a2;
      *v60 = 0;
      *&v60[8] = -1;
      v61 = 32;
      v62 = 0;
      v63 = 0;
      if (*a1[2] == 1)
      {
        v30 = *a1;
        v31 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(v60, *a1, 311);
        std::__format_spec::__process_parsed_integer[abi:ne200100]<char>(v60, "an integer");
        *v30 = v31;
      }

      v6 = a1[1];
      result = std::__formatter_integer<char>::format[abi:ne200100]<int,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v60, v29, v6);
      goto LABEL_65;
    case 4u:
      v16 = *a2;
      *v60 = 0;
      *&v60[8] = -1;
      v61 = 32;
      v62 = 0;
      v63 = 0;
      if (*a1[2] == 1)
      {
        v17 = *a1;
        v18 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(v60, *a1, 311);
        std::__format_spec::__process_parsed_integer[abi:ne200100]<char>(v60, "an integer");
        *v17 = v18;
      }

      v6 = a1[1];
      result = std::__formatter_integer<char>::format[abi:ne200100]<long long,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v60, v16, v6);
      goto LABEL_65;
    case 5u:
      v36 = *a2;
      v35 = *(a2 + 1);
      *v60 = 0;
      *&v60[8] = -1;
      v61 = 32;
      v62 = 0;
      v63 = 0;
      if (*a1[2] == 1)
      {
        v37 = *a1;
        v38 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(v60, *a1, 311);
        std::__format_spec::__process_parsed_integer[abi:ne200100]<char>(v60, "an integer");
        *v37 = v38;
      }

      v6 = a1[1];
      result = std::__formatter_integer<char>::format[abi:ne200100]<__int128,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v60, v36, v35, v6);
      goto LABEL_65;
    case 6u:
      v32 = *a2;
      *v60 = 0;
      *&v60[8] = -1;
      v61 = 32;
      v62 = 0;
      v63 = 0;
      if (*a1[2] == 1)
      {
        v33 = *a1;
        v34 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(v60, *a1, 311);
        std::__format_spec::__process_parsed_integer[abi:ne200100]<char>(v60, "an integer");
        *v33 = v34;
      }

      v6 = a1[1];
      result = std::__formatter_integer<char>::format[abi:ne200100]<unsigned int,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v60, v32, v6);
      goto LABEL_65;
    case 7u:
      v42 = *a2;
      *v60 = 0;
      *&v60[8] = -1;
      v61 = 32;
      v62 = 0;
      v63 = 0;
      if (*a1[2] == 1)
      {
        v43 = *a1;
        v44 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(v60, *a1, 311);
        std::__format_spec::__process_parsed_integer[abi:ne200100]<char>(v60, "an integer");
        *v43 = v44;
      }

      v6 = a1[1];
      result = std::__formatter_integer<char>::format[abi:ne200100]<unsigned long long,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v60, v42, v6);
      goto LABEL_65;
    case 8u:
      v23 = *a2;
      v22 = *(a2 + 1);
      *v60 = 0;
      *&v60[8] = -1;
      v61 = 32;
      v62 = 0;
      v63 = 0;
      if (*a1[2] == 1)
      {
        v24 = *a1;
        v25 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(v60, *a1, 311);
        std::__format_spec::__process_parsed_integer[abi:ne200100]<char>(v60, "an integer");
        *v24 = v25;
      }

      v6 = a1[1];
      result = std::__formatter_integer<char>::format[abi:ne200100]<unsigned __int128,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v60, v23, v22, v6);
      goto LABEL_65;
    case 9u:
      v19 = *a2;
      *v60 = 0;
      *&v60[8] = -1;
      v61 = 32;
      v62 = 0;
      v63 = 0;
      if (*a1[2] != 1)
      {
        goto LABEL_56;
      }

      v20 = *a1;
      v21 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(v60, *a1, 319);
      if (v60[1] - 13 < 6)
      {
        if ((*&v60[2] & 0x80000000) == 0 && *&v60[8] == -1)
        {
          *&v60[8] = 6;
        }

LABEL_55:
        *v20 = v21;
LABEL_56:
        v6 = a1[1];
        v54 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v60, v6);
        result = std::__formatter::__format_floating_point[abi:ne200100]<float,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v6, v54, v55, v19);
        goto LABEL_65;
      }

      if (v60[1] <= 0xCu && ((1 << v60[1]) & 0x1801) != 0)
      {
        goto LABEL_55;
      }

      goto LABEL_67;
    case 0xAu:
      v45 = *a2;
      *v60 = 0;
      *&v60[8] = -1;
      v61 = 32;
      v62 = 0;
      v63 = 0;
      if (*a1[2] != 1)
      {
        goto LABEL_64;
      }

      v46 = *a1;
      v47 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(v60, *a1, 319);
      if (v60[1] - 13 < 6)
      {
        if ((*&v60[2] & 0x80000000) == 0 && *&v60[8] == -1)
        {
          *&v60[8] = 6;
        }

LABEL_63:
        *v46 = v47;
LABEL_64:
        v6 = a1[1];
        v58 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v60, v6);
        result = std::__formatter::__format_floating_point[abi:ne200100]<double,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v6, v58, v59, v45);
        goto LABEL_65;
      }

      if (v60[1] <= 0xCu && ((1 << v60[1]) & 0x1801) != 0)
      {
        goto LABEL_63;
      }

      goto LABEL_67;
    case 0xBu:
      v39 = *a2;
      *v60 = 0;
      *&v60[8] = -1;
      v61 = 32;
      v62 = 0;
      v63 = 0;
      if (*a1[2] != 1)
      {
        goto LABEL_60;
      }

      v40 = *a1;
      v41 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(v60, *a1, 319);
      if (v60[1] - 13 >= 6)
      {
        if (v60[1] > 0xCu || ((1 << v60[1]) & 0x1801) == 0)
        {
LABEL_67:
          std::__format_spec::__throw_invalid_type_format_error[abi:ne200100]("a floating-point");
        }
      }

      else if ((*&v60[2] & 0x80000000) == 0 && *&v60[8] == -1)
      {
        *&v60[8] = 6;
      }

      *v40 = v41;
LABEL_60:
      v6 = a1[1];
      v56 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v60, v6);
      result = std::__formatter::__format_floating_point[abi:ne200100]<long double,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v6, v56, v57, v39);
LABEL_65:
      *v6 = result;
      return result;
    case 0xCu:
      v48 = *a2;
      *v60 = 1;
      *&v60[4] = 0xFFFFFFFF00000000;
      v61 = 32;
      v62 = 0;
      v63 = 0;
      if (*a1[2] == 1)
      {
        v49 = *a1;
        *v49 = std::__formatter_string<char>::parse[abi:ne200100]<std::basic_format_parse_context<char>>(v60, *a1);
      }

      v6 = a1[1];
      result = std::formatter<char const*,char>::format[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v60, v48, v6);
      goto LABEL_65;
    case 0xDu:
      v10 = *a2;
      v11 = *(a2 + 1);
      *v60 = 1;
      *&v60[4] = 0xFFFFFFFF00000000;
      v61 = 32;
      v62 = 0;
      v63 = 0;
      if (*a1[2] == 1)
      {
        v12 = *a1;
        *v12 = std::__formatter_string<char>::parse[abi:ne200100]<std::basic_format_parse_context<char>>(v60, *a1);
      }

      v6 = a1[1];
      v13 = *v6;
      v14 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v60, v6);
      result = std::__formatter::__write_string[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(v10, v11, v13, v14, v15);
      goto LABEL_65;
    case 0xEu:
      v8 = *a2;
      *v60 = 0;
      *&v60[8] = -1;
      v61 = 32;
      v62 = 0;
      v63 = 0;
      if (*a1[2] == 1)
      {
        v9 = *a1;
        *v9 = std::__formatter_pointer<char>::parse[abi:ne200100]<std::basic_format_parse_context<char>>(v60, *a1);
      }

      v6 = a1[1];
      result = std::__formatter_pointer<char>::format[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v60, v8, v6);
      goto LABEL_65;
    case 0xFu:
      v50 = *a1;
      v51 = *a2;
      v52 = *(a2 + 1);
      v53 = a1[1];

      return v52(v50, v53, v51);
    default:
      std::__throw_format_error[abi:ne200100]("The argument index value is too large for the number of arguments supplied");
  }
}

void *std::formatter<char const*,char>::format[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(char *a1, char *__s, uint64_t *a3)
{
  v6 = strlen(__s);
  v7 = *a3;
  v9 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a3);

  return std::__formatter::__write_string[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(__s, v6, v7, v9, v8);
}

unint64_t std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(char *a1, void *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = std::__format_spec::__parser<char>::__get_width[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2);
  std::__format_spec::__parser<char>::__get_precision[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a1, a2);
  return (v5 << 8) | (v6 << 32) | v4 & 0x7F;
}

unint64_t std::__format_spec::__parser<char>::__get_width[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(uint64_t a1, void *a2)
{
  *&v13[23] = *MEMORY[0x277D85DE8];
  if ((*(a1 + 2) & 0x4000) == 0)
  {
    return *(a1 + 4);
  }

  v4 = *(a1 + 4);
  v5 = a2[1];
  if (v5 <= v4)
  {
    LOBYTE(v6) = 0;
  }

  else if (v5 > 0xC)
  {
    v8 = a2[2] + 32 * v4;
    v4 = *v8;
    v2 = *(v8 + 8);
    LOBYTE(v6) = *(v8 + 16);
    v10[0] = *(v8 + 17);
    *(v10 + 7) = *(v8 + 24);
  }

  else
  {
    v6 = (a2[3] >> (5 * v4)) & 0x1FLL;
    v7 = (a2[2] + 16 * v4);
    v4 = *v7;
    v2 = v7[1];
  }

  v11[0] = v4;
  v11[1] = v2;
  v12 = v6;
  *v13 = v10[0];
  *&v13[7] = *(v10 + 7);
  return std::__visit_format_arg[abi:ne200100]<unsigned int std::__format_spec::__substitute_arg_id[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(std::basic_format_arg<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>)::{lambda(std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>)#1},std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v9, v11);
}

unint64_t std::__format_spec::__parser<char>::__get_precision[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(uint64_t a1, void *a2)
{
  *&v13[23] = *MEMORY[0x277D85DE8];
  if ((*(a1 + 2) & 0x80000000) == 0)
  {
    return *(a1 + 8);
  }

  v4 = *(a1 + 8);
  v5 = a2[1];
  if (v5 <= v4)
  {
    LOBYTE(v6) = 0;
  }

  else if (v5 > 0xC)
  {
    v8 = a2[2] + 32 * v4;
    v4 = *v8;
    v2 = *(v8 + 8);
    LOBYTE(v6) = *(v8 + 16);
    v10[0] = *(v8 + 17);
    *(v10 + 7) = *(v8 + 24);
  }

  else
  {
    v6 = (a2[3] >> (5 * v4)) & 0x1FLL;
    v7 = (a2[2] + 16 * v4);
    v4 = *v7;
    v2 = v7[1];
  }

  v11[0] = v4;
  v11[1] = v2;
  v12 = v6;
  *v13 = v10[0];
  *&v13[7] = *(v10 + 7);
  return std::__visit_format_arg[abi:ne200100]<unsigned int std::__format_spec::__substitute_arg_id[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(std::basic_format_arg<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>)::{lambda(std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>)#1},std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v9, v11);
}

void *std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(void *result, char *__src, size_t a3)
{
  v4 = result;
  v5 = result[4];
  if (v5)
  {
    v7 = *v5;
    v6 = v5[1];
    if (*v5 - v6 >= a3)
    {
      v8 = a3;
    }

    else
    {
      v8 = *v5 - v6;
    }

    v5[1] = v6 + a3;
    if (v7 <= v6 || v8 == 0)
    {
      return result;
    }
  }

  else
  {
    v8 = a3;
  }

  v10 = result[2];
  do
  {
    v11 = v4[1] - v10;
    if (v11 < v8 + 1)
    {
      result = (v4[3])(v4, v8 + 2);
      v10 = v4[2];
      v11 = v4[1] - v10;
    }

    if (v11 >= v8)
    {
      v12 = v8;
    }

    else
    {
      v12 = v11;
    }

    if (v12)
    {
      result = memmove((*v4 + v10), __src, v12);
      v10 = v4[2];
    }

    v10 += v12;
    v4[2] = v10;
    __src += v12;
    v13 = v8 > v11;
    v8 -= v12;
  }

  while (v13);
  return result;
}

void *std::__formatter::__write_string_no_precision[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(char *__src, size_t a2, void *a3, uint64_t a4, unint64_t a5)
{
  if (a4 <= 0)
  {
    std::__format::__output_buffer<char>::__copy[abi:ne200100]<char>(a3, __src, a2);
    return a3;
  }

  else
  {
    v10 = std::__format_spec::__estimate_column_width[abi:ne200100]<char,char const*>(__src, a2, HIDWORD(a4), 1);

    return std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(__src, a2, a3, a4, a5, v10);
  }
}

void *std::__formatter::__write_string[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(char *__src, size_t a2, void *a3, uint64_t a4, unint64_t a5)
{
  if ((a5 & 0x80000000) != 0)
  {

    return std::__formatter::__write_string_no_precision[abi:ne200100]<char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(__src, a2, a3, a4, a5);
  }

  else
  {
    v9 = std::__format_spec::__estimate_column_width[abi:ne200100]<char,char const*>(__src, a2, a5 & 0x7FFFFFFF, 0);
    v11 = v10 - __src;

    return std::__formatter::__write[abi:ne200100]<char,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(__src, v11, a3, a4, a5, v9);
  }
}

void ImageEmbeddingsProvider::ImageEmbeddingsProvider(ImageEmbeddingsProvider *this, const std::__fs::filesystem::path *a2, const std::__fs::filesystem::path *a3)
{
  v45 = *MEMORY[0x277D85DE8];
  std::__fs::filesystem::__canonical(&v39, a2, 0);
  std::__fs::filesystem::path::extension[abi:ne200100](&v39, &pn);
  std::__fs::filesystem::path::path[abi:ne200100]<char [5],void>(&__p, ".bundle");
  v46.__data_ = &__p;
  v6 = std::__fs::filesystem::operator==[abi:ne200100](&pn, v46);
  v7 = v6;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(pn.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v39.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__pn_.__r_.__value_.__l.__data_);
  }

  if (v7)
  {
    if (SHIBYTE(a2->__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&pn, a2->__pn_.__r_.__value_.__l.__data_, a2->__pn_.__r_.__value_.__l.__size_);
    }

    else
    {
      pn = a2->__pn_;
    }

    E5RT::ProgramLibrary::OpenLibrary();
    if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(pn.__r_.__value_.__l.__data_);
    }

    ExportedFunctions = E5RT::ProgramLibrary::GetExportedFunctions(buf[0]);
    std::string::basic_string[abi:ne200100]<0>(&pn, "image_feature_projection");
    v10 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>>>::find<std::string>(ExportedFunctions, &pn.__r_.__value_.__l.__data_);
    v11 = v10;
    if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(pn.__r_.__value_.__l.__data_);
      if (v11)
      {
        goto LABEL_18;
      }
    }

    else if (v10)
    {
LABEL_18:
      v12 = E5RT::ProgramLibrary::GetExportedFunctions(buf[0]);
      std::string::basic_string[abi:ne200100]<0>(&pn, "image_feature_projection");
      v13 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<E5RT::ProgramFunction>>>>::find<std::string>(v12, &pn.__r_.__value_.__l.__data_);
      if (!v13)
      {
        std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
      }

      v14 = v13[6];
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(pn.__r_.__value_.__l.__data_);
      }

      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      E5RT::PrecompiledComputeOpCreateOptions::Create();
      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      }

      E5RT::ExecutionStreamOperation::CreatePreCompiledComputeOp();
      cgm::token_generation_inference::ajax::utils::allocateAndBindMemoryToPorts(v33, v15);
      v16 = pn.__r_.__value_.__r.__words[0];
      pn.__r_.__value_.__r.__words[0] = 0;
      if (v16)
      {
        (*(*v16 + 8))(v16);
      }

      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      }

LABEL_66:
      v23 = buf[0];
      buf[0] = 0;
      if (v23)
      {
        v23 = (*(*v23 + 8))(v23);
      }

      *this = v33;
      if (v33)
      {
        operator new();
      }

      goto LABEL_70;
    }

    v17 = cgm::token_generation_inference::common::logging::CGMTGILogger::GENERAL(v10);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v39.__pn_.__r_.__value_.__r.__words[2] = 12;
      v39.__pn_.__r_.__value_.__r.__words[0] = "image_feature_projection";
      pn.__r_.__value_.__r.__words[0] = v43;
      *&pn.__r_.__value_.__r.__words[1] = xmmword_220AE5410;
      v41 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
      v42 = 0;
      __src = v43;
      __p.__r_.__value_.__r.__words[0] = 1;
      __p.__r_.__value_.__l.__size_ = &v39;
      __p.__r_.__value_.__r.__words[2] = 12;
      std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&pn, "Model did not have image projection function named {}", 53, &__p);
      v18 = pn.__r_.__value_.__r.__words[2];
      if (pn.__r_.__value_.__r.__words[2] > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (pn.__r_.__value_.__r.__words[2] >= 0x17)
      {
        operator new();
      }

      v35 = pn.__r_.__value_.__s.__data_[16];
      if (pn.__r_.__value_.__r.__words[2])
      {
        memmove(&__dst, __src, pn.__r_.__value_.__r.__words[2]);
      }

      *(&__dst + v18) = 0;
      if (__src != v43)
      {
        operator delete(__src);
      }

      p_dst = &__dst;
      if (v35 < 0)
      {
        p_dst = __dst;
      }

      LODWORD(v37.__r_.__value_.__l.__data_) = 136315138;
      *(v37.__r_.__value_.__r.__words + 4) = p_dst;
      _os_log_impl(&dword_220940000, v17, OS_LOG_TYPE_INFO, "%s", &v37, 0xCu);
      if (v35 < 0)
      {
        operator delete(__dst);
      }
    }

    v33 = 0;
    goto LABEL_66;
  }

  v8 = cgm::token_generation_inference::common::logging::CGMTGILogger::GENERAL(v6);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    if (SHIBYTE(a2->__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v37, a2->__pn_.__r_.__value_.__l.__data_, a2->__pn_.__r_.__value_.__l.__size_);
    }

    else
    {
      v37 = a2->__pn_;
    }

    size = HIBYTE(v37.__r_.__value_.__r.__words[2]);
    if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v37.__r_.__value_.__l.__size_;
    }

    v20 = &v37;
    if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v20 = v37.__r_.__value_.__r.__words[0];
    }

    v39.__pn_.__r_.__value_.__l.__size_ = size;
    v39.__pn_.__r_.__value_.__r.__words[2] = 13;
    v39.__pn_.__r_.__value_.__r.__words[0] = v20;
    pn.__r_.__value_.__r.__words[0] = v43;
    *&pn.__r_.__value_.__r.__words[1] = xmmword_220AE5410;
    v41 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
    v42 = 0;
    __src = v43;
    __p.__r_.__value_.__r.__words[0] = 1;
    __p.__r_.__value_.__l.__size_ = &v39;
    __p.__r_.__value_.__r.__words[2] = 13;
    std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&pn, "Cannot load projection function from non-precompiled bundle at path {}.", 71, &__p);
    v21 = pn.__r_.__value_.__r.__words[2];
    if (pn.__r_.__value_.__r.__words[2] > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (pn.__r_.__value_.__r.__words[2] >= 0x17)
    {
      operator new();
    }

    v35 = pn.__r_.__value_.__s.__data_[16];
    if (pn.__r_.__value_.__r.__words[2])
    {
      memmove(&__dst, __src, pn.__r_.__value_.__r.__words[2]);
    }

    *(&__dst + v21) = 0;
    if (__src != v43)
    {
      operator delete(__src);
    }

    v22 = &__dst;
    if (v35 < 0)
    {
      v22 = __dst;
    }

    LODWORD(buf[0]) = 136315138;
    *(buf + 4) = v22;
    _os_log_impl(&dword_220940000, v8, OS_LOG_TYPE_INFO, "%s", buf, 0xCu);
    if (v35 < 0)
    {
      operator delete(__dst);
    }

    if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v37.__r_.__value_.__l.__data_);
    }
  }

  *this = 0;
LABEL_70:
  *(this + 1) = 0;
  *(this + 2) = 0;
  if (SHIBYTE(a3->__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, a3->__pn_.__r_.__value_.__l.__data_, a3->__pn_.__r_.__value_.__l.__size_);
  }

  else
  {
    v25 = *&a3->__pn_.__r_.__value_.__l.__data_;
    *(this + 5) = *(&a3->__pn_.__r_.__value_.__l + 2);
    *(this + 24) = v25;
  }

  *(this + 6) = 0;
  *(this + 56) = xmmword_220AE8430;
  v26 = cgm::token_generation_inference::common::logging::CGMTGILogger::GENERAL(v23);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    if (SHIBYTE(a2->__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&pn, a2->__pn_.__r_.__value_.__l.__data_, a2->__pn_.__r_.__value_.__l.__size_);
    }

    else
    {
      pn = a2->__pn_;
    }

    p_pn = &pn;
    if ((pn.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_pn = pn.__r_.__value_.__r.__words[0];
    }

    LODWORD(v39.__pn_.__r_.__value_.__l.__data_) = 136315138;
    *(v39.__pn_.__r_.__value_.__r.__words + 4) = p_pn;
    _os_log_impl(&dword_220940000, v26, OS_LOG_TYPE_INFO, "Setting up ImageEmbeddingsProvider from model at %s", &v39, 0xCu);
    if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(pn.__r_.__value_.__l.__data_);
    }
  }

  if (*(this + 2))
  {
    v29 = *this;
    {
      exception = __cxa_allocate_exception(0x18uLL);
      std::string::basic_string[abi:ne200100]<0>(&pn, "The projection op was invalid due to non-matching input/output embedding count");
      cgm::token_generation_inference::ajax::AJAXE5Error::AJAXE5Error(exception, 1, &pn);
    }
  }
}

void sub_22095D7AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (__p != v66)
  {
    operator delete(__p);
  }

  if (a23)
  {
    (*(*a23 + 8))(a23);
  }

  _Unwind_Resume(a1);
}

uint64_t _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC14handleLLMModel33_65818D6FA4B5F545C6B162D7CBE031AELL8llmModel5assety0T7Catalog0f6BackedI0_p_AA0F0VtYa0T15ManagerServices0C5ErrorOYKFTY5_()
{
  v102 = v0;
  v1 = *(v0 + 1032);
  v2 = *(v0 + 1024);
  v3 = *(v0 + 1016);
  v4 = *(v0 + 976);
  v5 = *(v0 + 968);
  v6 = *(v0 + 696);
  v7 = type metadata accessor for E5TransformerLanguageModel(0);
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain_n();

  v98 = specialized E5TransformerLanguageModel.__allocating_init(e5Runner:name:)(v3, v5, v4, v7, ObjectType, v2);
  OnDeviceInferenceAssetRepository.metadataModelConfiguration(asset:)(v6);
  v9 = *(v0 + 720);
  if (v1)
  {

    v10 = type metadata accessor for PromptTemplateConfiguration(0);
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  }

  else
  {
    (*(*(v0 + 688) + 32))(*(v0 + 720), *(v0 + 696), *(v0 + 680));
    v10 = type metadata accessor for PromptTemplateConfiguration(0);
    *(v9 + *(v10 + 20)) = 0;
    (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  }

  v11 = *(v0 + 712);
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(*(v0 + 720), v11, &_s24TokenGenerationInference27PromptTemplateConfigurationVSgMd, &_s24TokenGenerationInference27PromptTemplateConfigurationVSgMR);
  type metadata accessor for PromptTemplateConfiguration(0);
  v12 = *(*(v10 - 8) + 48);
  v13 = v12(v11, 1, v10);
  outlined destroy of [Int](v11, &_s24TokenGenerationInference27PromptTemplateConfigurationVSgMd, &_s24TokenGenerationInference27PromptTemplateConfigurationVSgMR);
  if (v13 == 1)
  {

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = *(v0 + 976);
      v17 = *(v0 + 968);
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v101 = v19;
      *v18 = 136446210;
      *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v16, &v101);
      _os_log_impl(&dword_220940000, v14, v15, "Did not find prompt template configuration for asset %{public}s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x223D90A10](v19, -1, -1);
      MEMORY[0x223D90A10](v18, -1, -1);
    }
  }

  else if (!v12(*(v0 + 720), 1, v10))
  {
    v20 = *(v0 + 944);
    outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(*(v0 + 952), v20, &_s24TokenGenerationInference13ModelMetadataVSgMd, &_s24TokenGenerationInference13ModelMetadataVSgMR);
    v21 = type metadata accessor for ModelMetadata(0);
    v22 = (*(*(v21 - 8) + 48))(v20, 1, v21);
    v23 = *(v0 + 944);
    if (v22 == 1)
    {
      outlined destroy of [Int](v23, &_s24TokenGenerationInference13ModelMetadataVSgMd, &_s24TokenGenerationInference13ModelMetadataVSgMR);
      v24 = 0;
    }

    else
    {
      v24 = *(v23 + 192);
      outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v23, type metadata accessor for ModelMetadata);
    }

    *(*(v0 + 720) + *(v10 + 20)) = v24 & 1;
  }

  v25 = *(v0 + 952);
  v26 = *(v0 + 936);
  v27 = *(v0 + 656);
  v28 = *(v0 + 608);
  __swift_project_boxed_opaque_existential_1(*(v0 + 600), *(*(v0 + 600) + 24));
  v29 = dispatch thunk of CatalogResource.id.getter();
  v96 = v30;
  v97 = v29;
  outlined init with copy of OnDeviceInferenceAssetObjectE5Runner(v28, v27, type metadata accessor for Asset);
  v99 = type metadata accessor for Asset(0);
  v91 = *(*(v99 - 8) + 56);
  (v91)(v27, 0, 1);
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v25, v26, &_s24TokenGenerationInference13ModelMetadataVSgMd, &_s24TokenGenerationInference13ModelMetadataVSgMR);
  v31 = type metadata accessor for ModelMetadata(0);
  v32 = *(*(v31 - 8) + 48);
  v33 = v32(v26, 1, v31);
  v34 = *(v0 + 936);
  if (v33 == 1)
  {
    outlined destroy of [Int](*(v0 + 936), &_s24TokenGenerationInference13ModelMetadataVSgMd, &_s24TokenGenerationInference13ModelMetadataVSgMR);
    v95 = 0;
  }

  else
  {
    v95 = *(v34 + 32);

    outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v34, type metadata accessor for ModelMetadata);
  }

  v35 = *(v0 + 928);
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(*(v0 + 952), v35, &_s24TokenGenerationInference13ModelMetadataVSgMd, &_s24TokenGenerationInference13ModelMetadataVSgMR);
  v36 = v32(v35, 1, v31);
  v37 = *(v0 + 928);
  if (v36 == 1)
  {
    outlined destroy of [Int](*(v0 + 928), &_s24TokenGenerationInference13ModelMetadataVSgMd, &_s24TokenGenerationInference13ModelMetadataVSgMR);
    v94 = 0;
  }

  else
  {
    v38 = *(v37 + 40);
    v39 = *(v37 + 56);
    v40 = *(v37 + 88);
    *(v0 + 48) = *(v37 + 72);
    *(v0 + 64) = v40;
    *(v0 + 16) = v38;
    *(v0 + 32) = v39;
    v41 = *(v37 + 104);
    v42 = *(v37 + 120);
    v43 = *(v37 + 136);
    *(v0 + 128) = *(v37 + 152);
    *(v0 + 96) = v42;
    *(v0 + 112) = v43;
    *(v0 + 80) = v41;
    outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v0 + 16, v0 + 136, &_s24TokenGenerationInference17DefaultParametersVSgMd, &_s24TokenGenerationInference17DefaultParametersVSgMR);
    outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v37, type metadata accessor for ModelMetadata);
    if (*(v0 + 104) == 1)
    {
      v94 = 0;
    }

    else
    {
      v44 = *(v0 + 80);
      v45 = *(v0 + 88);
      outlined destroy of [Int](v0 + 16, &_s24TokenGenerationInference17DefaultParametersVSgMd, &_s24TokenGenerationInference17DefaultParametersVSgMR);
      if (v45)
      {
        v46 = 0;
      }

      else
      {
        v46 = v44;
      }

      v94 = v46;
    }
  }

  v47 = *(v0 + 920);
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(*(v0 + 952), v47, &_s24TokenGenerationInference13ModelMetadataVSgMd, &_s24TokenGenerationInference13ModelMetadataVSgMR);
  v48 = v32(v47, 1, v31);
  v49 = *(v0 + 920);
  if (v48 == 1)
  {
    outlined destroy of [Int](*(v0 + 920), &_s24TokenGenerationInference13ModelMetadataVSgMd, &_s24TokenGenerationInference13ModelMetadataVSgMR);
    v93 = 0;
  }

  else
  {
    v93 = *(v49 + 184);

    outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v49, type metadata accessor for ModelMetadata);
  }

  v50 = *(v0 + 952);
  v51 = *(v0 + 912);
  v52 = *(v0 + 720);
  v53 = *(v0 + 704);
  v54 = *(v0 + 648);
  v55 = *(v0 + 640);
  v56 = type metadata accessor for UUID();
  (*(*(v56 - 8) + 56))(v55, 1, 1, v56);
  v91(v54, 1, 1, v99);
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v52, v53, &_s24TokenGenerationInference27PromptTemplateConfigurationVSgMd, &_s24TokenGenerationInference27PromptTemplateConfigurationVSgMR);
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v50, v51, &_s24TokenGenerationInference13ModelMetadataVSgMd, &_s24TokenGenerationInference13ModelMetadataVSgMR);
  v57 = v32(v51, 1, v31);
  v58 = *(v0 + 912);
  if (v57 == 1)
  {
    outlined destroy of [Int](*(v0 + 912), &_s24TokenGenerationInference13ModelMetadataVSgMd, &_s24TokenGenerationInference13ModelMetadataVSgMR);
    v90 = 0;
    v92 = 0;
    v89 = 0;
  }

  else
  {
    v90 = v58[26];
    v92 = v58[25];
    v89 = v58[27];
    outlined copy of ClassifierMetadata?(v92, v90, v89);
    outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v58, type metadata accessor for ModelMetadata);
  }

  v59 = *(v0 + 904);
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(*(v0 + 952), v59, &_s24TokenGenerationInference13ModelMetadataVSgMd, &_s24TokenGenerationInference13ModelMetadataVSgMR);
  v60 = v32(v59, 1, v31);
  v61 = *(v0 + 904);
  if (v60 == 1)
  {
    outlined destroy of [Int](*(v0 + 904), &_s24TokenGenerationInference13ModelMetadataVSgMd, &_s24TokenGenerationInference13ModelMetadataVSgMR);
    v87 = 0;
    v88 = 0;
    v85 = 1;
    v86 = 0;
  }

  else
  {
    v87 = v61[29];
    v88 = v61[28];
    v85 = v61[31];
    v86 = v61[30];
    outlined copy of StopToken?(v88, v87, v86, v85);
    outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v61, type metadata accessor for ModelMetadata);
  }

  v62 = *(v0 + 896);
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(*(v0 + 952), v62, &_s24TokenGenerationInference13ModelMetadataVSgMd, &_s24TokenGenerationInference13ModelMetadataVSgMR);
  v63 = v32(v62, 1, v31);
  v64 = *(v0 + 896);
  v65 = *(v0 + 632);
  if (v63 == 1)
  {
    outlined destroy of [Int](*(v0 + 896), &_s24TokenGenerationInference13ModelMetadataVSgMd, &_s24TokenGenerationInference13ModelMetadataVSgMR);
    v66 = type metadata accessor for PromptPreprocessingTemplateVersion();
    (*(*(v66 - 8) + 56))(v65, 1, 1, v66);
  }

  else
  {
    outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v64 + *(v31 + 64), *(v0 + 632), &_s19TokenGenerationCore34PromptPreprocessingTemplateVersionOSgMd, &_s19TokenGenerationCore34PromptPreprocessingTemplateVersionOSgMR);
    outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v64, type metadata accessor for ModelMetadata);
  }

  v67 = *(v0 + 976);
  v81 = *(v0 + 968);
  v82 = *(v0 + 960);
  v83 = *(v0 + 952);
  v84 = *(v0 + 720);
  v68 = *(v0 + 704);
  v69 = *(v0 + 672);
  v70 = *(v0 + 664);
  v71 = *(v0 + 656);
  v72 = *(v0 + 648);
  v73 = *(v0 + 640);
  v80 = *(v0 + 632);
  v100 = *(v0 + 1016);
  *v69 = v81;
  v69[1] = v67;
  v69[2] = v97;
  v69[3] = v96;
  outlined init with take of Asset?(v71, v69 + v70[6], &_s24TokenGenerationInference5AssetVSgMd, &_s24TokenGenerationInference5AssetVSgMR);
  *(v69 + v70[7]) = v100;
  *(v69 + v70[8]) = v98;
  v74 = (v69 + v70[9]);
  *v74 = xmmword_220AED900;
  v74[1] = 0u;
  v74[2] = 0u;
  v74[3] = 0u;
  *(v74 + 57) = 0u;
  *(v69 + v70[10]) = v95;
  *(v69 + v70[11]) = v94;
  *(v69 + v70[12]) = v93;
  outlined init with take of Asset?(v73, v69 + v70[13], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined init with take of Asset?(v72, v69 + v70[14], &_s24TokenGenerationInference5AssetVSgMd, &_s24TokenGenerationInference5AssetVSgMR);
  outlined init with take of Asset?(v68, v69 + v70[15], &_s24TokenGenerationInference27PromptTemplateConfigurationVSgMd, &_s24TokenGenerationInference27PromptTemplateConfigurationVSgMR);
  v75 = (v69 + v70[16]);
  *v75 = v92;
  v75[1] = v90;
  v75[2] = v89;
  v76 = (v69 + v70[17]);
  *v76 = v88;
  v76[1] = v87;
  v76[2] = v86;
  v76[3] = v85;
  outlined init with take of Asset?(v80, v69 + v70[18], &_s19TokenGenerationCore34PromptPreprocessingTemplateVersionOSgMd, &_s19TokenGenerationCore34PromptPreprocessingTemplateVersionOSgMR);
  *(v0 + 400) = v70;
  *(v0 + 408) = &protocol witness table for OnDeviceInferenceAssetObjectE5Runner;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 376));
  outlined init with copy of OnDeviceInferenceAssetObjectE5Runner(v69, boxed_opaque_existential_1, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);
  swift_beginAccess();

  specialized Dictionary.subscript.setter(v0 + 376, v81, v67);
  swift_endAccess();
  swift_unknownObjectRelease();

  outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v69, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);
  outlined destroy of [Int](v83, &_s24TokenGenerationInference13ModelMetadataVSgMd, &_s24TokenGenerationInference13ModelMetadataVSgMR);
  outlined destroy of [Int](v84, &_s24TokenGenerationInference27PromptTemplateConfigurationVSgMd, &_s24TokenGenerationInference27PromptTemplateConfigurationVSgMR);

  v78 = *(v0 + 8);

  return v78();
}

uint64_t std::__function::__value_func<void ()(cgm::token_generation_inference::ajax::AJAXE5MLModel::Logits const&)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t _ss5ClockPsE7measure9isolation_8DurationQzScA_pSgYi_yyYaKXEtYaKFs010ContinuousA0V_Tg50120_s24TokenGenerationInference26E5TransformerLanguageModelC7measure015_C54BEC2A6549C4L16D2CDB56F73805ABELLyxxyYaKXEYaKlFyyX35KXEfU_SayAA15LogitCollection_pG_Tg5Say0gH9Inference15LogitCollection_pGSgxs5Error_pRi_zRi0_zlyAMIsgHrzo_Tf1ncn_nTf4nnng_nTY3_()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[9];
  v4 = v0[10];
  dispatch thunk of Clock.now.getter();
  lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock(&lazy protocol witness table cache variable for type ContinuousClock.Instant and conformance ContinuousClock.Instant, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
  dispatch thunk of InstantProtocol.duration(to:)();
  v5 = *(v4 + 8);
  v5(v2, v3);
  v5(v1, v3);
  v6 = v0[2];
  v7 = v0[3];

  v8 = v0[1];

  return v8(v6, v7);
}

uint64_t protocol witness for SamplingDecoder.decodeNextChunk() in conformance TwoStageSpeculativeDecoder(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t MaskedLanguageModel.nextTokensLogits(nodes:presampler:isPrompt:)(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 3008) = v1;

  if (v1)
  {
    outlined destroy of [Int](v4 + 1896, &_s24TokenGenerationInference15LogitPresampler_pSgMd, &_s24TokenGenerationInference15LogitPresampler_pSgMR);

    v5 = MaskedLanguageModel.nextTokensLogits(nodes:presampler:isPrompt:);
  }

  else
  {
    *(v4 + 3016) = a1;
    outlined destroy of [Int](v4 + 1896, &_s24TokenGenerationInference15LogitPresampler_pSgMd, &_s24TokenGenerationInference15LogitPresampler_pSgMR);

    v5 = MaskedLanguageModel.nextTokensLogits(nodes:presampler:isPrompt:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

{
  v3 = *v2;
  *(v3 + 2984) = a1;
  *(v3 + 2992) = v1;

  if (v1)
  {

    v4 = MaskedLanguageModel.nextTokensLogits(nodes:presampler:isPrompt:);
  }

  else
  {
    outlined destroy of [Int](v3 + 2696, &_s24TokenGenerationInference15LogitPresampler_pSgMd, &_s24TokenGenerationInference15LogitPresampler_pSgMR);
    v4 = MaskedLanguageModel.nextTokensLogits(nodes:presampler:isPrompt:);
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, int64_t a2, char a3, void *a4)
{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy24TokenGenerationInference15LogitCollection_pGMd, &_ss23_ContiguousArrayStorageCy24TokenGenerationInference15LogitCollection_pGMR, &_s24TokenGenerationInference15LogitCollection_pMd, &_s24TokenGenerationInference15LogitCollection_pMR);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy24TokenGenerationInference22ProcessedImageProtocol_pGMd, &_ss23_ContiguousArrayStorageCy24TokenGenerationInference22ProcessedImageProtocol_pGMR, &_s24TokenGenerationInference22ProcessedImageProtocol_pMd, &_s24TokenGenerationInference22ProcessedImageProtocol_pMR);
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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

char *closure #1 in E5RunnerObjC.run(tokens:computeLogitsTokenCount:tokenMasks:presampler:)(uint64_t a1, __int128 *p_aBlock, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  if (one-time initialization token for device != -1)
  {
LABEL_35:
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Log.device);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();

  v55 = a6;
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *&aBlock = v15;
    *v14 = 136642819;
    v16 = MEMORY[0x223D8E8D0](p_aBlock, MEMORY[0x277D83B88]);
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &aBlock);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_220940000, v12, v13, "Running token(s): %{sensitive}s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x223D90A10](v15, -1, -1);
    MEMORY[0x223D90A10](v14, -1, -1);
  }

  v19 = *(p_aBlock + 2);
  if (!v19)
  {
    if (a3)
    {
      goto LABEL_8;
    }

LABEL_13:
    v25 = 0;
    goto LABEL_14;
  }

  v20 = a5;
  *&aBlock = MEMORY[0x277D84F90];
  specialized ContiguousArray.reserveCapacity(_:)();
  v21 = p_aBlock + 2;
  v22 = v19;
  do
  {
    v23 = *v21;
    v21 = (v21 + 8);
    [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    --v22;
  }

  while (v22);
  a5 = v20;
  if (!a3)
  {
    goto LABEL_13;
  }

LABEL_8:
  v24 = *(a3 + 16);
  v25 = MEMORY[0x277D84F90];
  if (v24)
  {
    v53 = a4;
    v54 = a5;
    *&aBlock = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    v26 = type metadata accessor for TGITokenMaskObjC();
    v27 = (a3 + 48);
    do
    {
      v28 = *(v27 - 2);
      v29 = *(v27 - 1);
      v30 = *v27;
      v31 = objc_allocWithZone(v26);
      v32 = &v31[OBJC_IVAR____TtC24TokenGenerationInference16TGITokenMaskObjC_tokenMask];
      *v32 = v28;
      *(v32 + 1) = v29;
      *(v32 + 2) = v30;
      v57.receiver = v31;
      v57.super_class = v26;

      objc_msgSendSuper2(&v57, sel_init);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v27 += 3;
      --v24;
    }

    while (v24);
    v25 = aBlock;
    a5 = v54;
  }

LABEL_14:
  result = [a4 getNumTokensProcessed];
  v34 = v19 - a5;
  if (__OFSUB__(v19, a5))
  {
    __break(1u);
    goto LABEL_37;
  }

  v35 = &result[v34];
  if (__OFADD__(result, v34))
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    return result;
  }

  v66 = 0;
  v67 = MEMORY[0x277D84F90];
  v65 = 0;
  type metadata accessor for NSNumber();
  v36.super.isa = Array._bridgeToObjectiveC()().super.isa;

  if (v25)
  {
    type metadata accessor for TGITokenMaskObjC();
    v37.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v37.super.isa = 0;
  }

  outlined init with copy of LogitPresampler?(v55, &v59);
  v38 = swift_allocObject();
  *(v38 + 16) = &v66;
  *(v38 + 24) = &v65;
  *(v38 + 32) = a4;
  *(v38 + 40) = v35;
  v39 = v60;
  *(v38 + 48) = v59;
  *(v38 + 64) = v39;
  *(v38 + 80) = v61;
  *(v38 + 88) = &v67;
  v40 = swift_allocObject();
  *(v40 + 16) = partial apply for closure #3 in closure #1 in E5RunnerObjC.run(tokens:computeLogitsTokenCount:tokenMasks:presampler:);
  *(v40 + 24) = v38;
  *&v64 = partial apply for thunk for @callee_guaranteed (@guaranteed E5RunnerLogitsProtocol?, @guaranteed Error?) -> ();
  *(&v64 + 1) = v40;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v63 = thunk for @escaping @callee_guaranteed (@guaranteed E5RunnerLogitsProtocol?, @guaranteed Error?) -> ();
  *(&v63 + 1) = &block_descriptor_1;
  v41 = _Block_copy(&aBlock);
  a6 = *(&v64 + 1);
  v42 = a4;

  [v42 runTokens:v36.super.isa tokenMasks:v37.super.isa computeLogitsTokenCount:a5 outputBlock:v41];

  _Block_release(v41);
  LOBYTE(v41) = swift_isEscapingClosureAtFileLocation();

  if (v41)
  {
    goto LABEL_38;
  }

  if (v66)
  {
    *&aBlock = v66;
    v43 = v66;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySay24TokenGenerationInference15LogitCollection_pG6logits_Si9callCountts5Error_pGMd, &_sScCySay24TokenGenerationInference15LogitCollection_pG6logits_Si9callCountts5Error_pGMR);
    CheckedContinuation.resume(throwing:)();
  }

  else
  {
    a5 = v67;
    v44 = *(v67 + 16);
    a3 = v67 + 32;
    p_aBlock = &aBlock;

    for (i = 0; ; i = a4)
    {
      v46 = 0uLL;
      a4 = v44;
      v47 = 0uLL;
      v48 = 0uLL;
      if (i != v44)
      {
        if (i >= *(a5 + 16))
        {
          __break(1u);
          goto LABEL_35;
        }

        a4 = (i + 1);
        *&v59 = i;
        outlined init with copy of DeterministicLanguageModelProtocol(a3 + 40 * i, &v59 + 8);
        v46 = v59;
        v47 = v60;
        v48 = v61;
      }

      aBlock = v46;
      v63 = v47;
      v64 = v48;
      if (!v48)
      {

        *&aBlock = v67;
        *(&aBlock + 1) = v65;

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySay24TokenGenerationInference15LogitCollection_pG6logits_Si9callCountts5Error_pGMd, &_sScCySay24TokenGenerationInference15LogitCollection_pG6logits_Si9callCountts5Error_pGMR);
        CheckedContinuation.resume(returning:)();
        goto LABEL_33;
      }

      v56 = v46;
      outlined init with take of RandomNumberGenerator((&aBlock + 8), &v59);
      v49 = *(&v60 + 1);
      a6 = v61;
      __swift_project_boxed_opaque_existential_1(&v59, *(&v60 + 1));
      if ((*(a6 + 16))(v49, a6))
      {
        break;
      }

      __swift_destroy_boxed_opaque_existential_1(&v59);
    }

    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 134218240;
      *(v52 + 4) = v56;
      *(v52 + 12) = 2048;
      swift_beginAccess();
      *(v52 + 14) = *(v67 + 16);
      _os_log_impl(&dword_220940000, v50, v51, "Found NaN logit at %ld of %ld", v52, 0x16u);
      MEMORY[0x223D90A10](v52, -1, -1);
    }

    v58 = [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:@"com.apple.TokenGenerationInference.E5Runner" code:5 userInfo:0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySay24TokenGenerationInference15LogitCollection_pG6logits_Si9callCountts5Error_pGMd, &_sScCySay24TokenGenerationInference15LogitCollection_pG6logits_Si9callCountts5Error_pGMR);
    CheckedContinuation.resume(throwing:)();
    __swift_destroy_boxed_opaque_existential_1(&v59);
  }

LABEL_33:
}

uint64_t sub_22095F6B0()
{
  if (*(v0 + 72))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 48));
  }

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t closure #1 in E5TransformerLanguageModel.run(promptModuleNodes:queryNodes:computeLogitsTokenCount:presampler:)()
{
  v1 = v0[8];
  v2 = *(v1 + OBJC_IVAR____TtC24TokenGenerationInference26E5TransformerLanguageModel_currentPromptModuleNodes);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = *(v1 + OBJC_IVAR____TtC24TokenGenerationInference26E5TransformerLanguageModel_lruKVCache);

    v5 = 32;
    do
    {
      E5TransformerLanguageModel.leftContextTokens(forNode:)(*(v2 + v5));
      v7 = v6;
      v8 = *(v4 + 16);
      type metadata accessor for KVLRUCache.TokenArrayWrapper();
      v9 = swift_allocObject();
      *(v9 + 16) = v7;
      v10 = v8;
      v11 = [v10 objectForKey_];

      v5 += 8;
      --v3;
    }

    while (v3);
  }

  v12 = v0[21];
  E5TransformerLanguageModel.cachePromptModuleNodes(promptModulesTokens:)(v0[15]);
  v13 = v0[14];
  if (v12)
  {

    v14 = v0[1];
  }

  else
  {
    v15 = v0[20];
    v16 = v0[8];

    specialized Array.append<A>(contentsOf:)(v13);

    result = specialized Array.append<A>(contentsOf:)(v17);
    v19 = *(v16 + 64);
    v20 = __OFADD__(v19, v15);
    v21 = v19 + v15;
    if (v20)
    {
      __break(1u);
      return result;
    }

    v22 = v0[19];
    v23 = v0[7];
    *(v16 + 64) = v21;
    *v23 = v22;
    v14 = v0[1];
  }

  return v14();
}

{
  v1 = *(v0 + 64);
  if ((*(v1 + 32) & 1) == 0)
  {
    result = _sSasSQRzlE2eeoiySbSayxG_ABtFZSi_Tt1g5(*(v1 + OBJC_IVAR____TtC24TokenGenerationInference26E5TransformerLanguageModel_currentQueryNodes), &outlined read-only object #0 of closure #1 in E5TransformerLanguageModel.run(promptModuleNodes:queryNodes:computeLogitsTokenCount:presampler:));
    if ((result & 1) == 0)
    {
      goto LABEL_48;
    }

    v3 = *(*(v0 + 64) + 48);
    ObjectType = swift_getObjectType();
    v0 = v63;
    (*(v3 + 40))(ObjectType, v3);
    *(v1 + 32) = 1;
    v1 = *(v63 + 64);
  }

  v5 = *(v0 + 72);
  v6 = *(v5 + 16);
  v7 = OBJC_IVAR____TtC24TokenGenerationInference26E5TransformerLanguageModel_currentQueryNodes;
  *(v0 + 104) = OBJC_IVAR____TtC24TokenGenerationInference26E5TransformerLanguageModel_currentQueryNodes;
  result = swift_beginAccess();
  if (v6)
  {
    v8 = (v5 + 32);
    v9 = *(v1 + 56);
    v10 = v9 + 32;
    v11 = *(v1 + v7);
    v12 = *(v9 + 16);
    v13 = *(v11 + 16);
    v14 = v11 + 24;
    v15 = (v5 + 32);
    v16 = v6;
    while (1)
    {
      v18 = *v15++;
      v17 = v18;
      if (v18 >= v12)
      {
        break;
      }

      v19 = v10 + 48 * v17;
      v20 = *(v19 + 16);
      if (v13)
      {
        if (*(v19 + 8) != *(v14 + 8 * v13))
        {
          v20 = 1;
        }

        if ((v20 & 1) == 0)
        {
LABEL_13:
          v21 = v6;
          v22 = (v5 + 32);
          while (v21)
          {
            v23 = *v22++;
            --v21;
            if (!v23)
            {
              __break(1u);
              break;
            }
          }

          E5TransformerLanguageModel.lookupLRUCache(promptModuleNodes:)(*(v0 + 80));
          *(v0 + 112) = v24;
          v25 = *(v24 + 16);
          v26 = MEMORY[0x277D84F90];
          if (v25)
          {
            v27 = v1;
            v65 = MEMORY[0x277D84F90];
            v28 = v24;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v25, 0);
            v0 = v63;
            v29 = (v28 + 32);
            v30 = v65;
            do
            {
              v31 = *v29++;
              E5TransformerLanguageModel.leftContextTokens(forNode:)(v31);
              v66 = v30;
              v34 = *(v30 + 16);
              v33 = *(v30 + 24);
              if (v34 >= v33 >> 1)
              {
                v35 = v32;
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1);
                v32 = v35;
                v30 = v66;
              }

              *(v30 + 16) = v34 + 1;
              *(v30 + 8 * v34 + 32) = v32;
              --v25;
            }

            while (v25);
            v1 = v27;
            v26 = MEMORY[0x277D84F90];
          }

          else
          {
            v30 = MEMORY[0x277D84F90];
          }

          *(v0 + 120) = v30;
          KeyPath = swift_getKeyPath();
          v37 = *(v30 + 16);
          v62 = v30;
          if (v37)
          {
            v60 = v6;
            v61 = v1;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v37, 0);
            v38._rawValue = v26;
            v39 = (v30 + 32);
            do
            {
              *(v0 + 48) = *v39;

              v40 = KeyPath;
              swift_getAtKeyPath();

              v41 = *(v0 + 40);
              v43 = v26[2];
              v42 = v26[3];
              if (v43 >= v42 >> 1)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v42 > 1), v43 + 1, 1);
              }

              v26[2] = v43 + 1;
              v26[v43 + 4] = v41;
              ++v39;
              --v37;
              v0 = v63;
              KeyPath = v40;
            }

            while (v37);

            v1 = v61;
            v30 = v62;
            v6 = v60;
          }

          else
          {

            v38._rawValue = MEMORY[0x277D84F90];
          }

          v44 = E5TransformerLanguageModel.tokenMasks(queryNodes:promptModulesTokensCounts:)(*(v0 + 72), v38);
          *(v0 + 128) = v44;

          v45 = MEMORY[0x277D84F90];
          while (1)
          {
            v47 = *v8++;
            v46 = v47;
            if ((v47 & 0x8000000000000000) != 0)
            {
              goto LABEL_46;
            }

            v48 = *(v1 + 56);
            if (v46 >= *(v48 + 16))
            {
              goto LABEL_47;
            }

            v49 = v48 + 48 * v46;
            if ((*(v49 + 72) & 1) == 0)
            {
              v50 = *(v49 + 64);
              result = swift_isUniquelyReferenced_nonNull_native();
              if ((result & 1) == 0)
              {
                result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v45 + 16) + 1, 1, v45);
                v45 = result;
              }

              v52 = *(v45 + 16);
              v51 = *(v45 + 24);
              if (v52 >= v51 >> 1)
              {
                result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v51 > 1), v52 + 1, 1, v45);
                v45 = result;
              }

              *(v45 + 16) = v52 + 1;
              *(v45 + 8 * v52 + 32) = v50;
              v30 = v62;
              v0 = v63;
            }

            if (!--v6)
            {
              v53 = *(v0 + 64);
              v54 = *(v45 + 16);

              v67 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v54, 0, MEMORY[0x277D84F90]);
              specialized Array.append<A>(contentsOf:)(v30);
              specialized Array.append<A>(contentsOf:)(v45);
              *(v0 + 136) = v67;
              v55 = *(v53 + 48);
              v56 = swift_getObjectType();
              v64 = (*(v55 + 16) + **(v55 + 16));
              v57 = swift_task_alloc();
              *(v0 + 144) = v57;
              *v57 = v0;
              v57[1] = closure #1 in E5TransformerLanguageModel.run(promptModuleNodes:queryNodes:computeLogitsTokenCount:presampler:);
              v58 = *(v0 + 88);
              v59 = *(v0 + 96);

              return v64(v67, v58, v44, v59, v56, v55);
            }
          }
        }
      }

      else if (*(v19 + 16))
      {
        goto LABEL_13;
      }

      if (!--v16)
      {
        goto LABEL_44;
      }
    }
  }

  else
  {
LABEL_44:
    __break(1u);
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
  return result;
}

{

  v1 = *(v0 + 8);

  return v1();
}

void E5TransformerLanguageModel.cachePromptModuleNodes(promptModulesTokens:)(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  v6 = *(*(v1 + OBJC_IVAR____TtC24TokenGenerationInference26E5TransformerLanguageModel_currentQueryNodes) + 16) - 1;
  E5TransformerLanguageModel.currentPromptModulesContextSize.getter();
  v8 = v6 + v7;
  if (__OFADD__(v6, v7))
  {
LABEL_18:
    __break(1u);
    return;
  }

  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = *(v4 + 48);
    ObjectType = swift_getObjectType();
    v32 = v10;
    v30 = *(v10 + 24);
    v11 = (a1 + 32);
    while (1)
    {
      v33 = v11;
      v34 = v9;
      v12._rawValue = *v11;
      v13 = one-time initialization token for device;

      if (v13 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      __swift_project_value_buffer(v14, static Log.device);

      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v35 = v18;
        *v17 = 136642819;
        v19 = MEMORY[0x223D8E8D0](v12._rawValue, MEMORY[0x277D83B88]);
        v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v35);

        *(v17 + 4) = v21;
        _os_log_impl(&dword_220940000, v15, v16, "Caching kv cache entry for tokens %{sensitive}s", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v18);
        MEMORY[0x223D90A10](v18, -1, -1);
        MEMORY[0x223D90A10](v17, -1, -1);
      }

      v22 = *(v12._rawValue + 2);
      v23 = v8 + v22;
      if (__OFADD__(v8, v22))
      {
        break;
      }

      if (v23 < v8)
      {
        goto LABEL_17;
      }

      v24 = v30(v8, v8 + v22, ObjectType, v32);
      if (v3)
      {

        return;
      }

      v26 = v24;
      v27 = v25;
      isa = Data._bridgeToObjectiveC()().super.isa;
      KVLRUCache.insert(kvCacheEntry:tokens:)(isa, v12);
      v3 = v29;
      outlined consume of Data._Representation(v26, v27);

      if (!v29)
      {
        v11 = v33 + 1;
        v8 = v23;
        v9 = v34 - 1;
        if (v34 != 1)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }
}

void E5TransformerLanguageModel.currentPromptModulesContextSize.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC24TokenGenerationInference26E5TransformerLanguageModel_currentPromptModuleNodes);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v15 = MEMORY[0x277D84F90];

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v3 = v15;
    swift_beginAccess();
    v4 = 32;
    while (1)
    {
      v5 = *(v1 + v4);
      if ((v5 & 0x8000000000000000) != 0)
      {
        break;
      }

      v6 = *(v0 + 56);
      if (v5 >= *(v6 + 16))
      {
        goto LABEL_15;
      }

      v7 = *(v6 + 48 * v5 + 32);
      v9 = *(v15 + 16);
      v8 = *(v15 + 24);
      if (v9 >= v8 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1);
      }

      *(v15 + 16) = v9 + 1;
      *(v15 + 8 * v9 + 32) = v7;
      v4 += 8;
      if (!--v2)
      {

        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
LABEL_9:
    v10 = *(v3 + 16);
    if (!v10)
    {
LABEL_13:

      return;
    }

    v11 = 0;
    v12 = (v3 + 32);
    while (1)
    {
      v13 = *v12++;
      v14 = __OFADD__(v11, v13);
      v11 += v13;
      if (v14)
      {
        break;
      }

      if (!--v10)
      {
        goto LABEL_13;
      }
    }
  }

  __break(1u);
}

uint64_t protocol witness for UnbatchedDeterministicLanguageModelProtocol.singleNextTokenLogits(node:presampler:isPrompt:) in conformance TGICAPILanguageModel()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t _ss5ClockPsE7measure9isolation_8DurationQzScA_pSgYi_yyYaKXEtYaKFs010ContinuousA0V_Tg50120_s24TokenGenerationInference26E5TransformerLanguageModelC7measure015_C54BEC2A6549C4L16D2CDB56F73805ABELLyxxyYaKXEYaKlFyyX35KXEfU_SayAA15LogitCollection_pG_Tg5Say0gH9Inference15LogitCollection_pGSgxs5Error_pRi_zRi0_zlyAMIsgHrzo_Tf1ncn_nTf4nnng_nTQ1_()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = _ss5ClockPsE7measure9isolation_8DurationQzScA_pSgYi_yyYaKXEtYaKFs010ContinuousA0V_Tg50120_s24TokenGenerationInference26E5TransformerLanguageModelC7measure015_C54BEC2A6549C4L16D2CDB56F73805ABELLyxxyYaKXEYaKlFyyX35KXEfU_SayAA15LogitCollection_pG_Tg5Say0gH9Inference15LogitCollection_pGSgxs5Error_pRi_zRi0_zlyAMIsgHrzo_Tf1ncn_nTf4nnng_nTY4_;
  }

  else
  {
    v2 = _ss5ClockPsE7measure9isolation_8DurationQzScA_pSgYi_yyYaKXEtYaKFs010ContinuousA0V_Tg50120_s24TokenGenerationInference26E5TransformerLanguageModelC7measure015_C54BEC2A6549C4L16D2CDB56F73805ABELLyxxyYaKXEYaKlFyyX35KXEfU_SayAA15LogitCollection_pG_Tg5Say0gH9Inference15LogitCollection_pGSgxs5Error_pRi_zRi0_zlyAMIsgHrzo_Tf1ncn_nTf4nnng_nTY2_;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t lazy protocol witness table accessor for type ContinuousClock and conformance ContinuousClock(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t specialized E5TransformerLanguageModel.nextTokensLogits(nodes:presampler:isPrompt:)(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 240) = v2;

  if (v2)
  {
    v7 = specialized E5TransformerLanguageModel.nextTokensLogits(nodes:presampler:isPrompt:);
  }

  else
  {
    *(v6 + 248) = a2;
    *(v6 + 256) = a1;
    v7 = specialized E5TransformerLanguageModel.nextTokensLogits(nodes:presampler:isPrompt:);
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

{
  v3[23] = a2;
  v3[24] = v2;
  v3[22] = a1;
  return MEMORY[0x2822009F8](specialized E5TransformerLanguageModel.nextTokensLogits(nodes:presampler:isPrompt:), 0, 0);
}

uint64_t specialized E5TransformerLanguageModel.nextTokensLogits(nodes:presampler:isPrompt:)()
{
  swift_beginAccess();
  static Duration.+= infix(_:_:)();
  result = swift_endAccess();
  v2 = v0[21];
  if (!v2)
  {
    goto LABEL_7;
  }

  v3 = v0[26];

  if (*(v2 + 16) != v3)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v4 = v0[1];

  return v4(v2);
}

{
  v75 = v0;
  v1 = v0[22];
  v2 = E5TransformerLanguageModel.computePromptModuleNodesNeeded()();
  v4 = v3;
  v73 = v0;
  v0[25] = v3;
  v5 = E5TransformerLanguageModel.latestCommonParent(nodes:)(v1);
  v66 = v4;
  v67 = *(v2 + 16);
  if (v67 || *(v4 + 16))
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
    v59 = v0[22];
    v60 = *(v59 + 16);
    v61 = (v59 + 32);
    while (v60)
    {
      v62 = *v61++;
      --v60;
      if (v62 == v5)
      {
        v63 = v0[24];
        result = swift_beginAccess();
        if ((v6 & 0x8000000000000000) != 0)
        {
          goto LABEL_62;
        }

        v64 = *(v63 + 56);
        if (v6 < *(v64 + 16))
        {
          v65 = v64 + 48 * v6;
          if (*(v65 + 48))
          {
            v6 = 0;
          }

          else
          {
            v6 = *(v65 + 40);
          }

          break;
        }

        goto LABEL_63;
      }
    }
  }

  v7 = v0[22];

  v9 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSi_SaySiGTt0g5Tf4g_n(v8);

  v0[20] = v9;
  v11 = *(v7 + 16);
  v0[26] = v11;
  v70 = v11;
  if (v11)
  {
    v68 = v0[24];
    v69 = v0[22] + 32;
    result = swift_beginAccess();
    v12 = 0;
    while (1)
    {
      v13 = *(v69 + 8 * v12);
      if ((v13 & 0x8000000000000000) != 0)
      {
        break;
      }

      v14 = *(v68 + 56);
      if (v13 >= *(v14 + 16))
      {
        goto LABEL_53;
      }

      v71 = v12 + 1;
      v15 = *(v14 + 48 * v13 + 32);

      v16 = specialized NodeStorage.nodes(previousAndIncluding:position:)(v13, v15, 0, v14);
      v18 = v17;

      v19 = v73[20];
      do
      {
        if ((v16 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_51:
          __break(1u);
          goto LABEL_52;
        }

        if (v16 >= *(v18 + 16))
        {
          goto LABEL_51;
        }

        if (v16 == v6)
        {
          break;
        }

        v21 = v18 + 32 + 48 * v16;
        v22 = *(v21 + 8);
        v23 = *(v21 + 16);
        result = MEMORY[0x223D8F400](*(v9 + 40), v16);
        v24 = -1 << *(v9 + 32);
        v25 = result & ~v24;
        if ((*(v9 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25))
        {
          v26 = ~v24;
          while (*(*(v9 + 48) + 8 * v25) != v16)
          {
            v25 = (v25 + 1) & v26;
            if (((*(v9 + 56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
            {
              goto LABEL_10;
            }
          }
        }

        else
        {
LABEL_10:
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v74 = v19;
          result = specialized _NativeSet.insertNew(_:at:isUnique:)(v16, v25, isUniquelyReferenced_nonNull_native);
          v73[20] = v19;
          v9 = v19;
        }

        v16 = v22;
      }

      while ((v23 & 1) == 0);

      v12 = v71;
      if (v71 == v70)
      {
        goto LABEL_20;
      }
    }

LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
  }

  else
  {
LABEL_20:
    v27 = 0;
    v28 = *(v73[24] + OBJC_IVAR____TtC24TokenGenerationInference26E5TransformerLanguageModel_currentQueryNodes);
    v29 = *(v28 + 16);
    while (v29 != v27)
    {
      v30 = v28 + 8 * v27++;
      if (*(v30 + 32) == v6)
      {
        E5TransformerLanguageModel.reset(promptModuleNodes:toNode:)(v2, v6);
LABEL_35:

        v44 = v73[22];
        v45 = v73[20];

        v46 = specialized _NativeSet.subtracting<A>(_:)(v44, v45);
        v47 = v46;
        v48 = *(v46 + 16);
        v49 = v73[24];
        if (v48)
        {
          v50 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi_Tt1g5(*(v46 + 16), 0);
          v72 = specialized Sequence._copySequenceContents(initializing:)(&v74, v50 + 4, v48, v47);
          v51 = v74;
          swift_retain_n();

          result = outlined consume of [Int : (next: Int, logit: Float)].Iterator._Variant(v51);
          if (v72 != v48)
          {
            goto LABEL_56;
          }

          v49 = v73[24];
        }

        else
        {
          swift_retain_n();
          v50 = MEMORY[0x277D84F90];
        }

        v74 = v50;

        specialized MutableCollection<>.sort(by:)(&v74, v49, specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:), specialized MutableCollection<>._insertionSort(within:sortedEnd:by:), 2);
        v53 = v73[23];
        v52 = v73[24];

        specialized Array.append<A>(contentsOf:)(v54);
        v55 = v74;
        v73[27] = v74;
        v56 = swift_task_alloc();
        v73[28] = v56;
        v56[2] = v52;
        v56[3] = v55;
        v56[4] = v66;
        v56[5] = v70;
        v56[6] = v53;
        v73[21] = 0;
        v57 = OBJC_IVAR____TtC24TokenGenerationInference26E5TransformerLanguageModel_clock;
        v58 = swift_task_alloc();
        v73[29] = v58;
        *v58 = v73;
        v58[1] = specialized E5TransformerLanguageModel.nextTokensLogits(nodes:presampler:isPrompt:);

        return _ss5ClockPsE7measure9isolation_8DurationQzScA_pSgYi_yyYaKXEtYaKFs010ContinuousA0V_Tg50120_s24TokenGenerationInference26E5TransformerLanguageModelC7measure015_C54BEC2A6549C4L16D2CDB56F73805ABELLyxxyYaKXEYaKlFyyX35KXEfU_SayAA15LogitCollection_pG_Tg5Say0gH9Inference15LogitCollection_pGSgxs5Error_pRi_zRi0_zlyAMIsgHrzo_Tf1ncn_nTf4nnng_n(0, 0, v52 + v57, (v73 + 21), &async function pointer to partial apply for closure #1 in E5TransformerLanguageModel.run(promptModuleNodes:queryNodes:computeLogitsTokenCount:presampler:), v56);
      }
    }

    if (v67)
    {
      goto LABEL_57;
    }

    if (!v29)
    {
      goto LABEL_58;
    }

    if (v29 > *(v28 + 16))
    {
      goto LABEL_59;
    }

    v31 = v73[24];
    v32 = *(v28 + 8 * v29 + 24);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_220AE8A20;
    *(inited + 32) = v6;
    *(inited + 40) = v32;
    v34 = E5TransformerLanguageModel.latestCommonParent(nodes:)(inited);
    swift_setDeallocating();
    E5TransformerLanguageModel.reset(promptModuleNodes:toNode:)(MEMORY[0x277D84F90], v34);
    result = swift_beginAccess();
    if ((v6 & 0x8000000000000000) == 0)
    {
      v35 = *(v31 + 56);
      if (v6 >= *(v35 + 16))
      {
        goto LABEL_61;
      }

      v36 = *(v35 + 48 * v6 + 32);

      v37 = specialized NodeStorage.nodes(previousAndIncluding:position:)(v6, v36, 0, v35);
      v39 = v38;

      v40 = v37;
      while ((v40 & 0x8000000000000000) == 0)
      {
        if (v40 >= *(v39 + 16))
        {
          goto LABEL_55;
        }

        if (v40 != v34)
        {
          if (v40)
          {
            v41 = v39 + 32 + 48 * v40;
            v42 = *(v41 + 8);
            v43 = *(v41 + 16);
            result = specialized Set._Variant.insert(_:)(&v74, v40);
            v40 = v42;
            if (!v43)
            {
              continue;
            }
          }
        }

        goto LABEL_35;
      }

      goto LABEL_54;
    }
  }

  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
  return result;
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t MaskedLanguageModel.nextTokensLogits(nodes:presampler:isPrompt:)()
{
  v1 = v0[363];
  __swift_destroy_boxed_opaque_existential_1(v0 + 177);
  outlined destroy of LogitIndexSet(v1);

  __swift_destroy_boxed_opaque_existential_1(v0 + 227);
  v2 = v0[377];
  v3 = v0[373];
  v4 = *(v3 + 16);
  v5 = v2[2];

  if (v5 >= v4)
  {
    v5 = v4;
  }

  if (v5)
  {
    if (v5 <= *(v3 + 16))
    {
      v7 = 0;
      v8 = v0 + 267;
      v35 = v0 + 272;
      v37 = v0 + 257;
      v9 = 4;
      v36 = v5;
      v34 = v3;
      while (1)
      {
        outlined init with copy of DeterministicLanguageModelProtocol(v3 + v9 * 8, (v0 + 242));
        v10 = v0[245];
        v11 = v0[246];
        __swift_project_boxed_opaque_existential_1(v0 + 242, v10);
        (*(v11 + 8))(v10, v11);
        result = __swift_destroy_boxed_opaque_existential_1(v0 + 242);
        if (v7 >= v2[2])
        {
          break;
        }

        v12 = v8;
        v13 = v0[357];
        outlined init with copy of DeterministicLanguageModelProtocol(&v2[v9], (v0 + 247));
        v14 = v0[250];
        v15 = v0[251];
        __swift_project_boxed_opaque_existential_1(v0 + 247, v14);
        (*(v15 + 8))(v14, v15);
        v16 = LogitIndexSet.isDisjoint(with:)(v13);
        outlined destroy of LogitIndexSet(v13);
        result = __swift_destroy_boxed_opaque_existential_1(v0 + 247);
        if ((v16 & 1) == 0)
        {
          if (v7 >= v2[2])
          {
            goto LABEL_27;
          }

          v17 = v0[357];
          outlined init with copy of DeterministicLanguageModelProtocol(&v2[v9], (v0 + 252));
          v18 = v0[255];
          v19 = v0[256];
          __swift_project_boxed_opaque_existential_1(v0 + 252, v18);
          (*(v19 + 8))(v18, v19);
          LogitIndexSet.formIntersection(_:)(v17);
          outlined destroy of LogitIndexSet(v17);
          result = __swift_destroy_boxed_opaque_existential_1(v0 + 252);
        }

        if (v7 >= v2[2])
        {
          goto LABEL_26;
        }

        outlined init with copy of DeterministicLanguageModelProtocol(&v2[v9], (v0 + 262));
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference15LogitCollection_pMd, &_s24TokenGenerationInference15LogitCollection_pMR);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference22MutableLogitCollection_pMd, &_s24TokenGenerationInference22MutableLogitCollection_pMR);
        v8 = v12;
        if (swift_dynamicCast())
        {
          v20 = v0[358];
          outlined init with take of RandomNumberGenerator(v12, v37);
          v21 = v0[260];
          v22 = v0[261];
          __swift_mutable_project_boxed_opaque_existential_1(v37, v21);
          (*(v22 + 16))(v20, v21, v22);
          v23 = v0[260];
          v24 = v0[261];
          v25 = __swift_project_boxed_opaque_existential_1(v37, v23);
          v0[285] = v23;
          v0[286] = *(v24 + 8);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 282);
          (*(*(v23 - 8) + 16))(boxed_opaque_existential_1, v25, v23);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
          }

          v27 = v36;
          result = outlined destroy of LogitIndexSet(v0[358]);
          v29 = (v0 + 282);
          v28 = v0 + 257;
          if (v7 >= v2[2])
          {
            goto LABEL_29;
          }
        }

        else
        {
          *(v12 + 32) = 0;
          *v12 = 0u;
          *(v12 + 16) = 0u;
          result = outlined destroy of [Int](v12, &_s24TokenGenerationInference22MutableLogitCollection_pSgMd, &_s24TokenGenerationInference22MutableLogitCollection_pSgMR);
          if (v7 >= v2[2])
          {
            goto LABEL_28;
          }

          v30 = v0[358];
          outlined init with copy of DeterministicLanguageModelProtocol(&v2[v9], v35);
          v31 = v0[275];
          v32 = v0[276];
          __swift_project_boxed_opaque_existential_1(v35, v31);
          (*(v32 + 80))(v30, v31, v32);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
          }

          v27 = v36;
          result = outlined destroy of LogitIndexSet(v0[358]);
          v29 = (v0 + 277);
          v28 = v0 + 272;
          if (v7 >= v2[2])
          {
            goto LABEL_30;
          }
        }

        ++v7;
        __swift_destroy_boxed_opaque_existential_1(&v2[v9]);
        outlined init with take of RandomNumberGenerator(v29, &v2[v9]);
        __swift_destroy_boxed_opaque_existential_1(v28);
        v9 += 5;
        v3 = v34;
        if (v27 == v7)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_22:

    outlined consume of (@escaping @callee_guaranteed (@guaranteed String) -> (@out DeterministicLanguageModelProtocol, @error @owned Error))?(0, 0);
    outlined consume of (@escaping @callee_guaranteed (@guaranteed String) -> (@out DeterministicLanguageModelProtocol, @error @owned Error))?(0, 0);

    v33 = v0[1];

    return v33(v2);
  }

  return result;
}

{
  v1 = v0[347];
  v2 = swift_allocObject();
  v0[368] = v2;
  v3 = *(v1 + 16);
  v0[369] = v3;
  v4 = MEMORY[0x277D84F90];
  *(v2 + 16) = MEMORY[0x277D84F90];
  *(v2 + 16) = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0, v4);
  v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0, v4);
  v46 = v0;
  if (v3)
  {
    v6 = (v0[347] + 32);
    v47 = v0[349];
    v7 = swift_beginAccess();
    while (1)
    {
      v12 = *v6++;
      v11 = v12;
      if ((v12 & 0x8000000000000000) != 0)
      {
        break;
      }

      v13 = *(v47 + 16);
      if (v11 >= *(v13 + 16))
      {
        goto LABEL_21;
      }

      v14 = v13 + 24 * v11;
      v15 = *(v14 + 32);
      v16 = *(v14 + 40);
      v17 = *(v2 + 16);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v2 + 16) = v17;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v17 + 2) + 1, 1, v17);
        *(v2 + 16) = v17;
      }

      v20 = *(v17 + 2);
      v19 = *(v17 + 3);
      if (v20 >= v19 >> 1)
      {
        v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v17);
      }

      *(v17 + 2) = v20 + 1;
      *&v17[8 * v20 + 32] = v15;
      *(v2 + 16) = v17;
      v22 = *(v5 + 2);
      v21 = *(v5 + 3);
      if (v22 >= v21 >> 1)
      {
        v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1, v5);
      }

      *(v5 + 2) = v22 + 1;
      *&v5[8 * v22 + 32] = v16;
      if (!--v3)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
    return MEMORY[0x282200930](v7, v8, v9, v10);
  }

LABEL_12:
  v46[370] = v5;
  v48 = v46[349];
  outlined init with copy of DeterministicLanguageModelProtocol(v48 + 24, (v46 + 332));
  v23 = v46[335];
  v24 = v46[336];
  __swift_project_boxed_opaque_existential_1(v46 + 332, v23);
  v25 = *(v24 + 32);

  v27 = v25(v26, v23, v24);

  __swift_destroy_boxed_opaque_existential_1(v46 + 332);
  if ((v27 & 1) == 0)
  {
    outlined init with copy of DeterministicLanguageModelProtocol(v48 + 24, (v46 + 317));
    __swift_project_boxed_opaque_existential_1(v46 + 317, v46[320]);

    v29 = DeterministicLanguageModelProtocol.nextTokensLogitsAreComputed(nodes:)(v28);

    __swift_destroy_boxed_opaque_existential_1(v46 + 317);
    if (!v29)
    {
      v37 = v46[349];
      v38 = *(v46 + 3072);
      v39 = v46[348];
      v40 = swift_allocObject();
      *(v40 + 16) = v37;
      *(v40 + 24) = v2;
      *(v40 + 32) = v38;
      v41 = swift_allocObject();
      v46[378] = v41;
      *(v41 + 16) = &async function pointer to partial apply for implicit closure #6 in MaskedLanguageModel.nextTokensLogits(nodes:presampler:isPrompt:);
      *(v41 + 24) = v40;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay24TokenGenerationInference15LogitCollection_pGMd, &_sSay24TokenGenerationInference15LogitCollection_pGMR);
      swift_asyncLet_begin();
      outlined init with copy of LogitPresampler?(v39, (v46 + 327));
      v42 = swift_allocObject();
      *(v42 + 16) = v37;
      *(v42 + 24) = v5;
      v43 = *(v46 + 329);
      *(v42 + 32) = *(v46 + 327);
      *(v42 + 48) = v43;
      *(v42 + 64) = v46[331];
      *(v42 + 72) = v38;
      v44 = swift_allocObject();
      v46[379] = v44;
      *(v44 + 16) = &async function pointer to partial apply for specialized implicit closure #7 in MaskedLanguageModel.nextTokensLogits(nodes:presampler:isPrompt:);
      *(v44 + 24) = v42;

      swift_asyncLet_begin();
      v9 = MaskedLanguageModel.nextTokensLogits(nodes:presampler:isPrompt:);
      v7 = (v46 + 2);
      v8 = v46 + 346;
      v10 = v46 + 202;

      return MEMORY[0x282200930](v7, v8, v9, v10);
    }
  }

  outlined init with copy of DeterministicLanguageModelProtocol(v48 + 24, (v46 + 322));
  v30 = v46[325];
  v31 = v46[326];
  __swift_project_boxed_opaque_existential_1(v46 + 322, v30);
  v32 = *(v2 + 16);
  v46[371] = v32;
  v46[340] = &type metadata for NullLogitPresampler;
  v46[341] = &protocol witness table for NullLogitPresampler;
  v33 = *(v31 + 24);

  v45 = (v33 + *v33);
  v34 = swift_task_alloc();
  v46[372] = v34;
  *v34 = v46;
  v34[1] = MaskedLanguageModel.nextTokensLogits(nodes:presampler:isPrompt:);
  v35 = *(v46 + 3072);

  return (v45)(v32, v46 + 337, v35, v30, v31);
}

{
  v129 = v0;
  v1 = *(v0 + 2792);
  __swift_destroy_boxed_opaque_existential_1((v0 + 2576));
  v2 = v1[11];
  v3 = v1[12];
  v114 = v1;
  v4 = __swift_project_boxed_opaque_existential_1(v1 + 8, v2);
  v5 = *(v2 - 8);
  v6 = swift_task_alloc();
  (*(v5 + 16))(v6, v4, v2);
  LOBYTE(v4) = (*(v3 + 40))(v2, v3);
  (*(v5 + 8))(v6, v2);
  if ((v4 & 1) == 0)
  {
LABEL_25:

    if (one-time initialization token for device == -1)
    {
      goto LABEL_26;
    }

    goto LABEL_70;
  }

  v7 = *(v0 + 2984);
  v124 = *(v7 + 16);
  if (!v124)
  {
LABEL_12:

    v23 = *(v7 + 16);
    v24 = *(v0 + 2984);
    if (!v23)
    {

      v26 = MEMORY[0x277D84F90];
      goto LABEL_49;
    }

    v125 = *(v0 + 2912);
    v25 = *(v0 + 2816);
    v128 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v23, 0);
    v26 = v128;
    v27 = v24 + 32;
    v119 = (v25 + 8);
    v122 = (v25 + 32);
    while (1)
    {
      v28 = *(v0 + 2920);
      v29 = *(v0 + 2912);
      outlined init with copy of DeterministicLanguageModelProtocol(v27, v0 + 2456);
      v30 = *(v0 + 2480);
      v31 = *(v0 + 2488);
      __swift_project_boxed_opaque_existential_1((v0 + 2456), v30);
      (*(v31 + 8))(v30, v31);
      outlined init with copy of LogitIndexSet(v28, v29);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v33 = *(v0 + 2920);
      v34 = *(v0 + 2912);
      if (EnumCaseMultiPayload == 1)
      {
        outlined destroy of LogitIndexSet(*(v0 + 2920));
        v35 = *v34;
        if (v35 != *(v125 + 8))
        {
          goto LABEL_18;
        }
      }

      else
      {
        v36 = *(v0 + 2832);
        v37 = *(v0 + 2808);
        (*v122)(v36, *(v0 + 2912), v37);
        v35 = ContiguousBitSet.first.getter();
        v39 = v38;
        (*v119)(v36, v37);
        outlined destroy of LogitIndexSet(v33);
        if ((v39 & 1) == 0)
        {
LABEL_18:
          if (v35 < 0xFFFFFFFF80000000)
          {
            goto LABEL_66;
          }

          if (v35 > 0x7FFFFFFF)
          {
            goto LABEL_67;
          }

          *(v0 + 2520) = &type metadata for UnweightedSingleLogitCollection;
          *(v0 + 2528) = &protocol witness table for UnweightedSingleLogitCollection;
          *(v0 + 2496) = v35;
          goto LABEL_21;
        }
      }

      *(v0 + 2520) = &type metadata for EmptyLogitCollection;
      *(v0 + 2528) = &protocol witness table for EmptyLogitCollection;
LABEL_21:
      outlined init with take of RandomNumberGenerator((v0 + 2496), v0 + 2416);
      __swift_destroy_boxed_opaque_existential_1((v0 + 2456));
      v128 = v26;
      v41 = *(v26 + 16);
      v40 = *(v26 + 24);
      if (v41 >= v40 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v40 > 1), v41 + 1, 1);
      }

      v42 = *(v0 + 2440);
      v43 = *(v0 + 2448);
      v44 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 2416, v42);
      v45 = *(v42 - 8);
      v46 = swift_task_alloc();
      (*(v45 + 16))(v46, v44, v42);
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v41, v46, &v128, v42, v43);
      __swift_destroy_boxed_opaque_existential_1((v0 + 2416));

      v26 = v128;
      v27 += 40;
      if (!--v23)
      {

        goto LABEL_48;
      }
    }
  }

  v8 = 0;
  v9 = *(v0 + 2816);
  v10 = v7 + 32;
  v118 = (v9 + 32);
  v121 = *(v0 + 2928);
  v116 = (v9 + 8);
  while (v8 < *(v7 + 16))
  {
    v11 = *(v0 + 2936);
    v12 = *(v0 + 2928);
    outlined init with copy of DeterministicLanguageModelProtocol(v10, v0 + 2376);
    v13 = *(v0 + 2400);
    v14 = *(v0 + 2408);
    __swift_project_boxed_opaque_existential_1((v0 + 2376), v13);
    (*(v14 + 8))(v13, v14);
    outlined init with copy of LogitIndexSet(v11, v12);
    v15 = swift_getEnumCaseMultiPayload();
    v16 = *(v0 + 2936);
    v17 = *(v0 + 2928);
    if (v15 == 1)
    {
      outlined destroy of LogitIndexSet(*(v0 + 2936));
      v18 = *(v121 + 8);
      v19 = __OFSUB__(v18, *v17);
      v20 = v18 - *v17;
      if (v19)
      {
        goto LABEL_69;
      }
    }

    else
    {
      v21 = *(v0 + 2832);
      v22 = *(v0 + 2808);
      (*v118)(v21, *(v0 + 2928), v22);
      v20 = ContiguousBitSet.count.getter();
      (*v116)(v21, v22);
      outlined destroy of LogitIndexSet(v16);
    }

    __swift_destroy_boxed_opaque_existential_1((v0 + 2376));
    if (v20 > 1)
    {
      goto LABEL_25;
    }

    ++v8;
    v10 += 40;
    if (v124 == v8)
    {
      goto LABEL_12;
    }
  }

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
  swift_once();
LABEL_26:
  v47 = type metadata accessor for Logger();
  __swift_project_value_buffer(v47, static Log.device);
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    *v50 = 0;
    _os_log_impl(&dword_220940000, v48, v49, "Serial Mask calculation failed to produce deterministic run.", v50, 2u);
    MEMORY[0x223D90A10](v50, -1, -1);
  }

  v51 = *(v0 + 2984);

  v123 = *(v51 + 16);
  v126 = v51;
  if (v123)
  {
    v52 = *(v0 + 2848);
    v53 = *(v0 + 2840);
    v54 = *(v0 + 2800);
    v55 = *(v0 + 2984) + 32;
    outlined init with copy of DeterministicLanguageModelProtocol(v55, v0 + 1336);
    v56 = *(v0 + 1360);
    v57 = *(v0 + 1368);
    __swift_project_boxed_opaque_existential_1((v0 + 1336), v56);
    (*(v57 + 8))(v56, v57);
    v112 = *(v52 + 56);
    v112(v54, 0, 1, v53);
    __swift_destroy_boxed_opaque_existential_1((v0 + 1336));
    if ((*(v52 + 48))(v54, 1, v53) != 1)
    {
      v117 = *(v0 + 2888);
      v113 = *(v0 + 2872);
      v58 = *(v0 + 2816);
      outlined init with take of LogitIndexSet(*(v0 + 2800), *(v0 + 2904));
      v59 = 0;
      v60 = (v58 + 32);
      v120 = (v58 + 8);
      while (1)
      {
        if (v59 >= *(v126 + 16))
        {
          goto LABEL_68;
        }

        v65 = v60;
        v66 = *(v0 + 2896);
        v67 = *(v0 + 2888);
        outlined init with copy of DeterministicLanguageModelProtocol(v55, v0 + 1576);
        v68 = *(v0 + 1600);
        v69 = *(v0 + 1608);
        __swift_project_boxed_opaque_existential_1((v0 + 1576), v68);
        (*(v69 + 8))(v68, v69);
        outlined init with copy of LogitIndexSet(v66, v67);
        v70 = swift_getEnumCaseMultiPayload();
        v71 = *(v0 + 2904);
        v72 = *(v0 + 2888);
        if (v70 == 1)
        {
          v73 = *v72;
          v74 = *(v117 + 8);
          outlined init with copy of LogitIndexSet(*(v0 + 2904), *(v0 + 2872));
          v75 = swift_getEnumCaseMultiPayload();
          v76 = *(v0 + 2896);
          v77 = *(v0 + 2872);
          if (v75 == 1)
          {
            outlined destroy of LogitIndexSet(*(v0 + 2896));
            v78 = *v77;
            v79 = *(v113 + 8);
            __swift_destroy_boxed_opaque_existential_1((v0 + 1576));
            if (v73 != v78 || (v60 = v65, v74 != v79))
            {
LABEL_43:
              outlined init with copy of LogitPresampler?(*(v0 + 2784), v0 + 1736);
              v91 = *(v0 + 1760);
              if (!v91)
              {
                outlined destroy of [Int](v0 + 1736, &_s24TokenGenerationInference15LogitPresampler_pSgMd, &_s24TokenGenerationInference15LogitPresampler_pSgMR);
                v93 = (v0 + 1656);
                *(v0 + 1656) = 0u;
                *(v0 + 1672) = 0u;
                *(v0 + 1688) = 0;
                v94 = v114;
                goto LABEL_57;
              }

              v92 = *(v0 + 1768);
              __swift_project_boxed_opaque_existential_1((v0 + 1736), *(v0 + 1760));
              v93 = (v0 + 1656);
              (*(v92 + 24))(v91, v92);
              __swift_destroy_boxed_opaque_existential_1((v0 + 1736));
              v94 = v114;
              if (!*(v0 + 1680))
              {
LABEL_57:
                v103 = *(v0 + 2840);
                *(v0 + 1520) = type metadata accessor for BasicLogitPresampler(0);
                *(v0 + 1528) = &protocol witness table for BasicLogitPresampler;
                boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 1496));
                v112(boxed_opaque_existential_1, 1, 1, v103);
                if (*(v0 + 1680))
                {
                  goto LABEL_58;
                }

                goto LABEL_59;
              }

LABEL_55:
              outlined init with take of RandomNumberGenerator(v93, v0 + 1496);
              goto LABEL_59;
            }
          }

          else
          {
            v87 = *(v0 + 2832);
            v88 = *(v0 + 2808);
            (*v65)(v87, *(v0 + 2872), v88);
            v89 = ContiguousBitSet.isEquivalent(to:)();
            v90 = v88;
            v60 = v65;
            (*v120)(v87, v90);
            outlined destroy of LogitIndexSet(v76);
            __swift_destroy_boxed_opaque_existential_1((v0 + 1576));
            if ((v89 & 1) == 0)
            {
              goto LABEL_43;
            }
          }
        }

        else
        {
          v80 = *(v0 + 2880);
          v60 = v65;
          v81 = *v65;
          (*v65)(*(v0 + 2824), v72, *(v0 + 2808));
          outlined init with copy of LogitIndexSet(v71, v80);
          v82 = swift_getEnumCaseMultiPayload();
          v83 = *(v0 + 2896);
          if (v82 == 1)
          {
            v84 = *(v0 + 2824);
            v85 = *(v0 + 2808);
            v86 = ContiguousBitSet.isEquivalent(to:)();
            (*v120)(v84, v85);
            outlined destroy of LogitIndexSet(v83);
            __swift_destroy_boxed_opaque_existential_1((v0 + 1576));
            if ((v86 & 1) == 0)
            {
              goto LABEL_43;
            }
          }

          else
          {
            v61 = *(v0 + 2832);
            v62 = *(v0 + 2824);
            v63 = *(v0 + 2808);
            v81(v61, *(v0 + 2880), v63);
            v115 = MEMORY[0x223D8D5F0](v62, v61);
            v64 = *v120;
            (*v120)(v61, v63);
            v64(v62, v63);
            v60 = v65;
            outlined destroy of LogitIndexSet(v83);
            __swift_destroy_boxed_opaque_existential_1((v0 + 1576));
            if ((v115 & 1) == 0)
            {
              goto LABEL_43;
            }
          }
        }

        ++v59;
        v55 += 40;
        if (v123 == v59)
        {
          outlined init with copy of LogitPresampler?(*(v0 + 2784), v0 + 2336);
          v99 = *(v0 + 2360);
          if (v99)
          {
            v100 = *(v0 + 2904);
            v101 = *(v0 + 2368);
            __swift_project_boxed_opaque_existential_1((v0 + 2336), *(v0 + 2360));
            v102 = v99;
            v93 = (v0 + 2296);
            (*(v101 + 16))(v100, v102, v101);
            __swift_destroy_boxed_opaque_existential_1((v0 + 2336));
            v94 = v114;
            if (*(v0 + 2320))
            {
              goto LABEL_55;
            }
          }

          else
          {
            outlined destroy of [Int](v0 + 2336, &_s24TokenGenerationInference15LogitPresampler_pSgMd, &_s24TokenGenerationInference15LogitPresampler_pSgMR);
            v93 = (v0 + 2296);
            *(v0 + 2296) = 0u;
            *(v0 + 2312) = 0u;
            *(v0 + 2328) = 0;
            v94 = v114;
          }

          v110 = *(v0 + 2840);
          *(v0 + 1520) = type metadata accessor for BasicLogitPresampler(0);
          *(v0 + 1528) = &protocol witness table for BasicLogitPresampler;
          v111 = __swift_allocate_boxed_opaque_existential_1((v0 + 1496));
          v112(v111, 1, 1, v110);
          if (*(v0 + 2320))
          {
LABEL_58:
            outlined destroy of [Int](v93, &_s24TokenGenerationInference15LogitPresampler_pSgMd, &_s24TokenGenerationInference15LogitPresampler_pSgMR);
          }

LABEL_59:
          outlined init with take of RandomNumberGenerator((v0 + 1496), v0 + 1416);
          outlined init with copy of DeterministicLanguageModelProtocol((v94 + 8), v0 + 1816);
          v105 = *(v0 + 1840);
          v106 = *(v0 + 1848);
          __swift_project_boxed_opaque_existential_1((v0 + 1816), v105);
          outlined init with copy of DeterministicLanguageModelProtocol(v0 + 1416, v0 + 1896);
          v127 = (*(v106 + 24) + **(v106 + 24));
          v107 = swift_task_alloc();
          *(v0 + 3000) = v107;
          *v107 = v0;
          v107[1] = MaskedLanguageModel.nextTokensLogits(nodes:presampler:isPrompt:);
          v108 = *(v0 + 2960);
          v109 = *(v0 + 3072);

          return v127(v108, v0 + 1896, v109, v105, v106);
        }
      }
    }
  }

  else
  {
    (*(*(v0 + 2848) + 56))(*(v0 + 2800), 1, 1, *(v0 + 2840));
  }

  v95 = *(v0 + 2952);
  v96 = *(v0 + 2800);

  outlined destroy of [Int](v96, &_s24TokenGenerationInference13LogitIndexSetOSgMd, &_s24TokenGenerationInference13LogitIndexSetOSgMR);
  v26 = _sSa9repeating5countSayxGx_SitcfC24TokenGenerationInference15LogitCollection_p_Tt1g5Tf4en_nAD05EmptyfG0V_Tg5(v95);
LABEL_48:

LABEL_49:

  v97 = *(v0 + 8);

  return v97(v26);
}

{
  v1[380] = v0;
  if (v0)
  {

    return MEMORY[0x282200920](v1 + 82, v1 + 345, MaskedLanguageModel.nextTokensLogits(nodes:presampler:isPrompt:), v1 + 212);
  }

  else
  {
    v1[381] = v1[346];

    return MEMORY[0x282200930](v1 + 82, v1 + 345, MaskedLanguageModel.nextTokensLogits(nodes:presampler:isPrompt:), v1 + 232);
  }
}

{
  *(v1 + 3056) = v0;
  if (v0)
  {
    v2 = MaskedLanguageModel.nextTokensLogits(nodes:presampler:isPrompt:);
  }

  else
  {
    v2 = MaskedLanguageModel.nextTokensLogits(nodes:presampler:isPrompt:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  *(v0 + 3064) = *(v0 + 2760);
  swift_bridgeObjectRetain_n();

  return MEMORY[0x282200920](v0 + 656, v0 + 2760, MaskedLanguageModel.nextTokensLogits(nodes:presampler:isPrompt:), v0 + 1456);
}

{
  return MEMORY[0x2822009F8](MaskedLanguageModel.nextTokensLogits(nodes:presampler:isPrompt:), 0, 0);
}

{
  return MEMORY[0x282200920](v0 + 16, v0 + 2768, MaskedLanguageModel.nextTokensLogits(nodes:presampler:isPrompt:), v0 + 1296);
}

{
  return MEMORY[0x2822009F8](MaskedLanguageModel.nextTokensLogits(nodes:presampler:isPrompt:), 0, 0);
}

{
  v1 = *(v0 + 3064);
  v2 = *(v0 + 3048);
  v3 = *(v0 + 3032);
  v4 = *(v0 + 3024);
  v5 = *(v2 + 16);
  v6 = v1[2];

  if (v6 >= v5)
  {
    v8 = v5;
  }

  else
  {
    v8 = v6;
  }

  if (v8)
  {
    if (v8 <= *(v2 + 16))
    {
      v34 = v4;
      v35 = v3;
      v9 = 0;
      v37 = (v0 + 2176);
      v38 = (v0 + 2136);
      v36 = v8;
      v39 = (v0 + 2056);
      v10 = 4;
      while (1)
      {
        v11 = v2;
        outlined init with copy of DeterministicLanguageModelProtocol(v2 + v10 * 8, v0 + 1936);
        v12 = *(v0 + 1960);
        v13 = *(v0 + 1968);
        __swift_project_boxed_opaque_existential_1((v0 + 1936), v12);
        (*(v13 + 8))(v12, v13);
        result = __swift_destroy_boxed_opaque_existential_1((v0 + 1936));
        if (v9 >= v1[2])
        {
          break;
        }

        v14 = *(v0 + 2856);
        outlined init with copy of DeterministicLanguageModelProtocol(&v1[v10], v0 + 1976);
        v15 = *(v0 + 2000);
        v16 = *(v0 + 2008);
        __swift_project_boxed_opaque_existential_1((v0 + 1976), v15);
        (*(v16 + 8))(v15, v16);
        v17 = LogitIndexSet.isDisjoint(with:)(v14);
        outlined destroy of LogitIndexSet(v14);
        result = __swift_destroy_boxed_opaque_existential_1((v0 + 1976));
        if ((v17 & 1) == 0)
        {
          if (v9 >= v1[2])
          {
            goto LABEL_30;
          }

          v18 = *(v0 + 2856);
          outlined init with copy of DeterministicLanguageModelProtocol(&v1[v10], v0 + 2016);
          v19 = *(v0 + 2040);
          v20 = *(v0 + 2048);
          __swift_project_boxed_opaque_existential_1((v0 + 2016), v19);
          (*(v20 + 8))(v19, v20);
          LogitIndexSet.formIntersection(_:)(v18);
          outlined destroy of LogitIndexSet(v18);
          result = __swift_destroy_boxed_opaque_existential_1((v0 + 2016));
        }

        if (v9 >= v1[2])
        {
          goto LABEL_29;
        }

        outlined init with copy of DeterministicLanguageModelProtocol(&v1[v10], v0 + 2096);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference15LogitCollection_pMd, &_s24TokenGenerationInference15LogitCollection_pMR);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference22MutableLogitCollection_pMd, &_s24TokenGenerationInference22MutableLogitCollection_pMR);
        if (swift_dynamicCast())
        {
          v21 = *(v0 + 2864);
          outlined init with take of RandomNumberGenerator(v38, v39);
          v22 = *(v0 + 2080);
          v23 = *(v0 + 2088);
          __swift_mutable_project_boxed_opaque_existential_1(v39, v22);
          (*(v23 + 16))(v21, v22, v23);
          v24 = *(v0 + 2080);
          v25 = *(v0 + 2088);
          v26 = __swift_project_boxed_opaque_existential_1(v39, v24);
          *(v0 + 2280) = v24;
          *(v0 + 2288) = *(v25 + 8);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 2256));
          (*(*(v24 - 8) + 16))(boxed_opaque_existential_1, v26, v24);
          v2 = v11;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v1 = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
          }

          result = outlined destroy of LogitIndexSet(*(v0 + 2864));
          v29 = (v0 + 2256);
          v28 = (v0 + 2056);
          if (v9 >= v1[2])
          {
            goto LABEL_32;
          }
        }

        else
        {
          *(v0 + 2168) = 0;
          *v38 = 0u;
          *(v0 + 2152) = 0u;
          result = outlined destroy of [Int](v38, &_s24TokenGenerationInference22MutableLogitCollection_pSgMd, &_s24TokenGenerationInference22MutableLogitCollection_pSgMR);
          if (v9 >= v1[2])
          {
            goto LABEL_31;
          }

          v2 = v11;
          v30 = *(v0 + 2864);
          outlined init with copy of DeterministicLanguageModelProtocol(&v1[v10], v37);
          v31 = *(v0 + 2200);
          v32 = *(v0 + 2208);
          __swift_project_boxed_opaque_existential_1(v37, v31);
          (*(v32 + 80))(v30, v31, v32);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v1 = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
          }

          result = outlined destroy of LogitIndexSet(*(v0 + 2864));
          v29 = (v0 + 2216);
          v28 = (v0 + 2176);
          if (v9 >= v1[2])
          {
            goto LABEL_33;
          }
        }

        ++v9;
        __swift_destroy_boxed_opaque_existential_1(&v1[v10]);
        outlined init with take of RandomNumberGenerator(v29, &v1[v10]);
        __swift_destroy_boxed_opaque_existential_1(v28);
        v10 += 5;
        if (v36 == v9)
        {

          v4 = v34;
          v3 = v35;
          goto LABEL_25;
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
    }

    __break(1u);
  }

  else
  {

LABEL_25:

    outlined consume of (@escaping @callee_guaranteed (@guaranteed String) -> (@out DeterministicLanguageModelProtocol, @error @owned Error))?(&_sSay24TokenGenerationInference15LogitCollection_pGs5Error_pIegHozo_ACsAD_pIegHTrzo_TRTATu, v4);
    outlined consume of (@escaping @callee_guaranteed (@guaranteed String) -> (@out DeterministicLanguageModelProtocol, @error @owned Error))?(&_sSay24TokenGenerationInference15LogitCollection_pGs5Error_pIegHozo_ACsAD_pIegHTrzo_TRTA_19Tu, v3);

    v33 = *(v0 + 8);

    return v33(v1);
  }

  return result;
}

{
  outlined destroy of [Int](v0 + 2696, &_s24TokenGenerationInference15LogitPresampler_pSgMd, &_s24TokenGenerationInference15LogitPresampler_pSgMR);
  __swift_destroy_boxed_opaque_existential_1((v0 + 2576));

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = v0[363];

  __swift_destroy_boxed_opaque_existential_1(v0 + 177);
  outlined destroy of LogitIndexSet(v1);
  __swift_destroy_boxed_opaque_existential_1(v0 + 227);

  v2 = v0[1];

  return v2();
}

{
  return MEMORY[0x2822009F8](MaskedLanguageModel.nextTokensLogits(nodes:presampler:isPrompt:), 0, 0);
}

{
  return MEMORY[0x282200920](v0 + 16, v0 + 2768, MaskedLanguageModel.nextTokensLogits(nodes:presampler:isPrompt:), v0 + 1776);
}

{
  return MEMORY[0x2822009F8](MaskedLanguageModel.nextTokensLogits(nodes:presampler:isPrompt:), 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  return MEMORY[0x282200920](v0 + 656, v0 + 2760, MaskedLanguageModel.nextTokensLogits(nodes:presampler:isPrompt:), v0 + 1376);
}

{
  return MEMORY[0x2822009F8](MaskedLanguageModel.nextTokensLogits(nodes:presampler:isPrompt:), 0, 0);
}

{
  return MEMORY[0x282200920](v0 + 16, v0 + 2768, MaskedLanguageModel.nextTokensLogits(nodes:presampler:isPrompt:), v0 + 1536);
}

{
  return MEMORY[0x2822009F8](MaskedLanguageModel.nextTokensLogits(nodes:presampler:isPrompt:), 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}