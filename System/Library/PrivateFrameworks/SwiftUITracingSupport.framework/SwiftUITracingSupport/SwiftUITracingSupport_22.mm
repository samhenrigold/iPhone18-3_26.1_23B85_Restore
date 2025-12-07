uint64_t protocol witness for Collection.subscript.getter in conformance UnsafeArray<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  return MutableCollection<>.subscript.getter(a1, a2, WitnessTable, a3);
}

uint64_t MutableCollection<>.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v49 = a1;
  v47 = a4;
  v6 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v43 = *(TupleTypeMetadata2 - 8);
  v8 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v39 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v36 - v11;
  v41 = *(AssociatedTypeWitness - 8);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v36 - v16;
  swift_getAssociatedConformanceWitness();
  v44 = type metadata accessor for Range();
  v42 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v19 = &v36 - v18;
  dispatch thunk of Collection.startIndex.getter();
  v48 = v4;
  v45 = v6;
  v46 = a2;
  dispatch thunk of Collection.endIndex.getter();
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v21 = v41;
    v22 = *(v41 + 32);
    v22(v12, v17, AssociatedTypeWitness);
    v23 = TupleTypeMetadata2;
    v22(&v12[*(TupleTypeMetadata2 + 48)], v15, AssociatedTypeWitness);
    v24 = v22;
    v25 = v43;
    v26 = v39;
    (*(v43 + 16))(v39, v12, v23);
    v37 = *(v23 + 48);
    v24(v19, v26, AssociatedTypeWitness);
    v38 = v24;
    v27 = *(v21 + 8);
    v27(&v26[v37], AssociatedTypeWitness);
    (*(v25 + 32))(v26, v12, v23);
    v28 = v44;
    v24(&v19[*(v44 + 36)], &v26[*(v23 + 48)], AssociatedTypeWitness);
    v27(v26, AssociatedTypeWitness);
    v29 = v48;
    v30 = v49;
    v31 = v46;
    dispatch thunk of Collection._failEarlyRangeCheck(_:bounds:)();
    v32 = v42;
    (*(v42 + 8))(v19, v28);
    v33 = type metadata accessor for Slice();
    v34 = v47;
    (*(*(v31 - 8) + 16))(&v47[*(v33 + 40)], v29, v31);
    (*(v32 + 16))(v19, v30, v28);
    v35 = v38;
    v38(v34, v19, AssociatedTypeWitness);
    return v35(&v34[*(v33 + 36)], &v19[*(v28 + 36)], AssociatedTypeWitness);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for Collection.indices.getter in conformance UnsafeArray<A>@<X0>(void *a1@<X8>)
{
  result = UnsafeArray.indices.getter();
  *a1 = 0;
  a1[1] = v3;
  return result;
}

uint64_t protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance UnsafeArray<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return specialized Collection._failEarlyRangeCheck(_:bounds:)(a1, a2, a3, a4, MEMORY[0x277D83D00], MEMORY[0x277D83608]);
}

{
  return specialized Collection._failEarlyRangeCheck(_:bounds:)(a1, a2, a3, a4, MEMORY[0x277D83638], MEMORY[0x277D83618]);
}

void *protocol witness for Collection.index(after:) in conformance UnsafeArray<A>@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result + 1;
  }

  return result;
}

void *protocol witness for Collection.formIndex(after:) in conformance UnsafeArray<A>(void *result)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

uint64_t protocol witness for Inspectable.describe(state:) in conformance UnsafeArray<A>(__int128 *a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return ArrayLike.describe(state:)(a1, a2, WitnessTable);
}

uint64_t ArrayLike.describe(state:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v5 = a2;
  v7 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*(v10 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v15 = &v54 - v14;
  v16 = a1[1];
  v67 = *a1;
  v68[0] = v16;
  *(v68 + 10) = *(a1 + 26);
  if (v67 < 1)
  {
    return ArrayLike.basicDescription()()._countAndFlagsBits;
  }

  v17 = swift_getAssociatedTypeWitness();
  if (!swift_conformsToProtocol2() || v17 == 0)
  {
    return ArrayLike.basicDescription()()._countAndFlagsBits;
  }

  v62 = v3;
  if (dispatch thunk of Collection.count.getter() < 1)
  {
    return ArrayLike.basicDescription()()._countAndFlagsBits;
  }

  (*(v7 + 16))(v9, v62, v5);
  v58 = *(&v67 + 1);
  Collection.prefix(_:)();
  v19 = v11;
  v20 = &v54;
  v21 = MEMORY[0x28223BE20](v19);
  *(&v54 - 4) = v5;
  *(&v54 - 3) = a3;
  *(&v54 - 2) = &v67;
  v63 = v21;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v24 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in ArrayLike.describe(state:), (&v54 - 6), AssociatedTypeWitness, MEMORY[0x277D837D0], MEMORY[0x277D84A98], AssociatedConformanceWitness, MEMORY[0x277D84AC0], v23);
  (*(v13 + 8))(v15, AssociatedTypeWitness);
  v25 = v24 + 5;
  v26 = -v24[2];
  v27 = -1;
  do
  {
    v28 = v26 + v27;
    if (v26 + v27 == -1)
    {
      break;
    }

    if (++v27 >= v24[2])
    {
      __break(1u);
      goto LABEL_36;
    }

    v20 = (v25 + 2);

    v17 = String.count.getter();

    v25 = v20;
  }

  while (v17 < 56);
  v65 = 9051;
  v66 = 0xE200000000000000;
  v20 = v63;
  v57 = v5;
  v64 = dispatch thunk of Collection.count.getter();
  v29 = dispatch thunk of CustomStringConvertible.description.getter();
  v17 = v30;
  MEMORY[0x26D69CDB0](v29);

  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  v9 = v65;
  v31 = v66;
  if (v28 == -1)
  {
    v65 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR, MEMORY[0x277D83958]);
    v38 = BidirectionalCollection<>.joined(separator:)();
    v40 = v39;

    v41 = 0;
    v42 = 0xE000000000000000;
  }

  else
  {
    v55 = v66;
    v56 = v65;
    v32 = String.count.getter();
    v33._countAndFlagsBits = 32;
    v33._object = 0xE100000000000000;
    v34 = String.init(repeating:count:)(v33, v32);
    countAndFlagsBits = v34._countAndFlagsBits;
    v5 = v24[2];
    if (v5)
    {
      object = v34._object;
      v64 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
      v59 = v24[2];
      if (!v59)
      {
        goto LABEL_36;
      }

      v35 = v64;
      v28 = v24[4];
      v9 = v24[5];
      v26 = *(v64 + 16);
      v20 = *(v64 + 24);
      v17 = v26 + 1;

      if (v26 >= v20 >> 1)
      {
        goto LABEL_38;
      }

      while (1)
      {
        *(v35 + 16) = v17;
        v36 = v35 + 16 * v26;
        *(v36 + 32) = v28;
        *(v36 + 40) = v9;
        if (v5 == 1)
        {
          break;
        }

        v26 = (v24 + 7);
        v28 = 1;
        while (v59 != v28)
        {
          if (v28 >= v24[2])
          {
            goto LABEL_37;
          }

          v49 = *(v26 - 8);
          v48 = *v26;
          v65 = countAndFlagsBits;
          v66 = object;

          MEMORY[0x26D69CDB0](v49, v48);
          v9 = v65;
          v50 = v66;
          v64 = v35;
          v52 = *(v35 + 16);
          v51 = *(v35 + 24);
          v17 = v52 + 1;
          if (v52 >= v51 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v51 > 1), v52 + 1, 1);
            v35 = v64;
          }

          ++v28;
          *(v35 + 16) = v17;
          v53 = v35 + 16 * v52;
          *(v53 + 32) = v9;
          *(v53 + 40) = v50;
          v26 += 16;
          v20 = v63;
          if (v5 == v28)
          {
            goto LABEL_16;
          }
        }

LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v17, 1);
        v35 = v64;
      }

LABEL_16:
    }

    else
    {

      v35 = MEMORY[0x277D84F90];
    }

    v65 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR, MEMORY[0x277D83958]);
    v41 = 10;
    v42 = 0xE100000000000000;
    v38 = BidirectionalCollection<>.joined(separator:)();
    v40 = v43;

    v31 = v55;
    v9 = v56;
  }

  v65 = v9;
  v66 = v31;
  MEMORY[0x26D69CDB0](v38, v40);

  MEMORY[0x26D69CDB0](538976288, 0xE400000000000000);
  v44 = dispatch thunk of Collection.count.getter();
  v45 = v58 < v44;
  if (v58 >= v44)
  {
    v46 = 0;
  }

  else
  {
    v46 = 3026478;
  }

  if (v45)
  {
    v47 = 0xE300000000000000;
  }

  else
  {
    v47 = 0xE000000000000000;
  }

  MEMORY[0x26D69CDB0](v46, v47);

  MEMORY[0x26D69CDB0](v41, v42);

  MEMORY[0x26D69CDB0](93, 0xE100000000000000);
  return v65;
}

double protocol witness for Sequence.makeIterator() in conformance UnsafeArray<A>@<D0>(uint64_t a1@<X8>)
{
  *a1 = *v1;
  result = *(v1 + 8);
  *(a1 + 8) = result;
  *(a1 + 16) = 0;
  return result;
}

uint64_t protocol witness for Sequence.underestimatedCount.getter in conformance UnsafeArray<A>(uint64_t a1)
{
  swift_getWitnessTable();

  return Collection.underestimatedCount.getter();
}

void UnsafeArray<A>.zero(count:)(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (HIDWORD(a1))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  *(v2 + 12) = a1;
  v3 = *(*(*(a2 + 16) - 8) + 72);
  if ((a1 * v3) >> 64 == (a1 * v3) >> 63)
  {
    bzero(*v2, a1 * v3);
    return;
  }

LABEL_7:
  __break(1u);
}

unint64_t UnsafeArray<A>.init(zeros:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = UnsafeArray.init(capacity:)(a1, a2, a3, a4);
  v10 = result;
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(a1))
  {
    v9 = type metadata accessor for UnsafeArray(0, a2, v7, v8);
    UnsafeArray<A>.zero(count:)(a1, v9);
    return v10;
  }

  __break(1u);
  return result;
}

void UnsafeArray<A>.zero()()
{
  v1 = *(v0 + 12);
  specialized UnsafeArray.growToCapacity(_:)();
  *(v0 + 12) = v1;
  v2 = *v0;

  bzero(v2, 8 * v1);
}

void UnsafeArray<A>.zero(count:)(unint64_t a1)
{
  specialized UnsafeArray.growToCapacity(_:)();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (HIDWORD(a1))
  {
LABEL_7:
    __break(1u);
    return;
  }

  *(v1 + 12) = a1;
  v3 = *v1;

  bzero(v3, 8 * a1);
}

unint64_t UnsafeArray<A>.init(zeros:)(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (HIDWORD(result))
  {
LABEL_8:
    __break(1u);
    return result;
  }

  if (result)
  {
    v1 = 8 * result;
    v2 = swift_slowAlloc();
  }

  else
  {
    v1 = 0;
    v2 = 0;
  }

  v3 = v2;
  specialized UnsafeArray.growToCapacity(_:)();
  bzero(v3, v1);
  return v3;
}

uint64_t EnumeratedReversedIterator.init(collection:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v10 = &v14 - v9;
  v11 = *(a2 - 8);
  (*(v11 + 16))(a4, a1, a2);
  dispatch thunk of Collection.endIndex.getter();
  type metadata accessor for EnumeratedReversedIterator(0, a2, a3, v12);
  dispatch thunk of BidirectionalCollection.index(before:)();
  (*(v11 + 8))(a1, a2);
  return (*(v8 + 8))(v10, AssociatedTypeWitness);
}

uint64_t $defer #1 <A>() in EnumeratedReversedIterator.next()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - v14;
  (*(v6 + 16))(v8, a1, a2);
  v17 = *(type metadata accessor for EnumeratedReversedIterator(0, a2, a3, v16) + 36);
  (*(v10 + 16))(v13, a1 + v17, AssociatedTypeWitness);
  dispatch thunk of BidirectionalCollection.index(before:)();
  (*(v10 + 8))(v13, AssociatedTypeWitness);
  (*(v6 + 8))(v8, a2);
  return (*(v10 + 40))(a1 + v17, v15, AssociatedTypeWitness);
}

uint64_t protocol witness for Sequence.makeIterator() in conformance EnumeratedReversedIterator<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  EnumeratedReversedIterator.makeIterator()(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance EnumeratedReversedIterator<A>(uint64_t a1, uint64_t a2)
{
  v4 = specialized Sequence._copyToContiguousArray()();
  (*(*(a1 - 8) + 8))(v2, a1);
  return v4;
}

uint64_t ArrayLike.mutLast(_:)(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v10 = &v14[-v9];
  result = dispatch thunk of Collection.count.getter();
  if (result)
  {
    ArrayLike.lastIndex.getter(a3, a4);
    v12 = dispatch thunk of MutableCollection.subscript.modify();
    a1(v13);
    v12(v14, 0);
    return (*(v8 + 8))(v10, AssociatedTypeWitness);
  }

  return result;
}

uint64_t ArrayLike.mut(i:_:)(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = a3;
  v29 = a2;
  v5 = *(a5 + 8);
  v26 = a1;
  v27 = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for Optional();
  v24 = *(v7 - 8);
  v25 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v24 - v9;
  v11 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x28223BE20](v8);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v24 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v24 - v18;
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  dispatch thunk of RandomAccessCollection.index(_:offsetBy:limitedBy:)();
  v20 = *(v11 + 8);
  v20(v14, AssociatedTypeWitness);
  v20(v17, AssociatedTypeWitness);
  if ((*(v11 + 48))(v10, 1, AssociatedTypeWitness) == 1)
  {
    (*(v24 + 8))(v10, v25);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    (*(v11 + 32))(v19, v10, AssociatedTypeWitness);
    v21 = dispatch thunk of MutableCollection.subscript.modify();
    v29(v22);
    v21(v30, 0);
    return (v20)(v19, AssociatedTypeWitness);
  }

  return result;
}

uint64_t ArrayLike.eachIndex(start:end:_:)(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v45 = a2;
  v49 = a4;
  v42 = a3;
  v50 = *(*(a6 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v48 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v40 - v13;
  v15 = *(AssociatedTypeWitness - 8);
  v16 = MEMORY[0x28223BE20](v12);
  v41 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v51 = &v40 - v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v40 - v20;
  v40 = v9;
  v22 = *(v9 + 16);
  v46 = v23;
  v43 = v22;
  (v22)(v14, a1);
  v24 = *(v15 + 48);
  v25 = v24(v14, 1, AssociatedTypeWitness);
  v47 = v15;
  if (v25 == 1)
  {
    v26 = v44;
    dispatch thunk of Collection.startIndex.getter();
    if (v24(v14, 1, AssociatedTypeWitness) != 1)
    {
      (*(v40 + 8))(v14, v46);
    }
  }

  else
  {
    (*(v15 + 32))(v21, v14, AssociatedTypeWitness);
    v26 = v44;
  }

  v27 = v48;
  v43(v48, v45, v46);
  if (v24(v27, 1, AssociatedTypeWitness) == 1)
  {
    v28 = v51;
    dispatch thunk of Collection.endIndex.getter();
    v29 = v48;
    v30 = v28;
    if (v24(v48, 1, AssociatedTypeWitness) != 1)
    {
      (*(v40 + 8))(v29, v46);
    }
  }

  else
  {
    v30 = v51;
    (*(v47 + 32))(v51, v27, AssociatedTypeWitness);
  }

  v31 = *(swift_getAssociatedConformanceWitness() + 8);
  v32 = dispatch thunk of static Equatable.== infix(_:_:)();
  v33 = (v47 + 8);
  if (v32)
  {
    v34 = *v33;
    (*v33)(v30, AssociatedTypeWitness);
  }

  else
  {
    v48 = v31;
    v35 = v26;
    v36 = (v47 + 32);
    v47 = v33 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v38 = v41;
    v37 = v42;
    do
    {
      v37(v21, v35);
      dispatch thunk of Collection.index(after:)();
      v34 = *v33;
      (*v33)(v21, AssociatedTypeWitness);
      (*v36)(v21, v38, AssociatedTypeWitness);
    }

    while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0);
    v34(v51, AssociatedTypeWitness);
  }

  return (v34)(v21, AssociatedTypeWitness);
}

uint64_t ArrayLike.mutEachI(_:)(void (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v59 = a1;
  v60 = a2;
  v49 = *(a4 + 8);
  v61 = *(v49 + 8);
  v52 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v48 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v62 = &v46 - v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v46 - v10;
  v12 = type metadata accessor for Optional();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v58 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v46 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v46 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v46 - v22;
  v24 = *(v5 + 56);
  v24(&v46 - v22, 1, 1, AssociatedTypeWitness);
  v56 = v21;
  v24(v21, 1, 1, AssociatedTypeWitness);
  v54 = v23;
  v55 = v13;
  v25 = *(v13 + 16);
  v57 = v12;
  v50 = v25;
  v25(v18, v23, v12);
  v26 = *(v5 + 48);
  v27 = v26(v18, 1, AssociatedTypeWitness);
  v51 = v26;
  if (v27 == 1)
  {
    dispatch thunk of Collection.startIndex.getter();
    v47 = v18;
    v28 = v26(v18, 1, AssociatedTypeWitness);
    v29 = v57;
    if (v28 != 1)
    {
      v30 = v57;
      (*(v55 + 8))(v47, v57);
      v29 = v30;
    }
  }

  else
  {
    (*(v5 + 32))(v11, v18, AssociatedTypeWitness);
    v29 = v57;
  }

  v31 = v58;
  v50(v58, v56, v29);
  v32 = v51;
  if (v51(v31, 1, AssociatedTypeWitness) == 1)
  {
    v33 = v62;
    dispatch thunk of Collection.endIndex.getter();
    v34 = v58;
    v35 = v32(v58, 1, AssociatedTypeWitness);
    v36 = v33;
    v37 = v57;
    if (v35 != 1)
    {
      (*(v55 + 8))(v34, v57);
    }
  }

  else
  {
    v36 = v62;
    (*(v5 + 32))(v62, v31, AssociatedTypeWitness);
    v37 = v57;
  }

  v38 = *(swift_getAssociatedConformanceWitness() + 8);
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    v39 = *(v5 + 8);
    v39(v36, AssociatedTypeWitness);
  }

  else
  {
    v40 = (v5 + 8);
    v41 = (v5 + 32);
    v53 = v40 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v42 = v48;
    v58 = v38;
    do
    {
      v43 = dispatch thunk of MutableCollection.subscript.modify();
      v59(v11);
      v43(v63, 0);
      dispatch thunk of Collection.index(after:)();
      v39 = *v40;
      (*v40)(v11, AssociatedTypeWitness);
      (*v41)(v11, v42, AssociatedTypeWitness);
    }

    while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0);
    v37 = v57;
    v39(v62, AssociatedTypeWitness);
  }

  v39(v11, AssociatedTypeWitness);
  v44 = *(v55 + 8);
  v44(v56, v37);
  return (v44)(v54, v37);
}

uint64_t ArrayLike.mutEachIPair(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v58 = a2;
  v59 = a1;
  v57 = a4;
  v6 = *(*(a4 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v62 = *(AssociatedTypeWitness - 8);
  v8 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v68 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v51 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v51 - v13;
  v15 = type metadata accessor for Optional();
  v63 = *(v15 - 8);
  v16 = MEMORY[0x28223BE20](v15);
  v64 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v56 = &v51 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v51 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v51 - v23;
  result = dispatch thunk of Collection.count.getter();
  if (result >= 1)
  {
    dispatch thunk of Collection.startIndex.getter();
    v65 = v6;
    dispatch thunk of Collection.index(after:)();
    v26 = v62;
    v27 = *(v62 + 8);
    v55 = v14;
    v66 = v27;
    v67 = v62 + 8;
    v27(v14, AssociatedTypeWitness);
    v28 = *(v26 + 56);
    v28(v24, 0, 1, AssociatedTypeWitness);
    v60 = v22;
    v28(v22, 1, 1, AssociatedTypeWitness);
    v29 = *(v63 + 16);
    v53 = v63 + 16;
    v54 = v24;
    v61 = v15;
    v30 = v56;
    v52 = v29;
    v29();
    v31 = *(v26 + 48);
    if (v31(v30, 1, AssociatedTypeWitness) == 1)
    {
      dispatch thunk of Collection.startIndex.getter();
      v32 = v31(v30, 1, AssociatedTypeWitness);
      v33 = v68;
      v34 = v61;
      if (v32 != 1)
      {
        v35 = v31;
        v36 = v61;
        (*(v63 + 8))(v30, v61);
        v34 = v36;
        v31 = v35;
      }
    }

    else
    {
      (*(v26 + 32))(v12, v30, AssociatedTypeWitness);
      v33 = v68;
      v34 = v61;
    }

    v37 = v64;
    (v52)(v64, v60, v34);
    v38 = AssociatedTypeWitness;
    if (v31(v37, 1, AssociatedTypeWitness) == 1)
    {
      v39 = v4;
      dispatch thunk of Collection.endIndex.getter();
      if (v31(v37, 1, v38) != 1)
      {
        (*(v63 + 8))(v37, v61);
      }
    }

    else
    {
      v39 = v4;
      (*(v62 + 32))(v33, v37, v38);
    }

    v64 = *(swift_getAssociatedConformanceWitness() + 8);
    v40 = dispatch thunk of static Equatable.== infix(_:_:)();
    v41 = v57;
    v42 = v58;
    v43 = a3;
    v44 = v59;
    v45 = v39;
    v46 = v55;
    if ((v40 & 1) == 0)
    {
      v47 = (v62 + 32);
      do
      {
        closure #1 in ArrayLike.mutEachIPair(_:)(v12, v45, v44, v42, v43, v41);
        dispatch thunk of Collection.index(after:)();
        v66(v12, v38);
        (*v47)(v12, v46, v38);
      }

      while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0);
    }

    v48 = v66;
    v66(v68, v38);
    v48(v12, v38);
    v49 = *(v63 + 8);
    v50 = v61;
    v49(v60, v61);
    return (v49)(v54, v50);
  }

  return result;
}

uint64_t closure #1 in ArrayLike.mutEachIPair(_:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v19[2] = a4;
  v20 = a3;
  v6 = *(a6 + 8);
  v19[0] = a1;
  v19[1] = v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v10 = v19 - v9;
  v11 = swift_getAssociatedTypeWitness();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v19 - v13;
  v15 = v19[0];
  dispatch thunk of BidirectionalCollection.index(before:)();
  v16 = dispatch thunk of Collection.subscript.read();
  (*(v8 + 16))(v10);
  v16(v21, 0);
  (*(v12 + 8))(v14, v11);
  v17 = dispatch thunk of MutableCollection.subscript.modify();
  v20(v15);
  (*(v8 + 8))(v10, AssociatedTypeWitness);
  return v17(v21, 0);
}

uint64_t static Pair<>.< infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17[1] = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v17 - v12;
  v14 = *(a4 + 24);
  v14(a3, a4);
  v14(a3, a4);
  LOBYTE(v14) = dispatch thunk of static Comparable.< infix(_:_:)();
  v15 = *(v8 + 8);
  v15(v11, AssociatedTypeWitness);
  v15(v13, AssociatedTypeWitness);
  return v14 & 1;
}

uint64_t protocol witness for Inspectable.describe(state:) in conformance [A](__int128 *a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return ArrayLike.describe(state:)(a1, a2, WitnessTable);
}

uint64_t IterativeTreeTraversal.toVisit.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t key path getter for IterativeTreeTraversal.visitor : <A, B>IterativeTreeTraversal<A, B>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)()@<X8>)
{
  v5 = a2 + a3;
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  v8 = swift_allocObject();
  *(v8 + 16) = *(v5 - 16);
  *(v8 + 32) = v7;
  *(v8 + 40) = v6;
  *a4 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A, @inout B, @inout IterativeTreeTraversal<A, B>) -> ();
  a4[1] = v8;
}

uint64_t key path setter for IterativeTreeTraversal.visitor : <A, B>IterativeTreeTraversal<A, B>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3 + a4;
  v7 = *a1;
  v6 = a1[1];
  v8 = swift_allocObject();
  *(v8 + 16) = *(v5 - 16);
  *(v8 + 32) = v7;
  *(v8 + 40) = v6;

  *(a2 + 8) = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A, @inout B, @inout IterativeTreeTraversal<A, B>) -> (@out ());
  *(a2 + 16) = v8;
  return result;
}

uint64_t IterativeTreeTraversal.visitor.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t IterativeTreeTraversal.visitor.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t key path getter for IterativeTreeTraversal.revisitor : <A, B>IterativeTreeTraversal<A, B>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)(uint64_t a1, uint64_t a2, uint64_t a3)@<X8>)
{
  v5 = a2 + a3;
  v7 = *(a1 + 24);
  v6 = *(a1 + 32);
  v8 = swift_allocObject();
  *(v8 + 16) = *(v5 - 16);
  *(v8 + 32) = v7;
  *(v8 + 40) = v6;
  *a4 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B, @guaranteed IterativeTreeTraversal<A, B>) -> ();
  a4[1] = v8;
}

uint64_t key path setter for IterativeTreeTraversal.revisitor : <A, B>IterativeTreeTraversal<A, B>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3 + a4;
  v7 = *a1;
  v6 = a1[1];
  v8 = swift_allocObject();
  *(v8 + 16) = *(v5 - 16);
  *(v8 + 32) = v7;
  *(v8 + 40) = v6;

  *(a2 + 24) = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B, @in_guaranteed IterativeTreeTraversal<A, B>) -> (@out ());
  *(a2 + 32) = v8;
  return result;
}

uint64_t IterativeTreeTraversal.revisitor.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t IterativeTreeTraversal.revisitor.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t key path getter for IterativeTreeTraversal.backtraceCallback : <A, B>IterativeTreeTraversal<A, B>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)()@<X8>)
{
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  if (v5)
  {
    v7 = a2 + a3;
    v8 = swift_allocObject();
    *(v8 + 16) = *(v7 - 16);
    *(v8 + 32) = v5;
    *(v8 + 40) = v6;
    v9 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed IterativeTreeTraversal<A, B>, @in_guaranteed A, @in_guaranteed B, @unowned Int, @unowned Int) -> ();
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  *a4 = v9;
  a4[1] = v8;

  return outlined copy of (@escaping @callee_guaranteed (@unowned Double) -> ())?(v5, v6);
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed IterativeTreeTraversal<A, B>, @in_guaranteed A, @in_guaranteed B, @unowned Int, @unowned Int) -> ()(uint64_t a1, uint64_t a2, uint64_t (*a3)(_OWORD *, uint64_t, uint64_t, void, void), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a1 + 48);
  v12[2] = *(a1 + 32);
  v12[3] = v8;
  v12[4] = *(a1 + 64);
  v13 = *(a1 + 80);
  v9 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v9;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  return a3(v12, a2, a2 + TupleTypeMetadata[12], *(a2 + TupleTypeMetadata[16]), *(a2 + TupleTypeMetadata[20]));
}

uint64_t key path setter for IterativeTreeTraversal.backtraceCallback : <A, B>IterativeTreeTraversal<A, B>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  v6 = a1[1];
  if (*a1)
  {
    v7 = a3 + a4;
    v8 = swift_allocObject();
    *(v8 + 16) = *(v7 - 16);
    *(v8 + 32) = v5;
    *(v8 + 40) = v6;
    v9 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed IterativeTreeTraversal<A, B>, @in_guaranteed (index: A, B, returnAfter: Int, depth: Int)) -> (@out ());
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  outlined copy of (@escaping @callee_guaranteed (@unowned Double) -> ())?(v5, v6);
  result = outlined consume of (@escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ())?(v10, v11);
  *(a2 + 40) = v9;
  *(a2 + 48) = v8;
  return result;
}

uint64_t thunk for @escaping @callee_guaranteed (@in_guaranteed IterativeTreeTraversal<A, B>, @in_guaranteed (index: A, B, returnAfter: Int, depth: Int)) -> (@out ())(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(__int128 *, char *), uint64_t a7, uint64_t a8, uint64_t a9)
{
  v22 = a7;
  v23 = a6;
  strcpy(v24, "index  returnAfter depth ");
  *&v25 = a8;
  *(&v25 + 1) = a9;
  *&v26 = MEMORY[0x277D83B88];
  *(&v26 + 1) = MEMORY[0x277D83B88];
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v16 = *(TupleTypeMetadata - 1);
  MEMORY[0x28223BE20](TupleTypeMetadata);
  v18 = &v22 - v17;
  v19 = a1[3];
  v27 = a1[2];
  v28 = v19;
  v29 = a1[4];
  v30 = *(a1 + 10);
  v20 = a1[1];
  v25 = *a1;
  v26 = v20;
  (*(*(a8 - 8) + 16))(&v22 - v17, a2, a8);
  (*(*(a9 - 8) + 16))(&v18[TupleTypeMetadata[12]], a3, a9);
  *&v18[TupleTypeMetadata[16]] = a4;
  *&v18[TupleTypeMetadata[20]] = a5;
  v23(&v25, v18);
  return (*(v16 + 8))(v18, TupleTypeMetadata);
}

uint64_t IterativeTreeTraversal.backtraceCallback.getter()
{
  v1 = *(v0 + 40);
  outlined copy of (@escaping @callee_guaranteed (@unowned Double) -> ())?(v1, *(v0 + 48));
  return v1;
}

uint64_t IterativeTreeTraversal.backtraceCallback.setter(uint64_t a1, uint64_t a2)
{
  result = outlined consume of (@escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ())?(*(v2 + 40), *(v2 + 48));
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t IterativeTreeTraversal.toRevisit.setter(uint64_t a1)
{

  *(v1 + 56) = a1;
  return result;
}

double IterativeTreeTraversal.init(visitor:revisitor:revisitLeaf:backtraceCallback:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  swift_getTupleTypeMetadata3();
  v17 = Array.init()();
  swift_getTupleTypeMetadata();
  *(&v33 + 11) = v27;
  HIBYTE(v33) = v28;
  *&v29 = v17;
  *(&v29 + 1) = a1;
  *&v30 = a2;
  *(&v30 + 1) = a3;
  *&v31 = a4;
  *(&v31 + 1) = a6;
  *&v32 = a7;
  *(&v32 + 1) = Array.init()();
  *&v33 = 0;
  BYTE8(v33) = a5;
  *(&v33 + 9) = 0;
  v34 = 0;
  v35[0] = v17;
  v35[1] = a1;
  v35[2] = a2;
  v35[3] = a3;
  v35[4] = a4;
  v35[5] = a6;
  v36 = __PAIR128__(*(&v32 + 1), a7);
  v37 = 0;
  v38 = a5;
  v39 = 0;
  v40 = v27;
  v41 = v28;
  v42 = 0;
  v19 = type metadata accessor for IterativeTreeTraversal(0, a8, a10, v18);
  v20 = *(v19 - 8);
  (*(v20 + 16))(v26, &v29, v19);
  (*(v20 + 8))(v35, v19);
  v21 = v32;
  *(a9 + 32) = v31;
  *(a9 + 48) = v21;
  *(a9 + 64) = v33;
  *(a9 + 80) = v34;
  result = *&v29;
  v23 = v30;
  *a9 = v29;
  *(a9 + 16) = v23;
  return result;
}

uint64_t closure #1 in static IterativeTreeTraversal.run(visitor:revisitor:start:_:revisitLeaf:backtraceCallback:)(void (**a1)(char *, char *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (**a7)(char *, char *, uint64_t), char *a8, void (**a9)(char *, uint64_t), __int128 a10)
{
  v11 = a5;
  v16 = swift_allocObject();
  *(v16 + 16) = a10;
  *(v16 + 32) = a3;
  *(v16 + 40) = a4;
  closure #1 in closure #1 in static IterativeTreeTraversal.run(visitor:revisitor:start:_:revisitLeaf:backtraceCallback:)(partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A, @inout B, @inout IterativeTreeTraversal<A, B>) -> (), v16, a1, a2, v11, a6, a7, a8, a9, a10);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in closure #1 in static IterativeTreeTraversal.run(visitor:revisitor:start:_:revisitLeaf:backtraceCallback:)(uint64_t a1, uint64_t a2, void (**a3)(char *, char *, uint64_t), uint64_t a4, int a5, uint64_t a6, void (**a7)(char *, char *, uint64_t), char *a8, void (**a9)(char *, uint64_t), __int128 a10)
{
  v128 = a8;
  v120 = a7;
  v121 = a3;
  LODWORD(v125) = a5;
  v124 = a1;
  v127 = a9;
  strcpy(v131, "index  returnAfter depth ");
  v146 = a10;
  *&v147 = MEMORY[0x277D83B88];
  *(&v147 + 1) = MEMORY[0x277D83B88];
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v126 = *(TupleTypeMetadata - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata);
  v111 = &v105 - v14;
  v129 = a10;
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v16 = type metadata accessor for Optional();
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v114 = &v105 - v18;
  v112 = *(*(&a10 + 1) - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v123 = &v105 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v116 = &v105 - v22;
  v23 = *(a10 - 8);
  v24 = MEMORY[0x28223BE20](v21);
  v122 = &v105 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v115 = &v105 - v26;
  v130 = TupleTypeMetadata;
  v27 = type metadata accessor for Optional();
  v28 = MEMORY[0x28223BE20](v27 - 8);
  v105 = &v105 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v106 = &v105 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v107 = &v105 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v118 = &v105 - v35;
  v119 = *(TupleTypeMetadata3 - 8);
  MEMORY[0x28223BE20](v34);
  v37 = &v105 - v36;
  v38 = a4;

  v39 = v120;
  outlined copy of (@escaping @callee_guaranteed (@unowned Double) -> ())?(a6, v120);
  v40 = v38;
  v41 = v39;
  v42 = v129;
  IterativeTreeTraversal.init(visitor:revisitor:revisitLeaf:backtraceCallback:)(v121, v40, v124, a2, v125, a6, v39, v129, v141, *(&a10 + 1));
  LODWORD(v125) = BYTE10(v144);
  v44 = *(&v142 + 1);
  v43 = v143;
  v137 = v142;
  v138 = v143;
  v139 = v144;
  v140 = v145;
  v135 = v141[0];
  v136 = v141[1];
  outlined copy of (@escaping @callee_guaranteed (@unowned Double) -> ())?(a6, v41);
  v45 = v43;
  v46 = TupleTypeMetadata3;
  outlined consume of (@escaping @callee_guaranteed (@unowned ReferenceAccessor<Trace.SwiftUI>) -> ())?(v44, v45);
  *(&v137 + 1) = a6;
  *&v138 = v41;
  v47 = *(TupleTypeMetadata3 + 48);
  v48 = *(TupleTypeMetadata3 + 64);
  v49 = *(v23 + 16);
  v23 += 16;
  v109 = v49;
  v49(v37, v128, v42);
  v51 = v112 + 16;
  v50 = *(v112 + 16);
  v128 = *(&a10 + 1);
  v108 = v50;
  v50(&v37[v47], v127, *(&a10 + 1));
  v52 = v51;
  *&v37[v48] = 0;
  v124 = v46;
  v53 = type metadata accessor for Array();
  Array.append(_:)();
  v54 = (v51 - 8);
  v126 += 6;
  v127 = (v23 - 8);
  v112 = v52;
  v113 = (v119 + 48);
  v110 = v23;
  v120 = (v52 + 16);
  v121 = (v23 + 16);
  v119 = v53;
  v117 = v54;
  while (1)
  {
    v55 = v135;
    *&v132[0] = v135;
    swift_getWitnessTable();
    if (Collection.isEmpty.getter())
    {
      *&v132[0] = *(&v138 + 1);
      type metadata accessor for Array();
      swift_getWitnessTable();
      if (Collection.isEmpty.getter())
      {
        goto LABEL_27;
      }
    }

    *&v132[0] = v55;
    if (Collection.isEmpty.getter())
    {
      goto LABEL_18;
    }

    v57 = *(&v138 + 1);
    *&v132[0] = *(&v138 + 1);
    v58 = type metadata accessor for Array();
    swift_getWitnessTable();
    if ((Collection.isEmpty.getter() & 1) == 0)
    {
      v134 = v57;
      if (Collection.isEmpty.getter())
      {
        goto LABEL_18;
      }

      v134 = v57;
      swift_getWitnessTable();
      v59 = v105;
      BidirectionalCollection.last.getter();
      result = (*v126)(v59, 1, v130);
      if (result == 1)
      {
        goto LABEL_33;
      }

      v61 = *&v59[v130[16]];
      (*v54)(&v59[v130[12]], v128);
      (*v127)(v59, v129);
      if (!v61)
      {
        goto LABEL_18;
      }
    }

    WitnessTable = swift_getWitnessTable();
    v63 = swift_getWitnessTable();
    v64 = v114;
    MEMORY[0x26D69D230](v53, WitnessTable, v63);
    result = (*v113)(v64, 1, v124);
    if (result == 1)
    {
      goto LABEL_30;
    }

    v65 = *(v124 + 48);
    v66 = *&v64[*(v124 + 64)];
    v67 = v122;
    (*v121)(v122, v64, v129);
    v68 = v123;
    (*v120)(v123, &v64[v65], v128);
    BYTE9(v139) = 1;
    v140 = BYTE8(v139);
    *&v139 = v66;
    v69 = *(&v135 + 1);

    v69(v67, v68, &v135);

    if (BYTE10(v139) == 1)
    {
      (*v54)(v123, v128);
      (*v127)(v122, v129);
LABEL_27:
      v132[2] = v137;
      v132[3] = v138;
      v132[4] = v139;
      v133 = v140;
      v132[0] = v135;
      v132[1] = v136;
      v102 = type metadata accessor for IterativeTreeTraversal(0, v129, v128, v56);
      return (*(*(v102 - 8) + 8))(v132, v102);
    }

    BYTE9(v139) = 0;
    v70 = v140;
    if (!v140)
    {
      MEMORY[0x28223BE20](result);
      v80 = v128;
      v81 = v129;
      v103 = v129;
      v104 = v128;
      Array.mutLast(_:)(partial apply for closure #1 in IterativeTreeTraversal._run(_:_:), (&v105 - 4), v58);
      (*v54)(v123, v80);
      (*v127)(v122, v81);
      goto LABEL_17;
    }

    if (BYTE8(v139) == 1)
    {
      break;
    }

LABEL_15:
    v71 = v129;
    v72 = v130[12];
    v73 = v130[16];
    v125 = v58;
    v74 = v130[20];
    v75 = v111;
    v76 = v122;
    v109(v111, v122, v129);
    v77 = &v75[v72];
    v78 = v123;
    v79 = v128;
    v108(v77, v123, v128);
    *&v75[v73] = v70;
    *&v75[v74] = v66;
    v54 = v117;
    Array.append(_:)();
    (*v54)(v78, v79);
    (*v127)(v76, v71);
LABEL_17:
    LODWORD(v125) = 0;
    v53 = v119;
LABEL_18:
    v82 = *(&v138 + 1);
    *&v132[0] = *(&v138 + 1);
    v83 = type metadata accessor for Array();
    swift_getWitnessTable();
    if ((Collection.isEmpty.getter() & 1) == 0)
    {
      *&v132[0] = v82;
      v84 = swift_getWitnessTable();
      v85 = v118;
      BidirectionalCollection.last.getter();
      v86 = *v126;
      result = (*v126)(v85, 1, v130);
      if (result == 1)
      {
        goto LABEL_29;
      }

      v87 = *&v85[v130[16]];
      v88 = *v54;
      (*v54)(&v85[v130[12]], v128);
      v89 = v85;
      v90 = *v127;
      (*v127)(v89, v129);
      if (!v87)
      {
        *&v132[0] = v82;
        v91 = v107;
        BidirectionalCollection.last.getter();
        result = v86(v91, 1, v130);
        if (result == 1)
        {
          goto LABEL_31;
        }

        v92 = v130[12];
        v93 = *&v91[v130[20]];
        v94 = v115;
        (*v121)(v115, v91, v129);
        v95 = &v91[v92];
        v96 = v116;
        (*v120)(v116, v95, v128);
        *&v139 = v93;
        v148 = v137;
        v149 = v138;
        v151 = v140;
        v146 = v135;
        v147 = v136;
        v150 = v139;
        (*(&v136 + 1))(v94, v96, &v146);
        if (v125)
        {
          v88(v116, v128);
          v90(v115, v129);
          goto LABEL_27;
        }

        v97 = swift_getWitnessTable();
        v98 = v106;
        MEMORY[0x26D69D230](v83, v84, v97);
        result = v86(v98, 1, v130);
        if (result == 1)
        {
          goto LABEL_32;
        }

        v99 = v128;
        v54 = v117;
        v88(&v98[v130[12]], v128);
        v100 = v129;
        v101 = (v90)(v98, v129);
        MEMORY[0x28223BE20](v101);
        v103 = v100;
        v104 = v99;
        Array.mutLast(_:)(partial apply for closure #1 in IterativeTreeTraversal._run(_:_:), (&v105 - 4), v83);
        v88(v116, v99);
        v90(v115, v100);
        LODWORD(v125) = 0;
        v53 = v119;
      }
    }
  }

  v70 = v140 - 1;
  if (!__OFSUB__(v140, 1))
  {
    --v140;
    goto LABEL_15;
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

uint64_t IterativeTreeTraversal._run(_:_:)(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v113 = a1;
  v114 = a2;
  strcpy(v116, "index  returnAfter depth ");
  v5 = *(a3 + 24);
  *&v119 = *(a3 + 16);
  v6 = v119;
  *(&v119 + 1) = v5;
  *&v120 = MEMORY[0x277D83B88];
  *(&v120 + 1) = MEMORY[0x277D83B88];
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v111 = *(TupleTypeMetadata - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata);
  v97 = &v90 - v8;
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v10 = type metadata accessor for Optional();
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v100 = &v90 - v12;
  v13 = *(v5 - 1);
  v14 = MEMORY[0x28223BE20](v11);
  v103 = &v90 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v108 = &v90 - v17;
  v18 = *(v6 - 1);
  v19 = MEMORY[0x28223BE20](v16);
  v102 = &v90 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v98 = &v90 - v21;
  v115 = TupleTypeMetadata;
  v22 = type metadata accessor for Optional();
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v91 = &v90 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v92 = &v90 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v90 - v28;
  v30 = MEMORY[0x28223BE20](v27);
  v90 = &v90 - v31;
  v107 = *(TupleTypeMetadata3 - 8);
  MEMORY[0x28223BE20](v30);
  v33 = &v90 - v32;
  v34 = *(TupleTypeMetadata3 + 48);
  v35 = *(TupleTypeMetadata3 + 64);
  v36 = *(v18 + 16);
  v18 += 16;
  v37 = v113;
  v113 = v6;
  v94 = v36;
  v36(&v90 - v32, v37, v6);
  v38 = *(v13 + 16);
  v13 += 16;
  v112 = v5;
  v93 = v38;
  v38(&v33[v34], v114, v5);
  *&v33[v35] = 0;
  v109 = TupleTypeMetadata3;
  v114 = type metadata accessor for Array();
  Array.append(_:)();
  v110 = (v111 + 6);
  v111 = (v13 - 8);
  v39 = (v18 - 8);
  v99 = (v107 + 6);
  v95 = v18;
  v107 = (v18 + 16);
  v40 = v29;
  v96 = v13;
  v106 = (v13 + 16);
  v104 = v29;
  v105 = v39;
  while (1)
  {
    v41 = *v4;
    v118 = *v4;
    swift_getWitnessTable();
    if (Collection.isEmpty.getter())
    {
      v118 = v4[7];
      type metadata accessor for Array();
      swift_getWitnessTable();
      result = Collection.isEmpty.getter();
      if (result)
      {
        return result;
      }
    }

    v118 = v41;
    if ((Collection.isEmpty.getter() & 1) == 0)
    {
      v43 = v4[7];
      v118 = v43;
      v44 = type metadata accessor for Array();
      swift_getWitnessTable();
      if (Collection.isEmpty.getter())
      {
        goto LABEL_9;
      }

      v117 = v43;
      if ((Collection.isEmpty.getter() & 1) == 0)
      {
        v117 = v43;
        swift_getWitnessTable();
        v45 = v90;
        BidirectionalCollection.last.getter();
        result = (*v110)(v45, 1, v115);
        if (result == 1)
        {
          goto LABEL_32;
        }

        v46 = *&v45[v115[16]];
        (*v111)(&v45[v115[12]], v112);
        (*v39)(v45, v113);
        if (v46)
        {
LABEL_9:
          v47 = v114;
          WitnessTable = swift_getWitnessTable();
          v49 = swift_getWitnessTable();
          v50 = v100;
          MEMORY[0x26D69D230](v47, WitnessTable, v49);
          result = (*v99)(v50, 1, v109);
          if (result == 1)
          {
            goto LABEL_29;
          }

          v51 = *(v109 + 48);
          v52 = *&v50[*(v109 + 64)];
          v53 = v98;
          (*v107)(v98, v50, v113);
          v54 = v108;
          (*v106)(v108, &v50[v51], v112);
          *(v4 + 73) = 1;
          v4[10] = *(v4 + 72);
          v4[8] = v52;
          v55 = v4[1];

          v55(v53, v54, v4);

          if (*(v4 + 74) == 1)
          {
            (*v111)(v108, v112);
            return (*v39)(v53, v113);
          }

          *(v4 + 73) = 0;
          v56 = v4[10];
          if (v56)
          {
            if (*(v4 + 72) == 1)
            {
              if (__OFSUB__(v56--, 1))
              {
                __break(1u);
LABEL_28:
                __break(1u);
LABEL_29:
                __break(1u);
LABEL_30:
                __break(1u);
LABEL_31:
                __break(1u);
LABEL_32:
                __break(1u);
                return result;
              }

              v4[10] = v56;
            }

            v58 = v115[12];
            v59 = v115[16];
            v101 = v44;
            v60 = v115[20];
            v61 = v97;
            v62 = v113;
            v94(v97, v53, v113);
            v63 = &v61[v58];
            v64 = v108;
            v65 = v112;
            v93(v63, v108, v112);
            *&v61[v59] = v56;
            *&v61[v60] = v52;
            v39 = v105;
            Array.append(_:)();
            v66 = v64;
            v40 = v104;
            (*v111)(v66, v65);
            (*v39)(v53, v62);
          }

          else
          {
            MEMORY[0x28223BE20](result);
            v68 = v112;
            v67 = v113;
            *(&v90 - 2) = v113;
            *(&v90 - 1) = v68;
            Array.mutLast(_:)(partial apply for closure #1 in IterativeTreeTraversal._run(_:_:), (&v90 - 4), v44);
            (*v111)(v108, v68);
            (*v39)(v53, v67);
          }
        }
      }
    }

    v69 = v4[7];
    v118 = v69;
    v70 = type metadata accessor for Array();
    swift_getWitnessTable();
    if ((Collection.isEmpty.getter() & 1) == 0)
    {
      v118 = v69;
      v71 = swift_getWitnessTable();
      BidirectionalCollection.last.getter();
      v72 = *v110;
      result = (*v110)(v40, 1, v115);
      if (result == 1)
      {
        goto LABEL_28;
      }

      v73 = *&v40[v115[16]];
      v74 = *v111;
      (*v111)(&v40[v115[12]], v112);
      v75 = *v39;
      (*v39)(v40, v113);
      if (!v73)
      {
        v118 = v69;
        v76 = v92;
        BidirectionalCollection.last.getter();
        result = v72(v76, 1, v115);
        if (result == 1)
        {
          goto LABEL_30;
        }

        v77 = v115[12];
        v78 = *&v76[v115[20]];
        v79 = v102;
        (*v107)(v102, v76, v113);
        v80 = &v76[v77];
        v81 = v103;
        (*v106)(v103, v80, v112);
        v4[8] = v78;
        v82 = v4[3];
        v83 = *(v4 + 4);
        v122 = *(v4 + 3);
        v123 = v83;
        v84 = *(v4 + 2);
        v120 = *(v4 + 1);
        v121 = v84;
        v124 = v4[10];
        v119 = *v4;
        LOBYTE(v78) = BYTE10(v123);
        v82(v79, v81, &v119);
        if (v78)
        {
          v74(v103, v112);
          return (v75)(v102, v113);
        }

        v85 = swift_getWitnessTable();
        v86 = v91;
        MEMORY[0x26D69D230](v70, v71, v85);
        result = v72(v86, 1, v115);
        v39 = v105;
        if (result == 1)
        {
          goto LABEL_31;
        }

        v87 = v112;
        v74(&v86[v115[12]], v112);
        v88 = v113;
        v89 = (v75)(v86, v113);
        MEMORY[0x28223BE20](v89);
        *(&v90 - 2) = v88;
        *(&v90 - 1) = v87;
        Array.mutLast(_:)(partial apply for closure #2 in IterativeTreeTraversal._run(_:_:), (&v90 - 4), v70);
        v74(v103, v87);
        v75(v102, v88);
        v40 = v104;
      }
    }
  }
}

uint64_t closure #1 in IterativeTreeTraversal._run(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_getTupleTypeMetadata();
  v5 = *(result + 64);
  v6 = *(a1 + v5);
  v7 = __OFSUB__(v6, 1);
  v8 = v6 - 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    *(a1 + v5) = v8;
  }

  return result;
}

uint64_t UnsafeTable.storage.setter(uint64_t result, uint64_t a2)
{
  *v2 = result;
  v2[1] = a2;
  return result;
}

void UnsafeTable.describe(state:)()
{
  v1 = v0[2];
  if (v1 < 0)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v2 = *v0;
  v41 = *(v0 + 3);
  v3 = v0[3];
  v37 = v0[2];
  v38 = v3;
  if (v1)
  {
    if (v3 < 0)
    {
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    v4 = 0;
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v39 = v6;
      if (v3)
      {
        break;
      }

LABEL_5:
      v3 = v38;
      v6 = (v39 + 1);
      v4 += v38;
      if (v39 + 1 == v37)
      {
        goto LABEL_17;
      }
    }

    v7 = (v6 * v3) >> 64 != (v6 * v3) >> 63;
    v8 = v3;
    v9 = v4;
    while (!v7)
    {
      if (v9 >= v41)
      {
        goto LABEL_37;
      }

      if (v4 < 0)
      {
        goto LABEL_38;
      }

      if (!v2)
      {
        goto LABEL_46;
      }

      dispatch thunk of CustomStringConvertible.description.getter();
      v10 = String.count.getter();

      if (v10 > v5)
      {
        v5 = v10;
      }

      ++v9;
      if (!--v8)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v5 = 0;
LABEL_17:
  v40 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
  [v40 setFormatWidth_];
  v11 = MEMORY[0x277D84F90];
  v12 = v37;
  if (!v37)
  {
LABEL_35:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR, MEMORY[0x277D83958]);
    v32 = BidirectionalCollection<>.joined(separator:)();
    v34 = v33;

    MEMORY[0x26D69CDB0](v32, v34);

    MEMORY[0x26D69CDB0](41, 0xE100000000000000);

    return;
  }

  v42 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v37, 0);
  if ((v3 & 0x8000000000000000) == 0)
  {
    v13 = 0;
    v14 = 0;
    v15 = v42;
    while (!__OFADD__(v14, 1))
    {
      v35 = v14 + 1;
      v36 = v15;
      if (v3)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
        if ((v14 * v3) >> 64 != (v14 * v3) >> 63)
        {
          goto LABEL_42;
        }

        v16 = v3;
        v17 = v13;
        while (v17 < v41)
        {
          if (v13 < 0)
          {
            goto LABEL_40;
          }

          if (!v2)
          {
            goto LABEL_48;
          }

          isa = Int._bridgeToObjectiveC()().super.super.isa;
          v19 = [v40 stringForObjectValue_];

          if (!v19)
          {
            goto LABEL_47;
          }

          v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v22 = v21;

          v24 = *(v11 + 16);
          v23 = *(v11 + 24);
          if (v24 >= v23 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1);
          }

          *(v11 + 16) = v24 + 1;
          v25 = v11 + 16 * v24;
          *(v25 + 32) = v20;
          *(v25 + 40) = v22;
          ++v17;
          if (!--v16)
          {
            v12 = v37;
            goto LABEL_32;
          }
        }

        goto LABEL_39;
      }

LABEL_32:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR, MEMORY[0x277D83958]);
      v26 = BidirectionalCollection<>.joined(separator:)();
      v28 = v27;

      v15 = v36;
      v30 = *(v36 + 16);
      v29 = *(v36 + 24);
      if (v30 >= v29 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1);
        v15 = v36;
      }

      *(v15 + 16) = v30 + 1;
      v31 = v15 + 16 * v30;
      *(v31 + 32) = v26;
      *(v31 + 40) = v28;
      v3 = v38;
      v13 += v38;
      v14 = v35;
      v11 = MEMORY[0x277D84F90];
      if (v35 == v12)
      {
        goto LABEL_35;
      }
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
}

uint64_t UnsafeTable.subscript.getter(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 24);
  v4 = result * v3;
  if ((result * v3) >> 64 != (result * v3) >> 63)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = __OFADD__(v4, a2);
  v6 = v4 + a2;
  if (v5)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v6 >= *(v2 + 12))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (*v2)
  {
    return *(*v2 + 8 * v6);
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t key path getter for UnsafeTable.subscript(_:_:) : UnsafeTable@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v3 = *(result + 24);
  v4 = *a2 * v3;
  if ((*a2 * v3) >> 64 != v4 >> 63)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = a2[1];
  v6 = __OFADD__(v4, v5);
  v7 = v4 + v5;
  if (v6)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v7 >= *(result + 12))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (*result)
  {
    *a3 = *(*result + 8 * v7);
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

void *key path setter for UnsafeTable.subscript(_:_:) : UnsafeTable(void *result, uint64_t a2, uint64_t *a3)
{
  v3 = *(a2 + 24);
  v4 = *a3 * v3;
  if ((*a3 * v3) >> 64 != v4 >> 63)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = a3[1];
  v6 = __OFADD__(v4, v5);
  v7 = v4 + v5;
  if (v6)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v7 >= *(a2 + 12))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (*a2)
  {
    *(*a2 + 8 * v7) = *result;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t UnsafeTable.subscript.setter(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 24);
  v5 = a2 * v4;
  if ((a2 * v4) >> 64 != (a2 * v4) >> 63)
  {
    __break(1u);
    goto LABEL_7;
  }

  v6 = __OFADD__(v5, a3);
  v7 = v5 + a3;
  if (v6)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v7 >= *(v3 + 12))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (*v3)
  {
    *(*v3 + 8 * v7) = result;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

Swift::Void __swiftcall UnsafeTable.zero(rows:columns:)(Swift::Int rows, Swift::Int columns)
{
  v3 = rows * columns;
  if ((rows * columns) >> 64 != (rows * columns) >> 63)
  {
    __break(1u);
    goto LABEL_6;
  }

  specialized UnsafeArray.growToCapacity(_:)();
  if ((v3 & 0x8000000000000000) != 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (!HIDWORD(v3))
  {
    *(v2 + 12) = v3;
    bzero(*v2, 8 * v3);
    *(v2 + 16) = rows;
    *(v2 + 24) = columns;
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t protocol witness for Deallocatable.deallocate() in conformance UnsafeTable()
{
  result = *v0;
  if (*v0)
  {
    result = MEMORY[0x26D69EAB0](result, -1, -1);
    *v0 = 0;
  }

  return result;
}

uint64_t specialized static URL.mktempCommon(_:x:)@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, int *a3@<X2>, uint64_t a4@<X8>)
{
  v27[1] = a4;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v27 - v12;
  v14 = NSTemporaryDirectory();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  URL.init(fileURLWithPath:isDirectory:)();

  v28 = a1;
  v29 = a2;

  MEMORY[0x26D69CDB0](1482184750, 0xE400000000000000);
  URL.appendingPathComponent(_:)();

  v15 = *(v8 + 8);
  v15(v11, v7);
  v16 = URL.pathBytes.getter();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 2), 0, v16);
  }

  v17 = mkstemp(v16 + 32);
  *a3 = v17;
  if (v17 == -1)
  {
    v20 = MEMORY[0x26D69C8C0]();
    if (!strerror(v20))
    {
      __break(1u);
    }

    v21 = String.init(cString:)();
    v28 = 0xD000000000000013;
    v29 = 0x800000026C33D190;
    MEMORY[0x26D69CDB0](v21);

    v23 = v28;
    v22 = v29;
    v28 = 0x203A726F66;
    v29 = 0xE500000000000000;
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v24 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x26D69CDB0](v24);

    v25 = v28;
    v26 = v29;
    v28 = v23;
    v29 = v22;

    MEMORY[0x26D69CDB0](v25, v26);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v18 = [objc_allocWithZone(MEMORY[0x277CBEBC0]) initFileURLWithFileSystemRepresentation:v16 + 32 isDirectory:0 relativeToURL:0];

    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    return (v15)(v13, v7);
  }

  return result;
}

uint64_t specialized static URL.mktempCommon(_:x:)(unint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - v9;
  v11 = NSTemporaryDirectory();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  URL.init(fileURLWithPath:isDirectory:)();

  v23 = a1;
  v24 = a2;

  MEMORY[0x26D69CDB0](1482184750, 0xE400000000000000);
  URL.appendingPathComponent(_:)();

  v12 = *(v5 + 8);
  v12(v8, v4);
  v13 = URL.pathBytes.getter();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v13 + 2), 0, v13);
  }

  if (mktemp(v13 + 32))
  {
    v14 = [objc_allocWithZone(MEMORY[0x277CBEBC0]) initFileURLWithFileSystemRepresentation:v13 + 32 isDirectory:0 relativeToURL:0];

    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    return (v12)(v10, v4);
  }

  else
  {
    v16 = MEMORY[0x26D69C8C0]();
    if (!strerror(v16))
    {
      __break(1u);
    }

    v17 = String.init(cString:)();
    v23 = 0xD000000000000013;
    v24 = 0x800000026C33D190;
    MEMORY[0x26D69CDB0](v17);

    v19 = v23;
    v18 = v24;
    v23 = 0x203A726F66;
    v24 = 0xE500000000000000;
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x26D69CDB0](v20);

    v21 = v23;
    v22 = v24;
    v23 = v19;
    v24 = v18;

    MEMORY[0x26D69CDB0](v21, v22);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t static URL.mktempCommon(_:x:)@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t (*a3)(uint64_t *)@<X2>, uint64_t a4@<X8>)
{
  v24[1] = a4;
  v25 = a3;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v24 - v11;
  v13 = NSTemporaryDirectory();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  URL.init(fileURLWithPath:isDirectory:)();

  v27 = a1;
  v28 = a2;

  MEMORY[0x26D69CDB0](1482184750, 0xE400000000000000);
  URL.appendingPathComponent(_:)();

  v14 = *(v7 + 8);
  v14(v10, v6);
  v26 = URL.pathBytes.getter();
  if (v25(&v26))
  {
    v15 = [objc_allocWithZone(MEMORY[0x277CBEBC0]) initFileURLWithFileSystemRepresentation:v26 + 32 isDirectory:0 relativeToURL:0];

    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    return (v14)(v12, v6);
  }

  else
  {
    v17 = MEMORY[0x26D69C8C0]();
    if (!strerror(v17))
    {
      __break(1u);
    }

    v18 = String.init(cString:)();
    v27 = 0xD000000000000013;
    v28 = 0x800000026C33D190;
    MEMORY[0x26D69CDB0](v18);

    v20 = v27;
    v19 = v28;
    v27 = 0x203A726F66;
    v28 = 0xE500000000000000;
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x26D69CDB0](v21);

    v22 = v27;
    v23 = v28;
    v27 = v20;
    v28 = v19;

    MEMORY[0x26D69CDB0](v22, v23);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t static URL.temporary.getter()
{
  v0 = NSTemporaryDirectory();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  URL.init(fileURLWithPath:isDirectory:)();
}

char *URL.pathBytes.getter()
{
  v0 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v0 + 16) = 1024;
  bzero((v0 + 32), 0x400uLL);

  URL._bridgeToObjectiveC()(v1);
  v3 = v2;
  v4 = *(v0 + 16);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v0 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v0 + 16), 0, v0);
  }

  [v3 getFileSystemRepresentation:v0 + 32 maxLength:v4];

  return v0;
}

uint64_t URL.init(mkstemp:fd:)@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, int *a3@<X2>, uint64_t a4@<X8>)
{
  specialized static URL.mktempCommon(_:x:)(a1, a2, a3, a4);
}

uint64_t URL.init(test_only_mktemp:)(unint64_t a1, unint64_t a2)
{
  specialized static URL.mktempCommon(_:x:)(a1, a2);
}

uint64_t URL.init(clone:to:)@<X0>(int a1@<W0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_opt_self() defaultManager];
  v11 = URL.path.getter();
  v12 = MEMORY[0x26D69CC20](v11);

  v13 = [v10 fileExistsAtPath_];

  if (v13)
  {
    (*(v7 + 8))(a2, v6);
    v14 = 1;
    return (*(v7 + 56))(a3, v14, 1, v6);
  }

  URL.deletingLastPathComponent()();
  result = URL.openFd(mode:)(0x100000);
  if ((a1 & 0x80000000) == 0)
  {
    v16 = result;
    v17 = URL.pathBytes.getter();
    v18 = fclonefileat(a1, v16, v17 + 32, 0);

    if (v18)
    {
      close(v16);
      v19 = *(v7 + 8);
      v19(a2, v6);
      v19(v9, v6);
      v14 = 1;
    }

    else
    {
      (*(v7 + 16))(a3, a2, v6);
      close(v16);
      v20 = *(v7 + 8);
      v20(a2, v6);
      v20(v9, v6);
      v14 = 0;
    }

    return (*(v7 + 56))(a3, v14, 1, v6);
  }

  __break(1u);
  return result;
}

uint64_t URL.writeRandom(bytes:)(size_t a1)
{
  v8 = specialized Data.init(count:)(a1);
  v9 = v3;
  specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(&v8, a1);
  v4 = v8;
  v5 = v9;
  Data.write(to:options:)();
  if (v1)
  {
    v6 = v4;
    v4 = v1;
    outlined consume of Data._Representation(v6, v5);
  }

  return v4;
}

uint64_t Data.init(random:)(size_t a1)
{
  v4[0] = specialized Data.init(count:)(a1);
  v4[1] = v2;
  specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(v4, a1);
  return v4[0];
}

uint64_t URL.realpath.getter()
{
  URL.path(percentEncoded:)(1);
  v0 = String.utf8CString.getter();

  v1 = realpath_DARWIN_EXTSN((v0 + 32), 0);

  if (!v1)
  {
    return 0;
  }

  v2 = String.init(cString:)();
  MEMORY[0x26D69EAB0](v1, -1, -1);
  return v2;
}

Swift::Void __swiftcall URL.unlink()()
{
  v8[1] = *MEMORY[0x277D85DE8];
  v0 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v1);
  v3 = v2;
  v8[0] = 0;
  v4 = [v0 removeItemAtURL:v2 error:v8];

  v5 = v8[0];
  if (v4)
  {

    v6 = v5;
  }

  else
  {
    v7 = v8[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

Swift::String __swiftcall URL.err(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  type metadata accessor for URL();
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
  v7 = dispatch thunk of CustomStringConvertible.description.getter();
  v8 = v3;
  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  MEMORY[0x26D69CDB0](countAndFlagsBits, object);
  v4 = v7;
  v5 = v8;
  result._object = v5;
  result._countAndFlagsBits = v4;
  return result;
}

uint64_t $defer #1 () in URL.openFd(mode:)()
{
  v0 = type metadata accessor for String.Encoding();
  v1 = MEMORY[0x28223BE20](v0 - 8);
  result = MEMORY[0x26D69C8C0](v1);
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_26C328DC0;
    v4 = URL.pathBytes.getter();
    v5 = *(v4 + 2);
    if (v5)
    {
      v18 = MEMORY[0x277D84F90];
      v6 = v4;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
      result = v6;
      v7 = 32;
      while (1)
      {
        v8 = *(result + v7);
        if (v8 < 0)
        {
          break;
        }

        v10 = *(v18 + 16);
        v9 = *(v18 + 24);
        if (v10 >= v9 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1);
          result = v6;
        }

        *(v18 + 16) = v10 + 1;
        *(v18 + v10 + 32) = v8;
        ++v7;
        if (!--v5)
        {
          goto LABEL_8;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_8:

      static String.Encoding.ascii.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
      lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [UInt8] and conformance [A], &_sSays5UInt8VGMd, &_sSays5UInt8VGMR, MEMORY[0x277D83970]);
      v11 = String.init<A>(bytes:encoding:)();
      v13 = v12;

      if (v13)
      {
        v14 = v11;
      }

      else
      {
        v14 = 16191;
      }

      if (v13)
      {
        v15 = v13;
      }

      else
      {
        v15 = 0xE200000000000000;
      }

      MEMORY[0x26D69CDB0](v14, v15);

      v16 = MEMORY[0x26D69CDB0](2112033, 0xE300000000000000);
      MEMORY[0x26D69C8C0](v16);
      v17 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x26D69CDB0](v17);

      MEMORY[0x26D69CDB0](32, 0xE100000000000000);
      *(v3 + 56) = MEMORY[0x277D837D0];
      *(v3 + 32) = 0x286E65706FLL;
      *(v3 + 40) = 0xE500000000000000;
      print(_:separator:terminator:)();
    }
  }

  return result;
}

uint64_t URL.directoryExists.getter()
{
  v6 = *MEMORY[0x277D85DE8];
  v5 = 0;
  v0 = [objc_opt_self() defaultManager];
  v1 = URL.path.getter();
  v2 = MEMORY[0x26D69CC20](v1);

  v3 = [v0 fileExistsAtPath:v2 isDirectory:&v5];

  return (v3 & v5);
}

uint64_t Optional.releasenoneMap<A>(_:)@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = *(a2 - 8);
  v9 = MEMORY[0x28223BE20](a1);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 + 16);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v9);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, v17);
  if ((*(v14 + 48))(v11, 1, v13) == 1)
  {
    (*(v8 + 8))(v11, a2);
    v18 = 1;
  }

  else
  {
    (*(v14 + 32))(v16, v11, v13);
    a1(v16);
    (*(v14 + 8))(v16, v13);
    v18 = 0;
  }

  return (*(*(a3 - 8) + 56))(a4, v18, 1, a3);
}

uint64_t String.init(freeing:)(void *a1)
{
  v2 = String.init(cString:)();
  free(a1);
  return v2;
}

Swift::Int InspectionState.Mode.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x26D69DBC0](v1);
  return Hasher._finalize()();
}

uint64_t Inspectable_Context.snapshot.getter()
{
  v1 = *v0;
  LODWORD(v2) = *(v0 + 9);
  if (!*(v0 + 9))
  {
    if (v1[48])
    {
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    v3 = *(v1 + 22);
    v2 = *v1;
    if (v2 >= *(v3 + 116))
    {
LABEL_11:
      __break(1u);
      goto LABEL_12;
    }

    v1 = *(v3 + 104);
    if (v1)
    {
      return *(*&v1[8 * v2] + 8);
    }

    __break(1u);
  }

  if (v2 == 1)
  {
    v2 = *(v0 + 8);
    if (*(v1 + 29) > v2)
    {
      v1 = *(v1 + 13);
      if (v1)
      {
        return *(*&v1[8 * v2] + 8);
      }

      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_11;
  }

LABEL_14:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t InspectionState.wrapDescription<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 20);
  v19 = *v3;
  v21 = *v3;
  v22 = v4;
  v23 = *(v3 + 24);
  v20 = v23;
  v24 = v5;
  v6 = (*(a3 + 32))(&v21, a2);
  *&v21 = v6;
  *(&v21 + 1) = v7;
  lazy protocol witness table accessor for type String and conformance String();
  v8 = StringProtocol.components<A>(separatedBy:)();
  if (*(v8 + 16) == 1 && (v20 & 2) == 0)
  {

    return v6;
  }

  *&v21 = 0;
  *(&v21 + 1) = 0xE000000000000000;
  if ((v20 & 2) != 0)
  {
    v10 = v19;
  }

  else
  {
    v10 = 1;
  }

  v11._countAndFlagsBits = 8224;
  v11._object = 0xE200000000000000;
  v13 = String.init(repeating:count:)(v11, v10);
  result = v13._countAndFlagsBits;
  v14 = *(v8 + 16);
  if (!v14)
  {
LABEL_15:

    return v21;
  }

  v15 = 0;
  v16 = (v8 + 40);
  while (v15 < *(v8 + 16))
  {
    v18 = *(v16 - 1);
    v17 = *v16;

    MEMORY[0x26D69CDB0](v18, v17);

    MEMORY[0x26D69CDB0](v13._countAndFlagsBits, v13._object);

    if (v14 != 1)
    {
      result = MEMORY[0x26D69CDB0](10, 0xE100000000000000);
    }

    v16 += 2;
    ++v15;
    if (!--v14)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t Optional.describe(state:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](a1);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v32 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v32 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v13;
  v17 = *(v13 + 8);
  v18 = *(v13 + 16);
  v19 = *(v13 + 24);
  v36 = *(v13 + 32);
  v20 = *(v13 + 40);
  v34 = *(v13 + 41);
  v35 = v20;
  (*(v21 + 16))(v15, v22);
  if ((*(v3 + 48))(v15, 1, v2) == 1)
  {
    return 7104878;
  }

  v33 = v16;
  (*(v3 + 32))(v12, v15, v2);
  v24 = *(v3 + 16);
  v24(v9, v12, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport11Inspectable_pMd, &_s21SwiftUITracingSupport11Inspectable_pMR);
  if (swift_dynamicCast())
  {
    outlined init with take of Inspectable(&v37, v42);
    v25 = v43;
    v26 = v44;
    v27 = __swift_project_boxed_opaque_existential_1(v42, v43);
    *&v37 = v33;
    *(&v37 + 1) = v17;
    LOBYTE(v38) = v18;
    *(&v38 + 1) = v19;
    v39 = v36;
    v40 = v35;
    v41 = v34;
    v31 = InspectionState.describe<A>(_:)(v27, v25, v26, v28, v29, v30);
    (*(v3 + 8))(v12, v2);
    __swift_destroy_boxed_opaque_existential_1(v42);
  }

  else
  {
    v39 = 0;
    v37 = 0u;
    v38 = 0u;
    outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](&v37, &_s21SwiftUITracingSupport11Inspectable_pSgMd, &_s21SwiftUITracingSupport11Inspectable_pSgMR);
    v24(v6, v12, v2);
    v31 = String.init<A>(describing:)();
    (*(v3 + 8))(v12, v2);
  }

  return v31;
}

uint64_t protocol witness for Inspectable.description(depth:mode:context:) in conformance String()
{
  v1 = *v0;

  return v1;
}

uint64_t Optional<A>.describe(state:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a3;
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = &v24[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v24[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *v8;
  v12 = *(v8 + 8);
  v13 = *(v8 + 16);
  v14 = *(v8 + 24);
  v15 = *(v8 + 32);
  v16 = *(v8 + 40);
  v25 = *(v8 + 41);
  (*(v17 + 16))(v10, v18);
  if ((*(v4 + 48))(v10, 1, v3) == 1)
  {
    return 7104878;
  }

  (*(v4 + 32))(v7, v10, v3);
  v27 = v11;
  v28 = v12;
  v29 = v13;
  v30 = v14;
  v31 = v15;
  v32 = v16;
  v33 = v25;
  v23 = InspectionState.describe<A>(_:)(v7, v3, v26, v20, v21, v22);
  (*(v4 + 8))(v7, v3);
  return v23;
}

Swift::String __swiftcall ArrayLike.basicDescription()()
{
  dispatch thunk of Collection.count.getter();
  v0 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26D69CDB0](v0);

  MEMORY[0x26D69CDB0](93, 0xE100000000000000);
  v1 = 9051;
  v2 = 0xE200000000000000;
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t closure #1 in ArrayLike.describe(state:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, void *a5@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  (*(v10 + 16))(&v17[-1] - v9, a1, AssociatedTypeWitness);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport11Inspectable_pMd, &_s21SwiftUITracingSupport11Inspectable_pMR);
  swift_dynamicCast();
  v11 = v19;
  v12 = v20;
  __swift_project_boxed_opaque_existential_1(v18, v19);
  v13 = a2[1];
  v16 = *a2;
  v17[0] = v13;
  *(v17 + 10) = *(a2 + 26);
  *a5 = (*(v12 + 32))(&v16, v11, v12);
  a5[1] = v14;
  return __swift_destroy_boxed_opaque_existential_1(v18);
}

unint64_t OS_xpc_object.xpcMessageDictionary.getter()
{
  v1 = MEMORY[0x26D69EE00](v0);
  if (v1 != XPC_TYPE_DICTIONARY.getter())
  {
    return 0;
  }

  v9 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = &v9;
  v4 = swift_allocObject();
  *(v4 + 16) = partial apply for closure #1 in OS_xpc_object.xpcMessageDictionary.getter;
  *(v4 + 24) = v3;
  aBlock[4] = partial apply for thunk for @callee_guaranteed (@unowned UnsafePointer<Int8>, @guaranteed OS_xpc_object) -> (@unowned Bool);
  aBlock[5] = v4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned UnsafePointer<Int8>, @guaranteed OS_xpc_object) -> (@unowned Bool);
  aBlock[3] = &block_descriptor_252;
  v5 = _Block_copy(aBlock);

  xpc_dictionary_apply(v0, v5);
  _Block_release(v5);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v7 = v9;

    return v7;
  }

  return result;
}

uint64_t closure #1 in OS_xpc_object.xpcMessageDictionary.getter(uint64_t a1, uint64_t a2)
{
  v3 = String.init(cString:)();
  v5 = v4;
  v6 = MEMORY[0x26D69EE00](a2);
  if (v6 == XPC_TYPE_DICTIONARY.getter())
  {
    v7 = OS_xpc_object.xpcMessageDictionary.getter();
    v8 = v7;
    if (v7)
    {
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
    }

    else
    {
      v10[1] = 0;
      v10[2] = 0;
    }

    v10[0] = v8;
    v10[3] = v7;
  }

  else
  {
    OS_xpc_object.value()(v10);
  }

  specialized Dictionary.subscript.setter(v10, v3, v5);
  return 1;
}

uint64_t OS_xpc_object.value()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v3 = MEMORY[0x26D69EE00](v1);
  if (XPC_TYPE_DICTIONARY.getter() == v3)
  {
    v7 = OS_xpc_object.xpcMessageDictionary.getter();
    if (v7)
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
    }

    else
    {
      v8 = 0;
    }

    result = outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](a1, &_sypSgMd, &_sypSgMR);
    *a1 = v7;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = v8;
  }

  else if (XPC_TYPE_STRING.getter() == v3)
  {
    if (xpc_string_get_string_ptr(v1))
    {
      v9 = String.init(cString:)();
      v11 = v10;
      v12 = MEMORY[0x277D837D0];
    }

    else
    {
      v9 = 0;
      v11 = 0;
      v12 = 0;
    }

    result = outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](a1, &_sypSgMd, &_sypSgMR);
    *a1 = v9;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    *(a1 + 24) = v12;
  }

  else
  {
    if (XPC_TYPE_BOOL.getter() == v3)
    {
      value = xpc_BOOL_get_value(v1);
      result = outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](a1, &_sypSgMd, &_sypSgMR);
      *a1 = value;
      v6 = MEMORY[0x277D839B0];
    }

    else
    {
      result = XPC_TYPE_INT64.getter();
      if (result != v3)
      {
        return result;
      }

      v5 = xpc_int64_get_value(v1);
      result = outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](a1, &_sypSgMd, &_sypSgMR);
      *a1 = v5;
      v6 = MEMORY[0x277D84A28];
    }

    *(a1 + 24) = v6;
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned UnsafePointer<Int8>, @guaranteed OS_xpc_object) -> (@unowned Bool)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  swift_unknownObjectRetain();
  v6 = v5(a2, a3);
  swift_unknownObjectRelease();
  return v6 & 1;
}

uint64_t OS_xpc_object.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  outlined init with copy of Any?(a1, v12);
  if (v13)
  {
    if (swift_dynamicCast())
    {
      v5 = String.utf8CString.getter();

      v6 = String.utf8CString.getter();

      xpc_dictionary_set_string(v3, (v5 + 32), (v6 + 32));
      outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](a1, &_sypSgMd, &_sypSgMR);
    }
  }

  else
  {
    outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v12, &_sypSgMd, &_sypSgMR);
  }

  outlined init with copy of Any?(a1, v12);
  if (v13)
  {
    if (swift_dynamicCast())
    {
      v7 = String.utf8CString.getter();

      xpc_dictionary_set_BOOL(v3, (v7 + 32), v11);
LABEL_12:
      outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](a1, &_sypSgMd, &_sypSgMR);
    }
  }

  else
  {
    outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v12, &_sypSgMd, &_sypSgMR);
  }

  outlined init with copy of Any?(a1, v12);
  if (v13)
  {
    if (swift_dynamicCast())
    {
      v8 = String.utf8CString.getter();

      xpc_dictionary_set_int64(v3, (v8 + 32), v11);
      goto LABEL_12;
    }
  }

  else
  {
    outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v12, &_sypSgMd, &_sypSgMR);
  }

  v12[0] = 0;
  v12[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(68);
  MEMORY[0x26D69CDB0](0xD000000000000030, 0x800000026C33D250);
  outlined init with copy of Any?(a1, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v10 = String.init<A>(describing:)();
  MEMORY[0x26D69CDB0](v10);

  MEMORY[0x26D69CDB0](0xD000000000000012, 0x800000026C33D290);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

Swift::Bool __swiftcall OS_xpc_object.entitled(_:allowsInternal:)(Swift::String _, Swift::Bool allowsInternal)
{
  v3 = v2;
  String.utf8CString.getter();
  has_internal_diagnostics = os_variant_has_internal_diagnostics();

  if (!xpc_dictionary_get_remote_connection(v3))
  {
    return has_internal_diagnostics & 1;
  }

  String.utf8CString.getter();
  v6 = xpc_connection_copy_entitlement_value();

  if (!v6)
  {
    swift_unknownObjectRelease();
    return has_internal_diagnostics & 1;
  }

  v7 = MEMORY[0x26D69EE00](v6);
  if (v7 == XPC_TYPE_BOOL.getter())
  {
    if (xpc_BOOL_get_value(v6))
    {
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      has_internal_diagnostics = 1;
    }

    else
    {
      static os_log_type_t.error.getter();
      if (one-time initialization token for log != -1)
      {
        swift_once();
      }

      os_log(_:dso:log:_:_:)();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      has_internal_diagnostics &= allowsInternal;
    }

    return has_internal_diagnostics & 1;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

double Dictionary<>.daemonResponse.getter@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16) && (v4 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000028, 0x800000026C33D200), (v5 & 1) != 0))
  {
    v6 = *(a1 + 56) + 32 * v4;

    outlined init with copy of Any(v6, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

xpc_object_t Dictionary<>.encodedXPCObject.getter(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v2, "swiftui_command", 1);
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;
  v25 = a1;

  v9 = 0;
  v10 = &_sSDySSypGMd;
  v11 = MEMORY[0x277D84F70];
  if (!v6)
  {
    goto LABEL_7;
  }

  do
  {
    while (1)
    {
      v15 = v9;
LABEL_14:
      v18 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v19 = v18 | (v15 << 6);
      v20 = (*(v25 + 48) + 16 * v19);
      v21 = *v20;
      v22 = v20[1];
      outlined init with copy of Any(*(v25 + 56) + 32 * v19, &v28);
      *&v30 = v21;
      *(&v30 + 1) = v22;
      outlined init with take of Any(&v28, &v31);

      v17 = v15;
LABEL_15:
      v33 = v30;
      v34[0] = v31;
      v34[1] = v32;
      v23 = *(&v30 + 1);
      if (!*(&v30 + 1))
      {

        return v2;
      }

      v24 = v33;
      outlined init with take of Any(v34, &v30);
      outlined init with copy of Any(&v30, &v28);
      __swift_instantiateConcreteTypeFromMangledNameV2(v10, &_sSDySSypGMR);
      if (!swift_dynamicCast())
      {
        break;
      }

      v26 = v17;
      v12 = v11;
      v13 = v10;
      v14 = Dictionary<>.encodedXPCObject.getter(v27);

      ObjectType = swift_getObjectType();
      *&v28 = v14;
      swift_unknownObjectRetain();
      OS_xpc_object.subscript.setter(&v28, v24, v23);
      v10 = v13;
      v11 = v12;
      swift_unknownObjectRelease();
      result = __swift_destroy_boxed_opaque_existential_1(&v30);
      v9 = v26;
      if (!v6)
      {
        goto LABEL_7;
      }
    }

    outlined init with copy of Any(&v30, &v28);
    OS_xpc_object.subscript.setter(&v28, v24, v23);
    result = __swift_destroy_boxed_opaque_existential_1(&v30);
    v9 = v17;
  }

  while (v6);
LABEL_7:
  if (v7 <= v9 + 1)
  {
    v16 = v9 + 1;
  }

  else
  {
    v16 = v7;
  }

  v17 = v16 - 1;
  while (1)
  {
    v15 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v15 >= v7)
    {
      v6 = 0;
      v31 = 0u;
      v32 = 0u;
      v30 = 0u;
      goto LABEL_15;
    }

    v6 = *(v3 + 8 * v15);
    ++v9;
    if (v6)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

id static NSTask.invoke(executablePath:arguments:stdOut:stdErr:)(uint64_t a1, uint64_t a2, uint64_t a3, void **a4, void **a5)
{
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a4;
  v12 = *a5;
  v13 = [objc_allocWithZone(MEMORY[0x277CCACB0]) init];
  URL.init(fileURLWithPath:)();
  URL._bridgeToObjectiveC()(v14);
  v16 = v15;
  (*(v8 + 8))(v10, v7);
  [v13 setExecutableURL_];

  isa = Array._bridgeToObjectiveC()().super.isa;
  [v13 setArguments_];

  v18 = [objc_opt_self() processInfo];
  v19 = [v18 environment];

  v20 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v20 + 16) && (v21 = specialized __RawDictionaryStorage.find<A>(_:)(1213481296, 0xE400000000000000), (v22 & 1) != 0))
  {
    v23 = (*(v20 + 56) + 16 * v21);
    v24 = *v23;
    v25 = v23[1];
    v62 = *v23;
    v63 = v25;
    swift_bridgeObjectRetain_n();
  }

  else
  {
    v24 = 0;
    v25 = 0xE000000000000000;
    v62 = 0;
    v63 = 0xE000000000000000;
  }

  aBlock = v24;
  v57 = v25;
  strcpy(v55, "/usr/local/bin");
  v55[15] = -18;
  lazy protocol witness table accessor for type String and conformance String();
  v26 = StringProtocol.contains<A>(_:)();

  if ((v26 & 1) == 0)
  {
    v27 = HIBYTE(v25) & 0xF;
    if ((v25 & 0x2000000000000000) == 0)
    {
      v27 = v24 & 0xFFFFFFFFFFFFLL;
    }

    if (v27)
    {
      MEMORY[0x26D69CDB0](58, 0xE100000000000000);
    }

    MEMORY[0x26D69CDB0](0x636F6C2F7273752FLL, 0xEE006E69622F6C61);
    v24 = v62;
    v25 = v63;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  aBlock = v20;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v24, v25, 1213481296, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
  v29 = aBlock;
  v30 = MEMORY[0x277D837D0];
  v31 = Dictionary._bridgeToObjectiveC()().super.isa;
  [v13 setEnvironment_];

  if (!v11)
  {
LABEL_14:
    if (v12)
    {
      goto LABEL_15;
    }

LABEL_19:

    goto LABEL_22;
  }

  if (v11 == 1)
  {
    [v13 setStandardOutput_];
    goto LABEL_14;
  }

  v52 = v29;
  v32 = [objc_allocWithZone(MEMORY[0x277CCAC10]) init];
  [v13 setStandardOutput_];

  result = [v13 standardOutput];
  if (!result)
  {
    __break(1u);
    goto LABEL_26;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  outlined init with take of Any(v54, v55);
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSPipe, 0x277CCAC10);
  swift_dynamicCast();
  v34 = v53;
  v35 = [v53 fileHandleForReading];

  v36 = swift_allocObject();
  *(v36 + 16) = v11;
  v60 = closure #1 in closure #1 in static NSTask.invoke(executablePath:arguments:stdOut:stdErr:)partial apply;
  v61 = v36;
  aBlock = MEMORY[0x277D85DD0];
  v57 = 1107296256;
  v58 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSTask) -> ();
  v59 = &block_descriptor_53;
  v37 = _Block_copy(&aBlock);
  outlined copy of NSTask.OutputOption(v11);
  outlined copy of (@escaping @callee_guaranteed (@unowned Double) -> ())?(closure #1 in closure #1 in static NSTask.invoke(executablePath:arguments:stdOut:stdErr:)partial apply, v36);

  [v35 setReadabilityHandler_];
  _Block_release(v37);

  v30 = MEMORY[0x277D837D0];
  v29 = v52;
  if (!v12)
  {
    goto LABEL_19;
  }

LABEL_15:
  if (v12 != 1)
  {
    v52 = v29;
    v38 = [objc_allocWithZone(MEMORY[0x277CCAC10]) init];
    [v13 setStandardError_];

    result = [v13 standardError];
    if (result)
    {
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      outlined init with take of Any(v54, v55);
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSPipe, 0x277CCAC10);
      swift_dynamicCast();
      v39 = v53;
      v40 = [v53 fileHandleForReading];

      v41 = swift_allocObject();
      *(v41 + 16) = v12;
      v60 = partial apply for closure #1 in closure #1 in static NSTask.invoke(executablePath:arguments:stdOut:stdErr:);
      v61 = v41;
      aBlock = MEMORY[0x277D85DD0];
      v57 = 1107296256;
      v58 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSTask) -> ();
      v59 = &block_descriptor_46;
      v42 = _Block_copy(&aBlock);
      outlined copy of NSTask.OutputOption(v12);
      outlined copy of (@escaping @callee_guaranteed (@unowned Double) -> ())?(partial apply for closure #1 in closure #1 in static NSTask.invoke(executablePath:arguments:stdOut:stdErr:), v41);

      [v40 setReadabilityHandler_];
      _Block_release(v42);

      goto LABEL_22;
    }

LABEL_26:
    __break(1u);
    return result;
  }

  [v13 setStandardError_];
LABEL_22:
  v43 = swift_allocObject();
  v43[2] = v11;
  v43[3] = v13;
  v43[4] = v12;
  v60 = partial apply for closure #2 in static NSTask.invoke(executablePath:arguments:stdOut:stdErr:);
  v61 = v43;
  aBlock = MEMORY[0x277D85DD0];
  v57 = 1107296256;
  v58 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSTask) -> ();
  v59 = &block_descriptor_40;
  v44 = _Block_copy(&aBlock);
  outlined copy of NSTask.OutputOption(v11);
  outlined copy of NSTask.OutputOption(v12);
  v45 = v13;
  outlined copy of (@escaping @callee_guaranteed (@unowned Double) -> ())?(partial apply for closure #2 in static NSTask.invoke(executablePath:arguments:stdOut:stdErr:), v43);

  [v45 setTerminationHandler_];
  _Block_release(v44);

  [v45 launch];
  [v45 waitUntilExit];
  if ([v45 terminationStatus])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_26C328DC0;
    aBlock = 0;
    v57 = 0xE000000000000000;
    _StringGuts.grow(_:)(20);

    aBlock = 0x203A74697865;
    v57 = 0xE600000000000000;
    *v55 = [v45 terminationStatus];
    v47 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x26D69CDB0](v47);

    MEMORY[0x26D69CDB0](0x646D6320726F6620, 0xEA0000000000203ALL);
    countAndFlagsBits = NSTask.invokableDescription()()._countAndFlagsBits;
    MEMORY[0x26D69CDB0](countAndFlagsBits);

    v49 = aBlock;
    v50 = v57;
    *(v46 + 56) = v30;
    *(v46 + 32) = v49;
    *(v46 + 40) = v50;
    print(_:separator:terminator:)();
  }

  v51 = [v45 terminationStatus];

  return v51;
}

uint64_t closure #1 in closure #1 in static NSTask.invoke(executablePath:arguments:stdOut:stdErr:)(void *a1, void *a2)
{
  v4 = type metadata accessor for String.Encoding();
  result = MEMORY[0x28223BE20](v4);
  if (a1)
  {
    v6 = [a1 availableData];
    v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    static String.Encoding.utf8.getter();
    v10 = String.init(data:encoding:)();
    if (v11)
    {
      v12 = MEMORY[0x26D69CC20](v10);

      [a2 appendString_];
    }

    return outlined consume of Data._Representation(v7, v9);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void closure #2 in static NSTask.invoke(executablePath:arguments:stdOut:stdErr:)(int a1, unint64_t a2, id a3, unint64_t a4)
{
  if (a2 >= 2)
  {
    if (![a3 standardOutput])
    {
      __break(1u);
      goto LABEL_9;
    }

    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    outlined init with take of Any(v9, v10);
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSPipe, 0x277CCAC10);
    swift_dynamicCast();
    v6 = [v8 fileHandleForReading];

    [v6 setReadabilityHandler_];
    _Block_release(0);
  }

  if (a4 < 2)
  {
    return;
  }

  if (![a3 standardError])
  {
LABEL_9:
    __break(1u);
    return;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  outlined init with take of Any(v9, v10);
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSPipe, 0x277CCAC10);
  swift_dynamicCast();
  v7 = [v8 fileHandleForReading];

  [v7 setReadabilityHandler_];
  _Block_release(0);
}

void thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSFileHandle) -> ()(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

Swift::String __swiftcall NSTask.invokableDescription()()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v24 - v7;
  v9 = [v1 arguments];
  if (!v9)
  {
    goto LABEL_6;
  }

  v10 = v9;
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v11 + 16))
  {

LABEL_6:
    v12 = [v1 executableURL];
    if (v12)
    {
      v21 = v12;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v22 = URL.path(percentEncoded:)(1);
      countAndFlagsBits = v22._countAndFlagsBits;
      object = v22._object;
      (*(v3 + 8))(v6, v2);
      goto LABEL_8;
    }

    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v25 = 0;
  v26 = 0xE000000000000000;
  v12 = [v1 executableURL];
  if (!v12)
  {
    goto LABEL_10;
  }

  v14 = v12;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v15 = URL.path(percentEncoded:)(1);
  (*(v3 + 8))(v8, v2);
  MEMORY[0x26D69CDB0](v15._countAndFlagsBits, v15._object);

  MEMORY[0x26D69CDB0](10016, 0xE200000000000000);
  v24[1] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR, MEMORY[0x277D83958]);
  v16 = BidirectionalCollection<>.joined(separator:)();
  v18 = v17;

  MEMORY[0x26D69CDB0](v16, v18);

  MEMORY[0x26D69CDB0](39, 0xE100000000000000);
  countAndFlagsBits = v25;
  object = v26;
LABEL_8:
  v12 = countAndFlagsBits;
  v13 = object;
LABEL_11:
  result._object = v13;
  result._countAndFlagsBits = v12;
  return result;
}

int64_t HeterogeneousBuffer.Index.init(offset:index:)(int64_t result, uint64_t a2)
{
  if (result > 0xFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if ((a2 | result) < 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (a2 <= 0xFFFFFFFFLL)
  {
    return result | (a2 << 32);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t HeterogeneousBuffer.pointer.setter(uint64_t result, uint64_t a2, char a3)
{
  *v3 = result;
  *(v3 + 8) = a2;
  *(v3 + 16) = a3 & 1;
  return result;
}

uint64_t HeterogeneousBuffer.count.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(&v5 + 1) = a4;
  *&v5 = a3;
  return v5 >> 32;
}

Swift::Void __swiftcall HeterogeneousBuffer.grow(_:)(Swift::Int a1)
{
  if (a1 + 0x4000000000000000 < 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  v2 = 0;
  if ((*(v1 + 16) & 1) == 0)
  {
    if (*v1)
    {
      v2 = *(v1 + 8) - *v1;
      if (v2 + 0x4000000000000000 < 0)
      {
        goto LABEL_12;
      }
    }
  }

  v3 = 2 * v2;
  if (v3 <= 2 * a1)
  {
    v3 = 2 * a1;
  }

  if (v3 <= 64)
  {
    HeterogeneousBuffer.reserveCapacity(bytes:)(64);
  }

  else
  {
    HeterogeneousBuffer.reserveCapacity(bytes:)(v3);
  }
}

uint64_t HeterogeneousBuffer.find<A>(_:)(uint64_t result, uint64_t a2, uint64_t a3, char a4, unsigned int a5)
{
  v5 = 0;
  LODWORD(v6) = 0;
  while (1)
  {
    v6 = v6;
    if (v6 >= a5)
    {
      return v5 | (v6 << 32);
    }

    if (a4)
    {
      goto LABEL_19;
    }

    if (!a2)
    {
      goto LABEL_20;
    }

    if (a3 - a2 < v5)
    {
      break;
    }

    v7 = *(a2 + v5);
    if (v7 == result)
    {
      return v5 | (v6 << 32);
    }

    v8 = *(*(v7 - 8) + 72);
    if (v8 <= 8)
    {
      v8 = 8;
    }

    v9 = __OFADD__(v8, 8);
    v10 = v8 + 8;
    if (v9)
    {
      goto LABEL_16;
    }

    v9 = __OFADD__(v10, v5);
    v11 = v10 + v5;
    if (v9)
    {
      goto LABEL_17;
    }

    if (v11 > 0xFFFFFFFFLL)
    {
      goto LABEL_18;
    }

    v6 = v6 + 1;
    v5 = v11;
    if (v11 < 0)
    {
      __break(1u);
      return v5 | (v6 << 32);
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

Swift::Void __swiftcall HeterogeneousBuffer.reserveCapacity(bytes:)(Swift::Int bytes)
{
  if ((*(v1 + 16) & 1) == 0)
  {
    v5 = *v1;
    v6 = *(v1 + 8);
    if (*v1)
    {
      if (v6 - v5 > bytes)
      {
        return;
      }

      if (*(v1 + 17) == 1)
      {
        v3 = realloc(*v1, bytes);
        v4 = v3 + bytes;
        if (!v3)
        {
          v4 = 0;
        }

        goto LABEL_4;
      }
    }

    else
    {
      if (bytes < 0)
      {
        return;
      }

      if (*(v1 + 17))
      {
        goto LABEL_34;
      }
    }

    v9 = swift_slowAlloc();
    v10 = v9 + bytes;
    v18 = 0;
    v11 = *(v1 + 24);
    swift_beginAccess();
    if (!v11)
    {
      *v1 = v9;
      *(v1 + 8) = v10;
      *(v1 + 16) = 0;
      if (v5)
      {
LABEL_26:
        MEMORY[0x26D69EAB0](v5, -1, -1);
      }

      return;
    }

    LODWORD(v12) = 0;
    v13 = 0;
    v14 = v6 - v5;
    while (v5)
    {
      if (v14 < v13)
      {
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        break;
      }

      specialized project #1 <A>(move:) in HeterogeneousBuffer.reserveCapacity(bytes:)(*&v5[v13], v9, v10, &v18, v1, *&v5[v13]);
      v15 = *(*(*&v5[v13] - 8) + 72);
      if (v15 <= 8)
      {
        v15 = 8;
      }

      v16 = __OFADD__(v15, 8);
      v17 = v15 + 8;
      if (v16)
      {
        goto LABEL_29;
      }

      v16 = __OFADD__(v17, v13);
      v13 += v17;
      if (v16)
      {
        goto LABEL_30;
      }

      if (v13 > 0xFFFFFFFFLL)
      {
        goto LABEL_31;
      }

      if (v13 < 0)
      {
        goto LABEL_32;
      }

      LODWORD(v18) = v13;
      HIDWORD(v18) = v12 + 1;
      v12 = (v12 + 1);
      if (v12 >= v11)
      {
        *v1 = v9;
        *(v1 + 8) = v10;
        *(v1 + 16) = 0;
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
    return;
  }

  if ((bytes & 0x8000000000000000) == 0)
  {
    v3 = swift_slowAlloc();
    v4 = v3 + bytes;
LABEL_4:
    *v1 = v3;
    *(v1 + 8) = v4;
    *(v1 + 16) = 0;
  }
}

unint64_t specialized project #1 <A>(move:) in HeterogeneousBuffer.reserveCapacity(bytes:)(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4, uint64_t a5, uint64_t a6)
{
  result = swift_beginAccess();
  v12 = *a4;
  v13 = a3 - a2;
  if (a2)
  {
    v14 = a3 - a2;
  }

  else
  {
    v14 = 0;
  }

  if (v14 < v12)
  {
    __break(1u);
  }

  else
  {
    MetatypeMetadata = swift_getMetatypeMetadata();
    v16 = MetatypeMetadata;
    if (a2)
    {
      v17 = a2 + v14;
    }

    else
    {
      v17 = 0;
    }

    if (a2)
    {
      v18 = a2 + v12;
    }

    else
    {
      v18 = 0;
    }

    v19 = _sSw19assumingMemoryBound2toSryxGxm_tRi_zlF(MetatypeMetadata, v18, v17, MetatypeMetadata);
    v26 = a6;
    result = (*(*(v16 - 8) + 32))(v19, &v26, v16);
    if (!a2)
    {
      goto LABEL_16;
    }

    if (v13 >= v12 + 8)
    {
      v20 = *a5;
      v21 = *(a5 + 8);
      v22 = v12 | (a4[1] << 32);
      v23 = *(a5 + 24);
      LOBYTE(v26) = *(a5 + 16);
      HeterogeneousBuffer.valuePointer<A>(for:)(v22, v20, v21, v26, v23, a6);
      v24 = UnsafeMutableBufferPointer.init(start:count:)();
      return _sSw20moveInitializeMemory2as14fromContentsOfSryxGxm_ADtRi_zlF(a6, v24, v25, a2 + v12 + 8, a2 + v13, a6);
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

unint64_t _sSw20moveInitializeMemory2as14fromContentsOfSryxGxm_ADtRi_zlF(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a2)
  {
    return 0;
  }

  if (!a3)
  {
    return 0;
  }

  v6 = *(*(a6 - 8) + 72);
  v7 = a3 * v6;
  if ((a3 * v6) >> 64 == (a3 * v6) >> 63)
  {
    v8 = a4;
    v9 = a5 - a4;
    if (!a4)
    {
      v9 = 0;
    }

    if (v9 >= v7)
    {
      if (a4 < a2 || a2 + v7 <= a4)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        swift_arrayInitWithTakeBackToFront();
      }

      return v8;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t HeterogeneousBuffer.subscript.getter@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, unsigned int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v9 = HeterogeneousBuffer.valuePointer<A>(for:)(a1, a2, a3, a4 & 1, a5, a6);
  v10 = *(*(a6 - 8) + 16);

  return v10(a7, v9, a6);
}

uint64_t key path getter for HeterogeneousBuffer.subscript<A>(_:) : <A>HeterogeneousBufferA@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + a3 - 8);
  v6 = HeterogeneousBuffer.valuePointer<A>(for:)(*a2, *a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), v5);
  v7 = *(*(v5 - 8) + 16);

  return v7(a4, v6, v5);
}

uint64_t key path setter for HeterogeneousBuffer.subscript<A>(_:) : <A>HeterogeneousBufferA(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 8);
  v6 = HeterogeneousBuffer.valuePointer<A>(for:)(*a3, *a2, *(a2 + 8), *(a2 + 16), *(a2 + 24), v5);
  v7 = *(*(v5 - 8) + 24);

  return v7(v6, a1, v5);
}

uint64_t HeterogeneousBuffer.subscript.setter(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = HeterogeneousBuffer.valuePointer<A>(for:)(a2, *v3, *(v3 + 8), *(v3 + 16), *(v3 + 24), a3);
  v7 = *(*(a3 - 8) + 40);

  return v7(v6, a1, a3);
}

unint64_t HeterogeneousBuffer.valuePointerAs<A>(for:)(unint64_t a1, uint64_t a2, uint64_t a3, char a4, unsigned int a5, uint64_t a6)
{
  result = HeterogeneousBuffer.type(at:)(a1, a2, a3, a4 & 1, a5);
  if (result != a6)
  {
    return 0;
  }

  if (a5 <= HIDWORD(a1))
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a4)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (a2)
  {
    return a2 + a1 + 8;
  }

LABEL_9:
  __break(1u);
  return result;
}

unint64_t HeterogeneousBuffer.findValuePointerAs<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unsigned int a5, uint64_t a6)
{
  v7 = a4;
  v9 = HIDWORD(a4);
  result = HeterogeneousBuffer.find<A>(_:)(a6, a2, a3, a4 & 1, a5);
  if (result == v9 && HIDWORD(result) == a5)
  {
    return 0;
  }

  if (HIDWORD(result) >= a5)
  {
    __break(1u);
  }

  else if ((v7 & 1) == 0)
  {
    if (a2)
    {
      return a2 + result + 8;
    }

    goto LABEL_12;
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

void (*HeterogeneousBuffer.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
{
  v6 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x88uLL);
  }

  v8 = v7;
  *a1 = v7;
  *v7 = a3;
  v7[1] = v3;
  v9 = *(a3 - 8);
  v10 = v9;
  v7[2] = v9;
  v11 = *(v9 + 64);
  if (v6)
  {
    v7[3] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v7[3] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v8[4] = v12;
  v13 = type metadata accessor for Optional();
  v8[5] = v13;
  v14 = *(v13 - 8);
  v8[6] = v14;
  v15 = *(v14 + 64);
  if (v6)
  {
    v8[7] = swift_coroFrameAlloc();
    v8[8] = swift_coroFrameAlloc();
    v8[9] = swift_coroFrameAlloc();
    v8[10] = swift_coroFrameAlloc();
    v8[11] = swift_coroFrameAlloc();
    v16 = swift_coroFrameAlloc();
  }

  else
  {
    v8[7] = malloc(*(v14 + 64));
    v8[8] = malloc(v15);
    v8[9] = malloc(v15);
    v8[10] = malloc(v15);
    v8[11] = malloc(v15);
    v16 = malloc(v15);
  }

  v17 = v16;
  v8[12] = v16;
  v18 = *v3;
  v8[13] = *v3;
  v19 = *(v3 + 8);
  v8[14] = v19;
  v20 = *(v3 + 16);
  *(v8 + 128) = v20;
  v21 = *(v3 + 17);
  *(v8 + 129) = v21;
  v22 = *(v3 + 20);
  *(v8 + 30) = v22;
  v23 = *(v3 + 24);
  *(v8 + 31) = v23;
  v24 = v21 == 0;
  v25 = 256;
  if (v24)
  {
    v25 = 0;
  }

  v26 = HeterogeneousBuffer.findValuePointerAs<A>(_:)(v16, v18, v19, v25 | (v22 << 32) | v20, v23, a3);
  if (v26)
  {
    (*(v10 + 16))(v17, v26, a3);
    v27 = 0;
  }

  else
  {
    v27 = 1;
  }

  (*(v10 + 56))(v17, v27, 1, a3);
  return HeterogeneousBuffer.subscript.modify;
}

void HeterogeneousBuffer.subscript.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 30);
  v4 = *(*a1 + 31);
  v5 = *(*a1 + 129);
  v6 = *(*a1 + 128);
  v8 = (*a1)[13];
  v7 = (*a1)[14];
  if ((a2 & 1) == 0)
  {
    v24 = v2[6];
    v25 = v2[2];
    v11 = v5 == 0;
    v26 = 256;
    if (v11)
    {
      v26 = 0;
    }

    v27 = HeterogeneousBuffer.findValuePointerAs<A>(_:)(a1, v8, v7, v26 | (v3 << 32) | *(*a1 + 128), v4, *v2);
    v28 = *(v24 + 16);
    v29 = (v25 + 48);
    v30 = v2[12];
    v31 = v2[5];
    v32 = *v2;
    if (v27)
    {
      v33 = v27;
      v34 = v2[11];
      v28(v34, v30, v31);
      if ((*v29)(v34, 1, v32) == 1)
      {
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      (*(v2[2] + 40))(v33, v2[11], *v2);
    }

    else
    {
      v50 = v2[10];
      v28(v50, v30, v31);
      v51 = (*v29)(v50, 1, v32);
      v23 = v2[10];
      if (v51 == 1)
      {
        goto LABEL_25;
      }

      v52 = v2[4];
      v53 = v2[2];
      v54 = *v2;
      (*(v53 + 32))(v52, v23, *v2);
      HeterogeneousBuffer.insert<A>(_:)(v52, v54);
      (*(v53 + 8))(v52, v54);
    }

    v48 = v2[11];
    v40 = v2[12];
    v41 = v2[9];
    v49 = v2[10];
    v43 = v2[7];
    v42 = v2[8];
    v46 = v2[3];
    v45 = v2[4];
    (*(v2[6] + 8))(v40, v2[5]);
    goto LABEL_20;
  }

  v9 = v2[2];
  v10 = *v2;
  v11 = v5 == 0;
  v12 = 256;
  if (v11)
  {
    v12 = 0;
  }

  v13 = v12 | (v3 << 32);
  v14 = *(v2[6] + 16);
  v15 = v14(v2[9], v2[12], v2[5]);
  v16 = HeterogeneousBuffer.findValuePointerAs<A>(_:)(v15, v8, v7, v13 | v6, v4, v10);
  v17 = (v9 + 48);
  v18 = v2[9];
  v19 = v2[5];
  v20 = *v2;
  if (!v16)
  {
    v35 = v2[7];
    v14(v35, v18, v19);
    v36 = (*v17)(v35, 1, v20);
    v23 = v2[7];
    if (v36 != 1)
    {
      v38 = v2[2];
      v37 = v2[3];
      v39 = *v2;
      (*(v38 + 32))(v37, v23, *v2);
      HeterogeneousBuffer.insert<A>(_:)(v37, v39);
      (*(v38 + 8))(v37, v39);
      goto LABEL_16;
    }

LABEL_25:
    (*(v2[6] + 8))(v23, v2[5]);
    _StringGuts.grow(_:)(114);
    MEMORY[0x26D69CDB0](0xD000000000000038, 0x800000026C33C090);
    v55 = _typeName(_:qualified:)();
    MEMORY[0x26D69CDB0](v55);

    MEMORY[0x26D69CDB0](0xD000000000000038, 0x800000026C33C0D0);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v21 = v16;
  v22 = v2[8];
  v14(v22, v18, v19);
  if ((*v17)(v22, 1, v20) == 1)
  {
    __break(1u);
    goto LABEL_24;
  }

  (*(v2[2] + 40))(v21, v2[8], *v2);
LABEL_16:
  v40 = v2[12];
  v41 = v2[9];
  v56 = v2[10];
  v57 = v2[11];
  v43 = v2[7];
  v42 = v2[8];
  v44 = v2[5];
  v46 = v2[3];
  v45 = v2[4];
  v47 = *(v2[6] + 8);
  v47(v41, v44);
  v47(v40, v44);
  v49 = v56;
  v48 = v57;
LABEL_20:
  free(v40);
  free(v48);
  free(v49);
  free(v41);
  free(v42);
  free(v43);
  free(v45);
  free(v46);

  free(v2);
}

void (*HeterogeneousBuffer.subscript.read(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, unsigned int a6, uint64_t a7))()
{
  v11 = a5 & 1;
  v12 = HeterogeneousBuffer.find<A>(_:)(a7, a3, a4, a5 & 1, a6);
  HeterogeneousBuffer.valuePointer<A>(for:)(v12, a3, a4, v11, a6, a7);
  return EventTreeStats.count.modify;
}

{
  v10 = a5 & 1;
  v11 = HeterogeneousBuffer.find<A>(_:)(a2, a3, a4, a5 & 1, a6);
  MetatypeMetadata = swift_getMetatypeMetadata();
  HeterogeneousBuffer.valuePointer<A>(for:)(v11, a3, a4, v10, a6, MetatypeMetadata);
  return EventTreeStats.count.modify;
}

void (*HeterogeneousBuffer.subscript.modify(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v5 = *v3;
  v6 = *(v3 + 8);
  v8 = *(v3 + 24);
  v7 = *(v3 + 16);
  v9 = HeterogeneousBuffer.find<A>(_:)(a3, *v3, v6, v7, v8);
  HeterogeneousBuffer.valuePointer<A>(for:)(v9, v5, v6, v7, v8, a3);
  return EventTreeStats.count.modify;
}

uint64_t HeterogeneousBuffer.subscript.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char a3@<W3>, unsigned int a4@<W4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v11 = a3 & 1;
  v12 = HeterogeneousBuffer.find<A>(_:)(a5, a1, a2, a3 & 1, a4);
  v13 = HeterogeneousBuffer.valuePointer<A>(for:)(v12, a1, a2, v11, a4, a5);
  v14 = *(*(a5 - 8) + 16);

  return v14(a6, v13, a5);
}

uint64_t HeterogeneousBuffer.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, unsigned int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = a3 & 1;
  v12 = HeterogeneousBuffer.find<A>(_:)(a5, a1, a2, a3 & 1, a4);
  v13 = HeterogeneousBuffer.valuePointer<A>(for:)(v12, a1, a2, v11, a4, a5);
  v14 = *(*(a5 - 8) + 16);

  return v14(a6, v13, a5);
}

uint64_t key path getter for HeterogeneousBuffer.subscript<A>() : <A>HeterogeneousBufferA@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a2 + a3 - 8);
  v6 = *a1;
  v7 = *(a1 + 8);
  v9 = *(a1 + 24);
  v8 = *(a1 + 16);
  v10 = HeterogeneousBuffer.find<A>(_:)(v5, *a1, v7, v8, v9);
  v11 = HeterogeneousBuffer.valuePointer<A>(for:)(v10, v6, v7, v8, v9, v5);
  v12 = *(*(v5 - 8) + 16);

  return v12(a4, v11, v5);
}

uint64_t key path setter for HeterogeneousBuffer.subscript<A>() : <A>HeterogeneousBufferA(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 8);
  v6 = *a2;
  v7 = *(a2 + 8);
  v9 = *(a2 + 24);
  v8 = *(a2 + 16);
  v10 = HeterogeneousBuffer.find<A>(_:)(v5, *a2, v7, v8, v9);
  v11 = HeterogeneousBuffer.valuePointer<A>(for:)(v10, v6, v7, v8, v9, v5);
  v12 = *(*(v5 - 8) + 24);

  return v12(v11, a1, v5);
}

uint64_t HeterogeneousBuffer.subscript.setter(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(v2 + 8);
  v8 = *(v2 + 24);
  v7 = *(v2 + 16);
  v9 = HeterogeneousBuffer.find<A>(_:)(a2, *v2, v6, v7, v8);
  v10 = HeterogeneousBuffer.valuePointer<A>(for:)(v9, v5, v6, v7, v8, a2);
  v11 = *(*(a2 - 8) + 40);

  return v11(v10, a1, a2);
}

unint64_t HeterogeneousBuffer.valuePointer(for:)(unint64_t result, uint64_t a2, uint64_t a3, char a4, unsigned int a5)
{
  if (a5 <= HIDWORD(result))
  {
    __break(1u);
    goto LABEL_6;
  }

  if (a4)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (a2)
  {
    return a2 + result + 8;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t (*HeterogeneousBuffer.subscript.modify(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  v7 = v6;
  *a1 = v6;
  v8 = HeterogeneousBuffer.find<A>(_:)(a2, *v3, *(v3 + 8), *(v3 + 16), *(v3 + 24));
  MetatypeMetadata = swift_getMetatypeMetadata();
  *(v7 + 32) = HeterogeneousBuffer.subscript.modify(v7, v8, MetatypeMetadata);
  return UnsafeTree.storage.modify;
}

uint64_t HeterogeneousBuffer.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, char a4, unsigned int a5, uint64_t a6)
{
  v9 = a4 & 1;
  v10 = HeterogeneousBuffer.find<A>(_:)(a1, a2, a3, a4 & 1, a5);
  MetatypeMetadata = swift_getMetatypeMetadata();
  return *HeterogeneousBuffer.valuePointer<A>(for:)(v10, a2, a3, v9, a5, MetatypeMetadata);
}

void *HeterogeneousBuffer.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = *(v3 + 8);
  v8 = *(v3 + 24);
  v7 = *(v3 + 16);
  v9 = HeterogeneousBuffer.find<A>(_:)(a2, *v3, v6, v7, v8);
  MetatypeMetadata = swift_getMetatypeMetadata();
  result = HeterogeneousBuffer.valuePointer<A>(for:)(v9, v5, v6, v7, v8, MetatypeMetadata);
  *result = a1;
  return result;
}

unint64_t projectDeinit #1 <A>(_:) in HeterogeneousBuffer.deallocate()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 256;
  if (!*(a2 + 17))
  {
    v3 = 0;
  }

  result = HeterogeneousBuffer.findValuePointerAs<A>(_:)(a1, *a2, *(a2 + 8), v3 | (*(a2 + 20) << 32) | *(a2 + 16), *(a2 + 24), a3);
  if (result)
  {

    return UnsafeMutablePointer.deinitialize(count:)();
  }

  return result;
}

uint64_t specialized projectCopy #1 <A>(_:) in HeterogeneousBuffer.copy()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = *(v8 + 16);
  v12 = *(v8 + 24);
  v17 = v11;
  v13 = HeterogeneousBuffer.find<A>(_:)(a4, v9, v10, v11, v12);
  v17 = v11;
  v14 = HeterogeneousBuffer.valuePointer<A>(for:)(v13, v9, v10, v11, v12, a4);
  (*(v5 + 16))(v7, v14, a4);
  swift_beginAccess();
  HeterogeneousBuffer.insert<A>(_:)(v7, a4);
  swift_endAccess();
  return (*(v5 + 8))(v7, a4);
}

uint64_t projectClone #1 <A>(_:) in HeterogeneousBuffer.copy()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  v9 = *(a2 + 24);
  v8 = *(a2 + 16);
  v10 = HeterogeneousBuffer.find<A>(_:)(a3, *a2, v7, v8, v9);
  HeterogeneousBuffer.valuePointer<A>(for:)(v10, v6, v7, v8, v9, a3);
  return (*(a4 + 8))(a3, a4);
}

__int128 *HeterogeneousBuffer.describe(state:)(__int128 *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = result[1];
  v19 = *result;
  v20[0] = v5;
  *(v20 + 10) = *(result + 26);
  if (a4)
  {
    return 0;
  }

  v6 = a5;
  v9 = 0;
  v10 = 0;
  v18[0] = 40;
  v18[1] = 0xE100000000000000;
  v11 = a3 - a2;
  v12 = a4 & 0xFFFFFFFF00000100;
  v13 = a5;
  while (1)
  {
    v14 = v10;
    if (v10 >= v13)
    {
      goto LABEL_14;
    }

    if (!a2)
    {
      goto LABEL_20;
    }

    if (v11 < v9)
    {
      break;
    }

    result = specialized project #1 <A>(_:) in HeterogeneousBuffer.describe(state:)(*(a2 + v9), a2, a3, v12, v6, v18, &v19, *(a2 + v9));
    v15 = *(*(*(a2 + v9) - 8) + 72);
    if (v15 <= 8)
    {
      v15 = 8;
    }

    v16 = __OFADD__(v15, 8);
    v17 = v15 + 8;
    if (v16)
    {
      goto LABEL_17;
    }

    v16 = __OFADD__(v17, v9);
    v9 += v17;
    if (v16)
    {
      goto LABEL_18;
    }

    if (v9 > 0xFFFFFFFFLL)
    {
      goto LABEL_19;
    }

    v10 = v14 + 1;
    if (v9 < 0)
    {
      __break(1u);
LABEL_14:
      swift_beginAccess();
      MEMORY[0x26D69CDB0](41, 0xE100000000000000);
      swift_endAccess();
      return v18[0];
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t specialized project #1 <A>(_:) in HeterogeneousBuffer.describe(state:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, _OWORD *a7, uint64_t a8)
{
  v37 = a7;
  v12 = *(a8 - 8);
  v13 = MEMORY[0x28223BE20](a1);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v36 - v16;
  v19 = v18 & 1;
  v38[0] = v18 & 1;
  v24 = HeterogeneousBuffer.find<A>(_:)(v23, v20, v21, v18 & 1, v22);
  v38[0] = v19;
  v25 = HeterogeneousBuffer.valuePointer<A>(for:)(v24, a2, a3, v19, a5, a8);
  v26 = *(v12 + 16);
  v26(v17, v25, a8);
  swift_beginAccess();
  MEMORY[0x26D69CDB0](40, 0xE100000000000000);
  swift_endAccess();
  *v38 = a8;
  swift_getMetatypeMetadata();
  *v38 = String.init<A>(describing:)();
  *&v38[8] = v27;
  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  v28 = *v38;
  swift_beginAccess();
  MEMORY[0x26D69CDB0](v28, *(&v28 + 1));
  swift_endAccess();

  v26(v15, v17, a8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport11Inspectable_pMd, &_s21SwiftUITracingSupport11Inspectable_pMR);
  if (swift_dynamicCast())
  {
    outlined init with take of Inspectable(v38, v39);
    v29 = v40;
    v30 = v41;
    __swift_project_boxed_opaque_existential_1(v39, v40);
    v31 = v37[1];
    *v38 = *v37;
    *&v38[16] = v31;
    *&v38[26] = *(v37 + 26);
    v32 = (*(v30 + 32))(v38, v29, v30);
    v34 = v33;
    swift_beginAccess();
    MEMORY[0x26D69CDB0](v32, v34);
    swift_endAccess();

    __swift_destroy_boxed_opaque_existential_1(v39);
  }

  else
  {
    memset(v38, 0, 40);
    outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v38, &_s21SwiftUITracingSupport11Inspectable_pSgMd, &_s21SwiftUITracingSupport11Inspectable_pSgMR);
  }

  swift_beginAccess();
  MEMORY[0x26D69CDB0](2601, 0xE200000000000000);
  swift_endAccess();
  return (*(v12 + 8))(v17, a8);
}

__int128 *protocol witness for Inspectable.description(depth:mode:context:) in conformance HeterogeneousBuffer(uint64_t a1, char *a2, uint64_t *a3)
{
  v4 = *a2;
  v5 = *a3;
  v6 = *(a3 + 4);
  v7 = *v3;
  v8 = *(v3 + 8);
  v9 = *(v3 + 16);
  v10 = *(v3 + 17);
  v12 = *(v3 + 20);
  v11 = *(v3 + 24);
  *&v15 = a1;
  *(&v15 + 1) = 1;
  v16 = v4;
  v17 = 0;
  v18 = v5;
  v19 = v6;
  v13 = 256;
  if (!v10)
  {
    v13 = 0;
  }

  return HeterogeneousBuffer.describe(state:)(&v15, v7, v8, v13 | (v12 << 32) | v9, v11);
}

__int128 *protocol witness for Inspectable.describe(state:) in conformance HeterogeneousBuffer(__int128 *a1)
{
  v2 = 256;
  if (!*(v1 + 17))
  {
    v2 = 0;
  }

  return HeterogeneousBuffer.describe(state:)(a1, *v1, *(v1 + 8), v2 | (*(v1 + 20) << 32) | *(v1 + 16), *(v1 + 24));
}

uint64_t Dictionary<>.describe(state:)(__int128 *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v83 = a7;
  v82 = a6;
  v8 = a4;
  v77 = *(a4 - 8);
  v12 = MEMORY[0x28223BE20](a1);
  v14 = v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v90 = v75 - v16;
  v76 = *(v17 - 8);
  v18 = MEMORY[0x28223BE20](v15);
  v97 = v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = v75 - v20;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v88 = type metadata accessor for Optional();
  v22 = *(v88 - 8);
  v23 = MEMORY[0x28223BE20](v88);
  v89 = v75 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v87 = v75 - v25;
  v26 = a1[1];
  v104 = *a1;
  *v105 = v26;
  *&v105[10] = *(a1 + 26);
  if (!MEMORY[0x26D69C9D0](a2, a3, v8, a5))
  {
    return 23899;
  }

  v102 = 2651;
  v103 = 0xE200000000000000;
  v78 = v21;
  if ((a2 & 0xC000000000000001) != 0)
  {
    v27 = __CocoaDictionary.makeIterator()();
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v91 = v27 | 0x8000000000000000;
  }

  else
  {
    v32 = -1 << *(a2 + 32);
    v29 = ~v32;
    v28 = a2 + 64;
    v33 = -v32;
    if (v33 < 64)
    {
      v34 = ~(-1 << v33);
    }

    else
    {
      v34 = -1;
    }

    v30 = v34 & *(a2 + 64);
    v91 = a2;
  }

  v35 = v90;
  v36 = TupleTypeMetadata2;
  v94 = (v76 + 32);
  v93 = (v77 + 32);
  v85 = TupleTypeMetadata2 - 8;
  v75[1] = v29;
  v37 = (v29 + 64) >> 6;
  v75[3] = v76 + 16;
  v75[2] = v77 + 16;
  v84 = (v22 + 32);
  v81 = (v77 + 8);
  v80 = (v76 + 8);

  v38 = 0;
  for (i = v28; ; v28 = i)
  {
    v92 = v30;
    if ((v91 & 0x8000000000000000) == 0)
    {
      break;
    }

    if (__CocoaDictionary.Iterator.next()())
    {
      v46 = v78;
      _forceBridgeFromObjectiveC<A>(_:_:)();
      swift_unknownObjectRelease();
      _forceBridgeFromObjectiveC<A>(_:_:)();
      swift_unknownObjectRelease();
      v41 = v38;
      v96 = v92;
      goto LABEL_24;
    }

    v51 = 1;
    v95 = v38;
    v96 = v92;
LABEL_27:
    v49 = v89;
LABEL_28:
    v52 = *(v36 - 8);
    (*(v52 + 56))(v49, v51, 1, v36);
    v53 = v87;
    (*v84)(v87, v49, v88);
    if ((*(v52 + 48))(v53, 1, v36) == 1)
    {
      outlined consume of Set<AGSubgraphRef>.Iterator._Variant(v91);
      MEMORY[0x26D69CDB0](93, 0xE100000000000000);
      return v102;
    }

    v54 = *(v36 + 48);
    v55 = v97;
    (*v94)(v97, v53, a3);
    (*v93)(v14, &v53[v54], v8);
    v98 = v104;
    v99 = 2;
    v100 = *&v105[8];
    v101 = *&v105[24];
    v56 = a3;
    v60 = InspectionState.describe<A>(_:)(v55, a3, v82, v57, v58, v59);
    v62 = v61;
    v63 = v8;
    v64 = v14;
    v65 = v63;
    v69 = InspectionState.describe<A>(_:)(v14, v63, v83, v66, v67, v68);
    v71 = v70;
    *&v98 = 40;
    *(&v98 + 1) = 0xE100000000000000;
    MEMORY[0x26D69CDB0](v60, v62);
    MEMORY[0x26D69CDB0](32, 0xE100000000000000);
    v72 = specialized InspectionState.wrapDescription<A>(_:)(v69, v71);
    MEMORY[0x26D69CDB0](v72);

    MEMORY[0x26D69CDB0](8233, 0xE200000000000000);
    v74 = *(&v98 + 1);
    v73 = v98;
    if (String.count.getter() < 51)
    {
    }

    else
    {
      *&v98 = 2105354;
      *(&v98 + 1) = 0xE300000000000000;
      MEMORY[0x26D69CDB0](v73, v74);

      v74 = *(&v98 + 1);
      v73 = v98;
    }

    MEMORY[0x26D69CDB0](v73, v74);

    MEMORY[0x26D69CDB0](10, 0xE100000000000000);
    v14 = v64;
    v39 = v64;
    v8 = v65;
    (*v81)(v39, v65);
    a3 = v56;
    result = (*v80)(v97, v56);
    v38 = v95;
    v30 = v96;
    v35 = v90;
  }

  v40 = v30;
  v41 = v38;
  if (v30)
  {
LABEL_21:
    v96 = (v40 - 1) & v40;
    v45 = __clz(__rbit64(v40)) | (v41 << 6);
    v46 = v78;
    v47 = v91;
    (*(v76 + 16))(v78, *(v91 + 48) + *(v76 + 72) * v45, a3);
    (*(v77 + 16))(v35, *(v47 + 56) + *(v77 + 72) * v45, v8);
LABEL_24:
    v48 = *(TupleTypeMetadata2 + 48);
    v49 = v89;
    v50 = v46;
    v36 = TupleTypeMetadata2;
    (*v94)(v89, v50, a3);
    (*v93)(&v49[v48], v35, v8);
    v51 = 0;
    v95 = v41;
    goto LABEL_28;
  }

  if (v37 <= v38 + 1)
  {
    v42 = v38 + 1;
  }

  else
  {
    v42 = v37;
  }

  v43 = v42 - 1;
  v44 = v38;
  while (1)
  {
    v41 = v44 + 1;
    if (__OFADD__(v44, 1))
    {
      break;
    }

    if (v41 >= v37)
    {
      v95 = v43;
      v96 = 0;
      v51 = 1;
      goto LABEL_27;
    }

    v40 = *(v28 + 8 * v41);
    ++v44;
    if (v40)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
  return result;
}

uint64_t Dictionary.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  specialized Dictionary.subscript.setter(a1, a2, a5);
  (*(*(*(a5 + 16) - 8) + 8))(a2);
  v8 = *(*(*(a5 + 24) - 8) + 8);

  return v8(a1);
}

void (*Dictionary.subscript.modify(void *a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5))(uint64_t **a1, char a2)
{
  v10 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(0x48uLL);
  }

  v12 = v11;
  *a1 = v11;
  *v11 = a5;
  v11[1] = v5;
  v13 = *(a5 + 24);
  v11[2] = v13;
  v14 = *(v13 - 8);
  v11[3] = v14;
  v15 = *(v14 + 64);
  if (v10)
  {
    v11[4] = swift_coroFrameAlloc();
    v16 = swift_coroFrameAlloc();
  }

  else
  {
    v11[4] = malloc(v15);
    v16 = malloc(v15);
  }

  v17 = v16;
  v12[5] = v16;
  v18 = *(a5 + 16);
  v12[6] = v18;
  v19 = *(v18 - 8);
  v20 = v19;
  v12[7] = v19;
  if (v10)
  {
    v21 = swift_coroFrameAlloc();
  }

  else
  {
    v21 = malloc(*(v19 + 64));
  }

  v12[8] = v21;
  (*(v20 + 16))();
  Dictionary.subscript.getter(a2, a3, a4, a5, v17);
  return Dictionary.subscript.modify;
}

void Dictionary.subscript.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[7];
  v3 = (*a1)[8];
  v5 = (*a1)[5];
  v6 = (*a1)[6];
  v8 = (*a1)[3];
  v7 = (*a1)[4];
  v9 = (*a1)[2];
  v10 = **a1;
  if (a2)
  {
    (*(v8 + 16))((*a1)[4], v5, v9);
    specialized Dictionary.subscript.setter(v7, v3, v10);
    (*(v4 + 8))(v3, v6);
    v11 = *(v8 + 8);
    v11(v7, v9);
    v11(v5, v9);
  }

  else
  {
    specialized Dictionary.subscript.setter((*a1)[5], v3, v10);
    (*(v4 + 8))(v3, v6);
    (*(v8 + 8))(v5, v9);
  }

  free(v3);
  free(v5);
  free(v7);

  free(v2);
}

Swift::Bool __swiftcall Dictionary.contains(keys:)(Swift::OpaquePointer keys)
{
  v19 = v1;
  v20 = v3;
  v4 = v2;
  v6 = *(v2 - 8);
  MEMORY[0x28223BE20](keys._rawValue);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 0;
  v21 = (v6 + 16);
  v17 = v7;
  v18 = (v6 + 8);
  while (1)
  {
    v10 = v9;
    v11 = MEMORY[0x26D69D060](keys._rawValue, v4);
    if (v10 == v11)
    {
      goto LABEL_11;
    }

    IsNativeType = Array._hoistableIsNativeTypeChecked()();
    Array._checkSubscript(_:wasNativeTypeChecked:)();
    if (IsNativeType)
    {
      (*(v6 + 16))(v8, keys._rawValue + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v10, v4);
      if (__OFADD__(v10, 1))
      {
        goto LABEL_10;
      }

      goto LABEL_5;
    }

    v15 = _ArrayBuffer._getElementSlowPath(_:)();
    if (v17 != 8)
    {
      break;
    }

    v22 = v15;
    (*v21)(v8, &v22, v4);
    swift_unknownObjectRelease();
    if (__OFADD__(v10, 1))
    {
LABEL_10:
      __break(1u);
LABEL_11:
      LOBYTE(v15) = v10 == v11;
      return v15;
    }

LABEL_5:
    EventTreeStats.count.modify();
    v22 = v13;
    type metadata accessor for Dictionary.Keys();

    swift_getWitnessTable();
    v14 = Sequence<>.contains(_:)();
    (*v18)(v8, v4);

    v9 = v10 + 1;
    if ((v14 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return v15;
}

SwiftUITracingSupport::ValueCompressor __swiftcall ValueCompressor.init(values:offset:)(Swift::OpaquePointer values, Swift::Int offset)
{
  v4 = v2;
  v5 = *(values._rawValue + 2);
  if (v5)
  {
    *&v17 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
    rawValue = values._rawValue;
    v8 = v17;
    v9 = *(v17 + 16);
    v10 = 32;
    do
    {
      v11 = *&rawValue[v10];
      *&v17 = v8;
      v12 = *(v8 + 24);
      if (v9 >= v12 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v9 + 1, 1);
        rawValue = values._rawValue;
        v8 = v17;
      }

      *(v8 + 16) = v9 + 1;
      *(v8 + 8 * v9 + 32) = v11;
      v10 += 8;
      ++v9;
      --v5;
    }

    while (v5);
  }

  else
  {

    v8 = MEMORY[0x277D84F90];
  }

  v13 = _s21SwiftUITracingSupport15ValueCompressorV6values6offsetACSayxG_SitcSzRzlufCs6UInt64V_Tt2g5(v8, offset, &v17);
  v16 = v18;
  *v4 = v17;
  *(v4 + 16) = v16;
  result.b = v15;
  result.x = v14;
  result.gcd = v13;
  return result;
}

uint64_t _s21SwiftUITracingSupport15ValueCompressorV6values6offsetACSayxG_SitcSzRzlufCs6UInt64V_Tt2g5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *(a1 + 16);
  if (!v4)
  {

    a2 = 0;
    v13 = 0;
    v15 = 1;
LABEL_35:
    *a3 = v15;
    a3[1] = v13;
    a3[2] = a2;
    return result;
  }

  v41 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
  result = a1;
  v8 = 32;
  v9 = v41;
  do
  {
    v10 = *(result + v8);
    if (v10 < 0)
    {
      goto LABEL_38;
    }

    v12 = v41[1].u64[0];
    v11 = v41[1].u64[1];
    if (v12 >= v11 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
      result = a1;
    }

    v41[1].i64[0] = v12 + 1;
    v41[2].i64[v12] = v10;
    v8 += 8;
    --v4;
  }

  while (v4);
  v13 = v41[2].i64[0];
  if (v12 <= 2)
  {
    v14 = 0;
    goto LABEL_13;
  }

  v14 = (v12 + 1) & 0x7FFFFFFFFFFFFFFCLL;
  v16 = vdupq_n_s64(v13);
  v17 = v41 + 3;
  v18 = v14;
  v19 = v16;
  do
  {
    v16 = vbslq_s8(vcgtq_s64(v16, v17[-1]), v17[-1], v16);
    v19 = vbslq_s8(vcgtq_s64(v19, *v17), *v17, v19);
    v17 += 2;
    v18 -= 4;
  }

  while (v18);
  v20 = vbslq_s8(vcgtq_s64(v19, v16), v16, v19);
  v21 = vextq_s8(v20, v20, 8uLL).u64[0];
  v13 = vbsl_s8(vcgtd_s64(v21, v20.i64[0]), *v20.i8, v21);
  if (v12 + 1 != v14)
  {
LABEL_13:
    v22 = v12 - v14 + 1;
    v23 = &v41[2].i64[v14];
    do
    {
      v25 = *v23++;
      v24 = v25;
      if (v25 < v13)
      {
        v13 = v24;
      }

      --v22;
    }

    while (v22);
  }

  v26 = v41[1].i64[0];
  if (!v26)
  {

    v28 = MEMORY[0x277D84F90];
    v33 = *(MEMORY[0x277D84F90] + 16);
    if (v33)
    {
LABEL_24:
      v34 = 0;
      v15 = *(v28 + 32);
      do
      {
LABEL_25:
        if (v33 == v34)
        {

          goto LABEL_35;
        }

        if (v34 >= v33)
        {
          goto LABEL_39;
        }

        v35 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          goto LABEL_40;
        }

        v36 = *(v28 + 8 * v34++ + 32);
      }

      while (v36 < 1);
      v34 = v35;
      while (1)
      {
        v37 = v36;
        v38 = v15 / v36;
        v39 = v15 / v36 * v36;
        if ((v38 * v37) >> 64 != v39 >> 63)
        {
          break;
        }

        v40 = __OFSUB__(v15, v39);
        v36 = v15 - v39;
        if (v40)
        {
          goto LABEL_42;
        }

        v15 = v37;
        if (v36 <= 0)
        {
          v15 = v37;
          goto LABEL_25;
        }
      }
    }

    else
    {
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
    }

    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v42 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v26, 0);
  v27 = 4;
  v28 = v42;
  while (1)
  {
    v29 = v9->i64[v27];
    v30 = v29 - v13;
    if (__OFSUB__(v29, v13))
    {
      break;
    }

    v32 = *(v42 + 16);
    v31 = *(v42 + 24);
    if (v32 >= v31 >> 1)
    {
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1);
    }

    *(v42 + 16) = v32 + 1;
    *(v42 + 8 * v32 + 32) = v30;
    ++v27;
    if (!--v26)
    {

      v33 = *(v42 + 16);
      if (!v33)
      {
        goto LABEL_37;
      }

      goto LABEL_24;
    }
  }

LABEL_43:
  __break(1u);
  return result;
}

int64x2_t *ValueCompressor.init<A>(values:offset:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v47 = a1;
  v10 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  v12 = Collection.isEmpty.getter();
  if (v12)
  {
    a2 = 0;
    v13 = 0;
    v14 = 1;
LABEL_3:

    *a5 = v14;
    a5[1] = v13;
    a5[2] = a2;
    return result;
  }

  v47 = a1;
  MEMORY[0x28223BE20](v12);
  v45[2] = a3;
  v45[3] = a4;
  result = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in ValueCompressor.init<A>(values:offset:), v45, v10, MEMORY[0x277D83B88], MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v16);
  v17 = result[1].u64[0];
  if (v17)
  {
    v18 = result;
    v13 = result[2].i64[0];
    if (v17 > 3)
    {
      v19 = v17 & 0x7FFFFFFFFFFFFFFCLL;
      v20 = vdupq_n_s64(v13);
      v21 = result + 3;
      v22 = v17 & 0x7FFFFFFFFFFFFFFCLL;
      v23 = v20;
      do
      {
        v20 = vbslq_s8(vcgtq_s64(v20, v21[-1]), v21[-1], v20);
        v23 = vbslq_s8(vcgtq_s64(v23, *v21), *v21, v23);
        v21 += 2;
        v22 -= 4;
      }

      while (v22);
      v24 = vbslq_s8(vcgtq_s64(v23, v20), v20, v23);
      v25 = vextq_s8(v24, v24, 8uLL).u64[0];
      v13 = vbsl_s8(vcgtd_s64(v25, v24.i64[0]), *v24.i8, v25);
      if (v17 == v19)
      {
LABEL_14:

        v30 = *(v18 + 16);
        if (v30)
        {
          v46 = a2;
          v47 = MEMORY[0x277D84F90];
          result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v30, 0);
          v31 = 32;
          v32 = v47;
          while (1)
          {
            v33 = *(v18 + v31);
            v34 = v33 - v13;
            if (__OFSUB__(v33, v13))
            {
              break;
            }

            v47 = v32;
            v36 = v32[2];
            v35 = v32[3];
            if (v36 >= v35 >> 1)
            {
              result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1);
              v32 = v47;
            }

            v32[2] = v36 + 1;
            v32[v36 + 4] = v34;
            v31 += 8;
            if (!--v30)
            {

              a2 = v46;
              v37 = v32[2];
              if (!v37)
              {
                goto LABEL_32;
              }

              goto LABEL_21;
            }
          }
        }

        else
        {

          v32 = MEMORY[0x277D84F90];
          v37 = *(MEMORY[0x277D84F90] + 16);
          if (v37)
          {
LABEL_21:
            v38 = 0;
            v14 = v32[4];
LABEL_22:
            while (v37 != v38)
            {
              if (v38 >= v37)
              {
                goto LABEL_33;
              }

              v39 = v38 + 1;
              if (__OFADD__(v38, 1))
              {
                goto LABEL_34;
              }

              v40 = v32[v38++ + 4];
              if (v40 >= 1)
              {
                v38 = v39;
                while (1)
                {
                  v41 = v40;
                  v42 = v14 / v40;
                  v43 = v14 / v40 * v40;
                  if ((v42 * v41) >> 64 != v43 >> 63)
                  {
                    goto LABEL_35;
                  }

                  v44 = __OFSUB__(v14, v43);
                  v40 = v14 - v43;
                  if (v44)
                  {
                    goto LABEL_36;
                  }

                  v14 = v41;
                  if (v40 <= 0)
                  {
                    v14 = v41;
                    goto LABEL_22;
                  }
                }
              }
            }

            goto LABEL_3;
          }

LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
        }

        __break(1u);
        goto LABEL_38;
      }
    }

    else
    {
      v19 = 0;
    }

    v26 = v17 - v19;
    v27 = &result[2].i64[v19];
    do
    {
      v29 = *v27++;
      v28 = v29;
      if (v29 < v13)
      {
        v13 = v28;
      }

      --v26;
    }

    while (v26);
    goto LABEL_14;
  }

LABEL_38:
  __break(1u);
  return result;
}

uint64_t closure #1 in ValueCompressor.init<A>(values:offset:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a4@<X8>)
{
  v24 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v8 = *(a2 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v22[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v13 = &v22[-v12];
  (*(v8 + 16))(&v22[-v12], a1, a2);
  if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() > 64)
  {
    v25 = 0x8000000000000000;
    if (dispatch thunk of static BinaryInteger.isSigned.getter())
    {
      if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
      {
        goto LABEL_13;
      }

      goto LABEL_8;
    }

    v23 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v14 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v23)
    {
      if (v14 > 64)
      {
LABEL_8:
        lazy protocol witness table accessor for type Int and conformance Int();
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v15 = dispatch thunk of static Comparable.< infix(_:_:)();
        result = (*(v8 + 8))(v11, a2);
        if ((v15 & 1) == 0)
        {
          goto LABEL_14;
        }

LABEL_25:
        __break(1u);
        return result;
      }

      swift_getAssociatedConformanceWitness();
      dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
      dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
      v17 = dispatch thunk of static Comparable.< infix(_:_:)();
      result = (*(v8 + 8))(v11, a2);
      if (v17)
      {
        goto LABEL_25;
      }

LABEL_13:
      dispatch thunk of BinaryInteger._lowWord.getter();
      goto LABEL_14;
    }

    if (v14 < 64)
    {
      goto LABEL_13;
    }
  }

LABEL_14:
  if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 64)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v25 = 0x7FFFFFFFFFFFFFFFLL;
    v18 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v19 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if ((v18 & 1) == 0)
    {
      break;
    }

    if (v19 < 65)
    {
      goto LABEL_23;
    }

LABEL_17:
    lazy protocol witness table accessor for type Int and conformance Int();
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v20 = dispatch thunk of static Comparable.< infix(_:_:)();
    (*(v8 + 8))(v11, a2);
    if (v20)
    {
      __break(1u);
LABEL_19:
      if (dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_24;
  }

  if (v19 >= 64)
  {
    goto LABEL_17;
  }

LABEL_23:
  dispatch thunk of BinaryInteger._lowWord.getter();
LABEL_24:
  v21 = dispatch thunk of BinaryInteger._lowWord.getter();
  result = (*(v8 + 8))(v13, a2);
  *v24 = v21;
  return result;
}

uint64_t ValueCompressor.compress<A, B>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v38 = a3;
  v39 = a5;
  v37 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v11 = *(a2 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v36 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v35 - v14;
  v17 = *v6;
  v16 = v6[1];
  v40 = v6[2];
  v41 = v16;
  (*(v11 + 16))(&v35 - v14, a1, a2);
  if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() > 64)
  {
    v42 = 0x8000000000000000;
    if (dispatch thunk of static BinaryInteger.isSigned.getter())
    {
      if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
      {
        goto LABEL_13;
      }

LABEL_8:
      lazy protocol witness table accessor for type Int and conformance Int();
      v20 = v36;
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v21 = dispatch thunk of static Comparable.< infix(_:_:)();
      result = (*(v11 + 8))(v20, a2);
      if (v21)
      {
        goto LABEL_36;
      }

      goto LABEL_14;
    }

    v18 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v19 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v18)
    {
      if (v19 <= 64)
      {
        swift_getAssociatedConformanceWitness();
        dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
        v23 = v36;
        dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
        v24 = dispatch thunk of static Comparable.< infix(_:_:)();
        result = (*(v11 + 8))(v23, a2);
        if (v24)
        {
          goto LABEL_36;
        }

        goto LABEL_13;
      }

      goto LABEL_8;
    }

    if (v19 < 64)
    {
LABEL_13:
      dispatch thunk of BinaryInteger._lowWord.getter();
    }
  }

LABEL_14:
  if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 64)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v42 = 0x7FFFFFFFFFFFFFFFLL;
    v25 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v26 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if ((v25 & 1) == 0)
    {
      break;
    }

    if (v26 < 65)
    {
      goto LABEL_23;
    }

LABEL_17:
    lazy protocol witness table accessor for type Int and conformance Int();
    v27 = v36;
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v28 = dispatch thunk of static Comparable.< infix(_:_:)();
    (*(v11 + 8))(v27, a2);
    if (v28)
    {
      __break(1u);
LABEL_19:
      if (dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_24;
  }

  if (v26 >= 64)
  {
    goto LABEL_17;
  }

LABEL_23:
  dispatch thunk of BinaryInteger._lowWord.getter();
LABEL_24:
  v29 = dispatch thunk of BinaryInteger._lowWord.getter();
  result = (*(v11 + 8))(v15, a2);
  v30 = v29 - v41;
  if (__OFSUB__(v29, v41))
  {
    __break(1u);
    goto LABEL_33;
  }

  if (!v17)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v30 != 0x8000000000000000 || v17 != -1)
  {
    v32 = v30 / v17;
    v33 = __OFADD__(v32, v40);
    v34 = v32 + v40;
    if (!v33)
    {
      v42 = v34;
      lazy protocol witness table accessor for type Int and conformance Int();
      return dispatch thunk of BinaryInteger.init<A>(_:)();
    }

LABEL_34:
    __break(1u);
  }

  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

uint64_t ValueCompressor.compress<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(v4 + 2);
  v11 = *v4;
  v12 = v8;
  v10 = a1;
  lazy protocol witness table accessor for type UInt64 and conformance UInt64();
  return ValueCompressor.compress<A, B>(_:)(&v10, MEMORY[0x277D84D38], a2, a3, a4);
}

uint64_t JustIterator.next()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = type metadata accessor for Optional();
  (*(*(v5 - 8) + 16))(a2, v2, v5);

  return $defer #1 <A>() in JustIterator.next()(v2, v4);
}

uint64_t $defer #1 <A>() in JustIterator.next()(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Optional();
  (*(*(v4 - 8) + 8))(a1, v4);
  v5 = *(*(a2 - 8) + 56);

  return v5(a1, 1, 1, a2);
}

uint64_t ConcatIterator.next()@<X0>(void *a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - v6;
  dispatch thunk of IteratorProtocol.next()();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 48);
  if (v9(v7, 1, AssociatedTypeWitness) == 1)
  {
    dispatch thunk of IteratorProtocol.next()();
    result = v9(v7, 1, AssociatedTypeWitness);
    if (result != 1)
    {
      return (*(v5 + 8))(v7, v4);
    }
  }

  else
  {
    (*(v8 + 32))(a2, v7, AssociatedTypeWitness);
    return (*(v8 + 56))(a2, 0, 1, AssociatedTypeWitness);
  }

  return result;
}

uint64_t protocol witness for Inspectable.description(depth:mode:context:) in conformance TraceConfig.Version()
{
  if (*v0)
  {
    return 12662;
  }

  else
  {
    return 12406;
  }
}

uint64_t protocol witness for Inspectable.description(depth:mode:context:) in conformance CircularBuffer.CheckoutRef()
{
  v2 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26D69CDB0](64, 0xE100000000000000);
  swift_getMetatypeMetadata();
  v0 = String.init<A>(describing:)();
  MEMORY[0x26D69CDB0](v0);

  return v2;
}

uint64_t protocol witness for Inspectable.description(depth:mode:context:) in conformance CircularBuffer.Transaction(uint64_t a1, char *a2, uint64_t *a3)
{
  v4 = *a2;
  v5 = *a3;
  v6 = *(a3 + 4);
  v7 = v3[1];
  v15 = *v3;
  v16 = v7;
  v8 = v3[3];
  v17 = v3[2];
  v18 = v8;
  *&v10 = a1;
  *(&v10 + 1) = 1;
  v11 = v4;
  v12 = 0;
  v13 = v5;
  v14 = v6;
  return CircularBuffer.Transaction.describe(state:)(&v10);
}

uint64_t protocol witness for Inspectable.description(depth:mode:context:) in conformance CircularBuffer.Buffer(uint64_t a1, char *a2, uint64_t *a3)
{
  v4 = *a2;
  v5 = *a3;
  v6 = *(a3 + 4);
  v7 = *v3;
  v8 = *(v3 + 8);
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v12[0] = a1;
  v12[1] = 1;
  v13 = v4;
  v14 = 0;
  v15 = v5;
  v16 = v6;
  return CircularBuffer.Buffer.describe(state:)(v12, v7, v8, v9, v10);
}

uint64_t protocol witness for Inspectable.description(depth:mode:context:) in conformance ATRCWriter(uint64_t a1, char *a2, uint64_t *a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = *(a3 + 4);
  v8[0] = a1;
  v8[1] = 1;
  v9 = v3;
  v10 = 0;
  v11 = v4;
  v12 = v5;
  closure #1 in ATRCWriter.describe(state:)(v8, &v7);
  return v7;
}

uint64_t protocol witness for Inspectable.description(depth:mode:context:) in conformance SnapshotConsumer(uint64_t a1, char *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = *a2;
  v7 = *a3;
  v8 = *(a3 + 4);
  v15 = *v5;
  v10[0] = a1;
  v10[1] = 1;
  v11 = v6;
  v12 = 0;
  v13 = v7;
  v14 = v8;
  return (*(a5 + 32))(v10, a4, a5);
}

uint64_t protocol witness for Inspectable.description(depth:mode:context:) in conformance T_RawTreeNode(uint64_t a1, char *a2, uint64_t *a3)
{
  v4 = *a2;
  v5 = *a3;
  v6 = *(a3 + 4);
  v7 = *v3;
  v8 = v3[1];
  v9 = v3[2];
  v11[0] = a1;
  v11[1] = 1;
  v12 = v4;
  v13 = 0;
  v14 = v5;
  v15 = v6;
  return T_RawTreeNode.describe(state:)(v11, v7, v8, v9);
}

uint64_t protocol witness for Inspectable.description(depth:mode:context:) in conformance T_TreeValueNode(uint64_t a1, char *a2, uint64_t *a3)
{
  v4 = *a2;
  v5 = *a3;
  v6 = *(a3 + 4);
  v7 = *v3;
  v8 = v3[1];
  v9 = v3[2];
  v11[0] = a1;
  v11[1] = 1;
  v12 = v4;
  v13 = 0;
  v14 = v5;
  v15 = v6;
  return T_TreeValueNode.describe(state:)(v11, v7, v8, v9);
}

uint64_t protocol witness for Inspectable.description(depth:mode:context:) in conformance T_TracepointID.Flags(uint64_t a1, char *a2, uint64_t *a3)
{
  v4 = *a2;
  v5 = *a3;
  v6 = *(a3 + 4);
  v7 = *v3;
  v9[0] = a1;
  v9[1] = 1;
  v10 = v4;
  v11 = 0;
  v12 = v5;
  v13 = v6;
  return T_TracepointID.Flags.describe(state:)(v9, v7);
}

uint64_t protocol witness for Inspectable.description(depth:mode:context:) in conformance T_TracepointIDV0(uint64_t a1, char *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void *, uint64_t))
{
  v7 = *a2;
  v8 = *a3;
  v9 = *(a3 + 4);
  v10 = *v6;
  v12[0] = a1;
  v12[1] = 1;
  v13 = v7;
  v14 = 0;
  v15 = v8;
  v16 = v9;
  return a6(v12, v10);
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

void specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(uint64_t *a1, size_t a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v3 = a1[1];
  v5 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      *(&__buf + 7) = 0;
      *&__buf = 0;
      arc4random_buf(&__buf, a2);
      return;
    }

    outlined consume of Data._Representation(v4, v3);
    *&__buf = v4;
    *(&__buf + 1) = v3 & 0x3FFFFFFFFFFFFFFFLL;
    *a1 = xmmword_26C335980;
    outlined consume of Data._Representation(0, 0xC000000000000000);
    Data.LargeSlice.ensureUniqueReference()();
    v8 = *(__buf + 16);
    v9 = __DataStorage._bytes.getter();
    if (!v9)
    {
      __break(1u);
      goto LABEL_26;
    }

    v10 = v9;
    v11 = __DataStorage._offset.getter();
    v12 = __OFSUB__(v8, v11);
    v13 = v8 - v11;
    if (!v12)
    {
      MEMORY[0x26D69C520]();
      arc4random_buf((v10 + v13), a2);
      v14 = *(&__buf + 1) | 0x8000000000000000;
      *a1 = __buf;
LABEL_19:
      a1[1] = v14;
      return;
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (!v5)
  {
    outlined consume of Data._Representation(v4, v3);
    *&__buf = v4;
    WORD4(__buf) = v3;
    BYTE10(__buf) = BYTE2(v3);
    BYTE11(__buf) = BYTE3(v3);
    BYTE12(__buf) = BYTE4(v3);
    BYTE13(__buf) = BYTE5(v3);
    BYTE14(__buf) = BYTE6(v3);
    arc4random_buf(&__buf, a2);
    v6 = DWORD2(__buf) | ((WORD6(__buf) | (BYTE14(__buf) << 16)) << 32);
    *a1 = __buf;
    a1[1] = v6;
    return;
  }

  v15 = v3 & 0x3FFFFFFFFFFFFFFFLL;

  outlined consume of Data._Representation(v4, v3);
  *a1 = xmmword_26C335980;
  outlined consume of Data._Representation(0, 0xC000000000000000);
  v16 = v4 >> 32;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    if (v16 < v4)
    {
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    if (__DataStorage._bytes.getter() && __OFSUB__(v4, __DataStorage._offset.getter()))
    {
LABEL_24:
      __break(1u);
    }

    type metadata accessor for __DataStorage();
    swift_allocObject();
    v17 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

    v15 = v17;
  }

  if (v16 < v4)
  {
    goto LABEL_21;
  }

  v18 = __DataStorage._bytes.getter();
  if (v18)
  {
    v19 = v18;
    v20 = __DataStorage._offset.getter();
    v21 = v4 - v20;
    if (!__OFSUB__(v4, v20))
    {
      MEMORY[0x26D69C520]();
      arc4random_buf((v19 + v21), a2);

      v14 = v15 | 0x4000000000000000;
      *a1 = v4;
      goto LABEL_19;
    }

    goto LABEL_22;
  }

LABEL_26:
  __break(1u);
}

uint64_t _s21SwiftUITracingSupport6StrongVyACyxGxcfCAA14EventAggregate_p_Tt0g5Tf4e_n(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2;
  v10 = a3;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(&v8);
  (*(*(a2 - 8) + 32))(boxed_opaque_existential_1Tm, a1, a2);
  v6 = swift_slowAlloc();
  outlined init with take of Inspectable(&v8, v6);
  return v6;
}

uint64_t specialized Strong.init(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = static UnsafeMutablePointer.allocate(capacity:)();
  (*(v4 + 16))(v6, a1, a2);
  (*(v4 + 32))(v7, v6, a2);
  return v7;
}

uint64_t specialized HeterogeneousBuffer.stride<A>(of:)(uint64_t a1)
{
  v1 = *(*(a1 - 8) + 72);
  if (v1 <= 8)
  {
    v1 = 8;
  }

  result = v1 + 8;
  if (__OFADD__(v1, 8))
  {
    __break(1u);
  }

  return result;
}

BOOL specialized static UnsafeMutableRawBufferPointer.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    if (!a3)
    {
      v5 = 0;
      v4 = 0;
      return v4 == v5;
    }

    return 0;
  }

  if (a1 != a3)
  {
    return 0;
  }

  v4 = a2 - a1;
  v5 = a4 - a1;
  return v4 == v5;
}

uint64_t specialized Collection._failEarlyRangeCheck(_:bounds:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t), uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v13 = a5(0, AssociatedTypeWitness, AssociatedConformanceWitness);
  result = a6(a1, a2 + *(v13 + 36), AssociatedTypeWitness, AssociatedConformanceWitness);
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

void specialized UnsafeArray.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a1;
  v41 = *(a2 - 8);
  v6 = MEMORY[0x28223BE20](a1);
  v39 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v33 - v8;
  v10 = type metadata accessor for Optional();
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v33 - v12;
  v14 = *(a3 - 8);
  MEMORY[0x28223BE20](v11);
  v40 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v34 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v17 = &v33 - v16;
  v18 = dispatch thunk of Sequence.underestimatedCount.getter();
  v21 = UnsafeArray.init(capacity:)(v18, a2, v19, v20);
  v23 = HIDWORD(v22);
  v43 = v21;
  v44 = v22;
  (*(v14 + 16))(v40, v38, a3);
  v24 = v41;
  dispatch thunk of Sequence.makeIterator()();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v40 = v17;
  v38 = AssociatedConformanceWitness;
  dispatch thunk of IteratorProtocol.next()();
  v36 = *(v24 + 48);
  v37 = v24 + 48;
  if (v36(v13, 1, a2) == 1)
  {
LABEL_8:
    (*(v34 + 8))(v40, AssociatedTypeWitness);
  }

  else
  {
    v26 = *(v24 + 32);
    v35 = v24 + 16;
    while (1)
    {
      v26(v9, v13, a2);
      if (v44 == v23)
      {
        type metadata accessor for UnsafeArray(0, a2, v27, v28);
        UnsafeArray.growToCapacity(_:)(2 * v23);
      }

      if (!v43)
      {
        break;
      }

      v29 = HIDWORD(v44);
      v30 = v43 + *(v41 + 72) * HIDWORD(v44);
      v31 = v39;
      (*(v41 + 16))(v39, v9, a2);
      v26(v30, v31, a2);
      v32 = __CFADD__(v29, 1);
      LODWORD(v23) = v29 + 1;
      if (v32)
      {
        __break(1u);
        break;
      }

      HIDWORD(v44) = v23;
      (*(v24 + 8))(v9, a2);
      dispatch thunk of IteratorProtocol.next()();
      if (v36(v13, 1, a2) == 1)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

void specialized UnsafeArray.init(arrayLiteral:)(uint64_t a1, uint64_t a2)
{
  v5 = a1;
  v3 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  specialized UnsafeArray.init<A>(_:)(&v5, a2, v3, WitnessTable);
}

void partial apply for closure #1 in Atomic.subscript.read()
{
  v1 = *(v0 + 24);
  if (*(v1 + 4) == 1)
  {
    *(v1 + 4) = 0;
    os_unfair_lock_unlock(v1);
  }
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t specialized Collection._failEarlyRangeCheck(_:bounds:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  type metadata accessor for Range();
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t specialized Inspectable.description(depth:mode:context:)(unsigned __int8 a1)
{
  v1 = 0x737961776C61;
  v2 = 0x656D686361747461;
  if (a1 != 5)
  {
    v2 = 1885956979;
  }

  v3 = 0xD000000000000011;
  if (a1 != 3)
  {
    v3 = 0x73657461647075;
  }

  if (a1 <= 4u)
  {
    v2 = v3;
  }

  v4 = 1701603654;
  if (a1 != 1)
  {
    v4 = 0x7275746375727473;
  }

  if (a1)
  {
    v1 = v4;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t specialized Inspectable.description(depth:mode:context:)(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4)
{
  if (!HIBYTE(a3) || HIBYTE(a3) == 1)
  {
    return Interpreter.Storage.Types.subscript.getter(a4);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

os_unfair_lock_s *specialized Atomic.init(initializedTo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = Atomic.init()(a2, a2, a3, a4);
  os_unfair_lock_lock_with_options();
  v8 = type metadata accessor for Atomic(0, a2, v6, v7);
  Atomic.initialize(_:)(a1, v8);
  os_unfair_lock_unlock(v10);
  return v10;
}

void partial apply for closure #1 in Atomic.subscript.modify()
{
  v1 = *(v0 + 24);
  *(v1 + 4) = 0;
  os_unfair_lock_unlock(v1);
}

uint64_t _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_2(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t specialized MutableCollection<>.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Slice();
  swift_getWitnessTable();

  return _writeBackMutableSlice<A, B>(_:bounds:slice:)();
}

uint64_t specialized Data.init(count:)(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      return specialized Data.InlineData.init(count:)(result);
    }

    else
    {
      type metadata accessor for __DataStorage();
      swift_allocObject();
      __DataStorage.init(length:)();
      if (v1 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_26C2953A8()
{
  v1 = *(v0 + 16);
  if (v1 >= 2)
  {
  }

  v2 = *(v0 + 32);
  if (v2 >= 2)
  {
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

id outlined copy of NSTask.OutputOption(id result)
{
  if (result >= 2)
  {
    return result;
  }

  return result;
}

uint64_t sub_26C29541C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t instantiation function for generic protocol witness table for Box<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for Strong<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for UnownedSafe<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for Unowned<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSnySiGMd, &_sSnySiGMR);
    lazy protocol witness table accessor for type Int and conformance Int();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type InspectionState.Mode and conformance InspectionState.Mode()
{
  result = lazy protocol witness table cache variable for type InspectionState.Mode and conformance InspectionState.Mode;
  if (!lazy protocol witness table cache variable for type InspectionState.Mode and conformance InspectionState.Mode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InspectionState.Mode and conformance InspectionState.Mode);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HeterogeneousBuffer.Index and conformance HeterogeneousBuffer.Index()
{
  result = lazy protocol witness table cache variable for type HeterogeneousBuffer.Index and conformance HeterogeneousBuffer.Index;
  if (!lazy protocol witness table cache variable for type HeterogeneousBuffer.Index and conformance HeterogeneousBuffer.Index)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HeterogeneousBuffer.Index and conformance HeterogeneousBuffer.Index);
  }

  return result;
}

uint64_t sub_26C295C0C@<X0>(uint64_t *a1@<X8>)
{
  *a1 = Box.opaque.getter();

  return swift_unknownObjectRetain();
}

__n128 sub_26C295E34(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

__n128 sub_26C295E5C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t _s21SwiftUITracingSupport6UniqueVMi_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata instantiation function for Atomic.Params(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for Atomic.Params(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for Atomic.Params(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void type metadata completion function for Atomic.Storage(uint64_t a1)
{
  type metadata accessor for os_unfair_lock_s(319);
  if (v4 <= 0x3F)
  {
    type metadata accessor for Atomic.Params(319, *(a1 + 16), v2, v3);
    if (v5 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v6 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for Atomic.Storage(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 6) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if (v5 > 0xFE)
      {
        return (*(v4 + 48))((a1 + v6 + 6) & ~v6);
      }

      v15 = *(a1 + 4);
      v16 = v15 >= 2;
      v17 = (v15 + 2147483646) & 0x7FFFFFFF;
      if (v16)
      {
        return (v17 + 1);
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void storeEnumTagSinglePayload for Atomic.Storage(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 6) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v7 > 0xFE)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 6] & ~v9;

    v19(v20);
  }

  else if (a2 > 0xFE)
  {
    *(a1 + 2) = a2 - 255;
  }

  else
  {
    a1[4] = a2 + 1;
  }
}

uint64_t type metadata instantiation function for UnownedSafe(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t storeEnumTagSinglePayload for Atomic(uint64_t result, unsigned int a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a5;
    }
  }

  return result;
}

uint64_t type metadata instantiation function for Unowned(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata instantiation function for Weak(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata instantiation function for UnsafeArray(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata completion function for EnumeratedReversedIterator(uint64_t a1)
{
  AssociatedTypeWitness = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return AssociatedTypeWitness;
}

uint64_t getEnumTagSinglePayload for EnumeratedReversedIterator(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(v6 + 64) + v11;
  if (a2 <= v12)
  {
    goto LABEL_28;
  }

  v14 = (v13 & ~v11) + *(*(AssociatedTypeWitness - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((a2 - v12 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_27:
      if (v12)
      {
LABEL_28:
        if (v7 >= v10)
        {
          v23 = *(v6 + 48);

          return v23(a1, v7, v5);
        }

        else
        {
          v21 = *(v9 + 48);

          return v21((a1 + v13) & ~v11);
        }
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_27;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = v14;
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v20 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v20 = *a1;
      }
    }

    else if (v19 == 1)
    {
      v20 = *a1;
    }

    else
    {
      v20 = *a1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v12 + (v20 | v18) + 1;
}

void storeEnumTagSinglePayload for EnumeratedReversedIterator(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v24 = v8;
  v9 = *(v8 + 84);
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(v8 + 64) + v13;
  v15 = (v14 & ~v13) + *(v10 + 64);
  if (a3 <= v12)
  {
    v16 = 0;
  }

  else if (v15 <= 3)
  {
    v19 = ((a3 - v12 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
    if (HIWORD(v19))
    {
      v16 = 4;
    }

    else
    {
      if (v19 < 0x100)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }

      if (v19 >= 2)
      {
        v16 = v20;
      }

      else
      {
        v16 = 0;
      }
    }
  }

  else
  {
    v16 = 1;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v15 < 4)
    {
      v18 = (v17 >> (8 * v15)) + 1;
      if (v15)
      {
        v21 = v17 & ~(-1 << (8 * v15));
        bzero(a1, v15);
        if (v15 != 3)
        {
          if (v15 == 2)
          {
            *a1 = v21;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&a1[v15] = v18;
              }

              else
              {
                *&a1[v15] = v18;
              }

              return;
            }
          }

          else
          {
            *a1 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v21;
        a1[2] = BYTE2(v21);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v17;
      v18 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      a1[v15] = v18;
    }

    return;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v15] = 0;
  }

  else if (v16)
  {
    a1[v15] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v9 >= v11)
  {
    v23 = *(v24 + 56);

    v23(a1, a2, v9, v7);
  }

  else
  {
    v22 = *(v10 + 56);

    v22(&a1[v14] & ~v13, a2);
  }
}

uint64_t type metadata completion function for IterativePair(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t type metadata instantiation function for IterativeTreeTraversal(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_So6NSTaskC21SwiftUITracingSupportE12OutputOptionO_0(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for IterativeTreeTraversal(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t storeEnumTagSinglePayload for IterativeTreeTraversal(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy42_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for InspectionState(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 42))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 41);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for InspectionState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 42) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 42) = 0;
    }

    if (a2)
    {
      *(result + 41) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Inspectable_Context(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 10))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 9);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for Inspectable_Context(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 9) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTag for Inspectable_Context(uint64_t a1)
{
  if (*(a1 + 9) <= 1u)
  {
    return *(a1 + 9);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t destructiveInjectEnumTag for Inspectable_Context(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 9) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for NSTask.OutputOption(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for NSTask.OutputOption(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for NSTask.OutputOption(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for HeterogeneousBuffer(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 28))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 17);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for HeterogeneousBuffer(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 28) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 28) = 0;
    }

    if (a2)
    {
      *(result + 17) = a2 + 1;
    }
  }

  return result;
}

uint64_t type metadata completion function for JustIterator(uint64_t a1)
{
  result = type metadata accessor for Optional();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for ConcatIterator(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IterativePair(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(*(*(a3 + 16) - 8) + 64) + v9;
  v12 = a2 - v10;
  if (a2 <= v10)
  {
    goto LABEL_28;
  }

  v13 = (v11 & ~v9) + *(*(v6 - 8) + 64);
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v16 = ((v12 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v16))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 < 2)
    {
LABEL_27:
      if (v10)
      {
LABEL_28:
        if (v5 >= v8)
        {
          return (*(v4 + 48))();
        }

        else
        {
          return (*(v7 + 48))((a1 + v11) & ~v9, v8, v6);
        }
      }

      return 0;
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_27;
  }

LABEL_14:
  v17 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v17 = 0;
  }

  if (v13)
  {
    if (v13 <= 3)
    {
      v18 = v13;
    }

    else
    {
      v18 = 4;
    }

    if (v18 > 2)
    {
      if (v18 == 3)
      {
        v19 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v19 = *a1;
      }
    }

    else if (v18 == 1)
    {
      v19 = *a1;
    }

    else
    {
      v19 = *a1;
    }
  }

  else
  {
    v19 = 0;
  }

  return v10 + (v19 | v17) + 1;
}

char *storeEnumTagSinglePayload for IterativePair(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(a4 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v5 + 64);
  v11 = *(v8 + 80);
  if (v9 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v8 + 84);
  }

  v13 = ((v10 + v11) & ~v11) + *(*(v7 - 8) + 64);
  v14 = a3 >= v12;
  v15 = a3 - v12;
  if (v15 != 0 && v14)
  {
    if (v13 <= 3)
    {
      v20 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
      if (HIWORD(v20))
      {
        v16 = 4;
      }

      else
      {
        if (v20 < 0x100)
        {
          v21 = 1;
        }

        else
        {
          v21 = 2;
        }

        if (v20 >= 2)
        {
          v16 = v21;
        }

        else
        {
          v16 = 0;
        }
      }
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v13 < 4)
    {
      v19 = (v17 >> (8 * v13)) + 1;
      if (v13)
      {
        v22 = v17 & ~(-1 << (8 * v13));
        v23 = result;
        bzero(result, v13);
        result = v23;
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *v23 = v22;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&result[v13] = v19;
              }

              else
              {
                *&result[v13] = v19;
              }

              return result;
            }
          }

          else
          {
            *v23 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *v23 = v22;
        v23[2] = BYTE2(v22);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v18 = result;
      bzero(result, v13);
      result = v18;
      *v18 = v17;
      v19 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      result[v13] = v19;
    }

    return result;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&result[v13] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_31;
    }

    *&result[v13] = 0;
  }

  else if (v16)
  {
    result[v13] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return result;
  }

LABEL_31:
  if (v6 >= v9)
  {
    v26 = *(v5 + 56);

    return v26();
  }

  else
  {
    v24 = *(v8 + 56);
    v25 = &result[v10 + v11] & ~v11;

    return v24(v25);
  }
}

unint64_t lazy protocol witness table accessor for type InspectionState.Flags and conformance InspectionState.Flags()
{
  result = lazy protocol witness table cache variable for type InspectionState.Flags and conformance InspectionState.Flags;
  if (!lazy protocol witness table cache variable for type InspectionState.Flags and conformance InspectionState.Flags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InspectionState.Flags and conformance InspectionState.Flags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InspectionState.Flags and conformance InspectionState.Flags;
  if (!lazy protocol witness table cache variable for type InspectionState.Flags and conformance InspectionState.Flags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InspectionState.Flags and conformance InspectionState.Flags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InspectionState.Flags and conformance InspectionState.Flags;
  if (!lazy protocol witness table cache variable for type InspectionState.Flags and conformance InspectionState.Flags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InspectionState.Flags and conformance InspectionState.Flags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InspectionState.Flags and conformance InspectionState.Flags;
  if (!lazy protocol witness table cache variable for type InspectionState.Flags and conformance InspectionState.Flags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InspectionState.Flags and conformance InspectionState.Flags);
  }

  return result;
}

uint64_t sub_26C297CB8()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B, @in_guaranteed IterativeTreeTraversal<A, B>) -> (@out ())(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 32);
  v5 = *(a3 + 48);
  v8[2] = *(a3 + 32);
  v8[3] = v5;
  v8[4] = *(a3 + 64);
  v9 = *(a3 + 80);
  v6 = *(a3 + 16);
  v8[0] = *a3;
  v8[1] = v6;
  return v4(a1, a2, v8);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B, @guaranteed IterativeTreeTraversal<A, B>) -> ()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 32);
  v5 = *(a3 + 48);
  v8[2] = *(a3 + 32);
  v8[3] = v5;
  v8[4] = *(a3 + 64);
  v9 = *(a3 + 80);
  v6 = *(a3 + 16);
  v8[0] = *a3;
  v8[1] = v6;
  return v4(a1, a2, v8);
}

uint64_t outlined init with copy of Any?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for ReuseTraceInternalTracing.CacheItemWithIDTraceData(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 16))
  {
    return (*a1 + 2);
  }

  if (*(a1 + 8))
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for ReuseTraceInternalTracing.CacheItemWithIDTraceData(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    if (a3 >= 2)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
    }
  }

  return result;
}

uint64_t specialized RawRepresentable<>.hash(into:)(uint64_t a1, unsigned __int8 a2)
{
  String.hash(into:)();
}

{
  String.hash(into:)();
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)(uint64_t a1, unsigned __int8 a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t SwiftUITrace.XPCKeys.rawValue.getter()
{
  v1 = 0x5F69757466697773;
  v2 = *v0;
  if (v2 <= 3)
  {
    v5 = 0x6769666E6F63;
    if (v2 != 2)
    {
      v5 = 0x65636172745F7369;
    }

    if (*v0 <= 1u)
    {
      return 0x5F69757466697773;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    if (v2 == 7)
    {
      v1 = 0xD000000000000018;
    }

    if (v2 == 6)
    {
      v1 = 0x72775F7365747962;
    }

    v3 = 6580592;
    if (v2 != 4)
    {
      v3 = 0x6E5F7972616E6962;
    }

    if (*v0 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

void specialized closure #1 in synchronized(_:)()
{
  specialized closure #1 in synchronized(_:)(&unk_287CE1120, closure #1 in Client.gracefulExit()partial apply, thunk for @callee_guaranteed () -> ()partial apply, &block_descriptor_230);
}

{
  specialized closure #1 in synchronized(_:)(&unk_287CE0D38, partial apply for closure #1 in Client.gracefulExit(), partial apply for thunk for @callee_guaranteed () -> (), &block_descriptor_147);
}

void specialized closure #1 in synchronized(_:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = static SwiftUITrace.role;
  if (static SwiftUITrace.role >> 61 == 2)
  {
    v8 = static SwiftUITrace.role & 0x1FFFFFFFFFFFFFFFLL;
    v9 = *((static SwiftUITrace.role & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    v10 = swift_allocObject();
    *(v10 + 16) = a2;
    *(v10 + 24) = v8;
    v14[4] = a3;
    v14[5] = v10;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 1107296256;
    v14[2] = thunk for @escaping @callee_guaranteed () -> ();
    v14[3] = a4;
    v11 = _Block_copy(v14);
    outlined copy of SwiftUITrace.Role(v4);
    outlined copy of SwiftUITrace.Role(v4);
    v12 = v9;

    dispatch_sync(v12, v11);
    outlined consume of SwiftUITrace.Role(v4);

    _Block_release(v11);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }
}

uint64_t one-time initialization function for log()
{
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_os_log, 0x277D86200);
  result = OS_os_log.init(subsystem:category:)();
  log = result;
  return result;
}

void swiftUITraceRegister(void *a1, uint64_t *a2)
{
  v3 = a1;
  swiftUITraceRegister(_:_:)(v3, a2);
}

void swiftUITraceRegister(_:_:)(void *a1, uint64_t *a2)
{
  v4 = onceGraph;
  onceGraph = a1;

  v5 = a1;
  closure #1 in swiftUITraceRegister(_:_:)(a2);
}

void closure #1 in swiftUITraceRegister(_:_:)(uint64_t *a1)
{
  swiftUITraceRegisterCommon()();
  if (v2)
  {
    return;
  }

  if (static SwiftUITrace.role >> 61 != 2 || a1 == 0)
  {
    return;
  }

  v4 = static SwiftUITrace.role & 0x1FFFFFFFFFFFFFFFLL;
  *a1 = 0;
  if (*(v4 + 88) == 1)
  {
    return;
  }

  if (*(v4 + 56))
  {
    v5 = 1;
    *a1 = 1;
    if (*(v4 + 88) == 1)
    {
      return;
    }

    if ((*(v4 + 58) & 1) == 0)
    {
      goto LABEL_14;
    }

LABEL_13:
    v5 |= 2uLL;
    *a1 = v5;
    if (*(v4 + 88) == 1)
    {
      return;
    }

    goto LABEL_14;
  }

  v5 = 0;
  if (*(v4 + 58))
  {
    goto LABEL_13;
  }

LABEL_14:
  if ((*(v4 + 59) & 1) == 0 || (v5 |= 4uLL, *a1 = v5, *(v4 + 88) != 1))
  {
    if ((*(v4 + 60) & 1) == 0 || (v5 |= 8uLL, *a1 = v5, *(v4 + 88) != 1))
    {
      if ((*(v4 + 61) & 1) == 0 || (v5 |= 0x10uLL, *a1 = v5, *(v4 + 88) != 1))
      {
        if ((*(v4 + 62) & 1) == 0 || (v5 |= 0x20uLL, *a1 = v5, *(v4 + 88) != 1))
        {
          if ((*(v4 + 63) & 1) == 0 || (v5 |= 0x40uLL, *a1 = v5, *(v4 + 88) != 1))
          {
            if (*(v4 + 64))
            {
              *a1 = v5 | 0x80;
            }
          }
        }
      }
    }
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> swiftUITraceRegisterCommon()()
{
  type metadata accessor for SwiftUITrace();
  v1 = static SwiftUITrace.client()();
  if (!v0)
  {
    v2 = v1;
    if (v1)
    {
      if (!*(v1 + 32))
      {
        swift_beginAccess();
        v3 = *(v2 + 112);
        os_unfair_lock_lock_with_options();
        if (!onceGraph)
        {
          __break(1u);
          return;
        }

        v4 = onceGraph;
        Trace_Handle_Storage.init()(&v16);
        *&v24 = MEMORY[0x277D84FA0];
        *(&v24 + 1) = MEMORY[0x277D84F98];
        *&v25 = 0;
        *(&v25 + 1) = MEMORY[0x277D84FA0];
        BYTE8(v26) = 0;
        *&v27 = 0;
        BYTE8(v27) = 1;
        v28 = 0;
        *&v26 = v4;
        v30 = 0;
        v29[6] = v22;
        v29[7] = v23;
        v29[2] = v18;
        v29[3] = v19;
        v29[4] = v20;
        v29[5] = v21;
        v29[0] = v16;
        v29[1] = v17;
        v29[10] = v26;
        v29[11] = v27;
        v29[8] = v24;
        v29[9] = v25;
        specialized Trace.add<A>(handle:)(v29);
        v14[10] = v26;
        v14[11] = v27;
        v15 = v28;
        v14[6] = v22;
        v14[7] = v23;
        v14[8] = v24;
        v14[9] = v25;
        v14[2] = v18;
        v14[3] = v19;
        v14[4] = v20;
        v14[5] = v21;
        v14[0] = v16;
        v14[1] = v17;
        outlined destroy of Trace.SwiftUI(v14);
        os_unfair_lock_unlock(v3);
      }

      swift_beginAccess();
      v5 = *(v2 + 128);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v2 + 128) = v5;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5[2] + 1, 1, v5);
        *(v2 + 128) = v5;
      }

      v7 = v5[2];
      v8 = v5[3];
      v9 = v7 + 1;
      if (v7 >= v8 >> 1)
      {
        v11 = v5;
        v12 = v5[2];
        v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v7 + 1, 1, v11);
        v7 = v12;
        v5 = v13;
      }

      v5[2] = v9;
      v10 = &v5[2 * v7];
      v10[4] = specialized thunk for @escaping @callee_guaranteed (@inout Trace) -> ();
      v10[5] = 0;
      *(v2 + 128) = v5;
      swift_endAccess();
    }
  }
}

uint64_t static SwiftUITrace.register<A>(h:)(void (*a1)(__int128 *), uint64_t a2, ValueMetadata *a3, uint64_t a4)
{
  result = static SwiftUITrace.client()();
  if (!v4)
  {
    v10 = result;
    if (result)
    {
      v11 = swift_allocObject();
      v11[2] = a3;
      v11[3] = a4;
      v11[4] = a1;
      v11[5] = a2;
      if (*(v10 + 32))
      {
      }

      else
      {
        swift_beginAccess();
        v12 = *(v10 + 112);

        os_unfair_lock_lock_with_options();
        closure #1 in static SwiftUITrace.register<A>(h:)((v12 + 8), a1, a2, a3, a4);
        os_unfair_lock_unlock(v12);
      }

      v13 = swift_allocObject();
      *(v13 + 16) = partial apply for closure #1 in static SwiftUITrace.register<A>(h:);
      *(v13 + 24) = v11;
      swift_beginAccess();
      v14 = *(v10 + 128);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v10 + 128) = v14;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14[2] + 1, 1, v14);
        *(v10 + 128) = v14;
      }

      v17 = v14[2];
      v16 = v14[3];
      if (v17 >= v16 >> 1)
      {
        v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v14);
      }

      v14[2] = v17 + 1;
      v18 = &v14[2 * v17];
      v18[4] = partial apply for thunk for @escaping @callee_guaranteed (@inout Trace) -> ();
      v18[5] = v13;
      *(v10 + 128) = v14;
      swift_endAccess();
    }
  }

  return result;
}

Swift::Void __swiftcall UIKitTraceRegister()()
{
  type metadata accessor for SwiftUITrace();
  v0 = static SwiftUITrace.client()();
  v1 = v0;
  if (v0)
  {
    if (!*(v0 + 32))
    {
      swift_beginAccess();
      v2 = *(v1 + 112);
      os_unfair_lock_lock_with_options();
      Trace_Handle_Storage.init()(v12);
      specialized Trace.add<A>(handle:)(v12);
      os_unfair_lock_unlock(v2);
    }

    swift_beginAccess();
    v3 = *(v1 + 128);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + 128) = v3;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v3 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3[2] + 1, 1, v3);
      *(v1 + 128) = v3;
    }

    v5 = v3[2];
    v6 = v3[3];
    v7 = v5 + 1;
    if (v5 >= v6 >> 1)
    {
      v9 = v3;
      v10 = v3[2];
      v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v5 + 1, 1, v9);
      v5 = v10;
      v3 = v11;
    }

    v3[2] = v7;
    v8 = &v3[2 * v5];
    v8[4] = specialized thunk for @escaping @callee_guaranteed (@inout Trace) -> ();
    v8[5] = 0;
    *(v1 + 128) = v3;
    swift_endAccess();
  }
}

uint64_t one-time initialization function for registrationToken()
{
  v3 = *MEMORY[0x277D85DE8];
  out_token = -1;
  v0 = String.utf8CString.getter();
  notify_register_check((v0 + 32), &out_token);

  static SwiftUITrace.registrationToken = out_token;
  return result;
}

uint64_t static SwiftUITrace.registrationToken.getter()
{
  if (one-time initialization token for registrationToken != -1)
  {
    swift_once();
  }

  return static SwiftUITrace.registrationToken;
}

uint64_t static SwiftUITrace.allowRegister.setter(char a1)
{
  result = swift_beginAccess();
  static SwiftUITrace.allowRegister = a1;
  return result;
}

uint64_t static SwiftUITrace.supressRegistration<A>(_:)(uint64_t (*a1)(uint64_t))
{
  v2 = swift_beginAccess();
  static SwiftUITrace.allowRegister = 0;
  result = a1(v2);
  static SwiftUITrace.allowRegister = 1;
  return result;
}

SwiftUITracingSupport::SwiftUITrace::XPCKeys_optional __swiftcall SwiftUITrace.XPCKeys.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SwiftUITrace.XPCKeys.init(rawValue:), v3);

  v7 = 9;
  if (v5 < 9)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SwiftUITrace.XPCKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  specialized RawRepresentable<>.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SwiftUITrace.XPCKeys(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  specialized RawRepresentable<>.hash(into:)(v4, v2);
  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance SwiftUITrace.XPCKeys@<X0>(unint64_t *a1@<X8>)
{
  result = SwiftUITrace.XPCKeys.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t static SwiftUITrace.createTraceHost()()
{
  if (static SwiftUITrace.role == 0x8000000000000000)
  {
    specialized static SwiftUITrace.processInitialization()();
    type metadata accessor for Host();
    v0 = swift_allocObject();
    Host.init()();
    static os_log_type_t.default.getter();
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    v1 = static SwiftUITrace.role;
    static SwiftUITrace.role = v0 | 0x2000000000000000;

    outlined consume of SwiftUITrace.Role(v1);
    return v0;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void static SwiftUITrace.registerSwiftUIHandleForTest()()
{
  if (one-time initialization token for registrationToken != -1)
  {
    swift_once();
  }

  notify_set_state(static SwiftUITrace.registrationToken, 1uLL);
  if (onceGraph)
  {
    swiftUITraceRegisterCommon()();
    if (v0)
    {
      swift_unexpectedError();
      __break(1u);
    }
  }
}

uint64_t static SwiftUITrace.test(config:file:block:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X2>, _OWORD *a4@<X8>)
{
  v5 = *(a1 + 16);
  v17[0] = *a1;
  v17[1] = v5;
  v17[2] = *(a1 + 32);
  v18 = *(a1 + 48);
  if (static SwiftUITrace.role == 0x8000000000000000)
  {
    type metadata accessor for Client();
    v9 = swift_allocObject();
    outlined init with copy of TraceConfig(v17, v16);
    Client.init(test:)(a1);
    v10 = static SwiftUITrace.role;
    static SwiftUITrace.role = v9 | 0x4000000000000000;
    outlined consume of SwiftUITrace.Role(v10);
    v11 = static SwiftUITrace.client()();
    if (v11)
    {
      Client.beginTracing(to:)(a2);
      a3(v11);
      Client.endTracing()();
      v14 = v16[1];
      v15 = v16[0];
      v12 = static SwiftUITrace.role;
      static SwiftUITrace.role = 0x8000000000000000;
      outlined consume of SwiftUITrace.Role(v12);

      *a4 = v15;
      a4[1] = v14;
      return result;
    }

    __break(1u);
  }

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t static SwiftUITrace.client()()
{
  result = swift_beginAccess();
  if (static SwiftUITrace.allowRegister != 1)
  {
    return 0;
  }

  if (static SwiftUITrace.role >> 61 == 2)
  {
  }

  if (static SwiftUITrace.role != 0x8000000000000000)
  {
    __break(1u);
    return result;
  }

  v2 = [objc_opt_self() mainBundle];
  v3 = [v2 executablePath];

  if (v3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    lazy protocol witness table accessor for type String and conformance String();
    v4 = StringProtocol.contains<A>(_:)();

    if (v4)
    {
      return 0;
    }
  }

  type metadata accessor for Client();
  v5 = swift_allocObject();
  result = Client.init()();
  if (!v0)
  {
    v6 = static SwiftUITrace.role;
    static SwiftUITrace.role = v5 | 0x4000000000000000;
    outlined consume of SwiftUITrace.Role(v6);
    return static SwiftUITrace.client()();
  }

  return result;
}

void Client.beginTracing(to:)(uint64_t a1)
{
  v2 = v1;
  v80 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexVyAA03AnyC6OutputVGMd, &_s17_StringProcessing5RegexVyAA03AnyC6OutputVGMR);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v59 - v6;
  v8 = *(v1 + 88);
  if (v8 == 1)
  {
    goto LABEL_18;
  }

  if (v8)
  {
    v9 = v5;
    v10 = objc_opt_self();

    v11 = [v10 processInfo];
    v12 = [v11 processName];

    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    *&v90 = v13;
    *(&v90 + 1) = v15;

    Regex<A>.init(_:)();
    lazy protocol witness table accessor for type String and conformance String();
    lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type Regex<AnyRegexOutput> and conformance Regex<A>, &_s17_StringProcessing5RegexVyAA03AnyC6OutputVGMd, &_s17_StringProcessing5RegexVyAA03AnyC6OutputVGMR, MEMORY[0x277D85AC0]);
    v21 = BidirectionalCollection<>.contains<A>(_:)();
    (*(v4 + 8))(v7, v9);

    if (v21)
    {
      goto LABEL_14;
    }

    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v22 = log;
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_26C161000, v22, v23, "will not trace. Procname doesn't pass filter.", v24, 2u);
      MEMORY[0x26D69EAB0](v24, -1, -1);
    }

    v25 = *(v2 + 16);
    if (v25)
    {
      swift_unknownObjectRetain();

      xpc_connection_cancel(v25);
      swift_unknownObjectRelease();
LABEL_31:
      v58 = static SwiftUITrace.role;
      static SwiftUITrace.role = 0x8000000000000000;
      outlined consume of SwiftUITrace.Role(v58);
      return;
    }

LABEL_34:
    __break(1u);
  }

  else
  {
    while (1)
    {
      if (*(v2 + 88) != 1 && (*(v2 + 100) & 1) == 0)
      {
        v26 = *(v2 + 96);
        v27 = [objc_opt_self() processInfo];
        v28 = [v27 processIdentifier];

        if (v28 != v26)
        {
          break;
        }
      }

LABEL_18:
      *(v2 + 32) = 0;
      swift_beginAccess();
      v29 = *(v2 + 112);
      os_unfair_lock_lock_with_options();
      v30 = *(v29 + 5);
      os_unfair_lock_unlock(v29);
      if (v30)
      {
        goto LABEL_36;
      }

      swift_beginAccess();
      v31 = *(v2 + 120);
      *v31 = 0u;
      v31[1] = 0u;
      os_unfair_lock_lock_with_options();
      v32 = *(v2 + 88);
      if (v32 == 1)
      {
        __break(1u);
        goto LABEL_34;
      }

      v33 = *(v2 + 96);
      v35 = *(v2 + 72);
      v34 = *(v2 + 80);
      v37 = *(v2 + 56);
      v36 = *(v2 + 64);
      v38 = *(v2 + 104);
      v89 = HIBYTE(v36) & 1;
      v88 = BYTE4(v33) & 1;
      v69 = v38 & 1;
      v70 = (v38 >> 8) & 1;
      v67 = HIWORD(v33) & 1;
      v68 = HIBYTE(v33) & 1;
      v66 = (v33 >> 40) & 1;
      v65 = v35 & 1;
      v62 = (v36 >> 40) & 1;
      v63 = HIWORD(v36) & 1;
      v86 = BYTE4(v33) & 1;
      v61 = HIDWORD(v36) & 1;
      v79 = v37 & 1;
      LOWORD(v90) = v37 & 0x101;
      v78 = (v37 >> 8) & 1;
      v77 = WORD1(v37) & 1;
      BYTE2(v90) = BYTE2(v37) & 1;
      v76 = BYTE3(v37) & 1;
      BYTE3(v90) = BYTE3(v37) & 1;
      v75 = HIDWORD(v37) & 1;
      BYTE4(v90) = BYTE4(v37) & 1;
      v74 = (v37 >> 40) & 1;
      BYTE5(v90) = BYTE5(v37) & 1;
      v73 = HIWORD(v37) & 1;
      BYTE6(v90) = BYTE6(v37) & 1;
      v72 = HIBYTE(v37) & 1;
      BYTE7(v90) = HIBYTE(v37) & 1;
      v71 = v36 & 1;
      WORD4(v90) = v36 & 0x101;
      v64 = (v36 >> 8) & 1;
      v59 = WORD1(v36) & 1;
      v60 = BYTE3(v36) & 1;
      BYTE10(v90) = BYTE2(v36) & 1;
      BYTE11(v90) = BYTE3(v36) & 1;
      BYTE12(v90) = BYTE4(v36) & 1;
      BYTE13(v90) = BYTE5(v36) & 1;
      BYTE14(v90) = BYTE6(v36) & 1;
      HIBYTE(v90) = HIBYTE(v36) & 1;
      v91 = v35 & 1;
      v92 = v34;
      v93 = v32;
      v94 = v33;
      v95 = BYTE4(v33) & 1;
      v96 = BYTE5(v33) & 1;
      v97 = BYTE6(v33) & 1;
      v98 = HIBYTE(v33) & 1;
      v99 = v38 & 0x101;
      v39 = *(v2 + 120);
      outlined copy of TraceConfig?(v37, v36, v35, v34, v32);
      outlined copy of TraceConfig?(v37, v36, v35, v34, v32);

      ATRCWriter.init(file:config:stats:)(v40, &v90, v39, v87);
      v41 = v87[0];
      v42 = v87[1];
      v43 = *(v2 + 120);
      swift_beginAccess();
      v44 = *(v2 + 128);

      v45 = MEMORY[0x277D84F90];
      v46 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA5TraceV9HandleBoxVSg_SayAKGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
      *(&v85[0] + 1) = v47;
      *&v85[1] = MEMORY[0x277D84F98];
      BYTE8(v85[1]) = 0;
      *(&v84[1] + 1) = v43;
      *&v85[0] = v46;
      _s21SwiftUITracingSupport14CircularBufferV8consumer5stats4syncACx_SpyAA5StatsVGSbtcAA0E8ConsumerRzlufCAA10ATRCWriterV_Tt3B5(v41, v42, v43, v89, &v90);
      *(v84 + 8) = v90;
      LOBYTE(v81) = v79;
      BYTE1(v81) = v78;
      BYTE2(v81) = v77;
      BYTE3(v81) = v76;
      BYTE4(v81) = v75;
      BYTE5(v81) = v74;
      BYTE6(v81) = v73;
      BYTE7(v81) = v72;
      BYTE8(v81) = v71;
      BYTE9(v81) = v64;
      BYTE10(v81) = v59;
      BYTE11(v81) = v60;
      BYTE12(v81) = v61;
      BYTE13(v81) = v62;
      BYTE14(v81) = v63;
      HIBYTE(v81) = v89;
      LOBYTE(v82) = v65;
      *(&v82 + 1) = v34;
      *&v83 = v32;
      DWORD2(v83) = v33;
      BYTE12(v83) = v88;
      BYTE13(v83) = v66;
      BYTE14(v83) = v67;
      HIBYTE(v83) = v68;
      LOBYTE(v84[0]) = v69;
      BYTE1(v84[0]) = v70;
      Trace_Handle_Storage.init()(&v90);
      specialized Trace.add<A>(handle:)(&v90);
      v48 = *(v44 + 16);
      if (v48)
      {
        v34 = v44 + 40;
        do
        {
          v49 = *(v34 - 8);

          v49(&v81);

          v34 += 16;
          --v48;
        }

        while (v48);
      }

      swift_beginAccess();
      v50 = *(v2 + 112);
      os_unfair_lock_assert_owner(v50);
      if ((*(v50 + 5) & 1) == 0)
      {
        v51 = v83;
        *(v50 + 56) = v84[0];
        v52 = v85[0];
        *(v50 + 72) = v84[1];
        *(v50 + 88) = v52;
        *(v50 + 97) = *(v85 + 9);
        v53 = v82;
        *(v50 + 8) = v81;
        *(v50 + 24) = v53;
        *(v50 + 40) = v51;
        *(v50 + 5) = 1;
        swift_endAccess();
        *(v2 + 128) = v45;

        os_unfair_lock_unlock(*(v2 + 112));
        return;
      }

      __break(1u);
      swift_once();
      v16 = log;
      v17 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v16, v17))
      {

LABEL_14:

        continue;
      }

      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *&v90 = v19;
      *v18 = 136315138;
      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v34, &v90);

      *(v18 + 4) = v20;
      _os_log_impl(&dword_26C161000, v16, v17, "ignoring invalid process name regex %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x26D69EAB0](v19, -1, -1);
      MEMORY[0x26D69EAB0](v18, -1, -1);
    }

    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v54 = log;
    v55 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_26C161000, v54, v55, "will not trace. Pid doesn't pass filter.", v56, 2u);
      MEMORY[0x26D69EAB0](v56, -1, -1);
    }

    v57 = *(v2 + 16);
    if (v57)
    {
      xpc_connection_cancel(v57);
      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_36:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

SwiftUITracingSupport::Stats __swiftcall Client.endTracing()()
{
  v2 = v1;
  v3 = v0;
  swift_beginAccess();
  v4 = *(v1 + 112);
  os_unfair_lock_lock_with_options();
  Trace.deallocate()();
  os_unfair_lock_unlock(v4);
  os_unfair_lock_lock_with_options();
  swift_beginAccess();
  v5 = *(v1 + 112);
  os_unfair_lock_assert_owner(v5);
  if (*(v5 + 5) == 1)
  {
    outlined destroy of Trace(v5 + 8);
    *(v5 + 5) = 0;
    swift_endAccess();
    os_unfair_lock_unlock(*(v2 + 112));
    v6 = swift_beginAccess();
    v10 = *(v2 + 120);
    v11 = *v10;
    v12 = v10[1];
    *v10 = 0u;
    v10[1] = 0u;
    *(v2 + 32) = 1;
    *v3 = v11;
    v3[1] = v12;
  }

  else
  {
    __break(1u);
  }

  result.bytesWritten = v9;
  result.bytesCompressed = v8;
  result.bytesConsumed = v7;
  result.bytesEmitted = v6;
  return result;
}