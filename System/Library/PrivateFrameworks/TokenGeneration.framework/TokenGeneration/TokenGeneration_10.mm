uint64_t outlined assign with take of PromptCompletion.Content(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of PromptCompletion.FileContent(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v45 = a1;
  v46 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v47 = v8;
  v48 = 0;
  v49 = v11 & v9;
  v50 = a2;
  v51 = a3;

  specialized LazyMapSequence.Iterator.next()(&v43);
  v12 = *(&v43 + 1);
  if (!*(&v43 + 1))
  {
    goto LABEL_25;
  }

  v13 = v43;
  outlined init with take of Any(v44, v42);
  v14 = *a5;
  result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v12);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v16;
  if (v14[3] < v20)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v20, a4 & 1);
    result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v12);
    if ((v21 & 1) == (v22 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v26 = result;
    specialized _NativeDictionary.copy()();
    result = v26;
    v23 = *a5;
    if (v21)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v23 = *a5;
  if (v21)
  {
LABEL_11:
    v24 = result;

    v25 = (v23[7] + 32 * v24);
    __swift_destroy_boxed_opaque_existential_0(v25);
    outlined init with take of Any(v42, v25);
    goto LABEL_15;
  }

LABEL_13:
  v23[(result >> 6) + 8] |= 1 << result;
  v27 = (v23[6] + 16 * result);
  *v27 = v13;
  v27[1] = v12;
  result = outlined init with take of Any(v42, (v23[7] + 32 * result));
  v28 = v23[2];
  v19 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (!v19)
  {
    v23[2] = v29;
LABEL_15:
    specialized LazyMapSequence.Iterator.next()(&v43);
    v12 = *(&v43 + 1);
    if (*(&v43 + 1))
    {
      v21 = 1;
      do
      {
        v13 = v43;
        outlined init with take of Any(v44, v42);
        v32 = *a5;
        result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v12);
        v34 = v32[2];
        v35 = (v33 & 1) == 0;
        v19 = __OFADD__(v34, v35);
        v36 = v34 + v35;
        if (v19)
        {
          goto LABEL_26;
        }

        a4 = v33;
        if (v32[3] < v36)
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v36, 1);
          result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v12);
          if ((a4 & 1) != (v37 & 1))
          {
            goto LABEL_8;
          }
        }

        v38 = *a5;
        if (a4)
        {
          v30 = result;

          v31 = (v38[7] + 32 * v30);
          __swift_destroy_boxed_opaque_existential_0(v31);
          outlined init with take of Any(v42, v31);
        }

        else
        {
          v38[(result >> 6) + 8] |= 1 << result;
          v39 = (v38[6] + 16 * result);
          *v39 = v13;
          v39[1] = v12;
          result = outlined init with take of Any(v42, (v38[7] + 32 * result));
          v40 = v38[2];
          v19 = __OFADD__(v40, 1);
          v41 = v40 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v38[2] = v41;
        }

        specialized LazyMapSequence.Iterator.next()(&v43);
        v12 = *(&v43 + 1);
      }

      while (*(&v43 + 1));
    }

LABEL_25:
    outlined consume of [String : String].Iterator._Variant(v45);
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t outlined consume of FinishReason?(uint64_t a1, unint64_t a2)
{
  if (a2 != 3)
  {
    return outlined consume of FinishReason(a1, a2);
  }

  return a1;
}

unint64_t lazy protocol witness table accessor for type PromptCompletion.Candidate and conformance PromptCompletion.Candidate()
{
  result = lazy protocol witness table cache variable for type PromptCompletion.Candidate and conformance PromptCompletion.Candidate;
  if (!lazy protocol witness table cache variable for type PromptCompletion.Candidate and conformance PromptCompletion.Candidate)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletion.Candidate and conformance PromptCompletion.Candidate);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PromptCompletion.TextContent and conformance PromptCompletion.TextContent()
{
  result = lazy protocol witness table cache variable for type PromptCompletion.TextContent and conformance PromptCompletion.TextContent;
  if (!lazy protocol witness table cache variable for type PromptCompletion.TextContent and conformance PromptCompletion.TextContent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletion.TextContent and conformance PromptCompletion.TextContent);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PromptCompletion.ImageContent and conformance PromptCompletion.ImageContent()
{
  result = lazy protocol witness table cache variable for type PromptCompletion.ImageContent and conformance PromptCompletion.ImageContent;
  if (!lazy protocol witness table cache variable for type PromptCompletion.ImageContent and conformance PromptCompletion.ImageContent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletion.ImageContent and conformance PromptCompletion.ImageContent);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PromptCompletion.AudioContent and conformance PromptCompletion.AudioContent()
{
  result = lazy protocol witness table cache variable for type PromptCompletion.AudioContent and conformance PromptCompletion.AudioContent;
  if (!lazy protocol witness table cache variable for type PromptCompletion.AudioContent and conformance PromptCompletion.AudioContent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletion.AudioContent and conformance PromptCompletion.AudioContent);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PromptCompletion.Moderation.Category and conformance PromptCompletion.Moderation.Category()
{
  result = lazy protocol witness table cache variable for type PromptCompletion.Moderation.Category and conformance PromptCompletion.Moderation.Category;
  if (!lazy protocol witness table cache variable for type PromptCompletion.Moderation.Category and conformance PromptCompletion.Moderation.Category)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletion.Moderation.Category and conformance PromptCompletion.Moderation.Category);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PromptCompletion.Moderation.Probability and conformance PromptCompletion.Moderation.Probability()
{
  result = lazy protocol witness table cache variable for type PromptCompletion.Moderation.Probability and conformance PromptCompletion.Moderation.Probability;
  if (!lazy protocol witness table cache variable for type PromptCompletion.Moderation.Probability and conformance PromptCompletion.Moderation.Probability)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletion.Moderation.Probability and conformance PromptCompletion.Moderation.Probability);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PromptCompletion.Moderation and conformance PromptCompletion.Moderation()
{
  result = lazy protocol witness table cache variable for type PromptCompletion.Moderation and conformance PromptCompletion.Moderation;
  if (!lazy protocol witness table cache variable for type PromptCompletion.Moderation and conformance PromptCompletion.Moderation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletion.Moderation and conformance PromptCompletion.Moderation);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModelInformation.Asset and conformance ModelInformation.Asset()
{
  result = lazy protocol witness table cache variable for type ModelInformation.Asset and conformance ModelInformation.Asset;
  if (!lazy protocol witness table cache variable for type ModelInformation.Asset and conformance ModelInformation.Asset)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModelInformation.Asset and conformance ModelInformation.Asset);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModelInformation and conformance ModelInformation()
{
  result = lazy protocol witness table cache variable for type ModelInformation and conformance ModelInformation;
  if (!lazy protocol witness table cache variable for type ModelInformation and conformance ModelInformation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModelInformation and conformance ModelInformation);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Usage and conformance Usage()
{
  result = lazy protocol witness table cache variable for type Usage and conformance Usage;
  if (!lazy protocol witness table cache variable for type Usage and conformance Usage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Usage and conformance Usage);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FinishReason and conformance FinishReason()
{
  result = lazy protocol witness table cache variable for type FinishReason and conformance FinishReason;
  if (!lazy protocol witness table cache variable for type FinishReason and conformance FinishReason)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FinishReason and conformance FinishReason);
  }

  return result;
}

void type metadata completion function for PromptCompletion(uint64_t a1)
{
  type metadata accessor for PromptCompletion.Moderation?(319, &lazy cache variable for type metadata for PromptCompletion.Moderation?, &type metadata for PromptCompletion.Moderation, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for PromptCompletion.Moderation?(319, &lazy cache variable for type metadata for [PromptCompletion.Candidate], &type metadata for PromptCompletion.Candidate, MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Prompt.Rendering?(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for PromptCompletion.Moderation?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t getEnumTagSinglePayload for PromptCompletion.Candidate(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t storeEnumTagSinglePayload for PromptCompletion.Candidate(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata completion function for PromptCompletion.Content(uint64_t a1)
{
  result = type metadata accessor for PromptCompletion.FileContent(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PromptCompletion.TextContent(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t storeEnumTagSinglePayload for PromptCompletion.TextContent(uint64_t result, int a2, int a3)
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

uint64_t type metadata completion function for PromptCompletion.Annotation.Type(uint64_t a1)
{
  result = type metadata accessor for PromptCompletion.URLCitation(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for PromptCompletion.DocumentCitation(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t type metadata completion function for PromptCompletion.Annotation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  result = a5(319, a2, a3);
  if (v6 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for PromptCompletion.Segment(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PromptCompletion.ImageContent(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 16))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for PromptCompletion.ImageContent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t type metadata completion function for PromptCompletion.FileContent(uint64_t a1)
{
  result = type metadata accessor for URL();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PromptCompletion.Moderation(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for PromptCompletion.Moderation(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void type metadata completion function for PromptCompletion.Aggregator(uint64_t a1)
{
  type metadata accessor for PromptCompletion.Moderation?(319, &lazy cache variable for type metadata for PromptCompletion.Moderation?, &type metadata for PromptCompletion.Moderation, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for [String : PromptCompletion.Aggregator.CandidateAggregator](319, &lazy cache variable for type metadata for [String : PromptCompletion.Aggregator.CandidateAggregator], &unk_1F2065E28);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Prompt.Rendering?(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for [String : PromptCompletion.Aggregator.CandidateAggregator](319, &lazy cache variable for type metadata for [String : Any], MEMORY[0x1E69E7CA0] + 8);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for ModelInformation(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for ModelInformation(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ModelInformation.Asset(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t storeEnumTagSinglePayload for ModelInformation.Asset(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t storeEnumTagSinglePayload for FinishReason(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_15TokenGeneration12FinishReasonOSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 3;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for PromptCompletion.Aggregator.CandidateAggregator(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t storeEnumTagSinglePayload for PromptCompletion.Aggregator.CandidateAggregator(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t outlined copy of FinishReason?(uint64_t a1, unint64_t a2)
{
  if (a2 != 3)
  {
    return outlined copy of FinishReason(a1, a2);
  }

  return a1;
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t InferenceResponse.init(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v81 = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for Prompt.Rendering();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v64 = &v58 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV9RenderingVSgMd, &_s15TokenGeneration6PromptV9RenderingVSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v58 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PromptKit17InferenceResponseV0A9RenderingVSgMd, &_s9PromptKit17InferenceResponseV0A9RenderingVSgMR);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v68 = &v58 - v14;
  v15 = type metadata accessor for InferenceResponse.Candidate();
  v16 = *(v15 - 8);
  v71 = v15;
  v72 = v16;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for InferenceResponse.Usage();
  MEMORY[0x1EEE9AC00](v19 - 8);
  v69 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PromptKit17InferenceResponseV10ModerationVSgMd, &_s9PromptKit17InferenceResponseV10ModerationVSgMR);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v58 - v22;
  v24 = type metadata accessor for InferenceResponse.ModelInformation();
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = &v58 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = a1[1];
  v28 = a1[2];
  v74 = *a1;
  v75 = v27;
  v76 = v28;

  v65 = v26;
  InferenceResponse.ModelInformation.init(_:)(&v74, v26);
  v29 = a1[3];
  v67 = v5;
  if (v29)
  {
    v30 = v12;
    v31 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDy15TokenGeneration16PromptCompletionV10ModerationV8CategoryVAJ11ProbabilityOG_0F3Kit17InferenceResponseVAIVAKV_AsMOts5NeverOTg504_s15d12Generation16fg3V10h2V8i5VAE11j9O0C3Kit17lm42VADVAFVAmHOIgnnrr_AG3key_AI5valuetAN_AOts5N96OIegnrzr_TR03_s9c5Kit17ij3V10e3V15ab9EyAeF0A10d10VADVcfcAE8f6V_AE11g7OtAiJV_Z8LOtXEfU_Tf3nnnpf_nTf1cn_n(v29);
    if (*(v31 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy9PromptKit17InferenceResponseV10ModerationV8CategoryVAG11ProbabilityOGMd, &_ss18_DictionaryStorageCy9PromptKit17InferenceResponseV10ModerationV8CategoryVAG11ProbabilityOGMR);
      v32 = static _DictionaryStorage.allocate(capacity:)();
    }

    else
    {
      v32 = MEMORY[0x1E69E7CC8];
    }

    v74 = v32;
    specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v31, 1, &v74);
    InferenceResponse.Moderation.init(ratings:)();
    v33 = 0;
    v12 = v30;
    v5 = v67;
  }

  else
  {
    v33 = 1;
  }

  v34 = type metadata accessor for InferenceResponse.Moderation();
  v35 = *(*(v34 - 8) + 56);
  v66 = v23;
  v35(v23, v33, 1, v34);
  v36 = a1[4];
  v37 = *(v36 + 16);
  if (v37)
  {
    v59 = v12;
    v60 = v7;
    v61 = v4;
    v62 = a2;
    v63 = a1;
    v73 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v37, 0);
    v38 = v73;
    v70 = v72 + 32;
    v39 = (v36 + 80);
    do
    {
      v40 = *(v39 - 5);
      v41 = *(v39 - 4);
      v42 = *(v39 - 3);
      v44 = *(v39 - 2);
      v43 = *(v39 - 1);
      v45 = *v39;
      v74 = *(v39 - 6);
      v75 = v40;
      v76 = v41;
      v77 = v42;
      v78 = v44;
      v79 = v43;
      v80 = v45;

      outlined copy of FinishReason(v42, v44);
      outlined copy of Data._Representation(v43, v45);
      InferenceResponse.Candidate.init(_:)(&v74, v18);
      v73 = v38;
      v47 = v38[2];
      v46 = v38[3];
      if (v47 >= v46 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v46 > 1), v47 + 1, 1);
        v38 = v73;
      }

      v39 += 7;
      v38[2] = v47 + 1;
      (*(v72 + 32))(v38 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v47, v18, v71);
      --v37;
    }

    while (v37);
    a1 = v63;
    v4 = v61;
    v5 = v67;
    v7 = v60;
    v12 = v59;
  }

  MEMORY[0x1AC5A55E0](a1[5], a1[6]);
  v48 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v73 = 0;
  v50 = [v48 JSONObjectWithData:isa options:0 error:&v73];

  v51 = v73;
  if (v50)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
    swift_dynamicCast();
    v52 = type metadata accessor for PromptCompletion(0);
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1 + *(v52 + 36), v12, &_s15TokenGeneration6PromptV9RenderingVSgMd, &_s15TokenGeneration6PromptV9RenderingVSgMR);
    v53 = 1;
    if ((*(v5 + 48))(v12, 1, v4) != 1)
    {
      v54 = v64;
      (*(v5 + 32))(v64, v12, v4);
      (*(v5 + 16))(v7, v54, v4);
      InferenceResponse.PromptRendering.init(_:)(v7, v68);
      (*(v5 + 8))(v54, v4);
      v53 = 0;
    }

    v55 = type metadata accessor for InferenceResponse.PromptRendering();
    (*(*(v55 - 8) + 56))(v68, v53, 1, v55);
    InferenceResponse.init(modelInformation:promptModeration:candidates:usage:metadata:renderedPrompt:)();
    return outlined destroy of PromptCompletion.DocumentCitation(a1, type metadata accessor for PromptCompletion);
  }

  else
  {
    v57 = v51;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDy15TokenGeneration16PromptCompletionV10ModerationV8CategoryVAJ11ProbabilityOG_0F3Kit17InferenceResponseVAIVAKV_AsMOts5NeverOTg504_s15d12Generation16fg3V10h2V8i5VAE11j9O0C3Kit17lm42VADVAFVAmHOIgnnrr_AG3key_AI5valuetAN_AOts5N96OIegnrzr_TR03_s9c5Kit17ij3V10e3V15ab9EyAeF0A10d10VADVcfcAE8f6V_AE11g7OtAiJV_Z8LOtXEfU_Tf3nnnpf_nTf1cn_n(uint64_t a1)
{
  v46 = type metadata accessor for InferenceResponse.Moderation.Category();
  v3 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PromptKit17InferenceResponseV10ModerationV8CategoryV_AE11ProbabilityOtMd, &_s9PromptKit17InferenceResponseV10ModerationV8CategoryV_AE11ProbabilityOtMR);
  v44 = *(v5 - 8);
  v45 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v34 - v6;
  v8 = *(a1 + 16);
  v9 = MEMORY[0x1E69E7CC0];
  if (!v8)
  {
    return v9;
  }

  v34 = v1;
  v50 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8, 0);
  v9 = v50;
  v10 = a1 + 64;
  result = _HashTable.startBucket.getter();
  v12 = result;
  v13 = 0;
  v49 = *(a1 + 36);
  v36 = *MEMORY[0x1E69C6468];
  v39 = *MEMORY[0x1E69C6470];
  v35 = *MEMORY[0x1E69C6460];
  v38 = *MEMORY[0x1E69C6458];
  v42 = (v3 + 32);
  v43 = a1;
  v37 = a1 + 72;
  v40 = v8;
  v41 = a1 + 64;
  while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(a1 + 32))
  {
    v15 = v12 >> 6;
    if ((*(v10 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
    {
      goto LABEL_27;
    }

    if (v49 != *(a1 + 36))
    {
      goto LABEL_28;
    }

    v47 = v9;
    v16 = v7;
    v17 = (*(a1 + 48) + 16 * v12);
    v18 = *v17;
    v19 = v17[1];
    v20 = *(*(a1 + 56) + v12);
    v21 = *(v45 + 48);
    swift_bridgeObjectRetain_n();
    MEMORY[0x1AC5A5350](v18, v19);
    v22 = type metadata accessor for InferenceResponse.Moderation.Probability();
    if (v20 > 1)
    {
      v23 = v39;
      if (v20 != 2)
      {
        v23 = v36;
      }
    }

    else
    {
      v23 = v38;
      if (v20)
      {
        v23 = v35;
      }
    }

    v24 = &v16[v21];
    v7 = v16;
    (*(*(v22 - 8) + 104))(v24, v23, v22);
    (*v42)(v16, v48, v46);

    v9 = v47;
    v50 = v47;
    v26 = *(v47 + 16);
    v25 = *(v47 + 24);
    if (v26 >= v25 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1);
      v9 = v50;
    }

    *(v9 + 16) = v26 + 1;
    result = outlined init with take of (InferenceResponse.Moderation.Category, InferenceResponse.Moderation.Probability)(v7, v9 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v26);
    a1 = v43;
    v14 = 1 << *(v43 + 32);
    if (v12 >= v14)
    {
      goto LABEL_29;
    }

    v10 = v41;
    v27 = *(v41 + 8 * v15);
    if ((v27 & (1 << v12)) == 0)
    {
      goto LABEL_30;
    }

    if (v49 != *(v43 + 36))
    {
      goto LABEL_31;
    }

    v28 = v27 & (-2 << (v12 & 0x3F));
    if (v28)
    {
      v14 = __clz(__rbit64(v28)) | v12 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v29 = v15 << 6;
      v30 = v15 + 1;
      v31 = (v37 + 8 * v15);
      while (v30 < (v14 + 63) >> 6)
      {
        v33 = *v31++;
        v32 = v33;
        v29 += 64;
        ++v30;
        if (v33)
        {
          result = outlined consume of Set<ModelCatalogStub.AssetKey>.Index._Variant(v12, v49, 0);
          v14 = __clz(__rbit64(v32)) + v29;
          goto LABEL_4;
        }
      }

      result = outlined consume of Set<ModelCatalogStub.AssetKey>.Index._Variant(v12, v49, 0);
    }

LABEL_4:
    ++v13;
    v12 = v14;
    if (v13 == v40)
    {
      return v9;
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
LABEL_31:
  __break(1u);
  return result;
}

uint64_t ModelInformation.init(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v50 = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for InferenceResponse.ModelInformation.Asset();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v38 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1AC5A5590](v6);
  v9 = *(v8 + 16);
  if (v9)
  {
    v36 = a1;
    v37 = a2;
    v49 = MEMORY[0x1E69E7CC0];
    v10 = v8;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9, 0);
    v47 = v49;
    v45 = objc_opt_self();
    v11 = v10;
    v12 = 0;
    v44 = &v10[(*(v5 + 80) + 32) & ~*(v5 + 80)];
    v42 = v5;
    v43 = v5 + 16;
    v39 = (v5 + 8);
    v40 = v9;
    v13 = v38;
    v41 = v10;
    do
    {
      if (v12 >= *(v11 + 2))
      {
        __break(1u);
LABEL_12:
        v35 = v11;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        __break(1u);
      }

      (*(v5 + 16))(v13, &v44[*(v5 + 72) * v12], v4);
      v14 = InferenceResponse.ModelInformation.Asset.identifier.getter();
      v16 = v15;
      v17 = InferenceResponse.ModelInformation.Asset.version.getter();
      v19 = v18;
      InferenceResponse.ModelInformation.Asset.metadata.getter();
      isa = Dictionary._bridgeToObjectiveC()().super.isa;
      v48 = 0;
      v21 = [v45 dataWithJSONObject:isa options:0 error:&v48];

      v11 = v48;
      if (!v21)
      {
        goto LABEL_12;
      }

      v46 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = v22;

      v24 = v4;
      (*v39)(v13, v4);
      v25 = v47;
      v49 = v47;
      v27 = *(v47 + 16);
      v26 = *(v47 + 24);
      if (v27 >= v26 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1);
        v13 = v38;
        v25 = v49;
      }

      ++v12;
      *(v25 + 16) = v27 + 1;
      v47 = v25;
      v28 = (v25 + 48 * v27);
      v28[4] = v14;
      v28[5] = v16;
      v28[6] = v17;
      v28[7] = v19;
      v28[8] = v46;
      v28[9] = v23;
      v11 = v41;
      v4 = v24;
      v5 = v42;
    }

    while (v40 != v12);

    a1 = v36;
    a2 = v37;
    v29 = v47;
  }

  else
  {

    v29 = MEMORY[0x1E69E7CC0];
  }

  v30 = InferenceResponse.ModelInformation.systemVersion.getter();
  v32 = v31;
  v33 = type metadata accessor for InferenceResponse.ModelInformation();
  result = (*(*(v33 - 8) + 8))(a1, v33);
  *a2 = v29;
  a2[1] = v30;
  a2[2] = v32;
  return result;
}

uint64_t InferenceResponse.ModelInformation.init(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = *MEMORY[0x1E69E9840];
  v31 = type metadata accessor for InferenceResponse.ModelInformation.Asset();
  v4 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v8 = a1[1];
  v9 = a1[2];
  v10 = *(v7 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v24 = v8;
    v25 = v9;
    v27 = a2;
    v35 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10, 0);
    v11 = v35;
    v12 = objc_opt_self();
    v28 = v4 + 32;
    v29 = v12;
    v26 = v7;
    v13 = (v7 + 72);
    v30 = v4;
    while (1)
    {
      v32 = v11;
      v33 = v10;
      v14 = v6;
      v15 = *(v13 - 1);
      v16 = *v13;

      swift_bridgeObjectRetain_n();
      outlined copy of Data._Representation(v15, v16);

      isa = Data._bridgeToObjectiveC()().super.isa;
      v34 = 0;
      v18 = [v29 JSONObjectWithData:isa options:0 error:&v34];

      v19 = v34;
      if (!v18)
      {
        break;
      }

      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
      swift_dynamicCast();
      v6 = v14;
      InferenceResponse.ModelInformation.Asset.init(identifier:version:metadata:)();

      outlined consume of Data._Representation(v15, v16);
      v11 = v32;
      v35 = v32;
      v21 = *(v32 + 16);
      v20 = *(v32 + 24);
      if (v21 >= v20 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1);
        v11 = v35;
      }

      v13 += 6;
      *(v11 + 16) = v21 + 1;
      (*(v30 + 32))(v11 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v21, v6, v31);
      v10 = v33 - 1;
      if (v33 == 1)
      {
        v8 = v24;
        v9 = v25;
        goto LABEL_8;
      }
    }

    v23 = v19;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
LABEL_8:

    MEMORY[0x1AC5A5580](v11, v8, v9);
  }

  return result;
}

uint64_t PromptCompletion.Moderation.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v51 = a2;
  v68 = type metadata accessor for InferenceResponse.Moderation.Probability();
  v3 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v67 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PromptKit17InferenceResponseV10ModerationV8CategoryV3key_AE11ProbabilityO5valuetMd, &_s9PromptKit17InferenceResponseV10ModerationV8CategoryV3key_AE11ProbabilityO5valuetMR);
  MEMORY[0x1EEE9AC00](v66);
  v74 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v65 = &v49 - v8;
  v50 = a1;
  v9 = MEMORY[0x1AC5A5340](v7);
  v10 = *(v9 + 16);
  if (v10)
  {
    v75 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10, 0);
    v11 = v75;
    v12 = v9 + 64;
    v13 = _HashTable.startBucket.getter();
    v14 = 0;
    v15 = *(v9 + 36);
    v61 = v3 + 32;
    v62 = v3 + 16;
    v64 = v3;
    v60 = v3 + 88;
    v59 = *MEMORY[0x1E69C6458];
    v55 = *MEMORY[0x1E69C6460];
    v53 = *MEMORY[0x1E69C6470];
    v52 = *MEMORY[0x1E69C6468];
    v54 = v9 + 72;
    v63 = v9;
    v56 = v10;
    v57 = v15;
    v58 = v9 + 64;
    do
    {
      if (v13 < 0 || v13 >= 1 << *(v9 + 32))
      {
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
        result = swift_unexpectedError();
        __break(1u);
        return result;
      }

      if ((*(v12 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
      {
        goto LABEL_34;
      }

      if (v15 != *(v9 + 36))
      {
        goto LABEL_35;
      }

      v70 = 1 << v13;
      v71 = v13 >> 6;
      v69 = v14;
      v73 = v11;
      v16 = v66;
      v17 = *(v66 + 48);
      v18 = *(v9 + 48);
      v19 = type metadata accessor for InferenceResponse.Moderation.Category();
      v20 = *(v19 - 8);
      v21 = v65;
      (*(v20 + 16))(v65, v18 + *(v20 + 72) * v13, v19);
      v22 = *(v9 + 56);
      v23 = v64;
      v24 = *(v64 + 72);
      v72 = v13;
      v25 = *(v64 + 16);
      v26 = v68;
      v25(&v21[v17], v22 + v24 * v13, v68);
      v27 = v74;
      (*(v20 + 32))(v74, v21, v19);
      v28 = *(v16 + 48);
      (*(v23 + 32))(v27 + v28, &v21[v17], v26);
      v29 = InferenceResponse.Moderation.Category.identifier.getter();
      v31 = v30;
      v32 = v67;
      v25(v67, v27 + v28, v26);
      v33 = (*(v23 + 88))(v32, v26);
      if (v33 == v59)
      {
        v34 = 0;
        v35 = v72;
        v11 = v73;
        v9 = v63;
      }

      else
      {
        v35 = v72;
        v11 = v73;
        v9 = v63;
        if (v33 == v55)
        {
          v34 = 1;
        }

        else if (v33 == v53)
        {
          v34 = 2;
        }

        else
        {
          if (v33 != v52)
          {
            goto LABEL_39;
          }

          v34 = 3;
        }
      }

      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v74, &_s9PromptKit17InferenceResponseV10ModerationV8CategoryV3key_AE11ProbabilityO5valuetMd, &_s9PromptKit17InferenceResponseV10ModerationV8CategoryV3key_AE11ProbabilityO5valuetMR);
      v75 = v11;
      v37 = *(v11 + 16);
      v36 = *(v11 + 24);
      if (v37 >= v36 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37 + 1, 1);
        v11 = v75;
      }

      *(v11 + 16) = v37 + 1;
      v38 = v11 + 24 * v37;
      *(v38 + 32) = v29;
      *(v38 + 40) = v31;
      *(v38 + 48) = v34;
      v13 = 1 << *(v9 + 32);
      if (v35 >= v13)
      {
        goto LABEL_36;
      }

      v12 = v58;
      v39 = *(v58 + 8 * v71);
      if ((v39 & v70) == 0)
      {
        goto LABEL_37;
      }

      LODWORD(v15) = v57;
      if (v57 != *(v9 + 36))
      {
        goto LABEL_38;
      }

      v40 = v39 & (-2 << (v35 & 0x3F));
      if (v40)
      {
        v13 = __clz(__rbit64(v40)) | v35 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v41 = v71 << 6;
        v42 = v71 + 1;
        v43 = (v54 + 8 * v71);
        while (v42 < (v13 + 63) >> 6)
        {
          v45 = *v43++;
          v44 = v45;
          v41 += 64;
          ++v42;
          if (v45)
          {
            outlined consume of Set<ModelCatalogStub.AssetKey>.Index._Variant(v35, v57, 0);
            v13 = __clz(__rbit64(v44)) + v41;
            goto LABEL_4;
          }
        }

        outlined consume of Set<ModelCatalogStub.AssetKey>.Index._Variant(v35, v57, 0);
      }

LABEL_4:
      v14 = v69 + 1;
    }

    while (v69 + 1 != v56);

    if (!*(v11 + 16))
    {
      goto LABEL_31;
    }
  }

  else
  {

    v11 = MEMORY[0x1E69E7CC0];
    if (!*(MEMORY[0x1E69E7CC0] + 16))
    {
LABEL_31:
      v46 = MEMORY[0x1E69E7CC8];
      goto LABEL_32;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15TokenGeneration16PromptCompletionV10ModerationV8CategoryVAG11ProbabilityOGMd, &_ss18_DictionaryStorageCy15TokenGeneration16PromptCompletionV10ModerationV8CategoryVAG11ProbabilityOGMR);
  v46 = static _DictionaryStorage.allocate(capacity:)();
LABEL_32:
  v75 = v46;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v11, 1, &v75);
  v47 = type metadata accessor for InferenceResponse.Moderation();
  result = (*(*(v47 - 8) + 8))(v50, v47);
  *v51 = v75;
  return result;
}

uint64_t PromptCompletion.TextContent.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v70 = type metadata accessor for InferenceResponse.DocumentCitation();
  v4 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v69 = v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for InferenceResponse.URLCitation();
  v78 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v67 = v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for InferenceResponse.Annotation.Type();
  v73 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for PromptCompletion.Annotation.Type(0);
  MEMORY[0x1EEE9AC00](v79);
  v11 = (v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v71 = type metadata accessor for InferenceResponse.Annotation();
  v12 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v84 = v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v83 = v57 - v15;
  v16 = type metadata accessor for PromptCompletion.Annotation(0);
  v80 = *(v16 - 8);
  v81 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v82 = (v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = InferenceResponse.TextContent.value.getter();
  v20 = v19;
  v21 = InferenceResponse.TextContent.annotations.getter();
  v22 = *(v21 + 16);
  if (v22)
  {
    v58 = v20;
    v59 = v18;
    v60 = a1;
    v61 = a2;
    v86 = MEMORY[0x1E69E7CC0];
    v23 = v21;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v22, 0);
    v85 = v86;
    v25 = *(v12 + 16);
    v24 = v12 + 16;
    v77 = v25;
    v26 = (*(v24 + 64) + 32) & ~*(v24 + 64);
    v57[1] = v23;
    v27 = v23 + v26;
    v28 = *(v24 + 56);
    v75 = (v73 + 11);
    v76 = v28;
    v74 = *MEMORY[0x1E69C6440];
    v73 += 12;
    v66 = (v4 + 32);
    v65 = *MEMORY[0x1E69C6448];
    v64 = (v4 + 8);
    v63 = (v78 + 32);
    v62 = (v78 + 8);
    v72 = (v24 - 8);
    v29 = v71;
    v78 = v24;
    while (1)
    {
      v30 = v83;
      v31 = v77;
      v77(v83, v27, v29);
      v31(v84, v30, v29);
      InferenceResponse.Annotation.type.getter();
      v32 = (*v75)(v9, v7);
      if (v32 == v74)
      {
        (*v73)(v9, v7);
        v33 = v67;
        v34 = v9;
        v35 = v9;
        v36 = v7;
        v37 = v68;
        (*v63)(v67, v34, v68);
        v38 = InferenceResponse.URLCitation.title.getter();
        v40 = v39;
        type metadata accessor for PromptCompletion.URLCitation(0);
        InferenceResponse.URLCitation.url.getter();
        v41 = v37;
        v7 = v36;
        v9 = v35;
        v29 = v71;
        (*v62)(v33, v41);
        *v11 = v38;
        v11[1] = v40;
      }

      else
      {
        if (v32 != v65)
        {
          result = _diagnoseUnexpectedEnumCase<A>(type:)();
          __break(1u);
          return result;
        }

        (*v73)(v9, v7);
        v42 = v69;
        v43 = v70;
        (*v66)(v69, v9, v70);
        InferenceResponse.DocumentCitation.documentIdentifier.getter();
        (*v64)(v42, v43);
      }

      swift_storeEnumTagMultiPayload();
      v44 = v84;
      v45 = InferenceResponse.Annotation.index.getter();
      v46 = *v72;
      (*v72)(v44, v29);
      v47 = v82;
      *v82 = v45;
      v48 = v47;
      outlined init with take of PromptCompletion.Segment(v11, v47 + *(v81 + 20), type metadata accessor for PromptCompletion.Annotation.Type);
      v46(v83, v29);
      v49 = v85;
      v86 = v85;
      v51 = *(v85 + 16);
      v50 = *(v85 + 24);
      if (v51 >= v50 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v50 > 1), v51 + 1, 1);
        v48 = v82;
        v49 = v86;
      }

      *(v49 + 16) = v51 + 1;
      v52 = (*(v80 + 80) + 32) & ~*(v80 + 80);
      v85 = v49;
      outlined init with take of PromptCompletion.Segment(v48, v49 + v52 + *(v80 + 72) * v51, type metadata accessor for PromptCompletion.Annotation);
      v27 += v76;
      if (!--v22)
      {
        v53 = type metadata accessor for InferenceResponse.TextContent();
        (*(*(v53 - 8) + 8))(v60, v53);

        a2 = v61;
        v18 = v59;
        v20 = v58;
        v55 = v85;
        goto LABEL_12;
      }
    }
  }

  v56 = type metadata accessor for InferenceResponse.TextContent();
  result = (*(*(v56 - 8) + 8))(a1, v56);
  v55 = MEMORY[0x1E69E7CC0];
LABEL_12:
  *a2 = v18;
  *(a2 + 8) = v20;
  *(a2 + 16) = v55;
  *(a2 + 24) = xmmword_1ABA1D8C0;
  return result;
}

uint64_t InferenceResponse.TextContent.init(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v63 = type metadata accessor for DocumentResourceIdentifier();
  v67 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v62 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PromptCompletion.DocumentCitation(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v61 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for URL();
  v68 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v59 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for PromptCompletion.URLCitation(0);
  MEMORY[0x1EEE9AC00](v58);
  v57 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for PromptCompletion.Annotation.Type(0);
  MEMORY[0x1EEE9AC00](v73);
  v75 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for InferenceResponse.Annotation.Type();
  v66 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v72 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v45 - v13;
  v15 = type metadata accessor for PromptCompletion.Annotation(0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v64 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v76 = &v45 - v19;
  v74 = type metadata accessor for InferenceResponse.Annotation();
  MEMORY[0x1EEE9AC00](v74);
  v22 = a1[1];
  v50 = *a1;
  v23 = a1[2];
  v24 = a1[3];
  v25 = a1[4];
  v26 = *(v23 + 16);
  v51 = v23;
  if (v26)
  {
    v70 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    v46 = v25;
    v47 = v24;
    v49 = a2;
    v77 = MEMORY[0x1E69E7CC0];
    v48 = v22;
    v27 = v21;

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v26, 0);
    v28 = v77;
    v29 = v23 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
    v69 = *(v16 + 72);
    v55 = v68 + 2;
    v54 = *MEMORY[0x1E69C6440];
    v30 = v66;
    v68 = (v66 + 13);
    v53 = (v67 + 2);
    v52 = *MEMORY[0x1E69C6448];
    ++v66;
    v67 = (v30 + 2);
    v65 = v27 + 32;
    v31 = v64;
    v56 = v15;
    v71 = v27;
    do
    {
      v32 = v76;
      outlined init with copy of PromptCompletion.Annotation(v29, v76, type metadata accessor for PromptCompletion.Annotation);
      outlined init with copy of PromptCompletion.Annotation(v32, v31, type metadata accessor for PromptCompletion.Annotation);
      outlined init with copy of PromptCompletion.Annotation(v31 + *(v15 + 20), v75, type metadata accessor for PromptCompletion.Annotation.Type);
      v33 = v26;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v34 = v61;
        outlined init with take of PromptCompletion.Segment(v75, v61, type metadata accessor for PromptCompletion.DocumentCitation);
        (*v53)(v62, v34, v63);
        InferenceResponse.DocumentCitation.init(documentIdentifier:)();
        outlined destroy of PromptCompletion.DocumentCitation(v34, type metadata accessor for PromptCompletion.DocumentCitation);
        v35 = &v78 + 4;
      }

      else
      {
        v36 = v14;
        v37 = v57;
        outlined init with take of PromptCompletion.Segment(v75, v57, type metadata accessor for PromptCompletion.URLCitation);
        (*v55)(v59, v37 + *(v58 + 20), v60);

        v31 = v64;
        InferenceResponse.URLCitation.init(title:url:)();
        v38 = v37;
        v14 = v36;
        v15 = v56;
        outlined destroy of PromptCompletion.DocumentCitation(v38, type metadata accessor for PromptCompletion.URLCitation);
        v35 = &v79 + 4;
      }

      (*v68)(v14, *(v35 - 64), v10);
      (*v67)(v72, v14, v10);
      v39 = v70;
      InferenceResponse.Annotation.init(index:type:)();
      (*v66)(v14, v10);
      outlined destroy of PromptCompletion.DocumentCitation(v31, type metadata accessor for PromptCompletion.Annotation);
      outlined destroy of PromptCompletion.DocumentCitation(v76, type metadata accessor for PromptCompletion.Annotation);
      v40 = v28;
      v77 = v28;
      v42 = *(v28 + 16);
      v41 = *(v28 + 24);
      if (v42 >= v41 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v42 + 1, 1);
        v31 = v64;
        v40 = v77;
      }

      *(v40 + 16) = v42 + 1;
      v28 = v40;
      (*(v71 + 32))(v40 + ((*(v71 + 80) + 32) & ~*(v71 + 80)) + *(v71 + 72) * v42, v39, v74);
      v29 += v69;
      v26 = v33 - 1;
    }

    while (v33 != 1);
    v22 = v48;
    v24 = v47;
    v25 = v46;
    v43 = v28;
  }

  else
  {

    v43 = MEMORY[0x1E69E7CC0];
  }

  MEMORY[0x1AC5A5410](v50, v22, v43);

  return outlined consume of Data?(v24, v25);
}

uint64_t PromptCompletion.Content.init(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v75 = a2;
  v3 = type metadata accessor for InferenceResponse.AudioContent();
  v71 = *(v3 - 8);
  v72 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v69 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v68 = &v65 - v6;
  v70 = type metadata accessor for InferenceResponse.FileContent();
  v67 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v66 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v65 = &v65 - v9;
  v10 = type metadata accessor for InferenceResponse.ImageContent();
  v73 = *(v10 - 8);
  v74 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v65 - v14;
  v16 = type metadata accessor for InferenceResponse.TextContent();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v65 - v21;
  v23 = type metadata accessor for InferenceResponse.Content();
  v24 = *(v23 - 8);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = &v65 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v24 + 16))(v27, a1, v23, v25);
  v28 = (*(v24 + 88))(v27, v23);
  if (v28 == *MEMORY[0x1E69C64C0])
  {
    (*(v24 + 96))(v27, v23);
    (*(v17 + 32))(v22, v27, v16);
    (*(v17 + 16))(v19, v22, v16);
    PromptCompletion.TextContent.init(_:)(v19, &v76);
    (*(v24 + 8))(a1, v23);
    (*(v17 + 8))(v22, v16);
    v29 = v75;
    *v75 = v76;
    v30 = v78;
    *(v29 + 1) = v77;
    *(v29 + 3) = v30;
    type metadata accessor for PromptCompletion.Content(0);
    return swift_storeEnumTagMultiPayload();
  }

  v31 = a1;
  v32 = v75;
  if (v28 == *MEMORY[0x1E69C64D0])
  {
    (*(v24 + 96))(v27, v23);
    v33 = v73;
    v34 = v27;
    v35 = v74;
    (*(v73 + 32))(v15, v34, v74);
    (*(v33 + 16))(v12, v15, v35);
    v36 = InferenceResponse.AudioContent.data.getter();
    v38 = v37;
    (*(v24 + 8))(v31, v23);
    v39 = *(v33 + 8);
    v39(v12, v35);
    v39(v15, v35);
    *v32 = v36;
    v32[1] = v38;
    type metadata accessor for PromptCompletion.Content(0);
    return swift_storeEnumTagMultiPayload();
  }

  if (v28 == *MEMORY[0x1E69C64B8])
  {
    (*(v24 + 96))(v27, v23);
    v40 = v67;
    v41 = v65;
    v42 = v70;
    (*(v67 + 32))(v65, v27, v70);
    v43 = v66;
    (*(v40 + 16))(v66, v41, v42);
    v44 = v32;
    InferenceResponse.FileContent.url.getter();
    v45 = InferenceResponse.FileContent.name.getter();
    v73 = v46;
    v74 = v45;
    v72 = InferenceResponse.FileContent.mimeType.getter();
    v48 = v47;
    v49 = InferenceResponse.FileContent.size.getter();
    (*(v24 + 8))(v31, v23);
    v50 = *(v40 + 8);
    v50(v43, v42);
    v50(v41, v42);
    v51 = type metadata accessor for PromptCompletion.FileContent(0);
    v52 = (v44 + v51[5]);
    v53 = v73;
    *v52 = v74;
    v52[1] = v53;
    v54 = (v44 + v51[6]);
    *v54 = v72;
    v54[1] = v48;
    *(v44 + v51[7]) = v49;
    type metadata accessor for PromptCompletion.Content(0);
    return swift_storeEnumTagMultiPayload();
  }

  if (v28 == *MEMORY[0x1E69C64C8])
  {
    v55 = v75;
    (*(v24 + 96))(v27, v23);
    v57 = v71;
    v56 = v72;
    v58 = v68;
    (*(v71 + 32))(v68, v27, v72);
    v59 = v69;
    (*(v57 + 16))(v69, v58, v56);
    v60 = InferenceResponse.AudioContent.data.getter();
    v62 = v61;
    (*(v24 + 8))(v31, v23);
    v63 = *(v57 + 8);
    v63(v59, v56);
    v63(v58, v56);
    *v55 = v60;
    v55[1] = v62;
    type metadata accessor for PromptCompletion.Content(0);
    return swift_storeEnumTagMultiPayload();
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t PromptCompletion.Candidate.init(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v112 = a2;
  v148[1] = *MEMORY[0x1E69E9840];
  v120 = type metadata accessor for InferenceResponse.FinishReason();
  v119 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120);
  v117 = &v106 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v118 = &v106 - v5;
  v116 = type metadata accessor for InferenceResponse.Moderation();
  v115 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v108 = &v106 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v107 = &v106 - v8;
  v138 = type metadata accessor for Prompt.ToolCall.Function();
  v9 = *(v138 - 8);
  MEMORY[0x1EEE9AC00](v138);
  v137 = &v106 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = type metadata accessor for Prompt.ToolCall.Content();
  v11 = *(v136 - 8);
  MEMORY[0x1EEE9AC00](v136);
  v146 = &v106 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = type metadata accessor for Prompt.ToolCall.Kind();
  v13 = *(v135 - 8);
  MEMORY[0x1EEE9AC00](v135);
  v134 = &v106 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v133 = &v106 - v16;
  v17 = type metadata accessor for Prompt.ToolCall();
  v145 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v110 = &v106 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v109 = &v106 - v20;
  v132 = type metadata accessor for Prompt.ToolCall();
  v144 = *(v132 - 8);
  MEMORY[0x1EEE9AC00](v132);
  v147 = &v106 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PromptKit17InferenceResponseV10ModerationVSgMd, &_s9PromptKit17InferenceResponseV10ModerationVSgMR);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v113 = &v106 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v114 = &v106 - v25;
  v26 = type metadata accessor for InferenceResponse.Content();
  MEMORY[0x1EEE9AC00](v26 - 8);
  v143 = &v106 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = type metadata accessor for InferenceResponse.Segment();
  v28 = *(v139 - 1);
  MEMORY[0x1EEE9AC00](v139);
  v142 = &v106 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v140 = &v106 - v31;
  v32 = type metadata accessor for PromptCompletion.Segment(0);
  v141 = *(v32 - 8);
  v33 = MEMORY[0x1EEE9AC00](v32 - 8);
  v35 = (&v106 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = MEMORY[0x1AC5A56C0](v33);
  v37 = *(v36 + 16);
  v38 = MEMORY[0x1E69E7CC0];
  v121 = a1;
  if (v37)
  {
    v125 = v13;
    v126 = v11;
    v127 = v9;
    v128 = v17;
    v148[0] = MEMORY[0x1E69E7CC0];
    v39 = v36;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v37, 0);
    v40 = v148[0];
    v42 = *(v28 + 16);
    v41 = v28 + 16;
    v131 = v42;
    v43 = (*(v41 + 64) + 32) & ~*(v41 + 64);
    v124 = v39;
    v44 = v39 + v43;
    v130 = *(v41 + 56);
    v45 = (v41 - 8);
    v129 = v41;
    v46 = v139;
    do
    {
      v47 = v140;
      v48 = v131;
      v131(v140, v44, v46);
      v49 = v142;
      v48(v142, v47, v46);
      v50 = v143;
      InferenceResponse.Segment.content.getter();
      PromptCompletion.Content.init(_:)(v50, v35);
      v51 = *v45;
      (*v45)(v49, v46);
      v51(v47, v46);
      v148[0] = v40;
      v53 = v40[2];
      v52 = v40[3];
      if (v53 >= v52 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v52 > 1), v53 + 1, 1);
        v40 = v148[0];
      }

      v40[2] = v53 + 1;
      outlined init with take of PromptCompletion.Segment(v35, v40 + ((v141[80] + 32) & ~v141[80]) + *(v141 + 9) * v53, type metadata accessor for PromptCompletion.Segment);
      v44 = v130 + v44;
      --v37;
    }

    while (v37);
    v111 = v40;

    a1 = v121;
    v17 = v128;
    v9 = v127;
    v11 = v126;
    v13 = v125;
    v38 = MEMORY[0x1E69E7CC0];
  }

  else
  {

    v111 = MEMORY[0x1E69E7CC0];
  }

  v54 = InferenceResponse.Candidate.toolCalls.getter();
  v55 = *(v54 + 16);
  v56 = v146;
  if (v55)
  {
    v148[0] = v38;
    v57 = v54;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v55, 0);
    v58 = v57;
    v59 = 0;
    v60 = v148[0];
    v141 = &v58[(*(v145 + 80) + 32) & ~*(v145 + 80)];
    v139 = (v11 + 88);
    v140 = (v145 + 16);
    LODWORD(v131) = *MEMORY[0x1E69C62B8];
    v130 = (v11 + 96);
    v129 = (v9 + 4);
    v128 = (v9 + 1);
    v127 = (v13 + 13);
    LODWORD(v126) = *MEMORY[0x1E69DA808];
    v125 = v13 + 2;
    v124 = (v13 + 1);
    v123 = (v145 + 8);
    v122 = v144 + 32;
    v61 = v110;
    v62 = v109;
    v142 = v55;
    v143 = v58;
    while (v59 < *(v58 + 2))
    {
      v63 = *(v145 + 16);
      v63(v62, &v141[*(v145 + 72) * v59], v17);
      v63(v61, v62, v17);
      Prompt.ToolCall.content.getter();
      v64 = v136;
      v65 = (*v139)(v56, v136);
      if (v65 != v131)
      {
        goto LABEL_32;
      }

      v66 = v17;
      (*v130)(v56, v64);
      v67 = v137;
      v68 = v138;
      (*v129)(v137, v56, v138);
      Prompt.ToolCall.Function.name.getter();
      Prompt.ToolCall.Function.arguments.getter();
      v69 = v133;
      Prompt.ToolCall.Function.init(name:arguments:)();
      (*v128)(v67, v68);
      v70 = v135;
      v71 = (*v127)(v69, v126, v135);
      v72 = MEMORY[0x1AC5A5000](v71);
      v74 = v73;
      v75 = v134;
      (*v125)(v134, v69, v70);
      MEMORY[0x1AC5A36E0](v72, v74, v75);
      (*v124)(v69, v70);
      v76 = *v123;
      (*v123)(v61, v66);
      v76(v62, v66);
      v148[0] = v60;
      v78 = v60[2];
      v77 = v60[3];
      v17 = v66;
      if (v78 >= v77 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v77 > 1), v78 + 1, 1);
        v62 = v109;
        v61 = v110;
        v60 = v148[0];
      }

      ++v59;
      v60[2] = v78 + 1;
      (*(v144 + 32))(v60 + ((*(v144 + 80) + 32) & ~*(v144 + 80)) + *(v144 + 72) * v78, v147, v132);
      v58 = v143;
      v56 = v146;
      if (v142 == v59)
      {
        v147 = v60;

        a1 = v121;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_31:
    v105 = v58;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    __break(1u);
  }

  v147 = MEMORY[0x1E69E7CC0];
LABEL_17:
  v79 = v114;
  InferenceResponse.Candidate.moderation.getter();
  v80 = v113;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v79, v113, &_s9PromptKit17InferenceResponseV10ModerationVSgMd, &_s9PromptKit17InferenceResponseV10ModerationVSgMR);
  v81 = v115;
  v82 = v116;
  v83 = (*(v115 + 48))(v80, 1, v116);
  v84 = v120;
  v85 = v119;
  v86 = v118;
  v87 = v117;
  if (v83 == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v79, &_s9PromptKit17InferenceResponseV10ModerationVSgMd, &_s9PromptKit17InferenceResponseV10ModerationVSgMR);
    v88 = 0;
  }

  else
  {
    v89 = v107;
    (*(v81 + 32))(v107, v80, v82);
    v90 = v79;
    v91 = v108;
    (*(v81 + 16))(v108, v89, v82);
    PromptCompletion.Moderation.init(_:)(v91, v148);
    (*(v81 + 8))(v89, v82);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v90, &_s9PromptKit17InferenceResponseV10ModerationVSgMd, &_s9PromptKit17InferenceResponseV10ModerationVSgMR);
    v88 = v148[0];
  }

  InferenceResponse.Candidate.finishReason.getter();
  (*(v85 + 16))(v87, v86, v84);
  v92 = (*(v85 + 88))(v87, v84);
  if (v92 == *MEMORY[0x1E69C64A0])
  {
    (*(v85 + 8))(v86, v84);
    (*(v85 + 96))(v87, v84);
    v93 = *v87;
    v94 = v87[1];
  }

  else if (v92 == *MEMORY[0x1E69C6498])
  {
    (*(v85 + 8))(v86, v84);
    v93 = 0;
    v94 = 0;
  }

  else if (v92 == *MEMORY[0x1E69C64A8])
  {
    (*(v85 + 8))(v86, v84);
    v93 = 0;
    v94 = 1;
  }

  else
  {
    if (v92 != *MEMORY[0x1E69C6490])
    {
LABEL_32:
      result = _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      return result;
    }

    (*(v85 + 8))(v86, v84);
    v93 = 0;
    v94 = 2;
  }

  InferenceResponse.Candidate.metadata.getter();
  v95 = objc_opt_self();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v148[0] = 0;
  v97 = [v95 dataWithJSONObject:isa options:0 error:v148];

  v58 = v148[0];
  if (!v97)
  {
    goto LABEL_31;
  }

  v98 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v100 = v99;

  v101 = type metadata accessor for InferenceResponse.Candidate();
  (*(*(v101 - 8) + 8))(a1, v101);

  v103 = v112;
  v104 = v147;
  *v112 = v111;
  v103[1] = v104;
  v103[2] = v88;
  v103[3] = v93;
  v103[4] = v94;
  v103[5] = v98;
  v103[6] = v100;
  return result;
}

uint64_t InferenceResponse.Candidate.init(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v116 = a2;
  v161 = *MEMORY[0x1E69E9840];
  v117 = type metadata accessor for InferenceResponse.FinishReason();
  v114 = *(v117 - 8);
  MEMORY[0x1EEE9AC00](v117);
  v113 = (&v101 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v4);
  v115 = &v101 - v5;
  v146 = type metadata accessor for Prompt.ToolCall.Function();
  v118 = *(v146 - 8);
  MEMORY[0x1EEE9AC00](v146);
  v145 = &v101 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = type metadata accessor for Prompt.ToolCall.Kind();
  v7 = *(v144 - 8);
  MEMORY[0x1EEE9AC00](v144);
  v153 = &v101 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = type metadata accessor for Prompt.ToolCall.Content();
  v102 = *(v143 - 8);
  MEMORY[0x1EEE9AC00](v143);
  v142 = &v101 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v141 = &v101 - v11;
  v105 = type metadata accessor for Prompt.ToolCall();
  v152 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v104 = &v101 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v103 = &v101 - v14;
  v140 = type metadata accessor for Prompt.ToolCall();
  v151 = *(v140 - 8);
  MEMORY[0x1EEE9AC00](v140);
  v139 = &v101 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PromptKit17InferenceResponseV10ModerationVSgMd, &_s9PromptKit17InferenceResponseV10ModerationVSgMR);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v112 = &v101 - v17;
  v128 = type metadata accessor for URL();
  v138 = *(v128 - 8);
  MEMORY[0x1EEE9AC00](v128);
  v127 = &v101 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = type metadata accessor for PromptCompletion.FileContent(0);
  MEMORY[0x1EEE9AC00](v126);
  v125 = &v101 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v133 = (&v101 - v21);
  v150 = type metadata accessor for PromptCompletion.Content(0);
  MEMORY[0x1EEE9AC00](v150);
  v23 = (&v101 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v24);
  v131 = &v101 - v25;
  v149 = type metadata accessor for InferenceResponse.Content();
  v26 = *(v149 - 8);
  MEMORY[0x1EEE9AC00](v149);
  v148 = (&v101 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v28);
  v130 = &v101 - v29;
  v30 = type metadata accessor for PromptCompletion.Segment(0);
  v31 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v156 = &v101 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v155 = &v101 - v34;
  v147 = type metadata accessor for InferenceResponse.Segment();
  v35 = *(v147 - 8);
  MEMORY[0x1EEE9AC00](v147);
  v129 = &v101 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = *a1;
  v38 = a1[1];
  v39 = a1[3];
  v107 = a1[2];
  v109 = v39;
  v40 = a1[5];
  v108 = a1[4];
  v111 = v40;
  v110 = a1[6];
  v41 = *(v37 + 16);
  v42 = MEMORY[0x1E69E7CC0];
  v154 = v38;
  v106 = v37;
  if (v41)
  {
    v101 = v7;
    v157 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v41, 0);
    v42 = v157;
    v43 = v37 + ((*(v31 + 80) + 32) & ~*(v31 + 80));
    v137 = *(v31 + 72);
    v123 = *MEMORY[0x1E69C64C8];
    v136 = (v26 + 104);
    v122 = (v138 + 16);
    v121 = *MEMORY[0x1E69C64B8];
    v120 = *MEMORY[0x1E69C64D0];
    v119 = *MEMORY[0x1E69C64C0];
    v135 = (v26 + 32);
    v134 = v35 + 32;
    v44 = v131;
    v45 = v130;
    v138 = v35;
    v46 = v129;
    v124 = v23;
    do
    {
      v47 = v155;
      outlined init with copy of PromptCompletion.Annotation(v43, v155, type metadata accessor for PromptCompletion.Segment);
      v48 = v47;
      v49 = v156;
      outlined init with copy of PromptCompletion.Annotation(v48, v156, type metadata accessor for PromptCompletion.Segment);
      outlined init with copy of PromptCompletion.Annotation(v49, v44, type metadata accessor for PromptCompletion.Content);
      outlined init with copy of PromptCompletion.Annotation(v44, v23, type metadata accessor for PromptCompletion.Content);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload == 2)
        {
          v54 = v133;
          outlined init with take of PromptCompletion.Segment(v23, v133, type metadata accessor for PromptCompletion.FileContent);
          v55 = v54;
          v56 = v125;
          outlined init with copy of PromptCompletion.Annotation(v55, v125, type metadata accessor for PromptCompletion.FileContent);
          (*v122)(v127, v56, v128);
          v132 = *(v56 + *(v126 + 20));

          v57 = v148;
          v23 = v124;
          v46 = v129;
          v44 = v131;
          InferenceResponse.FileContent.init(url:name:mimeType:size:)();
          outlined destroy of PromptCompletion.DocumentCitation(v44, type metadata accessor for PromptCompletion.Content);
          outlined destroy of PromptCompletion.DocumentCitation(v56, type metadata accessor for PromptCompletion.FileContent);
          v51 = v57;
          v45 = v130;
          outlined destroy of PromptCompletion.DocumentCitation(v133, type metadata accessor for PromptCompletion.FileContent);
          v53 = (&v153 + 4);
        }

        else
        {
          v51 = v148;
          MEMORY[0x1AC5A5490](*v23, v23[1]);
          outlined destroy of PromptCompletion.DocumentCitation(v44, type metadata accessor for PromptCompletion.Content);
          v53 = (&v155 + 4);
        }
      }

      else
      {
        v51 = v148;
        if (EnumCaseMultiPayload)
        {
          MEMORY[0x1AC5A54D0](*v23, v23[1]);
          outlined destroy of PromptCompletion.DocumentCitation(v44, type metadata accessor for PromptCompletion.Content);
          v53 = &v153;
        }

        else
        {
          v158 = *v23;
          v52 = *(v23 + 3);
          v159 = *(v23 + 1);
          v160 = v52;
          InferenceResponse.TextContent.init(_:)(&v158, v148);
          outlined destroy of PromptCompletion.DocumentCitation(v44, type metadata accessor for PromptCompletion.Content);
          v53 = (&v152 + 4);
        }
      }

      v58 = v149;
      (*v136)(v51, *(v53 - 64), v149);
      (*v135)(v45, v51, v58);
      InferenceResponse.Segment.init(content:)();
      outlined destroy of PromptCompletion.DocumentCitation(v156, type metadata accessor for PromptCompletion.Segment);
      outlined destroy of PromptCompletion.DocumentCitation(v155, type metadata accessor for PromptCompletion.Segment);
      v157 = v42;
      v60 = v42[2];
      v59 = v42[3];
      if (v60 >= v59 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v59 > 1), v60 + 1, 1);
        v42 = v157;
      }

      v42[2] = v60 + 1;
      (*(v138 + 32))(v42 + ((*(v138 + 80) + 32) & ~*(v138 + 80)) + *(v138 + 72) * v60, v46, v147);
      v43 += v137;
      --v41;
    }

    while (v41);
    v38 = v154;
    v61 = v118;
    v7 = v101;
  }

  else
  {
    v61 = v118;
  }

  v129 = v42;
  v62 = *(v38 + 16);
  v63 = v153;
  if (v62)
  {
    v158 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v62, 0);
    v64 = 0;
    v65 = v158;
    v150 = v38 + ((*(v152 + 80) + 32) & ~*(v152 + 80));
    v148 = (v7 + 88);
    v149 = v152 + 16;
    LODWORD(v147) = *MEMORY[0x1E69DA808];
    v138 = v7 + 96;
    v137 = (v61 + 32);
    v136 = (v61 + 8);
    v135 = (v102 + 104);
    LODWORD(v134) = *MEMORY[0x1E69C62B8];
    v133 = (v102 + 16);
    v132 = (v102 + 8);
    v131 = (v152 + 8);
    v130 = (v151 + 32);
    v66 = v105;
    v67 = v104;
    v68 = v103;
    v155 = v62;
    v69 = v141;
    while (1)
    {
      if (v64 >= *(v154 + 16))
      {
        __break(1u);
      }

      v156 = v65;
      v70 = *(v152 + 16);
      v70(v68, v150 + *(v152 + 72) * v64, v66);
      v70(v67, v68, v66);
      Prompt.ToolCall.kind.getter();
      v71 = v144;
      v72 = (*v148)(v63, v144);
      if (v72 != v147)
      {
        break;
      }

      (*v138)(v63, v71);
      v73 = v145;
      v74 = v146;
      (*v137)(v145, v63, v146);
      Prompt.ToolCall.Function.name.getter();
      Prompt.ToolCall.Function.arguments.getter();
      Prompt.ToolCall.Function.init(name:arguments:)();
      (*v136)(v73, v74);
      v75 = v143;
      (*v135)(v69, v134, v143);
      Prompt.ToolCall.id.getter();
      (*v133)(v142, v69, v75);
      v76 = v139;
      Prompt.ToolCall.init(id:content:)();
      (*v132)(v69, v75);
      v77 = *v131;
      (*v131)(v67, v66);
      v77(v68, v66);
      v65 = v156;
      v158 = v156;
      v79 = *(v156 + 16);
      v78 = *(v156 + 24);
      if (v79 >= v78 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v78 > 1), v79 + 1, 1);
        v65 = v158;
      }

      ++v64;
      *(v65 + 16) = v79 + 1;
      (*(v151 + 32))(v65 + ((*(v151 + 80) + 32) & ~*(v151 + 80)) + *(v151 + 72) * v79, v76, v140);
      v63 = v153;
      if (v155 == v64)
      {
        goto LABEL_22;
      }
    }

    v98 = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  else
  {
LABEL_22:
    v80 = v112;
    v81 = v110;
    v82 = v109;
    v83 = v108;
    v84 = v107;
    if (v107)
    {
      swift_bridgeObjectRetain_n();
      v85 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDy15TokenGeneration16PromptCompletionV10ModerationV8CategoryVAJ11ProbabilityOG_0F3Kit17InferenceResponseVAIVAKV_AsMOts5NeverOTg504_s15d12Generation16fg3V10h2V8i5VAE11j9O0C3Kit17lm42VADVAFVAmHOIgnnrr_AG3key_AI5valuetAN_AOts5N96OIegnrzr_TR03_s9c5Kit17ij3V10e3V15ab9EyAeF0A10d10VADVcfcAE8f6V_AE11g7OtAiJV_Z8LOtXEfU_Tf3nnnpf_nTf1cn_n(v84);

      if (*(v85 + 16))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy9PromptKit17InferenceResponseV10ModerationV8CategoryVAG11ProbabilityOGMd, &_ss18_DictionaryStorageCy9PromptKit17InferenceResponseV10ModerationV8CategoryVAG11ProbabilityOGMR);
        v86 = static _DictionaryStorage.allocate(capacity:)();
      }

      else
      {
        v86 = MEMORY[0x1E69E7CC8];
      }

      v158 = v86;
      specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v85, 1, &v158);
      InferenceResponse.Moderation.init(ratings:)();

      v87 = 0;
    }

    else
    {
      v87 = 1;
    }

    v88 = v115;
    v89 = v113;
    v90 = type metadata accessor for InferenceResponse.Moderation();
    (*(*(v90 - 8) + 56))(v80, v87, 1, v90);
    if (v83 >= 3)
    {
      *v89 = v82;
      v89[1] = v83;
      v91 = MEMORY[0x1E69C64A0];
    }

    else
    {
      v91 = qword_1E795FC28[v83];
    }

    v92 = v117;
    v93 = v114;
    (*(v114 + 104))(v89, *v91, v117);
    (*(v93 + 32))(v88, v89, v92);
    v94 = objc_opt_self();
    outlined copy of FinishReason(v82, v83);
    v95 = v111;
    isa = Data._bridgeToObjectiveC()().super.isa;
    v157 = 0;
    v97 = [v94 JSONObjectWithData:isa options:0 error:&v157];

    v98 = v157;
    if (v97)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
      swift_dynamicCast();

      outlined consume of FinishReason(v82, v83);
      outlined consume of Data._Representation(v95, v81);
      return InferenceResponse.Candidate.init(segments:toolCalls:moderation:finishReason:metadata:)();
    }
  }

  v100 = v98;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  swift_unexpectedError();
  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t Prompt.Rendering.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v15[1] = a2;
  v3 = type metadata accessor for InferenceResponse.PromptRendering.Source();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v15 - v8;
  v10 = type metadata accessor for Prompt.Rendering.Source();
  MEMORY[0x1EEE9AC00](v10 - 8);
  InferenceResponse.PromptRendering.source.getter();
  InferenceResponse.PromptRendering.Source.identifier.getter();
  v11 = *(v4 + 8);
  v11(v9, v3);
  InferenceResponse.PromptRendering.source.getter();
  InferenceResponse.PromptRendering.Source.version.getter();
  v11(v6, v3);
  v12 = Prompt.Rendering.Source.init(identifier:version:)();
  MEMORY[0x1AC5A5290](v12);
  InferenceResponse.PromptRendering.renderedString.getter();
  InferenceResponse.PromptRendering.originalPrompt.getter();
  InferenceResponse.PromptRendering.tokenIDs.getter();
  InferenceResponse.PromptRendering.userInfo.getter();
  InferenceResponse.PromptRendering.detokenizedString.getter();
  Prompt.Rendering.init(source:segments:renderedString:originalPrompt:tokenIDs:userInfo:detokenizedString:)();
  v13 = type metadata accessor for InferenceResponse.PromptRendering();
  return (*(*(v13 - 8) + 8))(a1, v13);
}

uint64_t InferenceResponse.PromptRendering.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v14[1] = a2;
  v3 = type metadata accessor for Prompt.Rendering.Source();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v14 - v8;
  v10 = type metadata accessor for InferenceResponse.PromptRendering.Source();
  MEMORY[0x1EEE9AC00](v10 - 8);
  Prompt.Rendering.source.getter();
  Prompt.string.getter();
  v11 = *(v4 + 8);
  v11(v9, v3);
  Prompt.Rendering.source.getter();
  Prompt.Rendering.Source.version.getter();
  v11(v6, v3);
  InferenceResponse.PromptRendering.Source.init(identifier:version:)();
  Prompt.Rendering.segments.getter();
  Prompt.Rendering.renderedString.getter();
  Prompt.Rendering.originalPrompt.getter();
  Prompt.Rendering.tokenIDs.getter();
  Prompt.Rendering.userInfo.getter();
  Prompt.Rendering.detokenizedString.getter();
  InferenceResponse.PromptRendering.init(source:segments:renderedString:originalPrompt:tokenIDs:userInfo:detokenizedString:)();
  v12 = type metadata accessor for Prompt.Rendering();
  return (*(*(v12 - 8) + 8))(a1, v12);
}

uint64_t PromptCompletion.init(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v91 = a2;
  v109[3] = *MEMORY[0x1E69E9840];
  v3 = type metadata accessor for InferenceResponse.PromptRendering();
  v99 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v88 = &v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v87 = &v80 - v6;
  v89 = type metadata accessor for InferenceResponse.Candidate();
  v101 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v103 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v102 = &v80 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PromptKit17InferenceResponseV0A9RenderingVSgMd, &_s9PromptKit17InferenceResponseV0A9RenderingVSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v95 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v96 = &v80 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV9RenderingVSgMd, &_s15TokenGeneration6PromptV9RenderingVSgMR);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v100 = &v80 - v15;
  v16 = type metadata accessor for InferenceResponse.Usage();
  v93 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v92 = &v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for InferenceResponse.Moderation();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v94 = &v80 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v80 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PromptKit17InferenceResponseV10ModerationVSgMd, &_s9PromptKit17InferenceResponseV10ModerationVSgMR);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = &v80 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v80 - v28;
  v30 = type metadata accessor for InferenceResponse.ModelInformation();
  MEMORY[0x1EEE9AC00](v30 - 8);
  v32 = &v80 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  InferenceResponse.modelInformation.getter();
  ModelInformation.init(_:)(v32, v109);
  v97 = v109[0];
  v90 = v109[1];
  v98 = v109[2];
  InferenceResponse.promptModeration.getter();
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v29, v26, &_s9PromptKit17InferenceResponseV10ModerationVSgMd, &_s9PromptKit17InferenceResponseV10ModerationVSgMR);
  v33 = 0;
  if ((*(v19 + 48))(v26, 1, v18) != 1)
  {
    (*(v19 + 32))(v23, v26, v18);
    v34 = v94;
    (*(v19 + 16))(v94, v23, v18);
    PromptCompletion.Moderation.init(_:)(v34, &v105);
    v33 = v105;
    (*(v19 + 8))(v23, v18);
  }

  v94 = v33;
  v35 = outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v29, &_s9PromptKit17InferenceResponseV10ModerationVSgMd, &_s9PromptKit17InferenceResponseV10ModerationVSgMR);
  v36 = MEMORY[0x1AC5A5390](v35);
  v37 = *(v36 + 16);
  if (v37)
  {
    v84 = v16;
    v85 = v3;
    v86 = a1;
    v104 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v37, 0);
    v38 = v104;
    v39 = v101 + 16;
    v40 = *(v101 + 16);
    v41 = (*(v101 + 80) + 32) & ~*(v101 + 80);
    v83 = v36;
    v42 = v36 + v41;
    v101 = *(v101 + 72);
    v43 = (v39 - 8);
    v44 = v89;
    do
    {
      v45 = v102;
      v40(v102, v42, v44);
      v46 = v103;
      v40(v103, v45, v44);
      PromptCompletion.Candidate.init(_:)(v46, &v105);
      (*v43)(v45, v44);
      v47 = v105;
      v48 = v106;
      v49 = v107;
      v50 = v108;
      v104 = v38;
      v52 = *(v38 + 16);
      v51 = *(v38 + 24);
      if (v52 >= v51 >> 1)
      {
        v82 = v105;
        v81 = v106;
        v80 = v107;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v51 > 1), v52 + 1, 1);
        v49 = v80;
        v48 = v81;
        v47 = v82;
        v44 = v89;
        v38 = v104;
      }

      *(v38 + 16) = v52 + 1;
      v53 = v38 + 56 * v52;
      *(v53 + 32) = v47;
      *(v53 + 48) = v48;
      *(v53 + 64) = v49;
      *(v53 + 80) = v50;
      v42 += v101;
      --v37;
    }

    while (v37);

    a1 = v86;
    v3 = v85;
    v16 = v84;
  }

  else
  {

    v38 = MEMORY[0x1E69E7CC0];
  }

  v54 = v92;
  InferenceResponse.usage.getter();
  v103 = InferenceResponse.Usage.promptTokenCount.getter();
  v102 = InferenceResponse.Usage.completionTokenCount.getter();
  (*(v93 + 8))(v54, v16);
  InferenceResponse.metadata.getter();
  v55 = v96;
  v56 = a1;
  InferenceResponse.renderedPrompt.getter();
  v57 = v95;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v55, v95, &_s9PromptKit17InferenceResponseV0A9RenderingVSgMd, &_s9PromptKit17InferenceResponseV0A9RenderingVSgMR);
  v58 = v99;
  v59 = 1;
  v60 = (*(v99 + 48))(v57, 1, v3);
  v61 = v100;
  if (v60 != 1)
  {
    v62 = v87;
    (*(v58 + 32))(v87, v57, v3);
    v63 = v88;
    (*(v58 + 16))(v88, v62, v3);
    Prompt.Rendering.init(_:)(v63, v61);
    (*(v58 + 8))(v62, v3);
    v59 = 0;
  }

  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v55, &_s9PromptKit17InferenceResponseV0A9RenderingVSgMd, &_s9PromptKit17InferenceResponseV0A9RenderingVSgMR);
  v64 = type metadata accessor for Prompt.Rendering();
  v65 = *(*(v64 - 8) + 56);
  v65(v61, v59, 1, v64);
  v66 = objc_opt_self();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  *&v105 = 0;
  v68 = [v66 dataWithJSONObject:isa options:0 error:&v105];

  if (!v68)
  {
    v79 = v105;

    _convertNSErrorToError(_:)();

    swift_willThrow();
    __break(1u);
  }

  v69 = v105;

  v70 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v72 = v71;

  v73 = type metadata accessor for InferenceResponse();
  (*(*(v73 - 8) + 8))(v56, v73);
  v74 = v91;
  v91[3] = 0;
  v75 = *(type metadata accessor for PromptCompletion(0) + 36);
  v65(v74 + v75, 1, 1, v64);
  v76 = v90;
  *v74 = v97;
  v74[1] = v76;
  v74[2] = v98;

  v74[3] = v94;
  v74[4] = v38;
  v77 = v102;
  v74[5] = v103;
  v74[6] = v77;
  v74[7] = v70;
  v74[8] = v72;
  return outlined assign with take of Prompt.Rendering?(v61, v74 + v75);
}

void specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, char a2, void *a3)
{
  v67 = a3;
  v6 = type metadata accessor for InferenceResponse.Moderation.Probability();
  v64 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v65 = v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for InferenceResponse.Moderation.Category();
  v63 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v9 = v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PromptKit17InferenceResponseV10ModerationV8CategoryV_AE11ProbabilityOtMd, &_s9PromptKit17InferenceResponseV10ModerationV8CategoryV_AE11ProbabilityOtMR);
  v62 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v55 - v12;
  v59 = *(a1 + 16);
  if (!v59)
  {
    goto LABEL_24;
  }

  v55[1] = v3;
  if (!*(a1 + 16))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v14 = *(v11 + 48);
  v15 = *(v62 + 80);
  v60 = a1;
  v16 = a1 + ((v15 + 32) & ~v15);
  v17 = (v63 + 32);
  v18 = (v64 + 32);
  v57 = v16;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v16, v13, &_s9PromptKit17InferenceResponseV10ModerationV8CategoryV_AE11ProbabilityOtMd, &_s9PromptKit17InferenceResponseV10ModerationV8CategoryV_AE11ProbabilityOtMR);
  v56 = *v17;
  v56(v9, v13, v66);
  v19 = *v18;
  v58 = v14;
  v61 = v6;
  v20 = v6;
  v21 = v19;
  v19(v65, &v13[v14], v20);
  v22 = *v67;
  v24 = specialized __RawDictionaryStorage.find<A>(_:)(v9);
  v25 = v22[2];
  v26 = (v23 & 1) == 0;
  v27 = v25 + v26;
  if (__OFADD__(v25, v26))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v28 = v23;
  if (v22[3] >= v27)
  {
    if (a2)
    {
      if ((v23 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      specialized _NativeDictionary.copy()();
      if ((v28 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_11;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v27, a2 & 1);
  v29 = specialized __RawDictionaryStorage.find<A>(_:)(v9);
  if ((v28 & 1) == (v30 & 1))
  {
    v24 = v29;
    if ((v28 & 1) == 0)
    {
LABEL_14:
      v32 = v66;
      v33 = *v67;
      *(*v67 + 8 * (v24 >> 6) + 64) |= 1 << v24;
      v56((v33[6] + *(v63 + 72) * v24), v9, v32);
      v34 = v61;
      v21((v33[7] + *(v64 + 72) * v24), v65, v61);
      v35 = v33[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v33[2] = v37;
      if (v59 != 1)
      {
        v38 = 1;
        while (v38 < *(v60 + 16))
        {
          outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v57 + *(v62 + 72) * v38, v13, &_s9PromptKit17InferenceResponseV10ModerationV8CategoryV_AE11ProbabilityOtMd, &_s9PromptKit17InferenceResponseV10ModerationV8CategoryV_AE11ProbabilityOtMR);
          v39 = *v17;
          (*v17)(v9, v13, v66);
          v40 = *v18;
          (*v18)(v65, &v13[v58], v34);
          v41 = *v67;
          v42 = specialized __RawDictionaryStorage.find<A>(_:)(v9);
          v44 = v41[2];
          v45 = (v43 & 1) == 0;
          v36 = __OFADD__(v44, v45);
          v46 = v44 + v45;
          if (v36)
          {
            goto LABEL_26;
          }

          v47 = v43;
          if (v41[3] < v46)
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v46, 1);
            v42 = specialized __RawDictionaryStorage.find<A>(_:)(v9);
            if ((v47 & 1) != (v48 & 1))
            {
              goto LABEL_28;
            }
          }

          if (v47)
          {
            goto LABEL_11;
          }

          v49 = v66;
          v50 = *v67;
          *(*v67 + 8 * (v42 >> 6) + 64) |= 1 << v42;
          v51 = v42;
          v39((v50[6] + *(v63 + 72) * v42), v9, v49);
          v52 = v50[7] + *(v64 + 72) * v51;
          v34 = v61;
          v40(v52, v65, v61);
          v53 = v50[2];
          v36 = __OFADD__(v53, 1);
          v54 = v53 + 1;
          if (v36)
          {
            goto LABEL_27;
          }

          ++v38;
          v50[2] = v54;
          if (v59 == v38)
          {
            goto LABEL_24;
          }
        }

        goto LABEL_25;
      }

LABEL_24:

      return;
    }

LABEL_11:
    v31 = swift_allocError();
    swift_willThrow();

    v70 = v31;
    MEMORY[0x1AC5A6AE0](v31);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if ((swift_dynamicCast() & 1) == 0)
    {
      (*(v64 + 8))(v65, v61);
      (*(v63 + 8))(v9, v66);

      return;
    }

    goto LABEL_29;
  }

LABEL_28:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_29:
  v68 = 0;
  v69 = 0xE000000000000000;
  _StringGuts.grow(_:)(30);
  MEMORY[0x1AC5A5BC0](0xD00000000000001BLL, 0x80000001ABA41680);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1AC5A5BC0](39, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

{
  v36 = *(a1 + 16);
  if (!v36)
  {
    goto LABEL_21;
  }

  LOBYTE(v5) = a2;
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  LOBYTE(v8) = *(a1 + 48);
  v9 = *a3;

  v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v6);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v15, v5 & 1);
    v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v6);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v19 = v10;
  specialized _NativeDictionary.copy()();
  v10 = v19;
  if (v16)
  {
LABEL_8:
    v18 = swift_allocError();
    swift_willThrow();

    MEMORY[0x1AC5A6AE0](v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v20 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v21 = (v20[6] + 16 * v10);
  *v21 = v7;
  v21[1] = v6;
  *(v20[7] + v10) = v8;
  v22 = v20[2];
  v14 = __OFADD__(v22, 1);
  v23 = v22 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    _StringGuts.grow(_:)(30);
    MEMORY[0x1AC5A5BC0](0xD00000000000001BLL, 0x80000001ABA41680);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x1AC5A5BC0](39, 0xE100000000000000);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v20[2] = v23;
  if (v36 != 1)
  {
    v5 = (a1 + 72);
    v8 = 1;
    while (v8 < *(a1 + 16))
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v24 = *v5;
      v25 = *a3;

      v26 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v6);
      v28 = v25[2];
      v29 = (v27 & 1) == 0;
      v14 = __OFADD__(v28, v29);
      v30 = v28 + v29;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v27;
      if (v25[3] < v30)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v30, 1);
        v26 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v6);
        if ((v16 & 1) != (v31 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v32 = *a3;
      *(*a3 + 8 * (v26 >> 6) + 64) |= 1 << v26;
      v33 = (v32[6] + 16 * v26);
      *v33 = v7;
      v33[1] = v6;
      *(v32[7] + v26) = v24;
      v34 = v32[2];
      v14 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v8;
      v32[2] = v35;
      v5 += 24;
      if (v36 == v8)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

{
  v36 = *(a1 + 16);
  if (!v36)
  {
    goto LABEL_23;
  }

  LOBYTE(v5) = a2;
  LOBYTE(v6) = *(a1 + 48);
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  if (!v7)
  {
    goto LABEL_23;
  }

  v9 = *a3;
  v10 = specialized __RawDictionaryStorage.find<A>(_:)(v8, v7);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v15, v5 & 1);
    v10 = specialized __RawDictionaryStorage.find<A>(_:)(v8, v7);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_8;
    }

LABEL_6:
    v10 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (v5)
  {
LABEL_8:
    if (v16)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v19 = v10;
  specialized _NativeDictionary.copy()();
  v10 = v19;
  if (v16)
  {
LABEL_9:
    v18 = swift_allocError();
    swift_willThrow();

    MEMORY[0x1AC5A6AE0](v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_28;
  }

LABEL_12:
  v20 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v21 = (v20[6] + 16 * v10);
  *v21 = v8;
  v21[1] = v7;
  *(v20[7] + v10) = v6;
  v22 = v20[2];
  v14 = __OFADD__(v22, 1);
  v23 = v22 + 1;
  if (v14)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    _StringGuts.grow(_:)(30);
    MEMORY[0x1AC5A5BC0](0xD00000000000001BLL, 0x80000001ABA41680);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x1AC5A5BC0](39, 0xE100000000000000);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v20[2] = v23;
  if (v36 != 1)
  {
    v5 = (a1 + 72);
    v6 = 1;
    while (v6 < *(a1 + 16))
    {
      v24 = *v5;
      v8 = *(v5 - 2);
      v7 = *(v5 - 1);

      if (!v7)
      {
        goto LABEL_23;
      }

      v25 = *a3;
      v26 = specialized __RawDictionaryStorage.find<A>(_:)(v8, v7);
      v28 = v25[2];
      v29 = (v27 & 1) == 0;
      v14 = __OFADD__(v28, v29);
      v30 = v28 + v29;
      if (v14)
      {
        goto LABEL_25;
      }

      v16 = v27;
      if (v25[3] < v30)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v30, 1);
        v26 = specialized __RawDictionaryStorage.find<A>(_:)(v8, v7);
        if ((v16 & 1) != (v31 & 1))
        {
          goto LABEL_6;
        }
      }

      if (v16)
      {
        goto LABEL_9;
      }

      v32 = *a3;
      *(*a3 + 8 * (v26 >> 6) + 64) |= 1 << v26;
      v33 = (v32[6] + 16 * v26);
      *v33 = v8;
      v33[1] = v7;
      *(v32[7] + v26) = v24;
      v34 = v32[2];
      v14 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v14)
      {
        goto LABEL_26;
      }

      ++v6;
      v32[2] = v35;
      v5 += 24;
      if (v36 == v6)
      {
        goto LABEL_23;
      }
    }

    goto LABEL_27;
  }

LABEL_23:
}

uint64_t outlined init with take of (InferenceResponse.Moderation.Category, InferenceResponse.Moderation.Probability)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PromptKit17InferenceResponseV10ModerationV8CategoryV_AE11ProbabilityOtMd, &_s9PromptKit17InferenceResponseV10ModerationV8CategoryV_AE11ProbabilityOtMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of PromptCompletion.Segment(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of PromptCompletion.Annotation(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of PromptCompletion.DocumentCitation(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t PromptCompletionStream.collect()(uint64_t a1)
{
  v6 = (*(v1 + 16) + **(v1 + 16));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = partial apply for closure #1 in TokenGenerator._tokenCount<A>(configuration:);

  return v6(a1);
}

double PromptCompletionEventCandidateTextDelta.init(responseIdentifier:candidateIdentifier:segmentIndex:textDelta:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  result = 0.0;
  *(a8 + 56) = xmmword_1ABA1D8C0;
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  *(a8 + 48) = a7;
  return result;
}

id PromptCompletionEventResponseMetadata.metadata.getter()
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

id PromptCompletionEventCandidateFinished.metadata.getter()
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

uint64_t PromptCompletionStream.init<A>(streamResponse:bufferResponse:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (**a6)()@<X8>)
{
  v12 = *(a4 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](a1);
  v15 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v15, a1, v16, v14);
  v17 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = a4;
  *(v18 + 24) = a5;
  (*(v12 + 32))(v18 + v17, v15, a4);
  v19 = swift_allocObject();
  (*(v12 + 8))(a1, a4);
  *(v19 + 16) = 0;
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  *(v20 + 24) = partial apply for closure #1 in PromptCompletionStream.init<A>(streamResponse:bufferResponse:);
  *(v20 + 32) = v18;
  v21 = swift_allocObject();
  *(v21 + 16) = v19;
  *(v21 + 24) = a2;
  *(v21 + 32) = a3;
  *a6 = partial apply for closure #1 in PromptCompletionStream.init(streamResponse:bufferResponse:);
  a6[1] = v20;
  a6[2] = &async function pointer to partial apply for closure #2 in PromptCompletionStream.init(streamResponse:bufferResponse:);
  a6[3] = v21;
}

uint64_t closure #1 in PromptCompletionStream.init<A>(streamResponse:bufferResponse:)(uint64_t a1)
{
  v3 = MEMORY[0x1EEE9AC00](a1);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSci_p15TokenGeneration21PromptCompletionEvent_p7ElementSciRts_s5Error_p7FailureSciRtsXPMd, &_sSci_p15TokenGeneration21PromptCompletionEvent_p7ElementSciRts_s5Error_p7FailureSciRtsXPMR);
  return swift_dynamicCast();
}

uint64_t PromptCompletionStream.init(streamResponse:bufferResponse:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (**a5)()@<X8>)
{
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = a1;
  *(v11 + 32) = a2;
  *a5 = closure #1 in PromptCompletionStream.init(streamResponse:bufferResponse:)partial apply;
  a5[1] = v11;
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v12 + 24) = a3;
  *(v12 + 32) = a4;
  a5[2] = &closure #2 in PromptCompletionStream.init(streamResponse:bufferResponse:)partial apply;
  a5[3] = v12;
}

void *protocol witness for static AtomicRepresentable.decodeAtomicRepresentation(_:) in conformance PromptCompletionStream.TriggeredState@<X0>(void *result@<X0>, _BYTE *a2@<X8>)
{
  if (*result > 2uLL)
  {
    __break(1u);
  }

  else
  {
    *a2 = *result;
  }

  return result;
}

uint64_t closure #1 in PromptCompletionStream.init(streamResponse:bufferResponse:)(uint64_t a1, uint64_t (*a2)(void))
{
  v2 = 0;
  atomic_compare_exchange_strong((a1 + 16), &v2, 1uLL);
  if (v2 > 2)
  {
    __break(1u);
  }

  else if (!v2)
  {
    return a2();
  }

  _StringGuts.grow(_:)(52);
  MEMORY[0x1AC5A5BC0](0xD000000000000032, 0x80000001ABA416E0);
  _print_unlocked<A, B>(_:_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t closure #2 in PromptCompletionStream.init(streamResponse:bufferResponse:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[4] = a1;
  v4[5] = a2;
  return MEMORY[0x1EEE6DFA0](closure #2 in PromptCompletionStream.init(streamResponse:bufferResponse:), 0, 0);
}

void closure #2 in PromptCompletionStream.init(streamResponse:bufferResponse:)()
{
  v1 = 0;
  atomic_compare_exchange_strong((*(v0 + 40) + 16), &v1, 2uLL);
  if (v1 > 2)
  {
    __break(1u);
  }

  else if (v1)
  {
    _StringGuts.grow(_:)(52);
    *(v0 + 16) = 0;
    *(v0 + 24) = 0xE000000000000000;
    MEMORY[0x1AC5A5BC0](0xD000000000000032, 0x80000001ABA416A0);
    *(v0 + 72) = v1;
    _print_unlocked<A, B>(_:_:)();
    _assertionFailure(_:_:file:line:flags:)();
  }

  else
  {
    v4 = (*(v0 + 48) + **(v0 + 48));
    v2 = swift_task_alloc();
    *(v0 + 64) = v2;
    *v2 = v0;
    v2[1] = closure #2 in PromptCompletionStream.init(streamResponse:bufferResponse:);
    v3 = *(v0 + 32);

    v4(v3);
  }
}

uint64_t closure #2 in PromptCompletionStream.init(streamResponse:bufferResponse:)()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t PromptCompletionStream.makeAsyncIterator()@<X0>(uint64_t *a1@<X8>)
{
  (*v1)(v9);
  v3 = __swift_project_boxed_opaque_existential_1(v9, v9[3]);
  v4 = MEMORY[0x1EEE9AC00](v3);
  (*(v6 + 16))(&v9[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  a1[3] = swift_getAssociatedTypeWitness();
  a1[4] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(a1);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  return __swift_destroy_boxed_opaque_existential_0(v9);
}

uint64_t PromptCompletionStream.AsyncIterator.next()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](PromptCompletionStream.AsyncIterator.next(), 0, 0);
}

uint64_t PromptCompletionStream.AsyncIterator.next()()
{
  static Task<>.checkCancellation()();
  v1 = v0[3];
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v1, v2);
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = PromptCompletionStream.AsyncIterator.next();
  v5 = v0[2];

  return MEMORY[0x1EEE6D8C8](v5, v2, v3);
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t protocol witness for AsyncIteratorProtocol.next() in conformance PromptCompletionStream.AsyncIterator(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](protocol witness for AsyncIteratorProtocol.next() in conformance PromptCompletionStream.AsyncIterator, 0, 0);
}

uint64_t protocol witness for AsyncIteratorProtocol.next() in conformance PromptCompletionStream.AsyncIterator()
{
  static Task<>.checkCancellation()();
  v1 = v0[3];
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v1, v2);
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = protocol witness for AsyncIteratorProtocol.next() in conformance PromptCompletionStream.AsyncIterator;
  v5 = v0[2];

  return MEMORY[0x1EEE6D8C8](v5, v2, v3);
}

uint64_t _s15TokenGeneration22PromptCompletionStreamV13AsyncIteratorVScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTW(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = v4;
  v5[7] = a4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  return MEMORY[0x1EEE6DFA0](_s15TokenGeneration22PromptCompletionStreamV13AsyncIteratorVScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTY0_, 0, 0);
}

uint64_t _s15TokenGeneration22PromptCompletionStreamV13AsyncIteratorVScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTY0_()
{
  static Task<>.checkCancellation()();
  v1 = v0[6];
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v1, v2);
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = _s15TokenGeneration22PromptCompletionStreamV13AsyncIteratorVScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTQ1_;
  v5 = v0[3];

  return MEMORY[0x1EEE6D8C8](v5, v2, v3);
}

uint64_t _s15TokenGeneration22PromptCompletionStreamV13AsyncIteratorVScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTQ1_()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    *(v2 + 72) = v0;
    if (*(v2 + 32))
    {
      swift_getObjectType();
      v4 = dispatch thunk of Actor.unownedExecutor.getter();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    return MEMORY[0x1EEE6DFA0](_s15TokenGeneration22PromptCompletionStreamV13AsyncIteratorVScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTY2_, v4, v6);
  }

  else
  {
    v7 = *(v3 + 8);

    return v7();
  }
}

uint64_t _s15TokenGeneration22PromptCompletionStreamV13AsyncIteratorVScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTY2_()
{
  v1 = v0[9];
  v2 = v0[7];
  v0[2] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  swift_willThrowTypedImpl();
  *v2 = v1;
  v3 = v0[1];

  return v3();
}

uint64_t protocol witness for AsyncSequence.makeAsyncIterator() in conformance PromptCompletionStream@<X0>(uint64_t *a1@<X8>)
{
  (*v1)(v9);
  v3 = __swift_project_boxed_opaque_existential_1(v9, v9[3]);
  v4 = MEMORY[0x1EEE9AC00](v3);
  (*(v6 + 16))(&v9[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  a1[3] = swift_getAssociatedTypeWitness();
  a1[4] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(a1);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  __swift_destroy_boxed_opaque_existential_0(v9);
}

uint64_t PromptCompletionEventModelInformation.responseIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PromptCompletionEventModelInformation.responseIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

double PromptCompletionEventModelInformation.modelInformation.getter@<D0>(void *a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  *a1 = v1[2];
  a1[1] = v2;
  a1[2] = v3;

  return result;
}

__n128 PromptCompletionEventModelInformation.modelInformation.setter(__n128 *a1)
{
  v4 = *a1;
  v2 = a1[1].n128_u64[0];

  result = v4;
  v1[1] = v4;
  v1[2].n128_u64[0] = v2;
  return result;
}

void __swiftcall PromptCompletionEventModelInformation.init(responseIdentifier:modelInformation:)(TokenGeneration::PromptCompletionEventModelInformation *__return_ptr retstr, Swift::String responseIdentifier, TokenGeneration::ModelInformation modelInformation)
{
  v3 = *modelInformation.assets._rawValue;
  retstr->responseIdentifier = responseIdentifier;
  retstr->modelInformation.assets._rawValue = v3;
  retstr->modelInformation.systemVersion = *(modelInformation.assets._rawValue + 8);
}

void PromptCompletionEventModelInformation.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 32);
  String.hash(into:)();
  specialized Array<A>.hash(into:)(a1, v3);
  if (v4)
  {
    Hasher._combine(_:)(1u);

    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int PromptCompletionEventModelInformation.hashValue.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  Hasher.init(_seed:)();
  String.hash(into:)();
  specialized Array<A>.hash(into:)(v4, v1);
  if (v2)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PromptCompletionEventModelInformation()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  Hasher.init(_seed:)();
  String.hash(into:)();
  specialized Array<A>.hash(into:)(v4, v1);
  if (v2)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance PromptCompletionEventModelInformation(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 32);
  String.hash(into:)();
  specialized Array<A>.hash(into:)(a1, v3);
  if (v4)
  {
    Hasher._combine(_:)(1u);

    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PromptCompletionEventModelInformation(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 32);
  Hasher.init(_seed:)();
  String.hash(into:)();
  specialized Array<A>.hash(into:)(v5, v2);
  if (v3)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

uint64_t PromptCompletionEventPromptModeration.responseIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PromptCompletionEventPromptModeration.responseIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

double PromptCompletionEventPromptModeration.moderation.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 16);

  return result;
}

uint64_t PromptCompletionEventPromptModeration.moderation.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 16) = v2;
  return result;
}

TokenGeneration::PromptCompletionEventPromptModeration __swiftcall PromptCompletionEventPromptModeration.init(responseIdentifier:moderation:)(Swift::String responseIdentifier, TokenGeneration::PromptCompletion::Moderation moderation)
{
  v3 = *moderation.ratings._rawValue;
  *v2 = responseIdentifier;
  v2[1]._countAndFlagsBits = v3;
  result.responseIdentifier = responseIdentifier;
  result.moderation = moderation;
  return result;
}

void PromptCompletionEventPromptModeration.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 16);
  String.hash(into:)();

  specialized Dictionary<>.hash(into:)(a1, v3);
}

Swift::Int PromptCompletionEventPromptModeration.hashValue.getter()
{
  v1 = *(v0 + 16);
  Hasher.init(_seed:)();
  String.hash(into:)();
  specialized Dictionary<>.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PromptCompletionEventPromptModeration()
{
  v1 = *(v0 + 16);
  Hasher.init(_seed:)();
  String.hash(into:)();
  specialized Dictionary<>.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance PromptCompletionEventPromptModeration(uint64_t a1)
{
  v3 = *(v1 + 16);
  String.hash(into:)();

  specialized Dictionary<>.hash(into:)(a1, v3);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PromptCompletionEventPromptModeration(uint64_t a1)
{
  v2 = *(v1 + 16);
  Hasher.init(_seed:)();
  String.hash(into:)();
  specialized Dictionary<>.hash(into:)(v4, v2);
  return Hasher._finalize()();
}

uint64_t PromptCompletionEventCandidateModeration.candidateIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t PromptCompletionEventCandidateModeration.candidateIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

double PromptCompletionEventCandidateModeration.moderation.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 32);

  return result;
}

uint64_t PromptCompletionEventCandidateModeration.moderation.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 32) = v2;
  return result;
}

void __swiftcall PromptCompletionEventCandidateModeration.init(responseIdentifier:candidateIdentifier:moderation:)(TokenGeneration::PromptCompletionEventCandidateModeration *__return_ptr retstr, Swift::String responseIdentifier, Swift::String candidateIdentifier, TokenGeneration::PromptCompletion::Moderation moderation)
{
  v4 = *moderation.ratings._rawValue;
  retstr->responseIdentifier = responseIdentifier;
  retstr->candidateIdentifier = candidateIdentifier;
  retstr->moderation.ratings._rawValue = v4;
}

void PromptCompletionEventCandidateModeration.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 32);
  String.hash(into:)();
  String.hash(into:)();

  specialized Dictionary<>.hash(into:)(a1, v3);
}

Swift::Int PromptCompletionEventCandidateModeration.hashValue.getter()
{
  v1 = *(v0 + 32);
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  specialized Dictionary<>.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PromptCompletionEventCandidateModeration()
{
  v1 = *(v0 + 32);
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  specialized Dictionary<>.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance PromptCompletionEventCandidateModeration(uint64_t a1)
{
  v3 = *(v1 + 32);
  String.hash(into:)();
  String.hash(into:)();

  specialized Dictionary<>.hash(into:)(a1, v3);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PromptCompletionEventCandidateModeration(uint64_t a1)
{
  v2 = *(v1 + 32);
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  specialized Dictionary<>.hash(into:)(v4, v2);
  return Hasher._finalize()();
}

uint64_t PromptCompletionEventCandidateTextDelta.responseIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PromptCompletionEventCandidateTextDelta.responseIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t PromptCompletionEventCandidateTextDelta.candidateIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t PromptCompletionEventCandidateTextDelta.candidateIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t PromptCompletionEventCandidateTextDelta.textDelta.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t PromptCompletionEventCandidateTextDelta.textDelta.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t PromptCompletionEventCandidateTextDelta._userInfo.getter()
{
  v1 = *(v0 + 56);
  outlined copy of Data?(v1, *(v0 + 64));
  return v1;
}

uint64_t PromptCompletionEventCandidateTextDelta._userInfo.setter(uint64_t a1, uint64_t a2)
{
  result = outlined consume of Data?(*(v2 + 56), *(v2 + 64));
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

void PromptCompletionEventCandidateTextDelta.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 64);
  String.hash(into:)();
  String.hash(into:)();
  MEMORY[0x1AC5A6570](v2);
  String.hash(into:)();
  if (v3 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);

    Data.hash(into:)();
  }
}

Swift::Int PromptCompletionEventCandidateTextDelta.hashValue.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 64);
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  MEMORY[0x1AC5A6570](v1);
  String.hash(into:)();
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

void protocol witness for Hashable.hash(into:) in conformance PromptCompletionEventCandidateTextDelta(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 64);
  String.hash(into:)();
  String.hash(into:)();
  MEMORY[0x1AC5A6570](v2);
  String.hash(into:)();
  if (v3 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);

    Data.hash(into:)();
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PromptCompletionEventCandidateTextDelta(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 64);
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  MEMORY[0x1AC5A6570](v2);
  String.hash(into:)();
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

uint64_t PromptCompletionEventCandidateAnnotation.hash(into:)(uint64_t a1)
{
  String.hash(into:)();
  String.hash(into:)();
  MEMORY[0x1AC5A6570](*(v1 + 32));
  v3 = type metadata accessor for PromptCompletionEventCandidateAnnotation(0);
  MEMORY[0x1AC5A6570](*(v1 + *(v3 + 28)));
  type metadata accessor for PromptCompletion.Annotation(0);
  return PromptCompletion.Annotation.Type.hash(into:)(a1);
}

Swift::Int PromptCompletionEventCandidateAnnotation.hashValue.getter()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  MEMORY[0x1AC5A6570](*(v0 + 32));
  v1 = type metadata accessor for PromptCompletionEventCandidateAnnotation(0);
  MEMORY[0x1AC5A6570](*(v0 + *(v1 + 28)));
  type metadata accessor for PromptCompletion.Annotation(0);
  PromptCompletion.Annotation.Type.hash(into:)(v3);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PromptCompletionEventCandidateAnnotation(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  MEMORY[0x1AC5A6570](*(v1 + 32));
  MEMORY[0x1AC5A6570](*(v1 + *(a1 + 28)));
  type metadata accessor for PromptCompletion.Annotation(0);
  PromptCompletion.Annotation.Type.hash(into:)(v4);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PromptCompletionEventCandidateAnnotation(uint64_t a1, uint64_t a2)
{
  String.hash(into:)();
  String.hash(into:)();
  MEMORY[0x1AC5A6570](*(v2 + 32));
  MEMORY[0x1AC5A6570](*(v2 + *(a2 + 28)));
  type metadata accessor for PromptCompletion.Annotation(0);
  return PromptCompletion.Annotation.Type.hash(into:)(a1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PromptCompletionEventCandidateAnnotation(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  MEMORY[0x1AC5A6570](*(v2 + 32));
  MEMORY[0x1AC5A6570](*(v2 + *(a2 + 28)));
  type metadata accessor for PromptCompletion.Annotation(0);
  PromptCompletion.Annotation.Type.hash(into:)(v5);
  return Hasher._finalize()();
}

uint64_t PromptCompletionEventCandidateToolCallDelta.responseIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PromptCompletionEventCandidateToolCallDelta.responseIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t PromptCompletionEventCandidateToolCallDelta.candidateIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t PromptCompletionEventCandidateToolCallDelta.candidateIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t PromptCompletionEventCandidateToolCallDelta.toolCallIdentifier.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t PromptCompletionEventCandidateToolCallDelta.toolCallIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t PromptCompletionEventCandidateToolCallDelta.functionName.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t PromptCompletionEventCandidateToolCallDelta.functionName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t PromptCompletionEventCandidateToolCallDelta.argumentsDelta.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t PromptCompletionEventCandidateToolCallDelta.argumentsDelta.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t PromptCompletionEventCandidateToolCallDelta._userInfo.getter()
{
  v1 = *(v0 + 80);
  outlined copy of Data?(v1, *(v0 + 88));
  return v1;
}

uint64_t PromptCompletionEventCandidateToolCallDelta._userInfo.setter(uint64_t a1, uint64_t a2)
{
  result = outlined consume of Data?(*(v2 + 80), *(v2 + 88));
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

double PromptCompletionEventCandidateToolCallDelta.init(responseIdentifier:candidateIdentifier:toolCallIdentifier:functionName:argumentsDelta:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  result = 0.0;
  *(a9 + 80) = xmmword_1ABA1D8C0;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11;
  return result;
}

void PromptCompletionEventCandidateToolCallDelta.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 88);
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  if (v2 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);

    Data.hash(into:)();
  }
}

Swift::Int PromptCompletionEventCandidateToolCallDelta.hashValue.getter()
{
  v1 = *(v0 + 88);
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  if (v1 >> 60 == 15)
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

void protocol witness for Hashable.hash(into:) in conformance PromptCompletionEventCandidateToolCallDelta(uint64_t a1)
{
  v2 = *(v1 + 88);
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  if (v2 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);

    Data.hash(into:)();
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PromptCompletionEventCandidateToolCallDelta(uint64_t a1)
{
  v2 = *(v1 + 88);
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
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

uint64_t PromptCompletionEventCandidateFileGeneration.candidateIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t PromptCompletionEventCandidateFileGeneration.candidateIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t PromptCompletionEventCandidateAnnotation.init(responseIdentifier:candidateIdentifier:segmentIndex:annotation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t (*a7)(void)@<X6>, uint64_t (*a8)(void)@<X7>, void *a9@<X8>)
{
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  v12 = a7(0);
  return outlined init with take of PromptCompletion.Annotation(a6, a9 + *(v12 + 28), a8);
}

uint64_t PromptCompletionEventCandidateFileGeneration.hash(into:)(uint64_t a1)
{
  String.hash(into:)();
  String.hash(into:)();
  MEMORY[0x1AC5A6570](*(v1 + 32));
  v2 = v1 + *(type metadata accessor for PromptCompletionEventCandidateFileGeneration(0) + 28);
  type metadata accessor for URL();
  lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  dispatch thunk of Hashable.hash(into:)();
  v3 = type metadata accessor for PromptCompletion.FileContent(0);
  String.hash(into:)();
  String.hash(into:)();
  return MEMORY[0x1AC5A65A0](*(v2 + *(v3 + 28)));
}

Swift::Int PromptCompletionEventCandidateFileGeneration.hashValue.getter()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  MEMORY[0x1AC5A6570](*(v0 + 32));
  v1 = v0 + *(type metadata accessor for PromptCompletionEventCandidateFileGeneration(0) + 28);
  type metadata accessor for URL();
  lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  dispatch thunk of Hashable.hash(into:)();
  v2 = type metadata accessor for PromptCompletion.FileContent(0);
  String.hash(into:)();
  String.hash(into:)();
  MEMORY[0x1AC5A65A0](*(v1 + *(v2 + 28)));
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PromptCompletionEventCandidateFileGeneration(uint64_t a1, uint64_t a2)
{
  String.hash(into:)();
  String.hash(into:)();
  MEMORY[0x1AC5A6570](*(v2 + 32));
  v4 = v2 + *(a2 + 28);
  type metadata accessor for URL();
  lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  dispatch thunk of Hashable.hash(into:)();
  v5 = type metadata accessor for PromptCompletion.FileContent(0);
  String.hash(into:)();
  String.hash(into:)();
  return MEMORY[0x1AC5A65A0](*(v4 + *(v5 + 28)));
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PromptCompletionEventCandidateFileGeneration(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  MEMORY[0x1AC5A6570](*(v2 + 32));
  v4 = v2 + *(a2 + 28);
  type metadata accessor for URL();
  lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  dispatch thunk of Hashable.hash(into:)();
  v5 = type metadata accessor for PromptCompletion.FileContent(0);
  String.hash(into:)();
  String.hash(into:)();
  MEMORY[0x1AC5A65A0](*(v4 + *(v5 + 28)));
  return Hasher._finalize()();
}

uint64_t PromptCompletionEventCandidateAudioGeneration.responseIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PromptCompletionEventCandidateAudioGeneration.responseIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t PromptCompletionEventCandidateAudioGeneration.candidateIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t PromptCompletionEventCandidateAudioGeneration.candidateIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

void PromptCompletionEventCandidateAudioGeneration.audio.getter(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  *a1 = v2;
  a1[1] = v3;
  outlined copy of Data._Representation(v2, v3);
}

uint64_t PromptCompletionEventCandidateImageGeneration.image.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = outlined consume of Data._Representation(*(v1 + 40), *(v1 + 48));
  *(v1 + 40) = v2;
  *(v1 + 48) = v3;
  return result;
}

__n128 PromptCompletionEventCandidateAudioGeneration.init(responseIdentifier:candidateIdentifier:segmentIndex:audio:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, __n128 *a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  result = *a6;
  *(a7 + 40) = *a6;
  return result;
}

uint64_t PromptCompletionEventCandidateImageGeneration.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 32);
  String.hash(into:)();
  String.hash(into:)();
  MEMORY[0x1AC5A6570](v2);

  return Data.hash(into:)();
}

Swift::Int PromptCompletionEventCandidateImageGeneration.hashValue.getter()
{
  v1 = *(v0 + 32);
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  MEMORY[0x1AC5A6570](v1);
  Data.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PromptCompletionEventCandidateImageGeneration(uint64_t a1)
{
  v2 = *(v1 + 32);
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  MEMORY[0x1AC5A6570](v2);
  Data.hash(into:)();
  return Hasher._finalize()();
}

uint64_t PromptCompletionEventCandidateFinished.responseIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PromptCompletionEventCandidateFinished.responseIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t PromptCompletionEventCandidateFinished.candidateIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t PromptCompletionEventCandidateFinished.candidateIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t PromptCompletionEventCandidateFinished.finishReason.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  *a1 = v2;
  a1[1] = v3;
  return outlined copy of FinishReason(v2, v3);
}

uint64_t PromptCompletionEventCandidateFinished.finishReason.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = outlined consume of FinishReason(*(v1 + 32), *(v1 + 40));
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  return result;
}

void PromptCompletionEventCandidateFinished.init(responseIdentifier:candidateIdentifier:finishReason:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, void *a6@<X8>)
{
  v22[1] = *MEMORY[0x1E69E9840];
  v13 = *a5;
  v12 = a5[1];
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v14 = objc_opt_self();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v22[0] = 0;
  v16 = [v14 dataWithJSONObject:isa options:0 error:v22];

  v17 = v22[0];
  if (!v16)
  {
    v21 = v17;
    outlined consume of FinishReason(v13, v12);

    _convertNSErrorToError(_:)();

    swift_willThrow();
    __break(1u);
  }

  v18 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  *a6 = a1;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = v13;
  a6[5] = v12;
  a6[6] = v18;
  a6[7] = v20;
}

void PromptCompletionEventCandidateFinished.init(responseIdentifier:candidateIdentifier:finishReason:metadata:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, void *a7@<X8>)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v12 = *a5;
  v13 = a5[1];
  v14 = objc_opt_self();
  outlined copy of FinishReason(v12, v13);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v21[0] = 0;
  v16 = [v14 dataWithJSONObject:isa options:0 error:v21];

  v17 = v21[0];
  outlined consume of FinishReason(v12, v13);
  if (!v16)
  {

    _convertNSErrorToError(_:)();

    swift_willThrow();
    __break(1u);
  }

  v18 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  *a7 = a1;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = v12;
  a7[5] = v13;
  a7[6] = v18;
  a7[7] = v20;
}

uint64_t PromptCompletionEventCandidateFinished.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 40);
  String.hash(into:)();
  String.hash(into:)();
  switch(v2)
  {
    case 0:
      v3 = 0;
      goto LABEL_7;
    case 1:
      v3 = 2;
      goto LABEL_7;
    case 2:
      v3 = 3;
LABEL_7:
      MEMORY[0x1AC5A6570](v3);
      goto LABEL_9;
  }

  MEMORY[0x1AC5A6570](1);
  String.hash(into:)();
LABEL_9:

  return Data.hash(into:)();
}

Swift::Int PromptCompletionEventCandidateFinished.hashValue.getter()
{
  v1 = *(v0 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  if (v1)
  {
    if (v1 == 1)
    {
      v2 = 2;
    }

    else
    {
      if (v1 != 2)
      {
        MEMORY[0x1AC5A6570](1);
        String.hash(into:)();
        goto LABEL_9;
      }

      v2 = 3;
    }
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x1AC5A6570](v2);
LABEL_9:
  Data.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PromptCompletionEventCandidateFinished(uint64_t a1)
{
  v2 = *(v1 + 40);
  String.hash(into:)();
  String.hash(into:)();
  switch(v2)
  {
    case 0:
      v3 = 0;
      goto LABEL_7;
    case 1:
      v3 = 2;
      goto LABEL_7;
    case 2:
      v3 = 3;
LABEL_7:
      MEMORY[0x1AC5A6570](v3);
      goto LABEL_9;
  }

  MEMORY[0x1AC5A6570](1);
  String.hash(into:)();
LABEL_9:

  return Data.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PromptCompletionEventCandidateFinished(uint64_t a1)
{
  v2 = *(v1 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  if (v2)
  {
    if (v2 == 1)
    {
      v3 = 2;
    }

    else
    {
      if (v2 != 2)
      {
        MEMORY[0x1AC5A6570](1);
        String.hash(into:)();
        goto LABEL_9;
      }

      v3 = 3;
    }
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x1AC5A6570](v3);
LABEL_9:
  Data.hash(into:)();
  return Hasher._finalize()();
}

uint64_t PromptCompletionEventUsage.responseIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PromptCompletionEventUsage.responseIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

__n128 PromptCompletionEventUsage.usage.getter@<Q0>(__n128 *a1@<X8>)
{
  result = v1[1];
  *a1 = result;
  return result;
}

__n128 PromptCompletionEventUsage.usage.setter(__n128 *a1)
{
  result = *a1;
  v1[1] = *a1;
  return result;
}

TokenGeneration::PromptCompletionEventUsage __swiftcall PromptCompletionEventUsage.init(responseIdentifier:usage:)(Swift::String responseIdentifier, TokenGeneration::Usage usage)
{
  *v2 = responseIdentifier;
  *(v2 + 16) = *usage.promptTokenCount;
  result.usage = usage;
  result.responseIdentifier = responseIdentifier;
  return result;
}

BOOL static PromptCompletionEventUsage.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return v2 == v4 && v3 == v5;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  result = 0;
  if (v7)
  {
    return v2 == v4 && v3 == v5;
  }

  return result;
}

uint64_t PromptCompletionEventUsage.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  String.hash(into:)();
  MEMORY[0x1AC5A6570](v2);
  return MEMORY[0x1AC5A6570](v3);
}

Swift::Int PromptCompletionEventUsage.hashValue.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  Hasher.init(_seed:)();
  String.hash(into:)();
  MEMORY[0x1AC5A6570](v1);
  MEMORY[0x1AC5A6570](v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PromptCompletionEventUsage()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  Hasher.init(_seed:)();
  String.hash(into:)();
  MEMORY[0x1AC5A6570](v1);
  MEMORY[0x1AC5A6570](v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PromptCompletionEventUsage(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  String.hash(into:)();
  MEMORY[0x1AC5A6570](v2);
  return MEMORY[0x1AC5A6570](v3);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PromptCompletionEventUsage(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  Hasher.init(_seed:)();
  String.hash(into:)();
  MEMORY[0x1AC5A6570](v2);
  MEMORY[0x1AC5A6570](v3);
  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance PromptCompletionEventUsage(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return v2 == v4 && v3 == v5;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  result = 0;
  if (v7)
  {
    return v2 == v4 && v3 == v5;
  }

  return result;
}

uint64_t PromptCompletionEventRenderedPrompt.responseIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PromptCompletionEventRenderedPrompt.responseIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t PromptCompletionEventRenderedPrompt.renderedPrompt.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = *(type metadata accessor for PromptCompletionEventRenderedPrompt(0) + 20);
  v5 = type metadata accessor for Prompt.Rendering();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v2 + v4, v5);
}

uint64_t PromptCompletionEventRenderedPrompt.renderedPrompt.setter(uint64_t a1, __n128 a2)
{
  v4 = *(type metadata accessor for PromptCompletionEventRenderedPrompt(0) + 20);
  v5 = type metadata accessor for Prompt.Rendering();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t PromptCompletionEventRenderedPrompt.init(responseIdentifier:renderedPrompt:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  *(a4 + 1) = a2;
  v7 = *(type metadata accessor for PromptCompletionEventRenderedPrompt(0) + 20);
  v8 = type metadata accessor for Prompt.Rendering();
  v9 = *(*(v8 - 8) + 32);

  return v9(&a4[v7], a3, v8);
}

uint64_t static PromptCompletionEventRenderedPrompt.== infix(_:_:)(uint64_t *a1, void *a2, __n128 a3)
{
  v3 = *a1 == *a2 && a1[1] == a2[1];
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    type metadata accessor for PromptCompletionEventRenderedPrompt(0);

    JUMPOUT(0x1AC5A3840);
  }

  return 0;
}

uint64_t PromptCompletionEventRenderedPrompt.hash(into:)(uint64_t a1)
{
  String.hash(into:)();
  type metadata accessor for PromptCompletionEventRenderedPrompt(0);
  type metadata accessor for Prompt.Rendering();
  lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type Prompt.Rendering and conformance Prompt.Rendering, MEMORY[0x1E69DA838], MEMORY[0x1E69DA840]);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int PromptCompletionEventRenderedPrompt.hashValue.getter()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  type metadata accessor for PromptCompletionEventRenderedPrompt(0);
  type metadata accessor for Prompt.Rendering();
  lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type Prompt.Rendering and conformance Prompt.Rendering, MEMORY[0x1E69DA838], MEMORY[0x1E69DA840]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PromptCompletionEventRenderedPrompt()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  type metadata accessor for Prompt.Rendering();
  lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type Prompt.Rendering and conformance Prompt.Rendering, MEMORY[0x1E69DA838], MEMORY[0x1E69DA840]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PromptCompletionEventRenderedPrompt(uint64_t a1)
{
  String.hash(into:)();
  type metadata accessor for Prompt.Rendering();
  lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type Prompt.Rendering and conformance Prompt.Rendering, MEMORY[0x1E69DA838], MEMORY[0x1E69DA840]);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PromptCompletionEventRenderedPrompt(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  type metadata accessor for Prompt.Rendering();
  lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type Prompt.Rendering and conformance Prompt.Rendering, MEMORY[0x1E69DA838], MEMORY[0x1E69DA840]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance PromptCompletionEventRenderedPrompt(uint64_t *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (v2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    JUMPOUT(0x1AC5A3840);
  }

  return 0;
}

void PromptCompletionEventResponseMetadata.init(responseIdentifier:metadata:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a4@<X8>)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v7 = objc_opt_self();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v15[0] = 0;
  v9 = [v7 dataWithJSONObject:isa options:0 error:v15];

  v10 = v15[0];
  if (!v9)
  {
    v14 = v10;

    _convertNSErrorToError(_:)();

    swift_willThrow();
    __break(1u);
  }

  v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  *a4 = a1;
  a4[1] = a2;
  a4[2] = v11;
  a4[3] = v13;
}

BOOL static PromptCompletionEventResponseMetadata.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  return specialized static Data.== infix(_:_:)(v2, v3, v4, v5);
}

uint64_t PromptCompletionEventResponseMetadata.hash(into:)(uint64_t a1)
{
  String.hash(into:)();

  return Data.hash(into:)();
}

Swift::Int PromptCompletionEventResponseMetadata.hashValue.getter()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  Data.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PromptCompletionEventResponseMetadata()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  Data.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PromptCompletionEventResponseMetadata(uint64_t a1)
{
  String.hash(into:)();

  return Data.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PromptCompletionEventResponseMetadata(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  Data.hash(into:)();
  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance PromptCompletionEventResponseMetadata(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  return specialized static Data.== infix(_:_:)(v2, v3, v4, v5);
}

uint64_t specialized static PromptCompletionEventPromptModeration.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ15TokenGeneration16PromptCompletionV10ModerationV8CategoryV_AG11ProbabilityOTt1g5(v2, v3);

  return v5 & 1;
}

BOOL specialized static PromptCompletionEventCandidateFileGeneration.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  result = 0;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v5 = a1[2] == a2[2] && a1[3] == a2[3];
    if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && a1[4] == a2[4])
    {
      v6 = *(type metadata accessor for PromptCompletionEventCandidateFileGeneration(0) + 28);
      v7 = a1 + v6;
      v8 = a2 + v6;
      if (static URL.== infix(_:_:)())
      {
        v9 = type metadata accessor for PromptCompletion.FileContent(0);
        v10 = v9[5];
        v11 = *&v7[v10];
        v12 = *&v7[v10 + 8];
        v13 = &v8[v10];
        v14 = v11 == *v13 && v12 == *(v13 + 1);
        if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          v15 = v9[6];
          v16 = *&v7[v15];
          v17 = *&v7[v15 + 8];
          v18 = &v8[v15];
          v19 = v16 == *v18 && v17 == *(v18 + 1);
          if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && *&v7[v9[7]] == *&v8[v9[7]])
          {
            return 1;
          }
        }
      }
    }
  }

  return result;
}

BOOL specialized static PromptCompletionEventCandidateAudioGeneration.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a2[2];
  v8 = a2[3];
  v10 = a2[4];
  v9 = a2[5];
  v11 = a2[6];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v2 != v7 || v3 != v8) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || v4 != v10)
  {
    return 0;
  }

  outlined copy of Data._Representation(v5, v6);
  outlined copy of Data._Representation(v9, v11);
  v12 = specialized static Data.== infix(_:_:)(v5, v6, v9, v11);
  outlined consume of Data._Representation(v9, v11);
  outlined consume of Data._Representation(v5, v6);
  return v12;
}

BOOL specialized static PromptCompletionEventModelInformation.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (v8 || (v9 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v9 & 1) != 0))
  {

    if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ15TokenGeneration16ModelInformationV5AssetV_Tt1g5(v2, v5))
    {
      if (!v3)
      {

        if (!v7)
        {
          goto LABEL_17;
        }

        goto LABEL_13;
      }

      if (v7)
      {
        if (v4 == v6 && v3 == v7)
        {

LABEL_17:

          return 1;
        }

        v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

        return (v11 & 1) != 0;
      }
    }

LABEL_13:

    return 0;
  }

  return result;
}

BOOL specialized static PromptCompletionEventCandidateFinished.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v14 = a1[7];
  v15 = a1[6];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  v10 = a2[6];
  v11 = a2[7];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if ((v2 != v6 || v4 != v7) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v18 = v3;
  v19 = v5;
  v16 = v8;
  v17 = v9;
  outlined copy of FinishReason(v3, v5);
  outlined copy of FinishReason(v8, v9);
  v12 = specialized static FinishReason.== infix(_:_:)(&v18, &v16);
  outlined consume of FinishReason(v16, v17);
  outlined consume of FinishReason(v18, v19);
  if ((v12 & 1) == 0)
  {
    return 0;
  }

  return specialized static Data.== infix(_:_:)(v15, v14, v10, v11);
}

BOOL specialized static PromptCompletionEventCandidateTextDelta.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v18 = a1[7];
  v19 = a1[8];
  v7 = a2[2];
  v8 = a2[3];
  v9 = a2[4];
  v10 = a2[5];
  v11 = a2[6];
  v16 = a2[7];
  v17 = a2[8];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v7 && v4 == v8)
  {
    if (v3 != v9)
    {
      return 0;
    }

    goto LABEL_10;
  }

  v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
  result = 0;
  if ((v12 & 1) != 0 && v3 == v9)
  {
LABEL_10:
    if (v5 == v10 && v6 == v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      if (v19 >> 60 == 15)
      {
        v14 = v17;
        if (v17 >> 60 == 15)
        {
          outlined copy of Data?(v18, v19);
          outlined copy of Data?(v16, v17);
          outlined consume of Data?(v18, v19);
          return 1;
        }
      }

      else
      {
        v14 = v17;
        if (v17 >> 60 != 15)
        {
          outlined copy of Data?(v18, v19);
          outlined copy of Data?(v16, v17);
          v15 = specialized static Data.== infix(_:_:)(v18, v19, v16, v17);
          outlined consume of Data?(v16, v17);
          outlined consume of Data?(v18, v19);
          return v15;
        }
      }

      outlined copy of Data?(v18, v19);
      outlined copy of Data?(v16, v14);
      outlined consume of Data?(v18, v19);
      outlined consume of Data?(v16, v14);
    }

    return 0;
  }

  return result;
}

BOOL specialized static PromptCompletionEventCandidateAnnotation.== infix(_:_:)(uint64_t *a1, void *a2, __n128 a3)
{
  v5 = *a1 == *a2 && a1[1] == a2[1];
  result = 0;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v6 = a1[2] == a2[2] && a1[3] == a2[3];
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && a1[4] == a2[4])
    {
      v7 = *(type metadata accessor for PromptCompletionEventCandidateAnnotation(0) + 28);
      v8 = (a1 + v7);
      v9 = (a2 + v7);
      if (*v8 == *v9)
      {
        v10 = type metadata accessor for PromptCompletion.Annotation(0);
        if (specialized static PromptCompletion.Annotation.Type.== infix(_:_:)(v8 + *(v10 + 20), v9 + *(v10 + 20)))
        {
          return 1;
        }
      }
    }
  }

  return result;
}

uint64_t specialized static PromptCompletionEventCandidateModeration.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (!v8 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v9 = v2 == v5 && v4 == v6;
  if (!v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v10 = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ15TokenGeneration16PromptCompletionV10ModerationV8CategoryV_AG11ProbabilityOTt1g5(v3, v7);

  return v10 & 1;
}

BOOL specialized static PromptCompletionEventCandidateToolCallDelta.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v23 = a1[7];
  v24 = a1[6];
  v21 = a1[9];
  v22 = a1[8];
  v17 = a1[10];
  v18 = a1[11];
  v7 = a2[2];
  v6 = a2[3];
  v9 = a2[4];
  v8 = a2[5];
  v10 = a2[6];
  v11 = a2[7];
  v19 = a2[9];
  v20 = a2[8];
  v15 = a2[10];
  v16 = a2[11];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v2 != v7 || v4 != v6) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v3 != v9 || v5 != v8) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v24 != v10 || v23 != v11) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v22 != v20 || v21 != v19) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (v18 >> 60 == 15)
  {
    v12 = v16;
    if (v16 >> 60 == 15)
    {
      outlined copy of Data?(v17, v18);
      outlined copy of Data?(v15, v16);
      outlined consume of Data?(v17, v18);
      return 1;
    }

    goto LABEL_20;
  }

  v12 = v16;
  if (v16 >> 60 == 15)
  {
LABEL_20:
    outlined copy of Data?(v17, v18);
    outlined copy of Data?(v15, v12);
    outlined consume of Data?(v17, v18);
    outlined consume of Data?(v15, v12);
    return 0;
  }

  outlined copy of Data?(v17, v18);
  outlined copy of Data?(v15, v16);
  v14 = specialized static Data.== infix(_:_:)(v17, v18, v15, v16);
  outlined consume of Data?(v15, v16);
  outlined consume of Data?(v17, v18);
  return v14;
}

uint64_t _s15TokenGeneration16PromptCompletionV10AnnotationVWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined assign with take of PromptCompletion.Annotation(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of PromptCompletion.Annotation(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
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

unint64_t lazy protocol witness table accessor for type PromptCompletionStream.AsyncIterator and conformance PromptCompletionStream.AsyncIterator()
{
  result = lazy protocol witness table cache variable for type PromptCompletionStream.AsyncIterator and conformance PromptCompletionStream.AsyncIterator;
  if (!lazy protocol witness table cache variable for type PromptCompletionStream.AsyncIterator and conformance PromptCompletionStream.AsyncIterator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStream.AsyncIterator and conformance PromptCompletionStream.AsyncIterator);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PromptCompletionEventModelInformation and conformance PromptCompletionEventModelInformation()
{
  result = lazy protocol witness table cache variable for type PromptCompletionEventModelInformation and conformance PromptCompletionEventModelInformation;
  if (!lazy protocol witness table cache variable for type PromptCompletionEventModelInformation and conformance PromptCompletionEventModelInformation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionEventModelInformation and conformance PromptCompletionEventModelInformation);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PromptCompletionEventPromptModeration and conformance PromptCompletionEventPromptModeration()
{
  result = lazy protocol witness table cache variable for type PromptCompletionEventPromptModeration and conformance PromptCompletionEventPromptModeration;
  if (!lazy protocol witness table cache variable for type PromptCompletionEventPromptModeration and conformance PromptCompletionEventPromptModeration)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionEventPromptModeration and conformance PromptCompletionEventPromptModeration);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PromptCompletionEventCandidateModeration and conformance PromptCompletionEventCandidateModeration()
{
  result = lazy protocol witness table cache variable for type PromptCompletionEventCandidateModeration and conformance PromptCompletionEventCandidateModeration;
  if (!lazy protocol witness table cache variable for type PromptCompletionEventCandidateModeration and conformance PromptCompletionEventCandidateModeration)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionEventCandidateModeration and conformance PromptCompletionEventCandidateModeration);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PromptCompletionEventCandidateTextDelta and conformance PromptCompletionEventCandidateTextDelta()
{
  result = lazy protocol witness table cache variable for type PromptCompletionEventCandidateTextDelta and conformance PromptCompletionEventCandidateTextDelta;
  if (!lazy protocol witness table cache variable for type PromptCompletionEventCandidateTextDelta and conformance PromptCompletionEventCandidateTextDelta)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionEventCandidateTextDelta and conformance PromptCompletionEventCandidateTextDelta);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PromptCompletionEventCandidateToolCallDelta and conformance PromptCompletionEventCandidateToolCallDelta()
{
  result = lazy protocol witness table cache variable for type PromptCompletionEventCandidateToolCallDelta and conformance PromptCompletionEventCandidateToolCallDelta;
  if (!lazy protocol witness table cache variable for type PromptCompletionEventCandidateToolCallDelta and conformance PromptCompletionEventCandidateToolCallDelta)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionEventCandidateToolCallDelta and conformance PromptCompletionEventCandidateToolCallDelta);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PromptCompletionEventCandidateImageGeneration and conformance PromptCompletionEventCandidateImageGeneration()
{
  result = lazy protocol witness table cache variable for type PromptCompletionEventCandidateImageGeneration and conformance PromptCompletionEventCandidateImageGeneration;
  if (!lazy protocol witness table cache variable for type PromptCompletionEventCandidateImageGeneration and conformance PromptCompletionEventCandidateImageGeneration)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionEventCandidateImageGeneration and conformance PromptCompletionEventCandidateImageGeneration);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PromptCompletionEventCandidateAudioGeneration and conformance PromptCompletionEventCandidateAudioGeneration()
{
  result = lazy protocol witness table cache variable for type PromptCompletionEventCandidateAudioGeneration and conformance PromptCompletionEventCandidateAudioGeneration;
  if (!lazy protocol witness table cache variable for type PromptCompletionEventCandidateAudioGeneration and conformance PromptCompletionEventCandidateAudioGeneration)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionEventCandidateAudioGeneration and conformance PromptCompletionEventCandidateAudioGeneration);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PromptCompletionEventCandidateFinished and conformance PromptCompletionEventCandidateFinished()
{
  result = lazy protocol witness table cache variable for type PromptCompletionEventCandidateFinished and conformance PromptCompletionEventCandidateFinished;
  if (!lazy protocol witness table cache variable for type PromptCompletionEventCandidateFinished and conformance PromptCompletionEventCandidateFinished)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionEventCandidateFinished and conformance PromptCompletionEventCandidateFinished);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PromptCompletionEventUsage and conformance PromptCompletionEventUsage()
{
  result = lazy protocol witness table cache variable for type PromptCompletionEventUsage and conformance PromptCompletionEventUsage;
  if (!lazy protocol witness table cache variable for type PromptCompletionEventUsage and conformance PromptCompletionEventUsage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionEventUsage and conformance PromptCompletionEventUsage);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PromptCompletionEventResponseMetadata and conformance PromptCompletionEventResponseMetadata()
{
  result = lazy protocol witness table cache variable for type PromptCompletionEventResponseMetadata and conformance PromptCompletionEventResponseMetadata;
  if (!lazy protocol witness table cache variable for type PromptCompletionEventResponseMetadata and conformance PromptCompletionEventResponseMetadata)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionEventResponseMetadata and conformance PromptCompletionEventResponseMetadata);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PromptCompletionStream(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t storeEnumTagSinglePayload for PromptCompletionStream(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for PromptCompletionEventPromptModeration(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for PromptCompletionEventPromptModeration(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (a2 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 8);
    if (v5 >= 0xFFFFFFFF)
    {
      LODWORD(v5) = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = a4(0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm_1(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = a5(0);
    v9 = *(*(v8 - 8) + 56);
    v10 = v6 + *(a4 + 28);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t type metadata completion function for PromptCompletionEventCandidateAnnotation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PromptCompletionEventCandidateImageGeneration(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t storeEnumTagSinglePayload for PromptCompletionEventCandidateImageGeneration(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
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

uint64_t getEnumTagSinglePayload for PromptCompletionEventCandidateFinished(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t storeEnumTagSinglePayload for PromptCompletionEventCandidateFinished(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata completion function for PromptCompletionEventRenderedPrompt(uint64_t a1)
{
  result = type metadata accessor for Prompt.Rendering();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for PromptCompletionEventUsage(uint64_t result, int a2, int a3)
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

unint64_t lazy protocol witness table accessor for type PromptCompletionStream.TriggeredState and conformance PromptCompletionStream.TriggeredState()
{
  result = lazy protocol witness table cache variable for type PromptCompletionStream.TriggeredState and conformance PromptCompletionStream.TriggeredState;
  if (!lazy protocol witness table cache variable for type PromptCompletionStream.TriggeredState and conformance PromptCompletionStream.TriggeredState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStream.TriggeredState and conformance PromptCompletionStream.TriggeredState);
  }

  return result;
}

uint64_t specialized == infix<A>(_:_:)(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x74706D6F72705FLL;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0xD000000000000013;
    }

    else
    {
      v4 = 0x7461646174656D5FLL;
    }

    if (v3 == 2)
    {
      v5 = 0x80000001ABA3F3F0;
    }

    else
    {
      v5 = 0xE900000000000061;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x5674706D6F72705FLL;
    }

    else
    {
      v4 = 0x74706D6F72705FLL;
    }

    if (v3)
    {
      v5 = 0xEE00746E61697261;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0xD000000000000013;
  v8 = 0x80000001ABA3F3F0;
  if (a2 != 2)
  {
    v7 = 0x7461646174656D5FLL;
    v8 = 0xE900000000000061;
  }

  if (a2)
  {
    v2 = 0x5674706D6F72705FLL;
    v6 = 0xEE00746E61697261;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

{
  v2 = a1;
  if (a1 <= 3u)
  {
    v11 = 0xE700000000000000;
    v12 = 0xD000000000000013;
    v13 = 0x80000001ABA3F3F0;
    if (a1 != 2)
    {
      v12 = 0x74656D617261705FLL;
      v13 = 0xEB00000000737265;
    }

    v14 = 0x5674706D6F72705FLL;
    if (a1)
    {
      v11 = 0xEE00746E61697261;
    }

    else
    {
      v14 = 0x74706D6F72705FLL;
    }

    if (a1 <= 1u)
    {
      v9 = v14;
    }

    else
    {
      v9 = v12;
    }

    if (v2 <= 1)
    {
      v10 = v11;
    }

    else
    {
      v10 = v13;
    }
  }

  else
  {
    v3 = 0x746E656D75636F64;
    v4 = 0xE900000000000073;
    v5 = 0x69617274736E6F63;
    v6 = 0xEB0000000073746ELL;
    if (a1 != 7)
    {
      v5 = 0x7461646174656D5FLL;
      v6 = 0xE900000000000061;
    }

    if (a1 != 6)
    {
      v3 = v5;
      v4 = v6;
    }

    v7 = 0xE600000000000000;
    v8 = 0x736C6F6F745FLL;
    if (a1 != 4)
    {
      v8 = 0x6F68436C6F6F745FLL;
      v7 = 0xEB00000000656369;
    }

    if (a1 <= 5u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v3;
    }

    if (v2 <= 5)
    {
      v10 = v7;
    }

    else
    {
      v10 = v4;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v15 = 0xEE00746E61697261;
        if (v9 != 0x5674706D6F72705FLL)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v15 = 0xE700000000000000;
        if (v9 != 0x74706D6F72705FLL)
        {
          goto LABEL_52;
        }
      }

      goto LABEL_50;
    }

    if (a2 == 2)
    {
      v15 = 0x80000001ABA3F3F0;
      if (v9 != 0xD000000000000013)
      {
        goto LABEL_52;
      }

      goto LABEL_50;
    }

    v16 = 0x74656D617261705FLL;
    v17 = 7565925;
  }

  else
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v15 = 0xE900000000000073;
        if (v9 != 0x746E656D75636F64)
        {
          goto LABEL_52;
        }
      }

      else if (a2 == 7)
      {
        v15 = 0xEB0000000073746ELL;
        if (v9 != 0x69617274736E6F63)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v15 = 0xE900000000000061;
        if (v9 != 0x7461646174656D5FLL)
        {
          goto LABEL_52;
        }
      }

      goto LABEL_50;
    }

    if (a2 == 4)
    {
      v15 = 0xE600000000000000;
      if (v9 != 0x736C6F6F745FLL)
      {
        goto LABEL_52;
      }

      goto LABEL_50;
    }

    v16 = 0x6F68436C6F6F745FLL;
    v17 = 6644585;
  }

  v15 = v17 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
  if (v9 != v16)
  {
LABEL_52:
    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_53;
  }

LABEL_50:
  if (v10 != v15)
  {
    goto LABEL_52;
  }

  v18 = 1;
LABEL_53:

  return v18 & 1;
}

{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xEB00000000737265;
  v5 = 0x7461646174656D5FLL;
  if (a1 == 2)
  {
    v5 = 0x74656D617261705FLL;
  }

  else
  {
    v4 = 0xE900000000000061;
  }

  v6 = 0xD000000000000013;
  if (a1)
  {
    v3 = 0x80000001ABA3F3F0;
  }

  else
  {
    v6 = 0x74706D6F72705FLL;
  }

  if (a1 <= 1u)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  if (v2 <= 1)
  {
    v8 = v3;
  }

  else
  {
    v8 = v4;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v11 = 0x74656D617261705FLL;
    }

    else
    {
      v11 = 0x7461646174656D5FLL;
    }

    if (a2 == 2)
    {
      v10 = 0xEB00000000737265;
    }

    else
    {
      v10 = 0xE900000000000061;
    }

    if (v7 != v11)
    {
      goto LABEL_31;
    }
  }

  else
  {
    if (a2)
    {
      v9 = 0xD000000000000013;
    }

    else
    {
      v9 = 0x74706D6F72705FLL;
    }

    if (a2)
    {
      v10 = 0x80000001ABA3F3F0;
    }

    else
    {
      v10 = 0xE700000000000000;
    }

    if (v7 != v9)
    {
      goto LABEL_31;
    }
  }

  if (v8 != v10)
  {
LABEL_31:
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_32;
  }

  v12 = 1;
LABEL_32:

  return v12 & 1;
}

{
  v2 = a1;
  if (a1 > 3u)
  {
    v9 = 0x7461646174656D5FLL;
    if (a1 == 6)
    {
      v10 = 0xE900000000000061;
    }

    else
    {
      v9 = 0x5674706D6F72705FLL;
      v10 = 0xEE00746E61697261;
    }

    v11 = 0x746E656D75636F64;
    v12 = 0xE900000000000073;
    if (a1 != 4)
    {
      v11 = 0x69617274736E6F63;
      v12 = 0xEB0000000073746ELL;
    }

    if (a1 <= 5u)
    {
      v7 = v11;
    }

    else
    {
      v7 = v9;
    }

    if (v2 <= 5)
    {
      v8 = v12;
    }

    else
    {
      v8 = v10;
    }
  }

  else
  {
    v3 = 0xE700000000000000;
    v4 = 0xE600000000000000;
    v5 = 0x736C6F6F745FLL;
    if (a1 != 2)
    {
      v5 = 0x6F68436C6F6F745FLL;
      v4 = 0xEB00000000656369;
    }

    v6 = 0x74656D617261705FLL;
    if (a1)
    {
      v3 = 0xEB00000000737265;
    }

    else
    {
      v6 = 0x74706D6F72705FLL;
    }

    if (a1 <= 1u)
    {
      v7 = v6;
    }

    else
    {
      v7 = v5;
    }

    if (v2 <= 1)
    {
      v8 = v3;
    }

    else
    {
      v8 = v4;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v13 = 0xE600000000000000;
        if (v7 != 0x736C6F6F745FLL)
        {
          goto LABEL_48;
        }

        goto LABEL_46;
      }

      v14 = 0x6F68436C6F6F745FLL;
      v15 = 6644585;
    }

    else
    {
      if (!a2)
      {
        v13 = 0xE700000000000000;
        if (v7 != 0x74706D6F72705FLL)
        {
          goto LABEL_48;
        }

        goto LABEL_46;
      }

      v14 = 0x74656D617261705FLL;
      v15 = 7565925;
    }

    v13 = v15 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
    if (v7 != v14)
    {
      goto LABEL_48;
    }

    goto LABEL_46;
  }

  if (a2 > 5u)
  {
    if (a2 == 6)
    {
      v13 = 0xE900000000000061;
      if (v7 != 0x7461646174656D5FLL)
      {
        goto LABEL_48;
      }
    }

    else
    {
      v13 = 0xEE00746E61697261;
      if (v7 != 0x5674706D6F72705FLL)
      {
LABEL_48:
        v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_49;
      }
    }
  }

  else if (a2 == 4)
  {
    v13 = 0xE900000000000073;
    if (v7 != 0x746E656D75636F64)
    {
      goto LABEL_48;
    }
  }

  else
  {
    v13 = 0xEB0000000073746ELL;
    if (v7 != 0x69617274736E6F63)
    {
      goto LABEL_48;
    }
  }

LABEL_46:
  if (v8 != v13)
  {
    goto LABEL_48;
  }

  v16 = 1;
LABEL_49:

  return v16 & 1;
}

{
  v2 = 0xE900000000000061;
  v3 = 0x7461646174656D5FLL;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x706D6F725067745FLL;
    }

    else
    {
      v5 = 0x74656D617261705FLL;
    }

    if (v4 == 2)
    {
      v6 = 0xE900000000000074;
    }

    else
    {
      v6 = 0xEB00000000737265;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x74706D6F72705FLL;
    }

    else
    {
      v5 = 0x7461646174656D5FLL;
    }

    if (v4)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xE900000000000061;
    }
  }

  v7 = 0x706D6F725067745FLL;
  v8 = 0xE900000000000074;
  if (a2 != 2)
  {
    v7 = 0x74656D617261705FLL;
    v8 = 0xEB00000000737265;
  }

  if (a2)
  {
    v3 = 0x74706D6F72705FLL;
    v2 = 0xE700000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t a1)
{
  return specialized Array.append<A>(contentsOf:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), type metadata accessor for Prompt.TokenGenerationNonStringContent);
}

{
  return specialized Array.append<A>(contentsOf:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), MEMORY[0x1E69DA800]);
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v10 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  if (v10 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, v4);
  v13 = v11 + v4;
  if (!v12)
  {
    *(v5 + 16) = v13;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

double SamplingParametersEnvelope.init(sealing:)@<D0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[10];
  v4 = a1[12];
  *&v41[32] = a1[11];
  *&v41[48] = v4;
  v5 = a1[6];
  v6 = a1[8];
  v7 = a1[9];
  v39 = a1[7];
  v40 = v6;
  *v41 = v7;
  *&v41[16] = v3;
  v8 = a1[3];
  v34 = a1[2];
  v35 = v8;
  v9 = a1[5];
  v36 = a1[4];
  *&v41[64] = *(a1 + 104);
  v37 = v9;
  v38 = v5;
  v10 = a1[1];
  v32 = *a1;
  v33 = v10;
  v11 = BYTE8(v32);
  if (BYTE8(v32) > 1u)
  {
    v24 = 0;
  }

  else
  {
    v24 = v32;
  }

  v31 = BYTE8(v33);
  v22 = v34;
  v23 = v33;
  v30 = BYTE8(v34);
  v29 = BYTE8(v35);
  v20 = v36;
  v21 = v35;
  v28 = BYTE8(v36);
  v12 = v37;
  v27 = v38;
  v13 = *(&v38 + 1);
  v26 = v39;
  v14 = *(&v39 + 1);
  v25 = v40;
  v15 = WORD1(v40);
  v16 = BYTE4(v40);
  v18 = *(&v40 + 1);
  v17 = *v41;

  outlined destroy of SamplingParameters(&v32);
  *a2 = v24;
  *(a2 + 8) = v11;
  *(a2 + 16) = v23;
  *(a2 + 24) = v31;
  *(a2 + 32) = v22;
  *(a2 + 40) = v30;
  *(a2 + 48) = v21;
  *(a2 + 56) = v29;
  *(a2 + 64) = v20;
  *(a2 + 72) = v28;
  *(a2 + 80) = v12;
  *(a2 + 96) = v27;
  *(a2 + 104) = v13;
  *(a2 + 112) = v26;
  *(a2 + 120) = v14;
  *(a2 + 128) = v25;
  *(a2 + 129) = v15;
  *(a2 + 131) = v16;
  *(a2 + 136) = v18;
  *(a2 + 144) = v17;
  *(a2 + 152) = *&v41[8];
  *(a2 + 168) = *&v41[24];
  *(a2 + 184) = *&v41[40];
  result = *&v41[50];
  *(a2 + 194) = *&v41[50];
  return result;
}

__n128 SamplingParametersEnvelope.unseal()@<Q0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v21 = v1[4];
  v22 = v1[2];
  v20 = v1[6];
  v19 = v1[8];
  v5 = v1[10];
  v18 = v1[11];
  v6 = *(v1 + 13);
  v16 = v1[15];
  v15 = *(v1 + 128);
  v24 = *(v1 + 129);
  v25 = *(v1 + 130);
  v17 = *(v1 + 131);
  v7 = v1[18];
  v23 = v1[17];
  v32 = *(v1 + 19);
  v33 = *(v1 + 21);
  *v34 = *(v1 + 23);
  *&v34[10] = *(v1 + 194);
  if (v4 > 1u)
  {
    v3 = 0;
  }

  v31 = *(v1 + 24);
  v30 = *(v1 + 40);
  v29 = *(v1 + 56);
  v28 = *(v1 + 72);
  v27 = *(v1 + 96);
  v14 = v3;
  if (v1[14])
  {
    v26 = 1;
LABEL_8:

    goto LABEL_14;
  }

  if (v6 > 0.0 && v6 <= 86400.0)
  {
    v26 = 0;
    goto LABEL_8;
  }

  v26 = 1;
  v8 = one-time initialization token for generation;

  if (v8 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Log.generation);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    *(v12 + 4) = v6;
    _os_log_impl(&dword_1AB828000, v10, v11, "Passed in timeout: %f is outside of reasonable bounds (0, 86400]. Ignoring passed in timeout", v12, 0xCu);
    MEMORY[0x1AC5A6CD0](v12, -1, -1);
  }

  v6 = 0.0;
LABEL_14:

  *(a1 + 104) = v6;
  *(a1 + 152) = v32;
  *a1 = v14;
  *(a1 + 8) = v4;
  *(a1 + 16) = v22;
  *(a1 + 24) = v31;
  *(a1 + 32) = v21;
  *(a1 + 40) = v30;
  *(a1 + 48) = v20;
  *(a1 + 56) = v29;
  *(a1 + 64) = v19;
  *(a1 + 72) = v28;
  *(a1 + 80) = v5;
  *(a1 + 88) = v18;
  *(a1 + 96) = v27;
  *(a1 + 112) = v26;
  *(a1 + 120) = v16;
  *(a1 + 128) = v15;
  *(a1 + 129) = 2;
  *(a1 + 130) = v24;
  *(a1 + 132) = v17;
  *(a1 + 131) = v25;
  *(a1 + 136) = v23;
  *(a1 + 144) = v7;
  *(a1 + 168) = v33;
  *(a1 + 184) = *v34;
  result = *&v34[10];
  *(a1 + 194) = *&v34[10];
  return result;
}

void __swiftcall RequestMetadata.init(invocationIdentifier:functionIdentifier:clientRequestIdentifier:userInfo:)(TokenGeneration::RequestMetadata *__return_ptr retstr, Swift::String invocationIdentifier, Swift::String functionIdentifier, Swift::String_optional clientRequestIdentifier, Swift::OpaquePointer userInfo)
{
  retstr->invocationIdentifier = invocationIdentifier;
  retstr->functionIdentifier = functionIdentifier;
  retstr->clientRequestIdentifier = clientRequestIdentifier;
  retstr->userInfo = userInfo;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay15TokenGeneration6PromptV10AttachmentVG_AF0F8Envelope33_FCE651B3B8F212418F5C81F0A4785E63LLV0gH0Vs5NeverOTg504_s15d12Generation14f11Envelope33_ijklmnopq57LLV7sealing7xpcDataAdA0C0V_3XPC13XPCDictionaryVztcfcAD010G14D0VAH0S0VXEfU_3XPC13XPCDictionaryVTf1cn_n(uint64_t a1, uint64_t a2)
{
  v34 = a2;
  v4 = type metadata accessor for Prompt.AttachmentContent();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v33 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for Prompt.Attachment();
  v6 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PromptEnvelope.AttachmentEnvelope(0);
  v30 = *(v9 - 8);
  v31 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = (v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(a1 + 16);
  v13 = MEMORY[0x1E69E7CC0];
  if (v12)
  {
    v26[1] = v2;
    v35 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12, 0);
    v13 = v35;
    v15 = *(v6 + 16);
    v14 = v6 + 16;
    v16 = a1 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
    v28 = (v14 - 8);
    v29 = v15;
    v27 = *(v14 + 56);
    do
    {
      v17 = v32;
      v18 = v14;
      v29(v8, v16, v32);
      v19 = v33;
      Prompt.Attachment.content.getter();
      PromptEnvelope.AttachmentContentEnvelope.init(sealing:xpcData:)(v19, v34, v11);
      v20 = Prompt.Attachment.position.getter();
      v21 = v31;
      *(v11 + *(v31 + 20)) = v20;
      v22 = Prompt.Attachment.priority.getter();
      (*v28)(v8, v17);
      *(v11 + *(v21 + 24)) = v22;
      v35 = v13;
      v24 = *(v13 + 16);
      v23 = *(v13 + 24);
      if (v24 >= v23 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1);
        v13 = v35;
      }

      *(v13 + 16) = v24 + 1;
      outlined init with take of DocumentRegistrationEnvelope(v11, v13 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v24, type metadata accessor for PromptEnvelope.AttachmentEnvelope);
      v16 += v27;
      --v12;
      v14 = v18;
    }

    while (v12);
  }

  return v13;
}

void _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDy15TokenGeneration16PromptCompletionV10ModerationV8CategoryVAJ11ProbabilityOG_SS_AF0H8Envelope33_FCE651B3B8F212418F5C81F0A4785E63LLV0jK0Ots5NeverOTg504_s15d12Generation16fg3V10h2V8i5VAE11j19OSSAA0E8Envelope33_lmnopqrst39LLV0gH0OIgnnod_AG3key_AI5valuetSS_ANts5U131OIegnrzr_TR04_s15a12Generation18e11Envelope33_ijklmnopq16LLV7sealingAdA16cd18V0C0V_tcfcSS_AD011g7D0OtAI8F14V_AI0Q0OtXEfU_Tf3nnnpf_nTf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v24 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v3 = a1 + 64;
    v4 = _HashTable.startBucket.getter();
    v5 = 0;
    v23 = *(a1 + 36);
    v20 = v1;
    while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(a1 + 32))
    {
      v7 = v4 >> 6;
      if ((*(v3 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
      {
        goto LABEL_22;
      }

      if (v23 != *(a1 + 36))
      {
        goto LABEL_23;
      }

      v8 = (*(a1 + 48) + 16 * v4);
      v9 = v8[1];
      v22 = *v8;
      v21 = *(*(a1 + 56) + v4);
      v10 = *(v24 + 16);
      v11 = *(v24 + 24);

      if (v10 >= v11 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v10 + 1, 1);
      }

      *(v24 + 16) = v10 + 1;
      v12 = v24 + 24 * v10;
      *(v12 + 32) = v22;
      *(v12 + 40) = v9;
      *(v12 + 48) = v21;
      v6 = 1 << *(a1 + 32);
      if (v4 >= v6)
      {
        goto LABEL_24;
      }

      v3 = a1 + 64;
      v13 = *(a1 + 64 + 8 * v7);
      if ((v13 & (1 << v4)) == 0)
      {
        goto LABEL_25;
      }

      if (v23 != *(a1 + 36))
      {
        goto LABEL_26;
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
        v17 = (a1 + 72 + 8 * v7);
        while (v16 < (v6 + 63) >> 6)
        {
          v19 = *v17++;
          v18 = v19;
          v15 += 64;
          ++v16;
          if (v19)
          {
            outlined consume of Set<ModelCatalogStub.AssetKey>.Index._Variant(v4, v23, 0);
            v6 = __clz(__rbit64(v18)) + v15;
            goto LABEL_4;
          }
        }

        outlined consume of Set<ModelCatalogStub.AssetKey>.Index._Variant(v4, v23, 0);
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
LABEL_22:
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
}

void _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDySS15TokenGeneration18ModerationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV011ProbabilityG0OG_AF16PromptCompletionV0F0V8CategoryV_AP0Q0Ots5NeverOTg506_sSS15d12Generation18f11Envelope33_hijklmnop6LLV011q7D0OAA16rs6V0C0V8t38VAJ0N0OIggyrr_SS3key_AF5valuetAL_ANts5u35OIegnrzr_TR04_s15a12Generation18c11Y79_efghijklm14LLV6unsealAA16op10V0C0VyFAI8q6V_AI11N18OtSS_AD0rD0OtXEfU_Tf3nnnpf_nTf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v24 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v3 = a1 + 64;
    v4 = _HashTable.startBucket.getter();
    v5 = 0;
    v23 = *(a1 + 36);
    v20 = v1;
    while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(a1 + 32))
    {
      v7 = v4 >> 6;
      if ((*(v3 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
      {
        goto LABEL_22;
      }

      if (v23 != *(a1 + 36))
      {
        goto LABEL_23;
      }

      v8 = (*(a1 + 48) + 16 * v4);
      v9 = v8[1];
      v22 = *v8;
      v21 = *(*(a1 + 56) + v4);
      v10 = *(v24 + 16);
      v11 = *(v24 + 24);

      if (v10 >= v11 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v10 + 1, 1);
      }

      *(v24 + 16) = v10 + 1;
      v12 = v24 + 24 * v10;
      *(v12 + 32) = v22;
      *(v12 + 40) = v9;
      *(v12 + 48) = v21;
      v6 = 1 << *(a1 + 32);
      if (v4 >= v6)
      {
        goto LABEL_24;
      }

      v3 = a1 + 64;
      v13 = *(a1 + 64 + 8 * v7);
      if ((v13 & (1 << v4)) == 0)
      {
        goto LABEL_25;
      }

      if (v23 != *(a1 + 36))
      {
        goto LABEL_26;
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
        v17 = (a1 + 72 + 8 * v7);
        while (v16 < (v6 + 63) >> 6)
        {
          v19 = *v17++;
          v18 = v19;
          v15 += 64;
          ++v16;
          if (v19)
          {
            outlined consume of Set<ModelCatalogStub.AssetKey>.Index._Variant(v4, v23, 0);
            v6 = __clz(__rbit64(v18)) + v15;
            goto LABEL_4;
          }
        }

        outlined consume of Set<ModelCatalogStub.AssetKey>.Index._Variant(v4, v23, 0);
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
LABEL_22:
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
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay9PromptKit011ChatMessageD0VG_AHs5NeverOTg5(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, __n128 a4)
{
  v5 = v4;
  v21 = a1;
  v22 = a2;
  v20 = type metadata accessor for ChatMessagePrompt();
  v7 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (!v10)
  {
    return v11;
  }

  v23 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10, 0);
  v11 = v23;
  v19 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v12 = a3 + v19;
  v18 = (v7 + 32);
  v13 = *(v7 + 72);
  while (1)
  {
    v21(v12);
    if (v5)
    {
      break;
    }

    v5 = 0;
    v23 = v11;
    v15 = *(v11 + 16);
    v14 = *(v11 + 24);
    if (v15 >= v14 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1);
      v11 = v23;
    }

    *(v11 + 16) = v15 + 1;
    (*v18)(v11 + v19 + v15 * v13, v9, v20);
    v12 += v13;
    if (!--v10)
    {
      return v11;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay15TokenGeneration14PromptEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV010AttachmentG0VG_AF0F0V0Q0Vs5NeverOTg5Tm(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(BOOL, unint64_t, uint64_t), uint64_t (*a6)(void))
{
  v9 = v6;
  v26 = a1;
  v27 = a2;
  v25 = a4(0);
  v11 = *(v25 - 8);
  v12 = MEMORY[0x1EEE9AC00](v25);
  v14 = &v22 - v13;
  v15 = *(a3 + 16);
  v16 = MEMORY[0x1E69E7CC0];
  if (!v15)
  {
    return v16;
  }

  v28 = MEMORY[0x1E69E7CC0];
  v22 = a5;
  (a5)(0, v15, 0, v12);
  v16 = v28;
  v17 = *(a6(0) - 8);
  v18 = a3 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
  v24 = v11 + 32;
  v23 = *(v17 + 72);
  while (1)
  {
    v26(v18);
    if (v9)
    {
      break;
    }

    v9 = 0;
    v28 = v16;
    v20 = *(v16 + 16);
    v19 = *(v16 + 24);
    if (v20 >= v19 >> 1)
    {
      v22(v19 > 1, v20 + 1, 1);
      v16 = v28;
    }

    *(v16 + 16) = v20 + 1;
    (*(v11 + 32))(v16 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v20, v14, v25);
    v18 += v23;
    if (!--v15)
    {
      return v16;
    }
  }

  __break(1u);
  return result;
}

uint64_t ClassifyPromptResponse.response.getter@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v14 - v4;
  v6 = (v1 + *(type metadata accessor for ClassifyPromptResponse(0) + 20));
  v7 = v6[7];
  v14[6] = v6[6];
  v14[7] = v7;
  v14[8] = v6[8];
  v8 = v6[3];
  v14[2] = v6[2];
  v14[3] = v8;
  v9 = v6[5];
  v14[4] = v6[4];
  v14[5] = v9;
  v10 = v6[1];
  v14[0] = *v6;
  v14[1] = v10;
  v11 = type metadata accessor for XPCDictionary();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v5, v1, v11);
  (*(v12 + 56))(v5, 0, 1, v11);
  ClassificationResponseEnvelope.unseal(_:)(a1);
  return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v5, &_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR);
}

uint64_t StreamingRequest.revive(withXpcData:)(uint64_t a1)
{
  v3 = type metadata accessor for CompletePromptTemplateRequest(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CompletePromptRequest(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for StreamingRequest(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of DocumentResourceEnvelope(v1, v11, type metadata accessor for StreamingRequest);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      outlined destroy of DocumentResourceEnvelope(v1, type metadata accessor for StreamingRequest);
      outlined init with take of DocumentRegistrationEnvelope(v11, v5, type metadata accessor for CompletePromptTemplateRequest);
      v13 = type metadata accessor for XPCDictionary();
      (*(*(v13 - 8) + 24))(v5, a1, v13);
      outlined init with take of DocumentRegistrationEnvelope(v5, v1, type metadata accessor for CompletePromptTemplateRequest);
      return swift_storeEnumTagMultiPayload();
    }

    else
    {
      return outlined destroy of DocumentResourceEnvelope(v11, type metadata accessor for StreamingRequest);
    }
  }

  else
  {
    outlined destroy of DocumentResourceEnvelope(v1, type metadata accessor for StreamingRequest);
    outlined init with take of DocumentRegistrationEnvelope(v11, v8, type metadata accessor for CompletePromptRequest);
    v15 = type metadata accessor for XPCDictionary();
    (*(*(v15 - 8) + 24))(v8, a1, v15);
    outlined init with take of DocumentRegistrationEnvelope(v8, v1, type metadata accessor for CompletePromptRequest);
    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t RegisterDocumentRequest.documents.getter()
{
  v23 = type metadata accessor for URL();
  v1 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v22 = v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DocumentResourceEnvelope(0);
  v3 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DocumentResource();
  v6 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v0;
  v10 = *(*v0 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v24 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10, 0);
    v11 = v24;
    v12 = v9 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v13 = *(v3 + 72);
    v14 = (v1 + 16);
    v18[1] = v6 + 32;
    v19 = v13;
    do
    {
      outlined init with copy of DocumentResourceEnvelope(v12, v5, type metadata accessor for DocumentResourceEnvelope);
      (*v14)(v22, v5, v23);

      DocumentResource.init(_:_:_:)();
      outlined destroy of DocumentResourceEnvelope(v5, type metadata accessor for DocumentResourceEnvelope);
      v24 = v11;
      v16 = *(v11 + 16);
      v15 = *(v11 + 24);
      if (v16 >= v15 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1);
        v11 = v24;
      }

      *(v11 + 16) = v16 + 1;
      (*(v6 + 32))(v11 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v16, v8, v20);
      v12 += v19;
      --v10;
    }

    while (v10);
  }

  return v11;
}

double RegisterDocumentRequest.metadata.getter@<D0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v7 = v1[5];
  v6 = v1[6];
  v8 = v1[7];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v7;
  a1[5] = v6;
  a1[6] = v8;

  return result;
}

void __swiftcall RegisterDocumentRequest.init(documents:metadata:)(TokenGeneration::RegisterDocumentRequest *__return_ptr retstr, Swift::OpaquePointer documents, TokenGeneration::RequestMetadata *metadata)
{
  v49 = type metadata accessor for DocumentResource();
  v6 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v48 = &v34 - v10;
  v11 = type metadata accessor for DocumentResourceEnvelope(0);
  v46 = *(v11 - 8);
  v47 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v50 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  countAndFlagsBits = metadata->invocationIdentifier._countAndFlagsBits;
  object = metadata->invocationIdentifier._object;
  v15 = metadata->functionIdentifier._countAndFlagsBits;
  v41 = metadata->functionIdentifier._object;
  clientRequestIdentifier = metadata->clientRequestIdentifier;
  rawValue = metadata->userInfo._rawValue;
  v17 = *(documents._rawValue + 2);
  if (v17)
  {
    v35 = rawValue;
    v36 = v15;
    v37 = object;
    v38 = countAndFlagsBits;
    v40 = retstr;
    v51 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v17, 0);
    v18 = v51;
    v20 = *(v6 + 16);
    v19 = v6 + 16;
    v21 = *(v19 + 64);
    v39 = documents._rawValue;
    v22 = documents._rawValue + ((v21 + 32) & ~v21);
    v43 = *(v19 + 56);
    v44 = v20;
    v23 = (v19 - 8);
    v45 = v19;
    v24 = v48;
    do
    {
      v25 = v49;
      v26 = v44;
      v44(v24, v22, v49);
      v26(v8, v24, v25);
      DocumentResource.url.getter();
      v27 = DocumentResource.fileDescriptor.getter();
      v28 = v47;
      *&v50[*(v47 + 20)] = v27;
      v29 = DocumentResource.metadata.getter();
      v30 = *v23;
      (*v23)(v8, v25);
      v30(v24, v25);
      v31 = v50;
      *&v50[*(v28 + 24)] = v29;
      v51 = v18;
      v33 = v18[2];
      v32 = v18[3];
      if (v33 >= v32 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1);
        v31 = v50;
        v18 = v51;
      }

      v18[2] = v33 + 1;
      outlined init with take of DocumentRegistrationEnvelope(v31, v18 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v33, type metadata accessor for DocumentResourceEnvelope);
      v22 += v43;
      --v17;
    }

    while (v17);

    retstr = v40;
    object = v37;
    countAndFlagsBits = v38;
    rawValue = v35;
    v15 = v36;
  }

  else
  {

    v18 = MEMORY[0x1E69E7CC0];
  }

  retstr->_documents._rawValue = v18;
  retstr->_metadata.invocationIdentifier._countAndFlagsBits = countAndFlagsBits;
  retstr->_metadata.invocationIdentifier._object = object;
  retstr->_metadata.functionIdentifier._countAndFlagsBits = v15;
  retstr->_metadata.functionIdentifier._object = v41;
  retstr->_metadata.clientRequestIdentifier = clientRequestIdentifier;
  retstr->_metadata.userInfo._rawValue = rawValue;
}

uint64_t CompletePromptResponseElement.init(token:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v27 - v8;
  if (one-time initialization token for inference != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Log.inference);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_1AB828000, v11, v12, "Metadata like candidateIdentifier will be bogus because a deprecated initializer is being used. Use init(element:) instead.", v13, 2u);
    MEMORY[0x1AC5A6CD0](v13, -1, -1);
  }

  UUID.init()();
  v14 = UUID.uuidString.getter();
  v16 = v15;
  v17 = *(v4 + 8);
  v17(v9, v3);
  UUID.init()();
  v18 = UUID.uuidString.getter();
  v20 = v19;
  v17(v6, v3);
  v21 = Token.text.getter();
  v23 = v22;
  v30[3] = &type metadata for PromptCompletionEventCandidateTextDelta;
  v30[4] = &protocol witness table for PromptCompletionEventCandidateTextDelta;
  v24 = swift_allocObject();
  v30[0] = v24;
  *(v24 + 16) = v14;
  *(v24 + 24) = v16;
  *(v24 + 32) = v18;
  *(v24 + 40) = v20;
  *(v24 + 48) = 0;
  *(v24 + 56) = v21;
  *(v24 + 64) = v23;
  *(v24 + 72) = xmmword_1ABA1D8C0;
  outlined init with copy of PromptCompletionEvent(v30, v29);
  PromptCompletionStreamElementEnvelope.Envelope.init(sealing:)(v29, v28);
  v25 = type metadata accessor for Token();
  (*(*(v25 - 8) + 8))(a1, v25);
  return __swift_destroy_boxed_opaque_existential_0(v30);
}

uint64_t CompletePromptResponseElement.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with copy of PromptCompletionEvent(a1, v6);
  outlined init with copy of PromptCompletionEvent(v6, v5);
  PromptCompletionStreamElementEnvelope.Envelope.init(sealing:)(v5, a2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return __swift_destroy_boxed_opaque_existential_0(v6);
}

uint64_t CompletePromptResponse.completion.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[9];
  v14[8] = v1[8];
  v14[9] = v3;
  v14[10] = v1[10];
  v4 = v1[5];
  v14[4] = v1[4];
  v14[5] = v4;
  v5 = v1[7];
  v14[6] = v1[6];
  v14[7] = v5;
  v6 = v1[1];
  v14[0] = *v1;
  v14[1] = v6;
  v7 = v1[3];
  v14[2] = v1[2];
  v14[3] = v7;
  outlined init with copy of PromptCompletionEnvelope(v14, v15);
  PromptCompletionEnvelope.unseal()(a1);
  v8 = v1[9];
  v15[8] = v1[8];
  v15[9] = v8;
  v15[10] = v1[10];
  v9 = v1[5];
  v15[4] = v1[4];
  v15[5] = v9;
  v10 = v1[7];
  v15[6] = v1[6];
  v15[7] = v10;
  v11 = v1[1];
  v15[0] = *v1;
  v15[1] = v11;
  v12 = v1[3];
  v15[2] = v1[2];
  v15[3] = v12;
  return outlined destroy of PromptCompletionEnvelope(v15);
}

uint64_t CompletePromptTemplateRequest.prompt.getter@<X0>(uint64_t (*a1)(void, __n128)@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v20 - v7;
  v9 = (v2 + *(a1(0, v6) + 20));
  v10 = v9[1];
  if (v10)
  {
    v12 = v9[2];
    v11 = v9[3];
    v13 = *v9;
    v14 = type metadata accessor for XPCDictionary();
    v15 = *(v14 - 8);
    (*(v15 + 16))(v8, v2, v14);
    (*(v15 + 56))(v8, 0, 1, v14);
    PromptEnvelope.unseal(_:)(v8, v13, v10, v12, v11, a2);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v8, &_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR);
    v16 = type metadata accessor for Prompt();
    return (*(*(v16 - 8) + 56))(a2, 0, 1, v16);
  }

  else
  {
    v18 = type metadata accessor for Prompt();
    v19 = *(*(v18 - 8) + 56);

    return v19(a2, 1, 1, v18);
  }
}

uint64_t CountTokensRequest.prompt.getter@<X0>(uint64_t (*a1)(void, __n128)@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v17 - v7;
  v9 = (v2 + *(a1(0, v6) + 20));
  v10 = *v9;
  v11 = v9[1];
  v12 = v9[2];
  v13 = v9[3];
  v14 = type metadata accessor for XPCDictionary();
  v15 = *(v14 - 8);
  (*(v15 + 16))(v8, v2, v14);
  (*(v15 + 56))(v8, 0, 1, v14);
  PromptEnvelope.unseal(_:)(v8, v10, v11, v12, v13, a2);
  return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v8, &_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR);
}

uint64_t StreamingRequest.xpcData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for CompletePromptTemplateRequest(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CompletePromptRequest(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for StreamingRequest(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of DocumentResourceEnvelope(v2, v12, type metadata accessor for StreamingRequest);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      outlined init with take of DocumentRegistrationEnvelope(v12, v6, type metadata accessor for CompletePromptTemplateRequest);
      v14 = type metadata accessor for XPCDictionary();
      (*(*(v14 - 8) + 16))(a1, v6, v14);
      return outlined destroy of DocumentResourceEnvelope(v6, type metadata accessor for CompletePromptTemplateRequest);
    }

    else
    {
      outlined destroy of DocumentResourceEnvelope(v12, type metadata accessor for StreamingRequest);
      return XPCDictionary.init()();
    }
  }

  else
  {
    outlined init with take of DocumentRegistrationEnvelope(v12, v9, type metadata accessor for CompletePromptRequest);
    v16 = type metadata accessor for XPCDictionary();
    (*(*(v16 - 8) + 16))(a1, v9, v16);
    return outlined destroy of DocumentResourceEnvelope(v9, type metadata accessor for CompletePromptRequest);
  }
}

uint64_t specialized RawRepresentable<>.hash(into:)(uint64_t a1, unsigned __int8 a2)
{
  String.hash(into:)();
}

{
  String.hash(into:)();
}

uint64_t StreamingRequest.encode(to:)(void *a1)
{
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration16StreamingRequestO26RegisterDocumentCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration16StreamingRequestO26RegisterDocumentCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v38 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v37 = &v29 - v2;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration16StreamingRequestO32CompletePromptTemplateCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration16StreamingRequestO32CompletePromptTemplateCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v35 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v34 = &v29 - v3;
  v32 = type metadata accessor for CompletePromptTemplateRequest(0);
  MEMORY[0x1EEE9AC00](v32);
  v33 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration16StreamingRequestO24CompletePromptCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration16StreamingRequestO24CompletePromptCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v30 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v6 = &v29 - v5;
  v7 = type metadata accessor for CompletePromptRequest(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for StreamingRequest(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration16StreamingRequestO10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration16StreamingRequestO10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v41 = *(v13 - 8);
  v42 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v29 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type StreamingRequest.CodingKeys and conformance StreamingRequest.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  outlined init with copy of DocumentResourceEnvelope(v40, v12, type metadata accessor for StreamingRequest);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v17 = v33;
      outlined init with take of DocumentRegistrationEnvelope(v12, v33, type metadata accessor for CompletePromptTemplateRequest);
      LOBYTE(v47) = 1;
      lazy protocol witness table accessor for type StreamingRequest.CompletePromptTemplateCodingKeys and conformance StreamingRequest.CompletePromptTemplateCodingKeys();
      v18 = v34;
      v19 = v42;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type CompletePromptTemplateRequest and conformance CompletePromptTemplateRequest, type metadata accessor for CompletePromptTemplateRequest, &protocol conformance descriptor for CompletePromptTemplateRequest);
      v20 = v36;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v35 + 8))(v18, v20);
      outlined destroy of DocumentResourceEnvelope(v17, type metadata accessor for CompletePromptTemplateRequest);
      return (*(v41 + 8))(v15, v19);
    }

    else
    {
      v24 = v12[1];
      v47 = *v12;
      v48 = v24;
      v25 = v12[3];
      v49 = v12[2];
      v50 = v25;
      LOBYTE(v43) = 2;
      lazy protocol witness table accessor for type StreamingRequest.RegisterDocumentCodingKeys and conformance StreamingRequest.RegisterDocumentCodingKeys();
      v26 = v37;
      v27 = v42;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v43 = v47;
      v44 = v48;
      v45 = v49;
      v46 = v50;
      lazy protocol witness table accessor for type RegisterDocumentRequest and conformance RegisterDocumentRequest();
      v28 = v39;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v38 + 8))(v26, v28);
      (*(v41 + 8))(v15, v27);
      return outlined destroy of RegisterDocumentRequest(&v47);
    }
  }

  else
  {
    outlined init with take of DocumentRegistrationEnvelope(v12, v9, type metadata accessor for CompletePromptRequest);
    LOBYTE(v47) = 0;
    lazy protocol witness table accessor for type StreamingRequest.CompletePromptCodingKeys and conformance StreamingRequest.CompletePromptCodingKeys();
    v22 = v42;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type CompletePromptRequest and conformance CompletePromptRequest, type metadata accessor for CompletePromptRequest, &protocol conformance descriptor for CompletePromptRequest);
    v23 = v31;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v30 + 8))(v6, v23);
    outlined destroy of DocumentResourceEnvelope(v9, type metadata accessor for CompletePromptRequest);
    return (*(v41 + 8))(v15, v22);
  }
}

uint64_t StreamingRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration16StreamingRequestO26RegisterDocumentCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration16StreamingRequestO26RegisterDocumentCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v57 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v60 = &v50 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration16StreamingRequestO32CompletePromptTemplateCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration16StreamingRequestO32CompletePromptTemplateCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v58 = *(v4 - 8);
  v59 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v63 = &v50 - v5;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration16StreamingRequestO24CompletePromptCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration16StreamingRequestO24CompletePromptCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v55 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v61 = &v50 - v6;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration16StreamingRequestO10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration16StreamingRequestO10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v64 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v8 = &v50 - v7;
  v9 = type metadata accessor for StreamingRequest(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v50 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v50 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v50 - v19;
  v21 = a1[3];
  v75 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  lazy protocol witness table accessor for type StreamingRequest.CodingKeys and conformance StreamingRequest.CodingKeys();
  v22 = v66;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v22)
  {
    v52 = v17;
    v53 = v14;
    v51 = v11;
    v23 = v61;
    v24 = v62;
    v25 = v63;
    v66 = v20;
    v26 = v9;
    v27 = v65;
    v28 = KeyedDecodingContainer.allKeys.getter();
    v29 = (2 * *(v28 + 16)) | 1;
    v71 = v28;
    v72 = v28 + 32;
    v73 = 0;
    v74 = v29;
    v30 = specialized Collection<>.popFirst()();
    if (v30 != 3 && v73 == v74 >> 1)
    {
      if (v30)
      {
        if (v30 == 1)
        {
          LOBYTE(v67) = 1;
          lazy protocol witness table accessor for type StreamingRequest.CompletePromptTemplateCodingKeys and conformance StreamingRequest.CompletePromptTemplateCodingKeys();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v61 = v9;
          type metadata accessor for CompletePromptTemplateRequest(0);
          lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type CompletePromptTemplateRequest and conformance CompletePromptTemplateRequest, type metadata accessor for CompletePromptTemplateRequest, &protocol conformance descriptor for CompletePromptTemplateRequest);
          v31 = v53;
          v32 = v59;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          v33 = v64;
          (*(v58 + 8))(v25, v32);
          (*(v33 + 8))(v8, v24);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v46 = v66;
          outlined init with take of DocumentRegistrationEnvelope(v31, v66, type metadata accessor for StreamingRequest);
          v27 = v65;
LABEL_12:
          outlined init with take of DocumentRegistrationEnvelope(v46, v27, type metadata accessor for StreamingRequest);
          return __swift_destroy_boxed_opaque_existential_0(v75);
        }

        LOBYTE(v67) = 2;
        lazy protocol witness table accessor for type StreamingRequest.RegisterDocumentCodingKeys and conformance StreamingRequest.RegisterDocumentCodingKeys();
        v42 = v60;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        lazy protocol witness table accessor for type RegisterDocumentRequest and conformance RegisterDocumentRequest();
        v43 = v42;
        v44 = v54;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v45 = (v64 + 8);
        (*(v57 + 8))(v43, v44);
        (*v45)(v8, v24);
        swift_unknownObjectRelease();
        v47 = v68;
        v48 = v51;
        *v51 = v67;
        v48[1] = v47;
        v49 = v70;
        v48[2] = v69;
        v48[3] = v49;
        swift_storeEnumTagMultiPayload();
        v41 = v48;
      }

      else
      {
        LOBYTE(v67) = 0;
        lazy protocol witness table accessor for type StreamingRequest.CompletePromptCodingKeys and conformance StreamingRequest.CompletePromptCodingKeys();
        v38 = v23;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        type metadata accessor for CompletePromptRequest(0);
        lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type CompletePromptRequest and conformance CompletePromptRequest, type metadata accessor for CompletePromptRequest, &protocol conformance descriptor for CompletePromptRequest);
        v39 = v52;
        v40 = v56;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        (*(v55 + 8))(v38, v40);
        (*(v64 + 8))(v8, v24);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v41 = v39;
      }

      v46 = v66;
      outlined init with take of DocumentRegistrationEnvelope(v41, v66, type metadata accessor for StreamingRequest);
      goto LABEL_12;
    }

    v34 = type metadata accessor for DecodingError();
    swift_allocError();
    v36 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
    *v36 = v26;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v34 - 8) + 104))(v36, *MEMORY[0x1E69E6AF8], v34);
    swift_willThrow();
    (*(v64 + 8))(v8, v24);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_0(v75);
}

uint64_t OneShotRequest.encode(to:)(void *a1)
{
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration14OneShotRequestO24CompileAdapterCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration14OneShotRequestO24CompileAdapterCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v81 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v103 = &v75 - v2;
  v101 = type metadata accessor for CompileAdapterRequest(0);
  MEMORY[0x1EEE9AC00](v101);
  v102 = &v75 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration14OneShotRequestO32ClassifyPromptTemplateCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration14OneShotRequestO32ClassifyPromptTemplateCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v80 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v99 = &v75 - v4;
  v97 = type metadata accessor for ClassifyPromptTemplateRequest(0);
  MEMORY[0x1EEE9AC00](v97);
  v98 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration14OneShotRequestO24ClassifyPromptCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration14OneShotRequestO24ClassifyPromptCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v79 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v95 = &v75 - v6;
  v93 = type metadata accessor for ClassifyPromptRequest(0);
  MEMORY[0x1EEE9AC00](v93);
  v94 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration14OneShotRequestO32FetchTokenizerMetadataCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration14OneShotRequestO32FetchTokenizerMetadataCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v78 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v91 = &v75 - v8;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration14OneShotRequestO32CompletePromptTemplateCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration14OneShotRequestO32CompletePromptTemplateCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v77 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v89 = &v75 - v9;
  v87 = type metadata accessor for CompletePromptTemplateRequest(0);
  MEMORY[0x1EEE9AC00](v87);
  v88 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration14OneShotRequestO24CompletePromptCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration14OneShotRequestO24CompletePromptCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v75 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v111 = &v75 - v11;
  v85 = type metadata accessor for CompletePromptRequest(0);
  MEMORY[0x1EEE9AC00](v85);
  v110 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration14OneShotRequestO35CountTokensPromptTemplateCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration14OneShotRequestO35CountTokensPromptTemplateCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v76 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v108 = &v75 - v13;
  v83 = type metadata accessor for CountTokensPromptTemplateRequest(0);
  MEMORY[0x1EEE9AC00](v83);
  v107 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration14OneShotRequestO21CountTokensCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration14OneShotRequestO21CountTokensCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v86 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v105 = &v75 - v15;
  v84 = type metadata accessor for CountTokensRequest(0);
  MEMORY[0x1EEE9AC00](v84);
  v17 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration14OneShotRequestO28FetchModelMetadataCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration14OneShotRequestO28FetchModelMetadataCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v82 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v75 - v19;
  v21 = type metadata accessor for OneShotRequest(0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = (&v75 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration14OneShotRequestO10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration14OneShotRequestO10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v113 = *(v123 - 8);
  MEMORY[0x1EEE9AC00](v123);
  v25 = &v75 - v24;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type OneShotRequest.CodingKeys and conformance OneShotRequest.CodingKeys();
  v115 = v25;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  outlined init with copy of DocumentResourceEnvelope(v114, v23, type metadata accessor for OneShotRequest);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    v33 = v17;
    v35 = v105;
    v34 = v106;
    v36 = v108;
    v37 = v109;
    v38 = v111;
    v39 = v112;
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        v40 = *v23;
        v41 = v23[1];
        v42 = v23[3];
        v111 = v23[2];
        v112 = v40;
        v43 = v23[4];
        v114 = v23[5];
        v44 = v114;
        v109 = v23[6];
        v110 = v43;
        LOBYTE(v116) = 0;
        lazy protocol witness table accessor for type OneShotRequest.FetchModelMetadataCodingKeys and conformance OneShotRequest.FetchModelMetadataCodingKeys();
        v45 = v123;
        v46 = v115;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v116 = v112;
        v117 = v41;
        v118 = v111;
        v119 = v42;
        v120 = v110;
        v121 = v44;
        v122 = v109;
        lazy protocol witness table accessor for type FetchModelMetadataRequest and conformance FetchModelMetadataRequest();
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        (*(v82 + 8))(v20, v18);
        (*(v113 + 8))(v46, v45);
      }

      v61 = v33;
      outlined init with take of DocumentRegistrationEnvelope(v23, v33, type metadata accessor for CountTokensRequest);
      LOBYTE(v116) = 1;
      lazy protocol witness table accessor for type OneShotRequest.CountTokensCodingKeys and conformance OneShotRequest.CountTokensCodingKeys();
      v27 = v123;
      v28 = v115;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type CountTokensRequest and conformance CountTokensRequest, type metadata accessor for CountTokensRequest, &protocol conformance descriptor for CountTokensRequest);
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v86 + 8))(v35, v34);
      v62 = type metadata accessor for CountTokensRequest;
      v63 = v61;
      goto LABEL_18;
    }

    v27 = v123;
    if (EnumCaseMultiPayload == 2)
    {
      v48 = v107;
      outlined init with take of DocumentRegistrationEnvelope(v23, v107, type metadata accessor for CountTokensPromptTemplateRequest);
      LOBYTE(v116) = 2;
      lazy protocol witness table accessor for type OneShotRequest.CountTokensPromptTemplateCodingKeys and conformance OneShotRequest.CountTokensPromptTemplateCodingKeys();
      v49 = v115;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type CountTokensPromptTemplateRequest and conformance CountTokensPromptTemplateRequest, type metadata accessor for CountTokensPromptTemplateRequest, &protocol conformance descriptor for CountTokensPromptTemplateRequest);
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v76 + 8))(v36, v37);
      outlined destroy of DocumentResourceEnvelope(v48, type metadata accessor for CountTokensPromptTemplateRequest);
      v50 = *(v113 + 8);
      v51 = v49;
      return v50(v51, v27);
    }

    v29 = v110;
    outlined init with take of DocumentRegistrationEnvelope(v23, v110, type metadata accessor for CompletePromptRequest);
    LOBYTE(v116) = 3;
    lazy protocol witness table accessor for type OneShotRequest.CompletePromptCodingKeys and conformance OneShotRequest.CompletePromptCodingKeys();
    v28 = v115;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type CompletePromptRequest and conformance CompletePromptRequest, type metadata accessor for CompletePromptRequest, &protocol conformance descriptor for CompletePromptRequest);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v75 + 8))(v38, v39);
    v32 = type metadata accessor for CompletePromptRequest;
LABEL_17:
    v62 = v32;
    v63 = v29;
LABEL_18:
    outlined destroy of DocumentResourceEnvelope(v63, v62);
    v50 = *(v113 + 8);
    v51 = v28;
    return v50(v51, v27);
  }

  if (EnumCaseMultiPayload > 5)
  {
    v27 = v123;
    v28 = v115;
    if (EnumCaseMultiPayload == 6)
    {
      v29 = v94;
      outlined init with take of DocumentRegistrationEnvelope(v23, v94, type metadata accessor for ClassifyPromptRequest);
      LOBYTE(v116) = 6;
      lazy protocol witness table accessor for type OneShotRequest.ClassifyPromptCodingKeys and conformance OneShotRequest.ClassifyPromptCodingKeys();
      v59 = v95;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type ClassifyPromptRequest and conformance ClassifyPromptRequest, type metadata accessor for ClassifyPromptRequest, &protocol conformance descriptor for ClassifyPromptRequest);
      v60 = v96;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v79 + 8))(v59, v60);
      v32 = type metadata accessor for ClassifyPromptRequest;
    }

    else if (EnumCaseMultiPayload == 7)
    {
      v29 = v98;
      outlined init with take of DocumentRegistrationEnvelope(v23, v98, type metadata accessor for ClassifyPromptTemplateRequest);
      LOBYTE(v116) = 7;
      lazy protocol witness table accessor for type OneShotRequest.ClassifyPromptTemplateCodingKeys and conformance OneShotRequest.ClassifyPromptTemplateCodingKeys();
      v30 = v99;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type ClassifyPromptTemplateRequest and conformance ClassifyPromptTemplateRequest, type metadata accessor for ClassifyPromptTemplateRequest, &protocol conformance descriptor for ClassifyPromptTemplateRequest);
      v31 = v100;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v80 + 8))(v30, v31);
      v32 = type metadata accessor for ClassifyPromptTemplateRequest;
    }

    else
    {
      v29 = v102;
      outlined init with take of DocumentRegistrationEnvelope(v23, v102, type metadata accessor for CompileAdapterRequest);
      LOBYTE(v116) = 8;
      lazy protocol witness table accessor for type OneShotRequest.CompileAdapterCodingKeys and conformance OneShotRequest.CompileAdapterCodingKeys();
      v64 = v103;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type CompileAdapterRequest and conformance CompileAdapterRequest, type metadata accessor for CompileAdapterRequest, &protocol conformance descriptor for CompileAdapterRequest);
      v65 = v104;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v81 + 8))(v64, v65);
      v32 = type metadata accessor for CompileAdapterRequest;
    }

    goto LABEL_17;
  }

  v52 = v123;
  if (EnumCaseMultiPayload == 4)
  {
    v53 = v23;
    v54 = v88;
    outlined init with take of DocumentRegistrationEnvelope(v53, v88, type metadata accessor for CompletePromptTemplateRequest);
    LOBYTE(v116) = 4;
    lazy protocol witness table accessor for type OneShotRequest.CompletePromptTemplateCodingKeys and conformance OneShotRequest.CompletePromptTemplateCodingKeys();
    v55 = v89;
    v56 = v52;
    v57 = v115;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type CompletePromptTemplateRequest and conformance CompletePromptTemplateRequest, type metadata accessor for CompletePromptTemplateRequest, &protocol conformance descriptor for CompletePromptTemplateRequest);
    v58 = v90;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v77 + 8))(v55, v58);
    outlined destroy of DocumentResourceEnvelope(v54, type metadata accessor for CompletePromptTemplateRequest);
    return (*(v113 + 8))(v57, v56);
  }

  else
  {
    v66 = v23[1];
    v114 = *v23;
    v68 = v23[2];
    v67 = v23[3];
    v70 = v23[4];
    v69 = v23[5];
    v71 = v23[6];
    LOBYTE(v116) = 5;
    lazy protocol witness table accessor for type OneShotRequest.FetchTokenizerMetadataCodingKeys and conformance OneShotRequest.FetchTokenizerMetadataCodingKeys();
    v72 = v91;
    v73 = v115;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v116 = v114;
    v117 = v66;
    v114 = v66;
    v118 = v68;
    v119 = v67;
    v120 = v70;
    v121 = v69;
    v122 = v71;
    lazy protocol witness table accessor for type FetchTokenizerMetadataRequest and conformance FetchTokenizerMetadataRequest();
    v74 = v92;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v78 + 8))(v72, v74);
    (*(v113 + 8))(v73, v123);
  }
}

uint64_t OneShotRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v135 = a2;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration14OneShotRequestO24CompileAdapterCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration14OneShotRequestO24CompileAdapterCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v122 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121);
  v127 = &v96 - v3;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration14OneShotRequestO32ClassifyPromptTemplateCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration14OneShotRequestO32ClassifyPromptTemplateCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v119 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120);
  v128 = &v96 - v4;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration14OneShotRequestO24ClassifyPromptCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration14OneShotRequestO24ClassifyPromptCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v117 = *(v118 - 8);
  MEMORY[0x1EEE9AC00](v118);
  v134 = &v96 - v5;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration14OneShotRequestO32FetchTokenizerMetadataCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration14OneShotRequestO32FetchTokenizerMetadataCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v115 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v126 = &v96 - v6;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration14OneShotRequestO32CompletePromptTemplateCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration14OneShotRequestO32CompletePromptTemplateCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v113 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v125 = &v96 - v7;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration14OneShotRequestO24CompletePromptCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration14OneShotRequestO24CompletePromptCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v111 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v133 = &v96 - v8;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration14OneShotRequestO35CountTokensPromptTemplateCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration14OneShotRequestO35CountTokensPromptTemplateCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v110 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v132 = &v96 - v9;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration14OneShotRequestO21CountTokensCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration14OneShotRequestO21CountTokensCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v107 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108);
  v124 = &v96 - v10;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration14OneShotRequestO28FetchModelMetadataCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration14OneShotRequestO28FetchModelMetadataCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v105 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v123 = &v96 - v11;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration14OneShotRequestO10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration14OneShotRequestO10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v130 = *(v136 - 8);
  MEMORY[0x1EEE9AC00](v136);
  v13 = &v96 - v12;
  v129 = type metadata accessor for OneShotRequest(0);
  MEMORY[0x1EEE9AC00](v129);
  v104 = &v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v103 = &v96 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v102 = &v96 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v100 = (&v96 - v20);
  MEMORY[0x1EEE9AC00](v21);
  v101 = &v96 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v96 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v96 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v96 - v30;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v96 - v33;
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v96 - v36;
  v38 = a1[3];
  v137 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v38);
  lazy protocol witness table accessor for type OneShotRequest.CodingKeys and conformance OneShotRequest.CodingKeys();
  v131 = v13;
  v39 = v147;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v39)
  {
    return __swift_destroy_boxed_opaque_existential_0(v137);
  }

  v96 = v34;
  v97 = v31;
  v98 = v28;
  v99 = v25;
  v41 = v132;
  v40 = v133;
  v147 = v37;
  v43 = v134;
  v42 = v135;
  v44 = v136;
  v45 = v131;
  v46 = KeyedDecodingContainer.allKeys.getter();
  v47 = (2 * *(v46 + 16)) | 1;
  v143 = v46;
  v144 = v46 + 32;
  v145 = 0;
  v146 = v47;
  v48 = specialized Collection<>.popFirst()();
  if (v48 == 9 || v145 != v146 >> 1)
  {
    v54 = type metadata accessor for DecodingError();
    swift_allocError();
    v56 = v55;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
    *v56 = v129;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v54 - 8) + 104))(v56, *MEMORY[0x1E69E6AF8], v54);
    swift_willThrow();
    (*(v130 + 8))(v45, v44);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_0(v137);
  }

  if (v48 > 3u)
  {
    if (v48 > 5u)
    {
      if (v48 == 6)
      {
        LOBYTE(v138) = 6;
        lazy protocol witness table accessor for type OneShotRequest.ClassifyPromptCodingKeys and conformance OneShotRequest.ClassifyPromptCodingKeys();
        v72 = v43;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v73 = v130;
        v74 = v45;
        type metadata accessor for ClassifyPromptRequest(0);
        lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type ClassifyPromptRequest and conformance ClassifyPromptRequest, type metadata accessor for ClassifyPromptRequest, &protocol conformance descriptor for ClassifyPromptRequest);
        v52 = v102;
        v75 = v118;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        (*(v117 + 8))(v72, v75);
        (*(v73 + 8))(v74, v136);
        swift_unknownObjectRelease();
        goto LABEL_23;
      }

      v49 = v130;
      if (v48 == 7)
      {
        LOBYTE(v138) = 7;
        lazy protocol witness table accessor for type OneShotRequest.ClassifyPromptTemplateCodingKeys and conformance OneShotRequest.ClassifyPromptTemplateCodingKeys();
        v50 = v128;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v51 = v45;
        type metadata accessor for ClassifyPromptTemplateRequest(0);
        lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type ClassifyPromptTemplateRequest and conformance ClassifyPromptTemplateRequest, type metadata accessor for ClassifyPromptTemplateRequest, &protocol conformance descriptor for ClassifyPromptTemplateRequest);
        v52 = v103;
        v53 = v120;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        (*(v119 + 8))(v50, v53);
        (*(v49 + 8))(v51, v136);
        swift_unknownObjectRelease();
LABEL_23:
        swift_storeEnumTagMultiPayload();
        v90 = v52;
        goto LABEL_25;
      }

      LOBYTE(v138) = 8;
      lazy protocol witness table accessor for type OneShotRequest.CompileAdapterCodingKeys and conformance OneShotRequest.CompileAdapterCodingKeys();
      v80 = v127;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      type metadata accessor for CompileAdapterRequest(0);
      lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type CompileAdapterRequest and conformance CompileAdapterRequest, type metadata accessor for CompileAdapterRequest, &protocol conformance descriptor for CompileAdapterRequest);
      v86 = v104;
      v87 = v121;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v122 + 8))(v80, v87);
      (*(v49 + 8))(v45, v136);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v90 = v86;
      goto LABEL_25;
    }

    if (v48 == 4)
    {
      LOBYTE(v138) = 4;
      lazy protocol witness table accessor for type OneShotRequest.CompletePromptTemplateCodingKeys and conformance OneShotRequest.CompletePromptTemplateCodingKeys();
      v68 = v125;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v69 = v130;
      type metadata accessor for CompletePromptTemplateRequest(0);
      lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type CompletePromptTemplateRequest and conformance CompletePromptTemplateRequest, type metadata accessor for CompletePromptTemplateRequest, &protocol conformance descriptor for CompletePromptTemplateRequest);
      v70 = v101;
      v71 = v114;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v113 + 8))(v68, v71);
      (*(v69 + 8))(v45, v136);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v90 = v70;
      goto LABEL_25;
    }

    LOBYTE(v138) = 5;
    lazy protocol witness table accessor for type OneShotRequest.FetchTokenizerMetadataCodingKeys and conformance OneShotRequest.FetchTokenizerMetadataCodingKeys();
    v81 = v126;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v82 = v44;
    v83 = v130;
    v88 = v82;
    lazy protocol witness table accessor for type FetchTokenizerMetadataRequest and conformance FetchTokenizerMetadataRequest();
    v89 = v116;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v115 + 8))(v81, v89);
    (*(v83 + 8))(v45, v88);
    swift_unknownObjectRelease();
    v91 = v139;
    v92 = v140;
    v93 = v142;
    v65 = v100;
    *v100 = v138;
    *(v65 + 2) = v91;
    *(v65 + 3) = v92;
    v65[2] = v141;
    *(v65 + 6) = v93;
LABEL_24:
    swift_storeEnumTagMultiPayload();
    v90 = v65;
    goto LABEL_25;
  }

  if (v48 <= 1u)
  {
    if (v48)
    {
      LOBYTE(v138) = 1;
      lazy protocol witness table accessor for type OneShotRequest.CountTokensCodingKeys and conformance OneShotRequest.CountTokensCodingKeys();
      v76 = v124;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v77 = v130;
      v84 = v45;
      type metadata accessor for CountTokensRequest(0);
      lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type CountTokensRequest and conformance CountTokensRequest, type metadata accessor for CountTokensRequest, &protocol conformance descriptor for CountTokensRequest);
      v52 = v97;
      v85 = v108;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v107 + 8))(v76, v85);
      (*(v77 + 8))(v84, v136);
      swift_unknownObjectRelease();
      goto LABEL_23;
    }

    LOBYTE(v138) = 0;
    lazy protocol witness table accessor for type OneShotRequest.FetchModelMetadataCodingKeys and conformance OneShotRequest.FetchModelMetadataCodingKeys();
    v58 = v123;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v59 = v44;
    v60 = v130;
    lazy protocol witness table accessor for type FetchModelMetadataRequest and conformance FetchModelMetadataRequest();
    v61 = v106;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v105 + 8))(v58, v61);
    (*(v60 + 8))(v45, v59);
    swift_unknownObjectRelease();
    v62 = v139;
    v63 = v140;
    v64 = v142;
    v65 = v96;
    *v96 = v138;
    *(v65 + 2) = v62;
    *(v65 + 3) = v63;
    v65[2] = v141;
    *(v65 + 6) = v64;
    goto LABEL_24;
  }

  if (v48 == 2)
  {
    LOBYTE(v138) = 2;
    lazy protocol witness table accessor for type OneShotRequest.CountTokensPromptTemplateCodingKeys and conformance OneShotRequest.CountTokensPromptTemplateCodingKeys();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v66 = v45;
    type metadata accessor for CountTokensPromptTemplateRequest(0);
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type CountTokensPromptTemplateRequest and conformance CountTokensPromptTemplateRequest, type metadata accessor for CountTokensPromptTemplateRequest, &protocol conformance descriptor for CountTokensPromptTemplateRequest);
    v52 = v98;
    v67 = v109;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v110 + 8))(v41, v67);
    (*(v130 + 8))(v66, v136);
    swift_unknownObjectRelease();
    goto LABEL_23;
  }

  LOBYTE(v138) = 3;
  lazy protocol witness table accessor for type OneShotRequest.CompletePromptCodingKeys and conformance OneShotRequest.CompletePromptCodingKeys();
  KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  type metadata accessor for CompletePromptRequest(0);
  lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type CompletePromptRequest and conformance CompletePromptRequest, type metadata accessor for CompletePromptRequest, &protocol conformance descriptor for CompletePromptRequest);
  v78 = v99;
  v79 = v112;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v111 + 8))(v40, v79);
  (*(v130 + 8))(v45, v44);
  swift_unknownObjectRelease();
  swift_storeEnumTagMultiPayload();
  v90 = v78;
LABEL_25:
  v94 = v147;
  outlined init with take of DocumentRegistrationEnvelope(v90, v147, type metadata accessor for OneShotRequest);
  v95 = v137;
  outlined init with take of DocumentRegistrationEnvelope(v94, v42, type metadata accessor for OneShotRequest);
  return __swift_destroy_boxed_opaque_existential_0(v95);
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance StreamingRequest.CodingKeys()
{
  v1 = 0xD000000000000016;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6574656C706D6F63;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance StreamingRequest.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized StreamingRequest.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance StreamingRequest.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type StreamingRequest.CodingKeys and conformance StreamingRequest.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance StreamingRequest.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type StreamingRequest.CodingKeys and conformance StreamingRequest.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance StreamingRequest.CompletePromptCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type StreamingRequest.CompletePromptCodingKeys and conformance StreamingRequest.CompletePromptCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance StreamingRequest.CompletePromptCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type StreamingRequest.CompletePromptCodingKeys and conformance StreamingRequest.CompletePromptCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance StreamingRequest.CompletePromptTemplateCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type StreamingRequest.CompletePromptTemplateCodingKeys and conformance StreamingRequest.CompletePromptTemplateCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance StreamingRequest.CompletePromptTemplateCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type StreamingRequest.CompletePromptTemplateCodingKeys and conformance StreamingRequest.CompletePromptTemplateCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance StreamingRequest.RegisterDocumentCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type StreamingRequest.RegisterDocumentCodingKeys and conformance StreamingRequest.RegisterDocumentCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance StreamingRequest.RegisterDocumentCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type StreamingRequest.RegisterDocumentCodingKeys and conformance StreamingRequest.RegisterDocumentCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance OneShotRequest.ClassifyPromptCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OneShotRequest.ClassifyPromptCodingKeys and conformance OneShotRequest.ClassifyPromptCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance OneShotRequest.ClassifyPromptCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OneShotRequest.ClassifyPromptCodingKeys and conformance OneShotRequest.ClassifyPromptCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance OneShotRequest.ClassifyPromptTemplateCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OneShotRequest.ClassifyPromptTemplateCodingKeys and conformance OneShotRequest.ClassifyPromptTemplateCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance OneShotRequest.ClassifyPromptTemplateCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OneShotRequest.ClassifyPromptTemplateCodingKeys and conformance OneShotRequest.ClassifyPromptTemplateCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance OneShotRequest.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OneShotRequest.CodingKeys and conformance OneShotRequest.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance OneShotRequest.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OneShotRequest.CodingKeys and conformance OneShotRequest.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance OneShotRequest.CompileAdapterCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OneShotRequest.CompileAdapterCodingKeys and conformance OneShotRequest.CompileAdapterCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance OneShotRequest.CompileAdapterCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OneShotRequest.CompileAdapterCodingKeys and conformance OneShotRequest.CompileAdapterCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance OneShotRequest.CompletePromptCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OneShotRequest.CompletePromptCodingKeys and conformance OneShotRequest.CompletePromptCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance OneShotRequest.CompletePromptCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OneShotRequest.CompletePromptCodingKeys and conformance OneShotRequest.CompletePromptCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance OneShotRequest.CompletePromptTemplateCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OneShotRequest.CompletePromptTemplateCodingKeys and conformance OneShotRequest.CompletePromptTemplateCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance OneShotRequest.CompletePromptTemplateCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OneShotRequest.CompletePromptTemplateCodingKeys and conformance OneShotRequest.CompletePromptTemplateCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance OneShotRequest.CountTokensCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OneShotRequest.CountTokensCodingKeys and conformance OneShotRequest.CountTokensCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance OneShotRequest.CountTokensCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OneShotRequest.CountTokensCodingKeys and conformance OneShotRequest.CountTokensCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance OneShotRequest.CountTokensPromptTemplateCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OneShotRequest.CountTokensPromptTemplateCodingKeys and conformance OneShotRequest.CountTokensPromptTemplateCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance OneShotRequest.CountTokensPromptTemplateCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type OneShotRequest.CountTokensPromptTemplateCodingKeys and conformance OneShotRequest.CountTokensPromptTemplateCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance OneShotRequest.FetchModelMetadataCodingKeys(uint64_t a1)
{
  ModelMetadataCodingKeys = lazy protocol witness table accessor for type OneShotRequest.FetchModelMetadataCodingKeys and conformance OneShotRequest.FetchModelMetadataCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, ModelMetadataCodingKeys);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance OneShotRequest.FetchModelMetadataCodingKeys(uint64_t a1)
{
  ModelMetadataCodingKeys = lazy protocol witness table accessor for type OneShotRequest.FetchModelMetadataCodingKeys and conformance OneShotRequest.FetchModelMetadataCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, ModelMetadataCodingKeys);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance OneShotRequest.FetchTokenizerMetadataCodingKeys(uint64_t a1)
{
  TokenizerMetadataCodingKeys = lazy protocol witness table accessor for type OneShotRequest.FetchTokenizerMetadataCodingKeys and conformance OneShotRequest.FetchTokenizerMetadataCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, TokenizerMetadataCodingKeys);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance OneShotRequest.FetchTokenizerMetadataCodingKeys(uint64_t a1)
{
  TokenizerMetadataCodingKeys = lazy protocol witness table accessor for type OneShotRequest.FetchTokenizerMetadataCodingKeys and conformance OneShotRequest.FetchTokenizerMetadataCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, TokenizerMetadataCodingKeys);
}

uint64_t one-time initialization function for currentInterfaceVersion()
{
  v0 = type metadata accessor for Version();
  __swift_allocate_value_buffer(v0, static TokenGenerationInterfaceVersion.currentInterfaceVersion);
  __swift_project_value_buffer(v0, static TokenGenerationInterfaceVersion.currentInterfaceVersion);
  return Version.init(major:minor:patch:)();
}

uint64_t CompletePromptRequest.revive(withXpcData:)(uint64_t a1)
{
  v3 = type metadata accessor for XPCDictionary();
  v4 = *(*(v3 - 8) + 24);

  return v4(v1, a1, v3);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance RegisterDocumentRequest.CodingKeys()
{
  if (*v0)
  {
    return 0x7461646174656D5FLL;
  }

  else
  {
    return 0x6E656D75636F645FLL;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance RegisterDocumentRequest.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E656D75636F645FLL && a2 == 0xEA00000000007374;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7461646174656D5FLL && a2 == 0xE900000000000061)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance RegisterDocumentRequest.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RegisterDocumentRequest.CodingKeys and conformance RegisterDocumentRequest.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance RegisterDocumentRequest.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RegisterDocumentRequest.CodingKeys and conformance RegisterDocumentRequest.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RegisterDocumentRequest.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration23RegisterDocumentRequestV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration23RegisterDocumentRequestV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - v6;
  v8 = *v1;
  v9 = v1[2];
  v10 = v1[3];
  v17 = v1[1];
  v18 = v9;
  v11 = v1[4];
  v15 = v1[5];
  v16 = v10;
  v13 = v1[6];
  v12 = v1[7];
  v19 = v11;
  v20 = v13;
  v21 = v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type RegisterDocumentRequest.CodingKeys and conformance RegisterDocumentRequest.CodingKeys();

  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v22 = v8;
  v29 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15TokenGeneration24DocumentResourceEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLVGMd, &_sSay15TokenGeneration24DocumentResourceEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLVGMR);
  lazy protocol witness table accessor for type [DocumentResourceEnvelope] and conformance <A> [A]();
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  if (!v2)
  {
    v22 = v17;
    v23 = v18;
    v24 = v16;
    v25 = v19;
    v26 = v15;
    v27 = v20;
    v28 = v21;
    v29 = 1;
    lazy protocol witness table accessor for type RequestMetadataEnvelope and conformance RequestMetadataEnvelope();

    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t RegisterDocumentRequest.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration23RegisterDocumentRequestV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration23RegisterDocumentRequestV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type RegisterDocumentRequest.CodingKeys and conformance RegisterDocumentRequest.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15TokenGeneration24DocumentResourceEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLVGMd, &_sSay15TokenGeneration24DocumentResourceEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLVGMR);
  LOBYTE(v19[0]) = 0;
  lazy protocol witness table accessor for type [DocumentResourceEnvelope] and conformance <A> [A]();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v9 = v20[0];
  v29 = 1;
  lazy protocol witness table accessor for type RequestMetadataEnvelope and conformance RequestMetadataEnvelope();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v10 = v25;
  v11 = v26;
  v12 = v27;
  v17 = *(&v28 + 1);
  v18 = v28;
  *&v19[0] = v9;
  *(&v19[0] + 1) = v25;
  v19[1] = v26;
  v19[2] = v27;
  v19[3] = v28;
  v13 = v19[0];
  v14 = v26;
  v15 = v28;
  a2[2] = v27;
  a2[3] = v15;
  *a2 = v13;
  a2[1] = v14;
  outlined init with copy of RegisterDocumentRequest(v19, v20);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v20[0] = v9;
  v20[1] = v10;
  v21 = v11;
  v22 = v12;
  v23 = v18;
  v24 = v17;
  return outlined destroy of RegisterDocumentRequest(v20);
}

uint64_t RegisterDocumentResponseElement.registration.getter()
{
  v1 = type metadata accessor for DocumentResourceIdentifier();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DocumentRegistration.Progress();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DocumentRegistrationStatusEnvelope(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of DocumentResourceEnvelope(v0, v11, type metadata accessor for DocumentRegistrationStatusEnvelope);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v2 + 32))(v4, v11, v1);
      type metadata accessor for DocumentRegistrationEnvelope(0);
      static DocumentRegistration.finished(identifier:url:)();
      return (*(v2 + 8))(v4, v1);
    }

    else
    {
      type metadata accessor for DocumentRegistrationEnvelope(0);
      static DocumentRegistration.error(description:url:)();
    }
  }

  else
  {
    DocumentRegistration.Progress.init(progress:bytes:totalBytes:)();
    type metadata accessor for DocumentRegistrationEnvelope(0);
    static DocumentRegistration.registering(progress:url:)();
    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t DocumentRegistrationEnvelope.init(sealing:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for DocumentRegistration.InternalStatus();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  DocumentRegistration.internalStatus.getter();
  DocumentRegistrationStatusEnvelope.init(sealing:)(v6, a2);
  type metadata accessor for DocumentRegistrationEnvelope(0);
  DocumentRegistration.url.getter();
  v7 = type metadata accessor for DocumentRegistration();
  return (*(*(v7 - 8) + 8))(a1, v7);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance RegisterDocumentResponseElement.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x727473696765725FLL && a2 == 0xED00006E6F697461)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance RegisterDocumentResponseElement.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RegisterDocumentResponseElement.CodingKeys and conformance RegisterDocumentResponseElement.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance RegisterDocumentResponseElement.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RegisterDocumentResponseElement.CodingKeys and conformance RegisterDocumentResponseElement.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RegisterDocumentResponseElement.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration31RegisterDocumentResponseElementV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration31RegisterDocumentResponseElementV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type RegisterDocumentResponseElement.CodingKeys and conformance RegisterDocumentResponseElement.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for DocumentRegistrationEnvelope(0);
  lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type DocumentRegistrationEnvelope and conformance DocumentRegistrationEnvelope, type metadata accessor for DocumentRegistrationEnvelope, &protocol conformance descriptor for DocumentRegistrationEnvelope);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t RegisterDocumentResponseElement.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v4 = type metadata accessor for DocumentRegistrationEnvelope(0);
  MEMORY[0x1EEE9AC00](v4);
  v17 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration31RegisterDocumentResponseElementV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration31RegisterDocumentResponseElementV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v16 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for RegisterDocumentResponseElement(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type RegisterDocumentResponseElement.CodingKeys and conformance RegisterDocumentResponseElement.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v12 = v15;
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type DocumentRegistrationEnvelope and conformance DocumentRegistrationEnvelope, type metadata accessor for DocumentRegistrationEnvelope, &protocol conformance descriptor for DocumentRegistrationEnvelope);
    v13 = v17;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v16 + 8))(v8, v6);
    outlined init with take of DocumentRegistrationEnvelope(v13, v11, type metadata accessor for DocumentRegistrationEnvelope);
    outlined init with take of DocumentRegistrationEnvelope(v11, v12, type metadata accessor for RegisterDocumentResponseElement);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance RegisterDocumentResponseElement(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration31RegisterDocumentResponseElementV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration31RegisterDocumentResponseElementV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type RegisterDocumentResponseElement.CodingKeys and conformance RegisterDocumentResponseElement.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for DocumentRegistrationEnvelope(0);
  lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type DocumentRegistrationEnvelope and conformance DocumentRegistrationEnvelope, type metadata accessor for DocumentRegistrationEnvelope, &protocol conformance descriptor for DocumentRegistrationEnvelope);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CompileAdapterRequest.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x6E7552797264;
  v5 = 0x80000001ABA3F3C0;
  if (v2 != 1)
  {
    v4 = 0xD000000000000010;
    v3 = 0x80000001ABA3F3C0;
  }

  if (*a1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x7461646174656D5FLL;
  }

  if (v2)
  {
    v7 = v3;
  }

  else
  {
    v7 = 0xE900000000000061;
  }

  v8 = 0x6E7552797264;
  if (*a2 == 1)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v8 = 0xD000000000000010;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x7461646174656D5FLL;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xE900000000000061;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CompileAdapterRequest.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CompileAdapterRequest.CodingKeys(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CompileAdapterRequest.CodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance CompileAdapterRequest.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized CompileAdapterRequest.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance CompileAdapterRequest.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000061;
  v4 = 0xE600000000000000;
  v5 = 0x6E7552797264;
  if (v2 != 1)
  {
    v5 = 0xD000000000000010;
    v4 = 0x80000001ABA3F3C0;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7461646174656D5FLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance CompileAdapterRequest.CodingKeys()
{
  v1 = 0x6E7552797264;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7461646174656D5FLL;
  }
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance CompileAdapterRequest.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized CompileAdapterRequest.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CompileAdapterRequest.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CompileAdapterRequest.CodingKeys and conformance CompileAdapterRequest.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CompileAdapterRequest.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CompileAdapterRequest.CodingKeys and conformance CompileAdapterRequest.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double CompileAdapterRequest.metadata.getter@<D0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for CompileAdapterRequest(0) + 20));
  v4 = v3[1];
  v5 = v3[2];
  v6 = v3[3];
  v8 = v3[4];
  v7 = v3[5];
  v9 = v3[6];
  *a1 = *v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v8;
  a1[5] = v7;
  a1[6] = v9;

  return result;
}

uint64_t CompileAdapterRequest.secureIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for CompileAdapterRequest(0) + 24));

  return v1;
}

uint64_t CompileAdapterRequest.info.getter()
{
  v0 = type metadata accessor for XPCCodableObject();
  MEMORY[0x1EEE9AC00](v0 - 8);
  if (!XPCDictionary.subscript.getter())
  {
    return 0;
  }

  swift_unknownObjectRetain();
  XPCCodableObject.init(copying:)();
  type metadata accessor for FoundationModelsExtensionInfo();
  swift_allocObject();
  v1 = FoundationModelsExtensionInfo.init(xpcObject:)();
  swift_unknownObjectRelease();
  return v1;
}

uint64_t CompileAdapterRequest.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration21CompileAdapterRequestV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration21CompileAdapterRequestV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CompileAdapterRequest.CodingKeys and conformance CompileAdapterRequest.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = *(type metadata accessor for CompileAdapterRequest(0) + 20);
  v18 = v3;
  v10 = (v3 + v9);
  v11 = v10[1];
  v12 = v10[2];
  v13 = v10[3];
  v14 = v10[4];
  v15 = v10[5];
  v16 = v10[6];
  v19 = *v10;
  v20 = v11;
  v21 = v12;
  v22 = v13;
  v23 = v14;
  v24 = v15;
  v25 = v16;
  v26 = 0;
  lazy protocol witness table accessor for type RequestMetadataEnvelope and conformance RequestMetadataEnvelope();

  KeyedEncodingContainer.encode<A>(_:forKey:)();

  if (!v2)
  {
    LOBYTE(v19) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v19) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}