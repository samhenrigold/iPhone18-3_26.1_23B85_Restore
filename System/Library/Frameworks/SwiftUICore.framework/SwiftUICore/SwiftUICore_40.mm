uint64_t ContiguousArray.init(unsafeUninitializedCapacity:initializingWith:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Array.init(_unsafeUninitializedCapacity:initializingWith:)();
  if (!v4)
  {

    v5 = _ArrayBuffer.requestNativeBuffer()();

    if (!v5)
    {
      v6 = type metadata accessor for Array();
      swift_getWitnessTable(MEMORY[0x1E69E6340], v6);
      v5 = _copyCollectionToContiguousArray<A>(_:)();
    }
  }

  return v5;
}

uint64_t closure #1 in ForEachState.appendViewIDsForSingleChildView(into:explicitIDKeyPath:)(void *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v71 = a2;
  v84 = *MEMORY[0x1E69E9840];
  v5 = *a3;
  v78 = *a4;
  v6 = v78;
  v7 = (v5 + *MEMORY[0x1E69E77B0]);
  v8 = *v7;
  v66 = *(*v7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v79 = v58 - v9;
  v10 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v58 - v11;
  v82 = v6[13];
  v70 = *(*(v82 + 8) + 8);
  v13 = v6[10];
  v77 = *(v70 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v65 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v80 = v58 - v14;
  v74 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v72 = v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v73 = v58 - v18;
  v19 = v7[1];
  result = UnsafeMutableBufferPointer.baseAddress.getter();
  if (result)
  {
    v22 = result;
    AssociatedConformanceWitness = KeyPath.makeInitializeFunction()(v21);
    v69 = v23;
    v24 = *(*a4 + 160);
    swift_beginAccess();
    v25 = v78[12];
    v26 = v78[14];
    v83[0] = v13;
    v83[1] = v19;
    v64 = v25;
    v83[2] = v25;
    v83[3] = v82;
    v75 = v26;
    v83[4] = v26;
    v27 = type metadata accessor for ForEach(0, v83);
    v28 = *(v27 - 8);
    v29 = *(v28 + 48);
    v30 = v24;
    v62 = v27;
    v61 = v29;
    v60 = v28 + 48;
    result = (v29)(a4 + v24, 1);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      v32 = v74 + 16;
      v31 = *(v74 + 16);
      v59 = a4;
      v68 = v30;
      v33 = a4 + v30;
      v34 = v73;
      v67 = v31;
      v35 = (v31)(v73, v33, v13);
      v58[1] = v58;
      MEMORY[0x1EEE9AC00](v35);
      v63 = v58;
      v58[-10] = v13;
      v58[-9] = v19;
      v36 = v82;
      v58[-8] = v64;
      v58[-7] = v36;
      v37 = v78[15];
      v58[-6] = v75;
      v58[-5] = v37;
      v38 = v69;
      v58[-4] = AssociatedConformanceWitness;
      v58[-3] = v38;
      v58[-2] = v22;
      v39 = v34;
      MEMORY[0x1EEE9AC00](v40);
      v58[-4] = v13;
      v58[-3] = v41;
      v58[-2] = partial apply for closure #1 in closure #1 in ForEachState.appendViewIDsForSingleChildView(into:explicitIDKeyPath:);
      v58[-1] = v42;
      v78 = v42;
      dispatch thunk of Sequence.withContiguousStorageIfAvailable<A>(_:)();
      v43 = v68;
      v58[0] = v32;
      if (v83[0])
      {
        v83[0] = 0;
        v67(v72, v34, v13);
        dispatch thunk of Sequence.makeIterator()();
        v77 = v13;
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        dispatch thunk of IteratorProtocol.next()();
        v44 = v66;
        v75 = *(v66 + 48);
        if (v75(v12, 1, v8) != 1)
        {
          v47 = *(v44 + 32);
          v45 = v44 + 32;
          v46 = v47;
          v48 = v79;
          do
          {
            v49 = v46(v48, v12, v8);
            MEMORY[0x1EEE9AC00](v49);
            v50 = v82;
            v58[-6] = v77;
            v58[-5] = v50;
            v51 = v78;
            v58[-4] = partial apply for closure #1 in closure #1 in ForEachState.appendViewIDsForSingleChildView(into:explicitIDKeyPath:);
            v58[-3] = v51;
            v58[-2] = v83;
            _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v48, closure #2 in RandomAccessCollection.forEachUnsafeElement(_:)partial apply, &v58[-8], v8, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v52);
            (*(v45 - 24))(v48, v8);
            if (__OFADD__(v83[0], 1))
            {
              __break(1u);
            }

            ++v83[0];
            dispatch thunk of IteratorProtocol.next()();
          }

          while (v75(v12, 1, v8) != 1);
        }

        (*(v65 + 8))(v80, AssociatedTypeWitness);
        v53 = *(v74 + 8);
        v13 = v77;
        v53(v73, v77);
        v43 = v68;
      }

      else
      {
        v53 = *(v74 + 8);
        v53(v39, v13);
      }

      v54 = v59;
      result = v61(v59 + v43, 1, v62);
      v55 = v71;
      if (result != 1)
      {
        v56 = v72;
        v67(v72, (v54 + v43), v13);
        v57 = dispatch thunk of Collection.count.getter();

        result = (v53)(v56, v13);
        *v55 = v57;
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t (*KeyPath.makeInitializeFunction()(__n128 a1))(uint64_t a1, uint64_t a2)
{
  v2 = *v1;
  v3 = dispatch thunk of AnyKeyPath._storedInlineOffset.getter();
  if (v4)
  {

    return partial apply for closure #2 in KeyPath.makeInitializeFunction();
  }

  else
  {
    v6 = v3;
    v7 = swift_allocObject();
    v8 = (v2 + *MEMORY[0x1E69E77B0]);
    v7[2] = *v8;
    v7[3] = v8[1];
    v7[4] = v6;
    return partial apply for closure #1 in KeyPath.makeInitializeFunction();
  }
}

uint64_t closure #1 in RandomAccessCollection.forEachUnsafeElement(_:)(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  result = UnsafeBufferPointer.baseAddress.getter();
  if (!result)
  {
    goto LABEL_10;
  }

  v9 = result;
  result = UnsafeBufferPointer.indices.getter();
  if (result == v10)
  {
    return result;
  }

  v11 = v10;
  if (v10 < result)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (result >= v10)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  v12 = *(*(AssociatedTypeWitness - 8) + 72);
  v13 = v9 + result * v12;
  do
  {
    v14 = result + 1;
    a3();
    v13 += v12;
    result = v14;
  }

  while (v11 != v14);
  return result;
}

uint64_t HeterogeneousViewIDsAccumulator.append<A>(contentsOf:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v3 + 40);
  if (v8 && (v9 = *(v3 + 48), __swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40)), (v10 = (*(v9 + 24))(a2, a2, v8, v9)) != 0))
  {
    *&v22 = v10;
    outlined destroy of CanonicalViewIDProtocol?(v3 + 16, &lazy cache variable for type metadata for AbstractContiguousArray?, &lazy cache variable for type metadata for AbstractContiguousArray, &protocol descriptor for AbstractContiguousArray, type metadata accessor for ScrollStateRequest?);
    *(v3 + 16) = 0u;
    *(v3 + 32) = 0u;
    *(v3 + 48) = 0;
    v24[0] = a1;
    v11 = type metadata accessor for ContiguousArray();

    swift_getWitnessTable(MEMORY[0x1E69E6C08], v11);
    ContiguousArray.append<A>(contentsOf:)();
    v12 = v22;
    v25 = v11;
    v20 = a3;
    swift_getWitnessTable(protocol conformance descriptor for <A> ContiguousArray<A>, v11, &v20);
    v26 = v13;
    v24[0] = v12;
    v14 = v4 + 16;
  }

  else
  {
    outlined init with copy of AbstractContiguousArray?(v3 + 16, &v22, &lazy cache variable for type metadata for AbstractContiguousArray?, &lazy cache variable for type metadata for AbstractContiguousArray, &protocol descriptor for AbstractContiguousArray, type metadata accessor for ScrollStateRequest?);
    if (v23)
    {
      outlined init with take of AnyTrackedValue(&v22, v24);
      v15 = v25;
      v16 = v26;
      v17 = __swift_project_boxed_opaque_existential_1(v24, v25);
      append #1 <A><A1>(buffer:) in HeterogeneousViewIDsAccumulator.append<A>(contentsOf:)(v17, v4, a2, v15, a3, v16);
      outlined destroy of CanonicalViewIDProtocol?(v4 + 16, &lazy cache variable for type metadata for AbstractContiguousArray?, &lazy cache variable for type metadata for AbstractContiguousArray, &protocol descriptor for AbstractContiguousArray, type metadata accessor for ScrollStateRequest?);
      *(v4 + 16) = 0u;
      *(v4 + 32) = 0u;
      *(v4 + 48) = 0;
      __swift_destroy_boxed_opaque_existential_1(v24);
    }

    else
    {
      outlined destroy of CanonicalViewIDProtocol?(&v22, &lazy cache variable for type metadata for AbstractContiguousArray?, &lazy cache variable for type metadata for AbstractContiguousArray, &protocol descriptor for AbstractContiguousArray, type metadata accessor for ScrollStateRequest?);
    }

    v25 = type metadata accessor for ContiguousArray();
    v21 = a3;
    swift_getWitnessTable(protocol conformance descriptor for <A> ContiguousArray<A>, v25, &v21);
    v26 = v18;
    v24[0] = a1;

    v14 = v4 + 16;
  }

  return outlined assign with take of AbstractContiguousArray?(v24, v14, &lazy cache variable for type metadata for AbstractContiguousArray?, &lazy cache variable for type metadata for AbstractContiguousArray, &protocol descriptor for AbstractContiguousArray, type metadata accessor for ScrollStateRequest?);
}

uint64_t outlined destroy of CanonicalViewIDProtocol?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

double outlined consume of BaseIDs(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t initializeWithCopy for HeterogeneousViewIDsAccumulator(uint64_t a1, uint64_t *a2)
{
  v4 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v4;
  v5 = a2[5];

  if (!v5)
  {
    v9 = *(a2 + 2);
    *(a1 + 16) = *(a2 + 1);
    *(a1 + 32) = v9;
    *(a1 + 48) = a2[6];
    v7 = a2[10];
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_5:
    *(a1 + 56) = *(a2 + 7);
    *(a1 + 72) = *(a2 + 9);
    *(a1 + 81) = *(a2 + 81);
    return a1;
  }

  v6 = a2[6];
  *(a1 + 40) = v5;
  *(a1 + 48) = v6;
  (**(v5 - 8))(a1 + 16, a2 + 2, v5);
  v7 = a2[10];
  if (!v7)
  {
    goto LABEL_5;
  }

LABEL_3:
  v8 = a2[11];
  *(a1 + 80) = v7;
  *(a1 + 88) = v8;
  (**(v7 - 8))(a1 + 56, a2 + 7);
  *(a1 + 96) = *(a2 + 96);
  return a1;
}

void *HeterogeneousViewIDsAccumulator.finalize()@<X0>(_OWORD *a1@<X8>)
{
  outlined init with copy of AbstractContiguousArray?(v1 + 16, &v9, &lazy cache variable for type metadata for AbstractContiguousArray?, &lazy cache variable for type metadata for AbstractContiguousArray, &protocol descriptor for AbstractContiguousArray, type metadata accessor for ScrollStateRequest?);
  if (v10)
  {
    outlined init with take of AnyTrackedValue(&v9, &v11);
    v3 = *(&v12 + 1);
    v4 = v13;
    v5 = __swift_project_boxed_opaque_existential_1(&v11, *(&v12 + 1));
    specialized append #1 <A>(buffer:) in HeterogeneousViewIDsAccumulator.finalize()(v5, v1, v3, v4);
    swift_beginAccess();
    outlined destroy of CanonicalViewIDProtocol?(v1 + 16, &lazy cache variable for type metadata for AbstractContiguousArray?, &lazy cache variable for type metadata for AbstractContiguousArray, &protocol descriptor for AbstractContiguousArray, type metadata accessor for ScrollStateRequest?);
    *(v1 + 16) = 0u;
    *(v1 + 32) = 0u;
    *(v1 + 48) = 0;
    __swift_destroy_boxed_opaque_existential_1(&v11);
  }

  else
  {
    outlined destroy of CanonicalViewIDProtocol?(&v9, &lazy cache variable for type metadata for AbstractContiguousArray?, &lazy cache variable for type metadata for AbstractContiguousArray, &protocol descriptor for AbstractContiguousArray, type metadata accessor for ScrollStateRequest?);
  }

  swift_beginAccess();

  HeterogeneousCollection.init(_:)(v6, &v11);
  v7 = v12;
  *a1 = v11;
  a1[1] = v7;
  return outlined destroy of HeterogeneousViewIDsAccumulator(v1);
}

void specialized append #1 <A>(buffer:) in HeterogeneousViewIDsAccumulator.finalize()(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = (*(a4 + 32))(a3, a4);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for HomogeneousCollection(0, AssociatedTypeWitness, AssociatedConformanceWitness, v8);
  specialized HomogeneousCollection.__allocating_init(_:)(v5);
  swift_beginAccess();
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  swift_endAccess();
  v9 = ContiguousArray.count.getter();

  swift_beginAccess();
  v10 = a2[1];
  v11 = __OFADD__(v10, v9);
  v12 = v10 + v9;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a2[1] = v12;
  }
}

double protocol witness for AbstractContiguousArray.contiguousArray.getter in conformance <A> ContiguousArray<A>()
{
  _ViewInputs.base.modify();

  return result;
}

double destroy for SectionConfiguration(uint64_t a1)
{
  __swift_destroy_boxed_opaque_existential_1((a1 + 8));

  if (*(a1 + 64))
  {
  }

  return result;
}

uint64_t type metadata completion function for CountingIndex(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t concatenate<A, B>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v13 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v19, v17);
  (*(v13 + 16))(v15, a2, a4);
  return ConcatenatedCollection.init(_base1:base2:)(v19, v15, a3, a4, a5, a6, a7);
}

uint64_t ConcatenatedCollection.endIndex.getter@<X0>(uint64_t x8_0@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness - 8);
  v5 = &v7 - v4;
  dispatch thunk of Collection.endIndex.getter();
  return ConcatenatedCollectionIndex.init(second:)(v5, x8_0);
}

uint64_t static ConcatenatedCollectionIndex.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v55 = a1;
  v56 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v53 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v50 = v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v49 = v46 - v9;
  v10 = swift_getAssociatedTypeWitness();
  v52 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v48 = v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v47 = v46 - v13;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v15 = swift_getAssociatedConformanceWitness();
  v57[0] = v10;
  v57[1] = AssociatedTypeWitness;
  v54 = AssociatedTypeWitness;
  v46[0] = v15;
  v46[1] = AssociatedConformanceWitness;
  v57[2] = AssociatedConformanceWitness;
  v57[3] = v15;
  v16 = type metadata accessor for _ConcatenatedCollectionIndexRepresentation(0, v57);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = v46 - v21;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v51 = *(TupleTypeMetadata2 - 8);
  v24 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v26 = v46 - v25;
  v28 = *(v27 + 48);
  v29 = *(v17 + 16);
  v29(v46 - v25, v55, v16, v24);
  (v29)(&v26[v28], v56, v16);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (v29)(v19, v26, v16);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v31 = v53;
      v30 = v54;
      v32 = *(v53 + 32);
      v33 = v49;
      v32(v49, v19, v54);
      v34 = &v26[v28];
      v35 = v50;
      v32(v50, v34, v30);
      v36 = dispatch thunk of static Equatable.== infix(_:_:)();
      v37 = *(v31 + 8);
      v37(v35, v30);
      v37(v33, v30);
      goto LABEL_10;
    }

    (*(v53 + 8))(v19, v54);
LABEL_7:
    v36 = 0;
    v17 = v51;
    v16 = TupleTypeMetadata2;
    goto LABEL_10;
  }

  (v29)(v22, v26, v16);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v52 + 8))(v22, v10);
    goto LABEL_7;
  }

  v38 = v52;
  v39 = *(v52 + 32);
  v40 = v47;
  v39(v47, v22, v10);
  v41 = &v26[v28];
  v42 = v48;
  v39(v48, v41, v10);
  v43 = v40;
  v36 = dispatch thunk of static Equatable.== infix(_:_:)();
  v44 = *(v38 + 8);
  v44(v42, v10);
  v44(v43, v10);
LABEL_10:
  (*(v17 + 8))(v26, v16);
  return v36 & 1;
}

uint64_t SectionAccumulator.RowIDs.endIndex.getter()
{
  v1 = *(*v0 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *v0 + 56 * v1;
  v4 = *(v2 + 16);
  v3 = *(v2 + 24);
  result = v3 + v4;
  if (__OFADD__(v3, v4))
  {
    __break(1u);
  }

  return result;
}

void protocol witness for Collection.startIndex.getter in conformance SectionAccumulator.RowIDs(void *a1@<X8>)
{
  if (*(*v1 + 16))
  {
    *a1 = *(*v1 + 80);
  }

  else
  {
    *a1 = 0;
  }
}

uint64_t default argument 1 of GraphHost.asyncTransaction(_:id:_:)@<X0>(_DWORD *a1@<X8>)
{
  result = _threadTransactionID();
  *a1 = result;
  return result;
}

uint64_t static ConditionallyArchivableView._viewListCount(inputs:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1 + 1;
  v4 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for ArchivedViewInput);
  if (!_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA17ArchivedViewInputV_Tt0B5(v4, v10) && one-time initialization token for defaultValue != -1)
  {
    swift_once();
  }

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = v4;
  v6 = *v3;
  v12 = *(v3 + 1);
  v7 = *(v3 + 3);
  v13 = *(v3 + 2);
  v14 = v7;
  v15 = v3[8];
  v11 = v6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return (*(AssociatedConformanceWitness + 40))(&v10, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t _Glass.Variant.explicitMaterial.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[1];
  if ((v3 & 0xC0000000) == 0x40000000)
  {
    v4 = *v1;
    v5 = v3 & 0xFFFFFFFF000000FFLL;
    result = outlined copy of Material.ID(v4, v3);
  }

  else
  {
    v4 = 0;
    v5 = 255;
  }

  *a1 = v4;
  a1[1] = v5;
  return result;
}

uint64_t AccessibilityValueStorage.init(description:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  *a5 = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 32) = 0;
  outlined assign with copy of AnyAccessibilityValue?(v12, a5);
  if (a4)
  {
    type metadata accessor for AnyAccessibilityValue?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text>, &type metadata for Text, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_18DDA6EB0;
    *(v10 + 32) = a1;
    *(v10 + 40) = a2;
    *(v10 + 48) = a3 & 1;
    *(v10 + 56) = a4;
    outlined copy of Text.Storage(a1, a2, a3 & 1);

    outlined consume of Text?(a1, a2, a3, a4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  result = _sypSgWOhTm_11(v12, &lazy cache variable for type metadata for AnyAccessibilityValue?, &type metadata for AnyAccessibilityValue);
  *(a5 + 40) = v10;
  return result;
}

void type metadata accessor for ImageProviderBox<Image.RenderingModeProvider>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ImageProviderBox<Image.RenderingModeProvider>)
  {
    lazy protocol witness table accessor for type Image.RenderingModeProvider and conformance Image.RenderingModeProvider();
    v4 = type metadata accessor for ImageProviderBox(a1, &type metadata for Image.RenderingModeProvider, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for ImageProviderBox<Image.RenderingModeProvider>);
    }
  }
}

uint64_t Image.renderingMode(_:)(char *a1, uint64_t a2)
{
  v3 = *a1;
  type metadata accessor for ImageProviderBox<Image.RenderingModeProvider>(0);
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = v3;

  return v4;
}

void lazy protocol witness table accessor for type Image.RenderingModeProvider and conformance Image.RenderingModeProvider()
{
  if (!lazy protocol witness table cache variable for type Image.RenderingModeProvider and conformance Image.RenderingModeProvider)
  {
    swift_getWitnessTable(protocol conformance descriptor for Image.RenderingModeProvider, &type metadata for Image.RenderingModeProvider, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Image.RenderingModeProvider and conformance Image.RenderingModeProvider);
  }
}

{
  if (!lazy protocol witness table cache variable for type Image.RenderingModeProvider and conformance Image.RenderingModeProvider)
  {
    swift_getWitnessTable(protocol conformance descriptor for Image.RenderingModeProvider, &type metadata for Image.RenderingModeProvider, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Image.RenderingModeProvider and conformance Image.RenderingModeProvider);
  }
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance _RotationEffect(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

uint64_t _s7SwiftUI22GeometryEffectProviderPAAE05_makecD08modifier6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVy0D0QzG_AA01_J6InputsVAiA01_L0V_APtctFZAA09_RotationD0V_Tt3B5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, void *a4@<X8>)
{
  v75 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 32);
  v74[1] = *(a2 + 16);
  v74[2] = v5;
  v74[0] = *a2;
  v6 = WORD2(v5);
  if ((BYTE4(v5) & 0x20) == 0)
  {
    v7 = *(a2 + 48);
    v70 = *(a2 + 32);
    v71 = v7;
    v72 = *(a2 + 64);
    v73 = *(a2 + 80);
    v8 = *(a2 + 16);
    v68 = *a2;
    v69 = v8;
    return (a3)(a1, &v68);
  }

  LODWORD(v68) = a1;
  _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA15_RotationEffectV_Tt1B5(&v68, v74);
  v10 = v68;
  if (one-time initialization token for layoutDirection != -1)
  {
    swift_once();
  }

  v11 = static CachedEnvironment.ID.layoutDirection;
  swift_beginAccess();
  LODWORD(v11) = specialized CachedEnvironment.attribute<A>(id:_:)(v11, closure #1 in _GraphInputs.layoutDirection.getter, 0);
  v12 = *(a2 + 16);
  v66 = *a2;
  v67 = v12;
  v50 = *(a2 + 32);
  v64 = *(a2 + 36);
  v65 = *(a2 + 52);
  v54 = *(a2 + 76);
  v13 = *(a2 + 48);
  v70 = *(a2 + 32);
  v71 = v13;
  v72 = *(a2 + 64);
  v73 = *(a2 + 80);
  v14 = *(a2 + 16);
  v68 = *a2;
  v69 = v14;
  outlined init with copy of _ViewInputs(a2, v61);
  v15 = CachedEnvironment.animatedCGSize(for:)(&v68);
  v16 = *(a2 + 48);
  v70 = *(a2 + 32);
  v71 = v16;
  v72 = *(a2 + 64);
  v73 = *(a2 + 80);
  v17 = *(a2 + 16);
  v68 = *a2;
  v69 = v17;
  v18 = CachedEnvironment.animatedPosition(for:)(&v68);
  swift_endAccess();
  v19 = *(a2 + 60);
  v47 = v11;
  v48 = v10;
  *&v68 = __PAIR64__(v15, v10);
  *(&v68 + 1) = __PAIR64__(v19, v18);
  LODWORD(v69) = v11;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for GeometryEffectTransform<_TransformEffect>(0, &lazy cache variable for type metadata for GeometryEffectTransform<_RotationEffect>, lazy protocol witness table accessor for type _RotationEffect and conformance _RotationEffect, &type metadata for _RotationEffect, type metadata accessor for GeometryEffectTransform);
  lazy protocol witness table accessor for type GeometryEffectTransform<_RotationEffect> and conformance GeometryEffectTransform<A>();
  v20 = Attribute.init<A>(body:value:flags:update:)();
  specialized static GraphHost.currentHost.getter();
  type metadata accessor for ViewGraph();
  v21 = *(swift_dynamicCastClassUnconditional() + 248);

  v22 = *(a2 + 64);
  v23 = *(a2 + 72);
  if (one-time initialization token for pixelLength != -1)
  {
    swift_once();
  }

  v24 = static CachedEnvironment.ID.pixelLength;
  swift_beginAccess();
  v25 = specialized CachedEnvironment.attribute<A>(id:_:)(v24, key path getter for EnvironmentValues.pixelLength : EnvironmentValues, 0);
  swift_endAccess();
  *&v68 = __PAIR64__(v23, v22);
  DWORD2(v68) = v25;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type RoundedSize and conformance RoundedSize();
  v26 = Attribute.init<A>(body:value:flags:update:)();
  v27 = v50 | 0x1C;
  v61[0] = v66;
  v61[1] = v67;
  *&v62[4] = v64;
  *&v62[20] = v65;
  *v62 = v50 | 0x1C;
  *&v62[28] = v20;
  *v63 = v21;
  *&v63[4] = v21;
  *&v63[8] = v26;
  *&v63[12] = v54;
  *v59 = *v62;
  *&v59[16] = *&v62[16];
  *v60 = *v63;
  *&v60[16] = HIDWORD(v54);
  v57 = v66;
  v58 = v67;
  v28 = outlined init with copy of _ViewInputs(v61, &v68);
  a3(v55, v28, &v57);
  v70 = *v59;
  v71 = *&v59[16];
  v72 = *v60;
  v73 = *&v60[16];
  v68 = v57;
  v69 = v58;
  outlined destroy of _ViewInputs(&v68);
  v29 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(*(a2 + 48));
  v30 = v54;
  if ((v29 & 1) == 0)
  {
    goto LABEL_17;
  }

  v53 = v20;
  v31 = ++lastIdentity;
  v51 = *&v74[0];
  if ((v6 & 0x100) == 0)
  {
    v32 = *MEMORY[0x1E698D3F8];
LABEL_10:
    v33 = *(a2 + 48);
    *v59 = *(a2 + 32);
    *&v59[16] = v33;
    *v60 = *(a2 + 64);
    *&v60[16] = *(a2 + 80);
    v34 = *(a2 + 16);
    v57 = *a2;
    v58 = v34;
    swift_beginAccess();
    v35 = CachedEnvironment.animatedPosition(for:)(&v57);
    v36 = *(a2 + 48);
    *v59 = *(a2 + 32);
    *&v59[16] = v36;
    *v60 = *(a2 + 64);
    *&v60[16] = *(a2 + 80);
    v37 = *(a2 + 16);
    v57 = *a2;
    v58 = v37;
    v38 = CachedEnvironment.animatedCGSize(for:)(&v57);
    swift_endAccess();
    v39 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v55[0]);
    if ((v39 & 0x100000000) != 0)
    {
      v40 = v32;
    }

    else
    {
      v40 = v39;
    }

    BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
    v41 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v51, v57);
    if (v41)
    {
      v42 = *(v41 + 72);
    }

    else
    {
      v42 = 0;
    }

    v43 = *(a2 + 68);
    *&v57 = __PAIR64__(v48, v31);
    *(&v57 + 1) = __PAIR64__(v38, v35);
    *&v58 = __PAIR64__(v43, v47);
    DWORD2(v58) = v40;
    BYTE12(v58) = v42;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for GeometryEffectTransform<_TransformEffect>(0, &lazy cache variable for type metadata for GeometryEffectDisplayList<_RotationEffect>, lazy protocol witness table accessor for type _RotationEffect and conformance _RotationEffect, &type metadata for _RotationEffect, type metadata accessor for GeometryEffectDisplayList);
    lazy protocol witness table accessor for type GeometryEffectDisplayList<_RotationEffect> and conformance GeometryEffectDisplayList<A>();
    v44 = Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v57) = 0;
    PreferencesOutputs.subscript.setter(v44, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
    v30 = v54;
    v20 = v53;
LABEL_17:
    v57 = v66;
    v58 = v67;
    *v59 = v27;
    *&v59[4] = v64;
    *&v59[20] = v65;
    *&v59[28] = v20;
    *v60 = v21;
    *&v60[4] = v21;
    *&v60[8] = v26;
    *&v60[12] = v30;
    result = outlined destroy of _ViewInputs(&v57);
    *a4 = v55[0];
    a4[1] = v55[1];
    return result;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(*&v74[0], &v57);
  result = AGWeakAttributeGetAttribute();
  v32 = *MEMORY[0x1E698D3F8];
  if (result != *MEMORY[0x1E698D3F8])
  {
    v56[0] = v31;
    v45 = Attribute<A>.subscript.modify(&v57, result);
    v46 = _DisplayList_StableIdentityScope.pushIdentity(_:)(v56);
    (v45)(&v57, 0, v46);
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance _RotationEffect@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, void *a4@<X8>)
{
  v4 = *a1;
  v5 = *(a2 + 48);
  v8[2] = *(a2 + 32);
  v8[3] = v5;
  v8[4] = *(a2 + 64);
  v9 = *(a2 + 80);
  v6 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v6;
  return _s7SwiftUI22GeometryEffectProviderPAAE05_makecD08modifier6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVy0D0QzG_AA01_J6InputsVAiA01_L0V_APtctFZAA09_RotationD0V_Tt3B5(v4, v8, a3, a4);
}

unsigned int *_s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA15_RotationEffectV_Tt1B5(unsigned int *result, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if ((*(a2 + 36) & 1) == 0)
  {
    v2 = *result;
    v3 = *(a2 + 8);
    v4 = *(a2 + 24);
    v5 = *(a2 + 28);
    v6 = *(a2 + 16);
    v7 = result;
    swift_beginAccess();
    v8 = *(v6 + 16);
    v10[0] = v2;
    v10[1] = v8;
    v10[2] = v4;
    v10[3] = v3;
    v10[4] = v5;
    v12 = 0;
    v13 = 0;
    v11 = 0;
    LOBYTE(v14) = 1;
    v15 = 0;
    v16 = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for AnimatableAttribute<VariableBlurStyle>(0, &lazy cache variable for type metadata for AnimatableAttribute<_RotationEffect>, lazy protocol witness table accessor for type _RotationEffect and conformance _RotationEffect, &type metadata for _RotationEffect);
    lazy protocol witness table accessor for type AnimatableAttribute<GlassEffectShapeModifier> and conformance AnimatableAttribute<A>(&lazy protocol witness table cache variable for type AnimatableAttribute<_RotationEffect> and conformance AnimatableAttribute<A>, &lazy cache variable for type metadata for AnimatableAttribute<_RotationEffect>, lazy protocol witness table accessor for type _RotationEffect and conformance _RotationEffect, &type metadata for _RotationEffect);
    v9 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of AnimatableAttribute<VariableBlurStyle>(v10, &lazy cache variable for type metadata for AnimatableAttribute<_RotationEffect>, lazy protocol witness table accessor for type _RotationEffect and conformance _RotationEffect, &type metadata for _RotationEffect);
    *v7 = v9;
    AGGraphGetFlags();
    return AGGraphSetFlags();
  }

  return result;
}

void lazy protocol witness table accessor for type GeometryEffectDisplayList<_RotationEffect> and conformance GeometryEffectDisplayList<A>()
{
  if (!lazy protocol witness table cache variable for type GeometryEffectDisplayList<_RotationEffect> and conformance GeometryEffectDisplayList<A>)
  {
    type metadata accessor for GeometryEffectTransform<_TransformEffect>(255, &lazy cache variable for type metadata for GeometryEffectDisplayList<_RotationEffect>, lazy protocol witness table accessor for type _RotationEffect and conformance _RotationEffect, &type metadata for _RotationEffect, type metadata accessor for GeometryEffectDisplayList);
    swift_getWitnessTable(protocol conformance descriptor for GeometryEffectDisplayList<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type GeometryEffectDisplayList<_RotationEffect> and conformance GeometryEffectDisplayList<A>);
  }
}

double Image.RenderingModeProvider.resolve(in:)@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = type metadata accessor for ImageResolutionContext(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v10 = (v28 - v9);
  v11 = *v2;
  v12 = *(v2 + 8);
  outlined init with copy of ImageResolutionContext(a1, v7);
  v13 = v7[1];
  v38 = *v7;
  v39 = v13;
  v37 = v12;

  v14 = EnvironmentValues.imageIsTemplate(renderingMode:)(&v37);

  if ((v14 & 1) == 0)
  {
    v15 = *(v5 + 32);
    if (*(v7 + v15) == 8)
    {
      *(v7 + v15) = 1;
    }
  }

  outlined init with take of ImageResolutionContext(v7, v10);
  (*(*v11 + 80))(v28, v10);
  v16 = BYTE8(v28[0]);
  if (BYTE8(v28[0]) == 2)
  {
    outlined destroy of ImageResolutionContext(v10);
  }

  else
  {
    v17 = v10[1];
    v38 = *v10;
    v39 = v17;
    v37 = v12;

    v18 = EnvironmentValues.imageIsTemplate(renderingMode:)(&v37);

    v19 = 0x3F8000003F800000;
    if (v18)
    {
      v20 = 2143289344;
    }

    else
    {
      v19 = 0;
      v20 = 0;
    }

    *&v29[12] = v19;
    *&v29[20] = v19;
    *&v29[28] = v20;
    LOBYTE(v30) = (v18 & 1) == 0;
    v21 = v36[26];

    *&v36[16] = 0;
    *&v36[24] = (v16 != 255) & v18;
    outlined destroy of ImageResolutionContext(v10);
    if ((v21 & 2) != 0)
    {
      v36[26] = 2;
    }

    else
    {
      v36[26] = 0;
    }
  }

  v22 = v35;
  a2[8] = v34;
  a2[9] = v22;
  a2[10] = *v36;
  *(a2 + 171) = *&v36[11];
  v23 = v31;
  a2[4] = v30;
  a2[5] = v23;
  v24 = v33;
  a2[6] = v32;
  a2[7] = v24;
  v25 = v28[1];
  *a2 = v28[0];
  a2[1] = v25;
  result = *v29;
  v27 = *&v29[16];
  a2[2] = *v29;
  a2[3] = v27;
  return result;
}

uint64_t outlined init with take of ImageResolutionContext(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageResolutionContext(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t _s7SwiftUI15_RendererEffectPAAE05_makecD06effect6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVyxG_AA01_I6InputsVAiA01_K0V_ANtctFZAA014_GeometryGroupD0V_Tt3B5@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, void *a4@<X8>)
{
  v72 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 16);
  v70 = *a2;
  v71 = v5;
  v6 = *(a2 + 32);
  v68 = *(a2 + 36);
  v69 = *(a2 + 52);
  v8 = *(a2 + 64);
  v7 = *(a2 + 68);
  v9 = *(a2 + 72);
  v10 = *(a2 + 76);
  v11 = *(a2 + 60);
  v12 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(*(a2 + 48));
  v49 = v10;
  if (v12)
  {
    v47 = v6;
    v13 = *(a2 + 48);
    v14 = *(a2 + 64);
    v15 = *(a2 + 16);
    v64 = *(a2 + 32);
    v65 = v13;
    v66 = v14;
    v67 = *(a2 + 80);
    v62 = *a2;
    v63 = v15;
    swift_beginAccess();
    outlined init with copy of _ViewInputs(a2, v59);
    v16 = CachedEnvironment.animatedPosition(for:)(&v62);
    swift_endAccess();
    *&v62 = __PAIR64__(*(a2 + 60), v16);
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    lazy protocol witness table accessor for type ResetPositionTransform and conformance ResetPositionTransform();
    v11 = Attribute.init<A>(body:value:flags:update:)();
    specialized static GraphHost.currentHost.getter();
    type metadata accessor for ViewGraph();
    v8 = *(swift_dynamicCastClassUnconditional() + 248);

    v17 = *(a2 + 64);
    v18 = *(a2 + 72);
    if (one-time initialization token for pixelLength != -1)
    {
      swift_once();
    }

    v19 = static CachedEnvironment.ID.pixelLength;
    swift_beginAccess();
    v20 = specialized CachedEnvironment.attribute<A>(id:_:)(v19, key path getter for EnvironmentValues.pixelLength : EnvironmentValues, 0);
    swift_endAccess();
    *&v62 = __PAIR64__(v18, v17);
    DWORD2(v62) = v20;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    lazy protocol witness table accessor for type RoundedSize and conformance RoundedSize();
    v9 = Attribute.init<A>(body:value:flags:update:)();
    v6 = v47 | 0x1C;
    v7 = v8;
    v10 = v49;
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v62);
  }

  v59[0] = v70;
  v59[1] = v71;
  *&v60[4] = v68;
  *&v60[20] = v69;
  *v60 = v6;
  v46 = v11;
  *&v60[28] = v11;
  *v61 = v8;
  *&v61[4] = v7;
  *&v61[8] = v9;
  *&v61[12] = v10;
  *v57 = *v60;
  *&v57[16] = *&v60[16];
  *v58 = *v61;
  *&v58[16] = HIDWORD(v10);
  v55 = v70;
  v56 = v71;
  v21 = outlined init with copy of _ViewInputs(v59, &v62);
  a3(v53, v21, &v55);
  v64 = *v57;
  v65 = *&v57[16];
  v66 = *v58;
  v67 = *&v58[16];
  v62 = v55;
  v63 = v56;
  outlined destroy of _ViewInputs(&v62);
  if ((v12 & 1) == 0)
  {
    goto LABEL_18;
  }

  v48 = v6;
  v22 = lastIdentity + 1;
  lastIdentity = v22;
  v23 = *a2;
  v24 = *(a2 + 16);
  v52 = v22;
  if ((*(a2 + 37) & 1) == 0)
  {
    v25 = *MEMORY[0x1E698D3F8];
LABEL_9:
    v26 = *(a2 + 48);
    *v57 = *(a2 + 32);
    *&v57[16] = v26;
    *v58 = *(a2 + 64);
    *&v58[16] = *(a2 + 80);
    v27 = *(a2 + 16);
    v55 = *a2;
    v56 = v27;
    swift_beginAccess();
    v28 = CachedEnvironment.animatedPosition(for:)(&v55);
    v29 = *(a2 + 48);
    *v57 = *(a2 + 32);
    *&v57[16] = v29;
    *v58 = *(a2 + 64);
    *&v58[16] = *(a2 + 80);
    v30 = *(a2 + 16);
    v55 = *a2;
    v56 = v30;
    v31 = CachedEnvironment.animatedSize(for:)(&v55);
    swift_endAccess();
    v32 = *(v24 + 16);
    v33 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v53[0]);
    if ((v33 & 0x100000000) == 0)
    {
      v25 = v33;
    }

    BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
    v34 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v23, v55);
    if (v34)
    {
      v35 = *(v34 + 72);
    }

    else
    {
      v35 = 0;
    }

    BloomFilter.init(hashValue:)(&type metadata for _ViewInputs.ScrapeableParentID);
    v36 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA11_ViewInputsVAAE18ScrapeableParentID33_0EC4D15D4D4D8FD0340271BA6BA4D1B4LLV_Tt0B5(v23, v55);
    if (v36)
    {
      v37 = *(v36 + 72);
    }

    else
    {
      v37 = 0;
    }

    v38 = *(a2 + 60);
    v39 = *(a2 + 68);
    v40 = *(a2 + 76);
    *&v55 = __PAIR64__(a1, v52);
    *(&v55 + 1) = __PAIR64__(v31, v28);
    *&v56 = __PAIR64__(v39, v38);
    *(&v56 + 1) = __PAIR64__(v40, v32);
    *v57 = v25;
    v57[4] = v35;
    *&v57[8] = 0;
    *&v57[12] = v37;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(0, &lazy cache variable for type metadata for RendererEffectDisplayList<_GeometryGroupEffect>, &type metadata for _GeometryGroupEffect, &protocol witness table for _GeometryGroupEffect, type metadata accessor for RendererEffectDisplayList);
    lazy protocol witness table accessor for type RendererEffectDisplayList<_GeometryGroupEffect> and conformance RendererEffectDisplayList<A>();
    v41 = Attribute.init<A>(body:value:flags:update:)();
    LOBYTE(v55) = 0;
    PreferencesOutputs.subscript.setter(v41, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
    v10 = v49;
    v6 = v48;
LABEL_18:
    v55 = v70;
    v56 = v71;
    *v57 = v6;
    *&v57[4] = v68;
    *&v57[20] = v69;
    *&v57[28] = v46;
    *v58 = v8;
    *&v58[4] = v7;
    *&v58[8] = v9;
    *&v58[12] = v10;
    result = outlined destroy of _ViewInputs(&v55);
    *a4 = v53[0];
    a4[1] = v53[1];
    return result;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(v23, &v55);
  result = AGWeakAttributeGetAttribute();
  v25 = *MEMORY[0x1E698D3F8];
  if (result != *MEMORY[0x1E698D3F8])
  {
    v54[0] = v22;
    v43 = Attribute<A>.subscript.modify(&v55, result);
    v44 = _DisplayList_StableIdentityScope.pushIdentity(_:)(v54);
    (v43)(&v55, 0, v44);
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

void lazy protocol witness table accessor for type RendererEffectDisplayList<_GeometryGroupEffect> and conformance RendererEffectDisplayList<A>()
{
  if (!lazy protocol witness table cache variable for type RendererEffectDisplayList<_GeometryGroupEffect> and conformance RendererEffectDisplayList<A>)
  {
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(255, &lazy cache variable for type metadata for RendererEffectDisplayList<_GeometryGroupEffect>, &type metadata for _GeometryGroupEffect, &protocol witness table for _GeometryGroupEffect, type metadata accessor for RendererEffectDisplayList);
    swift_getWitnessTable(protocol conformance descriptor for RendererEffectDisplayList<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type RendererEffectDisplayList<_GeometryGroupEffect> and conformance RendererEffectDisplayList<A>);
  }
}

void *specialized static Layout.makeLayoutView(root:inputs:body:)@<X0>(unsigned int a1@<W0>, __int128 *a2@<X1>, void (*a3)(void *__return_ptr, uint64_t, __int128 *)@<X2>, uint64_t a4@<X8>)
{
  v56 = *MEMORY[0x1E69E9840];
  v25 = a1;
  v7 = a2[1];
  v47[0] = *a2;
  v47[1] = v7;
  v48 = a2[2];
  outlined init with copy of _GraphInputs(v47, &v50);
  _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA9AnyLayoutV_Tt1B5(&v25, v47);
  outlined destroy of _GraphInputs(v47);
  v8 = WORD2(v48);
  v49 = *&v47[0];
  v9 = a2[3];
  v43 = a2[2];
  v44 = v9;
  v45 = a2[4];
  v46 = *(a2 + 20);
  v10 = a2[1];
  v41 = *a2;
  v42 = v10;
  v11 = DWORD1(v48) & 0xFFFFFFF3;
  DWORD1(v43) = DWORD1(v48) & 0xFFFFFFF3;
  LODWORD(v39[0]) = v25;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  outlined init with copy of _ViewInputs(a2, &v50);
  type metadata accessor for Axis?();
  lazy protocol witness table accessor for type AnyLayoutProperties and conformance AnyLayoutProperties();
  v12 = Attribute.init<A>(body:value:flags:update:)();

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA23DynamicStackOrientationV_Tt2g5(&v41, v12);
  outlined destroy of PropertyList(&v49);
  v13 = v41;
  BloomFilter.init(hashValue:)(&type metadata for ArchivedViewInput);
  v14 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA17ArchivedViewInputV_Tt0B5(v13, v50);
  if (v14)
  {
    if ((*(v14 + 72) & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    if ((static ArchivedViewInput.defaultValue & 1) == 0)
    {
LABEL_3:
      if ((v8 & 0x800) != 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  BloomFilter.init(hashValue:)(&type metadata for ViewListOptionsInput);
  v19 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA04ViewS12OptionsInputV_Tt0B5(v13, v50);
  if (v19)
  {
    v20 = *(v19 + 72) | 0x4000;
  }

  else
  {
    v20 = 0x4000;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA04ViewD12OptionsInputV_Tt2B5(&v41, v20);

  if ((v8 & 0x800) == 0)
  {
LABEL_4:
    DWORD1(v43) = v11;
  }

LABEL_5:
  v37[2] = v43;
  v37[3] = v44;
  v37[4] = v45;
  v38 = v46;
  v37[0] = v41;
  v37[1] = v42;
  v52 = v43;
  v53 = v44;
  v54 = v45;
  v55 = v46;
  v50 = v41;
  v51 = v42;
  v15 = outlined init with copy of _ViewInputs(v37, v39);
  a3(v36, v15, &v50);
  v39[2] = v52;
  v39[3] = v53;
  v39[4] = v54;
  v40 = v55;
  v39[0] = v50;
  v39[1] = v51;
  outlined destroy of _ViewInputs(v39);
  outlined init with copy of _ViewListOutputs.Views(v36, v34);
  if (v35)
  {
    v16 = v34[0];
    if (*(&v34[0] + 1))
    {
      LODWORD(v50) = v34[0];
      *(&v50 + 1) = *(&v34[0] + 1);
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList, &protocol descriptor for ViewList);
      lazy protocol witness table accessor for type _ViewListOutputs.ApplyModifiers and conformance _ViewListOutputs.ApplyModifiers();

      v16 = Attribute.init<A>(body:value:flags:update:)();
    }

    v17 = v25;
    v52 = v43;
    v53 = v44;
    v54 = v45;
    v55 = v46;
    v50 = v41;
    v51 = v42;
    outlined init with copy of _ViewInputs(&v50, &v28);
    _s7SwiftUI6LayoutPAAE15makeDynamicView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesV09AttributeL00P0VyAA0F4List_pGtFZAA03AnyC0V_Tt2t4B5(v17, &v50, v16, a4);

    outlined destroy of _ViewInputs(&v50);
  }

  else
  {
    outlined init with take of AnyTrackedValue(v34, v27);
    v18 = v25;
    v52 = v43;
    v53 = v44;
    v54 = v45;
    v55 = v46;
    v50 = v41;
    v51 = v42;
    if ((v8 & 0x800) != 0)
    {
      v21 = a2[3];
      v30 = a2[2];
      v31 = v21;
      v32 = a2[4];
      v33 = *(a2 + 20);
      v22 = a2[1];
      v28 = *a2;
      v29 = v22;
      outlined init with copy of _ViewInputs(&v50, v26);
      v23 = _ViewListOutputs.makeAttribute(viewInputs:)(&v28);
      _s7SwiftUI6LayoutPAAE15makeDynamicView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesV09AttributeL00P0VyAA0F4List_pGtFZAA03AnyC0V_Tt2t4B5(v18, &v50, v23, a4);
    }

    else
    {
      outlined init with copy of _ViewInputs(&v50, &v28);
      _s7SwiftUI6LayoutPAAE14makeStaticView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesVAA01_F13List_Elements_ptFZAA03AnyC0V_Tt4B5(v18, &v50, 2, v27, a4);
    }

    outlined destroy of _ViewInputs(&v50);
    __swift_destroy_boxed_opaque_existential_1(v27);
  }

  outlined destroy of _ViewListOutputs(v36);
  v30 = v43;
  v31 = v44;
  v32 = v45;
  v33 = v46;
  v28 = v41;
  v29 = v42;
  return outlined destroy of _ViewInputs(&v28);
}

void *protocol witness for static Layout._makeLayoutView(root:inputs:body:) in conformance AnyLayout@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, void (*a3)(void *__return_ptr, uint64_t, __int128 *)@<X2>, uint64_t a4@<X8>)
{
  v4 = *a1;
  v5 = *(a2 + 48);
  v8[2] = *(a2 + 32);
  v8[3] = v5;
  v8[4] = *(a2 + 64);
  v9 = *(a2 + 80);
  v6 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v6;
  return specialized static Layout.makeLayoutView(root:inputs:body:)(v4, v8, a3, a4);
}

_DWORD *_s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA9AnyLayoutV_Tt1B5(_DWORD *result, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if ((*(a2 + 36) & 1) == 0)
  {
    v2 = *(a2 + 8);
    v3 = *(a2 + 16);
    v4 = *(a2 + 24);
    v5 = *(a2 + 28);
    v6 = *result;
    v7 = result;
    swift_beginAccess();
    v8 = *(v3 + 16);
    v11[0] = v6;
    v11[1] = v8;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v11[2] = v4;
    v11[3] = v2;
    v15 = 0;
    v11[4] = v5;
    outlined init with copy of AnimatableAttribute<MaterialEffect.Fill>(v11, v10, &lazy cache variable for type metadata for AnimatableAttribute<AnyLayout>, lazy protocol witness table accessor for type AnyLayout and conformance AnyLayout, &type metadata for AnyLayout);
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for AnimatableAttribute<VariableBlurStyle>(0, &lazy cache variable for type metadata for AnimatableAttribute<AnyLayout>, lazy protocol witness table accessor for type AnyLayout and conformance AnyLayout, &type metadata for AnyLayout);
    lazy protocol witness table accessor for type AnimatableAttribute<GlassEffectShapeModifier> and conformance AnimatableAttribute<A>(&lazy protocol witness table cache variable for type AnimatableAttribute<AnyLayout> and conformance AnimatableAttribute<A>, &lazy cache variable for type metadata for AnimatableAttribute<AnyLayout>, lazy protocol witness table accessor for type AnyLayout and conformance AnyLayout, &type metadata for AnyLayout);
    v9 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of AnimatableAttribute<VariableBlurStyle>(v11, &lazy cache variable for type metadata for AnimatableAttribute<AnyLayout>, lazy protocol witness table accessor for type AnyLayout and conformance AnyLayout, &type metadata for AnyLayout);
    outlined destroy of AnimatableAttribute<VariableBlurStyle>(v10, &lazy cache variable for type metadata for AnimatableAttribute<AnyLayout>, lazy protocol witness table accessor for type AnyLayout and conformance AnyLayout, &type metadata for AnyLayout);
    *v7 = v9;
    AGGraphGetFlags();
    return AGGraphSetFlags();
  }

  return result;
}

void lazy protocol witness table accessor for type AnyLayoutProperties and conformance AnyLayoutProperties()
{
  if (!lazy protocol witness table cache variable for type AnyLayoutProperties and conformance AnyLayoutProperties)
  {
    swift_getWitnessTable(protocol conformance descriptor for AnyLayoutProperties, &type metadata for AnyLayoutProperties, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type AnyLayoutProperties and conformance AnyLayoutProperties);
  }
}

void _s7SwiftUI6LayoutPAAE14makeStaticView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesVAA01_F13List_Elements_ptFZAA03AnyC0V_Tt4B5(unsigned int a1@<W0>, __int128 *a2@<X1>, int a3@<W2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v55[2] = *MEMORY[0x1E69E9840];
  v10 = a4[3];
  v11 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v10);
  v12 = (*(v11 + 8))(v10, v11);
  if (v12 == 1)
  {
    if ((a3 & 0x10000) != 0)
    {
      v31 = a4[3];
      v32 = a4[4];
      __swift_project_boxed_opaque_existential_1(a4, v31);
      v55[0] = 0;
      v33 = a2[3];
      v51 = a2[2];
      v52 = v33;
      v53 = a2[4];
      v54 = *(a2 + 20);
      v34 = a2[1];
      v49 = *a2;
      v50 = v34;
      (*(v32 + 16))(v48, v55, &v49, 0, specialized closure #1 in closure #1 in _ViewList_Elements.makeAllElements(inputs:indirectMap:body:), 0, v31, v32);
      v36 = v48[0];
      v35 = v48[1];
      if ((swift_isEscapingClosureAtFileLocation() & 1) == 0)
      {
        if (v36)
        {
          *a5 = v36;
          *(a5 + 8) = v35;
          return;
        }

        goto LABEL_25;
      }

LABEL_28:
      __break(1u);
    }
  }

  else if (!v12 && (a3 & 0x100) != 0)
  {
LABEL_25:
    *a5 = MEMORY[0x1E69E7CC0];
    v37 = *MEMORY[0x1E698D3F8];
    *(a5 + 8) = 0;
    *(a5 + 12) = v37;
    return;
  }

  v46 = 0;
  v47 = 1;
  v41 = *(a2 + 9);
  v42 = v41 & 0x22;
  if ((v41 & 0x22) != 0)
  {
    v13 = *(a2 + 2);
    swift_beginAccess();
    *&v49 = __PAIR64__(*(v13 + 16), a1);
    *(&v49 + 1) = MEMORY[0x1E69E7CC0];
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for IndexingIterator<LayoutSubviews>(0, &lazy cache variable for type metadata for StaticLayoutComputer<AnyLayout>, lazy protocol witness table accessor for type AnyLayout and conformance AnyLayout, &type metadata for AnyLayout, type metadata accessor for StaticLayoutComputer);
    lazy protocol witness table accessor for type StaticLayoutComputer<AnyLayout> and conformance StaticLayoutComputer<A>();
    v14 = Attribute.init<A>(body:value:flags:update:)();
    v15 = *(a2 + 16);
    LODWORD(v49) = *(a2 + 18);
    *(&v49 + 4) = __PAIR64__(v14, v15);
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for Axis?(0, &lazy cache variable for type metadata for [ViewGeometry], &type metadata for ViewGeometry, MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type LayoutChildGeometries and conformance LayoutChildGeometries();
    v46 = Attribute.init<A>(body:value:flags:update:)();
    v47 = 0;
  }

  else
  {
    v14 = 0;
  }

  v44 = 0;
  v45 = MEMORY[0x1E69E7CC0];
  v16 = a4[4];
  v17 = __swift_project_boxed_opaque_existential_1(a4, a4[3]);
  MEMORY[0x1EEE9AC00](v17);
  v39[0] = &v46;
  v39[1] = &v44;
  v40 = &v45;
  v18 = swift_allocObject();
  *(v18 + 16) = closure #2 in static Layout.makeStaticView(root:inputs:properties:list:)partial apply;
  *(v18 + 24) = v38;
  v43 = 0;
  v19 = a2[3];
  v51 = a2[2];
  v52 = v19;
  v53 = a2[4];
  v54 = *(a2 + 20);
  v20 = a2[1];
  v49 = *a2;
  v50 = v20;
  v21 = MEMORY[0x1EEE9AC00](v18);
  (*(v16 + 16))(v55, &v43, &v49, 0, closure #1 in closure #1 in _ViewList_Elements.makeAllElements(inputs:indirectMap:body:)partial apply, v21);
  v22 = v55[0];
  v23 = v55[1];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_28;
  }

  v26 = v41 & 2;
  v27 = v22 == 0;
  if (v22)
  {
    v28 = HIDWORD(v23);
  }

  else
  {
    v22 = MEMORY[0x1E69E7CC0];
    v28 = *MEMORY[0x1E698D3F8];
  }

  if (v27)
  {
    LODWORD(v23) = 0;
  }

  if (v42)
  {
    MEMORY[0x1EEE9AC00](v25);
    v40 = &v45;
    type metadata accessor for IndexingIterator<LayoutSubviews>(0, &lazy cache variable for type metadata for StaticLayoutComputer<AnyLayout>, lazy protocol witness table accessor for type AnyLayout and conformance AnyLayout, &type metadata for AnyLayout, type metadata accessor for StaticLayoutComputer);
    MEMORY[0x1EEE9AC00](v29);
    v38[0] = partial apply for specialized closure #3 in static Layout.makeStaticView(root:inputs:properties:list:);
    v38[1] = v39;
    AGGraphMutateAttribute();
  }

  else
  {
    v14 = *MEMORY[0x1E698D3F8];
  }

  if (v26)
  {
    v30 = v14;
  }

  else
  {
    v30 = v28;
  }

  *a5 = v22;
  *(a5 + 8) = v23 | (v26 << 6);
  *(a5 + 12) = v30;
}

void lazy protocol witness table accessor for type StaticLayoutComputer<AnyLayout> and conformance StaticLayoutComputer<A>()
{
  if (!lazy protocol witness table cache variable for type StaticLayoutComputer<AnyLayout> and conformance StaticLayoutComputer<A>)
  {
    type metadata accessor for IndexingIterator<LayoutSubviews>(255, &lazy cache variable for type metadata for StaticLayoutComputer<AnyLayout>, lazy protocol witness table accessor for type AnyLayout and conformance AnyLayout, &type metadata for AnyLayout, type metadata accessor for StaticLayoutComputer);
    swift_getWitnessTable(protocol conformance descriptor for StaticLayoutComputer<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type StaticLayoutComputer<AnyLayout> and conformance StaticLayoutComputer<A>);
  }
}

uint64_t AccessibilityPropertiesEntry.unsafeCast<A>(to:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  if (*(*(*(a1 + 16) - 8) + 64) == *(*(a2 - 8) + 64))
  {
    return (*(*(a2 - 8) + 16))(a3, v3);
  }

  __break(1u);
  return result;
}

Swift::Bool __swiftcall Array.merge(with:)(Swift::OpaquePointer with)
{
  v3 = v1;
  v4 = *(v1 + 16);
  v5 = MEMORY[0x193ABF270](*v2, v4);

  swift_getWitnessTable(MEMORY[0x1E69E6328], v3);
  Array.append<A>(contentsOf:)();
  return v5 != MEMORY[0x193ABF270](*v2, v4);
}

uint64_t AnyLayout.init<A>(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for _AnyLayoutBox(0, v7, v8, v9);
  (*(v4 + 16))(v6, a1, a2);
  v10 = _AnyLayoutBox.__allocating_init(_:)(v6);
  (*(v4 + 8))(a1, a2);
  return v10;
}

uint64_t View.mask<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for _MaskEffect(0, v8, v10, v9);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v17 - v14;
  (*(v5 + 16))(v7, a1, a3, v13);
  (*(v5 + 32))(v15, v7, a3);
  View.modifier<A>(_:)();
  return (*(v12 + 8))(v15, v11);
}

void type metadata accessor for _ViewModifier_Content<SafeAreaPaddingModifier>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void _s7SwiftUI21_ViewModifier_ContentVyAA015SafeAreaPaddingD0VGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    v7 = a3();
    v9 = type metadata accessor for _ViewModifier_Content(a1, a4, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void lazy protocol witness table accessor for type GlassEffectLocalModifier and conformance GlassEffectLocalModifier()
{
  if (!lazy protocol witness table cache variable for type GlassEffectLocalModifier and conformance GlassEffectLocalModifier)
  {
    swift_getWitnessTable(protocol conformance descriptor for GlassEffectLocalModifier, &type metadata for GlassEffectLocalModifier, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type GlassEffectLocalModifier and conformance GlassEffectLocalModifier);
  }
}

void type metadata accessor for BodyInput<_ViewModifier_Content<GlassEffectLocalModifier>>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    type metadata accessor for _ViewModifier_Content<GlassEffectLocalModifier>(255, a3, a4, a5);
    v10 = type metadata accessor for BodyInput(a1, v7, v8, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void type metadata accessor for BodyInput<_ViewModifier_Content<GlassEffectLocalModifier>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for BodyInput<_ViewModifier_Content<GlassEffectLocalModifier>>)
  {
    type metadata accessor for _ViewModifier_Content<GlassEffectLocalModifier>(255, &lazy cache variable for type metadata for _ViewModifier_Content<GlassEffectLocalModifier>, lazy protocol witness table accessor for type GlassEffectLocalModifier and conformance GlassEffectLocalModifier, &type metadata for GlassEffectLocalModifier);
    v5 = type metadata accessor for BodyInput(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &lazy cache variable for type metadata for BodyInput<_ViewModifier_Content<GlassEffectLocalModifier>>);
    }
  }
}

void lazy protocol witness table accessor for type ChildEnvironment<Bool> and conformance ChildEnvironment<A>()
{
  if (!lazy protocol witness table cache variable for type ChildEnvironment<Bool> and conformance ChildEnvironment<A>)
  {
    type metadata accessor for _EnvironmentKeyWritingModifier<RedactionReasons>(255, &lazy cache variable for type metadata for ChildEnvironment<Bool>, MEMORY[0x1E69E6370], type metadata accessor for ChildEnvironment);
    swift_getWitnessTable(protocol conformance descriptor for ChildEnvironment<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type ChildEnvironment<Bool> and conformance ChildEnvironment<A>);
  }
}

uint64_t _s7SwiftUI12_GraphInputsV7popLastyq_SgxmAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA016GlassEffectLocalV033_3DF70D9D9D7473F4D189A049B764CFEFLLVGG_AA0jG7ElementAMLLOTt0g5()
{
  v1 = *v0;
  _s7SwiftUI9BodyInput33_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA015FlexInteractionP0VGGMaTm_0(0, &lazy cache variable for type metadata for BodyInput<_ViewModifier_Content<GlassEffectLocalModifier>>, &lazy cache variable for type metadata for _ViewModifier_Content<GlassEffectLocalModifier>, lazy protocol witness table accessor for type GlassEffectLocalModifier and conformance GlassEffectLocalModifier, &type metadata for GlassEffectLocalModifier);
  BloomFilter.init(hashValue:)(v2);
  v3 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA9BodyInput33_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA24GlassEffectLocalModifier33_3DF70D9D9D7473F4D189A049B764CFEFLLVGG_Tt0B5(v1, v10);
  if (v3 && (v4 = v3[9]) != 0)
  {
    v5 = v4[5];
    v6 = v4[2];
    v7 = v4[3];

    outlined copy of BodyInputElement(v6, v7);
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA9BodyInput33_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA016GlassEffectLocalT008_3DF70D9Z23D7473F4D189A049B764CFEFLLVGG_Tt2B5(v0, v5, v9);

  return v6;
}

uint64_t _s7SwiftUI5StackOAASQRzlE2eeoiySbACyxG_AEtFZAA16BodyInputElement33_2BA0A33A15B7F322F46AFB9D0D1A262DLLO_Tt1B5(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2)
    {
      v2 = *(a1 + 40);
      v3 = *(a2 + 40);
      v5 = *(a1 + 16);
      v4 = *(a1 + 24);
      v7 = *(a2 + 16);
      v6 = *(a2 + 24);
      if (*(a1 + 32))
      {
        if (!*(a2 + 32))
        {
          goto LABEL_13;
        }

        type metadata accessor for (_:_:)();

        outlined copy of BodyInputElement(v7, v6);
        v8 = v5;
        v9 = v4;
      }

      else
      {
        if (*(a2 + 32))
        {
          goto LABEL_13;
        }

        type metadata accessor for (_:_:)();

        outlined copy of BodyInputElement(v7, v6);
        v8 = v5;
        v9 = v4;
      }

      outlined copy of BodyInputElement(v8, v9);
      if (AGCompareValues())
      {
        v10 = _s7SwiftUI5StackOAASQRzlE2eeoiySbACyxG_AEtFZAA16BodyInputElement33_2BA0A33A15B7F322F46AFB9D0D1A262DLLO_Tt1B5(v2, v3);
        outlined consume of BodyInputElement(v7, v6);
        outlined consume of BodyInputElement(v5, v4);

        return v10 & 1;
      }

      outlined consume of BodyInputElement(v7, v6);
      outlined consume of BodyInputElement(v5, v4);
    }

LABEL_13:
    v10 = 0;
    return v10 & 1;
  }

  if (a2)
  {
    goto LABEL_13;
  }

  v10 = 1;
  return v10 & 1;
}

void Binding.transaction(_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  (*(*(a2 - 8) + 16))(a3, v3, a2);

  *a3 = a1;
}

double closure #1 in DynamicViewList.WrappedList.viewIDs.getter@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v7 = *a1;
  v8 = type metadata accessor for DynamicViewList.WrappedIDs(255, a3, a4, a4);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for DynamicViewList<A>.WrappedIDs, v8);
  v11 = v10;
  swift_getWitnessTable(protocol conformance descriptor for DynamicViewList<A>.WrappedIDs, v8, WitnessTable);
  type metadata accessor for _ViewList_ID._Views(0, v8, v11, v12);
  v13 = *(a2 + 40);
  v15[0] = v7;
  v15[1] = v13;
  *a5 = _ViewList_ID._Views.__allocating_init(_:isDataDependent:)(v15, 1);

  return result;
}

_BYTE *_ViewList_ID._Views.__allocating_init(_:isDataDependent:)(uint64_t a1, char a2)
{
  v4 = swift_allocObject();
  (*(*(*(*v4 + 128) - 8) + 32))(&v4[*(*v4 + 152)], a1);
  v4[16] = a2;
  return v4;
}

uint64_t protocol witness for Collection.endIndex.getter in conformance DynamicViewList<A>.WrappedIDs@<X0>(uint64_t *a1@<X8>)
{
  result = DynamicViewList.WrappedIDs.endIndex.getter(*v1);
  *a1 = result;
  return result;
}

uint64_t protocol witness for Collection.endIndex.getter in conformance ForEachState<A, B, C>.ForEachViewIDCollection@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = ForEachState.ForEachViewIDCollection.endIndex.getter(a1);
  *a2 = result;
  return result;
}

uint64_t closure #2 in KeyPath.makeInitializeFunction()(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(*a3 + *MEMORY[0x1E69E77B0] + 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v15 - v5;
  v8 = *v7;
  v9 = *(*v7 - 8);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v15 - v12;
  (*(v9 + 16))(&v15 - v12, v11);
  swift_getAtKeyPath();
  (*(v9 + 8))(v13, v8);
  return _sSpsRi_zrlE10initialize2toyxn_tF(v6, a2, v4);
}

uint64_t *specialized HomogeneousCollection.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = *v2;
  v2[4] = a1;
  v4 = *(v3 + 160);

  v5 = ContiguousArray.count.getter();
  v2[2] = v4;
  v2[3] = v5;
  return v2;
}

void HeterogeneousCollection.init(_:)(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  NewAByxGyF7SwiftUI19LazyLayoutCacheItemC_Tg5_0 = a1;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_5:
    v5 = *(a1 + 16);
    goto LABEL_10;
  }

  v5 = 0;
  while (*(*(a1 + 8 * v5 + 32) + 24))
  {
    if (v4 == ++v5)
    {
      goto LABEL_5;
    }
  }

  if (__OFADD__(v5, 1))
  {
    goto LABEL_50;
  }

  if (v5 + 1 != v4)
  {
    v14 = v5 + 5;
    do
    {
      v16 = v14 - 4;
      if (v14 - 4 >= v4)
      {
        goto LABEL_43;
      }

      v17 = *(NewAByxGyF7SwiftUI19LazyLayoutCacheItemC_Tg5_0 + 8 * v14);
      if (*(v17 + 24))
      {
        if (v16 != v5)
        {
          if (v5 >= v4)
          {
            goto LABEL_44;
          }

          v18 = *(NewAByxGyF7SwiftUI19LazyLayoutCacheItemC_Tg5_0 + 32 + 8 * v5);

          v22 = NewAByxGyF7SwiftUI19LazyLayoutCacheItemC_Tg5_0;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            NewAByxGyF7SwiftUI19LazyLayoutCacheItemC_Tg5_0 = _ss22_ContiguousArrayBufferV20_consumeAndCreateNewAByxGyF7SwiftUI19LazyLayoutCacheItemC_Tg5_0(NewAByxGyF7SwiftUI19LazyLayoutCacheItemC_Tg5_0);
            v22 = NewAByxGyF7SwiftUI19LazyLayoutCacheItemC_Tg5_0;
          }

          if (v5 >= *(NewAByxGyF7SwiftUI19LazyLayoutCacheItemC_Tg5_0 + 16))
          {
            goto LABEL_45;
          }

          *(NewAByxGyF7SwiftUI19LazyLayoutCacheItemC_Tg5_0 + 8 * v5 + 32) = v17;

          specialized ContiguousArray._endMutation()();
          v19 = v22;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v19 = _ss22_ContiguousArrayBufferV20_consumeAndCreateNewAByxGyF7SwiftUI19LazyLayoutCacheItemC_Tg5_0(v22);
            v22 = v19;
          }

          if (v16 >= *(v19 + 16))
          {
            goto LABEL_46;
          }

          *(v19 + 8 * v14) = v18;

          specialized ContiguousArray._endMutation()();
          NewAByxGyF7SwiftUI19LazyLayoutCacheItemC_Tg5_0 = v22;
        }

        ++v5;
        v4 = *(NewAByxGyF7SwiftUI19LazyLayoutCacheItemC_Tg5_0 + 16);
      }

      v15 = v14 - 3;
      ++v14;
    }

    while (v15 != v4);
  }

  if (v4 < v5)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
LABEL_10:
    if (__OFADD__(v4, v5 - v4))
    {
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    v21 = NewAByxGyF7SwiftUI19LazyLayoutCacheItemC_Tg5_0;
    if (!swift_isUniquelyReferenced_nonNull_native() || v5 > *(NewAByxGyF7SwiftUI19LazyLayoutCacheItemC_Tg5_0 + 24) >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v5, v4, 0);
    specialized ContiguousArray._endMutation()();
    v6 = *(NewAByxGyF7SwiftUI19LazyLayoutCacheItemC_Tg5_0 + 16);
    v7 = MEMORY[0x1E69E7CC0];
    if (!v6)
    {
LABEL_24:
      *a2 = v21;
      a2[1] = v7;
      a2[2] = 0;
      a2[3] = 0;
      return;
    }

    v20 = MEMORY[0x1E69E7CC0];

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
    v8 = 0;
    v9 = 0;
    v7 = v20;
    while (v8 < *(v21 + 16))
    {
      v10 = *(*(v21 + 8 * v8 + 32) + 24);
      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_40;
      }

      if (HIDWORD(v10))
      {
        goto LABEL_41;
      }

      v11 = __CFADD__(v9, v10);
      v9 += v10;
      if (v11)
      {
        goto LABEL_42;
      }

      v13 = *(v20 + 16);
      v12 = *(v20 + 24);
      if (v13 >= v12 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
      }

      ++v8;
      *(v20 + 16) = v13 + 1;
      *(v20 + 4 * v13 + 32) = v9;
      if (v6 == v8)
      {

        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
}

void destroy for HeterogeneousViewIDsAccumulator(void *a1)
{

  if (a1[5])
  {
    __swift_destroy_boxed_opaque_existential_1(a1 + 2);
  }

  if (a1[10])
  {
    __swift_destroy_boxed_opaque_existential_1(a1 + 7);
  }
}

uint64_t initializeWithCopy for SectionConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 32);
  *(a1 + 32) = v4;
  (**(v4 - 8))(a1 + 8, a2 + 8);
  v5 = *(a2 + 48);
  *(a1 + 48) = v5;
  v6 = *(a2 + 64);
  v7 = v5;
  if (v6)
  {
    *(a1 + 56) = *(a2 + 56);
    v8 = *(a2 + 72);
    *(a1 + 64) = v6;
    *(a1 + 72) = v8;
    *(a1 + 80) = *(a2 + 80);
  }

  else
  {
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 65) = *(a2 + 65);
  }

  v9 = *(a2 + 96);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = v9;
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  v10 = *(a2 + 136);
  v11 = *(a2 + 144);
  *(a1 + 136) = v10;
  *(a1 + 144) = v11;

  return a1;
}

void lazy protocol witness table accessor for type SectionAccumulator.RowIDs and conformance SectionAccumulator.RowIDs()
{
  if (!lazy protocol witness table cache variable for type SectionAccumulator.RowIDs and conformance SectionAccumulator.RowIDs)
  {
    swift_getWitnessTable(protocol conformance descriptor for SectionAccumulator.RowIDs, &type metadata for SectionAccumulator.RowIDs, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type SectionAccumulator.RowIDs and conformance SectionAccumulator.RowIDs);
  }
}

{
  if (!lazy protocol witness table cache variable for type SectionAccumulator.RowIDs and conformance SectionAccumulator.RowIDs)
  {
    swift_getWitnessTable(protocol conformance descriptor for SectionAccumulator.RowIDs, &type metadata for SectionAccumulator.RowIDs, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type SectionAccumulator.RowIDs and conformance SectionAccumulator.RowIDs);
  }
}

{
  if (!lazy protocol witness table cache variable for type SectionAccumulator.RowIDs and conformance SectionAccumulator.RowIDs)
  {
    swift_getWitnessTable(protocol conformance descriptor for SectionAccumulator.RowIDs, &type metadata for SectionAccumulator.RowIDs, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type SectionAccumulator.RowIDs and conformance SectionAccumulator.RowIDs);
  }
}

{
  if (!lazy protocol witness table cache variable for type SectionAccumulator.RowIDs and conformance SectionAccumulator.RowIDs)
  {
    swift_getWitnessTable(protocol conformance descriptor for SectionAccumulator.RowIDs, &type metadata for SectionAccumulator.RowIDs, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type SectionAccumulator.RowIDs and conformance SectionAccumulator.RowIDs);
  }
}

uint64_t ConcatenatedCollection.init(_base1:base2:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  (*(*(a3 - 8) + 32))(a7, a1);
  v15[0] = a3;
  v15[1] = a4;
  v15[2] = a5;
  v15[3] = a6;
  v13 = type metadata accessor for ConcatenatedCollection(0, v15);
  return (*(*(a4 - 8) + 32))(a7 + *(v13 + 52), a2, a4);
}

uint64_t ConcatenatedCollection.startIndex.getter@<X0>(uint64_t x8_0@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness - 8);
  v5 = &v10 - v4;
  v6 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v10 - v7;
  if (dispatch thunk of Collection.isEmpty.getter())
  {
    dispatch thunk of Collection.startIndex.getter();
    return ConcatenatedCollectionIndex.init(second:)(v8, x8_0);
  }

  else
  {
    dispatch thunk of Collection.startIndex.getter();
    return ConcatenatedCollectionIndex.init(first:)(v5, x8_0);
  }
}

uint64_t ConcatenatedCollectionIndex.init(second:)@<X0>(uint64_t a1@<X0>, uint64_t a6@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a6, a1, AssociatedTypeWitness);
  v10[0] = swift_getAssociatedTypeWitness();
  v10[1] = AssociatedTypeWitness;
  v10[2] = swift_getAssociatedConformanceWitness();
  v10[3] = swift_getAssociatedConformanceWitness();
  type metadata accessor for _ConcatenatedCollectionIndexRepresentation(0, v10);
  return swift_storeEnumTagMultiPayload();
}

uint64_t Collection.index(atOffset:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v6 = &v8 - v5;
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.index(_:offsetBy:)();
  return (*(v4 + 8))(v6, AssociatedTypeWitness);
}

uint64_t type metadata completion function for ConcatenatedCollectionIndex(void *a1)
{
  v3[0] = swift_getAssociatedTypeWitness();
  v3[1] = swift_getAssociatedTypeWitness();
  v3[2] = swift_getAssociatedConformanceWitness();
  v3[3] = swift_getAssociatedConformanceWitness();
  result = type metadata accessor for _ConcatenatedCollectionIndexRepresentation(319, v3);
  if (v2 <= 0x3F)
  {
    v3[0] = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t protocol witness for Collection.count.getter in conformance SectionAccumulator.RowIDs()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (v2)
  {
    v3 = *(v1 + 80);
    v4 = SectionAccumulator.RowIDs.endIndex.getter();
    v5 = *(v1 + 80);
  }

  else
  {
    v4 = SectionAccumulator.RowIDs.endIndex.getter();
    v3 = 0;
    v5 = 0;
  }

  result = SectionAccumulator.RowIDs.endIndex.getter();
  if (v3 < v5 || result < v3)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v2)
  {
    v8 = *(v1 + 80);
  }

  else
  {
    v8 = 0;
  }

  result = SectionAccumulator.RowIDs.endIndex.getter();
  if (v4 < v8 || result < v4)
  {
    goto LABEL_16;
  }

  result = v4 - v3;
  if (__OFSUB__(v4, v3))
  {
LABEL_17:
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for Collection.endIndex.getter in conformance SectionAccumulator.RowIDs@<X0>(uint64_t *a1@<X8>)
{
  result = SectionAccumulator.RowIDs.endIndex.getter();
  *a1 = result;
  return result;
}

unint64_t specialized GraphHost.asyncTransaction<A>(_:id:mutation:style:mayDeferUpdate:)(unint64_t a1, int a2, uint64_t a3, uint64_t a4, char a5, char *a6)
{
  v8 = v6;
  v64 = *MEMORY[0x1E69E9840];
  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  v15 = static Update._lock;
  _MovableLockLock(static Update._lock);
  swift_beginAccess();
  if (!*(v8 + 16))
  {
    v17 = 0;
    goto LABEL_43;
  }

  v53 = v15;
  v16 = (a5 & 1) != 0 || AGGraphGetCounter() != 0;
  swift_beginAccess();
  *(v8 + 168) &= a6 & 1;
  v18 = swift_beginAccess();
  v19 = *(v8 + 144);
  v20 = *(v19 + 16);
  v52 = a2;
  if (v20)
  {
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v8 + 144) = v19;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v19 = specialized _ArrayBuffer._consumeAndCreateNew()(v19);
      *(v8 + 144) = v19;
    }

    if (v20 > *(v19 + 16))
    {
      __break(1u);
LABEL_55:
      swift_once();
LABEL_17:
      if (*(static CustomEventTrace.enabledCategories + 2) < 0x55uLL)
      {
        __break(1u);
      }

      else
      {
        if (*(static CustomEventTrace.enabledCategories + 116) == 1 && static CustomEventTrace.recorder)
        {
          *(*(static CustomEventTrace.recorder + 24) + 4) = 16724;
          LODWORD(v57[0]) = v20;
          AGGraphAddTraceEvent();
        }

        *(v8 + 144) = v19;
        swift_endAccess();
        if (v16)
        {
          goto LABEL_49;
        }

        swift_beginAccess();
        if (*(v19 + 16))
        {
          specialized Array._customRemoveLast()(&v59);
          LODWORD(a4) = v60;
          v16 = v61;
          v7 = v59;
          if (v61)
          {
            v19 = HIDWORD(v60);
          }

          else
          {
            outlined consume of AsyncTransaction?(v59, v60, 0);
            specialized Array.remove(at:)(*(*(v8 + 144) + 16) - 1, &v59);
            v7 = v59;
            LODWORD(a4) = v60;
            LODWORD(v19) = HIDWORD(v60);
            v16 = v61;
          }

          swift_endAccess();
          GraphHost.flushTransactions()();
          swift_beginAccess();
          a6 = *(v8 + 144);

          v44 = swift_isUniquelyReferenced_nonNull_native();
          *(v8 + 144) = a6;
          if (v44)
          {
            goto LABEL_46;
          }

          goto LABEL_58;
        }
      }

      __break(1u);
LABEL_58:
      a6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a6 + 2) + 1, 1, a6);
      *(v8 + 144) = a6;
LABEL_46:
      v46 = *(a6 + 2);
      v45 = *(a6 + 3);
      if (v46 >= v45 >> 1)
      {
        a6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v45 > 1), v46 + 1, 1, a6);
      }

      *(a6 + 2) = v46 + 1;
      v47 = &a6[24 * v46];
      *(v47 + 4) = v7;
      *(v47 + 10) = a4;
      *(v47 + 11) = v19;
      *(v47 + 6) = v16;
      *(v8 + 144) = a6;
      swift_endAccess();

LABEL_49:
      v48 = *(v8 + 144);
      v49 = *(v48 + 16);
      if (v49)
      {
        v17 = *(v48 + 24 * v49 + 20);
      }

      else
      {
        v17 = 0;
      }

      v15 = v53;
      goto LABEL_43;
    }

    v20 = v19 + 24 * v20;
    if (*(v20 + 16) == a2)
    {
      v22 = *(v20 + 8);
      if (v22)
      {
        if (a1)
        {
          v57[0] = MEMORY[0x1E69E7CC0];

          v23 = compareLists(_:_:ignoredTypes:)(v22, a1, v57);
          v7 = a1;

          if (v23)
          {
LABEL_16:
            a6 = (v20 + 8);
            specialized AsyncTransaction.append<A>(_:)(a3, a4);
            LODWORD(v20) = *(v20 + 20);
            if (one-time initialization token for enabledCategories == -1)
            {
              goto LABEL_17;
            }

            goto LABEL_55;
          }
        }
      }

      else if (!a1)
      {
        goto LABEL_16;
      }
    }

    *(v8 + 144) = v19;
    swift_endAccess();
    if (!v16)
    {
      GraphHost.flushTransactions()();
    }
  }

  else if ((*(*v8 + 192))(v18))
  {
    v25 = v24;
    ObjectType = swift_getObjectType();
    (*(v25 + 32))(ObjectType, v25);
    swift_unknownObjectRelease();
  }

  v15 = &protocol witness table for CustomGraphMutation;
  v62 = &type metadata for CustomGraphMutation;
  v63 = &protocol witness table for CustomGraphMutation;
  v59 = a3;
  v60 = a4;
  swift_beginAccess();
  v27 = static AsyncTransaction.nextTraceID;
  v51 = a1;

  atomic_fetch_add_explicit(&static AsyncTransaction.nextTraceID, 2u, memory_order_relaxed);
  swift_endAccess();
  outlined init with copy of AnyTrackedValue(&v59, v57);
  v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v30 = v28[2];
  v29 = v28[3];
  v17 = v30 + 1;
  if (v30 >= v29 >> 1)
  {
    v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1, v28);
  }

  __swift_destroy_boxed_opaque_existential_1(&v59);
  v31 = v58;
  v32 = __swift_mutable_project_boxed_opaque_existential_1(v57, v58);
  v33 = MEMORY[0x1EEE9AC00](v32);
  v35 = (&v50 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v36 + 16))(v35, v33);
  v55 = &type metadata for CustomGraphMutation;
  v56 = &protocol witness table for CustomGraphMutation;
  v54 = *v35;
  v28[2] = v17;
  outlined init with take of AnyTrackedValue(&v54, &v28[5 * v30 + 4]);
  __swift_destroy_boxed_opaque_existential_1(v57);
  if (one-time initialization token for enabledCategories != -1)
  {
    swift_once();
  }

  v37 = v52;
  v38 = v51;
  if (*(static CustomEventTrace.enabledCategories + 2) >= 0x55uLL)
  {
    v17 = (v27 >> 1) + 1;
    if (*(static CustomEventTrace.enabledCategories + 116) == 1 && static CustomEventTrace.recorder)
    {
      *(*(static CustomEventTrace.recorder + 24) + 4) = 20820;
      LODWORD(v59) = (v27 >> 1) + 1;
      AGGraphAddTraceEvent();
    }

    swift_beginAccess();
    v31 = *(v8 + 144);

    v39 = swift_isUniquelyReferenced_nonNull_native();
    *(v8 + 144) = v31;
    v15 = v53;
    if (v39)
    {
      goto LABEL_40;
    }
  }

  else
  {
    __break(1u);
  }

  v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v31 + 2) + 1, 1, v31);
  *(v8 + 144) = v31;
LABEL_40:
  v41 = *(v31 + 2);
  v40 = *(v31 + 3);
  if (v41 >= v40 >> 1)
  {
    v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v40 > 1), v41 + 1, 1, v31);
  }

  *(v31 + 2) = v41 + 1;
  v42 = &v31[24 * v41];
  *(v42 + 4) = v38;
  *(v42 + 10) = v37;
  *(v42 + 11) = v17;
  *(v42 + 6) = v28;
  *(v8 + 144) = v31;
  swift_endAccess();

LABEL_43:
  _MovableLockUnlock(v15);
  return v17;
}

void EnvironmentValues.writingMode.getter(_BYTE *a1@<X8>)
{
  v3 = *v1;
  if (*(v1 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA011WritingModeI0023_82074A2E22E8635055FCB3M8D5E40280LLVG_Tt1g5(v3, a1);
  }

  else
  {
    v4 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA011WritingModeS0023_82074A2E22E8635055FCB3W8D5E40280LLVG_Tt0g5(*v1);
    if (v4)
    {
      v5 = *(v4 + 72);
    }

    else
    {
      v5 = 0;
    }

    *a1 = v5;
  }
}

void EnvironmentValues.minimumScaleFactor.getter()
{
  v1 = *v0;
  if (*(v0 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA018MinimumScaleFactorI0VG_Tt1g5(v1);
  }

  else
  {
    _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA018MinimumScaleFactorS0VG_Tt0g5(v1);
  }
}

uint64_t EnvironmentValues.effectiveFont.getter(uint64_t (*a1)(uint64_t), uint64_t (*a2)(uint64_t *, __n128))
{
  v3 = *v2;
  if (v2[1])
  {

    v5 = a1(v3);
  }

  else
  {
    v8[0] = *v2;
    v8[1] = 0;

    v5 = (a2)(v8);
  }

  return v5;
}

void lazy protocol witness table accessor for type ModifiedContent<PlaceholderContentView<OffsetTransition>, _OffsetEffect> and conformance <> ModifiedContent<A, B>()
{
  if (!lazy protocol witness table cache variable for type ModifiedContent<PlaceholderContentView<OffsetTransition>, _OffsetEffect> and conformance <> ModifiedContent<A, B>)
  {
    v4[2] = v0;
    v4[3] = v1;
    type metadata accessor for ModifiedContent<PlaceholderContentView<OffsetTransition>, _OffsetEffect>(255);
    v4[0] = &protocol witness table for PlaceholderContentView<A>;
    v4[1] = &protocol witness table for _OffsetEffect;
    swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v2, v4);
    atomic_store(v3, &lazy protocol witness table cache variable for type ModifiedContent<PlaceholderContentView<OffsetTransition>, _OffsetEffect> and conformance <> ModifiedContent<A, B>);
  }
}

uint64_t Font.platformFont(in:)(unint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (a1[1])
  {

    _s7SwiftUI12PropertyListV7TrackerC12derivedValue_3for0G0QzAC_xmtAA07DerivedC3KeyRzlFAA0i11EnvironmentcJ033_0CBA6217BE011883F496E97230B6CF8FLLVyAA0K6ValuesV011FontContextJ033_3D5D82E35921924EBCD40D1BFB222CC3LLVG_Tt1g5(v3, v21);
  }

  else
  {
    v23[0] = *a1;

    static EnvironmentValues.FontContextKey.value(in:)(v23, v21);
  }

  v14 = v21[1];
  v15 = v22;
  v13 = v21[0];
  *&v23[0] = *(&v22 + 1);

  v4 = MEMORY[0x1E69E7CC0];
  specialized Array.append<A>(contentsOf:)(MEMORY[0x1E69E7CC0]);
  v5 = *&v23[0];
  outlined init with copy of Font.Context(&v13, v23);

  v10 = v13;
  v11 = v14;
  v12 = v15;
  v16[0] = v13;
  v16[1] = v14;
  *&v17 = v15;
  *(&v17 + 1) = v4;
  v23[1] = v13;
  v23[2] = v14;
  v23[3] = v17;
  *&v23[0] = a2;
  *(&v23[0] + 1) = v5;
  outlined init with copy of Font.Context(v16, v18);
  v6 = one-time initialization token for shared;

  if (v6 != -1)
  {
    swift_once();
  }

  specialized ObjectCache.subscript.getter(v23);
  v8 = v7;
  outlined destroy of Font.Context(&v13);
  outlined destroy of Font.FontCache.Key(v23);
  v18[0] = v10;
  v18[1] = v11;
  v19 = v12;
  v20 = v4;
  outlined destroy of Font.Context(v18);
  return v8;
}

uint64_t closure #2 in static _BackgroundShapeModifier.makeShapeView(modifier:inputs:shapeIsBackground:body:modifyPrimaryInputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15[0] = a2;
  v15[1] = a3;
  v15[2] = a4;
  v15[3] = a5;
  v9 = type metadata accessor for _BackgroundShapeModifier(0, v15);
  v10 = *(v9 + 52);
  v14[2] = v9;
  v14[3] = a3;
  v11 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v10, a6, v14, a3, MEMORY[0x1E69E73E0], v11, MEMORY[0x1E69E7410], v12);
  return v15[0];
}

void type metadata accessor for Font?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void type metadata accessor for DynamicBody<ModifierBodyAccessor<GlassEffectLocalModifier>, MainThreadFlags>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for DynamicBody<ModifierBodyAccessor<GlassEffectLocalModifier>, MainThreadFlags>)
  {
    _s7SwiftUI21_ViewModifier_ContentVyAA016GlassEffectLocalD008_3DF70D9J23D7473F4D189A049B764CFEFLLVGMaTm_0(255, &lazy cache variable for type metadata for ModifierBodyAccessor<GlassEffectLocalModifier>, lazy protocol witness table accessor for type GlassEffectLocalModifier and conformance GlassEffectLocalModifier, &type metadata for GlassEffectLocalModifier, type metadata accessor for ModifierBodyAccessor);
    v3 = v2;
    lazy protocol witness table accessor for type ModifierBodyAccessor<GlassEffectLocalModifier> and conformance ModifierBodyAccessor<A>();
    v7[0] = v3;
    v7[1] = &type metadata for MainThreadFlags;
    v7[2] = v4;
    v7[3] = &protocol witness table for MainThreadFlags;
    v5 = type metadata accessor for DynamicBody(a1, v7);
    if (!v6)
    {
      atomic_store(v5, &lazy cache variable for type metadata for DynamicBody<ModifierBodyAccessor<GlassEffectLocalModifier>, MainThreadFlags>);
    }
  }
}

void lazy protocol witness table accessor for type ModifierBodyAccessor<GlassEffectLocalModifier> and conformance ModifierBodyAccessor<A>()
{
  if (!lazy protocol witness table cache variable for type ModifierBodyAccessor<GlassEffectLocalModifier> and conformance ModifierBodyAccessor<A>)
  {
    _s7SwiftUI21_ViewModifier_ContentVyAA016GlassEffectLocalD008_3DF70D9J23D7473F4D189A049B764CFEFLLVGMaTm_0(255, &lazy cache variable for type metadata for ModifierBodyAccessor<GlassEffectLocalModifier>, lazy protocol witness table accessor for type GlassEffectLocalModifier and conformance GlassEffectLocalModifier, &type metadata for GlassEffectLocalModifier, type metadata accessor for ModifierBodyAccessor);
    swift_getWitnessTable(protocol conformance descriptor for ModifierBodyAccessor<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type ModifierBodyAccessor<GlassEffectLocalModifier> and conformance ModifierBodyAccessor<A>);
  }
}

double _s7SwiftUI12_GraphInputsV6append_2toyq__xmtAA0C5InputRzAA0C8ReusableR_AA5StackOyq_G5ValueRtzr0_lFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA016GlassEffectLocalW033_3DF70D9D9D7473F4D189A049B764CFEFLLVGG_AA0kG7ElementANLLOTt0g5(uint64_t a1, uint64_t a2, char a3)
{
  _s7SwiftUI12_GraphInputsV19recordReusableInput33_9FF97745734808976F608CE0DC13C39CLLyyxmAA0cG0RzAA0cF05ValueRpzlFAA04BodyG033_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA016GlassEffectLocalZ033_3DF70D9D9D7473F4D189A049B764CFEFLLVGG_Ttg5();
  v7 = *v3;
  type metadata accessor for BodyInput<_ViewModifier_Content<FlexInteractionModifier>>(0, &lazy cache variable for type metadata for BodyInput<_ViewModifier_Content<GlassEffectLocalModifier>>, &lazy cache variable for type metadata for _ViewModifier_Content<GlassEffectLocalModifier>, lazy protocol witness table accessor for type GlassEffectLocalModifier and conformance GlassEffectLocalModifier, &type metadata for GlassEffectLocalModifier);
  BloomFilter.init(hashValue:)(v8);
  v9 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA9BodyInput33_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA24GlassEffectLocalModifier33_3DF70D9D9D7473F4D189A049B764CFEFLLVGG_Tt0B5(v7, v14);
  if (v9)
  {
    v10 = v9[9];
  }

  else
  {
    v10 = 0;
  }

  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  *(v11 + 32) = a3 & 1;
  *(v11 + 40) = v10;
  outlined copy of BodyInputElement(a1, a2);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA9BodyInput33_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAA21_ViewModifier_ContentVyAA016GlassEffectLocalT008_3DF70D9Z23D7473F4D189A049B764CFEFLLVGG_Tt2B5(v3, v11, v13);

  return result;
}

uint64_t sub_18D272F94()
{
  outlined consume of BodyInputElement(*(v0 + 16), *(v0 + 24));

  return swift_deallocObject();
}

void type metadata accessor for _ViewModifier_Content<GlassEffectLocalModifier>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    v7 = a3();
    v9 = type metadata accessor for _ViewModifier_Content(a1, a4, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void _s7SwiftUI21_ViewModifier_ContentVyAA016GlassEffectLocalD008_3DF70D9J23D7473F4D189A049B764CFEFLLVGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t static AnyTransition.modifier<A>(active:identity:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a2;
  v5 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22 - v9;
  v13 = type metadata accessor for ModifierTransition(0, v11, v12, v12);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v22 - v16;
  v18 = *(v5 + 16);
  v18(v10, a1, a3, v15);
  (v18)(v7, v23, a3);
  v19 = *(v5 + 32);
  v19(v17, v10, a3);
  v19(&v17[*(v13 + 36)], v7, a3);
  swift_getWitnessTable(protocol conformance descriptor for ModifierTransition<A>, v13);
  v20 = specialized AnyTransition.init<A>(_:)(v17, v13);
  (*(v14 + 8))(v17, v13);
  return v20;
}

uint64_t type metadata completion function for ModifierTransition(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for _TraitWritingModifier(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v6)
  {
LABEL_23:
    v12 = *(v5 + 48);

    return v12(a1);
  }

  v8 = 8 * v7;
  if (v7 <= 3)
  {
    v10 = ((a2 - v6 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v7);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v7);
      if (!*(a1 + v7))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v6)
      {
        goto LABEL_23;
      }

      return 0;
    }
  }

  v9 = *(a1 + v7);
  if (!*(a1 + v7))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v7 > 3)
  {
    v11 = 0;
  }

  if (v7)
  {
    if (v7 > 3)
    {
      LODWORD(v7) = 4;
    }

    if (v7 > 2)
    {
      if (v7 == 3)
      {
        LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v7) = *a1;
      }
    }

    else if (v7 == 1)
    {
      LODWORD(v7) = *a1;
    }

    else
    {
      LODWORD(v7) = *a1;
    }
  }

  return v6 + (v7 | v11) + 1;
}

uint64_t static _Glass.explicit(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = v3 | (*(a1 + 12) << 32) | 0x40000000;
  *a2 = *a1;
  *(a2 + 8) = v4;
  *(a2 + 16) = 5;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  return outlined copy of Material.ID(v2, v3);
}

uint64_t getEnumTagSinglePayload for ZStack(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))((a1 + v6 + 16) & ~v6);
  }

  v8 = ((v6 + 16) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))((a1 + v6 + 16) & ~v6);
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v5 + (v8 | v12) + 1;
}

uint64_t getEnumTagSinglePayload for GlassEffectModifier(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

double sub_18D273770(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = type metadata accessor for ModifierTransition(255, *a1, v5, a4);
  v9 = type metadata accessor for PlaceholderContentView(255, v6, v7, v8);
  v11 = type metadata accessor for ModifiedContent(255, v9, v4, v10);
  v13[0] = &protocol witness table for PlaceholderContentView<A>;
  v13[1] = v5;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v11, v13);
}

uint64_t assignWithCopy for StrokeShapeView(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a3[2] - 8) + 24;
  (*v6)();
  v7 = *(v6 + 40) + 7;
  v8 = (v7 + a1) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v7 + a2) & 0xFFFFFFFFFFFFFFF8;
  *v8 = *v9;
  *(v8 + 8) = *(v9 + 8);
  *(v8 + 12) = *(v9 + 12);
  *(v8 + 16) = *(v9 + 16);
  *(v8 + 24) = *(v9 + 24);

  *(v8 + 32) = *(v9 + 32);
  v10 = *(a3[3] - 8);
  v11 = v10 + 24;
  v12 = *(v10 + 80);
  v13 = (v7 & 0xFFFFFFFFFFFFFFF8) + v12 + 40;
  v14 = (v13 + a2) & ~v12;
  (*(v10 + 24))((v13 + a1) & ~v12, v14);
  v15 = *(v11 + 40);
  v16 = (v15 + ((v13 + a1) & ~v12));
  *v16 = *(v15 + v14);
  v16[1] = *(v15 + v14 + 1);
  v17 = *(a3[4] - 8);
  v18 = v17 + 24;
  v19 = *(v17 + 80) & 0xF8 | 7;
  v20 = v15 + v19 + (v13 & ~v12) + 2;
  v21 = (v20 + a1) & ~v19;
  v22 = (v20 + a2) & ~v19;
  (*(v17 + 24))(v21, v22);
  v23 = *(v18 + 40) + 7;
  v24 = ((v23 + v21) & 0xFFFFFFFFFFFFFFF8);
  v25 = ((v23 + v22) & 0xFFFFFFFFFFFFFFF8);
  *v24 = *v25;
  v24[1] = v25[1];
  return a1;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance OpacityRendererEffect(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

void static _InsettableBackgroundShapeModifier._makeView(modifier:inputs:body:)(int *a1@<X0>, uint64_t a2@<X1>, void (*a3)(_OWORD *__return_ptr, uint64_t, __int128 *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v16 = *a1;
  v17 = *(a2 + 48);
  v36[2] = *(a2 + 32);
  v36[3] = v17;
  v36[4] = *(a2 + 64);
  v37 = *(a2 + 80);
  v18 = *(a2 + 16);
  v36[0] = *a2;
  v36[1] = v18;
  v35 = v16;
  v19 = *(a8 + 8);
  v31 = a5;
  v32 = a6;
  v33 = a7;
  v34 = v19;
  v20 = type metadata accessor for _BackgroundShapeModifier(0, &v31);
  v31 = a5;
  v32 = a6;
  v33 = a7;
  v34 = a8;
  v21 = type metadata accessor for _InsettableBackgroundShapeModifier(255, &v31);
  v24 = type metadata accessor for _GraphValue(0, v21, v22, v23);
  _GraphValue.unsafeBitCast<A>(to:)(v24, v20, &v31);
  v27 = a5;
  v28 = a6;
  v29 = a7;
  v30 = a8;
  *&v25 = a7;
  *(&v25 + 1) = v19;
  static _BackgroundShapeModifier.makeShapeView(modifier:inputs:shapeIsBackground:body:modifyPrimaryInputs:)(&v31, v36, 1, a3, a4, partial apply for closure #1 in static _InsettableBackgroundShapeModifier._makeView(modifier:inputs:body:), v26, a5, a9, a6, v25);
}

uint64_t closure #1 in static _BackgroundShapeModifier.makeShapeView(modifier:inputs:shapeIsBackground:body:modifyPrimaryInputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13[0] = a2;
  v13[1] = a3;
  v13[2] = a4;
  v13[3] = a5;
  v12[2] = type metadata accessor for _BackgroundShapeModifier(0, v13);
  v12[3] = a2;
  v9 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, a6, v12, a2, MEMORY[0x1E69E73E0], v9, MEMORY[0x1E69E7410], v10);
  return v13[0];
}

uint64_t _ViewInputs.setContainerShape<A>(_:isSystemShape:)(uint64_t a1, uint64_t a2, ValueMetadata *a3, uint64_t a4)
{

  return _ViewInputs.setContainerShape<A>(_:isSystemShape:)(a1, a2, a3, a4, type metadata accessor for ContainerShapeType, &protocol witness table for ContainerShapeType<A>);
}

{

  return _ViewInputs.setContainerShape<A>(_:isSystemShape:)(a1, a2, a3, a4, type metadata accessor for ContainerCornerShapeType, &protocol witness table for ContainerCornerShapeType<A>);
}

void static _BackgroundShapeModifier.makeShapeView(modifier:inputs:shapeIsBackground:body:modifyPrimaryInputs:)(unsigned int *a1@<X0>, __int128 *a2@<X1>, int a3@<W2>, void (*a4)(_OWORD *__return_ptr, uint64_t, __int128 *)@<X3>, uint64_t a5@<X4>, void (*a6)(__int128 *, uint64_t)@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, __int128 a11)
{
  v70 = a7;
  v71 = a6;
  v72 = a5;
  v73 = a4;
  v76 = a3;
  v74 = a9;
  v123 = *MEMORY[0x1E69E9840];
  v12 = a2[3];
  v13 = a2[1];
  v119 = a2[2];
  v120 = v12;
  v14 = a2[3];
  v121 = a2[4];
  v15 = a2[1];
  v117 = *a2;
  v118 = v15;
  v113 = v119;
  v114 = v14;
  v115 = a2[4];
  v16 = *a1;
  v122 = *(a2 + 20);
  v116 = *(a2 + 20);
  v111 = v117;
  v112 = v13;
  outlined init with copy of _ViewInputs(&v117, &v105);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA16ImplicitRootType33_DC167C463E6601B3880A23A75ACAA63BLLV_Tt2g5(&v111, &type metadata for _ZStackLayout, &protocol witness table for _ZStackLayout);

  v17 = *(*(a8 - 8) + 64);
  if (v17)
  {
    closure #1 in static _BackgroundShapeModifier.makeShapeView(modifier:inputs:shapeIsBackground:body:modifyPrimaryInputs:)(1, a8, a10, a11, *(&a11 + 1), closure #1 in static PointerOffset.of(_:)partial apply);
  }

  v69 = v17;
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v75 = v16;
  v19 = OffsetAttribute2;
  v20 = v118;
  swift_beginAccess();
  v21 = *(v20 + 16);
  (*(*(&a11 + 1) + 32))(&v85, a10, *(&a11 + 1));
  v107 = v119;
  v108 = v120;
  v109 = v121;
  v110 = v122;
  v105 = v117;
  v106 = v118;
  _ViewInputs.materialSubstrate.getter(v83);
  *&v91 = __PAIR64__(DWORD2(v117), DWORD2(v118));
  DWORD2(v91) = HIDWORD(v118);
  *&v92 = 0;
  BYTE8(v92) = 0;
  *&v93 = 0;
  DWORD2(v93) = 0;
  ShapeStyleResolver.init(style:mode:environment:role:substrate:animationsDisabled:helper:)(v19, *MEMORY[0x1E698D3F8], v21, &v85, v83, BYTE4(v119) & 1, &v91, &v97);
  MEMORY[0x1EEE9AC00](v22);
  v24 = type metadata accessor for ShapeStyleResolver(0, a8, a11, v23);
  *&v66 = v24;
  swift_getWitnessTable(protocol conformance descriptor for ShapeStyleResolver<A>, v24);
  *(&v66 + 1) = v25;
  outlined init with copy of _GraphInputs(&v117, &v105);
  type metadata accessor for Attribute<_ShapeStyle_Pack>(0, &lazy cache variable for type metadata for Attribute<_ShapeStyle_Pack>, &type metadata for _ShapeStyle_Pack, MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v97, closure #1 in Attribute.init<A>(_:)partial apply, v65, v24, MEMORY[0x1E69E73E0], v26, MEMORY[0x1E69E7410], v27);
  v103[2] = v99;
  v103[3] = v100;
  v104 = v101;
  v103[0] = v97;
  v103[1] = v98;
  (*(*(v24 - 8) + 8))(v103, v24);
  v28 = v105;
  AGGraphSetFlags();
  v29 = *(*(&a11 + 1) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v32 = *(AssociatedTypeWitness - 8);
  v31 = AssociatedTypeWitness - 8;
  v33 = *(v32 + 64);
  v68 = a11;
  if (v33)
  {
    v67[1] = v67;
    MEMORY[0x1EEE9AC00](v31);
    v65[0] = a8;
    v65[1] = a10;
    v66 = a11;
    LODWORD(v91) = v75;
    *&v105 = a8;
    *(&v105 + 1) = a10;
    v106 = a11;
    v34 = type metadata accessor for _BackgroundShapeModifier(255, &v105);
    type metadata accessor for _GraphValue(0, v34, v35, v36);
    _GraphValue.subscript.getter(partial apply for closure #3 in static _BackgroundShapeModifier.makeShapeView(modifier:inputs:shapeIsBackground:body:modifyPrimaryInputs:), a10, &v85);
    v105 = v117;
    v106 = v118;
    v107 = v119;
    v37 = static Animatable.makeAnimatable(value:inputs:)(&v85, &v105, a10, v29);
    v97 = v105;
    v98 = v106;
    v99 = v107;
    outlined destroy of _GraphInputs(&v97);
    closure #4 in static _BackgroundShapeModifier.makeShapeView(modifier:inputs:shapeIsBackground:body:modifyPrimaryInputs:)(1, a8, a10, a11, *(&a11 + 1));
    v38 = AGGraphCreateOffsetAttribute2();
    v39 = AnimatedShape.Init.init(shape:fillStyle:)(v37, v38);
    v41 = type metadata accessor for AnimatedShape(0, a10, *(&a11 + 1), v40);
    *&v105 = v39;
    v43 = type metadata accessor for AnimatedShape.Init(0, a10, *(&a11 + 1), v42);
    swift_getWitnessTable(protocol conformance descriptor for AnimatedShape<A>.Init, v43);
    _GraphValue.init<A>(_:)(&v105, v41, v43, v44, &v85);
    v107 = v113;
    v108 = v114;
    v109 = v115;
    v110 = v116;
    v105 = v111;
    v106 = v112;
    static ShapeStyledLeafView.makeLeafView(view:inputs:styles:interpolatorGroup:data:)(&v85, &v105, v28, 0, v45, v41, &protocol witness table for AnimatedShape<A>, &v91);
    v46 = v91;
    v47 = DWORD2(v91);
  }

  else
  {
    outlined destroy of _GraphInputs(&v117);
    *&v105 = a8;
    *(&v105 + 1) = a10;
    v106 = a11;
    v48 = type metadata accessor for _BackgroundShapeModifier(0, &v105);
    v107 = v113;
    v108 = v114;
    v109 = v115;
    v110 = v116;
    v105 = v111;
    v106 = v112;
    LODWORD(v91) = v75;
    static ShapeStyledLeafView.makeLeafView(view:inputs:styles:interpolatorGroup:data:)(&v91, &v105, v28, 0, v49, v48, &protocol witness table for _BackgroundShapeModifier<A, B>, &v97);
    v46 = v97;
    v47 = DWORD2(v97);
    if (*(*(a10 - 8) + 64))
    {
      closure #2 in static _BackgroundShapeModifier.makeShapeView(modifier:inputs:shapeIsBackground:body:modifyPrimaryInputs:)(1, a8, a10, a11, *(&a11 + 1), closure #1 in static PointerOffset.of(_:)partial apply);
    }

    v37 = AGGraphCreateOffsetAttribute2();
  }

  v107 = v119;
  v108 = v120;
  v109 = v121;
  v110 = v122;
  v105 = v117;
  v106 = v118;
  if (v76)
  {
    if (v69)
    {
      outlined init with copy of _ViewInputs(&v117, &v97);
      v50 = v68;
      v51 = closure #1 in static _BackgroundShapeModifier.makeShapeView(modifier:inputs:shapeIsBackground:body:modifyPrimaryInputs:)(1, a8, a10, v68, *(&a11 + 1), closure #1 in static PointerOffset.of(_:)partial apply);
    }

    else
    {
      outlined init with copy of _ViewInputs(&v117, &v97);
      v51 = 0;
      v50 = v68;
    }

    *&v97 = a8;
    *(&v97 + 1) = a10;
    *&v98 = v50;
    *(&v98 + 1) = *(&a11 + 1);
    v52 = type metadata accessor for _BackgroundShapeModifier(0, &v97);
    _ViewInputs.applyBackgroundStyle<A, B>(value:offset:)(v75, v51, v52, a8, v50);
  }

  else
  {
    outlined init with copy of _ViewInputs(&v117, &v97);
  }

  v71(&v105, v37);
  v93 = v107;
  v94 = v108;
  v95 = v109;
  v96 = v110;
  v91 = v105;
  v92 = v106;
  v87 = v107;
  v88 = v108;
  v89 = v109;
  v90 = v110;
  v85 = v105;
  v86 = v106;
  v53 = outlined init with copy of _ViewInputs(&v91, &v97);
  v73(v83, v53, &v85);
  v99 = v87;
  v100 = v88;
  v101 = v89;
  v102 = v90;
  v97 = v85;
  v98 = v86;
  outlined destroy of _ViewInputs(&v97);
  v54 = DWORD2(v83[0]);
  v55 = HIDWORD(v83[0]);
  if (v76)
  {
    v56 = v46;
  }

  else
  {
    v56 = *&v83[0];
  }

  if (v76)
  {
    v57 = v47;
  }

  else
  {
    v57 = DWORD2(v83[0]);
  }

  if (v76)
  {
    v58 = *&v83[0];
  }

  else
  {
    v58 = v46;
  }

  if ((v76 & 1) == 0)
  {
    v54 = v47;
  }

  v81 = MEMORY[0x1E69E7CC0];
  v82 = 0;
  v77 = v56;
  v78 = v57;
  v79 = v58;
  v80 = v54;
  v59 = v120;
  v60 = *(v120 + 16);
  if (v60)
  {

    v61 = (v59 + 40);
    do
    {
      static PreferenceKey.visitKey<A>(_:)(&v77, *(v61 - 1), &type metadata for PairwisePreferenceCombinerVisitor, *v61, &protocol witness table for PairwisePreferenceCombinerVisitor);
      v61 += 2;
      --v60;
    }

    while (v60);
  }

  else
  {
  }

  v83[2] = v107;
  v83[3] = v108;
  v83[4] = v109;
  v84 = v110;
  v83[0] = v105;
  v83[1] = v106;
  outlined destroy of _ViewInputs(v83);

  v87 = v113;
  v88 = v114;
  v89 = v115;
  v90 = v116;
  v85 = v111;
  v86 = v112;
  outlined destroy of _ViewInputs(&v85);
  v62 = v74;
  *(v74 + 12) = v55;
  v63 = v81;
  v64 = v82;

  *v62 = v63;
  *(v62 + 8) = v64;
}

uint64_t initializeWithCopy for _MatchedGeometryEffect(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v9 = ((v7 + 15) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v8 + 15) & 0xFFFFFFFFFFFFFFF8);
  v11 = *(v10 + 9);
  *v9 = *v10;
  *(v9 + 9) = v11;
  return a1;
}

double protocol witness for EventType.timestamp.getter in conformance MouseEvent@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

void UnaryChildGeometry.value.getter(uint64_t a3@<X8>)
{
  Value = AGGraphGetValue();
  v23 = Value[1];
  v24 = *Value;
  v5 = *AGGraphGetValue();
  v6 = one-time initialization token for lockAssertionsAreEnabled;

  if (v6 != -1)
  {
    swift_once();
  }

  if (!lockAssertionsAreEnabled)
  {
    goto LABEL_6;
  }

  if (one-time initialization token for _lock != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    if (!_MovableLockIsOwner(static Update._lock))
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return;
    }

LABEL_6:
    v25 = v24;
    v26 = v23;
    (*(*v5 + 152))(&v27, &v25);

    v7 = v27;
    v8 = v28;
    v9 = rect;
    v10 = v30;
    v12 = *(&v30 + 1);
    v11 = v31;
    v14 = v32;
    v13 = v33;
    if (AGGraphGetCurrentAttribute() != *MEMORY[0x1E698D3F8])
    {
      break;
    }

    __break(1u);
LABEL_11:
    swift_once();
  }

  v15 = *AGGraphGetValue();
  *&v25 = v7;
  BYTE8(v25) = v8;
  *&v26 = v9;
  BYTE8(v26) = v10;
  LayoutProxy.dimensions(in:)(&v25, &v27);
  v16 = v27;
  v17 = v28;
  v18 = rect;
  v19 = v31;
  v20 = v14 - v12 * rect;
  v21 = v30;
  v22 = v13 - v11 * *&v30;
  *a3 = v20;
  *(a3 + 8) = v22;
  *(a3 + 16) = v16;
  *(a3 + 24) = v17;
  *(a3 + 32) = v18;
  *(a3 + 40) = v21;
  *(a3 + 56) = v19;
  if (v15 == 1)
  {
    *a3 = *&v24 - CGRectGetMaxX(*&v20);
  }
}

uint64_t _AnyLayoutBox.animatableData.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  v5 = *(*v2 + 184);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v12 - v7;
  v9 = *(v4 + 200);
  swift_beginAccess();
  (*(v6 + 16))(v8, v2 + v9, v5);
  return _AnyAnimatableData.init<A>(_:)(v8, v5, *(*(v4 + 192) + 8), v10, a2);
}

void specialized StatefulRule<>.updateLayoutComputer<A>(layout:environment:attributes:)(uint64_t a1, int a2, uint64_t a3)
{
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
  }

  else
  {
    v14 = a1;
    MEMORY[0x1EEE9AC00](CurrentAttribute);
    v8[2] = &v14;
    v9 = v7;
    v10 = v7;
    v11 = a2;
    v12 = v7;
    v13 = a3;
    MEMORY[0x1EEE9AC00](v7);

    specialized StatefulRule<>.update<A>(modify:create:)(partial apply for specialized closure #1 in Layout.updateLayoutComputer<A>(rule:layoutContext:children:), v8, partial apply for specialized closure #2 in Layout.updateLayoutComputer<A>(rule:layoutContext:children:));
  }
}

{
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
  }

  else
  {
    v7 = *(a1 + 48);
    v16[2] = *(a1 + 32);
    v16[3] = v7;
    v16[4] = *(a1 + 64);
    v17 = *(a1 + 80);
    v8 = *(a1 + 16);
    v16[0] = *a1;
    v16[1] = v8;
    MEMORY[0x1EEE9AC00](CurrentAttribute);
    v10[2] = v16;
    v11 = v9;
    v12 = v9;
    v13 = a2;
    v14 = v9;
    v15 = a3;
    MEMORY[0x1EEE9AC00](v9);

    specialized StatefulRule<>.update<A>(modify:create:)(partial apply for specialized closure #1 in Layout.updateLayoutComputer<A>(rule:layoutContext:children:), v10, partial apply for specialized closure #2 in Layout.updateLayoutComputer<A>(rule:layoutContext:children:));
  }
}

{
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
  }

  else
  {
    v7 = *(a1 + 48);
    v16[2] = *(a1 + 32);
    v16[3] = v7;
    v16[4] = *(a1 + 64);
    v17 = *(a1 + 80);
    v8 = *(a1 + 16);
    v16[0] = *a1;
    v16[1] = v8;
    MEMORY[0x1EEE9AC00](CurrentAttribute);
    v10[2] = v16;
    v11 = v9;
    v12 = v9;
    v13 = a2;
    v14 = v9;
    v15 = a3;
    MEMORY[0x1EEE9AC00](v9);

    specialized StatefulRule<>.update<A>(modify:create:)(partial apply for specialized closure #1 in Layout.updateLayoutComputer<A>(rule:layoutContext:children:), v10, partial apply for specialized closure #2 in Layout.updateLayoutComputer<A>(rule:layoutContext:children:));
  }
}

{
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
  }

  else
  {
    v14 = a1;
    MEMORY[0x1EEE9AC00](CurrentAttribute);
    v8[2] = &v14;
    v9 = v7;
    v10 = v7;
    v11 = a2;
    v12 = v7;
    v13 = a3;
    MEMORY[0x1EEE9AC00](v7);

    specialized StatefulRule<>.update<A>(modify:create:)(partial apply for specialized closure #1 in Layout.updateLayoutComputer<A>(rule:layoutContext:children:), v8, partial apply for specialized closure #2 in Layout.updateLayoutComputer<A>(rule:layoutContext:children:));
  }
}

double _AnyLayoutBox.sizeThatFits(proposal:subviews:cache:)(uint64_t a1, int a2, uint64_t a3, int a4, int *a5, uint64_t a6)
{
  v29 = a2;
  v30 = a4;
  v31 = a1;
  v32 = a3;
  v9 = *(*v6 + 184);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v24[-v11];
  v14 = *(v13 + 192);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v18 = &v24[-v17];
  v19 = *a5;
  v26 = *(a5 + 1);
  v25 = *(a5 + 16);
  LODWORD(v17) = *(a5 + 17);
  v27 = v19;
  v28 = v17;
  outlined init with copy of Any(a6 + 8, v39);
  swift_dynamicCast();
  v20 = *(*v6 + 200);
  swift_beginAccess();
  (*(v10 + 16))(v12, v6 + v20, v9);
  v35 = v27;
  v36 = v26;
  v37 = v25;
  v21 = *(v14 + 56);
  v38 = v28;
  v34 = v29 & 1;
  v33 = v30 & 1;
  v22 = v21(v31);
  (*(v10 + 8))(v12, v9);
  $defer #1 <A>() in _AnyLayoutBox.updateCache(_:subviews:)(a6, v18, v9, v14);
  (*(v16 + 8))(v18, AssociatedTypeWitness);
  return v22;
}

uint64_t initializeWithCopy for StrokeShapeView(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a3[2] - 8) + 16;
  (*v6)();
  v7 = *(v6 + 48) + 7;
  v8 = (v7 + a1) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v7 + a2) & 0xFFFFFFFFFFFFFFF8;
  *v8 = *v9;
  *(v8 + 8) = *(v9 + 8);
  *(v8 + 12) = *(v9 + 12);
  *(v8 + 16) = *(v9 + 16);
  *(v8 + 24) = *(v9 + 24);
  *(v8 + 32) = *(v9 + 32);
  v10 = a3[3];
  v11 = *(v10 - 8);
  v12 = *(v11 + 16);
  v13 = *(v11 + 80);
  v14 = (v7 & 0xFFFFFFFFFFFFFFF8) + v13 + 40;

  v12((v14 + a1) & ~v13, (v14 + a2) & ~v13, v10);
  v15 = *(v11 + 64);
  *(v15 + ((v14 + a1) & ~v13)) = *(v15 + ((v14 + a2) & ~v13));
  v16 = *(a3[4] - 8);
  v17 = v16 + 16;
  v18 = *(v16 + 80) & 0xF8 | 7;
  v19 = v15 + v18 + (v14 & ~v13) + 2;
  v20 = (v19 + a1) & ~v18;
  v21 = (v19 + a2) & ~v18;
  (*(v16 + 16))(v20, v21);
  *((*(v17 + 48) + 7 + v20) & 0xFFFFFFFFFFFFFFF8) = *((*(v17 + 48) + 7 + v21) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t destroy for StrokeShapeView(uint64_t a1, void *a2)
{
  v4 = *(a2[2] - 8) + 8;
  (*v4)();
  v5 = *(v4 + 56) + 7;

  v6 = v5 & 0xFFFFFFFFFFFFFFF8;
  v7 = *(a2[3] - 8);
  v8 = v7 + 8;
  v9 = *(v7 + 80);
  v10 = v6 + v9 + 40;
  (*(v7 + 8))((v10 + a1) & ~v9);
  v11 = *(a2[4] - 8);
  v12 = *(v11 + 8);
  v13 = *(v11 + 80) & 0xF8 | 7;
  v14 = (a1 + *(v8 + 56) + v13 + (v10 & ~v9) + 2) & ~v13;

  return v12(v14);
}

uint64_t outlined init with copy of ImageResolutionContext(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageResolutionContext(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double storeEnumTagSinglePayload for _StrokedShape(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 40;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFD8)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFD8)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFD8)
    {
      v15 = ~v7 + a2;
      v16 = a1;
      bzero(a1, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 40);
      a1 = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(a1 + v9) = v14;
      }

      else
      {
        *(a1 + v9) = v14;
      }
    }

    else if (v13)
    {
      *(a1 + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(a1 + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(a1 + v9) = 0;
  }

  else if (v13)
  {
    *(a1 + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v19 = (a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
    if ((a2 & 0x80000000) != 0)
    {
      result = 0.0;
      *(v19 + 8) = 0u;
      *(v19 + 24) = 0u;
      *v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      *(v19 + 24) = a2 - 1;
    }
  }

  else
  {
    v18 = *(v5 + 56);

    v18();
  }

  return result;
}

void *static StrokeShapeView._makeView(view:inputs:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v68 = *MEMORY[0x1E69E9840];
  v16 = *a1;
  v17 = *(a2 + 48);
  v64 = *(a2 + 32);
  v65 = v17;
  v66 = *(a2 + 64);
  v67 = *(a2 + 80);
  v18 = *(a2 + 16);
  v62 = *a2;
  v63 = v18;
  v36 = a3;
  v37 = a4;
  v38 = a5;
  v39 = a6;
  v40 = a7;
  v41 = a8;
  v35[1] = v16;
  *&v56 = a3;
  *(&v56 + 1) = a4;
  *&v57 = a5;
  *(&v57 + 1) = a6;
  *&v58 = a7;
  *(&v58 + 1) = a8;
  v19 = type metadata accessor for StrokeShapeView(255, &v56);
  type metadata accessor for _GraphValue(0, v19, v20, v21);
  v23 = type metadata accessor for _StrokedShape(255, a3, a6, v22);
  swift_getWitnessTable(protocol conformance descriptor for _StrokedShape<A>, v23);
  *&v56 = v23;
  *(&v56 + 1) = a4;
  *&v57 = v24;
  *(&v57 + 1) = a7;
  v25 = type metadata accessor for _ShapeView(255, &v56);
  v27 = type metadata accessor for _BackgroundModifier(255, a5, a8, v26);
  v29 = type metadata accessor for ModifiedContent(0, v25, v27, v28);
  _GraphValue.subscript.getter(partial apply for closure #1 in static StrokeShapeView._makeView(view:inputs:), v29, v35);
  v30 = v35[0];
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v50 = v64;
  v51 = v65;
  v52 = v66;
  v53 = v67;
  v48 = v62;
  v49 = v63;
  v55 = v67;
  v32 = v64;
  LODWORD(v50) = 0;
  v34 = v30;
  v54[0] = v62;
  v54[1] = v63;
  v54[3] = v65;
  v54[4] = v66;
  v54[2] = v50;
  v44 = v50;
  v45 = v65;
  v46 = v66;
  v47 = v67;
  v42 = v62;
  v43 = v63;
  outlined init with copy of _ViewInputs(&v62, &v56);
  outlined init with copy of _ViewInputs(v54, &v56);
  static ModifiedContent<>._makeView(view:inputs:)(&v34, &v42, v25, v27, &protocol witness table for _ShapeView<A, B>, &protocol witness table for _BackgroundModifier<A>, a9);
  v58 = v44;
  v59 = v45;
  v60 = v46;
  v61 = v47;
  v56 = v42;
  v57 = v43;
  outlined destroy of _ViewInputs(&v56);
  LODWORD(v50) = v32;
  if (ShouldRecordTree)
  {
    specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(a9, &v48);
    AGSubgraphEndTreeElement();
  }

  v44 = v50;
  v45 = v51;
  v46 = v52;
  v47 = v53;
  v42 = v48;
  v43 = v49;
  return outlined destroy of _ViewInputs(&v42);
}

uint64_t closure #1 in static StrokeShapeView._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v26 = a2;
  v27 = a3;
  v28 = a4;
  v29 = a5;
  v30 = a6;
  v31 = a7;
  v24[2] = type metadata accessor for StrokeShapeView(0, &v26);
  v15 = type metadata accessor for _StrokedShape(255, a2, a5, v14);
  swift_getWitnessTable(protocol conformance descriptor for _StrokedShape<A>, v15);
  v26 = v15;
  v27 = a3;
  v28 = v16;
  v29 = a6;
  v17 = type metadata accessor for _ShapeView(255, &v26);
  v19 = type metadata accessor for _BackgroundModifier(255, a4, a7, v18);
  v25 = type metadata accessor for ModifiedContent(0, v17, v19, v20);
  v21 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, closure #1 in static PointerOffset.of(_:)partial apply, v24, v25, MEMORY[0x1E69E73E0], v21, MEMORY[0x1E69E7410], v22);
  return v26;
}

uint64_t Text.kerning(_:)(uint64_t a1, uint64_t a2, char a3, char *a4, char a5, double a6)
{
  outlined copy of Text.Storage(a1, a2, a3 & 1);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    a4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a4 + 2) + 1, 1, a4);
  }

  v11 = *(a4 + 2);
  v10 = *(a4 + 3);
  if (v11 >= v10 >> 1)
  {
    a4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, a4);
  }

  *(a4 + 2) = v11 + 1;
  v12 = &a4[16 * v11];
  *(v12 + 4) = a6;
  v12[40] = a5;
  return a1;
}

uint64_t Color.init(_:white:opacity:)(_BYTE *a1, double a2, double a3)
{
  if (*a1)
  {
    if (*a1 != 1)
    {
      v8 = a3;
      type metadata accessor for ColorBox<Color.DisplayP3>(0, &lazy cache variable for type metadata for ColorBox<Color.DisplayP3>, lazy protocol witness table accessor for type Color.DisplayP3 and conformance Color.DisplayP3, &type metadata for Color.DisplayP3);
      result = swift_allocObject();
      *(result + 16) = a2;
      *(result + 24) = a2;
      *(result + 32) = a2;
      *(result + 40) = v8;
      return result;
    }

    v3 = a2;
  }

  else
  {
    v4 = a2;
    if (v4 <= 0.0)
    {
      v5 = -v4;
    }

    else
    {
      v5 = a2;
    }

    if (v5 <= 0.04045)
    {
      v6 = v5 * 0.077399;
    }

    else
    {
      v6 = 1.0;
      if (v5 != 1.0)
      {
        v7 = a3;
        v6 = powf((v5 * 0.94787) + 0.052133, 2.4);
        a3 = v7;
      }
    }

    if (v4 <= 0.0)
    {
      v3 = -v6;
    }

    else
    {
      v3 = v6;
    }
  }

  v11 = a3;
  type metadata accessor for ColorBox<Color.DisplayP3>(0, &lazy cache variable for type metadata for ColorBox<ResolvedColorProvider>, lazy protocol witness table accessor for type ResolvedColorProvider and conformance ResolvedColorProvider, &type metadata for ResolvedColorProvider);
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 20) = v3;
  *(result + 24) = v3;
  *(result + 28) = v11;
  *(result + 32) = 2143289344;
  return result;
}

int8x16_t protocol witness for Transition.body(content:phase:) in conformance OffsetTransition@<Q0>(char a1@<W1>, int8x16_t *a2@<X8>)
{
  v3 = vdup_n_s32(a1 == 1);
  v4.i64[0] = v3.u32[0];
  v4.i64[1] = v3.u32[1];
  result = vandq_s8(*v2, vcgezq_s64(vshlq_n_s64(v4, 0x3FuLL)));
  *a2 = result;
  return result;
}

uint64_t specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(uint64_t a1, uint64_t a2, int a3, char *a4)
{
  LODWORD(v5) = a3;
  v222 = *MEMORY[0x1E69E9840];
  v201 = type metadata accessor for OSSignpostID();
  v197 = *(v201 - 8);
  MEMORY[0x1EEE9AC00](v201);
  v9 = (&v181 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v181 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v199 = (&v181 - v14);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v181 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v200 = &v181 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v191 = &v181 - v21;
  if (*(a4 + 7))
  {
    Value = AGGraphGetValue();
    if (v23)
    {
      v24 = *Value;
    }

    else
    {
      v24 = -INFINITY;
    }
  }

  else
  {
    v24 = -INFINITY;
  }

  result = specialized AnimatableAttributeHelper.checkReset()();
  if (result)
  {
    *(a1 + 8) = 1;
  }

  else if (*(a1 + 8) != 1)
  {
    goto LABEL_131;
  }

  (*(**a1 + 144))(&v219);
  outlined init with copy of KeyedAnimatableArray<Int, _AnyAnimatableData>.Element((a4 + 16), &v213, &lazy cache variable for type metadata for _AnyAnimatableData?, &type metadata for _AnyAnimatableData, type metadata accessor for HitTestableEvent?);
  if (!v213)
  {
    outlined destroy of HitTestableEvent?(&v213, &lazy cache variable for type metadata for _AnyAnimatableData?, &type metadata for _AnyAnimatableData);
    goto LABEL_130;
  }

  v182 = v17;
  v217[0] = v213;
  v217[1] = v214;
  v218 = v215;
  v26 = v213;
  if (v219 == v213 && ((*(v219 + 88))(&v219 + 8, v217 + 8) & 1) != 0)
  {
    outlined destroy of _AnyAnimatableData(v217);
    goto LABEL_130;
  }

  v202 = a2;
  v185 = v5;
  v198 = v9;
  v181 = v12;
  AGGraphClearUpdate();
  outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(a4, &v213, &lazy cache variable for type metadata for AnimatableAttributeHelper<AnyLayout>, lazy protocol witness table accessor for type AnyLayout and conformance AnyLayout, &type metadata for AnyLayout, type metadata accessor for AnimatableAttributeHelper);
  v27 = *AGGraphGetValue();

  outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v213, &lazy cache variable for type metadata for AnimatableAttributeHelper<AnyLayout>, lazy protocol witness table accessor for type AnyLayout and conformance AnyLayout, &type metadata for AnyLayout, type metadata accessor for AnimatableAttributeHelper);
  AGGraphSetUpdate();
  v184 = v27;
  v186 = Transaction.effectiveAnimation.getter(v27);
  if (v186)
  {
    LODWORD(v5) = v185;
    goto LABEL_18;
  }

  LODWORD(v5) = v185;
  if (v202)
  {

LABEL_18:
    outlined init with copy of _AnyAnimatableData(&v219, &v211);
    v28 = v211;
    if (v211 == v26)
    {
      v211[13](v212, v217 + 8);
    }

    else if (v28 == type metadata accessor for ZeroVTable())
    {
      outlined destroy of _AnyAnimatableData(&v211);
      outlined init with copy of _AnyAnimatableData(v217, &v211);
      (v211[14])(v212);
    }

    v188 = a1;
    v24 = *AGGraphGetValue();
    v187 = a4;
    v29 = *(a4 + 7);
    if (!v29)
    {
      outlined init with copy of _AnyAnimatableData(&v211, &v213);
      v206 = &type metadata for AnyLayout;
      type metadata accessor for AnyLayout.Type();
      type metadata accessor for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == CGFloat>.Type(0, &lazy cache variable for type metadata for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == _AnyAnimatableData>.Type, &type metadata for _AnyAnimatableData);
      v51 = swift_dynamicCast();
      if (v51)
      {
        v52 = v207;
      }

      else
      {
        v52 = 0;
      }

      if (v51)
      {
        v53 = *(&v207 + 1);
      }

      else
      {
        v53 = 0;
      }

      v54 = v184;

      v55 = v186;

      v57 = _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA18_AnyAnimatableDataV_Tt4B5(v56, &v213, v54, v52, v53, v24);
      CurrentAttribute = AGGraphGetCurrentAttribute();
      LODWORD(v5) = CurrentAttribute;
      LODWORD(v202) = *MEMORY[0x1E698D3F8];
      if (CurrentAttribute == v202)
      {
        v59 = 0;
      }

      else
      {
        v59 = CurrentAttribute;
      }

      (*(*v55 + 96))(&v207);
      v61 = *(&v207 + 1);
      v60 = v207;
      v62 = *(&v208 + 1);
      v63 = v208;
      v64 = v209;
      v205 = 0x7FF8000000000000;
      v206 = 0x7FF8000000000000;
      v203 = 0x7FF8000000000000;
      v204 = 0x3FF0000000000000;
      v213 = v207;
      v214 = v208;
      v215 = v209;
      LODWORD(v199) = v210;
      LOBYTE(v216) = v210;
      static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v213, &v206, &v205, &v204, &v203);
      v65 = v205;
      v66 = v206;
      v67 = v203;
      v68 = v204;
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_202;
      }

      goto LABEL_42;
    }

    LOBYTE(v213) = 0;
    v30 = v186;
    v183 = v29;
    specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(v186, &v211, v184, v5, v24);
    v31 = AGGraphGetCurrentAttribute();
    v32 = v31;
    v33 = *MEMORY[0x1E698D3F8];
    if (v31 == *MEMORY[0x1E698D3F8])
    {
      v34 = 0;
    }

    else
    {
      v34 = v31;
    }

    (*(*v30 + 96))(&v207);
    v36 = *(&v207 + 1);
    Counter = v207;
    v37 = v208;
    v38 = v209;
    v39 = v210;
    v205 = 0x7FF8000000000000;
    v206 = 0x7FF8000000000000;
    v203 = 0x7FF8000000000000;
    v204 = 0x3FF0000000000000;
    v213 = v207;
    v214 = v208;
    v215 = v209;
    LOBYTE(v216) = v210;
    static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v213, &v206, &v205, &v204, &v203);
    v40 = v205;
    v41 = v206;
    v42 = v203;
    v43 = v204;
    if (one-time initialization token for enabledCategories != -1)
    {
      v202 = v206;
      v195 = v203;
      v196 = v205;
      v198 = v204;
      swift_once();
      v42 = v195;
      v40 = v196;
      v43 = v198;
      v41 = v202;
    }

    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
LABEL_199:
      swift_once();
LABEL_52:
      v82 = *(&static Signpost.animationState + 1);
      v81 = static Signpost.animationState;
      v83 = word_1ED5283E8;
      v84 = HIBYTE(word_1ED5283E8);
      v85 = byte_1ED5283EA;
      v86 = static os_signpost_type_t.event.getter();
      v213 = __PAIR128__(v82, v81);
      LOBYTE(v214) = v83;
      BYTE1(v214) = v84;
      BYTE2(v214) = v85;
      if (Signpost.isEnabled.getter())
      {
        LODWORD(v202) = v86;
        v87 = one-time initialization token for _signpostLog;

        if (v87 != -1)
        {
          swift_once();
        }

        v88 = _signpostLog;
        OSSignpostID.init(log:object:)();
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
        v89 = swift_allocObject();
        *(v89 + 16) = xmmword_18DDAF080;
        if (AGGraphGetCurrentAttribute() == v33)
        {
          __break(1u);
        }

        else
        {
          v90 = AGGraphGetAttributeGraph();
          Counter = AGGraphGetCounter();

          v91 = MEMORY[0x1E69E6870];
          *(v89 + 56) = MEMORY[0x1E69E6810];
          *(v89 + 64) = v91;
          *(v89 + 32) = Counter;
          v92 = AGGraphGetCurrentAttribute();
          if (v92 != v33)
          {
            v5 = v89;
            v93 = MEMORY[0x1E69E76D0];
            *(v89 + 96) = MEMORY[0x1E69E7668];
            *(v89 + 104) = v93;
            *(v89 + 72) = v92;
            *(v89 + 136) = MEMORY[0x1E69E6158];
            lazy protocol witness table accessor for type String and conformance String();
            *(v89 + 144) = v94;
            *(v89 + 112) = 0x756F79614C796E41;
            *(v89 + 120) = 0xE900000000000074;
            v95 = v182;
            if (v84)
            {
              LOBYTE(v203) = v202;
              v205 = v88;
              v206 = &dword_18D018000;
              *&v213 = v81;
              *(&v213 + 1) = v82;
              LOBYTE(v214) = v83;
              *&v207 = "Animation: (%p) [%d] %{public}@ updated";
              *(&v207 + 1) = 39;
              LOBYTE(v208) = 2;
              v204 = v89;
              specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v203, &v206, &v205, &v213, v182, &v207, &v204);

              (*(v197 + 8))(v95, v201);
            }

            else
            {
              if (v81 == 20)
              {
                v96 = 3;
              }

              else
              {
                v96 = 4;
              }

              a1 = bswap32(v81) | (4 * WORD1(v81));
              LODWORD(v202) = v202;
              v97 = (v197 + 16);
              v189 = *(v197 + 16);
              v98 = v189(v199, v182, v201);
              v99 = 0;
              LOBYTE(v207) = 1;
              v190 = v97;
              v195 = 16 * v96;
              v196 = v97 - 8;
              v193 = v81;
              v194 = v5 + 32;
              v192 = v96;
              do
              {
                v198 = &v181;
                MEMORY[0x1EEE9AC00](v98);
                a4 = &v181 - ((v101 + 15) & 0xFFFFFFFFFFFFFFF0);
                v102 = a4 + 8;
                v103 = v96;
                v104 = a4 + 8;
                do
                {
                  *(v104 - 1) = 0;
                  *v104 = 0;
                  v104 += 16;
                  --v103;
                }

                while (v103);
                v105 = v194 + 40 * v99;
                while (1)
                {
                  v106 = *(v5 + 16);
                  if (v99 == v106)
                  {
                    break;
                  }

                  if (v99 >= v106)
                  {
                    goto LABEL_191;
                  }

                  ++v99;
                  outlined init with copy of AnyTrackedValue(v105, &v213);
                  v81 = v5;
                  v107 = *(&v214 + 1);
                  v108 = v215;
                  __swift_project_boxed_opaque_existential_1(&v213, *(&v214 + 1));
                  v109 = v108;
                  v5 = v81;
                  *(v102 - 1) = CVarArg.kdebugValue(_:)(a1 | v202, v107, v109);
                  *v102 = v110 & 1;
                  v102 += 16;
                  v100 = __swift_destroy_boxed_opaque_existential_1(&v213);
                  v105 += 40;
                  if (!--v96)
                  {
                    goto LABEL_72;
                  }
                }

                LOBYTE(v207) = 0;
LABEL_72:
                v111 = v193;
                if (v193 == 20)
                {
                  OSSignpostID.rawValue.getter();
                }

                kdebug_trace();
                if (a4[8] == 1)
                {
                  kdebug_trace_string();
                }

                if (a4[24] == 1)
                {
                  kdebug_trace_string();
                }

                if (a4[40] == 1)
                {
                  kdebug_trace_string();
                }

                if (v111 != 20 && a4[56] == 1)
                {
                  kdebug_trace_string();
                }

                if (one-time initialization token for continuation != -1)
                {
                  swift_once();
                }

                v112 = *v196;
                v113 = v199;
                v114 = v201;
                (*v196)(v199, v201);
                v115 = __swift_project_value_buffer(v114, static OSSignpostID.continuation);
                v98 = v189(v113, v115, v114);
                v96 = v192;
              }

              while ((v207 & 1) != 0);

              v116 = v201;
              v112(v199, v201);
              v112(v182, v116);
            }

LABEL_88:
            a4 = v187;
            goto LABEL_129;
          }
        }

        __break(1u);
        goto LABEL_207;
      }

      goto LABEL_88;
    }

    if (*(static CustomEventTrace.enabledCategories + 98) == 1)
    {
      v44 = v34;
      v45 = v39;
      v46 = static CustomEventTrace.recorder;
      if (static CustomEventTrace.recorder)
      {
        v47 = v32 == v33;
        v202 = *(static CustomEventTrace.recorder + 24);
        *(v202 + 4) = 1602;
        v48 = *(v46 + 16);
        LODWORD(v213) = v44;
        BYTE4(v213) = v47;
        *(&v213 + 1) = &type metadata for AnyLayout;
        *&v214 = v41;
        *(&v214 + 1) = v40;
        v215 = v43;
        v216 = v42;
        type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);
        v198 = v49;

        v50 = v48;
        AGGraphAddTraceEvent();
        outlined consume of Animation.Function(Counter, v36, v37, *(&v37 + 1), v38, v45);

        goto LABEL_51;
      }

      v74 = Counter;
      v75 = v36;
      v77 = *(&v37 + 1);
      v76 = v37;
      v78 = v38;
      v79 = v45;
    }

    else
    {
      v74 = Counter;
      v75 = v36;
      v77 = *(&v37 + 1);
      v76 = v37;
      v78 = v38;
      v79 = v39;
    }

    outlined consume of Animation.Function(v74, v75, v76, v77, v78, v79);
LABEL_51:
    v80 = one-time initialization token for animationState;

    if (v80 == -1)
    {
      goto LABEL_52;
    }

    goto LABEL_199;
  }

  outlined destroy of _AnyAnimatableData(v217);

LABEL_130:
  while (1)
  {
    result = outlined destroy of HitTestableEvent?((a4 + 16), &lazy cache variable for type metadata for _AnyAnimatableData?, &type metadata for _AnyAnimatableData);
    v145 = v220;
    *(a4 + 1) = v219;
    *(a4 + 2) = v145;
    *(a4 + 6) = v221;
LABEL_131:
    v96 = *(a4 + 7);
    if (!v96)
    {
      return result;
    }

    v146 = *(**a1 + 144);

    v146(&v213, v147);
    LOBYTE(v207) = 0;
    v148 = specialized AnimatorState.update(_:at:environment:)(&v213, v5, v24);
    v100 = AGGraphGetCurrentAttribute();
    LODWORD(v99) = *MEMORY[0x1E698D3F8];
    if (v100 == *MEMORY[0x1E698D3F8])
    {
      LODWORD(v105) = 0;
    }

    else
    {
      LODWORD(v105) = v100;
    }

    v81 = &type metadata instantiation cache for TupleTypeDescription;
    if (v148)
    {
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_193;
      }

      goto LABEL_137;
    }

    if (one-time initialization token for enabledCategories != -1)
    {
      goto LABEL_195;
    }

LABEL_150:
    v160 = *(v81 + 616);
    if (*(v160 + 16) >= 0x43uLL)
    {
      if (*(v160 + 98) == 1 && static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 834;
        LODWORD(v207) = v105;
        BYTE4(v207) = v100 == v99;
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
        AGGraphAddTraceEvent();
      }

      specialized AnimatorState.nextUpdate()();
      goto LABEL_185;
    }

    __break(1u);
LABEL_197:
    swift_once();
LABEL_142:
    v61 = *(&static Signpost.animationState + 1);
    v64 = static Signpost.animationState;
    v63 = word_1ED5283E8;
    v59 = HIBYTE(word_1ED5283E8);
    v151 = byte_1ED5283EA;
    v152 = static os_signpost_type_t.end.getter();
    v207 = __PAIR128__(v61, v64);
    LOBYTE(v208) = v63;
    BYTE1(v208) = v59;
    BYTE2(v208) = v151;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

      goto LABEL_184;
    }

    LODWORD(v202) = v152;
    v153 = one-time initialization token for _signpostLog;
    v57 = v190;

    if (v153 != -1)
    {
      swift_once();
    }

    v60 = _signpostLog;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    v62 = swift_allocObject();
    *(v62 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() != v99)
    {
      break;
    }

    __break(1u);
LABEL_201:
    __break(1u);
LABEL_202:
    v195 = v68;
    v196 = v66;
    v193 = v67;
    v194 = v65;
    swift_once();
    v67 = v193;
    v65 = v194;
    v68 = v195;
    v66 = v196;
LABEL_42:
    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
LABEL_204:
      swift_once();
      goto LABEL_92;
    }

    v69 = *(static CustomEventTrace.enabledCategories + 98);
    v183 = v57;
    if (v69 == 1)
    {
      v70 = static CustomEventTrace.recorder;
      if (static CustomEventTrace.recorder)
      {
        v71 = v5 == v202;
        *(*(static CustomEventTrace.recorder + 24) + 4) = 322;
        v72 = *(v70 + 16);
        LODWORD(v213) = v59;
        BYTE4(v213) = v71;
        *(&v213 + 1) = &type metadata for AnyLayout;
        *&v214 = v66;
        *(&v214 + 1) = v65;
        v215 = v68;
        v216 = v67;
        type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);

        v73 = v72;
        AGGraphAddTraceEvent();
        outlined consume of Animation.Function(v60, v61, v63, v62, v64, v199);
      }

      else
      {
        outlined consume of Animation.Function(v60, v61, v63, v62, v64, v199);
      }

      v57 = v183;
    }

    else
    {
      outlined consume of Animation.Function(v60, v61, v63, v62, v64, v199);
    }

    v117 = one-time initialization token for animationState;

    if (v117 != -1)
    {
      goto LABEL_204;
    }

LABEL_92:
    Counter = *(&static Signpost.animationState + 1);
    v81 = static Signpost.animationState;
    v84 = word_1ED5283E8;
    v83 = HIBYTE(word_1ED5283E8);
    v118 = byte_1ED5283EA;
    v119 = static os_signpost_type_t.begin.getter();
    v213 = __PAIR128__(Counter, v81);
    LOBYTE(v214) = v84;
    BYTE1(v214) = v83;
    BYTE2(v214) = v118;
    v120 = Signpost.isEnabled.getter();
    LODWORD(v82) = v202;
    if (v120)
    {
      LODWORD(v199) = v119;
      v121 = one-time initialization token for _signpostLog;

      if (v121 != -1)
      {
LABEL_207:
        swift_once();
      }

      v122 = _signpostLog;
      OSSignpostID.init(log:object:)();
      type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
      v99 = swift_allocObject();
      *(v99 + 16) = xmmword_18DDAF080;
      if (AGGraphGetCurrentAttribute() == v82)
      {
        __break(1u);
LABEL_209:
        __break(1u);
      }

      v123 = AGGraphGetAttributeGraph();
      v96 = AGGraphGetCounter();

      v124 = MEMORY[0x1E69E6870];
      *(v99 + 56) = MEMORY[0x1E69E6810];
      *(v99 + 64) = v124;
      *(v99 + 32) = v96;
      v125 = AGGraphGetCurrentAttribute();
      if (v125 == v82)
      {
        goto LABEL_209;
      }

      v126 = MEMORY[0x1E69E76D0];
      *(v99 + 96) = MEMORY[0x1E69E7668];
      *(v99 + 104) = v126;
      *(v99 + 72) = v125;
      *(v99 + 136) = MEMORY[0x1E69E6158];
      lazy protocol witness table accessor for type String and conformance String();
      *(v99 + 144) = v127;
      *(v99 + 112) = 0x756F79614C796E41;
      *(v99 + 120) = 0xE900000000000074;
      if (v83)
      {
        LOBYTE(v203) = v199;
        v205 = v122;
        v206 = &dword_18D018000;
        *&v213 = v81;
        *(&v213 + 1) = Counter;
        LOBYTE(v214) = v84;
        *&v207 = "Animation: (%p) [%d] %{public}@ started";
        *(&v207 + 1) = 39;
        LOBYTE(v208) = 2;
        v204 = v99;
        v128 = v181;
        specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v203, &v206, &v205, &v213, v181, &v207, &v204);
        v57 = v183;

        (*(v197 + 8))(v128, v201);
      }

      else
      {
        v129 = v81;
        if (v81 == 20)
        {
          a1 = 3;
        }

        else
        {
          a1 = 4;
        }

        a4 = (bswap32(v81) | (4 * WORD1(v81)));
        v130 = v99;
        LODWORD(v99) = v199;
        v131 = (v197 + 16);
        v189 = *(v197 + 16);
        v132 = v189(v198, v181, v201);
        v81 = 0;
        LOBYTE(v207) = 1;
        v190 = v131;
        v195 = 16 * a1;
        v196 = v131 - 8;
        v202 = v130;
        v193 = v129;
        v194 = v130 + 32;
        v192 = a1;
        do
        {
          v199 = &v181;
          MEMORY[0x1EEE9AC00](v132);
          v134 = &v181 - ((v133 + 15) & 0xFFFFFFFFFFFFFFF0);
          v5 = (v134 + 8);
          v135 = a1;
          v136 = v134 + 8;
          do
          {
            *(v136 - 1) = 0;
            *v136 = 0;
            v136 += 16;
            --v135;
          }

          while (v135);
          v105 = v194 + 40 * v81;
          while (1)
          {
            v137 = *(v202 + 16);
            if (v81 == v137)
            {
              break;
            }

            if (v81 >= v137)
            {
              goto LABEL_192;
            }

            ++v81;
            outlined init with copy of AnyTrackedValue(v105, &v213);
            v138 = *(&v214 + 1);
            v96 = v215;
            __swift_project_boxed_opaque_existential_1(&v213, *(&v214 + 1));
            *(v5 - 8) = CVarArg.kdebugValue(_:)(a4 | v99, v138, v96);
            *v5 = v139 & 1;
            v5 += 16;
            v100 = __swift_destroy_boxed_opaque_existential_1(&v213);
            v105 += 40;
            if (!--a1)
            {
              goto LABEL_111;
            }
          }

          LOBYTE(v207) = 0;
LABEL_111:
          v140 = v193;
          if (v193 == 20)
          {
            v96 = v198;
            OSSignpostID.rawValue.getter();
            kdebug_trace();
          }

          else
          {
            kdebug_trace();
            v96 = v198;
          }

          a1 = v192;
          if (v134[8] == 1)
          {
            kdebug_trace_string();
          }

          if (v134[24] == 1)
          {
            kdebug_trace_string();
          }

          if (v134[40] == 1)
          {
            kdebug_trace_string();
          }

          if (v140 != 20 && v134[56] == 1)
          {
            kdebug_trace_string();
          }

          if (one-time initialization token for continuation != -1)
          {
            swift_once();
          }

          v141 = *v196;
          v142 = v201;
          (*v196)(v96, v201);
          v143 = __swift_project_value_buffer(v142, static OSSignpostID.continuation);
          v132 = v189(v96, v143, v142);
        }

        while ((v207 & 1) != 0);
        v57 = v183;

        v144 = v201;
        v141(v96, v201);
        v141(v181, v144);
      }
    }

    else
    {
    }

    a4 = v187;
    *(v187 + 7) = v57;
LABEL_129:
    specialized AnimatorState.addListeners(transaction:)(v184);

    outlined destroy of _AnyAnimatableData(&v211);
    outlined destroy of _AnyAnimatableData(v217);
    a1 = v188;
    LODWORD(v5) = v185;
  }

  v57 = AGGraphGetAttributeGraph();
  v5 = AGGraphGetCounter();

  v154 = MEMORY[0x1E69E6870];
  *(v62 + 56) = MEMORY[0x1E69E6810];
  *(v62 + 64) = v154;
  *(v62 + 32) = v5;
  v155 = AGGraphGetCurrentAttribute();
  if (v155 == v99)
  {
    goto LABEL_201;
  }

  v156 = v62;
  v157 = MEMORY[0x1E69E76D0];
  *(v62 + 96) = MEMORY[0x1E69E7668];
  *(v62 + 104) = v157;
  *(v62 + 72) = v155;
  *(v62 + 136) = MEMORY[0x1E69E6158];
  lazy protocol witness table accessor for type String and conformance String();
  *(v62 + 144) = v158;
  *(v62 + 112) = 0x756F79614C796E41;
  *(v62 + 120) = 0xE900000000000074;
  if (v59)
  {
    LOBYTE(v205) = v202;
    *&v217[0] = &dword_18D018000;
    v211 = v60;
    *&v207 = v64;
    *(&v207 + 1) = v61;
    LOBYTE(v208) = v63;
    *&v219 = "Animation: (%p) [%d] %{public}@ ended";
    *(&v219 + 1) = 37;
    LOBYTE(v220) = 2;
    v206 = v62;
    v159 = v191;
    specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v205, v217, &v211, &v207, v191, &v219, &v206);

    (*(v197 + 8))(v159, v201);
    goto LABEL_183;
  }

  v161 = v64;
  if (v64 == 20)
  {
    v5 = 3;
  }

  else
  {
    v5 = 4;
  }

  LODWORD(v99) = bswap32(v64) | (4 * WORD1(v64));
  v96 = v202;
  v162 = v197 + 16;
  v192 = *(v197 + 16);
  v163 = v192(v200, v191, v201);
  v81 = 0;
  LOBYTE(v219) = 1;
  v199 = v5;
  v197 = v162;
  v195 = 16 * v5;
  v196 = (v162 - 8);
  v202 = v156;
  v193 = v161;
  v194 = v156 + 32;
  do
  {
    v198 = &v181;
    MEMORY[0x1EEE9AC00](v163);
    a4 = &v181 - ((v164 + 15) & 0xFFFFFFFFFFFFFFF0);
    v165 = a4 + 8;
    v166 = v199;
    v167 = a4 + 8;
    do
    {
      *(v167 - 1) = 0;
      *v167 = 0;
      v167 += 16;
      v166 = (v166 - 1);
    }

    while (v166);
    v105 = v194 + 40 * v81;
    a1 = v199;
    while (1)
    {
      v168 = *(v202 + 16);
      if (v81 == v168)
      {
        break;
      }

      if (v81 >= v168)
      {
        __break(1u);
LABEL_191:
        __break(1u);
LABEL_192:
        __break(1u);
LABEL_193:
        v179 = v100;
        swift_once();
        v100 = v179;
LABEL_137:
        v149 = *(v81 + 616);
        if (*(v149 + 16) >= 0x43uLL)
        {
          if (*(v149 + 98) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 578;
            LODWORD(v207) = v105;
            BYTE4(v207) = v100 == v99;
            type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
            AGGraphAddTraceEvent();
          }

          v187 = a4;
          v188 = a1;
          v150 = one-time initialization token for animationState;
          v190 = v96;

          if (v150 != -1)
          {
            goto LABEL_197;
          }

          goto LABEL_142;
        }

        __break(1u);
LABEL_195:
        v180 = v100;
        swift_once();
        v100 = v180;
        goto LABEL_150;
      }

      ++v81;
      outlined init with copy of AnyTrackedValue(v105, &v207);
      v169 = *(&v208 + 1);
      v5 = v209;
      __swift_project_boxed_opaque_existential_1(&v207, *(&v208 + 1));
      *(v165 - 1) = CVarArg.kdebugValue(_:)(v99 | v96, v169, v5);
      *v165 = v170 & 1;
      v165 += 16;
      v100 = __swift_destroy_boxed_opaque_existential_1(&v207);
      v105 += 40;
      if (!--a1)
      {
        goto LABEL_168;
      }
    }

    LOBYTE(v219) = 0;
LABEL_168:
    v171 = v193;
    if (v193 == 20)
    {
      OSSignpostID.rawValue.getter();
    }

    kdebug_trace();
    if (a4[8] == 1)
    {
      kdebug_trace_string();
    }

    if (a4[24] == 1)
    {
      kdebug_trace_string();
    }

    if (a4[40] == 1)
    {
      kdebug_trace_string();
    }

    if (v171 != 20 && a4[56] == 1)
    {
      kdebug_trace_string();
    }

    if (one-time initialization token for continuation != -1)
    {
      swift_once();
    }

    v172 = *v196;
    v5 = v200;
    v173 = v201;
    (*v196)(v200, v201);
    v174 = __swift_project_value_buffer(v173, static OSSignpostID.continuation);
    v163 = v192(v5, v174, v173);
  }

  while ((v219 & 1) != 0);

  v175 = v201;
  v172(v200, v201);
  v172(v191, v175);
LABEL_183:

LABEL_184:
  specialized AnimatorState.removeListeners()();

  a1 = v188;
  *(v187 + 7) = 0;
LABEL_185:
  outlined init with copy of _AnyAnimatableData(&v213, &v207);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v177 = *a1;
  if (isUniquelyReferenced_nonNull_native)
  {
    outlined init with copy of _AnyAnimatableData(&v207, &v219);
    (*(*v177 + 152))(&v219);
    outlined destroy of _AnyAnimatableData(&v207);
  }

  else
  {
    v178 = (*(*v177 + 168))(&v207);
    outlined destroy of _AnyAnimatableData(&v207);

    *a1 = v178;
  }

  result = outlined destroy of _AnyAnimatableData(&v213);
  *(a1 + 8) = 1;
  return result;
}

{
  LODWORD(v5) = a3;
  v222 = *MEMORY[0x1E69E9840];
  v201 = type metadata accessor for OSSignpostID();
  v197 = *(v201 - 8);
  MEMORY[0x1EEE9AC00](v201);
  v9 = (&v181 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v181 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v199 = (&v181 - v14);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v181 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v200 = &v181 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v191 = &v181 - v21;
  if (*(a4 + 7))
  {
    Value = AGGraphGetValue();
    if (v23)
    {
      v24 = *Value;
    }

    else
    {
      v24 = -INFINITY;
    }
  }

  else
  {
    v24 = -INFINITY;
  }

  result = specialized AnimatableAttributeHelper.checkReset()();
  if (result)
  {
    *(a1 + 8) = 1;
  }

  else if (*(a1 + 8) != 1)
  {
    goto LABEL_131;
  }

  (*(**a1 + 96))(&v219);
  outlined init with copy of KeyedAnimatableArray<Int, _AnyAnimatableData>.Element((a4 + 16), &v213, &lazy cache variable for type metadata for _AnyAnimatableData?, &type metadata for _AnyAnimatableData, type metadata accessor for HitTestableEvent?);
  if (!v213)
  {
    outlined destroy of HitTestableEvent?(&v213, &lazy cache variable for type metadata for _AnyAnimatableData?, &type metadata for _AnyAnimatableData);
    goto LABEL_130;
  }

  v182 = v17;
  v217[0] = v213;
  v217[1] = v214;
  v218 = v215;
  v26 = v213;
  if (v219 == v213 && ((*(v219 + 88))(&v219 + 8, v217 + 8) & 1) != 0)
  {
    outlined destroy of _AnyAnimatableData(v217);
    goto LABEL_130;
  }

  v202 = a2;
  v185 = v5;
  v198 = v9;
  v181 = v12;
  AGGraphClearUpdate();
  outlined init with copy of AnimatableAttributeHelper<ScalePulseEffect>(a4, &v213, &lazy cache variable for type metadata for AnimatableAttributeHelper<AnyShape>, lazy protocol witness table accessor for type AnyShape and conformance AnyShape, &type metadata for AnyShape, type metadata accessor for AnimatableAttributeHelper);
  v27 = *AGGraphGetValue();

  outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(&v213, &lazy cache variable for type metadata for AnimatableAttributeHelper<AnyShape>, lazy protocol witness table accessor for type AnyShape and conformance AnyShape, &type metadata for AnyShape, type metadata accessor for AnimatableAttributeHelper);
  AGGraphSetUpdate();
  v184 = v27;
  v186 = Transaction.effectiveAnimation.getter(v27);
  if (v186)
  {
    LODWORD(v5) = v185;
    goto LABEL_18;
  }

  LODWORD(v5) = v185;
  if (v202)
  {

LABEL_18:
    outlined init with copy of _AnyAnimatableData(&v219, &v211);
    v28 = v211;
    if (v211 == v26)
    {
      v211[13](v212, v217 + 8);
    }

    else if (v28 == type metadata accessor for ZeroVTable())
    {
      outlined destroy of _AnyAnimatableData(&v211);
      outlined init with copy of _AnyAnimatableData(v217, &v211);
      (v211[14])(v212);
    }

    v188 = a1;
    v24 = *AGGraphGetValue();
    v187 = a4;
    v29 = *(a4 + 7);
    if (!v29)
    {
      outlined init with copy of _AnyAnimatableData(&v211, &v213);
      v206 = &type metadata for AnyShape;
      type metadata accessor for AnyShape.Type();
      type metadata accessor for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == CGFloat>.Type(0, &lazy cache variable for type metadata for any AnimationFinishingDefinition<Self.AnimationFinishingDefinition.Value == _AnyAnimatableData>.Type, &type metadata for _AnyAnimatableData);
      v51 = swift_dynamicCast();
      if (v51)
      {
        v52 = v207;
      }

      else
      {
        v52 = 0;
      }

      if (v51)
      {
        v53 = *(&v207 + 1);
      }

      else
      {
        v53 = 0;
      }

      v54 = v184;

      v55 = v186;

      v57 = _s7SwiftUI13AnimatorStateC9animation8interval2at2in19finishingDefinitionACyxGAA9AnimationV_xAA4TimeVAA11TransactionVAA0k9FinishingJ0_px5ValueRts_XPXpSgtc33_35ADF281214A25133F1A6DF28858952DLlfCAA18_AnyAnimatableDataV_Tt4B5(v56, &v213, v54, v52, v53, v24);
      CurrentAttribute = AGGraphGetCurrentAttribute();
      LODWORD(v5) = CurrentAttribute;
      LODWORD(v202) = *MEMORY[0x1E698D3F8];
      if (CurrentAttribute == v202)
      {
        v59 = 0;
      }

      else
      {
        v59 = CurrentAttribute;
      }

      (*(*v55 + 96))(&v207);
      v61 = *(&v207 + 1);
      v60 = v207;
      v62 = *(&v208 + 1);
      v63 = v208;
      v64 = v209;
      v205 = 0x7FF8000000000000;
      v206 = 0x7FF8000000000000;
      v203 = NAN;
      v204 = 0x3FF0000000000000;
      v213 = v207;
      v214 = v208;
      v215 = v209;
      LODWORD(v199) = v210;
      LOBYTE(v216) = v210;
      static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v213, &v206, &v205, &v204, &v203);
      v65 = v205;
      v66 = v206;
      v67 = v203;
      v68 = v204;
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_202;
      }

      goto LABEL_42;
    }

    LOBYTE(v213) = 0;
    v30 = v186;
    v183 = v29;
    specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(v186, &v211, v184, v5, v24);
    v31 = AGGraphGetCurrentAttribute();
    v32 = v31;
    v33 = *MEMORY[0x1E698D3F8];
    if (v31 == *MEMORY[0x1E698D3F8])
    {
      v34 = 0;
    }

    else
    {
      v34 = v31;
    }

    (*(*v30 + 96))(&v207);
    v36 = *(&v207 + 1);
    Counter = v207;
    v37 = v208;
    v38 = v209;
    v39 = v210;
    v205 = 0x7FF8000000000000;
    v206 = 0x7FF8000000000000;
    v203 = NAN;
    v204 = 0x3FF0000000000000;
    v213 = v207;
    v214 = v208;
    v215 = v209;
    LOBYTE(v216) = v210;
    static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v213, &v206, &v205, &v204, &v203);
    v40 = v205;
    v41 = v206;
    v42 = v203;
    v43 = v204;
    if (one-time initialization token for enabledCategories != -1)
    {
      v202 = v206;
      *&v195 = v203;
      v196 = v205;
      v198 = v204;
      swift_once();
      v42 = *&v195;
      v40 = v196;
      v43 = v198;
      v41 = v202;
    }

    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
LABEL_199:
      swift_once();
LABEL_52:
      v82 = *(&static Signpost.animationState + 1);
      v81 = static Signpost.animationState;
      v83 = word_1ED5283E8;
      v84 = HIBYTE(word_1ED5283E8);
      v85 = byte_1ED5283EA;
      v86 = static os_signpost_type_t.event.getter();
      v213 = __PAIR128__(v82, v81);
      LOBYTE(v214) = v83;
      BYTE1(v214) = v84;
      BYTE2(v214) = v85;
      if (Signpost.isEnabled.getter())
      {
        LODWORD(v202) = v86;
        v87 = one-time initialization token for _signpostLog;

        if (v87 != -1)
        {
          swift_once();
        }

        v88 = _signpostLog;
        OSSignpostID.init(log:object:)();
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
        v89 = swift_allocObject();
        *(v89 + 16) = xmmword_18DDAF080;
        if (AGGraphGetCurrentAttribute() == v33)
        {
          __break(1u);
        }

        else
        {
          v90 = AGGraphGetAttributeGraph();
          Counter = AGGraphGetCounter();

          v91 = MEMORY[0x1E69E6870];
          *(v89 + 56) = MEMORY[0x1E69E6810];
          *(v89 + 64) = v91;
          *(v89 + 32) = Counter;
          v92 = AGGraphGetCurrentAttribute();
          if (v92 != v33)
          {
            v5 = v89;
            v93 = MEMORY[0x1E69E76D0];
            *(v89 + 96) = MEMORY[0x1E69E7668];
            *(v89 + 104) = v93;
            *(v89 + 72) = v92;
            *(v89 + 136) = MEMORY[0x1E69E6158];
            lazy protocol witness table accessor for type String and conformance String();
            *(v89 + 144) = v94;
            *(v89 + 112) = 0x6570616853796E41;
            *(v89 + 120) = 0xE800000000000000;
            v95 = v182;
            if (v84)
            {
              LOBYTE(v203) = v202;
              v205 = v88;
              v206 = &dword_18D018000;
              *&v213 = v81;
              *(&v213 + 1) = v82;
              LOBYTE(v214) = v83;
              *&v207 = "Animation: (%p) [%d] %{public}@ updated";
              *(&v207 + 1) = 39;
              LOBYTE(v208) = 2;
              v204 = v89;
              specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v203, &v206, &v205, &v213, v182, &v207, &v204);

              (*(v197 + 8))(v95, v201);
            }

            else
            {
              if (v81 == 20)
              {
                v96 = 3;
              }

              else
              {
                v96 = 4;
              }

              a1 = bswap32(v81) | (4 * WORD1(v81));
              LODWORD(v202) = v202;
              v97 = (v197 + 16);
              v189 = *(v197 + 16);
              v98 = v189(v199, v182, v201);
              v99 = 0;
              LOBYTE(v207) = 1;
              v190 = v97;
              v195 = 16 * v96;
              v196 = v97 - 8;
              *&v193 = v81;
              v194 = v5 + 32;
              v192 = v96;
              do
              {
                v198 = &v181;
                MEMORY[0x1EEE9AC00](v98);
                a4 = &v181 - ((v101 + 15) & 0xFFFFFFFFFFFFFFF0);
                v102 = a4 + 8;
                v103 = v96;
                v104 = a4 + 8;
                do
                {
                  *(v104 - 1) = 0;
                  *v104 = 0;
                  v104 += 16;
                  --v103;
                }

                while (v103);
                v105 = v194 + 40 * v99;
                while (1)
                {
                  v106 = *(v5 + 16);
                  if (v99 == v106)
                  {
                    break;
                  }

                  if (v99 >= v106)
                  {
                    goto LABEL_191;
                  }

                  ++v99;
                  outlined init with copy of AnyTrackedValue(v105, &v213);
                  v81 = v5;
                  v107 = *(&v214 + 1);
                  v108 = v215;
                  __swift_project_boxed_opaque_existential_1(&v213, *(&v214 + 1));
                  v109 = v108;
                  v5 = v81;
                  *(v102 - 1) = CVarArg.kdebugValue(_:)(a1 | v202, v107, v109);
                  *v102 = v110 & 1;
                  v102 += 16;
                  v100 = __swift_destroy_boxed_opaque_existential_1(&v213);
                  v105 += 40;
                  if (!--v96)
                  {
                    goto LABEL_72;
                  }
                }

                LOBYTE(v207) = 0;
LABEL_72:
                v111 = v193;
                if (*&v193 == 20)
                {
                  OSSignpostID.rawValue.getter();
                }

                kdebug_trace();
                if (a4[8] == 1)
                {
                  kdebug_trace_string();
                }

                if (a4[24] == 1)
                {
                  kdebug_trace_string();
                }

                if (a4[40] == 1)
                {
                  kdebug_trace_string();
                }

                if (*&v111 != 20 && a4[56] == 1)
                {
                  kdebug_trace_string();
                }

                if (one-time initialization token for continuation != -1)
                {
                  swift_once();
                }

                v112 = *v196;
                v113 = v199;
                v114 = v201;
                (*v196)(v199, v201);
                v115 = __swift_project_value_buffer(v114, static OSSignpostID.continuation);
                v98 = v189(v113, v115, v114);
                v96 = v192;
              }

              while ((v207 & 1) != 0);

              v116 = v201;
              v112(v199, v201);
              v112(v182, v116);
            }

LABEL_88:
            a4 = v187;
            goto LABEL_129;
          }
        }

        __break(1u);
        goto LABEL_207;
      }

      goto LABEL_88;
    }

    if (*(static CustomEventTrace.enabledCategories + 98) == 1)
    {
      v44 = v34;
      v45 = v39;
      v46 = static CustomEventTrace.recorder;
      if (static CustomEventTrace.recorder)
      {
        v47 = v32 == v33;
        v202 = *(static CustomEventTrace.recorder + 24);
        *(v202 + 4) = 1602;
        v48 = *(v46 + 16);
        LODWORD(v213) = v44;
        BYTE4(v213) = v47;
        *(&v213 + 1) = &type metadata for AnyShape;
        *&v214 = v41;
        *(&v214 + 1) = v40;
        v215 = v43;
        v216 = v42;
        type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);
        v198 = v49;

        v50 = v48;
        AGGraphAddTraceEvent();
        outlined consume of Animation.Function(Counter, v36, v37, *(&v37 + 1), v38, v45);

        goto LABEL_51;
      }

      v74 = Counter;
      v75 = v36;
      v77 = *(&v37 + 1);
      v76 = v37;
      v78 = v38;
      v79 = v45;
    }

    else
    {
      v74 = Counter;
      v75 = v36;
      v77 = *(&v37 + 1);
      v76 = v37;
      v78 = v38;
      v79 = v39;
    }

    outlined consume of Animation.Function(v74, v75, v76, v77, v78, v79);
LABEL_51:
    v80 = one-time initialization token for animationState;

    if (v80 == -1)
    {
      goto LABEL_52;
    }

    goto LABEL_199;
  }

  outlined destroy of _AnyAnimatableData(v217);

LABEL_130:
  while (1)
  {
    result = outlined destroy of HitTestableEvent?((a4 + 16), &lazy cache variable for type metadata for _AnyAnimatableData?, &type metadata for _AnyAnimatableData);
    v145 = v220;
    *(a4 + 1) = v219;
    *(a4 + 2) = v145;
    *(a4 + 6) = v221;
LABEL_131:
    v96 = *(a4 + 7);
    if (!v96)
    {
      return result;
    }

    v146 = *(**a1 + 96);

    v146(&v213, v147);
    LOBYTE(v207) = 0;
    v148 = specialized AnimatorState.update(_:at:environment:)(&v213, v5, v24);
    v100 = AGGraphGetCurrentAttribute();
    LODWORD(v99) = *MEMORY[0x1E698D3F8];
    if (v100 == *MEMORY[0x1E698D3F8])
    {
      LODWORD(v105) = 0;
    }

    else
    {
      LODWORD(v105) = v100;
    }

    v81 = &type metadata instantiation cache for TupleTypeDescription;
    if (v148)
    {
      if (one-time initialization token for enabledCategories != -1)
      {
        goto LABEL_193;
      }

      goto LABEL_137;
    }

    if (one-time initialization token for enabledCategories != -1)
    {
      goto LABEL_195;
    }

LABEL_150:
    v160 = *(v81 + 616);
    if (*(v160 + 16) >= 0x43uLL)
    {
      if (*(v160 + 98) == 1 && static CustomEventTrace.recorder)
      {
        *(*(static CustomEventTrace.recorder + 24) + 4) = 834;
        LODWORD(v207) = v105;
        BYTE4(v207) = v100 == v99;
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
        AGGraphAddTraceEvent();
      }

      specialized AnimatorState.nextUpdate()();
      goto LABEL_185;
    }

    __break(1u);
LABEL_197:
    swift_once();
LABEL_142:
    v61 = *(&static Signpost.animationState + 1);
    v64 = static Signpost.animationState;
    v63 = word_1ED5283E8;
    v59 = HIBYTE(word_1ED5283E8);
    v151 = byte_1ED5283EA;
    v152 = static os_signpost_type_t.end.getter();
    v207 = __PAIR128__(v61, v64);
    LOBYTE(v208) = v63;
    BYTE1(v208) = v59;
    BYTE2(v208) = v151;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {

      goto LABEL_184;
    }

    LODWORD(v202) = v152;
    v153 = one-time initialization token for _signpostLog;
    v57 = v190;

    if (v153 != -1)
    {
      swift_once();
    }

    v60 = _signpostLog;
    OSSignpostID.init(log:object:)();
    type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
    v62 = swift_allocObject();
    *(v62 + 16) = xmmword_18DDAF080;
    if (AGGraphGetCurrentAttribute() != v99)
    {
      break;
    }

    __break(1u);
LABEL_201:
    __break(1u);
LABEL_202:
    v195 = v68;
    v196 = v66;
    v193 = v67;
    v194 = v65;
    swift_once();
    v67 = v193;
    v65 = v194;
    v68 = v195;
    v66 = v196;
LABEL_42:
    if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
    {
      __break(1u);
LABEL_204:
      swift_once();
      goto LABEL_92;
    }

    v69 = *(static CustomEventTrace.enabledCategories + 98);
    v183 = v57;
    if (v69 == 1)
    {
      v70 = static CustomEventTrace.recorder;
      if (static CustomEventTrace.recorder)
      {
        v71 = v5 == v202;
        *(*(static CustomEventTrace.recorder + 24) + 4) = 322;
        v72 = *(v70 + 16);
        LODWORD(v213) = v59;
        BYTE4(v213) = v71;
        *(&v213 + 1) = &type metadata for AnyShape;
        *&v214 = v66;
        *(&v214 + 1) = v65;
        v215 = v68;
        v216 = v67;
        type metadata accessor for (AGAttribute?, Any.Type, Double, Double, Double, Double)(0);

        v73 = v72;
        AGGraphAddTraceEvent();
        outlined consume of Animation.Function(v60, v61, v63, v62, v64, v199);
      }

      else
      {
        outlined consume of Animation.Function(v60, v61, v63, v62, v64, v199);
      }

      v57 = v183;
    }

    else
    {
      outlined consume of Animation.Function(v60, v61, v63, v62, v64, v199);
    }

    v117 = one-time initialization token for animationState;

    if (v117 != -1)
    {
      goto LABEL_204;
    }

LABEL_92:
    Counter = *(&static Signpost.animationState + 1);
    v81 = static Signpost.animationState;
    v84 = word_1ED5283E8;
    v83 = HIBYTE(word_1ED5283E8);
    v118 = byte_1ED5283EA;
    v119 = static os_signpost_type_t.begin.getter();
    v213 = __PAIR128__(Counter, v81);
    LOBYTE(v214) = v84;
    BYTE1(v214) = v83;
    BYTE2(v214) = v118;
    v120 = Signpost.isEnabled.getter();
    LODWORD(v82) = v202;
    if (v120)
    {
      LODWORD(v199) = v119;
      v121 = one-time initialization token for _signpostLog;

      if (v121 != -1)
      {
LABEL_207:
        swift_once();
      }

      v122 = _signpostLog;
      OSSignpostID.init(log:object:)();
      type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, type metadata accessor for CVarArg, MEMORY[0x1E69E6F90]);
      v99 = swift_allocObject();
      *(v99 + 16) = xmmword_18DDAF080;
      if (AGGraphGetCurrentAttribute() == v82)
      {
        __break(1u);
LABEL_209:
        __break(1u);
      }

      v123 = AGGraphGetAttributeGraph();
      v96 = AGGraphGetCounter();

      v124 = MEMORY[0x1E69E6870];
      *(v99 + 56) = MEMORY[0x1E69E6810];
      *(v99 + 64) = v124;
      *(v99 + 32) = v96;
      v125 = AGGraphGetCurrentAttribute();
      if (v125 == v82)
      {
        goto LABEL_209;
      }

      v126 = MEMORY[0x1E69E76D0];
      *(v99 + 96) = MEMORY[0x1E69E7668];
      *(v99 + 104) = v126;
      *(v99 + 72) = v125;
      *(v99 + 136) = MEMORY[0x1E69E6158];
      lazy protocol witness table accessor for type String and conformance String();
      *(v99 + 144) = v127;
      *(v99 + 112) = 0x6570616853796E41;
      *(v99 + 120) = 0xE800000000000000;
      if (v83)
      {
        LOBYTE(v203) = v199;
        v205 = v122;
        v206 = &dword_18D018000;
        *&v213 = v81;
        *(&v213 + 1) = Counter;
        LOBYTE(v214) = v84;
        *&v207 = "Animation: (%p) [%d] %{public}@ started";
        *(&v207 + 1) = 39;
        LOBYTE(v208) = 2;
        v204 = v99;
        v128 = v181;
        specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v203, &v206, &v205, &v213, v181, &v207, &v204);
        v57 = v183;

        (*(v197 + 8))(v128, v201);
      }

      else
      {
        *&v129 = v81;
        if (v81 == 20)
        {
          a1 = 3;
        }

        else
        {
          a1 = 4;
        }

        a4 = (bswap32(v81) | (4 * WORD1(v81)));
        v130 = v99;
        LODWORD(v99) = v199;
        v131 = (v197 + 16);
        v189 = *(v197 + 16);
        v132 = v189(v198, v181, v201);
        v81 = 0;
        LOBYTE(v207) = 1;
        v190 = v131;
        v195 = 16 * a1;
        v196 = v131 - 8;
        v202 = v130;
        v193 = v129;
        v194 = v130 + 32;
        v192 = a1;
        do
        {
          v199 = &v181;
          MEMORY[0x1EEE9AC00](v132);
          v134 = &v181 - ((v133 + 15) & 0xFFFFFFFFFFFFFFF0);
          v5 = (v134 + 8);
          v135 = a1;
          v136 = v134 + 8;
          do
          {
            *(v136 - 1) = 0;
            *v136 = 0;
            v136 += 16;
            --v135;
          }

          while (v135);
          v105 = v194 + 40 * v81;
          while (1)
          {
            v137 = *(v202 + 16);
            if (v81 == v137)
            {
              break;
            }

            if (v81 >= v137)
            {
              goto LABEL_192;
            }

            ++v81;
            outlined init with copy of AnyTrackedValue(v105, &v213);
            v138 = *(&v214 + 1);
            v96 = v215;
            __swift_project_boxed_opaque_existential_1(&v213, *(&v214 + 1));
            *(v5 - 8) = CVarArg.kdebugValue(_:)(a4 | v99, v138, v96);
            *v5 = v139 & 1;
            v5 += 16;
            v100 = __swift_destroy_boxed_opaque_existential_1(&v213);
            v105 += 40;
            if (!--a1)
            {
              goto LABEL_111;
            }
          }

          LOBYTE(v207) = 0;
LABEL_111:
          v140 = v193;
          if (*&v193 == 20)
          {
            v96 = v198;
            OSSignpostID.rawValue.getter();
            kdebug_trace();
          }

          else
          {
            kdebug_trace();
            v96 = v198;
          }

          a1 = v192;
          if (v134[8] == 1)
          {
            kdebug_trace_string();
          }

          if (v134[24] == 1)
          {
            kdebug_trace_string();
          }

          if (v134[40] == 1)
          {
            kdebug_trace_string();
          }

          if (*&v140 != 20 && v134[56] == 1)
          {
            kdebug_trace_string();
          }

          if (one-time initialization token for continuation != -1)
          {
            swift_once();
          }

          v141 = *v196;
          v142 = v201;
          (*v196)(v96, v201);
          v143 = __swift_project_value_buffer(v142, static OSSignpostID.continuation);
          v132 = v189(v96, v143, v142);
        }

        while ((v207 & 1) != 0);
        v57 = v183;

        v144 = v201;
        v141(v96, v201);
        v141(v181, v144);
      }
    }

    else
    {
    }

    a4 = v187;
    *(v187 + 7) = v57;
LABEL_129:
    specialized AnimatorState.addListeners(transaction:)(v184);

    outlined destroy of _AnyAnimatableData(&v211);
    outlined destroy of _AnyAnimatableData(v217);
    a1 = v188;
    LODWORD(v5) = v185;
  }

  v57 = AGGraphGetAttributeGraph();
  v5 = AGGraphGetCounter();

  v154 = MEMORY[0x1E69E6870];
  *(v62 + 56) = MEMORY[0x1E69E6810];
  *(v62 + 64) = v154;
  *(v62 + 32) = v5;
  v155 = AGGraphGetCurrentAttribute();
  if (v155 == v99)
  {
    goto LABEL_201;
  }

  v156 = v62;
  v157 = MEMORY[0x1E69E76D0];
  *(v62 + 96) = MEMORY[0x1E69E7668];
  *(v62 + 104) = v157;
  *(v62 + 72) = v155;
  *(v62 + 136) = MEMORY[0x1E69E6158];
  lazy protocol witness table accessor for type String and conformance String();
  *(v62 + 144) = v158;
  *(v62 + 112) = 0x6570616853796E41;
  *(v62 + 120) = 0xE800000000000000;
  if (v59)
  {
    LOBYTE(v205) = v202;
    *&v217[0] = &dword_18D018000;
    v211 = v60;
    *&v207 = v64;
    *(&v207 + 1) = v61;
    LOBYTE(v208) = v63;
    *&v219 = "Animation: (%p) [%d] %{public}@ ended";
    *(&v219 + 1) = 37;
    LOBYTE(v220) = 2;
    v206 = v62;
    v159 = v191;
    specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v205, v217, &v211, &v207, v191, &v219, &v206);

    (*(v197 + 8))(v159, v201);
    goto LABEL_183;
  }

  *&v161 = v64;
  if (v64 == 20)
  {
    v5 = 3;
  }

  else
  {
    v5 = 4;
  }

  LODWORD(v99) = bswap32(v64) | (4 * WORD1(v64));
  v96 = v202;
  v162 = v197 + 16;
  v192 = *(v197 + 16);
  v163 = v192(v200, v191, v201);
  v81 = 0;
  LOBYTE(v219) = 1;
  v199 = v5;
  v197 = v162;
  v195 = 16 * v5;
  v196 = (v162 - 8);
  v202 = v156;
  v193 = v161;
  v194 = v156 + 32;
  do
  {
    v198 = &v181;
    MEMORY[0x1EEE9AC00](v163);
    a4 = &v181 - ((v164 + 15) & 0xFFFFFFFFFFFFFFF0);
    v165 = a4 + 8;
    v166 = v199;
    v167 = a4 + 8;
    do
    {
      *(v167 - 1) = 0;
      *v167 = 0;
      v167 += 16;
      v166 = (v166 - 1);
    }

    while (v166);
    v105 = v194 + 40 * v81;
    a1 = v199;
    while (1)
    {
      v168 = *(v202 + 16);
      if (v81 == v168)
      {
        break;
      }

      if (v81 >= v168)
      {
        __break(1u);
LABEL_191:
        __break(1u);
LABEL_192:
        __break(1u);
LABEL_193:
        v179 = v100;
        swift_once();
        v100 = v179;
LABEL_137:
        v149 = *(v81 + 616);
        if (*(v149 + 16) >= 0x43uLL)
        {
          if (*(v149 + 98) == 1 && static CustomEventTrace.recorder)
          {
            *(*(static CustomEventTrace.recorder + 24) + 4) = 578;
            LODWORD(v207) = v105;
            BYTE4(v207) = v100 == v99;
            type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AGAttribute?, type metadata accessor for AGAttribute, MEMORY[0x1E69E6720]);
            AGGraphAddTraceEvent();
          }

          v187 = a4;
          v188 = a1;
          v150 = one-time initialization token for animationState;
          v190 = v96;

          if (v150 != -1)
          {
            goto LABEL_197;
          }

          goto LABEL_142;
        }

        __break(1u);
LABEL_195:
        v180 = v100;
        swift_once();
        v100 = v180;
        goto LABEL_150;
      }

      ++v81;
      outlined init with copy of AnyTrackedValue(v105, &v207);
      v169 = *(&v208 + 1);
      v5 = v209;
      __swift_project_boxed_opaque_existential_1(&v207, *(&v208 + 1));
      *(v165 - 1) = CVarArg.kdebugValue(_:)(v99 | v96, v169, v5);
      *v165 = v170 & 1;
      v165 += 16;
      v100 = __swift_destroy_boxed_opaque_existential_1(&v207);
      v105 += 40;
      if (!--a1)
      {
        goto LABEL_168;
      }
    }

    LOBYTE(v219) = 0;
LABEL_168:
    v171 = v193;
    if (*&v193 == 20)
    {
      OSSignpostID.rawValue.getter();
    }

    kdebug_trace();
    if (a4[8] == 1)
    {
      kdebug_trace_string();
    }

    if (a4[24] == 1)
    {
      kdebug_trace_string();
    }

    if (a4[40] == 1)
    {
      kdebug_trace_string();
    }

    if (*&v171 != 20 && a4[56] == 1)
    {
      kdebug_trace_string();
    }

    if (one-time initialization token for continuation != -1)
    {
      swift_once();
    }

    v172 = *v196;
    v5 = v200;
    v173 = v201;
    (*v196)(v200, v201);
    v174 = __swift_project_value_buffer(v173, static OSSignpostID.continuation);
    v163 = v192(v5, v174, v173);
  }

  while ((v219 & 1) != 0);

  v175 = v201;
  v172(v200, v201);
  v172(v191, v175);
LABEL_183:

LABEL_184:
  specialized AnimatorState.removeListeners()();

  a1 = v188;
  *(v187 + 7) = 0;
LABEL_185:
  outlined init with copy of _AnyAnimatableData(&v213, &v207);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v177 = *a1;
  if (isUniquelyReferenced_nonNull_native)
  {
    outlined init with copy of _AnyAnimatableData(&v207, &v219);
    (*(*v177 + 104))(&v219);
    outlined destroy of _AnyAnimatableData(&v207);
  }

  else
  {
    v178 = (*(*v177 + 120))(&v207);
    outlined destroy of _AnyAnimatableData(&v207);

    *a1 = v178;
  }

  result = outlined destroy of _AnyAnimatableData(&v213);
  *(a1 + 8) = 1;
  return result;
}

void specialized StatefulRule<>.update<A>(modify:create:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr))
{
  v13 = *MEMORY[0x1E69E9840];
  OutputValue = AGGraphGetOutputValue();
  if (OutputValue)
  {
    v5 = *OutputValue;
    v6 = OutputValue[1];
    MEMORY[0x1EEE9AC00](OutputValue);
    v7 = one-time initialization token for lockAssertionsAreEnabled;
    swift_retain_n();
    if (v7 != -1)
    {
      swift_once();
    }

    if (!lockAssertionsAreEnabled)
    {
      goto LABEL_8;
    }

    if (one-time initialization token for _lock != -1)
    {
      swift_once();
    }

    if (!_MovableLockIsOwner(static Update._lock))
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    else
    {
LABEL_8:
      type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for ViewLayoutEngine<AnyLayout>, lazy protocol witness table accessor for type AnyLayout and conformance AnyLayout, &type metadata for AnyLayout, type metadata accessor for ViewLayoutEngine);
      v9 = MEMORY[0x1EEE9AC00](v8);
      (*(*v5 + 80))(v9);

      v11 = v5;
      v12 = v6 + 1;

      AGGraphSetOutputValue();
    }
  }

  else
  {
    a3(&v11);
    _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA04ViewcE0VyAA03AnyC0VG_Tt1g5(&v11, v10);
    v11 = v10[0];
    v12 = v10[1];
    AGGraphSetOutputValue();
  }
}

{
  v13 = *MEMORY[0x1E69E9840];
  OutputValue = AGGraphGetOutputValue();
  if (OutputValue)
  {
    v5 = *OutputValue;
    v6 = OutputValue[1];
    MEMORY[0x1EEE9AC00](OutputValue);
    v7 = one-time initialization token for lockAssertionsAreEnabled;

    if (v7 != -1)
    {
      swift_once();
    }

    if (!lockAssertionsAreEnabled)
    {
      goto LABEL_8;
    }

    if (one-time initialization token for _lock != -1)
    {
      swift_once();
    }

    if (!_MovableLockIsOwner(static Update._lock))
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    else
    {
LABEL_8:
      type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for UnaryLayoutEngine<ConcentricPaddingLayout>, lazy protocol witness table accessor for type ConcentricPaddingLayout and conformance ConcentricPaddingLayout, &type metadata for ConcentricPaddingLayout, type metadata accessor for UnaryLayoutEngine);
      v9 = MEMORY[0x1EEE9AC00](v8);
      (*(*v5 + 80))(v9);
      v11 = v5;
      v12 = v6 + 1;

      AGGraphSetOutputValue();
    }
  }

  else
  {
    a3(&v11);
    _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA05UnarycE033_1C3B77B617AD058A6802F719E38F5D79LLVyAA017ConcentricPaddingC033_7079FF89BCF97F81EB250A589B9A5CEDLLVG_Tt1g5(&v11, v10);
    v11 = v10[0];
    v12 = v10[1];
    AGGraphSetOutputValue();
  }
}

{
  v17 = *MEMORY[0x1E69E9840];
  OutputValue = AGGraphGetOutputValue();
  if (OutputValue)
  {
    v5 = *OutputValue;
    v6 = OutputValue[1];
    MEMORY[0x1EEE9AC00](OutputValue);
    v7 = one-time initialization token for lockAssertionsAreEnabled;

    if (v7 != -1)
    {
      swift_once();
    }

    if (!lockAssertionsAreEnabled)
    {
      goto LABEL_8;
    }

    if (one-time initialization token for _lock != -1)
    {
      swift_once();
    }

    if (!_MovableLockIsOwner(static Update._lock))
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    else
    {
LABEL_8:
      type metadata accessor for SizeFittingTextLayoutComputer.Engine<ResolvedTextHelper, StickyTextSizeFittingLogic>(0, &lazy cache variable for type metadata for SizeFittingTextLayoutComputer.Engine<ResolvedTextHelper, StickyTextSizeFittingLogic>, type metadata accessor for SizeFittingTextLayoutComputer.Engine);
      v9 = MEMORY[0x1EEE9AC00](v8);
      (*(*v5 + 80))(v9);
      v15 = v5;
      v16 = v6 + 1;

      AGGraphSetOutputValue();
    }
  }

  else
  {
    a3(&v13);
    v10 = v13;
    v11 = v14;
    swift_beginAccess();
    if (static LayoutTrace.recorder)
    {
      type metadata accessor for TracingLayoutEngineBox<SizeFittingTextLayoutComputer.Engine<ResolvedTextHelper, StickyTextSizeFittingLogic>>(0, &lazy cache variable for type metadata for TracingLayoutEngineBox<SizeFittingTextLayoutComputer.Engine<ResolvedTextHelper, StickyTextSizeFittingLogic>>, type metadata accessor for TracingLayoutEngineBox);
      swift_allocObject();
      v12 = specialized TracingLayoutEngineBox.init(_:)(v10, v11);
    }

    else
    {
      type metadata accessor for TracingLayoutEngineBox<SizeFittingTextLayoutComputer.Engine<ResolvedTextHelper, StickyTextSizeFittingLogic>>(0, &lazy cache variable for type metadata for LayoutEngineBox<SizeFittingTextLayoutComputer.Engine<ResolvedTextHelper, StickyTextSizeFittingLogic>>, type metadata accessor for LayoutEngineBox);
      v12 = swift_allocObject();
      *(v12 + 16) = v10;
      *(v12 + 24) = v11;
    }

    v13 = v12;
    v14 = 0;
    AGGraphSetOutputValue();
  }
}

{
  v13 = *MEMORY[0x1E69E9840];
  OutputValue = AGGraphGetOutputValue();
  if (OutputValue)
  {
    v5 = *OutputValue;
    v6 = OutputValue[1];
    MEMORY[0x1EEE9AC00](OutputValue);
    v7 = one-time initialization token for lockAssertionsAreEnabled;
    swift_retain_n();
    if (v7 != -1)
    {
      swift_once();
    }

    if (!lockAssertionsAreEnabled)
    {
      goto LABEL_8;
    }

    if (one-time initialization token for _lock != -1)
    {
      swift_once();
    }

    if (!_MovableLockIsOwner(static Update._lock))
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    else
    {
LABEL_8:
      type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for ViewLayoutEngine<AnyLayout>, lazy protocol witness table accessor for type AnyLayout and conformance AnyLayout, &type metadata for AnyLayout, type metadata accessor for ViewLayoutEngine);
      v9 = MEMORY[0x1EEE9AC00](v8);
      (*(*v5 + 80))(v9);

      v11 = v5;
      v12 = v6 + 1;

      AGGraphSetOutputValue();
    }
  }

  else
  {
    a3(&v11);
    _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA04ViewcE0VyAA03AnyC0VG_Tt1g5(&v11, v10);
    v11 = v10[0];
    v12 = v10[1];
    AGGraphSetOutputValue();
  }
}

_OWORD *$defer #1 <A>() in _AnyLayoutBox.updateCache(_:subviews:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = AssociatedTypeWitness;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v9);
  (*(*(AssociatedTypeWitness - 8) + 16))(boxed_opaque_existential_1, a2, AssociatedTypeWitness);
  __swift_destroy_boxed_opaque_existential_1((a1 + 8));
  return outlined init with take of Any(&v9, (a1 + 8));
}

uint64_t initializeWithCopy for _StrokedShape(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  *v7 = *v8;
  *(v7 + 8) = *(v8 + 8);
  *(v7 + 12) = *(v8 + 12);
  *(v7 + 16) = *(v8 + 16);
  *(v7 + 24) = *(v8 + 24);
  *(v7 + 32) = *(v8 + 32);

  return a1;
}

double destroy for _StrokedShape(uint64_t a1, uint64_t a2)
{
  (*(*(*(a2 + 16) - 8) + 8))();

  return result;
}

uint64_t _StrokedShape.animatableData.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = *(*(a1 + 24) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v20[-1] - v9;
  (*(v6 + 24))(v5, v6, v8);
  v11 = (v2 + *(a1 + 36));
  v12 = v11[2];
  v13 = v11[4];
  v20[0] = *v11;
  v20[1] = v12;
  v20[2] = v13;
  type metadata accessor for AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>(0);
  v15 = v14;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  _s7SwiftUI14AnimatablePairVy12CoreGraphics7CGFloatVAFGACyxq_GAA16VectorArithmeticAAWlTm_1(&lazy protocol witness table cache variable for type AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>);
  return AnimatablePair.init(_:_:)(v10, v20, AssociatedTypeWitness, v15, AssociatedConformanceWitness, v17, a2);
}

void type metadata accessor for AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>)
  {
    type metadata accessor for AnimatablePair<CGFloat, CGFloat>(255);
    v3 = v2;
    lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    v5 = v4;
    lazy protocol witness table accessor for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>(&lazy protocol witness table cache variable for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<CGFloat, CGFloat>, protocol conformance descriptor for AnimatablePair<A, B>);
    v9[0] = MEMORY[0x1E69E7DE0];
    v9[1] = v3;
    v9[2] = v5;
    v9[3] = v6;
    v7 = type metadata accessor for AnimatablePair(a1, v9);
    if (!v8)
    {
      atomic_store(v7, &lazy cache variable for type metadata for AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>);
    }
  }
}

double protocol witness for Animatable.animatableData.setter in conformance _ContrastEffect(double *a1)
{
  result = *a1;
  *v1 = *a1;
  return result;
}

uint64_t assignWithCopy for _StrokedShape(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  *v7 = *v8;
  *(v7 + 8) = *(v8 + 8);
  *(v7 + 12) = *(v8 + 12);
  *(v7 + 16) = *(v8 + 16);
  *(v7 + 24) = *(v8 + 24);

  *(v7 + 32) = *(v8 + 32);
  return a1;
}

uint64_t assignWithCopy for _MatchedGeometryEffect(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v9 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  *v9 = *v10;
  *(v9 + 8) = *(v10 + 8);
  *(v9 + 16) = *(v10 + 16);
  *(v9 + 24) = *(v10 + 24);
  return a1;
}

uint64_t Spring.update<A>(value:velocity:target:deltaTime:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v25 = a3;
  v26 = a5;
  v11 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v25 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v25 - v18;
  v27 = &v25 - v18;
  v21 = v6[1];
  v22 = v6[2];
  v28 = *v6;
  v20 = v28;
  v29 = v21;
  v30 = v22;
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  Spring.velocity<A>(target:initialVelocity:time:)(v16, a4, a5, v19, a6);
  v23 = *(v11 + 8);
  v23(v16, a4);
  v28 = v20;
  v29 = v21;
  v30 = v22;
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  Spring.value<A>(target:initialVelocity:time:)(v13, a2, a4, v26, a6);
  v23(a2, a4);
  v23(v13, a4);
  dispatch thunk of static AdditiveArithmetic.+= infix(_:_:)();
  v23(v16, a4);
  return (*(v11 + 32))(a2, v27, a4);
}

uint64_t Spring.velocity<A>(target:initialVelocity:time:)@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v11 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v33 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = v33 - v18;
  v21 = *v6;
  v20 = v6[1];
  v22 = *v6 <= 0.0;
  if (*v6 >= 0.0)
  {
    v33[1] = a5;
    if (v22)
    {
      VectorArithmetic.scaled(by:)(a3, a4, v16, v20);
      dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
      v29 = *(v11 + 8);
      v29(v16, a3);
      v32 = exp(-(v20 * a6));
      VectorArithmetic.scaled(by:)(a3, a4, v16, v20 * v32);
      v31 = (v20 * a6 + -1.0) * v32;
    }

    else
    {
      v28 = exp(-(v20 * a6));
      VectorArithmetic.scaled(by:)(a3, a4, v16, v20);
      dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
      v29 = *(v11 + 8);
      v29(v16, a3);
      v30 = __sincos_stret(v21 * a6);
      VectorArithmetic.scaled(by:)(a3, a4, v16, v28 * (v21 * v30.__sinval + v20 * v30.__cosval));
      v31 = v28 * (v20 * v30.__sinval - v21 * v30.__cosval) / v21;
    }

    VectorArithmetic.scaled(by:)(a3, a4, v13, v31);
    dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
    v29(v13, a3);
    v29(v16, a3);
    return (v29)(v19, a3);
  }

  else
  {
    v23 = -v21 - v20;
    v24 = v23 * exp(v23 * a6);
    v25 = (v21 - v20) * exp((v21 - v20) * a6);
    VectorArithmetic.scaled(by:)(a3, a4, v19, ((v20 - v21) * v24 + v23 * v25) / (v21 + v21) + 1.0);
    VectorArithmetic.scaled(by:)(a3, a4, v16, (v24 - v25) / (v21 + v21));
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v26 = *(v11 + 8);
    v26(v16, a3);
    return (v26)(v19, a3);
  }
}

uint64_t Spring.value<A>(target:initialVelocity:time:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v9 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v38 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v38 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = v38 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v25 = v38 - v24;
  v27 = *v5;
  v26 = v5[1];
  v28 = *v5 <= 0.0;
  if (*v5 >= 0.0)
  {
    v38[3] = v22;
    if (v28)
    {
      VectorArithmetic.scaled(by:)(a3, a4, v20, v26);
      dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
      v34 = *(v9 + 8);
      v34(v20, a3);
      VectorArithmetic.scaled(by:)(a3, a4, v17, a5);
      dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
      v34(v17, a3);
      v37 = exp(-(v26 * a5));
      VectorArithmetic.scaled(by:)(a3, a4, v17, v37);
      dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
      v34(v17, a3);
    }

    else
    {
      v38[2] = v23;
      VectorArithmetic.scaled(by:)(a3, a4, v20, v26);
      v38[1] = *(a4 + 8);
      dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
      v34 = *(v9 + 8);
      v34(v20, a3);
      v35 = __sincos_stret(v27 * a5);
      VectorArithmetic.scaled(by:)(a3, a4, v14, v35.__cosval);
      VectorArithmetic.scaled(by:)(a3, a4, v11, v35.__sinval / v27);
      dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
      v34(v11, a3);
      v34(v14, a3);
      v36 = exp(-(v26 * a5));
      VectorArithmetic.scaled(by:)(a3, a4, v20, v36);
      v34(v17, a3);
      dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    }

    v34(v20, a3);
    return (v34)(v25, a3);
  }

  else
  {
    v29 = -v27 - v26;
    v30 = exp(v29 * a5);
    v31 = exp((v27 - v26) * a5);
    VectorArithmetic.scaled(by:)(a3, a4, v25, ((v26 - v27) * v30 + v29 * v31) / (v27 + v27) + 1.0);
    VectorArithmetic.scaled(by:)(a3, a4, v20, (v30 - v31) / (v27 + v27));
    dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
    v32 = *(v9 + 8);
    v32(v20, a3);
    return (v32)(v25, a3);
  }
}

double specialized ViewLayoutEngine.update(layout:context:children:)(uint64_t a1, unint64_t a2, Swift::UInt32 a3, int a4, uint64_t a5)
{
  v6 = v5;
  v23 = *MEMORY[0x1E69E9840];

  *(v6 + 48) = a4;
  *(v6 + 56) = a5;
  *v17 = a3;
  KeyPath = swift_getKeyPath();
  type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for EnvironmentFetch<LayoutDirection>, &type metadata for LayoutDirection, type metadata accessor for EnvironmentFetch);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a3);
  v16 = KeyPath;
  type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for KeyPath<EnvironmentValues, LayoutDirection>, &type metadata for EnvironmentValues, &type metadata for LayoutDirection, MEMORY[0x1E69E77A8]);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._finalize()();
  lazy protocol witness table accessor for type EnvironmentFetch<LayoutDirection> and conformance EnvironmentFetch<A>();
  lazy protocol witness table accessor for type EnvironmentFetch<LayoutDirection> and conformance EnvironmentFetch<A>();
  LOBYTE(v19) = 0;
  LOBYTE(a5) = *static Rule<>._cachedValue(options:owner:hashValue:bodyPtr:update:)();

  *(v6 + 64) = a5;

  *v6 = a1;
  LOBYTE(v19) = 1;
  v17[0] = 1;
  LOBYTE(v16) = 1;
  *(v6 + 104) = 0u;
  *(v6 + 88) = 0u;
  *(v6 + 72) = 0u;
  *(v6 + 120) = 1;
  *(v6 + 128) = 0u;
  *(v6 + 144) = 0u;
  *(v6 + 160) = 0u;
  *(v6 + 176) = 1;
  *(v6 + 184) = 0u;
  *(v6 + 200) = 0u;
  *(v6 + 216) = 0u;
  *(v6 + 232) = 1;

  v11 = MEMORY[0x1E69E7CC0];
  *(v6 + 280) = 0;
  *(v6 + 288) = 0;
  *(v6 + 272) = v11;
  *(v6 + 296) = 0;
  *(v6 + 297) = *v17;
  *(v6 + 300) = *&v17[3];
  *(v6 + 304) = 0;
  *(v6 + 312) = 0;
  *(v6 + 320) = 0;
  *(v6 + 321) = v16;
  *(v6 + 324) = KeyPath >> 24;
  *(v6 + 344) = 0;
  *(v6 + 328) = 0;
  *(v6 + 336) = 0;

  *(v6 + 352) = 0;
  v12 = *(v6 + 56);
  v13 = *(v6 + 64);
  v19 = *(v6 + 48);
  v20 = v12;
  v21 = 0;
  v22 = v13;
  v14 = *(*a1 + 96);

  v14(v6 + 8, &v19);

  return result;
}

uint64_t _AnyLayoutBox.updateCache(_:subviews:)(void *a1, int *a2)
{
  v5 = *(*v2 + 184);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v22[-v7];
  v26 = *(v9 + 192);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v22[-v13];
  v15 = *a2;
  v16 = *(a2 + 1);
  v17 = *(a2 + 16);
  v18 = *(a2 + 17);
  if (*a1 == v5)
  {
    v23 = v18;
    v24 = v11;
    v25 = v12;
    outlined init with copy of Any((a1 + 1), &v31);
    swift_dynamicCast();
    v20 = *(*v2 + 200);
    swift_beginAccess();
    (*(v6 + 16))(v8, v2 + v20, v5);
    v27 = v15;
    v28 = v16;
    v29 = v17;
    v30 = v23;
    v21 = v26;
    (*(v26 + 40))(v14, &v27, v5, v26);
    (*(v6 + 8))(v8, v5);
    $defer #1 <A>() in _AnyLayoutBox.updateCache(_:subviews:)(a1, v14, v5, v21);
    return (*(v25 + 8))(v14, v24);
  }

  else
  {
    outlined destroy of _AnyAnimatableData(a1);
    v31 = v15;
    v32 = v16;
    v33 = v17;
    v34 = v18;
    return _AnyLayoutBox.makeCache(subviews:)(&v31, a1);
  }
}

char *specialized HVStack.updateCache(_:subviews:)(uint64_t a1, int a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, char a7)
{
  return specialized HVStack.updateCache(_:subviews:)(a1, a2, a3, a4, a5, a6, a7, 0);
}

{
  return specialized HVStack.updateCache(_:subviews:)(a1, a2, a3, a4, a5, a6, a7, 1);
}

uint64_t protocol witness for Layout.updateCache(_:subviews:) in conformance _VStackLayout(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, void, void, void, void, void, void))
{
  if (*(a2 + 17))
  {
    v6 = 256;
  }

  else
  {
    v6 = 0;
  }

  return a5(a1, *a2, *(a2 + 1), v6 | *(a2 + 16), *v5, *(v5 + 8), *(v5 + 16));
}

void MatchedFrame.value.getter(unint64_t a1@<X0>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = HIDWORD(a3);
  v5 = a1;
  type metadata accessor for (ViewFrame?, AnyOptionalAttribute)(0);
  Value = AGGraphGetValue();
  if (*(Value + 52) == v5 || (*(Value + 48) & 1) != 0)
  {
    type metadata accessor for CGPoint(0);
    v8 = AGGraphGetValue();
    v9 = *v8;
    v10 = v8[1];
    v11 = AGGraphGetValue();
    *a4 = v9;
    *(a4 + 8) = v10;
    v12 = v11[1];
    *(a4 + 16) = *v11;
    *(a4 + 32) = v12;
    return;
  }

  v13 = *Value;
  v14 = *(Value + 8);
  v15 = *(Value + 16);
  v16 = *(Value + 24);
  v17 = *(Value + 32);
  v18 = *(Value + 40);
  v54 = *Value;
  v55 = v14;
  v56 = v15;
  v57 = v16;
  v58 = v17;
  v59 = v18;
  type metadata accessor for (properties: MatchedGeometryProperties, anchor: UnitPoint, isSource: Bool)();
  if ((*AGGraphGetValue() & 2) == 0 || (*AGGraphGetValue() & 4) != 0)
  {
    v29 = AGGraphGetValue();
    v19 = *v29;
    v20 = *(v29 + 8);
    v17 = *(v29 + 16);
    v18 = *(v29 + 24);
    v56 = *v29;
    v57 = v20;
    v58 = v17;
    v59 = v18;
  }

  else
  {
    v19 = v15;
    v20 = v16;
    if (*MEMORY[0x1E698D3F8] != v4)
    {
      v21 = *AGGraphGetValue();
      v22 = one-time initialization token for lockAssertionsAreEnabled;

      if (v22 != -1)
      {
        swift_once();
      }

      if (lockAssertionsAreEnabled)
      {
        if (one-time initialization token for _lock != -1)
        {
          swift_once();
        }

        if (!_MovableLockIsOwner(static Update._lock))
        {
          _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
          return;
        }
      }

      v60.f64[0] = v15;
      LOBYTE(v60.f64[1]) = 0;
      v61 = v16;
      LOBYTE(v62) = 0;
      v23 = (*(*v21 + 120))(&v60);
      v25 = v24;
      v50 = v16 - v24;
      v26 = AGGraphGetValue();
      v27 = *(v26 + 8);
      v28 = *(v26 + 16);

      v54 = v13 + (v15 - v23) * v27;
      v55 = v14 + v50 * v28;
      v56 = v23;
      v57 = v25;
      v58 = v15;
      v59 = v16;
      v18 = v16;
      v17 = v15;
      v20 = v25;
      v19 = v23;
    }
  }

  if (*AGGraphGetValue())
  {
    v33 = AGGraphGetValue();
    v34 = *v33;
    v35 = *(v33 + 8);
    v36 = *(v33 + 16);
    v37 = *(v33 + 24);
    v38 = *(v33 + 32);
    v39 = *(v33 + 40);
    type metadata accessor for CGPoint(0);

    v40 = AGGraphGetValue();
    v41 = *v40;
    v42 = *(v40 + 8);
    v43 = v38 - (*v40 - v36);
    v52 = 0;
    memset(v51, 0, sizeof(v51));
    v53 = 2;
    v60.f64[0] = v34;
    v60.f64[1] = v35;
    v61 = v41;
    v62 = v42;
    v63 = v43;
    v64 = v39 - (v42 - v37);
    specialized ApplyViewTransform.convert(from:transform:)(v51, &v60);
    outlined destroy of CoordinateSpace(v51);
    v44 = AGGraphGetValue();
    v46 = v55 - v20 * *(v44 + 16);
    v54 = v54 - v19 * *(v44 + 8);
    v45 = v54;
    v55 = v46;
    v47 = AGGraphGetValue();
    v48 = *v47;
    v49 = v47[1];

    v31 = v45 + v48;
    v32 = v46 + v49;
    v19 = v56;
    v20 = v57;
    v17 = v58;
    v18 = v59;
  }

  else
  {
    type metadata accessor for CGPoint(0);
    v30 = AGGraphGetValue();
    v31 = *v30;
    v32 = v30[1];
  }

  *a4 = v31;
  *(a4 + 8) = v32;
  *(a4 + 16) = v19;
  *(a4 + 24) = v20;
  *(a4 + 32) = v17;
  *(a4 + 40) = v18;
}

double specialized ViewTransform.convert(_:_:)(uint64_t *a1, float64x2_t *a2, float64x2_t *a3, uint64_t a4, uint64_t a5)
{
  v8 = *a1;
  v9 = a1[1];
  v10 = *(a1 + 16);
  v11 = a2[1];
  v25 = *a2;
  v12 = a2[2];
  v26 = v11;
  v27 = v12;
  if (*&v25.f64[0] || *&v27 != 0.0 || (result = *(&v27 + 1), *(&v27 + 1) != 0.0))
  {
    v15 = swift_allocObject();
    v16 = v15;
    *(v15 + 16) = v8;
    *(v15 + 24) = v9;
    *(v15 + 32) = v10;
    if (v10 == 4)
    {
      if (v8 != -1)
      {
        if (v9 != -1)
        {
          if (v8)
          {
            if (v9)
            {
              v24 = 0;
              v17 = a2[1];
              v21 = *a2;
              v22 = v17;
              v23 = a2[2];
              v19[0] = v8;
              v20 = v9;
              v18 = ViewTransform.spaceBeforeSpace(_:_:)(v19, &v20) ^ 1;
            }

            else
            {
              *(v15 + 24) = 0;
              v18 = 1;
              *(v15 + 32) = 1;
              v24 = 0;
            }

            goto LABEL_25;
          }

          *(v15 + 16) = v9;
          *(v15 + 24) = 0;
          v8 = v9;
          *(v15 + 32) = 0;
LABEL_23:
          if (v8)
          {
            goto LABEL_24;
          }

LABEL_27:

          return result;
        }

        *(v15 + 24) = 0;
        *(v15 + 32) = 3;
        v24 = 0;
        goto LABEL_20;
      }

      *(v15 + 16) = v9;
      *(v15 + 24) = 0;
      *(v15 + 32) = 2;
      if (v9 == -1)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v24 = 0;
      if (v10 > 1)
      {
        if (v10 != 2)
        {
LABEL_20:
          if (!v8)
          {
LABEL_24:
            v18 = 0;
            v24 = 1;
            goto LABEL_25;
          }

          v18 = 0;
LABEL_25:
          v21 = v25;
          v22 = v26;
          v23 = v27;
          outlined init with copy of ViewTransform(&v25, v19);
          return specialized ViewTransform.forEach(inverted:_:)(v18 & 1, &v21, &v25, v16, &v24, a3, a4, a5);
        }

        if (v8 == -1)
        {
          goto LABEL_27;
        }
      }

      else
      {
        if (!v10)
        {
          goto LABEL_23;
        }

        if (v8 != -1)
        {
          v18 = 1;
          goto LABEL_25;
        }
      }
    }

    v18 = 1;
    v24 = 1;
    goto LABEL_25;
  }

  return result;
}

double specialized ViewTransform.forEach(inverted:_:)(char a1, float64x2_t *a2, uint64_t a3, uint64_t a4, _BYTE *a5, float64x2_t *a6, uint64_t a7, uint64_t a8)
{
  v38 = *MEMORY[0x1E69E9840];
  v37 = a6;
  v31 = a3;
  v32 = a4;
  v33 = a5;
  v34 = a7;
  v35 = &v36;
  v9 = *&a2->f64[0];
  if (*&a2->f64[0])
  {
    v13 = a2[2];
    v29 = 0;
    if (a1)
    {
      if ((v13.f64[0] != 0.0 || v13.f64[1] != 0.0) && *a5 == 1)
      {
        *a6 = vsubq_f64(*a6, v13);
      }

      v14 = v9;
      do
      {
        v15 = v14;
        v14 = *(v14 + 16);
        (*(*v15 + 104))(1, &v29, a8, v30);
      }

      while ((v29 & 1) == 0 && v14);
      goto LABEL_26;
    }

    v16 = *(v9 + 24);
    if ((v16 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v28 = v13;
      if (!(v16 >> 60))
      {

        if ((8 * v16) >= 1025)
        {
LABEL_29:
          isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
          if ((isStackAllocationSafe & 1) == 0)
          {
            v26 = swift_slowAlloc();
            closure #3 in ViewTransform.forEach(inverted:_:)(v26, v16, v9, v16, &v29, a8, v30);
            MEMORY[0x193AC4820](v26, -1, -1);
            v24 = v28;
            if (v29)
            {
LABEL_26:

              goto LABEL_27;
            }

LABEL_22:
            if ((v24.n128_f64[0] != 0.0 || v24.n128_f64[1] != 0.0) && *a5 == 1)
            {
              *a6 = vaddq_f64(v24, *a6);
            }

            goto LABEL_26;
          }
        }

        v27[1] = v27;
        v18.n128_f64[0] = MEMORY[0x1EEE9AC00](isStackAllocationSafe);
        v20 = v27 - v19;
        *(v27 - v19) = v9;
        v21 = *(v9 + 16);
        if (v21)
        {
          v22 = v20 + 8;
          do
          {
            *v22++ = v21;
            v21 = *(v21 + 16);
          }

          while (v21);
        }

        v23 = 0;
        v24 = v28;
        while (v16 != v23)
        {
          if (__OFADD__(v23, 1))
          {
            __break(1u);
            goto LABEL_29;
          }

          (*(**&v20[8 * (v16 - (v23 + 1))] + 104))(0, &v29, a8, v30, v18, v24);
          v24 = v28;
          ++v23;
          if (v29 == 1)
          {
            goto LABEL_26;
          }
        }

        goto LABEL_22;
      }
    }

    __break(1u);
  }

LABEL_27:
  outlined destroy of ViewTransform(a3);

  return result;
}

void specialized closure #1 in ApplyViewTransform.convert(to:transform:)(uint64_t a1, float64x2_t *a2)
{
  v6 = *(a1 + 112) >> 5;
  if (v6 > 2)
  {
    return;
  }

  v7 = *a1;
  if (!v6)
  {
    *a2 = vaddq_f64(*a2, v7);
    return;
  }

  v39 = v5;
  v40 = v4;
  v41 = v2;
  v42 = v3;
  v9 = *(a1 + 16);
  v8 = *(a1 + 24);
  v11 = *(a1 + 32);
  v10 = *(a1 + 40);
  v12 = *(a1 + 48);
  if (v6 != 1)
  {
    v23 = *(a1 + 49);
    v22 = a1 + 49;
    v24 = *(v22 + 23);
    v25 = *(v22 + 4);
    *&v33.a = v7;
    v33.c = v9;
    v33.d = v8;
    v33.tx = v11;
    v33.ty = v10;
    v34 = v12;
    v35 = v23;
    v36 = v25;
    v37 = *(v22 + 6);
    v38 = *(v22 + 7);
    v26 = a2->f64[0];
    v27 = a2->f64[1];
    v28 = a2;
    if (v24)
    {
      x = CGPoint.unapplying(_:)(&v33.a, v26, v27);
    }

    else
    {
      x = CGPoint.applying(_:)(&v33, v26, v27);
    }

    goto LABEL_22;
  }

  if ((*(a1 + 48) & 1) == 0)
  {
    v44 = *a2;
    *&v33.a = v7;
    v33.c = v9;
    v33.d = v8;
    v33.tx = v11;
    v33.ty = v10;
    v28 = a2;
    v31 = CGPointApplyAffineTransform(v44, &v33);
    y = v31.y;
    x = v31.x;
LABEL_22:
    v28->f64[0] = x;
    v28->f64[1] = y;
    return;
  }

  v14 = a2->f64[0];
  v13 = a2->f64[1];
  if (v7.f64[0] == 1.0 && (*&v7.f64[1] & 0x7FFFFFFFFFFFFFFFLL) == 0 && (*&v9 & 0x7FFFFFFFFFFFFFFFLL) == 0 && v8 == 1.0)
  {
    v19 = v14 - v11;
    v20 = v13 - v10;
  }

  else
  {
    *&v33.a = v7;
    v33.c = v9;
    v33.d = v8;
    v33.tx = v11;
    v33.ty = v10;
    v18 = a2;
    CGAffineTransformInvert(&v32, &v33);
    v33 = v32;
    v43.x = v14;
    v43.y = v13;
    v21 = CGPointApplyAffineTransform(v43, &v33);
    v20 = v21.y;
    v19 = v21.x;
    a2 = v18;
  }

  a2->f64[0] = v19;
  a2->f64[1] = v20;
}

void *MatchedDisplayList.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v77.i64[0] = a1;
  v73 = a2;
  v3 = *(a1 + 16);
  v68 = type metadata accessor for Optional();
  v66 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v69 = &v61 - v4;
  v71 = v3;
  v70 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v67 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v2 + 4);
  v9 = *(v2 + 8);
  v10 = *(v2 + 12);
  LODWORD(v6) = *(v2 + 16);
  v11 = *(v2 + 20);
  v12 = *(v2 + 24);
  v13 = *(v2 + 28);
  v14 = *(v2 + 32);
  v15 = *(v2 + 36);
  LODWORD(v91.f64[0]) = *v2;
  v8 = LODWORD(v91.f64[0]);
  *(v91.f64 + 4) = __PAIR64__(v9, v7);
  v72.i32[0] = v7;
  HIDWORD(v91.f64[1]) = v10;
  v78 = v6;
  *&v92.f64[0] = __PAIR64__(v11, v6);
  *&v92.f64[1] = __PAIR64__(v13, v12);
  LODWORD(v93.f64[0]) = v14;
  BYTE4(v93.f64[0]) = v15;
  v16 = MatchedDisplayList.args.getter();
  v75 = v11;
  v76 = v8;
  v74 = v15;
  if ((v16 & 4) != 0)
  {
    *&v87 = __PAIR64__(v72.u32[0], v8);
    v19 = v72.i32[0];
    v64 = v14;
    v65 = v9;
    *(&v87 + 1) = __PAIR64__(v10, v9);
    v20 = v10;
    *&v88.f64[0] = __PAIR64__(v11, v78);
    v21 = v12;
    *&v88.f64[1] = __PAIR64__(v13, v12);
    LODWORD(v89.f64[0]) = v14;
    BYTE4(v89.f64[0]) = v15;
    v17 = 0;
    v18 = 20;
    if (MatchedDisplayList.sharedFrame.getter(&v91) != v19 && (v94[0] & 1) == 0)
    {
      v22 = v19;
      v23 = v91;
      v24 = v92;
      v25 = v76;
      *&v87 = __PAIR64__(v19, v76);
      v27 = v64;
      v26 = v65;
      *(&v87 + 1) = __PAIR64__(v20, v65);
      *&v88.f64[0] = __PAIR64__(v75, v78);
      v28 = v74;
      *&v88.f64[1] = __PAIR64__(v13, v21);
      LODWORD(v89.f64[0]) = v64;
      v63 = v20;
      BYTE4(v89.f64[0]) = v74;
      v29 = v22;
      MatchedDisplayList.transform.getter(&v91);
      type metadata accessor for CGPoint(0);
      v30 = v78;
      Value = AGGraphGetValue();
      v32 = vsubq_f64(v93, vsubq_f64(*Value, v92));
      v61 = *Value;
      v62 = v32;
      v92 = v61;
      v93 = v32;
      v80 = v24;
      *&v87 = __PAIR64__(v29, v25);
      *(&v87 + 1) = __PAIR64__(v20, v26);
      *&v88.f64[0] = __PAIR64__(v75, v30);
      v33 = v75;
      *&v88.f64[1] = __PAIR64__(v13, v21);
      LODWORD(v89.f64[0]) = v27;
      v34 = v27;
      BYTE4(v89.f64[0]) = v28;
      v35 = v77.i64[0];
      MatchedDisplayList.args.getter();
      *v79.i64 = v23.f64[0] - v24.f64[0] * v36;
      *&v79.i64[1] = v23.f64[1] - v24.f64[1] * v37;
      v85.f64[0] = 0.0;
      v83 = 0u;
      v84 = 0u;
      LOBYTE(v85.f64[1]) = 2;
      v38 = v91.f64[0];
      v87 = v91;
      v88 = v61;
      v89 = v62;
      v61.f64[0] = v91.f64[1];

      v62.f64[0] = v38;

      CGRect.convert(from:transform:)(&v83, &v87);

      outlined destroy of CoordinateSpace(&v83);
      *&v87 = __PAIR64__(v29, v76);
      *(&v87 + 1) = __PAIR64__(v63, v65);
      *&v88.f64[0] = __PAIR64__(v33, v78);
      *&v88.f64[1] = __PAIR64__(v13, v21);
      LODWORD(v89.f64[0]) = v34;
      BYTE4(v89.f64[0]) = v28;
      v39 = v69;
      MatchedDisplayList.clipShape.getter(v35, v69);
      v41 = v70;
      v40 = v71;
      if ((*(v70 + 48))(v39, 1, v71) == 1)
      {
        (*(v66 + 8))(v39, v68);
        *&v97.origin.x = v79.i64[0];
        *&v97.size.width = v80.i64[0];
        v77 = v80;
        v72 = v79;
        *&v97.origin.y = v79.i64[1];
        *&v97.size.height = v80.i64[1];
        IsNull = CGRectIsNull(v97);

        v43 = !IsNull;
        if (IsNull)
        {
          v44 = 6;
        }

        else
        {
          v44 = 0;
        }

        if (v43)
        {
          v45 = 0;
        }

        else
        {
          v45 = -1;
        }

        v46 = vdupq_n_s64(v45);
        v77 = vbicq_s8(v77, v46);
        v72 = vbicq_s8(v72, v46);
      }

      else
      {
        v47 = v67;
        (*(v41 + 32))(v67, v39, v40);
        (*(*(v35 + 24) + 24))(v95, v40, *v79.i64, *&v79.i64[1], *v80.i64, *&v80.i64[1]);
        v77 = v95[1];
        v72 = v95[0];
        v44 = v96;
        (*(v41 + 8))(v47, v40);
      }

      v17 = swift_allocObject();
      v48 = v77;
      *(v17 + 16) = v72;
      *(v17 + 32) = v48;
      *(v17 + 48) = v44;
      *(v17 + 49) = 256;
      v18 = 6;
      *(v17 + 52) = 0;
    }
  }

  else
  {
    v17 = 0;
    v18 = 20;
  }

  type metadata accessor for CGPoint(0);
  v49 = AGGraphGetValue();
  v50 = *v49;
  v51 = v49[1];
  v52 = AGGraphGetValue();
  v53 = v50 - *v52;
  v54 = v51 - v52[1];
  outlined copy of DisplayList.Effect(v17, 0, v18);
  v55 = AGGraphGetValue();
  v56 = *v55;
  v57 = *(v55 + 8) | (*(v55 + 12) << 32) | 0x40000000;

  v58 = AGGraphGetValue();
  *&v83 = v53;
  *(&v83 + 1) = v54;
  v59 = *v58;
  ++static DisplayList.Version.lastValue;
  v84 = v59;
  *&v86[0] = v18 << 32;
  *(&v86[0] + 1) = v56;
  *&v86[1] = v57;
  DWORD2(v86[1]) = v76;
  *&v85.f64[0] = static DisplayList.Version.lastValue;
  *&v85.f64[1] = v17;
  LOBYTE(v91.f64[0]) = v74;
  DisplayList.Item.canonicalize(options:)(&v91);
  v89 = v85;
  v90[0] = v86[0];
  *(v90 + 12) = *(v86 + 12);
  v87 = v83;
  v88 = v84;
  v81 = v85;
  v82[0] = v86[0];
  *(v82 + 12) = *(v86 + 12);
  v79 = v83;
  v80 = v84;
  outlined init with copy of DisplayList.Item(&v87, &v91);
  DisplayList.init(_:)(v79.i8, v73);
  outlined consume of DisplayList.Effect(v17, 0, v18);
  v93 = v85;
  v94[0] = v86[0];
  *(v94 + 12) = *(v86 + 12);
  v91 = v83;
  v92 = v84;
  return outlined destroy of DisplayList.Item(&v91);
}

uint64_t sub_18D27A324()
{
  outlined consume of Path.Storage(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return swift_deallocObject();
}

uint64_t assignWithCopy for _ClipEffect(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40);
  v7 = (v6 + a1);
  v8 = (v6 + a2);
  *v7 = *v8;
  v7[1] = v8[1];
  return a1;
}

double specialized AnimatableAttribute.updateValue()(uint64_t a1, void (*a2)(uint64_t *, void, uint64_t, unsigned int *, __n128))
{
  v9 = *MEMORY[0x1E69E9840];
  v7 = *AGGraphGetValue();
  v8 = v4 & 1;
  v5 = *(v2 + 4);

  (a2)(&v7, 0, v5, v2 + 8);
  if ((v8 & 1) != 0 || !AGGraphGetOutputValue())
  {
    AGGraphSetOutputValue();
  }

  else
  {
  }

  return result;
}

uint64_t _s7SwiftUI5ShapePAAE23layoutDirectionBehaviorAA06LayouteF0OvgAA015CombinedContentC033_6E67AD6866B38627EB183D41FF0BA80ALLV_Tt0g5Tm@<X0>(char *a1@<X8>)
{
  if (one-time initialization token for v5 != -1)
  {
    swift_once();
  }

  v2 = static Semantics.v5;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C524)
  {
    result = dyld_program_minos_at_least();
  }

  else
  {
    result = dword_1ED53C520 >= v2;
  }

  if (result)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  *a1 = v4;
  return result;
}

double protocol witness for Animatable.animatableData.getter in conformance RoundedRectangle._Inset@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 16) = result;
  return result;
}

double protocol witness for Shape.path(in:) in conformance RoundedRectangle._Inset@<D0>(uint64_t a1@<X8>, double a2@<D0>)
{
  RoundedRectangle._Inset.path(in:)(v5, a2);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

uint64_t RoundedRectangle._Inset.path(in:)@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v7 = *v5;
  v8 = *(v5 + 8);
  v9 = *(v5 + 16);
  v10 = *(v5 + 24);
  v21 = CGRectInset(*&a2, v10, v10);
  x = v21.origin.x;
  height = v21.size.height;
  if (v7 - v10 > 0.0)
  {
    v13 = v7 - v10;
  }

  else
  {
    v13 = 0.0;
  }

  if (v8 - v10 > 0.0)
  {
    v14 = v8 - v10;
  }

  else
  {
    v14 = 0.0;
  }

  width = v21.size.width;
  y = v21.origin.y;
  IsNull = CGRectIsNull(v21);
  v16 = 0uLL;
  if (IsNull)
  {
    result = 0;
    v18 = 6;
    height = 0.0;
  }

  else if (v13 == 0.0 && v14 == 0.0 || (v22.origin.x = x, v22.size.width = width, v22.origin.y = y, v22.size.height = height, CGRectIsInfinite(v22)))
  {
    v18 = 0;
    result = *&x;
    *&v16 = y;
    *(&v16 + 1) = width;
  }

  else
  {
    result = swift_allocObject();
    *(result + 16) = x;
    *(result + 24) = y;
    *(result + 32) = width;
    *(result + 40) = height;
    *(result + 48) = v13;
    *(result + 56) = v14;
    v18 = 2;
    height = 0.0;
    *(result + 64) = v9;
    v16 = 0uLL;
  }

  *a1 = result;
  *(a1 + 8) = v16;
  *(a1 + 24) = height;
  *(a1 + 32) = v18;
  return result;
}

double protocol witness for Shape.path(in:) in conformance _StrokedShape<A>@<D0>(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  _StrokedShape.path(in:)(a2, v5);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

double _StrokedShape.path(in:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(*(a1 + 24) + 24))(v9, *(a1 + 16));
  v5 = v2 + *(a1 + 36);
  v6 = *(v5 + 16);
  v12[0] = *v5;
  v12[1] = v6;
  v13 = *(v5 + 32);
  Path.strokedPath(_:)(v12, v10);
  outlined destroy of Path(v9);
  result = *v10;
  v8 = v10[1];
  *a2 = v10[0];
  *(a2 + 16) = v8;
  *(a2 + 32) = v11;
  return result;
}

uint64_t type metadata completion function for AnimatorState(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    return swift_initClassMetadata2();
  }

  return result;
}

void *DefaultAnimation.animate<A>(value:time:context:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  if (a3 == MEMORY[0x1E69E63B0])
  {
    v15 = *a1;
    if (one-time initialization token for base != -1)
    {
      swift_once();
    }

    *&v26[0] = v15;
    result = (*(*static DefaultAnimation.base + 120))(v27, v26);
    v16 = BYTE8(v27[0]);
    *a5 = *&v27[0];
    *(a5 + 8) = v16;
  }

  else
  {
    type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
    if (v12 == a3)
    {
      v17 = v12;
      v18 = *a1;
      v19 = *(a1 + 1);
      if (one-time initialization token for base != -1)
      {
        v24 = *(a1 + 1);
        v25 = *a1;
        swift_once();
        v19 = v24;
        v18 = v25;
      }

      v26[0] = v18;
      v26[1] = v19;
      v20 = *(*static DefaultAnimation.base + 120);
      _s7SwiftUI14AnimatablePairVy12CoreGraphics7CGFloatVAFGACyxq_GAA16VectorArithmeticAAWlTm_0(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>);
      result = v20(v27, v26, a2, v17, v21, a6);
      v22 = v28;
      v23 = v27[1];
      *a5 = v27[0];
      *(a5 + 16) = v23;
      *(a5 + 32) = v22;
    }

    else
    {
      if (one-time initialization token for base != -1)
      {
        swift_once();
      }

      v13 = static DefaultAnimation.base;

      return Animation.animate<A>(value:time:context:)(a1, a2, v13, a3, a4, a5, a6);
    }
  }

  return result;
}

void type metadata accessor for Slice<IndexSet>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Slice<IndexSet>)
  {
    type metadata accessor for IndexSet();
    lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type IndexSet and conformance IndexSet, MEMORY[0x1E6969B50], MEMORY[0x1E6969B88]);
    v1 = type metadata accessor for Slice();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Slice<IndexSet>);
    }
  }
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(void *a1)
{
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(0, &lazy cache variable for type metadata for TransactionPropertyKey<AnimationFrameIntervalKey>, &type metadata for AnimationFrameIntervalKey, &protocol witness table for AnimationFrameIntervalKey, type metadata accessor for TransactionPropertyKey);
  BloomFilter.init(hashValue:)(v2);
  result = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011TransactionrV033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalV033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt0B5(a1, v4);
  if (result)
  {
    return result[9];
  }

  return result;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011TransactionrV033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalV033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011TransactionrV033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalV033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt0B5(result[3], a2);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for TransactionPropertyKey<AnimationFrameIntervalKey>, &type metadata for AnimationFrameIntervalKey, &protocol witness table for AnimationFrameIntervalKey, type metadata accessor for TransactionPropertyKey);
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

uint64_t InternalAnimationBox.function.getter(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v9 - v6;
  (*(v4 + 16))(&v9 - v6, v1 + *(v2 + 176), v3, v5);
  (*(*(v2 + 224) + 16))(v3);
  return (*(v4 + 8))(v7, v3);
}

double outlined consume of Animation.Function(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 > 7u)
  {
    if (a6 == 8 || a6 == 9)
    {
      goto LABEL_4;
    }
  }

  else if (a6 == 6 || a6 == 7)
  {
LABEL_4:
  }

  return result;
}

uint64_t *static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(uint64_t *result, void *a2, double *a3, double *a4, double *a5)
{
  v5 = *result;
  v6 = *(result + 40);
  if (v6 <= 5)
  {
    *a2 = v5;
    return result;
  }

  if (*(result + 40) > 7u)
  {
    if (v6 == 8)
    {
      v9 = *(v5 + 56);
      v10 = *(v5 + 64);
      v12 = *(v5 + 24);
      v13 = *(v5 + 40);
      *a4 = *(v5 + 16) * *a4;
    }

    else
    {
      v9 = *(v5 + 64);
      v10 = *(v5 + 72);
      v12 = *(v5 + 32);
      v13 = *(v5 + 48);
      *a5 = *(v5 + 16) * *a5;
    }

    v14 = v12;
    v15 = v13;
  }

  else
  {
    if (v6 == 6)
    {
      return result;
    }

    v7 = *(v5 + 24);
    v8 = *(v5 + 40);
    v9 = *(v5 + 56);
    v10 = *(v5 + 64);
    if ((~*a3 & 0x7FF0000000000000) == 0 && (*a3 & 0xFFFFFFFFFFFFFLL) != 0)
    {
      *a3 = *(v5 + 16) / *a4;
    }

    v14 = v7;
    v15 = v8;
  }

  v16 = v9;
  v17 = v10;
  return static CustomEventTrace.extractFunctionData(_:_:_:_:_:)(&v14, a2, a3, a4, a5);
}

void one-time initialization function for animationState()
{
  *&static Signpost.animationState = "AnimationState";
  *(&static Signpost.animationState + 1) = 14;
  word_1ED5283E8 = 258;
  byte_1ED5283EA = 3;
}

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0T0VAAE024AnimationLogicalListenerS033_390609F81ACEBEAF00AD8179BD31E870LLVG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TransactionPropertyKey<Transaction.AnimationLogicalListenerKey>, &type metadata for Transaction.AnimationLogicalListenerKey, &protocol witness table for Transaction.AnimationLogicalListenerKey, type metadata accessor for TransactionPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011TransactionrV033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0W0VAAE024AnimationLogicalListenerV033_390609F81ACEBEAF00AD8179BD31E870LLVG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011TransactionrV033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0W0VAAE024AnimationLogicalListenerV033_390609F81ACEBEAF00AD8179BD31E870LLVG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011TransactionrV033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0W0VAAE024AnimationLogicalListenerV033_390609F81ACEBEAF00AD8179BD31E870LLVG_Tt0B5(result[3], a2);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for TransactionPropertyKey<Transaction.AnimationLogicalListenerKey>, &type metadata for Transaction.AnimationLogicalListenerKey, &protocol witness table for Transaction.AnimationLogicalListenerKey, type metadata accessor for TransactionPropertyKey);
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

uint64_t protocol witness for InternalCustomAnimation.function.getter in conformance DefaultAnimation()
{
  if (one-time initialization token for base != -1)
  {
    swift_once();
  }

  return (*(*static DefaultAnimation.base + 96))();
}

_OWORD *one-time initialization function for base()
{
  result = specialized static DefaultAnimation.makeBaseAnimation()();
  static DefaultAnimation.base = result;
  return result;
}

_OWORD *specialized static DefaultAnimation.makeBaseAnimation()()
{
  if (one-time initialization token for v5 != -1)
  {
    swift_once();
  }

  v0 = static Semantics.v5;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C524 != 1)
  {
    if (dword_1ED53C520 < v0)
    {
      goto LABEL_7;
    }

LABEL_9:
    type metadata accessor for InternalAnimationBox<BezierAnimation>(0, &lazy cache variable for type metadata for InternalAnimationBox<FluidSpringAnimation>, lazy protocol witness table accessor for type FluidSpringAnimation and conformance FluidSpringAnimation, &type metadata for FluidSpringAnimation);
    result = swift_allocObject();
    result[1] = xmmword_18DDAF530;
    v2 = result + 2;
    goto LABEL_10;
  }

  if (dyld_program_minos_at_least())
  {
    goto LABEL_9;
  }

LABEL_7:
  type metadata accessor for InternalAnimationBox<BezierAnimation>(0, &lazy cache variable for type metadata for InternalAnimationBox<BezierAnimation>, lazy protocol witness table accessor for type BezierAnimation and conformance BezierAnimation, &type metadata for BezierAnimation);
  result = swift_allocObject();
  result[1] = xmmword_18DDAF500;
  result[2] = xmmword_18DDAF510;
  result[3] = xmmword_18DDAF520;
  v2 = result + 4;
LABEL_10:
  *v2 = 0;
  return result;
}

void FluidSpringAnimation.function.getter(uint64_t a1@<X8>)
{
  if (*v1 <= 0.0)
  {
    v3 = INFINITY;
  }

  else
  {
    v3 = 6.28318531 / *v1 * (6.28318531 / *v1);
  }

  v4 = sqrt(v3);
  v5 = v1[1] * (v4 + v4);
  SpringModel.duration(epsilon:)(0.001);
  *a1 = v6;
  *(a1 + 8) = 0x3FF0000000000000;
  *(a1 + 16) = v3;
  *(a1 + 24) = v5;
  *(a1 + 32) = 0;
  *(a1 + 40) = 5;
}

void SpringModel.duration(epsilon:)(double a1)
{
  v2 = v1[1];
  v3 = 0.000001;
  if (a1 <= 0.000001)
  {
    if (v2 != 0.0)
    {
      if (v2 >= 1.0)
      {
        goto LABEL_4;
      }

LABEL_22:
      fmax(-log(v3 / (fabs(v1[3]) + fabs(v1[4]))) / (v2 * *v1), 0.0);
    }
  }

  else if (v2 != 0.0)
  {
    v3 = a1;
    if (v2 >= 1.0)
    {
LABEL_4:
      v4 = 0.0;
      v5 = -1.0;
      v6 = INFINITY;
      v7 = 1023;
      v8 = 1.0;
      v9 = -1.0;
      while (1)
      {
        if (v2 >= v8)
        {
          v16 = v1[3] + v4 * v1[4];
          v15 = v16 * exp(-(v4 * *v1));
        }

        else
        {
          v10 = v4 * v1[2];
          v11 = exp(v4 * (*v1 * -v2));
          v12 = v1[3];
          v13 = __sincos_stret(v10);
          v14 = v12 * v13.__cosval;
          v8 = 1.0;
          v15 = v11 * (v14 + v13.__sinval * v1[4]);
          v5 = -1.0;
        }

        if (COERCE__INT64(fabs(v15 + v5 + v8)) > 0x7FEFFFFFFFFFFFFFLL)
        {
          return;
        }

        v17 = fabs(v15 + v5 + v8);
        if (v6 >= v3)
        {
          break;
        }

        if (v17 < v3)
        {
          if (v4 - v9 > v8)
          {
            return;
          }

          goto LABEL_7;
        }

        if (!v7)
        {
          return;
        }

        v6 = INFINITY;
LABEL_8:
        v4 = v4 + 0.1;
        --v7;
      }

      if (v17 < v6)
      {
        v9 = v4;
        v6 = v17;
      }

LABEL_7:
      if (!v7)
      {
        return;
      }

      goto LABEL_8;
    }

    goto LABEL_22;
  }
}

double MaterialEffectBackdropObserver.luminanceDidChange(_:)(unint64_t a1)
{
  if (swift_weakLoadStrong())
  {
    if (one-time initialization token for _lock != -1)
    {
      swift_once();
    }

    v4 = static Update._lock;
    _MovableLockLock(static Update._lock);
    specialized static Update.begin()();
    v5 = *(v1 + 24);
    v6 = _threadTransactionID();
    specialized GraphHost.asyncTransaction<A>(_:id:mutation:style:mayDeferUpdate:)(0, v6, v5, a1 | ((HIDWORD(a1) & 1) << 32), 1, 1);
    static Update.end()();
    _MovableLockUnlock(v4);
  }

  return result;
}

uint64_t _AnyEquatableBox.isEqual(to:)(uint64_t a1)
{
  result = swift_dynamicCastClass();
  if (result)
  {

    v2 = dispatch thunk of static Equatable.== infix(_:_:)();

    return v2 & 1;
  }

  return result;
}

uint64_t *assignWithCopy for MaterialEffectState.Value(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  a1[2] = a2[2];

  *(a1 + 6) = *(a2 + 6);
  return a1;
}

uint64_t static VTable.add(_:_:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *, char *, uint64_t, void))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = v13 - v8;
  outlined init with take of Any(a1, v13);
  *(a1 + 24) = AssociatedTypeWitness;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  swift_dynamicCast();
  outlined init with copy of Any(a2, v13);
  swift_dynamicCast();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  a3(boxed_opaque_existential_1, v9, AssociatedTypeWitness, *(AssociatedConformanceWitness + 8));
  return (*(v7 + 8))(v9, AssociatedTypeWitness);
}

uint64_t protocol witness for static AdditiveArithmetic.+ infix(_:_:) in conformance AnimatableValues<Pack{repeat A}>@<X0>(uint64_t TupleTypeMetadata@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void (*a4)(char *, char *, uint64_t, void)@<X4>, uint64_t a5@<X8>)
{
  v63 = a4;
  v7 = a3[2];
  v8 = 8 * v7;
  v57 = a5;
  if (v7 == 1)
  {
    v9 = *(a3[3] & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](TupleTypeMetadata);
    v10 = v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v7)
    {
      v11 = 0;
      v12 = a3[3] & 0xFFFFFFFFFFFFFFFELL;
      if (v7 < 4)
      {
        goto LABEL_9;
      }

      if (&v10[-v12] < 0x20)
      {
        goto LABEL_9;
      }

      v11 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      v13 = (v12 + 16);
      v14 = v10 + 16;
      v15 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v16 = *v13;
        *(v14 - 1) = *(v13 - 1);
        *v14 = v16;
        v13 += 2;
        v14 += 2;
        v15 -= 4;
      }

      while (v15);
      if (v7 != v11)
      {
LABEL_9:
        v17 = v7 - v11;
        v18 = 8 * v11;
        v19 = &v10[8 * v11];
        v20 = (v12 + v18);
        do
        {
          v21 = *v20++;
          *v19 = v21;
          v19 += 8;
          --v17;
        }

        while (v17);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v9 = TupleTypeMetadata;
  }

  v22 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v24 = v55 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55[3] = v55;
  MEMORY[0x1EEE9AC00](v25);
  v55[2] = v55;
  MEMORY[0x1EEE9AC00](v55 - v26);
  v62 = v55 - v27;
  v55[1] = v55;
  v29 = MEMORY[0x1EEE9AC00](v28);
  v60 = (v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v56 = v22;
  v30 = *(v22 + 16);
  v64 = v31;
  v30(v29);
  v65 = v24;
  v61 = v9;
  v32 = (v30)(v24, a2, v9);
  v33 = a3[3];
  v58 = a3[4];
  v59 = v33;
  if (v7)
  {
    v34 = (v59 & 0xFFFFFFFFFFFFFFFELL);
    v35 = (v58 & 0xFFFFFFFFFFFFFFFELL);
    v36 = v60;
    v37 = (v61 + 32);
    v38 = v7;
    v72 = v7;
    do
    {
      if (v7 == 1)
      {
        v43 = v62;
      }

      else
      {
        v43 = &v62[*v37];
      }

      v69 = v43;
      v70 = v35;
      v68 = v55;
      v71 = v34;
      v44 = *v34;
      v67 = *v35;
      v45 = *(v44 - 8);
      v46 = v45[8];
      v47 = MEMORY[0x1EEE9AC00](v32);
      v48 = (v46 + 15) & 0xFFFFFFFFFFFFFFF0;
      v49 = v45[2];
      v51 = v49(v55 - v48, v64 + v50, v44, v47);
      v66 = v55;
      v39 = MEMORY[0x1EEE9AC00](v51);
      v49(v55 - v48, &v65[v40], v44, v39);
      v41 = v69;
      v63(v55 - v48, v55 - v48, v44, *(v67 + 8));
      v42 = v45[1];
      v42(v55 - v48, v44);
      v32 = (v42)(v55 - v48, v44);
      *v36++ = v41;
      v37 += 4;
      v35 = v70 + 1;
      v34 = v71 + 1;
      --v38;
      v7 = v72;
    }

    while (v38);
  }

  AnimatableValues.init(_:)(v60, v7, v59, v57);
  v52 = *(v56 + 8);
  v53 = v61;
  v52(v65, v61);
  return (v52)(v64, v53);
}

uint64_t protocol witness for static AdditiveArithmetic.+ infix(_:_:) in conformance AnimatablePair<A, B>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t, uint64_t, uint64_t, void)@<X4>, uint64_t a5@<X8>)
{
  v25 = a5;
  v9 = *(a3 + 24);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 + 16);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v18 + 32);
  v20(v15);
  v21 = *(a3 + 52);
  v22 = *(a3 + 40);
  a4(a1 + v21, a2 + v21, v9, *(v22 + 8));
  return AnimatablePair.init(_:_:)(v17, v11, v13, v9, v19, v22, v25);
}

uint64_t AnimatableValues.init(_:)@<X0>(uint64_t *TupleTypeMetadata@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a2;
  v6 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v8 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](TupleTypeMetadata);
    v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v5)
    {
      v11 = 0;
      v12 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (v5 < 4)
      {
        goto LABEL_9;
      }

      if (&v10[-v12] < 0x20)
      {
        goto LABEL_9;
      }

      v11 = v5 & 0xFFFFFFFFFFFFFFFCLL;
      v13 = (v12 + 16);
      v14 = v10 + 16;
      v15 = v5 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v16 = *v13;
        *(v14 - 1) = *(v13 - 1);
        *v14 = v16;
        v13 += 2;
        v14 += 2;
        v15 -= 4;
      }

      while (v15);
      if (v11 != v5)
      {
LABEL_9:
        v17 = v5 - v11;
        v18 = 8 * v11;
        v19 = &v10[8 * v11];
        v20 = (v12 + v18);
        do
        {
          v21 = *v20++;
          *v19 = v21;
          v19 += 8;
          --v17;
        }

        while (v17);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v8 = TupleTypeMetadata;
  }

  v22 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v24 = &v41 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for AnimatableValues(0, v5, a3, v25);
  v46 = &v41;
  v27 = *(v26 - 8);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v30 = &v41 - v29;
  if (v5)
  {
    v44 = v6;
    v45 = a4;
    v31 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v32 = 32;
    v42 = v31;
    v43 = v26;
    v33 = v5;
    do
    {
      if (v5 == 1)
      {
        v34 = 0;
      }

      else
      {
        v34 = *(v8 + v32);
      }

      v36 = *v31++;
      v35 = v36;
      v37 = *v6++;
      (*(*(v35 - 8) + 16))(&v24[v34], v37);
      v32 += 16;
      --v33;
    }

    while (v33);
    (*(v22 + 32))(v30, v24, v8);
    (*(v27 + 32))(v45, v30, v43);
    v38 = v42 - 1;
    v39 = v44 - 1;
    do
    {
      result = (*(*(v38[v5] - 8) + 8))(v39[v5]);
      --v5;
    }

    while (v5);
  }

  else
  {
    (*(v22 + 32))(v30, v24, v8, v28);
    return (*(v27 + 32))(a4, v30, v26);
  }

  return result;
}

double __swift_assign_boxed_opaque_existential_0(uint64_t *a1, uint64_t *a2, __n128 result)
{
  if (a1 != a2)
  {
    v3 = a1[3];
    v4 = a2[3];
    if (v3 == v4)
    {
      v11 = *(v3 - 8);
      if ((*(v11 + 82) & 2) != 0)
      {
        v13 = *a2;

        *a1 = v13;
      }

      else
      {
        v12 = *(v11 + 24);

        v12(result);
      }
    }

    else
    {
      a1[3] = v4;
      v5 = *(v3 - 8);
      v6 = *(v4 - 8);
      v7 = v6;
      v8 = *(v6 + 80);
      if ((*(v5 + 82) & 2) != 0)
      {
        if ((v8 & 0x20000) != 0)
        {
          *a1 = *a2;
        }

        else
        {
          (*(v6 + 16))(result);
        }
      }

      else
      {
        (*(v5 + 32))(v16, result);
        if ((v8 & 0x20000) != 0)
        {
          *a1 = *a2;
        }

        else
        {
          (*(v7 + 16))(a1, a2, v4);
        }

        (*(v5 + 8))(v16, v3);
      }
    }
  }

  return result.n128_f64[0];
}

void *assignWithCopy for _AnyAnimatableData(void *a1, void *a2, __n128 a3)
{
  *a1 = *a2;
  __swift_assign_boxed_opaque_existential_0(a1 + 1, a2 + 1, a3);
  return a1;
}

double specialized AnimatorState.addListeners(transaction:)(void *a1)
{
  v3 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0T0VAAE017AnimationListenerS033_390609F81ACEBEAF00AD8179BD31E870LLVG_Tt0g5(a1);
  if (v3)
  {
    v4 = v3[9];
    if (v4)
    {
      swift_beginAccess();
      v5 = swift_retain_n();
      MEMORY[0x193ABF170](v5);
      if (*((*(v1 + 144) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 144) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v6 = swift_endAccess();
      (*(*v4 + 88))(v6);
    }
  }

  v7 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0T0VAAE024AnimationLogicalListenerS033_390609F81ACEBEAF00AD8179BD31E870LLVG_Tt0g5(a1);
  if (v7)
  {
    v9 = v7[9];
    if (v9)
    {
      v10 = *(*v9 + 88);

      v12 = v10(v11);
      if (*(v1 + 160) == 1)
      {
        (*(*v9 + 96))(v12);
      }

      else
      {
        swift_beginAccess();

        MEMORY[0x193ABF170](v13);
        if (*((*(v1 + 152) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 152) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_endAccess();
      }
    }
  }

  return result;
}

{
  v3 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0T0VAAE017AnimationListenerS033_390609F81ACEBEAF00AD8179BD31E870LLVG_Tt0g5(a1);
  if (v3)
  {
    v4 = v3[9];
    if (v4)
    {
      swift_beginAccess();
      v5 = swift_retain_n();
      MEMORY[0x193ABF170](v5);
      if (*((*(v1 + 80) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 80) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v6 = swift_endAccess();
      (*(*v4 + 88))(v6);
    }
  }

  v7 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0T0VAAE024AnimationLogicalListenerS033_390609F81ACEBEAF00AD8179BD31E870LLVG_Tt0g5(a1);
  if (v7)
  {
    v9 = v7[9];
    if (v9)
    {
      v10 = *(*v9 + 88);

      v12 = v10(v11);
      if (*(v1 + 96) == 1)
      {
        (*(*v9 + 96))(v12);
      }

      else
      {
        swift_beginAccess();

        MEMORY[0x193ABF170](v13);
        if (*((*(v1 + 88) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 88) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_endAccess();
      }
    }
  }

  return result;
}

{
  v3 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0T0VAAE017AnimationListenerS033_390609F81ACEBEAF00AD8179BD31E870LLVG_Tt0g5(a1);
  if (v3)
  {
    v4 = v3[9];
    if (v4)
    {
      swift_beginAccess();
      v5 = swift_retain_n();
      MEMORY[0x193ABF170](v5);
      if (*((*(v1 + 128) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 128) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v6 = swift_endAccess();
      (*(*v4 + 88))(v6);
    }
  }

  v7 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0T0VAAE024AnimationLogicalListenerS033_390609F81ACEBEAF00AD8179BD31E870LLVG_Tt0g5(a1);
  if (v7)
  {
    v9 = v7[9];
    if (v9)
    {
      v10 = *(*v9 + 88);

      v12 = v10(v11);
      if (*(v1 + 144) == 1)
      {
        (*(*v9 + 96))(v12);
      }

      else
      {
        swift_beginAccess();

        MEMORY[0x193ABF170](v13);
        if (*((*(v1 + 136) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 136) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_endAccess();
      }
    }
  }

  return result;
}

{
  v3 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0T0VAAE017AnimationListenerS033_390609F81ACEBEAF00AD8179BD31E870LLVG_Tt0g5(a1);
  if (v3)
  {
    v4 = v3[9];
    if (v4)
    {
      swift_beginAccess();
      v5 = swift_retain_n();
      MEMORY[0x193ABF170](v5);
      if (*((*(v1 + 192) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 192) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v6 = swift_endAccess();
      (*(*v4 + 88))(v6);
    }
  }

  v7 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0T0VAAE024AnimationLogicalListenerS033_390609F81ACEBEAF00AD8179BD31E870LLVG_Tt0g5(a1);
  if (v7)
  {
    v9 = v7[9];
    if (v9)
    {
      v10 = *(*v9 + 88);

      v12 = v10(v11);
      if (*(v1 + 208) == 1)
      {
        (*(*v9 + 96))(v12);
      }

      else
      {
        swift_beginAccess();

        MEMORY[0x193ABF170](v13);
        if (*((*(v1 + 200) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 200) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_endAccess();
      }
    }
  }

  return result;
}

{
  v3 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0T0VAAE017AnimationListenerS033_390609F81ACEBEAF00AD8179BD31E870LLVG_Tt0g5(a1);
  if (v3)
  {
    v4 = v3[9];
    if (v4)
    {
      swift_beginAccess();
      v5 = swift_retain_n();
      MEMORY[0x193ABF170](v5);
      if (*((*(v1 + 240) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 240) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v6 = swift_endAccess();
      (*(*v4 + 88))(v6);
    }
  }

  v7 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0T0VAAE024AnimationLogicalListenerS033_390609F81ACEBEAF00AD8179BD31E870LLVG_Tt0g5(a1);
  if (v7)
  {
    v9 = v7[9];
    if (v9)
    {
      v10 = *(*v9 + 88);

      v12 = v10(v11);
      if (*(v1 + 256) == 1)
      {
        (*(*v9 + 96))(v12);
      }

      else
      {
        swift_beginAccess();

        MEMORY[0x193ABF170](v13);
        if (*((*(v1 + 248) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 248) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_endAccess();
      }
    }
  }

  return result;
}

{
  v3 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0T0VAAE017AnimationListenerS033_390609F81ACEBEAF00AD8179BD31E870LLVG_Tt0g5(a1);
  if (v3)
  {
    v4 = v3[9];
    if (v4)
    {
      swift_beginAccess();
      v5 = swift_retain_n();
      MEMORY[0x193ABF170](v5);
      if (*((*(v1 + 160) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 160) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v6 = swift_endAccess();
      (*(*v4 + 88))(v6);
    }
  }

  v7 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0T0VAAE024AnimationLogicalListenerS033_390609F81ACEBEAF00AD8179BD31E870LLVG_Tt0g5(a1);
  if (v7)
  {
    v9 = v7[9];
    if (v9)
    {
      v10 = *(*v9 + 88);

      v12 = v10(v11);
      if (*(v1 + 176) == 1)
      {
        (*(*v9 + 96))(v12);
      }

      else
      {
        swift_beginAccess();

        MEMORY[0x193ABF170](v13);
        if (*((*(v1 + 168) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 168) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_endAccess();
      }
    }
  }

  return result;
}

{
  v3 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0T0VAAE017AnimationListenerS033_390609F81ACEBEAF00AD8179BD31E870LLVG_Tt0g5(a1);
  if (v3)
  {
    v4 = v3[9];
    if (v4)
    {
      swift_beginAccess();
      v5 = swift_retain_n();
      MEMORY[0x193ABF170](v5);
      if (*((*(v1 + 176) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 176) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v6 = swift_endAccess();
      (*(*v4 + 88))(v6);
    }
  }

  v7 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0T0VAAE024AnimationLogicalListenerS033_390609F81ACEBEAF00AD8179BD31E870LLVG_Tt0g5(a1);
  if (v7)
  {
    v9 = v7[9];
    if (v9)
    {
      v10 = *(*v9 + 88);

      v12 = v10(v11);
      if (*(v1 + 192) == 1)
      {
        (*(*v9 + 96))(v12);
      }

      else
      {
        swift_beginAccess();

        MEMORY[0x193ABF170](v13);
        if (*((*(v1 + 184) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 184) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_endAccess();
      }
    }
  }

  return result;
}

{
  v3 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0T0VAAE017AnimationListenerS033_390609F81ACEBEAF00AD8179BD31E870LLVG_Tt0g5(a1);
  if (v3)
  {
    v4 = v3[9];
    if (v4)
    {
      swift_beginAccess();
      v5 = swift_retain_n();
      MEMORY[0x193ABF170](v5);
      if (*((*(v1 + 576) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 576) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v6 = swift_endAccess();
      (*(*v4 + 88))(v6);
    }
  }

  v7 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0T0VAAE024AnimationLogicalListenerS033_390609F81ACEBEAF00AD8179BD31E870LLVG_Tt0g5(a1);
  if (v7)
  {
    v9 = v7[9];
    if (v9)
    {
      v10 = *(*v9 + 88);

      v12 = v10(v11);
      if (*(v1 + 592) == 1)
      {
        (*(*v9 + 96))(v12);
      }

      else
      {
        swift_beginAccess();

        MEMORY[0x193ABF170](v13);
        if (*((*(v1 + 584) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 584) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_endAccess();
      }
    }
  }

  return result;
}

{
  v3 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0T0VAAE017AnimationListenerS033_390609F81ACEBEAF00AD8179BD31E870LLVG_Tt0g5(a1);
  if (v3)
  {
    v4 = v3[9];
    if (v4)
    {
      swift_beginAccess();
      v5 = swift_retain_n();
      MEMORY[0x193ABF170](v5);
      if (*((*(v1 + 96) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 96) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v6 = swift_endAccess();
      (*(*v4 + 88))(v6);
    }
  }

  v7 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0T0VAAE024AnimationLogicalListenerS033_390609F81ACEBEAF00AD8179BD31E870LLVG_Tt0g5(a1);
  if (v7)
  {
    v9 = v7[9];
    if (v9)
    {
      v10 = *(*v9 + 88);

      v12 = v10(v11);
      if (*(v1 + 112) == 1)
      {
        (*(*v9 + 96))(v12);
      }

      else
      {
        swift_beginAccess();

        MEMORY[0x193ABF170](v13);
        if (*((*(v1 + 104) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 104) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_endAccess();
      }
    }
  }

  return result;
}

{
  v3 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0T0VAAE017AnimationListenerS033_390609F81ACEBEAF00AD8179BD31E870LLVG_Tt0g5(a1);
  if (v3)
  {
    v4 = v3[9];
    if (v4)
    {
      swift_beginAccess();
      v5 = swift_retain_n();
      MEMORY[0x193ABF170](v5);
      if (*((*(v1 + 256) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 256) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v6 = swift_endAccess();
      (*(*v4 + 88))(v6);
    }
  }

  v7 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0T0VAAE024AnimationLogicalListenerS033_390609F81ACEBEAF00AD8179BD31E870LLVG_Tt0g5(a1);
  if (v7)
  {
    v9 = v7[9];
    if (v9)
    {
      v10 = *(*v9 + 88);

      v12 = v10(v11);
      if (*(v1 + 272) == 1)
      {
        (*(*v9 + 96))(v12);
      }

      else
      {
        swift_beginAccess();

        MEMORY[0x193ABF170](v13);
        if (*((*(v1 + 264) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 264) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_endAccess();
      }
    }
  }

  return result;
}

{
  v3 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0T0VAAE017AnimationListenerS033_390609F81ACEBEAF00AD8179BD31E870LLVG_Tt0g5(a1);
  if (v3)
  {
    v4 = v3[9];
    if (v4)
    {
      swift_beginAccess();
      v5 = swift_retain_n();
      MEMORY[0x193ABF170](v5);
      if (*((*(v1 + 272) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 272) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v6 = swift_endAccess();
      (*(*v4 + 88))(v6);
    }
  }

  v7 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0T0VAAE024AnimationLogicalListenerS033_390609F81ACEBEAF00AD8179BD31E870LLVG_Tt0g5(a1);
  if (v7)
  {
    v9 = v7[9];
    if (v9)
    {
      v10 = *(*v9 + 88);

      v12 = v10(v11);
      if (*(v1 + 288) == 1)
      {
        (*(*v9 + 96))(v12);
      }

      else
      {
        swift_beginAccess();

        MEMORY[0x193ABF170](v13);
        if (*((*(v1 + 280) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 280) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_endAccess();
      }
    }
  }

  return result;
}

{
  v3 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0T0VAAE017AnimationListenerS033_390609F81ACEBEAF00AD8179BD31E870LLVG_Tt0g5(a1);
  if (v3)
  {
    v4 = v3[9];
    if (v4)
    {
      swift_beginAccess();
      v5 = swift_retain_n();
      MEMORY[0x193ABF170](v5);
      if (*((*(v1 + 320) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 320) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v6 = swift_endAccess();
      (*(*v4 + 88))(v6);
    }
  }

  v7 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0T0VAAE024AnimationLogicalListenerS033_390609F81ACEBEAF00AD8179BD31E870LLVG_Tt0g5(a1);
  if (v7)
  {
    v9 = v7[9];
    if (v9)
    {
      v10 = *(*v9 + 88);

      v12 = v10(v11);
      if (*(v1 + 336) == 1)
      {
        (*(*v9 + 96))(v12);
      }

      else
      {
        swift_beginAccess();

        MEMORY[0x193ABF170](v13);
        if (*((*(v1 + 328) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 328) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_endAccess();
      }
    }
  }

  return result;
}

{
  v3 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0T0VAAE017AnimationListenerS033_390609F81ACEBEAF00AD8179BD31E870LLVG_Tt0g5(a1);
  if (v3)
  {
    v4 = v3[9];
    if (v4)
    {
      swift_beginAccess();
      v5 = swift_retain_n();
      MEMORY[0x193ABF170](v5);
      if (*((*(v1 + 112) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 112) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v6 = swift_endAccess();
      (*(*v4 + 88))(v6);
    }
  }

  v7 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0T0VAAE024AnimationLogicalListenerS033_390609F81ACEBEAF00AD8179BD31E870LLVG_Tt0g5(a1);
  if (v7)
  {
    v9 = v7[9];
    if (v9)
    {
      v10 = *(*v9 + 88);

      v12 = v10(v11);
      if (*(v1 + 128) == 1)
      {
        (*(*v9 + 96))(v12);
      }

      else
      {
        swift_beginAccess();

        MEMORY[0x193ABF170](v13);
        if (*((*(v1 + 120) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 120) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_endAccess();
      }
    }
  }

  return result;
}