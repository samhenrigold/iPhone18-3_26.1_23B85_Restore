void type metadata accessor for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    _s7SwiftUI28StyleContextAcceptsPredicateVyAA07ToolbarcD0VGMaTm_0(255, &lazy cache variable for type metadata for StyleContextAcceptsPredicate<ToolbarStyleContext>, MEMORY[0x1E697F860], MEMORY[0x1E69808E8]);
    v4 = type metadata accessor for StaticIf();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for SectionIndexLabel(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double outlined consume of SectionIndexLabel?(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 >> 1 != 0xFFFFFFFF)
  {
    return outlined consume of SectionIndexLabel(result, a2, a3);
  }

  return v4;
}

void SectionAccumulator.Item.numberOfIndexLabels.getter()
{
  v1 = 0;
  v2 = 0;
  v3 = *(v0 + 144);
  v4 = *(v3 + 16);
  while (v4 != v2)
  {
    if (v2 >= *(v3 + 16))
    {
      __break(1u);
LABEL_9:
      __break(1u);
      return;
    }

    ViewTraitCollection.value<A>(for:defaultValue:)();
    outlined consume of SectionIndexLabel?(0, 0, 0x1FFFFFFFELL, 0);

    v6 = 0;
    if (v9 >> 1 != 0xFFFFFFFF)
    {
      outlined consume of SectionIndexLabel?(v7, v8, v9, v10);
      v6 = 1;
    }

    ++v2;
    v5 = __OFADD__(v1, v6);
    v1 += v6;
    if (v5)
    {
      goto LABEL_9;
    }
  }
}

uint64_t outlined destroy of (offset: Int, element: SectionAccumulator.Item)(uint64_t a1)
{
  type metadata accessor for (offset: Int, element: SectionAccumulator.Item)();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t lazy protocol witness table accessor for type StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, PlatformItemListContentModifier, EmptyModifier>(255, a2, a3);
    v8 = v7;
    v9[0] = lazy protocol witness table accessor for type StyleContextAcceptsPredicate<ToolbarStyleContext> and conformance StyleContextAcceptsPredicate<A>();
    v9[1] = a4();
    v9[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v8, v9);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s7SwiftUI8StaticIfVyAA28StyleContextAcceptsPredicateVyAA07ToolbareF0VGAA0I19ButtonLabelModifierVAA05EmptyL0VGACyxq_q0_GAA04ViewL0A2A0n5InputH0RzAaOR_AaOR0_rlWlTm_0(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for StaticIf<StyleContextAcceptsPredicate<ToolbarStyleContext>, ToolbarButtonLabelModifier, EmptyModifier>(255, a2, a3);
    v8 = v7;
    v9[0] = lazy protocol witness table accessor for type StyleContextAcceptsPredicate<ToolbarStyleContext> and conformance StyleContextAcceptsPredicate<A>();
    v9[1] = a4();
    v9[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v8, v9);
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for (offset: Int, element: SectionAccumulator.Item)()
{
  if (!lazy cache variable for type metadata for (offset: Int, element: SectionAccumulator.Item))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (offset: Int, element: SectionAccumulator.Item));
    }
  }
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 8 * v7 + 32), (v6 + 32), 8 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
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
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
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
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
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
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
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
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
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
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 32 * v7 + 32), (v6 + 32), 32 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
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
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
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
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
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
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 2 * v7 + 32), (v6 + 32), 2 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
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
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 8 * v7 + 32), (v6 + 32), 8 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
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
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
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
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
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
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
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
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
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
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
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
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
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
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
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
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
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
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 96 * v7 + 32), (v6 + 32), 96 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 24 * v7 + 32), (v6 + 32), 24 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance UIKitButtonStyleModifier<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for UIKitButtonStyleModifier<A>, a5);

  return MEMORY[0x1EEDDE4A8](a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t UpdateCollectionViewListCoordinator.selection.getter@<X0>(uint64_t a2@<X8>)
{
  type metadata accessor for Binding();
  v3 = type metadata accessor for Optional();
  Value = AGGraphGetValue();
  v5 = *(*(v3 - 8) + 16);

  return v5(a2, Value, v3);
}

uint64_t SelectionManagerBox.allowsMultipleSelection.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = MEMORY[0x1EEE9AC00](a1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v3);
  v6 = 1u >> (swift_getEnumCaseMultiPayload() & 7);
  (*(v2 + 8))(v5, a1);
  return v6;
}

uint64_t initializeWithCopy for ListSectionInfo(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  *(a1 + 24) = v4;
  (**(v4 - 8))();
  v5 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v5;
  v6 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v6;
  v8 = *(a2 + 72);
  v7 = *(a2 + 80);
  *(a1 + 72) = v8;
  *(a1 + 80) = v7;
  v9 = v5;

  return a1;
}

double UpdateCollectionViewListCoordinator.environment.getter@<D0>(void *a1@<X8>)
{
  Value = AGGraphGetValue();
  v4 = *Value;
  v3 = Value[1];
  *a1 = v4;
  a1[1] = v3;

  return result;
}

uint64_t CollectionViewListDataSource.init(sectionInfo:style:allowsMultipleSelection:minRowHeight:minHeaderHeight:environment:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>)
{
  v15 = *a4;
  v16 = a4[1];
  v17 = type metadata accessor for CollectionViewListDataSource(0, a5, a6, a4);
  v18 = a7 + v17[10];
  *v18 = xmmword_18CD633F0;
  *(v18 + 16) = 0u;
  *(v18 + 32) = 0u;
  *(v18 + 48) = 0u;
  *(v18 + 63) = 0;
  v19 = *(a1 + 16);
  *a7 = *a1;
  *(a7 + 16) = v19;
  *(a7 + 80) = *(a1 + 80);
  v20 = *(a1 + 64);
  *(a7 + 48) = *(a1 + 48);
  *(a7 + 64) = v20;
  *(a7 + 32) = *(a1 + 32);
  v21 = v17[9];
  v22 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  result = (*(*(v22 - 8) + 32))(a7 + v21, a2, v22);
  *(a7 + v17[12]) = a3;
  *(a7 + v17[13]) = a8;
  *(a7 + v17[14]) = a9;
  v24 = (a7 + v17[11]);
  *v24 = v15;
  v24[1] = v16;
  return result;
}

uint64_t initializeWithCopy for CollectionViewListDataSource(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = *(a2 + 24);
  *(a1 + 24) = v6;
  (**(v6 - 8))();
  v7 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v7;
  v8 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v8;
  v9 = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = v9;
  v10 = a3[9];
  v11 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v28 = *(*(v11 - 8) + 16);
  v12 = v7;

  v28(a1 + v10, a2 + v10, v11);
  v13 = a3[10];
  v14 = a1 + v13;
  v15 = a2 + v13;
  v16 = *(a2 + v13 + 8);
  if (!v16)
  {
    *v14 = *v15;
    *(v14 + 16) = *(v15 + 16);
    v19 = *(v15 + 64);
    if ((v19 & 1) == 0)
    {
LABEL_7:
      v20 = *(v15 + 48);
      *(v14 + 48) = v20;
      (**(v20 - 8))(v14 + 24, v15 + 24);
      goto LABEL_8;
    }

LABEL_5:
    *(v14 + 24) = *(v15 + 24);

LABEL_8:
    *(v14 + 64) = v19;
    *(v14 + 65) = *(v15 + 65);
    goto LABEL_9;
  }

  if (v16 != 1)
  {
    *v14 = *v15;
    *(v14 + 8) = v16;
    *(v14 + 16) = *(v15 + 16);

    v19 = *(v15 + 64);
    if ((v19 & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  v17 = *(v15 + 48);
  *(v14 + 32) = *(v15 + 32);
  *(v14 + 48) = v17;
  *(v14 + 63) = *(v15 + 63);
  v18 = *(v15 + 16);
  *v14 = *v15;
  *(v14 + 16) = v18;
LABEL_9:
  v21 = a3[11];
  v22 = a3[12];
  v23 = (a1 + v21);
  v24 = (a2 + v21);
  v25 = v24[1];
  *v23 = *v24;
  v23[1] = v25;
  *(a1 + v22) = *(a2 + v22);
  v26 = a3[14];
  *(a1 + a3[13]) = *(a2 + a3[13]);
  *(a1 + v26) = *(a2 + v26);

  return a1;
}

uint64_t (*NavigationDestinationModifier.PreferenceTransform.value.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t a1)
{
  NavigationDestinationModifier.PreferenceTransform.seededResolver.getter(a1, a2, a3, a4, a5);
  v10 = v9;
  v12 = v11;
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  *(v13 + 32) = a4;
  *(v13 + 40) = a5;
  *(v13 + 48) = v10;
  *(v13 + 56) = v12;
  return partial apply for closure #1 in NavigationDestinationModifier.PreferenceTransform.value.getter;
}

uint64_t sub_18BF924F0()
{

  return swift_deallocObject();
}

uint64_t UpdateCollectionViewListCoordinator.editMode.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for Binding<EditMode>?(0);
  Value = AGGraphGetValue();
  v4 = *Value;
  v3 = *(Value + 8);
  *a1 = *Value;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(Value + 16);

  return outlined copy of Binding<Int>?(v4, v3);
}

uint64_t protocol witness for Rule.value.getter in conformance NavigationDestinationModifier<A, B>.PreferenceTransform@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v4 = NavigationDestinationModifier.PreferenceTransform.value.getter(*v2, a1[2], a1[3], a1[4], a1[5]);
  v6 = v5;
  result = swift_allocObject();
  *(result + 16) = v4;
  *(result + 24) = v6;
  *a2 = partial apply for thunk for @escaping @callee_guaranteed (@inout AccessibilityLargeContentViewTree) -> ();
  a2[1] = result;
  return result;
}

uint64_t sub_18BF925F8()
{

  return swift_deallocObject();
}

void type metadata accessor for EnvironmentPropertyKey<EditModeKey>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<EditModeKey>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EditModeKey>);
    }
  }
}

void NavigationDestinationModifier.PreferenceTransform.seededResolver.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[0] = a2;
  v5[1] = a3;
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for NavigationDestinationModifier.SeededResolver(0, v5);
  if (AGGraphGetWeakValue())
  {
  }
}

void NavigationDestinationModifier.MakeSeededResolver.updateValue()(uint64_t a1)
{
  v2 = v1;
  v24 = *MEMORY[0x1E69E9840];
  v4 = *(v1 + 8);
  v19 = *(v1 + 16);
  v5 = *(a1 + 16);
  v6 = *(a1 + 40);
  v20 = *(a1 + 24);
  swift_getFunctionTypeMetadata1();
  Value = AGGraphGetValue();
  v9 = v8;
  v11 = *Value;
  v10 = Value[1];
  v21 = v5;
  v22 = v20;
  v23 = v6;
  v12 = type metadata accessor for NavigationDestinationModifier.SeededResolver(0, &v21);
  if (!AGGraphGetOutputValue())
  {
    type metadata accessor for NavigationDestinationResolver(0, v5, v20, v6);
    v15 = NavigationDestinationResolver.__allocating_init(transform:)(v11, v10);
    swift_retain_n();

    *(v2 + 8) = v15;
    v4 = v15;
    goto LABEL_7;
  }

  if ((v9 & 1) == 0)
  {

LABEL_7:
    OutputValue = AGGraphGetOutputValue();
    if (OutputValue && (v9 & 1) == 0)
    {

      return;
    }

    if (v4)
    {
      v14 = v19;
      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
    return;
  }

  if (!v4)
  {
    goto LABEL_15;
  }

  *(v4 + 16) = v11;
  *(v4 + 24) = v10;
  swift_retain_n();

  v14 = v19 + 1;
  *(v2 + 16) = v19 + 1;
LABEL_12:
  v21 = v4;
  LODWORD(v22) = v14;
  v16 = MEMORY[0x1EEE9AC00](OutputValue);
  v18[2] = a1;
  v18[3] = swift_getWitnessTable(protocol conformance descriptor for NavigationDestinationModifier<A, B>.MakeSeededResolver, a1, v16);

  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v21, partial apply for closure #1 in StatefulRule.value.setter, v18, v12, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v17);
}

id specialized UICollectionViewListCoordinatorBase.init(dataSource:selection:editMode:transaction:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v72 = a4;
  v70 = a2;
  v66 = a1;
  v7 = *v5;
  v8 = MEMORY[0x1E69E7D40];
  v9 = *MEMORY[0x1E69E7D40];
  v10 = *((*MEMORY[0x1E69E7D40] & *v5) + 0x60);
  v60 = *(v10 - 8);
  v11 = v60;
  MEMORY[0x1EEE9AC00](a1);
  v63 = &v58 - v12;
  v71 = *((v9 & v7) + 0x70);
  v13 = *(v71 + 8);
  v64 = type metadata accessor for ShadowListDataSource(0, v10, v13, v14);
  v62 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v61 = &v58 - v15;
  v16 = a3[1];
  v68 = *a3;
  v67 = v16;
  v69 = *(a3 + 16);
  *(v5 + *((v9 & v7) + 0x80)) = MEMORY[0x1E69E7CD0];
  v17 = *((*v8 & *v5) + 0x90);
  *(v5 + v17) = closure #1 in variable initialization expression of UICollectionViewListCoordinatorBase.helper();
  v18 = (v5 + *((*v8 & *v5) + 0x98));
  *v18 = 0;
  v18[1] = 0;
  v65 = *((*v8 & *v5) + 0xA0);
  *(v5 + v65) = 1;
  *(v5 + *((*v8 & *v5) + 0xA8)) = 0;
  type metadata accessor for GraphHost();
  MEMORY[0x18D00B7D0]();
  swift_weakInit();

  v19 = *((*v8 & *v5) + 0xB8);
  v20 = *(v13 + 8);
  v58 = v13;
  ListCoreBatchUpdates.init()(v10, v20, v5 + v19);
  *(v5 + *((*v8 & *v5) + 0xC0)) = 1;
  *(v5 + *((*v8 & *v5) + 0xC8)) = 0;
  (*(v11 + 56))(v5 + *((*v8 & *v5) + 0xD0), 1, 1, v10);
  *(v5 + *((*v8 & *v5) + 0xD8)) = 0;
  v21 = *((*v8 & *v5) + 0xE0);
  v22 = type metadata accessor for IndexPath();
  v23 = *(*(v22 - 8) + 56);
  v23(v5 + v21, 1, 1, v22);
  v23(v5 + *((*v8 & *v5) + 0xE8), 1, 1, v22);
  v24 = v5 + *((*v8 & *v5) + 0xF0);
  *v24 = 0;
  *(v24 + 4) = 256;
  swift_unknownObjectWeakInit();
  v25 = v5 + *((*v8 & *v5) + 0x100);
  *v25 = 0;
  *(v25 + 1) = 0;
  *(v25 + 2) = 0x1FFFFFFFALL;
  *(v25 + 24) = 0u;
  *(v25 + 40) = 0u;
  v26 = v5 + *((*v8 & *v5) + 0x108);
  *v26 = 0;
  v26[8] = 1;
  v59 = *((*v8 & *v5) + 0x110);
  v27 = v59;
  v28 = *((v9 & v7) + 0x68);
  v29 = type metadata accessor for Binding();
  (*(*(v29 - 8) + 56))(v5 + v27, 1, 1, v29);
  v30 = (*(*(v28 - 8) + 56))(v5 + *((*v8 & *v5) + 0x118), 1, 1, v28);
  v31 = v5 + *((*v8 & *v5) + 0x120);
  LOBYTE(v75[0]) = 0;
  MEMORY[0x18D007050](v75 + 1, v30);
  v32 = v75[3];
  *(v31 + 2) = v75[2];
  *(v31 + 3) = v32;
  v31[64] = v76;
  v33 = v75[1];
  *v31 = v75[0];
  *(v31 + 1) = v33;
  v34 = v5 + *((*v8 & *v5) + 0x128);
  *v34 = 0;
  *(v34 + 1) = 0;
  v34[16] = 0;
  v35 = (v5 + *((*v8 & *v5) + 0x130));
  swift_getAssociatedTypeWitness();
  v36 = *((v9 & v7) + 0x78);
  swift_getAssociatedConformanceWitness();
  *v35 = WeakSelectionBasedStorage.init()();
  v35[1] = v37;
  v35[2] = v38;
  v35[3] = v39;
  *(v5 + *((*v8 & *v5) + 0x138)) = 0;
  *(v5 + *((*v8 & *v5) + 0x140)) = 0;
  v40 = v5 + *((*v8 & *v5) + 0x148);
  *v40 = 0;
  *(v40 + 4) = 256;
  v41 = v5 + *((*v8 & *v5) + 0x150);
  *v41 = 0;
  v41[8] = 1;
  v42 = v5 + *((*v8 & *v5) + 0x158);
  *v42 = 0;
  v42[8] = 1;
  *(v5 + *((*v8 & *v5) + 0x160)) = 0;
  *(v5 + *((*v8 & *v5) + 0x168)) = 0;
  *(v5 + *((*v8 & *v5) + 0x170)) = 0;
  v43 = v5 + *((*v8 & *v5) + 0x178);
  *v43 = 0u;
  *(v43 + 1) = 0u;
  *(v43 + 4) = 0;
  v44 = v63;
  (*(v60 + 16))(v63, v66, v10);
  v45 = v61;
  ShadowListDataSource.init(_:)(v44, v10, v58, v61);
  (*(v62 + 32))(v5 + *((*v8 & *v5) + 0x88), v45, v64);
  v46 = v59;
  swift_beginAccess();
  v47 = type metadata accessor for Optional();
  (*(*(v47 - 8) + 24))(v5 + v46, v70, v47);
  swift_endAccess();
  v48 = *v34;
  v49 = *(v34 + 1);
  v50 = v67;
  *v34 = v68;
  *(v34 + 1) = v50;
  v34[16] = v69;
  outlined consume of Binding<NavigationSplitViewColumn>?(v48, v49);
  v51 = v65;
  swift_beginAccess();
  v52 = *(v5 + v51);
  v53 = v72;
  *(v5 + v51) = v72;
  outlined copy of Transaction?(v53);
  outlined consume of ListItemTint?(v52);
  *&v54 = v10;
  *(&v54 + 1) = v28;
  *&v55 = v71;
  *(&v55 + 1) = v36;
  v73[1] = v55;
  v73[0] = v54;
  v56 = type metadata accessor for UICollectionViewListCoordinatorBase(0, v73);
  v74.receiver = v5;
  v74.super_class = v56;
  return objc_msgSendSuper2(&v74, sel_init);
}

uint64_t type metadata completion function for ShadowListDataSource(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ShadowListUpdateRecorder(319, *(a1 + 16), *(*(a1 + 24) + 8), a4);
  if (v5 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t NavigationDestinationResolver.__allocating_init(transform:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t sub_18BF93424(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 2);

  return a1;
}

uint64_t ListCoreBatchUpdates.init()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  IndexSet.init()();
  v7 = type metadata accessor for ListCoreBatchUpdates(0, a1, a2, v6);
  IndexSet.init()();
  v8 = MEMORY[0x1E69E7CC0];
  *(a3 + v7[10]) = MEMORY[0x1E69E7CC0];
  *(a3 + v7[11]) = v8;
  *(a3 + v7[12]) = v8;
  *(a3 + v7[13]) = v8;
  IndexSet.init()();
  return ListBatchUpdates.init()((a3 + v7[15]));
}

uint64_t closure #1 in NavigationDestinationModifier.PreferenceTransform.value.getter(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10[5] = a2;
  v11 = a3;
  v9[2] = a4;
  v9[3] = a5;
  v9[4] = a6;
  v9[5] = a7;
  v9[6] = a1;
  v10[0] = a4;
  v10[1] = a5;
  v10[2] = a6;
  v10[3] = a7;
  type metadata accessor for NavigationDestinationModifier.SeededResolver(255, v10);
  type metadata accessor for Optional();
  return _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in closure #1 in NavigationDestinationModifier.PreferenceTransform.value.getter, v9, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, v7, v10);
}

uint64_t ListBatchUpdates.init()@<X0>(uint64_t *a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v3 = type metadata accessor for CountingIndex();
  v4 = MEMORY[0x1E697E0E0];
  type metadata accessor for Range<Int>(255, &lazy cache variable for type metadata for CountingIndex<Int>, MEMORY[0x1E697E0E0]);
  v6 = v5;
  v7 = MEMORY[0x1E697E0E8];
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E0E8], v3);
  v23 = v3;
  v24 = v6;
  v25 = WitnessTable;
  v26 = lazy protocol witness table accessor for type PartialRangeFrom<Int> and conformance PartialRangeFrom<A>(&lazy protocol witness table cache variable for type CountingIndex<Int> and conformance CountingIndex<A>, &lazy cache variable for type metadata for CountingIndex<Int>, v4, v7);
  type metadata accessor for ListUpdate(0, &v23);
  *a3 = static Array._allocateUninitialized(_:)();
  v23 = v3;
  v24 = v3;
  v25 = WitnessTable;
  v26 = WitnessTable;
  type metadata accessor for CollectionChanges.Element();
  v9 = Array.init()();
  v10 = MEMORY[0x1E69E7CC0];
  a3[1] = v9;
  a3[2] = v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  swift_getTupleTypeMetadata2();
  v13 = static Array._allocateUninitialized(_:)();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v15 = specialized Dictionary.init(dictionaryLiteral:)(v13, AssociatedTypeWitness, TupleTypeMetadata2, AssociatedConformanceWitness);

  a3[3] = v15;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v16 = swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  v17 = swift_getTupleTypeMetadata2();
  swift_getTupleTypeMetadata2();
  v18 = static Array._allocateUninitialized(_:)();
  v19 = swift_getAssociatedConformanceWitness();
  v20 = specialized Dictionary.init(dictionaryLiteral:)(v18, v16, v17, v19);

  a3[4] = v20;
  return result;
}

unint64_t lazy protocol witness table accessor for type LazyMapSequence<[SectionAccumulator.Item], UInt32> and conformance <> LazyMapSequence<A, B>()
{
  result = lazy protocol witness table cache variable for type LazyMapSequence<[SectionAccumulator.Item], UInt32> and conformance <> LazyMapSequence<A, B>;
  if (!lazy protocol witness table cache variable for type LazyMapSequence<[SectionAccumulator.Item], UInt32> and conformance <> LazyMapSequence<A, B>)
  {
    v5[3] = v0;
    v5[4] = v1;
    type metadata accessor for LazyMapSequence<[SectionAccumulator.Item], UInt32>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type [SectionAccumulator.Item] and conformance [A](&lazy protocol witness table cache variable for type [SectionAccumulator.Item] and conformance [A], MEMORY[0x1E69E6310]);
    result = swift_getWitnessTable(MEMORY[0x1E69E6CC0], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type LazyMapSequence<[SectionAccumulator.Item], UInt32> and conformance <> LazyMapSequence<A, B>);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NavigationDestinationModifier.SeededResolver(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 12))
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

uint64_t storeEnumTagSinglePayload for NavigationDestinationModifier.SeededResolver(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 12) = 1;
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

    *(result + 12) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void type metadata accessor for LazyMapSequence<[SectionAccumulator.Item], UInt32>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for LazyMapSequence<[SectionAccumulator.Item], UInt32>)
  {
    _sSay7SwiftUI0A19UIAnySortComparatorVGMaTm_0(255, &lazy cache variable for type metadata for [SectionAccumulator.Item], MEMORY[0x1E697F490], MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type [SectionAccumulator.Item] and conformance [A](&lazy protocol witness table cache variable for type [SectionAccumulator.Item] and conformance [A], MEMORY[0x1E69E6328]);
    v1 = type metadata accessor for LazyMapSequence();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for LazyMapSequence<[SectionAccumulator.Item], UInt32>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>> and conformance HStack<A>, type metadata accessor for HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, MEMORY[0x1E69817F8]);
    v5[1] = lazy protocol witness table accessor for type _ContentShapeKindModifier<Rectangle> and conformance _ContentShapeKindModifier<A>();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ContentShapeKindModifier<Rectangle> and conformance _ContentShapeKindModifier<A>()
{
  result = lazy protocol witness table cache variable for type _ContentShapeKindModifier<Rectangle> and conformance _ContentShapeKindModifier<A>;
  if (!lazy protocol witness table cache variable for type _ContentShapeKindModifier<Rectangle> and conformance _ContentShapeKindModifier<A>)
  {
    _s7SwiftUI19ShadowRowCollectionVyAA22TableDataSourceAdaptorVGMaTm_0(255, &lazy cache variable for type metadata for _ContentShapeKindModifier<Rectangle>, lazy protocol witness table accessor for type Rectangle and conformance Rectangle, MEMORY[0x1E6981EF8], MEMORY[0x1E69805E0]);
    result = swift_getWitnessTable(MEMORY[0x1E69805E8], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _ContentShapeKindModifier<Rectangle> and conformance _ContentShapeKindModifier<A>);
  }

  return result;
}

unint64_t _s7SwiftUI21NavigationColumnStateV24isElidedInCollapsedSplit6column6within09splitViewE0SbSi_xAA0cjnE0VSgtSkRzAC7ElementRtzSi5IndexRtzlFZSayACG_Tt2B5(unint64_t result, uint64_t a2, uint64_t a3)
{
  v16 = a2;
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    if (*(a2 + 16) > result)
    {
      outlined init with copy of NavigationColumnState(a2 + 360 * result + 32, v14);
      if (v15 > 2u)
      {
        if (v15 - 3 >= 2)
        {
          outlined destroy of NavigationColumnState(v14);
          v10 = 1;
          return v10 & 1;
        }
      }

      else if (v15)
      {
        if (v15 != 1)
        {
          specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(a3, v14, v4, a2);
          v12 = v11;
          outlined destroy of NavigationColumnState(v14);
          v10 = v12 ^ 1;
          return v10 & 1;
        }

        specialized hasContent #1 <A>() in static NavigationColumnState.isElidedInCollapsedSplit<A>(column:within:splitViewState:)(a3, v14, v4, a2);
        if ((v6 & 1) == 0)
        {
          MEMORY[0x1EEE9AC00](v6);
          v13[2] = &v16;
          v13[3] = a3;
          v9 = _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lFSi_s5NeverOSbTg5(_s7SwiftUI21NavigationColumnStateV24isElidedInCollapsedSplit6column6within09splitViewE0SbSi_xAA0cjnE0VSgtSkRzAC7ElementRtzSi5IndexRtzlFZSbSiXEfU_SayACG_Tt2G5TA, v13, v7, v8);
          outlined destroy of NavigationColumnState(v14);
          v10 = (v9 == 2) | v9;
          return v10 & 1;
        }
      }

      outlined destroy of NavigationColumnState(v14);
      v10 = 0;
      return v10 & 1;
    }
  }

  __break(1u);
  return result;
}

unint64_t specialized closure #1 in Collection<>.collapsedItemCount<A>(within:splitViewState:)@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v6 = *a1;
  v7 = *a2;
  v8 = *a3;
  result = _s7SwiftUI21NavigationColumnStateV24isElidedInCollapsedSplit6column6within09splitViewE0SbSi_xAA0cjnE0VSgtSkRzAC7ElementRtzSi5IndexRtzlFZSayACG_Tt2B5(*a2, *a3, a4);
  if (result)
  {
    v10 = 0;
LABEL_6:
    if (!__OFADD__(v6, v10))
    {
      *a5 = v6 + v10;
      return result;
    }

    __break(1u);
    goto LABEL_9;
  }

  if ((v7 & 0x8000000000000000) != 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v7 < *(v8 + 16))
  {
    outlined init with copy of NavigationColumnState(v8 + 360 * v7 + 32, v12);
    NavigationColumnState.ColumnContent.count.getter();
    v10 = v11;
    result = outlined destroy of NavigationColumnState(v12);
    goto LABEL_6;
  }

LABEL_10:
  __break(1u);
  return result;
}

void type metadata accessor for ShadowRowCollection<TableDataSourceAdaptor>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void _s7SwiftUI19ShadowRowCollectionVyAA22TableDataSourceAdaptorVGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void type metadata accessor for (ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer)(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void NavigationColumnState.ColumnContent.count.getter()
{
  v1 = outlined init with copy of NavigationColumnState.ColumnContent(v0, v6);
  if (v7)
  {
    goto LABEL_4;
  }

  v2 = v6[13];
  v3 = (*(*v6[12] + 88))(v1);

  v4 = v3 + 1;
  if (__OFADD__(v3, 1))
  {
    __break(1u);
  }

  else
  {
    v5 = *(v2 + 16);

    if (!__OFADD__(v4, v5))
    {
LABEL_4:
      outlined destroy of NavigationColumnState.ReplacedRoot?(v6, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot, MEMORY[0x1E69E6720]);
      return;
    }
  }

  __break(1u);
}

uint64_t outlined destroy of NavigationColumnState.ReplacedRoot?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  type metadata accessor for NavigationColumnState.ReplacedRoot?(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void type metadata accessor for NavigationColumnState.ReplacedRoot?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t lazy protocol witness table accessor for type ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>(255);
    v4 = v3;
    v5[0] = &protocol witness table for SectionStyleConfiguration.Header;
    v5[1] = lazy protocol witness table accessor for type StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>()
{
  result = lazy protocol witness table cache variable for type StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>;
  if (!lazy protocol witness table cache variable for type StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>)
  {
    v5[5] = v0;
    v5[6] = v1;
    type metadata accessor for StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>();
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type UseSidebarHeaderModifierPredicate and conformance UseSidebarHeaderModifierPredicate();
    v5[1] = lazy protocol witness table accessor for type SidebarHeaderModifier and conformance SidebarHeaderModifier();
    v5[2] = MEMORY[0x1E697E100];
    result = swift_getWitnessTable(MEMORY[0x1E6981CE0], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier> and conformance <> StaticIf<A, B, C>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UseSidebarHeaderModifierPredicate and conformance UseSidebarHeaderModifierPredicate()
{
  result = lazy protocol witness table cache variable for type UseSidebarHeaderModifierPredicate and conformance UseSidebarHeaderModifierPredicate;
  if (!lazy protocol witness table cache variable for type UseSidebarHeaderModifierPredicate and conformance UseSidebarHeaderModifierPredicate)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UseSidebarHeaderModifierPredicate, &unk_1EFFCCAC0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type UseSidebarHeaderModifierPredicate and conformance UseSidebarHeaderModifierPredicate);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SidebarHeaderModifier and conformance SidebarHeaderModifier()
{
  result = lazy protocol witness table cache variable for type SidebarHeaderModifier and conformance SidebarHeaderModifier;
  if (!lazy protocol witness table cache variable for type SidebarHeaderModifier and conformance SidebarHeaderModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SidebarHeaderModifier, &unk_1EFFCCAA0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SidebarHeaderModifier and conformance SidebarHeaderModifier);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer)>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer)>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer)>>> and conformance <> _ConditionalContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer)>>>(255, &lazy cache variable for type metadata for _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer)>>>, type metadata accessor for ModifiedContent<Button<ModifiedContent<HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, type metadata accessor for HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer)>>, MEMORY[0x1E697F960]);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<Button<ModifiedContent<HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>> and conformance <> ModifiedContent<A, B>();
    v5[1] = lazy protocol witness table accessor for type TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer)>> and conformance HStack<A>, type metadata accessor for HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer)>>, MEMORY[0x1E69817F8]);
    result = swift_getWitnessTable(MEMORY[0x1E697F968], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer)>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Button<ModifiedContent<HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Button<ModifiedContent<HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Button<ModifiedContent<HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<Button<ModifiedContent<HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type Button<ModifiedContent<HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>> and conformance Button<A>, type metadata accessor for Button<ModifiedContent<HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, protocol conformance descriptor for Button<A>);
    v5[1] = lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<PlainButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Button<ModifiedContent<HStack<TupleView<(PlaceholderContentView<ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t requiresNew #1 (_:) in NavigationHostingControllerCache_UIKit.Source.ensureViewController(at:forPushing:configureExisting:makeNew:)(void *a1, uint64_t a2, char a3, char a4, uint64_t a5)
{
  _s2os6LoggerVSgMaTm_0(0, &lazy cache variable for type metadata for Logger?, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v25 - v10;
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  if ((a3 & 1) == 0)
  {

    return 0;
  }

  v13 = result;
  v14 = [a1 navigationController];
  if (!v14)
  {

    goto LABEL_9;
  }

  v15 = v14;

  if (v13 != v15)
  {
LABEL_9:

    return 0;
  }

  static Log.navigation.getter();
  v16 = type metadata accessor for Logger();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v11, 1, v16) == 1)
  {

    outlined destroy of Logger?(v11);
  }

  else
  {
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v27 = a5;
      v28 = v25;
      *v20 = 136315138;
      v26 = a4;
      v21 = NavigationContentAbstractPosition.description.getter();
      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v28);

      *(v20 + 4) = v23;
      _os_log_impl(&dword_18BD4A000, v18, v19, "<NavigationHostingControllerCache>: HIT at %s, ignoring to avoid UINavigationController exception", v20, 0xCu);
      v24 = v25;
      __swift_destroy_boxed_opaque_existential_1(v25);
      MEMORY[0x18D0110E0](v24, -1, -1);
      MEMORY[0x18D0110E0](v20, -1, -1);
    }

    (*(v17 + 8))(v11, v16);
  }

  return 1;
}

unint64_t lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<PlainButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>()
{
  result = lazy protocol witness table cache variable for type PrimitiveButtonStyleContainerModifier<PlainButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>;
  if (!lazy protocol witness table cache variable for type PrimitiveButtonStyleContainerModifier<PlainButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>)
  {
    type metadata accessor for VStack<TableHeaderViewCore>(255, &lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, lazy protocol witness table accessor for type PlainButtonStyle and conformance PlainButtonStyle, &type metadata for PlainButtonStyle, type metadata accessor for PrimitiveButtonStyleContainerModifier);
    result = swift_getWitnessTable(protocol conformance descriptor for PrimitiveButtonStyleContainerModifier<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type PrimitiveButtonStyleContainerModifier<PlainButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>);
  }

  return result;
}

void type metadata accessor for VStack<TableHeaderViewCore>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _PreferenceTransformModifier<OutlineRootConfiguration.Key> and conformance _PreferenceTransformModifier<A>()
{
  result = lazy protocol witness table cache variable for type _PreferenceTransformModifier<OutlineRootConfiguration.Key> and conformance _PreferenceTransformModifier<A>;
  if (!lazy protocol witness table cache variable for type _PreferenceTransformModifier<OutlineRootConfiguration.Key> and conformance _PreferenceTransformModifier<A>)
  {
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v5VGMaTm_3(255, &lazy cache variable for type metadata for _PreferenceTransformModifier<OutlineRootConfiguration.Key>, &type metadata for OutlineRootConfiguration.Key, &protocol witness table for OutlineRootConfiguration.Key, MEMORY[0x1E6980910]);
    result = swift_getWitnessTable(MEMORY[0x1E6980918], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _PreferenceTransformModifier<OutlineRootConfiguration.Key> and conformance _PreferenceTransformModifier<A>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>)
  {
    type metadata accessor for Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>(255);
    type metadata accessor for _ContentShapeKindModifier<Rectangle>(255, &lazy cache variable for type metadata for PrimitiveButtonStyleContainerModifier<PlainButtonStyle>, lazy protocol witness table accessor for type PlainButtonStyle and conformance PlainButtonStyle, &type metadata for PlainButtonStyle, type metadata accessor for PrimitiveButtonStyleContainerModifier);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type Set<NavigationStackHostingController<AnyView>> and conformance Set<A>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _sShy7SwiftUI32NavigationStackHostingControllerCyAA7AnyViewVGGShyxGSTsWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PartialRangeFrom<Int> and conformance <> PartialRangeFrom<A>()
{
  result = lazy protocol witness table cache variable for type PartialRangeFrom<Int> and conformance <> PartialRangeFrom<A>;
  if (!lazy protocol witness table cache variable for type PartialRangeFrom<Int> and conformance <> PartialRangeFrom<A>)
  {
    v6[4] = v0;
    v6[5] = v1;
    type metadata accessor for PartialRangeFrom<Int>();
    v4 = v3;
    v5 = lazy protocol witness table accessor for type Int and conformance Int();
    v6[0] = MEMORY[0x1E69E6570];
    v6[1] = v5;
    result = swift_getWitnessTable(MEMORY[0x1E69E6D10], v4, v6);
    atomic_store(result, &lazy protocol witness table cache variable for type PartialRangeFrom<Int> and conformance <> PartialRangeFrom<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Int and conformance Int()
{
  result = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    result = swift_getWitnessTable(MEMORY[0x1E69E6558], MEMORY[0x1E69E6530], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Int and conformance Int);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    result = swift_getWitnessTable(MEMORY[0x1E69E6578], MEMORY[0x1E69E6530], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Int and conformance Int);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    result = swift_getWitnessTable(MEMORY[0x1E69E6588], MEMORY[0x1E69E6530], v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type Int and conformance Int);
  }

  return result;
}

void type metadata accessor for PartialRangeFrom<Int>()
{
  if (!lazy cache variable for type metadata for PartialRangeFrom<Int>)
  {
    v0 = type metadata accessor for PartialRangeFrom();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for PartialRangeFrom<Int>);
    }
  }
}

void type metadata accessor for ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>)
  {
    type metadata accessor for HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>(255);
    type metadata accessor for _ContentShapeKindModifier<Rectangle>(255, &lazy cache variable for type metadata for _ContentShapeKindModifier<Rectangle>, lazy protocol witness table accessor for type Rectangle and conformance Rectangle, MEMORY[0x1E6981EF8], MEMORY[0x1E69805E0]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>> and conformance HStack<A>, type metadata accessor for HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, MEMORY[0x1E69817F8]);
    v5[1] = lazy protocol witness table accessor for type _ContentShapeKindModifier<Rectangle> and conformance _ContentShapeKindModifier<A>();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void specialized mustRemove #1 <A>(_:from:) in NavigationHostingControllerCache_UIKit._viewControllers<A>(forEntering:isBorrowing:request:insert:)(void *a1, void *a2, uint64_t *a3)
{
  swift_beginAccess();
  if (!*a3)
  {
    v27 = MEMORY[0x1E69E7CD0];
    specialized Set._Variant.insert(_:)(v26, a1);

    _s2os6LoggerVSgMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(UINavigationController, Set<NavigationStackHostingController<AnyView>>)>, type metadata accessor for (UINavigationController, Set<NavigationStackHostingController<AnyView>>), MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_18CD63400;
    *(inited + 32) = a2;
    *(inited + 40) = v27;
    v21 = a2;
    v22 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo22UINavigationControllerC_Shy7SwiftUI022NavigationStackHostingD0CyAE7AnyViewVGGTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of (UINavigationController, Set<NavigationStackHostingController<AnyView>>)(inited + 32, type metadata accessor for (UINavigationController, Set<NavigationStackHostingController<AnyView>>));
    swift_beginAccess();
    *a3 = v22;
LABEL_13:

    return;
  }

  if (!*(*a3 + 16) || (specialized __RawDictionaryStorage.find<A>(_:)(a2), (v7 & 1) == 0))
  {
    v27 = MEMORY[0x1E69E7CD0];
    specialized Set._Variant.insert(_:)(v26, a1);

    v17 = v27;
    swift_beginAccess();
    if (!*a3)
    {
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v18 = a2;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *a3;
    *a3 = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v17, v18, isUniquelyReferenced_nonNull_native);

    *a3 = v25;
    swift_endAccess();
    goto LABEL_13;
  }

  swift_beginAccess();
  if (!*a3)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v8 = swift_isUniquelyReferenced_nonNull_native();
  v9 = *a3;
  v24 = *a3;
  *a3 = 0x8000000000000000;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v12 = *(v9 + 16);
  v13 = (v10 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
    goto LABEL_22;
  }

  v3 = v10;
  if (*(v9 + 24) < v14)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, v8);
    v15 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v3 & 1) != (v16 & 1))
    {
LABEL_26:
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UINavigationController, 0x1E69DCCD8);
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }

    v11 = v15;
    if ((v3 & 1) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_17;
  }

  if ((v8 & 1) == 0)
  {
LABEL_22:
    specialized _NativeDictionary.copy()();
    if (v3)
    {
      goto LABEL_17;
    }

LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if ((v10 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_17:
  v23 = *(*(v24 + 56) + 8 * v11);
  specialized Set._Variant.insert(_:)(&v27, a1);
  if (v23)
  {
    *(*(v24 + 56) + 8 * v11) = v23;
  }

  else
  {

    specialized _NativeDictionary._delete(at:)(v11, v24);
  }

  *a3 = v24;
  swift_endAccess();
}

uint64_t specialized Set._Variant.insert(_:)(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v5VGMaTm_0(0, &lazy cache variable for type metadata for NavigationStackHostingController<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for NavigationStackHostingController);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC7SwiftUI32NavigationStackHostingControllerCyAG7AnyViewVG_Tt1g5(v7, result + 1);
    v20 = v19[2];
    if (v19[3] <= v20)
    {
      specialized _NativeSet.resize(capacity:)(v20 + 1);
    }

    v18 = v8;
    specialized _NativeSet._unsafeInsertNew(_:)(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v5VGMaTm_0(0, &lazy cache variable for type metadata for NavigationStackHostingController<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for NavigationStackHostingController);
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for BSAction, 0x1E698E5F0);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfCSo16UIOpenURLContextC_Tt1g5Tm(v7, result + 1, &lazy cache variable for type metadata for _SetStorage<BSAction>, &lazy cache variable for type metadata for BSAction, 0x1E698E5F0, &lazy protocol witness table cache variable for type BSAction and conformance NSObject);
    v20 = v19[2];
    if (v19[3] <= v20)
    {
      specialized _NativeSet.resize(capacity:)(v20 + 1, &lazy cache variable for type metadata for _SetStorage<BSAction>, &lazy cache variable for type metadata for BSAction, 0x1E698E5F0, &lazy protocol witness table cache variable for type BSAction and conformance NSObject);
    }

    v18 = v8;
    specialized _NativeSet._unsafeInsertNew(_:)(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for BSAction, 0x1E698E5F0);
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

unint64_t lazy protocol witness table accessor for type NavigationStackHostingController<AnyView> and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type NavigationStackHostingController<AnyView> and conformance NSObject;
  if (!lazy protocol witness table cache variable for type NavigationStackHostingController<AnyView> and conformance NSObject)
  {
    type metadata accessor for _PreferenceTransformModifier<SceneBridge.ActivationConditionsPreferenceKey>(255, &lazy cache variable for type metadata for NavigationStackHostingController<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for NavigationStackHostingController);
    result = swift_getWitnessTable(MEMORY[0x1E69E81B8], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type NavigationStackHostingController<AnyView> and conformance NSObject);
  }

  return result;
}

void type metadata accessor for _SetStorage<NavigationStackHostingController<AnyView>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _SetStorage<NavigationStackHostingController<AnyView>>)
  {
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v5VGMaTm_0(255, &lazy cache variable for type metadata for NavigationStackHostingController<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for NavigationStackHostingController);
    lazy protocol witness table accessor for type NavigationStackHostingController<AnyView> and conformance NSObject();
    v1 = type metadata accessor for _SetStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _SetStorage<NavigationStackHostingController<AnyView>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer)>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer)>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer)>>> and conformance <> _ConditionalContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer)>>>(255, &lazy cache variable for type metadata for _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer)>>>, type metadata accessor for ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, type metadata accessor for HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer)>>, MEMORY[0x1E697F960]);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>> and conformance <> ModifiedContent<A, B>();
    v5[1] = lazy protocol witness table accessor for type TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer)>> and conformance HStack<A>, type metadata accessor for HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer)>>, MEMORY[0x1E69817F8]);
    result = swift_getWitnessTable(MEMORY[0x1E697F968], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer)>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

void specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v6 + 1);
  }

  v8 = *v3;
  v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v5VGMaTm_0(0, &lazy cache variable for type metadata for NavigationStackHostingController<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for NavigationStackHostingController);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v6 + 1, &lazy cache variable for type metadata for _SetStorage<BSAction>, &lazy cache variable for type metadata for BSAction, 0x1E698E5F0, &lazy protocol witness table cache variable for type BSAction and conformance NSObject);
  }

  else
  {
    if (v7 > v6)
    {
      specialized _NativeSet.copy()(&lazy cache variable for type metadata for _SetStorage<BSAction>, &lazy cache variable for type metadata for BSAction, 0x1E698E5F0, &lazy protocol witness table cache variable for type BSAction and conformance NSObject);
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v6 + 1);
  }

  v8 = *v3;
  v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for BSAction, 0x1E698E5F0);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_13;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      specialized _NativeSet.copy()();
      goto LABEL_13;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v6 + 1);
  }

  v8 = *v3;
  Hasher.init(_seed:)();
  dispatch thunk of AnyColorBox.hash(into:)();
  v9 = Hasher._finalize()();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 8 * a2) != a1)
    {

      v12 = dispatch thunk of AnyShapeStyleBox.isEqual(to:)();

      if (v12)
      {
        break;
      }

      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_16;
  }

LABEL_13:
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 8 * a2) = a1;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (!v15)
  {
    *(v13 + 16) = v16;
    return;
  }

  __break(1u);
LABEL_16:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void type metadata accessor for (UINavigationController, Set<NavigationStackHostingController<AnyView>>)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (UINavigationController, Set<NavigationStackHostingController<AnyView>>))
  {
    type metadata accessor for NSObject(255, &lazy cache variable for type metadata for UINavigationController, 0x1E69DCCD8);
    type metadata accessor for Set<NavigationStackHostingController<AnyView>>(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (UINavigationController, Set<NavigationStackHostingController<AnyView>>));
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)> and conformance TupleView<A>(&lazy protocol witness table cache variable for type Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>> and conformance Button<A>, type metadata accessor for Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, protocol conformance descriptor for Button<A>);
    v5[1] = lazy protocol witness table accessor for type PrimitiveButtonStyleContainerModifier<PlainButtonStyle> and conformance PrimitiveButtonStyleContainerModifier<A>();
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for Set<NavigationStackHostingController<AnyView>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Set<NavigationStackHostingController<AnyView>>)
  {
    type metadata accessor for _PreferenceTransformModifier<SceneBridge.ActivationConditionsPreferenceKey>(255, &lazy cache variable for type metadata for NavigationStackHostingController<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for NavigationStackHostingController);
    lazy protocol witness table accessor for type NavigationStackHostingController<AnyView> and conformance NSObject();
    v1 = type metadata accessor for Set();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Set<NavigationStackHostingController<AnyView>>);
    }
  }
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo22UINavigationControllerC_Shy7SwiftUI022NavigationStackHostingD0CyAE7AnyViewVGGTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for _DictionaryStorage<UINavigationController, Set<NavigationStackHostingController<AnyView>>>(0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void type metadata accessor for _DictionaryStorage<UINavigationController, Set<NavigationStackHostingController<AnyView>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<UINavigationController, Set<NavigationStackHostingController<AnyView>>>)
  {
    type metadata accessor for NSObject(255, &lazy cache variable for type metadata for UINavigationController, 0x1E69DCCD8);
    type metadata accessor for Set<NavigationStackHostingController<AnyView>>(255);
    lazy protocol witness table accessor for type UIScene and conformance NSObject(&lazy protocol witness table cache variable for type UINavigationController and conformance NSObject, &lazy cache variable for type metadata for UINavigationController, 0x1E69DCCD8);
    v1 = type metadata accessor for _DictionaryStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _DictionaryStorage<UINavigationController, Set<NavigationStackHostingController<AnyView>>>);
    }
  }
}

uint64_t outlined destroy of (UINavigationController, Set<NavigationStackHostingController<AnyView>>)(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void type metadata accessor for ModifiedContent<SectionStyleConfiguration.Header, SectionStyleModifier<DefaultSectionStyle>>(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    _s7SwiftUI37PrimitiveButtonStyleContainerModifierVyAA016PlatformItemListdE0VGMaTm_1(255, &lazy cache variable for type metadata for SectionStyleModifier<DefaultSectionStyle>, lazy protocol witness table accessor for type DefaultSectionStyle and conformance DefaultSectionStyle, &type metadata for DefaultSectionStyle, type metadata accessor for SectionStyleModifier);
    v3 = type metadata accessor for ModifiedContent();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void type metadata accessor for _UIHostingView<AnyView>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E6981910], MEMORY[0x1E6981900]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for Section<ModifiedContent<SectionStyleConfiguration.Header, SectionStyleModifier<DefaultSectionStyle>>, TupleView<(ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<DefaultSectionStyle>>, ModifiedContent<ModifiedContent<SectionStyleConfiguration.Actions, _TraitWritingModifier<IsMoveDisabledTraitKey>>, _TraitWritingModifier<IsDeleteDisabledTraitKey>>)>, ModifiedContent<SectionStyleConfiguration.Footer, SectionStyleModifier<DefaultSectionStyle>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Section<ModifiedContent<SectionStyleConfiguration.Header, SectionStyleModifier<DefaultSectionStyle>>, TupleView<(ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<DefaultSectionStyle>>, ModifiedContent<ModifiedContent<SectionStyleConfiguration.Actions, _TraitWritingModifier<IsMoveDisabledTraitKey>>, _TraitWritingModifier<IsDeleteDisabledTraitKey>>)>, ModifiedContent<SectionStyleConfiguration.Footer, SectionStyleModifier<DefaultSectionStyle>>>)
  {
    type metadata accessor for ModifiedContent<SectionStyleConfiguration.Header, SectionStyleModifier<DefaultSectionStyle>>(255, &lazy cache variable for type metadata for ModifiedContent<SectionStyleConfiguration.Header, SectionStyleModifier<DefaultSectionStyle>>);
    v3 = v2;
    type metadata accessor for TupleView<(ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<DefaultSectionStyle>>, ModifiedContent<ModifiedContent<SectionStyleConfiguration.Actions, _TraitWritingModifier<IsMoveDisabledTraitKey>>, _TraitWritingModifier<IsDeleteDisabledTraitKey>>)>(255);
    v5 = v4;
    type metadata accessor for ModifiedContent<SectionStyleConfiguration.Header, SectionStyleModifier<DefaultSectionStyle>>(255, &lazy cache variable for type metadata for ModifiedContent<SectionStyleConfiguration.Footer, SectionStyleModifier<DefaultSectionStyle>>);
    v7 = type metadata accessor for Section(a1, v3, v5, v6);
    if (!v8)
    {
      atomic_store(v7, &lazy cache variable for type metadata for Section<ModifiedContent<SectionStyleConfiguration.Header, SectionStyleModifier<DefaultSectionStyle>>, TupleView<(ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<DefaultSectionStyle>>, ModifiedContent<ModifiedContent<SectionStyleConfiguration.Actions, _TraitWritingModifier<IsMoveDisabledTraitKey>>, _TraitWritingModifier<IsDeleteDisabledTraitKey>>)>, ModifiedContent<SectionStyleConfiguration.Footer, SectionStyleModifier<DefaultSectionStyle>>>);
    }
  }
}

void type metadata accessor for ModifiedContent<Section<ModifiedContent<SectionStyleConfiguration.Header, SectionStyleModifier<DefaultSectionStyle>>, TupleView<(ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<DefaultSectionStyle>>, ModifiedContent<ModifiedContent<SectionStyleConfiguration.Actions, _TraitWritingModifier<IsMoveDisabledTraitKey>>, _TraitWritingModifier<IsDeleteDisabledTraitKey>>)>, ModifiedContent<SectionStyleConfiguration.Footer, SectionStyleModifier<DefaultSectionStyle>>>, SectionStyleModifier<PlainSectionStyle>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<Section<ModifiedContent<SectionStyleConfiguration.Header, SectionStyleModifier<DefaultSectionStyle>>, TupleView<(ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<DefaultSectionStyle>>, ModifiedContent<ModifiedContent<SectionStyleConfiguration.Actions, _TraitWritingModifier<IsMoveDisabledTraitKey>>, _TraitWritingModifier<IsDeleteDisabledTraitKey>>)>, ModifiedContent<SectionStyleConfiguration.Footer, SectionStyleModifier<DefaultSectionStyle>>>, SectionStyleModifier<PlainSectionStyle>>)
  {
    type metadata accessor for Section<ModifiedContent<SectionStyleConfiguration.Header, SectionStyleModifier<DefaultSectionStyle>>, TupleView<(ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<DefaultSectionStyle>>, ModifiedContent<ModifiedContent<SectionStyleConfiguration.Actions, _TraitWritingModifier<IsMoveDisabledTraitKey>>, _TraitWritingModifier<IsDeleteDisabledTraitKey>>)>, ModifiedContent<SectionStyleConfiguration.Footer, SectionStyleModifier<DefaultSectionStyle>>>(255);
    _s7SwiftUI37PrimitiveButtonStyleContainerModifierVyAA016PlatformItemListdE0VGMaTm_1(255, &lazy cache variable for type metadata for SectionStyleModifier<PlainSectionStyle>, lazy protocol witness table accessor for type PlainSectionStyle and conformance PlainSectionStyle, &type metadata for PlainSectionStyle, type metadata accessor for SectionStyleModifier);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<Section<ModifiedContent<SectionStyleConfiguration.Header, SectionStyleModifier<DefaultSectionStyle>>, TupleView<(ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<DefaultSectionStyle>>, ModifiedContent<ModifiedContent<SectionStyleConfiguration.Actions, _TraitWritingModifier<IsMoveDisabledTraitKey>>, _TraitWritingModifier<IsDeleteDisabledTraitKey>>)>, ModifiedContent<SectionStyleConfiguration.Footer, SectionStyleModifier<DefaultSectionStyle>>>, SectionStyleModifier<PlainSectionStyle>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Section<ModifiedContent<SectionStyleConfiguration.Header, SectionStyleModifier<DefaultSectionStyle>>, TupleView<(ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<DefaultSectionStyle>>, ModifiedContent<ModifiedContent<SectionStyleConfiguration.Actions, _TraitWritingModifier<IsMoveDisabledTraitKey>>, _TraitWritingModifier<IsDeleteDisabledTraitKey>>)>, ModifiedContent<SectionStyleConfiguration.Footer, SectionStyleModifier<DefaultSectionStyle>>>, SectionStyleModifier<PlainSectionStyle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Section<ModifiedContent<SectionStyleConfiguration.Header, SectionStyleModifier<DefaultSectionStyle>>, TupleView<(ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<DefaultSectionStyle>>, ModifiedContent<ModifiedContent<SectionStyleConfiguration.Actions, _TraitWritingModifier<IsMoveDisabledTraitKey>>, _TraitWritingModifier<IsDeleteDisabledTraitKey>>)>, ModifiedContent<SectionStyleConfiguration.Footer, SectionStyleModifier<DefaultSectionStyle>>>, SectionStyleModifier<PlainSectionStyle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Section<ModifiedContent<SectionStyleConfiguration.Header, SectionStyleModifier<DefaultSectionStyle>>, TupleView<(ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<DefaultSectionStyle>>, ModifiedContent<ModifiedContent<SectionStyleConfiguration.Actions, _TraitWritingModifier<IsMoveDisabledTraitKey>>, _TraitWritingModifier<IsDeleteDisabledTraitKey>>)>, ModifiedContent<SectionStyleConfiguration.Footer, SectionStyleModifier<DefaultSectionStyle>>>, SectionStyleModifier<PlainSectionStyle>> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<Section<ModifiedContent<SectionStyleConfiguration.Header, SectionStyleModifier<DefaultSectionStyle>>, TupleView<(ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<DefaultSectionStyle>>, ModifiedContent<ModifiedContent<SectionStyleConfiguration.Actions, _TraitWritingModifier<IsMoveDisabledTraitKey>>, _TraitWritingModifier<IsDeleteDisabledTraitKey>>)>, ModifiedContent<SectionStyleConfiguration.Footer, SectionStyleModifier<DefaultSectionStyle>>>, SectionStyleModifier<PlainSectionStyle>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type Section<ModifiedContent<SectionStyleConfiguration.Header, SectionStyleModifier<DefaultSectionStyle>>, TupleView<(ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<DefaultSectionStyle>>, ModifiedContent<ModifiedContent<SectionStyleConfiguration.Actions, _TraitWritingModifier<IsMoveDisabledTraitKey>>, _TraitWritingModifier<IsDeleteDisabledTraitKey>>)>, ModifiedContent<SectionStyleConfiguration.Footer, SectionStyleModifier<DefaultSectionStyle>>> and conformance <> Section<A, B, C>();
    v5[1] = &protocol witness table for SectionStyleModifier<A>;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Section<ModifiedContent<SectionStyleConfiguration.Header, SectionStyleModifier<DefaultSectionStyle>>, TupleView<(ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<DefaultSectionStyle>>, ModifiedContent<ModifiedContent<SectionStyleConfiguration.Actions, _TraitWritingModifier<IsMoveDisabledTraitKey>>, _TraitWritingModifier<IsDeleteDisabledTraitKey>>)>, ModifiedContent<SectionStyleConfiguration.Footer, SectionStyleModifier<DefaultSectionStyle>>>, SectionStyleModifier<PlainSectionStyle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t specialized BidirectionalCollection.suffix(_:)(uint64_t result, unint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
LABEL_30:
    v11 = result;
    v5 = __CocoaSet.count.getter();
    result = v11;
    v6 = -v5;
    if (!__OFSUB__(0, v5))
    {
      goto LABEL_4;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v3 = a2;
  v4 = a2 >> 62;
  if (a2 >> 62)
  {
    goto LABEL_30;
  }

  v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v6 = -v5;
  if (__OFSUB__(0, v5))
  {
    goto LABEL_32;
  }

LABEL_4:
  v7 = -result;
  if (v6 > 0 || v6 <= v7)
  {
    v8 = v5 - result;
    if (__OFADD__(v5, v7))
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    if (v5 < v8)
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    if (!v4)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (v5 < 0)
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v8 = 0;
    if (!v4)
    {
LABEL_8:
      result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_13;
    }
  }

  result = __CocoaSet.count.getter();
LABEL_13:
  if (result < v8)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v8 < 0)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v4)
  {
    result = __CocoaSet.count.getter();
  }

  else
  {
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < v5)
  {
    goto LABEL_35;
  }

  if (v5 < 0)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if ((v3 & 0xC000000000000001) == 0 || v8 == v5)
  {

    if (!v4)
    {
      return v3 & 0xFFFFFFFFFFFFFF8;
    }

    goto LABEL_28;
  }

  if (v8 < v5)
  {
    type metadata accessor for _UIHostingView<AnyView>(0, &lazy cache variable for type metadata for NavigationStackHostingController<AnyView>, type metadata accessor for NavigationStackHostingController);

    v9 = v8;
    do
    {
      v10 = v9 + 1;
      _ArrayBuffer._typeCheckSlowPath(_:)(v9);
      v9 = v10;
    }

    while (v5 != v10);
    if (!v4)
    {
      return v3 & 0xFFFFFFFFFFFFFF8;
    }

LABEL_28:

    return _CocoaArrayWrapper.subscript.getter();
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t specialized Collection.dropLast(_:)(uint64_t result, unint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v3 = a2;
  v4 = a2 >> 62;
  if (a2 >> 62)
  {
LABEL_13:
    v9 = result;
    result = __CocoaSet.count.getter();
    v10 = result - v9;
    if (__OFSUB__(result, v9))
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v11 = __CocoaSet.count.getter();
    result = __CocoaSet.count.getter();
    if (result < 0)
    {
LABEL_27:
      __break(1u);
      return result;
    }

    if (v10 <= v11)
    {
      v12 = v10 & ~(v10 >> 63);
    }

    else
    {
      v12 = v11;
    }

    if (v11 < 0 || v10 < 1)
    {
      v6 = v10 & ~(v10 >> 63);
    }

    else
    {
      v6 = v12;
    }

    result = __CocoaSet.count.getter();
    if (result >= v6)
    {
      goto LABEL_4;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v6 = (v5 - result) & ~((v5 - result) >> 63);
  if (v5 < v6)
  {
    goto LABEL_25;
  }

LABEL_4:
  if ((v3 & 0xC000000000000001) != 0 && v6)
  {
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v6VGMaTm_0(0, &lazy cache variable for type metadata for NavigationStackHostingController<AnyView>, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for NavigationStackHostingController);

    v7 = 0;
    do
    {
      v8 = v7 + 1;
      _ArrayBuffer._typeCheckSlowPath(_:)(v7);
      v7 = v8;
    }

    while (v6 != v8);
    if (!v4)
    {
      return v3 & 0xFFFFFFFFFFFFFF8;
    }
  }

  else
  {

    if (!v4)
    {
      return v3 & 0xFFFFFFFFFFFFFF8;
    }
  }

  return _CocoaArrayWrapper.subscript.getter();
}

void type metadata accessor for TupleView<(ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<DefaultSectionStyle>>, ModifiedContent<ModifiedContent<SectionStyleConfiguration.Actions, _TraitWritingModifier<IsMoveDisabledTraitKey>>, _TraitWritingModifier<IsDeleteDisabledTraitKey>>)>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TupleView<(ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<DefaultSectionStyle>>, ModifiedContent<ModifiedContent<SectionStyleConfiguration.Actions, _TraitWritingModifier<IsMoveDisabledTraitKey>>, _TraitWritingModifier<IsDeleteDisabledTraitKey>>)>)
  {
    type metadata accessor for (ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<DefaultSectionStyle>>, ModifiedContent<ModifiedContent<SectionStyleConfiguration.Actions, _TraitWritingModifier<IsMoveDisabledTraitKey>>, _TraitWritingModifier<IsDeleteDisabledTraitKey>>)(255);
    v1 = type metadata accessor for TupleView();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for TupleView<(ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<DefaultSectionStyle>>, ModifiedContent<ModifiedContent<SectionStyleConfiguration.Actions, _TraitWritingModifier<IsMoveDisabledTraitKey>>, _TraitWritingModifier<IsDeleteDisabledTraitKey>>)>);
    }
  }
}

void specialized FlattenSequence.Iterator.next()(id result)
{
  v2 = v1;
  v3 = v1[7];
  v4 = MEMORY[0x1E6981910];
  v5 = MEMORY[0x1E6981900];
  while (1)
  {
    if ((~v3 & 0xF000000000000007) == 0)
    {
      goto LABEL_23;
    }

    if ((v3 & 0x8000000000000000) == 0)
    {
      break;
    }

    v16 = __CocoaSet.Iterator.next()();
    if (!v16)
    {
      goto LABEL_23;
    }

    v31 = v16;
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v6VGMaTm_0(0, &lazy cache variable for type metadata for NavigationStackHostingController<AnyView>, v4, v5, type metadata accessor for NavigationStackHostingController);
    swift_dynamicCast();
    v17 = v32[0];
LABEL_22:
    if (v17)
    {
      return;
    }

LABEL_23:
    v23 = v2[3];
    v24 = v2[4];
    if (!v24)
    {
      v26 = (v2[2] + 64) >> 6;
      v27 = v2[3];
      while (1)
      {
        v25 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          __break(1u);
          goto LABEL_38;
        }

        if (v25 >= v26)
        {
          break;
        }

        v24 = *(v2[1] + 8 * v25);
        ++v27;
        if (v24)
        {
          goto LABEL_29;
        }
      }

      if (v26 <= v23 + 1)
      {
        v30 = v23 + 1;
      }

      else
      {
        v30 = (v2[2] + 64) >> 6;
      }

      v2[3] = v30 - 1;
      v2[4] = 0;
      return;
    }

    v25 = v2[3];
LABEL_29:
    v28 = *(*(*v2 + 56) + ((v25 << 9) | (8 * __clz(__rbit64(v24)))));
    v2[3] = v25;
    v2[4] = (v24 - 1) & v24;
    v29 = v2[5];
    v32[0] = v28;

    v29(&v31, v32);

    v3 = v31;
    if ((v31 & 0xC000000000000001) != 0)
    {
      __CocoaSet.makeIterator()();
      _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v6VGMaTm_0(0, &lazy cache variable for type metadata for NavigationStackHostingController<AnyView>, v4, v5, type metadata accessor for NavigationStackHostingController);
      lazy protocol witness table accessor for type NavigationStackHostingController<AnyView> and conformance NSObject();
      Set.Iterator.init(_cocoa:)();
      v3 = v32[1];
      v8 = v32[2];
      v9 = v32[3];
      v6 = v32[4];
      v12 = v32[5];
    }

    else
    {
      v6 = 0;
      v7 = -1 << *(v31 + 32);
      v8 = v31 + 56;
      v9 = ~v7;
      v10 = -v7;
      if (v10 < 64)
      {
        v11 = ~(-1 << v10);
      }

      else
      {
        v11 = -1;
      }

      v12 = v11 & *(v31 + 56);
    }

    outlined consume of Set<NavigationStackHostingController<AnyView>>.Iterator?(v2[7]);
    v2[7] = v3;
    v2[8] = v8;
    v2[9] = v9;
    v2[10] = v6;
    v2[11] = v12;
  }

  v13 = v2[10];
  v14 = v2[11];
  if (v14)
  {
    v15 = v2[10];
LABEL_20:
    v21 = (v14 - 1) & v14;
    v17 = *(*(v3 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    v22 = v17;
    v20 = v15;
LABEL_21:
    v2[10] = v20;
    v2[11] = v21;
    goto LABEL_22;
  }

  v18 = (v2[9] + 64) >> 6;
  if (v18 <= v13 + 1)
  {
    v19 = v13 + 1;
  }

  else
  {
    v19 = (v2[9] + 64) >> 6;
  }

  v20 = v19 - 1;
  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v18)
    {
      v17 = 0;
      v21 = 0;
      goto LABEL_21;
    }

    v14 = *(v2[8] + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_20;
    }
  }

LABEL_38:
  __break(1u);
}

void type metadata accessor for ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<DefaultSectionStyle>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<DefaultSectionStyle>>)
  {
    type metadata accessor for _TraitWritingModifier<SectionActionsTraitKey>(255, &lazy cache variable for type metadata for _ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, &type metadata for SectionStyleConfiguration.RawContent, MEMORY[0x1E6981E70], MEMORY[0x1E697F960]);
    _s7SwiftUI37PrimitiveButtonStyleContainerModifierVyAA016PlatformItemListdE0VGMaTm_1(255, &lazy cache variable for type metadata for SectionStyleModifier<DefaultSectionStyle>, lazy protocol witness table accessor for type DefaultSectionStyle and conformance DefaultSectionStyle, &type metadata for DefaultSectionStyle, type metadata accessor for SectionStyleModifier);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<DefaultSectionStyle>>);
    }
  }
}

void type metadata accessor for (ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<DefaultSectionStyle>>, ModifiedContent<ModifiedContent<SectionStyleConfiguration.Actions, _TraitWritingModifier<IsMoveDisabledTraitKey>>, _TraitWritingModifier<IsDeleteDisabledTraitKey>>)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<DefaultSectionStyle>>, ModifiedContent<ModifiedContent<SectionStyleConfiguration.Actions, _TraitWritingModifier<IsMoveDisabledTraitKey>>, _TraitWritingModifier<IsDeleteDisabledTraitKey>>))
  {
    type metadata accessor for ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<DefaultSectionStyle>>(255);
    type metadata accessor for ModifiedContent<ModifiedContent<SectionStyleConfiguration.Actions, _TraitWritingModifier<IsMoveDisabledTraitKey>>, _TraitWritingModifier<IsDeleteDisabledTraitKey>>(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<DefaultSectionStyle>>, ModifiedContent<ModifiedContent<SectionStyleConfiguration.Actions, _TraitWritingModifier<IsMoveDisabledTraitKey>>, _TraitWritingModifier<IsDeleteDisabledTraitKey>>));
    }
  }
}

double closure #2 in NavigationHostingControllerCache_UIKit._viewControllers<A>(forEntering:isBorrowing:request:insert:)@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  *a2 = *a1;

  return result;
}

void type metadata accessor for _TraitWritingModifier<SectionActionsTraitKey>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t outlined consume of Set<NavigationStackHostingController<AnyView>>.Iterator?(uint64_t a1)
{
  if ((~a1 & 0xF000000000000007) != 0)
  {
    return outlined consume of Set<UIPress>.Iterator._Variant(a1);
  }

  return a1;
}

void type metadata accessor for ModifiedContent<SectionStyleConfiguration.Actions, _TraitWritingModifier<IsMoveDisabledTraitKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<SectionStyleConfiguration.Actions, _TraitWritingModifier<IsMoveDisabledTraitKey>>)
  {
    type metadata accessor for _TraitWritingModifier<SectionActionsTraitKey>(255, &lazy cache variable for type metadata for _TraitWritingModifier<IsMoveDisabledTraitKey>, &type metadata for IsMoveDisabledTraitKey, &protocol witness table for IsMoveDisabledTraitKey, MEMORY[0x1E697FDB8]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<SectionStyleConfiguration.Actions, _TraitWritingModifier<IsMoveDisabledTraitKey>>);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<SectionStyleConfiguration.Actions, _TraitWritingModifier<IsMoveDisabledTraitKey>>, _TraitWritingModifier<IsDeleteDisabledTraitKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<SectionStyleConfiguration.Actions, _TraitWritingModifier<IsMoveDisabledTraitKey>>, _TraitWritingModifier<IsDeleteDisabledTraitKey>>)
  {
    type metadata accessor for ModifiedContent<SectionStyleConfiguration.Actions, _TraitWritingModifier<IsMoveDisabledTraitKey>>(255);
    type metadata accessor for _TraitWritingModifier<SectionActionsTraitKey>(255, &lazy cache variable for type metadata for _TraitWritingModifier<IsDeleteDisabledTraitKey>, &type metadata for IsDeleteDisabledTraitKey, &protocol witness table for IsDeleteDisabledTraitKey, MEMORY[0x1E697FDB8]);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<SectionStyleConfiguration.Actions, _TraitWritingModifier<IsMoveDisabledTraitKey>>, _TraitWritingModifier<IsDeleteDisabledTraitKey>>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type Section<ModifiedContent<SectionStyleConfiguration.Header, SectionStyleModifier<DefaultSectionStyle>>, TupleView<(ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<DefaultSectionStyle>>, ModifiedContent<ModifiedContent<SectionStyleConfiguration.Actions, _TraitWritingModifier<IsMoveDisabledTraitKey>>, _TraitWritingModifier<IsDeleteDisabledTraitKey>>)>, ModifiedContent<SectionStyleConfiguration.Footer, SectionStyleModifier<DefaultSectionStyle>>> and conformance <> Section<A, B, C>()
{
  result = lazy protocol witness table cache variable for type Section<ModifiedContent<SectionStyleConfiguration.Header, SectionStyleModifier<DefaultSectionStyle>>, TupleView<(ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<DefaultSectionStyle>>, ModifiedContent<ModifiedContent<SectionStyleConfiguration.Actions, _TraitWritingModifier<IsMoveDisabledTraitKey>>, _TraitWritingModifier<IsDeleteDisabledTraitKey>>)>, ModifiedContent<SectionStyleConfiguration.Footer, SectionStyleModifier<DefaultSectionStyle>>> and conformance <> Section<A, B, C>;
  if (!lazy protocol witness table cache variable for type Section<ModifiedContent<SectionStyleConfiguration.Header, SectionStyleModifier<DefaultSectionStyle>>, TupleView<(ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<DefaultSectionStyle>>, ModifiedContent<ModifiedContent<SectionStyleConfiguration.Actions, _TraitWritingModifier<IsMoveDisabledTraitKey>>, _TraitWritingModifier<IsDeleteDisabledTraitKey>>)>, ModifiedContent<SectionStyleConfiguration.Footer, SectionStyleModifier<DefaultSectionStyle>>> and conformance <> Section<A, B, C>)
  {
    v5[7] = v0;
    v5[8] = v1;
    type metadata accessor for Section<ModifiedContent<SectionStyleConfiguration.Header, SectionStyleModifier<DefaultSectionStyle>>, TupleView<(ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<DefaultSectionStyle>>, ModifiedContent<ModifiedContent<SectionStyleConfiguration.Actions, _TraitWritingModifier<IsMoveDisabledTraitKey>>, _TraitWritingModifier<IsDeleteDisabledTraitKey>>)>, ModifiedContent<SectionStyleConfiguration.Footer, SectionStyleModifier<DefaultSectionStyle>>>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type ModifiedContent<SectionStyleConfiguration.Header, SectionStyleModifier<DefaultSectionStyle>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<SectionStyleConfiguration.Header, SectionStyleModifier<DefaultSectionStyle>> and conformance <> ModifiedContent<A, B>, &lazy cache variable for type metadata for ModifiedContent<SectionStyleConfiguration.Header, SectionStyleModifier<DefaultSectionStyle>>, &type metadata for SectionStyleConfiguration.Header, &protocol witness table for SectionStyleConfiguration.Header);
    v5[1] = lazy protocol witness table accessor for type TupleView<(ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<DefaultSectionStyle>>, ModifiedContent<ModifiedContent<SectionStyleConfiguration.Actions, _TraitWritingModifier<IsMoveDisabledTraitKey>>, _TraitWritingModifier<IsDeleteDisabledTraitKey>>)> and conformance TupleView<A>();
    v5[2] = lazy protocol witness table accessor for type ModifiedContent<SectionStyleConfiguration.Header, SectionStyleModifier<DefaultSectionStyle>> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<SectionStyleConfiguration.Footer, SectionStyleModifier<DefaultSectionStyle>> and conformance <> ModifiedContent<A, B>, &lazy cache variable for type metadata for ModifiedContent<SectionStyleConfiguration.Footer, SectionStyleModifier<DefaultSectionStyle>>, &type metadata for SectionStyleConfiguration.Footer, &protocol witness table for SectionStyleConfiguration.Footer);
    result = swift_getWitnessTable(protocol conformance descriptor for <> Section<A, B, C>, v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type Section<ModifiedContent<SectionStyleConfiguration.Header, SectionStyleModifier<DefaultSectionStyle>>, TupleView<(ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<DefaultSectionStyle>>, ModifiedContent<ModifiedContent<SectionStyleConfiguration.Actions, _TraitWritingModifier<IsMoveDisabledTraitKey>>, _TraitWritingModifier<IsDeleteDisabledTraitKey>>)>, ModifiedContent<SectionStyleConfiguration.Footer, SectionStyleModifier<DefaultSectionStyle>>> and conformance <> Section<A, B, C>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<SectionStyleConfiguration.Header, SectionStyleModifier<DefaultSectionStyle>> and conformance <> ModifiedContent<A, B>(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ModifiedContent<SectionStyleConfiguration.Header, SectionStyleModifier<DefaultSectionStyle>>(255, a2);
    v8[0] = a4;
    v8[1] = &protocol witness table for SectionStyleModifier<A>;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v7, v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TupleView<(ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<DefaultSectionStyle>>, ModifiedContent<ModifiedContent<SectionStyleConfiguration.Actions, _TraitWritingModifier<IsMoveDisabledTraitKey>>, _TraitWritingModifier<IsDeleteDisabledTraitKey>>)> and conformance TupleView<A>()
{
  result = lazy protocol witness table cache variable for type TupleView<(ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<DefaultSectionStyle>>, ModifiedContent<ModifiedContent<SectionStyleConfiguration.Actions, _TraitWritingModifier<IsMoveDisabledTraitKey>>, _TraitWritingModifier<IsDeleteDisabledTraitKey>>)> and conformance TupleView<A>;
  if (!lazy protocol witness table cache variable for type TupleView<(ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<DefaultSectionStyle>>, ModifiedContent<ModifiedContent<SectionStyleConfiguration.Actions, _TraitWritingModifier<IsMoveDisabledTraitKey>>, _TraitWritingModifier<IsDeleteDisabledTraitKey>>)> and conformance TupleView<A>)
  {
    type metadata accessor for TupleView<(ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<DefaultSectionStyle>>, ModifiedContent<ModifiedContent<SectionStyleConfiguration.Actions, _TraitWritingModifier<IsMoveDisabledTraitKey>>, _TraitWritingModifier<IsDeleteDisabledTraitKey>>)>(255);
    result = swift_getWitnessTable(MEMORY[0x1E6981F48], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TupleView<(ModifiedContent<_ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, SectionStyleModifier<DefaultSectionStyle>>, ModifiedContent<ModifiedContent<SectionStyleConfiguration.Actions, _TraitWritingModifier<IsMoveDisabledTraitKey>>, _TraitWritingModifier<IsDeleteDisabledTraitKey>>)> and conformance TupleView<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UINavigationController and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type UINavigationController and conformance NSObject;
  if (!lazy protocol witness table cache variable for type UINavigationController and conformance NSObject)
  {
    v3 = type metadata accessor for NSObject(255, &lazy cache variable for type metadata for UINavigationController, 0x1E69DCCD8);
    result = swift_getWitnessTable(MEMORY[0x1E69E81B8], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type UINavigationController and conformance NSObject);
  }

  return result;
}

void specialized NavigationHostingControllerCache_UIKit.updateUnusedRoots(_:transaction:)(uint64_t a1)
{
  v2 = v1;
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  while (v7)
  {
LABEL_10:
    v11 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v12 = *(*(a1 + 48) + (v11 | (v9 << 6)));
    if (v12 < 3)
    {
      swift_beginAccess();
      v13 = *(v2 + 16);
      if (*(v13 + 16) && (v14 = specialized __RawDictionaryStorage.find<A>(_:)(v12, 0), (v15 & 1) != 0))
      {
        v16 = *(*(v13 + 56) + 8 * v14);
        swift_endAccess();
        if (!*(a1 + 16))
        {
          goto LABEL_20;
        }

        v17 = specialized __RawDictionaryStorage.find<A>(_:)(v12);
        if ((v18 & 1) == 0)
        {
          goto LABEL_21;
        }

        outlined init with copy of NavigationState.StackContent.PositionedView(*(a1 + 56) + 96 * v17, v30);
        v19 = v30[0];
        v20 = v16;
        v29 = v19;

        outlined destroy of NavigationState.StackContent.PositionedView(v30);
        v21 = [v20 viewIfLoaded];
        v22 = [v21 window];

        if (v22)
        {

          v23 = *((*MEMORY[0x1E69E7D40] & *v20) + 0x400);
          swift_beginAccess();
          *(v20 + v23) = v29;
        }

        else
        {
          v28 = direct field offset for UIHostingController.host;
          v24 = *(v20 + direct field offset for UIHostingController.host);
          v25 = *((*MEMORY[0x1E69E7D40] & *v24) + 0x60);
          swift_beginAccess();
          *(v24 + v25) = v29;
          v27 = v24;

          type metadata accessor for _UIHostingView<AnyView>(0, &lazy cache variable for type metadata for _UIHostingView<AnyView>, type metadata accessor for _UIHostingView);
          lazy protocol witness table accessor for type _UIHostingView<AnyView> and conformance _UIHostingView<A>(&lazy protocol witness table cache variable for type _UIHostingView<AnyView> and conformance _UIHostingView<A>, &lazy cache variable for type metadata for _UIHostingView<AnyView>, type metadata accessor for _UIHostingView, protocol conformance descriptor for _UIHostingView<A>);

          ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();

          v26 = *(v20 + v28);
          ViewGraphRootValueUpdater.render(interval:updateDisplayList:targetTimestamp:)();
        }
      }

      else
      {
        swift_endAccess();
      }
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v8)
    {

      return;
    }

    v7 = *(v4 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

void type metadata accessor for _VariadicView.Tree<SectionContainer, _ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _VariadicView.Tree<SectionContainer, _ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>>)
  {
    _s7SwiftUI29_TraitWritingTableRowModifierVyAA08DropOntoC3KeyVGMaTm_0(255, &lazy cache variable for type metadata for _ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>, &type metadata for SectionStyleConfiguration.RawContent, MEMORY[0x1E6981E70], MEMORY[0x1E697F960]);
    v1 = type metadata accessor for _VariadicView.Tree();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _VariadicView.Tree<SectionContainer, _ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>>);
    }
  }
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance StyledView(int *a1, uint64_t a2)
{
  type metadata accessor for _VariadicView.Tree<SectionContainer, _ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>>(0);
  protocol witness for static PreferenceKey._includesRemovedValues.getter in conformance AccessibilityLargeContentViewTree.Key();
  lazy protocol witness table accessor for type SectionBody and conformance SectionBody();
  Attribute.init<A>(body:value:flags:update:)();
  lazy protocol witness table accessor for type _VariadicView.Tree<SectionContainer, _ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>> and conformance <> _VariadicView.Tree<A, B>();
  return static View.makeDebuggableViewList(view:inputs:)();
}

unint64_t lazy protocol witness table accessor for type SectionBody and conformance SectionBody()
{
  result = lazy protocol witness table cache variable for type SectionBody and conformance SectionBody;
  if (!lazy protocol witness table cache variable for type SectionBody and conformance SectionBody)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SectionBody, &unk_1F0011378, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SectionBody and conformance SectionBody);
  }

  return result;
}

void *assignWithCopy for ToolbarStorage.SearchItem(void *a1, void *a2, int *a3)
{
  *a1 = *a2;

  a1[1] = a2[1];

  _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for Binding<SearchFieldState>, type metadata accessor for SearchFieldState, MEMORY[0x1E6981948]);
  v7 = *(v6 + 32);
  v8 = a1 + v7;
  v9 = a2 + v7;
  *v8 = *(a2 + v7);
  v8[1] = *(a2 + v7 + 1);
  v8[2] = *(a2 + v7 + 2);
  v8[3] = *(a2 + v7 + 3);
  LODWORD(v7) = *(a2 + v7 + 4);
  v8[8] = v9[8];
  *(v8 + 1) = v7;
  v10 = type metadata accessor for SearchFieldState(0);
  v11 = v10[9];
  v12 = type metadata accessor for AttributedString();
  (*(*(v12 - 8) + 24))(&v8[v11], &v9[v11], v12);
  v8[v10[10]] = v9[v10[10]];
  v13 = v10[11];
  v14 = &v8[v13];
  v15 = &v9[v13];
  *v14 = *v15;
  v14[4] = v15[4];
  *(a1 + a3[5]) = *(a2 + a3[5]);

  v16 = a3[6];
  v17 = a1 + v16;
  v18 = a2 + v16;
  v19 = *(a1 + v16 + 8);
  v20 = *(a2 + v16 + 8);
  if (v19 == 255)
  {
    if (v20 == 255)
    {
      v28 = *v18;
      v17[8] = v18[8];
      *v17 = v28;
    }

    else
    {
      v25 = *v18;
      v26 = v20 & 1;
      outlined copy of PlatformItemCollection.Storage(v25, v20 & 1);
      *v17 = v25;
      v17[8] = v26;
    }
  }

  else if (v20 == 255)
  {
    outlined destroy of PlatformItemCollection(v17);
    v27 = v18[8];
    *v17 = *v18;
    v17[8] = v27;
  }

  else
  {
    v21 = *v18;
    v22 = v20 & 1;
    outlined copy of PlatformItemCollection.Storage(v21, v20 & 1);
    v23 = *v17;
    v24 = v17[8];
    *v17 = v21;
    v17[8] = v22;
    outlined consume of PlatformItemCollection.Storage(v23, v24);
  }

  v29 = a3[7];
  v30 = a1 + v29;
  v31 = a2 + v29;
  v32 = *(a1 + v29 + 8);
  v33 = *(a2 + v29 + 8);
  if (v32 == 255)
  {
    if (v33 == 255)
    {
      v41 = *v31;
      v30[8] = v31[8];
      *v30 = v41;
    }

    else
    {
      v38 = *v31;
      v39 = v33 & 1;
      outlined copy of PlatformItemCollection.Storage(v38, v33 & 1);
      *v30 = v38;
      v30[8] = v39;
    }
  }

  else if (v33 == 255)
  {
    outlined destroy of PlatformItemCollection(v30);
    v40 = v31[8];
    *v30 = *v31;
    v30[8] = v40;
  }

  else
  {
    v34 = *v31;
    v35 = v33 & 1;
    outlined copy of PlatformItemCollection.Storage(v34, v33 & 1);
    v36 = *v30;
    v37 = v30[8];
    *v30 = v34;
    v30[8] = v35;
    outlined consume of PlatformItemCollection.Storage(v36, v37);
  }

  v42 = a3[8];
  v43 = a1 + v42;
  v44 = a2 + v42;
  v45 = *(a2 + v42);
  v46 = *(a2 + v42 + 8);
  v47 = *(a2 + v42 + 16);
  outlined copy of Text.Storage(v45, v46, v47);
  v48 = *v43;
  v49 = *(v43 + 1);
  v50 = v43[16];
  *v43 = v45;
  *(v43 + 1) = v46;
  v43[16] = v47;
  outlined consume of Text.Storage(v48, v49, v50);
  *(v43 + 3) = *(v44 + 3);

  v51 = a3[9];
  v52 = a1 + v51;
  v53 = a2 + v51;
  *(a1 + v51) = *(a2 + v51);

  *(v52 + 1) = *(v53 + 1);

  v54 = a3[10];
  v55 = a1 + v54;
  v56 = a2 + v54;
  v57 = *(a1 + v54);
  v58 = *(a2 + v54);
  if (v57)
  {
    if (v58)
    {
      v59 = *(v56 + 1);
      *v55 = v58;
      *(v55 + 1) = v59;
      *(v55 + 4) = *(v56 + 4);
      *(v55 + 3) = *(v56 + 3);
      v60 = *(v56 + 4);
      v61 = *(v55 + 4);
      *(v55 + 4) = v60;
      v62 = v60;

      *(v55 + 5) = *(v56 + 5);

      *(v55 + 12) = *(v56 + 12);
      *(v55 + 7) = *(v56 + 7);

      *(v55 + 16) = *(v56 + 16);
      *(v55 + 17) = *(v56 + 17);
      *(v55 + 18) = *(v56 + 18);
      *(v55 + 19) = *(v56 + 19);
      *(v55 + 10) = *(v56 + 10);
    }

    else
    {
      outlined destroy of BoundInputsView(v55);
      v66 = *(v56 + 1);
      *v55 = *v56;
      *(v55 + 1) = v66;
      v68 = *(v56 + 3);
      v67 = *(v56 + 4);
      v69 = *(v56 + 2);
      *(v55 + 10) = *(v56 + 10);
      *(v55 + 3) = v68;
      *(v55 + 4) = v67;
      *(v55 + 2) = v69;
    }
  }

  else if (v58)
  {
    v63 = *(v56 + 1);
    *v55 = v58;
    *(v55 + 1) = v63;
    *(v55 + 4) = *(v56 + 4);
    *(v55 + 3) = *(v56 + 3);
    v64 = *(v56 + 4);
    *(v55 + 4) = v64;
    *(v55 + 5) = *(v56 + 5);
    *(v55 + 12) = *(v56 + 12);
    *(v55 + 7) = *(v56 + 7);
    *(v55 + 16) = *(v56 + 16);
    *(v55 + 17) = *(v56 + 17);
    *(v55 + 18) = *(v56 + 18);
    *(v55 + 19) = *(v56 + 19);
    *(v55 + 10) = *(v56 + 10);
    v65 = v64;
  }

  else
  {
    v70 = *(v56 + 1);
    *v55 = *v56;
    *(v55 + 1) = v70;
    v71 = *(v56 + 2);
    v72 = *(v56 + 3);
    v73 = *(v56 + 4);
    *(v55 + 10) = *(v56 + 10);
    *(v55 + 3) = v72;
    *(v55 + 4) = v73;
    *(v55 + 2) = v71;
  }

  v74 = a3[11];
  v75 = a1 + v74;
  v76 = a2 + v74;
  v77 = *(a1 + v74);
  v78 = *(a2 + v74);
  if (v77)
  {
    if (v78)
    {
      v79 = *(v76 + 1);
      *v75 = v78;
      *(v75 + 1) = v79;
      *(v75 + 4) = *(v76 + 4);
      *(v75 + 3) = *(v76 + 3);
      v80 = *(v76 + 4);
      v81 = *(v75 + 4);
      *(v75 + 4) = v80;
      v82 = v80;

      *(v75 + 5) = *(v76 + 5);

      *(v75 + 12) = *(v76 + 12);
      *(v75 + 7) = *(v76 + 7);

      *(v75 + 16) = *(v76 + 16);
      *(v75 + 17) = *(v76 + 17);
      *(v75 + 18) = *(v76 + 18);
      *(v75 + 19) = *(v76 + 19);
      *(v75 + 10) = *(v76 + 10);
    }

    else
    {
      outlined destroy of BoundInputsView(v75);
      v86 = *(v76 + 1);
      *v75 = *v76;
      *(v75 + 1) = v86;
      v88 = *(v76 + 3);
      v87 = *(v76 + 4);
      v89 = *(v76 + 2);
      *(v75 + 10) = *(v76 + 10);
      *(v75 + 3) = v88;
      *(v75 + 4) = v87;
      *(v75 + 2) = v89;
    }
  }

  else if (v78)
  {
    v83 = *(v76 + 1);
    *v75 = v78;
    *(v75 + 1) = v83;
    *(v75 + 4) = *(v76 + 4);
    *(v75 + 3) = *(v76 + 3);
    v84 = *(v76 + 4);
    *(v75 + 4) = v84;
    *(v75 + 5) = *(v76 + 5);
    *(v75 + 12) = *(v76 + 12);
    *(v75 + 7) = *(v76 + 7);
    *(v75 + 16) = *(v76 + 16);
    *(v75 + 17) = *(v76 + 17);
    *(v75 + 18) = *(v76 + 18);
    *(v75 + 19) = *(v76 + 19);
    *(v75 + 10) = *(v76 + 10);
    v85 = v84;
  }

  else
  {
    v90 = *(v76 + 1);
    *v75 = *v76;
    *(v75 + 1) = v90;
    v91 = *(v76 + 2);
    v92 = *(v76 + 3);
    v93 = *(v76 + 4);
    *(v75 + 10) = *(v76 + 10);
    *(v75 + 3) = v92;
    *(v75 + 4) = v93;
    *(v75 + 2) = v91;
  }

  *(a1 + a3[12]) = *(a2 + a3[12]);
  v94 = a3[13];
  v95 = a1 + v94;
  v96 = a2 + v94;
  v97 = *(a1 + v94);
  v98 = *(a2 + v94);
  if (v97)
  {
    if (v98)
    {
      v99 = *(v96 + 1);
      *v95 = v98;
      *(v95 + 1) = v99;
      *(v95 + 4) = *(v96 + 4);
      *(v95 + 3) = *(v96 + 3);
      v100 = *(v96 + 4);
      v101 = *(v95 + 4);
      *(v95 + 4) = v100;
      v102 = v100;

      *(v95 + 5) = *(v96 + 5);

      *(v95 + 12) = *(v96 + 12);
      *(v95 + 7) = *(v96 + 7);

      *(v95 + 16) = *(v96 + 16);
      *(v95 + 17) = *(v96 + 17);
      *(v95 + 18) = *(v96 + 18);
      *(v95 + 19) = *(v96 + 19);
      *(v95 + 10) = *(v96 + 10);
    }

    else
    {
      outlined destroy of BoundInputsView(v95);
      v106 = *(v96 + 1);
      *v95 = *v96;
      *(v95 + 1) = v106;
      v108 = *(v96 + 3);
      v107 = *(v96 + 4);
      v109 = *(v96 + 2);
      *(v95 + 10) = *(v96 + 10);
      *(v95 + 3) = v108;
      *(v95 + 4) = v107;
      *(v95 + 2) = v109;
    }
  }

  else if (v98)
  {
    v103 = *(v96 + 1);
    *v95 = v98;
    *(v95 + 1) = v103;
    *(v95 + 4) = *(v96 + 4);
    *(v95 + 3) = *(v96 + 3);
    v104 = *(v96 + 4);
    *(v95 + 4) = v104;
    *(v95 + 5) = *(v96 + 5);
    *(v95 + 12) = *(v96 + 12);
    *(v95 + 7) = *(v96 + 7);
    *(v95 + 16) = *(v96 + 16);
    *(v95 + 17) = *(v96 + 17);
    *(v95 + 18) = *(v96 + 18);
    *(v95 + 19) = *(v96 + 19);
    *(v95 + 10) = *(v96 + 10);
    v105 = v104;
  }

  else
  {
    v110 = *(v96 + 1);
    *v95 = *v96;
    *(v95 + 1) = v110;
    v111 = *(v96 + 2);
    v112 = *(v96 + 3);
    v113 = *(v96 + 4);
    *(v95 + 10) = *(v96 + 10);
    *(v95 + 3) = v112;
    *(v95 + 4) = v113;
    *(v95 + 2) = v111;
  }

  *(a1 + a3[14]) = *(a2 + a3[14]);
  return a1;
}

unint64_t lazy protocol witness table accessor for type _VariadicView.Tree<SectionContainer, _ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>> and conformance <> _VariadicView.Tree<A, B>()
{
  result = lazy protocol witness table cache variable for type _VariadicView.Tree<SectionContainer, _ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>> and conformance <> _VariadicView.Tree<A, B>;
  if (!lazy protocol witness table cache variable for type _VariadicView.Tree<SectionContainer, _ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>> and conformance <> _VariadicView.Tree<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for _VariadicView.Tree<SectionContainer, _ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>>(255);
    v4 = v3;
    v5[0] = &protocol witness table for SectionContainer;
    v5[1] = lazy protocol witness table accessor for type _ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView> and conformance <> _ConditionalContent<A, B>();
    result = swift_getWitnessTable(MEMORY[0x1E697E308], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type _VariadicView.Tree<SectionContainer, _ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>> and conformance <> _VariadicView.Tree<A, B>);
  }

  return result;
}

void type metadata accessor for _GraphValue<SectionContainer>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t static SectionContainer._makeViewList(root:inputs:body:)(int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _GraphValue<SectionContainer>(0, &lazy cache variable for type metadata for _GraphValue<SectionContainer>, &type metadata for SectionContainer, MEMORY[0x1E697DDB8]);
  _GraphValue.subscript.getter();
  _GraphValue.subscript.getter();
  return static _ViewListOutputs.groupViewList<A, B>(parent:footer:inputs:body:)();
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance SectionStyleConfiguration.Header(int *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  outlined init with copy of _ViewListInputs(a2, v17);
  v5 = _s7SwiftUI12_GraphInputsV7popLastyq_SgxmAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAA06SourceG033_D9F7AF928092578A4B8FA861B49E2161LLVyAA16ListStyleContentVG_AA03AnyJ0AMLLVTt0g5Tm(&lazy cache variable for type metadata for SourceInput<SectionStyleConfiguration.Header>, lazy protocol witness table accessor for type SectionStyleConfiguration.Header and conformance SectionStyleConfiguration.Header, &type metadata for SectionStyleConfiguration.Header, &lazy protocol witness table cache variable for type SourceInput<SectionStyleConfiguration.Header> and conformance SourceInput<A>);
  if (v5)
  {
    v9 = v5;
    v10 = v6;
    v11 = v7;
    v12 = v8;
    _GraphInputs.resetCurrentStyleableView()();
    v16 = v4;
    v13 = *(v10 + 16);
    v14 = lazy protocol witness table accessor for type SectionStyleConfiguration.Header and conformance SectionStyleConfiguration.Header();
    v13(&v16, v9, v10, v11, v12 | ((HIDWORD(v12) & 1) << 32), v17, a3, v14, v9, v10);
  }

  else
  {
    static _ViewListOutputs.emptyViewList(inputs:)();
  }

  return outlined destroy of _ViewListInputs(v17);
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(listInputs:) in conformance UseSidebarHeaderModifierPredicate(uint64_t *a1)
{
  _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v5VGMaTm_3(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v4>, MEMORY[0x1E697DF40], MEMORY[0x1E697DF38], MEMORY[0x1E697EC20]);
  lazy protocol witness table accessor for type _SemanticFeature<Semantics_v4> and conformance _SemanticFeature<A>();

  PropertyList.subscript.getter();
  if (v3 == 1)
  {

    return 0;
  }

  else
  {
    _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v5VGMaTm_3(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v3>, MEMORY[0x1E697DF30], MEMORY[0x1E697DF28], MEMORY[0x1E697EC20]);
    lazy protocol witness table accessor for type _SemanticFeature<Semantics_v3> and conformance _SemanticFeature<A>();
    PropertyList.subscript.getter();

    return v2;
  }
}

uint64_t protocol witness for static ViewInputPredicate.evaluate(inputs:) in conformance UseSidebarHeaderModifierPredicate(uint64_t *a1)
{
  _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v5VGMaTm_3(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v4>, MEMORY[0x1E697DF40], MEMORY[0x1E697DF38], MEMORY[0x1E697EC20]);
  lazy protocol witness table accessor for type _SemanticFeature<Semantics_v4> and conformance _SemanticFeature<A>();
  PropertyList.subscript.getter();
  if (v3)
  {
    return 0;
  }

  _s7SwiftUI16_SemanticFeatureVyAA12Semantics_v5VGMaTm_3(0, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v3>, MEMORY[0x1E697DF30], MEMORY[0x1E697DF28], MEMORY[0x1E697EC20]);
  lazy protocol witness table accessor for type _SemanticFeature<Semantics_v3> and conformance _SemanticFeature<A>();
  PropertyList.subscript.getter();
  return v2;
}

uint64_t protocol witness for static View._viewListCount(inputs:) in conformance ListStyleContent(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_OWORD *))
{
  v4 = a1[3];
  v7[2] = a1[2];
  v7[3] = v4;
  v7[4] = a1[4];
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  return (a4)(v7, a2, a3);
}

unint64_t lazy protocol witness table accessor for type SourceInput<SectionStyleConfiguration.Header> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<SectionStyleConfiguration.Header> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<SectionStyleConfiguration.Header> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<SectionStyleConfiguration.Header>, lazy protocol witness table accessor for type SectionStyleConfiguration.Header and conformance SectionStyleConfiguration.Header, &type metadata for SectionStyleConfiguration.Header, type metadata accessor for SourceInput);
    result = swift_getWitnessTable(protocol conformance descriptor for SourceInput<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<SectionStyleConfiguration.Header> and conformance SourceInput<A>);
  }

  return result;
}

uint64_t destroy for ScrapedContentTree()
{
}

double protocol witness for static PreferenceKey.defaultValue.getter in conformance ResponderCommandsKey@<D0>(void *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = static ResponderCommandsKey.defaultValue;

  return result;
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance SectionStyleConfiguration.Footer(int *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  outlined init with copy of _ViewListInputs(a2, v17);
  v5 = _s7SwiftUI12_GraphInputsV7popLastyq_SgxmAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAA06SourceG033_D9F7AF928092578A4B8FA861B49E2161LLVyAA16ListStyleContentVG_AA03AnyJ0AMLLVTt0g5Tm(&lazy cache variable for type metadata for SourceInput<SectionStyleConfiguration.Footer>, lazy protocol witness table accessor for type SectionStyleConfiguration.Footer and conformance SectionStyleConfiguration.Footer, &type metadata for SectionStyleConfiguration.Footer, &lazy protocol witness table cache variable for type SourceInput<SectionStyleConfiguration.Footer> and conformance SourceInput<A>);
  if (v5)
  {
    v9 = v5;
    v10 = v6;
    v11 = v7;
    v12 = v8;
    _GraphInputs.resetCurrentStyleableView()();
    v16 = v4;
    v13 = *(v10 + 16);
    v14 = lazy protocol witness table accessor for type SectionStyleConfiguration.Footer and conformance SectionStyleConfiguration.Footer();
    v13(&v16, v9, v10, v11, v12 | ((HIDWORD(v12) & 1) << 32), v17, a3, v14, v9, v10);
  }

  else
  {
    static _ViewListOutputs.emptyViewList(inputs:)();
  }

  return outlined destroy of _ViewListInputs(v17);
}

uint64_t static Section<>._viewListCount(inputs:)(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = a1[3];
  v16[2] = a1[2];
  v16[3] = v10;
  v16[4] = a1[4];
  v11 = a1[1];
  v16[0] = *a1;
  v16[1] = v11;
  v12 = type metadata accessor for Section(0, a2, a3, a4);
  v15[0] = a5;
  v15[1] = a6;
  v15[2] = a7;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for <> Section<A, B, C>, v12, v15);
  return static PubliclyPrimitiveView.defaultViewListCount(inputs:)(v16, v12, WitnessTable);
}

uint64_t static PubliclyPrimitiveView.defaultViewListCount(inputs:)(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1[3];
  v8[2] = a1[2];
  v8[3] = v3;
  v8[4] = a1[4];
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return (*(AssociatedConformanceWitness + 40))(v8, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t protocol witness for static View._viewListCount(inputs:) in conformance StyledView(_OWORD *a1)
{
  type metadata accessor for _ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView>();
  lazy protocol witness table accessor for type _ConditionalContent<SectionStyleConfiguration.RawContent, EmptyView> and conformance <> _ConditionalContent<A, B>();
  return static _ViewListOutputs.groupViewListCount<A, B, C>(inputs:contentType:headerType:footerType:)();
}

unint64_t lazy protocol witness table accessor for type SourceInput<SectionStyleConfiguration.RawContent> and conformance SourceInput<A>()
{
  result = lazy protocol witness table cache variable for type SourceInput<SectionStyleConfiguration.RawContent> and conformance SourceInput<A>;
  if (!lazy protocol witness table cache variable for type SourceInput<SectionStyleConfiguration.RawContent> and conformance SourceInput<A>)
  {
    type metadata accessor for ButtonStyleModifier<DefaultButtonStyle>(255, &lazy cache variable for type metadata for SourceInput<SectionStyleConfiguration.RawContent>, lazy protocol witness table accessor for type SectionStyleConfiguration.RawContent and conformance SectionStyleConfiguration.RawContent, &type metadata for SectionStyleConfiguration.RawContent, type metadata accessor for SourceInput);
    result = swift_getWitnessTable(protocol conformance descriptor for SourceInput<A>, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type SourceInput<SectionStyleConfiguration.RawContent> and conformance SourceInput<A>);
  }

  return result;
}

uint64_t MakeBody.value.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Value = AGGraphGetValue();
  (*(v5 + 16))(v7, Value, a2);
  (*(a3 + 32))(a2, a3);
  return (*(v5 + 8))(v7, a2);
}

char *SwiftUISearchController.init()()
{
  v1 = OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_searchItem;
  v2 = type metadata accessor for ToolbarStorage.SearchItem(0);
  (*(*(v2 - 8) + 56))(&v0[v1], 1, 1, v2);
  *&v0[OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController____lazy_storage____searchBar] = 0;
  swift_unknownObjectWeakInit();
  v0[OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_pendingIsActive] = 2;
  v0[OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_pendingIsActiveAnimated] = 2;
  v0[OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_lastToolbarBehavior] = 3;
  v3 = OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_coordinator;
  *&v0[v3] = [objc_allocWithZone(type metadata accessor for UIKitSearchBarCoordinator(0)) init];
  v4 = &v0[OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_suggestions];
  *v4 = 0;
  v4[8] = -1;
  v5 = OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_configuration;
  v6 = type metadata accessor for SearchFieldConfiguration(0);
  (*(*(v6 - 8) + 56))(&v0[v5], 1, 1, v6);
  *&v0[OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_customAccessoryHost] = 0;
  *&v0[OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_customAccessoryRecoveryGesture] = 0;
  v7 = &v0[OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_customAccessoryContent];
  *v7 = 0u;
  *(v7 + 1) = 0u;
  *(v7 + 2) = 0u;
  *(v7 + 3) = 0u;
  *(v7 + 4) = 0u;
  *(v7 + 10) = 0;
  v0[OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_allowsSecureDrawing] = 0;
  v11.receiver = v0;
  v11.super_class = type metadata accessor for SwiftUISearchController(0);
  v8 = objc_msgSendSuper2(&v11, sel_initWithSearchResultsController_, 0);
  *(*&v8[OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_coordinator] + OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_delegate + 8) = &protocol witness table for UISearchController;
  swift_unknownObjectWeakAssign();
  v9 = v8;
  [v9 setObscuresBackgroundDuringPresentation_];
  [v9 setDelegate_];
  [v9 setSearchResultsUpdater_];

  return v9;
}

void type metadata completion function for UIKitSearchBarCoordinator(uint64_t a1)
{
  type metadata accessor for SearchFieldConfiguration?(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for SearchBoundProperty<TextSelection?>?(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for SearchFieldConfiguration?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

id UIKitSearchBarCoordinator.init()()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_triggerSubmission];
  *v2 = 0;
  v2[1] = 0;
  v3 = &v0[OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_clearAction];
  *v3 = 0;
  v3[1] = 0;
  v4 = OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_configuration;
  v5 = type metadata accessor for SearchFieldConfiguration(0);
  (*(*(v5 - 8) + 56))(&v0[v4], 1, 1, v5);
  v6 = MEMORY[0x1E69E7CC0];
  *&v0[OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_scopes] = MEMORY[0x1E69E7CC0];
  *&v0[OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_tokenScopes] = v6;
  v7 = &v0[OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_customScopeBar];
  *v7 = 0u;
  *(v7 + 1) = 0u;
  *(v7 + 2) = 0u;
  *(v7 + 3) = 0u;
  *(v7 + 4) = 0u;
  *(v7 + 10) = 0;
  v0[OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_placement] = 2;
  v0[OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_usingExplicitSuggestionPlacement] = 0;
  v8 = OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_selection;
  type metadata accessor for SearchBoundProperty<TextSelection?>(0);
  (*(*(v9 - 8) + 56))(&v0[v8], 1, 1, v9);
  *&v0[OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v0[OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_isViewUpdating] = 0;
  v10 = &v0[OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_oldText];
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  *&v0[OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_oldTokens] = v6;
  v11 = &v0[OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_oldSuffix];
  *v11 = 0;
  *(v11 + 1) = 0;
  *(v11 + 1) = xmmword_18CD68310;
  v0[OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_needsStateRestoration] = 0;
  v13.receiver = v0;
  v13.super_class = ObjectType;
  return objc_msgSendSuper2(&v13, sel_init);
}

id SwiftUISearchController._searchBar.getter()
{
  v1 = OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController____lazy_storage____searchBar;
  v2 = *(v0 + OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController____lazy_storage____searchBar);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController____lazy_storage____searchBar);
  }

  else
  {
    v4 = closure #1 in SwiftUISearchController._searchBar.getter(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t Section<>.init(header:footer:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v25 = a6;
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 - 8);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = (*(v16 + 16))(v20, a1, v21, v18);
  a3(v22);
  (*(v16 + 8))(a1, a4);
  return Section.init(header:content:footer:)(v20, v14, a2, a4, a5, v25, a7);
}

id closure #1 in SwiftUISearchController._searchBar.getter(uint64_t a1)
{
  type metadata accessor for UIKitSearchBar();
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = *(a1 + OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_coordinator);
  swift_unknownObjectWeakAssign();
  v4 = v3;
  [v2 setDelegate_];
  v5 = [v2 searchTextField];
  [v5 setDelegate_];

  v6 = [v2 searchTextField];
  [v6 addTarget:v4 action:sel_primaryActionTriggered_ forControlEvents:0x2000];

  return v2;
}

uint64_t Section<>.internalBody.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v42 = a3;
  v40 = a5;
  v9 = *(a1 + 16);
  v35 = lazy protocol witness table accessor for type SectionStyleConfiguration.Header and conformance SectionStyleConfiguration.Header();
  v56 = &type metadata for SectionStyleConfiguration.Header;
  v57 = v9;
  v58 = v35;
  v59 = a2;
  type metadata accessor for StaticSourceWriter(255, &v56);
  v33 = type metadata accessor for ModifiedContent();
  v38 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v41 = &v29 - v10;
  v11 = *(a1 + 32);
  v36 = lazy protocol witness table accessor for type SectionStyleConfiguration.Footer and conformance SectionStyleConfiguration.Footer();
  v56 = &type metadata for SectionStyleConfiguration.Footer;
  v57 = v11;
  v58 = v36;
  v59 = a4;
  v29 = a4;
  type metadata accessor for StaticSourceWriter(255, &v56);
  v37 = type metadata accessor for ModifiedContent();
  v39 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v34 = &v29 - v12;
  v13 = v5 + *(a1 + 52);
  v14 = *(v13 + 8);
  v15 = *(v13 + 16);
  v56 = *v13;
  v57 = v14;
  LOBYTE(v58) = v15;
  v30 = *(a1 + 24);
  v31 = v5;
  v47 = v9;
  v48 = v30;
  v49 = v11;
  v50 = a2;
  v16 = v42;
  v51 = v42;
  v52 = a4;
  v53 = v5;
  outlined copy of Binding<Int>?(v56, v14);
  v17 = lazy protocol witness table accessor for type ResolvedSectionStyle and conformance ResolvedSectionStyle();
  v32 = v9;
  View.viewAlias<A, B>(_:_:)(&type metadata for SectionStyleConfiguration.Header, partial apply for closure #1 in Section<>.internalBody.getter, v46, &type metadata for ResolvedSectionStyle, &type metadata for SectionStyleConfiguration.Header, v9, v17);
  outlined consume of Binding<NavigationSplitViewColumn>?(v56, v57);
  v18 = v30;
  v44[2] = v9;
  v44[3] = v30;
  v44[4] = v11;
  v44[5] = a2;
  v19 = v11;
  v20 = v29;
  v44[6] = v16;
  v44[7] = v29;
  v45 = v5;
  v55[0] = v17;
  v55[1] = &protocol witness table for StaticSourceWriter<A, B>;
  v21 = MEMORY[0x1E697E858];
  v22 = v33;
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E697E858], v33, v55);
  v24 = v34;
  v25 = v41;
  View.viewAlias<A, B>(_:_:)(&type metadata for SectionStyleConfiguration.Footer, partial apply for closure #2 in Section<>.internalBody.getter, v44, v22, &type metadata for SectionStyleConfiguration.Footer, v19, WitnessTable);
  (*(v38 + 8))(v25, v22);
  v43[2] = v32;
  v43[3] = v18;
  v43[4] = v19;
  v43[5] = a2;
  v43[6] = v42;
  v43[7] = v20;
  v43[8] = v31;
  v54[0] = WitnessTable;
  v54[1] = &protocol witness table for StaticSourceWriter<A, B>;
  v26 = v37;
  v27 = swift_getWitnessTable(v21, v37, v54);
  lazy protocol witness table accessor for type SectionStyleConfiguration.RawContent and conformance SectionStyleConfiguration.RawContent();
  View.viewAlias<A, B>(_:_:)(&type metadata for SectionStyleConfiguration.RawContent, partial apply for closure #3 in Section<>.internalBody.getter, v43, v26, &type metadata for SectionStyleConfiguration.RawContent, v18, v27);
  return (*(v39 + 8))(v24, v26);
}

void type metadata accessor for EnvironmentPropertyKey<SearchFieldPlacementKey>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t outlined init with take of ToolbarStorage.SearchItem(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined assign with copy of ToolbarStorage.SearchItem?(uint64_t a1, uint64_t a2)
{
  _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_0(0, &lazy cache variable for type metadata for ToolbarStorage.SearchItem?, type metadata accessor for ToolbarStorage.SearchItem, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t SwiftUISearchController.update(to:)(uint64_t a1)
{
  v2 = type metadata accessor for SearchFieldState(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v84 = &v78 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_0(0, &lazy cache variable for type metadata for SearchFieldConfiguration?, type metadata accessor for SearchFieldConfiguration, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v85 = (&v78 - v5);
  v6 = MEMORY[0x1E6981948];
  _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_0(0, &lazy cache variable for type metadata for Binding<SearchFieldState>, type metadata accessor for SearchFieldState, MEMORY[0x1E6981948]);
  v83 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v78 - v8;
  v10 = type metadata accessor for SearchFieldConfiguration(0);
  v81 = *(v10 - 1);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v78 - v14;
  v16 = type metadata accessor for ToolbarStorage.SearchItem(0);
  v82 = *(a1 + v16[12]);
  outlined init with copy of ToolbarStorage.SearchItem?(a1, v9, &lazy cache variable for type metadata for Binding<SearchFieldState>, type metadata accessor for SearchFieldState, v6, _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_0);
  v17 = v16[5];
  v18 = a1;
  v88 = a1;
  v19 = *(a1 + v17);
  v20 = v18 + v16[8];
  v22 = *v20;
  v21 = *(v20 + 8);
  v23 = *(v20 + 16);
  LODWORD(v80) = v23;
  v79 = *(v20 + 24);
  outlined init with take of Binding<SearchFieldState>(v9, v12);
  if (v19)
  {
    v24 = 1;
  }

  else
  {
    v24 = -1;
  }

  v25 = v10[7];
  v26 = &v12[v10[6]];
  *v26 = v19;
  v26[8] = v24;
  v12[v25] = 1;
  v27 = &v12[v10[8]];
  *v27 = v22;
  *(v27 + 1) = v21;
  v27[16] = v23;
  *(v27 + 3) = v79;
  outlined init with take of ToolbarStorage.SearchItem(v12, v15, type metadata accessor for SearchFieldConfiguration);
  v86 = v15;
  v28 = v15;
  v29 = v85;
  _s7SwiftUI24SearchFieldConfigurationVWOcTm_0(v28, v85, type metadata accessor for SearchFieldConfiguration);
  (*(v81 + 56))(v29, 0, 1, v10);
  v30 = OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_configuration;
  v31 = v87;
  swift_beginAccess();

  outlined copy of Text.Storage(v22, v21, v80);

  outlined assign with take of SearchFieldConfiguration?(v29, &v31[v30]);
  swift_endAccess();
  v85 = v16;
  v32 = (v88 + v16[9]);
  if (v32[1])
  {
    type metadata accessor for EnvironmentPropertyKey<SearchFieldPlacementKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SceneAllowsSecureDrawingKey>, &type metadata for SceneAllowsSecureDrawingKey, &protocol witness table for SceneAllowsSecureDrawingKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<SceneAllowsSecureDrawingKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<SearchFieldPlacementKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SceneAllowsSecureDrawingKey>, &type metadata for SceneAllowsSecureDrawingKey, &protocol witness table for SceneAllowsSecureDrawingKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<SceneAllowsSecureDrawingKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  v33 = v87;
  v87[OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_allowsSecureDrawing] = v97;
  v34 = OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_coordinator;
  v35 = *&v33[OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_coordinator];
  v36 = SwiftUISearchController._searchBar.getter();
  v37 = v32[1];
  *&v98[0] = *v32;
  *(&v98[0] + 1) = v37;

  UIKitSearchBarCoordinator.updateSearchBar(_:to:in:)(v36, v86, v98);

  v38 = *&v33[v34];
  v39 = *&v33[OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController____lazy_storage____searchBar];
  v40 = v85;
  v41 = v88;
  v42 = v88 + v85[6];
  v43 = *v42;
  v80 = v34;
  v81 = v43;
  LODWORD(v34) = *(v42 + 8);
  v44 = v38;
  v45 = v39;
  UIKitSearchBarCoordinator.resolvedTokenScopes.getter();
  v47 = v46;
  v49 = v48;
  v50 = v41 + *(v40 + 44);
  v51 = *(v50 + 48);
  v98[2] = *(v50 + 32);
  v98[3] = v51;
  v98[4] = *(v50 + 64);
  v99 = *(v50 + 80);
  v52 = *(v50 + 16);
  v98[0] = *v50;
  v98[1] = v52;
  v53 = v33;
  specialized UIKitSearchScopeCoordinating<>.updateScopes(_:newScopes:newTokenScopes:customScopeBar:customScopeBarUpdate:)(v45, v81, v34, v47, v49, v98, v44, v53, v82);

  outlined consume of PlatformItemCollection?(v47, v49);
  v54 = *v32;
  v55 = v32[1];
  *&v92[0] = v54;
  *(&v92[0] + 1) = v55;

  SwiftUISearchController.updateSuggestionPlacement(in:)(v92, v56);

  v57 = v41 + *(v40 + 28);
  v58 = *v57;
  v59 = &v53[OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_suggestions];
  v60 = *&v53[OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_suggestions];
  v61 = *(v57 + 8);
  *v59 = *v57;
  LOBYTE(v45) = v59[8];
  v59[8] = v61;
  outlined copy of PlatformItemCollection?(v58, v61);
  outlined consume of PlatformItemCollection?(v60, v45);
  if (*&v53[OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_customAccessoryContent] || (v62 = v59[8], v62 == 255))
  {
    [v53 _setSearchSuggestionGroups_];
    goto LABEL_21;
  }

  v63 = *v59;
  v64 = MEMORY[0x1E69E7CC0];
  if (v62)
  {
    outlined copy of PlatformItemCollection.Storage(*v59, 1);
  }

  else
  {
    WeakValue = AGGraphGetWeakValue();
    if (WeakValue)
    {
      v66 = *WeakValue;

      outlined consume of PlatformItemCollection?(v63, v62);
      v63 = v66;
    }

    else
    {
      outlined consume of PlatformItemCollection?(v63, v62);
      v63 = MEMORY[0x1E69E7CC0];
    }
  }

  *&v92[0] = *(*&v87[v80] + OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_usingExplicitSuggestionPlacement);
  *(&v92[0] + 1) = v64;
  SearchSuggestionsVisitor.visit(platformItemList:)(v63);

  if (*(&v92[0] + 1) >> 62)
  {
    if (__CocoaSet.count.getter())
    {
      goto LABEL_17;
    }

LABEL_19:
    v67.super.isa = 0;
    goto LABEL_20;
  }

  if (!*((*(&v92[0] + 1) & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_19;
  }

LABEL_17:
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for _UISearchSuggestionItemGroup, 0x1E69DD6D8);
  v67.super.isa = Array._bridgeToObjectiveC()().super.isa;
LABEL_20:

  [v53 _setSearchSuggestionGroups_];

LABEL_21:
  v68 = v88 + v85[13];
  v69 = *(v68 + 48);
  v70 = *(v68 + 16);
  v93 = *(v68 + 32);
  v94 = v69;
  v71 = *(v68 + 48);
  v95 = *(v68 + 64);
  v72 = *(v68 + 16);
  v92[0] = *v68;
  v92[1] = v72;
  v90[1] = v70;
  v90[2] = v93;
  v73 = *(v68 + 64);
  v90[3] = v71;
  v90[4] = v73;
  v96 = *(v68 + 80);
  v91 = *(v68 + 80);
  v90[0] = v92[0];
  outlined init with copy of ToolbarStorage.SearchItem?(v92, &v89, &lazy cache variable for type metadata for BoundInputsView?, &type metadata for BoundInputsView, MEMORY[0x1E69E6720], type metadata accessor for Spacer?);
  SwiftUISearchController.customAccessoryContent.setter(v90);
  type metadata accessor for EnvironmentPropertyKey<SearchFieldPlacementKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SearchScopeActivationKey>, &type metadata for SearchScopeActivationKey, &protocol witness table for SearchScopeActivationKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<SearchScopeActivationKey> and conformance EnvironmentPropertyKey<A>();
  if (v55)
  {

    PropertyList.Tracker.value<A>(_:for:)();

    SwiftUISearchController.updateScopesActivation(to:)(v90[0]);
    type metadata accessor for EnvironmentPropertyKey<SearchFieldPlacementKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.SearchPresentationToolbarBehaviorKey>, &type metadata for EnvironmentValues.SearchPresentationToolbarBehaviorKey, &protocol witness table for EnvironmentValues.SearchPresentationToolbarBehaviorKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.SearchPresentationToolbarBehaviorKey> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
    SwiftUISearchController.updateScopesActivation(to:)(v90[0]);
    type metadata accessor for EnvironmentPropertyKey<SearchFieldPlacementKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.SearchPresentationToolbarBehaviorKey>, &type metadata for EnvironmentValues.SearchPresentationToolbarBehaviorKey, &protocol witness table for EnvironmentValues.SearchPresentationToolbarBehaviorKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.SearchPresentationToolbarBehaviorKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  SwiftUISearchController.updateToolbarBehavior(to:)(LOBYTE(v90[0]));
  v74 = v84;
  v75 = v86;
  MEMORY[0x18D00ACC0](v83);
  v76 = *v74;
  _s7SwiftUI16SearchFieldStateVWOhTm_1(v74, type metadata accessor for SearchFieldState);
  SwiftUISearchController.enqueueIsActiveUpdate(_:)(v76 != 2);
  return _s7SwiftUI16SearchFieldStateVWOhTm_1(v75, type metadata accessor for SearchFieldConfiguration);
}

uint64_t outlined assign with take of SearchFieldConfiguration?(uint64_t a1, uint64_t a2)
{
  _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_0(0, &lazy cache variable for type metadata for SearchFieldConfiguration?, type metadata accessor for SearchFieldConfiguration, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t UIKitSearchBarCoordinator.updateSearchBar(_:to:in:)(unsigned __int8 *a1, uint64_t a2, uint64_t *a3)
{
  v4 = v3;
  v105 = a2;
  type metadata accessor for SearchFieldConfiguration?(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v104 = &v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SearchBoundProperty<TextSelection?>(0);
  v102 = v9;
  v101 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v92 = &v92 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SearchBoundProperty<TextSelection?>?(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v100 = &v92 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v99 = &v92 - v14;
  v15 = type metadata accessor for SearchAttributedString(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v96 = &v92 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = type metadata accessor for SearchFieldState(0);
  MEMORY[0x1EEE9AC00](v93);
  v18 = &v92 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SearchEnvironmentStorage.BoundProperties?(0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v98 = &v92 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v92 - v23;
  v25 = *a3;
  v26 = a3[1];
  v103 = OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_isViewUpdating;
  *(v4 + OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_isViewUpdating) = 1;
  v27 = [a1 searchTextField];
  specialized UIKitTextInput<>.update(in:)(v25, v26);
  specialized UIKitTextInputTraits.updateTraits(in:)(v25, v26);
  specialized UITextInputTraits_Private.updatePrivateTraits(in:)(v25, v26);
  *&v115 = v25;
  *(&v115 + 1) = v26;
  EnvironmentValues.effectiveFont.getter();
  *&v114[0] = v25;
  *(&v114[0] + 1) = v26;
  v28 = Font.platformFont(in:)();

  [v27 setFont_];

  *&v115 = v25;
  *(&v115 + 1) = v26;
  LOBYTE(v114[0]) = 0;

  [v27 setTextAlignment_];
  *&v115 = v25;
  *(&v115 + 1) = v26;
  specialized UIKitSearchBarCoordinator.updateTextColor(_:in:)(a1, &v115);
  *&v115 = v25;
  *(&v115 + 1) = v26;
  specialized UIKitSearchBarCoordinator.updateToolbarBehavior(_:in:)(a1, &v115);
  *&v115 = v25;
  *(&v115 + 1) = v26;
  EnvironmentValues.searchBoundProperties.getter(v24);
  v30 = type metadata accessor for SearchEnvironmentStorage.BoundProperties(0);
  v31 = *(v30 - 8);
  v95 = *(v31 + 48);
  v94 = v31 + 48;
  if (v95(v24, 1, v30) == 1)
  {
    outlined destroy of Binding<SearchFieldState>(v24, type metadata accessor for SearchEnvironmentStorage.BoundProperties?);
    memset(v114, 0, 44);
LABEL_7:
    v32 = type metadata accessor for SearchBoundProperty<PlatformSearchPopoverAnchor?>?;
    goto LABEL_23;
  }

  outlined init with copy of Binding<SearchFieldState>(&v24[*(v30 + 28)], v114, type metadata accessor for SearchBoundProperty<PlatformSearchPopoverAnchor?>?);
  outlined destroy of Binding<SearchFieldState>(v24, type metadata accessor for SearchEnvironmentStorage.BoundProperties);
  if (!*(&v114[0] + 1))
  {
    goto LABEL_7;
  }

  outlined init with take of PlatformItemList.Item(v114, &v115, type metadata accessor for SearchBoundProperty<PlatformSearchPopoverAnchor?>);
  outlined init with copy of Binding<SearchFieldState>(&v115, v114, type metadata accessor for Binding<PlatformSearchPopoverAnchor?>);
  type metadata accessor for Binding<PlatformSearchPopoverAnchor?>(0);
  MEMORY[0x18D00ACC0](v113);
  outlined init with copy of AnyAccessibilityValue?(v113, v112, &lazy cache variable for type metadata for PlatformSearchPopoverAnchor?, &type metadata for PlatformSearchPopoverAnchor);
  outlined destroy of AnyAccessibilityValue?(v112, &lazy cache variable for type metadata for PlatformSearchPopoverAnchor?, &type metadata for PlatformSearchPopoverAnchor);
  swift_unknownObjectWeakInit();
  v112[8] = 0;
  outlined init with copy of AnyAccessibilityValue?(v113, &v108, &lazy cache variable for type metadata for PlatformSearchPopoverAnchor?, &type metadata for PlatformSearchPopoverAnchor);
  outlined init with copy of AnyAccessibilityValue?(v112, &v110, &lazy cache variable for type metadata for PlatformSearchPopoverAnchor?, &type metadata for PlatformSearchPopoverAnchor);
  if ((v109 & 1) == 0)
  {
    outlined init with copy of AnyAccessibilityValue?(&v108, v107, &lazy cache variable for type metadata for PlatformSearchPopoverAnchor?, &type metadata for PlatformSearchPopoverAnchor);
    if (v111)
    {
      outlined destroy of PlatformSearchPopoverAnchor(v107);
      goto LABEL_10;
    }

    outlined init with take of PlatformSearchPopoverAnchor(&v110, v106);
    Strong = swift_unknownObjectWeakLoadStrong();
    v34 = swift_unknownObjectWeakLoadStrong();
    v35 = v34;
    if (Strong)
    {
      if (v34)
      {
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UISearchTextField, 0x1E69DCF28);
        v36 = static NSObject.== infix(_:_:)();

        if ((v36 & 1) == 0)
        {
          goto LABEL_19;
        }

LABEL_16:
        outlined destroy of PlatformSearchPopoverAnchor(v106);
        outlined destroy of PlatformSearchPopoverAnchor(v107);
        outlined destroy of AnyAccessibilityValue?(&v108, &lazy cache variable for type metadata for PlatformSearchPopoverAnchor?, &type metadata for PlatformSearchPopoverAnchor);
LABEL_21:
        outlined destroy of AnyAccessibilityValue?(v112, &lazy cache variable for type metadata for PlatformSearchPopoverAnchor?, &type metadata for PlatformSearchPopoverAnchor);
        outlined destroy of AnyAccessibilityValue?(v113, &lazy cache variable for type metadata for PlatformSearchPopoverAnchor?, &type metadata for PlatformSearchPopoverAnchor);
        outlined destroy of Binding<SearchFieldState>(&v115, type metadata accessor for SearchBoundProperty<PlatformSearchPopoverAnchor?>);
        goto LABEL_22;
      }

      v35 = Strong;
    }

    else if (!v34)
    {
      goto LABEL_16;
    }

LABEL_19:
    outlined destroy of PlatformSearchPopoverAnchor(v106);
    outlined destroy of PlatformSearchPopoverAnchor(v107);
    outlined destroy of AnyAccessibilityValue?(&v108, &lazy cache variable for type metadata for PlatformSearchPopoverAnchor?, &type metadata for PlatformSearchPopoverAnchor);
    goto LABEL_20;
  }

  if ((v111 & 1) == 0)
  {
LABEL_10:
    outlined destroy of Binding<SearchFieldState>(&v108, type metadata accessor for (PlatformSearchPopoverAnchor?, PlatformSearchPopoverAnchor?));
LABEL_20:
    dispatch thunk of AnyLocation.set(_:transaction:)();
    goto LABEL_21;
  }

  outlined destroy of AnyAccessibilityValue?(v112, &lazy cache variable for type metadata for PlatformSearchPopoverAnchor?, &type metadata for PlatformSearchPopoverAnchor);
  outlined destroy of AnyAccessibilityValue?(v113, &lazy cache variable for type metadata for PlatformSearchPopoverAnchor?, &type metadata for PlatformSearchPopoverAnchor);
  outlined destroy of Binding<SearchFieldState>(&v115, type metadata accessor for SearchBoundProperty<PlatformSearchPopoverAnchor?>);
  outlined destroy of AnyAccessibilityValue?(&v108, &lazy cache variable for type metadata for PlatformSearchPopoverAnchor?, &type metadata for PlatformSearchPopoverAnchor);
LABEL_22:
  v32 = type metadata accessor for Binding<PlatformSearchPopoverAnchor?>;
LABEL_23:
  outlined destroy of Binding<SearchFieldState>(v114, v32);
  v97 = v27;
  v37 = [a1 _isEnabled];
  *&v115 = v25;
  *(&v115 + 1) = v26;
  if (v37 != (EnvironmentValues.isEnabled.getter() & 1))
  {
    *&v115 = v25;
    *(&v115 + 1) = v26;
    [a1 _setEnabled_];
  }

  type metadata accessor for Binding<SearchFieldState>(0);
  v38 = v105;
  MEMORY[0x18D00ACC0]();
  v39 = *(v93 + 36);
  v40 = type metadata accessor for AttributedString();
  v41 = &v18[v39];
  v42 = v96;
  (*(*(v40 - 8) + 32))(v96, v41, v40);
  v116 = SearchAttributedString.splitIntoTokensAndText()();
  rawValue = v116._0._rawValue;
  countAndFlagsBits = v116._1._countAndFlagsBits;
  object = v116._1._object;
  outlined destroy of Binding<SearchFieldState>(v42, type metadata accessor for SearchAttributedString);
  *&v115 = v25;
  *(&v115 + 1) = v26;
  UIKitSearchBarCoordinator.updateTextIfNeeded(_:text:in:)(a1, countAndFlagsBits, object, &v115);

  v46 = type metadata accessor for SearchFieldConfiguration(0);
  UIKitSearchBarCoordinator.updateTokensIfNeeded(_:tokens:platformTokens:)(a1, rawValue, *(v38 + *(v46 + 24)), *(v38 + *(v46 + 24) + 8));

  *&v115 = v25;
  *(&v115 + 1) = v26;
  v47 = v98;
  EnvironmentValues.searchBoundProperties.getter(v98);
  if (v95(v47, 1, v30) == 1)
  {
    outlined destroy of Binding<SearchFieldState>(v47, type metadata accessor for SearchEnvironmentStorage.BoundProperties?);
    v48 = v101;
    v49 = v99;
    v50 = v102;
    (*(v101 + 56))(v99, 1, 1, v102);
  }

  else
  {
    v49 = v99;
    outlined init with copy of Binding<SearchFieldState>(v47 + *(v30 + 24), v99, type metadata accessor for SearchBoundProperty<TextSelection?>?);
    outlined destroy of Binding<SearchFieldState>(v47, type metadata accessor for SearchEnvironmentStorage.BoundProperties);
    v50 = v102;
    v48 = v101;
  }

  v51 = OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_selection;
  swift_beginAccess();
  outlined assign with take of SearchBoundProperty<TextSelection?>?(v49, v4 + v51, type metadata accessor for SearchBoundProperty<TextSelection?>?);
  swift_endAccess();
  v52 = v4 + v51;
  v53 = v100;
  outlined init with copy of Binding<SearchFieldState>(v52, v100, type metadata accessor for SearchBoundProperty<TextSelection?>?);
  v54 = (*(v48 + 48))(v53, 1, v50);
  v55 = v97;
  if (v54 == 1)
  {
    v56 = type metadata accessor for SearchBoundProperty<TextSelection?>?;
  }

  else
  {
    v57 = v53;
    v53 = v92;
    outlined init with take of PlatformItemList.Item(v57, v92, type metadata accessor for SearchBoundProperty<TextSelection?>);
    v58 = *(v53 + *(v50 + 40));
    if (v58 != -1)
    {
      v59 = *(v53 + *(v50 + 36));
      v60 = *(v59 + *(*v59 + 104));
      if (v60 != -1 && v58 == v60)
      {
        specialized UIKitSearchBarCoordinator.updateTextSelectionIfNeeded(_:selection:)(a1);
      }
    }

    v56 = type metadata accessor for SearchBoundProperty<TextSelection?>;
  }

  outlined destroy of Binding<SearchFieldState>(v53, v56);
  *&v115 = v25;
  *(&v115 + 1) = v26;
  v114[0] = 0uLL;
  v108 = 128;
  v61 = Text.resolveAttributedString(in:includeDefaultAttributes:options:idiom:)();
  if (v61)
  {
    v62 = v61;
    v63 = [v61 string];

    v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v66 = v65;
  }

  else
  {
    v64 = 0;
    v66 = 0;
  }

  v67 = [a1 placeholder];
  if (v67)
  {
    v102 = v25;
    v68 = v4;
    v69 = a1;
    v70 = v55;
    v71 = v46;
    v72 = v67;
    v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v75 = v74;

    if (!v66)
    {
      v76 = 0;
      v46 = v71;
      v55 = v70;
      a1 = v69;
      v4 = v68;
LABEL_49:

      [a1 setPlaceholder_];

      goto LABEL_50;
    }

    if (v73 == v64 && v66 == v75)
    {

      v46 = v71;
      v55 = v70;
      a1 = v69;
      v4 = v68;
      goto LABEL_50;
    }

    v77 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v46 = v71;
    v55 = v70;
    a1 = v69;
    v4 = v68;
    if (v77)
    {

      goto LABEL_50;
    }

LABEL_48:
    v76 = MEMORY[0x18D00C850](v64, v66);
    goto LABEL_49;
  }

  if (v66)
  {
    goto LABEL_48;
  }

LABEL_50:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_triggerSubmission>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_triggerSubmission>, &type metadata for EnvironmentValues.__Key_triggerSubmission, &protocol witness table for EnvironmentValues.__Key_triggerSubmission, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_searchToolbarBehavior> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_triggerSubmission> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_triggerSubmission>, &type metadata for EnvironmentValues.__Key_triggerSubmission, &protocol witness table for EnvironmentValues.__Key_triggerSubmission);
  if (v26)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  v78 = *(v4 + OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_triggerSubmission);
  v79 = *(v4 + OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_triggerSubmission + 8);
  *(v4 + OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_triggerSubmission) = v115;
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v78, v79);
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_triggerSubmission>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_searchTextClearAction>, &type metadata for EnvironmentValues.__Key_searchTextClearAction, &protocol witness table for EnvironmentValues.__Key_searchTextClearAction, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_searchToolbarBehavior> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_searchTextClearAction> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_searchTextClearAction>, &type metadata for EnvironmentValues.__Key_searchTextClearAction, &protocol witness table for EnvironmentValues.__Key_searchTextClearAction);
  if (v26)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  v80 = *(v4 + OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_clearAction);
  v81 = *(v4 + OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_clearAction + 8);
  *(v4 + OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_clearAction) = v115;
  outlined consume of (@escaping @callee_guaranteed (@guaranteed NSFileWrapper?) -> (@owned NSFileWrapper, @error @owned Error))?(v80, v81);
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_triggerSubmission>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SearchFieldPlacementKey>, &type metadata for SearchFieldPlacementKey, &protocol witness table for SearchFieldPlacementKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_searchToolbarBehavior> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<SearchFieldPlacementKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<SearchFieldPlacementKey>, &type metadata for SearchFieldPlacementKey, &protocol witness table for SearchFieldPlacementKey);
  if (v26)
  {

    PropertyList.Tracker.value<A>(_:for:)();

    *(v4 + OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_placement) = v115;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_triggerSubmission>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.IsSearchVibrancyEnabledKey>, &type metadata for EnvironmentValues.IsSearchVibrancyEnabledKey, &protocol witness table for EnvironmentValues.IsSearchVibrancyEnabledKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_searchToolbarBehavior> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.IsSearchVibrancyEnabledKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.IsSearchVibrancyEnabledKey>, &type metadata for EnvironmentValues.IsSearchVibrancyEnabledKey, &protocol witness table for EnvironmentValues.IsSearchVibrancyEnabledKey);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
    *(v4 + OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_placement) = v115;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_triggerSubmission>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.IsSearchVibrancyEnabledKey>, &type metadata for EnvironmentValues.IsSearchVibrancyEnabledKey, &protocol witness table for EnvironmentValues.IsSearchVibrancyEnabledKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_searchToolbarBehavior> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.IsSearchVibrancyEnabledKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.IsSearchVibrancyEnabledKey>, &type metadata for EnvironmentValues.IsSearchVibrancyEnabledKey, &protocol witness table for EnvironmentValues.IsSearchVibrancyEnabledKey);
    PropertyList.subscript.getter();
  }

  v82 = v115;
  v83 = OBJC_IVAR____TtC7SwiftUI14UIKitSearchBar_ensureVibrancy;
  v84 = a1[OBJC_IVAR____TtC7SwiftUI14UIKitSearchBar_ensureVibrancy];
  a1[OBJC_IVAR____TtC7SwiftUI14UIKitSearchBar_ensureVibrancy] = v115;
  if (v82 != v84)
  {
    if (v82)
    {
      v85 = 2;
    }

    else
    {
      v85 = 0;
    }

    [a1 _setOverrideUserInterfaceRenderingMode_];
    if (a1[v83])
    {
      v86 = 1;
    }

    else
    {
      v86 = -1;
    }

    [a1 _setOverrideVibrancyTrait_];
  }

  v87 = v105;
  UIKitSearchBarCoordinator.updateIsFirstResponder(_:to:)(a1);

  *(v4 + v103) = 0;
  v88 = v87;
  v89 = v104;
  outlined init with copy of Binding<SearchFieldState>(v88, v104, type metadata accessor for SearchFieldConfiguration);
  (*(*(v46 - 8) + 56))(v89, 0, 1, v46);
  v90 = OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_configuration;
  swift_beginAccess();
  outlined assign with take of SearchBoundProperty<TextSelection?>?(v89, v4 + v90, type metadata accessor for SearchFieldConfiguration?);
  result = swift_endAccess();
  *(v4 + OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_needsStateRestoration) = 0;
  return result;
}

uint64_t type metadata accessor for SearchAttributedString(uint64_t a1)
{
  result = type metadata singleton initialization cache for SearchAttributedString;
  if (!type metadata singleton initialization cache for SearchAttributedString)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for SearchAttributedString(uint64_t a1)
{
  result = type metadata accessor for AttributedString();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for SectionStyleConfiguration(uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    *a1 = *a2;
    *(a1 + 8) = v2;
    *(a1 + 16) = *(a2 + 16);
  }

  else
  {
    result = *a2;
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
  }

  return result;
}

id sub_18BF9B644(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = MEMORY[0x1E697FE38];
  if (a2)
  {
    _ss8RangeSetVySS5IndexVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<KeyboardTypeKey>, &type metadata for KeyboardTypeKey, &protocol witness table for KeyboardTypeKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<KeyboardTypeKey> and conformance EnvironmentPropertyKey<A>();
    swift_retain_n();
    PropertyList.Tracker.value<A>(_:for:)();

    [v3 setKeyboardType_];
    _ss8RangeSetVySS5IndexVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<KeyboardAppearanceKey>, &type metadata for KeyboardAppearanceKey, &protocol witness table for KeyboardAppearanceKey, v5);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<KeyboardAppearanceKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.Tracker.value<A>(_:for:)();

    [v3 setKeyboardAppearance_];
    _ss8RangeSetVySS5IndexVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AutocorrectionTypeKey>, &type metadata for AutocorrectionTypeKey, &protocol witness table for AutocorrectionTypeKey, v5);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<AutocorrectionTypeKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    _ss8RangeSetVySS5IndexVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<KeyboardTypeKey>, &type metadata for KeyboardTypeKey, &protocol witness table for KeyboardTypeKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<KeyboardTypeKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
    [v3 setKeyboardType_];
    _ss8RangeSetVySS5IndexVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<KeyboardAppearanceKey>, &type metadata for KeyboardAppearanceKey, &protocol witness table for KeyboardAppearanceKey, v5);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<KeyboardAppearanceKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
    [v3 setKeyboardAppearance_];
    _ss8RangeSetVySS5IndexVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AutocorrectionTypeKey>, &type metadata for AutocorrectionTypeKey, &protocol witness table for AutocorrectionTypeKey, v5);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<AutocorrectionTypeKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  v6 = 1;
  if ((v12 & 1) == 0)
  {
    v6 = 2;
  }

  if (v12 == 2)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  [v3 setAutocorrectionType_];
  if (a2)
  {
    _ss8RangeSetVySS5IndexVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextContentTypeKey>, &type metadata for TextContentTypeKey, &protocol witness table for TextContentTypeKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<TextContentTypeKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.Tracker.value<A>(_:for:)();

    v8 = v13;
    if (v13)
    {
LABEL_11:

      v9 = MEMORY[0x18D00C850](v12, v8);
      swift_bridgeObjectRelease_n();
      goto LABEL_14;
    }
  }

  else
  {
    _ss8RangeSetVySS5IndexVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextContentTypeKey>, &type metadata for TextContentTypeKey, &protocol witness table for TextContentTypeKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<TextContentTypeKey> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
    v8 = v13;
    if (v13)
    {
      goto LABEL_11;
    }
  }

  v9 = 0;
LABEL_14:
  [v3 setTextContentType_];

  _ss8RangeSetVySS5IndexVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextInputAutocapitalizationKey>, &type metadata for TextInputAutocapitalizationKey, &protocol witness table for TextInputAutocapitalizationKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<TextInputAutocapitalizationKey> and conformance EnvironmentPropertyKey<A>();
  if (a2)
  {
    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  [v3 setAutocapitalizationType_];
  _ss8RangeSetVySS5IndexVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.SubmitLabelKey>, &type metadata for EnvironmentValues.SubmitLabelKey, &protocol witness table for EnvironmentValues.SubmitLabelKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.SubmitLabelKey> and conformance EnvironmentPropertyKey<A>();
  if (a2)
  {
    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  v10 = qword_18CDEE1E0[v12];
  if ([v3 returnKeyType] != v10)
  {
    [v3 setReturnKeyType_];
  }

  _ss8RangeSetVySS5IndexVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.WritingToolsBehaviorKey>, &type metadata for EnvironmentValues.WritingToolsBehaviorKey, &protocol witness table for EnvironmentValues.WritingToolsBehaviorKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.WritingToolsBehaviorKey> and conformance EnvironmentPropertyKey<A>();
  if (a2)
  {
    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  return [v3 setWritingToolsBehavior_];
}

uint64_t closure #2 in Section<>.internalBody.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Section(0, v8, v9, v10);
  static ViewBuilder.buildExpression<A>(_:)();
  static ViewBuilder.buildExpression<A>(_:)();
  return (*(v5 + 8))(v7, a4);
}

void type metadata accessor for RangeSet<String.Index>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void _ss8RangeSetVySS5IndexVGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<KeyboardTypeKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<KeyboardTypeKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<KeyboardTypeKey> and conformance EnvironmentPropertyKey<A>)
  {
    _ss8RangeSetVySS5IndexVGMaTm_0(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<KeyboardTypeKey>, &type metadata for KeyboardTypeKey, &protocol witness table for KeyboardTypeKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<KeyboardTypeKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

double destroy for FindContext(uint64_t *a1)
{
  if (a1[1])
  {
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<AutocorrectionTypeKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<AutocorrectionTypeKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<AutocorrectionTypeKey> and conformance EnvironmentPropertyKey<A>)
  {
    _ss8RangeSetVySS5IndexVGMaTm_0(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<AutocorrectionTypeKey>, &type metadata for AutocorrectionTypeKey, &protocol witness table for AutocorrectionTypeKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<AutocorrectionTypeKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<TextContentTypeKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<TextContentTypeKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<TextContentTypeKey> and conformance EnvironmentPropertyKey<A>)
  {
    _ss8RangeSetVySS5IndexVGMaTm_0(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextContentTypeKey>, &type metadata for TextContentTypeKey, &protocol witness table for TextContentTypeKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<TextContentTypeKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<TextInputAutocapitalizationKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<TextInputAutocapitalizationKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<TextInputAutocapitalizationKey> and conformance EnvironmentPropertyKey<A>)
  {
    _ss8RangeSetVySS5IndexVGMaTm_0(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextInputAutocapitalizationKey>, &type metadata for TextInputAutocapitalizationKey, &protocol witness table for TextInputAutocapitalizationKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<TextInputAutocapitalizationKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t protocol witness for StyleableView.configuration.getter in conformance ResolvedSectionStyle@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(v1 + 16);
  return outlined copy of Binding<Int>?(v2, v3);
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.SubmitLabelKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.SubmitLabelKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.SubmitLabelKey> and conformance EnvironmentPropertyKey<A>)
  {
    _ss8RangeSetVySS5IndexVGMaTm_0(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.SubmitLabelKey>, &type metadata for EnvironmentValues.SubmitLabelKey, &protocol witness table for EnvironmentValues.SubmitLabelKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.SubmitLabelKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t SectionStyleModifier.styleBody(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v29 = a5;
  v8 = *(a4 + 24);
  v9 = *(a4 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v28 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = &v26 - v11;
  type metadata accessor for _TraitWritingModifier<IsExpandedTraitKey>(255, &lazy cache variable for type metadata for _TraitWritingModifier<IsExpandedTraitKey>, MEMORY[0x1E697F410], MEMORY[0x1E697F408], MEMORY[0x1E697FDB8]);
  v13 = type metadata accessor for ModifiedContent();
  v27 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v26 = &v26 - v18;
  (*(v8 + 24))(a1, a2, a3, v9, v17);
  v30[2] = a1;
  v30[3] = a2;
  v31 = a3;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v20 = MEMORY[0x1E697F410];
  v21 = MEMORY[0x1E697F408];
  View._trait<A>(_:_:)();
  (*(v28 + 8))(v12, AssociatedTypeWitness);
  v22 = lazy protocol witness table accessor for type _TraitWritingModifier<SectionActionsTraitKey> and conformance _TraitWritingModifier<A>(&lazy protocol witness table cache variable for type _TraitWritingModifier<IsExpandedTraitKey> and conformance _TraitWritingModifier<A>, &lazy cache variable for type metadata for _TraitWritingModifier<IsExpandedTraitKey>, v20, v21);
  v30[0] = AssociatedConformanceWitness;
  v30[1] = v22;
  swift_getWitnessTable(MEMORY[0x1E697E858], v13, v30);
  v23 = v26;
  static ViewBuilder.buildExpression<A>(_:)();
  v24 = *(v27 + 8);
  v24(v15, v13);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v24)(v23, v13);
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.WritingToolsBehaviorKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.WritingToolsBehaviorKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.WritingToolsBehaviorKey> and conformance EnvironmentPropertyKey<A>)
  {
    _ss8RangeSetVySS5IndexVGMaTm_0(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.WritingToolsBehaviorKey>, &type metadata for EnvironmentValues.WritingToolsBehaviorKey, &protocol witness table for EnvironmentValues.WritingToolsBehaviorKey, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.WritingToolsBehaviorKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t DefaultSectionStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  KeyPath = swift_getKeyPath();
  outlined copy of Binding<Int>?(a1, a2);
  outlined copy of Environment<Bool>.Content();
  result = outlined consume of Environment<Bool>.Content(KeyPath, 0);
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  *(a4 + 24) = 0;
  *(a4 + 32) = KeyPath;
  *(a4 + 40) = 0;
  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for MenuSectionStyle(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  v4 = *(a2 + 16);
  outlined copy of Environment<Bool>.Content();
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  return a1;
}

void specialized UITextInputTraits_Private.updatePrivateTraits(in:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a2)
  {
    _ss8RangeSetVySS5IndexVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextInputDictation.Key>, &type metadata for TextInputDictation.Key, &protocol witness table for TextInputDictation.Key, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<TextInputDictation.Key> and conformance EnvironmentPropertyKey<A>();

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    _ss8RangeSetVySS5IndexVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextInputDictation.Key>, &type metadata for TextInputDictation.Key, &protocol witness table for TextInputDictation.Key, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<TextInputDictation.Key> and conformance EnvironmentPropertyKey<A>();
    PropertyList.subscript.getter();
  }

  v4 = v5 | (v6 << 16);
  if (v5 != 2)
  {
    if ([v3 respondsToSelector_])
    {
      if ((([v3 forceEnableDictation] ^ v4) & 1) == 0)
      {
LABEL_10:
        if (([v3 respondsToSelector_] & 1) == 0)
        {
          if (v5)
          {
LABEL_16:
            if ([v3 respondsToSelector_])
            {
              if ([v3 forceSpellingDictation] == (v5 & 0x100) >> 8)
              {
LABEL_21:
                if ([v3 respondsToSelector_])
                {
                  if ([v3 preferOnlineDictation] == (v4 & 0x10000) >> 16)
                  {
                    return;
                  }
                }

                else if ((v4 & 0x10000) == 0)
                {
                  return;
                }

                _UITextInputTraitSetPreferOnlineDictation(v3, HIWORD(v4) & 1);
                return;
              }
            }

            else if ((v5 & 0x100) == 0)
            {
              goto LABEL_21;
            }

            _UITextInputTraitSetForceSpellingDictation(v3, (v4 >> 8) & 1);
            goto LABEL_21;
          }

LABEL_15:
          _UITextInputTraitSetForceDisableDictation(v3, (v5 ^ 1) & 1);
          goto LABEL_16;
        }

LABEL_14:
        if (([v3 forceDisableDictation] ^ v4))
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }
    }

    else if ((v5 & 1) == 0)
    {
      if (([v3 respondsToSelector_] & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    _UITextInputTraitSetForceEnableDictation(v3, v5 & 1);
    goto LABEL_10;
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<TextInputDictation.Key> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<TextInputDictation.Key> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<TextInputDictation.Key> and conformance EnvironmentPropertyKey<A>)
  {
    _ss8RangeSetVySS5IndexVGMaTm_0(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextInputDictation.Key>, &type metadata for TextInputDictation.Key, &protocol witness table for TextInputDictation.Key, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<TextInputDictation.Key> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t SidebarSectionStyle.makeBody(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  KeyPath = swift_getKeyPath();
  v9 = swift_getKeyPath();
  v10 = swift_getKeyPath();
  v11 = a2 != 0;
  if (a2)
  {
    v12 = a1;
  }

  else
  {
    v12 = 1;
  }

  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  *(a4 + 24) = v12;
  *(a4 + 32) = a2;
  *(a4 + 40) = v11 & a3;
  *(a4 + 41) = v11;
  *(a4 + 48) = KeyPath;
  *(a4 + 56) = 0;
  *(a4 + 64) = v9;
  *(a4 + 72) = 0;
  *(a4 + 80) = v10;
  *(a4 + 88) = 0;
  outlined copy of Binding<Int>?(a1, a2);

  return outlined copy of Binding<Int>?(a1, a2);
}

uint64_t initializeWithCopy for SidebarSection(uint64_t a1, uint64_t *a2)
{
  v4 = a2[1];
  if (v4)
  {
    *a1 = *a2;
    *(a1 + 8) = v4;
    *(a1 + 16) = *(a2 + 16);
  }

  else
  {
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
  }

  v5 = a2[3];
  v6 = a2[4];
  v7 = *(a2 + 41);
  v8 = *(a2 + 40);
  outlined copy of StateOrBinding<Bool>(v5, v6, v8, v7);
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v8;
  *(a1 + 41) = v7;
  v9 = a2[6];
  LOBYTE(v6) = *(a2 + 56);
  outlined copy of Environment<Selector?>.Content(v9, v6);
  *(a1 + 48) = v9;
  *(a1 + 56) = v6;
  v10 = a2[8];
  LOBYTE(v6) = *(a2 + 72);
  outlined copy of Environment<Selector?>.Content(v10, v6);
  *(a1 + 64) = v10;
  *(a1 + 72) = v6;
  v11 = a2[10];
  v12 = *(a2 + 88);
  outlined copy of Environment<Selector?>.Content(v11, v12);
  *(a1 + 80) = v11;
  *(a1 + 88) = v12;
  return a1;
}

void specialized UIKitSearchBarCoordinator.updateTextColor(_:in:)(void *a1, uint64_t *a2)
{
  v3 = a2[1];
  *&v28 = *a2;
  *(&v28 + 1) = v3;
  v4 = EnvironmentValues.foregroundColor.getter();
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = v4;
  if (!v3)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_triggerSubmission>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.SearchSuffixKey>, &type metadata for EnvironmentValues.SearchSuffixKey, &protocol witness table for EnvironmentValues.SearchSuffixKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_searchToolbarBehavior> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.SearchSuffixKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.SearchSuffixKey>, &type metadata for EnvironmentValues.SearchSuffixKey, &protocol witness table for EnvironmentValues.SearchSuffixKey);
    PropertyList.subscript.getter();
    v6 = v29;
    if ((v29 & 0x8000000000000000) == 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIColor, 0x1E69DC888);
    v7 = UIColor.init(_:)(v5);
    v8 = v7;
    goto LABEL_8;
  }

  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_triggerSubmission>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.SearchSuffixKey>, &type metadata for EnvironmentValues.SearchSuffixKey, &protocol witness table for EnvironmentValues.SearchSuffixKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_searchToolbarBehavior> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.SearchSuffixKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.SearchSuffixKey>, &type metadata for EnvironmentValues.SearchSuffixKey, &protocol witness table for EnvironmentValues.SearchSuffixKey);

  PropertyList.Tracker.value<A>(_:for:)();

  v6 = v29;
  if (v29 < 0)
  {
    goto LABEL_7;
  }

LABEL_4:

  outlined consume of Text.Storage(v28, *(&v28 + 1), v6 & 1);

LABEL_5:
  v7 = 0;
LABEL_8:
  v9 = [a1 searchTextField];
  v10 = *MEMORY[0x1E69DB650];
  v11 = v9;
  v12 = [v11 defaultTextAttributes];
  type metadata accessor for NSAttributedStringKey(0);
  _s7SwiftUI13TextSelectionVACSQAAWlTm_0(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey, protocol conformance descriptor for NSAttributedStringKey);
  v13 = MEMORY[0x1E69E7CA0];
  v14 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (*(v14 + 16) && (v15 = specialized __RawDictionaryStorage.find<A>(_:)(), (v16 & 1) != 0))
  {
    outlined init with copy of Any(*(v14 + 56) + 32 * v15, &v28);

    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIColor, 0x1E69DC888);
    if (swift_dynamicCast())
    {
      v17 = *&v26[0];
    }

    else
    {
      v17 = 0;
    }

    if (!v7)
    {
      goto LABEL_14;
    }
  }

  else
  {

    v17 = 0;
    if (!v7)
    {
LABEL_14:

      goto LABEL_23;
    }
  }

  if (v17)
  {
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIColor, 0x1E69DC888);
    v18 = v7;
    v19 = v17;
    v20 = static NSObject.== infix(_:_:)();

    if (v20)
    {

      return;
    }
  }

  v30 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIColor, 0x1E69DC888);
  *&v28 = v7;
  v21 = v7;
  v22 = [v11 defaultTextAttributes];
  v23 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v27 = v23;
  if (v30)
  {
    outlined init with take of Any(&v28, v26);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v26, v10, isUniquelyReferenced_nonNull_native);
    v27 = v23;
  }

  else
  {
    outlined destroy of AnyAccessibilityValue?(&v28, &lazy cache variable for type metadata for Any?, v13 + 8);
    specialized Dictionary._Variant.removeValue(forKey:)(v26);
    outlined destroy of AnyAccessibilityValue?(v26, &lazy cache variable for type metadata for Any?, v13 + 8);
  }

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v11 setDefaultTextAttributes_];

LABEL_23:
}

unint64_t lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey()
{
  result = lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey;
  if (!lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey)
  {
    type metadata accessor for NSAttributedStringKey(255);
    result = swift_getWitnessTable(protocol conformance descriptor for NSAttributedStringKey, v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey);
  }

  return result;
}

__n128 __swift_memcpy89_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t destroy for SidebarSection(uint64_t *a1)
{
  if (a1[1])
  {
  }

  outlined consume of StateOrBinding<Bool>(a1[3], a1[4], *(a1 + 40), *(a1 + 41));
  outlined consume of Environment<Selector?>.Content(a1[6], *(a1 + 56));
  outlined consume of Environment<Selector?>.Content(a1[8], *(a1 + 72));
  v2 = a1[10];
  v3 = *(a1 + 88);

  return outlined consume of Environment<Selector?>.Content(v2, v3);
}

double EnvironmentValues.disclosureGroupIndicatorTrailingPadding.getter(uint64_t a1)
{
  v2 = v1[1];
  v5 = *v1;
  EnvironmentValues.horizontalSizeClass.getter();
  if (v4 == 2 || (result = 0.0, (v4 & 1) != 0))
  {
    type metadata accessor for EnvironmentPropertyKey<ExpandedSplitViewKey>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ExpandedSplitViewKey>, &type metadata for ExpandedSplitViewKey, &protocol witness table for ExpandedSplitViewKey, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ExpandedSplitViewKey> and conformance EnvironmentPropertyKey<A>();
    if (v2)
    {

      PropertyList.Tracker.value<A>(_:for:)();
    }

    else
    {
      PropertyList.subscript.getter();
    }

    result = 8.0;
    if (v5)
    {
      return 4.0;
    }
  }

  return result;
}

void SidebarSection.body.getter(uint64_t a1@<X8>)
{
  v35 = a1;
  type metadata accessor for Group<StaticIf<_SemanticFeature<Semantics_v5>, _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer)>>>, _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, HStack<TupleView<(Mod(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for StaticIf<_SemanticFeature<Semantics_v5>, <<opaque return type of View.countViewsRequiresNonEmptySource()>>.0, ModifiedContent<Group<StaticIf<_SemanticFeature<Semantics_v5>, _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer)>>>, _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayou(0);
  v6 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v1[3];
  v43 = v1[2];
  v44 = v9;
  v45[0] = v1[4];
  *(v45 + 9) = *(v1 + 73);
  v10 = v1[1];
  v41 = *v1;
  v42 = v10;
  closure #1 in closure #2 in SidebarSection.body.getter(&v41);
  v11 = *(&v41 + 1);
  v34 = v41;
  v33 = v42;
  specialized closure #1 in closure #1 in SidebarSection.resolvedHeader<A>(base:)(&v41, v4);
  type metadata accessor for StaticIf<_SemanticFeature<Semantics_v5>, _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer)>>>, _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, HStack<TupleView<(ModifiedC(0);
  specialized closure #2 in closure #1 in SidebarSection.resolvedHeader<A>(base:)(&v41, &v4[*(v12 + 44)]);
  v14 = *(&v42 + 1);
  v13 = v43;
  v15 = BYTE9(v43);
  v32 = BYTE8(v43);
  if (BYTE9(v43))
  {
    v37 = *(&v42 + 1);
    v38 = v43;
    v39 = BYTE8(v43) & 1;
    _s7SwiftUI7BindingVySbGMaTm_6(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
    MEMORY[0x18D00ACC0](&v40);
  }

  else
  {
    LOBYTE(v37) = BYTE8(v42) & 1;
    v38 = v43;
    _s7SwiftUI7BindingVySbGMaTm_6(0, &lazy cache variable for type metadata for State<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
    State.wrappedValue.getter();
  }

  v16 = 1;
  if ((v40 & 1) == 0)
  {
    v16 = specialized Environment.wrappedValue.getter(*&v45[0], SBYTE8(v45[0])) ^ 1;
  }

  v17 = &v8[*(v6 + 44)];
  v18 = v16 & 1;
  v19 = swift_allocObject();
  *(v19 + 16) = 1;
  *(v19 + 17) = v18;
  outlined init with take of Group<StaticIf<_SemanticFeature<Semantics_v5>, _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer)>>>, _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, HStack<TupleView<(Mod(v4, v17, type metadata accessor for Group<StaticIf<_SemanticFeature<Semantics_v5>, _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer)>>>, _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, HStack<TupleView<(Mod);
  type metadata accessor for ModifiedContent<Group<StaticIf<_SemanticFeature<Semantics_v5>, _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer)>>>, _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, HStac(0);
  v21 = (v17 + *(v20 + 36));
  *v21 = _s7SwiftUI4ViewPAAE11outlineRoot_10isExpandedQrSb_SbSgtFyAA07OutlineE13ConfigurationVzcfU_TA_0;
  v21[1] = v19;
  v22 = specialized Environment.wrappedValue.getter(v44, SBYTE8(v44));
  v23 = v35;
  sub_18BF9D5B0(v8, v35, v24);
  if (!v11 || (v37 = v34, v38 = v11, v39 = v33, _s7SwiftUI7BindingVySbGMaTm_6(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]), MEMORY[0x18D00ACC0](&v40), v40 == 1))
  {
    v40 = 0;
    if (v15)
    {
      goto LABEL_9;
    }

LABEL_12:
    LOBYTE(v37) = v14 & 1;
    v38 = v13;
    _s7SwiftUI7BindingVySbGMaTm_6(0, &lazy cache variable for type metadata for State<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
    State.wrappedValue.getter();
    if ((v36 & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_13:
    v26 = 0;
    goto LABEL_14;
  }

  v40 = 1;
  if ((v15 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_9:
  v37 = v14;
  v38 = v13;
  v39 = v32 & 1;
  _s7SwiftUI7BindingVySbGMaTm_6(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0](&v36);
  if (v36)
  {
    goto LABEL_13;
  }

LABEL_10:
  v26 = specialized Environment.wrappedValue.getter(*&v45[0], SBYTE8(v45[0]));
LABEL_14:
  sub_18BF9D614(v8, v25);
  v27 = v40;
  type metadata accessor for Section<StaticIf<_SemanticFeature<Semantics_v5>, <<opaque return type of View.countViewsRequiresNonEmptySource()>>.0, ModifiedContent<Group<StaticIf<_SemanticFeature<Semantics_v5>, _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer)>>>, _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _Padd(0);
  v29 = (v23 + v28[11]);
  *v29 = v27;
  v29[1] = v26 & 1;
  *(v23 + v28[12]) = v22 & 1;
  v30 = v23 + v28[13];
  *v30 = 0;
  *(v30 + 8) = 0;
  *(v30 + 16) = 0;
}

uint64_t sub_18BF9D5B0(uint64_t a1, uint64_t a2, double a3)
{
  type metadata accessor for StaticIf<_SemanticFeature<Semantics_v5>, <<opaque return type of View.countViewsRequiresNonEmptySource()>>.0, ModifiedContent<Group<StaticIf<_SemanticFeature<Semantics_v5>, _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer)>>>, _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayou(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_18BF9D614(uint64_t a1, double a2)
{
  type metadata accessor for StaticIf<_SemanticFeature<Semantics_v5>, <<opaque return type of View.countViewsRequiresNonEmptySource()>>.0, ModifiedContent<Group<StaticIf<_SemanticFeature<Semantics_v5>, _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayout>)>>, _ContentShapeKindModifier<Rectangle>>>, PrimitiveButtonStyleContainerModifier<PlainButtonStyle>>, HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer)>>>, _ConditionalContent<ModifiedContent<Button<ModifiedContent<HStack<TupleView<(ModifiedContent<SectionStyleConfiguration.Header, StaticIf<UseSidebarHeaderModifierPredicate, SidebarHeaderModifier, EmptyModifier>>, Spacer, ModifiedContent<RotatingDisclosureIndicator, _PaddingLayou(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id specialized UIKitSearchBarCoordinator.updateToolbarBehavior(_:in:)(void *a1, uint64_t *a2)
{
  if (a2[1])
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_triggerSubmission>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_searchToolbarBehavior>, &type metadata for EnvironmentValues.__Key_searchToolbarBehavior, &protocol witness table for EnvironmentValues.__Key_searchToolbarBehavior, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_searchToolbarBehavior> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_searchToolbarBehavior> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_searchToolbarBehavior>, &type metadata for EnvironmentValues.__Key_searchToolbarBehavior, &protocol witness table for EnvironmentValues.__Key_searchToolbarBehavior);

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_triggerSubmission>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_searchToolbarBehavior>, &type metadata for EnvironmentValues.__Key_searchToolbarBehavior, &protocol witness table for EnvironmentValues.__Key_searchToolbarBehavior, MEMORY[0x1E697FE38]);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_searchToolbarBehavior> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_searchToolbarBehavior> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_searchToolbarBehavior>, &type metadata for EnvironmentValues.__Key_searchToolbarBehavior, &protocol witness table for EnvironmentValues.__Key_searchToolbarBehavior);
    PropertyList.subscript.getter();
  }

  if (v8 != 1 || ([a1 _overrideInlineInactiveWidth], v4 = v3, v5 = 1.79769313e308, v4 == 1.79769313e308))
  {
    result = [a1 _overrideInlineInactiveWidth];
    if (v7 == 0.0)
    {
      return result;
    }

    v5 = 0.0;
  }

  return [a1 _setOverrideInlineInactiveWidth_];
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_searchToolbarBehavior> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_searchToolbarBehavior> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_searchToolbarBehavior> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<SearchFieldPlacementKey>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_searchToolbarBehavior>, &type metadata for EnvironmentValues.__Key_searchToolbarBehavior, &protocol witness table for EnvironmentValues.__Key_searchToolbarBehavior, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_searchToolbarBehavior> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage>, &type metadata for EnvironmentValues.__Key_searchStorage, &protocol witness table for EnvironmentValues.__Key_searchStorage, MEMORY[0x1E697FE38]);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_searchStorage> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

void specialized closure #1 in closure #1 in SidebarSection.headerWithOutlineDisclosure<A>(base:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  static SystemStyleMetrics.list.getter();
  v4 = v11;

  if (*(a1 + 41))
  {
    _s7SwiftUI7BindingVySbGMaTm_6(0, &lazy cache variable for type metadata for Binding<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
    MEMORY[0x18D00ACC0](&v10);
  }

  else
  {
    _s7SwiftUI7BindingVySbGMaTm_6(0, &lazy cache variable for type metadata for State<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
    State.wrappedValue.getter();
  }

  v5 = v10;
  specialized Environment.wrappedValue.getter(*(a1 + 80), *(a1 + 88));
  EdgeInsets.init(_all:)();
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = v4;
  *(a2 + 17) = v5;
  *(a2 + 24) = 8;
  *(a2 + 32) = v6;
  *(a2 + 40) = v7;
  *(a2 + 48) = v8;
  *(a2 + 56) = v9;
  *(a2 + 64) = 0;
}

uint64_t outlined init with copy of Binding<SearchFieldState>(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s7SwiftUI7BindingVyAA16SearchFieldStateVGWOcTm_0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  type metadata accessor for CollectionOfOne<Hashable>(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

void *InlineActionsSectionStyle.makeBody(configuration:)@<X0>(void *result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v5 = 0;
  if (a2)
  {
    v7 = result;
    v8 = a2;
    v9 = a3 & 1;
    type metadata accessor for Binding<Bool>();
    result = MEMORY[0x18D00ACC0](&v6);
    if (v6 != 1)
    {
      v5 = 1;
    }
  }

  *a4 = v5;
  *(a4 + 1) = 257;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  return result;
}

uint64_t protocol witness for SectionStyle.makeBody(configuration:) in conformance PlainSectionStyle@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return outlined copy of Binding<Int>?(result, a2);
}

void type metadata accessor for Binding<PlatformSearchPopoverAnchor?>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Binding<PlatformSearchPopoverAnchor?>)
  {
    type metadata accessor for AnyAccessibilityValue?(255, &lazy cache variable for type metadata for PlatformSearchPopoverAnchor?, &type metadata for PlatformSearchPopoverAnchor);
    v1 = type metadata accessor for Binding();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Binding<PlatformSearchPopoverAnchor?>);
    }
  }
}

uint64_t outlined destroy of Binding<SearchFieldState>(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance SectionStyleConfiguration.RawContent(int *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  outlined init with copy of _ViewListInputs(a2, v17);
  v5 = _s7SwiftUI12_GraphInputsV7popLastyq_SgxmAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAA06SourceG033_D9F7AF928092578A4B8FA861B49E2161LLVyAA16ListStyleContentVG_AA03AnyJ0AMLLVTt0g5Tm(&lazy cache variable for type metadata for SourceInput<SectionStyleConfiguration.RawContent>, lazy protocol witness table accessor for type SectionStyleConfiguration.RawContent and conformance SectionStyleConfiguration.RawContent, &type metadata for SectionStyleConfiguration.RawContent, &lazy protocol witness table cache variable for type SourceInput<SectionStyleConfiguration.RawContent> and conformance SourceInput<A>);
  if (v5)
  {
    v9 = v5;
    v10 = v6;
    v11 = v7;
    v12 = v8;
    _GraphInputs.resetCurrentStyleableView()();
    v16 = v4;
    v13 = *(v10 + 16);
    v14 = lazy protocol witness table accessor for type SectionStyleConfiguration.RawContent and conformance SectionStyleConfiguration.RawContent();
    v13(&v16, v9, v10, v11, v12 | ((HIDWORD(v12) & 1) << 32), v17, a3, v14, v9, v10);
  }

  else
  {
    static _ViewListOutputs.emptyViewList(inputs:)();
  }

  return outlined destroy of _ViewListInputs(v17);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance SectionStyleConfiguration.Actions(int *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  outlined init with copy of _ViewListInputs(a2, v17);
  v5 = _s7SwiftUI12_GraphInputsV7popLastyq_SgxmAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAA06SourceG033_D9F7AF928092578A4B8FA861B49E2161LLVyAA16ListStyleContentVG_AA03AnyJ0AMLLVTt0g5Tm(&lazy cache variable for type metadata for SourceInput<SectionStyleConfiguration.Actions>, lazy protocol witness table accessor for type SectionStyleConfiguration.Actions and conformance SectionStyleConfiguration.Actions, &type metadata for SectionStyleConfiguration.Actions, &lazy protocol witness table cache variable for type SourceInput<SectionStyleConfiguration.Actions> and conformance SourceInput<A>);
  if (v5)
  {
    v9 = v5;
    v10 = v6;
    v11 = v7;
    v12 = v8;
    _GraphInputs.resetCurrentStyleableView()();
    v16 = v4;
    v13 = *(v10 + 16);
    v14 = lazy protocol witness table accessor for type SectionStyleConfiguration.Actions and conformance SectionStyleConfiguration.Actions();
    v13(&v16, v9, v10, v11, v12 | ((HIDWORD(v12) & 1) << 32), v17, a3, v14, v9, v10);
  }

  else
  {
    static _ViewListOutputs.emptyViewList(inputs:)();
  }

  return outlined destroy of _ViewListInputs(v17);
}

Swift::tuple_OpaquePointer_String __swiftcall SearchAttributedString.splitIntoTokensAndText()()
{
  type metadata accessor for Slice<AttributedString.CharacterView>(0, v1);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v48 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Range<AttributedString.Index>(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v47 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for AttributedString.CharacterView();
  v44 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v45 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for AttributedString.Runs.Index();
  v54 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v55 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AttributedString.Runs.Run();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v53 = &v42 - v13;
  v14 = type metadata accessor for AttributedString.Runs();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for IndexingIterator<AttributedString.Runs>(0, v16);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = 0;
  v65 = 0xE000000000000000;
  v49 = v0;
  AttributedString.runs.getter();
  (*(v15 + 16))(v21, v18, v14);
  lazy protocol witness table accessor for type AttributedString.CharacterView and conformance AttributedString.CharacterView(&lazy protocol witness table cache variable for type AttributedString.Runs and conformance AttributedString.Runs, MEMORY[0x1E69687C8], MEMORY[0x1E69687E0]);
  dispatch thunk of Collection.startIndex.getter();
  (*(v15 + 8))(v18, v14);
  ++v54;
  v52 = (v9 + 16);
  v51 = (v9 + 32);
  v50 = (v9 + 8);
  ++v44;
  v43 = MEMORY[0x1E69E7CC0];
  v22 = v45;
  while (1)
  {
    v23 = v55;
    dispatch thunk of Collection.endIndex.getter();
    lazy protocol witness table accessor for type AttributedString.CharacterView and conformance AttributedString.CharacterView(&lazy protocol witness table cache variable for type AttributedString.Runs.Index and conformance AttributedString.Runs.Index, MEMORY[0x1E69687B0], MEMORY[0x1E69687C0]);
    v24 = v56;
    v25 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*v54)(v23, v24);
    if (v25)
    {
      break;
    }

    v26 = dispatch thunk of Collection.subscript.read();
    v27 = v53;
    (*v52)(v53);
    v26(v62, 0);
    dispatch thunk of Collection.formIndex(after:)();
    (*v51)(v11, v27, v8);
    lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes.AnyTokenAttribute and conformance AttributeScopes.SwiftUIAttributes.AnyTokenAttribute();
    AttributedString.Runs.Run.subscript.getter();
    if (*(&v58 + 1))
    {
      v62[2] = v59;
      v62[3] = v60;
      v63 = v61;
      v62[0] = v57;
      v62[1] = v58;
      outlined init with copy of AnyToken(v62, &v57);
      v32 = v43;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v32 + 2) + 1, 1, v32);
      }

      v34 = *(v32 + 2);
      v33 = *(v32 + 3);
      if (v34 >= v33 >> 1)
      {
        v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1, v32);
      }

      outlined destroy of AnyToken(v62);
      (*v50)(v11, v8);
      *(v32 + 2) = v34 + 1;
      v43 = v32;
      v35 = &v32[72 * v34];
      *(v35 + 2) = v57;
      v36 = v58;
      v37 = v59;
      v38 = v60;
      *(v35 + 12) = v61;
      *(v35 + 4) = v37;
      *(v35 + 5) = v38;
      *(v35 + 3) = v36;
    }

    else
    {
      outlined destroy of AnyToken?(&v57);
      AttributedString.characters.getter();
      v28 = v8;
      v29 = v47;
      AttributedString.Runs.Run.range.getter();
      AttributedString.CharacterView.subscript.getter();
      v30 = v29;
      v8 = v28;
      outlined destroy of SearchAttributedString(v30, type metadata accessor for Range<AttributedString.Index>);
      (*v44)(v22, v46);
      v31 = String.init(_:)();
      MEMORY[0x18D00C9B0](v31);

      (*v50)(v11, v28);
    }
  }

  outlined destroy of SearchAttributedString(v21, type metadata accessor for IndexingIterator<AttributedString.Runs>);
  v39 = v64;
  v40 = v65;
  v41 = v43;
  result._1._object = v40;
  result._1._countAndFlagsBits = v39;
  result._0._rawValue = v41;
  return result;
}

void type metadata accessor for Slice<AttributedString.CharacterView>(uint64_t a1, double a2)
{
  if (!lazy cache variable for type metadata for Slice<AttributedString.CharacterView>)
  {
    type metadata accessor for AttributedString.CharacterView();
    lazy protocol witness table accessor for type AttributedString.CharacterView and conformance AttributedString.CharacterView(&lazy protocol witness table cache variable for type AttributedString.CharacterView and conformance AttributedString.CharacterView, MEMORY[0x1E6968678], MEMORY[0x1E6968690]);
    v2 = type metadata accessor for Slice();
    if (!v3)
    {
      atomic_store(v2, &lazy cache variable for type metadata for Slice<AttributedString.CharacterView>);
    }
  }
}

uint64_t lazy protocol witness table accessor for type AttributedString.CharacterView and conformance AttributedString.CharacterView(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined destroy of SearchAttributedString(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t destroy for SearchAttributedString(uint64_t a1)
{
  v2 = type metadata accessor for AttributedString();
  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

id UIKitSearchBarCoordinator.updateTextIfNeeded(_:text:in:)(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v34 = *a4;
  v35 = a4[1];
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_triggerSubmission>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.SearchSuffixKey>, &type metadata for EnvironmentValues.SearchSuffixKey, &protocol witness table for EnvironmentValues.SearchSuffixKey, MEMORY[0x1E697FE38]);
  lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_searchToolbarBehavior> and conformance EnvironmentPropertyKey<A>(&lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.SearchSuffixKey> and conformance EnvironmentPropertyKey<A>, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.SearchSuffixKey>, &type metadata for EnvironmentValues.SearchSuffixKey, &protocol witness table for EnvironmentValues.SearchSuffixKey);
  if (v35)
  {

    PropertyList.Tracker.value<A>(_:for:)();
  }

  else
  {
    PropertyList.subscript.getter();
  }

  v7 = v43;
  v8 = v44;
  v9 = (v4 + OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_oldSuffix);
  v10 = *(v4 + OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_oldSuffix + 8);
  v11 = *(v4 + OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_oldSuffix + 16);
  v12 = *(v4 + OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_oldSuffix + 24);
  v38 = *(v4 + OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_oldSuffix);
  v39 = v10;
  v40 = v11;
  v41 = v12;
  outlined copy of Text.Suffix.Storage(v38, v10, v11, v12);
  v36 = v45;
  v37 = v42;
  v13 = outlined copy of Text.Suffix.Storage(v42, v43, v44, v45);
  v14 = MEMORY[0x18D009D50](&v42, &v38, v13);
  outlined consume of Text.Suffix.Storage(v38, v39, v40);
  outlined consume of Text.Suffix.Storage(v42, v43, v44);
  v15 = (v4 + OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_oldText);
  v33 = a2;
  if (*(v4 + OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_oldText) == a2 && *(v4 + OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_oldText + 8) == a3)
  {
    if ((v14 & 1) == 0)
    {
LABEL_10:
      v16 = objc_allocWithZone(MEMORY[0x1E696AD40]);
      v17 = a2;
      v18 = a3;
      v19 = MEMORY[0x18D00C850](v17, a3);
      v20 = [v16 initWithString_];

      if ((v8 & 0x8000000000000000) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_14;
    }
  }

  else if ((_stringCompareWithSmolCheck(_:_:expecting:)() & v14 & 1) == 0)
  {
    goto LABEL_10;
  }

  if (*(v4 + OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_needsStateRestoration) == 1)
  {
    goto LABEL_10;
  }

  v18 = a3;
  v20 = 0;
  if ((v8 & 0x8000000000000000) == 0)
  {
LABEL_11:
    v42 = v34;
    v43 = v35;
    v38 = 0;
    v39 = 0;
    outlined copy of Text.Suffix.Storage(v37, v7, v8, v36);
    v21 = Text.resolveAttributedString(in:includeDefaultAttributes:options:idiom:)();
    outlined consume of Text.Storage(v37, v7, v8 & 1);

    v22 = v33;
    if (!v20)
    {
      goto LABEL_21;
    }

    goto LABEL_15;
  }

LABEL_14:
  v21 = 0;
  v22 = v33;
  if (!v20)
  {
LABEL_21:

    *v15 = v22;
    v15[1] = v18;

    v29 = *v9;
    v30 = v9[1];
    v31 = v9[2];
    *v9 = v37;
    v9[1] = v7;
    v9[2] = v8;
    v9[3] = v36;
    return outlined consume of Text.Suffix.Storage(v29, v30, v31);
  }

LABEL_15:
  v42 = v34;
  v43 = v35;
  if (EnvironmentValues.foregroundColor.getter())
  {
    v23 = type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIColor, 0x1E69DC888);

    v25 = UIColor.init(_:)(v24);
    v45 = v23;
    v42 = v25;
    NSMutableAttributedString.addUniformAttribute(_:value:)();

    __swift_destroy_boxed_opaque_existential_1(&v42);
  }

  if (v21)
  {
    [v20 appendAttributedString_];
  }

  result = [a1 searchField];
  if (result)
  {
    v27 = result;
    v28 = [objc_allocWithZone(MEMORY[0x1E696AAB0]) initWithAttributedString_];
    [v27 setAttributedText_];

    goto LABEL_21;
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type OnScrollVisibilityChangeModifier and conformance OnScrollVisibilityChangeModifier()
{
  result = lazy protocol witness table cache variable for type OnScrollVisibilityChangeModifier and conformance OnScrollVisibilityChangeModifier;
  if (!lazy protocol witness table cache variable for type OnScrollVisibilityChangeModifier and conformance OnScrollVisibilityChangeModifier)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for OnScrollVisibilityChangeModifier, &unk_1EFFAF280, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type OnScrollVisibilityChangeModifier and conformance OnScrollVisibilityChangeModifier);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.SearchSuffixKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.SearchSuffixKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.SearchSuffixKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.SearchSuffixKey>, &type metadata for EnvironmentValues.SearchSuffixKey, &protocol witness table for EnvironmentValues.SearchSuffixKey);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.SearchSuffixKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

double outlined copy of Text.Suffix.Storage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((a3 & 0x8000000000000000) == 0)
  {
    outlined copy of Text.Storage(a1, a2, a3 & 1);
  }

  return result;
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<OnScrollVisibilityChangeModifier>, OnScrollVisibilityGeometryAction>, _AppearanceActionModifier>, _AppearanceActionModifier>(uint64_t a1, unint64_t *a2, double (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for ModifiedContent();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

double protocol witness for static EnvironmentKey.defaultValue.getter in conformance EnvironmentValues.SearchSuffixKey@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  result = -0.0;
  *(a1 + 16) = xmmword_18CD68310;
  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<OnScrollVisibilityChangeModifier>, OnScrollVisibilityGeometryAction>, _AppearanceActionModifier>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<OnScrollVisibilityChangeModifier>, OnScrollVisibilityGeometryAction>, _AppearanceActionModifier>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<OnScrollVisibilityChangeModifier>, OnScrollVisibilityGeometryAction>, _AppearanceActionModifier>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>)
  {
    v6[4] = v0;
    v6[5] = v1;
    type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<OnScrollVisibilityChangeModifier>, OnScrollVisibilityGeometryAction>, _AppearanceActionModifier>, _AppearanceActionModifier>(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<OnScrollVisibilityChangeModifier>, OnScrollVisibilityGeometryAction>, _AppearanceActionModifier>, _AppearanceActionModifier>, type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<OnScrollVisibilityChangeModifier>, OnScrollVisibilityGeometryAction>, _AppearanceActionModifier>);
    v4 = v3;
    v5 = MEMORY[0x1E69805D0];
    v6[0] = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<OnScrollVisibilityChangeModifier>, OnScrollVisibilityGeometryAction>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<OnScrollVisibilityChangeModifier>, OnScrollVisibilityGeometryAction>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>, type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<OnScrollVisibilityChangeModifier>, OnScrollVisibilityGeometryAction>, _AppearanceActionModifier>, lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<OnScrollVisibilityChangeModifier>, OnScrollVisibilityGeometryAction> and conformance <> ModifiedContent<A, B>, MEMORY[0x1E69805D0]);
    v6[1] = v5;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v6);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<OnScrollVisibilityChangeModifier>, OnScrollVisibilityGeometryAction>, _AppearanceActionModifier>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined consume of Text.Suffix.Storage(uint64_t result, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0x8000000000000000) == 0)
  {
    outlined consume of Text.Storage(result, a2, a3 & 1);
  }

  return result;
}

void UIKitSearchBarCoordinator.updateTokensIfNeeded(_:tokens:platformTokens:)(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v73 = a3;
  v74 = a4;
  v7 = ~a4;
  v8 = type metadata accessor for PlatformItemList.Item(0);
  v69 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v72 = &v68 - v12;
  if (v7)
  {
    v68 = a1;
    v13 = *(a2 + 16);
    v70 = v4;
    v71 = v13;
    if (v13)
    {
      v14 = 0;
      v15 = a2 + 32;
      v16 = MEMORY[0x1E69E7CC0];
      v17 = v69;
      while (1)
      {
        v110 = v14;
        outlined init with copy of AnyToken(v15, v111);
        outlined init with copy of AnyToken(v111, &v94);
        if (v74)
        {
          v18 = v73;
          outlined copy of PlatformItemCollection?(v73, v74);
        }

        else
        {
          WeakValue = AGGraphGetWeakValue();
          if (WeakValue)
          {
            v18 = *WeakValue;
          }

          else
          {
            v18 = MEMORY[0x1E69E7CC0];
          }
        }

        if (v14 >= *(v18 + 16))
        {
          break;
        }

        v75 = v15;
        v20 = v72;
        outlined init with copy of Binding<SearchFieldState>(v18 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v14, v72, type metadata accessor for PlatformItemList.Item);

        type metadata accessor for UIKitSearchBarCoordinator.RepresentedToken(0);
        v21 = swift_allocObject();
        v22 = v97;
        *(v21 + 48) = v96;
        *(v21 + 64) = v22;
        *(v21 + 80) = v98;
        v23 = v95;
        *(v21 + 16) = v94;
        *(v21 + 32) = v23;
        v24 = OBJC_IVAR____TtCC7SwiftUI25UIKitSearchBarCoordinatorP33_9E78780A6F2626BA9019200B48F4A36B16RepresentedToken_platformItem;
        outlined init with take of PlatformItemList.Item(v20, v21 + OBJC_IVAR____TtCC7SwiftUI25UIKitSearchBarCoordinatorP33_9E78780A6F2626BA9019200B48F4A36B16RepresentedToken_platformItem, type metadata accessor for PlatformItemList.Item);
        v25 = *(v21 + v24);
        if (v25)
        {
          v26 = [v25 string];
          if (!v26)
          {
            v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v26 = MEMORY[0x18D00C850](v27);

            v17 = v69;
          }

          *&v102 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          *(&v102 + 1) = v28;
          outlined init with copy of Binding<SearchFieldState>(v21 + v24, v10, type metadata accessor for PlatformItemList.Item);
          v29 = *(v10 + 13);
          v30 = *(v10 + 11);
          v91 = *(v10 + 12);
          v92 = v29;
          v31 = *(v10 + 13);
          v93[0] = *(v10 + 14);
          *(v93 + 11) = *(v10 + 235);
          v32 = *(v10 + 9);
          v33 = *(v10 + 7);
          v87 = *(v10 + 8);
          v88 = v32;
          v34 = *(v10 + 9);
          v35 = *(v10 + 11);
          v89 = *(v10 + 10);
          v90 = v35;
          v36 = *(v10 + 5);
          v84[0] = *(v10 + 4);
          v84[1] = v36;
          v37 = *(v10 + 7);
          v39 = *(v10 + 4);
          v38 = *(v10 + 5);
          v85 = *(v10 + 6);
          v86 = v37;
          v99[3] = v91;
          v100 = v31;
          v101[0] = *(v10 + 14);
          *(v101 + 11) = *(v10 + 235);
          v98 = v87;
          v99[0] = v34;
          v99[1] = v89;
          v99[2] = v30;
          v94 = v39;
          v95 = v38;
          v96 = v85;
          v97 = v33;
          if (_s7SwiftUI5ImageVAAE8ResolvedVSgWOg(&v94) == 1)
          {
            v40 = 0;
          }

          else if (v100)
          {
            swift_unknownObjectRetain();
            objc_opt_self();
            v40 = swift_dynamicCastObjCClassUnconditional();
          }

          else
          {
            v82 = v98;
            v83[0] = v99[0];
            *(v83 + 12) = *(v99 + 12);
            v78 = v94;
            v79 = v95;
            v80 = v96;
            v81 = v97;
            v41 = *(v10 + 6);
            outlined init with copy of AnyAccessibilityValue?(v84, v76, &lazy cache variable for type metadata for Image.Resolved?, MEMORY[0x1E6981730]);
            outlined init with copy of GraphicsImage(&v94, v76);
            v40 = GraphicsImage.makePlatformImage(fixedSymbolConfiguration:flattenMaskColor:colorResolver:)(0, 0, v41);
            outlined destroy of AnyAccessibilityValue?(v84, &lazy cache variable for type metadata for Image.Resolved?, MEMORY[0x1E6981730]);
            v76[4] = v82;
            v77[0] = v83[0];
            *(v77 + 12) = *(v83 + 12);
            v76[0] = v78;
            v76[1] = v79;
            v76[2] = v80;
            v76[3] = v81;
            outlined destroy of GraphicsImage(v76);
          }

          outlined destroy of Binding<SearchFieldState>(v10, type metadata accessor for PlatformItemList.Item);
          *&v103[0] = v40;
          outlined init with copy of AnyHashable(v21 + 48, v103 + 8);
          v42 = objc_opt_self();
          v43 = v40;
          v44 = [v42 tokenWithIcon:v43 text:v26];

          v104 = v44;
          [v44 setRepresentedObject_];

          v107 = v103[1];
          v108 = v103[2];
          v109 = v104;
          v105 = v102;
          v106 = v103[0];
        }

        else
        {

          v105 = 0u;
          v106 = 0u;
          v107 = 0u;
          v108 = 0u;
          v109 = 0;
        }

        v45 = v75;
        outlined destroy of Binding<SearchFieldState>(&v110, type metadata accessor for (offset: Int, element: AnyToken));
        if (*(&v105 + 1))
        {
          v96 = v107;
          v97 = v108;
          *&v98 = v109;
          v94 = v105;
          v95 = v106;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 2) + 1, 1, v16);
          }

          v47 = *(v16 + 2);
          v46 = *(v16 + 3);
          if (v47 >= v46 >> 1)
          {
            v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v46 > 1), v47 + 1, 1, v16);
          }

          *(v16 + 2) = v47 + 1;
          v48 = &v16[72 * v47];
          *(v48 + 2) = v94;
          v49 = v95;
          v50 = v96;
          v51 = v97;
          *(v48 + 12) = v98;
          *(v48 + 4) = v50;
          *(v48 + 5) = v51;
          *(v48 + 3) = v49;
        }

        else
        {
          outlined destroy of AnyAccessibilityValue?(&v105, &lazy cache variable for type metadata for UIKitSearchBarCoordinator.SearchToken?, &type metadata for UIKitSearchBarCoordinator.SearchToken);
        }

        ++v14;
        v15 = v45 + 72;
        if (v71 == v14)
        {
          goto LABEL_29;
        }
      }

      __break(1u);
      goto LABEL_47;
    }

    v16 = MEMORY[0x1E69E7CC0];
LABEL_29:
    v52 = OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_oldTokens;
    v53 = v70;
    v54 = *(v70 + OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_oldTokens);

    v55 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI25UIKitSearchBarCoordinatorC0E5Token33_9E78780A6F2626BA9019200B48F4A36BLLV_Tt1g5(v16, v54);

    if ((v55 & 1) != 0 && *(v53 + OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_needsStateRestoration) != 1)
    {
      v61 = *(*(v53 + v52) + 16);
      if (v61)
      {
        if (v61 > *(v16 + 2))
        {
LABEL_48:
          __break(1u);
          return;
        }

        v62 = 0;
        v63 = 96;
        while (1)
        {
          v65 = *(v70 + v52);
          if (v62 >= *(v65 + 16))
          {
            break;
          }

          v66 = *&v16[v63];
          v67 = *(v65 + v63);
          if ([v66 representedObject])
          {
            _bridgeAnyObjectToAny(_:)();
            swift_unknownObjectRelease();
            __swift_project_boxed_opaque_existential_1(&v94, *(&v95 + 1));
            v64 = _bridgeAnythingToObjectiveC<A>(_:)();
            __swift_destroy_boxed_opaque_existential_1(&v94);
          }

          else
          {
            v64 = 0;
          }

          ++v62;
          [v67 setRepresentedObject_];

          swift_unknownObjectRelease();
          v63 += 72;
          if (v61 == v62)
          {
            goto LABEL_35;
          }
        }

LABEL_47:
        __break(1u);
        goto LABEL_48;
      }
    }

    else
    {
      v56 = [v68 searchTextField];
      v57 = *(v16 + 2);
      if (v57)
      {
        *&v84[0] = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray.reserveCapacity(_:)();
        v58 = (v16 + 32);
        do
        {
          outlined init with copy of UIKitSearchBarCoordinator.SearchToken(v58, &v94);
          v59 = v98;
          outlined destroy of UIKitSearchBarCoordinator.SearchToken(&v94);
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v58 += 72;
          --v57;
        }

        while (v57);
      }

      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UISearchToken, 0x1E69DCF30);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v56 setTokens_];

LABEL_35:
      v53 = v70;
    }

    *(v53 + v52) = v16;
  }
}

void type metadata accessor for _ViewModifier_Content<OnScrollVisibilityChangeModifier>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ViewModifier_Content<OnScrollVisibilityChangeModifier>)
  {
    lazy protocol witness table accessor for type OnScrollVisibilityChangeModifier and conformance OnScrollVisibilityChangeModifier();
    v1 = type metadata accessor for _ViewModifier_Content();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ViewModifier_Content<OnScrollVisibilityChangeModifier>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_searchTextClearAction> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_searchTextClearAction> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_searchTextClearAction> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_sliderTicksVisibility>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_searchTextClearAction>, &type metadata for EnvironmentValues.__Key_searchTextClearAction, &protocol witness table for EnvironmentValues.__Key_searchTextClearAction);
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_searchTextClearAction> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<OnScrollVisibilityChangeModifier>, OnScrollVisibilityGeometryAction>, _AppearanceActionModifier> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    v8 = a2(255);
    v9[0] = a3();
    v9[1] = a4;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v8, v9);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _ViewModifier_Content<OnScrollVisibilityChangeModifier> and conformance _ViewModifier_Content<A>()
{
  result = lazy protocol witness table cache variable for type _ViewModifier_Content<OnScrollVisibilityChangeModifier> and conformance _ViewModifier_Content<A>;
  if (!lazy protocol witness table cache variable for type _ViewModifier_Content<OnScrollVisibilityChangeModifier> and conformance _ViewModifier_Content<A>)
  {
    type metadata accessor for _ViewModifier_Content<OnScrollVisibilityChangeModifier>(255);
    result = swift_getWitnessTable(MEMORY[0x1E697FDF8], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewModifier_Content<OnScrollVisibilityChangeModifier> and conformance _ViewModifier_Content<A>);
  }

  return result;
}

void UIKitSearchBarCoordinator.updateIsFirstResponder(_:to:)(uint64_t a1)
{
  v2 = v1;
  v37 = a1;
  type metadata accessor for SearchFieldConfiguration?(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for SearchFieldState(0);
  MEMORY[0x1EEE9AC00](v40);
  v36 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v35 = &v33 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v33 - v10;
  v12 = type metadata accessor for SearchFieldConfiguration(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v34 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v33 - v16;
  v18 = OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_configuration;
  swift_beginAccess();
  v19 = *(v13 + 48);
  if (v19(v2 + v18, 1, v12))
  {
    v39 = 0;
  }

  else
  {
    outlined init with copy of Binding<SearchFieldState>(v2 + v18, v17, type metadata accessor for SearchFieldConfiguration);
    type metadata accessor for Binding<SearchFieldState>(0);
    MEMORY[0x18D00ACC0]();
    outlined destroy of Binding<SearchFieldState>(v17, type metadata accessor for SearchFieldConfiguration);
    v20 = *v11;
    outlined destroy of Binding<SearchFieldState>(v11, type metadata accessor for SearchFieldState);
    v39 = v20 != 2;
  }

  type metadata accessor for Binding<SearchFieldState>(0);
  v22 = v21;
  MEMORY[0x18D00ACC0]();
  v38 = *v11;
  outlined destroy of Binding<SearchFieldState>(v11, type metadata accessor for SearchFieldState);
  outlined init with copy of Binding<SearchFieldState>(v2 + v18, v5, type metadata accessor for SearchFieldConfiguration?);
  if (v19(v5, 1, v12) == 1)
  {
    outlined destroy of Binding<SearchFieldState>(v5, type metadata accessor for SearchFieldConfiguration?);
    MEMORY[0x18D00ACC0](v22);
    v23 = v11[*(v40 + 44) + 4];
    outlined destroy of Binding<SearchFieldState>(v11, type metadata accessor for SearchFieldState);
    goto LABEL_6;
  }

  v25 = v34;
  outlined init with take of PlatformItemList.Item(v5, v34, type metadata accessor for SearchFieldConfiguration);
  v26 = v35;
  MEMORY[0x18D00ACC0](v22);
  v27 = v40;
  v28 = *(v26 + *(v40 + 44));
  outlined destroy of Binding<SearchFieldState>(v26, type metadata accessor for SearchFieldState);
  v29 = v36;
  MEMORY[0x18D00ACC0](v22);
  outlined destroy of Binding<SearchFieldState>(v25, type metadata accessor for SearchFieldConfiguration);
  v30 = v29 + *(v27 + 44);
  v31 = *v30;
  v23 = *(v30 + 4);
  outlined destroy of Binding<SearchFieldState>(v29, type metadata accessor for SearchFieldState);
  if (v28 == -1 || v31 == -1 || v28 != v31)
  {
LABEL_6:
    v24 = 1;
    if (v38 != 2 && !v39 || (v23 & 1) != 0)
    {
      goto LABEL_18;
    }

    goto LABEL_8;
  }

  if (v38 != 2 && !v39)
  {
    v24 = 1;
    goto LABEL_18;
  }

  v32 = !v39;
  if (v38 != 2)
  {
    v32 = 1;
  }

  if ((v32 & 1) == 0)
  {
LABEL_8:
    v24 = 0;
LABEL_18:
    UIKitSearchBar.enqueueFirstResponderUpdate(_:)(v24);
  }
}

Swift::Void __swiftcall UIKitSearchBar.enqueueFirstResponderUpdate(_:)(Swift::Bool a1)
{
  v1[OBJC_IVAR____TtC7SwiftUI14UIKitSearchBar_pendingIsFirstResponder] = a1;
  v2 = [v1 searchTextField];
  v9 = [v2 _viewControllerForAncestor];

  v3 = [v1 searchTextField];
  v4 = [v3 window];

  v5 = v9;
  if (v9 && (v6 = [v9 transitionCoordinator], v5 = v9, v6))
  {
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = partial apply for closure #1 in UIKitSearchBar.enqueueFirstResponderUpdate(_:);
    aBlock[5] = v7;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ();
    aBlock[3] = &block_descriptor_12;
    v8 = _Block_copy(aBlock);

    [v6 animateAlongsideTransition:0 completion:v8];

    _Block_release(v8);
    swift_unknownObjectRelease();
  }

  else if (v4)
  {
    LOBYTE(aBlock[0]) = 17;
    swift_allocObject();
    swift_unknownObjectWeakInit();

    static Update.enqueueAction(reason:_:)();
  }

  else
  {
  }
}

uint64_t sub_18BFA006C()
{
  MEMORY[0x18D011290](v0 + 16);

  return swift_deallocObject();
}

void UIKitSearchBarCoordinator.resolvedTokenScopes.getter()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v1 = Strong;
  v2 = [Strong searchTextField];

  if (!v2)
  {
    return;
  }

  v3 = [v2 selectedTextRange];
  if (!v3)
  {
LABEL_23:

    return;
  }

  v4 = v3;
  if ([v3 isEmpty])
  {

LABEL_6:
    return;
  }

  v5 = [v2 tokensInRange_];
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UISearchToken, 0x1E69DCF30);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v6 >> 62)
  {
    if (__CocoaSet.count.getter() == 1 && __CocoaSet.count.getter())
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

  if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
  {
LABEL_22:

    goto LABEL_23;
  }

LABEL_9:
  if ((v6 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x18D00E9C0](0, v6);
  }

  else
  {
    if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v7 = *(v6 + 32);
  }

  v8 = v7;

  if ([v8 representedObject])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
  }

  v15[0] = v13;
  v15[1] = v14;
  if (*(&v14 + 1))
  {
    type metadata accessor for UIKitSearchBarCoordinator.RepresentedToken(0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      goto LABEL_6;
    }

    type metadata accessor for SearchFieldConfiguration?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<PlatformItemList.Item>, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6F90]);
    v9 = *(type metadata accessor for PlatformItemList.Item(0) - 8);
    v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_18CD63400;
    outlined init with copy of Binding<SearchFieldState>(v12 + OBJC_IVAR____TtCC7SwiftUI25UIKitSearchBarCoordinatorP33_9E78780A6F2626BA9019200B48F4A36B16RepresentedToken_platformItem, v11 + v10, type metadata accessor for PlatformItemList.Item);
  }

  else
  {

    outlined destroy of AnyAccessibilityValue?(v15, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8);
  }
}

uint64_t specialized UIKitSearchScopeCoordinating<>.updateScopes(_:newScopes:newTokenScopes:customScopeBar:customScopeBarUpdate:)(void *a1, uint64_t a2, int a3, uint64_t a4, char a5, __int128 *a6, uint64_t a7, uint64_t a8, unsigned __int8 a9)
{
  v87 = a8;
  v92 = a1;
  v93 = a7;
  v91 = a3;
  v90 = a2;
  v11 = a6[3];
  v12 = ~a5;
  v116 = a6[2];
  v117 = v11;
  v118 = a6[4];
  v119 = *(a6 + 10);
  v13 = *a6;
  v14 = a6[1];
  v94 = a6;
  v114 = v13;
  v115 = v14;
  v15 = type metadata accessor for PlatformItemList.Item(0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v100 = &v87 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v98 = &v87 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v96 = &v87 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v97 = (&v87 - v23);
  MEMORY[0x1EEE9AC00](v24);
  v26 = (&v87 - v25);
  MEMORY[0x1EEE9AC00](v27);
  v29 = (&v87 - v28);
  type metadata accessor for PlatformItemList.Item?(0);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v88 = &v87 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v87 - v33;
  v99 = v26;
  v89 = v15;
  if (!v12)
  {
    goto LABEL_19;
  }

  specialized Collection.first.getter(a4, a5 & 1, &v87 - v33);
  if ((*(v16 + 48))(v34, 1, v15) == 1)
  {
    outlined destroy of Binding<SearchFieldState>(v34, type metadata accessor for PlatformItemList.Item?);
LABEL_19:
    v38 = 0;
    goto LABEL_20;
  }

  v35 = *(v34 + 117);

  result = outlined destroy of Binding<SearchFieldState>(v34, type metadata accessor for PlatformItemList.Item);
  if (!v35)
  {
    goto LABEL_19;
  }

  v95 = *(v35 + 16);
  if (v95)
  {
    v37 = 0;
    v38 = MEMORY[0x1E69E7CC0];
    while (v37 < *(v35 + 16))
    {
      v39 = (*(v16 + 80) + 32) & ~*(v16 + 80);
      v40 = *(v16 + 72);
      outlined init with copy of Binding<SearchFieldState>(v35 + v39 + v40 * v37, v29, type metadata accessor for PlatformItemList.Item);
      if (*v29)
      {

        outlined init with take of PlatformItemList.Item(v29, v100, type metadata accessor for PlatformItemList.Item);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v108 = v38;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v38 + 16) + 1, 1);
          v38 = v108;
        }

        v43 = *(v38 + 16);
        v42 = *(v38 + 24);
        if (v43 >= v42 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v42 > 1), v43 + 1, 1);
          v38 = v108;
        }

        *(v38 + 16) = v43 + 1;
        result = outlined init with take of PlatformItemList.Item(v100, v38 + v39 + v43 * v40, type metadata accessor for PlatformItemList.Item);
        v26 = v99;
      }

      else
      {
        result = outlined destroy of Binding<SearchFieldState>(v29, type metadata accessor for PlatformItemList.Item);
      }

      if (v95 == ++v37)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
    goto LABEL_80;
  }

  v38 = MEMORY[0x1E69E7CC0];
LABEL_17:

  if (!*(v38 + 16))
  {

    goto LABEL_19;
  }

LABEL_20:
  v45 = v93;
  v44 = v94;
  v95 = v38;
  if (v91 != 0xFF)
  {
    v46 = v88;
    specialized Collection.first.getter(v90, v91 & 1, v88);
    if ((*(v16 + 48))(v46, 1, v89) == 1)
    {
      outlined destroy of Binding<SearchFieldState>(v46, type metadata accessor for PlatformItemList.Item?);
      goto LABEL_35;
    }

    v47 = *(v46 + 936);

    result = outlined destroy of Binding<SearchFieldState>(v46, type metadata accessor for PlatformItemList.Item);
    if (!v47)
    {
      goto LABEL_35;
    }

    v48 = *(v47 + 16);
    if (!v48)
    {
      v50 = MEMORY[0x1E69E7CC0];
LABEL_76:

      if (!*(v50 + 16))
      {

        v50 = 0;
      }

      v45 = v93;
      v44 = v94;
      goto LABEL_36;
    }

    v49 = 0;
    v50 = MEMORY[0x1E69E7CC0];
    while (v49 < *(v47 + 16))
    {
      v51 = (*(v16 + 80) + 32) & ~*(v16 + 80);
      v52 = *(v16 + 72);
      outlined init with copy of Binding<SearchFieldState>(v47 + v51 + v52 * v49, v26, type metadata accessor for PlatformItemList.Item);
      if (*v26)
      {

        outlined init with take of PlatformItemList.Item(v26, v98, type metadata accessor for PlatformItemList.Item);
        v53 = swift_isUniquelyReferenced_nonNull_native();
        *&v108 = v50;
        if ((v53 & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v50 + 16) + 1, 1);
          v50 = v108;
        }

        v55 = *(v50 + 16);
        v54 = *(v50 + 24);
        if (v55 >= v54 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v54 > 1), v55 + 1, 1);
          v50 = v108;
        }

        *(v50 + 16) = v55 + 1;
        result = outlined init with take of PlatformItemList.Item(v98, v50 + v51 + v55 * v52, type metadata accessor for PlatformItemList.Item);
        v26 = v99;
      }

      else
      {
        result = outlined destroy of Binding<SearchFieldState>(v26, type metadata accessor for PlatformItemList.Item);
      }

      if (v48 == ++v49)
      {
        goto LABEL_76;
      }
    }

LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

LABEL_35:
  v50 = 0;
LABEL_36:
  if (*v44)
  {

LABEL_38:
    v56 = OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_scopes;
    if (*(*(v45 + OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_scopes) + 16))
    {
      [v92 setScopeButtonTitles_];
      *(v45 + v56) = MEMORY[0x1E69E7CC0];
    }

    v57 = *v44;
    if (*v44)
    {
      v58 = *(v44 + 8);
      v104 = *(v44 + 24);
      v59 = *(v44 + 56);
      v105 = *(v44 + 40);
      v106 = v59;
      v107 = *(v44 + 72);
      v103 = v58;
      v102 = v57;
      v110 = v116;
      v111 = v117;
      v112 = v118;
      v113 = v119;
      v108 = v114;
      v109 = v115;
      outlined init with copy of BoundInputsView(&v108, &v101);
      closure #1 in SwiftUISearchController.update(to:)(&v102, v87, a9);
      outlined destroy of AnyAccessibilityValue?(v44, &lazy cache variable for type metadata for BoundInputsView?, &type metadata for BoundInputsView);
    }

LABEL_70:
    v82 = v45 + OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_customScopeBar;
    v83 = *(v45 + OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_customScopeBar + 48);
    v110 = *(v45 + OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_customScopeBar + 32);
    v111 = v83;
    v112 = *(v45 + OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_customScopeBar + 64);
    v113 = *(v45 + OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_customScopeBar + 80);
    v84 = *(v45 + OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_customScopeBar + 16);
    v108 = *(v45 + OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_customScopeBar);
    v109 = v84;
    v85 = *(v44 + 16);
    *v82 = *v44;
    *(v82 + 16) = v85;
    v86 = *(v44 + 48);
    *(v82 + 32) = *(v44 + 32);
    *(v82 + 48) = v86;
    *(v82 + 64) = *(v44 + 64);
    *(v82 + 80) = *(v44 + 80);
    outlined destroy of AnyAccessibilityValue?(&v108, &lazy cache variable for type metadata for BoundInputsView?, &type metadata for BoundInputsView);
    return outlined init with copy of AnyAccessibilityValue?(v44, &v102, &lazy cache variable for type metadata for BoundInputsView?, &type metadata for BoundInputsView);
  }

  if (v95)
  {
    v60 = v95;
  }

  else
  {
    if (!v50)
    {
      goto LABEL_38;
    }

    v60 = v50;
  }

  v61 = *(v60 + 16);
  v62 = v97;
  v98 = v61;
  v99 = v60;
  if (v61)
  {
    v63 = v60 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
    v64 = *(v16 + 72);

    v65 = MEMORY[0x1E69E7CC0];
    v100 = v16;
    do
    {
      outlined init with copy of Binding<SearchFieldState>(v63, v62, type metadata accessor for PlatformItemList.Item);
      if (*v62)
      {
        v66 = [*v62 string];
        v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v68 = v62;
        v70 = v69;

        outlined destroy of Binding<SearchFieldState>(v68, type metadata accessor for PlatformItemList.Item);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v65 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v65 + 2) + 1, 1, v65);
        }

        v72 = *(v65 + 2);
        v71 = *(v65 + 3);
        if (v72 >= v71 >> 1)
        {
          v65 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v71 > 1), v72 + 1, 1, v65);
        }

        *(v65 + 2) = v72 + 1;
        v73 = &v65[16 * v72];
        *(v73 + 4) = v67;
        *(v73 + 5) = v70;
        v16 = v100;
        v62 = v97;
      }

      else
      {
        outlined destroy of Binding<SearchFieldState>(v62, type metadata accessor for PlatformItemList.Item);
      }

      v63 += v64;
      --v61;
    }

    while (v61);
  }

  else
  {

    v65 = MEMORY[0x1E69E7CC0];
  }

  v74 = [v92 scopeButtonTitles];
  if (v74 && (v75 = v74, v76 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v75, LOBYTE(v75) = _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v65, v76), , (v75 & 1) != 0))
  {
  }

  else
  {
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v92 setScopeButtonTitles_];
  }

  v45 = v93;
  v44 = v94;
  if (!v98)
  {

    if (v50)
    {
LABEL_67:
      *(v45 + OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_scopes) = v50;
    }

LABEL_68:
    if (v95)
    {
      *(v45 + OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_tokenScopes) = v95;
    }

    goto LABEL_70;
  }

  v78 = 0;
  result = v99;
  v79 = v99 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
  v80 = v96;
  while (v78 < *(result + 16))
  {
    outlined init with copy of Binding<SearchFieldState>(v79 + *(v16 + 72) * v78, v80, type metadata accessor for PlatformItemList.Item);
    v81 = *(v80 + 954);
    outlined destroy of Binding<SearchFieldState>(v80, type metadata accessor for PlatformItemList.Item);
    if (!v81)
    {

      [v92 setSelectedScopeButtonIndex_];
      if (v50)
      {
        goto LABEL_67;
      }

      goto LABEL_68;
    }

    ++v78;
    result = v99;
    if (v98 == v78)
    {

      if (!v50)
      {
        goto LABEL_68;
      }

      goto LABEL_67;
    }
  }

LABEL_81:
  __break(1u);
  return result;
}

uint64_t outlined consume of PlatformItemCollection?(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    return outlined consume of PlatformItemCollection.Storage(result, a2 & 1);
  }

  return result;
}

uint64_t SwiftUISearchController.updateSuggestionPlacement(in:)(uint64_t a1, uint64_t a2)
{
  result = EnvironmentValues.searchProperties.getter();
  v4 = *&v2[OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_coordinator];
  if ((result & 0xFE) == 2)
  {
    *(v4 + OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_usingExplicitSuggestionPlacement) = 0;
  }

  else
  {
    *(v4 + OBJC_IVAR____TtC7SwiftUI25UIKitSearchBarCoordinator_usingExplicitSuggestionPlacement) = 1;

    return [v2 _setUsesSearchSuggestionsMenuForStackedSearch_];
  }

  return result;
}

void SwiftUISearchController.updateCustomAccessory()()
{
  v1 = v0;
  v2 = type metadata accessor for SearchFieldState(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SearchFieldConfiguration(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_0(0, &lazy cache variable for type metadata for SearchFieldConfiguration?, type metadata accessor for SearchFieldConfiguration, MEMORY[0x1E69E6720]);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v57 - v11;
  v13 = [v1 viewIfLoaded];
  v14 = [v13 window];

  if (v14)
  {
  }

  v15 = &v1[OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_customAccessoryContent];
  v16 = *&v1[OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_customAccessoryContent + 48];
  v68 = *&v1[OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_customAccessoryContent + 32];
  v69 = v16;
  v70 = *&v1[OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_customAccessoryContent + 64];
  v71 = *&v1[OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_customAccessoryContent + 80];
  v17 = *&v1[OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_customAccessoryContent + 16];
  v66 = *&v1[OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_customAccessoryContent];
  v67 = v17;
  v72[0] = v66;
  v72[1] = v17;
  v72[3] = v16;
  v72[4] = v70;
  v72[2] = v68;
  v73 = v71;
  if (v66)
  {
    v18 = *(v15 + 3);
    v76 = *(v15 + 2);
    v77 = v18;
    v78 = *(v15 + 4);
    v79 = *(v15 + 10);
    v19 = *(v15 + 1);
    v74 = *v15;
    v75 = v19;
    if (v14)
    {
      v20 = OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_configuration;
      swift_beginAccess();
      outlined init with copy of ToolbarStorage.SearchItem?(&v1[v20], v12, &lazy cache variable for type metadata for SearchFieldConfiguration?, type metadata accessor for SearchFieldConfiguration, MEMORY[0x1E69E6720], _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_0);
      if ((*(v6 + 48))(v12, 1, v5))
      {
        v21 = &lazy cache variable for type metadata for SearchFieldConfiguration?;
        v22 = type metadata accessor for SearchFieldConfiguration;
        v23 = MEMORY[0x1E69E6720];
        v24 = _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_0;
        v25 = v12;
      }

      else
      {
        _s7SwiftUI24SearchFieldConfigurationVWOcTm_0(v12, v8, type metadata accessor for SearchFieldConfiguration);
        v62 = v68;
        v63 = v69;
        v64 = v70;
        v65 = v71;
        v60 = v66;
        v61 = v67;
        outlined init with copy of BoundInputsView(&v60, v58);
        outlined destroy of ToolbarStorage.SearchItem?(v12, &lazy cache variable for type metadata for SearchFieldConfiguration?, type metadata accessor for SearchFieldConfiguration, MEMORY[0x1E69E6720], _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_0);
        _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_0(0, &lazy cache variable for type metadata for Binding<SearchFieldState>, type metadata accessor for SearchFieldState, MEMORY[0x1E6981948]);
        MEMORY[0x18D00ACC0]();
        _s7SwiftUI16SearchFieldStateVWOhTm_1(v8, type metadata accessor for SearchFieldConfiguration);
        v26 = *v4;
        _s7SwiftUI16SearchFieldStateVWOhTm_1(v4, type metadata accessor for SearchFieldState);
        if (v26 != 2 && (v26 & 1) != 0)
        {
          v27 = OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_customAccessoryHost;
          v28 = *&v1[OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_customAccessoryHost];
          if (v28)
          {
            v29 = *&v28[direct field offset for UIHostingController.host];
            v30 = v29 + *((*MEMORY[0x1E69E7D40] & *v29) + 0x60);
            swift_beginAccess();
            v31 = *(v30 + 1);
            v58[0] = *v30;
            v58[1] = v31;
            v32 = *(v30 + 2);
            v33 = *(v30 + 3);
            v34 = *(v30 + 4);
            v59 = *(v30 + 10);
            v58[3] = v33;
            v58[4] = v34;
            v58[2] = v32;
            v35 = v77;
            *(v30 + 2) = v76;
            *(v30 + 3) = v35;
            *(v30 + 4) = v78;
            *(v30 + 10) = v79;
            v36 = v75;
            *v30 = v74;
            *(v30 + 1) = v36;
            v37 = MEMORY[0x1E69E6720];
            outlined init with copy of ToolbarStorage.SearchItem?(&v66, v57, &lazy cache variable for type metadata for BoundInputsView?, &type metadata for BoundInputsView, MEMORY[0x1E69E6720], type metadata accessor for Spacer?);
            v38 = v28;
            v39 = v29;
            outlined destroy of BoundInputsView(v58);
            type metadata accessor for EnvironmentPropertyKey<SearchFieldPlacementKey>(0, &lazy cache variable for type metadata for _UIHostingView<BoundInputsView>, &type metadata for BoundInputsView, &protocol witness table for BoundInputsView, type metadata accessor for _UIHostingView);
            lazy protocol witness table accessor for type _UIHostingView<BoundInputsView> and conformance _UIHostingView<A>();
            ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)();
            outlined destroy of ToolbarStorage.SearchItem?(&v66, &lazy cache variable for type metadata for BoundInputsView?, &type metadata for BoundInputsView, v37, type metadata accessor for Spacer?);

            return;
          }

          type metadata accessor for EnvironmentPropertyKey<SearchFieldPlacementKey>(0, &lazy cache variable for type metadata for UIHostingController<BoundInputsView>, &type metadata for BoundInputsView, &protocol witness table for BoundInputsView, type metadata accessor for UIHostingController);
          v45 = objc_allocWithZone(v44);
          outlined init with copy of BoundInputsView(v72, v58);
          v46 = specialized UIHostingController.init(rootView:)(&v74);
          v47 = *&v1[v27];
          *&v1[v27] = v46;
          v48 = v46;

          v49 = direct field offset for UIHostingController.sizingOptions;
          swift_beginAccess();
          v50 = *(v48 + v49);
          *(v48 + v49) = 1;
          v57[0] = v50;
          (*((*MEMORY[0x1E69E7D40] & *v48) + 0x3D8))(v57);
          v51 = v48;
          [v51 setModalPresentationStyle_];
          v43 = [v51 popoverPresentationController];

          if (v43)
          {
            v52 = v43;
            v53 = [v1 searchBar];
            [v52 setSourceView_];

            type metadata accessor for Spacer?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
            v54 = swift_allocObject();
            *(v54 + 16) = xmmword_18CD69590;
            v55 = v52;
            *(v54 + 32) = [v1 searchBar];
            type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIView, 0x1E69DD250);
            isa = Array._bridgeToObjectiveC()().super.isa;

            [v55 setPassthroughViews_];

            [v55 setDelegate_];
          }

          [v1 presentViewController:v51 animated:1 completion:0];
          outlined destroy of ToolbarStorage.SearchItem?(&v66, &lazy cache variable for type metadata for BoundInputsView?, &type metadata for BoundInputsView, MEMORY[0x1E69E6720], type metadata accessor for Spacer?);

          goto LABEL_15;
        }

        v21 = &lazy cache variable for type metadata for BoundInputsView?;
        v22 = &type metadata for BoundInputsView;
        v23 = MEMORY[0x1E69E6720];
        v24 = type metadata accessor for Spacer?;
        v25 = &v66;
      }

      outlined destroy of ToolbarStorage.SearchItem?(v25, v21, v22, v23, v24);
    }
  }

  v40 = *&v1[OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_customAccessoryHost];
  if (!v40)
  {
    return;
  }

  v41 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *&v62 = partial apply for closure #1 in SwiftUISearchController.updateCustomAccessory();
  *(&v62 + 1) = v41;
  *&v60 = MEMORY[0x1E69E9820];
  *(&v60 + 1) = 1107296256;
  *&v61 = thunk for @escaping @callee_guaranteed () -> ();
  *(&v61 + 1) = &block_descriptor_57_0;
  v42 = _Block_copy(&v60);
  v43 = v40;

  [v43 dismissViewControllerAnimated:1 completion:v42];
  _Block_release(v42);
LABEL_15:
}

uint64_t sub_18BFA18B0()
{
  MEMORY[0x18D011290](v0 + 16);

  return swift_deallocObject();
}

id SwiftUISearchController.updateCustomAccessoryRecoveryGesture()()
{
  v1 = v0;
  v2 = type metadata accessor for SearchFieldState(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SearchFieldConfiguration(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_0(0, &lazy cache variable for type metadata for SearchFieldConfiguration?, type metadata accessor for SearchFieldConfiguration, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v21 - v10;
  v12 = *(v0 + OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_customAccessoryContent);
  v13 = OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_customAccessoryRecoveryGesture;
  v14 = *(v0 + OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_customAccessoryRecoveryGesture);
  if (v14)
  {
    if (v12)
    {
      goto LABEL_7;
    }

    *(v0 + OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_customAccessoryRecoveryGesture) = 0;
    SwiftUISearchController.didChangeCustomAccessoryRecoveryGesture(oldValue:)(v14);
  }

  else
  {
    if (!v12)
    {
      goto LABEL_7;
    }

    v15 = [objc_allocWithZone(MEMORY[0x1E69DD060]) initWithTarget:v0 action:sel_handleCustomAccessoryRecoveryGesture];
    v14 = *(v0 + v13);
    *(v0 + v13) = v15;
    v16 = v15;
    SwiftUISearchController.didChangeCustomAccessoryRecoveryGesture(oldValue:)(v14);
  }

LABEL_7:
  v17 = OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_configuration;
  swift_beginAccess();
  outlined init with copy of ToolbarStorage.SearchItem?(v1 + v17, v11, &lazy cache variable for type metadata for SearchFieldConfiguration?, type metadata accessor for SearchFieldConfiguration, MEMORY[0x1E69E6720], _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_0);
  if ((*(v6 + 48))(v11, 1, v5))
  {
    outlined destroy of ToolbarStorage.SearchItem?(v11, &lazy cache variable for type metadata for SearchFieldConfiguration?, type metadata accessor for SearchFieldConfiguration, MEMORY[0x1E69E6720], _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_0);
    v18 = 0;
    result = *(v1 + v13);
    if (!result)
    {
      return result;
    }

    return [result setEnabled_];
  }

  _s7SwiftUI24SearchFieldConfigurationVWOcTm_0(v11, v8, type metadata accessor for SearchFieldConfiguration);
  outlined destroy of ToolbarStorage.SearchItem?(v11, &lazy cache variable for type metadata for SearchFieldConfiguration?, type metadata accessor for SearchFieldConfiguration, MEMORY[0x1E69E6720], _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_0);
  _s7SwiftUI14ToolbarStorageV10SearchItemVSgMaTm_0(0, &lazy cache variable for type metadata for Binding<SearchFieldState>, type metadata accessor for SearchFieldState, MEMORY[0x1E6981948]);
  MEMORY[0x18D00ACC0]();
  _s7SwiftUI16SearchFieldStateVWOhTm_1(v8, type metadata accessor for SearchFieldConfiguration);
  v20 = *v4;
  _s7SwiftUI16SearchFieldStateVWOhTm_1(v4, type metadata accessor for SearchFieldState);
  v18 = v20 ^ 1;
  if (v20 == 2)
  {
    v18 = 0;
  }

  result = *(v1 + v13);
  if (result)
  {
    return [result setEnabled_];
  }

  return result;
}

void SwiftUISearchController.updateScopesActivation(to:)(char a1)
{
  v3 = a1 - 2;
  if ((a1 - 2) > 2u)
  {
    v4 = 1;
  }

  else
  {
    v4 = qword_18CD89B08[(a1 - 2)];
  }

  if (v4 != [v1 scopeBarActivation])
  {
    [v1 setScopeBarActivation_];
  }

  if (v3 >= 3u)
  {
    v5 = a1 & 1;
    v6 = [v1 searchBar];
    v7 = [v6 showsScopeBar];

    if (v7 != v5)
    {
      v8 = [v1 searchBar];
      [v8 setShowsScopeBar_];
    }
  }
}

void SwiftUISearchController.enqueueIsActiveUpdate(_:)(char a1)
{
  v1[OBJC_IVAR____TtC7SwiftUI23SwiftUISearchController_pendingIsActive] = a1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v3 = Strong, v4 = [Strong transitionCoordinator], v3, v4))
  {
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v10[4] = partial apply for closure #1 in SwiftUISearchController.enqueueIsActiveUpdate(_:);
    v10[5] = v5;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 1107296256;
    v10[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ();
    v10[3] = &block_descriptor_21;
    v6 = _Block_copy(v10);

    [v4 animateAlongsideTransition:0 completion:v6];
    _Block_release(v6);
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = [v1 searchBar];
    v8 = [v7 searchTextField];

    v9 = [v8 window];
    if (v9)
    {

      swift_allocObject();
      swift_unknownObjectWeakInit();

      static Update.enqueueAction(reason:_:)();
    }
  }
}

uint64_t UITextField.applyAccessibilityExplicitLabelIfNeeded(from:in:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5)
{
  v6 = *a5;
  v7 = a5[1];
  v18 = *a5;
  v19 = v7;
  result = EnvironmentValues.accessibilityEnabled.getter();
  if (result)
  {
    result = Text.storedAccessibilityLabel.getter();
    if (v11)
    {
      v12 = result;
      v13 = v9;
      v14 = v10;
      v18 = v6;
      v19 = v7;
      v17[1] = 0;
      v17[2] = 0;
      MEMORY[0x18D005BC0]((v17 + 4));
      v14 &= 1u;
      LOBYTE(v17[0]) = v14;
      v15 = static AccessibilityCore.textResolvedToPlainText(_:in:options:idiom:)();
      v16 = MEMORY[0x18D00C850](v15);

      [v5 setAccessibilityLabel_];

      outlined consume of Text.Storage(v12, v13, v14);
    }
  }

  return result;
}

uint64_t AnyNavigationPath.HomogeneousBoxBase.__deallocating_deinit()
{
  (*(*(*(*v0 + 192) - 8) + 8))(v0 + *(*v0 + 232));

  return swift_deallocClassInstance();
}

void closure #1 in closure #1 in UIKitToolbarStrategy.barButtonGroups(in:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void *a7)
{
  v76 = a7;
  v77 = a2;
  v78 = a3;
  v79 = a4;
  v75 = a1;
  v9 = type metadata accessor for ToolbarStorage.Item(0);
  v74 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v71 = v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v70 = v67 - v12;
  v13 = type metadata accessor for ToolbarStorage.Entry.Kind(0);
  MEMORY[0x1EEE9AC00](v13);
  v72 = (v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v17 = v67 - v16;
  v18 = MEMORY[0x1E69E6720];
  type metadata accessor for PlatformItemList.Item?(0, &lazy cache variable for type metadata for ToolbarStorage.Item?, type metadata accessor for ToolbarStorage.Item, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = v67 - v23;
  type metadata accessor for PlatformItemList.Item?(0, &lazy cache variable for type metadata for ToolbarStorage.GroupItem?, type metadata accessor for ToolbarStorage.GroupItem, v18);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v73 = v67 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = v67 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v32 = v67 - v31;
  memset(v85, 0, 24);
  *(&v85[1] + 8) = xmmword_18CD7DD20;
  LOBYTE(a5) = specialized static Toolbar.BarLocation.== infix(_:_:)(a5, v85);
  outlined destroy of Toolbar.BarLocation(v85);
  if ((a5 & 1) != 0 && *v79 == a6)
  {
    *(v78 + 8) = 1;
  }

  v88 = 0;
  v33 = v77;
  if (*(v77 + 8) == 2)
  {
    v34 = *v77;
    outlined copy of OpenURLOptions?(*v77, 2);
    v35 = v34;
    v36 = v76;
    MEMORY[0x18D00CC30]();
    if (*((*v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    outlined consume of OpenURLOptions?(v34, 2);
    v37 = v78;
  }

  else
  {
    v67[1] = v13;
    v69 = v32;
    v38 = v75;
    ToolbarStorage.Entry.groupItem.getter(v29);
    v39 = type metadata accessor for ToolbarStorage.GroupItem(0);
    v40 = *(v39 - 8);
    v41 = *(v40 + 48);
    v67[0] = v40 + 48;
    v68 = v41;
    if (v41(v29, 1, v39) == 1)
    {
      outlined init with copy of ToolbarStorage.Entry.Kind(v38, v17, type metadata accessor for ToolbarStorage.Entry.Kind);
      if (swift_getEnumCaseMultiPayload())
      {
        outlined destroy of ToolbarStorage.NavigationProperties(v17, type metadata accessor for ToolbarStorage.Entry.Kind);
        v42 = 1;
      }

      else
      {
        outlined init with take of ToolbarStorage.NavigationProperties(v17, v24, type metadata accessor for ToolbarStorage.Item);
        v42 = 0;
      }

      v48 = v74;
      v49 = 1;
      (*(v74 + 56))(v24, v42, 1, v9);
      outlined init with copy of PlatformItemList.Item?(v24, v21, &lazy cache variable for type metadata for ToolbarStorage.Item?, type metadata accessor for ToolbarStorage.Item, MEMORY[0x1E69E6720]);
      v50 = (*(v48 + 48))(v21, 1, v9);
      v51 = v73;
      v52 = v68;
      if (v50 != 1)
      {
        v53 = v21;
        v54 = v70;
        outlined init with take of ToolbarStorage.NavigationProperties(v53, v70, type metadata accessor for ToolbarStorage.Item);
        v55 = v71;
        outlined init with copy of ToolbarStorage.Entry.Kind(v54, v71, type metadata accessor for ToolbarStorage.Item);
        ToolbarStorage.GroupItem.init(item:)(v55, v51);
        outlined destroy of ToolbarStorage.NavigationProperties(v54, type metadata accessor for ToolbarStorage.Item);
        v49 = 0;
      }

      outlined destroy of ToolbarStorage.NavigationProperties?(v24, &lazy cache variable for type metadata for ToolbarStorage.Item?, type metadata accessor for ToolbarStorage.Item, MEMORY[0x1E69E6720]);
      v56 = v40 + 56;
      v57 = *(v40 + 56);
      v58 = v39;
      v57(v51, v49, 1, v39);
      if (v52(v51, 1, v39) == 1)
      {
        v74 = v56;
        v38 = v75;
        v59 = v72;
        outlined init with copy of ToolbarStorage.Entry.Kind(v75, v72, type metadata accessor for ToolbarStorage.Entry.Kind);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v33 = v77;
        v46 = v69;
        if (EnumCaseMultiPayload == 2)
        {
          v61 = v59[3];
          v85[2] = v59[2];
          v86 = v61;
          v87 = v59[4];
          v62 = v59[1];
          v85[0] = *v59;
          v85[1] = v62;
        }

        else
        {
          outlined destroy of ToolbarStorage.NavigationProperties(v59, type metadata accessor for ToolbarStorage.Entry.Kind);
          memset(v85, 0, sizeof(v85));
          *&v86 = 0;
          *(&v86 + 1) = 1;
          v87 = 0uLL;
        }

        outlined init with copy of PushTarget?(v85, v82, &lazy cache variable for type metadata for ToolbarStorage.SpacerItem?, &type metadata for ToolbarStorage.SpacerItem);
        v52 = v68;
        if (*(&v83 + 1) == 1)
        {
          outlined destroy of PushTarget?(v85, &lazy cache variable for type metadata for ToolbarStorage.SpacerItem?, &type metadata for ToolbarStorage.SpacerItem);
          v63 = v46;
          v64 = 1;
        }

        else
        {
          v81[2] = v82[2];
          v81[3] = v83;
          v81[4] = v84;
          v81[0] = v82[0];
          v81[1] = v82[1];
          outlined init with copy of ToolbarStorage.SpacerItem(v81, v80);
          ToolbarStorage.GroupItem.init(spacer:)(v80, v46);
          outlined destroy of ToolbarStorage.SpacerItem(v81);
          outlined destroy of PushTarget?(v85, &lazy cache variable for type metadata for ToolbarStorage.SpacerItem?, &type metadata for ToolbarStorage.SpacerItem);
          v63 = v46;
          v64 = 0;
        }

        v57(v63, v64, 1, v58);
        if (v52(v51, 1, v58) != 1)
        {
          outlined destroy of ToolbarStorage.NavigationProperties?(v51, &lazy cache variable for type metadata for ToolbarStorage.GroupItem?, type metadata accessor for ToolbarStorage.GroupItem, MEMORY[0x1E69E6720]);
        }
      }

      else
      {
        v46 = v69;
        outlined init with take of ToolbarStorage.NavigationProperties(v51, v69, type metadata accessor for ToolbarStorage.GroupItem);
        v57(v46, 0, 1, v58);
        v38 = v75;
        v33 = v77;
      }

      v47 = (v52)(v29, 1, v58);
      if (v47 != 1)
      {
        v47 = outlined destroy of ToolbarStorage.NavigationProperties?(v29, &lazy cache variable for type metadata for ToolbarStorage.GroupItem?, type metadata accessor for ToolbarStorage.GroupItem, MEMORY[0x1E69E6720]);
      }
    }

    else
    {
      v43 = v29;
      v44 = v69;
      outlined init with take of ToolbarStorage.NavigationProperties(v43, v69, type metadata accessor for ToolbarStorage.GroupItem);
      v45 = v39;
      v46 = v44;
      v47 = (*(v40 + 56))(v44, 0, 1, v45);
    }

    MEMORY[0x1EEE9AC00](v47);
    v67[-4] = v33;
    v67[-3] = &v88;
    v37 = v78;
    v67[-2] = v38;
    v67[-1] = v37;
    _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI14ToolbarStorageV9GroupItemV_s5NeverOytTg5(partial apply for closure #1 in closure #1 in closure #1 in UIKitToolbarStrategy.barButtonGroups(in:));
    outlined destroy of ToolbarStorage.NavigationProperties?(v46, &lazy cache variable for type metadata for ToolbarStorage.GroupItem?, type metadata accessor for ToolbarStorage.GroupItem, MEMORY[0x1E69E6720]);
    if (v88)
    {
      v65 = v88;
      v66 = v76;
      MEMORY[0x18D00CC30]();
      if (*((*v66 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v66 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }
  }

  *(v37 + 8) = 2;
  ++*v79;
}

uint64_t ToolbarStorage.Entry.groupItem.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v36 = a1;
  v3 = type metadata accessor for ToolbarStorage.GroupItem.GroupSubItem(0);
  v33 = *(v3 - 8);
  v34 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v32 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v31 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v31 - v9;
  _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for ToolbarStorage.Item?, type metadata accessor for ToolbarStorage.Item, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v31 - v12;
  v14 = type metadata accessor for ToolbarStorage.Item(0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v31 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ToolbarStorage.Entry.Kind(0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for ToolbarStorage.GroupItem(0);
  v20 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ToolbarStorage.Entry(v2, v19, type metadata accessor for ToolbarStorage.Entry.Kind);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined destroy of ToolbarStorage.GroupItem.CollapsedContent.Value(v19, type metadata accessor for ToolbarStorage.Entry.Kind);
    v26 = 1;
    v27 = v36;
    return (*(v20 + 56))(v27, v26, 1, v35);
  }

  _s7SwiftUI14ToolbarStorageV9GroupItemVWObTm_0(v19, v22, type metadata accessor for ToolbarStorage.GroupItem);
  v23 = *(v22 + 19);
  if (v23[2] != 1)
  {
LABEL_13:
    v27 = v36;
    _s7SwiftUI14ToolbarStorageV9GroupItemVWObTm_0(v22, v36, type metadata accessor for ToolbarStorage.GroupItem);
    v26 = 0;
    return (*(v20 + 56))(v27, v26, 1, v35);
  }

  v24 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  outlined init with copy of ToolbarStorage.Entry(v23 + v24, v10, type metadata accessor for ToolbarStorage.GroupItem.GroupSubItem);
  outlined init with copy of ToolbarStorage.Entry(v10, v7, type metadata accessor for ToolbarStorage.GroupItem.GroupSubItem);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined destroy of ToolbarStorage.GroupItem.CollapsedContent.Value(v7, type metadata accessor for ToolbarStorage.GroupItem.GroupSubItem);
    v25 = 1;
  }

  else
  {
    _s7SwiftUI14ToolbarStorageV9GroupItemVWObTm_0(v7, v13, type metadata accessor for ToolbarStorage.Item);
    v25 = 0;
  }

  (*(v15 + 56))(v13, v25, 1, v14);
  outlined destroy of ToolbarStorage.GroupItem.CollapsedContent.Value(v10, type metadata accessor for ToolbarStorage.GroupItem.GroupSubItem);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    _s7SwiftUI16PlatformItemListV0D0VSgWOhTm_1(v13, &lazy cache variable for type metadata for ToolbarStorage.Item?, type metadata accessor for ToolbarStorage.Item);
    goto LABEL_13;
  }

  v28 = v31;
  _s7SwiftUI14ToolbarStorageV9GroupItemVWObTm_0(v13, v31, type metadata accessor for ToolbarStorage.Item);
  *(v28 + *(v14 + 80)) = 1;
  v29 = v32;
  outlined init with copy of ToolbarStorage.Entry(v28, v32, type metadata accessor for ToolbarStorage.Item);
  swift_storeEnumTagMultiPayload();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v23 = specialized _ArrayBuffer._consumeAndCreateNew()(v23);
  }

  result = outlined destroy of ToolbarStorage.GroupItem.CollapsedContent.Value(v28, type metadata accessor for ToolbarStorage.Item);
  if (v23[2])
  {
    outlined assign with take of ToolbarStorage.GroupItem.GroupSubItem(v29, v23 + v24, type metadata accessor for ToolbarStorage.GroupItem.GroupSubItem);
    *(v22 + 19) = v23;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_18BFA3188(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 152) = (a2 - 1);
  }

  else
  {
    _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for ToolbarStorage.GroupItem.CollapsedContent?, type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent, MEMORY[0x1E69E6720]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 60);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_18BFA3270(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 152);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for ToolbarStorage.GroupItem.CollapsedContent?, type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent, MEMORY[0x1E69E6720]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 60);

    return v10(v11, a2, v9);
  }
}

uint64_t ToolbarStorage.GroupItem.init(item:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v16 = *(a1 + 32);
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  outlined init with copy of ToolbarItemPlacement.Role(a1 + 112, a2 + 80);
  v5 = *(a1 + 154);
  v6 = *(a1 + 160);
  v7 = *(a1 + 168);
  v8 = *(a1 + 169);
  v15 = *(a1 + 176);
  _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ToolbarStorage.GroupItem.GroupSubItem>, type metadata accessor for ToolbarStorage.GroupItem.GroupSubItem, MEMORY[0x1E69E6F90]);
  v9 = *(type metadata accessor for ToolbarStorage.GroupItem.GroupSubItem(0) - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_18CD63400;
  outlined init with copy of ToolbarStorage.Entry(a1, v11 + v10, type metadata accessor for ToolbarStorage.Item);
  swift_storeEnumTagMultiPayload();

  outlined destroy of ToolbarStorage.GroupItem.CollapsedContent.Value(a1, type metadata accessor for ToolbarStorage.Item);
  v12 = *(type metadata accessor for ToolbarStorage.GroupItem(0) + 60);
  v13 = type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent(0);
  result = (*(*(v13 - 8) + 56))(a2 + v12, 1, 1, v13);
  *a2 = v16;
  *(a2 + 8) = v4;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 121) = v5;
  *(a2 + 128) = v6;
  *(a2 + 136) = v7;
  *(a2 + 137) = v8;
  *(a2 + 138) = 3;
  *(a2 + 144) = v15;
  *(a2 + 152) = v11;
  return result;
}