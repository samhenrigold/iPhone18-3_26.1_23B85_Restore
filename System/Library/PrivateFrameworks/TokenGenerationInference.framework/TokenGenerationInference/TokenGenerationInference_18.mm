void specialized AsyncLRUCache.setValue(_:node:cost:)(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v7 = v5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySay10Foundation4DataVGs5Error_pGMd, &_sScCySay10Foundation4DataVGs5Error_pGMR);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v54 - v15;
  lazy protocol witness table accessor for type AsyncLRUCache<ImageEmbeddingCache.Key, [Data]> and conformance AsyncLRUCache<A, B>();
  if (v7 != a3)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  swift_beginAccess();
  v17 = a2[6];
  v18 = *(v17 + 16);
  if (v18)
  {
    v55 = a5;
    v56 = a2;
    v21 = *(v13 + 16);
    v20 = v13 + 16;
    v19 = v21;
    v22 = v17 + ((*(v20 + 64) + 32) & ~*(v20 + 64));
    v23 = *(v20 + 56);
    v54 = v17;

    do
    {
      v19(v16, v22, v12);
      v58[0] = a1;

      CheckedContinuation.resume(returning:)();
      (*(v20 - 8))(v16, v12);
      v22 += v23;
      --v18;
    }

    while (v18);

    a5 = v55;
    a2 = v56;
  }

  a2[6] = MEMORY[0x277D84F90];
  a2[3] = a1;
  a2[4] = a5;

  v6 = v7[18];
  if (v6 >= a5)
  {

    swift_beginAccess();
    while (1)
    {
      v35 = v7[17];
      v36 = __OFADD__(a5, v35);
      v37 = a5 + v35;
      if (v36)
      {
        __break(1u);
        goto LABEL_23;
      }

      if (v6 >= v37 || !v7[14])
      {
        break;
      }

      specialized AsyncLRUCache.remove(node:)(v38);
    }

    swift_beginAccess();
    specialized LinkedList.append(node:)(a2);
    swift_endAccess();
    v39 = v7[17];
    v36 = __OFADD__(v39, a5);
    v40 = v39 + a5;
    if (v36)
    {
      __break(1u);
    }

    else
    {
      v7[17] = v40;
      if (one-time initialization token for device == -1)
      {
        goto LABEL_17;
      }
    }

    swift_once();
LABEL_17:
    v41 = type metadata accessor for Logger();
    __swift_project_value_buffer(v41, static Log.device);
    swift_retain_n();
    swift_retain_n();
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v57[0] = v45;
      *v44 = 136643587;
      v46 = a2[2];

      v47 = specialized ImageEmbeddingCache.Key.description.getter(*(v46 + 40));
      v49 = v48;

      v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v49, v57);

      *(v44 + 4) = v50;
      *(v44 + 12) = 2048;
      v51 = a2[4];

      *(v44 + 14) = v51;

      *(v44 + 22) = 2048;
      v52 = v7[17];

      *(v44 + 24) = v52;

      *(v44 + 32) = 2048;

      *(v44 + 34) = v6;

      _os_log_impl(&dword_220940000, v42, v43, "AsyncLRUCache added %{sensitive}s with cost %lld; allocated %lld of %lld", v44, 0x2Au);
      __swift_destroy_boxed_opaque_existential_1(v45);
      MEMORY[0x223D90A10](v45, -1, -1);
      MEMORY[0x223D90A10](v44, -1, -1);
    }

    else
    {
    }

    return;
  }

  v24 = one-time initialization token for device;

  if (v24 != -1)
  {
LABEL_24:
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  __swift_project_value_buffer(v25, static Log.device);
  swift_retain_n();
  swift_retain_n();
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v58[0] = v29;
    *v28 = 136643331;
    v30 = specialized ImageEmbeddingCache.Key.description.getter(*(a2[2] + 40));
    v32 = a2;
    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, v58);

    *(v28 + 4) = v33;
    *(v28 + 12) = 2048;
    v34 = v32[4];

    *(v28 + 14) = v34;

    *(v28 + 22) = 2048;

    *(v28 + 24) = v6;

    _os_log_impl(&dword_220940000, v26, v27, "AsyncLRUCache respond for %{sensitive}s with cost %lld exceeding limit %lld", v28, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v29);
    MEMORY[0x223D90A10](v29, -1, -1);
    MEMORY[0x223D90A10](v28, -1, -1);
  }

  else
  {
  }

  swift_beginAccess();

  specialized Dictionary._Variant.removeValue(forKey:)(v53);
  swift_endAccess();
}

void specialized AsyncLRUCache.remove(node:)(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  specialized LinkedList.remove(node:)(a1);
  swift_endAccess();
  swift_beginAccess();
  swift_beginAccess();

  specialized Dictionary._Variant.removeValue(forKey:)(v4);
  swift_endAccess();

  v5 = *(a1 + 32);
  v6 = *(v1 + 136);
  v7 = __OFSUB__(v6, v5);
  v8 = v6 - v5;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 136) = v8;
    if (one-time initialization token for device == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Log.device);
  swift_retain_n();
  swift_retain_n();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22[0] = v13;
    *v12 = 136643587;
    v14 = *(a1 + 16);

    v15 = specialized ImageEmbeddingCache.Key.description.getter(*(v14 + 40));
    v17 = v16;

    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, v22);

    *(v12 + 4) = v18;
    *(v12 + 12) = 2048;
    v19 = *(a1 + 32);

    *(v12 + 14) = v19;

    *(v12 + 22) = 2048;
    v20 = *(v2 + 136);

    *(v12 + 24) = v20;

    *(v12 + 32) = 2048;
    v21 = *(v2 + 144);

    *(v12 + 34) = v21;

    _os_log_impl(&dword_220940000, v10, v11, "AsyncLRUCache evicted %{sensitive}s with cost %lld; allocated %lld of %lld", v12, 0x2Au);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x223D90A10](v13, -1, -1);
    MEMORY[0x223D90A10](v12, -1, -1);
  }

  else
  {
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ImageEmbeddingCache.Key(void *a1, void *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  v4 = a2[3];
  v5 = a1[3];
  return _sSasSQRzlE2eeoiySbSayxG_ABtFZs5UInt8V_Tt1g5(a1[2], a2[2]) & (v5 == v4);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ImageEmbeddingCache.Key()
{
  v1 = *(v0 + 24);
  Hasher.init(_seed:)();
  MEMORY[0x223D8F420](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ImageEmbeddingCache.Key(uint64_t a1)
{
  v2 = *(v1 + 24);
  Hasher.init(_seed:)();
  MEMORY[0x223D8F420](v2);
  return Hasher._finalize()();
}

uint64_t ImageEmbeddingCache.init(maximumByteCount:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference13AsyncLRUCacheCyAA19ImageEmbeddingCacheC3Key33_CFAE1BBD2BB7BB3F3F8CA2528C3DB6E7LLVSay10Foundation4DataVGGMd, &_s24TokenGenerationInference13AsyncLRUCacheCyAA19ImageEmbeddingCacheC3Key33_CFAE1BBD2BB7BB3F3F8CA2528C3DB6E7LLVSay10Foundation4DataVGGMR);
  v3 = swift_allocObject();
  swift_defaultActor_initialize();
  v3[14] = 0;
  v3[15] = 0;
  v3[16] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC24TokenGenerationInference13AsyncLRUCacheC6KeyRef33_8DC87293709CC156815E18BD803FE0EELLCyAC19ImageEmbeddingCacheC0H033_CFAE1BBD2BB7BB3F3F8CA2528C3DB6E7LLVSay10Foundation4DataVG_G_AC10LinkedListAGLLV4NodeCyAE0R4DataAGLLVyAmQ_G_GTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v3[17] = 0;
  v3[18] = a1;
  *(v1 + 16) = v3;
  return v1;
}

uint64_t ImageEmbeddingCache.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void (*specialized Dictionary._Variant.subscript.modify(uint64_t *a1, void *a2))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x58uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = *v2;
  if ((*v2 & 0xC000000000000001) == 0)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6[8] = specialized Dictionary._Variant.asNative.modify(v6);
    v6[9] = specialized _NativeDictionary.subscript.modify(v6 + 4, a2, isUniquelyReferenced_nonNull_native);
    return Dictionary._Variant.subscript.modifyspecialized ;
  }

  if (v7 < 0)
  {
    v8 = *v2;
  }

  else
  {
    v8 = v7 & 0xFFFFFFFFFFFFFF8;
  }

  result = __CocoaSet.count.getter();
  if (!__OFADD__(result, 1))
  {
    v10 = _ss17_NativeDictionaryV_8capacityAByxq_Gs07__CocoaB0Vn_SitcfC24TokenGenerationInference13AsyncLRUCacheC6KeyRef33_8DC87293709CC156815E18BD803FE0EELLCyAG19ImageEmbeddingCacheC0J033_CFAE1BBD2BB7BB3F3F8CA2528C3DB6E7LLVSay10Foundation4DataVG_G_AG10LinkedListAKLLV4NodeCyAI0T4DataAKLLVyAqU_G_GTt1g5(v8, result + 1);
    v6[4] = v10;
    *v2 = v10;

    v6[10] = specialized _NativeDictionary.subscript.modify(v6, a2, 1);
    return Dictionary._Variant.subscript.modifyspecialized ;
  }

  __break(1u);
  return result;
}

void Dictionary._Variant.subscript.modifyspecialized (uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void Dictionary._Variant.subscript.modifyspecialized (void *a1)
{
  v1 = *a1;
  (*(*a1 + 80))(*a1, 0);

  free(v1);
}

void (*specialized _NativeDictionary.subscript.modify(uint64_t *a1, void *a2, char a3))(uint64_t **a1)
{
  v4 = v3;
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 8) = a2;
  *(v8 + 16) = v3;
  v10 = *v3;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  *(v9 + 32) = v12 & 1;
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
      goto LABEL_11;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a3 & 1);
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v17 & 1) == (v20 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference13AsyncLRUCacheC6KeyRef33_8DC87293709CC156815E18BD803FE0EELLCyAA19ImageEmbeddingCacheC0F033_CFAE1BBD2BB7BB3F3F8CA2528C3DB6E7LLVSay10Foundation4DataVG_GMd, &_s24TokenGenerationInference13AsyncLRUCacheC6KeyRef33_8DC87293709CC156815E18BD803FE0EELLCyAA19ImageEmbeddingCacheC0F033_CFAE1BBD2BB7BB3F3F8CA2528C3DB6E7LLVSay10Foundation4DataVG_GMR);
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v9 + 24) = v11;
  if (v17)
  {
    v21 = *(*(*v4 + 56) + 8 * v11);
  }

  else
  {
    v21 = 0;
  }

  *v9 = v21;
  return _NativeDictionary.subscript.modifyspecialized ;
}

void _NativeDictionary.subscript.modifyspecialized (uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 32);
  if (v2)
  {
    v4 = v1[3];
    v5 = *v1[2];
    if (v3)
    {
      *(v5[7] + 8 * v4) = v2;
    }

    else
    {
      specialized _NativeDictionary._insert(at:key:value:)(v4, v1[1], v2, v5);
    }
  }

  else if ((*a1)[4])
  {
    v6 = v1[3];
    v7 = *v1[2];

    specialized _NativeDictionary._delete(at:)(v6, v7);
  }

  free(v1);
}

uint64_t (*specialized Dictionary._Variant.asNative.modify(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return Dictionary._Variant.asNative.modifyspecialized ;
}

uint64_t getEnumTagSinglePayload for ImageEmbeddingCache.Key(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t storeEnumTagSinglePayload for ImageEmbeddingCache.Key(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ImageEmbeddingCache.Key and conformance ImageEmbeddingCache.Key()
{
  result = lazy protocol witness table cache variable for type ImageEmbeddingCache.Key and conformance ImageEmbeddingCache.Key;
  if (!lazy protocol witness table cache variable for type ImageEmbeddingCache.Key and conformance ImageEmbeddingCache.Key)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ImageEmbeddingCache.Key and conformance ImageEmbeddingCache.Key);
  }

  return result;
}

unint64_t specialized ImageEmbeddingCache.Key.description.getter(uint64_t a1)
{
  _StringGuts.grow(_:)(26);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v2 = swift_allocObject();
  v3 = MEMORY[0x277D83B88];
  *(v2 + 16) = xmmword_220AE8A30;
  v4 = MEMORY[0x277D83C10];
  *(v2 + 56) = v3;
  *(v2 + 64) = v4;
  *(v2 + 32) = a1;
  v5 = String.init(format:_:)();
  MEMORY[0x223D8E780](v5);

  return 0xD000000000000018;
}

uint64_t specialized static ImageEmbeddingCache.byteCount(embeddings:)(uint64_t result)
{
  v1 = 0;
  v2 = (result + 40);
  v3 = *(result + 16) + 1;
  while (--v3)
  {
    v5 = __OFADD__(v1, 16);
    v6 = v1 + 16;
    if (v5)
    {
      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v4 = *(v2 - 1);
    v7 = *v2 >> 62;
    if (v7 > 1)
    {
      if (v7 == 2)
      {
        v10 = v4 + 16;
        v8 = *(v4 + 16);
        v9 = *(v10 + 8);
        v5 = __OFSUB__(v9, v8);
        v4 = v9 - v8;
        if (v5)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v4 = 0;
      }
    }

    else if (v7)
    {
      v5 = __OFSUB__(HIDWORD(v4), v4);
      LODWORD(v4) = HIDWORD(v4) - v4;
      if (v5)
      {
        goto LABEL_19;
      }

      v4 = v4;
    }

    else
    {
      v4 = BYTE6(*v2);
    }

    v2 += 2;
    v5 = __OFADD__(v6, v4);
    v1 = v6 + v4;
    if (v5)
    {
      goto LABEL_18;
    }
  }

  result = v1 + 8;
  if (!__OFADD__(v1, 8))
  {
    return result;
  }

LABEL_21:
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type AsyncLRUCache<ImageEmbeddingCache.Key, [Data]> and conformance AsyncLRUCache<A, B>()
{
  result = lazy protocol witness table cache variable for type AsyncLRUCache<ImageEmbeddingCache.Key, [Data]> and conformance AsyncLRUCache<A, B>;
  if (!lazy protocol witness table cache variable for type AsyncLRUCache<ImageEmbeddingCache.Key, [Data]> and conformance AsyncLRUCache<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s24TokenGenerationInference13AsyncLRUCacheCyAA19ImageEmbeddingCacheC3Key33_CFAE1BBD2BB7BB3F3F8CA2528C3DB6E7LLVSay10Foundation4DataVGGMd, &_s24TokenGenerationInference13AsyncLRUCacheCyAA19ImageEmbeddingCacheC3Key33_CFAE1BBD2BB7BB3F3F8CA2528C3DB6E7LLVSay10Foundation4DataVGGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AsyncLRUCache<ImageEmbeddingCache.Key, [Data]> and conformance AsyncLRUCache<A, B>);
  }

  return result;
}

uint64_t KVLRUCache.TokenArrayWrapper.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

Swift::Int KVLRUCache.TokenArrayWrapper.hashValue.getter()
{
  Hasher.init(_seed:)();
  v1 = *(v0 + 16);
  MEMORY[0x223D8F420](*(v1 + 16));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      v4 = *v3++;
      MEMORY[0x223D8F420](v4);
      --v2;
    }

    while (v2);
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance KVLRUCache.TokenArrayWrapper()
{
  v1 = *(*v0 + 16);
  result = MEMORY[0x223D8F420](*(v1 + 16));
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = (v1 + 32);
    do
    {
      v5 = *v4++;
      result = MEMORY[0x223D8F420](v5);
      --v3;
    }

    while (v3);
  }

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance KVLRUCache.TokenArrayWrapper(uint64_t a1)
{
  Hasher.init(_seed:)();
  v2 = *(*v1 + 16);
  MEMORY[0x223D8F420](*(v2 + 16));
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = (v2 + 32);
    do
    {
      v5 = *v4++;
      MEMORY[0x223D8F420](v5);
      --v3;
    }

    while (v3);
  }

  return Hasher._finalize()();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> KVLRUCache.insert(kvCacheEntry:tokens:)(NSData kvCacheEntry, Swift::OpaquePointer tokens)
{
  v3 = v2;
  v6 = type metadata accessor for TokenGenerationError.Context();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(tokens._rawValue + 2);
  if ([*(v3 + 16) totalCostLimit] < v11)
  {
    v24[0] = 0;
    v24[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(75);
    MEMORY[0x223D8E780](0xD00000000000002CLL, 0x8000000220AFF460);
    v25 = v11;
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x223D8E780](v12);

    MEMORY[0x223D8E780](0xD00000000000001BLL, 0x8000000220AFF490);
    v25 = [*(v3 + 16) totalCostLimit];
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x223D8E780](v13);

    TokenGenerationError.Context.init(debugDescription:underlyingError:)();
    v14 = type metadata accessor for TokenGenerationError();
    lazy protocol witness table accessor for type KVLRUCache.TokenArrayWrapper and conformance KVLRUCache.TokenArrayWrapper(&lazy protocol witness table cache variable for type TokenGenerationError and conformance TokenGenerationError, MEMORY[0x277D71B08], MEMORY[0x277D71B10]);
    swift_allocError();
    v16 = v15;
    (*(v7 + 16))(v15, v10, v6);
    (*(*(v14 - 8) + 104))(v16, *MEMORY[0x277D71AA0], v14);
    swift_willThrow();
LABEL_5:
    (*(v7 + 8))(v10, v6);
    return;
  }

  isa = kvCacheEntry.super.isa;
  type metadata accessor for KVLRUCache.TokenArrayWrapper();
  v18 = swift_allocObject();
  v18[2]._rawValue = tokens._rawValue;
  v19 = *(v3 + 16);

  v20 = [v19 objectForKey_];
  if (v20)
  {

    TokenGenerationError.Context.init(debugDescription:underlyingError:)();
    v21 = type metadata accessor for TokenGenerationError();
    lazy protocol witness table accessor for type KVLRUCache.TokenArrayWrapper and conformance KVLRUCache.TokenArrayWrapper(&lazy protocol witness table cache variable for type TokenGenerationError and conformance TokenGenerationError, MEMORY[0x277D71B08], MEMORY[0x277D71B10]);
    swift_allocError();
    v23 = v22;
    (*(v7 + 16))(v22, v10, v6);
    (*(*(v21 - 8) + 104))(v23, *MEMORY[0x277D71AA0], v21);
    swift_willThrow();

    goto LABEL_5;
  }

  [*(v3 + 16) setObject:isa forKey:v18 cost:v11];
}

uint64_t lazy protocol witness table accessor for type KVLRUCache.TokenArrayWrapper and conformance KVLRUCache.TokenArrayWrapper(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

Swift::Int LanguageModelError.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x223D8F420](0);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type LanguageModelError and conformance LanguageModelError()
{
  result = lazy protocol witness table cache variable for type LanguageModelError and conformance LanguageModelError;
  if (!lazy protocol witness table cache variable for type LanguageModelError and conformance LanguageModelError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LanguageModelError and conformance LanguageModelError);
  }

  return result;
}

void *LookupLanguageModel.__allocating_init(for:minimumMatchRequiredForDrafting:)(uint64_t a1, uint64_t a2)
{
  default argument 0 of LookupLanguageModel.init(state:minimumMatchRequiredForDrafting:)(*(v2 + 80), *(v2 + 88), v7);
  v4 = v7[0];
  v5 = v7[1];
  result = swift_allocObject();
  result[2] = v4;
  result[3] = v5;
  result[4] = a2;
  return result;
}

void *LookupLanguageModel.__allocating_init(state:minimumMatchRequiredForDrafting:)(void *a1, uint64_t a2)
{
  result = swift_allocObject();
  v5 = a1[1];
  result[2] = *a1;
  result[3] = v5;
  result[4] = a2;
  return result;
}

uint64_t LookupLanguageModelState.init(lastNodeAvailableForLookup:nodeStates:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

void *LookupLanguageModel.init(state:minimumMatchRequiredForDrafting:)(void *a1, uint64_t a2)
{
  v3 = a1[1];
  v2[2] = *a1;
  v2[3] = v3;
  v2[4] = a2;
  return v2;
}

Swift::Int __swiftcall LookupLanguageModel.node(forPreviousNode:token:isPrompt:)(Swift::Int forPreviousNode, Swift::Int token, Swift::Bool isPrompt)
{
  v4 = v3;
  LODWORD(v44) = isPrompt;
  v7 = *(*v3 + 80);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](forPreviousNode, token);
  v45 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v14 = &v41 - v13;
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v41 - v16;
  v18 = v3[3];
  v20 = *(v19 + 88);
  v21 = *(v20 + 8);

  v46 = forPreviousNode;
  NodeStorage.subscript.getter(forPreviousNode, v18, v7, v21, v22);

  v23 = (*(v21 + 24))(v7, v21);
  v24 = *(v8 + 8);
  v24(v17, v7);
  if (*(v23 + 16) && (v25 = specialized __RawDictionaryStorage.find<A>(_:)(token), (v26 & 1) != 0))
  {
    v27 = *(*(v23 + 56) + 8 * v25);
  }

  else
  {
    v43 = v24;

    v28 = *(v20 + 48);
    v29 = v44 & 1;
    v44 = token;
    v28(v46, 0, token, 0, v29, v7, v20);
    v48[0] = v4[3];
    v31 = type metadata accessor for NodeStorage(0, v7, v21, v30);

    v42 = v31;
    v27 = NodeStorage.append(_:)(v14, v31);
    v4[3] = v48[0];

    if ((*(v20 + 40))(v7, v20))
    {
      v4[2] = v27;
    }

    v49 = v4[3];
    v32 = v49;

    v33 = v45;
    v34 = v46;
    NodeStorage.subscript.getter(v46, v32, v7, v21, v35);
    v36 = (*(v20 + 24))(v48, v7, v20);
    v38 = v37;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v47 = *v38;
    *v38 = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v27, v44, isUniquelyReferenced_nonNull_native);
    *v38 = v47;

    v36(v48, 0);
    NodeStorage.subscript.setter(v33, v34, v42);
    v4[3] = v49;

    v43(v14, v7);
  }

  return v27;
}

uint64_t LookupLanguageModel.singleNextTokenLogits(node:presampler:isPrompt:)(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v4 = *v2;
  v3[9] = *v2;
  v3[10] = *(v4 + 80);
  v3[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](LookupLanguageModel.singleNextTokenLogits(node:presampler:isPrompt:), 0, 0);
}

{
  LookupLanguageModel.nextNodeAvailableForLookup(forNode:)(v2[7], a2);
  if (v6)
  {
    LookupLanguageModel.nextNodeAvailableForLookup(forNode:)(0, v4);
    if (v9)
    {
      goto LABEL_12;
    }

    v10 = v7;
    v11 = v8;
    v47 = v2 + 2;
    v12 = v2[9];
    v13 = LookupLanguageModel.nodes(previousAndIncluding:)(*(v2[8] + 16));
    v48 = *(v12 + 88);
    v14 = *(v48 + 8);
    NodeStorage.PreviousNodeSequence.makeIterator()(v13, v15);

    v17 = 0;
    while (1)
    {
      type metadata accessor for NodeStorage.PreviousNodeIterator(0, v2[10], v14, v16);
      v51 = NodeStorage.PreviousNodeIterator.next()();
      v19 = v2[8];
      if (v51.is_nil)
      {
        break;
      }

      value = v51.value;
      LookupLanguageModel.nextNodeAvailableForLookup(forNode:)(v51.value, *&v51.is_nil);
      if ((v23 & 1) == 0)
      {
        v24 = v21;
        v25 = value;
        v26 = v22;
        v27 = LookupLanguageModel.commonTokenCountFromNodes(_:_:)(v25, v2[7]);
        if (v17 < v27)
        {
          v11 = v26;
          v10 = v24;
        }

        if (v17 <= v27)
        {
          v17 = v27;
        }
      }
    }

    if (v17 < *(v19 + 32))
    {
LABEL_12:
      v30 = v2[6];
      *(v30 + 24) = &type metadata for EmptyLogitCollection;
      *(v30 + 32) = &protocol witness table for EmptyLogitCollection;
    }

    else
    {
      v31 = v2[10];
      v32 = v2[11];
      v33 = v2[7];
      v45 = v2[8];
      v46 = v2[6];
      v34 = *(v45 + 24);

      NodeStorage.subscript.getter(v33, v34, v31, v14, v35);
      v44 = (*(v48 + 24))(v47, v31, v48);
      v37 = v36;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v49 = *v37;
      *v37 = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v11, v10, isUniquelyReferenced_nonNull_native);
      *v37 = v49;

      v44(v47, 0);
      v40 = type metadata accessor for NodeStorage(0, v31, v14, v39);
      NodeStorage.subscript.setter(v32, v33, v40);
      *(v45 + 24) = v34;

      v46[3] = type metadata accessor for LookupLanguageModel.OneTokenLogitCollection(0, v31, v48, v41);
      v46[4] = &protocol witness table for LookupLanguageModel<A>.OneTokenLogitCollection;
      *v46 = v10;
    }
  }

  else
  {
    v28 = v3;
    v29 = v2[6];
    v29[3] = type metadata accessor for LookupLanguageModel.OneTokenLogitCollection(0, v2[10], *(v2[9] + 88), v5);
    v29[4] = &protocol witness table for LookupLanguageModel<A>.OneTokenLogitCollection;
    *v29 = v28;
  }

  v42 = v2[1];

  return v42();
}

void LookupLanguageModel.nextNodeAvailableForLookup(forNode:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(*v3 + 80);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](a1, a2);
  v8 = &v21 - v7;
  v9 = v3[3];
  v11 = *(*(v10 + 88) + 8);

  NodeStorage.subscript.getter(a1, v9, v5, v11, v12);

  v13 = (*(v11 + 24))(v5, v11);
  (*(v6 + 8))(v8, v5);
  v14 = 1 << *(v13 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v13 + 64);
  v17 = (v14 + 63) >> 6;

  v18 = 0;
  while (v16)
  {
    v19 = v18;
LABEL_10:
    v20 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    if (specialized closure #1 in LookupLanguageModel.nextNodeAvailableForLookup(forNode:)(*(*(v13 + 56) + ((v19 << 9) | (8 * v20))), v3))
    {
LABEL_11:

      return;
    }
  }

  while (1)
  {
    v19 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v19 >= v17)
    {
      goto LABEL_11;
    }

    v16 = *(v13 + 64 + 8 * v19);
    ++v18;
    if (v16)
    {
      v18 = v19;
      goto LABEL_10;
    }
  }

  __break(1u);
}

uint64_t LookupLanguageModel.nodes(previousAndIncluding:)(uint64_t a1)
{
  v3 = v1[3];
  v4 = *(*v1 + 80);

  v5 = NodeStorage.nodes(previousAndIncluding:position:)(a1, 0, 1, v3, v4);

  return v5;
}

uint64_t LookupLanguageModel.commonTokenCountFromNodes(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](a1, a2);
  v48 = v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v47 = v43 - v11;
  *&v56 = LookupLanguageModel.nodes(previousAndIncluding:)(v10);
  *(&v56 + 1) = v12;
  *&v57 = v13;
  BYTE8(v57) = v14 & 1;
  v62 = LookupLanguageModel.nodes(previousAndIncluding:)(a2);
  v63 = v15;
  v64 = v16;
  LOBYTE(v65) = v17 & 1;
  v49 = v2;
  v18 = *(v4 + 88);
  v19 = *(v18 + 8);
  v44 = v5;
  v45 = v19;
  v20 = type metadata accessor for NodeStorage.PreviousNodeSequence(0, v5, v19, v17);
  WitnessTable = swift_getWitnessTable();
  zip<A, B>(_:_:)();

  v56 = v59;
  v57 = v60;
  v58[0] = v61[0];
  *(v58 + 9) = *(v61 + 9);
  v62 = v20;
  v63 = v20;
  v51 = v20;
  v64 = WitnessTable;
  v65 = WitnessTable;
  v50 = WitnessTable;
  type metadata accessor for Zip2Sequence();
  Zip2Sequence.makeIterator()();
  v22 = 0;
  v46 = v18;
  v43[1] = v18 + 32;
  v43[0] = v6 + 8;
  v23 = v47;
  v24 = v44;
  v25 = (v6 + 8);
  do
  {
    *&v59 = v51;
    *(&v59 + 1) = v51;
    *&v60 = v50;
    *(&v60 + 1) = v50;
    type metadata accessor for Zip2Sequence.Iterator();
    Zip2Sequence.Iterator.next()();
    if (v60)
    {
LABEL_8:

      return v22;
    }

    v55 = v22;
    v54 = *(&v59 + 1);
    v27 = v59;
    v28 = v49;
    v29 = v49[3];

    v30 = v45;
    NodeStorage.subscript.getter(v27, v29, v24, v45, v31);

    v32 = v46;
    v33 = *(v46 + 32);
    v52 = v33(v24, v46);
    v53 = v34;
    v35 = *v25;
    (*v25)(v23, v24);
    v36 = v28[3];

    v37 = v48;
    NodeStorage.subscript.getter(v54, v36, v24, v30, v38);

    v39 = v33(v24, v32);
    v41 = v40;
    result = v35(v37, v24);
    if (v53)
    {
      v22 = v55;
      if ((v41 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v22 = v55;
      if ((v41 & 1) != 0 || v52 != v39)
      {
        goto LABEL_8;
      }
    }
  }

  while (!__OFADD__(v22++, 1));
  __break(1u);
  return result;
}

uint64_t LookupLanguageModel.OneTokenLogitCollection.indexSet.getter@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  v3 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v3 < result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  *a2 = result;
  a2[1] = v3;
  type metadata accessor for LogitIndexSet(0);

  return swift_storeEnumTagMultiPayload();
}

float LookupLanguageModel.OneTokenLogitCollection.subscript.getter(uint64_t a1, uint64_t a2)
{
  result = -65504.0;
  if (a1 == a2)
  {
    return 0.0;
  }

  return result;
}

uint64_t LookupLanguageModel.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t protocol witness for UnbatchedDeterministicLanguageModelProtocol.singleNextTokenLogits(node:presampler:isPrompt:) in conformance LookupLanguageModel<A>(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for UnbatchedDeterministicLanguageModelProtocol.singleNextTokenLogits(node:presampler:isPrompt:) in conformance TGICAPILanguageModel;

  return LookupLanguageModel.singleNextTokenLogits(node:presampler:isPrompt:)(a1, a2);
}

uint64_t type metadata instantiation function for LookupLanguageModelState(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t storeEnumTagSinglePayload for LookupLanguageModelState(uint64_t result, int a2, int a3)
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

uint64_t type metadata instantiation function for LookupLanguageModel.OneTokenLogitCollection(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t specialized closure #1 in LookupLanguageModel.nextNodeAvailableForLookup(forNode:)(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v3 = *(*a2 + 80);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](a1, a2);
  v6 = &v14 - v5;
  v8 = *(v7 + 24);
  v10 = *(v9 + 88);
  v11 = *(v10 + 8);

  NodeStorage.subscript.getter(v2, v8, v3, v11, v12);

  LOBYTE(v2) = (*(v10 + 40))(v3, v10);
  (*(v4 + 8))(v6, v3);
  return v2 & 1;
}

Swift::Int __swiftcall MaskedLanguageModel.node(forPreviousNode:prompt:)(Swift::Int forPreviousNode, TokenGenerationInference::SamplingDecoderPrompt prompt)
{
  v4 = v2;
  v6 = *prompt.queryTokens._rawValue;
  v7 = *(prompt.queryTokens._rawValue + 1);
  v8 = *(prompt.queryTokens._rawValue + 2);
  outlined init with copy of DeterministicLanguageModelProtocol(v2 + 24, v24);
  v9 = v25;
  v10 = v26;
  v11 = __swift_project_boxed_opaque_existential_1(v24, v25);
  swift_beginAccess();
  if (forPreviousNode < 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v12 = *(v4 + 16);
  if (*(v12 + 16) <= forPreviousNode)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v13 = *(v12 + 24 * forPreviousNode + 32);
  v21 = v6;
  v22 = v7;
  v23 = v8;
  v9 = (*(v10 + 64))(v13, &v21, v9, v10);
  __swift_destroy_boxed_opaque_existential_1(v24);
  outlined init with copy of DeterministicLanguageModelProtocol(v4 + 64, v24);
  v10 = v25;
  v3 = v26;
  __swift_project_boxed_opaque_existential_1(v24, v25);
  v14 = *(v4 + 16);
  if (*(v14 + 16) > forPreviousNode)
  {
    v15 = *(v14 + 24 * forPreviousNode + 40);
    v21 = v6;
    v22 = v7;
    v23 = v8;
    v11 = (*(v3 + 8))(v15, &v21, v10, v3);
    __swift_destroy_boxed_opaque_existential_1(v24);
    forPreviousNode = *(*(v4 + 16) + 16);
    v10 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SiTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    v3 = *(v4 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v4 + 16) = v3;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  __break(1u);
LABEL_11:
  v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v3 + 2) + 1, 1, v3);
  *(v4 + 16) = v3;
LABEL_5:
  v18 = *(v3 + 2);
  v17 = *(v3 + 3);
  if (v18 >= v17 >> 1)
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v3);
  }

  *(v3 + 2) = v18 + 1;
  v19 = &v3[24 * v18];
  *(v19 + 4) = v9;
  *(v19 + 5) = v11;
  *(v19 + 6) = v10;
  *(v4 + 16) = v3;
  return forPreviousNode;
}

uint64_t MaskedLanguageModel.__allocating_init(_:_:)(void *a1, uint64_t a2, uint64_t (*a3)(char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = a1[3];
  v8 = a1[4];
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a1, v7);
  MEMORY[0x28223BE20](v9, v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11);
  v13 = a3(v11, a2, v3, v7, v8);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v13;
}

Swift::Bool __swiftcall MaskedLanguageModel.nextTokenLogitsAreComputed(node:)(Swift::Int node)
{
  v2 = v1;
  result = swift_beginAccess();
  if (node < 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v5 = *(v2 + 16);
  if (*(v5 + 16) <= node)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v6 = v5 + 24 * node;
  v8 = *(v6 + 32);
  v7 = *(v6 + 40);
  outlined init with copy of DeterministicLanguageModelProtocol(v2 + 64, v17);
  v9 = v18;
  v10 = v19;
  __swift_project_boxed_opaque_existential_1(v17, v18);
  if ((*(v10 + 48))(v7, v9, v10))
  {
    outlined init with copy of DeterministicLanguageModelProtocol(v2 + 24, v14);
    v11 = v15;
    v12 = v16;
    __swift_project_boxed_opaque_existential_1(v14, v15);
    v13 = (*(v12 + 48))(v8, v11, v12);
    __swift_destroy_boxed_opaque_existential_1(v14);
  }

  else
  {
    v13 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(v17);
  return v13 & 1;
}

uint64_t implicit closure #6 in MaskedLanguageModel.nextTokensLogits(nodes:presampler:isPrompt:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 168) = a3;
  *(v3 + 120) = a1;
  *(v3 + 128) = a2;
  return MEMORY[0x2822009F8](implicit closure #6 in MaskedLanguageModel.nextTokensLogits(nodes:presampler:isPrompt:), 0, 0);
}

uint64_t implicit closure #6 in MaskedLanguageModel.nextTokensLogits(nodes:presampler:isPrompt:)()
{
  v1 = *(v0 + 128);
  outlined init with copy of DeterministicLanguageModelProtocol(*(v0 + 120) + 24, v0 + 16);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
  swift_beginAccess();
  v4 = *(v1 + 16);
  *(v0 + 136) = v4;
  *(v0 + 80) = &type metadata for NullLogitPresampler;
  *(v0 + 88) = &protocol witness table for NullLogitPresampler;
  v5 = *(v3 + 24);

  v9 = (v5 + *v5);
  v6 = swift_task_alloc();
  *(v0 + 144) = v6;
  *v6 = v0;
  v6[1] = implicit closure #6 in MaskedLanguageModel.nextTokensLogits(nodes:presampler:isPrompt:);
  v7 = *(v0 + 168);

  return v9(v4, v0 + 56, v7, v2, v3);
}

{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[1];
  v2 = v0[20];

  return v1(v2);
}

{
  outlined destroy of [Int](v0 + 56, &_s24TokenGenerationInference15LogitPresampler_pSgMd, &_s24TokenGenerationInference15LogitPresampler_pSgMR);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t implicit closure #6 in MaskedLanguageModel.nextTokensLogits(nodes:presampler:isPrompt:)(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 152) = v1;

  if (v1)
  {
    v5 = implicit closure #6 in MaskedLanguageModel.nextTokensLogits(nodes:presampler:isPrompt:);
  }

  else
  {
    *(v4 + 160) = a1;
    outlined destroy of [Int](v4 + 56, &_s24TokenGenerationInference15LogitPresampler_pSgMd, &_s24TokenGenerationInference15LogitPresampler_pSgMR);
    v5 = implicit closure #6 in MaskedLanguageModel.nextTokensLogits(nodes:presampler:isPrompt:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t _sSay24TokenGenerationInference15LogitCollection_pGs5Error_pIegHozo_ACsAD_pIegHTrzo_TR(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = _sSay24TokenGenerationInference15LogitCollection_pGs5Error_pIegHozo_ACsAD_pIegHTrzo_TRTQ0_;

  return v5();
}

uint64_t _sSay24TokenGenerationInference15LogitCollection_pGs5Error_pIegHozo_ACsAD_pIegHTrzo_TRTQ0_(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t specialized implicit closure #7 in MaskedLanguageModel.nextTokensLogits(nodes:presampler:isPrompt:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 224) = a4;
  *(v4 + 184) = a2;
  *(v4 + 192) = a3;
  *(v4 + 176) = a1;
  return MEMORY[0x2822009F8](specialized implicit closure #7 in MaskedLanguageModel.nextTokensLogits(nodes:presampler:isPrompt:), 0, 0);
}

uint64_t specialized implicit closure #7 in MaskedLanguageModel.nextTokensLogits(nodes:presampler:isPrompt:)()
{
  v1 = *(v0 + 192);
  outlined init with copy of DeterministicLanguageModelProtocol(*(v0 + 176) + 64, v0 + 16);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
  outlined init with copy of LogitPresampler?(v1, v0 + 136);
  v4 = *(v0 + 160);
  if (v4)
  {
    v5 = *(v0 + 168);
    __swift_project_boxed_opaque_existential_1((v0 + 136), *(v0 + 160));
    (*(v5 + 24))(v4, v5);
    __swift_destroy_boxed_opaque_existential_1((v0 + 136));
    if (*(v0 + 120))
    {
      outlined init with take of RandomNumberGenerator((v0 + 96), v0 + 56);
      goto LABEL_7;
    }
  }

  else
  {
    outlined destroy of [Int](v0 + 136, &_s24TokenGenerationInference15LogitPresampler_pSgMd, &_s24TokenGenerationInference15LogitPresampler_pSgMR);
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    *(v0 + 128) = 0;
  }

  *(v0 + 80) = type metadata accessor for BasicLogitPresampler(0);
  *(v0 + 88) = &protocol witness table for BasicLogitPresampler;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 56));
  v7 = type metadata accessor for LogitIndexSet(0);
  (*(*(v7 - 8) + 56))(boxed_opaque_existential_1, 1, 1, v7);
  if (*(v0 + 120))
  {
    outlined destroy of [Int](v0 + 96, &_s24TokenGenerationInference15LogitPresampler_pSgMd, &_s24TokenGenerationInference15LogitPresampler_pSgMR);
  }

LABEL_7:
  v12 = (*(v3 + 24) + **(v3 + 24));
  v8 = swift_task_alloc();
  *(v0 + 200) = v8;
  *v8 = v0;
  v8[1] = specialized implicit closure #7 in MaskedLanguageModel.nextTokensLogits(nodes:presampler:isPrompt:);
  v9 = *(v0 + 224);
  v10 = *(v0 + 184);

  return v12(v10, v0 + 56, v9, v2, v3);
}

{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[1];
  v2 = v0[27];

  return v1(v2);
}

{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t specialized implicit closure #7 in MaskedLanguageModel.nextTokensLogits(nodes:presampler:isPrompt:)(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 208) = v1;

  if (v1)
  {
    outlined destroy of [Int](v4 + 56, &_s24TokenGenerationInference15LogitPresampler_pSgMd, &_s24TokenGenerationInference15LogitPresampler_pSgMR);
    v5 = specialized implicit closure #7 in MaskedLanguageModel.nextTokensLogits(nodes:presampler:isPrompt:);
  }

  else
  {
    *(v4 + 216) = a1;
    outlined destroy of [Int](v4 + 56, &_s24TokenGenerationInference15LogitPresampler_pSgMd, &_s24TokenGenerationInference15LogitPresampler_pSgMR);
    v5 = specialized implicit closure #7 in MaskedLanguageModel.nextTokensLogits(nodes:presampler:isPrompt:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

void *MaskedLanguageModel.deinit()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  __swift_destroy_boxed_opaque_existential_1((v0 + 64));
  return v0;
}

uint64_t MaskedLanguageModel.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  __swift_destroy_boxed_opaque_existential_1((v0 + 64));

  return swift_deallocClassInstance();
}

uint64_t _sSa9repeating5countSayxGx_SitcfC24TokenGenerationInference15LogitCollection_p_Tt1g5Tf4en_nAD05EmptyfG0V_Tg5(uint64_t result)
{
  v4[3] = &type metadata for EmptyLogitCollection;
  v4[4] = &protocol witness table for EmptyLogitCollection;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    if (result)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference15LogitCollection_pMd, &_s24TokenGenerationInference15LogitCollection_pMR);
      v2 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v2 + 16) = v1;
      v3 = v2 + 32;
      do
      {
        outlined init with copy of DeterministicLanguageModelProtocol(v4, v3);
        v3 += 40;
        --v1;
      }

      while (v1);
    }

    else
    {
      v2 = MEMORY[0x277D84F90];
    }

    __swift_destroy_boxed_opaque_existential_1(v4);
    return v2;
  }

  return result;
}

uint64_t specialized MaskedLanguageModel.__allocating_init(_:_:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a4 - 8);
  v9 = MEMORY[0x28223BE20](a1, a1);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v18 - v13;
  (*(v8 + 32))(&v18 - v13);
  v15 = swift_allocObject();
  (*(v8 + 16))(v11, v14, a4);
  v16 = specialized MaskedLanguageModel.init(_:_:)(v11, a2, v15, a4, a5);
  (*(v8 + 8))(v14, a4);
  return v16;
}

uint64_t specialized MaskedLanguageModel.init(_:_:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23[3] = a4;
  v23[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v23);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a1, a4);
  v11 = MEMORY[0x277D84F90];
  *(a3 + 16) = MEMORY[0x277D84F90];
  outlined init with copy of DeterministicLanguageModelProtocol(v23, a3 + 24);
  outlined init with copy of DeterministicLanguageModelProtocol(a2, a3 + 64);
  v12 = (*(a5 + 8))(a4, a5);
  v13 = a2[3];
  v14 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v13);
  v15 = (*(v14 + 8))(v13, v14);
  v16 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SiTt0g5Tf4g_n(v11);
  swift_beginAccess();
  v17 = *(a3 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a3 + 16) = v17;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v17 + 2) + 1, 1, v17);
    *(a3 + 16) = v17;
  }

  v20 = *(v17 + 2);
  v19 = *(v17 + 3);
  if (v20 >= v19 >> 1)
  {
    v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v17);
  }

  *(v17 + 2) = v20 + 1;
  v21 = &v17[24 * v20];
  *(v21 + 4) = v12;
  *(v21 + 5) = v15;
  *(v21 + 6) = v16;
  *(a3 + 16) = v17;
  __swift_destroy_boxed_opaque_existential_1(a2);
  __swift_destroy_boxed_opaque_existential_1(v23);
  return a3;
}

uint64_t partial apply for implicit closure #6 in MaskedLanguageModel.nextTokensLogits(nodes:presampler:isPrompt:)()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = dispatch thunk of SamplingDecoder.decodeNextChunk();

  return implicit closure #6 in MaskedLanguageModel.nextTokensLogits(nodes:presampler:isPrompt:)(v2, v3, v4);
}

uint64_t _sSay24TokenGenerationInference15LogitCollection_pGs5Error_pIegHozo_ACsAD_pIegHTrzo_TRTA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in TGITokenGeneratorGenerate(_:_:_:_:);

  return _sSay24TokenGenerationInference15LogitCollection_pGs5Error_pIegHozo_ACsAD_pIegHTrzo_TR(a1, v4);
}

uint64_t partial apply for specialized implicit closure #7 in MaskedLanguageModel.nextTokensLogits(nodes:presampler:isPrompt:)()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 72);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = partial apply for closure #1 in EncodedImageArray.appendAndTokenize(image:configuration:);

  return specialized implicit closure #7 in MaskedLanguageModel.nextTokensLogits(nodes:presampler:isPrompt:)(v2, v3, v0 + 32, v4);
}

uint64_t _sSay24TokenGenerationInference15LogitCollection_pGs5Error_pIegHozo_ACsAD_pIegHTrzo_TRTA_19(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for UnbatchedDeterministicLanguageModelProtocol.singleNextTokenLogits(node:presampler:isPrompt:) in conformance TGICAPILanguageModel;

  return _sSay24TokenGenerationInference15LogitCollection_pGs5Error_pIegHozo_ACsAD_pIegHTrzo_TR(a1, v4);
}

uint64_t type metadata instantiation function for NodeStorage(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata instantiation function for NodeStorage.PreviousNodeIterator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t NodeStorage.init()(uint64_t a1, uint64_t a2)
{
  getContiguousArrayStorageType<A>(for:)(a1, a1);
  swift_allocObject();
  v4 = static Array._adoptStorage(_:count:)();
  (*(a2 + 8))(a1, a2);
  type metadata accessor for Array();
  return v4;
}

uint64_t NodeStorage.nodes(previousAndIncluding:position:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  if (MEMORY[0x223D8E960](a4, a5) > a1)
  {
    return a1;
  }

  _StringGuts.grow(_:)(21);

  v9 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x223D8E780](v9);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t NodeStorage.append(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](a1, a2);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x223D8E960](*v2, v4);
  (*(v5 + 16))(v7, a1, v4);
  type metadata accessor for Array();
  Array.append(_:)();
  return v8;
}

uint64_t NodeStorage.subscript.setter(uint64_t a1, Swift::Int a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  type metadata accessor for Array();
  Array._makeMutableAndUnique()();
  v7 = *v3;
  Array._checkSubscript_mutating(_:)(a2);
  isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
  v9 = v7 & 0xFFFFFFFFFFFFFF8;
  if ((isClassOrObjCExistentialType & 1) == 0)
  {
    v9 = v7;
  }

  v10 = *(v6 - 8);
  v11 = *(v10 + 40);
  v12 = v9 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * a2;

  return v11(v12, a1, v6);
}

Swift::Int_optional __swiftcall NodeStorage.PreviousNodeIterator.next()()
{
  v2 = v0;
  v3 = *(v0 + 16);
  v4 = *(v3 - 8);
  (MEMORY[0x28223BE20])();
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *(v1 + 8);
  if ((v8 & 1) == 0)
  {
    Array.subscript.getter();
    v9 = v1;
    v10 = (*(*(v2 + 24) + 16))(v3);
    v12 = v11;
    (*(v4 + 8))(v6, v3);
    *v9 = v10;
    *(v9 + 8) = v12 & 1;
  }

  v13 = v7;
  v14 = v8;
  result.value = v13;
  result.is_nil = v14;
  return result;
}

uint64_t NodeStorage.PreviousNodeSequence.underestimatedCount.getter(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

uint64_t protocol witness for Sequence.makeIterator() in conformance NodeStorage<A>.PreviousNodeSequence@<X0>(uint64_t a1@<X8>)
{
  v3 = NodeStorage.PreviousNodeSequence.makeIterator()(*v1, v1[1]);
  v5 = v4;
  v7 = v6;

  *a1 = v3;
  *(a1 + 8) = v5 & 1;
  *(a1 + 16) = v7;
  return result;
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance NodeStorage<A>.PreviousNodeSequence(uint64_t a1, uint64_t a2)
{
  v2 = specialized Sequence._copyToContiguousArray()();

  return v2;
}

Swift::Int protocol witness for IteratorProtocol.next() in conformance NodeStorage<A>.PreviousNodeIterator@<X0>(uint64_t a1@<X8>)
{
  v3 = NodeStorage.PreviousNodeIterator.next()();
  *a1 = v3.value;
  *(a1 + 8) = v3.is_nil;
  return v3.value;
}

uint64_t getContiguousArrayStorageType<A>(for:)(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType() && a2)
  {

    return __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  }

  else
  {

    return MEMORY[0x2821FDC00](0, a2);
  }
}

Swift::Void __swiftcall Array._checkSubscript_mutating(_:)(Swift::Int a1)
{
  v2 = v1;
  isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
  if (a1 < 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  v5 = v2 & 0xFFFFFFFFFFFFFF8;
  if ((isClassOrObjCExistentialType & 1) == 0)
  {
    v5 = v2;
  }

  if (*(v5 + 16) <= a1)
  {
    goto LABEL_7;
  }
}

uint64_t type metadata instantiation function for NodeStorage.PreviousNodeSequence(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for NodeStorage.PreviousNodeSequence(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t storeEnumTagSinglePayload for NodeStorage.PreviousNodeSequence(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t LookupLanguageModelState<>.init(priorOutputTokens:)@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy24TokenGenerationInference20PriorOutputNodeStateVGMd, &_ss23_ContiguousArrayStorageCy24TokenGenerationInference20PriorOutputNodeStateVGMR);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_220AE8A30;
  v4 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SiTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *(v3 + 32) = 0;
  *(v3 + 40) = 1;
  *(v3 + 48) = 0;
  *(v3 + 56) = 257;
  *(v3 + 64) = v4;
  v34 = *(a1 + 16);
  if (!v34)
  {
    v9 = 0;
LABEL_21:

    *a2 = v9;
    a2[1] = v3;
    return result;
  }

  v5 = 0;
  v6 = 0;
  v32 = a1;
  v33 = a1 + 32;
  while (v6 < *(a1 + 16))
  {
    v7 = *(v33 + 8 * v6);
    v9 = *(v3 + 16);
    v8 = *(v3 + 24);
    if (v9 >= v8 >> 1)
    {
      v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v3);
    }

    *(v3 + 16) = v9 + 1;
    v10 = v3 + 32 + 40 * v9;
    *v10 = v5;
    *(v10 + 8) = 0;
    *(v10 + 16) = v7;
    *(v10 + 24) = 256;
    *(v10 + 32) = MEMORY[0x277D84F98];
    if (v5 > v9)
    {
      goto LABEL_23;
    }

    v11 = v3 + 32 + 40 * v5;
    v12 = *v11;
    v38 = *(v11 + 8);
    v37 = *(v11 + 16);
    v35 = *(v11 + 25);
    v36 = *(v11 + 24);
    v13 = *(v11 + 32);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = v7;
    v16 = isUniquelyReferenced_nonNull_native;
    v17 = v15;
    v18 = specialized __RawDictionaryStorage.find<A>(_:)(v15);
    v20 = v13[2];
    v21 = (v19 & 1) == 0;
    v22 = __OFADD__(v20, v21);
    v23 = v20 + v21;
    if (v22)
    {
      goto LABEL_24;
    }

    v24 = v19;
    if (v13[3] < v23)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v23, v16);
      v18 = specialized __RawDictionaryStorage.find<A>(_:)(v17);
      if ((v24 & 1) != (v25 & 1))
      {
        goto LABEL_27;
      }

LABEL_12:
      v26 = v13;
      if (v24)
      {
        goto LABEL_13;
      }

      goto LABEL_15;
    }

    if (v16)
    {
      goto LABEL_12;
    }

    v27 = v18;
    specialized _NativeDictionary.copy()();
    v18 = v27;
    v26 = v13;
    if (v24)
    {
LABEL_13:
      *(v26[7] + 8 * v18) = v9;
      goto LABEL_17;
    }

LABEL_15:
    v26[(v18 >> 6) + 8] |= 1 << v18;
    *(v26[6] + 8 * v18) = v17;
    *(v26[7] + 8 * v18) = v9;
    v28 = v26[2];
    v22 = __OFADD__(v28, 1);
    v29 = v28 + 1;
    if (v22)
    {
      goto LABEL_26;
    }

    v26[2] = v29;
LABEL_17:
    if (v5 >= *(v3 + 16))
    {
      goto LABEL_25;
    }

    ++v6;
    *v11 = v12;
    *(v11 + 8) = v38;
    *(v11 + 16) = v37;
    *(v11 + 24) = v36;
    *(v11 + 25) = v35;
    *(v11 + 32) = v26;

    v5 = v9;
    a1 = v32;
    if (v34 == v6)
    {
      goto LABEL_21;
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
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t protocol witness for LookupNodeState.nextNodes.setter in conformance PriorOutputNodeState(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

unint64_t protocol witness for LookupNodeState.init(previousNode:token:isPrompt:) in conformance PriorOutputNodeState@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SiTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *a5 = a1;
  *(a5 + 8) = a2 & 1;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4 & 1;
  *(a5 + 25) = 0;
  *(a5 + 32) = result;
  return result;
}

unint64_t protocol witness for NodeStateProtocol.init() in conformance PriorOutputNodeState@<X0>(uint64_t a1@<X8>)
{
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SiTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 257;
  *(a1 + 32) = result;
  return result;
}

uint64_t PromptLookupNodeState.nextNodes.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

void __swiftcall PromptLookupNodeState.init(previousNode:token:isPrompt:)(TokenGenerationInference::PromptLookupNodeState *__return_ptr retstr, Swift::Int_optional previousNode, Swift::Int_optional token, Swift::Bool isPrompt)
{
  is_nil = token.is_nil;
  value = token.value;
  v7 = previousNode.is_nil;
  v8 = previousNode.value;
  retstr[1].previousNode.value = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SiTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  retstr->previousNode.value = v8;
  retstr->previousNode.is_nil = v7;
  *(&retstr->token.value + 7) = value;
  LOBYTE(retstr->nextNodes._rawValue) = is_nil;
  BYTE1(retstr->nextNodes._rawValue) = isPrompt;
}

void __swiftcall PromptLookupNodeState.init()(TokenGenerationInference::PromptLookupNodeState *__return_ptr retstr)
{
  v2 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SiTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  retstr->previousNode.value = 0;
  retstr->previousNode.is_nil = 1;
  *(&retstr->token.value + 7) = 0;
  LOWORD(retstr->nextNodes._rawValue) = 257;
  retstr[1].previousNode.value = v2;
}

unint64_t protocol witness for LookupNodeState.init(previousNode:token:isPrompt:) in conformance PromptLookupNodeState@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X8>)
{
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SiTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *(a6 + 32) = result;
  *a6 = a1;
  *(a6 + 8) = a2 & 1;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4 & 1;
  *(a6 + 25) = a5;
  return result;
}

uint64_t ToolCallLanguageModel.logitsAreDense.getter()
{
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v0 + 48, v7, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMR);
  v1 = v8;
  if (v8)
  {
    v2 = v9;
    __swift_project_boxed_opaque_existential_1(v7, v8);
    LODWORD(v1) = (*(v2 + 40))(v1, v2);
    __swift_destroy_boxed_opaque_existential_1(v7);
  }

  else
  {
    outlined destroy of [Int](v7, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMR);
  }

  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v0 + 88, v7, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMR);
  v3 = v8;
  if (v8)
  {
    v4 = v9;
    __swift_project_boxed_opaque_existential_1(v7, v8);
    v5 = (*(v4 + 40))(v3, v4);
    __swift_destroy_boxed_opaque_existential_1(v7);
  }

  else
  {
    outlined destroy of [Int](v7, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMR);
    v5 = 0;
  }

  return (v1 | v5) & 1;
}

Swift::Int __swiftcall ToolCallLanguageModel.node(forPreviousNode:prompt:)(Swift::Int forPreviousNode, TokenGenerationInference::SamplingDecoderPrompt prompt)
{
  v8 = v2;
  v10 = *prompt.queryTokens._rawValue;
  v28 = *(prompt.queryTokens._rawValue + 1);
  v11 = *(prompt.queryTokens._rawValue + 2);
  swift_beginAccess();
  if (forPreviousNode < 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v12 = *(v8 + 40);
  if (*(v12 + 16) <= forPreviousNode)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v13 = v12 + 40 * forPreviousNode;
  v14 = *(v13 + 32);
  v15 = *(v13 + 40);
  v26 = *(v13 + 48);
  v27 = *(v13 + 56);
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v8 + 48, v32, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMR);
  v3 = v33;
  if (v33)
  {
    v16 = v34;
    result = __swift_project_boxed_opaque_existential_1(v32, v33);
    if (v15)
    {
      __break(1u);
      goto LABEL_19;
    }

    v18 = v10;
    v29 = v10;
    v30 = v28;
    v19 = v11;
    v31 = v11;
    v20 = *(v16 + 64);

    v4 = v20(v14, &v29, v3, v16);
    __swift_destroy_boxed_opaque_existential_1(v32);
  }

  else
  {
    v18 = v10;
    v19 = v11;

    outlined destroy of [Int](v32, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMR);
    v4 = 0;
  }

  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v8 + 88, v32, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMR);
  v5 = v33;
  if (v33)
  {
    v21 = v34;
    result = __swift_project_boxed_opaque_existential_1(v32, v33);
    if ((v27 & 1) == 0)
    {
      v29 = v18;
      v30 = v28;
      v31 = v19;
      forPreviousNode = (*(v21 + 64))(v26, &v29, v5, v21);

      __swift_destroy_boxed_opaque_existential_1(v32);
      goto LABEL_11;
    }

LABEL_19:
    __break(1u);
    return result;
  }

  outlined destroy of [Int](v32, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMR);
  forPreviousNode = 0;
LABEL_11:
  v11 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SiTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v7 = *(v8 + 40);
  v6 = *(v7 + 2);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v8 + 40) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_17:
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6 + 1, 1, v7);
    *(v8 + 40) = v7;
  }

  v24 = *(v7 + 2);
  v23 = *(v7 + 3);
  if (v24 >= v23 >> 1)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1, v7);
  }

  *(v7 + 2) = v24 + 1;
  v25 = &v7[40 * v24];
  *(v25 + 4) = v4;
  v25[40] = v3 == 0;
  *(v25 + 6) = forPreviousNode;
  v25[56] = v5 == 0;
  v25[57] = 2;
  *(v25 + 8) = v11;
  *(v8 + 40) = v7;
  swift_endAccess();
  return v6;
}

uint64_t ToolCallLanguageModel.singleNextTokenLogits(node:presampler:isPrompt:)()
{
  *(*v1 + 712) = v0;

  if (v0)
  {

    v2 = ToolCallLanguageModel.singleNextTokenLogits(node:presampler:isPrompt:);
  }

  else
  {
    v2 = ToolCallLanguageModel.singleNextTokenLogits(node:presampler:isPrompt:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  *(*v1 + 728) = v0;

  if (v0)
  {

    v2 = ToolCallLanguageModel.singleNextTokenLogits(node:presampler:isPrompt:);
  }

  else
  {
    v2 = ToolCallLanguageModel.singleNextTokenLogits(node:presampler:isPrompt:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  outlined destroy of [Int](v0 + 96, &_s24TokenGenerationInference15LogitCollection_pSgMd, &_s24TokenGenerationInference15LogitCollection_pSgMR);
  __swift_destroy_boxed_opaque_existential_1((v0 + 136));

  v1 = *(v0 + 8);

  return v1();
}

{
  outlined destroy of [Int](v0 + 216, &_s24TokenGenerationInference15LogitCollection_pSgMd, &_s24TokenGenerationInference15LogitCollection_pSgMR);
  outlined destroy of [Int](v0 + 96, &_s24TokenGenerationInference15LogitCollection_pSgMd, &_s24TokenGenerationInference15LogitCollection_pSgMR);
  __swift_destroy_boxed_opaque_existential_1((v0 + 256));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t ToolCallLanguageModel.__deallocating_deinit()
{

  outlined destroy of [Int](v0 + 48, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMR);
  outlined destroy of [Int](v0 + 88, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMR);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for UnbatchedDeterministicLanguageModelProtocol.singleNextTokenLogits(node:presampler:isPrompt:) in conformance ToolCallLanguageModel(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = protocol witness for UnbatchedDeterministicLanguageModelProtocol.singleNextTokenLogits(node:presampler:isPrompt:) in conformance TGICAPILanguageModel;

  return ToolCallLanguageModel.singleNextTokenLogits(node:presampler:isPrompt:)(a1, a2, a3, a4);
}

Swift::Int __swiftcall WeightedFiniteStateLanguageModel.node(forPreviousNode:token:isPrompt:)(Swift::Int forPreviousNode, Swift::Int token, Swift::Bool isPrompt)
{
  if (forPreviousNode == -1 || (v4 & 1) != 0 && isPrompt)
  {
    return forPreviousNode;
  }

  if (*(v3 + 16) <= forPreviousNode)
  {
LABEL_12:
    forPreviousNode = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return forPreviousNode;
  }

  if (forPreviousNode < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v5 = *(v3 + 8 * forPreviousNode + 32);
  if (*(v5 + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(token), (v7 & 1) != 0))
  {
    return *(*(v5 + 56) + 16 * v6);
  }

  else
  {
    return -1;
  }
}

uint64_t WeightedFiniteStateLanguageModel.singleNextTokenLogits(node:presampler:isPrompt:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[3] = a2;
  v7[4] = a7;
  v7[2] = a1;
  return MEMORY[0x2822009F8](WeightedFiniteStateLanguageModel.singleNextTokenLogits(node:presampler:isPrompt:), 0, 0);
}

void WeightedFiniteStateLanguageModel.singleNextTokenLogits(node:presampler:isPrompt:)()
{
  v1 = v0[3];
  if (v1 == -1)
  {
    v6 = v0[2];
    *(v6 + 24) = &type metadata for EmptyLogitCollection;
    *(v6 + 32) = &protocol witness table for EmptyLogitCollection;
  }

  else
  {
    v2 = v0[4];
    if (*(v2 + 16) <= v1)
    {
      _assertionFailure(_:_:file:line:flags:)();
      return;
    }

    if (v1 < 0)
    {
      __break(1u);
      return;
    }

    v3 = v0[2];
    v4 = specialized _NativeDictionary.mapValues<A>(_:)(*(v2 + 8 * v1 + 32));
    v3[3] = type metadata accessor for WeightedSparseLogitCollection(0);
    v3[4] = &protocol witness table for WeightedSparseLogitCollection;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v3);
    WeightedSparseLogitCollection.init(node:)(v4, boxed_opaque_existential_1);
  }

  v7 = v0[1];

  v7();
}

uint64_t protocol witness for UnbatchedDeterministicLanguageModelProtocol.singleNextTokenLogits(node:presampler:isPrompt:) in conformance WeightedFiniteStateLanguageModel(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = protocol witness for UnbatchedDeterministicLanguageModelProtocol.singleNextTokenLogits(node:presampler:isPrompt:) in conformance TGICAPILanguageModel;

  return WeightedFiniteStateLanguageModel.singleNextTokenLogits(node:presampler:isPrompt:)(a1, a2, v7, 0, v8, v9, v6);
}

unint64_t specialized WeightedFiniteStateLanguageModel.init(nodes:vocabSize:ignorePromptTokens:)(unint64_t result, uint64_t a2, char a3)
{
  v3 = result;
  v4 = *(result + 16);
  if (!v4)
  {
    if (a3)
    {
      swift_getKeyPath();
      v17 = MEMORY[0x277D84F90];
LABEL_24:

      specialized Sequence<>.max()(v17);
    }

    return 0;
  }

  v5 = 0;
  v6 = result + 32;
  v7 = *(result + 16);
LABEL_4:
  if (v5 < v7)
  {
    v8 = 0;
    v9 = *(v6 + 8 * v5++);
    v10 = 1 << *(v9 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v9 + 64);
    v13 = (v10 + 63) >> 6;
    do
    {
      if (!v12)
      {
        while (1)
        {
          v14 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            __break(1u);
            goto LABEL_27;
          }

          if (v14 >= v13)
          {
            break;
          }

          v12 = *(v9 + 64 + 8 * v14);
          ++v8;
          if (v12)
          {
            v8 = v14;
            goto LABEL_15;
          }
        }

        if (v5 == v4)
        {
          goto LABEL_17;
        }

        goto LABEL_4;
      }

      v14 = v8;
LABEL_15:
      result = __clz(__rbit64(v12));
      v12 &= v12 - 1;
    }

    while (*(*(v9 + 56) + ((v14 << 10) | (16 * result))) < v7);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
LABEL_17:
    if (a3)
    {
      result = swift_getKeyPath();
      v15 = 0;
      v19 = MEMORY[0x277D84F90];
      while (v15 < *(v3 + 16))
      {
        v16 = v15 + 1;

        swift_getAtKeyPath();

        result = specialized Array.append<A>(contentsOf:)(v18);
        v15 = v16;
        if (v4 == v16)
        {
          v17 = v19;
          goto LABEL_24;
        }
      }

      goto LABEL_28;
    }

    return 0;
  }

LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

unint64_t specialized WeightedFiniteStateLanguageModel.init(tokens:vocabSize:ignorePromptTokens:)(uint64_t a1, uint64_t a2, char a3)
{
  v3 = a3;
  v5 = *(a1 + 16);
  if (v5)
  {
    v24 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
    v6 = v24;
    v7 = *(a1 + 16);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2i4next_Sf5logittGMd, &_ss18_DictionaryStorageCyS2i4next_Sf5logittGMR);
    v9 = 0;
    while (v7)
    {
      if (v9 >= *(a1 + 16))
      {
        goto LABEL_19;
      }

      v10 = *(a1 + 8 * v9 + 32);
      v11 = static _DictionaryStorage.allocate(capacity:)();
      result = specialized __RawDictionaryStorage.find<A>(_:)(v10);
      if (v12)
      {
        goto LABEL_20;
      }

      ++v9;
      if (--v7)
      {
        v13 = v9;
      }

      else
      {
        v13 = -1;
      }

      v11[(result >> 6) + 8] |= 1 << result;
      *(v11[6] + 8 * result) = v10;
      v14 = v11[7] + 16 * result;
      *v14 = v13;
      *(v14 + 8) = 0;
      v15 = v11[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_21;
      }

      v11[2] = v17;
      v19 = *(v24 + 16);
      v18 = *(v24 + 24);
      if (v19 >= v18 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1);
      }

      *(v24 + 16) = v19 + 1;
      *(v24 + 8 * v19 + 32) = v11;
      if (v5 == v9)
      {

        v20 = a2;
        v3 = a3;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
  }

  else
  {

    v20 = a2;
    v6 = MEMORY[0x277D84F90];
LABEL_15:

    return specialized WeightedFiniteStateLanguageModel.init(nodes:vocabSize:ignorePromptTokens:)(v6, v20, v3 & 1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WeightedFiniteStateLanguageModel(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t storeEnumTagSinglePayload for WeightedFiniteStateLanguageModel(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void protocol witness for LogitCollection.indexSet.getter in conformance EarlyReturnLogits(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = *v1 + 1;
  if (__OFADD__(*v1, 1))
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v4 < v3)
  {
LABEL_7:
    __break(1u);
    return;
  }

  *a1 = v3;
  a1[1] = v4;
  type metadata accessor for LogitIndexSet(0);

  swift_storeEnumTagMultiPayload();
}

float protocol witness for LogitCollection.subscript.getter in conformance EarlyReturnLogits(uint64_t a1)
{
  result = -65504.0;
  if (*v1 == a1)
  {
    return 0.0;
  }

  return result;
}

uint64_t protocol witness for LogitCollection.topK(_:) in conformance EarlyReturnLogits()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5Int32VGMd, &_ss23_ContiguousArrayStorageCys5Int32VGMR);
  result = swift_allocObject();
  *(result + 16) = xmmword_220AE8A30;
  if (v1 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v1 <= 0x7FFFFFFF)
  {
    *(result + 32) = v1;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for LogitCollection.indexSet.getter in conformance EmptyLogitCollection@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for empty != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LogitIndexSet(0);
  v3 = __swift_project_value_buffer(v2, static LogitIndexSet.empty);

  return outlined init with copy of LogitIndexSet(v3, a1);
}

uint64_t LogitCollection.isEmpty.getter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContiguousBitSet();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for LogitIndexSet(0);
  v11 = MEMORY[0x28223BE20](v9, v10);
  v13 = (&v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v19 - v15;
  (*(a2 + 8))(a1, a2);
  _s24TokenGenerationInference13LogitIndexSetOWOcTm_1(v16, v13, type metadata accessor for LogitIndexSet);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined destroy of LogitIndexSet(v16);
    v17 = *v13 == v13[1];
  }

  else
  {
    (*(v5 + 32))(v8, v13, v4);
    v17 = ContiguousBitSet.isEmpty.getter();
    (*(v5 + 8))(v8, v4);
    outlined destroy of LogitIndexSet(v16);
  }

  return v17 & 1;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSNySiG_Sfs5NeverOTg5(void *(*a1)(int *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v6 = v5 + 1;
  if (__OFADD__(v5, 1))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v7 = MEMORY[0x277D84F90];
  if (v5 == -1)
  {
    return v7;
  }

  v9 = a3;
  v21 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6 & ~(v6 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v11 = 0;
    v12 = 0;
    v7 = v21;
    while (v11 < v6)
    {
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_20;
      }

      if (v12)
      {
        goto LABEL_26;
      }

      v19 = v9;
      result = a1(&v20, &v19);
      if (v4)
      {
        goto LABEL_25;
      }

      v14 = v20;
      v21 = v7;
      v16 = *(v7 + 16);
      v15 = *(v7 + 24);
      if (v16 >= v15 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1);
        v7 = v21;
      }

      *(v7 + 16) = v16 + 1;
      *(v7 + 4 * v16 + 32) = v14;
      v12 = v9 == a4;
      if (v9 == a4)
      {
        v9 = 0;
      }

      else if (__OFADD__(v9++, 1))
      {
        goto LABEL_21;
      }

      ++v11;
      if (v13 == v6)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_24:
  __break(1u);
LABEL_25:

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSays5Int32VG_Sfs5NeverOTg5(void (*a1)(uint64_t *__return_ptr, int *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = MEMORY[0x277D84F90];
  if (!v4)
  {
    return v5;
  }

  v16 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
  v5 = v16;
  v8 = (a3 + 32);
  while (1)
  {
    v9 = *v8++;
    v14 = v9;
    a1(&v15, &v14);
    if (v3)
    {
      break;
    }

    v10 = v15;
    v16 = v5;
    v12 = *(v5 + 16);
    v11 = *(v5 + 24);
    if (v12 >= v11 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
      v5 = v16;
    }

    *(v5 + 16) = v12 + 1;
    *(v5 + 4 * v12 + 32) = v10;
    if (!--v4)
    {
      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay10Foundation4DataVG_24TokenGenerationInference13_EncodedImage33_EDB8B1D8F9C2943CA163A428958D5177LLVs5NeverOTg5(void (*a1)(__int128 *__return_ptr, __int128 *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v23 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
  v6 = v23;
  for (i = (a3 + 32); ; ++i)
  {
    v19 = *i;
    outlined copy of Data._Representation(v19, *(&v19 + 1));
    a1(&v20, &v19);
    if (v4)
    {
      break;
    }

    v4 = 0;
    outlined consume of Data._Representation(v19, *(&v19 + 1));
    v10 = v20;
    v11 = v21;
    v12 = v22;
    v23 = v6;
    v14 = *(v6 + 16);
    v13 = *(v6 + 24);
    if (v14 >= v13 >> 1)
    {
      v17 = v21;
      v18 = v20;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
      v11 = v17;
      v10 = v18;
      v6 = v23;
    }

    *(v6 + 16) = v14 + 1;
    v15 = v6 + 40 * v14;
    *(v15 + 32) = v10;
    *(v15 + 48) = v11;
    *(v15 + 64) = v12;
    if (!--v5)
    {
      return v6;
    }
  }

  outlined consume of Data._Representation(v19, *(&v19 + 1));

  __break(1u);
  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySSG_SS_24TokenGenerationInference17ODIELanguageModelV23KeyValueCacheDescriptorVts5NeverOTg5(void (*a1)(void *__return_ptr, void *, __n128), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v25 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
  v6 = v25;
  for (i = (a3 + 40); ; i += 2)
  {
    v9 = *i;
    v21[0] = *(i - 1);
    v21[1] = v9;

    (a1)(v22, v21);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v11 = v22[0];
    v10 = v22[1];
    v12 = v23;
    v13 = v24;
    v25 = v6;
    v15 = *(v6 + 16);
    v14 = *(v6 + 24);
    if (v15 >= v14 >> 1)
    {
      v18 = v24;
      v19 = v23;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1);
      v13 = v18;
      v12 = v19;
      v6 = v25;
    }

    *(v6 + 16) = v15 + 1;
    v16 = v6 + 48 * v15;
    *(v16 + 32) = v11;
    *(v16 + 40) = v10;
    *(v16 + 48) = v12;
    *(v16 + 64) = v13;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_24TokenGenerationInference15LogitCollection_ps5NeverOTg5(void (*a1)(void *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a1;
  v25 = a2;
  v26 = a4;
  v5 = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v6 = v4;
  v7 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v7;
  }

  v8 = a3;
  v31 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v9 = 0;
    v7 = v31;
    v10 = v26;
    if (v26 <= v8)
    {
      v10 = v8;
    }

    v22 = v10 - v8 + 1;
    v23 = v8;
    while (v9 < v5)
    {
      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_17;
      }

      v27 = v8 + v9;
      v24(v28, &v27);
      if (v6)
      {
        goto LABEL_22;
      }

      v6 = 0;
      v31 = v7;
      v13 = *(v7 + 16);
      v12 = *(v7 + 24);
      if (v13 >= v12 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
      }

      v14 = v29;
      v15 = v30;
      v16 = __swift_mutable_project_boxed_opaque_existential_1(v28, v29);
      MEMORY[0x28223BE20](v16, v16);
      v18 = &v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v19 + 16))(v18);
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v13, v18, &v31, v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v28);
      v8 = v23;
      if (v26 < v23)
      {
        goto LABEL_18;
      }

      if (v22 == ++v9)
      {
        goto LABEL_19;
      }

      v7 = v31;
      if (v11 == v5)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_21:
  __break(1u);
LABEL_22:

  __break(1u);
  return result;
}

void __swiftcall LogitCollection.max()(Swift::Float_optional *__return_ptr retstr)
{
  v4 = v2;
  v5 = v1;
  v6 = type metadata accessor for LogitIndexSet(0);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((LogitCollection.isEmpty.getter(v5, v4) & 1) == 0)
  {
    v10 = (*(v4 + 8))(v5, v4);
    MEMORY[0x28223BE20](v10, v11);
    *&v12[-32] = v5;
    *&v12[-24] = v4;
    *&v12[-16] = v3;
    specialized LogitIndexSet.reduce<A>(_:_:)(partial apply for closure #1 in LogitCollection.max(), -3.4028e38);
    outlined destroy of LogitIndexSet(v9);
  }
}

uint64_t specialized LogitCollection.testForNaN()(uint64_t a1)
{
  v2 = type metadata accessor for ContiguousBitSet();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LogitIndexSet(0);
  v9 = MEMORY[0x28223BE20](v7, v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9, v12);
  v15 = (&v17 - v14);
  v16 = a1 + 1;
  if (__OFADD__(a1, 1))
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v16 < a1)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  *v15 = a1;
  v15[1] = v16;
  swift_storeEnumTagMultiPayload();
  _s24TokenGenerationInference13LogitIndexSetOWOcTm_1(v15, v11, type metadata accessor for LogitIndexSet);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v3 + 32))(v6, v11, v2);
    ContiguousBitSet.first.getter();
    (*(v3 + 8))(v6, v2);
  }

  outlined destroy of LogitIndexSet(v15);
  return 0;
}

uint64_t specialized LogitCollection.testForNaN()()
{
  v1 = v0;
  v2 = type metadata accessor for ContiguousBitSet();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LogitIndexSet(0);
  v9 = MEMORY[0x28223BE20](v7, v8);
  v11 = (&v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v27 - v13;
  _s24TokenGenerationInference13LogitIndexSetOWOcTm_1(v1, &v27 - v13, type metadata accessor for LogitIndexSet);
  _s24TokenGenerationInference13LogitIndexSetOWOcTm_1(v14, v11, type metadata accessor for LogitIndexSet);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined destroy of LogitIndexSet(v14);
    v15 = *v11;
    if (*v11 == v11[1])
    {
      return 0;
    }

LABEL_5:
    result = type metadata accessor for SoftmaxLogitCollection(0);
    if ((v15 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v19 = *(v1 + *(result + 20));
      if (v15 < *(v19 + 16))
      {
        _H0 = *(v19 + 2 * v15 + 32);
        __asm { FCVT            S0, H0; float }

        v26 = log2f(_S0);
        if ((~LODWORD(v26) & 0x7F800000) == 0)
        {
          return (LODWORD(v26) & 0x7FFFFF) != 0;
        }

        return 0;
      }
    }

    __break(1u);
    return result;
  }

  (*(v3 + 32))(v6, v11, v2);
  v15 = ContiguousBitSet.first.getter();
  v17 = v16;
  (*(v3 + 8))(v6, v2);
  outlined destroy of LogitIndexSet(v14);
  if ((v17 & 1) == 0)
  {
    goto LABEL_5;
  }

  return 0;
}

{
  v1 = v0;
  v2 = type metadata accessor for ContiguousBitSet();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LogitIndexSet(0);
  v9 = MEMORY[0x28223BE20](v7, v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v16 - v13;
  _s24TokenGenerationInference13LogitIndexSetOWOcTm_1(v1, &v16 - v13, type metadata accessor for LogitIndexSet);
  _s24TokenGenerationInference13LogitIndexSetOWOcTm_1(v14, v11, type metadata accessor for LogitIndexSet);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v3 + 32))(v6, v11, v2);
    ContiguousBitSet.first.getter();
    (*(v3 + 8))(v6, v2);
  }

  outlined destroy of LogitIndexSet(v14);
  return 0;
}

uint64_t specialized LogitCollection.testForNaN()(int a1)
{
  v2 = type metadata accessor for ContiguousBitSet();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LogitIndexSet(0);
  v9 = MEMORY[0x28223BE20](v7, v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v12);
  v14 = (&v16 - v13);
  *v14 = a1;
  v14[1] = a1 + 1;
  swift_storeEnumTagMultiPayload();
  _s24TokenGenerationInference13LogitIndexSetOWOcTm_1(v14, v11, type metadata accessor for LogitIndexSet);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v3 + 32))(v6, v11, v2);
    ContiguousBitSet.first.getter();
    (*(v3 + 8))(v6, v2);
  }

  outlined destroy of LogitIndexSet(v14);
  return 0;
}

BOOL specialized LogitCollection.testForNaN()(float (*a1)(uint64_t))
{
  v3 = type metadata accessor for ContiguousBitSet();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for LogitIndexSet(0);
  v10 = MEMORY[0x28223BE20](v8, v9);
  v12 = (&v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v21 - v14;
  _s24TokenGenerationInference13LogitIndexSetOWOcTm_1(v1, &v21 - v14, type metadata accessor for LogitIndexSet);
  _s24TokenGenerationInference13LogitIndexSetOWOcTm_1(v15, v12, type metadata accessor for LogitIndexSet);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined destroy of LogitIndexSet(v15);
    v16 = *v12;
    if (*v12 == v12[1])
    {
      return 0;
    }
  }

  else
  {
    (*(v4 + 32))(v7, v12, v3);
    v16 = ContiguousBitSet.first.getter();
    v18 = v17;
    (*(v4 + 8))(v7, v3);
    outlined destroy of LogitIndexSet(v15);
    if (v18)
    {
      return 0;
    }
  }

  v19 = a1(v16);
  if ((~LODWORD(v19) & 0x7F800000) == 0)
  {
    return (LODWORD(v19) & 0x7FFFFF) != 0;
  }

  return 0;
}

Swift::Bool __swiftcall LogitCollection.testForNaN()()
{
  v2 = v1;
  v3 = v0;
  v4 = type metadata accessor for ContiguousBitSet();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for LogitIndexSet(0);
  v11 = MEMORY[0x28223BE20](v9, v10);
  v13 = (&v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v22 - v15;
  (*(v2 + 8))(v3, v2);
  _s24TokenGenerationInference13LogitIndexSetOWOcTm_1(v16, v13, type metadata accessor for LogitIndexSet);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined destroy of LogitIndexSet(v16);
    v17 = *v13;
    if (*v13 == v13[1])
    {
      return 0;
    }
  }

  else
  {
    (*(v5 + 32))(v8, v13, v4);
    v17 = ContiguousBitSet.first.getter();
    v19 = v18;
    (*(v5 + 8))(v8, v4);
    outlined destroy of LogitIndexSet(v16);
    if (v19)
    {
      return 0;
    }
  }

  v20 = (*(v2 + 24))(v17, v3, v2);
  if ((~LODWORD(v20) & 0x7F800000) == 0)
  {
    return (LODWORD(v20) & 0x7FFFFF) != 0;
  }

  return 0;
}

void *specialized LogitCollection.argmax()()
{
  v1 = v0;
  v2 = type metadata accessor for ContiguousBitSet();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for LogitIndexSet(0);
  v9 = MEMORY[0x28223BE20](v7, v8);
  v11 = &v20[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v20[-v13];
  v15 = type metadata accessor for CompositeLanguageModel.CompositeLogitCollection(0);
  _s24TokenGenerationInference13LogitIndexSetOWOcTm_1(v1 + *(v15 + 32), v14, type metadata accessor for LogitIndexSet);
  _s24TokenGenerationInference13LogitIndexSetOWOcTm_1(v14, v11, type metadata accessor for LogitIndexSet);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = outlined destroy of LogitIndexSet(v14);
    if (*v11 == v11[1])
    {
      return 0;
    }
  }

  else
  {
    (*(v3 + 32))(v6, v11, v2);
    v19 = ContiguousBitSet.isEmpty.getter();
    (*(v3 + 8))(v6, v2);
    v16 = outlined destroy of LogitIndexSet(v14);
    if (v19)
    {
      return 0;
    }
  }

  MEMORY[0x28223BE20](v16, v17);
  *&v20[-16] = v1;
  return specialized LogitIndexSet.reduce<A>(_:_:)(0, closure #1 in LogitCollection.slowArgmax()specialized partial apply, -3.4028e38);
}

{
  v1 = v0;
  v2 = type metadata accessor for ContiguousBitSet();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for LogitIndexSet(0);
  v9 = MEMORY[0x28223BE20](v7, v8);
  v11 = &v20[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v20[-v13];
  v15 = type metadata accessor for WeightedSparseLogitCollection(0);
  _s24TokenGenerationInference13LogitIndexSetOWOcTm_1(v1 + *(v15 + 20), v14, type metadata accessor for LogitIndexSet);
  _s24TokenGenerationInference13LogitIndexSetOWOcTm_1(v14, v11, type metadata accessor for LogitIndexSet);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = outlined destroy of LogitIndexSet(v14);
    if (*v11 == v11[1])
    {
      return 0;
    }
  }

  else
  {
    (*(v3 + 32))(v6, v11, v2);
    v19 = ContiguousBitSet.isEmpty.getter();
    (*(v3 + 8))(v6, v2);
    v16 = outlined destroy of LogitIndexSet(v14);
    if (v19)
    {
      return 0;
    }
  }

  MEMORY[0x28223BE20](v16, v17);
  *&v20[-16] = v1;
  return specialized LogitIndexSet.reduce<A>(_:_:)(0, closure #1 in LogitCollection.slowArgmax()specialized partial apply, -3.4028e38);
}

void *specialized LogitCollection.argmax()(void (*a1)(uint64_t *__return_ptr, float *, uint64_t))
{
  v3 = type metadata accessor for ContiguousBitSet();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for LogitIndexSet(0);
  v10 = MEMORY[0x28223BE20](v8, v9);
  v12 = &v20[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v20[-v14];
  _s24TokenGenerationInference13LogitIndexSetOWOcTm_1(v1, &v20[-v14], type metadata accessor for LogitIndexSet);
  _s24TokenGenerationInference13LogitIndexSetOWOcTm_1(v15, v12, type metadata accessor for LogitIndexSet);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = outlined destroy of LogitIndexSet(v15);
    if (*v12 == v12[1])
    {
      return 0;
    }
  }

  else
  {
    (*(v4 + 32))(v7, v12, v3);
    v19 = ContiguousBitSet.isEmpty.getter();
    (*(v4 + 8))(v7, v3);
    v16 = outlined destroy of LogitIndexSet(v15);
    if (v19)
    {
      return 0;
    }
  }

  MEMORY[0x28223BE20](v16, v17);
  *&v20[-16] = v1;
  return specialized LogitIndexSet.reduce<A>(_:_:)(0, a1, -3.4028e38);
}

Swift::Int_optional __swiftcall LogitCollection.argmax()()
{
  v0 = LogitCollection.slowArgmax()();
  v0.is_nil &= 1u;
  return v0;
}

uint64_t specialized LogitCollection.topK(_:)(uint64_t a1)
{
  v3 = type metadata accessor for ContiguousBitSet();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for LogitIndexSet(0);
  v10 = MEMORY[0x28223BE20](v8, v9);
  v12 = (&v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v24 - v14;
  v16 = type metadata accessor for MaskedLogitCollection(0);
  _s24TokenGenerationInference13LogitIndexSetOWOcTm_1(v1 + *(v16 + 20), v15, type metadata accessor for LogitIndexSet);
  _s24TokenGenerationInference13LogitIndexSetOWOcTm_1(v15, v12, type metadata accessor for LogitIndexSet);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    goto LABEL_5;
  }

  outlined destroy of LogitIndexSet(v15);
  v17 = v12[1];
  v18 = __OFSUB__(v17, *v12);
  v12 = (v17 - *v12);
  if (v18)
  {
    __break(1u);
LABEL_5:
    (*(v4 + 32))(v7, v12, v3);
    v12 = ContiguousBitSet.count.getter();
    (*(v4 + 8))(v7, v3);
    outlined destroy of LogitIndexSet(v15);
  }

  if (v12 < a1)
  {
    a1 = v12;
  }

  if (a1 != 1)
  {
    if (a1)
    {
      result = MaskedLogitCollection.makeDenseLogits()();
      if (a1 >= 0xFFFFFFFF80000000)
      {
        if (a1 > 0x7FFFFFFF)
        {
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

        v20 = *(result + 16);
        if (v20 >= a1)
        {
          v21 = a1;
        }

        else
        {
          v21 = *(result + 16);
        }

        if (a1 < 0)
        {
          goto LABEL_29;
        }

        if (v21 < 1)
        {
          v22 = MEMORY[0x277D84F90];
          if (!(v20 >> 31))
          {
            goto LABEL_18;
          }
        }

        else
        {
          result = static Array._allocateBufferUninitialized(minimumCapacity:)();
          v22 = result;
          *(result + 16) = v21;
          if (!(v20 >> 31))
          {
LABEL_18:
            TGIComputeArgTopKFloat32();
            *(v22 + 16) = v21;

            return v22;
          }
        }

        __break(1u);
      }

      __break(1u);
      goto LABEL_28;
    }

    return MEMORY[0x277D84F90];
  }

  v25 = MaskedLogitCollection.argmax()();
  if (v25.is_nil)
  {
    return MEMORY[0x277D84F90];
  }

  value = v25.value;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5Int32VGMd, &_ss23_ContiguousArrayStorageCys5Int32VGMR);
  result = swift_allocObject();
  *(result + 16) = xmmword_220AE8A30;
  if (value < 0xFFFFFFFF80000000)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (value <= 0x7FFFFFFF)
  {
    v22 = result;
    *(result + 32) = value;
    return v22;
  }

LABEL_31:
  __break(1u);
  return result;
}

{
  v2 = v1;
  v4 = type metadata accessor for ContiguousBitSet();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v31[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for LogitIndexSet(0);
  v11 = MEMORY[0x28223BE20](v9, v10);
  v13 = &v31[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v31[-v15];
  v17 = type metadata accessor for CompositeLanguageModel.CompositeLogitCollection(0);
  _s24TokenGenerationInference13LogitIndexSetOWOcTm_1(v2 + *(v17 + 32), v16, type metadata accessor for LogitIndexSet);
  _s24TokenGenerationInference13LogitIndexSetOWOcTm_1(v16, v13, type metadata accessor for LogitIndexSet);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    goto LABEL_5;
  }

  outlined destroy of LogitIndexSet(v16);
  v18 = v13[1];
  v19 = __OFSUB__(v18, *v13);
  v13 = (v18 - *v13);
  if (v19)
  {
    __break(1u);
LABEL_5:
    (*(v5 + 32))(v8, v13, v4);
    v13 = ContiguousBitSet.count.getter();
    (*(v5 + 8))(v8, v4);
    outlined destroy of LogitIndexSet(v16);
  }

  if (v13 >= a1)
  {
    v20 = a1;
  }

  else
  {
    v20 = v13;
  }

  if (v20 != 1)
  {
    if (v20)
    {
      result = LogitIndexSet.last.getter();
      if (v22)
      {
        v23 = MEMORY[0x277D84F90];
      }

      else
      {
        if (result < 0)
        {
LABEL_36:
          __break(1u);
          goto LABEL_37;
        }

        MEMORY[0x28223BE20](result, v22);
        *&v31[-16] = v2;
        result = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSNySiG_Sfs5NeverOTg5(closure #1 in LogitCollection.makeDenseLogits()specialized partial apply, &v31[-32], 0, v28);
        v23 = result;
      }

      if (v20 >= 0xFFFFFFFF80000000)
      {
        if (v20 > 0x7FFFFFFF)
        {
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

        v29 = *(v23 + 16);
        if (v29 >= v20)
        {
          v30 = v20;
        }

        else
        {
          v30 = *(v23 + 16);
        }

        if (v20 < 0)
        {
          goto LABEL_34;
        }

        if (v30 < 1)
        {
          v26 = MEMORY[0x277D84F90];
          if (!(v29 >> 31))
          {
            goto LABEL_28;
          }
        }

        else
        {
          result = static Array._allocateBufferUninitialized(minimumCapacity:)();
          v26 = result;
          *(result + 16) = v30;
          if (!(v29 >> 31))
          {
LABEL_28:
            TGIComputeArgTopKFloat32();
            *(v26 + 16) = v30;

            return v26;
          }
        }

        __break(1u);
      }

      __break(1u);
      goto LABEL_33;
    }

    return MEMORY[0x277D84F90];
  }

  v24 = specialized LogitCollection.argmax()();
  if (v25)
  {
    return MEMORY[0x277D84F90];
  }

  v27 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5Int32VGMd, &_ss23_ContiguousArrayStorageCys5Int32VGMR);
  result = swift_allocObject();
  *(result + 16) = xmmword_220AE8A30;
  if (v27 < 0xFFFFFFFF80000000)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v27 <= 0x7FFFFFFF)
  {
    v26 = result;
    *(result + 32) = v27;
    return v26;
  }

LABEL_37:
  __break(1u);
  return result;
}

{
  v2 = v1;
  v4 = type metadata accessor for ContiguousBitSet();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v31[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for LogitIndexSet(0);
  v11 = MEMORY[0x28223BE20](v9, v10);
  v13 = &v31[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v31[-v15];
  v17 = type metadata accessor for WeightedSparseLogitCollection(0);
  _s24TokenGenerationInference13LogitIndexSetOWOcTm_1(v2 + *(v17 + 20), v16, type metadata accessor for LogitIndexSet);
  _s24TokenGenerationInference13LogitIndexSetOWOcTm_1(v16, v13, type metadata accessor for LogitIndexSet);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    goto LABEL_5;
  }

  outlined destroy of LogitIndexSet(v16);
  v18 = v13[1];
  v19 = __OFSUB__(v18, *v13);
  v13 = (v18 - *v13);
  if (v19)
  {
    __break(1u);
LABEL_5:
    (*(v5 + 32))(v8, v13, v4);
    v13 = ContiguousBitSet.count.getter();
    (*(v5 + 8))(v8, v4);
    outlined destroy of LogitIndexSet(v16);
  }

  if (v13 >= a1)
  {
    v20 = a1;
  }

  else
  {
    v20 = v13;
  }

  if (v20 != 1)
  {
    if (v20)
    {
      result = LogitIndexSet.last.getter();
      if (v22)
      {
        v23 = MEMORY[0x277D84F90];
      }

      else
      {
        if (result < 0)
        {
LABEL_36:
          __break(1u);
          goto LABEL_37;
        }

        MEMORY[0x28223BE20](result, v22);
        *&v31[-16] = v2;
        result = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSNySiG_Sfs5NeverOTg5(closure #1 in LogitCollection.makeDenseLogits()specialized partial apply, &v31[-32], 0, v28);
        v23 = result;
      }

      if (v20 >= 0xFFFFFFFF80000000)
      {
        if (v20 > 0x7FFFFFFF)
        {
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

        v29 = *(v23 + 16);
        if (v29 >= v20)
        {
          v30 = v20;
        }

        else
        {
          v30 = *(v23 + 16);
        }

        if (v20 < 0)
        {
          goto LABEL_34;
        }

        if (v30 < 1)
        {
          v26 = MEMORY[0x277D84F90];
          if (!(v29 >> 31))
          {
            goto LABEL_28;
          }
        }

        else
        {
          result = static Array._allocateBufferUninitialized(minimumCapacity:)();
          v26 = result;
          *(result + 16) = v30;
          if (!(v29 >> 31))
          {
LABEL_28:
            TGIComputeArgTopKFloat32();
            *(v26 + 16) = v30;

            return v26;
          }
        }

        __break(1u);
      }

      __break(1u);
      goto LABEL_33;
    }

    return MEMORY[0x277D84F90];
  }

  v24 = specialized LogitCollection.argmax()();
  if (v25)
  {
    return MEMORY[0x277D84F90];
  }

  v27 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5Int32VGMd, &_ss23_ContiguousArrayStorageCys5Int32VGMR);
  result = swift_allocObject();
  *(result + 16) = xmmword_220AE8A30;
  if (v27 < 0xFFFFFFFF80000000)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v27 <= 0x7FFFFFFF)
  {
    v26 = result;
    *(result + 32) = v27;
    return v26;
  }

LABEL_37:
  __break(1u);
  return result;
}

uint64_t specialized LogitCollection.topK(_:)(uint64_t a1, void (*a2)(uint64_t *__return_ptr, float *, uint64_t), void *(*a3)(int *__return_ptr, uint64_t *))
{
  v32[0] = a3;
  v5 = v3;
  v7 = type metadata accessor for ContiguousBitSet();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for LogitIndexSet(0);
  v14 = MEMORY[0x28223BE20](v12, v13);
  v16 = (v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14, v17);
  v19 = v32 - v18;
  _s24TokenGenerationInference13LogitIndexSetOWOcTm_1(v5, v32 - v18, type metadata accessor for LogitIndexSet);
  _s24TokenGenerationInference13LogitIndexSetOWOcTm_1(v19, v16, type metadata accessor for LogitIndexSet);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    goto LABEL_5;
  }

  outlined destroy of LogitIndexSet(v19);
  v20 = v16[1];
  v21 = __OFSUB__(v20, *v16);
  v16 = (v20 - *v16);
  if (v21)
  {
    __break(1u);
LABEL_5:
    (*(v8 + 32))(v11, v16, v7);
    v16 = ContiguousBitSet.count.getter();
    (*(v8 + 8))(v11, v7);
    outlined destroy of LogitIndexSet(v19);
  }

  if (v16 < a1)
  {
    a1 = v16;
  }

  if (a1 != 1)
  {
    if (a1)
    {
      result = LogitIndexSet.last.getter();
      if (v23)
      {
        v24 = MEMORY[0x277D84F90];
      }

      else
      {
        if (result < 0)
        {
LABEL_35:
          __break(1u);
          goto LABEL_36;
        }

        MEMORY[0x28223BE20](result, v23);
        v32[-2] = v5;
        result = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSNySiG_Sfs5NeverOTg5(v32[0], &v32[-4], 0, v29);
        v24 = result;
      }

      if (a1 >= 0xFFFFFFFF80000000)
      {
        if (a1 > 0x7FFFFFFF)
        {
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
          goto LABEL_34;
        }

        v30 = *(v24 + 16);
        if (v30 >= a1)
        {
          v31 = a1;
        }

        else
        {
          v31 = *(v24 + 16);
        }

        if (a1 < 0)
        {
          goto LABEL_33;
        }

        if (v31 < 1)
        {
          v27 = MEMORY[0x277D84F90];
          if (!(v30 >> 31))
          {
            goto LABEL_27;
          }
        }

        else
        {
          result = static Array._allocateBufferUninitialized(minimumCapacity:)();
          v27 = result;
          *(result + 16) = v31;
          if (!(v30 >> 31))
          {
LABEL_27:
            TGIComputeArgTopKFloat32();
            *(v27 + 16) = v31;

            return v27;
          }
        }

        __break(1u);
      }

      __break(1u);
      goto LABEL_32;
    }

    return MEMORY[0x277D84F90];
  }

  v25 = specialized LogitCollection.argmax()(a2);
  if (v26)
  {
    return MEMORY[0x277D84F90];
  }

  v28 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5Int32VGMd, &_ss23_ContiguousArrayStorageCys5Int32VGMR);
  result = swift_allocObject();
  *(result + 16) = xmmword_220AE8A30;
  if (v28 < 0xFFFFFFFF80000000)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v28 <= 0x7FFFFFFF)
  {
    v27 = result;
    *(result + 32) = v28;
    return v27;
  }

LABEL_36:
  __break(1u);
  return result;
}

uint64_t LogitCollection.topK(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for ContiguousBitSet();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for LogitIndexSet(0);
  v14 = MEMORY[0x28223BE20](v12, v13);
  v16 = (&v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v30 - v18;
  v20 = *(a3 + 8);
  v30 = v3;
  v31 = a2;
  v20(a2, a3);
  _s24TokenGenerationInference13LogitIndexSetOWOcTm_1(v19, v16, type metadata accessor for LogitIndexSet);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    goto LABEL_5;
  }

  outlined destroy of LogitIndexSet(v19);
  v21 = v16[1];
  v22 = v21 - *v16;
  if (__OFSUB__(v21, *v16))
  {
    __break(1u);
LABEL_5:
    (*(v8 + 32))(v11, v16, v7);
    v22 = ContiguousBitSet.count.getter();
    (*(v8 + 8))(v11, v7);
    outlined destroy of LogitIndexSet(v19);
  }

  if (v22 < a1)
  {
    a1 = v22;
  }

  if (!a1)
  {
    return MEMORY[0x277D84F90];
  }

  if (a1 != 1)
  {
    result = (*(a3 + 72))(v31, a3);
    if (a1 >= 0xFFFFFFFF80000000)
    {
      if (a1 > 0x7FFFFFFF)
      {
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      v27 = *(result + 16);
      if (v27 >= a1)
      {
        v28 = a1;
      }

      else
      {
        v28 = *(result + 16);
      }

      if (a1 < 0)
      {
        goto LABEL_29;
      }

      if (v28 < 1)
      {
        v25 = MEMORY[0x277D84F90];
        if (!(v27 >> 31))
        {
          goto LABEL_20;
        }
      }

      else
      {
        result = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v25 = result;
        *(result + 16) = v28;
        if (!(v27 >> 31))
        {
LABEL_20:
          TGIComputeArgTopKFloat32();
          *(v25 + 16) = v28;

          return v25;
        }
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_28;
  }

  v23 = (*(a3 + 32))(v31, a3);
  if (v24)
  {
    return MEMORY[0x277D84F90];
  }

  v29 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5Int32VGMd, &_ss23_ContiguousArrayStorageCys5Int32VGMR);
  result = swift_allocObject();
  *(result + 16) = xmmword_220AE8A30;
  if (v29 < 0xFFFFFFFF80000000)
  {
    goto LABEL_30;
  }

  if (v29 <= 0x7FFFFFFF)
  {
    v25 = result;
    *(result + 32) = v29;
    return v25;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t specialized LogitCollection.topP(_:)(uint64_t a1, uint64_t a2, float a3, float a4, float a5)
{
  _S8 = a3;
  v10 = type metadata accessor for ContiguousBitSet();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for LogitIndexSet(0);
  v17 = MEMORY[0x28223BE20](v15, v16);
  v19 = (&v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17, v20);
  v22 = (&v36 - v21);
  if (_S8 != 0.0)
  {
    v24 = specialized LogitCollection.makeDenseLogits()(a1, a2, a4, a5);
    v25 = Array<A>.applySoftmax()(v24);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_220AE8A20;
    *(v26 + 32) = a1;
    *(v26 + 40) = a2;
    _s24TokenGenerationInference13LogitIndexSetO6tokensyACxSlRzSi7ElementRtzlFZSaySiG_Tt1g5(v26, v22);

    _s24TokenGenerationInference13LogitIndexSetOWOcTm_1(v22, v19, type metadata accessor for LogitIndexSet);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of LogitIndexSet(v22);
      v28 = v19[1];
      v29 = v28 - *v19;
      if (!__OFSUB__(v28, *v19))
      {
        goto LABEL_10;
      }

      __break(1u);
    }

    (*(v11 + 32))(v14, v19, v10);
    v30 = ContiguousBitSet.count.getter();
    (*(v11 + 8))(v14, v10);
    outlined destroy of LogitIndexSet(v22);
    v29 = v30;
LABEL_10:
    __asm { FCVT            H0, S8 }

    v35 = Array<A>.topCumulativeSum(_:maxCount:)(v29, v25, _Q0);

    return v35;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5Int32VGMd, &_ss23_ContiguousArrayStorageCys5Int32VGMR);
  result = swift_allocObject();
  *(result + 16) = xmmword_220AE8A30;
  if (a1 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (a1 <= 0x7FFFFFFF)
  {
    *(result + 32) = a1;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t specialized LogitCollection.topP(_:)(float a1)
{
  _S8 = a1;
  v3 = type metadata accessor for ContiguousBitSet();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for LogitIndexSet(0);
  v10 = MEMORY[0x28223BE20](v8, v9);
  v12 = (&v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v29 - v14;
  if (_S8 == 0.0)
  {
    v30 = MaskedLogitCollection.argmax()();
    if (v30.is_nil)
    {
      return MEMORY[0x277D84F90];
    }

    goto LABEL_8;
  }

  v17 = MaskedLogitCollection.makeDenseLogits()();
  v18 = Array<A>.applySoftmax()(v17);

  v19 = type metadata accessor for MaskedLogitCollection(0);
  _s24TokenGenerationInference13LogitIndexSetOWOcTm_1(v1 + *(v19 + 20), v15, type metadata accessor for LogitIndexSet);
  _s24TokenGenerationInference13LogitIndexSetOWOcTm_1(v15, v12, type metadata accessor for LogitIndexSet);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v4 + 32))(v7, v12, v3);
    v23 = ContiguousBitSet.count.getter();
    (*(v4 + 8))(v7, v3);
    outlined destroy of LogitIndexSet(v15);
    v30.value = v23;
LABEL_12:
    __asm { FCVT            H0, S8 }

    v28 = Array<A>.topCumulativeSum(_:maxCount:)(v30.value, v18, _Q0);

    return v28;
  }

  outlined destroy of LogitIndexSet(v15);
  v21 = v12[1];
  v30.value = v21 - *v12;
  if (!__OFSUB__(v21, *v12))
  {
    goto LABEL_12;
  }

  __break(1u);
LABEL_8:
  value = v30.value;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5Int32VGMd, &_ss23_ContiguousArrayStorageCys5Int32VGMR);
  result = swift_allocObject();
  *(result + 16) = xmmword_220AE8A30;
  if (value < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (value <= 0x7FFFFFFF)
  {
    *(result + 32) = value;
    return result;
  }

  __break(1u);
  return result;
}

{
  v2 = v1;
  _S8 = a1;
  v4 = type metadata accessor for ContiguousBitSet();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v44[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for LogitIndexSet(0);
  v11 = MEMORY[0x28223BE20](v9, v10);
  v13 = &v44[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x28223BE20](v11, v14);
  v17 = &v44[-v16];
  v19 = MEMORY[0x28223BE20](v15, v18);
  v21 = &v44[-v20];
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v44[-v23];
  v25 = *(type metadata accessor for CompositeLanguageModel.CompositeLogitCollection(0) + 32);
  if (_S8 == 0.0)
  {
    _s24TokenGenerationInference13LogitIndexSetOWOcTm_1(v2 + v25, v24, type metadata accessor for LogitIndexSet);
    _s24TokenGenerationInference13LogitIndexSetOWOcTm_1(v24, v21, type metadata accessor for LogitIndexSet);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v26 = outlined destroy of LogitIndexSet(v24);
      if (*v21 == v21[1])
      {
        return MEMORY[0x277D84F90];
      }
    }

    else
    {
      (*(v5 + 32))(v8, v21, v4);
      v31 = ContiguousBitSet.isEmpty.getter();
      (*(v5 + 8))(v8, v4);
      v26 = outlined destroy of LogitIndexSet(v24);
      if (v31)
      {
        return MEMORY[0x277D84F90];
      }
    }

    MEMORY[0x28223BE20](v26, v27);
    *&v44[-16] = v2;
    v32 = specialized LogitIndexSet.reduce<A>(_:_:)(0, partial apply for specialized closure #1 in LogitCollection.slowArgmax(), -3.4028e38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5Int32VGMd, &_ss23_ContiguousArrayStorageCys5Int32VGMR);
    result = swift_allocObject();
    *(result + 16) = xmmword_220AE8A30;
    if (v32 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v32 <= 0x7FFFFFFF)
    {
      *(result + 32) = v32;
      return result;
    }

    __break(1u);
    goto LABEL_21;
  }

  result = LogitIndexSet.last.getter();
  if (v29)
  {
    v30 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    MEMORY[0x28223BE20](result, v29);
    *&v44[-16] = v2;
    v30 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSNySiG_Sfs5NeverOTg5(closure #1 in LogitCollection.makeDenseLogits()specialized partial apply, &v44[-32], 0, v33);
LABEL_13:
    v34 = Array<A>.applySoftmax()(v30);

    _s24TokenGenerationInference13LogitIndexSetOWOcTm_1(v2 + v25, v17, type metadata accessor for LogitIndexSet);
    _s24TokenGenerationInference13LogitIndexSetOWOcTm_1(v17, v13, type metadata accessor for LogitIndexSet);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of LogitIndexSet(v17);
      v36 = v13[1];
      v37 = v36 - *v13;
      if (!__OFSUB__(v36, *v13))
      {
        goto LABEL_18;
      }

      __break(1u);
    }

    (*(v5 + 32))(v8, v13, v4);
    v38 = ContiguousBitSet.count.getter();
    (*(v5 + 8))(v8, v4);
    outlined destroy of LogitIndexSet(v17);
    v37 = v38;
LABEL_18:
    __asm { FCVT            H0, S8 }

    v43 = Array<A>.topCumulativeSum(_:maxCount:)(v37, v34, _Q0);

    return v43;
  }

LABEL_21:
  __break(1u);
  return result;
}

{
  _S8 = a1;
  v3 = type metadata accessor for ContiguousBitSet();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v31[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for LogitIndexSet(0);
  v10 = MEMORY[0x28223BE20](v8, v9);
  v12 = &v31[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v31[-v14];
  if (_S8 == 0.0)
  {
    v32 = WeightedDenseLogitCollection.argmax()();
    if (v32.is_nil)
    {
      return MEMORY[0x277D84F90];
    }

    value = v32.value;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5Int32VGMd, &_ss23_ContiguousArrayStorageCys5Int32VGMR);
    result = swift_allocObject();
    *(result + 16) = xmmword_220AE8A30;
    if (value < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (value <= 0x7FFFFFFF)
    {
      *(result + 32) = value;
      return result;
    }

    __break(1u);
    goto LABEL_19;
  }

  result = LogitIndexSet.last.getter();
  if (v17)
  {
    v18 = MEMORY[0x277D84F90];
    goto LABEL_11;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    MEMORY[0x28223BE20](result, v17);
    *&v31[-16] = v1;
    v18 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSNySiG_Sfs5NeverOTg5(closure #1 in LogitCollection.makeDenseLogits()specialized partial apply, &v31[-32], 0, v20);
LABEL_11:
    v21 = Array<A>.applySoftmax()(v18);

    _s24TokenGenerationInference13LogitIndexSetOWOcTm_1(v1, v15, type metadata accessor for LogitIndexSet);
    _s24TokenGenerationInference13LogitIndexSetOWOcTm_1(v15, v12, type metadata accessor for LogitIndexSet);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of LogitIndexSet(v15);
      v23 = v12[1];
      v24 = v23 - *v12;
      if (!__OFSUB__(v23, *v12))
      {
        goto LABEL_16;
      }

      __break(1u);
    }

    (*(v4 + 32))(v7, v12, v3);
    v25 = ContiguousBitSet.count.getter();
    (*(v4 + 8))(v7, v3);
    outlined destroy of LogitIndexSet(v15);
    v24 = v25;
LABEL_16:
    __asm { FCVT            H0, S8 }

    v30 = Array<A>.topCumulativeSum(_:maxCount:)(v24, v21, _Q0);

    return v30;
  }

LABEL_19:
  __break(1u);
  return result;
}

{
  v2 = v1;
  _S8 = a1;
  v4 = type metadata accessor for ContiguousBitSet();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v44[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for LogitIndexSet(0);
  v11 = MEMORY[0x28223BE20](v9, v10);
  v13 = &v44[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x28223BE20](v11, v14);
  v17 = &v44[-v16];
  v19 = MEMORY[0x28223BE20](v15, v18);
  v21 = &v44[-v20];
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v44[-v23];
  v25 = *(type metadata accessor for WeightedSparseLogitCollection(0) + 20);
  if (_S8 == 0.0)
  {
    _s24TokenGenerationInference13LogitIndexSetOWOcTm_1(v2 + v25, v24, type metadata accessor for LogitIndexSet);
    _s24TokenGenerationInference13LogitIndexSetOWOcTm_1(v24, v21, type metadata accessor for LogitIndexSet);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v26 = outlined destroy of LogitIndexSet(v24);
      if (*v21 == v21[1])
      {
        return MEMORY[0x277D84F90];
      }
    }

    else
    {
      (*(v5 + 32))(v8, v21, v4);
      v31 = ContiguousBitSet.isEmpty.getter();
      (*(v5 + 8))(v8, v4);
      v26 = outlined destroy of LogitIndexSet(v24);
      if (v31)
      {
        return MEMORY[0x277D84F90];
      }
    }

    MEMORY[0x28223BE20](v26, v27);
    *&v44[-16] = v2;
    v32 = specialized LogitIndexSet.reduce<A>(_:_:)(0, partial apply for specialized closure #1 in LogitCollection.slowArgmax(), -3.4028e38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5Int32VGMd, &_ss23_ContiguousArrayStorageCys5Int32VGMR);
    result = swift_allocObject();
    *(result + 16) = xmmword_220AE8A30;
    if (v32 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v32 <= 0x7FFFFFFF)
    {
      *(result + 32) = v32;
      return result;
    }

    __break(1u);
    goto LABEL_21;
  }

  result = LogitIndexSet.last.getter();
  if (v29)
  {
    v30 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    MEMORY[0x28223BE20](result, v29);
    *&v44[-16] = v2;
    v30 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSNySiG_Sfs5NeverOTg5(closure #1 in LogitCollection.makeDenseLogits()specialized partial apply, &v44[-32], 0, v33);
LABEL_13:
    v34 = Array<A>.applySoftmax()(v30);

    _s24TokenGenerationInference13LogitIndexSetOWOcTm_1(v2 + v25, v17, type metadata accessor for LogitIndexSet);
    _s24TokenGenerationInference13LogitIndexSetOWOcTm_1(v17, v13, type metadata accessor for LogitIndexSet);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of LogitIndexSet(v17);
      v36 = v13[1];
      v37 = v36 - *v13;
      if (!__OFSUB__(v36, *v13))
      {
        goto LABEL_18;
      }

      __break(1u);
    }

    (*(v5 + 32))(v8, v13, v4);
    v38 = ContiguousBitSet.count.getter();
    (*(v5 + 8))(v8, v4);
    outlined destroy of LogitIndexSet(v17);
    v37 = v38;
LABEL_18:
    __asm { FCVT            H0, S8 }

    v43 = Array<A>.topCumulativeSum(_:maxCount:)(v37, v34, _Q0);

    return v43;
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t specialized LogitCollection.topP(_:)(void *(*a1)(int *__return_ptr, uint64_t *), void (*a2)(uint64_t *__return_ptr, float *, uint64_t), float a3)
{
  v46[0] = a2;
  v5 = v3;
  _S8 = a3;
  v7 = type metadata accessor for ContiguousBitSet();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for LogitIndexSet(0);
  v14 = MEMORY[0x28223BE20](v12, v13);
  v16 = (v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = MEMORY[0x28223BE20](v14, v17);
  v20 = v46 - v19;
  v22 = MEMORY[0x28223BE20](v18, v21);
  v24 = (v46 - v23);
  MEMORY[0x28223BE20](v22, v25);
  v27 = v46 - v26;
  if (_S8 == 0.0)
  {
    _s24TokenGenerationInference13LogitIndexSetOWOcTm_1(v5, v46 - v26, type metadata accessor for LogitIndexSet);
    _s24TokenGenerationInference13LogitIndexSetOWOcTm_1(v27, v24, type metadata accessor for LogitIndexSet);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v28 = outlined destroy of LogitIndexSet(v27);
      if (*v24 == v24[1])
      {
        return MEMORY[0x277D84F90];
      }
    }

    else
    {
      (*(v8 + 32))(v11, v24, v7);
      v33 = ContiguousBitSet.isEmpty.getter();
      (*(v8 + 8))(v11, v7);
      v28 = outlined destroy of LogitIndexSet(v27);
      if (v33)
      {
        return MEMORY[0x277D84F90];
      }
    }

    MEMORY[0x28223BE20](v28, v29);
    v46[-2] = v5;
    v34 = specialized LogitIndexSet.reduce<A>(_:_:)(0, v46[0], -3.4028e38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5Int32VGMd, &_ss23_ContiguousArrayStorageCys5Int32VGMR);
    result = swift_allocObject();
    *(result + 16) = xmmword_220AE8A30;
    if (v34 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v34 <= 0x7FFFFFFF)
    {
      *(result + 32) = v34;
      return result;
    }

    __break(1u);
    goto LABEL_21;
  }

  result = LogitIndexSet.last.getter();
  if (v31)
  {
    v32 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    MEMORY[0x28223BE20](result, v31);
    v46[-2] = v5;
    v32 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSNySiG_Sfs5NeverOTg5(a1, &v46[-4], 0, v35);
LABEL_13:
    v36 = Array<A>.applySoftmax()(v32);

    _s24TokenGenerationInference13LogitIndexSetOWOcTm_1(v5, v20, type metadata accessor for LogitIndexSet);
    _s24TokenGenerationInference13LogitIndexSetOWOcTm_1(v20, v16, type metadata accessor for LogitIndexSet);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of LogitIndexSet(v20);
      v38 = v16[1];
      v39 = v38 - *v16;
      if (!__OFSUB__(v38, *v16))
      {
        goto LABEL_18;
      }

      __break(1u);
    }

    (*(v8 + 32))(v11, v16, v7);
    v40 = ContiguousBitSet.count.getter();
    (*(v8 + 8))(v11, v7);
    outlined destroy of LogitIndexSet(v20);
    v39 = v40;
LABEL_18:
    __asm { FCVT            H0, S8 }

    v45 = Array<A>.topCumulativeSum(_:maxCount:)(v39, v36, _Q0);

    return v45;
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t specialized LogitCollection.topP(_:)(uint64_t a1, float a2, float a3)
{
  _S8 = a2;
  v6 = type metadata accessor for ContiguousBitSet();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for LogitIndexSet(0);
  v13 = MEMORY[0x28223BE20](v11, v12);
  v15 = (&v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13, v16);
  v18 = (&v32 - v17);
  if (_S8 == 0.0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5Int32VGMd, &_ss23_ContiguousArrayStorageCys5Int32VGMR);
    result = swift_allocObject();
    *(result + 16) = xmmword_220AE8A30;
    if (a1 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (a1 <= 0x7FFFFFFF)
    {
      *(result + 32) = a1;
      return result;
    }

    __break(1u);
    goto LABEL_15;
  }

  v20 = specialized LogitCollection.makeDenseLogits()(a1, a3);
  v21 = Array<A>.applySoftmax()(v20);

  v22 = a1 + 1;
  if (__OFADD__(a1, 1))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v22 >= a1)
  {
    *v18 = a1;
    v18[1] = v22;
    swift_storeEnumTagMultiPayload();
    _s24TokenGenerationInference13LogitIndexSetOWOcTm_1(v18, v15, type metadata accessor for LogitIndexSet);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined destroy of LogitIndexSet(v18);
      v24 = v15[1];
      v25 = v24 - *v15;
      if (!__OFSUB__(v24, *v15))
      {
        goto LABEL_12;
      }

      __break(1u);
    }

    (*(v7 + 32))(v10, v15, v6);
    v26 = ContiguousBitSet.count.getter();
    (*(v7 + 8))(v10, v6);
    outlined destroy of LogitIndexSet(v18);
    v25 = v26;
LABEL_12:
    __asm { FCVT            H0, S8 }

    v31 = Array<A>.topCumulativeSum(_:maxCount:)(v25, v21, _Q0);

    return v31;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t LogitCollection.topP(_:)(uint64_t a1, uint64_t a2, float a3)
{
  _S8 = a3;
  v6 = type metadata accessor for ContiguousBitSet();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for LogitIndexSet(0);
  v13 = MEMORY[0x28223BE20](v11, v12);
  v15 = (&v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v32 - v17;
  if (_S8 == 0.0)
  {
    v19 = (*(a2 + 32))(a1, a2);
    if (v20)
    {
      return MEMORY[0x277D84F90];
    }

    goto LABEL_8;
  }

  v22 = (*(a2 + 72))(a1, a2);
  v33 = Array<A>.applySoftmax()(v22);

  (*(a2 + 8))(a1, a2);
  _s24TokenGenerationInference13LogitIndexSetOWOcTm_1(v18, v15, type metadata accessor for LogitIndexSet);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v7 + 32))(v10, v15, v6);
    v26 = ContiguousBitSet.count.getter();
    (*(v7 + 8))(v10, v6);
    outlined destroy of LogitIndexSet(v18);
    v19 = v26;
LABEL_12:
    __asm { FCVT            H0, S8 }

    v31 = Array<A>.topCumulativeSum(_:maxCount:)(v19, v33, _Q0);

    return v31;
  }

  outlined destroy of LogitIndexSet(v18);
  v24 = v15[1];
  v19 = v24 - *v15;
  if (!__OFSUB__(v24, *v15))
  {
    goto LABEL_12;
  }

  __break(1u);
LABEL_8:
  v25 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5Int32VGMd, &_ss23_ContiguousArrayStorageCys5Int32VGMR);
  result = swift_allocObject();
  *(result + 16) = xmmword_220AE8A30;
  if (v25 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v25 <= 0x7FFFFFFF)
  {
    *(result + 32) = v25;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t LogitCollection.applySoftmax()(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 72))(a1);
  v3 = Array<A>.applySoftmax()(v2);

  return v3;
}

uint64_t LogitCollection.applySoftmax(temperature:)(float a1, uint64_t a2, uint64_t a3)
{
  v4 = (*(a3 + 72))(a2);
  v5.n128_f32[0] = a1;
  v6 = Array<A>.applySoftmax(temperature:)(v4, v5);

  return v6;
}

void *specialized LogitCollection.makeDenseLogits()(uint64_t a1)
{
  v39 = type metadata accessor for ContiguousBitSet();
  v2 = *(v39 - 8);
  MEMORY[0x28223BE20](v39, v3);
  v38 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for LogitIndexSet(0);
  v6 = MEMORY[0x28223BE20](v41, v5);
  v42 = (&v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = MEMORY[0x28223BE20](v6, v8);
  v35 = (&v35 - v10);
  result = MEMORY[0x28223BE20](v9, v11);
  v14 = (&v35 - v13);
  v15 = a1 + 1;
  if (__OFADD__(a1, 1))
  {
    goto LABEL_29;
  }

  if (v15 < a1)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  *v14 = a1;
  v14[1] = v15;
  swift_storeEnumTagMultiPayload();
  v16 = LogitIndexSet.last.getter();
  v18 = v17;
  result = outlined destroy of LogitIndexSet(v14);
  v19 = MEMORY[0x277D84F90];
  if (v18)
  {
    return v19;
  }

  if (v16 < 0)
  {
    goto LABEL_31;
  }

  v20 = v16 + 1;
  if (__OFADD__(v16, 1))
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v44 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v20 & ~(v20 >> 63), 0);
  if ((v20 & 0x8000000000000000) == 0)
  {
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v19 = v44;
    v36 = (v2 + 8);
    v37 = (v2 + 32);
    v43 = a1;
    result = v35;
    v40 = a1 + 1;
    while (1)
    {
      v24 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      if (v23)
      {
        goto LABEL_34;
      }

      *result = a1;
      result[1] = v15;
      v25 = result;
      swift_storeEnumTagMultiPayload();
      v26 = v42;
      _s24TokenGenerationInference13LogitIndexSetOWOcTm_1(v25, v42, type metadata accessor for LogitIndexSet);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        outlined destroy of LogitIndexSet(v25);
        result = v25;
        if (v22 >= *v26 && v22 < v42[1])
        {
LABEL_18:
          if (v22 == v43)
          {
            v27 = 0.0;
          }

          else
          {
            v27 = -65504.0;
          }

          goto LABEL_21;
        }
      }

      else
      {
        v28 = v38;
        v29 = v26;
        v30 = v39;
        (*v37)(v38, v29, v39);
        v31 = ContiguousBitSet.contains(_:)(v22);
        (*v36)(v28, v30);
        outlined destroy of LogitIndexSet(v25);
        result = v25;
        if (v31)
        {
          goto LABEL_18;
        }
      }

      v27 = -10000.0 - v22;
LABEL_21:
      v44 = v19;
      v33 = *(v19 + 16);
      v32 = *(v19 + 24);
      v15 = v40;
      if (v33 >= v32 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1);
        result = v35;
        v19 = v44;
      }

      *(v19 + 16) = v33 + 1;
      *(v19 + 4 * v33 + 32) = v27;
      v23 = v22 == v16;
      if (v22 == v16)
      {
        v22 = 0;
        a1 = v43;
      }

      else
      {
        v34 = __OFADD__(v22++, 1);
        a1 = v43;
        if (v34)
        {
          goto LABEL_28;
        }
      }

      ++v21;
      if (v24 == v20)
      {
        return v19;
      }
    }
  }

LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

uint64_t specialized LogitCollection.makeDenseLogits()(uint64_t a1, uint64_t a2, float a3, float a4)
{
  v70 = type metadata accessor for ContiguousBitSet();
  v8 = *(v70 - 8);
  v10 = MEMORY[0x28223BE20](v70, v9);
  v60 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v60 - v13;
  v63 = type metadata accessor for LogitIndexSet(0);
  v16 = MEMORY[0x28223BE20](v63, v15);
  v68 = (&v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = MEMORY[0x28223BE20](v16, v18);
  v71 = (&v60 - v20);
  v22 = MEMORY[0x28223BE20](v19, v21);
  v69 = &v60 - v23;
  MEMORY[0x28223BE20](v22, v24);
  v26 = (&v60 - v25);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
  v27 = swift_allocObject();
  v64 = xmmword_220AE8A20;
  *(v27 + 16) = xmmword_220AE8A20;
  v66 = a2;
  v67 = a1;
  *(v27 + 32) = a1;
  *(v27 + 40) = a2;
  _s24TokenGenerationInference13LogitIndexSetO6tokensyACxSlRzSi7ElementRtzlFZSaySiG_Tt1g5(v27, v26);

  v28 = LogitIndexSet.last.getter();
  v30 = v29;
  result = outlined destroy of LogitIndexSet(v26);
  v32 = MEMORY[0x277D84F90];
  if (v30)
  {
    return v32;
  }

  if (v28 < 0)
  {
    goto LABEL_41;
  }

  v33 = v28 + 1;
  if (__OFADD__(v28, 1))
  {
LABEL_42:
    __break(1u);
  }

  else
  {
    v75 = MEMORY[0x277D84F90];
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v33 & ~(v33 >> 63), 0);
    if ((v33 & 0x8000000000000000) == 0)
    {
      v34 = 0;
      v35 = 0;
      v36 = 0;
      v32 = v75;
      v61 = (v8 + 32);
      v62 = (v8 + 8);
      v37 = v71;
      while (1)
      {
        v38 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
          goto LABEL_42;
        }

        if (v36)
        {
          goto LABEL_44;
        }

        v39 = swift_allocObject();
        *(v39 + 16) = v64;
        v40 = v66;
        *(v39 + 32) = v67;
        *(v39 + 40) = v40;
        v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd, &_sSaySiGMR);
        v74 = lazy protocol witness table accessor for type [Int] and conformance [A]();
        v72 = v39;

        ContiguousBitSet.init(_:)();
        if ((ContiguousBitSet.isDense.getter() & 1) == 0)
        {
          break;
        }

        v41 = ContiguousBitSet.first.getter();
        if ((v42 & 1) == 0)
        {
          v43 = v41;
          v44 = ContiguousBitSet.last.getter();
          if ((v45 & 1) == 0)
          {
            v57 = v44;
            result = (*v62)(v14, v70);
            v58 = v57 + 1;
            if (__OFADD__(v57, 1))
            {
              goto LABEL_39;
            }

            if (v58 < v43)
            {
              goto LABEL_40;
            }

            v59 = v71;
            *v71 = v43;
            v59[1] = v58;
            v37 = v59;
            goto LABEL_18;
          }
        }

        if (one-time initialization token for empty != -1)
        {
          swift_once();
        }

        (*v62)(v14, v70);
        v46 = __swift_project_value_buffer(v63, static LogitIndexSet.empty);
        v37 = v71;
        _s24TokenGenerationInference13LogitIndexSetOWOcTm_1(v46, v71, type metadata accessor for LogitIndexSet);
LABEL_19:
        v47 = v37;
        v48 = v69;
        outlined init with take of LogitIndexSet(v47, v69);

        v49 = v68;
        _s24TokenGenerationInference13LogitIndexSetOWOcTm_1(v48, v68, type metadata accessor for LogitIndexSet);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          result = outlined destroy of LogitIndexSet(v48);
          if (v35 < *v49 || v35 >= v49[1])
          {
LABEL_22:
            v50 = -10000.0 - v35;
            goto LABEL_28;
          }
        }

        else
        {
          v51 = v60;
          v52 = v70;
          (*v61)(v60, v68, v70);
          v53 = ContiguousBitSet.contains(_:)(v35);
          (*v62)(v51, v52);
          result = outlined destroy of LogitIndexSet(v69);
          if (!v53)
          {
            goto LABEL_22;
          }
        }

        v50 = a3;
        if (v35 != v67)
        {
          if (v35 == v66)
          {
            v50 = a4;
          }

          else
          {
            v50 = -65504.0;
          }
        }

LABEL_28:
        v75 = v32;
        v55 = *(v32 + 16);
        v54 = *(v32 + 24);
        if (v55 >= v54 >> 1)
        {
          result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v54 > 1), v55 + 1, 1);
          v32 = v75;
        }

        *(v32 + 16) = v55 + 1;
        *(v32 + 4 * v55 + 32) = v50;
        v36 = v35 == v28;
        if (v35 == v28)
        {
          v35 = 0;
          v37 = v71;
        }

        else
        {
          v56 = __OFADD__(v35++, 1);
          v37 = v71;
          if (v56)
          {
            goto LABEL_38;
          }
        }

        ++v34;
        if (v38 == v33)
        {
          return v32;
        }
      }

      (*v61)(v37, v14, v70);
LABEL_18:
      swift_storeEnumTagMultiPayload();
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

void *specialized LogitCollection.makeDenseLogits()(uint64_t a1, float a2)
{
  v41 = type metadata accessor for ContiguousBitSet();
  v4 = *(v41 - 8);
  MEMORY[0x28223BE20](v41, v5);
  v40 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for LogitIndexSet(0);
  v8 = MEMORY[0x28223BE20](v43, v7);
  v44 = (&v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x28223BE20](v8, v10);
  v37 = (&v37 - v12);
  result = MEMORY[0x28223BE20](v11, v13);
  v16 = (&v37 - v15);
  v17 = a1 + 1;
  if (__OFADD__(a1, 1))
  {
    goto LABEL_29;
  }

  if (v17 < a1)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  *v16 = a1;
  v16[1] = v17;
  swift_storeEnumTagMultiPayload();
  v18 = LogitIndexSet.last.getter();
  v20 = v19;
  result = outlined destroy of LogitIndexSet(v16);
  v21 = MEMORY[0x277D84F90];
  if (v20)
  {
    return v21;
  }

  if (v18 < 0)
  {
    goto LABEL_31;
  }

  v22 = v18 + 1;
  if (__OFADD__(v18, 1))
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v46 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v22 & ~(v22 >> 63), 0);
  if ((v22 & 0x8000000000000000) == 0)
  {
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v21 = v46;
    v38 = (v4 + 8);
    v39 = (v4 + 32);
    v45 = a1;
    result = v37;
    v42 = a1 + 1;
    while (1)
    {
      v26 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      if (v25)
      {
        goto LABEL_34;
      }

      *result = a1;
      result[1] = v17;
      v27 = result;
      swift_storeEnumTagMultiPayload();
      v28 = v44;
      _s24TokenGenerationInference13LogitIndexSetOWOcTm_1(v27, v44, type metadata accessor for LogitIndexSet);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        outlined destroy of LogitIndexSet(v27);
        result = v27;
        if (v24 >= *v28 && v24 < v44[1])
        {
LABEL_18:
          if (v24 == v45)
          {
            v29 = a2;
          }

          else
          {
            v29 = -65504.0;
          }

          goto LABEL_21;
        }
      }

      else
      {
        v30 = v40;
        v31 = v28;
        v32 = v41;
        (*v39)(v40, v31, v41);
        v33 = ContiguousBitSet.contains(_:)(v24);
        (*v38)(v30, v32);
        outlined destroy of LogitIndexSet(v27);
        result = v27;
        if (v33)
        {
          goto LABEL_18;
        }
      }

      v29 = -10000.0 - v24;
LABEL_21:
      v46 = v21;
      v35 = *(v21 + 16);
      v34 = *(v21 + 24);
      v17 = v42;
      if (v35 >= v34 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1);
        result = v37;
        v21 = v46;
      }

      *(v21 + 16) = v35 + 1;
      *(v21 + 4 * v35 + 32) = v29;
      v25 = v24 == v18;
      if (v24 == v18)
      {
        v24 = 0;
        a1 = v45;
      }

      else
      {
        v36 = __OFADD__(v24++, 1);
        a1 = v45;
        if (v36)
        {
          goto LABEL_28;
        }
      }

      ++v23;
      if (v26 == v22)
      {
        return v21;
      }
    }
  }

LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

uint64_t specialized LogitCollection.makeDenseLogits()(int a1)
{
  v39 = type metadata accessor for ContiguousBitSet();
  v2 = *(v39 - 8);
  MEMORY[0x28223BE20](v39, v3);
  v38 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for LogitIndexSet(0);
  v7 = MEMORY[0x28223BE20](v5, v6);
  v9 = (&v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x28223BE20](v7, v10);
  v13 = (&v35 - v12);
  MEMORY[0x28223BE20](v11, v14);
  v16 = (&v35 - v15);
  v42 = a1 + 1;
  v43 = a1;
  *v16 = a1;
  v16[1] = a1 + 1;
  swift_storeEnumTagMultiPayload();
  v17 = LogitIndexSet.last.getter();
  LOBYTE(a1) = v18;
  result = outlined destroy of LogitIndexSet(v16);
  v20 = MEMORY[0x277D84F90];
  if (a1)
  {
    return v20;
  }

  if (v17 < 0)
  {
    goto LABEL_25;
  }

  v21 = v17 + 1;
  if (__OFADD__(v17, 1))
  {
LABEL_26:
    __break(1u);
  }

  else
  {
    v44 = MEMORY[0x277D84F90];
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21 & ~(v21 >> 63), 0);
    if ((v21 & 0x8000000000000000) == 0)
    {
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v20 = v44;
      v36 = (v2 + 8);
      v37 = (v2 + 32);
      v40 = v17 + 1;
      v41 = v17;
      while (1)
      {
        v26 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
          goto LABEL_26;
        }

        if (v24)
        {
          goto LABEL_28;
        }

        v27 = v42;
        *v13 = v43;
        v13[1] = v27;
        swift_storeEnumTagMultiPayload();
        _s24TokenGenerationInference13LogitIndexSetOWOcTm_1(v13, v9, type metadata accessor for LogitIndexSet);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          result = outlined destroy of LogitIndexSet(v13);
          if (v23 >= *v9)
          {
            v28 = 0.0;
            if (v23 < v9[1])
            {
              goto LABEL_17;
            }
          }
        }

        else
        {
          v29 = v38;
          v30 = v39;
          (*v37)(v38, v9, v39);
          v31 = ContiguousBitSet.contains(_:)(v23);
          (*v36)(v29, v30);
          result = outlined destroy of LogitIndexSet(v13);
          v28 = 0.0;
          if (v31)
          {
            goto LABEL_17;
          }
        }

        v28 = -10000.0 - v23;
LABEL_17:
        v44 = v20;
        v33 = *(v20 + 16);
        v32 = *(v20 + 24);
        if (v33 >= v32 >> 1)
        {
          result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1);
          v20 = v44;
        }

        *(v20 + 16) = v33 + 1;
        *(v20 + 4 * v33 + 32) = v28;
        v24 = v23 == v41;
        if (v23 == v41)
        {
          v23 = 0;
          v25 = v40;
        }

        else
        {
          v34 = __OFADD__(v23++, 1);
          v25 = v40;
          if (v34)
          {
            goto LABEL_24;
          }
        }

        ++v22;
        if (v26 == v25)
        {
          return v20;
        }
      }
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

void *LogitCollection.makeDenseLogits()(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for LogitIndexSet(0);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(a2 + 8))(a1, a2);
  v10 = LogitIndexSet.last.getter();
  v12 = v11;
  result = outlined destroy of LogitIndexSet(v9);
  if (v12)
  {
    return MEMORY[0x277D84F90];
  }

  if (v10 < 0)
  {
    __break(1u);
  }

  else
  {
    MEMORY[0x28223BE20](result, v14);
    *&v15[-32] = a1;
    *&v15[-24] = a2;
    *&v15[-16] = v3;
    return _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSNySiG_Sfs5NeverOTg5(partial apply for closure #1 in LogitCollection.makeDenseLogits(), &v15[-48], 0, v10);
  }

  return result;
}

uint64_t specialized LogitCollection.makeMasked(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for LogitIndexSet(0);
  v8 = MEMORY[0x28223BE20](v6, v7);
  v10 = (&v19[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v19[-1] - v12;
  v19[3] = &type metadata for EarlyReturnLogits;
  v19[4] = &protocol witness table for EarlyReturnLogits;
  v19[0] = a2;
  _s24TokenGenerationInference13LogitIndexSetOWOcTm_1(a1, &v19[-1] - v12, type metadata accessor for LogitIndexSet);
  v14 = type metadata accessor for MaskedLogitCollection(0);
  a3[3] = v14;
  a3[4] = &protocol witness table for MaskedLogitCollection;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
  result = outlined init with copy of DeterministicLanguageModelProtocol(v19, boxed_opaque_existential_1);
  v17 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else if (v17 >= a2)
  {
    *v10 = a2;
    v10[1] = v17;
    swift_storeEnumTagMultiPayload();
    _s24TokenGenerationInference13LogitIndexSetOWOcTm_1(v13, boxed_opaque_existential_1 + *(v14 + 20), type metadata accessor for LogitIndexSet);
    LogitIndexSet.formIntersection(_:)(v10);
    outlined destroy of LogitIndexSet(v10);
    outlined destroy of LogitIndexSet(v13);
    return __swift_destroy_boxed_opaque_existential_1(v19);
  }

  __break(1u);
  return result;
}

uint64_t specialized LogitCollection.makeMasked(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>, float a5@<S0>, float a6@<S1>)
{
  v12 = type metadata accessor for LogitIndexSet(0);
  v14 = MEMORY[0x28223BE20](v12 - 8, v13);
  v16 = (&v25[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v25[-1] - v18;
  v28 = &type metadata for TopK2LogitCollection;
  v29 = &protocol witness table for TopK2LogitCollection;
  v25[0] = a2;
  v25[1] = a3;
  v26 = a5;
  v27 = a6;
  _s24TokenGenerationInference13LogitIndexSetOWOcTm_1(a1, &v25[-1] - v18, type metadata accessor for LogitIndexSet);
  v20 = type metadata accessor for MaskedLogitCollection(0);
  a4[3] = v20;
  a4[4] = &protocol witness table for MaskedLogitCollection;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a4);
  outlined init with copy of DeterministicLanguageModelProtocol(v25, boxed_opaque_existential_1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_220AE8A20;
  *(v22 + 32) = a2;
  *(v22 + 40) = a3;
  _s24TokenGenerationInference13LogitIndexSetO6tokensyACxSlRzSi7ElementRtzlFZSaySiG_Tt1g5(v22, v16);

  _s24TokenGenerationInference13LogitIndexSetOWOcTm_1(v19, boxed_opaque_existential_1 + *(v20 + 20), type metadata accessor for LogitIndexSet);
  LogitIndexSet.formIntersection(_:)(v16);
  outlined destroy of LogitIndexSet(v16);
  outlined destroy of LogitIndexSet(v19);
  return __swift_destroy_boxed_opaque_existential_1(v25);
}

uint64_t specialized LogitCollection.makeMasked(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, float a4@<S0>)
{
  v8 = type metadata accessor for LogitIndexSet(0);
  v10 = MEMORY[0x28223BE20](v8, v9);
  v12 = (&v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v20 - v14;
  v23 = &type metadata for WeightedSingleLogitCollection;
  v24 = &protocol witness table for WeightedSingleLogitCollection;
  v21 = a2;
  v22 = a4;
  _s24TokenGenerationInference13LogitIndexSetOWOcTm_1(a1, &v20 - v14, type metadata accessor for LogitIndexSet);
  v16 = type metadata accessor for MaskedLogitCollection(0);
  a3[3] = v16;
  a3[4] = &protocol witness table for MaskedLogitCollection;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
  result = outlined init with copy of DeterministicLanguageModelProtocol(&v21, boxed_opaque_existential_1);
  v19 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else if (v19 >= a2)
  {
    *v12 = a2;
    v12[1] = v19;
    swift_storeEnumTagMultiPayload();
    _s24TokenGenerationInference13LogitIndexSetOWOcTm_1(v15, boxed_opaque_existential_1 + *(v16 + 20), type metadata accessor for LogitIndexSet);
    LogitIndexSet.formIntersection(_:)(v12);
    outlined destroy of LogitIndexSet(v12);
    outlined destroy of LogitIndexSet(v15);
    return __swift_destroy_boxed_opaque_existential_1(&v21);
  }

  __break(1u);
  return result;
}

uint64_t specialized LogitCollection.makeMasked(_:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for LogitIndexSet(0);
  v8 = MEMORY[0x28223BE20](v6, v7);
  v10 = (&v18[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v18[-1] - v12;
  v18[3] = &type metadata for UnweightedSingleLogitCollection;
  v18[4] = &protocol witness table for UnweightedSingleLogitCollection;
  LODWORD(v18[0]) = a2;
  _s24TokenGenerationInference13LogitIndexSetOWOcTm_1(a1, &v18[-1] - v12, type metadata accessor for LogitIndexSet);
  v14 = type metadata accessor for MaskedLogitCollection(0);
  a3[3] = v14;
  a3[4] = &protocol witness table for MaskedLogitCollection;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
  outlined init with copy of DeterministicLanguageModelProtocol(v18, boxed_opaque_existential_1);
  *v10 = a2;
  v10[1] = a2 + 1;
  swift_storeEnumTagMultiPayload();
  _s24TokenGenerationInference13LogitIndexSetOWOcTm_1(v13, boxed_opaque_existential_1 + *(v14 + 20), type metadata accessor for LogitIndexSet);
  LogitIndexSet.formIntersection(_:)(v10);
  outlined destroy of LogitIndexSet(v10);
  outlined destroy of LogitIndexSet(v13);
  return __swift_destroy_boxed_opaque_existential_1(v18);
}

uint64_t LogitCollection.makeMasked(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = v4;
  v10 = type metadata accessor for LogitIndexSet(0);
  v12 = MEMORY[0x28223BE20](v10 - 8, v11);
  v14 = &v23[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v23[-1] - v16;
  v23[3] = a2;
  v23[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v23);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, v5, a2);
  _s24TokenGenerationInference13LogitIndexSetOWOcTm_1(a1, v17, type metadata accessor for LogitIndexSet);
  v19 = type metadata accessor for MaskedLogitCollection(0);
  a4[3] = v19;
  a4[4] = &protocol witness table for MaskedLogitCollection;
  v20 = __swift_allocate_boxed_opaque_existential_1(a4);
  outlined init with copy of DeterministicLanguageModelProtocol(v23, v20);
  (*(a3 + 8))(a2, a3);
  _s24TokenGenerationInference13LogitIndexSetOWOcTm_1(v17, v20 + *(v19 + 20), type metadata accessor for LogitIndexSet);
  LogitIndexSet.formIntersection(_:)(v14);
  outlined destroy of LogitIndexSet(v14);
  outlined destroy of LogitIndexSet(v17);
  return __swift_destroy_boxed_opaque_existential_1(v23);
}

uint64_t protocol witness for LogitCollection.applySoftmax() in conformance CompositeLanguageModel.CompositeLogitCollection(uint64_t a1)
{
  result = LogitIndexSet.last.getter();
  if (v3)
  {
    v4 = MEMORY[0x277D84F90];
LABEL_5:
    v6 = Array<A>.applySoftmax()(v4);

    return v6;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    MEMORY[0x28223BE20](result, v3);
    v7[2] = v1;
    v4 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSNySiG_Sfs5NeverOTg5(closure #1 in LogitCollection.makeDenseLogits()specialized partial apply, v7, 0, v5);
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for LogitCollection.applySoftmax(temperature:) in conformance CompositeLanguageModel.CompositeLogitCollection(uint64_t a1, float a2)
{
  result = LogitIndexSet.last.getter();
  if (v5)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_5:
    v6.n128_f32[0] = a2;
    v9 = Array<A>.applySoftmax(temperature:)(v7, v6);

    return v9;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    MEMORY[0x28223BE20](result, v5);
    v10[2] = v2;
    v7 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSNySiG_Sfs5NeverOTg5(closure #1 in LogitCollection.makeDenseLogits()specialized partial apply, v10, 0, v8);
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for LogitCollection.makeDenseLogits() in conformance CompositeLanguageModel.CompositeLogitCollection(uint64_t a1)
{
  result = LogitIndexSet.last.getter();
  if (v3)
  {
    return MEMORY[0x277D84F90];
  }

  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    MEMORY[0x28223BE20](result, v3);
    v5[2] = v1;
    return _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSNySiG_Sfs5NeverOTg5(partial apply for specialized closure #1 in LogitCollection.makeDenseLogits(), v5, 0, v4);
  }

  return result;
}

uint64_t protocol witness for LogitCollection.makeMasked(_:) in conformance CompositeLanguageModel.CompositeLogitCollection@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = v4;
  v10 = type metadata accessor for LogitIndexSet(0);
  v12 = MEMORY[0x28223BE20](v10 - 8, v11);
  v14 = &v23[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v23[-1] - v16;
  v23[3] = a2;
  v23[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v23);
  _s24TokenGenerationInference13LogitIndexSetOWOcTm_1(v7, boxed_opaque_existential_1, type metadata accessor for CompositeLanguageModel.CompositeLogitCollection);
  _s24TokenGenerationInference13LogitIndexSetOWOcTm_1(a1, v17, type metadata accessor for LogitIndexSet);
  v19 = type metadata accessor for MaskedLogitCollection(0);
  a4[3] = v19;
  a4[4] = &protocol witness table for MaskedLogitCollection;
  v20 = __swift_allocate_boxed_opaque_existential_1(a4);
  outlined init with copy of DeterministicLanguageModelProtocol(v23, v20);
  _s24TokenGenerationInference13LogitIndexSetOWOcTm_1(boxed_opaque_existential_1 + *(a2 + 32), v14, type metadata accessor for LogitIndexSet);
  _s24TokenGenerationInference13LogitIndexSetOWOcTm_1(v17, v20 + *(v19 + 20), type metadata accessor for LogitIndexSet);
  LogitIndexSet.formIntersection(_:)(v14);
  outlined destroy of LogitIndexSet(v14);
  outlined destroy of LogitIndexSet(v17);
  return __swift_destroy_boxed_opaque_existential_1(v23);
}

Swift::Int_optional __swiftcall LogitCollection.slowArgmax()()
{
  v3 = v1;
  v4 = v0;
  v5 = type metadata accessor for LogitIndexSet(0);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = LogitCollection.isEmpty.getter(v4, v3);
  v10 = 0;
  if ((v9 & 1) == 0)
  {
    v11 = (*(v3 + 8))(v4, v3);
    MEMORY[0x28223BE20](v11, v12);
    *&v15[-32] = v4;
    *&v15[-24] = v3;
    *&v15[-16] = v2;
    v13 = specialized LogitIndexSet.reduce<A>(_:_:)(0, partial apply for closure #1 in LogitCollection.slowArgmax(), -3.4028e38);
    outlined destroy of LogitIndexSet(v8);
    v10 = v13;
  }

  v14 = v9 & 1;
  result.value = v10;
  result.is_nil = v14;
  return result;
}

uint64_t specialized closure #1 in LogitCollection.slowArgmax()(uint64_t a1, uint64_t a2, uint64_t *a3, float a4)
{
  v5 = *a3;
  if (*(*a3 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(a2), (v9 & 1) != 0))
  {
    v10 = *(*(v5 + 56) + 4 * v8);
    if (v10 <= a4)
    {
      return a1;
    }

    else
    {
      return a2;
    }
  }

  else
  {
    _StringGuts.grow(_:)(33);
    MEMORY[0x223D8E780](0xD000000000000015, 0x8000000220AFF630);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x223D8E780](v12);

    MEMORY[0x223D8E780](0x206E6920746F6E20, 0xE800000000000000);
    type metadata accessor for WeightedSparseLogitCollection(0);
    type metadata accessor for LogitIndexSet(0);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void *specialized LogitIndexSet.reduce<A>(_:_:)(uint64_t a1, void (*a2)(uint64_t *__return_ptr, float *, uint64_t), float a3)
{
  v7 = type metadata accessor for ContiguousBitSet.Iterator();
  v31 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for ContiguousBitSet();
  v33 = *(v30 - 8);
  v12 = MEMORY[0x28223BE20](v30, v11);
  v29 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v28 - v15;
  v17 = type metadata accessor for LogitIndexSet(0);
  MEMORY[0x28223BE20](v17, v18);
  v20 = (&v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  _s24TokenGenerationInference13LogitIndexSetOWOcTm_1(v32, v20, type metadata accessor for LogitIndexSet);
  result = swift_getEnumCaseMultiPayload();
  if (result != 1)
  {
    v24 = v33;
    v25 = v20;
    v26 = v30;
    (*(v33 + 32))(v16, v25, v30);
    v27 = *(v24 + 16);
    v32 = v16;
    v27(v29, v16, v26);
    lazy protocol witness table accessor for type ContiguousBitSet and conformance ContiguousBitSet(&lazy protocol witness table cache variable for type ContiguousBitSet and conformance ContiguousBitSet, MEMORY[0x277D71E78], MEMORY[0x277D71E80]);
    dispatch thunk of Sequence.makeIterator()();
    lazy protocol witness table accessor for type ContiguousBitSet and conformance ContiguousBitSet(&lazy protocol witness table cache variable for type ContiguousBitSet.Iterator and conformance ContiguousBitSet.Iterator, MEMORY[0x277D71E68], MEMORY[0x277D71E70]);
    while (1)
    {
      dispatch thunk of IteratorProtocol.next()();
      if (v35)
      {
        break;
      }

      v36 = a3;
      v37 = a1;
      a2(&v38, &v36, v34);
      if (v3)
      {
        break;
      }

      a3 = *&v38;
      a1 = v39;
    }

    (*(v31 + 8))(v10, v7);
    (*(v33 + 8))(v32, v26);
    return a1;
  }

  v22 = *v20;
  v23 = v20[1];
  if (v22 == v23)
  {
    return a1;
  }

  if (v23 >= v22)
  {
    while (v23 != v22)
    {
      v36 = a3;
      v37 = a1;
      result = (a2)(&v38, &v36, v22);
      if (!v3)
      {
        ++v22;
        a3 = *&v38;
        a1 = v39;
        if (v23 != v22)
        {
          continue;
        }
      }

      return a1;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *specialized LogitIndexSet.reduce<A>(_:_:)(void *(*a1)(uint64_t *__return_ptr, uint64_t *, uint64_t), float a2)
{
  v5 = type metadata accessor for ContiguousBitSet.Iterator();
  v30 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ContiguousBitSet();
  v28 = *(v9 - 8);
  v29 = v9;
  v11 = MEMORY[0x28223BE20](v9, v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v27 - v15;
  v17 = type metadata accessor for LogitIndexSet(0);
  MEMORY[0x28223BE20](v17, v18);
  v20 = (&v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  _s24TokenGenerationInference13LogitIndexSetOWOcTm_1(v31, v20, type metadata accessor for LogitIndexSet);
  result = swift_getEnumCaseMultiPayload();
  if (result == 1)
  {
    v22 = *v20;
    v23 = v20[1];
    if (*v20 != v23)
    {
      if (v23 >= v22)
      {
        while (v23 != v22)
        {
          *&v35 = a2;
          result = a1(&v33, &v35, v22);
          if (!v2)
          {
            ++v22;
            a2 = *&v33;
            if (v23 != v22)
            {
              continue;
            }
          }

          return result;
        }

        __break(1u);
      }

      __break(1u);
    }
  }

  else
  {
    v24 = v29;
    v27 = v13;
    v25 = v28;
    (*(v28 + 32))(v16, v20, v29);
    v26 = *(v25 + 16);
    v31 = v16;
    v26(v27, v16, v24);
    lazy protocol witness table accessor for type ContiguousBitSet and conformance ContiguousBitSet(&lazy protocol witness table cache variable for type ContiguousBitSet and conformance ContiguousBitSet, MEMORY[0x277D71E78], MEMORY[0x277D71E80]);
    dispatch thunk of Sequence.makeIterator()();
    lazy protocol witness table accessor for type ContiguousBitSet and conformance ContiguousBitSet(&lazy protocol witness table cache variable for type ContiguousBitSet.Iterator and conformance ContiguousBitSet.Iterator, MEMORY[0x277D71E68], MEMORY[0x277D71E70]);
    while (1)
    {
      dispatch thunk of IteratorProtocol.next()();
      if (v34)
      {
        (*(v30 + 8))(v8, v5);
        return (*(v25 + 8))(v31, v24);
      }

      v32 = a2;
      a1(&v35, &v32, v33);
      if (v2)
      {
        break;
      }

      a2 = *&v35;
    }

    (*(v30 + 8))(v8, v5);
    return (*(v25 + 8))(v31, v24);
  }

  return result;
}

float specialized closure #1 in LogitCollection.makeDenseLogits()(Swift::Int a1, uint64_t a2)
{
  v4 = type metadata accessor for ContiguousBitSet();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for LogitIndexSet(0);
  v11 = MEMORY[0x28223BE20](v9, v10);
  v13 = (&v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v20 - v15;
  v17 = type metadata accessor for CompositeLanguageModel.CompositeLogitCollection(0);
  _s24TokenGenerationInference13LogitIndexSetOWOcTm_1(a2 + *(v17 + 32), v16, type metadata accessor for LogitIndexSet);
  _s24TokenGenerationInference13LogitIndexSetOWOcTm_1(v16, v13, type metadata accessor for LogitIndexSet);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined destroy of LogitIndexSet(v16);
    if (*v13 > a1 || v13[1] <= a1)
    {
      return -10000.0 - a1;
    }
  }

  else
  {
    (*(v5 + 32))(v8, v13, v4);
    v19 = ContiguousBitSet.contains(_:)(a1);
    (*(v5 + 8))(v8, v4);
    outlined destroy of LogitIndexSet(v16);
    if (!v19)
    {
      return -10000.0 - a1;
    }
  }

  return CompositeLanguageModel.CompositeLogitCollection.subscript.getter(a1);
}

{
  v4 = type metadata accessor for ContiguousBitSet();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for LogitIndexSet(0);
  v11 = MEMORY[0x28223BE20](v9, v10);
  v24 = (&v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = MEMORY[0x28223BE20](v11, v13);
  v16 = (&v24 - v15);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v24 - v18;
  v25 = a2;
  _s24TokenGenerationInference13LogitIndexSetOWOcTm_1(a2, &v24 - v18, type metadata accessor for LogitIndexSet);
  _s24TokenGenerationInference13LogitIndexSetOWOcTm_1(v19, v16, type metadata accessor for LogitIndexSet);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined destroy of LogitIndexSet(v19);
    if (*v16 > a1 || v16[1] <= a1)
    {
      return -10000.0 - a1;
    }
  }

  else
  {
    (*(v5 + 32))(v8, v16, v4);
    v21 = ContiguousBitSet.contains(_:)(a1);
    (*(v5 + 8))(v8, v4);
    outlined destroy of LogitIndexSet(v19);
    if (!v21)
    {
      return -10000.0 - a1;
    }
  }

  v22 = v24;
  _s24TokenGenerationInference13LogitIndexSetOWOcTm_1(v25, v24, type metadata accessor for LogitIndexSet);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v5 + 32))(v8, v22, v4);
    v23 = ContiguousBitSet.contains(_:)(a1);
    (*(v5 + 8))(v8, v4);
    result = 1.0;
    if (v23)
    {
      return result;
    }

    return -65504.0;
  }

  if (*v22 > a1)
  {
    return -65504.0;
  }

  result = 1.0;
  if (v22[1] <= a1)
  {
    return -65504.0;
  }

  return result;
}

{
  v4 = type metadata accessor for ContiguousBitSet();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for LogitIndexSet(0);
  v11 = MEMORY[0x28223BE20](v9, v10);
  v13 = (&v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v19 - v15;
  _s24TokenGenerationInference13LogitIndexSetOWOcTm_1(a2, &v19 - v15, type metadata accessor for LogitIndexSet);
  _s24TokenGenerationInference13LogitIndexSetOWOcTm_1(v16, v13, type metadata accessor for LogitIndexSet);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v5 + 32))(v8, v13, v4);
    v18 = ContiguousBitSet.contains(_:)(a1);
    (*(v5 + 8))(v8, v4);
    outlined destroy of LogitIndexSet(v16);
    result = 1.0;
    if (v18)
    {
      return result;
    }

    return -10000.0 - a1;
  }

  outlined destroy of LogitIndexSet(v16);
  if (*v13 > a1)
  {
    return -10000.0 - a1;
  }

  result = 1.0;
  if (v13[1] <= a1)
  {
    return -10000.0 - a1;
  }

  return result;
}

{
  v4 = type metadata accessor for ContiguousBitSet();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for LogitIndexSet(0);
  v11 = MEMORY[0x28223BE20](v9, v10);
  v24 = (&v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = MEMORY[0x28223BE20](v11, v13);
  v16 = (&v24 - v15);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v24 - v18;
  v25 = a2;
  _s24TokenGenerationInference13LogitIndexSetOWOcTm_1(a2, &v24 - v18, type metadata accessor for LogitIndexSet);
  _s24TokenGenerationInference13LogitIndexSetOWOcTm_1(v19, v16, type metadata accessor for LogitIndexSet);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined destroy of LogitIndexSet(v19);
    if (*v16 > a1 || v16[1] <= a1)
    {
      return -10000.0 - a1;
    }
  }

  else
  {
    (*(v5 + 32))(v8, v16, v4);
    v21 = ContiguousBitSet.contains(_:)(a1);
    (*(v5 + 8))(v8, v4);
    outlined destroy of LogitIndexSet(v19);
    if (!v21)
    {
      return -10000.0 - a1;
    }
  }

  v22 = v24;
  _s24TokenGenerationInference13LogitIndexSetOWOcTm_1(v25, v24, type metadata accessor for LogitIndexSet);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v5 + 32))(v8, v22, v4);
    v23 = ContiguousBitSet.contains(_:)(a1);
    (*(v5 + 8))(v8, v4);
    result = 0.0;
    if (v23)
    {
      return result;
    }

    return -65504.0;
  }

  if (*v22 > a1)
  {
    return -65504.0;
  }

  result = 0.0;
  if (v22[1] <= a1)
  {
    return -65504.0;
  }

  return result;
}

uint64_t specialized closure #1 in LogitCollection.makeDenseLogits()(Swift::Int a1, uint64_t a2)
{
  v4 = type metadata accessor for ContiguousBitSet();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for LogitIndexSet(0);
  v11 = MEMORY[0x28223BE20](v9, v10);
  v13 = (&v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v26 - v15;
  _s24TokenGenerationInference13LogitIndexSetOWOcTm_1(a2, &v26 - v15, type metadata accessor for LogitIndexSet);
  _s24TokenGenerationInference13LogitIndexSetOWOcTm_1(v16, v13, type metadata accessor for LogitIndexSet);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    result = outlined destroy of LogitIndexSet(v16);
    if (*v13 > a1 || v13[1] <= a1)
    {
      return result;
    }
  }

  else
  {
    (*(v5 + 32))(v8, v13, v4);
    v18 = ContiguousBitSet.contains(_:)(a1);
    (*(v5 + 8))(v8, v4);
    result = outlined destroy of LogitIndexSet(v16);
    if (!v18)
    {
      return result;
    }
  }

  result = type metadata accessor for WeightedDenseLogitCollection(0);
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v19 = *(a2 + *(result + 20));
    if (*(v19 + 16) > a1)
    {
      _H0 = *(v19 + 2 * a1 + 32);
      __asm { FCVT            S0, H0 }

      return result;
    }
  }

  __break(1u);
  return result;
}

{
  v4 = type metadata accessor for ContiguousBitSet();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for LogitIndexSet(0);
  v11 = MEMORY[0x28223BE20](v9, v10);
  v13 = (&v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v20 - v15;
  v17 = type metadata accessor for WeightedSparseLogitCollection(0);
  _s24TokenGenerationInference13LogitIndexSetOWOcTm_1(a2 + *(v17 + 20), v16, type metadata accessor for LogitIndexSet);
  _s24TokenGenerationInference13LogitIndexSetOWOcTm_1(v16, v13, type metadata accessor for LogitIndexSet);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v5 + 32))(v8, v13, v4);
    v19 = ContiguousBitSet.contains(_:)(a1);
    (*(v5 + 8))(v8, v4);
    result = outlined destroy of LogitIndexSet(v16);
    if (!v19)
    {
      return result;
    }

    return WeightedSparseLogitCollection.subscript.getter(a1);
  }

  result = outlined destroy of LogitIndexSet(v16);
  if (*v13 <= a1 && v13[1] > a1)
  {
    return WeightedSparseLogitCollection.subscript.getter(a1);
  }

  return result;
}

void closure #1 in LogitCollection.makeDenseLogits()(Swift::Int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, float *a5@<X8>)
{
  v30 = a5;
  v29 = type metadata accessor for ContiguousBitSet();
  v9 = *(v29 - 8);
  MEMORY[0x28223BE20](v29, v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for LogitIndexSet(0);
  v15 = MEMORY[0x28223BE20](v13, v14);
  v17 = (&v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v27 - v19;
  v21 = *a1;
  v22 = *(a4 + 8);
  v27 = a2;
  v28 = a3;
  v22(a3, a4);
  _s24TokenGenerationInference13LogitIndexSetOWOcTm_1(v20, v17, type metadata accessor for LogitIndexSet);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined destroy of LogitIndexSet(v20);
    if (v21 < *v17 || v21 >= v17[1])
    {
      goto LABEL_4;
    }

LABEL_6:
    v23 = (*(a4 + 24))(v21, v28, a4);
    goto LABEL_7;
  }

  v24 = v17;
  v25 = v29;
  (*(v9 + 32))(v12, v24, v29);
  v26 = ContiguousBitSet.contains(_:)(v21);
  (*(v9 + 8))(v12, v25);
  outlined destroy of LogitIndexSet(v20);
  if (v26)
  {
    goto LABEL_6;
  }

LABEL_4:
  v23 = -10000.0 - v21;
LABEL_7:
  *v30 = v23;
}

uint64_t protocol witness for LogitCollection.applySoftmax() in conformance MaskedLogitCollection(uint64_t a1)
{
  v1 = MaskedLogitCollection.makeDenseLogits()();
  v2 = Array<A>.applySoftmax()(v1);

  return v2;
}

uint64_t protocol witness for LogitCollection.applySoftmax(temperature:) in conformance MaskedLogitCollection(uint64_t a1, float a2)
{
  v3 = MaskedLogitCollection.makeDenseLogits()();
  v4.n128_f32[0] = a2;
  v5 = Array<A>.applySoftmax(temperature:)(v3, v4);

  return v5;
}

uint64_t protocol witness for LogitCollection.applySoftmax() in conformance TopK2LogitCollection()
{
  v1 = specialized LogitCollection.makeDenseLogits()(*v0, *(v0 + 8), *(v0 + 16), *(v0 + 20));
  v2 = Array<A>.applySoftmax()(v1);

  return v2;
}

uint64_t protocol witness for LogitCollection.applySoftmax(temperature:) in conformance TopK2LogitCollection(float a1)
{
  v3 = specialized LogitCollection.makeDenseLogits()(*v1, *(v1 + 8), *(v1 + 16), *(v1 + 20));
  v4.n128_f32[0] = a1;
  v5 = Array<A>.applySoftmax(temperature:)(v3, v4);

  return v5;
}

uint64_t protocol witness for LogitCollection.makeMasked(_:) in conformance PrefixGuidedLanguageModel.PrefixLogitCollection@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t *a5@<X8>)
{
  v9 = v5;
  v12 = type metadata accessor for LogitIndexSet(0);
  v14 = MEMORY[0x28223BE20](v12 - 8, v13);
  v16 = &v25[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v25[-1] - v18;
  v25[3] = a2;
  v25[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v25);
  _s24TokenGenerationInference13LogitIndexSetOWOcTm_1(v9, boxed_opaque_existential_1, a4);
  _s24TokenGenerationInference13LogitIndexSetOWOcTm_1(a1, v19, type metadata accessor for LogitIndexSet);
  v21 = type metadata accessor for MaskedLogitCollection(0);
  a5[3] = v21;
  a5[4] = &protocol witness table for MaskedLogitCollection;
  v22 = __swift_allocate_boxed_opaque_existential_1(a5);
  outlined init with copy of DeterministicLanguageModelProtocol(v25, v22);
  _s24TokenGenerationInference13LogitIndexSetOWOcTm_1(boxed_opaque_existential_1, v16, type metadata accessor for LogitIndexSet);
  _s24TokenGenerationInference13LogitIndexSetOWOcTm_1(v19, v22 + *(v21 + 20), type metadata accessor for LogitIndexSet);
  LogitIndexSet.formIntersection(_:)(v16);
  outlined destroy of LogitIndexSet(v16);
  outlined destroy of LogitIndexSet(v19);
  return __swift_destroy_boxed_opaque_existential_1(v25);
}

uint64_t protocol witness for LogitCollection.applySoftmax() in conformance UnweightedSingleLogitCollection()
{
  v1 = specialized LogitCollection.makeDenseLogits()(*v0);
  v2 = Array<A>.applySoftmax()(v1);

  return v2;
}

uint64_t protocol witness for LogitCollection.applySoftmax(temperature:) in conformance UnweightedSingleLogitCollection(float a1)
{
  v3 = specialized LogitCollection.makeDenseLogits()(*v1);
  v4.n128_f32[0] = a1;
  v5 = Array<A>.applySoftmax(temperature:)(v3, v4);

  return v5;
}

uint64_t protocol witness for LogitCollection.applySoftmax() in conformance PrefixGuidedLanguageModel.PrefixLogitCollection(uint64_t a1, uint64_t a2, void *(*a3)(int *__return_ptr, uint64_t *))
{
  result = LogitIndexSet.last.getter();
  if (v6)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_5:
    v9 = Array<A>.applySoftmax()(v7);

    return v9;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    MEMORY[0x28223BE20](result, v6);
    v10[2] = v3;
    v7 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSNySiG_Sfs5NeverOTg5(a3, v10, 0, v8);
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for LogitCollection.applySoftmax(temperature:) in conformance PrefixGuidedLanguageModel.PrefixLogitCollection(uint64_t a1, float a2, uint64_t a3, void *(*a4)(int *__return_ptr, uint64_t *))
{
  result = LogitIndexSet.last.getter();
  if (v8)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_5:
    v9.n128_f32[0] = a2;
    v12 = Array<A>.applySoftmax(temperature:)(v10, v9);

    return v12;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    MEMORY[0x28223BE20](result, v8);
    v13[2] = v4;
    v10 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSNySiG_Sfs5NeverOTg5(a4, v13, 0, v11);
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for LogitCollection.makeDenseLogits() in conformance PrefixGuidedLanguageModel.PrefixLogitCollection(uint64_t a1, uint64_t a2, void *(*a3)(int *__return_ptr, uint64_t *))
{
  result = LogitIndexSet.last.getter();
  if (v6)
  {
    return MEMORY[0x277D84F90];
  }

  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    MEMORY[0x28223BE20](result, v6);
    v8[2] = v3;
    return _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSNySiG_Sfs5NeverOTg5(a3, v8, 0, v7);
  }

  return result;
}

uint64_t protocol witness for LogitCollection.applySoftmax() in conformance WeightedSingleLogitCollection()
{
  v1 = specialized LogitCollection.makeDenseLogits()(*v0, *(v0 + 8));
  v2 = Array<A>.applySoftmax()(v1);

  return v2;
}

uint64_t protocol witness for LogitCollection.applySoftmax(temperature:) in conformance WeightedSingleLogitCollection(float a1)
{
  v3 = specialized LogitCollection.makeDenseLogits()(*v1, *(v1 + 8));
  v4.n128_f32[0] = a1;
  v5 = Array<A>.applySoftmax(temperature:)(v3, v4);

  return v5;
}

uint64_t protocol witness for LogitCollection.applySoftmax() in conformance WeightedSparseLogitCollection(uint64_t a1)
{
  result = LogitIndexSet.last.getter();
  if (v3)
  {
    v4 = MEMORY[0x277D84F90];
LABEL_5:
    v6 = Array<A>.applySoftmax()(v4);

    return v6;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    MEMORY[0x28223BE20](result, v3);
    v7[2] = v1;
    v4 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSNySiG_Sfs5NeverOTg5(closure #1 in LogitCollection.makeDenseLogits()specialized partial apply, v7, 0, v5);
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for LogitCollection.applySoftmax(temperature:) in conformance WeightedSparseLogitCollection(uint64_t a1, float a2)
{
  result = LogitIndexSet.last.getter();
  if (v5)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_5:
    v6.n128_f32[0] = a2;
    v9 = Array<A>.applySoftmax(temperature:)(v7, v6);

    return v9;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    MEMORY[0x28223BE20](result, v5);
    v10[2] = v2;
    v7 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSNySiG_Sfs5NeverOTg5(closure #1 in LogitCollection.makeDenseLogits()specialized partial apply, v10, 0, v8);
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for LogitCollection.makeDenseLogits() in conformance WeightedSparseLogitCollection(uint64_t a1)
{
  result = LogitIndexSet.last.getter();
  if (v3)
  {
    return MEMORY[0x277D84F90];
  }

  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    MEMORY[0x28223BE20](result, v3);
    v5[2] = v1;
    return _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSNySiG_Sfs5NeverOTg5(partial apply for specialized closure #1 in LogitCollection.makeDenseLogits(), v5, 0, v4);
  }

  return result;
}

uint64_t protocol witness for LogitCollection.makeMasked(_:) in conformance WeightedSparseLogitCollection@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = v4;
  v10 = type metadata accessor for LogitIndexSet(0);
  v12 = MEMORY[0x28223BE20](v10 - 8, v11);
  v14 = &v23[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v23[-1] - v16;
  v23[3] = a2;
  v23[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v23);
  _s24TokenGenerationInference13LogitIndexSetOWOcTm_1(v7, boxed_opaque_existential_1, type metadata accessor for WeightedSparseLogitCollection);
  _s24TokenGenerationInference13LogitIndexSetOWOcTm_1(a1, v17, type metadata accessor for LogitIndexSet);
  v19 = type metadata accessor for MaskedLogitCollection(0);
  a4[3] = v19;
  a4[4] = &protocol witness table for MaskedLogitCollection;
  v20 = __swift_allocate_boxed_opaque_existential_1(a4);
  outlined init with copy of DeterministicLanguageModelProtocol(v23, v20);
  _s24TokenGenerationInference13LogitIndexSetOWOcTm_1(boxed_opaque_existential_1 + *(a2 + 20), v14, type metadata accessor for LogitIndexSet);
  _s24TokenGenerationInference13LogitIndexSetOWOcTm_1(v17, v20 + *(v19 + 20), type metadata accessor for LogitIndexSet);
  LogitIndexSet.formIntersection(_:)(v14);
  outlined destroy of LogitIndexSet(v14);
  outlined destroy of LogitIndexSet(v17);
  return __swift_destroy_boxed_opaque_existential_1(v23);
}

uint64_t partial apply for specialized closure #1 in LogitCollection.makeDenseLogits()@<X0>(void *a1@<X0>, _DWORD *x8_0@<X8>)
{
  return partial apply for specialized closure #1 in LogitCollection.makeDenseLogits()(a1, specialized closure #1 in LogitCollection.makeDenseLogits(), x8_0);
}

{
  return partial apply for specialized closure #1 in LogitCollection.makeDenseLogits()(a1, specialized closure #1 in LogitCollection.makeDenseLogits(), x8_0);
}

{
  return partial apply for specialized closure #1 in LogitCollection.makeDenseLogits()(a1, specialized closure #1 in LogitCollection.makeDenseLogits(), x8_0);
}

{
  return partial apply for specialized closure #1 in LogitCollection.makeDenseLogits()(a1, specialized closure #1 in LogitCollection.makeDenseLogits(), x8_0);
}

{
  return partial apply for specialized closure #1 in LogitCollection.makeDenseLogits()(a1, specialized closure #1 in LogitCollection.makeDenseLogits(), x8_0);
}

{
  return partial apply for specialized closure #1 in LogitCollection.makeDenseLogits()(a1, specialized closure #1 in LogitCollection.makeDenseLogits(), x8_0);
}

BOOL partial apply for specialized closure #1 in LogitCollection.slowArgmax()@<W0>(uint64_t a1@<X0>, Swift::Int a2@<X1>, uint64_t a3@<X8>)
{
  return partial apply for specialized closure #1 in LogitCollection.slowArgmax()(a1, a2, a3);
}

{
  v5 = *a1;
  v6 = *(a1 + 8);
  result = LogitIndexSet.contains(_:)(a2);
  v8 = -65504.0;
  if (result)
  {
    v8 = 1.0;
  }

  if (v5 >= v8)
  {
    v9 = v6;
  }

  else
  {
    v9 = a2;
  }

  if (v5 >= v8)
  {
    v8 = v5;
  }

  *a3 = v8;
  *(a3 + 8) = v9;
  return result;
}

{
  return partial apply for specialized closure #1 in LogitCollection.slowArgmax()(a1, a2, a3);
}

{
  v5 = *a1;
  v6 = *(a1 + 8);
  result = LogitIndexSet.contains(_:)(a2);
  v8 = -65504.0;
  if (result)
  {
    v8 = 0.0;
  }

  if (v5 >= v8)
  {
    v9 = v6;
  }

  else
  {
    v9 = a2;
  }

  if (v5 >= v8)
  {
    v8 = v5;
  }

  *a3 = v8;
  *(a3 + 8) = v9;
  return result;
}

uint64_t lazy protocol witness table accessor for type ContiguousBitSet and conformance ContiguousBitSet(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void partial apply for closure #1 in LogitCollection.slowArgmax()(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = (*(*(v3 + 24) + 24))(a2, *(v3 + 16));
  if (v6 >= v8)
  {
    v9 = v7;
  }

  else
  {
    v9 = a2;
  }

  if (v6 >= v8)
  {
    v8 = v6;
  }

  *a3 = v8;
  *(a3 + 8) = v9;
}

uint64_t partial apply for specialized closure #1 in LogitCollection.slowArgmax()@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *result;
  v4 = *(result + 8);
  if (*result < 1.0)
  {
    v4 = a2;
    v3 = 1.0;
  }

  *a3 = v3;
  *(a3 + 8) = v4;
  return result;
}

void partial apply for closure #1 in LogitCollection.max()(float *a1@<X0>, uint64_t a2@<X1>, float *a3@<X8>)
{
  v5 = *a1;
  v6 = (*(*(v3 + 24) + 24))(a2, *(v3 + 16));
  if (v5 > v6)
  {
    v6 = v5;
  }

  *a3 = v6;
}

void partial apply for specialized closure #1 in LogitCollection.slowArgmax()(uint64_t a1@<X0>, Swift::Int a2@<X1>, uint64_t a3@<X8>)
{
  partial apply for specialized closure #1 in LogitCollection.slowArgmax()(a1, a2, a3);
}

{
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = CompositeLanguageModel.CompositeLogitCollection.subscript.getter(a2);
  if (v5 >= v7)
  {
    v8 = v6;
  }

  else
  {
    v8 = a2;
  }

  if (v5 >= v7)
  {
    v7 = v5;
  }

  *a3 = v7;
  *(a3 + 8) = v8;
}

uint64_t _s24TokenGenerationInference13LogitIndexSetOWOcTm_1(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t partial apply for specialized closure #1 in LogitCollection.slowArgmax()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  return partial apply for specialized closure #1 in LogitCollection.slowArgmax()(a1, a2, a3);
}

{
  result = specialized closure #1 in LogitCollection.slowArgmax()(*(a1 + 8), a2, *(v3 + 16), *a1);
  if (!v4)
  {
    *a3 = v7;
    *(a3 + 8) = result;
  }

  return result;
}

uint64_t partial apply for specialized closure #1 in LogitCollection.makeDenseLogits()@<X0>(void *a1@<X0>, uint64_t (*a2)(void, void)@<X2>, _DWORD *a3@<X8>)
{
  result = a2(*a1, *(v3 + 16));
  if (!v4)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t closure #1 in LogitCollection.makeDenseLogits()specialized partial apply@<X0>(void *a1@<X0>, _DWORD *x8_0@<X8>)
{
  return partial apply for specialized closure #1 in LogitCollection.makeDenseLogits()(a1, x8_0);
}

{
  return partial apply for specialized closure #1 in LogitCollection.makeDenseLogits()(a1, x8_0);
}

{
  return partial apply for specialized closure #1 in LogitCollection.makeDenseLogits()(a1, x8_0);
}

{
  return partial apply for specialized closure #1 in LogitCollection.makeDenseLogits()(a1, x8_0);
}

{
  return partial apply for specialized closure #1 in LogitCollection.makeDenseLogits()(a1, x8_0);
}

{
  return partial apply for specialized closure #1 in LogitCollection.makeDenseLogits()(a1, x8_0);
}

BOOL closure #1 in LogitCollection.slowArgmax()specialized partial apply@<W0>(uint64_t a1@<X0>, Swift::Int a2@<X1>, uint64_t a3@<X8>)
{
  return partial apply for specialized closure #1 in LogitCollection.slowArgmax()(a1, a2, a3);
}

{
  return partial apply for specialized closure #1 in LogitCollection.slowArgmax()(a1, a2, a3);
}

uint64_t closure #1 in LogitCollection.slowArgmax()specialized partial apply@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  return partial apply for specialized closure #1 in LogitCollection.slowArgmax()(a1, a2, a3);
}

{
  return partial apply for specialized closure #1 in LogitCollection.slowArgmax()(a1, a2, a3);
}

uint64_t type metadata accessor for MaskedLogitCollection(uint64_t a1)
{
  result = type metadata singleton initialization cache for MaskedLogitCollection;
  if (!type metadata singleton initialization cache for MaskedLogitCollection)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t type metadata completion function for MaskedLogitCollection(uint64_t a1)
{
  result = type metadata accessor for LogitCollection();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for LogitIndexSet(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void *specialized LogitCollection.slowArgmax()()
{
  v1 = v0;
  v2 = type metadata accessor for ContiguousBitSet();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for LogitIndexSet(0);
  v9 = MEMORY[0x28223BE20](v7, v8);
  v11 = &v20[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v20[-v13];
  v15 = type metadata accessor for MaskedLogitCollection(0);
  outlined init with copy of LogitIndexSet(v1 + *(v15 + 20), v14);
  outlined init with copy of LogitIndexSet(v14, v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = outlined destroy of LogitIndexSet(v14);
    if (*v11 == v11[1])
    {
      return 0;
    }
  }

  else
  {
    (*(v3 + 32))(v6, v11, v2);
    v19 = ContiguousBitSet.isEmpty.getter();
    (*(v3 + 8))(v6, v2);
    v16 = outlined destroy of LogitIndexSet(v14);
    if (v19)
    {
      return 0;
    }
  }

  MEMORY[0x28223BE20](v16, v17);
  *&v20[-16] = v1;
  return specialized LogitIndexSet.reduce<A>(_:_:)(0, partial apply for specialized closure #1 in LogitCollection.slowArgmax(), -3.4028e38);
}

uint64_t *MaskedLogitCollection.makeDenseLogits()()
{
  v2 = type metadata accessor for LogitIndexSet(0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MaskedLogitCollection(0);
  outlined init with copy of LogitIndexSet(v0 + *(v6 + 20), v5);
  v7 = v0[3];
  v8 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v7);
  v9 = (*(v8 + 72))(v7, v8);
  v10 = *(v9 + 16);
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v32 = MEMORY[0x277D84F90];
    v12 = v9;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10, 0);
    v13 = v12;
    v14 = v32;
    v15 = v32[2];
    v16 = 32;
    do
    {
      _S8 = *(v13 + v16);
      v32 = v14;
      v17 = v14[3];
      if (v15 >= v17 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v15 + 1, 1);
        v13 = v12;
        v14 = v32;
      }

      __asm { FCVT            H0, S8 }

      v14[2] = v15 + 1;
      *(v14 + v15 + 16) = _H0;
      v16 += 4;
      ++v15;
      --v10;
    }

    while (v10);
  }

  else
  {

    v14 = MEMORY[0x277D84F90];
  }

  if (one-time initialization token for veryNegativeLogit != -1)
  {
    swift_once();
  }

  LOWORD(_S8) = static Float16.veryNegativeLogit;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v14 = specialized _ArrayBuffer._consumeAndCreateNew()(v14);
  }

  LogitIndexSet.maskLogits(_:value:)(v14 + 4, v14[2], _S8);
  outlined destroy of LogitIndexSet(v5);
  v23 = v14[2];
  if (v23)
  {
    v32 = v11;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v23, 0);
    v24 = v32;
    v25 = v32[2];
    v26 = 32;
    do
    {
      _H8 = *(v14 + v26);
      v32 = v24;
      v28 = v24[3];
      if (v25 >= v28 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v25 + 1, 1);
        v24 = v32;
      }

      __asm { FCVT            S0, H8 }

      v24[2] = v25 + 1;
      *(v24 + v25 + 8) = _S0;
      v26 += 2;
      ++v25;
      --v23;
    }

    while (v23);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v24;
}

Swift::Int_optional __swiftcall MaskedLogitCollection.argmax()()
{
  v1 = v0;
  v2 = type metadata accessor for ContiguousBitSet();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LogitIndexSet(0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = (&v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = v0[3];
  v12 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v11);
  v13 = (*(v12 + 32))(v11, v12);
  if ((v14 & 1) == 0)
  {
    v18 = v13;
    v19 = type metadata accessor for MaskedLogitCollection(0);
    outlined init with copy of LogitIndexSet(v1 + *(v19 + 20), v10);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      if (v18 >= *v10)
      {
        v15 = v18;
        if (v18 < v10[1])
        {
          v16 = 0;
          goto LABEL_3;
        }
      }
    }

    else
    {
      (*(v3 + 32))(v6, v10, v2);
      v20 = v18;
      v21 = ContiguousBitSet.contains(_:)(v18);
      (*(v3 + 8))(v6, v2);
      if (v21)
      {
        v15 = v20;
        v16 = 0;
        goto LABEL_3;
      }
    }
  }

  v15 = specialized LogitCollection.slowArgmax()();
LABEL_3:
  v17 = v16 & 1;
  result.value = v15;
  result.is_nil = v17;
  return result;
}

uint64_t MaskedLogitCollection.makeMasked(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v34 = a1;
  v35 = a2;
  v3 = type metadata accessor for ContiguousBitSet();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for LogitIndexSet(0);
  v10 = MEMORY[0x28223BE20](v8, v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v10, v13);
  v16 = &v33 - v15;
  v18 = MEMORY[0x28223BE20](v14, v17);
  v20 = (&v33 - v19);
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v33 - v22;
  v24 = type metadata accessor for MaskedLogitCollection(0);
  v25 = *(v24 + 20);
  v33 = v2;
  outlined init with copy of LogitIndexSet(v2 + v25, v23);
  LogitIndexSet.formIntersection(_:)(v34);
  outlined init with copy of LogitIndexSet(v23, v20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    if (*v20 != v20[1])
    {
LABEL_3:
      outlined init with copy of DeterministicLanguageModelProtocol(v33, v36);
      outlined init with copy of LogitIndexSet(v23, v16);
      v26 = v35;
      v35[3] = v24;
      v26[4] = &protocol witness table for MaskedLogitCollection;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v26);
      outlined init with copy of DeterministicLanguageModelProtocol(v36, boxed_opaque_existential_1);
      v28 = v37;
      v29 = v38;
      __swift_project_boxed_opaque_existential_1(v36, v37);
      (*(v29 + 8))(v28, v29);
      outlined init with copy of LogitIndexSet(v16, boxed_opaque_existential_1 + *(v24 + 20));
      LogitIndexSet.formIntersection(_:)(v12);
      outlined destroy of LogitIndexSet(v12);
      outlined destroy of LogitIndexSet(v16);
      outlined destroy of LogitIndexSet(v23);
      return __swift_destroy_boxed_opaque_existential_1(v36);
    }
  }

  else
  {
    (*(v4 + 32))(v7, v20, v3);
    v31 = ContiguousBitSet.isEmpty.getter();
    (*(v4 + 8))(v7, v3);
    if ((v31 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  v32 = v35;
  v35[3] = &type metadata for EmptyLogitCollection;
  v32[4] = &protocol witness table for EmptyLogitCollection;
  return outlined destroy of LogitIndexSet(v23);
}

uint64_t protocol witness for LogitCollection.testForNaN() in conformance MaskedLogitCollection()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 16))(v1, v2) & 1;
}

uint64_t protocol witness for LogitCollection.subscript.getter in conformance MaskedLogitCollection(uint64_t a1)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  return (*(v4 + 24))(a1, v3, v4);
}

void partial apply for specialized closure #1 in LogitCollection.slowArgmax()(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = v6[3];
  v10 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v9);
  v11 = (*(v10 + 24))(a2, v9, v10);
  if (v7 >= v11)
  {
    v12 = v8;
  }

  else
  {
    v12 = a2;
  }

  if (v7 >= v11)
  {
    v11 = v7;
  }

  *a3 = v11;
  *(a3 + 8) = v12;
}

uint64_t type metadata accessor for SoftmaxLogitCollection(uint64_t a1)
{
  result = type metadata singleton initialization cache for SoftmaxLogitCollection;
  if (!type metadata singleton initialization cache for SoftmaxLogitCollection)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for SoftmaxLogitCollection(uint64_t a1)
{
  type metadata accessor for LogitIndexSet(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for [Float16]();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for [Float16]()
{
  if (!lazy cache variable for type metadata for [Float16])
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [Float16]);
    }
  }
}

Swift::Int_optional __swiftcall SoftmaxLogitCollection.argmax()()
{
  v1 = *(*(v0 + *(type metadata accessor for SoftmaxLogitCollection(0) + 20)) + 16);
  if (!v1)
  {
    v21 = 0;
    goto LABEL_9;
  }

  if (one-time initialization token for argmaxGraphContext != -1)
  {
    swift_once();
  }

  v2 = static UnsafeBufferPointer<A>.argmaxGraphContext;
  swift_beginAccess();
  os_unfair_lock_lock(v2 + 4);
  swift_endAccess();
  v3 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v3 + 16) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo10BNNSTensoraGMd, &_ss23_ContiguousArrayStorageCySo10BNNSTensoraGMR);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_220AE8A20;
  if (v1 >> 61)
  {
    __break(1u);
    goto LABEL_11;
  }

  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_220AE8A30;
  *(v6 + 32) = v1;
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_220AE8A30;
  *(v7 + 32) = v1;
  static Int32.bnnsDataType.getter();
  BNNSTensor.init(data:shape:stride:dataType:)();
  v8 = v32;
  v5[8] = v31;
  v5[9] = v8;
  v9 = v34;
  v5[10] = v33;
  v5[11] = v9;
  v10 = v28;
  v5[4] = v27;
  v5[5] = v10;
  v11 = v30;
  v5[6] = v29;
  v5[7] = v11;
  v12 = v26;
  v5[2] = v25;
  v5[3] = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_220AE8A30;
  *(v13 + 32) = v1;
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_220AE8A30;
  *(v14 + 32) = v1;
  static Float16.bnnsDataType.getter();
  BNNSTensor.init(data:shape:stride:dataType:)();
  v15 = v42;
  v5[18] = v41;
  v5[19] = v15;
  v16 = v44;
  v5[20] = v43;
  v5[21] = v16;
  v17 = v38;
  v5[14] = v37;
  v5[15] = v17;
  v18 = v40;
  v5[16] = v39;
  v5[17] = v18;
  v19 = v36;
  v5[12] = v35;
  v5[13] = v19;
  arguments._rawValue = v5;
  BNNSGraph.Context.executeFunction(_:arguments:)(0, &arguments);
  if (v20)
  {
LABEL_12:
    v23 = swift_unexpectedError();
    __break(1u);
    goto LABEL_13;
  }

  *(v3 + 16) = v1;
  swift_beginAccess();
  os_unfair_lock_unlock(v2 + 4);
  swift_endAccess();
  if (!*(v3 + 16))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v21 = *(v3 + 32);

LABEL_9:
  v22 = v1 == 0;
  v23 = v21;
LABEL_13:
  result.value = v23;
  result.is_nil = v22;
  return result;
}

uint64_t SoftmaxLogitCollection.topP(_:)(float a1)
{
  v2 = v1;
  _S8 = a1;
  v4 = type metadata accessor for ContiguousBitSet();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for LogitIndexSet(0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = (&v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v2 + *(type metadata accessor for SoftmaxLogitCollection(0) + 20));
  outlined init with copy of SoftmaxLogitCollection(v2, v12, type metadata accessor for LogitIndexSet);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = v12[1];
    v16 = v15 - *v12;
    if (!__OFSUB__(v15, *v12))
    {
      goto LABEL_6;
    }

    __break(1u);
  }

  (*(v5 + 32))(v8, v12, v4);
  v17 = ContiguousBitSet.count.getter();
  (*(v5 + 8))(v8, v4);
  v16 = v17;
LABEL_6:
  __asm { FCVT            H0, S8 }

  return Array<A>.topCumulativeSum(_:maxCount:)(v16, v13, _Q0);
}

uint64_t SoftmaxLogitCollection.makeDenseLogits()()
{
  v1 = *(v0 + *(type metadata accessor for SoftmaxLogitCollection(0) + 20));
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v15 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v3 = v15;
    v4 = (v1 + 32);
    v5 = *(v15 + 16);
    do
    {
      _H8 = *v4;
      v7 = *(v15 + 24);
      if (v5 >= v7 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v5 + 1, 1);
      }

      __asm { FCVT            S0, H8; float }

      v13 = log2f(_S0);
      *(v15 + 16) = v5 + 1;
      *(v15 + 4 * v5 + 32) = v13;
      ++v4;
      ++v5;
      --v2;
    }

    while (v2);
  }

  return v3;
}

void protocol witness for MutableLogitCollection.mask(_:) in conformance SoftmaxLogitCollection(uint64_t a1, uint64_t a2)
{
  if ((specialized static LogitIndexSet.== infix(_:_:)(a1, v2) & 1) == 0)
  {
    LogitIndexSet.formIntersection(_:)(a1);
    v5 = *(a2 + 20);
    v6 = *(v2 + v5);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
    }

    LogitIndexSet.maskLogits(_:value:)(v6 + 32, *(v6 + 2), 0.0);
    *(v2 + v5) = v6;
  }
}

double protocol witness for LogitCollection.subscript.getter in conformance SoftmaxLogitCollection(unint64_t a1, uint64_t a2)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(v2 + *(a2 + 20));
    if (*(v3 + 16) > a1)
    {
      _H0 = *(v3 + 2 * a1 + 32);
      __asm { FCVT            S0, H0; float }

      *&result = log2f(_S0);
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for LogitCollection.topK(_:) in conformance SoftmaxLogitCollection(uint64_t result, uint64_t a2)
{
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (result <= 0x7FFFFFFF)
  {
    v3 = *(v2 + *(a2 + 20));
    return UnsafeBufferPointer<A>.argtopK(_:)(result, v3 + 32, *(v3 + 16));
  }

  __break(1u);
  return result;
}

void protocol witness for LogitCollection.applySoftmax() in conformance SoftmaxLogitCollection(uint64_t a1, __n128 a2, __n128 a3)
{
  a2.n128_u16[0] = *(v3 + *(a1 + 24));
  v4 = *(v3 + *(a1 + 20));
  if (*a2.n128_u16 == COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)))
  {
  }

  else
  {
    *a3.n128_u16 = COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0));
    Array<A>.adjustSoftmaxTemperature(from:to:)(v4, a2, a3);
  }
}

void protocol witness for LogitCollection.applySoftmax(temperature:) in conformance SoftmaxLogitCollection(uint64_t a1, __n128 a2, __n128 a3)
{
  a3.n128_u32[0] = a2.n128_u32[0];
  a2.n128_u16[0] = *(v3 + *(a1 + 24));
  v4 = *(v3 + *(a1 + 20));
  if (*a2.n128_u16 == *a3.n128_u16)
  {
  }

  else
  {
    Array<A>.adjustSoftmaxTemperature(from:to:)(v4, a2, a3);
  }
}

void protocol witness for LogitCollection.makeMasked(_:) in conformance SoftmaxLogitCollection(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  a4[3] = a2;
  a4[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a4);
  outlined init with copy of SoftmaxLogitCollection(v4, boxed_opaque_existential_1, type metadata accessor for SoftmaxLogitCollection);
  if ((specialized static LogitIndexSet.== infix(_:_:)(a1, boxed_opaque_existential_1) & 1) == 0)
  {
    LogitIndexSet.formIntersection(_:)(a1);
    v8 = *(a2 + 20);
    v9 = *(boxed_opaque_existential_1 + v8);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
    }

    LogitIndexSet.maskLogits(_:value:)(v9 + 32, *(v9 + 2), 0.0);
    *(boxed_opaque_existential_1 + v8) = v9;
  }
}

uint64_t outlined init with copy of SoftmaxLogitCollection(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t TopK2LogitCollection.topK(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    return MEMORY[0x277D84F90];
  }

  if (a1 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5Int32VGMd, &_ss23_ContiguousArrayStorageCys5Int32VGMR);
    result = swift_allocObject();
    *(result + 16) = xmmword_220AE8A30;
    if (a2 >= 0xFFFFFFFF80000000)
    {
      if (a2 <= 0x7FFFFFFF)
      {
        v5 = (result + 32);
LABEL_12:
        *v5 = a2;
        return result;
      }

      goto LABEL_15;
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5Int32VGMd, &_ss23_ContiguousArrayStorageCys5Int32VGMR);
  result = swift_allocObject();
  *(result + 16) = xmmword_220AE8A20;
  if (a2 < 0xFFFFFFFF80000000)
  {
    goto LABEL_14;
  }

  if (a2 > 0x7FFFFFFF)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  *(result + 32) = a2;
  if (a3 < 0xFFFFFFFF80000000)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (a3 <= 0x7FFFFFFF)
  {
    v5 = (result + 36);
    LODWORD(a2) = a3;
    goto LABEL_12;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t protocol witness for LogitCollection.indexSet.getter in conformance TopK2LogitCollection@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_220AE8A20;
  *(v5 + 32) = v3;
  *(v5 + 40) = v4;
  _s24TokenGenerationInference13LogitIndexSetO6tokensyACxSlRzSi7ElementRtzlFZSaySiG_Tt1g5(v5, a1);
}

float protocol witness for LogitCollection.subscript.getter in conformance TopK2LogitCollection(uint64_t a1)
{
  result = *(v1 + 16);
  v3 = *(v1 + 20);
  if (*(v1 + 8) != a1)
  {
    v3 = -65504.0;
  }

  if (*v1 != a1)
  {
    return v3;
  }

  return result;
}

uint64_t type metadata accessor for UnconstrainedLogitCollection(uint64_t a1)
{
  result = type metadata singleton initialization cache for UnconstrainedLogitCollection;
  if (!type metadata singleton initialization cache for UnconstrainedLogitCollection)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t protocol witness for LogitCollection.indexSet.getter in conformance UnweightedSingleLogitCollection@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  *a1 = v3;
  a1[1] = v3 + 1;
  type metadata accessor for LogitIndexSet(0);

  return swift_storeEnumTagMultiPayload();
}

double protocol witness for LogitCollection.topK(_:) in conformance UnweightedSingleLogitCollection()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5Int32VGMd, &_ss23_ContiguousArrayStorageCys5Int32VGMR);
  v2 = swift_allocObject();
  *&result = 1;
  *(v2 + 16) = xmmword_220AE8A30;
  *(v2 + 32) = v1;
  return result;
}

uint64_t type metadata accessor for UnweightedSparseLogitCollection(uint64_t a1)
{
  result = type metadata singleton initialization cache for UnweightedSparseLogitCollection;
  if (!type metadata singleton initialization cache for UnweightedSparseLogitCollection)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

float UnweightedSparseLogitCollection.subscript.getter(Swift::Int a1)
{
  v2 = v1;
  v4 = type metadata accessor for ContiguousBitSet();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for LogitIndexSet(0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = (&v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of LogitIndexSet(v2, v12);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v5 + 32))(v8, v12, v4);
    v14 = ContiguousBitSet.contains(_:)(a1);
    (*(v5 + 8))(v8, v4);
    result = 0.0;
    if (v14)
    {
      return result;
    }

    return -65504.0;
  }

  if (*v12 > a1)
  {
    return -65504.0;
  }

  result = 0.0;
  if (v12[1] <= a1)
  {
    return -65504.0;
  }

  return result;
}

uint64_t WeightedDenseLogitCollection.init(indexSet:logits:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference13LogitIndexSetOSgMd, &_s24TokenGenerationInference13LogitIndexSetOSgMR);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for LogitIndexSet(0);
  v12 = *(v11 - 8);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v14, v17);
  v20 = &v26 - v19;
  MEMORY[0x28223BE20](v18, v21);
  v23 = (&v26 - v22);
  v24 = *(a2 + 2);
  *v23 = 0;
  v23[1] = v24;
  swift_storeEnumTagMultiPayload();
  outlined init with copy of LogitIndexSet?(a1, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    outlined destroy of LogitIndexSet?(v10);
    outlined init with copy of LogitIndexSet(v23, v20);
  }

  else
  {
    outlined init with copy of LogitIndexSet(v10, v16);
    LogitIndexSet.formIntersection(_:)(v23);
    outlined destroy of LogitIndexSet(v10);
    outlined init with take of LogitIndexSet(v16, v20);
  }

  outlined init with take of LogitIndexSet(v20, a3);
  if (one-time initialization token for veryNegativeLogit != -1)
  {
    swift_once();
  }

  LOWORD(v3) = static Float16.veryNegativeLogit;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    a2 = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
  }

  LogitIndexSet.maskLogits(_:value:)(a2 + 32, *(a2 + 2), v3);
  outlined destroy of LogitIndexSet?(a1);
  outlined destroy of LogitIndexSet(v23);
  result = type metadata accessor for WeightedDenseLogitCollection(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t outlined init with copy of LogitIndexSet?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference13LogitIndexSetOSgMd, &_s24TokenGenerationInference13LogitIndexSetOSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of LogitIndexSet?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference13LogitIndexSetOSgMd, &_s24TokenGenerationInference13LogitIndexSetOSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Bool __swiftcall WeightedDenseLogitCollection.testForNaN()()
{
  v1 = *(v0 + *(type metadata accessor for WeightedDenseLogitCollection(0) + 20));
  result = *(v1 + 16) && (v2 = *(v1 + 32), (~v2 & 0x7C00) == 0) && (v2 & 0x3FF) != 0;
  return result;
}

Swift::Int_optional __swiftcall WeightedDenseLogitCollection.argmax()()
{
  v1 = *(*(v0 + *(type metadata accessor for WeightedDenseLogitCollection(0) + 20)) + 16);
  if (!v1)
  {
    v21 = 0;
    goto LABEL_9;
  }

  if (one-time initialization token for argmaxGraphContext != -1)
  {
    swift_once();
  }

  v2 = static UnsafeBufferPointer<A>.argmaxGraphContext;
  swift_beginAccess();
  os_unfair_lock_lock(v2 + 4);
  swift_endAccess();
  v3 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v3 + 16) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo10BNNSTensoraGMd, &_ss23_ContiguousArrayStorageCySo10BNNSTensoraGMR);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_220AE8A20;
  if (v1 >> 61)
  {
    __break(1u);
    goto LABEL_11;
  }

  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_220AE8A30;
  *(v6 + 32) = v1;
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_220AE8A30;
  *(v7 + 32) = v1;
  static Int32.bnnsDataType.getter();
  BNNSTensor.init(data:shape:stride:dataType:)();
  v8 = v32;
  v5[8] = v31;
  v5[9] = v8;
  v9 = v34;
  v5[10] = v33;
  v5[11] = v9;
  v10 = v28;
  v5[4] = v27;
  v5[5] = v10;
  v11 = v30;
  v5[6] = v29;
  v5[7] = v11;
  v12 = v26;
  v5[2] = v25;
  v5[3] = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_220AE8A30;
  *(v13 + 32) = v1;
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_220AE8A30;
  *(v14 + 32) = v1;
  static Float16.bnnsDataType.getter();
  BNNSTensor.init(data:shape:stride:dataType:)();
  v15 = v42;
  v5[18] = v41;
  v5[19] = v15;
  v16 = v44;
  v5[20] = v43;
  v5[21] = v16;
  v17 = v38;
  v5[14] = v37;
  v5[15] = v17;
  v18 = v40;
  v5[16] = v39;
  v5[17] = v18;
  v19 = v36;
  v5[12] = v35;
  v5[13] = v19;
  arguments._rawValue = v5;
  BNNSGraph.Context.executeFunction(_:arguments:)(0, &arguments);
  if (v20)
  {
LABEL_12:
    v23 = swift_unexpectedError();
    __break(1u);
    goto LABEL_13;
  }

  *(v3 + 16) = v1;
  swift_beginAccess();
  os_unfair_lock_unlock(v2 + 4);
  swift_endAccess();
  if (!*(v3 + 16))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v21 = *(v3 + 32);

LABEL_9:
  v22 = v1 == 0;
  v23 = v21;
LABEL_13:
  result.value = v23;
  result.is_nil = v22;
  return result;
}

uint64_t WeightedDenseLogitCollection.applySoftmax()()
{
  v1 = *(*(v0 + *(type metadata accessor for WeightedDenseLogitCollection(0) + 20)) + 16);
  if (one-time initialization token for softmaxGraphContext != -1)
  {
    swift_once();
  }

  v2 = static UnsafeBufferPointer<A>.softmaxGraphContext;
  swift_beginAccess();
  os_unfair_lock_lock(v2 + 4);
  swift_endAccess();
  if (!v1)
  {
    v3 = MEMORY[0x277D84F90];
    goto LABEL_8;
  }

  v3 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v3 + 16) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo10BNNSTensoraGMd, &_ss23_ContiguousArrayStorageCySo10BNNSTensoraGMR);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_220AE8A20;
  if (v1 + 0x4000000000000000 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_220AE8A30;
    *(v6 + 32) = v1;
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_220AE8A30;
    *(v7 + 32) = v1;
    static Float16.bnnsDataType.getter();
    BNNSTensor.init(data:shape:stride:dataType:)();
    v8 = v30;
    v5[8] = v29;
    v5[9] = v8;
    v9 = v32;
    v5[10] = v31;
    v5[11] = v9;
    v10 = v26;
    v5[4] = v25;
    v5[5] = v10;
    v11 = v28;
    v5[6] = v27;
    v5[7] = v11;
    v12 = v24;
    v5[2] = v23;
    v5[3] = v12;
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_220AE8A30;
    *(v13 + 32) = v1;
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_220AE8A30;
    *(v14 + 32) = v1;
    static Float16.bnnsDataType.getter();
    BNNSTensor.init(data:shape:stride:dataType:)();
    v15 = v40;
    v5[18] = v39;
    v5[19] = v15;
    v16 = v42;
    v5[20] = v41;
    v5[21] = v16;
    v17 = v36;
    v5[14] = v35;
    v5[15] = v17;
    v18 = v38;
    v5[16] = v37;
    v5[17] = v18;
    v19 = v34;
    v5[12] = v33;
    v5[13] = v19;
    arguments._rawValue = v5;
    BNNSGraph.Context.executeFunction(_:arguments:)(0, &arguments);
    if (!v20)
    {

      *(v3 + 16) = v1;
LABEL_8:
      swift_beginAccess();
      os_unfair_lock_unlock(v2 + 4);
      swift_endAccess();
      return v3;
    }
  }

  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t WeightedDenseLogitCollection.applySoftmax(temperature:)(__n128 a1)
{
  v2 = *a1.n128_u16;
  v3 = *(*(v1 + *(type metadata accessor for WeightedDenseLogitCollection(0) + 20)) + 16);
  if (v2 == COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)))
  {
    if (one-time initialization token for softmaxGraphContext != -1)
    {
      swift_once();
    }

    v4 = static UnsafeBufferPointer<A>.softmaxGraphContext;
    swift_beginAccess();
    os_unfair_lock_lock(v4 + 4);
    swift_endAccess();
    if (!v3)
    {
      v23 = MEMORY[0x277D84F90];
      goto LABEL_14;
    }

    v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v5 + 16) = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo10BNNSTensoraGMd, &_ss23_ContiguousArrayStorageCySo10BNNSTensoraGMR);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_220AE8A20;
    if (v3 + 0x4000000000000000 >= 0)
    {
      v7 = v6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_220AE8A30;
      *(v8 + 32) = v3;
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_220AE8A30;
      *(v9 + 32) = v3;
      static Float16.bnnsDataType.getter();
      BNNSTensor.init(data:shape:stride:dataType:)();
      v10 = v70;
      v7[8] = v69;
      v7[9] = v10;
      v11 = v72;
      v7[10] = v71;
      v7[11] = v11;
      v12 = v66;
      v7[4] = v65;
      v7[5] = v12;
      v13 = v68;
      v7[6] = v67;
      v7[7] = v13;
      v14 = v64;
      v7[2] = v63;
      v7[3] = v14;
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_220AE8A30;
      *(v15 + 32) = v3;
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_220AE8A30;
      *(v16 + 32) = v3;
      static Float16.bnnsDataType.getter();
      BNNSTensor.init(data:shape:stride:dataType:)();
      v17 = v80;
      v7[18] = v79;
      v7[19] = v17;
      v18 = v82;
      v7[20] = v81;
      v7[21] = v18;
      v19 = v76;
      v7[14] = v75;
      v7[15] = v19;
      v20 = v78;
      v7[16] = v77;
      v7[17] = v20;
      v21 = v74;
      v7[12] = v73;
      v7[13] = v21;
      arguments[0]._rawValue = v7;
      BNNSGraph.Context.executeFunction(_:arguments:)(0, arguments);
      if (!v22)
      {

        *(v5 + 16) = v3;
        v23 = v5;
LABEL_14:
        swift_beginAccess();
        os_unfair_lock_unlock(v4 + 4);
LABEL_17:
        swift_endAccess();
        return v23;
      }

      goto LABEL_21;
    }

    __break(1u);
  }

  else if (one-time initialization token for temperatureSoftmaxGraphContext == -1)
  {
    goto LABEL_9;
  }

  swift_once();
LABEL_9:
  v24 = static UnsafeBufferPointer<A>.temperatureSoftmaxGraphContext;
  swift_beginAccess();
  os_unfair_lock_lock(v24 + 4);
  swift_endAccess();
  if (!v3)
  {
    v23 = MEMORY[0x277D84F90];
    goto LABEL_16;
  }

  v50 = v24;
  v25 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v25 + 16) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo10BNNSTensoraGMd, &_ss23_ContiguousArrayStorageCySo10BNNSTensoraGMR);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_220AE8A20;
  if (v3 + 0x4000000000000000 < 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  v27 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_220AE8A30;
  *(v28 + 32) = v3;
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_220AE8A30;
  *(v29 + 32) = v3;
  static Float16.bnnsDataType.getter();
  BNNSTensor.init(data:shape:stride:dataType:)();
  v30 = v60;
  *(v27 + 128) = v59;
  *(v27 + 144) = v30;
  v31 = v62;
  *(v27 + 160) = v61;
  *(v27 + 176) = v31;
  v32 = v56;
  *(v27 + 64) = v55;
  *(v27 + 80) = v32;
  v33 = v58;
  *(v27 + 96) = v57;
  *(v27 + 112) = v33;
  v34 = v54;
  *(v27 + 32) = *&arguments[0]._rawValue;
  *(v27 + 48) = v34;
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_220AE8A30;
  *(v35 + 32) = v3;
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_220AE8A30;
  *(v36 + 32) = v3;
  static Float16.bnnsDataType.getter();
  BNNSTensor.init(data:shape:stride:dataType:)();
  v37 = v70;
  *(v27 + 288) = v69;
  *(v27 + 304) = v37;
  v38 = v72;
  *(v27 + 320) = v71;
  *(v27 + 336) = v38;
  v39 = v66;
  *(v27 + 224) = v65;
  *(v27 + 240) = v39;
  v40 = v68;
  *(v27 + 256) = v67;
  *(v27 + 272) = v40;
  v41 = v64;
  *(v27 + 192) = v63;
  *(v27 + 208) = v41;
  v52 = v2;
  static BNNSTensor.allocate<A>(repeating:shape:stride:)();
  v42 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(1, 3, 1, v27);
  *(v42 + 2) = 3;
  v43 = v80;
  *(v42 + 28) = v79;
  *(v42 + 29) = v43;
  v44 = v82;
  *(v42 + 30) = v81;
  *(v42 + 31) = v44;
  v45 = v76;
  *(v42 + 24) = v75;
  *(v42 + 25) = v45;
  v46 = v78;
  *(v42 + 26) = v77;
  *(v42 + 27) = v46;
  v47 = v74;
  *(v42 + 22) = v73;
  *(v42 + 23) = v47;
  v51._rawValue = v42;
  BNNSGraph.Context.executeFunction(_:arguments:)(0, &v51);
  if (!v48)
  {

    BNNSTensor.deallocate()();
    v24 = v50;
    *(v25 + 16) = v3;
    v23 = v25;
LABEL_16:
    swift_beginAccess();
    os_unfair_lock_unlock(v24 + 4);
    goto LABEL_17;
  }

LABEL_21:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t WeightedDenseLogitCollection.makeMasked(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v30 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference13LogitIndexSetOSgMd, &_s24TokenGenerationInference13LogitIndexSetOSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v29 - v6;
  v8 = type metadata accessor for ContiguousBitSet();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for LogitIndexSet(0);
  v14 = *(v13 - 8);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v18 = (&v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v29 - v20;
  v29 = v2;
  outlined init with copy of LogitIndexSet(v2, &v29 - v20);
  LogitIndexSet.formIntersection(_:)(a1);
  outlined init with copy of LogitIndexSet(v21, v18);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v9 + 32))(v12, v18, v8);
    v26 = ContiguousBitSet.isEmpty.getter();
    (*(v9 + 8))(v12, v8);
    if ((v26 & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v27 = v30;
    v30[3] = &type metadata for EmptyLogitCollection;
    v27[4] = &protocol witness table for EmptyLogitCollection;
    return outlined destroy of LogitIndexSet(v21);
  }

  if (*v18 == v18[1])
  {
    goto LABEL_5;
  }

LABEL_3:
  outlined init with copy of LogitIndexSet(v21, v7);
  (*(v14 + 56))(v7, 0, 1, v13);
  v22 = type metadata accessor for WeightedDenseLogitCollection(0);
  v23 = v30;
  v24 = *(v29 + *(v22 + 20));
  v30[3] = v22;
  v23[4] = &protocol witness table for WeightedDenseLogitCollection;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v23);

  WeightedDenseLogitCollection.init(indexSet:logits:)(v7, v24, boxed_opaque_existential_1);
  return outlined destroy of LogitIndexSet(v21);
}

uint64_t protocol witness for MutableLogitCollection.mask(_:) in conformance WeightedDenseLogitCollection(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for LogitIndexSet(0);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = specialized static LogitIndexSet.== infix(_:_:)(a1, v2);
  if ((result & 1) == 0)
  {
    outlined init with copy of LogitIndexSet(v2, v8);
    outlined assign with copy of LogitIndexSet(a1, v2);
    LogitIndexSet.formIntersection(_:)(v8);
    v10 = *(a2 + 20);
    v11 = *(v2 + v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v10) = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = specialized _ArrayBuffer._consumeAndCreateNew()(v11);
      *(v2 + v10) = v11;
    }

    v14 = *(v11 + 2);
    if (one-time initialization token for veryNegativeLogit != -1)
    {
      v16 = *(v11 + 2);
      swift_once();
      v14 = v16;
    }

    LOWORD(v13) = static Float16.veryNegativeLogit;
    LogitIndexSet.maskLogits(_:value:)(v11 + 32, v14, v13);
    *(v2 + v10) = v11;
    return outlined destroy of LogitIndexSet(v8);
  }

  return result;
}

unint64_t protocol witness for LogitCollection.subscript.getter in conformance WeightedDenseLogitCollection(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(v2 + *(a2 + 20));
    if (*(v3 + 16) > result)
    {
      _H0 = *(v3 + 2 * result + 32);
      __asm { FCVT            S0, H0 }

      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for WeightedDenseLogitCollection(uint64_t a1)
{
  result = type metadata singleton initialization cache for WeightedDenseLogitCollection;
  if (!type metadata singleton initialization cache for WeightedDenseLogitCollection)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for WeightedDenseLogitCollection(uint64_t a1)
{
  type metadata accessor for LogitIndexSet(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for [Float16]();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t outlined assign with copy of LogitIndexSet(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LogitIndexSet(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

float protocol witness for LogitCollection.subscript.getter in conformance WeightedSingleLogitCollection(uint64_t a1)
{
  result = *(v1 + 8);
  if (*v1 != a1)
  {
    return -65504.0;
  }

  return result;
}

uint64_t protocol witness for LogitCollection.topK(_:) in conformance WeightedSingleLogitCollection(uint64_t a1)
{
  if (!a1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5Int32VGMd, &_ss23_ContiguousArrayStorageCys5Int32VGMR);
  result = swift_allocObject();
  *(result + 16) = xmmword_220AE8A30;
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v2 <= 0x7FFFFFFF)
  {
    *(result + 32) = v2;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t WeightedSparseLogitCollection.init(node:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for ContiguousBitSet();
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a2 = a1;
  v8 = (a2 + *(type metadata accessor for WeightedSparseLogitCollection(0) + 20));
  v9 = *(a1 + 16);
  if (v9 != 1)
  {
    if (v9)
    {
      v18[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSD4KeysVySiSf_GMd, &_sSD4KeysVySiSf_GMR);
      v18[5] = lazy protocol witness table accessor for type [Int : Float].Keys and conformance [A : B].Keys();
      v18[1] = a1;
      swift_bridgeObjectRetain_n();
      ContiguousBitSet.init(_:)();
      LogitIndexSet.init(_:)(v7, v8);
    }

    else
    {
      v10 = one-time initialization token for empty;

      if (v10 != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for LogitIndexSet(0);
      v12 = __swift_project_value_buffer(v11, static LogitIndexSet.empty);
      outlined init with copy of LogitIndexSet(v12, v8);
    }
  }

  result = specialized Collection.first.getter(v14);
  if (v15)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v16 = result;

  v17 = v16 + 1;
  if (__OFADD__(v16, 1))
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v17 < v16)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  *v8 = v16;
  v8[1] = v17;
  type metadata accessor for LogitIndexSet(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t type metadata accessor for WeightedSparseLogitCollection(uint64_t a1)
{
  result = type metadata singleton initialization cache for WeightedSparseLogitCollection;
  if (!type metadata singleton initialization cache for WeightedSparseLogitCollection)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t WeightedSparseLogitCollection.subscript.getter(uint64_t a1)
{
  if (!*(*v1 + 16) || (result = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v3 & 1) == 0))
  {
    _StringGuts.grow(_:)(33);
    MEMORY[0x223D8E780](0xD000000000000015, 0x8000000220AFF630);
    v4 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x223D8E780](v4);

    MEMORY[0x223D8E780](0x206E6920746F6E20, 0xE800000000000000);
    type metadata accessor for WeightedSparseLogitCollection(0);
    type metadata accessor for LogitIndexSet(0);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void type metadata completion function for WeightedSparseLogitCollection(uint64_t a1)
{
  type metadata accessor for [Int : Float]();
  if (v1 <= 0x3F)
  {
    type metadata accessor for LogitIndexSet(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t type metadata accessor for ArgmaxPresampler(uint64_t a1)
{
  result = type metadata singleton initialization cache for ArgmaxPresampler;
  if (!type metadata singleton initialization cache for ArgmaxPresampler)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for ArgmaxPresampler(uint64_t a1)
{
  type metadata accessor for LogitIndexSet?(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void type metadata accessor for LogitIndexSet?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for LogitIndexSet?)
  {
    type metadata accessor for LogitIndexSet(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for LogitIndexSet?);
    }
  }
}

uint64_t outlined destroy of LogitIndexSet(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for BasicLogitPresampler(uint64_t a1)
{
  result = type metadata singleton initialization cache for BasicLogitPresampler;
  if (!type metadata singleton initialization cache for BasicLogitPresampler)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t closure #1 in BasicLogitPresampler.presampleLogits(buffer:numLogits:tokensStride:logitStride:range:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v37 = a4;
  v38 = a6;
  v39 = a5;
  v36 = a7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference13LogitIndexSetOSgMd, &_s24TokenGenerationInference13LogitIndexSetOSgMR);
  v12 = MEMORY[0x28223BE20](v10 - 8, v11);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v36 - v16;
  v18 = type metadata accessor for LogitIndexSet(0);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v20);
  v22 = (&v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = *a1;
  outlined init with copy of LogitIndexSet?(a2, v17);
  v24 = *(v19 + 48);
  result = v24(v17, 1, v18);
  if (result == 1)
  {
    if (a3 < 0)
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    *v22 = 0;
    v22[1] = a3;
    swift_storeEnumTagMultiPayload();
    result = v24(v17, 1, v18);
    if (result != 1)
    {
      result = outlined destroy of LogitIndexSet?(v17);
    }
  }

  else
  {
    result = outlined init with take of LogitIndexSet(v17, v22);
  }

  v26 = v39 * v23;
  if ((v39 * v23) >> 64 != (v39 * v23) >> 63)
  {
    __break(1u);
    goto LABEL_20;
  }

  v27 = v38;
  v28 = (v37 + 2 * v26);
  if (v38 == 1)
  {
    if (a3)
    {
      v29 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs7Float16V_Tt1g5(a3, 0);
      memcpy(v29 + 32, v28, 2 * a3);
    }

    else
    {
      v29 = MEMORY[0x277D84F90];
    }

LABEL_18:
    outlined init with copy of LogitIndexSet(v22, v14);
    (*(v19 + 56))(v14, 0, 1, v18);
    v33 = type metadata accessor for WeightedDenseLogitCollection(0);
    v34 = v36;
    v36[3] = v33;
    v34[4] = &protocol witness table for WeightedDenseLogitCollection;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v34);
    WeightedDenseLogitCollection.init(indexSet:logits:)(v14, v29, boxed_opaque_existential_1);
    return outlined destroy of LogitIndexSet(v22);
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    if (a3)
    {
      v30 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v29 = v30;
      *(v30 + 16) = a3;
      v31 = 32;
      v32 = a3;
      do
      {
        *(v30 + v31) = *v28;
        v31 += 2;
        v28 += v27;
        --v32;
      }

      while (v32);
    }

    else
    {
      v29 = MEMORY[0x277D84F90];
    }

    *(v29 + 2) = a3;
    goto LABEL_18;
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t BasicLogitPresampler.makeMasked(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference13LogitIndexSetOSgMd, &_s24TokenGenerationInference13LogitIndexSetOSgMR);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v25 - v8;
  v10 = type metadata accessor for LogitIndexSet(0);
  v11 = *(v10 - 8);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v13, v16);
  v19 = &v25 - v18;
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v25 - v21;
  outlined init with copy of LogitIndexSet?(v3, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    outlined destroy of LogitIndexSet?(v9);
    outlined init with copy of LogitIndexSet(a1, v19);
  }

  else
  {
    outlined init with take of LogitIndexSet(v9, v15);
    outlined init with copy of LogitIndexSet(v15, v19);
    LogitIndexSet.formUnion(_:)(a1);
    outlined destroy of LogitIndexSet(v15);
  }

  outlined init with take of LogitIndexSet(v19, v22);
  a2[3] = type metadata accessor for BasicLogitPresampler(0);
  a2[4] = &protocol witness table for BasicLogitPresampler;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  outlined init with take of LogitIndexSet(v22, boxed_opaque_existential_1);
  return (*(v11 + 56))(boxed_opaque_existential_1, 0, 1, v10);
}

uint64_t protocol witness for LogitPresampler.presampleLogits(buffer:numLogits:tokensStride:logitStride:range:) in conformance BasicLogitPresampler(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[3] = a2;
  v7[4] = a1;
  v7[5] = a3;
  v7[6] = a4;
  return _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_24TokenGenerationInference15LogitCollection_ps5NeverOTg5(partial apply for closure #1 in BasicLogitPresampler.presampleLogits(buffer:numLogits:tokensStride:logitStride:range:), v7, a5, a6);
}

uint64_t protocol witness for LogitPresampler.makeUnfiltered() in conformance ArgmaxPresampler@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = type metadata accessor for BasicLogitPresampler(0);
  a1[4] = &protocol witness table for BasicLogitPresampler;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  v3 = type metadata accessor for LogitIndexSet(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(boxed_opaque_existential_1, 1, 1, v3);
}

uint64_t protocol witness for LogitPresampler.makeUnfiltered() in conformance BasicLogitPresampler@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  a3[3] = a1;
  a3[4] = a2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
  v4 = type metadata accessor for LogitIndexSet(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(boxed_opaque_existential_1, 1, 1, v4);
}

uint64_t protocol witness for LogitPresampler.presampleLogits(buffer:numLogits:tokensStride:logitStride:range:) in conformance NullLogitPresampler(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = a6 - a5;
  if (!__OFSUB__(a6, a5))
  {
    return _sSa9repeating5countSayxGx_SitcfC24TokenGenerationInference15LogitCollection_p_Tt1g5Tf4en_nAD05EmptyfG0V_Tg5(result);
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for SoftmaxLogitPresampler(uint64_t a1)
{
  result = type metadata singleton initialization cache for SoftmaxLogitPresampler;
  if (!type metadata singleton initialization cache for SoftmaxLogitPresampler)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for SoftmaxLogitPresampler(uint64_t a1)
{
  type metadata accessor for LogitIndexSet?(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t closure #1 in SoftmaxLogitPresampler.presampleLogits(buffer:numLogits:tokensStride:logitStride:range:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v45 = a4;
  v46 = a6;
  v44 = a7;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference13LogitIndexSetOSgMd, &_s24TokenGenerationInference13LogitIndexSetOSgMR);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v43 - v14;
  v16 = type metadata accessor for LogitIndexSet(0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v21 = (&v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = MEMORY[0x28223BE20](v19, v22);
  v47 = &v43 - v24;
  MEMORY[0x28223BE20](v23, v25);
  v27 = (&v43 - v26);
  v28 = *a1;
  v43 = a2;
  outlined init with copy of LogitIndexSet?(a2, v15);
  v31 = *(v17 + 48);
  boxed_opaque_existential_1 = (v17 + 48);
  v30 = v31;
  result = v31(v15, 1, v16);
  if (result == 1)
  {
    if (a3 < 0)
    {
      __break(1u);
      goto LABEL_21;
    }

    *v27 = 0;
    v27[1] = a3;
    swift_storeEnumTagMultiPayload();
    result = v30(v15, 1, v16);
    if (result != 1)
    {
      result = outlined destroy of LogitIndexSet?(v15);
    }
  }

  else
  {
    result = outlined init with take of LogitIndexSet(v15, v27);
  }

  if ((a5 * v28) >> 64 != (a5 * v28) >> 63)
  {
    __break(1u);
    goto LABEL_19;
  }

  v33 = v46;
  v34 = (v45 + 2 * a5 * v28);
  if (v46 == 1)
  {
    LOWORD(v7) = *(v43 + *(type metadata accessor for SoftmaxLogitPresampler(0) + 20));
    v35.n128_u32[0] = v7;
    a5 = UnsafeBufferPointer<A>.applySoftmax(temperature:)(v34, a3, v35);
    v15 = v47;
    goto LABEL_16;
  }

  v15 = v47;
  if ((a3 & 0x8000000000000000) == 0)
  {
    if (a3)
    {
      v36 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v37 = v36;
      *(v36 + 16) = a3;
      v38 = 32;
      v39 = a3;
      do
      {
        *(v36 + v38) = *v34;
        v38 += 2;
        v34 += v33;
        --v39;
      }

      while (v39);
    }

    else
    {
      v37 = MEMORY[0x277D84F90];
    }

    *(v37 + 16) = a3;
    LOWORD(v7) = *(v43 + *(type metadata accessor for SoftmaxLogitPresampler(0) + 20));
    v40.n128_u32[0] = v7;
    a5 = UnsafeBufferPointer<A>.applySoftmax(temperature:)(v37 + 32, a3, v40);

LABEL_16:
    outlined init with copy of LogitIndexSet(v27, v15);
    a3 = type metadata accessor for SoftmaxLogitCollection(0);
    v41 = v44;
    v44[3] = a3;
    v41[4] = &protocol witness table for SoftmaxLogitCollection;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v41);
    v42 = *(a5 + 16);
    *v21 = 0;
    v21[1] = v42;
    swift_storeEnumTagMultiPayload();
    outlined init with copy of LogitIndexSet(v15, boxed_opaque_existential_1);
    LogitIndexSet.formIntersection(_:)(v21);
    outlined destroy of LogitIndexSet(v21);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_17:
      LogitIndexSet.maskLogits(_:value:)((a5 + 32), *(a5 + 16), 0.0);
      outlined destroy of LogitIndexSet(v15);
      *(boxed_opaque_existential_1 + *(a3 + 20)) = a5;
      *(boxed_opaque_existential_1 + *(a3 + 24)) = v7;
      return outlined destroy of LogitIndexSet(v27);
    }

LABEL_19:
    a5 = specialized _ArrayBuffer._consumeAndCreateNew()(a5);
    goto LABEL_17;
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t SoftmaxLogitPresampler.makeMasked(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference13LogitIndexSetOSgMd, &_s24TokenGenerationInference13LogitIndexSetOSgMR);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v27 - v8;
  v10 = type metadata accessor for LogitIndexSet(0);
  v11 = *(v10 - 8);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v13, v16);
  v19 = &v27 - v18;
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v27 - v21;
  outlined init with copy of LogitIndexSet?(v3, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    outlined destroy of LogitIndexSet?(v9);
    outlined init with copy of LogitIndexSet(a1, v19);
  }

  else
  {
    outlined init with take of LogitIndexSet(v9, v15);
    outlined init with copy of LogitIndexSet(v15, v19);
    LogitIndexSet.formUnion(_:)(a1);
    outlined destroy of LogitIndexSet(v15);
  }

  outlined init with take of LogitIndexSet(v19, v22);
  v23 = type metadata accessor for SoftmaxLogitPresampler(0);
  v24 = *(v3 + *(v23 + 20));
  a2[3] = v23;
  a2[4] = &protocol witness table for SoftmaxLogitPresampler;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  outlined init with take of LogitIndexSet(v22, boxed_opaque_existential_1);
  result = (*(v11 + 56))(boxed_opaque_existential_1, 0, 1, v10);
  *(boxed_opaque_existential_1 + *(v23 + 20)) = v24;
  return result;
}

uint64_t protocol witness for LogitPresampler.presampleLogits(buffer:numLogits:tokensStride:logitStride:range:) in conformance SoftmaxLogitPresampler(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[3] = a2;
  v7[4] = a1;
  v7[5] = a3;
  v7[6] = a4;
  return _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_24TokenGenerationInference15LogitCollection_ps5NeverOTg5(partial apply for closure #1 in SoftmaxLogitPresampler.presampleLogits(buffer:numLogits:tokensStride:logitStride:range:), v7, a5, a6);
}

uint64_t protocol witness for LogitPresampler.makeUnfiltered() in conformance SoftmaxLogitPresampler@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *(v3 + *(a1 + 20));
  a3[3] = a1;
  a3[4] = a2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
  v7 = type metadata accessor for LogitIndexSet(0);
  result = (*(*(v7 - 8) + 56))(boxed_opaque_existential_1, 1, 1, v7);
  *(boxed_opaque_existential_1 + *(a1 + 20)) = v5;
  return result;
}

uint64_t protocol witness for LogitPresampler.makeMasked(_:) in conformance TopK2Presampler@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  a2[3] = type metadata accessor for BasicLogitPresampler(0);
  a2[4] = &protocol witness table for BasicLogitPresampler;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  outlined init with copy of LogitIndexSet(a1, boxed_opaque_existential_1);
  v5 = type metadata accessor for LogitIndexSet(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(boxed_opaque_existential_1, 0, 1, v5);
}

uint64_t specialized TopK2Presampler.presampleLogits(buffer:numLogits:tokensStride:logitStride:range:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a5;
  v9 = a6 - a5;
  v10 = __OFSUB__(a6, a5);
  if (a4 == 1)
  {
    if (v10)
    {
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9 & ~(v9 >> 63), 0, MEMORY[0x277D84F90]);
    if (v6 == a6)
    {
LABEL_7:
      v14 = specialized _arrayForceCast<A, B>(_:)(v13);

      return v14;
    }

    if (a6 < v6)
    {
      goto LABEL_68;
    }

    while (a6 != v6)
    {
      if ((a3 * v6) >> 64 != (a3 * v6) >> 63)
      {
        goto LABEL_49;
      }

      v21 = a1 + 2 * a3 * v6;
      v22 = UnsafeBufferPointer<A>.argtopK(_:)(2, v21, a2);
      v23 = *(v22 + 16);
      if (!v23)
      {
        goto LABEL_50;
      }

      if (v23 == 1)
      {
        goto LABEL_51;
      }

      v25 = *(v22 + 32);
      v24 = *(v22 + 36);
      _H8 = *(v21 + 2 * v25);

      _H9 = *(v21 + 2 * v24);
      if (_H9 > _H8)
      {
        goto LABEL_69;
      }

      v29 = *(v13 + 2);
      v28 = *(v13 + 3);
      if (v29 >= v28 >> 1)
      {
        v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1, v13);
      }

      ++v6;
      __asm
      {
        FCVT            S0, H8
        FCVT            S1, H9
      }

      *(v13 + 2) = v29 + 1;
      v36 = &v13[24 * v29];
      *(v36 + 4) = v25;
      *(v36 + 5) = v24;
      *(v36 + 12) = _S0;
      *(v36 + 13) = _S1;
      if (a6 == v6)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
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
    goto LABEL_60;
  }

  if (v10)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  if (v9 < 0)
  {
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v17 = MEMORY[0x277D84F90];
  if (v9)
  {
    v18 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v18 + 16) = v9;
    v19 = (v18 + 32);
    v20 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v20 + 16) = v9;
  }

  else
  {
    v19 = (MEMORY[0x277D84F90] + 32);
    v20 = MEMORY[0x277D84F90];
    v18 = MEMORY[0x277D84F90];
  }

  if (a2 > 0x7FFFFFFF)
  {
    goto LABEL_63;
  }

  if (a4 > 0x7FFFFFFF)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  if (v6 > 0x7FFFFFFF)
  {
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  if (a2 < 0xFFFFFFFF80000000 || a4 < 0xFFFFFFFF80000000 || v6 < 0xFFFFFFFF80000000)
  {
    goto LABEL_66;
  }

  if (!(v9 >> 31))
  {
    v64 = v20 + 32;
    PresampleTopK2(a1, a2, a4, v6, v9, v19, (v20 + 32));
    *(v20 + 16) = v9;
    *(v18 + 16) = v9;
    v70 = v17;

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 0, 0);
    v37 = v17;
    v63 = *(v18 + 16);
    if (!v63)
    {
LABEL_47:

      swift_bridgeObjectRelease_n();
      return v37;
    }

    v38 = 0;
    v62 = v18 + 32;
    v39 = &type metadata for TopK2LogitCollection;
    v61 = v20;
    while (v38 < *(v18 + 16))
    {
      v40 = *(v20 + 16);
      if (v38 == v40)
      {
        goto LABEL_47;
      }

      if (v38 >= v40)
      {
        goto LABEL_53;
      }

      v41 = *(v62 + 4 * v38);
      v42 = v41 * a4;
      if ((*(v62 + 4 * v38) * a4) >> 64 != (v41 * a4) >> 63)
      {
        goto LABEL_54;
      }

      _VF = __OFADD__(v42, v38);
      v43 = v42 + v38;
      if (_VF)
      {
        goto LABEL_55;
      }

      v44 = v43 + v6;
      if (__OFADD__(v43, v6))
      {
        goto LABEL_56;
      }

      v45 = *(v64 + 4 * v38);
      v46 = v45 * a4;
      if ((*(v64 + 4 * v38) * a4) >> 64 != (v45 * a4) >> 63)
      {
        goto LABEL_57;
      }

      _VF = __OFADD__(v46, v38);
      v47 = v46 + v38;
      if (_VF)
      {
        goto LABEL_58;
      }

      _VF = __OFADD__(v47, v6);
      v48 = v47 + v6;
      if (_VF)
      {
        goto LABEL_59;
      }

      _H0 = *(a1 + 2 * v44);
      _H1 = *(a1 + 2 * v48);
      if (_H1 > _H0)
      {
        goto LABEL_69;
      }

      __asm
      {
        FCVT            S0, H0
        FCVT            S1, H1
      }

      v68 = &type metadata for TopK2LogitCollection;
      v69 = &protocol witness table for TopK2LogitCollection;
      v65[0] = v41;
      v65[1] = v45;
      v66 = _S0;
      v67 = _S1;
      v70 = v37;
      v54 = *(v37 + 16);
      v53 = *(v37 + 24);
      v55 = v18;
      if (v54 >= v53 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v53 > 1), v54 + 1, 1);
        v39 = v68;
        v56 = v69;
      }

      else
      {
        v56 = &protocol witness table for TopK2LogitCollection;
      }

      ++v38;
      v57 = __swift_mutable_project_boxed_opaque_existential_1(v65, v39);
      MEMORY[0x28223BE20](v57, v57);
      v59 = &v61 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v60 + 16))(v59);
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)(v54, v59, &v70, v39, v56);
      __swift_destroy_boxed_opaque_existential_1(v65);
      v37 = v70;
      v18 = v55;
      v20 = v61;
      v39 = &type metadata for TopK2LogitCollection;
      if (v63 == v38)
      {
        goto LABEL_47;
      }
    }

    goto LABEL_52;
  }

LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void *ClassificationSampling.init(defaultClass:outputClasses:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for TokenGenerationError.Context();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  if (v11 != 1)
  {
    if (one-time initialization token for device != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Log.device);

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v29 = v6;
      v16 = v15;
      *v15 = 134217984;
      v28 = v11;
      v17 = *(a2 + 16);

      *(v16 + 1) = v17;
      v11 = v28;

      _os_log_impl(&dword_220940000, v13, v14, "Invalid number of non-default output classes for classification sampling (%ld), there should only be one non-default output class", v16, 0xCu);
      v18 = v16;
      v6 = v29;
      MEMORY[0x223D90A10](v18, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    v30 = 0;
    v31 = 0xE000000000000000;
    _StringGuts.grow(_:)(52);
    MEMORY[0x223D8E780](0xD00000000000001CLL, 0x8000000220AFF750);
    v32 = v11;
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x223D8E780](v23);

    MEMORY[0x223D8E780](0xD000000000000016, 0x8000000220AFF770);
    goto LABEL_16;
  }

  if (a1 < 0 || (*(a2 + 32) & 0x8000000000000000) != 0)
  {

    if (one-time initialization token for device != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, static Log.device);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_220940000, v20, v21, "Invalid token ID for classification sampling output classes, token ID should be a positive integer", v22, 2u);
      MEMORY[0x223D90A10](v22, -1, -1);
    }

LABEL_16:
    TokenGenerationError.Context.init(debugDescription:underlyingError:)();
    v24 = type metadata accessor for TokenGenerationError();
    lazy protocol witness table accessor for type TokenGenerationError and conformance TokenGenerationError();
    swift_allocError();
    v26 = v25;
    (*(v7 + 16))(v25, v10, v6);
    (*(*(v24 - 8) + 104))(v26, *MEMORY[0x277D71AE0], v24);
    swift_willThrow();
    (*(v7 + 8))(v10, v6);
    swift_deallocPartialClassInstance();
    return v3;
  }

  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  return v3;
}