void TextVariantsStorage.isStyled(options:)(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + 16);
  v4 = *(v3 + 16);

  if (!v4)
  {
LABEL_14:

    return;
  }

  v5 = 0;
  v6 = v3 + 32;
  v20 = v4;
  while (2)
  {
    if (v5 >= *(v3 + 16))
    {
      __break(1u);
      return;
    }

    v7 = v6 + 48 * v5;
    v9 = *v7;
    v8 = *(v7 + 8);
    v10 = *(v7 + 24);
    v21 = *(v7 + 16);
    if (v21 != 1)
    {

      v12 = v8;
      outlined copy of Text.Storage(v9, v8, 0);
LABEL_8:
      ++v5;
      v13 = (v10 + 40);
      v14 = *(v10 + 16) + 1;
      while (--v14)
      {
        v15 = *(v13 - 1);
        v16 = *v13;
        if ((*v13 & 0xE0) != 0xC0)
        {
          outlined copy of Text.Modifier(*(v13 - 1), *v13);

          outlined consume of Text.Storage(v9, v12, v21);

          outlined consume of Text.Modifier(v15, v16);
          return;
        }

        v13 += 16;
        v22 = v2;
        if ((*(*v15 + 80))(&v22))
        {

          v17 = v9;
          v18 = v12;
          v19 = v21;
          goto LABEL_16;
        }
      }

      outlined consume of Text.Storage(v9, v12, v21);

      v6 = v3 + 32;
      if (v5 != v20)
      {
        continue;
      }

      goto LABEL_14;
    }

    break;
  }

  v22 = v2;
  v11 = *(*v9 + 104);

  v12 = v8;
  outlined copy of Text.Storage(v9, v8, 1);
  if ((v11(&v22) & 1) == 0)
  {
    goto LABEL_8;
  }

  v17 = v9;
  v18 = v8;
  v19 = 1;
LABEL_16:
  outlined consume of Text.Storage(v17, v18, v19);
}

uint64_t initializeWithCopy for TextVariantsStorage.Variant(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  outlined copy of Text.Storage(*a2, v5, v6);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  v7 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v7;
  *(a1 + 40) = *(a2 + 40);

  return a1;
}

uint64_t assignWithCopy for TextVariantsStorage.Variant(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  outlined copy of Text.Storage(*a2, v5, v6);
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  outlined consume of Text.Storage(v7, v8, v9);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t assignWithTake for TextVariantsStorage.Variant(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  outlined consume of Text.Storage(v5, v6, v7);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t getEnumTagSinglePayload for TextVariantsStorage.Variant(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for TextVariantsStorage.Variant(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.TextSizeVariantKey>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.TextSizeVariantKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.TextSizeVariantKey>(255, a2, a3, a4);
    v6 = v5;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.TextSizeVariantKey> and conformance EnvironmentPropertyKey<A>();
    v9 = type metadata accessor for TypedElement(a1, v6, v7, v8);
    if (!v10)
    {
      atomic_store(v9, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.TextSizeVariantKey>>);
    }
  }
}

void type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.TextSizeVariantKey>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.TextSizeVariantKey>)
  {
    v4 = type metadata accessor for EnvironmentPropertyKey(0, &type metadata for EnvironmentValues.TextSizeVariantKey, &protocol witness table for EnvironmentValues.TextSizeVariantKey, a4);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.TextSizeVariantKey>);
    }
  }
}

BOOL BitVector64.subscript.getter(_BOOL8 result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v2 = 1 << result;
    if (result >= 0x40)
    {
      v2 = 0;
    }

    return (*v1 & v2) != 0;
  }

  return result;
}

uint64_t BitVector64.subscript.setter(uint64_t result, unint64_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if (a2 < 0x40)
    {
      v3 = 1 << a2;
      if (result)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v3 = 0;
      if (result)
      {
LABEL_4:
        *v2 |= v3;
        return result;
      }
    }

    *v2 &= ~v3;
  }

  return result;
}

uint64_t (*BitVector64.subscript.modify(uint64_t (*result)(uint64_t a1), unint64_t a2))(uint64_t a1)
{
  *result = a2;
  *(result + 1) = v2;
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = 1 << a2;
    if (a2 >= 0x40)
    {
      v3 = 0;
    }

    *(result + 16) = (*v2 & v3) != 0;
    return BitVector64.subscript.modify;
  }

  return result;
}

uint64_t Collection.mapBool(_:)@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v35 = a1;
  v36 = a2;
  v33 = a5;
  v6 = *(a4 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v32 - v9;
  v34 = v11;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v39 = type metadata accessor for Optional();
  v13 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v38 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v32 - v16);
  v18 = type metadata accessor for EnumeratedSequence();
  MEMORY[0x1EEE9AC00](v18);
  v41 = type metadata accessor for EnumeratedSequence.Iterator();
  v32 = *(v41 - 8);
  v19 = MEMORY[0x1EEE9AC00](v41);
  v21 = &v32 - v20;
  MEMORY[0x193ABEF60](a3, v6, v19);
  v40 = v21;
  EnumeratedSequence.makeIterator()();
  v22 = 0;
  v23 = (v13 + 32);
  v37 = TupleTypeMetadata2 - 8;
  v24 = (v8 + 32);
  v25 = (v8 + 8);
  v26 = v34;
  while (1)
  {
    v27 = v38;
    EnumeratedSequence.Iterator.next()();
    (*v23)(v17, v27, v39);
    if ((*(*(TupleTypeMetadata2 - 8) + 48))(v17, 1, TupleTypeMetadata2) == 1)
    {
      result = (*(v32 + 8))(v40, v41);
      *v33 = v22;
      return result;
    }

    v28 = *v17;
    (*v24)(v10, v17 + *(TupleTypeMetadata2 + 48), v26);
    v29 = v35(v10);
    result = (*v25)(v10, v26);
    if ((v28 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v28 < 0x40)
    {
      v31 = 1 << v28;
      if (v29)
      {
        goto LABEL_9;
      }

LABEL_2:
      v22 &= ~v31;
    }

    else
    {
      v31 = 0;
      if ((v29 & 1) == 0)
      {
        goto LABEL_2;
      }

LABEL_9:
      v22 |= v31;
    }
  }

  __break(1u);
  return result;
}

void BitVector.init(count:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 < 65)
  {
    v5 = MEMORY[0x1E69E7CC0];
    goto LABEL_5;
  }

  if (!__OFADD__(a1, 63))
  {
    v4 = (a1 + 63) >> 6;
    v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v5 + 16) = v4;
    bzero((v5 + 32), 8 * v4);
LABEL_5:
    *a2 = a1 > 64;
    *(a2 + 8) = 0;
    *(a2 + 16) = v5;
    *(a2 + 24) = a1;
    return;
  }

  __break(1u);
}

unint64_t _sSa9repeating5countSayxGx_SitcfC7SwiftUI11BitVector64V_Tt1B5(unint64_t result, unint64_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    return result;
  }

  if (!a2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = result;
  result = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(result + 16) = a2;
  v4 = (result + 32);
  if (a2 <= 3)
  {
    v5 = 0;
LABEL_9:
    v9 = a2 - v5;
    do
    {
      *v4++ = v3;
      --v9;
    }

    while (v9);
    return result;
  }

  v5 = a2 & 0x7FFFFFFFFFFFFFFCLL;
  v4 += a2 & 0x7FFFFFFFFFFFFFFCLL;
  v6 = vdupq_n_s64(v3);
  v7 = (result + 48);
  v8 = a2 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v7[-1] = v6;
    *v7 = v6;
    v7 += 2;
    v8 -= 4;
  }

  while (v8);
  if (v5 != a2)
  {
    goto LABEL_9;
  }

  return result;
}

BOOL BitVector.subscript.getter(_BOOL8 result)
{
  if ((*v1 & 1) == 0)
  {
    if ((result & 0x8000000000000000) == 0)
    {
      v4 = *(v1 + 8);
      v5 = 1 << result;
      if (result >= 0x40)
      {
        v5 = 0;
      }

      return (v4 & v5) != 0;
    }

    goto LABEL_10;
  }

  v2 = result >> 6;
  if (result >> 6 < 0)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v3 = *(v1 + 16);
  if (v2 < *(v3 + 16))
  {
    v4 = *(v3 + 8 * v2 + 32);
    v5 = 1 << result;
    return (v4 & v5) != 0;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t BitVector.subscript.setter(uint64_t result, uint64_t a2)
{
  v3 = v2;
  v5 = result;
  if ((*v3 & 1) == 0)
  {
    if (a2 < 0)
    {
      goto LABEL_15;
    }

    if (a2 < 0x40)
    {
      v8 = 1 << a2;
      if (result)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v8 = 0;
      if (result)
      {
LABEL_9:
        v9 = *(v3 + 8) | v8;
LABEL_12:
        *(v3 + 8) = v9;
        return result;
      }
    }

    v9 = *(v3 + 8) & ~v8;
    goto LABEL_12;
  }

  v6 = *(v3 + 16);
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    v7 = a2 >> 6;
    if (((a2 >> 6) & 0x8000000000000000) == 0)
    {
      goto LABEL_4;
    }
  }

  else
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
    v6 = result;
    v7 = a2 >> 6;
    if (((a2 >> 6) & 0x8000000000000000) == 0)
    {
LABEL_4:
      if (v7 < *(v6 + 16))
      {
        result = BitVector64.subscript.setter(v5 & 1, a2 & 0x3F);
        *(v3 + 16) = v6;
        return result;
      }

      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t (*BitVector.subscript.modify(uint64_t a1, _BOOL8 a2))(uint64_t a1)
{
  *a1 = a2;
  *(a1 + 8) = v2;
  *(a1 + 16) = BitVector.subscript.getter(a2);
  return BitVector.subscript.modify;
}

uint64_t (*protocol witness for MutableCollection.subscript.modify in conformance BitVector(uint64_t a1, uint64_t *a2))(uint64_t a1)
{
  v4 = *a2;
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = BitVector.subscript.getter(v4);
  return protocol witness for MutableCollection.subscript.modify in conformance BitVector;
}

double protocol witness for MutableCollection.subscript.setter in conformance BitVector(uint64_t a1, uint64_t *a2)
{
  specialized _writeBackMutableSlice<A, B>(_:bounds:slice:)(v2, *a2, a2[1], a1);

  return result;
}

void (*protocol witness for MutableCollection.subscript.modify in conformance BitVector(uint64_t *a1, uint64_t *a2))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  *(v4 + 32) = specialized MutableCollection<>.subscript.modify(v4, *a2, a2[1]);
  return protocol witness for Animatable.animatableData.modify in conformance LinearGradient._Paint;
}

uint64_t protocol witness for MutableCollection.partition(by:) in conformance BitVector@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized MutableCollection<>._partitionImpl(by:)(a2, a3);
  if (!v3)
  {
    *a1 = result;
  }

  return result;
}

uint64_t *protocol witness for MutableCollection.swapAt(_:_:) in conformance BitVector(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  if (*result != *a2)
  {
    v4 = BitVector.subscript.getter(v2);
    v5 = BitVector.subscript.getter(v3);
    BitVector.subscript.setter(v5, v2);

    return BitVector.subscript.setter(v4, v3);
  }

  return result;
}

void (*protocol witness for Collection.subscript.read in conformance BitVector(char **a1, uint64_t *a2))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x21uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = *a2;
  v8 = *(v2 + 8);
  v9 = *(v2 + 24);
  *v6 = *v2;
  *(v6 + 8) = v8;
  *(v6 + 3) = v9;
  v6[32] = BitVector.subscript.getter(v7);
  return protocol witness for Collection.subscript.read in conformance BitVector;
}

void protocol witness for Collection.subscript.getter in conformance BitVector(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 24);
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  v4 = *a1;
  if (*a1 < 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v5 = a1[1];
  if (v3 >= v5)
  {
    v7 = *(v2 + 8);
    v6 = *(v2 + 16);
    *(a2 + 16) = *v2;
    *(a2 + 24) = v7;
    *(a2 + 32) = v6;
    *(a2 + 40) = v3;
    *a2 = v4;
    *(a2 + 8) = v5;

    return;
  }

LABEL_7:
  __break(1u);
}

void protocol witness for Collection.indices.getter in conformance BitVector(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    *a1 = 0;
    a1[1] = v2;
  }
}

uint64_t *protocol witness for Collection.index(after:) in conformance BitVector@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v3 = *result;
  if (*result < 0 || v3 >= *(v2 + 24))
  {
    __break(1u);
  }

  else
  {
    *a2 = v3 + 1;
  }

  return result;
}

uint64_t *protocol witness for Collection.formIndex(after:) in conformance BitVector(uint64_t *result)
{
  v2 = *result;
  if (*result < 0 || v2 >= *(v1 + 24))
  {
    __break(1u);
  }

  else
  {
    *result = v2 + 1;
  }

  return result;
}

void *protocol witness for BidirectionalCollection.index(before:) in conformance BitVector@<X0>(void *result@<X0>, uint64_t *a2@<X8>)
{
  v3 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < *(v2 + 24))
  {
    *a2 = v3;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t *protocol witness for BidirectionalCollection.formIndex(before:) in conformance BitVector(uint64_t *result)
{
  v2 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else if ((v2 & 0x8000000000000000) == 0 && v2 < *(v1 + 24))
  {
    *result = v2;
    return result;
  }

  __break(1u);
  return result;
}

void *protocol witness for RandomAccessCollection.index(_:offsetBy:) in conformance BitVector@<X0>(void *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *result + a2;
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else if ((v4 & 0x8000000000000000) == 0 && *(v3 + 24) >= v4)
  {
    *a3 = v4;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t *protocol witness for RandomAccessCollection.distance(from:to:) in conformance BitVector(uint64_t *result, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(v2 + 24);
  if (v4 >= *a2)
  {
    v5 = *result;
    if (((v3 | *result) & 0x8000000000000000) == 0 && v4 >= v5)
    {
      return (v3 - v5);
    }
  }

  __break(1u);
  return result;
}

__n128 protocol witness for Sequence.makeIterator() in conformance BitVector@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 8);
  v3 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = result;
  *(a1 + 24) = v3;
  *(a1 + 32) = 0;
  return result;
}

void *protocol witness for Sequence._copyToContiguousArray() in conformance BitVector()
{
  v1 = specialized _copyCollectionToContiguousArray<A>(_:)(v0);

  return v1;
}

void lazy protocol witness table accessor for type BitVector64 and conformance BitVector64()
{
  if (!lazy protocol witness table cache variable for type BitVector64 and conformance BitVector64)
  {
    swift_getWitnessTable(protocol conformance descriptor for BitVector64, &type metadata for BitVector64, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type BitVector64 and conformance BitVector64);
  }
}

{
  if (!lazy protocol witness table cache variable for type BitVector64 and conformance BitVector64)
  {
    swift_getWitnessTable(protocol conformance descriptor for BitVector64, &type metadata for BitVector64, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type BitVector64 and conformance BitVector64);
  }
}

{
  if (!lazy protocol witness table cache variable for type BitVector64 and conformance BitVector64)
  {
    swift_getWitnessTable(protocol conformance descriptor for BitVector64, &type metadata for BitVector64, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type BitVector64 and conformance BitVector64);
  }
}

{
  if (!lazy protocol witness table cache variable for type BitVector64 and conformance BitVector64)
  {
    swift_getWitnessTable(protocol conformance descriptor for BitVector64, &type metadata for BitVector64, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type BitVector64 and conformance BitVector64);
  }
}

void lazy protocol witness table accessor for type BitVector and conformance BitVector()
{
  if (!lazy protocol witness table cache variable for type BitVector and conformance BitVector)
  {
    swift_getWitnessTable(protocol conformance descriptor for BitVector, &type metadata for BitVector, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type BitVector and conformance BitVector);
  }
}

{
  if (!lazy protocol witness table cache variable for type BitVector and conformance BitVector)
  {
    swift_getWitnessTable(protocol conformance descriptor for BitVector, &type metadata for BitVector, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type BitVector and conformance BitVector);
  }
}

{
  if (!lazy protocol witness table cache variable for type BitVector and conformance BitVector)
  {
    swift_getWitnessTable(protocol conformance descriptor for BitVector, &type metadata for BitVector, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type BitVector and conformance BitVector);
  }
}

{
  if (!lazy protocol witness table cache variable for type BitVector and conformance BitVector)
  {
    swift_getWitnessTable(protocol conformance descriptor for BitVector, &type metadata for BitVector, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type BitVector and conformance BitVector);
  }
}

{
  if (!lazy protocol witness table cache variable for type BitVector and conformance BitVector)
  {
    swift_getWitnessTable(protocol conformance descriptor for BitVector, &type metadata for BitVector, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type BitVector and conformance BitVector);
  }
}

void lazy protocol witness table accessor for type Slice<BitVector> and conformance <> Slice<A>(unint64_t *a1, uint64_t (*a2)(void), const char *a3)
{
  if (!*a1)
  {
    type metadata accessor for Slice<BitVector>(255, &lazy cache variable for type metadata for Slice<BitVector>, MEMORY[0x1E69E74D0]);
    v7 = v6;
    v9 = a2();
    swift_getWitnessTable(a3, v7, &v9);
    atomic_store(v8, a1);
  }
}

void lazy protocol witness table accessor for type Slice<BitVector> and conformance Slice<A>(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, uint64_t), const char *a4)
{
  if (!*a1)
  {
    type metadata accessor for Slice<BitVector>(255, a2, a3);
    swift_getWitnessTable(a4, v6);
    atomic_store(v7, a1);
  }
}

void type metadata accessor for Slice<BitVector>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, uint64_t))
{
  if (!*a2)
  {
    lazy protocol witness table accessor for type BitVector and conformance BitVector();
    v7 = a3(a1, &type metadata for BitVector, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t initializeWithCopy for BitVector(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v3;
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t assignWithCopy for BitVector(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t assignWithTake for BitVector(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v4;

  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t getEnumTagSinglePayload for BitVector(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for BitVector(uint64_t result, int a2, int a3)
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

void lazy protocol witness table accessor for type BitVector.Kind and conformance BitVector.Kind()
{
  if (!lazy protocol witness table cache variable for type BitVector.Kind and conformance BitVector.Kind)
  {
    swift_getWitnessTable(protocol conformance descriptor for BitVector.Kind, &unk_1F0053640, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type BitVector.Kind and conformance BitVector.Kind);
  }
}

uint64_t EnvironmentValues._defaultAccentColor.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  if (v1)
  {

    v3 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA018DefaultAccentColorI033_AA5C9AAB6528C7C6B599DF55246DE53ALLVG_Tt1g5(v2);

    if (v3)
    {
      return v3;
    }
  }

  else
  {
    v4 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA018DefaultAccentColorS033_AA5C9AAB6528C7C6B599DF55246DE53ALLVG_Tt0g5(*v0);
    if (v4)
    {
      v3 = v4[9];

      if (v3)
      {
        return v3;
      }
    }
  }

  v7[2] = v2;
  v7[3] = v1;
  v3 = EnvironmentValues.defaultAccentColorProvider.getter();
  if (v3)
  {
    v7[0] = v2;
    v7[1] = v1;
    return (*(v5 + 8))(v7, v3, v5);
  }

  return v3;
}

uint64_t (*EnvironmentValues.accentColor.modify(uint64_t *a1))()
{
  a1[1] = v1;
  v3 = *v1;
  if (*(v1 + 8))
  {

    v4 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA011AccentColorI033_AA5C9AAB6528C7C6B599DF55246DE53ALLVG_Tt1g5(v3);
  }

  else
  {
    v5 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA011AccentColorS033_AA5C9AAB6528C7C6B599DF55246DE53ALLVG_Tt0g5(*v1);
    if (v5)
    {
      v4 = v5[9];
    }

    else
    {
      v4 = 0;
    }
  }

  *a1 = v4;
  return EnvironmentValues.accentColor.modify;
}

uint64_t (*EnvironmentValues._accentColor.modify(uint64_t *a1))()
{
  a1[1] = v1;
  v3 = *v1;
  if (*(v1 + 8))
  {

    v4 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA011AccentColorI033_AA5C9AAB6528C7C6B599DF55246DE53ALLVG_Tt1g5(v3);
  }

  else
  {
    v5 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA011AccentColorS033_AA5C9AAB6528C7C6B599DF55246DE53ALLVG_Tt0g5(*v1);
    if (v5)
    {
      v4 = v5[9];
    }

    else
    {
      v4 = 0;
    }
  }

  *a1 = v4;
  return EnvironmentValues._accentColor.modify;
}

double EnvironmentValues.accentColor.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {

    specialized EnvironmentValues.accentColor.setter(v3);
  }

  else
  {
    specialized EnvironmentValues.accentColor.setter(v2);
  }

  return result;
}

double key path setter for EnvironmentValues._defaultAccentColor : EnvironmentValues(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;

  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA018DefaultAccentColorF033_AA5C9AAB6528C7C6B599DF55246DE53ALLVG_Tt2g5(a2, v3);

  if (a2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA018DefaultAccentColorK033_AA5C9AAB6528C7C6B599DF55246DE53ALLVG_Ttg5(v4, *a2);
  }

  return result;
}

uint64_t EnvironmentValues.defaultProvidedAccentColor.getter(__n128 a1)
{
  v2 = *v1;
  v3 = v1[1];
  v6[2] = *v1;
  v6[3] = v3;
  result = EnvironmentValues.defaultAccentColorProvider.getter();
  if (result)
  {
    v6[0] = v2;
    v6[1] = v3;
    return (*(v5 + 8))(v6, result, v5);
  }

  return result;
}

void (*EnvironmentValues._defaultAccentColor.modify(void *a1))(uint64_t **a1, char a2)
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
  v3[3] = v1;
  v3[4] = *v1;
  v3[5] = v1[1];
  *v3 = EnvironmentValues._defaultAccentColor.getter();
  return EnvironmentValues._defaultAccentColor.modify;
}

void EnvironmentValues._defaultAccentColor.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v4 = **a1;
  v5 = (*a1)[3];
  if (a2)
  {
    swift_retain_n();
    swift_retain_n();
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA018DefaultAccentColorF033_AA5C9AAB6528C7C6B599DF55246DE53ALLVG_Tt2g5(v5, v4);

    if (v3)
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA018DefaultAccentColorK033_AA5C9AAB6528C7C6B599DF55246DE53ALLVG_Ttg5(v2[4], *v2[3]);
    }
  }

  else
  {
    swift_retain_n();
    swift_retain_n();
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA018DefaultAccentColorF033_AA5C9AAB6528C7C6B599DF55246DE53ALLVG_Tt2g5(v5, v4);

    if (v3)
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA018DefaultAccentColorK033_AA5C9AAB6528C7C6B599DF55246DE53ALLVG_Ttg5(v2[4], *v2[3]);
    }
  }

  free(v2);
}

uint64_t EnvironmentValues.defaultAccentColorProvider.getter()
{
  v1 = *v0;
  if (*(v0 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE031CorePlatfromProvidersDefinitionI033_C648E6A51A5817691B7DBFA00A618C21LLVG_Tt1g5(v1);
  }

  else if (!_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE031CorePlatfromProvidersDefinitionS033_C648E6A51A5817691B7DBFA00A618C21LLVG_Tt0g5(*v0) && one-time initialization token for defaultValue != -1)
  {
    swift_once();
  }

  static CorePlatformProvidersDefinition.providers.getter(&v3);
  return v3;
}

double EnvironmentValues._systemAccentColor.getter()
{
  if (one-time initialization token for blue != -1)
  {
    swift_once();
  }

  return result;
}

void EnvironmentValues._systemAccentValue.getter(_BYTE *a1@<X8>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>)
{
  v6 = *v4;
  if (*(v4 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA012SystemAccenthI033_AA5C9AAB6528C7C6B599DF55246DE53ALLVG_Tt1g5(v6, v11);

    LOBYTE(v7) = v11[0];
    if (v11[0] != 10)
    {
      goto LABEL_9;
    }
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<SystemAccentValueKey>(0, a2, a3, a4);
    BloomFilter.init(hashValue:)(v8);
    v9 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA017SystemAccentValueV033_AA5C9AAB6528C7C6B599DF55246DE53ALLVG_Tt0B5(v6, *v11);
    if (v9)
    {
      v7 = *(v9 + 72);
      if (v7 != 10)
      {
        goto LABEL_9;
      }
    }
  }

  v10 = swift_beginAccess();
  if (static PlatformSystemAccentValueDefinition.uiKit)
  {
    (*(static PlatformSystemAccentValueDefinition.uiKit + 11))(v10);
    return;
  }

  LOBYTE(v7) = 8;
LABEL_9:
  *a1 = v7;
}

double key path setter for EnvironmentValues._systemAccentValue : EnvironmentValues(char *a1, Swift::UInt *a2)
{
  v3 = *a2;
  v4 = *a1;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA012SystemAccenteF033_AA5C9AAB6528C7C6B599DF55246DE53ALLVG_Tt2B5(a2, v4);

  if (a2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA012SystemAccentgK033_AA5C9AAB6528C7C6B599DF55246DE53ALLVG_Ttg5(v3, *a2);
  }

  return result;
}

double EnvironmentValues._systemAccentValue.setter(char *a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = *a1;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA012SystemAccenteF033_AA5C9AAB6528C7C6B599DF55246DE53ALLVG_Tt2B5(v2, v4);

  if (v2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA012SystemAccentgK033_AA5C9AAB6528C7C6B599DF55246DE53ALLVG_Ttg5(v3, *v2);
  }

  return result;
}

uint64_t static PlatformSystemAccentValueDefinition.for (system:)(_BYTE *a1)
{
  if (*a1 == 1)
  {
    v1 = &static PlatformSystemAccentValueDefinition.appKit;
  }

  else
  {
    v1 = &static PlatformSystemAccentValueDefinition.uiKit;
  }

  swift_beginAccess();
  return *v1;
}

void (*EnvironmentValues._systemAccentValue.modify(uint64_t *a1))(uint64_t *a1)
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
  *(v3 + 16) = v1;
  *(v3 + 24) = *v1;
  *(v3 + 32) = v1[1];
  EnvironmentValues._systemAccentValue.getter((v3 + 40), v4, v5, v6);
  return EnvironmentValues._systemAccentValue.modify;
}

void EnvironmentValues._systemAccentValue.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = *(*a1 + 32);
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA012SystemAccenteF033_AA5C9AAB6528C7C6B599DF55246DE53ALLVG_Tt2B5(*(v1 + 16), v2);

  if (v3)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA012SystemAccentgK033_AA5C9AAB6528C7C6B599DF55246DE53ALLVG_Ttg5(*(v1 + 24), **(v1 + 16));
  }

  free(v1);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance _SystemAccentValue.Role()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](qword_18DDB2A90[v1]);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance _SystemAccentValue.Role(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](qword_18DDB2A90[v2]);
  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance _SystemAccentValue.Role@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized _SystemAccentValue.Role.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

SwiftUI::_SystemAccentValue __swiftcall _SystemAccentValue.init(rawValue:)(Swift::Int rawValue)
{
  v2 = v1;
  result.role = specialized _SystemAccentValue.Role.init(rawValue:)(rawValue);
  if (result.role == SwiftUI__SystemAccentValue_Role_unknownDefault)
  {
    __break(1u);
  }

  else
  {
    v2->role = result.role;
  }

  return result;
}

void static PlatformSystemAccentValueDefinition.setDefinition(_:system:)(uint64_t a1, _BYTE *a2)
{
  if (*a2 == 1)
  {
    v3 = &static PlatformSystemAccentValueDefinition.appKit;
  }

  else
  {
    if (*a2)
    {
      return;
    }

    v3 = &static PlatformSystemAccentValueDefinition.uiKit;
  }

  swift_beginAccess();
  if (!*v3)
  {
    *v3 = a1;
  }
}

uint64_t specialized Color.AccentColorProvider.baseColor(in:)(uint64_t *a1)
{
  v1 = *a1;
  if (a1[1])
  {

    v2 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA011AccentColorI033_AA5C9AAB6528C7C6B599DF55246DE53ALLVG_Tt1g5(v1);

    if (v2)
    {
      return v2;
    }
  }

  else
  {
    v3 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA011AccentColorS033_AA5C9AAB6528C7C6B599DF55246DE53ALLVG_Tt0g5(*a1);
    if (v3)
    {
      v2 = v3[9];

      if (v2)
      {
        return v2;
      }
    }
  }

  v4 = EnvironmentValues._defaultAccentColor.getter();
  if (v4)
  {
    return v4;
  }

  if (one-time initialization token for blue != -1)
  {
    swift_once();
  }

  v2 = static Color.blue;

  return v2;
}

void type metadata accessor for EnvironmentPropertyKey<SystemAccentValueKey>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<SystemAccentValueKey>)
  {
    v4 = type metadata accessor for EnvironmentPropertyKey(0, &type metadata for SystemAccentValueKey, &protocol witness table for SystemAccentValueKey, a4);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for EnvironmentPropertyKey<SystemAccentValueKey>);
    }
  }
}

uint64_t specialized _SystemAccentValue.Role.init(rawValue:)(uint64_t a1)
{
  if ((a1 + 3) > 9)
  {
    return 10;
  }

  else
  {
    return byte_18DDB2AE0[a1 + 3];
  }
}

uint64_t getEnumTagSinglePayload for _SystemAccentValue(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for _SystemAccentValue(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void lazy protocol witness table accessor for type _SystemAccentValue.Role and conformance _SystemAccentValue.Role()
{
  if (!lazy protocol witness table cache variable for type _SystemAccentValue.Role and conformance _SystemAccentValue.Role)
  {
    swift_getWitnessTable(protocol conformance descriptor for _SystemAccentValue.Role, &type metadata for _SystemAccentValue.Role, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _SystemAccentValue.Role and conformance _SystemAccentValue.Role);
  }
}

void lazy protocol witness table accessor for type Color.DesaturatedColor and conformance Color.DesaturatedColor()
{
  if (!lazy protocol witness table cache variable for type Color.DesaturatedColor and conformance Color.DesaturatedColor)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.DesaturatedColor, &type metadata for Color.DesaturatedColor, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.DesaturatedColor and conformance Color.DesaturatedColor);
  }
}

{
  if (!lazy protocol witness table cache variable for type Color.DesaturatedColor and conformance Color.DesaturatedColor)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.DesaturatedColor, &type metadata for Color.DesaturatedColor, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.DesaturatedColor and conformance Color.DesaturatedColor);
  }
}

{
  if (!lazy protocol witness table cache variable for type Color.DesaturatedColor and conformance Color.DesaturatedColor)
  {
    swift_getWitnessTable(protocol conformance descriptor for Color.DesaturatedColor, &type metadata for Color.DesaturatedColor, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Color.DesaturatedColor and conformance Color.DesaturatedColor);
  }
}

void ConditionalMetadata<>.MakeView.visit<A>(type:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v32 = a4;
  v63 = *MEMORY[0x1E69E9840];
  v7 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v4 + 32);
  if (*(v4 + 85))
  {
    v8 = specialized _GraphInputs.pushScope<A>(id:)(v11);
  }

  v12 = *v4;
  LODWORD(v57) = *(v5 + 24);
  *(&v57 + 1) = v12;
  v33 = *(v5 + 8);
  v58 = v33;
  *&v59 = v11;
  MEMORY[0x1EEE9AC00](v8);
  *(&v31 - 4) = a3;
  *&v51 = &type metadata for ViewDescriptor;
  *(&v51 + 1) = v13;
  *&v52 = a3;
  *(&v52 + 1) = &protocol witness table for ViewDescriptor;
  v14 = type metadata accessor for UnwrapConditional(0, &v51);
  *(&v31 - 3) = v14;
  swift_getWitnessTable(protocol conformance descriptor for UnwrapConditional<A, B, C>, v14);
  *(&v31 - 2) = v15;
  outlined copy of Material.Layer.SDFLayer.GroupLayer.Blend(v12);
  v16 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v57, closure #1 in Attribute.init<A>(_:)partial apply, (&v31 - 6), v14, MEMORY[0x1E69E73E0], v16, MEMORY[0x1E69E7410], v17);
  outlined consume of Material.Layer.SDFLayer.GroupLayer.Blend(*(&v57 + 1));
  v18 = *(v5 + 40);
  if (!v18)
  {
    __break(1u);
  }

  v19 = v51;
  v20 = (*(v7 + 16))(v10, v18, a3);
  MEMORY[0x1EEE9AC00](v20);
  *(&v31 - 2) = a3;
  *(&v31 - 2) = v19;
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v10, closure #1 in Attribute.setValue(_:)partial apply, (&v31 - 4), a3, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], MEMORY[0x1E69E7410], v21);
  (*(v7 + 8))(v10, a3);
  _GraphValue.init(_:)(v19, &v35);
  v22 = v35;
  v23 = *(v5 + 96);
  v59 = *(v5 + 80);
  v60 = v23;
  v61 = *(v5 + 112);
  v62 = *(v5 + 128);
  v24 = *(v5 + 64);
  v57 = *(v5 + 48);
  v58 = v24;
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v45 = v59;
  v46 = v60;
  v47 = v61;
  v48 = v62;
  v43 = v57;
  v44 = v58;
  v26 = v59;
  LODWORD(v45) = 0;
  v34 = v22;
  v49[0] = v57;
  v49[1] = v58;
  v50 = v62;
  v49[3] = v60;
  v49[4] = v61;
  v49[2] = v45;
  v39 = v45;
  v40 = v60;
  v41 = v61;
  v42 = v62;
  v37 = v57;
  v38 = v58;
  v27 = v32;
  v28 = *(v32 + 24);
  outlined init with copy of _ViewInputs(&v57, &v51);
  outlined init with copy of _ViewInputs(v49, &v51);
  v28(v36, &v34, &v37, a3, v27);
  v53 = v39;
  v54 = v40;
  v55 = v41;
  v56 = v42;
  v51 = v37;
  v52 = v38;
  outlined destroy of _ViewInputs(&v51);
  LODWORD(v45) = v26;
  if (ShouldRecordTree)
  {
    specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(v36, &v43);
    AGSubgraphEndTreeElement();
  }

  v39 = v45;
  v40 = v46;
  v41 = v47;
  v42 = v48;
  v37 = v43;
  v38 = v44;
  outlined destroy of _ViewInputs(&v37);
  v29 = v36[0];
  v30 = v36[1];

  *(v5 + 136) = v29;
  *(v5 + 144) = v30;
}

uint64_t ConditionalMetadata<>.makeView<A>(ptr:view:inputs:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v42 = *MEMORY[0x1E69E9840];
  v9 = *(a3 + 48);
  v10 = *(a3 + 16);
  v38 = *(a3 + 32);
  v39 = v9;
  v11 = *(a3 + 48);
  v40 = *(a3 + 64);
  v12 = *(a3 + 16);
  v37[0] = *a3;
  v37[1] = v12;
  v32 = v38;
  v33 = v11;
  v34 = *(a3 + 64);
  v41 = *(a3 + 80);
  v13 = *v5;
  v14 = v5[1];
  v15 = v5[2];
  LODWORD(v35) = *(a3 + 80);
  v30 = v37[0];
  v31 = v10;
  *&v27 = v13;
  *(&v27 + 1) = v14;
  *&v28 = v15;
  DWORD2(v28) = a2;
  v29 = 0uLL;
  *(&v35 + 1) = 0;
  v36 = 0;
  v24[2] = a4;
  v24[3] = &v27;
  outlined copy of Material.Layer.SDFLayer.GroupLayer.Blend(v13);
  outlined init with copy of _ViewInputs(v37, v25);
  outlined copy of Material.Layer.SDFLayer.GroupLayer.Blend(v13);
  specialized ConditionalTypeDescriptor.project(at:baseIndex:_:)(a1, 0, partial apply for closure #1 in ConditionalMetadata<>.makeView<A>(ptr:view:inputs:), v24, v13, v14);
  outlined consume of Material.Layer.SDFLayer.GroupLayer.Blend(v13);
  if (*(&v35 + 1))
  {
    v18 = v36;
    v19 = HIDWORD(v36);
    v20 = *(&v35 + 1);
  }

  else
  {
    v18 = 0;
    v19 = *MEMORY[0x1E698D3F8];
    v20 = MEMORY[0x1E69E7CC0];
  }

  *a5 = v20;
  *(a5 + 8) = v18;
  *(a5 + 12) = v19;
  v25[6] = v33;
  v25[7] = v34;
  v25[8] = v35;
  v26 = v36;
  v25[2] = v29;
  v25[3] = v30;
  v25[4] = v31;
  v25[5] = v32;
  v25[0] = v27;
  v25[1] = v28;
  View = type metadata accessor for ConditionalMetadata<>.MakeView(0, a4, v16, v17);
  v22 = *(*(View - 8) + 8);

  return v22(v25, View);
}

uint64_t closure #1 in ConditionalMetadata<>.makeView<A>(ptr:view:inputs:)(uint64_t result, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*a2)
  {
    v5 = a3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    *(a4 + 32) = result;
    *(a4 + 40) = a3;
    View = type metadata accessor for ConditionalMetadata<>.MakeView(0, a5, a3, a4);
    return TypeConformance<>.visitType<A>(visitor:)(a4, View, &protocol witness table for ConditionalMetadata<A><>.MakeView<A1>);
  }

  return result;
}

unint64_t *assignWithCopy for ConditionalMetadata(unint64_t *a1, unint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  outlined copy of Material.Layer.SDFLayer.GroupLayer.Blend(*a2);
  v6 = *a1;
  *a1 = v4;
  a1[1] = v5;
  outlined consume of Material.Layer.SDFLayer.GroupLayer.Blend(v6);
  a1[2] = a2[2];
  a1[3] = a2[3];

  return a1;
}

unint64_t *assignWithTake for ConditionalMetadata(unint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;
  outlined consume of Material.Layer.SDFLayer.GroupLayer.Blend(v4);
  v5 = *(a2 + 24);
  a1[2] = *(a2 + 16);
  a1[3] = v5;

  return a1;
}

unint64_t *initializeBufferWithCopyOfBuffer for ConditionalTypeDescriptor(unint64_t *a1, unint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  outlined copy of Material.Layer.SDFLayer.GroupLayer.Blend(*a2);
  *a1 = v4;
  a1[1] = v5;
  a1[2] = a2[2];
  return a1;
}

unint64_t *assignWithCopy for ConditionalTypeDescriptor(unint64_t *a1, unint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  outlined copy of Material.Layer.SDFLayer.GroupLayer.Blend(*a2);
  v6 = *a1;
  *a1 = v4;
  a1[1] = v5;
  outlined consume of Material.Layer.SDFLayer.GroupLayer.Blend(v6);
  a1[2] = a2[2];
  return a1;
}

unint64_t *assignWithTake for ConditionalTypeDescriptor(unint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;
  outlined consume of Material.Layer.SDFLayer.GroupLayer.Blend(v4);
  a1[2] = *(a2 + 16);
  return a1;
}

uint64_t getEnumTagSinglePayload for ConditionalTypeDescriptor(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 24))
  {
    return (*a1 + 126);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for ConditionalTypeDescriptor(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 8) = 0;
    }
  }

  return result;
}

unint64_t *assignWithCopy for ConditionalTypeDescriptor.Storage(unint64_t *a1, unint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  outlined copy of Material.Layer.SDFLayer.GroupLayer.Blend(*a2);
  v5 = *a1;
  *a1 = v3;
  a1[1] = v4;
  outlined consume of Material.Layer.SDFLayer.GroupLayer.Blend(v5);
  return a1;
}

unint64_t *assignWithTake for ConditionalTypeDescriptor.Storage(unint64_t *a1, _OWORD *a2)
{
  v3 = *a1;
  *a1 = *a2;
  outlined consume of Material.Layer.SDFLayer.GroupLayer.Blend(v3);
  return a1;
}

uint64_t getEnumTagSinglePayload for ConditionalTypeDescriptor.Storage(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 16))
  {
    return (*a1 + 126);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for ConditionalTypeDescriptor.Storage(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    *(result + 8) = 0;
    if (a3 >= 0x7E)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 8) = 0;
    }
  }

  return result;
}

uint64_t outlined destroy of _ViewListOutputs?(uint64_t a1)
{
  type metadata accessor for HitTestableEvent?(0, &lazy cache variable for type metadata for _ViewListOutputs?, &type metadata for _ViewListOutputs);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_3Tm()
{
  outlined consume of Material.Layer.SDFLayer.GroupLayer.Blend(*(v0 + 24));

  return swift_deallocObject();
}

double destroy for ConditionalMetadata<>.MakeView(unint64_t *a1)
{
  outlined consume of Material.Layer.SDFLayer.GroupLayer.Blend(*a1);

  return result;
}

uint64_t initializeWithCopy for ConditionalMetadata<>.MakeView(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Material.Layer.SDFLayer.GroupLayer.Blend(*a2);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  v6 = *(a2 + 96);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = v6;
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = *(a2 + 144);

  return a1;
}

uint64_t assignWithCopy for ConditionalMetadata<>.MakeView(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Material.Layer.SDFLayer.GroupLayer.Blend(*a2);
  v6 = *a1;
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of Material.Layer.SDFLayer.GroupLayer.Blend(v6);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 88) = *(a2 + 88);

  *(a1 + 96) = *(a2 + 96);

  *(a1 + 104) = *(a2 + 104);
  *(a1 + 108) = *(a2 + 108);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 116) = *(a2 + 116);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 124) = *(a2 + 124);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);

  *(a1 + 144) = *(a2 + 144);
  *(a1 + 148) = *(a2 + 148);
  return a1;
}

uint64_t assignWithTake for ConditionalMetadata<>.MakeView(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;
  outlined consume of Material.Layer.SDFLayer.GroupLayer.Blend(v4);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);

  *(a1 + 88) = *(a2 + 88);

  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);

  *(a1 + 144) = *(a2 + 144);
  return a1;
}

uint64_t getEnumTagSinglePayload for ConditionalMetadata<>.MakeView(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ConditionalMetadata<>.MakeView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 152) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t initializeWithCopy for ConditionalMetadata<>.MakeList(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Material.Layer.SDFLayer.GroupLayer.Blend(*a2);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);

  swift_weakCopyInit();
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 176) = *(a2 + 176);
  v6 = *(a2 + 224);
  if (v6 == 255)
  {
    *(a1 + 200) = *(a2 + 200);
    *(a1 + 216) = *(a2 + 216);
    *(a1 + 232) = *(a2 + 232);
    *(a1 + 248) = *(a2 + 248);
    *(a1 + 184) = *(a2 + 184);
  }

  else
  {
    if (v6)
    {
      *(a1 + 184) = *(a2 + 184);
      *(a1 + 192) = *(a2 + 192);
    }

    else
    {
      v7 = *(a2 + 208);
      *(a1 + 208) = v7;
      (**(v7 - 8))(a1 + 184, a2 + 184);
    }

    *(a1 + 224) = v6 & 1;
    v8 = *(a2 + 240);
    *(a1 + 232) = *(a2 + 232);
    *(a1 + 240) = v8;
    *(a1 + 248) = *(a2 + 248);
  }

  return a1;
}

uint64_t assignWithCopy for ConditionalMetadata<>.MakeList(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of Material.Layer.SDFLayer.GroupLayer.Blend(*a2);
  v6 = *a1;
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of Material.Layer.SDFLayer.GroupLayer.Blend(v6);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 88) = *(a2 + 88);

  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);

  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);
  swift_weakCopyAssign();
  v7 = *(a2 + 160);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 160) = v7;
  v8 = *(a2 + 224);
  if (*(a1 + 224) != 0xFF)
  {
    if (v8 == 255)
    {
      outlined destroy of _ViewListOutputs(a1 + 184);
      *(a1 + 184) = *(a2 + 184);
      v12 = *(a2 + 216);
      v13 = *(a2 + 232);
      v14 = *(a2 + 248);
      *(a1 + 200) = *(a2 + 200);
      *(a1 + 248) = v14;
      *(a1 + 232) = v13;
      *(a1 + 216) = v12;
      return a1;
    }

    if (a1 != a2)
    {
      outlined destroy of _ViewListOutputs.Views(a1 + 184);
      if (*(a2 + 224))
      {
        *(a1 + 184) = *(a2 + 184);
        *(a1 + 192) = *(a2 + 192);
        *(a1 + 224) = 1;
      }

      else
      {
        v16 = *(a2 + 208);
        *(a1 + 208) = v16;
        *(a1 + 216) = *(a2 + 216);
        (**(v16 - 8))(a1 + 184, a2 + 184);
        *(a1 + 224) = 0;
      }
    }

LABEL_14:
    *(a1 + 232) = *(a2 + 232);
    v17 = *(a2 + 240);
    *(a1 + 248) = *(a2 + 248);
    *(a1 + 240) = v17;
    return a1;
  }

  if (v8 != 255)
  {
    if (v8)
    {
      *(a1 + 184) = *(a2 + 184);
      *(a1 + 192) = *(a2 + 192);
    }

    else
    {
      v15 = *(a2 + 208);
      *(a1 + 208) = v15;
      *(a1 + 216) = *(a2 + 216);
      (**(v15 - 8))(a1 + 184, a2 + 184);
    }

    *(a1 + 224) = v8 & 1;
    goto LABEL_14;
  }

  *(a1 + 184) = *(a2 + 184);
  v9 = *(a2 + 200);
  v10 = *(a2 + 216);
  v11 = *(a2 + 232);
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 232) = v11;
  *(a1 + 216) = v10;
  *(a1 + 200) = v9;
  return a1;
}

uint64_t initializeWithTake for ConditionalMetadata<>.MakeList(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  swift_weakTakeInit();
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 184) = *(a2 + 184);
  return a1;
}

uint64_t assignWithTake for ConditionalMetadata<>.MakeList(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;
  outlined consume of Material.Layer.SDFLayer.GroupLayer.Blend(v4);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);

  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);

  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);
  swift_weakTakeAssign();
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 176) = *(a2 + 176);
  if (*(a1 + 224) == 0xFF)
  {
    goto LABEL_4;
  }

  if (*(a2 + 224) == 0xFF)
  {
    outlined destroy of _ViewListOutputs(a1 + 184);
LABEL_4:
    *(a1 + 200) = *(a2 + 200);
    *(a1 + 216) = *(a2 + 216);
    *(a1 + 232) = *(a2 + 232);
    *(a1 + 248) = *(a2 + 248);
    *(a1 + 184) = *(a2 + 184);
    return a1;
  }

  if (a1 != a2)
  {
    outlined destroy of _ViewListOutputs.Views(a1 + 184);
    *(a1 + 184) = *(a2 + 184);
    *(a1 + 200) = *(a2 + 200);
    *(a1 + 209) = *(a2 + 209);
  }

  v5 = *(a2 + 240);
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 240) = v5;
  *(a1 + 248) = *(a2 + 248);
  return a1;
}

uint64_t getEnumTagSinglePayload for ConditionalMetadata<>.MakeList(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 249))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ConditionalMetadata<>.MakeList(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 248) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 249) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 249) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t assignWithCopy for UnwrapConditional(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  outlined copy of Material.Layer.SDFLayer.GroupLayer.Blend(v4);
  v6 = *(a1 + 8);
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  outlined consume of Material.Layer.SDFLayer.GroupLayer.Blend(v6);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  return a1;
}

uint64_t assignWithTake for UnwrapConditional(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);
  outlined consume of Material.Layer.SDFLayer.GroupLayer.Blend(v4);
  *(a1 + 24) = *(a2 + 24);
  return a1;
}

uint64_t getEnumTagSinglePayload for UnwrapConditional(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 40))
  {
    return (*a1 + 126);
  }

  v3 = (((*(a1 + 8) >> 57) >> 5) | (4 * ((*(a1 + 8) >> 57) & 0x18 | *(a1 + 8) & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for UnwrapConditional(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *(result + 8) = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 16) = 0;
    }
  }

  return result;
}

Swift::Int Namespace.ID.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](a1);
  return Hasher._finalize()();
}

uint64_t closure #1 in static ViewInputFlagModifier._makeInputs(modifier:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[2] = type metadata accessor for ViewInputFlagModifier(0, a2, a3, a4);
  v9[3] = a2;
  v6 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v9, a2, MEMORY[0x1E69E73E0], v6, MEMORY[0x1E69E7410], v7);
  return v9[5];
}

uint64_t View.falseInput<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for FalseViewInputBoolFlagModifier(0, v10, v12, v11);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v19 - v16;
  (*(*(a5 + 16) + 56))(a3, v15);
  (*(v7 + 32))(v17, v9, a3);
  View.modifier<A>(_:)();
  return (*(v14 + 8))(v17, v13);
}

double get_witness_table_7SwiftUI4ViewRzAA0C9InputFlagRd__r__lAA15ModifiedContentVyxAA0cdE8ModifierVyqd__GGAaBHPxAaBHD1__AhA0cH0HPyHCHCTm(uint64_t *a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t), uint64_t a3)
{
  v4 = *a1;
  v5 = a1[2];
  v6 = a2(255, a1[1], a1[3]);
  v8 = type metadata accessor for ModifiedContent(255, v4, v6, v7);
  v10[0] = v5;
  v10[1] = a3;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v8, v10);
}

double CAHostingLayer.eventBindingManager.getter()
{
  specialized CAHostingLayer.eventBindingManager.getter();

  return result;
}

double CAHostingLayer.lastRenderTime.getter@<D0>(double *a1@<X8>)
{
  result = *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x70));
  *a1 = result;
  return result;
}

double CAHostingLayer.lastRenderTime.setter(double *a1)
{
  result = *a1;
  *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x70)) = *a1;
  return result;
}

double CAHostingLayer.focusedResponder.getter()
{
  specialized CAHostingLayer.focusedResponder.getter();

  return result;
}

double key path getter for CAHostingLayer.displayLinkProvider : <A>CAHostingLayer<A>@<D0>(uint64_t (**a1)()@<X8>)
{
  v2 = specialized CAHostingLayer.displayLinkProvider.getter();
  if (v2)
  {
    v4 = v2;
    v5 = v3;
    v6 = swift_allocObject();
    v3 = v5;
    v7 = v6;
    v2 = v4;
    *(v7 + 16) = v4;
    *(v7 + 24) = v5;
    v8 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Any, @unowned Selector) -> (@owned CADisplayLink?);
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  *a1 = v8;
  a1[1] = v7;

  return outlined copy of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v2, v3);
}

double key path setter for CAHostingLayer.displayLinkProvider : <A>CAHostingLayer<A>(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Any, @in_guaranteed Selector) -> (@out CADisplayLink?);
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v1, v2);
  return CAHostingLayer.displayLinkProvider.setter(v4, v3);
}

uint64_t CAHostingLayer.displayLinkProvider.getter()
{
  v0 = specialized CAHostingLayer.displayLinkProvider.getter();
  outlined copy of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v0, v1);
  return v0;
}

double CAHostingLayer.displayLinkProvider.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0x90));
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v6, v7);
}

id CAHostingLayer.__allocating_init(rootView:environment:)(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v6 = objc_allocWithZone(v3);
  v7 = specialized CAHostingLayer.init(rootView:environment:)(a1, a2);
  (*(*(*(v3 + 10) - 8) + 8))(a1);
  return v7;
}

id CAHostingLayer.init(rootView:environment:)(uint64_t a1, uint64_t *a2)
{
  v4 = *v2;
  v5 = *MEMORY[0x1E69E7D40];
  v6 = specialized CAHostingLayer.init(rootView:environment:)(a1, a2);
  (*(*(*((v5 & v4) + 0x50) - 8) + 8))(a1);
  return v6;
}

void *CAHostingLayer.init(layer:)(void *a1)
{
  v2 = v1;
  v28 = a1;
  v3 = *v1;
  v4 = MEMORY[0x1E69E7D40];
  v5 = *MEMORY[0x1E69E7D40];
  v6 = type metadata accessor for ContinuousClock.Instant();
  v26 = *(v6 - 8);
  v27 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *((v5 & v3) + 0x50);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - v12;
  v14 = *((v5 & v3) + 0x68);
  type metadata accessor for EventBindingManager();
  v15 = swift_allocObject();
  *(v15 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v15 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v15 + 48) = MEMORY[0x1E69E7CC8];
  *(v15 + 56) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_AC0E7BindingVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v15 + 64) = 0;
  *(v15 + 72) = 0;
  *(v2 + v14) = v15;
  *(v2 + *((*v4 & *v2) + 0x70)) = 0;
  *(v2 + *((*v4 & *v2) + 0x78)) = 0;
  *(v2 + *((*v4 & *v2) + 0x80)) = 0;
  *(v2 + *((*v4 & *v2) + 0x88)) = 0;
  v16 = (v2 + *((*v4 & *v2) + 0x90));
  *v16 = 0;
  v16[1] = 0;
  v17 = *((*v4 & *v2) + 0xB0);
  v18 = type metadata accessor for CAHostingLayerEvent.Context(0);
  (*(*(v18 - 8) + 56))(v2 + v17, 1, 1, v18);
  outlined init with copy of Any(v28, v31);
  v19 = *((v5 & v3) + 0x58);
  v21 = type metadata accessor for CAHostingLayer(0, v9, v19, v20);
  if (swift_dynamicCast())
  {
    v22 = v30;
    CAHostingLayer.rootView.getter(v13);
    (*(v10 + 32))(v2 + *((*v4 & *v2) + 0x98), v13, v9);
    CAHostingLayer.environment.getter(v31);
    *(v2 + *((*v4 & *v2) + 0xA0)) = *v31;
    static ContinuousClock.Instant.now.getter();
    (*(v26 + 32))(v2 + *((*v4 & *v2) + 0xA8), v8, v27);
    specialized static Update.begin()();
    type metadata accessor for ViewGraphHost();
    v23 = type metadata accessor for CALayerPlatformViewDefinition();
    *(v2 + *((*v4 & *v2) + 0x60)) = ViewGraphHost.__allocating_init<A>(rootViewType:viewDefinition:)(v9, v23, v9, v19);
    v29.receiver = v2;
    v29.super_class = v21;
    v24 = objc_msgSendSuper2(&v29, sel_initWithLayer_, v22);
    CAHostingLayer.postInit()();
    static Update.end()();

    __swift_destroy_boxed_opaque_existential_1(v28);
    return v24;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void *@objc CAHostingLayer.init(layer:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  return CAHostingLayer.init(layer:)(v4);
}

uint64_t CAHostingLayer.postInit()()
{
  v1 = v0;
  v2 = MEMORY[0x1E69E7D40];
  v3 = *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x60));
  swift_beginAccess();
  *(v3 + 24) = &protocol witness table for CAHostingLayer<A>;
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  *(v3 + 40) = &protocol witness table for CAHostingLayer<A>;
  swift_unknownObjectWeakAssign();
  ViewGraphHost.setUp()();
  v4 = *(v1 + *((*v2 & *v1) + 0x68));
  swift_beginAccess();
  *(v4 + 24) = &protocol witness table for CAHostingLayer<A>;
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  *(v4 + 40) = &protocol witness table for CAHostingLayer<A>;
  return swift_unknownObjectWeakAssign();
}

id CAHostingLayer.__deallocating_deinit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for CAHostingLayer(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), *((*MEMORY[0x1E69E7D40] & *v4) + 0x58), a4);

  v6 = v4;
  specialized ViewGraphHost.tearDown(delegate:)();

  ViewGraphHost.clearDisplayLink()();

  ViewGraphHost.clearUpdateTimer()();

  v8.receiver = v6;
  v8.super_class = v5;
  return objc_msgSendSuper2(&v8, sel_dealloc);
}

uint64_t @objc CAHostingLayer.__ivar_destroyer(char *a1)
{
  v2 = MEMORY[0x1E69E7D40];
  v3 = *a1;
  v4 = *MEMORY[0x1E69E7D40];

  v5 = &a1[*((*v2 & *a1) + 0x90)];
  v6 = outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(*v5, v5[1]);
  (*(*(*((v4 & v3) + 0x50) - 8) + 8))(&a1[*((*v2 & *a1) + 0x98)], v6);

  v7 = *((*v2 & *a1) + 0xA8);
  v8 = type metadata accessor for ContinuousClock.Instant();
  (*(*(v8 - 8) + 8))(&a1[v7], v8);
  v9 = &a1[*((*v2 & *a1) + 0xB0)];

  return outlined destroy of CAHostingLayerEvent.Context?(v9);
}

double @objc CAHostingLayer.bounds.getter(void *a1)
{
  v1 = a1;
  CAHostingLayer.bounds.getter(v1, v2, v3, v4);
  v6 = v5;

  return v6;
}

id CAHostingLayer.bounds.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for CAHostingLayer(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), *((*MEMORY[0x1E69E7D40] & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_bounds);
}

void @objc CAHostingLayer.bounds.setter(void *a1, double a2, double a3, double a4, double a5)
{
  v12 = a1;
  CAHostingLayer.bounds.setter(a2, a3, a4, a5, v12, v9, v10, v11);
}

void *CAHostingLayer.bounds.setter(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = type metadata accessor for CAHostingLayer(0, *((*MEMORY[0x1E69E7D40] & *v8) + 0x50), *((*MEMORY[0x1E69E7D40] & *v8) + 0x58), a8);
  v21.receiver = v8;
  v21.super_class = v13;
  objc_msgSendSuper2(&v21, sel_bounds);
  v15 = v14;
  v17 = v16;
  v20.receiver = v8;
  v20.super_class = v13;
  result = objc_msgSendSuper2(&v20, sel_setBounds_, a1, a2, a3, a4);
  if (v15 != a3 || v17 != a4)
  {
    return ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)(8u, 0, v13, &protocol witness table for CAHostingLayer<A>);
  }

  return result;
}

double @objc CAHostingLayer.contentsScale.getter(void *a1)
{
  v1 = a1;
  CAHostingLayer.contentsScale.getter(v1, v2, v3, v4);
  v6 = v5;

  return v6;
}

id CAHostingLayer.contentsScale.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for CAHostingLayer(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), *((*MEMORY[0x1E69E7D40] & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_contentsScale);
}

void @objc CAHostingLayer.contentsScale.setter(void *a1, double a2)
{
  v6 = a1;
  CAHostingLayer.contentsScale.setter(a2, v6, v3, v4, v5);
}

void *CAHostingLayer.contentsScale.setter(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for CAHostingLayer(0, *((*MEMORY[0x1E69E7D40] & *v5) + 0x50), *((*MEMORY[0x1E69E7D40] & *v5) + 0x58), a5);
  v12.receiver = v5;
  v12.super_class = v7;
  objc_msgSendSuper2(&v12, sel_contentsScale);
  v9 = v8;
  v11.receiver = v5;
  v11.super_class = v7;
  objc_msgSendSuper2(&v11, sel_setContentsScale_, a1);
  return CAHostingLayer.contentsScale.didset(v9);
}

void *CAHostingLayer.contentsScale.didset(double a1)
{
  v3 = *MEMORY[0x1E69E7D40] & *v1;
  result = [v1 contentsScale];
  if (v6 != a1)
  {
    v7 = type metadata accessor for CAHostingLayer(0, *(v3 + 80), *(v3 + 88), v5);

    return ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)(2u, 1, v7, &protocol witness table for CAHostingLayer<A>);
  }

  return result;
}

Swift::Void __swiftcall CAHostingLayer.layoutSublayers()()
{
  v1 = v0;
  v2 = *v0;
  v3 = MEMORY[0x1E69E7D40];
  v4 = *MEMORY[0x1E69E7D40];
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v41 = *(v5 - 8);
  v42 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v39 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for DispatchQoS();
  v38 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v37 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for DispatchTime();
  v36 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v32 - v11;
  v13 = *((v4 & v2) + 0x50);
  v14 = *((v4 & v2) + 0x58);
  v16 = type metadata accessor for CAHostingLayer(0, v13, v14, v15);
  v51.receiver = v1;
  v51.super_class = v16;
  objc_msgSendSuper2(&v51, sel_layoutSublayers);
  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  v17 = static Update._lock;
  _MovableLockLock(static Update._lock);
  v18 = *(v1 + *((*v3 & *v1) + 0x60));
  _MovableLockLock(v17);
  v19 = *(v18 + 136);
  if (v19)
  {
    *(v19 + OBJC_IVAR____TtC7SwiftUI20ViewGraphDisplayLink_nextThread) = 0;
  }

  _MovableLockUnlock(v17);
  v20 = CACurrentMediaTime();
  v21 = *(v18 + 136);
  if (!v21 || (v22 = *(v21 + OBJC_IVAR____TtC7SwiftUI20ViewGraphDisplayLink_nextUpdate), v23 = 0.0, v22 >= INFINITY) && v22 <= INFINITY)
  {
    aBlock = v20;
    v23 = CAHostingLayer.renderInterval(timestamp:)(&aBlock);
  }

  *(v1 + *((*v3 & *v1) + 0x78)) = 1;
  aBlock = 0.0;
  LOBYTE(v45) = 1;
  p_aBlock = &aBlock;
  ViewGraphRootValueUpdater.render(interval:updateDisplayList:targetTimestamp:)(v23, 1, *&v22);
  *(v1 + *((*v3 & *v1) + 0x78)) = 0;
  if (*(v1 + *((*v3 & *v1) + 0x80)) == 1)
  {
    v50 = v1;
    UncheckedSendable.init(_:)(&v50, v16, &aBlock);
    v33 = aBlock;
    type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
    v35 = v1;
    v34 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    + infix(_:_:)();
    v36 = *(v36 + 8);
    (v36)(v9, v43);
    v25 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v26 = swift_allocObject();
    *(v26 + 2) = v13;
    *(v26 + 3) = v14;
    *(v26 + 4) = v25;
    v26[5] = v20;
    v48 = partial apply for closure #2 in CAHostingLayer.layoutSublayers();
    v49 = v26;
    aBlock = MEMORY[0x1E69E9820];
    v45 = 1107296256;
    v46 = thunk for @escaping @callee_guaranteed () -> ();
    v47 = &block_descriptor_4;
    v27 = _Block_copy(&aBlock);

    v28 = v37;
    static DispatchQoS.unspecified.getter();
    aBlock = MEMORY[0x1E69E7CC0];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    type metadata accessor for [DispatchWorkItemFlags](0, &lazy cache variable for type metadata for [DispatchWorkItemFlags], MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    v29 = v39;
    v30 = v42;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v31 = v34;
    MEMORY[0x193ABFB50](v12, v28, v29, v27);
    _Block_release(v27);

    (*(v41 + 8))(v29, v30);
    (*(v38 + 8))(v28, v40);
    (v36)(v12, v43);
    *(v35 + *((*MEMORY[0x1E69E7D40] & *v35) + 0x80)) = 0;
  }

  _MovableLockUnlock(v17);
}

double CAHostingLayer.renderInterval(timestamp:)(double *a1)
{
  v2 = *a1;
  v3 = MEMORY[0x1E69E7D40];
  v4 = *MEMORY[0x1E69E7D40] & *v1;
  v5 = *(v4 + 0x70);
  v6 = *(v1 + v5);
  if (v6 == 0.0 || v2 < v6)
  {
    *(v1 + v5) = v2 + -0.000001;
    v4 = *v3 & *v1;
  }

  v8 = *(v4 + 112);
  result = v2 - *(v1 + v8);
  *(v1 + v8) = v2;
  return result;
}

void closure #2 in CAHostingLayer.layoutSublayers()(uint64_t a1, double a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = CACurrentMediaTime() - a2;
    v6 = MEMORY[0x1E69E7D40];
    v7 = *(v4 + *((*MEMORY[0x1E69E7D40] & *v4) + 0x60));
    swift_beginAccess();
    v8 = v5 + *(v7 + 104);
    v9 = *(v4 + *((*v6 & *v4) + 0x60));
    swift_beginAccess();
    *(v9 + 104) = v8;
    CAHostingLayer.setNeedsUpdate()();
  }
}

double CAHostingLayer.currentTimestamp.getter@<D0>(double *a1@<X8>)
{
  v3 = *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x60));
  swift_beginAccess();
  result = *(v3 + 104);
  *a1 = result;
  return result;
}

void CAHostingLayer.currentTimestamp.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x60));
  swift_beginAccess();
  *(v3 + 104) = v2;
}

Swift::Void __swiftcall CAHostingLayer.setNeedsUpdate()()
{
  v1 = *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x60));
  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  v2 = static Update._lock;
  _MovableLockLock(static Update._lock);
  v3 = *(v1 + 136);
  if (v3)
  {
    *(v3 + OBJC_IVAR____TtC7SwiftUI20ViewGraphDisplayLink_nextThread) = 0;
  }

  _MovableLockUnlock(v2);

  [v0 setNeedsLayout];
}

void @objc CAHostingLayer.layoutSublayers()(void *a1)
{
  v1 = a1;
  CAHostingLayer.layoutSublayers()();
}

uint64_t CAHostingLayer.rootView.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x98);
  swift_beginAccess();
  return (*(*(*((v4 & v3) + 0x50) - 8) + 16))(a1, &v1[v5]);
}

uint64_t CAHostingLayer.rootView.setter(uint64_t a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  specialized CAHostingLayer.rootView.setter(a1);
  v5 = *(*(*((v4 & v3) + 0x50) - 8) + 8);

  return v5(a1);
}

void (*CAHostingLayer.rootView.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return CAHostingLayer.rootView.modify;
}

void *key path setter for CAHostingLayer.environment : <A>CAHostingLayer<A>(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v4[0] = v2;
  v4[1] = v1;

  return CAHostingLayer.environment.setter(v4);
}

void *CAHostingLayer.rootView.didset(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for CAHostingLayer(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), *((*MEMORY[0x1E69E7D40] & *v4) + 0x58), a4);

  return ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)(a1, 1, v6, &protocol witness table for CAHostingLayer<A>);
}

double CAHostingLayer.environment.getter@<D0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0xA0));
  swift_beginAccess();
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;

  return result;
}

void *CAHostingLayer.environment.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0xA0));
  swift_beginAccess();
  *v4 = v2;
  v4[1] = v3;

  return CAHostingLayer.rootView.didset(2u, v5, v6, v7);
}

void (*CAHostingLayer.environment.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return CAHostingLayer.environment.modify;
}

void CAHostingLayer.rootView.modify(uint64_t a1, char a2, unsigned int a3)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    CAHostingLayer.rootView.didset(a3, v5, v6, v7);
  }
}

double CAHostingLayer.sizeThatFits(_:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  v9 = type metadata accessor for CAHostingLayer(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), *((*MEMORY[0x1E69E7D40] & *v4) + 0x58), a4);

  return ViewGraphRootValueUpdater._sizeThatFits(_:)(a1, a2 & 1, a3, v5 & 1, v9, &protocol witness table for CAHostingLayer<A>);
}

double CAHostingLayer.observeSizeThatFitsChanges(proposal:handler:)(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v13 = *(*(v6 + *((*MEMORY[0x1E69E7D40] & *v6) + 0x60)) + 88);
  v14 = swift_allocObject();
  *(v14 + 16) = a5;
  *(v14 + 24) = a6;
  swift_beginAccess();
  type metadata accessor for ViewGraphGeometryObservers<SizeThatFitsMeasurer>.Observer(0);
  v15 = swift_allocObject();
  *(v15 + 16) = 0u;
  *(v15 + 32) = 0u;
  *(v15 + 48) = 2;
  *(v15 + 56) = partial apply for closure #1 in ViewGraphHost.observeSizeThatFitsChanges(proposal:handler:);
  *(v15 + 64) = v14;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *(v13 + 352);
  *(v13 + 352) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v15, a1, a2 & 1, a3, a4 & 1, isUniquelyReferenced_nonNull_native);
  *(v13 + 352) = v18;
  swift_endAccess();

  return result;
}

double CAHostingLayer.viewGraph.getter()
{
  specialized CAHostingLayer.viewGraph.getter();

  return result;
}

double CAHostingLayer.stopObservingSizeThatFitsChanges(proposal:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  swift_beginAccess();

  specialized ViewGraphGeometryObservers.stopObserving(proposal:)(a1, a2 & 1, a3, a4 & 1);
  swift_endAccess();

  return result;
}

uint64_t CAHostingLayer.referenceInstant.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xA8);
  v4 = type metadata accessor for ContinuousClock.Instant();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, &v1[v3], v4);
}

void CAHostingLayer.eventContext.getter(uint64_t a1@<X8>)
{
  type metadata accessor for [DispatchWorkItemFlags](0, &lazy cache variable for type metadata for CAHostingLayerEvent.Context?, type metadata accessor for CAHostingLayerEvent.Context, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16[-v7];
  v9 = MEMORY[0x1E69E7D40];
  v10 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xB0);
  swift_beginAccess();
  outlined init with copy of CAHostingLayerEvent.Context?(&v1[v10], v8);
  v11 = type metadata accessor for CAHostingLayerEvent.Context(0);
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v8, 1, v11) == 1)
  {
    outlined destroy of CAHostingLayerEvent.Context?(v8);
    v13 = *((*v9 & *v1) + 0xA8);
    v14 = type metadata accessor for ContinuousClock.Instant();
    (*(*(v14 - 8) + 16))(a1, &v1[v13], v14);
    v15 = (a1 + *(v11 + 20));
    *v15 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI19CAHostingLayerEventV11MouseButtonV_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v15[1] = 1000;
    v15[2] = MEMORY[0x1E69E7CD0];
    outlined init with copy of CAHostingLayerEvent.Context(a1, v5);
    (*(v12 + 56))(v5, 0, 1, v11);
    swift_beginAccess();
    outlined assign with take of CAHostingLayerEvent.Context?(v5, &v1[v10]);
    swift_endAccess();
  }

  else
  {
    outlined init with take of CAHostingLayerEvent.Context(v8, a1);
  }
}

double CAHostingLayer.eventContext.setter(uint64_t a1)
{
  type metadata accessor for [DispatchWorkItemFlags](0, &lazy cache variable for type metadata for CAHostingLayerEvent.Context?, type metadata accessor for CAHostingLayerEvent.Context, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v9 - v4;
  outlined init with take of CAHostingLayerEvent.Context(a1, &v9 - v4);
  v6 = type metadata accessor for CAHostingLayerEvent.Context(0);
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
  v7 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xB0);
  swift_beginAccess();
  outlined assign with take of CAHostingLayerEvent.Context?(v5, v1 + v7);
  swift_endAccess();
  return result;
}

void CAHostingLayer.send(event:)(uint64_t (**a1)(char *))
{
  v2 = v1;
  v4 = type metadata accessor for CAHostingLayerEvent.Context(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  CAHostingLayer.eventContext.getter(v6);
  v8 = v7(v6);
  CAHostingLayer.eventContext.setter(v6);
  v24[5] = MEMORY[0x1E69E7CC0];
  v9 = *(v8 + 16);
  v10 = *MEMORY[0x1E69E7D40] & *v2;
  v20 = v2;
  v21 = *(v10 + 104);
  if (v9)
  {
    v11 = 0;
    v12 = v8 + 32;
    v19 = xmmword_18DDA6EB0;
    while (v11 < *(v8 + 16))
    {
      outlined init with copy of CAHostingLayerEvent.Resolved(v12, &v23);
      outlined init with copy of AnyTrackedValue(v24, v22);
      __swift_project_boxed_opaque_existential_1(v22, v22[3]);
      DynamicType = swift_getDynamicType();
      __swift_destroy_boxed_opaque_existential_1(v22);
      v15 = v23;
      type metadata accessor for [DispatchWorkItemFlags](0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(EventID, EventType)>, type metadata accessor for (EventID, EventType), MEMORY[0x1E69E6F90]);
      inited = swift_initStackObject();
      *(inited + 16) = v19;
      *(inited + 32) = DynamicType;
      *(inited + 40) = v15;
      outlined init with copy of AnyTrackedValue(v24, inited + 48);
      outlined destroy of CAHostingLayerEvent.Resolved(&v23);
      v17 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_AC0E4Type_pTt0g5Tf4g_n(inited);
      swift_setDeallocating();
      outlined destroy of (EventID, EventType)(inited + 32);
      swift_weakInit();
      if (one-time initialization token for _lock != -1)
      {
        swift_once();
      }

      v18 = static Update._lock;
      _MovableLockLock(static Update._lock);
      specialized static Update.begin()();
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        v13 = EventBindingManager.sendDownstream(_:)(v17);
      }

      else
      {
        v13 = MEMORY[0x1E69E7CD0];
      }

      ++v11;
      static Update.end()();
      _MovableLockUnlock(v18);

      swift_weakDestroy();
      specialized Array.append<A>(contentsOf:)(v13);
      v12 += 48;
      if (v9 == v11)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:
  }
}

void CAHostingLayer.didUpdate(phase:in:)(_BYTE *a1)
{
  v1 = a1[1];
  if (v1 == 2 || v1 == 3 && !*a1)
  {
    EventBindingManager.reset(resetForwardedEventDispatchers:)(0);
  }
}

id CAHostingLayer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

double protocol witness for EventGraphHost.eventBindingManager.getter in conformance CAHostingLayer<A>()
{
  specialized CAHostingLayer.eventBindingManager.getter();

  return result;
}

double protocol witness for EventGraphHost.focusedResponder.getter in conformance CAHostingLayer<A>()
{
  specialized CAHostingLayer.focusedResponder.getter();

  return result;
}

void protocol witness for EventBindingManagerDelegate.didUpdate(phase:in:) in conformance CAHostingLayer<A>(_BYTE *a1)
{
  v1 = a1[1];
  if (v1 == 2 || v1 == 3 && !*a1)
  {
    EventBindingManager.reset(resetForwardedEventDispatchers:)(0);
  }
}

uint64_t CAHostingLayer.as<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v4 = v3;
  v19 = a1;
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18 - v9;
  v11 = *(a2 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v13);
  ViewGraphHost.as<A>(_:)(a2, v10);
  if ((*(v11 + 48))(v10, 1, a2) != 1)
  {
    v17 = *(v11 + 32);
    v17(&v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10, a2);
    v17(a3, &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
LABEL_19:
    v16 = 0;
    return (*(v11 + 56))(a3, v16, 1, a2);
  }

  (*(v8 + 8))(v10, v7);
  result = type metadata accessor for CustomAttributeWriter(0, &lazy cache variable for type metadata for ViewGraphRenderDelegate, &protocol descriptor for ViewGraphRenderDelegate, 0);
  if (result == a2)
  {
    v20 = v3;
    v21 = &protocol witness table for CAHostingLayer<A>;
    if (v12 == 16)
    {
      goto LABEL_18;
    }

    __break(1u);
    goto LABEL_11;
  }

  result = type metadata accessor for CAMediaTimingFunction(0, lazy cache variable for type metadata for CALayer, 0x1E6979398);
  v15 = v19;
  if (result == v19)
  {
LABEL_11:
    v20 = v4;
    if (v12 == 8)
    {
      goto LABEL_18;
    }

    __break(1u);
    goto LABEL_13;
  }

  result = type metadata accessor for CustomAttributeWriter(0, &lazy cache variable for type metadata for ViewRendererHost, &protocol descriptor for ViewRendererHost, 0);
  if (result == v15)
  {
LABEL_13:
    v20 = v4;
    v21 = &protocol witness table for CAHostingLayer<A>;
    if (v12 == 16)
    {
      goto LABEL_18;
    }

    __break(1u);
    goto LABEL_15;
  }

  result = type metadata accessor for CustomAttributeWriter(0, &lazy cache variable for type metadata for EventGraphHost, &protocol descriptor for EventGraphHost, 0);
  if (result == v15)
  {
LABEL_15:
    v20 = v4;
    v21 = &protocol witness table for CAHostingLayer<A>;
    if (v12 != 16)
    {
      __break(1u);
      goto LABEL_17;
    }

LABEL_18:
    (*(v11 + 16))(a3, &v20, a2);
    goto LABEL_19;
  }

  result = type metadata accessor for CustomAttributeWriter(0, &lazy cache variable for type metadata for ViewGraphDelegate, &protocol descriptor for ViewGraphDelegate, 0);
  if (result != a2)
  {
    v16 = 1;
    return (*(v11 + 56))(a3, v16, 1, a2);
  }

LABEL_17:
  v20 = v4;
  v21 = &protocol witness table for CAHostingLayer<A>;
  if (v12 == 16)
  {
    goto LABEL_18;
  }

  __break(1u);
  return result;
}

void (*CAHostingLayer.currentTimestamp.modify(uint64_t *a1))(char **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x60));
  swift_beginAccess();
  *(v4 + 72) = *(v5 + 104);
  return CAHostingLayer.currentTimestamp.modify;
}

void CAHostingLayer.currentTimestamp.modify(char **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 9);
  v4 = *(*(*a1 + 10) + *((*MEMORY[0x1E69E7D40] & **(*a1 + 10)) + 0x60));
  swift_beginAccess();
  *(v4 + 104) = v3;

  free(v2);
}

uint64_t CAHostingLayer.valuesNeedingUpdate.getter()
{
  v1 = *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x60));
  swift_beginAccess();
  return *(v1 + 112);
}

void CAHostingLayer.valuesNeedingUpdate.setter(__int16 a1)
{
  v3 = *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x60));
  swift_beginAccess();
  *(v3 + 112) = a1;
}

void (*CAHostingLayer.valuesNeedingUpdate.modify(uint64_t *a1))(char **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x60));
  swift_beginAccess();
  *(v4 + 80) = *(v5 + 112);
  return CAHostingLayer.valuesNeedingUpdate.modify;
}

void CAHostingLayer.valuesNeedingUpdate.modify(char **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  v4 = *(*(*a1 + 9) + *((*MEMORY[0x1E69E7D40] & **(*a1 + 9)) + 0x60));
  swift_beginAccess();
  *(v4 + 112) = v3;

  free(v2);
}

void CAHostingLayer.renderingPhase.getter(_BYTE *a1@<X8>)
{
  v3 = *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x60));
  swift_beginAccess();
  *a1 = *(v3 + 114);
}

void CAHostingLayer.renderingPhase.setter(char *a1)
{
  v2 = *a1;
  v3 = *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x60));
  swift_beginAccess();
  *(v3 + 114) = v2;
}

void (*CAHostingLayer.renderingPhase.modify(uint64_t *a1))(char **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x60));
  swift_beginAccess();
  *(v4 + 80) = *(v5 + 114);
  return CAHostingLayer.renderingPhase.modify;
}

void CAHostingLayer.renderingPhase.modify(char **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[80];
  v4 = *(*(*a1 + 9) + *((*MEMORY[0x1E69E7D40] & **(*a1 + 9)) + 0x60));
  swift_beginAccess();
  *(v4 + 114) = v3;

  free(v2);
}

uint64_t CAHostingLayer.externalUpdateCount.getter()
{
  v1 = *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x60));
  swift_beginAccess();
  return *(v1 + 120);
}

void CAHostingLayer.externalUpdateCount.setter(uint64_t a1)
{
  v3 = *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x60));
  swift_beginAccess();
  *(v3 + 120) = a1;
}

void (*CAHostingLayer.externalUpdateCount.modify(uint64_t *a1))(char **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + 0x60));
  swift_beginAccess();
  *(v4 + 72) = *(v5 + 120);
  return CAHostingLayer.externalUpdateCount.modify;
}

void CAHostingLayer.externalUpdateCount.modify(char **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 9);
  v4 = *(*(*a1 + 10) + *((*MEMORY[0x1E69E7D40] & **(*a1 + 10)) + 0x60));
  swift_beginAccess();
  *(v4 + 120) = v3;

  free(v2);
}

Swift::Void __swiftcall CAHostingLayer.updateRootView()()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  v3 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  v4 = *(v3 - 8);
  (MEMORY[0x1EEE9AC00])();
  v6 = &v12 - v5;
  CAHostingLayer.rootView.getter(&v12 - v5);
  ViewGraphHost.setRootView<A>(_:)(v6, v3, *((v2 & v1) + 0x58), v7, v8, v9, v10, v11);
  (*(v4 + 8))(v6, v3);
}

Swift::Void __swiftcall CAHostingLayer.updateEnvironment()()
{
  [v0 contentsScale];
  v2 = v1;
  v3 = v15;

  v5 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA012DisplayScaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v4);
  if (v5)
  {
    value = v3;
    if (v2 == v5[9])
    {
      v7 = v16;
      if (!v16)
      {
        goto LABEL_6;
      }

      goto LABEL_4;
    }
  }

  type metadata accessor for TypedElement<EnvironmentPropertyKey<DisplayScaleKey>>(0);
  *(swift_allocObject() + 72) = v2;
  type metadata accessor for EnvironmentPropertyKey<DisplayScaleKey>(0, v8, v9, v10);
  value = PropertyList.Element.init(keyType:before:after:)(v11, 0, v3).value;
  v7 = v16;
  if (v16)
  {
LABEL_4:
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA012DisplayScaleK033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Ttg5(v3, value);
  }

LABEL_6:

  v14[1] = v7;
  v12 = objc_allocWithZone(type metadata accessor for ViewGraphHostEnvironmentWrapper());

  v13 = [v12 init];
  ViewGraphHost.setEnvironment(_:wrapper:)(v14, v13);
}

Swift::Void __swiftcall CAHostingLayer.requestUpdate(after:)(Swift::Double after)
{
  v3 = MEMORY[0x1E69E7D40];
  v4 = *MEMORY[0x1E69E7D40] & *v1;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v27 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v26 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  v11 = static Update._lock;
  _MovableLockLock(static Update._lock);
  if (after == 0.0)
  {
    v12 = *(v1 + *((*v3 & *v1) + 0x60));
    v13 = *(v12 + 88);
    swift_beginAccess();
    if (*(v13 + 168) != 1 || (v14 = *(v12 + 136)) == 0 || *(v14 + OBJC_IVAR____TtC7SwiftUI20ViewGraphDisplayLink_nextUpdate) == INFINITY)
    {
      if (![objc_opt_self() isMainThread])
      {
        v33 = v1;
        v17 = *(v4 + 80);
        v18 = *(v4 + 88);
        v19 = type metadata accessor for CAHostingLayer(0, v17, v18, v16);
        UncheckedSendable.init(_:)(&v33, v19, aBlock);
        v20 = aBlock[0];
        type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
        v21 = v1;
        v22 = static OS_dispatch_queue.main.getter();
        v23 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v24 = swift_allocObject();
        v24[2] = v17;
        v24[3] = v18;
        v24[4] = v23;
        v31 = partial apply for closure #1 in CAHostingLayer.requestUpdate(after:);
        v32 = v24;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        v29 = thunk for @escaping @callee_guaranteed () -> ();
        v30 = &block_descriptor_13;
        v25 = _Block_copy(aBlock);

        static DispatchQoS.unspecified.getter();
        aBlock[0] = MEMORY[0x1E69E7CC0];
        _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
        type metadata accessor for [DispatchWorkItemFlags](0, &lazy cache variable for type metadata for [DispatchWorkItemFlags], MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
        lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
        dispatch thunk of SetAlgebra.init<A>(_:)();
        MEMORY[0x193ABFB70](0, v10, v7, v25);
        _Block_release(v25);

        (*(v27 + 8))(v7, v5);
        (*(v26 + 8))(v10, v8);
        goto LABEL_14;
      }

      goto LABEL_11;
    }
  }

  if (after >= 0.25)
  {
    ViewGraphHost.startUpdateTimer(delay:)(after);
    goto LABEL_14;
  }

  v15 = *((*v3 & *v1) + 0x90);
  swift_beginAccess();
  if (!*(v1 + v15))
  {
    if (*(v1 + *((*v3 & *v1) + 0x78)))
    {
      *(v1 + *((*v3 & *v1) + 0x80)) = 1;
      goto LABEL_14;
    }

LABEL_11:
    CAHostingLayer.setNeedsUpdate()();
    goto LABEL_14;
  }

  v29 = v1;
  ViewGraphHost.startDisplayLink(delay:makeCADisplayLink:)(partial apply for closure #1 in CAHostingLayer.startDisplayLink(delay:), after);
LABEL_14:
  _MovableLockUnlock(v11);
}

void closure #1 in CAHostingLayer.requestUpdate(after:)(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    CAHostingLayer.setNeedsUpdate()();
  }
}

uint64_t closure #1 in CAHostingLayer.startDisplayLink(delay:)(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3 + *((*MEMORY[0x1E69E7D40] & *a3) + 0x90);
  swift_beginAccess();
  v6 = *v5;
  if (!*v5)
  {
    return 0;
  }

  v7 = *(v5 + 1);
  v8 = outlined copy of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v6, v7);
  v9 = v6(a1, a2, v8);
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v6, v7);
  result = v9;
  if (!v9)
  {
    return 0;
  }

  return result;
}

double protocol witness for ViewGraphOwner.viewGraph.getter in conformance CAHostingLayer<A>()
{
  specialized CAHostingLayer.viewGraph.getter();

  return result;
}

uint64_t (*protocol witness for ViewGraphOwner.currentTimestamp.modify in conformance CAHostingLayer<A>(uint64_t **a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = CAHostingLayer.currentTimestamp.modify(v2);
  return protocol witness for MutableCollection.subscript.modify in conformance ArrayWith2Inline<A>;
}

uint64_t (*protocol witness for ViewGraphOwner.valuesNeedingUpdate.modify in conformance CAHostingLayer<A>(uint64_t **a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = CAHostingLayer.valuesNeedingUpdate.modify(v2);
  return protocol witness for MutableCollection.subscript.modify in conformance ArrayWith2Inline<A>;
}

void (*protocol witness for ViewGraphOwner.renderingPhase.modify in conformance CAHostingLayer<A>(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = CAHostingLayer.renderingPhase.modify(v2);
  return protocol witness for Animatable.animatableData.modify in conformance LinearGradient.AbsolutePaint;
}

uint64_t (*protocol witness for ViewGraphOwner.externalUpdateCount.modify in conformance CAHostingLayer<A>(uint64_t **a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = CAHostingLayer.externalUpdateCount.modify(v2);
  return protocol witness for MutableCollection.subscript.modify in conformance ArrayWith2Inline<A>;
}

uint64_t CAHostingLayer.preferenceValue<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  v10 = type metadata accessor for CAHostingLayer(0, *((*MEMORY[0x1E69E7D40] & *v5) + 0x50), *((*MEMORY[0x1E69E7D40] & *v5) + 0x58), a5);

  return ViewGraphRootValueUpdater._preferenceValue<A>(_:)(a1, v10, a2, &protocol witness table for CAHostingLayer<A>, a3, a4);
}

void closure #1 in CAHostingLayer.convertAnchor<A>(_:)(uint64_t a1, void *a2)
{

  Value = AGGraphGetValue();
  v4 = *Value;
  v5 = *(Value + 8);

  v6 = *(Value + 32);
  v7 = *(Value + 16);

  *&v8[0] = v4;
  *(&v8[0] + 1) = v5;
  v8[1] = v7;
  v8[2] = v6;
  Anchor.convert(to:)(v8, a1);
}

double CAHostingLayer.renderingRootView.getter()
{
  specialized CAHostingLayer.renderingRootView.getter();

  swift_unknownObjectRetain();
  return result;
}

id CAHostingLayer.updateRenderContext(_:)(void *a1)
{
  result = [v1 contentsScale];
  *a1 = v4;
  return result;
}

double protocol witness for ViewGraphRenderDelegate.renderingRootView.getter in conformance CAHostingLayer<A>()
{
  specialized CAHostingLayer.renderingRootView.getter();

  swift_unknownObjectRetain();
  return result;
}

uint64_t specialized CAHostingLayer.displayLinkProvider.getter()
{
  v1 = v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x90);
  swift_beginAccess();
  return *v1;
}

id specialized CAHostingLayer.init(rootView:environment:)(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v28 = a1;
  v5 = *v2;
  v6 = MEMORY[0x1E69E7D40];
  v7 = *MEMORY[0x1E69E7D40];
  v8 = type metadata accessor for ContinuousClock.Instant();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a2;
  v27 = a2[1];
  v13 = *((v7 & v5) + 0x68);
  type metadata accessor for EventBindingManager();
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v14 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v14 + 48) = MEMORY[0x1E69E7CC8];
  *(v14 + 56) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_AC0E7BindingVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v14 + 64) = 0;
  *(v14 + 72) = 0;
  *(v3 + v13) = v14;
  *(v3 + *((*v6 & *v3) + 0x70)) = 0;
  *(v3 + *((*v6 & *v3) + 0x78)) = 0;
  *(v3 + *((*v6 & *v3) + 0x80)) = 0;
  *(v3 + *((*v6 & *v3) + 0x88)) = 0;
  v15 = (v3 + *((*v6 & *v3) + 0x90));
  *v15 = 0;
  v15[1] = 0;
  v16 = *((*v6 & *v3) + 0xB0);
  v17 = type metadata accessor for CAHostingLayerEvent.Context(0);
  (*(*(v17 - 8) + 56))(v3 + v16, 1, 1, v17);
  v18 = *((v7 & v5) + 0x50);
  (*(*(v18 - 8) + 16))(v3 + *((*v6 & *v3) + 0x98), v28, v18);
  v19 = (v3 + *((*v6 & *v3) + 0xA0));
  v20 = v27;
  *v19 = v12;
  v19[1] = v20;
  static ContinuousClock.Instant.now.getter();
  (*(v9 + 32))(v3 + *((*v6 & *v3) + 0xA8), v11, v8);
  specialized static Update.begin()();
  type metadata accessor for ViewGraphHost();
  v21 = type metadata accessor for CALayerPlatformViewDefinition();
  v22 = *((v7 & v5) + 0x58);
  *(v3 + *((*v6 & *v3) + 0x60)) = ViewGraphHost.__allocating_init<A>(rootViewType:viewDefinition:)(v18, v21, v18, v22);
  v24 = type metadata accessor for CAHostingLayer(0, v18, v22, v23);
  v29.receiver = v3;
  v29.super_class = v24;
  v25 = objc_msgSendSuper2(&v29, sel_init);
  CAHostingLayer.postInit()();
  static Update.end()();

  return v25;
}

void specialized CAHostingLayer.init(coder:)()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x68);
  type metadata accessor for EventBindingManager();
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + 48) = MEMORY[0x1E69E7CC8];
  *(v3 + 56) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_AC0E7BindingVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v3 + 64) = 0;
  *(v3 + 72) = 0;
  *(v0 + v2) = v3;
  *(v0 + *((*v1 & *v0) + 0x70)) = 0;
  *(v0 + *((*v1 & *v0) + 0x78)) = 0;
  *(v0 + *((*v1 & *v0) + 0x80)) = 0;
  *(v0 + *((*v1 & *v0) + 0x88)) = 0;
  v4 = (v0 + *((*v1 & *v0) + 0x90));
  *v4 = 0;
  v4[1] = 0;
  v5 = *((*v1 & *v0) + 0xB0);
  v6 = type metadata accessor for CAHostingLayerEvent.Context(0);
  (*(*(v6 - 8) + 56))(v0 + v5, 1, 1, v6);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void *specialized CAHostingLayer.rootView.setter(uint64_t a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x98);
  swift_beginAccess();
  (*(*(*((v4 & v3) + 0x50) - 8) + 24))(&v1[v5], a1);
  swift_endAccess();
  return CAHostingLayer.rootView.didset(1u, v6, v7, v8);
}

uint64_t outlined destroy of (EventID, EventType)(uint64_t a1)
{
  type metadata accessor for (EventID, EventType)(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for EnvironmentPropertyKey<DisplayScaleKey>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<DisplayScaleKey>)
  {
    v4 = type metadata accessor for EnvironmentPropertyKey(0, &type metadata for DisplayScaleKey, &protocol witness table for DisplayScaleKey, a4);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for EnvironmentPropertyKey<DisplayScaleKey>);
    }
  }
}

void type metadata completion function for CAHostingLayer(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    type metadata accessor for ContinuousClock.Instant();
    if (v2 <= 0x3F)
    {
      type metadata accessor for [DispatchWorkItemFlags](319, &lazy cache variable for type metadata for CAHostingLayerEvent.Context?, type metadata accessor for CAHostingLayerEvent.Context, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_initClassMetadata2();
      }
    }
  }
}

void type metadata accessor for [DispatchWorkItemFlags](uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t outlined destroy of CAHostingLayerEvent.Context?(uint64_t a1)
{
  type metadata accessor for [DispatchWorkItemFlags](0, &lazy cache variable for type metadata for CAHostingLayerEvent.Context?, type metadata accessor for CAHostingLayerEvent.Context, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Any, @in_guaranteed Selector) -> (@out CADisplayLink?)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v6 = a2;
  v3(&v5, a1, &v6);
  return v5;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Any, @unowned Selector) -> (@owned CADisplayLink?)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  result = (*(v3 + 16))(a1, *a2);
  *a3 = result;
  return result;
}

uint64_t outlined init with take of CAHostingLayerEvent.Context(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CAHostingLayerEvent.Context(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of CAHostingLayerEvent.Context?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for [DispatchWorkItemFlags](0, &lazy cache variable for type metadata for CAHostingLayerEvent.Context?, type metadata accessor for CAHostingLayerEvent.Context, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of CAHostingLayerEvent.Context?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for [DispatchWorkItemFlags](0, &lazy cache variable for type metadata for CAHostingLayerEvent.Context?, type metadata accessor for CAHostingLayerEvent.Context, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of CAHostingLayerEvent.Context(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CAHostingLayerEvent.Context(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static CodableByProxy<>.unwrap(codingProxy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return v5(AssociatedTypeWitness, a4);
}

uint64_t CodableByProxy.serialize(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v12[-1] - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  (*(a3 + 40))(a2, a3);
  __swift_mutable_project_boxed_opaque_existential_1(v12, v12[3]);
  swift_getAssociatedConformanceWitness();
  dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
  (*(v7 + 8))(v9, AssociatedTypeWitness);
  return __swift_destroy_boxed_opaque_existential_1(v12);
}

void *static CodableByProxy.deserialize(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v15 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = &v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = dispatch thunk of Decoder.singleValueContainer()();
  if (!v4)
  {
    v14 = v9;
    __swift_project_boxed_opaque_existential_1(v16, v16[3]);
    swift_getAssociatedConformanceWitness();
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    (*(a3 + 48))(v11, a2, a3);
    (*(v14 + 8))(v11, AssociatedTypeWitness);
    return __swift_destroy_boxed_opaque_existential_1(v16);
  }

  return result;
}

BOOL protocol witness for static Serializable.deserialize(from:) in conformance HorizontalDirection@<W0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = specialized static CodableByProxy.deserialize(from:)(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t protocol witness for Serializable.serialize(to:) in conformance HorizontalDirection(void *a1)
{
  v2 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  v5 = v2;
  __swift_mutable_project_boxed_opaque_existential_1(v4, v4[3]);
  dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

{
  return sub_18D3A2D8C(a1);
}

uint64_t protocol witness for static Serializable.deserialize(from:) in conformance Edge@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = specialized static CodableByProxy.deserialize(from:)(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t protocol witness for static Serializable.deserialize(from:) in conformance Gradient@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = specialized static CodableByProxy.deserialize(from:)(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t AnyCodableBox.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v33 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v28 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v25 - v8;
  type metadata accessor for KeyedEncodingContainer<CodableBoxCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<CodableBoxCodingKeys>, MEMORY[0x1E69E6F58]);
  v11 = v10;
  v34 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CodableBoxCodingKeys and conformance CodableBoxCodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = *(a3 + 32);
  v14(a2, a3);
  LOBYTE(v35[0]) = 0;
  v29 = a3;
  v30 = a2;
  v15 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v17 = v32;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v17)
  {
    (*(v33 + 1))(v9, v15);
    return (*(v34 + 8))(v13, v11);
  }

  else
  {
    v32 = v11;
    v26 = *(v33 + 1);
    v26(v9, v15);
    v19 = v28;
    v20 = v35[5];
    v27 = 0;
    v33 = v13;
    v21 = v30;
    v14(v30, v29);
    (*(AssociatedConformanceWitness + 40))(v15, AssociatedConformanceWitness);
    v26(v19, v15);
    v35[3] = v21;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v35);
    v23 = v20;
    v24 = v33;
    (*(*(v21 - 8) + 16))(boxed_opaque_existential_1, v23, v21);
    static CodableBox.encode(_:to:)(v35, v24);
    (*(v34 + 8))(v24, v32);
    return __swift_destroy_boxed_opaque_existential_1(v35);
  }
}

uint64_t static AnyCodableBox.decode(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v20[1] = a4;
  v22 = a2;
  v23 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v21 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = v20 - v7;
  type metadata accessor for KeyedEncodingContainer<CodableBoxCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<CodableBoxCodingKeys>, MEMORY[0x1E69E6F48]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v20 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CodableBoxCodingKeys and conformance CodableBoxCodingKeys();
  result = dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v4)
  {
    v20[0] = v11;
    v15 = v21;
    LOBYTE(v24[0]) = 0;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v17 = (*(AssociatedConformanceWitness + 40))(AssociatedTypeWitness, AssociatedConformanceWitness);
    static CodableBox.decode(from:)(v17, v18, v24, v19);
    (*(v15 + 8))(v8, AssociatedTypeWitness);
    (*(v20[0] + 8))(v13, v10);
    v24[6] = swift_getAssociatedTypeWitness();
    swift_getExtendedExistentialTypeMetadata();
    swift_checkMetadataState();
    return swift_dynamicCast();
  }

  return result;
}

uint64_t one-time initialization function for environment()
{
  type metadata accessor for CodingUserInfoKey?(0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v7 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for CodingUserInfoKey();
  __swift_allocate_value_buffer(v3, static CodingUserInfoKey.environment);
  v4 = __swift_project_value_buffer(v3, static CodingUserInfoKey.environment);
  CodingUserInfoKey.init(rawValue:)();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t static CodingUserInfoKey.environment.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for environment != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for CodingUserInfoKey();
  v3 = __swift_project_value_buffer(v2, static CodingUserInfoKey.environment);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t ProxyCodable.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(a2 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v8);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  if (!v3)
  {
    return (*(v7 + 32))(a3, v10, a2);
  }

  return result;
}

uint64_t Optional<A>.codingProxy.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, v4);
  return CodableOptional.init(_:)(v6, *(a1 + 16), a2);
}

uint64_t CodableOptional.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 56))(a3, 1, 1, a2);
  v5 = type metadata accessor for Optional();
  v6 = *(*(v5 - 8) + 40);

  return v6(a3, a1, v5);
}

uint64_t protocol witness for static CodableByProxy.unwrap(codingProxy:) in conformance <A> A?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for CodableOptional(255, *(a2 + 16), *(a3 - 8), a4);
  swift_getWitnessTable(protocol conformance descriptor for CodableOptional<A>, v7);
  return static CodableByProxy<>.unwrap(codingProxy:)(a1, a2, a3, v8);
}

uint64_t protocol witness for Serializable.serialize(to:) in conformance <A> A?(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 - 8);
  swift_getWitnessTable(protocol conformance descriptor for <A> A?, a2, &v7);
  return CodableByProxy.serialize(to:)(a1, a2, v5);
}

void *protocol witness for static Serializable.deserialize(from:) in conformance <A> A?@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *(a3 - 8);
  swift_getWitnessTable(protocol conformance descriptor for <A> A?, a2, &v9);
  return static CodableByProxy.deserialize(from:)(a1, a2, v7, a4);
}

uint64_t RawRepresentable<>.codingProxy.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v5);
  return (*(v4 + 32))(a2, v7, a1);
}

id protocol witness for static CodableByProxy.unwrap(codingProxy:) in conformance NSAttributedStringKey@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  *a2 = v2;
  return v2;
}

uint64_t protocol witness for static Serializable.deserialize(from:) in conformance NSAttributedStringKey@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = specialized static CodableByProxy.deserialize(from:)(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t Array<A>.codingProxy.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9[7] = a1;
  v9[4] = a2;
  v9[5] = a3;
  v9[2] = a3;
  v9[3] = swift_getKeyPath();
  v3 = type metadata accessor for Array();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getWitnessTable(MEMORY[0x1E69E6340], v3);
  v7 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for implicit closure #1 in Array<A>.codingProxy.getter, v9, v3, AssociatedTypeWitness, MEMORY[0x1E69E73E0], v5, MEMORY[0x1E69E7410], v6);

  return v7;
}

uint64_t static Array<A>.unwrap(codingProxy:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[5] = a1;
  v8[2] = a2;
  v8[3] = a3;
  swift_getAssociatedTypeWitness();
  v4 = type metadata accessor for Array();
  swift_getWitnessTable(MEMORY[0x1E69E6340], v4);
  return _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in static Array<A>.unwrap(codingProxy:), v8, v4, a2, MEMORY[0x1E69E73E0], v5, MEMORY[0x1E69E7410], v6);
}

uint64_t protocol witness for CodableByProxy.codingProxy.getter in conformance <A> [A]@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = Array<A>.codingProxy.getter(*v3, *(a1 + 16), *(a2 - 8));
  *a3 = result;
  return result;
}

uint64_t protocol witness for static CodableByProxy.unwrap(codingProxy:) in conformance <A> [A]@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = static Array<A>.unwrap(codingProxy:)(*a1, *(a2 + 16), *(a3 - 8));
  *a4 = result;
  return result;
}

uint64_t protocol witness for Serializable.serialize(to:) in conformance <A> [A](void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 - 8);
  swift_getWitnessTable(protocol conformance descriptor for <A> [A], a2, &v7);
  return CodableByProxy.serialize(to:)(a1, a2, v5);
}

void *protocol witness for static Serializable.deserialize(from:) in conformance <A> [A]@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *(a3 - 8);
  swift_getWitnessTable(protocol conformance descriptor for <A> [A], a2, &v9);
  return static CodableByProxy.deserialize(from:)(a1, a2, v7, a4);
}

uint64_t JSONCodable.encode(to:)(void *a1, uint64_t a2)
{
  v13[5] = *MEMORY[0x1E69E9840];
  v3 = type metadata accessor for String.Encoding();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = objc_opt_self();
  v13[0] = 0;
  v5 = [v4 dataWithJSONObject:_bridgeAnythingToObjectiveC<A>(_:)() options:0 error:v13];
  swift_unknownObjectRelease();
  v6 = v13[0];
  if (v5)
  {
    v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    static String.Encoding.utf8.getter();
    result = String.init(data:encoding:)();
    if (v11)
    {
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      dispatch thunk of Encoder.singleValueContainer()();
      __swift_mutable_project_boxed_opaque_existential_1(v13, v13[3]);
      dispatch thunk of SingleValueEncodingContainer.encode(_:)();
      outlined consume of Data._Representation(v7, v9);

      return __swift_destroy_boxed_opaque_existential_1(v13);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v12 = v6;
    _convertNSErrorToError(_:)();

    return swift_willThrow();
  }

  return result;
}

uint64_t JSONCodable.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v47 = a3;
  v56[5] = *MEMORY[0x1E69E9840];
  v52 = type metadata accessor for Optional();
  v45 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v48 = &v41 - v5;
  v50 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v49 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for String.Encoding();
  v51 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for JSONCodable(0, a2, v11, v12);
  v46 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v41 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v16 = v53;
  dispatch thunk of Decoder.singleValueContainer()();
  if (v16)
  {
    goto LABEL_3;
  }

  v43 = v15;
  v44 = v13;
  v17 = v52;
  v53 = a1;
  __swift_project_boxed_opaque_existential_1(v56, v56[3]);
  v20 = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
  v22 = v21;
  static String.Encoding.utf8.getter();
  v23 = String.data(using:allowLossyConversion:)();
  v25 = v24;
  result = (*(v51 + 8))(v10, v8);
  if (v25 >> 60 != 15)
  {
    v26 = objc_opt_self();
    isa = Data._bridgeToObjectiveC()().super.isa;
    v54[0] = 0;
    v28 = [v26 JSONObjectWithData:isa options:0 error:v54];

    v29 = v54[0];
    if (v28)
    {
      v51 = v23;
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      outlined init with copy of Any(v55, v54);
      v30 = v48;
      v31 = a2;
      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_1(v55);
        outlined consume of Data?(v51, v25);

        v32 = v50;
        (*(v50 + 56))(v30, 0, 1, a2);
        v33 = v49;
        (*(v32 + 32))(v49, v30, a2);
        v34 = v47;
        v35 = v53;
      }

      else
      {
        v42 = v25;
        v32 = v50;
        (*(v50 + 56))(v30, 1, 1, a2);
        v33 = v49;
        closure #1 in implicit closure #1 in JSONCodable.init(from:)(v55, v20, v22, a2);
        v35 = v53;
        __swift_destroy_boxed_opaque_existential_1(v55);
        outlined consume of Data?(v51, v42);

        v40 = (*(v32 + 48))(v30, 1, v31);
        v34 = v47;
        if (v40 != 1)
        {
          (*(v45 + 8))(v30, v17);
        }
      }

      v36 = v44;
      v37 = v46;
      v38 = v43;
      (*(v32 + 32))(v43, v33, v31);
      __swift_destroy_boxed_opaque_existential_1(v56);
      (*(v37 + 32))(v34, v38, v36);
      v18 = v35;
      return __swift_destroy_boxed_opaque_existential_1(v18);
    }

    v39 = v29;

    _convertNSErrorToError(_:)();

    swift_willThrow();
    outlined consume of Data?(v23, v25);
    __swift_destroy_boxed_opaque_existential_1(v56);
    a1 = v53;
LABEL_3:
    v18 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v18);
  }

  __break(1u);
  return result;
}

void closure #1 in implicit closure #1 in JSONCodable.init(from:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_getDynamicType();
  type metadata accessor for Any.Type();
  v7 = String.init<A>(describing:)();
  v9 = v8;
  v12 = type metadata accessor for JSONCodable.Error(0, a4, v10, v11);
  swift_getWitnessTable(protocol conformance descriptor for JSONCodable<A>.Error, v12);
  swift_allocError();
  *v13 = v7;
  v13[1] = v9;
  v13[2] = a2;
  v13[3] = a3;
  swift_willThrow();
}

uint64_t RawRepresentableProxy.encode(to:)(void *a1, void *a2)
{
  return RawRepresentableProxy.encode(to:)(a1, a2);
}

{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v6 = &v9[-1] - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  dispatch thunk of RawRepresentable.rawValue.getter();
  __swift_mutable_project_boxed_opaque_existential_1(v9, v9[3]);
  dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
  (*(v4 + 8))(v6, AssociatedTypeWitness);
  return __swift_destroy_boxed_opaque_existential_1(v9);
}

Swift::Int ProxyCodable<>.hashValue.getter(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance <> ProxyCodable<A>(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *, uint64_t, uint64_t))
{
  v6 = *(a3 - 8);
  Hasher.init(_seed:)();
  a4(v8, a2, v6);
  return Hasher._finalize()();
}

uint64_t CodableOptional.base.getter@<X0>(uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Optional();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, v2, v4);
}

uint64_t CodableOptional.base.setter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Optional();
  v5 = *(*(v4 - 8) + 40);

  return v5(v2, a1, v4);
}

uint64_t CodableOptional.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance CodableOptional<A>.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = CodableOptional.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance CodableOptional<A>.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = protocol witness for static Equatable.== infix(_:_:) in conformance _DisplayList_Identity.CodingKeys();
  *a1 = result & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CodableOptional<A>.CodingKeys(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for CodableOptional<A>.CodingKeys, a1);

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CodableOptional<A>.CodingKeys(uint64_t a1)
{
  swift_getWitnessTable(protocol conformance descriptor for CodableOptional<A>.CodingKeys, a1);

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CodableOptional.encode(to:)(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v29 = *(AssociatedTypeWitness - 8);
  v30 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v27 = &v26 - v6;
  v7 = type metadata accessor for Optional();
  v32 = *(v7 - 8);
  v33 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v26 - v8;
  v31 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v26 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v3;
  v13 = type metadata accessor for CodableOptional.CodingKeys(255, v4, v3, v12);
  swift_getWitnessTable(protocol conformance descriptor for CodableOptional<A>.CodingKeys, v13);
  v35 = type metadata accessor for KeyedEncodingContainer();
  v14 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v16 = &v26 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v18 = v31;
  v17 = v32;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v19 = v33;
  (*(v17 + 16))(v9, v34, v33);
  if ((*(v18 + 48))(v9, 1, v4) == 1)
  {
    (*(v14 + 8))(v16, v35);
    return (*(v17 + 8))(v9, v19);
  }

  else
  {
    v21 = v14;
    v22 = v26;
    (*(v18 + 32))(v26, v9, v4);
    v23 = v27;
    (*(v28 + 40))(v4, v28);
    v24 = v30;
    swift_getAssociatedConformanceWitness();
    v25 = v35;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v29 + 8))(v23, v24);
    (*(v18 + 8))(v22, v4);
    return (*(v21 + 8))(v16, v25);
  }
}

uint64_t CodableOptional.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v33 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v35 = type metadata accessor for Optional();
  v30 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v39 = &v29 - v7;
  v8 = type metadata accessor for Optional();
  v31 = *(v8 - 8);
  v32 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v34 = &v29 - v9;
  v11 = type metadata accessor for CodableOptional.CodingKeys(255, a2, a3, v10);
  swift_getWitnessTable(protocol conformance descriptor for CodableOptional<A>.CodingKeys, v11);
  v40 = type metadata accessor for KeyedDecodingContainer();
  v36 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v13 = &v29 - v12;
  v38 = a3;
  v42 = type metadata accessor for CodableOptional(0, a2, a3, v14);
  v15 = *(v42 - 8);
  v16 = MEMORY[0x1EEE9AC00](v42);
  v18 = &v29 - v17;
  (*(*(a2 - 8) + 56))(&v29 - v17, 1, 1, a2, v16);
  v19 = a1[3];
  v43 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  v20 = v41;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v20)
  {
    __swift_destroy_boxed_opaque_existential_1(v43);
    return (*(v15 + 8))(v18, v42);
  }

  else
  {
    v21 = v34;
    v22 = v35;
    v23 = v38;
    swift_getAssociatedConformanceWitness();
    v24 = KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v41 = &v29;
    MEMORY[0x1EEE9AC00](v24);
    *(&v29 - 2) = a2;
    *(&v29 - 1) = v23;
    v25 = v39;
    _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in CodableOptional.init(from:), (&v29 - 4), MEMORY[0x1E69E73E0], a2, v26, v21);
    (*(v30 + 8))(v25, v22);
    (*(v36 + 8))(v13, v40);
    (*(v31 + 40))(v18, v21, v32);
    v27 = v42;
    (*(v15 + 16))(v33, v18, v42);
    __swift_destroy_boxed_opaque_existential_1(v43);
    return (*(v15 + 8))(v18, v27);
  }
}

double CodableNSAttributes.projectedValue.getter@<D0>(uint64_t *a1@<X8>)
{
  *a1 = *v1;

  return result;
}

void CodableNSAttributes.encode(to:)(uint64_t a1)
{
  v2 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v3 = MEMORY[0x193ABEC20](32, 0xE100000000000000);
  type metadata accessor for NSAttributedStringKey(0);
  _sSo21NSAttributedStringKeyaABSHSCWlTm_0(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey, protocol conformance descriptor for NSAttributedStringKey);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v5 = [v2 initWithString:v3 attributes:isa];

  CodableAttributedString.encode(to:)(a1);
}

void CodableNSAttributes.init(from:)(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  CodableAttributedString.init(from:)(a1, &v10);
  if (!v2)
  {
    v4 = v10;
    if ([v10 length] <= 0)
    {
      v7 = type metadata accessor for DecodingError();
      swift_allocError();
      v9 = v8;
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v7 - 8) + 104))(v9, *MEMORY[0x1E69E6B00], v7);
      swift_willThrow();
    }

    else
    {
      v5 = [v4 attributesAtIndex:0 effectiveRange:0];
      type metadata accessor for NSAttributedStringKey(0);
      _sSo21NSAttributedStringKeyaABSHSCWlTm_0(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey, protocol conformance descriptor for NSAttributedStringKey);
      v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      *a2 = v6;
    }
  }
}

uint64_t areEqual #1 <A>(lhs:rhs:) in static CodableNSAttributes.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18[-v8];
  v10 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v18[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  outlined init with copy of Any(a2, v18);
  v14 = swift_dynamicCast();
  v15 = *(v10 + 56);
  if (v14)
  {
    v15(v9, 0, 1, a3);
    (*(v10 + 32))(v13, v9, a3);
    v16 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v10 + 8))(v13, a3);
  }

  else
  {
    v15(v9, 1, 1, a3);
    (*(v7 + 8))(v9, v6);
    v16 = 0;
  }

  return v16 & 1;
}

void CodableNSAttributes.hash(into:)(uint64_t a1)
{
  v2 = *v1 + 64;
  v3 = 1 << *(*v1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(*v1 + 64);
  v6 = (v3 + 63) >> 6;
  v17 = *v1;

  v7 = 0;
  v8 = MEMORY[0x1E69E5EA0];
  if (!v5)
  {
    goto LABEL_7;
  }

  do
  {
    while (1)
    {
      v9 = v7;
LABEL_14:
      v12 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v13 = v12 | (v9 << 6);
      v14 = *(*(v17 + 48) + 8 * v13);
      outlined init with copy of Any(*(v17 + 56) + 32 * v13, v18);
      *&v22 = v14;
      outlined init with take of Any(v18, (&v22 + 8));
      v15 = v14;
      v11 = v9;
LABEL_15:
      v25[0] = v22;
      v25[1] = v23;
      v26 = v24;
      v16 = v22;
      if (!v22)
      {

        return;
      }

      outlined init with take of Any((v25 + 8), v21);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      String.hash(into:)();

      outlined init with copy of Any(v21, v20);
      type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for Hashable, v8);
      if (swift_dynamicCast())
      {
        break;
      }

      __swift_destroy_boxed_opaque_existential_1(v21);

      v19 = 0;
      memset(v18, 0, sizeof(v18));
      outlined destroy of _DisplayList_AnyEffectAnimator?(v18, &lazy cache variable for type metadata for Hashable?, &lazy cache variable for type metadata for Hashable, v8);
      v7 = v11;
      if (!v5)
      {
        goto LABEL_7;
      }
    }

    outlined init with take of AnyTrackedValue(v18, &v22);
    __swift_project_boxed_opaque_existential_1(&v22, *(&v23 + 1));
    dispatch thunk of Hashable.hash(into:)();

    __swift_destroy_boxed_opaque_existential_1(v21);
    __swift_destroy_boxed_opaque_existential_1(&v22);
    v7 = v11;
  }

  while (v5);
LABEL_7:
  if (v6 <= v7 + 1)
  {
    v10 = v7 + 1;
  }

  else
  {
    v10 = v6;
  }

  v11 = v10 - 1;
  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v9 >= v6)
    {
      v5 = 0;
      v24 = 0;
      v22 = 0u;
      v23 = 0u;
      goto LABEL_15;
    }

    v5 = *(v2 + 8 * v9);
    ++v7;
    if (v5)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

Swift::Int CodableNSAttributes.hashValue.getter()
{
  v2[9] = *v0;
  Hasher.init(_seed:)();
  CodableNSAttributes.hash(into:)(v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CodableNSAttributes()
{
  v2[9] = *v0;
  Hasher.init(_seed:)();
  CodableNSAttributes.hash(into:)(v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CodableNSAttributes(uint64_t a1)
{
  Hasher.init(_seed:)();
  CodableNSAttributes.hash(into:)(v2);
  return Hasher._finalize()();
}

uint64_t NSSecureCoding.serialize(to:)(void *a1)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E696ACC8]) initRequiringSecureCoding_];
  [v1 encodeWithCoder_];
  [v3 finishEncoding];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  v4 = [v3 encodedData];
  v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  __swift_mutable_project_boxed_opaque_existential_1(v9, v9[3]);
  lazy protocol witness table accessor for type Data and conformance Data();
  dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
  outlined consume of Data._Representation(v5, v7);

  return __swift_destroy_boxed_opaque_existential_1(v9);
}

void *static NSSecureCoding.deserialize(from:)(void *a1, uint64_t a2)
{
  v5 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v14, v14[3]);
    lazy protocol witness table accessor for type Data and conformance Data();
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    v6 = objc_allocWithZone(MEMORY[0x1E696ACD0]);
    outlined copy of Data._Representation(v12, v13);
    v7 = specialized @nonobjc NSKeyedUnarchiver.init(forReadingFrom:)();
    outlined consume of Data._Representation(v12, v13);
    v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];
    [v7 finishDecoding];
    if (v5)
    {
      outlined consume of Data._Representation(v12, v13);

      __swift_destroy_boxed_opaque_existential_1(v14);
    }

    else
    {
      v9 = type metadata accessor for DecodingError();
      v14[6] = swift_allocError();
      v11 = v10;
      type metadata accessor for (@thick Any.Type, DecodingError.Context)(0);
      *v11 = a2;
      v5 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      dispatch thunk of Decoder.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v9 - 8) + 104))(v11, *MEMORY[0x1E69E6B08], v9);
      swift_willThrow();

      outlined consume of Data._Representation(v12, v13);
      __swift_destroy_boxed_opaque_existential_1(v14);
    }
  }

  return v5;
}

void *static CodableBox.decode(from:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>, uint64_t a4@<X3>)
{
  v8 = type metadata accessor for ProxyCodable(0, a1, *(a2 + 16), a4);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13[-v9];
  v13[15] = 1;
  type metadata accessor for KeyedEncodingContainer<CodableBoxCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<CodableBoxCodingKeys>, MEMORY[0x1E69E6F48]);
  swift_getWitnessTable(protocol conformance descriptor for ProxyCodable<A>, v8);
  result = KeyedDecodingContainer.decode<A>(_:forKey:)();
  if (!v4)
  {
    a3[3] = a1;
    a3[4] = a2;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
    return (*(*(a1 - 8) + 32))(boxed_opaque_existential_1, v10, a1);
  }

  return result;
}

uint64_t static CodableBox.encode(_:to:)(uint64_t a1, uint64_t a2)
{
  outlined init with copy of Any(a1, v11);
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for CodableBox, &protocol descriptor for CodableBox);
  if (swift_dynamicCast())
  {
    outlined init with take of AnyTrackedValue(v9, v12);
    v4 = v13;
    __swift_project_boxed_opaque_existential_1(v12, v13);
    CodableBox.serialize(into:)(a2, v4);
    return __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    v10 = 0;
    memset(v9, 0, sizeof(v9));
    outlined destroy of _DisplayList_AnyEffectAnimator?(v9, &lazy cache variable for type metadata for CodableBox?, &lazy cache variable for type metadata for CodableBox, &protocol descriptor for CodableBox);
    v6 = type metadata accessor for EncodingError();
    swift_allocError();
    v8 = v7;
    type metadata accessor for (Any, EncodingError.Context)(0);
    outlined init with copy of Any(a1, v8);
    type metadata accessor for KeyedEncodingContainer<CodableBoxCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<CodableBoxCodingKeys>, MEMORY[0x1E69E6F58]);
    KeyedEncodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v6 - 8) + 104))(v8, *MEMORY[0x1E69E6B30], v6);
    return swift_willThrow();
  }
}

void type metadata accessor for KeyedEncodingContainer<CodableBoxCodingKeys>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, uint64_t))
{
  if (!*a2)
  {
    lazy protocol witness table accessor for type CodableBoxCodingKeys and conformance CodableBoxCodingKeys();
    v7 = a3(a1, &type metadata for CodableBoxCodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t CodableBox.serialize(into:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ProxyCodable(0, v8, *(v7 + 16), v9);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v16 - v13;
  (*(v4 + 16))(v6, v2, a2, v12);
  (*(v4 + 32))(v14, v6, a2);
  v17 = 1;
  type metadata accessor for KeyedEncodingContainer<CodableBoxCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<CodableBoxCodingKeys>, MEMORY[0x1E69E6F58]);
  swift_getWitnessTable(protocol conformance descriptor for ProxyCodable<A>, v10);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v11 + 8))(v14, v10);
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance CodableBoxCodingKeys@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance CodableBoxCodingKeys()
{
  if (*v0)
  {
    return 0x65756C6176;
  }

  else
  {
    return 6775156;
  }
}

void protocol witness for CodingKey.init(stringValue:) in conformance CodableBoxCodingKeys(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 6775156 && a2 == 0xE300000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CodableBoxCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type CodableBoxCodingKeys and conformance CodableBoxCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CodableBoxCodingKeys(uint64_t a1)
{
  lazy protocol witness table accessor for type CodableBoxCodingKeys and conformance CodableBoxCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *protocol witness for static Serializable.deserialize(from:) in conformance Font.WeightModifier@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = dispatch thunk of Decoder.singleValueContainer()();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    lazy protocol witness table accessor for type CodableFontWeight and conformance CodableFontWeight();
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    *a2 = v5[6];
    return __swift_destroy_boxed_opaque_existential_1(v5);
  }

  return result;
}

uint64_t protocol witness for Serializable.serialize(to:) in conformance Font.WidthModifier(void *a1)
{
  v2 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  v4[6] = v2;
  __swift_mutable_project_boxed_opaque_existential_1(v4, v4[3]);
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

void *protocol witness for static Serializable.deserialize(from:) in conformance Font.WidthModifier@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = dispatch thunk of Decoder.singleValueContainer()();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    *a2 = v5[6];
    return __swift_destroy_boxed_opaque_existential_1(v5);
  }

  return result;
}

void *protocol witness for static Serializable.deserialize(from:) in conformance Font.GradeModifier@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = dispatch thunk of Decoder.singleValueContainer()();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    *a2 = v5[6];
    return __swift_destroy_boxed_opaque_existential_1(v5);
  }

  return result;
}

void *protocol witness for static Serializable.deserialize(from:) in conformance Font.StylisticAlternativeModifier@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = dispatch thunk of Decoder.singleValueContainer()();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    type metadata accessor for RawRepresentableProxy<Font._StylisticAlternative>(0, &lazy cache variable for type metadata for RawRepresentableProxy<Font._StylisticAlternative>, lazy protocol witness table accessor for type Font._StylisticAlternative and conformance Font._StylisticAlternative, &type metadata for Font._StylisticAlternative);
    lazy protocol witness table accessor for type RawRepresentableProxy<Font._StylisticAlternative> and conformance RawRepresentableProxy<A>(&lazy protocol witness table cache variable for type RawRepresentableProxy<Font._StylisticAlternative> and conformance RawRepresentableProxy<A>, protocol conformance descriptor for RawRepresentableProxy<A>);
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    *a2 = v5;
    return __swift_destroy_boxed_opaque_existential_1(v6);
  }

  return result;
}

uint64_t protocol witness for Serializable.serialize(to:) in conformance Font.VariationModifier(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v2[3]);
  lazy protocol witness table accessor for type Font.VariationDefinition and conformance Font.VariationDefinition();
  dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
  return __swift_destroy_boxed_opaque_existential_1(v2);
}

uint64_t protocol witness for Serializable.serialize(to:) in conformance Font.FeatureSettingModifier(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v2[3]);
  lazy protocol witness table accessor for type Font.FeatureSettingDefinition and conformance Font.FeatureSettingDefinition();
  dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
  return __swift_destroy_boxed_opaque_existential_1(v2);
}

uint64_t protocol witness for Serializable.serialize(to:) in conformance Font.OpenTypeFeatureSettingModifier(void *a1)
{
  v2 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  v4[6] = v2;
  __swift_mutable_project_boxed_opaque_existential_1(v4, v4[3]);
  type metadata accessor for [String]();
  lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A], MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
  dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

void *protocol witness for static Serializable.deserialize(from:) in conformance Font.OpenTypeFeatureSettingModifier@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = dispatch thunk of Decoder.singleValueContainer()();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    type metadata accessor for [String]();
    lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A], MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    *a2 = v5;
    return __swift_destroy_boxed_opaque_existential_1(v6);
  }

  return result;
}

uint64_t protocol witness for Serializable.serialize(to:) in conformance LanguageFontModifier(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v2[3]);
  dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
  return __swift_destroy_boxed_opaque_existential_1(v2);
}

void *protocol witness for static Serializable.deserialize(from:) in conformance LanguageFontModifier@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = dispatch thunk of Decoder.singleValueContainer()();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v7, v7[3]);
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    result = __swift_destroy_boxed_opaque_existential_1(v7);
    *a2 = v5;
    a2[1] = v6;
  }

  return result;
}

uint64_t protocol witness for Serializable.serialize(to:) in conformance LanguageAwareLineHeightRatioFontModifier(void *a1)
{
  v2 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  v4[6] = v2;
  __swift_mutable_project_boxed_opaque_existential_1(v4, v4[3]);
  dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

void *protocol witness for static Serializable.deserialize(from:) in conformance LanguageAwareLineHeightRatioFontModifier@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = dispatch thunk of Decoder.singleValueContainer()();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    result = __swift_destroy_boxed_opaque_existential_1(v6);
    *a2 = v5;
  }

  return result;
}

uint64_t protocol witness for Serializable.serialize(to:) in conformance Font.WeightModifier(void *a1)
{
  v2 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  v4[6] = v2;
  __swift_mutable_project_boxed_opaque_existential_1(v4, v4[3]);
  lazy protocol witness table accessor for type CodableFontWeight and conformance CodableFontWeight();
  dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

void *protocol witness for static Serializable.deserialize(from:) in conformance Font.Weight@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = dispatch thunk of Decoder.singleValueContainer()();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    lazy protocol witness table accessor for type CodableFontWeight and conformance CodableFontWeight();
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    result = __swift_destroy_boxed_opaque_existential_1(v6);
    *a2 = v5;
  }

  return result;
}

uint64_t protocol witness for static Serializable.deserialize(from:) in conformance Font@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = specialized static CodableByProxy.deserialize(from:)(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t protocol witness for Serializable.serialize(to:) in conformance ResolvedColorProvider(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v2[3]);
  type metadata accessor for Color.RGBADefinition<Float, Float>();
  _sSo21NSAttributedStringKeyaABSHSCWlTm_0(&lazy protocol witness table cache variable for type Color.RGBADefinition<Float, Float> and conformance Color.RGBADefinition<A, B>, type metadata accessor for Color.RGBADefinition<Float, Float>, protocol conformance descriptor for Color.RGBADefinition<A, B>);
  dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
  return __swift_destroy_boxed_opaque_existential_1(v2);
}

double protocol witness for static Serializable.deserialize(from:) in conformance ResolvedColorProvider@<D0>(__n128 *a1@<X8>, void *a2@<X0>)
{
  *&result = specialized static CodableByProxy.deserialize(from:)(a2, &v5).n128_u64[0];
  if (!v2)
  {
    result = v5.n128_f64[0];
    *a1 = v5;
    a1[1].n128_u32[0] = v6;
  }

  return result;
}

uint64_t protocol witness for Serializable.serialize(to:) in conformance Color.DisplayP3(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v2[3]);
  type metadata accessor for Color.RGBADefinition<CGFloat, Float>(0);
  _sSo21NSAttributedStringKeyaABSHSCWlTm_0(&lazy protocol witness table cache variable for type Color.RGBADefinition<CGFloat, Float> and conformance Color.RGBADefinition<A, B>, type metadata accessor for Color.RGBADefinition<CGFloat, Float>, protocol conformance descriptor for Color.RGBADefinition<A, B>);
  dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
  return __swift_destroy_boxed_opaque_existential_1(v2);
}

void protocol witness for static Serializable.deserialize(from:) in conformance Color.DisplayP3(uint64_t a1@<X8>, void *a2@<X0>)
{
  v4 = specialized static CodableByProxy.deserialize(from:)(a2);
  if (!v2)
  {
    *a1 = v4;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
    *(a1 + 24) = v7;
  }
}

uint64_t protocol witness for Serializable.serialize(to:) in conformance AccessibilityTextContentType(void *a1)
{
  v2 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  v5 = v2;
  __swift_mutable_project_boxed_opaque_existential_1(v4, v4[3]);
  lazy protocol witness table accessor for type AccessibilityTextContentType.RawValue and conformance AccessibilityTextContentType.RawValue();
  dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

void *protocol witness for static Serializable.deserialize(from:) in conformance AccessibilityTextContentType@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = dispatch thunk of Decoder.singleValueContainer()();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    lazy protocol witness table accessor for type AccessibilityTextContentType.RawValue and conformance AccessibilityTextContentType.RawValue();
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    *a2 = v6;
    return __swift_destroy_boxed_opaque_existential_1(v5);
  }

  return result;
}

uint64_t protocol witness for Serializable.serialize(to:) in conformance TextJustification(void *a1)
{
  v2 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  v5 = v2;
  __swift_mutable_project_boxed_opaque_existential_1(v4, v4[3]);
  lazy protocol witness table accessor for type TextJustification.Storage and conformance TextJustification.Storage();
  dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

void *protocol witness for static Serializable.deserialize(from:) in conformance TextJustification@<X0>(void *a1@<X0>, _WORD *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = dispatch thunk of Decoder.singleValueContainer()();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    lazy protocol witness table accessor for type TextJustification.Storage and conformance TextJustification.Storage();
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    *a2 = v6;
    return __swift_destroy_boxed_opaque_existential_1(v5);
  }

  return result;
}

uint64_t protocol witness for Serializable.serialize(to:) in conformance Font.GradeModifier(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  v8[6] = v6;
  __swift_mutable_project_boxed_opaque_existential_1(v8, v8[3]);
  dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
  return __swift_destroy_boxed_opaque_existential_1(v8);
}

void *protocol witness for static Serializable.deserialize(from:) in conformance AXCustomContentImportance@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = dispatch thunk of Decoder.singleValueContainer()();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    v5 = v6[6];
    result = __swift_destroy_boxed_opaque_existential_1(v6);
    *a2 = v5;
  }

  return result;
}

uint64_t protocol witness for Serializable.serialize(to:) in conformance AccessibilityHeadingLevel(void *a1)
{
  v2 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  v4[6] = v2;
  __swift_mutable_project_boxed_opaque_existential_1(v4, v4[3]);
  dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

void *protocol witness for static Serializable.deserialize(from:) in conformance AccessibilityHeadingLevel@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = dispatch thunk of Decoder.singleValueContainer()();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    v5 = specialized static AccessibilityHeadingLevel.unwrap(codingProxy:)(v6[6]);
    result = __swift_destroy_boxed_opaque_existential_1(v6);
    *a2 = v5;
  }

  return result;
}

double protocol witness for static CodableByProxy.unwrap(codingProxy:) in conformance Text.LineStyle@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2 | 1;
  a2[1] = v3;

  return result;
}

void protocol witness for static Serializable.deserialize(from:) in conformance Color.Resolved(float *a1@<X8>, void *a2@<X0>)
{
  v4 = specialized static CodableByProxy.deserialize(from:)(a2);
  if (!v2)
  {
    *a1 = v4;
    *(a1 + 1) = v5;
    *(a1 + 2) = v6;
    *(a1 + 3) = v7;
  }
}

uint64_t protocol witness for Serializable.serialize(to:) in conformance ContentStyle.ID(void *a1)
{
  v2 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  v5 = v2;
  __swift_mutable_project_boxed_opaque_existential_1(v4, v4[3]);
  type metadata accessor for RawRepresentableProxy<ContentStyle.ID>(0);
  _sSo21NSAttributedStringKeyaABSHSCWlTm_0(&lazy protocol witness table cache variable for type RawRepresentableProxy<ContentStyle.ID> and conformance RawRepresentableProxy<A>, type metadata accessor for RawRepresentableProxy<ContentStyle.ID>, protocol conformance descriptor for RawRepresentableProxy<A>);
  dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

void *protocol witness for static Serializable.deserialize(from:) in conformance ContentStyle.ID@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = dispatch thunk of Decoder.singleValueContainer()();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    type metadata accessor for RawRepresentableProxy<ContentStyle.ID>(0);
    _sSo21NSAttributedStringKeyaABSHSCWlTm_0(&lazy protocol witness table cache variable for type RawRepresentableProxy<ContentStyle.ID> and conformance RawRepresentableProxy<A>, type metadata accessor for RawRepresentableProxy<ContentStyle.ID>, protocol conformance descriptor for RawRepresentableProxy<A>);
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    *a2 = v5;
    return __swift_destroy_boxed_opaque_existential_1(v6);
  }

  return result;
}

uint64_t protocol witness for Serializable.serialize(to:) in conformance Text.Encapsulation.Scale(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v8 = *v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  v10[6] = v8;
  __swift_mutable_project_boxed_opaque_existential_1(v10, v10[3]);
  a4(0);
  a5();
  dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
  return __swift_destroy_boxed_opaque_existential_1(v10);
}

void *protocol witness for static Serializable.deserialize(from:) in conformance Text.Encapsulation.Scale@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t (*a3)(void)@<X4>, void *a4@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = dispatch thunk of Decoder.singleValueContainer()();
  if (!v4)
  {
    __swift_project_boxed_opaque_existential_1(v9, v9[3]);
    a2(0);
    a3();
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    *a4 = v9[6];
    return __swift_destroy_boxed_opaque_existential_1(v9);
  }

  return result;
}

uint64_t protocol witness for Serializable.serialize(to:) in conformance Alignment(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v2[3]);
  lazy protocol witness table accessor for type CodableAlignment and conformance CodableAlignment();
  dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
  return __swift_destroy_boxed_opaque_existential_1(v2);
}

void *protocol witness for static Serializable.deserialize(from:) in conformance Alignment@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = dispatch thunk of Decoder.singleValueContainer()();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v7, v7[3]);
    lazy protocol witness table accessor for type CodableAlignment and conformance CodableAlignment();
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    result = __swift_destroy_boxed_opaque_existential_1(v7);
    *a2 = v5;
    a2[1] = v6;
  }

  return result;
}

uint64_t protocol witness for Serializable.serialize(to:) in conformance Font.TextStyleProvider(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v2[3]);
  lazy protocol witness table accessor for type Font.StyleDefinition and conformance Font.StyleDefinition();
  dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
  return __swift_destroy_boxed_opaque_existential_1(v2);
}

uint64_t protocol witness for static Serializable.deserialize(from:) in conformance Font.PrivateTextStyleProvider@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = specialized static CodableByProxy.deserialize(from:)(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
    *(a1 + 24) = v7 & 1;
  }

  return result;
}

uint64_t protocol witness for Serializable.serialize(to:) in conformance Font.VariationAxisIdentifier(void *a1)
{
  v2 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  v5 = v2;
  __swift_mutable_project_boxed_opaque_existential_1(v4, v4[3]);
  type metadata accessor for RawRepresentableProxy<Font._StylisticAlternative>(0, &lazy cache variable for type metadata for RawRepresentableProxy<Font.VariationAxisIdentifier>, lazy protocol witness table accessor for type Font.VariationAxisIdentifier and conformance Font.VariationAxisIdentifier, &type metadata for Font.VariationAxisIdentifier);
  lazy protocol witness table accessor for type RawRepresentableProxy<Font.VariationAxisIdentifier> and conformance RawRepresentableProxy<A>(&lazy protocol witness table cache variable for type RawRepresentableProxy<Font.VariationAxisIdentifier> and conformance RawRepresentableProxy<A>, protocol conformance descriptor for RawRepresentableProxy<A>);
  dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

void *protocol witness for static Serializable.deserialize(from:) in conformance Font.VariationAxisIdentifier@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = dispatch thunk of Decoder.singleValueContainer()();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    type metadata accessor for RawRepresentableProxy<Font._StylisticAlternative>(0, &lazy cache variable for type metadata for RawRepresentableProxy<Font.VariationAxisIdentifier>, lazy protocol witness table accessor for type Font.VariationAxisIdentifier and conformance Font.VariationAxisIdentifier, &type metadata for Font.VariationAxisIdentifier);
    lazy protocol witness table accessor for type RawRepresentableProxy<Font.VariationAxisIdentifier> and conformance RawRepresentableProxy<A>(&lazy protocol witness table cache variable for type RawRepresentableProxy<Font.VariationAxisIdentifier> and conformance RawRepresentableProxy<A>, protocol conformance descriptor for RawRepresentableProxy<A>);
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    *a2 = v5;
    return __swift_destroy_boxed_opaque_existential_1(v6);
  }

  return result;
}

uint64_t protocol witness for Serializable.serialize(to:) in conformance Font.StylisticAlternativeModifier(void *a1)
{
  v2 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  v5 = v2;
  __swift_mutable_project_boxed_opaque_existential_1(v4, v4[3]);
  type metadata accessor for RawRepresentableProxy<Font._StylisticAlternative>(0, &lazy cache variable for type metadata for RawRepresentableProxy<Font._StylisticAlternative>, lazy protocol witness table accessor for type Font._StylisticAlternative and conformance Font._StylisticAlternative, &type metadata for Font._StylisticAlternative);
  lazy protocol witness table accessor for type RawRepresentableProxy<Font._StylisticAlternative> and conformance RawRepresentableProxy<A>(&lazy protocol witness table cache variable for type RawRepresentableProxy<Font._StylisticAlternative> and conformance RawRepresentableProxy<A>, protocol conformance descriptor for RawRepresentableProxy<A>);
  dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

{
  return sub_18D3A2E84(a1);
}

uint64_t protocol witness for Serializable.serialize(to:) in conformance Text.Scale(void *a1)
{
  v2 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  v5 = v2;
  __swift_mutable_project_boxed_opaque_existential_1(v4, v4[3]);
  lazy protocol witness table accessor for type Text.Scale.Storage and conformance Text.Scale.Storage();
  dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

void *protocol witness for static Serializable.deserialize(from:) in conformance Text.Scale@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = dispatch thunk of Decoder.singleValueContainer()();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    lazy protocol witness table accessor for type Text.Scale.Storage and conformance Text.Scale.Storage();
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    *a2 = v6;
    return __swift_destroy_boxed_opaque_existential_1(v5);
  }

  return result;
}

uint64_t protocol witness for static Serializable.deserialize(from:) in conformance Color.NamedColor@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = specialized static CodableByProxy.deserialize(from:)(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

uint64_t protocol witness for Serializable.serialize(to:) in conformance Visibility(void *a1)
{
  v2 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  v5 = v2;
  __swift_mutable_project_boxed_opaque_existential_1(v4, v4[3]);
  lazy protocol witness table accessor for type CodableVisibility and conformance CodableVisibility();
  dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

void *protocol witness for static Serializable.deserialize(from:) in conformance Visibility@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = dispatch thunk of Decoder.singleValueContainer()();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    lazy protocol witness table accessor for type CodableVisibility and conformance CodableVisibility();
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    v5 = v7;
    result = __swift_destroy_boxed_opaque_existential_1(v6);
    *a2 = v5;
  }

  return result;
}

void protocol witness for static Serializable.deserialize(from:) in conformance Color.OpacityColor(uint64_t *a1@<X8>, void *a2@<X0>)
{
  v5 = specialized static CodableByProxy.deserialize(from:)(a2);
  if (!v2)
  {
    *a1 = v4;
    *(a1 + 1) = v5;
  }
}

uint64_t protocol witness for static Serializable.deserialize(from:) in conformance Color.HierarchicalOpacityColor@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t *a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

void protocol witness for static Serializable.deserialize(from:) in conformance Color.SettingOpacityProvider(uint64_t a1@<X8>, void *a2@<X0>)
{
  v5 = specialized static CodableByProxy.deserialize(from:)(a2);
  if (!v2)
  {
    *a1 = v4;
    *(a1 + 8) = v5;
  }
}

uint64_t protocol witness for Serializable.serialize(to:) in conformance Edge(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  v9 = v6;
  __swift_mutable_project_boxed_opaque_existential_1(v8, v8[3]);
  dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
  return __swift_destroy_boxed_opaque_existential_1(v8);
}

uint64_t protocol witness for static Serializable.deserialize(from:) in conformance TextAlignment@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = specialized static CodableByProxy.deserialize(from:)(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t protocol witness for Serializable.serialize(to:) in conformance LayoutDirection(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5)
{
  v7 = *v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  v10 = v7;
  __swift_mutable_project_boxed_opaque_existential_1(v9, v9[3]);
  a4();
  dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
  return __swift_destroy_boxed_opaque_existential_1(v9);
}

void *protocol witness for static Serializable.deserialize(from:) in conformance LayoutDirection@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X3>, _BYTE *a4@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = dispatch thunk of Decoder.singleValueContainer()();
  if (!v4)
  {
    __swift_project_boxed_opaque_existential_1(v8, v8[3]);
    a2();
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    *a4 = v9;
    return __swift_destroy_boxed_opaque_existential_1(v8);
  }

  return result;
}

uint64_t protocol witness for Serializable.serialize(to:) in conformance Font.PlatformFontProvider(void *a1)
{
  v2 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  v4[6] = v2;
  __swift_mutable_project_boxed_opaque_existential_1(v4, v4[3]);
  lazy protocol witness table accessor for type CodablePlatformFont and conformance CodablePlatformFont();
  dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

void *protocol witness for static Serializable.deserialize(from:) in conformance Font.PlatformFontProvider@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = dispatch thunk of Decoder.singleValueContainer()();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    lazy protocol witness table accessor for type CodablePlatformFont and conformance CodablePlatformFont();
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    v5 = v6[6];
    result = __swift_destroy_boxed_opaque_existential_1(v6);
    *a2 = v5;
  }

  return result;
}

double protocol witness for static CodableByProxy.unwrap(codingProxy:) in conformance EitherGradient@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  *a2 = *a1;
  *(a2 + 8) = v3;
  return outlined copy of EitherGradient(v2, v3);
}

void *protocol witness for static Serializable.deserialize(from:) in conformance ColorGradientProvider@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = dispatch thunk of Decoder.singleValueContainer()();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v9, v9[3]);
    type metadata accessor for ProxyCodable<Color>(0, v5, v6, v7);
    _sSo21NSAttributedStringKeyaABSHSCWlTm_0(&lazy protocol witness table cache variable for type ProxyCodable<Color> and conformance ProxyCodable<A>, type metadata accessor for ProxyCodable<Color>, protocol conformance descriptor for ProxyCodable<A>);
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    result = __swift_destroy_boxed_opaque_existential_1(v9);
    *a2 = v8;
  }

  return result;
}

void lazy protocol witness table accessor for type Error and conformance Error()
{
  if (!lazy protocol witness table cache variable for type Error and conformance Error)
  {
    swift_getWitnessTable(protocol conformance descriptor for Error, &unk_1F0054478, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Error and conformance Error);
  }
}

{
  if (!lazy protocol witness table cache variable for type Error and conformance Error)
  {
    swift_getWitnessTable(protocol conformance descriptor for Error, &unk_1F0054478, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Error and conformance Error);
  }
}

{
  if (!lazy protocol witness table cache variable for type Error and conformance Error)
  {
    swift_getWitnessTable(protocol conformance descriptor for Error, &unk_1F009E308, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Error and conformance Error);
  }
}

void specialized static CodableNSAttributes.== infix(_:_:)(void *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(*a1 + 16) == *(*a2 + 16))
  {
    v4 = 1 << *(v2 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(v2 + 64);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (!v6)
    {
      goto LABEL_8;
    }

    do
    {
      while (1)
      {
        v9 = v8;
LABEL_15:
        v12 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v13 = v12 | (v9 << 6);
        v14 = *(*(v2 + 48) + 8 * v13);
        outlined init with copy of Any(*(v2 + 56) + 32 * v13, v24);
        *&v29 = v14;
        outlined init with take of Any(v24, (&v29 + 8));
        v15 = v14;
        v11 = v9;
LABEL_16:
        v32[0] = v29;
        v32[1] = v30;
        v33 = v31;
        v16 = v29;
        if (!v29)
        {

          return;
        }

        outlined init with take of Any((v32 + 8), v28);
        if (!*(v3 + 16) || (v17 = specialized __RawDictionaryStorage.find<A>(_:)(v16), (v18 & 1) == 0))
        {

          v23 = v28;
LABEL_26:
          __swift_destroy_boxed_opaque_existential_1(v23);
          return;
        }

        outlined init with copy of Any(*(v3 + 56) + 32 * v17, &v29);
        outlined init with take of Any(&v29, v27);
        outlined init with copy of Any(v28, v26);
        v19 = MEMORY[0x1E69E6028];
        type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for Equatable, MEMORY[0x1E69E6028]);
        if (swift_dynamicCast())
        {
          break;
        }

        __swift_destroy_boxed_opaque_existential_1(v27);
        __swift_destroy_boxed_opaque_existential_1(v28);
        v25 = 0;
        memset(v24, 0, sizeof(v24));
        outlined destroy of _DisplayList_AnyEffectAnimator?(v24, &lazy cache variable for type metadata for Equatable?, &lazy cache variable for type metadata for Equatable, v19);
        v8 = v11;
        if (!v6)
        {
          goto LABEL_8;
        }
      }

      outlined init with take of AnyTrackedValue(v24, &v29);
      v20 = *(&v30 + 1);
      v21 = v31;
      v22 = __swift_project_boxed_opaque_existential_1(&v29, *(&v30 + 1));
      LOBYTE(v20) = areEqual #1 <A>(lhs:rhs:) in static CodableNSAttributes.== infix(_:_:)(v22, v27, v20, v21);

      __swift_destroy_boxed_opaque_existential_1(v27);
      __swift_destroy_boxed_opaque_existential_1(v28);
      if ((v20 & 1) == 0)
      {

        v23 = &v29;
        goto LABEL_26;
      }

      __swift_destroy_boxed_opaque_existential_1(&v29);
      v8 = v11;
    }

    while (v6);
LABEL_8:
    if (v7 <= v8 + 1)
    {
      v10 = v8 + 1;
    }

    else
    {
      v10 = v7;
    }

    v11 = v10 - 1;
    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v9 >= v7)
      {
        v6 = 0;
        v31 = 0;
        v29 = 0u;
        v30 = 0u;
        goto LABEL_16;
      }

      v6 = *(v2 + 64 + 8 * v9);
      ++v8;
      if (v6)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }
}

void instantiation function for generic protocol witness table for <A> A?(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  swift_getWitnessTable(protocol conformance descriptor for <A> A?, a2, &v5);
  *(a1 + 8) = v4;
}

{
  v5 = *a3;
  swift_getWitnessTable(protocol conformance descriptor for <A> A?, a2, &v5);
  *(a1 + 8) = v4;
}

{
  v5 = *a3;
  swift_getWitnessTable(protocol conformance descriptor for <A> A?, a2, &v5);
  *(a1 + 8) = v4;
}

void type metadata accessor for RawRepresentableProxy<NSAttributedStringKey>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for RawRepresentableProxy<NSAttributedStringKey>)
  {
    type metadata accessor for NSAttributedStringKey(255);
    v3 = v2;
    _sSo21NSAttributedStringKeyaABSHSCWlTm_0(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey, protocol conformance descriptor for NSAttributedStringKey);
    v7[0] = v3;
    v7[1] = v4;
    v7[2] = MEMORY[0x1E69E6190];
    v7[3] = MEMORY[0x1E69E6160];
    v5 = type metadata accessor for RawRepresentableProxy(a1, v7);
    if (!v6)
    {
      atomic_store(v5, &lazy cache variable for type metadata for RawRepresentableProxy<NSAttributedStringKey>);
    }
  }
}

void instantiation function for generic protocol witness table for <A> [A](uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  swift_getWitnessTable(protocol conformance descriptor for <A> [A], a2, &v5);
  *(a1 + 8) = v4;
}

void instantiation function for generic protocol witness table for CodableNSAttributes(uint64_t a1)
{
  lazy protocol witness table accessor for type CodableNSAttributes and conformance CodableNSAttributes();
  *(a1 + 8) = v2;
  lazy protocol witness table accessor for type CodableNSAttributes and conformance CodableNSAttributes();
  *(a1 + 16) = v3;
}

void lazy protocol witness table accessor for type CodableNSAttributes and conformance CodableNSAttributes()
{
  if (!lazy protocol witness table cache variable for type CodableNSAttributes and conformance CodableNSAttributes)
  {
    swift_getWitnessTable(protocol conformance descriptor for CodableNSAttributes, &type metadata for CodableNSAttributes, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CodableNSAttributes and conformance CodableNSAttributes);
  }
}

{
  if (!lazy protocol witness table cache variable for type CodableNSAttributes and conformance CodableNSAttributes)
  {
    swift_getWitnessTable(protocol conformance descriptor for CodableNSAttributes, &type metadata for CodableNSAttributes, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CodableNSAttributes and conformance CodableNSAttributes);
  }
}

{
  if (!lazy protocol witness table cache variable for type CodableNSAttributes and conformance CodableNSAttributes)
  {
    swift_getWitnessTable(protocol conformance descriptor for CodableNSAttributes, &type metadata for CodableNSAttributes, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CodableNSAttributes and conformance CodableNSAttributes);
  }
}

uint64_t *initializeBufferWithCopyOfBuffer for CodableOptional(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  if (*(v5 + 84))
  {
    v6 = *(v5 + 64);
  }

  else
  {
    v6 = *(v5 + 64) + 1;
  }

  v7 = *(v5 + 80);
  if (v7 > 7 || (*(v5 + 80) & 0x100000) != 0 || v6 > 0x18)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + ((v7 + 16) & ~v7));

    return a1;
  }

  if (!(*(v5 + 48))(a2, 1, v4))
  {
    (*(v5 + 16))(a1, a2, v4);
    (*(v5 + 56))(a1, 0, 1, v4);
    return a1;
  }

  return memcpy(a1, a2, v6);
}

void *initializeWithTake for CodableOptional(void *a1, const void *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(a2, 1, v5))
  {
    if (*(v6 + 84))
    {
      v7 = *(v6 + 64);
    }

    else
    {
      v7 = *(v6 + 64) + 1;
    }

    return memcpy(a1, a2, v7);
  }

  else
  {
    (*(v6 + 32))(a1, a2, v5);
    (*(v6 + 56))(a1, 0, 1, v5);
    return a1;
  }
}

void *assignWithTake for CodableOptional(void *a1, void *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 48);
  v8 = v7(a1, 1, v5);
  v9 = v7(a2, 1, v5);
  if (!v8)
  {
    if (v9)
    {
      v13 = *(v6 + 8);
      v12 = v6 + 8;
      v13(a1, v5);
      v10 = *(v12 + 76);
      v11 = *(v12 + 56);
      goto LABEL_6;
    }

    (*(v6 + 40))(a1, a2, v5);
    return a1;
  }

  if (!v9)
  {
    (*(v6 + 32))(a1, a2, v5);
    (*(v6 + 56))(a1, 0, 1, v5);
    return a1;
  }

  v10 = *(v6 + 84);
  v11 = *(v6 + 64);
LABEL_6:
  if (v10)
  {
    v14 = v11;
  }

  else
  {
    v14 = v11 + 1;
  }

  return memcpy(a1, a2, v14);
}

uint64_t getEnumTagSinglePayload for CodableOptional(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_28;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_28;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 <= 3)
          {
            v13 = v7;
          }

          else
          {
            v13 = 4;
          }

          if (v13 > 2)
          {
            if (v13 == 3)
            {
              v14 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v14 = *a1;
            }
          }

          else if (v13 == 1)
          {
            v14 = *a1;
          }

          else
          {
            v14 = *a1;
          }
        }

        else
        {
          v14 = 0;
        }

        return v6 + (v14 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_28:
  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))(a1, v5);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

char *storeEnumTagSinglePayload for CodableOptional(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (v7)
  {
    v9 = *(*(*(a4 + 16) - 8) + 64);
  }

  else
  {
    v8 = 0;
    v9 = *(*(*(a4 + 16) - 8) + 64) + 1;
  }

  v10 = a3 >= v8;
  v11 = a3 - v8;
  if (v11 == 0 || !v10)
  {
    goto LABEL_16;
  }

  if (v9 > 3)
  {
    v5 = 1;
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v12 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
  if (!HIWORD(v12))
  {
    if (v12 < 0x100)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }

    if (v12 >= 2)
    {
      v5 = v13;
    }

    else
    {
      v5 = 0;
    }

LABEL_16:
    if (v8 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v5 = 4;
  if (v8 < a2)
  {
LABEL_17:
    v14 = ~v8 + a2;
    if (v9 < 4)
    {
      v16 = (v14 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v14 & ~(-1 << (8 * v9));
        v18 = result;
        bzero(result, v9);
        result = v18;
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *v18 = v17;
            if (v5 > 1)
            {
LABEL_44:
              if (v5 == 2)
              {
                *&result[v9] = v16;
              }

              else
              {
                *&result[v9] = v16;
              }

              return result;
            }
          }

          else
          {
            *v18 = v14;
            if (v5 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *v18 = v17;
        v18[2] = BYTE2(v17);
      }

      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      v15 = result;
      bzero(result, v9);
      result = v15;
      *v15 = v14;
      v16 = 1;
      if (v5 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v5)
    {
      result[v9] = v16;
    }

    return result;
  }

LABEL_26:
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *&result[v9] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_33;
    }

    *&result[v9] = 0;
  }

  else if (v5)
  {
    result[v9] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return result;
  }

LABEL_33:
  if (v7 >= 2)
  {
    v19 = *(v6 + 56);

    return v19();
  }

  return result;
}

void *type metadata accessor for Error()
{
  return &unk_1F0054478;
}

{
  return &unk_1F009E308;
}

void type metadata accessor for ProxyCodable<Color>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!lazy cache variable for type metadata for ProxyCodable<Color>)
  {
    v4 = type metadata accessor for ProxyCodable(0, &type metadata for Color, &protocol witness table for Color, a4);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for ProxyCodable<Color>);
    }
  }
}

void lazy protocol witness table accessor for type Font.StyleDefinition and conformance Font.StyleDefinition()
{
  if (!lazy protocol witness table cache variable for type Font.StyleDefinition and conformance Font.StyleDefinition)
  {
    swift_getWitnessTable(protocol conformance descriptor for Font.StyleDefinition, &type metadata for Font.StyleDefinition, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Font.StyleDefinition and conformance Font.StyleDefinition);
  }
}

{
  if (!lazy protocol witness table cache variable for type Font.StyleDefinition and conformance Font.StyleDefinition)
  {
    swift_getWitnessTable(protocol conformance descriptor for Font.StyleDefinition, &type metadata for Font.StyleDefinition, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Font.StyleDefinition and conformance Font.StyleDefinition);
  }
}

void type metadata accessor for Color.RGBADefinition<CGFloat, Float>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Color.RGBADefinition<CGFloat, Float>)
  {
    lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    v3 = v2;
    lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    v7[0] = MEMORY[0x1E69E7DE0];
    v7[1] = MEMORY[0x1E69E6448];
    v7[2] = v3;
    v7[3] = v4;
    v7[4] = MEMORY[0x1E69E6478];
    v7[5] = MEMORY[0x1E69E6458];
    v5 = type metadata accessor for Color.RGBADefinition(a1, v7);
    if (!v6)
    {
      atomic_store(v5, &lazy cache variable for type metadata for Color.RGBADefinition<CGFloat, Float>);
    }
  }
}

void type metadata accessor for Color.RGBADefinition<Float, Float>()
{
  if (!lazy cache variable for type metadata for Color.RGBADefinition<Float, Float>)
  {
    v4[6] = v0;
    v4[7] = v1;
    v4[0] = MEMORY[0x1E69E6448];
    v4[1] = MEMORY[0x1E69E6448];
    v4[2] = MEMORY[0x1E69E6478];
    v4[3] = MEMORY[0x1E69E6458];
    v4[4] = MEMORY[0x1E69E6478];
    v4[5] = MEMORY[0x1E69E6458];
    v2 = type metadata accessor for Color.RGBADefinition(0, v4);
    if (!v3)
    {
      atomic_store(v2, &lazy cache variable for type metadata for Color.RGBADefinition<Float, Float>);
    }
  }
}

void lazy protocol witness table accessor for type CodableDisplayGamut and conformance CodableDisplayGamut()
{
  if (!lazy protocol witness table cache variable for type CodableDisplayGamut and conformance CodableDisplayGamut)
  {
    swift_getWitnessTable(protocol conformance descriptor for CodableDisplayGamut, &type metadata for CodableDisplayGamut, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CodableDisplayGamut and conformance CodableDisplayGamut);
  }
}

{
  if (!lazy protocol witness table cache variable for type CodableDisplayGamut and conformance CodableDisplayGamut)
  {
    swift_getWitnessTable(protocol conformance descriptor for CodableDisplayGamut, &type metadata for CodableDisplayGamut, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CodableDisplayGamut and conformance CodableDisplayGamut);
  }
}

void lazy protocol witness table accessor for type CodableVisibility and conformance CodableVisibility()
{
  if (!lazy protocol witness table cache variable for type CodableVisibility and conformance CodableVisibility)
  {
    swift_getWitnessTable(protocol conformance descriptor for CodableVisibility, &type metadata for CodableVisibility, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CodableVisibility and conformance CodableVisibility);
  }
}

{
  if (!lazy protocol witness table cache variable for type CodableVisibility and conformance CodableVisibility)
  {
    swift_getWitnessTable(protocol conformance descriptor for CodableVisibility, &type metadata for CodableVisibility, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CodableVisibility and conformance CodableVisibility);
  }
}

void lazy protocol witness table accessor for type Text.Scale.Storage and conformance Text.Scale.Storage()
{
  if (!lazy protocol witness table cache variable for type Text.Scale.Storage and conformance Text.Scale.Storage)
  {
    swift_getWitnessTable(protocol conformance descriptor for Text.Scale.Storage, &type metadata for Text.Scale.Storage, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Text.Scale.Storage and conformance Text.Scale.Storage);
  }
}

{
  if (!lazy protocol witness table cache variable for type Text.Scale.Storage and conformance Text.Scale.Storage)
  {
    swift_getWitnessTable(protocol conformance descriptor for Text.Scale.Storage, &type metadata for Text.Scale.Storage, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Text.Scale.Storage and conformance Text.Scale.Storage);
  }
}

{
  if (!lazy protocol witness table cache variable for type Text.Scale.Storage and conformance Text.Scale.Storage)
  {
    swift_getWitnessTable(protocol conformance descriptor for Text.Scale.Storage, &type metadata for Text.Scale.Storage, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Text.Scale.Storage and conformance Text.Scale.Storage);
  }
}

void lazy protocol witness table accessor for type Font._StylisticAlternative and conformance Font._StylisticAlternative()
{
  if (!lazy protocol witness table cache variable for type Font._StylisticAlternative and conformance Font._StylisticAlternative)
  {
    swift_getWitnessTable(protocol conformance descriptor for Font._StylisticAlternative, &type metadata for Font._StylisticAlternative, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Font._StylisticAlternative and conformance Font._StylisticAlternative);
  }
}

{
  if (!lazy protocol witness table cache variable for type Font._StylisticAlternative and conformance Font._StylisticAlternative)
  {
    swift_getWitnessTable(protocol conformance descriptor for Font._StylisticAlternative, &type metadata for Font._StylisticAlternative, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Font._StylisticAlternative and conformance Font._StylisticAlternative);
  }
}

void lazy protocol witness table accessor for type RawRepresentableProxy<Font._StylisticAlternative> and conformance RawRepresentableProxy<A>(unint64_t *a1, const char *a2)
{
  if (!*a1)
  {
    type metadata accessor for RawRepresentableProxy<Font._StylisticAlternative>(255, &lazy cache variable for type metadata for RawRepresentableProxy<Font._StylisticAlternative>, lazy protocol witness table accessor for type Font._StylisticAlternative and conformance Font._StylisticAlternative, &type metadata for Font._StylisticAlternative);
    swift_getWitnessTable(a2, v4);
    atomic_store(v5, a1);
  }
}

{
  if (!*a1)
  {
    type metadata accessor for RawRepresentableProxy<Font.VariationAxisIdentifier>(255, &lazy cache variable for type metadata for RawRepresentableProxy<Font._StylisticAlternative>, lazy protocol witness table accessor for type Font._StylisticAlternative and conformance Font._StylisticAlternative, &type metadata for Font._StylisticAlternative);
    swift_getWitnessTable(a2, v4);
    atomic_store(v5, a1);
  }
}

void type metadata accessor for RawRepresentableProxy<Font._StylisticAlternative>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    v8[0] = a4;
    v8[1] = a3();
    v8[2] = MEMORY[0x1E69E6560];
    v8[3] = MEMORY[0x1E69E6538];
    v6 = type metadata accessor for RawRepresentableProxy(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void lazy protocol witness table accessor for type Font.VariationAxisIdentifier and conformance Font.VariationAxisIdentifier()
{
  if (!lazy protocol witness table cache variable for type Font.VariationAxisIdentifier and conformance Font.VariationAxisIdentifier)
  {
    swift_getWitnessTable(protocol conformance descriptor for Font.VariationAxisIdentifier, &type metadata for Font.VariationAxisIdentifier, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Font.VariationAxisIdentifier and conformance Font.VariationAxisIdentifier);
  }
}

{
  if (!lazy protocol witness table cache variable for type Font.VariationAxisIdentifier and conformance Font.VariationAxisIdentifier)
  {
    swift_getWitnessTable(protocol conformance descriptor for Font.VariationAxisIdentifier, &type metadata for Font.VariationAxisIdentifier, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Font.VariationAxisIdentifier and conformance Font.VariationAxisIdentifier);
  }
}

void lazy protocol witness table accessor for type RawRepresentableProxy<Font.VariationAxisIdentifier> and conformance RawRepresentableProxy<A>(unint64_t *a1, const char *a2)
{
  if (!*a1)
  {
    type metadata accessor for RawRepresentableProxy<Font._StylisticAlternative>(255, &lazy cache variable for type metadata for RawRepresentableProxy<Font.VariationAxisIdentifier>, lazy protocol witness table accessor for type Font.VariationAxisIdentifier and conformance Font.VariationAxisIdentifier, &type metadata for Font.VariationAxisIdentifier);
    swift_getWitnessTable(a2, v4);
    atomic_store(v5, a1);
  }
}

{
  if (!*a1)
  {
    type metadata accessor for RawRepresentableProxy<Font.VariationAxisIdentifier>(255, &lazy cache variable for type metadata for RawRepresentableProxy<Font.VariationAxisIdentifier>, lazy protocol witness table accessor for type Font.VariationAxisIdentifier and conformance Font.VariationAxisIdentifier, &type metadata for Font.VariationAxisIdentifier);
    swift_getWitnessTable(a2, v4);
    atomic_store(v5, a1);
  }
}

void lazy protocol witness table accessor for type CodableAlignment and conformance CodableAlignment()
{
  if (!lazy protocol witness table cache variable for type CodableAlignment and conformance CodableAlignment)
  {
    swift_getWitnessTable(protocol conformance descriptor for CodableAlignment, &type metadata for CodableAlignment, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CodableAlignment and conformance CodableAlignment);
  }
}

{
  if (!lazy protocol witness table cache variable for type CodableAlignment and conformance CodableAlignment)
  {
    swift_getWitnessTable(protocol conformance descriptor for CodableAlignment, &type metadata for CodableAlignment, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CodableAlignment and conformance CodableAlignment);
  }
}

void type metadata accessor for CodableRawRepresentable<NSTextEncapsulationPlatterSize>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for CodableRawRepresentable<NSTextEncapsulationPlatterSize>)
  {
    type metadata accessor for NSTextEncapsulationPlatterSize(255);
    v3 = v2;
    _sSo21NSAttributedStringKeyaABSHSCWlTm_0(&lazy protocol witness table cache variable for type NSTextEncapsulationPlatterSize and conformance NSTextEncapsulationPlatterSize, type metadata accessor for NSTextEncapsulationPlatterSize, protocol conformance descriptor for NSTextEncapsulationPlatterSize);
    v7[0] = v3;
    v7[1] = v4;
    v7[2] = MEMORY[0x1E69E6840];
    v7[3] = MEMORY[0x1E69E6818];
    v5 = type metadata accessor for CodableRawRepresentable(a1, v7);
    if (!v6)
    {
      atomic_store(v5, &lazy cache variable for type metadata for CodableRawRepresentable<NSTextEncapsulationPlatterSize>);
    }
  }
}

void lazy protocol witness table accessor for type CodableRawRepresentable<NSTextEncapsulationPlatterSize> and conformance CodableRawRepresentable<A>()
{
  _sSo21NSAttributedStringKeyaABSHSCWlTm_0(&lazy protocol witness table cache variable for type CodableRawRepresentable<NSTextEncapsulationPlatterSize> and conformance CodableRawRepresentable<A>, type metadata accessor for CodableRawRepresentable<NSTextEncapsulationPlatterSize>, protocol conformance descriptor for CodableRawRepresentable<A>);
}

{
  _sSo21NSAttributedStringKeyaABSHSCWlTm_0(&lazy protocol witness table cache variable for type CodableRawRepresentable<NSTextEncapsulationPlatterSize> and conformance CodableRawRepresentable<A>, type metadata accessor for CodableRawRepresentable<NSTextEncapsulationPlatterSize>, protocol conformance descriptor for CodableRawRepresentable<A>);
}

void type metadata accessor for CodableRawRepresentable<NSTextEncapsulationStyle>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for CodableRawRepresentable<NSTextEncapsulationStyle>)
  {
    type metadata accessor for NSTextEncapsulationStyle(255);
    v3 = v2;
    _sSo21NSAttributedStringKeyaABSHSCWlTm_0(&lazy protocol witness table cache variable for type NSTextEncapsulationStyle and conformance NSTextEncapsulationStyle, type metadata accessor for NSTextEncapsulationStyle, protocol conformance descriptor for NSTextEncapsulationStyle);
    v7[0] = v3;
    v7[1] = v4;
    v7[2] = MEMORY[0x1E69E6840];
    v7[3] = MEMORY[0x1E69E6818];
    v5 = type metadata accessor for CodableRawRepresentable(a1, v7);
    if (!v6)
    {
      atomic_store(v5, &lazy cache variable for type metadata for CodableRawRepresentable<NSTextEncapsulationStyle>);
    }
  }
}

void lazy protocol witness table accessor for type CodableRawRepresentable<NSTextEncapsulationStyle> and conformance CodableRawRepresentable<A>()
{
  _sSo21NSAttributedStringKeyaABSHSCWlTm_0(&lazy protocol witness table cache variable for type CodableRawRepresentable<NSTextEncapsulationStyle> and conformance CodableRawRepresentable<A>, type metadata accessor for CodableRawRepresentable<NSTextEncapsulationStyle>, protocol conformance descriptor for CodableRawRepresentable<A>);
}

{
  _sSo21NSAttributedStringKeyaABSHSCWlTm_0(&lazy protocol witness table cache variable for type CodableRawRepresentable<NSTextEncapsulationStyle> and conformance CodableRawRepresentable<A>, type metadata accessor for CodableRawRepresentable<NSTextEncapsulationStyle>, protocol conformance descriptor for CodableRawRepresentable<A>);
}

void type metadata accessor for CodableRawRepresentable<NSTextEncapsulationShape>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for CodableRawRepresentable<NSTextEncapsulationShape>)
  {
    type metadata accessor for NSTextEncapsulationShape(255);
    v3 = v2;
    _sSo21NSAttributedStringKeyaABSHSCWlTm_0(&lazy protocol witness table cache variable for type NSTextEncapsulationShape and conformance NSTextEncapsulationShape, type metadata accessor for NSTextEncapsulationShape, protocol conformance descriptor for NSTextEncapsulationShape);
    v7[0] = v3;
    v7[1] = v4;
    v7[2] = MEMORY[0x1E69E6840];
    v7[3] = MEMORY[0x1E69E6818];
    v5 = type metadata accessor for CodableRawRepresentable(a1, v7);
    if (!v6)
    {
      atomic_store(v5, &lazy cache variable for type metadata for CodableRawRepresentable<NSTextEncapsulationShape>);
    }
  }
}

void lazy protocol witness table accessor for type CodableRawRepresentable<NSTextEncapsulationShape> and conformance CodableRawRepresentable<A>()
{
  _sSo21NSAttributedStringKeyaABSHSCWlTm_0(&lazy protocol witness table cache variable for type CodableRawRepresentable<NSTextEncapsulationShape> and conformance CodableRawRepresentable<A>, type metadata accessor for CodableRawRepresentable<NSTextEncapsulationShape>, protocol conformance descriptor for CodableRawRepresentable<A>);
}

{
  _sSo21NSAttributedStringKeyaABSHSCWlTm_0(&lazy protocol witness table cache variable for type CodableRawRepresentable<NSTextEncapsulationShape> and conformance CodableRawRepresentable<A>, type metadata accessor for CodableRawRepresentable<NSTextEncapsulationShape>, protocol conformance descriptor for CodableRawRepresentable<A>);
}

void type metadata accessor for CodableRawRepresentable<NSTextEncapsulationScale>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for CodableRawRepresentable<NSTextEncapsulationScale>)
  {
    type metadata accessor for NSTextEncapsulationScale(255);
    v3 = v2;
    _sSo21NSAttributedStringKeyaABSHSCWlTm_0(&lazy protocol witness table cache variable for type NSTextEncapsulationScale and conformance NSTextEncapsulationScale, type metadata accessor for NSTextEncapsulationScale, protocol conformance descriptor for NSTextEncapsulationScale);
    v7[0] = v3;
    v7[1] = v4;
    v7[2] = MEMORY[0x1E69E6840];
    v7[3] = MEMORY[0x1E69E6818];
    v5 = type metadata accessor for CodableRawRepresentable(a1, v7);
    if (!v6)
    {
      atomic_store(v5, &lazy cache variable for type metadata for CodableRawRepresentable<NSTextEncapsulationScale>);
    }
  }
}

void lazy protocol witness table accessor for type CodableRawRepresentable<NSTextEncapsulationScale> and conformance CodableRawRepresentable<A>()
{
  _sSo21NSAttributedStringKeyaABSHSCWlTm_0(&lazy protocol witness table cache variable for type CodableRawRepresentable<NSTextEncapsulationScale> and conformance CodableRawRepresentable<A>, type metadata accessor for CodableRawRepresentable<NSTextEncapsulationScale>, protocol conformance descriptor for CodableRawRepresentable<A>);
}

{
  _sSo21NSAttributedStringKeyaABSHSCWlTm_0(&lazy protocol witness table cache variable for type CodableRawRepresentable<NSTextEncapsulationScale> and conformance CodableRawRepresentable<A>, type metadata accessor for CodableRawRepresentable<NSTextEncapsulationScale>, protocol conformance descriptor for CodableRawRepresentable<A>);
}

void type metadata accessor for RawRepresentableProxy<ContentStyle.ID>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for RawRepresentableProxy<ContentStyle.ID>)
  {
    lazy protocol witness table accessor for type ContentStyle.ID and conformance ContentStyle.ID();
    v5[0] = &type metadata for ContentStyle.ID;
    v5[1] = v2;
    v5[2] = MEMORY[0x1E69E7250];
    v5[3] = MEMORY[0x1E69E7238];
    v3 = type metadata accessor for RawRepresentableProxy(a1, v5);
    if (!v4)
    {
      atomic_store(v3, &lazy cache variable for type metadata for RawRepresentableProxy<ContentStyle.ID>);
    }
  }
}

void lazy protocol witness table accessor for type ContentStyle.ID and conformance ContentStyle.ID()
{
  if (!lazy protocol witness table cache variable for type ContentStyle.ID and conformance ContentStyle.ID)
  {
    swift_getWitnessTable(protocol conformance descriptor for ContentStyle.ID, &type metadata for ContentStyle.ID, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ContentStyle.ID and conformance ContentStyle.ID);
  }
}

{
  if (!lazy protocol witness table cache variable for type ContentStyle.ID and conformance ContentStyle.ID)
  {
    swift_getWitnessTable(protocol conformance descriptor for ContentStyle.ID, &type metadata for ContentStyle.ID, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ContentStyle.ID and conformance ContentStyle.ID);
  }
}

{
  if (!lazy protocol witness table cache variable for type ContentStyle.ID and conformance ContentStyle.ID)
  {
    swift_getWitnessTable(protocol conformance descriptor for ContentStyle.ID, &type metadata for ContentStyle.ID, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ContentStyle.ID and conformance ContentStyle.ID);
  }
}

{
  if (!lazy protocol witness table cache variable for type ContentStyle.ID and conformance ContentStyle.ID)
  {
    swift_getWitnessTable(protocol conformance descriptor for ContentStyle.ID, &type metadata for ContentStyle.ID, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ContentStyle.ID and conformance ContentStyle.ID);
  }
}

void lazy protocol witness table accessor for type TextJustification.Storage and conformance TextJustification.Storage()
{
  if (!lazy protocol witness table cache variable for type TextJustification.Storage and conformance TextJustification.Storage)
  {
    swift_getWitnessTable(protocol conformance descriptor for TextJustification.Storage, &type metadata for TextJustification.Storage, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type TextJustification.Storage and conformance TextJustification.Storage);
  }
}

{
  if (!lazy protocol witness table cache variable for type TextJustification.Storage and conformance TextJustification.Storage)
  {
    swift_getWitnessTable(protocol conformance descriptor for TextJustification.Storage, &type metadata for TextJustification.Storage, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type TextJustification.Storage and conformance TextJustification.Storage);
  }
}

{
  if (!lazy protocol witness table cache variable for type TextJustification.Storage and conformance TextJustification.Storage)
  {
    swift_getWitnessTable(protocol conformance descriptor for TextJustification.Storage, &type metadata for TextJustification.Storage, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type TextJustification.Storage and conformance TextJustification.Storage);
  }
}

void lazy protocol witness table accessor for type AccessibilityTextContentType.RawValue and conformance AccessibilityTextContentType.RawValue()
{
  if (!lazy protocol witness table cache variable for type AccessibilityTextContentType.RawValue and conformance AccessibilityTextContentType.RawValue)
  {
    swift_getWitnessTable(protocol conformance descriptor for AccessibilityTextContentType.RawValue, &type metadata for AccessibilityTextContentType.RawValue, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type AccessibilityTextContentType.RawValue and conformance AccessibilityTextContentType.RawValue);
  }
}

{
  if (!lazy protocol witness table cache variable for type AccessibilityTextContentType.RawValue and conformance AccessibilityTextContentType.RawValue)
  {
    swift_getWitnessTable(protocol conformance descriptor for AccessibilityTextContentType.RawValue, &type metadata for AccessibilityTextContentType.RawValue, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type AccessibilityTextContentType.RawValue and conformance AccessibilityTextContentType.RawValue);
  }
}

{
  if (!lazy protocol witness table cache variable for type AccessibilityTextContentType.RawValue and conformance AccessibilityTextContentType.RawValue)
  {
    swift_getWitnessTable(protocol conformance descriptor for AccessibilityTextContentType.RawValue, &type metadata for AccessibilityTextContentType.RawValue, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type AccessibilityTextContentType.RawValue and conformance AccessibilityTextContentType.RawValue);
  }
}

{
  if (!lazy protocol witness table cache variable for type AccessibilityTextContentType.RawValue and conformance AccessibilityTextContentType.RawValue)
  {
    swift_getWitnessTable(protocol conformance descriptor for AccessibilityTextContentType.RawValue, &type metadata for AccessibilityTextContentType.RawValue, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type AccessibilityTextContentType.RawValue and conformance AccessibilityTextContentType.RawValue);
  }
}

void lazy protocol witness table accessor for type CodableFontWeight and conformance CodableFontWeight()
{
  if (!lazy protocol witness table cache variable for type CodableFontWeight and conformance CodableFontWeight)
  {
    swift_getWitnessTable(protocol conformance descriptor for CodableFontWeight, &type metadata for CodableFontWeight, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CodableFontWeight and conformance CodableFontWeight);
  }
}

{
  if (!lazy protocol witness table cache variable for type CodableFontWeight and conformance CodableFontWeight)
  {
    swift_getWitnessTable(protocol conformance descriptor for CodableFontWeight, &type metadata for CodableFontWeight, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CodableFontWeight and conformance CodableFontWeight);
  }
}

void type metadata accessor for [String]()
{
  if (!lazy cache variable for type metadata for [String])
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [String]);
    }
  }
}

void lazy protocol witness table accessor for type [String] and conformance <A> [A](unint64_t *a1, uint64_t a2, const char *a3)
{
  if (!*a1)
  {
    type metadata accessor for [String]();
    v8 = a2;
    swift_getWitnessTable(a3, v6, &v8);
    atomic_store(v7, a1);
  }
}

void lazy protocol witness table accessor for type Font.FeatureSettingDefinition and conformance Font.FeatureSettingDefinition()
{
  if (!lazy protocol witness table cache variable for type Font.FeatureSettingDefinition and conformance Font.FeatureSettingDefinition)
  {
    swift_getWitnessTable(protocol conformance descriptor for Font.FeatureSettingDefinition, &type metadata for Font.FeatureSettingDefinition, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Font.FeatureSettingDefinition and conformance Font.FeatureSettingDefinition);
  }
}

{
  if (!lazy protocol witness table cache variable for type Font.FeatureSettingDefinition and conformance Font.FeatureSettingDefinition)
  {
    swift_getWitnessTable(protocol conformance descriptor for Font.FeatureSettingDefinition, &type metadata for Font.FeatureSettingDefinition, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Font.FeatureSettingDefinition and conformance Font.FeatureSettingDefinition);
  }
}

void lazy protocol witness table accessor for type Font.VariationDefinition and conformance Font.VariationDefinition()
{
  if (!lazy protocol witness table cache variable for type Font.VariationDefinition and conformance Font.VariationDefinition)
  {
    swift_getWitnessTable(protocol conformance descriptor for Font.VariationDefinition, &type metadata for Font.VariationDefinition, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Font.VariationDefinition and conformance Font.VariationDefinition);
  }
}

{
  if (!lazy protocol witness table cache variable for type Font.VariationDefinition and conformance Font.VariationDefinition)
  {
    swift_getWitnessTable(protocol conformance descriptor for Font.VariationDefinition, &type metadata for Font.VariationDefinition, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Font.VariationDefinition and conformance Font.VariationDefinition);
  }
}

void type metadata accessor for (Any, EncodingError.Context)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (Any, EncodingError.Context))
  {
    type metadata accessor for EncodingError.Context();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (Any, EncodingError.Context));
    }
  }
}

double destroy for JSONCodable.Error(uint64_t a1)
{

  return result;
}

void *initializeWithCopy for JSONCodable.Error(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;

  return a1;
}

void *assignWithCopy for JSONCodable.Error(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  a1[2] = a2[2];
  a1[3] = a2[3];

  return a1;
}

void *assignWithTake for JSONCodable.Error(void *a1, void *a2)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;

  v5 = a2[3];
  a1[2] = a2[2];
  a1[3] = v5;

  return a1;
}

uint64_t getEnumTagSinglePayload for JSONCodable.Error(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t storeEnumTagSinglePayload for JSONCodable.Error(uint64_t result, int a2, int a3)
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

uint64_t ImagePaint.init(image:sourceRect:scale:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>, double a7@<D4>)
{
  *a2 = result;
  *(a2 + 8) = a3;
  *(a2 + 16) = a4;
  *(a2 + 24) = a5;
  *(a2 + 32) = a6;
  *(a2 + 40) = a7;
  return result;
}

void ImagePaint.sourceRect.setter(double a1, double a2, double a3, double a4)
{
  v4[1] = a1;
  v4[2] = a2;
  v4[3] = a3;
  v4[4] = a4;
}

uint64_t ImagePaint._Paint.image.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1[5];
  v13 = v1[4];
  v2 = v13;
  v14[0] = v3;
  *(v14 + 12) = *(v1 + 92);
  v4 = *(v14 + 12);
  v5 = v1[1];
  v10[0] = *v1;
  v10[1] = v5;
  v6 = v1[3];
  v11 = v1[2];
  v7 = v11;
  v12 = v6;
  *a1 = v10[0];
  a1[1] = v5;
  a1[2] = v7;
  a1[3] = v6;
  a1[4] = v2;
  a1[5] = v3;
  *(a1 + 92) = v4;
  return outlined init with copy of GraphicsImage(v10, &v9);
}

__n128 ImagePaint._Paint.image.setter(uint64_t a1)
{
  v3 = v1[5];
  v9[4] = v1[4];
  v10[0] = v3;
  *(v10 + 12) = *(v1 + 92);
  v4 = v1[1];
  v9[0] = *v1;
  v9[1] = v4;
  v5 = v1[3];
  v9[2] = v1[2];
  v9[3] = v5;
  outlined destroy of GraphicsImage(v9);
  v6 = *(a1 + 80);
  v1[4] = *(a1 + 64);
  v1[5] = v6;
  *(v1 + 92) = *(a1 + 92);
  v7 = *(a1 + 16);
  *v1 = *a1;
  v1[1] = v7;
  result = *(a1 + 48);
  v1[2] = *(a1 + 32);
  v1[3] = result;
  return result;
}

void ImagePaint._Paint.sourceRect.setter(double a1, double a2, double a3, double a4)
{
  v4[14] = a1;
  v4[15] = a2;
  v4[16] = a3;
  v4[17] = a4;
}

_OWORD *ImagePaint._Paint.init(image:sourceRect:scale:)@<X0>(_OWORD *result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>, double a7@<D4>)
{
  v7 = result[5];
  *(a2 + 64) = result[4];
  *(a2 + 80) = v7;
  *(a2 + 92) = *(result + 92);
  v8 = result[1];
  *a2 = *result;
  *(a2 + 16) = v8;
  v9 = result[3];
  *(a2 + 32) = result[2];
  *(a2 + 48) = v9;
  *(a2 + 112) = a3;
  *(a2 + 120) = a4;
  *(a2 + 128) = a5;
  *(a2 + 136) = a6;
  *(a2 + 144) = a7;
  return result;
}

uint64_t ImagePaint._Paint.draw(path:style:in:bounds:)(double *a1, __int128 *a2, uint64_t a3, __int128 *a4)
{
  v7 = *a4;
  v37 = a2[1];
  v38 = *a2;
  v8 = *(a2 + 4);
  v9 = *(a2 + 40);
  v10 = *(v4 + 80);
  v71 = *(v4 + 64);
  v72[0] = v10;
  *(v72 + 12) = *(v4 + 92);
  v11 = *(v4 + 16);
  v67 = *v4;
  v68 = v11;
  v12 = *(v4 + 48);
  v69 = *(v4 + 32);
  v70 = v12;
  v13 = *(v4 + 112);
  v14 = *(v4 + 120);
  v16 = *(v4 + 128);
  v15 = *(v4 + 136);
  v17 = *(v4 + 144);
  if ((a4[2] & 1) == 0)
  {
    goto LABEL_16;
  }

  v7 = *a1;
  v18 = *(a1 + 32);
  if (v18 > 2)
  {
    if (v18 == 5)
    {
      v19 = *a1;
      if (*(v7 + 16))
      {
        if (*(v7 + 16) == 1)
        {

          RBPathGetBoundingRect();
        }

        else
        {

          v20 = MEMORY[0x193AC3640](v19 + 24);
        }

        x = v20;
        y = v21;
        goto LABEL_15;
      }

      v22 = *(v7 + 24);
      if (v22)
      {
        v23 = v22;

        PathBoundingBox = CGPathGetPathBoundingBox(v23);
        x = PathBoundingBox.origin.x;
        y = PathBoundingBox.origin.y;

LABEL_15:
        outlined destroy of Path(a1);
        *&v7 = x;
        *(&v7 + 1) = y;
        goto LABEL_16;
      }

      __break(1u);
    }

    else if (v18 == 6)
    {
      v7 = *MEMORY[0x1E695F050];
      goto LABEL_16;
    }

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  if (v18 >= 2)
  {
    v7 = *(v7 + 16);
  }

LABEL_16:
  v40 = v7;
  v24 = 1.0;
  v25 = 1.0;
  if (*&v68 != 0.0)
  {
    v32 = *&v69;
    if (BYTE8(v69) > 3u)
    {
      v33 = *(&v68 + 1);
    }

    else
    {
      v33 = *&v69;
      v32 = *(&v68 + 1);
    }

    v34 = 1.0 / *&v68 * v32;
    v35 = 1.0 / *&v68 * v33;
    if (v34 == 0.0)
    {
      if (v35 == 0.0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v25 = 1.0 / v34;
      if (v35 == 0.0)
      {
        goto LABEL_17;
      }
    }

    v24 = 1.0 / v35;
  }

LABEL_17:
  v74.origin.x = v13;
  v74.origin.y = v14;
  v74.size.width = v16;
  v74.size.height = v15;
  if (!CGRectIsNull(v74))
  {
    v75.origin.x = v13;
    v75.origin.y = v14;
    v75.size.width = v16;
    v75.size.height = v15;
    if (!CGRectIsInfinite(v75))
    {
      v26 = v13 * v25;
      v76.origin.x = v13;
      v76.origin.y = v14;
      v76.size.width = v16;
      v76.size.height = v15;
      v27 = v25 * CGRectGetWidth(v76);
      v77.origin.x = v13;
      v77.origin.y = v14;
      v77.size.width = v16;
      v77.size.height = v15;
      v15 = v24 * CGRectGetHeight(v77);
      v13 = v26;
      v14 = v14 * v24;
      v16 = v27;
    }
  }

  v28 = *(v4 + 80);
  v59 = *(v4 + 64);
  *v60 = v28;
  *&v60[12] = *(v4 + 92);
  v29 = *(v4 + 16);
  v55 = *v4;
  v56 = v29;
  v30 = *(v4 + 48);
  v57 = *(v4 + 32);
  v58 = v30;
  v61 = v40;
  *&v62 = v13;
  *(&v62 + 1) = v14;
  *&v63 = v16;
  *(&v63 + 1) = v15;
  v64 = v17;
  _s7SwiftUI15GraphicsContextV15ResolvedShadingOWOi6_(&v55);
  v52 = v62;
  v53 = v63;
  v54 = v64;
  v48 = v59;
  v49 = *v60;
  v50 = *&v60[16];
  v51 = v61;
  v44 = v55;
  v45 = v56;
  v46 = v57;
  v47 = v58;
  v41[0] = v38;
  v41[1] = v37;
  v42 = v8;
  v43 = v9;
  outlined init with copy of GraphicsImage(&v67, v65);
  GraphicsContext.draw(_:with:style:)(a1, &v44, v41, a3);
  v65[8] = v52;
  v65[9] = v53;
  v66 = v54;
  v65[4] = v48;
  v65[5] = v49;
  v65[6] = v50;
  v65[7] = v51;
  v65[0] = v44;
  v65[1] = v45;
  v65[2] = v46;
  v65[3] = v47;
  return outlined destroy of GraphicsContext.ResolvedShading(v65);
}

uint64_t ImagePaint.resolvePaint(in:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  type metadata accessor for Text.Style?(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ImageResolutionContext(0);
  v7 = (v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *a1;
  v10 = a1[1];
  v12 = type metadata accessor for Text.Style(0);
  v13 = *(*(v12 - 8) + 56);
  v13(v5, 1, 1, v12);
  LODWORD(v52.f64[0]) = *MEMORY[0x1E698D3F8];
  v9[2] = 0;
  v14 = v7[8];
  v13(v9 + v14, 1, 1, v12);
  v15 = v11;
  v16 = v7[9];
  v17 = v9 + v7[10];
  *v17 = 520;
  v17[2] = 2;
  *(v9 + v7[11]) = 3;
  *(v9 + v7[12]) = 1;
  *v9 = v11;
  v9[1] = v10;

  outlined assign with take of Text.Style?(v5, v9 + v14);
  *(v9 + v16) = LODWORD(v52.f64[0]);
  v18 = v49;
  (*(**v49 + 80))(&v72, v9);
  outlined init with copy of GraphicsImage(&v72, &v57);
  outlined destroy of Image.Resolved(&v72);
  v68 = v72;
  v69[0] = *v73;
  *(v69 + 12) = *&v73[12];
  v19 = v74;
  v20 = v75;
  v21 = v76;
  v67 = v77;
  *(v66 + 11) = *(v79 + 11);
  v65 = v78;
  v66[0] = v79[0];
  if ((v77 & 1) == 0)
  {
    if (one-time initialization token for foreground != -1)
    {
      swift_once();
    }

    *&v57 = v15;
    *(&v57 + 1) = v10;
    (*(*static Color.foreground + 120))(v70, &v57);
    v19 = v70[0];
    v20 = v70[1];
    v21 = v71;
    v67 = 0;
  }

  v22 = 0uLL;
  if (*v73 != 0.0)
  {
    v23 = *&v73[8];
    if (v73[24] > 3u)
    {
      v23 = vextq_s8(*&v73[8], *&v73[8], 8uLL);
    }

    v22 = vmulq_n_f64(v23, 1.0 / *v73);
  }

  v48 = v22;
  v25 = *(v18 + 8);
  v26 = *(v18 + 16);
  v27 = *(v18 + 32);
  v51 = *(v18 + 24);
  v24 = v51.f64[0];
  v52 = v25;
  v28 = v26;
  v29 = v27;
  if (!CGRectIsNull(*v25.f64))
  {
    v80.size.width = v51.f64[0];
    v80.origin.x = v52.f64[0];
    v80.origin.y = v26;
    v80.size.height = v27;
    if (!CGRectIsInfinite(v80))
    {
      v81.size.width = v51.f64[0];
      v81.origin.x = v52.f64[0];
      v81.origin.y = v26;
      v81.size.height = v27;
      *&v30 = CGRectGetWidth(v81);
      v47 = v30;
      v31 = v51.f64[0];
      *&v30 = v52.f64[0];
      v32 = v26;
      v33 = v27;
      Height = CGRectGetHeight(*&v30);
      *&v35.f64[0] = v47;
      v35.f64[1] = Height;
      v51 = vmulq_f64(v48, v35);
      v52 = vmulq_f64(v48, v52);
    }
  }

  outlined destroy of ImageResolutionContext(v9, type metadata accessor for ImageResolutionContext);
  *(v55 + 12) = *(v69 + 12);
  v36 = v68;
  v37 = v69[0];
  v54 = v68;
  v55[0] = v69[0];
  *(&v55[1] + 12) = v19;
  *(&v55[2] + 4) = v20;
  HIDWORD(v55[2]) = v21;
  v38 = v67;
  LOBYTE(v56[0]) = v67;
  *(v56 + 1) = v65;
  v39 = v65;
  v40 = v66[0];
  *(&v56[1] + 1) = v66[0];
  *(&v56[1] + 12) = *(v66 + 11);
  v41 = v56[1];
  v42 = v50;
  *(v50 + 64) = v56[0];
  *(v42 + 80) = v41;
  *(v42 + 92) = *(&v56[1] + 12);
  v43 = v55[0];
  *v42 = v54;
  *(v42 + 16) = v43;
  v44 = v55[2];
  *(v42 + 32) = v55[1];
  *(v42 + 48) = v44;
  v45 = v51;
  *(v42 + 112) = v52;
  *(v42 + 128) = v45;
  *(v42 + 144) = *(v18 + 40);
  *&v58[12] = *(v69 + 12);
  v57 = v36;
  *v58 = v37;
  v59 = v19;
  v60 = v20;
  v61 = v21;
  v62 = v38;
  *&v64[11] = *(v66 + 11);
  *v64 = v40;
  v63 = v39;
  outlined init with copy of GraphicsImage(&v54, &v53);
  return outlined destroy of GraphicsImage(&v57);
}

void ImagePaint._Paint.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = v3[14];
  v6 = v3[15];
  v7 = v3[16];
  v8 = v3[17];
  v9 = v3[18];
  specialized ProtobufEncoder.messageField<A>(_:_:)(1);
  if (!v2)
  {
    v16.origin.x = 0.0;
    v16.origin.y = 0.0;
    v16.size.width = 0.0;
    v16.size.height = 0.0;
    v15.origin.x = v5;
    v15.origin.y = v6;
    v15.size.width = v7;
    v15.size.height = v8;
    if (!CGRectEqualToRect(v15, v16))
    {
      ProtobufEncoder.encodeVarint(_:)(0x12uLL);
      specialized ProtobufEncoder.encodeMessage<A>(_:)(v5, v6, v7, v8);
    }

    if (v9 != 0.0)
    {
      v10 = fabs(v9);
      if (v10 >= 65536.0)
      {
        v11 = 25;
      }

      else
      {
        v11 = 29;
      }

      ProtobufEncoder.encodeVarint(_:)(v11);
      if (v10 < 65536.0)
      {
        v12 = a1[1];
        v13 = v12 + 4;
        if (!__OFADD__(v12, 4))
        {
          *&v10 = v9;
          if (a1[2] >= v13)
          {
            a1[1] = v13;
            *(*a1 + v12) = LODWORD(v10);
            return;
          }

          goto LABEL_18;
        }

        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        *ProtobufEncoder.growBufferSlow(to:)(v13) = LODWORD(v10);
        return;
      }

      v14 = a1[1];
      v13 = v14 + 8;
      if (__OFADD__(v14, 8))
      {
        goto LABEL_17;
      }

      if (a1[2] < v13)
      {
        *ProtobufEncoder.growBufferSlow(to:)(v13) = v9;
      }

      else
      {
        a1[1] = v13;
        *(*a1 + v14) = v9;
      }
    }
  }
}

unint64_t ImagePaint._Paint.init(from:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v78 = *MEMORY[0x1E69E9840];
  v5 = a1[1];
  v6 = a1[2];
  if (v5 < v6)
  {
    v76 = 0;
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v77 = 512;
    v7 = 1.0;
    v45 = 0u;
    v46 = 0u;
    v70 = 0u;
    v71 = 0u;
    result = a1[3];
    if (result)
    {
      goto LABEL_3;
    }

LABEL_6:
    result = ProtobufDecoder.decodeVarint()(result);
    if (!v2)
    {
      if (result >= 8)
      {
        while (1)
        {
          v10 = result >> 3;
          if (result >> 3 != 1)
          {
            break;
          }

          if ((result & 7) != 2)
          {
            goto LABEL_71;
          }

          v22 = a1[5];
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v22 + 16) + 1, 1, v22);
            v22 = isUniquelyReferenced_nonNull_native;
          }

          v25 = *(v22 + 16);
          v24 = *(v22 + 24);
          if (v25 >= v24 >> 1)
          {
            isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1, v22);
            v22 = isUniquelyReferenced_nonNull_native;
          }

          *(v22 + 16) = v25 + 1;
          *(v22 + 8 * v25 + 32) = v6;
          a1[5] = v22;
          v26 = ProtobufDecoder.decodeVarint()(isUniquelyReferenced_nonNull_native);
          if (v2)
          {
            return outlined destroy of ImageResolutionContext(&v70, type metadata accessor for GraphicsImage?);
          }

          if (v26 < 0)
          {
            goto LABEL_80;
          }

          v27 = a1[1] + v26;
          if (v6 < v27)
          {
            goto LABEL_71;
          }

          a1[2] = v27;
          GraphicsImage.init(from:)(a1, &v48);
          v28 = a1[5];
          if (!*(v28 + 2))
          {
            goto LABEL_82;
          }

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v29 = *(v28 + 2);
            if (!v29)
            {
              goto LABEL_68;
            }
          }

          else
          {
            v28 = specialized _ArrayBuffer._consumeAndCreateNew()(v28);
            v29 = *(v28 + 2);
            if (!v29)
            {
LABEL_68:
              __break(1u);
              goto LABEL_69;
            }
          }

          v30 = v29 - 1;
          v6 = *&v28[8 * v30 + 32];
          *(v28 + 2) = v30;
          result = outlined destroy of ImageResolutionContext(&v70, type metadata accessor for GraphicsImage?);
          a1[5] = v28;
          a1[2] = v6;
          v67 = v52;
          v68 = v53;
          v69 = v54;
          v63 = v48;
          v64 = v49;
          v65 = v50;
          v66 = v51;
          v31 = v55;
LABEL_62:
          v5 = a1[1];
          if (v5 >= v6)
          {
            v36 = v65;
            v59 = v66;
            v60 = v67;
            v61 = v68;
            v37 = v64;
            v56 = v63;
            a1[3] = 0;
            v62 = v69;
            v57 = v37;
            v58 = v36;
            if ((v31 & 0xFF00) == 0x200)
            {
              goto LABEL_70;
            }

            v38 = v59;
            v39 = v61;
            *(a2 + 4) = v60;
            *(a2 + 5) = v39;
            v40 = v57;
            v41 = v58;
            *a2 = v56;
            *(a2 + 1) = v40;
            *(a2 + 12) = v62;
            *(a2 + 2) = v41;
            *(a2 + 3) = v38;
            *(a2 + 26) = v31;
            *(a2 + 7) = v46;
            *(a2 + 8) = v45;
            *(a2 + 18) = v7;
            return result;
          }

          v74 = v67;
          v75 = v68;
          v76 = v69;
          v70 = v63;
          v71 = v64;
          v72 = v65;
          v73 = v66;
          v77 = v31;
          result = a1[3];
          if (!result)
          {
            goto LABEL_6;
          }

LABEL_3:
          v9 = a1[4];
          if (v5 >= v9)
          {
            if (v9 < v5)
            {
              goto LABEL_71;
            }

            a1[3] = 0;
            goto LABEL_6;
          }
        }

        if (v10 == 2)
        {
          if ((result & 7) != 2)
          {
            goto LABEL_71;
          }

          v13 = a1[5];
          v14 = swift_isUniquelyReferenced_nonNull_native();
          if ((v14 & 1) == 0)
          {
            v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v13 + 16) + 1, 1, v13);
            v13 = v14;
          }

          v16 = *(v13 + 16);
          v15 = *(v13 + 24);
          if (v16 >= v15 >> 1)
          {
            v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v13);
            v13 = v14;
          }

          *(v13 + 16) = v16 + 1;
          *(v13 + 8 * v16 + 32) = v6;
          a1[5] = v13;
          v17 = ProtobufDecoder.decodeVarint()(v14);
          if (v2)
          {
            return outlined destroy of ImageResolutionContext(&v70, type metadata accessor for GraphicsImage?);
          }

          if (v17 < 0)
          {
            __break(1u);
LABEL_80:
            __break(1u);
LABEL_81:
            __break(1u);
LABEL_82:
            __break(1u);
LABEL_83:
            __break(1u);
LABEL_84:
            __break(1u);
LABEL_85:
            __break(1u);
            __break(1u);
            do
            {
              __break(1u);
              a2 = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
              v42 = *(a2 + 2);
              if (v42)
              {
                goto LABEL_78;
              }

              __break(1u);
              a2 = a1[5];
            }

            while (!*(a2 + 2));
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v42 = *(a2 + 2);
              if (v42)
              {
                goto LABEL_78;
              }

LABEL_89:
              __break(1u);
            }

            a2 = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
            v42 = *(a2 + 2);
            if (!v42)
            {
              goto LABEL_89;
            }

LABEL_78:
            v43 = v42 - 1;
            v44 = *&a2[8 * v43 + 32];
            *(a2 + 2) = v43;
            result = outlined destroy of ImageResolutionContext(&v70, type metadata accessor for GraphicsImage?);
            a1[5] = a2;
            a1[2] = v44;
            return result;
          }

          v18 = a1[1] + v17;
          if (v6 < v18)
          {
            goto LABEL_71;
          }

          a1[2] = v18;
          v48 = 0u;
          v49 = 0u;
          closure #1 in EdgeInsets.init(from:)(&v48, a1, &v47);
          v19 = a1[5];
          if (!*(v19 + 16))
          {
            goto LABEL_81;
          }

          v45 = v49;
          v46 = v48;
          result = swift_isUniquelyReferenced_nonNull_native();
          if (result)
          {
            v20 = *(v19 + 16);
            if (!v20)
            {
              goto LABEL_83;
            }
          }

          else
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew()(v19);
            v19 = result;
            v20 = *(result + 16);
            if (!v20)
            {
              goto LABEL_83;
            }
          }

          v21 = v20 - 1;
          v6 = *(v19 + 8 * v21 + 32);
          *(v19 + 16) = v21;
          a1[5] = v19;
          a1[2] = v6;
          goto LABEL_61;
        }

        if (v10 == 3)
        {
          v11 = result & 7;
          if (v11 == 5)
          {
            v34 = a1[1];
            if (v6 < (v34 + 1))
            {
              goto LABEL_71;
            }

            v35 = *v34;
            a1[1] = v34 + 1;
            v7 = v35;
          }

          else
          {
            if (v11 == 2)
            {
              result = ProtobufDecoder.decodeVarint()(result);
              if (v2)
              {
                return outlined destroy of ImageResolutionContext(&v70, type metadata accessor for GraphicsImage?);
              }

              if ((result & 0x8000000000000000) != 0)
              {
                goto LABEL_84;
              }

              v12 = a1[1];
              if (v6 < v12 + result)
              {
                goto LABEL_71;
              }

              a1[3] = 25;
              a1[4] = v12 + result;
            }

            else
            {
              if (v11 != 1)
              {
                goto LABEL_71;
              }

              v12 = a1[1];
            }

            if (v6 < (v12 + 1))
            {
              goto LABEL_71;
            }

            v7 = *v12;
            a1[1] = v12 + 1;
          }

          goto LABEL_61;
        }

        v32 = result & 7;
        if (v32 > 1)
        {
          if (v32 == 2)
          {
            result = ProtobufDecoder.decodeVarint()(result);
            if (v2)
            {
              return outlined destroy of ImageResolutionContext(&v70, type metadata accessor for GraphicsImage?);
            }

            if ((result & 0x8000000000000000) != 0)
            {
              goto LABEL_85;
            }

            v33 = a1[1] + result;
          }

          else
          {
            if (v32 != 5)
            {
              goto LABEL_71;
            }

            v33 = a1[1] + 4;
          }
        }

        else
        {
          if ((result & 7) == 0)
          {
            result = ProtobufDecoder.decodeVarint()(result);
            if (v2)
            {
              return outlined destroy of ImageResolutionContext(&v70, type metadata accessor for GraphicsImage?);
            }

LABEL_61:
            v67 = v74;
            v68 = v75;
            v69 = v76;
            v63 = v70;
            v64 = v71;
            v65 = v72;
            v66 = v73;
            v31 = v77;
            goto LABEL_62;
          }

          if (v32 != 1)
          {
            goto LABEL_71;
          }

          v33 = a1[1] + 8;
        }

        if (v6 < v33)
        {
          goto LABEL_71;
        }

        a1[1] = v33;
        goto LABEL_61;
      }

LABEL_71:
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      swift_willThrow();
    }

    return outlined destroy of ImageResolutionContext(&v70, type metadata accessor for GraphicsImage?);
  }

LABEL_69:
  a1[3] = 0;
LABEL_70:
  lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
  swift_allocError();
  return swift_willThrow();
}

uint64_t specialized static ImagePaint._Paint.== infix(_:_:)(__int128 *a1, __int128 *a2)
{
  v2 = a1[3];
  v3 = a1[5];
  v43 = a1[4];
  v44[0] = v3;
  *(v44 + 12) = *(a1 + 92);
  v4 = a1[1];
  v40[0] = *a1;
  v40[1] = v4;
  v5 = a1[3];
  v7 = *a1;
  v6 = a1[1];
  v41 = a1[2];
  v42 = v5;
  v26 = *(a1 + 15);
  v27 = *(a1 + 14);
  v8 = *(a1 + 16);
  v9 = *(a1 + 17);
  v10 = a2[3];
  v11 = a2[5];
  v48 = a2[4];
  v49[0] = v11;
  *(v49 + 12) = *(a2 + 92);
  v12 = a2[1];
  v45[0] = *a2;
  v45[1] = v12;
  v13 = a2[3];
  v15 = *a2;
  v14 = a2[1];
  v46 = a2[2];
  v47 = v13;
  v16 = a1[5];
  v38 = v43;
  v39[0] = v16;
  *(v39 + 12) = *(a1 + 92);
  v17 = *(a1 + 18);
  v34 = v7;
  v35 = v6;
  v18 = *(a2 + 14);
  v19 = *(a2 + 15);
  v36 = v41;
  v37 = v2;
  v20 = a2[5];
  v32 = v48;
  v33[0] = v20;
  *(v33 + 12) = *(a2 + 92);
  v21 = *(a2 + 16);
  v22 = *(a2 + 17);
  v28 = v15;
  v29 = v14;
  v23 = *(a2 + 18);
  v30 = v46;
  v31 = v10;
  outlined init with copy of GraphicsImage(v40, v52);
  outlined init with copy of GraphicsImage(v45, v52);
  v24 = specialized static GraphicsImage.== infix(_:_:)(&v34, &v28);
  v50[4] = v32;
  v51[0] = v33[0];
  *(v51 + 12) = *(v33 + 12);
  v50[0] = v28;
  v50[1] = v29;
  v50[2] = v30;
  v50[3] = v31;
  outlined destroy of GraphicsImage(v50);
  v52[4] = v38;
  v53[0] = v39[0];
  *(v53 + 12) = *(v39 + 12);
  v52[0] = v34;
  v52[1] = v35;
  v52[2] = v36;
  v52[3] = v37;
  outlined destroy of GraphicsImage(v52);
  if ((v24 & 1) == 0)
  {
    return 0;
  }

  v54.origin.y = v26;
  v54.origin.x = v27;
  v54.size.width = v8;
  v54.size.height = v9;
  v55.origin.x = v18;
  v55.origin.y = v19;
  v55.size.width = v21;
  v55.size.height = v22;
  LODWORD(result) = CGRectEqualToRect(v54, v55);
  if (v17 == v23)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

void type metadata accessor for GraphicsImage?()
{
  if (!lazy cache variable for type metadata for GraphicsImage?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for GraphicsImage?);
    }
  }
}

void instantiation function for generic protocol witness table for ImagePaint._Paint(uint64_t a1)
{
  lazy protocol witness table accessor for type ImagePaint._Paint and conformance ImagePaint._Paint();
  *(a1 + 8) = v2;
  lazy protocol witness table accessor for type ImagePaint._Paint and conformance ImagePaint._Paint();
  *(a1 + 16) = v3;
}

void lazy protocol witness table accessor for type ImagePaint._Paint and conformance ImagePaint._Paint()
{
  if (!lazy protocol witness table cache variable for type ImagePaint._Paint and conformance ImagePaint._Paint)
  {
    swift_getWitnessTable(protocol conformance descriptor for ImagePaint._Paint, &type metadata for ImagePaint._Paint, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ImagePaint._Paint and conformance ImagePaint._Paint);
  }
}

{
  if (!lazy protocol witness table cache variable for type ImagePaint._Paint and conformance ImagePaint._Paint)
  {
    swift_getWitnessTable(protocol conformance descriptor for ImagePaint._Paint, &type metadata for ImagePaint._Paint, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ImagePaint._Paint and conformance ImagePaint._Paint);
  }
}

{
  if (!lazy protocol witness table cache variable for type ImagePaint._Paint and conformance ImagePaint._Paint)
  {
    swift_getWitnessTable(protocol conformance descriptor for ImagePaint._Paint, &type metadata for ImagePaint._Paint, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ImagePaint._Paint and conformance ImagePaint._Paint);
  }
}

uint64_t initializeWithCopy for ImagePaint(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 1);
  *(a1 + 24) = *(a2 + 3);
  *(a1 + 40) = a2[5];

  return a1;
}

uint64_t *assignWithCopy for ImagePaint(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];
  a1[2] = a2[2];
  a1[3] = a2[3];
  a1[4] = a2[4];
  a1[5] = a2[5];
  return a1;
}

uint64_t *assignWithTake for ImagePaint(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  *(a1 + 1) = *(a2 + 1);
  *(a1 + 3) = *(a2 + 3);
  a1[5] = a2[5];
  return a1;
}

__n128 initializeWithCopy for ImagePaint._Paint(uint64_t a1, uint64_t *a2)
{
  v3 = *(a2 + 8);
  if (v3 == 255)
  {
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 8);
  }

  else
  {
    v4 = *a2;
    v5 = a1;
    outlined copy of GraphicsImage.Contents(*a2, *(a2 + 8));
    a1 = v5;
    *v5 = v4;
    *(v5 + 8) = v3;
  }

  *(a1 + 16) = a2[2];
  *(a1 + 24) = *(a2 + 3);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 72) = *(a2 + 9);
  *(a1 + 88) = *(a2 + 11);
  *(a1 + 104) = *(a2 + 52);
  *(a1 + 106) = *(a2 + 106);
  *(a1 + 107) = *(a2 + 107);
  result = *(a2 + 7);
  v7 = *(a2 + 8);
  *(a1 + 112) = result;
  *(a1 + 128) = v7;
  *(a1 + 144) = a2[18];
  return result;
}

uint64_t assignWithCopy for ImagePaint._Paint(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (*(a1 + 8) == 255)
  {
    if (v4 == 255)
    {
      v10 = *a2;
      *(a1 + 8) = *(a2 + 8);
      *a1 = v10;
    }

    else
    {
      v8 = *a2;
      outlined copy of GraphicsImage.Contents(*a2, *(a2 + 8));
      *a1 = v8;
      *(a1 + 8) = v4;
    }
  }

  else if (v4 == 255)
  {
    outlined destroy of GraphicsImage.Contents(a1);
    v9 = *(a2 + 8);
    *a1 = *a2;
    *(a1 + 8) = v9;
  }

  else
  {
    v5 = *a2;
    outlined copy of GraphicsImage.Contents(*a2, *(a2 + 8));
    v6 = *a1;
    *a1 = v5;
    v7 = *(a1 + 8);
    *(a1 + 8) = v4;
    outlined consume of GraphicsImage.Contents(v6, v7);
  }

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  v11 = *(a2 + 44);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 44) = v11;
  v12 = *(a2 + 72);
  v13 = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 88) = v13;
  *(a1 + 72) = v12;
  *(a1 + 105) = *(a2 + 105);
  *(a1 + 106) = *(a2 + 106);
  *(a1 + 107) = *(a2 + 107);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = *(a2 + 144);
  return a1;
}

double assignWithTake for ImagePaint._Paint(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 == 255)
  {
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 8);
  }

  else
  {
    v4 = *(a2 + 8);
    if (v4 == 255)
    {
      v7 = a1;
      outlined destroy of GraphicsImage.Contents(a1);
      a1 = v7;
      *v7 = *a2;
      *(v7 + 8) = *(a2 + 8);
    }

    else
    {
      v5 = *a1;
      *a1 = *a2;
      *(a1 + 8) = v4;
      v6 = a1;
      outlined consume of GraphicsImage.Contents(v5, v3);
      a1 = v6;
    }
  }

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 105) = *(a2 + 105);
  *(a1 + 106) = *(a2 + 106);
  v8 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v8;
  result = *(a2 + 144);
  *(a1 + 144) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ImagePaint._Paint(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 152))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 105);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ImagePaint._Paint(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 152) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 152) = 0;
    }

    if (a2)
    {
      *(result + 105) = a2 + 1;
    }
  }

  return result;
}

uint64_t _s7SwiftUI16RendererLeafViewPAAE8contains6points4sizeAA11BitVector64VSRySo7CGPointVG_So6CGSizeVtFAA08BackdropE0V_Tt2g5@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v5 = 0;
  if (result && a2)
  {
    v6 = 0;
    v7 = 16 * a2;
    v8 = (result + 8);
    do
    {
      v9 = *(v8 - 1);
      v10 = fmin(v9, *v8);
      v11 = v9 < a4;
      if (*v8 >= a5)
      {
        v11 = 0;
      }

      if (v10 < 0.0)
      {
        v11 = 0;
      }

      if (v6 < 0x41)
      {
        if (v6 == 64)
        {
          v12 = 0;
          if (!v11)
          {
LABEL_15:
            v5 &= ~v12;
            goto LABEL_5;
          }
        }

        else
        {
          v12 = 1 << v6;
          if (!v11)
          {
            goto LABEL_15;
          }
        }
      }

      else
      {
        v12 = 0;
        if (!v11)
        {
          goto LABEL_15;
        }
      }

      v5 |= v12;
LABEL_5:
      v8 += 2;
      ++v6;
      v7 -= 16;
    }

    while (v7);
  }

  *a3 = v5;
  return result;
}

uint64_t RendererLeafView.contains(points:size:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v5 = 0;
  if (result && a2)
  {
    v6 = 0;
    v7 = 16 * a2;
    v8 = (result + 8);
    do
    {
      v9 = *(v8 - 1);
      v10 = fmin(v9, *v8);
      v11 = v9 < a4;
      if (*v8 >= a5)
      {
        v11 = 0;
      }

      if (v10 < 0.0)
      {
        v11 = 0;
      }

      if (v6 < 0x41)
      {
        if (v6 == 64)
        {
          v12 = 0;
          if (!v11)
          {
LABEL_15:
            v5 &= ~v12;
            goto LABEL_5;
          }
        }

        else
        {
          v12 = 1 << v6;
          if (!v11)
          {
            goto LABEL_15;
          }
        }
      }

      else
      {
        v12 = 0;
        if (!v11)
        {
          goto LABEL_15;
        }
      }

      v5 |= v12;
LABEL_5:
      v8 += 2;
      ++v6;
      v7 -= 16;
    }

    while (v7);
  }

  *a3 = v5;
  return result;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA028SymbolBackgroundCornerRadiusV033_10D838C6E672964CE3DB0EADFD20CA25LLVG_Tt0B5(void *result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      if (result[3])
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA028SymbolBackgroundCornerRadiusV033_10D838C6E672964CE3DB0EADFD20CA25LLVG_Tt0B5(result[3], a2);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      v6 = a2;
      v7 = result;
      v8 = result[2];
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SymbolBackgroundCornerRadiusKey>, &type metadata for SymbolBackgroundCornerRadiusKey, &protocol witness table for SymbolBackgroundCornerRadiusKey, type metadata accessor for EnvironmentPropertyKey);
      if (v8 == v9)
      {
        return v7;
      }

      result = v7[4];
      a2 = v6;
      if (!result)
      {
        return result;
      }
    }

    return v5;
  }

  return result;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA026SymbolsGrowToFitBackgroundV033_10D838C6E672964CE3DB0EADFD20CA25LLVG_Tt0B5(void *result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      if (result[3])
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA026SymbolsGrowToFitBackgroundV033_10D838C6E672964CE3DB0EADFD20CA25LLVG_Tt0B5(result[3], a2);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      v6 = a2;
      v7 = result;
      v8 = result[2];
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SymbolsGrowToFitBackgroundKey>, &type metadata for SymbolsGrowToFitBackgroundKey, &protocol witness table for SymbolsGrowToFitBackgroundKey, type metadata accessor for EnvironmentPropertyKey);
      if (v8 == v9)
      {
        return v7;
      }

      result = v7[4];
      a2 = v6;
      if (!result)
      {
        return result;
      }
    }

    return v5;
  }

  return result;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA24MaterialActiveAppearanceVAAE0V033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Tt0B5(void *result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      if (result[3])
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA24MaterialActiveAppearanceVAAE0V033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Tt0B5(result[3], a2);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      v6 = a2;
      v7 = result;
      v8 = result[2];
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<MaterialActiveAppearance.Key>, &type metadata for MaterialActiveAppearance.Key, &protocol witness table for MaterialActiveAppearance.Key, type metadata accessor for EnvironmentPropertyKey);
      if (v8 == v9)
      {
        return v7;
      }

      result = v7[4];
      a2 = v6;
      if (!result)
      {
        return result;
      }
    }

    return v5;
  }

  return result;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE02__V27_materialColorRenderingMode33_4075E3A4E56336DD739D990E781CBB12LLVG_Tt0B5(void *result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      if (result[3])
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE02__V27_materialColorRenderingMode33_4075E3A4E56336DD739D990E781CBB12LLVG_Tt0B5(result[3], a2);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      v6 = a2;
      v7 = result;
      v8 = result[2];
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_materialColorRenderingMode>, &type metadata for EnvironmentValues.__Key_materialColorRenderingMode, &protocol witness table for EnvironmentValues.__Key_materialColorRenderingMode, type metadata accessor for EnvironmentPropertyKey);
      if (v8 == v9)
      {
        return v7;
      }

      result = v7[4];
      a2 = v6;
      if (!result)
      {
        return result;
      }
    }

    return v5;
  }

  return result;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA031AccessibilitySettingsDefinitionV0031_DD012B99EE4F6885B033D7D23FEF69J0LLVG_Tt0B5(void *result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      if (result[3])
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA031AccessibilitySettingsDefinitionV0031_DD012B99EE4F6885B033D7D23FEF69J0LLVG_Tt0B5(result[3], a2);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      v6 = a2;
      v7 = result;
      v8 = result[2];
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AccessibilitySettingsDefinitionKey>, &type metadata for AccessibilitySettingsDefinitionKey, &protocol witness table for AccessibilitySettingsDefinitionKey, type metadata accessor for EnvironmentPropertyKey);
      if (v8 == v9)
      {
        return v7;
      }

      result = v7[4];
      a2 = v6;
      if (!result)
      {
        return result;
      }
    }

    return v5;
  }

  return result;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA19UnredactSymbolImageVG_Tt0B5(void *result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      if (result[3])
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA19UnredactSymbolImageVG_Tt0B5(result[3], a2);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      v6 = a2;
      v7 = result;
      v8 = result[2];
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<UnredactSymbolImage>, &type metadata for UnredactSymbolImage, &protocol witness table for UnredactSymbolImage, type metadata accessor for EnvironmentPropertyKey);
      if (v8 == v9)
      {
        return v7;
      }

      result = v7[4];
      a2 = v6;
      if (!result)
      {
        return result;
      }
    }

    return v5;
  }

  return result;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesV022MaxAllowedDynamicRangeV0VG_Tt0B5(void *result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      if (result[3])
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesV022MaxAllowedDynamicRangeV0VG_Tt0B5(result[3], a2);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      v6 = a2;
      v7 = result;
      v8 = result[2];
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.MaxAllowedDynamicRangeKey>, &type metadata for EnvironmentValues.MaxAllowedDynamicRangeKey, &protocol witness table for EnvironmentValues.MaxAllowedDynamicRangeKey, type metadata accessor for EnvironmentPropertyKey);
      if (v8 == v9)
      {
        return v7;
      }

      result = v7[4];
      a2 = v6;
      if (!result)
      {
        return result;
      }
    }

    return v5;
  }

  return result;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA23ContainerBackgroundKindO0V0VG_Tt0B5(void *result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      if (result[3])
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA23ContainerBackgroundKindO0V0VG_Tt0B5(result[3], a2);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      v6 = a2;
      v7 = result;
      v8 = result[2];
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ContainerBackgroundKind.Key>, &type metadata for ContainerBackgroundKind.Key, &protocol witness table for ContainerBackgroundKind.Key, type metadata accessor for EnvironmentPropertyKey);
      if (v8 == v9)
      {
        return v7;
      }

      result = v7[4];
      a2 = v6;
      if (!result)
      {
        return result;
      }
    }

    return v5;
  }

  return result;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE019PlatformColorSchemeV033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Tt0B5(void *result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      if (result[3])
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE019PlatformColorSchemeV033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Tt0B5(result[3], a2);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      v6 = a2;
      v7 = result;
      v8 = result[2];
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.PlatformColorSchemeKey>, &type metadata for EnvironmentValues.PlatformColorSchemeKey, &protocol witness table for EnvironmentValues.PlatformColorSchemeKey, type metadata accessor for EnvironmentPropertyKey);
      if (v8 == v9)
      {
        return v7;
      }

      result = v7[4];
      a2 = v6;
      if (!result)
      {
        return result;
      }
    }

    return v5;
  }

  return result;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE019ExplicitColorSchemeV033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Tt0B5(void *result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      if (result[3])
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE019ExplicitColorSchemeV033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Tt0B5(result[3], a2);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      v6 = a2;
      v7 = result;
      v8 = result[2];
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.ExplicitColorSchemeKey>, &type metadata for EnvironmentValues.ExplicitColorSchemeKey, &protocol witness table for EnvironmentValues.ExplicitColorSchemeKey, type metadata accessor for EnvironmentPropertyKey);
      if (v8 == v9)
      {
        return v7;
      }

      result = v7[4];
      a2 = v6;
      if (!result)
      {
        return result;
      }
    }

    return v5;
  }

  return result;
}

uint64_t _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA14ReusableInputsV_Tt0B5(uint64_t result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~*(result + 56)) != 0)
      {
        result = *(result + 40);
        if (!result)
        {
          return result;
        }
      }

      if (*(result + 24))
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA14ReusableInputsV_Tt0B5(*(result + 24), a2);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      if (*(result + 16) != &type metadata for ReusableInputs)
      {
        result = *(result + 32);
        if (result)
        {
          continue;
        }
      }

      return result;
    }

    return v5;
  }

  return result;
}