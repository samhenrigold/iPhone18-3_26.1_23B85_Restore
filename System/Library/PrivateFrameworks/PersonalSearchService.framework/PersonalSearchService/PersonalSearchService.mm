uint64_t EchoServiceImp.handle(_:progressReporter:)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 8);

  return v6(a1, a2);
}

uint64_t protocol witness for ServiceProtocol.init() in conformance EchoServiceImp@<X0>(uint64_t *a1@<X8>)
{
  result = EchoServiceImp.__allocating_init()();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ServiceProtocol.handle(_:) in conformance EchoServiceImp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = protocol witness for ServiceProtocol.handle(_:) in conformance EchoServiceImp;

  return MEMORY[0x28219B198](a1, a2, a3, a4);
}

uint64_t protocol witness for ServiceProtocol.handle(_:) in conformance EchoServiceImp()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t protocol witness for ServiceProtocol.handle(_:progressReporter:) in conformance EchoServiceImp(uint64_t a1, uint64_t *a2)
{
  *(v2 + 16) = a1;
  v4 = *a2;
  v3 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  *v5 = v2;
  v5[1] = protocol witness for ServiceProtocol.handle(_:progressReporter:) in conformance EchoServiceImp;

  return EchoServiceImp.handle(_:progressReporter:)(v4, v3);
}

uint64_t protocol witness for ServiceProtocol.handle(_:progressReporter:) in conformance EchoServiceImp(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  *v5 = a1;
  v5[1] = a2;
  v6 = *(v8 + 8);

  return v6();
}

uint64_t getEnumTagSinglePayload for os_unfair_lock_s(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for os_unfair_lock_s(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

void type metadata accessor for os_unfair_lock_s()
{
  if (!lazy cache variable for type metadata for os_unfair_lock_s)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for os_unfair_lock_s);
    }
  }
}

uint64_t PersonalSearchResult.init(_:locale:)@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v53 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v52 = v46 - v5;
  v6 = type metadata accessor for SearchResultItem();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3();
  v12 = v11 - v10;
  v13 = type metadata accessor for AppEntityItem();
  OUTLINED_FUNCTION_1();
  v49 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_3();
  v48 = v17 - v16;

  v18 = SearchResult.csItem.getter();
  v19 = [v18 attributeSet];

  v20 = [v19 attributeForKey_];
  if (v20)
  {
    _bridgeAnyObjectToAny(_:)();
    v21 = swift_unknownObjectRelease();
  }

  else
  {
    v56 = 0u;
    v57 = 0u;
  }

  v58 = v56;
  v59 = v57;
  if (*(&v57 + 1))
  {
    if (OUTLINED_FUNCTION_14(v21, v22, v23, MEMORY[0x277D837D0]))
    {
      v24 = v55;
      v51 = v54;
      goto LABEL_9;
    }
  }

  else
  {
    outlined destroy of Any?(&v58, &_sypSgMd, &_sypSgMR);
  }

  v51 = 0;
  v24 = 0xE000000000000000;
LABEL_9:
  v50 = v24;
  v25 = SearchResult.csItem.getter();
  v26 = [v25 attributeSet];

  v27 = MEMORY[0x25F8B3DB0](0xD000000000000018, 0x800000025E473200);
  v28 = [v26 attributeForKey_];

  if (v28)
  {
    _bridgeAnyObjectToAny(_:)();
    v29 = swift_unknownObjectRelease();
  }

  else
  {
    v56 = 0u;
    v57 = 0u;
  }

  v58 = v56;
  v59 = v57;
  if (*(&v57 + 1))
  {
    if (OUTLINED_FUNCTION_14(v29, v30, v31, MEMORY[0x277D837D0]))
    {
      v32 = v54;
    }

    else
    {
      v32 = 0;
    }
  }

  else
  {
    outlined destroy of Any?(&v58, &_sypSgMd, &_sypSgMR);
    v32 = 0;
  }

  v33 = a1;
  MEMORY[0x25F8B3B20]();
  if ((*(v8 + 88))(v12, v6) == *MEMORY[0x277D36DC0])
  {
    (*(v8 + 96))(v12, v6);
    v46[2] = v32;
    v34 = v48;
    v35 = v49;
    v36 = OUTLINED_FUNCTION_10();
    v37(v36);
    v38 = AppEntityItem.id.getter();
    v47 = v13;
    v46[1] = v38;
    AppEntityItem.bundleId.getter();
    AppEntityItem.typeId.getter();
    v39 = type metadata accessor for URL();
    __swift_storeEnumTagSinglePayload(v52, 1, 1, v39);
    PersonalSearchResult.init(appEntityIdentifier:bundleId:typeId:title:subtitle:icon:)();
    type metadata accessor for SearchResult();
    OUTLINED_FUNCTION_0();
    (*(v40 + 8))(v33);
    return (*(v35 + 8))(v34, v47);
  }

  else
  {

    (*(v8 + 8))(v12, v6);
    v42 = SearchResult.csItem.getter();
    v43 = [v42 uniqueIdentifier];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    SearchResult.bundleId.getter();
    v44 = type metadata accessor for URL();
    __swift_storeEnumTagSinglePayload(v52, 1, 1, v44);
    PersonalSearchResult.init(spotlightIdentifier:bundleId:title:subtitle:icon:)();
    type metadata accessor for SearchResult();
    OUTLINED_FUNCTION_0();
    return (*(v45 + 8))(v33);
  }
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

uint64_t outlined init with copy of LocalIndexClientProtocol(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t PersonalSearchServiceImp.__allocating_init()()
{
  type metadata accessor for LocalIndexClient();
  v0 = LocalIndexClient.__allocating_init()();
  v1 = swift_allocObject();

  return specialized PersonalSearchServiceImp.init(_:)(v0, v1);
}

uint64_t PersonalSearchServiceImp.__allocating_init(_:)(void *a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a1, v5);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3();
  v10 = v9 - v8;
  (*(v11 + 16))(v9 - v8);
  v12 = a2(v10, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v12;
}

uint64_t PersonalSearchServiceImp.deinit()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v8 = v7 - v6;
  static Logging.server.getter();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    *OUTLINED_FUNCTION_9() = 0;
    OUTLINED_FUNCTION_15(&dword_25E46D000, v11, v12, "PersonalSearchService: deinitialized");
    OUTLINED_FUNCTION_8();
  }

  (*(v4 + 8))(v8, v2);
  PersonalSearchServiceImp.deactivate()();
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 16));

  return v1;
}

void PersonalSearchServiceImp.deactivate()()
{
  v1 = *(v0 + 64);
  os_unfair_lock_lock(v1 + 4);
  closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)specialized partial apply();
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t PersonalSearchServiceImp.__deallocating_deinit()
{
  PersonalSearchServiceImp.deinit();

  return MEMORY[0x2821FE8D8](v0, 72, 7);
}

Swift::Void __swiftcall PersonalSearchServiceImp.cancel()()
{
  v0 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3();
  v6 = v5 - v4;
  static Logging.server.getter();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    *OUTLINED_FUNCTION_9() = 0;
    OUTLINED_FUNCTION_15(&dword_25E46D000, v9, v10, "PersonalSearchService: cancel");
    OUTLINED_FUNCTION_8();
  }

  (*(v2 + 8))(v6, v0);
  PersonalSearchServiceImp.deactivate()();
}

void PersonalSearchServiceImp.activate()()
{
  v1 = *(v0 + 64);
  os_unfair_lock_lock(v1 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)();
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t closure #1 in PersonalSearchServiceImp.activate()(uint64_t result)
{
  if ((*(result + 56) & 1) == 0)
  {
    v1 = result;
    __swift_project_boxed_opaque_existential_1((result + 16), *(result + 40));
    result = dispatch thunk of LocalIndexClientProtocol.activate()();
    *(v1 + 56) = 1;
  }

  return result;
}

uint64_t closure #1 in PersonalSearchServiceImp.deactivate()(uint64_t result)
{
  if (*(result + 56) == 1)
  {
    v1 = result;
    __swift_project_boxed_opaque_existential_1((result + 16), *(result + 40));
    result = dispatch thunk of LocalIndexClientProtocol.deactivate()();
    *(v1 + 56) = 0;
  }

  return result;
}

uint64_t PersonalSearchServiceImp.search(_:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for SearchServiceResult();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = type metadata accessor for EntityTypeIdentifier();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v5 = type metadata accessor for SearchEntityTypeIdentifier();
  v2[10] = v5;
  v2[11] = *(v5 - 8);
  v2[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19PersonalSearchTypes0aB12QueryOptionsVSgMd, &_s19PersonalSearchTypes0aB12QueryOptionsVSgMR);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v6 = type metadata accessor for SpotlightIndexRequest();
  v2[15] = v6;
  v2[16] = *(v6 - 8);
  v2[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](PersonalSearchServiceImp.search(_:), 0, 0);
}

uint64_t PersonalSearchServiceImp.search(_:)()
{
  v1 = PersonalSearchQuery.typeIdentifiers.getter();
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[11];
    v4 = v0[8];
    v30 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v5 = *(v4 + 16);
    v4 += 16;
    v6 = v1 + ((*(v4 + 64) + 32) & ~*(v4 + 64));
    v28 = *(v4 + 56);
    v29 = v5;
    do
    {
      v29(v0[9], v6, v0[7]);
      EntityTypeIdentifier.bundleId.getter();
      PersonalSearchQueryOptions.locale.getter();
      SearchEntityTypeIdentifier.init(bundleId:typeName:)();
      v7 = OUTLINED_FUNCTION_10();
      v8(v7);
      v10 = *(v30 + 16);
      v9 = *(v30 + 24);
      if (v10 >= v9 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1);
      }

      v11 = v0[12];
      v12 = v0[10];
      *(v30 + 16) = v10 + 1;
      (*(v3 + 32))(v30 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v10, v11, v12);
      v6 += v28;
      --v2;
    }

    while (v2);
  }

  v13 = v0[14];
  PersonalSearchQuery.rawQuery.getter();
  PersonalSearchQuery.options.getter();
  Options = type metadata accessor for PersonalSearchQueryOptions();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, Options);
  v16 = v0[14];
  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of Any?(v16, &_s19PersonalSearchTypes0aB12QueryOptionsVSgMd, &_s19PersonalSearchTypes0aB12QueryOptionsVSgMR);
  }

  else
  {
    PersonalSearchQueryOptions.maxResult.getter();
    (*(*(Options - 8) + 8))(v16, Options);
  }

  v17 = v0[13];
  PersonalSearchQuery.options.getter();
  v18 = __swift_getEnumTagSinglePayload(v17, 1, Options);
  v19 = v0[13];
  if (v18 == 1)
  {
    outlined destroy of Any?(v0[13], &_s19PersonalSearchTypes0aB12QueryOptionsVSgMd, &_s19PersonalSearchTypes0aB12QueryOptionsVSgMR);
  }

  else
  {
    PersonalSearchQueryOptions.locale.getter();
    (*(*(Options - 8) + 8))(v19, Options);
  }

  v20 = v0;
  v21 = v0[3];
  SpotlightIndexRequest.init(userQuery:targetMatches:spQUParse:allowedTypes:locale:)();
  v22 = v21[5];
  v23 = v21[6];
  __swift_project_boxed_opaque_existential_1(v21 + 2, v22);
  v24 = swift_task_alloc();
  v20[18] = v24;
  *v24 = v20;
  v24[1] = PersonalSearchServiceImp.search(_:);
  v25 = v20[17];
  v26 = v20[6];

  return MEMORY[0x282196420](v26, v25, v22, v23);
}

{
  v2 = *v1;
  OUTLINED_FUNCTION_5();
  *v3 = v2;
  *(v4 + 152) = v0;

  if (v0)
  {
    v5 = PersonalSearchServiceImp.search(_:);
  }

  else
  {
    v5 = PersonalSearchServiceImp.search(_:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

{
  v1 = v0[16];
  v2 = v0[17];
  v12 = v0[15];
  v4 = v0[5];
  v3 = v0[6];
  v5 = v0[4];
  v6 = v0[2];
  v7 = SearchServiceResult.searchResults.getter();
  v8 = swift_task_alloc();
  *(v8 + 16) = v6;
  v9 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay10OmniSearch0E6ResultVG_08PersonalE5Types0geF0Vs5NeverOTg5(partial apply for closure #2 in PersonalSearchServiceImp.search(_:), v8, v7);

  (*(v4 + 8))(v3, v5);
  (*(v1 + 8))(v2, v12);

  v10 = v0[1];

  return v10(v9);
}

{
  (*(v0[16] + 8))(v0[17], v0[15]);

  OUTLINED_FUNCTION_7();

  return v1();
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay10OmniSearch0E6ResultVG_08PersonalE5Types0geF0Vs5NeverOTg5(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20 = a1;
  v21 = a2;
  v19 = type metadata accessor for PersonalSearchResult();
  v6 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a3 + 16);
  v10 = MEMORY[0x277D84F90];
  if (!v9)
  {
    return v10;
  }

  v22 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9, 0);
  v10 = v22;
  v11 = *(type metadata accessor for SearchResult() - 8);
  v12 = a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v18 = v6 + 32;
  v17 = *(v11 + 72);
  while (1)
  {
    v20(v12);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v22 = v10;
    v14 = *(v10 + 16);
    v13 = *(v10 + 24);
    if (v14 >= v13 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
      v10 = v22;
    }

    *(v10 + 16) = v14 + 1;
    (*(v6 + 32))(v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v14, v8, v19);
    v12 += v17;
    if (!--v9)
    {
      return v10;
    }
  }

  __break(1u);
  return result;
}

uint64_t closure #2 in PersonalSearchServiceImp.search(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19PersonalSearchTypes0aB12QueryOptionsVSgMd, &_s19PersonalSearchTypes0aB12QueryOptionsVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for SearchResult();
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, a1);
  PersonalSearchQuery.options.getter();
  Options = type metadata accessor for PersonalSearchQueryOptions();
  if (__swift_getEnumTagSinglePayload(v6, 1, Options) == 1)
  {
    outlined destroy of Any?(v6, &_s19PersonalSearchTypes0aB12QueryOptionsVSgMd, &_s19PersonalSearchTypes0aB12QueryOptionsVSgMR);
  }

  else
  {
    PersonalSearchQueryOptions.locale.getter();
    (*(*(Options - 8) + 8))(v6, Options);
  }

  return PersonalSearchResult.init(_:locale:)(v9, a2);
}

uint64_t PersonalSearchServiceImp.handle(_:progressReporter:)(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = type metadata accessor for PersonalSearchError.ErrorType();
  v3[8] = v4;
  OUTLINED_FUNCTION_2(v4);
  v3[9] = v5;
  v3[10] = swift_task_alloc();
  v6 = type metadata accessor for PersonalSearchQuery();
  v3[11] = v6;
  OUTLINED_FUNCTION_2(v6);
  v3[12] = v7;
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v3[15] = v8;
  OUTLINED_FUNCTION_2(v8);
  v3[16] = v9;
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v10 = type metadata accessor for PersonalSearchRequest();
  v3[21] = v10;
  OUTLINED_FUNCTION_2(v10);
  v3[22] = v11;
  v3[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](PersonalSearchServiceImp.handle(_:progressReporter:), 0, 0);
}

uint64_t PersonalSearchServiceImp.handle(_:progressReporter:)()
{
  v59 = v0;
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];
  (*(v2 + 16))(v1, v0[6], v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == *MEMORY[0x277D3A2B8])
  {
    v5 = v0[23];
    v7 = v0[13];
    v6 = v0[14];
    v8 = v0[11];
    v9 = v0[12];
    (*(v0[22] + 96))(v5, v0[21]);
    (*(v9 + 32))(v6, v5, v8);
    static Logging.server.getter();
    (*(v9 + 16))(v7, v6, v8);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    v12 = os_log_type_enabled(v10, v11);
    v14 = v0[16];
    v13 = v0[17];
    v15 = v0[15];
    v16 = v0[12];
    if (v12)
    {
      v57 = v0[15];
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v58 = v18;
      *v17 = 136315138;
      v54 = PersonalSearchQuery.rawQuery.getter();
      v56 = v13;
      v20 = v19;
      v55 = v11;
      v21 = *(v16 + 8);
      v22 = OUTLINED_FUNCTION_10();
      v21(v22);
      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v20, &v58);

      *(v17 + 4) = v23;
      _os_log_impl(&dword_25E46D000, v10, v55, "PersonalSearchService: search '%s'", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_8();

      (*(v14 + 8))(v56, v57);
    }

    else
    {

      v21 = *(v16 + 8);
      v31 = OUTLINED_FUNCTION_10();
      v21(v31);
      (*(v14 + 8))(v13, v15);
    }

    v0[24] = v21;
    PersonalSearchServiceImp.activate()();
    v32 = swift_task_alloc();
    v0[25] = v32;
    *v32 = v0;
    v32[1] = PersonalSearchServiceImp.handle(_:progressReporter:);
    OUTLINED_FUNCTION_12();

    return PersonalSearchServiceImp.search(_:)(v33);
  }

  if (v4 == *MEMORY[0x277D3A2C0])
  {
    static Logging.server.getter();
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = OUTLINED_FUNCTION_9();
      *v26 = 0;
      _os_log_impl(&dword_25E46D000, v24, v25, "PersonalSearchService: preheat", v26, 2u);
      OUTLINED_FUNCTION_8();
    }

    v27 = v0[7];
    v28 = v0[5];

    v29 = OUTLINED_FUNCTION_6();
    v30(v29);
    __swift_project_boxed_opaque_existential_1((v27 + 16), *(v27 + 40));
    OUTLINED_FUNCTION_6();
    dispatch thunk of LocalIndexClientProtocol.preheat()();
    goto LABEL_20;
  }

  if (v4 == *MEMORY[0x277D3A2C8])
  {
    static Logging.server.getter();
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v36, v37))
    {
      *OUTLINED_FUNCTION_9() = 0;
      OUTLINED_FUNCTION_13(&dword_25E46D000, v38, v39, "PersonalSearchService: activate");
      OUTLINED_FUNCTION_8();
    }

    v28 = v0[5];

    v40 = OUTLINED_FUNCTION_6();
    v41(v40);
    PersonalSearchServiceImp.activate()();
    goto LABEL_20;
  }

  if (v4 == *MEMORY[0x277D3A2B0])
  {
    static Logging.server.getter();
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v42, v43))
    {
      *OUTLINED_FUNCTION_9() = 0;
      OUTLINED_FUNCTION_13(&dword_25E46D000, v44, v45, "PersonalSearchService: deactivate");
      OUTLINED_FUNCTION_8();
    }

    v28 = v0[5];

    v46 = OUTLINED_FUNCTION_6();
    v47(v46);
    PersonalSearchServiceImp.deactivate()();
LABEL_20:
    *v28 = 0;
    v48 = *MEMORY[0x277D3A2F0];
    type metadata accessor for PersonalSearchResponse();
    OUTLINED_FUNCTION_0();
    (*(v49 + 104))(v28, v48);
    OUTLINED_FUNCTION_4();

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_12();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_12();

  return MEMORY[0x2821FDEB8](v52);
}

{
  v1 = *(v0 + 216);
  v2 = *(v0 + 40);
  (*(v0 + 192))(*(v0 + 112), *(v0 + 88));
  *v2 = v1;
  v3 = *MEMORY[0x277D3A2F0];
  type metadata accessor for PersonalSearchResponse();
  OUTLINED_FUNCTION_0();
  (*(v4 + 104))(v2, v3);
  OUTLINED_FUNCTION_4();

  OUTLINED_FUNCTION_7();

  return v5();
}

{
  v1 = v0[26];
  v2 = v0[24];
  v3 = v0[5];
  (*(v0[9] + 104))(v0[10], *MEMORY[0x277D3A290], v0[8]);
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  v0[4] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  _print_unlocked<A, B>(_:_:)();
  PersonalSearchError.init(type:description:)();
  MEMORY[0x25F8B3FD0](v1);
  v4 = OUTLINED_FUNCTION_6();
  v2(v4);
  v5 = *MEMORY[0x277D3A2E8];
  type metadata accessor for PersonalSearchResponse();
  OUTLINED_FUNCTION_0();
  (*(v6 + 104))(v3, v5);
  OUTLINED_FUNCTION_4();

  OUTLINED_FUNCTION_7();

  return v7();
}

uint64_t PersonalSearchServiceImp.handle(_:progressReporter:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  OUTLINED_FUNCTION_5();
  *v6 = v5;
  *(v4 + 208) = v1;

  if (v1)
  {
    v7 = PersonalSearchServiceImp.handle(_:progressReporter:);
  }

  else
  {
    *(v4 + 216) = a1;
    v7 = PersonalSearchServiceImp.handle(_:progressReporter:);
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t protocol witness for ServiceProtocol.init() in conformance PersonalSearchServiceImp@<X0>(uint64_t *a1@<X8>)
{
  result = PersonalSearchServiceImp.__allocating_init()();
  *a1 = result;
  return result;
}

uint64_t protocol witness for ServiceProtocol.handle(_:) in conformance PersonalSearchServiceImp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = protocol witness for ServiceProtocol.handle(_:) in conformance PersonalSearchServiceImp;

  return MEMORY[0x28219B198](a1, a2, a3, a4);
}

uint64_t protocol witness for ServiceProtocol.handle(_:progressReporter:) in conformance PersonalSearchServiceImp(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for ServiceProtocol.handle(_:progressReporter:) in conformance PersonalSearchServiceImp;

  return PersonalSearchServiceImp.handle(_:progressReporter:)(a1, a2);
}

uint64_t protocol witness for ServiceProtocol.handle(_:progressReporter:) in conformance PersonalSearchServiceImp()
{
  v1 = *v0;
  OUTLINED_FUNCTION_5();
  *v2 = v1;

  OUTLINED_FUNCTION_7();

  return v3();
}

void specialized UnsafeMutablePointer.moveInitialize(from:count:)(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(void))
{
  if (a3 < a1 || (a4(0), OUTLINED_FUNCTION_0(), a1 + *(v8 + 72) * a2 <= a3))
  {
    a4(0);
    v10 = OUTLINED_FUNCTION_11();

    MEMORY[0x2821FE828](v10);
  }

  else if (a3 != a1)
  {
    v9 = OUTLINED_FUNCTION_11();

    MEMORY[0x2821FE820](v9);
  }
}

unint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    outlined init with copy of Any(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t specialized _StringGuts._deconstructUTF8<A>(scratch:)(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = _StringObject.sharedUTF8.getter();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t _StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v3 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  return v3;
}

uint64_t specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = String.UTF8View._foreignCount()())
  {
    result = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = _StringGuts._foreignCopyUTF8(into:)();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = _StringObject.sharedUTF8.getter();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result)
{
  v2 = *(result + 16);
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, uint64_t a2, uint64_t a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy19PersonalSearchTypes0dE6ResultVGMd, &_ss23_ContiguousArrayStorageCy19PersonalSearchTypes0dE6ResultVGMR, MEMORY[0x277D3A2A8], MEMORY[0x277D3A2A8]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10OmniSearch0E20EntityTypeIdentifierVGMd, &_ss23_ContiguousArrayStorageCy10OmniSearch0E20EntityTypeIdentifierVGMR, MEMORY[0x277D36DD0], MEMORY[0x277D36DD0]);
  *v3 = result;
  return result;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), uint64_t (*a8)(void))
{
  v11 = result;
  if (a3)
  {
    v12 = *(a4 + 24);
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v14 = *(a4 + 16);
  if (v13 <= v14)
  {
    v15 = *(a4 + 16);
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v21 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = a7(0);
  OUTLINED_FUNCTION_2(v16);
  v18 = *(v17 + 72);
  v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v21 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v21);
  if (!v18)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v20) == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_24;
  }

  v21[2] = v14;
  v21[3] = 2 * ((result - v20) / v18);
LABEL_19:
  v23 = *(a7(0) - 8);
  if (v11)
  {
    v24 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a4 + v24, v14, v21 + v24, a8);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v21;
}

uint64_t specialized PersonalSearchServiceImp.__allocating_init(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  (*(v7 + 16))(v9, a1, a3);
  v11 = specialized PersonalSearchServiceImp.init(_:)(v9, v10, a3, a4);
  (*(v7 + 8))(a1, a3);
  return v11;
}

uint64_t specialized PersonalSearchServiceImp.init(_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for LocalIndexClient();
  v16 = MEMORY[0x277D36F20];
  *&v14 = a1;
  *(a2 + 56) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(a2 + 64) = v8;
  static Logging.server.getter();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_25E46D000, v9, v10, "PersonalSearchService: initialized", v11, 2u);
    MEMORY[0x25F8B4070](v11, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  outlined init with take of LocalIndexClientProtocol(&v14, a2 + 16);
  return a2;
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

uint64_t specialized PersonalSearchServiceImp.init(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a3;
  v21 = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v19);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  *(a2 + 56) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(a2 + 64) = v13;
  static Logging.server.getter();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_25E46D000, v14, v15, "PersonalSearchService: initialized", v16, 2u);
    MEMORY[0x25F8B4070](v16, -1, -1);
  }

  (*(v9 + 8))(v11, v8);
  outlined init with take of LocalIndexClientProtocol(&v19, a2 + 16);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(void *a1)
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

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type PersonalSearchRequest and conformance PersonalSearchRequest(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t outlined destroy of Any?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_0();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t outlined init with take of LocalIndexClientProtocol(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t OUTLINED_FUNCTION_4()
{
}

void OUTLINED_FUNCTION_8()
{

  JUMPOUT(0x25F8B4070);
}

uint64_t OUTLINED_FUNCTION_9()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_13(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v4, a4, v5, 2u);
}

uint64_t OUTLINED_FUNCTION_14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return MEMORY[0x2821FE908](v5 - 176, v5 - 128, v4 + 8, a4, 6);
}

void OUTLINED_FUNCTION_15(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}