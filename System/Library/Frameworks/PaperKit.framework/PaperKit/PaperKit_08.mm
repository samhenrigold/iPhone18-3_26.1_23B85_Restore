unint64_t lazy protocol witness table accessor for type MagicPaperUsageInsertSpaceEvent.CodingKeys and conformance MagicPaperUsageInsertSpaceEvent.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MagicPaperUsageInsertSpaceEvent.CodingKeys and conformance MagicPaperUsageInsertSpaceEvent.CodingKeys;
  if (!lazy protocol witness table cache variable for type MagicPaperUsageInsertSpaceEvent.CodingKeys and conformance MagicPaperUsageInsertSpaceEvent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MagicPaperUsageInsertSpaceEvent.CodingKeys and conformance MagicPaperUsageInsertSpaceEvent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MagicPaperUsageInsertSpaceEvent.CodingKeys and conformance MagicPaperUsageInsertSpaceEvent.CodingKeys;
  if (!lazy protocol witness table cache variable for type MagicPaperUsageInsertSpaceEvent.CodingKeys and conformance MagicPaperUsageInsertSpaceEvent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MagicPaperUsageInsertSpaceEvent.CodingKeys and conformance MagicPaperUsageInsertSpaceEvent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MagicPaperUsageInsertSpaceEvent.CodingKeys and conformance MagicPaperUsageInsertSpaceEvent.CodingKeys;
  if (!lazy protocol witness table cache variable for type MagicPaperUsageInsertSpaceEvent.CodingKeys and conformance MagicPaperUsageInsertSpaceEvent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MagicPaperUsageInsertSpaceEvent.CodingKeys and conformance MagicPaperUsageInsertSpaceEvent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MagicPaperUsageInsertSpaceEvent.CodingKeys and conformance MagicPaperUsageInsertSpaceEvent.CodingKeys;
  if (!lazy protocol witness table cache variable for type MagicPaperUsageInsertSpaceEvent.CodingKeys and conformance MagicPaperUsageInsertSpaceEvent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MagicPaperUsageInsertSpaceEvent.CodingKeys and conformance MagicPaperUsageInsertSpaceEvent.CodingKeys);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MagicPaperUsageInsertSpaceEvent.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MagicPaperUsageInsertSpaceEvent.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t specialized MagicPaperUsageInsertSpaceEvent.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of MagicPaperUsageInsertSpaceEvent.CodingKeys.init(rawValue:), v2);

  if (v3 >= 8)
  {
    return 8;
  }

  else
  {
    return v3;
  }
}

void *specialized _arrayForceCast<A, B>(_:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v17 = MEMORY[0x1E69E7CC0];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v17;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = MEMORY[0x1DA6CE0C0](v5, a1);
        v17 = v3;
        v8 = *(v3 + 16);
        v7 = *(v3 + 24);
        if (v8 >= v7 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1);
          v3 = v17;
        }

        ++v5;
        v15 = type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for PKMathRecognitionToken, 0x1E69784A0);
        v16 = &protocol witness table for PKMathRecognitionToken;
        *&v14 = v6;
        *(v3 + 16) = v8 + 1;
        outlined init with take of PaperKitHashable(&v14, v3 + 40 * v8 + 32);
      }

      while (v2 != v5);
    }

    else
    {
      v9 = (a1 + 32);
      do
      {
        v10 = *v9;
        v17 = v3;
        v12 = *(v3 + 16);
        v11 = *(v3 + 24);
        v13 = v10;
        if (v12 >= v11 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
          v3 = v17;
        }

        v15 = type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for PKMathRecognitionToken, 0x1E69784A0);
        v16 = &protocol witness table for PKMathRecognitionToken;
        *&v14 = v13;
        *(v3 + 16) = v12 + 1;
        outlined init with take of PaperKitHashable(&v14, v3 + 40 * v12 + 32);
        ++v9;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

{
  if (a1 >> 62)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v17 = MEMORY[0x1E69E7CC0];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v17;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = MEMORY[0x1DA6CE0C0](v5, a1);
        v17 = v3;
        v8 = *(v3 + 16);
        v7 = *(v3 + 24);
        if (v8 >= v7 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1);
          v3 = v17;
        }

        ++v5;
        v15 = type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for PKMathRecognitionItem, 0x1E6978490);
        v16 = &protocol witness table for PKMathRecognitionItem;
        *&v14 = v6;
        *(v3 + 16) = v8 + 1;
        outlined init with take of PaperKitHashable(&v14, v3 + 40 * v8 + 32);
      }

      while (v2 != v5);
    }

    else
    {
      v9 = (a1 + 32);
      do
      {
        v10 = *v9;
        v17 = v3;
        v12 = *(v3 + 16);
        v11 = *(v3 + 24);
        v13 = v10;
        if (v12 >= v11 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
          v3 = v17;
        }

        v15 = type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for PKMathRecognitionItem, 0x1E6978490);
        v16 = &protocol witness table for PKMathRecognitionItem;
        *&v14 = v13;
        *(v3 + 16) = v12 + 1;
        outlined init with take of PaperKitHashable(&v14, v3 + 40 * v12 + 32);
        ++v9;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

{
  if (a1 >> 62)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v16 = MEMORY[0x1E69E7CC0];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v16;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = MEMORY[0x1DA6CE0C0](v5, a1);
        v16 = v3;
        v8 = *(v3 + 16);
        v7 = *(v3 + 24);
        if (v8 >= v7 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1);
          v3 = v16;
        }

        ++v5;
        v14 = type metadata accessor for DrawingFindResult();
        v15 = lazy protocol witness table accessor for type DrawingFindResult and conformance DrawingFindResult(&lazy protocol witness table cache variable for type DrawingFindResult and conformance DrawingFindResult, type metadata accessor for DrawingFindResult, &protocol conformance descriptor for DrawingFindResult);
        *&v13 = v6;
        *(v3 + 16) = v8 + 1;
        outlined init with take of PaperKitHashable(&v13, v3 + 40 * v8 + 32);
      }

      while (v2 != v5);
    }

    else
    {
      v9 = (a1 + 32);
      do
      {
        v10 = *v9;
        v16 = v3;
        v11 = *(v3 + 16);
        v12 = *(v3 + 24);

        if (v11 >= v12 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v11 + 1, 1);
          v3 = v16;
        }

        v14 = type metadata accessor for DrawingFindResult();
        v15 = lazy protocol witness table accessor for type DrawingFindResult and conformance DrawingFindResult(&lazy protocol witness table cache variable for type DrawingFindResult and conformance DrawingFindResult, type metadata accessor for DrawingFindResult, &protocol conformance descriptor for DrawingFindResult);
        *&v13 = v10;
        *(v3 + 16) = v11 + 1;
        outlined init with take of PaperKitHashable(&v13, v3 + 40 * v11 + 32);
        ++v9;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

{
  if (a1 >> 62)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v18 = MEMORY[0x1E69E7CC0];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v18;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = MEMORY[0x1DA6CE0C0](v5, a1);
        v8 = *(v18 + 16);
        v7 = *(v18 + 24);
        if (v8 >= v7 >> 1)
        {
          v10 = v6;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1);
          v6 = v10;
        }

        ++v5;
        *(v18 + 16) = v8 + 1;
        v9 = v18 + 16 * v8;
        *(v9 + 32) = v6;
        *(v9 + 40) = &protocol witness table for SynapseLinkItem;
      }

      while (v2 != v5);
    }

    else
    {
      v11 = (a1 + 32);
      do
      {
        v12 = *(v18 + 16);
        v13 = *(v18 + 24);
        v14 = *v11;
        if (v12 >= v13 >> 1)
        {
          v16 = v13 > 1;
          v17 = v14;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v16, v12 + 1, 1);
          v14 = v17;
        }

        *(v18 + 16) = v12 + 1;
        v15 = v18 + 16 * v12;
        *(v15 + 32) = v14;
        *(v15 + 40) = &protocol witness table for SynapseLinkItem;
        ++v11;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t specialized _arrayForceCast<A, B>(_:)(unint64_t a1)
{
  return specialized _arrayForceCast<A, B>(_:)(a1, &_sSo12PKAttachment_pMd, &_sSo12PKAttachment_pMR);
}

{
  return specialized _arrayForceCast<A, B>(_:)(a1, &_sSo16CHMathExpression_pMd, &_sSo16CHMathExpression_pMR);
}

{
  return specialized _arrayForceCast<A, B>(_:)(a1, &_sSo32CHMathExpressionEvaluationResult_pMd, &_sSo32CHMathExpressionEvaluationResult_pMR);
}

{
  return specialized _arrayForceCast<A, B>(_:)(a1, &_sSo18CHCanvasAttachment_pMd, &_sSo18CHCanvasAttachment_pMR);
}

{
  if (a1 >> 62)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v9 = MEMORY[0x1E69E7CC0];
    result = specialized ContiguousArray.reserveCapacity(_:)();
    if (v2 < 0)
    {
      __break(1u);
    }

    else
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = 0;
        do
        {
          v5 = v4 + 1;
          MEMORY[0x1DA6CE0C0]();
          type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIMenuElement, 0x1E69DCC78);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13UIMenuElementCSgMd, &_sSo13UIMenuElementCSgMR);
          swift_dynamicCast();
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v4 = v5;
        }

        while (v2 != v5);
      }

      else
      {
        v6 = (a1 + 32);
        type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIMenuElement, 0x1E69DCC78);
        do
        {
          v7 = *v6++;
          v8 = v7;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13UIMenuElementCSgMd, &_sSo13UIMenuElementCSgMR);
          swift_dynamicCast();
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          --v2;
        }

        while (v2);
      }

      return v9;
    }
  }

  return result;
}

uint64_t specialized _arrayForceCast<A, B>(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v9 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v2 = v9;
    v4 = a1 + 32;
    do
    {
      swift_dynamicCast();
      v9 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      *(v2 + 16) = v6 + 1;
      outlined init with take of Any(&v8, (v2 + 32 * v6 + 32));
      v4 += 8;
      --v1;
    }

    while (v1);
  }

  return v2;
}

{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v7 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      v6 = v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit15CanvasUIOverlay_pMd, &_s8PaperKit15CanvasUIOverlay_pMR);
      type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIView, 0x1E69DD250);
      swift_dynamicCast();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v14 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v2 = v14;
    v4 = a1 + 56;
    do
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_8PaperKit17SearchQueryResultVtMd, &_sSi_8PaperKit17SearchQueryResultVtMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi9pageIndex_8PaperKit17SearchQueryResultV05queryG0tMd, &_sSi9pageIndex_8PaperKit17SearchQueryResultV05queryG0tMR);
      swift_dynamicCast();
      v5 = v12;
      v6 = v13;
      v8 = *(v14 + 16);
      v7 = *(v14 + 24);
      if (v8 >= v7 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1);
        v6 = v13;
        v5 = v12;
      }

      *(v14 + 16) = v8 + 1;
      v9 = v14 + 40 * v8;
      *(v9 + 32) = v11;
      *(v9 + 40) = v5;
      *(v9 + 56) = v6;
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  return v2;
}

{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v19 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v2 = v19;
    v4 = (a1 + 72);
    do
    {
      v5 = *(v4 - 5);
      v6 = *(v4 - 4);
      v7 = *(v4 - 3);
      v8 = *(v4 - 2);
      v9 = *(v4 - 1);
      v10 = *v4;
      outlined copy of PaperDocumentFindResult.Content(v5, v6, v7, v8, v9, *v4);
      v19 = v2;
      v12 = *(v2 + 16);
      v11 = *(v2 + 24);
      v15 = v12 + 1;
      if (v12 >= v11 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v15, 1);
        v2 = v19;
      }

      v17 = &type metadata for PaperDocumentFindResult;
      v18 = lazy protocol witness table accessor for type PaperDocumentFindResult and conformance PaperDocumentFindResult();
      v13 = swift_allocObject();
      *&v16 = v13;
      *(v13 + 16) = v5;
      *(v13 + 24) = v6;
      *(v13 + 32) = v7;
      *(v13 + 40) = v8;
      *(v13 + 48) = v9;
      *(v13 + 56) = v10;
      *(v2 + 16) = v15;
      outlined init with take of PaperKitHashable(&v16, v2 + 40 * v12 + 32);
      v4 += 48;
      --v1;
    }

    while (v1);
  }

  return v2;
}

{
  v2 = type metadata accessor for PKStroke();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v18 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
    v7 = v18;
    v10 = *(v3 + 16);
    v8 = v3 + 16;
    v9 = v10;
    v11 = a1 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v12 = *(v8 + 56);
    do
    {
      v9(v5, v11, v2);
      swift_dynamicCast();
      v18 = v7;
      v14 = *(v7 + 16);
      v13 = *(v7 + 24);
      if (v14 >= v13 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
        v7 = v18;
      }

      *(v7 + 16) = v14 + 1;
      outlined init with take of Any(&v17, (v7 + 32 * v14 + 32));
      v11 += v12;
      --v6;
    }

    while (v6);
  }

  return v7;
}

{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16 - v4;
  v6 = *(a1 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v18 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
    v7 = v18;
    v10 = *(v3 + 16);
    v8 = v3 + 16;
    v9 = v10;
    v11 = a1 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v12 = *(v8 + 56);
    do
    {
      v9(v5, v11, v2);
      swift_dynamicCast();
      v18 = v7;
      v14 = *(v7 + 16);
      v13 = *(v7 + 24);
      if (v14 >= v13 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
        v7 = v18;
      }

      *(v7 + 16) = v14 + 1;
      outlined init with take of Any(&v17, (v7 + 32 * v14 + 32));
      v11 += v12;
      --v6;
    }

    while (v6);
  }

  return v7;
}

{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13[-v4 - 8];
  v6 = *(a1 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v14 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
    v7 = v14;
    v8 = a1 + 32;
    do
    {
      outlined init with copy of Any(v8, v13);
      swift_dynamicCast();
      v14 = v7;
      v10 = *(v7 + 16);
      v9 = *(v7 + 24);
      if (v10 >= v9 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1);
        v7 = v14;
      }

      *(v7 + 16) = v10 + 1;
      (*(v3 + 32))(v7 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v10, v5, v2);
      v8 += 32;
      --v6;
    }

    while (v6);
  }

  return v7;
}

{
  v2 = type metadata accessor for PKStroke();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v14 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    v10 = *(v3 + 16);
    v9 = v3 + 16;
    v8 = v10;
    v11 = a1 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v12 = *(v9 + 56);
    do
    {
      v8(v5, v11, v2);
      type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for PKStroke, 0x1E69784D8);
      swift_dynamicCast();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v11 += v12;
      --v6;
    }

    while (v6);
    return v14;
  }

  return result;
}

char *specialized _arrayForceCast<A, B>(_:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v17 = MEMORY[0x1E69E7CC0];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v17;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        MEMORY[0x1DA6CE0C0](v5, a1);
        type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
        swift_dynamicCast();
        v7 = *(v17 + 16);
        v6 = *(v17 + 24);
        if (v7 >= v6 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1);
        }

        ++v5;
        *(v17 + 16) = v7 + 1;
        v8 = v17 + 40 * v7;
        *(v8 + 64) = v16;
        *(v8 + 32) = v14;
        *(v8 + 48) = v15;
      }

      while (v2 != v5);
    }

    else
    {
      v9 = (a1 + 32);
      type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
      do
      {
        v10 = *v9;
        swift_dynamicCast();
        v12 = *(v17 + 16);
        v11 = *(v17 + 24);
        if (v12 >= v11 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
        }

        *(v17 + 16) = v12 + 1;
        v13 = v17 + 40 * v12;
        *(v13 + 64) = v16;
        *(v13 + 32) = v14;
        *(v13 + 48) = v15;
        ++v9;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t specialized _arrayForceCast<A, B>(_:)(unint64_t a1, uint64_t *a2, uint64_t *a3)
{
  if (a1 >> 62)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v3 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {
    v3 = a1;

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
  }

  return v3;
}

uint64_t CanvasView.suggestedInsertionActions.getter()
{
  v0 = Canvas.canvasElementController.getter();
  if (!v0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC8PaperKit23CanvasElementController_toolPickerController);
  if (v2)
  {
    v3 = v2;
    v4 = ToolPickerController.textToolListViewController.getter();

    v6 = MarkupEditViewController.configuredMenuElements.getter(v5);
    v1 = v4;
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  return v6;
}

id CanvasView.allowsContentSnapping.setter(char a1)
{
  *(v1 + direct field offset for CanvasView.allowsContentSnapping) = a1;
  result = *(v1 + direct field offset for CanvasView.trackingPanGestureRecognizer);
  if (result)
  {
    return [result setEnabled_];
  }

  return result;
}

void CanvasView.calculateDocumentForTesting.didset()
{
  v0 = Canvas.editingView.getter();
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = (*(v2 + 16))(ObjectType, v2);

  if (v4)
  {
    CanvasElementDrawingView.initializeMathRecognitionIfNecessary()();
  }
}

void *CanvasView.paperViewController.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type DrawingFindResult and conformance DrawingFindResult(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, type metadata accessor for AnyCanvas, &protocol conformance descriptor for AnyCanvas);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    type metadata accessor for AnyCanvasElementViewController();
    result = swift_dynamicCastClass();
    if (!result)
    {

      return 0;
    }
  }

  return result;
}

void *CanvasView.canvasScrollView.getter()
{
  v1 = *(v0 + direct field offset for CanvasView.canvasScrollView);
  v2 = v1;
  return v1;
}

uint64_t CanvasView.movableAdornmentViews.getter()
{
  AnyCanvas.overlays.getter();
  v1 = specialized _arrayForceCast<A, B>(_:)(v0);

  return v1;
}

void CanvasView.editingMode.setter(char *a1)
{
  v1 = *a1;
  Canvas.editingMode.setter(&v1);

  CanvasView.tiledViewUpdateEditingState()();
}

uint64_t (*CanvasView.editingMode.modify(uint64_t **a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  v3[4] = v1;
  v3[5] = Canvas.editingMode.modify(v3);
  return CanvasView.editingMode.modify;
}

id CanvasView.drawingPolicy.getter()
{
  result = *(v0 + direct field offset for CanvasView.canvasTiledView);
  if (result)
  {
    return [result drawingPolicy];
  }

  __break(1u);
  return result;
}

id CanvasView.drawingPolicy.setter(uint64_t a1)
{
  result = *(v1 + direct field offset for CanvasView.canvasTiledView);
  if (result)
  {
    return [result setDrawingPolicy_];
  }

  __break(1u);
  return result;
}

uint64_t (*CanvasView.drawingPolicy.modify(void *a1))()
{
  a1[1] = v1;
  result = *(v1 + direct field offset for CanvasView.canvasTiledView);
  if (result)
  {
    *a1 = [result drawingPolicy];
    return CanvasView.drawingPolicy.modify;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *CanvasView.drawingPolicy.modify(void *result, char a2)
{
  v2 = *(result[1] + direct field offset for CanvasView.canvasTiledView);
  if (a2)
  {
    if (v2)
    {
      return [v2 setDrawingPolicy_];
    }

    __break(1u);
  }

  if (v2)
  {
    return [v2 setDrawingPolicy_];
  }

  __break(1u);
  return result;
}

void CanvasView.selectionInteractionDelegate.setter(uint64_t a1)
{
  v2 = *(v1 + direct field offset for CanvasView.selectionInteractionDelegate);
  *(v1 + direct field offset for CanvasView.selectionInteractionDelegate) = a1;
}

uint64_t CanvasView.canvasContentMode.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = direct field offset for CanvasView.canvasContentMode;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

id CanvasView.canvasContentMode.setter(char *a1)
{
  v2 = *a1;
  v3 = direct field offset for CanvasView.canvasContentMode;
  swift_beginAccess();
  v1[v3] = v2;
  return [v1 setNeedsLayout];
}

id (*CanvasView.canvasContentMode.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return CanvasView.canvasContentMode.modify;
}

id CanvasView.canvasContentMode.modify(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);

    return [v5 setNeedsLayout];
  }

  return result;
}

id CanvasView.toolPickerObserver.getter()
{
  v1 = direct field offset for CanvasView.$__lazy_storage_$_toolPickerObserver;
  v2 = *(v0 + direct field offset for CanvasView.$__lazy_storage_$_toolPickerObserver);
  if (v2)
  {
    v3 = *(v0 + direct field offset for CanvasView.$__lazy_storage_$_toolPickerObserver);
  }

  else
  {
    type metadata accessor for CanvasViewToolPickerObserver(0, *((*MEMORY[0x1E69E7D40] & *v0) + 0x1168), *((*MEMORY[0x1E69E7D40] & *v0) + 0x1170), *((*MEMORY[0x1E69E7D40] & *v0) + 0x1178));
    v4 = v0;
    v5 = v0;
    v6 = specialized CanvasViewToolPickerObserver.__allocating_init(canvasView:)();

    v7 = *(v0 + v1);
    *(v5 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

void CanvasView.contentView.didset(id a1)
{
  v2 = v1;
  v4 = direct field offset for CanvasView.contentView;
  v5 = *(v1 + direct field offset for CanvasView.contentView);
  if (v5)
  {
    if (a1)
    {
      type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIView, 0x1E69DD250);
      v6 = v5;
      v7 = a1;
      v8 = static NSObject.== infix(_:_:)();

      if (v8)
      {
        return;
      }
    }
  }

  else if (!a1)
  {
    return;
  }

  [a1 removeFromSuperview];
  v9 = Canvas.editingView.getter();
  v11 = v10;
  ObjectType = swift_getObjectType();
  (*(v11 + 24))(ObjectType, v11);

  v13 = *(v2 + v4);
  if (v13)
  {
    v14 = Canvas.editingView.getter();
    v24 = v13;
    [v14 insertSubview:v24 atIndex:0];

    v15 = Canvas.editingView.getter();
    [v15 frame];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;

    [v24 setFrame_];
  }
}

void CanvasView.editingContainerElementId.didset(uint64_t a1)
{
  v2 = Canvas.editingView.getter();
  v4 = v3;
  v5 = type metadata accessor for CanvasViewSelectionInteractionDelegate();
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR____TtC8PaperKit38CanvasViewSelectionInteractionDelegate_containerView + 8] = 0;
  *(swift_unknownObjectWeakInit() + 8) = v4;
  swift_unknownObjectWeakAssign();
  v11.receiver = v6;
  v11.super_class = v5;
  v7 = objc_msgSendSuper2(&v11, sel_init);

  v8 = *(v1 + direct field offset for CanvasView.selectionInteractionDelegate);
  *(v1 + direct field offset for CanvasView.selectionInteractionDelegate) = v7;

  v9 = *(v1 + direct field offset for CanvasView.canvasTiledView);
  if (v9)
  {
    v10 = [v9 selectionInteraction];
    [v10 setDelegate_];
  }
}

uint64_t CanvasView.editingContainerElementId.setter(uint64_t a1)
{
  v2 = type metadata accessor for CRKeyPath();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = Canvas.editingContainerElementId.setter(v6);
  CanvasView.editingContainerElementId.didset(v7);
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*CanvasView.editingContainerElementId.modify(void *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  v3[4] = v1;
  v3[5] = Canvas.editingContainerElementId.modify(v3);
  return CanvasView.editingContainerElementId.modify;
}

void CanvasView.editingMode.modify(void *a1, char a2, void (*a3)(uint64_t))
{
  v5 = *a1;
  v6 = (*(*a1 + 40))(*a1, 0);
  if ((a2 & 1) == 0)
  {
    a3(v6);
  }

  free(v5);
}

void CanvasView.persistUIState(_:)(void (*a1)(uint64_t), uint64_t a2)
{
  v23 = a2;
  v24 = a1;
  v3 = (*MEMORY[0x1E69E7D40] & *v2);
  v4 = v3[557];
  v5 = v3[558];
  v6 = type metadata accessor for Capsule();
  v7 = *(v6 - 8);
  *&v8 = MEMORY[0x1EEE9AC00](v6).n128_u64[0];
  v10 = &v23 - v9;
  v11 = *(v2 + direct field offset for CanvasView.canvasScrollView);
  if (v11)
  {
    [*(v2 + direct field offset for CanvasView.canvasScrollView) contentOffset];
    v13 = v12;
    v15 = v14;
    Canvas.updatablePaper2.getter(v10);
    MEMORY[0x1EEE9AC00](v16);
    *(&v23 - 4) = v4;
    *(&v23 - 3) = v5;
    v17 = v3[559];
    *(&v23 - 2) = v17;
    swift_getKeyPath();
    Capsule.subscript.getter();

    v18 = *(v7 + 8);
    v19 = v18(v10, v6);
    v20 = v13 + v25;
    v21 = v15 + v26;
    v24(v19);
    CanvasView.updateAfterDidScroll(_:)(v11);
    Canvas.updatablePaper2.getter(v10);
    MEMORY[0x1EEE9AC00](v22);
    *(&v23 - 4) = v4;
    *(&v23 - 3) = v5;
    *(&v23 - 2) = v17;
    swift_getKeyPath();
    Capsule.subscript.getter();

    v18(v10, v6);
    [(UIScrollView *)v11 setContentOffset:v20 - v25, v21 - v26];
  }

  else
  {
    __break(1u);
  }
}

uint64_t CanvasView.__allocating_init(frame:paper:allowMediaCanvasElements:transparentBackground:paperViewController:)(uint64_t a1, double a2, double a3, double a4, double a5, uint64_t a6, uint64_t a7, void *a8)
{
  v9 = a7;
  type metadata accessor for CRContext();
  v20 = 0;
  memset(v19, 0, sizeof(v19));
  v15 = MEMORY[0x1DA6CC630](0, v19);
  outlined destroy of EncryptionDelegate?(v19);
  v16 = specialized CanvasView.__allocating_init(context:frame:paper:allowsEditing:allowMediaCanvasElements:transparentBackground:paperViewController:)(v15, a1, 2u, v9, a8, a2, a3, a4, a5);
  v17 = type metadata accessor for Capsule();
  (*(*(v17 - 8) + 8))(a1, v17);
  return v16;
}

uint64_t CanvasView.__allocating_init(context:frame:paper:allowsEditing:allowMediaCanvasElements:transparentBackground:paperViewController:)(void *a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7, uint64_t a8, uint64_t a9, void *a10)
{
  v11 = specialized CanvasView.__allocating_init(context:frame:paper:allowsEditing:allowMediaCanvasElements:transparentBackground:paperViewController:)(a1, a2, a3, a9, a10, a4, a5, a6, a7);
  v12 = type metadata accessor for Capsule();
  (*(*(v12 - 8) + 8))(a2, v12);
  return v11;
}

uint64_t CanvasView.__allocating_init(context:frame:paper:editingMode:allowMediaCanvasElements:transparentBackground:paperViewController:)(void *a1, ValueMetadata *a2, char *a3, uint64_t a4, char a5, void *a6, double a7, double a8, double a9, double a10)
{
  specialized CanvasView.__allocating_init(context:frame:paper:editingMode:allowMediaCanvasElements:transparentBackground:paperViewController:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
  v12 = v11;
  v13 = type metadata accessor for Capsule();
  (*(*(v13 - 8) + 8))(a2, v13);
  return v12;
}

uint64_t CanvasView.init(context:frame:paper:editingMode:allowMediaCanvasElements:transparentBackground:paperViewController:)(void *a1, ValueMetadata *a2, char *a3, uint64_t a4, char a5, void *a6, double a7, double a8, double a9, double a10)
{
  specialized CanvasView.init(context:frame:paper:editingMode:allowMediaCanvasElements:transparentBackground:paperViewController:)(a1, a2, a3, a7, a8, a9, a10, a4, a5, a6);
  v12 = v11;
  v13 = type metadata accessor for Capsule();
  (*(*(v13 - 8) + 8))(a2, v13);
  return v12;
}

Swift::Void __swiftcall CanvasView.tiledViewUpdateEditingState()()
{
  v1 = *(v0 + direct field offset for CanvasView.canvasTiledView);
  if (v1)
  {
    Canvas.editingMode.getter(&v8);
    v2 = v8;
    if (v8 != 2)
    {
      v2 = 0;
    }

    if (v8 >= 2u)
    {
      v3 = v2;
    }

    else
    {
      v3 = 0;
    }

    v4 = v8 >= 2u;
    v5 = [v1 canvasView];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 drawingGestureRecognizer];

      [v7 setEnabled_];
    }

    [v1 setDrawingPolicy_];
  }

  else
  {
    __break(1u);
  }
}

id CanvasView._activeToolPicker.getter()
{
  v1 = CanvasView.paperViewController.getter();
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  if ((*((*MEMORY[0x1E69E7D40] & *v1) + 0x60))())
  {
    v4 = v3;
    ObjectType = swift_getObjectType();
    if ((*(v4 + 24))(v2, ObjectType, v4))
    {
      v6 = (*(v4 + 32))(v2, ObjectType, v4);

      swift_unknownObjectRelease();
      return v6;
    }

    swift_unknownObjectRelease();
  }

  v9 = [v0 pencilKitResponderState];
  v8 = [v9 _currentActiveToolPicker];

  if (!v8)
  {
    v8 = *&v2[OBJC_IVAR____TtC8PaperKit30AnyCanvasElementViewController_toolPicker];
  }

  return v8;
}

Swift::Void __swiftcall CanvasView.registerToolPickerObservers(_:)(PKToolPicker a1)
{
  [(objc_class *)a1.super.isa addObserver:v1];
  v3 = CanvasView.toolPickerObserver.getter();
  [(objc_class *)a1.super.isa addObserver:v3];

  v4 = *(v1 + direct field offset for CanvasView.$__lazy_storage_$_toolPickerObserver);
  CanvasViewToolPickerObserver.updateUI(toolPicker:)(a1);
}

id CanvasView.contentSnapshottingView.getter()
{
  result = *(v0 + direct field offset for CanvasView.canvasTiledView);
  if (result)
  {
    v2 = [result contentSnapshottingView];

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void CanvasView.contentSnapshottingView.setter(void *a1)
{
  specialized CanvasView.contentSnapshottingView.setter(a1);
}

void (*CanvasView.contentSnapshottingView.modify(id *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  *a1 = CanvasView.contentSnapshottingView.getter();
  return CanvasView.contentSnapshottingView.modify;
}

void CanvasView.contentSnapshottingView.modify(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  if ((a2 & 1) == 0)
  {
    v5 = *(v2 + direct field offset for CanvasView.canvasTiledView);
    if (v5)
    {
      v6 = *a1;
      [v5 setContentSnapshottingView_];
      goto LABEL_6;
    }

LABEL_10:
    __break(1u);
    return;
  }

  v3 = *(v2 + direct field offset for CanvasView.canvasTiledView);
  v4 = *a1;
  if (!v3)
  {
    __break(1u);
    goto LABEL_10;
  }

  v6 = v4;
  [v3 setContentSnapshottingView_];

LABEL_6:
}

void CanvasView.visibleBoundsInModelSpace.getter(uint64_t a1)
{
  v2 = *&v1[direct field offset for CanvasView.canvasScrollView];
  if (v2)
  {
    v3 = v1;
    v4 = Canvas.editingView.getter();
    v5 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x2C0);
    v6 = v2;
    v5(&v41);

    t1 = v41;
    t2.a = 1.0;
    t2.b = 0.0;
    t2.c = 0.0;
    t2.d = 1.0;
    t2.tx = 0.0;
    t2.ty = 0.0;
    CGAffineTransformConcat(&v38, &t1, &t2);
    t1 = v38;
    CGAffineTransformInvert(&t2, &t1);
    b = t2.b;
    a = t2.a;
    d = t2.d;
    c = t2.c;
    ty = t2.ty;
    tx = t2.tx;
    [v6 bounds];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    [v3 safeAreaInsets];
    v16 = v15;
    v18 = v17;
    Canvas.visibleBoundsOverride.getter(&t2);
    if (LOBYTE(t2.tx))
    {
      [v6 convertRect:*&v3[direct field offset for CanvasView.zoomView] toView:{UIEdgeInsetsInsetRect(v8, v10, v12, v14, v16, v18)}];
      v30 = v20;
      v31 = v19;
      v28 = v22;
      v29 = v21;
    }

    else
    {
      v30 = t2.b;
      v31 = t2.a;
      v28 = t2.d;
      v29 = t2.c;
    }

    v23 = *&v3[direct field offset for CanvasView.zoomView];
    if (v23)
    {
      [v23 bounds];
      t1.a = a;
      t1.b = b;
      t1.c = c;
      t1.d = d;
      t1.tx = tx;
      t1.ty = ty;
      v43 = CGRectApplyAffineTransform(v42, &t1);
      y = v43.origin.y;
      x = v43.origin.x;
      width = v43.size.width;
      height = v43.size.height;
      t1.a = a;
      t1.b = b;
      t1.c = c;
      t1.d = d;
      t1.tx = tx;
      t1.ty = ty;
      v43.origin.y = v30;
      v43.origin.x = v31;
      v43.size.height = v28;
      v43.size.width = v29;
      v45 = CGRectApplyAffineTransform(v43, &t1);
      v44.origin.y = y;
      v44.origin.x = x;
      v44.size.width = width;
      v44.size.height = height;
      CGRectIntersection(v44, v45);
    }

    else
    {
      __break(1u);
    }
  }
}

Swift::Void __swiftcall CanvasView.didMoveToSuperview()()
{
  v1 = v0;
  v2 = type metadata accessor for CanvasView(0, *((*MEMORY[0x1E69E7D40] & *v0) + 0x1168), *((*MEMORY[0x1E69E7D40] & *v0) + 0x1170), *((*MEMORY[0x1E69E7D40] & *v0) + 0x1178));
  v10.receiver = v0;
  v10.super_class = v2;
  objc_msgSendSuper2(&v10, sel_didMoveToSuperview);
  v3 = [v0 superview];
  if (v3)
  {
  }

  else
  {
    v4 = Canvas.editingView.getter();
    v6 = v5;
    ObjectType = swift_getObjectType();
    v8 = (*(v6 + 168))(ObjectType, v6);

    if (v8)
    {
      v9 = *&v8[OBJC_IVAR____TtC8PaperKit15FormFillingView_analytics];

      FormAnalytics.merge(_:for:)(v9, v1);
    }

    FormAnalytics.recordSessionEvent()();
  }
}

void @objc CanvasView.didMoveToSuperview()(void *a1)
{
  v1 = a1;
  CanvasView.didMoveToSuperview()();
}

Swift::Int CanvasView.ZoomState.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1DA6CE810](a1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CanvasView<A>.ZoomState(uint64_t a1)
{
  Hasher.init(_seed:)();
  CanvasView.ZoomState.hash(into:)(v3, *v1);
  return Hasher._finalize()();
}

void CanvasView.zoomState.didset(unsigned __int8 a1)
{
  if (*(v1 + direct field offset for CanvasView.zoomState) != a1)
  {
    v2 = specialized Canvas.paperView.getter();
    v3 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x3D0);
    v4 = v2;
    v3();
  }
}

void CanvasView.zoomState.setter(char a1)
{
  v2 = *(v1 + direct field offset for CanvasView.zoomState);
  *(v1 + direct field offset for CanvasView.zoomState) = a1;
  CanvasView.zoomState.didset(v2);
}

uint64_t CanvasView.snappedContentInsets.getter()
{
  if (*(v0 + direct field offset for CanvasView.snappedContentInsets + 1))
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  return v1 | *(v0 + direct field offset for CanvasView.snappedContentInsets);
}

uint64_t CanvasView.snappedContentInsets.setter(uint64_t result, char a2)
{
  v3 = (v2 + direct field offset for CanvasView.snappedContentInsets);
  *v3 = result;
  v3[1] = a2;
  return result;
}

id @objc CanvasView.viewForZooming(in:)()
{
  v0 = _s8PaperKit10CanvasViewC04zoomD0AA0c16ElementContainerD0CSgvgTf4n_g_0();

  return v0;
}

Swift::Void __swiftcall CanvasView.updateAfterDidScroll(_:)(UIScrollView *a1)
{
  v2 = v1;
  v54 = a1;
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x1168);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v53 - v7;
  v9 = type metadata accessor for Capsule();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v53 - v11;
  v13 = specialized Canvas.paperView.getter();
  v14 = ContainerCanvasElementView.modelBounds.getter();
  v16 = v15;
  v18 = v17;
  v20 = v19;

  specialized Canvas.paperView.getter();
  CanvasElementView.canvasElement.getter(v12);
  Capsule.root.getter();
  (*(v10 + 8))(v12, v9);
  v21 = v4 & v3;
  v22 = v54;
  v23 = (*(*(*(v21 + 4472) + 8) + 56))(v5);
  (*(v6 + 8))(v8, v5);
  CGImagePropertyOrientation.transform.getter(v23, &v56);
  v55 = v56;
  v57.origin.x = v14;
  v57.origin.y = v16;
  v57.size.width = v18;
  v57.size.height = v20;
  v58 = CGRectApplyAffineTransform(v57, &v55);
  width = v58.size.width;
  height = v58.size.height;
  [(UIScrollView *)v22 zoomScale:v58.origin.x];
  v27 = width * v26;
  v28 = height * v26;
  [(UIScrollView *)v22 contentSize];
  v32 = vabdd_f64(v27, v29) < 1.5;
  v31 = vabdd_f64(v28, v30);
  v32 = v32 && v31 < 1.5;
  if (!v32)
  {
    [(UIScrollView *)v22 setContentSize:v27, v28];
  }

  v33 = *&v2[direct field offset for CanvasView.zoomView];
  if (!v33)
  {
    __break(1u);
    goto LABEL_23;
  }

  [v33 bounds];
  v36 = vabdd_f64(height, v35);
  if (vabdd_f64(width, v34) < 1.5 && v36 < 1.5)
  {
    goto LABEL_15;
  }

  [(UIScrollView *)v22 zoomScale];
  v39 = v38;
  v40 = v2[direct field offset for CanvasView.zoomState];
  [(UIScrollView *)v22 setZoomScale:1.0];
  v41 = *&v2[direct field offset for CanvasView.zoomView];
  if (!v41)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v42 = v41;
  [v42 frame];
  [v42 setFrame_];

  if (v2[direct field offset for CanvasView.firstLayout] == 1)
  {
    [(UIScrollView *)v22 frame];
    v39 = fmin(CGRectGetWidth(v59) / width, 1.0);
    v2[direct field offset for CanvasView.firstLayout] = 0;
  }

  [(UIScrollView *)v22 setZoomScale:v39];
  v43 = v2[direct field offset for CanvasView.zoomState];
  v2[direct field offset for CanvasView.zoomState] = v40;
  CanvasView.zoomState.didset(v43);
LABEL_15:
  CanvasView.updateContentInsets()();
  v44 = specialized Canvas.paperView.getter();
  ContainerCanvasElementView.didScroll(in:)(v2);

  AnyCanvas.overlays.getter();
  v46 = *(v45 + 16);
  if (v46)
  {
    v47 = (v45 + 32);
    do
    {
      v48 = *v47;
      v47 += 2;
      [v48 setNeedsLayout];
      --v46;
    }

    while (v46);
  }

  swift_getKeyPath();
  *&v55.a = v2;
  lazy protocol witness table accessor for type DrawingFindResult and conformance DrawingFindResult(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, type metadata accessor for AnyCanvas, &protocol conformance descriptor for AnyCanvas);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v49 = &v2[OBJC_IVAR____TtC8PaperKit9AnyCanvas__delegate];
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v50 = *&v2[direct field offset for CanvasView.zoomView];
    if (v50)
    {
      v51 = *(v49 + 1);
      ObjectType = swift_getObjectType();
      [v50 frame];
      [v2 convertRect:v22 fromCoordinateSpace:?];
      (*(v51 + 64))(v2, ObjectType, v51);
      swift_unknownObjectRelease();
      return;
    }

LABEL_24:
    __break(1u);
  }
}

Swift::Void __swiftcall CanvasView.scrollViewDidScroll(_:)(UIScrollView *a1)
{
  if ((*(v1 + direct field offset for CanvasView.adjustingInsets) & 1) == 0)
  {
    CanvasView.updateAfterDidScroll(_:)(a1);
  }
}

void @objc CanvasView.scrollViewDidScroll(_:)(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  CanvasView.scrollViewDidScroll(_:)(v4);
}

Swift::Void __swiftcall CanvasView.scrollViewWillBeginDecelerating(_:)(UIScrollView *a1)
{
  if (one-time initialization token for isMobileNotes != -1)
  {
    swift_once();
  }

  if (static NSBundle.isMobileNotes == 1)
  {
    v3 = [(UIScrollView *)a1 pinchGestureRecognizer];
    if (v3)
    {
      v4 = v3;
      [(UIPinchGestureRecognizer *)v3 velocity];
      v6 = v5;
    }

    else
    {
      v6 = 0.0;
    }

    [(UIScrollView *)a1 zoomScale];
    if (v6 / v7 < -8.0)
    {
      [(UIScrollView *)a1 setZoomScale:1 animated:1.0];
      *(v1 + direct field offset for CanvasView.snappedContentInsets) = 257;
    }
  }
}

void @objc CanvasView.scrollViewWillBeginDecelerating(_:)(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  CanvasView.scrollViewWillBeginDecelerating(_:)(v4);
}

void @objc CanvasView.scrollViewDidZoom(_:)(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  specialized CanvasView.scrollViewDidZoom(_:)();
}

void @objc CanvasView.scrollViewDidEndZooming(_:with:atScale:)(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  specialized CanvasView.scrollViewDidEndZooming(_:with:atScale:)(v6);
}

void specialized CanvasView.contentInset()()
{
  v1 = *&v0[direct field offset for CanvasView.canvasScrollView];
  if (v1)
  {
    v2 = v1;
    [v2 contentSize];
    [v2 zoomScale];
    [v2 bounds];
    CGRectGetHeight(v8);
  }

  [v0 bounds];
  x = v9.origin.x;
  y = v9.origin.y;
  width = v9.size.width;
  height = v9.size.height;
  CGRectGetWidth(v9);
  if (v1)
  {
    [v1 contentSize];
    v10.origin.x = x;
    v10.origin.y = y;
    v10.size.width = width;
    v10.size.height = height;
    CGRectGetHeight(v10);
    [v1 contentSize];
    v7 = &v0[direct field offset for CanvasView.snappedContentInsets];
    if (v0[direct field offset for CanvasView.snappedContentInsets])
    {
      if ((v7[1] & 1) == 0)
      {
LABEL_6:
        v11.origin.x = x;
        v11.origin.y = y;
        v11.size.width = width;
        v11.size.height = height;
        CGRectGetHeight(v11);
      }
    }

    else
    {
      v12.origin.x = x;
      v12.origin.y = y;
      v12.size.width = width;
      v12.size.height = height;
      CGRectGetWidth(v12);
      if ((v7[1] & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
    __break(1u);
  }
}

UIEdgeInsets __swiftcall CanvasView.contentInset()()
{
  v1 = *&v0[direct field offset for CanvasView.minimumContentInsets];
  v2 = *&v0[direct field offset for CanvasView.minimumContentInsets + 8];
  v3 = *&v0[direct field offset for CanvasView.minimumContentInsets + 16];
  v4 = *&v0[direct field offset for CanvasView.minimumContentInsets + 24];
  v5 = *&v0[direct field offset for CanvasView.canvasScrollView];
  if (!v5 || (v6 = v5, [v6 contentSize], v8 = v7, objc_msgSend(v6, sel_zoomScale), v10 = v8 * v9, objc_msgSend(v6, sel_bounds), Height = CGRectGetHeight(v42), v6, v12 = 0.0, v13 = 0.0, v10 > Height - v1 - v3))
  {
    v12 = v3;
    v13 = v1;
  }

  v40 = v13;
  v41 = v12;
  [v0 bounds];
  x = v43.origin.x;
  y = v43.origin.y;
  width = v43.size.width;
  v17 = v43.size.height;
  v18 = CGRectGetWidth(v43);
  v22 = *&v0[direct field offset for CanvasView.canvasScrollView];
  if (v22)
  {
    v23 = v18;
    [*&v0[direct field offset for CanvasView.canvasScrollView] contentSize];
    v25 = v23 - v24 - (v2 + v4);
    if (v25 < 0.0)
    {
      v26 = 0.0;
    }

    else
    {
      v26 = v25;
    }

    v44.origin.x = x;
    v44.origin.y = y;
    v44.size.width = width;
    v44.size.height = v17;
    v27 = CGRectGetHeight(v44);
    [v22 contentSize];
    v30 = v40;
    v29 = v41;
    if (v27 - v28 - (v41 + v40) < 0.0)
    {
      v31 = 0.0;
    }

    else
    {
      v31 = v27 - v28 - (v41 + v40);
    }

    v32 = 0.5;
    v33 = direct field offset for CanvasView.snappedContentInsets;
    if (v0[direct field offset for CanvasView.snappedContentInsets])
    {
      v34 = v26 * 0.5;
      v35 = round(v2 + v26 * 0.5);
      v36 = v4 + v34;
    }

    else
    {
      v45.origin.x = x;
      v45.origin.y = y;
      v37 = v31;
      v45.size.width = width;
      v45.size.height = v17;
      v38 = CGRectGetWidth(v45);
      v32 = 0.5;
      v31 = v37;
      v30 = v40;
      v29 = v41;
      v36 = v38 + -100.0;
      v33 = direct field offset for CanvasView.snappedContentInsets;
      v35 = v38 + -100.0;
    }

    if (v0[v33 + 1])
    {
      v18 = round(v30 + v31 * v32);
      v20 = round(v29 + v31 * v32);
    }

    else
    {
      v46.origin.x = x;
      v46.origin.y = y;
      v46.size.width = width;
      v46.size.height = v17;
      v39 = CGRectGetHeight(v46);
      v30 = v40;
      v29 = v41;
      v20 = v39 + -100.0;
      v18 = v39 + -100.0;
    }

    if (v35 > v2)
    {
      v19 = v35;
    }

    else
    {
      v19 = v2;
    }

    if (v36 > v4)
    {
      v21 = v36;
    }

    else
    {
      v21 = v4;
    }

    if (v18 <= v30)
    {
      v18 = v30;
    }

    if (v20 <= v29)
    {
      v20 = v29;
    }
  }

  else
  {
    __break(1u);
  }

  result.right = v21;
  result.bottom = v20;
  result.left = v19;
  result.top = v18;
  return result;
}

void specialized CanvasView.updateContentInsets()()
{
  [v0 bounds];
  Width = CGRectGetWidth(v44);
  v2 = *&v0[direct field offset for CanvasView.canvasScrollView];
  if (!v2)
  {
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v3 = Width;
  [*&v0[direct field offset for CanvasView.canvasScrollView] contentSize];
  v5 = v3 - v4;
  if (v5 < 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v5;
  }

  [v0 bounds];
  Height = CGRectGetHeight(v45);
  [v2 contentSize];
  if (Height - v8 < 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = Height - v8;
  }

  if (v0[direct field offset for CanvasView.allowsContentSnapping] != 1)
  {
    goto LABEL_26;
  }

  v10 = direct field offset for CanvasView.trackingPanGestureRecognizer;
  v11 = *&v0[direct field offset for CanvasView.trackingPanGestureRecognizer];
  if (!v11)
  {
    goto LABEL_39;
  }

  [v11 translationInView_];
  v14 = *&v0[v10];
  if (!v14)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v15 = v12;
  v16 = v13;
  v17 = [v14 numberOfTouches];
  v18 = fabs(v15);
  if (v17 < 2 || v18 <= 100.0)
  {
    [v2 contentOffset];
    if (fabs(v6 * 0.5 + v20) >= 50.0)
    {
      goto LABEL_19;
    }

    v21 = 1;
  }

  else
  {
    v21 = 0;
  }

  v0[direct field offset for CanvasView.snappedContentInsets] = v21;
LABEL_19:
  v22 = *&v0[v10];
  if (!v22)
  {
LABEL_41:
    __break(1u);
    return;
  }

  if ([v22 numberOfTouches] >= 2 && fabs(v16) > 100.0)
  {
    v23 = 0;
LABEL_25:
    v0[direct field offset for CanvasView.snappedContentInsets + 1] = v23;
    goto LABEL_26;
  }

  [v2 contentOffset];
  if (fabs(v9 * 0.5 + v24) < 50.0)
  {
    v23 = 1;
    goto LABEL_25;
  }

LABEL_26:
  specialized CanvasView.contentInset()();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  [v2 contentInset];
  v37 = vabdd_f64(v32, v36);
  v38 = vabdd_f64(v28, v35) < 1.5 && v37 < 1.5;
  v39 = vabdd_f64(v26, v33);
  v40 = v38 && v39 < 1.5;
  v41 = vabdd_f64(v30, v34);
  if (!v40 || v41 >= 1.5)
  {
    v43 = direct field offset for CanvasView.adjustingInsets;
    v0[direct field offset for CanvasView.adjustingInsets] = 1;
    [v2 setContentInset_];
    v0[v43] = 0;
  }
}

Swift::Void __swiftcall CanvasView.updateContentInsets()()
{
  [v0 bounds];
  Width = CGRectGetWidth(v38);
  v2 = *&v0[direct field offset for CanvasView.canvasScrollView];
  if (!v2)
  {
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v3 = Width;
  [*&v0[direct field offset for CanvasView.canvasScrollView] contentSize];
  v5 = v3 - v4;
  if (v5 < 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v5;
  }

  [v0 bounds];
  Height = CGRectGetHeight(v39);
  [v2 contentSize];
  if (Height - v8 < 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = Height - v8;
  }

  if (v0[direct field offset for CanvasView.allowsContentSnapping] != 1)
  {
    goto LABEL_26;
  }

  v10 = *&v0[direct field offset for CanvasView.trackingPanGestureRecognizer];
  if (!v10)
  {
    goto LABEL_39;
  }

  [v10 translationInView_];
  v13 = *&v0[direct field offset for CanvasView.trackingPanGestureRecognizer];
  if (!v13)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v14 = v11;
  v15 = v12;
  v16 = [v13 numberOfTouches];
  v17 = fabs(v14);
  if (v16 < 2 || v17 <= 100.0)
  {
    [v2 contentOffset];
    if (fabs(v6 * 0.5 + v19) >= 50.0)
    {
      goto LABEL_19;
    }

    v20 = 1;
  }

  else
  {
    v20 = 0;
  }

  v0[direct field offset for CanvasView.snappedContentInsets] = v20;
LABEL_19:
  v21 = *&v0[direct field offset for CanvasView.trackingPanGestureRecognizer];
  if (!v21)
  {
LABEL_41:
    __break(1u);
    return;
  }

  if ([v21 numberOfTouches] >= 2 && fabs(v15) > 100.0)
  {
    v22 = 0;
LABEL_25:
    v0[direct field offset for CanvasView.snappedContentInsets + 1] = v22;
    goto LABEL_26;
  }

  [v2 contentOffset];
  if (fabs(v9 * 0.5 + v23) < 50.0)
  {
    v22 = 1;
    goto LABEL_25;
  }

LABEL_26:
  v40 = CanvasView.contentInset()();
  top = v40.top;
  left = v40.left;
  bottom = v40.bottom;
  right = v40.right;
  [v2 contentInset];
  v32 = vabdd_f64(right, v31);
  v33 = vabdd_f64(left, v30) < 1.5 && v32 < 1.5;
  v34 = vabdd_f64(top, v28);
  v35 = v33 && v34 < 1.5;
  v36 = vabdd_f64(bottom, v29);
  if (!v35 || v36 >= 1.5)
  {
    v0[direct field offset for CanvasView.adjustingInsets] = 1;
    [v2 setContentInset_];
    v0[direct field offset for CanvasView.adjustingInsets] = 0;
  }
}

void CanvasView.previousSize.setter(double a1, double a2)
{
  v3 = (v2 + direct field offset for CanvasView.previousSize);
  *v3 = a1;
  v3[1] = a2;
}

Swift::Void __swiftcall CanvasView.viewSizeDidChange()()
{
  v1 = (*MEMORY[0x1E69E7D40] & *v0);
  v2 = v1[557];
  v3 = v1[558];
  v4 = type metadata accessor for Capsule();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v19[-v7];
  if (*(v0 + direct field offset for CanvasView.allowAutomaticZoomScaleAdjustment) == 1)
  {
    v9 = *(v0 + direct field offset for CanvasView.canvasScrollView);
    if (v9)
    {
      v10 = v6;
      Canvas.updatablePaper2.getter(v8);
      MEMORY[0x1EEE9AC00](v11);
      *&v19[-32] = v2;
      *&v19[-24] = v3;
      *&v19[-16] = v1[559];
      swift_getKeyPath();
      v12 = v9;
      Capsule.subscript.getter();

      (*(v5 + 8))(v8, v10);
      v13 = v20;
      v14 = v21;
      [v0 bounds];
      v17 = v16 / v13;
      if (v15 / v14 < v16 / v13)
      {
        v17 = v15 / v14;
      }

      [v12 setMinimumZoomScale_];
    }
  }

  if (*(v0 + direct field offset for CanvasView.zoomState) == 1)
  {
    IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();
    CanvasView.zoomToFit(animated:)(!IsReduceMotionEnabled);
  }
}

Swift::Void __swiftcall CanvasView.layoutSubviews()()
{
  v1 = v0;
  v2 = *v0;
  v3 = *MEMORY[0x1E69E7D40];
  v4 = *((*MEMORY[0x1E69E7D40] & v2) + 0x1168);
  v5 = *((*MEMORY[0x1E69E7D40] & v2) + 0x1170);
  v6 = type metadata accessor for Capsule();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v27 - v8;
  v10 = *((v3 & v2) + 0x1178);
  v11 = type metadata accessor for CanvasView(0, v4, v5, v10);
  v29.receiver = v1;
  v29.super_class = v11;
  objc_msgSendSuper2(&v29, sel_layoutSubviews);
  [v1 bounds];
  if (*&v1[direct field offset for CanvasView.previousSize] != v12 || *&v1[direct field offset for CanvasView.previousSize + 8] != v13)
  {
    v15 = v12;
    v16 = v13;
    CanvasView.viewSizeDidChange()();
    v17 = &v1[direct field offset for CanvasView.previousSize];
    *v17 = v15;
    v17[1] = v16;
  }

  v18 = *&v1[direct field offset for CanvasView.canvasScrollView];
  if (v18)
  {
    [v1 bounds];
    [(UIScrollView *)v18 setFrame:?];
    v19 = direct field offset for CanvasView.canvasContentMode;
    swift_beginAccess();
    if (v1[v19] == 1)
    {
      [v1 bounds];
      Width = CGRectGetWidth(v30);
      Canvas.updatablePaper2.getter(v9);
      MEMORY[0x1EEE9AC00](v21);
      *(&v27 - 4) = v4;
      *(&v27 - 3) = v5;
      *(&v27 - 2) = v10;
      swift_getKeyPath();
      Capsule.subscript.getter();

      v22 = *(v7 + 8);
      v22(v9, v6);
      v23 = Width / CGRectGetWidth(v28);
      [v1 bounds];
      Height = CGRectGetHeight(v31);
      Canvas.updatablePaper2.getter(v9);
      MEMORY[0x1EEE9AC00](v25);
      *(&v27 - 4) = v4;
      *(&v27 - 3) = v5;
      *(&v27 - 2) = v10;
      swift_getKeyPath();
      Capsule.subscript.getter();

      v22(v9, v6);
      v26 = Height / CGRectGetHeight(v28);
      if (v26 >= v23)
      {
        v26 = v23;
      }

      [(UIScrollView *)v18 setZoomScale:v26];
    }

    CanvasView.updateAfterDidScroll(_:)(v18);
  }

  else
  {
    __break(1u);
  }
}

void key path getter for PaperRenderable.frame : <A>A(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  *a3 = (*(*(*(*(a1 + a2 - 8) + 8) + 8) + 8))(*(a1 + a2 - 24));
  *(a3 + 8) = v4;
  *(a3 + 16) = v5;
  *(a3 + 24) = v6;
}

{
  *a3 = (*(*(*(a1 + a2 - 8) + 8) + 8))(*(a1 + a2 - 24));
  *(a3 + 8) = v4;
  *(a3 + 16) = v5;
  *(a3 + 24) = v6;
}

uint64_t key path setter for CanvasElement.frame : <A>A(double *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return (*(*(*(a3 + a4 - 8) + 8) + 16))(*(a3 + a4 - 24), *(*(a3 + a4 - 8) + 8), *a1, a1[1], a1[2], a1[3]);
}

{
  return (*(*(a3 + a4 - 8) + 16))(*(a3 + a4 - 24), *(a3 + a4 - 8), *a1, a1[1], a1[2], a1[3]);
}

void @objc CanvasView.layoutSubviews()(void *a1)
{
  v1 = a1;
  CanvasView.layoutSubviews()();
}

void *CanvasView.scrollView.getter()
{
  v0 = specialized CanvasView.scrollView.getter();
  v1 = v0;
  return v0;
}

void *CanvasView.tiledView.getter()
{
  v0 = specialized CanvasView.tiledView.getter();
  v1 = v0;
  return v0;
}

void CanvasView.presentSubelement<A>(_:)(void *a1, uint64_t a2)
{
  v4 = CanvasView.paperViewController.getter();
  if (v4)
  {
    v5 = v4;
    Canvas.presentSubelement<A>(_:presentationViewController:)(a1, v4, a2);
  }
}

Swift::Bool __swiftcall CanvasView.gestureRecognizer(_:shouldRecognizeSimultaneouslyWith:)(UIGestureRecognizer *_, UIGestureRecognizer *shouldRecognizeSimultaneouslyWith)
{
  v3 = *(v2 + direct field offset for CanvasView.trackingPanGestureRecognizer);
  if (!v3)
  {
    return 0;
  }

  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIGestureRecognizer, 0x1E69DCA60);
  v6 = v3;
  v7 = _;
  v8 = static NSObject.== infix(_:_:)();

  if (v8)
  {
    return 1;
  }

  v10 = *(v2 + direct field offset for CanvasView.trackingPanGestureRecognizer);
  if (!v10)
  {
    return 0;
  }

  v11 = v10;
  v12 = shouldRecognizeSimultaneouslyWith;
  v13 = static NSObject.== infix(_:_:)();

  return v13 & 1;
}

BOOL @objc CanvasView.gestureRecognizer(_:shouldRecognizeSimultaneouslyWith:)(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  v9 = CanvasView.gestureRecognizer(_:shouldRecognizeSimultaneouslyWith:)(v6, v7);

  return v9;
}

Swift::Void __swiftcall CanvasView.toolPickerSelectedToolDidChange(_:)(PKToolPicker a1)
{
  v2 = CanvasView.toolPickerObserver.getter();
  CanvasViewToolPickerObserver.toolPickerSelectedToolItemDidChange(_:)(a1);
}

void @objc CanvasView.toolPickerIsRulerActiveDidChange(_:)(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  CanvasView.toolPickerSelectedToolDidChange(_:)(v4);
}

Swift::Void __swiftcall CanvasView.zoomToFit(animated:)(Swift::Bool animated)
{
  v3 = CanvasView.paperViewController.getter();
  if (v3)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMd, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMR);
    if (swift_dynamicCastClass() && (v5 = *(v1 + direct field offset for CanvasView.canvasScrollView)) != 0)
    {
      v11 = v5;
      CanvasElementViewController<>.scaleForZoomToFit.getter();
      v7 = v6;
      [v11 zoomScale];
      if (vabdd_f64(v8, v7) >= 0.001)
      {
        [v11 setZoomScale:animated animated:v7];
      }

      v9 = *(v1 + direct field offset for CanvasView.zoomState);
      *(v1 + direct field offset for CanvasView.zoomState) = 1;
      CanvasView.zoomState.didset(v9);

      v10 = v11;
    }

    else
    {
      v10 = v4;
    }
  }
}

uint64_t CanvasView.isAlmostZoomToFit.getter()
{
  result = CanvasView.paperViewController.getter();
  if (result)
  {
    v2 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMd, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMR);
    if (swift_dynamicCastClass() && (v3 = *(v0 + direct field offset for CanvasView.canvasScrollView)) != 0)
    {
      v4 = v3;
      CanvasElementViewController<>.scaleForZoomToFit.getter();
      v6 = v5;
      [v4 zoomScale];
      v8 = v7;

      if (vabdd_f64(v8, v6) < 0.001)
      {
        return 1;
      }
    }

    else
    {
    }

    return 0;
  }

  return result;
}

Swift::Void __swiftcall CanvasView.safeAreaInsetsDidChange()()
{
  v1 = v0;
  v2 = type metadata accessor for CanvasView(0, *((*MEMORY[0x1E69E7D40] & *v0) + 0x1168), *((*MEMORY[0x1E69E7D40] & *v0) + 0x1170), *((*MEMORY[0x1E69E7D40] & *v0) + 0x1178));
  v12.receiver = v0;
  v12.super_class = v2;
  objc_msgSendSuper2(&v12, sel_safeAreaInsetsDidChange);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit10CanvasViewCyAA5ImageVGMd, &_s8PaperKit10CanvasViewCyAA5ImageVGMR);
  v3 = swift_dynamicCastClass();
  if (v3 && (*(v0 + direct field offset for CanvasView.adjustingInsets) & 1) == 0)
  {
    v4 = v3;
    v5 = one-time initialization token for isPreviewApp;
    v6 = v1;
    if (v5 != -1)
    {
      swift_once();
    }

    if (static NSBundle.isPreviewApp == 1)
    {
      [v6 safeAreaInsets];
      v8 = v7;
      [v6 safeAreaInsets];
      v10 = (v4 + direct field offset for CanvasView.minimumContentInsets);
      if (vabdd_f64(v8, *(v4 + direct field offset for CanvasView.minimumContentInsets + 8)) >= 0.1 || vabdd_f64(v9, v10[3]) >= 0.1 || vabdd_f64(0.0, *v10) >= 0.1 || vabdd_f64(0.0, v10[2]) >= 0.1)
      {
        *v10 = 0.0;
        v10[1] = v8;
        v10[2] = 0.0;
        v10[3] = v9;
        specialized CanvasView.updateContentInsets()();
        if (*(v6 + direct field offset for CanvasView.zoomState) == 1)
        {
          IsReduceMotionEnabled = UIAccessibilityIsReduceMotionEnabled();
          CanvasView.zoomToFit(animated:)(!IsReduceMotionEnabled);
        }
      }
    }
  }
}

void @objc CanvasView.safeAreaInsetsDidChange()(void *a1)
{
  v1 = a1;
  CanvasView.safeAreaInsetsDidChange()();
}

double CanvasView.__ivar_destroyer()
{
  swift_unknownObjectRelease();

  return result;
}

id CanvasView.__deallocating_deinit()
{
  v1 = type metadata accessor for CanvasView(0, *((*MEMORY[0x1E69E7D40] & *v0) + 0x1168), *((*MEMORY[0x1E69E7D40] & *v0) + 0x1170), *((*MEMORY[0x1E69E7D40] & *v0) + 0x1178));
  v3.receiver = v0;
  v3.super_class = v1;
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

double @objc CanvasView.__ivar_destroyer(uint64_t a1)
{
  swift_unknownObjectRelease();

  return result;
}

uint64_t outlined destroy of EncryptionDelegate?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18EncryptionDelegate_pSgMd, &_s9Coherence18EncryptionDelegate_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void specialized CanvasView.init(coder:)()
{
  *(v0 + direct field offset for CanvasView.allowsContentSnapping) = 0;
  v1 = (v0 + direct field offset for CanvasView.calculateDocumentForTesting);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + direct field offset for CanvasView.trackingPanGestureRecognizer) = 0;
  *(v0 + direct field offset for CanvasView.rulerHostingDelegate) = 0;
  *(v0 + direct field offset for CanvasView.tiledViewDelegate) = 0;
  *(v0 + direct field offset for CanvasView.selectionInteractionDelegate) = 0;
  *(v0 + direct field offset for CanvasView.canvasContentMode) = 0;
  *(v0 + direct field offset for CanvasView.$__lazy_storage_$_toolPickerObserver) = 0;
  *(v0 + direct field offset for CanvasView.zoomView) = 0;
  *(v0 + direct field offset for CanvasView.contentView) = 0;
  v2 = direct field offset for CanvasView.formAnalytics;
  type metadata accessor for FormAnalytics();
  v3 = swift_allocObject();
  *(v3 + 16) = 791357252;
  *(v3 + 20) = 0;
  *(v3 + 24) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9Coherence9CRKeyPathV_8PaperKit17FormPageAnalyticsCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v0 + v2) = v3;
  *(v0 + direct field offset for CanvasView.adjustingInsets) = 0;
  *(v0 + direct field offset for CanvasView.firstLayout) = 1;
  *(v0 + direct field offset for CanvasView.zoomState) = 0;
  *(v0 + direct field offset for CanvasView.snappedContentInsets) = 257;
  *(v0 + direct field offset for CanvasView.isScrollViewZooming) = 0;
  v4 = (v0 + direct field offset for CanvasView.minimumContentInsets);
  v5 = *(MEMORY[0x1E69DDCE0] + 16);
  *v4 = *MEMORY[0x1E69DDCE0];
  v4[1] = v5;
  v6 = (v0 + direct field offset for CanvasView.previousSize);
  *v6 = 0;
  v6[1] = 0;
  *(v0 + direct field offset for CanvasView.allowAutomaticZoomScaleAdjustment) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void specialized CanvasView.calculateDocumentForTesting.setter(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + direct field offset for CanvasView.calculateDocumentForTesting);
  *v3 = a1;
  v3[1] = a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();

  CanvasView.calculateDocumentForTesting.didset();
}

void specialized CanvasView.contentView.setter(void *a1)
{
  v3 = *(v1 + direct field offset for CanvasView.contentView);
  *(v1 + direct field offset for CanvasView.contentView) = a1;
  v2 = a1;
  CanvasView.contentView.didset(v3);
}

void specialized CanvasView.init(context:frame:paper:editingMode:allowMediaCanvasElements:transparentBackground:paperViewController:)(void *a1, ValueMetadata *a2, char *a3, double a4, double a5, double a6, double a7, uint64_t a8, char a9, void *a10)
{
  v105 = a8;
  v107 = (*MEMORY[0x1E69E7D40] & *v10);
  *(v10 + direct field offset for CanvasView.allowsContentSnapping) = 0;
  v16 = (v10 + direct field offset for CanvasView.calculateDocumentForTesting);
  *v16 = 0;
  v16[1] = 0;
  *(v10 + direct field offset for CanvasView.trackingPanGestureRecognizer) = 0;
  *(v10 + direct field offset for CanvasView.rulerHostingDelegate) = 0;
  *(v10 + direct field offset for CanvasView.tiledViewDelegate) = 0;
  *(v10 + direct field offset for CanvasView.selectionInteractionDelegate) = 0;
  *(v10 + direct field offset for CanvasView.canvasContentMode) = 0;
  *(v10 + direct field offset for CanvasView.$__lazy_storage_$_toolPickerObserver) = 0;
  v102 = *a3;
  v17 = direct field offset for CanvasView.zoomView;
  *(v10 + direct field offset for CanvasView.zoomView) = 0;
  *(v10 + direct field offset for CanvasView.contentView) = 0;
  v18 = direct field offset for CanvasView.formAnalytics;
  type metadata accessor for FormAnalytics();
  v19 = swift_allocObject();
  *(v19 + 16) = 791357252;
  *(v19 + 20) = 0;
  v20 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9Coherence9CRKeyPathV_8PaperKit17FormPageAnalyticsCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v10 + v18) = v19;
  *(v10 + direct field offset for CanvasView.adjustingInsets) = 0;
  *(v10 + direct field offset for CanvasView.firstLayout) = 1;
  *(v10 + direct field offset for CanvasView.zoomState) = 0;
  *(v19 + 24) = v20;
  *(v10 + direct field offset for CanvasView.snappedContentInsets) = 257;
  *(v10 + direct field offset for CanvasView.isScrollViewZooming) = 0;
  v21 = (v10 + direct field offset for CanvasView.minimumContentInsets);
  v22 = *(MEMORY[0x1E69DDCE0] + 16);
  *v21 = *MEMORY[0x1E69DDCE0];
  v21[1] = v22;
  v23 = (v10 + direct field offset for CanvasView.previousSize);
  *v23 = 0;
  v23[1] = 0;
  *(v10 + direct field offset for CanvasView.allowAutomaticZoomScaleAdjustment) = 0;
  v24 = [objc_allocWithZone(MEMORY[0x1E69DCEF8]) initWithFrame_];
  v25 = [v24 topEdgeEffect];
  v26 = [objc_opt_self() _clearStyle];
  [v25 setStyle_];

  v27 = objc_opt_self();
  v28 = v24;
  v29 = [v27 clearColor];
  [v28 setBackgroundColor_];

  [v28 setContentSize_];
  [v28 setMinimumZoomScale_];
  [v28 setMaximumZoomScale_];
  [v28 setAlwaysBounceVertical_];
  [v28 setAlwaysBounceHorizontal_];
  [v28 setDelaysContentTouches_];
  [v28 setContentInsetAdjustmentBehavior_];
  [v28 setDecelerationRate_];
  *(v10 + direct field offset for CanvasView.canvasScrollView) = v28;
  v30 = objc_opt_self();
  v31 = v28;
  v32 = [v30 standardUserDefaults];
  v33 = MEMORY[0x1DA6CCED0](0xD000000000000035, 0x80000001D40827D0);
  v34 = [v32 BOOLForKey_];

  v35 = type metadata accessor for PKDrawingCoherence(0);
  v36 = [objc_allocWithZone(MEMORY[0x1E6978518]) initInScrollView:v31 sixChannelBlending:v34 defaultDrawingClass:swift_getObjCClassFromMetadata()];
  [v36 setSupportsCopyAsText_];
  if (one-time initialization token for isMobileNotes != -1)
  {
    swift_once();
  }

  [v36 setInsertSpaceEnabled_];
  v37 = [v36 canvasView];
  if (v37)
  {
    v38 = v37;
    v39 = [objc_allocWithZone(v35) init];
    [v38 setDrawing_];
  }

  v40 = [v36 canvasView];
  if (v40)
  {
    v41 = v40;
    [v40 setOpaque_];
  }

  v42 = [objc_allocWithZone(type metadata accessor for CanvasElementContainerView()) initWithFrame_];
  v43 = *(v10 + v17);
  *(v10 + v17) = v42;
  v44 = v42;

  [v36 setAttachmentContainerView_];
  *(v10 + direct field offset for CanvasView.canvasTiledView) = v36;
  LOBYTE(v111[0]) = v102;
  v45 = v36;
  v46 = a1;
  v47 = v105 & 1;
  v106 = v46;
  v48 = specialized Canvas.init(context:frame:paper:editingMode:allowMediaCanvasElements:transparentBackground:)(v46, a2, v111, v47, a9 & 1, a4, a5, a6, a7);
  v49 = a10;
  v50 = v48;
  AnyCanvas.viewControllerForPresentingUI.setter(a10);
  v104 = v49;

  v51 = [objc_allocWithZone(MEMORY[0x1E69DCD28]) init];
  v52 = direct field offset for CanvasView.trackingPanGestureRecognizer;
  v53 = *&v50[direct field offset for CanvasView.trackingPanGestureRecognizer];
  *&v50[direct field offset for CanvasView.trackingPanGestureRecognizer] = v51;

  v54 = [objc_allocWithZone(type metadata accessor for CanvasElementController()) init];
  Canvas.canvasElementController.setter(v54);
  v55 = Canvas.canvasElementController.getter();

  if (v55)
  {
    *&v55[OBJC_IVAR____TtC8PaperKit23CanvasElementController_delegate + 8] = &protocol witness table for CanvasView<A>;
    swift_unknownObjectWeakAssign();
    v56 = v50;
    CanvasElementController.delegate.didset();
  }

  if (v34)
  {
    [v45 setContentSnapshottingView_];
  }

  CanvasView.tiledViewUpdateEditingState()();
  v57 = direct field offset for CanvasView.zoomView;
  v58 = *&v50[direct field offset for CanvasView.zoomView];
  if (!v58)
  {
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  [(UIScrollView *)v31 insertSubview:v58 atIndex:0];
  v59 = *&v50[OBJC_IVAR____TtC8PaperKit9AnyCanvas_collaborationStateView];
  v60 = v50;
  [(UIScrollView *)v31 addSubview:v59];
  v61 = objc_allocWithZone(type metadata accessor for CanvasElementResizeView());
  CanvasElementResizeView.init(frame:canvas:)(v60, 0.0, 0.0, a6, a7);
  v62 = *&v60[OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView];
  *&v60[OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView] = v63;
  v64 = v63;

  [(UIScrollView *)v31 addSubview:v64];
  v111[3] = &type metadata for PencilAndPaperFeatureFlags;
  v111[4] = lazy protocol witness table accessor for type PencilAndPaperFeatureFlags and conformance PencilAndPaperFeatureFlags();
  LOBYTE(v111[0]) = 1;
  LOBYTE(v64) = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_0(v111);
  v65 = v60;
  if (v64)
  {
    v66 = objc_allocWithZone(type metadata accessor for HandwritingReflowView());
    v67 = HandwritingReflowView.init(frame:canvas:)(v60, 0.0, 0.0, a6, a7);
    [(UIScrollView *)v31 addSubview:v67];
    v65 = *&v60[OBJC_IVAR____TtC8PaperKit9AnyCanvas_handwritingReflowView];
    *&v60[OBJC_IVAR____TtC8PaperKit9AnyCanvas_handwritingReflowView] = v67;
  }

  v68 = *&v50[v57];
  if (!v68)
  {
    goto LABEL_26;
  }

  v69 = specialized Canvas.paperView.getter();
  v70 = v60;
  [v68 insertSubview:v69 atIndex:0];
  v71 = specialized Canvas.paperView.getter();
  v72 = v107[557];
  v73 = v107[558];
  v74 = v71;
  CanvasElementView.merge<A>(_:)(a2, v72, v73);

  v75 = specialized Canvas.paperView.getter();
  ContainerCanvasElementView.modelBounds.getter();
  v77 = v76;
  v79 = v78;

  [(UIScrollView *)v31 setContentSize:v77, v79];
  v80 = *&v50[v52];
  if (!v80)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  [v80 setDelegate_];
  v81 = *&v50[v52];
  if (!v81)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  [v81 setCancelsTouchesInView_];
  v82 = *&v50[v52];
  if (!v82)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  [v82 setDelaysTouchesEnded_];
  v83 = *&v50[v52];
  if (!v83)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  [v83 setEnabled_];
  if (!*&v50[v52])
  {
LABEL_31:
    __break(1u);
    return;
  }

  [(UIScrollView *)v31 addGestureRecognizer:?];
  if ((a9 & 1) == 0)
  {
    if (one-time initialization token for backboardColor != -1)
    {
      swift_once();
    }

    [v70 setBackgroundColor_];
  }

  v84 = v107[559];
  type metadata accessor for CanvasViewTiledViewDelegate(0, v72, v73, v84);
  v85 = v70;
  v86 = specialized CanvasViewTiledViewDelegate.__allocating_init(canvas:)();

  v87 = *&v85[direct field offset for CanvasView.tiledViewDelegate];
  *&v85[direct field offset for CanvasView.tiledViewDelegate] = v86;
  v88 = v86;

  [v45 setDelegate_];
  type metadata accessor for CanvasViewRulerHostingDelegate(0, v72, v73, v84);
  v89 = v85;
  v90 = specialized CanvasViewRulerHostingDelegate.__allocating_init(canvas:)();

  v91 = *&v89[direct field offset for CanvasView.rulerHostingDelegate];
  *&v89[direct field offset for CanvasView.rulerHostingDelegate] = v90;
  v92 = v90;

  [v45 setRulerHostingDelegate_];
  [(UIScrollView *)v31 setDelegate:v89];
  v93 = Canvas.editingView.getter();
  v95 = v94;

  v96 = type metadata accessor for CanvasViewSelectionInteractionDelegate();
  v97 = objc_allocWithZone(v96);
  *&v97[OBJC_IVAR____TtC8PaperKit38CanvasViewSelectionInteractionDelegate_containerView + 8] = 0;
  *(swift_unknownObjectWeakInit() + 8) = v95;
  swift_unknownObjectWeakAssign();
  v110.receiver = v97;
  v110.super_class = v96;
  v98 = objc_msgSendSuper2(&v110, sel_init);

  v99 = direct field offset for CanvasView.selectionInteractionDelegate;
  v100 = *&v89[direct field offset for CanvasView.selectionInteractionDelegate];
  *&v89[direct field offset for CanvasView.selectionInteractionDelegate] = v98;

  v101 = [v45 selectionInteraction];
  [v101 setDelegate_];

  [v89 addSubview_];
  CanvasView.updateAfterDidScroll(_:)(v31);
}

uint64_t specialized CanvasView.__allocating_init(context:frame:paper:allowsEditing:allowMediaCanvasElements:transparentBackground:paperViewController:)(void *a1, uint64_t a2, unsigned __int8 a3, char a4, void *a5, double a6, double a7, double a8, double a9)
{
  v18 = a3;
  v19 = type metadata accessor for Capsule();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v28[-v22];
  (*(v20 + 16))(&v28[-v22], a2, v19, v21);
  if ((v18 == 2) | a3 & 1)
  {
    v24 = 3;
  }

  else
  {
    v24 = 0;
  }

  v29 = v24;
  specialized CanvasView.__allocating_init(context:frame:paper:editingMode:allowMediaCanvasElements:transparentBackground:paperViewController:)(a1, v23, &v29, 1, a4, a5, a6, a7, a8, a9);
  v26 = v25;
  (*(v20 + 8))(v23, v19);
  return v26;
}

id specialized CanvasView.contentSnapshottingView.setter(uint64_t a1)
{
  result = *(v1 + direct field offset for CanvasView.canvasTiledView);
  if (result)
  {
    return [result setContentSnapshottingView_];
  }

  __break(1u);
  return result;
}

void specialized CanvasView.scrollViewDidZoom(_:)()
{
  v1 = *(v0 + direct field offset for CanvasView.zoomState);
  *(v0 + direct field offset for CanvasView.zoomState) = 2;
  CanvasView.zoomState.didset(v1);
  v2 = specialized Canvas.paperView.getter();
  v3 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x260);
  v4 = v2;
  v3(v0);
}

void specialized CanvasView.scrollViewDidEndZooming(_:with:atScale:)(void *a1)
{
  CanvasView.updateContentInsets()();
  [a1 zoomScale];
  v4 = v3;
  [a1 minimumZoomScale];
  if (v4 == v5)
  {
    v6 = *(v1 + direct field offset for CanvasView.zoomState);
    *(v1 + direct field offset for CanvasView.zoomState) = 0;
    CanvasView.zoomState.didset(v6);
  }

  *(v1 + direct field offset for CanvasView.isScrollViewZooming) = 0;
}

uint64_t getEnumTagSinglePayload for CanvasView.ZoomState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CanvasView.ZoomState(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

id outlined copy of PaperDocumentFindResult.Content(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, char a6)
{
  if (a6)
  {
    a1 = a5;
  }

  return a1;
}

unint64_t lazy protocol witness table accessor for type PaperDocumentFindResult and conformance PaperDocumentFindResult()
{
  result = lazy protocol witness table cache variable for type PaperDocumentFindResult and conformance PaperDocumentFindResult;
  if (!lazy protocol witness table cache variable for type PaperDocumentFindResult and conformance PaperDocumentFindResult)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PaperDocumentFindResult and conformance PaperDocumentFindResult);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PaperDocumentFindResult and conformance PaperDocumentFindResult;
  if (!lazy protocol witness table cache variable for type PaperDocumentFindResult and conformance PaperDocumentFindResult)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PaperDocumentFindResult and conformance PaperDocumentFindResult);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PaperDocumentFindResult and conformance PaperDocumentFindResult;
  if (!lazy protocol witness table cache variable for type PaperDocumentFindResult and conformance PaperDocumentFindResult)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PaperDocumentFindResult and conformance PaperDocumentFindResult);
  }

  return result;
}

void outlined consume of PaperDocumentFindResult.Content(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, char a6)
{
  if (a6)
  {
    a1 = a5;
  }
}

uint64_t lazy protocol witness table accessor for type DrawingFindResult and conformance DrawingFindResult(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t specialized CanvasView.canvasElementController(_:wantsToEnterFullscreen:)(char a1)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type DrawingFindResult and conformance DrawingFindResult(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, type metadata accessor for AnyCanvas, &protocol conformance descriptor for AnyCanvas);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = v1 + OBJC_IVAR____TtC8PaperKit9AnyCanvas__delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    (*(v5 + 40))(v1, a1 & 1, ObjectType, v5);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t TextStyleSelectorModel.fontName.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t TextStyleSelectorModel.fontSize.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t TextStyleSelectorModel.bold.getter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v3;
}

double TextStyleSelectorModel.fontColor.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return result;
}

uint64_t TextStyleSelectorModel.textAlignment.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t TextStyleSelectorModel.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC8PaperKit22TextStyleSelectorModel__fontName;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy8PaperKit9InspectedVySSGGMd, &_s7Combine9PublishedVy8PaperKit9InspectedVySSGGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC8PaperKit22TextStyleSelectorModel__fontSize;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy8PaperKit9InspectedVySiGGMd, &_s7Combine9PublishedVy8PaperKit9InspectedVySiGGMR);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC8PaperKit22TextStyleSelectorModel__bold;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy8PaperKit9InspectedVySbGGMd, &_s7Combine9PublishedVy8PaperKit9InspectedVySbGGMR);
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v5, v6);
  v7(v0 + OBJC_IVAR____TtC8PaperKit22TextStyleSelectorModel__italic, v6);
  v7(v0 + OBJC_IVAR____TtC8PaperKit22TextStyleSelectorModel__underline, v6);
  v7(v0 + OBJC_IVAR____TtC8PaperKit22TextStyleSelectorModel__strikethrough, v6);
  v8 = OBJC_IVAR____TtC8PaperKit22TextStyleSelectorModel__fontColor;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy8PaperKit9InspectedVyAD5ColorVGGMd, &_s7Combine9PublishedVy8PaperKit9InspectedVyAD5ColorVGGMR);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v10 = OBJC_IVAR____TtC8PaperKit22TextStyleSelectorModel__textAlignment;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy8PaperKit9InspectedVySo15NSTextAlignmentVGGMd, &_s7Combine9PublishedVy8PaperKit9InspectedVySo15NSTextAlignmentVGGMR);
  (*(*(v11 - 8) + 8))(v0 + v10, v11);

  return swift_deallocClassInstance();
}

void type metadata completion function for TextStyleSelectorModel(uint64_t a1)
{
  type metadata accessor for Published<Inspected<String>>(319, &lazy cache variable for type metadata for Published<Inspected<String>>, &_s8PaperKit9InspectedVySSGMd, &_s8PaperKit9InspectedVySSGMR, MEMORY[0x1E695C070]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Published<Inspected<String>>(319, &lazy cache variable for type metadata for Published<Inspected<Int>>, &_s8PaperKit9InspectedVySiGMd, &_s8PaperKit9InspectedVySiGMR, MEMORY[0x1E695C070]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Published<Inspected<String>>(319, &lazy cache variable for type metadata for Published<Inspected<Bool>>, &_s8PaperKit9InspectedVySbGMd, &_s8PaperKit9InspectedVySbGMR, MEMORY[0x1E695C070]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Published<Inspected<String>>(319, &lazy cache variable for type metadata for Published<Inspected<Color>>, &_s8PaperKit9InspectedVyAA5ColorVGMd, &_s8PaperKit9InspectedVyAA5ColorVGMR, MEMORY[0x1E695C070]);
        if (v4 <= 0x3F)
        {
          type metadata accessor for Published<Inspected<String>>(319, &lazy cache variable for type metadata for Published<Inspected<NSTextAlignment>>, &_s8PaperKit9InspectedVySo15NSTextAlignmentVGMd, &_s8PaperKit9InspectedVySo15NSTextAlignmentVGMR, MEMORY[0x1E695C070]);
          if (v5 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance TextStyleSelectorModel@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for TextStyleSelectorModel(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

uint64_t (*protocol witness for TextFormattingState.fontName.modify in conformance TextStyleSelectorModel(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return protocol witness for TextFormattingState.fontSize.modify in conformance TextStyleSelectorModel;
}

uint64_t (*protocol witness for TextFormattingState.fontSize.modify in conformance TextStyleSelectorModel(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return protocol witness for TextFormattingState.fontSize.modify in conformance TextStyleSelectorModel;
}

uint64_t protocol witness for TextFormattingState.textAlignment.setter in conformance TextStyleSelectorModel(uint64_t a1, char a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t (*protocol witness for TextFormattingState.textAlignment.modify in conformance TextStyleSelectorModel(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return protocol witness for TextFormattingState.fontSize.modify in conformance TextStyleSelectorModel;
}

uint64_t (*protocol witness for TextFormattingState.bold.modify in conformance TextStyleSelectorModel(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return protocol witness for TextFormattingState.fontSize.modify in conformance TextStyleSelectorModel;
}

uint64_t (*protocol witness for TextFormattingState.italic.modify in conformance TextStyleSelectorModel(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return protocol witness for TextFormattingState.fontSize.modify in conformance TextStyleSelectorModel;
}

uint64_t (*protocol witness for TextFormattingState.underline.modify in conformance TextStyleSelectorModel(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return protocol witness for TextFormattingState.fontSize.modify in conformance TextStyleSelectorModel;
}

uint64_t protocol witness for TextFormattingState.bold.getter in conformance TextStyleSelectorModel(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v5;
}

uint64_t protocol witness for TextFormattingState.bold.setter in conformance TextStyleSelectorModel(__int16 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t (*protocol witness for TextFormattingState.strikethrough.modify in conformance TextStyleSelectorModel(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return protocol witness for TextFormattingState.strikethrough.modify in conformance TextStyleSelectorModel;
}

uint64_t protocol witness for TextFormattingState.fontColor.setter in conformance TextStyleSelectorModel(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit9InspectedVyAA5ColorVGMd, &_s8PaperKit9InspectedVyAA5ColorVGMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  swift_getKeyPath();
  swift_getKeyPath();
  outlined init with copy of Date?(a1, v4, &_s8PaperKit9InspectedVyAA5ColorVGMd, &_s8PaperKit9InspectedVyAA5ColorVGMR);

  static Published.subscript.setter();
  return outlined destroy of StocksKitCurrencyCache.Provider?(a1, &_s8PaperKit9InspectedVyAA5ColorVGMd, &_s8PaperKit9InspectedVyAA5ColorVGMR);
}

uint64_t (*protocol witness for TextFormattingState.fontColor.modify in conformance TextStyleSelectorModel(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return protocol witness for TextFormattingState.fontSize.modify in conformance TextStyleSelectorModel;
}

void protocol witness for TextFormattingState.fontName.modify in conformance TextStyleSelectorModel(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t FontPicker.presentationMode.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA7BindingVyAA16PresentationModeVG_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA7BindingVyAA16PresentationModeVG_GMR);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;
  outlined init with copy of Date?(v2, &v13 - v9, &_s7SwiftUI11EnvironmentV7ContentOyAA7BindingVyAA16PresentationModeVG_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA7BindingVyAA16PresentationModeVG_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return outlined init with take of Binding<PresentationMode>(v10, a1);
  }

  static os_log_type_t.fault.getter();
  v12 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)();

  EnvironmentValues.init()();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

Swift::Void __swiftcall FontPicker.Coordinator.fontPickerViewControllerDidPickFont(_:)(UIFontPickerViewController *a1)
{
  v2 = v1;
  v4 = type metadata accessor for PresentationMode();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVyAA16PresentationModeVGMd, &_s7SwiftUI7BindingVyAA16PresentationModeVGMR);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v14 - v6;
  v8 = type metadata accessor for FontPicker(0);
  *&v9 = MEMORY[0x1EEE9AC00](v8 - 8).n128_u64[0];
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [(UIFontPickerViewController *)a1 selectedFontDescriptor];
  if (v12)
  {
    v13 = v12;
    (*(v2 + OBJC_IVAR____TtCV8PaperKit10FontPicker11Coordinator_pickedFont))();
  }

  outlined init with copy of FontSizePicker(v2 + OBJC_IVAR____TtCV8PaperKit10FontPicker11Coordinator_parent, v11, type metadata accessor for FontPicker);
  FontPicker.presentationMode.getter(v7);
  outlined destroy of FontSizePicker(v11, type metadata accessor for FontPicker);
  MEMORY[0x1DA6CA790](v5);
  PresentationMode.dismiss()();
  Binding.wrappedValue.setter();
  outlined destroy of StocksKitCurrencyCache.Provider?(v7, &_s7SwiftUI7BindingVyAA16PresentationModeVGMd, &_s7SwiftUI7BindingVyAA16PresentationModeVGMR);
}

id protocol witness for UIViewControllerRepresentable.makeUIViewController(context:) in conformance FontPicker(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x1E69DCA48]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI36UIViewControllerRepresentableContextVy8PaperKit10FontPickerVGMd, &_s7SwiftUI36UIViewControllerRepresentableContextVy8PaperKit10FontPickerVGMR);
  UIViewControllerRepresentableContext.coordinator.getter();
  [v4 setDelegate_];

  [v4 setSelectedFontDescriptor_];
  return v4;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance FontPicker(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type FontPicker and conformance FontPicker(&lazy protocol witness table cache variable for type FontPicker and conformance FontPicker, type metadata accessor for FontPicker, &protocol conformance descriptor for FontPicker);

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance FontPicker(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type FontPicker and conformance FontPicker(&lazy protocol witness table cache variable for type FontPicker and conformance FontPicker, type metadata accessor for FontPicker, &protocol conformance descriptor for FontPicker);

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void protocol witness for View.body.getter in conformance FontPicker(uint64_t a1)
{
  lazy protocol witness table accessor for type FontPicker and conformance FontPicker(&lazy protocol witness table cache variable for type FontPicker and conformance FontPicker, type metadata accessor for FontPicker, &protocol conformance descriptor for FontPicker);
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

char *FontSizePicker.makeUIViewController(context:)()
{
  v1 = *(v0 + *(type metadata accessor for FontSizePicker(0) + 20));
  if (one-time initialization token for textBoxFontUnitString != -1)
  {
    swift_once();
  }

  v2 = static UIConstants.textBoxFontUnitString;
  v3 = objc_allocWithZone(type metadata accessor for FontSizeViewController());
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC8PaperKit26ValueEditingViewController_contentSize] = xmmword_1D405BB80;
  *&v3[OBJC_IVAR____TtC8PaperKit26ValueEditingViewController_verticalInterItemSpacing] = 0x4024000000000000;
  *&v3[OBJC_IVAR____TtC8PaperKit26ValueEditingViewController_stepperSizeHeight] = 0x4043000000000000;
  *&v3[OBJC_IVAR____TtC8PaperKit26ValueEditingViewController____lazy_storage___stepper] = 0;
  *&v3[OBJC_IVAR____TtC8PaperKit26ValueEditingViewController____lazy_storage___slider] = 0;
  *&v3[OBJC_IVAR____TtC8PaperKit26ValueEditingViewController_minValue] = 5;
  *&v3[OBJC_IVAR____TtC8PaperKit26ValueEditingViewController_maxValue] = 300;
  *&v3[OBJC_IVAR____TtC8PaperKit26ValueEditingViewController_currentValue] = v1;
  *&v3[OBJC_IVAR____TtC8PaperKit26ValueEditingViewController_unit] = v2;
  *&v3[OBJC_IVAR____TtC8PaperKit26ValueEditingViewController_contentViewMargin] = 0;
  v7.receiver = v3;
  v7.super_class = type metadata accessor for ValueEditingViewController();

  v4 = objc_msgSendSuper2(&v7, sel_initWithNibName_bundle_, 0, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI36UIViewControllerRepresentableContextVy8PaperKit14FontSizePickerVGMd, &_s7SwiftUI36UIViewControllerRepresentableContextVy8PaperKit14FontSizePickerVGMR);
  UIViewControllerRepresentableContext.coordinator.getter();
  swift_unknownObjectWeakAssign();

  return v4;
}

id FontPicker.Coordinator.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

double @objc FontPicker.Coordinator.__ivar_destroyer(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(void), void *a5)
{
  outlined destroy of FontSizePicker(a1 + *a3, a4);

  return result;
}

uint64_t type metadata completion function for FontPicker.Coordinator(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void type metadata completion function for FontSizePicker(uint64_t a1)
{
  type metadata accessor for Published<Inspected<String>>(319, &lazy cache variable for type metadata for Environment<Binding<PresentationMode>>, &_s7SwiftUI7BindingVyAA16PresentationModeVGMd, &_s7SwiftUI7BindingVyAA16PresentationModeVGMR, MEMORY[0x1E697DCC0]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ()();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for Published<Inspected<String>>(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t type metadata accessor for ()()
{
  result = lazy cache variable for type metadata for ();
  if (!lazy cache variable for type metadata for ())
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &lazy cache variable for type metadata for ());
  }

  return result;
}

void type metadata completion function for FontPicker(uint64_t a1)
{
  type metadata accessor for Published<Inspected<String>>(319, &lazy cache variable for type metadata for Environment<Binding<PresentationMode>>, &_s7SwiftUI7BindingVyAA16PresentationModeVGMd, &_s7SwiftUI7BindingVyAA16PresentationModeVGMR, MEMORY[0x1E697DCC0]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UIFontDescriptor();
    if (v2 <= 0x3F)
    {
      type metadata accessor for ()();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t type metadata accessor for UIFontDescriptor()
{
  result = lazy cache variable for type metadata for UIFontDescriptor;
  if (!lazy cache variable for type metadata for UIFontDescriptor)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UIFontDescriptor);
  }

  return result;
}

uint64_t protocol witness for UIViewControllerRepresentable.makeCoordinator() in conformance FontPicker@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t (*a3)(void)@<X3>, void *a4@<X4>, void *a5@<X5>, void *a6@<X8>)
{
  v12 = a1 - 8;
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of FontSizePicker(v6, v14, v15);
  v16 = (v6 + *(v12 + 32));
  v18 = *v16;
  v17 = v16[1];
  v19 = a3(0);
  v20 = objc_allocWithZone(v19);
  outlined init with copy of FontSizePicker(v14, &v20[*a4], a2);
  v21 = &v20[*a5];
  *v21 = v18;
  *(v21 + 1) = v17;
  v24.receiver = v20;
  v24.super_class = v19;

  v22 = objc_msgSendSuper2(&v24, sel_init);
  result = outlined destroy of FontSizePicker(v14, a2);
  *a6 = v22;
  return result;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance FontSizePicker(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type FontPicker and conformance FontPicker(&lazy protocol witness table cache variable for type FontSizePicker and conformance FontSizePicker, type metadata accessor for FontSizePicker, &protocol conformance descriptor for FontSizePicker);

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance FontSizePicker(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type FontPicker and conformance FontPicker(&lazy protocol witness table cache variable for type FontSizePicker and conformance FontSizePicker, type metadata accessor for FontSizePicker, &protocol conformance descriptor for FontSizePicker);

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void protocol witness for View.body.getter in conformance FontSizePicker(uint64_t a1)
{
  lazy protocol witness table accessor for type FontPicker and conformance FontPicker(&lazy protocol witness table cache variable for type FontSizePicker and conformance FontSizePicker, type metadata accessor for FontSizePicker, &protocol conformance descriptor for FontSizePicker);
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

uint64_t lazy protocol witness table accessor for type FontPicker and conformance FontPicker(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t instantiation function for generic protocol witness table for TextStyleSelectorModel(uint64_t a1)
{
  result = lazy protocol witness table accessor for type FontPicker and conformance FontPicker(&lazy protocol witness table cache variable for type TextStyleSelectorModel and conformance TextStyleSelectorModel, type metadata accessor for TextStyleSelectorModel, &protocol conformance descriptor for TextStyleSelectorModel);
  *(a1 + 8) = result;
  return result;
}

void key path getter for TextStyleSelectorModel.fontName : TextStyleSelectorModel(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
}

uint64_t key path setter for TextStyleSelectorModel.fontName : TextStyleSelectorModel(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

void key path getter for TextStyleSelectorModel.fontSize : TextStyleSelectorModel(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v3;
  *(a2 + 8) = v4;
}

uint64_t key path setter for TextStyleSelectorModel.fontSize : TextStyleSelectorModel(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

void key path getter for TextStyleSelectorModel.bold : TextStyleSelectorModel(_BYTE *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a4 = v5;
  a4[1] = v6;
}

uint64_t key path setter for TextStyleSelectorModel.bold : TextStyleSelectorModel(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

double key path getter for TextStyleSelectorModel.fontColor : TextStyleSelectorModel()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return result;
}

uint64_t key path setter for TextStyleSelectorModel.fontColor : TextStyleSelectorModel(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit9InspectedVyAA5ColorVGMd, &_s8PaperKit9InspectedVyAA5ColorVGMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10 - v7;
  outlined init with copy of Date?(a1, &v10 - v7, &_s8PaperKit9InspectedVyAA5ColorVGMd, &_s8PaperKit9InspectedVyAA5ColorVGMR);
  swift_getKeyPath();
  swift_getKeyPath();
  outlined init with copy of Date?(v8, v5, &_s8PaperKit9InspectedVyAA5ColorVGMd, &_s8PaperKit9InspectedVyAA5ColorVGMR);

  static Published.subscript.setter();
  return outlined destroy of StocksKitCurrencyCache.Provider?(v8, &_s8PaperKit9InspectedVyAA5ColorVGMd, &_s8PaperKit9InspectedVyAA5ColorVGMR);
}

void key path getter for TextStyleSelectorModel.textAlignment : TextStyleSelectorModel(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v3;
  *(a2 + 8) = v4;
}

uint64_t key path setter for TextStyleSelectorModel.textAlignment : TextStyleSelectorModel(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t outlined init with copy of FontSizePicker(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of FontSizePicker(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of Binding<PresentationMode>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVyAA16PresentationModeVGMd, &_s7SwiftUI7BindingVyAA16PresentationModeVGMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void specialized CanvasView.init(context:frame:paper:editingMode:allowMediaCanvasElements:transparentBackground:paperViewController:)(char *a1, char *a2, int a3, int a4, int a5, void *a6, double a7, double a8, double a9, double a10)
{
  v131 = a5;
  LODWORD(v129) = a4;
  LODWORD(v134) = a3;
  v135 = a2;
  v128 = a1;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd, &_s9Coherence7CapsuleVy8PaperKit0C0VGMR);
  v133 = *(v136 - 8);
  MEMORY[0x1EEE9AC00](v136);
  v132 = &v123 - v16;
  *(v10 + direct field offset for CanvasView.allowsContentSnapping) = 0;
  v17 = (v10 + direct field offset for CanvasView.calculateDocumentForTesting);
  *v17 = 0;
  v17[1] = 0;
  *(v10 + direct field offset for CanvasView.trackingPanGestureRecognizer) = 0;
  *(v10 + direct field offset for CanvasView.rulerHostingDelegate) = 0;
  *(v10 + direct field offset for CanvasView.tiledViewDelegate) = 0;
  *(v10 + direct field offset for CanvasView.selectionInteractionDelegate) = 0;
  *(v10 + direct field offset for CanvasView.canvasContentMode) = 0;
  *(v10 + direct field offset for CanvasView.$__lazy_storage_$_toolPickerObserver) = 0;
  v18 = direct field offset for CanvasView.zoomView;
  *(v10 + direct field offset for CanvasView.zoomView) = 0;
  *(v10 + direct field offset for CanvasView.contentView) = 0;
  v19 = direct field offset for CanvasView.formAnalytics;
  type metadata accessor for FormAnalytics();
  v20 = swift_allocObject();
  *(v20 + 16) = 791357252;
  *(v20 + 20) = 0;
  v21 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9Coherence9CRKeyPathV_8PaperKit17FormPageAnalyticsCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v10 + v19) = v20;
  *(v10 + direct field offset for CanvasView.adjustingInsets) = 0;
  *(v10 + direct field offset for CanvasView.firstLayout) = 1;
  *(v10 + direct field offset for CanvasView.zoomState) = 0;
  *(v10 + direct field offset for CanvasView.snappedContentInsets) = 257;
  *(v10 + direct field offset for CanvasView.isScrollViewZooming) = 0;
  *(v20 + 24) = v21;
  v22 = (v10 + direct field offset for CanvasView.minimumContentInsets);
  v23 = *(MEMORY[0x1E69DDCE0] + 16);
  *v22 = *MEMORY[0x1E69DDCE0];
  v22[1] = v23;
  v24 = (v10 + direct field offset for CanvasView.previousSize);
  *v24 = 0;
  v24[1] = 0;
  *(v10 + direct field offset for CanvasView.allowAutomaticZoomScaleAdjustment) = 0;
  v25 = [objc_allocWithZone(MEMORY[0x1E69DCEF8]) initWithFrame_];
  v26 = [v25 topEdgeEffect];
  v27 = [objc_opt_self() _clearStyle];
  [v26 setStyle_];

  v28 = objc_opt_self();
  v29 = v25;
  v30 = [v28 clearColor];
  [v29 setBackgroundColor_];

  [v29 setContentSize_];
  [v29 setMinimumZoomScale_];
  [v29 setMaximumZoomScale_];
  [v29 setAlwaysBounceVertical_];
  [v29 setAlwaysBounceHorizontal_];
  [v29 setDelaysContentTouches_];
  [v29 setContentInsetAdjustmentBehavior_];
  [v29 setDecelerationRate_];
  *(v10 + direct field offset for CanvasView.canvasScrollView) = v29;
  v31 = objc_opt_self();
  v32 = v29;
  v33 = [v31 standardUserDefaults];
  v34 = MEMORY[0x1DA6CCED0](0xD000000000000035, 0x80000001D40827D0);
  v35 = [v33 BOOLForKey_];

  v36 = type metadata accessor for PKDrawingCoherence(0);
  v37 = [objc_allocWithZone(MEMORY[0x1E6978518]) initInScrollView:v32 sixChannelBlending:v35 defaultDrawingClass:swift_getObjCClassFromMetadata()];
  [v37 setSupportsCopyAsText_];
  if (one-time initialization token for isMobileNotes != -1)
  {
    swift_once();
  }

  [v37 setInsertSpaceEnabled_];
  v38 = [v37 canvasView];
  if (v38)
  {
    v39 = v38;
    v40 = [objc_allocWithZone(v36) init];
    [v39 setDrawing_];
  }

  v41 = [v37 canvasView];
  if (v41)
  {
    v42 = v41;
    [v41 setOpaque_];
  }

  v43 = [objc_allocWithZone(type metadata accessor for CanvasElementContainerView()) initWithFrame_];
  v44 = *(v10 + v18);
  *(v10 + v18) = v43;

  v45 = v43;
  [v37 setAttachmentContainerView_];

  *(v10 + direct field offset for CanvasView.canvasTiledView) = v37;
  v46 = *(v133 + 16);
  v47 = v132;
  v127 = v133 + 16;
  v126 = v46;
  v46(v132, v135, v136);
  v130 = v37;
  v48 = v128;
  v49 = specialized Canvas.init(context:frame:paper:editingMode:allowMediaCanvasElements:transparentBackground:)(v48, v47, v134, v129 & 1, v131 & 1, a7, a8, a9, a10);
  v125 = a6;
  AnyCanvas.viewControllerForPresentingUI.setter(a6);
  v50 = [objc_allocWithZone(MEMORY[0x1E69DCD28]) init];
  v51 = *&v49[direct field offset for CanvasView.trackingPanGestureRecognizer];
  v128 = direct field offset for CanvasView.trackingPanGestureRecognizer;
  *&v49[direct field offset for CanvasView.trackingPanGestureRecognizer] = v50;

  v52 = [objc_allocWithZone(type metadata accessor for CanvasElementController()) init];
  v53 = *&v49[direct field offset for Canvas._canvasElementController];
  *&v49[direct field offset for Canvas._canvasElementController] = v52;
  v54 = v52;

  v55 = MEMORY[0x1E69E7D40];
  if (v54)
  {
    goto LABEL_8;
  }

  v111 = (*((*MEMORY[0x1E69E7D40] & *v49) + 0x468))();
  v56 = v49;
  if (v111)
  {
    v112 = v111;
    ObjectType = swift_getObjectType();
    v114 = swift_conformsToProtocol2();
    if (!v114)
    {
      v54 = v49;
      v56 = v112;
      goto LABEL_9;
    }

    v54 = (*(v114 + 48))(ObjectType, v114);

LABEL_8:
    *&v54[OBJC_IVAR____TtC8PaperKit23CanvasElementController_delegate + 8] = &protocol witness table for CanvasView<A>;
    swift_unknownObjectWeakAssign();
    v56 = v49;
    CanvasElementController.delegate.didset();
LABEL_9:
  }

  if (v35)
  {
    [v130 setContentSnapshottingView_];
  }

  v57 = *&v49[direct field offset for CanvasView.canvasTiledView];
  if (!v57)
  {
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v58 = OBJC_IVAR____TtC8PaperKit9AnyCanvas_editingMode;
  swift_beginAccess();
  v59 = v49[v58];
  if (v59 >= 2)
  {
    if (v59 != 2)
    {
      v59 = 0;
    }

    v60 = 1;
  }

  else
  {
    v59 = 0;
    v60 = 0;
  }

  v61 = [v57 canvasView];
  if (v61)
  {
    v62 = v61;
    v63 = [v61 drawingGestureRecognizer];

    [v63 setEnabled_];
  }

  [v57 setDrawingPolicy_];
  v64 = direct field offset for CanvasView.zoomView;
  v65 = *&v49[direct field offset for CanvasView.zoomView];
  if (!v65)
  {
    goto LABEL_46;
  }

  [v32 insertSubview:v65 atIndex:0];
  v66 = *&v49[OBJC_IVAR____TtC8PaperKit9AnyCanvas_collaborationStateView];
  v67 = v49;
  [v32 addSubview_];
  v68 = objc_allocWithZone(type metadata accessor for CanvasElementResizeView());
  CanvasElementResizeView.init(frame:canvas:)(v67, 0.0, 0.0, a9, a10);
  v70 = v69;
  v71 = *&v67[OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView];
  *&v67[OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView] = v69;

  [v32 addSubview_];
  v141 = &type metadata for PencilAndPaperFeatureFlags;
  v142 = lazy protocol witness table accessor for type PencilAndPaperFeatureFlags and conformance PencilAndPaperFeatureFlags();
  LOBYTE(v140[0]) = 1;
  LOBYTE(v70) = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_0(v140);
  v72 = v67;
  if (v70)
  {
    v73 = objc_allocWithZone(type metadata accessor for HandwritingReflowView());
    v74 = HandwritingReflowView.init(frame:canvas:)(v67, 0.0, 0.0, a9, a10);
    [v32 addSubview_];
    v72 = *&v67[OBJC_IVAR____TtC8PaperKit9AnyCanvas_handwritingReflowView];
    *&v67[OBJC_IVAR____TtC8PaperKit9AnyCanvas_handwritingReflowView] = v74;
  }

  v134 = v32;

  v75 = *&v49[v64];
  if (!v75)
  {
    goto LABEL_47;
  }

  v76 = direct field offset for Canvas.paperView;
  v77 = *&v67[direct field offset for Canvas.paperView];
  v78 = v67;
  [v75 insertSubview:v77 atIndex:0];
  v129 = v76;
  v79 = *&v67[v76];
  v80 = v55;
  swift_beginAccess();
  v81 = type metadata accessor for Paper(0);
  v82 = lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type Paper and conformance Paper, 255, type metadata accessor for Paper, &protocol conformance descriptor for Paper);
  v83 = v79;
  v84 = Capsule.merge<A>(_:)();
  Strong = swift_endAccess();
  v124 = v48;
  if ((v84 & 1) != 0 || (Strong = swift_unknownObjectWeakLoadStrong()) == 0)
  {
    (*((*v80 & *v83) + 0x520))(Strong);
  }

  else
  {
  }

  v86 = *&v67[v129];
  v87 = *((*v80 & *v86) + 0x3F0);
  swift_beginAccess();
  v88 = v132;
  v89 = v136;
  v90 = v126(v132, &v86[v87], v136);
  MEMORY[0x1EEE9AC00](v90);
  *(&v123 - 4) = v81;
  *(&v123 - 3) = v82;
  *(&v123 - 2) = &protocol witness table for Paper;
  swift_getKeyPath();
  v91 = v86;
  Capsule.subscript.getter();

  v92 = *(v133 + 8);
  v92(v88, v89);
  v93 = v134;
  [v134 setContentSize_];
  v94 = v128;
  v95 = *&v128[v49];
  if (!v95)
  {
    goto LABEL_48;
  }

  [v95 setDelegate_];
  v96 = *&v94[v49];
  if (!v96)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  [v96 setCancelsTouchesInView_];
  v97 = *&v94[v49];
  if (!v97)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  [v97 setDelaysTouchesEnded_];
  v98 = *&v94[v49];
  if (!v98)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  [v98 setEnabled_];
  if (!*&v94[v49])
  {
LABEL_52:
    __break(1u);
    return;
  }

  [v93 addGestureRecognizer_];
  v99 = v130;
  if ((v131 & 1) == 0)
  {
    if (one-time initialization token for backboardColor != -1)
    {
      swift_once();
    }

    [v78 setBackgroundColor_];
  }

  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit015CanvasViewTiledD8DelegateCyAA0A0VGMd, &_s8PaperKit015CanvasViewTiledD8DelegateCyAA0A0VGMR);
  v101 = objc_allocWithZone(v100);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v139.receiver = v101;
  v139.super_class = v100;
  v102 = v78;
  v103 = objc_msgSendSuper2(&v139, sel_init);
  v104 = *&v102[direct field offset for CanvasView.tiledViewDelegate];
  *&v102[direct field offset for CanvasView.tiledViewDelegate] = v103;

  [v99 setDelegate_];
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit30CanvasViewRulerHostingDelegateCyAA0A0VGMd, &_s8PaperKit30CanvasViewRulerHostingDelegateCyAA0A0VGMR);
  v106 = objc_allocWithZone(v105);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v138.receiver = v106;
  v138.super_class = v105;
  v107 = objc_msgSendSuper2(&v138, sel_init);

  v108 = *&v102[direct field offset for CanvasView.rulerHostingDelegate];
  *&v102[direct field offset for CanvasView.rulerHostingDelegate] = v107;

  [v99 setRulerHostingDelegate_];
  [v134 setDelegate_];
  v109 = *&v102[direct field offset for Canvas._editingView];
  if (v109)
  {
    v110 = *&v102[direct field offset for Canvas._editingView + 8];
  }

  else
  {
    v109 = *&v67[v129];
    v110 = &protocol witness table for ContainerCanvasElementView<A>;
  }

  v115 = v109;

  v116 = type metadata accessor for CanvasViewSelectionInteractionDelegate();
  v117 = objc_allocWithZone(v116);
  *&v117[OBJC_IVAR____TtC8PaperKit38CanvasViewSelectionInteractionDelegate_containerView + 8] = 0;
  *(swift_unknownObjectWeakInit() + 8) = v110;
  swift_unknownObjectWeakAssign();
  v137.receiver = v117;
  v137.super_class = v116;
  v118 = objc_msgSendSuper2(&v137, sel_init);

  v119 = direct field offset for CanvasView.selectionInteractionDelegate;
  v120 = *&v102[direct field offset for CanvasView.selectionInteractionDelegate];
  *&v102[direct field offset for CanvasView.selectionInteractionDelegate] = v118;

  v121 = [v99 selectionInteraction];
  [v121 setDelegate_];

  v122 = v134;
  [v102 addSubview_];
  specialized CanvasView.updateAfterDidScroll(_:)(v122);

  v92(v135, v136);
}

{
  v131 = a5;
  LODWORD(v129) = a4;
  LODWORD(v134) = a3;
  v135 = a2;
  v128 = a1;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGMd, &_s9Coherence7CapsuleVy8PaperKit5ImageVGMR);
  v133 = *(v136 - 8);
  MEMORY[0x1EEE9AC00](v136);
  v132 = &v123 - v16;
  *(v10 + direct field offset for CanvasView.allowsContentSnapping) = 0;
  v17 = (v10 + direct field offset for CanvasView.calculateDocumentForTesting);
  *v17 = 0;
  v17[1] = 0;
  *(v10 + direct field offset for CanvasView.trackingPanGestureRecognizer) = 0;
  *(v10 + direct field offset for CanvasView.rulerHostingDelegate) = 0;
  *(v10 + direct field offset for CanvasView.tiledViewDelegate) = 0;
  *(v10 + direct field offset for CanvasView.selectionInteractionDelegate) = 0;
  *(v10 + direct field offset for CanvasView.canvasContentMode) = 0;
  *(v10 + direct field offset for CanvasView.$__lazy_storage_$_toolPickerObserver) = 0;
  v18 = direct field offset for CanvasView.zoomView;
  *(v10 + direct field offset for CanvasView.zoomView) = 0;
  *(v10 + direct field offset for CanvasView.contentView) = 0;
  v19 = direct field offset for CanvasView.formAnalytics;
  type metadata accessor for FormAnalytics();
  v20 = swift_allocObject();
  *(v20 + 16) = 791357252;
  *(v20 + 20) = 0;
  v21 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9Coherence9CRKeyPathV_8PaperKit17FormPageAnalyticsCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v10 + v19) = v20;
  *(v10 + direct field offset for CanvasView.adjustingInsets) = 0;
  *(v10 + direct field offset for CanvasView.firstLayout) = 1;
  *(v10 + direct field offset for CanvasView.zoomState) = 0;
  *(v10 + direct field offset for CanvasView.snappedContentInsets) = 257;
  *(v10 + direct field offset for CanvasView.isScrollViewZooming) = 0;
  *(v20 + 24) = v21;
  v22 = (v10 + direct field offset for CanvasView.minimumContentInsets);
  v23 = *(MEMORY[0x1E69DDCE0] + 16);
  *v22 = *MEMORY[0x1E69DDCE0];
  v22[1] = v23;
  v24 = (v10 + direct field offset for CanvasView.previousSize);
  *v24 = 0;
  v24[1] = 0;
  *(v10 + direct field offset for CanvasView.allowAutomaticZoomScaleAdjustment) = 0;
  v25 = [objc_allocWithZone(MEMORY[0x1E69DCEF8]) initWithFrame_];
  v26 = [v25 topEdgeEffect];
  v27 = [objc_opt_self() _clearStyle];
  [v26 setStyle_];

  v28 = objc_opt_self();
  v29 = v25;
  v30 = [v28 clearColor];
  [v29 setBackgroundColor_];

  [v29 setContentSize_];
  [v29 setMinimumZoomScale_];
  [v29 setMaximumZoomScale_];
  [v29 setAlwaysBounceVertical_];
  [v29 setAlwaysBounceHorizontal_];
  [v29 setDelaysContentTouches_];
  [v29 setContentInsetAdjustmentBehavior_];
  [v29 setDecelerationRate_];
  *(v10 + direct field offset for CanvasView.canvasScrollView) = v29;
  v31 = objc_opt_self();
  v32 = v29;
  v33 = [v31 standardUserDefaults];
  v34 = MEMORY[0x1DA6CCED0](0xD000000000000035, 0x80000001D40827D0);
  v35 = [v33 BOOLForKey_];

  v36 = type metadata accessor for PKDrawingCoherence(0);
  v37 = [objc_allocWithZone(MEMORY[0x1E6978518]) initInScrollView:v32 sixChannelBlending:v35 defaultDrawingClass:swift_getObjCClassFromMetadata()];
  [v37 setSupportsCopyAsText_];
  if (one-time initialization token for isMobileNotes != -1)
  {
    swift_once();
  }

  [v37 setInsertSpaceEnabled_];
  v38 = [v37 canvasView];
  if (v38)
  {
    v39 = v38;
    v40 = [objc_allocWithZone(v36) init];
    [v39 setDrawing_];
  }

  v41 = [v37 canvasView];
  if (v41)
  {
    v42 = v41;
    [v41 setOpaque_];
  }

  v43 = [objc_allocWithZone(type metadata accessor for CanvasElementContainerView()) initWithFrame_];
  v44 = *(v10 + v18);
  *(v10 + v18) = v43;

  v45 = v43;
  [v37 setAttachmentContainerView_];

  *(v10 + direct field offset for CanvasView.canvasTiledView) = v37;
  v46 = *(v133 + 16);
  v47 = v132;
  v127 = v133 + 16;
  v126 = v46;
  v46(v132, v135, v136);
  v130 = v37;
  v48 = v128;
  v49 = specialized Canvas.init(context:frame:paper:editingMode:allowMediaCanvasElements:transparentBackground:)(v48, v47, v134, v129 & 1, v131 & 1, a7, a8, a9, a10);
  v125 = a6;
  AnyCanvas.viewControllerForPresentingUI.setter(a6);
  v50 = [objc_allocWithZone(MEMORY[0x1E69DCD28]) init];
  v51 = *&v49[direct field offset for CanvasView.trackingPanGestureRecognizer];
  v128 = direct field offset for CanvasView.trackingPanGestureRecognizer;
  *&v49[direct field offset for CanvasView.trackingPanGestureRecognizer] = v50;

  v52 = [objc_allocWithZone(type metadata accessor for CanvasElementController()) init];
  v53 = *&v49[direct field offset for Canvas._canvasElementController];
  *&v49[direct field offset for Canvas._canvasElementController] = v52;
  v54 = v52;

  v55 = MEMORY[0x1E69E7D40];
  if (v54)
  {
    goto LABEL_8;
  }

  v111 = (*((*MEMORY[0x1E69E7D40] & *v49) + 0x468))();
  v56 = v49;
  if (v111)
  {
    v112 = v111;
    ObjectType = swift_getObjectType();
    v114 = swift_conformsToProtocol2();
    if (!v114)
    {
      v54 = v49;
      v56 = v112;
      goto LABEL_9;
    }

    v54 = (*(v114 + 48))(ObjectType, v114);

LABEL_8:
    *&v54[OBJC_IVAR____TtC8PaperKit23CanvasElementController_delegate + 8] = &protocol witness table for CanvasView<A>;
    swift_unknownObjectWeakAssign();
    v56 = v49;
    CanvasElementController.delegate.didset();
LABEL_9:
  }

  if (v35)
  {
    [v130 setContentSnapshottingView_];
  }

  v57 = *&v49[direct field offset for CanvasView.canvasTiledView];
  if (!v57)
  {
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v58 = OBJC_IVAR____TtC8PaperKit9AnyCanvas_editingMode;
  swift_beginAccess();
  v59 = v49[v58];
  if (v59 >= 2)
  {
    if (v59 != 2)
    {
      v59 = 0;
    }

    v60 = 1;
  }

  else
  {
    v59 = 0;
    v60 = 0;
  }

  v61 = [v57 canvasView];
  if (v61)
  {
    v62 = v61;
    v63 = [v61 drawingGestureRecognizer];

    [v63 setEnabled_];
  }

  [v57 setDrawingPolicy_];
  v64 = direct field offset for CanvasView.zoomView;
  v65 = *&v49[direct field offset for CanvasView.zoomView];
  if (!v65)
  {
    goto LABEL_46;
  }

  [v32 insertSubview:v65 atIndex:0];
  v66 = *&v49[OBJC_IVAR____TtC8PaperKit9AnyCanvas_collaborationStateView];
  v67 = v49;
  [v32 addSubview_];
  v68 = objc_allocWithZone(type metadata accessor for CanvasElementResizeView());
  CanvasElementResizeView.init(frame:canvas:)(v67, 0.0, 0.0, a9, a10);
  v70 = v69;
  v71 = *&v67[OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView];
  *&v67[OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView] = v69;

  [v32 addSubview_];
  v141 = &type metadata for PencilAndPaperFeatureFlags;
  v142 = lazy protocol witness table accessor for type PencilAndPaperFeatureFlags and conformance PencilAndPaperFeatureFlags();
  LOBYTE(v140[0]) = 1;
  LOBYTE(v70) = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_0(v140);
  v72 = v67;
  if (v70)
  {
    v73 = objc_allocWithZone(type metadata accessor for HandwritingReflowView());
    v74 = HandwritingReflowView.init(frame:canvas:)(v67, 0.0, 0.0, a9, a10);
    [v32 addSubview_];
    v72 = *&v67[OBJC_IVAR____TtC8PaperKit9AnyCanvas_handwritingReflowView];
    *&v67[OBJC_IVAR____TtC8PaperKit9AnyCanvas_handwritingReflowView] = v74;
  }

  v134 = v32;

  v75 = *&v49[v64];
  if (!v75)
  {
    goto LABEL_47;
  }

  v76 = direct field offset for Canvas.paperView;
  v77 = *&v67[direct field offset for Canvas.paperView];
  v78 = v67;
  [v75 insertSubview:v77 atIndex:0];
  v129 = v76;
  v79 = *&v67[v76];
  v80 = v55;
  swift_beginAccess();
  v81 = type metadata accessor for Image(0);
  v82 = lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type Image and conformance Image, 255, type metadata accessor for Image, &protocol conformance descriptor for Image);
  v83 = v79;
  v84 = Capsule.merge<A>(_:)();
  Strong = swift_endAccess();
  v124 = v48;
  if ((v84 & 1) != 0 || (Strong = swift_unknownObjectWeakLoadStrong()) == 0)
  {
    (*((*v80 & *v83) + 0x520))(Strong);
  }

  else
  {
  }

  v86 = *&v67[v129];
  v87 = *((*v80 & *v86) + 0x3F0);
  swift_beginAccess();
  v88 = v132;
  v89 = v136;
  v90 = v126(v132, &v86[v87], v136);
  MEMORY[0x1EEE9AC00](v90);
  *(&v123 - 4) = v81;
  *(&v123 - 3) = v82;
  *(&v123 - 2) = &protocol witness table for Image;
  swift_getKeyPath();
  v91 = v86;
  Capsule.subscript.getter();

  v92 = *(v133 + 8);
  v92(v88, v89);
  v93 = v134;
  [v134 setContentSize_];
  v94 = v128;
  v95 = *&v128[v49];
  if (!v95)
  {
    goto LABEL_48;
  }

  [v95 setDelegate_];
  v96 = *&v94[v49];
  if (!v96)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  [v96 setCancelsTouchesInView_];
  v97 = *&v94[v49];
  if (!v97)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  [v97 setDelaysTouchesEnded_];
  v98 = *&v94[v49];
  if (!v98)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  [v98 setEnabled_];
  if (!*&v94[v49])
  {
LABEL_52:
    __break(1u);
    return;
  }

  [v93 addGestureRecognizer_];
  v99 = v130;
  if ((v131 & 1) == 0)
  {
    if (one-time initialization token for backboardColor != -1)
    {
      swift_once();
    }

    [v78 setBackgroundColor_];
  }

  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit015CanvasViewTiledD8DelegateCyAA5ImageVGMd, &_s8PaperKit015CanvasViewTiledD8DelegateCyAA5ImageVGMR);
  v101 = objc_allocWithZone(v100);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v139.receiver = v101;
  v139.super_class = v100;
  v102 = v78;
  v103 = objc_msgSendSuper2(&v139, sel_init);
  v104 = *&v102[direct field offset for CanvasView.tiledViewDelegate];
  *&v102[direct field offset for CanvasView.tiledViewDelegate] = v103;

  [v99 setDelegate_];
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit30CanvasViewRulerHostingDelegateCyAA5ImageVGMd, &_s8PaperKit30CanvasViewRulerHostingDelegateCyAA5ImageVGMR);
  v106 = objc_allocWithZone(v105);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v138.receiver = v106;
  v138.super_class = v105;
  v107 = objc_msgSendSuper2(&v138, sel_init);

  v108 = *&v102[direct field offset for CanvasView.rulerHostingDelegate];
  *&v102[direct field offset for CanvasView.rulerHostingDelegate] = v107;

  [v99 setRulerHostingDelegate_];
  [v134 setDelegate_];
  v109 = *&v102[direct field offset for Canvas._editingView];
  if (v109)
  {
    v110 = *&v102[direct field offset for Canvas._editingView + 8];
  }

  else
  {
    v109 = *&v67[v129];
    v110 = &protocol witness table for ContainerCanvasElementView<A>;
  }

  v115 = v109;

  v116 = type metadata accessor for CanvasViewSelectionInteractionDelegate();
  v117 = objc_allocWithZone(v116);
  *&v117[OBJC_IVAR____TtC8PaperKit38CanvasViewSelectionInteractionDelegate_containerView + 8] = 0;
  *(swift_unknownObjectWeakInit() + 8) = v110;
  swift_unknownObjectWeakAssign();
  v137.receiver = v117;
  v137.super_class = v116;
  v118 = objc_msgSendSuper2(&v137, sel_init);

  v119 = direct field offset for CanvasView.selectionInteractionDelegate;
  v120 = *&v102[direct field offset for CanvasView.selectionInteractionDelegate];
  *&v102[direct field offset for CanvasView.selectionInteractionDelegate] = v118;

  v121 = [v99 selectionInteraction];
  [v121 setDelegate_];

  v122 = v134;
  [v102 addSubview_];
  specialized CanvasView.updateAfterDidScroll(_:)(v122);

  v92(v135, v136);
}

unint64_t specialized CanvasView.updateAfterDidScroll(_:)(void *a1)
{
  v2 = v1;
  v59 = a1;
  v3 = type metadata accessor for Paper(0);
  MEMORY[0x1EEE9AC00](v3);
  v58 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd, &_s9Coherence7CapsuleVy8PaperKit0C0VGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v56 - v7;
  v9 = direct field offset for Canvas.paperView;
  v10 = *&v2[direct field offset for Canvas.paperView];
  v11 = *((*MEMORY[0x1E69E7D40] & *v10) + 0x3F0);
  swift_beginAccess();
  v12 = *(v6 + 16);
  v12(v8, &v10[v11], v5);
  v60 = v3;
  v61 = lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type Paper and conformance Paper, 255, type metadata accessor for Paper, &protocol conformance descriptor for Paper);
  v62 = &protocol witness table for Paper;
  swift_getKeyPath();
  v13 = v10;
  Capsule.subscript.getter();

  v14 = *(v6 + 8);
  v14(v8, v5);
  v15 = *&v64.a;
  v16 = *&v64.c;
  v57 = v9;
  v17 = *&v2[v9];
  v18 = *((*MEMORY[0x1E69E7D40] & *v17) + 0x3F0);
  swift_beginAccess();
  v19 = v17 + v18;
  v20 = v59;
  v12(v8, v19, v5);
  v21 = v58;
  Capsule.root.getter();
  v14(v8, v5);
  v22 = off_1F4F62998(v3);
  _s8PaperKit0A0VWOhTm_0(v21, type metadata accessor for Paper);
  CGImagePropertyOrientation.transform.getter(v22, &v64);
  v63 = v64;
  v65.origin = v15;
  v65.size = v16;
  v66 = CGRectApplyAffineTransform(v65, &v63);
  width = v66.size.width;
  height = v66.size.height;
  [v20 zoomScale];
  v26 = width * v25;
  v27 = height * v25;
  [v20 contentSize];
  if (vabdd_f64(v26, v29) >= 1.5 || vabdd_f64(v27, v28) >= 1.5)
  {
    [v20 setContentSize_];
  }

  v30 = direct field offset for CanvasView.zoomView;
  result = *&v2[direct field offset for CanvasView.zoomView];
  if (!result)
  {
    goto LABEL_28;
  }

  [result bounds];
  v34 = MEMORY[0x1E69E7D40];
  if (vabdd_f64(width, v33) >= 1.5 || vabdd_f64(height, v32) >= 1.5)
  {
    [v20 zoomScale];
    v36 = v35;
    v37 = direct field offset for CanvasView.zoomState;
    v38 = v2[direct field offset for CanvasView.zoomState];
    result = [v20 setZoomScale_];
    v39 = *&v2[v30];
    if (!v39)
    {
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v40 = v39;
    [v40 frame];
    [v40 setFrame_];

    v41 = direct field offset for CanvasView.firstLayout;
    if (v2[direct field offset for CanvasView.firstLayout] == 1)
    {
      [v20 frame];
      v36 = fmin(CGRectGetWidth(v67) / width, 1.0);
      v2[v41] = 0;
    }

    [v20 setZoomScale_];
    v2[v37] = v38;
  }

  specialized CanvasView.updateContentInsets()();
  v42 = *&v2[v57];
  result = specialized ContainerCanvasElementView.subelementViews.getter();
  v43 = result;
  if (result >> 62)
  {
    result = __CocoaSet.count.getter();
    v44 = result;
    if (!result)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v44 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v44)
    {
      goto LABEL_20;
    }
  }

  if (v44 < 1)
  {
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  for (i = 0; i != v44; ++i)
  {
    if ((v43 & 0xC000000000000001) != 0)
    {
      v46 = MEMORY[0x1DA6CE0C0](i, v43);
    }

    else
    {
      v46 = *(v43 + 8 * i + 32);
    }

    v47 = v46;
    (*((*v34 & *v46) + 0x258))(v2);
  }

LABEL_20:

  AnyCanvas.overlays.getter();
  v49 = *(v48 + 16);
  if (v49)
  {
    v50 = (v48 + 32);
    do
    {
      v51 = *v50;
      v50 += 2;
      [v51 setNeedsLayout];
      --v49;
    }

    while (v49);
  }

  swift_getKeyPath();
  *&v63.a = v2;
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, 255, type metadata accessor for AnyCanvas, &protocol conformance descriptor for AnyCanvas);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v52 = &v2[OBJC_IVAR____TtC8PaperKit9AnyCanvas__delegate];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v53 = *&v2[v30];
    if (v53)
    {
      v54 = *(v52 + 1);
      ObjectType = swift_getObjectType();
      [v53 frame];
      [v2 convertRect:v20 fromCoordinateSpace:?];
      (*(v54 + 64))(v2, ObjectType, v54);
      return swift_unknownObjectRelease();
    }

LABEL_30:
    __break(1u);
  }

  return result;
}

id specialized CanvasView.updateAfterDidScroll(_:)(void *a1)
{
  v2 = v1;
  v58 = a1;
  v3 = type metadata accessor for Image(0);
  MEMORY[0x1EEE9AC00](v3);
  v57 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGMd, &_s9Coherence7CapsuleVy8PaperKit5ImageVGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v55 - v7;
  v9 = direct field offset for Canvas.paperView;
  v10 = *&v2[direct field offset for Canvas.paperView];
  v11 = *((*MEMORY[0x1E69E7D40] & *v10) + 0x3F0);
  swift_beginAccess();
  v12 = *(v6 + 16);
  v12(v8, &v10[v11], v5);
  v59 = v3;
  v60 = lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type Image and conformance Image, 255, type metadata accessor for Image, &protocol conformance descriptor for Image);
  v61 = &protocol witness table for Image;
  swift_getKeyPath();
  v13 = v10;
  Capsule.subscript.getter();

  v14 = *(v6 + 8);
  v14(v8, v5);
  v15 = *&v63.a;
  v16 = *&v63.c;
  v56 = v9;
  v17 = *&v2[v9];
  v18 = *((*MEMORY[0x1E69E7D40] & *v17) + 0x3F0);
  swift_beginAccess();
  v19 = v17 + v18;
  v20 = v58;
  v12(v8, v19, v5);
  v21 = v57;
  Capsule.root.getter();
  v14(v8, v5);
  v22 = off_1F4F5EE38(v3);
  _s8PaperKit0A0VWOhTm_0(v21, type metadata accessor for Image);
  CGImagePropertyOrientation.transform.getter(v22, &v63);
  v62 = v63;
  v64.origin = v15;
  v64.size = v16;
  v65 = CGRectApplyAffineTransform(v64, &v62);
  width = v65.size.width;
  height = v65.size.height;
  [v20 zoomScale];
  v26 = width * v25;
  v27 = height * v25;
  [v20 contentSize];
  if (vabdd_f64(v26, v29) >= 1.5 || vabdd_f64(v27, v28) >= 1.5)
  {
    [v20 setContentSize_];
  }

  v30 = direct field offset for CanvasView.zoomView;
  result = *&v2[direct field offset for CanvasView.zoomView];
  if (!result)
  {
    __break(1u);
    goto LABEL_20;
  }

  [result bounds];
  v34 = v56;
  if (vabdd_f64(width, v33) < 1.5 && vabdd_f64(height, v32) < 1.5)
  {
    goto LABEL_12;
  }

  [v20 zoomScale];
  v36 = v35;
  v37 = direct field offset for CanvasView.zoomState;
  v38 = v2[direct field offset for CanvasView.zoomState];
  result = [v20 setZoomScale_];
  v39 = *&v2[v30];
  if (!v39)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v40 = v39;
  [v40 frame];
  [v40 setFrame_];

  v41 = direct field offset for CanvasView.firstLayout;
  if (v2[direct field offset for CanvasView.firstLayout] == 1)
  {
    [v20 frame];
    v36 = fmin(CGRectGetWidth(v66) / width, 1.0);
    v2[v41] = 0;
  }

  [v20 setZoomScale_];
  v42 = v2[v37];
  v2[v37] = v38;
  if (v42 != v38)
  {
    v43 = *&v2[v34];
    v44 = *((*MEMORY[0x1E69E7D40] & *v43) + 0x3D0);
    v45 = v43;
    v44();
  }

LABEL_12:
  specialized CanvasView.updateContentInsets()();
  v46 = *&v2[v34];
  specialized ContainerCanvasElementView.didScroll(in:)(v2);

  AnyCanvas.overlays.getter();
  v48 = *(v47 + 16);
  if (v48)
  {
    v49 = (v47 + 32);
    do
    {
      v50 = *v49;
      v49 += 2;
      [v50 setNeedsLayout];
      --v48;
    }

    while (v48);
  }

  swift_getKeyPath();
  *&v62.a = v2;
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, 255, type metadata accessor for AnyCanvas, &protocol conformance descriptor for AnyCanvas);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v51 = &v2[OBJC_IVAR____TtC8PaperKit9AnyCanvas__delegate];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v52 = *&v2[v30];
    if (v52)
    {
      v53 = *(v51 + 1);
      ObjectType = swift_getObjectType();
      [v52 frame];
      [v2 convertRect:v20 fromCoordinateSpace:?];
      (*(v53 + 64))(v2, ObjectType, v53);
      return swift_unknownObjectRelease();
    }

LABEL_21:
    __break(1u);
  }

  return result;
}

void specialized Canvas.scheduleFinalizeTask()()
{
  specialized Canvas.scheduleFinalizeTask()(&unk_1F4F558D8, partial apply for specialized closure #1 in Canvas.scheduleFinalizeTask(), &block_descriptor_183);
}

{
  specialized Canvas.scheduleFinalizeTask()(&unk_1F4F55C70, partial apply for specialized closure #1 in Canvas.scheduleFinalizeTask(), &block_descriptor_295);
}

void specialized Canvas.scheduleFinalizeTask()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = direct field offset for Canvas.finalizeTimer;
  [*(v3 + direct field offset for Canvas.finalizeTimer) invalidate];
  v7 = objc_opt_self();
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12[4] = a2;
  v12[5] = v8;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIBandSelectionInteraction) -> ();
  v12[3] = a3;
  v9 = _Block_copy(v12);

  v10 = [v7 scheduledTimerWithTimeInterval:0 repeats:v9 block:5.0];
  _Block_release(v9);
  v11 = *(v3 + v6);
  *(v3 + v6) = v10;
}

uint64_t one-time initialization function for extensionLogger()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, extensionLogger);
  __swift_project_value_buffer(v0, extensionLogger);
  return Logger.init(subsystem:category:)();
}

uint64_t ExtensionViewController.ProxyWrapper.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

id ExtensionViewController.__deallocating_deinit()
{
  if (v0[OBJC_IVAR____TtC8PaperKit23ExtensionViewController_hostRequestQueueSuspended] == 1)
  {
    dispatch_resume(*&v0[OBJC_IVAR____TtC8PaperKit23ExtensionViewController_hostRequestQueue]);
  }

  v2.receiver = v0;
  v2.super_class = type metadata accessor for ExtensionViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t ExtensionViewController.multipeerConnection.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGSgMd, &_s9Coherence7CapsuleVy8PaperKit0C0VGSgMR);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v8 - v2;
  v4 = OBJC_IVAR____TtC8PaperKit23ExtensionViewController____lazy_storage___multipeerConnection;
  if (*(v0 + OBJC_IVAR____TtC8PaperKit23ExtensionViewController____lazy_storage___multipeerConnection))
  {
    v5 = *(v0 + OBJC_IVAR____TtC8PaperKit23ExtensionViewController____lazy_storage___multipeerConnection);
  }

  else
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd, &_s9Coherence7CapsuleVy8PaperKit0C0VGMR);
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
    v5 = ExtensionViewController.newMultipeerConnection(model:)(v3);
    outlined destroy of StocksKitCurrencyCache.Provider?(v3, &_s9Coherence7CapsuleVy8PaperKit0C0VGSgMd, &_s9Coherence7CapsuleVy8PaperKit0C0VGSgMR);
    *(v0 + v4) = v5;
  }

  return v5;
}

uint64_t ExtensionViewController.newMultipeerConnection(model:)(uint64_t a1)
{
  v2 = v1;
  v20[0] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v20 - v4;
  v6 = type metadata accessor for CRMulticastSyncManagerCatchupBehavior();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGSgMd, &_s9Coherence7CapsuleVy8PaperKit0C0VGSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v20 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence22CRMulticastSyncManagerCy8PaperKit0E0VGMd, &_s9Coherence22CRMulticastSyncManagerCy8PaperKit0E0VGMR);
  type metadata accessor for CRContext();
  v23 = 0;
  v21 = 0u;
  v22 = 0u;
  MEMORY[0x1DA6CC630](0, &v21);
  outlined destroy of StocksKitCurrencyCache.Provider?(&v21, &_s9Coherence18EncryptionDelegate_pSgMd, &_s9Coherence18EncryptionDelegate_pSgMR);
  outlined init with copy of Date?(v20[0], v12, &_s9Coherence7CapsuleVy8PaperKit0C0VGSgMd, &_s9Coherence7CapsuleVy8PaperKit0C0VGSgMR);
  (*(v7 + 104))(v9, *MEMORY[0x1E6995390], v6);
  v13 = CRMulticastSyncManager.__allocating_init(_:model:appFormat:identifier:catchup:)();
  *(&v22 + 1) = type metadata accessor for ExtensionViewController();
  v23 = lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type ExtensionViewController and conformance ExtensionViewController, v14, type metadata accessor for ExtensionViewController, &protocol conformance descriptor for ExtensionViewController);
  *&v21 = v2;
  v15 = v2;
  CRMulticastSyncManager.setLink(_:)();
  __swift_destroy_boxed_opaque_existential_0(&v21);
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v5, 1, 1, v16);
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = v13;
  v18[5] = v17;

  _sScTss5Error_pRs_rlE8detached4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntFZyt_Tt2g5(0, 0, v5, &async function pointer to partial apply for closure #1 in ExtensionViewController.newMultipeerConnection(model:), v18);

  outlined destroy of StocksKitCurrencyCache.Provider?(v5, &_sScPSgMd, &_sScPSgMR);
  return v13;
}

uint64_t closure #1 in ExtensionViewController.newMultipeerConnection(model:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd, &_s9Coherence7CapsuleVy8PaperKit0C0VGMR);
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGSgMd, &_s9Coherence7CapsuleVy8PaperKit0C0VGSgMR);
  v5[10] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScSy9Coherence7CapsuleVy8PaperKit0C0VGGMd, &_sScSy9Coherence7CapsuleVy8PaperKit0C0VGGMR);
  v5[11] = v7;
  v5[12] = *(v7 - 8);
  v5[13] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS8IteratorVy9Coherence7CapsuleVy8PaperKit0D0VG_GMd, &_sScS8IteratorVy9Coherence7CapsuleVy8PaperKit0D0VG_GMR);
  v5[14] = v8;
  v5[15] = *(v8 - 8);
  v5[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](closure #1 in ExtensionViewController.newMultipeerConnection(model:), 0, 0);
}

uint64_t closure #1 in ExtensionViewController.newMultipeerConnection(model:)()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  CRMulticastSyncManager.updates.getter();
  AsyncStream.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  swift_beginAccess();
  v4 = swift_task_alloc();
  v0[17] = v4;
  *v4 = v0;
  v4[1] = closure #1 in ExtensionViewController.newMultipeerConnection(model:);
  v5 = v0[14];
  v6 = v0[10];

  return MEMORY[0x1EEE6D9C8](v6, 0, 0, v5);
}

{

  return MEMORY[0x1EEE6DFA0](closure #1 in ExtensionViewController.newMultipeerConnection(model:), 0, 0);
}

{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[8];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[15] + 8))(v0[16], v0[14]);

    v4 = v0[1];

    return v4();
  }

  else
  {
    (*(v3 + 32))(v0[9], v1, v2);
    Strong = swift_unknownObjectWeakLoadStrong();
    v0[18] = Strong;
    if (Strong)
    {
      type metadata accessor for MainActor();
      v0[19] = static MainActor.shared.getter();
      v8 = dispatch thunk of Actor.unownedExecutor.getter();

      return MEMORY[0x1EEE6DFA0](closure #1 in ExtensionViewController.newMultipeerConnection(model:), v8, v7);
    }

    else
    {
      (*(v0[8] + 8))(v0[9], v0[7]);
      v9 = swift_task_alloc();
      v0[17] = v9;
      *v9 = v0;
      v9[1] = closure #1 in ExtensionViewController.newMultipeerConnection(model:);
      v10 = v0[14];
      v11 = v0[10];

      return MEMORY[0x1EEE6D9C8](v11, 0, 0, v10);
    }
  }
}

{
  v1 = *(v0 + 144);
  v2 = *(v0 + 72);

  ExtensionViewController.updateCanvasView(paper:)(v2);

  return MEMORY[0x1EEE6DFA0](closure #1 in ExtensionViewController.newMultipeerConnection(model:), 0, 0);
}

{
  (*(v0[8] + 8))(v0[9], v0[7]);
  v1 = swift_task_alloc();
  v0[17] = v1;
  *v1 = v0;
  v1[1] = closure #1 in ExtensionViewController.newMultipeerConnection(model:);
  v2 = v0[14];
  v3 = v0[10];

  return MEMORY[0x1EEE6D9C8](v3, 0, 0, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ExtensionViewController.DecryptionError()
{
  Hasher.init(_seed:)();
  MEMORY[0x1DA6CE810](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ExtensionViewController.DecryptionError(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1DA6CE810](0);
  return Hasher._finalize()();
}

Swift::Void __swiftcall ExtensionViewController.accept(_:)(NSXPCConnection a1)
{
  [(objc_class *)a1.super.isa setExportedObject:v1];
  v3 = objc_opt_self();
  v4 = [v3 interfaceWithProtocol_];
  [(objc_class *)a1.super.isa setExportedInterface:v4];

  v5 = [v3 interfaceWithProtocol_];
  [(objc_class *)a1.super.isa setRemoteObjectInterface:v5];

  [(objc_class *)a1.super.isa resume];
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v6 = static ScrollWheelEventSwizzler.shared;
  [(objc_class *)a1.super.isa auditToken];
  v7 = aBlock;
  v8 = v17;
  v9 = v18;
  v10 = v19;
  v11 = *(v6 + 16);

  os_unfair_lock_lock((v11 + 20));
  closure #1 in ScrollWheelEventSwizzler.enableScrollEventForwardingIfNecessary(_:)((v11 + 16), v7, v8, v9, v10);
  os_unfair_lock_unlock((v11 + 20));

  v20 = closure #1 in ExtensionViewController.accept(_:);
  v21 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v17 = 1107296256;
  v18 = thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ();
  v19 = &block_descriptor_3;
  v12 = _Block_copy(&aBlock);
  v13 = [(objc_class *)a1.super.isa synchronousRemoteObjectProxyWithErrorHandler:v12];
  _Block_release(v12);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18NSXPCProxyCreating_8PaperKit15HostXPCProtocolpMd, &_sSo18NSXPCProxyCreating_8PaperKit15HostXPCProtocolpMR);
  if (swift_dynamicCast())
  {
    v14 = v15;
  }

  else
  {
    v14 = 0;
  }

  *(*(v1 + OBJC_IVAR____TtC8PaperKit23ExtensionViewController_hostProxyWrapper) + 16) = v14;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  dispatch_resume(*(v1 + OBJC_IVAR____TtC8PaperKit23ExtensionViewController_hostRequestQueue));
  swift_unknownObjectRelease();
  *(v1 + OBJC_IVAR____TtC8PaperKit23ExtensionViewController_hostRequestQueueSuspended) = 0;
}

void closure #1 in ExtensionViewController.accept(_:)(void *a1)
{
  if (one-time initialization token for extensionLogger != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, extensionLogger);
  v3 = a1;
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = a1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_1D38C4000, oslog, v4, "Failed to get host XPC proxy %@", v5, 0xCu);
    outlined destroy of StocksKitCurrencyCache.Provider?(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1DA6D0660](v6, -1, -1);
    MEMORY[0x1DA6D0660](v5, -1, -1);
  }
}

void thunk for @escaping @callee_guaranteed (@guaranteed Error) -> ()(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

double ExtensionViewController.openLink(_:)(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v21 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v19 = *(v6 - 8);
  v20 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v18[1] = *(v1 + OBJC_IVAR____TtC8PaperKit23ExtensionViewController_hostRequestQueue);
  v13 = *(v1 + OBJC_IVAR____TtC8PaperKit23ExtensionViewController_hostProxyWrapper);
  (*(v10 + 16))(v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v9, v12);
  v14 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  (*(v10 + 32))(v15 + v14, v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  aBlock[4] = partial apply for closure #1 in ExtensionViewController.openLink(_:);
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_203;
  v16 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v22 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, 255, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1DA6CD890](0, v8, v5, v16);
  _Block_release(v16);
  (*(v21 + 8))(v5, v3);
  (*(v19 + 8))(v8, v20);

  return result;
}

uint64_t closure #1 in ExtensionViewController.openLink(_:)(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2)
  {
    swift_unknownObjectRetain();
    URL._bridgeToObjectiveC()(v3);
    v5 = v4;
    [v2 openLink_];

    return swift_unknownObjectRelease();
  }

  return result;
}

double thunk for @escaping @callee_guaranteed @Sendable () -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);

  return result;
}

Swift::Void __swiftcall ExtensionViewController.reportPaperBounds(_:)(__C::CGRect a1)
{
  height = a1.size.height;
  width = a1.size.width;
  y = a1.origin.y;
  x = a1.origin.x;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v10 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = *(v1 + OBJC_IVAR____TtC8PaperKit23ExtensionViewController_hostRequestQueue);
  v13 = *(v1 + OBJC_IVAR____TtC8PaperKit23ExtensionViewController_hostProxyWrapper);
  v14 = swift_allocObject();
  *(v14 + 2) = v13;
  v14[3] = x;
  v14[4] = y;
  v14[5] = width;
  v14[6] = height;
  aBlock[4] = partial apply for closure #1 in ExtensionViewController.reportPaperBounds(_:);
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_197;
  v15 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v18 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, 255, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1DA6CD890](0, v12, v9, v15);
  _Block_release(v15);
  (*(v7 + 8))(v9, v6);
  (*(v10 + 8))(v12, v17);
}

uint64_t closure #1 in ExtensionViewController.reportPaperBounds(_:)(uint64_t result, uint64_t a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v6 = *(result + 16);
  if (v6)
  {
    swift_unknownObjectRetain();
    v14.origin.x = a3;
    v14.origin.y = a4;
    v14.size.width = a5;
    v14.size.height = a6;
    v11 = NSStringFromRect(v14);
    if (!v11)
    {
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = MEMORY[0x1DA6CCED0](v12);
    }

    [v6 reportingPaperBounds_];

    return swift_unknownObjectRelease();
  }

  return result;
}

double ExtensionViewController.send(_:)(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v9 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = *(v2 + OBJC_IVAR____TtC8PaperKit23ExtensionViewController_hostRequestQueue);
  v12 = *(v2 + OBJC_IVAR____TtC8PaperKit23ExtensionViewController_hostProxyWrapper);
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = a1;
  v13[4] = a2;
  aBlock[4] = partial apply for closure #1 in ExtensionViewController.send(_:);
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_3;
  v14 = _Block_copy(aBlock);

  outlined copy of Data._Representation(a1, a2);
  static DispatchQoS.unspecified.getter();
  v18 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, 255, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1DA6CD890](0, v11, v8, v14);
  _Block_release(v14);
  (*(v6 + 8))(v8, v5);
  (*(v9 + 8))(v11, v17);

  return result;
}

uint64_t closure #1 in ExtensionViewController.send(_:)(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2)
  {
    swift_unknownObjectRetain();
    isa = Data._bridgeToObjectiveC()().super.isa;
    [v2 receiveMulticastData_];

    return swift_unknownObjectRelease();
  }

  return result;
}

Swift::Void __swiftcall ExtensionViewController.addCanvasView(_:)(UIView *a1)
{
  v2 = v1;
  [(UIView *)a1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = [v1 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_10;
  }

  v5 = v4;
  [v4 addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D405B630;
  v7 = [v2 view];
  if (!v7)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = v7;
  v9 = [v7 centerXAnchor];

  v10 = [(UIView *)a1 centerXAnchor];
  v11 = [v9 constraintEqualToAnchor_];

  *(v6 + 32) = v11;
  v12 = [v2 view];
  if (!v12)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v13 = v12;
  v14 = [v12 centerYAnchor];

  v15 = [(UIView *)a1 centerYAnchor];
  v16 = [v14 constraintEqualToAnchor_];

  *(v6 + 40) = v16;
  v17 = [v2 view];
  if (!v17)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v18 = v17;
  v19 = [v17 widthAnchor];

  v20 = [(UIView *)a1 widthAnchor];
  v21 = [v19 constraintEqualToAnchor_];

  *(v6 + 48) = v21;
  v22 = [v2 view];
  if (!v22)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v23 = v22;
  v24 = objc_opt_self();
  v25 = [v23 heightAnchor];

  v26 = [(UIView *)a1 heightAnchor];
  v27 = [v25 constraintEqualToAnchor_];

  *(v6 + 56) = v27;
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x1E696ACD8);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v24 activateConstraints_];
}

void ExtensionViewController.loadPaperDrawing(_:paperURL:coherenceContextURL:encrypted:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v95 = a2;
  v94 = a1;
  v10 = type metadata accessor for Paper(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd, &_s9Coherence7CapsuleVy8PaperKit0C0VGMR);
  v91 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v90 = &v89 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v97 = (&v89 - v15);
  v16 = type metadata accessor for URL();
  v17 = *(v16 - 8);
  *&v18 = MEMORY[0x1EEE9AC00](v16).n128_u64[0];
  v20 = &v89 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = OBJC_IVAR____TtC8PaperKit23ExtensionViewController_paperTextCanvasView;
  v22 = *&v5[OBJC_IVAR____TtC8PaperKit23ExtensionViewController_paperTextCanvasView];
  if (v22)
  {
    [v22 removeFromSuperview];
  }

  v96 = v21;
  v23 = *&v5[OBJC_IVAR____TtC8PaperKit23ExtensionViewController_paperCanvasView];
  if (v23)
  {
    [v23 removeFromSuperview];
  }

  v24 = [v5 view];
  if (!v24)
  {
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v25 = v24;
  [v24 bounds];
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;

  v93 = v17;
  v34 = *(v17 + 16);
  v34(v20, a3, v16);
  outlined init with copy of Date?(a4, v97, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v89 = v12;
  if (a5)
  {
    v35 = type metadata accessor for ExtensionViewController();
    v37 = lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type ExtensionViewController and conformance ExtensionViewController, v36, type metadata accessor for ExtensionViewController, &protocol conformance descriptor for ExtensionViewController);
    v38 = v6;
    v39 = *&v6;
  }

  else
  {
    v35 = 0;
    v37 = 0;
    v39 = 0.0;
    v99.origin.y = 0.0;
    v99.size.width = 0.0;
  }

  v40 = v6;
  *&v99.size.height = v35;
  v100 = v37;
  v99.origin.x = v39;
  v41 = type metadata accessor for PaperTextAttachmentCanvasView(0);
  v42 = objc_allocWithZone(v41);
  *&v42[OBJC_IVAR____TtC8PaperKit29PaperTextAttachmentCanvasView_canvasViewDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v42[OBJC_IVAR____TtC8PaperKit29PaperTextAttachmentCanvasView_canvasTiledView] = 0;
  *&v42[OBJC_IVAR____TtC8PaperKit29PaperTextAttachmentCanvasView_attachmentView] = 0;
  *&v42[OBJC_IVAR____TtC8PaperKit29PaperTextAttachmentCanvasView_previousMathDocument] = 0;
  *&v42[OBJC_IVAR____TtC8PaperKit29PaperTextAttachmentCanvasView_contentView] = 0;
  v43 = &v42[OBJC_IVAR____TtC8PaperKit29PaperTextAttachmentCanvasView_encryptionDelegate];
  *(v43 + 32) = 0;
  *v43 = 0u;
  *(v43 + 16) = 0u;
  v44 = &v42[OBJC_IVAR____TtC8PaperKit29PaperTextAttachmentCanvasView_paperIdentifier];
  v45 = v95;
  *v44 = v94;
  v44[1] = v45;
  v46 = v20;
  v34(&v42[OBJC_IVAR____TtC8PaperKit29PaperTextAttachmentCanvasView_paperURL], v20, v16);
  v47 = v97;
  outlined init with copy of Date?(v97, &v42[OBJC_IVAR____TtC8PaperKit29PaperTextAttachmentCanvasView_coherenceContextURL], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  swift_beginAccess();

  outlined assign with copy of EncryptionDelegate?(&v99, v43);
  swift_endAccess();
  v98.receiver = v42;
  v98.super_class = v41;
  v48 = objc_msgSendSuper2(&v98, sel_initWithFrame_, v27, v29, v31, v33);
  PaperTextAttachmentCanvasView.setupViews()();
  outlined destroy of StocksKitCurrencyCache.Provider?(v47, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(v93 + 8))(v46, v16);
  outlined destroy of StocksKitCurrencyCache.Provider?(&v99, &_s9Coherence18EncryptionDelegate_pSgMd, &_s9Coherence18EncryptionDelegate_pSgMR);
  *&v48[OBJC_IVAR____TtC8PaperKit29PaperTextAttachmentCanvasView_canvasViewDelegate + 8] = &protocol witness table for ExtensionViewController;
  swift_unknownObjectWeakAssign();
  v50 = *&v40[OBJC_IVAR____TtC8PaperKit23ExtensionViewController_liveStreamMessenger];
  if (v50)
  {
    v51 = lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type ExtensionViewController.LiveStreamMessenger and conformance ExtensionViewController.LiveStreamMessenger, v49, type metadata accessor for ExtensionViewController.LiveStreamMessenger, &protocol conformance descriptor for ExtensionViewController.LiveStreamMessenger);
  }

  else
  {
    v51 = 0;
  }

  v52 = OBJC_IVAR____TtC8PaperKit29PaperTextAttachmentCanvasView_attachmentView;
  v53 = *&v48[OBJC_IVAR____TtC8PaperKit29PaperTextAttachmentCanvasView_attachmentView];
  if (!v53)
  {
    goto LABEL_27;
  }

  v54 = &v53[direct field offset for Canvas.liveStreamMessenger];
  swift_beginAccess();
  *v54 = v50;
  *(v54 + 1) = v51;
  swift_retain_n();
  v55 = v53;
  swift_unknownObjectRelease();
  specialized Canvas.liveStreamMessenger.didset(v56);

  v57 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v58 = v48;
  v59 = [v57 initWithRed:0.894117647 green:0.68627451 blue:0.0392156863 alpha:1.0];
  [(UIView *)v58 setTintColor:v59];

  ExtensionViewController.addCanvasView(_:)(v58);
  v60 = v96;
  v61 = *&v40[v96];
  *&v40[v96] = v58;
  v62 = v58;

  if ((v40[OBJC_IVAR____TtC8PaperKit23ExtensionViewController_screenPotentialHeadroom + 8] & 1) == 0)
  {
    v63 = *&v40[v60];
    if (v63)
    {
      v64 = *(v63 + OBJC_IVAR____TtC8PaperKit29PaperTextAttachmentCanvasView_attachmentView);
      if (!v64)
      {
LABEL_29:
        __break(1u);
        return;
      }

      v65 = *&v40[OBJC_IVAR____TtC8PaperKit23ExtensionViewController_screenPotentialHeadroom];
      v66 = *&v64[OBJC_IVAR____TtC8PaperKit9AnyCanvas__potentialHeadroomOverride];
      if (v66 == v65)
      {
        *&v64[OBJC_IVAR____TtC8PaperKit9AnyCanvas__potentialHeadroomOverride] = v65;
        v67 = v64;
        AnyCanvas._potentialHeadroomOverride.didset(v66);
      }

      else
      {
        KeyPath = swift_getKeyPath();
        v97 = &v89;
        MEMORY[0x1EEE9AC00](KeyPath);
        *(&v89 - 2) = v64;
        *(&v89 - 1) = v65;
        *&v99.origin.x = v64;
        lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, 255, type metadata accessor for AnyCanvas, &protocol conformance descriptor for AnyCanvas);
        v69 = v64;
        v60 = v96;
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      }
    }
  }

  v70 = [objc_opt_self() defaultCenter];
  v71 = MEMORY[0x1DA6CCED0](0xD00000000000002BLL, 0x80000001D4082DA0);
  [v70 addObserver:v40 selector:sel_handleLink_ name:v71 object:0];

  v72 = *&v40[v60];
  if (v72)
  {
    v73 = *&v40[OBJC_IVAR____TtC8PaperKit23ExtensionViewController_linedPaperHorizontalSpacing];
    v74 = *&v40[OBJC_IVAR____TtC8PaperKit23ExtensionViewController_linedPaperVerticalSpacing];
    v75 = *&v40[OBJC_IVAR____TtC8PaperKit23ExtensionViewController_linedPaperHorizontalInset];
    v76 = v72;
    PaperTextAttachmentCanvasView.setLinedPaper(horizontalLineSpacing:verticalLineSpacing:horizontalInset:)(v73, v74, v75);
  }

  v77 = *&v48[v52];
  if (!v77)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v78 = *&v77[direct field offset for Canvas.paperView];
  v79 = *((*MEMORY[0x1E69E7D40] & *v78) + 0x3F0);
  swift_beginAccess();
  v80 = v91;
  v81 = v90;
  v82 = v92;
  (*(v91 + 16))(v90, &v78[v79], v92);
  v83 = v77;
  v84 = v89;
  Capsule.root.getter();
  (*(v80 + 8))(v81, v82);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMR);
  CRRegister.wrappedValue.getter();

  _s8PaperKit0A0VWOhTm_0(v84, type metadata accessor for Paper);
  x = v99.origin.x;
  y = v99.origin.y;
  width = v99.size.width;
  height = v99.size.height;
  if (!CGRectIsEmpty(v99))
  {
    v101.origin.x = x;
    v101.origin.y = y;
    v101.size.width = width;
    v101.size.height = height;
    if (!CGRectIsInfinite(v101))
    {
      v102.origin.x = x;
      v102.origin.y = y;
      v102.size.width = width;
      v102.size.height = height;
      ExtensionViewController.reportPaperBounds(_:)(v102);
    }
  }
}

void ExtensionViewController.loadPaperDocument(from:coherenceContextURL:encrypted:layout:)(uint64_t a1, uint64_t a2, char a3, char *a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v39 - v11;
  v13 = type metadata accessor for URL();
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a4;
  (*(v18 + 16))(v16, a1, v14);
  outlined init with copy of Date?(a2, v12, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if (a3)
  {
    v19 = type metadata accessor for ExtensionViewController();
    v21 = lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type ExtensionViewController and conformance ExtensionViewController, v20, type metadata accessor for ExtensionViewController, &protocol conformance descriptor for ExtensionViewController);
    v22 = v5;
    v23 = v5;
  }

  else
  {
    v19 = 0;
    v21 = 0;
    v23 = 0;
    v42[1] = 0;
    v42[2] = 0;
  }

  v42[3] = v19;
  v42[4] = v21;
  v42[0] = v23;
  v41 = v17;
  v24 = objc_allocWithZone(type metadata accessor for PaperKitExtensionDocumentViewController());
  PaperKitExtensionDocumentViewController.init(paperDocumentURL:coherenceContextURL:encryptionDelegate:layout:)(v16, v12, v42, &v41);
  v26 = v25;
  *&v25[OBJC_IVAR____TtC8PaperKit39PaperKitExtensionDocumentViewController_delegate + 8] = &protocol witness table for ExtensionViewController;
  swift_unknownObjectWeakAssign();
  if (*&v5[OBJC_IVAR____TtC8PaperKit23ExtensionViewController_liveStreamMessenger])
  {
    v28 = lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type ExtensionViewController.LiveStreamMessenger and conformance ExtensionViewController.LiveStreamMessenger, v27, type metadata accessor for ExtensionViewController.LiveStreamMessenger, &protocol conformance descriptor for ExtensionViewController.LiveStreamMessenger);
  }

  else
  {
    v28 = 0;
  }

  PaperKitExtensionDocumentViewController.liveStreamMessenger.setter(v29, v28);
  v30 = &v26[OBJC_IVAR____TtC8PaperKit39PaperKitExtensionDocumentViewController_extensionHostSafeAreaInsets];
  v31 = *&v5[OBJC_IVAR____TtC8PaperKit23ExtensionViewController_extensionHostSafeAreaInsets];
  v39 = *&v5[OBJC_IVAR____TtC8PaperKit23ExtensionViewController_extensionHostSafeAreaInsets + 16];
  v40 = v31;
  swift_beginAccess();
  v32 = v39;
  *v30 = v40;
  *(v30 + 1) = v32;
  v33 = v26;
  v34 = [v33 view];
  if (v34)
  {
    v35 = v34;
    [v34 setNeedsLayout];

    [v5 addChildViewController_];
    v36 = [v33 view];

    if (v36)
    {
      ExtensionViewController.addCanvasView(_:)(v36);

      v37 = *&v5[OBJC_IVAR____TtC8PaperKit23ExtensionViewController_paperDocumentViewController];
      *&v5[OBJC_IVAR____TtC8PaperKit23ExtensionViewController_paperDocumentViewController] = v33;
      v38 = v33;

      [v38 didMoveToParentViewController_];
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void ExtensionViewController.updateCanvasView(paper:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine13AnySubscriberVy9Coherence7CapsuleVy8PaperKit0F0VGs5NeverOGMd, &_s7Combine13AnySubscriberVy9Coherence7CapsuleVy8PaperKit0F0VGs5NeverOGMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v143 = &v131 - v5;
  v6 = type metadata accessor for CRKeyPath();
  v144 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v131 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v131 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd, &_s9Coherence7CapsuleVy8PaperKit0C0VGMR);
  v137 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v146 = &v131 - v13;
  type metadata accessor for CRContext();
  v148 = 0;
  memset(v147, 0, sizeof(v147));
  v14 = MEMORY[0x1DA6CC630](0, v147);
  outlined destroy of StocksKitCurrencyCache.Provider?(v147, &_s9Coherence18EncryptionDelegate_pSgMd, &_s9Coherence18EncryptionDelegate_pSgMR);
  v15 = OBJC_IVAR____TtC8PaperKit23ExtensionViewController_paperCanvasView;
  v16 = *&v1[OBJC_IVAR____TtC8PaperKit23ExtensionViewController_paperCanvasView];
  v136 = v14;
  v145 = v12;
  if (v16)
  {
    v133 = OBJC_IVAR____TtC8PaperKit23ExtensionViewController_paperCanvasView;
    v132 = direct field offset for Canvas.paperView;
    v17 = *&v16[direct field offset for Canvas.paperView];
    v18 = *((*MEMORY[0x1E69E7D40] & *v17) + 0x3F0);
    swift_beginAccess();
    v19 = v137;
    v20 = *(v137 + 16);
    v21 = v17 + v18;
    v22 = v146;
    v142 = v137 + 16;
    v141 = v20;
    v20(v146, v21, v12);
    v134 = v16;
    Capsule.rootID.getter();
    v23 = *(v19 + 8);
    v140 = v19 + 8;
    v139 = v23;
    v23(v22, v12);
    Capsule.rootID.getter();
    v24 = CRKeyPath.rawValue.getter();
    v26 = v25;
    v27 = CRKeyPath.rawValue.getter();
    v28 = v6;
    v30 = v29;
    v31 = specialized static Data.== infix(_:_:)(v24, v26, v27, v29);
    v135 = a1;
    v32 = v31;
    outlined consume of Data._Representation(v27, v30);
    outlined consume of Data._Representation(v24, v26);
    v33 = *(v144 + 8);
    v33(v8, v28);
    v33(v11, v28);
    if (v32)
    {
      v131 = v2;
      v138 = v16;
      v34 = v132;
      v35 = *&v16[v132];
      v36 = MEMORY[0x1E69E7D40];
      swift_beginAccess();
      type metadata accessor for Paper(0);
      lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type Paper and conformance Paper, 255, type metadata accessor for Paper, &protocol conformance descriptor for Paper);
      v37 = v35;
      Capsule.merge<A>(_:)();
      swift_endAccess();

      v38 = v134;
      specialized Canvas.mergeToCanvasElements()();
      v39 = direct field offset for Canvas.subscriptions;
      swift_beginAccess();
      v40 = *&v38[v39];
      v41 = v34;
      if (v40 >> 62)
      {
        v42 = __CocoaSet.count.getter();
      }

      else
      {
        v42 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v43 = v131;
      v44 = v145;
      if (v42)
      {
        if (v42 < 1)
        {
          __break(1u);
LABEL_44:
          __break(1u);
          goto LABEL_45;
        }

        v144 = v40 & 0xC000000000000001;

        for (i = 0; i != v42; ++i)
        {
          if (v144)
          {
            v57 = MEMORY[0x1DA6CE0C0](i, v40);
          }

          else
          {
            v57 = *(v40 + 8 * i + 32);
          }

          v58 = AnyCanvas.isLiveEditing()();
          v59 = *v57;
          if (!v58 || (*(v57 + *(v59 + 136)) & 1) != 0)
          {
            v46 = v143;
            outlined init with copy of Date?(v57 + *(v59 + 120), v143, &_s7Combine13AnySubscriberVy9Coherence7CapsuleVy8PaperKit0F0VGs5NeverOGMd, &_s7Combine13AnySubscriberVy9Coherence7CapsuleVy8PaperKit0F0VGs5NeverOGMR);
            v47 = *&v138[v41];
            v48 = *v36 & *v47;
            v49 = v41;
            v50 = *(v48 + 1008);
            swift_beginAccess();
            v51 = v47 + v50;
            v52 = v146;
            v53 = v38;
            v54 = v145;
            v141(v146, v51, v145);
            dispatch thunk of AnySubscriberBase.receive(_:)();

            v55 = v52;
            v41 = v49;
            v36 = MEMORY[0x1E69E7D40];
            v56 = v54;
            v38 = v53;
            v139(v55, v56);
            outlined destroy of StocksKitCurrencyCache.Provider?(v46, &_s7Combine13AnySubscriberVy9Coherence7CapsuleVy8PaperKit0F0VGs5NeverOGMd, &_s7Combine13AnySubscriberVy9Coherence7CapsuleVy8PaperKit0F0VGs5NeverOGMR);
          }

          else
          {
          }
        }

        v43 = v131;
        v44 = v145;
      }

      if (*&v38[direct field offset for Canvas.multipeerConnection])
      {
        v61 = *&v138[v41];
        v62 = *((*v36 & *v61) + 0x3F0);
        swift_beginAccess();
        v63 = v61 + v62;
        v64 = v146;
        v141(v146, v63, v44);

        CRMulticastSyncManager.sync(_:sendDelta:)();

        v139(v64, v44);
      }

      specialized Canvas.scheduleFinalizeTask()(&unk_1F4F558D8, partial apply for specialized closure #1 in Canvas.scheduleFinalizeTask(), &block_descriptor_183);
      v65 = *&v38[OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView];
      v15 = v133;
      a1 = v135;
      if (!v65)
      {
        goto LABEL_50;
      }

      v2 = v43;
      v66 = *(v65 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView_miniMenuController);
      if (v66)
      {
        *(v66 + direct field offset for MiniMenuController.needsStateUpdate) = 1;
      }
    }

    else
    {
      v60 = v134;
      [v134 removeFromSuperview];

      v15 = v133;
      v38 = *&v2[v133];
      *&v2[v133] = 0;
      a1 = v135;
    }

    v14 = v136;
    if (*&v2[v15])
    {
LABEL_41:

      return;
    }
  }

  v67 = *&v2[OBJC_IVAR____TtC8PaperKit23ExtensionViewController_paperTextCanvasView];
  if (v67)
  {
    [v67 removeFromSuperview];
  }

  v68 = [v2 view];
  if (!v68)
  {
    goto LABEL_44;
  }

  v69 = v68;
  [v68 bounds];
  v71 = v70;
  v73 = v72;
  v75 = v74;
  v77 = v76;

  v78 = v146;
  (*(v137 + 16))(v146, a1, v145);
  LODWORD(v69) = v2[OBJC_IVAR____TtC8PaperKit23ExtensionViewController_transparentBackground];
  v79 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit10CanvasViewCyAA0A0VGMd, &_s8PaperKit10CanvasViewCyAA0A0VGMR));
  specialized CanvasView.init(context:frame:paper:editingMode:allowMediaCanvasElements:transparentBackground:paperViewController:)(v14, v78, 3, 1, v69, 0, v71, v73, v75, v77);
  v81 = v80;
  v82 = OBJC_IVAR____TtC8PaperKit23ExtensionViewController_tool;
  swift_beginAccess();
  outlined init with copy of FindResult(&v2[v82], v147);
  v83 = v81;
  specialized Canvas.tool.setter(v147);
  v84 = v83;
  [v84 setTranslatesAutoresizingMaskIntoConstraints_];
  v85 = v84;
  v86 = v2;
  AnyCanvas.viewControllerForPresentingUI.setter(v2);

  v87 = [v86 view];
  if (!v87)
  {
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v88 = v87;
  [v87 addSubview_];

  v89 = *&v2[v15];
  *&v2[v15] = v85;
  v90 = v85;

  if ((v86[OBJC_IVAR____TtC8PaperKit23ExtensionViewController_screenPotentialHeadroom + 8] & 1) == 0)
  {
    v91 = *&v2[v15];
    if (v91)
    {
      v92 = *&v86[OBJC_IVAR____TtC8PaperKit23ExtensionViewController_screenPotentialHeadroom];
      v93 = *&v91[OBJC_IVAR____TtC8PaperKit9AnyCanvas__potentialHeadroomOverride];
      if (v93 == v92)
      {
        *&v91[OBJC_IVAR____TtC8PaperKit9AnyCanvas__potentialHeadroomOverride] = v92;
        v94 = v91;
        AnyCanvas._potentialHeadroomOverride.didset(v93);
      }

      else
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](KeyPath);
        *(&v131 - 2) = v91;
        *(&v131 - 1) = v92;
        *&v147[0] = v91;
        lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, 255, type metadata accessor for AnyCanvas, &protocol conformance descriptor for AnyCanvas);
        v96 = v91;
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      }
    }
  }

  v97 = v86[OBJC_IVAR____TtC8PaperKit23ExtensionViewController_canvasContentMode];
  v98 = direct field offset for CanvasView.canvasContentMode;
  swift_beginAccess();
  v90[v98] = v97;
  [v90 setNeedsLayout];
  v100 = *&v86[OBJC_IVAR____TtC8PaperKit23ExtensionViewController_liveStreamMessenger];
  if (v100)
  {
    v101 = lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type ExtensionViewController.LiveStreamMessenger and conformance ExtensionViewController.LiveStreamMessenger, v99, type metadata accessor for ExtensionViewController.LiveStreamMessenger, &protocol conformance descriptor for ExtensionViewController.LiveStreamMessenger);
  }

  else
  {
    v101 = 0;
  }

  v102 = &v90[direct field offset for Canvas.liveStreamMessenger];
  swift_beginAccess();
  *v102 = v100;
  v102[1] = v101;
  swift_retain_n();
  swift_unknownObjectRelease();
  specialized Canvas.liveStreamMessenger.didset(v103);

  v104 = ExtensionViewController.multipeerConnection.getter();
  v105 = direct field offset for Canvas.xpcMulticast;
  swift_beginAccess();
  *&v90[v105] = v104;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v106 = swift_allocObject();
  *(v106 + 16) = xmmword_1D405B630;
  v107 = [v86 view];
  if (!v107)
  {
    goto LABEL_46;
  }

  v108 = v107;
  v109 = [v107 centerXAnchor];

  v110 = [v90 centerXAnchor];
  v111 = [v109 constraintEqualToAnchor_];

  *(v106 + 32) = v111;
  v112 = [v86 view];
  if (!v112)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v113 = v112;
  v114 = [v112 centerYAnchor];

  v115 = [v90 centerYAnchor];
  v116 = [v114 constraintEqualToAnchor_];

  *(v106 + 40) = v116;
  v117 = [v86 view];
  if (v117)
  {
    v118 = v117;
    v119 = [v117 widthAnchor];

    v120 = [v90 widthAnchor];
    v121 = [v119 constraintEqualToAnchor_];

    *(v106 + 48) = v121;
    v122 = [v86 view];
    if (v122)
    {
      v123 = v122;
      v124 = objc_opt_self();
      v125 = [v123 heightAnchor];

      v126 = [v90 heightAnchor];
      v127 = [v125 constraintEqualToAnchor_];

      *(v106 + 56) = v127;
      type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x1E696ACD8);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v124 activateConstraints_];

      v129 = [objc_opt_self() defaultCenter];
      v130 = MEMORY[0x1DA6CCED0](0xD00000000000002BLL, 0x80000001D4082DA0);
      [v129 addObserver:v86 selector:sel_handleLink_ name:v130 object:0];

      v14 = v136;
      goto LABEL_41;
    }

    goto LABEL_49;
  }

LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
}

double ExtensionViewController.loadPaper(_:paperURL:coherenceContextURL:encrypted:userInterfaceState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v36 = a6;
  v35 = a5;
  v32 = a4;
  v34 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v33 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v27 - v9;
  v30 = &v27 - v9;
  v11 = type metadata accessor for URL();
  v28 = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v29 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v27 - v15;
  v31 = &v27 - v15;
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v12 + 16))(&v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v11);
  outlined init with copy of Date?(v32, v10, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  type metadata accessor for MainActor();

  v19 = static MainActor.shared.getter();
  v20 = (*(v12 + 80) + 48) & ~*(v12 + 80);
  v21 = v20 + v13;
  v22 = ((v21 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v23 = (*(v33 + 80) + v22 + 8) & ~*(v33 + 80);
  v24 = swift_allocObject();
  v25 = MEMORY[0x1E69E85E0];
  *(v24 + 2) = v19;
  *(v24 + 3) = v25;
  *(v24 + 4) = v34;
  *(v24 + 5) = a2;
  (*(v12 + 32))(&v24[v20], v29, v28);
  v24[v21] = v35;
  *&v24[(v21 & 0xFFFFFFFFFFFFFFF8) + 8] = v36;
  *&v24[v22] = v18;
  outlined init with take of URL?(v30, &v24[v23]);

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v31, &closure #1 in ExtensionViewController.loadPaper(_:paperURL:coherenceContextURL:encrypted:userInterfaceState:)partial apply, v24);

  return result;
}

uint64_t closure #1 in ExtensionViewController.loadPaper(_:paperURL:coherenceContextURL:encrypted:userInterfaceState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 128) = v14;
  *(v8 + 136) = v15;
  *(v8 + 176) = a7;
  *(v8 + 112) = a6;
  *(v8 + 120) = a8;
  *(v8 + 96) = a4;
  *(v8 + 104) = a5;
  v9 = type metadata accessor for URL();
  *(v8 + 144) = v9;
  *(v8 + 152) = *(v9 - 8);
  *(v8 + 160) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v8 + 168) = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in ExtensionViewController.loadPaper(_:paperURL:coherenceContextURL:encrypted:userInterfaceState:), v11, v10);
}

uint64_t closure #1 in ExtensionViewController.loadPaper(_:paperURL:coherenceContextURL:encrypted:userInterfaceState:)()
{
  v36 = v0;
  if (one-time initialization token for extensionLogger != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 152);
  v1 = *(v0 + 160);
  v3 = *(v0 + 144);
  v4 = *(v0 + 112);
  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, extensionLogger);
  (*(v2 + 16))(v1, v4, v3);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  v8 = os_log_type_enabled(v6, v7);
  v10 = *(v0 + 152);
  v9 = *(v0 + 160);
  v11 = *(v0 + 144);
  if (v8)
  {
    v32 = *(v0 + 120);
    v31 = *(v0 + 176);
    v13 = *(v0 + 96);
    v12 = *(v0 + 104);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v35 = v15;
    *v14 = 136315907;
    *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v12, &v35);
    *(v14 + 12) = 2081;
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type URL and conformance URL, 255, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    (*(v10 + 8))(v9, v11);
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, &v35);

    *(v14 + 14) = v19;
    *(v14 + 22) = 1024;
    *(v14 + 24) = v31;
    *(v14 + 28) = 2048;
    *(v14 + 30) = v32;
    _os_log_impl(&dword_1D38C4000, v6, v7, "loadPaper id:%s, url:%{private}s, encrypted:%{BOOL}d state:%ld", v14, 0x26u);
    swift_arrayDestroy();
    MEMORY[0x1DA6D0660](v15, -1, -1);
    MEMORY[0x1DA6D0660](v14, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v20 = *(v0 + 120);
  switch(v20)
  {
    case 2:

      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
        goto LABEL_17;
      }

      v22 = Strong;
      v24 = *(v0 + 136);
      v25 = *(v0 + 176);
      v26 = *(v0 + 112);
      v33 = 1;
      v27 = &v33;
      goto LABEL_15;
    case 1:

      swift_beginAccess();
      v23 = swift_unknownObjectWeakLoadStrong();
      if (!v23)
      {
        goto LABEL_17;
      }

      v22 = v23;
      v24 = *(v0 + 136);
      v25 = *(v0 + 176);
      v26 = *(v0 + 112);
      v34 = 0;
      v27 = &v34;
LABEL_15:
      ExtensionViewController.loadPaperDocument(from:coherenceContextURL:encrypted:layout:)(v26, v24, v25, v27);
      goto LABEL_16;
    case 0:

      swift_beginAccess();
      v21 = swift_unknownObjectWeakLoadStrong();
      if (v21)
      {
        v22 = v21;
        ExtensionViewController.loadPaperDrawing(_:paperURL:coherenceContextURL:encrypted:)(*(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 136), *(v0 + 176));
LABEL_16:
      }

LABEL_17:

      v29 = *(v0 + 8);

      return v29();
  }

  *(v0 + 88) = v20;

  return _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
}

double ExtensionViewController.loadPaper(_:paperBookmark:coherenceContextBookmark:encrypted:userInterfaceState:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, unint64_t a6, int a7, uint64_t a8)
{
  v62 = a8;
  v61 = a7;
  v64 = a6;
  v57 = a5;
  v66 = a4;
  v59 = a2;
  v60 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v65 = &v52 - v9;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x1EEE9AC00](v58);
  v56 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v52 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v52 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v52 - v18;
  v20 = type metadata accessor for URL();
  v21 = *(v20 - 8);
  v22 = v21[8];
  MEMORY[0x1EEE9AC00](v20);
  v63 = &v52 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v52 - v25;
  v67 = 0;
  v27 = v21[7];
  v27(v16, 1, 1, v20, v24);
  URL.init(resolvingBookmarkData:options:relativeTo:bookmarkDataIsStale:)();
  v55 = v13;
  outlined destroy of StocksKitCurrencyCache.Provider?(v16, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (v27)(v19, 0, 1, v20);
  v28 = v21[4];
  v66 = v26;
  v53 = v28;
  v54 = v21 + 4;
  v28(v26, v19, v20);
  v58 = swift_allocBox();
  v30 = v29;
  (v27)(v29, 1, 1, v20);
  v31 = v65;
  v32 = v21;
  v33 = v63;
  if (v64 >> 60 != 15)
  {
    v34 = v56;
    v52 = v27;
    (v27)(v56, 1, 1, v20);
    v35 = v57;
    outlined copy of Data._Representation(v57, v64);
    URL.init(resolvingBookmarkData:options:relativeTo:bookmarkDataIsStale:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v34, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    outlined consume of Data?(v35, v64);
    v36 = v55;
    (v52)(v55, 0, 1, v20);
    outlined assign with take of URL?(v36, v30);
    v31 = v65;
  }

  v37 = type metadata accessor for TaskPriority();
  (*(*(v37 - 8) + 56))(v31, 1, 1, v37);
  v38 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (v32[2])(v33, v66, v20);
  type metadata accessor for MainActor();

  v39 = v59;

  v40 = v58;

  v41 = static MainActor.shared.getter();
  v42 = v32;
  v43 = (*(v32 + 80) + 56) & ~*(v32 + 80);
  v44 = (v43 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = (v43 + v22 + 23) & 0xFFFFFFFFFFFFFFF8;
  v46 = v20;
  v47 = swift_allocObject();
  v48 = MEMORY[0x1E69E85E0];
  *(v47 + 2) = v41;
  *(v47 + 3) = v48;
  v49 = v60;
  *(v47 + 4) = v38;
  *(v47 + 5) = v49;
  *(v47 + 6) = v39;
  v53(&v47[v43], v63, v46);
  v50 = &v47[v44];
  *v50 = v40;
  v50[8] = v61 & 1;
  *&v47[v45] = v62;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v65, &async function pointer to partial apply for closure #1 in ExtensionViewController.loadPaper(_:paperBookmark:coherenceContextBookmark:encrypted:userInterfaceState:), v47);

  (v42[1])(v66, v46);

  return result;
}

uint64_t closure #1 in ExtensionViewController.loadPaper(_:paperBookmark:coherenceContextBookmark:encrypted:userInterfaceState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 88) = a7;
  *(v8 + 96) = v17;
  *(v8 + 200) = v16;
  *(v8 + 72) = a5;
  *(v8 + 80) = a6;
  *(v8 + 64) = a4;
  v9 = type metadata accessor for URL();
  *(v8 + 104) = v9;
  v10 = *(v9 - 8);
  *(v8 + 112) = v10;
  *(v8 + 120) = *(v10 + 64);
  *(v8 + 128) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  *(v8 + 136) = swift_task_alloc();
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR) - 8);
  *(v8 + 144) = v11;
  *(v8 + 152) = *(v11 + 64);
  *(v8 + 160) = swift_task_alloc();
  *(v8 + 168) = swift_task_alloc();
  *(v8 + 176) = swift_projectBox();
  *(v8 + 184) = type metadata accessor for MainActor();
  *(v8 + 192) = static MainActor.shared.getter();
  v13 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in ExtensionViewController.loadPaper(_:paperBookmark:coherenceContextBookmark:encrypted:userInterfaceState:), v13, v12);
}

uint64_t closure #1 in ExtensionViewController.loadPaper(_:paperBookmark:coherenceContextBookmark:encrypted:userInterfaceState:)()
{

  if (one-time initialization token for extensionLogger != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, extensionLogger);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D38C4000, v2, v3, "loadPaper bookmark", v4, 2u);
    MEMORY[0x1DA6D0660](v4, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = *(v0 + 176);
    v9 = *(v0 + 160);
    v8 = *(v0 + 168);
    v29 = v9;
    v32 = *(v0 + 144);
    v10 = *(v0 + 128);
    v11 = *(v0 + 136);
    v34 = v11;
    v12 = *(v0 + 112);
    v31 = *(v0 + 120);
    v13 = *(v0 + 104);
    v27 = v10;
    v36 = *(v0 + 200);
    v37 = *(v0 + 96);
    v28 = *(v0 + 88);
    v26 = *(v0 + 80);
    v35 = *(v0 + 72);
    swift_beginAccess();
    v30 = v8;
    outlined init with copy of Date?(v7, v8, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v14 = type metadata accessor for TaskPriority();
    (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
    v15 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (*(v12 + 16))(v10, v28, v13);
    outlined init with copy of Date?(v8, v9, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);

    v16 = static MainActor.shared.getter();
    v17 = (*(v12 + 80) + 48) & ~*(v12 + 80);
    v18 = (v17 + v31) & 0xFFFFFFFFFFFFFFF8;
    v19 = (v18 + 23) & 0xFFFFFFFFFFFFFFF8;
    v20 = *(v32 + 80);
    v33 = v6;
    v21 = (v20 + v19 + 8) & ~v20;
    v22 = swift_allocObject();
    v23 = MEMORY[0x1E69E85E0];
    *(v22 + 2) = v16;
    *(v22 + 3) = v23;
    *(v22 + 4) = v35;
    *(v22 + 5) = v26;
    (*(v12 + 32))(&v22[v17], v27, v13);
    v22[v17 + v31] = v36;
    *&v22[v18 + 8] = v37;
    *&v22[v19] = v15;
    outlined init with take of URL?(v29, &v22[v21]);

    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v34, &async function pointer to partial apply for closure #1 in ExtensionViewController.loadPaper(_:paperURL:coherenceContextURL:encrypted:userInterfaceState:), v22);

    outlined destroy of StocksKitCurrencyCache.Provider?(v30, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t ExtensionViewController.loadBookmark(_:readOnly:)(uint64_t a1, uint64_t a2, int a3)
{
  v30 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v31 = &v27 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v27 - v9;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v29 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v27 - v16;
  v32 = 0;
  v18 = *(v12 + 56);
  v18(v7, 1, 1, v11, v15);
  URL.init(resolvingBookmarkData:options:relativeTo:bookmarkDataIsStale:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v7, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (v18)(v10, 0, 1, v11);
  v28 = *(v12 + 32);
  v28(v17, v10, v11);
  v19 = type metadata accessor for TaskPriority();
  (*(*(v19 - 8) + 56))(v31, 1, 1, v19);
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = v29;
  (*(v12 + 16))(v29, v17, v11);
  type metadata accessor for MainActor();

  v22 = static MainActor.shared.getter();
  v23 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v24 = swift_allocObject();
  v25 = MEMORY[0x1E69E85E0];
  *(v24 + 2) = v22;
  *(v24 + 3) = v25;
  *(v24 + 4) = v20;
  v28(&v24[v23], v21, v11);
  v24[v23 + v13] = v30 & 1;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v31, &async function pointer to partial apply for closure #1 in ExtensionViewController.loadBookmark(_:readOnly:), v24);

  return (*(v12 + 8))(v17, v11);
}

uint64_t closure #1 in ExtensionViewController.loadBookmark(_:readOnly:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 64) = a6;
  *(v6 + 40) = a4;
  *(v6 + 48) = a5;
  type metadata accessor for MainActor();
  *(v6 + 56) = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in ExtensionViewController.loadBookmark(_:readOnly:), v8, v7);
}

UIView *closure #1 in ExtensionViewController.loadBookmark(_:readOnly:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    type metadata accessor for PaperViewController();
    v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    result = [v3 view];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v5 = result;
    v6 = *(v0 + 64);
    v7 = *(v0 + 48);

    ExtensionViewController.addCanvasView(_:)(v5);

    v8 = *&v2[OBJC_IVAR____TtC8PaperKit23ExtensionViewController_paperViewController];
    *&v2[OBJC_IVAR____TtC8PaperKit23ExtensionViewController_paperViewController] = v3;
    v9 = v3;

    PaperViewController.display(_:readOnly:)(v7, v6);
  }

  else
  {
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t closure #1 in ExtensionViewController.receiveMulticastData(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  type metadata accessor for MainActor();
  v6[5] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in ExtensionViewController.receiveMulticastData(_:), v8, v7);
}

uint64_t closure #1 in ExtensionViewController.receiveMulticastData(_:)()
{

  if (one-time initialization token for extensionLogger != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, extensionLogger);
  outlined copy of Data._Representation(v1, v2);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 24);
  if (v6)
  {
    result = swift_slowAlloc();
    *result = 134217984;
    v9 = v7 >> 62;
    if ((v7 >> 62) > 1)
    {
      if (v9 != 2)
      {
        v10 = 0;
        goto LABEL_15;
      }

      v11 = *(*(v0 + 16) + 16);
      v12 = *(*(v0 + 16) + 24);
      v13 = __OFSUB__(v12, v11);
      v10 = v12 - v11;
      if (!v13)
      {
        goto LABEL_15;
      }

      __break(1u);
    }

    else if (!v9)
    {
      v10 = *(v0 + 30);
LABEL_15:
      v18 = *(v0 + 16);
      v17 = *(v0 + 24);
      *(result + 4) = v10;
      v19 = result;
      outlined consume of Data._Representation(v18, v17);
      _os_log_impl(&dword_1D38C4000, v4, v5, "receiveMulticastData %ld", v19, 0xCu);
      MEMORY[0x1DA6D0660](v19, -1, -1);
      goto LABEL_16;
    }

    v14 = *(v0 + 16);
    v15 = *(v0 + 20);
    v13 = __OFSUB__(v15, v14);
    v16 = v15 - v14;
    if (v13)
    {
      __break(1u);
      return result;
    }

    v10 = v16;
    goto LABEL_15;
  }

  outlined consume of Data._Representation(*(v0 + 16), *(v0 + 24));
LABEL_16:

  ExtensionViewController.multipeerConnection.getter();
  CRMulticastSyncManager.receive(_:)();

  v20 = *(v0 + 8);

  return v20();
}

uint64_t closure #1 in ExtensionViewController.receiveLiveStreamData(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[4] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV11YieldResultOy10Foundation4DataV__GMd, &_sScS12ContinuationV11YieldResultOy10Foundation4DataV__GMR);
  v6[7] = v7;
  v6[8] = *(v7 - 8);
  v6[9] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy10Foundation4DataV_GMd, &_sScS12ContinuationVy10Foundation4DataV_GMR);
  v6[10] = v8;
  v6[11] = *(v8 - 8);
  v6[12] = swift_task_alloc();
  type metadata accessor for MainActor();
  v6[13] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in ExtensionViewController.receiveLiveStreamData(_:), v10, v9);
}

uint64_t closure #1 in ExtensionViewController.receiveLiveStreamData(_:)()
{

  if (one-time initialization token for extensionLogger != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, extensionLogger);
  outlined copy of Data._Representation(v1, v2);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 40);
  if (!v6)
  {
    outlined consume of Data._Representation(*(v0 + 32), *(v0 + 40));
    goto LABEL_16;
  }

  result = swift_slowAlloc();
  *result = 134217984;
  v9 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    if (v9 != 2)
    {
      v10 = 0;
      goto LABEL_15;
    }

    v11 = *(*(v0 + 32) + 16);
    v12 = *(*(v0 + 32) + 24);
    v13 = __OFSUB__(v12, v11);
    v10 = v12 - v11;
    if (!v13)
    {
      goto LABEL_15;
    }

    __break(1u);
LABEL_12:
    v14 = *(v0 + 32);
    v15 = *(v0 + 36);
    v13 = __OFSUB__(v15, v14);
    v16 = v15 - v14;
    if (v13)
    {
      __break(1u);
      return result;
    }

    v10 = v16;
    goto LABEL_15;
  }

  if (v9)
  {
    goto LABEL_12;
  }

  v10 = *(v0 + 46);
LABEL_15:
  v18 = *(v0 + 32);
  v17 = *(v0 + 40);
  *(result + 4) = v10;
  v19 = result;
  outlined consume of Data._Representation(v18, v17);
  _os_log_impl(&dword_1D38C4000, v4, v5, "receiveLiveStreamData %ld", v19, 0xCu);
  MEMORY[0x1DA6D0660](v19, -1, -1);
LABEL_16:
  v20 = *(v0 + 48);

  v21 = *(v20 + OBJC_IVAR____TtC8PaperKit23ExtensionViewController_liveStreamMessenger);
  if (v21)
  {
    v22 = *(v21 + 24);
    v23 = *(v22 + 16);
    if (v23)
    {
      v24 = *(v0 + 88);
      v36 = *(v24 + 16);
      v25 = v22 + ((*(v24 + 80) + 32) & ~*(v24 + 80));
      v34 = (*(v0 + 64) + 8);
      v35 = *(v24 + 72);
      v26 = (v24 + 8);

      do
      {
        v27 = *(v0 + 96);
        v29 = *(v0 + 72);
        v28 = *(v0 + 80);
        v30 = *(v0 + 56);
        v32 = *(v0 + 32);
        v31 = *(v0 + 40);
        v36(v27, v25, v28);
        *(v0 + 16) = v32;
        *(v0 + 24) = v31;
        outlined copy of Data._Representation(v32, v31);
        AsyncStream.Continuation.yield(_:)();
        (*v34)(v29, v30);
        (*v26)(v27, v28);
        v25 += v35;
        --v23;
      }

      while (v23);
    }
  }

  v33 = *(v0 + 8);

  return v33();
}

double @objc ExtensionViewController.receiveMulticastData(_:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v22 - v9;
  v11 = a3;
  v12 = a1;
  v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v10, 1, 1, v16);
  type metadata accessor for MainActor();
  v17 = v12;
  outlined copy of Data._Representation(v13, v15);
  v18 = static MainActor.shared.getter();
  v19 = swift_allocObject();
  v20 = MEMORY[0x1E69E85E0];
  v19[2] = v18;
  v19[3] = v20;
  v19[4] = v13;
  v19[5] = v15;
  v19[6] = v17;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v10, a5, v19);

  outlined consume of Data._Representation(v13, v15);

  return result;
}

uint64_t closure #1 in ExtensionViewController.setupWithData(_:transparentBackground:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 24) = a6;
  *(v7 + 32) = a7;
  *(v7 + 80) = a5;
  *(v7 + 16) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGSgMd, &_s9Coherence7CapsuleVy8PaperKit0C0VGSgMR);
  *(v7 + 40) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd, &_s9Coherence7CapsuleVy8PaperKit0C0VGMR);
  *(v7 + 48) = v8;
  *(v7 + 56) = *(v8 - 8);
  *(v7 + 64) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v7 + 72) = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in ExtensionViewController.setupWithData(_:transparentBackground:), v10, v9);
}

id closure #1 in ExtensionViewController.setupWithData(_:transparentBackground:)()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  *(*(v0 + 16) + OBJC_IVAR____TtC8PaperKit23ExtensionViewController_transparentBackground) = *(v0 + 80);
  outlined copy of Data._Representation(v2, v1);
  type metadata accessor for Paper(0);
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type Paper and conformance Paper, 255, type metadata accessor for Paper, &protocol conformance descriptor for Paper);
  Capsule.init(serializedData:allowedAppFormats:fileSignature:)();
  v4 = *(v0 + 56);
  v3 = *(v0 + 64);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + 16);
  (*(v4 + 16))(v5, v3, v6);
  (*(v4 + 56))(v5, 0, 1, v6);
  v8 = ExtensionViewController.newMultipeerConnection(model:)(v5);
  outlined destroy of StocksKitCurrencyCache.Provider?(v5, &_s9Coherence7CapsuleVy8PaperKit0C0VGSgMd, &_s9Coherence7CapsuleVy8PaperKit0C0VGSgMR);
  *&v7[OBJC_IVAR____TtC8PaperKit23ExtensionViewController____lazy_storage___multipeerConnection] = v8;

  ExtensionViewController.updateCanvasView(paper:)(v3);
  result = [v7 view];
  if (result)
  {
    v10 = result;
    v11 = *(v0 + 80);

    if (v11)
    {
      v12 = 0;
    }

    else
    {
      v12 = [objc_opt_self() whiteColor];
    }

    v14 = *(v0 + 56);
    v13 = *(v0 + 64);
    v15 = *(v0 + 48);
    [v10 setBackgroundColor_];

    (*(v14 + 8))(v13, v15);

    v16 = *(v0 + 8);

    return v16();
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall ExtensionViewController.setTool(_:)(NSDictionary a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v16 - v3;
  *&v19[0] = 0x696669746E656469;
  *(&v19[0] + 1) = 0xEA00000000007265;
  v5 = [(objc_class *)a1.super.isa __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v5)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined init with take of Any(&v17, v19);
    swift_dynamicCast();
    v6 = MEMORY[0x1DA6CCED0](v16[0], v16[1]);

    *&v17 = 0x69747265706F7270;
    *(&v17 + 1) = 0xEA00000000007365;
    v7 = [(objc_class *)a1.super.isa __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
    swift_unknownObjectRelease();
    if (v7)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v17 = 0u;
      v18 = 0u;
    }

    v19[0] = v17;
    v19[1] = v18;
    if (*(&v18 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVypGMd, &_sSDys11AnyHashableVypGMR);
      if (swift_dynamicCast())
      {
        v8.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

LABEL_10:
        v9 = [objc_opt_self() inkWithIdentifier:v6 properties:v8.super.isa];

        v10 = type metadata accessor for TaskPriority();
        (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
        v11 = swift_allocObject();
        swift_unknownObjectWeakInit();
        type metadata accessor for MainActor();
        v12 = v9;

        v13 = static MainActor.shared.getter();
        v14 = swift_allocObject();
        v15 = MEMORY[0x1E69E85E0];
        v14[2] = v13;
        v14[3] = v15;
        v14[4] = v12;
        v14[5] = v11;

        _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v4, &async function pointer to partial apply for closure #1 in ExtensionViewController.setTool(_:), v14);

        return;
      }
    }

    else
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v19, &_sypSgMd, &_sypSgMR);
    }

    v8.super.isa = 0;
    goto LABEL_10;
  }

  __break(1u);
}

uint64_t closure #1 in ExtensionViewController.setTool(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[26] = a4;
  v5[27] = a5;
  v6 = type metadata accessor for PKInk();
  v5[28] = v6;
  v5[29] = *(v6 - 8);
  v5[30] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[31] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in ExtensionViewController.setTool(_:), v8, v7);
}

uint64_t closure #1 in ExtensionViewController.setTool(_:)()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 224);
  v3 = *(v0 + 232);

  static PKInk._unconditionallyBridgeFromObjectiveC(_:)();
  PKInk.tool.getter((v0 + 16));
  (*(v3 + 8))(v1, v2);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    outlined init with copy of FindResult(v0 + 16, v0 + 56);
    v6 = OBJC_IVAR____TtC8PaperKit23ExtensionViewController_tool;
    swift_beginAccess();
    __swift_destroy_boxed_opaque_existential_0(&v5[v6]);
    outlined init with take of PaperKitHashable((v0 + 56), &v5[v6]);
    swift_endAccess();
  }

  swift_beginAccess();
  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {
    v8 = *(v7 + OBJC_IVAR____TtC8PaperKit23ExtensionViewController_paperCanvasView);
    v9 = v7;
    v10 = v8;

    if (v8)
    {
      outlined init with copy of FindResult(v0 + 16, v0 + 96);
      specialized Canvas.tool.setter((v0 + 96));
    }
  }

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v11 = *(v0 + 8);

  return v11();
}

uint64_t closure #1 in ExtensionViewController.setLinedPaper(horizontalLineSpacing:verticalLineSpacing:horizontalInset:)(double a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 56) = a2;
  *(v7 + 64) = a3;
  *(v7 + 48) = a1;
  *(v7 + 40) = a7;
  type metadata accessor for MainActor();
  *(v7 + 72) = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in ExtensionViewController.setLinedPaper(horizontalLineSpacing:verticalLineSpacing:horizontalInset:), v9, v8);
}

uint64_t closure #1 in ExtensionViewController.setLinedPaper(horizontalLineSpacing:verticalLineSpacing:horizontalInset:)()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v4 = *(v0 + 7);
    v3 = *(v0 + 8);
    *(Strong + OBJC_IVAR____TtC8PaperKit23ExtensionViewController_linedPaperHorizontalSpacing) = v0[6];
    *(Strong + OBJC_IVAR____TtC8PaperKit23ExtensionViewController_linedPaperVerticalSpacing) = v4;
    *(Strong + OBJC_IVAR____TtC8PaperKit23ExtensionViewController_linedPaperHorizontalInset) = v3;
    v5 = *(Strong + OBJC_IVAR____TtC8PaperKit23ExtensionViewController_paperTextCanvasView);
    if (v5)
    {
      v7 = v0[7];
      v6 = v0[8];
      v8 = v0[6];
      v9 = v5;
      PaperTextAttachmentCanvasView.setLinedPaper(horizontalLineSpacing:verticalLineSpacing:horizontalInset:)(v8, v7, v6);
    }
  }

  v10 = *(v0 + 1);

  return v10();
}

uint64_t closure #1 in ExtensionViewController.setHasLiveStreamMessenger(_:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 64) = a5;
  *(v5 + 80) = a4;
  type metadata accessor for MainActor();
  *(v5 + 72) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in ExtensionViewController.setHasLiveStreamMessenger(_:), v7, v6);
}

void closure #1 in ExtensionViewController.setHasLiveStreamMessenger(_:)()
{

  if (one-time initialization token for extensionLogger != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, extensionLogger);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 80);
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_1D38C4000, v2, v3, "setHasLiveStreamMessenger %{BOOL}d", v5, 8u);
    MEMORY[0x1DA6D0660](v5, -1, -1);
  }

  v6 = *(v0 + 80);

  if (v6 == 1)
  {
    type metadata accessor for ExtensionViewController.LiveStreamMessenger();
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    *(v7 + 24) = MEMORY[0x1E69E7CC0];
    swift_unknownObjectWeakAssign();
  }

  else
  {
    v7 = 0;
  }

  v8 = *(v0 + 64);
  *(v8 + OBJC_IVAR____TtC8PaperKit23ExtensionViewController_liveStreamMessenger) = v7;

  v10 = *(v8 + OBJC_IVAR____TtC8PaperKit23ExtensionViewController_paperCanvasView);
  if (v10)
  {
    v11 = *(*(v0 + 64) + OBJC_IVAR____TtC8PaperKit23ExtensionViewController_liveStreamMessenger);
    if (v11)
    {
      v12 = lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type ExtensionViewController.LiveStreamMessenger and conformance ExtensionViewController.LiveStreamMessenger, v9, type metadata accessor for ExtensionViewController.LiveStreamMessenger, &protocol conformance descriptor for ExtensionViewController.LiveStreamMessenger);
    }

    else
    {
      v12 = 0;
    }

    v13 = &v10[direct field offset for Canvas.liveStreamMessenger];
    swift_beginAccess();
    *v13 = v11;
    *(v13 + 1) = v12;
    swift_retain_n();
    v14 = v10;
    swift_unknownObjectRelease();
    specialized Canvas.liveStreamMessenger.didset(v15);
  }

  v16 = *(v0 + 64);
  v17 = *(v16 + OBJC_IVAR____TtC8PaperKit23ExtensionViewController_paperTextCanvasView);
  if (v17)
  {
    v18 = *(v16 + OBJC_IVAR____TtC8PaperKit23ExtensionViewController_liveStreamMessenger);
    if (v18)
    {
      v19 = lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type ExtensionViewController.LiveStreamMessenger and conformance ExtensionViewController.LiveStreamMessenger, v9, type metadata accessor for ExtensionViewController.LiveStreamMessenger, &protocol conformance descriptor for ExtensionViewController.LiveStreamMessenger);
    }

    else
    {
      v19 = 0;
    }

    v20 = *&v17[OBJC_IVAR____TtC8PaperKit29PaperTextAttachmentCanvasView_attachmentView];
    if (!v20)
    {
      __break(1u);
      return;
    }

    v21 = &v20[direct field offset for Canvas.liveStreamMessenger];
    swift_beginAccess();
    *v21 = v18;
    *(v21 + 1) = v19;
    swift_retain_n();
    v22 = v17;
    v23 = v20;
    swift_unknownObjectRelease();
    specialized Canvas.liveStreamMessenger.didset(v24);

    v16 = *(v0 + 64);
  }

  v25 = *(v16 + OBJC_IVAR____TtC8PaperKit23ExtensionViewController_paperDocumentViewController);
  if (v25)
  {
    v26 = *(v16 + OBJC_IVAR____TtC8PaperKit23ExtensionViewController_liveStreamMessenger);
    if (v26)
    {
      v27 = lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type ExtensionViewController.LiveStreamMessenger and conformance ExtensionViewController.LiveStreamMessenger, v9, type metadata accessor for ExtensionViewController.LiveStreamMessenger, &protocol conformance descriptor for ExtensionViewController.LiveStreamMessenger);
    }

    else
    {
      v27 = 0;
    }

    v28 = v25;
    PaperKitExtensionDocumentViewController.liveStreamMessenger.setter(v26, v27);
  }

  v29 = *(v0 + 8);

  v29();
}

uint64_t closure #1 in ExtensionViewController.setCanvasContentMode(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  type metadata accessor for MainActor();
  v5[10] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in ExtensionViewController.setCanvasContentMode(_:), v7, v6);
}

uint64_t closure #1 in ExtensionViewController.setCanvasContentMode(_:)()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = *(v0 + 72);
    if (v2)
    {
      if (v2 != 1)
      {
LABEL_8:

        goto LABEL_9;
      }

      v3 = 1;
    }

    else
    {
      v3 = 0;
    }

    Strong[OBJC_IVAR____TtC8PaperKit23ExtensionViewController_canvasContentMode] = v3;
    v4 = *&Strong[OBJC_IVAR____TtC8PaperKit23ExtensionViewController_paperCanvasView];
    if (v4)
    {
      v5 = direct field offset for CanvasView.canvasContentMode;
      v6 = Strong;
      swift_beginAccess();
      v4[v5] = v3;
      [v4 setNeedsLayout];
      Strong = v6;
    }

    goto LABEL_8;
  }

LABEL_9:
  v7 = *(v0 + 8);

  return v7();
}

uint64_t closure #1 in ExtensionViewController.setUserInterfaceStyle(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  type metadata accessor for MainActor();
  v5[8] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in ExtensionViewController.setUserInterfaceStyle(_:), v7, v6);
}

uint64_t closure #1 in ExtensionViewController.setUserInterfaceStyle(_:)()
{
  if (one-time initialization token for extensionLogger != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, extensionLogger);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[6];
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_1D38C4000, v2, v3, "setUserInterfaceStyle %ld", v5, 0xCu);
    MEMORY[0x1DA6D0660](v5, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {

LABEL_14:
    v9 = v0[1];

    return v9();
  }

  v7 = Strong;
  v8 = v0[6];
  switch(v8)
  {
    case -1:

      [v7 setOverrideUserInterfaceStyle_];
      goto LABEL_13;
    case 0:

      [v7 setOverrideUserInterfaceStyle_];
      goto LABEL_13;
    case 1:

      [v7 setOverrideUserInterfaceStyle_];
LABEL_13:

      goto LABEL_14;
  }

  v0[5] = v8;

  return _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
}

uint64_t closure #1 in ExtensionViewController.setScreenPotentialHeadroom(_:)(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 104) = a5;
  *(v5 + 96) = a1;
  type metadata accessor for MainActor();
  *(v5 + 112) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in ExtensionViewController.setScreenPotentialHeadroom(_:), v7, v6);
}

void closure #1 in ExtensionViewController.setScreenPotentialHeadroom(_:)()
{
  if (one-time initialization token for extensionLogger != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, extensionLogger);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 12);
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_1D38C4000, v2, v3, "setScreenPotentialHeadroom %f", v5, 0xCu);
    MEMORY[0x1DA6D0660](v5, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = &Strong[OBJC_IVAR____TtC8PaperKit23ExtensionViewController_screenPotentialHeadroom];
    *v7 = v0[12];
    *(v7 + 8) = 0;
  }

  swift_beginAccess();
  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8 && (v9 = *(v8 + OBJC_IVAR____TtC8PaperKit23ExtensionViewController_paperTextCanvasView), v10 = v8, v11 = v9, v10, v9))
  {
    v12 = *&v11[OBJC_IVAR____TtC8PaperKit29PaperTextAttachmentCanvasView_attachmentView];
    v13 = v12;

    if (!v12)
    {
      __break(1u);
      return;
    }

    v14 = v0[12];

    v15 = *&v13[OBJC_IVAR____TtC8PaperKit9AnyCanvas__potentialHeadroomOverride];
    v16 = *(v0 + 12);
    if (v15 == v14)
    {
      *&v13[OBJC_IVAR____TtC8PaperKit9AnyCanvas__potentialHeadroomOverride] = v16;
      AnyCanvas._potentialHeadroomOverride.didset(v15);
    }

    else
    {
      swift_getKeyPath();
      v25 = swift_task_alloc();
      *(v25 + 16) = v13;
      *(v25 + 24) = v16;
      *(v0 + 8) = v13;
      lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, 255, type metadata accessor for AnyCanvas, &protocol conformance descriptor for AnyCanvas);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  else
  {
  }

  swift_beginAccess();
  v17 = swift_unknownObjectWeakLoadStrong();
  if (v17)
  {
    v18 = *(v17 + OBJC_IVAR____TtC8PaperKit23ExtensionViewController_paperCanvasView);
    v19 = v17;
    v20 = v18;

    if (v18)
    {
      v21 = v0[12];
      v22 = *&v20[OBJC_IVAR____TtC8PaperKit9AnyCanvas__potentialHeadroomOverride];
      if (v22 == v21)
      {
        *&v20[OBJC_IVAR____TtC8PaperKit9AnyCanvas__potentialHeadroomOverride] = v21;
        AnyCanvas._potentialHeadroomOverride.didset(v22);
      }

      else
      {
        swift_getKeyPath();
        v23 = swift_task_alloc();
        *(v23 + 16) = v20;
        *(v23 + 24) = v21;
        *(v0 + 11) = v20;
        lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type AnyCanvas and conformance AnyCanvas, 255, type metadata accessor for AnyCanvas, &protocol conformance descriptor for AnyCanvas);
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      }
    }
  }

  v24 = *(v0 + 1);

  v24();
}

uint64_t closure #1 in ExtensionViewController.setPaperDocumentInlineThumbnailsVisible(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 64) = a5;
  *(v5 + 40) = a1;
  *(v5 + 48) = a4;
  type metadata accessor for MainActor();
  *(v5 + 56) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in ExtensionViewController.setPaperDocumentInlineThumbnailsVisible(_:), v7, v6);
}

uint64_t closure #1 in ExtensionViewController.setPaperDocumentInlineThumbnailsVisible(_:)()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v2 = *(Strong + OBJC_IVAR____TtC8PaperKit23ExtensionViewController_paperDocumentViewController), v3 = Strong, v4 = v2, v3, v2))
  {
    PaperKitExtensionDocumentViewController.thumbnailsVisible.setter(*(v0 + 64));

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  **(v0 + 40) = v5;
  v6 = *(v0 + 8);

  return v6();
}

uint64_t closure #1 in ExtensionViewController.reportSafeAreaInsets(top:left:bottom:right:)(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 120) = a8;
  *(v8 + 104) = a3;
  *(v8 + 112) = a4;
  *(v8 + 88) = a1;
  *(v8 + 96) = a2;
  type metadata accessor for MainActor();
  *(v8 + 128) = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in ExtensionViewController.reportSafeAreaInsets(top:left:bottom:right:), v10, v9);
}

id closure #1 in ExtensionViewController.reportSafeAreaInsets(top:left:bottom:right:)()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = &Strong[OBJC_IVAR____TtC8PaperKit23ExtensionViewController_extensionHostSafeAreaInsets];
    v3 = *(v0 + 104);
    *v2 = *(v0 + 88);
    *(v2 + 1) = v3;
  }

  swift_beginAccess();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = *(v4 + OBJC_IVAR____TtC8PaperKit23ExtensionViewController_paperDocumentViewController);
    v6 = v4;
    v7 = v5;

    if (v5)
    {
      v8 = &v7[OBJC_IVAR____TtC8PaperKit39PaperKitExtensionDocumentViewController_extensionHostSafeAreaInsets];
      v12 = *(v0 + 104);
      v13 = *(v0 + 88);
      swift_beginAccess();
      *v8 = v13;
      *(v8 + 1) = v12;
      result = [v7 view];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v10 = result;
      [result setNeedsLayout];
    }
  }

  v11 = *(v0 + 8);

  return v11();
}

Swift::Void __swiftcall ExtensionViewController.revertAllChanges()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v8 - v1;
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();

  v5 = static MainActor.shared.getter();
  v6 = swift_allocObject();
  v7 = MEMORY[0x1E69E85E0];
  v6[2] = v5;
  v6[3] = v7;
  v6[4] = v4;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v2, &async function pointer to partial apply for closure #1 in ExtensionViewController.revertAllChanges(), v6);
}

uint64_t closure #1 in ExtensionViewController.revertAllChanges()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 112) = a4;
  type metadata accessor for MainActor();
  *(v4 + 120) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in ExtensionViewController.revertAllChanges(), v6, v5);
}

uint64_t closure #1 in ExtensionViewController.revertAllChanges()()
{

  if (one-time initialization token for extensionLogger != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, extensionLogger);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D38C4000, v2, v3, "extensionRevertAllChanges", v4, 2u);
    MEMORY[0x1DA6D0660](v4, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = *(Strong + OBJC_IVAR____TtC8PaperKit23ExtensionViewController_paperViewController);
    v7 = Strong;
    v8 = v6;

    if (v6)
    {
      v9 = OBJC_IVAR____TtC8PaperKit19PaperViewController_pdfViewController;
      swift_beginAccess();
      v10 = *&v8[v9];
      if (v10)
      {
        v11 = OBJC_IVAR____TtC8PaperKit27PaperDocumentViewController_paperDocumentView;
        swift_beginAccess();
        v12 = *&v10[v11];
        if (v12)
        {
          v13 = v10;
          v14 = v12;
          PaperDocumentView.revertAllChanges()();
        }
      }
    }
  }

  swift_beginAccess();
  v15 = swift_unknownObjectWeakLoadStrong();
  if (v15)
  {
    v16 = *(v15 + OBJC_IVAR____TtC8PaperKit23ExtensionViewController_paperDocumentViewController);
    v17 = v15;
    v18 = v16;

    if (v16)
    {
      PaperKitExtensionDocumentViewController.revertAllChanges()();
    }
  }

  v19 = *(v0 + 8);

  return v19();
}

uint64_t closure #1 in ExtensionViewController.addNewCanvasElement(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  type metadata accessor for MainActor();
  v5[7] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in ExtensionViewController.addNewCanvasElement(_:), v7, v6);
}

void closure #1 in ExtensionViewController.addNewCanvasElement(_:)()
{
  v18 = v0;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if (one-time initialization token for extensionLogger != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, extensionLogger);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1D38C4000, v4, v5, "addNewCanvasElement", v6, 2u);
      MEMORY[0x1DA6D0660](v6, -1, -1);
    }

    v7 = *(v0 + 48);

    PaperNewShapeType_Internal.init(rawValue:)(v7);
    if (v16 == 11)
    {
      __break(1u);
    }

    else
    {
      v8 = *&v2[OBJC_IVAR____TtC8PaperKit23ExtensionViewController_paperCanvasView];
      if (v8)
      {
        v9 = v8;
        specialized NewCanvasElementDelegate.addNewCanvasElement(_:)(v16);
      }

      v10 = *&v2[OBJC_IVAR____TtC8PaperKit23ExtensionViewController_paperTextCanvasView];
      if (!v10)
      {

        goto LABEL_14;
      }

      v11 = *(v10 + OBJC_IVAR____TtC8PaperKit29PaperTextAttachmentCanvasView_attachmentView);
      if (v11)
      {
        v12 = v11;

        specialized NewCanvasElementDelegate.addNewCanvasElement(_:)(v16);

LABEL_14:
        v13 = *&v2[OBJC_IVAR____TtC8PaperKit23ExtensionViewController_paperDocumentViewController];
        if (v13)
        {
          v17 = v16;
          v14 = v13;
          PaperKitExtensionDocumentViewController.addNewCanvasElement(_:)(&v17);
        }

        goto LABEL_17;
      }
    }

    __break(1u);
    return;
  }

LABEL_17:
  v15 = *(v0 + 8);

  v15();
}

double ExtensionViewController.addNewCanvasElement(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();

  v10 = static MainActor.shared.getter();
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E85E0];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = v9;
  v11[5] = a1;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v7, a3, v11);

  return result;
}

uint64_t closure #1 in ExtensionViewController.setIndirectPointerTouchMode(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  type metadata accessor for MainActor();
  v5[7] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in ExtensionViewController.setIndirectPointerTouchMode(_:), v7, v6);
}

void closure #1 in ExtensionViewController.setIndirectPointerTouchMode(_:)()
{
  v17 = v0;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if (one-time initialization token for extensionLogger != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, extensionLogger);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1D38C4000, v4, v5, "setIndirectPointerTouchMode", v6, 2u);
      MEMORY[0x1DA6D0660](v6, -1, -1);
    }

    v7 = *(v0 + 48);

    if (v7 >= 5)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7;
    }

    v9 = *&v2[OBJC_IVAR____TtC8PaperKit23ExtensionViewController_paperCanvasView];
    if (v9)
    {
      *(v9 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_indirectPointerTouchMode) = v8;
    }

    v10 = *&v2[OBJC_IVAR____TtC8PaperKit23ExtensionViewController_paperTextCanvasView];
    if (v10)
    {
      v11 = *(v10 + OBJC_IVAR____TtC8PaperKit29PaperTextAttachmentCanvasView_attachmentView);
      if (!v11)
      {
        __break(1u);
        return;
      }

      v12 = v11;

      v12[OBJC_IVAR____TtC8PaperKit9AnyCanvas_indirectPointerTouchMode] = v8;
    }

    else
    {
    }

    v13 = *&v2[OBJC_IVAR____TtC8PaperKit23ExtensionViewController_paperDocumentViewController];
    if (v13)
    {
      v16 = v8;
      v14 = v13;
      PaperKitExtensionDocumentViewController.indirectPointerTouchMode.setter(&v16);
    }
  }

  else
  {
  }

  v15 = *(v0 + 8);

  v15();
}

void @objc ExtensionViewController.setCanvasContentMode(_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v17 - v9;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();
  v13 = a1;

  v14 = static MainActor.shared.getter();
  v15 = swift_allocObject();
  v16 = MEMORY[0x1E69E85E0];
  v15[2] = v14;
  v15[3] = v16;
  v15[4] = v12;
  v15[5] = a3;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v10, a5, v15);
}

double ExtensionViewController.setMathDocument(_:)(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v16 - v3;
  if (one-time initialization token for mathLogger != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, mathLogger);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1D38C4000, v6, v7, "ExtensionViewController.setMathDocument", v8, 2u);
    MEMORY[0x1DA6D0660](v8, -1, -1);
  }

  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  type metadata accessor for CanvasCalculateDocumentProxy();
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type CanvasCalculateDocumentProxy and conformance CanvasCalculateDocumentProxy, 255, type metadata accessor for CanvasCalculateDocumentProxy, &protocol conformance descriptor for CanvasCalculateDocumentProxy);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  v9 = v16[1];
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();

  v12 = static MainActor.shared.getter();
  v13 = swift_allocObject();
  v14 = MEMORY[0x1E69E85E0];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = v11;
  v13[5] = v9;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5(0, 0, v4, &async function pointer to partial apply for closure #1 in ExtensionViewController.setMathDocument(_:), v13);

  return result;
}

uint64_t closure #1 in ExtensionViewController.setMathDocument(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  type metadata accessor for MainActor();
  v5[8] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in ExtensionViewController.setMathDocument(_:), v7, v6);
}

uint64_t closure #1 in ExtensionViewController.setMathDocument(_:)()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v2 = *(Strong + OBJC_IVAR____TtC8PaperKit23ExtensionViewController_paperTextCanvasView), v3 = Strong, v4 = v2, v3, v2))
  {
    PaperTextAttachmentCanvasView.setMathDocument(_:)(*(v0 + 56));

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  **(v0 + 40) = v5;
  v6 = *(v0 + 8);

  return v6();
}

double ExtensionViewController.setMathResult(_:expressionUUID:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v47 = &v39 - v8;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v45 = v11;
  v46 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v39 - v13;
  v15 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v15 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v15)
  {

    v43 = a2;
    v44 = a1;
  }

  else
  {
    v43 = 0;
    v44 = 0;
  }

  v41 = a1;
  if (one-time initialization token for mathLogger != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, mathLogger);
  v42 = *(v10 + 16);
  v42(v14, a3, v9);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v40 = a3;
    v20 = v19;
    v21 = swift_slowAlloc();
    v39 = v3;
    v22 = v21;
    v48 = v21;
    *v20 = 136380931;
    *(v20 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, a2, &v48);
    *(v20 + 12) = 2080;
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v24;
    (*(v10 + 8))(v14, v9);
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, &v48);

    *(v20 + 14) = v26;
    _os_log_impl(&dword_1D38C4000, v17, v18, "ExtensionViewController.setMathResult: %{private}s, uuid: %s", v20, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA6D0660](v22, -1, -1);
    v27 = v20;
    a3 = v40;
    MEMORY[0x1DA6D0660](v27, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v14, v9);
  }

  v28 = type metadata accessor for TaskPriority();
  v29 = v47;
  (*(*(v28 - 8) + 56))(v47, 1, 1, v28);
  v30 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v31 = v46;
  v42(v46, a3, v9);
  type metadata accessor for MainActor();

  v32 = static MainActor.shared.getter();
  v33 = (*(v10 + 80) + 56) & ~*(v10 + 80);
  v34 = swift_allocObject();
  v35 = MEMORY[0x1E69E85E0];
  *(v34 + 2) = v32;
  *(v34 + 3) = v35;
  v36 = v43;
  v37 = v44;
  *(v34 + 4) = v30;
  *(v34 + 5) = v37;
  *(v34 + 6) = v36;
  (*(v10 + 32))(&v34[v33], v31, v9);

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5(0, 0, v29, &async function pointer to partial apply for closure #1 in ExtensionViewController.setMathResult(_:expressionUUID:), v34);

  return result;
}

uint64_t closure #1 in ExtensionViewController.setMathResult(_:expressionUUID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v7[5] = a1;
  type metadata accessor for MainActor();
  v7[10] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in ExtensionViewController.setMathResult(_:expressionUUID:), v9, v8);
}

uint64_t closure #1 in ExtensionViewController.setMathResult(_:expressionUUID:)()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v2 = *(Strong + OBJC_IVAR____TtC8PaperKit23ExtensionViewController_paperTextCanvasView), v3 = Strong, v4 = v2, v3, v2))
  {
    PaperTextAttachmentCanvasView.setMathResult(_:expressionUUID:)(*(v0 + 56), *(v0 + 64));

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  **(v0 + 40) = v5;
  v6 = *(v0 + 8);

  return v6();
}

Swift::Void __swiftcall ExtensionViewController.setMathEnabled(_:)(Swift::Bool a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v14 - v3;
  if (one-time initialization token for mathLogger != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, mathLogger);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 67109120;
    *(v8 + 4) = a1;
    _os_log_impl(&dword_1D38C4000, v6, v7, "ExtensionViewController.setMathEnabled: %{BOOL}d", v8, 8u);
    MEMORY[0x1DA6D0660](v8, -1, -1);
  }

  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();

  v11 = static MainActor.shared.getter();
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E85E0];
  *(v12 + 16) = v11;
  *(v12 + 24) = v13;
  *(v12 + 32) = a1;
  *(v12 + 40) = v10;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v4, &async function pointer to partial apply for closure #1 in ExtensionViewController.setMathEnabled(_:), v12);
}

uint64_t closure #1 in ExtensionViewController.setMathEnabled(_:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 40) = a5;
  *(v5 + 56) = a4;
  type metadata accessor for MainActor();
  *(v5 + 48) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in ExtensionViewController.setMathEnabled(_:), v7, v6);
}

uint64_t closure #1 in ExtensionViewController.setMathEnabled(_:)()
{
  v1 = *(v0 + 56);

  if (v1 == 1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = *(Strong + OBJC_IVAR____TtC8PaperKit23ExtensionViewController_paperTextCanvasView);
      v4 = Strong;
      v5 = v3;

      if (v3)
      {
        PaperTextAttachmentCanvasView.setupMathIfNecessary()();
      }
    }
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t closure #1 in ExtensionViewController.search(for:ignoreCase:wholeWords:reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a8;
  v10 = a7;
  *(v8 + 32) = v17;
  *(v8 + 16) = v16;
  *(v8 + 40) = type metadata accessor for MainActor();
  *(v8 + 48) = static MainActor.shared.getter();
  v13 = swift_task_alloc();
  *(v8 + 56) = v13;
  *v13 = v8;
  v13[1] = closure #1 in ExtensionViewController.search(for:ignoreCase:wholeWords:reply:);

  return PaperDocumentView.performTextSearch(queryString:ignoreCase:wholeWords:)(a5, a6, v10, v9);
}

uint64_t closure #1 in ExtensionViewController.search(for:ignoreCase:wholeWords:reply:)(uint64_t a1)
{
  *(*v1 + 64) = a1;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in ExtensionViewController.search(for:ignoreCase:wholeWords:reply:), v3, v2);
}

uint64_t closure #1 in ExtensionViewController.search(for:ignoreCase:wholeWords:reply:)()
{

  if (static Task<>.isCancelled.getter())
  {
    if (one-time initialization token for extensionLogger != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, extensionLogger);

    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.info.getter();
    v4 = os_log_type_enabled(v2, v3);
    v5 = v0[8];
    if (v4)
    {
      v6 = swift_slowAlloc();
      *v6 = 134217984;
      v7 = *(v5 + 16);

      *(v6 + 4) = v7;

      _os_log_impl(&dword_1D38C4000, v2, v3, "Found find results (%ld) but task has been cancelled.", v6, 0xCu);
      MEMORY[0x1DA6D0660](v6, -1, -1);
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }
  }

  else
  {
    v8 = v0[8];
    v9 = v0[3];
    v10 = v0[2];
    *(v10 + OBJC_IVAR____TtC8PaperKit23ExtensionViewController_currentFindResults) = specialized _arrayForceCast<A, B>(_:)(v8);

    v11 = *(v8 + 16);

    v9(v11);
  }

  v12 = v0[1];

  return v12();
}

uint64_t closure #2 in ExtensionViewController.search(for:ignoreCase:wholeWords:reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a8;
  v10 = a7;
  *(v8 + 32) = v17;
  *(v8 + 16) = v16;
  *(v8 + 40) = type metadata accessor for MainActor();
  *(v8 + 48) = static MainActor.shared.getter();
  v13 = swift_task_alloc();
  *(v8 + 56) = v13;
  *v13 = v8;
  v13[1] = closure #2 in ExtensionViewController.search(for:ignoreCase:wholeWords:reply:);

  return PaperTextAttachmentCanvasView.performTextSearch(queryString:ignoreCase:wholeWords:)(a5, a6, v10, v9);
}

uint64_t closure #2 in ExtensionViewController.search(for:ignoreCase:wholeWords:reply:)(uint64_t a1)
{
  *(*v1 + 64) = a1;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #2 in ExtensionViewController.search(for:ignoreCase:wholeWords:reply:), v3, v2);
}

uint64_t closure #2 in ExtensionViewController.search(for:ignoreCase:wholeWords:reply:)()
{

  if (static Task<>.isCancelled.getter())
  {
    if (one-time initialization token for extensionLogger != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, extensionLogger);

    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.info.getter();
    v4 = os_log_type_enabled(v2, v3);
    v5 = v0[8];
    if (v4)
    {
      v6 = swift_slowAlloc();
      *v6 = 134217984;
      if (v5 >> 62)
      {
        v7 = __CocoaSet.count.getter();
      }

      else
      {
        v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v6 + 4) = v7;

      _os_log_impl(&dword_1D38C4000, v2, v3, "Found find results (%ld) but task has been cancelled.", v6, 0xCu);
      MEMORY[0x1DA6D0660](v6, -1, -1);
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }
  }

  else
  {
    v8 = v0[8];
    v9 = v0[2];
    *(v9 + OBJC_IVAR____TtC8PaperKit23ExtensionViewController_currentFindResults) = specialized _arrayForceCast<A, B>(_:)(v8);

    if (v8 >> 62)
    {
      v10 = __CocoaSet.count.getter();
    }

    else
    {
      v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v11 = v0[3];

    v11(v10);
  }

  v12 = v0[1];

  return v12();
}

Swift::Void __swiftcall ExtensionViewController.endSearch()()
{
  v1 = v0;
  if (one-time initialization token for extensionLogger != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, extensionLogger);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1D38C4000, v3, v4, "endSearch()", v5, 2u);
    MEMORY[0x1DA6D0660](v5, -1, -1);
  }

  if (*(v1 + OBJC_IVAR____TtC8PaperKit23ExtensionViewController_currentFindTask))
  {

    MEMORY[0x1DA6CD3C0](v6, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
  }

  *(v1 + OBJC_IVAR____TtC8PaperKit23ExtensionViewController_currentFindResults) = MEMORY[0x1E69E7CC0];
}

double ExtensionViewController.searchResultAndDocumentView(for:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *&v2[OBJC_IVAR____TtC8PaperKit23ExtensionViewController_paperDocumentViewController];
  if (!v4)
  {
    goto LABEL_14;
  }

  v5 = *(v4 + OBJC_IVAR____TtC8PaperKit39PaperKitExtensionDocumentViewController_inlineView);
  if (!v5)
  {
    goto LABEL_14;
  }

  v7 = OBJC_IVAR____TtC8PaperKit23PaperDocumentInlineView_paperDocumentView;
  swift_beginAccess();
  v8 = *(v5 + v7);
  if (!v8)
  {
    goto LABEL_14;
  }

  v9 = OBJC_IVAR____TtC8PaperKit23ExtensionViewController_currentFindResults;
  v10 = *&v2[OBJC_IVAR____TtC8PaperKit23ExtensionViewController_currentFindResults];
  if (*(v10 + 16) <= a1)
  {
    v13 = one-time initialization token for extensionLogger;
    v8 = v8;
    if (v13 == -1)
    {
LABEL_9:
      v14 = type metadata accessor for Logger();
      __swift_project_value_buffer(v14, extensionLogger);
      v15 = v2;
      v16 = v2;
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 134218240;
        *(v19 + 4) = a1;
        *(v19 + 12) = 2048;
        *(v19 + 14) = *(*&v15[v9] + 16);

        _os_log_impl(&dword_1D38C4000, v17, v18, "Cached find results got out of sync. Asked for frame for index %ld but only %ld results cached.", v19, 0x16u);
        MEMORY[0x1DA6D0660](v19, -1, -1);
      }

      else
      {

        v17 = v8;
        v8 = v16;
      }

      goto LABEL_14;
    }

LABEL_16:
    swift_once();
    goto LABEL_9;
  }

  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  outlined init with copy of FindResult(v10 + 40 * a1 + 32, v24);
  v11 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit10FindResult_pMd, &_s8PaperKit10FindResult_pMR);
  if (swift_dynamicCast())
  {
    result = *&v20;
    *a2 = v8;
    *(a2 + 8) = v20;
    *(a2 + 24) = v21;
    *(a2 + 40) = v22;
    *(a2 + 48) = v23;
    return result;
  }

LABEL_14:
  *(a2 + 48) = 0;
  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  return result;
}

uint64_t ExtensionViewController.searchResultAndCanvasView(for:)(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC8PaperKit23ExtensionViewController_paperTextCanvasView);
  if (!v2)
  {
    return v2;
  }

  v3 = *(v1 + OBJC_IVAR____TtC8PaperKit23ExtensionViewController_currentFindResults);
  if (*(v3 + 16) <= result)
  {
    return 0;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    outlined init with copy of FindResult(v3 + 40 * result + 32, v5);
    v4 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit10FindResult_pMd, &_s8PaperKit10FindResult_pMR);
    type metadata accessor for DrawingFindResult();
    if (swift_dynamicCast())
    {
      return v2;
    }

    return 0;
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall ExtensionViewController.searchScrollToVisible(_:)(Swift::Int a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v19 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v7 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for extensionLogger != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, extensionLogger);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_1D38C4000, v11, v12, "searchScrollToVisible(_:)", v13, 2u);
    MEMORY[0x1DA6D0660](v13, -1, -1);
  }

  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  v14 = static OS_dispatch_queue.main.getter();
  v15 = swift_allocObject();
  *(v15 + 16) = v2;
  *(v15 + 24) = a1;
  aBlock[4] = partial apply for closure #1 in ExtensionViewController.searchScrollToVisible(_:);
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_135;
  v16 = _Block_copy(aBlock);
  v17 = v2;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, 255, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x1E69E6328]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1DA6CD890](0, v9, v6, v16);
  _Block_release(v16);

  (*(v19 + 8))(v6, v4);
  (*(v7 + 8))(v9, v18);
}

void closure #1 in ExtensionViewController.searchScrollToVisible(_:)(uint64_t a1, uint64_t a2)
{
  ExtensionViewController.searchResultAndDocumentView(for:)(a2, &v14);
  v4 = v14;
  if (v14)
  {
    v6 = v18;
    v5 = v19;
    v8 = v16;
    v7 = v17;
    v9 = v15;
    v14 = v15;
    v15 = v16;
    v16 = v17;
    v17 = v18;
    v18 = v19;
    v10 = v20 & 1;
    LOBYTE(v19) = v20 & 1;
    PaperDocumentFindResult.scrollToVisible(in:)(v4);

    outlined consume of PaperDocumentFindResult.Content(v9, v8, v7, v6, v5, v10);
  }

  else
  {
    v11 = *(a1 + OBJC_IVAR____TtC8PaperKit23ExtensionViewController_paperTextCanvasView);
    if (v11)
    {
      v12 = *(a1 + OBJC_IVAR____TtC8PaperKit23ExtensionViewController_currentFindResults);
      if (*(v12 + 16) > a2)
      {
        if (a2 < 0)
        {
          __break(1u);
        }

        else
        {
          outlined init with copy of FindResult(v12 + 40 * a2 + 32, &v14);
          v13 = v11;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit10FindResult_pMd, &_s8PaperKit10FindResult_pMR);
          type metadata accessor for DrawingFindResult();
          if (swift_dynamicCast())
          {
          }
        }
      }
    }
  }
}

void @objc ExtensionViewController.searchFrame(for:reply:)(void *a1, int a2, uint64_t a3, void *aBlock, void (*a5)(uint64_t, id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a1;
  a5(a3, v9, v8);
  _Block_release(v8);
  _Block_release(v8);
}

uint64_t ExtensionViewController.encrypt(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

void *ExtensionViewController.decrypt(_:)(uint64_t a1, uint64_t a2)
{
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D405C100;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sytSgMd, &_sytSgMR);
  OS_dispatch_queue.sync<A>(execute:)();
  swift_beginAccess();
  if (*(v3 + 24) >> 60 == 15)
  {
    swift_beginAccess();
    v4 = *(v2 + 16);
    if (!v4)
    {
      lazy protocol witness table accessor for type ExtensionViewController.DecryptionError and conformance ExtensionViewController.DecryptionError();
      swift_allocError();
    }

    swift_willThrow();
    v5 = v4;
  }

  else
  {
    v4 = *(v3 + 16);
    outlined copy of Data._Representation(v4, *(v3 + 24));
  }

  return v4;
}

void closure #1 in ExtensionViewController.decrypt(_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, char *a4@<X8>)
{
  v5 = *(a1 + 16);
  if (v5 && ([*(a1 + 16) respondsToSelector_] & 1) != 0 && (v18 = partial apply for closure #1 in closure #1 in ExtensionViewController.decrypt(_:), v19 = a2, v14 = MEMORY[0x1E69E9820], v15 = 1107296256, v16 = thunk for @escaping @callee_guaranteed (@guaranteed Error) -> (), v17 = &block_descriptor_310, v8 = _Block_copy(&v14), swift_unknownObjectRetain(), swift_retain_n(), v9 = objc_msgSend(v5, sel_synchronousRemoteObjectProxyWithErrorHandler_, v8), _Block_release(v8), _bridgeAnyObjectToAny(_:)(), swift_unknownObjectRelease(), , swift_unknownObjectRelease(), , __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit15HostXPCProtocol_pMd, &_s8PaperKit15HostXPCProtocol_pMR), (swift_dynamicCast() & 1) != 0))
  {
    v10 = v14;
    isa = Data._bridgeToObjectiveC()().super.isa;
    v18 = partial apply for closure #2 in closure #1 in ExtensionViewController.decrypt(_:);
    v19 = a3;
    v14 = MEMORY[0x1E69E9820];
    v15 = 1107296256;
    v16 = thunk for @escaping @callee_guaranteed (@guaranteed Data?) -> ();
    v17 = &block_descriptor_313;
    v12 = _Block_copy(&v14);

    [v10 decryptData:isa reply:v12];
    swift_unknownObjectRelease();
    _Block_release(v12);

    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  *a4 = v13;
}

id closure #1 in closure #1 in ExtensionViewController.decrypt(_:)(void *a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a2 + 16);
  *(a2 + 16) = a1;

  return a1;
}

uint64_t closure #2 in closure #1 in ExtensionViewController.decrypt(_:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a3 + 16);
  v7 = *(a3 + 24);
  *(a3 + 16) = a1;
  *(a3 + 24) = a2;
  outlined copy of Data?(a1, a2);
  return outlined consume of Data?(v6, v7);
}

double thunk for @escaping @callee_guaranteed (@guaranteed Data?) -> ()(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = *(a1 + 32);
  if (a2)
  {

    v4 = v2;
    v2 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {

    v6 = 0xF000000000000000;
  }

  v3(v2, v6);
  outlined consume of Data?(v2, v6);

  return result;
}

uint64_t ExtensionViewController.handleLink(_:)()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = aBlock - v3;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = Notification.userInfo.getter();
  if (!v9)
  {
    goto LABEL_8;
  }

  v10 = v9;
  aBlock[6] = 5001813;
  aBlock[7] = 0xE300000000000000;
  AnyHashable.init<A>(_:)();
  if (!*(v10 + 16) || (v11 = specialized __RawDictionaryStorage.find<A>(_:)(aBlock), (v12 & 1) == 0))
  {

    outlined destroy of AnyHashable(aBlock);
LABEL_8:
    v19 = 0u;
    v20 = 0u;
    goto LABEL_9;
  }

  outlined init with copy of Any(*(v10 + 56) + 32 * v11, &v19);
  outlined destroy of AnyHashable(aBlock);

  if (!*(&v20 + 1))
  {
LABEL_9:
    outlined destroy of StocksKitCurrencyCache.Provider?(&v19, &_sypSgMd, &_sypSgMR);
    (*(v6 + 56))(v4, 1, 1, v5);
    return outlined destroy of StocksKitCurrencyCache.Provider?(v4, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  }

  v13 = swift_dynamicCast();
  (*(v6 + 56))(v4, v13 ^ 1u, 1, v5);
  if ((*(v6 + 48))(v4, 1, v5) != 1)
  {
    (*(v6 + 32))(v8, v4, v5);
    v14 = ExtensionViewController.openLink(_:)(v8);
    v15 = MEMORY[0x1DA6CCED0](*(v1 + OBJC_IVAR____TtC8PaperKit23ExtensionViewController_LinkAnalyticsEventName), *(v1 + OBJC_IVAR____TtC8PaperKit23ExtensionViewController_LinkAnalyticsEventName + 8), v14);
    aBlock[4] = closure #1 in ExtensionViewController.analyticsCountLinkClick();
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
    aBlock[3] = &block_descriptor_129;
    v16 = _Block_copy(aBlock);
    AnalyticsSendEventLazy();
    _Block_release(v16);

    return (*(v6 + 8))(v8, v5);
  }

  return outlined destroy of StocksKitCurrencyCache.Provider?(v4, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
}

unint64_t closure #1 in ExtensionViewController.analyticsCountLinkClick()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMd, &_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D4058CF0;
  *(inited + 32) = 0x756F436B63696C63;
  *(inited + 40) = 0xEA0000000000746ELL;
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
  *(inited + 48) = NSNumber.init(integerLiteral:)(1);
  v1 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObjectCTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of StocksKitCurrencyCache.Provider?(inited + 32, &_sSS_So8NSObjectCtMd, &_sSS_So8NSObjectCtMR);
  return v1;
}

uint64_t closure #1 in ExtensionViewController.LiveStreamMessenger.send(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v6[6] = swift_task_alloc();
  v6[7] = type metadata accessor for MainActor();
  v6[8] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in ExtensionViewController.LiveStreamMessenger.send(_:), v8, v7);
}

uint64_t closure #1 in ExtensionViewController.LiveStreamMessenger.send(_:)()
{

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = *(v0 + 48);
    v4 = *(v0 + 32);
    v3 = *(v0 + 40);
    v5 = type metadata accessor for TaskPriority();
    (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
    outlined copy of Data._Representation(v4, v3);
    v6 = Strong;
    v7 = static MainActor.shared.getter();
    v8 = swift_allocObject();
    v9 = MEMORY[0x1E69E85E0];
    v8[2] = v7;
    v8[3] = v9;
    v8[4] = v4;
    v8[5] = v3;
    v8[6] = v6;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v2, &async function pointer to partial apply for closure #1 in ExtensionViewController.receiveLiveStreamData(_:), v8);
  }

  **(v0 + 16) = Strong == 0;

  v10 = *(v0 + 8);

  return v10();
}

double closure #1 in ExtensionViewController.LiveStreamMessenger.messages.getter(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy10Foundation4DataV_GMd, &_sScS12ContinuationVy10Foundation4DataV_GMR);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v17 - v9;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  (*(v5 + 16))(v7, a1, v4);
  type metadata accessor for MainActor();

  v12 = static MainActor.shared.getter();
  v13 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v14 = swift_allocObject();
  v15 = MEMORY[0x1E69E85E0];
  *(v14 + 2) = v12;
  *(v14 + 3) = v15;
  *(v14 + 4) = a2;
  (*(v5 + 32))(&v14[v13], v7, v4);
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v10, &async function pointer to partial apply for closure #1 in closure #1 in ExtensionViewController.LiveStreamMessenger.messages.getter, v14);

  return result;
}

uint64_t closure #1 in closure #1 in ExtensionViewController.LiveStreamMessenger.messages.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVy10Foundation4DataV_GMd, &_sScS12ContinuationVy10Foundation4DataV_GMR);
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[7] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](closure #1 in closure #1 in ExtensionViewController.LiveStreamMessenger.messages.getter, v8, v7);
}

uint64_t closure #1 in closure #1 in ExtensionViewController.LiveStreamMessenger.messages.getter()
{
  v1 = v0[6];
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[2];
  v4 = v0[3];

  (*(v3 + 16))(v1, v4, v2);
  v6 = *(v5 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 24) = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6[2] + 1, 1, v6);
    *(v5 + 24) = v6;
  }

  v9 = v6[2];
  v8 = v6[3];
  if (v9 >= v8 >> 1)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v6);
  }

  v10 = v0[5];
  v11 = v0[6];
  v12 = v0[4];
  v6[2] = v9 + 1;
  (*(v10 + 32))(v6 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v9, v11, v12);
  *(v5 + 24) = v6;

  v13 = v0[1];

  return v13();
}

uint64_t ExtensionViewController.LiveStreamMessenger.__deallocating_deinit()
{
  MEMORY[0x1DA6D07B0](v0 + 16);

  return swift_deallocClassInstance();
}

double protocol witness for PaperKitLiveStreamMessenger.send(_:) in conformance ExtensionViewController.LiveStreamMessenger(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  type metadata accessor for MainActor();

  outlined copy of Data._Representation(a1, a2);
  v10 = static MainActor.shared.getter();
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E85E0];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = v3;
  v11[5] = a1;
  v11[6] = a2;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCytSg_Tt2g5(0, 0, v8, &async function pointer to partial apply for closure #1 in ExtensionViewController.LiveStreamMessenger.send(_:), v11);

  return result;
}

uint64_t protocol witness for PaperKitLiveStreamMessenger.messages.getter in conformance ExtensionViewController.LiveStreamMessenger()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationV15BufferingPolicyOy10Foundation4DataV__GMd, &_sScS12ContinuationV15BufferingPolicyOy10Foundation4DataV__GMR);
  v1 = MEMORY[0x1EEE9AC00](v0);
  (*(v3 + 104))(&v5 - v2, *MEMORY[0x1E69E8650], v1);
  return AsyncStream.init(_:bufferingPolicy:_:)();
}

id ExtensionViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = MEMORY[0x1DA6CCED0](a1);
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id ExtensionViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v36 = a2;
  v37 = a3;
  v32[0] = a1;
  v5 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v34 = *(v5 - 8);
  v35 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v33 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x1EEE9AC00](v7);
  v32[1] = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v10 = type metadata accessor for PKInkingTool.InkType();
  v11 = MEMORY[0x1EEE9AC00](v10);
  *&v3[OBJC_IVAR____TtC8PaperKit23ExtensionViewController_liveStreamMessenger] = 0;
  v3[OBJC_IVAR____TtC8PaperKit23ExtensionViewController_canvasContentMode] = 0;
  *&v3[OBJC_IVAR____TtC8PaperKit23ExtensionViewController_paperTextCanvasView] = 0;
  *&v3[OBJC_IVAR____TtC8PaperKit23ExtensionViewController_paperCanvasView] = 0;
  *&v3[OBJC_IVAR____TtC8PaperKit23ExtensionViewController_paperViewController] = 0;
  *&v3[OBJC_IVAR____TtC8PaperKit23ExtensionViewController_paperDocumentViewController] = 0;
  v3[OBJC_IVAR____TtC8PaperKit23ExtensionViewController_transparentBackground] = 0;
  v13 = &v3[OBJC_IVAR____TtC8PaperKit23ExtensionViewController_tool];
  (*(v14 + 104))(v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6978328], v11);
  v15 = [objc_opt_self() blackColor];
  v16 = type metadata accessor for PKInkingTool();
  v17 = MEMORY[0x1E6978370];
  v13[3] = v16;
  v13[4] = v17;
  __swift_allocate_boxed_opaque_existential_1(v13);
  PKInkingTool.init(_:color:width:)();
  v18 = &v3[OBJC_IVAR____TtC8PaperKit23ExtensionViewController_screenPotentialHeadroom];
  *v18 = 0;
  v18[8] = 1;
  *&v3[OBJC_IVAR____TtC8PaperKit23ExtensionViewController_linedPaperHorizontalSpacing] = 0;
  *&v3[OBJC_IVAR____TtC8PaperKit23ExtensionViewController_linedPaperVerticalSpacing] = 0;
  *&v3[OBJC_IVAR____TtC8PaperKit23ExtensionViewController_linedPaperHorizontalInset] = 0;
  v19 = &v3[OBJC_IVAR____TtC8PaperKit23ExtensionViewController_extensionHostSafeAreaInsets];
  v20 = *(MEMORY[0x1E69DDCE0] + 16);
  *v19 = *MEMORY[0x1E69DDCE0];
  *(v19 + 1) = v20;
  v21 = OBJC_IVAR____TtC8PaperKit23ExtensionViewController_hostProxyWrapper;
  type metadata accessor for ExtensionViewController.ProxyWrapper();
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *&v3[v21] = v22;
  v3[OBJC_IVAR____TtC8PaperKit23ExtensionViewController_hostRequestQueueSuspended] = 1;
  v23 = OBJC_IVAR____TtC8PaperKit23ExtensionViewController_hostRequestQueue;
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  static DispatchQoS.unspecified.getter();
  v39 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, 255, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR, MEMORY[0x1E69E6328]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v34 + 104))(v33, *MEMORY[0x1E69E8090], v35);
  v24 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  dispatch_suspend(v24);
  *&v3[v23] = v24;
  v25 = v36;
  *&v3[OBJC_IVAR____TtC8PaperKit23ExtensionViewController____lazy_storage___multipeerConnection] = 0;
  *&v3[OBJC_IVAR____TtC8PaperKit23ExtensionViewController_currentFindTask] = 0;
  *&v3[OBJC_IVAR____TtC8PaperKit23ExtensionViewController_currentFindResults] = MEMORY[0x1E69E7CC0];
  v26 = &v3[OBJC_IVAR____TtC8PaperKit23ExtensionViewController_LinkAnalyticsEventName];
  *v26 = 0xD000000000000027;
  *(v26 + 1) = 0x80000001D40829C0;
  if (v25)
  {
    v27 = MEMORY[0x1DA6CCED0](v32[0], v25);
  }

  else
  {
    v27 = 0;
  }

  v28 = type metadata accessor for ExtensionViewController();
  v38.receiver = v4;
  v38.super_class = v28;
  v29 = v37;
  v30 = objc_msgSendSuper2(&v38, sel_initWithNibName_bundle_, v27, v37);

  return v30;
}

id ExtensionViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id ExtensionViewController.init(coder:)(void *a1)
{
  v31 = a1;
  v2 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v29 = *(v2 - 8);
  v30 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v28 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x1EEE9AC00](v4);
  v27 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = type metadata accessor for PKInkingTool.InkType();
  v8 = MEMORY[0x1EEE9AC00](v7);
  *&v1[OBJC_IVAR____TtC8PaperKit23ExtensionViewController_liveStreamMessenger] = 0;
  v1[OBJC_IVAR____TtC8PaperKit23ExtensionViewController_canvasContentMode] = 0;
  *&v1[OBJC_IVAR____TtC8PaperKit23ExtensionViewController_paperTextCanvasView] = 0;
  *&v1[OBJC_IVAR____TtC8PaperKit23ExtensionViewController_paperCanvasView] = 0;
  *&v1[OBJC_IVAR____TtC8PaperKit23ExtensionViewController_paperViewController] = 0;
  *&v1[OBJC_IVAR____TtC8PaperKit23ExtensionViewController_paperDocumentViewController] = 0;
  v1[OBJC_IVAR____TtC8PaperKit23ExtensionViewController_transparentBackground] = 0;
  v10 = &v1[OBJC_IVAR____TtC8PaperKit23ExtensionViewController_tool];
  (*(v11 + 104))(&v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E6978328], v8);
  v12 = [objc_opt_self() blackColor];
  v13 = type metadata accessor for PKInkingTool();
  v14 = MEMORY[0x1E6978370];
  v10[3] = v13;
  v10[4] = v14;
  __swift_allocate_boxed_opaque_existential_1(v10);
  PKInkingTool.init(_:color:width:)();
  v15 = &v1[OBJC_IVAR____TtC8PaperKit23ExtensionViewController_screenPotentialHeadroom];
  *v15 = 0;
  v15[8] = 1;
  *&v1[OBJC_IVAR____TtC8PaperKit23ExtensionViewController_linedPaperHorizontalSpacing] = 0;
  *&v1[OBJC_IVAR____TtC8PaperKit23ExtensionViewController_linedPaperVerticalSpacing] = 0;
  *&v1[OBJC_IVAR____TtC8PaperKit23ExtensionViewController_linedPaperHorizontalInset] = 0;
  v16 = &v1[OBJC_IVAR____TtC8PaperKit23ExtensionViewController_extensionHostSafeAreaInsets];
  v17 = *(MEMORY[0x1E69DDCE0] + 16);
  *v16 = *MEMORY[0x1E69DDCE0];
  v16[1] = v17;
  v18 = OBJC_IVAR____TtC8PaperKit23ExtensionViewController_hostProxyWrapper;
  type metadata accessor for ExtensionViewController.ProxyWrapper();
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *&v1[v18] = v19;
  v1[OBJC_IVAR____TtC8PaperKit23ExtensionViewController_hostRequestQueueSuspended] = 1;
  v20 = OBJC_IVAR____TtC8PaperKit23ExtensionViewController_hostRequestQueue;
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  static DispatchQoS.unspecified.getter();
  v33 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, 255, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR, MEMORY[0x1E69E6328]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v29 + 104))(v28, *MEMORY[0x1E69E8090], v30);
  v21 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  dispatch_suspend(v21);
  *&v1[v20] = v21;
  *&v1[OBJC_IVAR____TtC8PaperKit23ExtensionViewController____lazy_storage___multipeerConnection] = 0;
  *&v1[OBJC_IVAR____TtC8PaperKit23ExtensionViewController_currentFindTask] = 0;
  *&v1[OBJC_IVAR____TtC8PaperKit23ExtensionViewController_currentFindResults] = MEMORY[0x1E69E7CC0];
  v22 = &v1[OBJC_IVAR____TtC8PaperKit23ExtensionViewController_LinkAnalyticsEventName];
  *v22 = 0xD000000000000027;
  v22[1] = 0x80000001D40829C0;
  v23 = type metadata accessor for ExtensionViewController();
  v32.receiver = v1;
  v32.super_class = v23;
  v24 = v31;
  v25 = objc_msgSendSuper2(&v32, sel_initWithCoder_, v31);

  if (v25)
  {
  }

  return v25;
}