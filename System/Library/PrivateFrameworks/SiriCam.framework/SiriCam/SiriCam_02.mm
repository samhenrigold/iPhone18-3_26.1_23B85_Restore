uint64_t outlined init with take of RankedAction(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RankedAction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of TopTwo(uint64_t a1)
{
  v2 = type metadata accessor for TopTwo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t AppLaunchRecencyFeatureExtractor.extractSecondsSinceAppLaunch(from:)(void *a1)
{
  v3 = v1;
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  v7 = (*(v6 + 40))(v5, v6);
  if (!v8)
  {
    _StringGuts.grow(_:)(30);

    v26[0] = 0xD00000000000001BLL;
    v26[1] = 0x800000026681AC30;
    v13 = a1[3];
    v14 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v13);
    v15 = (*(v14 + 8))(v13, v14);
    MEMORY[0x26D5DCD80](v15);

    MEMORY[0x26D5DCD80](46, 0xE100000000000000);
    v3 = 0x800000026681AC30;
    lazy protocol witness table accessor for type CaarError and conformance CaarError();
    swift_allocError();
    *v16 = 0xD00000000000001BLL;
    *(v16 + 8) = 0x800000026681AC30;
LABEL_7:
    *(v16 + 16) = 1;
    swift_willThrow();
    return v3;
  }

  v9 = v7;
  v10 = v8;
  Launched = static TimeSinceAppLastLaunchedSignal.instances()();
  specialized Collection.first.getter(Launched, &v24);

  if (!v25)
  {

    outlined destroy of SignalProviding?(&v24);
    lazy protocol witness table accessor for type CaarError and conformance CaarError();
    swift_allocError();
    *v16 = 0xD00000000000003DLL;
    *(v16 + 8) = 0x800000026681AC50;
    goto LABEL_7;
  }

  outlined init with take of CaarHandler(&v24, v26);
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v12 = specialized SiriSignalsContaining.get(from:query:defaultVal:)(v26, v9, v10, 0xFFFFFFFFFFFFFFFFLL);
  if (v2)
  {

    __swift_destroy_boxed_opaque_existential_0(v26);
  }

  else
  {
    v3 = v12;
    if (one-time initialization token for ranker != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Logger.ranker);

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *&v24 = v22;
      *v21 = 134218242;
      *(v21 + 4) = v3;
      *(v21 + 12) = 2080;
      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v24);

      *(v21 + 14) = v23;
      _os_log_impl(&dword_266790000, v19, v20, "[AppLaunchRecencyFeatureExtractor] %lds since app launch for bundle: %s", v21, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x26D5DDCD0](v22, -1, -1);
      MEMORY[0x26D5DDCD0](v21, -1, -1);
    }

    else
    {
    }

    __swift_destroy_boxed_opaque_existential_0(v26);
  }

  return v3;
}

uint64_t AppLaunchRecencyFeatureExtractor.extractImpl(from:)(void *a1)
{
  result = AppLaunchRecencyFeatureExtractor.extractSecondsSinceAppLaunch(from:)(a1);
  v3 = result;
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So14MLFeatureValueCtGMd, &_ss23_ContiguousArrayStorageCySS_So14MLFeatureValueCtGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_266813FC0;
    *(inited + 32) = 0xD00000000000001ALL;
    *(inited + 40) = 0x8000000266819AC0;
    *(inited + 48) = [objc_opt_self() featureValueWithInt64_];
    type metadata accessor for MLFeatureValue();
    return Dictionary.init(dictionaryLiteral:)();
  }

  return result;
}

uint64_t outlined destroy of SignalProviding?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriSignals15SignalProviding_pSgMd, &_s11SiriSignals15SignalProviding_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t specialized SiriSignalsContaining.get(from:query:defaultVal:)(void *a1, uint64_t a2, uint64_t a3, char *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11SiriSignals15SignalProviding_pGMd, &_ss23_ContiguousArrayStorageCy11SiriSignals15SignalProviding_pGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_266813FC0;
  outlined init with copy of SignalProviding(a1, inited + 32);
  v10 = SiriSignalsContainer.get(from:query:defaultVal:)(inited, a2, a3, a4);
  if (v4)
  {
    swift_setDeallocating();
    v11 = inited;
    specialized _ContiguousArrayStorage.__deallocating_deinit();
  }

  else
  {
    v12 = v10;
    swift_setDeallocating();
    specialized _ContiguousArrayStorage.__deallocating_deinit();
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v13 = dispatch thunk of AppSelectionSignalComponent.name.getter();
    v11 = specialized Dictionary.subscript.getter(v13, v14, v12);
    v16 = v15;

    if (v16)
    {
      _StringGuts.grow(_:)(23);

      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      v17 = dispatch thunk of AppSelectionSignalComponent.name.getter();
      MEMORY[0x26D5DCD80](v17);

      v11 = 0x800000026681AC90;
      lazy protocol witness table accessor for type CaarError and conformance CaarError();
      swift_allocError();
      *v18 = 0xD000000000000015;
      *(v18 + 8) = 0x800000026681AC90;
      *(v18 + 16) = 1;
      swift_willThrow();
    }
  }

  return v11;
}

id specialized Zip2Sequence.Iterator.next()()
{
  if (*(v0 + 32))
  {
    return 0;
  }

  v2 = *v0;
  if (*v0 >> 62)
  {
    if (v2 < 0)
    {
      v9 = *v0;
    }

    else
    {
      v9 = v2 & 0xFFFFFFFFFFFFFF8;
    }

    v3 = MEMORY[0x26D5DD300](v9);
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *(v0 + 8);
  if (v4 == v3)
  {
LABEL_11:
    v1 = 0;
    *(v0 + 32) = 1;
    return v1;
  }

  v5 = v2 & 0xC000000000000001;
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)();
  if ((v2 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x26D5DD230](v4, v2);
  }

  else
  {
    v6 = *(v2 + 8 * v4 + 32);
  }

  v1 = v6;
  if (__OFADD__(v4, 1))
  {
    __break(1u);
  }

  else
  {
    *(v0 + 8) = v4 + 1;
    v5 = *(v0 + 16);
    v7 = specialized Array.count.getter();
    v4 = *(v0 + 24);
    if (v4 == v7)
    {

      goto LABEL_11;
    }

    specialized Array._checkSubscript(_:wasNativeTypeChecked:)();
    if ((v5 & 0xC000000000000001) == 0)
    {
      result = *(v5 + 8 * v4 + 32);
      goto LABEL_14;
    }
  }

  result = MEMORY[0x26D5DD230](v4, v5);
LABEL_14:
  if (!__OFADD__(v4, 1))
  {
    *(v0 + 24) = v4 + 1;
    return v1;
  }

  __break(1u);
  return result;
}

uint64_t _sSa9repeating5countSayxGx_SitcfCSd_Tt1g5(uint64_t result, double a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    if (result)
    {
      result = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v4 = 0;
      *(result + 16) = v2;
      v5 = vdupq_n_s64(v2 - 1);
      do
      {
        v6 = vmovn_s64(vcgeq_u64(v5, vorrq_s8(vdupq_n_s64(v4), xmmword_2668148B0)));
        v7 = result + 8 * v4;
        if (v6.i8[0])
        {
          *(v7 + 32) = a2;
        }

        if (v6.i8[4])
        {
          *(v7 + 40) = a2;
        }

        v4 += 2;
      }

      while (((v2 + 1) & 0xFFFFFFFFFFFFFFFELL) != v4);
    }

    else
    {
      return MEMORY[0x277D84F90];
    }
  }

  return result;
}

void _sSa9repeating5countSayxGx_SitcfCs5Int32V_Tt1g5(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v2 = result;
    *(static Array._allocateBufferUninitialized(minimumCapacity:)() + 16) = a2;
    do
    {
      OUTLINED_FUNCTION_12_6();
      if (v6)
      {
        *(v3 - 12) = v2;
      }

      if (vuzp1_s16(v5, v4).i8[2])
      {
        *(v3 - 8) = v2;
      }

      OUTLINED_FUNCTION_19_2();
      if (v12)
      {
        *(v8 - 1) = v2;
      }

      if (vuzp1_s16(v10, v11).i8[6])
      {
        *v8 = v2;
      }
    }

    while (v9 != v7 + 4);
  }
}

void _sSa9repeating5countSayxGx_SitcfCSf_Tt1g5(uint64_t result, float a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else if (result)
  {
    *(static Array._allocateBufferUninitialized(minimumCapacity:)() + 16) = result;
    do
    {
      OUTLINED_FUNCTION_12_6();
      if (v6)
      {
        *(v3 - 12) = a2;
      }

      if (vuzp1_s16(v5, v4).i8[2])
      {
        *(v3 - 8) = a2;
      }

      OUTLINED_FUNCTION_19_2();
      if (v12)
      {
        *(v8 - 1) = a2;
      }

      if (vuzp1_s16(v10, v11).i8[6])
      {
        *v8 = a2;
      }
    }

    while (v9 != v7 + 4);
  }
}

BOOL static WordEmbeddingFeatureExtractor.currentLocaleIsSupported()()
{
  v0 = type metadata accessor for Locale();
  OUTLINED_FUNCTION_22();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_0();
  v6 = v5 - v4;
  static EnvironmentUtilities.currentSiriLocale.getter();
  v7 = Locale.languageCode.getter();
  v9 = v8;
  v11 = *(v2 + 8);
  v10 = (v2 + 8);
  v12 = v11(v6, v0);
  if (v9)
  {
    v26[0] = v7;
    v26[1] = v9;
    MEMORY[0x28223BE20](v12);
    *&v25[-16] = v26;
    v13 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in BidirectionalCollection<>.lastIndex(of:), &v25[-32], &outlined read-only object #0 of one-time initialization function for supportedEmbeddingLanguages);
    if (one-time initialization token for autoSend != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Logger.autoSend);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      OUTLINED_FUNCTION_9();
      v18 = swift_slowAlloc();
      v26[0] = v18;
      *v17 = 67109378;
      *(v17 + 4) = v13;
      *(v17 + 8) = 2080;
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v9, v26);

      *(v17 + 10) = v19;
      _os_log_impl(&dword_266790000, v15, v16, "WordEmbeddingFeatureExtractor supported=%{BOOL}d for current siri language %s", v17, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v18);
      OUTLINED_FUNCTION_3_2();
      MEMORY[0x26D5DDCD0]();
      OUTLINED_FUNCTION_3_2();
      MEMORY[0x26D5DDCD0]();
    }

    else
    {
    }
  }

  else
  {
    if (one-time initialization token for autoSend != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Logger.autoSend);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v21, v22))
    {
      OUTLINED_FUNCTION_7_5();
      v23 = swift_slowAlloc();
      OUTLINED_FUNCTION_21_0(v23);
      _os_log_impl(&dword_266790000, v21, v22, "Cannot detect current Siri language for WordEmbeddingFeatureExtractor", v10, 2u);
      OUTLINED_FUNCTION_3_2();
      MEMORY[0x26D5DDCD0]();
    }

    return 0;
  }

  return v13;
}

uint64_t NLEmbeddingsAssetsManager.download(for:)()
{
  OUTLINED_FUNCTION_14_4();
  v1[21] = v2;
  v1[22] = v0;
  v1[20] = v3;
  v4 = type metadata accessor for Locale();
  v1[23] = v4;
  v1[24] = *(v4 - 8);
  v1[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](NLEmbeddingsAssetsManager.download(for:), v0, 0);
}

{
  v50 = v0;
  v1 = v0[20];

  Locale.init(identifier:)();
  if (one-time initialization token for autoSend != -1)
  {
    OUTLINED_FUNCTION_0_10();
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v0[26] = __swift_project_value_buffer(v2, static Logger.autoSend);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    OUTLINED_FUNCTION_7_5();
    v5 = swift_slowAlloc();
    OUTLINED_FUNCTION_21_0(v5);
    _os_log_impl(&dword_266790000, v3, v4, "Submitting NLTagger asset request", v1, 2u);
    OUTLINED_FUNCTION_3_2();
    MEMORY[0x26D5DDCD0]();
  }

  v6 = Locale.languageCode.getter();
  if (v7)
  {
    v8 = v6;
    v9 = v7;
    v10 = objc_opt_self();
    v11 = MEMORY[0x26D5DCC90](v8, v9);
    v0[27] = v11;

    v12 = *MEMORY[0x277CD8968];
    v0[2] = v0;
    v0[7] = v0 + 19;
    v0[3] = NLEmbeddingsAssetsManager.download(for:);
    v13 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo20NLTaggerAssetsResultVs5Error_pGMd, &_sSccySo20NLTaggerAssetsResultVs5Error_pGMR);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NLTaggerAssetsResult, @unowned NSError?) -> () with result type NLTaggerAssetsResult;
    v0[13] = &block_descriptor;
    v0[14] = v13;
    [v10 requestAssetsForLanguage:v11 tagScheme:v12 completionHandler:v0 + 10];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    _StringGuts.grow(_:)(42);

    OUTLINED_FUNCTION_25_0();
    v48 = v15;
    v49 = v14;
    OUTLINED_FUNCTION_1_11();
    lazy protocol witness table accessor for type TokenChain and conformance TokenChain(v16, v17, MEMORY[0x277CC97B0]);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x26D5DCD80](v18);

    v19 = v49;
    lazy protocol witness table accessor for type WordEmbeddingFeatureExtractorError and conformance WordEmbeddingFeatureExtractorError();
    OUTLINED_FUNCTION_13_4();
    v20 = swift_allocError();
    *v21 = v48;
    *(v21 + 8) = v19;
    *(v21 + 16) = 0;
    swift_willThrow();
    v22 = v20;
    v23 = Logger.logObject.getter();
    LOBYTE(v19) = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v23, v19))
    {
      OUTLINED_FUNCTION_15();
      v24 = swift_slowAlloc();
      OUTLINED_FUNCTION_9();
      v25 = swift_slowAlloc();
      v48 = v25;
      *v24 = 136315138;
      v0[18] = v20;
      v26 = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v27 = String.init<A>(describing:)();
      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, &v48);

      *(v24 + 4) = v29;
      OUTLINED_FUNCTION_17_2();
      _os_log_impl(v30, v31, v32, v33, v34, v35);
      __swift_destroy_boxed_opaque_existential_0(v25);
      OUTLINED_FUNCTION_3_2();
      MEMORY[0x26D5DDCD0](v36);
      OUTLINED_FUNCTION_3_2();
      MEMORY[0x26D5DDCD0](v37);
    }

    else
    {
    }

    v38 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    v39 = OUTLINED_FUNCTION_22_0();
    if (os_log_type_enabled(v39, v40))
    {
      OUTLINED_FUNCTION_7_5();
      v41 = swift_slowAlloc();
      OUTLINED_FUNCTION_21_0(v41);
      OUTLINED_FUNCTION_11_4(&dword_266790000, v42, v43, "Completed downloading NLTagger assets");
      OUTLINED_FUNCTION_3_2();
      MEMORY[0x26D5DDCD0]();
    }

    v44 = OUTLINED_FUNCTION_18_3();
    v45(v44);

    OUTLINED_FUNCTION_10_5();

    return v46();
  }
}

{
  OUTLINED_FUNCTION_14_4();
  OUTLINED_FUNCTION_20_2();
  v1 = v0[6];
  v0[28] = v1;
  v2 = v0[22];
  if (v1)
  {
    v3 = NLEmbeddingsAssetsManager.download(for:);
  }

  else
  {
    v3 = NLEmbeddingsAssetsManager.download(for:);
  }

  return MEMORY[0x2822009F8](v3, v2, 0);
}

{
  OUTLINED_FUNCTION_24_0();

  v1 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  v2 = OUTLINED_FUNCTION_22_0();
  if (os_log_type_enabled(v2, v3))
  {
    OUTLINED_FUNCTION_7_5();
    v4 = swift_slowAlloc();
    OUTLINED_FUNCTION_21_0(v4);
    OUTLINED_FUNCTION_11_4(&dword_266790000, v5, v6, "Completed downloading NLTagger assets");
    OUTLINED_FUNCTION_3_2();
    MEMORY[0x26D5DDCD0]();
  }

  v7 = OUTLINED_FUNCTION_18_3();
  v8(v7);

  OUTLINED_FUNCTION_10_5();

  return v9();
}

{
  v29 = v0;
  v1 = v0[27];
  swift_willThrow();

  v2 = v0[28];
  v3 = v2;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    OUTLINED_FUNCTION_15();
    v6 = swift_slowAlloc();
    OUTLINED_FUNCTION_9();
    v7 = swift_slowAlloc();
    v28 = v7;
    *v6 = 136315138;
    v0[18] = v2;
    v8 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v9 = String.init<A>(describing:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v28);

    *(v6 + 4) = v11;
    OUTLINED_FUNCTION_17_2();
    _os_log_impl(v12, v13, v14, v15, v16, v17);
    __swift_destroy_boxed_opaque_existential_0(v7);
    OUTLINED_FUNCTION_3_2();
    MEMORY[0x26D5DDCD0]();
    OUTLINED_FUNCTION_3_2();
    MEMORY[0x26D5DDCD0]();
  }

  else
  {
  }

  v18 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  v19 = OUTLINED_FUNCTION_22_0();
  if (os_log_type_enabled(v19, v20))
  {
    OUTLINED_FUNCTION_7_5();
    v21 = swift_slowAlloc();
    OUTLINED_FUNCTION_21_0(v21);
    OUTLINED_FUNCTION_11_4(&dword_266790000, v22, v23, "Completed downloading NLTagger assets");
    OUTLINED_FUNCTION_3_2();
    MEMORY[0x26D5DDCD0]();
  }

  v24 = OUTLINED_FUNCTION_18_3();
  v25(v24);

  OUTLINED_FUNCTION_10_5();

  return v26();
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NLTaggerAssetsResult, @unowned NSError?) -> () with result type NLTaggerAssetsResult(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    v7 = a3;

    return specialized _resumeUnsafeThrowingContinuationWithError<A>(_:_:)(v6, v7);
  }

  else
  {
    v9 = *v5;

    return specialized _resumeUnsafeThrowingContinuation<A>(_:_:)(v9, a2);
  }
}

uint64_t specialized _resumeUnsafeThrowingContinuationWithError<A>(_:_:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v4 = swift_allocError();
  *v5 = a2;

  return MEMORY[0x282200958](a1, v4);
}

uint64_t NLEmbeddingsAssetsManager.__deallocating_deinit()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

void type metadata completion function for WordEmbeddingFeatureExtractor(uint64_t a1)
{
  type metadata accessor for Locale();
  if (v1 <= 0x3F)
  {
    type metadata accessor for ConfigurableAnalyzer?(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for NLEmbedding?(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for [Double]?(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for ConfigurableAnalyzer?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ConfigurableAnalyzer?)
  {
    type metadata accessor for ConfigurableAnalyzer();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ConfigurableAnalyzer?);
    }
  }
}

void type metadata accessor for NLEmbedding?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for NLEmbedding?)
  {
    type metadata accessor for MLMultiArray(255, &lazy cache variable for type metadata for NLEmbedding, 0x277CD89B0);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for NLEmbedding?);
    }
  }
}

void type metadata accessor for [Double]?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for [Double]?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySdGMd, &_sSaySdGMR);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for [Double]?);
    }
  }
}

uint64_t one-time initialization function for analyzerConfigOptions()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12MorphunSwift20ConfigurationFeatureOGMd, &_ss23_ContiguousArrayStorageCy12MorphunSwift20ConfigurationFeatureOGMR);
  v0 = type metadata accessor for ConfigurationFeature();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_266813E50;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, *MEMORY[0x277D2A308], v0);
  v6(v5 + v2, *MEMORY[0x277D2A300], v0);
  v6(v5 + 2 * v2, *MEMORY[0x277D2A2F8], v0);
  result = (v6)(v5 + 3 * v2, *MEMORY[0x277D2A2E0], v0);
  static WordEmbeddingFeatureExtractor.analyzerConfigOptions = v4;
  return result;
}

uint64_t one-time initialization function for nlEmbeddingsAssetsManager()
{
  type metadata accessor for NLEmbeddingsAssetsManager();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  static WordEmbeddingFeatureExtractor.nlEmbeddingsAssetsManager = v0;
  return result;
}

void WordEmbeddingFeatureExtractor.loadMorphunAssets(for:kickOffDownloads:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_16_1();
  a19 = v22;
  a20 = v23;
  v92 = v21;
  v24 = v20;
  v88 = v25;
  v27 = v26;
  v28 = type metadata accessor for Locale();
  OUTLINED_FUNCTION_22();
  v89 = v29;
  v31 = MEMORY[0x28223BE20](v30);
  v33 = &v83 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v35 = &v83 - v34;
  type metadata accessor for URL();
  OUTLINED_FUNCTION_22();
  v90 = v37;
  v91 = v36;
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_3_0();
  v38 = objc_opt_self();
  isa = Locale._bridgeToObjectiveC()().super.isa;
  v40 = [v38 getAssetPathForLocale_];

  if (v40)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    URL.absoluteString.getter();
    v41 = v92;
    registerDataPathForLocaleWithError(locale:path:)();
    if (v41)
    {
      v42 = OUTLINED_FUNCTION_6_8();
      v43(v42);
    }

    else
    {

      if (one-time initialization token for analyzerConfigOptions != -1)
      {
        swift_once();
      }

      type metadata accessor for DefaultAnalyzerFactory();
      swift_allocObject();

      DefaultAnalyzerFactory.init(configOptions:)();
      v79 = dispatch thunk of DefaultAnalyzerFactory.getAnalyzer(locale:)();
      v80 = OUTLINED_FUNCTION_6_8();
      v81(v80);

      v82 = *(type metadata accessor for WordEmbeddingFeatureExtractor(0) + 20);

      *(v24 + v82) = v79;
    }
  }

  else
  {
    v44 = v35;
    v86 = v38;
    v87 = v33;
    v90 = v27;
    v91 = v28;
    v45 = *(type metadata accessor for WordEmbeddingFeatureExtractor(0) + 20);

    *(v24 + v45) = 0;
    if (one-time initialization token for autoSend != -1)
    {
      OUTLINED_FUNCTION_0_10();
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    v47 = __swift_project_value_buffer(v46, static Logger.autoSend);
    v49 = v89;
    v48 = v90;
    v50 = v44;
    v51 = v91;
    v84 = *(v89 + 16);
    v84(v44, v90, v91);
    v85 = v47;
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v52, v53))
    {
      OUTLINED_FUNCTION_15();
      v54 = swift_slowAlloc();
      OUTLINED_FUNCTION_9();
      v55 = swift_slowAlloc();
      a10 = v55;
      *v54 = 136315138;
      OUTLINED_FUNCTION_1_11();
      lazy protocol witness table accessor for type TokenChain and conformance TokenChain(v56, v57, MEMORY[0x277CC97B0]);
      v58 = dispatch thunk of CustomStringConvertible.description.getter();
      v60 = v59;
      v61 = *(v49 + 8);
      v61(v50, v91);
      v62 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v60, &a10);
      v51 = v91;

      *(v54 + 4) = v62;
      v63 = v53;
      v64 = v61;
      _os_log_impl(&dword_266790000, v52, v63, "Morphun assets not available for locale %s", v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v55);
      v48 = v90;
      OUTLINED_FUNCTION_3_2();
      MEMORY[0x26D5DDCD0]();
      OUTLINED_FUNCTION_3_2();
      MEMORY[0x26D5DDCD0]();
    }

    else
    {

      v64 = *(v49 + 8);
      v64(v44, v51);
    }

    v65 = v87;
    if (v88)
    {
      v84(v87, v48, v51);
      v66 = Logger.logObject.getter();
      v67 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v66, v67))
      {
        OUTLINED_FUNCTION_15();
        v68 = swift_slowAlloc();
        OUTLINED_FUNCTION_9();
        v69 = swift_slowAlloc();
        a10 = v69;
        *v68 = 136315138;
        OUTLINED_FUNCTION_1_11();
        lazy protocol witness table accessor for type TokenChain and conformance TokenChain(v70, v71, MEMORY[0x277CC97B0]);
        v72 = dispatch thunk of CustomStringConvertible.description.getter();
        v73 = v51;
        v75 = v74;
        v64(v65, v73);
        v76 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v72, v75, &a10);

        *(v68 + 4) = v76;
        _os_log_impl(&dword_266790000, v66, v67, "Kicking off morphun assets request for locale %s", v68, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v69);
        OUTLINED_FUNCTION_3_2();
        MEMORY[0x26D5DDCD0]();
        OUTLINED_FUNCTION_3_2();
        MEMORY[0x26D5DDCD0]();
      }

      else
      {

        v64(v65, v51);
      }

      v77 = v86;
      v78 = Locale._bridgeToObjectiveC()().super.isa;
      [v77 onDemandDownloadForLocale:v78 withProgress:0 withCompletion:0];
    }
  }

  OUTLINED_FUNCTION_15_3();
}

void WordEmbeddingFeatureExtractor.loadNlEmbeddingsAssets(for:kickOffDownloads:)()
{
  OUTLINED_FUNCTION_16_1();
  v2 = v0;
  LODWORD(v78) = v3;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v77 = v72 - v7;
  v8 = type metadata accessor for Locale();
  OUTLINED_FUNCTION_22();
  v81 = v9;
  v11 = *(v10 + 64);
  v13 = MEMORY[0x28223BE20](v12);
  v76 = v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v72 - v14;
  v16 = Locale.languageCode.getter();
  if (v17)
  {
    v18 = v16;
    v19 = v17;
    v75 = v8;
    v20 = objc_opt_self();
    v21 = MEMORY[0x26D5DCC90](v18, v19);
    v22 = [v20 wordEmbeddingForLanguage:v21 revision:1];

    if (v22)
    {

      v23 = type metadata accessor for WordEmbeddingFeatureExtractor(0);
      v24 = *(v23 + 24);
      v25 = *(v2 + v24);
      v26 = v22;

      *(v2 + v24) = v22;
      v27 = [v26 dimension];

      v28 = _sSa9repeating5countSayxGx_SitcfCSd_Tt1g5(v27, 0.0);
      v29 = *(v23 + 28);

      *(v2 + v29) = v28;
    }

    else
    {
      if (one-time initialization token for autoSend != -1)
      {
        OUTLINED_FUNCTION_0_10();
        swift_once();
      }

      v38 = type metadata accessor for Logger();
      v39 = __swift_project_value_buffer(v38, static Logger.autoSend);

      v72[1] = v39;
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.error.getter();

      v42 = os_log_type_enabled(v40, v41);
      v73 = v5;
      v74 = v1;
      if (v42)
      {
        OUTLINED_FUNCTION_15();
        v43 = swift_slowAlloc();
        OUTLINED_FUNCTION_9();
        v44 = swift_slowAlloc();
        v79 = v44;
        *v43 = 136315138;
        v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v79);

        *(v43 + 4) = v45;
        OUTLINED_FUNCTION_17_2();
        _os_log_impl(v46, v47, v48, v49, v50, v51);
        __swift_destroy_boxed_opaque_existential_0(v44);
        OUTLINED_FUNCTION_3_2();
        MEMORY[0x26D5DDCD0]();
        OUTLINED_FUNCTION_3_2();
        MEMORY[0x26D5DDCD0]();
      }

      else
      {
      }

      v52 = v75;
      v53 = type metadata accessor for WordEmbeddingFeatureExtractor(0);
      v54 = *(v53 + 24);

      *(v2 + v54) = 0;
      v55 = *(v53 + 28);

      *(v2 + v55) = 0;
      if (v78)
      {
        v56 = v81;
        v78 = *(v81 + 16);
        v78(v15, v73, v52);
        v57 = Logger.logObject.getter();
        v58 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v57, v58))
        {
          OUTLINED_FUNCTION_15();
          v59 = swift_slowAlloc();
          OUTLINED_FUNCTION_9();
          v60 = swift_slowAlloc();
          v79 = v60;
          *v59 = 136315138;
          OUTLINED_FUNCTION_1_11();
          lazy protocol witness table accessor for type TokenChain and conformance TokenChain(v61, v62, MEMORY[0x277CC97B0]);
          v63 = dispatch thunk of CustomStringConvertible.description.getter();
          v65 = v64;
          (*(v81 + 8))(v15, v75);
          v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v63, v65, &v79);
          v52 = v75;

          *(v59 + 4) = v66;
          _os_log_impl(&dword_266790000, v57, v58, "Kicking off NLEmbeddings assets request for locale %s", v59, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v60);
          v56 = v81;
          OUTLINED_FUNCTION_3_2();
          MEMORY[0x26D5DDCD0]();
          OUTLINED_FUNCTION_3_2();
          MEMORY[0x26D5DDCD0]();
        }

        else
        {

          (*(v81 + 8))(v15, v52);
        }

        v67 = v77;
        static TaskPriority.background.getter();
        v68 = type metadata accessor for TaskPriority();
        __swift_storeEnumTagSinglePayload(v67, 0, 1, v68);
        v69 = v76;
        v78(v76, v73, v52);
        v70 = (*(v56 + 80) + 32) & ~*(v56 + 80);
        v71 = swift_allocObject();
        *(v71 + 16) = 0;
        *(v71 + 24) = 0;
        (*(v56 + 32))(v71 + v70, v69, v52);
        _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v67, &async function pointer to partial apply for closure #1 in WordEmbeddingFeatureExtractor.loadNlEmbeddingsAssets(for:kickOffDownloads:), v71);

        outlined destroy of Token?(v67, &_sScPSgMd, &_sScPSgMR);
      }
    }
  }

  else
  {
    v79 = 0;
    v80 = 0xE000000000000000;
    _StringGuts.grow(_:)(42);

    OUTLINED_FUNCTION_25_0();
    v79 = v31;
    v80 = v30;
    OUTLINED_FUNCTION_1_11();
    lazy protocol witness table accessor for type TokenChain and conformance TokenChain(v32, v33, MEMORY[0x277CC97B0]);
    v34 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x26D5DCD80](v34);

    v35 = v79;
    v36 = v80;
    lazy protocol witness table accessor for type WordEmbeddingFeatureExtractorError and conformance WordEmbeddingFeatureExtractorError();
    OUTLINED_FUNCTION_13_4();
    swift_allocError();
    *v37 = v35;
    *(v37 + 8) = v36;
    *(v37 + 16) = 0;
    swift_willThrow();
  }

  OUTLINED_FUNCTION_15_3();
}

uint64_t closure #1 in WordEmbeddingFeatureExtractor.loadNlEmbeddingsAssets(for:kickOffDownloads:)()
{
  OUTLINED_FUNCTION_24_0();
  if (one-time initialization token for nlEmbeddingsAssetsManager != -1)
  {
    swift_once();
  }

  Locale.identifier.getter();
  *(v0 + 24) = v1;
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = closure #1 in WordEmbeddingFeatureExtractor.loadNlEmbeddingsAssets(for:kickOffDownloads:);

  return NLEmbeddingsAssetsManager.download(for:)();
}

{
  OUTLINED_FUNCTION_14_4();
  OUTLINED_FUNCTION_20_2();
  v1 = *v0;
  OUTLINED_FUNCTION_5_6();
  *v2 = v1;

  OUTLINED_FUNCTION_10_5();

  return v3();
}

uint64_t _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v24 - v10;
  outlined init with copy of TaskPriority?(a3, v24 - v10);
  v12 = type metadata accessor for TaskPriority();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of Token?(v11, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t WordEmbeddingFeatureExtractor.extractImpl(from:)(void *a1)
{
  v4 = type metadata accessor for WordEmbeddingFeatureExtractor(0);
  v5 = *(v1 + *(v4 + 24));
  if (v5 && (v6 = *(v1 + *(v4 + 28))) != 0)
  {
    v7 = v5;

    specialized TopRecognitionExtractor.getTopRecognition(recognition:)(a1);
    if (v2)
    {
    }

    else
    {
      WordEmbeddingFeatureExtractor.nlTokenize(recognition:)();
      v11 = v10;

      v12 = *(v11 + 16);
      if (v12)
      {
        v13 = (v11 + 40);
        v14 = MEMORY[0x277D84F90];
        do
        {
          v15 = *(v13 - 1);
          v16 = *v13;

          v17._countAndFlagsBits = v15;
          v17._object = v16;
          v18 = NLEmbedding.vector(for:)(v17);

          if (!v18)
          {

            v18 = v6;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_28_1(0);
            v14 = v21;
          }

          v20 = *(v14 + 16);
          v19 = *(v14 + 24);
          if (v20 >= v19 >> 1)
          {
            OUTLINED_FUNCTION_28_1(v19 > 1);
            v14 = v22;
          }

          *(v14 + 16) = v20 + 1;
          *(v14 + 8 * v20 + 32) = v18;
          v13 += 2;
          --v12;
        }

        while (v12);
      }

      else
      {
        v14 = MEMORY[0x277D84F90];
      }

      if (*(v14 + 16))
      {
      }

      else
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_28_1(0);
          v14 = v28;
        }

        v24 = *(v14 + 16);
        v23 = *(v14 + 24);
        if (v24 >= v23 >> 1)
        {
          OUTLINED_FUNCTION_28_1(v23 > 1);
          v14 = v29;
        }

        *(v14 + 16) = v24 + 1;
        *(v14 + 8 * v24 + 32) = v6;
      }

      type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for MLMultiArray, 0x277CBFF48);
      v25 = static MLMultiArray.make1DSetOrSequence(from:)(v14);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So07MLMultiB0CtGMd, &_ss23_ContiguousArrayStorageCySS_So07MLMultiB0CtGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_266813FC0;
      *(inited + 32) = 0xD000000000000023;
      *(inited + 40) = 0x8000000266818ED0;
      *(inited + 48) = v25;
      v27 = v25;
      v1 = Dictionary.init(dictionaryLiteral:)();
    }
  }

  else
  {
    lazy protocol witness table accessor for type WordEmbeddingFeatureExtractorError and conformance WordEmbeddingFeatureExtractorError();
    OUTLINED_FUNCTION_13_4();
    swift_allocError();
    *v8 = xmmword_266815500;
    *(v8 + 16) = 3;
    swift_willThrow();
  }

  return v1;
}

void specialized TopRecognitionExtractor.getTopRecognition(recognition:)(void *a1)
{
  v2 = v1;
  v3 = a1;
  v4 = [a1 utterances];
  if (!v4)
  {
    goto LABEL_67;
  }

  v5 = v4;
  type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for SASUtterance, 0x277D477A8);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!specialized Array.count.getter())
  {

LABEL_67:
    lazy protocol witness table accessor for type TopRecogntionFeatureExtractorError and conformance TopRecogntionFeatureExtractorError();
    swift_allocError();
    *v52 = 0xD000000000000028;
    v52[1] = 0x800000026681ACF0;
    swift_willThrow();
    return;
  }

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)();
  if ((v6 & 0xC000000000000001) != 0)
  {
LABEL_82:
    v7 = MEMORY[0x26D5DD230](0, v6);
  }

  else
  {
    v7 = *(v6 + 32);
  }

  v8 = v7;

  v9 = [v3 phrases];
  if (v9)
  {
    v10 = v9;
    type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for SASPhrase, 0x277D47720);
    v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v12 = [v8 interpretationIndices];
    if (v12)
    {
      v13 = v12;
      type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
      v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v14 = specialized Array.count.getter();
      v15 = 0;
      v67 = v11 & 0xFFFFFFFFFFFFFF8;
      v68 = v11 & 0xC000000000000001;
      v16 = v6 & 0xFFFFFFFFFFFFFF8;
      v71 = v6 & 0xFFFFFFFFFFFFFF8;
      if (v6 < 0)
      {
        v16 = v6;
      }

      v60 = v16;
      v65 = v6 & 0xC000000000000001;
      v70 = -v14;
      v17 = MEMORY[0x277D84F90];
      v69 = v6;
      v66 = v6 >> 62;
      v64 = v11;
LABEL_10:
      for (i = v15 + 4; ; ++i)
      {
        if (v70 + i == 4)
        {
          goto LABEL_69;
        }

        v3 = (i - 4);
        if (v68)
        {
          v19 = MEMORY[0x26D5DD230](i - 4, v11);
        }

        else
        {
          if (v3 >= *(v67 + 16))
          {
            goto LABEL_75;
          }

          v19 = *(v11 + 8 * i);
        }

        v72 = v19;
        v20 = i - 3;
        if (__OFADD__(v3, 1))
        {
          break;
        }

        if (v66)
        {
          v6 = i - 3;
          v21 = MEMORY[0x26D5DD300](v60);
          v20 = i - 3;
        }

        else
        {
          v21 = *(v71 + 16);
        }

        if (v3 == v21)
        {

LABEL_69:

          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
          lazy protocol witness table accessor for type [String] and conformance [A]();
          v53 = BidirectionalCollection<>.joined(separator:)();
          v55 = v54;

          v56 = HIBYTE(v55) & 0xF;
          if ((v55 & 0x2000000000000000) == 0)
          {
            v56 = v53 & 0xFFFFFFFFFFFFLL;
          }

          if (!v56)
          {

            lazy protocol witness table accessor for type TopRecogntionFeatureExtractorError and conformance TopRecogntionFeatureExtractorError();
            swift_allocError();
            *v57 = 0xD000000000000028;
            v57[1] = 0x800000026681ACF0;
            swift_willThrow();
          }

          return;
        }

        v63 = v20;
        if (v65)
        {
          v22 = MEMORY[0x26D5DD230](i - 4, v69);
        }

        else
        {
          if (v3 >= *(v71 + 16))
          {
            goto LABEL_76;
          }

          v22 = *(v69 + 8 * i);
        }

        v3 = v22;
        v23 = Int.init(truncating:)();
        v24 = [v72 interpretations];
        if (!v24)
        {
          __break(1u);
LABEL_84:
          __break(1u);
LABEL_85:
          __break(1u);
          goto LABEL_86;
        }

        v25 = v24;
        type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for SASInterpretation, 0x277D47710);
        v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if ((v6 & 0xC000000000000001) != 0)
        {
          v26 = MEMORY[0x26D5DD230](v23, v6);
        }

        else
        {
          if ((v23 & 0x8000000000000000) != 0)
          {
            goto LABEL_77;
          }

          if (v23 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_78;
          }

          v26 = *(v6 + 8 * v23 + 32);
        }

        v27 = v26;
        v28 = [v26 tokens];

        if (!v28)
        {
          goto LABEL_84;
        }

        type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for SASToken, 0x277D477A0);
        v29 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v29 >> 62)
        {
          if (v29 < 0)
          {
            v31 = v29;
          }

          else
          {
            v31 = v29 & 0xFFFFFFFFFFFFFF8;
          }

          v30 = MEMORY[0x26D5DD300](v31);
          if (v30)
          {
LABEL_39:
            v58 = v8;
            v59 = v2;
            v32 = 0;
            v62 = v3;
            v61 = v30;
            while (1)
            {
              if ((v29 & 0xC000000000000001) != 0)
              {
                v33 = MEMORY[0x26D5DD230](v32, v29);
              }

              else
              {
                if (v32 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_80;
                }

                v33 = *(v29 + 8 * v32 + 32);
              }

              v34 = v33;
              v3 = (v32 + 1);
              if (__OFADD__(v32, 1))
              {
                break;
              }

              if ([v33 removeSpaceBefore])
              {
                v35 = *(v17 + 16);
                if (v35)
                {
                  v36 = (v17 + 16 + 16 * v35);
                  v37 = *v36 == 32 && v36[1] == 0xE100000000000000;
                  if (v37 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      specialized _ArrayBuffer._consumeAndCreateNew()(v17);
                      v17 = v51;
                    }

                    v38 = *(v17 + 16);
                    if (!v38)
                    {
                      goto LABEL_81;
                    }

                    *(v17 + 16) = v38 - 1;
                  }
                }
              }

              v39 = [v34 text];
              if (!v39)
              {
                goto LABEL_85;
              }

              v40 = v39;
              v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v43 = v42;

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
                v17 = v48;
              }

              v2 = *(v17 + 16);
              v44 = *(v17 + 24) >> 1;
              v45 = v2 + 1;
              if (v44 <= v2)
              {
                specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
                v17 = v49;
                v44 = *(v49 + 24) >> 1;
              }

              *(v17 + 16) = v45;
              v46 = v17 + 16 * v2;
              *(v46 + 32) = v41;
              *(v46 + 40) = v43;
              v6 = v2 + 2;
              if (v44 < (v2 + 2))
              {
                specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
                v17 = v50;
              }

              *(v17 + 16) = v6;
              v47 = v17 + 16 * v45;
              *(v47 + 32) = 32;
              *(v47 + 40) = 0xE100000000000000;
              ++v32;
              v37 = v3 == v61;
              v3 = v62;
              if (v37)
              {

                v8 = v58;
                v2 = v59;
                v15 = v63;
                v11 = v64;
                goto LABEL_10;
              }
            }

LABEL_79:
            __break(1u);
LABEL_80:
            __break(1u);
LABEL_81:
            __break(1u);
            goto LABEL_82;
          }
        }

        else
        {
          v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v30)
          {
            goto LABEL_39;
          }
        }

        v11 = v64;
      }

      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
      goto LABEL_79;
    }
  }

  else
  {
LABEL_86:
    __break(1u);
  }

  __break(1u);
}

void _s7SiriCam23TopRecognitionExtractorPAAE03getcD011recognitionSSSo14SASRecognitionC_tKFAA41UncertaintyPromptMagicWordsActionEnforcerV_Tt0g5Tm(void *a1)
{
  v2 = v1;
  v3 = a1;
  v4 = [a1 utterances];
  if (!v4)
  {
    goto LABEL_67;
  }

  v5 = v4;
  type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for SASUtterance, 0x277D477A8);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!specialized Array.count.getter())
  {

LABEL_67:
    lazy protocol witness table accessor for type TopRecogntionFeatureExtractorError and conformance TopRecogntionFeatureExtractorError();
    OUTLINED_FUNCTION_13_4();
    v52 = swift_allocError();
    OUTLINED_FUNCTION_23_2(v52, v53);
    return;
  }

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)();
  if ((v6 & 0xC000000000000001) != 0)
  {
LABEL_82:
    v7 = MEMORY[0x26D5DD230](0, v6);
  }

  else
  {
    v7 = *(v6 + 32);
  }

  v8 = v7;

  v9 = [v3 phrases];
  if (v9)
  {
    v10 = v9;
    type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for SASPhrase, 0x277D47720);
    v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v12 = [v8 interpretationIndices];
    if (v12)
    {
      v13 = v12;
      type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
      v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v14 = specialized Array.count.getter();
      v15 = 0;
      v69 = v11 & 0xFFFFFFFFFFFFFF8;
      v70 = v11 & 0xC000000000000001;
      v16 = v6 & 0xFFFFFFFFFFFFFF8;
      v73 = v6 & 0xFFFFFFFFFFFFFF8;
      if (v6 < 0)
      {
        v16 = v6;
      }

      v62 = v16;
      v67 = v6 & 0xC000000000000001;
      v72 = -v14;
      v17 = MEMORY[0x277D84F90];
      v71 = v6;
      v68 = v6 >> 62;
      v66 = v11;
LABEL_10:
      for (i = v15 + 4; ; ++i)
      {
        if (v72 + i == 4)
        {
          goto LABEL_69;
        }

        v3 = (i - 4);
        if (v70)
        {
          v19 = MEMORY[0x26D5DD230](i - 4, v11);
        }

        else
        {
          if (v3 >= *(v69 + 16))
          {
            goto LABEL_75;
          }

          v19 = *(v11 + 8 * i);
        }

        v74 = v19;
        v20 = i - 3;
        if (__OFADD__(v3, 1))
        {
          break;
        }

        if (v68)
        {
          v6 = i - 3;
          v21 = MEMORY[0x26D5DD300](v62);
          v20 = i - 3;
        }

        else
        {
          v21 = *(v73 + 16);
        }

        if (v3 == v21)
        {

LABEL_69:

          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
          lazy protocol witness table accessor for type [String] and conformance [A]();
          v54 = BidirectionalCollection<>.joined(separator:)();
          v56 = v55;

          v57 = HIBYTE(v56) & 0xF;
          if ((v56 & 0x2000000000000000) == 0)
          {
            v57 = v54 & 0xFFFFFFFFFFFFLL;
          }

          if (!v57)
          {

            lazy protocol witness table accessor for type TopRecogntionFeatureExtractorError and conformance TopRecogntionFeatureExtractorError();
            OUTLINED_FUNCTION_13_4();
            v58 = swift_allocError();
            OUTLINED_FUNCTION_23_2(v58, v59);
          }

          return;
        }

        v65 = v20;
        if (v67)
        {
          v22 = MEMORY[0x26D5DD230](i - 4, v71);
        }

        else
        {
          if (v3 >= *(v73 + 16))
          {
            goto LABEL_76;
          }

          v22 = *(v71 + 8 * i);
        }

        v3 = v22;
        v23 = Int.init(truncating:)();
        v24 = [v74 interpretations];
        if (!v24)
        {
          __break(1u);
LABEL_84:
          __break(1u);
LABEL_85:
          __break(1u);
          goto LABEL_86;
        }

        v25 = v24;
        type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for SASInterpretation, 0x277D47710);
        v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if ((v6 & 0xC000000000000001) != 0)
        {
          v26 = MEMORY[0x26D5DD230](v23, v6);
        }

        else
        {
          if ((v23 & 0x8000000000000000) != 0)
          {
            goto LABEL_77;
          }

          if (v23 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_78;
          }

          v26 = *(v6 + 8 * v23 + 32);
        }

        v27 = v26;
        v28 = [v26 tokens];

        if (!v28)
        {
          goto LABEL_84;
        }

        type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for SASToken, 0x277D477A0);
        v29 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v29 >> 62)
        {
          if (v29 < 0)
          {
            v31 = v29;
          }

          else
          {
            v31 = v29 & 0xFFFFFFFFFFFFFF8;
          }

          v30 = MEMORY[0x26D5DD300](v31);
          if (v30)
          {
LABEL_39:
            v60 = v8;
            v61 = v2;
            v32 = 0;
            v64 = v3;
            v63 = v30;
            while (1)
            {
              if ((v29 & 0xC000000000000001) != 0)
              {
                v33 = MEMORY[0x26D5DD230](v32, v29);
              }

              else
              {
                if (v32 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_80;
                }

                v33 = *(v29 + 8 * v32 + 32);
              }

              v34 = v33;
              v3 = (v32 + 1);
              if (__OFADD__(v32, 1))
              {
                break;
              }

              if ([v33 removeSpaceBefore])
              {
                v35 = *(v17 + 16);
                if (v35)
                {
                  v36 = (v17 + 16 + 16 * v35);
                  v37 = *v36 == 32 && v36[1] == 0xE100000000000000;
                  if (v37 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      specialized _ArrayBuffer._consumeAndCreateNew()(v17);
                      v17 = v51;
                    }

                    v38 = *(v17 + 16);
                    if (!v38)
                    {
                      goto LABEL_81;
                    }

                    *(v17 + 16) = v38 - 1;
                  }
                }
              }

              v39 = [v34 text];
              if (!v39)
              {
                goto LABEL_85;
              }

              v40 = v39;
              v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v43 = v42;

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
                v17 = v48;
              }

              v2 = *(v17 + 16);
              v44 = *(v17 + 24) >> 1;
              v45 = v2 + 1;
              if (v44 <= v2)
              {
                specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
                v17 = v49;
                v44 = *(v49 + 24) >> 1;
              }

              *(v17 + 16) = v45;
              v46 = v17 + 16 * v2;
              *(v46 + 32) = v41;
              *(v46 + 40) = v43;
              v6 = v2 + 2;
              if (v44 < (v2 + 2))
              {
                specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
                v17 = v50;
              }

              *(v17 + 16) = v6;
              v47 = v17 + 16 * v45;
              *(v47 + 32) = 32;
              *(v47 + 40) = 0xE100000000000000;
              ++v32;
              v37 = v3 == v63;
              v3 = v64;
              if (v37)
              {

                v8 = v60;
                v2 = v61;
                v15 = v65;
                v11 = v66;
                goto LABEL_10;
              }
            }

LABEL_79:
            __break(1u);
LABEL_80:
            __break(1u);
LABEL_81:
            __break(1u);
            goto LABEL_82;
          }
        }

        else
        {
          v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v30)
          {
            goto LABEL_39;
          }
        }

        v11 = v66;
      }

      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
      goto LABEL_79;
    }
  }

  else
  {
LABEL_86:
    __break(1u);
  }

  __break(1u);
}

void WordEmbeddingFeatureExtractor.nlTokenize(recognition:)()
{
  OUTLINED_FUNCTION_16_1();
  v24 = type metadata accessor for Token();
  OUTLINED_FUNCTION_22();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_0();
  v23 = v6 - v5;
  if (*(v0 + *(type metadata accessor for WordEmbeddingFeatureExtractor(0) + 20)))
  {

    dispatch thunk of ConfigurableAnalyzer.analyzeString(string:)();
    if (v1)
    {
    }

    else
    {

      v9 = specialized Sequence.filter(_:)(v8);
      v10 = *(v9 + 16);
      if (v10)
      {
        v25 = MEMORY[0x277D84F90];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10, 0);
        v12 = *(v3 + 16);
        v11 = v3 + 16;
        v13 = v9 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
        v21 = *(v11 + 56);
        v22 = v12;
        v14 = (v11 - 8);
        do
        {
          v22(v23, v13, v24);
          v15 = Token.cleanValue.getter();
          v17 = v16;
          (*v14)(v23, v24);
          v19 = *(v25 + 16);
          v18 = *(v25 + 24);
          if (v19 >= v18 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v18 > 1, v19 + 1, 1);
          }

          *(v25 + 16) = v19 + 1;
          v20 = v25 + 16 * v19;
          *(v20 + 32) = v15;
          *(v20 + 40) = v17;
          v13 += v21;
          --v10;
        }

        while (v10);
      }

      else
      {
      }
    }
  }

  else
  {
    lazy protocol witness table accessor for type WordEmbeddingFeatureExtractorError and conformance WordEmbeddingFeatureExtractorError();
    OUTLINED_FUNCTION_13_4();
    swift_allocError();
    *v7 = 0;
    *(v7 + 8) = 0;
    *(v7 + 16) = 3;
    swift_willThrow();
  }

  OUTLINED_FUNCTION_15_3();
}

unint64_t specialized Sequence.filter(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12MorphunSwift5TokenVSgMd, &_s12MorphunSwift5TokenVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v22 - v3;
  v5 = type metadata accessor for Token();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v25 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - v9;
  v28 = a1;
  type metadata accessor for TokenChain();
  v11 = MEMORY[0x277D2A2C8];
  lazy protocol witness table accessor for type TokenChain and conformance TokenChain(&lazy protocol witness table cache variable for type TokenChain and conformance TokenChain, MEMORY[0x277D2A2C8], MEMORY[0x277D2A2D0]);
  dispatch thunk of Sequence.makeIterator()();
  lazy protocol witness table accessor for type TokenChain and conformance TokenChain(&lazy protocol witness table cache variable for type TokenChain and conformance TokenChain, v11, MEMORY[0x277D2A2D8]);
  v12 = (v6 + 32);
  v24 = v6;
  v13 = (v6 + 8);
  v26 = MEMORY[0x277D84F90];
  while (1)
  {
    dispatch thunk of IteratorProtocol.next()();
    if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
    {
      break;
    }

    v14 = *v12;
    (*v12)(v10, v4, v5);
    if (Token.isSignificant()())
    {
      v14(v25, v10, v5);
      v15 = v26;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v27 = v15;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v15 + 16) + 1, 1);
        v15 = v27;
      }

      v18 = *(v15 + 16);
      v17 = *(v15 + 24);
      v19 = v18 + 1;
      if (v18 >= v17 >> 1)
      {
        v26 = v18 + 1;
        v23 = v18;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v17 > 1, v18 + 1, 1);
        v19 = v26;
        v18 = v23;
        v15 = v27;
      }

      *(v15 + 16) = v19;
      v20 = (*(v24 + 80) + 32) & ~*(v24 + 80);
      v26 = v15;
      v14((v15 + v20 + *(v24 + 72) * v18), v25, v5);
    }

    else
    {
      (*v13)(v10, v5);
    }
  }

  outlined destroy of Token?(v4, &_s12MorphunSwift5TokenVSgMd, &_s12MorphunSwift5TokenVSgMR);
  return v26;
}

unint64_t lazy protocol witness table accessor for type WordEmbeddingFeatureExtractorError and conformance WordEmbeddingFeatureExtractorError()
{
  result = lazy protocol witness table cache variable for type WordEmbeddingFeatureExtractorError and conformance WordEmbeddingFeatureExtractorError;
  if (!lazy protocol witness table cache variable for type WordEmbeddingFeatureExtractorError and conformance WordEmbeddingFeatureExtractorError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WordEmbeddingFeatureExtractorError and conformance WordEmbeddingFeatureExtractorError);
  }

  return result;
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
  OUTLINED_FUNCTION_14_4();
  OUTLINED_FUNCTION_20_2();
  v1 = *v0;
  OUTLINED_FUNCTION_5_6();
  *v2 = v1;

  OUTLINED_FUNCTION_10_5();

  return v3();
}

unint64_t lazy protocol witness table accessor for type TopRecogntionFeatureExtractorError and conformance TopRecogntionFeatureExtractorError()
{
  result = lazy protocol witness table cache variable for type TopRecogntionFeatureExtractorError and conformance TopRecogntionFeatureExtractorError;
  if (!lazy protocol witness table cache variable for type TopRecogntionFeatureExtractorError and conformance TopRecogntionFeatureExtractorError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TopRecogntionFeatureExtractorError and conformance TopRecogntionFeatureExtractorError);
  }

  return result;
}

void specialized _ArrayBuffer._consumeAndCreateNew()(uint64_t a1)
{
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

{
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

{
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

{
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

unint64_t lazy protocol witness table accessor for type [String] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [String] and conformance [A];
  if (!lazy protocol witness table cache variable for type [String] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [String] and conformance [A]);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type TokenChain and conformance TokenChain(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t partial apply for closure #1 in WordEmbeddingFeatureExtractor.loadNlEmbeddingsAssets(for:kickOffDownloads:)(uint64_t a1)
{
  v3 = *(type metadata accessor for Locale() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_16_2(v7);
  *v8 = v9;
  v8[1] = partial apply for closure #1 in WordEmbeddingFeatureExtractor.loadNlEmbeddingsAssets(for:kickOffDownloads:);

  return closure #1 in WordEmbeddingFeatureExtractor.loadNlEmbeddingsAssets(for:kickOffDownloads:)(a1, v5, v6, v1 + v4);
}

uint64_t partial apply for closure #1 in WordEmbeddingFeatureExtractor.loadNlEmbeddingsAssets(for:kickOffDownloads:)()
{
  OUTLINED_FUNCTION_14_4();
  OUTLINED_FUNCTION_20_2();
  v1 = *v0;
  OUTLINED_FUNCTION_5_6();
  *v2 = v1;

  OUTLINED_FUNCTION_10_5();

  return v3();
}

uint64_t outlined destroy of Token?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined init with copy of TaskPriority?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA()
{
  OUTLINED_FUNCTION_24_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_16_2(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_8_5(v1);

  return v4(v3);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA_13()
{
  OUTLINED_FUNCTION_24_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_16_2(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_8_5(v1);

  return v4(v3);
}

uint64_t get_enum_tag_for_layout_string_7SiriCam34WordEmbeddingFeatureExtractorErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t destructiveInjectEnumTag for WordEmbeddingFeatureExtractorError(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_23_2(uint64_t a1, void *a2)
{
  *a2 = 0xD000000000000028;
  a2[1] = v2;

  return swift_willThrow();
}

void OUTLINED_FUNCTION_28_1(uint64_t a1)
{

  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for CAARTrialEnrollment(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 64))
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

uint64_t storeEnumTagSinglePayload for CAARTrialEnrollment(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay7SiriCam15ActionCandidateVG_SDySSSo14MLFeatureValueCGsAE_pTg5(void (*a1)(uint64_t *__return_ptr, uint64_t, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    v18 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
    v6 = v18;
    v8 = *(type metadata accessor for ActionCandidate(0) - 8);
    v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v10 = *(v8 + 72);
    while (1)
    {
      a1(&v17, v9, &v16);
      if (v4)
      {
        break;
      }

      v4 = 0;
      v11 = v17;
      v18 = v6;
      v13 = *(v6 + 16);
      v12 = *(v6 + 24);
      if (v13 >= v12 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
        v6 = v18;
      }

      *(v6 + 16) = v13 + 1;
      *(v6 + 8 * v13 + 32) = v11;
      v9 += v10;
      if (!--v5)
      {
        return v6;
      }
    }
  }

  return v6;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay7SiriCam0E5ParseOG_Sds5NeverOTg5(void (*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v17 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
  v6 = v17;
  v9 = *(type metadata accessor for CamParse(0) - 8);
  v10 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v11 = *(v9 + 72);
  while (1)
  {
    a1(&v16, v10);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v12 = v16;
    v17 = v6;
    v14 = *(v6 + 16);
    v13 = *(v6 + 24);
    if (v14 >= v13 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v13 > 1, v14 + 1, 1);
      v6 = v17;
    }

    *(v6 + 16) = v14 + 1;
    *(v6 + 8 * v14 + 32) = v12;
    v10 += v11;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

void specialized Sequence.filter(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v37 = a4;
  v7 = type metadata accessor for UUID();
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v31 - v11;
  v39 = v13;
  v40 = a3 + 56;
  v41 = (v13 + 8);
  v42 = (v13 + 16);
  v33 = a2;
  v34 = MEMORY[0x277D84F90];
  v14 = a1;
  v32 = a1;
LABEL_2:
  v15 = v14;
  for (i = v14; ; v14 = i)
  {
    if (v15 == a2)
    {

      return;
    }

    if (a2 < a1)
    {
      break;
    }

    if (v14 < a1)
    {
      goto LABEL_23;
    }

    if (v15 >= a2)
    {
      goto LABEL_24;
    }

    if (v14 < 0)
    {
      goto LABEL_25;
    }

    v16 = *v37;
    if (v15 >= *(*v37 + 16))
    {
      goto LABEL_26;
    }

    v38 = v15 + 1;
    v17 = type metadata accessor for RankedAction(0);
    v18 = *v42;
    (*v42)(v12, v16 + ((*(*(v17 - 8) + 80) + 32) & ~*(*(v17 - 8) + 80)) + *(*(v17 - 8) + 72) * v15 + *(v17 + 36), v7);
    if (*(a3 + 16))
    {
      v35 = v15;
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v19 = v12;
      v20 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = a3;
      v22 = ~(-1 << *(a3 + 32));
      do
      {
        v23 = v20 & v22;
        if (((*(v40 + (((v20 & v22) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v20 & v22)) & 1) == 0)
        {
          a3 = v21;
          a1 = v32;
          a2 = v33;
          v12 = v19;
          goto LABEL_15;
        }

        v24 = v39;
        v18(v10, *(v21 + 48) + *(v39 + 72) * v23, v7);
        lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
        v25 = dispatch thunk of static Equatable.== infix(_:_:)();
        v26 = *(v24 + 8);
        v26(v10, v7);
        v20 = v23 + 1;
      }

      while ((v25 & 1) == 0);
      v26(v19, v7);
      v27 = v34;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v43 = v27;
      a1 = v32;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v27 + 16) + 1, 1);
        v27 = v43;
      }

      v30 = *(v27 + 16);
      v29 = *(v27 + 24);
      v12 = v19;
      if (v30 >= v29 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v29 > 1, v30 + 1, 1);
        v27 = v43;
      }

      *(v27 + 16) = v30 + 1;
      v34 = v27;
      *(v27 + 8 * v30 + 32) = v35;
      v14 = v38;
      a3 = v21;
      a2 = v33;
      goto LABEL_2;
    }

LABEL_15:
    (*v41)(v12, v7);
    v15 = v38;
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
}

uint64_t one-time initialization function for postRankLoggingQueue()
{
  v7 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v3);
  v4 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v4 - 8);
  v6[1] = type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  static DispatchQoS.background.getter();
  v8 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v2, *MEMORY[0x277D85260], v7);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  static CodeBasedRankerHandler.postRankLoggingQueue = result;
  return result;
}

uint64_t CodeBasedRankerHandler.init(scorer:tieBreakerChain:)(void *a1, uint64_t a2)
{
  outlined init with copy of SignalProviding(a1, v2 + 16);
  *(v2 + 104) = a2;
  OUTLINED_FUNCTION_3_3();
  *(v2 + 56) = 0xD000000000000011;
  *(v2 + 64) = v6;
  CamModelVersion.init(_:)();
  if (v3)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    __swift_destroy_boxed_opaque_existential_0((v2 + 16));

    type metadata accessor for CodeBasedRankerHandler();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v11 = v7;
    v12 = v8;
    v13 = v9;
    v14 = v10;
    v15 = HIDWORD(v7);
    __swift_destroy_boxed_opaque_existential_0(a1);
    *(v2 + 72) = v11;
    *(v2 + 76) = v15;
    *(v2 + 80) = v12;
    *(v2 + 88) = v13;
    *(v2 + 96) = v14;
  }

  return v2;
}

void CodeBasedRankerHandler.rank(requestId:caarId:rcId:actions:rankerContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_16_1();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  OUTLINED_FUNCTION_14(v34);
  OUTLINED_FUNCTION_7_4();
  MEMORY[0x28223BE20](v35);
  v37 = &a9 - v36;
  v38 = type metadata accessor for UUID();
  __swift_storeEnumTagSinglePayload(v37, 1, 1, v38);
  CodeBasedRankerHandler.rank(requestId:caarId:rcId:trpId:actions:rankerContext:)(v33, v31, v29, v27, v37, v25, v23);
  outlined destroy of (CamLogOutput, CamModelMetadata)(v37, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  OUTLINED_FUNCTION_15_3();
}

void (*CodeBasedRankerHandler.rank(requestId:caarId:rcId:trpId:actions:rankerContext:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, unint64_t), uint64_t a5, uint64_t a6, unint64_t a7))(uint64_t, unint64_t)
{
  v225 = a7;
  v231 = a6;
  v213 = type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_22();
  v212 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_21_1(v16 - v15);
  v211 = type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_22();
  v210 = v17;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_23_0(v20 - v19);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  OUTLINED_FUNCTION_19_3(v21);
  v205 = v22;
  OUTLINED_FUNCTION_7_4();
  v206 = v23;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_21_1(&v197 - v25);
  v208 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_22();
  v207 = v26;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_23_0(&v197 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v204 = v29;
  MEMORY[0x28223BE20](v30);
  v32 = OUTLINED_FUNCTION_21_1(&v197 - v31);
  v229 = type metadata accessor for RankedAction(v32);
  OUTLINED_FUNCTION_22();
  v230 = v33;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_5();
  v232 = v35;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_10_3();
  *&v233 = v37;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v38);
  v40 = &v197 - v39;
  v41 = type metadata accessor for OSSignpostID();
  OUTLINED_FUNCTION_22();
  v228 = v42;
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_5();
  v214 = v44;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_10_3();
  v217 = v46;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_10_3();
  v218 = v48;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_51();
  MEMORY[0x28223BE20](v50);
  v52 = &v197 - v51;
  v220 = a2;
  v223 = a3;
  v224 = a4;
  v221 = a1;
  v222 = a5;
  _s7SiriCam19CaarLoggingProtocolPAAE3log4from03forC2Id0h2RcI00h7RequestI00h3TrpI0y13SourceMessageQz_10Foundation4UUIDVSSA2NSgtFZAA0cK6LoggerV_Tt4g5(a2, a3, a4, a1, a5);
  if (one-time initialization token for ranker != -1)
  {
    goto LABEL_58;
  }

  while (1)
  {
    v53 = static Log.ranker;
    OSSignpostID.init(log:)();
    static os_signpost_type_t.begin.getter();
    OUTLINED_FUNCTION_52();
    *(v54 - 256) = v52;
    os_signpost(_:dso:log:name:signpostID:_:_:)();
    v55 = v53;
    OSSignpostID.init(log:)();
    static os_signpost_type_t.begin.getter();
    OUTLINED_FUNCTION_49();
    os_signpost(_:dso:log:name:signpostID:)();
    v56 = v226;
    CodeBasedRankerHandler.extractFeatures(actions:rankerContext:)();
    if (v56)
    {
      v58 = *(v228 + 8);
      v58(v7, v41);
      static os_signpost_type_t.end.getter();
      OUTLINED_FUNCTION_52();
      v63 = *(v62 - 256);
      os_signpost(_:dso:log:name:signpostID:)();
      v58(v63, v41);
      v64 = v56;
      CamResponseStatusCode.init(fromError:)(&aBlock, v56);
      _s7SiriCam19CaarLoggingProtocolPAAE3log4from03forC2Id0h2RcI00h7RequestI00h3TrpI0y13SourceMessageQz_10Foundation4UUIDVSSA2NSgtFZAA0C11ErrorLoggerV_Tt4B5(aBlock, v220, v223, v224, v221, v222);
      swift_willThrow();
      return v58;
    }

    v59 = v57;
    v225 = v41;
    static os_signpost_type_t.end.getter();
    OUTLINED_FUNCTION_49();
    os_signpost(_:dso:log:name:signpostID:)();
    v60 = v55;
    OSSignpostID.init(log:)();
    static os_signpost_type_t.begin.getter();
    OUTLINED_FUNCTION_30_0();
    os_signpost(_:dso:log:name:signpostID:)();
    OUTLINED_FUNCTION_29_0();
    v226 = swift_allocObject();

    _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySay7SiriCam15ActionCandidateVGSaySDySSSo14MLFeatureValueCGGG_AH06RankedH0VsAE_pTg503_s7f5Cam15hi10VSDySSSo14jk6CGAA06l5C0Vs5C33_pIgngrzo_AC_AFtAHsAI_pIegnrzr_TRAjnRsAE_pIgngrzo_Tf1cn_n(v61, v59, partial apply for closure #1 in CodeBasedRankerHandler.rank(requestId:caarId:rcId:trpId:actions:rankerContext:), v219);
    v67 = v66;
    v203 = v60;

    aBlock = v67;

    specialized MutableCollection<>.sort(by:)(&aBlock, specialized _ContiguousArrayBuffer._consumeAndCreateNew());
    v202 = v7;
    v201 = 0;

    v68 = v226;
    *(v226 + 16) = aBlock;
    static os_signpost_type_t.end.getter();
    OUTLINED_FUNCTION_30_0();
    os_signpost(_:dso:log:name:signpostID:)();
    v69 = v219;
    if (one-time initialization token for ranker != -1)
    {
      OUTLINED_FUNCTION_2_0();
      swift_once();
    }

    v70 = type metadata accessor for Logger();
    v71 = __swift_project_value_buffer(v70, static Logger.ranker);

    v231 = v71;
    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v72, v73))
    {
      LODWORD(v200) = v73;
      OUTLINED_FUNCTION_15();
      v74 = swift_slowAlloc();
      OUTLINED_FUNCTION_9();
      v199 = swift_slowAlloc();
      aBlock = v199;
      *v74 = 136315138;
      OUTLINED_FUNCTION_62(v68 + 16, v234);
      v75 = *(v68 + 16);
      v76 = *(v75 + 16);
      if (v76)
      {
        v197 = v74;
        v198 = v72;
        v243 = MEMORY[0x277D84F90];

        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v76, 0);
        v77 = v243;
        OUTLINED_FUNCTION_8();
        v79 = v75 + v78;
        v81 = *(v80 + 72);
        do
        {
          OUTLINED_FUNCTION_1_12();
          outlined init with copy of RankedAction();
          OUTLINED_FUNCTION_37();
          v83 = *&v40[*(v82 + 28)];
          OUTLINED_FUNCTION_0_11();
          outlined destroy of RankedAction(v40);
          v243 = v77;
          v85 = *(v77 + 16);
          v84 = *(v77 + 24);
          if (v85 >= v84 >> 1)
          {
            v86 = OUTLINED_FUNCTION_17_1(v84);
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v86, v85 + 1, 1);
            v77 = v243;
          }

          *(v77 + 16) = v85 + 1;
          *(v77 + 8 * v85 + 32) = v83;
          v79 += v81;
          --v76;
        }

        while (v76);

        v69 = v219;
        v72 = v198;
        v74 = v197;
      }

      else
      {

        v77 = MEMORY[0x277D84F90];
      }

      v87 = MEMORY[0x26D5DCE80](v77, MEMORY[0x277D839F8]);
      v89 = v88;

      v90 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v87, v89, &aBlock);

      *(v74 + 4) = v90;
      _os_log_impl(&dword_266790000, v72, v200, "Ranking generated scores %s", v74, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v199);
      OUTLINED_FUNCTION_3_2();
      MEMORY[0x26D5DDCD0]();
      OUTLINED_FUNCTION_3_2();
      MEMORY[0x26D5DDCD0]();
    }

    else
    {
    }

    v91 = Logger.logObject.getter();
    v92 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      *v93 = 67109120;
      v94 = OUTLINED_FUNCTION_61();
      v95 = v94 != 2 && (v94 & 1) != 0 && (CamFeatureFlag.isEnabled.getter(5) & 1) != 0;
      *(v93 + 4) = v95;
      _os_log_impl(&dword_266790000, v91, v92, "Dawn AppShortcuts experience enabled=%{BOOL}d", v93, 8u);
      OUTLINED_FUNCTION_3_2();
      MEMORY[0x26D5DDCD0]();
    }

    OUTLINED_FUNCTION_62(v68 + 16, &v243);
    v96 = *(v68 + 16);
    v41 = *(v96 + 16);
    if (v41 < 2)
    {
      break;
    }

    OUTLINED_FUNCTION_37();
    v7 = *(v97 + 44);

    v40 = 0;
    v52 = 0x535F5050415F5349;
    while (v40 < *(v96 + 16))
    {
      OUTLINED_FUNCTION_1_12();
      v98 = v233;
      outlined init with copy of RankedAction();
      v91 = *(v98 + v7);
      if (v91[2].isa && (v99 = specialized __RawDictionaryStorage.find<A>(_:)(0x535F5050415F5349, 0xEF54554354524F48), (v100 & 1) != 0))
      {
        v91 = [*(v91[7].isa + v99) int64Value];
        OUTLINED_FUNCTION_0_11();
        outlined destroy of RankedAction(v233);
        if (v91)
        {
          v101 = 1;
LABEL_36:

          OUTLINED_FUNCTION_55();
          goto LABEL_37;
        }
      }

      else
      {
        OUTLINED_FUNCTION_0_11();
        outlined destroy of RankedAction(v233);
      }

      if (v41 == ++v40)
      {
        v101 = 0;
        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_58:
    swift_once();
  }

  v101 = 0;
  OUTLINED_FUNCTION_55();
LABEL_37:
  OUTLINED_FUNCTION_29_0();
  v229 = swift_allocObject();
  v102 = OUTLINED_FUNCTION_61();
  if (v102 != 2 && (v102 & 1) != 0 && (v101 & CamFeatureFlag.isEnabled.getter(5)) == 1)
  {
    v103 = v91;
    OSSignpostID.init(log:)();
    static os_signpost_type_t.begin.getter();
    OUTLINED_FUNCTION_17_3();
    OUTLINED_FUNCTION_49();
    os_signpost(_:dso:log:name:signpostID:)();
    type metadata accessor for SiriSignalsContainer();
    OUTLINED_FUNCTION_29_0();
    swift_allocObject();
    OUTLINED_FUNCTION_48();
    type metadata accessor for SignalValue();
    *(v101 + 16) = Dictionary.init(dictionaryLiteral:)();
    SiriSignalsContainer.refreshSignals()();
    v104 = v226;
    swift_beginAccess();

    specialized CodeBasedRankerHandler.extractUserHistoryFeatures(rankedActions:siriSignalsContainer:)((v104 + 16), v101);
    specialized CodeBasedRankerHandler.extractDisambiguationFeatures(rankedActions:siriSignalsContainer:)((v104 + 16), v101);
    swift_endAccess();
    *&v233 = v101;

    static os_signpost_type_t.end.getter();
    OUTLINED_FUNCTION_17_3();
    OUTLINED_FUNCTION_49();
    os_signpost(_:dso:log:name:signpostID:)();
    v105 = v103;
    OSSignpostID.init(log:)();
    static os_signpost_type_t.begin.getter();
    OUTLINED_FUNCTION_17_3();
    OUTLINED_FUNCTION_30_0();
    os_signpost(_:dso:log:name:signpostID:)();
    v106 = *(v69 + 104);

    v108 = Array<A>.execute(_:)(v107, v106);
    v199 = v109;

    OUTLINED_FUNCTION_37();
    *(v110 + 16) = v108;
    OUTLINED_FUNCTION_8_6(v110);
    v201 = v106;
    static os_signpost_type_t.end.getter();
    OUTLINED_FUNCTION_17_3();
    OUTLINED_FUNCTION_30_0();
    os_signpost(_:dso:log:name:signpostID:)();
    if (one-time initialization token for postRankLoggingQueue != -1)
    {
      OUTLINED_FUNCTION_20_3(&one-time initialization token for postRankLoggingQueue);
    }

    v200 = static CodeBasedRankerHandler.postRankLoggingQueue;
    v111 = v207;
    v112 = v207 + 16;
    v113 = *(v207 + 16);
    v114 = OUTLINED_FUNCTION_31();
    v116 = *(v115 - 256);
    v113(v114);
    v117 = OUTLINED_FUNCTION_44();
    v113(v117);
    OUTLINED_FUNCTION_60();
    OUTLINED_FUNCTION_26_1();
    v119 = v118 & 0xFFFFFFFFFFFFFFF8;
    v121 = (v120 + (v118 & 0xFFFFFFFFFFFFFFF8) + 16) & ~v120;
    OUTLINED_FUNCTION_59();
    v124 = (v206 + ((v122 + v121) & ~v123) + 7) & 0xFFFFFFFFFFFFFFF8;
    v125 = swift_allocObject();
    OUTLINED_FUNCTION_37();
    *(v126 + 16) = v128;
    *(v126 + 24) = v127;
    v129 = *(v111 + 32);
    v129(v126 + v112, v215, v116);
    OUTLINED_FUNCTION_38((v125 + v119));
    v129(v125 + v121, v216, v116);
    outlined init with take of (UUID, [String : MLFeatureValue])();
    *(v125 + v124) = v199;
    v241 = partial apply for closure #3 in CodeBasedRankerHandler.rank(requestId:caarId:rcId:trpId:actions:rankerContext:);
    v242 = v125;
    aBlock = MEMORY[0x277D85DD0];
    v238 = 1107296256;
    v239 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v240 = &block_descriptor_26;
    v130 = _Block_copy(&aBlock);

    v131 = v209;
    static DispatchQoS.unspecified.getter();
    v235 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_13_5();
    lazy protocol witness table accessor for type UUID and conformance UUID(v132, v133, MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    OUTLINED_FUNCTION_32();
    v134 = v213;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x26D5DD090](0, v131, v112, v130);
    _Block_release(v130);

    v135 = OUTLINED_FUNCTION_57();
    v136(v135, v134);
    v137 = OUTLINED_FUNCTION_28_2();
    v138(v137);
    v139 = *(v228 + 8);
    v140 = v225;
    v139(v214, v225);
    v224 = v139;
    v139(v217, v140);
  }

  else
  {
    v141 = v91;
    OSSignpostID.init(log:)();
    static os_signpost_type_t.begin.getter();
    OUTLINED_FUNCTION_30_0();
    os_signpost(_:dso:log:name:signpostID:)();
    v142 = *(v69 + 104);

    v144 = Array<A>.execute(_:)(v143, v142);
    v214 = v145;

    OUTLINED_FUNCTION_37();
    *(v146 + 16) = v144;
    OUTLINED_FUNCTION_8_6(v146);
    v201 = v142;
    static os_signpost_type_t.end.getter();
    OUTLINED_FUNCTION_30_0();
    os_signpost(_:dso:log:name:signpostID:)();
    if (one-time initialization token for postRankLoggingQueue != -1)
    {
      OUTLINED_FUNCTION_20_3(&one-time initialization token for postRankLoggingQueue);
    }

    *&v233 = static CodeBasedRankerHandler.postRankLoggingQueue;
    v147 = v207;
    v148 = *(v207 + 16);
    v149 = OUTLINED_FUNCTION_31();
    v151 = *(v150 - 256);
    v148(v149);
    v152 = OUTLINED_FUNCTION_44();
    v148(v152);
    OUTLINED_FUNCTION_60();
    OUTLINED_FUNCTION_26_1();
    v154 = v153 & 0xFFFFFFFFFFFFFFF8;
    v156 = (v155 + (v153 & 0xFFFFFFFFFFFFFFF8) + 16) & ~v155;
    OUTLINED_FUNCTION_59();
    v159 = (v206 + ((v157 + v156) & ~v158) + 7) & 0xFFFFFFFFFFFFFFF8;
    v160 = swift_allocObject();
    v161 = v219;
    *(v160 + 16) = v226;
    *(v160 + 24) = v161;
    v162 = *(v147 + 32);
    v162(v148 + v160, v215, v151);
    OUTLINED_FUNCTION_38((v160 + v154));
    v162((v160 + v156), v216, v151);
    outlined init with take of (UUID, [String : MLFeatureValue])();
    *(v160 + v159) = v214;
    v241 = partial apply for closure #4 in CodeBasedRankerHandler.rank(requestId:caarId:rcId:trpId:actions:rankerContext:);
    v242 = v160;
    aBlock = MEMORY[0x277D85DD0];
    v238 = 1107296256;
    v239 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v240 = &block_descriptor_0;
    v163 = _Block_copy(&aBlock);

    v164 = v209;
    static DispatchQoS.unspecified.getter();
    v235 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_13_5();
    lazy protocol witness table accessor for type UUID and conformance UUID(v165, v166, MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    OUTLINED_FUNCTION_32();
    v167 = v213;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x26D5DD090](0, v164, v148, v163);
    _Block_release(v163);
    v168 = OUTLINED_FUNCTION_57();
    v169(v168, v167);
    v170 = OUTLINED_FUNCTION_28_2();
    v171(v170);
    v224 = *(v228 + 8);
    v224(v217, v225);
  }

  v172 = v229;

  v173 = Logger.logObject.getter();
  v174 = static os_log_type_t.info.getter();
  v175 = os_log_type_enabled(v173, v174);
  v176 = v227;
  v177 = v232;
  v178 = v218;
  if (v175)
  {
    OUTLINED_FUNCTION_15();
    v179 = swift_slowAlloc();
    *v179 = 134217984;
    OUTLINED_FUNCTION_62(v172 + 16, &v235);
    *(v179 + 4) = *(*(v172 + 16) + 16);

    _os_log_impl(&dword_266790000, v173, v174, "Returning %ld ranked actions", v179, 0xCu);
    OUTLINED_FUNCTION_3_2();
    MEMORY[0x26D5DDCD0]();
  }

  else
  {
  }

  OUTLINED_FUNCTION_62(v172 + 16, &aBlock);
  v180 = *(*(v172 + 16) + 16);
  if (v180)
  {
    OUTLINED_FUNCTION_8();
    v183 = v181 + v182;
    v185 = *(v184 + 72);
    v230 = v181;

    *&v186 = 136315138;
    v233 = v186;
    do
    {
      OUTLINED_FUNCTION_1_12();
      outlined init with copy of RankedAction();
      v187 = Logger.logObject.getter();
      v188 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v187, v188))
      {
        OUTLINED_FUNCTION_15();
        v189 = swift_slowAlloc();
        OUTLINED_FUNCTION_9();
        v190 = swift_slowAlloc();
        v236 = v190;
        *v189 = v233;
        v191 = RankedAction.description.getter();
        v193 = v192;
        OUTLINED_FUNCTION_0_11();
        outlined destroy of RankedAction(v232);
        v194 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v191, v193, &v236);
        v177 = v232;

        *(v189 + 4) = v194;
        _os_log_impl(&dword_266790000, v187, v188, "%s", v189, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v190);
        OUTLINED_FUNCTION_3_2();
        MEMORY[0x26D5DDCD0]();
        OUTLINED_FUNCTION_3_2();
        MEMORY[0x26D5DDCD0]();
      }

      else
      {

        OUTLINED_FUNCTION_0_11();
        outlined destroy of RankedAction(v177);
      }

      v183 += v185;
      --v180;
    }

    while (v180);

    v176 = v227;
    v178 = v218;
    v172 = v229;
  }

  v195 = v225;
  v196 = v224;
  v224(v178, v225);
  v196(v202, v195);
  v58 = *(v172 + 16);

  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  v196(v176, v195);
  return v58;
}

void _s7SiriCam19CaarLoggingProtocolPAAE3log4from03forC2Id0h2RcI00h7RequestI00h3TrpI0y13SourceMessageQz_10Foundation4UUIDVSSA2NSgtFZAA0cK6LoggerV_Tt4g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v181 = a5;
  v182 = a3;
  v178 = a4;
  v179 = a2;
  v180 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v167 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v169 = &v167 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v168 = &v167 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v171 = &v167 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v177 = &v167 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v170 = &v167 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v167 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v173 = (&v167 - v23);
  v24 = MEMORY[0x28223BE20](v22);
  v176 = &v167 - v25;
  MEMORY[0x28223BE20](v24);
  v27 = &v167 - v26;
  v183 = type metadata accessor for UUID();
  v28 = *(v183 - 8);
  v29 = MEMORY[0x28223BE20](v183);
  v174 = &v167 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v167 = &v167 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v35 = &v167 - v34;
  v36 = MEMORY[0x28223BE20](v33);
  v172 = &v167 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v40 = &v167 - v39;
  v41 = MEMORY[0x28223BE20](v38);
  v43 = &v167 - v42;
  v44 = MEMORY[0x28223BE20](v41);
  v46 = &v167 - v45;
  MEMORY[0x28223BE20](v44);
  v48 = &v167 - v47;
  v49 = [objc_allocWithZone(MEMORY[0x277D56BC8]) init];
  if (!v49)
  {
    v176 = v8;
    v177 = v27;
    if (one-time initialization token for common != -1)
    {
      swift_once();
    }

    v62 = type metadata accessor for Logger();
    __swift_project_value_buffer(v62, static Logger.common);
    v63 = v28;
    v64 = *(v28 + 2);
    v65 = v183;
    v64(v48, v180, v183);
    v64(v46, v178, v65);
    v66 = v177;
    outlined init with copy of UUID?();
    v67 = v182;

    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v68, v69))
    {

      outlined destroy of (CamLogOutput, CamModelMetadata)(v66, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v107 = *(v63 + 1);
      v107(v46, v65);
      v107(v48, v65);
      return;
    }

    LODWORD(v181) = v69;
    v70 = swift_slowAlloc();
    v180 = swift_slowAlloc();
    v185[0] = v180;
    *v70 = 136316162;
    v184 = type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for CAARSchemaCAARRequestReceived, 0x277D56BC8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo29CAARSchemaCAARRequestReceivedCmMd, &_sSo29CAARSchemaCAARRequestReceivedCmMR);
    v71 = String.init<A>(describing:)();
    v73 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v71, v72, v185);

    *(v70 + 4) = v73;
    *(v70 + 12) = 2080;
    v74 = UUID.uuidString.getter();
    v76 = v75;
    v77 = *(v63 + 1);
    v77(v48, v183);
    v78 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v74, v76, v185);
    v79 = v177;

    *(v70 + 14) = v78;
    *(v70 + 22) = 2080;
    *(v70 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v179, v67, v185);
    *(v70 + 32) = 2080;
    v80 = UUID.uuidString.getter();
    v82 = v81;
    v77(v46, v183);
    v83 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v80, v82, v185);

    *(v70 + 34) = v83;
    *(v70 + 42) = 2080;
    v84 = v183;
    v85 = v176;
    outlined init with copy of UUID?();
    if (__swift_getEnumTagSinglePayload(v85, 1, v84) == 1)
    {
      outlined destroy of (CamLogOutput, CamModelMetadata)(v85, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v86 = 0;
      v87 = 0xE000000000000000;
    }

    else
    {
      v86 = UUID.uuidString.getter();
      v87 = v130;
      v77(v85, v84);
    }

    outlined destroy of (CamLogOutput, CamModelMetadata)(v79, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v131 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v86, v87, v185);

    *(v70 + 44) = v131;
    _os_log_impl(&dword_266790000, v68, v181, "Mapping function to create:  %s  failed for caarId : %s, rcId: %s, requestId: %s, trpId: %s", v70, 0x34u);
    v132 = v180;
    swift_arrayDestroy();
    MEMORY[0x26D5DDCD0](v132, -1, -1);
    MEMORY[0x26D5DDCD0](v70, -1, -1);
    goto LABEL_43;
  }

  v50 = v49;
  [v49 setExists_];
  v175 = v50;
  v51 = static CaarRequestLogger.wrapIntoLogEvent(message:)(v50);
  if (!v51)
  {
    if (one-time initialization token for common != -1)
    {
      swift_once();
    }

    v88 = type metadata accessor for Logger();
    __swift_project_value_buffer(v88, static Logger.common);
    v89 = v183;
    (*(v28 + 2))(v43, v180, v183);
    v90 = v176;
    outlined init with copy of UUID?();
    v91 = v182;

    v68 = Logger.logObject.getter();
    v92 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v68, v92))
    {

      outlined destroy of (CamLogOutput, CamModelMetadata)(v90, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      (*(v28 + 1))(v43, v89);
      return;
    }

    v93 = swift_slowAlloc();
    v181 = swift_slowAlloc();
    v185[0] = v181;
    *v93 = 136315906;
    v184 = type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for CAARSchemaCAARRequestReceived, 0x277D56BC8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo29CAARSchemaCAARRequestReceivedCmMd, &_sSo29CAARSchemaCAARRequestReceivedCmMR);
    v94 = String.init<A>(describing:)();
    v96 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v94, v95, v185);

    *(v93 + 4) = v96;
    *(v93 + 12) = 2080;
    v97 = UUID.uuidString.getter();
    v99 = v98;
    v100 = *(v28 + 1);
    v100(v43, v183);
    v101 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v97, v99, v185);
    v102 = v183;

    *(v93 + 14) = v101;
    *(v93 + 22) = 2080;
    *(v93 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v179, v91, v185);
    *(v93 + 32) = 2080;
    v103 = v176;
    v104 = v169;
    outlined init with copy of UUID?();
    if (__swift_getEnumTagSinglePayload(v104, 1, v102) == 1)
    {
      outlined destroy of (CamLogOutput, CamModelMetadata)(v104, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v105 = 0;
      v106 = 0xE000000000000000;
    }

    else
    {
      v158 = UUID.uuidString.getter();
      v159 = v102;
      v105 = v158;
      v106 = v160;
      v100(v104, v159);
    }

    outlined destroy of (CamLogOutput, CamModelMetadata)(v103, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v161 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v105, v106, v185);

    *(v93 + 34) = v161;
    _os_log_impl(&dword_266790000, v68, v92, "Couldn't create log event with destination message : %s  for caarId : %s, rcId: %s, trpId: %s", v93, 0x2Au);
    v162 = v181;
    swift_arrayDestroy();
    MEMORY[0x26D5DDCD0](v162, -1, -1);
    MEMORY[0x26D5DDCD0](v93, -1, -1);
    v157 = v175;
LABEL_42:

LABEL_43:
    return;
  }

  v52 = v51;
  v53 = [objc_allocWithZone(MEMORY[0x277D56B58]) init];
  v54 = v28;
  if (v53)
  {
    v55 = v53;
    v176 = v52;
    type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for SISchemaUUID, 0x277D5AC70);
    v173 = v28;
    v56 = *(v28 + 2);
    v57 = v183;
    v56(v40, v180, v183);
    v58 = SISchemaUUID.__allocating_init(nsuuid:)(v40);
    [v55 setCaarId_];

    v59 = MEMORY[0x26D5DCC90](v179, v182);
    [v55 setResultCandidateId_];

    [v55 setRequestId_];
    if (AFDeviceSupportsSAE())
    {
      v56(v40, v178, v57);
      v60 = SISchemaUUID.__allocating_init(nsuuid:)(v40);
      [v55 setSubRequestId_];
    }

    outlined init with copy of UUID?();
    if (__swift_getEnumTagSinglePayload(v21, 1, v57) == 1)
    {
      outlined destroy of (CamLogOutput, CamModelMetadata)(v21, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v61 = v170;
      UUID.init(uuidString:)();
      if (__swift_getEnumTagSinglePayload(v61, 1, v57) == 1)
      {
        outlined destroy of (CamLogOutput, CamModelMetadata)(v61, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
LABEL_32:
        v134 = v177;
        v135 = v174;
        v136 = v176;
        [v176 setEventMetadata_];
        [objc_msgSend(objc_opt_self() sharedStream)];
        swift_unknownObjectRelease();
        if (one-time initialization token for common != -1)
        {
          swift_once();
        }

        v137 = type metadata accessor for Logger();
        __swift_project_value_buffer(v137, static Logger.common);
        v56(v135, v180, v57);
        outlined init with copy of UUID?();
        v138 = v182;

        v68 = Logger.logObject.getter();
        v139 = static os_log_type_t.debug.getter();

        if (!os_log_type_enabled(v68, v139))
        {

          outlined destroy of (CamLogOutput, CamModelMetadata)(v134, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          v173[1](v135, v57);
          return;
        }

        LODWORD(v183) = v139;
        v140 = swift_slowAlloc();
        v141 = v57;
        v181 = swift_slowAlloc();
        v185[0] = v181;
        *v140 = 136315906;
        v184 = type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for CAARSchemaCAARRequestReceived, 0x277D56BC8);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo29CAARSchemaCAARRequestReceivedCmMd, &_sSo29CAARSchemaCAARRequestReceivedCmMR);
        v142 = String.init<A>(describing:)();
        v144 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v142, v143, v185);

        *(v140 + 4) = v144;
        *(v140 + 12) = 2080;
        v145 = UUID.uuidString.getter();
        v147 = v146;
        v148 = v173[1];
        v148(v135, v57);
        v149 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v145, v147, v185);

        *(v140 + 14) = v149;
        *(v140 + 22) = 2080;
        *(v140 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v179, v138, v185);
        *(v140 + 32) = 2080;
        v150 = v177;
        v151 = v171;
        outlined init with copy of UUID?();
        if (__swift_getEnumTagSinglePayload(v151, 1, v141) == 1)
        {
          outlined destroy of (CamLogOutput, CamModelMetadata)(v151, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          v152 = 0;
          v153 = 0xE000000000000000;
        }

        else
        {
          v152 = UUID.uuidString.getter();
          v153 = v154;
          v148(v151, v141);
        }

        outlined destroy of (CamLogOutput, CamModelMetadata)(v150, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        v155 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v152, v153, v185);

        *(v140 + 34) = v155;
        _os_log_impl(&dword_266790000, v68, v183, "Successfully emitted log message : %s for caarId : %s, rcId: %s, retrpId: %s", v140, 0x2Au);
        v156 = v181;
        swift_arrayDestroy();
        MEMORY[0x26D5DDCD0](v156, -1, -1);
        MEMORY[0x26D5DDCD0](v140, -1, -1);

        v157 = v176;
        goto LABEL_42;
      }

      v128 = v173;
      v35 = v167;
      (v173[4])(v167, v61, v57);
      v56(v40, v35, v57);
      v133 = SISchemaUUID.__allocating_init(nsuuid:)(v40);
      [v55 setTrpId_];
    }

    else
    {
      v128 = v173;
      (v173[4])(v35, v21, v57);
      v56(v40, v35, v57);
      v129 = SISchemaUUID.__allocating_init(nsuuid:)(v40);
      [v55 setTrpId_];
    }

    v128[1](v35, v57);
    goto LABEL_32;
  }

  if (one-time initialization token for common != -1)
  {
    swift_once();
  }

  v108 = type metadata accessor for Logger();
  __swift_project_value_buffer(v108, static Logger.common);
  v109 = v172;
  v110 = v183;
  (*(v28 + 2))(v172, v180, v183);
  v111 = v173;
  outlined init with copy of UUID?();
  v112 = v182;

  v113 = Logger.logObject.getter();
  v114 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v113, v114))
  {
    LODWORD(v181) = v114;
    v176 = v52;
    v115 = swift_slowAlloc();
    v180 = swift_slowAlloc();
    v185[0] = v180;
    *v115 = 136315906;
    v184 = type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for CAARSchemaCAARRequestReceived, 0x277D56BC8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo29CAARSchemaCAARRequestReceivedCmMd, &_sSo29CAARSchemaCAARRequestReceivedCmMR);
    v116 = String.init<A>(describing:)();
    v118 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v116, v117, v185);

    *(v115 + 4) = v118;
    *(v115 + 12) = 2080;
    v119 = UUID.uuidString.getter();
    v121 = v120;
    v122 = *(v54 + 1);
    v122(v109, v110);
    v123 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v119, v121, v185);

    *(v115 + 14) = v123;
    *(v115 + 22) = 2080;
    *(v115 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v179, v112, v185);
    *(v115 + 32) = 2080;
    v124 = v173;
    v125 = v168;
    outlined init with copy of UUID?();
    if (__swift_getEnumTagSinglePayload(v125, 1, v110) == 1)
    {
      outlined destroy of (CamLogOutput, CamModelMetadata)(v125, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v126 = 0;
      v127 = 0xE000000000000000;
    }

    else
    {
      v126 = UUID.uuidString.getter();
      v127 = v163;
      v122(v125, v110);
    }

    v164 = v176;
    outlined destroy of (CamLogOutput, CamModelMetadata)(v124, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v165 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v126, v127, v185);

    *(v115 + 34) = v165;
    _os_log_impl(&dword_266790000, v113, v181, "Failed to create metadata for log event : %s, caarId : %s, rcId: %s, trpId: %s", v115, 0x2Au);
    v166 = v180;
    swift_arrayDestroy();
    MEMORY[0x26D5DDCD0](v166, -1, -1);
    MEMORY[0x26D5DDCD0](v115, -1, -1);
  }

  else
  {

    outlined destroy of (CamLogOutput, CamModelMetadata)(v111, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    (*(v54 + 1))(v109, v110);
  }
}

void _s7SiriCam19CaarLoggingProtocolPAAE3log4from03forC2Id0h2RcI00h7RequestI00h3TrpI0y13SourceMessageQz_10Foundation4UUIDVSSA2NSgtFZAA0C11ErrorLoggerV_Tt4B5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v184 = a6;
  v185 = a4;
  v182 = a3;
  v183 = a2;
  v180 = a5;
  v181 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v170 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v172 = &v170 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v171 = &v170 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v174 = &v170 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v179 = &v170 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v173 = &v170 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v170 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v176 = (&v170 - v24);
  v25 = MEMORY[0x28223BE20](v23);
  v178 = &v170 - v26;
  MEMORY[0x28223BE20](v25);
  v28 = &v170 - v27;
  v186 = type metadata accessor for UUID();
  v29 = *(v186 - 8);
  v30 = MEMORY[0x28223BE20](v186);
  v177 = &v170 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v170 = &v170 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v36 = &v170 - v35;
  v37 = MEMORY[0x28223BE20](v34);
  v175 = &v170 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v41 = &v170 - v40;
  v42 = MEMORY[0x28223BE20](v39);
  v44 = &v170 - v43;
  v45 = MEMORY[0x28223BE20](v42);
  v47 = &v170 - v46;
  MEMORY[0x28223BE20](v45);
  v49 = &v170 - v48;
  v50 = [objc_allocWithZone(MEMORY[0x277D56BB8]) init];
  if (!v50)
  {
    v181 = v28;
    v179 = v9;
    if (one-time initialization token for common != -1)
    {
      swift_once();
    }

    v63 = type metadata accessor for Logger();
    __swift_project_value_buffer(v63, static Logger.common);
    v64 = v29;
    v65 = *(v29 + 2);
    v66 = v186;
    v65(v49, v183, v186);
    v65(v47, v180, v66);
    v67 = v181;
    outlined init with copy of UUID?();
    v68 = v185;

    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v69, v70))
    {

      outlined destroy of (CamLogOutput, CamModelMetadata)(v67, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v108 = *(v64 + 1);
      v108(v47, v66);
      v108(v49, v66);
      return;
    }

    LODWORD(v184) = v70;
    v71 = swift_slowAlloc();
    v183 = swift_slowAlloc();
    v188[0] = v183;
    *v71 = 136316162;
    v187 = type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for CAARSchemaCAARRequestFailed, 0x277D56BB8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo27CAARSchemaCAARRequestFailedCmMd, &_sSo27CAARSchemaCAARRequestFailedCmMR);
    v72 = String.init<A>(describing:)();
    v74 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v72, v73, v188);

    *(v71 + 4) = v74;
    *(v71 + 12) = 2080;
    v75 = UUID.uuidString.getter();
    v77 = v76;
    v78 = *(v64 + 1);
    v78(v49, v186);
    v79 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v75, v77, v188);
    v80 = v181;

    *(v71 + 14) = v79;
    *(v71 + 22) = 2080;
    *(v71 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v182, v68, v188);
    *(v71 + 32) = 2080;
    v81 = UUID.uuidString.getter();
    v83 = v82;
    v78(v47, v186);
    v84 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v81, v83, v188);

    *(v71 + 34) = v84;
    *(v71 + 42) = 2080;
    v85 = v186;
    v86 = v179;
    outlined init with copy of UUID?();
    if (__swift_getEnumTagSinglePayload(v86, 1, v85) == 1)
    {
      outlined destroy of (CamLogOutput, CamModelMetadata)(v86, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v87 = 0;
      v88 = 0xE000000000000000;
    }

    else
    {
      v87 = UUID.uuidString.getter();
      v88 = v132;
      v78(v86, v85);
    }

    outlined destroy of (CamLogOutput, CamModelMetadata)(v80, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v133 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v87, v88, v188);

    *(v71 + 44) = v133;
    _os_log_impl(&dword_266790000, v69, v184, "Mapping function to create:  %s  failed for caarId : %s, rcId: %s, requestId: %s, trpId: %s", v71, 0x34u);
    v134 = v183;
    swift_arrayDestroy();
    MEMORY[0x26D5DDCD0](v134, -1, -1);
    MEMORY[0x26D5DDCD0](v71, -1, -1);
    goto LABEL_43;
  }

  v51 = v50;
  [v50 setErrorCode_];
  v181 = v51;
  v52 = static CaarErrorLogger.wrapIntoLogEvent(message:)(v51);
  if (!v52)
  {
    if (one-time initialization token for common != -1)
    {
      swift_once();
    }

    v89 = type metadata accessor for Logger();
    __swift_project_value_buffer(v89, static Logger.common);
    v90 = v186;
    (*(v29 + 2))(v44, v183, v186);
    v91 = v178;
    outlined init with copy of UUID?();
    v92 = v185;

    v69 = Logger.logObject.getter();
    v93 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v69, v93))
    {

      outlined destroy of (CamLogOutput, CamModelMetadata)(v91, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      (*(v29 + 1))(v44, v90);
      return;
    }

    v94 = swift_slowAlloc();
    v184 = swift_slowAlloc();
    v188[0] = v184;
    *v94 = 136315906;
    v187 = type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for CAARSchemaCAARRequestFailed, 0x277D56BB8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo27CAARSchemaCAARRequestFailedCmMd, &_sSo27CAARSchemaCAARRequestFailedCmMR);
    v95 = String.init<A>(describing:)();
    v97 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v95, v96, v188);

    *(v94 + 4) = v97;
    *(v94 + 12) = 2080;
    v98 = UUID.uuidString.getter();
    v100 = v99;
    v101 = *(v29 + 1);
    v101(v44, v186);
    v102 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v98, v100, v188);
    v103 = v186;

    *(v94 + 14) = v102;
    *(v94 + 22) = 2080;
    *(v94 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v182, v92, v188);
    *(v94 + 32) = 2080;
    v104 = v178;
    v105 = v172;
    outlined init with copy of UUID?();
    if (__swift_getEnumTagSinglePayload(v105, 1, v103) == 1)
    {
      outlined destroy of (CamLogOutput, CamModelMetadata)(v105, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v106 = 0;
      v107 = 0xE000000000000000;
    }

    else
    {
      v161 = UUID.uuidString.getter();
      v162 = v103;
      v106 = v161;
      v107 = v163;
      v101(v105, v162);
    }

    outlined destroy of (CamLogOutput, CamModelMetadata)(v104, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v164 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v106, v107, v188);

    *(v94 + 34) = v164;
    _os_log_impl(&dword_266790000, v69, v93, "Couldn't create log event with destination message : %s  for caarId : %s, rcId: %s, trpId: %s", v94, 0x2Au);
    v165 = v184;
    swift_arrayDestroy();
    MEMORY[0x26D5DDCD0](v165, -1, -1);
    MEMORY[0x26D5DDCD0](v94, -1, -1);
    v160 = v181;
LABEL_42:

LABEL_43:
    return;
  }

  v53 = v52;
  v54 = [objc_allocWithZone(MEMORY[0x277D56B58]) init];
  v55 = v29;
  if (v54)
  {
    v56 = v54;
    v178 = v53;
    type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for SISchemaUUID, 0x277D5AC70);
    v176 = v29;
    v57 = *(v29 + 2);
    v58 = v186;
    v57(v41, v183, v186);
    v59 = SISchemaUUID.__allocating_init(nsuuid:)(v41);
    [v56 setCaarId_];

    v60 = MEMORY[0x26D5DCC90](v182, v185);
    [v56 setResultCandidateId_];

    [v56 setRequestId_];
    if (AFDeviceSupportsSAE())
    {
      v57(v41, v180, v58);
      v61 = SISchemaUUID.__allocating_init(nsuuid:)(v41);
      [v56 setSubRequestId_];
    }

    outlined init with copy of UUID?();
    if (__swift_getEnumTagSinglePayload(v22, 1, v58) == 1)
    {
      outlined destroy of (CamLogOutput, CamModelMetadata)(v22, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v62 = v173;
      UUID.init(uuidString:)();
      if (__swift_getEnumTagSinglePayload(v62, 1, v58) == 1)
      {
        outlined destroy of (CamLogOutput, CamModelMetadata)(v62, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
LABEL_32:
        v137 = v179;
        v138 = v177;
        v139 = v178;
        [v178 setEventMetadata_];
        [objc_msgSend(objc_opt_self() sharedStream)];
        swift_unknownObjectRelease();
        if (one-time initialization token for common != -1)
        {
          swift_once();
        }

        v140 = type metadata accessor for Logger();
        __swift_project_value_buffer(v140, static Logger.common);
        v57(v138, v183, v58);
        outlined init with copy of UUID?();
        v141 = v185;

        v69 = Logger.logObject.getter();
        v142 = static os_log_type_t.debug.getter();

        if (!os_log_type_enabled(v69, v142))
        {

          outlined destroy of (CamLogOutput, CamModelMetadata)(v137, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          v176[1](v138, v58);
          return;
        }

        LODWORD(v186) = v142;
        v143 = swift_slowAlloc();
        v144 = v58;
        v184 = swift_slowAlloc();
        v188[0] = v184;
        *v143 = 136315906;
        v187 = type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for CAARSchemaCAARRequestFailed, 0x277D56BB8);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo27CAARSchemaCAARRequestFailedCmMd, &_sSo27CAARSchemaCAARRequestFailedCmMR);
        v145 = String.init<A>(describing:)();
        v147 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v145, v146, v188);

        *(v143 + 4) = v147;
        *(v143 + 12) = 2080;
        v148 = UUID.uuidString.getter();
        v150 = v149;
        v151 = v176[1];
        v151(v138, v58);
        v152 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v148, v150, v188);

        *(v143 + 14) = v152;
        *(v143 + 22) = 2080;
        *(v143 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v182, v141, v188);
        *(v143 + 32) = 2080;
        v153 = v179;
        v154 = v174;
        outlined init with copy of UUID?();
        if (__swift_getEnumTagSinglePayload(v154, 1, v144) == 1)
        {
          outlined destroy of (CamLogOutput, CamModelMetadata)(v154, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          v155 = 0;
          v156 = 0xE000000000000000;
        }

        else
        {
          v155 = UUID.uuidString.getter();
          v156 = v157;
          v151(v154, v144);
        }

        outlined destroy of (CamLogOutput, CamModelMetadata)(v153, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        v158 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v155, v156, v188);

        *(v143 + 34) = v158;
        _os_log_impl(&dword_266790000, v69, v186, "Successfully emitted log message : %s for caarId : %s, rcId: %s, retrpId: %s", v143, 0x2Au);
        v159 = v184;
        swift_arrayDestroy();
        MEMORY[0x26D5DDCD0](v159, -1, -1);
        MEMORY[0x26D5DDCD0](v143, -1, -1);

        v160 = v178;
        goto LABEL_42;
      }

      v135 = v176;
      v36 = v170;
      (v176[4])(v170, v62, v58);
      v57(v41, v36, v58);
      v136 = SISchemaUUID.__allocating_init(nsuuid:)(v41);
      [v56 setTrpId_];

      v131 = v135;
    }

    else
    {
      v129 = v176;
      (v176[4])(v36, v22, v58);
      v57(v41, v36, v58);
      v130 = SISchemaUUID.__allocating_init(nsuuid:)(v41);
      [v56 setTrpId_];

      v131 = v129;
    }

    v131[1](v36, v58);
    goto LABEL_32;
  }

  if (one-time initialization token for common != -1)
  {
    swift_once();
  }

  v109 = type metadata accessor for Logger();
  __swift_project_value_buffer(v109, static Logger.common);
  v110 = v175;
  v111 = v186;
  (*(v29 + 2))(v175, v183, v186);
  v112 = v176;
  outlined init with copy of UUID?();
  v113 = v185;

  v114 = Logger.logObject.getter();
  v115 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v114, v115))
  {
    LODWORD(v184) = v115;
    v178 = v53;
    v116 = swift_slowAlloc();
    v183 = swift_slowAlloc();
    v188[0] = v183;
    *v116 = 136315906;
    v187 = type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for CAARSchemaCAARRequestFailed, 0x277D56BB8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo27CAARSchemaCAARRequestFailedCmMd, &_sSo27CAARSchemaCAARRequestFailedCmMR);
    v117 = String.init<A>(describing:)();
    v119 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v117, v118, v188);

    *(v116 + 4) = v119;
    *(v116 + 12) = 2080;
    v120 = UUID.uuidString.getter();
    v122 = v121;
    v123 = *(v55 + 1);
    v123(v110, v111);
    v124 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v120, v122, v188);

    *(v116 + 14) = v124;
    *(v116 + 22) = 2080;
    *(v116 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v182, v113, v188);
    *(v116 + 32) = 2080;
    v125 = v176;
    v126 = v171;
    outlined init with copy of UUID?();
    if (__swift_getEnumTagSinglePayload(v126, 1, v111) == 1)
    {
      outlined destroy of (CamLogOutput, CamModelMetadata)(v126, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v127 = 0;
      v128 = 0xE000000000000000;
    }

    else
    {
      v127 = UUID.uuidString.getter();
      v128 = v166;
      v123(v126, v111);
    }

    v167 = v178;
    outlined destroy of (CamLogOutput, CamModelMetadata)(v125, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v168 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v127, v128, v188);

    *(v116 + 34) = v168;
    _os_log_impl(&dword_266790000, v114, v184, "Failed to create metadata for log event : %s, caarId : %s, rcId: %s, trpId: %s", v116, 0x2Au);
    v169 = v183;
    swift_arrayDestroy();
    MEMORY[0x26D5DDCD0](v169, -1, -1);
    MEMORY[0x26D5DDCD0](v116, -1, -1);
  }

  else
  {

    outlined destroy of (CamLogOutput, CamModelMetadata)(v112, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    (*(v55 + 1))(v110, v111);
  }
}

void _s7SiriCam19CaarLoggingProtocolPAAE3log4from03forC2Id0h2RcI00h7RequestI00h3TrpI0y13SourceMessageQz_10Foundation4UUIDVSSA2NSgtFZAA0C13FeatureLoggerV_Tt4g5(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t), uint64_t a5, uint64_t a6)
{
  v187 = a3;
  v188 = a6;
  v186 = a5;
  v191 = a4;
  v189 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v171 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v176 = &v171 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v175 = &v171 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v178 = &v171 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v185 = &v171 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v181 = &v171 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v171 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v180 = &v171 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v184 = &v171 - v27;
  MEMORY[0x28223BE20](v26);
  v29 = &v171 - v28;
  v190 = type metadata accessor for UUID();
  v30 = *(v190 - 8);
  v31 = MEMORY[0x28223BE20](v190);
  v182 = &v171 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v174 = &v171 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v177 = &v171 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v179 = &v171 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v41 = &v171 - v40;
  v42 = MEMORY[0x28223BE20](v39);
  v44 = &v171 - v43;
  v45 = MEMORY[0x28223BE20](v42);
  v47 = &v171 - v46;
  MEMORY[0x28223BE20](v45);
  v49 = &v171 - v48;
  v50 = static CaarFeatureLogger.map(from:)(a1);
  if (!v50)
  {
    v185 = v10;
    if (one-time initialization token for common != -1)
    {
      swift_once();
    }

    v67 = type metadata accessor for Logger();
    __swift_project_value_buffer(v67, static Logger.common);
    v68 = *(v30 + 16);
    v69 = v190;
    v68(v49, v189, v190);
    v68(v47, v186, v69);
    v70 = v29;
    outlined init with copy of UUID?();

    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v71, v72))
    {

      outlined destroy of (CamLogOutput, CamModelMetadata)(v29, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v108 = *(v30 + 8);
      v108(v47, v69);
      v108(v49, v69);
      return;
    }

    LODWORD(v189) = v72;
    v73 = swift_slowAlloc();
    v188 = swift_slowAlloc();
    v193[0] = v188;
    *v73 = 136316162;
    v192 = type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for CAARSchemaCAARFeaturesGenerated, 0x277D56B68);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo31CAARSchemaCAARFeaturesGeneratedCmMd, &_sSo31CAARSchemaCAARFeaturesGeneratedCmMR);
    v74 = String.init<A>(describing:)();
    v76 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v74, v75, v193);

    *(v73 + 4) = v76;
    *(v73 + 12) = 2080;
    v77 = UUID.uuidString.getter();
    v79 = v78;
    v80 = *(v30 + 8);
    v80(v49, v190);
    v81 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v77, v79, v193);
    v82 = v190;

    *(v73 + 14) = v81;
    *(v73 + 22) = 2080;
    *(v73 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v187, v191, v193);
    *(v73 + 32) = 2080;
    v83 = UUID.uuidString.getter();
    v85 = v84;
    v80(v47, v82);
    v86 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v83, v85, v193);

    *(v73 + 34) = v86;
    *(v73 + 42) = 2080;
    v87 = v185;
    outlined init with copy of UUID?();
    if (__swift_getEnumTagSinglePayload(v87, 1, v82) == 1)
    {
      outlined destroy of (CamLogOutput, CamModelMetadata)(v87, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v88 = 0;
      v89 = 0xE000000000000000;
    }

    else
    {
      v88 = UUID.uuidString.getter();
      v89 = v131;
      v80(v87, v82);
    }

    outlined destroy of (CamLogOutput, CamModelMetadata)(v70, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v132 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v88, v89, v193);

    *(v73 + 44) = v132;
    _os_log_impl(&dword_266790000, v71, v189, "Mapping function to create:  %s  failed for caarId : %s, rcId: %s, requestId: %s, trpId: %s", v73, 0x34u);
    v133 = v188;
    swift_arrayDestroy();
    MEMORY[0x26D5DDCD0](v133, -1, -1);
    MEMORY[0x26D5DDCD0](v73, -1, -1);
    goto LABEL_42;
  }

  v51 = v50;
  v52 = [objc_allocWithZone(MEMORY[0x277D56B48]) init];
  [v52 setFeaturesGenerated_];
  v53 = v51;
  v183 = v52;
  if (!v52)
  {
    if (one-time initialization token for common != -1)
    {
      swift_once();
    }

    v90 = type metadata accessor for Logger();
    __swift_project_value_buffer(v90, static Logger.common);
    v91 = v190;
    (*(v30 + 16))(v44, v189, v190);
    v92 = v184;
    outlined init with copy of UUID?();
    v93 = v191;

    v71 = Logger.logObject.getter();
    v94 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v71, v94))
    {

      outlined destroy of (CamLogOutput, CamModelMetadata)(v92, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      (*(v30 + 8))(v44, v91);
      return;
    }

    LODWORD(v189) = v94;
    v173 = v53;
    v95 = swift_slowAlloc();
    v188 = swift_slowAlloc();
    v193[0] = v188;
    *v95 = 136315906;
    v192 = type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for CAARSchemaCAARFeaturesGenerated, 0x277D56B68);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo31CAARSchemaCAARFeaturesGeneratedCmMd, &_sSo31CAARSchemaCAARFeaturesGeneratedCmMR);
    v96 = String.init<A>(describing:)();
    v98 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v96, v97, v193);

    *(v95 + 4) = v98;
    *(v95 + 12) = 2080;
    v99 = UUID.uuidString.getter();
    v101 = v100;
    v102 = *(v30 + 8);
    v102(v44, v190);
    v103 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v99, v101, v193);

    *(v95 + 14) = v103;
    *(v95 + 22) = 2080;
    *(v95 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v187, v93, v193);
    *(v95 + 32) = 2080;
    v104 = v190;
    v105 = v176;
    outlined init with copy of UUID?();
    if (__swift_getEnumTagSinglePayload(v105, 1, v104) == 1)
    {
      outlined destroy of (CamLogOutput, CamModelMetadata)(v105, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v106 = 0;
      v107 = 0xE000000000000000;
    }

    else
    {
      v106 = UUID.uuidString.getter();
      v107 = v164;
      v102(v105, v104);
    }

    outlined destroy of (CamLogOutput, CamModelMetadata)(v184, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v165 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v106, v107, v193);

    *(v95 + 34) = v165;
    _os_log_impl(&dword_266790000, v71, v189, "Couldn't create log event with destination message : %s  for caarId : %s, rcId: %s, trpId: %s", v95, 0x2Au);
    v166 = v188;
    swift_arrayDestroy();
    MEMORY[0x26D5DDCD0](v166, -1, -1);
    MEMORY[0x26D5DDCD0](v95, -1, -1);
    v163 = v173;
LABEL_41:

LABEL_42:
    return;
  }

  v54 = [objc_allocWithZone(MEMORY[0x277D56B58]) init];
  if (v54)
  {
    v55 = v54;
    v173 = v51;
    type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for SISchemaUUID, 0x277D5AC70);
    v56 = v30;
    v57 = *(v30 + 16);
    v58 = v190;
    v57(v41, v189, v190);
    v59 = SISchemaUUID.__allocating_init(nsuuid:)(v41);
    [v55 setCaarId_];

    v60 = MEMORY[0x26D5DCC90](v187, v191);
    [v55 setResultCandidateId_];

    [v55 setRequestId_];
    if (AFDeviceSupportsSAE())
    {
      v57(v41, v186, v58);
      v61 = SISchemaUUID.__allocating_init(nsuuid:)(v41);
      [v55 setSubRequestId_];
    }

    outlined init with copy of UUID?();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v23, 1, v58);
    v63 = v181;
    v172 = v56;
    if (EnumTagSinglePayload == 1)
    {
      outlined destroy of (CamLogOutput, CamModelMetadata)(v23, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      UUID.init(uuidString:)();
      v64 = __swift_getEnumTagSinglePayload(v63, 1, v58);
      v65 = v63;
      v66 = v58;
      if (v64 == 1)
      {
        outlined destroy of (CamLogOutput, CamModelMetadata)(v65, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      }

      else
      {
        v134 = v174;
        (*(v56 + 32))(v174, v65, v66);
        v57(v41, v134, v66);
        v135 = SISchemaUUID.__allocating_init(nsuuid:)(v41);
        [v55 setTrpId_];

        (*(v56 + 8))(v134, v66);
      }
    }

    else
    {
      v128 = v177;
      (*(v56 + 32))(v177, v23, v58);
      v57(v41, v128, v58);
      v129 = v56;
      v130 = SISchemaUUID.__allocating_init(nsuuid:)(v41);
      [v55 setTrpId_];

      (*(v129 + 8))(v128, v58);
      v66 = v58;
    }

    v137 = v182;
    v136 = v183;
    [v183 setEventMetadata_];
    [objc_msgSend(objc_opt_self() sharedStream)];
    swift_unknownObjectRelease();
    if (one-time initialization token for common != -1)
    {
      swift_once();
    }

    v138 = type metadata accessor for Logger();
    __swift_project_value_buffer(v138, static Logger.common);
    v57(v137, v189, v66);
    v139 = v185;
    outlined init with copy of UUID?();

    v71 = Logger.logObject.getter();
    v140 = static os_log_type_t.debug.getter();

    if (!os_log_type_enabled(v71, v140))
    {

      outlined destroy of (CamLogOutput, CamModelMetadata)(v139, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      (*(v172 + 8))(v137, v66);
      return;
    }

    LODWORD(v190) = v140;
    v141 = swift_slowAlloc();
    v142 = swift_slowAlloc();
    v193[0] = v142;
    *v141 = 136315906;
    v192 = type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for CAARSchemaCAARFeaturesGenerated, 0x277D56B68);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo31CAARSchemaCAARFeaturesGeneratedCmMd, &_sSo31CAARSchemaCAARFeaturesGeneratedCmMR);
    v143 = String.init<A>(describing:)();
    v145 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v143, v144, v193);

    *(v141 + 4) = v145;
    *(v141 + 12) = 2080;
    v146 = UUID.uuidString.getter();
    v148 = v147;
    v149 = v137;
    v150 = v66;
    v151 = *(v172 + 8);
    v151(v149, v150);
    v152 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v146, v148, v193);

    *(v141 + 14) = v152;
    *(v141 + 22) = 2080;
    *(v141 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v187, v191, v193);
    *(v141 + 32) = 2080;
    v153 = v185;
    v154 = v178;
    outlined init with copy of UUID?();
    if (__swift_getEnumTagSinglePayload(v154, 1, v150) == 1)
    {
      outlined destroy of (CamLogOutput, CamModelMetadata)(v154, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v155 = 0;
      v156 = 0xE000000000000000;
    }

    else
    {
      v191 = v151;
      v157 = v71;
      v158 = v142;
      v159 = v154;
      v155 = UUID.uuidString.getter();
      v156 = v160;
      v161 = v159;
      v142 = v158;
      v71 = v157;
      v191(v161, v150);
    }

    outlined destroy of (CamLogOutput, CamModelMetadata)(v153, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v162 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v155, v156, v193);

    *(v141 + 34) = v162;
    _os_log_impl(&dword_266790000, v71, v190, "Successfully emitted log message : %s for caarId : %s, rcId: %s, retrpId: %s", v141, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x26D5DDCD0](v142, -1, -1);
    MEMORY[0x26D5DDCD0](v141, -1, -1);

    v163 = v183;
    goto LABEL_41;
  }

  if (one-time initialization token for common != -1)
  {
    swift_once();
  }

  v109 = type metadata accessor for Logger();
  __swift_project_value_buffer(v109, static Logger.common);
  v110 = v179;
  v111 = v190;
  (*(v30 + 16))(v179, v189, v190);
  v112 = v180;
  outlined init with copy of UUID?();

  v113 = Logger.logObject.getter();
  v114 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v113, v114))
  {
    v173 = v53;
    v115 = swift_slowAlloc();
    v189 = swift_slowAlloc();
    v193[0] = v189;
    *v115 = 136315906;
    v192 = type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for CAARSchemaCAARFeaturesGenerated, 0x277D56B68);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo31CAARSchemaCAARFeaturesGeneratedCmMd, &_sSo31CAARSchemaCAARFeaturesGeneratedCmMR);
    v116 = String.init<A>(describing:)();
    v118 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v116, v117, v193);

    *(v115 + 4) = v118;
    *(v115 + 12) = 2080;
    v119 = UUID.uuidString.getter();
    v121 = v120;
    v122 = *(v30 + 8);
    v122(v110, v111);
    v123 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v119, v121, v193);

    *(v115 + 14) = v123;
    *(v115 + 22) = 2080;
    *(v115 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v187, v191, v193);
    *(v115 + 32) = 2080;
    v124 = v180;
    v125 = v175;
    outlined init with copy of UUID?();
    if (__swift_getEnumTagSinglePayload(v125, 1, v111) == 1)
    {
      outlined destroy of (CamLogOutput, CamModelMetadata)(v125, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v126 = 0;
      v127 = 0xE000000000000000;
    }

    else
    {
      v126 = UUID.uuidString.getter();
      v127 = v167;
      v122(v125, v111);
    }

    v168 = v173;
    outlined destroy of (CamLogOutput, CamModelMetadata)(v124, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v169 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v126, v127, v193);

    *(v115 + 34) = v169;
    _os_log_impl(&dword_266790000, v113, v114, "Failed to create metadata for log event : %s, caarId : %s, rcId: %s, trpId: %s", v115, 0x2Au);
    v170 = v189;
    swift_arrayDestroy();
    MEMORY[0x26D5DDCD0](v170, -1, -1);
    MEMORY[0x26D5DDCD0](v115, -1, -1);
  }

  else
  {

    outlined destroy of (CamLogOutput, CamModelMetadata)(v112, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    (*(v30 + 8))(v110, v111);
  }
}

void _s7SiriCam19CaarLoggingProtocolPAAE3log4from03forC2Id0h2RcI00h7RequestI00h3TrpI0y13SourceMessageQz_10Foundation4UUIDVSSA2NSgtFZAA0C11ModelLoggerV_Tt4g5(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, NSObject *a6)
{
  v187 = a6;
  v188 = a4;
  v183 = a5;
  v184 = a3;
  v186 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v172 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v174 = &v172 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v173 = &v172 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v176 = &v172 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v182 = &v172 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v175 = &v172 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v172 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v178 = &v172 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v181 = &v172 - v27;
  MEMORY[0x28223BE20](v26);
  v29 = &v172 - v28;
  v189 = type metadata accessor for UUID();
  v185 = *(v189 - 8);
  v30 = MEMORY[0x28223BE20](v189);
  v179 = &v172 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v172 = &v172 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v36 = &v172 - v35;
  v37 = MEMORY[0x28223BE20](v34);
  v177 = &v172 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v41 = &v172 - v40;
  v42 = MEMORY[0x28223BE20](v39);
  v44 = &v172 - v43;
  v45 = MEMORY[0x28223BE20](v42);
  v47 = &v172 - v46;
  MEMORY[0x28223BE20](v45);
  v49 = &v172 - v48;
  v50 = *a1;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay7SiriCam12RankedActionVG_AA0B13ModelMetadataVAA19CAARTrialEnrollmentVtMd, &_sSay7SiriCam12RankedActionVG_AA0B13ModelMetadataVAA19CAARTrialEnrollmentVtMR);
  v52 = *(v51 + 48);
  v53 = (a1 + *(v51 + 64));
  v54 = v53[1];
  v192[0] = *v53;
  v192[1] = v54;
  v55 = v53[3];
  v192[2] = v53[2];
  v192[3] = v55;
  v56 = static CaarModelLogger.map(from:)(v50, a1 + v52, v192);
  if (!v56)
  {
    v181 = v10;
    v182 = v29;
    if (one-time initialization token for common != -1)
    {
      swift_once();
    }

    v69 = type metadata accessor for Logger();
    __swift_project_value_buffer(v69, static Logger.common);
    v70 = v185;
    v71 = *(v185 + 16);
    v72 = v189;
    v71(v49, v186, v189);
    v71(v47, v183, v72);
    v73 = v182;
    outlined init with copy of UUID?();
    v74 = v188;

    v75 = Logger.logObject.getter();
    v76 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v75, v76))
    {

      outlined destroy of (CamLogOutput, CamModelMetadata)(v73, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v114 = *(v70 + 8);
      v114(v47, v72);
      v114(v49, v72);
      return;
    }

    LODWORD(v186) = v76;
    v187 = v75;
    v77 = swift_slowAlloc();
    v183 = swift_slowAlloc();
    v191 = v183;
    *v77 = 136316162;
    v190 = type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for CAARSchemaCAARModelExecuted, 0x277D56B80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo27CAARSchemaCAARModelExecutedCmMd, &_sSo27CAARSchemaCAARModelExecutedCmMR);
    v78 = String.init<A>(describing:)();
    v80 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v78, v79, &v191);

    *(v77 + 4) = v80;
    *(v77 + 12) = 2080;
    v81 = UUID.uuidString.getter();
    v83 = v82;
    v84 = *(v70 + 8);
    v84(v49, v72);
    v85 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v81, v83, &v191);

    *(v77 + 14) = v85;
    *(v77 + 22) = 2080;
    *(v77 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v184, v74, &v191);
    *(v77 + 32) = 2080;
    v86 = UUID.uuidString.getter();
    v88 = v87;
    v84(v47, v72);
    v89 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v86, v88, &v191);

    *(v77 + 34) = v89;
    *(v77 + 42) = 2080;
    v90 = v181;
    v91 = v182;
    outlined init with copy of UUID?();
    if (__swift_getEnumTagSinglePayload(v90, 1, v72) == 1)
    {
      outlined destroy of (CamLogOutput, CamModelMetadata)(v90, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v92 = 0;
      v93 = 0xE000000000000000;
    }

    else
    {
      v92 = UUID.uuidString.getter();
      v93 = v138;
      v84(v90, v72);
    }

    outlined destroy of (CamLogOutput, CamModelMetadata)(v91, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v139 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v92, v93, &v191);

    *(v77 + 44) = v139;
    v99 = v187;
    _os_log_impl(&dword_266790000, v187, v186, "Mapping function to create:  %s  failed for caarId : %s, rcId: %s, requestId: %s, trpId: %s", v77, 0x34u);
    v140 = v183;
    swift_arrayDestroy();
    MEMORY[0x26D5DDCD0](v140, -1, -1);
    MEMORY[0x26D5DDCD0](v77, -1, -1);
    goto LABEL_42;
  }

  v57 = v56;
  v58 = [objc_allocWithZone(MEMORY[0x277D56B48]) init];
  [v58 setModelExecuted_];
  v180 = v57;
  if (!v58)
  {
    if (one-time initialization token for common != -1)
    {
      swift_once();
    }

    v94 = type metadata accessor for Logger();
    __swift_project_value_buffer(v94, static Logger.common);
    v95 = v185;
    v96 = v189;
    (*(v185 + 16))(v44, v186, v189);
    v97 = v181;
    outlined init with copy of UUID?();
    v98 = v188;

    v99 = Logger.logObject.getter();
    v100 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v99, v100))
    {

      outlined destroy of (CamLogOutput, CamModelMetadata)(v97, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      (*(v95 + 8))(v44, v96);
      return;
    }

    LODWORD(v187) = v100;
    v101 = swift_slowAlloc();
    v186 = swift_slowAlloc();
    v191 = v186;
    *v101 = 136315906;
    v190 = type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for CAARSchemaCAARModelExecuted, 0x277D56B80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo27CAARSchemaCAARModelExecutedCmMd, &_sSo27CAARSchemaCAARModelExecutedCmMR);
    v102 = String.init<A>(describing:)();
    v104 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v102, v103, &v191);

    *(v101 + 4) = v104;
    *(v101 + 12) = 2080;
    v105 = UUID.uuidString.getter();
    v107 = v106;
    v108 = *(v95 + 8);
    v108(v44, v96);
    v109 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v105, v107, &v191);

    *(v101 + 14) = v109;
    *(v101 + 22) = 2080;
    *(v101 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v184, v98, &v191);
    *(v101 + 32) = 2080;
    v110 = v181;
    v111 = v174;
    outlined init with copy of UUID?();
    if (__swift_getEnumTagSinglePayload(v111, 1, v96) == 1)
    {
      outlined destroy of (CamLogOutput, CamModelMetadata)(v111, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v112 = 0;
      v113 = 0xE000000000000000;
    }

    else
    {
      v112 = UUID.uuidString.getter();
      v113 = v166;
      v108(v111, v96);
    }

    outlined destroy of (CamLogOutput, CamModelMetadata)(v110, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v167 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v112, v113, &v191);

    *(v101 + 34) = v167;
    _os_log_impl(&dword_266790000, v99, v187, "Couldn't create log event with destination message : %s  for caarId : %s, rcId: %s, trpId: %s", v101, 0x2Au);
    v168 = v186;
    swift_arrayDestroy();
    MEMORY[0x26D5DDCD0](v168, -1, -1);
    MEMORY[0x26D5DDCD0](v101, -1, -1);
    v165 = v180;
LABEL_41:

LABEL_42:
    return;
  }

  v59 = [objc_allocWithZone(MEMORY[0x277D56B58]) init];
  if (v59)
  {
    v60 = v59;
    v181 = v58;
    type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for SISchemaUUID, 0x277D5AC70);
    v61 = v185;
    v62 = *(v185 + 16);
    v63 = v189;
    v62(v41, v186, v189);
    v64 = SISchemaUUID.__allocating_init(nsuuid:)(v41);
    [v60 setCaarId_];

    v65 = MEMORY[0x26D5DCC90](v184, v188);
    [v60 setResultCandidateId_];

    [v60 setRequestId_];
    if (AFDeviceSupportsSAE())
    {
      v62(v41, v183, v63);
      v66 = SISchemaUUID.__allocating_init(nsuuid:)(v41);
      [v60 setSubRequestId_];
    }

    outlined init with copy of UUID?();
    if (__swift_getEnumTagSinglePayload(v23, 1, v63) == 1)
    {
      outlined destroy of (CamLogOutput, CamModelMetadata)(v23, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v67 = v175;
      v68 = v188;
      UUID.init(uuidString:)();
      if (__swift_getEnumTagSinglePayload(v67, 1, v63) == 1)
      {
        outlined destroy of (CamLogOutput, CamModelMetadata)(v67, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      }

      else
      {
        v141 = v172;
        (*(v61 + 32))(v172, v67, v63);
        v62(v41, v141, v63);
        v142 = SISchemaUUID.__allocating_init(nsuuid:)(v41);
        [v60 setTrpId_];

        (*(v61 + 8))(v141, v63);
      }
    }

    else
    {
      (*(v61 + 32))(v36, v23, v63);
      v62(v41, v36, v63);
      v137 = SISchemaUUID.__allocating_init(nsuuid:)(v41);
      [v60 setTrpId_];

      (*(v61 + 8))(v36, v63);
      v68 = v188;
    }

    v143 = v181;
    v144 = v182;
    [v181 setEventMetadata_];
    [objc_msgSend(objc_opt_self() sharedStream)];
    swift_unknownObjectRelease();
    v145 = v179;
    if (one-time initialization token for common != -1)
    {
      swift_once();
    }

    v146 = type metadata accessor for Logger();
    __swift_project_value_buffer(v146, static Logger.common);
    v62(v145, v186, v63);
    outlined init with copy of UUID?();

    v99 = Logger.logObject.getter();
    v147 = static os_log_type_t.debug.getter();

    if (!os_log_type_enabled(v99, v147))
    {

      outlined destroy of (CamLogOutput, CamModelMetadata)(v144, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      (*(v61 + 8))(v145, v63);
      return;
    }

    v148 = swift_slowAlloc();
    v188 = swift_slowAlloc();
    v191 = v188;
    *v148 = 136315906;
    v190 = type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for CAARSchemaCAARModelExecuted, 0x277D56B80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo27CAARSchemaCAARModelExecutedCmMd, &_sSo27CAARSchemaCAARModelExecutedCmMR);
    v149 = String.init<A>(describing:)();
    v151 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v149, v150, &v191);

    *(v148 + 4) = v151;
    *(v148 + 12) = 2080;
    v152 = UUID.uuidString.getter();
    v154 = v153;
    v155 = v145;
    v156 = *(v61 + 8);
    v156(v155, v189);
    v157 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v152, v154, &v191);

    *(v148 + 14) = v157;
    *(v148 + 22) = 2080;
    *(v148 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v184, v68, &v191);
    *(v148 + 32) = 2080;
    v158 = v189;
    v159 = v176;
    outlined init with copy of UUID?();
    if (__swift_getEnumTagSinglePayload(v159, 1, v158) == 1)
    {
      outlined destroy of (CamLogOutput, CamModelMetadata)(v159, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v160 = 0;
      v161 = 0xE000000000000000;
    }

    else
    {
      v160 = UUID.uuidString.getter();
      v161 = v162;
      v156(v159, v158);
    }

    outlined destroy of (CamLogOutput, CamModelMetadata)(v182, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v163 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v160, v161, &v191);

    *(v148 + 34) = v163;
    _os_log_impl(&dword_266790000, v99, v147, "Successfully emitted log message : %s for caarId : %s, rcId: %s, retrpId: %s", v148, 0x2Au);
    v164 = v188;
    swift_arrayDestroy();
    MEMORY[0x26D5DDCD0](v164, -1, -1);
    MEMORY[0x26D5DDCD0](v148, -1, -1);

    v165 = v181;
    goto LABEL_41;
  }

  v115 = v185;
  if (one-time initialization token for common != -1)
  {
    swift_once();
  }

  v116 = type metadata accessor for Logger();
  __swift_project_value_buffer(v116, static Logger.common);
  v117 = v177;
  v118 = v189;
  (*(v115 + 16))(v177, v186, v189);
  v119 = v178;
  outlined init with copy of UUID?();
  v120 = v188;

  v121 = Logger.logObject.getter();
  v122 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v121, v122))
  {
    v181 = v58;
    v123 = swift_slowAlloc();
    v187 = swift_slowAlloc();
    v191 = v187;
    *v123 = 136315906;
    v190 = type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for CAARSchemaCAARModelExecuted, 0x277D56B80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo27CAARSchemaCAARModelExecutedCmMd, &_sSo27CAARSchemaCAARModelExecutedCmMR);
    v124 = String.init<A>(describing:)();
    v126 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v124, v125, &v191);

    *(v123 + 4) = v126;
    *(v123 + 12) = 2080;
    v127 = UUID.uuidString.getter();
    v129 = v128;
    v130 = *(v115 + 8);
    v130(v117, v189);
    v131 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v127, v129, &v191);

    *(v123 + 14) = v131;
    *(v123 + 22) = 2080;
    *(v123 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v184, v120, &v191);
    *(v123 + 32) = 2080;
    v132 = v178;
    v133 = v189;
    v134 = v173;
    outlined init with copy of UUID?();
    if (__swift_getEnumTagSinglePayload(v134, 1, v133) == 1)
    {
      outlined destroy of (CamLogOutput, CamModelMetadata)(v134, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v135 = 0;
      v136 = 0xE000000000000000;
    }

    else
    {
      v135 = UUID.uuidString.getter();
      v136 = v169;
      v130(v134, v133);
    }

    outlined destroy of (CamLogOutput, CamModelMetadata)(v132, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v170 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v135, v136, &v191);

    *(v123 + 34) = v170;
    _os_log_impl(&dword_266790000, v121, v122, "Failed to create metadata for log event : %s, caarId : %s, rcId: %s, trpId: %s", v123, 0x2Au);
    v171 = v187;
    swift_arrayDestroy();
    MEMORY[0x26D5DDCD0](v171, -1, -1);
    MEMORY[0x26D5DDCD0](v123, -1, -1);
  }

  else
  {

    outlined destroy of (CamLogOutput, CamModelMetadata)(v119, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    (*(v115 + 8))(v117, v118);
  }
}

void _s7SiriCam19CaarLoggingProtocolPAAE3log4from03forC2Id0h2RcI00h7RequestI00h3TrpI0y13SourceMessageQz_10Foundation4UUIDVSSA2NSgtFZAA0C16TieBreakerLoggerV_Tt4g5(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v183 = a3;
  v184 = a6;
  v181 = a5;
  v182 = a1;
  v185 = a2;
  v186 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v169 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v172 = &v169 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v171 = &v169 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v174 = &v169 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v180 = &v169 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v173 = &v169 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v169 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v177 = &v169 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v179 = &v169 - v26;
  MEMORY[0x28223BE20](v25);
  v28 = &v169 - v27;
  v187 = type metadata accessor for UUID();
  v29 = *(v187 - 8);
  v30 = MEMORY[0x28223BE20](v187);
  v178 = &v169 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v170 = &v169 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v36 = &v169 - v35;
  v37 = MEMORY[0x28223BE20](v34);
  v176 = &v169 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v41 = &v169 - v40;
  v42 = MEMORY[0x28223BE20](v39);
  v44 = &v169 - v43;
  v45 = MEMORY[0x28223BE20](v42);
  v47 = &v169 - v46;
  MEMORY[0x28223BE20](v45);
  v49 = &v169 - v48;
  v50 = [objc_allocWithZone(MEMORY[0x277D56C08]) init];
  if (!v50)
  {
    v175 = v28;
    v182 = v9;
    if (one-time initialization token for common != -1)
    {
      swift_once();
    }

    v65 = type metadata accessor for Logger();
    __swift_project_value_buffer(v65, static Logger.common);
    v66 = *(v29 + 16);
    v67 = v187;
    v66(v49, v185, v187);
    v66(v47, v181, v67);
    v68 = v175;
    outlined init with copy of UUID?();
    v69 = v186;

    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v70, v71))
    {

      outlined destroy of (CamLogOutput, CamModelMetadata)(v68, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v108 = *(v29 + 8);
      v108(v47, v67);
      v108(v49, v67);
      return;
    }

    LODWORD(v185) = v71;
    v72 = swift_slowAlloc();
    v184 = swift_slowAlloc();
    v189[0] = v184;
    *v72 = 136316162;
    v188 = type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for CAARSchemaCAARTieBreakersExecuted, 0x277D56C08);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo33CAARSchemaCAARTieBreakersExecutedCmMd, &_sSo33CAARSchemaCAARTieBreakersExecutedCmMR);
    v73 = String.init<A>(describing:)();
    v75 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v73, v74, v189);

    *(v72 + 4) = v75;
    *(v72 + 12) = 2080;
    v76 = UUID.uuidString.getter();
    v78 = v77;
    v79 = *(v29 + 8);
    v79(v49, v187);
    v80 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v76, v78, v189);

    *(v72 + 14) = v80;
    *(v72 + 22) = 2080;
    *(v72 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v183, v69, v189);
    *(v72 + 32) = 2080;
    v81 = UUID.uuidString.getter();
    v83 = v82;
    v79(v47, v187);
    v84 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v81, v83, v189);

    *(v72 + 34) = v84;
    *(v72 + 42) = 2080;
    v85 = v187;
    v86 = v182;
    outlined init with copy of UUID?();
    if (__swift_getEnumTagSinglePayload(v86, 1, v85) == 1)
    {
      outlined destroy of (CamLogOutput, CamModelMetadata)(v86, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v87 = 0;
      v88 = 0xE000000000000000;
    }

    else
    {
      v87 = UUID.uuidString.getter();
      v88 = v132;
      v79(v86, v85);
    }

    outlined destroy of (CamLogOutput, CamModelMetadata)(v175, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v133 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v87, v88, v189);

    *(v72 + 44) = v133;
    _os_log_impl(&dword_266790000, v70, v185, "Mapping function to create:  %s  failed for caarId : %s, rcId: %s, requestId: %s, trpId: %s", v72, 0x34u);
    v134 = v184;
    swift_arrayDestroy();
    MEMORY[0x26D5DDCD0](v134, -1, -1);
    MEMORY[0x26D5DDCD0](v72, -1, -1);
    goto LABEL_43;
  }

  v51 = v50;
  outlined bridged method (mbgnn) of @objc CAARSchemaCAARTieBreakersExecuted.tiebreakers.setter(v182, v50);
  v52 = [objc_allocWithZone(MEMORY[0x277D56B48]) init];
  v182 = v51;
  [v52 setTieBreakersExecuted_];
  if (!v52)
  {
    if (one-time initialization token for common != -1)
    {
      swift_once();
    }

    v89 = type metadata accessor for Logger();
    __swift_project_value_buffer(v89, static Logger.common);
    v90 = v187;
    (*(v29 + 16))(v44, v185, v187);
    v91 = v179;
    outlined init with copy of UUID?();
    v92 = v186;

    v70 = Logger.logObject.getter();
    v93 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v70, v93))
    {

      outlined destroy of (CamLogOutput, CamModelMetadata)(v91, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      (*(v29 + 8))(v44, v90);
      return;
    }

    v94 = swift_slowAlloc();
    v185 = swift_slowAlloc();
    v189[0] = v185;
    *v94 = 136315906;
    v188 = type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for CAARSchemaCAARTieBreakersExecuted, 0x277D56C08);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo33CAARSchemaCAARTieBreakersExecutedCmMd, &_sSo33CAARSchemaCAARTieBreakersExecutedCmMR);
    v95 = String.init<A>(describing:)();
    v97 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v95, v96, v189);

    *(v94 + 4) = v97;
    *(v94 + 12) = 2080;
    v98 = UUID.uuidString.getter();
    v100 = v99;
    v101 = *(v29 + 8);
    v101(v44, v187);
    v102 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v98, v100, v189);
    v103 = v187;

    *(v94 + 14) = v102;
    *(v94 + 22) = 2080;
    *(v94 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v183, v92, v189);
    *(v94 + 32) = 2080;
    v104 = v179;
    v105 = v172;
    outlined init with copy of UUID?();
    if (__swift_getEnumTagSinglePayload(v105, 1, v103) == 1)
    {
      outlined destroy of (CamLogOutput, CamModelMetadata)(v105, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v106 = 0;
      v107 = 0xE000000000000000;
    }

    else
    {
      v160 = UUID.uuidString.getter();
      v161 = v103;
      v106 = v160;
      v107 = v162;
      v101(v105, v161);
    }

    outlined destroy of (CamLogOutput, CamModelMetadata)(v104, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v163 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v106, v107, v189);

    *(v94 + 34) = v163;
    _os_log_impl(&dword_266790000, v70, v93, "Couldn't create log event with destination message : %s  for caarId : %s, rcId: %s, trpId: %s", v94, 0x2Au);
    v164 = v185;
    swift_arrayDestroy();
    MEMORY[0x26D5DDCD0](v164, -1, -1);
    MEMORY[0x26D5DDCD0](v94, -1, -1);
    v159 = v182;
LABEL_42:

LABEL_43:
    return;
  }

  v53 = [objc_allocWithZone(MEMORY[0x277D56B58]) init];
  if (v53)
  {
    v54 = v53;
    v179 = v52;
    type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for SISchemaUUID, 0x277D5AC70);
    v55 = v29;
    v56 = *(v29 + 16);
    v57 = v187;
    v56(v41, v185, v187);
    v58 = SISchemaUUID.__allocating_init(nsuuid:)(v41);
    [v54 setCaarId_];

    v59 = MEMORY[0x26D5DCC90](v183, v186);
    [v54 setResultCandidateId_];

    [v54 setRequestId_];
    if (AFDeviceSupportsSAE())
    {
      v56(v41, v181, v57);
      v60 = SISchemaUUID.__allocating_init(nsuuid:)(v41);
      [v54 setSubRequestId_];
    }

    outlined init with copy of UUID?();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v22, 1, v57);
    v169 = v55;
    if (EnumTagSinglePayload == 1)
    {
      outlined destroy of (CamLogOutput, CamModelMetadata)(v22, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v62 = v173;
      v63 = v186;
      UUID.init(uuidString:)();
      v64 = v57;
      if (__swift_getEnumTagSinglePayload(v62, 1, v57) == 1)
      {
        outlined destroy of (CamLogOutput, CamModelMetadata)(v62, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      }

      else
      {
        v135 = v170;
        (*(v55 + 32))(v170, v62, v64);
        v56(v41, v135, v64);
        v136 = SISchemaUUID.__allocating_init(nsuuid:)(v41);
        [v54 setTrpId_];

        (*(v55 + 8))(v135, v64);
      }

      v131 = v178;
    }

    else
    {
      (*(v55 + 32))(v36, v22, v57);
      v56(v41, v36, v57);
      v129 = v55;
      v130 = SISchemaUUID.__allocating_init(nsuuid:)(v41);
      [v54 setTrpId_];

      (*(v129 + 8))(v36, v57);
      v64 = v57;
      v63 = v186;
      v131 = v178;
    }

    v137 = v179;
    [v179 setEventMetadata_];
    [objc_msgSend(objc_opt_self() sharedStream)];
    swift_unknownObjectRelease();
    if (one-time initialization token for common != -1)
    {
      swift_once();
    }

    v138 = type metadata accessor for Logger();
    __swift_project_value_buffer(v138, static Logger.common);
    v56(v131, v185, v64);
    v139 = v180;
    outlined init with copy of UUID?();

    v70 = Logger.logObject.getter();
    v140 = static os_log_type_t.debug.getter();

    if (!os_log_type_enabled(v70, v140))
    {

      outlined destroy of (CamLogOutput, CamModelMetadata)(v139, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      (*(v169 + 8))(v131, v64);
      return;
    }

    LODWORD(v186) = v140;
    v141 = swift_slowAlloc();
    v185 = swift_slowAlloc();
    v189[0] = v185;
    *v141 = 136315906;
    v188 = type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for CAARSchemaCAARTieBreakersExecuted, 0x277D56C08);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo33CAARSchemaCAARTieBreakersExecutedCmMd, &_sSo33CAARSchemaCAARTieBreakersExecutedCmMR);
    v142 = String.init<A>(describing:)();
    v144 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v142, v143, v189);

    *(v141 + 4) = v144;
    *(v141 + 12) = 2080;
    v145 = UUID.uuidString.getter();
    v147 = v146;
    v148 = *(v169 + 8);
    v149 = v131;
    v150 = v187;
    v148(v149, v187);
    v151 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v145, v147, v189);

    *(v141 + 14) = v151;
    *(v141 + 22) = 2080;
    *(v141 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v183, v63, v189);
    *(v141 + 32) = 2080;
    v152 = v180;
    v153 = v174;
    outlined init with copy of UUID?();
    if (__swift_getEnumTagSinglePayload(v153, 1, v150) == 1)
    {
      outlined destroy of (CamLogOutput, CamModelMetadata)(v153, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v154 = 0;
      v155 = 0xE000000000000000;
    }

    else
    {
      v154 = UUID.uuidString.getter();
      v155 = v156;
      v148(v153, v150);
    }

    outlined destroy of (CamLogOutput, CamModelMetadata)(v152, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v157 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v154, v155, v189);

    *(v141 + 34) = v157;
    _os_log_impl(&dword_266790000, v70, v186, "Successfully emitted log message : %s for caarId : %s, rcId: %s, retrpId: %s", v141, 0x2Au);
    v158 = v185;
    swift_arrayDestroy();
    MEMORY[0x26D5DDCD0](v158, -1, -1);
    MEMORY[0x26D5DDCD0](v141, -1, -1);

    v159 = v179;
    goto LABEL_42;
  }

  if (one-time initialization token for common != -1)
  {
    swift_once();
  }

  v109 = type metadata accessor for Logger();
  __swift_project_value_buffer(v109, static Logger.common);
  v110 = v176;
  v111 = v187;
  (*(v29 + 16))(v176, v185, v187);
  v112 = v177;
  outlined init with copy of UUID?();
  v113 = v186;

  v114 = Logger.logObject.getter();
  v115 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v114, v115))
  {
    LODWORD(v185) = v115;
    v179 = v52;
    v116 = swift_slowAlloc();
    v184 = swift_slowAlloc();
    v189[0] = v184;
    *v116 = 136315906;
    v188 = type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for CAARSchemaCAARTieBreakersExecuted, 0x277D56C08);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo33CAARSchemaCAARTieBreakersExecutedCmMd, &_sSo33CAARSchemaCAARTieBreakersExecutedCmMR);
    v117 = String.init<A>(describing:)();
    v119 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v117, v118, v189);

    *(v116 + 4) = v119;
    *(v116 + 12) = 2080;
    v120 = UUID.uuidString.getter();
    v122 = v121;
    v123 = *(v29 + 8);
    v123(v110, v111);
    v124 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v120, v122, v189);

    *(v116 + 14) = v124;
    *(v116 + 22) = 2080;
    *(v116 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v183, v113, v189);
    *(v116 + 32) = 2080;
    v125 = v177;
    v126 = v171;
    outlined init with copy of UUID?();
    if (__swift_getEnumTagSinglePayload(v126, 1, v111) == 1)
    {
      outlined destroy of (CamLogOutput, CamModelMetadata)(v126, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v127 = 0;
      v128 = 0xE000000000000000;
    }

    else
    {
      v127 = UUID.uuidString.getter();
      v128 = v165;
      v123(v126, v111);
    }

    v166 = v179;
    outlined destroy of (CamLogOutput, CamModelMetadata)(v125, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v167 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v127, v128, v189);

    *(v116 + 34) = v167;
    _os_log_impl(&dword_266790000, v114, v185, "Failed to create metadata for log event : %s, caarId : %s, rcId: %s, trpId: %s", v116, 0x2Au);
    v168 = v184;
    swift_arrayDestroy();
    MEMORY[0x26D5DDCD0](v168, -1, -1);
    MEMORY[0x26D5DDCD0](v116, -1, -1);
  }

  else
  {

    outlined destroy of (CamLogOutput, CamModelMetadata)(v112, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    (*(v29 + 8))(v110, v111);
  }
}

void _s7SiriCam19CaarLoggingProtocolPAAE3log4from03forC2Id0h2RcI00h7RequestI00h3TrpI0y13SourceMessageQz_10Foundation4UUIDVSSA2NSgtFZAA0C14ResponseLoggerV_Tt4g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v184 = a6;
  v185 = a4;
  v181 = a5;
  v182 = a3;
  v183 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v170 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v172 = &v170 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v171 = &v170 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v174 = &v170 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v180 = &v170 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v173 = &v170 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v170 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v176 = (&v170 - v25);
  v26 = MEMORY[0x28223BE20](v24);
  v179 = &v170 - v27;
  MEMORY[0x28223BE20](v26);
  v29 = &v170 - v28;
  v186 = type metadata accessor for UUID();
  isa = v186[-1].isa;
  v31 = MEMORY[0x28223BE20](v186);
  v177 = &v170 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v170 = &v170 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v37 = &v170 - v36;
  v38 = MEMORY[0x28223BE20](v35);
  v175 = &v170 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v42 = &v170 - v41;
  v43 = MEMORY[0x28223BE20](v40);
  v45 = &v170 - v44;
  v46 = MEMORY[0x28223BE20](v43);
  v48 = &v170 - v47;
  MEMORY[0x28223BE20](v46);
  v50 = &v170 - v49;
  v51 = static CaarResponseLogger.map(from:)(a1);
  if (v51)
  {
    v178 = v51;
    v52 = static CaarResponseLogger.wrapIntoLogEvent(message:)(v51);
    if (v52)
    {
      v53 = v52;
      v54 = [objc_allocWithZone(MEMORY[0x277D56B58]) init];
      v55 = isa;
      if (v54)
      {
        v56 = v54;
        v179 = v53;
        type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for SISchemaUUID, 0x277D5AC70);
        v176 = isa;
        v57 = *(isa + 2);
        v58 = v186;
        v57(v42, v183, v186);
        v59 = SISchemaUUID.__allocating_init(nsuuid:)(v42);
        [v56 setCaarId_];

        v60 = MEMORY[0x26D5DCC90](v182, v185);
        [v56 setResultCandidateId_];

        [v56 setRequestId_];
        if (AFDeviceSupportsSAE())
        {
          v57(v42, v181, v58);
          v61 = SISchemaUUID.__allocating_init(nsuuid:)(v42);
          [v56 setSubRequestId_];
        }

        outlined init with copy of UUID?();
        if (__swift_getEnumTagSinglePayload(v23, 1, v58) == 1)
        {
          outlined destroy of (CamLogOutput, CamModelMetadata)(v23, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          v62 = v173;
          UUID.init(uuidString:)();
          if (__swift_getEnumTagSinglePayload(v62, 1, v58) == 1)
          {
            outlined destroy of (CamLogOutput, CamModelMetadata)(v62, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          }

          else
          {
            v133 = v176;
            v134 = v170;
            v176[4](v170, v62, v58);
            v57(v42, v134, v58);
            v135 = SISchemaUUID.__allocating_init(nsuuid:)(v42);
            [v56 setTrpId_];

            (v133[1])(v134, v58);
          }
        }

        else
        {
          v128 = v176;
          v176[4](v37, v23, v58);
          v57(v42, v37, v58);
          v129 = SISchemaUUID.__allocating_init(nsuuid:)(v42);
          [v56 setTrpId_];

          (v128[1])(v37, v58);
        }

        v136 = v179;
        v137 = v180;
        [v179 setEventMetadata_];
        [objc_msgSend(objc_opt_self() sharedStream)];
        swift_unknownObjectRelease();
        if (one-time initialization token for common != -1)
        {
          swift_once();
        }

        v138 = type metadata accessor for Logger();
        __swift_project_value_buffer(v138, static Logger.common);
        v139 = v177;
        v57(v177, v183, v58);
        outlined init with copy of UUID?();
        v140 = v185;

        v141 = Logger.logObject.getter();
        v142 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v141, v142))
        {
          LODWORD(v184) = v142;
          v186 = v141;
          v143 = v139;
          v144 = swift_slowAlloc();
          v145 = v58;
          v183 = swift_slowAlloc();
          v188[0] = v183;
          *v144 = 136315906;
          v187 = type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for CAARSchemaCAARResponseGenerated, 0x277D56BD0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo31CAARSchemaCAARResponseGeneratedCmMd, &_sSo31CAARSchemaCAARResponseGeneratedCmMR);
          v146 = String.init<A>(describing:)();
          v148 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v146, v147, v188);

          *(v144 + 4) = v148;
          *(v144 + 12) = 2080;
          v149 = UUID.uuidString.getter();
          v151 = v150;
          v152 = v176[1];
          (v152)(v143, v58);
          v153 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v149, v151, v188);

          *(v144 + 14) = v153;
          *(v144 + 22) = 2080;
          *(v144 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v182, v140, v188);
          *(v144 + 32) = 2080;
          v154 = v180;
          v155 = v174;
          outlined init with copy of UUID?();
          if (__swift_getEnumTagSinglePayload(v155, 1, v145) == 1)
          {
            outlined destroy of (CamLogOutput, CamModelMetadata)(v155, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
            v156 = 0;
            v157 = 0xE000000000000000;
          }

          else
          {
            v156 = UUID.uuidString.getter();
            v157 = v158;
            (v152)(v155, v145);
          }

          v159 = v184;
          outlined destroy of (CamLogOutput, CamModelMetadata)(v154, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          v160 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v156, v157, v188);

          *(v144 + 34) = v160;
          v161 = v186;
          _os_log_impl(&dword_266790000, v186, v159, "Successfully emitted log message : %s for caarId : %s, rcId: %s, retrpId: %s", v144, 0x2Au);
          v162 = v183;
          swift_arrayDestroy();
          MEMORY[0x26D5DDCD0](v162, -1, -1);
          MEMORY[0x26D5DDCD0](v144, -1, -1);
        }

        else
        {

          outlined destroy of (CamLogOutput, CamModelMetadata)(v137, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          (v176[1])(v139, v58);
        }
      }

      else
      {
        if (one-time initialization token for common != -1)
        {
          swift_once();
        }

        v108 = type metadata accessor for Logger();
        __swift_project_value_buffer(v108, static Logger.common);
        v109 = v175;
        v110 = v186;
        (*(isa + 2))(v175, v183, v186);
        v111 = v176;
        outlined init with copy of UUID?();
        v112 = v185;

        v113 = Logger.logObject.getter();
        v114 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v113, v114))
        {
          LODWORD(v184) = v114;
          v179 = v53;
          v115 = swift_slowAlloc();
          v183 = swift_slowAlloc();
          v188[0] = v183;
          *v115 = 136315906;
          v187 = type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for CAARSchemaCAARResponseGenerated, 0x277D56BD0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo31CAARSchemaCAARResponseGeneratedCmMd, &_sSo31CAARSchemaCAARResponseGeneratedCmMR);
          v116 = String.init<A>(describing:)();
          v118 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v116, v117, v188);

          *(v115 + 4) = v118;
          *(v115 + 12) = 2080;
          v119 = UUID.uuidString.getter();
          v121 = v120;
          v122 = *(v55 + 1);
          v122(v109, v110);
          v123 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v119, v121, v188);

          *(v115 + 14) = v123;
          *(v115 + 22) = 2080;
          *(v115 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v182, v112, v188);
          *(v115 + 32) = 2080;
          v124 = v176;
          v125 = v171;
          outlined init with copy of UUID?();
          if (__swift_getEnumTagSinglePayload(v125, 1, v110) == 1)
          {
            outlined destroy of (CamLogOutput, CamModelMetadata)(v125, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
            v126 = 0;
            v127 = 0xE000000000000000;
          }

          else
          {
            v126 = UUID.uuidString.getter();
            v127 = v166;
            v122(v125, v110);
          }

          v167 = v179;
          outlined destroy of (CamLogOutput, CamModelMetadata)(v124, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          v168 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v126, v127, v188);

          *(v115 + 34) = v168;
          _os_log_impl(&dword_266790000, v113, v184, "Failed to create metadata for log event : %s, caarId : %s, rcId: %s, trpId: %s", v115, 0x2Au);
          v169 = v183;
          swift_arrayDestroy();
          MEMORY[0x26D5DDCD0](v169, -1, -1);
          MEMORY[0x26D5DDCD0](v115, -1, -1);
        }

        else
        {

          outlined destroy of (CamLogOutput, CamModelMetadata)(v111, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          (*(v55 + 1))(v109, v110);
        }
      }
    }

    else
    {
      if (one-time initialization token for common != -1)
      {
        swift_once();
      }

      v88 = type metadata accessor for Logger();
      __swift_project_value_buffer(v88, static Logger.common);
      v89 = v186;
      (*(isa + 2))(v45, v183, v186);
      v90 = v179;
      outlined init with copy of UUID?();
      v91 = v185;

      v92 = Logger.logObject.getter();
      v93 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v92, v93))
      {
        LODWORD(v184) = v93;
        v94 = swift_slowAlloc();
        v183 = swift_slowAlloc();
        v188[0] = v183;
        *v94 = 136315906;
        v187 = type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for CAARSchemaCAARResponseGenerated, 0x277D56BD0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo31CAARSchemaCAARResponseGeneratedCmMd, &_sSo31CAARSchemaCAARResponseGeneratedCmMR);
        v95 = String.init<A>(describing:)();
        v97 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v95, v96, v188);

        *(v94 + 4) = v97;
        *(v94 + 12) = 2080;
        v98 = UUID.uuidString.getter();
        v100 = v99;
        v101 = *(isa + 1);
        v101(v45, v89);
        v102 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v98, v100, v188);

        *(v94 + 14) = v102;
        *(v94 + 22) = 2080;
        *(v94 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v182, v91, v188);
        *(v94 + 32) = 2080;
        v103 = v179;
        v104 = v172;
        outlined init with copy of UUID?();
        if (__swift_getEnumTagSinglePayload(v104, 1, v89) == 1)
        {
          outlined destroy of (CamLogOutput, CamModelMetadata)(v104, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
          v105 = 0;
          v106 = 0xE000000000000000;
        }

        else
        {
          v105 = UUID.uuidString.getter();
          v106 = v163;
          v101(v104, v89);
        }

        outlined destroy of (CamLogOutput, CamModelMetadata)(v103, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        v164 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v105, v106, v188);

        *(v94 + 34) = v164;
        _os_log_impl(&dword_266790000, v92, v184, "Couldn't create log event with destination message : %s  for caarId : %s, rcId: %s, trpId: %s", v94, 0x2Au);
        v165 = v183;
        swift_arrayDestroy();
        MEMORY[0x26D5DDCD0](v165, -1, -1);
        MEMORY[0x26D5DDCD0](v94, -1, -1);
      }

      else
      {

        outlined destroy of (CamLogOutput, CamModelMetadata)(v90, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        (*(isa + 1))(v45, v89);
      }
    }
  }

  else
  {
    v178 = v29;
    v180 = v10;
    if (one-time initialization token for common != -1)
    {
      swift_once();
    }

    v63 = type metadata accessor for Logger();
    __swift_project_value_buffer(v63, static Logger.common);
    v64 = isa;
    v65 = *(isa + 2);
    v66 = v186;
    v65(v50, v183, v186);
    v65(v48, v181, v66);
    v67 = v178;
    outlined init with copy of UUID?();
    v68 = v185;

    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v69, v70))
    {
      LODWORD(v184) = v70;
      v71 = swift_slowAlloc();
      v183 = swift_slowAlloc();
      v188[0] = v183;
      *v71 = 136316162;
      v187 = type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for CAARSchemaCAARResponseGenerated, 0x277D56BD0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo31CAARSchemaCAARResponseGeneratedCmMd, &_sSo31CAARSchemaCAARResponseGeneratedCmMR);
      v72 = String.init<A>(describing:)();
      v74 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v72, v73, v188);

      *(v71 + 4) = v74;
      *(v71 + 12) = 2080;
      v75 = UUID.uuidString.getter();
      v77 = v76;
      v78 = *(v64 + 1);
      v78(v50, v186);
      v79 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v75, v77, v188);

      *(v71 + 14) = v79;
      *(v71 + 22) = 2080;
      *(v71 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v182, v68, v188);
      *(v71 + 32) = 2080;
      v80 = UUID.uuidString.getter();
      v82 = v81;
      v78(v48, v186);
      v83 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v80, v82, v188);

      *(v71 + 34) = v83;
      *(v71 + 42) = 2080;
      v84 = v186;
      v85 = v180;
      outlined init with copy of UUID?();
      if (__swift_getEnumTagSinglePayload(v85, 1, v84) == 1)
      {
        outlined destroy of (CamLogOutput, CamModelMetadata)(v85, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        v86 = 0;
        v87 = 0xE000000000000000;
      }

      else
      {
        v86 = UUID.uuidString.getter();
        v87 = v130;
        v78(v85, v84);
      }

      outlined destroy of (CamLogOutput, CamModelMetadata)(v178, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v131 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v86, v87, v188);

      *(v71 + 44) = v131;
      _os_log_impl(&dword_266790000, v69, v184, "Mapping function to create:  %s  failed for caarId : %s, rcId: %s, requestId: %s, trpId: %s", v71, 0x34u);
      v132 = v183;
      swift_arrayDestroy();
      MEMORY[0x26D5DDCD0](v132, -1, -1);
      MEMORY[0x26D5DDCD0](v71, -1, -1);
    }

    else
    {

      outlined destroy of (CamLogOutput, CamModelMetadata)(v67, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v107 = *(v64 + 1);
      v107(v48, v66);
      v107(v50, v66);
    }
  }
}

uint64_t closure #1 in CodeBasedRankerHandler.rank(requestId:caarId:rcId:trpId:actions:rankerContext:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, char *a4@<X8>)
{
  v44 = type metadata accessor for UUID();
  v50 = *(v44 - 8);
  v9 = MEMORY[0x28223BE20](v44);
  v48 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v49 = &v39 - v11;
  v12 = type metadata accessor for CamParse(0);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v46 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v47 = &v39 - v15;
  v16 = a3[5];
  v17 = a3[6];
  __swift_project_boxed_opaque_existential_1(a3 + 2, v16);
  v18 = type metadata accessor for ActionCandidate(0);
  v19 = *(v18 + 32);
  v20 = *(v17 + 8);
  v45 = a2;
  result = v20(a2, &a1[v19], v16, v17);
  if (!v4)
  {
    v23 = v22;
    v24 = *a1;
    v41 = *(a1 + 1);
    v42 = v24;
    v43 = 0;
    outlined init with copy of RankedAction();
    v25 = *(v50 + 16);
    v26 = &a1[v19];
    v27 = v49;
    v28 = v44;
    v25(v49, v26, v44);
    v40 = *&a1[*(v18 + 28)];
    outlined init with copy of RankedAction();
    v25(v48, v27, v28);
    v29 = type metadata accessor for RankedAction(0);
    v30 = &a4[v29[10]];
    v31 = v41;
    *a4 = v42;
    *(a4 + 1) = v31;
    outlined init with copy of RankedAction();
    *&a4[v29[6]] = MEMORY[0x277D84F90];
    *&a4[v29[7]] = v23;
    *&a4[v29[8]] = v40;
    v32 = v48;
    v25(&a4[v29[9]], v48, v28);
    type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for MLFeatureValue, 0x277CBFEF8);

    v33 = Dictionary.init(dictionaryLiteral:)();
    v34 = v29[11];
    *&a4[v34] = v33;
    *v30 = 0;
    v30[1] = 0;
    v42 = specialized ActionProtocol.inferBundleId()();
    v36 = v35;
    v37 = *(v50 + 8);
    v37(v32, v28);
    outlined destroy of RankedAction(v46);
    v37(v49, v28);
    outlined destroy of RankedAction(v47);
    *v30 = v42;
    v30[1] = v36;
    v38 = v45;

    *&a4[v34] = v38;
  }

  return result;
}

void _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySay7SiriCam15ActionCandidateVGSaySDySSSo14MLFeatureValueCGGG_AH06RankedH0VsAE_pTg503_s7f5Cam15hi10VSDySSSo14jk6CGAA06l5C0Vs5C33_pIgngrzo_AC_AFtAHsAI_pIegnrzr_TRAjnRsAE_pIgngrzo_Tf1cn_n(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t, __n128), uint64_t a4)
{
  v5 = v4;
  v48 = a3;
  v49 = a4;
  v8 = type metadata accessor for RankedAction(0);
  v46 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v53 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v44 = &v38 - v11;
  v12 = type metadata accessor for ActionCandidate(0);
  v51 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v43 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v41 = &v38 - v15;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam15ActionCandidateV_SDySSSo14MLFeatureValueCGtMd, &_s7SiriCam15ActionCandidateV_SDySSSo14MLFeatureValueCGtMR);
  v16 = MEMORY[0x28223BE20](v47);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v40 = &v38 - v20;
  MEMORY[0x28223BE20](v19);
  v39 = &v38 - v21;
  v52 = a1;
  v22 = *(a1 + 16);
  v50 = *(a2 + 16);
  if (v50 >= v22)
  {
    v23 = v22;
  }

  else
  {
    v23 = v50;
  }

  v54 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  v24 = v54;
  v45 = v22;
  if (v23)
  {
    v25 = 0;
    v42 = a2 + 32;
    while (v22 != v25)
    {
      outlined init with copy of RankedAction();
      if (v50 == v25)
      {
        goto LABEL_27;
      }

      v26 = *(v42 + 8 * v25);
      v27 = *(v47 + 48);
      outlined init with take of CamModelMetadata();
      *&v18[v27] = v26;

      (v48)(v18, v26);
      if (v4)
      {

        outlined destroy of (CamLogOutput, CamModelMetadata)(v18, &_s7SiriCam15ActionCandidateV_SDySSSo14MLFeatureValueCGtMd, &_s7SiriCam15ActionCandidateV_SDySSSo14MLFeatureValueCGtMR);
        return;
      }

      outlined destroy of (CamLogOutput, CamModelMetadata)(v18, &_s7SiriCam15ActionCandidateV_SDySSSo14MLFeatureValueCGtMd, &_s7SiriCam15ActionCandidateV_SDySSSo14MLFeatureValueCGtMR);
      v54 = v24;
      v28 = *(v24 + 16);
      if (v28 >= *(v24 + 24) >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v24 = v54;
      }

      ++v25;
      *(v24 + 16) = v28 + 1;
      outlined init with take of CamModelMetadata();
      v22 = v45;
      if (v23 == v25)
      {
        goto LABEL_12;
      }
    }

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

  else
  {
LABEL_12:
    v29 = a2 + 32;
    while (1)
    {
      v30 = v41;
      if (v22 == v23)
      {
        break;
      }

      if (v23 >= v22)
      {
        goto LABEL_28;
      }

      outlined init with copy of RankedAction();
      if (__OFADD__(v23, 1))
      {
        goto LABEL_29;
      }

      if (v50 == v23)
      {
        outlined destroy of RankedAction(v30);
        return;
      }

      if (v23 >= v50)
      {
        goto LABEL_30;
      }

      v31 = *(v29 + 8 * v23);
      v32 = v47;
      v33 = *(v47 + 48);
      v34 = v40;
      outlined init with take of CamModelMetadata();
      *&v34[v33] = v31;
      v35 = v39;
      outlined init with take of (UUID, [String : MLFeatureValue])();
      v36 = *(v35 + *(v32 + 48));

      (v48)(v35, v36);
      if (v5)
      {
        outlined destroy of (CamLogOutput, CamModelMetadata)(v35, &_s7SiriCam15ActionCandidateV_SDySSSo14MLFeatureValueCGtMd, &_s7SiriCam15ActionCandidateV_SDySSSo14MLFeatureValueCGtMR);

        return;
      }

      outlined destroy of (CamLogOutput, CamModelMetadata)(v35, &_s7SiriCam15ActionCandidateV_SDySSSo14MLFeatureValueCGtMd, &_s7SiriCam15ActionCandidateV_SDySSSo14MLFeatureValueCGtMR);
      v54 = v24;
      v37 = *(v24 + 16);
      if (v37 >= *(v24 + 24) >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v24 = v54;
      }

      *(v24 + 16) = v37 + 1;
      outlined init with take of CamModelMetadata();
      ++v23;
      v22 = v45;
    }
  }
}

void specialized MutableCollection<>.sort(by:)(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = OUTLINED_FUNCTION_48();
  v5 = type metadata accessor for RankedAction(v4);
  OUTLINED_FUNCTION_14(v5);
  v7 = v6;
  v8 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = a2(v8);
  }

  v9 = *(v8 + 16);
  v10[0] = v8 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v10[1] = v9;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v10);
  *v2 = v8;
}

uint64_t specialized MutableCollection<>.sort(by:)(uint64_t *a1, char a2, uint64_t a3)
{
  v6 = *a1;
  swift_retain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v6);
    v6 = v7;
  }

  v8 = *(v6 + 16);
  v10[0] = v6 + 32;
  v10[1] = v8;

  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v10, a2 & 1, a3);
  *a1 = v6;
}

uint64_t closure #3 in CodeBasedRankerHandler.rank(requestId:caarId:rcId:trpId:actions:rankerContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *, uint64_t), uint64_t a6, NSObject *a7, uint64_t a8)
{
  swift_beginAccess();

  CodeBasedRankerHandler.postRankLogging(rankedActions:caarId:rcId:requestId:trpId:shadowLog:tieBreakersExecuted:)(v14, a3, a4, a5, a6, a7, 0, a8);
}

uint64_t implicit closure #1 in CodeBasedRankerHandler.rank(requestId:caarId:rcId:trpId:actions:rankerContext:)(uint64_t *a1, uint64_t *a2)
{
  v4 = *(type metadata accessor for RankedAction(0) + 28);
  v5 = *(a2 + v4);
  v6 = *(a1 + v4);
  if (v5 < v6)
  {
    return 1;
  }

  if (v6 < v5)
  {
    return 0;
  }

  v8 = *a2;
  v9 = a2[1];
  if (v8 == 0xD000000000000021 && 0x8000000266819930 == v9)
  {
    return 0;
  }

  OUTLINED_FUNCTION_7_6();
  if (OUTLINED_FUNCTION_43(v11, v12, v13))
  {
    return 0;
  }

  v15 = *a1;
  v14 = a1[1];
  if (v15 == 0xD000000000000021 && 0x8000000266819930 == v14)
  {
    return 1;
  }

  OUTLINED_FUNCTION_7_6();
  if (OUTLINED_FUNCTION_43(v17, v18, v19))
  {
    return 1;
  }

  if (v8 == v15 && v9 == v14)
  {
    return 0;
  }

  OUTLINED_FUNCTION_54();
  if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {
    return 0;
  }

  OUTLINED_FUNCTION_54();
  return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
}

uint64_t closure #4 in CodeBasedRankerHandler.rank(requestId:caarId:rcId:trpId:actions:rankerContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *, uint64_t), uint64_t a6, NSObject *a7, uint64_t a8)
{
  swift_beginAccess();
  v17 = *(a1 + 16);
  type metadata accessor for SiriSignalsContainer();
  v15 = swift_allocObject();
  type metadata accessor for SignalValue();

  *(v15 + 16) = Dictionary.init(dictionaryLiteral:)();
  SiriSignalsContainer.refreshSignals()();

  specialized CodeBasedRankerHandler.extractUserHistoryFeatures(rankedActions:siriSignalsContainer:)(&v17, v15);
  specialized CodeBasedRankerHandler.extractDisambiguationFeatures(rankedActions:siriSignalsContainer:)(&v17, v15);

  CodeBasedRankerHandler.postRankLogging(rankedActions:caarId:rcId:requestId:trpId:shadowLog:tieBreakersExecuted:)(v17, a3, a4, a5, a6, a7, 0, a8);
}

uint64_t CodeBasedRankerHandler.rank(requestId:caarId:rcId:trpId:parses:rankerContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  type metadata accessor for CamParse(0);
  OUTLINED_FUNCTION_22();
  v55 = v9;
  v56 = v10;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3_0();
  v13 = v12 - v11;
  if (one-time initialization token for ranker != -1)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v14 = type metadata accessor for Logger();
    v15 = __swift_project_value_buffer(v14, static Logger.ranker);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_266790000, v16, v17, "Ranking parses in CAAR", v18, 2u);
      OUTLINED_FUNCTION_3_2();
      MEMORY[0x26D5DDCD0]();
    }

    MEMORY[0x28223BE20](v19);
    *(&v54 - 2) = a7;
    v20 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay7SiriCam0E5ParseOG_Sds5NeverOTg5(partial apply for closure #1 in CodeBasedRankerHandler.rank(requestId:caarId:rcId:trpId:parses:rankerContext:), (&v54 - 4), a6);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();
    v23 = os_log_type_enabled(v21, v22);
    v57 = v15;
    if (v23)
    {
      OUTLINED_FUNCTION_15();
      v24 = swift_slowAlloc();
      OUTLINED_FUNCTION_9();
      v25 = swift_slowAlloc();
      v60[0] = v25;
      *v24 = 136315138;
      v26 = MEMORY[0x26D5DCE80](v20, MEMORY[0x277D839F8]);
      v28 = v13;
      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, v60);

      *(v24 + 4) = v29;
      v13 = v28;
      _os_log_impl(&dword_266790000, v21, v22, "Ranking generated scores %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
      OUTLINED_FUNCTION_3_2();
      MEMORY[0x26D5DDCD0]();
      OUTLINED_FUNCTION_3_2();
      MEMORY[0x26D5DDCD0]();
    }

    KeyPath = swift_getKeyPath();
    v31 = specialized Sequence.sorted<A>(by:decreasing:)(KeyPath, 1, v20);

    v32 = v31[2];
    v33 = MEMORY[0x277D84F90];
    if (v32)
    {
      v34 = a6;
      v60[0] = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v32, 0);
      v35 = v60[0];
      v36 = *(v60[0] + 16);
      v37 = 4;
      do
      {
        v38 = v31[v37];
        v60[0] = v35;
        v39 = *(v35 + 24);
        if (v36 >= v39 >> 1)
        {
          v40 = OUTLINED_FUNCTION_17_1(v39);
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v40, v36 + 1, 1);
          v35 = v60[0];
        }

        *(v35 + 16) = v36 + 1;
        *(v35 + 8 * v36 + 32) = v38;
        v37 += 2;
        ++v36;
        --v32;
      }

      while (v32);

      a6 = v34;
      v33 = MEMORY[0x277D84F90];
    }

    else
    {

      v35 = MEMORY[0x277D84F90];
    }

    v41 = *(v35 + 16);
    if (!v41)
    {
      break;
    }

    v60[0] = v33;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v41, 0);
    a7 = v60[0];
    v58 = a6 + ((*(v56 + 80) + 32) & ~*(v56 + 80));
    v59 = *(a6 + 16);
    v42 = 32;
    while (*(v35 + v42) < v59)
    {
      outlined init with copy of RankedAction();
      v60[0] = a7;
      v44 = *(a7 + 16);
      v43 = *(a7 + 24);
      a6 = v44 + 1;
      if (v44 >= v43 >> 1)
      {
        v45 = OUTLINED_FUNCTION_17_1(v43);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v45, v44 + 1, 1);
        a7 = v60[0];
      }

      *(a7 + 16) = a6;
      outlined init with take of CamModelMetadata();
      v42 += 8;
      if (!--v41)
      {

        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_25:
    OUTLINED_FUNCTION_2_0();
    swift_once();
  }

  a7 = MEMORY[0x277D84F90];
LABEL_21:

  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v46, v47))
  {
    OUTLINED_FUNCTION_15();
    v48 = swift_slowAlloc();
    OUTLINED_FUNCTION_9();
    v49 = swift_slowAlloc();
    v60[0] = v49;
    *v48 = 136315138;
    v50 = MEMORY[0x26D5DCE80](a7, v55);
    v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v51, v60);

    *(v48 + 4) = v52;
    _os_log_impl(&dword_266790000, v46, v47, "Returning ranked parses %s", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v49);
    OUTLINED_FUNCTION_3_2();
    MEMORY[0x26D5DDCD0]();
    OUTLINED_FUNCTION_3_2();
    MEMORY[0x26D5DDCD0]();
  }

  return a7;
}

void closure #1 in CodeBasedRankerHandler.rank(requestId:caarId:rcId:trpId:parses:rankerContext:)(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v34 - v9;
  v11 = type metadata accessor for CamUSOParse(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CamParse(0);
  MEMORY[0x28223BE20](v14);
  v16 = (&v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of RankedAction();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    outlined init with take of CamModelMetadata();
    Siri_Nlu_External_UserParse.comparableProbability.getter();
    v22 = v21;
    v23 = a2 + *(type metadata accessor for RankerContext(0) + 28);
    if ((*(v23 + 8) & 1) != 0 || v22 != *v23)
    {
      outlined destroy of RankedAction(v13);
      v29 = 0x3FA999999999999ALL;
    }

    else
    {
      outlined init with copy of UUID?();
      outlined destroy of RankedAction(v13);
      v24 = type metadata accessor for Siri_Nlu_External_Parser.ParserIdentifier();
      if (__swift_getEnumTagSinglePayload(v10, 1, v24) == 1)
      {
LABEL_23:
        *a3 = 0x3FE0000000000000;
        outlined destroy of (CamLogOutput, CamModelMetadata)(v10, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
        return;
      }

      outlined init with copy of UUID?();
      v25 = *(v24 - 8);
      v26 = (*(v25 + 88))(v8, v24);
      if (v26 != *MEMORY[0x277D5DA80] && v26 != *MEMORY[0x277D5DA70] && v26 != *MEMORY[0x277D5DA60])
      {
        (*(v25 + 8))(v8, v24);
        goto LABEL_23;
      }

      outlined destroy of (CamLogOutput, CamModelMetadata)(v10, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
      v29 = 0x3FE3333333333333;
    }

    *a3 = v29;
    return;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v18 = *v16;
    dispatch thunk of PommesResponse.primaryQueryConfidence()();
    v20 = v19 >= 0.7;

    *a3 = qword_2668157B0[v20];
  }

  else
  {
    if (one-time initialization token for ranker != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    __swift_project_value_buffer(v30, static Logger.ranker);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_266790000, v31, v32, "Received unknown parse case, ranking last!", v33, 2u);
      MEMORY[0x26D5DDCD0](v33, -1, -1);
    }

    *a3 = 0;
    outlined destroy of RankedAction(v16);
  }
}

void *specialized Sequence.sorted<A>(by:decreasing:)(uint64_t a1, char a2, void *a3)
{

  v7 = specialized _copySequenceToContiguousArray<A>(_:)(a3);
  specialized MutableCollection<>.sort(by:)(&v7, a2, a1);
  return v7;
}

void CodeBasedRankerHandler.extractFeatures(actions:rankerContext:)()
{
  OUTLINED_FUNCTION_16_1();
  v1 = v0;
  v2 = type metadata accessor for RankerContext(0);
  OUTLINED_FUNCTION_0_2();
  v4 = MEMORY[0x28223BE20](v3);
  v6 = (&v28[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4);
  v8 = (&v28[-1] - v7);
  v9 = CamFeatureFlag.isEnabled.getter(4);
  outlined init with copy of RankedAction();
  if (v9)
  {

    v11 = DawnRankerFeatureExtractor.init(actions:rankerContext:)(v10, v8);
    v29 = &type metadata for DawnRankerFeatureExtractor;
    v30 = &protocol witness table for DawnRankerFeatureExtractor;
    v28[0] = v11;
    v28[1] = v12;
    v28[2] = v13;
  }

  else
  {
    v14 = type metadata accessor for RankerFeatureExtractor(0);
    v29 = v14;
    v30 = &protocol witness table for RankerFeatureExtractor;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v28);
    v27 = v1;
    v16 = v14[9];
    static PommesFeatureExtractor.configuredScoreThreshold()();
    *(boxed_opaque_existential_1 + v16) = v17;
    outlined init with copy of RankedAction();
    outlined init with copy of RankedAction();
    v18 = static UserParseFeatureExtractor.extractOnScreenAppBundleIds(from:)(*v6);
    v19 = v6 + *(v2 + 28);
    v20 = *v19;
    v21 = v19[8];
    outlined destroy of RankedAction(v6);
    v22 = boxed_opaque_existential_1 + v14[5];
    *v22 = v18;
    *(v22 + 1) = v20;
    v1 = v27;
    v22[16] = v21;
    type metadata accessor for AffinityRankFeatureExtractor();
    OUTLINED_FUNCTION_29_0();
    swift_allocObject();

    *(boxed_opaque_existential_1 + v14[6]) = AffinityRankFeatureExtractor.init(actions:)(v23);
    v24 = (v8 + *(v2 + 24));
    v25 = *v24;
    v26 = v24[1];

    outlined destroy of RankedAction(v8);
    type metadata accessor for ConversationHistoryFeatureExtractor();
    v11 = swift_allocObject();
    *(v11 + 16) = v25;
    *(v11 + 24) = v26;
    *(boxed_opaque_existential_1 + v14[8]) = v11;
  }

  MEMORY[0x28223BE20](v11);
  *(&v27 - 2) = v28;
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay7SiriCam15ActionCandidateVG_SDySSSo14MLFeatureValueCGsAE_pTg5(partial apply for closure #1 in CodeBasedRankerHandler.extractFeatures(actions:rankerContext:), (&v27 - 4), v1);
  __swift_destroy_boxed_opaque_existential_0(v28);
  OUTLINED_FUNCTION_15_3();
}

uint64_t closure #1 in CodeBasedRankerHandler.extractFeatures(actions:rankerContext:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = a2[3];
  v9 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v8);
  result = FeatureExtracting.extract(from:)(a1, v8, v9);
  if (v4)
  {
    *a3 = v4;
  }

  else
  {
    *a4 = result;
  }

  return result;
}

uint64_t closure #2 in CodeBasedRankerHandler.extractDisambiguationFeatures(rankedActions:siriSignalsContainer:)(unint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a1;
  v6 = *a3;
  v13[3] = type metadata accessor for RankedAction(0);
  v13[4] = &protocol witness table for RankedAction;
  __swift_allocate_boxed_opaque_existential_1(v13);
  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v5 < *(v6 + 16))
  {
    outlined init with copy of RankedAction();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a3 = v6;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_9:
  specialized _ArrayBuffer._consumeAndCreateNew()(v6);
  *a3 = v12;
LABEL_4:
  v8 = specialized FeatureExtracting.extract(from:)(v13);
  if (!v3)
  {
    specialized _dictionaryUpCast<A, B, C, D>(_:)(v8);
    v10 = v9;

    specialized Dictionary.update(other:allowDuplicateKeys:)(v10, 0);
  }

  return __swift_destroy_boxed_opaque_existential_0(v13);
}

uint64_t (*specialized Sequence.forEach(_:)(uint64_t (*result)(uint64_t *, uint64_t), uint64_t a2, uint64_t a3))(uint64_t *, uint64_t)
{
  v4 = result;
  v5 = *(a3 + 16);
  v6 = (a3 + 32);
  do
  {
    if (!v5)
    {
      break;
    }

    v7 = *v6++;
    v8 = v7;
    result = v4(&v8, a2);
    --v5;
  }

  while (!v3);
  return result;
}

uint64_t CodeBasedRankerHandler.postRankLogging(rankedActions:caarId:rcId:requestId:trpId:shadowLog:tieBreakersExecuted:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t), uint64_t a5, NSObject *a6, int a7, uint64_t a8)
{
  v112 = a8;
  v107 = a7;
  v119 = a6;
  v118 = a5;
  v117 = a4;
  v116 = a3;
  v115 = a2;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay7SiriCam12RankedActionVG_AA0B13ModelMetadataVAA19CAARTrialEnrollmentVtMd, &_sSay7SiriCam12RankedActionVG_AA0B13ModelMetadataVAA19CAARTrialEnrollmentVtMR);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_7_4();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_23_0(&v105 - v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  OUTLINED_FUNCTION_14(v12);
  OUTLINED_FUNCTION_7_4();
  MEMORY[0x28223BE20](v13);
  v15 = OUTLINED_FUNCTION_21_1(&v105 - v14);
  v105 = type metadata accessor for CamModelMetadata(v15);
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_23_0(v18 - v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_SDySSSo14MLFeatureValueCGtMd, &_s10Foundation4UUIDV_SDySSSo14MLFeatureValueCGtMR);
  OUTLINED_FUNCTION_22();
  v130 = v20;
  OUTLINED_FUNCTION_7_4();
  MEMORY[0x28223BE20](v21);
  v23 = &v105 - v22;
  v131 = type metadata accessor for RankedAction(0);
  OUTLINED_FUNCTION_22();
  v113 = v24;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_5();
  v129 = v26;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_51();
  v29 = MEMORY[0x28223BE20](v28);
  v31 = &v105 - v30;
  MEMORY[0x28223BE20](v29);
  v33 = &v105 - v32;
  v120 = a1;
  v114 = *(a1 + 16);
  if (v114)
  {
    v34 = v113;
    v35 = v120 + ((*(v34 + 80) + 32) & ~*(v34 + 80));
    if (one-time initialization token for ranker != -1)
    {
      OUTLINED_FUNCTION_2_0();
      swift_once();
    }

    v128 = *(v34 + 72);
    v127 = type metadata accessor for Logger();
    *&v36 = 136315650;
    v121 = v36;
    v37 = v114;
    v124 = v19;
    v123 = v23;
    v122 = v8;
    do
    {
      __swift_project_value_buffer(v127, static Logger.ranker);
      outlined init with copy of RankedAction();
      outlined init with copy of RankedAction();
      OUTLINED_FUNCTION_47();
      outlined init with copy of RankedAction();
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v38, v39))
      {
        OUTLINED_FUNCTION_9();
        v40 = swift_slowAlloc();
        v126 = swift_slowAlloc();
        *&v133 = v126;
        *v40 = v121;
        v125 = v39;

        OUTLINED_FUNCTION_9_6();
        outlined destroy of RankedAction(v33);
        v41 = OUTLINED_FUNCTION_40();

        *(v40 + 4) = v41;
        *(v40 + 12) = 2080;
        v42 = v131;
        type metadata accessor for UUID();
        lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        dispatch thunk of CustomStringConvertible.description.getter();
        outlined destroy of RankedAction(v31);
        v43 = OUTLINED_FUNCTION_40();

        *(v40 + 14) = v43;
        *(v40 + 22) = 2080;
        v44 = *(v42 + 44);
        v8 = v122;
        Dictionary<>.debugDescription.getter(*(v122 + v44));
        v19 = v124;
        outlined destroy of RankedAction(v8);
        v45 = OUTLINED_FUNCTION_40();
        v23 = v123;

        *(v40 + 24) = v45;
        _os_log_impl(&dword_266790000, v38, v125, "Features for %s (%s): \n %s", v40, 0x20u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_3_2();
        MEMORY[0x26D5DDCD0]();
        OUTLINED_FUNCTION_3_2();
        MEMORY[0x26D5DDCD0]();
      }

      else
      {

        OUTLINED_FUNCTION_10_6();
        outlined destroy of RankedAction(v31);
        v46 = OUTLINED_FUNCTION_56();
        outlined destroy of RankedAction(v46);
        outlined destroy of RankedAction(v8);
      }

      v35 += v128;
      --v37;
    }

    while (v37);
  }

  if (one-time initialization token for ranker != -1)
  {
    OUTLINED_FUNCTION_2_0();
    swift_once();
  }

  v47 = type metadata accessor for Logger();
  __swift_project_value_buffer(v47, static Logger.ranker);
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.info.getter();
  v50 = os_log_type_enabled(v48, v49);
  v51 = v114;
  if (v50)
  {
    v52 = swift_slowAlloc();
    *v52 = 0;
    _os_log_impl(&dword_266790000, v48, v49, "Logging CAAR features to SELF.", v52, 2u);
    OUTLINED_FUNCTION_3_2();
    MEMORY[0x26D5DDCD0]();
  }

  v53 = MEMORY[0x277D84F90];
  if (v51)
  {
    *&v133 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v51, 0);
    v53 = v133;
    OUTLINED_FUNCTION_8();
    v55 = v120 + v54;
    v57 = *(v56 + 72);
    v58 = v129;
    do
    {
      OUTLINED_FUNCTION_1_12();
      outlined init with copy of RankedAction();
      v59 = *(v19 + 48);
      v60 = v131;
      v61 = *(v131 + 36);
      type metadata accessor for UUID();
      OUTLINED_FUNCTION_0_2();
      (*(v62 + 16))(v23, v58 + v61);
      v63 = *(v58 + *(v60 + 44));

      OUTLINED_FUNCTION_0_11();
      outlined destroy of RankedAction(v58);
      *&v23[v59] = v63;
      *&v133 = v53;
      v64 = v23;
      v66 = *(v53 + 16);
      v65 = *(v53 + 24);
      if (v66 >= v65 >> 1)
      {
        v67 = OUTLINED_FUNCTION_17_1(v65);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v67, v66 + 1, 1);
        v53 = v133;
      }

      *(v53 + 16) = v66 + 1;
      OUTLINED_FUNCTION_8();
      outlined init with take of (UUID, [String : MLFeatureValue])();
      v55 += v57;
      --v51;
      v23 = v64;
    }

    while (v51);
  }

  _s7SiriCam19CaarLoggingProtocolPAAE3log4from03forC2Id0h2RcI00h7RequestI00h3TrpI0y13SourceMessageQz_10Foundation4UUIDVSSA2NSgtFZAA0C13FeatureLoggerV_Tt4g5(v53, v115, v116, v117, v118, v119);

  v68 = static TrialProvider.fetchBoolFactorFromTrial(_:)(0xD000000000000021, 0x800000026681A900);
  v69 = v108;
  if (v68 != 2 && (v68 & 1) != 0 && (CamFeatureFlag.isEnabled.getter(5) & 1) != 0)
  {
    *&v133 = 0;
    *(&v133 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(28);
    v71 = *(v69 + 56);
    v70 = *(v69 + 64);

    *&v133 = v71;
    *(&v133 + 1) = v70;
    MEMORY[0x26D5DCD80](0xD00000000000001ALL, 0x800000026681ADD0);
    v72 = *(&v133 + 1);
    v131 = v133;
  }

  else
  {
    v72 = *(v69 + 64);
    v131 = *(v69 + 56);
  }

  v73 = *(v69 + 72);
  v74 = *(v69 + 80);
  v75 = v107 & 1;
  v77 = *(v69 + 88);
  v76 = *(v69 + 96);
  v78 = type metadata accessor for Locale();
  v79 = v106;
  __swift_storeEnumTagSinglePayload(v106, 1, 1, v78);
  v80 = *(v105 + 28);
  v81 = v111;
  __swift_storeEnumTagSinglePayload(v111 + v80, 1, 1, v78);
  *v81 = v131;
  *(v81 + 8) = v72;
  *(v81 + 16) = v73;
  *(v81 + 24) = v74;
  *(v81 + 32) = v77;
  *(v81 + 40) = v76;
  *(v81 + 48) = v75;

  outlined assign with take of Locale?(v79, v81 + v80);
  v82 = one-time initialization token for enrollment;
  v83 = v120;

  if (v82 != -1)
  {
    swift_once();
  }

  v133 = static TrialProvider.enrollment;
  v134 = unk_28132EAA0;
  v135 = xmmword_28132EAB0;
  v136 = unk_28132EAC0;
  v84 = v110;
  v85 = (v110 + *(v109 + 64));
  *v110 = v83;
  outlined init with copy of RankedAction();
  v86 = v134;
  *v85 = v133;
  v85[1] = v86;
  v87 = v136;
  v85[2] = v135;
  v85[3] = v87;
  outlined init with copy of CAARTrialEnrollment(&v133, v132);
  v88 = v116;
  v89 = v117;
  _s7SiriCam19CaarLoggingProtocolPAAE3log4from03forC2Id0h2RcI00h7RequestI00h3TrpI0y13SourceMessageQz_10Foundation4UUIDVSSA2NSgtFZAA0C11ModelLoggerV_Tt4g5(v84, v115, v116, v117, v118, v119);
  outlined destroy of (CamLogOutput, CamModelMetadata)(v84, &_sSay7SiriCam12RankedActionVG_AA0B13ModelMetadataVAA19CAARTrialEnrollmentVtMd, &_sSay7SiriCam12RankedActionVG_AA0B13ModelMetadataVAA19CAARTrialEnrollmentVtMR);
  v90 = UUID.uuidString.getter();
  _s7SiriCam31CaarFeatureStoreLoggingProtocolPAAE9writeData11modelOutput0J8Metadata9requestId02rcN08fsStreamySayAA12RankedActionVG_AA0b5ModelL0VS2SAA0deQ0OtFZAA0cdE6LoggerV_Tt4g5(v83, v81, v90, v91, v88, v89, 1);

  OUTLINED_FUNCTION_39();
  _s7SiriCam19CaarLoggingProtocolPAAE3log4from03forC2Id0h2RcI00h7RequestI00h3TrpI0y13SourceMessageQz_10Foundation4UUIDVSSA2NSgtFZAA0C16TieBreakerLoggerV_Tt4g5(v92, v93, v94, v95, v96, v97);
  OUTLINED_FUNCTION_39();
  _s7SiriCam19CaarLoggingProtocolPAAE3log4from03forC2Id0h2RcI00h7RequestI00h3TrpI0y13SourceMessageQz_10Foundation4UUIDVSSA2NSgtFZAA0C14ResponseLoggerV_Tt4g5(v98, v99, v100, v101, v102, v103);
  return outlined destroy of RankedAction(v81);
}

uint64_t _s7SiriCam31CaarFeatureStoreLoggingProtocolPAAE9writeData11modelOutput0J8Metadata9requestId02rcN08fsStreamySayAA12RankedActionVG_AA0b5ModelL0VS2SAA0deQ0OtFZAA0cdE6LoggerV_Tt4g5(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v58 = a7;
  v62 = a6;
  v61 = a5;
  v60 = a4;
  v59 = a3;
  v56[3] = a2;
  v8 = type metadata accessor for CamModelMetadata(0);
  v56[1] = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v56[2] = v9;
  v56[4] = v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for RankedAction(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_7SiriCam12AnyEncodableVtGMd, &_ss23_ContiguousArrayStorageCySS_7SiriCam12AnyEncodableVtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_266813C70;
  *(inited + 32) = 0x7365727574616566;
  *(inited + 40) = 0xE800000000000000;
  v56[0] = inited;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSo14MLFeatureValueCGMd, &_sSDySSSo14MLFeatureValueCGMR);
  v15 = Dictionary.init(dictionaryLiteral:)();
  v16 = *(a1 + 16);
  v57 = a1;
  if (v16)
  {
    v65 = *(v10 + 36);
    v64 = *(v10 + 44);
    v17 = a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v63 = *(v11 + 72);
    do
    {
      v66 = v16;
      outlined init with copy of RankedAction();
      v18 = UUID.uuidString.getter();
      v20 = v19;
      v21 = v13;
      v22 = *&v13[v64];

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v67[0] = v15;
      v24 = specialized __RawDictionaryStorage.find<A>(_:)(v18, v20);
      v26 = v15[2];
      v27 = (v25 & 1) == 0;
      v28 = v26 + v27;
      if (__OFADD__(v26, v27))
      {
        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      v10 = v24;
      v29 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSSDySSSo14MLFeatureValueCGGMd, &_ss17_NativeDictionaryVySSSDySSSo14MLFeatureValueCGGMR);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v28))
      {
        v30 = specialized __RawDictionaryStorage.find<A>(_:)(v18, v20);
        if ((v29 & 1) != (v31 & 1))
        {
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }

        v10 = v30;
      }

      if (v29)
      {

        v15 = v67[0];
        *(*(v67[0] + 56) + 8 * v10) = v22;

        v13 = v21;
        outlined destroy of RankedAction(v21);
      }

      else
      {
        v15 = v67[0];
        *(v67[0] + 8 * (v10 >> 6) + 64) |= 1 << v10;
        v32 = (v15[6] + 16 * v10);
        *v32 = v18;
        v32[1] = v20;
        *(v15[7] + 8 * v10) = v22;
        v13 = v21;
        outlined destroy of RankedAction(v21);
        v33 = v15[2];
        v34 = __OFADD__(v33, 1);
        v35 = v33 + 1;
        if (v34)
        {
          goto LABEL_30;
        }

        v15[2] = v35;
      }

      v17 += v63;
      v16 = v66 - 1;
    }

    while (v66 != 1);
  }

  v36 = swift_allocObject();
  *(v36 + 16) = v15;
  v37 = v56[0];
  *(v56[0] + 48) = partial apply for specialized implicit closure #2 in implicit closure #1 in AnyEncodable.init<A>(_:);
  v37[7] = v36;
  v37[8] = 0x74757074756FLL;
  v37[9] = 0xE600000000000000;
  v38 = swift_allocObject();
  *(v38 + 16) = v57;
  v37[10] = partial apply for specialized implicit closure #2 in implicit closure #1 in AnyEncodable.init<A>(_:);
  v37[11] = v38;
  v37[12] = 0x617461646174656DLL;
  v37[13] = 0xE800000000000000;
  outlined init with copy of RankedAction();
  v39 = swift_allocObject();
  outlined init with take of CamModelMetadata();
  v37[14] = partial apply for specialized implicit closure #2 in implicit closure #1 in AnyEncodable.init<A>(_:);
  v37[15] = v39;

  v10 = Dictionary.init(dictionaryLiteral:)();
  if (one-time initialization token for common != -1)
  {
LABEL_31:
    swift_once();
  }

  v40 = 0x6C65646F4D6D6143;
  v41 = type metadata accessor for Logger();
  __swift_project_value_buffer(v41, static Logger.common);

  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.debug.getter();

  v44 = os_log_type_enabled(v42, v43);
  v45 = v58;
  if (v44)
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v67[0] = v47;
    *v46 = 136315394;
    if (v45)
    {
      if (v45 == 1)
      {
        v48 = 0x65646F4D72616143;
      }

      else
      {
        v48 = 0x646E65536F747541;
      }

      if (v45 == 1)
      {
        v49 = 0xE90000000000006CLL;
      }

      else
      {
        v49 = 0xED00006C65646F4DLL;
      }
    }

    else
    {
      v49 = 0xE800000000000000;
      v48 = 0x6C65646F4D6D6143;
    }

    v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v49, v67);

    *(v46 + 4) = v50;
    *(v46 + 12) = 2080;
    v51 = Dictionary.description.getter();
    v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v52, v67);

    *(v46 + 14) = v53;
    _os_log_impl(&dword_266790000, v42, v43, "Writing to Feature Store, streamId=%s, object=%s", v46, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D5DDCD0](v47, -1, -1);
    MEMORY[0x26D5DDCD0](v46, -1, -1);
  }

  if (v45)
  {
    if (v45 == 1)
    {
      v40 = 0x65646F4D72616143;
      v54 = 0xE90000000000006CLL;
    }

    else
    {
      v40 = 0x646E65536F747541;
      v54 = 0xED00006C65646F4DLL;
    }
  }

  else
  {
    v54 = 0xE800000000000000;
  }

  v67[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS7SiriCam12AnyEncodableVGMd, &_sSDySS7SiriCam12AnyEncodableVGMR);
  v67[4] = lazy protocol witness table accessor for type [String : AnyEncodable] and conformance <> [A : B]();
  v67[0] = v10;
  specialized static FeatureStoreLoggingProtocol.write(streamId:object:requestId:rcId:)(v40, v54, v67, v59, v60, v61, v62);

  return __swift_destroy_boxed_opaque_existential_0(v67);
}

uint64_t CodeBasedRankerHandler.deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return v0;
}

uint64_t CodeBasedRankerHandler.__deallocating_deinit()
{
  CodeBasedRankerHandler.deinit();

  return MEMORY[0x2821FE8D8](v0, 112, 7);
}

BOOL specialized closure #1 in Sequence.sorted<A>(by:decreasing:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, double a5, double a6)
{
  if (a3)
  {
    swift_getAtKeyPath();
    swift_getAtKeyPath();
    return v8 < v9;
  }

  else
  {
    swift_getAtKeyPath();
    swift_getAtKeyPath();
    return v9 < v8;
  }
}

uint64_t _sSLsE1goiySbx_xtFZ7SiriCam12RankedActionV_Tt1g5(uint64_t *a1, uint64_t *a2)
{
  v4 = *(type metadata accessor for RankedAction(0) + 28);
  v5 = *(a2 + v4);
  v6 = *(a1 + v4);
  if (v5 < v6)
  {
    return 1;
  }

  if (v6 < v5)
  {
    return 0;
  }

  v8 = *a2;
  v9 = a2[1];
  if (v8 == 0xD000000000000021 && 0x8000000266819930 == v9)
  {
    return 0;
  }

  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_7_6();
  if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {
    return 0;
  }

  v12 = *a1;
  v11 = a1[1];
  if (v12 == 0xD000000000000021 && 0x8000000266819930 == v11)
  {
    return 1;
  }

  OUTLINED_FUNCTION_7_6();
  if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {
    return 1;
  }

  if (v8 == v12 && v9 == v11)
  {
    return 0;
  }

  OUTLINED_FUNCTION_8_0();
  if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {
    return 0;
  }

  OUTLINED_FUNCTION_8_0();

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

{
  return a1();
}

void closure #1 in OSLogArguments.append(_:)(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

void specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (_minimumMergeRunLength(_:)(v1) < v1)
  {
    if (v1 >= -1)
    {
      v2 = v1 / 2;
      if (v1 <= 1)
      {
        v3 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for RankedAction(0);
        v3 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v3 + 16) = v2;
      }

      v4 = type metadata accessor for RankedAction(0);
      OUTLINED_FUNCTION_14(v4);
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)();
      *(v3 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v1 < 0)
  {
    goto LABEL_12;
  }

  if (v1)
  {
    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)();
  }
}

Swift::Int specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1, char a2, uint64_t a3)
{
  v6 = a1[1];
  swift_retain_n();
  result = _minimumMergeRunLength(_:)(v6);
  if (result < v6)
  {
    if (v6 >= -1)
    {
      v8 = result;
      v9 = v6 / 2;
      if (v6 <= 1)
      {
        v10 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_Sd7elementtMd, &_sSi6offset_Sd7elementtMR);
        v10 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v10 + 16) = v9;
      }

      v11[0] = (v10 + 32);
      v11[1] = v9;

      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v11, v12, a1, v8, a2 & 1, a3);
      *(v10 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {
    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v6, 1, a1, a2 & 1, a3);
  }
}

void specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)()
{
  OUTLINED_FUNCTION_16_1();
  v2 = v1;
  v4 = v3;
  v5 = OUTLINED_FUNCTION_48();
  v48 = type metadata accessor for RankedAction(v5);
  v6 = MEMORY[0x28223BE20](v48);
  v46 = &v37[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v37[-v9];
  MEMORY[0x28223BE20](v8);
  v12 = &v37[-v11];
  v39 = v4;
  if (v2 == v4)
  {
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_3_3();
  v47 = v13;
  v16 = v14 + v15 * (v2 - 1);
  v44 = -v15;
  v45 = v14;
  v17 = v0 - v2;
  v38 = v15;
  v18 = v14 + v15 * v2;
  while (2)
  {
    v42 = v16;
    v43 = v2;
    v40 = v18;
    v41 = v17;
    v19 = v16;
    while (1)
    {
      outlined init with copy of RankedAction();
      outlined init with copy of RankedAction();
      v20 = *(v48 + 28);
      v21 = *(v10 + v20);
      v22 = *(v12 + v20);
      if (v21 < v22)
      {
LABEL_16:
        outlined destroy of RankedAction(v10);
        outlined destroy of RankedAction(v12);
        goto LABEL_17;
      }

      if (v22 < v21)
      {
        break;
      }

      v24 = *v10;
      v23 = v10[1];
      OUTLINED_FUNCTION_15_4();
      if (v24 == v26 && v25 == v23)
      {
        break;
      }

      OUTLINED_FUNCTION_56();
      OUTLINED_FUNCTION_7_6();
      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v28 = *v12;
      v29 = v12[1];
      OUTLINED_FUNCTION_15_4();
      if (v28 == v31 && v30 == v29)
      {
        goto LABEL_16;
      }

      OUTLINED_FUNCTION_7_6();
      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        goto LABEL_16;
      }

      if (v24 == v28 && v23 == v29)
      {
        break;
      }

      OUTLINED_FUNCTION_56();
      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      OUTLINED_FUNCTION_56();
      v35 = _stringCompareWithSmolCheck(_:_:expecting:)();
      OUTLINED_FUNCTION_11_5();
      outlined destroy of RankedAction(v10);
      outlined destroy of RankedAction(v12);
      if ((v35 & 1) == 0)
      {
        goto LABEL_29;
      }

LABEL_17:
      if (!v45)
      {
        __break(1u);
        return;
      }

      outlined init with take of CamModelMetadata();
      swift_arrayInitWithTakeFrontToBack();
      outlined init with take of CamModelMetadata();
      v19 += v44;
      v18 += v44;
      if (__CFADD__(v17++, 1))
      {
        goto LABEL_29;
      }
    }

    outlined destroy of RankedAction(v10);
    v36 = OUTLINED_FUNCTION_53();
    outlined destroy of RankedAction(v36);
LABEL_29:
    v2 = v43 + 1;
    v16 = v42 + v38;
    v17 = v41 - 1;
    v18 = v40 + v38;
    if (v43 + 1 != v39)
    {
      continue;
    }

    break;
  }

LABEL_30:
  OUTLINED_FUNCTION_15_3();
}

void *specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, char a5, uint64_t a6)
{
  if (a3 == a2)
  {
  }

  v8 = a3;
  v9 = *a4;
  v10 = *a4 + 16 * a3;
  v11 = a1 - a3;
  while (2)
  {
    v12 = v11;
    v13 = v10;
    do
    {
      if (a5)
      {
        swift_getAtKeyPath();
        result = swift_getAtKeyPath();
        if (v18 >= v19)
        {
          break;
        }
      }

      else
      {
        swift_getAtKeyPath();
        result = swift_getAtKeyPath();
        if (v19 >= v18)
        {
          break;
        }
      }

      if (!v9)
      {
        __break(1u);
        return result;
      }

      v14 = *v13;
      v15 = v13[1];
      *v13 = *(v13 - 1);
      *(v13 - 1) = v15;
      *(v13 - 2) = v14;
      v13 -= 2;
    }

    while (!__CFADD__(v12++, 1));
    ++v8;
    v10 += 16;
    --v11;
    if (v8 != a2)
    {
      continue;
    }

    break;
  }
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)()
{
  OUTLINED_FUNCTION_16_1();
  v166 = v0;
  v2 = v1;
  v4 = v3;
  v155 = v5;
  v6 = type metadata accessor for RankedAction(0);
  OUTLINED_FUNCTION_22();
  v162 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_5();
  v158 = v9;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_10_3();
  v171 = v11;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_10_3();
  v173 = v13;
  OUTLINED_FUNCTION_6();
  v15 = MEMORY[0x28223BE20](v14);
  v17 = (&v152 - v16);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_10_3();
  v165 = v18;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v19);
  v163 = v4;
  v164 = (&v152 - v20);
  if (v4[1] < 1)
  {
    v23 = MEMORY[0x277D84F90];
LABEL_147:
    v25 = *v155;
    if (!*v155)
    {
      goto LABEL_189;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_149;
    }

    goto LABEL_183;
  }

  v153 = v2;
  v21 = 0;
  OUTLINED_FUNCTION_3_3();
  v168 = v22;
  v23 = MEMORY[0x277D84F90];
  v172 = v6;
  v169 = v17;
  v25 = v24;
  while (2)
  {
    v26 = v21;
    v27 = v21 + 1;
    if (v27 >= v25)
    {
      goto LABEL_55;
    }

    v28 = *v163;
    v29 = *(v162 + 72);
    v30 = (*v163 + v29 * v27);
    v31 = v166;
    LODWORD(v170) = implicit closure #1 in CodeBasedRankerHandler.rank(requestId:caarId:rcId:trpId:actions:rankerContext:)(v30, (*v163 + v29 * v26));
    v166 = v31;
    if (v31)
    {
      goto LABEL_157;
    }

    v154 = v26;
    v32 = v26 + 2;
    v33 = v28 + v29 * (v26 + 2);
    v161 = v25;
    while (1)
    {
      v34 = v32;
      if (v27 + 1 >= v25)
      {
        break;
      }

      v167 = v27;
      OUTLINED_FUNCTION_12_7();
      v35 = v164;
      outlined init with copy of RankedAction();
      v36 = v165;
      outlined init with copy of RankedAction();
      v37 = *(v6 + 28);
      v38 = *(v36 + v37);
      v39 = *(v35 + v37);
      if (v38 >= v39)
      {
        if (v39 >= v38)
        {
          v41 = *v165;
          v42 = v165[1];
          OUTLINED_FUNCTION_15_4();
          v43 = v168;
          v45 = v41 == v44 && v168 == v42;
          if (v45 || (OUTLINED_FUNCTION_47(), OUTLINED_FUNCTION_7_6(), (OUTLINED_FUNCTION_43(v46, v47, v48) & 1) != 0))
          {
LABEL_16:
            v40 = 0;
          }

          else
          {
            v49 = *v164;
            OUTLINED_FUNCTION_15_4();
            v52 = v49 == v51 && v43 == v50;
            if (v52 || (v160 = v50, OUTLINED_FUNCTION_7_6(), (OUTLINED_FUNCTION_43(v53, v54, v55) & 1) != 0))
            {
              v40 = 1;
            }

            else
            {
              if (v41 == v49 && v42 == v160)
              {
                goto LABEL_16;
              }

              OUTLINED_FUNCTION_47();
              if (_stringCompareWithSmolCheck(_:_:expecting:)())
              {
                goto LABEL_16;
              }

              OUTLINED_FUNCTION_47();
              v40 = _stringCompareWithSmolCheck(_:_:expecting:)();
            }
          }

          v6 = v172;
          goto LABEL_18;
        }

        v40 = 0;
      }

      else
      {
        v40 = 1;
      }

LABEL_18:
      outlined destroy of RankedAction(v165);
      outlined destroy of RankedAction(v164);
      v33 += v29;
      v30 = (v30 + v29);
      v27 = v167 + 1;
      v32 = v34 + 1;
      v25 = v161;
      if ((v170 ^ v40))
      {
        goto LABEL_33;
      }
    }

    v27 = v25;
LABEL_33:
    if ((v170 & 1) == 0)
    {
LABEL_53:
      v17 = v169;
      v26 = v154;
      goto LABEL_55;
    }

    v26 = v154;
    if (v27 < v154)
    {
      goto LABEL_182;
    }

    if (v154 < v27)
    {
      v152 = v23;
      if (v25 >= v34)
      {
        v57 = v34;
      }

      else
      {
        v57 = v25;
      }

      v58 = v27;
      v25 = v29 * (v57 - 1);
      v59 = v29 * v57;
      v60 = v154;
      v61 = v154 * v29;
      do
      {
        if (v60 != --v58)
        {
          v62 = *v163;
          if (!*v163)
          {
            goto LABEL_187;
          }

          outlined init with take of CamModelMetadata();
          v63 = v61 < v25 || v62 + v61 >= (v62 + v59);
          if (v63)
          {
            OUTLINED_FUNCTION_50();
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v61 != v25)
          {
            OUTLINED_FUNCTION_50();
            swift_arrayInitWithTakeBackToFront();
          }

          outlined init with take of CamModelMetadata();
          v6 = v172;
        }

        ++v60;
        v25 -= v29;
        v59 -= v29;
        v61 += v29;
      }

      while (v60 < v58);
      v23 = v152;
      goto LABEL_53;
    }

    v17 = v169;
LABEL_55:
    v64 = v163[1];
    if (v27 >= v64)
    {
      goto LABEL_93;
    }

    if (__OFSUB__(v27, v26))
    {
      goto LABEL_179;
    }

    if (v27 - v26 >= v153)
    {
LABEL_93:
      if (v27 < v26)
      {
        goto LABEL_178;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v23 = v135;
      }

      v87 = *(v23 + 2);
      v86 = *(v23 + 3);
      v6 = v87 + 1;
      v167 = v27;
      if (v87 >= v86 >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v23 = v136;
      }

      *(v23 + 2) = v6;
      v25 = (v23 + 32);
      v88 = &v23[16 * v87 + 32];
      v89 = v167;
      *v88 = v26;
      v88[1] = v89;
      if (!*v155)
      {
        goto LABEL_188;
      }

      if (!v87)
      {
LABEL_143:
        v25 = v163[1];
        v21 = v167;
        v6 = v172;
        if (v167 >= v25)
        {
          goto LABEL_147;
        }

        continue;
      }

      v90 = *v155;
      while (1)
      {
        v91 = v6 - 1;
        v92 = (v25 + 16 * (v6 - 1));
        v93 = &v23[16 * v6];
        if (v6 >= 4)
        {
          break;
        }

        if (v6 == 3)
        {
          v94 = *(v23 + 4);
          v95 = *(v23 + 5);
          v104 = __OFSUB__(v95, v94);
          v96 = v95 - v94;
          v97 = v104;
LABEL_114:
          if (v97)
          {
            goto LABEL_165;
          }

          v109 = *v93;
          v108 = *(v93 + 1);
          v110 = __OFSUB__(v108, v109);
          v111 = v108 - v109;
          v112 = v110;
          if (v110)
          {
            goto LABEL_168;
          }

          v113 = v92[1];
          v114 = v113 - *v92;
          if (__OFSUB__(v113, *v92))
          {
            goto LABEL_171;
          }

          if (__OFADD__(v111, v114))
          {
            goto LABEL_173;
          }

          if (v111 + v114 >= v96)
          {
            if (v96 < v114)
            {
              v91 = v6 - 2;
            }

            goto LABEL_136;
          }

          goto LABEL_129;
        }

        if (v6 < 2)
        {
          goto LABEL_167;
        }

        v116 = *v93;
        v115 = *(v93 + 1);
        v104 = __OFSUB__(v115, v116);
        v111 = v115 - v116;
        v112 = v104;
LABEL_129:
        if (v112)
        {
          goto LABEL_170;
        }

        v118 = *v92;
        v117 = v92[1];
        v104 = __OFSUB__(v117, v118);
        v119 = v117 - v118;
        if (v104)
        {
          goto LABEL_172;
        }

        if (v119 < v111)
        {
          goto LABEL_143;
        }

LABEL_136:
        if (v91 - 1 >= v6)
        {
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
LABEL_166:
          __break(1u);
LABEL_167:
          __break(1u);
LABEL_168:
          __break(1u);
LABEL_169:
          __break(1u);
LABEL_170:
          __break(1u);
LABEL_171:
          __break(1u);
LABEL_172:
          __break(1u);
LABEL_173:
          __break(1u);
LABEL_174:
          __break(1u);
LABEL_175:
          __break(1u);
LABEL_176:
          __break(1u);
LABEL_177:
          __break(1u);
LABEL_178:
          __break(1u);
LABEL_179:
          __break(1u);
LABEL_180:
          __break(1u);
          goto LABEL_181;
        }

        if (!*v163)
        {
          goto LABEL_185;
        }

        v123 = v23;
        v23 = (v25 + 16 * (v91 - 1));
        v124 = *v23;
        v125 = OUTLINED_FUNCTION_25_1(*v163);
        v126 = v166;
        specialized _merge<A>(low:mid:high:buffer:by:)(v125, v127, v128, v90, v129, v130, v131, v132, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163);
        v166 = v126;
        if (v126)
        {
          goto LABEL_157;
        }

        if (v6 < v124)
        {
          goto LABEL_160;
        }

        v133 = *(v123 + 2);
        if (v91 > v133)
        {
          goto LABEL_161;
        }

        *v23 = v124;
        *(v23 + 1) = v6;
        if (v91 >= v133)
        {
          goto LABEL_162;
        }

        v6 = v133 - 1;
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((v25 + 16 * v91 + 16), v133 - 1 - v91, (v25 + 16 * v91));
        v23 = v123;
        *(v123 + 2) = v133 - 1;
        v134 = v133 > 2;
        v17 = v169;
        if (!v134)
        {
          goto LABEL_143;
        }
      }

      v98 = v25 + 16 * v6;
      v99 = *(v98 - 64);
      v100 = *(v98 - 56);
      v104 = __OFSUB__(v100, v99);
      v101 = v100 - v99;
      if (v104)
      {
        goto LABEL_163;
      }

      v103 = *(v98 - 48);
      v102 = *(v98 - 40);
      v104 = __OFSUB__(v102, v103);
      v96 = v102 - v103;
      v97 = v104;
      if (v104)
      {
        goto LABEL_164;
      }

      v105 = *(v93 + 1);
      v106 = v105 - *v93;
      if (__OFSUB__(v105, *v93))
      {
        goto LABEL_166;
      }

      v104 = __OFADD__(v96, v106);
      v107 = v96 + v106;
      if (v104)
      {
        goto LABEL_169;
      }

      if (v107 >= v101)
      {
        v121 = *v92;
        v120 = v92[1];
        v104 = __OFSUB__(v120, v121);
        v122 = v120 - v121;
        if (v104)
        {
          goto LABEL_177;
        }

        if (v96 < v122)
        {
          v91 = v6 - 2;
        }

        goto LABEL_136;
      }

      goto LABEL_114;
    }

    break;
  }

  v65 = v26 + v153;
  if (__OFADD__(v26, v153))
  {
    goto LABEL_180;
  }

  if (v65 >= v64)
  {
    v65 = v163[1];
  }

  if (v65 < v26)
  {
LABEL_181:
    __break(1u);
LABEL_182:
    __break(1u);
LABEL_183:
    v23 = specialized _ArrayBuffer._consumeAndCreateNew()(v23);
LABEL_149:
    v137 = v23;
    v138 = (v23 + 16);
    for (i = *(v23 + 2); ; *v138 = i)
    {
      v23 = (i - 2);
      if (i < 2)
      {
        break;
      }

      if (!*v163)
      {
        goto LABEL_186;
      }

      v140 = &v137[16 * i];
      v141 = *v140;
      v142 = &v138[2 * i];
      v143 = OUTLINED_FUNCTION_25_1(*v163);
      v144 = v166;
      specialized _merge<A>(low:mid:high:buffer:by:)(v143, v145, v146, v25, v147, v148, v149, v150, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163);
      v166 = v144;
      if (v144)
      {
        break;
      }

      if (v6 < v141)
      {
        goto LABEL_174;
      }

      if (v23 >= *v138)
      {
        goto LABEL_175;
      }

      *v140 = v141;
      v140[1] = v6;
      v151 = *v138 - i;
      if (*v138 < i)
      {
        goto LABEL_176;
      }

      i = *v138 - 1;
      specialized UnsafeMutablePointer.moveInitialize(from:count:)(v142 + 16, v151, v142);
    }

LABEL_157:

    OUTLINED_FUNCTION_15_3();
    return;
  }

  if (v27 == v65)
  {
    goto LABEL_93;
  }

  v152 = v23;
  v66 = *v163;
  v67 = *(v162 + 72);
  v68 = *v163 + v67 * (v27 - 1);
  v69 = -v67;
  v154 = v26;
  v70 = v26 - v27;
  v170 = v66;
  v156 = v67;
  v157 = v65;
  v71 = v66 + v27 * v67;
LABEL_64:
  v167 = v27;
  v159 = v71;
  v160 = v70;
  v161 = v68;
  v72 = v68;
  while (1)
  {
    outlined init with copy of RankedAction();
    outlined init with copy of RankedAction();
    v73 = *(v6 + 28);
    v74 = *(v173 + v73);
    v75 = *(v17 + v73);
    if (v74 < v75)
    {
      goto LABEL_77;
    }

    v25 = v168;
    if (v75 < v74 || ((v77 = *v173, v76 = v173[1], OUTLINED_FUNCTION_15_4(), v77 == v78) ? (v79 = v25 == v76) : (v79 = 0), v79 || (OUTLINED_FUNCTION_7_6(), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)))
    {
LABEL_89:
      outlined destroy of RankedAction(v173);
      v17 = v169;
      outlined destroy of RankedAction(v169);
LABEL_90:
      v6 = v172;
LABEL_91:
      v27 = v167 + 1;
      v68 = v161 + v156;
      v70 = v160 - 1;
      v71 = v159 + v156;
      if (v167 + 1 == v157)
      {
        v27 = v157;
        v23 = v152;
        v26 = v154;
        goto LABEL_93;
      }

      goto LABEL_64;
    }

    v17 = v169;
    v25 = *v169;
    v80 = v169[1];
    OUTLINED_FUNCTION_15_4();
    v83 = v25 == v82 && v81 == v80;
    if (v83 || (OUTLINED_FUNCTION_7_6(), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
LABEL_77:
      outlined destroy of RankedAction(v173);
      outlined destroy of RankedAction(v17);
    }

    else
    {
      v84 = v77 == v25 && v76 == v80;
      if (v84 || (OUTLINED_FUNCTION_43(v77, v76, v25) & 1) != 0)
      {
        goto LABEL_89;
      }

      v85 = _stringCompareWithSmolCheck(_:_:expecting:)();
      OUTLINED_FUNCTION_10_6();
      outlined destroy of RankedAction(v173);
      v17 = v169;
      outlined destroy of RankedAction(v169);
      if ((v85 & 1) == 0)
      {
        goto LABEL_90;
      }
    }

    v6 = v172;
    if (!v170)
    {
      break;
    }

    v25 = v171;
    outlined init with take of CamModelMetadata();
    swift_arrayInitWithTakeFrontToBack();
    outlined init with take of CamModelMetadata();
    v72 += v69;
    v71 += v69;
    v63 = __CFADD__(v70++, 1);
    if (v63)
    {
      goto LABEL_91;
    }
  }

  __break(1u);
LABEL_185:
  __break(1u);
LABEL_186:
  __break(1u);
LABEL_187:
  __break(1u);
LABEL_188:
  __break(1u);
LABEL_189:
  __break(1u);
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, char a5, uint64_t a6)
{
  v7 = a3[1];
  if (v7 >= 1)
  {
    v8 = a5;
    swift_retain_n();
    v9 = 0;
    v10 = MEMORY[0x277D84F90];
    v110 = a6;
    while (1)
    {
      v11 = v9 + 1;
      if (v9 + 1 < v7)
      {
        v12 = *a3 + 16 * v11;
        v13 = *a3 + 16 * v9;
        v14 = specialized closure #1 in Sequence.sorted<A>(by:decreasing:)(*v12, *v13, v8 & 1, a6, *(v12 + 8), *(v13 + 8));
        if (v113)
        {
LABEL_101:
        }

        v15 = v14;
        v103 = v10;
        v10 = (16 * v9);
        v16 = v13 + 24;
        v17 = v9 + 2;
        v11 = v9 + 1;
        do
        {
          v18 = v17;
          if (v11 + 1 >= v7)
          {
            v11 = v7;
            if (!v15)
            {
              goto LABEL_27;
            }

            goto LABEL_17;
          }

          swift_getAtKeyPath();
          swift_getAtKeyPath();
          if (v8)
          {
            v19 = v114 < v115;
          }

          else
          {
            v19 = v115 < v114;
          }

          v20 = v19;
          v16 += 16;
          ++v11;
          v17 = v18 + 1;
        }

        while (v15 == v20);
        if (!v15)
        {
          goto LABEL_27;
        }

LABEL_17:
        if (v11 < v9)
        {
          goto LABEL_140;
        }

        if (v9 < v11)
        {
          if (v7 >= v18)
          {
            v21 = v18;
          }

          else
          {
            v21 = v7;
          }

          v22 = 16 * v21;
          v23 = v11;
          v24 = v9;
          do
          {
            if (v24 != --v23)
            {
              v25 = *a3;
              if (!*a3)
              {
                goto LABEL_145;
              }

              v26 = &v10[v25];
              v27 = v25 + v22;
              v28 = *v26;
              v29 = *(v26 + 1);
              *v26 = *(v27 - 16);
              *(v27 - 16) = v28;
              *(v27 - 8) = v29;
            }

            ++v24;
            v22 -= 16;
            v10 += 16;
          }

          while (v24 < v23);
        }

LABEL_27:
        v10 = v103;
      }

      v30 = a3[1];
      if (v11 < v30)
      {
        if (__OFSUB__(v11, v9))
        {
          goto LABEL_137;
        }

        if (v11 - v9 < a4)
        {
          v31 = v9 + a4;
          if (__OFADD__(v9, a4))
          {
            goto LABEL_138;
          }

          if (v31 >= v30)
          {
            v31 = a3[1];
          }

          if (v31 >= v9)
          {
            if (v11 == v31)
            {
              goto LABEL_47;
            }

            v102 = v9;
            v104 = v10;
            v32 = *a3;
            v33 = *a3 + 16 * v11;
            v34 = v9 - v11;
            v107 = v31;
LABEL_37:
            v35 = v11;
            v36 = v34;
            v37 = v33;
            while (1)
            {
              if (v8)
              {
                swift_getAtKeyPath();
                swift_getAtKeyPath();
                if (v114 >= v115)
                {
                  goto LABEL_45;
                }
              }

              else
              {
                swift_getAtKeyPath();
                swift_getAtKeyPath();
                if (v115 >= v114)
                {
                  goto LABEL_45;
                }
              }

              if (!v32)
              {
                break;
              }

              v38 = *v37;
              v39 = v37[1];
              *v37 = *(v37 - 1);
              *(v37 - 1) = v39;
              *(v37 - 2) = v38;
              v37 -= 2;
              if (__CFADD__(v36++, 1))
              {
LABEL_45:
                ++v11;
                v33 += 16;
                --v34;
                if (v35 + 1 == v107)
                {
                  v11 = v107;
                  v9 = v102;
                  v10 = v104;
                  goto LABEL_47;
                }

                goto LABEL_37;
              }
            }

            __break(1u);
LABEL_143:

            __break(1u);
LABEL_144:

            __break(1u);
LABEL_145:

            __break(1u);
LABEL_146:

            __break(1u);
            goto LABEL_147;
          }

LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          v10 = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
LABEL_105:
          v90 = v10 + 16;
          v89 = *(v10 + 2);
          for (i = v10; ; v10 = i)
          {
            if (v89 < 2)
            {
            }

            v91 = *a3;
            if (!*a3)
            {
              goto LABEL_144;
            }

            v92 = &v10[16 * v89];
            v93 = *v92;
            v94 = v90;
            v10 = &v90[16 * v89];
            v95 = *(v10 + 1);
            v96 = (v91 + 16 * *v92);
            v97 = (v91 + 16 * *v10);
            v109 = (v91 + 16 * v95);

            specialized _merge<A>(low:mid:high:buffer:by:)(v96, v97, v109, v102, a5 & 1, a6);
            if (v113)
            {
              break;
            }

            if (v95 < v93)
            {
              goto LABEL_132;
            }

            if (v89 - 2 >= *v94)
            {
              goto LABEL_133;
            }

            v90 = v94;
            *v92 = v93;
            *(v92 + 1) = v95;
            v98 = *v94 - v89;
            if (*v94 < v89)
            {
              goto LABEL_134;
            }

            v89 = *v94 - 1;
            specialized UnsafeMutablePointer.moveInitialize(from:count:)(v10 + 16, v98, v10);
            *v94 = v89;
          }
        }
      }

LABEL_47:
      if (v11 < v9)
      {
        goto LABEL_136;
      }

      v108 = v11;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v10 = v87;
      }

      v41 = *(v10 + 2);
      v42 = v41 + 1;
      if (v41 >= *(v10 + 3) >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v10 = v88;
      }

      *(v10 + 2) = v42;
      v43 = v10 + 32;
      v44 = &v10[16 * v41 + 32];
      *v44 = v9;
      *(v44 + 1) = v108;
      v105 = *a1;
      if (!*a1)
      {
        goto LABEL_146;
      }

      if (v41)
      {
        break;
      }

      v9 = v108;
LABEL_99:
      v7 = a3[1];
      if (v9 >= v7)
      {
        goto LABEL_103;
      }
    }

    v9 = v108;
    v102 = v10 + 32;
    while (1)
    {
      v45 = v42 - 1;
      v46 = &v43[16 * v42 - 16];
      v47 = &v10[16 * v42];
      if (v42 >= 4)
      {
        break;
      }

      if (v42 == 3)
      {
        v48 = *(v10 + 4);
        v49 = *(v10 + 5);
        v58 = __OFSUB__(v49, v48);
        v50 = v49 - v48;
        v51 = v58;
LABEL_68:
        if (v51)
        {
          goto LABEL_123;
        }

        v63 = *v47;
        v62 = *(v47 + 1);
        v64 = __OFSUB__(v62, v63);
        v65 = v62 - v63;
        v66 = v64;
        if (v64)
        {
          goto LABEL_126;
        }

        v67 = *(v46 + 1);
        v68 = v67 - *v46;
        if (__OFSUB__(v67, *v46))
        {
          goto LABEL_129;
        }

        if (__OFADD__(v65, v68))
        {
          goto LABEL_131;
        }

        if (v65 + v68 >= v50)
        {
          if (v50 < v68)
          {
            v45 = v42 - 2;
          }

          goto LABEL_90;
        }

        goto LABEL_83;
      }

      if (v42 < 2)
      {
        goto LABEL_125;
      }

      v70 = *v47;
      v69 = *(v47 + 1);
      v58 = __OFSUB__(v69, v70);
      v65 = v69 - v70;
      v66 = v58;
LABEL_83:
      if (v66)
      {
        goto LABEL_128;
      }

      v72 = *v46;
      v71 = *(v46 + 1);
      v58 = __OFSUB__(v71, v72);
      v73 = v71 - v72;
      if (v58)
      {
        goto LABEL_130;
      }

      if (v73 < v65)
      {
        goto LABEL_99;
      }

LABEL_90:
      if (v45 - 1 >= v42)
      {
        __break(1u);
LABEL_118:
        __break(1u);
LABEL_119:
        __break(1u);
LABEL_120:
        __break(1u);
LABEL_121:
        __break(1u);
LABEL_122:
        __break(1u);
LABEL_123:
        __break(1u);
LABEL_124:
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
        goto LABEL_139;
      }

      v77 = *a3;
      if (!*a3)
      {
        goto LABEL_143;
      }

      v78 = v10;
      v79 = &v43[16 * v45 - 16];
      v80 = *v79;
      v81 = v45;
      v10 = &v43[16 * v45];
      v82 = *(v10 + 1);
      v83 = (v77 + 16 * *v79);
      v84 = (v77 + 16 * *v10);
      v85 = (v77 + 16 * v82);
      a6 = v110;

      specialized _merge<A>(low:mid:high:buffer:by:)(v83, v84, v85, v105, a5 & 1, v110);
      if (v113)
      {
        goto LABEL_101;
      }

      if (v82 < v80)
      {
        goto LABEL_118;
      }

      v86 = *(v78 + 2);
      if (v81 > v86)
      {
        goto LABEL_119;
      }

      *v79 = v80;
      *(v79 + 1) = v82;
      if (v81 >= v86)
      {
        goto LABEL_120;
      }

      v42 = v86 - 1;
      specialized UnsafeMutablePointer.moveInitialize(from:count:)(v10 + 16, v86 - 1 - v81, v10);
      v10 = v78;
      *(v78 + 2) = v86 - 1;
      v8 = a5;
      v9 = v108;
      a6 = v110;
      v43 = v102;
      if (v86 <= 2)
      {
        goto LABEL_99;
      }
    }

    v52 = &v43[16 * v42];
    v53 = *(v52 - 8);
    v54 = *(v52 - 7);
    v58 = __OFSUB__(v54, v53);
    v55 = v54 - v53;
    if (v58)
    {
      goto LABEL_121;
    }

    v57 = *(v52 - 6);
    v56 = *(v52 - 5);
    v58 = __OFSUB__(v56, v57);
    v50 = v56 - v57;
    v51 = v58;
    if (v58)
    {
      goto LABEL_122;
    }

    v59 = *(v47 + 1);
    v60 = v59 - *v47;
    if (__OFSUB__(v59, *v47))
    {
      goto LABEL_124;
    }

    v58 = __OFADD__(v50, v60);
    v61 = v50 + v60;
    if (v58)
    {
      goto LABEL_127;
    }

    if (v61 >= v55)
    {
      v75 = *v46;
      v74 = *(v46 + 1);
      v58 = __OFSUB__(v74, v75);
      v76 = v74 - v75;
      if (v58)
      {
        goto LABEL_135;
      }

      if (v50 < v76)
      {
        v45 = v42 - 2;
      }

      goto LABEL_90;
    }

    goto LABEL_68;
  }

  swift_retain_n();
  v10 = MEMORY[0x277D84F90];
LABEL_103:
  v102 = *a1;
  if (*a1)
  {
    swift_retain_n();
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_105;
    }

    goto LABEL_141;
  }

LABEL_147:

  __break(1u);
  return result;
}

void specialized _merge<A>(low:mid:high:buffer:by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_16_1();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v100 = type metadata accessor for RankedAction(0);
  v30 = MEMORY[0x28223BE20](v100);
  v99 = (&v90 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = MEMORY[0x28223BE20](v30);
  v98 = &v90 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v36 = (&v90 - v35);
  MEMORY[0x28223BE20](v34);
  v38 = &v90 - v37;
  v40 = *(v39 + 72);
  if (!v40)
  {
    __break(1u);
LABEL_104:
    __break(1u);
LABEL_105:
    __break(1u);
    return;
  }

  v41 = v27 - v29 == 0x8000000000000000 && v40 == -1;
  if (v41)
  {
    goto LABEL_104;
  }

  if (v25 - v27 == 0x8000000000000000 && v40 == -1)
  {
    goto LABEL_105;
  }

  v43 = (v27 - v29) / v40;
  a10 = v29;
  v102 = v23;
  OUTLINED_FUNCTION_3_3();
  v96 = v45;
  v46 = v44 / v40;
  if (v43 < v44 / v40)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(v29, (v27 - v29) / v40, v23);
    v99 = (v23 + v43 * v40);
    v101 = v99;
    while (1)
    {
      if (v23 >= v99 || v27 >= v25)
      {
        goto LABEL_102;
      }

      outlined init with copy of RankedAction();
      outlined init with copy of RankedAction();
      v48 = *(v100 + 28);
      v49 = *(v36 + v48);
      v50 = *&v38[v48];
      if (v49 < v50)
      {
        break;
      }

      if (v50 < v49)
      {
        goto LABEL_30;
      }

      v52 = *v36;
      v53 = v36[1];
      OUTLINED_FUNCTION_15_4();
      if (v52 == v54 && v96 == v53)
      {
        goto LABEL_30;
      }

      OUTLINED_FUNCTION_7_6();
      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        goto LABEL_30;
      }

      OUTLINED_FUNCTION_15_4();
      if (v57 == v59 && v96 == v58)
      {
        break;
      }

      v97 = v58;
      v98 = v57;
      OUTLINED_FUNCTION_7_6();
      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v61 = v52 == v98 && v53 == v97;
      if (v61 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
LABEL_30:
        outlined destroy of RankedAction(v36);
        outlined destroy of RankedAction(v38);
      }

      else
      {
        v62 = _stringCompareWithSmolCheck(_:_:expecting:)();
        OUTLINED_FUNCTION_9_6();
        outlined destroy of RankedAction(v36);
        outlined destroy of RankedAction(v38);
        if (v62)
        {
          goto LABEL_18;
        }
      }

      if (v29 < v23 || v29 >= v23 + v40)
      {
        OUTLINED_FUNCTION_22_1();
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v29 != v23)
      {
        OUTLINED_FUNCTION_22_1();
        swift_arrayInitWithTakeBackToFront();
      }

      v102 = v23 + v40;
      v23 += v40;
LABEL_43:
      v29 += v40;
      a10 = v29;
    }

    outlined destroy of RankedAction(v36);
    outlined destroy of RankedAction(v38);
LABEL_18:
    if (v29 < v27 || v29 >= v27 + v40)
    {
      OUTLINED_FUNCTION_22_1();
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v29 != v27)
    {
      OUTLINED_FUNCTION_22_1();
      swift_arrayInitWithTakeBackToFront();
    }

    v27 += v40;
    goto LABEL_43;
  }

  specialized UnsafeMutablePointer.moveInitialize(from:count:)(v27, v44 / v40, v23);
  v63 = (v23 + v46 * v40);
  v64 = -v40;
  v65 = v63;
  v97 = -v40;
LABEL_57:
  v66 = v25;
  v93 = v65;
  v95 = v27 + v64;
  while (1)
  {
    if (v63 <= v23)
    {
      a10 = v27;
      goto LABEL_101;
    }

    if (v27 <= v29)
    {
      break;
    }

    v94 = v65;
    v67 = (v63 + v64);
    OUTLINED_FUNCTION_12_7();
    v68 = v98;
    outlined init with copy of RankedAction();
    v69 = v99;
    outlined init with copy of RankedAction();
    v70 = *(v100 + 28);
    v71 = *(v69 + v70);
    v72 = *(v68 + v70);
    if (v71 < v72)
    {
      goto LABEL_61;
    }

    if (v72 < v71 || ((v75 = *v99, v74 = v99[1], OUTLINED_FUNCTION_15_4(), v76 = v96, v75 == v77) ? (v78 = v96 == v74) : (v78 = 0), v78 || (OUTLINED_FUNCTION_53(), OUTLINED_FUNCTION_7_6(), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)))
    {
      v73 = 0;
      goto LABEL_69;
    }

    OUTLINED_FUNCTION_15_4();
    v84 = v81 == v83 && v76 == v82;
    if (v84 || (v91 = v82, v92 = v81, OUTLINED_FUNCTION_7_6(), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
LABEL_61:
      v73 = 1;
LABEL_69:
      v79 = v97;
      goto LABEL_70;
    }

    v85 = v75 == v92 && v74 == v91;
    v79 = v97;
    if (v85 || (OUTLINED_FUNCTION_53(), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      v73 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_53();
      v73 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

LABEL_70:
    v25 = v66 + v79;
    OUTLINED_FUNCTION_11_5();
    outlined destroy of RankedAction(v99);
    outlined destroy of RankedAction(v98);
    if (v73)
    {
      v86 = v66 < v27 || v25 >= v27;
      v87 = v95;
      if (v86)
      {
        OUTLINED_FUNCTION_22_1();
        swift_arrayInitWithTakeFrontToBack();
        v27 = v87;
        v65 = v94;
        v64 = v97;
      }

      else
      {
        v65 = v94;
        v41 = v66 == v27;
        v27 = v95;
        v64 = v97;
        if (!v41)
        {
          OUTLINED_FUNCTION_22_1();
          v89 = v88;
          swift_arrayInitWithTakeBackToFront();
          v27 = v87;
          v65 = v89;
        }
      }

      goto LABEL_57;
    }

    if (v66 < v63 || v25 >= v63)
    {
      OUTLINED_FUNCTION_22_1();
      swift_arrayInitWithTakeFrontToBack();
      v66 += v79;
      v63 = v67;
      v65 = v67;
      v64 = v97;
    }

    else
    {
      v65 = v67;
      v41 = v63 == v66;
      v66 += v79;
      v63 = v67;
      v64 = v97;
      if (!v41)
      {
        OUTLINED_FUNCTION_22_1();
        swift_arrayInitWithTakeBackToFront();
        v66 = v25;
        v63 = v67;
        v65 = v67;
      }
    }
  }

  a10 = v27;
  v65 = v93;
LABEL_101:
  v101 = v65;
LABEL_102:
  specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(&a10, &v102, &v101);
  OUTLINED_FUNCTION_15_3();
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *a1, char *a2, char *a3, char *a4, char a5, uint64_t a6)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  v10 = a1;
  v11 = (a2 - a1) / 16;
  v12 = (a3 - a2) / 16;
  if (v11 < v12)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, (a2 - a1) / 16, a4);
    v13 = &v7[16 * v11];
    while (1)
    {
      if (v7 >= v13 || v9 >= v8)
      {
        v17 = v10;
        goto LABEL_33;
      }

      if (a5)
      {
        swift_getAtKeyPath();
        swift_getAtKeyPath();
        if (v22 >= v23)
        {
          goto LABEL_9;
        }
      }

      else
      {
        swift_getAtKeyPath();
        swift_getAtKeyPath();
        if (v23 >= v22)
        {
LABEL_9:
          v15 = v7;
          v16 = v10 == v7;
          v7 += 16;
          if (v16)
          {
            goto LABEL_11;
          }

LABEL_10:
          *v10 = *v15;
          goto LABEL_11;
        }
      }

      v15 = v9;
      v16 = v10 == v9;
      v9 += 16;
      if (!v16)
      {
        goto LABEL_10;
      }

LABEL_11:
      v10 += 16;
    }
  }

  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a2, (a3 - a2) / 16, a4);
  v13 = &v7[16 * v12];
LABEL_17:
  v17 = v9;
  v9 -= 16;
  for (v8 -= 16; v13 > v7 && v17 > v10; v8 -= 16)
  {
    if (a5)
    {
      swift_getAtKeyPath();
      swift_getAtKeyPath();
      if (v22 < v23)
      {
        goto LABEL_30;
      }
    }

    else
    {
      swift_getAtKeyPath();
      swift_getAtKeyPath();
      if (v23 < v22)
      {
LABEL_30:
        if (v8 + 16 != v17)
        {
          *v8 = *v9;
        }

        goto LABEL_17;
      }
    }

    if (v13 != v8 + 16)
    {
      *v8 = *(v13 - 1);
    }

    v13 -= 16;
  }

LABEL_33:
  v19 = (v13 - v7) / 16;
  if (v17 != v7 || v17 >= &v7[16 * v19])
  {
    memmove(v17, v7, 16 * v19);
  }

  return 1;
}

uint64_t specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for RankedAction(0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_20;
  }

  v9 = v4 + (v5 - v4) / v7 * v7;
  if (v3 < v4 || v3 >= v9)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void outlined bridged method (mbgnn) of @objc CAARSchemaCAARTieBreakersExecuted.tiebreakers.setter(uint64_t a1, void *a2)
{
  type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for CAARSchemaCAARTieBreaker, 0x277D56BF0);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [a2 setTiebreakers_];
}

void *specialized _copySequenceToContiguousArray<A>(_:)(void *result)
{
  v1 = result[2];
  v2 = MEMORY[0x277D84F90];
  v3 = 0;
  if (v1)
  {
    v4 = 0;
    v5 = (MEMORY[0x277D84F90] + 32);
    v6 = result + 4;
    while (1)
    {
      v7 = v6[v4];
      if (!v3)
      {
        v8 = v2[3];
        if (((v8 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_24;
        }

        v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
        if (v9 <= 1)
        {
          v10 = 1;
        }

        else
        {
          v10 = v9;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi6offset_Sd7elementtGMd, &_ss23_ContiguousArrayStorageCySi6offset_Sd7elementtGMR);
        v11 = swift_allocObject();
        v12 = (_swift_stdlib_malloc_size(v11) - 32) / 16;
        v11[2] = v10;
        v11[3] = 2 * v12;
        v13 = (v11 + 4);
        v14 = v2[3];
        v15 = v14 >> 1;
        if (v2[2])
        {
          if (v11 != v2 || v13 >= &v2[2 * v15 + 4])
          {
            memmove(v11 + 4, v2 + 4, 16 * v15);
          }

          v2[2] = 0;
        }

        v5 = (v13 + 16 * v15);
        v3 = (v12 & 0x7FFFFFFFFFFFFFFFLL) - (v14 >> 1);

        v2 = v11;
      }

      v17 = __OFSUB__(v3--, 1);
      if (v17)
      {
        break;
      }

      *v5 = v4;
      v5[1] = v7;
      v5 += 2;
      if (v1 == ++v4)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_19:
  v18 = v2[3];
  if (v18 < 2)
  {
    return v2;
  }

  v19 = v18 >> 1;
  v17 = __OFSUB__(v19, v3);
  v20 = v19 - v3;
  if (!v17)
  {
    v2[2] = v20;
    return v2;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t specialized CodeBasedRankerHandler.extractUserHistoryFeatures(rankedActions:siriSignalsContainer:)(uint64_t *a1, uint64_t a2)
{
  v21[3] = type metadata accessor for SiriSignalsContainer();
  v21[4] = &protocol witness table for SiriSignalsContainer;
  v21[0] = a2;
  outlined init with copy of SignalProviding(v21, v20);
  outlined init with copy of SignalProviding(v21, v19);
  v4 = *a1;
  v5 = *(*a1 + 16);

  if (v5)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_11:
      specialized _ArrayBuffer._consumeAndCreateNew()(v4);
      v4 = v15;
    }

    v6 = type metadata accessor for RankedAction(0);
    v7 = 0;
    do
    {
      v17 = v6;
      v18 = &protocol witness table for RankedAction;
      __swift_allocate_boxed_opaque_existential_1(v16);
      if (v7 >= *(v4 + 16))
      {
        __break(1u);
LABEL_10:
        __break(1u);
        goto LABEL_11;
      }

      outlined init with copy of RankedAction();
      v8 = specialized FeatureExtracting.extract(from:)(v16);
      specialized _dictionaryUpCast<A, B, C, D>(_:)(v8);
      v10 = v9;

      specialized Dictionary.update(other:allowDuplicateKeys:)(v10, 0);

      __swift_destroy_boxed_opaque_existential_0(v16);
      v17 = v6;
      v18 = &protocol witness table for RankedAction;
      __swift_allocate_boxed_opaque_existential_1(v16);
      if (v7 >= *(v4 + 16))
      {
        goto LABEL_10;
      }

      outlined init with copy of RankedAction();
      v11 = specialized FeatureExtracting.extract(from:)(v16);
      specialized _dictionaryUpCast<A, B, C, D>(_:)(v11);
      v13 = v12;

      specialized Dictionary.update(other:allowDuplicateKeys:)(v13, 0);

      __swift_destroy_boxed_opaque_existential_0(v16);
      ++v7;
    }

    while (v7);
    *a1 = v4;
  }

  outlined destroy of AppLaunchCountFeatureExtractor(v19);
  outlined destroy of AppLaunchRecencyFeatureExtractor(v20);
  return __swift_destroy_boxed_opaque_existential_0(v21);
}