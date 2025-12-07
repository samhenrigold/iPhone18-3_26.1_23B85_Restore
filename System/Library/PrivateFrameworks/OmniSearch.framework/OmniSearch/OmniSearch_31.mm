uint64_t @objc SFCardSection.hydrateImages()(void *a1, int a2, void *aBlock, uint64_t a4, uint64_t a5)
{
  v7 = _Block_copy(aBlock);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = a1;
  v9 = a1;

  return _runTaskForBridgedAsyncMethod(_:)(a5, v8);
}

uint64_t @objc closure #1 in SFCollectionCardSection.hydrateImages()(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = @objc closure #1 in SFCollectionCardSection.hydrateImages();

  return SFCollectionCardSection.hydrateImages()();
}

uint64_t @objc closure #1 in SFCollectionCardSection.hydrateImages()()
{
  OUTLINED_FUNCTION_48();
  v1 = *(*v0 + 24);
  v2 = *(*v0 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_11();
  *v4 = v3;

  v1[2](v1);
  _Block_release(v1);
  OUTLINED_FUNCTION_127();

  return v5();
}

uint64_t outlined bridged method (pb) of @objc SFCollectionCardSection.cardSections.getter(void *a1)
{
  v1 = [a1 cardSections];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for SFCardSection();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t partial apply for @objc closure #1 in SFCollectionCardSection.hydrateImages()()
{
  OUTLINED_FUNCTION_78();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_63(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_84(v1);

  return v4(v3);
}

uint64_t partial apply for @objc closure #1 in SFVerticalLayoutCardSection.hydrateImages()()
{
  OUTLINED_FUNCTION_78();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_63(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_84(v1);

  return v4(v3);
}

uint64_t partial apply for @objc closure #1 in SFDetailedRowCardSection.hydrateImages()()
{
  OUTLINED_FUNCTION_78();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_63(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_84(v1);

  return v4(v3);
}

uint64_t objectdestroyTm_2()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t partial apply for @objc closure #1 in SFCardSection.hydrateImages()()
{
  OUTLINED_FUNCTION_78();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_63(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_84(v1);

  return v4(v3);
}

unint64_t type metadata accessor for SFCardSection()
{
  result = lazy cache variable for type metadata for SFCardSection;
  if (!lazy cache variable for type metadata for SFCardSection)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for SFCardSection);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_60(uint64_t result)
{
  v1[25] = result;
  v1[22] = v2;
  v1[18] = MEMORY[0x277D85DD0];
  return result;
}

uint64_t OUTLINED_FUNCTION_6_43()
{
  *(v0 + 88) = SFDetailedRowCardSection.hydrateImages();

  return swift_continuation_init();
}

uint64_t specialized _resumeUnsafeContinuation<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1 + 64) + 40);
  *v3 = a2;
  v3[1] = a3;
  return MEMORY[0x282200948]();
}

uint64_t _runTaskForBridgedAsyncMethod(_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for TaskPriority();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a1;
  v8[5] = a2;
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = &_sIeghH_IeAgH_TRTATu;
  v9[5] = v8;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v6, &_sIeAgH_ytIeAgHr_TRTATu, v9);
}

uint64_t SFImage.loadImageData()()
{
  *(v1 + 224) = v0;
  return MEMORY[0x2822009F8](SFImage.loadImageData());
}

{
  if (SFImage.shouldLoadImageData.getter())
  {
    objc_opt_self();
    v1 = 3.0;
    if (!swift_dynamicCastObjCClass())
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v1 = 3.0;
      }

      else
      {
        v1 = 1.0;
      }
    }

    v2 = v0[28];
    v3 = objc_opt_self();
    v0[10] = v0;
    v0[15] = v0 + 26;
    v0[11] = SFImage.loadImageData();
    v4 = swift_continuation_init();
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccy10Foundation4DataVSgs5NeverOGMd, &_sSccy10Foundation4DataVSgs5NeverOGMR);
    OUTLINED_FUNCTION_0_85(v5);
    v0[19] = 1107296256;
    v0[20] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSData?) -> () with result type Data?;
    v0[21] = &block_descriptor_3_0;
    v0[22] = v4;
    [v3 imageDataFromImage:v2 scale:0 isDarkStyle:v0 + 18 completion:v1];
    v6 = v0 + 10;
    goto LABEL_9;
  }

  v7 = [v0[28] badgingImage];
  v0[29] = v7;
  if (v7)
  {
    v8 = v7;
    v0[2] = v0;
    OUTLINED_FUNCTION_3_61();
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5NeverOGMd, &_sSccyyts5NeverOGMR);
    OUTLINED_FUNCTION_0_85(v9);
    v0[19] = 1107296256;
    OUTLINED_FUNCTION_2_65();
    [v8 loadImageDataWithCompletionHandler_];
    v6 = v0 + 2;
LABEL_9:

    return MEMORY[0x282200938](v6);
  }

  OUTLINED_FUNCTION_127();

  return v10();
}

{
  OUTLINED_FUNCTION_48();
  v1 = *v0;
  OUTLINED_FUNCTION_11();
  *v2 = v1;

  return MEMORY[0x2822009F8](SFImage.loadImageData());
}

{
  OUTLINED_FUNCTION_78();
  v1 = *(v0 + 216);
  if (v1 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    v3 = *(v0 + 208);
    isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data?(v3, v1);
  }

  [*(v0 + 224) setImageData_];

  v4 = [*(v0 + 224) badgingImage];
  *(v0 + 232) = v4;
  if (v4)
  {
    v5 = v4;
    *(v0 + 16) = v0;
    OUTLINED_FUNCTION_3_61();
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5NeverOGMd, &_sSccyyts5NeverOGMR);
    OUTLINED_FUNCTION_0_85(v6);
    *(v0 + 152) = 1107296256;
    OUTLINED_FUNCTION_2_65();
    [v5 loadImageDataWithCompletionHandler_];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    OUTLINED_FUNCTION_127();

    return v7();
  }
}

{
  OUTLINED_FUNCTION_48();
  v1 = *v0;
  OUTLINED_FUNCTION_11();
  *v2 = v1;

  return MEMORY[0x2822009F8](SFImage.loadImageData());
}

{
  OUTLINED_FUNCTION_48();

  OUTLINED_FUNCTION_127();

  return v1();
}

BOOL SFImage.shouldLoadImageData.getter()
{
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return 1;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return 1;
  }

  objc_opt_self();
  return swift_dynamicCastObjCClass() != 0;
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSData?) -> () with result type Data?(uint64_t a1, void *a2)
{
  v3 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v4 = a2;
    a2 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v6 = 0xF000000000000000;
  }

  return specialized _resumeUnsafeContinuation<A>(_:_:)(v3, a2, v6);
}

uint64_t @objc SFImage.loadImageData()(void *a1, int a2, void *aBlock)
{
  v4 = _Block_copy(aBlock);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = a1;
  v6 = a1;

  return _runTaskForBridgedAsyncMethod(_:)(&async function pointer to partial apply for @objc closure #1 in SFImage.loadImageData(), v5);
}

uint64_t @objc closure #1 in SFImage.loadImageData()(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = @objc closure #1 in SFImage.loadImageData();

  return SFImage.loadImageData()();
}

uint64_t @objc closure #1 in SFImage.loadImageData()()
{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v2 = *(v1 + 24);
  v3 = *(v1 + 16);
  v4 = *v0;
  OUTLINED_FUNCTION_11();
  *v5 = v4;

  v2[2](v2);
  _Block_release(v2);
  OUTLINED_FUNCTION_127();

  return v6();
}

uint64_t partial apply for @objc closure #1 in SFImage.loadImageData()()
{
  OUTLINED_FUNCTION_78();
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = partial apply for specialized closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:);

  return @objc closure #1 in SFImage.loadImageData()(v2, v3);
}

uint64_t _sIeghH_IeAgH_TR(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = partial apply for specialized closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:);

  return v6();
}

uint64_t _sIeghH_IeAgH_TRTA()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = partial apply for specialized closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:);

  return _sIeghH_IeAgH_TR(v2, v3, v4);
}

uint64_t _sIeAgH_ytIeAgHr_TR(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = partial apply for closure #2 in AnswerResolver.resolve(extractedResults:options:);

  return v7();
}

uint64_t objectdestroy_6Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t _sIeAgH_ytIeAgHr_TRTA(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_23(v6);
  *v7 = v8;
  v7[1] = partial apply for closure #2 in AnswerResolver.resolve(extractedResults:options:);

  return _sIeAgH_ytIeAgHr_TR(a1, v3, v4, v5);
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v22 - v10;
  outlined init with copy of TaskPriority?(a3, v22 - v10);
  v12 = type metadata accessor for TaskPriority();
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    outlined destroy of TaskPriority?(v11);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  if (*(a5 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v13 = dispatch thunk of Actor.unownedExecutor.getter();
    v15 = v14;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v16 = String.utf8CString.getter() + 32;
      v17 = swift_allocObject();
      *(v17 + 16) = a4;
      *(v17 + 24) = a5;

      if (v15 | v13)
      {
        v23[0] = 0;
        v23[1] = 0;
        v18 = v23;
        v23[2] = v13;
        v23[3] = v15;
      }

      else
      {
        v18 = 0;
      }

      v22[1] = 7;
      v22[2] = v18;
      v22[3] = v16;
      v20 = swift_task_create();

      outlined destroy of TaskPriority?(a3);

      return v20;
    }
  }

  else
  {
    v13 = 0;
    v15 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of TaskPriority?(a3);
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  if (v15 | v13)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v13;
    v23[7] = v15;
  }

  return swift_task_create();
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

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5TA()
{
  OUTLINED_FUNCTION_78();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_23(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_12(v1);

  return v4(v3);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5TA_20()
{
  OUTLINED_FUNCTION_78();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_23(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_12(v1);

  return v4(v3);
}

uint64_t OUTLINED_FUNCTION_0_85(uint64_t result)
{
  *(v1 + 200) = result;
  *(v1 + 144) = MEMORY[0x277D85DD0];
  return result;
}

void OUTLINED_FUNCTION_2_65()
{
  v1[20] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) () -> () with result type ();
  v1[21] = v0;
  v1[22] = v2;
}

uint64_t OUTLINED_FUNCTION_3_61()
{
  *(v0 + 24) = SFImage.loadImageData();

  return swift_continuation_init();
}

Swift::Bool __swiftcall String.containsHTMLTag()()
{
  v2 = v1;
  v3 = v0;
  v4 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  v5 = @nonobjc NSRegularExpression.init(pattern:options:)(0xD000000000000026, 0x800000025DBF07A0, 0);
  v6 = String.text.getter();
  v7 = MEMORY[0x25F89F730](v6);

  v8 = MEMORY[0x25F89F4C0](v3, v2);
  v9 = [v5 firstMatchInString:v8 options:0 range:{0, v7}];

  if (!v9)
  {
    return 0;
  }

  return 1;
}

Swift::String __swiftcall String.oms_collapseConsecutiveWordBreaks()()
{
  v2 = v1;
  v3 = v0;
  v4 = type metadata accessor for OSSignpostID();
  OUTLINED_FUNCTION_14();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v44 - v11;
  if (one-time initialization token for searchSignposter != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v13, static Logging.searchSignposter);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v14 = OSSignposter.logHandle.getter();
  v15 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v16 = OUTLINED_FUNCTION_172();
    *v16 = 0;
    v17 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_25D85C000, v14, v15, v17, "String+Extras.oms_collapseConsecutiveWordBreaks", "", v16, 2u);
    OUTLINED_FUNCTION_42_0();
  }

  (*(v6 + 16))(v9, v12, v4);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v18 = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v6 + 8))(v12, v4);
  if (one-time initialization token for consecutiveWordBreakRegex != -1)
  {
    OUTLINED_FUNCTION_0_86(&one-time initialization token for consecutiveWordBreakRegex);
  }

  if (static NSRegularExpression.consecutiveWordBreakRegex)
  {
    v19 = HIBYTE(v2) & 0xF;
    if ((v2 & 0x2000000000000000) == 0)
    {
      v19 = v3;
    }

    v20 = 7;
    if (((v2 >> 60) & ((v3 & 0x800000000000000) == 0)) != 0)
    {
      v20 = 11;
    }

    v44[2] = 15;
    v44[3] = v20 | (v19 << 16);
    v44[0] = v3;
    v44[1] = v2;
    v21 = static NSRegularExpression.consecutiveWordBreakRegex;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySS5IndexVGMd, &_sSnySS5IndexVGMR);
    OUTLINED_FUNCTION_1_77();
    lazy protocol witness table accessor for type _TransientAppEntityQuery<MemoryCreationQUResult> and conformance _TransientAppEntityQuery<A>(v22, v23, &_sSnySS5IndexVGMR, v24);
    lazy protocol witness table accessor for type String and conformance String();
    v25 = _NSRange.init<A, B>(_:in:)();
    v27 = v26;
    v28 = OUTLINED_FUNCTION_119();
    v29 = MEMORY[0x25F89F4C0](v28);
    v30 = MEMORY[0x25F89F4C0](12580, 0xE200000000000000);
    v31 = [v21 stringByReplacingMatchesInString:v29 options:0 range:v25 withTemplate:{v27, v30}];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_119();
    v32 = String.count.getter();
    if (v32 != String.count.getter())
    {
      if (one-time initialization token for answerSynthesis != -1)
      {
        OUTLINED_FUNCTION_7_1(&one-time initialization token for answerSynthesis);
      }

      v33 = type metadata accessor for Logger();
      __swift_project_value_buffer(v33, static Logging.answerSynthesis);

      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.info.getter();
      if (!OUTLINED_FUNCTION_88_0(v35))
      {

        goto LABEL_24;
      }

      v36 = swift_slowAlloc();
      *v36 = 134218240;
      OUTLINED_FUNCTION_119();
      *(v36 + 4) = String.count.getter();

      *(v36 + 12) = 2048;
      *(v36 + 14) = String.count.getter();

      _os_log_impl(&dword_25D85C000, v34, v35, "oms_trimCharacters: string length before collapsing: %ld and string length after collapsing: %ld", v36, 0x16u);
      OUTLINED_FUNCTION_42_0();
    }
  }

  else
  {
    if (one-time initialization token for answerSynthesis != -1)
    {
      OUTLINED_FUNCTION_7_1(&one-time initialization token for answerSynthesis);
    }

    v37 = type metadata accessor for Logger();
    __swift_project_value_buffer(v37, static Logging.answerSynthesis);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_88_0(v39))
    {
      v40 = OUTLINED_FUNCTION_172();
      *v40 = 0;
      _os_log_impl(&dword_25D85C000, v38, v39, "Failed to create regex for consecutive word break", v40, 2u);
      OUTLINED_FUNCTION_42_0();
    }
  }

LABEL_24:
  $defer #1 () in String.oms_collapseConsecutiveWordBreaks()(v18);

  v41 = OUTLINED_FUNCTION_119();
  result._object = v42;
  result._countAndFlagsBits = v41;
  return result;
}

uint64_t String.nilIfEmpty.getter(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  v3 = a1;

  return v3;
}

Swift::String __swiftcall String.camelCased(with:)(Swift::String with)
{
  object = with._object;
  countAndFlagsBits = with._countAndFlagsBits;
  v3 = String.lowercased()();
  v26 = countAndFlagsBits;
  v27 = object;
  v25 = &v26;
  v4 = specialized Collection.split(maxSplits:omittingEmptySubsequences:whereSeparator:)(0x7FFFFFFFFFFFFFFFLL, 1, partial apply for specialized closure #1 in Sequence<>.contains(_:), v24, v3._countAndFlagsBits, v3._object, &v26);
  v5 = *(v4 + 16);
  if (v5)
  {
    v30 = MEMORY[0x277D84F90];
    v6 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
    v8 = 0;
    v9 = v30;
    v23 = *(v4 + 16);
    v10 = (v4 + 56);
    while (v23 != v8)
    {
      if (v8 >= *(v4 + 16))
      {
        goto LABEL_15;
      }

      v11 = *(v10 - 2);
      v13 = *(v10 - 1);
      v12 = *v10;
      if (v8)
      {
        v26 = *(v10 - 3);
        v27 = v11;
        v28 = v13;
        v29 = v12;
        lazy protocol witness table accessor for type Substring and conformance Substring();
        v6 = StringProtocol.capitalized.getter();
        v14 = v6;
        v15 = v7;
      }

      else
      {

        v16 = Substring.lowercased()();
        v14 = v16._countAndFlagsBits;
        v15 = v16._object;
      }

      v30 = v9;
      v18 = *(v9 + 16);
      v17 = *(v9 + 24);
      if (v18 >= v17 >> 1)
      {
        v6 = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1);
        v9 = v30;
      }

      *(v9 + 16) = v18 + 1;
      v19 = v9 + 16 * v18;
      *(v19 + 32) = v14;
      *(v19 + 40) = v15;
      ++v8;
      v10 += 4;
      if (v5 == v8)
      {

        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {

    v9 = MEMORY[0x277D84F90];
LABEL_13:
    v26 = v9;
    v20 = OUTLINED_FUNCTION_88();
    __swift_instantiateConcreteTypeFromMangledNameV2(v20, v21);
    lazy protocol witness table accessor for type _TransientAppEntityQuery<MemoryCreationQUResult> and conformance _TransientAppEntityQuery<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR, MEMORY[0x277D83958]);
    OUTLINED_FUNCTION_24();
    BidirectionalCollection<>.joined(separator:)();

    v6 = OUTLINED_FUNCTION_88();
  }

  result._object = v7;
  result._countAndFlagsBits = v6;
  return result;
}

__C::_NSRange_optional __swiftcall String.nsRangeWithCompleteTokenMatch(of:)(Swift::String of)
{
  v3 = v2;
  v4 = v1;
  object = of._object;
  countAndFlagsBits = of._countAndFlagsBits;
  type metadata accessor for FeatureFlagService();
  v7 = swift_allocObject();
  v8 = String.nsRangeWithCompleteTokenMatch(of:featureFlagService:)(countAndFlagsBits, object, v7, v4, v3);
  v10 = v9;
  LOBYTE(object) = v11;

  v12 = object & 1;
  v13 = v8;
  v14 = v10;
  result.value.length = v14;
  result.value.location = v13;
  result.is_nil = v12;
  return result;
}

Swift::String_optional __swiftcall String.substringFromNSRange(_:)(__C::_NSRange a1)
{
  Range<>.init(_:in:)();
  if (v1)
  {
    v2 = 0;
    v3 = 0;
  }

  else
  {
    v4 = String.subscript.getter();
    v2 = MEMORY[0x25F89F5B0](v4);
    v3 = v5;
  }

  v6 = v2;
  v7 = v3;
  result.value._object = v7;
  result.value._countAndFlagsBits = v6;
  return result;
}

Swift::String __swiftcall String.removePossessivePronouns()()
{
  v2 = v1;
  v3 = v0;
  type metadata accessor for CharacterSet();
  OUTLINED_FUNCTION_14();
  v40 = v5;
  v41 = v4;
  MEMORY[0x28223BE20](v4);
  v39 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NLTagger();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo11NLTagSchemeaGMd, &_ss23_ContiguousArrayStorageCySo11NLTagSchemeaGMR);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_25DBC8180;
  v8 = *MEMORY[0x277CD8960];
  *(v7 + 32) = *MEMORY[0x277CD8960];
  v9 = v8;
  isa = NLTagger.__allocating_init(tagSchemes:)(v7).super.isa;
  outlined bridged method (mbgnn) of @objc NLTokenizer.string.setter(v3, v2, isa);
  type metadata accessor for LocalizedString();
  v11 = static LocalizedString.localizedString(forKey:)(0xD000000000000032, 0x800000025DBF90E0);
  v51 = MEMORY[0x277D84F90];
  v44 = v3;
  v45 = v2;
  v38 = v11;
  v46 = v11;
  v47 = v12;
  v42 = v12;
  v43 = isa;
  v48 = &v51;
  NLTagger.enumerateTags(in:unit:scheme:options:using:)();
  v13 = v51;
  v14 = *(v51 + 16);
  if (v14)
  {

    v15 = v13 + 16 * v14 + 24;
    while (v14 <= *(v13 + 16))
    {
      --v14;
      v16 = OUTLINED_FUNCTION_88();
      v17 = MEMORY[0x25F89F4C0](v16);

      v18 = OUTLINED_FUNCTION_24();
      v19 = MEMORY[0x25F89F4C0](v18);
      OUTLINED_FUNCTION_9_44();
      v22 = [v20 v21];

      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;

      v15 -= 16;
      if (!v14)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {

    v23 = v3;
    v25 = v2;
LABEL_5:
    v49 = v23;
    v50 = v25;
    v26 = v39;
    static CharacterSet.whitespacesAndNewlines.getter();
    lazy protocol witness table accessor for type String and conformance String();
    v15 = StringProtocol.trimmingCharacters(in:)();
    v28 = v27;
    (*(v40 + 8))(v26, v41);

    v29 = v15 == v3 && v28 == v2;
    if (v29 || (OUTLINED_FUNCTION_63_0(), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {

      goto LABEL_11;
    }
  }

  v41 = v15;
  if (one-time initialization token for memoryCreationQU != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  __swift_project_value_buffer(v32, static Logging.memoryCreationQU);

  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    *v35 = 136315650;
    v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v35 + 4) = v36;
    *(v35 + 12) = 2080;
    *(v35 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    *(v35 + 22) = 2080;
    OUTLINED_FUNCTION_63_0();
    *(v35 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    _os_log_impl(&dword_25D85C000, v33, v34, "Removed possessive pronouns %s in %s = %s", v35, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_42_0();
    OUTLINED_FUNCTION_42_0();
  }

  else
  {
  }

LABEL_11:
  v30 = OUTLINED_FUNCTION_63_0();
  result._object = v31;
  result._countAndFlagsBits = v30;
  return result;
}

void String.oms_trimCharacters(_:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = a1 + 56;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 56);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  v12 = MEMORY[0x277D84F90];
  while (v9)
  {
LABEL_9:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v15 = *(a1 + 48) + ((v11 << 10) | (16 * v14));
    v16 = specialized Collection.first.getter(*v15, *(v15 + 8));
    if ((v16 & 0x100000000) == 0)
    {
      v17 = v16;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = OUTLINED_FUNCTION_44();
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v21, v22, v23, v12);
        v12 = v24;
      }

      v18 = *(v12 + 16);
      v19 = *(v12 + 24);
      v20 = v18 + 1;
      if (v18 >= v19 >> 1)
      {
        v28 = v18 + 1;
        v25 = v12;
        v26 = *(v12 + 16);
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v19 > 1, v18 + 1, 1, v25);
        v18 = v26;
        v20 = v28;
        v12 = v27;
      }

      *(v12 + 16) = v20;
      *(v12 + 4 * v18 + 32) = v17;
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v10)
    {

      specialized RangeReplaceableCollection.filter(_:)(a2, a3, v12);
      String.UnicodeScalarView.append<A>(contentsOf:)();

      return;
    }

    v9 = *(v6 + 8 * v13);
    ++v11;
    if (v9)
    {
      v11 = v13;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t String.nsRangeWithCompleteTokenMatch(of:featureFlagService:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v107 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v108 = &v100 - v10;
  v11 = String.standardizeQuotations()(a4, a5);
  v13 = v12;
  v110 = String.standardizeQuotations()(a1, a2);
  v15 = v14;
  if (one-time initialization token for search != -1)
  {
LABEL_53:
    OUTLINED_FUNCTION_35_0(&one-time initialization token for search);
  }

  v16 = type metadata accessor for Logger();
  v17 = __swift_project_value_buffer(v16, static Logging.search);

  v106 = v17;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.info.getter();

  v20 = os_log_type_enabled(v18, v19);
  v113 = v15;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v116 = swift_slowAlloc();
    *v21 = 136315394;
    *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    *(v21 + 12) = 2080;
    *(v21 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    _os_log_impl(&dword_25D85C000, v18, v19, "Starting check to see if standardized string: “%s”, contains standardized key: “%s”", v21, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_42_0();
    OUTLINED_FUNCTION_42_0();
  }

  v22 = HIBYTE(v13) & 0xF;
  v111 = v11;
  v112 = v13;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v22 = v11 & 0xFFFFFFFFFFFFLL;
  }

  v23 = 7;
  if (((v13 >> 60) & ((v11 & 0x800000000000000) == 0)) != 0)
  {
    v23 = 11;
  }

  v109 = v23 | (v22 << 16);
  v24 = 4 * v22;
  v25 = 15;
  while (1)
  {
    v26 = v110;
    if (v24 <= v25 >> 14)
    {
      break;
    }

    v116 = v111;
    v117 = v112;
    v114 = v110;
    v115 = v113;
    v27 = type metadata accessor for Locale();
    __swift_storeEnumTagSinglePayload(v108, 1, 1, v27);
    v98 = lazy protocol witness table accessor for type String and conformance String();
    v99 = v98;
    v28 = StringProtocol.range<A>(of:options:range:locale:)();
    v25 = v29;
    v31 = v30;
    v32 = OUTLINED_FUNCTION_63_0();
    outlined destroy of (offset: Int, element: SearchResult)(v32, v33, &_s10Foundation6LocaleVSgMR);
    if ((v31 & 1) != 0 || (v28 ^ v25) < 0x4000)
    {
      break;
    }

    v34 = v111;
    v35 = v26;
    v36 = v112;
    v37 = String.distance(from:to:)();
    if (String.isCompleteToken(index:key:)(v37, v35, v113, v34, v36))
    {
      v116 = v28;
      v117 = v25;
      v114 = v111;
      v115 = v112;

      v38 = OUTLINED_FUNCTION_88();
      __swift_instantiateConcreteTypeFromMangledNameV2(v38, v39);
      OUTLINED_FUNCTION_1_77();
      lazy protocol witness table accessor for type _TransientAppEntityQuery<MemoryCreationQUResult> and conformance _TransientAppEntityQuery<A>(v40, v41, &_sSnySS5IndexVGMR, v42);
      v43 = _NSRange.init<A, B>(_:in:)();
LABEL_51:
      $defer #1 () in String.nsRangeWithCompleteTokenMatch(of:featureFlagService:)();

      return v43;
    }
  }

  if (((*(*v107 + 80))(11) & 1) == 0)
  {
    v83 = Logger.logObject.getter();
    v84 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_88_0(v84))
    {
      *OUTLINED_FUNCTION_172() = 0;
      OUTLINED_FUNCTION_100_3(&dword_25D85C000, v85, v86, "Photos MC internationalization disabled; returning early");
      OUTLINED_FUNCTION_42_0();
    }

    goto LABEL_38;
  }

  type metadata accessor for NLTagger();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo11NLTagSchemeaGMd, &_ss23_ContiguousArrayStorageCySo11NLTagSchemeaGMR);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_25DBC8180;
  v45 = *MEMORY[0x277CD8960];
  *(v44 + 32) = *MEMORY[0x277CD8960];
  v46 = v45;
  v47.super.isa = NLTagger.__allocating_init(tagSchemes:)(v44).super.isa;
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.debug.getter();
  v50 = OUTLINED_FUNCTION_88_0(v49);
  v51 = v113;
  v52 = v111;
  if (v50)
  {
    *OUTLINED_FUNCTION_172() = 0;
    OUTLINED_FUNCTION_100_3(&dword_25D85C000, v53, v54, "Starting NLTagger-based token matching");
    OUTLINED_FUNCTION_42_0();
  }

  v55 = MEMORY[0x277D84F90];
  v126[0] = MEMORY[0x277D84F90];
  outlined bridged method (mbgnn) of @objc NLTokenizer.string.setter(v26, v51, v47.super.isa);
  MEMORY[0x28223BE20](v56);
  *(&v100 - 4) = v26;
  *(&v100 - 3) = v51;
  v98 = v126;
  OUTLINED_FUNCTION_16_39(15, v57, v58, v59, v60, partial apply for closure #1 in String.nsRangeWithCompleteTokenMatch(of:featureFlagService:), (&v100 - 6));
  if (!*(v126[0] + 16))
  {

LABEL_38:
    v43 = 0;
    goto LABEL_51;
  }

  v125 = 0;
  v123 = 0;
  v124 = 1;
  v120 = v55;
  v121 = 0;
  v122 = 1;
  v61 = v112;
  outlined bridged method (mbgnn) of @objc NLTokenizer.string.setter(v52, v112, v47.super.isa);
  MEMORY[0x28223BE20](v62);
  *(&v100 - 8) = v52;
  *(&v100 - 7) = v61;
  *(&v100 - 6) = &v120;
  *(&v100 - 5) = v126;
  *(&v100 - 4) = &v125;
  *(&v100 - 3) = &v123;
  v98 = &v121;
  result = OUTLINED_FUNCTION_16_39(15, v109, v63, v64, v65, partial apply for closure #2 in String.nsRangeWithCompleteTokenMatch(of:featureFlagService:), (&v100 - 10));
  v43 = v123;
  v67 = v124;
  if ((v124 & 1) != 0 || v122 == 1)
  {
    v109 = v120;
    v68 = *(v120 + 16);
    if (v68)
    {
      v69 = 0;
      v106 = v109 + 32;
      v70 = &_ss10ArraySliceVySSGMd;
      v13 = 3;
      v15 = &_ss10ArraySliceVySSGMR;
      v71 = v68;
      v102 = v123;
      v101 = v124;
      v100 = v68;
      isa = v47.super.isa;
LABEL_22:
      v103 = v69 + 1;
      v107 = __swift_instantiateConcreteTypeFromMangledNameV2(v70, v15);
      v104 = v13;
      v11 = v13;
      v72 = v71;
      while (1)
      {
        if (!v72)
        {
          __break(1u);
          goto LABEL_53;
        }

        v116 = v109;
        v117 = v106;
        v73 = v69;
        v118 = v69;
        v119 = v11;
        OUTLINED_FUNCTION_2_66();
        v74 = v70;
        v75 = v15;
        lazy protocol witness table accessor for type _TransientAppEntityQuery<MemoryCreationQUResult> and conformance _TransientAppEntityQuery<A>(&lazy protocol witness table cache variable for type ArraySlice<String> and conformance ArraySlice<A>, v70, v15, v76);

        OUTLINED_FUNCTION_24();
        v77 = BidirectionalCollection<>.joined(separator:)();
        v79 = v78;
        v13 = v110;

        if (v77 == v13 && v79 == v113)
        {
          break;
        }

        v81 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v81)
        {
          goto LABEL_41;
        }

        v11 += 2;
        --v72;
        v70 = v74;
        v15 = v75;
        v69 = v73;
        if (!v72)
        {
          --v71;
          v13 = v104 + 2;
          v69 = v103;
          v43 = v102;
          v67 = v101;
          v47.super.isa = isa;
          if (v103 != v100)
          {
            goto LABEL_22;
          }

          goto LABEL_31;
        }
      }

LABEL_41:
      v52 = v111;
      v87 = v13;
      v82 = v112;
      v116 = v111;
      v117 = v112;
      v114 = v87;
      v115 = v113;
      v88 = type metadata accessor for Locale();
      v89 = v108;
      __swift_storeEnumTagSinglePayload(v108, 1, 1, v88);
      v98 = lazy protocol witness table accessor for type String and conformance String();
      v99 = v98;
      StringProtocol.range<A>(of:options:range:locale:)();
      v91 = v90;
      outlined destroy of (offset: Int, element: SearchResult)(v89, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
      if (v91)
      {

        goto LABEL_50;
      }

      OUTLINED_FUNCTION_9_44();
      v43 = String.distance(from:to:)();
      OUTLINED_FUNCTION_9_44();
      result = String.distance(from:to:)();
      v121 = result;
      v122 = 0;
      v47.super.isa = isa;
    }

    else
    {
LABEL_31:
      v52 = v111;
      v82 = v112;
      if (v67 & 1) != 0 || (v122)
      {
        goto LABEL_46;
      }
    }
  }

  else
  {
    v82 = v112;
  }

  if (!__OFSUB__(v121, v43))
  {
    OUTLINED_FUNCTION_9_44();
    Range<>.init(_:in:)();
    if ((v92 & 1) == 0)
    {
      OUTLINED_FUNCTION_9_44();
      v93 = String.subscript.getter();
      v94 = MEMORY[0x25F89F5B0](v93);
      v96 = v95;

      v97 = String.containsValidPrecedingAndSucceedingCharacters(index:key:)(v43, v94, v96, v52, v82);

      if (v97)
      {

        goto LABEL_51;
      }

LABEL_49:

LABEL_50:

      v43 = 0;
      goto LABEL_51;
    }

LABEL_46:

    goto LABEL_49;
  }

  __break(1u);
  return result;
}

uint64_t String.standardizeQuotations()(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  v2 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  return v2;
}

void $defer #1 () in String.nsRangeWithCompleteTokenMatch(of:featureFlagService:)()
{
  if (one-time initialization token for search != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logging.search);

  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v2 = 136315394;
    *(v2 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    *(v2 + 12) = 2080;
    *(v2 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    _os_log_impl(&dword_25D85C000, oslog, v1, "Ending check to see if standardized string: “%s” contains standardized key: “%s”", v2, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F8A1050](v4, -1, -1);
    MEMORY[0x25F8A1050](v2, -1, -1);
  }
}

uint64_t String.isCompleteToken(index:key:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = specialized _copyCollectionToContiguousArray<A>(_:)(a4, a5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  result = swift_initStackObject();
  *(result + 16) = xmmword_25DBC8900;
  *(result + 32) = 32;
  *(result + 40) = 0xE100000000000000;
  *(result + 48) = 39;
  *(result + 56) = 0xE100000000000000;
  *(result + 64) = 34;
  *(result + 72) = 0xE100000000000000;
  *(result + 80) = 92;
  *(result + 88) = 0xE100000000000000;
  *(result + 96) = 47;
  *(result + 104) = 0xE100000000000000;
  *(result + 112) = 91;
  *(result + 120) = 0xE100000000000000;
  *(result + 128) = 45;
  *(result + 136) = 0xE100000000000000;
  *(result + 144) = 46;
  *(result + 152) = 0xE100000000000000;
  *(result + 160) = 10911970;
  *(result + 168) = 0xA300000000000000;
  v8 = a1 - 1;
  if (__OFSUB__(a1, 1))
  {
    __break(1u);
    goto LABEL_15;
  }

  v9 = result;
  if ((v8 & 0x8000000000000000) != 0)
  {
    swift_setDeallocating();
    specialized _ContiguousArrayStorage.__deallocating_deinit();
  }

  else
  {
    if (v8 >= v6[1].value._countAndFlagsBits)
    {
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v22 = a1;
    v10 = &v6[v8];
    object = v10[2].value._object;
    countAndFlagsBits = v10[2].value._countAndFlagsBits;
    v24 = object;
    MEMORY[0x28223BE20](result);
    p_countAndFlagsBits = &countAndFlagsBits;

    v12 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v20, v9);
    swift_setDeallocating();
    specialized _ContiguousArrayStorage.__deallocating_deinit();

    if (!v12)
    {

      return 0;
    }

    a1 = v22;
  }

  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25DBC8920;
  *(inited + 32) = 32;
  *(inited + 40) = 0xE100000000000000;
  *(inited + 48) = 46;
  *(inited + 56) = 0xE100000000000000;
  *(inited + 64) = 44;
  *(inited + 72) = 0xE100000000000000;
  *(inited + 80) = 39;
  *(inited + 88) = 0xE100000000000000;
  *(inited + 96) = 34;
  *(inited + 104) = 0xE100000000000000;
  *(inited + 112) = 58;
  *(inited + 120) = 0xE100000000000000;
  *(inited + 128) = 59;
  *(inited + 136) = 0xE100000000000000;
  *(inited + 144) = 33;
  *(inited + 152) = 0xE100000000000000;
  *(inited + 160) = 63;
  *(inited + 168) = 0xE100000000000000;
  *(inited + 176) = 92;
  *(inited + 184) = 0xE100000000000000;
  *(inited + 192) = 47;
  *(inited + 200) = 0xE100000000000000;
  *(inited + 208) = 93;
  *(inited + 216) = 0xE100000000000000;
  *(inited + 224) = 45;
  *(inited + 232) = 0xE100000000000000;
  *(inited + 240) = 10911970;
  *(inited + 248) = 0xA300000000000000;
  result = String.count.getter();
  v14 = a1 + result;
  if (__OFADD__(a1, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v14 >= v6[1].value._countAndFlagsBits)
  {

    swift_setDeallocating();
    specialized _ContiguousArrayStorage.__deallocating_deinit();
    return 1;
  }

  if ((v14 & 0x8000000000000000) == 0)
  {
    v15 = &v6[v14];
    v17 = v15[2].value._countAndFlagsBits;
    v16 = v15[2].value._object;

    countAndFlagsBits = v17;
    v24 = v16;
    MEMORY[0x28223BE20](v18);
    p_countAndFlagsBits = &countAndFlagsBits;
    v19 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v20, inited);
    swift_setDeallocating();
    specialized _ContiguousArrayStorage.__deallocating_deinit();

    return v19;
  }

LABEL_17:
  __break(1u);
  return result;
}

NLTagger __swiftcall NLTagger.__allocating_init(tagSchemes:)(Swift::OpaquePointer tagSchemes)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  type metadata accessor for NLTagScheme(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v3 = [v1 initWithTagSchemes_];

  return v3;
}

uint64_t closure #1 in String.nsRangeWithCompleteTokenMatch(of:featureFlagService:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  if (!a1)
  {
    goto LABEL_7;
  }

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  if (v7 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v9 == v10)
  {

    return 1;
  }

  v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v12 & 1) == 0)
  {
LABEL_7:
    v13 = String.subscript.getter();
    v14 = MEMORY[0x25F89F5B0](v13);
    v16 = v15;

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    v17 = *(*a6 + 16);
    specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v17);
    v18 = *a6;
    *(v18 + 16) = v17 + 1;
    v19 = v18 + 16 * v17;
    *(v19 + 32) = v14;
    *(v19 + 40) = v16;
  }

  return 1;
}

void closure #2 in String.nsRangeWithCompleteTokenMatch(of:featureFlagService:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, unint64_t *a8, uint64_t a9, uint64_t a10)
{
  if (!a1)
  {
    goto LABEL_7;
  }

  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;
  if (v13 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v15 == v16)
  {

    return;
  }

  v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v18 & 1) == 0)
  {
LABEL_7:
    v19 = String.subscript.getter();
    v20 = MEMORY[0x25F89F5B0](v19);
    v22 = v21;

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    v23 = *(*a6 + 16);
    specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v23);
    v24 = *a6;
    *(v24 + 16) = v23 + 1;
    v25 = v24 + 16 * v23;
    *(v25 + 32) = v20;
    *(v25 + 40) = v22;
    v26 = *a8;
    if ((*a8 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v26 < *(*a7 + 16))
    {
      v27 = *a7 + 16 * v26;
      if (v20 == *(v27 + 32) && v22 == *(v27 + 40))
      {
      }

      else
      {
        v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v29 & 1) == 0)
        {
          *a8 = 0;
          *a9 = 0;
          *(a9 + 8) = 1;
          return;
        }
      }

      v30 = *a8;
      if (!*a8)
      {
        *a9 = String.distance(from:to:)();
        *(a9 + 8) = 0;
        v30 = *a8;
      }

      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (!v31)
      {
        *a8 = v32;
        if (v32 == *(*a7 + 16))
        {
          *a10 = String.distance(from:to:)();
          *(a10 + 8) = 0;
        }

        return;
      }

LABEL_25:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_25;
  }
}

Swift::Bool __swiftcall String.isAContinuousSubset(of:)(Swift::OpaquePointer of)
{
  if (!*(of._rawValue + 2))
  {
    return 0;
  }

  v3 = v2;
  v4 = v1;
  v5 = 0;
  v6 = &_ss10ArraySliceVySSGMd;
  v7 = 3;
  v8 = &_ss10ArraySliceVySSGMR;
  v9 = *(of._rawValue + 2);
  v20 = v9;
  while (2)
  {
    v21 = v5 + 1;
    result = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v8);
    v22 = v9;
    v23 = v7;
    do
    {
      if (!v9)
      {
        __break(1u);
        return result;
      }

      v11 = v5;
      OUTLINED_FUNCTION_2_66();
      v12 = v6;
      v13 = v8;
      lazy protocol witness table accessor for type _TransientAppEntityQuery<MemoryCreationQUResult> and conformance _TransientAppEntityQuery<A>(&lazy protocol witness table cache variable for type ArraySlice<String> and conformance ArraySlice<A>, v6, v8, v14);

      OUTLINED_FUNCTION_24();
      v15 = BidirectionalCollection<>.joined(separator:)();
      v17 = v16;

      if (v15 == v4 && v17 == v3)
      {

        return 1;
      }

      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v19)
      {
        return 1;
      }

      v7 += 2;
      --v9;
      v6 = v12;
      v8 = v13;
      v5 = v11;
    }

    while (v9);
    result = 0;
    v9 = v22 - 1;
    v7 = v23 + 2;
    v5 = v21;
    if (v21 != v20)
    {
      continue;
    }

    break;
  }

  return result;
}

uint64_t String.containsValidPrecedingAndSucceedingCharacters(index:key:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = specialized _copyCollectionToContiguousArray<A>(_:)(a4, a5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  result = swift_initStackObject();
  *(result + 16) = xmmword_25DBC8930;
  *(result + 32) = 93;
  *(result + 40) = 0xE100000000000000;
  *(result + 48) = 41;
  *(result + 56) = 0xE100000000000000;
  *(result + 64) = 125;
  *(result + 72) = 0xE100000000000000;
  *(result + 80) = 37;
  *(result + 88) = 0xE100000000000000;
  v8 = a1 - 1;
  if (__OFSUB__(a1, 1))
  {
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  v23 = xmmword_25DBC8930;
  if ((v8 & 0x8000000000000000) != 0)
  {
    swift_setDeallocating();
    specialized _ContiguousArrayStorage.__deallocating_deinit();
  }

  else
  {
    if (v8 >= v6[1].value._countAndFlagsBits)
    {
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v10 = &v6[v8];
    object = v10[2].value._object;
    countAndFlagsBits = v10[2].value._countAndFlagsBits;
    v25 = object;
    MEMORY[0x28223BE20](result);
    p_countAndFlagsBits = &countAndFlagsBits;

    v12 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v21, v9);
    swift_setDeallocating();
    specialized _ContiguousArrayStorage.__deallocating_deinit();

    if (v12)
    {

      v13 = 0;
      return v13 & 1;
    }
  }

  inited = swift_initStackObject();
  *(inited + 16) = v23;
  *(inited + 32) = 91;
  *(inited + 40) = 0xE100000000000000;
  *(inited + 48) = 40;
  *(inited + 56) = 0xE100000000000000;
  *(inited + 64) = 123;
  *(inited + 72) = 0xE100000000000000;
  *(inited + 80) = 37;
  *(inited + 88) = 0xE100000000000000;
  result = String.count.getter();
  v15 = a1 + result;
  if (__OFADD__(a1, result))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v15 >= v6[1].value._countAndFlagsBits)
  {

    swift_setDeallocating();
    specialized _ContiguousArrayStorage.__deallocating_deinit();
    v13 = 1;
    return v13 & 1;
  }

  if ((v15 & 0x8000000000000000) == 0)
  {
    v16 = &v6[v15];
    v18 = v16[2].value._countAndFlagsBits;
    v17 = v16[2].value._object;

    countAndFlagsBits = v18;
    v25 = v17;
    MEMORY[0x28223BE20](v19);
    p_countAndFlagsBits = &countAndFlagsBits;
    v20 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v21, inited);
    swift_setDeallocating();
    specialized _ContiguousArrayStorage.__deallocating_deinit();

    v13 = !v20;
    return v13 & 1;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t closure #1 in String.removePossessivePronouns()(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  v10 = String.subscript.getter();
  MEMORY[0x25F89F5B0](v10);

  String.lowercased()();

  if (one-time initialization token for memoryCreationQU != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logging.memoryCreationQU);
  v12 = a1;

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 136315394;
    *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    *(v15 + 12) = 2080;
    v17 = a8;
    if (a1)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v15 + 14) = v18;
    _os_log_impl(&dword_25D85C000, v13, v14, "Word %s is tagged as %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F8A1050](v16, -1, -1);
    MEMORY[0x25F8A1050](v15, -1, -1);

    a8 = v17;
  }

  else
  {
  }

  lazy protocol witness table accessor for type String and conformance String();
  v19 = StringProtocol.contains<A>(_:)();

  if (v19)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySS5IndexVGMd, &_sSnySS5IndexVGMR);
    lazy protocol witness table accessor for type _TransientAppEntityQuery<MemoryCreationQUResult> and conformance _TransientAppEntityQuery<A>(&lazy protocol witness table cache variable for type Range<String.Index> and conformance Range<A>, &_sSnySS5IndexVGMd, &_sSnySS5IndexVGMR, MEMORY[0x277D83D30]);
    v20 = _NSRange.init<A, B>(_:in:)();
    v22 = v21;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    v23 = *(*a8 + 16);
    specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(v23);
    v24 = *a8;
    *(v24 + 16) = v23 + 1;
    v25 = v24 + 16 * v23;
    *(v25 + 32) = v20;
    *(v25 + 40) = v22;
  }

  return 1;
}

uint64_t specialized RangeReplaceableCollection.filter(_:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v20 = 0;
  v21 = 0xE000000000000000;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {

    v17 = 0;
    goto LABEL_26;
  }

  v7 = 0;
  v22 = a2 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    if ((a2 & 0x1000000000000000) != 0)
    {
      v11 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
      v13 = v12;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v19[0] = a1;
        v19[1] = v22;
        v9 = v19 + v7;
        v11 = *(v19 + v7);
        if (*(v19 + v7) < 0)
        {
          switch(__clz(v11 ^ 0xFF))
          {
            case 0x1Au:
LABEL_23:
              v11 = v9[1] & 0x3F | ((v11 & 0x1F) << 6);
              v13 = 2;
              break;
            case 0x1Bu:
LABEL_24:
              v11 = ((v11 & 0xF) << 12) | ((v9[1] & 0x3F) << 6) | v9[2] & 0x3F;
              v13 = 3;
              break;
            case 0x1Cu:
LABEL_25:
              v11 = ((v11 & 0xF) << 18) | ((v9[1] & 0x3F) << 12) | ((v9[2] & 0x3F) << 6) | v9[3] & 0x3F;
              v13 = 4;
              break;
            default:
              goto LABEL_14;
          }

          goto LABEL_15;
        }
      }

      else
      {
        v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if ((a1 & 0x1000000000000000) == 0)
        {
          v8 = _StringObject.sharedUTF8.getter();
        }

        v9 = (v8 + v7);
        v10 = *(v8 + v7);
        v11 = *(v8 + v7);
        if (v10 < 0)
        {
          switch(__clz(v11 ^ 0xFF))
          {
            case 0x1Au:
              goto LABEL_23;
            case 0x1Bu:
              goto LABEL_24;
            case 0x1Cu:
              goto LABEL_25;
            default:
              break;
          }
        }
      }

LABEL_14:
      v13 = 1;
    }

LABEL_15:
    v14 = *(a3 + 16);
    v15 = (a3 + 32);
    while (v14)
    {
      v16 = *v15++;
      --v14;
      if (v16 == v11)
      {
        goto LABEL_20;
      }
    }

    String.UnicodeScalarView.append(_:)();
LABEL_20:
    v7 += v13;
  }

  while (v7 < v5);

  v17 = v20;
LABEL_26:

  return v17;
}

uint64_t $defer #1 () in String.oms_collapseConsecutiveWordBreaks()(uint64_t a1)
{
  v1 = type metadata accessor for OSSignpostError();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OSSignpostID();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for searchSignposter != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v9, static Logging.searchSignposter);
  v10 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v11 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    if ((*(v2 + 88))(v4, v1) == *MEMORY[0x277D85B00])
    {
      v12 = "[Error] Interval already ended";
    }

    else
    {
      (*(v2 + 8))(v4, v1);
      v12 = "";
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_25D85C000, v10, v11, v14, "String+Extras.oms_collapseConsecutiveWordBreaks", v12, v13, 2u);
    MEMORY[0x25F8A1050](v13, -1, -1);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t *NSRegularExpression.consecutiveWordBreakRegex.unsafeMutableAddressor()
{
  if (one-time initialization token for consecutiveWordBreakRegex != -1)
  {
    OUTLINED_FUNCTION_0_86(&one-time initialization token for consecutiveWordBreakRegex);
  }

  return &static NSRegularExpression.consecutiveWordBreakRegex;
}

id one-time initialization function for consecutiveWordBreakRegex()
{
  v0 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  result = @nonobjc NSRegularExpression.init(pattern:options:)(0xD00000000000002DLL, 0x800000025DBF9120, 0);
  static NSRegularExpression.consecutiveWordBreakRegex = result;
  return result;
}

uint64_t static NSRegularExpression.consecutiveWordBreakRegex.getter()
{
  if (one-time initialization token for consecutiveWordBreakRegex != -1)
  {
    OUTLINED_FUNCTION_0_86(&one-time initialization token for consecutiveWordBreakRegex);
  }

  v0 = static NSRegularExpression.consecutiveWordBreakRegex;
  v1 = static NSRegularExpression.consecutiveWordBreakRegex;
  return v0;
}

id @nonobjc NSRegularExpression.init(pattern:options:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x25F89F4C0](a1);

  v10[0] = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v6;
}

uint64_t specialized Collection.split(maxSplits:omittingEmptySubsequences:whereSeparator:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v51 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_41;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    String.subscript.getter();
    OUTLINED_FUNCTION_10_43();
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
    v14 = v35;
    v9 = *(v35 + 16);
    a7 = *(v35 + 24);
LABEL_37:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_38:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_41:
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a7 > 1, v10, 1, v14);
    v14 = v37;
    goto LABEL_38;
  }

  v7 = a4;
  v14 = 4 * v16;
  v49 = MEMORY[0x277D84F90];
  v17 = 15;
  while (1)
  {
    v47 = v17;
    while (1)
    {
      v13 = v17 >> 14;
      if (v17 >> 14 == v14)
      {
        v17 = v47;
        goto LABEL_30;
      }

      OUTLINED_FUNCTION_8_47();
      v18 = String.subscript.getter();
      v12 = v19;
      v50[0] = v18;
      v50[1] = v19;
      v20 = v51(v50);
      if (v8)
      {

        return v14;
      }

      v21 = v20;

      if (v21)
      {
        break;
      }

      OUTLINED_FUNCTION_8_47();
      v17 = String.index(after:)();
    }

    v23 = (v47 >> 14 == v13) & a2;
    if (v23)
    {
      goto LABEL_20;
    }

    if (v13 < v47 >> 14)
    {
      break;
    }

    v48 = String.subscript.getter();
    v43 = v25;
    v44 = v24;
    v42 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v29 = OUTLINED_FUNCTION_44();
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v29, v30, v31, v32);
      v49 = v33;
    }

    v13 = *(v49 + 16);
    v27 = *(v49 + 24);
    v12 = v13 + 1;
    if (v13 >= v27 >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v27 > 1, v13 + 1, 1, v49);
      v49 = v34;
    }

    *(v49 + 16) = v12;
    v28 = (v49 + 32 * v13);
    v28[4] = v48;
    v28[5] = v44;
    v28[6] = v43;
    v28[7] = v42;
LABEL_20:
    OUTLINED_FUNCTION_8_47();
    v17 = String.index(after:)();
    if ((v23 & 1) == 0 && *(v49 + 16) == a1)
    {
LABEL_30:
      if (v17 >> 14 == v14 && (a2 & 1) != 0)
      {

        return v49;
      }

      if (v14 < v17 >> 14)
      {
        __break(1u);
      }

      else
      {
        String.subscript.getter();
        OUTLINED_FUNCTION_10_43();
        v14 = v49;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_36:
          v9 = *(v14 + 16);
          a7 = *(v14 + 24);
          goto LABEL_37;
        }
      }

      v38 = OUTLINED_FUNCTION_44();
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v38, v39, v40, v14);
      v14 = v41;
      goto LABEL_36;
    }
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type Substring and conformance Substring()
{
  result = lazy protocol witness table cache variable for type Substring and conformance Substring;
  if (!lazy protocol witness table cache variable for type Substring and conformance Substring)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Substring and conformance Substring);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Substring and conformance Substring;
  if (!lazy protocol witness table cache variable for type Substring and conformance Substring)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Substring and conformance Substring);
  }

  return result;
}

unint64_t type metadata accessor for NLTagger()
{
  result = lazy cache variable for type metadata for NLTagger;
  if (!lazy cache variable for type metadata for NLTagger)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NLTagger);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_86(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_10_43()
{
}

uint64_t OUTLINED_FUNCTION_16_39(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  return NLTagger.enumerateTags(in:unit:scheme:options:using:)();
}

uint64_t TaskGroup.oms_results.getter(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v2[5] = *(a2 - 8);
  v2[6] = swift_task_alloc();
  type metadata accessor for Optional();
  v2[7] = swift_task_alloc();
  v3 = type metadata accessor for TaskGroup.Iterator();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](TaskGroup.oms_results.getter);
}

uint64_t TaskGroup.oms_results.getter()
{
  *(v0 + 16) = static Array._allocateUninitialized(_:)();
  TaskGroup.makeAsyncIterator()();
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_0_87(v1);

  return MEMORY[0x2822002E8](v2);
}

{

  return MEMORY[0x2822009F8](TaskGroup.oms_results.getter);
}

{
  v1 = v0[7];
  v2 = v0[4];
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    (*(v0[9] + 8))(v0[10], v0[8]);
    v3 = v0[2];

    v4 = v0[1];

    return v4(v3);
  }

  else
  {
    (*(v0[5] + 32))(v0[6], v1, v2);
    type metadata accessor for Array();
    Array.append(_:)();
    v6 = swift_task_alloc();
    v0[11] = v6;
    *v6 = v0;
    v7 = OUTLINED_FUNCTION_0_87(v6);

    return MEMORY[0x2822002E8](v7);
  }
}

uint64_t UTType.searchToolExportedExperiences.unsafeMutableAddressor()
{
  if (one-time initialization token for searchToolExportedExperiences != -1)
  {
    OUTLINED_FUNCTION_38_11(&one-time initialization token for searchToolExportedExperiences);
  }

  v0 = type metadata accessor for UTType();

  return __swift_project_value_buffer(v0, static UTType.searchToolExportedExperiences);
}

uint64_t one-time initialization function for searchToolExportedExperiences()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v5 - v1;
  v3 = type metadata accessor for UTType();
  __swift_allocate_value_buffer(v3, static UTType.searchToolExportedExperiences);
  __swift_project_value_buffer(v3, static UTType.searchToolExportedExperiences);
  static UTType.data.getter();
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v3);
  return UTType.init(exportedAs:conformingTo:)();
}

uint64_t static UTType.searchToolExportedExperiences.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for searchToolExportedExperiences != -1)
  {
    OUTLINED_FUNCTION_38_11(&one-time initialization token for searchToolExportedExperiences);
  }

  v2 = type metadata accessor for UTType();
  v3 = __swift_project_value_buffer(v2, static UTType.searchToolExportedExperiences);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static UTType.searchToolExportedExperiences.setter(uint64_t a1)
{
  if (one-time initialization token for searchToolExportedExperiences != -1)
  {
    OUTLINED_FUNCTION_38_11(&one-time initialization token for searchToolExportedExperiences);
  }

  v2 = type metadata accessor for UTType();
  v3 = __swift_project_value_buffer(v2, static UTType.searchToolExportedExperiences);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static UTType.searchToolExportedExperiences.modify(uint64_t a1))(uint64_t a1)
{
  if (one-time initialization token for searchToolExportedExperiences != -1)
  {
    OUTLINED_FUNCTION_38_11(&one-time initialization token for searchToolExportedExperiences);
  }

  v1 = type metadata accessor for UTType();
  __swift_project_value_buffer(v1, static UTType.searchToolExportedExperiences);
  swift_beginAccess();
  return static FlightSnippet.Status.allCases.modify;
}

id static NSUserDefaults.makeModelCatalogAjaxUserDefaults()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = @nonobjc NSUserDefaults.init(suiteName:)(0xD00000000000001BLL, 0x800000025DBF9150);
  if (!v1)
  {
    if (one-time initialization token for utilities != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Logging.utilities);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_25D85C000, v3, v4, "Failed to create UserDefaults for ModelCatalog.Ajax", v5, 2u);
      MEMORY[0x25F8A1050](v5, -1, -1);
    }
  }

  return v1;
}

void *static NSUserDefaults.makeOmniSearchUserDefaults()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  result = @nonobjc NSUserDefaults.init(suiteName:)(0xD000000000000014, 0x800000025DBF6940);
  if (!result)
  {
    result = OUTLINED_FUNCTION_2_67();
    __break(1u);
  }

  return result;
}

uint64_t UserDefault.wrappedValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = type metadata accessor for Optional();
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = v15 - v8;
  v10 = *(a1 + 28);
  v11 = *(v2 + *(a1 + 32));
  v12 = MEMORY[0x25F89F4C0](*(v2 + v10), *(v2 + v10 + 8), v7);
  v13 = [v11 objectForKey_];

  if (v13)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined init with take of Any(v15, v16);
  }

  else
  {
    memset(v16, 0, sizeof(v16));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v9, 0, 1, v5);
    return (*(*(v5 - 8) + 32))(a2, v9, v5);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v9, 1, 1, v5);
    return (*(*(v5 - 8) + 16))(a2, v2, v5);
  }
}

uint64_t UserDefault.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + *(a2 + 32));
  v6 = *(a2 + 16);
  v7 = _bridgeAnythingToObjectiveC<A>(_:)();
  v8 = MEMORY[0x25F89F4C0](*(v2 + *(a2 + 28)), *(v2 + *(a2 + 28) + 8));
  [v5 setObject:v7 forKey:v8];
  swift_unknownObjectRelease();

  v9 = *(*(v6 - 8) + 8);

  return v9(a1, v6);
}

uint64_t UserDefault.init(key:defaultValue:container:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for UserDefault(0, a5, a3, a4);
  v13 = (a6 + *(v12 + 28));
  *v13 = a1;
  v13[1] = a2;
  result = (*(*(a5 - 8) + 32))(a6, a3, a5);
  *(a6 + *(v12 + 32)) = a4;
  return result;
}

uint64_t UserDefault.key.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 28));

  return v2;
}

void UserDefault.container.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);

  *(v2 + v4) = a1;
}

uint64_t key path setter for UserDefault.wrappedValue : <A>UserDefault<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 8);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = &v13 - v6;
  (*(v8 + 16))(&v13 - v6, v5);
  v11 = type metadata accessor for UserDefault(0, v4, v9, v10);
  return UserDefault.wrappedValue.setter(v7, v11);
}

void (*UserDefault.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v5;
  *v5 = a2;
  v5[1] = v2;
  v6 = *(a2 + 16);
  v5[2] = v6;
  v7 = *(v6 - 8);
  v5[3] = v7;
  v8 = *(v7 + 64);
  v5[4] = __swift_coroFrameAllocStub(v8);
  v9 = __swift_coroFrameAllocStub(v8);
  v5[5] = v9;
  UserDefault.wrappedValue.getter(a2, v9);
  return UserDefault.wrappedValue.modify;
}

void UserDefault.wrappedValue.modify(uint64_t **a1, char a2)
{
  v5 = *a1;
  v6 = (*a1)[4];
  v7 = (*a1)[5];
  if (a2)
  {
    v8 = OUTLINED_FUNCTION_1_78();
    v9(v8);
    UserDefault.wrappedValue.setter(v6, v3);
    (*(v4 + 8))(v7, v2);
  }

  else
  {
    UserDefault.wrappedValue.setter((*a1)[5], *v5);
  }

  free(v7);
  free(v6);

  free(v5);
}

Swift::Void __swiftcall UserDefault.removeObject()()
{
  v2 = *(v1 + *(v0 + 32));
  v3 = MEMORY[0x25F89F4C0](*(v1 + *(v0 + 28)), *(v1 + *(v0 + 28) + 8));
  [v2 removeObjectForKey_];
}

uint64_t UserDefaultsTokenGeneration.key.getter()
{
  v1 = *v0;

  return v1;
}

id UserDefaultsTokenGeneration.projectedValue.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v4 = v1[2];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v4;

  return v4;
}

void *static NSUserDefaults.makeTokenGenerationUserDefaults()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  result = @nonobjc NSUserDefaults.init(suiteName:)(0xD000000000000019, 0x800000025DBF91C0);
  if (!result)
  {
    result = OUTLINED_FUNCTION_2_67();
    __break(1u);
  }

  return result;
}

uint64_t UserDefaultsTokenGeneration.init(key:container:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t UserDefaultsTokenGeneration.wrappedValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = v2[1];
  v7 = v2[2];
  v8 = MEMORY[0x25F89F4C0](v5, v6);
  v9 = [v7 objectForKey_];

  if (v9)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined init with take of Any(&v13, v14);
  }

  else
  {
    memset(v14, 0, sizeof(v14));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v10 = *(a1 + 16);
  v11 = swift_dynamicCast();
  return __swift_storeEnumTagSinglePayload(a2, v11 ^ 1u, 1, v10);
}

uint64_t key path setter for UserDefaultsTokenGeneration.wrappedValue : <A>UserDefaultsTokenGeneration<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 8);
  v6 = type metadata accessor for Optional();
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v15 - v8;
  (*(v10 + 16))(&v15 - v8, a1, v7);
  v13 = type metadata accessor for UserDefaultsTokenGeneration(0, v5, v11, v12);
  return UserDefaultsTokenGeneration.wrappedValue.setter(v9, v13);
}

uint64_t UserDefaultsTokenGeneration.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  v10 = v2[2];
  (*(v6 + 16))(&v14 - v8, a1, v5, v7);
  v11 = 0;
  if (__swift_getEnumTagSinglePayload(v9, 1, v4) != 1)
  {
    v11 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(*(v4 - 8) + 8))(v9, v4);
  }

  v12 = MEMORY[0x25F89F4C0](*v2, v2[1]);
  [v10 setObject:v11 forKey:v12];
  swift_unknownObjectRelease();

  return (*(v6 + 8))(a1, v5);
}

void (*UserDefaultsTokenGeneration.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v5;
  *v5 = a2;
  v5[1] = v2;
  v6 = type metadata accessor for Optional();
  v5[2] = v6;
  v7 = *(v6 - 8);
  v5[3] = v7;
  v8 = *(v7 + 64);
  v5[4] = __swift_coroFrameAllocStub(v8);
  v9 = __swift_coroFrameAllocStub(v8);
  v5[5] = v9;
  UserDefaultsTokenGeneration.wrappedValue.getter(a2, v9);
  return UserDefaultsTokenGeneration.wrappedValue.modify;
}

void UserDefaultsTokenGeneration.wrappedValue.modify(uint64_t **a1, char a2)
{
  v5 = *a1;
  v6 = (*a1)[4];
  v7 = (*a1)[5];
  if (a2)
  {
    v8 = OUTLINED_FUNCTION_1_78();
    v9(v8);
    UserDefaultsTokenGeneration.wrappedValue.setter(v6, v3);
    (*(v4 + 8))(v7, v2);
  }

  else
  {
    UserDefaultsTokenGeneration.wrappedValue.setter((*a1)[5], *v5);
  }

  free(v7);
  free(v6);

  free(v5);
}

Swift::Void __swiftcall UserDefaultsTokenGeneration.removeObject()()
{
  v1 = v0[2];
  v2 = MEMORY[0x25F89F4C0](*v0, v0[1]);
  [v1 removeObjectForKey_];
}

uint64_t UserDefault.with(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[13] = a4;
  v5[14] = v4;
  v5[11] = a2;
  v5[12] = a3;
  v5[10] = a1;
  v5[15] = *(a4 + 16);
  v6 = type metadata accessor for Optional();
  v5[16] = v6;
  v5[17] = *(v6 - 8);
  v5[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](UserDefault.with(_:_:));
}

uint64_t UserDefault.with(_:_:)()
{
  v1 = *(v0 + 112);
  v2 = *(v1 + *(*(v0 + 104) + 32));
  v3 = (v1 + *(*(v0 + 104) + 28));
  v4 = *v3;
  v5 = v3[1];
  v6 = MEMORY[0x25F89F4C0](*v3, v5);
  v7 = [v2 objectForKey_];

  if (v7)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined init with take of Any((v0 + 48), (v0 + 16));
  }

  else
  {
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
  }

  v8 = *(v0 + 144);
  v9 = *(v0 + 120);
  v10 = *(v0 + 88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v11 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v8, v11 ^ 1u, 1, v9);
  v12 = _bridgeAnythingToObjectiveC<A>(_:)();
  v13 = MEMORY[0x25F89F4C0](v4, v5);
  [v2 setObject:v12 forKey:v13];

  swift_unknownObjectRelease();
  v16 = (v10 + *v10);
  v14 = swift_task_alloc();
  *(v0 + 152) = v14;
  *v14 = v0;
  v14[1] = UserDefault.with(_:_:);

  return v16();
}

{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = UserDefault.with(_:_:);
  }

  else
  {
    v2 = UserDefault.with(_:_:);
  }

  return MEMORY[0x2822009F8](v2);
}

{
  OUTLINED_FUNCTION_4_55();
  (*(v2 + 8))(v1, v0);

  v4 = *(v3 + 8);

  return v4();
}

{
  OUTLINED_FUNCTION_4_55();
  (*(v2 + 8))(v1, v0);

  v4 = *(v3 + 8);

  return v4();
}

void $defer #1 <A>() in UserDefault.with(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - v8;
  v10 = *(a3 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, a1, v6, v12);
  if (__swift_getEnumTagSinglePayload(v9, 1, a3) == 1)
  {
    (*(v7 + 8))(v9, v6);
    v17 = type metadata accessor for UserDefault(0, a3, v15, v16);
    v18 = *(a2 + *(v17 + 32));
    v19 = MEMORY[0x25F89F4C0](*(a2 + *(v17 + 28)), *(a2 + *(v17 + 28) + 8));
    [v18 removeObjectForKey_];
  }

  else
  {
    (*(v10 + 32))(v14, v9, a3);
    v22 = type metadata accessor for UserDefault(0, a3, v20, v21);
    v23 = *(a2 + *(v22 + 32));
    v24 = _bridgeAnythingToObjectiveC<A>(_:)();
    v25 = MEMORY[0x25F89F4C0](*(a2 + *(v22 + 28)), *(a2 + *(v22 + 28) + 8));
    [v23 setObject:v24 forKey:v25];
    swift_unknownObjectRelease();

    (*(v10 + 8))(v14, a3);
  }
}

id @nonobjc NSUserDefaults.init(suiteName:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = MEMORY[0x25F89F4C0](a1);
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithSuiteName_];

  return v4;
}

unint64_t type metadata completion function for UserDefault(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for NSUserDefaults();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UserDefault(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *(((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }
  }

  else
  {
    v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
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

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void storeEnumTagSinglePayload for UserDefault(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = a3 - v8;
    if (((((v9 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v12 = v11 + 1;
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
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              *v17 = a2 & 0x7FFFFFFF;
              v17[1] = 0;
            }

            else
            {
              v17[1] = (a2 - 1);
            }
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((((v9 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((((v9 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

uint64_t type metadata instantiation function for UserDefaultsTokenGeneration(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for UserDefaultsTokenGeneration(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for UserDefaultsTokenGeneration(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t OUTLINED_FUNCTION_2_67()
{

  return _assertionFailure(_:_:file:line:flags:)();
}

void OUTLINED_FUNCTION_4_55()
{
  v2 = v0[15];
  v3 = v0[14];
  v4 = v0[18];

  $defer #1 <A>() in UserDefault.with(_:_:)(v4, v3, v2);
}

id LinkCardBuilder.buildHorizontallyScrollingCardSection()()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  *&v3 = MEMORY[0x28223BE20](v1).n128_u64[0];
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [*(v0 + 24) buildResult];
  v7 = *(v0 + 16);
  v8 = v6;
  v9 = [v7 attributeSet];
  v10 = [v9 URL];

  if (v10)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    URL._bridgeToObjectiveC()(v11);
    v10 = v12;
    (*(v2 + 8))(v5, v1);
  }

  [v8 setUrl_];

  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  outlined bridged method (mbnn) of @objc SFSearchResult.sectionBundleIdentifier.setter(v13, v14, v8);

  v15 = [objc_opt_self() resultBuilderWithResult_];
  v16 = [v15 buildHorizontallyScrollingCardSection];
  v17 = [objc_allocWithZone(MEMORY[0x277D4C278]) init];
  v18 = [objc_allocWithZone(MEMORY[0x277D4C290]) init];
  [v17 setCollectionStyle_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_25DBC8190;
  *(v19 + 32) = v16;
  v20 = v16;
  outlined bridged method (mbnn) of @objc SFCollectionCardSection.cardSections.setter();

  return v17;
}

uint64_t LinkCardBuilder.__allocating_init(csItem:resultBuilder:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t LinkCardBuilder.init(csItem:resultBuilder:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t LinkCardBuilder.__deallocating_deinit()
{
  DefaultSpotlightCardBuilder.deinit();

  return swift_deallocClassInstance();
}

void outlined bridged method (mbnn) of @objc SFSearchResult.sectionBundleIdentifier.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x25F89F4C0](a1);

  [a3 setSectionBundleIdentifier_];
}

uint64_t PhotoCardBuilder.__allocating_init(csItem:resultBuilder:imageCornerRoundingStyle:)(uint64_t a1, uint64_t a2, int a3)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = a3;
  return result;
}

uint64_t PhotoCardBuilder.init(csItem:resultBuilder:imageCornerRoundingStyle:)(uint64_t a1, uint64_t a2, int a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  return v3;
}

id PhotoCardBuilder.buildHorizontallyScrollingCardSection()()
{
  v1 = v0;
  v2 = *(v0 + 24);
  v3 = [v2 buildHorizontallyScrollingCardSection];
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4 && (v5 = v4, (v6 = [v4 thumbnail]) != 0))
  {
    v7 = v6;
    [v6 setSize_];
    [v7 setCornerRoundingStyle_];
    v8 = [objc_allocWithZone(MEMORY[0x277D4C278]) init];
    v9 = [objc_allocWithZone(MEMORY[0x277D4C290]) init];
    [v8 setCollectionStyle_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_25DBC8190;
    *(v10 + 32) = v5;
    outlined bridged method (mbnn) of @objc SFCollectionCardSection.cardSections.setter();

    return v8;
  }

  else
  {

    if (one-time initialization token for search != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logging.search);

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      *(v15 + 4) = v2;
      *v16 = v2;
      v17 = v2;
      _os_log_impl(&dword_25D85C000, v13, v14, "[VISUAL] Failed to get photo visual from spotlight, resultBuilder: %@", v15, 0xCu);
      outlined destroy of NSObject?(v16);
      MEMORY[0x25F8A1050](v16, -1, -1);
      MEMORY[0x25F8A1050](v15, -1, -1);
    }

    v18 = [v2 buildHorizontallyScrollingCardSection];

    return v18;
  }
}

uint64_t PhotoCardBuilder.__deallocating_deinit()
{
  DefaultSpotlightCardBuilder.deinit();

  return swift_deallocClassInstance();
}

id static DefaultSpotlightCardBuilder.buildCommand(item:)(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D4C4D8]) init];
  v3 = [a1 uniqueIdentifier];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  outlined bridged method (mbnn) of @objc SFOpenCoreSpotlightItemCommand.coreSpotlightIdentifier.setter(v4, v6, v2);
  v7 = outlined bridged method (pb) of @objc CSSearchableItem.bundleID.getter(a1);
  if (v8)
  {
    v9 = MEMORY[0x25F89F4C0](v7);
  }

  else
  {
    v9 = 0;
  }

  [v2 setApplicationBundleIdentifier_];

  return v2;
}

uint64_t DefaultSpotlightCardBuilder.init(csItem:resultBuilder:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

double DefaultSpotlightCardBuilder.buildVerticalCardSections()()
{
  v1 = (*(*v0 + 128))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v2 = swift_allocObject();
  *&result = 1;
  *(v2 + 16) = xmmword_25DBC8190;
  *(v2 + 32) = v1;
  return result;
}

uint64_t DefaultSpotlightCardBuilder.buildInlineCardSections()()
{
  v1 = [*(v0 + 24) buildInlineCardSections];
  type metadata accessor for SFCardSection();
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

id DefaultSpotlightCardBuilder.buildHorizontallyScrollingCardSection()()
{
  v1 = [*(v0 + 24) buildHorizontallyScrollingCardSection];

  return v1;
}

uint64_t DefaultSpotlightCardBuilder.__allocating_init(csItem:resultBuilder:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t DefaultSpotlightCardBuilder.__deallocating_deinit()
{
  DefaultSpotlightCardBuilder.deinit();

  return swift_deallocClassInstance();
}

void outlined bridged method (mbnn) of @objc SFOpenCoreSpotlightItemCommand.coreSpotlightIdentifier.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x25F89F4C0](a1);

  [a3 setCoreSpotlightIdentifier_];
}

uint64_t outlined bridged method (pb) of @objc CSSearchableItem.bundleID.getter(void *a1)
{
  v1 = [a1 bundleID];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t SFCard.snippetPluginModel.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Layout();
  OUTLINED_FUNCTION_14();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_36();
  v9 = v8 - v7;
  if (SFCard.isEmpty.getter())
  {
    v10 = type metadata accessor for RGPluginModel();

    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v10);
  }

  else
  {
    v12 = v1;
    CodableCard.init(wrappedValue:)();
    (*(v5 + 104))(v9, *MEMORY[0x277D46C38], v3);
    Layout.snippetModel()();
    (*(v5 + 8))(v9, v3);
    v13 = type metadata accessor for RGPluginModel();
    return __swift_storeEnumTagSinglePayload(a1, 0, 1, v13);
  }
}

id SFCard.init(data:)(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    return 0;
  }

  v2 = objc_allocWithZone(MEMORY[0x277D4C728]);
  v3 = OUTLINED_FUNCTION_119();
  outlined copy of Data._Representation(v3, v4);
  v5 = OUTLINED_FUNCTION_119();
  v7 = @nonobjc _SFPBCard.init(data:)(v5, v6);
  if (!v7)
  {
    v12 = OUTLINED_FUNCTION_119();
    outlined consume of Data?(v12, v13);
    return 0;
  }

  v8 = v7;
  v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithProtobuf_];

  v10 = OUTLINED_FUNCTION_119();
  outlined consume of Data?(v10, v11);
  if (v9)
  {
  }

  return v9;
}

uint64_t SFCard.data.getter()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D4C728]) initWithFacade_];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 data];
  if (!v3)
  {

    return 0;
  }

  v4 = v3;
  v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

  return v5;
}

id _s10OmniSearch18EntityCardBuildingPAAE15cardForEntities_7contextSo6SFCardCSayAA0bC0VG_AA0bC13VisualContextCtFZAA0cD7BuilderV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v41 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v40 - v5;
  v7 = type metadata accessor for SearchResult(0);
  OUTLINED_FUNCTION_14();
  v43 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_36();
  v12 = v11 - v10;
  type metadata accessor for SearchEntity(0);
  OUTLINED_FUNCTION_18_8();
  MEMORY[0x28223BE20](v13);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a1 + 16);
  if (v18)
  {
    v19 = *(v14 + 84);
    v20 = a1 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v21 = *(v15 + 72);
    v22 = MEMORY[0x277D84F90];
    v42 = v7;
    do
    {
      OUTLINED_FUNCTION_1_79();
      _s10OmniSearch0B6EntityVWOcTm_2(v20, v17, v23);
      outlined init with copy of SearchResult?(&v17[v19], v6);
      _s10OmniSearch0B6EntityVWOhTm_1(v17, v2);
      if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
      {
        outlined destroy of IntentApplication?(v6, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
      }

      else
      {
        outlined init with take of SearchResult(v6, v12);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v28 = OUTLINED_FUNCTION_44();
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v28, v29, v30, v22);
          v22 = v31;
        }

        v25 = *(v22 + 16);
        v24 = *(v22 + 24);
        v2 = (v25 + 1);
        if (v25 >= v24 >> 1)
        {
          v32 = OUTLINED_FUNCTION_106_6(v24);
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v32, v33, v34, v22);
          v22 = v35;
        }

        *(v22 + 16) = v2;
        OUTLINED_FUNCTION_9_45();
        outlined init with take of SearchResult(v12, v22 + v26 + *(v27 + 72) * v25);
        v7 = v42;
      }

      v20 += v21;
      --v18;
    }

    while (v18);
  }

  else
  {
    v22 = MEMORY[0x277D84F90];
  }

  if (*(v22 + 16))
  {
    type metadata accessor for ResultSectionBuilder();
    v36 = swift_allocObject();
    v37 = v41;
    *(v36 + 16) = v22;
    *(v36 + 24) = v37;

    v38 = ResultSectionBuilder.buildCard()();
  }

  else
  {

    return [objc_allocWithZone(MEMORY[0x277D4C230]) init];
  }

  return v38;
}

id specialized static EntityCardBuilding.cardForEntities(_:context:)(uint64_t a1, uint64_t a2)
{
  v28 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v27 - v4;
  v6 = type metadata accessor for SearchResult(0);
  v30 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SearchEntity(0);
  MEMORY[0x28223BE20](v9);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 16);
  if (v14)
  {
    v15 = *(v10 + 84);
    v16 = a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v17 = *(v11 + 72);
    v18 = MEMORY[0x277D84F90];
    v29 = v6;
    do
    {
      _s10OmniSearch0B6EntityVWOcTm_2(v16, v13, type metadata accessor for SearchEntity);
      outlined init with copy of SearchResult?(&v13[v15], v5);
      _s10OmniSearch0B6EntityVWOhTm_1(v13, type metadata accessor for SearchEntity);
      if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
      {
        outlined destroy of IntentApplication?(v5, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
      }

      else
      {
        outlined init with take of SearchResult(v5, v8);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v18 + 16) + 1, 1, v18);
          v18 = v21;
        }

        v20 = *(v18 + 16);
        v19 = *(v18 + 24);
        if (v20 >= v19 >> 1)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v19 > 1, v20 + 1, 1, v18);
          v18 = v22;
        }

        *(v18 + 16) = v20 + 1;
        outlined init with take of SearchResult(v8, v18 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v20);
        v6 = v29;
      }

      v16 += v17;
      --v14;
    }

    while (v14);
  }

  else
  {
    v18 = MEMORY[0x277D84F90];
  }

  if (*(v18 + 16))
  {
    type metadata accessor for ResultSectionBuilder();
    v23 = swift_allocObject();
    v24 = v28;
    *(v23 + 16) = v18;
    *(v23 + 24) = v24;

    v25 = ResultSectionBuilder.buildCard()();
  }

  else
  {

    return [objc_allocWithZone(MEMORY[0x277D4C230]) init];
  }

  return v25;
}

id static EntityCardBuilding.cardForEntities(_:context:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v41 = a4;
  v39 = a2;
  v40 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v39 - v6;
  v8 = type metadata accessor for SearchResult(0);
  OUTLINED_FUNCTION_14();
  v43 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_36();
  v13 = v12 - v11;
  type metadata accessor for SearchEntity(0);
  OUTLINED_FUNCTION_18_8();
  MEMORY[0x28223BE20](v14);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a1 + 16);
  if (v19)
  {
    v20 = *(v15 + 84);
    v21 = a1 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
    v22 = *(v16 + 72);
    v23 = MEMORY[0x277D84F90];
    v42 = v8;
    do
    {
      OUTLINED_FUNCTION_1_79();
      _s10OmniSearch0B6EntityVWOcTm_2(v21, v18, v24);
      outlined init with copy of SearchResult?(&v18[v20], v7);
      _s10OmniSearch0B6EntityVWOhTm_1(v18, a1);
      if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
      {
        outlined destroy of IntentApplication?(v7, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
      }

      else
      {
        outlined init with take of SearchResult(v7, v13);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = OUTLINED_FUNCTION_44();
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v29, v30, v31, v23);
          v23 = v32;
        }

        v26 = *(v23 + 16);
        v25 = *(v23 + 24);
        a1 = v26 + 1;
        if (v26 >= v25 >> 1)
        {
          v33 = OUTLINED_FUNCTION_106_6(v25);
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v33, v34, v35, v23);
          v23 = v36;
        }

        *(v23 + 16) = a1;
        OUTLINED_FUNCTION_9_45();
        outlined init with take of SearchResult(v13, v23 + v27 + *(v28 + 72) * v26);
        v8 = v42;
      }

      v21 += v22;
      --v19;
    }

    while (v19);
  }

  else
  {
    v23 = MEMORY[0x277D84F90];
  }

  v37 = (*(v41 + 16))(v23, v39, v40);

  if (!v37)
  {
    return [objc_allocWithZone(MEMORY[0x277D4C230]) init];
  }

  return v37;
}

void SFCard.cardDetails.getter()
{
  v1 = outlined bridged method (pb) of @objc SFCard.cardSections.getter(v0);
  if (v1)
  {
    v2 = v1;
    v3 = specialized Array.count.getter();
    v4 = 0;
    v5 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v3 == v4)
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        lazy protocol witness table accessor for type [String] and conformance [A]();
        v17 = BidirectionalCollection<>.joined(separator:)();
        v19 = v18;

        goto LABEL_16;
      }

      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x25F89FFD0](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v6 = *(v2 + 8 * v4 + 32);
      }

      v7 = v6;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      swift_getObjectType();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13SFCardSectionCmMd, &_sSo13SFCardSectionCmMR);
      v8 = String.init<A>(describing:)();
      v10 = v9;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = OUTLINED_FUNCTION_44();
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v14);
        v5 = v15;
      }

      v12 = *(v5 + 16);
      v11 = *(v5 + 24);
      if (v12 >= v11 >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v11 > 1);
        v5 = v16;
      }

      *(v5 + 16) = v12 + 1;
      v13 = v5 + 16 * v12;
      *(v13 + 32) = v8;
      *(v13 + 40) = v10;
      ++v4;
    }

    __break(1u);
LABEL_18:
    __break(1u);
  }

  else
  {
    v17 = 0;
    v19 = 0xE000000000000000;
LABEL_16:
    MEMORY[0x25F89F6C0](v17, v19);

    MEMORY[0x25F89F6C0](93, 0xE100000000000000);
  }
}

id static EntityCardBuilding.cardForSearchResults(_:context:)(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  type metadata accessor for ResultSectionBuilder();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  v5 = ResultSectionBuilder.buildCard()();

  return v5;
}

{
  return static EntityCardBuilding.cardForSearchResults(_:context:)(a1, a2);
}

Swift::Int CardSectionOption.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x25F8A0680](v1);
  return Hasher._finalize()();
}

id EntityCardBuilder.cardForSearchResult(_:_:_:)(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for SearchResult(0);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v9);
  v11 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v68 = &v60 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v60 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v60 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v60 - v21;
  v67 = *a2;
  v23 = SearchResultItem.experience.getter();
  if (v23)
  {
    v24 = (*(*v23 + 128))();

    if (v24)
    {
      if (!SFCard.isEmpty.getter())
      {
        goto LABEL_6;
      }
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMd, &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR);
  v24 = CodableNSSecureCoding.wrappedValue.getter();
  LOBYTE(v69) = v67;
  EntityCardBuilder.sectionForCSItem(_:_:_:)(v24, &v69, a3, a4);

  [objc_allocWithZone(MEMORY[0x277D4C230]) init];
  v25 = OUTLINED_FUNCTION_112_2();
  outlined bridged method (mbnn) of @objc SFCard.cardSections.setter(v25, v24);
LABEL_6:
  v65 = v8;
  v26 = v24;
  if (one-time initialization token for visual != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  v28 = __swift_project_value_buffer(v27, static Logging.visual);
  _s10OmniSearch0B6EntityVWOcTm_2(a1, v22, type metadata accessor for SearchResult);
  _s10OmniSearch0B6EntityVWOcTm_2(a1, v19, type metadata accessor for SearchResult);
  _s10OmniSearch0B6EntityVWOcTm_2(a1, v16, type metadata accessor for SearchResult);
  v29 = v68;
  _s10OmniSearch0B6EntityVWOcTm_2(a1, v68, type metadata accessor for SearchResult);
  v30 = v26;
  v66 = v28;
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v31, v32))
  {
    v61 = v32;
    v62 = v31;
    v64 = v11;
    v33 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v71 = v60;
    *v33 = 136316418;
    SearchResultItem.type.getter(&v69);
    SearchResultKey.rawValue.getter();
    _s10OmniSearch0B6EntityVWOhTm_1(v22, type metadata accessor for SearchResult);
    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v33 + 4) = v34;
    *(v33 + 12) = 2080;
    v63 = v30;
    SFCard.cardDetails.getter();
    v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v33 + 14) = v35;
    *(v33 + 22) = 2080;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMd, &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR);
    v36 = CodableNSSecureCoding.wrappedValue.getter();
    v69 = outlined bridged method (ob) of @objc CSSearchableItem.bundleID.getter(v36);
    v70 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    String.init<A>(describing:)();
    _s10OmniSearch0B6EntityVWOhTm_1(v19, type metadata accessor for SearchResult);
    v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v33 + 24) = v38;
    *(v33 + 32) = 2080;
    v39 = CodableNSSecureCoding.wrappedValue.getter();
    v40 = [v39 attributeSet];

    v69 = outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.contentType.getter(v40);
    v70 = v41;
    String.init<A>(describing:)();
    _s10OmniSearch0B6EntityVWOhTm_1(v16, type metadata accessor for SearchResult);
    v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v33 + 34) = v42;
    *(v33 + 42) = 2080;
    LOBYTE(v69) = v67;
    String.init<A>(describing:)();
    v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v33 + 44) = v43;
    *(v33 + 52) = 2080;
    v44 = CodableNSSecureCoding.wrappedValue.getter();
    v45 = [v44 attributeSet];

    v46 = CSSearchableItemAttributeSet.spotlightSearchResult.getter();
    if (v46)
    {
      v47 = outlined bridged method (ob) of @objc SFSearchResult.sectionBundleIdentifier.getter(v46);
    }

    else
    {
      v47 = 0;
      v48 = 0;
    }

    v11 = v64;
    v69 = v47;
    v70 = v48;
    String.init<A>(describing:)();
    OUTLINED_FUNCTION_0_89();
    _s10OmniSearch0B6EntityVWOhTm_1(v68, v49);
    v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v33 + 54) = v50;
    v32 = v62;
    _os_log_impl(&dword_25D85C000, v62, v61, "[VISUAL] SearchResult: %s, card: %s, bundle: %s, contentType: %s, option: %s, section: %s", v33, 0x3Eu);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_42_0();
    OUTLINED_FUNCTION_42_0();

    v30 = v63;
  }

  else
  {

    _s10OmniSearch0B6EntityVWOhTm_1(v29, type metadata accessor for SearchResult);
    _s10OmniSearch0B6EntityVWOhTm_1(v16, type metadata accessor for SearchResult);
    _s10OmniSearch0B6EntityVWOhTm_1(v19, type metadata accessor for SearchResult);
    _s10OmniSearch0B6EntityVWOhTm_1(v22, type metadata accessor for SearchResult);
  }

  if (!outlined bridged method (ob) of @objc SFCard.cardSections.getter(v30) || (specialized Array.count.getter(), OUTLINED_FUNCTION_112_2(), , !v32))
  {
    _s10OmniSearch0B6EntityVWOcTm_2(a1, v11, type metadata accessor for SearchResult);
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = v30;
      v55 = swift_slowAlloc();
      v69 = v55;
      *v53 = 136315138;
      SearchResultItem.type.getter(&v71);
      SearchResultKey.rawValue.getter();
      OUTLINED_FUNCTION_0_89();
      _s10OmniSearch0B6EntityVWOhTm_1(v11, v56);
      v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v53 + 4) = v57;
      _os_log_impl(&dword_25D85C000, v51, v52, "[VISUAL] Card is empty or nil unexpectedly for SearchResult: %s", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v55);
      v30 = v54;
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_42_0();
    }

    else
    {

      OUTLINED_FUNCTION_0_89();
      _s10OmniSearch0B6EntityVWOhTm_1(v11, v58);
    }
  }

  return v30;
}

BOOL SFCard.isEmpty.getter()
{
  if (!outlined bridged method (pb) of @objc SFCard.cardSections.getter(v0))
  {
    return 1;
  }

  specialized Array.count.getter();
  OUTLINED_FUNCTION_112_2();

  return v0 < 1;
}

uint64_t EntityCardBuilder.sectionForCSItem(_:_:_:)(void *a1, char *a2, uint64_t a3, uint64_t a4)
{
  v7 = *a2;
  v8 = outlined bridged method (pb) of @objc CSSearchableItem.bundleID.getter(a1);
  v10 = &one-time initialization token for typeDisplayRepresentation;
  if (v9)
  {
    if (v8 == 0xD00000000000001ALL && v9 == 0x800000025DBEE6C0)
    {
    }

    else
    {
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        v13 = objc_allocWithZone(MEMORY[0x277D65898]);

        v14 = @nonobjc SPSearchQueryContext.init(search:)(a3, a4);
        v15 = [a1 attributeSet];
        v16 = CSSearchableItemAttributeSet.spotlightSearchResult.getter();

        if (v16)
        {
          v17 = [v16 backendData];
          if (v17)
          {
            v18 = v17;
            *&v119[0] = static String._unconditionallyBridgeFromObjectiveC(_:)();
            *(&v119[0] + 1) = v19;
            [v18 __swift_setObject_forKeyedSubscript_];

            swift_unknownObjectRelease();
          }
        }

        if (CSSearchableItem.isSupportedSharedLinkType.getter())
        {
          if (v16)
          {
            v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            outlined bridged method (mbnn) of @objc SFSearchResult.sectionBundleIdentifier.setter(v20, v21, v16);
LABEL_21:
            v31 = [objc_opt_self() resultBuilderWithResult_];
LABEL_27:
            v41 = v31;
            [v41 setQueryContext_];
            type metadata accessor for DefaultSpotlightCardBuilder();
            v42 = swift_allocObject();
            v42[2] = a1;
            v42[3] = v41;
            objc_opt_self();
            v43 = swift_dynamicCastObjCClass();
            v44 = a1;
            if (v43)
            {

              type metadata accessor for LinkCardBuilder();
              v42 = swift_allocObject();
              v42[2] = v44;
              v42[3] = v43;
              v45 = v44;
            }

            else
            {

              objc_opt_self();
              v45 = swift_dynamicCastObjCClass();
              if (v45)
              {
                v46 = v45;
                type metadata accessor for PhotoCardBuilder();
                swift_allocObject();
                v47 = PhotoCardBuilder.init(csItem:resultBuilder:imageCornerRoundingStyle:)(v44, v46, 1);
                v48 = v44;
                v49 = v41;

                v42 = v47;
              }
            }

            v50 = *v42;
            if (v7)
            {
              v51 = (*(v50 + 112))(v45);
            }

            else
            {
              v51 = (*(v50 + 120))(v45);
            }

            v29 = v51;
            if (!specialized Array.count.getter())
            {
              goto LABEL_62;
            }

            specialized Array._checkSubscript(_:wasNativeTypeChecked:)();
            if ((v29 & 0xC000000000000001) != 0)
            {
              v52 = MEMORY[0x25F89FFD0](0, v29);
            }

            else
            {
              v52 = *(v29 + 32);
            }

            v53 = v52;
            objc_opt_self();
            v54 = swift_dynamicCastObjCClass();
            if (!v54)
            {
              goto LABEL_61;
            }

            v55 = v54;
            v56 = [v54 title];
            if (!v56)
            {
              goto LABEL_61;
            }

            v102 = v55;
            v57 = outlined bridged method (ob) of @objc SFText.text.getter(v56);
            if (!v58)
            {
              goto LABEL_61;
            }

            v59 = v58;
            v104 = v57;
            v107 = v53;
            v109 = v14;
            v112 = v16;
            type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for SPSearchSuggestion, 0x277D658A0);
            ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
            v61 = [objc_opt_self() bundleForClass_];
            v62 = MEMORY[0x25F89F4C0](0x454C5449545F4F4ELL, 0xE800000000000000);
            v63 = MEMORY[0x25F89F4C0](0, 0xE000000000000000);
            v64 = MEMORY[0x25F89F4C0](0xD000000000000011, 0x800000025DBF9330);
            v65 = [v61 localizedStringForKey:v62 value:v63 table:v64];

            v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v68 = v67;

            if (v104 == v66 && v59 == v68)
            {

              v16 = v112;
            }

            else
            {
              v70 = _stringCompareWithSmolCheck(_:_:expecting:)();

              v14 = v109;
              v16 = v112;
              if ((v70 & 1) == 0)
              {

LABEL_76:
                v10 = &one-time initialization token for typeDisplayRepresentation;
                goto LABEL_62;
              }
            }

            v71 = [v44 attributeSet];
            v10 = &one-time initialization token for typeDisplayRepresentation;
            if (one-time initialization token for keyAttributeAppEntityTitle != -1)
            {
              swift_once();
            }

            v72 = MEMORY[0x25F89F4C0](static LocalIndexClient.keyAttributeAppEntityTitle, *algn_27FCAFD18);
            v73 = [v71 attributeForKey_];

            if (v73)
            {
              _bridgeAnyObjectToAny(_:)();
              swift_unknownObjectRelease();
            }

            else
            {
              v116 = 0u;
              v118 = 0u;
            }

            v14 = v109;
            v53 = v107;
            v119[0] = v116;
            v119[1] = v118;
            if (!*(&v118 + 1))
            {

              outlined destroy of IntentApplication?(v119, &_sypSgMd, &_sypSgMR);
              goto LABEL_62;
            }

            if (swift_dynamicCast())
            {
              v74 = HIBYTE(v115) & 0xF;
              if ((v115 & 0x2000000000000000) == 0)
              {
                v74 = v114 & 0xFFFFFFFFFFFFLL;
              }

              if (v74)
              {
                if (one-time initialization token for visual != -1)
                {
                  swift_once();
                }

                v75 = type metadata accessor for Logger();
                __swift_project_value_buffer(v75, static Logging.visual);

                v76 = Logger.logObject.getter();
                v77 = static os_log_type_t.error.getter();

                if (os_log_type_enabled(v76, v77))
                {
                  v78 = swift_slowAlloc();
                  v79 = swift_slowAlloc();
                  *&v119[0] = v79;
                  *v78 = 136315138;
                  v105 = v77;
                  v80 = v76;
                  v81 = v114;
                  *(v78 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
                  _os_log_impl(&dword_25D85C000, v80, v105, "[VISUAL] Missing title for card section, fallback to appEntityTitle: %s", v78, 0xCu);
                  __swift_destroy_boxed_opaque_existential_1Tm(v79);
                  v82 = v79;
                  v16 = v112;
                  MEMORY[0x25F8A1050](v82, -1, -1);
                  v83 = v78;
                  v14 = v109;
                  MEMORY[0x25F8A1050](v83, -1, -1);
                }

                else
                {

                  v81 = v114;
                }

                type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for SFRichText, 0x277D4C598);
                v101 = @nonobjc SFRichText.__allocating_init(string:)(v81, v115);
                [v103 setTitle_];

                goto LABEL_76;
              }
            }

            else
            {
LABEL_61:
            }

LABEL_62:
            if (v10[81] != -1)
            {
              swift_once();
            }

            v84 = type metadata accessor for Logger();
            __swift_project_value_buffer(v84, static Logging.visual);
            v85 = v16;
            v86 = v44;
            v87 = v41;

            v88 = Logger.logObject.getter();
            v89 = static os_log_type_t.info.getter();

            if (os_log_type_enabled(v88, v89))
            {
              v110 = v14;
              v90 = swift_slowAlloc();
              v106 = swift_slowAlloc();
              *&v119[0] = v106;
              *v90 = 136316674;
              v91 = type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for SFCardSection, 0x277D4C238);
              MEMORY[0x25F89F8A0](v29, v91);
              v113 = v85;
              v92 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

              *(v90 + 4) = v92;
              *(v90 + 12) = 2080;
              swift_getObjectType();
              __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15SSResultBuilderCmMd, &_sSo15SSResultBuilderCmMR);
              String.init<A>(describing:)();
              v93 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

              *(v90 + 14) = v93;
              *(v90 + 22) = 2080;
              outlined bridged method (pb) of @objc CSSearchableItem.bundleID.getter(v86);
              v94 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

              *(v90 + 24) = v94;
              *(v90 + 32) = 2080;
              if (!v16 || (outlined bridged method (pb) of @objc SFSearchResult.sectionBundleIdentifier.getter(v113), !v95))
              {
              }

              v96 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

              *(v90 + 34) = v96;
              *(v90 + 42) = 2080;
              v97 = [v86 uniqueIdentifier];
              static String._unconditionallyBridgeFromObjectiveC(_:)();

              v98 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

              *(v90 + 44) = v98;
              *(v90 + 52) = 2080;
              outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.contentType.getter([v86 attributeSet]);
              v99 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

              *(v90 + 54) = v99;
              *(v90 + 62) = 2080;
              String.init<A>(describing:)();
              v100 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

              *(v90 + 64) = v100;
              _os_log_impl(&dword_25D85C000, v88, v89, "[VISUAL] cardSections: %s, builder: %s, bundle: %s, sectionID: %s, uid: %s, contentType: %s, option: %s", v90, 0x48u);
              swift_arrayDestroy();
              MEMORY[0x25F8A1050](v106, -1, -1);
              MEMORY[0x25F8A1050](v90, -1, -1);
            }

            else
            {
            }

            return v29;
          }
        }

        else if (v16)
        {
          goto LABEL_21;
        }

        v111 = v16;
        v32 = [objc_opt_self() resultBuilderForItem_];
        v33 = one-time initialization token for visual;
        v31 = v32;
        if (v33 != -1)
        {
          swift_once();
        }

        v34 = type metadata accessor for Logger();
        __swift_project_value_buffer(v34, static Logging.visual);
        v35 = a1;
        v36 = Logger.logObject.getter();
        v37 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          v108 = swift_slowAlloc();
          *&v119[0] = v108;
          *v38 = 136315138;
          v39 = [v35 uniqueIdentifier];
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
          v10 = &one-time initialization token for typeDisplayRepresentation;

          *(v38 + 4) = v40;
          _os_log_impl(&dword_25D85C000, v36, v37, "[VISUAL] Missing orginal spotlight result unexpected for CSSI:  %s", v38, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v108);
          MEMORY[0x25F8A1050](v108, -1, -1);
          MEMORY[0x25F8A1050](v38, -1, -1);
        }

        v16 = v111;
        goto LABEL_27;
      }
    }
  }

  if (one-time initialization token for visual != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  __swift_project_value_buffer(v22, static Logging.visual);
  v23 = a1;
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v117 = swift_slowAlloc();
    *v26 = 136315138;
    *&v119[0] = outlined bridged method (pb) of @objc CSSearchableItem.bundleID.getter(v23);
    *(&v119[0] + 1) = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    String.init<A>(describing:)();
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v26 + 4) = v28;
    _os_log_impl(&dword_25D85C000, v24, v25, "[VISUAL] No cardSection for bundleID: %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v117);
    MEMORY[0x25F8A1050](v117, -1, -1);
    MEMORY[0x25F8A1050](v26, -1, -1);
  }

  return MEMORY[0x277D84F90];
}

void *SFCard.init(cardSections:)()
{
  [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v1 = OUTLINED_FUNCTION_112_2();
  outlined bridged method (mbnn) of @objc SFCard.cardSections.setter(v1, v0);
  return v0;
}

id @nonobjc SFRichText.__allocating_init(string:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = MEMORY[0x25F89F4C0](a1);
  }

  else
  {
    v2 = 0;
  }

  v3 = [swift_getObjCClassFromMetadata() textWithString_];

  return v3;
}

id @nonobjc _SFPBCard.init(data:)(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data?(a1, a2);
  }

  v6 = [v2 initWithData_];

  return v6;
}

uint64_t outlined bridged method (pb) of @objc SFCard.cardSections.getter(void *a1)
{
  v1 = [a1 cardSections];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for SFCardSection, 0x277D4C238);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t outlined bridged method (ob) of @objc SFText.text.getter(void *a1)
{
  v2 = [a1 text];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void outlined bridged method (mbnn) of @objc SFCard.cardSections.setter(uint64_t a1, void *a2)
{
  type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for SFCardSection, 0x277D4C238);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a2 setCardSections_];
}

uint64_t _s10OmniSearch0B6EntityVWOcTm_2(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_17();
  (*(v5 + 16))(a2, a1);
  return a2;
}

unint64_t lazy protocol witness table accessor for type CardSectionOption and conformance CardSectionOption()
{
  result = lazy protocol witness table cache variable for type CardSectionOption and conformance CardSectionOption;
  if (!lazy protocol witness table cache variable for type CardSectionOption and conformance CardSectionOption)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CardSectionOption and conformance CardSectionOption);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CardSectionOption(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for EntityCardBuilder(_BYTE *result, int a2, int a3)
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

uint64_t outlined bridged method (pb) of @objc SFSearchResult.sectionBundleIdentifier.getter(void *a1)
{
  v1 = [a1 sectionBundleIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t specialized Sequence.compactMap<A>(_:)(void (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch10GlobalItemVSgMd, &_s10OmniSearch10GlobalItemVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v35 - v7;
  v9 = type metadata accessor for GlobalItem(0);
  OUTLINED_FUNCTION_14();
  v38 = v10;
  MEMORY[0x28223BE20](v11);
  v39 = v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v37 = v35 - v14;
  v15 = 0;
  v16 = *(a3 + 16);
  v40 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v16 == v15)
    {
      return v40;
    }

    v17 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_AppEntity() - 8);
    a1(a3 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v15);
    if (v3)
    {
      break;
    }

    if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
    {
      outlined destroy of (offset: Int, element: SearchResult)(v8, &_s10OmniSearch10GlobalItemVSgMd, &_s10OmniSearch10GlobalItemVSgMR);
      ++v15;
    }

    else
    {
      v18 = v37;
      outlined init with take of GlobalItem(v8, v37);
      outlined init with take of GlobalItem(v18, v39);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = OUTLINED_FUNCTION_44();
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v27, v28, v29, v30);
        v40 = v31;
      }

      v20 = *(v40 + 16);
      v19 = *(v40 + 24);
      v21 = v20 + 1;
      if (v20 >= v19 >> 1)
      {
        v35[1] = *(v40 + 16);
        v36 = v20 + 1;
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v19 > 1, v20 + 1, 1, v40);
        v21 = v36;
        v40 = v32;
      }

      ++v15;
      *(v40 + 16) = v21;
      OUTLINED_FUNCTION_79();
      outlined init with take of GlobalItem(v26, v23 + v22 + *(v24 + 72) * v25);
    }
  }

  v33 = v40;

  return v33;
}

void specialized Sequence.compactMap<A>(_:)(void (*result)(uint64_t *__return_ptr, unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a3 + 16);
  v8 = MEMORY[0x277D84F90];
  while (v7 != v6)
  {
    if (v6 >= v7)
    {
      __break(1u);
LABEL_15:
      __break(1u);
      return;
    }

    v9 = *(type metadata accessor for SearchResult(0) - 8);
    v10 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      goto LABEL_15;
    }

    result(&v16, a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v6);
    if (v3)
    {

      return;
    }

    v11 = v16;
    ++v6;
    if (v16)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v8 = v14;
      }

      v12 = *(v8 + 16);
      v13 = v12 + 1;
      if (v12 >= *(v8 + 24) >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v13 = v12 + 1;
        v8 = v15;
      }

      *(v8 + 16) = v13;
      *(v8 + 8 * v12 + 32) = v11;
      v6 = v10;
    }
  }
}

uint64_t specialized Sequence.compactMap<A>(_:)(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v20 = a1;
  v4 = *(a3 + 16);
  v5 = (a3 + 40);
  v6 = MEMORY[0x277D84F90];
  if (v4)
  {
    while (1)
    {
      v7 = *v5;
      v19[0] = *(v5 - 1);
      v19[1] = v7;

      v20(&v17, v19);
      if (v3)
      {
        break;
      }

      v8 = v18;
      if (v18)
      {
        v9 = v17;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = OUTLINED_FUNCTION_44();
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v13);
          v6 = v14;
        }

        v11 = *(v6 + 16);
        v10 = *(v6 + 24);
        if (v11 >= v10 >> 1)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v10 > 1);
          v6 = v15;
        }

        *(v6 + 16) = v11 + 1;
        v12 = v6 + 16 * v11;
        *(v12 + 32) = v9;
        *(v12 + 40) = v8;
      }

      v5 += 2;
      if (!--v4)
      {
        return v6;
      }
    }
  }

  return v6;
}

uint64_t specialized Sequence.compactMap<A>(_:)(void (*a1)(__int128 *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = MEMORY[0x277D84F90];
  v7 = (a3 + 40);
  if (v5)
  {
    while (1)
    {
      v8 = *v7;
      v16[0] = *(v7 - 1);
      v16[1] = v8;

      a1(&v13, v16);
      if (v3)
      {
        break;
      }

      if (v14)
      {
        outlined init with take of ResponseOverrideMatcherProtocol(&v13, v15);
        outlined init with take of ResponseOverrideMatcherProtocol(v15, &v13);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_44();
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v6 = v10;
        }

        v9 = *(v6 + 16);
        if (v9 >= *(v6 + 24) >> 1)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v6 = v11;
        }

        *(v6 + 16) = v9 + 1;
        outlined init with take of ResponseOverrideMatcherProtocol(&v13, v6 + 40 * v9 + 32);
      }

      else
      {
        outlined destroy of (offset: Int, element: SearchResult)(&v13, &_s10OmniSearch13MessageRecord_pSgMd, &_s10OmniSearch13MessageRecord_pSgMR);
      }

      v7 += 2;
      if (!--v5)
      {
        return v6;
      }
    }
  }

  return v6;
}

uint64_t ResultSectionBuilder.__allocating_init(results:context:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t key path setter for ResultSectionBuilder.results : ResultSectionBuilder(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 104);

  return v2(v3);
}

uint64_t ResultSectionBuilder.results.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

uint64_t key path setter for ResultSectionBuilder.context : ResultSectionBuilder(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 128);

  return v2(v3);
}

uint64_t ResultSectionBuilder.context.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 24) = a1;
}

uint64_t ResultSectionBuilder.init(results:context:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

id ResultSectionBuilder.buildCard()()
{
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
  MEMORY[0x28223BE20](v115);
  v114 = (v99 - v1);
  type metadata accessor for SearchResult(0);
  OUTLINED_FUNCTION_14();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  v6 = v99 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = v99 - v9;
  v11 = (*(*v0 + 120))(v8);
  swift_beginAccess();
  outlined init with copy of ChatMessageRecord(v11 + 16, &v129);

  v13 = *(*v0 + 96);
  v14 = *v0 + 96;
  v107 = v0;
  v106 = v13;
  v105 = v14;
  v15 = v13(v12);
  v16 = 0;
  v111 = *(v15 + 16);
  v17 = &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR;
  while (1)
  {
    v18 = v16;
    if (v111 == v16)
    {
LABEL_5:
      v104 = v18;

      v23 = v106;
      v102 = *(v106(v22) + 16);

      v25 = v23(v24);
      v26 = 0;
      v112 = *(v25 + 16);
      v103 = v3;
      do
      {
        v27 = v26;
        if (v112 == v26)
        {

          v31 = 1;
          goto LABEL_14;
        }

        if (v26 >= *(v25 + 16))
        {
          goto LABEL_96;
        }

        OUTLINED_FUNCTION_79();
        outlined init with copy of SearchResult(v25 + v28 + *(v3 + 72) * v26++, v6);
        v17 = v27;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMd, &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR);
        v29 = CodableNSSecureCoding.wrappedValue.getter();
        v30 = CSSearchableItem.isSupportedSharedLinkType.getter();

        outlined destroy of SearchResult(v6);
      }

      while ((v30 & 1) != 0);
      OUTLINED_FUNCTION_11_48();
      v31 = v61;

      v27 = v17;
LABEL_14:
      v101 = v27;
      v100 = v112 == v27;
      v33 = v106(v32);
      MEMORY[0x28223BE20](v33);
      v99[-2] = &v129;
      LOBYTE(v99[-1]) = v31;
      specialized Sequence.compactMap<A>(_:)(partial apply for closure #3 in ResultSectionBuilder.buildCard(), &v99[-4], v33);
      v35 = v34;
      v99[1] = 0;

      v36 = 0;
      v6 = MEMORY[0x277D84F90];
      v117 = *(v35 + 16);
      v116 = v35 + 32;
      v108 = v35;
      while (1)
      {
        if (v36 == v117)
        {

          v128 = 0;
          v126 = 0u;
          v127 = 0u;
          v61 = v112 != v101 || v102 == 1;
          if (v61)
          {
            if (v111 == v104 && v102 != 1)
            {
              outlined destroy of (offset: Int, element: SearchResult)(&v126, &_s10OmniSearch21SectionedCardBuilding_pSgMd, &_s10OmniSearch21SectionedCardBuilding_pSgMR);
              *(&v127 + 1) = &type metadata for SectionedCardBuilder;
              v128 = &protocol witness table for SectionedCardBuilder;
            }
          }

          else
          {
            outlined destroy of (offset: Int, element: SearchResult)(&v126, &_s10OmniSearch21SectionedCardBuilding_pSgMd, &_s10OmniSearch21SectionedCardBuilding_pSgMR);
            *(&v127 + 1) = &type metadata for SectionedStandardCardBuilder;
            v128 = &protocol witness table for SectionedStandardCardBuilder;
            *&v126 = 2;
          }

          v17 = v103;
          if (one-time initialization token for visual != -1)
          {
            goto LABEL_101;
          }

          goto LABEL_70;
        }

        if (v36 >= *(v35 + 16))
        {
          __break(1u);
LABEL_92:
          __break(1u);
LABEL_93:
          __break(1u);
LABEL_94:
          __break(1u);
          goto LABEL_95;
        }

        v17 = *(v116 + 8 * v36);
        if (v17 >> 62)
        {
          if (v17 < 0)
          {
            v59 = *(v116 + 8 * v36);
          }

          else
          {
            v59 = v17 & 0xFFFFFFFFFFFFFF8;
          }

          v37 = MEMORY[0x25F8A01B0](v59);
        }

        else
        {
          v37 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v38 = v6 >> 62;
        if (v6 >> 62)
        {
          if (v6 < 0)
          {
            v60 = v6;
          }

          else
          {
            v60 = v6 & 0xFFFFFFFFFFFFFF8;
          }

          v39 = MEMORY[0x25F8A01B0](v60);
        }

        else
        {
          v39 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v40 = v39 + v37;
        if (__OFADD__(v39, v37))
        {
          goto LABEL_92;
        }

        if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
        {
          break;
        }

        if (v38)
        {
          goto LABEL_27;
        }

        v41 = v6 & 0xFFFFFFFFFFFFFF8;
        if (v40 > *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_31;
        }

LABEL_32:
        v119 = v36 + 1;
        v43 = *(v41 + 16);
        v44 = (*(v41 + 24) >> 1) - v43;
        v45 = v41 + 8 * v43;
        v118 = v41;
        if (v17 >> 62)
        {
          if (v17 < 0)
          {
            v47 = v17;
          }

          else
          {
            v47 = v17 & 0xFFFFFFFFFFFFFF8;
          }

          v48 = MEMORY[0x25F8A01B0](v47);
          if (!v48)
          {
            goto LABEL_49;
          }

          v49 = v48;
          v50 = MEMORY[0x25F8A01B0](v47);
          if (v44 < v50)
          {
            goto LABEL_99;
          }

          if (v49 < 1)
          {
            goto LABEL_100;
          }

          v109 = v50;
          v110 = v37;
          v113 = v6;
          OUTLINED_FUNCTION_0_90();
          lazy protocol witness table accessor for type _TransientAppEntityQuery<MemoryCreationQUResult> and conformance _TransientAppEntityQuery<A>(&lazy protocol witness table cache variable for type [SFCardSection] and conformance [A], &_sSaySo13SFCardSectionCGMd, &_sSaySo13SFCardSectionCGMR, v51);
          for (i = 0; i != v49; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo13SFCardSectionCGMd, &_sSaySo13SFCardSectionCGMR);
            v53 = specialized protocol witness for Collection.subscript.read in conformance [A](&v126, i, v17);
            v55 = *v54;
            v53(&v126, 0);
            *(v45 + 32 + 8 * i) = v55;
          }

          v6 = v113;
          v35 = v108;
          v37 = v110;
          v46 = v109;
LABEL_45:

          v36 = v119;
          if (v46 < v37)
          {
            goto LABEL_93;
          }

          if (v46 > 0)
          {
            v56 = *(v118 + 16);
            v57 = __OFADD__(v56, v46);
            v58 = v56 + v46;
            if (v57)
            {
              goto LABEL_97;
            }

            *(v118 + 16) = v58;
          }
        }

        else
        {
          v46 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v46)
          {
            if (v44 < v46)
            {
              goto LABEL_98;
            }

            type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for SFCardSection, 0x277D4C238);
            swift_arrayInitWithCopy();
            goto LABEL_45;
          }

LABEL_49:

          v36 = v119;
          if (v37 > 0)
          {
            goto LABEL_93;
          }
        }
      }

      if (v38)
      {
LABEL_27:
        if (v6 < 0)
        {
          v42 = v6;
        }

        else
        {
          v42 = v6 & 0xFFFFFFFFFFFFFF8;
        }

        MEMORY[0x25F8A01B0](v42);
      }

LABEL_31:
      v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v41 = v6 & 0xFFFFFFFFFFFFFF8;
      goto LABEL_32;
    }

    if (v16 >= *(v15 + 16))
    {
      break;
    }

    OUTLINED_FUNCTION_79();
    outlined init with copy of SearchResult(v15 + v19 + *(v3 + 72) * v16++, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMd, &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR);
    v20 = CodableNSSecureCoding.wrappedValue.getter();
    v21 = CSSearchableItem.isPhotoOrVideo.getter();

    outlined destroy of SearchResult(v10);
    if ((v21 & 1) == 0)
    {
      goto LABEL_5;
    }
  }

LABEL_95:
  __break(1u);
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
  swift_once();
LABEL_70:
  v63 = type metadata accessor for Logger();
  v64 = __swift_project_value_buffer(v63, static Logging.visual);

  v65 = Logger.logObject.getter();
  v66 = static os_log_type_t.info.getter();
  v67 = os_log_type_enabled(v65, v66);
  v113 = v6;
  v119 = v64;
  if (v67)
  {
    OUTLINED_FUNCTION_11_48();
    v68 = v61;
    v69 = swift_slowAlloc();
    *v69 = 134218496;
    v70 = v106;
    v71 = *((v106)() + 16);

    *(v69 + 4) = v71;

    *(v69 + 12) = 1024;
    *(v69 + 14) = v68;
    *(v69 + 18) = 1024;
    *(v69 + 20) = v100;
    _os_log_impl(&dword_25D85C000, v65, v66, "Build card for %ld result(s), allImageVideo: %{BOOL}d,  allSharedLink: %{BOOL}d", v69, 0x18u);
    MEMORY[0x25F8A1050](v69, -1, -1);
  }

  else
  {

    v70 = v106;
  }

  v72 = v70();
  v73 = 0;
  v6 = *(v72 + 16);
  v74 = MEMORY[0x277D84F90];
  while (v6 != v73)
  {
    if (v73 >= *(v72 + 16))
    {
      goto LABEL_94;
    }

    OUTLINED_FUNCTION_79();
    v76 = v17;
    v77 = v72 + v75 + *(v17 + 72) * v73;
    v78 = *(v115 + 48);
    v79 = v114;
    *v114 = v73;
    outlined init with copy of SearchResult(v77, v79 + v78);
    *&v120 = v73;
    v122 = dispatch thunk of CustomStringConvertible.description.getter();
    v123 = v80;
    MEMORY[0x25F89F6C0](2108969, 0xE300000000000000);
    SearchResult.description.getter();
    MEMORY[0x25F89F6C0]();

    v81 = v122;
    v82 = v123;
    outlined destroy of (offset: Int, element: SearchResult)(v79, &_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v86 = OUTLINED_FUNCTION_44();
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v86);
      v74 = v87;
    }

    v84 = *(v74 + 16);
    v83 = *(v74 + 24);
    if (v84 >= v83 >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v83 > 1);
      v74 = v88;
    }

    *(v74 + 16) = v84 + 1;
    v85 = v74 + 16 * v84;
    *(v85 + 32) = v81;
    *(v85 + 40) = v82;
    ++v73;
    v17 = v76;
  }

  v89 = Logger.logObject.getter();
  v90 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v89, v90))
  {
    v91 = swift_slowAlloc();
    v92 = swift_slowAlloc();
    v122 = v92;
    *v91 = 136315138;
    *&v120 = v74;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type _TransientAppEntityQuery<MemoryCreationQUResult> and conformance _TransientAppEntityQuery<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR, MEMORY[0x277D83958]);
    BidirectionalCollection<>.joined(separator:)();

    v93 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v91 + 4) = v93;
    _os_log_impl(&dword_25D85C000, v89, v90, "%s", v91, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v92);
    MEMORY[0x25F8A1050](v92, -1, -1);
    MEMORY[0x25F8A1050](v91, -1, -1);
  }

  else
  {
  }

  v94 = v113;
  outlined init with copy of SectionedCardBuilding?(&v126, &v120);
  if (v121)
  {
    outlined init with take of ResponseOverrideMatcherProtocol(&v120, &v122);
    v95 = v124;
    v96 = v125;
    __swift_project_boxed_opaque_existential_1(&v122, v124);
    v97 = (*(v96 + 8))(v94, v95, v96);

    outlined destroy of (offset: Int, element: SearchResult)(&v126, &_s10OmniSearch21SectionedCardBuilding_pSgMd, &_s10OmniSearch21SectionedCardBuilding_pSgMR);
    __swift_destroy_boxed_opaque_existential_1Tm(&v122);
  }

  else
  {
    outlined destroy of (offset: Int, element: SearchResult)(&v120, &_s10OmniSearch21SectionedCardBuilding_pSgMd, &_s10OmniSearch21SectionedCardBuilding_pSgMR);
    v97 = [objc_allocWithZone(MEMORY[0x277D4C230]) init];
    outlined bridged method (mbnn) of @objc SFCard.cardSections.setter(v94, v97);
    outlined destroy of (offset: Int, element: SearchResult)(&v126, &_s10OmniSearch21SectionedCardBuilding_pSgMd, &_s10OmniSearch21SectionedCardBuilding_pSgMR);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(&v129);
  return v97;
}

uint64_t closure #3 in ResultSectionBuilder.buildCard()@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char a3@<W2>, uint64_t *a4@<X8>)
{
  v7 = a2[3];
  v8 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v7);
  v11 = a3 & 1;
  v9 = (*(v8 + 24))(a1, &v11, 0, 0xE000000000000000, v7, v8);
  result = outlined bridged method (ob) of @objc SFCard.cardSections.getter(v9);
  *a4 = result;
  return result;
}

uint64_t ResultSectionBuilder.deinit()
{

  return v0;
}

uint64_t ResultSectionBuilder.__deallocating_deinit()
{
  ResultSectionBuilder.deinit();

  return swift_deallocClassInstance();
}

uint64_t outlined init with copy of SectionedCardBuilding?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch21SectionedCardBuilding_pSgMd, &_s10OmniSearch21SectionedCardBuilding_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of GlobalItem(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GlobalItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_5_51(uint64_t a1)
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_12_42(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return lazy protocol witness table accessor for type _TransientAppEntityQuery<MemoryCreationQUResult> and conformance _TransientAppEntityQuery<A>(a1, v4, v5, a4);
}

uint64_t OUTLINED_FUNCTION_13_34()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
}

id OUTLINED_FUNCTION_17_38(uint64_t a1, void **a2)
{
  v3 = *a2;

  return v3;
}

uint64_t SectionedCardBuilder.buildSectionedCard(cardSections:)(uint64_t a1)
{
  if (!a1)
  {
    v19 = objc_allocWithZone(MEMORY[0x277D4C230]);

    return [v19 init];
  }

  v24 = MEMORY[0x277D84F90];
  v25 = MEMORY[0x277D84F90];
  result = specialized Array.count.getter();
  if (!result)
  {

    v5 = MEMORY[0x277D84F90];
LABEL_37:
    v20 = specialized Array.count.getter();

    if (v20)
    {

      v21 = [objc_allocWithZone(MEMORY[0x277D4C230]) init];
      outlined bridged method (mbnn) of @objc SFCard.cardSections.setter(a1, v21);
    }

    else
    {

      StackedGridsLayout.init(rawValue:)(&outlined read-only object #0 of one-time initialization function for defaultLayout);
      type metadata accessor for StackedGridsLayoutProvider();
      swift_allocObject();
      v22 = StackedGridsLayoutProvider.init(_:)();
      if (specialized Array.count.getter() >= 2)
      {
        SectionedCardBuilder.updateImageSize(_:for:)(v5, 600.0, 600.0);
      }

      v23 = (*(*v22 + 120))(v5);

      v21 = [objc_allocWithZone(MEMORY[0x277D4C230]) init];
      outlined bridged method (mbnn) of @objc SFCard.cardSections.setter(v23, v21);
    }

    return v21;
  }

  v3 = result;
  if (result < 1)
  {
    goto LABEL_44;
  }

  v4 = 0;
  v5 = MEMORY[0x277D84F90];
  while (1)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x25F89FFD0](v4, a1);
    }

    else
    {
      v6 = *(a1 + 8 * v4 + 32);
    }

    v7 = v6;
    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (!v8)
    {
      goto LABEL_21;
    }

    v9 = v8;
    v10 = v7;
    v11 = outlined bridged method (pb) of @objc SFCollectionCardSection.cardSections.getter(v9);
    v7 = v10;
    if (v11)
    {
      break;
    }

LABEL_20:

LABEL_21:
    objc_opt_self();
    v15 = swift_dynamicCastObjCClass();
    if (v15)
    {
      v16 = [v15 thumbnail];
      if (v16)
      {

        v17 = v7;
        MEMORY[0x25F89F850]();
        if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v5 = v25;
      }

      else
      {
      }
    }

    else
    {
      v18 = v7;
      MEMORY[0x25F89F850]();
      if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    if (v3 == ++v4)
    {
      goto LABEL_37;
    }
  }

  v12 = v11;
  v13 = v11 & 0xFFFFFFFFFFFFFF8;
  if (v11 >> 62)
  {
    if (v11 >= 0)
    {
      v11 &= 0xFFFFFFFFFFFFFF8uLL;
    }

    result = MEMORY[0x25F8A01B0](v11);
    if (!result)
    {
LABEL_19:

      v7 = v10;
      goto LABEL_20;
    }
  }

  else
  {
    result = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      goto LABEL_19;
    }
  }

  if ((v12 & 0xC000000000000001) != 0)
  {
    v14 = MEMORY[0x25F89FFD0](0, v12);
    goto LABEL_15;
  }

  if (*(v13 + 16))
  {
    v14 = *(v12 + 32);
LABEL_15:
    v7 = v14;

    goto LABEL_20;
  }

  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

void SectionedCardBuilder.updateImageSize(_:for:)(unint64_t a1, double a2, double a3)
{
  if (a1 >> 62)
  {
    goto LABEL_28;
  }

  v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v6)
  {
    while (1)
    {
      if (v6 < 1)
      {
        __break(1u);
        return;
      }

      v7 = 0;
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x25F89FFD0](v7, a1);
        }

        else
        {
          v8 = *(a1 + 8 * v7 + 32);
        }

        v9 = v8;
        objc_opt_self();
        v10 = swift_dynamicCastObjCClass();
        if (v10)
        {
          v11 = [v10 thumbnail];
          if (v11)
          {
            goto LABEL_18;
          }
        }

        objc_opt_self();
        v12 = swift_dynamicCastObjCClass();
        if (v12)
        {
          break;
        }

LABEL_20:
        ++v7;

        if (v6 == v7)
        {
          return;
        }
      }

      v13 = v12;
      v14 = v9;
      v15 = outlined bridged method (pb) of @objc SFImagesCardSection.images.getter(v13);
      if (!v15)
      {
        goto LABEL_19;
      }

      v16 = v15;
      v17 = v15 & 0xFFFFFFFFFFFFFF8;
      if (v15 >> 62)
      {
        if (v15 >= 0)
        {
          v15 &= 0xFFFFFFFFFFFFFF8uLL;
        }

        if (!MEMORY[0x25F8A01B0](v15))
        {
LABEL_25:

          goto LABEL_19;
        }
      }

      else if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }

      if ((v16 & 0xC000000000000001) != 0)
      {
        break;
      }

      if (*(v17 + 16))
      {
        v18 = *(v16 + 32);
        goto LABEL_17;
      }

      __break(1u);
LABEL_28:
      if ((a1 & 0x8000000000000000) != 0)
      {
        v19 = a1;
      }

      else
      {
        v19 = a1 & 0xFFFFFFFFFFFFFF8;
      }

      v6 = MEMORY[0x25F8A01B0](v19);
      if (!v6)
      {
        return;
      }
    }

    v18 = MEMORY[0x25F89FFD0](0, v16);
LABEL_17:
    v11 = v18;

LABEL_18:
    [v11 setSize_];
    v14 = v11;
LABEL_19:

    goto LABEL_20;
  }
}

uint64_t outlined bridged method (pb) of @objc SFImagesCardSection.images.getter(void *a1)
{
  v1 = [a1 images];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for SFImage();
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

_BYTE *storeEnumTagSinglePayload for SectionedCardBuilder(_BYTE *result, int a2, int a3)
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

unint64_t type metadata accessor for SFImage()
{
  result = lazy cache variable for type metadata for SFImage;
  if (!lazy cache variable for type metadata for SFImage)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for SFImage);
  }

  return result;
}

uint64_t SectionedStandardCardBuilder.buildSectionedCard(cardSections:)(uint64_t a1)
{
  if (!a1)
  {
    v20 = objc_allocWithZone(MEMORY[0x277D4C230]);

    return [v20 init];
  }

  v3 = *v1;
  v21 = MEMORY[0x277D84F90];
  result = specialized Array.count.getter();
  if (!result)
  {
LABEL_26:
    result = [objc_allocWithZone(MEMORY[0x277D4C280]) init];
    if (v3 < 0)
    {
      goto LABEL_32;
    }

    v16 = result;
    [result setNumberOfColumns_];
    v17 = [objc_allocWithZone(MEMORY[0x277D4C278]) init];
    [v17 setCollectionStyle_];
    outlined bridged method (mbnn) of @objc SFCollectionCardSection.cardSections.setter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_25DBC8190;
    *(v18 + 32) = v17;
    v19 = [objc_allocWithZone(MEMORY[0x277D4C230]) init];
    outlined bridged method (mbnn) of @objc SFCard.cardSections.setter(v18, v19);

    return v19;
  }

  v5 = result;
  if (result < 1)
  {
    goto LABEL_33;
  }

  v6 = 0;
  while (1)
  {
    v7 = (a1 & 0xC000000000000001) != 0 ? MEMORY[0x25F89FFD0](v6, a1) : *(a1 + 8 * v6 + 32);
    v8 = v7;
    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (v9)
    {
      v10 = outlined bridged method (pb) of @objc SFCollectionCardSection.cardSections.getter(v9);
      if (v10)
      {
        break;
      }
    }

LABEL_19:
    if (v5 == ++v6)
    {
      goto LABEL_26;
    }
  }

  v11 = v10;
  v12 = v10 & 0xFFFFFFFFFFFFFF8;
  if (!(v10 >> 62))
  {
    result = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_12;
    }

    goto LABEL_24;
  }

  if (v10 >= 0)
  {
    v10 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  result = MEMORY[0x25F8A01B0](v10);
  if (!result)
  {
LABEL_24:

    goto LABEL_19;
  }

LABEL_12:
  if ((v11 & 0xC000000000000001) != 0)
  {
    v13 = MEMORY[0x25F89FFD0](0, v11);
    goto LABEL_15;
  }

  if (*(v12 + 16))
  {
    v13 = *(v11 + 32);
LABEL_15:
    v14 = v13;

    v15 = v14;
    MEMORY[0x25F89F850]();
    if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    goto LABEL_19;
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

uint64_t getEnumTagSinglePayload for SectionedStandardCardBuilder(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for SectionedStandardCardBuilder(uint64_t result, int a2, int a3)
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

unint64_t StackableGrid.init(rawValue:)(uint64_t a1, unint64_t a2)
{
  v3 = a1 == 72 && a2 == 0xE100000000000000;
  if (v3 || (OUTLINED_FUNCTION_15_40() & 1) != 0)
  {

    return 0;
  }

  v7 = a1 == 104 && a2 == 0xE100000000000000;
  if (v7 || (result = OUTLINED_FUNCTION_15_40(), (result & 1) != 0))
  {

    return 1;
  }

  v8 = HIBYTE(a2) & 0xF;
  v9 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v10 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v10 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v5 = specialized _parseInteger<A, B>(ascii:radix:)(a1, a2, 10);
    v26 = v27;
    goto LABEL_83;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
    }

    v11 = *result;
    if (v11 == 43)
    {
      if (v9 >= 1)
      {
        if (v9 != 1)
        {
          v5 = 0;
          if (result)
          {
            while (1)
            {
              OUTLINED_FUNCTION_91_4();
              if (!v3 & v12)
              {
                goto LABEL_81;
              }

              OUTLINED_FUNCTION_0_91();
              if (!v3)
              {
                goto LABEL_81;
              }

              v5 = v19 + v18;
              if (__OFADD__(v19, v18))
              {
                goto LABEL_81;
              }

              OUTLINED_FUNCTION_204_1();
              if (v3)
              {
                goto LABEL_82;
              }
            }
          }

          goto LABEL_72;
        }

        goto LABEL_81;
      }

      goto LABEL_92;
    }

    if (v11 != 45)
    {
      if (v9)
      {
        v5 = 0;
        if (result)
        {
          while (1)
          {
            v22 = *result - 48;
            if (v22 > 9)
            {
              goto LABEL_81;
            }

            v23 = 10 * v5;
            if ((v5 * 10) >> 64 != (10 * v5) >> 63)
            {
              goto LABEL_81;
            }

            v5 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              goto LABEL_81;
            }

            ++result;
            if (!--v9)
            {
              goto LABEL_72;
            }
          }
        }

        goto LABEL_72;
      }

LABEL_81:
      v5 = 0;
      v15 = 1;
      goto LABEL_82;
    }

    if (v9 >= 1)
    {
      if (v9 != 1)
      {
        v5 = 0;
        if (result)
        {
          while (1)
          {
            OUTLINED_FUNCTION_91_4();
            if (!v3 & v12)
            {
              goto LABEL_81;
            }

            OUTLINED_FUNCTION_0_91();
            if (!v3)
            {
              goto LABEL_81;
            }

            v5 = v14 - v13;
            if (__OFSUB__(v14, v13))
            {
              goto LABEL_81;
            }

            OUTLINED_FUNCTION_204_1();
            if (v3)
            {
              goto LABEL_82;
            }
          }
        }

LABEL_72:
        v15 = 0;
LABEL_82:
        v26 = v15;
LABEL_83:

        if ((v26 & 1) == 0 && v5 <= 9)
        {
          return v5;
        }

        return 0;
      }

      goto LABEL_81;
    }

    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  if (a1 != 43)
  {
    if (a1 != 45)
    {
      if (v8)
      {
        while (1)
        {
          OUTLINED_FUNCTION_91_4();
          if (!v3 & v12)
          {
            break;
          }

          OUTLINED_FUNCTION_0_91();
          if (!v3)
          {
            break;
          }

          v5 = v25 + v24;
          if (__OFADD__(v25, v24))
          {
            break;
          }

          OUTLINED_FUNCTION_204_1();
          if (v3)
          {
            goto LABEL_82;
          }
        }
      }

      goto LABEL_81;
    }

    if (v8)
    {
      if (v8 != 1)
      {
        OUTLINED_FUNCTION_10_45();
        while (1)
        {
          OUTLINED_FUNCTION_91_4();
          if (!v3 & v12)
          {
            break;
          }

          OUTLINED_FUNCTION_0_91();
          if (!v3)
          {
            break;
          }

          v5 = v17 - v16;
          if (__OFSUB__(v17, v16))
          {
            break;
          }

          OUTLINED_FUNCTION_204_1();
          if (v3)
          {
            goto LABEL_82;
          }
        }
      }

      goto LABEL_81;
    }

    goto LABEL_91;
  }

  if (v8)
  {
    if (v8 != 1)
    {
      OUTLINED_FUNCTION_10_45();
      while (1)
      {
        OUTLINED_FUNCTION_91_4();
        if (!v3 & v12)
        {
          break;
        }

        OUTLINED_FUNCTION_0_91();
        if (!v3)
        {
          break;
        }

        v5 = v21 + v20;
        if (__OFADD__(v21, v20))
        {
          break;
        }

        OUTLINED_FUNCTION_204_1();
        if (v3)
        {
          goto LABEL_82;
        }
      }
    }

    goto LABEL_81;
  }

LABEL_93:
  __break(1u);
  return result;
}

uint64_t StackableGrid.rawValue.getter(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return dispatch thunk of CustomStringConvertible.description.getter();
  }

  if (a1)
  {
    return 104;
  }

  return 72;
}

uint64_t StackableGrid.numberOfColumns.getter(uint64_t a1, char a2)
{
  if (a2)
  {
    return 3;
  }

  return result;
}

uint64_t StackableGrid.gridStyle.getter(uint64_t a1, char a2)
{
  if (a1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  if (a2)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

void static StackableGrid.grids(from:)(uint64_t a1, unint64_t a2)
{
  v2 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  v3 = 0;
  countAndFlagsBits = v2[1].value._countAndFlagsBits;
  v5 = MEMORY[0x277D84F90];
LABEL_2:
  p_object = &v2[v3 + 2].value._object;
  while (1)
  {
    if (countAndFlagsBits == v3)
    {

      return;
    }

    if (v3 >= v2[1].value._countAndFlagsBits)
    {
      break;
    }

    ++v3;
    v7 = p_object + 2;
    v9 = *(p_object - 1);
    v8 = *p_object;

    v10 = StackableGrid.init(rawValue:)(v9, v8);
    p_object = v7;
    if ((v11 & 0x100) == 0)
    {
      v12 = v10;
      v13 = v11;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = OUTLINED_FUNCTION_44();
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v17);
        v5 = v18;
      }

      v15 = *(v5 + 16);
      v14 = *(v5 + 24);
      if (v15 >= v14 >> 1)
      {
        v19 = OUTLINED_FUNCTION_26_3(v14);
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v19);
        v5 = v20;
      }

      *(v5 + 16) = v15 + 1;
      v16 = v5 + 16 * v15;
      *(v16 + 32) = v12;
      *(v16 + 40) = v13 & 1;
      goto LABEL_2;
    }
  }

  __break(1u);
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance StackableGrid@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = StackableGrid.init(rawValue:)(*a1, *(a1 + 8));
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 9) = v5 & 1;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance StackableGrid@<X0>(uint64_t *a1@<X8>)
{
  result = StackableGrid.rawValue.getter(*v1, *(v1 + 8));
  *a1 = result;
  a1[1] = v4;
  return result;
}

OmniSearch::StackedGridsLayout_optional __swiftcall StackedGridsLayout.init(rawValue:)(Swift::OpaquePointer rawValue)
{
  OUTLINED_FUNCTION_9_46();
  v5 = 0;
  v29 = *(isUniquelyReferenced_nonNull_native + 16);
  v30 = isUniquelyReferenced_nonNull_native;
  v28 = isUniquelyReferenced_nonNull_native + 32;
  for (i = MEMORY[0x277D84F90]; ; *(i + 8 * v27 + 32) = v14)
  {
    if (v5 == v29)
    {

      OUTLINED_FUNCTION_10_44();
      goto LABEL_22;
    }

    if (v5 >= *(v30 + 16))
    {
      break;
    }

    v7 = (v28 + 16 * v5++);
    v8 = *v7;
    v9 = v7[1];

    isUniquelyReferenced_nonNull_native = specialized _copyCollectionToContiguousArray<A>(_:)(v8, v9);
    v10 = isUniquelyReferenced_nonNull_native;
    v11 = 0;
    v12 = *(isUniquelyReferenced_nonNull_native + 16);
    v13 = isUniquelyReferenced_nonNull_native + 40;
    v14 = MEMORY[0x277D84F90];
    v31 = isUniquelyReferenced_nonNull_native + 40;
LABEL_5:
    v15 = (v13 + 16 * v11);
    while (v12 != v11)
    {
      if (v11 >= *(v10 + 16))
      {
        __break(1u);
        goto LABEL_21;
      }

      ++v11;
      v16 = v15 + 2;
      v18 = *(v15 - 1);
      v17 = *v15;

      isUniquelyReferenced_nonNull_native = StackableGrid.init(rawValue:)(v18, v17);
      v15 = v16;
      if ((v2 & 0x100) == 0)
      {
        v19 = isUniquelyReferenced_nonNull_native;
        v20 = v2;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v24 = OUTLINED_FUNCTION_44();
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v24);
          v14 = isUniquelyReferenced_nonNull_native;
        }

        v22 = *(v14 + 16);
        v21 = *(v14 + 24);
        if (v22 >= v21 >> 1)
        {
          v25 = OUTLINED_FUNCTION_26_3(v21);
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v25);
          v14 = isUniquelyReferenced_nonNull_native;
        }

        *(v14 + 16) = v22 + 1;
        v23 = v14 + 16 * v22;
        *(v23 + 32) = v19;
        *(v23 + 40) = v20 & 1;
        v13 = v31;
        goto LABEL_5;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      OUTLINED_FUNCTION_44();
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      i = isUniquelyReferenced_nonNull_native;
    }

    v27 = *(i + 16);
    v26 = *(i + 24);
    if (v27 >= v26 >> 1)
    {
      OUTLINED_FUNCTION_26_3(v26);
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      i = isUniquelyReferenced_nonNull_native;
    }

    *(i + 16) = v27 + 1;
  }

LABEL_21:
  __break(1u);
LABEL_22:
  result.value.trailingGridColumnNumber = v2;
  result.value.patternGrids._rawValue = isUniquelyReferenced_nonNull_native;
  *&result.value.trailingGridIsPadded = v3;
  result.is_nil = v4;
  return result;
}

void StackedGridsLayout.rawValue.getter()
{
  OUTLINED_FUNCTION_9_46();
  v1 = *(v0 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v3 = v0;
    v26 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v4 = 0;
    v5 = v26;
    v23 = v3 + 32;
    v24 = v1;
    do
    {
      v25 = v5;
      v6 = *(v23 + 8 * v4);
      v7 = *(v6 + 16);
      if (v7)
      {

        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
        v8 = v2;
        v9 = (v6 + 40);
        do
        {
          if (*v9 == 1)
          {
            if (*(v9 - 1))
            {
              v10 = 104;
            }

            else
            {
              v10 = 72;
            }

            v11 = 0xE100000000000000;
          }

          else
          {
            v10 = dispatch thunk of CustomStringConvertible.description.getter();
            v11 = v12;
          }

          v14 = *(v8 + 16);
          v13 = *(v8 + 24);
          if (v14 >= v13 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
          }

          *(v8 + 16) = v14 + 1;
          v15 = v8 + 16 * v14;
          *(v15 + 32) = v10;
          *(v15 + 40) = v11;
          v9 += 16;
          --v7;
        }

        while (v7);
        v2 = MEMORY[0x277D84F90];
      }

      else
      {
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type [String] and conformance [A]();
      v16 = BidirectionalCollection<>.joined(separator:)();
      v18 = v17;

      v5 = v25;
      v20 = *(v25 + 16);
      v19 = *(v25 + 24);
      if (v20 >= v19 >> 1)
      {
        v22 = OUTLINED_FUNCTION_26_3(v19);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v22, v20 + 1, 1);
        v5 = v25;
      }

      ++v4;
      *(v5 + 16) = v20 + 1;
      v21 = v5 + 16 * v20;
      *(v21 + 32) = v16;
      *(v21 + 40) = v18;
    }

    while (v4 != v24);
  }

  OUTLINED_FUNCTION_10_44();
}

uint64_t Array<A>.toString()(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v13 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v3 = (a1 + 40);
    do
    {
      if (*v3 == 1)
      {
        if (*(v3 - 1))
        {
          v4 = 104;
        }

        else
        {
          v4 = 72;
        }

        v5 = 0xE100000000000000;
      }

      else
      {
        v4 = dispatch thunk of CustomStringConvertible.description.getter();
        v5 = v6;
      }

      v8 = *(v13 + 16);
      v7 = *(v13 + 24);
      if (v8 >= v7 >> 1)
      {
        v10 = OUTLINED_FUNCTION_26_3(v7);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v10, v8 + 1, 1);
      }

      *(v13 + 16) = v8 + 1;
      v9 = v13 + 16 * v8;
      *(v9 + 32) = v4;
      *(v9 + 40) = v5;
      v3 += 16;
      --v1;
    }

    while (v1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v11 = BidirectionalCollection<>.joined(separator:)();

  return v11;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> StackedGridsLayout.validateLayout()()
{
  v1 = 0;
  while (v1 != *(v0 + 16))
  {
    v2 = v1;
    v3 = *(v0 + 32 + 8 * v1++);
    v4 = *(v3 + 16);
    if (v4)
    {
      v5 = 0;
      v6 = (v3 + 40);
      do
      {
        v7 = *(v6 - 1);
        if (*v6)
        {
          v7 = 3;
        }

        v8 = __OFADD__(v5, v7);
        v5 += v7;
        if (v8)
        {
          __break(1u);
          return;
        }

        v6 += 16;
        --v4;
      }

      while (v4);
      if (v5 == v2)
      {
        continue;
      }

LABEL_12:
      _StringGuts.grow(_:)(59);
      MEMORY[0x25F89F6C0](0xD000000000000025, 0x800000025DBF9380);
      v9 = OUTLINED_FUNCTION_9_47();
      MEMORY[0x25F89F6C0](v9);

      MEMORY[0x25F89F6C0](544434464, 0xE400000000000000);
      v10 = OUTLINED_FUNCTION_9_47();
      MEMORY[0x25F89F6C0](v10);

      MEMORY[0x25F89F6C0](0x746365707865202CLL, 0xEC000000203A6465);
      v11 = OUTLINED_FUNCTION_9_47();
      MEMORY[0x25F89F6C0](v11);

      lazy protocol witness table accessor for type StackedGridsLayout.StackedGridLayoutError and conformance StackedGridsLayout.StackedGridLayoutError();
      swift_allocError();
      *v12 = 0;
      v12[1] = 0xE000000000000000;
      swift_willThrow();
      return;
    }

    if (v2)
    {
      goto LABEL_12;
    }
  }
}

void StackedGridsLayout.generateStackedGrids(for:)()
{
  OUTLINED_FUNCTION_9_46();
  if (v2 < 1)
  {
    goto LABEL_48;
  }

  v6 = *(v3 + 16);
  if (v6 < 2)
  {
    goto LABEL_48;
  }

  v7 = v4;
  if (v6 > v2)
  {
    v8 = v2;
  }

  else
  {
    v8 = v6 - 1;
  }

  if (v6 <= v2 && (v5 & 1) != 0)
  {
    if (v4 < 1)
    {
      v8 = v6 - 1;
    }

    else
    {
      v9 = v2;
      do
      {
        v10 = __OFSUB__(v9, v4);
        v9 -= v4;
        if (v10)
        {
          goto LABEL_50;
        }
      }

      while (v6 <= v9);
      v8 = v9 & ~(v9 >> 63);
    }
  }

  if (v8 >= v6)
  {
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v11 = *(v3 + 8 * v8 + 32);
  v1 = *(v11 + 16);
  if (v1)
  {
    v31 = v2;

    v12 = 0;
    v13 = (v11 + 40);
    v14 = MEMORY[0x277D84F90];
    while (1)
    {
      v15 = *(v13 - 1);
      v0 = *v13;
      v16 = [objc_allocWithZone(MEMORY[0x277D4C280]) init];
      v17 = v16;
      if (v0)
      {
        v18 = 3;
      }

      else
      {
        if (v15 < 1)
        {

          v18 = v15;
          goto LABEL_32;
        }

        v18 = v15;
      }

      [v16 setNumberOfColumns_];
      if (v15)
      {
        v19 = 2;
      }

      else
      {
        v19 = 1;
      }

      if (v0)
      {
        v20 = v19;
      }

      else
      {
        v20 = 0;
      }

      [v17 setGridStyle_];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_44();
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v14 = v23;
      }

      v0 = *(v14 + 16);
      v21 = *(v14 + 24);
      if (v0 >= v21 >> 1)
      {
        OUTLINED_FUNCTION_26_3(v21);
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v14 = v24;
      }

      *(v14 + 16) = v0 + 1;
      v22 = v14 + 16 * v0;
      *(v22 + 32) = v17;
      *(v22 + 40) = v18;
LABEL_32:
      v10 = __OFADD__(v12, v18);
      v12 += v18;
      if (v10)
      {
        __break(1u);
LABEL_50:
        __break(1u);
        goto LABEL_51;
      }

      v13 += 16;
      if (!--v1)
      {

        v2 = v31;
        goto LABEL_37;
      }
    }
  }

  v12 = 0;
  v14 = MEMORY[0x277D84F90];
LABEL_37:
  v1 = v2 - v12;
  if (__OFSUB__(v2, v12))
  {
    goto LABEL_52;
  }

  if (!v7 && v12 >= 1)
  {
    StackedGridsLayout.generateStackedGrids(for:)();
    specialized Array.append<A>(contentsOf:)(v25);
    goto LABEL_48;
  }

  v0 = [objc_allocWithZone(MEMORY[0x277D4C280]) init];
  [v0 setGridStyle_];
  if ((v7 & 0x8000000000000000) == 0)
  {
    [v0 setNumberOfColumns_];
    if (v1 < 1)
    {

      goto LABEL_48;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_44;
    }

    goto LABEL_54;
  }

LABEL_53:
  __break(1u);
LABEL_54:
  OUTLINED_FUNCTION_44();
  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  v14 = v29;
LABEL_44:
  v27 = *(v14 + 16);
  v26 = *(v14 + 24);
  if (v27 >= v26 >> 1)
  {
    OUTLINED_FUNCTION_26_3(v26);
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v14 = v30;
  }

  *(v14 + 16) = v27 + 1;
  v28 = v14 + 16 * v27;
  *(v28 + 32) = v0;
  *(v28 + 40) = v1;
LABEL_48:
  OUTLINED_FUNCTION_10_44();
}

uint64_t StackedGridsLayout.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x476E726574746170 && a2 == 0xEC00000073646972;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000018 && 0x800000025DBF93E0 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000014 && 0x800000025DBF9400 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000015 && 0x800000025DBF9420 == a2)
      {

        return 3;
      }

      else
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

unint64_t StackedGridsLayout.CodingKeys.stringValue.getter(char a1)
{
  result = 0x476E726574746170;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000018;
      break;
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance StackedGridsLayout.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = StackedGridsLayout.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance StackedGridsLayout.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type StackedGridsLayout.CodingKeys and conformance StackedGridsLayout.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance StackedGridsLayout.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type StackedGridsLayout.CodingKeys and conformance StackedGridsLayout.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t StackedGridsLayout.encode(to:)(void *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v14 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch18StackedGridsLayoutV10CodingKeys33_4628CCC6220FEB69288264EAE3449300LLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch18StackedGridsLayoutV10CodingKeys33_4628CCC6220FEB69288264EAE3449300LLOGMR);
  OUTLINED_FUNCTION_14();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v14 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type StackedGridsLayout.CodingKeys and conformance StackedGridsLayout.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v19 = a2;
  v18 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySay10OmniSearch13StackableGridOGGMd, &_sSaySay10OmniSearch13StackableGridOGGMR);
  lazy protocol witness table accessor for type [[StackableGrid]] and conformance <A> [A](&lazy protocol witness table cache variable for type [[StackableGrid]] and conformance <A> [A], lazy protocol witness table accessor for type [StackableGrid] and conformance <A> [A]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v4)
  {
    v17 = 1;
    OUTLINED_FUNCTION_6_45();
    KeyedEncodingContainer.encode(_:forKey:)();
    v16 = 2;
    OUTLINED_FUNCTION_6_45();
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = 3;
    OUTLINED_FUNCTION_6_45();
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v9 + 8))(v12, v7);
}

uint64_t StackedGridsLayout.init(from:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch18StackedGridsLayoutV10CodingKeys33_4628CCC6220FEB69288264EAE3449300LLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch18StackedGridsLayoutV10CodingKeys33_4628CCC6220FEB69288264EAE3449300LLOGMR);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v2);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type StackedGridsLayout.CodingKeys and conformance StackedGridsLayout.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySay10OmniSearch13StackableGridOGGMd, &_sSaySay10OmniSearch13StackableGridOGGMR);
  lazy protocol witness table accessor for type [[StackableGrid]] and conformance <A> [A](&lazy protocol witness table cache variable for type [[StackableGrid]] and conformance <A> [A], lazy protocol witness table accessor for type [StackableGrid] and conformance <A> [A]);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  OUTLINED_FUNCTION_4_57();
  KeyedDecodingContainer.decode(_:forKey:)();
  OUTLINED_FUNCTION_4_57();
  KeyedDecodingContainer.decode(_:forKey:)();
  OUTLINED_FUNCTION_4_57();
  KeyedDecodingContainer.decode(_:forKey:)();
  v4 = OUTLINED_FUNCTION_9_34();
  v5(v4);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v6;
}

uint64_t protocol witness for Decodable.init(from:) in conformance StackedGridsLayout@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = StackedGridsLayout.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6 & 1;
    *(a2 + 17) = HIBYTE(v6) & 1;
  }

  return result;
}

uint64_t protocol witness for Encodable.encode(to:) in conformance StackedGridsLayout(void *a1)
{
  if (*(v1 + 17))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return StackedGridsLayout.encode(to:)(a1, *v1, *(v1 + 8), v2 | *(v1 + 16));
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance StackedGridsLayout(uint64_t a1)
{
  if (*(a1 + 17))
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  return specialized == infix<A>(_:_:)(*a1, *(a1 + 8), v1 | *(a1 + 16));
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance StackedGridsLayout@<X0>(Swift::OpaquePointer *a1@<X0>, uint64_t a2@<X8>)
{
  result = StackedGridsLayout.init(rawValue:)(a1->_rawValue);
  *a2 = result;
  *(a2 + 8) = 3;
  *(a2 + 16) = 257;
  return result;
}

uint64_t SFCollectionStyleGrid.toString.getter()
{
  v1 = [v0 gridStyle];
  if (v1)
  {
    if (v1 == 1)
    {
      return 72;
    }

    else if (v1 == 2)
    {
      return 104;
    }

    else
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  else
  {
    [v0 numberOfColumns];
    return dispatch thunk of CustomStringConvertible.description.getter();
  }

  return result;
}

Swift::String_optional *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
{
  v4 = String.count.getter();
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  v5 = v4;
  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSJ_Tt1gq5(v4, 0);

  v7 = specialized Sequence._copySequenceContents(initializing:)(&v9, v6 + 2, v5, a1, a2);

  if (v7 != v5)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v6;
}

unint64_t lazy protocol witness table accessor for type StackedGridsLayout.StackedGridLayoutError and conformance StackedGridsLayout.StackedGridLayoutError()
{
  result = lazy protocol witness table cache variable for type StackedGridsLayout.StackedGridLayoutError and conformance StackedGridsLayout.StackedGridLayoutError;
  if (!lazy protocol witness table cache variable for type StackedGridsLayout.StackedGridLayoutError and conformance StackedGridsLayout.StackedGridLayoutError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StackedGridsLayout.StackedGridLayoutError and conformance StackedGridsLayout.StackedGridLayoutError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StackedGridsLayout.CodingKeys and conformance StackedGridsLayout.CodingKeys()
{
  result = lazy protocol witness table cache variable for type StackedGridsLayout.CodingKeys and conformance StackedGridsLayout.CodingKeys;
  if (!lazy protocol witness table cache variable for type StackedGridsLayout.CodingKeys and conformance StackedGridsLayout.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StackedGridsLayout.CodingKeys and conformance StackedGridsLayout.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StackedGridsLayout.CodingKeys and conformance StackedGridsLayout.CodingKeys;
  if (!lazy protocol witness table cache variable for type StackedGridsLayout.CodingKeys and conformance StackedGridsLayout.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StackedGridsLayout.CodingKeys and conformance StackedGridsLayout.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StackedGridsLayout.CodingKeys and conformance StackedGridsLayout.CodingKeys;
  if (!lazy protocol witness table cache variable for type StackedGridsLayout.CodingKeys and conformance StackedGridsLayout.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StackedGridsLayout.CodingKeys and conformance StackedGridsLayout.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StackedGridsLayout.CodingKeys and conformance StackedGridsLayout.CodingKeys;
  if (!lazy protocol witness table cache variable for type StackedGridsLayout.CodingKeys and conformance StackedGridsLayout.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StackedGridsLayout.CodingKeys and conformance StackedGridsLayout.CodingKeys);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [StackableGrid] and conformance <A> [A]()
{
  return lazy protocol witness table accessor for type [StackableGrid] and conformance <A> [A](&lazy protocol witness table cache variable for type [StackableGrid] and conformance <A> [A], lazy protocol witness table accessor for type StackableGrid and conformance StackableGrid);
}

{
  return lazy protocol witness table accessor for type [StackableGrid] and conformance <A> [A](&lazy protocol witness table cache variable for type [StackableGrid] and conformance <A> [A], lazy protocol witness table accessor for type StackableGrid and conformance StackableGrid);
}

uint64_t lazy protocol witness table accessor for type [StackableGrid] and conformance <A> [A](unint64_t *a1, uint64_t (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10OmniSearch13StackableGridOGMd, &_sSay10OmniSearch13StackableGridOGMR);
    a2();
    result = OUTLINED_FUNCTION_14_33();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StackableGrid and conformance StackableGrid()
{
  result = lazy protocol witness table cache variable for type StackableGrid and conformance StackableGrid;
  if (!lazy protocol witness table cache variable for type StackableGrid and conformance StackableGrid)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StackableGrid and conformance StackableGrid);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StackableGrid and conformance StackableGrid;
  if (!lazy protocol witness table cache variable for type StackableGrid and conformance StackableGrid)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StackableGrid and conformance StackableGrid);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StackableGrid and conformance StackableGrid;
  if (!lazy protocol witness table cache variable for type StackableGrid and conformance StackableGrid)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StackableGrid and conformance StackableGrid);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [[StackableGrid]] and conformance <A> [A](unint64_t *a1, uint64_t (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySay10OmniSearch13StackableGridOGGMd, &_sSaySay10OmniSearch13StackableGridOGGMR);
    a2();
    result = OUTLINED_FUNCTION_14_33();
    atomic_store(result, a1);
  }

  return result;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for StackedGridsLayout(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 18))
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

uint64_t storeEnumTagSinglePayload for StackedGridsLayout(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StackedGridsLayout.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t specialized Sequence._copySequenceContents(initializing:)(uint64_t result, Swift::String_optional *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v5 = result;
  v6 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v6 = a4 & 0xFFFFFFFFFFFFLL;
  }

  v13 = a4;
  v14 = a5;
  *&v15 = 0;
  *(&v15 + 1) = v6;
  *&v7 = 0;
  *(&v7 + 1) = v6;
  if (!a2)
  {
    v10 = 0;
LABEL_15:
    *v5 = a4;
    *(v5 + 8) = a5;
    *(v5 + 16) = v7;
    return v10;
  }

  if (!a3)
  {
    v10 = 0;
    goto LABEL_15;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = a2;
    v10 = 0;
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      v12 = String.Iterator.next()();
      result = v12.value._countAndFlagsBits;
      if (!v12.value._object)
      {
        a4 = v13;
        a5 = v14;
        goto LABEL_14;
      }

      *v9++ = v12;
      ++v10;
      if (v11 == a3)
      {
        a4 = v13;
        a5 = v14;
        v10 = a3;
LABEL_14:
        v7 = v15;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSJ_Tt1gq5(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySJGMd, &_ss23_ContiguousArrayStorageCySJGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 16);
  return v4;
}

uint64_t OUTLINED_FUNCTION_9_47()
{

  return dispatch thunk of CustomStringConvertible.description.getter();
}

uint64_t OUTLINED_FUNCTION_14_33()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_15_40()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t StackedGridsLayoutProvider.__allocating_init(_:)()
{
  OUTLINED_FUNCTION_0_92();
  v0 = swift_allocObject();
  StackedGridsLayoutProvider.init(_:)();
  return v0;
}

uint64_t key path getter for StackedGridsLayoutProvider.gridsLayout : StackedGridsLayoutProvider@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(**a1 + 88))();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  return result;
}

uint64_t key path setter for StackedGridsLayoutProvider.gridsLayout : StackedGridsLayoutProvider(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(**a2 + 96);
  v4 = *(a1 + 16);

  return v3(v5, v2, v4);
}

void StackedGridsLayoutProvider.gridsLayout.didset()
{
  swift_beginAccess();
  if (*(v0 + 16))
  {

    StackedGridsLayout.validateLayout()();
    if (v1)
    {

      if (one-time initialization token for visual != -1)
      {
        swift_once();
      }

      v2 = type metadata accessor for Logger();
      __swift_project_value_buffer(v2, static Logging.visual);
      v3 = v1;
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        v7 = swift_slowAlloc();
        *v6 = 138412290;
        v8 = v1;
        v9 = _swift_stdlib_bridgeErrorToNSError();
        *(v6 + 4) = v9;
        *v7 = v9;
        _os_log_impl(&dword_25D85C000, v4, v5, "Failed to set grid layout, error: %@", v6, 0xCu);
        outlined destroy of NSObject?(v7);
        MEMORY[0x25F8A1050](v7, -1, -1);
        MEMORY[0x25F8A1050](v6, -1, -1);
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

void StackedGridsLayoutProvider.gridsLayout.setter()
{
  OUTLINED_FUNCTION_0_92();
  swift_beginAccess();
  *(v1 + 16) = v3;
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;

  StackedGridsLayoutProvider.gridsLayout.didset();
}

void (*StackedGridsLayoutProvider.gridsLayout.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return StackedGridsLayoutProvider.gridsLayout.modify;
}

void StackedGridsLayoutProvider.gridsLayout.modify(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    StackedGridsLayoutProvider.gridsLayout.didset();
  }
}

uint64_t StackedGridsLayoutProvider.init(_:)()
{
  OUTLINED_FUNCTION_0_92();
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  *(v1 + 16) = 0;
  swift_beginAccess();
  *(v1 + 16) = v3;
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return v1;
}

uint64_t StackedGridsLayoutProvider.layout(_:)(unint64_t a1)
{
  v2 = v1;
  if (one-time initialization token for visual != -1)
  {
LABEL_66:
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logging.visual);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = specialized Array.count.getter();

    _os_log_impl(&dword_25D85C000, v5, v6, "Starting layout, input %ld cardSections", v7, 0xCu);
    MEMORY[0x25F8A1050](v7, -1, -1);
  }

  else
  {
  }

  v9 = (*(*v2 + 88))(v8);
  if (!v9)
  {
    goto LABEL_52;
  }

  v10 = v9;
  if (specialized Array.count.getter() < 1 || *(v10 + 16) < 2uLL)
  {

LABEL_52:

    return a1;
  }

  v44 = MEMORY[0x277D84F90];
  StackedGridsLayout.generateStackedGrids(for:)();
  v12 = v11;

  v13 = *(v12 + 16);
  if (!v13)
  {

    a1 = MEMORY[0x277D84F90];
LABEL_55:

    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 134217984;
      *(v39 + 4) = specialized Array.count.getter();

      _os_log_impl(&dword_25D85C000, v37, v38, "Finished layout, output %ld cardSections", v39, 0xCu);
      MEMORY[0x25F8A1050](v39, -1, -1);
    }

    else
    {
    }

    return a1;
  }

  v14 = 0;
  v15 = 0;
  if ((a1 & 0x8000000000000000) != 0)
  {
    v16 = a1;
  }

  else
  {
    v16 = a1 & 0xFFFFFFFFFFFFFF8;
  }

  v42 = v12 + 32;
  v40 = v16;
  v17 = MEMORY[0x277D84F90];
  v18 = a1 >> 62;
  v41 = v13;
  while (1)
  {
    v19 = v42 + 16 * v15;
    v20 = *(v19 + 8);
    if (v20)
    {
      break;
    }

LABEL_49:
    if (++v15 == v13)
    {

      a1 = v17;
      goto LABEL_55;
    }
  }

  v2 = *v19;
  v21 = StackedGridsLayoutProvider.collectionCardSections(for:)(v2);
  v22 = v14 + v20;
  if (__OFADD__(v14, v20))
  {
    __break(1u);
LABEL_60:
    __break(1u);
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
    goto LABEL_66;
  }

  if (v22 < v14)
  {
    goto LABEL_60;
  }

  v23 = v21;
  if (v18)
  {
    if (MEMORY[0x25F8A01B0](v40) < v14)
    {
      goto LABEL_61;
    }

    v24 = MEMORY[0x25F8A01B0](v40);
  }

  else
  {
    v24 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v24 < v14)
    {
      goto LABEL_61;
    }
  }

  if (v24 < v22)
  {
    goto LABEL_62;
  }

  v43 = v2;
  if ((a1 & 0xC000000000000001) == 0 || v14 == v22)
  {

    if (!v18)
    {
LABEL_25:
      v27 = (2 * v22) | 1;
      goto LABEL_28;
    }
  }

  else
  {
    if (v14 >= v22)
    {
      goto LABEL_64;
    }

    type metadata accessor for SFCardSection();

    v25 = v14;
    do
    {
      v26 = v25 + 1;
      _ArrayBuffer._typeCheckSlowPath(_:)(v25);
      v25 = v26;
      --v20;
    }

    while (v20);
    if (!v18)
    {
      goto LABEL_25;
    }
  }

  _CocoaArrayWrapper.subscript.getter();
  v14 = v28;
LABEL_28:
  v29 = v27 >> 1;
  if (v27)
  {
    type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain_n();
    v32 = swift_dynamicCastClass();
    if (!v32)
    {
      swift_unknownObjectRelease();
      v32 = MEMORY[0x277D84F90];
    }

    v33 = *(v32 + 16);

    v2 = v29 - v14;
    if (__OFSUB__(v29, v14))
    {
      goto LABEL_65;
    }

    if (v33 == v2)
    {
      v34 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      v13 = v41;
      v18 = a1 >> 62;
      if (v34)
      {
LABEL_46:
        outlined bridged method (mbnn) of @objc SFCollectionCardSection.cardSections.setter();
        v35 = v23;
        MEMORY[0x25F89F850]();
        if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        v17 = v44;
        v14 = v22;
        goto LABEL_49;
      }

LABEL_45:
      swift_unknownObjectRelease();
      goto LABEL_46;
    }

    swift_unknownObjectRelease();
    v13 = v41;
    if (!v2)
    {
LABEL_44:
      v18 = a1 >> 62;
      goto LABEL_45;
    }
  }

  else
  {
    v2 = v29 - v14;
    if (__OFSUB__(v29, v14))
    {
      goto LABEL_63;
    }

    if (!v2)
    {
      goto LABEL_44;
    }
  }

  if (v2 >= 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v30 = swift_allocObject();
    v31 = _swift_stdlib_malloc_size(v30);
    v13 = v41;
    v30[2] = v2;
    v30[3] = (2 * ((v31 - 32) / 8)) | 1;
  }

  if (v14 != v29)
  {
    type metadata accessor for SFCardSection();
    swift_arrayInitWithCopy();
    goto LABEL_44;
  }

  result = swift_unknownObjectRelease();
  __break(1u);
  return result;
}

id StackedGridsLayoutProvider.collectionCardSections(for:)(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D4C278]) init];
  [v2 setCollectionStyle_];
  return v2;
}

uint64_t StackedGridsLayoutProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t SearchEntityVisualContext.__allocating_init(cardBuilder:)(void *a1)
{
  swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_17_23();
  MEMORY[0x28223BE20](v2);
  v4 = OUTLINED_FUNCTION_12_24(v3, v8);
  v5(v4);
  v6 = OUTLINED_FUNCTION_2_69();
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v6;
}

uint64_t SearchEntityVisualContext.cardBuilder.setter(__int128 *a1)
{
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 16));
  outlined init with take of EntityCardBuilding(a1, v1 + 16);
  return swift_endAccess();
}

uint64_t SearchEntityVisualContext.init(cardBuilder:)(void *a1)
{
  __swift_mutable_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_17_23();
  MEMORY[0x28223BE20](v2);
  v4 = OUTLINED_FUNCTION_12_24(v3, v8);
  v5(v4);
  v6 = OUTLINED_FUNCTION_2_69();
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v6;
}

uint64_t SearchEntityVisualContext.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t specialized SearchEntityVisualContext.init(cardBuilder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = a3;
  v11 = a4;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(&v9);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1Tm, a1, a3);
  outlined init with take of EntityCardBuilding(&v9, a2 + 16);
  return a2;
}

uint64_t OUTLINED_FUNCTION_2_69()
{

  return specialized SearchEntityVisualContext.init(cardBuilder:)(v3, v0, v1, v2);
}

uint64_t MessageAccumulationContext.makeMessageOnlySnippetData()()
{
  MessageAccumulationContext.makeViewModel()();
  if (!v2)
  {
    return 0;
  }

  lazy protocol witness table accessor for type SearchToolSnippetPluginModel and conformance SearchToolSnippetPluginModel();
  v0 = SnippetPluginModel.data.getter();

  return v0;
}

OmniSearch::AttributionViewModel __swiftcall AttributionViewModel.init(sourceBundles:messages:)(Swift::OpaquePointer sourceBundles, OmniSearch::MessageAccumulationViewModel_optional messages)
{
  v3 = *messages.value.summaries._rawValue;
  v2->_rawValue = sourceBundles._rawValue;
  v2[1]._rawValue = v3;
  result.messages = messages;
  result.sourceBundles = sourceBundles;
  return result;
}

uint64_t static SearchToolSnippetPluginModel.bundleName.getter()
{
  swift_beginAccess();

  return OUTLINED_FUNCTION_107();
}

uint64_t static SearchToolSnippetPluginModel.bundleName.setter(uint64_t a1, void *a2)
{
  swift_beginAccess();
  static SearchToolSnippetPluginModel.bundleName = a1;
  off_27FC71808 = a2;
}

uint64_t (*static SearchToolSnippetPluginModel.bundleName.modify())(uint64_t a1)
{
  OUTLINED_FUNCTION_107();
  swift_beginAccess();
  return static FlightSnippet.Status.allCases.modify;
}

uint64_t SearchToolSnippetPluginModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7475626972747461 && a2 == 0xEB000000006E6F69)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t key path getter for static SearchToolSnippetPluginModel.bundleName : SearchToolSnippetPluginModel.Type@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = off_27FC71808;
  *a1 = static SearchToolSnippetPluginModel.bundleName;
  a1[1] = v2;
}

uint64_t key path setter for static SearchToolSnippetPluginModel.bundleName : SearchToolSnippetPluginModel.Type(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  static SearchToolSnippetPluginModel.bundleName = v2;
  off_27FC71808 = v1;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SearchToolSnippetPluginModel.AttributionCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchToolSnippetPluginModel.AttributionCodingKeys and conformance SearchToolSnippetPluginModel.AttributionCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SearchToolSnippetPluginModel.AttributionCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchToolSnippetPluginModel.AttributionCodingKeys and conformance SearchToolSnippetPluginModel.AttributionCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SearchToolSnippetPluginModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = SearchToolSnippetPluginModel.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SearchToolSnippetPluginModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchToolSnippetPluginModel.CodingKeys and conformance SearchToolSnippetPluginModel.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SearchToolSnippetPluginModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchToolSnippetPluginModel.CodingKeys and conformance SearchToolSnippetPluginModel.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void SearchToolSnippetPluginModel.encode(to:)()
{
  OUTLINED_FUNCTION_60_1();
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch0E22ToolSnippetPluginModelO21AttributionCodingKeys33_764E27219276D372D031B6F44FD14947LLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch0E22ToolSnippetPluginModelO21AttributionCodingKeys33_764E27219276D372D031B6F44FD14947LLOGMR);
  OUTLINED_FUNCTION_14();
  v17 = v4;
  v18 = v5;
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v6);
  v8 = &v15 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch0E22ToolSnippetPluginModelO10CodingKeys33_764E27219276D372D031B6F44FD14947LLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch0E22ToolSnippetPluginModelO10CodingKeys33_764E27219276D372D031B6F44FD14947LLOGMR);
  OUTLINED_FUNCTION_14();
  v11 = v10;
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_18_9();
  v13 = *v0;
  v16 = v0[1];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  lazy protocol witness table accessor for type SearchToolSnippetPluginModel.CodingKeys and conformance SearchToolSnippetPluginModel.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  lazy protocol witness table accessor for type SearchToolSnippetPluginModel.AttributionCodingKeys and conformance SearchToolSnippetPluginModel.AttributionCodingKeys();
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  v19 = v13;
  v20 = v16;
  lazy protocol witness table accessor for type AttributionViewModel and conformance AttributionViewModel();
  v14 = v17;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  (*(v18 + 8))(v8, v14);
  (*(v11 + 8))(v1, v9);
  OUTLINED_FUNCTION_61_2();
}

void SearchToolSnippetPluginModel.init(from:)()
{
  OUTLINED_FUNCTION_60_1();
  v2 = v1;
  v41 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch0E22ToolSnippetPluginModelO21AttributionCodingKeys33_764E27219276D372D031B6F44FD14947LLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch0E22ToolSnippetPluginModelO21AttributionCodingKeys33_764E27219276D372D031B6F44FD14947LLOGMR);
  OUTLINED_FUNCTION_14();
  v38 = v5;
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v6);
  v8 = &v33 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch0E22ToolSnippetPluginModelO10CodingKeys33_764E27219276D372D031B6F44FD14947LLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch0E22ToolSnippetPluginModelO10CodingKeys33_764E27219276D372D031B6F44FD14947LLOGMR);
  OUTLINED_FUNCTION_14();
  v37 = v10;
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v11);
  v13 = &v33 - v12;
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  lazy protocol witness table accessor for type SearchToolSnippetPluginModel.CodingKeys and conformance SearchToolSnippetPluginModel.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    goto LABEL_8;
  }

  v35 = v8;
  v36 = v2;
  v14 = v38;
  v34 = v4;
  v15 = KeyedDecodingContainer.allKeys.getter();
  _ss12_SliceBufferV7_buffer19shiftedToStartIndexAByxGs016_ContiguousArrayB0VyxG_SitcfC10OmniSearch0K22ToolSnippetPluginModelO10CodingKeys33_764E27219276D372D031B6F44FD14947LLO_Tt1g5(v15, 0);
  v18 = v9;
  if (v16 == v17 >> 1)
  {
LABEL_7:
    v26 = type metadata accessor for DecodingError();
    swift_allocError();
    v28 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
    *v28 = &type metadata for SearchToolSnippetPluginModel;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v26 - 8) + 104))(v28, *MEMORY[0x277D84160], v26);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v37 + 8))(v13, v18);
    v2 = v36;
LABEL_8:
    v32 = v2;
    goto LABEL_9;
  }

  if (v16 < (v17 >> 1))
  {
    v19 = v9;
    specialized ArraySlice.subscript.getter();
    v21 = v20;
    v23 = v22;
    swift_unknownObjectRelease();
    if (v21 == v23 >> 1)
    {
      lazy protocol witness table accessor for type SearchToolSnippetPluginModel.AttributionCodingKeys and conformance SearchToolSnippetPluginModel.AttributionCodingKeys();
      v24 = v35;
      v25 = v19;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      lazy protocol witness table accessor for type AttributionViewModel and conformance AttributionViewModel();
      v29 = v34;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v30 = v37;
      swift_unknownObjectRelease();
      (*(v14 + 8))(v24, v29);
      (*(v30 + 8))(v13, v25);
      v31 = v40;
      *v41 = v39;
      v41[1] = v31;
      v32 = v36;
LABEL_9:
      __swift_destroy_boxed_opaque_existential_1Tm(v32);
      OUTLINED_FUNCTION_61_2();
      return;
    }

    v18 = v9;
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t AttributionViewModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7542656372756F73 && a2 == 0xED000073656C646ELL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736567617373656DLL && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t AttributionViewModel.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x736567617373656DLL;
  }

  else
  {
    return 0x7542656372756F73;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AttributionViewModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = AttributionViewModel.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AttributionViewModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AttributionViewModel.CodingKeys and conformance AttributionViewModel.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AttributionViewModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AttributionViewModel.CodingKeys and conformance AttributionViewModel.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void AttributionViewModel.encode(to:)()
{
  OUTLINED_FUNCTION_60_1();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch20AttributionViewModelV10CodingKeys33_764E27219276D372D031B6F44FD14947LLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch20AttributionViewModelV10CodingKeys33_764E27219276D372D031B6F44FD14947LLOGMR);
  OUTLINED_FUNCTION_14();
  v5 = v4;
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v6);
  v8 = &v10 - v7;
  v10 = *(v0 + 8);
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  v9 = lazy protocol witness table accessor for type AttributionViewModel.CodingKeys and conformance AttributionViewModel.CodingKeys();

  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A], MEMORY[0x277D837D8], MEMORY[0x277D83948]);
  OUTLINED_FUNCTION_26_8();
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  if (!v9)
  {
    v11 = 1;
    lazy protocol witness table accessor for type MessageAccumulationViewModel and conformance MessageAccumulationViewModel();

    OUTLINED_FUNCTION_26_8();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  (*(v5 + 8))(v8, v3);
  OUTLINED_FUNCTION_61_2();
}

void AttributionViewModel.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_60_1();
  v12 = v11;
  v14 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch20AttributionViewModelV10CodingKeys33_764E27219276D372D031B6F44FD14947LLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch20AttributionViewModelV10CodingKeys33_764E27219276D372D031B6F44FD14947LLOGMR);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_18_9();
  OUTLINED_FUNCTION_25_13();
  v16 = lazy protocol witness table accessor for type AttributionViewModel.CodingKeys and conformance AttributionViewModel.CodingKeys();
  OUTLINED_FUNCTION_11_49(&unk_286F85BE0, v17, v16);
  if (v10)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A], MEMORY[0x277D83808], MEMORY[0x277D83978]);
    OUTLINED_FUNCTION_39_16();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    lazy protocol witness table accessor for type MessageAccumulationViewModel and conformance MessageAccumulationViewModel();
    OUTLINED_FUNCTION_39_16();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v18 = OUTLINED_FUNCTION_17_7();
    v19(v18);
    *v14 = a10;
    v14[1] = a10;

    __swift_destroy_boxed_opaque_existential_1Tm(v12);
  }

  OUTLINED_FUNCTION_61_2();
}

uint64_t MessageAccumulationViewModel.Summary.glyphName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t MessageAccumulationViewModel.Summary.text.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

OmniSearch::MessageAccumulationViewModel::Summary __swiftcall MessageAccumulationViewModel.Summary.init(glyphName:text:)(Swift::String glyphName, Swift::String text)
{
  *v2 = glyphName;
  v2[1] = text;
  result.text = text;
  result.glyphName = glyphName;
  return result;
}

void MessageAccumulationViewModel.Summary.init(error:subcomponent:)(void *a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  *a3 = 0xD000000000000017;
  a3[1] = 0x800000025DBF94E0;
  if (a2)
  {
    if (a2 == 1)
    {
      v5 = 0x73757361676550;
    }

    else
    {
      v5 = 0xD000000000000010;
    }

    if (a2 == 1)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0x800000025DBF9500;
    }
  }

  else
  {
    v6 = 0xE900000000000074;
    v5 = OUTLINED_FUNCTION_12_43();
  }

  MEMORY[0x25F89F6C0](v5, v6);

  MEMORY[0x25F89F6C0](8250, 0xE200000000000000);
  swift_getErrorValue();
  v7 = Error.baseError.getter(v11, v12);
  swift_getErrorValue();
  v8 = Error.localizedDescription.getter();
  v10 = v9;

  MEMORY[0x25F89F6C0](v8, v10);

  a3[2] = 0;
  a3[3] = 0xE000000000000000;
}

uint64_t MessageAccumulationContext.Subcomponent.displayName.getter(char a1)
{
  if (!a1)
  {
    return OUTLINED_FUNCTION_12_43();
  }

  if (a1 == 1)
  {
    return 0x73757361676550;
  }

  return 0xD000000000000010;
}

uint64_t Error.baseError.getter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = v25 - v10;
  v12 = *(v5 + 16);
  v12(v25 - v10, v3, a1, v9);
  v13 = _getErrorEmbeddedNSError<A>(_:)();
  if (v13)
  {
    v14 = v13;
    (*(v5 + 8))(v11, a1);
  }

  else
  {
    v14 = swift_allocError();
    (*(v5 + 32))(v15, v11, a1);
  }

  v16 = _convertErrorToNSError(_:)();

  v17 = [v16 underlyingErrors];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (*(v18 + 16))
  {
    v19 = *(v18 + 32);
    v20 = v19;

    swift_getErrorValue();
    v21 = Error.baseError.getter(v25[1], v25[2]);
  }

  else
  {

    (v12)(v7, v3, a1);
    v22 = _getErrorEmbeddedNSError<A>(_:)();
    if (v22)
    {
      v21 = v22;
      (*(v5 + 8))(v7, a1);
    }

    else
    {
      v21 = swift_allocError();
      (*(v5 + 32))(v23, v7, a1);
    }
  }

  return v21;
}

uint64_t MessageAccumulationViewModel.Summary.init(message:severity:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, unint64_t *a3@<X8>)
{
  v6 = type metadata accessor for LocalizedStringResource();
  OUTLINED_FUNCTION_14();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_36();
  if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xD000000000000018;
    }

    else
    {
      v12 = 0x7269632E6F666E69;
    }

    if (a2 == 1)
    {
      v13 = 0x800000025DBF9520;
    }

    else
    {
      v13 = 0xEB00000000656C63;
    }
  }

  else
  {
    v12 = 0xD000000000000017;
    v13 = 0x800000025DBF94E0;
  }

  (*(v8 + 16))(v11 - v10, a1, v6);
  v14 = String.init(localized:)();
  v16 = v15;
  result = (*(v8 + 8))(a1, v6);
  *a3 = v12;
  a3[1] = v13;
  a3[2] = v14;
  a3[3] = v16;
  return result;
}

uint64_t MessageAccumulationViewModel.Summary.id.getter()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = *v0;

  MEMORY[0x25F89F6C0](32, 0xE100000000000000);
  MEMORY[0x25F89F6C0](v1, v2);
  return v4;
}

uint64_t MessageAccumulationViewModel.Summary.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D614E6870796C67 && a2 == 0xE900000000000065;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1954047348 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t MessageAccumulationViewModel.Summary.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 1954047348;
  }

  else
  {
    return 0x6D614E6870796C67;
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AttributionViewModel.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *, uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  a4(v8, v6);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MessageAccumulationViewModel.Summary.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = MessageAccumulationViewModel.Summary.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MessageAccumulationViewModel.Summary.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MessageAccumulationViewModel.Summary.CodingKeys and conformance MessageAccumulationViewModel.Summary.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MessageAccumulationViewModel.Summary.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MessageAccumulationViewModel.Summary.CodingKeys and conformance MessageAccumulationViewModel.Summary.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void MessageAccumulationViewModel.Summary.encode(to:)()
{
  OUTLINED_FUNCTION_60_1();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch28MessageAccumulationViewModelV7SummaryV10CodingKeys33_764E27219276D372D031B6F44FD14947LLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch28MessageAccumulationViewModelV7SummaryV10CodingKeys33_764E27219276D372D031B6F44FD14947LLOGMR);
  OUTLINED_FUNCTION_14();
  v11 = v5;
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v6);
  v8 = v10 - v7;
  v9 = *(v0 + 16);
  v10[1] = *(v0 + 24);
  v10[2] = v9;
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  lazy protocol witness table accessor for type MessageAccumulationViewModel.Summary.CodingKeys and conformance MessageAccumulationViewModel.Summary.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  OUTLINED_FUNCTION_26_8();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    OUTLINED_FUNCTION_26_8();
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  (*(v11 + 8))(v8, v4);
  OUTLINED_FUNCTION_61_2();
}

void MessageAccumulationViewModel.Summary.init(from:)()
{
  OUTLINED_FUNCTION_60_1();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch28MessageAccumulationViewModelV7SummaryV10CodingKeys33_764E27219276D372D031B6F44FD14947LLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch28MessageAccumulationViewModelV7SummaryV10CodingKeys33_764E27219276D372D031B6F44FD14947LLOGMR);
  OUTLINED_FUNCTION_14();
  v8 = v7;
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_18_9();
  OUTLINED_FUNCTION_25_13();
  v10 = lazy protocol witness table accessor for type MessageAccumulationViewModel.Summary.CodingKeys and conformance MessageAccumulationViewModel.Summary.CodingKeys();
  OUTLINED_FUNCTION_11_49(&unk_286F85B50, v11, v10);
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
  }

  else
  {
    OUTLINED_FUNCTION_39_16();
    v12 = KeyedDecodingContainer.decode(_:forKey:)();
    v14 = v13;
    OUTLINED_FUNCTION_39_16();
    v15 = KeyedDecodingContainer.decode(_:forKey:)();
    v17 = v16;
    v18 = v15;
    (*(v8 + 8))(v1, v6);
    *v5 = v12;
    v5[1] = v14;
    v5[2] = v18;
    v5[3] = v17;

    __swift_destroy_boxed_opaque_existential_1Tm(v3);
  }

  OUTLINED_FUNCTION_61_2();
}

uint64_t protocol witness for Identifiable.id.getter in conformance MessageAccumulationViewModel.Summary@<X0>(uint64_t *a1@<X8>)
{
  result = MessageAccumulationViewModel.Summary.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t MessageAccumulationViewModel.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x656972616D6D7573 && a2 == 0xE900000000000073)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MessageAccumulationViewModel.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = MessageAccumulationViewModel.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MessageAccumulationViewModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MessageAccumulationViewModel.CodingKeys and conformance MessageAccumulationViewModel.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MessageAccumulationViewModel.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MessageAccumulationViewModel.CodingKeys and conformance MessageAccumulationViewModel.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void MessageAccumulationViewModel.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_60_1();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch28MessageAccumulationViewModelV10CodingKeys33_764E27219276D372D031B6F44FD14947LLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch28MessageAccumulationViewModelV10CodingKeys33_764E27219276D372D031B6F44FD14947LLOGMR);
  OUTLINED_FUNCTION_14();
  v27 = v26;
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v28);
  v30 = &a9 - v29;
  v31 = *v20;
  __swift_project_boxed_opaque_existential_1(v24, v24[3]);
  lazy protocol witness table accessor for type MessageAccumulationViewModel.CodingKeys and conformance MessageAccumulationViewModel.CodingKeys();

  dispatch thunk of Encoder.container<A>(keyedBy:)();
  a10 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10OmniSearch28MessageAccumulationViewModelV7SummaryVGMd, &_sSay10OmniSearch28MessageAccumulationViewModelV7SummaryVGMR);
  lazy protocol witness table accessor for type [MessageAccumulationViewModel.Summary] and conformance <A> [A](&lazy protocol witness table cache variable for type [MessageAccumulationViewModel.Summary] and conformance <A> [A], lazy protocol witness table accessor for type MessageAccumulationViewModel.Summary and conformance MessageAccumulationViewModel.Summary, MEMORY[0x277D83948]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  (*(v27 + 8))(v30, v25);
  OUTLINED_FUNCTION_61_2();
}

void MessageAccumulationViewModel.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_60_1();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch28MessageAccumulationViewModelV10CodingKeys33_764E27219276D372D031B6F44FD14947LLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch28MessageAccumulationViewModelV10CodingKeys33_764E27219276D372D031B6F44FD14947LLOGMR);
  OUTLINED_FUNCTION_14();
  v29 = v28;
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v30);
  v32 = &a9 - v31;
  OUTLINED_FUNCTION_25_13();
  lazy protocol witness table accessor for type MessageAccumulationViewModel.CodingKeys and conformance MessageAccumulationViewModel.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v20)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10OmniSearch28MessageAccumulationViewModelV7SummaryVGMd, &_sSay10OmniSearch28MessageAccumulationViewModelV7SummaryVGMR);
    lazy protocol witness table accessor for type [MessageAccumulationViewModel.Summary] and conformance <A> [A](&lazy protocol witness table cache variable for type [MessageAccumulationViewModel.Summary] and conformance <A> [A], lazy protocol witness table accessor for type MessageAccumulationViewModel.Summary and conformance MessageAccumulationViewModel.Summary, MEMORY[0x277D83978]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v29 + 8))(v32, v27);
    *v26 = a10;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v24);
  OUTLINED_FUNCTION_61_2();
}

OmniSearch::MessageAccumulationViewModel_optional __swiftcall MessageAccumulationContext.makeViewModel()()
{
  v2 = v0;
  v3 = v1;
  v4 = type metadata accessor for LocalizedStringResource();
  OUTLINED_FUNCTION_14();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v78 = v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v69 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = v69 - v13;
  v85 = type metadata accessor for MessageAccumulationContext.MessageValue(0);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_36();
  v79 = (v17 - v16);
  v84 = type metadata accessor for MessageAccumulationContext.Message(0);
  OUTLINED_FUNCTION_14();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_36();
  v23 = v22 - v21;
  if (AFIsInternalInstall() && (type metadata accessor for FeatureFlagService(), swift_initStackObject(), v77 = v4, v76 = v14, FeatureFlagService.isEnabled(_:)(OmniSearch_FeatureFlagService_FeatureFlag_showInternalErrorInfo)) && *(v2 + 16))
  {
    v91 = v2;

    specialized MutableCollection<>.sort(by:)(&v91);
    v24 = *(v91 + 16);
    if (v24)
    {
      v75 = v11;
      v70 = v3;
      v93 = MEMORY[0x277D84F90];
      v25 = v91;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v24, 0);
      v26 = v76;
      v27 = v77;
      v28 = (*(v19 + 80) + 32) & ~*(v19 + 80);
      v69[1] = v25;
      v29 = v25 + v28;
      v88 = v93;
      v83 = *(v19 + 72);
      v82 = 0x800000025DBF94E0;
      v71 = 0x800000025DBF9500;
      v74 = (v6 + 32);
      v30 = (v6 + 16);
      v73 = 0x800000025DBF9520;
      v72 = (v6 + 8);
      v31 = v79;
      v87 = v23;
      v81 = (v6 + 16);
      do
      {
        outlined init with copy of MessageAccumulationContext.Message(v29, v23, type metadata accessor for MessageAccumulationContext.Message);
        outlined init with copy of MessageAccumulationContext.Message(v23, v31, type metadata accessor for MessageAccumulationContext.MessageValue);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v86 = v24;
        if (EnumCaseMultiPayload == 1)
        {
          (*v74)(v26, v31, v27);
          v33 = *v30;
          v34 = v26;
          v35 = v75;
          (*v30)(v75, v34, v27);
          v36 = *(v23 + *(v84 + 20));
          v37 = 0x7269632E6F666E69;
          if (v36 == 1)
          {
            v37 = 0xD000000000000018;
          }

          v38 = v73;
          if (v36 != 1)
          {
            v38 = 0xEB00000000656C63;
          }

          v39 = v36 == 0;
          if (*(v23 + *(v84 + 20)))
          {
            v40 = v37;
          }

          else
          {
            v40 = 0xD000000000000017;
          }

          v80 = v40;
          if (v39)
          {
            v41 = v82;
          }

          else
          {
            v41 = v38;
          }

          v33(v78, v35, v27);
          v42 = String.init(localized:)();
          v44 = v43;
          v45 = *v72;
          (*v72)(v35, v27);
          v46 = v27;
          v45(v34, v27);
          v26 = v34;
          v31 = v79;
          v47 = v80;
        }

        else
        {
          v48 = *v31;
          v49 = *(v23 + *(v84 + 24));
          v91 = 0;
          v92 = 0xE000000000000000;
          if (v49)
          {
            if (v49 == 1)
            {
              v50 = 0xE700000000000000;
              v51 = 0x73757361676550;
            }

            else
            {
              v51 = 0xD000000000000010;
              v50 = v71;
            }
          }

          else
          {
            v50 = 0xE900000000000074;
            v51 = OUTLINED_FUNCTION_12_43();
          }

          MEMORY[0x25F89F6C0](v51, v50);

          MEMORY[0x25F89F6C0](8250, 0xE200000000000000);
          swift_getErrorValue();
          v52 = Error.baseError.getter(v89, v90);
          swift_getErrorValue();
          v53 = Error.localizedDescription.getter();
          v55 = v54;

          MEMORY[0x25F89F6C0](v53, v55);

          v42 = v91;
          v44 = v92;
          v47 = 0xD000000000000017;
          v41 = v82;
          v46 = v77;
          v26 = v76;
        }

        outlined destroy of MessageAccumulationContext.Message(v87);
        v56 = v88;
        v93 = v88;
        v58 = *(v88 + 16);
        v57 = *(v88 + 24);
        if (v58 >= v57 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v57 > 1), v58 + 1, 1);
          v26 = v76;
          v46 = v77;
          v56 = v93;
        }

        *(v56 + 16) = v58 + 1;
        v88 = v56;
        v59 = (v56 + 32 * v58);
        v59[4] = v47;
        v59[5] = v41;
        v59[6] = v42;
        v59[7] = v44;
        v29 += v83;
        v23 = v87;
        v24 = v86 - 1;
        v30 = v81;
        v27 = v46;
      }

      while (v86 != 1);

      v3 = v70;
      v68 = v88;
    }

    else
    {

      v68 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    if (one-time initialization token for stextension != -1)
    {
      swift_once();
    }

    v60 = type metadata accessor for Logger();
    __swift_project_value_buffer(v60, static Logging.stextension);

    v61 = Logger.logObject.getter();
    v62 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = v3;
      v64 = swift_slowAlloc();
      *v64 = 67109632;
      *(v64 + 4) = AFIsInternalInstall();
      *(v64 + 8) = 1024;
      type metadata accessor for FeatureFlagService();
      swift_initStackObject();
      *(v64 + 10) = FeatureFlagService.isEnabled(_:)(OmniSearch_FeatureFlagService_FeatureFlag_showInternalErrorInfo);
      *(v64 + 14) = 1024;
      *(v64 + 16) = *(v2 + 16) == 0;

      _os_log_impl(&dword_25D85C000, v61, v62, "MessageAccumulationContext.makeViewModel -- internal: %{BOOL}d, feature flag enabled: %{BOOL}d, empty errors: %{BOOL}d", v64, 0x14u);
      v65 = v64;
      v3 = v63;
      MEMORY[0x25F8A1050](v65, -1, -1);
    }

    else
    {
    }

    v68 = 0;
  }

  *v3 = v68;
  result.value.summaries._rawValue = v66;
  result.is_nil = v67;
  return result;
}

unint64_t lazy protocol witness table accessor for type SearchToolSnippetPluginModel.CodingKeys and conformance SearchToolSnippetPluginModel.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SearchToolSnippetPluginModel.CodingKeys and conformance SearchToolSnippetPluginModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchToolSnippetPluginModel.CodingKeys and conformance SearchToolSnippetPluginModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchToolSnippetPluginModel.CodingKeys and conformance SearchToolSnippetPluginModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchToolSnippetPluginModel.CodingKeys and conformance SearchToolSnippetPluginModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchToolSnippetPluginModel.CodingKeys and conformance SearchToolSnippetPluginModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchToolSnippetPluginModel.CodingKeys and conformance SearchToolSnippetPluginModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchToolSnippetPluginModel.CodingKeys and conformance SearchToolSnippetPluginModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchToolSnippetPluginModel.CodingKeys and conformance SearchToolSnippetPluginModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchToolSnippetPluginModel.CodingKeys and conformance SearchToolSnippetPluginModel.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchToolSnippetPluginModel.CodingKeys and conformance SearchToolSnippetPluginModel.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchToolSnippetPluginModel.CodingKeys and conformance SearchToolSnippetPluginModel.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchToolSnippetPluginModel.CodingKeys and conformance SearchToolSnippetPluginModel.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SearchToolSnippetPluginModel.AttributionCodingKeys and conformance SearchToolSnippetPluginModel.AttributionCodingKeys()
{
  result = lazy protocol witness table cache variable for type SearchToolSnippetPluginModel.AttributionCodingKeys and conformance SearchToolSnippetPluginModel.AttributionCodingKeys;
  if (!lazy protocol witness table cache variable for type SearchToolSnippetPluginModel.AttributionCodingKeys and conformance SearchToolSnippetPluginModel.AttributionCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchToolSnippetPluginModel.AttributionCodingKeys and conformance SearchToolSnippetPluginModel.AttributionCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchToolSnippetPluginModel.AttributionCodingKeys and conformance SearchToolSnippetPluginModel.AttributionCodingKeys;
  if (!lazy protocol witness table cache variable for type SearchToolSnippetPluginModel.AttributionCodingKeys and conformance SearchToolSnippetPluginModel.AttributionCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchToolSnippetPluginModel.AttributionCodingKeys and conformance SearchToolSnippetPluginModel.AttributionCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchToolSnippetPluginModel.AttributionCodingKeys and conformance SearchToolSnippetPluginModel.AttributionCodingKeys;
  if (!lazy protocol witness table cache variable for type SearchToolSnippetPluginModel.AttributionCodingKeys and conformance SearchToolSnippetPluginModel.AttributionCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchToolSnippetPluginModel.AttributionCodingKeys and conformance SearchToolSnippetPluginModel.AttributionCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchToolSnippetPluginModel.AttributionCodingKeys and conformance SearchToolSnippetPluginModel.AttributionCodingKeys;
  if (!lazy protocol witness table cache variable for type SearchToolSnippetPluginModel.AttributionCodingKeys and conformance SearchToolSnippetPluginModel.AttributionCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchToolSnippetPluginModel.AttributionCodingKeys and conformance SearchToolSnippetPluginModel.AttributionCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttributionViewModel and conformance AttributionViewModel()
{
  result = lazy protocol witness table cache variable for type AttributionViewModel and conformance AttributionViewModel;
  if (!lazy protocol witness table cache variable for type AttributionViewModel and conformance AttributionViewModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributionViewModel and conformance AttributionViewModel);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributionViewModel and conformance AttributionViewModel;
  if (!lazy protocol witness table cache variable for type AttributionViewModel and conformance AttributionViewModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributionViewModel and conformance AttributionViewModel);
  }

  return result;
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(char **a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  v154 = a1;
  v8 = type metadata accessor for MessageAccumulationContext.Message(0);
  v163 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v158 = &v149 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v172 = &v149 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v149 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v149 - v16;
  MEMORY[0x28223BE20](v18);
  v160 = &v149 - v19;
  MEMORY[0x28223BE20](v20);
  v167 = &v149 - v21;
  MEMORY[0x28223BE20](v22);
  v151 = &v149 - v23;
  MEMORY[0x28223BE20](v24);
  v150 = &v149 - v25;
  v165 = a3;
  v26 = *(a3 + 8);
  if (v26 < 1)
  {
    v28 = MEMORY[0x277D84F90];
LABEL_177:
    v172 = *v154;
    if (!v172)
    {
      goto LABEL_219;
    }

    a3 = v28;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v141 = a3;
LABEL_180:
      a3 = (v141 + 16);
      v142 = *(v141 + 2);
      while (v142 >= 2)
      {
        if (!*v165)
        {
          goto LABEL_216;
        }

        v143 = v141;
        v144 = &v141[16 * v142];
        v145 = *v144;
        v146 = (a3 + 16 * v142);
        v147 = v146[1];
        specialized _merge<A>(low:mid:high:buffer:by:)(*v165 + *(v163 + 72) * *v144, *v165 + *(v163 + 72) * *v146, *v165 + *(v163 + 72) * v147, v172);
        if (v5)
        {
          break;
        }

        if (v147 < v145)
        {
          goto LABEL_204;
        }

        if (v142 - 2 >= *a3)
        {
          goto LABEL_205;
        }

        *v144 = v145;
        *(v144 + 1) = v147;
        v148 = *a3 - v142;
        if (*a3 < v142)
        {
          goto LABEL_206;
        }

        v142 = *a3 - 1;
        memmove(v146, v146 + 2, 16 * v148);
        *a3 = v142;
        v141 = v143;
      }

LABEL_188:

      return;
    }

LABEL_213:
    v141 = specialized _ArrayBuffer._consumeAndCreateNew()(a3);
    goto LABEL_180;
  }

  v27 = 0;
  v28 = MEMORY[0x277D84F90];
  v153 = a4;
  v169 = v14;
  v170 = v8;
  v168 = v17;
  while (2)
  {
    v29 = v27 + 1;
    v159 = v28;
    v155 = v27;
    if (v27 + 1 >= v26)
    {
      goto LABEL_69;
    }

    v161 = v26;
    v30 = *v165;
    v31 = *(v163 + 72);
    v166 = v27 + 1;
    a3 = type metadata accessor for MessageAccumulationContext.Message;
    v32 = v150;
    outlined init with copy of MessageAccumulationContext.Message(v30 + v31 * v29, v150, type metadata accessor for MessageAccumulationContext.Message);
    v164 = v31;
    v33 = v151;
    outlined init with copy of MessageAccumulationContext.Message(v30 + v31 * v27, v151, type metadata accessor for MessageAccumulationContext.Message);
    v34 = *(v8 + 20);
    v35 = *(v32 + v34);
    v36 = *(v33 + v34);
    v152 = v5;
    if (v35 == v36)
    {
      a3 = *(v32 + *(v8 + 24));
      if (static MessageAccumulationContext.Subcomponent.== infix(_:_:)())
      {
        LODWORD(v162) = 0;
      }

      else
      {
        LODWORD(v162) = static MessageAccumulationContext.Subcomponent.< infix(_:_:)();
      }

      v27 = v155;
    }

    else
    {
      LODWORD(v162) = v35 < v36;
    }

    outlined destroy of MessageAccumulationContext.Message(v33);
    outlined destroy of MessageAccumulationContext.Message(v32);
    v37 = v27 + 2;
    v38 = v164 * (v27 + 2);
    v39 = v30 + v38;
    v40 = v166;
    v41 = v164 * v166;
    v42 = v30 + v164 * v166;
    v43 = v160;
    do
    {
      v29 = v37;
      v44 = v40;
      v45 = v41;
      v5 = v38;
      if (v37 >= v161)
      {
        break;
      }

      v171 = v40;
      v46 = v41;
      v47 = v38;
      v48 = v37;
      v166 = v39;
      v49 = v167;
      outlined init with copy of MessageAccumulationContext.Message(v39, v167, type metadata accessor for MessageAccumulationContext.Message);
      outlined init with copy of MessageAccumulationContext.Message(v42, v43, type metadata accessor for MessageAccumulationContext.Message);
      v50 = *(v8 + 20);
      v51 = *(v49 + v50);
      v52 = *(v43 + v50);
      if (v51 == v52)
      {
        v53 = *(v8 + 24);
        v54 = *(v49 + v53);
        if (*(v49 + v53))
        {
          v29 = v48;
          if (v54 == 1)
          {
            v55 = 0xE700000000000000;
            v56 = 0x73757361676570;
          }

          else
          {
            v56 = 0x7953726577736E61;
            v55 = 0xEF7369736568746ELL;
          }
        }

        else
        {
          v56 = 0x6867696C746F7073;
          v55 = 0xE900000000000074;
          v29 = v48;
        }

        v5 = v47;
        v57 = *(v43 + v53);
        v45 = v46;
        if (*(v43 + v53))
        {
          if (v57 == 1)
          {
            v58 = 0x73757361676570;
          }

          else
          {
            v58 = 0x7953726577736E61;
          }

          if (v57 == 1)
          {
            v59 = 0xE700000000000000;
          }

          else
          {
            v59 = 0xEF7369736568746ELL;
          }
        }

        else
        {
          v58 = 0x6867696C746F7073;
          v59 = 0xE900000000000074;
        }

        if (v56 == v58 && v55 == v59)
        {
          goto LABEL_47;
        }

        v61 = v54;
        LODWORD(v157) = _stringCompareWithSmolCheck(_:_:expecting:)();

        a3 = 0;
        v14 = v169;
        v43 = v160;
        if ((v157 & 1) == 0)
        {
          if (v61)
          {
            if (v61 == 1)
            {
              v62 = 0xE700000000000000;
              v63 = 0x73757361676570;
              if (!v57)
              {
LABEL_40:
                v65 = 0x6867696C746F7073;
                v64 = 0xE900000000000074;
LABEL_42:
                if (v63 == v65 && v62 == v64)
                {
LABEL_47:

                  a3 = 0;
                }

                else
                {
                  a3 = _stringCompareWithSmolCheck(_:_:expecting:)();
                }

                v14 = v169;
                v43 = v160;
                goto LABEL_49;
              }
            }

            else
            {
              v63 = 0x7953726577736E61;
              v62 = 0xEF7369736568746ELL;
              if (!v57)
              {
                goto LABEL_40;
              }
            }
          }

          else
          {
            v63 = 0x6867696C746F7073;
            v62 = 0xE900000000000074;
            if (!v57)
            {
              goto LABEL_40;
            }
          }

          if (v57 == 1)
          {
            v64 = 0xE700000000000000;
            v65 = 0x73757361676570;
          }

          else
          {
            v65 = 0x7953726577736E61;
            v64 = 0xEF7369736568746ELL;
          }

          goto LABEL_42;
        }
      }

      else
      {
        a3 = v51 < v52;
        v29 = v48;
        v5 = v47;
        v45 = v46;
      }

LABEL_49:
      outlined destroy of MessageAccumulationContext.Message(v43);
      outlined destroy of MessageAccumulationContext.Message(v167);
      v37 = v29 + 1;
      v39 = v166 + v164;
      v42 += v164;
      v8 = v170;
      v44 = v171;
      v40 = v171 + 1;
      v41 = v45 + v164;
      v38 = v5 + v164;
    }

    while ((v162 & 1) == (a3 & 1));
    v17 = v168;
    if (v162)
    {
      v67 = v155;
      if (v29 < v155)
      {
        goto LABEL_210;
      }

      if (v155 < v29)
      {
        v68 = v155 * v164;
        do
        {
          if (v67 != v44)
          {
            v171 = v44;
            v69 = *v165;
            if (!*v165)
            {
              goto LABEL_217;
            }

            a3 = v69 + v68;
            outlined init with take of MessageAccumulationContext.Message(v69 + v68, v158);
            v70 = v68 < v45 || a3 >= v69 + v5;
            if (v70)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v68 != v45)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            outlined init with take of MessageAccumulationContext.Message(v158, v69 + v45);
            v14 = v169;
            v44 = v171;
          }

          ++v67;
          v45 -= v164;
          v5 -= v164;
          v68 += v164;
          v71 = v67 < v44--;
        }

        while (v71);
      }

      v5 = v152;
    }

    else
    {
      v5 = v152;
    }

    a4 = v153;
LABEL_69:
    v72 = v165[1];
    if (v29 >= v72)
    {
      goto LABEL_120;
    }

    if (__OFSUB__(v29, v155))
    {
      goto LABEL_209;
    }

    if (v29 - v155 >= a4)
    {
LABEL_120:
      v74 = v155;
      goto LABEL_121;
    }

    v73 = v155 + a4;
    if (__OFADD__(v155, a4))
    {
      goto LABEL_211;
    }

    v74 = v155;
    if (v73 >= v72)
    {
      v73 = v165[1];
    }

    if (v73 < v155)
    {
LABEL_212:
      __break(1u);
      goto LABEL_213;
    }

    if (v29 == v73)
    {
LABEL_121:
      if (v29 < v74)
      {
        goto LABEL_208;
      }

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v28 = v159;
      }

      else
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v159[2] + 1, 1, v159);
        v28 = v139;
      }

      v98 = v28[2];
      v97 = v28[3];
      v99 = v98 + 1;
      if (v98 >= v97 >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v97 > 1, v98 + 1, 1, v28);
        v28 = v140;
      }

      v28[2] = v99;
      a3 = (v28 + 4);
      v100 = &v28[2 * v98 + 4];
      *v100 = v74;
      v100[1] = v29;
      v171 = *v154;
      if (!v171)
      {
        goto LABEL_218;
      }

      v166 = v29;
      if (!v98)
      {
        v14 = v169;
LABEL_173:
        v27 = v166;
        v26 = v165[1];
        a4 = v153;
        if (v166 >= v26)
        {
          goto LABEL_177;
        }

        continue;
      }

      v101 = v28;
      v14 = v169;
      while (1)
      {
        v102 = v99 - 1;
        v103 = (a3 + 16 * (v99 - 1));
        v104 = &v28[2 * v99];
        if (v99 >= 4)
        {
          break;
        }

        if (v99 == 3)
        {
          v105 = v28[4];
          v106 = v28[5];
          v115 = __OFSUB__(v106, v105);
          v107 = v106 - v105;
          v108 = v115;
LABEL_142:
          if (v108)
          {
            goto LABEL_195;
          }

          v120 = *v104;
          v119 = v104[1];
          v121 = __OFSUB__(v119, v120);
          v122 = v119 - v120;
          v123 = v121;
          if (v121)
          {
            goto LABEL_198;
          }

          v124 = v103[1];
          v125 = v124 - *v103;
          if (__OFSUB__(v124, *v103))
          {
            goto LABEL_201;
          }

          if (__OFADD__(v122, v125))
          {
            goto LABEL_203;
          }

          if (v122 + v125 >= v107)
          {
            if (v107 < v125)
            {
              v102 = v99 - 2;
            }

            goto LABEL_164;
          }

          goto LABEL_157;
        }

        if (v99 < 2)
        {
          goto LABEL_197;
        }

        v127 = *v104;
        v126 = v104[1];
        v115 = __OFSUB__(v126, v127);
        v122 = v126 - v127;
        v123 = v115;
LABEL_157:
        if (v123)
        {
          goto LABEL_200;
        }

        v129 = *v103;
        v128 = v103[1];
        v115 = __OFSUB__(v128, v129);
        v130 = v128 - v129;
        if (v115)
        {
          goto LABEL_202;
        }

        if (v130 < v122)
        {
          v28 = v101;
          goto LABEL_173;
        }

LABEL_164:
        if (v102 - 1 >= v99)
        {
          __break(1u);
LABEL_190:
          __break(1u);
LABEL_191:
          __break(1u);
LABEL_192:
          __break(1u);
LABEL_193:
          __break(1u);
LABEL_194:
          __break(1u);
LABEL_195:
          __break(1u);
LABEL_196:
          __break(1u);
LABEL_197:
          __break(1u);
LABEL_198:
          __break(1u);
LABEL_199:
          __break(1u);
LABEL_200:
          __break(1u);
LABEL_201:
          __break(1u);
LABEL_202:
          __break(1u);
LABEL_203:
          __break(1u);
LABEL_204:
          __break(1u);
LABEL_205:
          __break(1u);
LABEL_206:
          __break(1u);
LABEL_207:
          __break(1u);
LABEL_208:
          __break(1u);
LABEL_209:
          __break(1u);
LABEL_210:
          __break(1u);
LABEL_211:
          __break(1u);
          goto LABEL_212;
        }

        if (!*v165)
        {
          goto LABEL_215;
        }

        v134 = (a3 + 16 * (v102 - 1));
        v135 = *v134;
        v136 = (a3 + 16 * v102);
        v137 = v136[1];
        specialized _merge<A>(low:mid:high:buffer:by:)(*v165 + *(v163 + 72) * *v134, *v165 + *(v163 + 72) * *v136, *v165 + *(v163 + 72) * v137, v171);
        if (v5)
        {
          goto LABEL_188;
        }

        if (v137 < v135)
        {
          goto LABEL_190;
        }

        v138 = v101[2];
        if (v102 > v138)
        {
          goto LABEL_191;
        }

        *v134 = v135;
        v134[1] = v137;
        if (v102 >= v138)
        {
          goto LABEL_192;
        }

        v99 = v138 - 1;
        memmove((a3 + 16 * v102), v136 + 2, 16 * (v138 - 1 - v102));
        v28 = v101;
        v101[2] = v138 - 1;
        v71 = v138 > 2;
        v14 = v169;
        v8 = v170;
        v17 = v168;
        if (!v71)
        {
          goto LABEL_173;
        }
      }

      v109 = a3 + 16 * v99;
      v110 = *(v109 - 64);
      v111 = *(v109 - 56);
      v115 = __OFSUB__(v111, v110);
      v112 = v111 - v110;
      if (v115)
      {
        goto LABEL_193;
      }

      v114 = *(v109 - 48);
      v113 = *(v109 - 40);
      v115 = __OFSUB__(v113, v114);
      v107 = v113 - v114;
      v108 = v115;
      if (v115)
      {
        goto LABEL_194;
      }

      v116 = v104[1];
      v117 = v116 - *v104;
      if (__OFSUB__(v116, *v104))
      {
        goto LABEL_196;
      }

      v115 = __OFADD__(v107, v117);
      v118 = v107 + v117;
      if (v115)
      {
        goto LABEL_199;
      }

      if (v118 >= v112)
      {
        v132 = *v103;
        v131 = v103[1];
        v115 = __OFSUB__(v131, v132);
        v133 = v131 - v132;
        if (v115)
        {
          goto LABEL_207;
        }

        if (v107 < v133)
        {
          v102 = v99 - 2;
        }

        goto LABEL_164;
      }

      goto LABEL_142;
    }

    break;
  }

  v152 = v5;
  v75 = *(v163 + 72);
  v76 = *v165 + v75 * (v29 - 1);
  v77 = -v75;
  v78 = v155 - v29;
  v171 = *v165;
  v156 = v75;
  v157 = v73;
  v79 = v171 + v29 * v75;
  while (2)
  {
    v166 = v29;
    v161 = v79;
    v162 = v78;
    v80 = v78;
    v164 = v76;
LABEL_79:
    a3 = type metadata accessor for MessageAccumulationContext.Message;
    outlined init with copy of MessageAccumulationContext.Message(v79, v17, type metadata accessor for MessageAccumulationContext.Message);
    outlined init with copy of MessageAccumulationContext.Message(v76, v14, type metadata accessor for MessageAccumulationContext.Message);
    v81 = *(v8 + 20);
    v82 = v17[v81];
    v83 = v14[v81];
    if (v82 != v83)
    {
      a3 = v82 < v83;
      goto LABEL_111;
    }

    v84 = *(v8 + 24);
    v85 = v17[v84];
    if (v17[v84])
    {
      if (v85 == 1)
      {
        v86 = 0xE700000000000000;
        v87 = 0x73757361676570;
      }

      else
      {
        v87 = 0x7953726577736E61;
        v86 = 0xEF7369736568746ELL;
      }
    }

    else
    {
      v87 = 0x6867696C746F7073;
      v86 = 0xE900000000000074;
    }

    v88 = v14[v84];
    if (v14[v84])
    {
      if (v88 == 1)
      {
        v89 = 0xE700000000000000;
        v90 = 0x73757361676570;
      }

      else
      {
        v90 = 0x7953726577736E61;
        v89 = 0xEF7369736568746ELL;
      }
    }

    else
    {
      v90 = 0x6867696C746F7073;
      v89 = 0xE900000000000074;
    }

    if (v87 == v90 && v86 == v89)
    {
LABEL_116:

LABEL_117:
      v14 = v169;
      outlined destroy of MessageAccumulationContext.Message(v169);
      v17 = v168;
      outlined destroy of MessageAccumulationContext.Message(v168);
      v8 = v170;
LABEL_118:
      v29 = v166 + 1;
      v76 = v164 + v156;
      v78 = v162 - 1;
      v79 = v161 + v156;
      if (v166 + 1 == v157)
      {
        v29 = v157;
        v5 = v152;
        goto LABEL_120;
      }

      continue;
    }

    break;
  }

  a3 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (a3)
  {
    goto LABEL_117;
  }

  if (!v85)
  {
    v93 = 0x6867696C746F7073;
    v92 = 0xE900000000000074;
    if (!v88)
    {
      goto LABEL_104;
    }

    goto LABEL_101;
  }

  if (v85 != 1)
  {
    v93 = 0x7953726577736E61;
    v92 = 0xEF7369736568746ELL;
    if (!v88)
    {
      goto LABEL_104;
    }

    goto LABEL_101;
  }

  v92 = 0xE700000000000000;
  v93 = 0x73757361676570;
  if (v88)
  {
LABEL_101:
    if (v88 == 1)
    {
      v94 = 0xE700000000000000;
      v95 = 0x73757361676570;
    }

    else
    {
      v95 = 0x7953726577736E61;
      v94 = 0xEF7369736568746ELL;
    }

    goto LABEL_106;
  }

LABEL_104:
  v95 = 0x6867696C746F7073;
  v94 = 0xE900000000000074;
LABEL_106:
  v8 = v170;
  if (v93 == v95 && v92 == v94)
  {
    goto LABEL_116;
  }

  a3 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v17 = v168;
  v14 = v169;
LABEL_111:
  outlined destroy of MessageAccumulationContext.Message(v14);
  outlined destroy of MessageAccumulationContext.Message(v17);
  if ((a3 & 1) == 0)
  {
    goto LABEL_118;
  }

  if (v171)
  {
    a3 = v172;
    outlined init with take of MessageAccumulationContext.Message(v79, v172);
    swift_arrayInitWithTakeFrontToBack();
    outlined init with take of MessageAccumulationContext.Message(a3, v76);
    v76 += v77;
    v79 += v77;
    v70 = __CFADD__(v80++, 1);
    if (v70)
    {
      goto LABEL_118;
    }

    goto LABEL_79;
  }

  __break(1u);
LABEL_215:
  __break(1u);
LABEL_216:
  __break(1u);
LABEL_217:
  __break(1u);
LABEL_218:
  __break(1u);
LABEL_219:
  __break(1u);
}