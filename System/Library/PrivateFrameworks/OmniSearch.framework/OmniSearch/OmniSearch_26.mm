uint64_t static LocalIndexClient.fetchAttributes.getter()
{
  if (one-time initialization token for fetchAttributes != -1)
  {
    OUTLINED_FUNCTION_76_13(&one-time initialization token for fetchAttributes);
  }
}

uint64_t LocalIndexClient.__allocating_init()(uint64_t a1)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static LocalSearchManager.shared;
  v2 = type metadata accessor for ItemFetcher();
  v3 = swift_allocObject();
  v4 = swift_allocObject();
  v10 = type metadata accessor for LocalSearchManager();
  v11 = &protocol witness table for LocalSearchManager;
  v8 = &protocol witness table for ItemFetcher;
  *&v9 = v1;
  v7 = v2;
  *&v6 = v3;
  outlined init with take of ResponseOverrideMatcherProtocol(&v9, v4 + 16);
  outlined init with take of ResponseOverrideMatcherProtocol(&v6, v4 + 56);

  return v4;
}

void LocalIndexClient.__allocating_init(searchAgent:itemFetcher:)()
{
  OUTLINED_FUNCTION_155();
  v2 = v1;
  v3 = v0;
  v5 = v4;
  v7 = v6;
  v9 = *(v6 + 24);
  v8 = *(v6 + 32);
  v10 = __swift_mutable_project_boxed_opaque_existential_1(v6, v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_36();
  v13 = v12 - v11;
  (*(v14 + 16))(v12 - v11);
  v15 = v5[3];
  v16 = v5[4];
  v17 = __swift_mutable_project_boxed_opaque_existential_1(v5, v15);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_36();
  v20 = v19 - v18;
  (*(v21 + 16))(v19 - v18);
  v2(v13, v20, v3, v9, v15, v8, v16);
  __swift_destroy_boxed_opaque_existential_1Tm(v5);
  __swift_destroy_boxed_opaque_existential_1Tm(v7);
  OUTLINED_FUNCTION_148();
}

Swift::Void __swiftcall LocalIndexClient.preheat()()
{
  outlined init with copy of ExtractionRule(v0 + 16, v3);
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  v1 = OUTLINED_FUNCTION_32_0();
  v2(v1);
  __swift_destroy_boxed_opaque_existential_1Tm(v3);
}

Swift::Void __swiftcall LocalIndexClient.activate()()
{
  outlined init with copy of ExtractionRule(v0 + 16, v3);
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  v1 = OUTLINED_FUNCTION_32_0();
  v2(v1);
  __swift_destroy_boxed_opaque_existential_1Tm(v3);
}

Swift::Void __swiftcall LocalIndexClient.deactivate()()
{
  outlined init with copy of ExtractionRule(v0 + 16, v3);
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  v1 = OUTLINED_FUNCTION_32_0();
  v2(v1);
  __swift_destroy_boxed_opaque_existential_1Tm(v3);
}

uint64_t LocalIndexClient.search(spotlightRequest:)(uint64_t a1, uint64_t *a2)
{
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_23(v2);
  *v3 = v4;
  v3[1] = partial apply for closure #2 in AnswerResolver.resolve(extractedResults:options:);

  return LocalIndexClient.findMatches(for:maxItemCount:spQUParse:allowedTypes:locale:)();
}

uint64_t LocalIndexClient.findMatches(for:maxItemCount:spQUParse:allowedTypes:locale:)()
{
  OUTLINED_FUNCTION_48();
  v1[72] = v0;
  v1[71] = v18;
  v1[70] = v2;
  v1[69] = v3;
  v1[68] = v4;
  v1[67] = v5;
  v1[66] = v6;
  v1[65] = v7;
  v1[73] = *v0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  OUTLINED_FUNCTION_114(v8);
  v1[74] = swift_task_alloc();
  v9 = type metadata accessor for SearchResult(0);
  v1[75] = v9;
  OUTLINED_FUNCTION_21(v9);
  v1[76] = v10;
  v1[77] = swift_task_alloc();
  v1[78] = swift_task_alloc();
  v1[79] = swift_task_alloc();
  v1[80] = swift_task_alloc();
  v1[81] = swift_task_alloc();
  v1[82] = swift_task_alloc();
  v11 = type metadata accessor for SpotlightRankingItem();
  v1[83] = v11;
  OUTLINED_FUNCTION_21(v11);
  v1[84] = v12;
  v1[85] = swift_task_alloc();
  v1[86] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16CSSearchableItemC4item_15OmniSearchTypes016SpotlightRankingB0V09spotlighthB0tMd, &_sSo16CSSearchableItemC4item_15OmniSearchTypes016SpotlightRankingB0V09spotlighthB0tMR);
  v1[87] = v13;
  OUTLINED_FUNCTION_21(v13);
  v1[88] = v14;
  v1[89] = swift_task_alloc();
  v1[90] = swift_task_alloc();
  v1[91] = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v15);
}

{
  v1 = v0[68];
  objc_allocWithZone(MEMORY[0x277D65898]);

  v2 = OUTLINED_FUNCTION_94();
  v4 = @nonobjc SPSearchQueryContext.init(search:)(v2, v3);
  v5 = v4;
  v0[92] = v4;
  if (v1)
  {
    [v4 setSpQUParse_];
  }

  if (AFIsInternalInstall())
  {
    v6 = type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for NSUserDefaults, 0x277CBEBD0);
    v7 = *(static NSUserDefaults.spotlightQueryBundleIDs.getter(v6) + 16);

    if (v7)
    {
      OUTLINED_FUNCTION_181_6();
      if (!v8)
      {
        OUTLINED_FUNCTION_1_31();
        swift_once();
      }

      v9 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_200(v9, static Logging.search);
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = OUTLINED_FUNCTION_51_0();
        v70 = OUTLINED_FUNCTION_49_0();
        *v12 = 136315138;
        static NSUserDefaults.spotlightQueryBundleIDs.getter(v70);
        MEMORY[0x25F89F8A0]();

        v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

        *(v12 + 4) = v13;
        _os_log_impl(&dword_25D85C000, v10, v11, "LocalIndexClient limiting search to bundle IDs based on user default: %s", v12, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v70);
        OUTLINED_FUNCTION_42_0();
        OUTLINED_FUNCTION_72_9();
      }

      static NSUserDefaults.spotlightQueryBundleIDs.getter(v14);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v5 setBundleIDs_];
    }
  }

  [v5 setWhyQuery_];
  v16 = OUTLINED_FUNCTION_102_9();
  [v16 v17];
  [v5 setQueryKind_];
  [v5 setAllowInternet_];
  v18 = OUTLINED_FUNCTION_102_9();
  [v18 v19];
  v20 = type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for NSUserDefaults, 0x277CBEBD0);
  v25 = static NSUserDefaults.currentTime.getter(v20, v21, v22, v23, v24);
  if (v26)
  {
    OUTLINED_FUNCTION_181_6();
    if (!v8)
    {
      OUTLINED_FUNCTION_1_31();
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v27, static Logging.search);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_88_0(v29))
    {
      v30 = OUTLINED_FUNCTION_172();
      *v30 = 0;
      _os_log_impl(&dword_25D85C000, v28, v29, "LocalIndexClient.findMatches - using currentTime as of now", v30, 2u);
      OUTLINED_FUNCTION_37_0();
    }

    Current = CFAbsoluteTimeGetCurrent();
  }

  else
  {
    v32 = *&v25;
    OUTLINED_FUNCTION_181_6();
    if (!v8)
    {
      OUTLINED_FUNCTION_1_31();
      swift_once();
    }

    Current = v32;
    v33 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v33, static Logging.search);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_88_0(v35))
    {
      v36 = OUTLINED_FUNCTION_51_0();
      *v36 = 134217984;
      *(v36 + 4) = v32;
      OUTLINED_FUNCTION_70_0(&dword_25D85C000, v37, v35, "LocalIndexClient.findMatches - using currentTime from user defaults %f");
      OUTLINED_FUNCTION_72_9();
    }
  }

  v38 = v0[69];
  [v5 setCurrentTime_];
  if (*(v38 + 16))
  {
    v39 = v0[69];
    [v5 setEnablePersonalAnswers_];
    v40 = OUTLINED_FUNCTION_102_9();
    [v40 v41];
    static LocalIndexClient.filterQueries(for:)(v39);
    v43 = v42;
    v45 = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_25DBC8180;
    *(v46 + 32) = v43;
  }

  else
  {
    v47 = OUTLINED_FUNCTION_102_9();
    [v47 v48];
    [v5 setIsAppEntitySearch_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_25DBC8180;
    _StringGuts.grow(_:)(38);

    v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    MEMORY[0x25F89F6C0](v49);

    OUTLINED_FUNCTION_215_1();
    MEMORY[0x25F89F6C0](0xD000000000000014, 0x800000025DBF1CF0);
    MEMORY[0x25F89F6C0](0x2026262022, 0xE500000000000000);
    v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    MEMORY[0x25F89F6C0](v50);

    OUTLINED_FUNCTION_215_1();
    MEMORY[0x25F89F6C0](0xD00000000000001DLL, 0x800000025DBF2150);
    MEMORY[0x25F89F6C0](0x207C7C202922, 0xE600000000000000);
    v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    MEMORY[0x25F89F6C0](v51);

    MEMORY[0x25F89F6C0](0x22203D2120, 0xE500000000000000);
    v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    MEMORY[0x25F89F6C0](v52);

    MEMORY[0x25F89F6C0](10530, 0xE200000000000000);
    v45 = 0xE200000000000000;
    *(v46 + 32) = 10280;
  }

  *(v46 + 40) = v45;
  v53 = Array._bridgeToObjectiveC()().super.isa;

  [v5 setFilterQueries_];

  OUTLINED_FUNCTION_181_6();
  if (!v8)
  {
    OUTLINED_FUNCTION_1_31();
    swift_once();
  }

  v54 = type metadata accessor for Logger();
  v0[93] = OUTLINED_FUNCTION_200(v54, static Logging.search);
  v55 = v5;
  v56 = Logger.logObject.getter();
  v57 = static os_log_type_t.debug.getter();

  if (OUTLINED_FUNCTION_259())
  {
    v58 = OUTLINED_FUNCTION_51_0();
    v71 = OUTLINED_FUNCTION_49_0();
    *v58 = 136315138;
    v59 = [v55 filterQueries];
    v60 = MEMORY[0x277D837D0];
    v61 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    MEMORY[0x25F89F8A0](v61, v60);

    v62 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v58 + 4) = v62;
    OUTLINED_FUNCTION_49_16(&dword_25D85C000, v63, v57, "Searching with filter: %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v71);
    OUTLINED_FUNCTION_72_9();
    OUTLINED_FUNCTION_37_0();
  }

  outlined init with copy of ExtractionRule(v0[72] + 16, (v0 + 2));
  v64 = v0[5];
  v65 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v64);
  OUTLINED_FUNCTION_28_0();
  v69 = (v66 + *v66);
  v67 = swift_task_alloc();
  v0[94] = v67;
  *v67 = v0;
  v67[1] = LocalIndexClient.findMatches(for:maxItemCount:spQUParse:allowedTypes:locale:);

  return (v69)(v0 + 59, v55, v64, v65);
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_47();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_11();
  *v5 = v4;
  *(v6 + 760) = v0;

  if (v0)
  {
    v7 = LocalIndexClient.findMatches(for:maxItemCount:spQUParse:allowedTypes:locale:);
  }

  else
  {
    v7 = LocalIndexClient.findMatches(for:maxItemCount:spQUParse:allowedTypes:locale:);
  }

  return MEMORY[0x2822009F8](v7);
}

{
  v1 = v0[95];
  v2 = v0[60];
  v0[96] = v0[59];
  v0[97] = v2;
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  static Task<>.checkCancellation()();
  if (v1)
  {
    v3 = v0[92];

    OUTLINED_FUNCTION_114_11();

    OUTLINED_FUNCTION_127();

    return v4();
  }

  else
  {
    v6 = swift_task_alloc();
    v0[98] = v6;
    *v6 = v0;
    OUTLINED_FUNCTION_84(v6);

    return static LocalIndexClient.checkEmbeddingCompleteness()();
  }
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v1 = *v0;
  OUTLINED_FUNCTION_11();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v3);
}

{
  if (!specialized Array.count.getter())
  {

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (OUTLINED_FUNCTION_88_0(v6))
    {
      *OUTLINED_FUNCTION_172() = 0;
      OUTLINED_FUNCTION_25_6();
      _os_log_impl(v7, v8, v9, v10, v11, 2u);
      OUTLINED_FUNCTION_2_8();
    }

    v12 = v0[92];

    OUTLINED_FUNCTION_86_16();
    v13 = v0[65];
    *v13 = MEMORY[0x277D84F90];
    v13[1] = 0;

    OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_83_0();

    __asm { BRAA            X1, X16 }
  }

  v0[99] = static LocalIndexClient.results(for:)(v1);

  v2 = swift_task_alloc();
  v0[100] = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_84(v2);
  OUTLINED_FUNCTION_83_0();

  return static LocalIndexClient.searchableItemsAndRankingItems(for:)();
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_47();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  *(v6 + 808) = v5;

  v7 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v7);
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_47();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  *(v6 + 848) = v5;

  v7 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v7);
}

void LocalIndexClient.findMatches(for:maxItemCount:spQUParse:allowedTypes:locale:)()
{
  v1 = v0[101];
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v4 = v0[88];
    v58 = v0[87];
    v5 = v0[84];
    v62 = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    OUTLINED_FUNCTION_79();
    v7 = v1 + v6;
    v56 = *(v4 + 72);
    v59 = v2;
    v8 = v2;
    do
    {
      v9 = v0[90];
      v10 = v0[89];
      v11 = v0[83];
      OUTLINED_FUNCTION_94();
      outlined init with copy of EagerResolutionService?();
      outlined init with copy of EagerResolutionService?();
      v12 = *v9;
      v13 = *(v58 + 48);
      *v10 = *v9;
      (*(v5 + 32))(v10 + v13, v9 + v13, v11);
      v14 = v12;
      outlined destroy of IntentApplication?(v10, &_sSo16CSSearchableItemC4item_15OmniSearchTypes016SpotlightRankingB0V09spotlighthB0tMd, &_sSo16CSSearchableItemC4item_15OmniSearchTypes016SpotlightRankingB0V09spotlighthB0tMR);
      v15 = OUTLINED_FUNCTION_26_2();
      outlined destroy of IntentApplication?(v15, v16, &_sSo16CSSearchableItemC4item_15OmniSearchTypes016SpotlightRankingB0V09spotlighthB0tMR);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v7 += v56;
      --v8;
    }

    while (v8);
    v2 = v59;
    v17 = v62;
    v3 = MEMORY[0x277D84F90];
  }

  else
  {
    v17 = MEMORY[0x277D84F90];
  }

  static LocalIndexClient.filterAllowedItems(allowedTypes:items:)(v0[69], v17);
  v0[102] = v18;
  v19 = v0[101];
  if (v2)
  {
    v51 = v17;
    v20 = v0[88];
    v54 = v0[87];
    v21 = v0[84];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v22 = v3;
    OUTLINED_FUNCTION_79();
    v24 = v19 + v23;
    v53 = *(v20 + 72);
    v52 = (v21 + 16);
    v25 = (v21 + 32);
    do
    {
      v60 = v2;
      v26 = v0[90];
      v27 = v0[89];
      v55 = v0[86];
      v28 = v0[83];
      outlined init with copy of EagerResolutionService?();
      outlined init with copy of EagerResolutionService?();
      v29 = *(v54 + 48);
      *v27 = *v26;
      v57 = *v25;
      (*v25)(&v27[v29], v26 + v29, v28);
      (*v52)(v55, &v27[v29], v28);
      OUTLINED_FUNCTION_144_9();
      outlined destroy of IntentApplication?(v30, v31, v32);
      OUTLINED_FUNCTION_144_9();
      outlined destroy of IntentApplication?(v33, v34, v35);
      v37 = *(v22 + 16);
      v36 = *(v22 + 24);
      if (v37 >= v36 >> 1)
      {
        v40 = OUTLINED_FUNCTION_26_3(v36);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v40, v37 + 1, 1);
      }

      *(v22 + 16) = v37 + 1;
      OUTLINED_FUNCTION_79();
      v57(v22 + v38 + *(v39 + 72) * v37);
      v24 += v53;
      v2 = v60 - 1;
    }

    while (v60 != 1);

    v3 = MEMORY[0x277D84F90];
    v17 = v51;
  }

  else
  {

    v22 = MEMORY[0x277D84F90];
  }

  v0[103] = v22;
  v41 = specialized Array.count.getter();
  for (i = 0; v41 != i; ++i)
  {
    if ((v17 & 0xC000000000000001) != 0)
    {
      v43 = MEMORY[0x25F89FFD0](i, v17);
    }

    else
    {
      if (i >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_28;
      }

      v43 = *(v17 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_28:
      __break(1u);
      return;
    }

    v44 = v43;
    v45 = CSSearchableItem.isEventTypeItem.getter();

    if (v45)
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    else
    {
    }
  }

  v46 = v0[72];

  v0[104] = v3;
  outlined init with copy of ExtractionRule(v46 + 56, (v0 + 7));
  v47 = v0[10];
  v48 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v47);
  OUTLINED_FUNCTION_28_0();
  v61 = (v49 + *v49);
  v50 = swift_task_alloc();
  v0[105] = v50;
  *v50 = v0;
  OUTLINED_FUNCTION_84(v50);

  v61(v3, v47, v48);
}

{
  v185 = v0;
  v174 = v0 + 31;
  v167 = v0[103];
  v1 = v0[102];
  v2 = v0[84];
  v155 = v0[76];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  v3 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_54_0();
  v168 = Dictionary.init(dictionaryLiteral:)();
  type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for CSSearchableItem, 0x277CC34B0);
  OUTLINED_FUNCTION_54_0();
  v169 = Dictionary.init(dictionaryLiteral:)();
  v4 = specialized Array.count.getter();
  v5 = 0;
  v6 = v1 & 0xC000000000000001;
  v7 = v1 & 0xFFFFFFFFFFFFFF8;
  v8 = v1 + 32;
  OUTLINED_FUNCTION_44_6();
  v158 = v9;
  v165 = v2;
  v166 = *MEMORY[0x277CC3338];
  OUTLINED_FUNCTION_44_6();
  v156 = v10;
  v154 = v0 + 77;
  v178 = v0;
  v153 = v0 + 78;
  v175 = v3;
  v176 = v1 & 0xC000000000000001;
  v170 = v3;
  v171 = v3;
  v177 = v1 + 32;
  while (v4 != v5)
  {
    if (v6)
    {
      v11 = MEMORY[0x25F89FFD0](v5, v178[102]);
    }

    else
    {
      if (v5 >= *(v7 + 16))
      {
        goto LABEL_89;
      }

      v11 = *(v8 + 8 * v5);
    }

    v12 = v11;
    v179 = v5;
    if (__OFADD__(v5++, 1))
    {
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
      return;
    }

    v14 = outlined bridged method (pb) of @objc CSSearchableItem.bundleID.getter(v11);
    if (v15)
    {
      v21 = v14;
      v22 = v15;
      v163 = v7;
      v23 = [v12 attributeSet];
      outlined bridged method (pb) of @objc CSSearchableItem.bundleID.getter(v12);
      v164 = v4;
      v172 = v23;
      if (v24)
      {
        OUTLINED_FUNCTION_189_5();
        v28 = v26 == v27 && v25 == v158;
        if (v28)
        {

LABEL_20:
          outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v23, &selRef_identifier);
          v30 = v175;
          if (v31)
          {
            OUTLINED_FUNCTION_82_0();
          }

          else
          {
            v4 = 0xE300000000000000;
            v7 = 7104878;
          }

          goto LABEL_23;
        }

        v7 = OUTLINED_FUNCTION_169_7();

        if (v7)
        {
          goto LABEL_20;
        }
      }

      v29 = [v12 uniqueIdentifier];
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      OUTLINED_FUNCTION_82_0();

      v30 = v175;
LABEL_23:

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v120 = OUTLINED_FUNCTION_44();
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v120);
        v30 = v121;
      }

      v33 = *(v30 + 16);
      v32 = *(v30 + 24);
      v175 = v30;
      if (v33 >= v32 >> 1)
      {
        v122 = OUTLINED_FUNCTION_26_3(v32);
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v122);
        v175 = v123;
      }

      *(v175 + 16) = v33 + 1;
      v34 = v175 + 16 * v33;
      *(v34 + 32) = v7;
      *(v34 + 40) = v4;

      v35 = v172;

      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.info.getter();

      v173 = v35;
      v157 = v21;
      if (OUTLINED_FUNCTION_259())
      {
        v159 = v37;
        v38 = swift_slowAlloc();
        *&v182 = swift_slowAlloc();
        *v38 = 134219522;
        *(v38 + 4) = v179;
        *(v38 + 12) = 2080;
        OUTLINED_FUNCTION_182_7();
        v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

        *(v38 + 14) = v39;
        *(v38 + 22) = 2080;
        *(v38 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
        *(v38 + 32) = 2080;
        outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v35, &selRef_contentType);
        v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

        *(v38 + 34) = v40;
        *(v38 + 42) = 2080;
        v41 = [v35 attributeDictionary];
        static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        v178[61] = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v178[62] = v42;
        AnyHashable.init<A>(_:)();
        specialized Dictionary.subscript.getter();

        outlined destroy of AnyHashable((v178 + 17));
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
        String.init<A>(describing:)();
        log = v36;
        v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

        *(v38 + 44) = v43;
        *(v38 + 52) = 2080;
        v44 = [v35 attributeDictionary];
        static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        v178[63] = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v178[64] = v45;
        AnyHashable.init<A>(_:)();
        specialized Dictionary.subscript.getter();

        outlined destroy of AnyHashable((v178 + 22));
        String.init<A>(describing:)();
        v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

        *(v38 + 54) = v46;
        *(v38 + 62) = 2080;
        v47 = outlined bridged method (pb) of @objc CSSearchableItemAttributeSet.authorNames.getter(v35, &selRef_detectedEventTypes);
        if (v47)
        {
          v48 = v47;
        }

        else
        {
          v48 = MEMORY[0x277D84F90];
        }

        MEMORY[0x25F89F8A0](v48, MEMORY[0x277D837D0]);
        OUTLINED_FUNCTION_82_0();

        OUTLINED_FUNCTION_182_7();
        v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

        *(v38 + 64) = v49;
        _os_log_impl(&dword_25D85C000, log, v159, "Result Rank %ld: id:%s, bundle:%s, contentType: %s, L2:%s, L1:%s, detectedEvents:%s", v38, 0x48u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_42_0();
        OUTLINED_FUNCTION_2_8();
      }

      else
      {
      }

      OUTLINED_FUNCTION_189_5();
      v51 = MEMORY[0x25F89F4C0](v50 + 8, 0x800000025DBF6DB0);
      v52 = [v35 attributeForKey_];

      if (v52)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        OUTLINED_FUNCTION_191_7();
      }

      *(v178 + 27) = v182;
      *(v178 + 29) = v183;
      if ([v35 attributeForKey_])
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        OUTLINED_FUNCTION_191_7();
      }

      *v174 = v182;
      v174[1] = v183;
      outlined init with copy of EagerResolutionService?();
      outlined init with copy of EagerResolutionService?();

      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v53, v54))
      {
        v55 = OUTLINED_FUNCTION_49_0();
        *&v182 = OUTLINED_FUNCTION_88_2();
        *v55 = 136315650;

        v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

        *(v55 + 4) = v56;
        *(v55 + 12) = 2080;
        outlined init with copy of EagerResolutionService?();
        v57 = OUTLINED_FUNCTION_48_3();
        __swift_instantiateConcreteTypeFromMangledNameV2(v57, v58);
        String.init<A>(describing:)();
        OUTLINED_FUNCTION_204_6();
        outlined destroy of IntentApplication?(v59, v60, v61);
        OUTLINED_FUNCTION_182_7();
        v62 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

        *(v55 + 14) = v62;
        *(v55 + 22) = 2080;
        outlined init with copy of EagerResolutionService?();
        String.init<A>(describing:)();
        OUTLINED_FUNCTION_204_6();
        outlined destroy of IntentApplication?(v63, v64, v65);
        OUTLINED_FUNCTION_48_3();
        v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

        *(v55 + 24) = v66;
        _os_log_impl(&dword_25D85C000, v53, v54, "Fetched result from bundleId %s with result retrieval type: %s, embedding distance for item: %s", v55, 0x20u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_42_0();
        OUTLINED_FUNCTION_2_8();
      }

      else
      {

        outlined destroy of IntentApplication?((v178 + 39), &_sypSgMd, &_sypSgMR);
        outlined destroy of IntentApplication?((v178 + 35), &_sypSgMd, &_sypSgMR);
      }

      if (v179 >= *(v167 + 16))
      {
        goto LABEL_90;
      }

      v67 = v178[85];
      v68 = v178[83];
      v161 = v178[75];
      (*(v165 + 16))(v67, v178[103] + ((*(v165 + 80) + 32) & ~*(v165 + 80)) + *(v165 + 72) * v179, v68);
      static LocalIndexClient.searchResultFromItem(_:spotlightRankingItem:eventSourceItemsMap:allowedTypes:locale:)();
      (*(v165 + 8))(v67, v68);
      v69 = OUTLINED_FUNCTION_90_9();
      OUTLINED_FUNCTION_166(v69, v70, v161);
      if (v28)
      {
        v3 = v178;
        v71 = v178[74];

        outlined destroy of IntentApplication?(v174, &_sypSgMd, &_sypSgMR);
        outlined destroy of IntentApplication?((v178 + 27), &_sypSgMd, &_sypSgMR);
        outlined destroy of IntentApplication?(v71, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
        v7 = v163;
        v4 = v164;
        v8 = v177;
      }

      else
      {
        outlined init with take of SearchResult(v178[74], v178[82]);
        _s10OmniSearch0B10ResultItemOWOcTm_3();
        _s10OmniSearch0B10ResultItemOWOcTm_3();
        OUTLINED_FUNCTION_34_11();
        _s10OmniSearch0B10ResultItemOWOcTm_3();

        v72 = Logger.logObject.getter();
        v73 = static os_log_type_t.info.getter();

        v74 = OUTLINED_FUNCTION_259();
        v75 = v178[81];
        v76 = v178[80];
        v77 = v178[79];
        if (v74)
        {
          v160 = v178[71];
          loga = v178[70];
          v78 = OUTLINED_FUNCTION_49_0();
          *&v182 = OUTLINED_FUNCTION_88_2();
          *v78 = 136315651;
          v162 = v72;
          SearchResultItem.type.getter(v178 + 856);
          lazy protocol witness table accessor for type SearchResultKey and conformance SearchResultKey();
          dispatch thunk of CustomStringConvertible.description.getter();
          OUTLINED_FUNCTION_212_3();
          _s10OmniSearch0B10ResultItemOWOhTm_8(v75, type metadata accessor for SearchResult);
          OUTLINED_FUNCTION_153();
          getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
          OUTLINED_FUNCTION_92_11();

          *(v78 + 4) = v178 + 107;
          *(v78 + 12) = 2085;
          specialized Encodable.oms_jsonPrettyPrinted()();
          v79 = OUTLINED_FUNCTION_88();
          _s10OmniSearch0B10ResultItemOWOhTm_8(v79, v80);
          getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
          OUTLINED_FUNCTION_92_11();

          *(v78 + 14) = v76;
          *(v78 + 22) = 2085;
          SearchResultItem.associatedValue.getter(v178 + 12);
          v81 = v77;
          v83 = v178[15];
          v82 = v178[16];
          v84 = __swift_project_boxed_opaque_existential_1(v178 + 12, v83);
          (*(v82 + 56))(loga, v160, v83, v82);
          OUTLINED_FUNCTION_212_3();
          _s10OmniSearch0B10ResultItemOWOhTm_8(v81, type metadata accessor for SearchResult);
          __swift_destroy_boxed_opaque_existential_1Tm(v178 + 12);
          OUTLINED_FUNCTION_153();
          getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
          OUTLINED_FUNCTION_92_11();

          *(v78 + 24) = v84;
          _os_log_impl(&dword_25D85C000, v162, v73, "LocalIndexClient found %s: %{sensitive}s ; %{sensitive}s", v78, 0x20u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_13_18();
          OUTLINED_FUNCTION_42_0();
        }

        else
        {

          _s10OmniSearch0B10ResultItemOWOhTm_8(v77, type metadata accessor for SearchResult);
          _s10OmniSearch0B10ResultItemOWOhTm_8(v76, type metadata accessor for SearchResult);
          _s10OmniSearch0B10ResultItemOWOhTm_8(v75, type metadata accessor for SearchResult);
        }

        v86 = v170;
        v85 = v171;
        v6 = v176;
        v8 = v177;
        if (SearchResultItem.isInstantAnswer()())
        {
          OUTLINED_FUNCTION_73_14();
          v87 = v156;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v124 = OUTLINED_FUNCTION_44();
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v124, v125, v126, v170);
            v86 = v127;
          }

          v3 = *(v86 + 16);
          v88 = *(v86 + 24);
          v89 = v3 + 1;
          if (v3 >= v88 >> 1)
          {
            v128 = OUTLINED_FUNCTION_26_3(v88);
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v128, v3 + 1, 1, v86);
            v91 = v153;
            v86 = v90;
          }

          else
          {
            v90 = v86;
            v91 = v153;
          }
        }

        else
        {
          OUTLINED_FUNCTION_73_14();
          v87 = v156;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v129 = OUTLINED_FUNCTION_44();
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v129, v130, v131, v171);
            v85 = v132;
          }

          v3 = *(v85 + 16);
          v92 = *(v85 + 24);
          v89 = v3 + 1;
          if (v3 >= v92 >> 1)
          {
            v133 = OUTLINED_FUNCTION_26_3(v92);
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v133, v3 + 1, 1, v85);
            v91 = v154;
            v85 = v90;
          }

          else
          {
            v90 = v85;
            v91 = v154;
          }
        }

        v93 = *v91;
        *(v90 + 16) = v89;
        outlined init with take of SearchResult(v93, v90 + ((*(v155 + 80) + 32) & ~*(v155 + 80)) + *(v155 + 72) * v3);
        OUTLINED_FUNCTION_189_5();
        v95 = v157 == v94 && v22 == v87;
        v170 = v86;
        v171 = v85;
        if (v95)
        {
        }

        else
        {
          _stringCompareWithSmolCheck(_:_:expecting:)();
          OUTLINED_FUNCTION_174_5();
          if ((v89 & 1) == 0)
          {
            goto LABEL_74;
          }
        }

        if (CSSearchableItem.isPhotoOrVideo.getter())
        {
          v96 = [v12 uniqueIdentifier];
          v97 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v3 = v98;

          v99 = v12;
          swift_isUniquelyReferenced_nonNull_native();
          v100 = OUTLINED_FUNCTION_213_4();
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v100, v97, v3, v101);

          v169 = v182;
        }

        v102 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v173, &selRef_contentType);
        if (!v103)
        {
LABEL_74:
          v106 = v178[82];

          OUTLINED_FUNCTION_27_15();
          _s10OmniSearch0B10ResultItemOWOhTm_8(v106, v107);
          outlined destroy of IntentApplication?(v174, &_sypSgMd, &_sypSgMR);
          OUTLINED_FUNCTION_65_0();
          outlined destroy of IntentApplication?(v108, v109, v110);
          goto LABEL_77;
        }

        if (v102 == 0x6D2E63696C627570 && v103 == 0xEE00656761737365)
        {
        }

        else
        {
          OUTLINED_FUNCTION_65_0();
          v105 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v105 & 1) == 0)
          {
            goto LABEL_74;
          }
        }

        v180 = v178[82];
        v111 = [v12 uniqueIdentifier];
        v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v113 = v112;

        outlined bridged method (pb) of @objc CSSearchableItemAttributeSet.authorNames.getter(v173, &selRef_attachmentNames);
        swift_isUniquelyReferenced_nonNull_native();
        v114 = OUTLINED_FUNCTION_213_4();
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v114, v3, v113, v115);

        OUTLINED_FUNCTION_27_15();
        _s10OmniSearch0B10ResultItemOWOhTm_8(v180, v116);
        outlined destroy of IntentApplication?(v174, &_sypSgMd, &_sypSgMR);
        OUTLINED_FUNCTION_65_0();
        outlined destroy of IntentApplication?(v117, v118, v119);
        v168 = v182;
LABEL_77:
        v7 = v163;
        v4 = v164;
      }
    }

    else
    {
      v16 = v12;
      v17 = Logger.logObject.getter();
      v3 = static os_log_type_t.error.getter();

      if (OUTLINED_FUNCTION_259())
      {
        v18 = OUTLINED_FUNCTION_51_0();
        *&v182 = OUTLINED_FUNCTION_49_0();
        *v18 = 136315138;
        v19 = [v16 uniqueIdentifier];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        OUTLINED_FUNCTION_182_7();
        v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
        v6 = v176;

        *(v18 + 4) = v20;
        _os_log_impl(&dword_25D85C000, v17, v3, "Skipping item with missing bundleID: %s", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v182);
        v8 = v177;
        OUTLINED_FUNCTION_42_0();
        OUTLINED_FUNCTION_37_0();
      }

      else
      {
      }

      v5 = v179 + 1;
    }
  }

  v135 = *(_sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(v134) + 16);

  if (v135 >= *(v175 + 16))
  {

    v139 = v170;
    v138 = v171;
  }

  else
  {

    v136 = Logger.logObject.getter();
    v137 = static os_log_type_t.error.getter();

    v139 = v170;
    v138 = v171;
    if (os_log_type_enabled(v136, v137))
    {
      OUTLINED_FUNCTION_51_0();
      v140 = OUTLINED_FUNCTION_10_23();
      OUTLINED_FUNCTION_99_10(v140);
      *v3 = 136315138;
      MEMORY[0x25F89F8A0](v175, MEMORY[0x277D837D0]);

      OUTLINED_FUNCTION_63_0();
      v141 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v3 + 4) = v141;
      OUTLINED_FUNCTION_25_6();
      _os_log_impl(v142, v143, v144, v145, v146, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v5);
      OUTLINED_FUNCTION_37_0();
      OUTLINED_FUNCTION_2_8();
    }

    else
    {
    }
  }

  v181 = v178[97];
  v147 = v178[92];
  v184 = v139;
  specialized Array.append<A>(contentsOf:)(v138);
  LocalIndexClient.populateMobileSMSDocumentPhotos(results:messageIdToPhotoAttachmentIds:photoAttachmentIdToPhotoItem:)(&v184, v168, v169);

  v148 = v184;

  OUTLINED_FUNCTION_86_16();
  v149 = v178[65];
  *v149 = v148;
  v149[1] = v181;

  OUTLINED_FUNCTION_127();

  v150();
}

{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  OUTLINED_FUNCTION_114_11();

  OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_83_0();

  __asm { BRAA            X1, X16 }
}

void static LocalIndexClient.getSpotlightRankingItem(for:attributeSet:)(void *a1, void *a2)
{
  OUTLINED_FUNCTION_151_5(1);
  OUTLINED_FUNCTION_151_5(v4);
  OUTLINED_FUNCTION_151_5(v5);
  OUTLINED_FUNCTION_151_5(v6);
  OUTLINED_FUNCTION_151_5(v7);
  LOBYTE(v17[0]) = v8;
  v13 = v8 << 32;
  v12 = v9 << 32;
  SpotlightRankingItem.init(retrievalType:bundleId:likelihood:topicality:pommesL1Score:pommesAdjustedL1Score:pommesCalibratedL1Score:embeddingSimilarity:keywordMatchScore:freshness:)();
  if ([a2 attributeForKey_])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
  }

  v17[0] = v15;
  v17[1] = v16;
  if (*(&v16 + 1))
  {
    type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
    if (OUTLINED_FUNCTION_25_23())
    {
      [v14 integerValue];
      SpotlightRankingItem.retrievalType.setter();
    }
  }

  else
  {
    outlined destroy of IntentApplication?(v17, &_sypSgMd, &_sypSgMR);
  }

  outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(a2, &selRef_bundleID);
  SpotlightRankingItem.bundleId.setter();
  v10 = [a1 rankingItem];
  if (v10)
  {
    v11 = v10;
    [v10 likelihood];
    OUTLINED_FUNCTION_20_21();
    SpotlightRankingItem.likelihood.setter();
    [v11 topicalityScore];
    OUTLINED_FUNCTION_20_21();
    SpotlightRankingItem.topicality.setter();
    [v11 pommesL1Score];
    OUTLINED_FUNCTION_20_21();
    SpotlightRankingItem.pommesL1Score.setter();
    [v11 pommesCalibratedL1Score];
    OUTLINED_FUNCTION_20_21();
    SpotlightRankingItem.pommesCalibratedL1Score.setter();
    [v11 embeddingSimilarity];
    OUTLINED_FUNCTION_20_21();
    SpotlightRankingItem.embeddingSimilarity.setter();
    [v11 keywordMatchScore];
    OUTLINED_FUNCTION_20_21();
    SpotlightRankingItem.keywordMatchScore.setter();
    [v11 freshnessScore];
    OUTLINED_FUNCTION_20_21();
    SpotlightRankingItem.freshness.setter();
  }
}

uint64_t static LocalIndexClient.searchableItemsAndRankingItems(for:)()
{
  OUTLINED_FUNCTION_48();
  v1[14] = v2;
  v1[15] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16CSSearchableItemC_15OmniSearchTypes016SpotlightRankingB0VtMd, &_sSo16CSSearchableItemC_15OmniSearchTypes016SpotlightRankingB0VtMR);
  v1[16] = v3;
  OUTLINED_FUNCTION_21(v3);
  v1[17] = v4;
  v1[18] = swift_task_alloc();
  v5 = type metadata accessor for SpotlightRankingItem();
  v1[19] = v5;
  OUTLINED_FUNCTION_21(v5);
  v1[20] = v6;
  v1[21] = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v7);
}

void static LocalIndexClient.searchableItemsAndRankingItems(for:)(__n128 a1)
{
  v3 = *(v1 + 112);
  if (v3 >> 62)
  {
    if (v3 < 0)
    {
      v69 = *(v1 + 112);
    }

    else
    {
      v69 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v4 = MEMORY[0x25F8A01B0](v69, a1);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_54:
    specialized _arrayForceCast<A, B>(_:)();
    v71 = v70;

    OUTLINED_FUNCTION_62();

    v72(v71);
    return;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_54;
  }

LABEL_3:
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = v3 & 0xC000000000000001;
    v74 = *(v1 + 112) + 32;
    v7 = *(v1 + 160);
    v81 = (v7 + 16);
    v83 = MEMORY[0x277D84F90];
    v80 = (v7 + 8);
    v78 = *MEMORY[0x277CC2678];
    v79 = *(v1 + 128);
    v77 = *MEMORY[0x277CC2680];
    v75 = *MEMORY[0x277CC2770];
    v76 = *MEMORY[0x277CC3208];
    a1.n128_u64[0] = 138739971;
    v73 = a1;
    v82 = v3 & 0xC000000000000001;
    while (1)
    {
      if (v6)
      {
        v8 = MEMORY[0x25F89FFD0](v5, *(v1 + 112));
      }

      else
      {
        v8 = *(v74 + 8 * v5);
      }

      v9 = v8;
      outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.title.getter(v9, &selRef_contentType);
      if (v10)
      {
        v11 = [v9 fullAttributeSet];
        if (v11)
        {
          v12 = v11;
          static LocalIndexClient.getSpotlightRankingItem(for:attributeSet:)(v9, v11);
          v13 = OUTLINED_FUNCTION_45_0();
          v14 = MEMORY[0x25F89F4C0](v13);

          [v12 setAttribute:v14 forKey:v78];

          v15 = v9;
          if (outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.authorAddresses.getter(v15, &selRef_contentTypeTree))
          {
            v16.super.isa = Array._bridgeToObjectiveC()().super.isa;
          }

          else
          {
            v16.super.isa = 0;
          }

          [v12 setAttribute:v16.super.isa forKey:{v77, *&v73}];
          swift_unknownObjectRelease();
          if (outlined bridged method (pb) of @objc CSSearchableItemAttributeSet.authorNames.getter(v15, &selRef_answerAttributes))
          {
            v44.super.isa = Array._bridgeToObjectiveC()().super.isa;
          }

          else
          {
            v44.super.isa = 0;
          }

          v45 = MEMORY[0x25F89F4C0](0xD000000000000025, 0x800000025DBF6D00);
          [v12 setAttribute:v44.super.isa forKey:v45];

          swift_unknownObjectRelease();
          v46 = v15;
          CSSearchableItemAttributeSet.spotlightSearchResult.setter(v15);
          if ([v12 attributeForKey_])
          {
            _bridgeAnyObjectToAny(_:)();
            swift_unknownObjectRelease();
          }

          else
          {
            v84 = 0u;
            v85 = 0u;
          }

          *(v1 + 16) = v84;
          *(v1 + 32) = v85;
          if (*(v1 + 40))
          {
            swift_dynamicCast();
          }

          else
          {
            outlined destroy of IntentApplication?(v1 + 16, &_sypSgMd, &_sypSgMR);
          }

          if ([v12 attributeForKey_])
          {
            _bridgeAnyObjectToAny(_:)();
            swift_unknownObjectRelease();
          }

          else
          {
            v84 = 0u;
            v85 = 0u;
          }

          v47 = v4;
          *(v1 + 48) = v84;
          *(v1 + 64) = v85;
          if (*(v1 + 72))
          {
            if (swift_dynamicCast())
            {
              v48 = *(v1 + 88);
            }

            else
            {
              v48 = 0;
            }
          }

          else
          {
            outlined destroy of IntentApplication?(v1 + 48, &_sypSgMd, &_sypSgMR);
            v48 = 0;
          }

          v49 = objc_allocWithZone(MEMORY[0x277CC34B0]);
          v2 = v12;
          OUTLINED_FUNCTION_144_9();
          v53 = @nonobjc CSSearchableItem.init(uniqueIdentifier:domainIdentifier:attributeSet:)(v50, v51, v52, v48, v2);
          v54 = outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.title.getter(v46, &selRef_resultBundleId);
          if (v55)
          {
            v56 = MEMORY[0x25F89F4C0](v54);
          }

          else
          {
            v56 = 0;
          }

          v57 = *(v1 + 168);
          v59 = *(v1 + 144);
          v58 = *(v1 + 152);
          [v53 setBundleID_];

          v60 = *(v79 + 48);
          *v59 = v53;
          (*v81)(&v59[v60], v57, v58);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v65 = OUTLINED_FUNCTION_44();
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v65);
            v83 = v66;
          }

          v62 = *(v83 + 16);
          v61 = *(v83 + 24);
          if (v62 >= v61 >> 1)
          {
            v67 = OUTLINED_FUNCTION_26_3(v61);
            specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v67);
            v83 = v68;
          }

          v63 = *(v1 + 168);
          v64 = *(v1 + 152);

          (*v80)(v63, v64);
          *(v83 + 16) = v62 + 1;
          OUTLINED_FUNCTION_79();
          outlined init with take of (Int, SearchCATEntity)();
          v4 = v47;
          v6 = v82;
          goto LABEL_48;
        }

        if (one-time initialization token for search != -1)
        {
          OUTLINED_FUNCTION_1_31();
          swift_once();
        }

        v34 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_200(v34, static Logging.search);
        v18 = v9;
        v19 = Logger.logObject.getter();
        v35 = static os_log_type_t.error.getter();

        if (!os_log_type_enabled(v19, v35))
        {
LABEL_21:

          goto LABEL_48;
        }

        v21 = OUTLINED_FUNCTION_51_0();
        v36 = OUTLINED_FUNCTION_173_0();
        v30 = OUTLINED_FUNCTION_160_5(v36, v37, v38, v39, v40, v41, v42, v43, v73.n128_i32[0]);
        v31 = v35;
        v32 = v19;
        v33 = "LocalIndexClient - Could not create CSSearchableItemAttributeSet for %{sensitive}@";
      }

      else
      {

        if (one-time initialization token for search != -1)
        {
          swift_once();
        }

        v17 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_200(v17, static Logging.search);
        v18 = v9;
        v19 = Logger.logObject.getter();
        v20 = static os_log_type_t.error.getter();

        if (!os_log_type_enabled(v19, v20))
        {
          goto LABEL_21;
        }

        v21 = OUTLINED_FUNCTION_51_0();
        v22 = OUTLINED_FUNCTION_173_0();
        v30 = OUTLINED_FUNCTION_160_5(v22, v23, v24, v25, v26, v27, v28, v29, v73.n128_i32[0]);
        v31 = v20;
        v32 = v19;
        v33 = "LocalIndexClient - Failed to synthesize searchable item from result: %{sensitive}@";
      }

      _os_log_impl(&dword_25D85C000, v32, v31, v33, v21, 0xCu);
      outlined destroy of IntentApplication?(v2, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_42_0();

LABEL_48:
      if (v4 == ++v5)
      {
        goto LABEL_54;
      }
    }
  }

  __break(1u);
}

void CSSearchableItemAttributeSet.spotlightSearchResult.setter(void *a1)
{
  type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for CSCustomAttributeKey, 0x277CC33B0);
  v3 = a1;
  v4 = static CSCustomAttributeKey.spotlightSFSearchResultKey.getter();
  [v1 setValue:v3 forCustomKey:v4];
}

void static LocalIndexClient.filterQueries(for:)(uint64_t result)
{
  v1 = 0;
  v2 = *(result + 16);
  v3 = result + 40;
  v4 = MEMORY[0x277D84F90];
  v5 = MEMORY[0x277D84F90];
LABEL_2:
  v6 = v3 + 16 * v1;
  while (v2 != v1)
  {
    if (v1 >= v2)
    {
      __break(1u);
LABEL_21:
      __break(1u);
      return;
    }

    v7 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_21;
    }

    EntityProperty.wrappedValue.getter();

    ++v1;
    v6 += 16;
    if (v27)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = OUTLINED_FUNCTION_44();
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v10);
        v5 = v11;
      }

      v8 = *(v5 + 16);
      if (v8 >= *(v5 + 24) >> 1)
      {
        OUTLINED_FUNCTION_61_19();
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v12);
        v5 = v13;
      }

      *(v5 + 16) = v8 + 1;
      v9 = v5 + 16 * v8;
      *(v9 + 32) = v25;
      *(v9 + 40) = v27;
      v1 = v7;
      goto LABEL_2;
    }
  }

  v14 = *(v5 + 16);
  if (v14)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14, 0);
    v15 = v5 + 40;
    do
    {
      v16 = one-time initialization token for keyAttributeAppEntityTypeIdentifier;

      if (v16 != -1)
      {
        OUTLINED_FUNCTION_21_27();
        swift_once();
      }

      v26 = static LocalIndexClient.keyAttributeAppEntityTypeIdentifier;
      v28 = *algn_27FCAFD38;

      MEMORY[0x25F89F6C0](15677, 0xE200000000000000);
      v17 = OUTLINED_FUNCTION_45_0();
      MEMORY[0x25F89F6C0](v17);

      v19 = *(v4 + 16);
      v18 = *(v4 + 24);
      if (v19 >= v18 >> 1)
      {
        v21 = OUTLINED_FUNCTION_26_3(v18);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v21, v19 + 1, 1);
      }

      *(v4 + 16) = v19 + 1;
      v20 = v4 + 16 * v19;
      *(v20 + 32) = v26;
      *(v20 + 40) = v28;
      v15 += 16;
      --v14;
    }

    while (v14);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  v22 = lazy protocol witness table accessor for type [String] and conformance [A]();
  OUTLINED_FUNCTION_216_4(v22, v23, v24, v22);
  OUTLINED_FUNCTION_140_2();

  OUTLINED_FUNCTION_94();
}

uint64_t static LocalIndexClient.checkEmbeddingCompleteness()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  *(v0 + 16) = swift_task_alloc();

  return MEMORY[0x2822009F8](static LocalIndexClient.checkEmbeddingCompleteness());
}

{
  OUTLINED_FUNCTION_48();
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_5_0(&one-time initialization token for shared);
  }

  *(v0 + 24) = static ContextManager.shared;

  return MEMORY[0x2822009F8](static LocalIndexClient.checkEmbeddingCompleteness());
}

{
  OUTLINED_FUNCTION_48();
  ContextManager.set(indexContext:)(0, 0, 1);
  v0 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v0);
}

{
  OUTLINED_FUNCTION_48();
  type metadata accessor for TaskPriority();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5();

  OUTLINED_FUNCTION_127();

  return v5();
}

unint64_t static LocalIndexClient.results(for:)(unint64_t a1)
{
  v1 = a1;
  v57 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_47:
    if (v1 < 0)
    {
      v41 = v1;
    }

    else
    {
      v41 = v1 & 0xFFFFFFFFFFFFFF8;
    }

    v42 = v1;
    v2 = MEMORY[0x25F8A01B0](v41);
    v1 = v42;
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      v47 = v1 & 0xC000000000000001;
      v45 = v1;
      v43 = v1 + 32;
      v44 = v1 & 0xFFFFFFFFFFFFFF8;
      v1 = MEMORY[0x277CC2770];
      v52 = MEMORY[0x277D84F90];
      v4 = *MEMORY[0x277CC3208];
      v5 = *MEMORY[0x277CC2770];
      v6 = &off_2799EF000;
      v46 = v2;
      v50 = *MEMORY[0x277CC2770];
      v51 = *MEMORY[0x277CC3208];
      while (1)
      {
        if (v47)
        {
          v7 = MEMORY[0x25F89FFD0](v3, v45);
        }

        else
        {
          if (v3 >= *(v44 + 16))
          {
            goto LABEL_46;
          }

          v7 = *(v43 + 8 * v3);
        }

        v8 = v7;
        v9 = __OFADD__(v3, 1);
        v10 = v3 + 1;
        if (v9)
        {
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
          goto LABEL_47;
        }

        if (one-time initialization token for search != -1)
        {
          OUTLINED_FUNCTION_1_31();
          swift_once();
        }

        v11 = type metadata accessor for Logger();
        OUTLINED_FUNCTION_200(v11, static Logging.search);
        v12 = v8;
        v13 = Logger.logObject.getter();
        v14 = static os_log_type_t.debug.getter();

        v48 = v10;
        v49 = v12;
        if (OUTLINED_FUNCTION_221_4())
        {
          OUTLINED_FUNCTION_51_0();
          v56 = OUTLINED_FUNCTION_10_23();
          *v10 = 136642819;
          v15 = v12;
          v16 = [v15 description];
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          v6 = &off_2799EF000;
          v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

          *(v10 + 4) = v17;
          v12 = v49;
          _os_log_impl(&dword_25D85C000, v13, v14, "Found section: %{sensitive}s", v10, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v56);
          OUTLINED_FUNCTION_13_18();
          OUTLINED_FUNCTION_2_8();
        }

        result = outlined bridged method (pb) of @objc CSSearchableItemAttributeSet.photosSceneClassifications.getter(v12, &selRef_results);
        if (!result)
        {
          __break(1u);
          return result;
        }

        v19 = result;
        v1 = result >> 62;
        if (result >> 62)
        {
          if ((result & 0x8000000000000000) == 0)
          {
            result &= 0xFFFFFFFFFFFFFF8uLL;
          }

          v20 = MEMORY[0x25F8A01B0](result);
          if (!v20)
          {
            goto LABEL_42;
          }
        }

        else
        {
          v20 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v20)
          {
            goto LABEL_42;
          }
        }

        if (v20 < 1)
        {
          goto LABEL_45;
        }

        v21 = 0;
        v55 = v19 & 0xC000000000000001;
        v53 = v20;
        v54 = v19;
        do
        {
          if (v55)
          {
            v22 = MEMORY[0x25F89FFD0](v21, v19);
          }

          else
          {
            v22 = *(v19 + 8 * v21 + 32);
          }

          v23 = v22;
          objc_opt_self();
          v24 = swift_dynamicCastObjCClass();
          v25 = v23;
          if (v24)
          {
            MEMORY[0x25F89F850]();
            v26 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x18);
            if (*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v26 >> 1)
            {
              OUTLINED_FUNCTION_26_3(v26);
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            OUTLINED_FUNCTION_119();
            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v52 = v57;
            type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for NSString, 0x277CCACA8);
            ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
            if ([v24 v6[283]])
            {
              _bridgeAnyObjectToAny(_:)();
              swift_unknownObjectRelease();
            }

            else
            {
              OUTLINED_FUNCTION_191_7();
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
            String.init<A>(describing:)();
            if ([v24 v6[283]])
            {
              _bridgeAnyObjectToAny(_:)();
              swift_unknownObjectRelease();
            }

            else
            {
              OUTLINED_FUNCTION_191_7();
            }

            String.init<A>(describing:)();
            v33 = v25;

            v34 = Logger.logObject.getter();
            v35 = static os_log_type_t.debug.getter();

            if (os_log_type_enabled(v34, v35))
            {
              v36 = OUTLINED_FUNCTION_49_0();
              OUTLINED_FUNCTION_88_2();
              *v36 = 136643331;
              v37 = v33;
              v38 = [v24 description];
              static String._unconditionallyBridgeFromObjectiveC(_:)();

              v6 = &off_2799EF000;
              getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
              OUTLINED_FUNCTION_227_2();
              *(v36 + 4) = v38;
              *(v36 + 12) = 2080;
              v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

              *(v36 + 14) = v39;
              *(v36 + 22) = 2080;
              v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

              *(v36 + 24) = v40;
              _os_log_impl(&dword_25D85C000, v34, v35, "Found result: %{sensitive}s, uniqueId:%s, domainId: %s", v36, 0x20u);
              swift_arrayDestroy();
              v4 = v51;
              OUTLINED_FUNCTION_42_0();
              v5 = v50;
              OUTLINED_FUNCTION_42_0();
            }

            else
            {
            }

            v20 = v53;
            v19 = v54;
          }

          else
          {
            v28 = Logger.logObject.getter();
            v29 = static os_log_type_t.error.getter();

            if (OUTLINED_FUNCTION_221_4())
            {
              v30 = OUTLINED_FUNCTION_51_0();
              v31 = OUTLINED_FUNCTION_173_0();
              *v30 = 138739971;
              *(v30 + 4) = v25;
              *v31 = v25;
              v32 = v25;
              _os_log_impl(&dword_25D85C000, v28, v29, "Failed to cast search result to spotlightExtras: %{sensitive}@", v30, 0xCu);
              outlined destroy of IntentApplication?(v31, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
              v6 = &off_2799EF000;
              OUTLINED_FUNCTION_42_0();
              OUTLINED_FUNCTION_2_8();
            }

            else
            {
            }
          }

          ++v21;
        }

        while (v20 != v21);
LABEL_42:

        v3 = v48;
        if (v48 == v46)
        {
          return v52;
        }
      }
    }
  }

  return MEMORY[0x277D84F90];
}

void static LocalIndexClient.filterAllowedItems(allowedTypes:items:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = a1 + 40;
    v43 = a1 + 40;
    v44 = MEMORY[0x277D84F90];
LABEL_3:
    v5 = v4 + 16 * v3;
    while (v2 != v3)
    {
      if (v3 >= v2)
      {
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
        return;
      }

      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_46;
      }

      EntityProperty.wrappedValue.getter();
      if (v47)
      {
        EntityProperty.wrappedValue.getter();
        static LocalIndexClient.makeFilterKey(bundleId:typeName:)(v46, v47, v46, v47);
        v12 = v11;
        v42 = v13;

        v14 = v44;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = OUTLINED_FUNCTION_44();
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v18);
          v14 = v19;
        }

        v16 = *(v14 + 16);
        v15 = *(v14 + 24);
        if (v16 >= v15 >> 1)
        {
          v20 = OUTLINED_FUNCTION_26_3(v15);
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v20);
          v14 = v21;
        }

        *(v14 + 16) = v16 + 1;
        v44 = v14;
        v17 = v14 + 16 * v16;
        v4 = v43;
        *(v17 + 32) = v12;
        *(v17 + 40) = v42;
        v3 = v6;
        goto LABEL_3;
      }

      if (one-time initialization token for search != -1)
      {
        OUTLINED_FUNCTION_1_31();
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_200(v7, static Logging.search);
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.error.getter();
      if (OUTLINED_FUNCTION_88_0(v9))
      {
        v10 = OUTLINED_FUNCTION_172();
        *v10 = 0;
        _os_log_impl(&dword_25D85C000, v8, v9, "LocalIndexClient.findMatches - Skipping allowedType with nil typeName", v10, 2u);
        OUTLINED_FUNCTION_72_9();
      }

      ++v3;
      v5 += 16;
    }

    v23 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(v22);
    v24 = *(v44 + 16);

    if (v24)
    {
      v25 = a2;
      v26 = specialized Array.count.getter();
      for (i = 0; v26 != i; ++i)
      {
        if ((a2 & 0xC000000000000001) != 0)
        {
          v28 = MEMORY[0x25F89FFD0](i, v25);
        }

        else
        {
          if (i >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_48;
          }

          v28 = *(v25 + 8 * i + 32);
        }

        v29 = v28;
        if (__OFADD__(i, 1))
        {
          goto LABEL_47;
        }

        v30 = outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.title.getter([v28 attributeSet], &selRef_bundleID);
        if (v31)
        {
          v32 = v30;
        }

        else
        {
          v32 = 0;
        }

        if (v31)
        {
          v33 = v31;
        }

        else
        {
          v33 = 0xE000000000000000;
        }

        v34 = outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.title.getter([v29 attributeSet], &selRef_appEntityType);
        if (v35)
        {
          v36 = v34;
        }

        else
        {
          v36 = 0;
        }

        if (v35)
        {
          v37 = v35;
        }

        else
        {
          v37 = 0xE000000000000000;
        }

        static LocalIndexClient.makeFilterKey(bundleId:typeName:)(v32, v33, v36, v37);
        v39 = v38;

        v40 = OUTLINED_FUNCTION_107();
        specialized Set.contains(_:)(v40, v41, v23);
        OUTLINED_FUNCTION_174_5();
        if (v39)
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        v25 = a2;
      }
    }

    else
    {
    }
  }

  else
  {
  }
}

BOOL CSSearchableItem.isEventTypeItem.getter()
{
  v1 = [v0 attributeSet];
  v2 = [v1 eventType];

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = v3 & 0xFFFFFFFFFFFFLL;
  }

  return v6 != 0;
}

uint64_t CSSearchableItem.isPhotoOrVideo.getter()
{
  type metadata accessor for UTType();
  OUTLINED_FUNCTION_14();
  v1 = v0;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_36();
  v5 = v4 - v3;
  static UTType.image.getter();
  v6 = CSSearchableItem.isContentType(_:)(v5);
  v7 = *(v1 + 8);
  v8 = OUTLINED_FUNCTION_119();
  v7(v8);
  if (v6 & 1) != 0 || (static UTType.movie.getter(), v9 = CSSearchableItem.isContentType(_:)(v5), v10 = OUTLINED_FUNCTION_119(), v7(v10), (v9))
  {
    v11 = 1;
  }

  else
  {
    v11 = CSSearchableItem.isSyndicatedPhoto.getter();
  }

  return v11 & 1;
}

uint64_t LocalIndexClient.populateMobileSMSDocumentPhotos(results:messageIdToPhotoAttachmentIds:photoAttachmentIdToPhotoItem:)(unint64_t *a1, unint64_t a2, char *a3)
{
  v114 = *v3;
  v88 = type metadata accessor for SpotlightRankingItem();
  v111 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v80 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v87 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v76 - v11;
  v113 = type metadata accessor for Photo();
  v115 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v78 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = type metadata accessor for SearchResultItem(0);
  MEMORY[0x28223BE20](v109);
  v15 = &v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v76 - v17;
  v108 = type metadata accessor for MobileSMSDocument();
  v19 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v99 = &v76 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v107 = &v76 - v22;
  v94 = type metadata accessor for SearchResult(0);
  v100 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v98 = &v76 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v97 = &v76 - v25;
  MEMORY[0x28223BE20](v26);
  v28 = (&v76 - v27);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
  MEMORY[0x28223BE20](v29);
  v93 = (&v76 - v30);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_10OmniSearch0C6ResultV7elementtSgMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtSgMR);
  MEMORY[0x28223BE20](v31 - 8);
  v110 = &v76 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v104 = &v76 - v34;
  v35 = *a1;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v37 = v35;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_62:
    specialized _ArrayBuffer._consumeAndCreateNew()(v35);
    v37 = v75;
  }

  v38 = 0;
  v92 = (v19 + 32);
  v95 = v35;
  v39 = *(v35 + 16);
  v112 = v115 + 32;
  v84 = (v19 + 16);
  v82 = v37;
  v81 = a1;
  *a1 = v37;
  v83 = (v111 + 16);
  v79 = (v111 + 32);
  v90 = (v19 + 8);
  v19 = v94;
  v101 = v28;
  v96 = v29;
  v103 = v39;
  v77 = a3;
  v89 = a2;
  v86 = v12;
  v85 = v15;
  v91 = v18;
  while (1)
  {
    v35 = v110;
    if (v38 == v39)
    {
      v40 = 1;
      v111 = v39;
    }

    else
    {
      if ((v38 & 0x8000000000000000) != 0)
      {
        goto LABEL_57;
      }

      if (v38 >= *(v95 + 16))
      {
        goto LABEL_58;
      }

      v41 = v38 + 1;
      *v93 = v38;
      _s10OmniSearch0B10ResultItemOWOcTm_3();
      v35 = v110;
      outlined init with take of (Int, SearchCATEntity)();
      v40 = 0;
      v111 = v41;
    }

    __swift_storeEnumTagSinglePayload(v35, v40, 1, v29);
    v42 = v104;
    outlined init with take of (Int, SearchCATEntity)();
    if (__swift_getEnumTagSinglePayload(v42, 1, v29) == 1)
    {
    }

    v106 = *v42;
    outlined init with take of SearchResult(v42 + *(v29 + 48), v28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMd, &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR);
    a1 = CodableNSSecureCoding.wrappedValue.getter();
    _s10OmniSearch0B10ResultItemOWOcTm_3();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*v92)(v107, v18, v108);
      v102 = a1;
      v43 = [a1 uniqueIdentifier];
      v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v46 = v45;

      if (*(a2 + 16))
      {
        v35 = specialized __RawDictionaryStorage.find<A>(_:)(v44, v46);
        v48 = v47;

        v12 = MEMORY[0x277D84F90];
        if (v48)
        {
          v19 = *(*(a2 + 56) + 8 * v35);
          v18 = MEMORY[0x277D84F90];
          v116 = MEMORY[0x277D84F90];
          v28 = *(v19 + 16);

          v29 = 0;
          v15 = v19 + 40;
LABEL_13:
          a1 = (v15 + 16 * v29);
          while (v28 != v29)
          {
            if (v29 >= *(v19 + 16))
            {
              __break(1u);
              goto LABEL_55;
            }

            if (*(a3 + 2))
            {
              v56 = *(a1 - 1);
              v12 = *a1;

              v57 = v56;
              v35 = a3;
              v58 = specialized __RawDictionaryStorage.find<A>(_:)(v57, v12);
              if (v59)
              {
                v60 = *(*(a3 + 7) + 8 * v58);

                v35 = &v116;
                MEMORY[0x25F89F850](v61);
                v12 = *((v116 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v12 >= *((v116 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                }

                ++v29;
                specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                v18 = v116;
                goto LABEL_13;
              }
            }

            a1 += 2;
            ++v29;
          }

          if (v18 >> 62)
          {
            if (v18 < 0)
            {
              v73 = v18;
            }

            else
            {
              v73 = v18 & 0xFFFFFFFFFFFFFF8;
            }

            v19 = MEMORY[0x25F8A01B0](v73);
          }

          else
          {
            v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v28 = v101;
          v29 = v96;
          if (!v19)
          {
            goto LABEL_39;
          }

          v116 = MEMORY[0x277D84F90];
          v35 = &v116;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v19 & ~(v19 >> 63), 0);
          if (v19 < 0)
          {
            goto LABEL_61;
          }

          v29 = 0;
          v12 = v116;
          a2 = v18 & 0xC000000000000001;
          v105 = v18 & 0xFFFFFFFFFFFFFF8;
          a3 = v78;
          while (1)
          {
            a1 = (v29 + 1);
            if (__OFADD__(v29, 1))
            {
              break;
            }

            if (a2)
            {
              v62 = MEMORY[0x25F89FFD0](v29, v18);
            }

            else
            {
              if (v29 >= *(v105 + 16))
              {
                goto LABEL_56;
              }

              v62 = *(v18 + 8 * v29 + 32);
            }

            v63 = v62;
            v35 = v114;
            static LocalIndexClient.constructPhotoDocument(item:)(v62, a3);

            v116 = v12;
            v15 = *(v12 + 2);
            v64 = *(v12 + 3);
            v28 = (v15 + 1);
            if (v15 >= v64 >> 1)
            {
              v35 = &v116;
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v64 > 1, v15 + 1, 1);
              v12 = v116;
            }

            *(v12 + 2) = v28;
            (*(v115 + 32))(&v12[((*(v115 + 80) + 32) & ~*(v115 + 80)) + *(v115 + 72) * v15], a3, v113);
            ++v29;
            if (a1 == v19)
            {

              a3 = v77;
              a2 = v89;
              v28 = v101;
              v29 = v96;
              goto LABEL_40;
            }
          }

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
LABEL_60:
          __break(1u);
LABEL_61:
          __break(1u);
          goto LABEL_62;
        }
      }

      else
      {
LABEL_39:

        v12 = MEMORY[0x277D84F90];
      }

LABEL_40:
      if (*(v12 + 2))
      {
        v65 = v99;
        MobileSMSDocument.withUpdatedPhotoAttachments(_:)(v12, v49, v50, v51, v52, v53, v54, v55, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87);

        v15 = v85;
        (*v84)(v85, v65, v108);
        swift_storeEnumTagMultiPayload();
        v66 = v94;
        v12 = v86;
        v29 = v88;
        (*v83)(v86, v28 + *(v94 + 20), v88);
        __swift_storeEnumTagSinglePayload(v12, 0, 1, v29);
        v67 = v98;
        *&v98[v66[7]] = MEMORY[0x277D84F90];
        v68 = (v67 + v66[10]);
        *v68 = 0;
        v68[1] = 0;
        _s10OmniSearch0B10ResultItemOWOcTm_3();
        type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for CSSearchableItem, 0x277CC34B0);
        lazy protocol witness table accessor for type CSSearchableItem and conformance NSObject();
        v69 = v102;
        CodableNSSecureCoding.init(wrappedValue:)();
        v70 = v87;
        v28 = &_s15OmniSearchTypes20SpotlightRankingItemVSgMR;
        outlined init with copy of EagerResolutionService?();
        if (__swift_getEnumTagSinglePayload(v70, 1, v29) == 1)
        {
          outlined destroy of IntentApplication?(v70, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
          LOBYTE(v116) = 1;
          SpotlightRankingItem.init(retrievalType:bundleId:likelihood:topicality:pommesL1Score:pommesAdjustedL1Score:pommesCalibratedL1Score:embeddingSimilarity:keywordMatchScore:freshness:)();
          outlined destroy of IntentApplication?(v12, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
          _s10OmniSearch0B10ResultItemOWOhTm_8(v15, type metadata accessor for SearchResultItem);
        }

        else
        {
          outlined destroy of IntentApplication?(v12, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
          _s10OmniSearch0B10ResultItemOWOhTm_8(v15, type metadata accessor for SearchResultItem);
          v71 = *v79;
          v72 = v80;
          (*v79)(v80, v70, v29);
          v71(&v98[v66[5]], v72, v29);
          v67 = v98;
        }

        v19 = v66;
        *(v67 + v66[8]) = 1;
        *(v67 + v66[9]) = 1;
        outlined init with take of SearchResult(v67, v97);

        a1 = *v90;
        v35 = v108;
        (*v90)(v99, v108);
        (a1)(v107, v35);
        _s10OmniSearch0B10ResultItemOWOhTm_8(v101, type metadata accessor for SearchResult);
        v18 = v91;
        a2 = v89;
        if ((v106 & 0x8000000000000000) != 0)
        {
          goto LABEL_59;
        }

        a1 = v82;
        if (v106 >= v82[2])
        {
          goto LABEL_60;
        }

        outlined assign with take of SearchResult(v97, v82 + ((*(v100 + 80) + 32) & ~*(v100 + 80)) + *(v100 + 72) * v106);
        *v81 = a1;
        v28 = v101;
        v29 = v96;
      }

      else
      {

        (*v90)(v107, v108);
        _s10OmniSearch0B10ResultItemOWOhTm_8(v28, type metadata accessor for SearchResult);
        v18 = v91;
        v19 = v94;
      }
    }

    else
    {
      _s10OmniSearch0B10ResultItemOWOhTm_8(v28, type metadata accessor for SearchResult);

      _s10OmniSearch0B10ResultItemOWOhTm_8(v18, type metadata accessor for SearchResultItem);
    }

    v38 = v111;
    v39 = v103;
  }
}

void static LocalIndexClient.makeFilterKey(bundleId:typeName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  MEMORY[0x25F89F6C0](95, 0xE100000000000000);
  MEMORY[0x25F89F6C0](a3, a4);
}

void static LocalIndexClient.handleSelectItemsByContentType(_:spotlightRankingItem:eventSourceItemsMap:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_155();
  a19 = v24;
  a20 = v25;
  v879 = v20;
  v871 = v26;
  v28 = v27;
  v881 = v29;
  v30 = type metadata accessor for PhoneHistory();
  v31 = OUTLINED_FUNCTION_1_5(v30, &v838);
  v810 = v32;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_28_2(v33);
  v34 = type metadata accessor for VoicemailTranscript();
  v35 = OUTLINED_FUNCTION_1_5(v34, &v843);
  v817 = v36;
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_28_2(v37);
  v38 = type metadata accessor for CharacterSet();
  v39 = OUTLINED_FUNCTION_1_5(v38, &v834);
  v812 = v40;
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_28_2(v41);
  v42 = type metadata accessor for Reminder();
  v43 = OUTLINED_FUNCTION_1_5(v42, v851);
  v830 = v44;
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_28_2(v45);
  v46 = type metadata accessor for Contact();
  v47 = OUTLINED_FUNCTION_1_5(v46, &v855);
  v838 = v48;
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_28_2(v49);
  v50 = type metadata accessor for NoteDocument();
  v51 = OUTLINED_FUNCTION_1_5(v50, v857);
  v836 = v52;
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_28_2(v53);
  v54 = type metadata accessor for CalendarEvent();
  v55 = OUTLINED_FUNCTION_1_5(v54, &v870);
  v847 = v56;
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_15_4(v57);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes22PreExtractedBreadcrumbVSgMd, &_s15OmniSearchTypes22PreExtractedBreadcrumbVSgMR);
  OUTLINED_FUNCTION_114(v58);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_15_4(v60);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes22PreExtractedSharedLinkVSgMd, &_s15OmniSearchTypes22PreExtractedSharedLinkVSgMR);
  OUTLINED_FUNCTION_114(v61);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_15_4(v63);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes19PreExtractedContactVSgMd, &_s15OmniSearchTypes19PreExtractedContactVSgMR);
  OUTLINED_FUNCTION_114(v64);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_15_4(v66);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes16PreExtractedCardVSgMd, &_s15OmniSearchTypes16PreExtractedCardVSgMR);
  OUTLINED_FUNCTION_114(v67);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_15_4(v69);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes26PartialExtractedAttributesVSgMd, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMR);
  v71 = OUTLINED_FUNCTION_114(v70);
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_15_4(v73);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes19DataDetectorResultsVSgMd, &_s15OmniSearchTypes19DataDetectorResultsVSgMR);
  v75 = OUTLINED_FUNCTION_114(v74);
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_15_4(v77);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v79 = OUTLINED_FUNCTION_114(v78);
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v81);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v82);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v83);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_15_4(v84);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v86 = OUTLINED_FUNCTION_114(v85);
  MEMORY[0x28223BE20](v86);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v87);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v88);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v89);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v90);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v91);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v92);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v93);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v94);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v95);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v96);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v97);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_28_2(v98);
  v99 = type metadata accessor for MobileSMSDocument();
  OUTLINED_FUNCTION_14();
  v860 = v100;
  MEMORY[0x28223BE20](v101);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v102);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v103);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_28_2(v104);
  v105 = type metadata accessor for EmailDocument();
  v106 = OUTLINED_FUNCTION_1_5(v105, &a9);
  v867 = v107;
  MEMORY[0x28223BE20](v106);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_28_2(v108);
  v109 = type metadata accessor for UTType();
  v110 = OUTLINED_FUNCTION_1_5(v109, &a11);
  v112 = v111;
  MEMORY[0x28223BE20](v110);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_28_2(v113);
  v878 = type metadata accessor for FileDocument();
  OUTLINED_FUNCTION_14();
  v877 = v114;
  MEMORY[0x28223BE20](v115);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_28_2(v116);
  v882 = type metadata accessor for SpotlightRankingItem();
  OUTLINED_FUNCTION_14();
  v884 = v117;
  MEMORY[0x28223BE20](v118);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v119);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v120);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v121);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v122);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v123);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v124);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v125);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v126);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v127);
  OUTLINED_FUNCTION_14_2();
  v129 = OUTLINED_FUNCTION_28_2(v128);
  v885 = type metadata accessor for SearchResult(v129);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v130);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v131);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v132);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v133);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v134);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v135);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v136);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v137);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v138);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v139);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_15_4(v140);
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
  v142 = OUTLINED_FUNCTION_114(v141);
  MEMORY[0x28223BE20](v142);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v143);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v144);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v145);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v146);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v147);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v148);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v149);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v150);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v151);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v152);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v153);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v154);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v155);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v156);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v157);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v158);
  MEMORY[0x28223BE20](v159);
  OUTLINED_FUNCTION_51_12();
  MEMORY[0x28223BE20](v160);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v161);
  OUTLINED_FUNCTION_14_2();
  v163 = OUTLINED_FUNCTION_28_2(v162);
  v880 = type metadata accessor for SearchResultItem(v163);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v164);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v165);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v166);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v167);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v168);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v169);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v170);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v171);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v172);
  OUTLINED_FUNCTION_78_16();
  MEMORY[0x28223BE20](v173);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_28_2(v174);
  v175 = type metadata accessor for Photo();
  OUTLINED_FUNCTION_14();
  v887 = v176;
  MEMORY[0x28223BE20](v177);
  OUTLINED_FUNCTION_109();
  v180 = v178 - v179;
  MEMORY[0x28223BE20](v181);
  OUTLINED_FUNCTION_67_12();
  *&v183 = MEMORY[0x28223BE20](v182).n128_u64[0];
  v185 = v806 - v184;
  v886 = [v28 attributeSet];
  v186 = outlined bridged method (pb) of @objc CSSearchableItem.bundleID.getter(v28);
  if (v187)
  {
    v188 = v186;
  }

  else
  {
    v188 = 0;
  }

  v848 = v188;
  v189 = 0xE000000000000000;
  if (v187)
  {
    v189 = v187;
  }

  v883 = v189;
  if (CSSearchableItem.isPhotoOrVideo.getter())
  {
    v858 = v28;
    static LocalIndexClient.constructPhotoDocument(item:)(v28, v185);
    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_1_31();
      swift_once();
    }

    v190 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v190, static Logging.search);
    v191 = v887;
    v192 = v887[2];
    v879 = v185;
    v192(v23, v185, v175);
    v193 = Logger.logObject.getter();
    v194 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_88_0(v194))
    {
      v195 = OUTLINED_FUNCTION_51_0();
      v196 = OUTLINED_FUNCTION_49_0();
      v890 = v196;
      *v195 = 136642819;
      v192(v180, v23, v175);
      String.init<A>(describing:)();
      v180 = v197;
      v198 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v195 + 4) = v198;

      v199 = OUTLINED_FUNCTION_186_4(v887);
      v200(v199);
      OUTLINED_FUNCTION_70_0(&dword_25D85C000, v201, v194, "LocalIndexClient: Converted item to photo %{sensitive}s");
      __swift_destroy_boxed_opaque_existential_1Tm(v196);
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_72_9();
    }

    else
    {

      v226 = OUTLINED_FUNCTION_186_4(v191);
      v227(v226);
    }

    v228 = v882;
    v229 = v874;
    v230 = OUTLINED_FUNCTION_193_5(&a13);
    v192(v230, v879, v175);
    OUTLINED_FUNCTION_203_4();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_92();
    OUTLINED_FUNCTION_103_13(v231, v232, v233, v228);
    v234 = v875;
    *(v875 + v235) = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_2_51((v234 + *(v23 + 40)));
    _s10OmniSearch0B10ResultItemOWOcTm_3();
    type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for CSSearchableItem, 0x277CC34B0);
    lazy protocol witness table accessor for type CSSearchableItem and conformance NSObject();
    OUTLINED_FUNCTION_71_16();
    OUTLINED_FUNCTION_33_13();
    CodableNSSecureCoding.init(wrappedValue:)();
    v236 = v873;
    outlined init with copy of EagerResolutionService?();
    OUTLINED_FUNCTION_166(v236, 1, v228);
    v237 = v886;
    if (v317)
    {
      v278 = &_s15OmniSearchTypes20SpotlightRankingItemVSgMd;
      OUTLINED_FUNCTION_117_8();
      outlined destroy of IntentApplication?(v238, v239, v240);
      OUTLINED_FUNCTION_8_37();
      OUTLINED_FUNCTION_19_18();

      OUTLINED_FUNCTION_117_8();
      outlined destroy of IntentApplication?(v241, v242, v243);
      OUTLINED_FUNCTION_3_35();
      _s10OmniSearch0B10ResultItemOWOhTm_8(v180, v244);
      v245 = OUTLINED_FUNCTION_142_6();
      v246(v245);
    }

    else
    {

      outlined destroy of IntentApplication?(v229, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
      OUTLINED_FUNCTION_3_35();
      _s10OmniSearch0B10ResultItemOWOhTm_8(v180, v274);
      v275 = OUTLINED_FUNCTION_142_6();
      v276(v275);
      LOBYTE(v278) = v884 + 32;
      v277 = *(v884 + 32);
      v279 = OUTLINED_FUNCTION_34_11();
      (v277)(v279);
      OUTLINED_FUNCTION_196_5();
      v277();
    }

    v280 = v881;
    OUTLINED_FUNCTION_136_10();
    *(v234 + v281) = v278;
    *(v234 + *(v23 + 36)) = v278;
    v282 = v234;
    goto LABEL_154;
  }

  v806[0] = v99;
  v202 = &off_2799EF000;
  if (CSSearchableItem.isFileDocument.getter())
  {

    v203 = [v28 uniqueIdentifier];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v204 = v28;
    v205 = v876;
    OUTLINED_FUNCTION_83_13();
    FileDocument.init(id:item:)();
    OUTLINED_FUNCTION_128_9();
    v206(v21, v205, v878);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_81_17();
    v207 = v882;
    v208();
    OUTLINED_FUNCTION_44_0();
    __swift_storeEnumTagSinglePayload(v209, v210, v211, v207);
    v212 = v885;
    v213 = v863;
    *(v863 + *(v885 + 28)) = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_2_51((v213 + v212[10]));
    _s10OmniSearch0B10ResultItemOWOcTm_3();
    v214 = type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for CSSearchableItem, 0x277CC34B0);
    lazy protocol witness table accessor for type CSSearchableItem and conformance NSObject();
    v215 = v204;
    OUTLINED_FUNCTION_47_11();
    CodableNSSecureCoding.init(wrappedValue:)();
    outlined init with copy of EagerResolutionService?();
    v216 = OUTLINED_FUNCTION_159_2();
    OUTLINED_FUNCTION_166(v216, v217, v207);
    if (v317)
    {
      OUTLINED_FUNCTION_33_13();
      outlined destroy of IntentApplication?(v218, v219, v220);
      OUTLINED_FUNCTION_3_49();
      OUTLINED_FUNCTION_19_18();
      OUTLINED_FUNCTION_165_4();
      OUTLINED_FUNCTION_33_13();
      outlined destroy of IntentApplication?(v221, v222, v223);
      OUTLINED_FUNCTION_3_35();
      _s10OmniSearch0B10ResultItemOWOhTm_8(v21, v224);
      OUTLINED_FUNCTION_4_4();
      v225(v876, v878);
    }

    else
    {

      outlined destroy of IntentApplication?(v22, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
      OUTLINED_FUNCTION_3_35();
      _s10OmniSearch0B10ResultItemOWOhTm_8(v21, v283);
      OUTLINED_FUNCTION_4_4();
      v284(v876, v878);
      v285 = *(v884 + 32);
      OUTLINED_FUNCTION_48_12(&v882);
      OUTLINED_FUNCTION_144_9();
      v285();
      (v285)(v213 + v212[5], v214, v207);
    }

    v23 = v212;
    *(v213 + v212[8]) = 1;
    *(v213 + v212[9]) = 1;
    v282 = v213;
    goto LABEL_153;
  }

  OUTLINED_FUNCTION_192_7();
  static UTType.emailMessage.getter();
  v247 = CSSearchableItem.isContentType(_:)(v175);
  v248 = *(v112 + 8);
  v249 = v870;
  v248(v175, v870);
  v250 = v884;
  v23 = v885;
  if (v247)
  {
    v251 = v882;
    v252 = v886;
    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_1_31();
      swift_once();
    }

    v253 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v253, static Logging.search);
    v254 = v28;
    v255 = v252;
    v256 = v254;
    v257 = v255;
    v258 = v256;
    v259 = v257;
    swift_bridgeObjectRetain_n();
    v260 = v258;
    v261 = v259;
    v262 = Logger.logObject.getter();
    v263 = static os_log_type_t.debug.getter();
    v264 = os_log_type_enabled(v262, v263);
    v887 = v261;
    if (v264)
    {
      LODWORD(v886) = v263;
      v265 = swift_slowAlloc();
      v889[1] = swift_slowAlloc();
      *v265 = 136316163;

      v266 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v265 + 4) = v266;
      v267 = swift_bridgeObjectRelease_n();
      *(v265 + 12) = 2085;
      v890 = CSSearchableItem.oms_emailBody.getter(v267);
      v891 = v268;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
      String.init<A>(describing:)();
      v269 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v265 + 14) = v269;

      *(v265 + 22) = 2085;
      v890 = CSSearchableItem.oms_emailSubject.getter(v270);
      v891 = v271;
      String.init<A>(describing:)();
      v272 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v265 + 24) = v272;

      *(v265 + 32) = 2085;
      v273 = outlined bridged method (pb) of @objc CSSearchableItemAttributeSet.authorNames.getter(v261, &selRef_authorNames);
      if (v273)
      {
        v890 = v273;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        lazy protocol witness table accessor for type [String] and conformance [A]();
        OUTLINED_FUNCTION_188_6();
        BidirectionalCollection<>.joined(separator:)();
      }

      v349 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v265 + 34) = v349;
      v350 = v887;

      *(v265 + 42) = 2085;
      v351 = outlined bridged method (pb) of @objc CSSearchableItemAttributeSet.authorNames.getter(v350, &selRef_recipientNames);
      if (v351)
      {
        v890 = v351;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        lazy protocol witness table accessor for type [String] and conformance [A]();
        OUTLINED_FUNCTION_188_6();
        BidirectionalCollection<>.joined(separator:)();
        OUTLINED_FUNCTION_140_2();
      }

      v250 = v884;
      v23 = v885;
      OUTLINED_FUNCTION_94();
      v361 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v265 + 44) = v361;
      v362 = v887;

      _os_log_impl(&dword_25D85C000, v262, v886, "Email (bundleID: %s) found: %{sensitive}s, subject: %{sensitive}s, authors:%{sensitive}s, recipients: %{sensitive}s", v265, 0x34u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_37_0();

      v294 = v882;
      OUTLINED_FUNCTION_187_5();
    }

    else
    {

      swift_bridgeObjectRelease_n();
      OUTLINED_FUNCTION_187_5();
      v294 = v251;
    }

    v363 = v260;
    EmailDocument.init(from:)(v363, v364, v365, v366, v367, v368, v369, v370, v806[0], v806[1], v806[2], v806[3], v806[4], v807, v808, v809, v810, v811, v812, v813);
    v371 = OUTLINED_FUNCTION_30_5();
    v372(v371);
    swift_storeEnumTagMultiPayload();
    v373 = v853[1];
    OUTLINED_FUNCTION_81_17();
    v374();
    OUTLINED_FUNCTION_44_0();
    __swift_storeEnumTagSinglePayload(v375, v376, v377, v294);
    v378 = v854;
    *(v854 + *(v23 + 28)) = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_2_51((v378 + *(v23 + 40)));
    OUTLINED_FUNCTION_48_3();
    _s10OmniSearch0B10ResultItemOWOcTm_3();
    v379 = *(v23 + 24);
    type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for CSSearchableItem, 0x277CC34B0);
    lazy protocol witness table accessor for type CSSearchableItem and conformance NSObject();
    v380 = v363;
    CodableNSSecureCoding.init(wrappedValue:)();
    OUTLINED_FUNCTION_170_5();
    v381 = OUTLINED_FUNCTION_159_2();
    OUTLINED_FUNCTION_166(v381, v382, v294);
    if (v317)
    {
      v363 = &_s15OmniSearchTypes20SpotlightRankingItemVSgMd;
      OUTLINED_FUNCTION_47_11();
      outlined destroy of IntentApplication?(v383, v384, v385);
      OUTLINED_FUNCTION_129_11();
      OUTLINED_FUNCTION_129_11();
      OUTLINED_FUNCTION_129_11();
      OUTLINED_FUNCTION_129_11();
      OUTLINED_FUNCTION_129_11();
      LOBYTE(v890) = 1;
      OUTLINED_FUNCTION_17_32();
      OUTLINED_FUNCTION_19_18();

      OUTLINED_FUNCTION_47_11();
      outlined destroy of IntentApplication?(v386, v387, v388);
      OUTLINED_FUNCTION_3_35();
      _s10OmniSearch0B10ResultItemOWOhTm_8(v865, v389);
      OUTLINED_FUNCTION_4_4();
      v390 = OUTLINED_FUNCTION_183_5();
      v391(v390);
    }

    else
    {

      outlined destroy of IntentApplication?(v373, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
      OUTLINED_FUNCTION_3_35();
      _s10OmniSearch0B10ResultItemOWOhTm_8(v865, v392);
      OUTLINED_FUNCTION_4_4();
      v393 = OUTLINED_FUNCTION_183_5();
      v394(v393);
      v395 = *(v250 + 32);
      v396 = OUTLINED_FUNCTION_48_12(&v868);
      (v395)(v396, v379, v294);
      OUTLINED_FUNCTION_47_11();
      v395();
    }

    OUTLINED_FUNCTION_136_10();
    *(v378 + v397) = v363;
    *(v378 + *(v23 + 36)) = v363;
    v282 = v378;
    goto LABEL_153;
  }

  static UTType.message.getter();
  v286 = CSSearchableItem.isContentType(_:)(v175);
  v248(v175, v249);
  v287 = v886;
  if (v286)
  {
    v288 = [v28 uniqueIdentifier];
    v875 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v290 = v289;

    v291 = [v287 attributeForKey_];
    v292 = v28;
    v293 = v287;
    if (v291)
    {
      OUTLINED_FUNCTION_168_5(v291);
      swift_unknownObjectRelease();
    }

    else
    {
      OUTLINED_FUNCTION_44_21();
    }

    OUTLINED_FUNCTION_16_31();
    if (v352)
    {
      v353 = OUTLINED_FUNCTION_49_18();
      OUTLINED_FUNCTION_222_3(v353, v354, v355, v356);
      OUTLINED_FUNCTION_131_7();
      if (v357)
      {
        v358 = 0;
      }

      v874 = v358;
      if (v357)
      {
        v360 = 0;
      }

      else
      {
        v360 = v359;
      }
    }

    else
    {
      outlined destroy of IntentApplication?(&v890, &_sypSgMd, &_sypSgMR);
      v874 = 0;
      v360 = 0;
    }

    v398 = [v287 attributeForKey_];
    if (v398)
    {
      OUTLINED_FUNCTION_168_5(v398);
      swift_unknownObjectRelease();
    }

    else
    {
      OUTLINED_FUNCTION_44_21();
    }

    OUTLINED_FUNCTION_16_31();
    if (v399)
    {
      v400 = OUTLINED_FUNCTION_49_18();
      OUTLINED_FUNCTION_222_3(v400, v401, v402, v403);
      OUTLINED_FUNCTION_131_7();
      if (v404)
      {
        v405 = 0;
      }

      v873 = v405;
      if (v404)
      {
        v407 = 0;
      }

      else
      {
        v407 = v406;
      }
    }

    else
    {
      outlined destroy of IntentApplication?(&v890, &_sypSgMd, &_sypSgMR);
      v873 = 0;
      v407 = 0;
    }

    v872 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v287, &selRef_displayName);
    v870 = v408;
    v869 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v287, &selRef_contentSnippet);
    v868 = v409;
    v410 = outlined bridged method (pb) of @objc CSSearchableItemAttributeSet.authorNames.getter(v287, &selRef_authorNames);
    v411 = MEMORY[0x277D84F90];
    if (v410)
    {
      v411 = v410;
    }

    v878 = v411;
    v412 = [v287 attributeForKey_];
    if (v412)
    {
      OUTLINED_FUNCTION_168_5(v412);
      swift_unknownObjectRelease();
    }

    else
    {
      OUTLINED_FUNCTION_44_21();
    }

    OUTLINED_FUNCTION_16_31();
    if (v413)
    {
      v414 = OUTLINED_FUNCTION_49_18();
      v418 = OUTLINED_FUNCTION_222_3(v414, v415, v416, v417);
      v419 = v888;
      if (!v418)
      {
        v419 = 2;
      }
    }

    else
    {
      outlined destroy of IntentApplication?(&v890, &_sypSgMd, &_sypSgMR);
      v419 = 2;
    }

    LODWORD(v877) = v419;
    v420 = v856;
    v421 = v861;
    v422 = outlined bridged method (pb) of @objc CSSearchableItemAttributeSet.authorNames.getter(v293, &selRef_recipientNames);
    v423 = MEMORY[0x277D84F90];
    if (v422)
    {
      v423 = v422;
    }

    v867 = v423;
    v424 = [v293 contentCreationDate];
    if (v424)
    {
      v425 = v424;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v426 = 0;
    }

    else
    {
      v426 = 1;
    }

    v427 = type metadata accessor for Date();
    v428 = 1;
    __swift_storeEnumTagSinglePayload(v420, v426, 1, v427);
    v429 = [v293 URL];
    if (v429)
    {
      v430 = v429;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v428 = 0;
    }

    v431 = type metadata accessor for URL();
    __swift_storeEnumTagSinglePayload(v421, v428, 1, v431);
    v432 = type metadata accessor for DataDetectorResults();
    OUTLINED_FUNCTION_10_24(v862, v433, v434, v432);
    v435 = type metadata accessor for PartialExtractedAttributes();
    OUTLINED_FUNCTION_10_24(v857[1], v436, v437, v435);
    type metadata accessor for FeatureFlagService();
    v866 = swift_allocObject();
    v438 = one-time initialization token for search;
    v439 = v292;

    if (v438 != -1)
    {
      OUTLINED_FUNCTION_1_31();
      swift_once();
    }

    v876 = v290;
    v440 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_200(v440, static Logging.search);
    v441 = Logger.logObject.getter();
    v442 = static os_log_type_t.info.getter();
    v443 = os_log_type_enabled(v441, v442);
    v879 = v407;
    if (v443)
    {
      v407 = OUTLINED_FUNCTION_172();
      *v407 = 0;
      _os_log_impl(&dword_25D85C000, v441, v442, "MobileSMSDocument: chatParticipants set from both 'from' and 'to' as there's no chatParticipants passed-in", v407, 2u);
      OUTLINED_FUNCTION_13_18();
    }

    v444 = v439;
    v445 = Logger.logObject.getter();
    v446 = static os_log_type_t.info.getter();
    v447 = os_log_type_enabled(v445, v446);
    v887 = v360;
    if (v447)
    {
      OUTLINED_FUNCTION_51_0();
      v448 = v438;
      v449 = OUTLINED_FUNCTION_94_10();
      v890 = v449;
      *v407 = 136315138;
      v450 = [v444 attributeSet];
      CSSearchableItemAttributeSet.keyStrings.getter();
      v452 = v451;

      MEMORY[0x25F89F8A0](v452, MEMORY[0x277D837D0]);

      OUTLINED_FUNCTION_88_10();
      v453 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v407 + 4) = v453;
      OUTLINED_FUNCTION_217_4(&dword_25D85C000, v454, v455, "MobileSMSDocument: parsing attribute keys: %s");
      __swift_destroy_boxed_opaque_existential_1Tm(v449);
      v438 = v448;
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_13_18();
    }

    v456 = v444;
    v865 = v438;
    v457 = Logger.logObject.getter();
    v458 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v457, v458))
    {
      OUTLINED_FUNCTION_51_0();
      v459 = OUTLINED_FUNCTION_94_10();
      OUTLINED_FUNCTION_99_10(v459);
      *v407 = 136642819;
      v460 = [v456 attributeSet];
      CSSearchableItemAttributeSet.kvStrings.getter();
      v462 = v461;

      v463 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SStMd, &_sSS_SStMR);
      MEMORY[0x25F89F8A0](v462, v463);

      OUTLINED_FUNCTION_88_10();
      v464 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v407 + 4) = v464;
      OUTLINED_FUNCTION_164_5(&dword_25D85C000, v465, v458, "MobileSMSDocument: parsing attributes: %{sensitive}s");
      __swift_destroy_boxed_opaque_existential_1Tm(v446);
      OUTLINED_FUNCTION_37_0();
      OUTLINED_FUNCTION_13_18();
    }

    else
    {
    }

    outlined init with copy of EagerResolutionService?();
    outlined init with copy of EagerResolutionService?();
    v890 = static LLMFormatter.formatMessageSenderNames(names:isFromMe:)(v878, v877 & 1);
    v466 = v867;

    specialized Array.append<A>(contentsOf:)(v467);
    v864 = v890;
    outlined init with copy of EagerResolutionService?();
    OUTLINED_FUNCTION_48_12(v889);
    OUTLINED_FUNCTION_170_5();
    v468 = v456;
    v469 = v866;

    OUTLINED_FUNCTION_76_9();
    PreExtractedCard.init(item:featureFlagService:)(v468, v469, v470);
    v471 = v468;

    PreExtractedContact.init(item:featureFlagService:)(v471, v469, v851[1]);
    v472 = v471;
    PreExtractedSharedLink.init(item:)(v472, v851[2]);
    v473 = v472;

    OUTLINED_FUNCTION_194_5();
    PreExtractedBreadcrumb.init(item:featureFlagService:)(v473, v469);
    v474 = v859;
    MobileSMSDocument.init(id:chatId:displayName:body:from:isFromMe:to:date:contentURL:photoAttachments:serviceName:chatName:chatParticipants:chatMessages:dataDetectorResults:extractedEventsLLMConsumableDescription:partialExtractedAttributes:preExtractedCard:preExtractedContact:preExtractedSharedLink:preExtractedBreadcrumb:)(v875, v876, v874, v887, v872, v870, v869, v868, v878, v877, v466, v855, v857[0], MEMORY[0x277D84F90], v873, v879, 0, 0, v864, MEMORY[0x277D84F90]);
    v878 = v473;

    outlined destroy of IntentApplication?(&v890, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMd, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMR);
    outlined destroy of IntentApplication?(v862, &_s15OmniSearchTypes19DataDetectorResultsVSgMd, &_s15OmniSearchTypes19DataDetectorResultsVSgMR);
    outlined destroy of IntentApplication?(v861, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    outlined destroy of IntentApplication?(v856, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v475 = v860;
    v476 = *(v860 + 16);
    v477 = v852;
    v478 = v806[0];
    v476(v852, v474, v806[0]);
    v479 = Logger.logObject.getter();
    v480 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_91_0(v480))
    {
      v481 = swift_slowAlloc();
      v890 = swift_slowAlloc();
      *v481 = 136315395;
      *(v481 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
      *(v481 + 12) = 2085;
      v482 = OUTLINED_FUNCTION_64_0();
      (v476)(v482);
      String.init<A>(describing:)();
      v483 = v476;
      v23 = v478;
      v484 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v481 + 14) = v484;

      v887 = *(v860 + 8);
      (v887)(v852, v478);
      _os_log_impl(&dword_25D85C000, v479, v480, "%s Created MobileSMSDocument: %{sensitive}s", v481, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_42_0();
    }

    else
    {

      v485 = v475;
      v483 = v476;
      v23 = v478;
      v887 = *(v485 + 8);
      (v887)(v477, v478);
    }

    v486 = v882;
    OUTLINED_FUNCTION_193_5(&v871);
    OUTLINED_FUNCTION_144_9();
    v483();
    OUTLINED_FUNCTION_203_4();
    swift_storeEnumTagMultiPayload();
    v487 = v884;
    v488 = OUTLINED_FUNCTION_75_15();
    v489(v488);
    OUTLINED_FUNCTION_44_0();
    OUTLINED_FUNCTION_103_13(v490, v491, v492, v486);
    v493 = v851[0];
    *(v851[0] + v494) = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_2_51((v493 + *(v23 + 40)));
    _s10OmniSearch0B10ResultItemOWOcTm_3();
    type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for CSSearchableItem, 0x277CC34B0);
    LOBYTE(v28) = lazy protocol witness table accessor for type CSSearchableItem and conformance NSObject();
    v495 = v878;
    OUTLINED_FUNCTION_33_13();
    CodableNSSecureCoding.init(wrappedValue:)();
    v496 = v850[4];
    outlined init with copy of EagerResolutionService?();
    OUTLINED_FUNCTION_166(v496, 1, v486);
    if (v317)
    {
      v28 = &_s15OmniSearchTypes20SpotlightRankingItemVSgMR;
      OUTLINED_FUNCTION_33_13();
      outlined destroy of IntentApplication?(v497, v498, v499);
      OUTLINED_FUNCTION_8_37();
      OUTLINED_FUNCTION_19_18();
      OUTLINED_FUNCTION_165_4();
      OUTLINED_FUNCTION_33_13();
      outlined destroy of IntentApplication?(v500, v501, v502);
      OUTLINED_FUNCTION_3_35();
      _s10OmniSearch0B10ResultItemOWOhTm_8(v478, v503);
      v504 = OUTLINED_FUNCTION_89_15();
      v505(v504);
    }

    else
    {

      outlined destroy of IntentApplication?(v483, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
      OUTLINED_FUNCTION_3_35();
      _s10OmniSearch0B10ResultItemOWOhTm_8(v478, v506);
      v507 = OUTLINED_FUNCTION_89_15();
      v508(v507);
      v509 = *(v487 + 32);
      v510 = OUTLINED_FUNCTION_48_12(&v864);
      v509(v510, v496, v486);
      v511 = OUTLINED_FUNCTION_118_8();
      (v509)(v511);
    }

    goto LABEL_152;
  }

  static UTType.calendarEvent.getter();
  v295 = CSSearchableItem.isContentType(_:)(v175);
  v248(v175, v249);
  v858 = v28;
  if ((v295 & 1) == 0)
  {
    outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v287, &selRef_contentType);
    if (!v313)
    {
      goto LABEL_45;
    }

    OUTLINED_FUNCTION_148_8();
    v317 = v316 == 0xD00000000000001FLL && v314 == v315;
    if (v317)
    {
    }

    else
    {
      OUTLINED_FUNCTION_171_5();
      OUTLINED_FUNCTION_174_5();
      if ((v28 & 1) == 0)
      {
LABEL_45:

        v318 = v869;
        static UTType.contact.getter();
        v319 = v858;
        v320 = v858;
        v321 = CSSearchableItem.isContentType(_:)(v318);
        v322 = v870;
        v248(v318, v870);
        if (v321)
        {
          v323 = [v320 uniqueIdentifier];
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          OUTLINED_FUNCTION_67_8();

          v324 = v287;
          outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v287, &selRef_displayName);
          outlined bridged method (pb) of @objc CSSearchableItemAttributeSet.authorNames.getter(v287, &selRef_phoneNumbers);
          v325 = MEMORY[0x277D84F90];
          outlined bridged method (pb) of @objc CSSearchableItemAttributeSet.authorNames.getter(v287, &selRef_emailAddresses);
          outlined bridged method (pb) of @objc CSSearchableItemAttributeSet.authorNames.getter(v287, &selRef_authorAddresses);
          v326 = v837;
          OUTLINED_FUNCTION_88();
          Contact.init(id:name:phoneNumbers:emailAddresses:physicalAddresses:dates:birthday:)();
          OUTLINED_FUNCTION_128_9();
          v327 = OUTLINED_FUNCTION_105_12();
          v328(v327, v326, v839);
          swift_storeEnumTagMultiPayload();
          v329 = v884;
          v330 = v831[3];
          OUTLINED_FUNCTION_81_17();
          v331 = v882;
          v332();
          OUTLINED_FUNCTION_26_21();
          __swift_storeEnumTagSinglePayload(v333, v334, v335, v336);
          v337 = v885;
          v338 = v832;
          *(v832 + *(v885 + 28)) = v325;
          OUTLINED_FUNCTION_2_51((v338 + v337[10]));
          OUTLINED_FUNCTION_34_11();
          _s10OmniSearch0B10ResultItemOWOcTm_3();
          v339 = v337[6];
          type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for CSSearchableItem, 0x277CC34B0);
          lazy protocol witness table accessor for type CSSearchableItem and conformance NSObject();
          OUTLINED_FUNCTION_71_16();
          OUTLINED_FUNCTION_33_13();
          CodableNSSecureCoding.init(wrappedValue:)();
          OUTLINED_FUNCTION_170_5();
          OUTLINED_FUNCTION_28_16(v339);
          if (v317)
          {
            v319 = &_s15OmniSearchTypes20SpotlightRankingItemVSgMR;
            OUTLINED_FUNCTION_33_13();
            outlined destroy of IntentApplication?(v340, v341, v342);
            OUTLINED_FUNCTION_3_49();
            OUTLINED_FUNCTION_19_18();

            OUTLINED_FUNCTION_33_13();
            outlined destroy of IntentApplication?(v343, v344, v345);
            OUTLINED_FUNCTION_3_35();
            _s10OmniSearch0B10ResultItemOWOhTm_8(v248, v346);
            OUTLINED_FUNCTION_4_4();
            v347 = OUTLINED_FUNCTION_185_4();
            v348(v347);
          }

          else
          {

            outlined destroy of IntentApplication?(v330, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
            OUTLINED_FUNCTION_3_35();
            _s10OmniSearch0B10ResultItemOWOhTm_8(v248, v613);
            OUTLINED_FUNCTION_4_4();
            v614 = OUTLINED_FUNCTION_185_4();
            v615(v614);
            v616 = *(v329 + 32);
            v617 = OUTLINED_FUNCTION_48_12(&v844);
            v616(v617, v339, v331);
            v616(v338 + v337[5], v319, v331);
          }

          v23 = v337;
LABEL_157:
          OUTLINED_FUNCTION_136_10();
          *(v338 + v618) = v319;
          *(v338 + *(v23 + 36)) = v319;
          v282 = v338;
          goto LABEL_153;
        }

        static UTType.toDoItem.getter();
        v552 = CSSearchableItem.isContentType(_:)(v318);
        v248(v318, v322);
        v553 = v884;
        if (v552)
        {
          v554 = [v320 uniqueIdentifier];
          v883 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v887 = v555;

          v556 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v287, &selRef_title);
          v878 = v557;
          v879 = v556;
          v558 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v287, &selRef_comment);
          v559 = [v287 attributeForKey_];
          if (v559)
          {
            OUTLINED_FUNCTION_173_5(v559);
            swift_unknownObjectRelease();
          }

          else
          {
            OUTLINED_FUNCTION_44_21();
          }

          v628 = v826;
          v629 = v825;
          OUTLINED_FUNCTION_16_31();
          if (v630)
          {
            v631 = type metadata accessor for Date();
            v632 = swift_dynamicCast();
            __swift_storeEnumTagSinglePayload(v629, v632 ^ 1u, 1, v631);
            OUTLINED_FUNCTION_28_16(v629);
            if (!v317)
            {
              OUTLINED_FUNCTION_51();
              v633 = OUTLINED_FUNCTION_72_2();
              v634(v633);
              OUTLINED_FUNCTION_26_21();
              __swift_storeEnumTagSinglePayload(v635, v636, v637, v638);
              goto LABEL_181;
            }
          }

          else
          {
            outlined destroy of IntentApplication?(&v890, &_sypSgMd, &_sypSgMR);
            v631 = type metadata accessor for Date();
            OUTLINED_FUNCTION_92();
            __swift_storeEnumTagSinglePayload(v639, v640, v641, v631);
          }

          type metadata accessor for Date();
          OUTLINED_FUNCTION_92();
          __swift_storeEnumTagSinglePayload(v642, v643, v644, v631);
          OUTLINED_FUNCTION_28_16(v629);
          if (!v317)
          {
            outlined destroy of IntentApplication?(v629, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
          }

LABEL_181:
          v645 = [v287 attributeForKey_];
          if (v645)
          {
            OUTLINED_FUNCTION_173_5(v645);
            swift_unknownObjectRelease();
          }

          else
          {
            OUTLINED_FUNCTION_44_21();
          }

          OUTLINED_FUNCTION_16_31();
          if (v646)
          {
            v647 = type metadata accessor for Date();
            v648 = swift_dynamicCast();
            __swift_storeEnumTagSinglePayload(v628, v648 ^ 1u, 1, v647);
            OUTLINED_FUNCTION_28_16(v628);
            if (!v317)
            {
              OUTLINED_FUNCTION_51();
              v649 = OUTLINED_FUNCTION_32_0();
              v650(v649);
              OUTLINED_FUNCTION_26_21();
              __swift_storeEnumTagSinglePayload(v651, v652, v653, v654);
              goto LABEL_190;
            }
          }

          else
          {
            outlined destroy of IntentApplication?(&v890, &_sypSgMd, &_sypSgMR);
            v647 = type metadata accessor for Date();
            OUTLINED_FUNCTION_92();
            __swift_storeEnumTagSinglePayload(v655, v656, v657, v647);
          }

          type metadata accessor for Date();
          OUTLINED_FUNCTION_92();
          __swift_storeEnumTagSinglePayload(v658, v659, v660, v647);
          OUTLINED_FUNCTION_28_16(v628);
          if (!v317)
          {
            outlined destroy of IntentApplication?(v628, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
          }

LABEL_190:
          v661 = [v287 attributeForKey_];
          if (v661)
          {
            OUTLINED_FUNCTION_173_5(v661);
            swift_unknownObjectRelease();
          }

          else
          {
            OUTLINED_FUNCTION_44_21();
          }

          OUTLINED_FUNCTION_16_31();
          if (v662)
          {
            OUTLINED_FUNCTION_49_18();
            swift_dynamicCast();
          }

          else
          {
            outlined destroy of IntentApplication?(&v890, &_sypSgMd, &_sypSgMR);
          }

          v663 = [v287 attributeForKey_];
          if (v663)
          {
            OUTLINED_FUNCTION_173_5(v663);
            swift_unknownObjectRelease();
          }

          else
          {
            OUTLINED_FUNCTION_44_21();
          }

          OUTLINED_FUNCTION_16_31();
          if (v664)
          {
            OUTLINED_FUNCTION_49_18();
            if (swift_dynamicCast())
            {
              v23 = v888;
              v665 = v889[0];
              goto LABEL_204;
            }
          }

          else
          {
            outlined destroy of IntentApplication?(&v890, &_sypSgMd, &_sypSgMR);
          }

          v23 = 0;
          v665 = 0;
LABEL_204:
          v666 = [v886 attributeForKey_];
          if (v666)
          {
            OUTLINED_FUNCTION_173_5(v666);
            swift_unknownObjectRelease();
          }

          else
          {
            OUTLINED_FUNCTION_44_21();
          }

          v667 = v829;
          OUTLINED_FUNCTION_16_31();
          if (v668)
          {
            v669 = OUTLINED_FUNCTION_49_18();
            if (OUTLINED_FUNCTION_222_3(v669, v670, v671, v672))
            {
              v319 = v888;
              v673 = v889[0];
LABEL_212:
              v674 = [v886 URL];
              if (v674)
              {
                v675 = v674;
                static URL._unconditionallyBridgeFromObjectiveC(_:)();
              }

              v676 = type metadata accessor for URL();
              OUTLINED_FUNCTION_225_4(v667, v677, v678, v676);
              OUTLINED_FUNCTION_104_10();
              Reminder.init(id:title:note:creationDate:dueDate:dueDateIsAllDay:namedLocation:physicalAddress:url:)();
              OUTLINED_FUNCTION_42_19();
              v679 = v827;
              v680(v827, v665, v833);
              OUTLINED_FUNCTION_203_4();
              swift_storeEnumTagMultiPayload();
              OUTLINED_FUNCTION_124_13();
              OUTLINED_FUNCTION_105_12();
              OUTLINED_FUNCTION_81_17();
              v681 = v882;
              v682();
              OUTLINED_FUNCTION_44_0();
              OUTLINED_FUNCTION_103_13(v683, v684, v685, v681);
              v338 = v828;
              *(v828 + v686) = MEMORY[0x277D84F90];
              OUTLINED_FUNCTION_2_51((v338 + *(v23 + 40)));
              _s10OmniSearch0B10ResultItemOWOcTm_3();
              v687 = *(v23 + 24);
              type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for CSSearchableItem, 0x277CC34B0);
              lazy protocol witness table accessor for type CSSearchableItem and conformance NSObject();
              OUTLINED_FUNCTION_71_16();
              OUTLINED_FUNCTION_33_13();
              CodableNSSecureCoding.init(wrappedValue:)();
              OUTLINED_FUNCTION_107_8();
              outlined init with copy of EagerResolutionService?();
              v688 = OUTLINED_FUNCTION_202_5();
              OUTLINED_FUNCTION_166(v688, v689, v681);
              if (v317)
              {
                v319 = &_s15OmniSearchTypes20SpotlightRankingItemVSgMR;
                OUTLINED_FUNCTION_33_13();
                outlined destroy of IntentApplication?(v690, v691, v692);
                OUTLINED_FUNCTION_3_49();
                OUTLINED_FUNCTION_19_18();
                OUTLINED_FUNCTION_165_4();
                OUTLINED_FUNCTION_33_13();
                outlined destroy of IntentApplication?(v693, v694, v695);
                OUTLINED_FUNCTION_3_35();
                _s10OmniSearch0B10ResultItemOWOhTm_8(v679, v696);
                v697 = OUTLINED_FUNCTION_127_13();
                v698(v697);
              }

              else
              {

                outlined destroy of IntentApplication?(v673, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
                OUTLINED_FUNCTION_3_35();
                _s10OmniSearch0B10ResultItemOWOhTm_8(v679, v699);
                v700 = OUTLINED_FUNCTION_127_13();
                v701(v700);
                v702 = *(v558 + 32);
                v703 = OUTLINED_FUNCTION_48_12(&v839);
                v702(v703, v687, v681);
                v702(v338 + *(v23 + 20), v319, v681);
              }

              goto LABEL_157;
            }
          }

          else
          {
            outlined destroy of IntentApplication?(&v890, &_sypSgMd, &_sypSgMR);
          }

          v319 = 0;
          v673 = 0;
          goto LABEL_212;
        }

        v619 = v287;
        v620 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v287, &selRef_contentType);
        if (!v621)
        {
          goto LABEL_164;
        }

        if (v620 == 0xD00000000000001BLL && v621 == 0x800000025DBF6E60)
        {
        }

        else
        {
          OUTLINED_FUNCTION_171_5();
          OUTLINED_FUNCTION_174_5();
          if ((v320 & 1) == 0)
          {
LABEL_164:
            outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v287, &selRef_contentType);
            if (!v623)
            {
LABEL_170:

LABEL_173:
              v23 = v885;
              goto LABEL_155;
            }

            OUTLINED_FUNCTION_148_8();
            if (v626 == 0xD000000000000016 && v624 == v625)
            {
            }

            else
            {
              OUTLINED_FUNCTION_171_5();
              OUTLINED_FUNCTION_174_5();
              if ((v320 & 1) == 0)
              {
                goto LABEL_170;
              }
            }

            v753 = OUTLINED_FUNCTION_162_7();
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v887 = v754;

            v755 = v886;
            v883 = outlined bridged method (pb) of @objc CSSearchableItemAttributeSet.authorNames.getter(v886, &selRef_authorNames);
            v879 = outlined bridged method (pb) of @objc CSSearchableItemAttributeSet.authorNames.getter(v755, &selRef_recipientNames);
            v878 = outlined bridged method (pb) of @objc CSSearchableItemAttributeSet.authorNames.getter(v755, &selRef_participants);
            v756 = outlined bridged method (pb) of @objc CSSearchableItemAttributeSet.authorNames.getter(v755, &selRef_phoneNumbers);
            OUTLINED_FUNCTION_137_4(v756);
            v757 = MEMORY[0x25F89F4C0](0xD000000000000029, 0x800000025DBF6D30);
            v758 = [v755 attributeForKey_];

            if (v758)
            {
              _bridgeAnyObjectToAny(_:)();
              swift_unknownObjectRelease();
            }

            else
            {
              OUTLINED_FUNCTION_44_21();
            }

            v759 = v819;
            v760 = v818;
            OUTLINED_FUNCTION_16_31();
            if (v761)
            {
              OUTLINED_FUNCTION_49_18();
              swift_dynamicCast();
              OUTLINED_FUNCTION_131_7();
              if (v317)
              {
                v763 = 0;
              }

              else
              {
                v763 = v762;
              }
            }

            else
            {
              outlined destroy of IntentApplication?(&v890, &_sypSgMd, &_sypSgMR);
              v763 = 0;
            }

            v764 = [v886 contentCreationDate];
            if (v764)
            {
              v765 = v764;
              static Date._unconditionallyBridgeFromObjectiveC(_:)();

              v766 = 0;
            }

            else
            {
              v766 = 1;
            }

            v767 = type metadata accessor for Date();
            __swift_storeEnumTagSinglePayload(v759, v766, 1, v767);
            v768 = MEMORY[0x25F89F4C0](0xD00000000000001ELL, 0x800000025DBF6D60);
            v769 = [v886 attributeForKey_];

            if (v769)
            {
              _bridgeAnyObjectToAny(_:)();
              swift_unknownObjectRelease();
            }

            else
            {
              OUTLINED_FUNCTION_44_21();
            }

            OUTLINED_FUNCTION_16_31();
            if (v770)
            {
              OUTLINED_FUNCTION_49_18();
              OUTLINED_FUNCTION_25_23();
              OUTLINED_FUNCTION_131_7();
              if (v771)
              {
                v23 = 0;
              }

              else
              {
                v23 = v772;
              }

              if (v771)
              {
                v715 = 0;
              }

              else
              {
                v715 = v773;
              }
            }

            else
            {
              outlined destroy of IntentApplication?(&v890, &_sypSgMd, &_sypSgMR);
              v23 = 0;
              v715 = 0;
            }

            if ([v886 attributeForKey_])
            {
              _bridgeAnyObjectToAny(_:)();
              swift_unknownObjectRelease();
            }

            else
            {
              OUTLINED_FUNCTION_44_21();
            }

            v774 = v808;
            OUTLINED_FUNCTION_16_31();
            if (v775)
            {
              OUTLINED_FUNCTION_49_18();
              OUTLINED_FUNCTION_25_23();
              OUTLINED_FUNCTION_131_7();
            }

            else
            {
              outlined destroy of IntentApplication?(&v890, &_sypSgMd, &_sypSgMR);
            }

            v776 = [v886 URL];
            if (v776)
            {
              v777 = v776;
              static URL._unconditionallyBridgeFromObjectiveC(_:)();

              v778 = 0;
            }

            else
            {
              v778 = 1;
            }

            v779 = type metadata accessor for URL();
            __swift_storeEnumTagSinglePayload(v774, v778, 1, v779);
            OUTLINED_FUNCTION_180_5();
            OUTLINED_FUNCTION_194_5();
            PhoneHistory.init(id:authors:recipients:participants:phoneNumbers:callStatus:callDate:callType:description:url:)();
            OUTLINED_FUNCTION_42_19();
            v780(v760, v778, v820);
            swift_storeEnumTagMultiPayload();
            OUTLINED_FUNCTION_124_13();
            v781 = OUTLINED_FUNCTION_75_15();
            v782 = v882;
            v783(v781);
            OUTLINED_FUNCTION_44_0();
            OUTLINED_FUNCTION_103_13(v784, v785, v786, v782);
            v736 = v807;
            *(v807 + v787) = MEMORY[0x277D84F90];
            OUTLINED_FUNCTION_2_51((v736 + *(v23 + 40)));
            _s10OmniSearch0B10ResultItemOWOcTm_3();
            v788 = *(v23 + 24);
            type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for CSSearchableItem, 0x277CC34B0);
            lazy protocol witness table accessor for type CSSearchableItem and conformance NSObject();
            OUTLINED_FUNCTION_71_16();
            OUTLINED_FUNCTION_33_13();
            CodableNSSecureCoding.init(wrappedValue:)();
            OUTLINED_FUNCTION_107_8();
            outlined init with copy of EagerResolutionService?();
            v789 = OUTLINED_FUNCTION_202_5();
            OUTLINED_FUNCTION_166(v789, v790, v782);
            if (v317)
            {
              v715 = &_s15OmniSearchTypes20SpotlightRankingItemVSgMR;
              OUTLINED_FUNCTION_33_13();
              outlined destroy of IntentApplication?(v791, v792, v793);
              OUTLINED_FUNCTION_3_49();
              OUTLINED_FUNCTION_19_18();
              OUTLINED_FUNCTION_165_4();
              OUTLINED_FUNCTION_33_13();
              outlined destroy of IntentApplication?(v794, v795, v796);
              OUTLINED_FUNCTION_3_35();
              _s10OmniSearch0B10ResultItemOWOhTm_8(v818, v797);
              v798 = OUTLINED_FUNCTION_176_6();
              v799(v798, v820);
            }

            else
            {

              outlined destroy of IntentApplication?(v774, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
              OUTLINED_FUNCTION_3_35();
              _s10OmniSearch0B10ResultItemOWOhTm_8(v818, v800);
              v801 = OUTLINED_FUNCTION_176_6();
              v802(v801, v820);
              v803 = *(v763 + 32);
              v804 = OUTLINED_FUNCTION_48_12(&v830);
              v803(v804, v788, v782);
              v803(v736 + *(v23 + 20), v715, v782);
            }

LABEL_270:
            OUTLINED_FUNCTION_136_10();
            *(v736 + v805) = v715;
            *(v736 + *(v23 + 36)) = v715;
            v282 = v736;
            goto LABEL_153;
          }
        }

        v704 = v553;
        v705 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v287, &selRef_contentSnippet);
        v707 = v705;
        if (v706)
        {
          v890 = v705;
          v891 = v706;
          OUTLINED_FUNCTION_104_10();
          static CharacterSet.punctuationCharacters.getter();
          lazy protocol witness table accessor for type String and conformance String();
          v708 = StringProtocol.components(separatedBy:)();
          OUTLINED_FUNCTION_4_4();
          v709(v707, v813);

          specialized Collection.first.getter(v708);
          v887 = v710;
        }

        else
        {
          v887 = 0;
        }

        v711 = v822;
        v712 = OUTLINED_FUNCTION_162_7();
        v883 = static String._unconditionallyBridgeFromObjectiveC(_:)();

        v713 = outlined bridged method (pb) of @objc CSSearchableItemAttributeSet.authorNames.getter(v287, &selRef_phoneNumbers);
        if (v713)
        {
          specialized Collection.first.getter(v713);
          LOBYTE(v715) = v714;
        }

        else
        {
          LOBYTE(v715) = 0;
        }

        v716 = [v287 contentCreationDate];
        if (v716)
        {
          v717 = v716;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v718 = 0;
        }

        else
        {
          v718 = 1;
        }

        v719 = type metadata accessor for Date();
        __swift_storeEnumTagSinglePayload(v711, v718, 1, v719);
        v720 = [v619 URL];
        if (v720)
        {
          v721 = v720;
          v722 = v816;
          static URL._unconditionallyBridgeFromObjectiveC(_:)();

          v723 = v821;
        }

        else
        {
          v723 = v821;
          v722 = v816;
        }

        v724 = type metadata accessor for URL();
        OUTLINED_FUNCTION_225_4(v722, v725, v726, v724);
        v727 = v823;
        VoicemailTranscript.init(id:displayTitle:phoneNumber:date:url:)();
        OUTLINED_FUNCTION_192_7();
        (*(v728 + 16))(v723, v727, v824);
        swift_storeEnumTagMultiPayload();
        v729 = v814;
        OUTLINED_FUNCTION_81_17();
        v730 = v882;
        v731();
        OUTLINED_FUNCTION_44_0();
        __swift_storeEnumTagSinglePayload(v732, v733, v734, v730);
        v735 = v885;
        v736 = v815;
        *(v815 + *(v885 + 28)) = MEMORY[0x277D84F90];
        OUTLINED_FUNCTION_2_51((v736 + v735[10]));
        OUTLINED_FUNCTION_32_0();
        _s10OmniSearch0B10ResultItemOWOcTm_3();
        type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for CSSearchableItem, 0x277CC34B0);
        lazy protocol witness table accessor for type CSSearchableItem and conformance NSObject();
        OUTLINED_FUNCTION_71_16();
        CodableNSSecureCoding.init(wrappedValue:)();
        OUTLINED_FUNCTION_170_5();
        v737 = OUTLINED_FUNCTION_159_2();
        OUTLINED_FUNCTION_166(v737, v738, v730);
        if (v317)
        {
          v715 = &_s15OmniSearchTypes20SpotlightRankingItemVSgMR;
          OUTLINED_FUNCTION_33_13();
          outlined destroy of IntentApplication?(v739, v740, v741);
          OUTLINED_FUNCTION_3_49();
          OUTLINED_FUNCTION_19_18();

          OUTLINED_FUNCTION_33_13();
          outlined destroy of IntentApplication?(v742, v743, v744);
          OUTLINED_FUNCTION_3_35();
          _s10OmniSearch0B10ResultItemOWOhTm_8(v821, v745);
          v746 = OUTLINED_FUNCTION_139_8();
          v747(v746);
        }

        else
        {

          outlined destroy of IntentApplication?(v729, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
          OUTLINED_FUNCTION_3_35();
          _s10OmniSearch0B10ResultItemOWOhTm_8(v821, v748);
          v749 = OUTLINED_FUNCTION_139_8();
          v750(v749);
          v751 = *(v704 + 32);
          v752 = OUTLINED_FUNCTION_48_12(v831);
          (v751)(v752, v729, v730);
          OUTLINED_FUNCTION_117_8();
          v751();
        }

        v23 = v735;
        goto LABEL_270;
      }
    }

    v551 = [v287 attributeForKey_];
    if (v551)
    {
      OUTLINED_FUNCTION_168_5(v551);
      swift_unknownObjectRelease();
    }

    else
    {
      OUTLINED_FUNCTION_44_21();
    }

    OUTLINED_FUNCTION_16_31();
    if (v560)
    {
      OUTLINED_FUNCTION_49_18();
      if (OUTLINED_FUNCTION_25_23())
      {
        v562 = v888;
        v561 = v889[0];
        OUTLINED_FUNCTION_148_8();
        v564 = v562 == 0xD000000000000010 && v563 == v561;
        if (v564 || (OUTLINED_FUNCTION_119(), (OUTLINED_FUNCTION_169_7() & 1) != 0))
        {

          if (one-time initialization token for search != -1)
          {
            OUTLINED_FUNCTION_1_31();
            swift_once();
          }

          v565 = type metadata accessor for Logger();
          OUTLINED_FUNCTION_200(v565, static Logging.search);
          v566 = Logger.logObject.getter();
          v567 = static os_log_type_t.error.getter();
          if (OUTLINED_FUNCTION_91_0(v567))
          {
            OUTLINED_FUNCTION_51_0();
            v568 = OUTLINED_FUNCTION_10_23();
            v890 = v568;
            *v562 = 136315138;
            *(v562 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

            OUTLINED_FUNCTION_110_12(&dword_25D85C000, v569, v567, "Dropping recently deleted folder from %s.");
            __swift_destroy_boxed_opaque_existential_1Tm(v568);
            OUTLINED_FUNCTION_13_18();
            OUTLINED_FUNCTION_2_8();
          }

          else
          {
          }

          goto LABEL_173;
        }

        v887 = v561;

LABEL_133:
        v883 = v562;
        if (one-time initialization token for keyAttributeAppEntityTitle != -1)
        {
          OUTLINED_FUNCTION_27_22(&one-time initialization token for keyAttributeAppEntityTitle);
        }

        v570 = MEMORY[0x25F89F4C0](static LocalIndexClient.keyAttributeAppEntityTitle, *algn_27FCAFD18);
        v571 = [v287 attributeForKey_];

        if (v571)
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
        }

        else
        {
          OUTLINED_FUNCTION_44_21();
        }

        OUTLINED_FUNCTION_16_31();
        if (v572)
        {
          OUTLINED_FUNCTION_49_18();
          if (swift_dynamicCast())
          {
            v878 = v889[0];
            v879 = v888;
LABEL_143:
            v575 = OUTLINED_FUNCTION_162_7();
            v576 = static String._unconditionallyBridgeFromObjectiveC(_:)();

            outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v287, &selRef_contentSnippet);
            v577 = [v287 contentCreationDate];
            if (v577)
            {
              v28 = v577;
              static Date._unconditionallyBridgeFromObjectiveC(_:)();

              LOBYTE(v28) = 0;
            }

            else
            {
              LOBYTE(v28) = 1;
            }

            type metadata accessor for Date();
            v23 = 1;
            OUTLINED_FUNCTION_61_19();
            __swift_storeEnumTagSinglePayload(v578, v579, v580, v581);
            v582 = [v886 lastUsedDate];
            v583 = v840;
            if (v582)
            {
              v28 = v582;
              static Date._unconditionallyBridgeFromObjectiveC(_:)();

              v23 = 0;
            }

            OUTLINED_FUNCTION_61_19();
            __swift_storeEnumTagSinglePayload(v584, v585, v586, v587);
            OUTLINED_FUNCTION_180_5();
            OUTLINED_FUNCTION_194_5();
            OUTLINED_FUNCTION_64_0();
            NoteDocument.init(id:title:contentSnippet:folderName:creationDate:lastUsedDate:)();
            OUTLINED_FUNCTION_42_19();
            v588(v583, v250, v841);
            swift_storeEnumTagMultiPayload();
            OUTLINED_FUNCTION_124_13();
            v589 = OUTLINED_FUNCTION_75_15();
            v590 = v882;
            v591(v589);
            OUTLINED_FUNCTION_44_0();
            OUTLINED_FUNCTION_103_13(v592, v593, v594, v590);
            v493 = v835;
            *(v835 + v595) = MEMORY[0x277D84F90];
            OUTLINED_FUNCTION_2_51((v493 + *(v23 + 40)));
            _s10OmniSearch0B10ResultItemOWOcTm_3();
            type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for CSSearchableItem, 0x277CC34B0);
            lazy protocol witness table accessor for type CSSearchableItem and conformance NSObject();
            OUTLINED_FUNCTION_71_16();
            OUTLINED_FUNCTION_33_13();
            CodableNSSecureCoding.init(wrappedValue:)();
            v596 = v834;
            outlined init with copy of EagerResolutionService?();
            OUTLINED_FUNCTION_166(v596, 1, v590);
            if (!v317)
            {

              outlined destroy of IntentApplication?(v583, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
              OUTLINED_FUNCTION_3_35();
              _s10OmniSearch0B10ResultItemOWOhTm_8(v840, v604);
              v605 = OUTLINED_FUNCTION_176_6();
              v606(v605, v841);
              v607 = *(v576 + 32);
              OUTLINED_FUNCTION_48_12(v850);
              OUTLINED_FUNCTION_196_5();
              v607();
              v608 = OUTLINED_FUNCTION_118_8();
              (v607)(v608);
              goto LABEL_152;
            }

            v28 = &_s15OmniSearchTypes20SpotlightRankingItemVSgMR;
            OUTLINED_FUNCTION_33_13();
            outlined destroy of IntentApplication?(v597, v598, v599);
            OUTLINED_FUNCTION_3_49();
            OUTLINED_FUNCTION_19_18();
            OUTLINED_FUNCTION_165_4();
            OUTLINED_FUNCTION_33_13();
            outlined destroy of IntentApplication?(v600, v601, v602);
            OUTLINED_FUNCTION_3_35();
            _s10OmniSearch0B10ResultItemOWOhTm_8(v840, v603);
            v541 = OUTLINED_FUNCTION_176_6();
            v543 = v857;
LABEL_151:
            v542(v541, *(v543 - 32));
            goto LABEL_152;
          }
        }

        else
        {
          outlined destroy of IntentApplication?(&v890, &_sypSgMd, &_sypSgMR);
        }

        v573 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v287, &selRef_title);
        v878 = v574;
        v879 = v573;
        goto LABEL_143;
      }
    }

    else
    {
      outlined destroy of IntentApplication?(&v890, &_sypSgMd, &_sypSgMR);
    }

    v562 = 0;
    v887 = 0;
    goto LABEL_133;
  }

  v296 = v287;
  v297 = outlined bridged method (pb) of @objc CSSearchableItemAttributeSet.authorNames.getter(v287, &selRef_authorNames);
  v298 = MEMORY[0x277D84F90];
  if (v297)
  {
    v299 = v297;
  }

  else
  {
    v299 = MEMORY[0x277D84F90];
  }

  v300 = outlined bridged method (pb) of @objc CSSearchableItemAttributeSet.authorNames.getter(v287, &selRef_recipientNames);
  if (v300)
  {
    v298 = v300;
  }

  v301 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(v299);
  v302 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(v298);
  v303 = [v28 uniqueIdentifier];
  v887 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v883 = v304;

  v305 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v296, &selRef_title);
  v878 = v306;
  v879 = v305;
  v307 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v296, &selRef_contentDescription);
  OUTLINED_FUNCTION_137_4(v307);
  v876 = v308;
  v309 = [v296 startDate];
  if (v309)
  {
    v310 = v309;
    OUTLINED_FUNCTION_76_9();
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v311 = 0;
    v312 = v846;
  }

  else
  {
    v311 = 1;
    v312 = v846;
    v202 = v849;
  }

  v512 = type metadata accessor for Date();
  v513 = 1;
  __swift_storeEnumTagSinglePayload(v202, v311, 1, v512);
  v514 = [v886 endDate];
  if (v514)
  {
    v515 = v514;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v513 = 0;
  }

  __swift_storeEnumTagSinglePayload(v312, v513, 1, v512);
  v516 = v886;
  v517 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v886, &selRef_namedLocation);
  v23 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSS_ShySSGTt0g5(v301);
  _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSS_ShySSGTt0g5(v302);
  outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v516, &selRef_comment);
  OUTLINED_FUNCTION_114_7();
  CSSearchableItem.associatedAppEntityId.getter();
  type metadata accessor for DataDetectorResults();
  OUTLINED_FUNCTION_48_12(&v881);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v518, v519, v520, v521);
  OUTLINED_FUNCTION_104_10();
  CalendarEvent.init(id:title:contentDescription:startDate:endDate:locationName:organizerNames:participantNames:notes:itemAppEntityInstanceId:dataDetectorResults:)();
  OUTLINED_FUNCTION_42_19();
  v522 = v842;
  v523(v842, v517, v850[2]);
  OUTLINED_FUNCTION_203_4();
  swift_storeEnumTagMultiPayload();
  v524 = v884;
  OUTLINED_FUNCTION_105_12();
  OUTLINED_FUNCTION_81_17();
  v525 = v882;
  v526();
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_103_13(v527, v528, v529, v525);
  v493 = v845;
  *(v845 + v530) = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_2_51((v493 + *(v23 + 40)));
  _s10OmniSearch0B10ResultItemOWOcTm_3();
  v531 = *(v23 + 24);
  type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for CSSearchableItem, 0x277CC34B0);
  lazy protocol witness table accessor for type CSSearchableItem and conformance NSObject();
  OUTLINED_FUNCTION_71_16();
  OUTLINED_FUNCTION_33_13();
  CodableNSSecureCoding.init(wrappedValue:)();
  OUTLINED_FUNCTION_170_5();
  v532 = OUTLINED_FUNCTION_159_2();
  OUTLINED_FUNCTION_166(v532, v533, v525);
  if (v317)
  {
    v28 = &_s15OmniSearchTypes20SpotlightRankingItemVSgMR;
    OUTLINED_FUNCTION_33_13();
    outlined destroy of IntentApplication?(v534, v535, v536);
    OUTLINED_FUNCTION_3_49();
    OUTLINED_FUNCTION_19_18();
    OUTLINED_FUNCTION_165_4();
    OUTLINED_FUNCTION_33_13();
    outlined destroy of IntentApplication?(v537, v538, v539);
    OUTLINED_FUNCTION_3_35();
    _s10OmniSearch0B10ResultItemOWOhTm_8(v522, v540);
    v541 = OUTLINED_FUNCTION_177_6();
    goto LABEL_151;
  }

  outlined destroy of IntentApplication?(v298, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
  OUTLINED_FUNCTION_3_35();
  _s10OmniSearch0B10ResultItemOWOhTm_8(v522, v544);
  v545 = OUTLINED_FUNCTION_177_6();
  v547(v545, *(v546 - 256));
  v548 = *(v524 + 32);
  v549 = OUTLINED_FUNCTION_48_12(v853);
  v548(v549, v531, v525);
  v550 = OUTLINED_FUNCTION_118_8();
  (v548)(v550);
LABEL_152:
  OUTLINED_FUNCTION_136_10();
  *(v493 + v609) = v28;
  *(v493 + *(v23 + 36)) = v28;
  v282 = v493;
LABEL_153:
  v280 = v881;
LABEL_154:
  outlined init with take of SearchResult(v282, v280);
LABEL_155:
  v610 = OUTLINED_FUNCTION_102_9();
  __swift_storeEnumTagSinglePayload(v610, v611, v612, v23);
  OUTLINED_FUNCTION_148();
}

uint64_t static LocalIndexClient.handleSelectFirstPartyItems(_:spotlightRankingItem:eventSourceItemsMap:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v331 = a4;
  v332 = a3;
  v334 = a1;
  v6 = type metadata accessor for FileDocument();
  v7 = OUTLINED_FUNCTION_1_5(v6, &v330);
  v310 = v8;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_15_4(v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_114(v10);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_49_3();
  OUTLINED_FUNCTION_28_2(v12);
  v13 = type metadata accessor for VoiceMemo();
  v14 = OUTLINED_FUNCTION_1_5(v13, &v338);
  v316 = v15;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_28_2(v16);
  v17 = type metadata accessor for Safari();
  v18 = OUTLINED_FUNCTION_1_5(v17, &v342);
  v322 = v19;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_28_2(v20);
  v330 = type metadata accessor for SpotlightRankingItem();
  OUTLINED_FUNCTION_14();
  v328 = v21;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_14_2();
  v28 = OUTLINED_FUNCTION_28_2(v27);
  v327[2] = type metadata accessor for SearchResultItem(v28);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_15_4(v34);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v36 = OUTLINED_FUNCTION_114(v35);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_28_2(v40);
  v41 = type metadata accessor for JournalEntry();
  v42 = OUTLINED_FUNCTION_1_5(v41, &v343);
  v327[0] = v43;
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_28_2(v44);
  v45 = type metadata accessor for CharacterSet();
  OUTLINED_FUNCTION_14();
  v323 = v46;
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_36();
  v50 = v49 - v48;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
  v52 = OUTLINED_FUNCTION_114(v51);
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_109();
  v55 = v53 - v54;
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v65);
  v67 = &v300 - v66;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  OUTLINED_FUNCTION_114(v68);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v69);
  v71 = &v300 - v70;
  v333 = type metadata accessor for SearchResult(0);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_109();
  v75 = v73 - v74;
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_78_16();
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_7_4();
  v329 = v80;
  OUTLINED_FUNCTION_174();
  *&v82 = MEMORY[0x28223BE20](v81).n128_u64[0];
  v84 = &v300 - v83;
  v335 = [a2 attributeSet];
  v336 = a2;
  v85 = outlined bridged method (pb) of @objc CSSearchableItem.bundleID.getter(a2);
  if (v86)
  {
    v87 = v85;
  }

  else
  {
    v87 = 0;
  }

  if (v86)
  {
    v88 = v86;
  }

  else
  {
    v88 = 0xE000000000000000;
  }

  v89 = v87 == 0xD00000000000001ALL && 0x800000025DBEE6C0 == v88;
  if (v89 || (OUTLINED_FUNCTION_69_14() & 1) != 0)
  {

    preExtractedSearchResult(from:spotlightRankingItem:eventSourceItemsMap:)(v336, v332, v331, v90, v91, v92, v93, v94, v300, v301, v302, v303, v304, v305, v306, v307, v308, v309, v310, v311);

    v95 = v333;
    OUTLINED_FUNCTION_166(v71, 1, v333);
    if (!v89)
    {
      outlined init with take of SearchResult(v71, v84);
      outlined init with take of SearchResult(v84, v334);
      v99 = 1;
LABEL_16:
      OUTLINED_FUNCTION_44_0();
      v103 = v95;
LABEL_17:
      __swift_storeEnumTagSinglePayload(v100, v101, v102, v103);
      return v99;
    }

    outlined destroy of IntentApplication?(v71, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
    goto LABEL_15;
  }

  v104 = 0xD000000000000011;
  v105 = v87 == 0xD000000000000012 && 0x800000025DBF1E30 == v88;
  if (v105 || (OUTLINED_FUNCTION_69_14() & 1) != 0)
  {

    v99 = 1;
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v106, v107, v108, v330);
    static LocalIndexClient.walletDocument(from:spotlightRankingItem:)(v336, v67, v109, v110, v111, v112, v113, v114, v300, v301, v302, v303, v304, v305, v306, v307, v308, v309, v310, v311);

    outlined destroy of IntentApplication?(v67, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
    return v99;
  }

  v116 = v87 == 0xD000000000000011 && 0x800000025DBF1D90 == v88;
  v117 = v335;
  if (v116 || (OUTLINED_FUNCTION_69_14() & 1) != 0)
  {

    if ([v117 attributeForKey_])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v338 = 0u;
      v339 = 0u;
    }

    v118 = v329;
    v340[0] = v338;
    v340[1] = v339;
    if (*(&v339 + 1))
    {
      if (OUTLINED_FUNCTION_25_23())
      {
        v119 = v337;
        v340[0] = v337;

        static CharacterSet.punctuationCharacters.getter();
        lazy protocol witness table accessor for type String and conformance String();
        v120 = StringProtocol.components(separatedBy:)();
        OUTLINED_FUNCTION_4_4();
        v121(v50, v45);

        if (*(v120 + 16))
        {
        }

        goto LABEL_40;
      }
    }

    else
    {
      outlined destroy of IntentApplication?(v340, &_sypSgMd, &_sypSgMR);
    }

    v119 = 0;
LABEL_40:
    v122 = v330;
    v123 = [v336 uniqueIdentifier];
    v124 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    v125 = [v117 URL];
    if (v125)
    {
      v126 = v125;
      v127 = v326;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v128 = 0;
    }

    else
    {
      v128 = 1;
      v127 = v326;
    }

    v129 = type metadata accessor for URL();
    OUTLINED_FUNCTION_225_4(v127, v130, v131, v129);
    OUTLINED_FUNCTION_192_7();
    OUTLINED_FUNCTION_64_0();
    OUTLINED_FUNCTION_50_9();
    JournalEntry.init(id:displayTitle:text:url:)();
    v132 = v327[1];
    v133 = OUTLINED_FUNCTION_63_0();
    v134(v133);
    OUTLINED_FUNCTION_140_8();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_76_9();
    v135 = OUTLINED_FUNCTION_105_12();
    v136(v135, v332, v122);
    OUTLINED_FUNCTION_44_0();
    __swift_storeEnumTagSinglePayload(v137, v138, v139, v122);
    v140 = v333;
    *(v118 + v333[7]) = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_2_51((v118 + v140[10]));
    OUTLINED_FUNCTION_48_3();
    _s10OmniSearch0B10ResultItemOWOcTm_3();
    type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for CSSearchableItem, 0x277CC34B0);
    lazy protocol witness table accessor for type CSSearchableItem and conformance NSObject();
    OUTLINED_FUNCTION_226_2();
    v141 = v329;
    OUTLINED_FUNCTION_33_13();
    CodableNSSecureCoding.init(wrappedValue:)();
    OUTLINED_FUNCTION_107_8();
    outlined init with copy of EagerResolutionService?();
    v142 = OUTLINED_FUNCTION_202_5();
    OUTLINED_FUNCTION_166(v142, v143, v122);
    if (v89)
    {
      OUTLINED_FUNCTION_33_13();
      outlined destroy of IntentApplication?(v144, v145, v146);
      OUTLINED_FUNCTION_7_39();
      OUTLINED_FUNCTION_19_18();

      OUTLINED_FUNCTION_33_13();
      outlined destroy of IntentApplication?(v147, v148, v149);
      OUTLINED_FUNCTION_3_35();
      _s10OmniSearch0B10ResultItemOWOhTm_8(v132, v150);
      v151 = OUTLINED_FUNCTION_138_4();
      v152(v151);
LABEL_47:
      v99 = 1;
      *(v141 + v140[8]) = 1;
      *(v141 + v140[9]) = 1;
      v158 = v141;
LABEL_48:
      outlined init with take of SearchResult(v158, v334);
      OUTLINED_FUNCTION_44_0();
      v103 = v140;
      goto LABEL_17;
    }

    outlined destroy of IntentApplication?(v119, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
    OUTLINED_FUNCTION_3_35();
    _s10OmniSearch0B10ResultItemOWOhTm_8(v132, v153);
    v154 = OUTLINED_FUNCTION_138_4();
    v155(v154);
    v156 = *(v124 + 32);
    v157 = OUTLINED_FUNCTION_48_12(&v341);
    (v156)(v157, v128, v122);
    OUTLINED_FUNCTION_204_6();
LABEL_46:
    v156();
    goto LABEL_47;
  }

  v159 = v87 == 0xD000000000000016 && 0x800000025DBF1E50 == v88;
  if (v159 || (OUTLINED_FUNCTION_69_14() & 1) != 0)
  {

    v160 = [v336 uniqueIdentifier];
    v331 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v162 = v161;

    v163 = CSSearchableItem.title.getter();
    v164 = [v117 contentURL];
    if (v164)
    {
      v165 = v164;
      OUTLINED_FUNCTION_104_10();
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      type metadata accessor for URL();
    }

    else
    {
      type metadata accessor for URL();
      v104 = v324;
    }

    v166 = 1;
    v167 = OUTLINED_FUNCTION_102_9();
    __swift_storeEnumTagSinglePayload(v167, v168, v169, v170);
    outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v117, &selRef_contentSnippet);
    outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v117, &selRef_contentType);
    v171 = [v117 URL];
    if (v171)
    {
      v172 = v171;
      OUTLINED_FUNCTION_104_10();
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v166 = 0;
    }

    else
    {
      v104 = v318;
    }

    v173 = type metadata accessor for URL();
    __swift_storeEnumTagSinglePayload(v104, v166, 1, v173);
    OUTLINED_FUNCTION_104_10();
    OUTLINED_FUNCTION_103_10();
    Safari.init(id:websiteTitle:websiteUrl:body:contentType:url:)();
    OUTLINED_FUNCTION_42_19();
    v174 = v321;
    v175(v321, v104, v325);
    OUTLINED_FUNCTION_140_8();
    swift_storeEnumTagMultiPayload();
    v176 = v328;
    v177 = OUTLINED_FUNCTION_105_12();
    v178 = v330;
    v179(v177, v332, v330);
    OUTLINED_FUNCTION_44_0();
    __swift_storeEnumTagSinglePayload(v180, v181, v182, v178);
    v140 = v333;
    v183 = v320;
    *(v320 + v333[7]) = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_2_51((v183 + v140[10]));
    _s10OmniSearch0B10ResultItemOWOcTm_3();
    type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for CSSearchableItem, 0x277CC34B0);
    lazy protocol witness table accessor for type CSSearchableItem and conformance NSObject();
    OUTLINED_FUNCTION_226_2();
    OUTLINED_FUNCTION_33_13();
    CodableNSSecureCoding.init(wrappedValue:)();
    v184 = v319;
    outlined init with copy of EagerResolutionService?();
    v185 = OUTLINED_FUNCTION_90_9();
    OUTLINED_FUNCTION_166(v185, v186, v178);
    if (v89)
    {
      OUTLINED_FUNCTION_33_13();
      outlined destroy of IntentApplication?(v187, v188, v189);
      OUTLINED_FUNCTION_7_39();
      OUTLINED_FUNCTION_19_18();

      OUTLINED_FUNCTION_33_13();
      outlined destroy of IntentApplication?(v190, v191, v192);
      OUTLINED_FUNCTION_3_35();
      _s10OmniSearch0B10ResultItemOWOhTm_8(v174, v193);
      v194 = OUTLINED_FUNCTION_126_12();
      v195(v194);
    }

    else
    {

      outlined destroy of IntentApplication?(v162, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
      OUTLINED_FUNCTION_3_35();
      _s10OmniSearch0B10ResultItemOWOhTm_8(v174, v196);
      v197 = OUTLINED_FUNCTION_126_12();
      v198(v197);
      v199 = *(v176 + 32);
      v200 = OUTLINED_FUNCTION_48_12(&v336);
      v199(v200, v184, v178);
      v199(v183 + v140[5], v163, v178);
    }

    v99 = 1;
    *(v183 + v140[8]) = 1;
    *(v183 + v140[9]) = 1;
    v158 = v183;
    goto LABEL_48;
  }

  v201 = v87 == 0xD000000000000014 && 0x800000025DBF1D30 == v88;
  v202 = v330;
  if (v201 || (OUTLINED_FUNCTION_69_14() & 1) != 0)
  {

    v203 = [v336 uniqueIdentifier];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_140_2();

    outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v117, &selRef_displayName);
    OUTLINED_FUNCTION_114_7();
    v204 = [v117 contentCreationDate];
    if (v204)
    {
      v205 = v204;
      v206 = v315;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v207 = type metadata accessor for Date();
      v208 = 0;
    }

    else
    {
      v207 = type metadata accessor for Date();
      v208 = 1;
      v206 = v315;
    }

    v209 = v317;
    v210 = v312;
    __swift_storeEnumTagSinglePayload(v206, v208, 1, v207);
    v211 = [v117 duration];
    v212 = v211;
    if (v211)
    {
      [v211 doubleValue];
      v214 = v213;

      v215 = v214;
    }

    else
    {
      v215 = 0;
    }

    v216 = [v117 URL];
    if (v216)
    {
      v217 = v216;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v218 = type metadata accessor for URL();
    OUTLINED_FUNCTION_225_4(v210, v219, v220, v218);
    OUTLINED_FUNCTION_192_7();
    OUTLINED_FUNCTION_94();
    VoiceMemo.init(id:displayName:creationDate:durationInSeconds:url:)();
    OUTLINED_FUNCTION_128_9();
    v221 = v314;
    v222 = OUTLINED_FUNCTION_63_0();
    v223(v222);
    OUTLINED_FUNCTION_140_8();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_76_9();
    v224 = OUTLINED_FUNCTION_105_12();
    v225 = v330;
    v226(v224, v332, v330);
    OUTLINED_FUNCTION_26_21();
    __swift_storeEnumTagSinglePayload(v227, v228, v229, v230);
    v140 = v333;
    *(v209 + v333[7]) = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_2_51((v209 + v140[10]));
    OUTLINED_FUNCTION_48_3();
    _s10OmniSearch0B10ResultItemOWOcTm_3();
    type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for CSSearchableItem, 0x277CC34B0);
    lazy protocol witness table accessor for type CSSearchableItem and conformance NSObject();
    OUTLINED_FUNCTION_226_2();
    v141 = v317;
    OUTLINED_FUNCTION_33_13();
    CodableNSSecureCoding.init(wrappedValue:)();
    v231 = v313;
    outlined init with copy of EagerResolutionService?();
    OUTLINED_FUNCTION_28_16(v231);
    if (v89)
    {
      OUTLINED_FUNCTION_33_13();
      outlined destroy of IntentApplication?(v232, v233, v234);
      OUTLINED_FUNCTION_7_39();
      OUTLINED_FUNCTION_19_18();

      OUTLINED_FUNCTION_33_13();
      outlined destroy of IntentApplication?(v235, v236, v237);
      OUTLINED_FUNCTION_3_35();
      _s10OmniSearch0B10ResultItemOWOhTm_8(v221, v238);
      OUTLINED_FUNCTION_4_4();
      v239 = OUTLINED_FUNCTION_201_5();
      v240(v239);
      goto LABEL_47;
    }

    outlined destroy of IntentApplication?(v203, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
    OUTLINED_FUNCTION_3_35();
    _s10OmniSearch0B10ResultItemOWOhTm_8(v221, v241);
    OUTLINED_FUNCTION_4_4();
    v242 = OUTLINED_FUNCTION_201_5();
    v243(v242);
    v156 = *(v215 + 32);
    v244 = OUTLINED_FUNCTION_48_12(&v328);
    (v156)(v244, v231, v225);
    goto LABEL_46;
  }

  v245 = v87 == 0xD00000000000002BLL && 0x800000025DBF1DB0 == v88;
  if (v245 || (OUTLINED_FUNCTION_69_14() & 1) != 0 || (v87 == 0xD000000000000023 ? (v246 = 0x800000025DBF1DE0 == v88) : (v246 = 0), v246 || (OUTLINED_FUNCTION_69_14() & 1) != 0))
  {

    v247 = v336;
    v248 = [v336 uniqueIdentifier];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_67_8();

    v249 = v247;
    OUTLINED_FUNCTION_76_9();
    OUTLINED_FUNCTION_88();
    FileDocument.init(id:item:)();
    OUTLINED_FUNCTION_128_9();
    v250 = OUTLINED_FUNCTION_26_2();
    v251(v250);
    OUTLINED_FUNCTION_140_8();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_42_19();
    v252 = v306;
    v253(v306, v332, v202);
    OUTLINED_FUNCTION_44_0();
    __swift_storeEnumTagSinglePayload(v254, v255, v256, v202);
    v257 = v333;
    *(v4 + v333[7]) = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_2_51((v4 + v257[10]));
    OUTLINED_FUNCTION_100_4();
    _s10OmniSearch0B10ResultItemOWOcTm_3();
    type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for CSSearchableItem, 0x277CC34B0);
    lazy protocol witness table accessor for type CSSearchableItem and conformance NSObject();
    v258 = v249;
    OUTLINED_FUNCTION_47_11();
    v259 = v252;
    CodableNSSecureCoding.init(wrappedValue:)();
    v260 = v305;
    outlined init with copy of EagerResolutionService?();
    OUTLINED_FUNCTION_166(v260, 1, v202);
    if (v89)
    {
      OUTLINED_FUNCTION_33_13();
      outlined destroy of IntentApplication?(v261, v262, v263);
      OUTLINED_FUNCTION_7_39();
      OUTLINED_FUNCTION_19_18();

      OUTLINED_FUNCTION_33_13();
      outlined destroy of IntentApplication?(v264, v265, v266);
      OUTLINED_FUNCTION_3_35();
      _s10OmniSearch0B10ResultItemOWOhTm_8(v308, v267);
      OUTLINED_FUNCTION_4_4();
      v268 = OUTLINED_FUNCTION_190_7();
      v269(v268);
    }

    else
    {

      outlined destroy of IntentApplication?(v259, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
      OUTLINED_FUNCTION_3_35();
      _s10OmniSearch0B10ResultItemOWOhTm_8(v308, v270);
      OUTLINED_FUNCTION_4_4();
      v271 = OUTLINED_FUNCTION_190_7();
      v272(v271);
      v273 = *(v87 + 32);
      v274 = OUTLINED_FUNCTION_48_12(v327);
      (v273)(v274, v260, v202);
      OUTLINED_FUNCTION_204_6();
      v273();
    }

    v99 = 1;
    *(v4 + v257[8]) = 1;
    *(v4 + v257[9]) = 1;
    outlined init with take of SearchResult(v4, v334);
    OUTLINED_FUNCTION_26_21();
    goto LABEL_17;
  }

  v275 = CSSearchableItem.associatedAppEntityId.getter();
  if (v276)
  {
    v277 = v275;
    v278 = v276;
    v279 = CSSearchableItem.associatedAppEntityTypeId.getter();
    if (v280)
    {
      v281 = v303;
      *v303 = v277;
      v281[1] = v278;
      v281[2] = v87;
      v281[3] = v88;
      v281[4] = v279;
      v281[5] = v280;
      v281[6] = 0;
      v281[7] = 0;
      OUTLINED_FUNCTION_140_8();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_128_9();
      v282(v302, v332, v330);
      OUTLINED_FUNCTION_26_21();
      __swift_storeEnumTagSinglePayload(v283, v284, v285, v286);
      v287 = v333;
      *(v75 + v333[7]) = MEMORY[0x277D84F90];
      OUTLINED_FUNCTION_2_51((v75 + v287[10]));
      OUTLINED_FUNCTION_26_2();
      _s10OmniSearch0B10ResultItemOWOcTm_3();
      type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for CSSearchableItem, 0x277CC34B0);
      lazy protocol witness table accessor for type CSSearchableItem and conformance NSObject();
      OUTLINED_FUNCTION_226_2();
      OUTLINED_FUNCTION_33_13();
      CodableNSSecureCoding.init(wrappedValue:)();
      outlined init with copy of EagerResolutionService?();
      OUTLINED_FUNCTION_28_16(v55);
      if (v89)
      {
        OUTLINED_FUNCTION_33_13();
        outlined destroy of IntentApplication?(v288, v289, v290);
        OUTLINED_FUNCTION_134_9();
        OUTLINED_FUNCTION_134_9();
        OUTLINED_FUNCTION_134_9();
        OUTLINED_FUNCTION_134_9();
        OUTLINED_FUNCTION_134_9();
        LOBYTE(v340[0]) = 1;
        OUTLINED_FUNCTION_17_32();
        OUTLINED_FUNCTION_19_18();

        OUTLINED_FUNCTION_33_13();
        outlined destroy of IntentApplication?(v291, v292, v293);
        OUTLINED_FUNCTION_3_35();
        _s10OmniSearch0B10ResultItemOWOhTm_8(v303, v294);
      }

      else
      {

        outlined destroy of IntentApplication?(v302, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
        OUTLINED_FUNCTION_3_35();
        _s10OmniSearch0B10ResultItemOWOhTm_8(v303, v295);
        v296 = *(v328 + 32);
        v297 = v301;
        v298 = v330;
        v296(v301, v55, v330);
        v296(v75 + v333[5], v297, v298);
      }

      v95 = v333;
      v299 = v334;
      v99 = 1;
      *(v75 + v333[8]) = 1;
      *(v75 + v95[9]) = 1;
      outlined init with take of SearchResult(v75, v299);
      goto LABEL_16;
    }
  }

  v95 = v333;
LABEL_15:
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v96, v97, v98, v95);
  return 0;
}

void static LocalIndexClient.genericSearchResult(_:spotlightRankingItem:eventSourceItemsMap:)()
{
  OUTLINED_FUNCTION_155();
  v129 = v2;
  v133 = v3;
  v134 = v4;
  v6 = v5;
  type metadata accessor for SpotlightRankingItem();
  OUTLINED_FUNCTION_14();
  v131 = v8;
  v132 = v7;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_39_0();
  v126 = v9;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_14_2();
  v123 = v11;
  v12 = OUTLINED_FUNCTION_78_0();
  v136 = type metadata accessor for SearchResult(v12);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_78_16();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_14_2();
  v125 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
  v17 = OUTLINED_FUNCTION_114(v16);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_39_0();
  v130 = v18;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v19);
  v21 = &v123 - v20;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_7_4();
  v124 = v23;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_14_2();
  v128 = v25;
  v26 = OUTLINED_FUNCTION_78_0();
  v27 = type metadata accessor for SearchResultItem(v26);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_67_12();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_14_2();
  v127 = v30;
  OUTLINED_FUNCTION_78_0();
  v137 = type metadata accessor for GenericSpotlightItem();
  OUTLINED_FUNCTION_14();
  v135 = v31;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_36();
  v35 = v34 - v33;
  v36 = [v6 uniqueIdentifier];
  v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v39 = v38;

  v40 = v35;
  v41 = outlined bridged method (pb) of @objc CSSearchableItem.bundleID.getter(v6);
  if (v42)
  {
    v43 = v41;
  }

  else
  {
    v43 = 0;
  }

  if (v42)
  {
    v44 = v42;
  }

  else
  {
    v44 = 0xE000000000000000;
  }

  MEMORY[0x25F89C0C0](v37, v39, v43, v44);
  if (!CSSearchableItem.isEventTypeItem.getter())
  {
    (*(v135 + 16))(v1, v35, v137);
    swift_storeEnumTagMultiPayload();
    v129 = v35;
    v83 = v131;
    v82 = v132;
    (*(v131 + 16))(v21, v133, v132);
    OUTLINED_FUNCTION_44_0();
    __swift_storeEnumTagSinglePayload(v84, v85, v86, v82);
    v87 = v136;
    *(v0 + *(v136 + 28)) = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_2_51((v0 + *(v87 + 40)));
    _s10OmniSearch0B10ResultItemOWOcTm_3();
    type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for CSSearchableItem, 0x277CC34B0);
    lazy protocol witness table accessor for type CSSearchableItem and conformance NSObject();
    v88 = v6;
    OUTLINED_FUNCTION_196_5();
    CodableNSSecureCoding.init(wrappedValue:)();
    outlined init with copy of EagerResolutionService?();
    v89 = OUTLINED_FUNCTION_159_2();
    OUTLINED_FUNCTION_166(v89, v90, v82);
    if (v74)
    {
      OUTLINED_FUNCTION_103_10();
      outlined destroy of IntentApplication?(v91, v92, v93);
      v60 = v136;
      OUTLINED_FUNCTION_130_10();
      OUTLINED_FUNCTION_130_10();
      OUTLINED_FUNCTION_130_10();
      OUTLINED_FUNCTION_130_10();
      OUTLINED_FUNCTION_130_10();
      LOBYTE(v138) = v94;
      OUTLINED_FUNCTION_10_35();
      OUTLINED_FUNCTION_19_18();
      OUTLINED_FUNCTION_103_10();
      outlined destroy of IntentApplication?(v95, v96, v97);
      OUTLINED_FUNCTION_3_35();
      _s10OmniSearch0B10ResultItemOWOhTm_8(v1, v98);
      v99 = OUTLINED_FUNCTION_184_5();
      v100(v99);
    }

    else
    {
      outlined destroy of IntentApplication?(v21, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
      OUTLINED_FUNCTION_3_35();
      _s10OmniSearch0B10ResultItemOWOhTm_8(v1, v101);
      v102 = OUTLINED_FUNCTION_184_5();
      v103(v102);
      v104 = *(v83 + 32);
      v105 = v126;
      v106 = OUTLINED_FUNCTION_64_0();
      v104(v106);
      v60 = v136;
      (v104)(v0 + *(v136 + 20), v105, v82);
    }

    *(v0 + v60[8]) = 1;
    *(v0 + v60[9]) = 1;
    v107 = v0;
LABEL_30:
    outlined init with take of SearchResult(v107, v134);
    goto LABEL_31;
  }

  v130 = v27;
  v45 = v133;
  v46 = [v6 uniqueIdentifier];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  OUTLINED_FUNCTION_54_0();
  v47 = specialized Dictionary.subscript.getter();

  v48 = v137;
  if (v47)
  {
    if (specialized Array.count.getter())
    {
      specialized Array._checkSubscript(_:wasNativeTypeChecked:)();
      if ((v47 & 0xC000000000000001) != 0)
      {
        v49 = MEMORY[0x25F89FFD0](0, v47);
      }

      else
      {
        v49 = *(v47 + 32);
      }

      v126 = v49;

      if (one-time initialization token for search != -1)
      {
        OUTLINED_FUNCTION_1_31();
        swift_once();
      }

      v50 = v35;
      v51 = type metadata accessor for Logger();
      __swift_project_value_buffer(v51, static Logging.search);
      v52 = v6;
      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v53, v54))
      {
        v55 = OUTLINED_FUNCTION_51_0();
        v56 = OUTLINED_FUNCTION_49_0();
        v140 = v56;
        *v55 = 136315138;
        v138 = outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.eventSourceBundleIdentifier.getter([v52 attributeSet]);
        v139 = v57;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
        String.init<A>(describing:)();
        v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

        *(v55 + 4) = v58;
        OUTLINED_FUNCTION_49_16(&dword_25D85C000, v59, v54, "LocalIndexClient: Created generic item for event with sourceBundleId: %s.");
        __swift_destroy_boxed_opaque_existential_1Tm(v56);
        OUTLINED_FUNCTION_42_0();
        OUTLINED_FUNCTION_37_0();
      }

      v61 = v135;
      v60 = v136;
      v62 = v128;
      v63 = *(v135 + 16);
      v129 = v50;
      v63(v127, v50, v48);
      OUTLINED_FUNCTION_54_0();
      swift_storeEnumTagMultiPayload();
      v64 = v131;
      v65 = v45;
      v66 = v132;
      (*(v131 + 16))(v62, v65, v132);
      OUTLINED_FUNCTION_44_0();
      __swift_storeEnumTagSinglePayload(v67, v68, v69, v66);
      v70 = v125;
      *(v125 + v60[7]) = MEMORY[0x277D84F90];
      OUTLINED_FUNCTION_2_51((v70 + v60[10]));
      _s10OmniSearch0B10ResultItemOWOcTm_3();
      type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for CSSearchableItem, 0x277CC34B0);
      lazy protocol witness table accessor for type CSSearchableItem and conformance NSObject();
      v71 = v126;
      OUTLINED_FUNCTION_47_11();
      v72 = v128;
      CodableNSSecureCoding.init(wrappedValue:)();
      v73 = v124;
      outlined init with copy of EagerResolutionService?();
      OUTLINED_FUNCTION_166(v73, 1, v66);
      if (v74)
      {
        OUTLINED_FUNCTION_117_8();
        outlined destroy of IntentApplication?(v75, v76, v77);
        OUTLINED_FUNCTION_132_10();
        OUTLINED_FUNCTION_132_10();
        OUTLINED_FUNCTION_132_10();
        OUTLINED_FUNCTION_132_10();
        OUTLINED_FUNCTION_132_10();
        LOBYTE(v138) = 1;
        OUTLINED_FUNCTION_17_32();
        OUTLINED_FUNCTION_19_18();

        OUTLINED_FUNCTION_117_8();
        outlined destroy of IntentApplication?(v78, v79, v80);
        OUTLINED_FUNCTION_3_35();
        _s10OmniSearch0B10ResultItemOWOhTm_8(v127, v81);
        (*(v61 + 8))(v129, v137);
      }

      else
      {

        outlined destroy of IntentApplication?(v72, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
        OUTLINED_FUNCTION_3_35();
        _s10OmniSearch0B10ResultItemOWOhTm_8(v127, v116);
        (*(v61 + 8))(v129, v137);
        v117 = *(v64 + 32);
        v118 = v123;
        v119 = OUTLINED_FUNCTION_100_4();
        v117(v119);
        (v117)(v70 + v60[5], v118, v66);
      }

      v107 = OUTLINED_FUNCTION_109_14();
      goto LABEL_30;
    }
  }

  if (one-time initialization token for search != -1)
  {
    OUTLINED_FUNCTION_1_31();
    swift_once();
  }

  v108 = type metadata accessor for Logger();
  __swift_project_value_buffer(v108, static Logging.search);
  v109 = v6;
  v110 = Logger.logObject.getter();
  v111 = static os_log_type_t.error.getter();

  if (OUTLINED_FUNCTION_221_4())
  {
    OUTLINED_FUNCTION_51_0();
    v112 = OUTLINED_FUNCTION_94_10();
    v140 = v112;
    *v47 = 136315138;
    v138 = outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.eventSourceBundleIdentifier.getter([v109 attributeSet]);
    v139 = v113;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    String.init<A>(describing:)();
    v114 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v47 + 4) = v114;
    OUTLINED_FUNCTION_164_5(&dword_25D85C000, v115, v111, "LocalIndexClient: Dropped event due to missing source, sourceBundleId: %s.");
    __swift_destroy_boxed_opaque_existential_1Tm(v112);
    OUTLINED_FUNCTION_37_0();
    OUTLINED_FUNCTION_13_18();
  }

  (*(v135 + 8))(v40, v48);
  v60 = v136;
LABEL_31:
  v120 = OUTLINED_FUNCTION_102_9();
  __swift_storeEnumTagSinglePayload(v120, v121, v122, v60);
  OUTLINED_FUNCTION_148();
}

uint64_t static LocalIndexClient.constructPhotoDocument(item:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v102 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes22PreExtractedBreadcrumbVSgMd, &_s15OmniSearchTypes22PreExtractedBreadcrumbVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v101 = v83 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes22PreExtractedSharedLinkVSgMd, &_s15OmniSearchTypes22PreExtractedSharedLinkVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v100 = v83 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes19PreExtractedContactVSgMd, &_s15OmniSearchTypes19PreExtractedContactVSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v99 = v83 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes16PreExtractedCardVSgMd, &_s15OmniSearchTypes16PreExtractedCardVSgMR);
  MEMORY[0x28223BE20](v12 - 8);
  v98 = v83 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes26PartialExtractedAttributesVSgMd, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMR);
  MEMORY[0x28223BE20](v14 - 8);
  v97 = v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v105 = v83 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v18 - 8);
  v96 = v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v21 = MEMORY[0x28223BE20](v20).n128_u64[0];
  v23 = v83 - v22;
  v24 = [a1 attributeSet];
  if ([v24 attributeForKey_])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v108 = 0u;
    v109 = 0u;
  }

  v110 = v108;
  v111 = v109;
  if (*(&v109 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    if (swift_dynamicCast())
    {
      v25 = v107;
      goto LABEL_9;
    }
  }

  else
  {
    outlined destroy of IntentApplication?(&v110, &_sypSgMd, &_sypSgMR);
  }

  v25 = MEMORY[0x277D84F90];
LABEL_9:
  v95 = v25;
  v26 = outlined bridged method (pb) of @objc CSSearchableItemAttributeSet.photosSceneClassifications.getter(v24, &selRef_photosSceneClassifications);
  v103 = v24;
  v104 = v23;
  if (v26)
  {
    v27 = v26;
    v94 = a1;
    v28 = specialized Array.count.getter();
    v29 = 0;
    v30 = (v27 & 0xFFFFFFFFFFFFFF8);
    v106 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v28 == v29)
      {

        v24 = v103;
        v23 = v104;
        a1 = v94;
        goto LABEL_25;
      }

      if ((v27 & 0xC000000000000001) != 0)
      {
        v31 = MEMORY[0x25F89FFD0](v29, v27);
      }

      else
      {
        if (v29 >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_68;
        }

        v31 = *(v27 + 8 * v29 + 32);
      }

      v3 = v31;
      v4 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      v2 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v31, &selRef_label);
      v33 = v32;

      ++v29;
      if (v33)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0);
          v106 = v37;
        }

        v3 = *(v106 + 16);
        v34 = *(v106 + 24);
        if (v3 >= v34 >> 1)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v34 > 1);
          v106 = v38;
        }

        v35 = v106;
        *(v106 + 16) = v3 + 1;
        v36 = v35 + 16 * v3;
        *(v36 + 32) = v2;
        *(v36 + 40) = v33;
        v29 = v4;
      }
    }

    __break(1u);
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v106 = 0;
LABEL_25:
  if ([v24 attributeForKey_])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v108 = 0u;
    v109 = 0u;
  }

  v110 = v108;
  v111 = v109;
  if (*(&v109 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    if (swift_dynamicCast())
    {
      v2 = v107;
      goto LABEL_33;
    }
  }

  else
  {
    outlined destroy of IntentApplication?(&v110, &_sypSgMd, &_sypSgMR);
  }

  v2 = MEMORY[0x277D84F90];
LABEL_33:
  if ([v24 attributeForKey_])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v108 = 0u;
    v109 = 0u;
  }

  v110 = v108;
  v111 = v109;
  if (*(&v109 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    if (swift_dynamicCast())
    {
      v3 = v107;
      goto LABEL_41;
    }
  }

  else
  {
    outlined destroy of IntentApplication?(&v110, &_sypSgMd, &_sypSgMR);
  }

  v3 = MEMORY[0x277D84F90];
LABEL_41:
  if ([v24 attributeForKey_])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v108 = 0u;
    v109 = 0u;
  }

  v110 = v108;
  v111 = v109;
  if (*(&v109 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    if (swift_dynamicCast())
    {
      v39 = v107;
      goto LABEL_49;
    }
  }

  else
  {
    outlined destroy of IntentApplication?(&v110, &_sypSgMd, &_sypSgMR);
  }

  v39 = MEMORY[0x277D84F90];
LABEL_49:
  v92 = v39;
  v40 = [a1 uniqueIdentifier];
  v91 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v90 = v41;

  v89 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v24, &selRef_photosContentDescription);
  v88 = v42;
  v84 = outlined bridged method (pb) of @objc CSSearchableItemAttributeSet.authorNames.getter(v24, &selRef_photosSeasons);
  v87 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v24, &selRef_contentSnippet);
  v86 = v43;
  v44 = [v24 contentCreationDate];
  if (v44)
  {
    v45 = v44;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v46 = 0;
  }

  else
  {
    v46 = 1;
  }

  v47 = type metadata accessor for Date();
  __swift_storeEnumTagSinglePayload(v23, v46, 1, v47);
  v4 = outlined bridged method (pb) of @objc CSSearchableItemAttributeSet.authorNames.getter(v24, &selRef_photosBusinessNames);
  v48 = type metadata accessor for PartialExtractedAttributes();
  __swift_storeEnumTagSinglePayload(v105, 1, 1, v48);
  type metadata accessor for FeatureFlagService();
  v85 = swift_allocObject();
  v49 = one-time initialization token for search;
  v30 = a1;
  if (v49 != -1)
  {
LABEL_69:
    swift_once();
  }

  v50 = type metadata accessor for Logger();
  __swift_project_value_buffer(v50, static Logging.search);
  v51 = v30;
  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.info.getter();

  v54 = os_log_type_enabled(v52, v53);
  v94 = v2;
  v93 = v3;
  if (v54)
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    *&v110 = v56;
    *v55 = 136315138;
    v57 = [v51 attributeSet];
    CSSearchableItemAttributeSet.keyStrings.getter();
    v59 = v58;

    MEMORY[0x25F89F8A0](v59, MEMORY[0x277D837D0]);

    v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v55 + 4) = v60;
    _os_log_impl(&dword_25D85C000, v52, v53, "Photo: parsing attribute keys: %s", v55, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v56);
    MEMORY[0x25F8A1050](v56, -1, -1);
    MEMORY[0x25F8A1050](v55, -1, -1);
  }

  v61 = MEMORY[0x277D84F90];
  v62 = v51;
  v63 = Logger.logObject.getter();
  v64 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *&v110 = v66;
    *v65 = 136642819;
    v67 = [v62 attributeSet];
    CSSearchableItemAttributeSet.kvStrings.getter();
    v69 = v68;

    v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SStMd, &_sSS_SStMR);
    MEMORY[0x25F89F8A0](v69, v70);

    v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v65 + 4) = v71;
    _os_log_impl(&dword_25D85C000, v63, v64, "Photo: parsing attributes: %{sensitive}s", v65, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v66);
    MEMORY[0x25F8A1050](v66, -1, -1);
    MEMORY[0x25F8A1050](v65, -1, -1);
  }

  else
  {
  }

  if (v4)
  {
    v72 = v4;
  }

  else
  {
    v72 = v61;
  }

  v83[1] = v72;
  v73 = v106;
  if (!v106)
  {
    v73 = v61;
  }

  v106 = v73;
  if (v84)
  {
    v74 = v84;
  }

  else
  {
    v74 = v61;
  }

  v84 = v74;
  v75 = v104;
  outlined init with copy of EagerResolutionService?();
  v76 = v105;
  outlined init with copy of EagerResolutionService?();
  v77 = v62;
  v78 = v85;

  PreExtractedCard.init(item:featureFlagService:)(v77, v78, v98);
  v79 = v77;

  PreExtractedContact.init(item:featureFlagService:)(v79, v78, v99);
  v80 = v79;
  PreExtractedSharedLink.init(item:)(v80, v100);
  v81 = v80;

  PreExtractedBreadcrumb.init(item:featureFlagService:)(v81, v78);
  Photo.init(id:photoDescription:locationKeywords:season:sceneClassificationLabels:snippet:ocrString:date:businessNames:peopleNames:peopleContactIdentifiers:peoplePersonIdentifiers:extractedEventsLLMConsumableDescription:partialExtractedAttributes:preExtractedCard:preExtractedContact:preExtractedSharedLink:preExtractedBreadcrumb:)();

  outlined destroy of IntentApplication?(v76, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMd, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMR);
  return outlined destroy of IntentApplication?(v75, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
}

uint64_t CSSearchableItem.isFileDocument.getter()
{
  type metadata accessor for UTType();
  OUTLINED_FUNCTION_14();
  v1 = v0;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_36();
  v5 = v4 - v3;
  static UTType.folder.getter();
  v6 = CSSearchableItem.isContentType(_:)(v5);
  v7 = *(v1 + 8);
  v8 = OUTLINED_FUNCTION_52_1();
  v7(v8);
  if (v6)
  {
    return 1;
  }

  static UTType.content.getter();
  v10 = CSSearchableItem.isContentType(_:)(v5);
  v11 = OUTLINED_FUNCTION_52_1();
  v7(v11);
  if (v10 & 1) != 0 || (static UTType.data.getter(), v12 = CSSearchableItem.isContentType(_:)(v5), v13 = OUTLINED_FUNCTION_52_1(), v7(v13), (v12))
  {
    v14 = OUTLINED_FUNCTION_175_6();
    v15 = CSSearchableItemAttributeSet.spotlightSearchResult.getter();

    if (v15)
    {
      v16 = [v15 hasTextContent];

      if (v16)
      {
        v17 = OUTLINED_FUNCTION_175_6();
        v18 = [v17 attributeForKey_];

        if (v18)
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
        }

        else
        {
          v22 = 0u;
          v23 = 0u;
        }

        v24[0] = v22;
        v24[1] = v23;
        if (*(&v23 + 1))
        {
          if (OUTLINED_FUNCTION_25_23())
          {

            v19 = HIBYTE(v21) & 0xF;
            if ((v21 & 0x2000000000000000) == 0)
            {
              v19 = *v20 & 0xFFFFFFFFFFFFLL;
            }

            if (v19)
            {
              return 1;
            }
          }
        }

        else
        {
          outlined destroy of IntentApplication?(v24, &_sypSgMd, &_sypSgMR);
        }
      }
    }
  }

  return 0;
}

uint64_t CSSearchableItem.isContentType(_:)(uint64_t a1)
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
  OUTLINED_FUNCTION_114(v3);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v4);
  v6 = &v16 - v5;
  v7 = type metadata accessor for UTType();
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_36();
  outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.title.getter([v2 attributeSet], &selRef_contentType);
  if (!v9)
  {
    goto LABEL_5;
  }

  UTType.init(_:)();
  OUTLINED_FUNCTION_166(v6, 1, v7);
  if (v10)
  {
    outlined destroy of IntentApplication?(v6, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
LABEL_5:
    v12 = 0;
    return v12 & 1;
  }

  OUTLINED_FUNCTION_47_11();
  v11();
  v12 = UTType.conforms(to:)();
  v13 = OUTLINED_FUNCTION_52_1();
  v14(v13);
  return v12 & 1;
}

uint64_t CSSearchableItem.oms_emailBody.getter(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_93_13();
  result = outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.title.getter(v3, &selRef_contentSnippet);
  if (!v5)
  {
    return outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.title.getter([v2 (v1 + 116)], &selRef_contentDescription);
  }

  return result;
}

uint64_t CSSearchableItem.oms_emailSubject.getter(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_93_13();
  result = outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.subject.getter(v3);
  if (!v5)
  {
    return outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.title.getter([v2 (v1 + 116)]);
  }

  return result;
}

void static LocalIndexClient.walletDocument(from:spotlightRankingItem:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_155();
  a19 = v23;
  a20 = v24;
  v26 = v25;
  v28 = v27;
  v278[2] = *MEMORY[0x277D85DE8];
  v29 = type metadata accessor for WalletPass();
  v30 = OUTLINED_FUNCTION_1_5(v29, v278);
  v246 = v31;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_28_2(v33);
  v34 = type metadata accessor for SpotlightRankingItem();
  v35 = OUTLINED_FUNCTION_1_5(v34, &a14);
  v240 = v36;
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_14_2();
  v39 = OUTLINED_FUNCTION_28_2(v38);
  v260 = type metadata accessor for SearchResult(v39);
  MEMORY[0x28223BE20](v260);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_15_4(v41);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
  v43 = OUTLINED_FUNCTION_114(v42);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_51_12();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_14_2();
  v264 = v47;
  v48 = OUTLINED_FUNCTION_78_0();
  v258 = type metadata accessor for SearchResultItem(v48);
  MEMORY[0x28223BE20](v258);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_15_4(v50);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v52 = OUTLINED_FUNCTION_114(v51);
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_28_2(v56);
  v57 = type metadata accessor for WalletTransaction();
  v58 = OUTLINED_FUNCTION_1_5(v57, &v279);
  v262 = v59;
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_39_0();
  OUTLINED_FUNCTION_4_3();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_15_4(v61);
  v267 = v26;
  v268 = [v26 attributeSet];
  v62 = [v26 uniqueIdentifier];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  OUTLINED_FUNCTION_114_7();

  v277[0] = 45;
  v277[1] = 0xE100000000000000;
  v273 = v277;
  v63 = specialized Collection.split(maxSplits:omittingEmptySubsequences:whereSeparator:)(1, 1, partial apply for specialized closure #1 in Sequence<>.contains(_:), &v272, v20, v21, v277);
  v64 = *(v63 + 16);
  v266 = v28;
  if (v64)
  {
    v277[0] = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v64, 0);
    v65 = 0;
    v66 = v277[0];
    v26 = (v63 + 56);
    v269 = v63;
    while (v65 < *(v63 + 16))
    {
      v67 = v22;
      v62 = *(v26 - 3);

      v68 = OUTLINED_FUNCTION_100_4();
      v69 = MEMORY[0x25F89F5B0](v68);
      v71 = v70;

      v277[0] = v66;
      v73 = v66[2];
      v72 = v66[3];
      if (v73 >= v72 >> 1)
      {
        v75 = OUTLINED_FUNCTION_26_3(v72);
        v62 = v277;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v75, v73 + 1, 1);
        v66 = v277[0];
      }

      ++v65;
      v66[2] = v73 + 1;
      v74 = &v66[2 * v73];
      v74[4] = v69;
      v74[5] = v71;
      v26 += 32;
      v22 = v67;
      v63 = v269;
      if (v64 == v65)
      {

        v76 = v66;
        v28 = v266;
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_113;
  }

  v76 = MEMORY[0x277D84F90];
LABEL_9:
  if (!v76[2])
  {
    __break(1u);
    goto LABEL_117;
  }

  v77 = v76[4];
  v78 = v76[5];
  v79 = v77 == 0x746361736E617274 && v78 == 0xEB000000006E6F69;
  v80 = MEMORY[0x277D84F70];
  v81 = MEMORY[0x277CC2C58];
  if (!v79)
  {
    OUTLINED_FUNCTION_121_10();
    v83 = v82;
    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      if (v77 != 1936941424 || v78 != 0xE400000000000000)
      {
        OUTLINED_FUNCTION_121_10();
        if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v179 = v77 == 0xD000000000000010 && 0x800000025DBF6F70 == v78;
          if (v179 || (OUTLINED_FUNCTION_121_10(), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
          {

LABEL_115:

            OUTLINED_FUNCTION_92();
            v144 = v260;
            goto LABEL_49;
          }

          if (one-time initialization token for search != -1)
          {
            OUTLINED_FUNCTION_1_31();
            swift_once();
          }

          v231 = type metadata accessor for Logger();
          OUTLINED_FUNCTION_200(v231, static Logging.search);

          v26 = Logger.logObject.getter();
          v232 = static os_log_type_t.error.getter();

          if (OUTLINED_FUNCTION_221_4())
          {
            OUTLINED_FUNCTION_51_0();
            v233 = OUTLINED_FUNCTION_94_10();
            OUTLINED_FUNCTION_99_10(v233);
            *v81 = 136315138;

            OUTLINED_FUNCTION_63_0();
            v234 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

            *(v81 + 4) = v234;
            OUTLINED_FUNCTION_164_5(&dword_25D85C000, v235, v232, "Wallet document found with unrecognized type: %s");
            __swift_destroy_boxed_opaque_existential_1Tm(v78);
            OUTLINED_FUNCTION_37_0();
            OUTLINED_FUNCTION_13_18();
LABEL_114:

            goto LABEL_115;
          }

LABEL_113:

          goto LABEL_114;
        }
      }

      v146 = [v268 attributeForKey_];
      if (v146)
      {
        OUTLINED_FUNCTION_168_5(v146);
        swift_unknownObjectRelease();
      }

      else
      {
        OUTLINED_FUNCTION_44_21();
      }

      OUTLINED_FUNCTION_16_31();
      if (v147)
      {
        v148 = OUTLINED_FUNCTION_49_18();
        if (OUTLINED_FUNCTION_220_4(v148, v149, v150, v151))
        {
          v152 = v275;
        }

        else
        {
          v152 = 2;
        }
      }

      else
      {
        outlined destroy of IntentApplication?(v277, &_sypSgMd, &_sypSgMR);
        v152 = 2;
      }

      if (one-time initialization token for search != -1)
      {
        OUTLINED_FUNCTION_1_31();
        swift_once();
      }

      v153 = type metadata accessor for Logger();
      v271 = __swift_project_value_buffer(v153, static Logging.search);
      v154 = Logger.logObject.getter();
      v155 = static os_log_type_t.info.getter();
      if (OUTLINED_FUNCTION_91_0(v155))
      {
        OUTLINED_FUNCTION_51_0();
        v156 = OUTLINED_FUNCTION_10_23();
        OUTLINED_FUNCTION_99_10(v156);
        *v83 = 136315138;
        LOBYTE(v276) = v152;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd, &_sSbSgMR);
        String.init<A>(describing:)();
        v157 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

        *(v83 + 4) = v157;
        OUTLINED_FUNCTION_110_12(&dword_25D85C000, v158, v155, "Wallet pass attribute passbookIsPaymentPass: %s");
        __swift_destroy_boxed_opaque_existential_1Tm(v78);
        OUTLINED_FUNCTION_37_0();
        OUTLINED_FUNCTION_2_8();
      }

      if (v152 == 2 || (v152 & 1) == 0)
      {
        v162 = 1;
      }

      else
      {
        v159 = Logger.logObject.getter();
        v160 = static os_log_type_t.info.getter();
        if (OUTLINED_FUNCTION_91_0(v160))
        {
          v161 = OUTLINED_FUNCTION_172();
          *v161 = 0;
          _os_log_impl(&dword_25D85C000, v159, v160, "Mark this Wallet secure element card not eligible for answer sythensis", v161, 2u);
          OUTLINED_FUNCTION_13_18();
        }

        v162 = 0;
      }

      v163 = [v268 attributeForKey_];
      if (v163)
      {
        OUTLINED_FUNCTION_168_5(v163);
        swift_unknownObjectRelease();
      }

      else
      {
        OUTLINED_FUNCTION_44_21();
      }

      OUTLINED_FUNCTION_16_31();
      v237 = v22;
      v265 = v162;
      if (v164)
      {
        v165 = OUTLINED_FUNCTION_49_18();
        if (OUTLINED_FUNCTION_220_4(v165, v166, v167, v168))
        {
          v169 = objc_opt_self();
          OUTLINED_FUNCTION_72_2();
          isa = Data._bridgeToObjectiveC()().super.isa;
          v277[0] = 0;
          v171 = [v169 JSONObjectWithData:isa options:0 error:{v277, v22}];

          if (v171)
          {
            v172 = v277[0];
            _bridgeAnyObjectToAny(_:)();
            v173 = OUTLINED_FUNCTION_72_2();
            outlined consume of Data._Representation(v173, v174);
            swift_unknownObjectRelease();
            v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
            v176 = v80;
            if (OUTLINED_FUNCTION_220_4(&v276, v277, v177, v175))
            {
              v178 = v276;
            }

            else
            {
              v178 = 0;
            }

            goto LABEL_92;
          }

          v176 = v80;
          v180 = v277[0];
          v181 = _convertNSErrorToError(_:)();

          swift_willThrow();
          v182 = OUTLINED_FUNCTION_72_2();
          outlined consume of Data._Representation(v182, v183);
        }

        else
        {
          v176 = v80;
        }
      }

      else
      {
        v176 = v80;
        outlined destroy of IntentApplication?(v277, &_sypSgMd, &_sypSgMR);
      }

      v178 = 0;
LABEL_92:
      v184 = [v267 uniqueIdentifier];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v268, &selRef_displayName);
      outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v268, &selRef_contentDescription);
      if ([v268 attributeForKey_])
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        OUTLINED_FUNCTION_44_21();
      }

      v185 = v178;
      OUTLINED_FUNCTION_16_31();
      if (v186)
      {
        v187 = type metadata accessor for Date();
        OUTLINED_FUNCTION_193_5(&v274);
        v188 = swift_dynamicCast();
        __swift_storeEnumTagSinglePayload(v176, v188 ^ 1u, 1, v187);
        v189 = OUTLINED_FUNCTION_90_9();
        OUTLINED_FUNCTION_166(v189, v190, v187);
        if (!v79)
        {
          OUTLINED_FUNCTION_51();
          (*(v191 + 32))(v239, v176, v187);
          OUTLINED_FUNCTION_44_0();
          __swift_storeEnumTagSinglePayload(v192, v193, v194, v187);
LABEL_101:
          outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v268, &selRef_creator);
          OUTLINED_FUNCTION_194_5();
          OUTLINED_FUNCTION_32_0();
          WalletPass.init(id:title:description:creationDate:creator:extraData:)();
          v203 = *(v246 + 16);
          v118 = v241;
          v204 = v250;
          v203(v241, v176);
          v205 = v271;
          v206 = Logger.logObject.getter();
          v207 = static os_log_type_t.debug.getter();
          if (OUTLINED_FUNCTION_91_0(v207))
          {
            OUTLINED_FUNCTION_51_0();
            v185 = v246;
            v208 = OUTLINED_FUNCTION_10_23();
            OUTLINED_FUNCTION_99_10(v208);
            *v246 = 136642819;
            v205 = v241;
            specialized Encodable.oms_jsonPrettyPrinted()();
            v209 = OUTLINED_FUNCTION_92_11();
            v118 = v210;
            (*(v246 + 8))(v209);
            OUTLINED_FUNCTION_153();
            getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
            OUTLINED_FUNCTION_92_11();

            *(v246 + 4) = v241;
            OUTLINED_FUNCTION_110_12(&dword_25D85C000, v211, v207, "Wallet pass found: %{sensitive}s");
            __swift_destroy_boxed_opaque_existential_1Tm(v250);
            v204 = v250;
            OUTLINED_FUNCTION_42_0();
            OUTLINED_FUNCTION_2_8();
          }

          else
          {

            v212 = OUTLINED_FUNCTION_30_5();
            v213(v212);
          }

          OUTLINED_FUNCTION_108_9();
          v214 = OUTLINED_FUNCTION_48_12(&v273);
          (v203)(v214, v248, v204);
          OUTLINED_FUNCTION_107();
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_107_8();
          OUTLINED_FUNCTION_50_9();
          outlined init with copy of EagerResolutionService?();
          *(v244 + v118[7]) = MEMORY[0x277D84F90];
          OUTLINED_FUNCTION_2_51((v244 + v118[10]));
          _s10OmniSearch0B10ResultItemOWOcTm_3();
          type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for CSSearchableItem, 0x277CC34B0);
          lazy protocol witness table accessor for type CSSearchableItem and conformance NSObject();
          v215 = v267;
          CodableNSSecureCoding.init(wrappedValue:)();
          OUTLINED_FUNCTION_107_8();
          OUTLINED_FUNCTION_50_9();
          outlined init with copy of EagerResolutionService?();
          v216 = OUTLINED_FUNCTION_202_5();
          OUTLINED_FUNCTION_166(v216, v217, v259);
          if (v79)
          {
            OUTLINED_FUNCTION_33_13();
            outlined destroy of IntentApplication?(v218, v219, v220);
            OUTLINED_FUNCTION_8_37();
            OUTLINED_FUNCTION_19_18();

            OUTLINED_FUNCTION_33_13();
            outlined destroy of IntentApplication?(v221, v222, v223);
            OUTLINED_FUNCTION_3_35();
            _s10OmniSearch0B10ResultItemOWOhTm_8(v205, v224);
            v225 = OUTLINED_FUNCTION_97_9();
            v226(v225);
          }

          else
          {

            outlined destroy of IntentApplication?(v185, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
            OUTLINED_FUNCTION_3_35();
            _s10OmniSearch0B10ResultItemOWOhTm_8(v205, v227);
            v228 = OUTLINED_FUNCTION_97_9();
            v229(v228);
            v230 = *(v240 + 32);
            v230(v238, v185);
            (v230)(v244 + v118[5]);
          }

          *(v244 + v118[8]) = 1;
          *(v244 + v118[9]) = v265;
          v140 = v244;
          goto LABEL_48;
        }
      }

      else
      {
        outlined destroy of IntentApplication?(v277, &_sypSgMd, &_sypSgMR);
        v187 = type metadata accessor for Date();
        OUTLINED_FUNCTION_193_5(&v274);
        OUTLINED_FUNCTION_92();
        __swift_storeEnumTagSinglePayload(v195, v196, v197, v187);
      }

      type metadata accessor for Date();
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v198, v199, v200, v187);
      v201 = OUTLINED_FUNCTION_90_9();
      OUTLINED_FUNCTION_166(v201, v202, v187);
      if (!v79)
      {
        outlined destroy of IntentApplication?(v176, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      }

      goto LABEL_101;
    }
  }

  v84 = [v267 uniqueIdentifier];
  v270 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v251 = v85;

  v249 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v268, &selRef_displayName);
  v247 = v86;
  v245 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v268, &selRef_contentDescription);
  v243 = v87;
  if ([v268 attributeForKey_])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_44_21();
  }

  OUTLINED_FUNCTION_16_31();
  if (v88)
  {
    v89 = type metadata accessor for Date();
    v90 = swift_dynamicCast();
    __swift_storeEnumTagSinglePayload(v252, v90 ^ 1u, 1, v89);
    OUTLINED_FUNCTION_166(v252, 1, v89);
    if (!v79)
    {
      OUTLINED_FUNCTION_51();
      v91 = OUTLINED_FUNCTION_32_0();
      v92(v91);
      OUTLINED_FUNCTION_44_0();
      __swift_storeEnumTagSinglePayload(v93, v94, v95, v89);
      goto LABEL_24;
    }
  }

  else
  {
    outlined destroy of IntentApplication?(v277, &_sypSgMd, &_sypSgMR);
    v89 = type metadata accessor for Date();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v96, v97, v98, v89);
  }

  type metadata accessor for Date();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v99, v100, v101, v89);
  OUTLINED_FUNCTION_166(v252, 1, v89);
  if (!v79)
  {
    outlined destroy of IntentApplication?(v252, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

LABEL_24:
  v253 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v268, &selRef_city);
  v103 = v102;
  v64 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v268, &selRef_stateOrProvince);
  v105 = v104;
  v62 = outlined bridged method (pb) of @objc IMSPIMessage.guid.getter(v268, &selRef_country);
  v242 = v106;
  if ([v268 attributeForKey_])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_44_21();
  }

  OUTLINED_FUNCTION_16_31();
  if (v107)
  {
    v108 = OUTLINED_FUNCTION_49_18();
    if (OUTLINED_FUNCTION_220_4(v108, v109, v110, v111))
    {
      v112 = 0;
      v113 = v275;
      goto LABEL_32;
    }
  }

  else
  {
    outlined destroy of IntentApplication?(v277, &_sypSgMd, &_sypSgMR);
  }

  v113 = 0;
  v112 = 1;
LABEL_32:
  if ([v268 attributeForKey_])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_44_21();
  }

  v28 = v255;
  v63 = v262;
  OUTLINED_FUNCTION_16_31();
  if (v114)
  {
    OUTLINED_FUNCTION_49_18();
    if (swift_dynamicCast())
    {
      v115 = v275;
      goto LABEL_40;
    }
  }

  else
  {
    outlined destroy of IntentApplication?(v277, &_sypSgMd, &_sypSgMR);
  }

  v115 = 0;
LABEL_40:
  v26 = v263;
  LOBYTE(v236) = v112;
  WalletTransaction.init(id:title:description:date:city:stateOrProvince:country:amount:currencyCode:)(v270, v251, v249, v247, v245, v243, v261, v253, v103, v64, v105, v62, v242, v113, v236, v115);
  if (one-time initialization token for search != -1)
  {
LABEL_117:
    OUTLINED_FUNCTION_1_31();
    swift_once();
  }

  v116 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_200(v116, static Logging.search);
  v117 = *(v63 + 16);
  v118 = v254;
  (v117)(v254, v26, v28);
  v119 = Logger.logObject.getter();
  v120 = static os_log_type_t.debug.getter();
  if (OUTLINED_FUNCTION_91_0(v120))
  {
    OUTLINED_FUNCTION_51_0();
    v121 = v63;
    v122 = OUTLINED_FUNCTION_10_23();
    v277[0] = v122;
    *v64 = 136642819;
    v62 = v254;
    specialized Encodable.oms_jsonPrettyPrinted()();
    v123 = OUTLINED_FUNCTION_92_11();
    v118 = v124;
    (*(v121 + 8))(v123, v28);
    OUTLINED_FUNCTION_153();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    OUTLINED_FUNCTION_92_11();

    *(v64 + 4) = v254;
    OUTLINED_FUNCTION_110_12(&dword_25D85C000, v125, v120, "Wallet transaction found: %{sensitive}s");
    __swift_destroy_boxed_opaque_existential_1Tm(v122);
    OUTLINED_FUNCTION_13_18();
    OUTLINED_FUNCTION_2_8();
  }

  else
  {

    (*(v63 + 8))(v254, v28);
  }

  OUTLINED_FUNCTION_108_9();
  OUTLINED_FUNCTION_48_12(&a11);
  OUTLINED_FUNCTION_107_8();
  v117();
  OUTLINED_FUNCTION_107();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_34_11();
  OUTLINED_FUNCTION_50_9();
  outlined init with copy of EagerResolutionService?();
  *(v257 + v118[7]) = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_2_51((v257 + v118[10]));
  _s10OmniSearch0B10ResultItemOWOcTm_3();
  type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for CSSearchableItem, 0x277CC34B0);
  lazy protocol witness table accessor for type CSSearchableItem and conformance NSObject();
  v126 = v267;
  CodableNSSecureCoding.init(wrappedValue:)();
  OUTLINED_FUNCTION_50_9();
  outlined init with copy of EagerResolutionService?();
  OUTLINED_FUNCTION_166(v256, 1, v259);
  if (v79)
  {
    OUTLINED_FUNCTION_33_13();
    outlined destroy of IntentApplication?(v127, v128, v129);
    OUTLINED_FUNCTION_8_37();
    OUTLINED_FUNCTION_19_18();

    OUTLINED_FUNCTION_33_13();
    outlined destroy of IntentApplication?(v130, v131, v132);
    OUTLINED_FUNCTION_3_35();
    _s10OmniSearch0B10ResultItemOWOhTm_8(v62, v133);
    v134 = OUTLINED_FUNCTION_106_11();
    v135(v134);
  }

  else
  {

    outlined destroy of IntentApplication?(v264, &_s15OmniSearchTypes20SpotlightRankingItemVSgMd, &_s15OmniSearchTypes20SpotlightRankingItemVSgMR);
    OUTLINED_FUNCTION_3_35();
    _s10OmniSearch0B10ResultItemOWOhTm_8(v62, v136);
    v137 = OUTLINED_FUNCTION_106_11();
    v138(v137);
    v139 = *(v240 + 32);
    v139();
    (v139)(v257 + v118[5]);
  }

  *(v257 + v118[8]) = 1;
  *(v257 + v118[9]) = 1;
  v140 = v257;
LABEL_48:
  outlined init with take of SearchResult(v140, v266);
  OUTLINED_FUNCTION_44_0();
  v144 = v118;
LABEL_49:
  __swift_storeEnumTagSinglePayload(v141, v142, v143, v144);
  OUTLINED_FUNCTION_148();
}

void MobileSMSDocument.withUpdatedPhotoAttachments(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_155();
  v130 = v20;
  v131 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes22PreExtractedBreadcrumbVSgMd, &_s15OmniSearchTypes22PreExtractedBreadcrumbVSgMR);
  OUTLINED_FUNCTION_114(v22);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_49_3();
  v129 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes22PreExtractedSharedLinkVSgMd, &_s15OmniSearchTypes22PreExtractedSharedLinkVSgMR);
  OUTLINED_FUNCTION_114(v25);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_49_3();
  v128 = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes19PreExtractedContactVSgMd, &_s15OmniSearchTypes19PreExtractedContactVSgMR);
  OUTLINED_FUNCTION_114(v28);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_49_3();
  v127 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes16PreExtractedCardVSgMd, &_s15OmniSearchTypes16PreExtractedCardVSgMR);
  OUTLINED_FUNCTION_114(v31);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_49_3();
  v126 = v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes26PartialExtractedAttributesVSgMd, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMR);
  v35 = OUTLINED_FUNCTION_114(v34);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_39_0();
  v125 = v36;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v37);
  v39 = v109 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes19DataDetectorResultsVSgMd, &_s15OmniSearchTypes19DataDetectorResultsVSgMR);
  v41 = OUTLINED_FUNCTION_114(v40);
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_39_0();
  v116 = v42;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v43);
  v45 = v109 - v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v47 = OUTLINED_FUNCTION_114(v46);
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_39_0();
  v133 = v48;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v49);
  v51 = v109 - v50;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v53 = OUTLINED_FUNCTION_114(v52);
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_39_0();
  v132 = v54;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v55);
  v57 = v109 - v56;
  v58 = WalletPass.id.getter();
  v123 = v59;
  v124 = v58;
  v60 = WalletPass.title.getter();
  v121 = v61;
  v122 = v60;
  v62 = WalletPass.description.getter();
  v119 = v63;
  v120 = v62;
  v64 = NoteDocument.folderName.getter();
  v117 = v65;
  v118 = v64;
  v66 = EmailDocument.authorNames.getter();
  v67 = MobileSMSDocument.isFromMe.getter();
  v68 = EmailDocument.to.getter();
  MobileSMSDocument.date.getter();
  MobileSMSDocument.contentURL.getter();
  v69 = MobileSMSDocument.serviceName.getter();
  v114 = v70;
  v115 = v69;
  v71 = MobileSMSDocument.chatMessages.getter();
  OUTLINED_FUNCTION_137_4(v71);
  v72 = type metadata accessor for DataDetectorResults();
  v73 = v45;
  OUTLINED_FUNCTION_10_24(v45, v74, v75, v72);
  type metadata accessor for PartialExtractedAttributes();
  v76 = v39;
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v77, v78, v79, v80);
  if (one-time initialization token for search != -1)
  {
    OUTLINED_FUNCTION_1_31();
    swift_once();
  }

  v81 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_200(v81, static Logging.search);
  v82 = Logger.logObject.getter();
  v83 = static os_log_type_t.info.getter();
  if (OUTLINED_FUNCTION_88_0(v83))
  {
    v84 = OUTLINED_FUNCTION_172();
    *v84 = 0;
    _os_log_impl(&dword_25D85C000, v82, v83, "MobileSMSDocument: chatParticipants set from both 'from' and 'to' as there's no chatParticipants passed-in", v84, 2u);
    OUTLINED_FUNCTION_13_18();
  }

  v112 = v57;
  outlined init with copy of EagerResolutionService?();
  v111 = v51;
  outlined init with copy of EagerResolutionService?();
  v110 = v67;
  v109[1] = v66;
  v134 = static LLMFormatter.formatMessageSenderNames(names:isFromMe:)(v66, v67 & 1);

  specialized Array.append<A>(contentsOf:)(v85);
  v86 = v134;
  outlined init with copy of EagerResolutionService?();
  outlined init with copy of EagerResolutionService?();
  v87 = type metadata accessor for PreExtractedCard();
  OUTLINED_FUNCTION_10_24(v126, v88, v89, v87);
  v90 = type metadata accessor for PreExtractedContact();
  OUTLINED_FUNCTION_10_24(v127, v91, v92, v90);
  v93 = type metadata accessor for PreExtractedSharedLink();
  OUTLINED_FUNCTION_10_24(v128, v94, v95, v93);
  type metadata accessor for PreExtractedBreadcrumb();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v96, v97, v98, v99);

  v108 = v113;
  v107 = v114;
  v105 = v100;
  v106 = v115;
  v104 = v133;
  v103 = v132;
  v102 = v110;
  OUTLINED_FUNCTION_180_5();
  MobileSMSDocument.init(id:chatId:displayName:body:from:isFromMe:to:date:contentURL:photoAttachments:serviceName:chatName:chatParticipants:chatMessages:dataDetectorResults:extractedEventsLLMConsumableDescription:partialExtractedAttributes:preExtractedCard:preExtractedContact:preExtractedSharedLink:preExtractedBreadcrumb:)(v124, v123, v122, v121, v120, v119, v118, v117, v101, v102, v68, v103, v104, v105, v106, v107, 0, 0, v86, v108);
  outlined destroy of IntentApplication?(v76, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMd, &_s15OmniSearchTypes26PartialExtractedAttributesVSgMR);
  outlined destroy of IntentApplication?(v73, &_s15OmniSearchTypes19DataDetectorResultsVSgMd, &_s15OmniSearchTypes19DataDetectorResultsVSgMR);
  outlined destroy of IntentApplication?(v111, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  outlined destroy of IntentApplication?(v112, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_148();
}

id @nonobjc LSBundleRecord.__allocating_init(bundleIdentifier:allowPlaceholder:)(uint64_t a1, uint64_t a2, char a3)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x25F89F4C0](a1);

  v9[0] = 0;
  v5 = [swift_getObjCClassFromMetadata() bundleRecordWithBundleIdentifier:v4 allowPlaceholder:a3 & 1 error:v9];

  if (v5)
  {
    v6 = v9[0];
  }

  else
  {
    v7 = v9[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v5;
}

uint64_t closure #1 in static LocalIndexClient.checkEmbeddingCompleteness()()
{
  v1 = type metadata accessor for OSSignpostID();
  v0[19] = v1;
  v0[20] = *(v1 - 8);
  v0[21] = swift_task_alloc();
  v0[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in static LocalIndexClient.checkEmbeddingCompleteness());
}

{
  if (one-time initialization token for searchSignposter != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for OSSignposter();
  OUTLINED_FUNCTION_200(v1, static Logging.searchSignposter);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v2 = OSSignposter.logHandle.getter();
  v3 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v4 = OUTLINED_FUNCTION_172();
    *v4 = 0;
    v5 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_25D85C000, v2, v3, v5, "LocalIndexClient.checkEmbeddingCompleteness", "", v4, 2u);
    OUTLINED_FUNCTION_37_0();
  }

  v6 = OUTLINED_FUNCTION_88();
  v7(v6);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v0[23] = OSSignpostIntervalState.init(id:isOpen:)();
  v8 = OUTLINED_FUNCTION_54_0();
  v9(v8);
  if (one-time initialization token for search != -1)
  {
    OUTLINED_FUNCTION_1_31();
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  v0[24] = __swift_project_value_buffer(v10, static Logging.search);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();
  if (OUTLINED_FUNCTION_88_0(v12))
  {
    *OUTLINED_FUNCTION_172() = 0;
    OUTLINED_FUNCTION_25_6();
    _os_log_impl(v13, v14, v15, v16, v17, 2u);
    OUTLINED_FUNCTION_2_8();
  }

  v18 = [objc_opt_self() defaultSearchableIndex];
  v0[25] = v18;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = closure #1 in static LocalIndexClient.checkEmbeddingCompleteness();
  v19 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySds5Error_pGMd, &_sSccySds5Error_pGMR);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned Double, @unowned NSError?) -> () with result type Double;
  v0[13] = &block_descriptor_37;
  v0[14] = v19;
  [v18 embeddingCompletenessForBundle:0 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_47();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 208) = v4;
  if (v4)
  {
    v5 = closure #1 in static LocalIndexClient.checkEmbeddingCompleteness();
  }

  else
  {
    v5 = closure #1 in static LocalIndexClient.checkEmbeddingCompleteness();
  }

  return MEMORY[0x2822009F8](v5);
}

{
  OUTLINED_FUNCTION_78();
  v1 = *(v0 + 144);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (OUTLINED_FUNCTION_88_0(v3))
  {
    v4 = OUTLINED_FUNCTION_51_0();
    *v4 = 134217984;
    *(v4 + 4) = v1;
    OUTLINED_FUNCTION_25_6();
    _os_log_impl(v5, v6, v7, v8, v9, 0xCu);
    OUTLINED_FUNCTION_2_8();
  }

  *(v0 + 224) = 0;
  *(v0 + 232) = 0;
  *(v0 + 216) = v1;
  if (one-time initialization token for shared != -1)
  {
    v10 = OUTLINED_FUNCTION_5_0(&one-time initialization token for shared);
  }

  v11 = OUTLINED_FUNCTION_60_12(v10, static ContextManager.shared);

  return MEMORY[0x2822009F8](v11);
}

{
  OUTLINED_FUNCTION_78();
  v0 = OUTLINED_FUNCTION_83_13();
  ContextManager.set(indexContext:)(v0, v1, v2);
  v3 = OUTLINED_FUNCTION_83_13();
  outlined consume of IndexContext?(v3, v4, v5);
  v6 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v6);
}

{
  OUTLINED_FUNCTION_78();
  v1 = *(v0 + 184);
  outlined consume of IndexContext?(*(v0 + 216), *(v0 + 224), *(v0 + 232));
  $defer #1 () in closure #1 in static LocalIndexClient.checkEmbeddingCompleteness()(v1);

  OUTLINED_FUNCTION_127();

  return v2();
}

uint64_t closure #1 in static LocalIndexClient.checkEmbeddingCompleteness()(uint64_t a1)
{
  v2 = *(v1 + 200);
  v3 = *(v1 + 208);
  swift_willThrow();

  v4 = v3;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v1 + 208);
    v8 = OUTLINED_FUNCTION_51_0();
    v9 = OUTLINED_FUNCTION_173_0();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    OUTLINED_FUNCTION_49_16(&dword_25D85C000, v12, v6, "LocalIndexClient.checkEmbeddingCompleteness - Error querying embedding completeness: %@");
    outlined destroy of IntentApplication?(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_72_9();
    OUTLINED_FUNCTION_37_0();
  }

  v13 = *(v1 + 208);

  v14 = v13;
  *(v1 + 232) = v13;
  *(v1 + 216) = xmmword_25DBC9A70;
  if (one-time initialization token for shared != -1)
  {
    v14 = OUTLINED_FUNCTION_5_0(&one-time initialization token for shared);
  }

  v15 = OUTLINED_FUNCTION_60_12(v14, static ContextManager.shared);

  return MEMORY[0x2822009F8](v15);
}

uint64_t $defer #1 () in closure #1 in static LocalIndexClient.checkEmbeddingCompleteness()(uint64_t a1)
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
    _os_signpost_emit_with_name_impl(&dword_25D85C000, v10, v11, v14, "LocalIndexClient.checkEmbeddingCompleteness", v12, v13, 2u);
    MEMORY[0x25F8A1050](v13, -1, -1);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned Double, @unowned NSError?) -> () with result type Double(uint64_t a1, void *a2, double a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v6 = a2;
    return specialized _resumeUnsafeThrowingContinuationWithError<A>(_:_:)();
  }

  else
  {
    v8 = *v5;

    return specialized _resumeUnsafeThrowingContinuation<A>(_:_:)(v8, a3);
  }
}

uint64_t LocalIndexClient.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  return v0;
}

uint64_t LocalIndexClient.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t protocol witness for LocalIndexClientProtocol.search(spotlightRequest:) in conformance LocalIndexClient(uint64_t a1, uint64_t *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for specialized closure #1 in Array.oms_mapWithTaskGroup<A>(ignoreOrder:itemTransform:);

  return LocalIndexClient.search(spotlightRequest:)(a1, a2);
}

Swift::String __swiftcall ItemFetcher.queryStringForEventSources(eventItems:)(Swift::OpaquePointer eventItems)
{
  v2.super.isa = specialized Array.count.getter();
  isa = v2.super.isa;
  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  v7 = MEMORY[0x277D84F90];
  while (isa != v5)
  {
    if ((eventItems._rawValue & 0xC000000000000001) != 0)
    {
      v2.super.isa = MEMORY[0x25F89FFD0](v5, eventItems._rawValue);
    }

    else
    {
      if (v5 >= *((eventItems._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_23;
      }

      v2.super.isa = *(eventItems._rawValue + v5 + 4);
    }

    v8 = (v5 + 1);
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    EventSourceInfo.init(from:)(v43, v2);
    v5 = (v5 + 1);
    if (*&v43[8])
    {
      v2.super.isa = swift_isUniquelyReferenced_nonNull_native();
      if ((v2.super.isa & 1) == 0)
      {
        v15 = OUTLINED_FUNCTION_44();
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v15, v16, v17, v7);
        v7 = v2.super.isa;
      }

      v10 = *(v7 + 16);
      v9 = *(v7 + 24);
      if (v10 >= v9 >> 1)
      {
        OUTLINED_FUNCTION_26_3(v9);
        OUTLINED_FUNCTION_61_19();
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v18, v19, v20, v21);
        v7 = v2.super.isa;
      }

      v45 = *&v43[32];
      v46 = *&v43[48];
      v11 = *v43;
      *&v43[64] = *v43;
      v44 = *&v43[16];
      *(v7 + 16) = v10 + 1;
      v12 = (v7 + (v10 << 6));
      v13 = v44;
      v14 = v46;
      v12[4] = v45;
      v12[5] = v14;
      v12[2] = v11;
      v12[3] = v13;
      v5 = v8;
    }
  }

  v22 = *(v7 + 16);
  if (v22)
  {
    v42 = v6;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v22, 0);
    v23 = 32;
    v24 = v6;
    do
    {
      v25 = *(v7 + v23);
      v26 = *(v7 + v23 + 16);
      v27 = *(v7 + v23 + 48);
      v45 = *(v7 + v23 + 32);
      v46 = v27;
      *&v43[64] = v25;
      v44 = v26;
      v40 = 40;
      v41 = 0xE100000000000000;
      outlined init with copy of EventSourceInfo(&v43[64], v39);
      v28 = EventSourceInfo.queryString.getter();
      MEMORY[0x25F89F6C0](v28);

      MEMORY[0x25F89F6C0](41, 0xE100000000000000);
      outlined destroy of EventSourceInfo(&v43[64]);
      v30 = v40;
      v29 = v41;
      v42 = v24;
      v32 = *(v24 + 16);
      v31 = *(v24 + 24);
      if (v32 >= v31 >> 1)
      {
        v34 = OUTLINED_FUNCTION_26_3(v31);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v34, v32 + 1, 1);
        v24 = v42;
      }

      *(v24 + 16) = v32 + 1;
      v33 = v24 + 16 * v32;
      *(v33 + 32) = v30;
      *(v33 + 40) = v29;
      v23 += 64;
      --v22;
    }

    while (v22);
  }

  else
  {

    v24 = MEMORY[0x277D84F90];
  }

  v39[0] = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  v35 = lazy protocol witness table accessor for type [String] and conformance [A]();
  OUTLINED_FUNCTION_216_4(v35, v36, v37, v35);
  OUTLINED_FUNCTION_140_2();

  v2.super.isa = OUTLINED_FUNCTION_94();
LABEL_24:
  result._object = v3;
  result._countAndFlagsBits = v2.super.isa;
  return result;
}

uint64_t ItemFetcher.fetchSourceCSSI(for:)(uint64_t a1)
{
  *(v2 + 136) = a1;
  *(v2 + 144) = v1;
  v3 = OUTLINED_FUNCTION_29();
  return MEMORY[0x2822009F8](v3);
}

uint64_t ItemFetcher.fetchSourceCSSI(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v23 = (*(**(v20 + 144) + 80))(*(v20 + 136), a2, a3, a4, a5, a6, a7, a8);
  v25 = v24;
  v26 = HIBYTE(v24) & 0xF;
  if ((v24 & 0x2000000000000000) == 0)
  {
    v26 = v23 & 0xFFFFFFFFFFFFLL;
  }

  if (v26)
  {
    v27 = v23;
    if (one-time initialization token for search != -1)
    {
LABEL_30:
      OUTLINED_FUNCTION_1_31();
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    *(v20 + 152) = OUTLINED_FUNCTION_200(v28, static Logging.search);

    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = OUTLINED_FUNCTION_51_0();
      v60 = OUTLINED_FUNCTION_49_0();
      *v31 = 136315138;
      OUTLINED_FUNCTION_119();
      *(v31 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
      OUTLINED_FUNCTION_70_0(&dword_25D85C000, v32, v30, "Fetching event source CSItems with query: %s");
      __swift_destroy_boxed_opaque_existential_1Tm(v60);
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_72_9();
    }

    v56 = v27;
    v57 = v25;
    v33 = [objc_allocWithZone(MEMORY[0x277CC34A0]) init];
    *(v20 + 160) = v33;
    if (one-time initialization token for fetchAttributes != -1)
    {
      OUTLINED_FUNCTION_76_13(&one-time initialization token for fetchAttributes);
    }

    v34 = *(v20 + 136);
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v33 setFetchAttributes_];

    v36 = specialized Array.count.getter();
    v37 = 0;
    v58 = v20;
    *(v20 + 168) = v36;
    v27 = v34 & 0xC000000000000001;
    v25 = v34 & 0xFFFFFFFFFFFFFF8;
    v59 = MEMORY[0x277D84F90];
    while (v36 != v37)
    {
      if (v27)
      {
        v38 = MEMORY[0x25F89FFD0](v37, v58[17]);
      }

      else
      {
        if (v37 >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_29;
        }

        v38 = *(v34 + 32 + 8 * v37);
      }

      v39 = v38;
      v20 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.eventSourceBundleIdentifier.getter([v38 attributeSet]);
      OUTLINED_FUNCTION_82_0();

      ++v37;
      if (v22)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v43 = OUTLINED_FUNCTION_44();
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v43);
          v59 = v44;
        }

        v41 = *(v59 + 16);
        v40 = *(v59 + 24);
        if (v41 >= v40 >> 1)
        {
          v45 = OUTLINED_FUNCTION_26_3(v40);
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v45);
          v59 = v46;
        }

        *(v59 + 16) = v41 + 1;
        v42 = v59 + 16 * v41;
        *(v42 + 32) = v21;
        *(v42 + 40) = v22;
        v37 = v20;
      }
    }

    v47 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(v59);
    v48 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSS_ShySSGTt0g5(v47);
    outlined bridged method (mbnn) of @objc CSSearchQueryContext.bundleIDs.setter(v48, v33);
    objc_allocWithZone(MEMORY[0x277CC3498]);
    v49 = v33;
    v50 = @nonobjc CSSearchQuery.init(queryString:queryContext:)(v56, v57, v33);
    v58[22] = v50;
    v51 = swift_task_alloc();
    v58[23] = v51;
    *(v51 + 16) = v50;
    v52 = swift_task_alloc();
    v58[24] = v52;
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo16CSSearchableItemCGMd, &_sSaySo16CSSearchableItemCGMR);
    v58[25] = v53;
    *v52 = v58;
    v52[1] = ItemFetcher.fetchSourceCSSI(for:);

    return MEMORY[0x2822007B8](v58 + 16, 0, 0, 0xD000000000000015, 0x800000025DBF6F90, partial apply for closure #2 in ItemFetcher.fetchSourceCSSI(for:), v51, v53, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo16CSSearchableItemCGMd, &_sSaySo16CSSearchableItemCGMR);
    Dictionary.init(dictionaryLiteral:)();
    OUTLINED_FUNCTION_62();

    return v54();
  }
}

uint64_t ItemFetcher.fetchSourceCSSI(for:)()
{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  v1 = *v0;
  OUTLINED_FUNCTION_11();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_29();

  return MEMORY[0x2822009F8](v3);
}

void ItemFetcher.fetchSourceCSSI(for:)()
{
  v2 = 0;
  v3 = *(v1 + 128);
  v53 = v3 & 0xFFFFFFFFFFFFFF8;
  v54 = v3 & 0xC000000000000001;
  v4 = MEMORY[0x277D84F98];
LABEL_2:
  for (i = v2; ; ++i)
  {
    if (i == *(v1 + 168))
    {

      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = *(v1 + 176);
        v34 = *(v1 + 160);
        OUTLINED_FUNCTION_51_0();
        v57 = OUTLINED_FUNCTION_10_23();
        *v0 = 136642819;
        Dictionary.description.getter();
        v35 = v4;
        v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

        *(v0 + 4) = v36;
        v4 = v35;
        OUTLINED_FUNCTION_25_6();
        _os_log_impl(v37, v38, v39, v40, v41, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v57);
        OUTLINED_FUNCTION_72_9();
        OUTLINED_FUNCTION_2_8();
      }

      else
      {
        v42 = *(v1 + 176);
      }

      OUTLINED_FUNCTION_62();

      v43(v4);
      return;
    }

    v6 = *(v1 + 136);
    if ((v6 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x25F89FFD0](i);
    }

    else
    {
      if (i >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_58;
      }

      v7 = *(v6 + 8 * i + 32);
    }

    v2 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v8 = v7;
    EventSourceInfo.init(from:)((v1 + 16), v8);
    v9 = *(v1 + 24);
    if (v9)
    {
      v44 = v4;
      v45 = *(v1 + 40);
      v48 = *(v1 + 48);
      v49 = *(v1 + 16);
      v46 = *(v1 + 32);
      v47 = *(v1 + 56);
      v51 = *(v1 + 72);
      v52 = *(v1 + 64);
      v55 = specialized Array.count.getter();
      v10 = 0;
      v50 = v3;
      while (1)
      {
        if (v55 == v10)
        {
          outlined destroy of IntentApplication?(v1 + 16, &_s10OmniSearch15EventSourceInfoVSgMd, &_s10OmniSearch15EventSourceInfoVSgMR);
          v26 = [v8 uniqueIdentifier];
          v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();

          swift_isUniquelyReferenced_nonNull_native();
          *&v56 = v44;
          OUTLINED_FUNCTION_196_5();
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v27, v28, v29, v30);

          v4 = v44;
          goto LABEL_2;
        }

        if (v54)
        {
          v11 = MEMORY[0x25F89FFD0](v10, v3);
        }

        else
        {
          if (v10 >= *(v53 + 16))
          {
            goto LABEL_60;
          }

          v11 = *(v3 + 8 * v10 + 32);
        }

        v12 = v11;
        if (__OFADD__(v10, 1))
        {
          goto LABEL_59;
        }

        v13 = [v11 attributeSet];
        v14 = MEMORY[0x25F89F4C0](v52, v51);
        v15 = [v13 attributeForKey_];

        if (v15)
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
        }

        else
        {
          v56 = 0u;
          v58 = 0u;
        }

        *(v1 + 80) = v56;
        *(v1 + 96) = v58;
        if (!*(v1 + 104))
        {
          break;
        }

        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_45;
        }

        v17 = *(v1 + 112);
        v16 = *(v1 + 120);
        v18 = outlined bridged method (pb) of @objc CSSearchableItem.bundleID.getter(v12);
        if (!v19)
        {

          goto LABEL_45;
        }

        if (v18 == v49 && v19 == v9)
        {
        }

        else
        {
          v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v21 & 1) == 0)
          {

            v3 = v50;
            goto LABEL_46;
          }
        }

        if (v17 == v48 && v16 == v47)
        {

          v3 = v50;
        }

        else
        {
          _stringCompareWithSmolCheck(_:_:expecting:)();
          OUTLINED_FUNCTION_175_3();
          v3 = v50;
          if ((v17 & 1) == 0)
          {
            goto LABEL_45;
          }
        }

        v23 = outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.title.getter([v12 attributeSet], &selRef_contentType);
        if (!v24)
        {
          goto LABEL_45;
        }

        if (v23 == v46 && v24 == v45)
        {
        }

        else
        {
          _stringCompareWithSmolCheck(_:_:expecting:)();
          OUTLINED_FUNCTION_175_3();
          if ((v17 & 1) == 0)
          {
            goto LABEL_45;
          }
        }

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
LABEL_46:
        ++v10;
      }

      outlined destroy of IntentApplication?(v1 + 80, &_sypSgMd, &_sypSgMR);
LABEL_45:

      goto LABEL_46;
    }
  }

  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
}

uint64_t closure #2 in ItemFetcher.fetchSourceCSSI(for:)(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo16CSSearchableItemCGs5NeverOGMd, &_sScCySaySo16CSSearchableItemCGs5NeverOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &aBlock - v7;
  v9 = swift_allocObject();
  *(v9 + 16) = MEMORY[0x277D84F90];
  v19 = partial apply for closure #1 in closure #2 in ItemFetcher.fetchSourceCSSI(for:);
  v20 = v9;
  aBlock = MEMORY[0x277D85DD0];
  v16 = 1107296256;
  v17 = thunk for @escaping @callee_guaranteed (@guaranteed [CSSearchableItem]) -> ();
  v18 = &block_descriptor_7;
  v10 = _Block_copy(&aBlock);

  [a2 setFoundItemsHandler_];
  _Block_release(v10);
  (*(v5 + 16))(v8, a1, v4);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  (*(v5 + 32))(v12 + v11, v8, v4);
  *(v12 + ((v6 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = v9;
  v19 = partial apply for closure #2 in closure #2 in ItemFetcher.fetchSourceCSSI(for:);
  v20 = v12;
  aBlock = MEMORY[0x277D85DD0];
  v16 = 1107296256;
  v17 = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
  v18 = &block_descriptor_30_0;
  v13 = _Block_copy(&aBlock);

  [a2 setCompletionHandler_];
  _Block_release(v13);
  [a2 start];
}

uint64_t closure #1 in closure #2 in ItemFetcher.fetchSourceCSSI(for:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();

  specialized Array.append<A>(contentsOf:)(v2);
  return swift_endAccess();
}

uint64_t closure #2 in closure #2 in ItemFetcher.fetchSourceCSSI(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo16CSSearchableItemCGs5NeverOGMd, &_sScCySaySo16CSSearchableItemCGs5NeverOGMR);
  return CheckedContinuation.resume(returning:)();
}

uint64_t protocol witness for ItemFetcherProtocol.fetchSourceCSSI(for:) in conformance ItemFetcher(uint64_t a1)
{
  v6 = (*(**v1 + 88) + **(**v1 + 88));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = closure #1 in AnySearchEntityPreprocessing.init(_:)partial apply;

  return v6(a1);
}

void *CSSearchableItem.isSyndicatedPhoto.getter()
{
  v1 = [v0 attributeSet];
  IsSyndicatedPhotos = CSSearchableItemAttributeSet.spotlightSearchResult.getter();

  if (IsSyndicatedPhotos)
  {
    v3 = outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.title.getter(IsSyndicatedPhotos, &selRef_sectionBundleIdentifier);
    IsSyndicatedPhotos = v4;
    if (v4)
    {
      v5 = MEMORY[0x25F89F4C0](v3, v4);

      IsSyndicatedPhotos = SSSectionIsSyndicatedPhotos();
    }
  }

  return IsSyndicatedPhotos;
}

uint64_t CSSearchableItemAttributeSet.spotlightSearchResult.getter()
{
  type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for CSCustomAttributeKey, 0x277CC33B0);
  v1 = static CSCustomAttributeKey.spotlightSFSearchResultKey.getter();
  v2 = [v0 valueForCustomKey_];

  if (v2)
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      return result;
    }

    swift_unknownObjectRelease();
  }

  return 0;
}

uint64_t CSSearchableItem.isSupportedSharedLinkType.getter()
{
  outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.title.getter([v0 attributeSet], &selRef_bundleID);
  v2 = v1;
  if (v1)
  {
    OUTLINED_FUNCTION_189_5();
    OUTLINED_FUNCTION_117_11();
    v4 = v4 && v2 == v3;
    if (v4)
    {
    }

    else
    {
      v5 = OUTLINED_FUNCTION_169_7();

      if ((v5 & 1) == 0)
      {
        LOBYTE(v2) = 0;
        return v2 & 1;
      }
    }

    v6 = outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.title.getter([v0 attributeSet], &selRef_messageType);
    if (v7)
    {
      v8 = v6;
    }

    else
    {
      v8 = 0;
    }

    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = 0xE000000000000000;
    }

    v12[0] = v8;
    v12[1] = v9;
    MEMORY[0x28223BE20](v6);
    v11[2] = v12;
    LOBYTE(v2) = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v11, &outlined read-only object #0 of CSSearchableItem.isSupportedSharedLinkType.getter);
  }

  return v2 & 1;
}

uint64_t static CSCustomAttributeKey.spotlightSFSearchResultKey.getter()
{
  type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for CSCustomAttributeKey, 0x277CC33B0);
  v0._object = 0x800000025DBF6FB0;
  v0._countAndFlagsBits = 0xD000000000000018;
  result = CSCustomAttributeKey.__allocating_init(keyName:)(v0);
  if (!result)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

CSCustomAttributeKey_optional __swiftcall CSCustomAttributeKey.__allocating_init(keyName:)(Swift::String keyName)
{
  object = keyName._object;
  countAndFlagsBits = keyName._countAndFlagsBits;
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v4 = MEMORY[0x25F89F4C0](countAndFlagsBits, object);

  v5 = [v3 initWithKeyName_];

  v7 = v5;
  result.value.super.isa = v7;
  result.is_nil = v6;
  return result;
}

void key path setter for CSSearchableItemAttributeSet.spotlightSearchResult : CSSearchableItemAttributeSet(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  CSSearchableItemAttributeSet.spotlightSearchResult.setter(v1);
}

void (*CSSearchableItemAttributeSet.spotlightSearchResult.modify(uint64_t *a1))(void **a1, char a2)
{
  a1[1] = v1;
  *a1 = CSSearchableItemAttributeSet.spotlightSearchResult.getter();
  return CSSearchableItemAttributeSet.spotlightSearchResult.modify;
}

void CSSearchableItemAttributeSet.spotlightSearchResult.modify(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    CSSearchableItemAttributeSet.spotlightSearchResult.setter(v2);
  }

  else
  {
    CSSearchableItemAttributeSet.spotlightSearchResult.setter(*a1);
  }
}

id CSSearchableItemAttributeSet.timeIsUnknownBool.getter()
{
  v1 = type metadata accessor for Date();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_36();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v9 = OUTLINED_FUNCTION_114(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_109();
  v12 = v10 - v11;
  *&v14 = MEMORY[0x28223BE20](v13).n128_u64[0];
  v16 = &v40 - v15;
  v17 = [v0 startDate];
  if (!v17)
  {
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v32, v33, v34, v1);
    v35 = v16;
LABEL_7:
    outlined destroy of IntentApplication?(v35, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    return 0;
  }

  v18 = v17;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v19 = *(v3 + 32);
  v19(v16, v7, v1);
  OUTLINED_FUNCTION_44_0();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v1);
  outlined destroy of IntentApplication?(v16, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v23 = [v0 endDate];
  if (!v23)
  {
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v36, v37, v38, v1);
    v35 = v12;
    goto LABEL_7;
  }

  v24 = v23;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v25 = OUTLINED_FUNCTION_34_11();
  (v19)(v25);
  OUTLINED_FUNCTION_44_0();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v1);
  outlined destroy of IntentApplication?(v12, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v29 = [v0 timeIsUnknown];
  if (!v29)
  {
    return 0;
  }

  v30 = v29;
  v31 = [v29 BOOLValue];

  return v31;
}

void CSSearchableItemAttributeSet.keyStrings.getter()
{
  v1 = [v0 attributeDictionary];
  v2 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = *(v2 + 16);
  if (v3)
  {
    v37 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
    v4 = v37;
    v7 = specialized Dictionary.startIndex.getter();
    v8 = 0;
    v9 = v2 + 64;
    v27 = v5;
    v28 = v3;
    while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v2 + 32))
    {
      v10 = v7 >> 6;
      if ((*(v9 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_23;
      }

      if (*(v2 + 36) != v5)
      {
        goto LABEL_24;
      }

      v30 = v5;
      v29 = v6;
      outlined init with copy of AnyHashable(*(v2 + 48) + 40 * v7, v34);
      outlined init with copy of Any(*(v2 + 56) + 32 * v7, v36);
      v31[0] = v34[0];
      v31[1] = v34[1];
      v32 = v35;
      outlined init with take of Any(v36, &v33);
      v11 = AnyHashable.description.getter();
      v13 = v12;
      outlined destroy of IntentApplication?(v31, &_ss11AnyHashableV3key_yp5valuetMd, &_ss11AnyHashableV3key_yp5valuetMR);
      v37 = v4;
      v15 = *(v4 + 16);
      v14 = *(v4 + 24);
      v16 = v4;
      if (v15 >= v14 >> 1)
      {
        v26 = OUTLINED_FUNCTION_26_3(v14);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v26, v15 + 1, 1);
        v16 = v37;
      }

      *(v16 + 16) = v15 + 1;
      v17 = v16 + 16 * v15;
      *(v17 + 32) = v11;
      *(v17 + 40) = v13;
      v18 = 1 << *(v2 + 32);
      if (v7 >= v18)
      {
        goto LABEL_25;
      }

      v9 = v2 + 64;
      if ((*(v2 + 64 + 8 * v10) & (1 << v7)) == 0)
      {
        goto LABEL_26;
      }

      v4 = v16;
      if (*(v2 + 36) != v30)
      {
        goto LABEL_27;
      }

      OUTLINED_FUNCTION_179_6();
      if (v20)
      {
        v21 = v10 << 6;
        v22 = v10 + 1;
        v23 = (v2 + 72 + 8 * v10);
        while (v22 < (v18 + 63) >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            OUTLINED_FUNCTION_218_4(v19, v29);
            v18 = __clz(__rbit64(v24)) + v21;
            goto LABEL_19;
          }
        }

        OUTLINED_FUNCTION_218_4(v19, v29);
      }

      else
      {
        OUTLINED_FUNCTION_178_6();
      }

LABEL_19:
      v6 = 0;
      ++v8;
      v7 = v18;
      v5 = v27;
      if (v8 == v28)
      {

        return;
      }
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
LABEL_27:
    __break(1u);
  }

  else
  {
  }
}

void CSSearchableItemAttributeSet.kvStrings.getter()
{
  v1 = [v0 attributeDictionary];
  v2 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = *(v2 + 16);
  if (v3)
  {
    v45 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
    v4 = v45;
    v7 = specialized Dictionary.startIndex.getter();
    v8 = 0;
    v9 = v2 + 64;
    v32 = v5;
    v33 = v3;
    v31 = v2 + 72;
    v34 = v2 + 64;
    while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v2 + 32))
    {
      v10 = v7 >> 6;
      if ((*(v9 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_23;
      }

      if (*(v2 + 36) != v5)
      {
        goto LABEL_24;
      }

      v36 = v8;
      v37 = v5;
      v35 = v6;
      outlined init with copy of AnyHashable(*(v2 + 48) + 40 * v7, v42);
      outlined init with copy of Any(*(v2 + 56) + 32 * v7, v44);
      v39[0] = v42[0];
      v39[1] = v42[1];
      v40 = v43;
      outlined init with take of Any(v44, v41);
      v11 = AnyHashable.description.getter();
      v13 = v12;
      outlined init with copy of Any(v41, v38);
      v14 = String.init<A>(describing:)();
      v16 = v15;
      outlined destroy of IntentApplication?(v39, &_ss11AnyHashableV3key_yp5valuetMd, &_ss11AnyHashableV3key_yp5valuetMR);
      v45 = v4;
      v17 = v2;
      v19 = *(v4 + 16);
      v18 = *(v4 + 24);
      v20 = v4;
      if (v19 >= v18 >> 1)
      {
        v30 = OUTLINED_FUNCTION_26_3(v18);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v30, v19 + 1, 1);
        v20 = v45;
      }

      *(v20 + 16) = v19 + 1;
      v21 = (v20 + 32 * v19);
      v21[4] = v11;
      v21[5] = v13;
      v21[6] = v14;
      v21[7] = v16;
      v22 = 1 << *(v17 + 32);
      if (v7 >= v22)
      {
        goto LABEL_25;
      }

      v2 = v17;
      v9 = v34;
      if ((*(v34 + 8 * v10) & (1 << v7)) == 0)
      {
        goto LABEL_26;
      }

      v4 = v20;
      if (*(v2 + 36) != v37)
      {
        goto LABEL_27;
      }

      OUTLINED_FUNCTION_179_6();
      if (v24)
      {
        v25 = v10 << 6;
        v26 = v10 + 1;
        v27 = (v31 + 8 * v10);
        while (v26 < (v22 + 63) >> 6)
        {
          v29 = *v27++;
          v28 = v29;
          v25 += 64;
          ++v26;
          if (v29)
          {
            OUTLINED_FUNCTION_218_4(v23, v35);
            v22 = __clz(__rbit64(v28)) + v25;
            goto LABEL_19;
          }
        }

        OUTLINED_FUNCTION_218_4(v23, v35);
      }

      else
      {
        OUTLINED_FUNCTION_178_6();
      }

LABEL_19:
      v6 = 0;
      v8 = v36 + 1;
      v7 = v22;
      v5 = v32;
      if (v36 + 1 == v33)
      {

        return;
      }
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
LABEL_27:
    __break(1u);
  }

  else
  {
  }
}

id @nonobjc SPSearchQueryContext.init(search:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    MEMORY[0x25F89F4C0](a1);
    OUTLINED_FUNCTION_227_2();
  }

  else
  {
    v2 = 0;
  }

  v4 = [v3 initWithSearchString_];

  return v4;
}

uint64_t outlined bridged method (pb) of @objc CSSearchableItemAttributeSet.photosSceneClassifications.getter(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  OUTLINED_FUNCTION_65_0();
  type metadata accessor for TRIClient(v4, v5, v6);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v7;
}

uint64_t outlined bridged method (pb) of @objc CSSearchableItemAttributeSet.authorNames.getter(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

uint64_t specialized LocalIndexClient.__allocating_init(searchAgent:itemFetcher:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v24 = a7;
  v12 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = swift_allocObject();
  (*(v16 + 16))(v19, a1, a4);
  (*(v12 + 16))(v14, a2, a5);
  v21 = specialized LocalIndexClient.init(searchAgent:itemFetcher:)(v19, v14, v20, a4, a5, a6, v24);
  (*(v12 + 8))(a2, a5);
  (*(v16 + 8))(a1, a4);
  return v21;
}

uint64_t specialized LocalIndexClient.init(searchAgent:itemFetcher:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v20 = a4;
  v21 = a6;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(&v19);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1Tm, a1, a4);
  v17 = a5;
  v18 = a7;
  v14 = __swift_allocate_boxed_opaque_existential_1Tm(&v16);
  (*(*(a5 - 8) + 32))(v14, a2, a5);
  outlined init with take of ResponseOverrideMatcherProtocol(&v19, a3 + 16);
  outlined init with take of ResponseOverrideMatcherProtocol(&v16, a3 + 56);
  return a3;
}

uint64_t _s10OmniSearch0B10ResultItemOWOcTm_3()
{
  OUTLINED_FUNCTION_134();
  v1(0);
  OUTLINED_FUNCTION_17();
  v2 = OUTLINED_FUNCTION_94();
  v3(v2);
  return v0;
}

uint64_t _s10OmniSearch0B10ResultItemOWOhTm_8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_17();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t dispatch thunk of LocalIndexSearchAgent.search(with:)()
{
  OUTLINED_FUNCTION_28_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_23(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_46_0(v1);

  return v4(v3);
}

uint64_t dispatch thunk of ItemFetcherProtocol.fetchSourceCSSI(for:)()
{
  OUTLINED_FUNCTION_28_0();
  v5 = (v1 + *v1);
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_84(v2);
  v3 = OUTLINED_FUNCTION_83_13();

  return v5(v3);
}

uint64_t dispatch thunk of LocalIndexClientProtocol.search(spotlightRequest:)()
{
  OUTLINED_FUNCTION_28_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_23(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_46_0(v1);

  return v4(v3);
}

uint64_t dispatch thunk of ItemFetcher.fetchSourceCSSI(for:)()
{
  OUTLINED_FUNCTION_78();
  v3 = v2;
  v6 = (*(*v0 + 88) + **(*v0 + 88));
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  OUTLINED_FUNCTION_84(v4);

  return v6(v3);
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t partial apply for closure #2 in closure #2 in ItemFetcher.fetchSourceCSSI(for:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo16CSSearchableItemCGs5NeverOGMd, &_sScCySaySo16CSSearchableItemCGs5NeverOGMR);
  OUTLINED_FUNCTION_21(v3);
  v5 = v4;
  v7 = v6;
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = *(v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return closure #2 in closure #2 in ItemFetcher.fetchSourceCSSI(for:)(a1, v1 + v8, v9);
}

uint64_t partial apply for closure #1 in static LocalIndexClient.checkEmbeddingCompleteness()()
{
  OUTLINED_FUNCTION_78();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_23(v0);
  *v1 = v2;
  v1[1] = partial apply for closure #2 in AnswerResolver.resolve(extractedResults:options:);
  OUTLINED_FUNCTION_103_10();

  return closure #1 in static LocalIndexClient.checkEmbeddingCompleteness()();
}

void OUTLINED_FUNCTION_3_49()
{
  *(v0 - 128) = 1;
  *(v0 - 128) = 1;
  *(v0 - 128) = 1;
  *(v0 - 128) = 1;
  *(v0 - 128) = 1;
  *(v0 - 128) = 1;
  *(v0 - 128) = 1;
  *(v0 - 128) = 1;
}

void OUTLINED_FUNCTION_7_39()
{
  *(v0 - 144) = 1;
  *(v0 - 144) = 1;
  *(v0 - 144) = 1;
  *(v0 - 144) = 1;
  *(v0 - 144) = 1;
  *(v0 - 144) = 1;
  *(v0 - 144) = 1;
  *(v0 - 144) = 1;
}

void OUTLINED_FUNCTION_8_37()
{
  *(v1 - 128) = v0;
  *(v1 - 128) = v0;
  *(v1 - 128) = v0;
  *(v1 - 128) = v0;
  *(v1 - 128) = v0;
  *(v1 - 128) = v0;
  *(v1 - 128) = v0;
  *(v1 - 128) = v0;
}

__n128 OUTLINED_FUNCTION_16_31()
{
  result = *(v0 - 144);
  *(v0 - 128) = *(v0 - 160);
  *(v0 - 112) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_27_22(uint64_t a1)
{

  return swift_once();
}

double OUTLINED_FUNCTION_44_21()
{
  result = 0.0;
  *(v0 - 160) = 0u;
  *(v0 - 144) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_69_14()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

id OUTLINED_FUNCTION_71_16()
{
  v2 = *(v0 - 416);

  return v2;
}

uint64_t OUTLINED_FUNCTION_73_14()
{

  return _s10OmniSearch0B10ResultItemOWOcTm_3();
}

uint64_t OUTLINED_FUNCTION_76_13(uint64_t a1)
{

  return swift_once();
}

id OUTLINED_FUNCTION_77_14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 - 256) = a1;

  return [v3 (v2 + 116)];
}

uint64_t OUTLINED_FUNCTION_79_13(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_80_12(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_82_14()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

id OUTLINED_FUNCTION_93_13()
{

  return [v0 attributeSet];
}

uint64_t OUTLINED_FUNCTION_94_10()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_109_14()
{
  *(v1 + *(v0 + 32)) = 1;
  *(v1 + *(v0 + 36)) = 1;
  return v1;
}

void OUTLINED_FUNCTION_110_12(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

id OUTLINED_FUNCTION_160_5(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  *v9 = a9;
  *(v9 + 4) = v10;
  *a1 = v10;

  return v10;
}

id OUTLINED_FUNCTION_162_7()
{
  v3 = *(v0 + 568);
  v4 = *(v1 - 416);

  return [v4 v3];
}

uint64_t OUTLINED_FUNCTION_163_6()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

void OUTLINED_FUNCTION_164_5(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

void OUTLINED_FUNCTION_165_4()
{
  v2 = *(v0 - 192);
}

void *OUTLINED_FUNCTION_168_5(uint64_t a1)
{

  return _bridgeAnyObjectToAny(_:)();
}

uint64_t OUTLINED_FUNCTION_169_7()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_170_5()
{

  return outlined init with copy of EagerResolutionService?();
}

uint64_t OUTLINED_FUNCTION_171_5()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

void *OUTLINED_FUNCTION_173_5(uint64_t a1)
{

  return _bridgeAnyObjectToAny(_:)();
}

uint64_t OUTLINED_FUNCTION_174_5()
{
}

id OUTLINED_FUNCTION_175_6()
{

  return [v0 (v1 + 116)];
}

uint64_t OUTLINED_FUNCTION_186_4@<X0>(uint64_t a1@<X8>)
{
  result = v1;
  *(v2 - 216) = *(a1 + 8);
  return result;
}

double OUTLINED_FUNCTION_191_7()
{
  result = 0.0;
  *(v0 - 128) = 0u;
  *(v0 - 112) = 0u;
  return result;
}

void OUTLINED_FUNCTION_215_1()
{

  JUMPOUT(0x25F89F6C0);
}

uint64_t OUTLINED_FUNCTION_216_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return BidirectionalCollection<>.joined(separator:)();
}

void OUTLINED_FUNCTION_217_4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_218_4@<X0>(uint64_t a1@<X1>, char a2@<W8>)
{

  return outlined consume of [String : String].Index._Variant(v2, a1, a2 & 1);
}

uint64_t OUTLINED_FUNCTION_220_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

BOOL OUTLINED_FUNCTION_221_4()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_222_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_225_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return __swift_storeEnumTagSinglePayload(a1, v4, 1, a4);
}

id OUTLINED_FUNCTION_226_2()
{
  v2 = *(v0 - 200);

  return v2;
}

uint64_t OUTLINED_FUNCTION_227_2()
{
}

uint64_t _sScg7addTask8priority9operationyScPSg_xyYaKYAcntF10OmniSearch15SpotlightResultV_s5Error_pTg5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v17 - v8;
  outlined init with copy of CheckedContinuation<(), Never>?(a1, v17 - v8, &_sScPSgMd, &_sScPSgMR);
  v10 = type metadata accessor for TaskPriority();
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    outlined destroy of (offset: Int, element: SearchResult)(v9, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v10 - 8) + 8))(v9, v10);
  }

  if (*(a3 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v11 = dispatch thunk of Actor.unownedExecutor.getter();
    v13 = v12;
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  v14 = *v4;
  v15 = (v13 | v11);
  if (v13 | v11)
  {
    v18[0] = 0;
    v18[1] = 0;
    v15 = v18;
    v18[2] = v11;
    v18[3] = v13;
  }

  v17[1] = 1;
  v17[2] = v15;
  v17[3] = v14;
  swift_task_create();
}

uint64_t *LocalSearchManager.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_12_35(&one-time initialization token for shared);
  }

  return &static LocalSearchManager.shared;
}

uint64_t DiagnoseticImp.tailspinRequest(_:_:_:_:_:_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, Class isa, char a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v17 = MEMORY[0x25F89F4C0](a1, a2);
  v18 = MEMORY[0x25F89F4C0](a3, a4);
  v19 = MEMORY[0x25F89F4C0](a5, a6);
  if (isa)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  v20 = DRTailspinRequest();

  return v20;
}

id SPClientSession.queryTask(queryContext:)(uint64_t a1)
{
  v2 = [v1 queryTaskWithContext_];

  return v2;
}

id @objc SPClientSession.queryTask(queryContext:)(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  v6 = SPClientSession.queryTask(queryContext:)(v4);

  return v6;
}

uint64_t SpotlightResult.sections.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t SpotlightResult.ecrResult.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

OmniSearch::SpotlightResult __swiftcall SpotlightResult.init(sections:ecrResult:)(Swift::OpaquePointer sections, Swift::OpaquePointer ecrResult)
{
  v2->_rawValue = sections._rawValue;
  v2[1]._rawValue = ecrResult._rawValue;
  result.ecrResult = ecrResult;
  result.sections = sections;
  return result;
}

uint64_t LocalSearchManager.__allocating_init(infinitePatience:session:)(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  swift_getObjectType();
  v2 = OUTLINED_FUNCTION_24_24();

  return specialized LocalSearchManager.init(infinitePatience:session:)(v2, v3, v4);
}

uint64_t static LocalSearchManager.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    OUTLINED_FUNCTION_12_35(&one-time initialization token for shared);
  }
}

Swift::Int LocalSearchManager.LocalSearchManagerError.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x25F8A0680](a1 & 1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance LocalSearchManager.LocalSearchManagerError(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  LocalSearchManager.LocalSearchManagerError.hash(into:)(v4, v2);
  return Hasher._finalize()();
}

uint64_t LocalSearchManager.init(infinitePatience:session:)(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  v2 = OUTLINED_FUNCTION_24_24();

  return specialized LocalSearchManager.init(infinitePatience:session:)(v2, v3, v4);
}

Swift::Void __swiftcall LocalSearchManager.deactivate()()
{
  [*(v0 + 16) deactivate];
  v1 = objc_opt_self();
  v2 = [v1 sharedResourcesManager];
  v3 = MEMORY[0x25F89F4C0](0x6867696C746F7053, 0xE900000000000074);
  [v2 loadAllParametersForClient_];

  v4 = [v1 sharedResourcesManager];
  v5 = MEMORY[0x25F89F4C0](0xD000000000000012, 0x800000025DBF70F0);
  [v4 loadAllParametersForClient_];

  v6 = [v1 sharedResourcesManager];
  v7 = MEMORY[0x25F89F4C0](1818845517, 0xE400000000000000);
  [v6 loadAllParametersForClient_];
}

uint64_t LocalSearchManager.search(with:)()
{
  OUTLINED_FUNCTION_48();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = type metadata accessor for OSSignpostID();
  v1[5] = v4;
  v1[6] = *(v4 - 8);
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v5);
}

{
  if (one-time initialization token for searchComponentSignposter != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v1, static Logging.searchComponentSignposter);
  if (one-time initialization token for searchSignposter != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_200(v1, static Logging.searchSignposter);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v2 = OSSignposter.logHandle.getter();
  v3 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v4 = OUTLINED_FUNCTION_172();
    *v4 = 0;
    v5 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_25D85C000, v2, v3, v5, "LocalSearchManager.search", "", v4, 2u);
    OUTLINED_FUNCTION_37_0();
  }

  v6 = v0[7];
  v7 = v0[8];
  v8 = v0[5];
  v9 = v0[6];

  (*(v9 + 16))(v6, v7, v8);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v0[9] = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v9 + 8))(v7, v8);
  if (one-time initialization token for search != -1)
  {
    OUTLINED_FUNCTION_1_31();
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_200(v10, static Logging.search);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = OUTLINED_FUNCTION_172();
    *v13 = 0;
    _os_log_impl(&dword_25D85C000, v11, v12, "LocalSearchManager.search - Starting search", v13, 2u);
    OUTLINED_FUNCTION_37_0();
  }

  v14 = v0[3];
  v15 = v0[4];

  v16 = [*(v15 + 16) queryTaskWithQueryContext_];
  v0[10] = v16;
  if (v16)
  {
    v17 = v16;
    v18 = v0[3];
    swift_unknownObjectRetain();
    [v18 currentTime];
    v20 = v19;
    v21 = objc_allocWithZone(type metadata accessor for LocalQueryTask(0));
    v22 = specialized LocalQueryTask.init(queryTask:startTime:diagnostics:)(v17, v21, v20);
    v0[11] = v22;
    v23 = *((*MEMORY[0x277D85000] & *v22) + 0xE0);
    v34 = (v23 + *v23);
    v24 = swift_task_alloc();
    v0[12] = v24;
    *v24 = v0;
    v24[1] = LocalSearchManager.search(with:);
    v25 = v0[2];

    return v34(v25);
  }

  else
  {
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_16_11(v28))
    {
      *OUTLINED_FUNCTION_172() = 0;
      OUTLINED_FUNCTION_9_11(&dword_25D85C000, v29, v30, "LocalSearchManager.search - Failed to create query task");
      OUTLINED_FUNCTION_42_0();
    }

    v31 = lazy protocol witness table accessor for type LocalSearchManager.LocalSearchManagerError and conformance LocalSearchManager.LocalSearchManagerError();
    OUTLINED_FUNCTION_5_12(&type metadata for LocalSearchManager.LocalSearchManagerError, v31);
    *v32 = 1;
    swift_willThrow();
    $defer #1 () in LocalSearchManager.search(with:)(v0[9]);

    OUTLINED_FUNCTION_127();

    return v33();
  }
}

{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_52();
  OUTLINED_FUNCTION_47();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_11();
  *v5 = v4;
  *(v6 + 104) = v0;

  OUTLINED_FUNCTION_69();

  return MEMORY[0x2822009F8](v7);
}

{
  OUTLINED_FUNCTION_78();
  v1 = *(v0 + 72);

  swift_unknownObjectRelease();
  $defer #1 () in LocalSearchManager.search(with:)(v1);

  OUTLINED_FUNCTION_127();

  return v2();
}

{
  OUTLINED_FUNCTION_78();

  swift_unknownObjectRelease();
  $defer #1 () in LocalSearchManager.search(with:)(*(v0 + 72));

  OUTLINED_FUNCTION_127();

  return v1();
}

uint64_t $defer #1 () in LocalSearchManager.search(with:)(uint64_t a1)
{
  v1 = type metadata accessor for OSSignpostError();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OSSignpostID();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for searchComponentSignposter != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v9, static Logging.searchComponentSignposter);
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
    _os_signpost_emit_with_name_impl(&dword_25D85C000, v10, v11, v14, "LocalSearchManager.search", v12, v13, 2u);
    MEMORY[0x25F8A1050](v13, -1, -1);
  }

  return (*(v6 + 8))(v8, v5);
}

id LocalQueryTask.__allocating_init(queryTask:startTime:diagnostics:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  __swift_mutable_project_boxed_opaque_existential_1(a2, a2[3]);
  OUTLINED_FUNCTION_21_28();
  MEMORY[0x28223BE20](v5);
  v7 = OUTLINED_FUNCTION_13_27(v6, v11);
  v8(v7);
  v9 = OUTLINED_FUNCTION_19_30();
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v9;
}

uint64_t LocalSearchManager.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for LocalIndexSearchAgent.search(with:) in conformance LocalSearchManager(uint64_t a1, uint64_t a2)
{
  v8 = (*(**v2 + 120) + **(**v2 + 120));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = partial apply for closure #2 in AnswerResolver.resolve(extractedResults:options:);

  return v8(a1, a2);
}

void *decodeECRMapping(from:)(unint64_t a1)
{
  isUniquelyReferenced_nonNull_native = a1;
  if (a1 >> 62)
  {
    goto LABEL_30;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = MEMORY[0x25F8A01B0](v35))
  {
    if (i < 1)
    {
      __break(1u);
LABEL_37:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }

    v3 = 0;
    v39 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
    v4 = MEMORY[0x277D84F98];
    v37 = i;
    v38 = isUniquelyReferenced_nonNull_native;
    while (1)
    {
      if (v39)
      {
        v5 = MEMORY[0x25F89FFD0](v3, isUniquelyReferenced_nonNull_native);
      }

      else
      {
        v5 = *(isUniquelyReferenced_nonNull_native + 8 * v3 + 32);
      }

      v6 = v5;
      if (one-time initialization token for search != -1)
      {
        OUTLINED_FUNCTION_1_31();
        swift_once();
      }

      v7 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_200(v7, static Logging.search);
      v8 = v6;
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = v4;
        v12 = swift_slowAlloc();
        swift_slowAlloc();
        *v12 = 136643075;
        outlined bridged method (pb) of @objc SPECRGroundedPerson.fullName.getter(v8, &selRef_fullName);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
        String.init<A>(describing:)();
        v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

        *(v12 + 4) = v13;
        *(v12 + 12) = 2085;
        outlined bridged method (pb) of @objc SPECRGroundedPerson.fullName.getter(v8, &selRef_relationLabel);
        String.init<A>(describing:)();
        v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

        *(v12 + 14) = v14;
        i = v37;
        _os_log_impl(&dword_25D85C000, v9, v10, "decodeECRMapping's Spotlight SPQueryResponse ecrGroundedPersons: %{sensitive}s, %{sensitive}s)", v12, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_42_0();
        v4 = v11;
        isUniquelyReferenced_nonNull_native = v38;
        OUTLINED_FUNCTION_42_0();
      }

      v15 = outlined bridged method (pb) of @objc SPECRGroundedPerson.fullName.getter(v8, &selRef_fullName);
      if (!v16)
      {
        goto LABEL_19;
      }

      v17 = v15;
      v18 = v16;
      outlined bridged method (pb) of @objc SPECRGroundedPerson.fullName.getter(v8, &selRef_relationLabel);
      if (!v19)
      {

LABEL_19:

        goto LABEL_26;
      }

      v20 = String.lowercased()();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v40 = v4;
      v21 = specialized __RawDictionaryStorage.find<A>(_:)(v20._countAndFlagsBits, v20._object);
      v23 = v4[2];
      v24 = (v22 & 1) == 0;
      v25 = v23 + v24;
      if (__OFADD__(v23, v24))
      {
        break;
      }

      v26 = v21;
      v27 = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVyS2SGMd, &_ss17_NativeDictionaryVyS2SGMR);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v25))
      {
        v28 = specialized __RawDictionaryStorage.find<A>(_:)(v20._countAndFlagsBits, v20._object);
        isUniquelyReferenced_nonNull_native = v38;
        if ((v27 & 1) != (v29 & 1))
        {
          goto LABEL_37;
        }

        v26 = v28;
      }

      else
      {
        isUniquelyReferenced_nonNull_native = v38;
      }

      v4 = v40;
      if (v27)
      {
        v30 = (v40[7] + 16 * v26);
        *v30 = v17;
        v30[1] = v18;
      }

      else
      {
        v40[(v26 >> 6) + 8] |= 1 << v26;
        *(v40[6] + 16 * v26) = v20;
        v31 = (v40[7] + 16 * v26);
        *v31 = v17;
        v31[1] = v18;
        v32 = v40[2];
        v33 = __OFADD__(v32, 1);
        v34 = v32 + 1;
        if (v33)
        {
          goto LABEL_29;
        }

        v40[2] = v34;
      }

      i = v37;
LABEL_26:
      if (i == ++v3)
      {
        return v4;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    if (isUniquelyReferenced_nonNull_native < 0)
    {
      v35 = isUniquelyReferenced_nonNull_native;
    }

    else
    {
      v35 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
    }
  }

  return MEMORY[0x277D84F98];
}