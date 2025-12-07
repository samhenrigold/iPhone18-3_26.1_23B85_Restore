uint64_t specialized Set.union<A>(_:)(uint64_t result, uint64_t a2)
{
  v2 = result;
  v16 = a2;
  if ((result & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    type metadata accessor for AnyKeyPath();
    result = Set.Iterator.init(_cocoa:)();
    v2 = v17;
    v3 = v18;
    v4 = v19;
    v5 = v20;
    v6 = v21;
  }

  else
  {
    v5 = 0;
    v7 = -1 << *(result + 32);
    v3 = result + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(result + 56);
  }

  if (v2 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v10 = v5;
    v11 = v6;
    v12 = v5;
    if (!v6)
    {
      break;
    }

LABEL_12:
    v13 = (v11 - 1) & v11;
    v14 = *(*(v2 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));

    if (!v14)
    {
LABEL_18:
      outlined consume of Set<EventID>.Iterator._Variant(v2);
      return v16;
    }

    while (1)
    {
      specialized Set._Variant.insert(_:)(&v15, v14);

      v5 = v12;
      v6 = v13;
      if ((v2 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (__CocoaSet.Iterator.next()())
      {
        type metadata accessor for AnyKeyPath();
        swift_dynamicCast();
        v14 = v15;
        v12 = v5;
        v13 = v6;
        if (v15)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((v4 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v11 = *(v3 + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized Set._Variant.insert(_:)(uint64_t *a1, uint64_t a2)
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

    v8 = __CocoaSet.member(for:)();

    if (v8)
    {

      type metadata accessor for AnyKeyPath();
      swift_dynamicCast();
      result = 0;
      *a1 = v19;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v16 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfCs10AnyKeyPathC_Tt1g5(v7, result + 1);
    v17 = *(v16 + 16);
    if (*(v16 + 24) <= v17)
    {
      specialized _NativeSet.resize(capacity:)(v17 + 1);
    }

    specialized _NativeSet._unsafeInsertNew(_:)(v18, v16);

    *v3 = v16;
    goto LABEL_16;
  }

  type metadata accessor for AnyKeyPath();
  v10 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v11 = -1 << *(v6 + 32);
  v12 = v10 & ~v11;
  if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;

    specialized _NativeSet.insertNew(_:at:isUnique:)(v15, v12, isUniquelyReferenced_nonNull_native);
    *v2 = v20;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v13 = ~v11;
  while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    v12 = (v12 + 1) & v13;
    if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v12);

  return 0;
}

void specialized ObservationGraphMutation.cancel()(uint64_t a1, uint64_t a2, double a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v6 = *(type metadata accessor for ObservationTracking() - 8);
    v7 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v8 = *(v6 + 72);
    do
    {
      ObservationTracking.cancel()();
      v7 += v8;
      --v4;
    }

    while (v4);
  }

  v9 = *(a2 + 16);
  if (v9)
  {
    v10 = a2 + 40;
    do
    {
      AGSubgraphRemoveObserver();
      v10 += 16;
      --v9;
    }

    while (v9);
  }
}

uint64_t outlined destroy of (mutation: ObservationGraphMutation, accessList: ObservationTracking._AccessList)(uint64_t a1)
{
  type metadata accessor for (mutation: ObservationGraphMutation, accessList: ObservationTracking._AccessList)(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t closure #1 in ForEachState.applyNodes(from:style:list:transform:to:)(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  v83 = a8;
  v81 = a6;
  v80 = a5;
  v85 = a1;
  v11 = *a3;
  v12 = *a3;
  v13 = *(*a3 + 120);
  v76 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v15 = &v72 - v14;
  v84 = *v16;
  v18 = v17 + *(*v17 + 160);
  swift_beginAccess();
  v19 = *(v11 + 112);
  v82 = v12;
  v20 = *(v12 + 128);
  v21 = *(v11 + 144);
  *&v98 = v19;
  *(&v98 + 1) = v13;
  v86 = v20;
  v99 = v20;
  v87 = v21;
  v100[0] = v21;
  v22 = type metadata accessor for ForEach(0, &v98);
  result = (*(*(v22 - 8) + 48))(v18, 1, v22);
  if (result == 1)
  {
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v79 = *(v18 + *(v22 + 64));
  *&v98 = v19;
  *(&v98 + 1) = v13;
  v99 = v86;
  v100[0] = v87;
  type metadata accessor for ForEach.IDGenerator(0, &v98);
  result = outlined init with copy of _ViewListOutputs.Views(a3 + *(*a3 + 176), v111);
  v77 = v19;
  v78 = a7;
  if (v112)
  {
    if (*(a4 + 172) != 1)
    {
      v24 = v111[0];
      v25 = *(&v111[0] + 1);
      type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList, &protocol descriptor for ViewList);
      InputValue = AGGraphGetInputValue();
      outlined init with copy of AnyTrackedValue(InputValue, v88);
      if (v25)
      {
        v27 = *(*v25 + 80);

        v27(v88);
      }

      v28 = v79 == 0;
      v103 = v80;
      LOBYTE(v104) = v81 & 1;
      v29 = ForEachState.viewsPerElement.getter();
      v31 = (v29 == 1) & ~v30;
      v105 = a3;
      v106 = 1;
      if ((v30 & 0x100) != 0)
      {
        v31 = 0;
      }

      v107 = v31;
      v108 = v28;
      MEMORY[0x1EEE9AC00](v29);
      v32 = v84;
      v33 = v85;
      *(&v72 - 6) = v88;
      *(&v72 - 5) = v33;
      *(&v72 - 4) = v32;
      *(&v72 - 6) = v24;
      v34 = v83;
      *(&v72 - 2) = v78;
      *(&v72 - 1) = v34;
      v35 = *(v82 + 152);

      *&v36 = v77;
      *(&v36 + 1) = v13;
      v99 = v86;
      v98 = v36;
      v100[0] = v87;
      v100[1] = v35;
      v37 = type metadata accessor for ForEachState.Transform(0, &v98);
      _ViewList_TemporarySublistTransform.withPushedItem<A, B>(_:do:)(&v105, partial apply for closure #2 in closure #1 in ForEachState.applyNodes(from:style:list:transform:to:), (&v72 - 8), MEMORY[0x1E69E6370], v37, &protocol witness table for ForEachState<A, B, C>.Transform);

      v38 = v98;
      v39 = v88;
LABEL_30:
      __swift_destroy_boxed_opaque_existential_1(v39);
      return v38;
    }

    goto LABEL_35;
  }

  outlined init with take of AnyTrackedValue(v111, &v105);
  v41 = v109;
  v40 = v110;
  v42 = __swift_project_boxed_opaque_existential_1(&v105, v109);
  result = (*(v40 + 8))(v41, v40);
  v43 = result;
  v44 = result;
  if (v84)
  {
    v44 = result * (v84 >> 1);
    if ((result * (v84 >> 1)) >> 64 != v44 >> 63)
    {
      __break(1u);
LABEL_33:
      v42 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v42 + 2) + 1, 1, v42);
LABEL_24:
      v59 = *(v42 + 2);
      v58 = *(v42 + 3);
      v60 = v59 + 1;
      if (v59 >= v58 >> 1)
      {
        v73 = v59 + 1;
        v71 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v58 > 1), v59 + 1, 1, v42);
        v60 = v73;
        v42 = v71;
      }

      *(v42 + 2) = v60;
      v61 = &v42[24 * v59];
      v62 = v74;
      *(v61 + 4) = v15;
      *(v61 + 5) = v62;
      *(v61 + 12) = v12;
      v61[52] = v76;
      v104 = v42;
      goto LABEL_27;
    }
  }

  v45 = *v85;
  v46 = __OFSUB__(*v85, v44);
  v47 = *v85 - v44;
  if (v47 < 0 == v46)
  {
    *v85 = v47;
    __swift_destroy_boxed_opaque_existential_1(&v105);
    return 1;
  }

  v103 = 0;
  v104 = MEMORY[0x1E69E7CC0];
  v48 = *a3;
  v19 = v79;
  v75 = v45;
  if (v79)
  {
    v49 = v76;
    result = (*(v76 + 16))(v15, a3 + *(v48 + 160), v13);
    if (*(a4 + 172))
    {
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v50 = *(a4 + 168);
    v51 = ForEachState.viewsPerElement.getter() == 1;
    v53 = v51 & ~v52;
    if ((v52 & 0x100) != 0)
    {
      v54 = 0;
    }

    else
    {
      v54 = v53;
    }

    _ViewList_ID.bind<A>(explicitID:owner:isUnary:reuseID:)(v15, v50, v54, *(a3 + *(*a3 + 168)), v13);
    (*(v49 + 8))(v15, v13);
    v42 = v104;
LABEL_27:
    outlined init with copy of AnyTrackedValue(&v105, v100);
    *&v98 = v75;
    *(&v98 + 1) = v43;
    *&v99 = v103;
    *(&v99 + 1) = v42;
    v100[5] = MEMORY[0x1E69E7CC0];
    v100[6] = MEMORY[0x1E69E7CC0];
    v101 = 0;
    v102 = 1;
    v96 = v80;
    v97 = v81 & 1;
    v63 = ForEachState.viewsPerElement.getter();
    v65 = (v63 == 1) & ~v64;
    v92 = a3;
    v93 = 0;
    if ((v64 & 0x100) != 0)
    {
      v65 = 0;
    }

    v94 = v65;
    v95 = v19 == 0;
    MEMORY[0x1EEE9AC00](v63);
    v67 = v83;
    v66 = v84;
    *(&v72 - 6) = v78;
    *(&v72 - 5) = v67;
    v68 = v85;
    *(&v72 - 4) = v85;
    *(&v72 - 3) = v66;
    *(&v72 - 2) = &v98;
    v69 = *(v82 + 152);

    v88[0] = v77;
    v88[1] = v13;
    v89 = v86;
    v90 = v87;
    v91 = v69;
    v70 = type metadata accessor for ForEachState.Transform(0, v88);
    _ViewList_TemporarySublistTransform.withPushedItem<A, B>(_:do:)(&v92, partial apply for closure #1 in closure #1 in ForEachState.applyNodes(from:style:list:transform:to:), (&v72 - 8), MEMORY[0x1E69E6370], v70, &protocol witness table for ForEachState<A, B, C>.Transform);

    v38 = LOBYTE(v88[0]);
    *v68 = 0;
    outlined destroy of _ViewList_Sublist(&v98);
    v39 = &v105;
    goto LABEL_30;
  }

  if ((*(a4 + 172) & 1) == 0)
  {
    v55 = *(a3 + *(v48 + 200));
    LODWORD(v12) = *(a4 + 168);
    v56 = ForEachState.viewsPerElement.getter();
    if ((v57 & 0x100) != 0)
    {
      LODWORD(v76) = 0;
    }

    else
    {
      LODWORD(v76) = (v56 == 1) & ~v57;
    }

    v74 = *(a3 + *(*a3 + 168));
    type metadata accessor for _AnyHashableBox<ForEachConstantID>(0);
    v15 = swift_allocObject();
    *(v15 + 2) = v55;
    *(v15 + 6) = v12;
    v42 = MEMORY[0x1E69E7CC0];
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_24;
    }

    goto LABEL_33;
  }

LABEL_37:
  __break(1u);
  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for ForEachState.Transform(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 9) = *(a2 + 9);

  return a1;
}

uint64_t closure #1 in ForEachChild.updateValue()@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v38 = a3;
  v43 = *a1;
  v5 = v43;
  v6 = *(v43 + 104);
  v7 = *(*(v6 + 8) + 8);
  v8 = *(v43 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v36 = *(AssociatedTypeWitness - 8);
  v37 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v35 = v31 - v10;
  v34 = v7;
  v33 = swift_getAssociatedTypeWitness();
  v11 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v32 = v31 - v12;
  v13 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v31 - v15;
  v17 = a1 + *(v5 + 160);
  swift_beginAccess();
  v18 = *(v5 + 112);
  v19 = v8;
  v39 = v8;
  v40 = *(v43 + 88);
  v41 = v6;
  v42 = v18;
  v20 = type metadata accessor for ForEach(0, &v39);
  result = (*(*(v20 - 8) + 48))(v17, 1, v20);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v22 = *&v17[*(v20 + 60)];
    v23 = *&v17[*(v20 + 60) + 8];
    v31[0] = v19;
    v31[1] = v23;
    v43 = v22;
    (*(v13 + 16))(v16, v17, v19);
    v24 = *(*a2 + 192);
    swift_beginAccess();
    v25 = v32;
    v26 = v33;
    (*(v11 + 16))(v32, a2 + v24, v33);

    v27 = dispatch thunk of Collection.subscript.read();
    v29 = v35;
    v28 = v36;
    v30 = v37;
    (*(v36 + 16))(v35);
    v27(&v39, 0);
    (*(v11 + 8))(v25, v26);
    (*(v13 + 8))(v16, v31[0]);
    (v43)(v29);

    return (*(v28 + 8))(v29, v30);
  }

  return result;
}

uint64_t assignWithCopy for VStack(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = v4;
  v5 = *(*(a3 + 16) - 8);
  (*(v5 + 24))((*(v5 + 80) + 17 + a1) & ~*(v5 + 80), (*(v5 + 80) + 17 + a2) & ~*(v5 + 80));
  return a1;
}

unsigned __int8 *assignWithCopy for _ConditionalContent(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  v5 = *(a3 + 16);
  v6 = *(a3 + 24);
  v7 = *(v5 - 8);
  v8 = *(v6 - 8);
  if (*(v8 + 64) <= *(v7 + 64))
  {
    v9 = *(*(*(a3 + 16) - 8) + 64);
  }

  else
  {
    v9 = *(*(v6 - 8) + 64);
  }

  v10 = a1[v9];
  v11 = v10 - 2;
  if (v10 >= 2)
  {
    if (v9 <= 3)
    {
      v12 = v9;
    }

    else
    {
      v12 = 4;
    }

    if (v12 <= 1)
    {
      if (!v12)
      {
        goto LABEL_19;
      }

      v13 = *a1;
    }

    else if (v12 == 2)
    {
      v13 = *a1;
    }

    else if (v12 == 3)
    {
      v13 = *a1 | (a1[2] << 16);
    }

    else
    {
      v13 = *a1;
    }

    v14 = (v13 | (v11 << (8 * v9))) + 2;
    v10 = v13 + 2;
    if (v9 < 4)
    {
      v10 = v14;
    }
  }

LABEL_19:
  if (v10 == 1)
  {
    v15 = *(v6 - 8);
  }

  else
  {
    v15 = *(*(a3 + 16) - 8);
  }

  if (v10 == 1)
  {
    v16 = *(a3 + 24);
  }

  else
  {
    v16 = *(a3 + 16);
  }

  (*(v15 + 8))(a1, v16);
  v17 = a2[v9];
  v18 = v17 - 2;
  if (v17 >= 2)
  {
    if (v9 <= 3)
    {
      v19 = v9;
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 1)
    {
      if (v19 == 2)
      {
        v20 = *a2;
      }

      else if (v19 == 3)
      {
        v20 = *a2 | (a2[2] << 16);
      }

      else
      {
        v20 = *a2;
      }

LABEL_37:
      v21 = (v20 | (v18 << (8 * v9))) + 2;
      v17 = v20 + 2;
      if (v9 < 4)
      {
        v17 = v21;
      }

      goto LABEL_39;
    }

    if (v19)
    {
      v20 = *a2;
      goto LABEL_37;
    }
  }

LABEL_39:
  v22 = v17 == 1;
  if (v17 == 1)
  {
    v23 = v8;
  }

  else
  {
    v23 = v7;
  }

  if (v17 == 1)
  {
    v24 = v6;
  }

  else
  {
    v24 = v5;
  }

  (*(v23 + 16))(a1, a2, v24);
  a1[v9] = v22;
  return a1;
}

void *initializeWithCopy for CodableOptional(void *a1, const void *a2, uint64_t a3)
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
    (*(v6 + 16))(a1, a2, v5);
    (*(v6 + 56))(a1, 0, 1, v5);
    return a1;
  }
}

uint64_t destroy for CodableOptional(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v6 = *(v3 - 8);
  result = (*(v6 + 48))(a1, 1, v3);
  if (!result)
  {
    v5 = *(v6 + 8);

    return v5(a1, v3);
  }

  return result;
}

void ForEachState.Transform.apply(sublist:)(SwiftUI::ViewTraitCollection *a1, void *a2, int a3, uint64_t a4, uint64_t a5)
{
  ForEachState.Transform.bindID(_:)(&a1[2], a2, a3 & 0x10101, a4, a5);

  MEMORY[0x193ABF170](v6);
  if (*((a1[9].storage._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((a1[9].storage._rawValue & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  ForEachState.Item.applyTraits(to:)(a1 + 10);
}

void protocol witness for _ViewList_SublistTransform_Item.apply(sublist:) in conformance ForEachState<A, B, C>.Transform(SwiftUI::ViewTraitCollection *a1, uint64_t a2)
{
  if (*(v2 + 9))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3 | *(v2 + 8);
  if (*(v2 + 10))
  {
    v5 = 0x10000;
  }

  else
  {
    v5 = 0;
  }

  ForEachState.Transform.apply(sublist:)(a1, *v2, v4 | v5, *(a2 + 16), *(a2 + 24));
}

uint64_t ForEachState.Transform.bindID(_:)(uint64_t result, void *a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    v8 = result;
    result = swift_weakLoadStrong();
    if (result)
    {
      v9 = *(result + 168);
      v10 = *(result + 172);

      if ((v10 & 1) == 0)
      {
        v11 = a3 & 0x100;
        v12 = *a2;
        if ((a3 & 0x10000) != 0)
        {
          v13 = *(a2 + v12[25]);
          v14 = *(a2 + v12[21]);
          type metadata accessor for _AnyHashableBox<ForEachConstantID>(0);
          v15 = swift_allocObject();
          *(v15 + 16) = v13;
          *(v15 + 24) = v9;
          v16 = *(v8 + 8);
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 16) + 1, 1, v16);
            v16 = result;
          }

          v17 = *(v16 + 16);
          v18 = *(v16 + 24);
          v19 = v17 + 1;
          if (v17 >= v18 >> 1)
          {
            v21 = v16;
            v22 = *(v16 + 16);
            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v17 + 1, 1, v21);
            v17 = v22;
            v16 = result;
          }

          *(v16 + 16) = v19;
          v20 = v16 + 24 * v17;
          *(v20 + 32) = v15;
          *(v20 + 40) = v14;
          *(v20 + 48) = v9;
          *(v20 + 52) = BYTE1(v11);
          *(v8 + 8) = v16;
        }

        else
        {
          return _ViewList_ID.bind<A>(explicitID:owner:isUnary:reuseID:)(a2 + v12[20], v9, v11 != 0, *(a2 + v12[21]), a5);
        }
      }
    }
  }

  return result;
}

uint64_t _s7SwiftUI19ViewTraitCollectionV15setValueIfUnset_3fory0G0Qz_xmtAA01_cD3KeyRzlFAA07Dynamicc14ContentIDTraitK0V_Tt0g5(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  result = *v2 + 32;
  v7 = -*(*v2 + 16);
  v8 = -1;
  while (v7 + v8 != -1)
  {
    if (++v8 >= v5[2])
    {
      __break(1u);
      goto LABEL_11;
    }

    v9 = result + 40;
    outlined init with copy of AnyTrackedValue(result, &v18);
    v10 = v19;
    v11 = v20;
    __swift_project_boxed_opaque_existential_1(&v18, v19);
    v12 = (v11[1])(v10, v11);
    __swift_destroy_boxed_opaque_existential_1(&v18);
    result = v9;
    if (v12 == &type metadata for DynamicViewContentIDTraitKey)
    {
      return result;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_7;
  }

LABEL_11:
  v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5[2] + 1, 1, v5);
  *v3 = v5;
LABEL_7:
  v15 = v5[2];
  v14 = v5[3];
  if (v15 >= v14 >> 1)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v5);
    *v3 = v5;
  }

  _sSnySiGMaTm_6(0, &lazy cache variable for type metadata for ViewTraitCollection.AnyTrait<DynamicViewContentIDTraitKey>, &type metadata for DynamicViewContentIDTraitKey, &protocol witness table for DynamicViewContentIDTraitKey, type metadata accessor for ViewTraitCollection.AnyTrait);
  v19 = v16;
  v20 = &protocol witness table for ViewTraitCollection.AnyTrait<A>;
  *&v18 = a1;
  BYTE8(v18) = a2 & 1;
  v5[2] = v15 + 1;
  result = outlined init with take of AnyTrackedValue(&v18, &v5[5 * v15 + 4]);
  *v3 = v5;
  return result;
}

Swift::Void __swiftcall ForEachState.Item.applyTraits(to:)(SwiftUI::ViewTraitCollection *to)
{
  v2 = *v1;
  _s7SwiftUI19ViewTraitCollectionV15setValueIfUnset_3fory0G0Qz_xmtAA01_cD3KeyRzlFAA07Dynamicc14ContentIDTraitK0V_Tt0g5(*(v1 + *(*v1 + 208)), 0);
  v3 = *(*v1 + 200);
  _s7SwiftUI19ViewTraitCollectionV15setValueIfUnset_3fory0G0Qz_xmtAA01_cD3KeyRzlFAA07Dynamicc13ContentOffsetdK0V_Tt0g5(*(v1 + v3), 0);
  if (*(v1 + *(*v1 + 224)) == 1)
  {
    _s7SwiftUI19ViewTraitCollectionV15setValueIfUnset_3fory0G0Qz_xmtAA01_cD3KeyRzlFAA03TaggdK0VySiG_Tt0g5(*(v1 + v3), 0);
  }

  else
  {
    ViewTraitCollection.setTagIfUnset<A>(for:value:)(*(v2 + 120), v1 + *(*v1 + 160), *(v2 + 120), *(v2 + 144));
  }
}

uint64_t _s7SwiftUI19ViewTraitCollectionV15setValueIfUnset_3fory0G0Qz_xmtAA01_cD3KeyRzlFAA07Dynamicc13ContentOffsetdK0V_Tt0g5(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  result = *v2 + 32;
  v7 = -*(*v2 + 16);
  v8 = -1;
  while (v7 + v8 != -1)
  {
    if (++v8 >= v5[2])
    {
      __break(1u);
      goto LABEL_11;
    }

    v9 = result + 40;
    outlined init with copy of AnyTrackedValue(result, &v18);
    v10 = v19;
    v11 = v20;
    __swift_project_boxed_opaque_existential_1(&v18, v19);
    v12 = (v11[1])(v10, v11);
    __swift_destroy_boxed_opaque_existential_1(&v18);
    result = v9;
    if (v12 == &type metadata for DynamicViewContentOffsetTraitKey)
    {
      return result;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_7;
  }

LABEL_11:
  v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5[2] + 1, 1, v5);
  *v3 = v5;
LABEL_7:
  v15 = v5[2];
  v14 = v5[3];
  if (v15 >= v14 >> 1)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v5);
    *v3 = v5;
  }

  _sSnySiGMaTm_6(0, &lazy cache variable for type metadata for ViewTraitCollection.AnyTrait<DynamicViewContentOffsetTraitKey>, &type metadata for DynamicViewContentOffsetTraitKey, &protocol witness table for DynamicViewContentOffsetTraitKey, type metadata accessor for ViewTraitCollection.AnyTrait);
  v19 = v16;
  v20 = &protocol witness table for ViewTraitCollection.AnyTrait<A>;
  *&v18 = a1;
  BYTE8(v18) = a2 & 1;
  v5[2] = v15 + 1;
  result = outlined init with take of AnyTrackedValue(&v18, &v5[5 * v15 + 4]);
  *v3 = v5;
  return result;
}

uint64_t ViewTraitCollection.setTagIfUnset<A>(for:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for TagValueTraitKey.Value(0, a3, a4, a4);
  v8 = *(v7 - 8);
  v9.n128_f64[0] = MEMORY[0x1EEE9AC00](v7);
  v11 = &v17 - v10;
  v12 = *(a3 - 8);
  (*(v12 + 16))(&v17 - v10, a2, a3, v9);
  (*(v12 + 56))(v11, 0, 1, a3);
  v14 = type metadata accessor for TagValueTraitKey(0, a3, a4, v13);
  swift_getWitnessTable(protocol conformance descriptor for TagValueTraitKey<A>, v14);
  ViewTraitCollection.setValueIfUnset<A>(_:for:)(v11, v14, v14, v15);
  return (*(v8 + 8))(v11, v7);
}

uint64_t ViewTraitCollection.setValueIfUnset<A>(_:for:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v34 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v32 = *(AssociatedTypeWitness - 8);
  v33 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = &v31 - v10;
  v13 = type metadata accessor for ViewTraitCollection.AnyTrait(0, a3, a4, v12);
  v37 = *(v13 - 8);
  v38 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v35 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16.n128_f64[0] = MEMORY[0x1EEE9AC00](v15);
  v36 = &v31 - v17;
  v39 = v5;
  v18 = *v5;
  result = *v5 + 32;
  v20 = -*(*v5 + 16);
  v21 = -1;
  while (v20 + v21 != -1)
  {
    if (++v21 >= v18[2])
    {
      __break(1u);
      goto LABEL_11;
    }

    v22 = result + 40;
    outlined init with copy of AnyTrackedValue(result, v40);
    v23 = v41;
    v6 = v42;
    __swift_project_boxed_opaque_existential_1(v40, v41);
    v4 = (*(v6 + 1))(v23, v6);
    __swift_destroy_boxed_opaque_existential_1(v40);
    result = v22;
    if (v4 == a3)
    {
      return result;
    }
  }

  (*(v32 + 16))(v11, v34, v33, v16);
  v24 = swift_getAssociatedTypeWitness();
  v6 = v36;
  (*(*(v24 - 8) + 32))(v36, v11, v24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = v39;
  *v39 = v18;
  if (isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_7;
  }

LABEL_11:
  v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18[2] + 1, 1, v18);
  *v4 = v18;
LABEL_7:
  v27 = v18[2];
  v26 = v18[3];
  if (v27 >= v26 >> 1)
  {
    v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v18);
    *v4 = v18;
  }

  v29 = v37;
  v28 = v38;
  v30 = v35;
  (*(v37 + 16))(v35, v6, v38);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v27, v30, v4, v28, &protocol witness table for ViewTraitCollection.AnyTrait<A>);
  result = (*(v29 + 8))(v6, v28);
  *v4 = v18;
  return result;
}

uint64_t Font.init(_:)(uint64_t a1)
{
  _s7SwiftUI7FontBoxCyAA0C0V08PlatformC8ProviderVGMaTm_0(0, &lazy cache variable for type metadata for FontBox<Font.PlatformFontProvider>, lazy protocol witness table accessor for type Font.PlatformFontProvider and conformance Font.PlatformFontProvider, &type metadata for Font.PlatformFontProvider);
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

void type metadata accessor for FontBox<Font.PlatformFontProvider>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void _s7SwiftUI7FontBoxCyAA0C0V08PlatformC8ProviderVGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    v7 = a3();
    v9 = type metadata accessor for FontBox(a1, a4, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void lazy protocol witness table accessor for type Font.PlatformFontProvider and conformance Font.PlatformFontProvider()
{
  if (!lazy protocol witness table cache variable for type Font.PlatformFontProvider and conformance Font.PlatformFontProvider)
  {
    swift_getWitnessTable(protocol conformance descriptor for Font.PlatformFontProvider, &type metadata for Font.PlatformFontProvider, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Font.PlatformFontProvider and conformance Font.PlatformFontProvider);
  }
}

{
  if (!lazy protocol witness table cache variable for type Font.PlatformFontProvider and conformance Font.PlatformFontProvider)
  {
    swift_getWitnessTable(protocol conformance descriptor for Font.PlatformFontProvider, &type metadata for Font.PlatformFontProvider, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Font.PlatformFontProvider and conformance Font.PlatformFontProvider);
  }
}

{
  if (!lazy protocol witness table cache variable for type Font.PlatformFontProvider and conformance Font.PlatformFontProvider)
  {
    swift_getWitnessTable(protocol conformance descriptor for Font.PlatformFontProvider, &type metadata for Font.PlatformFontProvider, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Font.PlatformFontProvider and conformance Font.PlatformFontProvider);
  }
}

uint64_t SecondaryLookupTrackedValue.unwrap<A>()@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  result = AssociatedTypeWitness - 8;
  if (*(v8 + 64) == *(*(a2 - 8) + 64))
  {
    v9 = *(*(a2 - 8) + 16);

    return v9(a3, v3, a2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void lazy protocol witness table accessor for type AttributeScopes.SwiftUIAttributes and conformance AttributeScopes.SwiftUIAttributes(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  if (!*a1)
  {
    v5 = a2(255);
    swift_getWitnessTable(a3, v5);
    atomic_store(v6, a1);
  }
}

uint64_t type metadata completion function for AttributeScopes.SwiftUIAttributes(uint64_t a1)
{
  result = type metadata accessor for AttributeScopes.AccessibilityAttributes();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for AttributeScopes.FoundationAttributes();
    if (v3 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  Hasher.init(_seed:)();
  _ProposedSize.hash(into:)();
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, a3, a4, v4);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5)
{
  v7 = -1 << *(v5 + 32);
  result = a5 & ~v7;
  if ((*(v5 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v9 = ~v7;
    do
    {
      v10 = *(v5 + 48) + 32 * result;
      if (*(v10 + 8))
      {
        if ((a2 & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      else if ((a2 & 1) != 0 || *v10 != *&a1)
      {
        goto LABEL_4;
      }

      if (*(v10 + 24))
      {
        if (a4)
        {
          return result;
        }
      }

      else if ((a4 & 1) == 0 && *(v10 + 16) == *&a3)
      {
        return result;
      }

LABEL_4:
      result = (result + 1) & v9;
    }

    while (((*(v5 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

void lazy protocol witness table accessor for type SizeThatFitsMeasurer and conformance SizeThatFitsMeasurer()
{
  if (!lazy protocol witness table cache variable for type SizeThatFitsMeasurer and conformance SizeThatFitsMeasurer)
  {
    swift_getWitnessTable(protocol conformance descriptor for SizeThatFitsMeasurer, &type metadata for SizeThatFitsMeasurer, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type SizeThatFitsMeasurer and conformance SizeThatFitsMeasurer);
  }
}

uint64_t DisplayList.GraphicsRenderer.init(platformViewMode:)(char *a1)
{
  v2 = *a1;
  v3 = MEMORY[0x1E69E7CC8];
  *(v1 + 48) = 0;
  *(v1 + 16) = v3;
  *(v1 + 24) = v3;
  *(v1 + 32) = v3;
  *(v1 + 40) = v3;
  *(v1 + 56) = 0;
  *(v1 + 72) = xmmword_18DDAB910;
  *(v1 + 88) = 0;
  *(v1 + 96) = 0;
  *(v1 + 104) = MEMORY[0x1E69E7CC0];
  *(v1 + 112) = v2;
  v4 = __CFADD__(lastIdentity, 1);
  v5 = ++lastIdentity;
  if (v4)
  {
    v7 = 0;
    v6 = 1;
  }

  else
  {
    v6 = 0;
    *(v1 + 48) = v5;
    v7 = 1;
  }

  *(v1 + 52) = v6;
  *(v1 + 64) = v7;
  return v1;
}

double protocol witness for ViewGraphOwner.viewGraph.getter in conformance ImageRendererHost<A>()
{
  specialized ImageRendererHost.viewGraph.getter();

  return result;
}

uint64_t ImageRendererHost.render(ifNewerThan:renderer:)(uint64_t a1, char a2, void (*a3)(uint64_t, uint64_t (*)(CGFloat *a1), double), uint64_t a4)
{
  ImageRendererHost.renderUntilStable()(a1);
  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  v9 = static Update._lock;
  _MovableLockLock(static Update._lock);
  specialized static Update.begin()();
  closure #1 in ImageRendererHost.render(ifNewerThan:renderer:)(v4, a1, a2 & 1, a3, a4);
  static Update.end()();
  result = _MovableLockUnlock(v9);
  *(v4 + 80) = 1;
  return result;
}

uint64_t ImageRendererHost.renderUntilStable()(uint64_t result)
{
  v2 = 32;
  while (1)
  {
    *(v1 + 81) = 1;
    AGGraphClearUpdate();
    v5 = 0;
    v6 = 1;
    v3 = &v5;
    ViewGraphRootValueUpdater.render(interval:updateDisplayList:targetTimestamp:)(0.0, 1, *(&v3 - 1));
    v4 = AGGraphSetUpdate();
    if (*(v1 + 82) != 1)
    {
      break;
    }

    *(v1 + 81) = 0;
    if (!--v2)
    {
      return v4;
    }
  }

  *(v1 + 81) = 0;
  return v4;
}

double ImageRendererHost.currentTimestamp.getter@<D0>(double *a1@<X8>)
{
  swift_beginAccess();
  result = *(v1 + 64);
  *a1 = result;
  return result;
}

void type metadata accessor for PassthroughSubject<(), Never>()
{
  if (!lazy cache variable for type metadata for PassthroughSubject<(), Never>)
  {
    v0 = type metadata accessor for PassthroughSubject();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for PassthroughSubject<(), Never>);
    }
  }
}

uint64_t ImageRendererHost.as<A>(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  result = type metadata accessor for ViewGraphOwner(0, &lazy cache variable for type metadata for ViewGraphOwner, &protocol descriptor for ViewGraphOwner);
  if (result == a1)
  {
    v7 = v2;
    v8 = &protocol witness table for ImageRendererHost<A>;
    v2 = *(a1 - 8);
    if (*(v2 + 64) == 16)
    {
      goto LABEL_9;
    }

    __break(1u);
LABEL_8:
    v7 = v2;
    v8 = &protocol witness table for ImageRendererHost<A>;
    v2 = *(a1 - 8);
    if (*(v2 + 64) != 16)
    {
      __break(1u);
      return result;
    }

LABEL_9:
    (*(v2 + 16))(a2, &v7, a1);
    return (*(v2 + 56))(a2, 0, 1, a1);
  }

  result = type metadata accessor for ViewGraphOwner(0, &lazy cache variable for type metadata for ViewGraphDelegate, &protocol descriptor for ViewGraphDelegate);
  if (result == a1)
  {
    goto LABEL_8;
  }

  v6 = *(*(a1 - 8) + 56);

  return v6(a2, 1, 1, a1);
}

uint64_t type metadata accessor for CustomAttributeWriter(uint64_t a1, unint64_t *a2, uint64_t a3, char a4)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t type metadata accessor for ViewGraphOwner(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t ImageRendererHost.renderingPhase.getter@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 58);
  return result;
}

uint64_t (*protocol witness for ViewGraphOwner.currentTimestamp.modify in conformance ImageRendererHost<A>(uint64_t *a1))()
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
  *(v2 + 32) = ImageRendererHost.currentTimestamp.modify(v2);
  return protocol witness for MutableCollection.subscript.modify in conformance ArrayWith2Inline<A>;
}

void _MovableLockSyncMain(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  if (pthread_self() == *(a1 + 112))
  {

    a3(a2);
  }

  else
  {
    *(a1 + 136) = a3;
    *(a1 + 144) = a2;
    if (*(a1 + 153) & 1) != 0 || (*(a1 + 152) & 1) == 0 && (*(a1 + 152) = 1, dispatch_async_f(MEMORY[0x1E69E96A0], a1, sync_main_callback), (*(a1 + 153)))
    {
      pthread_cond_signal_thread_np((a1 + 64), *(a1 + 112));
    }

    while (*(a1 + 136))
    {
      pthread_cond_wait((a1 + 64), a1);
    }
  }
}

uint64_t ImageRendererHost.valuesNeedingUpdate.setter(__int16 a1)
{
  result = swift_beginAccess();
  *(v1 + 56) = a1;
  return result;
}

void specialized ImageRendererHost.requestUpdate(after:)()
{
  if (*(v0 + 81))
  {
    *(v0 + 82) = 1;
  }

  else
  {
    *(v0 + 136) = 1;
    if (*(v0 + 80) == 1)
    {
      *(v0 + 80) = 0;
      v1 = *(v0 + 32);

      v1(v2);
    }
  }
}

uint64_t closure #1 in ImageRenderer.initializeRenderer()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = a1;
  v7 = objc_opt_self();

  if ([v7 isMainThread])
  {
    closure #1 in closure #1 in ImageRenderer.initializeRenderer()(a1);
  }

  else
  {
    v8 = [objc_opt_self() mainRunLoop];
    type metadata accessor for _ContiguousArrayStorage<NSRunLoopMode>(0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_18DDA6EB0;
    v10 = *MEMORY[0x1E695DA28];
    *(v9 + 32) = *MEMORY[0x1E695DA28];
    type metadata accessor for NSRunLoopMode(0);
    v11 = v10;
    isa = Array._bridgeToObjectiveC()().super.isa;

    aBlock[4] = partial apply for closure #1 in closure #1 in ImageRenderer.initializeRenderer();
    aBlock[5] = v6;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_78;
    v13 = _Block_copy(aBlock);

    [v8 performInModes:isa block:v13];

    _Block_release(v13);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = direct field offset for ImageRenderer.observationEnabled;
    v16 = result;
    swift_beginAccess();
    LODWORD(v15) = *(v16 + v15);

    if (v15 == 1)
    {
      v18 = 17;
      v17 = swift_allocObject();
      v17[2] = a2;
      v17[3] = a3;
      v17[4] = a1;

      static Update.enqueueAction(reason:_:)(&v18, partial apply for closure #2 in closure #1 in ImageRenderer.initializeRenderer(), v17);
    }
  }

  return result;
}

void *ImageRenderer.currentScale.didset(double a1)
{
  v2 = *(v1 + 32);
  if (v2 != a1)
  {
    v3 = *(v1 + 24);
    v4 = (v3 + *(*v3 + 240));
    swift_beginAccess();
    v5 = *v4;
    swift_retain_n();
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA012DisplayScaleF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(v4, v2);

    if (v4[1])
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA012DisplayScaleK033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Ttg5(v5, *v4);
    }

    swift_endAccess();
    return ViewGraphRootValueUpdater.invalidateProperties(_:mayDeferUpdate:)(2u, 1, *v3, &protocol witness table for ImageRendererHost<A>);
  }

  return result;
}

uint64_t type metadata completion function for ImageRenderer(uint64_t a1)
{
  result = type metadata accessor for ObservationRegistrar();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void *specialized ImageRenderer.init(content:)(uint64_t a1)
{
  v3 = *v1;
  type metadata accessor for PassthroughSubject<(), Never>();
  swift_allocObject();
  v1[2] = PassthroughSubject.init()();
  v1[4] = 0x3FF0000000000000;
  ObservationRegistrar.init()();
  *(v1 + direct field offset for ImageRenderer._seed) = 0;
  *(v1 + direct field offset for ImageRenderer.observationEnabled) = 0;
  type metadata accessor for ImageRendererHost(0, *(v3 + 80), *(v3 + 88), v4);
  swift_allocObject();
  v1[3] = specialized ImageRendererHost.init(content:)(a1);
  ImageRenderer.initializeRenderer()();
  return v1;
}

void *ImageRenderer.init(content:)(uint64_t a1)
{
  v3 = *v1;
  v4 = specialized ImageRenderer.init(content:)(a1);
  (*(*(*(v3 + 80) - 8) + 8))(a1);
  return v4;
}

uint64_t type metadata completion function for ImageRendererHost(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    return swift_initClassMetadata2();
  }

  return result;
}

void *specialized ImageRendererHost.init(content:)(uint64_t a1)
{
  v2 = v1;
  v60 = *MEMORY[0x1E69E9840];
  v54 = *v1;
  v4 = v54;
  v5 = type metadata accessor for Locale();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v52 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v52 - v13;
  *(v1 + 4) = -1;
  *(v1 + 10) = 0;
  *(v1 + 6) = 1;
  *(v1 + 28) = 3;
  v1[4] = _ViewInputs.base.modify;
  v1[5] = 0;
  *(v1 + 28) = 0;
  *(v1 + 58) = 0;
  v1[8] = 0;
  v1[9] = 0;
  *(v1 + 79) = 0;
  v57[0] = 3;
  type metadata accessor for DisplayList.GraphicsRenderer();
  swift_allocObject();
  v1[11] = DisplayList.GraphicsRenderer.init(platformViewMode:)(v57);
  v1[18] = 0;
  *(v1 + 6) = 0u;
  *(v1 + 7) = 0u;
  *(v1 + 121) = 0u;
  v15 = v2 + *(*v2 + 248);
  *v15 = 0;
  v15[8] = 1;
  *(v15 + 2) = 0;
  v15[24] = 1;
  v16 = *(v4 + 80);
  v17 = *(*(v16 - 8) + 16);
  v18 = v2 + *(*v2 + 232);
  v52 = a1;
  v53 = v16;
  v17(v18, a1);
  EnvironmentValues.init()(&v58);
  static Locale.current.getter();
  v19 = *(v6 + 16);
  v19(v11, v14, v5);
  v20 = v58;
  v19(v8, v11, v5);
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA06LocaleF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(&v58, v8);

  v21 = *(v6 + 8);
  v21(v8, v5);
  v22 = v59;
  if (v59)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA06LocaleK033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Ttg5(v20, v58);
  }

  v21(v11, v5);
  v23 = (v21)(v14, v5);
  v25 = _CUIDefaultDisplayGamut(v23, v24);
  if (v25 > 1)
  {
    goto LABEL_15;
  }

  v26 = v25;
  v27 = v58;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA012DisplayGamutF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2B5(&v58, v26);

  if (v22)
  {
    v28 = v58;
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA012DisplayGamutK033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Ttg5(v27, v58);
  }

  else
  {

    v28 = v58;
  }

  v30 = v53;
  v29 = v54;
  v31 = v59;
  v32 = (v2 + *(*v2 + 240));
  *v32 = v28;
  v32[1] = v31;

  specialized static Update.begin()();
  type metadata accessor for ViewGraph();
  v57[0] = 17;
  v33 = *(v29 + 88);
  v34 = ViewGraph.__allocating_init<A>(rootViewType:requestedOutputs:)(v30, v57, v30, v33);
  v2[6] = v34;
  swift_beginAccess();
  type metadata accessor for ViewGraphFeatureBuffer._VTable<ImageRendererHostViewGraph>(0, v35, v36, v37);
  v39 = v38;
  v40 = UnsafeHeterogeneousBuffer.allocate(bytes:)(0x10);
  *v40 = v39;
  v40[1] = 16;
  v41 = *(v34 + 216);
  if (!v41)
  {
LABEL_16:
    __break(1u);
  }

  v42 = v40 - v41;
  if (v42 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v42 > 0x7FFFFFFF)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v43 = *(v34 + 228);
  v44 = __OFADD__(v43, 1);
  v45 = v43 + 1;
  if (v44)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  *(v34 + 228) = v45;
  swift_endAccess();

  ViewGraph.setRootView<A>(_:)(v52, v30, v33, v46, v47, v48, v49, v50);

  swift_beginAccess();
  v55 = v28;
  v56 = 0;

  AGGraphSetValue();

  ViewGraphRootValueUpdater.initializeViewGraph()();
  ImageRendererHost.updateSizeThatFitsObserver()();
  static Update.end()();

  return v2;
}

uint64_t _CUIDefaultDisplayGamut(uint64_t a1, uint64_t a2)
{
  if (_CUIDefaultDisplayGamut_once != -1)
  {
    _CUIDefaultDisplayGamut_cold_1();
  }

  return _CUIDefaultDisplayGamut_defaultGamut;
}

void type metadata accessor for ViewGraphFeatureBuffer._VTable<ImageRendererHostViewGraph>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!lazy cache variable for type metadata for ViewGraphFeatureBuffer._VTable<ImageRendererHostViewGraph>)
  {
    v4 = type metadata accessor for ViewGraphFeatureBuffer._VTable(0, &unk_1F00B0520, &protocol witness table for ImageRendererHostViewGraph, a4);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for ViewGraphFeatureBuffer._VTable<ImageRendererHostViewGraph>);
    }
  }
}

uint64_t ImageRendererHost.updateSizeThatFitsObserver()()
{
  v1 = *v0;
  v2 = v0 + *(*v0 + 248);
  v3 = *v2;
  v4 = v2[8];
  v5 = *(v2 + 2);
  v6 = v2[24];
  v7 = v0[6];
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  *(v9 + 16) = *(v1 + 80);
  *(v9 + 24) = *(v1 + 88);
  *(v9 + 32) = v8;
  *(v9 + 40) = v3;
  *(v9 + 48) = v4;
  *(v9 + 56) = v5;
  *(v9 + 64) = v6;
  swift_beginAccess();

  *(v7 + 352) = MEMORY[0x1E69E7CC8];
  type metadata accessor for ViewGraphGeometryObservers<SizeThatFitsMeasurer>.Observer(0);
  v10 = swift_allocObject();
  *(v10 + 16) = 0u;
  *(v10 + 32) = 0u;
  *(v10 + 48) = 2;
  *(v10 + 56) = partial apply for closure #1 in ImageRendererHost.updateSizeThatFitsObserver();
  *(v10 + 64) = v9;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v7 + 352);
  *(v7 + 352) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v10, v3, v4, v5, v6, isUniquelyReferenced_nonNull_native);
  *(v7 + 352) = v13;
  swift_endAccess();
}

uint64_t sub_18D0BA1F4()
{

  return swift_deallocObject();
}

uint64_t ImageRenderer.initializeRenderer()()
{
  v1 = *v0;
  v2 = v0[3];
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  v4[2] = *(v1 + 80);
  v4[3] = *(v1 + 88);
  v4[4] = v3;
  *(v2 + 32) = partial apply for closure #1 in ImageRenderer.initializeRenderer();
  *(v2 + 40) = v4;

  *(v2 + 80) = 1;
}

uint64_t sub_18D0BA308()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_18D0BA340()
{

  return swift_deallocObject();
}

void type metadata accessor for _ContiguousArrayStorage<NSRunLoopMode>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<NSRunLoopMode>)
  {
    type metadata accessor for NSRunLoopMode(255);
    v1 = type metadata accessor for _ContiguousArrayStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ContiguousArrayStorage<NSRunLoopMode>);
    }
  }
}

uint64_t specialized ImageRendererHost.cgImage.getter()
{
  result = *(v0 + 96);
  if (!result || *(v0 + 136) == 1)
  {
    ImageRendererHost.render(ifNewerThan:renderer:)(*(v0 + 128), 0, partial apply for closure #1 in ImageRendererHost.cgImage.getter, v0);
    *(v0 + 136) = 0;
    return *(v0 + 96);
  }

  return result;
}

void *ImageRendererHost.cgImage.getter()
{
  v0 = specialized ImageRendererHost.cgImage.getter();
  v1 = v0;
  return v0;
}

void *ImageRenderer.scale.setter(double a1)
{
  v2 = *(v1 + 32);
  *(v1 + 32) = a1;
  return ImageRenderer.currentScale.didset(v2);
}

void specialized static CTFontDescriptorRef.fontDescriptor(textStyle:design:weight:sizeCategory:legibilityWeight:)(uint64_t result, void *a2, uint64_t a3, char a4, char *a5, unsigned __int8 *a6)
{
  v8 = *a5;
  v9 = *a6;
  v10 = MEMORY[0x1E69E7CC8];
  if (!a2)
  {
    v17 = MEMORY[0x1E69E7CC8];
    if (a4)
    {
LABEL_5:
      if (*(v17 + 16))
      {
        v20 = *MEMORY[0x1E6965898];
        type metadata accessor for [CFStringRef : Any](0, &lazy cache variable for type metadata for [CFStringRef : Any], MEMORY[0x1E69E7CA0] + 8);
        v32 = v21;
        *&v31 = v17;
        outlined init with take of Any(&v31, v30);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v30, v20, isUniquelyReferenced_nonNull_native);
        if (v9 == 2)
        {
LABEL_8:
          v25 = *MEMORY[0x1E6965878];
          v32 = MEMORY[0x1E69E7668];
          LODWORD(v31) = 3;
          outlined init with take of Any(&v31, v30);
          v26 = swift_isUniquelyReferenced_nonNull_native();
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v30, v25, v26);
          LOBYTE(v31) = v8;
          v27 = specialized DynamicTypeSize.ctTextSize.getter();
          type metadata accessor for CFStringRef(0);
          lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef();
          v28 = v27;
          isa = Dictionary._bridgeToObjectiveC()().super.isa;

          CTFontDescriptorCreateWithTextStyleAndAttributes();

          return;
        }
      }

      else
      {

        if (v9 == 2)
        {
          goto LABEL_8;
        }
      }

      v23 = *MEMORY[0x1E69657F0];
      v32 = MEMORY[0x1E69E6530];
      *&v31 = v9 & 1;
      outlined init with take of Any(&v31, v30);
      v24 = swift_isUniquelyReferenced_nonNull_native();
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v30, v23, v24);
      goto LABEL_8;
    }

LABEL_4:
    v18 = *MEMORY[0x1E6965970];
    v32 = MEMORY[0x1E69E7DE0];
    *&v31 = a3;
    outlined init with take of Any(&v31, v30);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v30, v18, v19);
    goto LABEL_5;
  }

  v11 = *MEMORY[0x1E69658E0];
  if (*MEMORY[0x1E69658E0])
  {
    type metadata accessor for CFStringRef(0);
    v32 = v13;
    *&v31 = a2;
    outlined init with take of Any(&v31, v30);
    v14 = a2;
    v15 = v11;
    v16 = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v30, v15, v16);

    v17 = v10;
    if (a4)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  __break(1u);
}

void *specialized static DefaultFontDefinition.resolveTextStyleFont(textStyle:design:weight:in:)(char *a1, unsigned __int8 *a2, uint64_t a3, char a4, char *a5)
{
  LODWORD(v7) = *a2;
  v8 = *a5;
  v9 = a5[1];
  v17[1] = *a1;
  result = specialized Font.TextStyle.ctTextStyle.getter();
  v11 = result;
  if (v7 > 1)
  {
    if (v7 == 2)
    {
LABEL_9:
      v7 = *MEMORY[0x1E69658C8];
      if (!*MEMORY[0x1E69658C8])
      {
        __break(1u);
        goto LABEL_11;
      }

      goto LABEL_13;
    }

    if (v7 != 3)
    {
LABEL_11:
      v7 = 0;
LABEL_14:
      v17[0] = v8;
      v16 = v9;
      v13 = v11;
      specialized static CTFontDescriptorRef.fontDescriptor(textStyle:design:weight:sizeCategory:legibilityWeight:)(v13, v7, a3, a4 & 1, v17, &v16);
      v15 = v14;

      return v15;
    }

    v7 = *MEMORY[0x1E69658C0];
    if (*MEMORY[0x1E69658C0])
    {
LABEL_13:
      v12 = v7;
      goto LABEL_14;
    }

    __break(1u);
  }

  if (!v7)
  {
    v7 = *MEMORY[0x1E69658B8];
    if (*MEMORY[0x1E69658B8])
    {
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_9;
  }

  v7 = *MEMORY[0x1E69658D0];
  if (*MEMORY[0x1E69658D0])
  {
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for FontProvider.resolveDescriptor(in:) in conformance Font.TextStyleProvider(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v10 = *(a1 + 3);
  v11 = a1[5];
  v5 = v1[1];
  v6 = *(v1 + 1);
  v7 = v1[16];
  v13 = *v1;
  v12 = v5;
  v9[0] = v3;
  v9[1] = v2;
  v9[2] = v4;
  return (*(v4 + 8))(&v13, &v12, v6, v7, v9);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CFStringRef(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable(protocol conformance descriptor for CFStringRef, a3);

  return static _CFObject.== infix(_:_:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CFStringRef(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  Hasher.init(_seed:)();
  swift_getWitnessTable(a4, a2);
  _CFObject.hash(into:)();
  return Hasher._finalize()();
}

_OWORD *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      specialized _NativeDictionary.copy()();
      v8 = v16;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v13, a3 & 1);
    v8 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      type metadata accessor for CFStringRef(0);
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = (v18[7] + 32 * v8);
    __swift_destroy_boxed_opaque_existential_1(v19);

    return outlined init with take of Any(a1, v19);
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v8, a2, a1, v18);

    return a2;
  }
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), type metadata accessor for RBImageRendererProperty, specialized _NativeDictionary._insert(at:key:value:));
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), type metadata accessor for RBSymbolAnimationOptionKey, specialized _NativeDictionary._insert(at:key:value:));
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), type metadata accessor for RBDisplayListInterpolatorOptionKey, specialized _NativeDictionary._insert(at:key:value:));
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), const char *a6)
{
  v7 = -1 << *(v6 + 32);
  v8 = a2 & ~v7;
  if ((*(v6 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v12 = ~v7;
    a3(0);
    lazy protocol witness table accessor for type AGSubgraphRef and conformance AGSubgraphRef(a4, a5, a6);
    do
    {
      v13 = *(*(v6 + 48) + 8 * v8);
      v14 = static _CFObject.== infix(_:_:)();

      if (v14)
      {
        break;
      }

      v8 = (v8 + 1) & v12;
    }

    while (((*(v6 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  return v8;
}

{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10.n128_f64[0] = MEMORY[0x1EEE9AC00](v8);
  v12 = v22 - v11;
  v23 = v6;
  v13 = -1 << *(v6 + 32);
  v14 = a2 & ~v13;
  v22[0] = v6 + 64;
  if ((*(v6 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    do
    {
      v16(v12, *(v23 + 48) + v19 * v14, v8, v10);
      lazy protocol witness table accessor for type AGSubgraphRef and conformance AGSubgraphRef(v24, v25, v26);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v17 - 8))(v12, v8);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v22[0] + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

void lazy protocol witness table accessor for type AGSubgraphRef and conformance AGSubgraphRef(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  if (!*a1)
  {
    v5 = a2(255);
    swift_getWitnessTable(a3, v5);
    atomic_store(v6, a1);
  }
}

void type metadata accessor for _DictionaryStorage<CFStringRef, Any>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<CFStringRef, Any>)
  {
    type metadata accessor for CFStringRef(255);
    lazy protocol witness table accessor for type AGWeakAttribute and conformance AGWeakAttribute(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, type metadata accessor for CFStringRef, protocol conformance descriptor for CFStringRef);
    v1 = type metadata accessor for _DictionaryStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _DictionaryStorage<CFStringRef, Any>);
    }
  }
}

void lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef()
{
  if (!lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef)
  {
    type metadata accessor for CFStringRef(255);
    swift_getWitnessTable(protocol conformance descriptor for CFStringRef, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef);
  }
}

{
  if (!lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef)
  {
    type metadata accessor for CFStringRef(255);
    swift_getWitnessTable(protocol conformance descriptor for CFStringRef, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef);
  }
}

void type metadata accessor for DerivedValue<DerivedEnvironmentPropertyKey<EnvironmentValues.EffectiveFontKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for DerivedValue<DerivedEnvironmentPropertyKey<EnvironmentValues.EffectiveFontKey>>)
  {
    type metadata accessor for DerivedEnvironmentPropertyKey<EnvironmentValues.ReadableWidthKey>(255, &lazy cache variable for type metadata for DerivedEnvironmentPropertyKey<EnvironmentValues.EffectiveFontKey>, lazy protocol witness table accessor for type EnvironmentValues.EffectiveFontKey and conformance EnvironmentValues.EffectiveFontKey, &type metadata for EnvironmentValues.EffectiveFontKey);
    v3 = v2;
    lazy protocol witness table accessor for type DerivedEnvironmentPropertyKey<EnvironmentValues.EffectiveFontKey> and conformance DerivedEnvironmentPropertyKey<A>();
    v6 = type metadata accessor for DerivedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for DerivedValue<DerivedEnvironmentPropertyKey<EnvironmentValues.EffectiveFontKey>>);
    }
  }
}

Swift::Void __swiftcall ViewGraph.isHiddenForReuseDidChange()()
{
  v1 = v0;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    swift_beginAccess();
    if (*(v0 + 41) == 1)
    {
      swift_beginAccess();
      v4 = *(v0 + 448);
      v5 = *(v4 + 16);
      if (v5)
      {
        v56 = v4 + 32;

        swift_beginAccess();
        swift_beginAccess();
        v6 = 0;
        v55 = *MEMORY[0x1E698D3F8];
        v52 = v5;
        while (v6 < *(v4 + 16))
        {
          v7 = v56 + 24 * v6;
          v8 = *v7;
          v9 = *(v7 + 8);
          v10 = *(v7 + 16);
          if (swift_weakLoadStrong())
          {
            v11 = *(v3 + 72);
            v12 = *(v11 + 16);
            if (v12)
            {
              v13 = v11 + 48;
              while (*(v13 - 16) != v8)
              {
                v13 += 24;
                if (!--v12)
                {
                  goto LABEL_5;
                }
              }

              Attribute = AGWeakAttributeGetAttribute();
              if (Attribute != v55)
              {
                v54 = &v51;
                v58[0] = 0;
                MEMORY[0x1EEE9AC00](Attribute);
                *(&v51 - 4) = v8;
                *(&v51 - 3) = v9;
                *(&v51 - 4) = v10;
                *(&v51 - 1) = v58;
                v53 = v15;
                v17 = type metadata accessor for PreferenceCombiner(0, v8, v9, v16);
                MEMORY[0x1EEE9AC00](v17);
                *(&v51 - 4) = v18;
                *(&v51 - 3) = partial apply for closure #1 in removeValue #1 <A>(key:) in PreferenceBridge.removeValue(_:for:isInvalidating:);
                *(&v51 - 2) = (&v51 - 6);
                v5 = v52;
                AGGraphMutateAttribute();
                if (v58[0] == 1)
                {
                  v58[0] = 0;
                  GraphHost.graphInvalidation(from:)(v10);
                }
              }
            }

LABEL_5:
          }

          if (++v6 == v5)
          {

            goto LABEL_31;
          }
        }

        __break(1u);
LABEL_56:
        __break(1u);
        goto LABEL_57;
      }

LABEL_31:
      v34 = *(v0 + 56);
      swift_beginAccess();
      if (!swift_weakLoadStrong())
      {
        goto LABEL_42;
      }

      swift_beginAccess();
      v35 = AGWeakAttributeGetAttribute();
      if (v35 == *MEMORY[0x1E698D3F8] || (v58[0] = 0, MEMORY[0x1EEE9AC00](v35), *(&v51 - 2) = v58, *(&v51 - 2) = v34, MEMORY[0x1EEE9AC00](v36), *(&v51 - 2) = partial apply for closure #1 in PreferenceBridge.removeHostValues(for:isInvalidating:), *(&v51 - 1) = v37, AGGraphMutateAttribute(), (v58[0] & 1) == 0))
      {
LABEL_41:

LABEL_42:

        goto LABEL_43;
      }

      LOBYTE(v57[0]) = 0;
    }

    else
    {
      swift_beginAccess();
      v19 = *(v0 + 448);
      v20 = *(v19 + 16);
      if (v20)
      {
        v56 = v19 + 32;

        swift_beginAccess();
        swift_beginAccess();
        v21 = 0;
        v55 = *MEMORY[0x1E698D3F8];
        v52 = v20;
        while (v21 < *(v19 + 16))
        {
          v22 = v56 + 24 * v21;
          v23 = *v22;
          v24 = *(v22 + 8);
          v25 = *(v22 + 16);
          if (swift_weakLoadStrong())
          {
            v26 = *(v3 + 72);
            v27 = *(v26 + 16);
            if (v27)
            {
              v28 = v26 + 48;
              while (*(v28 - 16) != v23)
              {
                v28 += 24;
                if (!--v27)
                {
                  goto LABEL_19;
                }
              }

              v29 = AGWeakAttributeGetAttribute();
              if (v29 != v55)
              {
                v54 = &v51;
                MEMORY[0x1EEE9AC00](v29);
                *(&v51 - 4) = v23;
                *(&v51 - 3) = v24;
                *(&v51 - 4) = v25;
                v53 = v30;
                v32 = type metadata accessor for PreferenceCombiner(0, v23, v24, v31);
                MEMORY[0x1EEE9AC00](v32);
                *(&v51 - 4) = v33;
                *(&v51 - 3) = partial apply for closure #1 in addValue #1 <A>(key:) in PreferenceBridge.addValue(_:for:);
                *(&v51 - 2) = (&v51 - 6);
                v20 = v52;
                AGGraphMutateAttribute();
                v58[0] = 0;
                GraphHost.graphInvalidation(from:)(v25);
              }
            }

LABEL_19:
          }

          if (++v21 == v20)
          {

            goto LABEL_36;
          }
        }

        goto LABEL_56;
      }

LABEL_36:
      swift_beginAccess();
      if (static WeakAttribute.== infix(_:_:)())
      {
        goto LABEL_42;
      }

      v38 = *(v0 + 132);
      v34 = *(v0 + 56);
      swift_beginAccess();
      if (!swift_weakLoadStrong())
      {
        goto LABEL_42;
      }

      swift_beginAccess();
      v39 = AGWeakAttributeGetAttribute();
      if (v39 == *MEMORY[0x1E698D3F8])
      {
        goto LABEL_41;
      }

      MEMORY[0x1EEE9AC00](v39);
      *(&v51 - 4) = v34;
      *(&v51 - 12) = v38;
      MEMORY[0x1EEE9AC00](v40);
      *(&v51 - 2) = _s7SwiftUI16PreferenceBridgeC13addHostValues_3fory14AttributeGraph04WeakI0VyAA0cG0VG_AF0I0VyAA0C4KeysVGtFyAA0F19PreferencesCombinerVzXEfU_TA_0;
      *(&v51 - 1) = v41;
      AGGraphMutateAttribute();
      v58[0] = 0;
    }

    GraphHost.graphInvalidation(from:)(v34);
    goto LABEL_41;
  }

LABEL_43:
  swift_beginAccess();
  v42 = *(v0 + 228);
  if (v42)
  {
    v43 = *(v0 + 216);
    if (!v43)
    {
LABEL_57:
      __break(1u);
      return;
    }

    v44 = 0;
    v45 = v42 - 1;
    do
    {
      v48 = (v43 + v44);
      if (v45)
      {
        v44 += *(v48 + 2);
      }

      else
      {
        v44 = 0;
      }

      v46 = v45 | v44;
      v47 = *v48;
      v57[0] = v48;
      (*(v47 + 136))(v57, v1);
      --v45;
    }

    while (v46);
  }

  swift_beginAccess();
  if ((*(v1 + 128) & 1) != 0 || (swift_beginAccess(), (*(v1 + 41) & 1) == 0))
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v49 = *(v1 + 208);
      ObjectType = swift_getObjectType();
      (*(*(v49 + 8) + 16))(ObjectType);
      swift_unknownObjectRelease();
    }
  }
}

uint64_t static ViewGraphFeatureBuffer._VTable.isHiddenForReuseDidChange(elt:graph:)(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 176);
  _UnsafeHeterogeneousBuffer_Element.body<A>(as:)();
  return (*(*(v2 + 184) + 32))(a2, v4);
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC12derivedValue_3for0G0QzAC_xmtAA07DerivedC3KeyRzlFAA0i11EnvironmentcJ033_0CBA6217BE011883F496E97230B6CF8FLLVyAA0K6ValuesV013EffectiveFontJ033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(uint64_t a1)
{
  v3 = *(v1 + 16);

  os_unfair_lock_lock((v3 + 16));
  v4 = *(v3 + 24);
  if (!a1)
  {
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v3 + 56) = 1;
    v18 = a1;
    v19 = 0;

    v12 = specialized static EnvironmentValues.EffectiveFontKey.value(in:)(&v18);

    *&v17[0] = v12;
    goto LABEL_9;
  }

  if (v4 != *(a1 + 64))
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for DerivedEnvironmentPropertyKey<EnvironmentValues.ReadableWidthKey>(0, &lazy cache variable for type metadata for DerivedEnvironmentPropertyKey<EnvironmentValues.EffectiveFontKey>, lazy protocol witness table accessor for type EnvironmentValues.EffectiveFontKey and conformance EnvironmentValues.EffectiveFontKey, &type metadata for EnvironmentValues.EffectiveFontKey);
  v6 = v5;
  v7 = *(v3 + 40);
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v17);
    outlined init with take of AnyTrackedValue(v17, &v18);
    v10 = v20;
    v11 = v21;
    __swift_project_boxed_opaque_existential_1(&v18, v20);
    (v11[1])(v17, &type metadata for Font, v10, v11);
    __swift_destroy_boxed_opaque_existential_1(&v18);
  }

  else
  {
    v18 = a1;
    v19 = 0;

    v13 = specialized static EnvironmentValues.EffectiveFontKey.value(in:)(&v18);

    *&v17[0] = v13;
    type metadata accessor for DerivedValue<DerivedEnvironmentPropertyKey<EnvironmentValues.EffectiveFontKey>>(0);
    v20 = v14;
    v21 = &protocol witness table for DerivedValue<A>;
    v18 = v13;

    specialized Dictionary.subscript.setter(&v18, v6);
  }

LABEL_9:
  v15 = *&v17[0];
  os_unfair_lock_unlock((v3 + 16));

  return v15;
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA011DefaultFontF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(uint64_t *a1, uint64_t a2)
{
  result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA011DefaultFontS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(*a1);
  if (!result)
  {
    goto LABEL_7;
  }

  v5 = *(result + 72);
  if (!a2)
  {
    if (!v5)
    {
      return result;
    }

    goto LABEL_7;
  }

  if (!v5 || (v6 = *(*a2 + 112), v7 = , v8 = v6(v7), result = , (v8 & 1) == 0))
  {
LABEL_7:
    v9 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<DefaultFontKey>>(0);
    *(swift_allocObject() + 72) = a2;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultFontKey>, &type metadata for DefaultFontKey, &protocol witness table for DefaultFontKey, type metadata accessor for EnvironmentPropertyKey);
    v11 = v10;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v11, 0, v9);
  }

  return result;
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<DefaultFontKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<DefaultFontKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultFontKey>, &type metadata for DefaultFontKey, &protocol witness table for DefaultFontKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultFontKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<DefaultFontKey>>);
    }
  }
}

uint64_t EnvironmentValues.defaultForegroundStyle.setter(uint64_t a1, void (*a2)(uint64_t *, uint64_t, uint64_t *), void (*a3)(uint64_t, uint64_t))
{
  v7 = *v3;

  swift_retain_n();
  a2(v3, a1, &v9);

  if (v3[1])
  {
    a3(v7, *v3);
  }
}

void *key path getter for EnvironmentValues.dynamicTypeSize : EnvironmentValues@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  if (a1[1])
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA015DynamicTypeSizeI033_B498FA81088CF7FADFFFFFC897E05C74LLVG_Tt1g5(v3, &v6);

    v5 = v6;
  }

  else
  {
    result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA015DynamicTypeSizeS033_B498FA81088CF7FADFFFFFC897E05C74LLVG_Tt0g5(*a1);
    if (result)
    {
      v5 = *(result + 72);
    }

    else
    {
      v5 = 3;
    }
  }

  *a2 = v5;
  return result;
}

uint64_t key path getter for EnvironmentValues.lineLimit : EnvironmentValues@<X0>(void *a1@<X0>, uint64_t (*a2)(uint64_t)@<X3>, uint64_t (*a3)(void)@<X4>, uint64_t a4@<X8>, uint64_t a5@<X1>, uint64_t a6@<X2>)
{
  v7 = *a1;
  if (a1[1])
  {

    v9 = a2(v7);
    v11 = v10;
  }

  else
  {
    result = (a3)(*a1, a5, a6, a2);
    if (result)
    {
      v9 = *(result + 72);
      v11 = *(result + 80);
    }

    else
    {
      v9 = 0;
      v11 = 1;
    }
  }

  *a4 = v9;
  *(a4 + 8) = v11 & 1;
  return result;
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesV09LineLimitF033_32CC33FA2019BEDFCE31FB4066945274LLVG_Tt2g5(uint64_t *a1, uint64_t a2, char a3)
{
  result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesV09LineLimitS033_32CC33FA2019BEDFCE31FB4066945274LLVG_Tt0g5(*a1);
  if (!result)
  {
    goto LABEL_8;
  }

  v7 = *(result + 80);
  if (a3)
  {
    if (*(result + 80))
    {
      return result;
    }

LABEL_8:
    v8 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.LineLimitKey>>(0);
    v9 = swift_allocObject();
    *(v9 + 72) = a2;
    *(v9 + 80) = a3 & 1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.LineLimitKey>, &type metadata for EnvironmentValues.LineLimitKey, &protocol witness table for EnvironmentValues.LineLimitKey, type metadata accessor for EnvironmentPropertyKey);
    v11 = v10;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v11, 0, v8);
  }

  if (result[9] != a2)
  {
    v7 = 1;
  }

  if (v7)
  {
    goto LABEL_8;
  }

  return result;
}

uint64_t key path setter for EnvironmentValues.lineLimit : EnvironmentValues, serialized(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, uint64_t, uint64_t, uint64_t *), void (*a6)(uint64_t, uint64_t))
{
  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = *a2;
  swift_retain_n();
  a5(a2, v9, v10, &v13);

  if (a2[1])
  {
    a6(v11, *a2);
  }
}

uint64_t View.lineLimit(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  KeyPath = swift_getKeyPath();
  v10 = a1;
  v11 = v6 & 1;
  View.environment<A>(_:_:)(KeyPath, &v10, a3, a4);
}

uint64_t sub_18D0BC1D0@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.LineLimitKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.LineLimitKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.LineLimitKey>, &type metadata for EnvironmentValues.LineLimitKey, &protocol witness table for EnvironmentValues.LineLimitKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.LineLimitKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.LineLimitKey>>);
    }
  }
}

void *assignWithTake for ReusableInputStorage(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

void type metadata accessor for AttributedString.AttributeRunBoundaries?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t static CUIDesignLibraryCacheKey.Props.value(in:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v17 = *a1;
  v18 = v3;
  EnvironmentValues.colorScheme.getter(&v16);
  v5 = v16;
  if (v3)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA019ColorSchemeContrastI033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Tt1g5(v4, &v16);

    v6 = v16;

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA012DisplayGamutI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v4, &v15);

    v7 = v15;

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA018BackgroundMaterialI033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Tt1g5(v4, &v17);

    LOBYTE(v9) = v18;
  }

  else
  {
    v10 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA019ColorSchemeContrastS033_0E72AB1FBE33AED1E73FF06F3DA3A071LLVG_Tt0g5(v4);
    if (v10)
    {
      v6 = *(v10 + 72);
    }

    else
    {
      v6 = 0;
    }

    v11 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA012DisplayGamutS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v4);
    if (v11)
    {
      v7 = *(v11 + 72);
    }

    else
    {
      v7 = 0;
    }

    result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA018BackgroundMaterialS033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Tt0g5(v4);
    if (!result)
    {
      goto LABEL_12;
    }

    v9 = *(result + 80);
    v17 = *(result + 72);
    result = outlined copy of Material?(v17, v9);
  }

  if (v9 == 0xFF)
  {
LABEL_12:
    v12 = 0;
    goto LABEL_22;
  }

  outlined consume of Material?(v17, v9);
  if (v3)
  {

    v13 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA021AllowsVibrantBlendingI0VG_Tt1g5(v4);
  }

  else
  {
    result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA021AllowsVibrantBlendingS0VG_Tt0g5(v4);
    if (!result)
    {
      v12 = 1;
      goto LABEL_22;
    }

    v13 = *(result + 72);
  }

  v14 = 1;
  if ((v13 & 1) == 0)
  {
    v14 = 2;
  }

  if (v13 == 2)
  {
    v12 = 1;
  }

  else
  {
    v12 = v14;
  }

LABEL_22:
  *a2 = v5;
  *(a2 + 1) = v6;
  *(a2 + 2) = v7;
  *(a2 + 8) = v12;
  return result;
}

double specialized ColorProvider.resolveHDR(in:)@<D0>(void *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  if (a2)
  {

    v8 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA021SystemColorDefinitionI033_9E3352CE4697DF56A738786E16992848LLVG_Tt1g5(a1);
    v10 = v9;
  }

  else
  {
    v11 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA021SystemColorDefinitionS033_9E3352CE4697DF56A738786E16992848LLVG_Tt0g5(a1);
    if (v11)
    {
      v8 = v11[9];
      v10 = v11[10];
    }

    else
    {
      v10 = &protocol witness table for CoreUIDefaultSystemColorDefinition;
      v8 = &type metadata for CoreUIDefaultSystemColorDefinition;
    }
  }

  v14 = a3 + 13;
  v13[0] = a1;
  v13[1] = a2;
  (v10[1])(v15, &v14, v13, v8, v10);
  result = *v15;
  *a4 = v15[0];
  *(a4 + 16) = 2143289344;
  return result;
}

double protocol witness for static SystemColorDefinition.value(for:environment:) in conformance CoreUIDefaultSystemColorDefinition@<D0>(uint64_t a1@<X8>, _BYTE *a2@<X0>, uint64_t *a3@<X1>)
{
  specialized static CoreUIDefaultSystemColorDefinition.value(for:environment:)(a2, a3, &v5);
  result = *&v5;
  *a1 = v5;
  *(a1 + 16) = v6;
  return result;
}

double specialized static CoreUIDefaultSystemColorDefinition.value(for:environment:)@<D0>(_BYTE *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v4 = a2[1];
  switch(*a1)
  {
    case 1:
      v11 = *a2;
      v12 = v4;
      v6 = 1;
      goto LABEL_23;
    case 2:
      v11 = *a2;
      v12 = v4;
      v6 = 2;
      goto LABEL_23;
    case 3:
      v11 = *a2;
      v12 = v4;
      v6 = 3;
      goto LABEL_23;
    case 4:
      v11 = *a2;
      v12 = v4;
      v6 = 4;
      goto LABEL_23;
    case 5:
      v11 = *a2;
      v12 = v4;
      v6 = 5;
      goto LABEL_23;
    case 6:
      v11 = *a2;
      v12 = v4;
      v6 = 6;
      goto LABEL_23;
    case 7:
      v11 = *a2;
      v12 = v4;
      v6 = 7;
      goto LABEL_23;
    case 8:
      v11 = *a2;
      v12 = v4;
      v6 = 8;
      goto LABEL_23;
    case 9:
      v11 = *a2;
      v12 = v4;
      v6 = 9;
      goto LABEL_23;
    case 0xA:
      v11 = *a2;
      v12 = v4;
      v6 = 10;
      goto LABEL_23;
    case 0xB:
      v11 = *a2;
      v12 = v4;
      v6 = 14;
      goto LABEL_23;
    case 0xC:
      v11 = *a2;
      v12 = v4;
      v6 = 13;
      goto LABEL_23;
    case 0xD:
      v11 = *a2;
      v12 = v4;
      v6 = 15;
      goto LABEL_23;
    case 0xE:
      v11 = *a2;
      v12 = v4;
      v6 = 16;
      goto LABEL_23;
    case 0xF:
      v11 = *a2;
      v12 = v4;
      v6 = 17;
      goto LABEL_23;
    case 0x10:
      v11 = *a2;
      v12 = v4;
      v6 = 18;
      goto LABEL_23;
    case 0x11:
      v11 = *a2;
      v12 = v4;
      v6 = 19;
      goto LABEL_23;
    case 0x12:
      v7 = 18;
      goto LABEL_26;
    case 0x13:
      v7 = 19;
      goto LABEL_26;
    case 0x14:
      v7 = 20;
      goto LABEL_26;
    case 0x15:
      v7 = 21;
LABEL_26:
      v10 = v7;
      v11 = v5;
      v12 = v4;
      specialized static DefaultSystemColorDefinition_PhoneTV.value(for:environment:)(&v10, &v11, &v13);
      break;
    default:
      v11 = *a2;
      v12 = v4;
      v6 = 0;
LABEL_23:
      specialized static CoreUIDefaultSystemColorDefinition.value(named:in:)(v6, &v11, &v13);
      break;
  }

  result = *&v13;
  v9 = v14;
  *a3 = v13;
  *(a3 + 16) = v9;
  return result;
}

float specialized static CoreUIDefaultSystemColorDefinition.value(named:in:)@<S0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  if (a2[1])
  {

    _s7SwiftUI12PropertyListV7TrackerC12derivedValue_3for0G0QzAC_xmtAA07DerivedC3KeyRzlFAA0i11EnvironmentcJ033_0CBA6217BE011883F496E97230B6CF8FLLVyAA021CUIDesignLibraryCacheJ0V5PropsVG_Tt1g5(v5, &v11);
  }

  else
  {
    v14 = v5;

    static CUIDesignLibraryCacheKey.Props.value(in:)(&v14, &v11);
  }

  v6 = v11;
  v7 = BYTE1(v11);
  v8 = BYTE2(v11);
  v9 = v12;
  if (v12 == 1)
  {
    v9 = 2;
  }

  v11 = a1;
  LOBYTE(v12) = v6;
  BYTE1(v12) = v7;
  BYTE2(v12) = v8;
  v13 = v9;
  CUIDesignLibraryCacheKey.fetch()(&v14);
  result = v15;
  *a3 = v14;
  *(a3 + 16) = result;
  return result;
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC12derivedValue_3for0G0QzAC_xmtAA07DerivedC3KeyRzlFAA0i11EnvironmentcJ033_0CBA6217BE011883F496E97230B6CF8FLLVyAA021CUIDesignLibraryCacheJ0V5PropsVG_Tt1g5@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = *(v2 + 16);

  os_unfair_lock_lock((v5 + 16));
  v6 = *(v5 + 24);
  if (!a1)
  {
    if (!v6)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 56) = 1;
    v21 = a1;
    v22 = 0;

    static CUIDesignLibraryCacheKey.Props.value(in:)(&v21, a2);

    goto LABEL_9;
  }

  if (v6 != *(a1 + 64))
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for DerivedEnvironmentPropertyKey<EnvironmentValues.ReadableWidthKey>(0, &lazy cache variable for type metadata for DerivedEnvironmentPropertyKey<CUIDesignLibraryCacheKey.Props>, lazy protocol witness table accessor for type CUIDesignLibraryCacheKey.Props and conformance CUIDesignLibraryCacheKey.Props, &type metadata for CUIDesignLibraryCacheKey.Props);
  v8 = v7;
  v9 = *(v5 + 40);
  if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v20);
    outlined init with take of AnyTrackedValue(v20, &v21);
    v12 = v23;
    v13 = v24;
    __swift_project_boxed_opaque_existential_1(&v21, v23);
    (v13[1])(&type metadata for CUIDesignLibraryCacheKey.Props, v12, v13);
    __swift_destroy_boxed_opaque_existential_1(&v21);
  }

  else
  {
    v21 = a1;
    v22 = 0;

    static CUIDesignLibraryCacheKey.Props.value(in:)(&v21, a2);

    v14 = *a2;
    v15 = a2[1];
    v16 = a2[2];
    v17 = *(a2 + 1);
    type metadata accessor for DerivedValue<DerivedEnvironmentPropertyKey<CUIDesignLibraryCacheKey.Props>>(0);
    v23 = v18;
    v24 = &protocol witness table for DerivedValue<A>;
    LOBYTE(v21) = v14;
    BYTE1(v21) = v15;
    BYTE2(v21) = v16;
    v22 = v17;
    specialized Dictionary.subscript.setter(&v21, v8);
  }

LABEL_9:
  os_unfair_lock_unlock((v5 + 16));
}

void type metadata accessor for DerivedValue<DerivedEnvironmentPropertyKey<CUIDesignLibraryCacheKey.Props>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for DerivedValue<DerivedEnvironmentPropertyKey<CUIDesignLibraryCacheKey.Props>>)
  {
    type metadata accessor for DerivedEnvironmentPropertyKey<EnvironmentValues.ReadableWidthKey>(255, &lazy cache variable for type metadata for DerivedEnvironmentPropertyKey<CUIDesignLibraryCacheKey.Props>, lazy protocol witness table accessor for type CUIDesignLibraryCacheKey.Props and conformance CUIDesignLibraryCacheKey.Props, &type metadata for CUIDesignLibraryCacheKey.Props);
    v3 = v2;
    lazy protocol witness table accessor for type DerivedEnvironmentPropertyKey<CUIDesignLibraryCacheKey.Props> and conformance DerivedEnvironmentPropertyKey<A>();
    v6 = type metadata accessor for DerivedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for DerivedValue<DerivedEnvironmentPropertyKey<CUIDesignLibraryCacheKey.Props>>);
    }
  }
}

void SystemColorType.apply(color:to:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  if (one-time initialization token for v3 != -1)
  {
    swift_once();
  }

  v6 = static Semantics.v3;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (static Semantics.forced < v6)
  {
    goto LABEL_16;
  }

  if ((v5 - 13) < 5)
  {
    LOBYTE(v21) = v5 - 13;
    v22 = a1;

    LegacyContentStyle._apply(to:)(a2);

    return;
  }

  v7 = *(a2 + 48);
  if (*(a2 + 56))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA018BackgroundMaterialI033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Tt1g5(v7, &v21);

    v9 = v21;
    v8 = v22;
    goto LABEL_15;
  }

  v10 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA018BackgroundMaterialS033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Tt0g5(*(a2 + 48));
  if (!v10)
  {
LABEL_16:
    specialized ColorProvider._apply(color:to:)(a1, a2, v5);
    return;
  }

  v9 = v10[9];
  v8 = v10[10];
  outlined copy of Material?(v9, v8);
LABEL_15:
  if (v8 == 0xFF)
  {
    goto LABEL_16;
  }

  v12 = *(a2 + 48);
  v11 = *(a2 + 56);
  v21 = v12;
  v22 = v11;
  v18 = v9;
  v19 = v8;
  v20 = HIDWORD(v8);

  v13 = EnvironmentValues.materialProvider(for:)(&v18);

  if (!v13)
  {
    if (v11)
    {

      v14 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA017VibrantColorStyleI033_8CCD408021CD268DDD1874045F6AD3D9LLVG_Tt1g5(v12);
      v16 = v15;

      if (!v14)
      {
LABEL_26:
        outlined consume of Material?(v9, v8);
        goto LABEL_16;
      }
    }

    else
    {
      v17 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA017VibrantColorStyleS033_8CCD408021CD268DDD1874045F6AD3D9LLVG_Tt0g5(v12);
      if (!v17)
      {
        goto LABEL_26;
      }

      v14 = v17[9];
      v16 = v17[10];
      if (!v14)
      {
        goto LABEL_26;
      }
    }

    LOBYTE(v18) = v5;
    v21 = v9;
    LOBYTE(v22) = v8;
    HIDWORD(v22) = HIDWORD(v8);
    (*(v16 + 8))(&v18, a1, &v21, a2, v14, v16);
    goto LABEL_25;
  }

  (*(*v13 + 104))(a1, a2);

LABEL_25:
  outlined consume of Material?(v9, v8);
}

void LegacyContentStyle._apply(to:)(uint64_t a1)
{
  v3 = *v1;
  if (*(a1 + 24) != 5 || (*a1 == 1 ? (v4 = *(a1 + 8) == 0) : (v4 = 0), !v4))
  {
    v5 = *(a1 + 48);
    if (*(a1 + 56))
    {

      _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA018BackgroundMaterialI033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Tt1g5(v5, &v12);

      v6 = v12;
      v7 = v13;
    }

    else
    {
      v8 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA018BackgroundMaterialS033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Tt0g5(*(a1 + 48));
      if (!v8)
      {
LABEL_11:
        if (v3)
        {

          specialized OffsetShapeStyle._apply(to:)(a1, v3);
        }

        else
        {
          SystemColorsStyle._apply(to:)(a1);
        }

        return;
      }

      v6 = v8[9];
      v7 = v8[10];
      outlined copy of Material?(v6, v7);
    }

    if (v7 != 0xFF)
    {
      v12 = v6;
      LOBYTE(v13) = v7;
      HIDWORD(v13) = HIDWORD(v7);
      if (v3)
      {
        outlined copy of Material.ID(v6, v7);
        specialized OffsetShapeStyle._apply(to:)(a1, v6, v7 & 0xFFFFFFFF000000FFLL, v3);
        outlined consume of Material?(v6, v7);
        outlined consume of Material.ID(v6, v7);
      }

      else
      {
        ForegroundMaterialStyle._apply(to:)(a1);
        outlined consume of Material?(v6, v7);
      }

      return;
    }

    goto LABEL_11;
  }

  if (one-time initialization token for sharedPrimary != -1)
  {
    swift_once();
  }

  v9 = static LegacyContentStyle.sharedPrimary;
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);

  outlined consume of _ShapeStyle_Shape.Result(v10, v11);
  *(a1 + 32) = v9;
  *(a1 + 40) = 2;
}

void CUIDesignLibraryCacheKey.fetch()(uint64_t a1@<X8>)
{
  v52[1] = *MEMORY[0x1E69E9840];
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 9);
  v6 = *(v1 + 10);
  v7 = *(v1 + 16);
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&static CUIDesignLibraryCacheKey.cache);
  v8 = off_1ED534080;
  if (*(off_1ED534080 + 2) && (!v5 ? (v9 = 0) : (v9 = 256), (v10 = v9 | v4, !v6) ? (v11 = 0) : (v11 = 0x10000), v12 = specialized __RawDictionaryStorage.find<A>(_:)(v3, v10 | v11, v7), (v13 & 1) != 0))
  {
    v14 = v8[7] + 24 * v12;
    v43 = *v14;
    v15 = *(v14 + 16);
    v16 = *(v14 + 20);
    os_unfair_lock_unlock(&static CUIDesignLibraryCacheKey.cache);
    if (v16 != 21)
    {
      *a1 = v43;
      *(a1 + 16) = v15;
      *(a1 + 20) = v16;
      return;
    }
  }

  else
  {
    os_unfair_lock_unlock(&static CUIDesignLibraryCacheKey.cache);
  }

  v51 = v6;
  v52[0] = 0;
  *v47 = v3;
  *&v47[16] = 0;
  v48 = v4;
  v49 = v5;
  v50 = v7;
  v44 = v7;
  v17 = [objc_opt_self() colorWithTraits:v47 error:v52];
  v45 = v3;
  v46 = a1;
  if (v17)
  {
    v18 = v17;
    v19 = v52[0];
    v20 = [v18 cgColor];
    v21 = specialized Color.Resolved.init(failableCGColor:)(v20);
    if (v23)
    {

      v24 = 0;
      LODWORD(v25) = 0;
      v26 = 0;
      LODWORD(v27) = 0;
      v28 = NAN;
    }

    else
    {
      v24 = v21;
      v26 = v22;
      v25 = HIDWORD(v21);
      v27 = HIDWORD(v22);
      CGColorGetContentHeadroom();
      v28 = v37;

      if (v28 == 0.0)
      {
        v28 = NAN;
      }
    }

    v38 = [v18 blendMode];

    BlendMode.init(_:)(v38);
    v36 = v47[0];
  }

  else
  {
    v29 = v52[0];
    v30 = _convertNSErrorToError(_:)();

    swift_willThrow();
    type metadata accessor for _ContiguousArrayStorage<Any>();
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_18DDA6EB0;
    *v47 = 0;
    *&v47[8] = 0xE000000000000000;
    _StringGuts.grow(_:)(38);

    *v47 = 0xD000000000000056;
    *&v47[8] = 0x800000018DD7F380;
    v32 = StaticString.description.getter();
    MEMORY[0x193ABEDD0](v32);

    MEMORY[0x193ABEDD0](58, 0xE100000000000000);
    v52[0] = 84;
    v33 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x193ABEDD0](v33);

    MEMORY[0x193ABEDD0](0xD00000000000001CLL, 0x800000018DD77470);
    v35 = *&v47[8];
    v34 = *v47;
    *(v31 + 56) = MEMORY[0x1E69E6158];
    *(v31 + 32) = __PAIR128__(v35, v34);
    print(_:separator:terminator:)();

    v24 = 0;
    LODWORD(v25) = 0;
    v26 = 0;
    LODWORD(v27) = 0;
    v36 = 0;
    v28 = NAN;
  }

  *v47 = v24;
  *&v47[4] = v25;
  *&v47[8] = v26;
  *&v47[12] = v27;
  *&v47[16] = v28;
  v47[20] = v36;
  os_unfair_lock_lock(&static CUIDesignLibraryCacheKey.cache);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v52[0] = off_1ED534080;
  off_1ED534080 = 0x8000000000000000;
  if (v5)
  {
    v40 = 256;
  }

  else
  {
    v40 = 0;
  }

  v41 = v40 | v4;
  if (v6)
  {
    v42 = 0x10000;
  }

  else
  {
    v42 = 0;
  }

  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v47, v45, v41 | v42, v44, isUniquelyReferenced_nonNull_native);
  off_1ED534080 = v52[0];

  os_unfair_lock_unlock(&static CUIDesignLibraryCacheKey.cache);
  *v46 = *v47;
  *(v46 + 13) = *&v47[13];
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, unsigned int a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](a1);
  MEMORY[0x193AC11A0](a2 & 1);
  MEMORY[0x193AC11A0]((a2 >> 8) & 1);
  MEMORY[0x193AC11A0](HIWORD(a2) & 1);
  MEMORY[0x193AC11A0](a3);
  v6 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2 & 0x10101, a3, v6);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v6 = -1 << *(v4 + 32);
  result = a4 & ~v6;
  if ((*(v4 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v8 = ~v6;
    do
    {
      v9 = *(v4 + 48) + 24 * result;
      if (!((*v9 != a1) | (*(v9 + 8) ^ a2) & 1 | (*(v9 + 9) ^ ((a2 & 0x100) >> 8) | *(v9 + 10) ^ ((a2 & 0x10000u) >> 16)) & 1 | (*(v9 + 16) != a3)))
      {
        break;
      }

      result = (result + 1) & v8;
    }

    while (((*(v4 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

objc_class *CorePlatformColorForRGBA(int a1, double a2, double a3, double a4, double a5)
{
  result = CoreColorClass(a1);
  if (result)
  {
    v10 = [result alloc];

    return [v10 initWithRed:a2 green:a3 blue:a4 alpha:a5];
  }

  return result;
}

objc_class *specialized static CoreColor.platformColor(resolvedColor:)(float a1, float a2, float a3, float a4)
{
  v8 = -a1;
  if (a1 > 0.0)
  {
    v8 = a1;
  }

  if (v8 <= 0.0031308)
  {
    v9 = v8 * 12.92;
  }

  else
  {
    v9 = 1.0;
    if (v8 != 1.0)
    {
      v9 = (powf(v8, 0.41667) * 1.055) + -0.055;
    }
  }

  v10 = -a2;
  if (a2 > 0.0)
  {
    v10 = a2;
  }

  if (v10 <= 0.0031308)
  {
    v11 = v10 * 12.92;
  }

  else
  {
    v11 = 1.0;
    if (v10 != 1.0)
    {
      v11 = (powf(v10, 0.41667) * 1.055) + -0.055;
    }
  }

  v12 = -a3;
  if (a3 > 0.0)
  {
    v12 = a3;
  }

  if (v12 <= 0.0031308)
  {
    v13 = v12 * 12.92;
  }

  else
  {
    v13 = 1.0;
    if (v12 != 1.0)
    {
      v13 = (powf(v12, 0.41667) * 1.055) + -0.055;
    }
  }

  if (a2 <= 0.0)
  {
    v14 = -v11;
  }

  else
  {
    v14 = v11;
  }

  v15 = -v9;
  if (a1 > 0.0)
  {
    v15 = v9;
  }

  v16 = -v13;
  if (a3 > 0.0)
  {
    v16 = v13;
  }

  v17 = v15;

  return CorePlatformColorForRGBA(0, v17, v14, v16, a4);
}

objc_class *closure #1 in variable initialization expression of static Color.Resolved.cache@<X0>(float *a1@<X0>, objc_class **a2@<X8>)
{
  result = specialized static CoreColor.platformColor(resolvedColor:)(*a1, a1[1], a1[2], a1[3]);
  if (result)
  {
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t FontBox.resolveDescriptor(in:)(_OWORD *a1)
{
  v2 = *v1;
  v3 = a1[1];
  v5[0] = *a1;
  v5[1] = v3;
  v5[2] = a1[2];
  return (*(*(v2 + 152) + 32))(v5, *(v2 + 144));
}

uint64_t outlined destroy of ResolvableTextSegmentAttribute.Value?(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void closure #1 in variable initialization expression of static Font.FontCache.shared(uint64_t *a1@<X0>, CTFontRef *a2@<X8>)
{
  v3 = *(a1 + 2);
  v21 = *(a1 + 1);
  v22 = v3;
  v5 = *(a1 + 1);
  v4 = *(a1 + 2);
  v23 = *(a1 + 3);
  v6 = *a1;
  v7 = a1[1];
  v17 = v5;
  v18 = v4;
  v19 = *(a1 + 3);
  v8 = (*(*v6 + 96))(&v17);
  v20 = v8;
  if (!(v7 >> 62))
  {
    v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_10:
    v13 = CTFontCreateWithFontDescriptor(v8, 0.0, 0);

    *a2 = v13;
    return;
  }

  v9 = __CocoaSet.count.getter();
  if (!v9)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v9 >= 1)
  {
    v10 = 0;
    do
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x193AC03C0](v10, v7);
      }

      else
      {
        v11 = *(v7 + 8 * v10 + 32);
      }

      ++v10;
      v14 = v21;
      v15 = v22;
      v16 = v23;
      v12 = *(*v11 + 80);
      outlined init with copy of Font.Context(&v21, &v17);
      v12(&v20, &v14);

      v17 = v14;
      v18 = v15;
      v19 = v16;
      outlined destroy of Font.Context(&v17);
    }

    while (v9 != v10);
    v8 = v20;
    goto LABEL_10;
  }

  __break(1u);
}

uint64_t destroy for ObjectCache.Item(unsigned __int16 *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(a2 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v5 + 64);
  v11 = *(v8 + 80);
  v12 = ~v11;
  v18 = v8;
  if (v9 | v6)
  {
    if (v6 >= v9)
    {
      result = (*(v5 + 48))(a1);
      if (result)
      {
        return result;
      }
    }

    else
    {
      result = (*(v8 + 48))((((a1 + v10 + 7) & 0xFFFFFFFFFFFFFFF8) + v11 + 8) & v12, v9, v7);
      if (result)
      {
        return result;
      }
    }

    goto LABEL_21;
  }

  v14 = ((v11 + ((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v11) + *(v8 + 64);
  if (!*(a1 + v14))
  {
    goto LABEL_21;
  }

  v15 = (*(a1 + v14) - 1) << (8 * v14);
  if (v14 > 3)
  {
    v15 = 0;
  }

  if (v14)
  {
    if (v14 > 3)
    {
      LODWORD(v14) = 4;
    }

    if (v14 > 2)
    {
      if (v14 == 3)
      {
        LODWORD(v14) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v14) = *a1;
      }
    }

    else if (v14 == 1)
    {
      LODWORD(v14) = *a1;
    }

    else
    {
      LODWORD(v14) = *a1;
    }
  }

  v16 = v14 | v15;
  result = (v16 + 1);
  if (v16 == -1)
  {
LABEL_21:
    (*(v5 + 8))(a1, v4);
    v17 = *(v18 + 8);

    return v17((((a1 + v10 + 7) & 0xFFFFFFFFFFFFFFF8) + v11 + 8) & v12, v7);
  }

  return result;
}

void specialized ColorProvider._apply(color:to:)(uint64_t result, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t))
{
  v10 = *(a2 + 24);
  if (v10 <= 2)
  {
    v53 = v9;
    v54 = v8;
    v55 = v7;
    v56 = v6;
    v57 = v4;
    v58 = v5;
    v13 = *a2;
    if (v10)
    {
      if (v10 == 1)
      {
        v14 = *(a2 + 8);
        if (v14 == *(a2 + 16))
        {
          return;
        }

        v15 = *(a2 + 56);

        a4(&v49, v18, v15, a3);

        v19 = v50;
        v20 = v51;
        v21 = v52;
        v22 = *(a2 + 56);
        v41 = *(a2 + 48);
        v42 = v22;
        v23 = *(*result + 168);

        v24 = v23(v14, &v41);

        v41 = v49;
        LODWORD(v42) = v19;
        *(&v42 + 1) = v20 * v24;
        v43 = v21;
        v44 = 0;
        v45 = 1065353216;
        v46 = 0;
        v47 = -1;
        v25 = MEMORY[0x1E69E7CC0];
        v48 = MEMORY[0x1E69E7CC0];
        v40 = v13;
        if (*(a2 + 40) == 1)
        {
          v25 = *(a2 + 32);

          outlined consume of _ShapeStyle_Shape.Result(v26, 1u);
          *(a2 + 32) = 0;
          *(a2 + 40) = 5;
        }

        _ShapeStyle_Pack.subscript.setter(&v41, &v40, v14);
        outlined consume of _ShapeStyle_Shape.Result(*(a2 + 32), *(a2 + 40));
        *(a2 + 32) = v25;
        v27 = 1;
      }

      else
      {
        v34 = result;
        if (v13 > 0)
        {
          v35 = *(a2 + 56);
          v41 = *(a2 + 48);
          v42 = v35;
          v36 = *(*result + 168);

          v37 = v36(v13, &v41);

          type metadata accessor for KeyedEncodingContainer<SystemColorType.QuaternaryFillCodingKeys>(0, &lazy cache variable for type metadata for ColorBox<Color.OpacityColor>, lazy protocol witness table accessor for type Color.OpacityColor and conformance Color.OpacityColor, &type metadata for Color.OpacityColor, type metadata accessor for ColorBox);
          v34 = swift_allocObject();
          *(v34 + 16) = result;
          *(v34 + 24) = v37;
        }

        v38 = *(a2 + 32);
        v39 = *(a2 + 40);

        outlined consume of _ShapeStyle_Shape.Result(v38, v39);
        *(a2 + 32) = v34;
        v27 = 3;
      }

      *(a2 + 40) = v27;
    }

    else
    {
      v28 = result;
      if (v13 > 0)
      {
        v29 = *(a2 + 56);
        v41 = *(a2 + 48);
        v42 = v29;
        v30 = *(*result + 168);

        v31 = v30(v13, &v41);

        type metadata accessor for KeyedEncodingContainer<SystemColorType.QuaternaryFillCodingKeys>(0, &lazy cache variable for type metadata for ColorBox<Color.OpacityColor>, lazy protocol witness table accessor for type Color.OpacityColor and conformance Color.OpacityColor, &type metadata for Color.OpacityColor, type metadata accessor for ColorBox);
        v28 = swift_allocObject();
        *(v28 + 16) = result;
        *(v28 + 24) = v31;
      }

      v32 = *(a2 + 32);
      v33 = *(a2 + 40);

      outlined consume of _ShapeStyle_Shape.Result(v32, v33);
      *(a2 + 32) = v28;
      *(a2 + 40) = 0;
    }
  }
}

void specialized ColorProvider._apply(color:to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  specialized ColorProvider._apply(color:to:)(a1, a2, a3, specialized PlatformColorProvider.resolveHDR(in:));
}

{
  v9 = *(a2 + 24);
  if (v9 <= 2)
  {
    v48 = v8;
    v49 = v7;
    v50 = v6;
    v51 = v5;
    v52 = v3;
    v53 = v4;
    v11 = *a2;
    if (v9)
    {
      if (v9 == 1)
      {
        v12 = *(a2 + 8);
        if (v12 == *(a2 + 16))
        {
          return;
        }

        v41 = *(a2 + 48);
        v14 = (*(*a3 + 112))(&v41);
        v17 = (v16 * 0.0722) + ((v14 * 0.2126) + (v15 * 0.7152));
        v19 = v18 * 0.8;
        v20 = *(a2 + 56);
        *&v41 = *(a2 + 48);
        *(&v41 + 1) = v20;
        v21 = *(*a1 + 168);

        v22 = v21(v12, &v41);

        *&v41 = v17;
        *(&v41 + 1) = v17;
        *(&v41 + 2) = v17;
        *(&v41 + 3) = v19 * v22;
        v42 = 2143289344;
        v43 = 0;
        v44 = 1065353216;
        v45 = 0;
        v46 = -1;
        v23 = MEMORY[0x1E69E7CC0];
        v47 = MEMORY[0x1E69E7CC0];
        v40 = v11;
        if (*(a2 + 40) == 1)
        {
          v23 = *(a2 + 32);

          outlined consume of _ShapeStyle_Shape.Result(v24, 1u);
          *(a2 + 32) = 0;
          *(a2 + 40) = 5;
        }

        _ShapeStyle_Pack.subscript.setter(&v41, &v40, v12);
        outlined consume of _ShapeStyle_Shape.Result(*(a2 + 32), *(a2 + 40));
        *(a2 + 32) = v23;
        v25 = 1;
      }

      else
      {
        v33 = a1;
        if (v11 >= 1)
        {
          v34 = *(a2 + 56);
          *&v41 = *(a2 + 48);
          *(&v41 + 1) = v34;
          v35 = *(*a1 + 168);

          v37 = v35(v11, &v41);

          type metadata accessor for KeyedEncodingContainer<SystemColorType.QuaternaryFillCodingKeys>(0, &lazy cache variable for type metadata for ColorBox<Color.OpacityColor>, lazy protocol witness table accessor for type Color.OpacityColor and conformance Color.OpacityColor, &type metadata for Color.OpacityColor, type metadata accessor for ColorBox);
          v33 = swift_allocObject();
          *(v33 + 16) = a1;
          *(v33 + 24) = v37;
        }

        v38 = *(a2 + 32);
        v39 = *(a2 + 40);

        outlined consume of _ShapeStyle_Shape.Result(v38, v39);
        *(a2 + 32) = v33;
        v25 = 3;
      }

      *(a2 + 40) = v25;
    }

    else
    {
      v26 = a1;
      if (v11 >= 1)
      {
        v27 = *(a2 + 56);
        *&v41 = *(a2 + 48);
        *(&v41 + 1) = v27;
        v28 = *(*a1 + 168);

        v30 = v28(v11, &v41);

        type metadata accessor for KeyedEncodingContainer<SystemColorType.QuaternaryFillCodingKeys>(0, &lazy cache variable for type metadata for ColorBox<Color.OpacityColor>, lazy protocol witness table accessor for type Color.OpacityColor and conformance Color.OpacityColor, &type metadata for Color.OpacityColor, type metadata accessor for ColorBox);
        v26 = swift_allocObject();
        *(v26 + 16) = a1;
        *(v26 + 24) = v30;
      }

      v31 = *(a2 + 32);
      v32 = *(a2 + 40);

      outlined consume of _ShapeStyle_Shape.Result(v31, v32);
      *(a2 + 32) = v26;
      *(a2 + 40) = 0;
    }
  }
}

{
  specialized ColorProvider._apply(color:to:)(a1, a2, a3, specialized PlatformColorProvider.resolveHDR(in:));
}

uint64_t key path getter for EnvironmentValues.imageScale : EnvironmentValues@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  if (a1[1])
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA010ImageScaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v3, &v6);

    v5 = v6;
  }

  else
  {
    result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA010ImageScaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(*a1);
    if (result)
    {
      v5 = *(result + 72);
    }

    else
    {
      v5 = 1;
    }
  }

  *a2 = v5;
  return result;
}

void *_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA010ImageScaleF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2B5(uint64_t *a1, unsigned __int8 a2)
{
  result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA010ImageScaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(*a1);
  if (!result || *(result + 72) != a2)
  {
    v5 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<ImageScaleKey>>(0);
    *(swift_allocObject() + 72) = a2;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ImageScaleKey>, &type metadata for ImageScaleKey, &protocol witness table for ImageScaleKey, type metadata accessor for EnvironmentPropertyKey);
    v7 = v6;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v7, 0, v5);
  }

  return result;
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<ImageScaleKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<ImageScaleKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<ImageScaleKey>, &type metadata for ImageScaleKey, &protocol witness table for ImageScaleKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ImageScaleKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<ImageScaleKey>>);
    }
  }
}

uint64_t *initializeBufferWithCopyOfBuffer for SecondaryLookupTrackedValue(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 80);
  if (v7 <= 7 && *(*(AssociatedTypeWitness - 8) + 64) <= 0x18uLL && (*(v6 + 80) & 0x100000) == 0)
  {
    (*(v6 + 16))(a1, a2, AssociatedTypeWitness);
  }

  else
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + ((v7 + 16) & ~v7));
  }

  return a1;
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA013AppearsActiveI0VG_Tt1g5(uint64_t a1)
{
  v3 = *(v1 + 16);

  os_unfair_lock_lock((v3 + 16));
  v4 = *(v3 + 24);
  if (!a1)
  {
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v3 + 56) = 1;
    LOBYTE(v14[0]) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA013AppearsActiveF0VG_Tt2g5(a1) & 1;
    goto LABEL_9;
  }

  if (v4 != *(a1 + 64))
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AppearsActiveKey>, &type metadata for AppearsActiveKey, &protocol witness table for AppearsActiveKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  v7 = *(v3 + 32);
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v14);
    outlined init with take of AnyTrackedValue(v14, v15);
    v10 = v16;
    v11 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    (v11[1])(v14, MEMORY[0x1E69E6370], v10, v11);
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    LOBYTE(v14[0]) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA013AppearsActiveF0VG_Tt2g5(a1) & 1;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<AppearsActiveKey>>(0);
    v16 = v12;
    v17 = &protocol witness table for TrackedValue<A>;
    LOBYTE(v15[0]) = v14[0];
    specialized Dictionary.subscript.setter(v15, v6);
  }

LABEL_9:
  os_unfair_lock_unlock((v3 + 16));

  return LOBYTE(v14[0]);
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA015DynamicTypeSizeI033_B498FA81088CF7FADFFFFFC897E05C74LLVG_Tt1g5@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v5 = *(v2 + 16);

  os_unfair_lock_lock((v5 + 16));
  v6 = *(v5 + 24);
  if (!a1)
  {
    if (!v6)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 56) = 1;
    v14 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA015DynamicTypeSizeS033_B498FA81088CF7FADFFFFFC897E05C74LLVG_Tt0g5(a1);
    if (v14)
    {
      *a2 = *(v14 + 72);
    }

    else
    {
      *a2 = 3;
    }

    goto LABEL_14;
  }

  if (v6 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DynamicTypeSizeKey>, &type metadata for DynamicTypeSizeKey, &protocol witness table for DynamicTypeSizeKey, type metadata accessor for EnvironmentPropertyKey);
  v8 = v7;
  v9 = *(v5 + 32);
  if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v11 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v9 + 56) + 40 * v10, v19);
    outlined init with take of AnyTrackedValue(v19, v20);
    v12 = v21;
    v13 = v22;
    __swift_project_boxed_opaque_existential_1(v20, v21);
    (v13[1])(&type metadata for DynamicTypeSize, v12, v13);
    __swift_destroy_boxed_opaque_existential_1(v20);
  }

  else
  {
    v15 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA015DynamicTypeSizeS033_B498FA81088CF7FADFFFFFC897E05C74LLVG_Tt0g5(a1);
    if (v15)
    {
      v16 = *(v15 + 72);
    }

    else
    {
      v16 = 3;
    }

    *a2 = v16;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<DynamicTypeSizeKey>>(0);
    v21 = v17;
    v22 = &protocol witness table for TrackedValue<A>;
    LOBYTE(v20[0]) = v16;
    specialized Dictionary.subscript.setter(v20, v8);
  }

LABEL_14:
  os_unfair_lock_unlock((v5 + 16));
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<AppearsActiveKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<AppearsActiveKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<AppearsActiveKey>, &type metadata for AppearsActiveKey, &protocol witness table for AppearsActiveKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<AppearsActiveKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<AppearsActiveKey>>);
    }
  }
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<DynamicTypeSizeKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<DynamicTypeSizeKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<DynamicTypeSizeKey>, &type metadata for DynamicTypeSizeKey, &protocol witness table for DynamicTypeSizeKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<DynamicTypeSizeKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<DynamicTypeSizeKey>>);
    }
  }
}

void specialized PlatformColorProvider.resolveHDR(in:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  if (one-time initialization token for safeDefinition != -1)
  {
    swift_once();
  }

  v8 = static UIKitPlatformColorProvider.safeDefinition;
  if (static UIKitPlatformColorProvider.safeDefinition)
  {
    v9 = *(static UIKitPlatformColorProvider.safeDefinition + 10);
    v9(v26);
    if (CoreColorDependsOnEnvironment(a3, v26[0]))
    {
      v10 = MEMORY[0x193AC38C0]();
      v26[0] = a1;
      v26[1] = a2;
      v11 = v8[13](a3, v26);
      if ((v13 & 0x100000000) != 0)
      {
        v14 = 0;
        LODWORD(v16) = 0;
        v15 = 0;
        LODWORD(v17) = 0;
        v18 = NAN;
      }

      else
      {
        v14 = v11;
        v15 = v12;
        v16 = HIDWORD(v11);
        v17 = HIDWORD(v12);
        v18 = *&v13;
      }

      objc_autoreleasePoolPop(v10);
    }

    else
    {
      v9(v26);
      v19 = CGColorForCoreColor(LOBYTE(v26[0]), a3);
      if (v19)
      {
        v20 = v19;
        v21 = specialized Color.Resolved.init(failableCGColor:)(v20);
        if ((v23 & 1) == 0)
        {
          v15 = v22;
          v16 = HIDWORD(v21);
          v17 = HIDWORD(v22);
          v24 = v21;
          CGColorGetContentHeadroom();
          v18 = v25;

          if (v18 == 0.0)
          {
            v18 = NAN;
          }

          v14 = v24;
          goto LABEL_16;
        }
      }

      v14 = 0;
      LODWORD(v16) = 0;
      v15 = 0;
      LODWORD(v17) = 0;
      v18 = NAN;
    }

LABEL_16:
    *a4 = v14;
    *(a4 + 4) = v16;
    *(a4 + 8) = v15;
    *(a4 + 12) = v17;
    *(a4 + 16) = v18;
    return;
  }

  __break(1u);
}

{
  v8 = swift_beginAccess();
  v9 = static PlatformColorDefinition.appKitInternal;
  if (!static PlatformColorDefinition.appKitInternal)
  {
    v8 = swift_beginAccess();
    v9 = static PlatformColorDefinition.appKit;
    if (!static PlatformColorDefinition.appKit)
    {
      if (!CoreColorGetKitColorClass(1) || (swift_getObjCClassMetadata(), type metadata accessor for NSObject(), !swift_dynamicCastMetatype()) || ![swift_getObjCClassFromMetadata() _swiftUI_platformColorDefinition])
      {
        __break(1u);
        goto LABEL_33;
      }

      type metadata accessor for PlatformColorDefinition();
      v8 = swift_dynamicCastMetatypeUnconditional();
      v9 = v8;
      static PlatformColorDefinition.appKit = v8;
    }
  }

  v9[10](v30, v8);
  if (!CoreColorDependsOnEnvironment(a3, v30[0]))
  {
    v20 = static PlatformColorDefinition.appKitInternal;
    if (!static PlatformColorDefinition.appKitInternal)
    {
      swift_beginAccess();
      v20 = static PlatformColorDefinition.appKit;
      if (!static PlatformColorDefinition.appKit)
      {
        if (!CoreColorGetKitColorClass(1))
        {
          goto LABEL_34;
        }

        swift_getObjCClassMetadata();
        type metadata accessor for NSObject();
        if (!swift_dynamicCastMetatype() || ![swift_getObjCClassFromMetadata() _swiftUI_platformColorDefinition])
        {
          goto LABEL_34;
        }

        type metadata accessor for PlatformColorDefinition();
        v20 = swift_dynamicCastMetatypeUnconditional();
        static PlatformColorDefinition.appKit = v20;
      }
    }

    (*(v20 + 10))(v29);
    v21 = CGColorForCoreColor(LOBYTE(v29[0]), a3);
    if (v21)
    {
      v22 = v21;
      v23 = specialized Color.Resolved.init(failableCGColor:)(v22);
      if ((v25 & 1) == 0)
      {
        v16 = v24;
        v18 = HIDWORD(v23);
        v26 = HIDWORD(v24);
        v27 = v23;
        CGColorGetContentHeadroom();
        v19 = v28;

        if (v19 == 0.0)
        {
          v19 = NAN;
        }

        v15 = v27;
        LODWORD(v17) = v18;
        LODWORD(v18) = v26;
        goto LABEL_31;
      }
    }

    v15 = 0;
    LODWORD(v17) = 0;
    v16 = 0;
    LODWORD(v18) = 0;
    v19 = NAN;
LABEL_31:
    *a4 = v15;
    *(a4 + 4) = v17;
    *(a4 + 8) = v16;
    *(a4 + 12) = v18;
    *(a4 + 16) = v19;
    return;
  }

  v10 = MEMORY[0x193AC38C0]();
  v11 = static PlatformColorDefinition.appKitInternal;
  if (static PlatformColorDefinition.appKitInternal || (swift_beginAccess(), (v11 = static PlatformColorDefinition.appKit) != 0))
  {
LABEL_14:
    v29[0] = a1;
    v29[1] = a2;
    v12 = v11[13](a3, v29);
    if ((v14 & 0x100000000) != 0)
    {
      v15 = 0;
      LODWORD(v17) = 0;
      v16 = 0;
      LODWORD(v18) = 0;
      v19 = NAN;
    }

    else
    {
      v15 = v12;
      v16 = v13;
      v17 = HIDWORD(v12);
      v18 = HIDWORD(v13);
      v19 = *&v14;
    }

    objc_autoreleasePoolPop(v10);
    goto LABEL_31;
  }

  if (CoreColorGetKitColorClass(1))
  {
    swift_getObjCClassMetadata();
    type metadata accessor for NSObject();
    if (swift_dynamicCastMetatype())
    {
      if ([swift_getObjCClassFromMetadata() _swiftUI_platformColorDefinition])
      {
        type metadata accessor for PlatformColorDefinition();
        v11 = swift_dynamicCastMetatypeUnconditional();
        static PlatformColorDefinition.appKit = v11;
        goto LABEL_14;
      }
    }
  }

LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<AppearsActiveKey> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<AppearsActiveKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<AppearsActiveKey>, &type metadata for AppearsActiveKey, &protocol witness table for AppearsActiveKey, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<AppearsActiveKey> and conformance EnvironmentPropertyKey<A>);
  }
}

BOOL ResolvedStyledText.needsStyledRendering.getter()
{
  v1 = *(v0 + 260);
  if (v1)
  {
    return 1;
  }

  if (v1 & 2) != 0 && (*(v0 + 256))
  {
    if (*(v0 + 216))
    {
      return !NSAttributedString.isDynamic.getter();
    }

    return 1;
  }

  return 0;
}

void ResolvedStyledText.frame(in:renderer:)(uint64_t a1, double a2, double a3)
{
  if (a1)
  {
    v22 = v3;
    v6 = *(*a1 + 112);

    v7 = v6(*&a2, 0, *&a3, 0, &v22);
    v9 = v8;
  }

  else
  {
    v7 = (*(*v3 + 248))(a2, a3);
    v9 = v10;
  }

  v11 = swift_beginAccess();
  v12 = v3[13];
  if (*(v3 + 43))
  {
    v13 = 0.0;
  }

  else
  {
    v13 = 0.0 - v12;
  }

  v14 = v7 + v12;
  v15 = (*(*v3 + 184))(v11);
  v17 = v16;
  v19 = v18;
  v21 = v20;
  swift_beginAccess();
  CGRect.inset(by:)(v3[21] - v15 + 0.0, v3[22] - v17 + 0.0, v3[23] - v19 + 0.0, v3[24] - v21 + 0.0, v13, 0.0, v14, v9);
}

void ResolvedStyledText.StringDrawing.drawingMargins.getter()
{
  ResolvedStyledText.maxFontMetrics.getter(v1);
  swift_beginAccess();
  ResolvedStyledText.lineHeightScalingAdjustment(lineHeightMultiple:maximumLineHeight:minimumLineHeight:)(v0[8], v0[9], v0[10]);
}

double ResolvedStyledText.lineHeightScalingAdjustment(lineHeightMultiple:maximumLineHeight:minimumLineHeight:)(double a1, double a2, double a3)
{
  v6 = a1 != 0.0 && a1 < 1.0;
  v7 = 0.0;
  if (!v6 && a2 == 0.0 && a3 == 0.0)
  {
    return v7;
  }

  ResolvedStyledText.maxFontMetrics.getter(&v12);
  v8 = v13 - v14;
  if (a1 != 0.0)
  {
    v9 = v8 * a1;
    v10 = v8 * a1;
    if (a2 == 0.0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v9 = v13 - v14;
  v10 = v13 - v14;
  if (a2 != 0.0)
  {
LABEL_9:
    v10 = v9;
    v9 = a2;
  }

LABEL_10:
  if (v10 < a3)
  {
    v10 = a3;
  }

  if (v9 >= v10)
  {
    v9 = v10;
  }

  if (v9 < v8)
  {
    return v8 - v9;
  }

  return v7;
}

uint64_t ResolvedStyledText.needsRBDisplayList.getter()
{
  v1 = *(v0 + 216);
  if (v1 && [*(v0 + 216) length] >= 1)
  {
    if (one-time initialization token for updateSchedule != -1)
    {
      swift_once();
    }

    v2 = static NSAttributedStringKey.updateSchedule;
    [v1 length];
    if ([v1 attribute:v2 atIndex:0 effectiveRange:0])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      _sypSgWOhTm_6(v5, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], _sypSgMaTm_5);
      return 0;
    }

    memset(v5, 0, sizeof(v5));
    _sypSgWOhTm_6(v5, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], _sypSgMaTm_5);
  }

  if ((*(v0 + 260) & 8) != 0)
  {
    return 1;
  }

  v4 = *(v0 + 256);
  if (v4)
  {
    return (v4 >> 4) & 1;
  }

  else
  {
    return 0;
  }
}

void type metadata accessor for ObjectCache<Color.Resolved, NSObject>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ObjectCache<Color.Resolved, NSObject>)
  {
    v2 = type metadata accessor for NSObject();
    lazy protocol witness table accessor for type Color.Resolved and conformance Color.Resolved();
    v4 = type metadata accessor for ObjectCache(a1, &type metadata for Color.Resolved, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for ObjectCache<Color.Resolved, NSObject>);
    }
  }
}

void type metadata accessor for ObjectCache<Color.Resolved, NSObject>.Data(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ObjectCache<Color.Resolved, NSObject>.Data)
  {
    v2 = type metadata accessor for NSObject();
    lazy protocol witness table accessor for type Color.Resolved and conformance Color.Resolved();
    v4 = type metadata accessor for ObjectCache.Data(a1, &type metadata for Color.Resolved, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for ObjectCache<Color.Resolved, NSObject>.Data);
    }
  }
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultKerningKey> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<DefaultKerningKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultKerningKey>, &type metadata for DefaultKerningKey, &protocol witness table for DefaultKerningKey, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<DefaultKerningKey> and conformance EnvironmentPropertyKey<A>);
  }
}

void type metadata accessor for ObjectCache<Color.Resolved, NSObject>.Item(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ObjectCache<Color.Resolved, NSObject>.Item)
  {
    v2 = type metadata accessor for NSObject();
    lazy protocol witness table accessor for type Color.Resolved and conformance Color.Resolved();
    v4 = type metadata accessor for ObjectCache.Item(a1, &type metadata for Color.Resolved, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for ObjectCache<Color.Resolved, NSObject>.Item);
    }
  }
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultBaselineOffsetKey> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<DefaultBaselineOffsetKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultBaselineOffsetKey>, &type metadata for DefaultBaselineOffsetKey, &protocol witness table for DefaultBaselineOffsetKey, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<DefaultBaselineOffsetKey> and conformance EnvironmentPropertyKey<A>);
  }
}

unint64_t type metadata accessor for NSObject()
{
  result = lazy cache variable for type metadata for NSObject;
  if (!lazy cache variable for type metadata for NSObject)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSObject);
  }

  return result;
}

uint64_t one-time initialization function for kitForegroundColor()
{
  result = MEMORY[0x193ABEC20](0x726F6C6F43534ELL, 0xE700000000000000);
  static NSAttributedStringKey.kitForegroundColor = result;
  return result;
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<BodyHeadOutdentKey> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<BodyHeadOutdentKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<BodyHeadOutdentKey>, &type metadata for BodyHeadOutdentKey, &protocol witness table for BodyHeadOutdentKey, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<BodyHeadOutdentKey> and conformance EnvironmentPropertyKey<A>);
  }
}

void type metadata accessor for ObjectCache<Font.FontCache.Key, CTFontRef>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ObjectCache<Font.FontCache.Key, CTFontRef>)
  {
    type metadata accessor for CTFontRef(255);
    v3 = v2;
    lazy protocol witness table accessor for type Font.FontCache.Key and conformance Font.FontCache.Key();
    v5 = type metadata accessor for ObjectCache(a1, &type metadata for Font.FontCache.Key, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &lazy cache variable for type metadata for ObjectCache<Font.FontCache.Key, CTFontRef>);
    }
  }
}

void lazy protocol witness table accessor for type Font.FontCache.Key and conformance Font.FontCache.Key()
{
  if (!lazy protocol witness table cache variable for type Font.FontCache.Key and conformance Font.FontCache.Key)
  {
    swift_getWitnessTable(protocol conformance descriptor for Font.FontCache.Key, &type metadata for Font.FontCache.Key, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Font.FontCache.Key and conformance Font.FontCache.Key);
  }
}

{
  if (!lazy protocol witness table cache variable for type Font.FontCache.Key and conformance Font.FontCache.Key)
  {
    swift_getWitnessTable(protocol conformance descriptor for Font.FontCache.Key, &type metadata for Font.FontCache.Key, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Font.FontCache.Key and conformance Font.FontCache.Key);
  }
}

uint64_t outlined init with copy of ObjectCache<Font.FontCache.Key, CTFontRef>.Item(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ObjectCache<Font.FontCache.Key, CTFontRef>.Item(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for ObjectCache<Font.FontCache.Key, CTFontRef>.Data(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ObjectCache<Font.FontCache.Key, CTFontRef>.Data)
  {
    type metadata accessor for CTFontRef(255);
    v3 = v2;
    lazy protocol witness table accessor for type Font.FontCache.Key and conformance Font.FontCache.Key();
    v5 = type metadata accessor for ObjectCache.Data(a1, &type metadata for Font.FontCache.Key, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &lazy cache variable for type metadata for ObjectCache<Font.FontCache.Key, CTFontRef>.Data);
    }
  }
}

void lazy protocol witness table accessor for type DerivedEnvironmentPropertyKey<TextLayoutProperties.Key> and conformance DerivedEnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type DerivedEnvironmentPropertyKey<TextLayoutProperties.Key> and conformance DerivedEnvironmentPropertyKey<A>)
  {
    type metadata accessor for DerivedEnvironmentPropertyKey<EnvironmentValues.ReadableWidthKey>(255, &lazy cache variable for type metadata for DerivedEnvironmentPropertyKey<TextLayoutProperties.Key>, lazy protocol witness table accessor for type TextLayoutProperties.Key and conformance TextLayoutProperties.Key, &type metadata for TextLayoutProperties.Key);
    swift_getWitnessTable(protocol conformance descriptor for DerivedEnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type DerivedEnvironmentPropertyKey<TextLayoutProperties.Key> and conformance DerivedEnvironmentPropertyKey<A>);
  }
}

double one-time initialization function for defaultValue()
{
  if (one-time initialization token for standard != -1)
  {
    swift_once();
  }

  static TextSizingKey.defaultValue = static Text.Sizing.standard;
  qword_1ED537550 = qword_1ED5372E8;

  return result;
}

{
  type metadata accessor for _ContiguousArrayStorage<(key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)>(0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_18DDA6EB0;
  *(v0 + 32) = 0;
  *(v0 + 128) = 1065353216;
  *(v0 + 136) = 0;
  *(v0 + 144) = -1;
  *(v0 + 152) = MEMORY[0x1E69E7CC0];
  result = 0.0;
  *(v0 + 40) = xmmword_18DD85540;
  *(v0 + 56) = 2143289344;
  *(v0 + 125) = 0;
  static _ShapeStyle_Pack.defaultValue = v0;
  return result;
}

{
  return GestureDebug.Data.init()(&static GestureDebug.Data.defaultValue);
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<TextScaleKey> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<TextScaleKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextScaleKey>, &type metadata for TextScaleKey, &protocol witness table for TextScaleKey, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<TextScaleKey> and conformance EnvironmentPropertyKey<A>);
  }
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<UnderlineStyleKey> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<UnderlineStyleKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<UnderlineStyleKey>, &type metadata for UnderlineStyleKey, &protocol witness table for UnderlineStyleKey, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<UnderlineStyleKey> and conformance EnvironmentPropertyKey<A>);
  }
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<StrikethroughStyleKey> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<StrikethroughStyleKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<StrikethroughStyleKey>, &type metadata for StrikethroughStyleKey, &protocol witness table for StrikethroughStyleKey, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<StrikethroughStyleKey> and conformance EnvironmentPropertyKey<A>);
  }
}

void lazy protocol witness table accessor for type TextLayoutProperties.Key and conformance TextLayoutProperties.Key()
{
  if (!lazy protocol witness table cache variable for type TextLayoutProperties.Key and conformance TextLayoutProperties.Key)
  {
    swift_getWitnessTable(protocol conformance descriptor for TextLayoutProperties.Key, &type metadata for TextLayoutProperties.Key, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type TextLayoutProperties.Key and conformance TextLayoutProperties.Key);
  }
}

uint64_t one-time initialization function for kitParagraphStyle()
{
  result = MEMORY[0x193ABEC20](0xD000000000000010, 0x800000018DD7A050);
  static NSAttributedStringKey.kitParagraphStyle = result;
  return result;
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultTrackingKey> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<DefaultTrackingKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultTrackingKey>, &type metadata for DefaultTrackingKey, &protocol witness table for DefaultTrackingKey, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<DefaultTrackingKey> and conformance EnvironmentPropertyKey<A>);
  }
}

uint64_t one-time initialization function for kitLink()
{
  result = MEMORY[0x193ABEC20](0x6B6E694C534ELL, 0xE600000000000000);
  static NSAttributedStringKey.kitLink = result;
  return result;
}

uint64_t NSAttributedString.MetricsCache.findMetrics(requestedSize:wantsNumberOfLineFragments:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v5 = *(v4 + 80);
  v6 = *(v5 + 16);
  v7 = 0uLL;
  if (v6)
  {
    v8 = (v5 + 64);
    while (1)
    {
      v9 = *(v8 - 4);
      v10 = *(v8 - 1);
      v11 = *(v8 + 48);
      if ((result & 1) == 0 || (v11 & 1) == 0)
      {
        v12 = *&v10 >= v9 ? *(v8 - 4) : *(v8 - 2);
        if (v12 <= a3)
        {
          v13 = *(v8 - 3);
          if (v13 > *(&v10 + 1))
          {
            v14 = *(v8 - 3);
          }

          else
          {
            v14 = *(v8 - 1);
          }

          if (*(&v10 + 1) < v13)
          {
            v13 = *(v8 - 1);
          }

          if (v9 <= *&v10)
          {
            v9 = *(v8 - 2);
          }

          v15 = v9 < a3 || v13 > a4;
          if (!v15 && v14 >= a4)
          {
            break;
          }
        }
      }

      v8 = (v8 + 88);
      if (!--v6)
      {
        goto LABEL_25;
      }
    }

    v17 = *v8;
    v18 = v8[1];
    v19 = v8[2];
    v20 = v11 | (*(v8 + 49) << 8);
    v7 = *(v8 - 1);
  }

  else
  {
LABEL_25:
    v20 = 512;
    v17 = 0uLL;
    v18 = 0uLL;
    v19 = 0uLL;
  }

  *a2 = v7;
  *(a2 + 16) = v17;
  *(a2 + 32) = v18;
  *(a2 + 48) = v19;
  *(a2 + 64) = v20;
  return result;
}

void Text.Sizing.layoutMargins(for:metrics:layoutProperties:)(void *result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 81);
  v5 = *(v3 + 8);
  v6 = 0.0;
  if (!*v3)
  {
    goto LABEL_4;
  }

  v7 = *(a3 + 96);
  if (*v3 == 1)
  {
    NSAttributedString.maxFontMetrics.getter(&v34);
    v9 = v35;
    *a2 = v34;
    *(a2 + 16) = v9;
    v10 = v37;
    *(a2 + 32) = v36;
    *(a2 + 48) = v10;
    *(a2 + 64) = 0;
    v11 = *(a2 + 24);
    if (v11 == 0.0)
    {
LABEL_4:
      v12 = 0.0;
      v13 = 0.0;
      v14 = 0.0;
      goto LABEL_13;
    }

    v21 = *(a2 + 8) - *(a2 + 16);
    v22 = v7 * ceil(v21 / v7);
    v23 = ceil(v21);
    if (v7 == 1.0)
    {
      v22 = v23;
    }

    v12 = (v11 + v21 - v22) * 0.5;
    v13 = 0.0;
    v14 = v12;
  }

  else
  {
    if (one-time initialization token for oversizedScalarsWithoutEmoji != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for CharacterSet();
    v16 = __swift_project_value_buffer(v15, static NSAttributedString.oversizedScalarsWithoutEmoji);
    v17 = NSAttributedString.oversizedDrawingMargin(from:)(v16);
    if (v7 == 1.0)
    {
      v14 = ceil(v17);
      v13 = ceil(v18);
      v12 = ceil(v19);
      v6 = ceil(v20);
    }

    else
    {
      v14 = v7 * ceil(v17 / v7);
      v13 = v7 * ceil(v18 / v7);
      v12 = v7 * ceil(v19 / v7);
      v6 = v7 * ceil(v20 / v7);
    }
  }

LABEL_13:
  if (v4)
  {
    v24 = v13;
  }

  else
  {
    v24 = v14;
  }

  if (v4)
  {
    v13 = v12;
    v12 = v6;
    v25 = v14;
  }

  else
  {
    v25 = v6;
  }

  *&v34 = v24;
  *(&v34 + 1) = v13;
  *&v35 = v12;
  *(&v35 + 1) = v25;
  if (v5 >> 62)
  {
    goto LABEL_33;
  }

  v26 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v26)
  {
    do
    {
      while (1)
      {
        if (__OFSUB__(v26--, 1))
        {
          __break(1u);
          return;
        }

        if ((v5 & 0xC000000000000001) == 0)
        {
          break;
        }

        v27 = MEMORY[0x193AC03C0](v26, v5);
LABEL_23:
        (*(*v27 + 80))(&v34);

        if (!v26)
        {
          return;
        }
      }

      if ((v26 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v26 < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v27 = *(v5 + 32 + 8 * v26);

        goto LABEL_23;
      }

      __break(1u);
LABEL_33:
      v29 = v24;
      v30 = v13;
      v31 = v12;
      v32 = v25;
      v33 = __CocoaSet.count.getter();
      v25 = v32;
      v12 = v31;
      v13 = v30;
      v24 = v29;
      v26 = v33;
    }

    while (v33);
  }
}

uint64_t initializeBufferWithCopyOfBuffer for StyledTextContentView(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t initializeWithCopy for TextLayoutProperties(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 25) = *(a2 + 25);
  *(a1 + 27) = *(a2 + 27);
  *(a1 + 28) = *(a2 + 28);
  v3 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v3;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = *(a2 + 144);

  return a1;
}

void NSAttributedString.MetricsCache.metrics(requestedSize:layoutMargins:wantsNumberOfLineFragments:context:)(uint64_t a1@<X0>, double a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>, double a8@<D4>, double a9@<D5>)
{
  v10 = v9;
  v137 = a2;
  v19 = type metadata accessor for CharacterSet();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v120 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v9[3];
  v151 = v9[2];
  v152 = v23;
  v153 = v9[4];
  v154 = *(v9 + 10);
  v24 = v9[1];
  v149 = *v9;
  v150 = v24;
  NSAttributedString.MetricsCache.findMetrics(requestedSize:wantsNumberOfLineFragments:)(a1, v147, a4, a5);
  v25 = v148;
  if ((v148 & 0xFF00) == 0x200)
  {
    swift_beginAccess();
    v26 = static LayoutTrace.recorder;
    if (static LayoutTrace.recorder)
    {
      swift_beginAccess();
      v26[4] = a4;
      v26[5] = 0.0;
      v26[6] = a5;
      *(v26 + 28) = 0;
    }

    v132 = a1;
    v121 = v22;
    v122 = v20;
    v123 = v19;
    v27 = a7 + a9;
    if (a4 - (a7 + a9) < 0.0)
    {
      v28 = 0.0;
    }

    else
    {
      v28 = a4 - (a7 + a9);
    }

    v29 = a6 + a8;
    v30 = a5 - (a6 + a8);
    if (v30 < 0.0)
    {
      v30 = 0.0;
    }

    v136 = v30;
    v31 = *(&v149 + 1);
    v135 = v150;
    v134 = BYTE8(v150);
    v131 = v151;
    v130 = BYTE8(v151);
    v139 = *(&v152 + 1);
    v32 = *&v152;
    v146 = 0;
    v33 = one-time initialization token for kitLink;
    v138 = v149;
    swift_unknownObjectRetain();
    if (v33 != -1)
    {
      swift_once();
    }

    v34 = static NSAttributedStringKey.kitLink;
    v35 = [v31 length];
    v36 = swift_allocObject();
    *(v36 + 16) = &v146;
    v37 = swift_allocObject();
    v38 = v37;
    *(v37 + 16) = closure #1 in NSAttributedString.hasLinkAttributes.getterpartial apply;
    *(v37 + 24) = v36;
    v144 = thunk for @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ()partial apply;
    v145 = v37;
    v140 = MEMORY[0x1E69E9820];
    *&v39 = 1107296256;
    v141 = 1107296256;
    v129 = &v142;
    v142 = thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
    v143 = &block_descriptor_29;
    v40 = _Block_copy(&v140);

    v133 = v31;
    [v31 enumerateAttribute:v34 inRange:0 options:v35 usingBlock:{0, v40}];
    _Block_release(v40);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
      goto LABEL_103;
    }

    v125 = v29;
    v42 = v146;

    v43 = *(*&v137 + 16);

    os_unfair_lock_lock((v43 + 16));
    v44 = *(v43 + 24);
    v45 = 0.0;
    if (v32 < 1.0)
    {
      v45 = v32;
    }

    if (v32 <= 0.0)
    {
      v45 = COERCE_DOUBLE(1);
    }

    [*(v43 + 24) setMinimumScaleFactor_];
    [v44 setScaledLineHeight_];
    [v44 setScaledBaselineOffset_];
    v46 = v135;
    if (v135 <= 1)
    {
      v46 = 1;
    }

    if (v134)
    {
      v47 = 0;
    }

    else
    {
      v47 = v46;
    }

    [v44 setMaximumNumberOfLines_];
    [v44 setCachesLayout_];
    [v44 setLayout_];
    [v44 setWantsNumberOfLineFragments_];
    if (v42)
    {
      v48 = 8;
    }

    else
    {
      v48 = 0;
    }

    [v44 setActiveRenderers_];
    v144 = closure #2 in closure #1 in TextDrawingContext.withStringDrawingContext<A>(minScaleFactor:lineLimit:kitCache:useNSLayoutManager:do:);
    v145 = 0;
    v140 = MEMORY[0x1E69E9820];
    v141 = 1107296256;
    v142 = thunk for @escaping @callee_guaranteed (@guaranteed [NSAttributedStringKey : Any]?, @unowned Int) -> (@owned [NSAttributedStringKey : Any]?);
    v143 = &block_descriptor_32_0;
    v49 = _Block_copy(&v140);
    [v44 setLinkTextAttributesProvider_];
    _Block_release(v49);
    if ((v132 & 1) != 0 || v139 > 0.0)
    {
      [v44 setWantsNumberOfLineFragments_];
    }

    v50 = v28 + v139;
    v51 = 0.0;
    v137 = v28 + v139;
    v52 = v133;
    v53 = v131;
    v127 = a4;
    v128 = a5;
    v126 = v27;
    v124 = a6;
    if ((v130 & 1) == 0 && v131 >= 1)
    {
      if ([v133 length] < 1)
      {
        v50 = v137;
      }

      else
      {
        *&v54 = COERCE_DOUBLE(NSAttributedString.limitedFontHeight(by:)(v53));
        v50 = v137;
        if ((v55 & 1) == 0)
        {
          v51 = *&v54;
        }
      }
    }

    if (v50 == INFINITY)
    {
      v62 = 1.79769313e308;
    }

    else
    {
      v62 = v50;
    }

    if (v50 > 0.0)
    {
      v63 = v62;
    }

    else
    {
      v63 = COERCE_DOUBLE(1);
    }

    if (v136 == INFINITY)
    {
      v64 = 1.79769313e308;
    }

    else
    {
      v64 = v136;
    }

    if (v136 <= 0.0)
    {
      v64 = COERCE_DOUBLE(1);
    }

    if (v51 > v64)
    {
      v65 = v51;
    }

    else
    {
      v65 = v64;
    }

    [v52 boundingRectWithSize:1048577 options:v44 context:{v63, v65}];
    v67 = v66;
    v69 = v68;
    v71 = v70;
    v73 = v72;
    v74 = [v44 layout];
    swift_unknownObjectRelease();
    *v10 = v74;
    [v44 setLayout_];
    [v44 scaledLineHeight];
    v76 = v75;
    v77 = v67;
    if (v75 == 0.0)
    {
      v155.origin.x = v67;
      v155.origin.y = v69;
      v155.size.width = v71;
      v155.size.height = v73;
      Height = CGRectGetHeight(v155);
    }

    else
    {
      [v44 scaledLineHeight];
    }

    v79 = Height;
    if (v139 > 0.0)
    {
      if ([v44 numberOfLineFragments] == 1)
      {
        goto LABEL_68;
      }

      v80 = [v52 string];
      v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v83 = v82;

      v140 = v81;
      v141 = v83;
      v84 = v121;
      static CharacterSet.newlines.getter();
      lazy protocol witness table accessor for type String and conformance String();
      v85 = StringProtocol.components(separatedBy:)();
      (*(v122 + 8))(v84, v123);

      v86 = v85;
      v87 = *(v85 + 16);
      if (v87)
      {
        v88 = v86 + 16 * (v87 - 1);
        v89 = *(v88 + 32);
        v90 = *(v88 + 40);

        v91 = HIBYTE(v90) & 0xF;
        if ((v90 & 0x2000000000000000) == 0)
        {
          v91 = v89 & 0xFFFFFFFFFFFFLL;
        }

        v92 = v91 ? v87 : v87 - 1;
      }

      else
      {

        v92 = 0;
      }

      v93 = v135;
      if (v92 < v135)
      {
        v93 = v92;
      }

      v94 = (v134 ? v92 : v93);
      if (v94 == [v44 numberOfLineFragments])
      {
LABEL_68:
        v156.origin.x = v77;
        v156.origin.y = v69;
        v156.size.width = v71;
        v156.size.height = v73;
        v95 = v139 + CGRectGetWidth(v156);
        if (v63 >= v95)
        {
          v71 = v95;
        }

        else
        {
          v71 = v63;
        }
      }
    }

    if (v79 == COERCE_DOUBLE(1))
    {
      v79 = 0.0;
    }

    Width = v137;
    if ((BYTE8(v153) & 1) == 0)
    {
      v157.origin.x = v77;
      v157.origin.y = v69;
      v157.size.width = v71;
      v157.size.height = v73;
      v97 = CGRectGetWidth(v157) == COERCE_DOUBLE(1);
      Width = 0.0;
      if (!v97)
      {
        v158.origin.x = v77;
        v158.origin.y = v69;
        v158.size.width = v71;
        v158.size.height = v73;
        Width = CGRectGetWidth(v158);
      }
    }

    if ((BYTE10(v153) & (v136 < v79)) != 0)
    {
      v98 = 0.0;
    }

    else
    {
      v98 = Width;
    }

    if ((BYTE10(v153) & (v136 < v79)) != 0)
    {
      v99 = 0.0;
    }

    else
    {
      v99 = v79;
    }

    if (v99 > v51)
    {
      v100 = v99;
    }

    else
    {
      v100 = v51;
    }

    v101 = [v44 hasTruncatedRanges];
    [v44 actualScaleFactor];
    v29 = v102;
    [v44 firstBaselineOffset];
    v104 = v103;
    v105 = &selRef_baselineOffset;
    if (v76 != 0.0)
    {
      v105 = &selRef_scaledBaselineOffset;
    }

    [v44 *v105];
    v107 = v106;
    v108 = [v44 wantsNumberOfLineFragments];
    v109 = v108;
    if (v108)
    {
      isEscapingClosureAtFileLocation = [v44 numberOfLineFragments];
      a5 = v128;
      if ((isEscapingClosureAtFileLocation & 0x8000000000000000) == 0)
      {
        goto LABEL_91;
      }

      __break(1u);
    }

    isEscapingClosureAtFileLocation = 0;
    a5 = v128;
LABEL_91:
    v110 = *&v153;
    LOBYTE(v140) = v109 ^ 1;
    os_unfair_lock_unlock((v43 + 16));

    swift_unknownObjectRelease();
    if (v101)
    {
      LOWORD(v34) = 256;
    }

    else
    {
      LOWORD(v34) = 0;
    }

    if (v110 == 1.0)
    {
      v111 = ceil(v98);
      a6 = ceil(v100);
      v35 = v154;
      v112 = v104 + v124;
      v39 = round(v104 + v124);
      v113 = v107 + v124;
      v32 = v39 - v112;
      v28 = ceil(v39 - v112 + v113);
    }

    else
    {
      v111 = v110 * ceil(v98 / v110);
      a6 = v110 * ceil(v100 / v110);
      v35 = v154;
      v114 = v104 + v124;
      v39 = v110 * round((v104 + v124) / v110);
      v115 = v107 + v124;
      v32 = v39 - v114;
      v28 = v110 * ceil((v115 + v39 - v114) / v110);
    }

    v38 = v140;
    v27 = v111 - v139;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_98:
      v25 = v34 | v38;
      v57 = v125 + a6;
      v58 = v126 + v27;
      v117 = *(v35 + 2);
      v116 = *(v35 + 3);
      v61 = v137;
      if (v117 >= v116 >> 1)
      {
        v119 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v116 > 1), v117 + 1, 1, v35);
        v61 = v137;
        v35 = v119;
      }

      *(v35 + 2) = v117 + 1;
      v118 = &v35[88 * v117];
      *(v118 + 4) = v127;
      *(v118 + 5) = a5;
      *(v118 + 6) = v58;
      *(v118 + 7) = v57;
      *(v118 + 8) = v29;
      *(v118 + 9) = v39;
      *(v118 + 10) = v28;
      *(v118 + 11) = v32;
      *(v118 + 12) = v61;
      *(v118 + 13) = isEscapingClosureAtFileLocation;
      *(v118 + 56) = v25;
      v10[10] = v35;
      goto LABEL_101;
    }

LABEL_103:
    v35 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v35 + 2) + 1, 1, v35);
    goto LABEL_98;
  }

  v56 = a5;
  v58 = *v147;
  v57 = *&v147[1];
  v39 = *&v147[3];
  v139 = *&v147[2];
  v28 = *&v147[4];
  v32 = *&v147[5];
  v59 = *&v147[6];
  isEscapingClosureAtFileLocation = v147[7];
  swift_beginAccess();
  v60 = static LayoutTrace.recorder;
  if (static LayoutTrace.recorder)
  {
    swift_beginAccess();
    v60[4] = a4;
    v60[5] = 0.0;
    v60[6] = v56;
    *(v60 + 28) = 256;
  }

  v61 = v59;
  v29 = v139;
LABEL_101:
  *a3 = v58;
  *(a3 + 8) = v57;
  *(a3 + 16) = v29;
  *(a3 + 24) = v39;
  *(a3 + 32) = v28;
  *(a3 + 40) = v32;
  *(a3 + 48) = v61;
  *(a3 + 56) = isEscapingClosureAtFileLocation;
  *(a3 + 64) = v25;
}

uint64_t outlined init with copy of Date?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  type metadata accessor for Date?(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t _s10Foundation4DateVSgWOcTm_0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  _s10Foundation4DateVSgMaTm_3(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v11 = a2;
    outlined init with take of Any(&v11, v13);
  }

  else
  {
    memset(v13, 0, sizeof(v13));
  }

  swift_unknownObjectRetain();
  v9(v13, a3, a4, a5);
  return outlined destroy of Any?(v13);
}

uint64_t outlined init with copy of ResolvableTextSegmentAttribute.Value(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void type metadata accessor for _ContiguousArrayStorage<(CGSize, NSAttributedString.Metrics)>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<(CGSize, NSAttributedString.Metrics)>)
  {
    type metadata accessor for (AGSubgraphRef, Int)(255, &lazy cache variable for type metadata for (CGSize, NSAttributedString.Metrics), type metadata accessor for CGSize, &type metadata for NSAttributedString.Metrics);
    v1 = type metadata accessor for _ContiguousArrayStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ContiguousArrayStorage<(CGSize, NSAttributedString.Metrics)>);
    }
  }
}

void type metadata accessor for AnyGesture<()>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t StyledTextLayoutEngine.sizeThatFits(_:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  v6 = *(result + 24);
  if (a3)
  {
    v9 = a2;
    v7 = *(*a3 + 112);

    v7(v3, v4, v5, v6, &v9);
  }

  else
  {
    if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v8 = 1;
    }

    else
    {
      v8 = *(result + 8);
    }

    if (((v8 | v6) & 1) != 0 || (v5 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v9 = *result;
      v10 = v4;
      v11 = v5;
      v12 = v6;
      return (*(*a2 + 232))(&v9, a2);
    }
  }

  return result;
}

double ResolvedStyledText.StringDrawing.sizeThatFits(_:)(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_beginAccess();
  v6 = v1[21];
  v7 = v1[22];
  v9 = v1[23];
  v8 = v1[24];
  swift_beginAccess();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v10 = INFINITY;
  if (v5)
  {
    v11 = INFINITY;
  }

  else
  {
    v11 = v4;
  }

  if (!v3)
  {
    v10 = v2;
  }

  NSAttributedString.MetricsCache.metrics(requestedSize:layoutMargins:wantsNumberOfLineFragments:context:)(0, *&static TextDrawingContext.shared, &v13, v10, v11, v6, v7, v9, v8);
  swift_endAccess();
  return v13;
}

void *outlined consume of ResolvedTextSuffix(void *result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if ((a6 & 0x8000000000000000) == 0)
  {
    outlined consume of Text.Layout.Line.Line(result, a2);
  }

  return result;
}

uint64_t sub_18D0C17D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t destroy for ResolvedTextHelper.NextUpdate(uint64_t a1, uint64_t a2)
{
  result = swift_getEnumCaseMultiPayload();
  if (result == 1)
  {
    type metadata accessor for (lastTime: Time, lastDate: Date, reduceFrequency: Bool, resolved: ResolvedStyledText)(0);
    v5 = *(v4 + 48);
    v6 = type metadata accessor for Date();
    (*(*(v6 - 8) + 8))(a1 + v5, v6);
  }

  return result;
}

uint64_t ResolvedStyledText.StringDrawing.explicitAlignment(_:at:)(uint64_t a1, double a2, double a3)
{
  if (one-time initialization token for lastTextBaseline != -1)
  {
    v20 = a1;
    swift_once();
    a1 = v20;
  }

  if (static VerticalAlignment.lastTextBaseline == a1)
  {
    swift_beginAccess();
    v6 = v3[21];
    v7 = v3[22];
    v9 = v3[23];
    v8 = v3[24];
    swift_beginAccess();
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    NSAttributedString.MetricsCache.metrics(requestedSize:layoutMargins:wantsNumberOfLineFragments:context:)(0, *&static TextDrawingContext.shared, v25, a2, a3, v6, v7, v9, v8);
    swift_endAccess();
    return v27;
  }

  else
  {
    if (one-time initialization token for firstTextBaseline != -1)
    {
      v21 = a1;
      swift_once();
      a1 = v21;
    }

    if (static VerticalAlignment.firstTextBaseline == a1)
    {
      swift_beginAccess();
      v11 = v3[21];
      v12 = v3[22];
      v14 = v3[23];
      v13 = v3[24];
      swift_beginAccess();
      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      NSAttributedString.MetricsCache.metrics(requestedSize:layoutMargins:wantsNumberOfLineFragments:context:)(0, *&static TextDrawingContext.shared, v25, a2, a3, v11, v12, v14, v13);
      swift_endAccess();
      *&result = v26;
    }

    else
    {
      if (one-time initialization token for _firstTextLineCenter != -1)
      {
        v22 = a1;
        swift_once();
        a1 = v22;
      }

      if (static VerticalAlignment._firstTextLineCenter == a1)
      {
        swift_beginAccess();
        v15 = v3[21];
        v16 = v3[22];
        v18 = v3[23];
        v17 = v3[24];
        swift_beginAccess();
        if (one-time initialization token for shared != -1)
        {
          swift_once();
        }

        NSAttributedString.MetricsCache.metrics(requestedSize:layoutMargins:wantsNumberOfLineFragments:context:)(0, *&static TextDrawingContext.shared, v25, a2, a3, v15, v16, v18, v17);
        swift_endAccess();
        v19 = v26;
        ResolvedStyledText.maxFontMetrics.getter(v24);
        *&result = v19 + v24[0] * -0.5;
      }

      else
      {
        if (one-time initialization token for leadingText != -1)
        {
          v23 = a1;
          swift_once();
          a1 = v23;
        }

        if (static HorizontalAlignment.leadingText == a1)
        {
          swift_beginAccess();
          return *(v3 + 22);
        }

        else
        {
          *&result = 0.0;
        }
      }
    }
  }

  return result;
}

void *ResolvedStyledText.maxFontMetrics.getter@<X0>(void *a1@<X8>)
{
  if (*(v1 + 344))
  {
    if (*(v1 + 216))
    {
      v2 = a1;
      result = NSAttributedString.maxFontMetrics.getter(v14);
      a1 = v2;
      v5 = v14[0];
      v4 = v14[1];
      v7 = v14[2];
      v6 = v14[3];
      v9 = v14[4];
      v8 = v14[5];
      v11 = v14[6];
      v10 = v14[7];
    }

    else
    {
      v10 = 0;
      v11 = 0;
      v8 = 0;
      v9 = 0;
      v6 = 0;
      v7 = 0;
      v4 = 0;
      v5 = 0;
    }

    *(v1 + 280) = v5;
    *(v1 + 288) = v4;
    *(v1 + 296) = v7;
    *(v1 + 304) = v6;
    *(v1 + 312) = v9;
    *(v1 + 320) = v8;
    *(v1 + 328) = v11;
    *(v1 + 336) = v10;
    *(v1 + 344) = 0;
    *a1 = v5;
    a1[1] = v4;
    a1[2] = v7;
    a1[3] = v6;
    a1[4] = v9;
    a1[5] = v8;
    a1[6] = v11;
    a1[7] = v10;
  }

  else
  {
    v12 = *(v1 + 296);
    *a1 = *(v1 + 280);
    *(a1 + 1) = v12;
    v13 = *(v1 + 328);
    *(a1 + 2) = *(v1 + 312);
    *(a1 + 3) = v13;
  }

  return result;
}

double partial apply for specialized closure #2 in StatefulRule<>.update<A>(to:)@<D0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = v2[1];
  *a1 = *v2;
  a1[1] = v3;

  return result;
}

uint64_t specialized StatefulRule<>.update<A>(modify:create:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr))
{
  v15 = *MEMORY[0x1E69E9840];
  OutputValue = AGGraphGetOutputValue();
  if (OutputValue)
  {
    v5 = *OutputValue;
    MEMORY[0x1EEE9AC00](OutputValue);
    v6 = one-time initialization token for lockAssertionsAreEnabled;

    if (v6 != -1)
    {
      IsOwner = swift_once();
    }

    if (!lockAssertionsAreEnabled)
    {
      goto LABEL_8;
    }

    if (one-time initialization token for _lock != -1)
    {
      swift_once();
    }

    IsOwner = _MovableLockIsOwner(static Update._lock);
    if ((IsOwner & 1) == 0)
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    else
    {
LABEL_8:
      v8 = MEMORY[0x1EEE9AC00](IsOwner);
      (*(*v5 + 80))(v8);

      AGGraphSetOutputValue();
    }
  }

  else
  {
    a3(&v13);
    v11 = v13;
    v10 = v14;
    swift_beginAccess();
    if (static LayoutTrace.recorder)
    {
      type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for TracingLayoutEngineBox<StyledTextLayoutEngine>, &type metadata for StyledTextLayoutEngine, &protocol witness table for StyledTextLayoutEngine, type metadata accessor for TracingLayoutEngineBox);
      swift_allocObject();
      v12 = specialized TracingLayoutEngineBox.init(_:)(v11, v10);
    }

    else
    {
      type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for LayoutEngineBox<StyledTextLayoutEngine>, &type metadata for StyledTextLayoutEngine, &protocol witness table for StyledTextLayoutEngine, type metadata accessor for LayoutEngineBox);
      v12 = swift_allocObject();
      *(v12 + 16) = v11;
      *(v12 + 24) = v10;
    }

    v13 = v12;
    v14 = 0;
    AGGraphSetOutputValue();
  }

  return result;
}

uint64_t outlined init with copy of GesturePhase<TappableSpatialEvent>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t closure #1 in NSAttributedString.hasLinkAttributes.getter(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, _BYTE *a5)
{
  v8 = MEMORY[0x1E6968FB0];
  v9 = MEMORY[0x1E69E6720];
  type metadata accessor for URL?(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v15[-v11];
  outlined init with copy of GesturePhase<TappableSpatialEvent>(a1, v15, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], type metadata accessor for AnyGesture<()>);
  URL.init(urlValue:)(v15, v12);
  v13 = type metadata accessor for URL();
  LODWORD(a1) = (*(*(v13 - 8) + 48))(v12, 1, v13);
  result = outlined destroy of GesturePhase<TappableSpatialEvent>(v12, &lazy cache variable for type metadata for URL?, v8, v9, type metadata accessor for URL?);
  if (a1 != 1)
  {
    *a5 = 1;
    *a4 = 1;
  }

  return result;
}

void type metadata accessor for URL?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t URL.init(urlValue:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  type metadata accessor for URL?(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22[-v8];
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v22[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = MEMORY[0x1E69E7CA0];
  outlined init with copy of GesturePhase<TappableSpatialEvent>(a1, v22, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], type metadata accessor for AnyGesture<()>);
  if (!v23)
  {
    outlined destroy of GesturePhase<TappableSpatialEvent>(v22, &lazy cache variable for type metadata for Any?, v14 + 8, MEMORY[0x1E69E6720], type metadata accessor for AnyGesture<()>);
    v16 = *(v11 + 56);
    v16(v9, 1, 1, v10);
LABEL_5:
    outlined destroy of GesturePhase<TappableSpatialEvent>(v9, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], type metadata accessor for URL?);
    outlined init with copy of GesturePhase<TappableSpatialEvent>(a1, v22, &lazy cache variable for type metadata for Any?, v14 + 8, MEMORY[0x1E69E6720], type metadata accessor for AnyGesture<()>);
    if (v23)
    {
      if (swift_dynamicCast())
      {
        URL.init(string:)();

        outlined destroy of GesturePhase<TappableSpatialEvent>(a1, &lazy cache variable for type metadata for Any?, v14 + 8, MEMORY[0x1E69E6720], type metadata accessor for AnyGesture<()>);
        if ((*(v11 + 48))(v6, 1, v10) != 1)
        {
          v9 = v6;
          goto LABEL_9;
        }

LABEL_12:
        outlined destroy of GesturePhase<TappableSpatialEvent>(v6, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720], type metadata accessor for URL?);
        v18 = a2;
        v19 = 1;
        return v16(v18, v19, 1, v10);
      }
    }

    else
    {
      outlined destroy of GesturePhase<TappableSpatialEvent>(v22, &lazy cache variable for type metadata for Any?, v14 + 8, MEMORY[0x1E69E6720], type metadata accessor for AnyGesture<()>);
    }

    outlined destroy of GesturePhase<TappableSpatialEvent>(a1, &lazy cache variable for type metadata for Any?, v14 + 8, MEMORY[0x1E69E6720], type metadata accessor for AnyGesture<()>);
    v16(v6, 1, 1, v10);
    goto LABEL_12;
  }

  v15 = swift_dynamicCast();
  v16 = *(v11 + 56);
  v16(v9, v15 ^ 1u, 1, v10);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    goto LABEL_5;
  }

  outlined destroy of GesturePhase<TappableSpatialEvent>(a1, &lazy cache variable for type metadata for Any?, v14 + 8, MEMORY[0x1E69E6720], type metadata accessor for AnyGesture<()>);
LABEL_9:
  v17 = *(v11 + 32);
  v17(v13, v9, v10);
  v17(a2, v13, v10);
  v18 = a2;
  v19 = 0;
  return v16(v18, v19, 1, v10);
}

uint64_t outlined destroy of GesturePhase<TappableSpatialEvent>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void closure #1 in NSAttributedString.maxFontMetrics.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double *a5, double *a6, double *a7, uint64_t a8, char a9, char a10, uint64_t a11)
{
  v40 = *MEMORY[0x1E69E9840];
  v15 = MEMORY[0x1E69E7CA0];
  _s7SwiftUI16TimelineSchedule_pSgWOcTm_0(a1, v37, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, type metadata accessor for HitTestableEvent?);
  if (!v38)
  {
    outlined destroy of TimelineSchedule?(v37, &lazy cache variable for type metadata for Any?, v15 + 8, type metadata accessor for HitTestableEvent?);
    return;
  }

  outlined init with take of Any(v37, v39);
  outlined init with copy of Any(v39, v37);
  type metadata accessor for CTFontRef(0);
  swift_dynamicCast();
  Ascent = CTFontGetAscent(font);
  Descent = CTFontGetDescent(font);
  v18 = *a5;
  CapHeight = CTFontGetCapHeight(font);
  if (v18 > CapHeight)
  {
    CapHeight = v18;
  }

  *a5 = CapHeight;
  v20 = *a6;
  if (*a6 <= Ascent)
  {
    v20 = Ascent;
  }

  *a6 = v20;
  v21 = *a7;
  if (*a7 <= Descent)
  {
    v21 = Descent;
  }

  *a7 = v21;
  if (*(a8 + 8))
  {
    Leading = CTFontGetLeading(font);
  }

  else
  {
    v23 = *a8;
    Leading = CTFontGetLeading(font);
    if (v23 > Leading)
    {
      Leading = v23;
    }
  }

  *a8 = Leading;
  *(a8 + 8) = 0;
  v37[0] = 0.0;
  if (a9 & 1) != 0 || (SymbolicTraits = CTFontGetSymbolicTraits(font), (SymbolicTraits) || (v25 = SymbolicTraits, CTFontGetWeight(), *MEMORY[0x1E6965940] < v26) || (v25 & 0xF0000000) == 0xA0000000 || (v25 & 0xF0000000) == 0x90000000)
  {
    if (CTFontGetLanguageAwareOutsets())
    {
      __swift_destroy_boxed_opaque_existential_1(v39);

      v27 = 0;
      v28 = *a11;
      if (*(a11 + 8) > 0.0)
      {
        v27 = *(a11 + 8);
      }

      v29 = 0;
      v30 = *(a11 + 16);
      if (*(a11 + 24) > 0.0)
      {
        v29 = *(a11 + 24);
      }

      if (v28 <= v37[0])
      {
        v28 = v37[0];
      }

      *a11 = v28;
      *(a11 + 8) = v27;
      v31 = 0.0;
      if (v30 > 0.0)
      {
        v31 = v30;
      }

      *(a11 + 24) = v29;
LABEL_28:
      *(a11 + 16) = v31;
      return;
    }
  }

  if ((a10 & 1) != 0 && (CTFontIsSystemUIFont() & 1) == 0)
  {
    ClippingMetrics = CTFontGetClippingMetrics();

    __swift_destroy_boxed_opaque_existential_1(v39);
    if (ClippingMetrics)
    {
      v33 = *a11;
      v34 = Ascent - Ascent;
      if (Ascent - Ascent < 0.0)
      {
        v34 = 0.0;
      }

      if (v33 <= v34)
      {
        v33 = v34;
      }

      *a11 = v33;
      v31 = *(a11 + 16);
      v35 = Descent - Descent;
      if (Descent - Descent < 0.0)
      {
        v35 = 0.0;
      }

      if (v31 <= v35)
      {
        v31 = v35;
      }

      goto LABEL_28;
    }
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v39);
  }
}

uint64_t NSAttributedString.maxFontMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v38 = 0;
  v39 = 0;
  v37 = 0.0;
  v35 = 0.0;
  v36 = 1;
  v33 = 0u;
  v34 = 0u;
  v4 = [v1 string];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  aBlock = v5;
  v28 = v7;
  if (one-time initialization token for oversizedScalars != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for CharacterSet();
  __swift_project_value_buffer(v8, static NSAttributedString.oversizedScalars);
  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol.rangeOfCharacter(from:options:range:)();
  v10 = v9;

  if (one-time initialization token for semantic != -1)
  {
    swift_once();
  }

  v11 = static Semantics_v5.semantic;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C)
  {
    v12 = dyld_program_sdk_at_least();
  }

  else
  {
    v12 = static Semantics.forced >= v11;
  }

  v13 = v10 ^ 1;
  if (one-time initialization token for kitFont != -1)
  {
    swift_once();
  }

  v14 = static NSAttributedStringKey.kitFont;
  v15 = [v2 length];
  v16 = swift_allocObject();
  *(v16 + 16) = &v39;
  *(v16 + 24) = &v38;
  *(v16 + 32) = &v37;
  *(v16 + 40) = &v35;
  *(v16 + 48) = v13 & 1;
  *(v16 + 49) = v12;
  *(v16 + 56) = &v33;
  v17 = swift_allocObject();
  *(v17 + 16) = partial apply for closure #1 in NSAttributedString.maxFontMetrics.getter;
  *(v17 + 24) = v16;
  v31 = thunk for @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ()partial apply;
  v32 = v17;
  aBlock = MEMORY[0x1E69E9820];
  v28 = 1107296256;
  v29 = thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
  v30 = &block_descriptor_44;
  v18 = _Block_copy(&aBlock);

  [v2 enumerateAttribute:v14 inRange:0 options:v15 usingBlock:{0x100000, v18}];
  _Block_release(v18);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v22 = v38;
    v21 = v39;
    if (v36)
    {
      v23 = 0.0;
    }

    else
    {
      v23 = v35;
    }

    v24 = -v37;
    v25 = v34;
    v26 = v33;

    *a1 = v21;
    *(a1 + 8) = v22;
    *(a1 + 16) = v24;
    *(a1 + 24) = v23;
    *(a1 + 32) = v26;
    *(a1 + 48) = v25;
  }

  return result;
}

uint64_t specialized InterpolatedDisplayList.updateValue()()
{
  v1 = v0;
  v534 = *MEMORY[0x1E69E9840];
  v2 = *(v0 + 80);
  if (v2 != *AGGraphGetValue() >> 1)
  {
    *(v1 + 80) = *AGGraphGetValue() >> 1;

    *(v1 + 56) = 0;
    *(v1 + 88) = 0;
    (*(**v1 + 88))(v3);
  }

  type metadata accessor for ResolvedStyledText();
  Value = AGGraphGetValue();
  LOBYTE(v6) = v5;
  v7 = *Value;
  type metadata accessor for CGSize(0);

  v8 = AGGraphGetValue();
  v9 = *v8;
  v10 = v8[1];
  v11 = AGGraphGetValue();
  v12 = *v11;
  v13 = *(v11 + 8);
  v484 = *v11;
  if (v13)
  {

    swift_retain_n();
    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA17ContentTransitionV5StateVG_Tt1g5(v12, &v531);
  }

  else
  {

    v15 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA17ContentTransitionV5StateVG_Tt0g5(v14);
    if (!v15)
    {
      if (one-time initialization token for defaultValue != -1)
      {
        goto LABEL_472;
      }

      goto LABEL_8;
    }

    v16 = *(v15 + 84);
    v17 = *(v15 + 20);
    v18 = v17 | (v16 << 32);
    v19 = *(v15 + 86);
    v20 = *(v15 + 87);
    v21 = v15[11];
    v22 = *(v15 + 24);
    *&v531 = v15[9];
    BYTE12(v531) = v16;
    DWORD2(v531) = v17;
    v23 = *(v15 + 85);
    BYTE13(v531) = v23;
    BYTE14(v531) = v19;
    HIBYTE(v531) = v20;
    i = v21;
    v533 = v22;
    v24 = v531;
LABEL_9:
    outlined copy of ContentTransition.Storage(v24, v18, v23);
  }

  v508 = ++static DisplayList.Version.lastValue;
  v485 = v13;
  if (!*(v1 + 56))
  {
    goto LABEL_19;
  }

  if ((v6 & 1) == 0 || (ResolvedStyledText.requiresTransition(to:)(v7), (v25 & 1) == 0))
  {
    if (*(v1 + 64) == v9 && *(v1 + 72) == v10)
    {

      goto LABEL_21;
    }
  }

  AGGraphClearUpdate();
  v27 = *(v1 + 48);
  v528 = *(v1 + 32);
  *v529 = v27;
  v28 = *(v1 + 80);
  *&v529[16] = *(v1 + 64);
  v530 = v28;
  v29 = *(v1 + 16);
  v526 = *v1;
  v527 = v29;
  outlined init with copy of ModifiedContent<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>, GlassEffectContainerModifier>(&v526, &v521, &lazy cache variable for type metadata for InterpolatedDisplayList<ResolvedStyledText>, type metadata accessor for ResolvedStyledText, &protocol witness table for ResolvedStyledText, type metadata accessor for InterpolatedDisplayList);
  v30 = *AGGraphGetValue();

  outlined destroy of ModifiedContent<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>, GlassEffectContainerModifier>(&v526, &lazy cache variable for type metadata for InterpolatedDisplayList<ResolvedStyledText>, type metadata accessor for ResolvedStyledText, &protocol witness table for ResolvedStyledText, type metadata accessor for InterpolatedDisplayList);
  AGGraphSetUpdate();
  v31 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA026DisablesContentTransitionsF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(v30);
  v32 = *&v529[8];

  if ((v31 & 1) == 0)
  {
    *(v1 + 88) = v508;
    if (BYTE13(v531))
    {
      goto LABEL_414;
    }

    v43 = v531;
    if ((v531 & 0x8000000000) == 0)
    {
      goto LABEL_414;
    }

    v57 = DWORD2(v531) | (BYTE12(v531) << 32);
    if (v531 ^ 0x8000000000 | DWORD2(v531) & 0xFFFFFFLL)
    {
      goto LABEL_413;
    }

    v58 = v7;
    if (one-time initialization token for v4 != -1)
    {
      swift_once();
    }

    v59 = static Semantics.v4;
    if (one-time initialization token for forced != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (byte_1ED53C51C == 1)
    {
      if (dyld_program_sdk_at_least())
      {
LABEL_38:
        v60 = 0;
        v61 = 0;
        v62 = 0x302000000;
        v7 = v58;
        goto LABEL_406;
      }
    }

    else if (static Semantics.forced >= v59)
    {
      goto LABEL_38;
    }

    v7 = v58;
    if (one-time initialization token for identity != -1)
    {
      swift_once();
    }

    v60 = static ContentTransition.identity;
    v62 = dword_1EAB144D0 | (word_1EAB144D4 << 32);
    v61 = HIBYTE(word_1EAB144D4);
    outlined copy of ContentTransition.Storage(static ContentTransition.identity, v62, SHIBYTE(word_1EAB144D4));
LABEL_406:
    outlined consume of ContentTransition.Storage(v43, v57, 0);
    *&v531 = v60;
    DWORD2(v531) = v62;
    BYTE12(v531) = BYTE4(v62);
    BYTE13(v531) = v61;
    BYTE14(v531) = 1;
    v384 = (v60 & 0x8000000000) == 0 || v61 != 0;
    v43 = v60;
    v13 = v485;
    if (!v384)
    {
      goto LABEL_413;
    }

    goto LABEL_414;
  }

  if (!v32)
  {
LABEL_19:
    *(v1 + 88) = v508;
  }

LABEL_21:

  v33 = 0;
  v499 = 0;
  for (i = 0; ; v33 = i)
  {
    *(v1 + 56) = v7;
    *(v1 + 64) = v9;
    *(v1 + 72) = v10;
    v34 = v531;
    v35 = DWORD2(v531) | (BYTE12(v531) << 32);
    v36 = BYTE13(v531);
    v37 = BYTE14(v531);
    v526 = v531;
    *&v527 = v33;
    DWORD2(v527) = v533;

    ContentTransition.State.rasterizationOptions.getter(&v514);
    if ((*(v7 + 260) & 8) != 0)
    {
      v516 |= 1u;
    }

    v7 = *v1;
    v38 = *(v1 + 88);
    if (v38)
    {
      LODWORD(v38) = (2 * ((33 * (v38 >> 16)) ^ v38)) | 1;
    }

    LOWORD(v518) = v38;
    *&v526 = v34;
    BYTE12(v526) = BYTE4(v35);
    DWORD2(v526) = v35;
    BYTE13(v526) = v36;
    BYTE14(v526) = v37;
    LODWORD(v6) = *(v1 + 44);
    outlined copy of ContentTransition.Storage(v34, v35, v36);
    v39 = 1.0 / *AGGraphGetValue();
    LODWORD(v521) = v514;
    WORD2(v521) = v515;
    DWORD2(v521) = v516;
    BYTE12(v521) = v517;
    (*(*v7 + 128))(&v518, &v526, v33, v499, &v521, *(v1 + 54), v39);

    outlined consume of ContentTransition.Storage(v526, DWORD2(v526) | (BYTE12(v526) << 32), SBYTE13(v526));
    type metadata accessor for CGPoint(0);
    v40 = AGGraphGetValue();
    v41 = *v40;
    v42 = v40[1];
    v43 = *(v1 + 20);
    v44 = AGGraphGetValue();
    v9 = v41 - *v44;
    v10 = v42 - v44[1];
    v45 = 0.0;
    v46 = 0.0;
    v47 = v9;
    v48 = v10;
    if ((*(v1 + 52) & 1) == 0)
    {
      v49 = AGGraphGetValue();
      v50 = *v49;
      v51 = v49[1];
      v52 = *AGGraphGetValue();
      v53 = v52 * 0.5;
      v54 = v50 + v52 * 0.5;
      if (v52 == 1.0)
      {
        v55 = floor(v54);
        v56 = floor(v51 + v53);
      }

      else
      {
        v55 = v52 * floor(v54 / v52);
        v56 = v52 * floor((v51 + v53) / v52);
      }

      v63 = AGGraphGetValue();
      v47 = v55 - *v63;
      v48 = v56 - v63[1];
      v45 = v47 - v9;
      v46 = v48 - v10;
    }

    if (*(v1 + 48) == *MEMORY[0x1E698D3F8])
    {
      break;
    }

    v67 = AGGraphGetValue();
    v64 = *v67;
    v66 = *(v67 + 8);
    v68 = *(v67 + 12);
    v518 = *v67;
    v519 = v66;
    v520 = v68;
    if (*(v1 + 53))
    {
      v65 = v68 << 32;

      goto LABEL_46;
    }

    v506 = *(v1 + 32);

    if ((v66 & 0x10) == 0)
    {
      goto LABEL_47;
    }

    v519 = 0;
    v520 = 0;
    v473 = *(v64 + 2);
    if (!v473)
    {
      goto LABEL_47;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v64 = specialized _ArrayBuffer._consumeAndCreateNew()(v64);
    }

    if (v508)
    {
      v71 = 2 * ((33 * (v508 >> 16)) ^ v508) + 1;
    }

    else
    {
      LOWORD(v71) = 0;
    }

    v447 = v71;
    if (!*(v64 + 2))
    {
      goto LABEL_446;
    }

    v72 = 0;
    v487 = 0;
    v491 = 0;
    v472 = v64 + 32;
    v73 = 1;
    v507 = v7;
    v420 = v9;
    v421 = v47;
    v462 = v48;
    v446 = v64;
    while (1)
    {
      v486 = v73;
      v74 = &v472[80 * v72];
      v75 = *(v74 + 8);
      if ((v75 >> 30) - 2 < 2)
      {
        v76 = v7;
        goto LABEL_391;
      }

      v77 = *(v74 + 5);
      v78 = *(v74 + 6);
      v79 = *(v74 + 7);
      if (v75 >> 30)
      {
        break;
      }

      v76 = v7;
      if (v77 >> 60 != 11)
      {
        v64 = v446;
        goto LABEL_391;
      }

      v434 = v74 + 7;
      v455 = v72;
      v457 = &v472[80 * v72];
      v1 = *((v77 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v80 = *((v77 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v431 = *((v77 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
      v428 = *((v77 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
      v425 = *((v77 & 0xFFFFFFFFFFFFFFFLL) + 0x34);
      v422 = *((v77 & 0xFFFFFFFFFFFFFFFLL) + 0x35);
      v417 = *((v77 & 0xFFFFFFFFFFFFFFFLL) + 0x38);
      v414 = *((v77 & 0xFFFFFFFFFFFFFFFLL) + 0x3C);
      if ((*((v77 & 0xFFFFFFFFFFFFFFFLL) + 0x18) & 0x10) == 0)
      {
        v503 = *((v77 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v495 = *((v77 & 0xFFFFFFFFFFFFFFFLL) + 0x1C);
        v81 = *(v74 + 5);
        v6 = *(v74 + 6);
        outlined copy of DisplayList.Item.Value(v77, v78, v79, v75);
        outlined copy of DisplayList.Item.Value(v81, v6, v79, v75);

        v7 = 0;
        goto LABEL_382;
      }

      v172 = *v74;
      v173 = v74[1];
      v7 = *(v1 + 16);
      v174 = *(v74 + 5);
      v175 = *(v74 + 6);
      outlined copy of DisplayList.Item.Value(v77, v78, v79, v75);
      v454 = v174;
      v445 = v175;
      v403 = v75;
      outlined copy of DisplayList.Item.Value(v174, v175, v79, v75);

      v477 = v7;
      if (v7)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v1 = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
        }

        v7 = v76;
        if (*(v1 + 16))
        {
          v176 = 0;
          v177 = 0;
          v503 = 0;
          LODWORD(v6) = 0;
          v439 = v48 + v173;
          v442 = v421 + v172;
          v468 = (v1 + 32);
          v178 = 1;
          v482 = v1;
          v501 = v79;
          v405 = v10;
          do
          {
            v489 = v178;
            v179 = &v468[80 * v176];
            v180 = *(v179 + 8);
            v493 = v6;
            v497 = v177;
            if ((v180 >> 30) - 2 < 2)
            {
              goto LABEL_232;
            }

            v181 = *(v179 + 5);
            v182 = *(v179 + 6);
            v183 = *(v179 + 7);
            v464 = v176;
            if (v180 >> 30 == 1)
            {
              v1 = HIDWORD(v182);
              *&v521 = *(v179 + 7);
              WORD4(v521) = v180;
              HIDWORD(v521) = HIDWORD(v180);
              v184 = v442 + *v179;
              v185 = v439 + *(v179 + 1);
              v460 = v181;
              if ((v180 & 0x10) != 0)
              {
                LOBYTE(v510) = 0;
                WORD4(v521) = 0;
                HIDWORD(v521) = 0;
                v195 = *(v183 + 2);
                v449 = v182;
                outlined copy of DisplayList.Effect(v181, v182, SBYTE4(v182));

                if (v195)
                {
                  if (swift_isUniquelyReferenced_nonNull_native())
                  {
                    if (!*(v183 + 2))
                    {
                      goto LABEL_438;
                    }
                  }

                  else
                  {
                    v183 = specialized _ArrayBuffer._consumeAndCreateNew()(v183);
                    if (!*(v183 + 2))
                    {
                      goto LABEL_438;
                    }
                  }

                  v13 = 0;
                  v196 = 0;
                  v197 = 0;
                  v6 = (v183 + 32);
                  v7 = v195 - 1;
                  while (1)
                  {
                    closure #1 in DisplayList.InterpolatorGroup.rewriteDisplayList(_:time:contentOrigin:contentOffset:version:)(v6, v507, v506, v508, &v510, v184, v185, v45, v46);
                    if (v13 >= *(v183 + 2))
                    {
                      goto LABEL_441;
                    }

                    v526 = *v6;
                    v198 = *(v6 + 16);
                    v199 = *(v6 + 32);
                    v200 = *(v6 + 48);
                    *&v529[12] = *(v6 + 60);
                    v528 = v199;
                    *v529 = v200;
                    v527 = v198;
                    DisplayList.Item.features.getter(&v511);
                    if (v13 >= *(v183 + 2))
                    {
                      goto LABEL_443;
                    }

                    v196 |= v511;
                    v526 = *v6;
                    v201 = *(v6 + 16);
                    v202 = *(v6 + 32);
                    v203 = *(v6 + 48);
                    *&v529[12] = *(v6 + 60);
                    v528 = v202;
                    *v529 = v203;
                    v527 = v201;
                    DisplayList.Item.properties.getter(&v511);
                    v197 |= v511;
                    if (v7 == v13)
                    {
                      *&v521 = v183;
                      HIDWORD(v521) = v197;
                      WORD4(v521) = v196;
                      v188 = v510;
                      v13 = v485;
                      v7 = v507;
                      v176 = v464;
                      goto LABEL_202;
                    }

                    ++v13;
                    v6 += 80;
                    if (v13 >= *(v183 + 2))
                    {
                      goto LABEL_438;
                    }
                  }
                }

                v188 = 0;
LABEL_202:
                v187 = v449;
              }

              else
              {
                v186 = v182;
                outlined copy of DisplayList.Effect(v181, v182, SBYTE4(v182));

                v187 = v186;
                v188 = 0;
              }

              v79 = v501;
              if (v1 == 18)
              {
                v6 = v460;
                if (v7 == v460)
                {
                  v227 = *v179;
                  v228 = *(v179 + 1);
                  v229 = *(v179 + 2);
                  v230 = *(v179 + 3);
                  *&v526 = v508;
                  v231 = v187;
                  v232 = (*(*v7 + 136))(v227, v228, v229, v230, v184, v185, v45, v46);
                  outlined consume of DisplayList.Effect(v460, v231, 18);
                  v6 = 0;
                  v187 = 0;
                  v188 |= v232;
                  LOBYTE(v1) = 20;
                }

                else
                {
                  LOBYTE(v1) = 18;
                }
              }

              else
              {
                v6 = v460;
                if (v1 == 7)
                {
                  v451 = v187;
                  v1 = *(v460 + 16);
                  v217 = *(v460 + 24);
                  v412 = *(v460 + 32);
                  if ((v217 & 0x10) != 0)
                  {
                    LOBYTE(v510) = 0;
                    v219 = *(v1 + 16);

                    if (v219)
                    {
                      if (swift_isUniquelyReferenced_nonNull_native())
                      {
                        if (!*(v1 + 16))
                        {
                          goto LABEL_457;
                        }
                      }

                      else
                      {
                        v1 = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
                        if (!*(v1 + 16))
                        {
                          goto LABEL_457;
                        }
                      }

                      v13 = 0;
                      v217 = 0;
                      v218 = 0;
                      v6 = v1 + 32;
                      v7 = v219 - 1;
                      while (1)
                      {
                        closure #1 in DisplayList.InterpolatorGroup.rewriteDisplayList(_:time:contentOrigin:contentOffset:version:)(v6, v507, v506, v508, &v510, v184, v185, v45, v46);
                        if (v13 >= *(v1 + 16))
                        {
                          break;
                        }

                        v526 = *v6;
                        v220 = *(v6 + 16);
                        v221 = *(v6 + 32);
                        v222 = *(v6 + 48);
                        *&v529[12] = *(v6 + 60);
                        v528 = v221;
                        *v529 = v222;
                        v527 = v220;
                        DisplayList.Item.features.getter(&v511);
                        if (v13 >= *(v1 + 16))
                        {
                          goto LABEL_464;
                        }

                        v217 |= v511;
                        v526 = *v6;
                        v223 = *(v6 + 16);
                        v224 = *(v6 + 32);
                        v225 = *(v6 + 48);
                        *&v529[12] = *(v6 + 60);
                        v528 = v224;
                        *v529 = v225;
                        v527 = v223;
                        DisplayList.Item.properties.getter(&v511);
                        v218 |= v511;
                        if (v7 == v13)
                        {
                          v188 |= v510;
                          v13 = v485;
                          v7 = v507;
                          v176 = v464;
                          goto LABEL_228;
                        }

                        ++v13;
                        v6 += 80;
                        if (v13 >= *(v1 + 16))
                        {
                          goto LABEL_457;
                        }
                      }

LABEL_463:
                      __break(1u);
LABEL_464:
                      __break(1u);
LABEL_465:
                      __break(1u);
                      goto LABEL_466;
                    }

                    v217 = 0;
                    v218 = 0;
LABEL_228:
                    v6 = v460;
                  }

                  else
                  {
                    v218 = *(v460 + 28);
                  }

                  v239 = swift_allocObject();
                  *(v239 + 16) = v1;
                  *(v239 + 24) = v217;
                  *(v239 + 28) = v218;
                  *(v239 + 32) = v412;
                  outlined consume of DisplayList.Effect(v6, v451, 7);
                  v187 = 0;
                  v6 = v239;
                  LOBYTE(v1) = 7;
                  v79 = v501;
                }
              }

              v240 = v521;
              v241 = v187 | (v1 << 32);
              v242 = WORD4(v521) | (HIDWORD(v521) << 32) | 0x40000000;
              v243 = *(v179 + 5);
              v244 = *(v179 + 6);
              v245 = *(v179 + 7);
              v246 = *(v179 + 8);
              *(v179 + 5) = v6;
              *(v179 + 6) = v241;
              *(v179 + 7) = v240;
              *(v179 + 8) = v242;
              outlined consume of DisplayList.Item.Value(v243, v244, v245, v246);
              v1 = v482;
              if (v188)
              {
                goto LABEL_231;
              }
            }

            else
            {
              if (v181 >> 60 != 11)
              {
                v79 = v501;
                goto LABEL_232;
              }

              v10 = v80;
              v1 = *((v181 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
              v189 = *((v181 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
              v190 = *((v181 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
              v191 = *((v181 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
              v410 = *((v181 & 0xFFFFFFFFFFFFFFFLL) + 0x34);
              v411 = *((v181 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
              v408 = *((v181 & 0xFFFFFFFFFFFFFFFLL) + 0x38);
              v409 = *((v181 & 0xFFFFFFFFFFFFFFFLL) + 0x35);
              v407 = *((v181 & 0xFFFFFFFFFFFFFFFLL) + 0x3C);
              if ((v189 & 0x10) != 0)
              {
                v204 = *v179;
                v205 = *(v179 + 1);
                LOBYTE(v511) = 0;
                v206 = *(v1 + 16);
                v207 = v180;
                v6 = v181;
                v208 = v182;
                outlined copy of DisplayList.Item.Value(v181, v182, v183, v180);
                v461 = v6;
                v450 = v208;
                v404 = v207;
                outlined copy of DisplayList.Item.Value(v6, v208, v183, v207);

                if (v206)
                {
                  if (swift_isUniquelyReferenced_nonNull_native())
                  {
                    if (!*(v1 + 16))
                    {
                      goto LABEL_449;
                    }
                  }

                  else
                  {
                    v1 = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
                    if (!*(v1 + 16))
                    {
                      goto LABEL_449;
                    }
                  }

                  v13 = 0;
                  v189 = 0;
                  v192 = 0;
                  v209 = v442 + v204;
                  v210 = v439 + v205;
                  v6 = v1 + 32;
                  v7 = v206 - 1;
                  while (1)
                  {
                    closure #1 in DisplayList.InterpolatorGroup.rewriteDisplayList(_:time:contentOrigin:contentOffset:version:)(v6, v507, v506, v508, &v511, v209, v210, v45, v46);
                    if (v13 >= *(v1 + 16))
                    {
                      goto LABEL_455;
                    }

                    v526 = *v6;
                    v211 = *(v6 + 16);
                    v212 = *(v6 + 32);
                    v213 = *(v6 + 48);
                    *&v529[12] = *(v6 + 60);
                    v528 = v212;
                    *v529 = v213;
                    v527 = v211;
                    DisplayList.Item.features.getter(&v521);
                    if (v13 >= *(v1 + 16))
                    {
                      goto LABEL_456;
                    }

                    v189 |= v521;
                    v526 = *v6;
                    v214 = *(v6 + 16);
                    v215 = *(v6 + 32);
                    v216 = *(v6 + 48);
                    *&v529[12] = *(v6 + 60);
                    v528 = v215;
                    *v529 = v216;
                    v527 = v214;
                    DisplayList.Item.properties.getter(&v521);
                    v192 |= v521;
                    if (v7 == v13)
                    {
                      v226 = v511;
                      v13 = v485;
                      goto LABEL_222;
                    }

                    ++v13;
                    v6 += 80;
                    if (v13 >= *(v1 + 16))
                    {
                      goto LABEL_449;
                    }
                  }
                }

                v226 = 0;
                v189 = 0;
                v192 = 0;
LABEL_222:
                v406 = v226;
                v193 = v461;
                v194 = v450;
                LODWORD(v6) = v404;
              }

              else
              {
                v192 = *((v181 & 0xFFFFFFFFFFFFFFFLL) + 0x1C);
                LODWORD(v6) = *(v179 + 8);
                v193 = *(v179 + 5);
                v194 = *(v179 + 6);
                outlined copy of DisplayList.Item.Value(v181, v182, v183, v180);
                outlined copy of DisplayList.Item.Value(v193, v194, v183, v6);

                v406 = 0;
              }

              v233 = swift_allocObject();
              *(v233 + 16) = v1;
              *(v233 + 24) = v189;
              *(v233 + 28) = v192;
              *(v233 + 32) = v190;
              *(v233 + 40) = v191;
              *(v233 + 48) = v411;
              *(v233 + 52) = v410;
              *(v233 + 53) = v409;
              *(v233 + 56) = v408;
              *(v233 + 60) = v407;
              outlined consume of DisplayList.Item.Value(v193, v194, v183, v6);
              v234 = v447;
              if ((v406 & 1) == 0)
              {
                v234 = v194;
              }

              v235 = *(v179 + 5);
              v236 = *(v179 + 6);
              v237 = *(v179 + 7);
              v238 = *(v179 + 8);
              *(v179 + 5) = v233 | 0xB000000000000000;
              *(v179 + 6) = v234;
              *(v179 + 7) = 0;
              *(v179 + 8) = 0;
              outlined consume of DisplayList.Item.Value(v235, v236, v237, v238);
              outlined consume of DisplayList.Item.Value(v193, v194, v183, v6);
              v48 = v462;
              v79 = v501;
              v80 = v10;
              v10 = v405;
              v1 = v482;
              v176 = v464;
              v7 = v507;
              if (v406)
              {
LABEL_231:
                *(v179 + 4) = v508;
                v493 = 1;
              }
            }

LABEL_232:
            if (v176 >= *(v1 + 16))
            {
              goto LABEL_461;
            }

            v522 = *(v179 + 1);
            v523 = *(v179 + 2);
            *v524 = *(v179 + 3);
            *&v524[12] = *(v179 + 60);
            v521 = *v179;
            DisplayList.Item.features.getter(&v511);
            if (v176 >= *(v1 + 16))
            {
              goto LABEL_462;
            }

            v247 = *(v179 + 3);
            v248 = *(v179 + 60);
            v249 = *(v179 + 1);
            v528 = *(v179 + 2);
            *&v529[12] = v248;
            v250 = *v179;
            *v529 = v247;
            v526 = v250;
            v527 = v249;
            v251 = *(&v528 + 1);
            v252 = *&v529[20];
            v253 = *&v529[16] >> 30;
            v503 |= v511;
            if (*&v529[16] >> 30 > 1u)
            {
              v177 = v497;
              v254 = v489;
              if (v253 != 2)
              {
                outlined destroy of DisplayList.Item(&v526);
                v1 = v482;
                if (v489 == v477)
                {
                  goto LABEL_379;
                }

                goto LABEL_173;
              }

              v256 = *(*(&v528 + 1) + 16);
              if (!v256)
              {
                v255 = 0;
LABEL_249:
                v1 = v482;
                goto LABEL_260;
              }

              v1 = v482;
              if (v256 > 7)
              {
                v257 = v256 & 0x7FFFFFFFFFFFFFF8;
                v261 = (*(&v528 + 1) + 188);
                v262 = 0uLL;
                v263 = v256 & 0x7FFFFFFFFFFFFFF8;
                v264 = 0uLL;
                do
                {
                  v265.i32[0] = *(v261 - 30);
                  v265.i32[1] = *(v261 - 20);
                  v265.i32[2] = *(v261 - 10);
                  v265.i32[3] = *v261;
                  v266.i32[0] = v261[10];
                  v266.i32[1] = v261[20];
                  v266.i32[2] = v261[30];
                  v266.i32[3] = v261[40];
                  v262 = vorrq_s8(v265, v262);
                  v264 = vorrq_s8(v266, v264);
                  v261 += 80;
                  v263 -= 8;
                }

                while (v263);
                v267 = vorrq_s8(v264, v262);
                *v267.i8 = vorr_s8(*v267.i8, *&vextq_s8(v267, v267, 8uLL));
                v255 = v267.i32[0] | v267.i32[1];
                if (v256 == v257)
                {
                  goto LABEL_260;
                }
              }

              else
              {
                v255 = 0;
                v257 = 0;
              }

              v268 = v256 - v257;
              v269 = (*(&v528 + 1) + 40 * v257 + 68);
              do
              {
                v270 = *v269;
                v269 += 10;
                v255 |= v270;
                --v268;
              }

              while (v268);
            }

            else
            {
              v177 = v497;
              if (v253)
              {
                v258 = v529[4];
                if (v529[4] == 2)
                {
                  outlined init with copy of DisplayList.Item(&v526, &v521);

                  v260 = v251;
                }

                else
                {
                  v259 = v529[0];
                  if (v529[4] == 7)
                  {
                    v260 = *(*(&v528 + 1) + 28);
                    outlined init with copy of DisplayList.Item(&v526, &v521);
                    outlined consume of DisplayList.Effect(v251, v259, 7);
                  }

                  else if (v529[4] == 18)
                  {
                    (*(**(&v528 + 1) + 120))(&v511);
                    outlined init with copy of DisplayList.Item(&v526, &v521);
                    outlined consume of DisplayList.Effect(v251, v259, 18);

                    v260 = v511;
                  }

                  else
                  {
                    outlined init with copy of DisplayList.Item(&v526, &v521);
                    outlined consume of DisplayList.Effect(v251, v259, v258);

                    v260 = 0;
                  }
                }

                v255 = v260 | v252;
                v1 = v482;
                v254 = v489;
                goto LABEL_260;
              }

              v254 = v489;
              if (*(&v528 + 1) >> 60 == 6)
              {
                v255 = *((*(&v528 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x1C);
                goto LABEL_249;
              }

              v1 = v482;
              if (*(&v528 + 1) >> 60 != 11)
              {
                goto LABEL_261;
              }

              v255 = *((*(&v528 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x1C);
            }

LABEL_260:
            v177 |= v255;
LABEL_261:
            if (v254 == v477)
            {
LABEL_379:
              v495 = v177;
              v76 = v7;
              v47 = v421;
              v81 = v454;
              v6 = v445;
              LODWORD(v75) = v403;
              v7 = v493;
              goto LABEL_382;
            }

LABEL_173:
            v176 = v254;
            v178 = v254 + 1;
            LODWORD(v6) = v493;
          }

          while (v254 < *(v1 + 16));
        }

LABEL_450:
        __break(1u);
LABEL_451:
        __break(1u);
LABEL_452:
        __break(1u);
LABEL_453:
        __break(1u);
LABEL_454:
        __break(1u);
LABEL_455:
        __break(1u);
LABEL_456:
        __break(1u);
LABEL_457:
        __break(1u);
        goto LABEL_458;
      }

      v503 = 0;
      v495 = 0;
      v47 = v421;
      v81 = v174;
      v6 = v445;
LABEL_382:
      v370 = swift_allocObject();
      *(v370 + 16) = v1;
      *(v370 + 24) = v503;
      *(v370 + 28) = v495;
      *(v370 + 32) = v80;
      *(v370 + 40) = v431;
      *(v370 + 48) = v428;
      *(v370 + 52) = v425;
      *(v370 + 53) = v422;
      *(v370 + 56) = v417;
      *(v370 + 60) = v414;
      outlined consume of DisplayList.Item.Value(v81, v6, v79, v75);
      v371 = v447;
      if ((v7 & 1) == 0)
      {
        v371 = v6;
      }

      v372 = *(v457 + 5);
      v373 = *(v457 + 6);
      v374 = *(v457 + 7);
      v375 = *(v457 + 8);
      *(v457 + 5) = v370 | 0xB000000000000000;
      *(v457 + 6) = v371;
      *v434 = 0;
      v434[1] = 0;
      outlined consume of DisplayList.Item.Value(v372, v373, v374, v375);
      outlined consume of DisplayList.Item.Value(v81, v6, v79, v75);
      v74 = v457;
      v72 = v455;
      v64 = v446;
      if (v7)
      {
        goto LABEL_390;
      }

LABEL_391:
      if (v72 >= *(v64 + 2))
      {
        goto LABEL_459;
      }

      v527 = *(v74 + 1);
      v528 = *(v74 + 2);
      *v529 = *(v74 + 3);
      *&v529[12] = *(v74 + 60);
      v526 = *v74;
      v382 = v72;
      v6 = v74;
      DisplayList.Item.features.getter(&v521);
      if (v382 >= *(v64 + 2))
      {
        goto LABEL_460;
      }

      v491 |= v521;
      v527 = *(v6 + 16);
      v528 = *(v6 + 32);
      *v529 = *(v6 + 48);
      *&v529[12] = *(v6 + 60);
      v526 = *v6;
      v43 = &v526;
      DisplayList.Item.properties.getter(&v521);
      if (v486 == v473)
      {
        v518 = v64;
        v520 = v521 | v487;
        v519 = v491;
        goto LABEL_47;
      }

      v487 |= v521;
      v72 = v486;
      v73 = v486 + 1;
      v7 = v76;
      if (v486 >= *(v64 + 2))
      {
        goto LABEL_446;
      }
    }

    v456 = v72;
    v458 = &v472[80 * v72];
    v511 = *(v74 + 7);
    v512 = v75;
    v513 = HIDWORD(v75);
    v82 = v47 + *v74;
    v463 = v48 + v74[1];
    v453 = v77;
    v444 = v78;
    if ((v75 & 0x10) != 0)
    {
      v512 = 0;
      v513 = 0;
      v84 = *(v79 + 2);
      v415 = HIDWORD(v78);
      outlined copy of DisplayList.Effect(v77, v78, SBYTE4(v78));

      v492 = v84;
      if (v84)
      {
        v6 = v7;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          if (*(v79 + 2))
          {
            goto LABEL_69;
          }

LABEL_439:
          __break(1u);
LABEL_440:
          __break(1u);
LABEL_441:
          __break(1u);
LABEL_442:
          __break(1u);
LABEL_443:
          __break(1u);
LABEL_444:
          __break(1u);
LABEL_445:
          __break(1u);
LABEL_446:
          __break(1u);
LABEL_447:
          __break(1u);
LABEL_448:
          __break(1u);
LABEL_449:
          __break(1u);
          goto LABEL_450;
        }

        v79 = specialized _ArrayBuffer._consumeAndCreateNew()(v79);
        if (!*(v79 + 2))
        {
          goto LABEL_439;
        }

LABEL_69:
        v1 = 0;
        v504 = 0;
        v85 = 0;
        v459 = 0;
        v488 = v79 + 32;
        v86 = 1;
        v500 = v79;
        while (2)
        {
          v87 = &v488[80 * v1];
          v7 = *(v87 + 8);
          if ((v7 >> 30) - 2 < 2)
          {
LABEL_71:
            v7 = v6;
            goto LABEL_129;
          }

          v496 = v85;
          v89 = *(v87 + 5);
          v88 = *(v87 + 6);
          v90 = *(v87 + 7);
          if (v7 >> 30 != 1)
          {
            if (v89 >> 60 != 11)
            {
              v85 = v496;
              goto LABEL_71;
            }

            v474 = v86;
            v481 = v1;
            v9 = v82;
            v1 = *((v89 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
            v95 = *((v89 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
            v96 = *((v89 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
            v97 = *((v89 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
            v435 = *((v89 & 0xFFFFFFFFFFFFFFFLL) + 0x34);
            v429 = *((v89 & 0xFFFFFFFFFFFFFFFLL) + 0x38);
            v432 = *((v89 & 0xFFFFFFFFFFFFFFFLL) + 0x35);
            v426 = *((v89 & 0xFFFFFFFFFFFFFFFLL) + 0x3C);
            v437 = *((v89 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
            if ((v95 & 0x10) != 0)
            {
              v108 = *v87;
              v109 = *(v87 + 1);
              LOBYTE(v510) = 0;
              v110 = *(v1 + 16);
              v111 = v88;
              outlined copy of DisplayList.Item.Value(v89, v88, v90, v7);
              v466 = v111;
              v418 = v7;
              outlined copy of DisplayList.Item.Value(v89, v111, v90, v7);

              if (v110)
              {
                if (swift_isUniquelyReferenced_nonNull_native())
                {
                  if (!*(v1 + 16))
                  {
                    goto LABEL_437;
                  }
                }

                else
                {
                  v1 = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
                  if (!*(v1 + 16))
                  {
                    goto LABEL_437;
                  }
                }

                v13 = 0;
                v95 = 0;
                v98 = 0;
                v112 = v9 + v108;
                v113 = v463 + v109;
                v6 = v1 + 32;
                v7 = v110 - 1;
                while (1)
                {
                  closure #1 in DisplayList.InterpolatorGroup.rewriteDisplayList(_:time:contentOrigin:contentOffset:version:)(v6, v507, v506, v508, &v510, v112, v113, v45, v46);
                  if (v13 >= *(v1 + 16))
                  {
                    goto LABEL_440;
                  }

                  v526 = *v6;
                  v114 = *(v6 + 16);
                  v115 = *(v6 + 32);
                  v116 = *(v6 + 48);
                  *&v529[12] = *(v6 + 60);
                  v528 = v115;
                  *v529 = v116;
                  v527 = v114;
                  DisplayList.Item.features.getter(&v521);
                  if (v13 >= *(v1 + 16))
                  {
                    goto LABEL_442;
                  }

                  v95 |= v521;
                  v526 = *v6;
                  v117 = *(v6 + 16);
                  v118 = *(v6 + 32);
                  v119 = *(v6 + 48);
                  *&v529[12] = *(v6 + 60);
                  v528 = v118;
                  *v529 = v119;
                  v527 = v117;
                  DisplayList.Item.properties.getter(&v521);
                  v98 |= v521;
                  if (v7 == v13)
                  {
                    break;
                  }

                  ++v13;
                  v6 += 80;
                  if (v13 >= *(v1 + 16))
                  {
                    goto LABEL_437;
                  }
                }

                v130 = v510;
                v6 = v507;
              }

              else
              {
                v130 = 0;
                v95 = 0;
                v98 = 0;
              }

              v423 = v130;
              v48 = v462;
              v99 = v466;
              LODWORD(v7) = v418;
            }

            else
            {
              v98 = *((v89 & 0xFFFFFFFFFFFFFFFLL) + 0x1C);
              v99 = *(v87 + 6);
              outlined copy of DisplayList.Item.Value(v89, v88, v90, v7);
              outlined copy of DisplayList.Item.Value(v89, v99, v90, v7);

              v423 = 0;
            }

            v137 = swift_allocObject();
            *(v137 + 16) = v1;
            *(v137 + 24) = v95;
            *(v137 + 28) = v98;
            *(v137 + 32) = v96;
            *(v137 + 40) = v97;
            *(v137 + 48) = v437;
            *(v137 + 52) = v435;
            *(v137 + 53) = v432;
            *(v137 + 56) = v429;
            *(v137 + 60) = v426;
            outlined consume of DisplayList.Item.Value(v89, v99, v90, v7);
            v138 = v447;
            if ((v423 & 1) == 0)
            {
              v138 = v99;
            }

            v139 = *(v87 + 5);
            v140 = *(v87 + 6);
            v141 = *(v87 + 7);
            v142 = *(v87 + 8);
            *(v87 + 5) = v137 | 0xB000000000000000;
            *(v87 + 6) = v138;
            *(v87 + 7) = 0;
            *(v87 + 8) = 0;
            outlined consume of DisplayList.Item.Value(v139, v140, v141, v142);
            outlined consume of DisplayList.Item.Value(v89, v99, v90, v7);
            v82 = v9;
            v9 = v420;
            v47 = v421;
            v85 = v496;
            v86 = v474;
            v1 = v481;
            v13 = v485;
            v7 = v6;
            if (v423)
            {
              goto LABEL_128;
            }

            goto LABEL_129;
          }

          v480 = v1;
          v1 = HIDWORD(v88);
          *&v521 = *(v87 + 7);
          WORD4(v521) = v7;
          HIDWORD(v521) = HIDWORD(v7);
          v91 = v82 + *v87;
          v92 = v463 + *(v87 + 1);
          if ((v7 & 0x10) != 0)
          {
            v509 = 0;
            WORD4(v521) = 0;
            HIDWORD(v521) = 0;
            v94 = *(v90 + 2);
            v465 = v88;
            outlined copy of DisplayList.Effect(v89, v88, SBYTE4(v88));

            if (v94)
            {
              v448 = v89;
              v475 = v86;
              if (swift_isUniquelyReferenced_nonNull_native())
              {
                if (!*(v90 + 2))
                {
                  goto LABEL_434;
                }
              }

              else
              {
                v90 = specialized _ArrayBuffer._consumeAndCreateNew()(v90);
                if (!*(v90 + 2))
                {
LABEL_434:
                  __break(1u);
LABEL_435:
                  __break(1u);
LABEL_436:
                  __break(1u);
LABEL_437:
                  __break(1u);
LABEL_438:
                  __break(1u);
                  goto LABEL_439;
                }
              }

              v100 = 0;
              v101 = 0;
              v13 = 0;
              v6 = (v90 + 32);
              v7 = v94 - 1;
              while (1)
              {
                closure #1 in DisplayList.InterpolatorGroup.rewriteDisplayList(_:time:contentOrigin:contentOffset:version:)(v6, v507, v506, v508, &v509, v91, v92, v45, v46);
                if (v100 >= *(v90 + 2))
                {
                  goto LABEL_435;
                }

                v526 = *v6;
                v102 = *(v6 + 16);
                v103 = *(v6 + 32);
                v104 = *(v6 + 48);
                *&v529[12] = *(v6 + 60);
                v528 = v103;
                *v529 = v104;
                v527 = v102;
                DisplayList.Item.features.getter(&v510);
                if (v100 >= *(v90 + 2))
                {
                  goto LABEL_436;
                }

                v101 |= v510;
                v526 = *v6;
                v105 = *(v6 + 16);
                v106 = *(v6 + 32);
                v107 = *(v6 + 48);
                *&v529[12] = *(v6 + 60);
                v528 = v106;
                *v529 = v107;
                v527 = v105;
                DisplayList.Item.properties.getter(&v510);
                v13 = (v510 | v13);
                if (v7 == v100)
                {
                  break;
                }

                ++v100;
                v6 += 80;
                if (v100 >= *(v90 + 2))
                {
                  goto LABEL_434;
                }
              }

              *&v521 = v90;
              HIDWORD(v521) = v13;
              WORD4(v521) = v101;
              LOBYTE(v94) = v509;
              v13 = v485;
              v7 = v507;
              v86 = v475;
              v89 = v448;
              v93 = v465;
            }

            else
            {
              v93 = v465;
              v7 = v6;
            }

            v85 = v496;
          }

          else
          {
            LODWORD(v94) = v88;
            outlined copy of DisplayList.Effect(v89, v88, SBYTE4(v88));

            v93 = v94;
            LOBYTE(v94) = 0;
            v85 = v496;
            v7 = v6;
          }

          if (v1 == 18)
          {
            if (v7 == v89)
            {
              v131 = *v87;
              v132 = *(v87 + 1);
              v133 = *(v87 + 2);
              v134 = *(v87 + 3);
              *&v526 = v508;
              v135 = v93;
              v136 = (*(*v7 + 136))(v131, v132, v133, v134, v91, v92, v45, v46);
              outlined consume of DisplayList.Effect(v89, v135, 18);
              v89 = 0;
              v93 = 0;
              LOBYTE(v94) = v136 | v94;
              v85 = v496;
              LOBYTE(v1) = 20;
              v48 = v462;
              goto LABEL_127;
            }

            LOBYTE(v1) = 18;
          }

          else if (v1 == 7)
          {
            v441 = v94;
            v467 = v93;
            v476 = v86;
            v120 = *(v89 + 16);
            v121 = *(v89 + 24);
            LODWORD(v6) = *(v89 + 32);
            if ((v121 & 0x10) != 0)
            {
              v509 = 0;
              v123 = *(v120 + 2);

              if (v123)
              {
                v438 = v6;
                if (swift_isUniquelyReferenced_nonNull_native())
                {
                  if (!*(v120 + 2))
                  {
                    goto LABEL_444;
                  }
                }

                else
                {
                  v120 = specialized _ArrayBuffer._consumeAndCreateNew()(v120);
                  if (!*(v120 + 2))
                  {
                    goto LABEL_444;
                  }
                }

                v13 = 0;
                v121 = 0;
                v122 = 0;
                v6 = (v120 + 32);
                v1 = v123 - 1;
                while (1)
                {
                  closure #1 in DisplayList.InterpolatorGroup.rewriteDisplayList(_:time:contentOrigin:contentOffset:version:)(v6, v7, v506, v508, &v509, v91, v92, v45, v46);
                  if (v13 >= *(v120 + 2))
                  {
                    goto LABEL_451;
                  }

                  v7 = &v521;
                  v526 = *v6;
                  v124 = *(v6 + 16);
                  v125 = *(v6 + 32);
                  v126 = *(v6 + 48);
                  *&v529[12] = *(v6 + 60);
                  v528 = v125;
                  *v529 = v126;
                  v527 = v124;
                  DisplayList.Item.features.getter(&v510);
                  if (v13 >= *(v120 + 2))
                  {
                    goto LABEL_452;
                  }

                  v121 |= v510;
                  v526 = *v6;
                  v127 = *(v6 + 16);
                  v128 = *(v6 + 32);
                  v129 = *(v6 + 48);
                  *&v529[12] = *(v6 + 60);
                  v528 = v128;
                  *v529 = v129;
                  v527 = v127;
                  DisplayList.Item.properties.getter(&v510);
                  v122 |= v510;
                  if (v1 == v13)
                  {
                    break;
                  }

                  ++v13;
                  v6 += 80;
                  v7 = v507;
                  if (v13 >= *(v120 + 2))
                  {
                    goto LABEL_444;
                  }
                }

                v441 |= v509;
                v13 = v485;
                v7 = v507;
                LODWORD(v6) = v438;
              }

              else
              {
                v121 = 0;
                v122 = 0;
              }
            }

            else
            {
              v122 = *(v89 + 28);
            }

            v48 = v462;
            v94 = swift_allocObject();
            *(v94 + 16) = v120;
            *(v94 + 24) = v121;
            *(v94 + 28) = v122;
            *(v94 + 32) = v6;
            outlined consume of DisplayList.Effect(v89, v467, 7);
            v93 = 0;
            v89 = v94;
            LOBYTE(v1) = 7;
            v85 = v496;
            v86 = v476;
            LOBYTE(v94) = v441;
LABEL_127:
            v143 = v521;
            v144 = v93 | (v1 << 32);
            v145 = WORD4(v521) | (HIDWORD(v521) << 32) | 0x40000000;
            v146 = *(v87 + 5);
            v147 = *(v87 + 6);
            v148 = *(v87 + 7);
            v149 = *(v87 + 8);
            *(v87 + 5) = v89;
            *(v87 + 6) = v144;
            *(v87 + 7) = v143;
            *(v87 + 8) = v145;
            outlined consume of DisplayList.Item.Value(v146, v147, v148, v149);
            v1 = v480;
            if (v94)
            {
LABEL_128:
              *(v87 + 4) = v508;
              v459 = 1;
            }

LABEL_129:
            if (v1 >= *(v500 + 2))
            {
              goto LABEL_447;
            }

            v522 = *(v87 + 1);
            v523 = *(v87 + 2);
            *v524 = *(v87 + 3);
            *&v524[12] = *(v87 + 60);
            v521 = *v87;
            DisplayList.Item.features.getter(&v510);
            if (v1 >= *(v500 + 2))
            {
              goto LABEL_448;
            }

            v85 |= v510;
            v150 = *(v87 + 3);
            v151 = *(v87 + 60);
            v152 = *(v87 + 1);
            v528 = *(v87 + 2);
            *&v529[12] = v151;
            v153 = *v87;
            *v529 = v150;
            v526 = v153;
            v527 = v152;
            v43 = *(&v528 + 1);
            v1 = *&v529[16];
            v154 = *&v529[16] >> 30;
            if (*&v529[16] >> 30 > 1u)
            {
              if (v154 != 2)
              {
                outlined destroy of DisplayList.Item(&v526);
                goto LABEL_157;
              }

              v156 = *(*(&v528 + 1) + 16);
              if (v156)
              {
                if (v156 > 7)
                {
                  v157 = v156 & 0x7FFFFFFFFFFFFFF8;
                  v161 = (*(&v528 + 1) + 188);
                  v162 = 0uLL;
                  v163 = v156 & 0x7FFFFFFFFFFFFFF8;
                  v164 = 0uLL;
                  do
                  {
                    v165.i32[0] = *(v161 - 30);
                    v165.i32[1] = *(v161 - 20);
                    v165.i32[2] = *(v161 - 10);
                    v165.i32[3] = *v161;
                    v166.i32[0] = v161[10];
                    v166.i32[1] = v161[20];
                    v166.i32[2] = v161[30];
                    v166.i32[3] = v161[40];
                    v162 = vorrq_s8(v165, v162);
                    v164 = vorrq_s8(v166, v164);
                    v161 += 80;
                    v163 -= 8;
                  }

                  while (v163);
                  v167 = vorrq_s8(v164, v162);
                  *v167.i8 = vorr_s8(*v167.i8, *&vextq_s8(v167, v167, 8uLL));
                  v155 = v167.i32[0] | v167.i32[1];
                  if (v156 == v157)
                  {
                    goto LABEL_156;
                  }
                }

                else
                {
                  v155 = 0;
                  v157 = 0;
                }

                v168 = v156 - v157;
                v169 = (*(&v528 + 1) + 40 * v157 + 68);
                do
                {
                  v170 = *v169;
                  v169 += 10;
                  v155 |= v170;
                  --v168;
                }

                while (v168);
              }

              else
              {
                v155 = 0;
              }
            }

            else
            {
              if (!v154)
              {
                if (*(&v528 + 1) >> 60 == 6 || *(&v528 + 1) >> 60 == 11)
                {
                  v155 = *((*(&v528 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x1C);
                  goto LABEL_156;
                }

LABEL_157:
                if (v86 == v492)
                {
                  v511 = v500;
                  v513 = v504;
                  v512 = v85;
                  goto LABEL_271;
                }

                v6 = v7;
                v1 = v86;
                if (v86++ >= *(v500 + 2))
                {
                  goto LABEL_439;
                }

                continue;
              }

              v158 = v529[4];
              if (v529[4] == 2)
              {
                outlined init with copy of DisplayList.Item(&v526, &v521);

                v160 = v43;
              }

              else
              {
                v159 = v529[0];
                if (v529[4] == 7)
                {
                  v160 = *(*(&v528 + 1) + 28);
                  outlined init with copy of DisplayList.Item(&v526, &v521);
                  outlined consume of DisplayList.Effect(v43, v159, 7);
                }

                else if (v529[4] == 18)
                {
                  (*(**(&v528 + 1) + 120))(&v510);
                  outlined init with copy of DisplayList.Item(&v526, &v521);
                  outlined consume of DisplayList.Effect(v43, v159, 18);

                  v160 = v510;
                }

                else
                {
                  outlined init with copy of DisplayList.Item(&v526, &v521);
                  outlined consume of DisplayList.Effect(v43, v159, v158);

                  v160 = 0;
                }
              }

              v155 = v160 | HIDWORD(v1);
              v7 = v507;
            }

LABEL_156:
            v504 |= v155;
            goto LABEL_157;
          }

          break;
        }

        v48 = v462;
        goto LABEL_127;
      }

      v459 = 0;
LABEL_271:
      LOBYTE(v83) = v415;
    }

    else
    {
      v83 = HIDWORD(v78);
      outlined copy of DisplayList.Effect(v77, v78, SBYTE4(v78));

      v459 = 0;
    }

    v64 = v446;
    if (v83 == 18)
    {
      v6 = v453;
      if (v7 == v453)
      {
        v365 = *v458;
        v366 = v458[1];
        v367 = v458[2];
        v368 = v458[3];
        *&v526 = v508;
        v76 = v7;
        v369 = (*(*v7 + 136))(v444, &v511, v506, &v526, v365, v366, v367, v368, v82, v463, v45, v46);
        outlined consume of DisplayList.Effect(v453, v444, 18);
        v6 = 0;
        v275 = 0;
        v459 |= v369;
        v274 = 20;
      }

      else
      {
        v76 = v7;
        v274 = 18;
        v275 = v444;
      }

      goto LABEL_389;
    }

    v6 = v453;
    if (v83 != 7)
    {
      v76 = v7;
      v275 = v444;
      v274 = v83;
      goto LABEL_389;
    }

    v271 = *(v453 + 16);
    v272 = *(v453 + 24);
    v440 = *(v453 + 32);
    if ((v272 & 0x10) == 0)
    {
      v1 = *(v453 + 28);
      v273 = v453;

      goto LABEL_388;
    }

    v276 = *(v271 + 2);

    v490 = v276;
    if (!v276)
    {
      v272 = 0;
      v1 = 0;
      v273 = v453;
LABEL_388:
      v76 = v7;
      v6 = swift_allocObject();
      *(v6 + 16) = v271;
      *(v6 + 24) = v272;
      *(v6 + 28) = v1;
      *(v6 + 32) = v440;
      outlined consume of DisplayList.Effect(v273, v444, 7);
      v275 = 0;
      v274 = 7;
      v64 = v446;
LABEL_389:
      v376 = v511;
      v377 = v512 | (v513 << 32) | 0x40000000;
      v378 = *(v458 + 5);
      v379 = *(v458 + 6);
      v380 = *(v458 + 7);
      v381 = *(v458 + 8);
      *(v458 + 5) = v6;
      *(v458 + 6) = v275 | (v274 << 32);
      *(v458 + 7) = v376;
      *(v458 + 8) = v377;
      outlined consume of DisplayList.Item.Value(v378, v379, v380, v381);
      v74 = v458;
      v72 = v456;
      if ((v459 & 1) == 0)
      {
        goto LABEL_391;
      }

LABEL_390:
      *(v74 + 4) = v508;
      goto LABEL_391;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v271 = specialized _ArrayBuffer._consumeAndCreateNew()(v271);
      if (!*(v271 + 2))
      {
        goto LABEL_399;
      }

LABEL_282:
      v277 = 0;
      LODWORD(v6) = 0;
      v278 = 0;
      v443 = 0;
      v483 = v271 + 32;
      v1 = 1;
      v452 = v271;
      while (2)
      {
        v279 = &v483[80 * v277];
        v13 = *(v279 + 8);
        v502 = v6;
        v498 = v1;
        v505 = v277;
        if ((v13 >> 30) - 2 < 2)
        {
          goto LABEL_342;
        }

        v494 = v278;
        v281 = *(v279 + 5);
        v280 = *(v279 + 6);
        v282 = *(v279 + 7);
        if (v13 >> 30 == 1)
        {
          v283 = HIDWORD(v280);
          *&v521 = *(v279 + 7);
          WORD4(v521) = v13;
          HIDWORD(v521) = HIDWORD(v13);
          v284 = v82 + *v279;
          v285 = v463 + *(v279 + 1);
          v478 = v280;
          if ((v13 & 0x10) != 0)
          {
            v509 = 0;
            WORD4(v521) = 0;
            HIDWORD(v521) = 0;
            v293 = v281;
            v294 = *(v282 + 2);
            v469 = v293;
            outlined copy of DisplayList.Effect(v293, v280, SBYTE4(v280));

            if (v294)
            {
              if (swift_isUniquelyReferenced_nonNull_native())
              {
                if (!*(v282 + 2))
                {
                  goto LABEL_445;
                }
              }

              else
              {
                v282 = specialized _ArrayBuffer._consumeAndCreateNew()(v282);
                if (!*(v282 + 2))
                {
                  goto LABEL_445;
                }
              }

              v13 = 0;
              v1 = 0;
              v295 = 0;
              v6 = (v282 + 32);
              v7 = v294 - 1;
              while (1)
              {
                closure #1 in DisplayList.InterpolatorGroup.rewriteDisplayList(_:time:contentOrigin:contentOffset:version:)(v6, v507, v506, v508, &v509, v284, v285, v45, v46);
                if (v13 >= *(v282 + 2))
                {
                  goto LABEL_453;
                }

                v526 = *v6;
                v296 = *(v6 + 16);
                v297 = *(v6 + 32);
                v298 = *(v6 + 48);
                *&v529[12] = *(v6 + 60);
                v528 = v297;
                *v529 = v298;
                v527 = v296;
                DisplayList.Item.features.getter(&v510);
                if (v13 >= *(v282 + 2))
                {
                  goto LABEL_454;
                }

                v1 = v510 | v1;
                v526 = *v6;
                v299 = *(v6 + 16);
                v300 = *(v6 + 32);
                v301 = *(v6 + 48);
                *&v529[12] = *(v6 + 60);
                v528 = v300;
                *v529 = v301;
                v527 = v299;
                DisplayList.Item.properties.getter(&v510);
                v295 |= v510;
                if (v7 == v13)
                {
                  break;
                }

                ++v13;
                v6 += 80;
                if (v13 >= *(v282 + 2))
                {
                  goto LABEL_445;
                }
              }

              *&v521 = v282;
              HIDWORD(v521) = v295;
              WORD4(v521) = v1;
              v286 = v509;
              v7 = v507;
            }

            else
            {
              v286 = 0;
            }

            v281 = v469;
          }

          else
          {
            outlined copy of DisplayList.Effect(v281, v280, SBYTE4(v280));

            v286 = 0;
          }

          v278 = v494;
          if (v283 == 18)
          {
            if (MEMORY[0x193AC0FF0](v281, v7))
            {
              v316 = *v279;
              v317 = *(v279 + 1);
              v318 = *(v279 + 2);
              v319 = *(v279 + 3);
              *&v526 = v508;
              v1 = v478;
              v320 = (*(*v7 + 136))(v478, &v521, v506, &v526, v316, v317, v318, v319, v284, v285, v45, v46);
              outlined consume of DisplayList.Effect(v281, v478, 18);
              v281 = 0;
              v321 = 0;
              v286 |= v320;
              v278 = v494;
              LOBYTE(v283) = 20;
              v48 = v462;
              goto LABEL_340;
            }

            LOBYTE(v283) = 18;
          }

          else if (v283 == 7)
          {
            v313 = *(v281 + 16);
            LOWORD(v283) = *(v281 + 24);
            v1 = *(v281 + 32);
            if ((v283 & 0x10) != 0)
            {
              v471 = v281;
              v509 = 0;
              v322 = *(v313 + 2);

              if (v322)
              {
                v436 = v1;
                if (swift_isUniquelyReferenced_nonNull_native())
                {
                  if (!*(v313 + 2))
                  {
                    goto LABEL_467;
                  }
                }

                else
                {
                  v313 = specialized _ArrayBuffer._consumeAndCreateNew()(v313);
                  if (!*(v313 + 2))
                  {
                    goto LABEL_467;
                  }
                }

                v13 = 0;
                LOWORD(v283) = 0;
                v314 = 0;
                v6 = (v313 + 32);
                v7 = v322 - 1;
                while (1)
                {
                  closure #1 in DisplayList.InterpolatorGroup.rewriteDisplayList(_:time:contentOrigin:contentOffset:version:)(v6, v507, v506, v508, &v509, v284, v285, v45, v46);
                  if (v13 >= *(v313 + 2))
                  {
                    goto LABEL_470;
                  }

                  v1 = &v521;
                  v526 = *v6;
                  v323 = *(v6 + 16);
                  v324 = *(v6 + 32);
                  v325 = *(v6 + 48);
                  *&v529[12] = *(v6 + 60);
                  v528 = v324;
                  *v529 = v325;
                  v527 = v323;
                  DisplayList.Item.features.getter(&v510);
                  if (v13 >= *(v313 + 2))
                  {
                    goto LABEL_471;
                  }

                  LOWORD(v283) = v510 | v283;
                  v526 = *v6;
                  v326 = *(v6 + 16);
                  v327 = *(v6 + 32);
                  v328 = *(v6 + 48);
                  *&v529[12] = *(v6 + 60);
                  v528 = v327;
                  *v529 = v328;
                  v527 = v326;
                  DisplayList.Item.properties.getter(&v510);
                  v314 |= v510;
                  if (v7 == v13)
                  {
                    break;
                  }

                  ++v13;
                  v6 += 80;
                  if (v13 >= *(v313 + 2))
                  {
                    goto LABEL_467;
                  }
                }

                v286 |= v509;
                v7 = v507;
                v1 = v436;
              }

              else
              {
                LOWORD(v283) = 0;
                v314 = 0;
              }

              v48 = v462;
              v315 = v471;
            }

            else
            {
              v314 = *(v281 + 28);

              v48 = v462;
              v315 = v281;
            }

            v281 = swift_allocObject();
            *(v281 + 16) = v313;
            *(v281 + 24) = v283;
            *(v281 + 28) = v314;
            *(v281 + 32) = v1;
            outlined consume of DisplayList.Effect(v315, v478, 7);
            v321 = 0;
            LOBYTE(v283) = 7;
            v278 = v494;
LABEL_340:
            v336 = v521;
            v337 = WORD4(v521) | (HIDWORD(v521) << 32) | 0x40000000;
            v338 = *(v279 + 5);
            v339 = *(v279 + 6);
            v340 = *(v279 + 7);
            v341 = *(v279 + 8);
            *(v279 + 5) = v281;
            *(v279 + 6) = v321 | (v283 << 32);
            *(v279 + 7) = v336;
            *(v279 + 8) = v337;
            outlined consume of DisplayList.Item.Value(v338, v339, v340, v341);
            v271 = v452;
            if (v286)
            {
LABEL_341:
              *(v279 + 4) = v508;
              v443 = 1;
            }

            goto LABEL_342;
          }

          v48 = v462;
          v321 = v478;
          goto LABEL_340;
        }

        if (v281 >> 60 == 11)
        {
          v9 = v82;
          v287 = *((v281 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
          v288 = *((v281 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
          v289 = *((v281 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
          v290 = *((v281 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
          v430 = *((v281 & 0xFFFFFFFFFFFFFFFLL) + 0x34);
          v433 = *((v281 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
          v424 = *((v281 & 0xFFFFFFFFFFFFFFFLL) + 0x38);
          v427 = *((v281 & 0xFFFFFFFFFFFFFFFLL) + 0x35);
          v419 = *((v281 & 0xFFFFFFFFFFFFFFFLL) + 0x3C);
          if ((v288 & 0x10) != 0)
          {
            v302 = *v279;
            v303 = *(v279 + 1);
            LOBYTE(v510) = 0;
            v6 = v281;
            v304 = *(v287 + 2);
            v1 = v280;
            outlined copy of DisplayList.Item.Value(v6, v280, v282, v13);
            v470 = v6;
            v479 = v1;
            outlined copy of DisplayList.Item.Value(v6, v1, v282, v13);

            v413 = v13;
            if (v304)
            {
              if (swift_isUniquelyReferenced_nonNull_native())
              {
                if (*(v287 + 2))
                {
LABEL_304:
                  v13 = 0;
                  v288 = 0;
                  v1 = 0;
                  v305 = v9 + v302;
                  v306 = v463 + v303;
                  v6 = (v287 + 32);
                  v7 = v304 - 1;
                  while (1)
                  {
                    closure #1 in DisplayList.InterpolatorGroup.rewriteDisplayList(_:time:contentOrigin:contentOffset:version:)(v6, v507, v506, v508, &v510, v305, v306, v45, v46);
                    if (v13 >= *(v287 + 2))
                    {
                      goto LABEL_465;
                    }

                    v526 = *v6;
                    v307 = *(v6 + 16);
                    v308 = *(v6 + 32);
                    v309 = *(v6 + 48);
                    *&v529[12] = *(v6 + 60);
                    v528 = v308;
                    *v529 = v309;
                    v527 = v307;
                    DisplayList.Item.features.getter(&v521);
                    if (v13 >= *(v287 + 2))
                    {
                      break;
                    }

                    v288 |= v521;
                    v526 = *v6;
                    v310 = *(v6 + 16);
                    v311 = *(v6 + 32);
                    v312 = *(v6 + 48);
                    *&v529[12] = *(v6 + 60);
                    v528 = v311;
                    *v529 = v312;
                    v527 = v310;
                    DisplayList.Item.properties.getter(&v521);
                    v1 = v521 | v1;
                    if (v7 == v13)
                    {
                      v329 = v510;
                      v7 = v507;
                      goto LABEL_332;
                    }

                    ++v13;
                    v6 += 80;
                    if (v13 >= *(v287 + 2))
                    {
                      goto LABEL_458;
                    }
                  }

LABEL_466:
                  __break(1u);
LABEL_467:
                  __break(1u);
LABEL_468:
                  __break(1u);
LABEL_469:
                  __break(1u);
LABEL_470:
                  __break(1u);
LABEL_471:
                  __break(1u);
LABEL_472:
                  swift_once();
LABEL_8:
                  v24 = static ContentTransition.State.defaultValue;
                  v18 = DWORD2(static ContentTransition.State.defaultValue) | (BYTE12(static ContentTransition.State.defaultValue) << 32);
                  v531 = static ContentTransition.State.defaultValue;
                  v23 = BYTE13(static ContentTransition.State.defaultValue);
                  i = off_1ED536620;
                  v533 = dword_1ED536628;
                  goto LABEL_9;
                }
              }

              else
              {
                v287 = specialized _ArrayBuffer._consumeAndCreateNew()(v287);
                if (*(v287 + 2))
                {
                  goto LABEL_304;
                }
              }

LABEL_458:
              __break(1u);
LABEL_459:
              __break(1u);
LABEL_460:
              __break(1u);
LABEL_461:
              __break(1u);
LABEL_462:
              __break(1u);
              goto LABEL_463;
            }

            v329 = 0;
            v288 = 0;
            LODWORD(v1) = 0;
LABEL_332:
            v416 = v329;
            v48 = v462;
            v292 = v470;
            v291 = v479;
            v13 = v413;
          }

          else
          {
            LODWORD(v1) = *((v281 & 0xFFFFFFFFFFFFFFFLL) + 0x1C);
            v291 = *(v279 + 6);
            outlined copy of DisplayList.Item.Value(v281, v280, v282, v13);
            outlined copy of DisplayList.Item.Value(v281, v291, v282, v13);

            v416 = 0;
            v292 = v281;
          }

          v330 = swift_allocObject();
          *(v330 + 16) = v287;
          *(v330 + 24) = v288;
          *(v330 + 28) = v1;
          *(v330 + 32) = v289;
          *(v330 + 40) = v290;
          *(v330 + 48) = v433;
          *(v330 + 52) = v430;
          *(v330 + 53) = v427;
          *(v330 + 56) = v424;
          *(v330 + 60) = v419;
          outlined consume of DisplayList.Item.Value(v292, v291, v282, v13);
          v1 = v416;
          v331 = v447;
          if ((v416 & 1) == 0)
          {
            v331 = v291;
          }

          v332 = *(v279 + 5);
          v333 = *(v279 + 6);
          v334 = *(v279 + 7);
          v335 = *(v279 + 8);
          *(v279 + 5) = v330 | 0xB000000000000000;
          *(v279 + 6) = v331;
          *(v279 + 7) = 0;
          *(v279 + 8) = 0;
          outlined consume of DisplayList.Item.Value(v332, v333, v334, v335);
          outlined consume of DisplayList.Item.Value(v292, v291, v282, v13);
          v82 = v9;
          v9 = v420;
          v47 = v421;
          v271 = v452;
          v278 = v494;
          if (v416)
          {
            goto LABEL_341;
          }
        }

        else
        {
          v278 = v494;
        }

LABEL_342:
        LOBYTE(v6) = v505;
        if (v505 >= *(v271 + 2))
        {
          goto LABEL_468;
        }

        v522 = *(v279 + 1);
        v523 = *(v279 + 2);
        *v524 = *(v279 + 3);
        *&v524[12] = *(v279 + 60);
        v521 = *v279;
        DisplayList.Item.features.getter(&v510);
        if (v505 >= *(v271 + 2))
        {
          goto LABEL_469;
        }

        v278 |= v510;
        v342 = *(v279 + 3);
        v343 = *(v279 + 60);
        v344 = *(v279 + 1);
        v528 = *(v279 + 2);
        *&v529[12] = v343;
        v345 = *v279;
        *v529 = v342;
        v526 = v345;
        v527 = v344;
        v43 = *(&v528 + 1);
        v346 = *&v529[20];
        v347 = *&v529[16] >> 30;
        if (*&v529[16] >> 30 > 1u)
        {
          v6 = v502;
          v348 = v498;
          if (v347 != 2)
          {
            outlined destroy of DisplayList.Item(&v526);
            goto LABEL_370;
          }

          v350 = *(*(&v528 + 1) + 16);
          if (v350)
          {
            if (v350 > 7)
            {
              v351 = v350 & 0x7FFFFFFFFFFFFFF8;
              v355 = (*(&v528 + 1) + 188);
              v356 = 0uLL;
              v357 = v350 & 0x7FFFFFFFFFFFFFF8;
              v358 = 0uLL;
              do
              {
                v359.i32[0] = *(v355 - 30);
                v359.i32[1] = *(v355 - 20);
                v359.i32[2] = *(v355 - 10);
                v359.i32[3] = *v355;
                v360.i32[0] = v355[10];
                v360.i32[1] = v355[20];
                v360.i32[2] = v355[30];
                v360.i32[3] = v355[40];
                v356 = vorrq_s8(v359, v356);
                v358 = vorrq_s8(v360, v358);
                v355 += 80;
                v357 -= 8;
              }

              while (v357);
              v361 = vorrq_s8(v358, v356);
              *v361.i8 = vorr_s8(*v361.i8, *&vextq_s8(v361, v361, 8uLL));
              v349 = v361.i32[0] | v361.i32[1];
              if (v350 == v351)
              {
                break;
              }
            }

            else
            {
              v349 = 0;
              v351 = 0;
            }

            v362 = v350 - v351;
            v363 = (*(&v528 + 1) + 40 * v351 + 68);
            do
            {
              v364 = *v363;
              v363 += 10;
              v349 |= v364;
              --v362;
            }

            while (v362);
          }

          else
          {
            v349 = 0;
          }
        }

        else
        {
          if (!v347)
          {
            v6 = v502;
            v348 = v498;
            if (*(&v528 + 1) >> 60 == 6 || *(&v528 + 1) >> 60 == 11)
            {
              v349 = *((*(&v528 + 1) & 0xFFFFFFFFFFFFFFFLL) + 0x1C);
              break;
            }

LABEL_370:
            if (v348 == v490)
            {
              v272 = v278;
              v13 = v485;
              v459 |= v443;
              v273 = v453;
              v1 = v6;
              goto LABEL_388;
            }

            v277 = v348;
            v1 = v348 + 1;
            if (v348 >= *(v271 + 2))
            {
              goto LABEL_399;
            }

            continue;
          }

          v352 = v529[4];
          if (v529[4] == 2)
          {
            outlined init with copy of DisplayList.Item(&v526, &v521);

            v354 = v43;
          }

          else
          {
            v353 = v529[0];
            if (v529[4] == 7)
            {
              v354 = *(*(&v528 + 1) + 28);
              outlined init with copy of DisplayList.Item(&v526, &v521);
              outlined consume of DisplayList.Effect(v43, v353, 7);
            }

            else if (v529[4] == 18)
            {
              (*(**(&v528 + 1) + 120))(&v510);
              outlined init with copy of DisplayList.Item(&v526, &v521);
              outlined consume of DisplayList.Effect(v43, v353, 18);

              v354 = v510;
            }

            else
            {
              outlined init with copy of DisplayList.Item(&v526, &v521);
              outlined consume of DisplayList.Effect(v43, v353, v352);

              v354 = 0;
            }
          }

          v349 = v354 | v346;
          LODWORD(v6) = v502;
          v348 = v498;
        }

        break;
      }

      v6 = v349 | v6;
      goto LABEL_370;
    }

    if (*(v271 + 2))
    {
      goto LABEL_282;
    }

LABEL_399:
    __break(1u);
LABEL_413:
    if (!(v43 ^ 0x8000000001 | DWORD2(v531) & 0xFFFFFF))
    {
LABEL_416:
      if (v43 ^ 0x8000000001 | DWORD2(v531) & 0xFFFFFF)
      {
        goto LABEL_417;
      }

LABEL_423:

      v499 = 0;
      i = 0;
      goto LABEL_426;
    }

LABEL_414:
    ResolvedStyledText.modifyTransition(state:to:)(&v531, v7);
    if (!BYTE13(v531))
    {
      v43 = v531;
      if ((v531 & 0x8000000000) != 0)
      {
        goto LABEL_416;
      }
    }

LABEL_417:
    if (!AGGraphGetOutputValue())
    {
      goto LABEL_423;
    }

    if (i || (AGGraphClearUpdate(), v385 = *(v1 + 48), v523 = *(v1 + 32), *v524 = v385, v386 = *(v1 + 80), *&v524[16] = *(v1 + 64), v525 = v386, v387 = *(v1 + 16), v521 = *v1, v522 = v387, outlined init with copy of ModifiedContent<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>, GlassEffectContainerModifier>(&v521, &v518, &lazy cache variable for type metadata for InterpolatedDisplayList<ResolvedStyledText>, type metadata accessor for ResolvedStyledText, &protocol witness table for ResolvedStyledText, type metadata accessor for InterpolatedDisplayList), v388 = *AGGraphGetValue(), , outlined destroy of ModifiedContent<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>, GlassEffectContainerModifier>(&v521, &lazy cache variable for type metadata for InterpolatedDisplayList<ResolvedStyledText>, type metadata accessor for ResolvedStyledText, &protocol witness table for ResolvedStyledText, type metadata accessor for InterpolatedDisplayList), AGGraphSetUpdate(), _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(v388), v390 = v389, , (i = v390) != 0))
    {
      AGGraphClearUpdate();
      v391 = *(v1 + 48);
      v523 = *(v1 + 32);
      *v524 = v391;
      v392 = *(v1 + 80);
      *&v524[16] = *(v1 + 64);
      v525 = v392;
      v393 = *(v1 + 16);
      v521 = *v1;
      v522 = v393;
      outlined init with copy of ModifiedContent<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>, GlassEffectContainerModifier>(&v521, &v518, &lazy cache variable for type metadata for InterpolatedDisplayList<ResolvedStyledText>, type metadata accessor for ResolvedStyledText, &protocol witness table for ResolvedStyledText, type metadata accessor for InterpolatedDisplayList);
      v394 = *AGGraphGetValue();

      outlined destroy of ModifiedContent<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>, GlassEffectContainerModifier>(&v521, &lazy cache variable for type metadata for InterpolatedDisplayList<ResolvedStyledText>, type metadata accessor for ResolvedStyledText, &protocol witness table for ResolvedStyledText, type metadata accessor for InterpolatedDisplayList);
      AGGraphSetUpdate();
      _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0G0VAAE017AnimationListenerF033_390609F81ACEBEAF00AD8179BD31E870LLVG_Tt2g5(v394);
      v396 = v395;
      _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0G0VAAE024AnimationLogicalListenerF033_390609F81ACEBEAF00AD8179BD31E870LLVG_Tt2g5(v394);
      v398 = v397;

      if (v396)
      {
        v13 = v485;
        if (v398)
        {
          type metadata accessor for ListenerPair();
          v399 = swift_allocObject();
          *(v399 + 16) = v396;
          *(v399 + 24) = v398;
          v499 = v399;
        }

        else
        {
          v499 = v396;
        }
      }

      else
      {
        v499 = v398;
        v13 = v485;
      }

LABEL_426:
      v400 = v484;
    }

    else
    {
      v499 = 0;
      v400 = v484;
      v13 = v485;
    }

    LOBYTE(v521) = HIBYTE(v531);
    if (v13)
    {

      _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesV015LayoutDirectionI0VG_Tt1g5(v400, &v518);

      v401 = v518;
    }

    else
    {
      v402 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesV015LayoutDirectionS0VG_Tt0g5(v400);
      if (v402)
      {
        v401 = *(v402 + 72);
      }

      else
      {
        v401 = 0;
      }
    }

    LOBYTE(v511) = v401;
    ContentTransition.applyEnvironmentValues(style:layoutDirection:)(&v521, &v511);
  }

  v64 = MEMORY[0x1E69E7CC0];
  v518 = MEMORY[0x1E69E7CC0];
  v519 = 0;
  v520 = 0;
  if (*(v1 + 53))
  {
    v65 = 0;
    v66 = 0;
LABEL_46:
    v69 = swift_allocObject();
    *(v69 + 16) = v7;
    *(v69 + 24) = v47;
    *(v69 + 32) = v48;
    *(v69 + 40) = v45;
    *(v69 + 48) = v46;
    v526 = 0u;
    v527 = 0u;
    *&v528 = v508;
    *(&v528 + 1) = v69;
    *v529 = 0x1100000000;
    *&v529[8] = v64;
    *&v529[16] = v65 | v66 | 0x40000000;
    *&v529[24] = 0;

    DisplayList.init(_:)(&v526, &v521);
    v518 = v521;
    v519 = WORD4(v521);
    v520 = HIDWORD(v521);
  }

LABEL_47:
  *&v526 = v508;
  DisplayList.translate(by:version:)(__PAIR128__(*&v10, *&v9), &v526);
  *&v526 = v518;
  WORD4(v526) = v519;
  HIDWORD(v526) = v520;
  AGGraphSetOutputValue();

  outlined consume of ContentTransition.Storage(v531, DWORD2(v531) | (BYTE12(v531) << 32), SBYTE13(v531));
}

uint64_t _ShapeStyle_RenderedShape.renderUnstyledText(_:layers:)(uint64_t *a1)
{
  v2 = v1;
  v4 = *a1;
  v3 = a1[1];
  v5 = *(a1 + 16);
  v50[0] = 0;
  v50[1] = 0;
  v51 = 3;
  v49 = 0;
  memset(v48, 0, sizeof(v48));
  v46 = 0u;
  v47 = 0u;
  v45 = 0u;
  _ShapeStyle_RenderedLayers.beginLayer(id:style:shape:)(v50, &v45, v1);
  v7 = *(v1 + 128);
  v6 = *(v1 + 136);
  ResolvedStyledText.frame(in:renderer:)(v3, *(v2 + 128), *(v2 + 136));
  v53 = CGRectOffset(v52, *(v2 + 112), *(v2 + 120));
  x = v53.origin.x;
  y = v53.origin.y;
  *(v1 + 160) = v53;
  v10 = (v1 + 160);
  if (ResolvedStyledText.needsRBDisplayList.getter())
  {

    Value = AGGraphGetValue();
    v12 = *Value;
    if (*(Value + 8))
    {

      swift_retain_n();
      v13 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA012DisplayScaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v12);
    }

    else
    {

      v22 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA012DisplayScaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v21);
      if (v22)
      {
        v13 = v22[9];
      }

      else
      {
        v13 = 1.0;
      }
    }

    v23 = ResolvedStyledText.makeRBDisplayList(for:renderer:deviceScale:)(v3, v7, v6, v13);
    if (v3)
    {

      v5 |= 0x200u;
    }

    v24 = *(v2 + 108);
    v25 = *(v2 + 192);
    [v23 boundingRect];
    v26 = v54.origin.x;
    v27 = v54.origin.y;
    width = v54.size.width;
    height = v54.size.height;
    IsNull = CGRectIsNull(v54);
    v31 = 0.0;
    if (IsNull)
    {
      v32 = 0.0;
    }

    else
    {
      v32 = v26;
    }

    if (IsNull)
    {
      v33 = 0.0;
    }

    else
    {
      v33 = v27;
    }

    if (IsNull)
    {
      v34 = 0.0;
    }

    else
    {
      v34 = width;
    }

    if (!IsNull)
    {
      v31 = height;
    }

    v55 = CGRectIntegral(*(&v31 - 3));
    v35 = v55.origin.x;
    v36 = v55.origin.y;
    v37 = v55.size.width;
    v38 = v55.size.height;
    v39 = swift_allocObject();
    *(v39 + 16) = v23;
    *(v39 + 24) = v35;
    *(v39 + 32) = v36;
    v40 = one-time initialization token for defaultFlags;
    swift_unknownObjectRetain();
    if (v40 != -1)
    {
      swift_once();
    }

    v41 = static RasterizationOptions.Flags.defaultFlags;
    swift_unknownObjectRelease();
    *(v39 + 40) = -1;
    *(v39 + 44) = 768;
    *(v39 + 48) = v41 | v5;
    *(v39 + 52) = 3;
    v42 = *(v2 + 208);
    v47 = *(v2 + 192);
    v48[0] = v42;
    *(v48 + 12) = *(v2 + 220);
    v43 = *(v2 + 176);
    v45 = *v10;
    v46 = v43;
    outlined destroy of DisplayList.Item(&v45);
    *(v2 + 160) = x + v35;
    *(v2 + 168) = y + v36;
    *(v2 + 176) = v37;
    *(v2 + 184) = v38;
    *(v2 + 192) = v25;
    *(v2 + 200) = v39 | 0xC000000000000000;
    *(v2 + 216) = 0;
    *(v2 + 224) = 0;
    *(v2 + 208) = v24;
    *(v2 + 232) = 0;
  }

  else
  {
    v14 = swift_allocObject();
    *(v14 + 16) = v4;
    *(v14 + 24) = v3;
    *(v14 + 32) = v5;
    *(v14 + 40) = v7;
    *(v14 + 48) = v6;
    v15 = v14 | 0xA000000000000000;
    v16 = *(v1 + 108);
    v17 = *(v1 + 200);
    v18 = *(v2 + 208);
    v19 = *(v2 + 216);
    v20 = *(v2 + 224);

    outlined consume of DisplayList.Item.Value(v17, v18, v19, v20);
    *(v2 + 200) = v15;
    *(v2 + 208) = v16;
    *(v2 + 216) = 0;
    *(v2 + 224) = 0;
  }

  return _ShapeStyle_RenderedLayers.endLayer(shape:)(v2);
}