uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *a1, char *a2, id *a3, void **a4, uint64_t a5)
{
  v6 = a4;
  v7 = a3;
  v8 = a2;
  v9 = a1;
  v10 = (a2 - a1) / 8;
  v11 = a5 + 56;
  v12 = (a3 - a2) / 8;
  if (v10 >= v12)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a2, (a3 - a2) / 8, a4);
    v13 = &v6[v12];
    v78 = v9;
    v80 = v6;
LABEL_33:
    v43 = v8 - 1;
    v84 = v7;
    v82 = v8;
    v72 = v8 - 1;
    while (v13 > v6 && v8 > v9)
    {
      v76 = v13;
      v45 = v13 - 1;
      v46 = *v43;
      v73 = *(v13 - 1);
      v74 = v46;
      v47 = [v73 actionIdentifier];
      v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v50 = v49;

      if (*(a5 + 16))
      {
        Hasher.init(_seed:)();
        String.hash(into:)();
        v51 = Hasher._finalize()();
        v52 = ~(-1 << *(a5 + 32));
        do
        {
          v53 = v51 & v52;
          v54 = (1 << (v51 & v52)) & *(v11 + (((v51 & v52) >> 3) & 0xFFFFFFFFFFFFFF8));
          v55 = v54 != 0;
          if (!v54)
          {
            break;
          }

          v56 = (*(a5 + 48) + 16 * v53);
          if (*v56 == v48 && v56[1] == v50)
          {
            break;
          }

          v58 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v51 = v53 + 1;
        }

        while ((v58 & 1) == 0);
      }

      else
      {
        v55 = 0;
      }

      v7 = v84 - 1;
      v59 = [v74 actionIdentifier];
      v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v62 = v61;

      if (*(a5 + 16))
      {
        Hasher.init(_seed:)();
        String.hash(into:)();
        v63 = Hasher._finalize()();
        v64 = ~(-1 << *(a5 + 32));
        while (1)
        {
          v65 = v63 & v64;
          if (((*(v11 + (((v63 & v64) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v63 & v64)) & 1) == 0)
          {
            break;
          }

          v66 = (*(a5 + 48) + 16 * v65);
          if (*v66 != v60 || v66[1] != v62)
          {
            v68 = _stringCompareWithSmolCheck(_:_:expecting:)();
            v63 = v65 + 1;
            if ((v68 & 1) == 0)
            {
              continue;
            }
          }

          if (v55)
          {
            goto LABEL_60;
          }

          v6 = v80;
          v8 = v72;
          v13 = v76;
          v9 = v78;
          if (v84 != v82)
          {
            *v7 = *v72;
            v8 = v72;
          }

          goto LABEL_33;
        }
      }

LABEL_60:
      v6 = v80;
      v8 = v82;
      v9 = v78;
      v43 = v72;
      v28 = v84-- == v76;
      v13 = v45;
      if (!v28)
      {
        *v7 = *v45;
        v84 = v7;
        v13 = v45;
      }
    }
  }

  else
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, (a2 - a1) / 8, a4);
    v13 = &v6[v10];
    v75 = v13;
    v83 = v7;
    while (v6 < v13 && v8 < v7)
    {
      v79 = v6;
      v81 = v8;
      v15 = *v6;
      v16 = *v8;
      v17 = v15;
      v18 = [v16 actionIdentifier];
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;

      v77 = v9;
      if (*(a5 + 16))
      {
        Hasher.init(_seed:)();
        String.hash(into:)();
        v22 = Hasher._finalize()();
        v23 = ~(-1 << *(a5 + 32));
        do
        {
          v24 = v22 & v23;
          v25 = (1 << (v22 & v23)) & *(v11 + (((v22 & v23) >> 3) & 0xFFFFFFFFFFFFFF8));
          v26 = v25 != 0;
          if (!v25)
          {
            break;
          }

          v27 = (*(a5 + 48) + 16 * v24);
          v28 = *v27 == v19 && v27[1] == v21;
          if (v28)
          {
            break;
          }

          v29 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v22 = v24 + 1;
        }

        while ((v29 & 1) == 0);
      }

      else
      {
        v26 = 0;
      }

      v30 = [v17 actionIdentifier];
      v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = v32;

      if (*(a5 + 16))
      {
        Hasher.init(_seed:)();
        String.hash(into:)();
        v34 = Hasher._finalize()();
        v35 = ~(-1 << *(a5 + 32));
        while (1)
        {
          v36 = v34 & v35;
          if (((*(v11 + (((v34 & v35) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v34 & v35)) & 1) == 0)
          {
            break;
          }

          v37 = (*(a5 + 48) + 16 * v36);
          if (*v37 != v31 || v37[1] != v33)
          {
            v39 = _stringCompareWithSmolCheck(_:_:expecting:)();
            v34 = v36 + 1;
            if ((v39 & 1) == 0)
            {
              continue;
            }
          }

          if (v26)
          {
            goto LABEL_28;
          }

          v6 = v79;
          v40 = v81;
          v8 = v81 + 1;
          v41 = v77;
          v42 = v77 == v81;
          goto LABEL_29;
        }
      }

LABEL_28:
      v41 = v77;
      v40 = v79;
      v6 = v79 + 1;
      v42 = v77 == v79;
      v8 = v81;
LABEL_29:
      v7 = v83;
      if (!v42)
      {
        *v41 = *v40;
      }

      v9 = v41 + 8;
      v13 = v75;
    }

    v8 = v9;
  }

  v69 = v13 - v6;
  if (v8 != v6 || v8 >= &v6[v69])
  {
    memmove(v8, v6, 8 * v69);
  }

  return 1;
}

char *specialized UnsafeMutablePointer.moveInitialize(from:count:)(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

void *specialized Array._copyToContiguousArray()(unint64_t a1)
{
  if (a1 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
    if (v4)
    {
      v5 = v4;
      v2 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo14LNAutoShortcutC_Tt1g5(v4, 0);
      specialized Array._copyContents(initializing:)(v2 + 32, v5, a1);
      v7 = v6;

      if (v7 == v5)
      {
        return v2;
      }

      __break(1u);
    }

    return _swiftEmptyArrayStorage;
  }

  return (a1 & 0xFFFFFFFFFFFFFF8);
}

uint64_t specialized Array._copyContents(initializing:)(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v7 = result;
    if (!result)
    {
      return OUTLINED_FUNCTION_13_0();
    }
  }

  else
  {
    v7 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v7)
    {
      return OUTLINED_FUNCTION_13_0();
    }
  }

  if (v5)
  {
    result = specialized Array.count.getter();
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        type metadata accessor for NSTextCheckingResult(0, &lazy cache variable for type metadata for LNAutoShortcut, LNAutoShortcut_ptr);
        swift_arrayInitWithCopy();
        return OUTLINED_FUNCTION_13_0();
      }

      if (v7 >= 1)
      {
        lazy protocol witness table accessor for type [LNAutoShortcut] and conformance [A]();
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo14LNAutoShortcutCGMd, &_sSaySo14LNAutoShortcutCGMR);
          v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v12, i, a3);
          v11 = *v10;
          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return OUTLINED_FUNCTION_13_0();
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void (*specialized protocol witness for Collection.subscript.read in conformance [A](void *a1, unint64_t a2, uint64_t a3))(id *a1)
{
  IsNativeType = specialized Array._hoistableIsNativeTypeChecked()(a3);
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(a2, IsNativeType, a3);
  if (IsNativeType)
  {
    v7 = *(a3 + 8 * a2 + 32);
  }

  else
  {
    v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  *a1 = v7;
  return protocol witness for Collection.subscript.read in conformance [A]specialized ;
}

void specialized Dictionary<>.hash(into:)(const void *a1, uint64_t a2)
{
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  for (i = 0; v7; v9 ^= Hasher._finalize()())
  {
    v11 = i;
LABEL_9:
    v12 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v13 = *(*(a2 + 56) + 8 * (v12 | (v11 << 6)));
    memcpy(__dst, a1, sizeof(__dst));

    String.hash(into:)();

    specialized Dictionary<>.hash(into:)(__dst, v13);
    swift_bridgeObjectRelease_n();
  }

  while (1)
  {
    v11 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v11 >= v8)
    {

      Hasher._combine(_:)(v9);
      return;
    }

    v7 = *(v4 + 8 * v11);
    ++i;
    if (v7)
    {
      i = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
}

{
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  for (i = 0; v7; v9 ^= Hasher._finalize()())
  {
    v11 = i;
LABEL_9:
    v12 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v13 = *(*(a2 + 56) + ((v11 << 9) | (8 * v12)));
    memcpy(__dst, a1, sizeof(__dst));
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    swift_unknownObjectRetain();
    String.hash(into:)();

    Hasher._combine(_:)([v13 hash]);
    swift_unknownObjectRelease();
  }

  while (1)
  {
    v11 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v11 >= v8)
    {

      Hasher._combine(_:)(v9);
      return;
    }

    v7 = *(v4 + 8 * v11);
    ++i;
    if (v7)
    {
      i = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t specialized static AutoShortcutsSuggestionsOwnerDefinitionFactory.createAutoShortcutSuggestions(linkClient:builder:clock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[18] = a3;
  v4[19] = a4;
  v4[17] = a2;
  v6 = type metadata accessor for DialogDetails();
  v4[20] = v6;
  v4[21] = *(v6 - 8);
  v4[22] = swift_task_alloc();
  v4[5] = type metadata accessor for DefaultLinkClient();
  v4[6] = &protocol witness table for DefaultLinkClient;
  v4[2] = a1;

  return _swift_task_switch(specialized static AutoShortcutsSuggestionsOwnerDefinitionFactory.createAutoShortcutSuggestions(linkClient:builder:clock:), 0, 0);
}

uint64_t specialized static AutoShortcutsSuggestionsOwnerDefinitionFactory.createAutoShortcutSuggestions(linkClient:builder:clock:)()
{
  OUTLINED_FUNCTION_15_0();
  v2 = v1;
  v4 = v3;
  v0[18] = v5;
  v0[19] = v6;
  v0[17] = v7;
  v8 = type metadata accessor for DialogDetails();
  v0[20] = v8;
  v0[21] = *(v8 - 8);
  v0[22] = swift_task_alloc();
  v0[5] = v4;
  v0[6] = v2;
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  OUTLINED_FUNCTION_15();
  (*(v9 + 16))();
  v10 = OUTLINED_FUNCTION_4_2();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_3BA84()
{

  return _swift_deallocObject(v0, 48, 7);
}

unint64_t lazy protocol witness table accessor for type AutoShortcutsSuggestionsOwnerDefinitionFactory.ResolvedPhrase.CodingKeys and conformance AutoShortcutsSuggestionsOwnerDefinitionFactory.ResolvedPhrase.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AutoShortcutsSuggestionsOwnerDefinitionFactory.ResolvedPhrase.CodingKeys and conformance AutoShortcutsSuggestionsOwnerDefinitionFactory.ResolvedPhrase.CodingKeys;
  if (!lazy protocol witness table cache variable for type AutoShortcutsSuggestionsOwnerDefinitionFactory.ResolvedPhrase.CodingKeys and conformance AutoShortcutsSuggestionsOwnerDefinitionFactory.ResolvedPhrase.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutoShortcutsSuggestionsOwnerDefinitionFactory.ResolvedPhrase.CodingKeys and conformance AutoShortcutsSuggestionsOwnerDefinitionFactory.ResolvedPhrase.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutoShortcutsSuggestionsOwnerDefinitionFactory.ResolvedPhrase.CodingKeys and conformance AutoShortcutsSuggestionsOwnerDefinitionFactory.ResolvedPhrase.CodingKeys;
  if (!lazy protocol witness table cache variable for type AutoShortcutsSuggestionsOwnerDefinitionFactory.ResolvedPhrase.CodingKeys and conformance AutoShortcutsSuggestionsOwnerDefinitionFactory.ResolvedPhrase.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutoShortcutsSuggestionsOwnerDefinitionFactory.ResolvedPhrase.CodingKeys and conformance AutoShortcutsSuggestionsOwnerDefinitionFactory.ResolvedPhrase.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutoShortcutsSuggestionsOwnerDefinitionFactory.ResolvedPhrase.CodingKeys and conformance AutoShortcutsSuggestionsOwnerDefinitionFactory.ResolvedPhrase.CodingKeys;
  if (!lazy protocol witness table cache variable for type AutoShortcutsSuggestionsOwnerDefinitionFactory.ResolvedPhrase.CodingKeys and conformance AutoShortcutsSuggestionsOwnerDefinitionFactory.ResolvedPhrase.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutoShortcutsSuggestionsOwnerDefinitionFactory.ResolvedPhrase.CodingKeys and conformance AutoShortcutsSuggestionsOwnerDefinitionFactory.ResolvedPhrase.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutoShortcutsSuggestionsOwnerDefinitionFactory.ResolvedPhrase.CodingKeys and conformance AutoShortcutsSuggestionsOwnerDefinitionFactory.ResolvedPhrase.CodingKeys;
  if (!lazy protocol witness table cache variable for type AutoShortcutsSuggestionsOwnerDefinitionFactory.ResolvedPhrase.CodingKeys and conformance AutoShortcutsSuggestionsOwnerDefinitionFactory.ResolvedPhrase.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutoShortcutsSuggestionsOwnerDefinitionFactory.ResolvedPhrase.CodingKeys and conformance AutoShortcutsSuggestionsOwnerDefinitionFactory.ResolvedPhrase.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoshortcutErrors and conformance AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoshortcutErrors()
{
  result = lazy protocol witness table cache variable for type AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoshortcutErrors and conformance AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoshortcutErrors;
  if (!lazy protocol witness table cache variable for type AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoshortcutErrors and conformance AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoshortcutErrors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoshortcutErrors and conformance AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoshortcutErrors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoshortcutErrors and conformance AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoshortcutErrors;
  if (!lazy protocol witness table cache variable for type AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoshortcutErrors and conformance AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoshortcutErrors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoshortcutErrors and conformance AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoshortcutErrors);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AutoShortcutsSuggestionsOwnerDefinitionFactory.CandidateApplicationDetails.ActionMetadataExcerpt and conformance AutoShortcutsSuggestionsOwnerDefinitionFactory.CandidateApplicationDetails.ActionMetadataExcerpt()
{
  result = lazy protocol witness table cache variable for type AutoShortcutsSuggestionsOwnerDefinitionFactory.CandidateApplicationDetails.ActionMetadataExcerpt and conformance AutoShortcutsSuggestionsOwnerDefinitionFactory.CandidateApplicationDetails.ActionMetadataExcerpt;
  if (!lazy protocol witness table cache variable for type AutoShortcutsSuggestionsOwnerDefinitionFactory.CandidateApplicationDetails.ActionMetadataExcerpt and conformance AutoShortcutsSuggestionsOwnerDefinitionFactory.CandidateApplicationDetails.ActionMetadataExcerpt)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutoShortcutsSuggestionsOwnerDefinitionFactory.CandidateApplicationDetails.ActionMetadataExcerpt and conformance AutoShortcutsSuggestionsOwnerDefinitionFactory.CandidateApplicationDetails.ActionMetadataExcerpt);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AutoShortcutsSuggestionsOwnerDefinitionFactory.CandidateApplicationDetails and conformance AutoShortcutsSuggestionsOwnerDefinitionFactory.CandidateApplicationDetails()
{
  result = lazy protocol witness table cache variable for type AutoShortcutsSuggestionsOwnerDefinitionFactory.CandidateApplicationDetails and conformance AutoShortcutsSuggestionsOwnerDefinitionFactory.CandidateApplicationDetails;
  if (!lazy protocol witness table cache variable for type AutoShortcutsSuggestionsOwnerDefinitionFactory.CandidateApplicationDetails and conformance AutoShortcutsSuggestionsOwnerDefinitionFactory.CandidateApplicationDetails)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutoShortcutsSuggestionsOwnerDefinitionFactory.CandidateApplicationDetails and conformance AutoShortcutsSuggestionsOwnerDefinitionFactory.CandidateApplicationDetails);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AutoShortcutsSuggestionsOwnerDefinitionFactory.SystemProtocolMetadata and conformance AutoShortcutsSuggestionsOwnerDefinitionFactory.SystemProtocolMetadata()
{
  result = lazy protocol witness table cache variable for type AutoShortcutsSuggestionsOwnerDefinitionFactory.SystemProtocolMetadata and conformance AutoShortcutsSuggestionsOwnerDefinitionFactory.SystemProtocolMetadata;
  if (!lazy protocol witness table cache variable for type AutoShortcutsSuggestionsOwnerDefinitionFactory.SystemProtocolMetadata and conformance AutoShortcutsSuggestionsOwnerDefinitionFactory.SystemProtocolMetadata)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AutoShortcutsSuggestionsOwnerDefinitionFactory.SystemProtocolMetadata and conformance AutoShortcutsSuggestionsOwnerDefinitionFactory.SystemProtocolMetadata);
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for AutoShortcutsSuggestionsOwnerDefinitionFactory.CandidateApplicationDetails(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t storeEnumTagSinglePayload for AutoShortcutsSuggestionsOwnerDefinitionFactory.CandidateApplicationDetails(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for AutoShortcutsSuggestionsOwnerDefinitionFactory.ResolvedPhrase(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t storeEnumTagSinglePayload for AutoShortcutsSuggestionsOwnerDefinitionFactory.ResolvedPhrase(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

_BYTE *storeEnumTagSinglePayload for AutoShortcutsSuggestionsOwnerDefinitionFactory.ResolvedPhrase.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
        JUMPOUT(0x3C25CLL);
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AutoShortcutsSuggestionsOwnerDefinitionFactory.AutoshortcutErrors(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x3C340);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_3C3A0()
{

  OUTLINED_FUNCTION_21_1();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed DialogProperties) -> (@out Any)()
{
  OUTLINED_FUNCTION_40_1();
  OUTLINED_FUNCTION_39_1();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_13_5(v1);

  return v3(v2);
}

uint64_t sub_3C484()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_3C4D0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11TransformerVyypypSgGMd, &_s13SiriUtilities11TransformerVyypypSgGMR);
  OUTLINED_FUNCTION_15();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t _s18SiriSuggestionsKit12DefaultOwnerCAcA0E0AAWlTm_0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed (@in_guaranteed DialogProperties) -> (@out Any)partial apply()
{
  OUTLINED_FUNCTION_40_1();
  OUTLINED_FUNCTION_39_1();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_13_5(v1);

  return v3(v2);
}

uint64_t OUTLINED_FUNCTION_2_6(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_9_5(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_19_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return dispatch thunk of SuggestionOwnerDefinitionBuilder.add(suggestionId:dialogDetails:builder:)(0xD000000000000016, a9 | 0x8000000000000000, v10, v9, v11);
}

uint64_t OUTLINED_FUNCTION_31_1()
{
}

uint64_t OUTLINED_FUNCTION_33_0(uint64_t a1)
{
  *(v2 + 88) = a1;
  *(v2 + 56) = v1;

  return dispatch thunk of SuggestionOwnerDefinitionBuilder.withConfiguratorProvider(_:)(v2 + 56);
}

unint64_t OUTLINED_FUNCTION_34_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v14, va);
}

void *OUTLINED_FUNCTION_35_1(uint64_t a1, ...)
{

  return Hasher.init(_seed:)();
}

void OUTLINED_FUNCTION_46_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t OUTLINED_FUNCTION_47_1(uint64_t a1, uint64_t a2)
{

  return KeyedEncodingContainer.encode(_:forKey:)();
}

uint64_t LinkRegistryObserver.__allocating_init(refreshableService:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_0_17();
  v4 = swift_allocObject();
  LinkRegistryObserver.init(refreshableService:)(a1, a2);
  return v4;
}

uint64_t LinkRegistryObserver.init(refreshableService:)(uint64_t a1, uint64_t a2)
{
  v5 = [objc_opt_self() defaultCenter];
  *(v2 + 16) = v5;
  v6 = LNMetadataChangedNotification;
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v12[4] = partial apply for closure #1 in LinkRegistryObserver.init(refreshableService:);
  v12[5] = v7;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed Notification) -> ();
  v12[3] = &block_descriptor_0;
  v8 = _Block_copy(v12);
  swift_unknownObjectRetain();
  v9 = v5;

  v10 = [v9 addObserverForName:v6 object:0 queue:0 usingBlock:v8];
  swift_unknownObjectRelease();
  _Block_release(v8);

  *(v2 + 24) = v10;
  return v2;
}

void closure #1 in LinkRegistryObserver.init(refreshableService:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  __chkstk_darwin(v5 - 8);
  v7 = &v17 - v6;
  if (one-time initialization token for linkSuggestions != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.linkSuggestions);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_0, v9, v10, "Received LNMetadataChanged notification - refreshing plugin", v11, 2u);
  }

  if (a2)
  {
    v12 = type metadata accessor for TaskPriority();
    __swift_storeEnumTagSinglePayload(v7, 1, 1, v12);
    v13 = swift_allocObject();
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = a2;
    v13[5] = a3;
    swift_unknownObjectRetain();
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v7, &async function pointer to partial apply for closure #1 in closure #1 in LinkRegistryObserver.init(refreshableService:), v13);
  }

  else
  {
    v18 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_0, v18, v14, "Unable to refresh link suggestions. No refreshable service is found", v15, 2u);
    }

    v16 = v18;
  }
}

uint64_t sub_3CD18()
{
  swift_unknownObjectRelease();
  v0 = OUTLINED_FUNCTION_0_17();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t closure #1 in closure #1 in LinkRegistryObserver.init(refreshableService:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  v8 = swift_task_alloc();
  *(v5 + 16) = v8;
  *v8 = v5;
  v8[1] = protocol witness for CandidateSuggestionConfigurator.updateContext(context:signal:) in conformance LinkSuggestionConfigurator;

  return dispatch thunk of SuggestionsServiceRefreshable.refreshAsync()(ObjectType, a5);
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  __chkstk_darwin(v9 - 8);
  v11 = v24 - v10;
  outlined init with copy of TaskPriority?(a3, v24 - v10);
  v12 = type metadata accessor for TaskPriority();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of TaskPriority?(v11);
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

      outlined destroy of TaskPriority?(a3);

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

  outlined destroy of TaskPriority?(a3);
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

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed Notification) -> ()(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Notification();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t LinkRegistryObserver.deinit()
{
  [*(v0 + 16) removeObserver:*(v0 + 24)];

  swift_unknownObjectRelease();
  return v0;
}

uint64_t LinkRegistryObserver.__deallocating_deinit()
{
  LinkRegistryObserver.deinit();
  v0 = OUTLINED_FUNCTION_0_17();

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_3D23C()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t partial apply for closure #1 in closure #1 in LinkRegistryObserver.init(refreshableService:)(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_3_8(v7);
  *v8 = v9;
  v8[1] = protocol witness for CandidateSuggestionConfigurator.updateContext(context:signal:) in conformance LinkSuggestionConfigurator;

  return closure #1 in closure #1 in LinkRegistryObserver.init(refreshableService:)(a1, v3, v4, v6, v5);
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
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_13();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v1;

  OUTLINED_FUNCTION_10();

  return v3();
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3_8(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_2_7(v1);

  return v4(v3);
}

uint64_t sub_3D5A8()
{

  v0 = OUTLINED_FUNCTION_0_17();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA_13()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3_8(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_2_7(v1);

  return v4(v3);
}

Swift::String __swiftcall DialogIdProvider.getId()()
{
  v0 = DialogIdProvider.getId()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}