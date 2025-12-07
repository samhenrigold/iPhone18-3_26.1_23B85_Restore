Swift::Int __swiftcall OrderedSet.distance(from:to:)(Swift::Int from, Swift::Int to)
{
  v2 = __OFSUB__(to, from);
  result = to - from;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t OrderedSet._customIndexOfEquatableElement(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    return 0;
  }

  closure #1 in OrderedSet._customIndexOfEquatableElement(_:)((a2 + 16), a2 + 32, a1, a3, a5, &v11);
  v9 = v11;

  return v9;
}

unint64_t closure #1 in OrderedSet._customIndexOfEquatableElement(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v16 = a4;
  v12 = type metadata accessor for ContiguousArray();
  WitnessTable = swift_getWitnessTable();
  result = _HashTable.UnsafeHandle._find<A>(_:in:)(a3, &v16, a1, a2, v12, WitnessTable, a6);
  *a7 = result;
  *(a7 + 8) = v15 & 1;
  *(a7 + 9) = 0;
  return result;
}

uint64_t OrderedSet._failEarlyRangeCheck(_:bounds:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9[1] = a3;
  v10 = a1;
  v9[0] = a2;
  v6 = type metadata accessor for ContiguousArray();
  WitnessTable = swift_getWitnessTable();
  return specialized Collection._failEarlyRangeCheck(_:bounds:)(&v10, v9, v6, WitnessTable);
}

void (*protocol witness for Collection.subscript.read in conformance OrderedSet<A>(void *a1, void *a2, uint64_t a3))(void *a1)
{
  v4 = *(a3 + 16);
  *a1 = v4;
  v5 = *(v4 - 8);
  a1[1] = v5;
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(*(v5 + 64));
  }

  a1[2] = v6;
  ContiguousArray.subscript.getter();
  return protocol witness for Collection.subscript.read in conformance OrderedDictionary<A, B>.Values;
}

uint64_t protocol witness for Collection.subscript.getter in conformance OrderedSet<A>@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = OrderedSet.subscript.getter(*a1, a1[1], *v2, v2[1]);
  *a2 = result;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  return result;
}

double protocol witness for Collection.indices.getter in conformance OrderedSet<A>@<D0>(_OWORD *a2@<X8>)
{
  type metadata accessor for ContiguousArray();
  swift_getWitnessTable();
  RandomAccessCollection<>.indices.getter();
  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t protocol witness for Collection.isEmpty.getter in conformance OrderedSet<A>(uint64_t a1)
{
  type metadata accessor for ContiguousArray();
  swift_getWitnessTable();
  return Collection.isEmpty.getter() & 1;
}

uint64_t protocol witness for Collection._customIndexOfEquatableElement(_:) in conformance OrderedSet<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = OrderedSet._customIndexOfEquatableElement(_:)(a1, *v3, v3[1], *(a2 + 16), *(a2 + 24));
  *a3 = result;
  *(a3 + 8) = v6;
  *(a3 + 9) = v7 & 1;
  return result;
}

uint64_t protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance OrderedSet<A>(uint64_t *a1, __int128 *a2, uint64_t a3)
{
  v7 = *a1;
  v6 = *a2;
  v3 = type metadata accessor for ContiguousArray();
  WitnessTable = swift_getWitnessTable();
  return specialized Collection._failEarlyRangeCheck(_:bounds:)(&v7, &v6, v3, WitnessTable);
}

uint64_t specialized OrderedSet._copyToContiguousArray()(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return MEMORY[0x2821FD290](v4, a3);
}

uint64_t specialized Sequence.forEach(_:)(uint64_t result, uint64_t a2)
{
  v3 = v2;
  v4 = *(result + 16);
  if (!v4)
  {
    return result;
  }

  for (i = (result + 40); ; i += 2)
  {
    v6 = *i;
    swift_unknownObjectRetain();
    v7 = XMLNode.subscript.getter(1701667182, 0xE400000000000000);
    if (!v8)
    {
      goto LABEL_5;
    }

    v9 = v7;
    v10 = v8;
    createGeomPropDef(for:)(v6, v31);
    if (v3)
    {

      swift_unknownObjectRelease();

      v3 = 0;
      goto LABEL_6;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = *(a2 + 8);
    v12 = v33;
    *(a2 + 8) = 0x8000000000000000;
    v13 = specialized __RawDictionaryStorage.find<A>(_:)(v9, v10);
    v15 = v12[2];
    v16 = (v14 & 1) == 0;
    v17 = __OFADD__(v15, v16);
    v18 = v15 + v16;
    if (v17)
    {
      break;
    }

    v19 = v14;
    if (v12[3] < v18)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, isUniquelyReferenced_nonNull_native);
      v13 = specialized __RawDictionaryStorage.find<A>(_:)(v9, v10);
      if ((v19 & 1) != (v20 & 1))
      {
        goto LABEL_23;
      }

LABEL_15:
      v21 = v33;
      if ((v19 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_3;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_15;
    }

    v29 = v13;
    specialized _NativeDictionary.copy()();
    v13 = v29;
    v21 = v33;
    if ((v19 & 1) == 0)
    {
LABEL_16:
      v21[(v13 >> 6) + 8] |= 1 << v13;
      v22 = (v21[6] + 16 * v13);
      *v22 = v9;
      v22[1] = v10;
      v23 = (v21[7] + (v13 << 6));
      v24 = v31[0];
      v25 = v31[1];
      v26 = v32[0];
      *(v23 + 41) = *(v32 + 9);
      v23[1] = v25;
      v23[2] = v26;
      *v23 = v24;
      v27 = v21[2];
      v17 = __OFADD__(v27, 1);
      v28 = v27 + 1;
      if (v17)
      {
        goto LABEL_22;
      }

      v21[2] = v28;
      goto LABEL_4;
    }

LABEL_3:
    outlined assign with take of GeomPropDef(v31, v21[7] + (v13 << 6));

LABEL_4:
    *(a2 + 8) = v21;
LABEL_5:
    result = swift_unknownObjectRelease();
LABEL_6:
    if (!--v4)
    {
      return result;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v3 = v2;
  v4 = *(result + 16);
  if (!v4)
  {
    return result;
  }

  v5 = a2;
  v6 = 0;
  v7 = result + 32;
  v24 = *(result + 16);
  v26 = result + 32;
  while (1)
  {
    v8 = *(v7 + 16 * v6 + 8);
    ObjectType = swift_getObjectType();
    v10 = *(v8 + 8);
    swift_unknownObjectRetain();
    v11 = XMLNode.elements(forXPath:)(0x72706D6F65672F2ELL, 0xED0000666564706FLL, ObjectType, v10);
    if (!v3)
    {
      break;
    }

    result = swift_unknownObjectRelease();
    v3 = 0;
LABEL_4:
    if (++v6 == v4)
    {
      return result;
    }
  }

  specialized Sequence.forEach(_:)(v11, v5);

  result = (*(v10 + 24))(ObjectType, v10);
  if (!result)
  {
    result = swift_unknownObjectRelease();
    v7 = v26;
    goto LABEL_4;
  }

  v12 = result;
  v13 = 0;
  v14 = *(result + 16);
  v15 = MEMORY[0x277D84F90];
LABEL_8:
  v16 = 16 * v13 + 32;
  while (1)
  {
    if (v14 == v13)
    {

      v5 = a2;
      specialized Sequence.forEach(_:)(v15, a2);
      swift_unknownObjectRelease();

      v4 = v24;
      v7 = v26;
      goto LABEL_4;
    }

    if (v13 >= *(v12 + 16))
    {
      break;
    }

    ++v13;
    v17 = v16 + 16;
    v18 = *(v12 + v16);
    swift_getObjectType();
    result = swift_conformsToProtocol2();
    v16 = v17;
    if (result)
    {
      v16 = v17;
      if (v18)
      {
        v27 = result;
        swift_unknownObjectRetain();
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v15[2] + 1, 1, v15);
          v15 = result;
        }

        v20 = v15[2];
        v19 = v15[3];
        v21 = v20 + 1;
        v22 = v27;
        if (v20 >= v19 >> 1)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v15);
          v21 = v20 + 1;
          v15 = result;
          v22 = v27;
        }

        v15[2] = v21;
        v23 = &v15[2 * v20];
        v23[4] = v18;
        v23[5] = v22;
        goto LABEL_8;
      }
    }
  }

  __break(1u);
  return result;
}

{
  v3 = *(result + 16);
  if (v3)
  {
    for (i = (result + 56); ; i += 32)
    {
      v6 = *i;
      v8 = *(i - 2);
      v7 = *(i - 1);
      v9[0] = *(i - 3);
      v9[1] = v8;
      v9[2] = v7;
      v10 = v6;

      closure #1 in UserGraph.insertConversionFromFloatColorToHalfColor(for:)(v9, a2);
      if (v2)
      {
        break;
      }

      if (!--v3)
      {
        return result;
      }
    }
  }

  return result;
}

{
  v2 = *(result + 16);
  if (v2)
  {
    v4 = (result + 80);
    do
    {
      v6 = *(v4 - 5);
      v7 = *(v4 - 4);
      v8 = *(v4 - 3);
      v9 = *(v4 - 2);
      v10 = *(v4 - 8);
      v11 = *v4;
      v25 = *(v4 - 6);
      v22[0] = v25;
      v22[1] = v6;
      v16 = v11;
      v17 = v7;
      v22[2] = v7;
      v22[3] = v8;
      v22[4] = v9;
      v23 = v10;
      v24 = v11;
      v12 = *(a2 + 32);

      v13 = specialized Set.contains(_:)(v22, v12);

      if ((v13 & 1) == 0)
      {

        specialized Set._Variant.insert(_:)(v18, v22);

        v5 = *(a2 + 24);
        v14 = *(v5 + 2);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(a2 + 24) = v5;
        if (!isUniquelyReferenced_nonNull_native || v14 >= *(v5 + 3) >> 1)
        {
          v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v14 + 1, 1, v5);
          *(a2 + 24) = v5;
        }

        v19[0] = v25;
        v19[1] = v6;
        v19[2] = v17;
        v19[3] = v8;
        v19[4] = v9;
        v20 = v10;
        v21 = v16;
        specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(0, 0, 1, v19);
        *(a2 + 24) = v5;
      }

      v4 += 7;

      --v2;
    }

    while (v2);
  }

  return result;
}

{
  v2 = *(result + 16);
  if (!v2)
  {
    return result;
  }

  for (i = (result + 32); ; i += 7)
  {
    v5 = i[5];
    v18[4] = i[4];
    v18[5] = v5;
    v18[6] = i[6];
    v6 = i[1];
    v18[0] = *i;
    v18[1] = v6;
    v7 = i[3];
    v18[2] = i[2];
    v18[3] = v7;
    outlined init with copy of Edge(v18, &v17);
    result = UserGraph.remove(_:)(v18);
    if (*&v18[0] == -7)
    {
      goto LABEL_5;
    }

    if ((*&v18[0] & 0x8000000000000000) != 0)
    {
      break;
    }

    v8 = *(a2 + 64);
    if (*&v18[0] >= *(v8 + 16))
    {
      goto LABEL_18;
    }

    v9 = (v8 + 48 * *&v18[0]);
    v11 = v9[4];
    v10 = v9[5];
    v12 = v9[7];
    outlined copy of NodePersonality(v11);

    v14 = v19;
    if (specialized Sequence.allSatisfy(_:)(v13, a2))
    {
      v15 = specialized Sequence.compactMap<A>(_:)(v10, a2);
      specialized Sequence.forEach(_:)(v15, a2);
      v19 = v14;

      specialized UserGraph.removeEdges(connectedTo:)(v12);
      v16 = *(a2 + 64);
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        if ((v12 & 0x8000000000000000) != 0)
        {
          goto LABEL_15;
        }
      }

      else
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew()(v16);
        v16 = result;
        if ((v12 & 0x8000000000000000) != 0)
        {
LABEL_15:
          __break(1u);
          return result;
        }
      }

      if (v12 >= *(v16 + 16))
      {
        goto LABEL_19;
      }

      ShaderGraphNode.update(id:)(-7);
      *(a2 + 64) = v16;
    }

    else
    {
      v19 = v14;
    }

    outlined consume of NodePersonality(v11);

LABEL_5:
    result = outlined destroy of Edge(v18);
    if (!--v2)
    {
      return result;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

{
  v2 = *(result + 16);
  if (v2)
  {
    v4 = (result + 56);
    while (1)
    {
      v5 = *(v4 - 3);
      v6 = *v4;
      outlined copy of NodePersonality(v5);

      specialized UserGraph.removeEdges(connectedTo:)(v6);
      v7 = *(a2 + 64);
      result = swift_isUniquelyReferenced_nonNull_native();
      *(a2 + 64) = v7;
      if (result)
      {
        if ((v6 & 0x8000000000000000) != 0)
        {
          goto LABEL_9;
        }
      }

      else
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
        v7 = result;
        *(a2 + 64) = result;
        if ((v6 & 0x8000000000000000) != 0)
        {
LABEL_9:
          __break(1u);
          return result;
        }
      }

      if (v6 >= *(v7 + 16))
      {
        break;
      }

      v4 += 6;
      ShaderGraphNode.update(id:)(-7);
      outlined consume of NodePersonality(v5);

      if (!--v2)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t specialized Sequence.forEach(_:)(uint64_t a1, uint64_t a2)
{
  return specialized Sequence.forEach(_:)(a1, a2, closure #1 in collectImplementations(_:into:));
}

{
  return specialized Sequence.forEach(_:)(a1, a2, closure #2 in collectImplementations(_:into:));
}

{
  return specialized Sequence.forEach(_:)(a1, a2, closure #1 in closure #1 in UserGraph.resolveMaterialXEnums());
}

uint64_t specialized Sequence.forEach(_:)(uint64_t result, uint64_t a2, void (*a3)(__int128 *, uint64_t))
{
  v4 = *(result + 16);
  if (v4)
  {
    for (i = (result + 32); ; ++i)
    {
      v8 = *i;
      swift_unknownObjectRetain();
      a3(&v8, a2);
      if (v3)
      {
        break;
      }

      result = swift_unknownObjectRelease();
      if (!--v4)
      {
        return result;
      }
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t *MaterialXDataType.filename.unsafeMutableAddressor()
{
  if (one-time initialization token for filename != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.filename;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ11ShaderGraph17BuiltInDefinitionV9InputSpecV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 56);
    for (i = (a2 + 56); ; i += 32)
    {
      v5 = *(v3 - 1);
      v6 = *v3;
      v7 = *(i - 1);
      v8 = *i;
      v9 = *(v3 - 3) == *(i - 3) && *(v3 - 2) == *(i - 2);
      if (!v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      result = 0;
      if (v5 != v7 || ((v6 ^ v8) & 1) != 0)
      {
        return result;
      }

      v3 += 32;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ11ShaderGraph17BuiltInDefinitionV10OutputSpecV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 48);
    v4 = (a2 + 48);
    do
    {
      v5 = *v3;
      v6 = *v4;
      if (*(v3 - 2) == *(v4 - 2) && *(v3 - 1) == *(v4 - 1))
      {
        if (v5 != v6)
        {
          return 0;
        }
      }

      else
      {
        v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
        result = 0;
        if ((v8 & 1) == 0 || v5 != v6)
        {
          return result;
        }
      }

      v3 += 3;
      v4 += 3;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ11ShaderGraph7NodeDefV6IOSpecV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2)
  {
    v3 = a2;
    if (a1 != a2)
    {
      v4 = 0;
      v14 = a1;
      while (1)
      {
        v6 = *(a1 + v4 + 56);
        v7 = *(a1 + v4 + 64);
        v8 = *(a1 + v4 + 80);
        v9 = *(v3 + v4 + 48);
        v10 = *(v3 + v4 + 56);
        v11 = *(v3 + v4 + 64);
        v16 = *(v3 + v4 + 72);
        v17 = *(a1 + v4 + 72);
        v12 = *(v3 + v4 + 80);
        v18 = *(v3 + v4 + 88);
        v19 = *(a1 + v4 + 88);
        if ((*(a1 + v4 + 32) != *(v3 + v4 + 32) || *(a1 + v4 + 40) != *(v3 + v4 + 40)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (MaterialXDataType.isEqual(to:)(v9) & 1) == 0)
        {
          return 0;
        }

        if (v7)
        {
          if (!v11 || (v6 != v10 || v7 != v11) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            return 0;
          }
        }

        else if (v11)
        {
          return 0;
        }

        if (!v8)
        {
          break;
        }

        if (!v12)
        {
          return 0;
        }

        if (v17 != v16 || v8 != v12)
        {
          v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
          result = 0;
          if ((v13 & 1) == 0)
          {
            return result;
          }

          goto LABEL_6;
        }

        if (v19 != v18)
        {
          return 0;
        }

LABEL_7:
        v4 += 64;
        --v2;
        a1 = v14;
        v3 = a2;
        if (!v2)
        {
          return 1;
        }
      }

      result = 0;
      if (v12)
      {
        return result;
      }

LABEL_6:
      if ((v19 ^ v18))
      {
        return result;
      }

      goto LABEL_7;
    }
  }

  return 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ11ShaderGraph7NodeDefV12AvailabilityV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v36 = v2;
  v37 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    v8 = v5[7];
    *&v26[96] = v5[6];
    *&v26[112] = v8;
    v9 = v5[9];
    v27 = v5[8];
    v28 = v9;
    v10 = v5[3];
    *&v26[32] = v5[2];
    *&v26[48] = v10;
    v11 = v5[5];
    *&v26[64] = v5[4];
    *&v26[80] = v11;
    v12 = v5[1];
    *v26 = *v5;
    *&v26[16] = v12;
    v13 = v6[7];
    *&v29[96] = v6[6];
    *&v29[112] = v13;
    v14 = v6[9];
    v30 = v6[8];
    v31 = v14;
    v15 = v6[3];
    *&v29[32] = v6[2];
    *&v29[48] = v15;
    v16 = v6[5];
    *&v29[64] = v6[4];
    *&v29[80] = v16;
    v17 = v6[1];
    *v29 = *v6;
    *&v29[16] = v17;
    if (v26[0] > 2u)
    {
      if (v26[0] == 3)
      {
        v18 = 0xE400000000000000;
        v19 = 1397716596;
      }

      else if (v26[0] == 4)
      {
        v18 = 0xE800000000000000;
        v19 = 0x534F6E6F69736976;
      }

      else
      {
        v19 = 0x4B7974696C616572;
        v18 = 0xEA00000000007469;
      }
    }

    else if (v26[0])
    {
      if (v26[0] == 1)
      {
        v18 = 0xE500000000000000;
        v19 = 0x534F63616DLL;
      }

      else
      {
        v18 = 0xE700000000000000;
        v19 = 0x534F6863746177;
      }
    }

    else
    {
      v18 = 0xE300000000000000;
      v19 = 5459817;
    }

    if (v29[0] > 2u)
    {
      if (v29[0] == 3)
      {
        v20 = 0xE400000000000000;
        if (v19 != 1397716596)
        {
          goto LABEL_34;
        }
      }

      else if (v29[0] == 4)
      {
        v20 = 0xE800000000000000;
        if (v19 != 0x534F6E6F69736976)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v20 = 0xEA00000000007469;
        if (v19 != 0x4B7974696C616572)
        {
          goto LABEL_34;
        }
      }
    }

    else if (v29[0])
    {
      if (v29[0] == 1)
      {
        v20 = 0xE500000000000000;
        if (v19 != 0x534F63616DLL)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v20 = 0xE700000000000000;
        if (v19 != 0x534F6863746177)
        {
          goto LABEL_34;
        }
      }
    }

    else
    {
      v20 = 0xE300000000000000;
      if (v19 != 5459817)
      {
        goto LABEL_34;
      }
    }

    if (v18 == v20)
    {
      outlined init with copy of NodeDef.Availability(v26, v25);
      outlined init with copy of NodeDef.Availability(v29, v25);

      goto LABEL_35;
    }

LABEL_34:
    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();
    outlined init with copy of NodeDef.Availability(v26, v25);
    outlined init with copy of NodeDef.Availability(v29, v25);

    if ((v21 & 1) == 0)
    {
      goto LABEL_53;
    }

LABEL_35:
    v32[4] = *&v26[72];
    v32[5] = *&v26[88];
    v33[0] = *&v26[104];
    *(v33 + 15) = *&v26[119];
    v32[0] = *&v26[8];
    v32[1] = *&v26[24];
    v32[2] = *&v26[40];
    v32[3] = *&v26[56];
    v34[2] = *&v29[40];
    v34[3] = *&v29[56];
    v34[0] = *&v29[8];
    v34[1] = *&v29[24];
    *(v35 + 15) = *&v29[119];
    v34[5] = *&v29[88];
    v35[0] = *&v29[104];
    v34[4] = *&v29[72];
    if ((specialized static NodeDef.Availability.AvailabilityKind.== infix(_:_:)(v32, v34) & 1) == 0)
    {
      goto LABEL_53;
    }

    if (*(&v27 + 1))
    {
      if (!*(&v30 + 1) || v27 != v30 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
LABEL_53:
        outlined destroy of NodeDef.Availability(v29);
        outlined destroy of NodeDef.Availability(v26);
        return 0;
      }
    }

    else if (*(&v30 + 1))
    {
      goto LABEL_53;
    }

    v22 = *(&v31 + 1);
    if (*(&v28 + 1))
    {
      if (!*(&v31 + 1))
      {
        goto LABEL_53;
      }

      if (v28 == v31)
      {
        outlined destroy of NodeDef.Availability(v29);
        outlined destroy of NodeDef.Availability(v26);
      }

      else
      {
        v23 = _stringCompareWithSmolCheck(_:_:expecting:)();
        outlined destroy of NodeDef.Availability(v29);
        outlined destroy of NodeDef.Availability(v26);
        if ((v23 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else
    {
      outlined destroy of NodeDef.Availability(v29);
      outlined destroy of NodeDef.Availability(v26);
      if (v22)
      {
        return 0;
      }
    }

    if (!i)
    {
      break;
    }

    v6 += 10;
    v5 += 10;
  }

  return 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ11ShaderGraph19NodeDefinitionStoreV5InputV_Tt1g5Tm(uint64_t a1, uint64_t a2, void (*a3)(_OWORD *, _BYTE *), uint64_t (*a4)(__int128 *, __int128 *), void (*a5)(_OWORD *))
{
  v7 = *(a1 + 16);
  if (v7 != *(a2 + 16))
  {
    return 0;
  }

  if (!v7 || a1 == a2)
  {
    return 1;
  }

  v67 = v5;
  v68 = v6;
  v11 = (a1 + 32);
  v12 = (a2 + 32);
  for (i = v7 - 1; ; --i)
  {
    v14 = v11[5];
    v15 = v11[7];
    v54 = v11[6];
    v55[0] = v15;
    *(v55 + 9) = *(v11 + 121);
    v16 = v11[1];
    v17 = v11[3];
    v50 = v11[2];
    v51 = v17;
    v18 = v11[3];
    v19 = v11[5];
    v52 = v11[4];
    v53 = v19;
    v20 = v11[1];
    v49[0] = *v11;
    v49[1] = v20;
    v21 = v11[7];
    v47 = v54;
    v48[0] = v21;
    *(v48 + 9) = *(v11 + 121);
    v43 = v50;
    v44 = v18;
    v45 = v52;
    v46 = v14;
    v41 = v49[0];
    v42 = v16;
    v22 = v12[5];
    v23 = v12[7];
    v61 = v12[6];
    v62[0] = v23;
    *(v62 + 9) = *(v12 + 121);
    v24 = v12[1];
    v25 = v12[3];
    v57 = v12[2];
    v58 = v25;
    v26 = v12[3];
    v27 = v12[5];
    v59 = v12[4];
    v60 = v27;
    v28 = v12[1];
    v56[0] = *v12;
    v56[1] = v28;
    v29 = v12[7];
    v39 = v61;
    v40[0] = v29;
    *(v40 + 9) = *(v12 + 121);
    v35 = v57;
    v36 = v26;
    v37 = v59;
    v38 = v22;
    v33 = v56[0];
    v34 = v24;
    a3(v49, v32);
    a3(v56, v32);
    v30 = a4(&v41, &v33);
    v63[6] = v39;
    v64[0] = v40[0];
    *(v64 + 9) = *(v40 + 9);
    v63[2] = v35;
    v63[3] = v36;
    v63[4] = v37;
    v63[5] = v38;
    v63[0] = v33;
    v63[1] = v34;
    a5(v63);
    v65[6] = v47;
    v66[0] = v48[0];
    *(v66 + 9) = *(v48 + 9);
    v65[2] = v43;
    v65[3] = v44;
    v65[4] = v45;
    v65[5] = v46;
    v65[0] = v41;
    v65[1] = v42;
    a5(v65);
    if ((v30 & 1) == 0)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v12 += 9;
    v11 += 9;
  }

  return 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ11ShaderGraph5InputV_Tt1g5Tm(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 80);
    for (i = (a2 + 40); *(v3 - 6) == *(i - 1); i += 7)
    {
      v5 = *(v3 - 4);
      v6 = *(v3 - 3);
      v17 = *(v3 - 8);
      v7 = *i;
      v8 = i[1];
      v9 = i[2];
      v13 = i[3];
      v14 = *(v3 - 2);
      v10 = *(i + 32);
      v15 = i[5];
      v16 = *v3;
      v18 = *(**(v3 - 5) + 128);

      if ((v18(v7) & 1) == 0 || (v5 != v8 || v6 != v9) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
LABEL_20:

        return 0;
      }

      if (v17)
      {
        if (!v10)
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v14 == v13)
        {
          v11 = v10;
        }

        else
        {
          v11 = 1;
        }

        if (v11)
        {
          goto LABEL_20;
        }
      }

      if (v16 != v15)
      {
        return 0;
      }

      v3 += 7;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ11ShaderGraph9InputSpecV_Tt1g5Tm(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 48);
    for (i = a2 + 48; ; i += 24)
    {
      v5 = *v3;
      v6 = *(v3 - 2) == *(i - 16) && *(v3 - 1) == *(i - 8);
      if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v7 = *(*v5 + 128);

      LOBYTE(v7) = v7(v8);

      if ((v7 & 1) == 0)
      {
        break;
      }

      v3 += 3;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ11ShaderGraph0bC4NodeV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = 0;
    v14 = a1;
    v15 = a2;
    while (1)
    {
      v5 = *(a1 + v3 + 32);
      v4 = *(a1 + v3 + 40);
      v7 = *(a1 + v3 + 48);
      v6 = *(a1 + v3 + 56);
      v9 = *(a2 + v3 + 32);
      v8 = *(a2 + v3 + 40);
      v11 = *(a2 + v3 + 48);
      v10 = *(a2 + v3 + 56);
      v16 = *(a2 + v3 + 64);
      v17 = *(a1 + v3 + 64);
      v18 = *(a2 + v3 + 72);
      v19 = *(a1 + v3 + 72);
      outlined copy of NodePersonality(v5);

      outlined copy of NodePersonality(v9);

      if ((static NodePersonality.== infix(_:_:)() & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ11ShaderGraph5InputV_Tt1g5Tm(v4, v8) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ11ShaderGraph5InputV_Tt1g5Tm(v7, v11) & 1) == 0 || v6 != v10)
      {
        break;
      }

      outlined consume of NodePersonality(v5);

      outlined consume of NodePersonality(v9);

      if (v19)
      {
        a1 = v14;
        a2 = v15;
        if (!v18)
        {
          return 0;
        }
      }

      else
      {
        v12 = v18;
        if (v17 != v16)
        {
          v12 = 1;
        }

        a1 = v14;
        a2 = v15;
        if (v12)
        {
          return 0;
        }
      }

      v3 += 48;
      if (!--v2)
      {
        return 1;
      }
    }

    outlined consume of NodePersonality(v9);

    outlined consume of NodePersonality(v5);
  }

  return 0;
}

Swift::Int _sSasSQRzlE2eeoiySbSayxG_ABtFZ11ShaderGraph0C0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAC010SGDataTypeC0V11PersonalityV_G_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = 0;
  v4 = a1 + 32;
  v5 = a2 + 32;
  v61 = a1 + 32;
  v62 = *(a1 + 16);
  v60 = a2 + 32;
  while (1)
  {
    v6 = *(v4 + 88 * v3 + 16);
    v69 = *(v4 + 88 * v3);
    v70 = v6;
    v7 = *(v4 + 88 * v3 + 48);
    v71 = *(v4 + 88 * v3 + 32);
    v8 = *(v4 + 88 * v3 + 64);
    v72 = v7;
    v73 = v8;
    v74 = *(v4 + 88 * v3 + 80);
    v9 = v69;
    v10 = *(&v70 + 1);
    v66 = v70;
    v11 = v71;
    v12 = (v5 + 88 * v3);
    v13 = v12[1];
    v75 = *v12;
    v76 = v13;
    v14 = v12[2];
    v15 = v12[3];
    v16 = v12[4];
    v80 = *(v12 + 10);
    v78 = v15;
    v79 = v16;
    v77 = v14;
    v17 = *(&v75 + 1);
    v18 = v75;
    v19 = v76;
    v20 = v14;
    if (!v71)
    {
      if (v14)
      {
LABEL_59:
        outlined copy of Graph<SGDataTypeGraph.Personality>.Node?(v75, *(&v75 + 1), v76, *(&v76 + 1), v77);
        outlined copy of Graph<SGDataTypeGraph.Personality>.Node?(v9, *(&v9 + 1), v66, v10, v11);
        outlined consume of Graph<SGDataTypeGraph.Personality>.Node?(v9, *(&v9 + 1), v66, v10, v11);
        outlined consume of Graph<SGDataTypeGraph.Personality>.Node?(v18, v17, v19, *(&v19 + 1), v20);
        return 0;
      }

      outlined init with copy of [Input](&v69, v68, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
      outlined init with copy of [Input](&v75, v68, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
      goto LABEL_15;
    }

    if (!v14)
    {
      goto LABEL_59;
    }

    if (v69 != v75)
    {
      outlined init with copy of [Input](&v69, v68, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
      outlined init with copy of [Input](&v75, v68, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
LABEL_62:
      outlined copy of Graph<SGDataTypeGraph.Personality>.Node?(v18, v17, v19, *(&v19 + 1), v20);
      v21 = v66;
      outlined copy of Graph<SGDataTypeGraph.Personality>.Node?(v9, *(&v9 + 1), v66, v10, v11);
LABEL_63:

      outlined consume of Graph<SGDataTypeGraph.Personality>.Node?(v9, *(&v9 + 1), v21, v10, v11);
      goto LABEL_64;
    }

    if (*(&v69 + 1) != *(&v75 + 1))
    {
      outlined init with copy of [Input](&v69, v68, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
      outlined init with copy of [Input](&v75, v68, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
      v18 = v9;
      goto LABEL_62;
    }

    outlined init with copy of [Input](&v69, v68, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
    outlined init with copy of [Input](&v75, v68, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
    outlined copy of Graph<SGDataTypeGraph.Personality>.Node?(v9, *(&v9 + 1), v19, *(&v19 + 1), v20);
    v21 = v66;
    outlined copy of Graph<SGDataTypeGraph.Personality>.Node?(v9, *(&v9 + 1), v66, v10, v11);
    if ((static SGDataTypeGraph.PersonalityKind.== infix(_:_:)() & 1) == 0 || __PAIR128__(v11, v10) != __PAIR128__(v20, *(&v19 + 1)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_63;
    }

    outlined consume of Graph<SGDataTypeGraph.Personality>.Node?(v9, *(&v9 + 1), v66, v10, v11);
LABEL_15:
    v22 = *(&v72 + 1);
    v24 = *(&v73 + 1);
    v23 = v74;
    v25 = *(&v78 + 1);
    v27 = *(&v79 + 1);
    v26 = v80;
    result = specialized Sequence<>.elementsEqual<A>(_:)(v78, v72);
    if ((result & 1) == 0)
    {
      goto LABEL_64;
    }

    v65 = v27;
    v67 = v24;
    v64 = v23;
    v63 = v3;
    v29 = *(v22 + 16);
    if (v29 != *(v25 + 16))
    {
      goto LABEL_64;
    }

    if (v29 && v22 != v25)
    {
      break;
    }

LABEL_44:
    if ((specialized Sequence<>.elementsEqual<A>(_:)(v65, v67) & 1) == 0)
    {
      goto LABEL_64;
    }

    v54 = *(v64 + 16);
    if (v54 != *(v26 + 16))
    {
      goto LABEL_64;
    }

    if (v54 && v64 != v26)
    {
      v55 = (v26 + 48);
      v56 = (v64 + 48);
      do
      {
        if (*v56)
        {
          if ((*v55 & 1) == 0)
          {
            goto LABEL_64;
          }
        }

        else if ((*v55 & 1) != 0 || *(v56 - 2) != *(v55 - 2) || *(v56 - 1) != *(v55 - 1))
        {
          goto LABEL_64;
        }

        v55 += 24;
        v56 += 24;
        --v54;
      }

      while (v54);
    }

    v3 = v63 + 1;
    outlined destroy of [Input](&v75, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
    outlined destroy of [Input](&v69, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
    if (v63 + 1 == v62)
    {
      return 1;
    }

    v5 = v60;
    v4 = v61;
  }

  v30 = 0;
  v31 = v22 + 32;
  v32 = v25 + 32;
  v59 = *(v22 + 16);
  v57 = v22 + 32;
  while (1)
  {
    if (v30 == v29)
    {
      goto LABEL_67;
    }

    v33 = *(v31 + 8 * v30);
    v34 = *(v32 + 8 * v30);
    if (v33 != v34)
    {
      break;
    }

LABEL_20:
    if (++v30 == v29)
    {
      goto LABEL_44;
    }
  }

  if (*(v33 + 16) != *(v34 + 16))
  {
    goto LABEL_64;
  }

  v35 = 0;
  v36 = 1 << *(v33 + 32);
  if (v36 < 64)
  {
    v37 = ~(-1 << v36);
  }

  else
  {
    v37 = -1;
  }

  v38 = v37 & *(v33 + 56);
  v39 = (v36 + 63) >> 6;
  v40 = v34 + 56;
  if (!v38)
  {
LABEL_29:
    v42 = v35;
    v32 = v25 + 32;
    v31 = v57;
    while (1)
    {
      v35 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        break;
      }

      if (v35 >= v39)
      {
        goto LABEL_20;
      }

      v43 = *(v33 + 56 + 8 * v35);
      ++v42;
      if (v43)
      {
        v41 = __clz(__rbit64(v43));
        v58 = (v43 - 1) & v43;
        goto LABEL_34;
      }
    }

    __break(1u);
    __break(1u);
LABEL_67:
    __break(1u);
    return result;
  }

  while (1)
  {
    v41 = __clz(__rbit64(v38));
    v58 = (v38 - 1) & v38;
LABEL_34:
    v44 = (*(v33 + 48) + 16 * (v41 | (v35 << 6)));
    v45 = *v44;
    v46 = v44[1];
    Hasher.init(_seed:)();
    MEMORY[0x266772770](v45);
    MEMORY[0x266772770](v46);
    result = Hasher._finalize()();
    v47 = -1 << *(v34 + 32);
    v48 = result & ~v47;
    v29 = v59;
    if (((*(v40 + ((v48 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v48) & 1) == 0)
    {
      break;
    }

    v49 = ~v47;
    while (1)
    {
      v50 = (*(v34 + 48) + 16 * v48);
      v52 = *v50;
      v51 = v50[1];
      if (v52 == v45 && v51 == v46)
      {
        break;
      }

      v48 = (v48 + 1) & v49;
      if (((*(v40 + ((v48 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v48) & 1) == 0)
      {
        goto LABEL_64;
      }
    }

    v38 = v58;
    if (!v58)
    {
      goto LABEL_29;
    }
  }

LABEL_64:
  outlined destroy of [Input](&v75, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
  outlined destroy of [Input](&v69, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMd, &_s11ShaderGraph0B0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAA010SGDataTypeB0V11PersonalityV_GMR);
  return 0;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ11ShaderGraph28SGGeometryPropertyDefinitionC_Tt1g5Tm(unint64_t a1, unint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v6)
    {
      goto LABEL_29;
    }

    v8 = v4 & 0xFFFFFFFFFFFFFF8;
    v9 = (v4 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v4 < 0)
    {
      v8 = v4;
    }

    if (v5)
    {
      v9 = v8;
    }

    v10 = a2 & 0xFFFFFFFFFFFFFF8;
    v11 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v10 = a2;
    }

    if (a2 >> 62)
    {
      v11 = v10;
    }

    if (v9 == v11)
    {
LABEL_29:
      v19 = 1;
      return v19 & 1;
    }

    if (v6 < 0)
    {
      __break(1u);
      return result;
    }

    v5 = a3(0);
    if (((a2 | v4) & 0xC000000000000001) != 0)
    {
      v12 = a2 & 0xC000000000000001;
      v13 = 4;
      while (1)
      {
        v14 = v13 - 4;
        v15 = v13 - 3;
        if (__OFADD__(v13 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v4 & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x266772030](v13 - 4, v4);
          if (!v12)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v14 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v16 = *(v4 + 8 * v13);
          if (!v12)
          {
LABEL_24:
            if (v14 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v17 = *(a2 + 8 * v13);
            goto LABEL_26;
          }
        }

        v17 = MEMORY[0x266772030](v13 - 4, a2);
LABEL_26:
        v18 = v17;
        v19 = static NSObject.== infix(_:_:)();

        if (v19)
        {
          ++v13;
          if (v15 != v6)
          {
            continue;
          }
        }

        return v19 & 1;
      }
    }

    v20 = (v4 + 32);
    v21 = (a2 + 32);
    v22 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v24 = v6 - 1;
    while (1)
    {
      if (!v22)
      {
        goto LABEL_40;
      }

      if (!v23)
      {
        break;
      }

      v26 = *v20++;
      v25 = v26;
      v27 = *v21++;
      a2 = v25;
      v4 = v27;
      v19 = static NSObject.== infix(_:_:)();

      v29 = v24-- != 0;
      if (v19)
      {
        --v23;
        --v22;
        if (v29)
        {
          continue;
        }
      }

      return v19 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v30 = a3;
    v31 = __CocoaSet.count.getter();
    a3 = v30;
    v6 = v31;
  }

  v32 = a3;
  result = __CocoaSet.count.getter();
  a3 = v32;
  if (v6 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v19 = 0;
  return v19 & 1;
}

uint64_t *MaterialXDataType.vector2.unsafeMutableAddressor()
{
  if (one-time initialization token for vector2 != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.vector2;
}

uint64_t *MaterialXDataType.float2.unsafeMutableAddressor()
{
  if (one-time initialization token for float2 != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.float2;
}

uint64_t *MaterialXDataType.vector3.unsafeMutableAddressor()
{
  if (one-time initialization token for vector3 != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.vector3;
}

uint64_t *MaterialXDataType.float3.unsafeMutableAddressor()
{
  if (one-time initialization token for float3 != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.float3;
}

uint64_t *MaterialXDataType.vector4.unsafeMutableAddressor()
{
  if (one-time initialization token for vector4 != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.vector4;
}

uint64_t *MaterialXDataType.float4.unsafeMutableAddressor()
{
  if (one-time initialization token for float4 != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.float4;
}

uint64_t *MaterialXDataType.float.unsafeMutableAddressor()
{
  if (one-time initialization token for float != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.float;
}

uint64_t *MaterialXDataType.color3.unsafeMutableAddressor()
{
  if (one-time initialization token for color3 != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.color3;
}

uint64_t *MaterialXDataType.color4.unsafeMutableAddressor()
{
  if (one-time initialization token for color4 != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.color4;
}

uint64_t *MaterialXDataType.BOOLean.unsafeMutableAddressor()
{
  if (one-time initialization token for BOOLean != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.BOOLean;
}

uint64_t *MaterialXDataType.integer.unsafeMutableAddressor()
{
  if (one-time initialization token for integer != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.integer;
}

uint64_t *MaterialXDataType.integer2.unsafeMutableAddressor()
{
  if (one-time initialization token for integer2 != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.integer2;
}

uint64_t *MaterialXDataType.integer3.unsafeMutableAddressor()
{
  if (one-time initialization token for integer3 != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.integer3;
}

uint64_t *MaterialXDataType.integer4.unsafeMutableAddressor()
{
  if (one-time initialization token for integer4 != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.integer4;
}

uint64_t *MaterialXDataType.half.unsafeMutableAddressor()
{
  if (one-time initialization token for half != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.half;
}

uint64_t *MaterialXDataType.half2.unsafeMutableAddressor()
{
  if (one-time initialization token for half2 != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.half2;
}

uint64_t *MaterialXDataType.half3.unsafeMutableAddressor()
{
  if (one-time initialization token for half3 != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.half3;
}

uint64_t *MaterialXDataType.half4.unsafeMutableAddressor()
{
  if (one-time initialization token for half4 != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.half4;
}

uint64_t *MaterialXDataType.matrix22.unsafeMutableAddressor()
{
  if (one-time initialization token for matrix22 != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.matrix22;
}

uint64_t *MaterialXDataType.matrix33.unsafeMutableAddressor()
{
  if (one-time initialization token for matrix33 != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.matrix33;
}

uint64_t *MaterialXDataType.matrix44.unsafeMutableAddressor()
{
  if (one-time initialization token for matrix44 != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.matrix44;
}

uint64_t *MaterialXDataType.surfaceshader.unsafeMutableAddressor()
{
  if (one-time initialization token for surfaceshader != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.surfaceshader;
}

uint64_t *MaterialXDataType.vertexshader.unsafeMutableAddressor()
{
  if (one-time initialization token for vertexshader != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.vertexshader;
}

uint64_t *MaterialXDataType.geometrymodifier.unsafeMutableAddressor()
{
  if (one-time initialization token for geometrymodifier != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.geometrymodifier;
}

uint64_t *MaterialXDataType.string.unsafeMutableAddressor()
{
  if (one-time initialization token for string != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.string;
}

uint64_t *MaterialXDataType.space.unsafeMutableAddressor()
{
  if (one-time initialization token for space != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.space;
}

uint64_t *MaterialXDataType.uAddressMode.unsafeMutableAddressor()
{
  if (one-time initialization token for uAddressMode != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.uAddressMode;
}

uint64_t *MaterialXDataType.vAddressMode.unsafeMutableAddressor()
{
  if (one-time initialization token for vAddressMode != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.vAddressMode;
}

uint64_t *MaterialXDataType.usd.wrapS.unsafeMutableAddressor()
{
  if (one-time initialization token for wrapS != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.usd.wrapS;
}

uint64_t *MaterialXDataType.usd.wrapT.unsafeMutableAddressor()
{
  if (one-time initialization token for wrapT != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.usd.wrapT;
}

uint64_t *MaterialXDataType.filterType.unsafeMutableAddressor()
{
  if (one-time initialization token for filterType != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.filterType;
}

uint64_t *MaterialXDataType.blurFilterType.unsafeMutableAddressor()
{
  if (one-time initialization token for blurFilterType != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.blurFilterType;
}

uint64_t *MaterialXDataType.normalMapSpace.unsafeMutableAddressor()
{
  if (one-time initialization token for normalMapSpace != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.normalMapSpace;
}

uint64_t *MaterialXDataType.lumacoeffs.unsafeMutableAddressor()
{
  if (one-time initialization token for lumacoeffs != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.lumacoeffs;
}

uint64_t *MaterialXDataType.realitykit.cubeimageFilterType.unsafeMutableAddressor()
{
  if (one-time initialization token for cubeimageFilterType != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.realitykit.cubeimageFilterType;
}

uint64_t *MaterialXDataType.realitykit.filter.unsafeMutableAddressor()
{
  if (one-time initialization token for filter != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.realitykit.filter;
}

uint64_t *MaterialXDataType.realitykit.coord.unsafeMutableAddressor()
{
  if (one-time initialization token for coord != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.realitykit.coord;
}

uint64_t *MaterialXDataType.realitykit.addressMode.unsafeMutableAddressor()
{
  if (one-time initialization token for addressMode != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.realitykit.addressMode;
}

uint64_t *MaterialXDataType.realitykit.rAddressMode.unsafeMutableAddressor()
{
  if (one-time initialization token for rAddressMode != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.realitykit.rAddressMode;
}

uint64_t *MaterialXDataType.realitykit.sAddressMode.unsafeMutableAddressor()
{
  if (one-time initialization token for sAddressMode != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.realitykit.sAddressMode;
}

uint64_t *MaterialXDataType.realitykit.tAddressMode.unsafeMutableAddressor()
{
  if (one-time initialization token for tAddressMode != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.realitykit.tAddressMode;
}

uint64_t *MaterialXDataType.realitykit.u_wrap_mode.unsafeMutableAddressor()
{
  if (one-time initialization token for u_wrap_mode != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.realitykit.u_wrap_mode;
}

uint64_t *MaterialXDataType.realitykit.v_wrap_mode.unsafeMutableAddressor()
{
  if (one-time initialization token for v_wrap_mode != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.realitykit.v_wrap_mode;
}

uint64_t *MaterialXDataType.realitykit.w_wrap_mode.unsafeMutableAddressor()
{
  if (one-time initialization token for w_wrap_mode != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.realitykit.w_wrap_mode;
}

uint64_t *MaterialXDataType.realitykit.u_pixel_wrap_mode.unsafeMutableAddressor()
{
  if (one-time initialization token for u_pixel_wrap_mode != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.realitykit.u_pixel_wrap_mode;
}

uint64_t *MaterialXDataType.realitykit.v_pixel_wrap_mode.unsafeMutableAddressor()
{
  if (one-time initialization token for v_pixel_wrap_mode != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.realitykit.v_pixel_wrap_mode;
}

uint64_t *MaterialXDataType.realitykit.w_pixel_wrap_mode.unsafeMutableAddressor()
{
  if (one-time initialization token for w_pixel_wrap_mode != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.realitykit.w_pixel_wrap_mode;
}

uint64_t *MaterialXDataType.realitykit.magFilter.unsafeMutableAddressor()
{
  if (one-time initialization token for magFilter != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.realitykit.magFilter;
}

uint64_t *MaterialXDataType.realitykit.minFilter.unsafeMutableAddressor()
{
  if (one-time initialization token for minFilter != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.realitykit.minFilter;
}

uint64_t *MaterialXDataType.realitykit.mipFilter.unsafeMutableAddressor()
{
  if (one-time initialization token for mipFilter != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.realitykit.mipFilter;
}

uint64_t *MaterialXDataType.realitykit.borderColor.unsafeMutableAddressor()
{
  if (one-time initialization token for borderColor != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.realitykit.borderColor;
}

Swift::String_optional __swiftcall MetalDataType.convertEnumConstant(_:)(Swift::String a1)
{
  v2 = v1;
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  if (one-time initialization token for coord != -1)
  {
    swift_once();
  }

  if (MetalDataType.isEqual(to:)(v1))
  {
    v5 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&outlined read-only object #0 of MetalDataType.convertEnumConstant(_:));
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SStMd, &_sSS_SStMR);
    goto LABEL_18;
  }

  if (one-time initialization token for address != -1)
  {
    swift_once();
  }

  if (MetalDataType.isEqual(to:)(v1))
  {
    goto LABEL_17;
  }

  if (one-time initialization token for s_address != -1)
  {
    swift_once();
  }

  if (MetalDataType.isEqual(to:)(v1))
  {
    goto LABEL_17;
  }

  if (one-time initialization token for t_address != -1)
  {
    swift_once();
  }

  if (MetalDataType.isEqual(to:)(v1))
  {
    goto LABEL_17;
  }

  if (one-time initialization token for r_address != -1)
  {
    swift_once();
  }

  if (MetalDataType.isEqual(to:)(v1))
  {
LABEL_17:
    v5 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&outlined read-only object #1 of MetalDataType.convertEnumConstant(_:));
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SStMd, &_sSS_SStMR);
    goto LABEL_18;
  }

  if (one-time initialization token for filter != -1)
  {
    swift_once();
  }

  if (MetalDataType.isEqual(to:)(v1))
  {
    goto LABEL_32;
  }

  if (one-time initialization token for min_filter != -1)
  {
    swift_once();
  }

  if (MetalDataType.isEqual(to:)(v1))
  {
    goto LABEL_32;
  }

  if (one-time initialization token for mag_filter != -1)
  {
    swift_once();
  }

  if (MetalDataType.isEqual(to:)(v1))
  {
LABEL_32:
    v13 = &outlined read-only object #2 of MetalDataType.convertEnumConstant(_:);
LABEL_33:
    v5 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SStMd, &_sSS_SStMR);
    goto LABEL_18;
  }

  if (one-time initialization token for mip_filter != -1)
  {
    swift_once();
  }

  if (MetalDataType.isEqual(to:)(v1))
  {
    v5 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&outlined read-only object #3 of MetalDataType.convertEnumConstant(_:));
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SStMd, &_sSS_SStMR);
    goto LABEL_18;
  }

  if (one-time initialization token for space != -1)
  {
    swift_once();
  }

  if (MetalDataType.isEqual(to:)(v1))
  {
    v13 = &outlined read-only object #4 of MetalDataType.convertEnumConstant(_:);
    goto LABEL_33;
  }

  if (one-time initialization token for border_color != -1)
  {
    swift_once();
  }

  if (MetalDataType.isEqual(to:)(v1))
  {
    v13 = &outlined read-only object #5 of MetalDataType.convertEnumConstant(_:);
    goto LABEL_33;
  }

  if (MetalDataType.isEqual(to:)(v1))
  {
    v13 = &outlined read-only object #6 of MetalDataType.convertEnumConstant(_:);
    goto LABEL_33;
  }

  if (one-time initialization token for compare_func != -1)
  {
    swift_once();
  }

  if ((MetalDataType.isEqual(to:)(v1) & 1) == 0)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, logger);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v27 = v18;
      *v17 = 136315394;
      *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, &v27);
      *(v17 + 12) = 2080;
      v19 = *(*v2 + 136);

      v21 = v15;
      v22 = v19(v20);
      v24 = v23;

      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, &v27);

      *(v17 + 14) = v25;
      _os_log_impl(&dword_265D7D000, v21, v16, "Could not convert value '%s' to '%s'", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266773120](v18, -1, -1);
      MEMORY[0x266773120](v17, -1, -1);
    }

    else
    {
    }

    goto LABEL_22;
  }

  v5 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&outlined read-only object #7 of MetalDataType.convertEnumConstant(_:));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SStMd, &_sSS_SStMR);
LABEL_18:
  swift_arrayDestroy();
  if (!*(v5 + 16) || (v6 = specialized __RawDictionaryStorage.find<A>(_:)(countAndFlagsBits, object), (v7 & 1) == 0))
  {

LABEL_22:
    v12 = 0;
    v11 = 0;
    goto LABEL_57;
  }

  v8 = (*(v5 + 56) + 16 * v6);
  v10 = *v8;
  v9 = v8[1];

  v11 = v9;
  v12 = v10;
LABEL_57:
  result.value._object = v11;
  result.value._countAndFlagsBits = v12;
  return result;
}

uint64_t *MaterialXDataType.unsupported.unsafeMutableAddressor()
{
  if (one-time initialization token for unsupported != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.unsupported;
}

__n128 SGDataTypeStorage.init(materialXValue:type:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  specialized SGDataTypeStorage.init(materialXValue:type:)(a1, a2, a3, v8);
  if (!v4)
  {
    v7 = v8[3];
    *(a4 + 32) = v8[2];
    *(a4 + 48) = v7;
    *(a4 + 64) = v9;
    result = v8[1];
    *a4 = v8[0];
    *(a4 + 16) = result;
  }

  return result;
}

uint64_t _ss4SIMDP11ShaderGraphs25LosslessStringConvertible6ScalarRpzrlEyxSSKcfCs5SIMD2Vys5Int32VG_Tt1g5(uint64_t a1, unint64_t a2)
{
  v40 = type metadata accessor for CharacterSet();
  v5 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v7 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = a1;
  v43 = a1;
  v44 = a2;
  v41 = 44;
  v42 = 0xE100000000000000;
  v39 = lazy protocol witness table accessor for type String and conformance String();
  v8 = StringProtocol.components<A>(separatedBy:)();
  v9 = *(v8 + 16);
  v10 = MEMORY[0x277D84F90];
  v37 = a2;
  if (v9)
  {
    v35[2] = v2;
    v41 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9, 0);
    v11 = v41;
    v38 = (v5 + 8);
    v35[1] = v8;
    v12 = (v8 + 40);
    do
    {
      v13 = *v12;
      v43 = *(v12 - 1);
      v44 = v13;

      static CharacterSet.whitespacesAndNewlines.getter();
      v14 = StringProtocol.trimmingCharacters(in:)();
      v16 = v15;
      (*v38)(v7, v40);

      v41 = v11;
      v18 = *(v11 + 16);
      v17 = *(v11 + 24);
      if (v18 >= v17 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1);
        v11 = v41;
      }

      *(v11 + 16) = v18 + 1;
      v19 = v11 + 16 * v18;
      *(v19 + 32) = v14;
      *(v19 + 40) = v16;
      v12 += 2;
      --v9;
    }

    while (v9);

    a2 = v37;
    v10 = MEMORY[0x277D84F90];
    v20 = *(v11 + 16);
    if (v20)
    {
LABEL_7:
      v43 = v10;
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v20, 0);
      v22 = 0;
      v10 = v43;
      v23 = (v11 + 40);
      while (v22 < *(v11 + 16))
      {
        v24 = *(v23 - 1);
        v25 = *v23;

        v26 = specialized closure #2 in SIMD<>.init(_:)(v24, v25);

        v43 = v10;
        v28 = *(v10 + 16);
        v27 = *(v10 + 24);
        if (v28 >= v27 >> 1)
        {
          result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1);
          v10 = v43;
        }

        ++v22;
        *(v10 + 16) = v28 + 1;
        *(v10 + 4 * v28 + 32) = v26;
        v23 += 2;
        if (v20 == v22)
        {

          a2 = v37;
          goto LABEL_15;
        }
      }

      __break(1u);
      return result;
    }
  }

  else
  {

    v11 = MEMORY[0x277D84F90];
    v20 = *(MEMORY[0x277D84F90] + 16);
    if (v20)
    {
      goto LABEL_7;
    }
  }

LABEL_15:
  v29 = *(v10 + 16);

  if (v29 == 2)
  {
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD2Vys5Int32VG_SayAJGTt1g5Tf4g_n(v10);
  }

  else
  {
    v43 = 0;
    v44 = 0xE000000000000000;
    _StringGuts.grow(_:)(83);
    MEMORY[0x266771550](0x222065756C6156, 0xE700000000000000);
    MEMORY[0x266771550](v36, a2);

    MEMORY[0x266771550](0xD00000000000002DLL, 0x8000000265F30240);
    v41 = v29;
    v30 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266771550](v30);

    MEMORY[0x266771550](0x797420747562202CLL, 0xEC00000027206570);
    MEMORY[0x266771550](0x6E493C32444D4953, 0xEC0000003E323374);
    MEMORY[0x266771550](0x7463657078652027, 0xEA00000000002073);
    v41 = 2;
    v31 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266771550](v31);

    MEMORY[0x266771550](46, 0xE100000000000000);
    v32 = v43;
    v33 = v44;
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    *v34 = 25;
    *(v34 + 8) = v32;
    *(v34 + 16) = v33;
    return swift_willThrow();
  }
}

uint64_t _ss4SIMDP11ShaderGraphs25LosslessStringConvertible6ScalarRpzrlEyxSSKcfCs5SIMD3Vys5Int32VG_Tt1g5(uint64_t a1, unint64_t a2)
{
  *&v40 = type metadata accessor for CharacterSet();
  v5 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v7 = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = a1;
  v43 = a1;
  v44 = a2;
  v41 = 44;
  v42 = 0xE100000000000000;
  v45 = lazy protocol witness table accessor for type String and conformance String();
  v8 = StringProtocol.components<A>(separatedBy:)();
  v9 = *(v8 + 16);
  v10 = MEMORY[0x277D84F90];
  v38 = a2;
  if (v9)
  {
    v36[2] = v2;
    v41 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9, 0);
    v11 = v41;
    v39 = (v5 + 8);
    v36[1] = v8;
    v12 = (v8 + 40);
    do
    {
      v13 = *v12;
      v43 = *(v12 - 1);
      v44 = v13;

      static CharacterSet.whitespacesAndNewlines.getter();
      v14 = StringProtocol.trimmingCharacters(in:)();
      v16 = v15;
      (*v39)(v7, v40);

      v41 = v11;
      v18 = *(v11 + 16);
      v17 = *(v11 + 24);
      if (v18 >= v17 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1);
        v11 = v41;
      }

      *(v11 + 16) = v18 + 1;
      v19 = v11 + 16 * v18;
      *(v19 + 32) = v14;
      *(v19 + 40) = v16;
      v12 += 2;
      --v9;
    }

    while (v9);

    a2 = v38;
    v10 = MEMORY[0x277D84F90];
    v20 = *(v11 + 16);
    if (v20)
    {
LABEL_7:
      v43 = v10;
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v20, 0);
      v22 = 0;
      v10 = v43;
      v23 = (v11 + 40);
      while (v22 < *(v11 + 16))
      {
        v24 = *(v23 - 1);
        v25 = *v23;

        v26 = specialized closure #2 in SIMD<>.init(_:)(v24, v25);

        v43 = v10;
        v28 = *(v10 + 16);
        v27 = *(v10 + 24);
        if (v28 >= v27 >> 1)
        {
          result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1);
          v10 = v43;
        }

        ++v22;
        *(v10 + 16) = v28 + 1;
        *(v10 + 4 * v28 + 32) = v26;
        v23 += 2;
        if (v20 == v22)
        {

          a2 = v38;
          goto LABEL_15;
        }
      }

      __break(1u);
      return result;
    }
  }

  else
  {

    v11 = MEMORY[0x277D84F90];
    v20 = *(MEMORY[0x277D84F90] + 16);
    if (v20)
    {
      goto LABEL_7;
    }
  }

LABEL_15:
  v29 = *(v10 + 16);

  if (v29 == 3)
  {
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3Vys5Int32VG_SayAJGTt1g5Tf4g_n(v10);
    v40 = v30;
  }

  else
  {
    v43 = 0;
    v44 = 0xE000000000000000;
    _StringGuts.grow(_:)(83);
    MEMORY[0x266771550](0x222065756C6156, 0xE700000000000000);
    MEMORY[0x266771550](v37, a2);

    MEMORY[0x266771550](0xD00000000000002DLL, 0x8000000265F30240);
    v41 = v29;
    v31 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266771550](v31);

    MEMORY[0x266771550](0x797420747562202CLL, 0xEC00000027206570);
    MEMORY[0x266771550](0x6E493C33444D4953, 0xEC0000003E323374);
    MEMORY[0x266771550](0x7463657078652027, 0xEA00000000002073);
    v41 = 3;
    v32 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266771550](v32);

    MEMORY[0x266771550](46, 0xE100000000000000);
    v33 = v43;
    v34 = v44;
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    *v35 = 25;
    *(v35 + 8) = v33;
    *(v35 + 16) = v34;
    return swift_willThrow();
  }
}

uint64_t _ss4SIMDP11ShaderGraphs25LosslessStringConvertible6ScalarRpzrlEyxSSKcfCs5SIMD4Vys5Int32VG_Tt1g5(uint64_t a1, unint64_t a2)
{
  *&v40 = type metadata accessor for CharacterSet();
  v5 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v7 = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = a1;
  v43 = a1;
  v44 = a2;
  v41 = 44;
  v42 = 0xE100000000000000;
  v45 = lazy protocol witness table accessor for type String and conformance String();
  v8 = StringProtocol.components<A>(separatedBy:)();
  v9 = *(v8 + 16);
  v10 = MEMORY[0x277D84F90];
  v38 = a2;
  if (v9)
  {
    v36[2] = v2;
    v41 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9, 0);
    v11 = v41;
    v39 = (v5 + 8);
    v36[1] = v8;
    v12 = (v8 + 40);
    do
    {
      v13 = *v12;
      v43 = *(v12 - 1);
      v44 = v13;

      static CharacterSet.whitespacesAndNewlines.getter();
      v14 = StringProtocol.trimmingCharacters(in:)();
      v16 = v15;
      (*v39)(v7, v40);

      v41 = v11;
      v18 = *(v11 + 16);
      v17 = *(v11 + 24);
      if (v18 >= v17 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1);
        v11 = v41;
      }

      *(v11 + 16) = v18 + 1;
      v19 = v11 + 16 * v18;
      *(v19 + 32) = v14;
      *(v19 + 40) = v16;
      v12 += 2;
      --v9;
    }

    while (v9);

    a2 = v38;
    v10 = MEMORY[0x277D84F90];
    v20 = *(v11 + 16);
    if (v20)
    {
LABEL_7:
      v43 = v10;
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v20, 0);
      v22 = 0;
      v10 = v43;
      v23 = (v11 + 40);
      while (v22 < *(v11 + 16))
      {
        v24 = *(v23 - 1);
        v25 = *v23;

        v26 = specialized closure #2 in SIMD<>.init(_:)(v24, v25);

        v43 = v10;
        v28 = *(v10 + 16);
        v27 = *(v10 + 24);
        if (v28 >= v27 >> 1)
        {
          result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1);
          v10 = v43;
        }

        ++v22;
        *(v10 + 16) = v28 + 1;
        *(v10 + 4 * v28 + 32) = v26;
        v23 += 2;
        if (v20 == v22)
        {

          a2 = v38;
          goto LABEL_15;
        }
      }

      __break(1u);
      return result;
    }
  }

  else
  {

    v11 = MEMORY[0x277D84F90];
    v20 = *(MEMORY[0x277D84F90] + 16);
    if (v20)
    {
      goto LABEL_7;
    }
  }

LABEL_15:
  v29 = *(v10 + 16);

  if (v29 == 4)
  {
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD4Vys5Int32VG_SayAJGTt1g5Tf4g_n(v10);
    v40 = v30;
  }

  else
  {
    v43 = 0;
    v44 = 0xE000000000000000;
    _StringGuts.grow(_:)(83);
    MEMORY[0x266771550](0x222065756C6156, 0xE700000000000000);
    MEMORY[0x266771550](v37, a2);

    MEMORY[0x266771550](0xD00000000000002DLL, 0x8000000265F30240);
    v41 = v29;
    v31 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266771550](v31);

    MEMORY[0x266771550](0x797420747562202CLL, 0xEC00000027206570);
    MEMORY[0x266771550](0x6E493C34444D4953, 0xEC0000003E323374);
    MEMORY[0x266771550](0x7463657078652027, 0xEA00000000002073);
    v41 = 4;
    v32 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266771550](v32);

    MEMORY[0x266771550](46, 0xE100000000000000);
    v33 = v43;
    v34 = v44;
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    *v35 = 25;
    *(v35 + 8) = v33;
    *(v35 + 16) = v34;
    return swift_willThrow();
  }
}

uint64_t _ss4SIMDP11ShaderGraphs25LosslessStringConvertible6ScalarRpzrlEyxSSKcfCs5SIMD3VySfG_Tt1g5(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  *&v43 = type metadata accessor for CharacterSet();
  v6 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v8 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = a1;
  v46 = a1;
  v47 = a2;
  v44 = 44;
  v45 = 0xE100000000000000;
  v48 = lazy protocol witness table accessor for type String and conformance String();
  v9 = StringProtocol.components<A>(separatedBy:)();
  v10 = *(v9 + 16);
  v11 = MEMORY[0x277D84F90];
  if (!v10)
  {

    v12 = MEMORY[0x277D84F90];
    v21 = *(MEMORY[0x277D84F90] + 16);
    if (v21)
    {
      goto LABEL_7;
    }

LABEL_15:

    v24 = MEMORY[0x277D84F90];
LABEL_16:
    v31 = *(v24 + 16);

    if (v31 == 3)
    {
      _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3Vys5Int32VG_SayAJGTt1g5Tf4g_n(v24);
      v43 = v32;
    }

    else
    {
      v46 = 0;
      v47 = 0xE000000000000000;
      _StringGuts.grow(_:)(83);
      MEMORY[0x266771550](0x222065756C6156, 0xE700000000000000);
      MEMORY[0x266771550](v41, a2);

      MEMORY[0x266771550](0xD00000000000002DLL, 0x8000000265F30240);
      v44 = v31;
      v33 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266771550](v33);

      MEMORY[0x266771550](0x797420747562202CLL, 0xEC00000027206570);
      MEMORY[0x266771550](0x6C463C33444D4953, 0xEC0000003E74616FLL);
      MEMORY[0x266771550](0x7463657078652027, 0xEA00000000002073);
      v44 = 3;
      v34 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266771550](v34);

      MEMORY[0x266771550](46, 0xE100000000000000);
      v35 = v46;
      v36 = v47;
      lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
      swift_allocError();
      *v37 = 25;
      *(v37 + 8) = v35;
      *(v37 + 16) = v36;
      return swift_willThrow();
    }
  }

  v39 = a2;
  v40 = v2;
  v44 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10, 0);
  v12 = v44;
  v42 = (v6 + 8);
  v38[1] = v9;
  v13 = (v9 + 40);
  do
  {
    v14 = *v13;
    v46 = *(v13 - 1);
    v47 = v14;

    static CharacterSet.whitespacesAndNewlines.getter();
    v15 = StringProtocol.trimmingCharacters(in:)();
    v17 = v16;
    (*v42)(v8, v43);

    v44 = v12;
    v19 = *(v12 + 16);
    v18 = *(v12 + 24);
    if (v19 >= v18 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1);
      v12 = v44;
    }

    *(v12 + 16) = v19 + 1;
    v20 = v12 + 16 * v19;
    *(v20 + 32) = v15;
    *(v20 + 40) = v17;
    v13 += 2;
    --v10;
  }

  while (v10);

  a2 = v39;
  v3 = v40;
  v11 = MEMORY[0x277D84F90];
  v21 = *(v12 + 16);
  if (!v21)
  {
    goto LABEL_15;
  }

LABEL_7:
  v46 = v11;
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21, 0);
  v23 = 0;
  v24 = v46;
  v25 = (v12 + 40);
  while (v23 < *(v12 + 16))
  {
    v27 = *(v25 - 1);
    v26 = *v25;

    result = _sSfySfSgxcSyRzlufCSS_Tt0gq5(v27, v26);
    if ((result & 0x100000000) != 0)
    {
      goto LABEL_20;
    }

    v46 = v24;
    v29 = *(v24 + 16);
    v28 = *(v24 + 24);
    if (v29 >= v28 >> 1)
    {
      v40 = v3;
      v30 = result;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1);
      result = v30;
      v3 = v40;
      v24 = v46;
    }

    ++v23;
    *(v24 + 16) = v29 + 1;
    *(v24 + 4 * v29 + 32) = result;
    v25 += 2;
    if (v21 == v23)
    {

      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t _ss4SIMDP11ShaderGraphs25LosslessStringConvertible6ScalarRpzrlEyxSSKcfCs5SIMD4VySfG_Tt1g5(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  *&v43 = type metadata accessor for CharacterSet();
  v6 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v8 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = a1;
  v46 = a1;
  v47 = a2;
  v44 = 44;
  v45 = 0xE100000000000000;
  v48 = lazy protocol witness table accessor for type String and conformance String();
  v9 = StringProtocol.components<A>(separatedBy:)();
  v10 = *(v9 + 16);
  v11 = MEMORY[0x277D84F90];
  if (!v10)
  {

    v12 = MEMORY[0x277D84F90];
    v21 = *(MEMORY[0x277D84F90] + 16);
    if (v21)
    {
      goto LABEL_7;
    }

LABEL_15:

    v24 = MEMORY[0x277D84F90];
LABEL_16:
    v31 = *(v24 + 16);

    if (v31 == 4)
    {
      _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD4Vys5Int32VG_SayAJGTt1g5Tf4g_n(v24);
      v43 = v32;
    }

    else
    {
      v46 = 0;
      v47 = 0xE000000000000000;
      _StringGuts.grow(_:)(83);
      MEMORY[0x266771550](0x222065756C6156, 0xE700000000000000);
      MEMORY[0x266771550](v41, a2);

      MEMORY[0x266771550](0xD00000000000002DLL, 0x8000000265F30240);
      v44 = v31;
      v33 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266771550](v33);

      MEMORY[0x266771550](0x797420747562202CLL, 0xEC00000027206570);
      MEMORY[0x266771550](0x6C463C34444D4953, 0xEC0000003E74616FLL);
      MEMORY[0x266771550](0x7463657078652027, 0xEA00000000002073);
      v44 = 4;
      v34 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266771550](v34);

      MEMORY[0x266771550](46, 0xE100000000000000);
      v35 = v46;
      v36 = v47;
      lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
      swift_allocError();
      *v37 = 25;
      *(v37 + 8) = v35;
      *(v37 + 16) = v36;
      return swift_willThrow();
    }
  }

  v39 = a2;
  v40 = v2;
  v44 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10, 0);
  v12 = v44;
  v42 = (v6 + 8);
  v38[1] = v9;
  v13 = (v9 + 40);
  do
  {
    v14 = *v13;
    v46 = *(v13 - 1);
    v47 = v14;

    static CharacterSet.whitespacesAndNewlines.getter();
    v15 = StringProtocol.trimmingCharacters(in:)();
    v17 = v16;
    (*v42)(v8, v43);

    v44 = v12;
    v19 = *(v12 + 16);
    v18 = *(v12 + 24);
    if (v19 >= v18 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1);
      v12 = v44;
    }

    *(v12 + 16) = v19 + 1;
    v20 = v12 + 16 * v19;
    *(v20 + 32) = v15;
    *(v20 + 40) = v17;
    v13 += 2;
    --v10;
  }

  while (v10);

  a2 = v39;
  v3 = v40;
  v11 = MEMORY[0x277D84F90];
  v21 = *(v12 + 16);
  if (!v21)
  {
    goto LABEL_15;
  }

LABEL_7:
  v46 = v11;
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21, 0);
  v23 = 0;
  v24 = v46;
  v25 = (v12 + 40);
  while (v23 < *(v12 + 16))
  {
    v27 = *(v25 - 1);
    v26 = *v25;

    result = _sSfySfSgxcSyRzlufCSS_Tt0gq5(v27, v26);
    if ((result & 0x100000000) != 0)
    {
      goto LABEL_20;
    }

    v46 = v24;
    v29 = *(v24 + 16);
    v28 = *(v24 + 24);
    if (v29 >= v28 >> 1)
    {
      v40 = v3;
      v30 = result;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1);
      result = v30;
      v3 = v40;
      v24 = v46;
    }

    ++v23;
    *(v24 + 16) = v29 + 1;
    *(v24 + 4 * v29 + 32) = result;
    v25 += 2;
    if (v21 == v23)
    {

      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t _ss4SIMDP11ShaderGraphs25LosslessStringConvertible6ScalarRpzrlEyxSSKcfCs5SIMD2VySfG_Tt1g5(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v43 = type metadata accessor for CharacterSet();
  v6 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v8 = v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = a1;
  v46 = a1;
  v47 = a2;
  v44 = 44;
  v45 = 0xE100000000000000;
  v42 = lazy protocol witness table accessor for type String and conformance String();
  v9 = StringProtocol.components<A>(separatedBy:)();
  v10 = *(v9 + 16);
  v11 = MEMORY[0x277D84F90];
  if (!v10)
  {

    v12 = MEMORY[0x277D84F90];
    v21 = *(MEMORY[0x277D84F90] + 16);
    if (v21)
    {
      goto LABEL_7;
    }

LABEL_15:

    v24 = MEMORY[0x277D84F90];
LABEL_16:
    v31 = *(v24 + 16);

    if (v31 == 2)
    {
      _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD2Vys5Int32VG_SayAJGTt1g5Tf4g_n(v24);
    }

    else
    {
      v46 = 0;
      v47 = 0xE000000000000000;
      _StringGuts.grow(_:)(83);
      MEMORY[0x266771550](0x222065756C6156, 0xE700000000000000);
      MEMORY[0x266771550](v40, a2);

      MEMORY[0x266771550](0xD00000000000002DLL, 0x8000000265F30240);
      v44 = v31;
      v32 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266771550](v32);

      MEMORY[0x266771550](0x797420747562202CLL, 0xEC00000027206570);
      MEMORY[0x266771550](0x6C463C32444D4953, 0xEC0000003E74616FLL);
      MEMORY[0x266771550](0x7463657078652027, 0xEA00000000002073);
      v44 = 2;
      v33 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x266771550](v33);

      MEMORY[0x266771550](46, 0xE100000000000000);
      v34 = v46;
      v35 = v47;
      lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
      swift_allocError();
      *v36 = 25;
      *(v36 + 8) = v34;
      *(v36 + 16) = v35;
      return swift_willThrow();
    }
  }

  v38 = a2;
  v39 = v2;
  v44 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10, 0);
  v12 = v44;
  v41 = (v6 + 8);
  v37[1] = v9;
  v13 = (v9 + 40);
  do
  {
    v14 = *v13;
    v46 = *(v13 - 1);
    v47 = v14;

    static CharacterSet.whitespacesAndNewlines.getter();
    v15 = StringProtocol.trimmingCharacters(in:)();
    v17 = v16;
    (*v41)(v8, v43);

    v44 = v12;
    v19 = *(v12 + 16);
    v18 = *(v12 + 24);
    if (v19 >= v18 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1);
      v12 = v44;
    }

    *(v12 + 16) = v19 + 1;
    v20 = v12 + 16 * v19;
    *(v20 + 32) = v15;
    *(v20 + 40) = v17;
    v13 += 2;
    --v10;
  }

  while (v10);

  a2 = v38;
  v3 = v39;
  v11 = MEMORY[0x277D84F90];
  v21 = *(v12 + 16);
  if (!v21)
  {
    goto LABEL_15;
  }

LABEL_7:
  v46 = v11;
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21, 0);
  v23 = 0;
  v24 = v46;
  v25 = (v12 + 40);
  while (v23 < *(v12 + 16))
  {
    v27 = *(v25 - 1);
    v26 = *v25;

    result = _sSfySfSgxcSyRzlufCSS_Tt0gq5(v27, v26);
    if ((result & 0x100000000) != 0)
    {
      goto LABEL_20;
    }

    v46 = v24;
    v29 = *(v24 + 16);
    v28 = *(v24 + 24);
    if (v29 >= v28 >> 1)
    {
      v39 = v3;
      v30 = result;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1);
      result = v30;
      v3 = v39;
      v24 = v46;
    }

    ++v23;
    *(v24 + 16) = v29 + 1;
    *(v24 + 4 * v29 + 32) = result;
    v25 += 2;
    if (v21 == v23)
    {

      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t SIMD<>.init(_:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v45 = a4;
  v43 = a6;
  v53 = type metadata accessor for CharacterSet();
  v10 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v12 = v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = a1;
  v51 = a1;
  v52 = a2;
  v46 = a2;
  v49 = 44;
  v50 = 0xE100000000000000;
  v48 = lazy protocol witness table accessor for type String and conformance String();
  v13 = StringProtocol.components<A>(separatedBy:)();
  v14 = *(v13 + 16);
  if (v14)
  {
    v41 = a5;
    v42 = a3;
    v49 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14, 0);
    v15 = v49;
    v47 = (v10 + 8);
    v40[1] = v13;
    v16 = (v13 + 40);
    do
    {
      v17 = *v16;
      v51 = *(v16 - 1);
      v52 = v17;

      static CharacterSet.whitespacesAndNewlines.getter();
      v18 = StringProtocol.trimmingCharacters(in:)();
      v20 = v19;
      (*v47)(v12, v53);

      v49 = v15;
      v22 = *(v15 + 16);
      v21 = *(v15 + 24);
      if (v22 >= v21 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1);
        v15 = v49;
      }

      *(v15 + 16) = v22 + 1;
      v23 = v15 + 16 * v22;
      *(v23 + 32) = v18;
      *(v23 + 40) = v20;
      v16 += 2;
      --v14;
    }

    while (v14);

    a5 = v41;
    a3 = v42;
  }

  else
  {

    v15 = MEMORY[0x277D84F90];
  }

  v51 = v15;
  MEMORY[0x28223BE20](v24);
  v25 = v45;
  v40[-4] = a3;
  v40[-3] = v25;
  v40[-2] = a5;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  v27 = *(v25 + 48);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v29 = lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A], MEMORY[0x277D83988]);
  v31 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #2 in SIMD<>.init(_:), &v40[-6], v26, AssociatedTypeWitness, MEMORY[0x277D84A98], v29, MEMORY[0x277D84AC0], v30);

  v32 = MEMORY[0x266771860](v31, AssociatedTypeWitness);
  if (v32 == static SIMDStorage.scalarCount.getter(a3, v27))
  {

    v51 = v31;
    type metadata accessor for Array();
    swift_getWitnessTable();
    return SIMD.init<A>(_:)();
  }

  else
  {

    v51 = 0;
    v52 = 0xE000000000000000;
    _StringGuts.grow(_:)(83);
    MEMORY[0x266771550](0x222065756C6156, 0xE700000000000000);
    MEMORY[0x266771550](v44, v46);

    MEMORY[0x266771550](0xD00000000000002DLL, 0x8000000265F30240);
    v49 = v32;
    v34 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266771550](v34);

    MEMORY[0x266771550](0x797420747562202CLL, 0xEC00000027206570);
    v35 = _typeName(_:qualified:)();
    MEMORY[0x266771550](v35);

    MEMORY[0x266771550](0x7463657078652027, 0xEA00000000002073);
    v49 = static SIMDStorage.scalarCount.getter(a3, v27);
    v36 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266771550](v36);

    MEMORY[0x266771550](46, 0xE100000000000000);
    v37 = v51;
    v38 = v52;
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    *v39 = 25;
    *(v39 + 8) = v37;
    *(v39 + 16) = v38;
    return swift_willThrow();
  }
}

unint64_t specialized closure #2 in SIMD<>.init(_:)(unint64_t result, unint64_t a2)
{
  v3 = HIBYTE(a2) & 0xF;
  v4 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = v3;
  }

  else
  {
    v5 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    __break(1u);
    goto LABEL_65;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
LABEL_65:
    v25 = result;

    v7 = specialized _parseInteger<A, B>(ascii:radix:)(v25, a2, 10);

    if ((v7 & 0x100000000) != 0)
    {
      goto LABEL_66;
    }

    return v7;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) == 0)
    {
      goto LABEL_67;
    }

    for (result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32; ; result = _StringObject.sharedUTF8.getter())
    {
      v6 = *result;
      if (v6 == 43)
      {
        if (v4 < 1)
        {
          goto LABEL_70;
        }

        v3 = v4 - 1;
        if (v4 != 1)
        {
          v7 = 0;
          if (!result)
          {
LABEL_53:
            LOBYTE(v3) = 0;
            goto LABEL_62;
          }

          v14 = (result + 1);
          while (1)
          {
            v15 = *v14 - 48;
            if (v15 > 9)
            {
              break;
            }

            v16 = 10 * v7;
            if (v16 != v16)
            {
              break;
            }

            v7 = v16 + v15;
            if (__OFADD__(v16, v15))
            {
              break;
            }

            ++v14;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }
      }

      else if (v6 == 45)
      {
        if (v4 < 1)
        {
          __break(1u);
LABEL_69:
          __break(1u);
LABEL_70:
          __break(1u);
          goto LABEL_71;
        }

        v3 = v4 - 1;
        if (v4 != 1)
        {
          v7 = 0;
          if (!result)
          {
            goto LABEL_53;
          }

          v8 = (result + 1);
          while (1)
          {
            v9 = *v8 - 48;
            if (v9 > 9)
            {
              break;
            }

            v10 = 10 * v7;
            if (v10 != v10)
            {
              break;
            }

            v7 = v10 - v9;
            if (__OFSUB__(v10, v9))
            {
              break;
            }

            ++v8;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }
      }

      else if (v4)
      {
        LODWORD(v7) = 0;
        while (1)
        {
          v20 = *result - 48;
          if (v20 > 9)
          {
            break;
          }

          v21 = 10 * v7;
          if (v21 != v21)
          {
            break;
          }

          v7 = v21 + v20;
          if (__OFADD__(v21, v20))
          {
            break;
          }

          ++result;
          if (!--v4)
          {
            goto LABEL_53;
          }
        }
      }

LABEL_61:
      v7 = 0;
      LOBYTE(v3) = 1;
LABEL_62:
      v27 = v3;
      if ((v3 & 1) == 0)
      {
        return v7;
      }

LABEL_66:
      __break(1u);
LABEL_67:
      ;
    }
  }

  v26[0] = result;
  v26[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v3)
      {
        LODWORD(v7) = 0;
        v22 = v26;
        while (1)
        {
          v23 = *v22 - 48;
          if (v23 > 9)
          {
            break;
          }

          v24 = 10 * v7;
          if (v24 != v24)
          {
            break;
          }

          v7 = v24 + v23;
          if (__OFADD__(v24, v23))
          {
            break;
          }

          ++v22;
          if (!--v3)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    if (v3)
    {
      if (--v3)
      {
        LODWORD(v7) = 0;
        v11 = v26 + 1;
        while (1)
        {
          v12 = *v11 - 48;
          if (v12 > 9)
          {
            break;
          }

          v13 = 10 * v7;
          if (v13 != v13)
          {
            break;
          }

          v7 = v13 - v12;
          if (__OFSUB__(v13, v12))
          {
            break;
          }

          ++v11;
          if (!--v3)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_69;
  }

  if (v3)
  {
    if (--v3)
    {
      LODWORD(v7) = 0;
      v17 = v26 + 1;
      while (1)
      {
        v18 = *v17 - 48;
        if (v18 > 9)
        {
          break;
        }

        v19 = 10 * v7;
        if (v19 != v19)
        {
          break;
        }

        v7 = v19 + v18;
        if (__OFADD__(v19, v18))
        {
          break;
        }

        ++v17;
        if (!--v3)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_71:
  __break(1u);
  return result;
}

uint64_t closure #2 in SIMD<>.init(_:)@<X0>(uint64_t a5@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for Optional();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v12 - v8;

  dispatch thunk of LosslessStringConvertible.init(_:)();
  v10 = *(AssociatedTypeWitness - 8);
  result = (*(v10 + 48))(v9, 1, AssociatedTypeWitness);
  if (result != 1)
  {
    return (*(v10 + 32))(a5, v9, AssociatedTypeWitness);
  }

  __break(1u);
  return result;
}

uint64_t static SIMDStorage.scalarCount.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch thunk of SIMDStorage.init()();
  v6 = dispatch thunk of SIMDStorage.scalarCount.getter();
  (*(v3 + 8))(v5, a1);
  return v6;
}

unint64_t _ss17FixedWidthIntegerPsEyxSgSScfCs5Int32V_Tt1g5(unint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    v25 = 0;
    LOBYTE(v24) = 1;
LABEL_65:
    LOBYTE(v27[0]) = v24;
    return v25 | ((v24 & 1) << 32);
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v6 = specialized _parseInteger<A, B>(ascii:radix:)(result, a2, 10);

    v24 = (v6 >> 32) & 1;
LABEL_63:
    v25 = v6;
    if (v24)
    {
      v25 = 0;
    }

    goto LABEL_65;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v3 = v26;
    }

    v5 = *result;
    if (v5 == 43)
    {
      if (v3 >= 1)
      {
        if (--v3)
        {
          LODWORD(v6) = 0;
          if (result)
          {
            v13 = (result + 1);
            while (1)
            {
              v14 = *v13 - 48;
              if (v14 > 9)
              {
                goto LABEL_61;
              }

              v15 = 10 * v6;
              if (v15 != v15)
              {
                goto LABEL_61;
              }

              LODWORD(v6) = v15 + v14;
              if (__OFADD__(v15, v14))
              {
                goto LABEL_61;
              }

              ++v13;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

        goto LABEL_61;
      }

      goto LABEL_71;
    }

    if (v5 != 45)
    {
      if (v3)
      {
        LODWORD(v6) = 0;
        if (result)
        {
          while (1)
          {
            v19 = *result - 48;
            if (v19 > 9)
            {
              goto LABEL_61;
            }

            v20 = 10 * v6;
            if (v20 != v20)
            {
              goto LABEL_61;
            }

            LODWORD(v6) = v20 + v19;
            if (__OFADD__(v20, v19))
            {
              goto LABEL_61;
            }

            ++result;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_60;
      }

LABEL_61:
      LODWORD(v6) = 0;
      LOBYTE(v3) = 1;
      goto LABEL_62;
    }

    if (v3 >= 1)
    {
      if (--v3)
      {
        LODWORD(v6) = 0;
        if (result)
        {
          v7 = (result + 1);
          while (1)
          {
            v8 = *v7 - 48;
            if (v8 > 9)
            {
              goto LABEL_61;
            }

            v9 = 10 * v6;
            if (v9 != v9)
            {
              goto LABEL_61;
            }

            LODWORD(v6) = v9 - v8;
            if (__OFSUB__(v9, v8))
            {
              goto LABEL_61;
            }

            ++v7;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_60:
        LOBYTE(v3) = 0;
LABEL_62:
        v28 = v3;
        LOBYTE(v24) = v3;

        goto LABEL_63;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v27[0] = result;
  v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v2)
      {
        LODWORD(v6) = 0;
        v21 = v27;
        while (1)
        {
          v22 = *v21 - 48;
          if (v22 > 9)
          {
            break;
          }

          v23 = 10 * v6;
          if (v23 != v23)
          {
            break;
          }

          LODWORD(v6) = v23 + v22;
          if (__OFADD__(v23, v22))
          {
            break;
          }

          ++v21;
          if (!--v2)
          {
            goto LABEL_60;
          }
        }
      }

      goto LABEL_61;
    }

    if (v2)
    {
      v3 = v2 - 1;
      if (v2 != 1)
      {
        LODWORD(v6) = 0;
        v10 = v27 + 1;
        while (1)
        {
          v11 = *v10 - 48;
          if (v11 > 9)
          {
            break;
          }

          v12 = 10 * v6;
          if (v12 != v12)
          {
            break;
          }

          LODWORD(v6) = v12 - v11;
          if (__OFSUB__(v12, v11))
          {
            break;
          }

          ++v10;
          if (!--v3)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_70;
  }

  if (v2)
  {
    v3 = v2 - 1;
    if (v2 != 1)
    {
      LODWORD(v6) = 0;
      v16 = v27 + 1;
      while (1)
      {
        v17 = *v16 - 48;
        if (v17 > 9)
        {
          break;
        }

        v18 = 10 * v6;
        if (v18 != v18)
        {
          break;
        }

        LODWORD(v6) = v18 + v17;
        if (__OFADD__(v18, v17))
        {
          break;
        }

        ++v16;
        if (!--v3)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_72:
  __break(1u);
  return result;
}

void *createType(_:)()
{
  v32 = type metadata accessor for CharacterSet();
  v0 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v2 = v28 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = XMLNode.subscript.getter(1701869940, 0xE400000000000000);
  if (!v4)
  {
    return 0;
  }

  v5 = v3;
  v6 = v4;
  v7 = MEMORY[0x277D84F90];
  if (v3 == 0x676E69727473 && v4 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v8 = XMLNode.subscript.getter(1836412517, 0xE400000000000000);
    if (v9)
    {
      v10 = v8;
      v11 = v9;
      v12 = XMLNode.subscript.getter(1701667182, 0xE400000000000000);
      if (v13)
      {
        v14 = v13;
        v30 = v12;

        v35 = v10;
        v36 = v11;
        v33 = 44;
        v34 = 0xE100000000000000;
        v31 = lazy protocol witness table accessor for type String and conformance String();
        v15 = StringProtocol.components<A>(separatedBy:)();

        v16 = *(v15 + 16);
        if (v16)
        {
          v29 = v14;
          v33 = v7;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16, 0);
          v17 = v33;
          v18 = (v0 + 8);
          v28[1] = v15;
          v19 = (v15 + 40);
          do
          {
            v20 = *v19;
            v35 = *(v19 - 1);
            v36 = v20;

            static CharacterSet.whitespacesAndNewlines.getter();
            v21 = StringProtocol.trimmingCharacters(in:)();
            v23 = v22;
            (*v18)(v2, v32);

            v33 = v17;
            v25 = *(v17 + 16);
            v24 = *(v17 + 24);
            if (v25 >= v24 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1);
              v17 = v33;
            }

            *(v17 + 16) = v25 + 1;
            v26 = v17 + 16 * v25;
            *(v26 + 32) = v21;
            *(v26 + 40) = v23;
            v19 += 2;
            --v16;
          }

          while (v16);

          v7 = MEMORY[0x277D84F90];
          v14 = v29;
        }

        else
        {

          v17 = MEMORY[0x277D84F90];
        }

        type metadata accessor for MaterialXDataType();
        result = swift_allocObject();
        v5 = v30;
        v6 = v14;
        goto LABEL_18;
      }
    }
  }

  type metadata accessor for MaterialXDataType();
  result = swift_allocObject();
  v17 = 0;
LABEL_18:
  result[4] = v5;
  result[5] = v6;
  result[2] = v7;
  result[3] = v17;
  return result;
}

uint64_t XMLNode.subscript.getter(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  v5 = swift_conformsToProtocol2();
  result = 0;
  if (v5 && v2)
  {
    ObjectType = swift_getObjectType();
    result = (*(v5 + 16))(a1, a2, ObjectType, v5);
    if (result)
    {
      v9 = v8;
      v10 = swift_getObjectType();
      v11 = (*(v9 + 32))(v10, v9);
      swift_unknownObjectRelease();
      return v11;
    }
  }

  return result;
}

void *MaterialXDataType.__allocating_init(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  result[4] = a1;
  result[5] = a2;
  result[2] = MEMORY[0x277D84F90];
  result[3] = a3;
  return result;
}

void *MaterialXDataType.__allocating_init(_:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  result[4] = a1;
  result[5] = a2;
  result[2] = MEMORY[0x277D84F90];
  result[3] = 0;
  return result;
}

uint64_t XMLNode.elements(forXPath:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = (*(a4 + 48))(a1, a2, a3);
  if (v4)
  {
    return v5;
  }

  v7 = result;
  v8 = 0;
  v9 = *(result + 16);
  v5 = MEMORY[0x277D84F90];
LABEL_3:
  v10 = 16 * v8 + 32;
  while (1)
  {
    if (v9 == v8)
    {

      return v5;
    }

    if (v8 >= *(v7 + 16))
    {
      break;
    }

    ++v8;
    v11 = v10 + 16;
    v12 = *(v7 + v10);
    swift_getObjectType();
    result = swift_conformsToProtocol2();
    v10 = v11;
    if (result)
    {
      v10 = v11;
      if (v12)
      {
        v13 = result;
        swift_unknownObjectRetain();
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5[2] + 1, 1, v5);
          v5 = result;
        }

        v15 = v5[2];
        v14 = v5[3];
        if (v15 >= v14 >> 1)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v5);
          v5 = result;
        }

        v5[2] = v15 + 1;
        v16 = &v5[2 * v15];
        v16[4] = v12;
        v16[5] = v13;
        goto LABEL_3;
      }
    }
  }

  __break(1u);
  return result;
}

Swift::Bool_optional __swiftcall XMLElement.BOOL(named:)(Swift::String named)
{
  v1 = XMLNode.subscript.getter(named._countAndFlagsBits, named._object);
  if (!v2)
  {
    return 2;
  }

  v3 = v1;
  v4 = v2;
  if (v1 == 1702195828 && v2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (v3 == 0x65736C6166 && v4 == 0xE500000000000000)
  {

    return 0;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 0;
    }

    else
    {
      return 2;
    }
  }
}

void createNodeDef(for:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *&v121 = type metadata accessor for CharacterSet();
  v6 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  v120 = &v103 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = swift_getObjectType();
  v9 = *(a2 + 8);
  v10 = XMLNode.subscript.getter(1701667182, 0xE400000000000000);
  if (!v11)
  {
    goto LABEL_11;
  }

  v12 = v11;
  v117 = v10;
  v13 = XMLNode.subscript.getter(1701080942, 0xE400000000000000);
  if (!v14)
  {

LABEL_11:
    _s11ShaderGraph7NodeDefVSgWOi0_(&v136);
LABEL_70:
    v99 = v143;
    *(a3 + 96) = v142;
    *(a3 + 112) = v99;
    *(a3 + 128) = v144;
    *(a3 + 144) = v145;
    v100 = v139;
    *(a3 + 32) = v138;
    *(a3 + 48) = v100;
    v101 = v141;
    *(a3 + 64) = v140;
    *(a3 + 80) = v101;
    v102 = v137;
    *a3 = v136;
    *(a3 + 16) = v102;
    return;
  }

  v113 = v14;
  v114 = v13;
  v15 = XMLNode.subscript.getter(0x756F726765646F6ELL, 0xE900000000000070);
  v111 = v16;
  v112 = v15;
  v17 = XMLNode.subscript.getter(0x746567726174, 0xE600000000000000);
  v118 = a1;
  v115 = v12;
  v116 = a3;
  if (v18)
  {
    *&v136 = v17;
    *(&v136 + 1) = v18;
    *&v122 = 44;
    *(&v122 + 1) = 0xE100000000000000;
    v119 = lazy protocol witness table accessor for type String and conformance String();
    v19 = StringProtocol.components<A>(separatedBy:)();

    v20 = *(v19 + 16);
    if (v20)
    {
      v109 = v9;
      v110 = ObjectType;
      *&v122 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v20, 0);
      v21 = v122;
      v22 = (v6 + 8);
      v108 = v19;
      v23 = (v19 + 40);
      do
      {
        v24 = *v23;
        *&v136 = *(v23 - 1);
        *(&v136 + 1) = v24;

        v25 = v120;
        static CharacterSet.whitespacesAndNewlines.getter();
        v26 = StringProtocol.trimmingCharacters(in:)();
        v28 = v27;
        (*v22)(v25, v121);

        *&v122 = v21;
        v30 = *(v21 + 2);
        v29 = *(v21 + 3);
        if (v30 >= v29 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1);
          v21 = v122;
        }

        *(v21 + 2) = v30 + 1;
        v31 = &v21[16 * v30];
        *(v31 + 4) = v26;
        *(v31 + 5) = v28;
        v23 += 2;
        --v20;
      }

      while (v20);
      v120 = v21;

      v32 = 0;
      v9 = v109;
      ObjectType = v110;
    }

    else
    {

      v32 = 0;
      v120 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v120 = 0;
    v32 = 0;
  }

  v33 = XMLNode.elements(forXPath:)(0x7475706E692F2ELL, 0xE700000000000000, ObjectType, v9);
  v34 = v33;
  v35 = *(v33 + 16);
  if (v35)
  {
    v36 = 0;
    v37 = v33 + 40;
    *&v121 = MEMORY[0x277D84F90];
    v109 = v9;
    v110 = ObjectType;
    v119 = v35;
    v108 = v33 + 40;
    while (1)
    {
      v38 = &v35[-v36];
      v39 = v37 + 16 * v36;
      while (1)
      {
        if (v36 >= *(v34 + 16))
        {
          __break(1u);
          goto LABEL_72;
        }

        swift_unknownObjectRetain();
        v40 = XMLNode.subscript.getter(1701667182, 0xE400000000000000);
        if (v41)
        {
          break;
        }

LABEL_17:
        swift_unknownObjectRelease();
        v39 += 16;
        ++v36;
        if (!--v38)
        {
          v9 = v109;
          ObjectType = v110;
          goto LABEL_31;
        }
      }

      v42 = v41;
      v43 = v40;
      v44 = createType(_:)();
      if (!v44)
      {
        break;
      }

      v107 = v44;
      v45._countAndFlagsBits = 0x6D726F66696E75;
      v45._object = 0xE700000000000000;
      LOBYTE(v46) = XMLElement.BOOL(named:)(v45);
      v105 = v46;
      v47 = XMLNode.subscript.getter(0x65756C6176, 0xE500000000000000);
      v106 = v48;
      v49 = XMLNode.subscript.getter(0x67746C7561666564, 0xEF706F72706D6F65);
      v103 = v50;
      v104 = v49;
      swift_unknownObjectRelease();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        *&v121 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v121 + 16) + 1, 1, v121);
      }

      v51 = v43;
      v53 = *(v121 + 16);
      v52 = *(v121 + 24);
      v54 = v107;
      if (v53 >= v52 >> 1)
      {
        *&v121 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v52 > 1), v53 + 1, 1, v121);
        v54 = v107;
        v51 = v43;
      }

      v55 = v105 & 1;
      v56 = v121;
      *(v121 + 16) = v53 + 1;
      ++v36;
      v57 = v56 + (v53 << 6);
      *(v57 + 32) = v51;
      *(v57 + 40) = v42;
      *(v57 + 48) = v54;
      *(v57 + 56) = v47;
      v58 = v104;
      *(v57 + 64) = v106;
      *(v57 + 72) = v58;
      *(v57 + 80) = v103;
      *(v57 + 88) = v55;
      v59 = v38 == 1;
      v9 = v109;
      ObjectType = v110;
      v35 = v119;
      v37 = v108;
      if (v59)
      {
        goto LABEL_31;
      }
    }

    goto LABEL_17;
  }

  *&v121 = MEMORY[0x277D84F90];
LABEL_31:

  v60 = XMLNode.elements(forXPath:)(0x74757074756F2F2ELL, 0xE800000000000000, ObjectType, v9);
  v61 = v60;
  v62 = *(v60 + 16);
  if (!v62)
  {
    v65 = MEMORY[0x277D84F90];
LABEL_48:

    a3 = v116;
    v83 = XMLNode.subscript.getter(0xD000000000000012, 0x8000000265F304B0);
    if (v84)
    {
      v85 = specialized static NodeDef.Availability.MaterialXAttributeParser.parse(_:)(v83, v84);
      if (!v32)
      {
        v93 = v85;

        if (v120)
        {
          v94 = v120;
        }

        else
        {
          v94 = MEMORY[0x277D84F90];
        }

        if (v121)
        {
          v95 = v121;
        }

        else
        {
          v95 = MEMORY[0x277D84F90];
        }

        if (!v65)
        {
          v65 = MEMORY[0x277D84F90];
        }

        v96 = [objc_allocWithZone(MEMORY[0x277CCAC38]) init];
        [v96 operatingSystemVersion];
        v97 = a3;
        v98 = v137;
        v121 = v136;

        v132 = v121;
        v133 = 0;
        v134 = v98;
        a3 = v97;
        v135 = 0;
        v91 = specialized static NodeDef.available(for:in:)(0, &v132, v93);
        goto LABEL_69;
      }
    }

    v86 = XMLNode.subscript.getter(0xD000000000000011, 0x8000000265F304D0);
    v88 = v87;
    v89 = XMLNode.subscript.getter(0x6C62616C69617661, 0xE900000000000065);
    v91 = specialized MaterialXAvailability.init(_:message:)(v89, v90, v86, v88);
    v93 = 0;
    if (v120)
    {
      v94 = v120;
    }

    else
    {
      v94 = MEMORY[0x277D84F90];
    }

    if (v121)
    {
      v95 = v121;
    }

    else
    {
      v95 = MEMORY[0x277D84F90];
    }

    if (!v65)
    {
      v65 = MEMORY[0x277D84F90];
    }

LABEL_69:
    *&v122 = v117;
    *(&v122 + 1) = v115;
    *&v123 = v114;
    *(&v123 + 1) = v113;
    v124 = 0uLL;
    *&v125 = v112;
    *(&v125 + 1) = v111;
    v126 = 0uLL;
    LOBYTE(v127) = 2;
    *(&v127 + 1) = v94;
    v128 = 0uLL;
    *&v129 = v91;
    *(&v129 + 1) = v92;
    *&v130 = v95;
    *(&v130 + 1) = v65;
    v131 = v93;
    destructiveProjectEnumData for NodePersonality.ShaderType();
    v142 = v128;
    v143 = v129;
    v144 = v130;
    v145 = v131;
    v138 = v124;
    v139 = v125;
    v140 = v126;
    v141 = v127;
    v136 = v122;
    v137 = v123;
    goto LABEL_70;
  }

  v63 = 0;
  v64 = v60 + 40;
  v65 = MEMORY[0x277D84F90];
  v109 = *(v60 + 16);
  v110 = 0;
  v108 = v60 + 40;
LABEL_33:
  v119 = v65;
  v66 = v62 - v63;
  v67 = v64 + 16 * v63;
  while (v63 < *(v61 + 16))
  {
    swift_unknownObjectRetain();
    v68 = XMLNode.subscript.getter(1701667182, 0xE400000000000000);
    if (v69)
    {
      v70 = v69;
      v71 = v61;
      v72 = v68;
      v73 = createType(_:)();
      if (v73)
      {
        v74 = v73;
        v106 = XMLNode.subscript.getter(0x65756C6176, 0xE500000000000000);
        v107 = v75;
        swift_unknownObjectRelease();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v119 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v119 + 2) + 1, 1, v119);
        }

        v76 = v110;
        v78 = *(v119 + 2);
        v77 = *(v119 + 3);
        if (v78 >= v77 >> 1)
        {
          v119 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v77 > 1), v78 + 1, 1, v119);
        }

        ++v63;
        v79 = v119;
        *(v119 + 2) = v78 + 1;
        v80 = &v79[64 * v78];
        *(v80 + 4) = v72;
        *(v80 + 5) = v70;
        v82 = v106;
        v81 = v107;
        *(v80 + 6) = v74;
        *(v80 + 7) = v82;
        *(v80 + 9) = 0;
        *(v80 + 10) = 0;
        *(v80 + 8) = v81;
        v80[88] = 0;
        v59 = v66 == 1;
        v65 = v79;
        v61 = v71;
        v32 = v76;
        v64 = v108;
        v62 = v109;
        if (v59)
        {
          goto LABEL_48;
        }

        goto LABEL_33;
      }
    }

    swift_unknownObjectRelease();
    v67 += 16;
    ++v63;
    if (!--v66)
    {
      v65 = v119;
      v32 = v110;
      goto LABEL_48;
    }
  }

LABEL_72:
  __break(1u);
}

unint64_t createGeomPropDef(for:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = XMLNode.subscript.getter(1701667182, 0xE400000000000000);
  if (!v7)
  {
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    *v17 = 16;
    v18 = xmmword_265F20CE0;
LABEL_7:
    *(v17 + 8) = v18;
    return swift_willThrow();
  }

  v8 = v6;
  v9 = v7;
  v10 = XMLNode.subscript.getter(0x706F72706D6F6567, 0xE800000000000000);
  if (!v11)
  {

    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    *v17 = 16;
    v18 = xmmword_265F23410;
    goto LABEL_7;
  }

  v12 = v10;
  v13 = v11;
  v14 = swift_unknownObjectRetain();
  v15 = specialized MaterialXDataType.__allocating_init(xmlElement:)(v14, a2);
  if (v3)
  {
  }

  v52 = v15;

  v56._countAndFlagsBits = v12;
  v56._object = v13;
  v19 = specialized GeomPropDef.BuiltinGeomProp.init(rawValue:)(v56);
  if (v19 != 6)
  {

    v13 = 0;
    v12 = v19;
  }

  v53 = v19;
  v20 = XMLNode.subscript.getter(0x6563617073, 0xE500000000000000);
  if (v21)
  {
    v22 = v21;
    v23._countAndFlagsBits = v20;
    v23._object = v22;
    v24 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of GeomPropDef.Space.init(rawValue:), v23);

    if (v24 >= 3)
    {
      LOBYTE(v24) = 3;
    }
  }

  else
  {
    LOBYTE(v24) = 3;
  }

  result = XMLNode.subscript.getter(0x7865646E69, 0xE500000000000000);
  if (!v25)
  {
    goto LABEL_82;
  }

  v26 = HIBYTE(v25) & 0xF;
  v27 = result & 0xFFFFFFFFFFFFLL;
  if ((v25 & 0x2000000000000000) != 0)
  {
    v28 = HIBYTE(v25) & 0xF;
  }

  else
  {
    v28 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v28)
  {

LABEL_82:
    v49 = 0;
    v48 = 1;
LABEL_83:
    LOBYTE(v54[0]) = v53 == 6;
    v55 = v48 & 1;
    *a3 = v8;
    *(a3 + 8) = v9;
    *(a3 + 16) = v52;
    *(a3 + 24) = v12;
    *(a3 + 32) = v13;
    *(a3 + 40) = v53 == 6;
    *(a3 + 41) = v24;
    *(a3 + 48) = v49;
    *(a3 + 56) = v48 & 1;
    return result;
  }

  if ((v25 & 0x1000000000000000) != 0)
  {
    v30 = specialized _parseInteger<A, B>(ascii:radix:)(result, v25, 10);
    v48 = v50;
LABEL_78:

    if (v48)
    {
      v49 = 0;
    }

    else
    {
      v49 = v30;
    }

    goto LABEL_83;
  }

  if ((v25 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (v25 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v27 = v51;
    }

    v29 = *result;
    if (v29 == 43)
    {
      if (v27 >= 1)
      {
        if (--v27)
        {
          v30 = 0;
          if (result)
          {
            v37 = (result + 1);
            while (1)
            {
              v38 = *v37 - 48;
              if (v38 > 9)
              {
                goto LABEL_76;
              }

              v39 = 10 * v30;
              if ((v30 * 10) >> 64 != (10 * v30) >> 63)
              {
                goto LABEL_76;
              }

              v30 = v39 + v38;
              if (__OFADD__(v39, v38))
              {
                goto LABEL_76;
              }

              ++v37;
              if (!--v27)
              {
                goto LABEL_77;
              }
            }
          }

          goto LABEL_75;
        }

        goto LABEL_76;
      }

      goto LABEL_88;
    }

    if (v29 != 45)
    {
      if (v27)
      {
        v30 = 0;
        if (result)
        {
          while (1)
          {
            v43 = *result - 48;
            if (v43 > 9)
            {
              goto LABEL_76;
            }

            v44 = 10 * v30;
            if ((v30 * 10) >> 64 != (10 * v30) >> 63)
            {
              goto LABEL_76;
            }

            v30 = v44 + v43;
            if (__OFADD__(v44, v43))
            {
              goto LABEL_76;
            }

            ++result;
            if (!--v27)
            {
              goto LABEL_77;
            }
          }
        }

        goto LABEL_75;
      }

LABEL_76:
      v30 = 0;
      LOBYTE(v27) = 1;
      goto LABEL_77;
    }

    if (v27 >= 1)
    {
      if (--v27)
      {
        v30 = 0;
        if (result)
        {
          v31 = (result + 1);
          while (1)
          {
            v32 = *v31 - 48;
            if (v32 > 9)
            {
              goto LABEL_76;
            }

            v33 = 10 * v30;
            if ((v30 * 10) >> 64 != (10 * v30) >> 63)
            {
              goto LABEL_76;
            }

            v30 = v33 - v32;
            if (__OFSUB__(v33, v32))
            {
              goto LABEL_76;
            }

            ++v31;
            if (!--v27)
            {
              goto LABEL_77;
            }
          }
        }

LABEL_75:
        LOBYTE(v27) = 0;
LABEL_77:
        v55 = v27;
        v48 = v27;
        goto LABEL_78;
      }

      goto LABEL_76;
    }

    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  v54[0] = result;
  v54[1] = v25 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v26)
      {
        v30 = 0;
        v45 = v54;
        while (1)
        {
          v46 = *v45 - 48;
          if (v46 > 9)
          {
            break;
          }

          v47 = 10 * v30;
          if ((v30 * 10) >> 64 != (10 * v30) >> 63)
          {
            break;
          }

          v30 = v47 + v46;
          if (__OFADD__(v47, v46))
          {
            break;
          }

          ++v45;
          if (!--v26)
          {
            goto LABEL_75;
          }
        }
      }

      goto LABEL_76;
    }

    if (v26)
    {
      v27 = v26 - 1;
      if (v26 != 1)
      {
        v30 = 0;
        v34 = v54 + 1;
        while (1)
        {
          v35 = *v34 - 48;
          if (v35 > 9)
          {
            break;
          }

          v36 = 10 * v30;
          if ((v30 * 10) >> 64 != (10 * v30) >> 63)
          {
            break;
          }

          v30 = v36 - v35;
          if (__OFSUB__(v36, v35))
          {
            break;
          }

          ++v34;
          if (!--v27)
          {
            goto LABEL_77;
          }
        }
      }

      goto LABEL_76;
    }

    goto LABEL_87;
  }

  if (v26)
  {
    v27 = v26 - 1;
    if (v26 != 1)
    {
      v30 = 0;
      v40 = v54 + 1;
      while (1)
      {
        v41 = *v40 - 48;
        if (v41 > 9)
        {
          break;
        }

        v42 = 10 * v30;
        if ((v30 * 10) >> 64 != (10 * v30) >> 63)
        {
          break;
        }

        v30 = v42 + v41;
        if (__OFADD__(v42, v41))
        {
          break;
        }

        ++v40;
        if (!--v27)
        {
          goto LABEL_77;
        }
      }
    }

    goto LABEL_76;
  }

LABEL_89:
  __break(1u);
  return result;
}

uint64_t collectGeomPropDefs(_:into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v7 = *(a2 + 8);
  result = XMLNode.elements(forXPath:)(0x72706D6F65672F2ELL, 0xED0000666564706FLL, ObjectType, v7);
  if (!v3)
  {
    specialized Sequence.forEach(_:)(result, a3);

    result = (*(v7 + 24))(ObjectType, v7);
    if (result)
    {
      v9 = result;
      v10 = 0;
      v11 = *(result + 16);
      v12 = MEMORY[0x277D84F90];
LABEL_4:
      v13 = 16 * v10 + 32;
      while (1)
      {
        if (v11 == v10)
        {

          specialized Sequence.forEach(_:)(v12, a3);
        }

        if (v10 >= *(v9 + 16))
        {
          break;
        }

        ++v10;
        v14 = v13 + 16;
        v15 = *(v9 + v13);
        swift_getObjectType();
        result = swift_conformsToProtocol2();
        v13 = v14;
        if (result)
        {
          v13 = v14;
          if (v15)
          {
            v16 = result;
            swift_unknownObjectRetain();
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12[2] + 1, 1, v12);
              v12 = result;
            }

            v17 = v12[2];
            v18 = v12[3];
            v19 = v17 + 1;
            if (v17 >= v18 >> 1)
            {
              v23 = v17 + 1;
              v21 = v12;
              v22 = v12[2];
              result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v17 + 1, 1, v21);
              v17 = v22;
              v19 = v23;
              v12 = result;
            }

            v12[2] = v19;
            v20 = &v12[2 * v17];
            v20[4] = v15;
            v20[5] = v16;
            goto LABEL_4;
          }
        }
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t collectNodeDefs(_:into:)(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v7 = *(a2 + 8);
  result = XMLNode.elements(forXPath:)(0x656465646F6E2F2ELL, 0xE900000000000066, ObjectType, v7);
  if (!v3)
  {
    specialized Sequence.forEach(_:)(result, a3);

    result = (*(v7 + 24))(ObjectType, v7);
    if (result)
    {
      v9 = result;
      v10 = 0;
      v11 = *(result + 16);
      v12 = MEMORY[0x277D84F90];
LABEL_4:
      v13 = 16 * v10 + 32;
      while (1)
      {
        if (v11 == v10)
        {

          specialized Sequence.forEach(_:)(v12, a3);
        }

        if (v10 >= *(v9 + 16))
        {
          break;
        }

        ++v10;
        v14 = v13 + 16;
        v15 = *(v9 + v13);
        swift_getObjectType();
        result = swift_conformsToProtocol2();
        v13 = v14;
        if (result)
        {
          v13 = v14;
          if (v15)
          {
            v16 = result;
            swift_unknownObjectRetain();
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12[2] + 1, 1, v12);
              v12 = result;
            }

            v17 = v12[2];
            v18 = v12[3];
            v19 = v17 + 1;
            if (v17 >= v18 >> 1)
            {
              v23 = v17 + 1;
              v21 = v12;
              v22 = v12[2];
              result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v17 + 1, 1, v21);
              v17 = v22;
              v19 = v23;
              v12 = result;
            }

            v12[2] = v19;
            v20 = &v12[2 * v17];
            v20[4] = v15;
            v20[5] = v16;
            goto LABEL_4;
          }
        }
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t collectImplementations(_:into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v7 = *(a2 + 8);
  result = XMLNode.elements(forXPath:)(0xD000000000000015, 0x8000000265F2E120, ObjectType, v7);
  if (!v3)
  {
    specialized Sequence.forEach(_:)(result, a3, closure #1 in collectImplementations(_:into:));

    v9 = XMLNode.elements(forXPath:)(0xD000000000000010, 0x8000000265F2E140, ObjectType, v7);
    specialized Sequence.forEach(_:)(v9, a3, closure #2 in collectImplementations(_:into:));
  }

  return result;
}

uint64_t closure #1 in collectImplementations(_:into:)(uint64_t *a1, void *a2)
{
  v3 = v2;
  v87 = a2;
  v82 = type metadata accessor for NodeDef.Implementation(0);
  v5 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v7 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v83 = (&v75 - v9);
  v95 = type metadata accessor for CharacterSet();
  isUniquelyReferenced_nonNull_native = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v90 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v85 = a1[1];
  result = XMLNode.subscript.getter(0x66656465646F6ELL, 0xE700000000000000);
  if (!v14)
  {
    return result;
  }

  v81 = result;
  v84 = v14;
  v15 = XMLNode.subscript.getter(0x746567726174, 0xE600000000000000);
  v86 = MEMORY[0x277D84F90];
  v78 = v5;
  v80 = v7;
  if (v16)
  {
    v79 = v2;
    v92[0] = v15;
    v92[1] = v16;
    v91[0] = 44;
    v91[1] = 0xE100000000000000;
    *&v89 = lazy protocol witness table accessor for type String and conformance String();
    v17 = StringProtocol.components<A>(separatedBy:)();

    v18 = *(v17 + 16);
    v88 = v12;
    if (v18)
    {
      v91[0] = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18, 0);
      v19 = v91[0];
      v20 = (isUniquelyReferenced_nonNull_native + 8);
      v77 = v17;
      v21 = (v17 + 40);
      do
      {
        v22 = *v21;
        v92[0] = *(v21 - 1);
        v92[1] = v22;

        v23 = v90;
        static CharacterSet.whitespacesAndNewlines.getter();
        v24 = StringProtocol.trimmingCharacters(in:)();
        isUniquelyReferenced_nonNull_native = v25;
        (*v20)(v23, v95);

        v91[0] = v19;
        v27 = v19[2];
        v26 = v19[3];
        if (v27 >= v26 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1);
          v19 = v91[0];
        }

        v19[2] = v27 + 1;
        v28 = &v19[2 * v27];
        v28[4] = v24;
        v28[5] = isUniquelyReferenced_nonNull_native;
        v21 += 2;
        --v18;
      }

      while (v18);
    }

    else
    {

      v19 = MEMORY[0x277D84F90];
    }

    v92[0] = MEMORY[0x277D84F90];
    v30 = v19[2];
    if (v30)
    {
      v31 = 0;
      v32 = v19 + 5;
      v86 = MEMORY[0x277D84F90];
      v90 = v30;
      v76 = v30 - 1;
      *&v29 = 136315138;
      v89 = v29;
      v95 = v19;
      v77 = v19 + 5;
      do
      {
        v33 = &v32[2 * v31];
        v34 = v31;
        while (1)
        {
          if (v34 >= v19[2])
          {
            __break(1u);
            goto LABEL_43;
          }

          isUniquelyReferenced_nonNull_native = *(v33 - 1);
          v35 = *v33;
          v31 = v34 + 1;

          v36 = specialized static MaterialXTarget.target(named:)(isUniquelyReferenced_nonNull_native, v35);
          if (v36)
          {
            break;
          }

          if (one-time initialization token for logger != -1)
          {
            swift_once();
          }

          v37 = type metadata accessor for Logger();
          __swift_project_value_buffer(v37, logger);

          v38 = Logger.logObject.getter();
          v39 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v38, v39))
          {
            v40 = swift_slowAlloc();
            v41 = swift_slowAlloc();
            v91[0] = v41;
            *v40 = v89;
            *(v40 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(isUniquelyReferenced_nonNull_native, v35, v91);
            _os_log_impl(&dword_265D7D000, v38, v39, "Unknown MaterialX target name '%s'", v40, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v41);
            MEMORY[0x266773120](v41, -1, -1);
            MEMORY[0x266773120](v40, -1, -1);
          }

          v33 += 2;
          v34 = v31;
          v19 = v95;
          if (v90 == v31)
          {
            goto LABEL_23;
          }
        }

        isUniquelyReferenced_nonNull_native = v36;

        MEMORY[0x266771770](v42);
        if (*((v92[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v92[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v86 = v92[0];
        v32 = v77;
      }

      while (v76 != v34);
    }

LABEL_23:

    v3 = v79;
  }

  v43 = *v87;
  v44 = v87[1];
  v45 = v87[2];

  createGraph(_:nodeDefStore:)(v85, v43, v44, v45, v93);
  if (v3)
  {
  }

  v46 = XMLNode.subscript.getter(1701667182, 0xE400000000000000);
  if (!v47)
  {

    _s11ShaderGraph14MaterialXErrorOWOi4_(v92);
    lazy protocol witness table accessor for type MaterialXError and conformance MaterialXError();
    swift_allocError();
    memcpy(v68, v92, 0x140uLL);
    swift_willThrow();
    return outlined destroy of UserGraph(v93);
  }

  v48 = v46;
  v49 = v47;
  v51 = v82;
  v50 = v83;
  v52 = (v83 + *(v82 + 20));
  v53 = v94[0];
  v52[8] = v93[8];
  v52[9] = v53;
  *(v52 + 153) = *(v94 + 9);
  v54 = v93[5];
  v52[4] = v93[4];
  v52[5] = v54;
  v55 = v93[7];
  v52[6] = v93[6];
  v52[7] = v55;
  v56 = v93[1];
  *v52 = v93[0];
  v52[1] = v56;
  v57 = v93[3];
  v52[2] = v93[2];
  v52[3] = v57;
  type metadata accessor for NodeDef.Implementation.Kind(0);
  swift_storeEnumTagMultiPayload();
  outlined init with copy of UserGraph(v93, v92);
  v58 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC11ShaderGraph15MaterialXTargetC_SayAFGTt0g5Tf4g_n(v86);

  *v50 = v48;
  v50[1] = v49;
  *(v50 + *(v51 + 24)) = v58;
  outlined init with copy of NodeDef.Implementation(v50, v80);
  v59 = v87;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v92[0] = v59[2];
  v19 = v92[0];
  v59[2] = 0x8000000000000000;
  v34 = specialized __RawDictionaryStorage.find<A>(_:)(v81, v84);
  v61 = v19[2];
  v62 = (v60 & 1) == 0;
  v63 = v61 + v62;
  if (__OFADD__(v61, v62))
  {
LABEL_43:
    __break(1u);
  }

  else
  {
    v64 = v60;
    if (v19[3] >= v63)
    {
      v67 = v87;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized _NativeDictionary.copy()();
        v67 = v87;
        v19 = v92[0];
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v63, isUniquelyReferenced_nonNull_native);
      v19 = v92[0];
      v65 = specialized __RawDictionaryStorage.find<A>(_:)(v81, v84);
      if ((v64 & 1) != (v66 & 1))
      {
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }

      v34 = v65;
      v67 = v87;
    }

    v67[2] = v19;
    v69 = v67;

    v70 = v69[2];
    if (v64)
    {
    }

    else
    {
      specialized _NativeDictionary._insert(at:key:value:)(v34, v81, v84, MEMORY[0x277D84F90], v70);
    }

    isUniquelyReferenced_nonNull_native = v70[7];
    v19 = *(isUniquelyReferenced_nonNull_native + 8 * v34);
    v71 = swift_isUniquelyReferenced_nonNull_native();
    *(isUniquelyReferenced_nonNull_native + 8 * v34) = v19;
    if (v71)
    {
      goto LABEL_38;
    }
  }

  v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v19[2] + 1, 1, v19);
  *(isUniquelyReferenced_nonNull_native + 8 * v34) = v19;
LABEL_38:
  v73 = v19[2];
  v72 = v19[3];
  if (v73 >= v72 >> 1)
  {
    *(isUniquelyReferenced_nonNull_native + 8 * v34) = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v72 > 1), v73 + 1, 1, v19);
  }

  outlined destroy of UserGraph(v93);
  outlined destroy of NodeDef.Implementation(v83);
  v74 = *(isUniquelyReferenced_nonNull_native + 8 * v34);
  *(v74 + 16) = v73 + 1;
  return outlined init with take of NodeDef.Implementation(v80, v74 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v73);
}

uint64_t createGraph(_:nodeDefStore:)@<X0>(uint64_t a1@<X1>, void *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, _OWORD *a5@<X8>)
{
  v6 = v5;
  v127 = a3;
  ObjectType = swift_getObjectType();
  v97 = *(a1 + 8);
  v11 = XMLNode.subscript.getter(0x6C6562616C6975, 0xE700000000000000);
  if (!v12)
  {
    v11 = XMLNode.subscript.getter(1701667182, 0xE400000000000000);
    if (!v12)
    {
      lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
      swift_allocError();
      *v28 = 4;
      *(v28 + 8) = 0xD00000000000001BLL;
      *(v28 + 16) = 0x8000000265F30270;
      return swift_willThrow();
    }
  }

  v13 = v12;
  v92 = v11;
  v122 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_11ShaderGraph9InputSpecVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v96 = ObjectType;
  if (!(*(a1 + 16))(0x66656465646F6ELL, 0xE700000000000000, ObjectType, a1) || (v15 = v14, v16 = swift_getObjectType(), v17 = (*(v15 + 32))(v16, v15), v19 = v18, swift_unknownObjectRelease(), !v19))
  {
    v22 = v96;
    v23 = XMLNode.elements(forXPath:)(0x7475706E692F2ELL, 0xE700000000000000, v96, v97);
    if (!v5)
    {
      specialized Sequence.forEach(_:)(v23, &v122);
      v6 = 0;

      v25 = (*(v97 + 24))(v96);
      if (v25)
      {
        specialized Sequence.forEach(_:)(v25, &v122);
      }

      goto LABEL_13;
    }
  }

  if (!a2[2] || (specialized __RawDictionaryStorage.find<A>(_:)(v17, v19), (v20 & 1) == 0))
  {

    *&v112 = 0x20676E697373694DLL;
    *(&v112 + 1) = 0xE800000000000000;
    MEMORY[0x266771550](v17, v19);

    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    *v24 = 22;
    *(v24 + 8) = 0x20676E697373694DLL;
    *(v24 + 16) = 0xE800000000000000;
    swift_willThrow();
  }

  specialized Sequence.forEach(_:)(v21, &v122);

  v22 = v96;
LABEL_13:
  v26 = XMLNode.elements(forXPath:)(0x74757074756F2F2ELL, 0xE800000000000000, v22, v97);
  if (v6)
  {
  }

  v29 = *(v26 + 16);
  v93 = a2;
  v94 = v26;
  v88 = a5;
  v89 = v13;
  if (!v29)
  {
    if (one-time initialization token for logger == -1)
    {
      goto LABEL_33;
    }

    goto LABEL_69;
  }

  v30 = 0;
  v13 = v26 + 32;
  v90 = MEMORY[0x277D84F90];
  do
  {
    a2 = (v13 + 16 * v30);
    v31 = v30;
    while (1)
    {
      if (v31 >= *(v26 + 16))
      {
        __break(1u);
LABEL_66:
        __break(1u);
        goto LABEL_67;
      }

      swift_unknownObjectRetain();
      v32 = XMLNode.subscript.getter(1701667182, 0xE400000000000000);
      if (!v33)
      {
        goto LABEL_20;
      }

      v34 = v32;
      v35 = v33;
      v36 = XMLNode.subscript.getter(1701869940, 0xE400000000000000);
      if (v37)
      {
        break;
      }

LABEL_20:
      ++v31;
      swift_unknownObjectRelease();
      a2 += 2;
      v26 = v94;
      if (v29 == v31)
      {
        a2 = v93;
        goto LABEL_36;
      }
    }

    v85 = v36;
    v86 = v37;
    type metadata accessor for MaterialXDataType();
    v38 = swift_allocObject();
    v38[3] = 0;
    v38[4] = v85;
    v38[5] = v86;
    swift_unknownObjectRelease();
    v87 = v38;
    v38[2] = MEMORY[0x277D84F90];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v90 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v90 + 2) + 1, 1, v90);
    }

    v40 = *(v90 + 2);
    v39 = *(v90 + 3);
    if (v40 >= v39 >> 1)
    {
      v90 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1, v90);
    }

    v30 = v31 + 1;
    *(v90 + 2) = v40 + 1;
    v41 = &v90[24 * v40];
    *(v41 + 4) = v34;
    *(v41 + 5) = v35;
    *(v41 + 6) = v87;
    a2 = v93;
    v26 = v94;
  }

  while (v29 - 1 != v31);
  while (1)
  {
LABEL_36:
    v47 = v122;
    v48 = *(v122 + 16);
    v49 = MEMORY[0x277D84F90];
    if (v48)
    {
      v50 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC11ShaderGraph9InputSpecV_Tt1g5(v48, 0);
      v13 = specialized Sequence._copySequenceContents(initializing:)(v108, v50 + 4, v48, v47);
      v51 = *&v108[0];

      outlined consume of [String : GeomPropDef].Iterator._Variant(v51);
      if (v13 != v48)
      {
        goto LABEL_68;
      }

      v52 = v96;
      v53 = v97;
      v49 = MEMORY[0x277D84F90];
    }

    else
    {
      v50 = MEMORY[0x277D84F90];
      v52 = v96;
      v53 = v97;
    }

    specialized UserGraph.init(id:label:inputs:outputs:)(0, v92, v89, v50, v90, &v112);
    v111 = v49;
    v110 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_11ShaderGraph0cD4NodeV2IDVTt0g5Tf4g_n(v49);
    v54 = (*(v53 + 24))(v52, v53);
    if (v54)
    {
      v55 = v54;
      v56 = 0;
      v57 = *(v54 + 16);
      v58 = MEMORY[0x277D84F90];
LABEL_42:
      v59 = 16 * v56 + 32;
      while (v57 != v56)
      {
        if (v56 >= *(v55 + 16))
        {
          goto LABEL_66;
        }

        ++v56;
        v60 = v59 + 16;
        v13 = *(v55 + v59);
        swift_getObjectType();
        v61 = swift_conformsToProtocol2();
        v59 = v60;
        if (v61)
        {
          v59 = v60;
          if (v13)
          {
            v62 = v61;
            swift_unknownObjectRetain();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v58 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v58[2] + 1, 1, v58);
            }

            v64 = v58[2];
            v63 = v58[3];
            if (v64 >= v63 >> 1)
            {
              v58 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v63 > 1), v64 + 1, 1, v58);
            }

            v65 = v62;
            a2 = v93;
            v58[2] = v64 + 1;
            v66 = &v58[2 * v64];
            v66[4] = v13;
            v66[5] = v65;
            goto LABEL_42;
          }
        }
      }

      v67 = v58[2];

      if (v67)
      {
        v13 = 32;
        do
        {
          v98 = *(v58 + v13);
          swift_unknownObjectRetain();
          closure #6 in createGraph(_:nodeDefStore:)(&v98, a2, v127, a4, &v112, &v110, &v111);
          swift_unknownObjectRelease();
          v13 += 16;
          --v67;
        }

        while (v67);
      }

      v49 = v111;
    }

    v89 = v49[2];
    if (!v89)
    {
      break;
    }

    v68 = 0;
    v91 = v49;
    v92 = (v49 + 4);
    while (v68 < v49[2])
    {
      v96 = v68;
      v69 = v92 + (v68 << 6);
      v70 = *v69;
      v71 = *(v69 + 8);
      v72 = *(v69 + 24);
      v13 = *(v69 + 32);
      v74 = *(v69 + 56);
      *&v123 = *(v69 + 16);
      v73 = v123;
      *(&v123 + 1) = v72;
      v124 = v13;
      v125 = *(v69 + 40);
      v126 = v74;
      v75 = swift_getObjectType();
      swift_unknownObjectRetain();
      outlined copy of NodePersonality(v73);
      v76 = *(v71 + 8);

      v77 = XMLNode.elements(forXPath:)(0x7475706E692F2ELL, 0xE700000000000000, v75, v76);
      v78 = *(v77 + 16);
      swift_unknownObjectRetain();
      outlined copy of NodePersonality(v73);
      v97 = v72;

      if (v78)
      {
        v79 = 32;
        do
        {
          v108[0] = *(v77 + v79);
          swift_unknownObjectRetain();
          specialized closure #1 in closure #7 in createGraph(_:nodeDefStore:)(v108, &v123, &v112, &v110, v93, v127, v70, v71);
          swift_unknownObjectRelease();
          v79 += 16;
          --v78;
        }

        while (v78);
      }

      v68 = v96 + 1;

      swift_unknownObjectRelease();
      outlined consume of NodePersonality(v73);
      swift_unknownObjectRelease();
      a2 = v93;

      outlined consume of NodePersonality(v73);

      v49 = v91;
      if (v96 + 1 == v89)
      {
        goto LABEL_64;
      }
    }

LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    swift_once();
LABEL_33:
    v42 = type metadata accessor for Logger();
    __swift_project_value_buffer(v42, logger);

    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *&v112 = v46;
      *v45 = 136315138;
      *(v45 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v92, v13, &v112);
      _os_log_impl(&dword_265D7D000, v43, v44, "Graph implementation for %s has no outputs!", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v46);
      MEMORY[0x266773120](v46, -1, -1);
      MEMORY[0x266773120](v45, -1, -1);
    }

    v90 = MEMORY[0x277D84F90];
  }

LABEL_64:

  specialized Sequence.forEach(_:)(v94, &v110, &v112, a2);

  v106 = v120;
  v107[0] = v121[0];
  *(v107 + 9) = *(v121 + 9);
  v102 = v116;
  v103 = v117;
  v104 = v118;
  v105 = v119;
  v98 = v112;
  v99 = v113;
  v100 = v114;
  v101 = v115;
  outlined init with copy of UserGraph(&v98, v108);

  v108[8] = v120;
  v109[0] = v121[0];
  *(v109 + 9) = *(v121 + 9);
  v108[4] = v116;
  v108[5] = v117;
  v108[6] = v118;
  v108[7] = v119;
  v108[0] = v112;
  v108[1] = v113;
  v108[2] = v114;
  v108[3] = v115;
  outlined destroy of UserGraph(v108);

  v80 = v107[0];
  v88[8] = v106;
  v88[9] = v80;
  *(v88 + 153) = *(v107 + 9);
  v81 = v103;
  v88[4] = v102;
  v88[5] = v81;
  v82 = v105;
  v88[6] = v104;
  v88[7] = v82;
  v83 = v99;
  *v88 = v98;
  v88[1] = v83;
  v84 = v101;
  v88[2] = v100;
  v88[3] = v84;
  return result;
}

void closure #2 in collectImplementations(_:into:)(uint64_t a1, uint64_t a2)
{
  v142 = type metadata accessor for NodeDef.Implementation(0);
  v4 = *(v142 - 8);
  MEMORY[0x28223BE20](v142);
  v6 = &v126 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v134 = &v126 - v8;
  MEMORY[0x28223BE20](v9);
  v139 = &v126 - v10;
  MEMORY[0x28223BE20](v11);
  v138 = (&v126 - v12);
  MEMORY[0x28223BE20](v13);
  v15 = &v126 - v14;
  MEMORY[0x28223BE20](v16);
  v143 = (&v126 - v17);
  v18 = type metadata accessor for URL();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v148 = &v126 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = XMLNode.subscript.getter(0x66656465646F6ELL, 0xE700000000000000);
  if (!v22)
  {
    return;
  }

  v127 = v6;
  v132 = a2;
  v133 = v19;
  v129 = v15;
  v137 = v21;
  v140 = v2;
  v141 = v22;
  v131 = v4;
  v130 = XMLNode.subscript.getter(1701603686, 0xE400000000000000);
  v144 = v23;
  v128 = XMLNode.subscript.getter(0x6F63656372756F73, 0xEA00000000006564);
  v25 = v24;
  v26 = XMLNode.subscript.getter(0x746567726174, 0xE600000000000000);
  v28 = MEMORY[0x277D84F90];
  if (v27)
  {
    v135 = v18;
    v136 = v25;
    v147[0] = v26;
    v147[1] = v27;
    v145 = 44;
    v146 = 0xE100000000000000;
    lazy protocol witness table accessor for type String and conformance String();
    v29 = StringProtocol.components<A>(separatedBy:)();

    v30 = 0;
    v147[0] = v28;
    v31 = *(v29 + 16);
LABEL_4:
    v32 = (v29 + 40 + 16 * v30);
    while (1)
    {
      if (v31 == v30)
      {

        v38 = v28;
        v18 = v135;
        v25 = v136;
        goto LABEL_13;
      }

      if (v30 >= *(v29 + 16))
      {
        break;
      }

      ++v30;
      v33 = v32 + 2;
      v35 = *(v32 - 1);
      v34 = *v32;

      v36 = specialized static MaterialXTarget.target(named:)(v35, v34);

      v32 = v33;
      if (v36)
      {
        MEMORY[0x266771770](v37);
        if (*((v147[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v147[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v28 = v147[0];
        goto LABEL_4;
      }
    }

    __break(1u);
    goto LABEL_68;
  }

  v38 = 0;
LABEL_13:
  v39 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC11ShaderGraph15MaterialXTargetC_SayAFGTt0g5Tf4g_n(v28);

  v40 = XMLNode.subscript.getter(1701667182, 0xE400000000000000);
  v42 = v148;
  if (v41)
  {
    v43 = v41;
    if (v144)
    {
      v139 = v40;
      v134 = v38;
      URL.init(fileURLWithPath:)();
      v44 = XMLNode.subscript.getter(0x6E6F6974636E7566, 0xE800000000000000);
      if (!v45)
      {

        (*(v133 + 8))(v42, v18);
        return;
      }

      v46 = v44;
      v47 = v45;
      v136 = v25;
      v48 = v142;
      v49 = v143;
      v50 = (v143 + *(v142 + 20));
      v51 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSg12functionName_10Foundation3URLV4filetMd, &_sSSSg12functionName_10Foundation3URLV4filetMR) + 48);
      *v50 = v46;
      v50[1] = v47;
      v52 = *(v133 + 16);
      v135 = v18;
      v52(v50 + v51, v42, v18);
      type metadata accessor for NodeDef.Implementation.Kind(0);
      swift_storeEnumTagMultiPayload();
      *v49 = v139;
      v49[1] = v43;
      *(v49 + *(v48 + 6)) = v39;
      v53 = v129;
      outlined init with copy of NodeDef.Implementation(v49, v129);
      v54 = v132;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v147[0] = *(v54 + 16);
      v56 = v147[0];
      *(v54 + 16) = 0x8000000000000000;
      v57 = v137;
      v58 = v141;
      v60 = specialized __RawDictionaryStorage.find<A>(_:)(v137, v141);
      v61 = *(v56 + 16);
      v62 = (v59 & 1) == 0;
      v63 = v61 + v62;
      if (__OFADD__(v61, v62))
      {
        __break(1u);
LABEL_70:
        v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v48[2] + 1, 1, v48);
        *(v58 + 8 * v60) = v48;
LABEL_37:
        v96 = v48[2];
        v95 = v48[3];
        if (v96 >= v95 >> 1)
        {
          *(v58 + 8 * v60) = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v95 > 1), v96 + 1, 1, v48);
        }

        outlined destroy of NodeDef.Implementation(v143);
        (*(v133 + 8))(v148, v135);
        v97 = *(v58 + 8 * v60);
        *(v97 + 16) = v96 + 1;
LABEL_40:
        v98 = v97 + ((*(v131 + 80) + 32) & ~*(v131 + 80)) + *(v131 + 72) * v96;
        v99 = v53;
LABEL_55:
        outlined init with take of NodeDef.Implementation(v99, v98);
        return;
      }

      v64 = v59;
      if (*(v56 + 24) >= v63)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized _NativeDictionary.copy()();
          v56 = v147[0];
        }

LABEL_33:
        *(v54 + 16) = v56;

        v93 = *(v54 + 16);
        if (v64)
        {
        }

        else
        {
          specialized _NativeDictionary._insert(at:key:value:)(v60, v57, v58, MEMORY[0x277D84F90], *(v54 + 16));
        }

        v58 = *(v93 + 56);
        v48 = *(v58 + 8 * v60);
        v94 = swift_isUniquelyReferenced_nonNull_native();
        *(v58 + 8 * v60) = v48;
        if (v94)
        {
          goto LABEL_37;
        }

        goto LABEL_70;
      }

      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v63, isUniquelyReferenced_nonNull_native);
      v56 = v147[0];
      v65 = specialized __RawDictionaryStorage.find<A>(_:)(v57, v58);
      if ((v64 & 1) == (v66 & 1))
      {
        v60 = v65;
        goto LABEL_33;
      }

LABEL_75:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }

    v76 = v40;
    if (v25)
    {
      v134 = v38;
      v77 = v142;
      v78 = v138;
      v79 = (v138 + *(v142 + 20));
      *v79 = v128;
      v79[1] = v25;
      type metadata accessor for NodeDef.Implementation.Kind(0);
      swift_storeEnumTagMultiPayload();
      *v78 = v76;
      v78[1] = v43;
      *(v78 + *(v77 + 24)) = v39;
      outlined init with copy of NodeDef.Implementation(v78, v139);

      v80 = v132;
      v81 = swift_isUniquelyReferenced_nonNull_native();
      v147[0] = *(v80 + 16);
      v82 = v147[0];
      *(v80 + 16) = 0x8000000000000000;
      v83 = v137;
      v84 = v141;
      v86 = specialized __RawDictionaryStorage.find<A>(_:)(v137, v141);
      v87 = v82[2];
      v88 = (v85 & 1) == 0;
      v89 = v87 + v88;
      if (__OFADD__(v87, v88))
      {
        __break(1u);
      }

      else
      {
        v90 = v85;
        if (v82[3] >= v89)
        {
          if ((v81 & 1) == 0)
          {
            specialized _NativeDictionary.copy()();
            v82 = v147[0];
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v89, v81);
          v82 = v147[0];
          v91 = specialized __RawDictionaryStorage.find<A>(_:)(v83, v84);
          if ((v90 & 1) != (v92 & 1))
          {
            goto LABEL_75;
          }

          v86 = v91;
        }

        *(v80 + 16) = v82;

        v118 = *(v80 + 16);
        if (v90)
        {
        }

        else
        {
          specialized _NativeDictionary._insert(at:key:value:)(v86, v83, v84, MEMORY[0x277D84F90], *(v80 + 16));
        }

        v84 = *(v118 + 56);
        v82 = *(v84 + 8 * v86);
        v119 = swift_isUniquelyReferenced_nonNull_native();
        *(v84 + 8 * v86) = v82;
        if (v119)
        {
LABEL_52:
          v121 = v82[2];
          v120 = v82[3];
          if (v121 >= v120 >> 1)
          {
            *(v84 + 8 * v86) = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v120 > 1), v121 + 1, 1, v82);
          }

          outlined destroy of NodeDef.Implementation(v138);
          v122 = *(v84 + 8 * v86);
          *(v122 + 16) = v121 + 1;
          v98 = v122 + ((*(v131 + 80) + 32) & ~*(v131 + 80)) + *(v131 + 72) * v121;
          v99 = v139;
          goto LABEL_55;
        }
      }

      v82 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v82[2] + 1, 1, v82);
      *(v84 + 8 * v86) = v82;
      goto LABEL_52;
    }

    v100 = XMLNode.subscript.getter(0x6E6F6974636E7566, 0xE800000000000000);
    if (!v101)
    {

      return;
    }

    v102 = v142;
    v103 = v134;
    v104 = &v134[*(v142 + 20)];
    *v104 = v100;
    v104[1] = v101;
    type metadata accessor for NodeDef.Implementation.Kind(0);
    swift_storeEnumTagMultiPayload();
    *v103 = v76;
    v103[1] = v43;
    *(v103 + *(v102 + 24)) = v39;
    v53 = v127;
    outlined init with copy of NodeDef.Implementation(v103, v127);
    v105 = v132;
    v106 = swift_isUniquelyReferenced_nonNull_native();
    v147[0] = *(v105 + 16);
    v107 = v147[0];
    *(v105 + 16) = 0x8000000000000000;
    v108 = v137;
    v109 = v141;
    v111 = specialized __RawDictionaryStorage.find<A>(_:)(v137, v141);
    v112 = v107[2];
    v113 = (v110 & 1) == 0;
    v114 = v112 + v113;
    if (__OFADD__(v112, v113))
    {
      __break(1u);
    }

    else
    {
      v115 = v110;
      if (v107[3] >= v114)
      {
        if ((v106 & 1) == 0)
        {
          specialized _NativeDictionary.copy()();
          v107 = v147[0];
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v114, v106);
        v107 = v147[0];
        v116 = specialized __RawDictionaryStorage.find<A>(_:)(v108, v109);
        if ((v115 & 1) != (v117 & 1))
        {
          goto LABEL_75;
        }

        v111 = v116;
      }

      *(v105 + 16) = v107;

      v123 = *(v105 + 16);
      if (v115)
      {
      }

      else
      {
        specialized _NativeDictionary._insert(at:key:value:)(v111, v108, v109, MEMORY[0x277D84F90], *(v105 + 16));
      }

      v106 = *(v123 + 56);
      v107 = *(v106 + 8 * v111);
      v124 = swift_isUniquelyReferenced_nonNull_native();
      *(v106 + 8 * v111) = v107;
      if (v124)
      {
LABEL_64:
        v96 = v107[2];
        v125 = v107[3];
        if (v96 >= v125 >> 1)
        {
          *(v106 + 8 * v111) = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v125 > 1), v96 + 1, 1, v107);
        }

        outlined destroy of NodeDef.Implementation(v103);
        v97 = *(v106 + 8 * v111);
        *(v97 + 16) = v96 + 1;
        goto LABEL_40;
      }
    }

    v107 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v107[2] + 1, 1, v107);
    *(v106 + 8 * v111) = v107;
    goto LABEL_64;
  }

  if (one-time initialization token for logger != -1)
  {
LABEL_68:
    swift_once();
  }

  v67 = type metadata accessor for Logger();
  __swift_project_value_buffer(v67, logger);
  v68 = v141;

  v69 = Logger.logObject.getter();
  v70 = static os_log_type_t.error.getter();

  v71 = os_log_type_enabled(v69, v70);
  v72 = v137;
  if (v71)
  {
    v73 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v147[0] = v74;
    *v73 = 136315138;
    v75 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v72, v68, v147);

    *(v73 + 4) = v75;
    __swift_destroy_boxed_opaque_existential_1Tm(v74);
    MEMORY[0x266773120](v74, -1, -1);
    MEMORY[0x266773120](v73, -1, -1);
  }

  else
  {
  }
}

void closure #6 in createGraph(_:nodeDefStore:)(const char **a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void **a7)
{
  v13 = *a1;
  v12 = a1[1];
  swift_getObjectType();
  v14 = (*(*(v12 + 8) + 16))();
  if (!v15)
  {
    _StringGuts.grow(_:)(32);
    MEMORY[0x266771550](0xD00000000000001ELL, 0x8000000265F30460);
    v79[22] = v13;
    v79[23] = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11ShaderGraph10XMLElement_pMd, &_s11ShaderGraph10XMLElement_pMR);
    _print_unlocked<A, B>(_:_:)();
    lazy protocol witness table accessor for type UserGraphError and conformance UserGraphError();
    swift_allocError();
    *v20 = 22;
    *(v20 + 8) = 0;
    *(v20 + 16) = 0xE000000000000000;
    swift_willThrow();
    return;
  }

  v16 = v14;
  v17 = v15;
  v18 = v14 == 0x7061726765646F6ELL && v15 == 0xE900000000000068;
  if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    XMLNode.subscript.getter(0x66656465646F6ELL, 0xE700000000000000);
    if (v19)
    {
LABEL_8:

      return;
    }

    createGraph(_:nodeDefStore:)(v12, a2, a3, a4, v80);
    if (!v7)
    {
      v73 = v12;
      v75 = a7;
      v101 = v81;
      v21 = v82;
      v99 = v82;
      v100[0] = *(&v81 + 1);
      v97 = *(&v84 + 1);
      v98 = v84;
      v96 = *&v85[0];
      v22 = *(v82 + 16);
      v72 = v13;
      if (v22)
      {
        v23 = MEMORY[0x277D84F90];
        outlined init with copy of NodePersonality(&v101, v79);
        outlined init with copy of [Input](v100, v79, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
        outlined init with copy of [Input](&v99, v79, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
        outlined init with copy of NodePersonality(&v98, v79);
        outlined init with copy of [Input](&v97, v79, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
        outlined init with copy of [Input](&v96, v79, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
        v79[0] = v23;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v22, 0);
        v24 = v79[0];
        v25 = (v21 + 56);
        do
        {
          v27 = *(v25 - 2);
          v26 = *(v25 - 1);
          v28 = *v25;
          v79[0] = v24;
          v29 = *(v24 + 16);
          v30 = *(v24 + 24);

          if (v29 >= v30 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v29 + 1, 1);
            v24 = v79[0];
          }

          *(v24 + 16) = v29 + 1;
          v31 = (v24 + 24 * v29);
          v31[4] = v26;
          v31[5] = v28;
          v31[6] = v27;
          v25 += 7;
          --v22;
        }

        while (v22);
      }

      else
      {
        outlined init with copy of NodePersonality(&v101, v79);
        outlined init with copy of [Input](v100, v79, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
        outlined init with copy of [Input](&v99, v79, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
        outlined init with copy of NodePersonality(&v98, v79);
        outlined init with copy of [Input](&v97, v79, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
        outlined init with copy of [Input](&v96, v79, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
        v24 = MEMORY[0x277D84F90];
      }

      v35 = v97;
      v36 = *(v97 + 16);
      v37 = MEMORY[0x277D84F90];
      if (v36)
      {
        v70 = v24;
        v79[0] = MEMORY[0x277D84F90];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v36, 0);
        v37 = v79[0];
        v38 = (v35 + 56);
        do
        {
          v40 = *(v38 - 2);
          v39 = *(v38 - 1);
          v41 = *v38;
          v79[0] = v37;
          v43 = *(v37 + 16);
          v42 = *(v37 + 24);

          if (v43 >= v42 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v42 > 1), v43 + 1, 1);
            v24 = v70;
            v37 = v79[0];
          }

          *(v37 + 16) = v43 + 1;
          v44 = (v37 + 24 * v43);
          v44[4] = v39;
          v44[5] = v41;
          v44[6] = v40;
          v38 += 7;
          --v36;
        }

        while (v36);
        v13 = v72;
      }

      v45 = swift_allocObject();
      v46 = v85[0];
      *(v45 + 144) = v84;
      *(v45 + 160) = v46;
      *(v45 + 169) = *(v85 + 9);
      v47 = v81;
      *(v45 + 80) = v80[4];
      *(v45 + 96) = v47;
      v48 = v83;
      *(v45 + 112) = v82;
      *(v45 + 128) = v48;
      v49 = v80[1];
      *(v45 + 16) = v80[0];
      *(v45 + 32) = v49;
      v50 = v80[3];
      *(v45 + 48) = v80[2];
      *(v45 + 64) = v50;
      outlined init with copy of UserGraph(v80, v79);
      UserGraph.insertNode(inputs:outputs:shaderGraphData:)(v24, v37, v45 | 0xC000000000000000, &v86);
      v51 = *(&v86 + 1);
      v52 = v86;
      v53 = v87;
      v78 = v88;
      v67 = v89;
      v66 = v90;

      outlined destroy of NodePersonality(&v98);
      outlined destroy of [Input](&v97, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      outlined destroy of [Input](&v96, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
      outlined destroy of NodePersonality(&v101);
      outlined destroy of [Input](v100, &_sSay11ShaderGraph5InputVGMd, &_sSay11ShaderGraph5InputVGMR);
      outlined destroy of [Input](&v99, &_sSay11ShaderGraph6OutputVGMd, &_sSay11ShaderGraph6OutputVGMR);
      outlined destroy of UserGraph(v80);
      v68 = v52;
      outlined copy of NodePersonality(v52);
      v71 = v51;

      v69 = v53;

      v12 = v73;
LABEL_38:
      v54._countAndFlagsBits = 1701667182;
      v54._object = 0xE400000000000000;
      v55 = XMLElement.getRequiredAttribute(_:)(v54);
      if (v56)
      {
        swift_unexpectedError();
        __break(1u);
      }

      else
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v79[0] = *a6;
        *a6 = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v78, v55._countAndFlagsBits, v55._object, isUniquelyReferenced_nonNull_native);

        *a6 = v79[0];

        v58 = *v75;
        swift_unknownObjectRetain();
        v59 = swift_isUniquelyReferenced_nonNull_native();
        *v75 = v58;
        v74 = v12;
        if ((v59 & 1) == 0)
        {
          v58 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v58[2] + 1, 1, v58);
          *v75 = v58;
        }

        v61 = v58[2];
        v60 = v58[3];
        v77 = v61 + 1;
        if (v61 >= v60 >> 1)
        {
          *v75 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v60 > 1), v77, 1, v58);
        }

        outlined consume of ShaderGraphNode?(v68, v71, v69);
        LOBYTE(v79[0]) = v66;
        v62 = *v75;
        v62[2] = v77;
        v63 = &v62[8 * v61];
        v63[4] = v13;
        v63[5] = v74;
        v63[6] = v68;
        v63[7] = v71;
        v63[8] = v69;
        v63[9] = v78;
        v63[10] = v67;
        *(v63 + 88) = v66;
      }
    }
  }

  else
  {
    v32 = v16 == 0x7475706E69 && v17 == 0xE500000000000000;
    if (v32 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      goto LABEL_8;
    }

    if (v16 == 0x74757074756FLL && v17 == 0xE600000000000000)
    {
      goto LABEL_8;
    }

    v75 = a7;
    v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v34 & 1) == 0)
    {
      specialized NodeDefStore.createNode(for:in:)(v13, v12, a2, &v91);
      if (v7)
      {

        return;
      }

      v64 = *(&v91 + 1);
      v65 = v92;
      v78 = v93;
      v67 = v94;
      v68 = v91;
      v66 = v95;
      outlined copy of NodePersonality(v91);
      v71 = v64;

      v69 = v65;

      goto LABEL_38;
    }
  }
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> XMLElement.getRequiredAttribute(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  if (!(*(v1 + 16))() || (v7 = v6, ObjectType = swift_getObjectType(), v2 = (*(v7 + 32))(ObjectType, v7), v3 = v9, swift_unknownObjectRelease(), !v3))
  {
    lazy protocol witness table accessor for type XMLElementErrors and conformance XMLElementErrors();
    swift_allocError();
    *v10 = countAndFlagsBits;
    v10[1] = object;
    swift_willThrow();
  }

  v11 = v2;
  v12 = v3;
  result._object = v12;
  result._countAndFlagsBits = v11;
  return result;
}

double UserGraph.appendSwizzleNode(to:resultType:channels:nodeDefStore:)@<D0>(_OWORD *a1@<X8>, void *a2@<X0>, void *a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>)
{
  specialized UserGraph.appendSwizzleNode(to:resultType:channels:nodeDefStore:)(a2, a3, a4, a5, a6, &v10);
  if (!v6)
  {
    v9 = v11[0];
    *a1 = v10;
    a1[1] = v9;
    result = *(v11 + 9);
    *(a1 + 25) = *(v11 + 9);
  }

  return result;
}

uint64_t static MaterialXDataType.Kind.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      return _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(a1, a2);
    }

    return 0;
  }

  return !a2;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance MaterialXDataType.Kind.CodingKeys()
{
  if (*v0)
  {
    return 7628147;
  }

  else
  {
    return 0x64656D616ELL;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MaterialXDataType.Kind.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x64656D616ELL && a2 == 0xE500000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 7628147 && a2 == 0xE300000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MaterialXDataType.Kind.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MaterialXDataType.Kind.CodingKeys and conformance MaterialXDataType.Kind.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MaterialXDataType.Kind.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MaterialXDataType.Kind.CodingKeys and conformance MaterialXDataType.Kind.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MaterialXDataType.Kind.NamedCodingKeys@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MaterialXDataType.Kind.NamedCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MaterialXDataType.Kind.NamedCodingKeys and conformance MaterialXDataType.Kind.NamedCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MaterialXDataType.Kind.NamedCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MaterialXDataType.Kind.NamedCodingKeys and conformance MaterialXDataType.Kind.NamedCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MaterialXDataType.Kind.SetCodingKeys()
{
  Hasher.init(_seed:)();
  MEMORY[0x266772770](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MaterialXDataType.Kind.SetCodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x266772770](0);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MaterialXDataType.Kind.SetCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MaterialXDataType.Kind.SetCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MaterialXDataType.Kind.SetCodingKeys and conformance MaterialXDataType.Kind.SetCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MaterialXDataType.Kind.SetCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MaterialXDataType.Kind.SetCodingKeys and conformance MaterialXDataType.Kind.SetCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MaterialXDataType.Kind.encode(to:)(void *a1, uint64_t a2)
{
  v19 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11ShaderGraph17MaterialXDataTypeC4KindO13SetCodingKeys33_82E50B62BEFBE102264EBACF2BC2855FLLOGMd, &_ss22KeyedEncodingContainerVy11ShaderGraph17MaterialXDataTypeC4KindO13SetCodingKeys33_82E50B62BEFBE102264EBACF2BC2855FLLOGMR);
  v17 = *(v3 - 8);
  v18 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v16 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11ShaderGraph17MaterialXDataTypeC4KindO15NamedCodingKeys33_82E50B62BEFBE102264EBACF2BC2855FLLOGMd, &_ss22KeyedEncodingContainerVy11ShaderGraph17MaterialXDataTypeC4KindO15NamedCodingKeys33_82E50B62BEFBE102264EBACF2BC2855FLLOGMR);
  v16 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11ShaderGraph17MaterialXDataTypeC4KindO10CodingKeys33_82E50B62BEFBE102264EBACF2BC2855FLLOGMd, &_ss22KeyedEncodingContainerVy11ShaderGraph17MaterialXDataTypeC4KindO10CodingKeys33_82E50B62BEFBE102264EBACF2BC2855FLLOGMR);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v16 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MaterialXDataType.Kind.CodingKeys and conformance MaterialXDataType.Kind.CodingKeys();
  v13 = v19;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v13)
  {
    v22 = 1;
    lazy protocol witness table accessor for type MaterialXDataType.Kind.SetCodingKeys and conformance MaterialXDataType.Kind.SetCodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v20 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A], MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    v14 = v18;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v17 + 8))(v5, v14);
  }

  else
  {
    v21 = 0;
    lazy protocol witness table accessor for type MaterialXDataType.Kind.NamedCodingKeys and conformance MaterialXDataType.Kind.NamedCodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v16 + 8))(v8, v6);
  }

  return (*(v10 + 8))(v12, v9);
}

void *protocol witness for Decodable.init(from:) in conformance MaterialXDataType.Kind@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = specialized MaterialXDataType.Kind.init(from:)(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance MaterialXDataType.Kind(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2)
  {
    if (v3)
    {
      return _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v2, v3);
    }

    return 0;
  }

  return !v3;
}

uint64_t MaterialXDataType.name.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

void *MaterialXDataType.init(_:)(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v2[2] = MEMORY[0x277D84F90];
  v2[3] = 0;
  return v2;
}

void *MaterialXDataType.init(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a1;
  v3[5] = a2;
  v3[2] = MEMORY[0x277D84F90];
  v3[3] = a3;
  return v3;
}

uint64_t MaterialXDataType.isEqual(to:)(uint64_t a1)
{
  result = swift_dynamicCastClass();
  if (!result)
  {
    return result;
  }

  v3 = *(result + 24);
  if (!v1[3])
  {
    if (!v3)
    {
      goto LABEL_5;
    }

    return 0;
  }

  if (!v3)
  {
    return 0;
  }

  v4 = result;
  v5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v1[3], v3);
  result = v4;
  if ((v5 & 1) == 0)
  {
    return 0;
  }

LABEL_5:
  if (v1[4] == *(result + 32) && v1[5] == *(result + 40))
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t MaterialXDataType.description.getter()
{
  if (v0[3])
  {
    v1 = 0x7465733A786C746DLL;
  }

  else
  {
    v1 = 0x6D616E3A786C746DLL;
  }

  v3 = v1;
  MEMORY[0x266771550](v0[4], v0[5]);
  MEMORY[0x266771550](41, 0xE100000000000000);
  return v3;
}

uint64_t MaterialXDataType.debugDescription.getter()
{
  if (v0[3])
  {
    _StringGuts.grow(_:)(16);

    v4 = 0x7465733A786C746DLL;
    MEMORY[0x266771550](v0[4], v0[5]);
    MEMORY[0x266771550](23337, 0xE200000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A], MEMORY[0x277D83958]);
    v1 = BidirectionalCollection<>.joined(separator:)();
    MEMORY[0x266771550](v1);

    v2 = 93;
  }

  else
  {
    v4 = 0x6D616E3A786C746DLL;
    MEMORY[0x266771550](v0[4], v0[5]);
    v2 = 41;
  }

  MEMORY[0x266771550](v2, 0xE100000000000000);
  return v4;
}

uint64_t MaterialXDataType.asMetalDataType.getter()
{
  if (one-time initialization token for integer != -1)
  {
    swift_once();
  }

  if (MaterialXDataType.isEqual(to:)(v0))
  {
    if (one-time initialization token for int32 == -1)
    {
    }

    goto LABEL_259;
  }

  if (one-time initialization token for integer2 != -1)
  {
    swift_once();
  }

  if (MaterialXDataType.isEqual(to:)(v0))
  {
    goto LABEL_9;
  }

  if (one-time initialization token for integer3 != -1)
  {
    swift_once();
  }

  if (MaterialXDataType.isEqual(to:)(v0))
  {
LABEL_14:
    if (one-time initialization token for int3 == -1)
    {
    }

    goto LABEL_259;
  }

  if (one-time initialization token for integer4 != -1)
  {
    swift_once();
  }

  if (MaterialXDataType.isEqual(to:)(v0))
  {
    if (one-time initialization token for int4 == -1)
    {
    }

    goto LABEL_259;
  }

  if (one-time initialization token for BOOLean != -1)
  {
    swift_once();
  }

  if (MaterialXDataType.isEqual(to:)(v0))
  {
    if (one-time initialization token for BOOL == -1)
    {
    }

    goto LABEL_259;
  }

  if (one-time initialization token for float != -1)
  {
    swift_once();
  }

  if (MaterialXDataType.isEqual(to:)(v0))
  {
    if (one-time initialization token for float == -1)
    {
    }

    goto LABEL_259;
  }

  if (one-time initialization token for float2 != -1)
  {
    swift_once();
  }

  if (MaterialXDataType.isEqual(to:)(v0))
  {
    goto LABEL_34;
  }

  if (one-time initialization token for float3 != -1)
  {
    swift_once();
  }

  if (MaterialXDataType.isEqual(to:)(v0))
  {
LABEL_39:
    if (one-time initialization token for float3 == -1)
    {
    }

    goto LABEL_259;
  }

  if (one-time initialization token for float4 != -1)
  {
    swift_once();
  }

  if (MaterialXDataType.isEqual(to:)(v0))
  {
    goto LABEL_44;
  }

  if (one-time initialization token for half != -1)
  {
    swift_once();
  }

  if (MaterialXDataType.isEqual(to:)(v0))
  {
    if (one-time initialization token for half == -1)
    {
    }

    goto LABEL_259;
  }

  if (one-time initialization token for half2 != -1)
  {
    swift_once();
  }

  if (MaterialXDataType.isEqual(to:)(v0))
  {
    if (one-time initialization token for half2 == -1)
    {
    }

    goto LABEL_259;
  }

  if (one-time initialization token for half3 != -1)
  {
    swift_once();
  }

  if (MaterialXDataType.isEqual(to:)(v0))
  {
    if (one-time initialization token for half3 == -1)
    {
    }

    goto LABEL_259;
  }

  if (one-time initialization token for half4 != -1)
  {
    swift_once();
  }

  if (MaterialXDataType.isEqual(to:)(v0))
  {
    if (one-time initialization token for half4 == -1)
    {
    }

    goto LABEL_259;
  }

  if (one-time initialization token for color3 != -1)
  {
    swift_once();
  }

  if (MaterialXDataType.isEqual(to:)(v0))
  {
    if (one-time initialization token for color3 == -1)
    {
    }

    goto LABEL_259;
  }

  if (one-time initialization token for color4 != -1)
  {
    swift_once();
  }

  if (MaterialXDataType.isEqual(to:)(v0))
  {
    if (one-time initialization token for color4 == -1)
    {
    }

LABEL_259:
    swift_once();
  }

  if (one-time initialization token for vector2 != -1)
  {
    swift_once();
  }

  if (MaterialXDataType.isEqual(to:)(v0))
  {
LABEL_34:
    if (one-time initialization token for float2 == -1)
    {
    }

    goto LABEL_259;
  }

  if (one-time initialization token for vector3 != -1)
  {
    swift_once();
  }

  if (MaterialXDataType.isEqual(to:)(v0))
  {
    goto LABEL_39;
  }

  if (one-time initialization token for vector4 != -1)
  {
    swift_once();
  }

  if (MaterialXDataType.isEqual(to:)(v0))
  {
LABEL_44:
    if (one-time initialization token for float4 == -1)
    {
    }

    goto LABEL_259;
  }

  if (one-time initialization token for matrix22 != -1)
  {
    swift_once();
  }

  if (MaterialXDataType.isEqual(to:)(v0))
  {
    if (one-time initialization token for float2x2 == -1)
    {
    }

    goto LABEL_259;
  }

  if (one-time initialization token for matrix33 != -1)
  {
    swift_once();
  }

  if (MaterialXDataType.isEqual(to:)(v0))
  {
    if (one-time initialization token for float3x3 == -1)
    {
    }

    goto LABEL_259;
  }

  if (one-time initialization token for matrix44 != -1)
  {
    swift_once();
  }

  if (MaterialXDataType.isEqual(to:)(v0))
  {
    if (one-time initialization token for float4x4 == -1)
    {
    }

    goto LABEL_259;
  }

  if (one-time initialization token for uAddressMode != -1)
  {
    swift_once();
  }

  if (MaterialXDataType.isEqual(to:)(v0))
  {
LABEL_113:
    if (one-time initialization token for s_address == -1)
    {
    }

    goto LABEL_259;
  }

  if (one-time initialization token for vAddressMode != -1)
  {
    swift_once();
  }

  if (MaterialXDataType.isEqual(to:)(v0))
  {
    goto LABEL_119;
  }

  if (one-time initialization token for wrapS != -1)
  {
    swift_once();
  }

  if (MaterialXDataType.isEqual(to:)(v0))
  {
    goto LABEL_113;
  }

  if (one-time initialization token for wrapT != -1)
  {
    swift_once();
  }

  if (MaterialXDataType.isEqual(to:)(v0))
  {
    goto LABEL_119;
  }

  if (one-time initialization token for filterType != -1)
  {
    swift_once();
  }

  if (MaterialXDataType.isEqual(to:)(v0))
  {
    goto LABEL_131;
  }

  if (one-time initialization token for blurFilterType != -1)
  {
    swift_once();
  }

  if (MaterialXDataType.isEqual(to:)(v0))
  {
    return 0;
  }

  if (one-time initialization token for frameEndAction != -1)
  {
    swift_once();
  }

  if (MaterialXDataType.isEqual(to:)(v0))
  {
    return 0;
  }

  if (one-time initialization token for space != -1)
  {
    swift_once();
  }

  if (MaterialXDataType.isEqual(to:)(v0))
  {
    goto LABEL_149;
  }

  if (one-time initialization token for normalMapSpace != -1)
  {
    swift_once();
  }

  if (MaterialXDataType.isEqual(to:)(v0))
  {
LABEL_149:
    if (one-time initialization token for space == -1)
    {
    }

    goto LABEL_259;
  }

  if (one-time initialization token for lumacoeffs != -1)
  {
    swift_once();
  }

  if (MaterialXDataType.isEqual(to:)(v0))
  {
    return 0;
  }

  if (one-time initialization token for addressMode != -1)
  {
    swift_once();
  }

  if (MaterialXDataType.isEqual(to:)(v0))
  {
    goto LABEL_161;
  }

  if (one-time initialization token for pixelAddressMode != -1)
  {
    swift_once();
  }

  if (MaterialXDataType.isEqual(to:)(v0))
  {
LABEL_161:
    if (one-time initialization token for address == -1)
    {
    }

    goto LABEL_259;
  }

  if (one-time initialization token for sAddressMode != -1)
  {
    swift_once();
  }

  if (MaterialXDataType.isEqual(to:)(v0))
  {
    goto LABEL_113;
  }

  if (one-time initialization token for tAddressMode != -1)
  {
    swift_once();
  }

  if (MaterialXDataType.isEqual(to:)(v0))
  {
    goto LABEL_119;
  }

  if (one-time initialization token for rAddressMode != -1)
  {
    swift_once();
  }

  if (MaterialXDataType.isEqual(to:)(v0))
  {
LABEL_175:
    if (one-time initialization token for r_address == -1)
    {
    }

    goto LABEL_259;
  }

  if (one-time initialization token for u_wrap_mode != -1)
  {
    swift_once();
  }

  if (MaterialXDataType.isEqual(to:)(v0))
  {
    goto LABEL_113;
  }

  if (one-time initialization token for v_wrap_mode != -1)
  {
    swift_once();
  }

  if (MaterialXDataType.isEqual(to:)(v0))
  {
    goto LABEL_119;
  }

  if (one-time initialization token for w_wrap_mode != -1)
  {
    swift_once();
  }

  if (MaterialXDataType.isEqual(to:)(v0))
  {
    goto LABEL_175;
  }

  if (one-time initialization token for u_pixel_wrap_mode != -1)
  {
    swift_once();
  }

  if (MaterialXDataType.isEqual(to:)(v0))
  {
    goto LABEL_113;
  }

  if (one-time initialization token for v_pixel_wrap_mode != -1)
  {
    swift_once();
  }

  if (MaterialXDataType.isEqual(to:)(v0))
  {
LABEL_119:
    if (one-time initialization token for t_address == -1)
    {
    }

    goto LABEL_259;
  }

  if (one-time initialization token for w_pixel_wrap_mode != -1)
  {
    swift_once();
  }

  if (MaterialXDataType.isEqual(to:)(v0))
  {
    goto LABEL_175;
  }

  if (one-time initialization token for filter != -1)
  {
    swift_once();
  }

  if (MaterialXDataType.isEqual(to:)(v0))
  {
    goto LABEL_131;
  }

  if (one-time initialization token for magFilter != -1)
  {
    swift_once();
  }

  if (MaterialXDataType.isEqual(to:)(v0))
  {
    if (one-time initialization token for mag_filter == -1)
    {
    }

    goto LABEL_259;
  }

  if (one-time initialization token for minFilter != -1)
  {
    swift_once();
  }

  if (MaterialXDataType.isEqual(to:)(v0))
  {
    if (one-time initialization token for min_filter == -1)
    {
    }

    goto LABEL_259;
  }

  if (one-time initialization token for cubeimageFilterType != -1)
  {
    swift_once();
  }

  if (MaterialXDataType.isEqual(to:)(v0))
  {
LABEL_131:
    if (one-time initialization token for filter == -1)
    {
    }

    goto LABEL_259;
  }

  if (one-time initialization token for coord != -1)
  {
    swift_once();
  }

  if (MaterialXDataType.isEqual(to:)(v0))
  {
    if (one-time initialization token for coord == -1)
    {
    }

    goto LABEL_259;
  }

  if (one-time initialization token for borderColor != -1)
  {
    swift_once();
  }

  if (MaterialXDataType.isEqual(to:)(v0))
  {
    if (one-time initialization token for border_color == -1)
    {
    }

    goto LABEL_259;
  }

  if (one-time initialization token for mipFilter != -1)
  {
    swift_once();
  }

  if (MaterialXDataType.isEqual(to:)(v0))
  {
    if (one-time initialization token for mip_filter == -1)
    {
    }

    goto LABEL_259;
  }

  if (one-time initialization token for texture2dhalf != -1)
  {
    swift_once();
  }

  if (MaterialXDataType.isEqual(to:)(v0))
  {
    if (one-time initialization token for texture2d_half == -1)
    {
    }

    goto LABEL_259;
  }

  if (one-time initialization token for texture2dfloat != -1)
  {
    swift_once();
  }

  if (MaterialXDataType.isEqual(to:)(v0))
  {
    if (one-time initialization token for texture2d_float == -1)
    {
    }

    goto LABEL_259;
  }

  if (one-time initialization token for texture2dint != -1)
  {
    swift_once();
  }

  if (MaterialXDataType.isEqual(to:)(v0))
  {
    if (one-time initialization token for texture2d_int != -1)
    {
      swift_once();
    }
  }

  if (one-time initialization token for texture2darrayhalf != -1)
  {
    swift_once();
  }

  if (MaterialXDataType.isEqual(to:)(v0))
  {
    if (one-time initialization token for texture2darray_half != -1)
    {
      swift_once();
    }
  }

  if (one-time initialization token for texture2darrayfloat != -1)
  {
    swift_once();
  }

  if (MaterialXDataType.isEqual(to:)(v0))
  {
    if (one-time initialization token for texture2darray_float != -1)
    {
      swift_once();
    }
  }

  if (one-time initialization token for texture2darrayint != -1)
  {
    swift_once();
  }

  if (MaterialXDataType.isEqual(to:)(v0))
  {
    if (one-time initialization token for texture2darray_int != -1)
    {
      swift_once();
    }
  }

  if (one-time initialization token for texture3dhalf != -1)
  {
    swift_once();
  }

  if (MaterialXDataType.isEqual(to:)(v0))
  {
    if (one-time initialization token for texture3d_half != -1)
    {
      swift_once();
    }
  }

  if (one-time initialization token for texture3dfloat != -1)
  {
    swift_once();
  }

  if (MaterialXDataType.isEqual(to:)(v0))
  {
    if (one-time initialization token for texture3d_float != -1)
    {
      swift_once();
    }
  }

  if (one-time initialization token for texture3dint != -1)
  {
    swift_once();
  }

  if (MaterialXDataType.isEqual(to:)(v0))
  {
    if (one-time initialization token for texture3d_int != -1)
    {
      swift_once();
    }
  }

  if (one-time initialization token for texturecubehalf != -1)
  {
    swift_once();
  }

  if (MaterialXDataType.isEqual(to:)(v0))
  {
    if (one-time initialization token for texturecube_half != -1)
    {
      swift_once();
    }
  }

  if (one-time initialization token for texturecubefloat != -1)
  {
    swift_once();
  }

  if (MaterialXDataType.isEqual(to:)(v0))
  {
    if (one-time initialization token for texturecube_float != -1)
    {
      swift_once();
    }
  }

  if (one-time initialization token for sampler != -1)
  {
    swift_once();
  }

  if (MaterialXDataType.isEqual(to:)(v0))
  {
    if (one-time initialization token for sampler != -1)
    {
      swift_once();
    }
  }

  if (one-time initialization token for bias != -1)
  {
    swift_once();
  }

  if (MaterialXDataType.isEqual(to:)(v0))
  {
    if (one-time initialization token for bias != -1)
    {
      swift_once();
    }
  }

  if (one-time initialization token for max_anisotropy != -1)
  {
    swift_once();
  }

  if (MaterialXDataType.isEqual(to:)(v0))
  {
    if (one-time initialization token for max_anisotropy != -1)
    {
      swift_once();
    }
  }

  if (one-time initialization token for level != -1)
  {
    swift_once();
  }

  if (MaterialXDataType.isEqual(to:)(v0))
  {
    if (one-time initialization token for level != -1)
    {
      swift_once();
    }
  }

  if (one-time initialization token for min_lod_clamp != -1)
  {
    swift_once();
  }

  if (MaterialXDataType.isEqual(to:)(v0))
  {
    if (one-time initialization token for min_lod_clamp != -1)
    {
      swift_once();
    }
  }

  if (one-time initialization token for offset != -1)
  {
    swift_once();
  }

  if (MaterialXDataType.isEqual(to:)(v0))
  {
LABEL_9:
    if (one-time initialization token for int2 == -1)
    {
    }

    goto LABEL_259;
  }

  if (one-time initialization token for offset3 != -1)
  {
    swift_once();
  }

  if (MaterialXDataType.isEqual(to:)(v0))
  {
    goto LABEL_14;
  }

  if (one-time initialization token for lod_clamp != -1)
  {
    swift_once();
  }

  if (MaterialXDataType.isEqual(to:)(v0))
  {
    if (one-time initialization token for lod_clamp != -1)
    {
      swift_once();
    }
  }

  if (one-time initialization token for gradient2d != -1)
  {
    swift_once();
  }

  if (MaterialXDataType.isEqual(to:)(v0))
  {
    if (one-time initialization token for gradient2d != -1)
    {
      swift_once();
    }
  }

  if (one-time initialization token for gradient3d != -1)
  {
    swift_once();
  }

  if (MaterialXDataType.isEqual(to:)(v0))
  {
    if (one-time initialization token for gradient3d != -1)
    {
      swift_once();
    }
  }

  if (one-time initialization token for gradientcube != -1)
  {
    swift_once();
  }

  if (MaterialXDataType.isEqual(to:)(v0))
  {
    if (one-time initialization token for gradientcube != -1)
    {
      swift_once();
    }
  }

  if (one-time initialization token for realityKitHoverData != -1)
  {
    swift_once();
  }

  if (MaterialXDataType.isEqual(to:)(v0))
  {
    if (one-time initialization token for HoverData != -1)
    {
      swift_once();
    }
  }

  return 0;
}

uint64_t *MaterialXDataType.frameEndAction.unsafeMutableAddressor()
{
  if (one-time initialization token for frameEndAction != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.frameEndAction;
}

uint64_t *MetalDataType.MaterialX.space.unsafeMutableAddressor()
{
  if (one-time initialization token for space != -1)
  {
    swift_once();
  }

  return &static MetalDataType.MaterialX.space;
}

uint64_t *MaterialXDataType.realitykit.pixelAddressMode.unsafeMutableAddressor()
{
  if (one-time initialization token for pixelAddressMode != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.realitykit.pixelAddressMode;
}

uint64_t *MaterialXDataType.texture2dhalf.unsafeMutableAddressor()
{
  if (one-time initialization token for texture2dhalf != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.texture2dhalf;
}

uint64_t *MaterialXDataType.texture2dfloat.unsafeMutableAddressor()
{
  if (one-time initialization token for texture2dfloat != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.texture2dfloat;
}

uint64_t *MaterialXDataType.texture2dint.unsafeMutableAddressor()
{
  if (one-time initialization token for texture2dint != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.texture2dint;
}

uint64_t *MaterialXDataType.texture2darrayhalf.unsafeMutableAddressor()
{
  if (one-time initialization token for texture2darrayhalf != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.texture2darrayhalf;
}

uint64_t *MaterialXDataType.texture2darrayfloat.unsafeMutableAddressor()
{
  if (one-time initialization token for texture2darrayfloat != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.texture2darrayfloat;
}

uint64_t *MaterialXDataType.texture2darrayint.unsafeMutableAddressor()
{
  if (one-time initialization token for texture2darrayint != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.texture2darrayint;
}

uint64_t *MaterialXDataType.texture3dhalf.unsafeMutableAddressor()
{
  if (one-time initialization token for texture3dhalf != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.texture3dhalf;
}

uint64_t *MaterialXDataType.texture3dfloat.unsafeMutableAddressor()
{
  if (one-time initialization token for texture3dfloat != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.texture3dfloat;
}

uint64_t *MaterialXDataType.texture3dint.unsafeMutableAddressor()
{
  if (one-time initialization token for texture3dint != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.texture3dint;
}

uint64_t *MaterialXDataType.texturecubehalf.unsafeMutableAddressor()
{
  if (one-time initialization token for texturecubehalf != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.texturecubehalf;
}

uint64_t *MaterialXDataType.texturecubefloat.unsafeMutableAddressor()
{
  if (one-time initialization token for texturecubefloat != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.texturecubefloat;
}

uint64_t *MaterialXDataType.sampler.unsafeMutableAddressor()
{
  if (one-time initialization token for sampler != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.sampler;
}

uint64_t *MaterialXDataType.bias.unsafeMutableAddressor()
{
  if (one-time initialization token for bias != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.bias;
}

uint64_t *MaterialXDataType.max_anisotropy.unsafeMutableAddressor()
{
  if (one-time initialization token for max_anisotropy != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.max_anisotropy;
}

uint64_t *MaterialXDataType.level.unsafeMutableAddressor()
{
  if (one-time initialization token for level != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.level;
}

uint64_t *MaterialXDataType.min_lod_clamp.unsafeMutableAddressor()
{
  if (one-time initialization token for min_lod_clamp != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.min_lod_clamp;
}

uint64_t *MaterialXDataType.offset.unsafeMutableAddressor()
{
  if (one-time initialization token for offset != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.offset;
}

uint64_t *MaterialXDataType.offset3.unsafeMutableAddressor()
{
  if (one-time initialization token for offset3 != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.offset3;
}

uint64_t *MaterialXDataType.lod_clamp.unsafeMutableAddressor()
{
  if (one-time initialization token for lod_clamp != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.lod_clamp;
}

uint64_t *MaterialXDataType.gradient2d.unsafeMutableAddressor()
{
  if (one-time initialization token for gradient2d != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.gradient2d;
}

uint64_t *MaterialXDataType.gradient3d.unsafeMutableAddressor()
{
  if (one-time initialization token for gradient3d != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.gradient3d;
}

uint64_t *MaterialXDataType.gradientcube.unsafeMutableAddressor()
{
  if (one-time initialization token for gradientcube != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.gradientcube;
}

uint64_t *MaterialXDataType.realityKitHoverData.unsafeMutableAddressor()
{
  if (one-time initialization token for realityKitHoverData != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.realityKitHoverData;
}

uint64_t MaterialXDataType.isStructurallyEqual(to:)(uint64_t a1)
{
  if (v1 == a1)
  {
    return 1;
  }

  if (*(v1 + 24))
  {
    v2 = *(a1 + 24) == 0;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    return 0;
  }

  v3 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n();
  v4 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n();
  v5 = _sSh2eeoiySbShyxG_ABtFZSS_Tt1g5(v3, v4);

  return v5 & 1;
}

uint64_t _sSh2eeoiySbShyxG_ABtFZ11ShaderGraph15MaterialXTargetC_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      a2 = a1;
    }

    else
    {
      a2 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    if (v3)
    {
      if (v2 < 0)
      {
        a1 = v2;
      }

      else
      {
        a1 = v2 & 0xFFFFFFFFFFFFFF8;
      }

      return MEMORY[0x2821FCF40](a1, a2);
    }

    v6 = a2;
    v5 = v2;
  }

  else
  {
    if (!v3)
    {
      if (a1 == a2)
      {
        return 1;
      }

      if (*(a1 + 16) == *(a2 + 16))
      {
        v8 = 0;
        v9 = a1 + 56;
        v10 = 1 << *(a1 + 32);
        if (v10 < 64)
        {
          v11 = ~(-1 << v10);
        }

        else
        {
          v11 = -1;
        }

        v12 = v11 & *(a1 + 56);
        v13 = (v10 + 63) >> 6;
        v14 = a2 + 56;
        v25 = a1;
        if (!v12)
        {
LABEL_27:
          v16 = v8;
          while (1)
          {
            v8 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
              break;
            }

            if (v8 >= v13)
            {
              return 1;
            }

            v17 = *(v9 + 8 * v8);
            ++v16;
            if (v17)
            {
              v15 = __clz(__rbit64(v17));
              v26 = (v17 - 1) & v17;
              goto LABEL_32;
            }
          }

          __break(1u);
          return MEMORY[0x2821FCF40](a1, a2);
        }

        while (1)
        {
          v15 = __clz(__rbit64(v12));
          v26 = (v12 - 1) & v12;
LABEL_32:
          v18 = *(*(a1 + 48) + 8 * (v15 | (v8 << 6)));
          Hasher.init(_seed:)();

          String.hash(into:)();
          specialized Optional<A>.hash(into:)(v27, *(v18 + 32));
          v19 = Hasher._finalize()();
          v20 = -1 << *(v2 + 32);
          v21 = v19 & ~v20;
          if (((*(v14 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
          {
            break;
          }

          v22 = ~v20;
          while (1)
          {

            v24 = specialized static MaterialXTarget.== infix(_:_:)(v23, v18);

            if (v24)
            {
              break;
            }

            v21 = (v21 + 1) & v22;
            if (((*(v14 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
            {
              goto LABEL_40;
            }
          }

          a1 = v25;
          v12 = v26;
          if (!v26)
          {
            goto LABEL_27;
          }
        }

LABEL_40:
      }

      return 0;
    }

    v4 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v4 = a2;
    }

    v5 = a1;
    v6 = v4;
  }

  return specialized _NativeSet.isEqual(to:)(v6, v5);
}

Swift::Int _sSh2eeoiySbShyxG_ABtFZ11ShaderGraph0C5IndexV_Tt1g5(Swift::Int result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = (*(v3 + 48) + 16 * (v10 | (v4 << 6)));
    v14 = *v13;
    v15 = v13[1];
    Hasher.init(_seed:)();
    MEMORY[0x266772770](v14);
    MEMORY[0x266772770](v15);
    result = Hasher._finalize()();
    v16 = -1 << *(a2 + 32);
    v17 = result & ~v16;
    if (((*(v9 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
    {
      return 0;
    }

    v18 = ~v16;
    while (1)
    {
      v19 = (*(a2 + 48) + 16 * v17);
      v21 = *v19;
      v20 = v19[1];
      if (v21 == v14 && v20 == v15)
      {
        break;
      }

      v17 = (v17 + 1) & v18;
      if (((*(v9 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSh2eeoiySbShyxG_ABtFZSS_Tt1g5(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v22 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    Hasher.init(_seed:)();

    String.hash(into:)();
    v16 = Hasher._finalize()();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = (*(a2 + 48) + 16 * v18);
      v21 = *v20 == v15 && v20[1] == v14;
      if (v21 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v22;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t MaterialXDataType.__ivar_destroyer()
{
}

void *MaterialXDataType.deinit()
{

  return v0;
}

uint64_t MaterialXDataType.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

double one-time initialization function for displacementshader(uint64_t a1)
{
  type metadata accessor for MaterialXDataType();
  v1 = swift_allocObject();
  result = 0.0;
  *(v1 + 24) = xmmword_265F23590;
  *(v1 + 40) = 0x8000000265F302E0;
  *(v1 + 16) = MEMORY[0x277D84F90];
  static MaterialXDataType.displacementshader = v1;
  return result;
}

uint64_t *MaterialXDataType.displacementshader.unsafeMutableAddressor()
{
  if (one-time initialization token for displacementshader != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.displacementshader;
}

uint64_t *MaterialXDataType.volumeshader.unsafeMutableAddressor()
{
  if (one-time initialization token for volumeshader != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.volumeshader;
}

uint64_t *MaterialXDataType.lightshader.unsafeMutableAddressor()
{
  if (one-time initialization token for lightshader != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.lightshader;
}

double one-time initialization function for geometrymodifier(uint64_t a1)
{
  type metadata accessor for MaterialXDataType();
  v1 = swift_allocObject();
  result = 0.0;
  *(v1 + 24) = xmmword_265F235D0;
  *(v1 + 40) = 0x8000000265F304F0;
  *(v1 + 16) = MEMORY[0x277D84F90];
  static MaterialXDataType.geometrymodifier = v1;
  return result;
}

uint64_t *MaterialXDataType.material.unsafeMutableAddressor()
{
  if (one-time initialization token for material != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.material;
}

uint64_t *MaterialXDataType.stringarray.unsafeMutableAddressor()
{
  if (one-time initialization token for stringarray != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.stringarray;
}

double one-time initialization function for texture2darrayhalf(uint64_t a1)
{
  type metadata accessor for MaterialXDataType();
  v1 = swift_allocObject();
  result = 0.0;
  *(v1 + 24) = xmmword_265F23590;
  *(v1 + 40) = 0x8000000265F30380;
  *(v1 + 16) = MEMORY[0x277D84F90];
  static MaterialXDataType.texture2darrayhalf = v1;
  return result;
}

double one-time initialization function for texture2darrayfloat(uint64_t a1)
{
  type metadata accessor for MaterialXDataType();
  v1 = swift_allocObject();
  result = 0.0;
  *(v1 + 24) = xmmword_265F23630;
  *(v1 + 40) = 0x8000000265F30360;
  *(v1 + 16) = MEMORY[0x277D84F90];
  static MaterialXDataType.texture2darrayfloat = v1;
  return result;
}

double one-time initialization function for texture2darrayint(uint64_t a1)
{
  type metadata accessor for MaterialXDataType();
  v1 = swift_allocObject();
  result = 0.0;
  *(v1 + 24) = xmmword_265F23640;
  *(v1 + 40) = 0x8000000265F30340;
  *(v1 + 16) = MEMORY[0x277D84F90];
  static MaterialXDataType.texture2darrayint = v1;
  return result;
}

double one-time initialization function for texturecubefloat(uint64_t a1)
{
  type metadata accessor for MaterialXDataType();
  v1 = swift_allocObject();
  result = 0.0;
  *(v1 + 24) = xmmword_265F235D0;
  *(v1 + 40) = 0x8000000265F30320;
  *(v1 + 16) = MEMORY[0x277D84F90];
  static MaterialXDataType.texturecubefloat = v1;
  return result;
}

uint64_t *MaterialXDataType.texturecubeint.unsafeMutableAddressor()
{
  if (one-time initialization token for texturecubeint != -1)
  {
    swift_once();
  }

  return &static MaterialXDataType.texturecubeint;
}

__n128 one-time initialization function for unsupported(uint64_t a1, uint64_t a2, uint64_t *a3, __n128 a4)
{
  type metadata accessor for MaterialXDataType();
  v6 = swift_allocObject();
  result = a4;
  *(v6 + 24) = a4;
  *(v6 + 40) = a2;
  *(v6 + 16) = MEMORY[0x277D84F90];
  *a3 = v6;
  return result;
}

double one-time initialization function for realityKitHoverData(uint64_t a1)
{
  type metadata accessor for MaterialXDataType();
  v1 = swift_allocObject();
  result = 0.0;
  *(v1 + 24) = xmmword_265F23700;
  *(v1 + 40) = 0x8000000265F30300;
  *(v1 + 16) = MEMORY[0x277D84F90];
  static MaterialXDataType.realityKitHoverData = v1;
  return result;
}

void *one-time initialization function for uAddressMode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  type metadata accessor for MaterialXDataType();
  result = swift_allocObject();
  result[4] = a3;
  result[5] = a4;
  result[2] = MEMORY[0x277D84F90];
  result[3] = a2;
  *a5 = result;
  return result;
}

void *one-time initialization function for space()
{
  result = specialized MetalDataType.Enum.__allocating_init(note:typeName:types:)(0, 0, 0x70533A3A786C746DLL, 0xEB00000000656361, &outlined read-only object #0 of one-time initialization function for space);
  static MetalDataType.MaterialX.space = result;
  return result;
}

unsigned __int8 *specialized _parseInteger<A, B>(ascii:radix:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v70 = a1;
  v71 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = static String._copying(_:)(result, v5);
    v40 = v39;

    v5 = v40;
    if ((v40 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v69;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v22 = v7 - 1;
        if (v22)
        {
          v23 = a3 + 48;
          v24 = a3 + 55;
          v25 = a3 + 87;
          if (a3 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            v13 = 0;
            v26 = result + 1;
            v15 = 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v18 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_127;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              v29 = v13 * a3;
              if (v29 != v29)
              {
                goto LABEL_126;
              }

              v30 = v27 + v28;
              v21 = __OFADD__(v29, v30);
              v13 = v29 + v30;
              if (v21)
              {
                goto LABEL_126;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_46:
            v15 = 0;
            v18 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v18 = 0;
        v15 = 1;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v31 = a3 + 48;
        v32 = a3 + 55;
        v33 = a3 + 87;
        if (a3 > 10)
        {
          v31 = 58;
        }

        else
        {
          v33 = 97;
          v32 = 65;
        }

        if (result)
        {
          v34 = 0;
          v15 = 1;
          do
          {
            v35 = *result;
            if (v35 < 0x30 || v35 >= v31)
            {
              if (v35 < 0x41 || v35 >= v32)
              {
                v18 = 0;
                if (v35 < 0x61 || v35 >= v33)
                {
                  goto LABEL_127;
                }

                v36 = -87;
              }

              else
              {
                v36 = -55;
              }
            }

            else
            {
              v36 = -48;
            }

            v37 = v34 * a3;
            if (v37 != v37)
            {
              goto LABEL_126;
            }

            v38 = v35 + v36;
            v21 = __OFADD__(v37, v38);
            v34 = v37 + v38;
            if (v21)
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v15 = 0;
          v18 = v34;
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          v15 = 1;
          while (1)
          {
            v16 = *v14;
            if (v16 < 0x30 || v16 >= v10)
            {
              if (v16 < 0x41 || v16 >= v11)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v12)
                {
                  goto LABEL_127;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v13 * a3;
            if (v19 != v19)
            {
              goto LABEL_126;
            }

            v20 = v16 + v17;
            v21 = __OFSUB__(v19, v20);
            v13 = v19 - v20;
            if (v21)
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v18 = 0;
        v15 = 0;
LABEL_127:

        LOBYTE(v70) = v15;
        return (v18 | (v15 << 32));
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v41 = HIBYTE(v5) & 0xF;
  v70 = v6;
  v71 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v41)
      {
        v43 = 0;
        v61 = a3 + 48;
        v62 = a3 + 55;
        v63 = a3 + 87;
        if (a3 > 10)
        {
          v61 = 58;
        }

        else
        {
          v63 = 97;
          v62 = 65;
        }

        v64 = &v70;
        v15 = 1;
        while (1)
        {
          v65 = *v64;
          if (v65 < 0x30 || v65 >= v61)
          {
            if (v65 < 0x41 || v65 >= v62)
            {
              v18 = 0;
              if (v65 < 0x61 || v65 >= v63)
              {
                goto LABEL_127;
              }

              v66 = -87;
            }

            else
            {
              v66 = -55;
            }
          }

          else
          {
            v66 = -48;
          }

          v67 = v43 * a3;
          if (v67 != v67)
          {
            goto LABEL_126;
          }

          v68 = v65 + v66;
          v21 = __OFADD__(v67, v68);
          v43 = v67 + v68;
          if (v21)
          {
            goto LABEL_126;
          }

          v64 = (v64 + 1);
          if (!--v41)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        v43 = 0;
        v44 = a3 + 48;
        v45 = a3 + 55;
        v46 = a3 + 87;
        if (a3 > 10)
        {
          v44 = 58;
        }

        else
        {
          v46 = 97;
          v45 = 65;
        }

        v47 = &v70 + 1;
        v15 = 1;
        while (1)
        {
          v48 = *v47;
          if (v48 < 0x30 || v48 >= v44)
          {
            if (v48 < 0x41 || v48 >= v45)
            {
              v18 = 0;
              if (v48 < 0x61 || v48 >= v46)
              {
                goto LABEL_127;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          v50 = v43 * a3;
          if (v50 != v50)
          {
            goto LABEL_126;
          }

          v51 = v48 + v49;
          v21 = __OFSUB__(v50, v51);
          v43 = v50 - v51;
          if (v21)
          {
            goto LABEL_126;
          }

          ++v47;
          if (!--v42)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v41)
  {
    v52 = v41 - 1;
    if (v52)
    {
      v43 = 0;
      v53 = a3 + 48;
      v54 = a3 + 55;
      v55 = a3 + 87;
      if (a3 > 10)
      {
        v53 = 58;
      }

      else
      {
        v55 = 97;
        v54 = 65;
      }

      v56 = &v70 + 1;
      v15 = 1;
      do
      {
        v57 = *v56;
        if (v57 < 0x30 || v57 >= v53)
        {
          if (v57 < 0x41 || v57 >= v54)
          {
            v18 = 0;
            if (v57 < 0x61 || v57 >= v55)
            {
              goto LABEL_127;
            }

            v58 = -87;
          }

          else
          {
            v58 = -55;
          }
        }

        else
        {
          v58 = -48;
        }

        v59 = v43 * a3;
        if (v59 != v59)
        {
          goto LABEL_126;
        }

        v60 = v57 + v58;
        v21 = __OFADD__(v59, v60);
        v43 = v59 + v60;
        if (v21)
        {
          goto LABEL_126;
        }

        ++v56;
        --v52;
      }

      while (v52);
LABEL_125:
      v15 = 0;
      v18 = v43;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

{
  v62 = a1;
  v63 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = static String._copying(_:)(result, v5);
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

{
  v69 = a1;
  v70 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = static String._copying(_:)(result, v5);
    v40 = v39;

    v5 = v40;
    if ((v40 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v68;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v22 = v7 - 1;
        if (v22)
        {
          v23 = a3 + 48;
          v24 = a3 + 55;
          v25 = a3 + 87;
          if (a3 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            v13 = 0;
            v26 = result + 1;
            v15 = 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v18 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_126;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              v29 = v13 * a3;
              if (v29 != v29)
              {
                goto LABEL_125;
              }

              v30 = v27 + v28;
              v21 = __OFADD__(v29, v30);
              v13 = v29 + v30;
              if (v21)
              {
                goto LABEL_125;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_46:
            v15 = 0;
            v18 = v13;
            goto LABEL_126;
          }

          goto LABEL_65;
        }

LABEL_125:
        v18 = 0;
        v15 = 1;
        goto LABEL_126;
      }

      goto LABEL_130;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v31 = 0;
        v32 = a3 + 48;
        v33 = a3 + 55;
        v34 = a3 + 87;
        if (a3 > 10)
        {
          v32 = 58;
        }

        else
        {
          v34 = 97;
          v33 = 65;
        }

        v15 = 1;
        while (1)
        {
          v35 = *result;
          if (v35 < 0x30 || v35 >= v32)
          {
            if (v35 < 0x41 || v35 >= v33)
            {
              v18 = 0;
              if (v35 < 0x61 || v35 >= v34)
              {
                goto LABEL_126;
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          v37 = v31 * a3;
          if (v37 != v37)
          {
            goto LABEL_125;
          }

          v38 = v35 + v36;
          v21 = __OFADD__(v37, v38);
          v31 = v37 + v38;
          if (v21)
          {
            goto LABEL_125;
          }

          ++result;
          if (!--v7)
          {
            goto LABEL_124;
          }
        }
      }

      goto LABEL_125;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          v15 = 1;
          while (1)
          {
            v16 = *v14;
            if (v16 < 0x30 || v16 >= v10)
            {
              if (v16 < 0x41 || v16 >= v11)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v12)
                {
                  goto LABEL_126;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v13 * a3;
            if (v19 != v19)
            {
              goto LABEL_125;
            }

            v20 = v16 + v17;
            v21 = __OFSUB__(v19, v20);
            v13 = v19 - v20;
            if (v21)
            {
              goto LABEL_125;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_65:
        v18 = 0;
        v15 = 0;
LABEL_126:

        LOBYTE(v69) = v15;
        return (v18 | (v15 << 32));
      }

      goto LABEL_125;
    }

    __break(1u);
LABEL_129:
    __break(1u);
LABEL_130:
    __break(1u);
    goto LABEL_131;
  }

  v41 = HIBYTE(v5) & 0xF;
  v69 = v6;
  v70 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v41)
      {
        v31 = 0;
        v60 = a3 + 55;
        v61 = a3 + 87;
        v62 = a3 + 48;
        if (a3 > 10)
        {
          v62 = 58;
        }

        else
        {
          v61 = 97;
          v60 = 65;
        }

        v63 = &v69;
        v15 = 1;
        while (1)
        {
          v64 = *v63;
          if (v64 < 0x30 || v64 >= v62)
          {
            if (v64 < 0x41 || v64 >= v60)
            {
              v18 = 0;
              if (v64 < 0x61 || v64 >= v61)
              {
                goto LABEL_126;
              }

              v65 = -87;
            }

            else
            {
              v65 = -55;
            }
          }

          else
          {
            v65 = -48;
          }

          v66 = v31 * a3;
          if (v66 != v66)
          {
            goto LABEL_125;
          }

          v67 = v64 + v65;
          v21 = __OFADD__(v66, v67);
          v31 = v66 + v67;
          if (v21)
          {
            goto LABEL_125;
          }

          v63 = (v63 + 1);
          if (!--v41)
          {
            goto LABEL_124;
          }
        }
      }

      goto LABEL_125;
    }

    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        v31 = 0;
        v43 = a3 + 48;
        v44 = a3 + 55;
        v45 = a3 + 87;
        if (a3 > 10)
        {
          v43 = 58;
        }

        else
        {
          v45 = 97;
          v44 = 65;
        }

        v46 = &v69 + 1;
        v15 = 1;
        while (1)
        {
          v47 = *v46;
          if (v47 < 0x30 || v47 >= v43)
          {
            if (v47 < 0x41 || v47 >= v44)
            {
              v18 = 0;
              if (v47 < 0x61 || v47 >= v45)
              {
                goto LABEL_126;
              }

              v48 = -87;
            }

            else
            {
              v48 = -55;
            }
          }

          else
          {
            v48 = -48;
          }

          v49 = v31 * a3;
          if (v49 != v49)
          {
            goto LABEL_125;
          }

          v50 = v47 + v48;
          v21 = __OFSUB__(v49, v50);
          v31 = v49 - v50;
          if (v21)
          {
            goto LABEL_125;
          }

          ++v46;
          if (!--v42)
          {
            goto LABEL_124;
          }
        }
      }

      goto LABEL_125;
    }

    goto LABEL_129;
  }

  if (v41)
  {
    v51 = v41 - 1;
    if (v51)
    {
      v31 = 0;
      v52 = a3 + 48;
      v53 = a3 + 55;
      v54 = a3 + 87;
      if (a3 > 10)
      {
        v52 = 58;
      }

      else
      {
        v54 = 97;
        v53 = 65;
      }

      v55 = &v69 + 1;
      v15 = 1;
      do
      {
        v56 = *v55;
        if (v56 < 0x30 || v56 >= v52)
        {
          if (v56 < 0x41 || v56 >= v53)
          {
            v18 = 0;
            if (v56 < 0x61 || v56 >= v54)
            {
              goto LABEL_126;
            }

            v57 = -87;
          }

          else
          {
            v57 = -55;
          }
        }

        else
        {
          v57 = -48;
        }

        v58 = v31 * a3;
        if (v58 != v58)
        {
          goto LABEL_125;
        }

        v59 = v56 + v57;
        v21 = __OFADD__(v58, v59);
        v31 = v58 + v59;
        if (v21)
        {
          goto LABEL_125;
        }

        ++v55;
        --v51;
      }

      while (v51);
LABEL_124:
      v15 = 0;
      v18 = v31;
      goto LABEL_126;
    }

    goto LABEL_125;
  }

LABEL_131:
  __break(1u);
  return result;
}